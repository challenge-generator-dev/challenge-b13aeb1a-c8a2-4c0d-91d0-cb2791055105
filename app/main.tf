# Orquestación principal del componente de notificaciones
# Referencia los módulos de red y cómputo

terraform {
  # Workspace para separar entornos
  # El workspace se selecciona con: terraform workspace select dev|prod
}

# Referencia al módulo de red
module "network" {
  source = "./modules/network"

  vpc_cidr      = var.vpc_cidr
  project_name  = var.project_name
  environment   = var.environment
}

# Referencia al módulo de cómputo
module "compute" {
  source = "./modules/compute"

  project_name   = var.project_name
  environment    = var.environment
  vpc_id         = module.network.vpc_id
  subnet_ids     = module.network.private_subnet_ids
  instance_type  = var.instance_type
  instance_count = var.instance_count
  ami_id         = var.ami_id
  key_name       = var.key_name
  user_data      = var.user_data
}

# Recursos globales del componente
# TODO(reto): implementa este bloque
# resource "aws_s3_bucket" "logs" {
# }