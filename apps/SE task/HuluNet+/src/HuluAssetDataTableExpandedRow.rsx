<ExpandedRow id="HuluAssetDataTableExpandedRow">
  <KeyValue
    id="keyValue1"
    data={
      '{\n  "Device Type:": {{ currentRow.device_type }},\n  "User Region:": {{ currentRow.user_region }},\n  "User Age:": {{ currentRow.user_age }},\n  "Engagement Level:": {{ currentRow.engagement_level }},\n  "Subscription Type:": {{ currentRow.subscription_type }},\n  "Preferred Genre:": {{ currentRow.preferred_genre }},\n  "Favorite Actor:": {{ currentRow.favorite_actor }},\n  "Risk Level:": {{ currentRow.risk_level }},\n  "Recommended Intervention:": {{ currentRow.recommended_intervention }}\n}'
    }
    enableSaveActions={true}
    itemLabelPosition="top"
    labelWrap={true}
  >
    <Property
      id="Risk Level:"
      editable="false"
      editableOptions={{}}
      format="tag"
      formatOptions={{ automaticColors: true }}
      hidden="false"
      label="Risk level"
    />
  </KeyValue>
</ExpandedRow>
