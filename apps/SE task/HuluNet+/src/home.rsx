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
    isHidden={false}
    query={include("../lib/getAssets.sql", "string")}
    resourceDisplayName="retool_db"
    resourceName="9d12bf10-436a-415e-8f23-63bb2953ef08"
    warningCodes={[]}
  />
  <SqlQueryUnified
    id="getAssetOrders"
    isHidden={false}
    notificationDuration={4.5}
    query={include("../lib/getAssetOrders.sql", "string")}
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
      '[{"key":"description","value":"{{ textInput5.value }}"},{"key":"id","value":"{{ getMaxId.data.new_id[0]}}"},{"key":"order_type","value":"{{select4.value}}"},{"key":"status","value":"{{select5.value }}"},{"key":"deadline","value":"{{date1.value }}"},{"key":"ordered_by","value":"{{select4.value }}"},{"key":"date","value":"{{ dateTime1.value }}"}]'
    }
    editorMode="gui"
    enableTransformer={true}
    filterBy={'[{"key":"id","value":"1","operation":"="}]'}
    isHidden={false}
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
    isHidden={false}
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
    id="chat1_query1"
    action="chatResponseGeneration"
    chatHistory="{{ chat1.messageHistory }}"
    chatInput="{{ chat1.lastMessage }} use {{getAssets.data }} to answer any question asked with the value"
    defaultModelInitialized={true}
    isHidden={false}
    isMultiplayerEdited={false}
    resourceDisplayName="retool_ai"
    resourceName="retool_ai"
  />
  <SqlQueryUnified
    id="getType"
    isHidden={false}
    notificationDuration={4.5}
    query={include("../lib/getType.sql", "string")}
    resourceDisplayName="retool_db"
    resourceName="9d12bf10-436a-415e-8f23-63bb2953ef08"
    showSuccessToaster={false}
    showUpdateSetValueDynamicallyToggle={false}
    updateSetValueDynamically={true}
    warningCodes={[]}
  />
  <WorkflowRun
    id="updateOrder"
    isHidden={false}
    notificationDuration={4.5}
    resourceName="WorkflowRun"
    showSuccessToaster={false}
    workflowId="c0ac8b5e-3ef8-48b5-8a46-34b9537848ad"
    workflowParams={include("../lib/updateOrder.json", "string")}
  />
  <Include src="./modalFrame2.rsx" />
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
    <Container
      id="group1"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      margin="0"
      padding="0"
      showBody={true}
      showBorder={false}
      style={{ ordered: [{ background: "rgba(186, 185, 185, 0)" }] }}
    >
      <View id="5344a" viewKey="View 1">
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
              margin="0"
              retoolFileObject="{{ HuluAssetDataTable.selectedRow.media }}"
              src=" {{ HuluAssetDataTable.selectedRow.media }}"
            />
          </View>
        </Container>
        <Include src="./container2.rsx" />
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
  </Frame>
</Screen>
