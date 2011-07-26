@water: #1010f0;

#natural-line {
   line-color:#00ff00;
   line-width:1;

   [natural="cliff"]
   {
   ::outline { line-color:#000; line-width:6; }
   line-color:#0000ff;
   line-width:4;
   }

   [natural="stream"],
   [natural="river"],
   [natural="drain"],
   {
     line-color:#0000ff;
     line-width:3
   }
}

#natural-poly {
   [natural="beach"]
   {
      polygon-fill: #ffffa0;
   }
   [natural="water"]
   {
      polygon-fill: #0a0aff;
   }
}