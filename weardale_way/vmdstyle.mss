

.Woodland {
      polygon-fill: @forest;
      polygon-opacity:0.5;
      polygon-pattern-file: url("symbols/forest.png");
}

.WaterArea {
       polygon-fill:@water;
}
.WaterLine {
       line-color:@water;
       line-width:0.5;
       line-opacity:0.5;
}

.ElectricityLine {
       line-color:#000000;
       line-width:0.25;
}
.RailwayTrack {
       line-color:#000000;
       line-width:1;
}

.Ornament {
       line-color:#000000;
       line-width:0.25;
}

.Buildings {
       polygon-fill:#000000;
}
.Roads {

       [CLASSIFICA="A Road"],
       [CLASSIFICA="Primary Road"] {
       	   ::outline {     line-cap:square; 
   	     	   line-join:round;
   	     	  line-color:#000; 
		  line-width:3; }
   	   line-join:round;
   	   line-color:#ff0000;
   	   line-width:2;
	   text-name:"[DFTNUMBER]";
	   text-placement:line;
	   text-face-name:@serif;
    	   text-transform:uppercase;
    	   text-size:5;
   	   text-allow-overlap:false;
    	   text-halo-radius:0.5;
    	   text-halo-fill:rgba(255,255,255,0.75);

       }

       [CLASSIFICA="B Road"] {
       	   ::outline {     line-cap:square; 
   	     	   line-join:round;
   	     	  line-color:#000; 
		  line-width:3; }
   	   line-join:round;
   	   line-color:#ffff00;
   	   line-width:2;
       }
       [CLASSIFICA="Minor Road"],
       [CLASSIFICA="Pedestrianised Street"],
       [CLASSIFICA="Local Street"],
       [CLASSIFICA="Private Road Publicly Accessible"] {
       	   ::outline {     line-cap:square; 
   	     	   line-join:round;
   	     	  line-color:#000; 
		  line-width:3; }
   	   line-join:round;
   	   line-color:#ffffff;
   	   line-width:2;
       }

}