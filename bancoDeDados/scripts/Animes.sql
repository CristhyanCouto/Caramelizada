--12.1--
CREATE TABLE ANIMES (
    IDANIME INT,
    NOME_ANIME VARCHAR(1000) NOT NULL,
    NOME_ORIGINAL_ANIME VARCHAR(1000) NOT NULL,
    DATA_LANCAMENTO DATE,
    ATUAL_ESTADO INT,
    DATA_ENCERRAMENTO DATE,
    GENERO_ANIME1 INT,
    GENERO_ANIME2 INT,
    GENERO_ANIME3 INT,
    GENERO_ANIME4 INT,
    GENERO_ANIME5 INT,
    SINOPSE_ANIME TEXT,
    QUANTIDADE_EPISODIOS INT,
    EU_VI ENUM("Sim",'Não'),
    MINHA_NOTA NUMERIC(4,2),
    MEU_COMENTARIO TEXT
);

--12.2--
--CONSTRAINTS--

--PRIMARY KEY--
ALTER TABLE ANIMES ADD CONSTRAINT PK_ANIMES
PRIMARY KEY(IDANIME);

ALTER TABLE ANIMES MODIFY IDANIME INT AUTO_INCREMENT;

--ATUAL ESTADO--
ALTER TABLE ANIMES ADD CONSTRAINT FK_ATUAL_ESTADO_ANIME
FOREIGN KEY(ATUAL_ESTADO) REFERENCES ATUAL_ESTADO(IDATUAL_ESTADO);

--GÊNEROS--
ALTER TABLE ANIMES ADD CONSTRAINT FK_GENERO_ANIME1
FOREIGN KEY(GENERO_ANIME1) REFERENCES GENEROS(IDGENERO);

ALTER TABLE ANIMES ADD CONSTRAINT FK_GENERO_ANIME2
FOREIGN KEY(GENERO_ANIME2) REFERENCES GENEROS(IDGENERO);

ALTER TABLE ANIMES ADD CONSTRAINT FK_GENERO_ANIME3
FOREIGN KEY(GENERO_ANIME3) REFERENCES GENEROS(IDGENERO);

ALTER TABLE ANIMES ADD CONSTRAINT FK_GENERO_ANIME4
FOREIGN KEY(GENERO_ANIME4) REFERENCES GENEROS(IDGENERO);

ALTER TABLE ANIMES ADD CONSTRAINT FK_GENERO_ANIME5
FOREIGN KEY(GENERO_ANIME5) REFERENCES GENEROS(IDGENERO);