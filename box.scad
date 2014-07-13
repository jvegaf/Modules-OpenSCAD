
/*test
length=100;
weight=1000;
height=100;
thinkness=2;*/
double_thinkness=thinkness*2;

module exterior_box(weight,length,height) {
	cube([weight,length,height], center=false);	
}

module interior_box(thinkness,weight,length,double_thinkness,height) {
		translate([thinkness,thinkness,thinkness])
			cube([weight - double_thinkness, length - double_thinkness ,height ], center = false);
}


module box(weight,length,height,thinkness,double_thinkness) {
	difference() {
		exterior_box(weight,length,height);
		interior_box(thinkness,weight,length,double_thinkness,height);
	}
}

//box();