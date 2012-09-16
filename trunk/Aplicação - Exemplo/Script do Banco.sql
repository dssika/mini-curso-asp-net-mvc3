CREATE DATABASE LOCADORA

USE LOCADORA
-- -----------------------------------------------------
-- Table `mydb`.`Cliente`
-- -----------------------------------------------------
CREATE  TABLE Cliente (
  idCliente INT NOT NULL ,
  Nome VARCHAR(45) NOT NULL ,
  CPF VARCHAR(11) NULL ,
  Endereco VARCHAR(100) NULL ,
  Cidade VARCHAR(45) NULL ,
  Estado VARCHAR(2) NULL ,
  Celular VARCHAR(15) NULL ,
  PRIMARY KEY (idCliente)
  );


-- -----------------------------------------------------
-- Table `mydb`.`Locacao`
-- -----------------------------------------------------
CREATE  TABLE Locacao (
  idLocacao INT NOT NULL ,
  Data_locacao DATE NOT NULL ,
  Data_Devolucao DATE NOT NULL ,
  Valor_Locacao DECIMAL(10,2) NULL ,
  Multa DECIMAL(10,2) NULL ,
  idCliente INT NOT NULL ,
  PRIMARY KEY (idLocacao) ,
  CONSTRAINT fk_Locacao_Cliente
    FOREIGN KEY (idCliente)
    REFERENCES Cliente (idCliente)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION
  );
  
CREATE INDEX fk_Locacao_Cliente  ON lOCACAO (idCliente)


-- -----------------------------------------------------
-- Table `mydb`.`Filme`
-- -----------------------------------------------------
CREATE  TABLE Filme (
  idFilme INT NOT NULL ,
  Nome VARCHAR(45) NULL ,
  Genero VARCHAR(45) NULL ,
  Preco DECIMAL(10,2) NULL ,
  idLocacao INT NOT NULL ,
  PRIMARY KEY (idFilme) ,
  CONSTRAINT fk_Filme_Locacao1
    FOREIGN KEY (idLocacao)
    REFERENCES Locacao (idLocacao)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION
	);

CREATE INDEX fk_Filme_Locacao1 ON FILME(idLocacao)