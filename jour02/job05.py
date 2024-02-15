import mysql.connector

# Connexion à la base de données MySQL
cnx = mysql.connector.connect(user='root', password='Mounir-1992',
                              host="localhost",
                              database='LaPlateforme')
print('Connected')

try:
    # Création d'un curseur pour exécuter des requêtes SQL sur la base de données
    cursor_etage = cnx.cursor()
    
    # Exécution de la requête SQL pour calculer la superficie totale des étages
    cursor_etage.execute("SELECT SUM(superficie) FROM etage")
    superficie_totale = cursor_etage.fetchone()[0]

    # Affichage du résultat
  
    print("La superficie de La Plateforme est de {} m2".format( superficie_totale))

finally:
    cursor_etage.close()
    cnx.close()
