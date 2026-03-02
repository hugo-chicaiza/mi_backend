-- ===============================
-- Migración 004: Actualizar constraint de logs
-- ===============================

-- Eliminar la constraint antigua
ALTER TABLE logs
DROP CONSTRAINT IF EXISTS chk_action_values;

-- Crear la constraint con el nuevo valor
ALTER TABLE logs
ADD CONSTRAINT chk_action_values
CHECK (Laction IN ('TRANSFER_FUNDS','CREATE_ACCOUNT','DELETE_ACCOUNT','UPDATE_ACCOUNT'));