variable "service_name" {
  default = "consul_cluster"
}

variable "consul_address" {
    default = "consul.ops.happypathway.com:8500"
}

variable "consul_dc" {
    default = "dc1"
}

variable "region" {
    default = "us-east-1"
}

variable "private_zone" {
    default = "false"
}

variable "count" {
    default = 1
}

variable "env" {
    default = "staging"
}

variable "service_version" {}

variable "vault_address" {
    default = "http://54.209.49.254:8200"
}