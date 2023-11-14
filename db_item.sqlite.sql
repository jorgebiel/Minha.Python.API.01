-- Apagar as tabelas caso existam.
-- CUIDADO Isoo destroi todos os dados do banco.
DROP TABLE IF EXISTS item;
DROP TABLE IF EXISTS owner;

-- Cria a tabela 'owner'.
CREATE TABLE owner (
    owner_id INTEGER PRIMARY KEY AUTOINCREMENT,
    owner_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    owner_name TEXT,
    owner_email TEXT,
    owner_password TEXT,
    owner_birth DATE,
    owner_status TEXT COMMENTS "Valores on, off",
    owner_field1 TEXT,
    ownerfield2 TEXT
);

-- Popular a tabela 'owner' com dados 'fake'.
INSERT INTO owner 
    (owner_name, owner_email, owner_password, owner_birth, owner_status, owner_field1, ownerfield2, owner_date)
 VALUES
	('Luferat', 'luferat@example.com', 'senha123', '1990-01-01', 'on', 'valor1', 'info1', strftime('%Y-%m-%d %H:%M:%S', 'now', '-10 days')),
    ('Ana Souza', 'ana@example.com', 'senha456', '1985-05-20', 'off', 'valor2', 'info2', strftime('%Y-%m-%d %H:%M:%S', 'now', '-5 days')),
    ('Pedro Lima', 'pedro@example.com', 'senha789', '1988-12-10', 'on', 'valor3', 'info3', strftime('%Y-%m-%d %H:%M:%S', 'now', '-2 days')),
    ('João Silva', 'joao@example.com', 'senha321', '1987-08-15', 'on', 'valor4', 'info4', strftime('%Y-%m-%d %H:%M:%S', 'now', '-1 day')),
    ('Maria Oliveira', 'maria@example.com', 'senha654', '1992-03-25', 'off', 'valor5', 'info5', strftime('%Y-%m-%d %H:%M:%S', 'now', '-3 hours')),
    ('Carlos Santos', 'carlos@example.com', 'senha987', '1980-11-05', 'on', 'valor6', 'info6', strftime('%Y-%m-%d %H:%M:%S', 'now', '-1 hour'));
	
-- Cria a tabela 'item'.
CREATE TABLE item (
	item_id INTEGER PRIMARY KEY AUTOINCREMENT,
	item_date DATETIME DEFAULT CURRENT_TIMESTAMP,
	item_name TEXT,
	item_description TEXT,
	item_location TEXT,
	item_owner INTEGER,
	item_status TEXT DEFAULT 'on',
	item_field1 TEXT,
	item_field2 TEXT,
	FOREIGN KEY (item_owner) REFERENCES owner (owner_id)
);

-- Popula 'item' com dados 'fake' ' aleatórios.
INSERT INTO item (item_date, item_name, item_description, item_location, item_owner)
VALUES
  ('2023-05-12 14:15:00', 'Garrafão', 'baratinho', 'Rio de janeiro', 1),
  ('2023-06-21 23:24:25', 'Produto2', 'Descrição do Produto 2', 'Localização 2', 2),
  ('2023-10-01 08:09:00', 'Produto3', 'Descrição do Produto 3', 'Localização 3', 3),
  ('2023-09-30 13:00:59', 'Produto3', 'Descrição do Produto 3', 'Localização 4', 6);





