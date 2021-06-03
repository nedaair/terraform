provider "aws" {
  version = "2.33.0"

  region = var.aws_region
}

resource "aws_security_group" "this" {

}

resource "aws_security_group_rule" "sgingress" {
  from_port = 8080
  to_port = 8080
  protocol = "tcp"
  security_group_id = aws_security_group.this.id

  type = "ingress"
}

resource "aws_security_group_rule" "sgegress" {
  from_port = 0
  protocol = "all"
  security_group_id = aws_security_group.this.id
  to_port = 0
  type = "egress"
}
