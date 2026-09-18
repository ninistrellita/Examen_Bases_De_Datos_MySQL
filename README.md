EXAMEN DE MySQL BASES DE DATOS

Aquí creamos la base de datos para un hospital llamada MediSistema, donde almacenar y gestionar información sobre médicos empleados y pacientes.

Problema a resolver

El centro de salud necesita una solución para organizar y consultar la información del personal médico, los empleados y los pacientes de manera eficiente. Actualmente, la falta de un sistema centralizado genera dificultades a la hora de saber quién está activo, quién está de vacaciones o en sustitución, y quién tiene asignados a los pacientes. Además, el cálculo de las horas de consulta semanales y la gestión de las vacaciones planificadas son tareas que se realizan manualmente, lo que resulta en errores y pérdida de tiempo.

CONSULTAS SELECCIONADAS
1.Numeros de pacientes atendidos por cada 
2.Número de sustituciones realizadas por cada médico sustituto
3.Número de médicos que están actualmente en sustitución
4.Médico con mayor cantidad de pacientes asignados
5.Médicos que actualmente están realizando una sustitución

SOLUCION
1. Ponemos un SELECT para mostarlos datps nombre_medico y pacientes_atendidos desde la tabla medicos
2. Primero ponemos un SELECT para mostrar los datos nombre_medico y sustituciones y ponemos FROM para seleccionar la tabla
    de medicos y ponemos WHERE para cuando el tipo sea 'Sustituto'
3. Ponemos SELECT junto a un COUNT(*) y un alias AS medicos_en_sustitucion desde la tabla medicos con un WHERE donde muestre    que el estado sustituido sea igual a 'SI'
4. Ponemos un SELECT para mostrar nombre_medico y pacientes_asignados desde la tabla medicos y poniendo un ORDER BY
   a pacientes_asignados con un DESC para que se vea de de mayor a menor y ponemos LIMIT para que solo aparezca el medico       que tenga la mayor cantidad de pacientes asignados
5.Ponemos un SELECT  para mostar nombre_medico, tipo_medico, un FROM para seleccionar la tabla medicos y ponemos un WHERE para que aparezcan solo el tipo de medico cuando sea 'Sustituto'
