BIN_PATH=$(cd `dirname $0`; pwd)
cd $BIN_PATH

docker compose logs -f 
# docker compose up
