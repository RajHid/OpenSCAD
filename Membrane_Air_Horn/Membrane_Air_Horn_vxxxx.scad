// * Discription what the *.scad is about ect.
// Problem is that there is no funktion to get the size aka widht 
// of a letter of a font to wrap it around a cylinder.

// this pice is a Makrofone or Train Horn that uses a latex glove
// it is verry loud vor the size
 

// in short:
/*
the OpenSCAD writes the desiered text in the desiered font and size
then the user fills in values in a vector and aligns the second letters to the White ones.
when the two texts match, the information in FONTWIDTHSTRING_2 is used to calculate the Angles
so that the spacing of the letters lokes nice like the text were written on a flat pice
and wrapped around the cylinder.
*/


// =========================================================================
// +++++++++++++++++++++++ Emossing Configuration ++++++++++++++++++++++++++
// =========================================================================


// Workflow and instructions !!!!!!!!!!!!!!!!!!!!!!!
// Workflow and instructions !!!!!!!!!!!!!!!!!!!!!!!
// Workflow and instructions !!!!!!!!!!!!!!!!!!!!!!!
// Workflow and instructions !!!!!!!!!!!!!!!!!!!!!!!
// Workflow and instructions !!!!!!!!!!!!!!!!!!!!!!!
// Workflow and instructions !!!!!!!!!!!!!!!!!!!!!!!

// comment out the module TEST_Cylinder();
// comment in the module "TEXTSTRING();" only by putting
// a "!" in front of and deleeting the "//" 
// Write your Text in the vector "STRINGOFTEXT" below
// like STRINGOFTEXT="write here"; or STRINGOFTEXT="I like trains";
// hit F5 and then F6 Dont get bothered by errors
// Then lookup for the vector FONTWIDTHSTRING_2 and fill in values
// the number of values has to match the number of symbols in "STRINGOFTEXT"
// Like "Hello" = 5 signs "Hello World" has 11 signs 
// because the Space counts also.
// the values are some kind of point unit like in typography
// the goal is to align the Fuchsia collored letters to the white ones.
// if they match comment out TEXTSTRING(); by removing "!" and putting "//" 
// at the start of the line.
// now one schould see a nice text on the Tröte
 
// ================================================= 
// =============== Modus Decider begin ============= 
// ================================================= 

// 1 Modus 
TEXTSTRING();

// 2 Modus Show Modus 
Blow_Can_Print="yes";
Membrane_Cover_Ring_Print="yes";

// 3 Rendermodus Blow Can 
Blow_Can_Print="yes";

// 4 Rendermodus Cover
Membrane_Cover_Ring_Print="yes";

// ================================================= 
// =============== Modus Decider End ===============
// =================================================

FONTSIZE=8;
EMBOSSDEPTH=0.5;     // Embossing Depht

// The Message Text
STRINGOFTEXT="Hallo Welt";//Hallo Welt Hallo Welt Hallo Welt Hallo Welt Hallo Welt Hallo Welt Hallo Welt ";

// =================================================

// --------------------------------------------------------------
// --- Fonts ---
// --------------------------------------------------------------

FONT="Liberation Sans:style=Bold";
//FONT="Liberation Sans:style=Bold Italic";
FONTWIDTHSTRING_2=[ 0.00,2.85,2.20,1.10,1.10,2.00,1.50,3.65,2.20,1.10,2.00];

// -------------------------------------------------------------------------
                    
                    
//FONT="DejaVu Sans Mono:style=Book";

// -------------------------------------------------------------------------
//FONTWIDTHSTRING_2=[ 0.00,2.50,2.50,2.50,2.50,2.50,2.50,2.50,2.50,2.50,2.50];
// -------------------------------------------------------------------------
//FONT="URW Gothic L:style=Book";
//FONTWIDTHSTRING_2=[ 0.00,2.50,2.50,2.50,2.50,2.50,2.50,2.50,2.50,2.50,2.50];
// -------------------------------------------------------------------------

//FONT="Liberation Sans:style=Regular";
//FONTWIDTHSTRING_2=[ 0.00,2.50,2.50,2.50,2.50,2.50,2.50,2.50,2.50,2.50,2.50];
// -------------------------------------------------------------------------

//FONT="Liberation Sans:style=Regular";
//FONTWIDTHSTRING_2=[ 0.00,2.50,2.50,2.50,2.50,2.50,2.50,2.50,2.50,2.50,2.50];

// =========================================================================
// ----------------------- Emossing Configuration --------------------------
// =========================================================================


// ==================================
// = Variables =
// ==================================

// == Direct Input Variables ==

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

MembraneOuterDiameter=BlowCanDiameter+WallThickness*2+MembraneSpacing;


// === Facettes Numbers ===

FN_HexNut=6;
FN_Performance=36;
FN_Rough=12;
FN_Medium=36;
FN_Fine=72;
FN_ExtraFine=144;

FN_M8=8.00;

// ==================================
// = Test Stage =
// ==================================

see_me_half(){
        translate([0,0,0]){
            if( Blow_Can_Print=="yes"){
                Blow_Can();
            }
        }
        translate([0,0,0]){
            linear_extrude(height=1){
            //Projection_Cutter(0){
                //Blow_Can();
            //}
            }
        }
        translate([0,0,0]){
            if( Membrane_Cover_Ring_Print=="yes"){
                Membrane_Cover_Ring();
            }
        }
//        translate([-BlowCanDiameter/2-HangerLength/2,HangerWidth/2,0]){
//            rotate([0,0,-90]){
//                //Hanger();
//            }
//        }
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
                                    //cube([30,30,150],center=false);
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

}

// ==================================
// =
// ==================================

// ==================================
// = Stage =
// ==================================
// Final module for Produktion


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
        //render(){
            Can_Bottom(BlowCanDiameter);
            // inner tube
            union(){
                Ring_Shaper(    InnerTubeHeight-WallThickness_Tube/2,
                                Tube_d+WallThickness_Tube,
                                WallThickness_Tube);
                translate([0,0,InnerTubeHeight-WallThickness_Tube/2]){
                    Ring_Lip(   WallThickness_Tube/2,
                                (Tube_d+WallThickness_Tube/2)/2,
                                1,
                                1);
                }
            }
            // outer Tube
            union(){
                Ring_Shaper(    BlowCanHeight-WallThickness/2,
                                BlowCanDiameter,
                                WallThickness);
                translate([0,0,BlowCanHeight-WallThickness/2]){
                    Ring_Lip(   WallThickness,
                                BlowCanDiameter/2,
                                1,
                                1);
                }
            }
        //}
        // Textempossing
        translate([0,0,BlowCanHeight/2]){
            CYLINDER_EMBOSSER(  BlowCanDiameter,
                                FONTSIZE,
                                EMBOSSDEPTH,
                                Vector);
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
            Ring_Lip(   (   BlowCanDiameter/2-Tube_d/2-WallThickness_Tube/2-WallThickness/2),
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
        // Bottom incision
        cylinder(h=BottomHeight/1.5,d2=Tube_d,d1=BlowCanDiameter-(BlowCanDiameter-Tube_d)/2,$fn=FN_Fine); //Tube_d+2*WallThickness_Tube
        translate([0,0,BottomHeight/2]){
            Ring_Lip(   1,
                        BlowCanDiameter/2,
                        2,
                        3.75);
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
                    Ring_Shaper(    MembraneCoverHeight,
                                    BlowCanDiameter+WallThickness*2+MembraneSpacing,
                                    WallThickness);
                }
                cylinder(h=ClampLipHeight,d=BlowCanDiameter-WallThickness,$fn=FN_Fine);
                translate([0,0,MembraneCoverHeight-2.5]){
                    Ring_Lip(   WallThickness,
                                BlowCanDiameter/2,
                                1.05,
                                1.15);
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
    }
    translate([0,0,BlowCanHeight]){
        CYLINDER_EMBOSSER(  MembraneOuterDiameter,
                            FONTSIZE,
                            EMBOSSDEPTH,
                            Vector);
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
            2D_Ring_Shape(  BlowCanDiameter*2.5,
                            (BlowCanDiameter+0.1-WallThickness)*1.1);
        }
        circle(d=BlowCanDiameter/2);
    }
}

// ===============================================================================
// ---------------------------------- Cutting Modules ----------------------------
// ===============================================================================
// === Half Cutter

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

DIAMETER=BlowCanDiameter;       // Diameter of cyilinder that gets embossed
HEIGHT=MembraneCoverHeight;     // Height of cyilinder that gets embossed
FN_FACETTES=FN_Fine;            // Number of segments the cylinder
//WALLTHICKNESS=2;              // Wallthickness



// a String to get a dotted line for reference
DOTSREFERENETEXTSTRING="...................................................................";

// --------------------------------------------------------------
// --- Fontsize Foo ---
// --------------------------------------------------------------
// 72.272 Points in one Inch or 25.4mm
// https://www.computerhope.com/jargon/f/font-size.htm
ONEPointMM=25.4/72.272;
// parameter for the function text()
HALIGN="left"; 



// --------------------------------------------------------------
// --- Vector Foo ---
// --------------------------------------------------------------

// Cumulative sum of values in v
function cumsum(v) = [
    for (   a = v[0]-v[0], i = 0; i < len(v); a = a+v[i], i = i+1) a+v[i]];

// provides the vector for the flat text output, containes the sum of the distance of each letter before
/*EXAMPLE: 
    FONTWIDTHSTRING_2=[1,2,1,5,1,7,]
    Vector=[1,3,4,9,10,17]
*/
Vector=cumsum(FONTWIDTHSTRING_2);    
echo("cumsum",cumsum(FONTWIDTHSTRING_2));
echo("Vector",cumsum(FONTWIDTHSTRING_2));

// Provides a Vector that containes the values of separation of each letter by degree based on a Fontsize of 6 and a certain diameter of 20mm of a cylinder
function DegreeNormaliser(v)=[
    for (i=[0:1:len(v)-1]) v[i] ];

echo("DegreeNormaliser",DegreeNormaliser(FONTWIDTHSTRING_2));

// calculates a vector that contains values of degree based on the values in the Vector, the Values are handled as they were arc length
// So every value is the angle of separation to the letter before
output = [for (a = [ 0 : len(FONTWIDTHSTRING_2) - 1 ]) (FONTWIDTHSTRING_2[a]*180*ONEPointMM)*FONTSIZE/(PI*DIAMETER/2) ];
echo("output",output);

// Like cumsum of FONTWIDTHSTRING_2 in Vector
// Now we get the sum of all angle from the start to the letter in the position as the text gets wraped around the cylinder
Vector_Deg=cumsum(output);
echo("Vector_Deg",Vector_Deg);

module TEST_Cylinder(){
    difference(){
        cylinder(h=HEIGHT,d=DIAMETER,$fn=FN_FACETTES);
        cylinder(h=HEIGHT,d=DIAMETER-2*WALLTHICKNESS,$fn=FN_FACETTES);
    }
    translate([0,0,HEIGHT/4]){
        CYLINDER_EMBOSSER(DIAMETER,FONTSIZE,WALLTHICKNESS,Vector);
    }
}
//CYLINDER_EMBOSSER(DIAMETER,FONTSIZE,WALLTHICKNESS,Vector);
module CYLINDER_EMBOSSER(OUTER_D,FONTSIZE,EMBOSSDEPTH,Vector){
    #intersection(){
        difference(){
            cylinder(h=FONTSIZE+FONTSIZE*0.05,d=OUTER_D+2*EMBOSSDEPTH,$fn=64);
            cylinder(h=FONTSIZE+FONTSIZE*0.05,d=OUTER_D,$fn=64);
        }        
        for(i=[0:len(STRINGOFTEXT)-1]){
            rotate([0,0,Vector_Deg[i]]){
                rotate([90,0,0]){
                    linear_extrude(height=(OUTER_D/2+2*EMBOSSDEPTH)){
                        text(   text=str(STRINGOFTEXT[i]),
                                        size=FONTSIZE,
                                        font=FONT,
                                        valign="baseline",
                                        halign =HALIGN);
                    }
                }
            }
        }
    }
}



// Output of the text string to align the Letters semi-manual to get the Values vor corect spacing around the cylinder  
module TEXTSTRING(){
    color("White",1.0){
        linear_extrude(height=EMBOSSDEPTH){
            text(   text=str(STRINGOFTEXT),
                    size=FONTSIZE,font=FONT,
                    valign="baseline",
                    halign =HALIGN);
        }
    }
    translate([0,-2,0]){
        linear_extrude(height=EMBOSSDEPTH){
            text(   text=str(DOTSREFERENETEXTSTRING),
                    size=FONTSIZE,
                    font=FONT
    , valign="baseline", halign =HALIGN);
        }
    }
    echo("LEN",len(STRINGOFTEXT));
    for(i=[0:len(STRINGOFTEXT)-1]){
        translate([Vector[i]*ONEPointMM*FONTSIZE,0,2]){
            color("Fuchsia",0.5){
                linear_extrude(height=EMBOSSDEPTH){
                    text(   text=str(STRINGOFTEXT[i]),
                            size=FONTSIZE,
                            font=FONT,
                            valign="baseline",
                            halign =HALIGN);
                }
            }
        }
    }
    for(i=[0:len(STRINGOFTEXT)-1]){
        translate([0,i*FONTSIZE+FONTSIZE*0.05*i,0]){ // x was: Vector[i]*ONEPointMM*FONTSIZE
            color("Yellow",0.5){
                linear_extrude(height=EMBOSSDEPTH){
//                    text(   text=str(STRINGOFTEXT[i]),
//                            size=FONTSIZE,
//                            font=FONT,
//                            valign="baseline",
//                            halign ="center");
                }
            }
        }
    }
}




////Text_Embossing("Hallo",25,6);
//module Text_Embossing(TEXT,TEXT_HEIGHT,SIZE){
//    linear_extrude(height =TEXT_HEIGHT){
//        text(text=str(TEXT),size=SIZE,font="DejaVu Sans Mono:style=Book"
//, valign="baseline", halign ="left");
//    }
//}
//
//// "DejaVu Sans Mono:style=Book"
////Embossing_Slicer(BASE_RADIUS,THICKNESS);
//module Embossing_Slicer(BASE_RADIUS,THICKNESS){
//    intersection(){
//        translate([0,50/2,0]){
//            rotate([90,0,0]){
//                difference(){
//                    cylinder(h=50,d=BASE_RADIUS+THICKNESS);
//                    cylinder(h=50,d=BASE_RADIUS);
//                }
//            }
//        }
//        children();
//    }
//}

