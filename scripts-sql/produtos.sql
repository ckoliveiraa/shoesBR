    -- Cria o schema landing se não existir
    CREATE SCHEMA IF NOT EXISTS landing;

    -- Cria a tabela produtos dentro do schema landing
    CREATE TABLE IF NOT EXISTS landing.produtos (
        product_id INT PRIMARY KEY,
        name VARCHAR(255),
        price DECIMAL(10,2)
    );

    -- Insere os dados na tabela
    INSERT INTO landing.produtos (product_id, name, price) VALUES
    (1, 'Tenis Esportivo', 283.24),
    (2, 'Sapato Social', 428.09),
    (3, 'Bota Casual', 242.90),
    (4, 'Sapatilha Feminina', 150.21),
    (5, 'Mocassim', 242.07),
    (6, 'Chinelo de Couro', 165.33),
    (7, 'Sandalia Anabela', 211.75),
    (8, 'Tenis Casual', 375.58),
    (9, 'Coturno', 437.60),
    (10, 'Rasteirinha', 195.20);
