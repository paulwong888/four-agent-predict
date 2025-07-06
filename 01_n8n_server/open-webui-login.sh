BIN_PATH=$(cd `dirname $0`; pwd)
cd $BIN_PATH

docker compose exec -it open-webui /bin/bash
# docker compose logs n8n