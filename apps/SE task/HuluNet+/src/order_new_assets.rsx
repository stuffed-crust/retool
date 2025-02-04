<Screen
  id="order_new_assets"
  _customShortcuts={[]}
  _hashParams={[]}
  _searchParams={[]}
  title={null}
  urlSlug=""
>
  <SqlQueryUnified
    id="pullNewOrders"
    query={include("../lib/pullNewOrders.sql", "string")}
    resourceDisplayName="retool_db"
    resourceName="9d12bf10-436a-415e-8f23-63bb2953ef08"
    warningCodes={[]}
  />
  <WorkflowRun
    id="query11"
    notificationDuration={4.5}
    resourceName="WorkflowRun"
    showSuccessToaster={false}
  />
  <WorkflowRun
    id="query12"
    notificationDuration={4.5}
    resourceName="WorkflowRun"
    showSuccessToaster={false}
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
          cellSelection="none"
          clearChangesetOnSave={true}
          data="{{ pullNewOrders.data }}"
          defaultSelectedRow={{ mode: "index", indexType: "display", index: 0 }}
          emptyMessage="No rows found"
          enableSaveActions={true}
          primaryKeyColumnId="5248b"
          rowHeight="medium"
          showBorder={true}
          showFooter={true}
          showHeader={true}
          toolbarPosition="bottom"
        >
          <Column
            id="5248b"
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
            id="9ba7b"
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
            id="54744"
            alignment="left"
            format="datetime"
            groupAggregationMode="none"
            key="date"
            label="Date"
            placeholder="Enter value"
            position="center"
            size={100}
            summaryAggregationMode="none"
          />
          <Column
            id="cfe7d"
            alignment="left"
            format="string"
            groupAggregationMode="none"
            key="ordered_by"
            label="Ordered by"
            placeholder="Enter value"
            position="center"
            size={100}
            summaryAggregationMode="none"
          />
          <Column
            id="22ddc"
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
            id="43032"
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
            id="7476d"
            alignment="left"
            format="date"
            groupAggregationMode="none"
            key="deadline"
            label="Deadline"
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
  </Frame>
</Screen>
