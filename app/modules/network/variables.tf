# Variables de entrada para el módulo de red
# TODO(reto): Define las variables necesarias para el módulo de red.
# Incluye variables para CIDR blocks, nombres de recursos y cualquier otro parámetro requerido.

variable "vpc_cidr" {
  description = "CIDR block para la VPC"
  type        = string
}

variable "project_name" {
  description = "Nombre del proyecto"
  type        = string
}

variable "environment" {
  description = "Entorno (dev/prod)"
  type        = string
}