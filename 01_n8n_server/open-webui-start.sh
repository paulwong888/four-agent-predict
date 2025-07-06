BIN_PATH=$(cd `dirname $0`; pwd)
cd $BIN_PATH

# docker compose up open-webui
docker compose up open-webui -d
docker compose logs open-webui -f
# docker compose logs n8n