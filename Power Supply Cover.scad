union() {
    // 173 x 94 x 43 mm
    x_dim = 94;
    y_dim = 43;
    thick = 2;
    f_depth = 30; // z
    f_height = y_dim + thick; // y
    f_width = x_dim + thick; // x
    r_depth = f_depth;
    r_height = f_height;
    r_width = f_width;
    foot_size = r_depth/4;
    translate([0,0,r_depth]) front(thick, f_width, f_height, f_depth); 
    rear(thick*2,r_width, r_height, f_depth);
//    translate([0,r_height,0]) foot(foot_size,thick);
//    translate([r_width-foot_size-1, r_height-1, -1]) rotate(180,0,0) foot(foot_size,thick);
//    translate([0,r_height,(r_depth+f_depth)-foot_size]) foot(foot_size,thick);
//    translate([r_width-foot_size,r_height,(r_depth+f_depth)-foot_size]) foot(foot_size, thick);
}

module foot (foot_size,thick) {
    difference() {
        cube([foot_size,foot_size,foot_size]);
        translate([thick, 0,thick]) cube([foot_size,foot_size,foot_size]);
    }
}
module front (thickness, width, height, depth) {
    difference() {
        difference() {
           cube([width,height,depth]); //exterior
           translate([thickness,thickness,0]) cube([width-(2*thickness),height-(2*thickness),depth]); // interior
        }
        louver(thickness, width, depth);
    }
}

module rear (thickness, width, height, depth) {
    difference() { 
        difference() {
           cube([width,height,depth]); //Exterior
           translate([thickness,thickness,thickness]) cube([width-(2*thickness),height-(2*thickness),depth + thickness]); //interior
        }
        right_cord(thickness, width, height, depth, 10);
        left_cord(thickness, width, height, depth, 10);
        switch(thickness, 20, 10);
    }
}

module switch (thickness, sw_x, sw_y) {
    translate([thickness*2, 0, thickness*2]) rotate ([0,0,0]) cube([sw_x,thickness, sw_y]);   
}
module left_cord (thickness, width, height, depth, radius) {
    translate ([0, height/2, radius + thickness*2]) rotate ([0, 90, 0])  cylinder(thickness*8, radius, radius);
}

module right_cord (thickness, width, height, depth, radius) {
    translate ([width - (thickness), height/2, radius + thickness*2]) rotate ([0, 90, 0])  cylinder(thickness*8, radius, radius);
}

module louver (thickness, width, depth) {
    // Left side
    for ( i = [thickness * 2 : 2 * thickness : width/2 - (5 * thickness)] ) {
        translate([i,0,thickness]) rotate(-45,0,0) cube([thickness,(2 * thickness) + (0.5 * thickness * sqrt(2)),(depth-(2 * thickness))]);
    }
    
    // Right side
    for ( i = [ width/2 + (5 * thickness) : 2 * thickness : width - (2 * thickness)] ) {
        translate([i,0-thickness,thickness]) rotate(45,0,0) cube([thickness, (3 * thickness) + (0.5 * thickness * sqrt(2)),(depth-(2 * thickness))]);
    }    
}