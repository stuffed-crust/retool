select
  *
from
  asset_library
where
  name ilike {{'%' + textInput1.value + '%'}}
  