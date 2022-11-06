/*
LEAD
restituisce i valori per una riga a una data compensazione sotto (dopo) la riga corrente nella partizione.
*/

/*
LAG
restituisce i valori per una riga a una data compensazione sopra (prima) la riga corrente nella partizione.
*/

SELECT 
    emp_no, 
    department, 
    salary,
    salary - LAG(salary) OVER(ORDER BY salary DESC) as salary_diff
FROM employees;

SELECT 
    emp_no, 
    department, 
    salary,
    salary - LAG(salary) OVER(PARTITION BY department ORDER BY salary DESC) as dept_salary_diff
FROM employees;