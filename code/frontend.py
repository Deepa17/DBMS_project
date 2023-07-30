import psycopg2

def users_choice():
    # the user can enter a number from 1-6 to get the required data
    print("****************************************")
    print("1.Obtain the last name and the email of all the customers who have bought at least one painting")
    print("2.To get the details of all the paintings that have been sold in auction")
    print("3. To get the number of instalments and the total amount of of each customer")
    print("4. To get the paintings that have been exhibited atleast once")
    print("5.To get artists with paintings in the gallery")
    print("6.To get employees from a given department number")
    print("Press 0 to exit from the terminal")
    print("****************************************")
    #input from the terminal
    ch = int(input("Enter your query of choice: "))
    print("****************************************")
    return ch

#try except block to connect to the db
try:
    connection = psycopg2.connect (host="localhost",
    database="gallery",
    user="postgres",
    password="dee!!828")
    cursor = connection.cursor()

    #executing the queries according to the users choice
    ch=1
    while(ch!=0):
        ch = users_choice()
        if ch==1:
            query = "select distinct c.c_lname,c.c_email from customer as c where exists (select p.c_id from painting as p where c.c_id = p.c_id);"
            cursor.execute(query)
            records = cursor.fetchall()

            print("Required output:")
            print("------------------")
            for row in records:
                print("Last name:" ,row[0],end=" || ")
                print("Email: ",row[1])
                print("------------------")
        
        elif ch==2:
            query = "select distinct p.p_name,p.p_price from painting as p, auction as a where exists (select a.p_id from auction as a where a.p_id=p.p_id and a.price_fetched >0);"
            cursor.execute(query)
            records = cursor.fetchall()

            print("Required output:")
            print("------------------")
            for row in records:
                print("Painting Name:",row[0],end=" || ")
                print("Price:",row[1])
                print("------------------")  
        
        elif ch==3:
            query = "select c_id,p_id, count(c_id),sum(amount) from instalments group by c_id,p_id order by c_id;"  
            cursor.execute(query)
            records = cursor.fetchall()

            print("Required output:")
            print("------------------")
            for row in records:
                print("Customer_id:",row[0],end=" || ")
                print("Painting_id:",row[1],end=" || ")
                print("Count:",row[2],end=" || ")
                print("Total:",row[3])
                print("------------------")  
        
        
        elif ch==4:
            query = "select p.p_id,p.p_name,p.p_price,ex.ex_id from painting as p inner join exhibited_in as ex on ex.p_id = p.p_id;"  
            cursor.execute(query)
            records = cursor.fetchall()

            print("Required output:")
            print("------------------")
            for row in records:
                print("Painting_id:",row[0],end=" || ")
                print("Painting_name:",row[1],end=" || ")
                print("Painting Price:",row[2],end=" || ")
                print("Exhibition_id:",row[3])
                print("------------------")  
        
        #5 and 6 are cursors implemented as a part of the previous assignment
        elif ch==5:
            query = "select * from artist as a where exists (select p.a_id from painting as p where p.a_id = a.a_id);"
            cursor.execute(query)
            records = cursor.fetchall()

            for r1 in records:
                #print(r1)
                print("Artist_fname:",r1[1],end=" || ")
                print("Artist_lname:",r1[3],end=" || ")
                print("Email_id:",r1[5])
                print("------------------")  
        
        elif ch==6:
            dep_no = int(input("Enter department number:"))
            cursor.execute("SELECT get_employee_by_dept(%s)",[dep_no])
            rows = cursor.fetchall()
            
            print("(Employee_fname,Employee_lname,Salary)")
            print("------------------")  
            for r1 in rows:
                print(r1)

    #incase of an incorrect entry, prompt the user to enter the       
        else:
            if(ch==0):
                break
            else:
                print("Please enter the correct choice")
        
        
#if there's an error throw the exception
except (Exception, psycopg2.Error) as error:
    print("Error while fetching data from PostgreSQL", error)

finally:
    # closing database connection.
    if connection:
        cursor.close()
        connection.close()
        print("PostgreSQL connection is closed")

