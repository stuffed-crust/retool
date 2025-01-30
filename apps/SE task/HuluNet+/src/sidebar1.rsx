<SidebarFrame
  id="sidebarFrame1"
  footerPadding="8px 12px"
  headerPadding="8px 12px"
  isHiddenOnMobile={true}
  padding="8px 12px"
  style={{
    ordered: [{ background: "tertiary" }, { headerBackground: "success" }],
  }}
  width="medium"
>
  <Header>
    <Text id="text3" value="Filters" verticalAlign="center" />
  </Header>
  <Body>
    <Text
      id="text4"
      disableMarkdown={true}
      horizontalAlign="center"
      style={{
        ordered: [
          { fontSize: "18px" },
          { fontWeight: "500" },
          { fontFamily: "Poppins" },
        ],
      }}
      tooltipText="I chose a few specific demographics here to demostrate filtering capabilities!"
      value="Filter Assets"
      verticalAlign="center"
    />
    <DateRange
      id="dateRangeFilter"
      dateFormat="MMM d, yyyy"
      endPlaceholder="End date"
      iconBefore="bold/interface-calendar-remove"
      label="Date Range"
      labelPosition="top"
      startPlaceholder="Start date"
      textBetween="-"
      value={{ ordered: [{ start: "May 1,2024" }, { end: "Dec 1, 2100" }] }}
    >
      <Event
        event="change"
        method="setFilterStack"
        params={{
          ordered: [
            {
              filterStack: {
                ordered: [
                  {
                    filters:
                      '[\n    { columnId: "timestamp", operator: "isAfter", value: {{ self.value.start}} },\n    { columnId: "timestamp", operator: "isBefore", value: {{ self.value.end}} },\n]',
                  },
                  { operator: "and" },
                ],
              },
            },
          ],
        }}
        pluginId="HuluAssetDataTable"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="change"
        method="trigger"
        params={{
          ordered: [
            {
              options: {
                object: {
                  onSuccess: null,
                  onFailure: null,
                  additionalScope: null,
                },
              },
            },
          ],
        }}
        pluginId="filterAllData"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </DateRange>
    <Multiselect
      id="assetTypeFilter"
      colorByIndex=""
      data="{{ getAssets.data }}"
      emptyMessage="No options"
      label="Asset Type"
      labelPosition="top"
      labels="{{ item.name }}"
      overlayMaxHeight={375}
      persistSearchTerm={true}
      placeholder="Select options"
      showSelectionIndicator={true}
      value="All"
      values="{{ item.id }}"
      wrapTags={true}
    >
      <Event
        event="change"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="filterAllData"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="change"
        method="setFilter"
        params={{
          ordered: [
            {
              filter: {
                ordered: [
                  { id: "{{ self.id }}" },
                  { columnId: "preferred_genre" },
                  { operator: "isOneOf" },
                  { value: "{{ self.value }}" },
                ],
              },
            },
          ],
        }}
        pluginId="HuluAssetDataTable"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Multiselect>
    <Select
      id="contentTypeFilter"
      data=""
      emptyMessage="No options"
      label="Content Type"
      labelPosition="top"
      overlayMaxHeight={375}
      placeholder="Select an option"
      showSelectionIndicator={true}
      value=""
      values="{{ item.content_type }}"
    >
      <Event
        event="change"
        method="setFilter"
        params={{
          ordered: [
            {
              filter: {
                ordered: [
                  { id: "{{ self.id }}" },
                  { columnId: "content_type" },
                  { operator: "is" },
                  { value: "{{ self.value }}" },
                ],
              },
            },
          ],
        }}
        pluginId="HuluAssetDataTable"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="change"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="filterAllData"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Select>
    <Button
      id="clearFiltersButton"
      style={{ ordered: [] }}
      styleVariant="outline"
      text="Clear Filters"
    >
      <Event
        event="click"
        method="clearFilterStack"
        params={{ ordered: [] }}
        pluginId="HuluAssetDataTable"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="click"
        method="clearValue"
        params={{ ordered: [] }}
        pluginId="assetTypeFilter"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="click"
        method="clearValue"
        params={{ ordered: [] }}
        pluginId="contentTypeFilter"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="click"
        method="resetValue"
        params={{
          ordered: [{ value: { object: { start: null, end: null } } }],
        }}
        pluginId="dateRangeFilter"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="filterAllData"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </Body>
  <Footer>
    <Avatar
      id="avatar1"
      fallback="{{ current_user.fullName }}"
      imageSize={32}
      label="{{ current_user.fullName }}"
      labelCaption="{{ current_user.email }}"
      margin="4px 4px"
      src="{{ current_user.profilePhotoUrl }}"
      style={{ ordered: [{ background: "automatic" }] }}
    />
  </Footer>
</SidebarFrame>
