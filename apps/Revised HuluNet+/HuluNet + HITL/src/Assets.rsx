<Screen
  id="Assets"
  _customShortcuts={[]}
  _hashParams={[]}
  _searchParams={[]}
  browserTitle=""
  title={null}
  urlSlug=""
>
  <SqlQueryUnified
    id="getAssets"
    query={include("../lib/getAssets.sql", "string")}
    resourceDisplayName="retool_db"
    resourceName="9d12bf10-436a-415e-8f23-63bb2953ef08"
    warningCodes={[]}
  />
  <WorkflowRun
    id="startTrigger"
    isMultiplayerEdited={false}
    notificationDuration={4.5}
    resourceName="WorkflowRun"
    showSuccessToaster={false}
    workflowId="f62af3cf-fd94-4575-b0d8-bc3a18e430b0"
    workflowParams={include("../lib/startTrigger.json", "string")}
    workflowRunBodyType="json"
    workflowRunExecutionType="async"
  >
    <Event
      event="failure"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="getMaxId"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </WorkflowRun>
  <SqlQueryUnified
    id="getMaxId"
    query={include("../lib/getMaxId.sql", "string")}
    resourceDisplayName="retool_db"
    resourceName="9d12bf10-436a-415e-8f23-63bb2953ef08"
    warningCodes={[]}
  >
    <Event
      event="success"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="startTrigger"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </SqlQueryUnified>
  <RetoolAIQuery
    id="chat1_query1"
    action="chatResponseGeneration"
    chatHistory="{{ chat.messageHistory }}"
    chatInput="{{ chat.lastMessage }} and use {{ query1.data}} for context"
    defaultModelInitialized={true}
    isMultiplayerEdited={false}
    resourceDisplayName="retool_ai"
    resourceName="retool_ai"
    vectorModeEnabled={true}
  />
  <SqlQueryUnified
    id="query1"
    query={include("../lib/query1.sql", "string")}
    resourceDisplayName="retool_db"
    resourceName="9d12bf10-436a-415e-8f23-63bb2953ef08"
    warningCodes={[]}
  />
  <SqlQueryUnified
    id="query6"
    notificationDuration={4.5}
    resourceDisplayName="retool_db"
    resourceName="9d12bf10-436a-415e-8f23-63bb2953ef08"
    showSuccessToaster={false}
    showUpdateSetValueDynamicallyToggle={false}
    updateSetValueDynamically={true}
  />
  <SqlQueryUnified
    id="query7"
    query={include("../lib/query7.sql", "string")}
    resourceDisplayName="retool_db"
    resourceName="9d12bf10-436a-415e-8f23-63bb2953ef08"
    warningCodes={[]}
  />
  <Frame
    id="$main2"
    enableFullBleed={false}
    isHiddenOnDesktop={false}
    isHiddenOnMobile={false}
    padding="8px 12px"
    sticky={null}
    type="main"
  >
    <Container
      id="tabbedContainer1"
      currentViewKey="{{ self.viewKeys[0] }}"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      padding="12px"
      showBody={true}
      showHeader={true}
      style={{ ordered: [{ borderRadius: "24px" }] }}
    >
      <Header>
        <Multiselect
          id="multiselect1"
          data="{{ getAssets.data }}"
          emptyMessage="No options"
          label="Filter by Type"
          labelPosition="top"
          labels="{{ item.type }}"
          overlayMaxHeight={375}
          placeholder="Select options"
          showSelectionIndicator={true}
          values="{{ item.type }}"
          wrapTags={true}
        />
        <Multiselect
          id="multiselect2"
          data="{{ getAssets.data }}"
          emptyMessage="No options"
          label="Filter by Country"
          labelPosition="top"
          labels=""
          overlayMaxHeight={375}
          placeholder="Select options"
          showSelectionIndicator={true}
          values="{{ item.country }}"
          wrapTags={true}
        >
          <Event
            event="change"
            method="trigger"
            params={{ ordered: [] }}
            pluginId="getAssets"
            type="datasource"
            waitMs="0"
            waitType="debounce"
          />
        </Multiselect>
        <Tabs
          id="tabs1"
          itemMode="static"
          navigateContainer={true}
          targetContainerId="tabbedContainer1"
          value="{{ self.values[0] }}"
        >
          <Option id="b8f7b" value="Tab 1" />
          <Option id="e86a4" value="Tab 2" />
          <Option id="1fcdb" value="Tab 3" />
        </Tabs>
      </Header>
      <View id="eeaa9" viewKey="Latest Assets">
        <Table
          id="table2"
          actionsOverflowPosition={1}
          cellSelection="none"
          clearChangesetOnSave={true}
          data="{{ getAssets.data }}"
          defaultFilters={{
            0: {
              ordered: [
                { id: "6354d" },
                { columnId: "4c4bf" },
                { operator: "intersects" },
                { value: "{{ multiselect1.value }}" },
                { disabled: false },
              ],
            },
            1: {
              ordered: [
                { id: "24a8a" },
                { columnId: "8a399" },
                { operator: "intersects" },
                { value: "{{ multiselect2.value }}" },
                { disabled: false },
              ],
            },
          }}
          defaultSelectedRow={{ mode: "index", indexType: "display", index: 0 }}
          emptyMessage="No rows found"
          enableSaveActions={true}
          groupByColumns={{}}
          heightType="auto"
          linkedFilterId=""
          overflowType="pagination"
          primaryKeyColumnId="8448a"
          rowHeight="medium"
          showFooter={true}
          showHeader={true}
          style={{ borderRadius: "20px" }}
          toolbarPosition="bottom"
        >
          <Column
            id="8448a"
            alignment="right"
            editableOptions={{ showStepper: true }}
            format="decimal"
            formatOptions={{ showSeparators: true, notation: "standard" }}
            groupAggregationMode="sum"
            key="id"
            label="ID"
            placeholder="Enter value"
            position="center"
            size={100}
          />
          <Column
            id="03934"
            alignment="left"
            format="string"
            groupAggregationMode="none"
            key="name"
            label="Name"
            placeholder="Enter value"
            position="center"
            size={100}
          />
          <Column
            id="4c4bf"
            alignment="left"
            format="tag"
            formatOptions={{ automaticColors: true }}
            groupAggregationMode="none"
            key="type"
            label="Type"
            placeholder="Select option"
            position="center"
            size={100}
            valueOverride="{{ _.startCase(item) }}"
          />
          <Column
            id="13446"
            alignment="left"
            format="link"
            formatOptions={{ showUnderline: "hover" }}
            groupAggregationMode="none"
            key="media"
            label="Media"
            position="center"
            size={100}
          >
            <Event
              event="clickCell"
              method="openUrl"
              params={{ ordered: [{ url: "{{ item }}" }] }}
              pluginId=""
              type="util"
              waitMs="0"
              waitType="debounce"
            />
          </Column>
          <Column
            id="beb9b"
            alignment="left"
            format="string"
            groupAggregationMode="none"
            key="description"
            label="Description"
            placeholder="Enter value"
            position="center"
            size={430}
          />
          <Column
            id="86dd4"
            alignment="left"
            format="tag"
            formatOptions={{ automaticColors: true }}
            groupAggregationMode="none"
            key="language"
            label="Language"
            placeholder="Select option"
            position="center"
            size={165}
            valueOverride="{{ _.startCase(item) }}"
          />
          <Column
            id="8a399"
            alignment="left"
            format="tag"
            formatOptions={{ automaticColors: true }}
            groupAggregationMode="none"
            key="country"
            label="Country"
            placeholder="Select option"
            position="center"
            size={161}
            valueOverride="{{ _.startCase(item) }}"
          />
          <Column
            id="e5438"
            alignment="right"
            editableOptions={{ showStepper: true }}
            format="decimal"
            formatOptions={{ showSeparators: true, notation: "standard" }}
            groupAggregationMode="sum"
            key="spend"
            label="Spend"
            placeholder="Enter value"
            position="center"
            size={100}
          />
          <Action id="802df" icon="bold/interface-edit-pencil" label="Action 1">
            <Event
              event="clickAction"
              method="trigger"
              params={{ ordered: [] }}
              pluginId="startTrigger"
              type="datasource"
              waitMs="0"
              waitType="debounce"
            />
          </Action>
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
        </Table>
      </View>
    </Container>
    <Form
      id="form3"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      padding="12px"
      requireValidation={true}
      resetAfterSubmit={true}
      scroll={true}
      showBody={true}
      showFooter={true}
      showHeader={true}
      style={{ ordered: [{ borderRadius: "24px" }] }}
      styleContext={{ ordered: [{ borderRadius: "24px" }] }}
    >
      <Header>
        <Text id="formTitle3" value="#### Place Order" verticalAlign="center" />
      </Header>
      <Body>
        <NumberInput
          id="numberInput2"
          currency="USD"
          disabled="true"
          formDataKey="id"
          inputValue={0}
          label="Id"
          labelPosition="top"
          placeholder="Enter value"
          required={true}
          showSeparators={true}
          showStepper={true}
          value="{{getMaxId.data.max['0']+1}}"
        />
        <Date
          id="date1"
          dateFormat="MMM d, yyyy"
          datePlaceholder="{{ self.dateFormat.toUpperCase() }}"
          formDataKey="deadline"
          iconBefore="bold/interface-calendar"
          label="Deadline"
          labelPosition="top"
          required={true}
          value="{{ new Date() }}"
        />
        <DateTime
          id="dateTime1"
          dateFormat="MMM d, yyyy"
          datePlaceholder="{{ self.dateFormat.toUpperCase() }}"
          formDataKey="date"
          iconBefore="bold/interface-calendar"
          label="Date"
          labelPosition="top"
          minuteStep={15}
          required={true}
          value="{{ new Date() }}"
        />
        <Select
          id="select2"
          emptyMessage="No options"
          itemMode="static"
          label="Type"
          labelPosition="top"
          overlayMaxHeight={375}
          placeholder="Select an option"
          showSelectionIndicator={true}
          value="From Existing Asset"
        >
          <Option id="e4f88" value="New" />
          <Option id="86072" value="From Existing Asset" />
        </Select>
        <Select
          id="select3"
          data="{{ getAssets.data }}"
          emptyMessage="No options"
          label="Asset Type"
          labelPosition="top"
          labels="{{ item.name }}"
          overlayMaxHeight={375}
          placeholder="Select an option"
          required={true}
          showSelectionIndicator={true}
          value="From Existing"
          values="{{ item.type }}"
        />
        <TextArea
          id="textArea5"
          autoResize={true}
          formDataKey="description"
          label="Description"
          labelPosition="top"
          minLines={2}
          placeholder="Enter value"
          required={true}
          value="{{ table2.selectedRow.description }}"
        />
        <TextArea
          id="textArea6"
          autoResize={true}
          formDataKey="ordered_by"
          label="Ordered by"
          labelPosition="top"
          minLines={2}
          placeholder="Enter value"
          value="{{ current_user.fullName }}"
        />
      </Body>
      <Footer>
        <Button
          id="formButton3"
          submit={true}
          submitTargetId="form3"
          text="Submit"
        />
      </Footer>
      <Event
        event="submit"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="startTrigger"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Form>
    <Text id="text4" value="#### Ordered Assets ###" verticalAlign="center" />
    <TextInput
      id="textInput2"
      label="Search"
      labelPosition="top"
      placeholder="Enter value"
    />
    <Table
      id="table5"
      cellSelection="none"
      clearChangesetOnSave={true}
      data="{{ query7.data }}"
      defaultFilters={{
        0: {
          ordered: [
            { id: "7fbb2" },
            { columnId: "624b5" },
            { operator: "includes" },
            { value: "{{ textInput2.value }}" },
            { disabled: false },
          ],
        },
      }}
      defaultSelectedRow={{ mode: "index", indexType: "display", index: 0 }}
      emptyMessage="No rows found"
      enableSaveActions={true}
      primaryKeyColumnId="ab9d0"
      showBorder={true}
      showFooter={true}
      showHeader={true}
      toolbarPosition="bottom"
    >
      <Column
        id="ab9d0"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        key="id"
        label="ID"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="cd5a3"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="order_type"
        label="Order type"
        placeholder="Select option"
        position="center"
        size={100}
        summaryAggregationMode="none"
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="55ced"
        alignment="left"
        format="datetime"
        groupAggregationMode="none"
        hidden="true"
        key="date"
        label="Date"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="624b5"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="ordered_by"
        label="Ordered by"
        placeholder="Select option"
        position="center"
        size={100}
        summaryAggregationMode="none"
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="b7947"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="description"
        label="Description"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="e53e2"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="status"
        label="Status"
        placeholder="Select option"
        position="center"
        size={100}
        summaryAggregationMode="none"
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="7b430"
        alignment="left"
        format="date"
        groupAggregationMode="none"
        hidden="true"
        key="deadline"
        label="Deadline"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="90e40"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        hidden="true"
        key="asset_id"
        label="Asset ID"
        placeholder="Enter value"
        position="center"
        size={100}
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
          pluginId="table5"
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
          pluginId="table5"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </ToolbarButton>
    </Table>
  </Frame>
</Screen>
