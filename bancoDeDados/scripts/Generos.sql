--2.1--
CREATE TABLE GENEROS(
    IDGENERO INT,
    NOME_GENERO VARCHAR(1000)
);

--2.2--
--CONSTRAINTS--

--PRIMARY KEY--
ALTER TABLE GENEROS ADD CONSTRAINT PK_GENEROS
PRIMARY KEY(IDGENERO);

ALTER TABLE GENEROS MODIFY IDGENERO INT AUTO_INCREMENT;