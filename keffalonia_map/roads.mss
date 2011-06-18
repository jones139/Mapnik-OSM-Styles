@lw: 3;  /*base line width */
@bw: 0;  /*border width */
#highways {
   line-join:round;
   line-color:#00ff00;
   line-width:1;
    text-placement:line;
    text-face-name:@serif;
    text-name:"[name]";
    text-size:3;
 
   [highway="track"] {
   line-color:#10c010;
   line-width:1;
   }

   [highway="footway"], 
   [highway="pedestrian"], 
   [highway="steps"], 
   [highway="path"] {
   line-color:#05a005;
   line-width:0.5;
   }

   [highway="unclassified"], 
   [highway="service"], 
   [highway="road"], 
   [highway="residential"] {
   ::outline { line-color:#000; line-width:@lw+@bw+(-2); }
   line-color:#ffffff;
   line-width:@lw+(-2);
   }

   [highway="tertiary"],
   [highway="tertiary_link"] {
   ::outline {    line-join:round;
   	     	  line-color:#000; 
		  line-width:@lw+@bw+(-1); }
   line-color:#ffd000;
   line-width:@lw+(-1);
   }

   [highway="secondary"],
   [highway="secondary_link"] 
   {
   ::outline {    line-join:round;
   	     	  line-color:#000; 
		  line-width:@lw+@bw+(-1); }
   line-color:#ffff00;
   line-width:@lw+(-1);
    /*shield-file: url('symbols/secondary_shield1.png');
    shield-name:"[ref]";
    shield-face-name:@serif;
    shield-size:6;
    */
   }

   [highway="trunk"],
   [highway="trunk_link"],
   [highway="primary"], 
   [highway="primary_link"] 
   {
   ::outline {    line-join:round;
   	     	  line-color:#000; 
		  line-width:@lw+@bw+(-1); }
   line-join:round;
   line-color:#ff0000;
   line-width:@lw+(-1);
   }

   [highway="motorway"],
   [highway="motorway_link"] 
   {
   ::outline { line-color:#000; line-width:@lw+@bw; }
   line-color:#0000ff;
   line-width:@lw;
   }
}
