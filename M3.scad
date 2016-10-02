include <defaults.scad>;
use <Nut.scad>;
use <Bolt.scad>;

h_nut_m3 = 2.25;
a_nut_m3 = 5.4;
A_nut_m3 = a_nut_m3 / 2;
d_head_m3 = 5.4;
h_head_m3 = 3.2;
d_m3 = 3;

module NutM3(tolerance=default_metric_tolerance, h=h_nut_m3, inset=1) {
  Nut(h=h, A=A_nut_m3, tolerance=tolerance, inset=inset);
}

module BoltM3(l=10, tolerance=default_metric_tolerance, inset=1) {
  Bolt(l=l, h_head=h_head_m3, d_head=d_head_m3, d=d_m3, tolerance=tolerance, inset=inset);
}
