base_thick = 1.5;
track_depth= 5;

union() {
    translate([5,5,0]) main();
    cube([80,5.2,base_thick]);
    cube([5.2,53,base_thick]);
    translate([2,3,0]) rotate([0,0,-45]) cube([2,21,base_thick]);
}

module main() {
    difference() {
        difference() {
            difference() {
                union() {
                    cube([12,48,base_thick+track_depth]);
                    translate([10,10,0]) cube([10,21,base_thick+track_depth]);
                    translate([10,10,0]) cube([21,10,base_thick+track_depth]);
                    cube([50,12,base_thick+track_depth]);
                    translate([50,0,0]) cube([30,8,base_thick+track_depth]);
                }
                translate([28,18,0]) cube([4,4,base_thick+track_depth]);
                translate([18,28,0]) cube([4,4,base_thick+track_depth]);
                translate([45,1.6,base_thick]) cube([35,5,track_depth]);
                translate([20,20,0]) cube([10,10,base_thick+track_depth]); 
                translate([40,40,0]) cube([30,90,base_thick+track_depth]);
            }
            translate([1.6,1.6,base_thick]) track(track_depth);
        }
        rotate([0,0,-45]) translate([-30,-30,0]) cube([40,40,base_thick+track_depth]);
        translate([-5,-5,0]) track(base_thick+track_depth);
        rotate([0,0,45]) translate([-15,-15,0]) cube(30,30,base_thick+track_depth);
        translate([8,8,0]) track(base_thick+track_depth);
    //    translate([30,30,0]) track(base_thick+track_depth);    
    }
}

module track(thick) {
    union() {
        difference() {
            inside_track(thick);
            outside_track(thick);
        }    
//        translate([52,0,0]) cube([50,10,thick]);
    }
}

module inside_track(thick) {
    union() {
        translate([40,40,0]) cylinder(thick, 40,40,$fn=200);
        translate([40,0,0]) cube([50,50,thick]);
        translate([0,40,0]) cube([50,50,thick]);
    }    
}

module outside_track(thick) {
    union() {
        translate([45,45,0]) cylinder(thick, 40,40,$fn=200);
        translate([45,0,0]) cube([50,50,thick]);
        translate([0,45,0]) cube([50,50,thick]);      
    }   
}