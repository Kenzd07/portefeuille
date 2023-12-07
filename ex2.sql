#------------------------------------------------------------
#        Script MySQL.
#------------------------------------------------------------


#------------------------------------------------------------
# Table: categorie
#------------------------------------------------------------

CREATE TABLE categorie(
        code_cat     Varchar (50) NOT NULL ,
        intitule_cat Varchar (50) NOT NULL
	,CONSTRAINT categorie_PK PRIMARY KEY (code_cat)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: type_pièce
#------------------------------------------------------------

CREATE TABLE type_piece(
        code_type_piece Int  Auto_increment  NOT NULL ,
        code_cat        Varchar (50) NOT NULL
	,CONSTRAINT type_piece_PK PRIMARY KEY (code_type_piece)

	,CONSTRAINT type_piece_categorie_FK FOREIGN KEY (code_cat) REFERENCES categorie(code_cat)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Pieces
#------------------------------------------------------------

CREATE TABLE Pieces(
        code_pieces     Varchar (50) NOT NULL ,
        etat            Varchar (50) NOT NULL ,
        date_receipt    Date NOT NULL ,
        code_type_piece Int NOT NULL
	,CONSTRAINT Pieces_PK PRIMARY KEY (code_pieces)

	,CONSTRAINT Pieces_type_piece_FK FOREIGN KEY (code_type_piece) REFERENCES type_piece(code_type_piece)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Marque
#------------------------------------------------------------

CREATE TABLE Marque(
        code_marque Varchar (50) NOT NULL ,
        nom_marque  Varchar (50) NOT NULL
	,CONSTRAINT Marque_PK PRIMARY KEY (code_marque,nom_marque)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: modèle
#------------------------------------------------------------

CREATE TABLE modele(
        code_modele  Varchar (50) NOT NULL ,
        nom_modele   Varchar (50) NOT NULL ,
        annee_modele Varchar (50) NOT NULL ,
        code_marque  Varchar (50) NOT NULL ,
        nom_marque   Varchar (50) NOT NULL
	,CONSTRAINT modele_PK PRIMARY KEY (code_modele)

	,CONSTRAINT modele_Marque_FK FOREIGN KEY (code_marque,nom_marque) REFERENCES Marque(code_marque,nom_marque)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: convient a 
#------------------------------------------------------------

CREATE TABLE convient_a(
        code_modele     Varchar (50) NOT NULL ,
        code_type_piece Int NOT NULL
	,CONSTRAINT convient_a_PK PRIMARY KEY (code_modele,code_type_piece)

	,CONSTRAINT convient_a_modele_FK FOREIGN KEY (code_modele) REFERENCES modele(code_modele)
	,CONSTRAINT convient_a_type_piece0_FK FOREIGN KEY (code_type_piece) REFERENCES type_piece(code_type_piece)
)ENGINE=InnoDB;

