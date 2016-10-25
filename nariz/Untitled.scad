use <scad-utils/transformations.scad>
use <scad-utils/shapes.scad>
use <skin.scad>

fn=32;
$fn=60;

r1 = 25;
r2 = 10;
R = 40;
th = 2;

module tube()
{
    difference()
    {
        skin([for(i=[0:fn]) 
              transform(rotation([0,180/fn*i,0])*translation([-R,0,0]), 
                        circle(r1+(r1-r2)/fn*i))]);
        assign(r1 = r1-th, r2 = r2-th)
        skin([for(i=[0:fn]) 
              transform(rotation([0,180/fn*i,0])*translation([-R,0,0]), 
                        circle(r1+(r1-r2)/fn*i))]);
    }
}

tube();