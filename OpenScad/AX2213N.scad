/*
	AX-2213 Motor, written in OpenScad by Skippy - http://philipmcgaw.com
	
	The AX-2213 is an out runner

	This work is licensed under the Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International License. To view a copy of this license, visit http://creativecommons.org/licenses/by-nc-sa/4.0/.

*/

// Things to Use

// Variables

module AX2213() 
{
	cylinder(d = 28, h = 33, center = true);
	translate([0,0,24])
	cylinder(d = 5, h = 15, center = true);

	// Mounting Holes.
	translate([0, 0, -20])
	for (i = [0 : 3])
	{
		rotate(i * 360 / 4)
		translate([0, 23.5/2 - 1.5, 0])
		#cylinder(h = 10, d = 3, center=true);
	}
	
	
}

AX2213();