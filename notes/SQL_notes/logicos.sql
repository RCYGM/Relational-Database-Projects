-- ======================================
-- Ejemplo de Operadores Lógicos en SQL
-- ======================================

-- 1. AND: Ambas condiciones deben ser verdaderas
-- Encuentra estudiantes con un GPA mayor a 3.0 Y que pertenezcan a la carrera con major_id igual a 36
SELECT *
FROM estudiantes
WHERE gpa > 3.0 AND major_id = 36;
-- Uso práctico: Filtrar estudiantes que cumplen múltiples criterios estrictos.

-- 2. OR: Al menos una condición debe ser verdadera
-- Encuentra estudiantes cuyo nombre comience con 'D' O que tengan un GPA mayor a 3.8
SELECT *
FROM estudiantes
WHERE first_name LIKE 'D%' OR gpa > 3.8;
-- Uso práctico: Identificar estudiantes que cumplan al menos uno de los dos criterios, como rendimiento sobresaliente o un nombre específico.

-- 3. NOT: Invierte la condición
-- Encuentra estudiantes cuyo GPA NO contenga la letra 'A' (caso insensible)
SELECT *
FROM estudiantes
WHERE gpa::TEXT NOT ILIKE '%A%';
-- Uso práctico: Excluir registros que contengan un patrón específico en el GPA.

-- 4. Uso de paréntesis para consultas complejas
-- Encuentra estudiantes que:
-- (Tengan un GPA mayor a 3.0 Y major_id sea 36) O
-- (major_id sea 24 Y el nombre comience con 'F')
SELECT *
FROM estudiantes
WHERE (gpa > 3.0 AND major_id = 36)
   OR (major_id = 24 AND first_name LIKE 'F%');
-- Uso práctico: Combinar múltiples criterios para segmentar estudiantes por rendimiento y carrera.

-- 5. Combinación de AND, OR y NOT con paréntesis
-- Encuentra estudiantes que:
-- (Tengan un GPA mayor a 3.5 O major_id sea mayor a 20) Y
-- (NO tengan un nombre que contenga 'a')
SELECT *
FROM estudiantes
WHERE (gpa > 3.5 OR major_id > 20)
  AND first_name NOT ILIKE '%a%';
-- Uso práctico: Filtrar registros con condiciones complejas, excluyendo casos específicos.

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

-- Insertar datos de prueba
-- INSERT INTO estudiantes (id, first_name, gpa, major_id) VALUES
-- (1, 'Ana', 3.2, 36),
-- (2, 'Daniel', 3.1, 12),
-- (3, 'Luisa', 3.5, 36),
-- (4, 'Fernando', 4.0, 24),
-- (5, 'Marta', 2.9, 50);

-- ======================================
-- Notas:
-- 1. El operador `ILIKE` es insensible a mayúsculas/minúsculas y es ideal para búsquedas de texto en PostgreSQL.
-- 2. Paréntesis ayudan a controlar la lógica de las condiciones y priorizar operaciones.
-- 3. Usa estos operadores para analizar grandes conjuntos de datos con criterios combinados.
