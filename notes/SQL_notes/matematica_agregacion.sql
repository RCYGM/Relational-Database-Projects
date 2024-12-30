-- ======================================
-- Ejemplo de Funciones Matemáticas y de Agregación en SQL
-- ======================================

-- 1. MIN: Encuentra el valor mínimo
-- Encuentra el GPA más bajo entre los estudiantes que tienen asignada una carrera (major_id NO es NULL)
SELECT MIN(gpa) AS gpa_minimo
FROM estudiantes
WHERE major_id IS NOT NULL;
-- Uso práctico: Identificar al estudiante con el desempeño académico más bajo entre los que tienen carrera asignada.

-- 2. MAX: Encuentra el valor máximo
-- Encuentra el mayor GPA entre estudiantes inscritos en la carrera con major_id = 36
SELECT MAX(gpa) AS gpa_maximo
FROM estudiantes
WHERE major_id = 36;
-- Uso práctico: Saber quién tiene el rendimiento más alto en una carrera específica.

-- 3. SUM: Calcula la suma de los valores
-- Calcula la suma total de los major_id (excluyendo valores NULL)
SELECT SUM(major_id) AS suma_major_id
FROM estudiantes
WHERE major_id IS NOT NULL;
-- Uso práctico: Obtener un acumulado de identificadores para estadísticas u operaciones internas.

-- 4. AVG: Calcula el promedio
-- Calcula el promedio de GPA de los estudiantes que tienen un GPA mayor a 3.0
SELECT AVG(gpa) AS gpa_promedio
FROM estudiantes
WHERE gpa > 3.0;
-- Uso práctico: Analizar el rendimiento promedio de estudiantes destacados.

-- 5. ROUND: Redondea a un número específico de decimales
-- Redondea el promedio de GPA de los estudiantes a 2 decimales
SELECT ROUND(AVG(gpa), 2) AS gpa_promedio_redondeado
FROM estudiantes;
-- Uso práctico: Presentar los resultados con un formato más limpio y fácil de leer.

-- 6. COUNT: Cuenta las filas o valores
-- Cuenta cuántos estudiantes tienen un major_id asignado
SELECT COUNT(*) AS total_estudiantes
FROM estudiantes
WHERE major_id IS NOT NULL;
-- Uso práctico: Determinar cuántos estudiantes están activos en el sistema con información completa.

-- ======================================
-- Ejemplos avanzados combinando funciones
-- ======================================

-- Encuentra el GPA mínimo y máximo de los estudiantes, agrupados por major_id
SELECT major_id, MIN(gpa) AS gpa_minimo, MAX(gpa) AS gpa_maximo
FROM estudiantes
WHERE major_id IS NOT NULL
GROUP BY major_id;
-- Uso práctico: Analizar el rango de rendimiento académico en cada carrera.

-- Calcula el promedio y la suma total de duraciones para cursos con más de 30 horas
SELECT ROUND(AVG(duracion), 2) AS promedio_duracion, SUM(duracion) AS suma_duracion
FROM cursos
WHERE duracion > 30;
-- Uso práctico: Estudiar el promedio y total de horas de cursos largos para planificaciones académicas.

-- Cuenta cuántos cursos tienen un profesor asignado y cuántos no
SELECT 
    COUNT(CASE WHEN profesor_asignado IS NOT NULL THEN 1 END) AS cursos_con_profesor,
    COUNT(CASE WHEN profesor_asignado IS NULL THEN 1 END) AS cursos_sin_profesor
FROM cursos;
-- Uso práctico: Analizar la distribución de cursos con y sin profesores asignados.

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
-- | 4  | Fernando   | 4.0 | 12            |
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
-- (4, 'Fernando', 4.0, 12),
-- (5, 'Marta', 2.9, 50);

-- INSERT INTO cursos (id, nombre_curso, duracion, profesor_asignado) VALUES
-- (1, 'Matematicas', 40, NULL),
-- (2, 'Estadistica', 35, 'Carlos Lopez'),
-- (3, 'Ciencias', 50, NULL),
-- (4, 'Geografia', 30, 'Ana Perez'),
-- (5, 'Historia', 45, 'Luisa Gomez');

-- ======================================
-- Notas:
-- 1. Estas funciones son esenciales para análisis estadísticos y reportes.
-- 2. Combinar funciones matemáticas y de agregación con filtros y agrupaciones (GROUP BY) amplía su utilidad.
-- 3. Redondear (ROUND) es clave para presentar resultados más legibles.
-- 4. Los operadores condicionales como CASE se combinan muy bien con funciones de agregación para crear reportes avanzados.

-- ======================================
