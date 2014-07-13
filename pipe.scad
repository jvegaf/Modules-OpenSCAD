
//test
/*lenght=50;
diameter=50;
thickness=0.5;
radio=diameter/2;
inner_radio = radio - thickness;
resolution=200; //would fixit*/

module cilynder_a(lenght,radio,resolution) {
	cylinder(h=lenght,r=radio , $fn=resolution, center = true);
}

module cilynder_b(thinkness,lenght,inner_radio,resolution) {
	translate([thickness*thickness,thickness ,-2])
		cylinder(h=lenght+6,r=inner_radio, $fn=resolution , center = true);
}
module pipe(lenght,diameter,resolution,thinkness,inner_radio) {
	difference() {
		cilynder_a(lenght,radio,resolution);
		cilynder_b(thinkness,lenght,inner_radio,resolution);
	}			
}

//pipe();