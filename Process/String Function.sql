-- employees ���̺��� last_name �� �ҹ���/ �빮�ڷ� ����ϰ�, email�� ù���� ���ڴ� �빮�ڷ� ���
SELECT last_name,
       LOWER(last_name),
       UPPER(last_name),
       INITCAP(email)
FROM employees;

-- employees ���̺��� job_id �����Ͱ��� ù�� �ڸ����� ������ 2�� ���� ���
SELECT SUBSTR(job_id,1,2)
FROM employees ; 

-- employees ���̺��� job_id ���ڿ��� ACCOUNT �� ������ ACT �� ��ȯ�� ���
SELECT replace(job_id,'ACCOUNT','ACT')
FROM employees ; 

-- employees ���̺��� job_id�� ������ ���� ���� 
-- ���� ������� F ���ڸ� ������ ����
-- �׸��� ������ ������� T ���ڸ� ������ ������ job_id ���
SELECT RTRIM(LTRIM(job_id,'F'),'T')
FROM employees ; 

