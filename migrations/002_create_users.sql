-- Crear usuario de solo lectura
CREATE USER reader_user WITH PASSWORD 'reader123';
GRANT CONNECT ON DATABASE mi_db TO reader_user;
GRANT USAGE ON SCHEMA public TO reader_user;
GRANT SELECT ON ALL TABLES IN SCHEMA public TO reader_user;

-- Crear usuario de lectura y escritura
CREATE USER writer_user WITH PASSWORD 'writer123';
GRANT CONNECT ON DATABASE mi_db TO writer_user;
GRANT USAGE ON SCHEMA public TO writer_user;
GRANT SELECT, INSERT, UPDATE ON ALL TABLES IN SCHEMA public TO writer_user;

-- Crear administrador de la base específica
CREATE USER app_admin WITH PASSWORD 'appadmin123';
GRANT ALL PRIVILEGES ON DATABASE mi_db TO app_admin;