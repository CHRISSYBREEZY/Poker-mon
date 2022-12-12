# Import the MySQL connector module
import mysql.connector

# Create a connection to the MySQL server
cnx = mysql.connector.connect(
  user="<root>",
  password="<>",
  host="<10.2.2.130>",
  database="<database>"
)

# Create a cursor object to execute queries
cursor = cnx.cursor()

# Execute a SQL query
query = "SELECT * FROM <table>"
cursor.execute(query)

# Fetch and print the query results
for (column1, column2, ...) in cursor:
  print(column1, column2, ...)

# Close the cursor and connection
cursor.close()
cnx.close()
