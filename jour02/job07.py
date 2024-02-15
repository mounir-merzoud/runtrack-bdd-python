import mysql.connector

class Employe:
    def __init__(self, user, password, host, database):
        self.cnx = mysql.connector.connect(user=user, password=password,
                                            host=host, database=database)
    
    def insert_employe(self, nom, prenom, salaire, id_service):
        cursor = self.cnx.cursor()
        insert_query = "INSERT INTO employe (nom, prenom, salaire, id_service) VALUES (%s, %s, %s, %s)"
        cursor.execute(insert_query, (nom, prenom, salaire, id_service))
        self.cnx.commit()
        cursor.close()
    
    # Ajoutez les autres méthodes pour les opérations CRUD ici

    def close_connection(self):
        self.cnx.close()

# Exemple d'utilisation de la classe Employe
employe_manager = Employe(user='root', password='Mounir-1992',
                          host='localhost', database='Travail')
employe_manager.insert_employe('Dupont', 'Jean', 3000, 1)
employe_manager.close_connection()
