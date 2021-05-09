-- employees 테이블의 last_mname 이 De Haan 인 직원과 salary 가 동일한 직원은 누가 있는지
-- 단일 행 서브쿼리를 이용해 찾아라.
SELECT *
FROM employees A
WHERE a.salary = ( SELECT salary
                   FROM employees b
                   WHERE b.last_name = 'De Haan'
                    ) ; 

-- employees 테이블에서 department_id 별로 가장 낮은 salary 가 얼마인지 찾아보라.
-- 찾아낸 salary 에 해당하는 직원이 누구인지 나타내라.
SELECT a.department_id,a.employee_id, a.salary 
FROM employees A
WHERE a.salary IN (SELECT MIN(salary)
                   FROM employees b
                   GROUP BY b.department_id
                    ) ;

-- employees 테이블에서 job_id 별로 가장 낮은 salary 가 얼마인지 찾아보자.
-- 찾아낸 job_id 별 salary 에 해당하는 직원이 누구인지 다중 열 서브쿼리를 이용하여 찾아보라.
SELECT job_id, salary , employee_id
FROM employees A 
WHERE (A.job_id , A.salary) IN (
                SELECT job_id, MIN(salary) 
                FROM employees B
                GROUP BY job_id
)  
ORDER BY salary; ; 

-- 단일행 서브쿼리 (job_id 를 뺸 상태에서 고려) 하면 어떨까요?
SELECT job_id, salary , employee_id
FROM employees A 
WHERE A.salary IN (
                SELECT MIN(salary)
                FROM employees B
                GROUP BY job_id
)  
ORDER BY salary; 

-- 직원중에서 department_name 이 IT 인 직원의 정보를 인라인 뷰 를 이용해 출력
SELECT *
FROM employees A,(SELECT department_id
                  FROM departments
                  WHERE department_name = 'IT') B
WHERE A.department_id = B.department_id ; 
                  
                  
SELECT * 
FROM departments ;

-- department 테이블에 
-- department_id : 273
-- department_name : 'GG' 
-- manager_id : 200
-- location_id : 1700 을 삽입하기
INSERT INTO departments (department_id,department_name,manager_id,location_id)
VALUES (272,'GG',200,1700) ;   
                  
SELECT * 
FROM departments ;

-- department id 가 271 ~ 273 인 값들을 모두 삭제하자.

DELETE FROM departments 
WHERE department_id