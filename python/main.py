from utils.db_connector import DBConnector
from dotenv import load_dotenv
import os

load_dotenv()

def main():
    db_connector = DBConnector(
        connection=None,
        host=os.getenv("host"),
        port=os.getenv("port"),
        database="analytics",
        user=os.getenv("username"),
        password=os.getenv("password")
    )
    db_connector.connect()

    query = "SELECT * FROM analytics.mart_type_local LIMIT 100"
    results = db_connector.execute_prepared_query(query)
    print("Query Results:")
    for row in results:
        print(row)

if "__name__" == "__main__":
    main()