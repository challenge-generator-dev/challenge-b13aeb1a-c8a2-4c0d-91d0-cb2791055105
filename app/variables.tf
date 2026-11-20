# Variables de entrada para el componente raíz del servicio de notificaciones.
# Los valores específicos por entorno (dev/prod) se declaran en environments/{env}/terraform.tfvars.
# Los recursos se etiquetan con Project y Environment mediante locals.

# Separación de entornos mediante workspaces de Terraform (dev/prod).
locals {
  workspace_name = terraform.workspace
}

variable "project_name" {
  description = "Nombre del proyecto"
  type        = string
}

variable "environment" {
  description = "Entorno (dev/prod)"
  type        = string
}

variable "vpc_cidr" {
  description = "CIDR block para la VPC"
  type        = string
}

variable "instance_type" {
  description = "Tipo de instancia EC2 para el cómputo del servicio de notificaciones"
  type        = string
}

variable "instance_count" {
  description = "Número de instancias EC2 a aprovisionar"
  type        = number
}

variable "ami_id" {
  description = "ID de la AMI utilizada por las instancias de cómputo"
  type        = string
}

variable "key_name" {
  description = "Nombre del key pair SSH asociado a las instancias (vacío si no aplica)"
  type        = string
}

variable "user_data" {
  description = "Script de inicialización (user data) de las instancias en texto plano"
  type        = string
}