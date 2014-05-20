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
{
  marker-width:8;
  marker-fill:black;
  marker-line-color:gray;
  marker-allow-overlap:true;
  marker-file:url('maki/star-18.png');
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
  #map11[SITE='Gath'] { text-placements: 'E'; text-dy:4;}

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

