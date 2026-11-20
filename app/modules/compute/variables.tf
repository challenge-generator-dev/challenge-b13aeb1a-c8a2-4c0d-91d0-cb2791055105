# Variables de entrada para el módulo de cómputo
# Superficie de práctica - stub

variable "project_name" {
  description = "Nombre del proyecto para etiquetado"
  type        = string
}

variable "environment" {
  description = "Entorno de despliegue (dev/prod)"
  type        = string
}

variable "vpc_id" {
  description = "ID de la VPC donde se aprovisionarán las instancias"
  type        = string
}

variable "subnet_ids" {
  description = "IDs de las subnets donde se aprovisionarán las instancias"
  type        = list(string)
}

variable "instance_type" {
  description = "Tipo de instancia EC2"
  type        = string
  default     = "t3.micro"
}

variable "instance_count" {
  description = "Cantidad de instancias a crear"
  type        = number
  default     = 1
}

variable "ami_id" {
  description = "ID de la AMI a utilizar"
  type        = string
}

variable "key_name" {
  description = "Nombre del par de claves SSH"
  type        = string
  default     = ""
}

variable "user_data" {
  description = "Script de inicialización de la instancia"
  type        = string
  default     = ""
}