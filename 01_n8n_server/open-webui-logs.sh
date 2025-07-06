BIN_PATH=$(cd `dirname $0`; pwd)
cd $BIN_PATH

docker compose logs open-webui -f
# docker compose logs n8n