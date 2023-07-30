#!/usr/bin/python
import psycopg2
#from config import config
def get_projects(d_id):
    """ get project provided by department with id """
    conn = None
    try:
       
        # connect to the PostgreSQL database
        conn = psycopg2.connect(host="localhost",database="gallery",user="postgres",password="dee!!828")
        # create a cursor object for execution
        cur = conn.cursor()
        # another way to call a function
        
        cur.callproc("get_projects_by_department", (d_id,))
        # process the result set
        row = cur.fetchone()
        while row is not None:
            print(row)
            row = cur.fetchone()
        # close the communication with the PostgreSQL database server
        cur.close()
    except (Exception, psycopg2.DatabaseError) as error:
        print(error)
    finally:
        if conn is not None:
            conn.close()


if __name__ == '__main__':
    get_projects (4)
