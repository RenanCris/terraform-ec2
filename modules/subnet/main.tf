# Criação da Subnet
resource "aws_subnet" "config_subnet_public" {
  vpc_id                  = var.vpc_id
  cidr_block              = var.cidr_block
  availability_zone       = var.availability_zone_id
  map_public_ip_on_launch = true
  
  tags = {
    Name = "${var.prefixo_name} - SubNetPublic"
  }
}

# Associando a tabela de roteamento à subnet pública
resource "aws_route_table_association" "public_route_assoc" {
  subnet_id      = aws_subnet.config_subnet_public.id
  route_table_id = var.route_table_id
}

