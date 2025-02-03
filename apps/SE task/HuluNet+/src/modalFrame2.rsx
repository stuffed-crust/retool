<ModalFrame
  id="modalFrame2"
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
  size="large"
>
  <Header>
    <Text id="modalTitle3" value="### Order New Asset" verticalAlign="center" />
    <Button
      id="modalCloseButton3"
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
        pluginId="modalFrame2"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </Header>
  <Body>
    <Form
      id="form2"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      initialData="{{ table2.selectedRow }}"
      padding="12px"
      requireValidation={true}
      resetAfterSubmit={true}
      scroll={true}
      showBody={true}
      showFooter={true}
      showHeader={true}
    >
      <Body>
        <NumberInput
          id="numberInput3"
          currency="USD"
          formDataKey="id"
          inputValue={0}
          label="ID"
          labelPosition="top"
          placeholder="Enter value"
          showSeparators={true}
          showStepper={true}
          value={0}
        />
        <TextInput
          id="textInput5"
          formDataKey="description"
          label="Description"
          labelPosition="top"
          placeholder="Enter value"
        />
        <Select
          id="select4"
          emptyMessage="No options"
          formDataKey="order_type"
          itemMode="static"
          label="Order type"
          labelPosition="top"
          labels={null}
          overlayMaxHeight={375}
          placeholder="Select an option"
          showSelectionIndicator={true}
          values={null}
        >
          <Option id="30546" value="New" />
          <Option id="0b0ca" value="From Existing Asset" />
        </Select>
        <DateTime
          id="dateTime1"
          dateFormat="MMM d, yyyy"
          datePlaceholder="{{ self.dateFormat.toUpperCase() }}"
          formDataKey="date"
          iconBefore="bold/interface-calendar"
          label="Date"
          labelPosition="top"
          minuteStep={15}
          value="{{ new Date() }}"
        />
        <TextInput
          id="textInput6"
          formDataKey="ordered_by"
          label="Ordered by"
          labelPosition="top"
          placeholder="Enter value"
        />
        <Select
          id="select5"
          emptyMessage="No options"
          formDataKey="status"
          itemMode="static"
          label="Status"
          labelPosition="top"
          labels={null}
          overlayMaxHeight={375}
          placeholder="Select an option"
          showSelectionIndicator={true}
          values={null}
        >
          <Option id="b266b" value="Option 1" />
          <Option id="a9925" value="Option 2" />
          <Option id="e9e8b" value="Option 3" />
        </Select>
        <Date
          id="date1"
          dateFormat="MMM d, yyyy"
          datePlaceholder="{{ self.dateFormat.toUpperCase() }}"
          formDataKey="deadline"
          iconBefore="bold/interface-calendar"
          label="Deadline"
          labelPosition="top"
          value="{{ new Date() }}"
        />
      </Body>
      <Footer>
        <Button
          id="formButton2"
          submit={true}
          submitTargetId="form2"
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
</ModalFrame>
