/*
	Slip Ring, written in OpenScad by Skippy - http://philipmcgaw.com
	
	Adafruit Slip Ring with Flange (22 mm diameter, 6 wires, max 2 A @ 240 V). http://adafruit.com/product/736

	This work is licensed under the Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International License. To view a copy of this license, visit http://creativecommons.org/licenses/by-nc-sa/4.0/.
*/

// Things to Use

// Variables

module slipRing() 
{
	// Main Body
	cylinder(d = 22, h = 17, center = true);
	// collate
	translate([0,0,8.5])
	{
		difference()
		{
			cylinder(d = 44, h = 2.5, center = true);
			// Mounting Holes.
			for (i = [0 : 2])
			{
				rotate(i * 360 / 3)
				translate([0, 44/2 - 4.5, 0])
				cylinder(h = 3, d = 5, center=true);
			}
		}
	}
	// Inside Body
	translate([0,0,14.5])
	cylinder(d = 8, h = 9, center = true);
}

slipRing();