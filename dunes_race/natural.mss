

#natural-poly {
   [natural="sand"],
   [natural="dunes"],
   {
      polygon-opacity:1;
      polygon-pattern-file: url("symbols/dunes.png");
   }

   [natural="wetland"],
   [natural="mud"],
   {
      polygon-opacity:1;
      polygon-pattern-file: url("symbols/wetland.png");
   }

   [natural="beach"]
   {
      polygon-opacity:1;
      polygon-pattern-file: url("symbols/beach.png");
   }

   [natural="rocks"],
   [natural="scree"],
   {
      polygon-opacity:1;
      polygon-pattern-file: url("symbols/scree.png");
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

#barriers {
   [barrier="embankment"]
   {
      line-pattern-file:url("symbols/embankment.png");
   }

}
