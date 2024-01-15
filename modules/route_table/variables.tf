variable "vpc_id" {
  description = "ID da VPC à qual associar o Internet Gateway"
  type        = string
}

variable "igw_id" {
  description = "ID do gateway"
  type        = string
}

variable "prefixo_name" {
  description = "Descrição do prefixo para o nome de cada recurso"
  type        = string
}

