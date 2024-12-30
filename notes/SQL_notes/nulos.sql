-- ======================================
-- Ejemplo de Operadores para Valores Nulos en SQL
-- ======================================

-- 1. IS NULL: Verifica si un valor es nulo
-- Encuentra estudiantes que no tengan asignada una carrera (major_id es NULL)
SELECT *
FROM estudiantes
WHERE major_id IS NULL;
-- Uso práctico: Identificar registros incompletos, como estudiantes que no han seleccionado una carrera.

-- 2. IS NOT NULL: Verifica si un valor no es nulo
-- Encuentra estudiantes que tienen una carrera asignada (major_id NO es NULL)
SELECT *
FROM estudiantes
WHERE major_id IS NOT NULL;
-- Uso práctico: Filtrar registros completos, como estudiantes que ya han elegido su carrera.

-- 3. Uso avanzado combinando condiciones
-- Encuentra estudiantes cuyo GPA es mayor a 3.0 y tienen una carrera asignada
SELECT *
FROM estudiantes
WHERE gpa > 3.0 AND major_id IS NOT NULL;
-- Uso práctico: Analizar el rendimiento académico de estudiantes con información completa en sus registros.

-- 4. IS NULL en una columna con valores opcionales
-- Encuentra cursos donde la columna "profesor_asignado" es NULL
SELECT *
FROM cursos
WHERE profesor_asignado IS NULL;
-- Uso práctico: Identificar cursos que todavía no tienen un profesor asignado.

-- 5. IS NOT NULL con filtros adicionales
-- Encuentra cursos con duración mayor a 30 horas y un profesor asignado
SELECT *
FROM cursos
WHERE duracion > 30 AND profesor_asignado IS NOT NULL;
-- Uso práctico: Listar cursos largos que ya tienen profesores designados.

-- ======================================
-- Datos de ejemplo para probar estas consultas
-- ======================================
-- Tabla: estudiantes
-- -----------------------------------------
-- | id | first_name | gpa | major_id       |
-- -----------------------------------------
-- | 1  | Ana        | 3.2 | 36            |
-- | 2  | Daniel     | 3.1 | NULL          |
-- | 3  | Luisa      | 3.5 | 36            |
-- | 4  | Fernando   | 4.0 | NULL          |
-- | 5  | Marta      | 2.9 | 50            |
-- -----------------------------------------

-- Tabla: cursos
-- -----------------------------------------
-- | id | nombre_curso    | duracion | profesor_asignado |
-- -----------------------------------------
-- | 1  | Matematicas     | 40       | NULL              |
-- | 2  | Estadistica     | 35       | 'Carlos Lopez'    |
-- | 3  | Ciencias        | 50       | NULL              |
-- | 4  | Geografia       | 30       | 'Ana Perez'       |
-- | 5  | Historia        | 45       | 'Luisa Gomez'     |
-- -----------------------------------------

-- Insertar datos de prueba
-- INSERT INTO estudiantes (id, first_name, gpa, major_id) VALUES
-- (1, 'Ana', 3.2, 36),
-- (2, 'Daniel', 3.1, NULL),
-- (3, 'Luisa', 3.5, 36),
-- (4, 'Fernando', 4.0, NULL),
-- (5, 'Marta', 2.9, 50);

-- INSERT INTO cursos (id, nombre_curso, duracion, profesor_asignado) VALUES
-- (1, 'Matematicas', 40, NULL),
-- (2, 'Estadistica', 35, 'Carlos Lopez'),
-- (3, 'Ciencias', 50, NULL),
-- (4, 'Geografia', 30, 'Ana Perez'),
-- (5, 'Historia', 45, 'Luisa Gomez');

-- ======================================
-- Notas:
-- 1. IS NULL es ideal para detectar datos faltantes en columnas opcionales.
-- 2. IS NOT NULL ayuda a asegurarse de trabajar con registros completos.
-- 3. Al combinar IS NULL/IS NOT NULL con otros filtros, puedes realizar análisis más específicos.
-- 4. Estos operadores son fundamentales para asegurar la calidad y consistencia de los datos en análisis y reportes.
