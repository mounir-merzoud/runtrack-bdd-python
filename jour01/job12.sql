INSERT INTO etudiant (nom, prenom, age, email); 
SELECT * FROM etudiant;
SELECT *FROM etudiant
WHERE nom = (SELECT nom FROM etudiant WHERE prenom = 'Gertrude')
