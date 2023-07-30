--setting default value of price_fetched as 0
ALTER TABLE auction 
ALTER COLUMN price_fetched SET DEFAULT 0;

ALTER TABLE auction 
ALTER COLUMN price_fetched SET NOT NULL;

-- ADDDING A FOREIGN KEY E_ID TP EXHIBITION REFREENCING EMPLOYEE E_ID
Alter table exhibition
Add column e_id varchar(30);

ALTER TABLE Exhibition
ADD CONSTRAINT e_key FOREIGN KEY (e_id) REFERENCES employee(e_id) ON DELETE CASCADE ON UPDATE CASCADE;

--changing the datatype of p_name in painting
ALTER TABLE painting
ALTER COLUMN p_name TYPE varchar(50);

--setting dob as less than 2004
alter table employee 
add constraint date check(e_dob <= '01-01-2004');

-- setting instalment amount limit to >=10000
alter table instalments
add constraint min_amt check(amount>=10000);


