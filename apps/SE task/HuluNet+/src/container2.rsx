<Container
  id="container2"
  footerPadding="4px 12px"
  headerPadding="4px 12px"
  padding="12px"
  showBody={true}
  style={{ ordered: [{ borderRadius: "20px" }] }}
>
  <Header>
    <Text
      id="containerTitle2"
      value="#### Container title"
      verticalAlign="center"
    />
  </Header>
  <View id="a80e4" viewKey="View 1">
    <IconText
      id="iconText1"
      iconPosition="right"
      margin="0"
      style={{
        ordered: [
          { iconColor: "rgba(241, 238, 238, 1)" },
          { fontSize: "h3Font" },
          { fontWeight: "h3Font" },
          { fontFamily: "h3Font" },
          { iconGap: "8px" },
          { color: "rgb(255, 255, 255)" },
        ],
      }}
      text="Planning & Orders"
    />
    <TextInput
      id="textInput1"
      label="Search"
      labelAlign="right"
      labelCaption="{{ textInput1.value }}"
      placeholder="Enter Asset"
      showClear={true}
      style={{ ordered: [] }}
    />
    <Text
      id="tableTitle"
      style={{
        ordered: [
          { fontSize: "18px" },
          { fontWeight: "500" },
          { fontFamily: "Poppins" },
        ],
      }}
      value="Current Assets"
      verticalAlign="center"
    />
    <Table
      id="HuluAssetDataTable"
      autoColumnWidth={true}
      cellSelection="none"
      clearChangesetOnSave={true}
      data="{{ getAssets.data }}"
      defaultSelectedRow={{ mode: "index", indexType: "display", index: 0 }}
      emptyMessage="No rows found"
      enableExpandableRows={true}
      enableSaveActions={true}
      heightType="auto"
      primaryKeyColumnId="edc5a"
      rowHeight="medium"
      showFooter={true}
      showHeader={true}
      style={{
        cellText: "rgba(255, 255, 255, 1)",
        rowSeparator: "rgba(76, 77, 77, 1)",
        borderRadius: "20px",
      }}
      toolbarPosition="bottom"
    >
      <Include src="./HuluAssetDataTableExpandedRow.rsx" />
      <Column
        id="edc5a"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        key="id"
        label="ID"
        placeholder="Enter value"
        position="center"
        size={27.421875}
        summaryAggregationMode="none"
      />
      <Column
        id="52903"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="name"
        label="Name"
        placeholder="Enter value"
        position="center"
        size={193.4375}
        summaryAggregationMode="none"
      />
      <Column
        id="aef93"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="type"
        label="Type"
        placeholder="Select option"
        position="center"
        size={136.5625}
        summaryAggregationMode="none"
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="33992"
        alignment="left"
        format="image"
        formatOptions={{
          showUnderline: "hover",
          underlineStyle: "solid",
          widthType: "fit",
        }}
        groupAggregationMode="none"
        key="media"
        label="Media"
        placeholder="Enter value"
        position="center"
        size={52.921875}
        summaryAggregationMode="none"
        textColor="rgba(255, 255, 255, 1)"
      />
      <Column
        id="41adb"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="description"
        label="Description"
        placeholder="Enter value"
        position="center"
        size={422.375}
        summaryAggregationMode="none"
      />
      <Column
        id="8742c"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="language"
        label="Language"
        placeholder="Select option"
        position="center"
        size={81.359375}
        summaryAggregationMode="none"
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="4fa68"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="country"
        label="Country"
        placeholder="Select option"
        position="center"
        size={88.109375}
        summaryAggregationMode="none"
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="a5df9"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        key="spend"
        label="Spend"
        placeholder="Enter value"
        position="center"
        size={64.453125}
        summaryAggregationMode="none"
      />
      <ToolbarButton
        id="1a"
        icon="bold/interface-text-formatting-filter-2"
        label="Filter"
        type="filter"
      />
      <ToolbarButton
        id="3c"
        icon="bold/interface-download-button-2"
        label="Download"
        type="custom"
      />
      <ToolbarButton
        id="4d"
        icon="bold/interface-arrows-round-left"
        label="Refresh"
        type="custom"
      />
      <Event
        event="selectRow"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="getAssets"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Table>
  </View>
</Container>
