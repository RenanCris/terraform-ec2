resource "aws_internet_gateway" "config_igw" {
  vpc_id = var.vpc_id

  tags = {
    Name = "${var.prefixo_name} - InternetGateway"
  }
}
