BIN_PATH=$(cd `dirname $0`; pwd)
cd $BIN_PATH

docker build -t my-pg14-with-pgvector .
