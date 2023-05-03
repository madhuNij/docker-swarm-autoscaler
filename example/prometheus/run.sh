docker stack rm g10
sleep 10 # Wait for stack remove to complete
docker stack deploy g10 -c docker-compose.yml
