@water: #d0d0ff;
@land: #c0c0a0;
@waterline: #8CE;
@forest:#50d050;
@farmyard:#80d080;
@brownfield:#d0d0a0;
@residential:#b0b0b0;
@industrial:#a0a0a0;

.vmd_woodland {
      polygon-fill: @forest;
      polygon-opacity:0.5;
      polygon-pattern-file: url("symbols/forest.png");
}

.vmd_water_area {
       polygon-fill:@water;
}
.vmd_water_line {
       line-color:@water;
       line-width:0.5;
       line-opacity:0.5;
}

.vmd_electricity {
       line-color:#000000;
       line-width:0.25;
}
.vmd_rail {
       line-color:#000000;
       line-width:1;
}

.vmd_ornament {
       line-color:#000000;
       line-width:0.25;
}

.vmd_buildings {
       polygon-fill:#808080;
       line-width:0.25;
       line-color:#000000;
}

.vmd_places {
	   text-name:"[NAME]";
	   text-placement:point;
	   text-face-name:@serif;
    	   text-size:4;
   	   text-allow-overlap:false;
    	   text-wrap-width:100;
    	   text-halo-radius:0.5;
    	   text-halo-fill:rgba(255,255,255,0.75);

}

.vmd_heights {
	   text-name:"[HEIGHT]";
	   text-placement:point;
	   text-face-name:@serif;
    	   text-size:4;
   	   text-allow-overlap:true;
    	   text-wrap-width:20;
    	   text-halo-radius:0.5;
    	   text-halo-fill:rgba(255,255,255,0.75);

}

.vmd_roads {

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
		  line-width:2; }
   	   line-join:round;
   	   line-color:#ffffff;
   	   line-width:1.5;
       }

}