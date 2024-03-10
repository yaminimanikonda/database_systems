import mysql.connector                #here we import the mysqlconnector

def select(conn,query):
    cursor = conn.cursor()      # Create a Cursor object
    cursor.execute(query)       # Execute the query
    results = [] 
    for row in cursor.fetchall():      # Get all the rows present the database
        results.append(row)
    cursor.close()
    return results
def execute(conn,query):             # update, delete, and insert
    cursor = conn.cursor()           # Create a Cursor object
    cursor.execute(query)            # Execute the query
    conn.commit()
def show(rows):
    for row in rows:
        print(row)

try:
    conn = mysql.connector.connect(
        user="root",                # our username
        password="2133",            #enter your MySQL password
        host="localhost",             # db server, can be a remote one
        database="ds_main")            # database we are connecting to
except mysql.connector.Error as err:
    print("Cannot connect.")               # here is to show that not connected to database error message
    exit()

print("Select a record")
rows = select(conn,"select * from job_history where employee_id = '200'")
show(rows)
print("Now delete a record")
execute(conn,"DELETE from job_history where id=2")            #deleted the one of the inputs
print("Data deleted successfully")                             #here is successfull message
rows = select(conn,"select * from job_history")             #here is the code for pull data from the database
show(rows)
