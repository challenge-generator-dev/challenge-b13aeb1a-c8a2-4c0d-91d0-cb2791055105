# Valores locales derivados para el módulo de cómputo
# Superficie de práctica - stub

locals {
  # Tags comunes para todos los recursos del módulo
  common_tags = {
    Project     = var.project_name
    Environment = var.environment
    ManagedBy   = "Terraform"
    Module      = "compute"
  }

  # Nombre base para las instancias
  instance_name = "${var.project_name}-notifications-${var.environment}"

  # Configuración de red derivada
  subnet_id = var.subnet_ids[0]

  # User data con codificación base64
  user_data_base64 = var.user_data != "" ? base64encode(var.user_data) : ""
}