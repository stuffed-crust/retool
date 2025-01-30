UPDATE
  asset_library
SET
  media = {{ getAssets.media }}
WHERE
  id = {{ formButton1.asset_id }};