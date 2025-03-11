import mysql.connector

cnx = mysql.connector.connect(user='root',password='HiPpOlYtE24',
                                host='127.0.0.1',
                                database='LaPlateforme')
cursor=cnx.cursor()
query=("SELECT superficie FROM etage;")
cursor.execute(query)
Superficies = cursor.fetchall()
resultat=0
for superficie in Superficies:
    resultat+=superficie[0]
print(f"La superficie totale de la Plateforme est de {resultat} m²")
cnx.close()
cursor.close()
