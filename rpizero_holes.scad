cornerRad = 3.5;
baseThickness = 1;
usbWidth = 8.8;
powerCenter = 54;
usbCenter = 41.4;
// Printed with green PLA at 210C 1.03 x 1.025 x 1.025 scaling
hdmiCenter = 12.4;
hdmiWidth = 14;
sdWidth = 12;
sdCenter = 16.9;
difference() {
    difference() {
        cube([32,67,4]);
        translate([1,1,1.5]) rpiOutline(4);
    }
    translate([4.5,4.5,0]) screwhole();
    translate([27.5,4.5,0]) screwhole();
    translate([27.5,62.5,0]) screwhole();
    translate([4.5,62.5,0]) screwhole();
    translate([0,1,0]) {
        translate([30,powerCenter-(usbWidth/2),1]) cube([2,usbWidth,3]);
        translate([30,usbCenter-(usbWidth/2),1]) cube([2,usbWidth,3]);
        translate([30,hdmiCenter-(hdmiWidth/2),1]) cube([2,hdmiWidth,3]);    
    }
    translate([1,0,0]) {
        translate([7,0,1]) cube([sdWidth,2,3]); 
    }
}

module rpiOutline(thick) {
    union() {
        translate([3.5,3.5,0]) corner(thick);
        translate([26.5,3.5,0]) corner(thick);
        translate([3.5,61.5,0]) corner(thick);
        translate([26.5,61.5,0]) corner(thick);
        translate([3.5,0,0]) cube([23,65,thick]);
        translate([0,3.5,0]) cube([30,58,thick]);
    }
}

module screwhole () {
        cylinder(2,1.375,1.375);
}
module corner (thick) {
    cylinder(thick,cornerRad,cornerRad);
}