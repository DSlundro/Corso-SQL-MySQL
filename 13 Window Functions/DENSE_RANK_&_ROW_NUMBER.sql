/*
DENSE_RANK
La funzione finestra DENSE_RANK determina la classificazione di un valore in un gruppo di valori. 
Righe con valori uguali per i criteri di classificazione ricevono la stessa classificazione.
*/

/*
ROW_NUMBER
Determina il numero ordinale di una riga corrente in un gruppo di righe, contando da 1.
Le righe con valori uguali per le espressioni ORDER BY ricevono i numeri di riga diversi in modo non deterministico.
*/

SELECT 
    emp_no, 
    department, 
    salary,
    ROW_NUMBER() OVER(PARTITION BY department ORDER BY SALARY DESC) as dept_row_number,
    RANK() OVER(PARTITION BY department ORDER BY SALARY DESC) as dept_salary_rank,
    RANK() OVER(ORDER BY salary DESC) as overall_rank,
    DENSE_RANK() OVER(ORDER BY salary DESC) as overall_dense_rank,
    ROW_NUMBER() OVER(ORDER BY salary DESC) as overall_num
FROM employees ORDER BY overall_rank;