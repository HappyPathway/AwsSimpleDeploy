module "ops_config" {
  source = "git@github.com:HappyPathway/OpsConfig.git"
  count = "${var.count}"
  service_name = "${var.service_name}"
  service_version = "${var.service_version}"
  consul_address = "${var.consul_address}"
  vault_address = "${var.vault_address}"
  hosts = "${aws_instance.web.instance_ips}"
  triggers = "${aws_instance.web.instance_ids}"
  env = "${var.env}"
}
