thickness = 5;
height = 7;
width = 25;
length = 80;
difference() {
    union() {
        translate ([((thickness*2)+height)/2,0,((thickness*2)+height)/2]) rotate([-90,0,0]) {cylinder(length,((thickness*2)+height)/2,((thickness*2)+height)/2);}; // left side
        translate ([(((thickness*2)+height)/2)+width,0,((thickness*2)+height)/2]) rotate([-90,0,0]) {cylinder(length,((thickness*2)+height)/2,((thickness*2)+height)/2);}; //right side
        translate ([((thickness*2)+height)/2,0,0]) cube([width,length,height+(thickness*2)]); // outer shell
    }
   translate ([((thickness*2)+height)/2,0,thickness]) cube([width,length,height]); //cavity
}
