BIN_PATH=$(cd `dirname $0`; pwd)
cd $BIN_PATH

docker compose down
./code-server-start.sh