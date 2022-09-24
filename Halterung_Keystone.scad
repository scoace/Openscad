// Halterung Keyston Modul

$fn=100;

difference() {
union(){
    difference(){
        cube ([39,20,10]);
        translate([3,0,0]) cube([33,17,11]);
    }
    translate([-10,0,0]) cube([10,3,10]);
    translate([39,0,0]) cube([10,3,10]);
    
}
//rotate([90,0,0]) translate([-5,5,0]) cylinder(h=10,d=6);
rotate([90,0,0]) translate([-5,5,-4]) cylinder(h=10,d=5);
rotate([90,0,0]) translate([44,5,-4]) cylinder(h=10,d=5);
}