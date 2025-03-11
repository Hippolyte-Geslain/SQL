import mysql.connector

cnx = mysql.connector.connect(user='root',password='HiPpOlYtE24',
                                host='127.0.0.1',
                                database='LaPlateforme')
cursor=cnx.cursor()
query=("SELECT nom,capacite FROM salle;")
cursor.execute(query)
CapaciteSalles = cursor.fetchall()
for ligne in CapaciteSalles:
    print(ligne)
cnx.close()
cursor.close()