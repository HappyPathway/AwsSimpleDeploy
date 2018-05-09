# Access a key in Consul
data "consul_keys" "aws_infra" {
  
  key {
    name    = "subnet_id"
    path    = "services/${var.env}/${var.service_name}/subnet_id"
  }
  
  key {
    name    = "security_group"
    path    = "services/${var.env}/${var.service_name}/security_group"
  }
  
  key {
    name    = "ami"
    path    = "services/${var.service_name}/${var.service_version}/ami"
  }

  key {
    name    = "instance_type"
    path    = "services/${var.env}/${var.service_name}/instance_type"
  }

  key {
    name    = "key_pair"
    path    = "services/${var.env}/${var.service_name}/key_pair"
  }

  key {
    name    = "instance_user"
    path    = "services/${var.env}/${var.service_name}/instance_user"
  }

  key {
    name    = "dns_name"
    path    = "services/${var.env}/${var.service_name}/dns_name"
  }

  key {
    name    = "dns_zone"
    path    = "services/${var.env}/${var.service_name}/dns_zone"
  }

  key {
    name    = "private_zone"
    path    = "services/${var.env}/${var.service_name}/private_zone"
  }
}