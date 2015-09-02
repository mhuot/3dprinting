thickness = 2;
width = 100;
height = 30;
depth = 30;
difference() {
    difference() {
        cube([width,height,depth]);
       translate([thickness,thickness,thickness]) cube([width-(2*thickness),depth-(2*thickness),height + thickness]);
    }
    for ( i = [thickness * 2 : 2 * thickness : width/2 - (5 * thickness)] ) {
        translate([i,(thickness * -2),thickness]) rotate(-45,0,0) cube([thickness,depth/2,(height-(2 * thickness))]);
    }
    for ( i = [ width/2 + (3 * thickness) : 2 * thickness : width - (5 * thickness)] ) {
        translate([i,(thickness * -2),thickness]) rotate(45,0,0) cube([thickness,depth/2,(height-(2 * thickness))]);
    }
}