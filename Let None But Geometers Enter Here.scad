difference(){
  union(){
rotate_extrude(height = 1,$fn=256)
translate([(45+3)/2,0,0])polygon( points=[[0,0],[1,0],[1,-1],[4,-4],[5,-4],[5,-5],[0,-5],]);
rotate([180,0,0])cylinder(d=50,h=5);
  }
translate([15,0,-10-2.5])cylinder(d1=0,d2=10,h=10);
}