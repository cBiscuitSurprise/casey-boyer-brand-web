TEMP_DIR=.proto/strate_go
DEST_DIR=lib/services/strate_go/generated

REPO_DIR=$TEMP_DIR/repo
PROTO_SOURCE_DIR=$REPO_DIR/api/proto

REPO=https://github.com/cBiscuitSurprise/strate-go.git
BRANCH=${BRANCH:-main}

GOOGLE_PROTOS_REPO=https://github.com/protocolbuffers/protobuf.git
GOOGLE_PROTOS_REPO_DIR=.proto/google/repo
GOOGLE_PROTOS_SRC_DIR=$GOOGLE_PROTOS_REPO_DIR/src/google/protobuf

mkdir -p $TEMP_DIR
mkdir -p $DEST_DIR

rm -rf $DEST_DIR/*

echo "updating strate-go proto repo"
if [ ! -d $REPO_DIR ]
then
  git clone $REPO --branch $BRANCH --single-branch $REPO_DIR
else
  pushd $REPO_DIR
  git pull --rebase origin $BRANCH
  popd
fi

echo "updating google proto repo"
if [ ! -d $GOOGLE_PROTOS_REPO_DIR ]
then
  git clone $GOOGLE_PROTOS_REPO --branch $BRANCH --single-branch $GOOGLE_PROTOS_REPO_DIR
else
  pushd $GOOGLE_PROTOS_REPO_DIR
  git pull --rebase
  popd
fi

echo "generating strate-go proto interfaces"
protoc --dart_out=grpc:$DEST_DIR -I$PROTO_SOURCE_DIR $(find $PROTO_SOURCE_DIR -type f -name '*.proto')

echo "generating google proto interfaces"
mkdir -p $DEST_DIR/google/protobuf
protoc --dart_out=grpc:$DEST_DIR/google/protobuf -I$GOOGLE_PROTOS_SRC_DIR $GOOGLE_PROTOS_SRC_DIR/timestamp.proto $GOOGLE_PROTOS_SRC_DIR/empty.proto
