#!/usr/bin/python
import psycopg2
def add_project(name, num,location,dnum):

    conn = None
    try:
        # connect to the PostgreSQL database
        conn = psycopg2.connect(host="localhost",database="companydb",user="postgres",password="admin123")
        # create a cursor object for execution
        cur = conn.cursor()

        # call a stored procedure
        cur.execute("CALL add_new_project(%s,%s,%s,%s)",(name,num,location,dnum))

        # commit the transaction
        conn.commit()

        # close the cursor
        cur.close()
    except (Exception, psycopg2.DatabaseError) as error:
        print(error)
    finally:
        if conn is not None:
            conn.close()

if __name__ == '__main__':
    add_project('Realogy3',23,'banglore',4)
