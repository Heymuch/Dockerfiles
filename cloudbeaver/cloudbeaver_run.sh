NAME=cloudbeaver
HOST_PORT=8080
DATA=cloudbeaver-data

docker run --name cloudbeaver -d -v $DATA:/opt/cloudbeaver/workspace -p $HOST_PORT:8978 heymuch/cloudbeaver