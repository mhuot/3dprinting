rows = 3;
columns = 4;
radius = 9.325;
height = 38 * 0.75;
depth = height + radius;
offset = 0;
slotsize = (radius*2);
zpad = 1;
shell = 1;
totalheight = height + zpad + radius;

difference () {
    cube([slotsize*columns+(2*shell),slotsize*rows+(2*shell),totalheight]);
    translate([shell,shell,shell]) holes();
}

module holes() {
    for (row = [0:rows - 1])
            for (column = [0:columns-1])
                translate([column*slotsize,row*slotsize,1]) hole();
 }
module hole() {
    translate([radius,radius,radius]) sphere(radius+0.1);
    translate([radius,radius,radius]) cylinder(height,radius+0.1,radius+0.1);
}

module slots() {
    for (row = [0:rows-1])
        for (column = [0:columns-1])
            translate([column*slotsize,row*slotsize,0]) slot();
}

module slot() {
    difference() {
        cube([slotsize,slotsize,radius+height+offset]);
        translate([offset-0.1,offset-0.1,offset+zpad]) hole();
//        translate([slotside/2,-(((slotside*sqrt(2))-slotside)/2),offset+zpad+radius]) rotate([0,0,45])  cube([slotsize,slotsize,height*.8]);
    }
}    