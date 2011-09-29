<Style name="turning_circle-casing">
    <Rule>
      &maxscale_zoom15;
      &minscale_zoom16;
      <Filter>[int_tc_type]='tertiary'</Filter>
      <PointSymbolizer file="&symbols;/turning_circle-tert-casing.18.png" allow_overlap="true" />
    </Rule>
    <Rule>
      &maxscale_zoom15;
      &minscale_zoom15;
      <Filter>[int_tc_type]='residential' or [int_tc_type]='unclassified'</Filter>
      <PointSymbolizer file="&symbols;/turning_circle-uncl-casing.16.png" allow_overlap="true" />
    </Rule>
    <Rule>
      &maxscale_zoom15;
      &minscale_zoom15;
      <Filter>[int_tc_type]='living_street'</Filter>
      <PointSymbolizer file="&symbols;/turning_circle-uncl-fill.16.png" allow_overlap="true" />
    </Rule>
    <Rule>
      &maxscale_zoom16;
      &minscale_zoom16;
      <Filter>[int_tc_type]='service'</Filter>
      <PointSymbolizer file="&symbols;/turning_circle-uncl-casing.14.png" allow_overlap="true" />
    </Rule>
    <Rule>
      &maxscale_zoom16;
      &minscale_zoom16;
      <Filter>[int_tc_type]='living_street'</Filter>
      <PointSymbolizer file="&symbols;/turning_circle-uncl-fill.18.png" allow_overlap="true" />
    </Rule>
    <Rule>
      &maxscale_zoom17;
      <Filter>[int_tc_type]='tertiary'</Filter>
      <PointSymbolizer file="&symbols;/turning_circle-tert-casing.24.png" allow_overlap="true" />
    </Rule>
    <Rule>
      &maxscale_zoom17;
      <Filter>[int_tc_type]='service'</Filter>
      <PointSymbolizer file="&symbols;/turning_circle-uncl-casing.16.png" allow_overlap="true" />
    </Rule>
    <Rule>
      &maxscale_zoom17;
      <Filter>[int_tc_type]='living_street'</Filter>
      <PointSymbolizer file="&symbols;/turning_circle-uncl-fill.24.png" allow_overlap="true" />
    </Rule>
</Style>
<Style name="turning_circle-fill">
    <Rule>
      &maxscale_zoom15;
      &minscale_zoom16;
      <Filter>[int_tc_type]='tertiary'</Filter>
      <PointSymbolizer file="&symbols;/turning_circle-tert-fill.16.png" allow_overlap="true" />
    </Rule>
    <Rule>
      &maxscale_zoom15;
      &minscale_zoom15;
      <Filter>[int_tc_type]='residential' or [int_tc_type]='unclassified'</Filter>
      <PointSymbolizer file="&symbols;/turning_circle-uncl-fill.14.png" allow_overlap="true" />
    </Rule>
    <Rule>
      &maxscale_zoom15;
      &minscale_zoom15;
      <Filter>[int_tc_type]='living_street'</Filter>
      <PointSymbolizer file="&symbols;/turning_circle-livs-fill.14.png" allow_overlap="true" />
    </Rule>
    <Rule>
      &maxscale_zoom16;
      &minscale_zoom16;
      <Filter>[int_tc_type]='residential' or [int_tc_type]='unclassified'</Filter>
      <PointSymbolizer file="&symbols;/turning_circle-uncl-fill.16.png" allow_overlap="true" />
    </Rule>
    <Rule>
      &maxscale_zoom16;
      &minscale_zoom16;
      <Filter>[int_tc_type]='service'</Filter>
      <PointSymbolizer file="&symbols;/turning_circle-uncl-fill.12.png" allow_overlap="true" />
    </Rule>
    <Rule>
      &maxscale_zoom16;
      &minscale_zoom16;
      <Filter>[int_tc_type]='living_street'</Filter>
      <PointSymbolizer file="&symbols;/turning_circle-livs-fill.16.png" allow_overlap="true" />
    </Rule>
    <Rule>
      &maxscale_zoom17;
      <Filter>[int_tc_type]='tertiary'</Filter>
      <PointSymbolizer file="&symbols;/turning_circle-tert-fill.22.png" allow_overlap="true" />
    </Rule>
    <Rule>
      &maxscale_zoom17;
      <Filter>[int_tc_type]='residential' or [int_tc_type]='unclassified'</Filter>
      <PointSymbolizer file="&symbols;/turning_circle-uncl-fill.22.png" allow_overlap="true" />
    </Rule>
    <Rule>
      &maxscale_zoom17;
      <Filter>[int_tc_type]='service'</Filter>
      <PointSymbolizer file="&symbols;/turning_circle-uncl-fill.14.png" allow_overlap="true" />
    </Rule>
    <Rule>
      &maxscale_zoom17;
      <Filter>[int_tc_type]='living_street'</Filter>
      <PointSymbolizer file="&symbols;/turning_circle-livs-fill.22.png" allow_overlap="true" />
    </Rule>
</Style>
<Layer name="turning_circle-casing" status="on" srs="&osm2pgsql_projection;">
    <StyleName>turning_circle-casing</StyleName>    
    <Datasource>
      <Parameter name="table">
      (select p.way as way,l.highway as int_tc_type
       from &prefix;_point p
        join &prefix;_line l
        on ST_DWithin(p.way,l.way,&dwithin_node_way;)
       where p.highway='turning_circle' and l.highway in ('tertiary','unclassified','residential','service','living_street')
      ) as turning_circle
      </Parameter>
      &datasource-settings;
    </Datasource>
</Layer>
<!-- clear_label_cache="on" needs to follow immediately after the turning_circle-casing layer -->
<Layer name="turning_circle-fill" status="on" srs="&osm2pgsql_projection;">
    <StyleName>turning_circle-fill</StyleName>    
    <Datasource>
      <Parameter name="table">
      (select p.way as way,l.highway as int_tc_type
       from &prefix;_point p
        join &prefix;_line l
        on ST_DWithin(p.way,l.way,&dwithin_node_way;)
       where p.highway='turning_circle' and l.highway in ('tertiary','unclassified','residential','service','living_street')
      ) as turning_circle
      </Parameter>
      &datasource-settings;
    </Datasource>
</Layer>

