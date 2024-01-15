# Criação da VPC
resource "aws_vpc" "config_vpc" {
  cidr_block = var.cidr_block
  enable_dns_support = true
  enable_dns_hostnames = true
   
  tags = {
    Name = "${var.prefixo_name} - VPC"
  }
}
