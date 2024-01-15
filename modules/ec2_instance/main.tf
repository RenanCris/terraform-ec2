# Criação da instância EC2
resource "aws_instance" "config_ec2" {
  ami                    = var.ami_id
  instance_type          = var.instancy_type
  subnet_id              = var.subnet_id
  vpc_security_group_ids = [var.security_group_ids]
  associate_public_ip_address = true

  # Dados do usuário remoto para SSH
  key_name               = var.chave_ssh_name 
  user_data              = file(var.file_init_execution)

  # Configuração do bloco de volume
  root_block_device {
    volume_type           = "gp2"
    volume_size           = var.size_volume_root_block  
    delete_on_termination = var.delete_volume
  }

   # Adicione mais blocos de volume conforme necessário
  ebs_block_device {
    device_name           = "/dev/sdb"
    volume_type           = "gp2"
    volume_size           = var.size_volume_ebs_g2
    delete_on_termination = var.delete_volume
  }

  ebs_block_device {
    device_name           = "/dev/sdc"
    volume_type           = "gp3"
    volume_size           = var.size_volume_ebs_g3 
    iops                  = var.size_volume_ebs_g3_iops 
    delete_on_termination = var.delete_volume
  }

   tags = {
    Name = "${var.prefixo_name} - EC2"
  }
}