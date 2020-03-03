#########
# Backend
#########
terraform {

  required_version = ">= 0.12.0"

  required_providers {
    restapi = ">= 1.11"
    grafana = ">= 1.5"
  }

  backend "local" {
    path = ".terraform/tf-state/terraform.tfstate"

  }
}

###########
# Providers
###########d

provider "restapi" {
  uri                  = var.grf_url
  username             = var.grf_user
  password             = var.grf_password
  write_returns_object = true
}

provider "grafana" {
  url = var.grf_url
  #  auth = "${var.grf_user}:${var.grf_password}"
  auth = var.grf_api_key != "" ? var.grf_api_key : "${var.grf_user}:${var.grf_password}"
}

#########
# Modules 
#########

module "terraform-restapi-grafana-datasources-cfg" {
  source      = "github.com/stefanponik/terraform-restapi-grafana-datasources-cfg.git?ref=v0.0.1"
  datasources = var.datasources
}

# For development purpose only
# module "terraform-restapi-grafana-datasources-cfg" {
#   source      = "../../terraform-restapi-grafana-datasources-cfg"
#   datasources = var.datasources
# }

module "terraform-grafana-cfg" {
  source         = "github.com/stefanponik/terraform-grafana-cfg.git?ref=v0.0.1"
  grf_folders    = var.grf_folders
  grf_dashboards = var.grf_dashboards
}

# For Development purpose only
# module "terraform-grafana-cfg" {
#   source         = "../../terraform-grafana-cfg"
#   grf_folders    = var.grf_folders
#   grf_dashboards = var.grf_dashboards
# 
# }
