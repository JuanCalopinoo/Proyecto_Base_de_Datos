-- Creación de la base de datos
CREATE DATABASE IF NOT EXISTS veterinaria;
USE veterinaria;

-- Tabla de propietarios
CREATE TABLE Propietario (
    cedula VARCHAR(10) PRIMARY KEY,
    nombre VARCHAR(50),
    apellido VARCHAR(50),
    telefono VARCHAR(15),
    direccion VARCHAR(100)
);

-- Tabla de mascotas
CREATE TABLE Mascota (
    id_mascota INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50),
    raza VARCHAR(50),
    especie VARCHAR(30),
    edad INT,
    cedula VARCHAR(10),
    FOREIGN KEY (cedula) REFERENCES Propietario(cedula)
);

-- Tabla de veterinarios
CREATE TABLE Veterinario (
    id_veterinario INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50),
    telefono VARCHAR(15),
    especialidad VARCHAR(50)
);

-- Tabla de citas
CREATE TABLE Cita (
    cod_cita INT AUTO_INCREMENT PRIMARY KEY,
    fecha DATE,
    hora TIME,
    id_veterinario INT,
    id_mascota INT,
    FOREIGN KEY (id_veterinario) REFERENCES Veterinario(id_veterinario),
    FOREIGN KEY (id_mascota) REFERENCES Mascota(id_mascota)
);

-- Tabla de consultas
CREATE TABLE Consulta (
    cod_consulta INT AUTO_INCREMENT PRIMARY KEY,
    diagnostico VARCHAR(200),
    observaciones VARCHAR(200),
    cod_cita INT,
    FOREIGN KEY (cod_cita) REFERENCES Cita(cod_cita)
);

-- Tabla de tratamientos
CREATE TABLE Tratamiento (
    id_tratamiento INT AUTO_INCREMENT PRIMARY KEY,
    medicamento VARCHAR(100),
    dosis VARCHAR(50),
    duracion VARCHAR(50),
    cod_consulta INT,
    FOREIGN KEY (cod_consulta) REFERENCES Consulta(cod_consulta)
);

-- Tabla intermedia: Atiende (relación muchos a muchos)
CREATE TABLE Atiende (
    id_veterinario INT,
    cod_cita INT,
    PRIMARY KEY (id_veterinario, cod_cita),
    FOREIGN KEY (id_veterinario) REFERENCES Veterinario(id_veterinario),
    FOREIGN KEY (cod_cita) REFERENCES Cita(cod_cita)
);
