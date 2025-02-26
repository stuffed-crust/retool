<Screen
  id="Hulu_CoPilot"
  _customShortcuts={[]}
  _hashParams={[]}
  _searchParams={[]}
  browserTitle=""
  title={null}
  urlSlug=""
>
  <RetoolAIQuery
    id="chat2_query1"
    action="chatResponseGeneration"
    chatHistory="{{ chat2.messageHistory }}"
    chatInput="{{ chat2.lastMessage }} and use {{ query8.data}} for context"
    customTemperature=".8"
    defaultModelInitialized={true}
    resourceDisplayName="retool_ai"
    resourceName="retool_ai"
  />
  <SqlQueryUnified
    id="query8"
    query={include("../lib/query8.sql", "string")}
    resourceDisplayName="retool_db"
    resourceName="9d12bf10-436a-415e-8f23-63bb2953ef08"
    warningCodes={[]}
  />
  <Frame
    id="$main7"
    enableFullBleed={false}
    isHiddenOnDesktop={false}
    isHiddenOnMobile={false}
    padding="8px 12px"
    sticky={null}
    type="main"
  >
    <Container
      id="container3"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      padding="12px"
      showBody={true}
      showHeader={true}
    >
      <Header>
        <Text
          id="containerTitle2"
          value="#### Co-pilot"
          verticalAlign="center"
        />
      </Header>
      <View id="93394" viewKey="View 1">
        <Chat
          id="chat2"
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
          _sessionStorageId="8ee6eeae-cb36-450e-a0b2-54c3617b5f7b"
          assistantName="Retool AI"
          avatarFallback="{{ current_user.fullName }}"
          avatarImageSize={32}
          avatarSrc="{{ current_user.profilePhotoUrl }}"
          emptyDescription="Send a message to chat with AI"
          emptyTitle="No messages here yet"
          placeholder="Type a message"
          queryTargetId="chat2_query1"
          showAvatar={true}
          showEmptyState={true}
          showHeader={true}
          showTimestamp={true}
          style={{ ordered: [{ background: "automatic" }] }}
          title="Chat"
        >
          <Event
            event="clickAction"
            method="copyToClipboard"
            params={{ ordered: [{ value: "{{ currentMessage.value }}" }] }}
            pluginId="chat2"
            targetId="1a"
            type="util"
            waitMs="0"
            waitType="debounce"
          />
          <Event
            event="clickHeader"
            method="exportData"
            pluginId="chat2"
            targetId="2b"
            type="widget"
            waitMs="0"
            waitType="debounce"
          />
          <Event
            event="clickHeader"
            method="clearHistory"
            pluginId="chat2"
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
