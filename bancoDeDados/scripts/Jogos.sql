--14.1--
CREATE TABLE JOGOS (
    IDJOGO INT,
    NOME_JOGO VARCHAR(1000) NOT NULL,
    DATA_LANCAMENTO DATE,
    ESTUDIO INT,
    PLATAFORMA INT,
    GENERO_JOGO1 INT,
    GENERO_JOGO2 INT,
    GENERO_JOGO3 INT,
    GENERO_JOGO4 INT,
    GENERO_JOGO5 INT,
    SINOPSE_JOGO TEXT,
    EU_JOGUEI ENUM("Sim",'Não'),
    MINHA_NOTA NUMERIC(4,2),
    MULTIPLAYER ENUM("Sim",'Não'),
    MULTIPLAYER_LOCAL ENUM("Sim",'Não'),
    MEU_COMENTARIO TEXT
);

--14.2--
--CONSTRAINTS--

--PRIMARY KEY--
ALTER TABLE JOGOS ADD CONSTRAINT PK_JOGOS
PRIMARY KEY(IDJOGO);

ALTER TABLE JOGOS MODIFY IDJOGO INT AUTO_INCREMENT;

--ESTUDIO--
ALTER TABLE JOGOS ADD CONSTRAINT FK_ESTUDIO_JOGOS
FOREIGN KEY(ESTUDIO) REFERENCES ESTUDIOS(IDESTUDIO);

--PLATAFORMA--
ALTER TABLE JOGOS ADD CONSTRAINT FK_PLATAFORMA_JOGOS
FOREIGN KEY(PLATAFORMA) REFERENCES PLATAFORMAS(IDPLATAFORMA);

--GÊNEROS--
ALTER TABLE JOGOS ADD CONSTRAINT FK_GENERO_JOGO1
FOREIGN KEY(GENERO_JOGO1) REFERENCES GENEROS(IDGENERO);

ALTER TABLE JOGOS ADD CONSTRAINT FK_GENERO_JOGO2
FOREIGN KEY(GENERO_JOGO2) REFERENCES GENEROS(IDGENERO);

ALTER TABLE JOGOS ADD CONSTRAINT FK_GENERO_JOGO3
FOREIGN KEY(GENERO_JOGO3) REFERENCES GENEROS(IDGENERO);

ALTER TABLE JOGOS ADD CONSTRAINT FK_GENERO_JOGO4
FOREIGN KEY(GENERO_JOGO4) REFERENCES GENEROS(IDGENERO);

ALTER TABLE JOGOS ADD CONSTRAINT FK_GENERO_JOGO5
FOREIGN KEY(GENERO_JOGO5) REFERENCES GENEROS(IDGENERO);