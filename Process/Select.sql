-- employees 테이블에서 emplyee_id 를 출력하고
-- first_name 과 last_name 을 붙여서 출력하되, 가운데 한칸을 띄어주세요.
-- 그리고 그 다음 열에는 email 을 출력하되 @company.com 문구를 붙여서 출력하세요

SELECT
    employee_id,
    first_name || ' ' || last_name,
    email || '@company.com' 
FROM employees ; 

--  employees 테이블에서 employee_id + 500 , salary * 30 을 출력하세요
SELECT
    employee_id + 500 ,
    salary * 30
FROM employees ; 

-- employees 테이블에서, id 가 100 이상인 직원 정보를 출력하라.
SELECT *
FROM employees
WHERE employee_id >= 100 ; 

-- employees 테이블에서, salary 가 15000 ~ 25000 인 직원을 호출하라
SELECT * 
FROM employees
WHERE salary BETWEEN 15000 AND 25000 ; 

-- employees 테이블에서, FIRST NAME 이 S 로 시작하는 직원 호출
SELECT *
FROM employees
WHERE first_name LIKE 'S%' ; 

-- employees 테이블의 job_id 에서, AD로 시작하면서, 뒤에 따라오는 문자열이 3자리인 데이터 출력
SELECT *
FROM employees 
WHERE job_id LIKE 'AD___' ; 

-- employees 테이블에서 manager_id 가 null 인 직원 정보를 출력하라
SELECT * 
FROM employees
WHERE manager_id IS NULL ; 

-- employees 테이블에서, salary 이 4000을 초과하며 job_id 가 IT_PROG 인 값을 조회
SELECT * 
FROM employees 
WHERE salary > 4000 
AND job_id = 'IT_PROG' ; 

-- employees 테이블에서 salary 가 4000을 초과하며 job_id 가 IT_PROG 또는 FI_ACCOUNT
SELECT *
FROM employees
WHERE salary > 100
AND (job_id = 'IT_PROG' OR job_id = 'FI_ACCOUNT') ; 

-- employees 테이블에서 manage_id 가 null 값이 아닌 직원을 조회하기
SELECT *
FROM employees
WHERE manager_id IS NOT NULL ;




