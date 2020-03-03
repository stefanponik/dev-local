###############
# Variables 
###############

### Grafana

variable "grf_url" {
  type = string
}

variable "grf_user" {
  type    = string
  default = ""
}

variable "grf_password" {
  type    = string
  default = ""
}

variable "grf_api_key" {
  type    = string
  default = ""
}

variable "datasources" {
  type = list(any)
}

variable "grf_folders" {
  type    = list(string)
  default = []
}

variable "grf_dashboards" {
  type = list(any)
}


### InfluxDB

variable "idb_url" {
  type = string
}

variable "idb_username" {
  type    = string
  default = ""
}

variable "idb_password" {
  type    = string
  default = ""
}

variable "database_schema" {
  type = list(object({
    db_name = string
    db_policies = list(object(
      {
        name     = string
        duration = string
        default  = bool
    }))
  }))
}
