BIN_PATH=$(cd `dirname $0`; pwd)
cd $BIN_PATH

docker compose down
./cloudbeaver-start.sh