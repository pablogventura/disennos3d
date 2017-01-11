module
original ()
{
  rotate ([90, 0, 0]) translate ([0, 0,
				  -12.72])
    import ("original/tipo/E3D_integrated_fan.STL", convexity = 8);
}

module
original2 ()
{
  translate ([-17, -19.35, 5]) rotate ([90, 0,
					90])
    import ("original/tipo/fan-nozzle_repaired_1.stl", convexity = 8);
}

module
fan ()
{
  translate ([0, 0, 20]) rotate ([-90, 0, 90])
  {
    difference ()
    {
      hull ()
      {
	cylinder (r = 40 / 2, h = 19);
	translate ([-10, 0, 0]) cube ([30, 20, 19]);
      }
      translate ([-10 + 1, 1, 1]) cube ([30 - 2, 20, 19 - 2]);
    }
    translate ([20 - 3, -(20 - 3), 0]) cylinder (r = 6 / 2, h = 12.5);
    translate ([-(20 - 3), -(20 - 3), 0]) cylinder (r = 6 / 2, h = 12.5);
    translate ([-(20 - 3), 20 - 3, 0]) cylinder (r = 6 / 2, h = 12.5);
    translate ([0, 0, -10])
    {
      translate ([20 - 3, -(20 - 3), 0]) cylinder (r = 3 / 2, h = 12.5);
      translate ([-(20 - 3), -(20 - 3), 0]) cylinder (r = 3 / 2, h = 12.5);
      translate ([-(20 - 3), 20 - 3, 0]) cylinder (r = 3 / 2, h = 12.5);
    }
  }
}

difference ()
{
  union ()
  {
    difference ()
    {
      original ();

//al original le resto la parte de arriba
      translate ([-1, -15, 43.6]) cube ([10, 20, 20]);

      translate ([-2, -65, 10]) rotate ([0, 0, 0]) cube ([10, 30, 30]);
      translate ([-1, -37, 0]) cube ([10, 15, 10]);
    }
//original2();

//sobresaliencia de arriba
    hull ()
    {
      translate ([0, -7, 45]) rotate ([0, 90, 0]) cylinder (r = 10 / 2, h =
							    3);
      translate ([0, -7 - 3 - 2, 45 - 10 - 1.5]) cube ([3, 12, 10]);
    }
    hull ()
    {
      translate ([0, -40 - 1, 11.5]) rotate ([0, 90, 0]) cylinder (r = 4, h =
								   3);
      translate ([0, -35, 11.5]) rotate ([0, 90, 0]) cylinder (r = 4, h = 3);
      translate ([0, -35, 11.5 + 6]) rotate ([0, 90, 0]) cylinder (r = 3, h =
								   3);
    }
  }
  translate ([-1, -25.5 + 1.5, 17.5 - 9]) fan ();
}

//translate([-1,-25.5+1.5,17.5-9])fan();
difference ()
{
  translate ([0, -7, 0]) original ();
  translate ([0, 0, 0.01]) union ()
  {
    translate ([-2, -20, 0]) cube ([60, 60, 60]);
    translate ([-2, -30 - 50, 10]) cube ([60, 60, 60]);
  }
}





module
fan ()
{
  translate ([0, 0, 20]) rotate ([-90, 0, 90])
  {
    difference ()
    {
      hull ()
      {

	translate ([-10 - 1, 0, 0]) cube ([31, 20, 20]);
      }
    }
    translate ([20 - 3, -(20 - 3), 0]) cylinder (r = 6 / 2, h = 30);
    translate ([-(20 - 3), -(20 - 3), 0]) cylinder (r = 6 / 2, h = 30);
    translate ([-(20 - 3), 20 - 3, 0]) cylinder (r = 6 / 2, h = 30);
    translate ([0, 0, -10])
    {
      translate ([20 - 3, -(20 - 3), 0]) cylinder (r = 3 / 2, h = 30);
      translate ([-(20 - 3), -(20 - 3), 0]) cylinder (r = 3 / 2, h = 30);
      translate ([-(20 - 3), 20 - 3, 0]) cylinder (r = 3 / 2, h = 30);
    }
  }
}


difference ()
{
  scale ([1.23, 1, 1]) union ()
  {

    difference ()
    {
      original2 ();
      translate ([-20, -39, -1]) cube ([30, 25, 20]);
    }
    difference ()
    {
      translate ([0, -7, 0]) original2 ();
      translate ([-20, -43 - 5 + 35 + 1, -1]) cube ([30, 40, 20]);
    }

    translate ([-1 - 16, -35 - 2, 2]) cube ([1, 35, 7]);
  }
  translate ([1, -25.5 + 1.5, 17.5 - 9]) fan ();
}

translate ([-10, 12, 6]) difference ()
{
  hull ()
  {
    cylinder (r = (12 + 4 * 2) / 2, h = 3);
    translate ([-(12 + 4 * 2) + 10, -10 - 2 - 1, 0]) cube ([12 + 4 * 2 + 2,
							    13, 3]);
  }
  translate ([0, 0, -1]) cylinder (r = 12.5 / 2, h = 12);
}

// el agarre de arriba del inductor
translate ([-10, 12, 6 + 34.5]) difference ()
{
  hull ()
  {
    cylinder (r = (12 + 4 * 2) / 2, h = 3);
    translate ([-(12 + 4 * 2) + 10 + 10 + 10 + 2, -10 - 2 - 1,
		0]) cylinder (r = 1, h = 3);
  }
  translate ([0, 0, -1]) cylinder (r = 12.5 / 2, h = 12);
  translate ([5, -5, -1]) cylinder (r = 6 / 2, h = 12);
}

translate ([0, 0, 7]) cylinder (r = 2, h = 35);	//columna
translate ([0.4, -2.5, 5.0]) cube ([7, 2.5, 8.5]);	//para que no diga hot
xxx = 26;
yyy = 28;

color ("red") translate ([-10, 12, 0]) rotate ([0, 0, 180 + 90])
cube ([xxx, yyy, 5]);