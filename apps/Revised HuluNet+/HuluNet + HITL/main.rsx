<App>
  <CustomAppTheme
    id="$appTheme"
    _migrated={true}
    automatic={[
      "#fde68a",
      "#eecff3",
      "#a7f3d0",
      "#bfdbfe",
      "#c7d2fe",
      "#fecaca",
      "#fcd6bb",
    ]}
    borderRadius="4px"
    canvas="#f6f6f6"
    danger="#dc2626"
    defaultFont={{ size: "12px", fontWeight: "400" }}
    defaultFontId="a72bffde"
    fontIds={["a72bffde"]}
    fontMap={{
      a72bffde: {
        name: "Lato",
        source:
          "https://fonts.googleapis.com/css?family=Lato:100,300,400,700,900",
        fontWeights: ["100", "300", "400", "700", "900"],
      },
    }}
    h1Font={{ size: "36px", fontWeight: "700" }}
    h2Font={{ size: "28px", fontWeight: "700" }}
    h3Font={{ size: "24px", fontWeight: "700" }}
    h4Font={{ size: "18px", fontWeight: "700" }}
    h5Font={{ size: "16px", fontWeight: "700" }}
    h6Font={{ size: "14px", fontWeight: "700" }}
    highlight="#fde68a"
    info="#3170f9"
    labelEmphasizedFont={{ size: "12px", fontWeight: "600" }}
    labelFont={{ size: "12px", fontWeight: "500" }}
    primary="#ce1ccb"
    secondary="#cb0fd9"
    success="#059669"
    surfacePrimary="#ffffff"
    surfacePrimaryBorder=""
    surfaceSecondary="#ffffff"
    surfaceSecondaryBorder=""
    tertiary=""
    textDark="#0d0d0d"
    textLight="#ffffff"
    warning="#cd6f00"
  />
  <Include src="./src/Approvals.rsx" />
  <Include src="./src/Assets.rsx" />
  <Include src="./src/Metrics.rsx" />
  <Include src="./src/page1.rsx" />
  <Include src="./header.rsx" />
  <Frame
    id="$main5"
    enableFullBleed={false}
    isHiddenOnDesktop={false}
    isHiddenOnMobile={false}
    padding="8px 12px"
    sticky={null}
    type="main"
  />
</App>
