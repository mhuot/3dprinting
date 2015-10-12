thickness = 4.5;
difference() {    
    difference () {
        difference() {
            union() {
                translate ([41.5, 41.5,0]) cylinder(thickness, 41.5, 41.5);
                translate ([0, 41.5, 0]) cube ([83, 47.5, thickness]);
            }
        translate ([41.5, 32,0]) cylinder(thickness, 25, 25);
        }
        translate([20, 85, 0]) cube([40,20,thickness]);
    }
    translate ([77,0,0]) cube([10,100,thickness]);
}