SELECT
  *
FROM
  asset_orders
WHERE
  asset_id = {{ table2.selectedRow.id }}
