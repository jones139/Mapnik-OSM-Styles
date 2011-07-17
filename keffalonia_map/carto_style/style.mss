/***********************************************************************

'Road Trip'
===========

Inspired by the impossible-to-fold maps in your glovebox.

***********************************************************************/

/*@land: #FFF6E0;*/
@land: #e0e0c0;
@water: #C0E0F8;
@waterline: #8CE;

Map {
  background-color:@water;
}

#coastline::outline {
  line-color:@waterline;
  line-width:1.6;
}
#coastline::fill {
  polygon-fill:@land;
  polygon-gamma:0.75;
}

#grid {
  line-color:#eeeeee;
  line-width:1;
}
