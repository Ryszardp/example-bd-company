\c company;
-- * 1 * --
SELECT *
FROM employee
ORDER BY name
DESC;
-- * 2 * --
SELECT e.name, e.first_name, e.last_name, e.occupation, d.localization
FROM employee as e
LEFT JOIN department as d
ON e.id_department = d.id;
-- * 3 * --
SELECT name, first_name, last_name
FROM employee
WHERE name LIKE '%o';
-- * 4 * --
SELECT name, occupation, salary
FROM employee
WHERE address = 'Leon';
-- * 5 * --
SELECT e.name, e.first_name, e.last_name, e.salary, d.localization
FROM employee AS e
LEFT JOIN department AS d
ON e.id_department = d.id
WHERE salary BETWEEN 10000 AND 13000;
-- * 6 * --
SELECT  d.name, d.localization, COUNT(*) as employees
FROM employee AS e
LEFT JOIN department AS d
ON  e.id_department=d.id
GROUP BY d.id
HAVING COUNT(*) > 1;
-- * 7 * --
SELECT e.name, e.first_name, e.last_name, e.salary, d.name AS department
FROM employee AS e
LEFT JOIN department AS d
ON e.id_department = d.id
WHERE e.occupation = (
  SELECT occupation FROM employee
  WHERE name='Alfonso'
    AND first_name='Esquivel'
    AND last_name='Leonel'
);
-- * 8 * --
SELECT e.name, e.first_name, e.last_name, e.salary, d.name AS department
FROM employee AS e
LEFT JOIN department AS d
ON e.id_department=d.id
WHERE e.occupation = (
  SELECT occupation FROM employee
  WHERE name='Luis'
    AND first_name='Castillo'
    AND last_name='Montes'
);
-- * 9 * --
SELECT e.*, d.name AS department FROM employee AS e
LEFT JOIN department AS d
ON e.id_department = d.id
WHERE d.name = 'Contabilidad'
ORDER BY e.name;
-- * 10 * --
SELECT e.name, e.first_name
FROM employee AS e
WHERE occupation
  IN('Analista', 'Empleado')
  AND address = 'Leon';
-- * 11 * --
SELECT AVG(salary) AS average_salary
FROM employee;
-- * 12 * --
SELECT MAX(e.salary) AS max_salary
FROM employee AS e
LEFT JOIN department AS d
ON e.id_department = d.id
WHERE d.name = 'Ventas';
-- * 13 * --
SELECT MIN(e.salary) AS min_salary
FROM employee AS e
LEFT JOIN department AS d
ON e.id_department = d.id
WHERE d.name = 'Ventas';
-- * 14 * --
SELECT AVG(salary) AS average_salary
FROM employee AS e
LEFT JOIN department AS d
ON e.id_department = d.id
WHERE d.name = 'Contabilidad';
-- * 15 * --
SELECT COUNT(*) AS employees
FROM employee AS e
LEFT JOIN department AS d
ON e.id_department = d.id
WHERE d.id = 1;
-- * 16 * --
SELECT COUNT(*) AS employees
FROM employee AS e
LEFT JOIN department AS d
ON e.id_department = d.id
WHERE d.name = 'Ventas';
-- * 17 * --
SELECT COUNT(*) AS employees
FROM employee AS e
LEFT JOIN department AS d
ON e.id_department = d.id
WHERE e.commission = 0;
-- * 18 * --
SELECT COUNT(*) AS total_emplyees_name_A
FROM employee
WHERE name LIKE 'A%';
-- * 19 * --
SELECT d.name, COUNT(*) AS total_employees
FROM employee AS e
LEFT JOIN department AS d
ON e.id_department = d.id
GROUP BY d.id;
-- * 20 * --
SELECT e.occupation, sum(e.salary) AS total_salary_occupation
FROM employee AS e
GROUP BY e.occupation;
