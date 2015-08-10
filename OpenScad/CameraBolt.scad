/*
	Threaded rod for camera mounts, Clearance Holes, and Nuts for NutTraps.

	1/4" - 20 Unified National Coarse class 1A, (British Standard Witworth also fits).

	This thread is used for rangefinder camera, roll film cameras (also DSLRs) up to medium format cameras, quick release plates and panoramic heads.

	As per the standard is ISO 1222:2010 the bolt extends 4.5 mm into the camera body. 

	3/8" - 16 Unified National Coarse, British Standard Witworth.
	Some medium format cameras and almost all large size cameras as well as most of the connectors between tripods and panoramic heads use this thread.

	This work is licensed under the Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International License. To view a copy of this license, visit http://creativecommons.org/licenses/by-nc-sa/4.0/.

*/

// Variables for 1/4" 
RodDia = 6.35;			// Diameter of the Bolt
NutH = 4.4;				// 11/64" = 4.365625 mm
NutDia = 12.84;			//  7/16" across flats

/*
// Variables for 3/8" 
RodDia = 9.53;			// Diameter of the Bolt
NutH = 6.35;			//  1/4" = 6.35 mm
NutDia = 16.5;			// 9/16" across flats
*/

module CameraNut()
{
	// Use for nut trap
	cylinder(d = NutDia, h = NutH, $fn = 6);
}

module BlankCameraHole()
{
	// Round hole 1mm bigger than accross corners.
	cylinder(d = NutDia + 1, h = NutH);
}

module CameraRod(Length = 24.5)
{
	// Blank Rod
	cylinder(d = RodDia, h = Length);
}

module CameraBolt(Length)
{
	// Assembled Bolt
	translate([0,0,-NutH])
	{
		CameraNut();
		CameraRod(RodDia, Length);
	}
}

CameraRod(24.5);