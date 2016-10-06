SELECT MIN (salary) FROM employees;

--직계 함수(avg/ count / max / min / sum / stddev / variance
--등 다른 컬럼과 함께 넣으면 오류 남.
--왜 나냐? avg작업을 먼저하고 다른 컬럼을 합칠때 오류 나는것. where절은 할수 가 있다.
--mysql은 되지만 의미가 없다.

  SELECT AVG (salary)
    FROM EMPLOYEES
ORDER BY AVG (salary) DESC;

--group by  [ 컬럼 별로 구분 ]

  SELECT department_id, ROUND (AVG (salary))
    FROM EMPLOYEES
GROUP BY department_id
ORDER BY AVG (salary);

  SELECT department_id,
         AVG (salary),
         MAX (salary),
         MIN (salary)
    FROM EMPLOYEES
GROUP BY department_id
ORDER BY AVG (salary);

  SELECT department_id,
         AVG (salary),
         MAX (salary),
         MIN (salary)
    FROM EMPLOYEES
--where avg(salary) > 5000 에러
--저 값이 나오는 순서가 where절 먼저 실행이 되므로 나오지 않는 평균으로 구하고 있으므로 에러가 난다. ->해별 방안 having 절
GROUP BY department_id
  HAVING AVG (salary) > 5000
ORDER BY AVG (salary);

--아래와 같은 순번으로 실행
--6.select
--1.from table
--2.where 조건
--3.group by
--4.having 조건
--5.order by
