# melakukan import mysql connector
import mysql.connector

# melakukan percobaan koneksi
conn = mysql.connector.connect(
    host="localhost",
    user="root",
    password="password1!",
    database="KARYAWAN"
)

# membuat object cursor sebagai penanda
cursor = conn.cursor()

# deklarasi SQL Query untuk memasukkan record ke DB (KARYAWAN)
insert_sql = (
    "INSERT INTO KARYAWAN (FIRST_NAME, LAST_NAME, AGE, SEX, INCOME)"
    "VALUES (%s, %s, %s, %s, %s)"
)

values = ("John", "Doe", 30, "Male", 50000)

try:
    # eksekusi SQL command
    cursor.execute(insert_sql, values)
    # melakukan perubahan (commit) pada DB
    conn.commit()
    print("Data berhasil ditambahkan")
except:
    # rollback apabila ada issue
    conn.rollback()
    print("Data gagal ditambahkan")

# menutup konesi
cursor.close()
conn.close()