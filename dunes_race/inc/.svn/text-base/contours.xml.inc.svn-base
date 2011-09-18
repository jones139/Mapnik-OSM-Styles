<Layer name="srtm_10" status="on" srs="+proj=latlong +datum=WGS84">
        <StyleName>contours10</StyleName>
        <StyleName>contours-text10</StyleName>
        <Datasource>
	  &datasource-settings;
                <Parameter name="table">(select way,height from contours WHERE height::integer % 10 = 0 AND height::integer % 50 != 0 AND height::integer % 100 != 0) as "contours-10"</Parameter>
                <Parameter name="extent">-180,-89.99,180,89.99</Parameter>
        </Datasource>
</Layer>
<Layer name="srtm_50" status="on" srs="+proj=latlong +datum=WGS84">
        <StyleName>contours50</StyleName>
        <StyleName>contours-text50</StyleName>
        <Datasource>
	  &datasource-settings;
                <Parameter name="table">(select way,height from contours WHERE height::integer % 50 = 0 AND height::integer % 100 != 0) as "contours-50"</Parameter>
                <Parameter name="extent">-180,-89.99,180,89.99</Parameter>
        </Datasource>
</Layer>
<Layer name="srtm_100" status="on" srs="+proj=latlong +datum=WGS84">
        <StyleName>contours100</StyleName>
        <StyleName>contours-text100</StyleName>
        <Datasource>
	  &datasource-settings;
                <Parameter name="table">(select way,height from contours WHERE height::integer % 100 = 0) as "contours-100"</Parameter>
                <Parameter name="extent">-180,-89.99,180,89.99</Parameter>
        </Datasource>
</Layer>

<Style name="contours10">
        <Rule>
                <MaxScaleDenominator>51185</MaxScaleDenominator>
                <MinScaleDenominator>1599</MinScaleDenominator>
                <LineSymbolizer>
                        <CssParameter name="stroke">#9cb197</CssParameter>
                        <CssParameter name="stroke-width">0.5</CssParameter>
                </LineSymbolizer>
        </Rule>
</Style>
<Style name="contours50">
        <Rule>
                <MaxScaleDenominator>204741</MaxScaleDenominator>
                <MinScaleDenominator>51185</MinScaleDenominator>
                <LineSymbolizer>
                        <CssParameter name="stroke">#9cb197</CssParameter>
                        <CssParameter name="stroke-width">0.6</CssParameter>
                </LineSymbolizer>
        </Rule>
        <Rule>
                <MaxScaleDenominator>51185</MaxScaleDenominator>
                <MinScaleDenominator>1599</MinScaleDenominator>
                <LineSymbolizer>
                        <CssParameter name="stroke">#747b90</CssParameter>
                        <CssParameter name="stroke-width">0.6</CssParameter>
                </LineSymbolizer>
        </Rule>
</Style>
<Style name="contours100">
        <Rule>
                <MaxScaleDenominator>409483</MaxScaleDenominator>
                <MinScaleDenominator>204741</MinScaleDenominator>
                <LineSymbolizer>
                        <CssParameter name="stroke">#9cb197</CssParameter>
                        <CssParameter name="stroke-width">0.7</CssParameter>
                </LineSymbolizer>
        </Rule>
        <Rule>
                <MaxScaleDenominator>204741</MaxScaleDenominator>
                <MinScaleDenominator>51185</MinScaleDenominator>
                <LineSymbolizer>
                        <CssParameter name="stroke">#747b90</CssParameter>
                        <CssParameter name="stroke-width">0.7</CssParameter>
                </LineSymbolizer>
        </Rule>
        <Rule>
                <MaxScaleDenominator>51185</MaxScaleDenominator>
                <MinScaleDenominator>1599</MinScaleDenominator>
                <LineSymbolizer>
                        <CssParameter name="stroke">#855d62</CssParameter>
                        <CssParameter name="stroke-width">0.7</CssParameter>
                </LineSymbolizer>
        </Rule>
</Style>
<Style name="contours-text10">
        <Rule>
                <MaxScaleDenominator>51185</MaxScaleDenominator>
                <MinScaleDenominator>1599</MinScaleDenominator>
                <TextSymbolizer name="height" face_name="DejaVu Sans Book" size="8" fill="#747b90" halo_radius="1" placement="line" />
        </Rule>
</Style>
<Style name="contours-text50">
        <Rule>
                <MaxScaleDenominator>51185</MaxScaleDenominator>
                <MinScaleDenominator>1599</MinScaleDenominator>
                <TextSymbolizer name="height" face_name="DejaVu Sans Book" size="8" fill="#747b90" halo_radius="1" placement="line" />
        </Rule>
</Style>
<Style name="contours-text100">
        <Rule>
                <MaxScaleDenominator>102370</MaxScaleDenominator>
                <MinScaleDenominator>51185</MinScaleDenominator>
                <TextSymbolizer name="height" face_name="DejaVu Sans Book" size="8" fill="#747b90" halo_radius="1" placement="line" />
        </Rule>
        <Rule>
                <MaxScaleDenominator>51185</MaxScaleDenominator>
                <MinScaleDenominator>1599</MinScaleDenominator>
                <TextSymbolizer name="height" face_name="DejaVu Sans Book" size="8" fill="#855d62" halo_radius="1" placement="line" />
        </Rule>
</Style>
