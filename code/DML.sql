
--INSERT STATEMENTS
--Artist:
insert into artist values ('a1','john','von','neumann','john@gmail.com', 'Male');
insert into artist values('a2','joanne','','wagner','joanne@gmail.com', 'Female');
insert into artist values('a3','karen','jane','baker','karen@gmail.com', 'Female');
insert into artist values ('a4','deekshitha','','sharma','deekshitha@gmail.com', 'Female');
insert into artist values('a5','seema','singha','fernandes','seema@gmail.com', 'Female');
insert into artist values('a6','kevin','thomas','mathew','kevin@gmail.com' ,'Male');
insert into artist values('a7','karen','diane','jensen','emma@gmail.com', 'Female');
insert into artist values('a8','Edward','willis','jensen','edward@gmail.com', 'Male');

--ARTIST ADDRESS
insert into artist_address values('a1','432,Parkview Avenue,London');
insert into artist address values('a2', '#52,Baker street,LA');
insert into artist_address values('a3');
insert into artist_address values('a4','#852,RedFort Road,Delhi');
insert into artist_address values('a5', '#673 Booker Street,NYC');
insert into artist_address values('a6','#82,MG Road,Bangalore');
insert into artist_address values('a7','#998,Bandra,Mumbai');
insert into artist address,values('a8','#998,Langdown Town, Seoul');

--Artist_phno:
insert into artist_phno values('a1', 9801234567);
insert into artist_phno values('a2', 9087654310);
insert into artist_phno values('a3', 8901234567);
insert into artist_phno values('a4', 9123450679);
insert into artist_phno values('a5', 9087654123);
insert into artist_phno values('a6', 8756091237);
insert into artist_phno values('a7', 8756091237);
insert into artist_phno values('a8', 9087451236);

--Auction:
insert into auction values('p7','ex2');
insert into auction values('p7','ex8', 5000000);
insert into auction values('p3','ex5');
insert into auction values('p2','ex7',1000000);
insert into auction values('p3','ex1',600000);
insert into auction values('p4','ex3');
insert into auction values('p1','ex4');
insert into auction values('p8','ex6',8760000);

--Customer:
insert into customer values('c1','maddie',NULL,'gomez','maddie@hotmail.com','Female');
insert into customer values('c2','niels','atom','bohr','niel@hotmail.com','Male');
insert into customer values('c3','ariana','grande','butera','thunderbolt@gmail.com','Male');
insert into customer values('c4','anamika',' ','khan','ann@gmail.com', 'Female');
insert into customer values('c5','james','','cerbero','james@gmail.com', 'Male');
insert into customer values('c6','jengis','','khan','jengis@gmail.com', 'Male','');
insert into customer values('c7','carol','peter','rumero','helloworld@yahoo.com');
insert into customer values('c8','napolean','hansel','hingis','napole@gmail.com', 'Male');

--Customer_address:
insert into customer_address values('c1');
insert into customer_address values('c2', '#583,street,alabama');
insert into customer_address values('c3', '#457,7th street,NewJersey');
insert into customer_address values('c4','#49,church street,NYC');
insert into customer_address values('c5', '#984,Morata Street Madrid');
insert into customer_address values('c6');
insert into customer_address values('c7');
insert into customer_address values('c8', '#123,Doll street, Tokyo');

--Customer_phno:
insert into customer_phno values('c1', 987654321);
insert into customer_phno values('c2', 9083421091);
insert into customer_phno values('c3', 9879309872);
insert into customer_phno values('c4', 1234567890);
insert into customer_phno values('c5', 9867542310);
insert into customer_phno values('c6', 8967452310);
insert into customer_phno values('c7', 6789012345);
insert into customer_phno values('c8', 789012345);


--Department:
insert into department values(1,'Management','e2');
insert into department values(2,'Marketing','e7');
insert into department values(3,'Sales','e4');
insert into department values(4,'Maintainance','e5');

--Employee:
insert into employee values('e1','helen','','saleste','12-08-2020','Female','12-9-
2000',21,01,190000,'e2');
insert into employee values('e2','bhoomika','P','sharma','2001-08-
12','female', '1985-04-14',36,1,200000,'e2');
insert into employee values('e3','Kevin ','R ','Matthew ','2012-08-12',' Male','1990-07-13', 32,
2 ,60000,'e7')
insert into employee values('e4', 'Raman ','M', 'Chaudary', '2000-05-13 ','Male','1967-10-27', 
53,3 ,250000 , 'e4')
insert into employee values('e5','Anupama' ,'M ','Parameshwar','2015-05-13','Female','1988-
10-17 ',33 ,4 ,220000,'e5');
insert into employee values ('e6','Rahul','E ','Chawla','2019-05-19 ','Male','1995-10-17', 26 ,3, 
90000, 'e6');
insert into employee values('e7' ,'Sana','I' , 'Sheikh' ,'2009-05-13','Male' ,'1969-01-18' ,52,2, 
190000, 'e7');
insert into employee values('e8' , 'Pedri','M' ,'Coetez' ,'2019-04-01','Male ','1992-02-19', 
29,4,80000, 'e5');

-- Employee_address:
insert into employee_address values('e1',' #456,Langdon town, Bangalore');
insert into employee_address values('e2',' #46,Richmond Circle, Bangalore');
insert into employee_address values('e3',' #189,MG Road,Bangalore');
insert into employee_address values('e4',' #289,Malleshwaram,Bangalore');
insert into employee_address values('e5',' #45,Jayanagar,Bangalore');
insert into employee_address values('e6',' #91,JP Nagar,Bangalore');
insert into employee_address values('e7',' #109,Kormanagala,Bangalore');
insert into employee_address values('e8',' #760,Shivajinagar,Bangalore');

--Employee_address:
insert into employee_address values('e1',' #456,Langdon town, Bangalore');
insert into employee_address values('e2',' #46,Richmond Circle, Bangalore');
insert into employee_address values('e3',' #189,MG Road,Bangalore');
insert into employee_address values('e4',' #289,Malleshwaram,Bangalore');
insert into employee_address values('e5',' #45,Jayanagar,Bangalore');
insert into employee_address values('e6',' #91,JP Nagar,Bangalore');
insert into employee_address values('e7',' #109,Kormanagala,Bangalore');
insert into employee_address values('e8',' #760,Shivajinagar,Bangalore');

--Exhibited_in:
insert into exhibited_in values('ex1','p2');
insert into exhibited_in values('ex3','p3');
insert into exhibited_in values('ex1','p3');
insert into exhibited_in values('ex3','p4');
insert into exhibited_in values('ex7','p5');
insert into exhibited_in values('ex7','p8');
insert into exhibited_in values('ex6','p2');
insert into exhibited_in values('ex5','p7');

--Exhibition:
insert into exhibition values('ex1','12-02-2019','14-02-2019','Nature and the Wild');
insert into exhibition values('ex2','12-08-2014','19-08-2014','Firing rage');
insert into exhibition values('ex3','20-01-2020','23-01-2020','View of the mind');
insert into exhibition values('ex4','17-03-2021','23-03-2021','Fly low');
insert into exhibition values('ex5','04-07-2020','07-07-2020','Beautiful Lies');
insert into exhibition values('ex6','04-06-2018','08-06-2018','Hues of the Heart');
insert into exhibition values('ex7','13-04-2019','17-04-2019','Blank Minds');
insert into exhibition values('ex8','7-05-2017','7-05-2017','The dead drop era');

--Instalments:
insert into instalments values(1,'p1','12-02-2019','14-02-2019',10000,'c3');
insert into instalments values(2,'p1','14-02-2019','14-03-2019',10000,'c3');
insert into instalments values(1,'p5','17-07-2021','17-05-2021',30000.98,'c8');
insert into instalments values(2,'p7','14-06-2020','18-07-2020',15000,'c7');
insert into instalments values(1,'p7','14-05-2020','18-06-2020',15000,'c7');
insert into instalments values(1,'p3','24-06-2020','18-07-2020',450000,'c4');
insert into instalments values(2,'p3','27-07-2020','18-08-2020',450000,'c4');
insert into instalments values(3,'p3','31-08-2020','18-09-2020',34983,'c4');


--Painting:
insert into painting values('p1','sulking river',120000,'a2','c3');
insert into painting values('p2','the imperfectly perfect',120000,'a2','c4');
insert into painting values('p3','world though this eyes',934983,'a5','c4');
insert into painting values('p4','world without me',999999.99,'a6','c5');
insert into painting values('p5','moves like jagger',198295.643,'a1','c8');
insert into painting values('p6','STAY',69696969.69,'a4','c4');
insert into painting values('p7','my view',75587686,'a3','c7');
insert into painting values('p8','into the wild',345678,'a5','c3');



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

--CREATE STATEMENTS
--ARTIST
create table artist(
a_id varchar(30) not null unique primary key,
a_fname varchar(30) not null default 'None',
a_mname varchar(30),
a_lname varchar(30) not null default 'None',
a_email varchar(30) not null unique,
a_gender varchar(6) default 'None');

--Artist_address:
create table artist_address(
a_id varchar(30) not null unique,
a_address varchar(100),
foreign key (a_id) references artist(a_id));

--Artist_phno:
create table artist_phno(
a_id varchar(30) not null unique,
a_ph_no numeric,
foreign key (a_id) references artist(a_id));

--Auction:
create table Auction(
p_id varchar(30) not null;
ex_id varchar(20) not null unique,
price_fetched float);

--Customer:
create table customer(
c_id varchar(30) not null unique primary key,
c_fname varchar(30) not null default 'None',
c_mname varchar(30),
c_lname varchar(30) not null default 'None',
c_email varchar(30) not null unique,
c_gender varchar(6) default 'None');

--Customer_address and Customer_phno:
create table customer_address(
c_id varchar(30) not null unique,
c_address varchar(100),
foreign key (c_id) references customer(c_id));

create table customer_phno(
c_id varchar(30) not null unique,
c_ph_no numeric,
foreign key (c_id) references customer(c_id))

--Department:
create table department(
d_no int unique not null primary key,
d_name varchar(40) not null unique,
head_id varchar(30) not null unique,
foreign key (head_id) references employee mgr_ssn));

--Department:
create table department(
d_no int unique not null primary key,
d_name varchar(40) not null unique,
head_id varchar(30) not null unique));
--foreign key (head_id) references employee mgr_ssn));

--Employee:
create table employee(
e_id varchar(30) not null unique primary key,
e_fname varchar(30) not null default 'None',
e_mname varchar(30),
e_lname varchar(30) not null default 'None',
date_of_join date not null default CURRENT_DATE,
e_gender varchar(6) default 'None',
e_dob date not null default CURRENT_DATE,
e_age int not null default 0,
d_no int not null,
e_salary float not null default 0.0,
mgr_ssn varchar(30) not null));
foreign key(d_no) references department (d_no));
alter table employee add constraint check(age>=18);

--Exhibited_in:
create table exhibited_in(
ex_id not null,
p_id not null,
foreign key (ex_id) references exhibition (ex_id),
foreign key (p_id) references painting(p_id));

--Exhibition:
create table exhibition(
ex_id varchar(20) not null unique;
ex_start_date date not null default CURRENT_DATE,
ex_end_date date not null default CURRENT_DATE,
ex_name varchar(30) not null unique));

--Exhibition:
create table exhibition(
ex_id varchar(20) not null unique;
ex_start_date date not null default CURRENT_DATE,
ex_end_date date not null default CURRENT_DATE,
ex_name varchar(30) not null unique));

--Painting:
create table painting(
p_id varchar(30) not null unique primary key,
p_name varchar(30) not null unique,
p_price float not null default 0.0,
a_id varchar(30) not null,
c_id varchar(30)
foreign key(a_id ) references artist(a_id),
foreign key(c_id) references customer(c_id));

ALTER TABLE department
ADD CONSTRAINT e_key FOREIGN KEY (head_id) REFERENCES employee(e_id) ON DELETE CASCADE ON UPDATE CASCADE;