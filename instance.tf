resource "aws_instance" "web" {
  count         = "${var.count}"
  ami           = "${data.consul_keys.aws_infra.var.ami}"
  instance_type = "${data.consul_keys.aws_infra.var.instance_type}"
  subnet_id = "${data.consul_keys.aws_infra.var.subnet_id}"
  vpc_security_group_ids = ["${data.consul_keys.aws_infra.var.security_group}"]
  key_name = "${data.consul_keys.aws_infra.var.key_pair}"
  tags {
    Name = "${var.service_name}-${var.env}-${format("%03d", count.index + 1)}"
    env = "${var.env}"
    service = "${var.service_name}"
  }
}