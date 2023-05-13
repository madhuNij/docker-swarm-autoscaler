# docker-swarm-autoscaler

Installation:
- docker
- apache benchmark
- setup docker swarm

commands to execute:
- `./run.sh` from prometheus/
- `watch docker service ls` - to check all the services running
- `docker service logs g10_autoscaler -f` - to check the autoscaler logs. Can be used for any service
- g10_web service will start for the cpu utilization and memory usage
- `./generate-load.sh` - for generating http_load using Apache benchmark.

Open-source softwares used for metric collection
- Prometheus
- cAdvisor - container level metrics
- node-exporter - node level metrics
- grafana - metrics visualizations using prometheus as the data source

