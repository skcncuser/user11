resource "aws_instance" "user11_vm2" {
  ami               = "${var.amazon_linux}"
  availability_zone = "ap-northeast-1c"
  instance_type     = "t2.micro"
  key_name          = "${var.user11-keyname}"

  vpc_security_group_ids = [
    "${aws_default_security_group.user11_default.id}"
  ]

  subnet_id                   = "${aws_subnet.public_1c.id}"
  associate_public_ip_address = true
}
