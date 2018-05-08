output "instance_ips" {
    value = "${aws_instance.web.*.public_ip}"
}

output "instance_user" {
    value = "${data.consul_keys.aws_infra.var.instance_user}"
}

output "instance_ids" {
    value = "${aws_instance.web.*.id}"
}