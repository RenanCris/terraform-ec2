variable "ami_id" {
  description = "ID da Imagem EC2"
  type        = string
}

variable "instancy_type" {
  description = "Tipo da instância EC2"
  type        = string
}

variable "subnet_id" {
  description = "Id Subnet"
  type        = string
}

variable "security_group_ids" {
  description = "Id dos security groups"
  type        = string
}

variable "file_init_execution" {
  description = "Nome do arquivo de para executar na inicialização da máquina"
  type        = string
}

variable "chave_ssh_name" {
  description = "Nome da chave SSH"
  type        = string
}

variable "size_volume_root_block" {
  description = "Tamanho do disco principal EBS"
  type        = number
}

variable "size_volume_ebs_g2" {
  description = "Tamanho do disco g2"
  type        = number
}

variable "size_volume_ebs_g3" {
  description = "Tamanho do disco g3 "
  type        = number
}

variable "size_volume_ebs_g3_iops" {
  description = "Tamanho do disco g3 IOPS"
  type        = number
}

variable "prefixo_name" {
  description = "Descrição do prefixo para o nome de cada recurso"
  type        = string
}

variable "delete_volume" {
  description = "Deletar o volume quando terminar a máquina"
  type        = string
}