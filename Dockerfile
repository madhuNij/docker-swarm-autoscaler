FROM sahajsoft/docker-swarm-service-autoscaler

COPY app /opt/docker-swarm-autoscaler/app

RUN pip install -r /opt/docker-swarm-autoscaler/app/requirements.txt

WORKDIR /opt/docker-swarm-autoscaler

ENTRYPOINT ["python", "-m", "app.main"]
