BIN_PATH=$(cd `dirname $0`; pwd)
cd $BIN_PATH

docker compose exec -it n8n /bin/sh
# docker compose logs n8n