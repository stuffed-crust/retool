<ModalFrame
  id="modalFrame1"
  footerPadding="8px 12px"
  headerPadding="8px 12px"
  hidden={true}
  hideOnEscape={true}
  isHiddenOnMobile={true}
  overlayInteraction={true}
  padding="8px 12px"
  showFooter={true}
  showHeader={true}
  showOverlay={true}
  size="medium"
>
  <Header>
    <Text id="modalTitle2" value="### Order Asset" verticalAlign="center" />
    <Button
      id="modalCloseButton2"
      ariaLabel="Close"
      horizontalAlign="right"
      iconBefore="bold/interface-delete-1"
      style={{ ordered: [{ border: "transparent" }] }}
      styleVariant="outline"
    >
      <Event
        event="click"
        method="setHidden"
        params={{ ordered: [{ hidden: true }] }}
        pluginId="modalFrame1"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </Header>
  <Body>
    <Form
      id="form1"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      initialData="{{ table2.data }}"
      padding="12px"
      requireValidation={true}
      resetAfterSubmit={true}
      scroll={true}
      showBody={true}
      showFooter={true}
      showHeader={true}
    >
      <Header>
        <Text
          id="formTitle1"
          value="#### Fill Out This Form"
          verticalAlign="center"
        />
      </Header>
      <Body>
        <TextInput
          id="textInput2"
          formDataKey="name"
          label="Name"
          labelPosition="top"
          placeholder="Enter value"
          required={true}
        />
        <Select
          id="select1"
          emptyMessage="No options"
          formDataKey="type"
          itemMode="static"
          label="Type"
          labelPosition="top"
          labels={null}
          overlayMaxHeight={375}
          placeholder="Select an option"
          required={true}
          showSelectionIndicator={true}
          value="media"
          values={null}
        >
          <Option id="a5330" value="Option 1" />
          <Option id="96260" value="Option 2" />
          <Option id="6d5ed" value="Option 3" />
        </Select>
        <TextInput
          id="textInput3"
          formDataKey="media"
          label="Media"
          labelPosition="top"
          patternType="url"
          placeholder="retool.com"
          textBefore="https://"
        />
        <TextInput
          id="textInput4"
          formDataKey="description"
          label="Description"
          labelPosition="top"
          placeholder="Enter value"
        />
        <Select
          id="select2"
          emptyMessage="No options"
          formDataKey="language"
          itemMode="static"
          label="Language"
          labelPosition="top"
          labels={null}
          overlayMaxHeight={375}
          placeholder="Select an option"
          required={true}
          showSelectionIndicator={true}
          value="test"
          values={null}
        >
          <Option id="d087c" value="Option 1" />
          <Option id="683e0" value="Option 2" />
          <Option id="eb8ae" value="Option 3" />
        </Select>
        <Select
          id="select3"
          emptyMessage="No options"
          formDataKey="country"
          itemMode="static"
          label="Country"
          labelPosition="top"
          labels={null}
          overlayMaxHeight={375}
          placeholder="Select an option"
          required={true}
          showSelectionIndicator={true}
          value="test"
          values={null}
        >
          <Option id="f8f06" value="Option 1" />
          <Option id="3196d" value="Option 2" />
          <Option id="c9831" value="Option 3" />
        </Select>
        <NumberInput
          id="numberInput2"
          currency="USD"
          formDataKey="spend"
          inputValue={0}
          label="Spend"
          labelPosition="top"
          placeholder="Enter value"
          required={true}
          showSeparators={true}
          showStepper={true}
          value={0}
        />
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
        pluginId="getMaxId"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Form>
  </Body>
  <Event
    event="show"
    method="trigger"
    params={{ ordered: [] }}
    pluginId="orderSubmit"
    type="datasource"
    waitMs="0"
    waitType="debounce"
  />
</ModalFrame>
