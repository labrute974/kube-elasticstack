# Elastic stack

Here you'll find recipes to be able to build the Elastic tools in your Kubernetes cluster:

  - Elasticsearch
  - Kibana
  - Filebeat
  - Metricbeat
  - Elastic APM Server

## Decisions

### Subcharts for each components

Here I decided to use subcharts rather than separate git repo for each components of this installation.

The reason is first of all for simplicity. Second, is that it's my first go at Helm charts, and not sure the pitfalls of using subcharts.

Now I have an educated guess that deployments will be highly coupled, so if the Kibana chart and the Elasticsearch chart have different rates of change, which is most likely, there's a risk of updating Elasticsearch and breaking it although the only change may be on Kibana.

I'm hoping that there's a way around that at this stage, but we'll find out!

## What's next

- [x] Single node elasticsearch
- [ ] Elasticsearch cluster
- [ ] Kibana installation
- [ ] Security in the cluster
- [ ] Getting metricbeats showing in Kibana dashboards
- [ ] Getting kubernetes pod logs into Elasticsearch
- [ ] Getting Kubernetes system logs into Elasticsearch
- [ ] Backup of elasticsearch data
