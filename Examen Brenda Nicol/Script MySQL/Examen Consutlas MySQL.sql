USE medisistema;

-- 1. Números de pacientes atendidos por cada médico
SELECT nombre_medico, pacientes_atendidos
FROM medicos;

-- 2. Número de sustituciones realizadas por cada médico sustituto
SELECT nombre_medico, sustituciones
FROM medicos
WHERE tipo_medico = 'Sustituto';

-- 3. Número de médicos que están actualmente en sustitución (sustituido = 'SI')
SELECT COUNT(*) AS medicos_en_sustitucion
FROM medicos
WHERE sustituido = 'SI';

-- 4. Médico con mayor cantidad de pacientes asignados
SELECT nombre_medico, pacientes_asignados
FROM medicos
ORDER BY pacientes_asignados DESC
LIMIT 1;

-- 5. Médicos que actualmente están realizando una sustitución (tipo_medico = 'Sustituto')
SELECT nombre_medico, tipo_medico
FROM medicos
WHERE tipo_medico = 'Sustituto';


