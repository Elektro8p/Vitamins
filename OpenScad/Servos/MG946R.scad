/* Towerpro MG946R Servo.

The Tower Pro™ MG946R Digi Hi torque

*/

use <../MCAD/boxes.scad>
use <horns.scad>

$fn = 1000;

TotalHeight = 42.10;
TotalWidth = 55;
TotalThickness = 19;

OutputHeight = 3.8;
OutputFromSide = 10;
OutputDia = 5.9;

AboveEarHight = 13;
EarHeight = 2.6;
BodyWidth = 40.8;

BoltHoles = 2.5;


//main body

module MG946R()
{
	difference()
	{
		union()
		{
			color("black")
			roundedBox([BodyWidth,TotalThickness,TotalHeight-OutputHeight],1,1);
			translate([(BodyWidth)/2-OutputFromSide,0,(TotalHeight-OutputHeight)/2])
			color("silver")
			cylinder(OutputHeight,OutputDia/2,OutputDia/2);
		
			translate([-(TotalWidth)/2,-TotalThickness/2,(TotalHeight)/2-EarHeight-AboveEarHight])
			color("black")
			cube([TotalWidth,TotalThickness,EarHeight]);
		}
		// BoltHoles
		
		for(i=[0:1]) //loop i from 0 to 1,
		{
			rotate ([0,0,180 * i])
			{
				translate([(TotalWidth)/2-4,-TotalThickness/2+4,(TotalHeight)/2-EarHeight-AboveEarHight-1])
				cylinder(5,d = 4);
			
				translate([(TotalWidth)/2-4,-TotalThickness/2+15,(TotalHeight)/2-EarHeight-AboveEarHight-1])
				cylinder(5,d = 4);
			}
		}
	}
	
	
	//Horn
	translate([(BodyWidth)/2-OutputFromSide,0,(TotalHeight/2)+2.5])
	rotate([180,0,180])
	FSH_6E(1);
	
}

MG946R();