import psycopg2

class DBConnector:
    def __init__(self, connection, host, port, database, user, password):
        self.connection = connection
        self.host = host
        self.port = port
        self.database = database
        self.user = user
        self.password = password

    def connect(self):
        try:
            self.connection = psycopg2.connect(
                host=self.host,
                port=self.port,
                database=self.database,
                user=self.user,
                password=self.password
            )
            print("Connection to the database established successfully.")
        except Exception as e:
            print(f"Error connecting to the database: {e}")

    def execute_prepared_query(self, query):
        if self.connection is None:
            print("No database connection. Please connect first.")
            return
        try:
            cursor = self.connection.cursor()
            cursor.execute(query)
            results = cursor.fetchall()
            cursor.close()
            return results
        except Exception as e:
            print(f"Error executing query: {e}")
        
        