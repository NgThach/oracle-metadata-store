-- queries/lineage_query.sql
SELECT 
    s.name AS source_table,
    t.name AS target_table,
    l.process_description
FROM lineage l
JOIN tables s ON l.source_table_id = s.table_id
JOIN tables t ON l.target_table_id = t.table_id;


