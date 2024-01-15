
# Criação do Security Group
resource "aws_security_group" "config_security_group" {
    vpc_id = var.vpc_id
    name = var.name

    egress {
        from_port   = 0
        to_port     = 0
        protocol    = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }

    ingress {
        from_port = 22
        to_port = 22
        protocol = "tcp"
        description = "Allow SSH access"
        cidr_blocks = [var.ip_public_ssh]
    }
 
    tags = {
        Name = "${var.prefixo_name} - SecurityGroup" 
    }
}