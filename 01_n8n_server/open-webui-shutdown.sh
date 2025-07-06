BIN_PATH=$(cd `dirname $0`; pwd)
cd $BIN_PATH

docker compose down open-webui
# docker compose logs n8n