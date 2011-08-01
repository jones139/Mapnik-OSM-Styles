@water: #1010f0;


#natural-poly {
   [natural="beach"]
   {
      polygon-fill: #ffffa0;
   }
/*   [natural="wood"]
   {
      polygon-fill: #10a010;
   }
*/
   [natural="water"]
   {
      polygon-fill: #0a0aff;
   }
}

#natural-line {
   line-color:#ffffff;
   line-width:5;

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
