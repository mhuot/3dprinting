
cornerRad = 3.5;
rpiOutline(1);

module rpiOutline(thick) {
    union() {
        translate([3.5,3.5,0]) corner(thick); // Lower Left
        translate([27.5,3.5,0]) corner(thick); // Lower Right
        translate([3.5,63,0]) corner(thick); //Upper Left
        translate([27.5,63,0]) corner(thick); // Upper Right
        translate([3.5,0,0]) cube([24,66.5,thick]); // Top and Bottom
        translate([0,3.5,0]) cube([31,59,thick]); // Sides
    }
}

module corner (thick) {
    cylinder(thick,cornerRad,cornerRad);
}