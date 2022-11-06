/*
Dato un insieme ordinato di righe, 
FIRST_VALUE restituisce il valore dell'espressione specificata rispetto alla prima riga nel frame della finestra, 
LAST_VALUE restituisce il valore dell'espressione rispetto all'ultima riga nel frame.
*/
SELECT 
    emp_no, 
    department, 
    salary,
    FIRST_VALUE(emp_no) OVER(PARTITION BY department ORDER BY salary DESC) as highest_paid_dept,
    LAST_VALUE(emp_no) OVER(ORDER BY salary DESC) as lowest_paid_overall,
    FIRST_VALUE(emp_no) OVER(ORDER BY salary DESC) as highest_paid_overall
FROM employees;