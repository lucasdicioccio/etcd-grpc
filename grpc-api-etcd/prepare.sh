
mkdir -p gen-bin
mkdir -p gen
rm -rf ./gen/Proto/

stack install --local-bin-path=gen-bin proto-lens-protoc
protolens="`pwd`/gen-bin/proto-lens-protoc"

# Locally build the directory tree required by the proto files dependency graph.
PROTOPATH=.

git clone https://github.com/etcd-io/etcd.git
PROTOPATH=${PROTOPATH}:./etcd

git clone https://github.com/gogo/protobuf.git
ln -s ./protobuf/gogoproto ./gogoproto
PROTOPATH=${PROTOPATH}:./protobuf

git clone https://github.com/googleapis/googleapis
ln -s ./googleapis/google ./google
PROTOPATH=${PROTOPATH}:./googleapis

# Compile stuff
function protoCompile() {
	local dotProto=$1
	protoc "--plugin=protoc-gen-haskell-protolens=${protolens}" \
		"--proto_path=${PROTOPATH}" \
		"--haskell-protolens_out=./gen" \
		"${dotProto}"
}

protoCompile ./etcd/auth/authpb/auth.proto
protoCompile ./etcd/etcdserver/etcdserverpb/rpc.proto
protoCompile ./etcd/mvcc/mvccpb/kv.proto
protoCompile ./etcd/etcdserver/api/v3lock/v3lockpb/v3lock.proto
protoCompile ./etcd/etcdserver/api/v3election/v3electionpb/v3election.proto
protoCompile ./google/api/annotations.proto
protoCompile ./google/api/http.proto
protoCompile ./gogoproto/gogo.proto

find gen -name "*.hs" | sed -e 's/gen\///' | sed -e 's/\.hs$//' | tr '/' '.'
