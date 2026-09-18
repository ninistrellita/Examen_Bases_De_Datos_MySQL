CREATE DATABASE IF NOT EXISTS medisistema;

USE medisistema;

CREATE TABLE medicos (
    medico_id INT PRIMARY KEY,
    nombre_medico VARCHAR(40) NOT NULL,
    tipo_medico VARCHAR(15) NOT NULL,
    horario_medico DATE,
    pacientes_atendidos INT NOT NULL DEFAULT 0,
    vacaciones_medico INT NOT NULL DEFAULT 0,
    sustituciones INT NOT NULL DEFAULT 0,
    sustituido VARCHAR(5) NOT NULL DEFAULT 'NO',
    pacientes_asignados INT NOT NULL DEFAULT 0,
    estado VARCHAR(15) NOT NULL DEFAULT 'Activo'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


INSERT INTO medicos (
    medico_id, nombre_medico, tipo_medico, pacientes_atendidos, 
    vacaciones_medico, sustituciones, sustituido, pacientes_asignados, estado
)
VALUES
(1001, 'Evelyn Suescun', 'Titular', 10, 0, 0, 'NO', 20, 'Activo'),
(1002, 'Maira Gonzalez', 'Interino', 6, 0, 0, 'NO', 10, 'Activo'),
(1003, 'Santiago Chobi', 'Sustituto', 15, 0, 4, 'NO', 2, 'Activo'),
(1004, 'Nini Chobi', 'Titular', 12, 0, 0, 'SI', 5, 'Activo'),
(1005, 'Brendis Pro', 'Sustituto', 9, 0, 7, 'NO', 3, 'Activo');





















