SELECT 
  o.id AS order_id,
  o.order_type,
  o.ordered_by,
  o.date,
  o.deadline,
  o.status,
  o.description AS order_description
FROM asset_orders AS o
INNER JOIN asset_library AS a
ON o.asset_id = a.id
WHERE a.id = {{ table3.selectedRow.id }}
