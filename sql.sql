

-------------------------------------------- 1.
SELECT state 
FROM customers 
WHERE state LIKE 'N%';

-------------------------------------------- 2. 
SELECT * 
FROM customers 
WHERE age BETWEEN 25 AND 30;

-------------------------------------------- 3
SELECT gender, COUNT(*) AS nombre_clients 
FROM customers 
GROUP BY gender;

-------------------------------------------- 4
SELECT state, firstname, lastname 
FROM customers 
ORDER BY state;

-------------------------------------------- 5
SELECT state, COUNT(*) AS nombre_clients 
FROM customers 
GROUP BY state 
ORDER BY state;

-------------------------------------------- 6

SELECT 
    AVG(age) AS avg_general,
    AVG(CASE WHEN gender = 'F' THEN age END) AS avg_women,
    AVG(CASE WHEN gender = 'M' THEN age END) AS avg_men
FROM customers;

--mySQL
-- SELECT 
--     AVG(age) AS avg_general,
--     AVG(if(gender = 'F', age)) AS avg_women,
--     AVG(if(gender = 'M', age)) AS avg_men
-- FROM customers;
--------------------------------------------- 7
SELECT state, AVG(age) AS avg_age 
FROM customers 
GROUP BY state 
ORDER BY state;


-- Requêtes SQL pour la base de données Employees

-------------------------------------------- 1
SELECT * FROM employees
where last_name ='Talmor';

-------------------------------------------- 2
SELECT * FROM employees
where gender='F' AND last_name='Talmor'

-------------------------------------------- 3
SELECT employees.gender, AVG(salaries.salary) AS salaire_moyen
FROM employees 
JOIN salaries ON employees.emp_no = salaries.emp_no
GROUP BY employees.gender;

--------------------------------------------- 4
SELECT 
    departments.dept_name, 
    COUNT(dept_emp.emp_no) AS nombre_employers, 
    AVG(salaries.salary) AS avg_salary
FROM departments 
JOIN dept_emp  ON departments.dept_no = dept_emp.dept_no
JOIN salaries  ON dept_emp.emp_no = salaries.emp_no
GROUP BY departments.dept_name;

--------------------------------------------- 5
SELECT emp_no,
       first_name,
       last_name,
       hire_date AS Seniority_date,
       AGE(CURRENT_DATE, hire_date) AS Seniority
FROM employees;

--------------------------------------------- 6