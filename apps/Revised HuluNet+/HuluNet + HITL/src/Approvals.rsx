<Screen
  id="Approvals"
  _customShortcuts={[]}
  _hashParams={[]}
  _searchParams={[]}
  browserTitle=""
  title="Approvals"
  urlSlug=""
>
  <RetoolUserActionQuery
    id="getUserTasks"
    actionCategory="userTask"
    actionType="get_tasks"
    enableTransformer={true}
    endingBefore=""
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    fromAppUuid="cb8859e4-e802-11ef-b80f-0fd87ce23819"
    isMultiplayerEdited={false}
    resourceName="RetoolUserAction"
    resourceTypeOverride=""
    runWhenPageLoads={true}
    selectedUserTaskDefinitionIds={'["cd564196-2696-4529-baef-1101c7e11392"]'}
    selectedUserTaskName=""
    selectedWorkflowIds={'["f62af3cf-fd94-4575-b0d8-bc3a18e430b0"]'}
    startingAfter=""
    taskName=""
    transformer="// Query results are available as the data variable
return data"
    workflowActionType={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  />
  <RetoolUserActionQuery
    id="getSingleUserTask"
    actionCategory="userTask"
    actionType="get_task"
    enableTransformer={true}
    endingBefore=""
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    fromAppUuid="cb8859e4-e802-11ef-b80f-0fd87ce23819"
    isMultiplayerEdited={false}
    queryDisabled="{{ urlparams.hash.userTaskId === undefined }}"
    resourceName="RetoolUserAction"
    resourceTypeOverride=""
    runWhenPageLoads={true}
    selectedUserTaskName=""
    startingAfter=""
    taskName=""
    transformer="// Query results are available as the data variable
return data"
    userTaskInstanceId="{{ urlparams.hash.userTaskId }}"
    watchedParams={["urlparams.hash.userTaskId"]}
    workflowActionType={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  />
  <RetoolUserActionQuery
    id="submitUserTask"
    actionCategory="userTask"
    actionType="complete_task"
    endingBefore=""
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    outputPayload={'{ "approved": {{ select1.value}} }'}
    resourceName="RetoolUserAction"
    resourceTypeOverride=""
    selectedUserTaskName=""
    startingAfter=""
    taskName=""
    transformer="// Query results are available as the data variable
return data"
    userTaskInstanceId="{{ table1.selectedRow.id }}"
    workflowActionType={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  >
    <Event
      event="success"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="getUserTasks"
      type="datasource"
      waitMs="500"
      waitType="debounce"
    />
  </RetoolUserActionQuery>
  <Frame
    id="$main"
    enableFullBleed={false}
    isHiddenOnDesktop={false}
    isHiddenOnMobile={false}
    padding="8px 12px"
    sticky={null}
    type="main"
  >
    <Container
      id="container1"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      padding="12px"
      showBody={true}
      showHeader={true}
    >
      <Header>
        <IconText
          id="iconText1"
          icon="bold/interface-alert-information-circle"
          style={{ ordered: [{ fontSize: "h4Font" }, { fontWeight: "700" }] }}
          text="Review Orders"
          textSize="h4"
        />
      </Header>
      <View id="878f3" viewKey="View 1">
        <Text
          id="text2"
          style={{
            ordered: [
              { fontSize: "labelFont" },
              { fontWeight: "labelFont" },
              { fontFamily: "labelFont" },
            ],
          }}
          value="👋 **Hello {{ current_user.firstName || 'friend' }}!** Please review and approve or deny the orders from Marketing.

"
          verticalAlign="center"
        />
      </View>
    </Container>
    <TextInput
      id="textInput1"
      label="Search Task"
      labelPosition="top"
      placeholder="Enter value"
      style={{ ordered: [{ borderRadius: "20px" }] }}
    />
    <Table
      id="table1"
      autoColumnWidth={true}
      cellSelection="none"
      clearChangesetOnSave={true}
      data="{{ getUserTasks.data.data}}"
      defaultFilters={{
        0: {
          ordered: [
            { id: "92552" },
            { columnId: "37c1a" },
            { operator: "includes" },
            { value: "{{textInput1.value}}" },
            { disabled: false },
          ],
        },
      }}
      defaultSelectedRow={{ mode: "index", indexType: "display", index: 0 }}
      dynamicColumnProperties={{ formatByIndex: "auto" }}
      emptyMessage="No tasks exist yet. Run the workflow to create one."
      enableSaveActions={true}
      groupByColumns={{}}
      groupedColumnConfig={{ expandByDefault: false }}
      heightType="auto"
      overflowType="pagination"
      primaryKeyColumnId="c3bc1"
      rowHeight="small"
      showFooter={true}
      showHeader={true}
      style={{ rowSeparator: "rgba(255, 255, 255, 1)", borderRadius: "20px" }}
      templatePageSize="5"
      toolbarPosition="bottom"
    >
      <Column
        id="af236"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        hidden="true"
        key="workflowName"
        label="Workflow name"
        placeholder="Select option"
        position="center"
        size={290.65625}
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="37c1a"
        alignment="left"
        editable="false"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        hidden="true"
        key="status"
        label="Status"
        optionList={{
          manualData: [
            {
              ordered: [
                { value: "Submitted" },
                { color: "rgb(167, 243, 208)" },
              ],
            },
            {
              ordered: [
                { value: "Expired\n" },
                { color: "rgb(253, 230, 138)" },
              ],
            },
            {
              ordered: [
                { value: "Cancelled\n" },
                { color: "rgb(254, 202, 202)" },
              ],
            },
            {
              ordered: [{ value: "Pending" }, { color: "rgb(238, 207, 243)" }],
            },
          ],
        }}
        placeholder="Select option"
        position="center"
        size={50.5}
        summaryAggregationMode="none"
        valueOverride="{{ _.startCase(item) }}"
      >
        <Event
          event="clickCell"
          method="trigger"
          params={{ ordered: [] }}
          pluginId="getUserTasks"
          type="datasource"
          waitMs="0"
          waitType="debounce"
        />
      </Column>
      <Column
        id="68d9c"
        alignment="left"
        format="json"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        hidden="true"
        key="context"
        label="Asset Description"
        placeholder="Enter value"
        position="left"
        size={572.03125}
        summaryAggregationMode="none"
        valueOverride="{{ item.description }}"
      />
      <Column
        id="fae99"
        alignment="left"
        format="datetime"
        groupAggregationMode="none"
        hidden="true"
        key="createdAt"
        label="Created at"
        placeholder="Enter value"
        position="center"
        size={139.0625}
        summaryAggregationMode="none"
      />
      <Column
        id="4e538"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        hidden="true"
        key="workflowRelease"
        label="Workflow release"
        placeholder="Enter value"
        position="center"
        size={111.421875}
      />
      <Column
        id="5f1e6"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        hidden="true"
        key="userTaskLink"
        label="Task URL"
        placeholder="Enter value"
        position="center"
        size={763.296875}
      />
      <Column
        id="a2645"
        alignment="left"
        format="datetime"
        groupAggregationMode="none"
        hidden="true"
        key="completedAt"
        label="Completed at"
        placeholder="Enter value"
        position="center"
        size={90.015625}
      />
      <Column
        id="c3bc1"
        alignment="left"
        editable="false"
        editableOptions={{ showStepper: true }}
        format="string"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        key="id"
        label="ID"
        placeholder="Enter value"
        position="center"
        size={245}
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
          pluginId="table1"
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
          pluginId="table1"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </ToolbarButton>
    </Table>
    <Container
      id="container2"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      padding="12px"
      showBody={true}
      showHeader={true}
      style={{ ordered: [{ borderRadius: "20px" }] }}
    >
      <Header>
        <Text id="containerTitle1" value="#### Info" verticalAlign="center" />
      </Header>
      <View id="b2b34" viewKey="View 1">
        <KeyValue
          id="keyValue1"
          data="{
  id: {{ table1.selectedRow.id }},
  description:{{table1.selectedRow.context }},
  Status: {{ table1.selectedRow.status}},
  createdAt: {{table1.selectedRow.createdAt}} ,
}"
          editIcon="bold/interface-edit-pencil"
          enableSaveActions={true}
          groupLayout="singleColumn"
          itemLabelPosition="top"
          labelWrap={true}
          style={{
            labelFontSize: "h5Font",
            labelFontWeight: "h5Font",
            labelFontFamily: "h5Font",
          }}
        >
          <Property
            id="id"
            editable="false"
            editableOptions={{}}
            format="string"
            formatOptions={{}}
            hidden="false"
            label="ID"
          />
          <Property
            id="role"
            editable="false"
            editableOptions={{}}
            format="string"
            formatOptions={{}}
            hidden="false"
            label="Role"
          />
          <Property
            id="Status"
            editable="false"
            editableOptions={{}}
            format="string"
            formatOptions={{}}
            hidden="false"
            label="Status"
          />
        </KeyValue>
      </View>
    </Container>
    <Form
      id="form1"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      heightType="fixed"
      padding="12px"
      requireValidation={true}
      resetAfterSubmit={true}
      showBody={true}
      showFooter={true}
      showHeader={true}
      style={{ ordered: [{ borderRadius: "24px" }] }}
    >
      <Header>
        <Text
          id="formTitle1"
          value="#### Approve or Reject"
          verticalAlign="center"
        />
      </Header>
      <Body>
        <Select
          id="select1"
          emptyMessage="No options"
          itemMode="static"
          label="Approval Status"
          labelPosition="top"
          overlayMaxHeight={375}
          placeholder="Select an option"
          showSelectionIndicator={true}
        >
          <Option id="d8e90" value="Approved" />
          <Option id="43869" value="Denied" />
        </Select>
      </Body>
      <Footer>
        <Button
          id="formButton1"
          submit={true}
          submitTargetId="form1"
          text="Submit"
        />
      </Footer>
      <Event
        event="submit"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="submitUserTask"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Form>
    <Text
      id="text3"
      value="{{ table1.selectedRow.t }}"
      verticalAlign="center"
    />
  </Frame>
</Screen>
