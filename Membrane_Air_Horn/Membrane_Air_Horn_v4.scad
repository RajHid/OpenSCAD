// * Discription what the *.scad is about ect.
// Wall mount for EC3 Plgs to make a put troug for connekting a Prusa printer PSU to a enclosed Printer

// The Connectors are very similar:
// The housing of Female connector has a plastic casing that fits in the male plastic casing
// The Female electric Connektor is the one that recives the male slotted one (banana) connector whith springs on the outside

// ==================================
// = Used Libraries =
// ==================================
// Used Librareis and usage
// == Threads ==

//use <threadlib/threadlib.scad>
// LINK:
//// https://github.com/adrianschlatter/threadlib
// USAGE:
//// bolt("M6", turns=10, higbee_arc=30);
//// tap , bolt, nut

//m6();  
/*
module m6(){
    union(){
        difference(){
            cylinder(h=5,d1=25,d2=25, $fn=4);
            bolt("M6", turns=6, higbee_arc=30); // tap , bolt, nut
            translate([12.5,0,5]){
            //cube([25,25,10],center=true);
            }
        }
    }
}
*/
// ==================================
// = Variables =
// ==================================

// == Direct Input Variables ==
/// Hanger

HangerWidth=4;
HangerLength=8;
HangerHeigth=2.5;
HangerHoleDiametrer=2;

/// Bottom
BottomHeight=5;

/// Inner tube diameter
Tube_d=29;  // Set1 25mm, Set2 29mm
WallThickness_Tube=1.5; //

/// Outer Tube
WallThickness=2; // 2
BlowCanHeight=38;
BlowCanDiameter=42; // Set1 38mm, Set2 42mm

/// Overheight to tauten the membrane
MembraneTubeDelta=3;
InnerTubeHeight=MembraneTubeDelta+BlowCanHeight;

/// Membrane Cover
MembraneProtektorThikness=1.5;
MembraneClerance=6;
ClampLipHeight=MembraneClerance+MembraneTubeDelta+MembraneProtektorThikness;
MembraneCoverHeight=14;
ClampLipOverlap=MembraneCoverHeight-ClampLipHeight;
MembraneSpacing=-0.22;

// === 1 ===


// === 2 ===


// === 3 ===



// == Positioning Variables ==

// == Dependant Variables ==

// Positioning 


// === Facettes Numbers ===
// - $fn Values for Cylinders and Spheres

FN_HexNut=6;
FN_Performance=36;
FN_Rough=12;
FN_Medium=36;
FN_Fine=72;
FN_ExtraFine=144;

FN_M8=8.00;

// == Calculated Variables

// === 1 ===

// === 2 ===

// === 3 ===

// ==================================
// = Tuning Variables =
// ==================================
// Variables for finetuning (The Slegehammer if something has to be made fit)

// ==================================
// = Test Stage =
// ==================================

module MirrorMirrorOnTheWall(Offset){
    translate([0,Offset,0]){
        children();
        mirror([1,0,0]){
            children();
        }
    }
    translate([0,-Offset,0]){
        mirror([0,1,0]){
            children();
            mirror([1,0,0]){
                children();
            }
        }
    }
}
// == See me ==
//// For Testing and Development


see_me_half(){
        translate([0,0,0]){
            //Blow_Can();
        }
        translate([0,0,0]){
            linear_extrude(height=1){
            //Projection_Cutter(0){
                //Blow_Can();
            //}
            }
        }
        translate([0,0,0]){
            Membrane_Cover_Ring();
        }
        translate([-BlowCanDiameter/2-HangerLength/2,HangerWidth/2,0]){
            rotate([0,0,-90]){
                //Hanger();
            }
        }
        union(){
             
        }
        union(){

        }
}
module see_me_half(){
    //difference(){
        //union(){
          translate([0,0,0]){
            for(i=[0:1:$children-1]){
                a=255;
                b=50;
                k_farbabstand=((a-b)/$children);
                Farbe=((k_farbabstand*i)/255);
                SINUS_Foo=0.5+(sin(((360/(a-b))*k_farbabstand)*(i+1)))/2;
                COSIN_Foo=0.5+(cos(((360/(a-b))*k_farbabstand)*(i+1)))/2;
                color(c = [ SINUS_Foo,
                            1-(SINUS_Foo/2+COSIN_Foo/2),
                            COSIN_Foo],
                            alpha = 0.5){  
                    //MirrorMirrorOnTheWall(0){
                    difference(){
                        //MirrorMirrorOnTheWall(0){
                            render(convexity=20){children(i);}
                            //children(i);
                        //}
// Creates a Cutting to see a Sidesection cut of the objects
                            color(c = [ SINUS_Foo,
                                1-(SINUS_Foo/2+COSIN_Foo/2),
                                COSIN_Foo],
                                alpha = 0.2){
                                translate([70/2,0,0]){
                                    //cube([70,70,150],center=true);
                                }
                                translate([-30,0,0]){
                                    cube([30,30,150],center=false);
                                    }
                                }
                            }
                        }
                    }
                    //MAIN_AXIS_ARRANGEMENT();
                } // sin((2*PI*i)/$children)
            }

// == Testprints ==

Projection_Cutter(0){
    //Blow_Can();
}

//// == Cutes a slice of the Objekts
Intersection_Test_Cut("yz",1,0){
// Intersection_Test_Cut("Plaine xy yz xz", Slicethickness , Distance from coordinate origin in plaine )
    //Wall_Case();
    //Half_Cutter(HalfCutterOffset);
    //Wall_Case_Base_Shape();
    //Test_Plug_Case_Arrangment();
    //Main_Axis_Plug_Arrangement();
    //Enviroment_Enclosure_Wall();
}

// ==================================
// =
// ==================================

// ==================================
// = Stage =
// ==================================
// Final module for Produktion

// Checklist for Real Printing
//// Are the Scale parameter set for fitting the EC3-Plug? --> Should cut the hole sligthly bigger by 2% to 5% (1.02 to 1.05)
//echo("",);
//// Are the Holes for put Trhough the EC3-Plug big enugh?



// ===============================================================================
// =--------------------------------- Enviroment Modules ------------------------=
// ===============================================================================
// Modules that resembles the Enviroment aka the helmet where to atach a camera mount

// ===============================================================================
// =--------------------------------- Modules -----------------------------------=
// ===============================================================================
//Blow_Can();
module Blow_Can(){
difference(){
    union(){
        Can_Bottom(BlowCanDiameter);
        // inner tube
        Ring_Shaper(InnerTubeHeight-WallThickness_Tube/2,Tube_d+WallThickness_Tube,WallThickness_Tube);
        translate([0,0,InnerTubeHeight-WallThickness_Tube/2]){
            Ring_Lip(WallThickness_Tube/2,(Tube_d+WallThickness_Tube/2)/2,1,1);
        }
        // outer Tube        
        Ring_Shaper(BlowCanHeight-WallThickness/2,BlowCanDiameter,WallThickness);
        translate([0,0,BlowCanHeight-WallThickness/2]){
            Ring_Lip(WallThickness,BlowCanDiameter/2,1,1);
        }
        // Textempossing
        translate([0,0,BlowCanHeight/2]){
            rotate([90,0,0]){
                Embossing_Slicer(BlowCanDiameter-0.5,1){
                    Text_Embossing("",BlowCanDiameter,7);
                }
            }
        }
    }
// == Cuttings ==
       // blow hole
        translate([0,BlowCanDiameter/2,BlowCanHeight/2]){
            rotate([90,0,0]){
                scale([1,2,2]){
                    cylinder(3,d=5,center=true,$fn=FN_Fine);
                }
            }
        }
        // Smooth bottom Cut
        translate([0,0,BottomHeight]){
            Ring_Lip(   (BlowCanDiameter/2-Tube_d/2-WallThickness_Tube/2-WallThickness/2),
                        BlowCanDiameter/2-((BlowCanDiameter+WallThickness)/4-(Tube_d+WallThickness_Tube)/4),
                        1,
                        1
            );
        }
        // Hanger hole
        translate([-BlowCanDiameter/2+3,0,0]){
            rotate([0,-45,0]){
                scale([1,2,1]){
                    cylinder(h=20,d=2,center=true,$fn=FN_Fine);
                }
            }
        }
        cylinder(h=BottomHeight/1.5,d2=Tube_d,d1=BlowCanDiameter-(BlowCanDiameter-Tube_d)/2,$fn=FN_Fine); //Tube_d+2*WallThickness_Tube
        translate([0,0,BottomHeight/2]){
            Ring_Lip(1,BlowCanDiameter/2,2,3.75);
        }
    }
}
//Can_Bottom(52);
module Can_Bottom(OUTER){
    difference(){
        cylinder(h=BottomHeight,d=OUTER,$fn=FN_Fine);
        cylinder(h=BottomHeight,d=Tube_d,$fn=FN_Fine);
    }
}
//Membrane_Cover_Ring();
module Membrane_Cover_Ring(){
    translate([0,0,BlowCanHeight+MembraneCoverHeight-ClampLipOverlap]){
        mirror([0,0,1]){
            difference(){
                union(){
                    cylinder(h=ClampLipHeight,d=BlowCanDiameter+WallThickness*2+MembraneSpacing,$fn=FN_Fine);
                    Ring_Shaper(MembraneCoverHeight,BlowCanDiameter+WallThickness*2+MembraneSpacing,WallThickness);
                }
                cylinder(h=ClampLipHeight,d=BlowCanDiameter-WallThickness,$fn=FN_Fine);
                translate([0,0,MembraneCoverHeight-2.5]){
                    Ring_Lip(WallThickness,BlowCanDiameter/2,1.05,1.15);
                }
                cylinder(h=MembraneCoverHeight/2,d=(BlowCanDiameter-WallThickness)*1.1,$fn=FN_Fine); // was d=(BlowCanDiameter-WallThickness)*1.175
                translate([0,0,MembraneCoverHeight/2]){ //ClampLipHeight-ClampLipHeight/3
                    cylinder(h=ClampLipHeight/2,d1=(BlowCanDiameter-WallThickness)*1.1,d2=BlowCanDiameter-WallThickness,$fn=FN_Fine);
                }
                translate([0,0,ClampLipHeight-ClampLipHeight/10]){
                    cylinder(h=ClampLipHeight/10,d1=(BlowCanDiameter-WallThickness)*1.05,d2=(BlowCanDiameter-WallThickness)*1.05,$fn=FN_Fine);
                }
            }
        }
        translate([0,0,-MembraneClerance/6]){
            Membrane_Protektor(MembraneClerance/6);
        }
        STRING=[
            [-102,"|"],    
            [-65,"Demo"],
            [ 0,"1. Mai"],
            [70,"Riders"],
            [140,"United"],
            [215,"Leipzig"],
        ];
        for(i=STRING){
            rotate([0,0,i[0]]){
                translate([0,0,-MembraneCoverHeight/2-MembraneCoverHeight/6]){
                    rotate([90,0,0]){
                        Embossing_Slicer(BlowCanDiameter+WallThickness*2+MembraneSpacing-0.5,1.3){
                            Text_Embossing(i[1],BlowCanDiameter+WallThickness*2+MembraneSpacing,6);
                        }
                    }
                }
            }
        }
    }
}
//Membrane_Protektor();
module Membrane_Protektor(HEIGHT){
    linear_extrude(height=HEIGHT){
        difference(){
            for(i=[0:120:360]){
                rotate([0,0,i]){
                    translate([BlowCanDiameter/10,0]){
                        square([3,BlowCanDiameter]);
                    }
                }
            }
            2D_Ring_Shape(BlowCanDiameter*2.5,(BlowCanDiameter+0.1-WallThickness)*1.1);
            //!2D_Shape_Ring(BlowCanDiameter*2.5,(BlowCanDiameter-WallThickness)*1.175);
        }
        circle(d=BlowCanDiameter/2);
    }
}

//Hanger();
module Hanger(){
    difference(){
        linear_extrude(height=HangerHeigth){
            2D_Rounded_Square_Base_Shape(HangerWidth,HangerLength,1);
        }
        translate([HangerWidth/2,HangerWidth/2,0]){
            cylinder(h=HangerHeigth,d=HangerHoleDiametrer,$fn=FN_Fine);
        }
    }
}
// ===============================================================================
// ---------------------------------- Cutting Modules ----------------------------
// ===============================================================================
// === Half Cutter

module Bolt(BoltLength){
    translate([0,0,0]){
        rotate([0,0,0]){
            translate([0,0,0]){
                cylinder(h=BoltLength,d1=3.2,d2=3.2,center=false,$fn=FN_Performance);
            }
        }
    }
}
module Bolt_Head(HEADHEIGHT,HEADDIAMETER){
    BoltHeadHeight=HEADHEIGHT;
    BoltHeadDiameter=HEADDIAMETER;
    translate([0,0,0]){
        rotate([0,0,0]){
            translate([0,0,0]){
                cylinder(h=BoltHeadHeight,d1=BoltHeadDiameter,d2=BoltHeadDiameter,center=true,$fn=FN_Performance);
            }
        }
    }
}
module Projection_Cutter(Offset_z){    
    projection(cut = true){
        translate([0,0,Offset_z]){
            children();
        }
    }
}
// ===============================================================================
// ---------------------------------- Intersection Modules -----------------------
// ===============================================================================

module Intersection_Test_Cut(PLAIN,THICKNESS,OFFSET){
// ==== EXAMPLE ====
//    !Intersection_Test_Cut("xy",1,7/2){sphere(7);};
// ==== EXAMPLE ====
    if (PLAIN=="xz"){
        intersection(){
            children();
            translate([0,OFFSET,0]){
                cube([100,THICKNESS,100],center=true);
            }
        }
    }
    else if (PLAIN=="xy") {
        intersection(){
            children();
            translate([0,0,OFFSET]){
                cube([100,100,THICKNESS],center=true);
            }
        }
    }
    else if (PLAIN=="yz") {
        intersection(){
            children();
            translate([OFFSET,0,0]){
                cube([THICKNESS,100,100],center=true);
            }
        }   
    }
}
// ===============================================================================
// ---------------------------------- Linear Extrude Modules ---------------------
// ===============================================================================

module Ring_Shaper(HEIGHT,OUTER,WALLTHICKNESS){
    linear_extrude(HEIGHT){
        2D_Shape_Ring(OUTER,WALLTHICKNESS);
    }
}
module Linear_Extruding(ExtrudeLength,ExrtudingDirektionInverter){
    Length=ExtrudeLength;
    translate([0,0,Length*ExrtudingDirektionInverter]){
        linear_extrude(height=ExtrudeLength){
            children();
        }
    }
}

// ===============================================================================
// ---------------------------------- Rotate Extrude Modules ---------------------
// ===============================================================================
//Ring_Lip(3,20);
module Ring_Lip(RADIUS,DIAMETER_RING,SCAL_X,SCAL_Y){
    rotate_extrude(angle=360,convexity=3,$fn=FN_Fine){
        translate([DIAMETER_RING,0,0]){
            scale([SCAL_X,SCAL_Y,1]){
                circle(d=RADIUS,$fn=FN_Fine);
            }
        }
    }
}

// ===============================================================================
// =--------------------------------- 2D-Shapes ---------------------------------=
// ===============================================================================

//2D_Shape_Ring(52,1);
module 2D_Shape_Ring(OUTER,WALLTHICKNESS){
    difference(){
        circle(d=OUTER,$fn=FN_Fine);
        circle(d=OUTER-WALLTHICKNESS,$fn=FN_Fine);
    }
}

module 2D_Ring_Shape(OUTER_D,Inner_D){
    difference(){
        circle(d=OUTER_D,$fn=FN_Fine);
        circle(d=Inner_D,$fn=FN_Fine);
    }
}

module 2D_Rounded_Square_Base_Shape(PARAM_X,PARAM_Y,RADIUS){
    translate([RADIUS,RADIUS,0]){
        minkowski(){
            square([PARAM_X-RADIUS*2,PARAM_Y-RADIUS*2]);
            circle(RADIUS,$fn=FN_Fine);
        }
    }
}
// ===============================================================================
// =--------------------------------- Textembossing -----------------------------=
// ===============================================================================


module Text_Embossing(TEXT,TEXT_HEIGHT,SIZE){
    linear_extrude(height =TEXT_HEIGHT){
        //text("NGG",valign="center", halign ="center");
        text(text=str(TEXT),size=SIZE, valign="baseline", halign ="center");
    }
}

module Embossing_Slicer(BASE_RADIUS,THICKNESS){
    intersection(){
        translate([0,50/2,0]){
            rotate([90,0,0]){
                difference(){
                    cylinder(h=50,d=BASE_RADIUS+THICKNESS);
                    cylinder(h=50,d=BASE_RADIUS);
                }
            }
        }
        children();
    }
}

// ===============================================================================
// =--------------------------------- Smoothing ---------------------------------=
// ===============================================================================

2D_Smooth_r=1;
// Radius of a outer Tip Rounding 
2D_Fillet_r=1;
// Radius of a inner corner Ronding
2D_Chamfer_DELTA_INN=1;
2D_Chamfer_DELTA_OUT=2;

// a straigt line on edges and corners
2D_Chamfer_BOOLEAN=false;

    
module Smooth(r=3){
    //$fn=30;
    offset(r=r,$fn=30){
        offset(r=-r,$fn=30){
        children();
        }
    }
}
module Fillet(r=3){
    //$fn=30;
    offset(r=-r,$fn=30){
        offset(r=r,$fn=30){
            children();
        }
    }
}
module Chamfer_OUTWARD(DELTA_OUT=3){
    //$fn=30;
    offset(delta=DELTA_OUT,chamfer=true,$fn=30){
        offset(delta=-DELTA_OUT,chamfer=true, $fn=30){
            children();
        }
    }
}
module Chamfer_INWARD(DELTA_INN=3){
    //$fn=30;
    offset(delta=-DELTA_INN,chamfer=true,$fn=30){
        offset(delta=DELTA_INN,chamfer=true, $fn=30){
            children();
        }
    }
}

// ===============================================================================
// =--------------------------------- Ruthex --------------------------------=
// ===============================================================================
// Dimensions for Ruthex Tread inseerts

//RUTHEX_M3();
module RUTHEX_M3(){    
L=5.7+5.7*0.25; // Length + Margin
echo("RUTHEX",L);
D1=4.0;    
    translate([0,0,0]){
        rotate([0,0,0]){
            translate([0,0,0]){
                cylinder(h=L,d1=D1,d2=D1,$fn=FN_Performance);
            }
        }
    }
}

// ===============================================================================
// =--------------------------------- Import STL --------------------------------=
// ===============================================================================

module NAME_OF_IMPORT(){
    rotate([0,0,-90]){
        translate([-515,-100,-45]){
            import("PATH/TO/FILE.stl",convexity=3);
        }
    }
}