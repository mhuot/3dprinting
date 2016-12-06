bottom = 60;
size = 30;
thick = 5;
slot = 5.6;
hole = 3;
bot_thick = 5;
mid_thick = 3;
top_thick = 3;

difference() {
    union () {
        cube([size,bottom,bot_thick]);
        translate([0,0,bot_thick]) cube([size,mid_thick,slot]);
        translate([0,0,mid_thick+slot]) cube([size,size,top_thick]);
    }
    translate([size/2,bottom-((size-bot_thick)/2),0]) cylinder(bot_thick,hole,hole);
    translate([size/2,bottom-((size-bot_thick)/2),bot_thick-2]) cylinder(bot_thick,hole+2,hole+2);    
}