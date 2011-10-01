@lw: 1;  /*base line width */
@bw: 0.5;  /*border width */
#osm_highways {
    text-placement:line;
    text-face-name:@serif;
    text-name:"[name]";
    text-size:0;

   [highway="motorway"],
   [highway="motorway-link"],
   [highway="trunk"],
   [highway="trunk-link"],
   [highway="primary"],
   [highway="primary-link"],
   [highway="secondary"],
   [highway="secondary-link"],
   [highway="tertiary"],
   [highway="unclassified"],  
   [highway="residential"]
    {
    ::outline { line-cap:square;  line-color:#000000; line-width:@lw+@bw+(-0); }
    	line-join:miter;
        line-cap:square;
   	line-color:#ffffff;
   	line-width:@lw+(-0);
}
}

#osm_paths {
    text-placement:line;
    text-face-name:@serif;
    text-name:"[name]";
    text-size:0;
   [highway="footway"], 
   [highway="pedestrian"], 
   [highway="steps"], 
   [highway="path"] {
   line-color:#05a005;
   line-width:0.5;
   line-dasharray:2,1;
   }

   [highway="track"],
   [highway="bridleway"],
   [highway="public_bridleway"],
   [highway="cycleway"] {
     ::outline { line-cap:square; line-color:#a0a0a0; line-width:2; line-dasharray:2,1;}
   	line-color:#f0f0c0;
   	line-width:1;
   }



}

