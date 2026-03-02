-- ===============================
-- Tabla de logs
-- ===============================
CREATE TABLE logs (
    id SERIAL PRIMARY KEY,
    Laction VARCHAR(50) NOT NULL,
    performed_by VARCHAR(50) NOT NULL,
    performed_at TIMESTAMP DEFAULT NOW(),
    details TEXT,
    CONSTRAINT chk_action_values CHECK (Laction IN ('TRANSFER_FUNDS','CREATE_ACCOUNT','DELETE_ACCOUNT'))
);