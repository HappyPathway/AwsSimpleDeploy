# Create a new instance of the latest Ubuntu 14.04 on an
# t2.micro node with an AWS Tag naming it "HelloWorld"
provider "aws" {
  region = "${var.region}"
}

# Configure the Consul provider
provider "consul" {
  address    = "${var.consul_address}"
  datacenter = "${var.consul_dc}"
}
