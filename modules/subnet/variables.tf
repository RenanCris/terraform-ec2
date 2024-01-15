variable "cidr_block" {
  description = "CIDR block da VPC"
  type        = string
  default     = "10.0.1.0/24"
}

variable "vpc_id" {
  description = "VPC ID"
  type        = string
}

variable "availability_zone_id" {
  description = "Region da zona de disponibilidade"
  type        = string
}

variable "route_table_id" {
  description = "Id Tabela de roteamento"
  type        = string
}

variable "prefixo_name" {
  description = "Descrição do prefixo para o nome de cada recurso"
  type        = string
}
