import mysql.connector

cnx = mysql.connector.connect(user='root',password='HiPpOlYtE24',
                                host='127.0.0.1',
                                database='LaPlateforme')
cursor=cnx.cursor()
query=("SELECT capacite FROM salle;")
cursor.execute(query)
Capacites = cursor.fetchall()
resultat=0
for capacite in Capacites:
    resultat+=capacite[0]
print(f"La capacité totale des salles de la Plateforme est de {resultat}")
cnx.close()
cursor.close()