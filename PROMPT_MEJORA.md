# Prompt para Mejorar el Codigo Base

Copia y pega el contenido del bloque de abajo en un asistente de IA (Claude, ChatGPT)
para obtener el proyecto completo y arrancable. Guarda los archivos que te devuelva en la
carpeta del repo, respetando exactamente las rutas.

Si preferis trabajar en tu editor con un agente local (Claude Code, Cursor, Copilot), usa `AGENTS.md` en vez de este archivo: dice lo mismo pero para que escriba los archivos en disco.

## Las dos reglas que no se negocian

1. **Completa el boilerplate.** Todo lo que el proyecto necesita para compilar y arrancar: manifiesto de dependencias, punto de entrada, configuracion, capa de interfaz, y las capas del patron arquitectonico declarado. Eso es andamiaje y es tu trabajo.
2. **NO resuelvas el reto.** Los entregables de las fases son el trabajo de la persona. El hueco pedagogico se deja como esta: el proyecto arranca, pero lo que el reto pide implementar NO esta implementado.

Dicho de otra forma: si algo impide compilar, arreglalo. Si algo es logica de negocio incompleta, validaciones ausentes, un secreto hardcodeado o un patron mejorable, dejalo exactamente como esta — es lo que la persona tiene que encontrar.

## Superficie de practica — NO resuelvas

Estos archivos SON el ejercicio de la persona. No los implementes; deja stubs.

- `app/main.tf` — El topic pide escribir Terraform: este .tf es el ejercicio, no scaffolding.
- `app/variables.tf` — El topic pide escribir Terraform: este .tf es el ejercicio, no scaffolding.
- `app/locals.tf` — El topic pide escribir Terraform: este .tf es el ejercicio, no scaffolding.
- `app/modules/network/main.tf` — El topic pide escribir Terraform: este .tf es el ejercicio, no scaffolding.
- `app/modules/network/subnets.tf` — El topic pide escribir Terraform: este .tf es el ejercicio, no scaffolding.
- `app/modules/network/variables.tf` — El topic pide escribir Terraform: este .tf es el ejercicio, no scaffolding.
- `app/modules/network/locals.tf` — El topic pide escribir Terraform: este .tf es el ejercicio, no scaffolding.
- `app/modules/network/outputs.tf` — El topic pide escribir Terraform: este .tf es el ejercicio, no scaffolding.
- `app/modules/compute/main.tf` — El topic pide escribir Terraform: este .tf es el ejercicio, no scaffolding.
- `app/modules/compute/variables.tf` — El topic pide escribir Terraform: este .tf es el ejercicio, no scaffolding.
- `app/modules/compute/locals.tf` — El topic pide escribir Terraform: este .tf es el ejercicio, no scaffolding.
- `app/modules/compute/outputs.tf` — El topic pide escribir Terraform: este .tf es el ejercicio, no scaffolding.

## Como saber que terminaste

```bash
terraform -chdir=app init -backend=false && terraform -chdir=app/modules/compute init -backend=false && terraform -chdir=app/modules/network init -backend=false && terraform init -backend=false && terraform -chdir=app validate && terraform -chdir=app/modules/compute validate && terraform -chdir=app/modules/network validate && terraform validate
```

Ese comando corriendo sin errores es la definicion de "listo".

---

```
## Briefing del reto (autoridad)
Este bloque manda sobre los archivos adjuntos. El stack y el rol salen de AQUÍ, no de un topic genérico ni de markdown placeholder.

### Perfil
Chapter DevOps, Especialidad Ingenieria, Tecnología Terraform, Advanced L2

### Brecha de conocimiento
Aprovisionar infraestructura con Terraform

### Misión / candidato
Versionar la infraestructura del servicio de notificaciones

### Reto
- Tema: Infraestructura como codigo con Terraform
- Seniority: advanced-l2
- Tipo: practical
- Título: Aprovisionamiento de infraestructura con Terraform para el servicio de notificaciones
- Tiempo estimado: 8 horas

### Fases (trabajo del HUMANO — PROHIBIDO completarlas)
No implementes estos entregables. Dejalos como hueco pedagógico. El asistente solo materializa el proyecto arrancable para que el participante pueda trabajar.
- Fase 1: Configuración inicial de Terraform — objetivo: Configurar el entorno de Terraform y definir los workspaces para desarrollo y producción. — entregable (NO resolver): Configuración de Terraform con workspaces definidos y verificados.
- Fase 2: Definición de la infraestructura — objetivo: Definir la red y el computo del servicio de notificaciones en Terraform. — entregable (NO resolver): Definición de la red y el computo del servicio de notificaciones en Terraform con etiquetas aplicadas.
- Fase 3: Aprovisionamiento y verificación — objetivo: Aprovisionar la infraestructura definida y verificar que cumple con los requisitos. — entregable (NO resolver): Infraestructura aprovisionada y verificada mediante terraform test

Eres un asistente experto en análisis, corrección y generación de archivos de cualquier tipo:
código fuente, documentación, hojas de cálculo, documentos Word, configuraciones, entre otros.
Voy a enviarte una cadena de texto que contiene uno o más archivos. Cada archivo está delimitado por un marcador con el siguiente formato:
// === ARCHIVO: ruta/del/archivo.extension ===
o también puede aparecer como:
## === ARCHIVO: ruta/del/archivo.extension ===
Lo que sigue al marcador puede ser:

El contenido real del archivo (código, texto, YAML, etc.)
Una descripción en lenguaje natural de lo que debe contener el archivo


TU TAREA
PASO 0 — ¿Esto es un proyecto o una carcasa?
Antes de extraer archivos, leé el Briefing (si está) y diagnosticá el adjunto.

Es CARCASA si ocurre CUALQUIERA de estas:
- No hay manifiesto de dependencias del stack del briefing (manifest.json de VTEX IO / package.json / pom.xml / build.gradle / requirements.txt / go.mod / *.tf / *.csproj, según corresponda)
- Hay un "binario" que en realidad es un comentario ("no puede ser mostrado como texto plano", placeholder .fig/.docx vacío)
- Los markdowns ya completan entregables de fases posteriores ("se implementó fade-in", lista de áreas ya resuelta)

Si es CARCASA:
- MATERIALIZÁ un proyecto que arranca en el stack del briefing (VTEX IO Store Framework, Angular, Terraform, pytest, Nest, etc.). Incluí manifiesto, punto de entrada y capa de interfaz reales.
- NO copies los markdowns de "solución" como si fueran el producto. Son ruido de generación.
- NO resuelvas las fases del briefing (están marcadas PROHIBIDO). Dejá el hueco pedagógico: el flujo existe, las microinteracciones/calidad/infra que el reto pide NO están hechas.
- Después seguí al PASO 5 (entrega de archivos).

Si es un proyecto REAL (manifiesto + código que compila o arranca):
- Seguí PASO 1 en adelante. 🔴 compilación sí. 🟡 pedagógico no.

PASO 1 — Detección y extracción
Identifica todos los archivos presentes en la cadena. Para cada archivo extrae:

Su ruta completa (ej: src/main/java/com/pragma/Service.java)
Su contenido o descripción

PASO 2 — Clasificación por tipo
Clasifica cada archivo en una de estas categorías:
A) Código fuente (Java, Python, TypeScript, JavaScript, Kotlin, etc.)
B) Configuración / documentación (YAML, properties, Markdown, JSON, txt, etc.)
C) Excel (.xlsx, .xls, .csv)
D) Word (.docx, .doc)
E) Otro tipo de archivo binario o especial
PASO 3 — Clasificación de errores en código fuente

Objetivo prioritario: que el proyecto compile. No corrijas flujo de negocio ni lógica funcional.

Antes de modificar cualquier archivo de código fuente, clasifica cada problema encontrado en una de estas dos categorías:
🔴 ERROR DE COMPILACIÓN — corregir siempre
Son errores que impiden que el proyecto arranque, sin valor pedagógico:

Import faltante o incorrecto
Clase, método o variable referenciada que no existe en ningún archivo del proyecto
Error de sintaxis
Anotación con atributos inválidos
Dependencia ausente en pom.xml, package.json, etc.
Archivo referenciado que no existe y debe ser creado con implementación mínima

→ CORREGIR estos errores.
🟡 PROBLEMA FUNCIONAL O DE CALIDAD — preservar siempre
Son problemas que no impiden compilar. Pueden ser intencionales para el aprendizaje:

Clave secreta hardcodeada ("secret", "password123")
API deprecada que funciona pero tiene reemplazo moderno
Lógica de negocio incorrecta o incompleta
Código redundante o de baja legibilidad
Falta de validaciones en flujo de negocio
Patrones de diseño incorrectos pero funcionales
Concurrencia no segura
Configuración funcional pero no óptima

→ PRESERVAR tal cual. No corregir, no mejorar, no comentar.
PASO 4 — Procesamiento según tipo de archivo
Tipo A — Código fuente
Aplica únicamente las correcciones clasificadas como 🔴 ERROR DE COMPILACIÓN.
No alteres ningún elemento clasificado como 🟡 PROBLEMA FUNCIONAL O DE CALIDAD.
Si falta un archivo referenciado, créalo con la implementación mínima necesaria para compilar.
Tipo B — Configuración / documentación
Extrae el contenido tal cual, sin modificaciones salvo errores evidentes de sintaxis
(ej: YAML mal indentado).
Tipo C — Excel (.xlsx)
Si viene con contenido real, genera el archivo respetando ese contenido.
Si viene con descripción en lenguaje natural, genera un archivo Excel funcional con:

Fila de encabezados en negrita con color de fondo distintivo
Columnas con ancho ajustado al contenido
Tipos de dato correctos por columna
Validaciones si la descripción lo indica
Hojas nombradas descriptivamente si hay más de una
Filas de ejemplo si no hay datos reales

Tipo D — Word (.docx)
Si viene con contenido real, genera el archivo respetando ese contenido.
Si viene con descripción en lenguaje natural, genera un documento Word funcional con:

Estilos de título (Título 1, Título 2) para jerarquía de secciones
Fuente legible (Calibri o equivalente), tamaño 11-12pt para cuerpo
Márgenes estándar
Tabla de contenido si tiene múltiples secciones
Tablas con encabezados en negrita si aplica

Tipo E — Otro
Genera el archivo con el contenido o estructura más apropiada según la descripción.
PASO 5 — Entrega de archivos
Entregá cada archivo con su ruta completa, respetando exactamente la estructura de rutas
indicada por los marcadores: un bloque por archivo, precedido por su ruta. No generes ZIPs
ni archivos adjuntos.
La entrega debe incluir:

Archivos de código con únicamente los errores de compilación corregidos
Archivos de configuración y documentación sin cambios
Archivos nuevos creados para resolver dependencias de compilación faltantes
Archivos Excel y Word generados desde descripción

IMPORTANTE: Entregá los archivos completos al finalizar. No preguntes si el usuario
quiere recibirlos. Simplemente entregalos; No debes desplegar en el chat el resumen de lo que arreglaste, solo entregá los archivos.

REGLAS IMPORTANTES

No omitas ningún archivo aunque no tenga errores ni modificaciones
Respeta los nombres y rutas exactas indicadas por los marcadores
Si un archivo no tiene marcador claro, infiere el nombre desde su contenido
Si la cadena contiene solo documentación, placeholders o binarios fake, NO la reproduzcas:
aplicá PASO 0 (materializar el proyecto del briefing). Reproducir la carcasa es un fallo.
No agregues texto después del último archivo entregado
No preguntes si el usuario quiere los archivos: simplemente entregalos siempre
Si detectas que falta un archivo de configuración necesario para compilar
(pom.xml, package.json, requirements.txt, build.gradle, etc.), créalo e inclúyelo
inferiendo su contenido desde los imports y frameworks detectados en el código
Nunca corrijas problemas 🟡 aunque parezcan obvios o fáciles de mejorar.
El participante que recibirá este proyecto los debe encontrar y resolver él mismo.


INPUT
Aquí está la cadena con los archivos:

// === ARCHIVO: versions.tf ===
terraform {
  required_version = ">= 1.9.0, < 2.0.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "= 5.100.0"
    }
  }
}

// === ARCHIVO: providers.tf ===
provider "aws" {
  region = "us-east-1"
}

// === ARCHIVO: app/variables.tf ===
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

// === ARCHIVO: app/modules/network/main.tf ===
# Configuración principal del módulo de red
# TODO(reto): Define los recursos de red base (VPC, Internet Gateway, Route Table, etc.).
# Asegúrate de etiquetar todos los recursos con los tags Project y Environment usando locals.
# Evita el uso de provisioners local-exec.

# TODO(reto): implementa este bloque
# resource "aws_vpc" "main" {
# }

// === ARCHIVO: app/modules/network/subnets.tf ===
# Definición de subredes dentro del módulo de red
# TODO(reto): Define las subredes públicas y privadas necesarias para el servicio de notificaciones.
# Asegúrate de distribuir las subredes en diferentes zonas de disponibilidad y etiquetarlas correctamente.
# Usa locals para derivar valores como CIDR blocks de subredes.

# TODO(reto): implementa este bloque
# resource "aws_subnet" "public" {
# }

# TODO(reto): implementa este bloque
# resource "aws_subnet" "private" {
# }

// === ARCHIVO: app/modules/network/variables.tf ===
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

// === ARCHIVO: app/modules/network/locals.tf ===
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

// === ARCHIVO: app/modules/compute/main.tf ===
# Configuración principal del módulo de cómputo
# TODO(reto): Define los recursos de cómputo base (EC2 instances, Auto Scaling Groups, Load Balancers, etc.).
# Asegúrate de etiquetar todos los recursos con los tags Project y Environment usando locals.
# Configura los recursos para que se desplieguen en las subredes privadas definidas en el módulo de red.

# TODO(reto): implementa este bloque
# resource "aws_instance" "notifications" {
# }

// === ARCHIVO: app/modules/compute/variables.tf ===
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

// === ARCHIVO: app/modules/compute/locals.tf ===
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

// === ARCHIVO: app/modules/network/outputs.tf ===
# Outputs del módulo de red
# Superficie de práctica: completar con los outputs necesarios

output "vpc_id" {
  description = "ID de la VPC principal"
  value       = null # TODO(reto)
}

output "public_subnet_ids" {
  description = "IDs de las subnets públicas"
  value       = null # TODO(reto)
}

output "private_subnet_ids" {
  description = "IDs de las subnets privadas"
  value       = null # TODO(reto)
}

// === ARCHIVO: app/modules/compute/outputs.tf ===
# Outputs del módulo de cómputo
# Superficie de práctica: completar con los outputs necesarios

output "instance_ids" {
  description = "IDs de las instancias EC2"
  value       = null # TODO(reto)
}

output "instance_private_ips" {
  description = "IPs privadas de las instancias"
  value       = null # TODO(reto)
}

// === ARCHIVO: app/main.tf ===
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

// === ARCHIVO: app/locals.tf ===
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
```
