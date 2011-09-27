
#waterway-line {
   [waterway="stream"],
   [waterway="drain"]
   { 
    line-color:@water;
    line-width:0.5;
   }
   [waterway="river"] {
    line-color:@water;
    line-width:1;
   }
}

#waterway-poly {
   line-color:@water;
   polygon-fill: @water;
}