BIN_PATH=$(cd `dirname $0`; pwd)
cd $BIN_PATH

./n8n-shutdown.sh
./n8n-start.sh