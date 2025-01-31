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
      '[{"key":"description","value":"{{ textInput4.value }}"},{"key":"id","value":"{{ getMaxId.data.new_id[0]}}"}]'
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
  />
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
  <RetoolAIQuery
    id="query7"
    notificationDuration={4.5}
    resourceDisplayName="retool_ai"
    resourceName="retool_ai"
    showSuccessToaster={false}
  />
  <RetoolAIQuery
    id="chat1_query1"
    action="chatResponseGeneration"
    chatHistory="{{ chat1.messageHistory }}"
    chatInput="{{ chat1.lastMessage }} extract all information from {{ getAssetMedia.data }} and {{getAssets.data }} to give an answer"
    defaultModelInitialized={true}
    isMultiplayerEdited={false}
    resourceDisplayName="retool_ai"
    resourceName="retool_ai"
  />
  <SqlQueryUnified
    id="getType"
    notificationDuration={4.5}
    query={include("../lib/getType.sql", "string")}
    resourceDisplayName="retool_db"
    resourceName="9d12bf10-436a-415e-8f23-63bb2953ef08"
    showSuccessToaster={false}
    showUpdateSetValueDynamicallyToggle={false}
    updateSetValueDynamically={true}
    warningCodes={[]}
  />
  <Include src="./modalFrame1.rsx" />
  <Include src="./sidebar1.rsx" />
  <Include src="./userTaskModal.rsx" />
  <Frame
    id="$main"
    enableFullBleed={false}
    isHiddenOnDesktop={false}
    isHiddenOnMobile={false}
    padding="0"
    sticky={null}
    type="main"
  >
    <IconText
      id="iconText1"
      iconPosition="right"
      margin="0"
      style={{
        ordered: [
          { iconColor: "rgba(241, 238, 238, 1)" },
          { fontSize: "h2Font" },
          { fontWeight: "h2Font" },
          { fontFamily: "h2Font" },
          { iconGap: "8px" },
          { color: "rgb(255, 255, 255)" },
        ],
      }}
      text="Planning & Orders"
    />
    <Include src="./group1.rsx" />
  </Frame>
</Screen>
