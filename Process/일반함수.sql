-- NULL 이 포함되어있을떄, 곱하면 어떻게 될까? 
SELECT salary * commission_pct , salary , commission_pct
FROM employees ;

-- employees 테이블에서, salary 에 commision_pct 를 곱하되
-- commision_pct 가 null 일 떄에는 1 로 치환하여 commision_pct 를 곱한 결과를 출력

SELECT salary * NVL(commission_pct,1) 
FROM employees ;

-- employees 테이블에서 first_name , last_name , department_id, salary 를 출력하되
-- department_id 가 60 인 경우에는 10% 인상을 출력 나머지 경우에는 미완성을 출력
SELECT first_name, 
       last_name,
       department_id,
       salary 원_봉급,
       DECODE(department_id, 60, '10%인상' ,'아니 나는?') 조정된_봉급
FROM employees ;

-- employees 테이블에서 job_id 가 IT_PROG 라면 employee_id, first_name, last_name, salary 출력하되
-- salary 가 9000 이상이면 '상위급여' , 6000~8999 사이면 '중위급여' 그 외는 '하위급여' 라고 출력
SELECT employee_id, first_name , last_name , salary,
        CASE 
            WHEN salary >= 9000 THEN '상위급여'
            WHEN salary between 6000 and 8999 then '중위급여'
            ELSE '하위급여'
        END AS 급여등급
FROM employees 
WHERE job_id = 'IT_PROG' ;

-- RANK, DENSE_RANK , ROW_NUMBER 함수를 각각 이용하여, employees 테이블의 Salary 값이 높은 순서대로 순위를 매겨 출력
SELECT salary,
       RANK() OVER (ORDER BY salary) RANK,
       DENSE_RANK() OVER (ORDER BY salary) DENSE_RANK ,
       ROW_NUMBER() OVER (ORDER BY salary) ROW_NUMBER
FROM employees ;

--RANK 를 이용해, employees 직원 에 속한 department_id 안에서, salary 값이 높은 순서대로 순위를 매겨 출력
SELECT A.emplo


