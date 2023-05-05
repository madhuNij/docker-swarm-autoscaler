import requests


class PrometheusMetricStore(object):
    def __init__(self, config):
        self.config = config

    def get_metric_value(self, metric_query):
        prometheus_url = self.config['url']
        prometheus_query_url = "{}/api/v1/query".format(prometheus_url)
        resposnse = requests.get(prometheus_query_url, params=dict(query=metric_query))
        
        resposnse_json = resposnse.json()
        print("Prometheus response:", resposnse_json)
        for data in resposnse_json['data']['result']:
            if data['metric']['container_label_com_docker_swarm_service_name'] == "g10_web":
                print("CPU Load of g10_web = ", float(data['value'][1]))
                return float(data['value'][1])
        return 0


