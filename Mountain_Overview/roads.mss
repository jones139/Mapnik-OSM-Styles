@lw: 2;  /*base line width */
@bw: 1;  /*border width */
#highways {
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

