variable "aws_region" {
  type = string
  default = "ap-northeast-2"
}

variable "cidr_block" {
  type = string
  description = "VPC에 할당한 CIDR 블록"
}

variable "enable_dns_hostnames" {
  type = bool
  description = "퍼블릭 IP 주소를 갖는 인스턴스가 해당하는 퍼블릭 DNS 호스트 이름을 받는지 여부"
  default = true
}

variable "enalbe_dns_support" {
  type = bool
  description = "DNS 확인이 지원되는지 여부"
  default = true
}

