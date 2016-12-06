width = 20;
//screwqty = 1;
//screwsize = 2.5;
thickness = 4;
table = 38;
psy = 45;
psx = 45;
tail = psy+(2*thickness);

difference() {
    union() {
        cube([thickness+psy+table+thickness,thickness,width]);
        cube([thickness,tail, width]);
        translate([psx+table+thickness,thickness,0]) cube([thickness,psy,width]);
        translate([thickness+table,thickness+psy,0]) cube([psx+thickness,thickness,width]);
    }
    translate([0,(tail)/2,width/2]) rotate([0,90,0]) cylinder(thickness,2.5,2.5);
}