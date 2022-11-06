/* 
La funzione finestra NTILE divide le righe ordinate nella partizione nel numero specificato di gruppi 
classificati di dimensioni uguali possibili e restituisce il gruppo in cui cade una determinata riga.
*/
SELECT 
    emp_no, 
    department, 
    salary,
    NTILE(4) OVER(PARTITION BY department ORDER BY salary DESC) AS dept_salary_quartile,
	NTILE(4) OVER(ORDER BY salary DESC) AS salary_quartile
FROM employees;