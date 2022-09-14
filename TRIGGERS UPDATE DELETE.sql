
DELIMITER //
CREATE TRIGGER tgr_venda_item_insert AFTER INSERT ON venda_item FOR EACH ROW
BEGIN 
	UPDATE produto SET estoque = estoque - NEW.quantidade 
	WHERE id = NEW.id_produto;
END; //

DELIMITER //
CREATE TRIGGER tgr_venda_item_delete AFTER DELETE ON venda_item FOR EACH ROW
BEGIN 
	UPDATE produto SET estoque = estoque + OLD.quantidade 
	WHERE id = OLD.id_produto;
END; // 


