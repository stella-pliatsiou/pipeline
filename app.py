
import sqlite3

# Εσκεμμένος σφάλμα: σκληροκωδικοποιημένος κωδικός
db_password = "password123"

def insert_data(user_input):
    # SQL Injection Vulnerability
    conn = sqlite3.connect('example.db')
    cursor = conn.cursor()
    cursor.execute(f"INSERT INTO users (username) VALUES ('{user_input}')")
    conn.commit()
    conn.close()

if __name__ == "__main__":
    insert_data("admin') --")  # Δοκιμή SQL Injection
