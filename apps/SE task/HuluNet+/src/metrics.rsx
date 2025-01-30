<Screen
  id="metrics"
  _customShortcuts={[]}
  _hashParams={[]}
  _searchParams={[]}
  title={null}
  urlSlug=""
>
  <SqlQueryUnified
    id="query6"
    query={include("../lib/query6.sql", "string")}
    resourceDisplayName="retool_db"
    resourceName="9d12bf10-436a-415e-8f23-63bb2953ef08"
    warningCodes={[]}
  />
  <Function
    id="transformer1"
    funcBody={include("../lib/transformer1.js", "string")}
  />
  <Frame
    id="$main2"
    enableFullBleed={false}
    isHiddenOnDesktop={false}
    isHiddenOnMobile={false}
    padding="8px 12px"
    sticky={null}
    type="main"
  >
    <Text
      id="text11"
      value="### 📈 Marketing KPI Performance Metrics "
      verticalAlign="center"
    />
    <Container
      id="tabbedContainer1"
      currentViewKey="{{ self.viewKeys[0] }}"
      disabled="{{current_user.groups.map(group => group.name).includes('Publicity')}}"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      heightType="fixed"
      margin="0"
      padding="12px"
      showBody={true}
      showHeader={true}
      style={{ ordered: [{ borderRadius: "20px" }] }}
      styleContext={{ ordered: [{ borderRadius: "20\npx" }] }}
    >
      <Header>
        <Tabs
          id="tabs1"
          itemMode="static"
          navigateContainer={true}
          targetContainerId="tabbedContainer1"
          value="{{ self.values[0] }}"
        >
          <Option id="48caa" value="Tab 1" />
          <Option id="c4c44" value="Tab 2" />
          <Option id="b5c19" value="Tab 3" />
        </Tabs>
      </Header>
      <View id="34cab" viewKey="Orders Over Time ">
        <Chart
          id="lineChart1"
          barMode="group"
          barOrientation=""
          chartType="line"
          legendPosition="none"
          selectedPoints="[]"
          stackedBarTotalsDataLabelPosition="none"
          title={null}
          xAxisLineWidth={1}
          xAxisRangeMax=""
          xAxisRangeMin=""
          xAxisShowLine={true}
          xAxisShowTickLabels={true}
          xAxisTickFormatMode="gui"
          xAxisTitleStandoff={20}
          yAxis2LineWidth={1}
          yAxis2RangeMax=""
          yAxis2RangeMin=""
          yAxis2ShowTickLabels={true}
          yAxis2TickFormatMode="gui"
          yAxis2TitleStandoff={20}
          yAxisGrid={true}
          yAxisLineWidth={1}
          yAxisRangeMax=""
          yAxisRangeMin=""
          yAxisShowTickLabels={true}
          yAxisTickFormatMode="gui"
          yAxisTitleStandoff={20}
        >
          <Series
            id="0"
            aggregationType="none"
            colorArray={{ array: [null] }}
            colorArrayDropDown={{ array: [null] }}
            colorInputMode="colorArrayDropDown"
            connectorLineColor="#000000"
            dataLabelPosition="none"
            datasourceMode="source"
            decreasingBorderColor="{{ theme.danger }}"
            decreasingColor="{{ theme.danger }}"
            filteredGroups={null}
            filteredGroupsMode="source"
            gradientColorArray={{
              array: [
                { array: ["0.0", "{{ theme.success }}"] },
                { array: ["1.0", "{{ theme.primary }}"] },
              ],
            }}
            groupBy={{ array: [] }}
            groupByDropdownType="source"
            groupByStyles={{}}
            hoverTemplate="<b>%{x}</b><br>%{fullData.name}: %{y}<extra></extra>"
            hoverTemplateMode="source"
            increasingBorderColor="{{ theme.success }}"
            increasingColor="{{ theme.success }}"
            lineColor="{{ theme.primary }}"
            lineDash="solid"
            lineShape="spline"
            lineUnderFillMode="gradient"
            lineWidth={2}
            markerBorderColor={null}
            markerBorderWidth={0}
            markerColor="{{ theme.primary }}"
            markerSize={6}
            markerSymbol="circle"
            name="Primary"
            showMarkers={false}
            textTemplate={null}
            textTemplateMode="manual"
            type="line"
            waterfallBase={0}
            waterfallMeasures={null}
            waterfallMeasuresMode="source"
            xData={{
              array: [
                1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18,
                19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34,
                35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50,
              ],
            }}
            xDataMode="manual"
            yAxis="y"
            yData={{
              array: [
                0, 1.05, 2.2, 3.45, 4.8, 6.25, 7.8, 9.45, 11.2, 13.05, 13,
                16.05, 17.2, 17.45, 20.8, 25.25, 28.8, 27.45, 27.2, 30.05, 35,
                42.05, 46.2, 39.45, 47.8, 46.25, 45.8, 58.45, 56.2, 71.05, 68,
                75.05, 73.2, 71.45, 91.8, 80.25, 99.8, 104.45, 88.2, 88.05, 117,
                120.05, 115.2, 119.45, 127.8, 142.25, 124.8, 132.45, 155.2,
                126.05,
              ],
            }}
            yDataMode="manual"
            zData={null}
            zDataMode="manual"
          />
          <Series
            id="1"
            aggregationType="none"
            colorArray={{ array: [null] }}
            colorArrayDropDown={{ array: [null] }}
            colorInputMode="colorArrayDropDown"
            connectorLineColor="#000000"
            dataLabelPosition="none"
            datasourceMode="source"
            decreasingBorderColor="{{ theme.danger }}"
            decreasingColor="{{ theme.danger }}"
            filteredGroups={null}
            filteredGroupsMode="source"
            gradientColorArray={{
              array: [
                { array: ["0.0", "{{ theme.success }}"] },
                { array: ["1.0", "{{ theme.primary }}"] },
              ],
            }}
            groupBy={{ array: [] }}
            groupByDropdownType="source"
            groupByStyles={{}}
            hoverTemplate="<b>%{x}</b><br>%{fullData.name}: %{y}<extra></extra>"
            hoverTemplateMode="source"
            increasingBorderColor="{{ theme.success }}"
            increasingColor="{{ theme.success }}"
            lineColor="{{ theme.danger }}"
            lineDash="solid"
            lineShape="spline"
            lineUnderFillMode="gradient"
            lineWidth={2}
            markerBorderColor={null}
            markerBorderWidth={0}
            markerColor="{{ theme.primary }}"
            markerSize={6}
            markerSymbol="circle"
            name="Secondary"
            showMarkers={false}
            textTemplate={null}
            textTemplateMode="manual"
            type="line"
            waterfallBase={0}
            waterfallMeasures={null}
            waterfallMeasuresMode="source"
            xData={{
              array: [
                1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18,
                19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34,
                35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50,
              ],
            }}
            xDataMode="manual"
            yAxis="y"
            yData={{
              array: [
                91, 91.95, 94.8, 98.55, 93.2, 96.75, 98.2, 100.55, 98.8, 95.95,
                95, 98.95, 99.8, 97.55, 100.2, 97.75, 99.2, 97.55, 93.8, 96.95,
                102, 91.95, 104.8, 97.55, 95.2, 100.75, 94.2, 99.55, 94.8,
                89.95, 90, 73.95, 72.8, 99.55, 79.2, 83.75, 93.2, 96.55, 86.8,
                90.95, 85, 86.95, 51.8, 83.55, 56.2, 63.75, 59.2, 46.55, 74.8,
                51.95,
              ],
            }}
            yDataMode="manual"
            zData={null}
            zDataMode="manual"
          />
        </Chart>
      </View>
      <View id="8bf79" viewKey="Budget Spend">
        <Chart
          id="sunburstChart1"
          chartType="sunburst"
          colorArray={["#FDDEA0", "#8C2A81"]}
          colorArrayDropDown={[
            "#FDDEA0",
            "#8C2A81",
            "#A5DB36",
            "#36B779",
            "#1E988B",
            "#31688E",
            "#462F7D",
          ]}
          colorInputMode="colorArrayDropDown"
          gradientColorArray={[
            ["0.0", "{{ theme.canvas }}"],
            ["1.0", "{{ theme.primary }}"],
          ]}
          hoverTemplate="%{label}<br>%{value}<extra></extra>"
          hoverTemplateMode="source"
          labelData={[
            "Root",
            "Category A",
            "Category B",
            "Subcategory A1",
            "Subcategory A2",
            "Subcategory B1",
            "Subcategory B2",
          ]}
          legendPosition="none"
          lineWidth={2}
          parentData={[
            "",
            "Root",
            "Root",
            "Category A",
            "Category A",
            "Category B",
            "Category B",
          ]}
          selectedPoints="[]"
          sunburstDataBranchValues="remainder"
          sunburstDataLeafOpacity={0.6}
          textTemplate="%{label}<br>%{value}"
          textTemplateMode="source"
          textTemplatePosition="radial"
          title={null}
          valueData={[100, 40, 60, 20, 20, 30, 30]}
        />
      </View>
      <View id="ed407" viewKey="Delivery Rate">
        <Chart
          id="mixedChart1"
          barGap={0.4}
          barMode="group"
          chartType="mixed"
          legendPosition="none"
          selectedPoints="[]"
          showSecondYAxis={true}
          stackedBarTotalsDataLabelPosition="none"
          title={null}
          xAxisLineWidth={1}
          xAxisRangeMax=""
          xAxisRangeMin=""
          xAxisShowTickLabels={true}
          xAxisTickFormatMode="gui"
          xAxisTitleStandoff={20}
          yAxis2Grid={true}
          yAxis2LineWidth={1}
          yAxis2RangeMax=""
          yAxis2RangeMin=""
          yAxis2ShowTickLabels={true}
          yAxis2TickFormatMode="gui"
          yAxis2TitleStandoff={20}
          yAxisGrid={true}
          yAxisLineWidth={1}
          yAxisRangeMax=""
          yAxisRangeMin=""
          yAxisShowTickLabels={true}
          yAxisTickFormatMode="gui"
          yAxisTitleStandoff={20}
        >
          <Series
            id="0"
            aggregationType="none"
            colorArray={{ array: [null] }}
            colorArrayDropDown={{ array: [null] }}
            colorInputMode="colorArrayDropDown"
            connectorLineColor="#000000"
            dataLabelPosition="none"
            datasourceMode="source"
            decreasingBorderColor="{{ theme.danger }}"
            decreasingColor="{{ theme.danger }}"
            filteredGroups={null}
            filteredGroupsMode="source"
            gradientColorArray={{
              array: [
                { array: ["0.0", "{{ theme.success }}"] },
                { array: ["1.0", "{{ theme.primary }}"] },
              ],
            }}
            groupBy={{ array: [] }}
            groupByDropdownType="source"
            groupByStyles={{}}
            hoverTemplate="<b>%{x}</b><br>%{fullData.name}: %{y}<extra></extra>"
            hoverTemplateMode="source"
            increasingBorderColor="{{ theme.success }}"
            increasingColor="{{ theme.success }}"
            lineColor="{{ theme.primary }} "
            lineDash="solid"
            lineShape="spline"
            lineUnderFillMode="none"
            lineWidth={2}
            markerBorderColor={null}
            markerBorderWidth={0}
            markerColor="{{ theme.primary }}"
            markerSize={6}
            markerSymbol="circle"
            name="Line"
            showMarkers={false}
            textTemplate={null}
            textTemplateMode="manual"
            type="line"
            waterfallBase={0}
            waterfallMeasures={null}
            waterfallMeasuresMode="source"
            xData={{
              array: [
                1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18,
                19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30,
              ],
            }}
            xDataMode="manual"
            yAxis="y2"
            yData={{
              array: [
                526.25, 526.8, 528.45, 533.2, 532.05, 535, 541.05, 544.2,
                549.45, 550.8, 550.25, 552.8, 553.45, 562.2, 558.05, 559,
                578.05, 572.2, 579.45, 571.8, 572.25, 597.8, 581.45, 595.2,
                587.05, 617, 618.05, 595.2, 604.45, 633.8,
              ],
            }}
            yDataMode="manual"
            zData={null}
            zDataMode="manual"
          />
          <Series
            id="1"
            aggregationType="none"
            colorArray={{ array: ["{{ theme.danger }}"] }}
            colorArrayDropDown={{ array: ["{{ theme.danger }}"] }}
            colorInputMode="colorArrayDropDown"
            connectorLineColor="#000000"
            dataLabelPosition="none"
            datasourceMode="source"
            decreasingBorderColor="{{ theme.danger }}"
            decreasingColor="{{ theme.danger }}"
            filteredGroups={null}
            filteredGroupsMode="source"
            gradientColorArray={{
              array: [
                { array: ["0.0", "{{ theme.success }}"] },
                { array: ["1.0", "{{ theme.primary }}"] },
              ],
            }}
            groupBy={{ array: [] }}
            groupByDropdownType="source"
            groupByStyles={{}}
            hoverTemplate="<b>%{x}</b><br>%{fullData.name}: %{y}<extra></extra>"
            hoverTemplateMode="source"
            increasingBorderColor="{{ theme.success }}"
            increasingColor="{{ theme.success }}"
            lineColor="{{ theme.primary }}"
            lineDash="solid"
            lineShape="linear"
            lineUnderFillMode="none"
            lineWidth={2}
            markerBorderColor={null}
            markerBorderWidth={0}
            markerColor="{{ theme.danger }}"
            markerSize={4}
            markerSymbol="circle"
            name="Scatter"
            showMarkers={false}
            textTemplate={null}
            textTemplateMode="manual"
            type="scatter"
            waterfallBase={0}
            waterfallMeasures={null}
            waterfallMeasuresMode="source"
            xData={{
              array: [
                1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18,
                19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30,
              ],
            }}
            xDataMode="manual"
            yAxis="y"
            yData={{
              array: [
                97.75, 97.2, 104.55, 95.8, 93.95, 90, 90.95, 87.8, 89.55, 102.2,
                86.75, 93.2, 82.55, 87.8, 85.95, 92, 101.95, 70.8, 79.55, 91.2,
                72.75, 98.2, 58.55, 66.8, 94.95, 70, 78.95, 54.8, 43.55, 67.2,
              ],
            }}
            yDataMode="manual"
            zData={null}
            zDataMode="manual"
          />
          <Series
            id="2"
            aggregationType="none"
            colorArray={{ array: ["#rgba(126, 132, 250, 0.3)"] }}
            colorArrayDropDown={{ array: ["#rgba(126, 132, 250, 0.3)"] }}
            colorInputMode="colorArrayDropDown"
            connectorLineColor="#000000"
            dataLabelPosition="none"
            datasourceMode="source"
            decreasingBorderColor="{{ theme.danger }}"
            decreasingColor="{{ theme.danger }}"
            filteredGroups={null}
            filteredGroupsMode="source"
            gradientColorArray={{
              array: [
                { array: ["0.0", "{{ theme.success }}"] },
                { array: ["1.0", "{{ theme.primary }}"] },
              ],
            }}
            groupBy={{ array: [] }}
            groupByDropdownType="source"
            groupByStyles={{}}
            hoverTemplate="<b>%{x}</b><br>%{fullData.name}: %{y}<extra></extra>"
            hoverTemplateMode="source"
            increasingBorderColor="{{ theme.success }}"
            increasingColor="{{ theme.success }}"
            lineColor="{{ theme.primary }}"
            lineDash="solid"
            lineShape="linear"
            lineUnderFillMode="none"
            lineWidth={2}
            markerBorderColor={null}
            markerBorderWidth={0}
            markerColor="#rgba(126, 132, 250, 0.3)"
            markerSize={6}
            markerSymbol="circle"
            name="Bar"
            showMarkers={false}
            textTemplate={null}
            textTemplateMode="manual"
            type="bar"
            waterfallBase={0}
            waterfallMeasures={null}
            waterfallMeasuresMode="source"
            xData={{
              array: [
                1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18,
                19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30,
              ],
            }}
            xDataMode="manual"
            yAxis="y"
            yData={{
              array: [
                21.25, 26.8, 28.45, 30.2, 36.05, 32, 42.05, 37.2, 46.45, 44.8,
                49.25, 53.8, 49.45, 62.2, 70.05, 59, 74.05, 73.2, 85.45, 74.8,
                96.25, 83.8, 92.45, 86.2, 99.05, 109, 102.05, 119.2, 112.45,
                124.8,
              ],
            }}
            yDataMode="manual"
            zData={null}
            zDataMode="manual"
          />
        </Chart>
      </View>
    </Container>
    <Text id="text9" value="**Orders Over Time**" verticalAlign="center" />
  </Frame>
</Screen>
