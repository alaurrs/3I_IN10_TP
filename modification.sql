-- On utilise UPDATE afin de modifier les enregistrements de la table SEGMENT afin de rajouter les étages correspondants
-- La valeur du champ "etage" dépend du dernier caractère de la valeur du champ "indIP" : soit 1,2,3...
UPDATE Segment SET etage = SUBSTRING(indIP, -1);

-- On diminue de 10% le prix des logiciels de type "PCNT"
UPDATE Logiciel SET prix = prix*0.9 WHERE typeLog = "PCNT";

-- On vérifie le résultat 
SELECT * FROM Segment;
SELECT nLog, typeLog, prix FROM Logiciel;