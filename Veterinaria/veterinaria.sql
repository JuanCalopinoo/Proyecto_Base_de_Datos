// DR

Table Propietario {
  cedula varchar(10) [pk]
  nombre varchar(50)
  apellido varchar(50)
  telefono varchar(15)
  direccion varchar(100)
}

Table Mascota {
  id_mascota int [pk, increment]
  nombre varchar(50)
  raza varchar(50)
  especie varchar(30)
  edad int
  cedula varchar(10) [ref: > Propietario.cedula]
}

Table Veterinario {
  id_veterinario int [pk, increment]
  nombre varchar(50)
  telefono varchar(15)
  especialidad varchar(50)
}

Table Cita {
  cod_cita int [pk, increment]
  fecha date
  hora time
  id_mascota int [ref: > Mascota.id_mascota]
  // id_veterinario se ha removido, se usa la tabla 'Atiende' para la relación M:M
}

Table Consulta {
  cod_consulta int [pk, increment]
  diagnostico varchar(200)
  observaciones varchar(200)
  cod_cita int [ref: <> Cita.cod_cita]
}

Table Tratamiento {
  id_tratamiento int [pk, increment]
  medicamento varchar(100)
  dosis varchar(50)
  duracion varchar(50)
  cod_consulta int [ref: > Consulta.cod_consulta]
}

// Tabla Intermedia para la relación Muchos a Muchos (M:M): Veterinario <-> Cita
// Un Veterinario atiende muchas Citas. Una Cita es atendida por varios Veterinarios.
Table Atiende {
  id_veterinario int [ref: > Veterinario.id_veterinario]
  cod_cita int [ref: > Cita.cod_cita]
  
  Indexes {
    (id_veterinario, cod_cita) [pk]
  }
}
