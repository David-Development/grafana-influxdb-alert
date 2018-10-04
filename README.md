# Grafana - Influxdb Alerting

This container allows you to send an Alerting Message to Influxdb


## Run Image
```bash
docker run \
    -e INFLUXDB_HOSTNAME=nm-stud-01 \
    -e HOSTNAME="nm-stud-01" \
    -e ALERT_TEXT="Event happened!" \
    luhmer/grafana-alert:0.1
```


## Build Image
docker build -t luhmer/grafana-alert:0.1 .