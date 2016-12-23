$fn = 100;

module cim() {
    bodyHeight = 4.315;
    edgeHeight = 0.25;

    translate([0,0,0.197]) {
        translate([0,0,edgeHeight]) color([0.2,0.2,0.2]) cylinder(r=1.26,h=4.315-2*edgeHeight);
        color([0.75,0.75,0.75]) cylinder(r=1.26,h=edgeHeight);

        color([0.75,0.75,0.75]) difference() {
            translate([0,0,4.315-edgeHeight])  cylinder(r=1.26,h=edgeHeight);
            translate([1,0,0]) cylinder(r=0.08,h=10);
            translate([-1,0,0]) cylinder(r=0.08,h=10);
        }
    } color([0.75,0.75,0.75]) cylinder(r=0.6,h=0.197);

    color([0.75,0.75,0.75]) translate([0,0,0.197+bodyHeight]) {
        cylinder(r=0.375,h=0.157);
        cylinder(r=0.16,h=1.402);
    }
}

module hex(diam,length) {
    cylinder(r=diam/2,h=length,$fn=6);
}

hex(1/2,10);
