--15.1--
CREATE TABLE LIVROS (
    IDLIVRO INT,
    NOME_LIVRO VARCHAR(1000) NOT NULL,
    NOME_ORIGINAL_LIVRO VARCHAR(1000) NOT NULL,
    AUTOR INT,
    GENERO_LIVRO1 INT,
    GENERO_LIVRO2 INT,
    GENERO_LIVRO3 INT,
    SINOPSE_LIVRO VARCHAR(5000),
    NOME_EDITORA INT,
    BROCHURA INT,
    EU_LI ENUM('Sim','Não'),
    MINHA_NOTA NUMERIC(4,2),
    MEU_COMENTARIO TEXT
);

--15.2--
--CONSTRAINTS--

--PRIMARY KEY--
ALTER TABLE LIVROS ADD CONSTRAINT PK_LIVROS
PRIMARY KEY(IDLIVRO);

ALTER TABLE LIVROS MODIFY IDLIVRO INT AUTO_INCREMENT;

--AUTOR--
ALTER TABLE LIVROS ADD CONSTRAINT FK_LIVROS_AUTOR
FOREIGN KEY(AUTOR) REFERENCES AUTORES(IDAUTOR);

--GENEROS--
ALTER TABLE LIVROS ADD CONSTRAINT FK_GENERO_LIVRO1
FOREIGN KEY(GENERO_LIVRO1) REFERENCES GENEROS(IDGENERO);

ALTER TABLE LIVROS ADD CONSTRAINT FK_GENERO_LIVRO2
FOREIGN KEY(GENERO_LIVRO2) REFERENCES GENEROS(IDGENERO);

ALTER TABLE LIVROS ADD CONSTRAINT FK_GENERO_LIVRO3
FOREIGN KEY(GENERO_LIVRO3) REFERENCES GENEROS(IDGENERO);

--EDITORA--
ALTER TABLE LIVROS ADD CONSTRAINT FK_LIVRO_EDITORA
FOREIGN KEY(NOME_EDITORA) REFERENCES EDITORAS(IDEDITORA);