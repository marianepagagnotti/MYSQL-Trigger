
CREATE DATABASE banco140922; 
USE banco140922 ;

CREATE TABLE produto (
  id INT NOT NULL AUTO_INCREMENT,
  descricao VARCHAR(100) NOT NULL,
  precO DOUBLE NOT NULL,
  estoque INT UNSIGNED NOT NULL,
  PRIMARY KEY (id));
  
CREATE TABLE venda (
  id INT NOT NULL AUTO_INCREMENT,
  cliente VARCHAR(45) NOT NULL,
  data_venda TIMESTAMP NOT NULL,
  PRIMARY KEY (`id`));
  
CREATE TABLE venda_item (
  id_venda INT NOT NULL AUTO_INCREMENT,
  id_produto INT NOT NULL,
  preco_unitario DOUBLE NULL DEFAULT NULL,
  quantidade DOUBLE NULL DEFAULT NULL,
  total_item DOUBLE NULL DEFAULT NULL,
  INDEX `fk_produto_venda_tem_idx` (`id_produto` ASC) VISIBLE,
  INDEX `fk_venda_venda_item_idx` (`id_venda` ASC) VISIBLE,
  CONSTRAINT `fk_produto_venda_tem`
    FOREIGN KEY (`id_produto`)
    REFERENCES `banco140922`.`produto` (`id`),
  CONSTRAINT `fk_venda_venda_item`
    FOREIGN KEY (`id_venda`)
    REFERENCES `banco140922`.`venda` (`id`));



