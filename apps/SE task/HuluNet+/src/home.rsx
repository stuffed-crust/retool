<Screen
  id="home"
  _customShortcuts={[]}
  _hashParams={[]}
  _searchParams={[]}
  title="Default Page"
  urlSlug=""
>
  <SqlQueryUnified
    id="getAssets"
    query={include("../lib/getAssets.sql", "string")}
    resourceDisplayName="retool_db"
    resourceName="9d12bf10-436a-415e-8f23-63bb2953ef08"
    warningCodes={[]}
  />
  <SqlQueryUnified
    id="getAssetMedia"
    notificationDuration={4.5}
    query={include("../lib/getAssetMedia.sql", "string")}
    resourceDisplayName="retool_db"
    resourceName="9d12bf10-436a-415e-8f23-63bb2953ef08"
    showSuccessToaster={false}
    showUpdateSetValueDynamicallyToggle={false}
    updateSetValueDynamically={true}
    warningCodes={[]}
  />
  <SqlQueryUnified
    id="orderSubmit"
    actionType="INSERT"
    changeset={
      '[{"key":"description","value":"{{ textInput4.value }}"},{"key":"id","value":"{{ getMaxId.value}}"}]'
    }
    editorMode="gui"
    filterBy={'[{"key":"id","value":"1","operation":"="}]'}
    isMultiplayerEdited={false}
    notificationDuration={4.5}
    query={include("../lib/orderSubmit.sql", "string")}
    resourceDisplayName="retool_db"
    resourceName="9d12bf10-436a-415e-8f23-63bb2953ef08"
    runWhenModelUpdates={false}
    showSuccessToaster={false}
    showUpdateSetValueDynamicallyToggle={false}
    tableName="asset_orders"
    updateSetValueDynamically={true}
    warningCodes={[]}
  >
    <Event
      event="success"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="getMaxId"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </SqlQueryUnified>
  <SqlQueryUnified
    id="getMaxId"
    isMultiplayerEdited={false}
    notificationDuration={4.5}
    query={include("../lib/getMaxId.sql", "string")}
    resourceDisplayName="retool_db"
    resourceName="9d12bf10-436a-415e-8f23-63bb2953ef08"
    showSuccessToaster={false}
    showUpdateSetValueDynamicallyToggle={false}
    updateSetValueDynamically={true}
    warningCodes={[]}
  >
    <Event
      event="success"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="orderSubmit"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </SqlQueryUnified>
  <Include src="./drawerFrame1.rsx" />
  <Include src="./modalFrame1.rsx" />
  <Include src="./sidebar1.rsx" />
  <Include src="./userTaskModal.rsx" />
  <Frame
    id="$main"
    enableFullBleed={false}
    isHiddenOnDesktop={false}
    isHiddenOnMobile={false}
    padding="8px 12px"
    sticky={null}
    type="main"
  >
    <Include src="./container2.rsx" />
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
        <Image
          id="image2"
          fit="contain"
          horizontalAlign="center"
          retoolFileObject="{{ HuluAssetDataTable.selectedRow.media }}"
          src=" {{ HuluAssetDataTable.selectedRow.media }}"
        />
        <Text
          id="text10"
          horizontalAlign="center"
          style={{
            ordered: [
              { fontSize: "22px" },
              { fontWeight: "500" },
              { fontFamily: "Poppins" },
            ],
          }}
          value="{{ HuluAssetDataTable.selectedRow.name }}"
          verticalAlign="center"
        />
      </View>
    </Container>
    <Text
      id="tableTitle2"
      horizontalAlign="center"
      style={{
        ordered: [
          { fontSize: "h4Font" },
          { fontWeight: "h4Font" },
          { fontFamily: "h4Font" },
        ],
      }}
      value="Order New Asset"
      verticalAlign="center"
    />
    <Text
      id="text8"
      horizontalAlign="right"
      value="_Fullfilment team will be notified for approvals of new orders_"
      verticalAlign="center"
    />
    <Button
      id="button2"
      heightType="auto"
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
  </Frame>
</Screen>
