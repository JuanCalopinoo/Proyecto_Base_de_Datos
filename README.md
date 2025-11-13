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
**[Veterinaria.sql](Veterinaria/veterinaria.sql)**

## 5 consultas en Álgebra Relacional y traducida en SQL


### Consultas en SQL:

### 1. Consultar todos los propietarios

<img width="694" height="175" alt="image" src="https://github.com/user-attachments/assets/f1f141d7-9e0b-4a90-bd99-e3adf9560cc5" />

### 2. Consultar todas las mascotas con su propietarios

<img width="790" height="314" alt="image" src="https://github.com/user-attachments/assets/7790ed3a-911b-4b1a-859e-37c00fa87f4a" />

Esta consulta demuestra cómo obtener la información de una mascota junto con los datos de su dueño, utilizando una cláusula JOIN.

### 3. Consultar citas con veterniario y mascota

<img width="790" height="314" alt="image" src="https://github.com/user-attachments/assets/3602ffec-4b09-4cef-a545-4a2f1b6f71ef" />

Esta consulta demuestra la capacidad del sistema para vincular tres entidades distintas en una sola vista, mostrando el detalle de una cita y quién está involucrado: la mascota y el veterinario.

### 4. Consultar consultas medicas con su tratamiento

<img width="801" height="428" alt="image" src="https://github.com/user-attachments/assets/03409821-d8b1-418f-bd34-1562c444c959" />

Este ejemplo muestra la unión entre una Consulta (donde se establece el diagnóstico) y su Tratamiento asociado, demostrando que podemos recuperar la información de la enfermedad y la terapia aplicada en un solo registro.

### 5. Consultar veterinarios y las citas que atienden 
<img width="801" height="347" alt="image" src="https://github.com/user-attachments/assets/52793d44-5fb0-4d35-99cb-a5936502fbb3" />

### 6. Consultar todas las mascotas de un propietario especifico 
<img width="801" height="216" alt="image" src="https://github.com/user-attachments/assets/77a2981d-4c94-4805-9bdc-a9bc9f478d27" />




