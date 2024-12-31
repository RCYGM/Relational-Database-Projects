-- ======================================
-- Ejemplo de Operadores de Patrones con LIKE y ILIKE en SQL
-- ======================================

-- 1. % : Cualquier cantidad de caracteres (incluyendo ninguno)
-- Encuentra estudiantes cuyos nombres comiencen con "D"
SELECT *
FROM estudiantes
WHERE first_name LIKE 'D%';
-- Uso práctico: Filtrar nombres que empiezan con una letra específica, útil para buscar patrones en registros.

-- Encuentra cursos cuyos nombres terminen en "s"
SELECT *
FROM cursos
WHERE nombre_curso LIKE '%s';
-- Uso práctico: Identificar cursos que terminan con una letra específica, como pluralidad.

-- 2. _ : Representa un solo carácter
-- Encuentra cursos donde la segunda letra sea "e"
SELECT *
FROM cursos
WHERE nombre_curso LIKE '_e%';
-- Uso práctico: Filtrar registros con patrones específicos en una posición definida.

-- 3. ILIKE: Insensible a mayúsculas/minúsculas (PostgreSQL)
-- Encuentra estudiantes cuyos nombres comiencen con "a" o "A"
SELECT *
FROM estudiantes
WHERE first_name ILIKE 'a%';
-- Uso práctico: Realizar búsquedas sin importar el uso de mayúsculas o minúsculas.

-- 4. Uso avanzado combinando patrones
-- Encuentra estudiantes cuyos nombres:
-- - Comiencen con "L" O
-- - Tengan la letra "a" como tercera letra Y terminen en "a"
SELECT *
FROM estudiantes
WHERE first_name LIKE 'L%'
   OR (first_name LIKE '__a%' AND first_name LIKE '%a');
-- Uso práctico: Combinación de patrones para búsquedas avanzadas.

-- 5. Patrón dinámico para filtrar registros por longitud específica
-- Encuentra cursos cuyos nombres tengan exactamente 5 caracteres
SELECT *
FROM cursos
WHERE nombre_curso LIKE '_____';
-- Uso práctico: Identificar nombres con una cantidad específica de caracteres.

-- ======================================
-- Datos de ejemplo para probar estas consultas
-- ======================================
-- Tabla: estudiantes
-- -----------------------------------------
-- | id | first_name | gpa | major_id       |
-- -----------------------------------------
-- | 1  | Ana        | 3.2 | 36            |
-- | 2  | Daniel     | 3.1 | 12            |
-- | 3  | Luisa      | 3.5 | 36            |
-- | 4  | Fernando   | 4.0 | 24            |
-- | 5  | Marta      | 2.9 | 50            |
-- -----------------------------------------

-- Tabla: cursos
-- -----------------------------------------
-- | id | nombre_curso    | duracion        |
-- -----------------------------------------
-- | 1  | Matematicas     | 40 horas       |
-- | 2  | Estadistica     | 35 horas       |
-- | 3  | Ciencias        | 50 horas       |
-- | 4  | Geografia       | 30 horas       |
-- | 5  | Historia        | 45 horas       |
-- -----------------------------------------

-- Insertar datos de prueba
-- INSERT INTO estudiantes (id, first_name, gpa, major_id) VALUES
-- (1, 'Ana', 3.2, 36),
-- (2, 'Daniel', 3.1, 12),
-- (3, 'Luisa', 3.5, 36),
-- (4, 'Fernando', 4.0, 24),
-- (5, 'Marta', 2.9, 50);

-- INSERT INTO cursos (id, nombre_curso, duracion) VALUES
-- (1, 'Matematicas', '40 horas'),
-- (2, 'Estadistica', '35 horas'),
-- (3, 'Ciencias', '50 horas'),
-- (4, 'Geografia', '30 horas'),
-- (5, 'Historia', '45 horas');

-- ======================================
-- Notas:
-- 1. El operador `%` es útil para buscar cualquier cantidad de caracteres en cualquier posición.
-- 2. El operador `_` permite buscar caracteres en posiciones específicas.
-- 3. `ILIKE` es una versión más flexible de `LIKE`, ideal para búsquedas sin distinción de mayúsculas/minúsculas.
-- 4. Los paréntesis son clave para combinar patrones complejos.

-- ======================================
