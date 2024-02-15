import mysql.connector

# Connexion à la base de données MySQL
cnx = mysql.connector.connect(user='root', password='Mounir-1992',
                              host="localhost",
                              database='LaPlateforme')
print('Connected')

try:
    # Création d'un curseur pour exécuter des requêtes SQL sur la base de données
    cursor = cnx.cursor()

    # Exécution de la requête SQL pour récupérer l'ensemble des étudiants
    cursor.execute("SELECT * FROM etudiant")

    # Récupération de tous les résultats de la requête
    students = cursor.fetchall()

    # Affichage des informations des étudiants en console
    for student in students:
        print("ID:", student[0])
        print("Nom:", student[1])
        print("Prénom:", student[2])
        print("Âge:", student[3])
        print("Email:", student[4])
        print("\n")

finally:
    # Fermeture du curseur et de la connexion à la base de données
    cursor.close()
    cnx.close()
