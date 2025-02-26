<Screen
  id="Metrics"
  _customShortcuts={[]}
  _hashParams={[]}
  _searchParams={[]}
  browserTitle=""
  title={null}
  urlSlug=""
>
  <Frame
    id="$main3"
    enableFullBleed={false}
    isHiddenOnDesktop={false}
    isHiddenOnMobile={false}
    padding="8px 12px"
    sticky={null}
    type="main"
  >
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
            1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19,
            20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36,
            37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50,
          ],
        }}
        xDataMode="manual"
        yAxis="y"
        yData={{
          array: [
            0, 1.05, 2.2, 3.45, 4.8, 5.25, 6.8, 8.45, 10.2, 13.05, 14, 14.05,
            16.2, 20.45, 20.8, 24.25, 26.8, 25.45, 33.2, 31.05, 35, 40.05, 38.2,
            49.45, 51.8, 47.25, 54.8, 53.45, 54.2, 54.05, 67, 63.05, 62.2,
            69.45, 89.8, 91.25, 88.8, 82.45, 108.2, 100.05, 101, 102.05, 129.2,
            117.45, 116.8, 116.25, 117.8, 122.45, 150.2, 144.05,
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
            1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19,
            20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36,
            37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50,
          ],
        }}
        xDataMode="manual"
        yAxis="y"
        yData={{
          array: [
            90, 92.95, 94.8, 95.55, 93.2, 99.75, 99.2, 97.55, 96.8, 101.95, 102,
            94.95, 101.8, 99.55, 103.2, 103.75, 97.2, 92.55, 95.8, 92.95, 95,
            100.95, 99.8, 92.55, 102.2, 98.75, 83.2, 103.55, 82.8, 89.95, 99,
            94.95, 95.8, 96.55, 68.2, 73.75, 75.2, 81.55, 83.8, 76.95, 95,
            73.95, 48.8, 68.55, 74.2, 59.75, 74.2, 51.55, 30.8, 35.95,
          ],
        }}
        yDataMode="manual"
        zData={null}
        zDataMode="manual"
      />
    </Chart>
  </Frame>
</Screen>
