use <../M3.scad>;
use <../M2.scad>;

$fs = 0.5;
$fa = 2;

BoltM3();

translate([0, -10, 0])
NutM3();

translate([10, 0, 0])
BoltM2();

translate([10, -10, 0])
NutM2();
