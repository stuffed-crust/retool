<SplitPaneFrame
  id="splitPaneFrame1"
  _resizeHandleEnabled={true}
  footerPadding="8px 12px"
  headerPadding="8px 12px"
  isHiddenOnMobile={true}
  padding="8px 12px"
  position="right"
  showFooterBorder={false}
  showHeaderBorder={false}
  width="50%"
>
  <Form
    id="form3"
    footerPadding="4px 12px"
    headerPadding="4px 12px"
    padding="12px"
    requireValidation={true}
    resetAfterSubmit={true}
    showBody={true}
    showFooter={true}
    showHeader={true}
  >
    <Body>
      <Text
        id="text12"
        value="👋 **Hello {{ current_user.firstName || 'friend' }}!**"
        verticalAlign="center"
      />
    </Body>
    <Footer>
      <Select
        id="select6"
        emptyMessage="No options"
        itemMode="static"
        label="Status"
        labelPosition="top"
        overlayMaxHeight={375}
        placeholder="Select an option"
        showSelectionIndicator={true}
      >
        <Option id="d6759" value="Yes" />
        <Option id="9f414" value="No" />
      </Select>
    </Footer>
    <Event
      event="submit"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="setApprovals"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </Form>
</SplitPaneFrame>
