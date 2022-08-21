function getFn(r) =
  is_undef($fn) || $fn < 1 ? (
    let (
      fnAngle = 360 / $fa,
      fnSize = floor(2 * PI * r / $fs)
    )
    fnSize < 3 ?
      fnAngle
    :
      min(fnAngle, fnSize)
  ) :
    $fn;

module inscribe2d(depth, baseOffset, width = 0, height = 0) {
  translate([0, 0, baseOffset - depth]) {
    linear_extrude(depth, center = false) {
      if (width > 0 || height > 0) {
        resize([width, height], auto=[true, true, false]) {
          children();
        }
      } else {
        children();
      }
    }
  }
}

module monogram(text, font, depth, baseOffset, width = 0, height = 0) {
  inscribe2d(depth, baseOffset, width, height) {
    if (is_undef(font)) {
      text(text, size = 10, valign = "center", halign = "center");
    } else {
      text(text, font = font, size = 10, valign = "center", halign = "center");
    }
  }
}

module bend(radius) {
  sides = getFn();
  innerRadius = radius * cos(180 / sides);
  stepAngle = 360 / sides;
  stepWidth = 2 * radius * sin(180 / sides);
  translate([0, 0, radius - innerRadius]) { // Correct for the difference in inner and outer radius
    for (step = [1 : sides]) {
      angle = (step - 0.5) * stepAngle;
      offset = -(step - 0.5) * stepWidth;
      translate([0, 0, innerRadius]) {
        rotate([0, -angle, 0]) {
          translate([0, 0, -innerRadius]) {
            intersection() {
              translate([offset, 0, 0]) {
                children();
              }
              cube(size = [stepWidth, stepWidth * sides, 2 * radius], center = true);
            }
          }
        }
        rotate([0, angle, 0]) {
          translate([0, 0, -innerRadius]) {
            intersection() {
              translate([-offset, 0, 0]) {
                children();
              }
              cube(size = [stepWidth, stepWidth * sides, 2 * radius], center = true);
            }
          }
        }
      }
    }
  }
}

module labeledDisc(radius, thickness, label) {
  difference() {
    cylinder(r = radius, h = thickness, center = true);
    rotate([90, 0, -90]) {
      translate([0, 0, -radius]) {
        bend(radius = radius) {
          mirror([1, 0, 0]) {
            monogram(label, font="Hugh is Life Personal Use:style=Italic", height = (thickness * 0.8), depth = 2.01, baseOffset = 2);
          }
        }
      }
    }
  }
}

$fn = 36;
render(convexity = 10) {
  radius = 20;
  thickness = 10;
  labeledDisc(radius, thickness, "Nunca dejes de hidratarte");
}
