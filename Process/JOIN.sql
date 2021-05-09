SELECT *
FROM employees A , departments B -- 각 테이블의 이름을 A,B 로 지정
WHERE A.department_id = B.department_id ; 

-- employees 테이블과 departments 테이블과 locations 테이블을 조인하겨
-- 각 직원이 어느 부서에 소가는지와 부서의 소재지가 어디인지 조회
SELECT A.employee_id , A.department_id, B.department_id, C.location_id, C.city
FROM employees A, departments B, locations C 
WHERE A.department_id = B.department_id 
AND B.location_id = C.location_id ; 

-- employees 테이블과 departments 데이블을 department_id 로 외부조인
-- 이때에 employee_id 를 기준으로 하고싶을떄에는 어떻게 해야할까?
SELECT a.employee_id,a.first_name, b.department_id
FROM employees A, departments B
WHERE a.department_id = b.department_id(+) ;


-- employees 테이블을 자체 조인하여, 직원별 담당자가 누구인지 조회
SELECT A.employee_id, A.first_name, A.last_name, A.manager_id
FROM   employees A, employees B
WHERE  A.manager_id = B.employee_id
ORDER BY A.employee_id;

-- employees 테이블의 department_id 집합과
-- department 테이블의 department_id 집합을 
-- UNION 연산자를 이용해 합쳐라
SELECT department_id
FROM employees 
UNION

SELECT department_id
FROM departments ;
 
-- employees 테이블의 department_id 집합과
-- department 테이블의 department_id 집합을 
-- UNION 연산자를 이용해 합쳐라
SELECT department_id
FROM employees 
INTERSECT

SELECT department_id
FROM departments ;

-- department 테이블의 department_id 집합과
-- employees 테이블의 department_id 집합을 
-- MINUS 연산자를 이용해 계산하여라.
SELECT department_id
FROM departments
MINUS 
SELECT department_id
FROM employees ;