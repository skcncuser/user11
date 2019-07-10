resource "aws_internet_gateway" "user11igw" {
  vpc_id = "${aws_vpc.user11VPC.id}"
}
