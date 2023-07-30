CREATE user admin with encrypted password 'admin';
GRANT all privileges on database gallery to admin;
--this stmt doesnt give select privilege, has to be given separately
-- CREATE , CONNECT ,TEMPORARY privileges are given on a database to a role
--GRANT SELECT ON ALL TABLES IN SCHEMA gallery TO admin;
--need to find a command to  grant select on all tables

CREATE user sales_manager with password 'sales_manager';
GRANT SELECT on PAINTING, ARTIST, ARTIST_PHNO,ARTIST_ADDRESS, 
CUSTOMER, CUSTOMER_ADDRESS,CUSTOMER_PhNo to sales_manager;

CREATE user finance_manager with password 'finance_manager';
GRANT SELECT,INSERT,UPDATE on PAINTING,CUSTOMER,
CUSTOMER_ADDRESS,CUSTOMER_PhNo,INSTALMENTS to finance_manager;

CREATE user exhibition_manager with password 'exhibition_manager';
GRANT SELECT,INSERT,UPDATE,DELETE on EXHIBITION, EXHIBITED_IN, AUCTION
to exhibition_manager;

CREATE user employee_manager with password 'employee_manager';
GRANT SELECT,INSERT,UPDATE,DELETE on EMPLOYEE,EMPLOYEE_ADDRESS,EMPLOYEE_PHNO
to employee_manager;

-- \du+ : to list all the users


