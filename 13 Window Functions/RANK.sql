/*
La funzione finestra RANK determina la classificazione di un valore in un gruppo di valori, 
in base all'espressione ORDER BY nella clausola OVER
*/

SELECT 
    emp_no,
    department,
    salary,
    RANK() OVER(PARTITION BY department ORDER BY salary DESC) AS dept_salary_rank,
    RANK() OVER(ORDER BY salary DESC) AS ovr_salary_rank
FROM employees
ORDER BY department;
