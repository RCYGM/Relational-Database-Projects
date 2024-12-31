-- ======================================
-- Ejemplo de GROUP BY y HAVING en SQL
-- ======================================

-- 1. GROUP BY: Agrupa filas que tienen valores en común
-- Encuentra la cantidad de estudiantes en cada major_id (carrera)
SELECT major_id, COUNT(*) AS total_estudiantes
FROM estudiantes
GROUP BY major_id;
-- Uso práctico: Contar cuántos estudiantes están inscritos en cada carrera.

-- 2. GROUP BY con función de agregación
-- Encuentra el promedio de GPA para cada major_id
SELECT major_id, AVG(gpa) AS promedio_gpa
FROM estudiantes
GROUP BY major_id;
-- Uso práctico: Calcular el promedio de rendimiento académico por carrera.

-- 3. HAVING: Filtra grupos creados por GROUP BY
-- Encuentra las carreras donde el promedio de GPA es mayor a 3.0
SELECT major_id, AVG(gpa) AS promedio_gpa
FROM estudiantes
GROUP BY major_id
HAVING AVG(gpa) > 3.0;
-- Uso práctico: Identificar carreras cuyos estudiantes tienen un rendimiento académico promedio alto.

-- 4. Combinación de GROUP BY y HAVING con múltiples funciones de agregación
-- Encuentra las carreras con más de 1 estudiante y cuyo GPA promedio es mayor a 3.5
SELECT major_id, COUNT(*) AS total_estudiantes, AVG(gpa) AS promedio_gpa
FROM estudiantes
GROUP BY major_id
HAVING COUNT(*) > 1 AND AVG(gpa) > 3.5;
-- Uso práctico: Filtrar carreras que cumplen criterios tanto de cantidad de estudiantes como de rendimiento.

-- 5. GROUP BY en múltiples columnas
-- Agrupa por major_id y profesor_asignado, contando cuántos estudiantes hay por combinación
SELECT major_id, profesor_asignado, COUNT(*) AS total_estudiantes
FROM estudiantes_carreras
GROUP BY major_id, profesor_asignado;
-- Uso práctico: Analizar la distribución de estudiantes según carrera y profesor asignado.

-- 6. Uso avanzado de HAVING
-- Encuentra las carreras donde el GPA máximo es igual a 4.0
SELECT major_id, MAX(gpa) AS gpa_maximo
FROM estudiantes
GROUP BY major_id
HAVING MAX(gpa) = 4.0;
-- Uso práctico: Identificar las carreras que tienen estudiantes con el GPA más alto posible.

-- ======================================
-- Datos de ejemplo para probar estas consultas
-- ======================================
-- Tabla: estudiantes
-- -----------------------------------------
-- | id | first_name | gpa  | major_id       |
-- -----------------------------------------
-- | 1  | Ana        | 3.2  | 36            |
-- | 2  | Daniel     | 3.1  | 12            |
-- | 3  | Luisa      | 3.5  | 36            |
-- | 4  | Fernando   | 4.0  | 36            |
-- | 5  | Marta      | 2.9  | 50            |
-- | 6  | Jorge      | 3.8  | 12            |
-- -----------------------------------------

-- Tabla: estudiantes_carreras (relaciona estudiantes y profesores)
-- --------------------------------------------------------------
-- | id_estudiante | major_id | profesor_asignado              |
-- --------------------------------------------------------------
-- | 1             | 36       | 'Carlos Lopez'                |
-- | 2             | 12       | 'Ana Perez'                   |
-- | 3             | 36       | 'Carlos Lopez'                |
-- | 4             | 36       | 'Carlos Lopez'                |
-- | 5             | 50       | 'Luisa Gomez'                 |
-- | 6             | 12       | 'Ana Perez'                   |
-- --------------------------------------------------------------

-- Insertar datos de prueba
-- INSERT INTO estudiantes (id, first_name, gpa, major_id) VALUES
-- (1, 'Ana', 3.2, 36),
-- (2, 'Daniel', 3.1, 12),
-- (3, 'Luisa', 3.5, 36),
-- (4, 'Fernando', 4.0, 36),
-- (5, 'Marta', 2.9, 50),
-- (6, 'Jorge', 3.8, 12);

-- INSERT INTO estudiantes_carreras (id_estudiante, major_id, profesor_asignado) VALUES
-- (1, 36, 'Carlos Lopez'),
-- (2, 12, 'Ana Perez'),
-- (3, 36, 'Carlos Lopez'),
-- (4, 36, 'Carlos Lopez'),
-- (5, 50, 'Luisa Gomez'),
-- (6, 12, 'Ana Perez');

-- ======================================
-- Notas:
-- 1. `GROUP BY` permite agrupar filas con valores en común para realizar análisis en grupos.
-- 2. Funciones de agregación como `COUNT()`, `AVG()`, `MAX()`, etc., suelen usarse con `GROUP BY`.
-- 3. `HAVING` filtra los grupos generados por `GROUP BY`, similar a cómo `WHERE` filtra filas.
-- 4. Combinar `GROUP BY`, funciones de agregación y `HAVING` permite realizar análisis complejos como:
--    - Encontrar promedios por grupo.
--    - Identificar grupos que cumplen ciertos criterios.
-- 5. Usar múltiples columnas en `GROUP BY` ayuda a agrupar datos con mayor granularidad.
-- 6. Estas consultas son fundamentales para crear reportes y análisis avanzados.

-- ======================================
