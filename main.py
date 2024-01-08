import mysql.connector
from flask import Flask, request

app = Flask(__name__)

@app.route('/login', methods=['post'])
def login():
    username = request.form['username']
    password = request.form['password']

    # Connect to the MySQL database (replace with your database credentials)
    db = mysql.connector.connect(
        host="localhost",
        user="root",
        password="zaraarmalik",
        database="testing"
    )

    cursor = db.cursor()

    # Query the database for the user
    cursor.execute("SELECT * FROM users WHERE username = %s AND password = %s", (username, password))
    user = cursor.fetchone()

    db.close()

    if user:
        # Authentication successful
        return "Login successful"
    else:
        # Authentication failed
        return "Login failed"

if __name__ == '__main__':
    app.run(debug=True)
