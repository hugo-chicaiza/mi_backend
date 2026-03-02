-- ===============================
-- Tabla de usuarios
-- ===============================
CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    username VARCHAR(50) UNIQUE NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    created_at TIMESTAMP DEFAULT NOW()
);

-- ===============================
-- Tabla de cuentas
-- ===============================
CREATE TABLE accounts (
    id SERIAL PRIMARY KEY,
    user_id INT NOT NULL,
    balance DECIMAL(15,2) DEFAULT 0 CHECK (balance >= 0),
    created_at TIMESTAMP DEFAULT NOW(),
    CONSTRAINT fk_accounts_user FOREIGN KEY(user_id) REFERENCES users(id) ON DELETE CASCADE
);

-- ===============================
-- Tabla de transacciones
-- ===============================
CREATE TABLE transactions (
    id SERIAL PRIMARY KEY,
    account_from INT NOT NULL,
    account_to INT NOT NULL,
    amount DECIMAL(15,2) NOT NULL CHECK (amount > 0),
    created_at TIMESTAMP DEFAULT NOW(),
    CONSTRAINT fk_transactions_from FOREIGN KEY(account_from) REFERENCES accounts(id) ON DELETE CASCADE,
    CONSTRAINT fk_transactions_to FOREIGN KEY(account_to) REFERENCES accounts(id) ON DELETE CASCADE,
    CONSTRAINT chk_accounts_distinct CHECK (account_from <> account_to)
);
