provider "aws" {
  version = "2.33.0"

  region = var.aws_region
}

resource "aws_vpc" "default" {
  cidr_block = var.cidr_block
  enable_dns_hostnames = var.enable_dns_hostnames
  enable_dns_support   = var.enalbe_dns_support
}