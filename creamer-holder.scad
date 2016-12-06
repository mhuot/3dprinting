rows = 1;
columns = 1;
radius = 9.25;
height = 38;
depth = height + radius;
offset = 2;
slotsize = (radius+offset)*2;
zpad = 1;
vent = (offset/2);

for (row = [0:rows-1])
    for (column = [0:columns-1])
        translate([column*slotsize,row*slotsize,0]) slot();

module hole() {
    translate([radius,-vent*(7/8),radius]) cube([vent,vent,height]);
    translate([radius,radius,radius]) sphere(radius);
    translate([radius,radius,radius]) cylinder(height,radius,radius);
}

module slot() {
    difference() {
        cube([slotsize,slotsize,radius+height+offset]);
        translate([offset,offset,offset+zpad]) hole();
    }
}    