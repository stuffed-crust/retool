<Screen
  id="Assets"
  _customShortcuts={[]}
  _hashParams={[]}
  _searchParams={[]}
  title={null}
  urlSlug=""
>
  <SqlQueryUnified
    id="query2"
    query={include("../lib/query2.sql", "string")}
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
    chatHistory="{{ chat1.messageHistory }}"
    chatInput="{{ chat1.lastMessage }} and use assets_orders"
    defaultModelInitialized={true}
    resourceDisplayName="retool_ai"
    resourceName="retool_ai"
    vectorModeEnabled={true}
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
          data="{{ query2.data }}"
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
          data="{{ query2.data }}"
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
            pluginId="query2"
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
          data="{{ query2.data }}"
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
          heightType="auto"
          linkedFilterId=""
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
            summaryAggregationMode="none"
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
            summaryAggregationMode="none"
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
            summaryAggregationMode="none"
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
            summaryAggregationMode="none"
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
            size={100}
            summaryAggregationMode="none"
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
            size={100}
            summaryAggregationMode="none"
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
            summaryAggregationMode="none"
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
            summaryAggregationMode="none"
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
        <Text id="formTitle3" value="#### Order Asset" verticalAlign="center" />
      </Header>
      <Body>
        <NumberInput
          id="numberInput2"
          currency="USD"
          disabled="true"
          formDataKey="id"
          inputValue={0}
          label="ID"
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
        <TextArea
          id="textArea3"
          autoResize={true}
          formDataKey="status"
          label="Status"
          labelPosition="top"
          minLines={2}
          placeholder="Enter value"
        />
        <TextArea
          id="textArea4"
          autoResize={true}
          formDataKey="order_type"
          label="Order type"
          labelPosition="top"
          minLines={2}
          placeholder="Enter value"
        />
        <TextArea
          id="textArea5"
          autoResize={true}
          formDataKey="description"
          label="Description"
          labelPosition="top"
          minLines={2}
          placeholder="Enter value"
        />
        <TextArea
          id="textArea6"
          autoResize={true}
          formDataKey="ordered_by"
          label="Ordered by"
          labelPosition="top"
          minLines={2}
          placeholder="Enter value"
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
      _sessionStorageId="57aab9d8-3381-43a5-b3ca-acc2b0884440"
      assistantName="Retool AI"
      avatarFallback="{{ current_user.fullName }}"
      avatarImageSize={32}
      avatarSrc="{{ current_user.profilePhotoUrl }}"
      emptyDescription="Send a message to chat with AI"
      emptyTitle="No messages here yet"
      placeholder="Type a message"
      queryTargetId="chat1_query1"
      showAvatar={true}
      showEmptyState={true}
      showHeader={true}
      showTimestamp={true}
      style={{
        ordered: [
          { background: "automatic" },
          { containerBorderRadius: "24px" },
        ],
      }}
      title="Chat"
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
  </Frame>
</Screen>
