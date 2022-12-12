# Import the MySQL connector module
import mysql.connector

# Create a connection to the MySQL server
cnx = mysql.connector.connect(
  user="<root>",
  password="<>",
  host="<192.168.133.100>",
  database="<pokemon>"
)

# Create a cursor object to execute queries
cursor = cnx.cursor()

# Execute a SQL query
query = "SELECT * FROM <posisjon>"
cursor.execute(query)

"INSERT INTO posisjon (PosisjonX, PosisjonY) VALUES (" + morendin + "," + pappa + ")"

# Fetch and print the query results
for (PosisjonX, PosisjonY) in cursor:
  print(PosisjonX, PosisjonY)

# Close the cursor and connection
cursor.close()
cnx.close()
