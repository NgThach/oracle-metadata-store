-- seed_data/insert_sample_data.sql

-- Owners
INSERT INTO owners VALUES (1, 'Alice', 'alice@example.com', 'Data Team');
INSERT INTO owners VALUES (2, 'Bob', 'bob@example.com', 'Analytics');

-- Datasets
INSERT INTO datasets VALUES (1, 'Sales Dataset', 'Contains sales data for Q1', 'CRM', SYSDATE, 1);
INSERT INTO datasets VALUES (2, 'Marketing Leads', 'Leads from marketing campaigns', 'Hubspot', SYSDATE, 2);

-- Tables
INSERT INTO tables VALUES (1, 1, 'sales_q1', 10000, SYSDATE);
INSERT INTO tables VALUES (2, 2, 'leads_feb', 1500, SYSDATE);

-- Columns
INSERT INTO columns VALUES (1, 1, 'sale_id', 'NUMBER', 'N', 'Primary key');
INSERT INTO columns VALUES (2, 1, 'amount', 'NUMBER', 'Y', 'Sale amount');
INSERT INTO columns VALUES (3, 2, 'lead_id', 'VARCHAR2(50)', 'N', 'Lead unique ID');

-- Lineage
INSERT INTO lineage VALUES (1, 2, 1, 'Join leads_feb with sales_q1 for analysis');

-- Access Logs
INSERT INTO access_logs VALUES (1, 'user1@example.com', 1, SYSTIMESTAMP);
INSERT INTO access_logs VALUES (2, 'user2@example.com', 2, SYSTIMESTAMP);

