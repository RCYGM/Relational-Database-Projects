-- ======================================
-- Ejemplo de Operadores de Comparación en SQL
-- ======================================

-- 1. = : Igualdad
-- Encuentra los estudiantes cuyo major_id (carrera) es igual a 36
SELECT *
FROM estudiantes
WHERE major_id = 36;
-- Uso práctico: Buscar todos los estudiantes que están inscritos en una carrera específica.

-- 2. != o <> : Diferente
-- Encuentra a los estudiantes cuyo major_id (carrera) no sea igual a 36
SELECT *
FROM estudiantes
WHERE major_id != 36;
-- Uso práctico: Listar a los estudiantes que NO pertenecen a una carrera en particular.

-- 3. > : Mayor que
-- Encuentra los estudiantes con un GPA mayor a 3.0
SELECT *
FROM estudiantes
WHERE gpa > 3.0;
-- Uso práctico: Identificar a los estudiantes con un rendimiento superior al promedio establecido.

-- 4. < : Menor que
-- Encuentra los estudiantes con un GPA menor a 2.5
SELECT *
FROM estudiantes
WHERE gpa < 2.5;
-- Uso práctico: Localizar a los estudiantes que necesitan apoyo académico debido a su bajo rendimiento.

-- 5. >= : Mayor o igual que
-- Encuentra a los estudiantes cuyo major_id es mayor o igual a 36
SELECT *
FROM estudiantes
WHERE major_id >= 36;
-- Uso práctico: Identificar las carreras con identificadores en un rango específico o superior.

-- 6. <= : Menor o igual que
-- Encuentra los estudiantes con un GPA menor o igual a 3.8
SELECT *
FROM estudiantes
WHERE gpa <= 3.8;
-- Uso práctico: Filtrar a los estudiantes elegibles para becas que requieren un GPA máximo.

-- ======================================
-- Datos de ejemplo para probar estas consultas
-- ======================================
-- A continuación, se muestra cómo podrías estructurar tu tabla de ejemplo:
-- Tabla: estudiantes
-- ---------------------------------
-- | id | nombre   | gpa | major_id |
-- ---------------------------------
-- | 1  | Ana      | 3.2 | 36       |
-- | 2  | Carlos   | 2.1 | 12       |
-- | 3  | Luisa    | 3.5 | 36       |
-- | 4  | Fernando | 4.0 | 24       |
-- | 5  | Marta    | 2.9 | 50       |
-- ---------------------------------

-- Puedes insertar datos de prueba con las siguientes instrucciones:
-- INSERT INTO estudiantes (id, nombre, gpa, major_id) VALUES
-- (1, 'Ana', 3.2, 36),
-- (2, 'Carlos', 2.1, 12),
-- (3, 'Luisa', 3.5, 36),
-- (4, 'Fernando', 4.0, 24),
-- (5, 'Marta', 2.9, 50);

-- ======================================
-- Nota:
-- Estos operadores son fundamentales para filtrar datos según criterios específicos.
-- En un entorno de trabajo, los usarás para realizar análisis y segmentación de datos.
