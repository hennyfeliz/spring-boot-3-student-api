
CREATE DATABASE SCHOOL;


USE SCHOOL;

-- Creación de la tabla 'estudiantes'
CREATE TABLE estudiantes (
  id_estudiante INT PRIMARY KEY,
  nombre VARCHAR(50),
  direccion VARCHAR(100),
  telefono VARCHAR(20),
  correo VARCHAR(50),
  id_materia INT,
);

-- Creación de la tabla 'profesores'
CREATE TABLE profesores (
  id_profesor INT PRIMARY KEY,
  nombre VARCHAR(50),
  direccion VARCHAR(100),
  telefono VARCHAR(20),
  correo VARCHAR(50)
);

-- Creación de la tabla 'materias'
CREATE TABLE materias (
  id_materia INT PRIMARY KEY,
  nombre VARCHAR(50),
  descripcion VARCHAR(100),
  creditos INT,
  id_estudiante INT,
  FOREIGN KEY (id_estudiante) REFERENCES estudiantes (id_estudiante),
  id_profesor INT,
  FOREIGN KEY (id_profesor) REFERENCES profesores (id_profesor)
);



-- Inserción de datos en la tabla 'estudiantes'
INSERT INTO estudiantes (id_estudiante, nombre, direccion, telefono, correo, id_materia)
VALUES
  (1, 'Juan Perez', 'Calle Falsa 123', '555-1234', 'juan.perez@ejemplo.com', 1),
  (2, 'Maria Lopez', 'Avenida Siempre Viva 456', '555-5678', 'maria.lopez@ejemplo.com', 2),
  (3, 'Pedro Ramirez', 'Boulevard de los Sueños 789', '555-9012', 'pedro.ramirez@ejemplo.com', 3);

-- Inserción de datos en la tabla 'profesores'
INSERT INTO profesores (id_profesor, nombre, direccion, telefono, correo)
VALUES
  (1, 'Luisa Fernandez', 'Calle del Sol 456', '555-2468', 'luisa.fernandez@ejemplo.com'),
  (2, 'Carlos Martinez', 'Avenida de la Luna 789', '555-3691', 'carlos.martinez@ejemplo.com'),
  (3, 'Ana Gomez', 'Boulevard de las Estrellas 123', '555-8024', 'ana.gomez@ejemplo.com');

-- Inserción de datos en la tabla 'materias'
INSERT INTO materias (id_materia, nombre, descripcion, creditos, id_estudiante, id_profesor)
VALUES
  (1, 'Matemáticas', 'Curso de matemáticas básicas', 4, 1, 1),
  (2, 'Historia', 'Curso de historia mundial', 3, 2, 2),
  (3, 'Ciencias', 'Curso de ciencias naturales', 4, 3, 3);
