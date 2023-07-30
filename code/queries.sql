--TRIGGERS

--Trigger before insert to check if empsalary is a valid value
CREATE OR REPLACE FUNCTION empsalary() 
	RETURNS TRIGGER AS $emp_salary$
   	BEGIN
	--Checking if the emp salary is greater than 0 or not
    	IF NEW.E_Salary <= 0 THEN
	    RAISE EXCEPTION 'emp salary cannot be negative or null %',NEW.E_ID;
    	END IF;
	RETURN NEW;
   END;
$emp_salary$ LANGUAGE plpgsql;

CREATE TRIGGER emp_sal BEFORE INSERT ON EMPLOYEE
FOR EACH ROW EXECUTE PROCEDURE empsalary();


--checking if the instalment is overdue
CREATE OR REPLACE FUNCTION due()
	RETURNS TRIGGER AS $overdue$
	BEGIN
	--Checking if the pay date is less than the due date 
	IF  NEW.pay_date - NEW.due_date > 0 THEN
	RAISE NOTICE 'The instalment is overdue';
	END IF;
RETURN NEW;
   END;
$overdue$ LANGUAGE plpgsql;

CREATE TRIGGER overdue AFTER INSERT ON INSTALMENTS
FOR EACH ROW EXECUTE PROCEDURE due();


--checking the instalment number
CREATE OR REPLACE FUNCTION instal_no()
	RETURNS TRIGGER AS $instal_no$
	BEGIN
	--Checking the instal number
		IF NEW.I_No > 5 THEN
		RAISE EXCEPTION 'Cannot have more than 5 instalments % %',NEW.C_ID,NEW.P_ID;
		END IF;
	RETURN NEW;
   END;
$instal_no$ LANGUAGE plpgsql;

CREATE TRIGGER instal_no BEFORE INSERT ON INSTALMENTS
FOR EACH ROW EXECUTE PROCEDURE instal_no();


--Exhibition Start_date should be less than End date
CREATE OR REPLACE FUNCTION check_date()
	RETURNS TRIGGER AS $check_$
	BEGIN
	--Checking if the pay date is less than the due date 
	IF NEW.Ex_start_date - NEW.Ex_end_date  > 0 THEN
	RAISE EXCEPTION 'The start date cannot be greater than end date';
	END IF;
 RETURN NEW;
   END;
$check_$ LANGUAGE plpgsql;

CREATE TRIGGER check_ BEFORE INSERT ON EXHIBITION
FOR EACH ROW EXECUTE PROCEDURE check_date();

--to view all the triggers
--select * from pg_trigger;

--COMPLEX QUERIES

--to get the emails of all potential customers 
--who have already bought a painting
select distinct c.c_lname,c.c_email
from customer as c
where exists (select p.c_id  
			from painting as p
			where c.c_id = p.c_id);

--to get the details of the paintings 
--that have been put up in an auction
-- and sold 
select distinct p.p_name,p.p_price
from painting as p, auction as a
where exists (select a.p_id  
			from auction as a
			where a.p_id=p.p_id and a.price_fetched is NOT NULL);

--to get the count of the instalments paid by a customer for each painting
select c_id,p_id,
		count(c_id),
		sum(amount)
from instalments
group by c_id,p_id
order by c_id;

--to get the details of  of all paintings 
-- that are exhibited 
select p.p_id,p.p_name,p.p_price,ex.ex_id
from painting as p
	inner join exhibited_in as ex
		on ex.p_id = p.p_id;

--CURSORS

--to get artists who have a painting
create or replace function get_artist_with_painting()
returns void
language plpgsql
as
$$
declare
	c1 cursor for
	select * 
	from artist as a
	where exists (select p.a_id  
			from painting as p
			where p.a_id = a.a_id);

	r1 record;

begin 
	open c1;
	fetch first from c1 into r1;
	raise notice 'First Name: %',r1.a_fname;
	raise notice 'Last Name: %',r1.a_lname;
	raise notice 'Email: %',r1.a_email;

	close c1;
end;
$$;

--to print employees given a department number
create or replace function get_employee(dept_no int)
returns void
language plpgsql
as
$$
declare
	c1 cursor for
	select * 
	from employee e 
	where e.d_no = dept_no;
	r1 record;

begin 
	open c1;
	fetch first from c1 into r1;
	raise notice 'First Name: %',r1.e_fname;
	raise notice 'Last Name: %',r1.e_lname;
	raise notice 'Email: %',r1.e_salary;
	close c1;
end;
$$;

--without a cursor
create or replace function get_employee_by_dept(dept_no int)
	returns table(first_name varchar, last_name varchar, salary float)
	as
	$$
	BEGIN
 	RETURN QUERY
		
		select e.e_fname,e.e_lname,e.e_salary
		from employee e 
		where e.d_no = dept_no;

	END; $$
	language plpgsql;



	



	