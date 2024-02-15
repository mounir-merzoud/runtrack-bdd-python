import mysql.connector

# Connexion à la base de données MySQL
cnx = mysql.connector.connect(user='root', password='Mounir-1992',
                              host="localhost",
                              database='LaPlateforme')
print('Connected')

try:
    # Création d'un curseur pour exécuter des requêtes SQL sur la base de données
    cursor_salle = cnx.cursor()
    cursor_salle.execute("SELECT nom, capacite FROM salle")
    result_salle = cursor_salle.fetchall()
    print("\nTable salle")
    # Afficher les résultats dans le format demandé
    for row in result_salle:
        print(row[0], row[1])

finally:
    cursor_salle.close()
    cnx.close()
