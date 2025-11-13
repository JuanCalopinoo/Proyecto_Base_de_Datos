# Proyecto Base de Datos - Unidad 1
Veterinaria
## Contexto:
La veterinaria “AnimalCare” necesita una base de datos para manejar la información de sus clientes, mascotas, citas médicas, consultas realizadas y tratamientos aplicados.
Actualmente, los datos se guardan de manera desordenada, lo que complica llevar un control sobre los diagnósticos y medicamentos de cada paciente.
### 🐾 Entidades y Atributos del Sistema Veterinario

| Entidad | Atributos |
| :--- | :--- |
| **Dueño** | `id_dueño` , `nombre`, `telefono`, `direccion` |
| **Mascota** | `id_mascota` , `nombre`, `especie`, `raza`, `edad`, `id_dueño` (FK) |
| **Veterinario** | `id_vet` , `nombre`, `especialidad`, `teléfono` |
| **Cita** | `id_cita` , `fecha`, `hora`, `motivo` |
| **Consulta** | `id_consulta` , `diagnostico`, `observaciones` |
| **Tratamiento** | `id_tratamiento` , `medicamento`, `dosis`, `duración` |

## Diagrama ER:

## Diagrama Relacional:

## Codigo Sql
