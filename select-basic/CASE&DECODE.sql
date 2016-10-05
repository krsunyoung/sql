--CASE & DECODE

--case
select job_id from employees;
select distinct job_id from employees;

select employee_id,job_id, salary, 
	case job_id when 'AC_ACCCOUNT' then salary+salary*0.1 
		when 'AC_MGR' then salary+salary*0.2
		when 'AD_VP' then salary+salary*0.5
		else salary
	end as "이번달 급여"  
from employees;

--위 아래 동일 decode문을 많이 쓰인다.

--decode 
select employee_id,job_id, salary, 
	DECODE(job_id , 'AC_ACCCOUNT', salary+salary*0.1 
		, 'AC_MGR' , salary+salary*0.2
		, 'AD_VP' , salary+salary*0.5
		, salary) as "이번달 급여"  
from employees;


