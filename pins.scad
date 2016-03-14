side_plate= 20;
pin_rad=5;
plate_thickness = 3;
pin_length=20;
mount_width = 20;

union() {
    cube([side_plate*2,mount_width,plate_thickness]);
    translate([0,mount_width-plate_thickness,0]) plate();
    translate([side_plate,mount_width,pin_rad]) pin();
    quarter_circle();
}
module plate() {
    difference() {
        translate([side_plate,0,0]) rotate([0,90,90]) cylinder(plate_thickness,side_plate,side_plate,$fn=20);
        translate([0,0,-side_plate]) cube([side_plate*2,plate_thickness,side_plate]);
    }
}

module pin() {
    rotate([0,90,90]) cylinder(pin_length,pin_rad,pin_rad,$fn=20);
}    

module quarter_circle() {
    cylinder([plate_thickness, side_plate, side_plate]);
}