base_thick = 3;
track_depth= 8;

difference() {
    difference() {
        difference() {
            cube([90,70,base_thick+track_depth]);
            translate([40,40,0]) cube([90,90,base_thick+track_depth]);
        }
        translate([10,10,base_thick]) track(track_depth);
    }
//    rotate([0,0,-45]) translate([-30,-30,0]) cube([50,50,base_thick+track_depth]);
    translate([-10,-10,0]) track(base_thick+track_depth);
    translate([28,28,0]) track(base_thick+track_depth);
    translate([35,35,0]) track(base_thick+track_depth);    
}
module track(thick) {
    union() {
        difference() {
            inside_track(thick);
            outside_track(thick);
        }    
        translate([50,0,0]) cube([50,10,thick]);
    }
}

module inside_track(thick) {
    union() {
        translate([40,40,0]) cylinder(thick, 40,40,$fn=20);
        translate([40,0,0]) cube([50,50,thick]);
        translate([0,40,0]) cube([50,50,thick]);
    }    
}

module outside_track(thick) {
    union() {
        translate([50,50,0]) cylinder(thick, 40,40,$fn=20);
        translate([50,0,0]) cube([50,50,thick]);
        translate([0,50,0]) cube([50,50,thick]);      
    }   
}