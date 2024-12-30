-- ======================================
-- Ejemplo de Operadores de Combinación (JOIN) en SQL
-- ======================================

-- 1. INNER JOIN: Devuelve filas que tienen coincidencias en ambas tablas
-- Encuentra estudiantes y la información de sus carreras para aquellos que tienen una carrera asignada
SELECT estudiantes.id AS estudiante_id, estudiantes.first_name, estudiantes.major_id, carreras.nombre_carrera
FROM estudiantes
INNER JOIN carreras ON estudiantes.major_id = carreras.major_id;
-- Uso práctico: Obtener solo los estudiantes que tienen una carrera asignada junto con la información de la carrera.

-- 2. LEFT JOIN: Devuelve todas las filas de la tabla izquierda y las coincidentes de la tabla derecha
-- Muestra todos los estudiantes y, si tienen una carrera asignada, también la información de la carrera
SELECT estudiantes.id AS estudiante_id, estudiantes.first_name, estudiantes.major_id, carreras.nombre_carrera
FROM estudiantes
LEFT JOIN carreras ON estudiantes.major_id = carreras.major_id;
-- Uso práctico: Listar a todos los estudiantes, incluso aquellos que no tienen carrera asignada.

-- 3. RIGHT JOIN: Devuelve todas las filas de la tabla derecha y las coincidentes de la tabla izquierda
-- Muestra todas las carreras y, si tienen estudiantes asignados, también su información
SELECT carreras.major_id, carreras.nombre_carrera, estudiantes.first_name AS nombre_estudiante
FROM estudiantes
RIGHT JOIN carreras ON estudiantes.major_id = carreras.major_id;
-- Uso práctico: Ver todas las carreras disponibles, incluyendo aquellas sin estudiantes inscritos.

-- 4. FULL JOIN: Devuelve todas las filas de ambas tablas, con o sin coincidencias
-- Lista todos los estudiantes y todas las carreras, mostrando NULL donde no haya coincidencias
SELECT estudiantes.id AS estudiante_id, estudiantes.first_name, estudiantes.major_id, carreras.nombre_carrera
FROM estudiantes
FULL JOIN carreras ON estudiantes.major_id = carreras.major_id;
-- Uso práctico: Obtener una vista completa de estudiantes y carreras, incluyendo aquellos sin coincidencias en ambas tablas.

-- 5. USING: Simplifica los JOIN si la columna es la misma en ambas tablas
-- Encuentra todos los estudiantes y carreras relacionadas usando la columna major_id
SELECT estudiantes.id AS estudiante_id, estudiantes.first_name, carreras.nombre_carrera
FROM estudiantes
FULL JOIN carreras USING (major_id);
-- Uso práctico: Simplificar la sintaxis del JOIN cuando las columnas tienen el mismo nombre en ambas tablas.

-- ======================================
-- Datos de ejemplo para probar estas consultas
-- ======================================
-- Tabla: estudiantes
-- -----------------------------------------
-- | id | first_name | major_id            |
-- -----------------------------------------
-- | 1  | Ana        | 36                 |
-- | 2  | Daniel     | NULL               |
-- | 3  | Luisa      | 36                 |
-- | 4  | Fernando   | 12                 |
-- | 5  | Marta      | 50                 |
-- -----------------------------------------

-- Tabla: carreras
-- -----------------------------------------
-- | major_id | nombre_carrera             |
-- -----------------------------------------
-- | 12       | Ingeniería                |
-- | 24       | Derecho                   |
-- | 36       | Medicina                  |
-- | 50       | Arquitectura              |
-- -----------------------------------------

-- Insertar datos de prueba
-- INSERT INTO estudiantes (id, first_name, major_id) VALUES
-- (1, 'Ana', 36),
-- (2, 'Daniel', NULL),
-- (3, 'Luisa', 36),
-- (4, 'Fernando', 12),
-- (5, 'Marta', 50);

-- INSERT INTO carreras (major_id, nombre_carrera) VALUES
-- (12, 'Ingeniería'),
-- (24, 'Derecho'),
-- (36, 'Medicina'),
-- (50, 'Arquitectura');

-- ======================================
-- Notas:
-- 1. INNER JOIN solo devuelve filas con coincidencias en ambas tablas.
-- 2. LEFT JOIN incluye todos los registros de la tabla izquierda, incluso si no tienen coincidencias.
-- 3. RIGHT JOIN incluye todos los registros de la tabla derecha, incluso si no tienen coincidencias.
-- 4. FULL JOIN combina los resultados de LEFT JOIN y RIGHT JOIN, mostrando todos los registros de ambas tablas.
-- 5. USING es útil para simplificar la sintaxis cuando la columna de combinación tiene el mismo nombre en ambas tablas.
-- 6. Estos JOIN son fundamentales para relacionar datos almacenados en diferentes tablas, permitiendo análisis más complejos y completos.
