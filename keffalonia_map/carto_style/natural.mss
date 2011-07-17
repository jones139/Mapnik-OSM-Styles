#natural-line {
   line-color:#00ff00;
   line-width:1;

   [natural="cliff"]
   {
   ::outline { line-color:#000; line-width:6; }
   line-color:#0000ff;
   line-width:4;
   }


   [natural="peak"]
   {
    shield-file: url('symbols/poi_peak.p.32.png');
    shield-name:"[name]";
    shield-face-name:@serif;
    shield-text-dy:32;
    /*shield-allow-overlap:true;
    shield-halo-radius:1;
    shield-halo-fill:rgba(255,255,255,0.75);*/

   }

}

#natural-poly {
   [natural="beach"]
   {
      polygon-fill: #ffffa0;
   }
}