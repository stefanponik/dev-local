##################
# Datasources Vars
##################

datasources = [
  {
    name      = "influxdb-internal",
    type      = "influxdb",
    url       = "http://influxdb-dev-local:8086",
    database  = "_internal",
    isDefault = false,
    jsonData = {
      httpMode     = "GET",
      timeInterval = "5s"
    },
  },
  {
    name      = "influxdb-metricstore",
    type      = "influxdb",
    url       = "http://influxdb-dev-local:8086",
    database  = "MetricStore",
    isDefault = true,
    jsonData = {
      httpMode     = "GET",
      timeInterval = "5s"
    },
  },
  {
    name      = "elk-dev",
    type      = "elasticsearch",
    url       = "http://localhost:9200",
    database  = "logstash*",
    isDefault = false,
    jsonData = {
      esVersion                  = 60,
      maxConcurrentShardRequests = "3",
      timeField                  = "@timestamp",
      timeInterval               = "60s"
    },
  },
]




