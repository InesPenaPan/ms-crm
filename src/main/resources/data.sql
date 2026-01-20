/* =========================================================================
   DATABASE CLEANUP SECTION (Run before inserts to prevent duplication)
   =========================================================================
*/
SET FOREIGN_KEY_CHECKS = 0;

TRUNCATE TABLE opportunities;
TRUNCATE TABLE contacts;
TRUNCATE TABLE clients;
TRUNCATE TABLE users;

SET FOREIGN_KEY_CHECKS = 1;

/* =========================================================================
   START DATA INSERTION
   =========================================================================
*/
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
(1, 2, 'Migration to Jamf Pro', 'MDM implementation for Apple fleet', 15000.00, 'Closed', '2025-11-10 09:00:00'),
(1, 2, 'Zero Trust Architecture', 'Consultancy and implementation of ZTA', 45000.00, 'Negotiation', '2026-01-05 14:30:00'),
(1, 2, 'Legacy System Audit', 'Analysis of old server infrastructure', 8000.00, 'Lost', '2025-10-20 11:15:00'),
(2, 2, 'Sentinel SIEM Deployment', 'Security monitoring setup in Azure', 75000.00, 'Closed', '2025-12-01 10:00:00'),
(2, 2, 'Copilot Adoption Plan', 'Generative AI training and licenses', 22000.00, 'Proposal', '2026-01-15 16:00:00'),
(2, 2, 'SharePoint Intranet Redesign', 'Internal portal modernization', 12000.00, 'Lost', '2025-09-12 08:45:00'),
(3, 1, 'Blockchain Payment Gateway', 'Development of crypto-friendly API', 120000.00, 'Negotiation', '2026-01-10 12:00:00'),
(3, 1, 'Mainframe Modernization', 'Cloud-native microservices transition', 350000.00, 'Prospecting', '2026-01-18 09:20:00'),
(3, 1, 'Biometric Auth Integration', 'FaceID and TouchID for banking app', 55000.00, 'Closed', '2025-11-25 15:10:00'),
(4, 1, 'Disaster Recovery Plan', 'Off-site backup and DR site setup', 90000.00, 'Closed', '2025-12-15 14:00:00'),
(4, 1, 'PCI-DSS Compliance', 'Security audit for payment processing', 30000.00, 'Proposal', '2026-01-12 11:30:00'),
(5, 1, 'Edge Computing in Stores', 'Local processing for smart mirrors', 280000.00, 'Negotiation', '2026-01-08 17:45:00'),
(5, 1, 'Omnichannel AI Engine', 'Recommendation engine for global e-commerce', 150000.00, 'Closed', '2025-10-05 10:30:00'),
(5, 1, 'Warehouse WiFi 6 Upgrade', 'Network overhaul for logistics hubs', 65000.00, 'Lost', '2025-08-22 09:00:00'),
(6, 3, 'Smart Grid Analytics', 'Big Data platform for energy demand', 210000.00, 'Proposal', '2026-01-14 13:00:00'),
(6, 3, 'SOC Managed Services', '24/7 Cybersecurity monitoring', 120000.00, 'Closed', '2025-11-02 08:00:00'),
(6, 3, 'IoT Sensor Maintenance', 'Support for 5000+ field devices', 40000.00, 'Lost', '2025-07-15 12:00:00'),
(7, 3, 'Kubernetes Cluster Setup', 'DevOps automation for internal apps', 85000.00, 'Closed', '2025-12-20 16:20:00'),
(7, 3, '5G Private Network', 'Implementation for industrial campus', 450000.00, 'Negotiation', '2026-01-19 10:00:00'),
(7, 3, 'Virtual Desktop (VDI)', 'Remote work infrastructure for 1k users', 110000.00, 'Prospecting', '2026-01-20 09:00:00'),
(8, 3, 'SAP S/4HANA Migration', 'ERP update for logistics management', 500000.00, 'Proposal', '2026-01-11 11:00:00'),
(8, 3, 'Self-Checkout Tech Support', 'Maintenance for automated tills', 25000.00, 'Closed', '2025-10-18 14:15:00'),
(9, 2, 'Customer Data Platform', 'Unified marketing database setup', 95000.00, 'Negotiation', '2026-01-02 12:45:00'),
(9, 2, 'Cyber Resilience Strategy', 'Consultancy against Ransomware', 40000.00, 'Closed', '2025-11-30 16:00:00'),
(9, 2, 'Cloud Voice (VoIP)', 'Migration from analog PABX', 18000.00, 'Lost', '2025-06-10 10:30:00'),
(10, 3, 'Supply Chain Visibility', 'Track & Trace using IoT/Cloud', 135000.00, 'Proposal', '2026-01-16 15:30:00'),
(10, 3, 'Predictive Maintenance', 'AI for manufacturing plant health', 70000.00, 'Negotiation', '2026-01-18 14:00:00'),
(10, 3, 'M365 Security Hardening', 'Identity protection and MFA setup', 15000.00, 'Closed', '2025-12-05 09:00:00'),
(3, 1, 'Penetration Testing', 'External and Internal security tests', 25000.00, 'Closed', '2026-01-01 10:00:00'),
(4, 1, 'Data Lake Construction', 'Centralizing financial reports', 180000.00, 'Prospecting', '2026-01-19 13:45:00');

