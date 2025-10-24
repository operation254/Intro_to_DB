#!/usr/bin/python3
"""
This script connects to the MySQL server and creates
the `alx_book_store` database if it does not exist.
"""

import mysql.connector
from mysql.connector import Error

try:
    # Connect to the MySQL server
    connection = mysql.connector.connect(
        host='localhost',
        user='root',
        password='123123'  # 🔒 replace this with your actual MySQL password
    )

    if connection.is_connected():
        cursor = connection.cursor()
        cursor.execute("CREATE DATABASE IF NOT EXISTS alx_book_store;")
        print("Database 'alx_book_store' created successfully!")

except mysql.connector.Error as err:
    print(f"Error: {err}")

finally:
    if 'connection' in locals() and connection.is_connected():
        cursor.close()
        connection.close()
        print("MySQL connection is closed.")
