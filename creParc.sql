-- On indique qu'on souhaite utiliser une Database spécifique nommée "mydb"
USE mydb;

-- On créé la table "Segment" munie de ses différents champs 
CREATE TABLE Segment (
    indIP VARCHAR(11),
    nomSegment VARCHAR(20) NOT NULL,
    etage TINYINT(1),
    PRIMARY KEY (indIP)
);

-- On créé la table "Salle" munie de ses différents champs 
CREATE TABLE Salle (
    nSalle VARCHAR(7),
    nomSalle VARCHAR(20) NOT NULL,
    nbPoste TINYINT(2),
    indIP VARCHAR(11),
    PRIMARY KEY(nSalle)
);

-- On créé la table "Poste" munie de ses différents champs 
CREATE TABLE Poste (
    nPoste VARCHAR(7),
    nomPoste VARCHAR(20) NOT NULL,
    indIP VARCHAR(11),
    ad VARCHAR(3) CHECK (ad >= 0 AND ad <= 255),
    typePoste VARCHAR(9),
    nSalle VARCHAR(7),
    PRIMARY KEY(nPoste)
);

-- On créé la table "Logiciel" munie de ses différents champs 
CREATE TABLE Logiciel (
    nLog VARCHAR(5),
    nomLog VARCHAR(20),
    dateAch  dateTIME,
    version VARCHAR(7),
    typeLog VARCHAR(9),
    prix DECIMAL(6,2) CHECK(prix >= 0),
    PRIMARY KEY(nLog)
);

-- On créé la table "Installer" munie de ses différents champs 
CREATE TABLE Installer (
    nPoste VARCHAR(7),
    nLog VARCHAR(5),
    numIns INTEGER(5),
    dateIns TIMESTAMP DEFAULT CURRENT_TIMESTAMP(),
    delai SMALLINT, 
    PRIMARY KEY(numIns)
);

-- On créé la table "Types" munie de ses différents champs 
CREATE TABLE Types (
    typeLP VARCHAR(9),
    nomType VARCHAR(20),
    PRIMARY KEY(typeLP)
);