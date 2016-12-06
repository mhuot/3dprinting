thickness = 6;
radius = 15;
width = 5;
edge = 2;
union() {
    difference() {
        inside_track();
        outside_track();
    }
    rotate([0,0,45]) translate([7.5,-20,0]) cube([width+(2*edge),40,12]);
}

module inside_track() {
    union() {
        translate([radius,radius,0]) cylinder(thickness,radius,radius);
        translate([0,radius,0]) cube([width+(2*edge),80,thickness]);
        translate([radius,0,0]) cube([80,width+(2*edge),thickness]);
    }
}


module outside_track() {
    newrad = ((2*radius)-(width+(2*edge)))/2;
    // 19.5
    union() {
        translate([radius+((width+(2*edge))/2),radius+((width+(2*edge))/2),0]) cylinder(thickness,newrad,newrad);
        translate([width+(2*edge),20,0]) cube([10,80,thickness]);
        translate([20,width+(2*edge),0]) cube([80,10,thickness]);
  }
}