# Aprovisionamiento de infraestructura con Terraform para el servicio de notificaciones

El objetivo de este reto es aprovisionar la red y el computo del servicio de notificaciones utilizando Terraform. Debes usar workspaces de Terraform para separar los entornos de desarrollo y producción, etiquetar todos los recursos con los tags Project y Environment, y evitar el uso de provisioners local-exec.

## Informacion General

| Campo | Valor |
|-------|-------|
| **Tema** | Infraestructura como codigo con Terraform |
| **Nivel** | advanced-l2 |
| **Tipo** | practical |
| **Tiempo estimado** | 8 horas |

## Stack

- **Lenguaje:** Terraform
- **Framework:** HCL
- **Version:** 1.5+

## Fases del Reto

### Fase 0: Configuración del Proyecto

**Objetivo:** Tener el proyecto base del reto funcionando en tu máquina: clonar el repositorio, instalar las herramientas y verificar que compila y arranca antes de empezar a practicar.

**Tiempo estimado:** 15-30 minutos

**Instrucciones:**

- Instala las herramientas para ejecutar el proyecto: Terraform 1.5+.
- Clona el repositorio del reto (el enlace viene en la entrega del reto y en la sección "Repositorio del Proyecto" del PDF) y ábrelo en tu IDE.
- Instala las dependencias y compila ejecutando `terraform -chdir=app init -backend=false && terraform -chdir=app/modules/compute init -backend=false && terraform -chdir=app/modules/network init -backend=false && terraform init -backend=false && terraform -chdir=app validate && terraform -chdir=app/modules/compute validate && terraform -chdir=app/modules/network validate && terraform validate` en la raíz del repositorio.
- Confirma que el comando termina sin errores: el proyecto arranca y sus pruebas corren.
- Ubica los archivos de práctica: son los que contienen `TODO(reto)` (búscalos en el repositorio). Lee el README.md y el AGENTS.md antes de empezar.

**Entregable:** El proyecto compila/arranca sin errores con `terraform -chdir=app init -backend=false && terraform -chdir=app/modules/compute init -backend=false && terraform -chdir=app/modules/network init -backend=false && terraform init -backend=false && terraform -chdir=app validate && terraform -chdir=app/modules/compute validate && terraform -chdir=app/modules/network validate && terraform validate`.

<details>
<summary>Pistas de conocimiento</summary>

- Los archivos con `TODO(reto)` son el ejercicio: el resto del repositorio ya está resuelto y no hace falta tocarlo.
- Si el comando de verificación falla, revisa la versión de las herramientas instaladas antes de modificar código.
- AGENTS.md describe el reto, el comando de verificación y las reglas del repositorio.

</details>

### Fase 1: Configuración inicial de Terraform

**Objetivo:** Configurar el entorno de Terraform y definir los workspaces para desarrollo y producción.

**Tiempo estimado:** 2 horas

**Instrucciones:**

- Configura Terraform para trabajar con AWS.
- Define los workspaces para los entornos de desarrollo y producción.
- Verifica que los workspaces están correctamente configurados.

**Entregable:** Configuración de Terraform con workspaces definidos y verificados.

<details>
<summary>Pistas de conocimiento</summary>

- Recuerda usar el comando `terraform workspace` para manejar los workspaces.
- Utiliza el archivo `terraform.tfvars` para definir variables específicas para cada workspace.

</details>

### Fase 2: Definición de la infraestructura

**Objetivo:** Definir la red y el computo del servicio de notificaciones en Terraform.

**Tiempo estimado:** 3 horas

**Instrucciones:**

- Define la red del servicio de notificaciones, incluyendo VPC, subredes y grupos de seguridad.
- Define el computo del servicio de notificaciones, incluyendo instancias EC2 y balanceadores de carga.
- Aplica etiquetas Project y Environment a todos los recursos.

**Entregable:** Definición de la red y el computo del servicio de notificaciones en Terraform con etiquetas aplicadas.

<details>
<summary>Pistas de conocimiento</summary>

- Utiliza los recursos de AWS en Terraform para definir la red y el computo.
- Aplica las etiquetas Project y Environment a cada recurso definido.

</details>

### Fase 3: Aprovisionamiento y verificación

**Objetivo:** Aprovisionar la infraestructura definida y verificar que cumple con los requisitos.

**Tiempo estimado:** 3 horas

**Instrucciones:**

- Ejecutar terraform apply en el workspace correspondiente
- Verificar que los recursos aprovisionados cumplen con los casos de aceptación definidos en las piezas p2, p3 y p4
- Validar que las pruebas de terraform pasan exitosamente

**Entregable:** Infraestructura aprovisionada y verificada mediante terraform test

<details>
<summary>Pistas de conocimiento</summary>

- Utiliza el comando `terraform apply` para aprovisionar la infraestructura.
- Verifica el estado de los recursos aprovisionados utilizando el comando `terraform show`.

</details>

## Dimensiones Evaluadas

- **queEs**: ¿Qué es Terraform y para qué se utiliza en este reto?
- **paraQueSirve**: ¿Para qué sirve definir workspaces en Terraform y cómo se aplican en este reto?
- **comoSeUsa**: ¿Cómo se utiliza Terraform para definir y aprovisionar la infraestructura del servicio de notificaciones?
- **erroresComunes**: ¿Cuáles son los errores comunes al definir y aprovisionar infraestructura con Terraform y cómo se pueden evitar?
- **queDecisionesImplica**: ¿Qué decisiones implica el aprovisionamiento de infraestructura con Terraform y cómo se toman en este reto?

## Criterios de Evaluacion

- Configuración correcta de Terraform con workspaces definidos y verificados.
- Definición de la red y el computo del servicio de notificaciones en Terraform con etiquetas aplicadas.
- Aprovisionamiento y verificación de la infraestructura que cumple con los requisitos de etiquetado y funcionalidad.

## Mapa de fases

La **Fase 0** es clonar el repositorio, instalar dependencias y correr las pruebas de aceptacion: todas fallan porque la logica de cada pieza esta pendiente.

| Fase | Pieza (skill) | Archivo:simbolo | Criterios | Prueba | Comando |
|------|---------------|-----------------|-----------|--------|---------|
| f1 — Configuración inicial de Terraform | — | — | Terraform está inicializado con backend remoto configurado; Workspaces 'dev' y 'prod' están creados y verificados; El código usa terraform.workspace para diferenciar entornos | — | — |
| f2 — Definición de la infraestructura | Definición de red en AWS con Terraform | — | Red y computo están definidos con recursos AWS específicos; Todos los recursos tienen etiquetas Project y Environment; Los recursos están organizados en módulos separados para red y computo | — | — |
| f2 — Definición de la infraestructura | Definición de subredes en AWS con Terraform | — | Red y computo están definidos con recursos AWS específicos; Todos los recursos tienen etiquetas Project y Environment; Los recursos están organizados en módulos separados para red y computo | — | — |
| f2 — Definición de la infraestructura | Definición de instancias EC2 en AWS con Terraform | — | Red y computo están definidos con recursos AWS específicos; Todos los recursos tienen etiquetas Project y Environment; Los recursos están organizados en módulos separados para red y computo | — | — |
| f3 — Aprovisionamiento y verificación | — | — | Infraestructura aprovisionada correctamente en AWS; Pruebas de terraform verifican etiquetas y configuración de recursos | — | — |

## Pruebas de aceptacion

Las pruebas de aceptacion (columna "Prueba" de la tabla) son de **solo lectura**: definen que significa "listo". No las edites, no las borres y no les agregues `skip`; lo que se resuelve es el codigo de cada pieza.

## Restricciones del pedido

| Restriccion | Donde se cumple | Estado |
|-------------|-----------------|--------|
| Usar workspaces de Terraform para separar dev y prod (terraform.workspace en el codigo) | chequeo estatico (code): exige `terraform.workspace` | Verificada |
| No usar provisioners local-exec | chequeo estatico (code): prohibe `local-exec` | Verificada |
| Etiquetar todos los recursos con los tags Project y Environment (verificado por terraform test) | sin ubicar | Restriccion no verificada en sin ubicar |

## Verificacion

El proyecto esta listo para trabajar cuando este comando corre sin errores:

```bash
terraform -chdir=app init -backend=false && terraform init -backend=false && terraform -chdir=app/modules/compute init -backend=false && terraform -chdir=app/modules/network init -backend=false && terraform -chdir=app validate && terraform validate && terraform -chdir=app/modules/compute validate && terraform -chdir=app/modules/network validate
```

---

*Reto generado automaticamente por Challenge Generator - Pragma*
