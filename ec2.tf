resource "aws_instance" "web" {
  ami = "ami-e5083683"
  instance_type = "${var.instance_type}"
  key_name = "win-nad"
  user_data = "${data.template_file.u_data.rendered}"

  availability_zone = "${var.zone_1}"

  associate_public_ip_address = "${var.associate_public_ip_address}"
  subnet_id = "${var.subnet_id}"
  security_groups = ["${aws_security_group.default1.id}"]


  tags {
    Name = "webserver-tfenterprise-test"
    BillingBusinessApp = "${var.billingbusinessApp}"
  }
}
