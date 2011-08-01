

#landuse {
   polygon-opacity:0.5;
   [landuse="residential"]
   {
      polygon-fill: #b0b0b0;
   }
   [landuse="industrial"],
   [landuse="quarry"]
   {
      polygon-fill: #a0a0a0;
   }
   [landuse="brownfield"]
   {
      polygon-fill: #d0d0a0;
   }
   [landuse="forest"],
   [natural="wood"]
   {
      polygon-fill: #a0d0a0;
   }
   [landuse="farmyard"]
   {
      polygon-fill: #80d080;
   }
   [landuse="reservoir"]
   {
      polygon-fill: #1010f0;
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