INSERT INTO users (full_name, email, password) VALUES 
('Carlos González', 'c.gonzalez@nexushub.com', 'hash_secure_99'),
('Elena Pérez', 'e.perez@nexushub.com', 'hash_secure_88'),
('Inés Peña', 'i.pena@nexushub.com', 'hash_secure_77');

INSERT INTO clients (company_name, ticker, sector, tax_id, website) VALUES 
('Apple Inc.', 'AAPL', 'XLK', 'US-123456789', 'apple.com'),
('Microsoft Corp.', 'MSFT', 'XLK', 'US-987654321', 'microsoft.com'),
('BBVA', 'BBVA.MC', 'XLF', 'ESA12345678', 'bbva.com'),
('Banco Santander', 'SAN.MC', 'XLF', 'ESB87654321', 'santander.com'),
('Inditex', 'ITX.MC', 'XLY', 'ESA99887766', 'inditex.com'),
('Iberdrola', 'IBE.MC', 'XLE', 'ESB11223344', 'iberdrola.com'),
('Telefónica', 'TEF.MC', 'XLK', 'ESA55667788', 'telefonica.com'),
('Mercadona S.A.', NULL, 'XLP', 'ESA46103834', 'mercadona.es'),
('El Corte Inglés S.A.', NULL, 'XLY', 'ESA28017895', 'elcorteingles.es'),
('Grupo Pascual', NULL, 'XLP', 'ESB09002451', 'lechepascual.es');

INSERT INTO contacts (client_id, full_name, email, phone) VALUES 
(1, 'Antonio García', 'antonio.garcia@apple.es', '+34 912 345 678'),
(2, 'Beatriz López', 'b.lopez@microsoft.es', '+34 910 888 777'),
(3, 'Carlos Torres', 'c.torres@bbva.es', '+34 913 743 300'),
(6, 'Ignacio Galán', 'i.galan@iberdrola.es', '+34 944 151 411'),
(7, 'José María Álvarez', 'j.alvarez@telefonica.es', '+34 914 823 800'),
(8, 'Juan Roig', 'jroig@mercadona.es', '+34 963 883 300'),
(9, 'Marta Álvarez', 'malvarez@elcorteingles.es', '+34 914 018 500'),
(10, 'Tomás Pascual', 'tpascual@pascual.es', '+34 947 544 000');


INSERT INTO opportunities (client_id, user_id, title, description, amount_value, stage, created_at) VALUES 
(1, 2, 'Suministro iPad Pro', 'Venta de tablets para diseño', 12000.00, 'Closed', NOW()),
(1, 2, 'Soporte Técnico Premium', 'Contrato de mantenimiento 2024', 5000.00, 'Closed', NOW()),
(1, 2, 'Renovación iPhone Directivos', 'Upgrade anual de terminales', 25000.00, 'Prospecting', NOW()),
(2, 2, 'Licencias Azure Cloud', 'Migración de servidores locales', 60000.00, 'Closed', NOW()),
(2, 2, 'Suscripciones Office 365', 'Renovación masiva 500 puestos', 45000.00, 'Closed', NOW()),
(3, 1, 'Auditoría Ciberseguridad', 'Revisión de protocolos SOC', 30000.00, 'Closed', NOW()),
(5, 1, 'Logística RFID', 'Optimización de stock en tiempo real', 500000.00, 'Closed', NOW()),
(6, 3, 'Paneles Solares Planta A', 'Instalación fotovoltaica', 120000.00, 'Closed', NOW()),
(10, 3, 'Nueva Línea de Producción', 'Maquinaria para productos lácteos', 450000.00, 'Proposal', NOW());