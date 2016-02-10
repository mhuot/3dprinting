cornerRad = 3.5;
baseThickness = 1;
usbWidth = 9;
powerCenter = 55;
usbCenter = 42;
// Printed with green PLA at 210C 1.03 x 1.025 x 1.025 scaling
hdmiCenter = 13;
hdmiWidth = 13;
sdWidth = 13.5;
sdCenter = 16.75;
slotHeight = 3;
height = 3;

union() {
    difference() {
        translate([5.5,4.5,0]) cylinder(6,2,2); // Lower left
        translate([5.5,4.5,0]) screwhole();
    }
    difference() {
        translate([28.5,4.5,0]) cylinder(6,2,2); // Lower right
        translate([28.5,4.5,0]) screwhole(); // Lower right
    }
    difference() {
        translate([28.5,63.5,0]) cylinder(6,2,2); // Upper right
        translate([28.5,63.5,0]) screwhole(); // Upper right
    }
    difference() {
        translate([5.5,63.5,0]) cylinder(6,2,2); // Upper left    
        translate([5.5,63.5,0]) screwhole(); // Upper left
    }
    difference() {
        union() {
            cube([34,69,2]);
            translate([1,1,1.5]) rpiOutline(3);
        }
        translate([0,1,0]) {
            translate([0,(powerCenter-(usbWidth/2)),slotHeight]) cube([8,usbWidth,height]);
            translate([0,(usbCenter-(usbWidth/2)),slotHeight]) cube([8,usbWidth,height]);
            translate([0,hdmiCenter-(hdmiWidth/2),slotHeight-0.5]) cube([10,hdmiWidth,height]);    
        }
        translate([5.5,4.5,0]) screwhole(); // Lower left
        translate([28.5,4.5,0]) screwhole(); // Lower right
        translate([28.5,63.5,0]) screwhole(); // Upper right
        translate([5.5,63.5,0]) screwhole(); // Upper left
//        translate([1,0,0]) {
//            translate([(34-8)-sdWidth,0,slotHeight]) cube([sdWidth,2,height]); // SD Slot
//        }
        translate([8,8,2]) cube([18,53,3]);

    }
    
}

module rpiOutline(thick) {
    union() {
        translate([3.5,3.5,0]) corner(thick); // Lower Left
        translate([28.5,3.5,0]) corner(thick); // Lower Right
        translate([3.5,63,0]) corner(thick); //Upper Left
        translate([28.5,63,0]) corner(thick); // Upper Right
        translate([3.5,0,0]) cube([24,66.5,thick]); // Top and Bottom
        translate([0,3.5,0]) cube([32,59,thick]); // Sides
    }
}

module screwhole () {
        cylinder(8,1.375,1.375);
}
module corner (thick) {
    cylinder(thick,cornerRad,cornerRad);
}