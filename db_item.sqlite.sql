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