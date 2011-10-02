#osm_amenity_point {
    point-allow-overlap:true;
    text-name:"[name]";
    text-face-name:@serif;
    text-size:5;
    text-allow-overlap:true;
    text-halo-radius:1;
    text-halo-fill:rgba(255,255,255,0.75);
   [amenity="fuel"] 
   {
	point-file:url("symbols/transport_fuel.glow.32.png");
   }

   [amenity="pharmacy"]
   {
	point-file:url("symbols/health_pharmacy.glow.32.png");
   }

   [amenity="bank"]
   {
	point-file:url("symbols/money_bank.glow.32.png");
   }

}

#aeroway-point {
    point-allow-overlap:true;
    text-name:"[name]";
    text-face-name:@serif;
    text-size:0;
    text-allow-overlap:true;
    text-halo-radius:1;
    text-halo-fill:rgba(255,255,255,0.75);
    [aeroway="aerodrome"]
    {
	point-file:url("symbols/transport_airport.glow.32.png");
    }    
}


#historic-point
{
    point-allow-overlap:true;
    text-size:0;
    text-allow-overlap:true;
    text-halo-radius:1;
    text-halo-fill:rgba(255,255,255,0.75);
    	       text-face-name:@serif;
    	       text-dy:5;
    	       text-name:"[name]";

   [historic="ruin"],
   [historic="ruins"],
   [historic="castle"],
   [historic="archaeological_site"],
   [historic="monument"],
   [historic="memorial"]
    {
    point-file:url("symbols/tourist_ruin.glow.32.png");
    }    
}

/*#shop-point
{
    point-allow-overlap:true;
    text-name:"[name]";
    text-face-name:@serif;
    text-size:0;
    text-allow-overlap:true;
    text-halo-radius:1;
    text-halo-fill:rgba(255,255,255,0.75);
   [shop="supermarket"]
    {
    point-file:url("symbols/shopping_supermarket.glow.32.png");
    }    

   [shop="convenience"]
    {
    point-file:url("symbols/shopping_convenience.glow.32.png");
    }    
}
*/