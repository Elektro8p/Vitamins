/* Towerpro SG90 Servo.

The Tower Pro™ Micro Servo 9g

*/

use <../MCAD/boxes.scad>

$fn = 100;

TotalHeight = 30.6;
TotalWidth = 32.16;
TotalThickness = 12;

OutputHeight = 3.38;
OutputFromSide = 5.5;
OutputDia = 4.4;

AboveEarHight = 8.9;
EarHeight = 2.3;
BodyWidth = 21.5;

BoltHoles = 2.5


//main body



union()
{
	color("blue")
	roundedBox([BodyWidth,TotalThickness,TotalHeight-OutputHeight],1,1);
	translate([(BodyWidth)/2-OutputFromSide,0,(TotalHeight-OutputHeight)/2])
	color("white")
	cylinder(OutputHeight,OutputDia/2,OutputDia/2);

	translate([-(TotalWidth)/2,-TotalThickness/2,(TotalHeight)/2-EarHeight-AboveEarHight])
	color("blue")
	cube([TotalWidth,TotalThickness,EarHeight]);
}
	// BoltHoles
	
	