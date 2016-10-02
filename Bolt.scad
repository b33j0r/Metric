include <defaults.scad>;

module Bolt(
  l=10,
  h_head=5,
  d_head=10,
  d=5,
  tolerance=default_metric_tolerance,
  inset=1,
  extra_tolerance=default_bolt_extra_tolerance
) {
  r_head = d_head/2;
  r = d/2;

  translate([0, 0, -inset*h_head]){
    translate([0, 0, 0.01])
    cylinder(r=r_head+tolerance*2, h=h_head);

    translate([0, 0, -l+0.01])
    cylinder(r=r+tolerance*2+extra_tolerance, h=l+0.01);
  }
}
