SELECT COUNT(salary)
FROM employees  ; 

-- employees 테이블에서 salary의 합계와 평균을 구해보자.
SELECT AVG(salary) 평균,
       SUM(salary) 합계
FROM employees ;

-- Null 값을 포함해서 평균을 계산
SELECT AVG(NVL(salary,0))
FROM employees ;

-- employees 테이블에서 salary 의 최대값 / 최소값을 출력
SELECT MIN(salary)
FROM employees ; 

-- employees 테이블에서, employee_id 가 10 이상인 직원에 대해 job_id 별로 그룹화 하여서 
-- job_id 별 총 급여와, job_id 별 평균 급여를 구하고
-- job_id 별 총 급여를 기준으로 내림차순 정렬
SELECT job_id 직무 , SUM(salary) 봉급합 , AVG(salary) 봉급평균
FROM employees
WHERE employee_id >= 10 
GROUP BY job_id
ORDER BY 봉급합 desc;

-- employees 테이블에서, job_id 로 먼저 grouping 후에 manager_id 로 grouping 
-- 그 이후에 봉급의 평균 출력 
SELECT job_id,
        manager_id,
        AVG(salary)
FROM employees
GROUP BY job_id, manager_id ;


-- employees 테이블에서, employee_id 가 10 이상인 직원에 대해서, job_id 별로 그룹화 하여 총 급여 계산
-- 이 떄에 총 급여가 30000 보다 큰 값만 출력하자. 
-- 결과는 내림차순
SELECT  job_id 직업코드,
        SUM(salary) 봉급합
FROM employees
WHERE employee_id >= 10
GROUP BY job_id
HAVING SUM(salary) >= 30000
ORDER BY 봉급합 DESC; 

