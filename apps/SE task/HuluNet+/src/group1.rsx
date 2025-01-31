<Container
  id="group1"
  footerPadding="4px 12px"
  headerPadding="4px 12px"
  margin="0"
  padding="0"
  showBody={true}
  showBorder={false}
  style={{ ordered: [{ background: "rgba(255, 255, 255, 0)" }] }}
>
  <View id="5344a" viewKey="View 1">
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
          value="Current Assets 🔎"
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
            size={29.28125}
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
            size={186.390625}
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
            size={132.796875}
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
            size={868}
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
            size={399.859375}
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
            size={76.96875}
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
            size={83.03125}
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
            size={65.609375}
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
    <Container
      id="chartGraphContainer"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      heightType="fixed"
      padding="12px"
      showBody={true}
      showHeader={true}
      style={{ ordered: [{ borderRadius: "20px" }] }}
      styleContext={{ ordered: [{ borderRadius: "20px" }] }}
    >
      <Header>
        <Text id="containerTitle1" value="#### " verticalAlign="center" />
      </Header>
      <View id="a80e4" viewKey="View 1">
        <Text
          id="text10"
          horizontalAlign="center"
          style={{
            ordered: [
              { fontSize: "15px" },
              { fontWeight: "500" },
              { fontFamily: "Poppins" },
            ],
          }}
          value="{{ HuluAssetDataTable.selectedRow.name }}"
          verticalAlign="center"
        />
        <Image
          id="image2"
          fit="contain"
          horizontalAlign="center"
          retoolFileObject="{{ HuluAssetDataTable.selectedRow.media }}"
          src=" {{ HuluAssetDataTable.selectedRow.media }}"
        />
      </View>
    </Container>
    <Button
      id="button2"
      style={{ ordered: [{ background: "surfaceSecondaryBorder" }] }}
      text="Order Now"
    >
      <Event
        event="click"
        method="show"
        params={{ ordered: [] }}
        pluginId="modalFrame1"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <Text
      id="tableTitle2"
      imageWidth="fill"
      style={{
        ordered: [
          { fontSize: "h4Font" },
          { fontWeight: "h4Font" },
          { fontFamily: "h4Font" },
        ],
      }}
      value="  Order Your Next Asset  🖨️  "
    />
    <Text
      id="text8"
      margin="0"
      value="_Fullfilment team will be notified for approvals_"
      verticalAlign="center"
    />
    <Spacer id="spacer1" />
    <Chat
      id="chat1"
      _actionDisabled={{ ordered: [{ "1a": "" }] }}
      _actionHidden={{ ordered: [{ "1a": "" }] }}
      _actionIcon={{ ordered: [{ "1a": "line/interface-align-front" }] }}
      _actionIds={["1a"]}
      _actionLabel={{ ordered: [{ "1a": "Copy" }] }}
      _actionType={{ ordered: [{ "1a": "copy" }] }}
      _defaultUsername="{{ current_user.fullName }}"
      _headerButtonHidden={{ ordered: [{ "2b": "" }, { "3c": "" }] }}
      _headerButtonIcon={{
        ordered: [
          { "2b": "line/interface-download-button-2" },
          { "3c": "line/interface-delete-bin-2" },
        ],
      }}
      _headerButtonIds={["2b", "3c"]}
      _headerButtonLabel={{
        ordered: [{ "2b": "Download" }, { "3c": "Clear history" }],
      }}
      _headerButtonType={{
        ordered: [{ "2b": "download" }, { "3c": "clearHistory" }],
      }}
      _sessionStorageId="9ce60f51-dc56-4103-844d-b2662a520ae7"
      assistantName="HU"
      avatarFallback="{{ current_user.fullName }}"
      avatarImageSize={32}
      avatarSrc="{{ current_user.profilePhotoUrl }}"
      emptyDescription="Send a message to chat with AI"
      emptyTitle="No messages here yet"
      placeholder="Ask me a question Marketing & Publicity!"
      queryTargetId="chat1_query1"
      showAvatar={true}
      showEmptyState={true}
      showHeader={true}
      showTimestamp={true}
      style={{
        ordered: [
          { background: "automatic" },
          { containerBorderRadius: "22px" },
          { message: "#ffffffff" },
          { inputBorderRadius: "20px" },
          { containerBackground: "tertiary" },
          { send: "rgba(83, 230, 111, 1)" },
          { name: "rgba(249, 255, 249, 1)" },
        ],
      }}
      title="❇️ Hulu CoPilot"
    >
      <Event
        event="clickAction"
        method="copyToClipboard"
        params={{ ordered: [{ value: "{{ currentMessage.value }}" }] }}
        pluginId="chat1"
        targetId="1a"
        type="util"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="clickHeader"
        method="exportData"
        pluginId="chat1"
        targetId="2b"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="clickHeader"
        method="clearHistory"
        pluginId="chat1"
        targetId="3c"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Chat>
  </View>
</Container>
