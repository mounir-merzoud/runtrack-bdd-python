import mysql.connector

# Connexion à la base de données MySQL
cnx = mysql.connector.connect(user='root', password='Mounir-1992',
                              host="localhost",
                              database='LaPlateforme')
print('Connected')

try:
    cursor_salle = cnx.cursor()
    cursor_salle.execute("SELECT SUM(capacite) FROM salle")
    total_capacite = cursor_salle.fetchone()[0]
    print("la capacité de toutes les salles est :", total_capacite )
finally:
    cursor_salle.close()
    cnx.close() 