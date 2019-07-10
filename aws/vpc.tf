resource "aws_vpc" "user11VPC" {
  cidr_block           = "111.0.0.0/16"
  enable_dns_hostnames = true
  enable_dns_support   = true
  instance_tenancy     = "default"
}
