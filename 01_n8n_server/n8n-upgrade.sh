BIN_PATH=$(cd `dirname $0`; pwd)
cd $BIN_PATH

docker compose down n8n
# docker compose pull n8n
docker pull n8nio/n8n:1.107.4
docker compose up n8n -d
docker compose up n8n -d
docker compose logs -f
# docker compose logs n8n