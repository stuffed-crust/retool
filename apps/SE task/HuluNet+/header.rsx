<Frame
  id="$header"
  enableFullBleed={null}
  isHiddenOnDesktop={false}
  isHiddenOnMobile={true}
  padding="2px 6px"
  sticky={true}
  style={{ ordered: [{ "primary-surface": "#1ce783" }] }}
  type="header"
>
  <Image
    id="image1"
    fit="contain"
    heightType="fixed"
    horizontalAlign="center"
    retoolStorageFileId="71188a27-f86f-40e8-a69a-f489c9334c79"
    srcType="retoolStorageFileId"
    style={{ ordered: [{ grayscale: "80%" }] }}
  />
  <ButtonGroup2
    id="buttonGroup1"
    alignment="right"
    heightType="auto"
    overflowMode="wrap"
    overflowPosition={3}
    style={{
      borderRadius: "8px",
      fontSize: "11px",
      fontWeight: "400",
      fontFamily: "Poppins",
    }}
  >
    <ButtonGroup2-Button id="4c845" styleVariant="solid" text="Manage Assets" />
    <ButtonGroup2-Button id="d255a" styleVariant="solid" text="Insights">
      <Event
        event="click"
        method="openPage"
        params={{
          ordered: [
            { options: { ordered: [{ passDataWith: "urlParams" }] } },
            { pageName: "metrics" },
          ],
        }}
        pluginId=""
        type="util"
        waitMs="0"
        waitType="debounce"
      />
    </ButtonGroup2-Button>
    <ButtonGroup2-Button id="7fc42" styleVariant="solid" text="Account" />
  </ButtonGroup2>
  <Avatar
    id="avatar2"
    fallback="{{ current_user.fullName }}"
    hideLabel={false}
    imageSize={32}
    label="{{ current_user.fullName }}"
    labelAlign="right"
    labelCaption="{{ current_user.email }}"
    src="{{ current_user.profilePhotoUrl }}"
    style={{
      ordered: [
        { background: "rgba(242, 242, 242, 1)" },
        { requiredIndicator: "tertiary" },
        { sharedLabel: "primary" },
        { sharedLabelFontSize: "11px" },
        { sharedLabelFontWeight: "600" },
        { sharedLabelFontFamily: "Poppins" },
      ],
    }}
  />
</Frame>
