<Screen
  id="approvals"
  _customShortcuts={[]}
  _hashParams={[]}
  _searchParams={[]}
  title={null}
  urlSlug=""
>
  <SqlQueryUnified
    id="pullNewOrders"
    isHidden={false}
    query={include("../lib/pullNewOrders.sql", "string")}
    resourceDisplayName="retool_db"
    resourceName="9d12bf10-436a-415e-8f23-63bb2953ef08"
    warningCodes={[]}
  />
  <RetoolUserActionQuery
    id="getApprovals"
    actionCategory="userTask"
    actionType="get_tasks"
    fromAppUuid="247f6602-da46-11ef-95ca-f3b5ffd10bda"
    isHidden={false}
    isMultiplayerEdited={false}
    notificationDuration={4.5}
    resourceName="RetoolUserAction"
    runWhenModelUpdates={true}
    selectedStatuses={'["pending"]'}
    selectedUserTaskDefinitionIds={'["52e8ee2e-c9b0-4969-97a6-2bec9ef0ad5f"]'}
    selectedWorkflowIds={'["c0ac8b5e-3ef8-48b5-8a46-34b9537848ad"]'}
    showSuccessToaster={false}
  />
  <RetoolUserActionQuery
    id="setApprovals"
    actionCategory="userTask"
    actionType="complete_task"
    fromAppUuid="247f6602-da46-11ef-95ca-f3b5ffd10bda"
    isHidden={false}
    isMultiplayerEdited={false}
    outputPayload="{'approved': {{select7.value}} }"
    resourceName="RetoolUserAction"
    userTaskInstanceId="{{ table3.selectedRow.id }}"
  >
    <Event
      event="success"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="getUserTasks"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </RetoolUserActionQuery>
  <RetoolUserActionQuery
    id="getUserTasks"
    actionCategory="userTask"
    actionType="get_tasks"
    fromAppUuid="247f6602-da46-11ef-95ca-f3b5ffd10bda"
    isHidden={false}
    resourceName="RetoolUserAction"
    runWhenPageLoads={true}
    selectedUserTaskDefinitionIds={'["52e8ee2e-c9b0-4969-97a6-2bec9ef0ad5f"]'}
    selectedWorkflowIds={'["c0ac8b5e-3ef8-48b5-8a46-34b9537848ad"]'}
  />
  <WorkflowRun
    id="query15"
    isHidden={false}
    notificationDuration={4.5}
    resourceName="WorkflowRun"
    showSuccessToaster={false}
    workflowRunExecutionType="async"
  />
  <Include src="./splitPaneFrame1.rsx" />
  <Frame
    id="$main4"
    enableFullBleed={false}
    isHiddenOnDesktop={false}
    isHiddenOnMobile={false}
    padding="8px 12px"
    sticky={null}
    type="main"
  >
    <Container
      id="container4"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      heightType="fixed"
      padding="12px"
      showBody={true}
      showHeader={true}
    >
      <Header>
        <Text
          id="containerTitle4"
          value="#### Approvals"
          verticalAlign="center"
        />
      </Header>
      <View id="e793c" viewKey="View 1">
        <Table
          id="table3"
          actionsOverflowPosition={1}
          cellSelection="none"
          clearChangesetOnSave={true}
          data="{{ getUserTasks.data.data }}"
          defaultSelectedRow={{ mode: "index", indexType: "display", index: 0 }}
          emptyMessage="No rows found"
          enableSaveActions={true}
          primaryKeyColumnId="5248b"
          rowHeight="medium"
          showBorder={true}
          showFooter={true}
          showHeader={true}
          style={{ hoverRowBackground: "rgba(255, 255, 255, 0.5)" }}
          toolbarPosition="bottom"
        >
          <Column
            id="5248b"
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
            size={304.421875}
            summaryAggregationMode="none"
          />
          <Column
            id="43032"
            alignment="left"
            format="tag"
            formatOptions={{ automaticColors: true }}
            groupAggregationMode="none"
            key="status"
            label="Status"
            placeholder="Select option"
            position="center"
            size={263.875}
            summaryAggregationMode="none"
            valueOverride="{{ _.startCase(item) }}"
          />
          <Column
            id="db880"
            alignment="left"
            format="string"
            groupAggregationMode="none"
            key="workflowId"
            label="Workflow ID"
            placeholder="Enter value"
            position="center"
            size={100}
            summaryAggregationMode="none"
          />
          <Column
            id="a0854"
            alignment="left"
            format="string"
            groupAggregationMode="none"
            key="workflowName"
            label="Workflow name"
            placeholder="Enter value"
            position="center"
            size={100}
            summaryAggregationMode="none"
          />
          <Column
            id="43c01"
            alignment="left"
            format="string"
            groupAggregationMode="none"
            key="workflowRunId"
            label="Workflow run ID"
            placeholder="Enter value"
            position="center"
            size={234}
            summaryAggregationMode="none"
          />
          <Column
            id="2c9ef"
            alignment="left"
            format="string"
            groupAggregationMode="none"
            key="taskName"
            label="Task name"
            placeholder="Enter value"
            position="center"
            size={100}
            summaryAggregationMode="none"
          />
          <Column
            id="04c84"
            alignment="left"
            format="json"
            groupAggregationMode="none"
            key="context"
            label="Context"
            placeholder="Enter value"
            position="center"
            size={100}
            summaryAggregationMode="none"
          />
          <Column
            id="0108d"
            alignment="left"
            format="datetime"
            groupAggregationMode="none"
            key="createdAt"
            label="Created at"
            placeholder="Enter value"
            position="center"
            size={100}
            summaryAggregationMode="none"
          />
          <Column
            id="7871c"
            alignment="left"
            cellTooltipMode="overflow"
            format="tags"
            formatOptions={{ automaticColors: true }}
            groupAggregationMode="none"
            key="userTaskLinks"
            label="User task links"
            placeholder="Select options"
            position="center"
            size={100}
            summaryAggregationMode="none"
          />
          <Column
            id="283f3"
            alignment="left"
            cellTooltipMode="overflow"
            format="tags"
            formatOptions={{ automaticColors: true }}
            groupAggregationMode="none"
            key="assignees"
            label="Assignees"
            placeholder="Select options"
            position="center"
            size={100}
            summaryAggregationMode="none"
          />
          <Column
            id="42bb2"
            alignment="left"
            format="string"
            groupAggregationMode="none"
            key="workflowRelease"
            label="Workflow release"
            placeholder="Enter value"
            position="center"
            size={100}
            summaryAggregationMode="none"
          />
          <Column
            id="64341"
            alignment="left"
            format="datetime"
            groupAggregationMode="none"
            key="expiresAt"
            label="Expires at"
            placeholder="Enter value"
            position="center"
            size={100}
            summaryAggregationMode="none"
          />
          <Action
            id="c276d"
            icon="bold/interface-edit-pencil"
            label="Action 1"
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
        </Table>
        <Select
          id="select7"
          emptyMessage="No options"
          itemMode="static"
          label="Approval"
          labelPosition="top"
          overlayMaxHeight={375}
          placeholder="Select an option"
          showSelectionIndicator={true}
        >
          <Option id="73b62" value="Deny" />
          <Option id="9f823" value="Approve" />
        </Select>
        <Button id="button3" text="Button">
          <Event
            event="click"
            method="trigger"
            params={{ ordered: [] }}
            pluginId="setApprovals"
            type="datasource"
            waitMs="0"
            waitType="debounce"
          />
        </Button>
      </View>
    </Container>
  </Frame>
</Screen>
