#!/bin/sh

unix_timestamp=$(date +'%s')"000000000"

url="http://${INFLUXDB_HOSTNAME}:8086/write?db=events"
data="alert,host=${HOSTNAME},show=X text=\"${ALERT_TEXT}\""

curl -s -i -XPOST "$url" --data-binary "$data ${unix_timestamp}"
