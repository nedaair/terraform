provider "aws" {
  version = "2.33.0"

  region = var.aws_region
}

resource "aws_security_group" "this" {
  name = "terraform_security"

  tags = {
    "managedby1" : "terraform"
  }
}
