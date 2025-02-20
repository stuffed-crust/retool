SELECT
  *
FROM
  asset_orders
WHERE
  asset_id = {{ table4.selectedRow.id }}
