# Valores locales derivados para el módulo de red
# TODO(reto): Define valores locales derivados para simplificar la configuración del módulo de red.
# Incluye valores como CIDR blocks para subredes, nombres de recursos con sufijos de entorno, etc.

locals {
  public_subnet_cidrs  = [cidrsubnet(var.vpc_cidr, 8, 0), cidrsubnet(var.vpc_cidr, 8, 1)]
  private_subnet_cidrs = [cidrsubnet(var.vpc_cidr, 8, 2), cidrsubnet(var.vpc_cidr, 8, 3)]
  tags = {
    Project     = var.project_name
    Environment = var.environment
  }
}