-- Geração de Modelo físico
-- Sql ANSI 2003 - brModelo.



CREATE TABLE Produtos (
id_produto INT PRIMARY KEY AUTO_INCREMENT,
Qtde INT,
Nome VARCHAR(255),
Marca VARCHAR(255),
Preço DECIMAL(10,2),
id_categoria INT
);

CREATE TABLE Categorias (
id_categoria INT PRIMARY KEY AUTO_INCREMENT,
Nome_cat VARCHAR(255)
);

ALTER TABLE Produtos ADD FOREIGN KEY(id_categoria) REFERENCES Categorias (id_categoria);


