CREATE DATABASE hotelExepress;

USE hotelExepress;

CREATE TABLE client
(id_client INT PRIMARY KEY NOT NULL auto_increment,
nom VARCHAR(50) NOT NULL,
prenom VARCHAR(50) NOT NULL,
naissance DATE NOT NULL,
adress VARCHAR(255) NOT NULL,
pays VARCHAR(50) NOT NULL,
nationalite VARCHAR(50) NOT NULL,
numIdentite VARCHAR(20) NOT NULL,
email VARCHAR(255) NOT NULL,
numTel VARCHAR(50) NOT NULL
);

CREATE TABLE chambre
(id_chambre INT PRIMARY KEY NOT NULL auto_increment,
category INT NOT NULL
);

CREATE TABLE category
(id INT PRIMARY KEY NOT NULL auto_increment,
nom VARCHAR(50) NOT NULL,
description VARCHAR(255) NOT NULL,
prix INT NOT NULL
);

CREATE TABLE paiement
(id_paiement INT PRIMARY KEY NOT NULL auto_increment,
datePaiement DATE NOT NULL,
heurePaiement TIME NOT NULL,
numCarte INT NOT NULL,
nomBanque VARCHAR(50) NOT NULL,
numTransaction INT NOT NULL,
total INT NOT NULL
);

CREATE TABLE reservation
(id_client INT NOT NULL,
id_chambre INT NOT NULL,
date_entree DATE NOT NULL,
date_sortie DATE NOT NULL,
FOREIGN KEY (id_client) REFERENCES client(id_client) ON DELETE CASCADE, 
FOREIGN KEY (id_chambre) REFERENCES chambre(id_chambre) ON DELETE CASCADE
);

INSERT INTO client (nom , prenom, naissance, adress , pays, nationalite, numIdentite, email, numTel)
VALUES ("brunay","alice","1995-10-20","1 boulevard de la canebiere","France","français","147258369","alice.brunay@gmail.com","+33616151412"),
("ricard","roger","1998-11-21","5 boulevard de la canebiere","allemagne","allemand","147258368","alice.brunad@gmail.com","+33616151413"),
("colliard","daniel","1991-12-16","7 boulevard de la canebiere","France","français","147258378","alice.brunas@gmail.com","+33616151414"),
("churo","michel","1987-12-15","9 boulevard de la canebiere","italie","italien","14725837","alice.brunaq@gmail.com","+33616151415"),
("brabart","axel","1950-12-14","11 boulevard de la canebiere","France","français","147258356","alice.brunap@gmail.com","+33616151416"),
("jallart","alexandre","1956-12-13","13 boulevard de la canebiere","arabie-saoudite","saoudien","147258323","alice.brunao@gmail.com","+33616151417"),
("sator","romain","1979-12-12","15 boulevard de la canebiere","France","français","147258312","alice.brunai@gmail.com","+33616151418"),
("hadji","paul","1946-12-11","17 boulevard de la canebiere","algerie","algerien","147258345","alice.brunau@gmail.com","+33616151419"),
("stroot","audrey","1954-12-10","19 boulevard de la canebiere","France","français","147258123","alice.brunat@gmail.com","+33616151420"),
("darnot","mateo","1948-12-09","21 boulevard de la canebiere","espagne","espagnol","147258124","alice.brunar@gmail.com","+33616151421"),
("picard","hippolyte","1979-12-08","23 boulevard de la canebiere","France","français","147258125","alice.brunae@gmail.com","+33616151422"),
("halib","emmanuelle","1969-12-07","25 boulevard de la canebiere","portugal","portugais","147258126","alice.brunaz@gmail.com","+33616151423"),
("marceau","emmanuel","1978-12-06","27 boulevard de la canebiere","usa","americain","147258361","alice.brunaa@gmail.com","+33616151424"),
("gainsbroug","jerome","1989-12-05","29 boulevard de la canebiere","France","français","147258362","alice.brunag@gmail.com","+33616151425"),
("hallyday","gaël","1997-12-04","31 boulevard de la canebiere","mexique","mexicain","147258364","alice.brunam@gmail.com","+33616151426"),
("jackson","anne","1997-12-03","33 boulevard de la canebiere","France","français","147258360","alice.brunal@gmail.com","+33616151427"),
("prevet","mohammed","1974-12-02","35 boulevard de la canebiere","maroc","français","147258300","alice.brunai@gmail.com","+33616151428");

INSERT INTO category (nom, description, prix)
VALUES ("base","lorem",25),
("double","lorem",35),
("superieure","lorem",50),
("superieurDouble","lorem",70),
("luxe","lorem",120);

INSERT INTO paiement (datePaiement,heurePaiement,numTransaction,total,numCarte,nomBanque)
VALUES ("2024-12-18",12-34-01,030548,25,14725,"SG"),
("2024-12-19",12-34-01,030548,210,1472519,"SG"),
("2024-12-20",12-34-01,030548,480,1472518,"SG"),
("2024-12-21",12-34-01,030548,100,1472517,"SG"),
("2024-12-22",12-34-01,030548,350,1472516,"SG"),
("2024-12-23",12-34-01,030548,75,1472515,"SG"),
("2024-12-24",12-34-01,030548,360,1472514,"SG"),
("2024-11-18",12-34-01,030548,240,1472563,"SG"),
("2024-10-18",12-34-01,030548,140,1472562,"SG"),
("2024-09-18",12-34-01,030548,70,1472561,"SG"),
("2024-08-18",12-34-01,030548,50,1472566,"SG"),
("2024-07-18",12-34-01,030548,50,1472565,"SG"),
("2024-06-18",12-34-01,030548,35,1472564,"SG"),
("2024-04-18",12-34-01,030548,70,1472569,"SG"),
("2024-04-18",12-34-01,030548,120,1472568,"SG");

INSERT INTO chambre (category)
VALUES (1),
(1),
(1),
(2),
(1),
(5),
(2),
(3),
(4),
(5),
(2);

INSERT INTO reservation (id_chambre,id_client,date_entree,date_sortie)
VALUES (1,1,"2024-04-18","2024-04-18"),
(1,1,"2024-04-18","2024-04-18"),
(1,1,"2024-04-18","2024-04-18"),
(1,1,"2024-04-18","2024-04-18"),
(1,1,"2024-04-18","2024-04-18"),
(1,1,"2024-04-18","2024-04-18"),
(1,1,"2024-04-18","2024-04-18"),
(1,1,"2024-04-18","2024-04-18"),
(1,1,"2024-04-18","2024-04-18"),
(1,1,"2024-04-18","2024-04-18"),
(1,1,"2024-04-18","2024-04-18");

