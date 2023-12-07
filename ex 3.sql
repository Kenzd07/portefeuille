#------------------------------------------------------------
#        Script MySQL.
#------------------------------------------------------------


#------------------------------------------------------------
# Table: Adhérent
#------------------------------------------------------------

CREATE TABLE Adherent(
        Code_clients Varchar (50) NOT NULL ,
        nom          Varchar (50) NOT NULL ,
        prenom       Varchar (50) NOT NULL ,
        adresse      Varchar (50) NOT NULL
	,CONSTRAINT Adherent_PK PRIMARY KEY (Code_clients)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Rayon
#------------------------------------------------------------

CREATE TABLE Rayon(
        code_rayon     Varchar (50) NOT NULL ,
        Intitule_rayon Varchar (50) NOT NULL
	,CONSTRAINT Rayon_PK PRIMARY KEY (code_rayon)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Ouvrage
#------------------------------------------------------------

CREATE TABLE Ouvrage(
        code_ouvrage Varchar (50) NOT NULL ,
        Titre        Varchar (50) NOT NULL ,
        Date_emrpunt Date NOT NULL ,
        Date_retour  Date NOT NULL ,
        code_rayon   Varchar (50) NOT NULL ,
        Code_clients Varchar (50) NOT NULL
	,CONSTRAINT Ouvrage_PK PRIMARY KEY (code_ouvrage)

	,CONSTRAINT Ouvrage_Rayon_FK FOREIGN KEY (code_rayon) REFERENCES Rayon(code_rayon)
	,CONSTRAINT Ouvrage_Adherent0_FK FOREIGN KEY (Code_clients) REFERENCES Adherent(Code_clients)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Auteur
#------------------------------------------------------------

CREATE TABLE Auteur(
        Code_Auteur   Varchar (50) NOT NULL ,
        Nom_Auteur    Varchar (50) NOT NULL ,
        Prenom_Auteur Varchar (50) NOT NULL
	,CONSTRAINT Auteur_PK PRIMARY KEY (Code_Auteur)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Mot_Clés
#------------------------------------------------------------

CREATE TABLE Mot_Cles(
        code_mot Varchar (50) NOT NULL ,
        mot      Varchar (50) NOT NULL
	,CONSTRAINT Mot_Cles_PK PRIMARY KEY (code_mot)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: est l'auteur de 
#------------------------------------------------------------

CREATE TABLE est_l_auteur_de(
        code_ouvrage Varchar (50) NOT NULL ,
        Code_Auteur  Varchar (50) NOT NULL
	,CONSTRAINT est_l_auteur_de_PK PRIMARY KEY (code_ouvrage,Code_Auteur)

	,CONSTRAINT est_l_auteur_de_Ouvrage_FK FOREIGN KEY (code_ouvrage) REFERENCES Ouvrage(code_ouvrage)
	,CONSTRAINT est_l_auteur_de_Auteur0_FK FOREIGN KEY (Code_Auteur) REFERENCES Auteur(Code_Auteur)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: index
#------------------------------------------------------------

CREATE TABLE index(
        code_ouvrage Varchar (50) NOT NULL ,
        code_mot     Varchar (50) NOT NULL
	,CONSTRAINT index_PK PRIMARY KEY (code_ouvrage,code_mot)

	,CONSTRAINT index_Ouvrage_FK FOREIGN KEY (code_ouvrage) REFERENCES Ouvrage(code_ouvrage)
	,CONSTRAINT index_Mot_Cles0_FK FOREIGN KEY (code_mot) REFERENCES Mot_Cles(code_mot)
)ENGINE=InnoDB;

