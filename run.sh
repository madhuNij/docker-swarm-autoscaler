docker ps -aq | xargs docker stop | xargs docker rm
docker build -t docker-swarm-autoscaler .
cd example/prometheus 
docker stack rm g10
sleep 10 # Wait for stack remove to complete