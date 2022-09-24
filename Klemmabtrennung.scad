// File: c:\temp\DIN_Rail_Cable_Clamp.stl
// X size: 60.0
// Y size: 16.0
// Z size: 6.0
// X position: -30.0
// Y position: -6.0
// Z position: 27.0
NE=1; NW=2; SW=3; SE=4; CTR=5;
module obj2origin (where) {
        if (where == NE) {
                objNE ();
        }

        if (where == NW) {
                translate([ -60.0 , 0 , 0 ])
                objNE ();
        }

        if (where == SW) {
                translate([ -60.0 , -16.0 , 0 ])
                objNE ();
        }

        if (where == SE) {
                translate([ 0 , -16.0 , 0 , ])
                objNE ();
        }

        if (where == CTR) {
        translate([ -30.0 , -8.0 , -3.0 ])
                objNE ();
        }
}

module objNE () {
        translate([ 30.0 , 6.0 , -27.0 ])
                import("c:/temp/DIN_Rail_Cable_Clamp.stl");
}



difference(){
union() {
    objNE();
    translate([-20,+14,0]) cube([100,30,5]);
    }
    translate ([-20,0,5]) cube([100,30,5]);
    translate ([18,-1,-1]) cube([24,12,7]);
    //rotate([30,0,0]) translate ([0,10,-1]) cube([24,12,7]);
    rotate([0,0,160]) translate ([5,-13,-1]) cube([24,12,7]);
    rotate([0,0,10]) translate ([62,-9,-1]) cube([24,12,7]);
}
//rotate([0,0,10]) translate ([62,-9,-1]) cube([24,12,7]);