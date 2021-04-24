-- employees 테이블에서 last_name 을 소문자/ 대문자로 출력하고, email의 첫번쨰 문자는 대문자로 출력
SELECT last_name,
       LOWER(last_name),
       UPPER(last_name),
       INITCAP(email)
FROM employees;

-- employees 테이블에서 job_id 데이터값의 첫쨰 자리부터 시작해 2개 문자 출력
SELECT SUBSTR(job_id,1,2)
FROM employees ; 

-- employees 테이블에서 job_id 문자열에 ACCOUNT 가 있으면 ACT 로 변환해 출력
SELECT replace(job_id,'ACCOUNT','ACT')
FROM employees ; 

-- employees 테이블에서 job_id의 데이터 값에 대해 
-- 왼쪽 방향부터 F 문자를 만나면 삭제
-- 그리고 오른쪽 방향부터 T 문자를 만나면 삭제한 job_id 출력
SELECT RTRIM(LTRIM(job_id,'F'),'T')
FROM employees ; 

