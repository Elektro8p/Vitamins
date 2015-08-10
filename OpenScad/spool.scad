/*
	Spool, written in OpenScad by Skippy - http://philipmcgaw.com
	
	

	This work is licensed under the Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International License. To view a copy of this license, visit http://creativecommons.org/licenses/by-nc-sa/4.0/.
*/

// Things to Use

// Variables

	innerDia	=	215;
	outerDia	=	297;
	mountDia	=	52;
	wallThick	=	5;
	totalThick	=	120;

module spool() 
{
	// Main Body
	difference()
	{
		union()
		{
			// outside Walls
			difference()
			{
				cylinder(d = outerDia, h = totalThick, center = true);
				cylinder(d = outerDia + 1, h = totalThick - 2 * wallThick, center = true);
			}
			// inner Tube
			cylinder(d = innerDia, h = totalThick - 1, center = true);
		}
		// mounting hole
		cylinder(d = mountDia, h = totalThick + 1, center = true);
	}
}

spool();