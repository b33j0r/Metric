use <../M3.scad>;
use <../M2.scad>;

$fs = 0.5;
$fa = 2;

layer_height=0.2;

module CalibrationSection(w=16, l=26, h=4, tolerance=0) {
  translate([0.8,-l/2+1.5,h])
  linear_extrude(height=layer_height*4)
  text(str(tolerance*10), size=5, halign="center", font="arial:style=bold");

  difference() {

    translate([-w/2, -l/2, 0]){
      cube([w, l, h]);
    }

    translate([0, 2, 0]) {
      translate([-w/5, 0, 0]) {
        translate([0, l/4, h]) {
          NutM3(tolerance=tolerance);
          translate([0, 0, 5])
          BoltM3(tolerance=tolerance);
        }

        translate([0, 0, h+tolerance])
        BoltM3(tolerance=tolerance, inset=0);

        translate([0, -l/4, h+tolerance])
        BoltM3(tolerance=tolerance);
      }

      translate([w/4, 0, 0]) {
        translate([0, l/4, h]) {
          NutM2(tolerance=tolerance);
          translate([0, 0, 5])
          BoltM2(tolerance=tolerance);
        }

        translate([0, 0, h+tolerance])
        BoltM2(tolerance=tolerance, inset=0);

        translate([0, -l/4, h+tolerance])
        BoltM2(tolerance=tolerance);
      }
    }
  }
}

module CalibrationPlate(n=3, w=16) {
  translate([-(w/2*(n-1)), 0, 0])
  for(i=[0.0:n-1]) {
      translate([w*i, 0, 0])
      CalibrationSection(w=w, tolerance=0.1*i);
  }
}

CalibrationPlate(n=3);
