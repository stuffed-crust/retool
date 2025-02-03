<SidebarFrame
  id="sidebarFrame1"
  footerPadding="8px 12px"
  headerPadding="8px 12px"
  isHiddenOnMobile={true}
  padding="8px 12px"
  style={{
    ordered: [{ background: "primary" }, { headerBackground: "success" }],
  }}
  width="medium"
>
  <Header>
    <Text id="text3" value="Filters" verticalAlign="center" />
  </Header>
  <Body>
    <Multiselect
      id="multiselect1"
      colorByIndex=""
      data="{{ getAssets.data }}"
      emptyMessage="No options"
      iconByIndex={'{{  "/icon:bold/interface-add-1"  }}'}
      label="Filter Type"
      labelPosition="top"
      labels=""
      overlayMaxHeight={375}
      persistSearchTerm={true}
      placeholder="Select options"
      showSelectionIndicator={true}
      value="{{ HuluAssetDataTable.data.type}}"
      values="{{ item.type }}"
      wrapTags={true}
    >
      <Option id="25587" disabled={false} hidden={false} value="Option 1" />
    </Multiselect>
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
        pluginId="multiselect1"
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
