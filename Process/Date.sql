-- employees 테이블에서 department_id 가 100인 직원에 대해서
-- 오늘 날짜 / hire data 사이의 개월 수를 출력하라. 
SELECT MONTHS_BETWEEN(SYSDATE,hire_date)
FROM employees
WHERE department_id = 100 ; 

-- employees 테이블에서 employees_id 가 100과 106 사이인 직원의 
-- hire_date 에 3개월을 더한값을 출력
SELECT ADD_MONTHS(hire_date,3)
FROM employees
WHERE (100 <= employee_id) AND (employee_id <= 106) ; 

-- employees 테이블 에서 employee_id 가 100~106 인 직원의 
-- hire_date에서 가장 가까운 금요일의 날짜가 언제인지 
SELECT NEXT_DAY(hire_date,'금요일')
FROM employees
WHERE employee_id >= 100 AND employee_id <= 106 ; 

-- employess 테이블에서 employee)id 가 100~106 인 직원의
-- hire_date 를 기준으로 해당월의 마지막 날짜 출력
SELECT LAST_DAY(hire_date) 
FROM employees
WHERE 100 <= employee_id AND employee_id <= 106 ; 

-- employees 테이블에서, employee_id 가 100~106 사이인 직원의 hire_date 에 대해
-- 월 기준 반올림 /연 기준 절삭을 출력하라
SELECT TRUNC(hire_date,'YEAR' ),
       ROUND(hire_date,'MONTH'),
       hire_date
FROM employees
WHERE 100 <= employee_id and employee_id <= 106 ; 

SELECT TO_CHAR(SYSDATE,'YYYY/MM/DD HH:MI:SS'),
       SYSDATE
FROM DUAL ; 

SELECT TO_CHAR(SYSDATE,'"날짜" YYYY/MM/DD "시간" HH:MI:SS'),
       SYSDATE
FROM DUAL ; 
