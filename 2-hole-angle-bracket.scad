size = 30;
thick = 4;
hole = 3;
difference() {
    difference() {
        cube([size,size,size]);
        translate([0,thick,thick]) cube([size,size,size]);
    }
    translate([size/2,size-((size-thick)/2),0]) cylinder(thick,hole,hole);
    translate([size/2,0,size-((size-thick)/2)]) rotate([-90,0,0]) cylinder(size,hole,hole);
}