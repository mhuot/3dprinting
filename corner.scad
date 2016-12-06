thickness = 1/8;
difference() {
    difference() {
        difference() {
            cube([2+(thickness),2+(thickness),1.75+thickness]);
            translate([1/16,1/16,1/16]) cube([2-thickness,2-thickness,2-thickness]);
        }
        translate([1+(1/4)+ thickness, 0, 1/4]) rotate([-90,0,0]) cylinder(1/8,1/8,thickness,$fn=20);
    }
    translate([9/16+thickness,0,5/8+thickness]) rotate([-90,0,0]) cylinder(1/8,1/8,thickness,$fn=20);
}