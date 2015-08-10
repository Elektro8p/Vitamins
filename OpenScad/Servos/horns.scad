$fn=100;

module FSH_6E(Arms = 2)
{
	color("black")
	difference()
	{
		union()
		{
			cylinder (h = 2.4, d=12.8, center = true);
			for(i=[0:Arms - 1]) //loop i from 0 to 1,
			{ 
				rotate ([0,0,360/Arms * i])
				{
					difference()
					{
						union()
						{
							translate ([17/2,0,0])
							{
								rotate ([0,0,8])
								translate ([0,-2.4/2,0])
								cube([16,5,2.4], center = true);
							}
							translate ([17/2,0,0])
							{
								rotate ([0,0,-8])
								translate ([0,2.4/2,0])
								cube([16,5,2.4], center = true);
							}
							translate ([17,0,0])
							cylinder (h = 2.4, d=5, center = true);
						}
					
						// the holes.
					
						translate ([17,0,-2])
						cylinder (h = 5, d=1.2);
						translate ([14,0,-2])
						cylinder (h = 5, d=1.2);
						translate ([10.5,0,-2])
						cylinder (h = 5, d=1.2);
						translate ([7,0,-2])
						cylinder (h = 5, d=1.2);
					}
				}
				cylinder (h = 4, d=8.6);
			}
		}
		translate ([0,0,-1.3])
		cylinder (h = 1.6, d=5.6);
		cylinder (h = 3, d=3);
		translate ([0,0,0.7])
		cylinder (h = 20, d=5.3);
	}
}


FSH_6E(1);