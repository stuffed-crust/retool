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
    <Text
      id="tableTitle"
      heightType="fixed"
      imageWidth="fill"
      margin="0"
      style={{
        ordered: [
          { fontSize: "18px" },
          { fontWeight: "700" },
          { fontFamily: "Poppins" },
        ],
      }}
      value="Assets 🔎"
      verticalAlign="center"
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
    <Table
      id="HuluAssetDataTable"
      actionsOverflowPosition={1}
      autoColumnWidth={true}
      clearChangesetOnSave={true}
      data="{{ getAssets.data }}"
      defaultFilterOperator="or"
      defaultFilters={{
        0: {
          ordered: [
            { id: "41b02" },
            { columnId: "aef93" },
            { operator: "intersects" },
            { value: "{{ multiselect1.value }}" },
            { disabled: false },
          ],
        },
      }}
      defaultSelectedRow={{ mode: "index", indexType: "display", index: 0 }}
      emptyMessage="No rows found"
      enableExpandableRows={true}
      enableSaveActions={true}
      heightType="auto"
      persistRowSelection={true}
      primaryKeyColumnId="edc5a"
      rowHeight="small"
      showFooter={true}
      showHeader={true}
      style={{
        cellText: "rgba(255, 255, 255, 1)",
        rowSeparator: "rgba(76, 77, 77, 0)",
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
        size={0}
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
        size={0}
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
        size={0}
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
        size={0}
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
        size={0}
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
        size={0}
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
        size={0}
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
        size={0}
        summaryAggregationMode="none"
      />
      <Action id="5186c" icon="bold/interface-edit-pencil" label="Action 1" />
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
    <Divider id="divider3" />
    <Container
      id="container3"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      padding="12px"
      showBody={true}
      showBorder={false}
      showHeader={true}
    >
      <Header>
        <Text id="containerTitle3" value="#### Orders" verticalAlign="center" />
      </Header>
      <View id="4664d" viewKey="View 1">
        <Table
          id="table2"
          cellSelection="none"
          clearChangesetOnSave={true}
          data="{{ getAssetOrders.data }}"
          defaultSelectedRow={{ mode: "index", indexType: "display", index: 0 }}
          emptyMessage="No rows found"
          enableSaveActions={true}
          primaryKeyColumnId="61b1f"
          showFooter={true}
          showHeader={true}
          style={{ rowSeparator: "rgba(243, 245, 244, 0)" }}
          toolbarPosition="bottom"
        >
          <Column
            id="61b1f"
            alignment="right"
            editable={false}
            editableOptions={{ showStepper: true }}
            format="decimal"
            formatOptions={{ showSeparators: true, notation: "standard" }}
            groupAggregationMode="sum"
            key="id"
            label="ID"
            placeholder="Enter value"
            position="center"
            size={46.453125}
            summaryAggregationMode="none"
          />
          <Column
            id="08002"
            alignment="left"
            format="string"
            groupAggregationMode="none"
            key="description"
            label="Description"
            placeholder="Enter value"
            position="center"
            size={265.953125}
            summaryAggregationMode="none"
          />
          <Column
            id="65480"
            alignment="left"
            format="tag"
            formatOptions={{ automaticColors: true }}
            groupAggregationMode="none"
            key="order_type"
            label="Order type"
            placeholder="Select option"
            position="center"
            size={145.625}
            summaryAggregationMode="none"
            valueOverride="{{ _.startCase(item) }}"
          />
          <Column
            id="66464"
            alignment="left"
            format="datetime"
            groupAggregationMode="none"
            key="date"
            label="Date"
            placeholder="Enter value"
            position="center"
            size={137.21875}
            summaryAggregationMode="none"
          />
          <Column
            id="002a9"
            alignment="left"
            format="string"
            groupAggregationMode="none"
            key="ordered_by"
            label="Ordered by"
            placeholder="Enter value"
            position="center"
            size={103.140625}
            summaryAggregationMode="none"
          />
          <Column
            id="699d3"
            alignment="left"
            format="tag"
            formatOptions={{ automaticColors: true }}
            groupAggregationMode="none"
            key="status"
            label="Status"
            placeholder="Select option"
            position="center"
            size={109.984375}
            summaryAggregationMode="none"
            valueOverride="{{ _.startCase(item) }}"
          />
          <Column
            id="90a70"
            alignment="left"
            format="date"
            groupAggregationMode="none"
            key="deadline"
            label="Deadline"
            placeholder="Enter value"
            position="center"
            size={90.25}
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
          >
            <Event
              event="clickToolbar"
              method="exportData"
              pluginId="table2"
              type="widget"
              waitMs="0"
              waitType="debounce"
            />
          </ToolbarButton>
          <ToolbarButton
            id="4d"
            icon="bold/interface-arrows-round-left"
            label="Refresh"
            type="custom"
          >
            <Event
              event="clickToolbar"
              method="refresh"
              pluginId="table2"
              type="widget"
              waitMs="0"
              waitType="debounce"
            />
          </ToolbarButton>
        </Table>
        <Button
          id="button2"
          heightType="auto"
          margin="0"
          style={{ ordered: [{ background: "surfaceSecondaryBorder" }] }}
          text="Order Now"
        >
          <Event
            event="click"
            method="show"
            params={{ ordered: [] }}
            pluginId="modalFrame2"
            type="widget"
            waitMs="0"
            waitType="debounce"
          />
          <Event
            event="click"
            method="confetti"
            params={{ ordered: [] }}
            pluginId=""
            type="util"
            waitMs="0"
            waitType="debounce"
          />
        </Button>
        <Text
          id="text8"
          horizontalAlign="right"
          imageWidth="fill"
          margin="0"
          value="Fullfilment team will be notified for approvals"
          verticalAlign="center"
        />
      </View>
    </Container>
    <Spacer id="spacer2" />
  </View>
</Container>
