-- employees 테이블에서 salary 를 30으로 나눈 값의 소숫점 둘쨰자리에서 반올림한값
SELECT ROUND(salary/30,1)
FROM employees ; 

-- employees 테이블에서 salary 를 30으로 나눈 값의 소숫점을 2개만 표현(즉 3자리에서 절삭)
SELECT TRUNC(salary/30,2)
FROM employees ; 

SELECT * 
FROM employees ; 

--  SYNDATA 는 컴퓨터상의 현재 시간을 출력한다.
SELECT SYSDATE 오늘
FROM DUAL ; 

-- employees 테이블에서 department_id 가 100인 직원에 대해서, 오늘날짜와 hire_date 간의 개월수를 출력
SELECT MONTHS_BETWEEN(SYSDATE, hire_date)
FROM employees
WHERE department_id = 100 ;

-- employess 테이블에서 employee_id 가 100과 106 사이인 직원에 대해서
-- hire date 에 3개월을 더한값, 3개월 뺸값 출력하기
SELECT ADD_MONTHS(hire_date,3) 더하기한거,
       ADD_MONTHS(hire_date,-3) 빼기한거 
FROM employees
WHERE (employee_id >= 100) AND (employee_id <= 106)
