difference() {
    cube([91, 53, 20]); // 38 + 45 = 83 then + 8
    translate([4,4,0]) cube([83,45,20]);
    translate([4,4,0]) cube([38,49,20]);
}