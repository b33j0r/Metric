use <../M3.scad>;

$fs = 0.5;
$fa = 2;

w = 10;
h = 10;

difference() {
  translate([-w/2, -w/2, -h])
  cube([w, w, h]);

  BoltM3(l=15, inset=1);
}
