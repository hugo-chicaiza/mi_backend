-- ===============================
-- Usuarios de ejemplo
-- ===============================
INSERT INTO users (username, email)
VALUES 
('alice', 'alice@example.com'),
('bob', 'bob@example.com'),
('carol', 'carol@example.com');

-- ===============================
-- Cuentas de ejemplo
-- ===============================
INSERT INTO accounts (user_id, balance)
VALUES 
(1, 1000.00),   -- Cuenta de Alice
(2, 500.00),    -- Cuenta de Bob
(3, 2000.00);   -- Cuenta de Carol

-- ===============================
-- Transacciones de ejemplo
-- ===============================
INSERT INTO transactions (account_from, account_to, amount)
VALUES 
(1, 2, 150.00),   -- Alice transfiere $150 a Bob
(3, 1, 500.00),   -- Carol transfiere $500 a Alice
(2, 3, 50.00);    -- Bob transfiere $50 a Carol

-- ===============================
-- Logs de ejemplo
-- ===============================
INSERT INTO logs (Laction, performed_by, details)
VALUES 
('CREATE_ACCOUNT', 'app_admin', 'Cuenta creada para Alice'),
('CREATE_ACCOUNT', 'app_admin', 'Cuenta creada para Bob'),
('CREATE_ACCOUNT', 'app_admin', 'Cuenta creada para Carol'),
('TRANSFER_FUNDS', 'alice', 'Alice transfiere $150 a Bob'),
('TRANSFER_FUNDS', 'carol', 'Carol transfiere $500 a Alice'),
('TRANSFER_FUNDS', 'bob', 'Bob transfiere $50 a Carol');