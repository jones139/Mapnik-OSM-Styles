@serif:"Times New Roman Regular","FreeSerif Medium","DejaVu Serif Book";
@serif_italic:"Times New Roman Italic","FreeSerif Italic","DejaVu Serif Italic";
@sans:"Arial Regular","Liberation Sans Regular","DejaVu Sans Book";
@sans-bold:"Arial Bold","Liberation Sans Bold","DejaVu Sans Bold";

#places{
  [place="town"] {
    text-name:"[name]";
    text-face-name:@serif;
    text-transform:uppercase;
    text-character-spacing:1;
    text-line-spacing:4;
    text-size:10;
    text-wrap-width:60;
    text-allow-overlap:false;
    text-halo-radius:1;
    text-halo-fill:rgba(255,255,255,0.75);
  }

  [place="village"],
  [place="hamlet"],
  [place="suburb"]
   {
    text-name:"[name]";
    text-face-name:@serif;
    text-character-spacing:1;
    text-line-spacing:4;
    text-size:10;
    text-wrap-width:60;
    text-allow-overlap:true;
    text-halo-radius:1;
    text-halo-fill:rgba(255,255,255,0.75);
  }

  [place="locality"] {
    text-name:"[name]";
    text-face-name:@serif;
    text-character-spacing:1;
    text-line-spacing:4;
    text-size:10;
    text-wrap-width:60;
    text-allow-overlap:false;
    text-halo-radius:0.5;
    text-halo-fill:rgba(255,255,255,0.75);
  }

}

