import mysql.connector

# Connexion à la base de données MySQL
cnx = mysql.connector.connect(user='root', password='Mounir-1992',
                              host="localhost",
                              database='LaPlateforme')
print('Connected')

try:
    # Création d'un curseur pour exécuter des requêtes SQL sur la base de données
    cursor_etage = cnx.cursor()
    cursor_salle = cnx.cursor()

    # Exécution de la requête SQL pour récupérer l'ensemble des données de la table "etage"
    cursor_etage.execute("SELECT * FROM etage")
    result_etage = cursor_etage.fetchall()

    # Exécution de la requête SQL pour récupérer l'ensemble des données de la table "salle"
    cursor_salle.execute("SELECT * FROM salle")
    result_salle = cursor_salle.fetchall()

    # Affichage des données de la table "etage"
    print("Table etage:")
    for row in result_etage:
        print(row)

    # Affichage des données de la table "salle"
    print("\nTable salle")
    for row in result_salle:
        print(row)

finally:
    # Fermer les curseurs et la connexion à la base de données
    cursor_etage.close()
    cursor_salle.close()
    cnx.close()
