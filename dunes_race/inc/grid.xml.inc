<Style name="grid_1">
    <Rule>
      &maxscale_zoom1;
      &minscale_zoom17;
      <LineSymbolizer>
        <CssParameter name="stroke">#dddddd</CssParameter>
        <CssParameter name="stroke-width">0.5</CssParameter>
      </LineSymbolizer>
    </Rule>
</Style>

<Layer name="grid" status="on" srs="&srs900913;">
    <StyleName>grid_1</StyleName>
    <Datasource>
      <Parameter name="type">shape</Parameter>
      <Parameter name="file">grid.shp</Parameter>
    </Datasource>
</Layer>

