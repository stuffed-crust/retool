<Frame
  id="$header"
  enableFullBleed={null}
  isHiddenOnDesktop={false}
  isHiddenOnMobile={true}
  padding="8px 12px"
  sticky={true}
  type="header"
>
  <Navigation
    id="navigation1"
    data="{{ retoolContext.pages }}"
    disabledByIndex=""
    hiddenByIndex=""
    highlightByIndex=""
    horizontalAlignment="center"
    itemMode="static"
    labels="{{ item.title || item.id }}"
    retoolStorageFileId={null}
  >
    <Option
      id="13e7f"
      icon="bold/interface-home-3"
      iconPosition="left"
      itemType="page"
      key="3ce54"
      label="Assets"
      screenTargetId="Assets"
    />
    <Option
      id="03a34"
      icon="bold/interface-user-multiple"
      iconPosition="left"
      itemType="page"
      label="Approvals
"
      screenTargetId="Approvals"
    />
    <Option
      id="70d7a"
      disabled={'{{current_user.groups.name == "Publicity"}}'}
      icon="bold/money-graph"
      iconPosition="left"
      itemType="page"
      key="73dad"
      label="Metrics"
      screenTargetId="Metrics"
    />
    <Option
      id="fd1b0"
      disabled={false}
      hidden={false}
      iconPosition="left"
      itemType="page"
      label="Hulu AI"
      screenTargetId="Hulu_CoPilot"
    />
    <Event
      event="click"
      method="openPage"
      params={{ ordered: [{ pageName: "{{ item.id }}" }] }}
      pluginId=""
      type="util"
      waitMs="0"
      waitType="debounce"
    />
  </Navigation>
  <Image
    id="image1"
    aspectRatio=""
    fit="contain"
    heightType="fixed"
    horizontalAlign="center"
    retoolStorageFileId="4db7f2e2-daeb-4b65-ba08-bcf14959b04b"
    src="https://picsum.photos/id/1025/800/600"
    srcType="retoolStorageFileId"
    style={{ ordered: [] }}
  >
    <Event
      event="click"
      method="openPage"
      params={{
        ordered: [
          { options: { ordered: [{ passDataWith: "urlParams" }] } },
          { pageName: "Assets" },
        ],
      }}
      pluginId=""
      type="util"
      waitMs="0"
      waitType="debounce"
    />
  </Image>
</Frame>
