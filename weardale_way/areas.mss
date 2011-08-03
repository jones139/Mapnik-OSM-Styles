#landuse {
   text-placement:point;
    text-face-name:@serif;
    text-name:"[name]";
    text-size:4;
    text-spacing: 10;
    text-halo-radius:0.5;
    text-halo-fill:rgba(255,255,255,0.5);

   polygon-opacity:0.5;
   [landuse="residential"]
   {
      polygon-fill: @residential;
   }
   [landuse="industrial"],
   [landuse="quarry"]
   {
      polygon-fill: @industrial;
   }
   [landuse="brownfield"]
   {
      polygon-fill: @brownfield;
   }
   [landuse="forest"],
   [natural="wood"]
   {
      polygon-fill: @forest;
      polygon-opacity:0.5;
      polygon-pattern-file: url("symbols/forest.png");
   }
   [landuse="farmyard"]
   {
      polygon-fill: @farmyard;
   }
   [landuse="reservoir"]
   {
      polygon-fill: @water;
   }
}

#leisure-poly {
   [leisure="park"]
   {
      polygon-fill: #80c080;
   }
}

#building-poly {
   polygon-fill: #404040;
    /*text-placement:line;*/
    /*text-face-name:@serif;
    text-name:"[name]";
    text-size:5;*/
}

#amenity-poly {
   [amenity="parking"]
   {
      polygon-fill:#000000;
   }

}