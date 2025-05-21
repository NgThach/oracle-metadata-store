-- queries/dataset_by_owner.sql
SELECT 
    o.name AS owner_name,
    d.name AS dataset_name,
    d.source_system
FROM datasets d
JOIN owners o ON d.owner_id = o.owner_id;
