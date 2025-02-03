<App>
  <Include src="./functions.rsx" />
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
    canvas="#333333"
    danger="#dc2626"
    defaultFont={{ size: "12px", fontWeight: "400", fontId: "5bfcc568" }}
    defaultFontId="5bfcc568"
    fontIds={["5bfcc568"]}
    fontMap={{
      "5bfcc568": {
        name: "Poppins",
        source:
          "https://fonts.googleapis.com/css?family=Poppins:100,200,300,400,500,600,700,800,900",
        fontWeights: [
          "100",
          "200",
          "300",
          "400",
          "500",
          "600",
          "700",
          "800",
          "900",
        ],
      },
    }}
    h1Font={{ size: "36px", fontWeight: "700", fontId: "5bfcc568" }}
    h2Font={{ size: "28px", fontWeight: "700", fontId: "5bfcc568" }}
    h3Font={{ size: "24px", fontWeight: "700", fontId: "5bfcc568" }}
    h4Font={{ size: "18px", fontWeight: "700" }}
    h5Font={{ size: "16px", fontWeight: "700" }}
    h6Font={{ size: "14px", fontWeight: "700" }}
    highlight="#fde68a"
    info="#3170f9"
    labelEmphasizedFont={{ size: "14px", fontWeight: "600" }}
    labelFont={{ size: "14px", fontWeight: "500", fontId: "5bfcc568" }}
    primary="#333333"
    secondary="#333333"
    success="#059669"
    surfacePrimary="#222222"
    surfacePrimaryBorder="rgba(243, 245, 244, 0.1)"
    surfaceSecondary="#222222"
    surfaceSecondaryBorder="#1ce783"
    tertiary="#222222"
    textDark="#333333"
    textLight="#ffffff"
    warning="#cd6f00"
  />
  <Include src="./src/asset_detail.rsx" />
  <Include src="./src/home.rsx" />
  <Include src="./src/metrics.rsx" />
  <Include src="./src/order_new_assets.rsx" />
  <Include src="./header.rsx" />
</App>
