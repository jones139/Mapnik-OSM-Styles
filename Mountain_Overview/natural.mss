

#natural-poly {
   [natural="beach"]
   {
      polygon-fill: #ffffa0;
   }

   [natural="water"]
   {
      polygon-fill: @water;
   }
}

#natural-line {
   [natural="cliff"]
   {
      line-pattern-file:url("symbols/cliff2.png");
   }

}

#natural-point
   [natural="peak"]
   {
    point-file:url("symbols/poi_peak.p.32.png");
    point-allow-overlap:true;
    text-name:"[name]";
    text-face-name:@serif;
    text-size:5;
    text-dy:5;
    text-allow-overlap:true;
    text-halo-radius:0.5;
    text-halo-fill:rgba(255,255,255,0.75);
   }
