
variable "vpc_id" {
  description = "VPC ID"
  type        = string
}


variable "ip_public_ssh" {
  description = "IP Publico permitido para acesso SSH"
  type        = string
}

variable "prefixo_name" {
  description = "Descrição do prefixo para o nome de cada recurso"
  type        = string
}

variable "name" {
  description = "Nome do gropo de seguranca"
  type        = string
}