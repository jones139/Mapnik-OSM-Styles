<Style name="historic">
   <Rule>
     <PointSymbolizer 
       file="gj_symbols/castle_ruin.png" 
       allow_overlap="false"/>
   </Rule>
</Style>


<Style name="supermarket-symbol">
   <Rule>
     <PointSymbolizer 
       file="gj_symbols/Morrisons.png" 
       allow_overlap="false"/>
   </Rule>
</Style>

<Style name="convenience-symbol">
   <Rule>
     <PointSymbolizer 
       file="&symbols;/shop_convenience.p.16.png" 
       allow_overlap="false"/>
   </Rule>
</Style>

<Style name="bakery-symbol">
   <Rule>
     <PointSymbolizer 
       file="&symbols;/shop_bakery.p.16.png" 
       allow_overlap="false"/>
   </Rule>
</Style>

<Style name="fuel-symbol">
   <Rule>
     <PointSymbolizer 
       file="&symbols;/fuel.p.16.png" 
       allow_overlap="true"/>
   </Rule>
</Style>


<Layer name="historic" status="on" srs="&srs900913;">
  <StyleName>historic</StyleName>
  <Datasource>
     &datasource-settings;
     <Parameter name="table">
   (select way,name,"name:en" from planet_osm_point where historic is not null) as points
     </Parameter>
  </Datasource>
</Layer>

<Layer name="supermarkets" status="on" srs="&srs900913;">
  <StyleName>supermarket-symbol</StyleName>
  <Datasource>
     &datasource-settings;
     <Parameter name="table">
      	(select shop,way,name from planet_osm_point where shop='supermarket') as points
     </Parameter>
  </Datasource>
</Layer>

<Layer name="convenience" status="on" srs="&srs900913;">
  <StyleName>convenience-symbol</StyleName>
  <Datasource>
     &datasource-settings;
     <Parameter name="table">
      	(select shop,way,name from planet_osm_point where shop='convenience') as points
     </Parameter>
  </Datasource>
</Layer>

<Layer name="bakery" status="on" srs="&srs900913;">
  <StyleName>bakery-symbol</StyleName>
  <Datasource>
     &datasource-settings;
     <Parameter name="table">
      	(select shop,way,name from planet_osm_point where shop='bakery') as points
     </Parameter>
  </Datasource>
</Layer>


<Layer name="fuel" status="on" srs="&srs900913;">
  <StyleName>fuel-symbol</StyleName>
  <Datasource>
     &datasource-settings;
     <Parameter name="table">
      	(select way,name from planet_osm_point where amenity='fuel') as points
     </Parameter>
  </Datasource>
</Layer>



