
database_schema = [
  {
    db_name = "_internal"
    db_policies = [
      {
        name     = "monitor"
        duration = "1w"
        default  = true
      },
    ]
  },
  {
    db_name = "MetricStore"
    db_policies = [
      {
        name     = "dev-default"
        duration = "52w"
        default  = true
      },
    ]
  },
]




