include <defaults.scad>;
use <Nut.scad>;
use <Bolt.scad>;

h_nut_m2 = 1.5;
a_nut_m2 = 4;
A_nut_m2 = a_nut_m2 / 2;
d_head_m2 = 3.6;
h_head_m2 = 2;
d_m2 = 2; //1.86;

module NutM2(tolerance=default_metric_tolerance, h=h_nut_m2, inset=1) {
  Nut(h=h, A=A_nut_m2, tolerance=tolerance, inset=inset);
}

module BoltM2(l=10, tolerance=default_metric_tolerance, inset=1) {
  Bolt(l=l, h_head=h_head_m2, d_head=d_head_m2, d=d_m2, tolerance=tolerance, inset=inset);
}
