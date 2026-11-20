# Valores locales derivados para el componente raíz

locals {
  # Tags comunes para todos los recursos del componente
  common_tags = {
    Project     = var.project_name
    Environment = var.environment
    ManagedBy   = "terraform"
  }

  # Nombre del bucket de logs
  logs_bucket_name = "${var.project_name}-${var.environment}-notifications-logs"

  # Nombre del proyecto formateado
  project_full_name = "${var.project_name}-${var.environment}"
}