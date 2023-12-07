#------------------------------------------------------------
#        Script MySQL.
#------------------------------------------------------------


#------------------------------------------------------------
# Table: ville
#------------------------------------------------------------

CREATE TABLE ville(
        CodeVille   Varchar (50) NOT NULL ,
        CodePostale Varchar (50) NOT NULL ,
        NomVille    Varchar (50) NOT NULL
	,CONSTRAINT ville_PK PRIMARY KEY (CodeVille)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: clients
#------------------------------------------------------------

CREATE TABLE clients(
        num_clients    Varchar (50) NOT NULL ,
        nom_clients    Varchar (50) NOT NULL ,
        titre          Varchar (50) NOT NULL ,
        adresseclients Varchar (50) NOT NULL ,
        CodeVille      Varchar (50) NOT NULL
	,CONSTRAINT clients_PK PRIMARY KEY (num_clients)

	,CONSTRAINT clients_ville_FK FOREIGN KEY (CodeVille) REFERENCES ville(CodeVille)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Immeuble
#------------------------------------------------------------

CREATE TABLE Immeuble(
        NumImmeuble  Varchar (50) NOT NULL ,
        TypeImmeuble Varchar (50) NOT NULL ,
        Taxe         Varchar (50) NOT NULL ,
        CodeVille    Varchar (50) NOT NULL
	,CONSTRAINT Immeuble_PK PRIMARY KEY (NumImmeuble)

	,CONSTRAINT Immeuble_ville_FK FOREIGN KEY (CodeVille) REFERENCES ville(CodeVille)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: appartements
#------------------------------------------------------------

CREATE TABLE appartements(
        NumAppartements  Varchar (50) NOT NULL ,
        TypeAppartements Varchar (50) NOT NULL ,
        Etage            Int NOT NULL ,
        Porte            Int NOT NULL ,
        Superficie       Varchar (3) NOT NULL ,
        NumImmeuble      Varchar (50) NOT NULL
	,CONSTRAINT appartements_PK PRIMARY KEY (NumAppartements)

	,CONSTRAINT appartements_Immeuble_FK FOREIGN KEY (NumImmeuble) REFERENCES Immeuble(NumImmeuble)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: louer
#------------------------------------------------------------

CREATE TABLE louer(
        NumAppartements Varchar (50) NOT NULL ,
        num_clients     Varchar (50) NOT NULL ,
        DateSignature   Date NOT NULL ,
        DateResiliation Date NOT NULL
	,CONSTRAINT louer_PK PRIMARY KEY (NumAppartements,num_clients)

	,CONSTRAINT louer_appartements_FK FOREIGN KEY (NumAppartements) REFERENCES appartements(NumAppartements)
	,CONSTRAINT louer_clients0_FK FOREIGN KEY (num_clients) REFERENCES clients(num_clients)
)ENGINE=InnoDB;

