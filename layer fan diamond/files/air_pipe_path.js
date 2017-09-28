#! /usr/bin/env node

// Mounting screws and plates, where this part will attach to the main mount


var npt = 8;
var x0  = 18; // shroud diameter
var rx  =   34  // center of nozzle to screw points
		+    4  // thickness of the fan backing plate
		+ 15/2 // half the fan thickness
		- x0;

var y0  = 2+(20-2)/2; // half the shroud
var ry  = 35    // height of the bottom mount screw
        - 6     // exaust down from screw
        - 15/2  // half the pipe diameter
        -y0;    // starting point
//

function point(i, npt) {
	var a = i / (npt-1) * Math.PI/2;
	return "[" + (x0+rx*Math.cos(a)) + ", " + (y0+ry*(1-Math.sin(a))) + "]";
}

var text = "";
text += "// Automatically created by air_pipe_path.js\n";
text += "air_pipe_path = [\n\t" + point(0,npt);
for (var i=1; i<npt; ++i) {
	text += ",\n\t" + point(i, npt);
}
text += "\n];\n";

console.log(text);


