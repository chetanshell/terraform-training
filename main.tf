provider "aws" {
  region  = "${var.region}"
  profile = "${var.profile}"
}

resource "aws_instance" {
  ami           = "${var.ami}"
  instance_type = "${var.instance_type}"

  tags = "${merge(var.default_tags, map("Name","${var.project}-${var.environment}-${element(var.azs,count.index)}-wowza-0${count.index + 1}"))}"

  key_name               = "${var.key_name}"
  vpc_security_group_ids = "${var.security_group_ids}"
  subnet_id              = "${element(var.subnets, count.index)}"

  disable_api_termination     = false
  associate_public_ip_address = true


  user_data = "${file("user_data.txt")}"
