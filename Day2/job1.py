import mysql.connector

cnx = mysql.connector.connect(user='root',password='HiPpOlYtE24',
                                host='127.0.0.1',
                                database='LaPlateforme')
cursor=cnx.cursor()
query=("SELECT * FROM etudiant;")
cursor.execute(query)
ListeEtudiants = cursor.fetchall()
for ligne in ListeEtudiants:
    print(ligne)
cnx.close()
cursor.close()