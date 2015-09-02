union() {
    translate([5,5,0]) cylinder(2,1,1);
    translate([15,5,0]) cylinder(2,1,1);
    translate([5,15,0]) cylinder(2,1,1);
    translate([15,15,0]) cylinder(2,1,1);
    translate([10,10,2]) cylinder(1,10,10);
    translate([10,10,3]) cylinder(4,2,2);
    difference() {
        translate([10,10,7]) cylinder(2,2.2,2);
        translate([6,9.5,7.1]) cube([9.5,1,5]);
    }
}