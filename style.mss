Map {
  //background-color: #b8dee6;
  background-color: hsl(200,80%,95%);
  //background-color: hsl(200,0%,98%);
  buffer-size:500;
}
#countries {
  line-color:lightgray;
  line-width:0.5;
  line-smooth:1;
}
#landpoly {
  ::outline {
    line-color: hsl(210,80%,80%);
    //line-color: hsl(210,0%,80%);
    line-width: 5;
    line-join: round;
    image-filters: agg-stack-blur(2,2);
    line-opacity:1;
  }
  polygon-fill: #fff;
  
}
#map1[map1 !=''],
#map2[map2 !=''],
#map3[map3 !=''],
#map4[map4 !=''],
#map5[map5 !=''],
#map6[map6 !=''],
#map7[map7 !=''],
#map8[map8 !=''],
#map9[map9 !=''],
#map10[map10 !=''],
#map11[map11 !=''],
#map12[map12 !=''],

{
  marker-width:8;
  marker-fill:black;
  marker-line-color:gray;
  marker-allow-overlap:true;
  marker-file:url('maki/star-18.png');
  //marker-file:url('http://awmc.unc.edu/awmc/map_data/symbols/star.png');
  marker-ignore-placement:true;
  //text-name:"[SITE]'_'";
  text-name:'[SITE]';
  text-face-name:'DejaVu Sans Condensed';
  text-placement:point;
  text-size:12;
  
  text-placement-type:simple;
  text-placements:E,W,NE,SW,NW,SE,S;
  [SITE='Ashdod'] {
    text-placements:'NW';
  }
  [SITE='Gaza'] { text-placements: 'SW'; text-dy:4;}
  [SITE='Ashkelon'] { text-placements: 'W'; }
  [SITE='Ekron'] { text-placements: 'NE'; text-dy:4;}
  #map2[SITE='Ekron'] { text-placements: 'N'; text-dy:4;}
  [SITE='Gath'] { text-placements: 'SE'; text-dy:4;}
  #map2[SITE='Gath'] { text-placements: 'SW'; text-dy:4;}
  
  [SITE='Madaba'] {
    text-placements:'W';
  }
  [SITE='Amathus'] { text-placements:'W';}
  [SITE='Nauplion'] { text-placements:'SE'; text-dy:4;}
  [SITE='Tiryns'] { text-placements:'SW';}
  [SITE='Hala Sultan Tekke'] { 
    text-placements:'SE'; text-dy:2;}
  
  #map4[SITE='Bánov'] { text-placements:'E';text-dy:2;}
  #map4[SITE='Šurany'] { text-placements:'W';text-dy:2;}
  #map4[SITE='Tiryns'] { text-placements:'SE';text-dy:2;}
  // Doesn't parse #map4[SITE='Far'ah'] { text-placements:'SE'; }

  #map6[SITE='Wadi Fidan'] { text-placements:'SE';text-dy:2;}
  #map8[SITE='Madaba'] { text-placements:'SW';text-dy:2;text-dx:-1;}
  #map8[SITE='Wadi el-Makkuk'] { text-placements:'NW';text-dx:1;text-dy:1;}
  #map8[SITE='Timnah'] { text-placements:'SE';text-dy:2;text-dx:-1;}
  
  #map9[SITE='Tiryns'] { text-placements:'SE'; text-dy:4; text-dx:2;}
  #map9[SITE='Dendra'] { text-placements:'NE'; text-dy:2; text-dx:2;}
  #map9[SITE='Argos'] { text-placements:'W'; }
  #map9[SITE='Prosymna'] { text-placements:'NW'; }  
  #map10[SITE='Tiryns'] { text-placements:'SW'; text-dy:1; }
  #map10[SITE='Gath'] { text-placements:'SW'; text-dy:1; }

  #map11[SITE='Thermos'] { text-placements:'E'; text-dy:2; text-dx:-2;}
  #map11[SITE='Ithaka'] { text-placements:'W'; text-dy:2; text-dx:-2;}
  #map11[SITE='Gath'] { text-placements: 'E';}

  //text-placement:dummy;
  //text-allow-overlap:true;
  text-dx:4;
  text-dy:6;
  text-fill:black;
  text-halo-fill:hsla(0,0%,100%,0.5);
  text-halo-radius:1;
  
}
// note, two different places for TimnahjQuery152012419993127696216_1400569310650

/*
Map1: lots, but doable
Map2: inset for the important cluster
Map3: easy
Map4: inset for central europe
Map5,6,7,8,9: easy
Map10: harder, but done
Map11: something missing
*/

#barivers {
  line-width:1;
  line-color:hsla(240,50%,80%,50%);
}

#artefacts {
  marker-type:ellipse;
  marker-fill:green;
  marker-width:4;
  marker-allow-overlap:true;
}



#earrings_philistia,#bangles_philistia,#pins_type1, #rings_philistia,
#incised_pins{
  text-face-name:'CartoGothic Std Book';
  text-size:12;
  text-name:[site];
  text-horizontal-alignment:left;
  text-allow-overlap:true;
}

@circle:url('http://awmc.unc.edu/awmc/map_data/symbols/unknown.svg');
@star:url('http://awmc.unc.edu/awmc/map_data/symbols/star.svg');
@square:url('http://awmc.unc.edu/awmc/map_data/symbols/square.svg');
@whitecircle:url('http://awmc.unc.edu/awmc/map_data/symbols/settlement.svg');
@diamond:url('http://awmc.unc.edu/awmc/map_data/symbols/diamond.svg');
@semicircle:url('http://awmc.unc.edu/awmc/map_data/symbols/villa.svg');

#earrings_philistia[subtype_1a>0]::square {
  marker-file:@square;
  marker-width:8;
  marker-allow-overlap:true;
  marker-transform:translate(10,-7);
}
#earrings_philistia[subtype_1b>0]::circle {
  marker-file:@circle;
  marker-width:8;
  marker-allow-overlap:true;
  marker-transform:translate(10,5);
}
#earrings_philistia[subtype_1c>0]::star {
  marker-file:@star;
  marker-width:8;
  marker-allow-overlap:true;
  marker-transform:translate(20,-5);
  [subtype_1a=0][subtype_1b=0] {
    marker-transform:translate(10,0); //Azor
  }
}
#earrings_philistia[subtype_4a>0]::whitecircle {
  marker-file:@whitecircle;
  marker-width:8;
  marker-allow-overlap:true;
  marker-transform:translate(20,5);
}


#bangles_philistia[subtype_2b3b>0]::square {
  marker-file:@square;
  marker-width:8;
  marker-allow-overlap:true;
  marker-transform:translate(10,-5);
}
#bangles_philistia[subtype_2f>0]::circle {
  marker-file:@circle;
  marker-width:10;
  marker-allow-overlap:true;
  marker-transform:translate(20,-5);
}
#bangles_philistia[subtype_4a>0]::star {
  marker-file:@star;
  marker-width:8;
  marker-allow-overlap:true;
  marker-transform:translate(10,5);
}
#bangles_philistia[subtype_4b>0]::circle2 {
  marker-file:@whitecircle;
  marker-width:8;
  marker-allow-overlap:true;
  marker-transform:translate(20,5);
}

#rings_philistia[subtype_1c1_1b1_1b3 > 0]::square {
  marker-file:@square;
  marker-width:8;
  marker-allow-overlap:true;
  marker-transform:translate(10,-5);
}
#rings_philistia[subtype_1b4_1c4 > 0]::circle {
  marker-file:@circle;
  marker-width:8;
  marker-allow-overlap:true;
  marker-transform:translate(20,-5);
}
#rings_philistia[subtype_1a3 > 0]::semicircle {
  marker-file:@semicircle;
  marker-width:8;
  marker-allow-overlap:true;
  marker-transform:translate(30,-5);
}
#rings_philistia[subtype_3d > 0]::diamond {
  marker-file:@diamond;
  marker-width:8;
  marker-allow-overlap:true;
  marker-transform:translate(10,5);
}
#rings_philistia[subtype_4b > 0]::star {
  marker-file:@star;
  marker-width:8;
  marker-allow-overlap:true;
  marker-transform:translate(20,5);
}
#rings_philistia[subtype_1d2 > 0]::whitecircle{
  marker-file:@whitecircle;
  marker-width:8;
  marker-allow-overlap:true;
  marker-transform:translate(30,5);
}






#pins_type1[decoration_plain > 0]::square {
  marker-file:@square;
  marker-width:8;
  marker-allow-overlap:true;
  marker-transform:translate(10,-5);
}
#pins_type1[decoration_ribbedgrooved > 0]::circle {
  marker-file:@circle;
  marker-width:8;
  marker-allow-overlap:true;
  marker-transform:translate(10,5);
}
#pins_type1[decoration_incised > 0]::star {
  marker-file:@star;
  marker-width:10;
  marker-allow-overlap:true;
  marker-transform:translate(20,-5);
}


/*
#incised_pins::star {
  marker-file:@star;
  marker-width:10;
  marker-allow-overlap:true;
  marker-transform:translate(20,-5);
}
*/

