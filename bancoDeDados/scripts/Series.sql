--16.1--
CREATE TABLE SERIES (
    IDSERIE INT,
    NOME_SERIE VARCHAR(1000) NOT NULL,
    NOME_ORIGINAL_SERIE VARCHAR(1000) NOT NULL,
    PAIS_SERIE INT,
    DATA_LANCAMENTO DATE,
    ATUAL_ESTADO INT,
    PRODUTORA1 INT,
    PRODUTORA2 INT,
    PRODUTORA3 INT,
    DIRETOR1 INT,
    DIRETOR2 INT,
    DIRETOR3 INT,
    DIRETOR4 INT,
    ATOR1 INT,
    ATOR2 INT,
    ATOR3 INT,
    ATOR4 INT,
    ATOR5 INT,
    ATOR6 INT,
    ATOR7 INT,
    ATOR8 INT,
    ATOR9 INT,
    ATOR10 INT,
    GENERO_SERIE1 INT,
    GENERO_SERIE2 INT,
    GENERO_SERIE3 INT,
    GENERO_SERIE4 INT,
    GENERO_SERIE5 INT,
    SINOPSE_SERIE TEXT,
    QUANTIDADE_EPISODIOS INT,
    EU_VI ENUM("Sim",'Não'),
    MINHA_NOTA NUMERIC(4,2),
    MEU_COMENTARIO TEXT
);

--16.2--
--CONSTRAINTS--

--PRIMARY KEY--
ALTER TABLE SERIES ADD CONSTRAINT PK_SERIES
PRIMARY KEY(IDSERIE);

ALTER TABLE SERIES MODIFY IDSERIE INT AUTO_INCREMENT;

--PAIS--
ALTER TABLE SERIES ADD CONSTRAINT FK_PAIS_SERIE
FOREIGN KEY(PAIS_SERIE) REFERENCES PAISES(IDPAIS);

--ATUAL ESTADO--
ALTER TABLE SERIES ADD CONSTRAINT FK_ATUAL_ESTADO_SERIE
FOREIGN KEY(ATUAL_ESTADO) REFERENCES ATUAL_ESTADO(IDATUAL_ESTADO);

--PRODUTORAS--
ALTER TABLE SERIES ADD CONSTRAINT FK_PRODUTORA1_SERIE
FOREIGN KEY(PRODUTORA1) REFERENCES PRODUTORAS(IDPRODUTORA);

ALTER TABLE SERIES ADD CONSTRAINT FK_PRODUTORA2_SERIE
FOREIGN KEY(PRODUTORA2) REFERENCES PRODUTORAS(IDPRODUTORA);

ALTER TABLE SERIES ADD CONSTRAINT FK_PRODUTORA3_SERIE
FOREIGN KEY(PRODUTORA3) REFERENCES PRODUTORAS(IDPRODUTORA);

--DIRETORES--
ALTER TABLE SERIES ADD CONSTRAINT FK_DIRETOR1_SERIE
FOREIGN KEY(DIRETOR1) REFERENCES DIRETORES(IDDIRETOR);

ALTER TABLE SERIES ADD CONSTRAINT FK_DIRETOR2_SERIE
FOREIGN KEY(DIRETOR2) REFERENCES DIRETORES(IDDIRETOR);

ALTER TABLE SERIES ADD CONSTRAINT FK_DIRETOR3_SERIE
FOREIGN KEY(DIRETOR3) REFERENCES DIRETORES(IDDIRETOR);

ALTER TABLE SERIES ADD CONSTRAINT FK_DIRETOR4_SERIE
FOREIGN KEY(DIRETOR4) REFERENCES DIRETORES(IDDIRETOR);

--ATORES--
ALTER TABLE SERIES ADD CONSTRAINT FK_ATOR1_SERIE
FOREIGN KEY(ATOR1) REFERENCES ATORES(IDATOR);

ALTER TABLE SERIES ADD CONSTRAINT FK_ATOR2_SERIE
FOREIGN KEY(ATOR2) REFERENCES ATORES(IDATOR);

ALTER TABLE SERIES ADD CONSTRAINT FK_ATOR3_SERIE
FOREIGN KEY(ATOR3) REFERENCES ATORES(IDATOR);

ALTER TABLE SERIES ADD CONSTRAINT FK_ATOR4_SERIE
FOREIGN KEY(ATOR4) REFERENCES ATORES(IDATOR);

ALTER TABLE SERIES ADD CONSTRAINT FK_ATOR5_SERIE
FOREIGN KEY(ATOR5) REFERENCES ATORES(IDATOR);

ALTER TABLE SERIES ADD CONSTRAINT FK_ATOR6_SERIE
FOREIGN KEY(ATOR6) REFERENCES ATORES(IDATOR);

ALTER TABLE SERIES ADD CONSTRAINT FK_ATOR7_SERIE
FOREIGN KEY(ATOR7) REFERENCES ATORES(IDATOR);

ALTER TABLE SERIES ADD CONSTRAINT FK_ATOR8_SERIE
FOREIGN KEY(ATOR8) REFERENCES ATORES(IDATOR);

ALTER TABLE SERIES ADD CONSTRAINT FK_ATOR9_SERIE
FOREIGN KEY(ATOR9) REFERENCES ATORES(IDATOR);

ALTER TABLE SERIES ADD CONSTRAINT FK_ATOR10_SERIE
FOREIGN KEY(ATOR10) REFERENCES ATORES(IDATOR);

--GÊNEROS--
ALTER TABLE SERIES ADD CONSTRAINT FK_GENERO_SERIE1
FOREIGN KEY(GENERO_SERIE1) REFERENCES GENEROS(IDGENERO);

ALTER TABLE SERIES ADD CONSTRAINT FK_GENERO_SERIE2
FOREIGN KEY(GENERO_SERIE2) REFERENCES GENEROS(IDGENERO);

ALTER TABLE SERIES ADD CONSTRAINT FK_GENERO_SERIE3
FOREIGN KEY(GENERO_SERIE3) REFERENCES GENEROS(IDGENERO);

ALTER TABLE SERIES ADD CONSTRAINT FK_GENERO_SERIE4
FOREIGN KEY(GENERO_SERIE4) REFERENCES GENEROS(IDGENERO);

ALTER TABLE SERIES ADD CONSTRAINT FK_GENERO_SERIE5
FOREIGN KEY(GENERO_SERIE5) REFERENCES GENEROS(IDGENERO);