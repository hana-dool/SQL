SELECT *
FROM employees A , departments B -- �� ���̺��� �̸��� A,B �� ����
WHERE A.department_id = B.department_id ; 

-- employees ���̺�� departments ���̺�� locations ���̺��� �����ϰ�
-- �� ������ ��� �μ��� �Ұ������� �μ��� �������� ������� ��ȸ
SELECT A.employee_id , A.department_id, B.department_id, C.location_id, C.city
FROM employees A, departments B, locations C 
WHERE A.department_id = B.department_id 
AND B.location_id = C.location_id ; 

-- employees ���̺�� departments ���̺��� department_id �� �ܺ�����
-- �̶��� employee_id �� �������� �ϰ���������� ��� �ؾ��ұ�?
SELECT a.employee_id,a.first_name, b.department_id
FROM employees A, departments B
WHERE a.department_id = b.department_id(+) ;


-- employees ���̺��� ��ü �����Ͽ�, ������ ����ڰ� �������� ��ȸ
SELECT A.employee_id, A.first_name, A.last_name, A.manager_id
FROM   employees A, employees B
WHERE  A.manager_id = B.employee_id
ORDER BY A.employee_id;

-- employees ���̺��� department_id ���հ�
-- department ���̺��� department_id ������ 
-- UNION �����ڸ� �̿��� ���Ķ�
SELECT department_id
FROM employees 
UNION

SELECT department_id
FROM departments ;
 
-- employees ���̺��� department_id ���հ�
-- department ���̺��� department_id ������ 
-- UNION �����ڸ� �̿��� ���Ķ�
SELECT department_id
FROM employees 
INTERSECT

SELECT department_id
FROM departments ;

-- department ���̺��� department_id ���հ�
-- employees ���̺��� department_id ������ 
-- MINUS �����ڸ� �̿��� ����Ͽ���.
SELECT department_id
FROM departments
MINUS 
SELECT department_id
FROM employees ;