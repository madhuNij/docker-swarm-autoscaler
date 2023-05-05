docker ps -aq | xargs docker stop | xargs docker rm
docker build -t docker-swarm-autoscaler .
cd example/prometheus