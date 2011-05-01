Map {
  background-color: #aaaaff;
}

/* by default all highways are drawn as thin black lines to help find bugs.
   if this style is set correctly, and the map data is correct you should
   not see any of these because they will be overwritten by one of the
   defined styles below.
*/ 
#highways {
  ::outline {
      line-color: #000;
      line-width: 1.0;
    }
  line-color: #000000;
  line-width: 1.0;

  [highway='service']
  {
  ::outline {
      line-color: #000;
      line-width: 6;
    }
  line-color: #ffffff;
  line-width: 4;
  }

  [highway='residential'],
  [highway='living_street']
  {
  ::outline {
      line-color: #000;
      line-width: 6.0;
    }
  line-color: #ffffff;
  line-width: 3.0;
  }

  [highway='unclassified']
  {
  ::outline {
      line-color: #000;
      line-width: 6.0;
    }
  line-color: #ffffff;
  line-width: 3.0;
  }

  [highway='tertiary'],
  [highway='tertiary_link']
  {
  ::outline {
      line-color: #000;
      line-width: 6.0;
    }
  line-color: #ffaa00;
  line-width: 3.0;
  }

  [highway='secondary'],
  [highway='secondary_link']	 
  {
  ::outline {
      line-color: #000;
      line-width: 6.0;
    }
  line-color: #ff0;
  line-width: 3.0;
  }


  [highway='primary'], 
  [highway='primary_link'] {
  ::outline {
      line-color: #000000;
      line-width: 6.0;
    }
  line-color: #ff0000;
  line-width: 3.0;
  }

  [highway='trunk'], 
  [highway='trunk_link'] {
  ::outline {
      line-color: #000000;
      line-width: 6.0;
    }
  line-color: #00aa00;
  line-width: 3.0;
  }

  [highway='motorway'], 
  [highway='motorway_link'] {
  ::outline {
      line-color: #000000;
      line-width: 6.0;
    }
  line-color: #0000aa;
  line-width: 3.0;
  }


}



#coast-poly {
  polygon-fill: #aaffaa;
  line-color: #ccc;
  line-width: 0.5;
}
