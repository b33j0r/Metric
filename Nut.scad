include <defaults.scad>;
use <Polygon.scad>;

module Nut(
  h=10,
  A=10,
  tolerance=default_metric_tolerance,
  inset=1
) {
  translate([0, 0, -h/2+0.01+((1-inset)*h)])
  Hexagon(
    A=A+tolerance,
    h=h+tolerance*2
  );
}
