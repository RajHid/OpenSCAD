// OpenSCAD.scad
//___________________________________________________________________________________________________________________
//
//  _____     _ _  _             _____     _ _  _                _____     _ _  _             _____     _ _  _       
// |_   _| __(_/_)| |_ ___      |_   _| __(_/_)| |_ ___         |_   _| __(_/_)| |_ ___      |_   _| __(_/_)| |_ ___
//   | || '__/ _ \| __/ _ \       | || '__/ _ \| __/ _ \          | || '__/ _ \| __/ _ \       | || '__/ _ \| __/ _ \
//   | || | | (_) | ||  __/       | || | | (_) | ||  __/          | || | | (_) | ||  __/       | || | | (_) | ||  __/
//   |_||_|  \___/ \__\___|       |_||_|  \___/ \__\___|          |_||_|  \___/ \__\___|       |_||_|  \___/ \__\___|
//                           
//___________________________________________________________________________________________________________________
//
// How To 
//
// Blow in the smal oval hole in the side of the Can
//
// How To
// 
// ================================================================================================================
// This is a device to make Noise like a Train Horn on Demonstrations and other gatherings.
// The design is lightweight and one set needs just an hour or less to print.
// It needs aproximately under 4.7m of filament so less than 15g per unit.
// It is recomendet to start production 2 weeks prior to a demonstration.
// 20 pices will fit on a single printbed of an ordinary Prusamk3.
// One can combine different amonts of Blowcans and Covers to achive a Printtime fit to one sleeping scedule
// Aim is to print 12 Cans and 6 Covers over night and start a new print in the Morning with 12 Covers and 6 Cans
// so the result will be 20 full sets.
// also there is a feature to get a message embossed on the surface of both parts.
// Between the Cover and the Blowcan there has to be a membrane out of a flexible material aka latexglove
// ================================================================================================================
 
// ================================================================================================================
// == Insall instruktions
// ================================================================================================================
//
// Take a latexglove and cut it open to get a nice sheet of rubber
// Span the sheet over the can and press the Cover on the can
// the installation is correct if the device sounds like a tini drum if taped whit the fingertip
// Blow in the oval Hole in the side of the can. ...... (surprize ^^)
//
// ================================================================================================================

// ================================================================================================================
// == how dos the Embossing work
// ================================================================================================================
//
// The OpenSCAD-File writes the desiered text in the desiered font and size
// and a secont version of the same text in transparent as overley. 
// Then the user assign values in a vector and aligns the second text to the first white ones letter by 
// letter just by sense of proportion.
// When the two texts match, the information in the vector FONTWIDTHSTRING_2 containes spacing as values.
// These values are used to calculate the Angles so that the spacing of the letters lookes nice on a 
// cylinder like the text were written on a flat pice and then wraped around the cylinder
//
// To do it yourself one has to know a little bit of OpenSCAD
//
// ================================================================================================================

// =========================================================================
// +++++++++++++++++++++++ Emossing Configuration ++++++++++++++++++++++++++
// =========================================================================
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

// TRINGOFTEXT="Слава Україні!"; // (14 Charackters)

//STRINGOFTEXT="Hallo Welt"; // (10 Charackters)
//FONTWIDTHSTRING_2=[ 0.00,2.85,2.20,1.10,1.10,2.00,1.55,3.60,2.20,1.10];

// sizing printing or print a small part to test the  fitting???
DesignStatus="sizing"; // ["sizing","fitting","printing"]

// 1 Modus textaligning  
// TEXTSTRING();
// TEST_Cylinder();

// 2 Show Modus


//Blow_Can_Print="yes";
//Membrane_Cover_Ring_Print="yes";


 //String_Print="yes";
 
// 3 Rendermodus Blow Can 
// Blow_Can_Print="yes";

// 4 Rendermodus Cover
// Membrane_Cover_Ring_Print="yes";

// 5 Textring Show Modus
// String_Print="yes";

// ================================================= 
// =============== Embossing Parameters ============
// =================================================

FONTSIZE=8;             // in [mm]???
EMBOSSDEPTH=0.3;        // Embossing Depht


// =================================================
// ================ Fonts ==========================
// =================================================



// -------------------------------------------------------------------------

FONT="Liberation Sans:style=Bold";
//
STRINGOFTEXT="www.printables.com"; // (18 charackters)
FONTWIDTHSTRING_2=[ 0.00,3.10,3.10,2.90,1.10,2.40,1.55,1.10,2.40,1.30,2.20,2.40,1.10,2.20,2.20,1.10,2.20,2.40];


//Message: 2
STRINGOFTEXT2="Hello World";  // (11 charackters)
FONTWIDTHSTRING_3=[ 0.00,2.85,2.20,1.10,1.10,0.55,2.95,3.65,2.50,1.50,1.10];

// -------------------------------------------------------------------------

// FONT="DejaVu Sans Mono:style=Book";

// Message: 1
// STRINGOFTEXT="www.printables.com";  // (18 charackters)
// FONTWIDTHSTRING_2=[ 0.000,2.375,2.375,2.375,2.375,2.375,2.375,2.375,2.375,2.375,2.375,2.375,2.375,2.375,2.375,2.375,2.375,2.375];


//Message: 2
//STRINGOFTEXT="Hello World";  // (11 charackters)
//FONTWIDTHSTRING_2=[ 0.000,2.375,2.375,2.375,2.375,2.375,2.375,2.375,2.375,2.375,2.375];

// -------------------------------------------------------------------------

//FONT="URW Gothic L:style=Book";
// Message: 1
//STRINGOFTEXT="www.printables.com";  // (18 charackters)
//FONTWIDTHSTRING_2=[ 0.00,3.30,3.30,3.25,1.10,2.70,1.20,0.75,2.45,1.30,2.70,2.70,0.80,2.60,1.50,1.10,2.55,2.60];

//Message: 2
//STRINGOFTEXT="Hello World";  // (11 charackters)
//FONTWIDTHSTRING_2=[ 0.00,2.70,2.55,0.80,0.80,1.0,2.70,3.80,2.55,1.20,0.80];


// -------------------------------------------------------------------------

//FONT="Liberation Sans:style=Regular";
// Message: 1
//STRINGOFTEXT="www.printables.com";  // (18 charackters)
//FONTWIDTHSTRING_2=[ 0.00,2.85,2.85,2.65,1.10,2.20,1.30,0.90,2.20,1.10,2.20,2.20,0.85,2.20,2.00,1.10,1.95,2.20];

//Message: 2
//STRINGOFTEXT="Hello World";  // (11 charackters)
//FONTWIDTHSTRING_2=[ 0.00,2.85,2.20,0.90,0.85,0.55,2.75,3.65,2.20,1.30,0.0];

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

module __Customizer_Limit__ () {}  // This actually works
shown_by_customizer = false;
// === Facettes Numbers ===



FN_HexNut=6;
FN_Performance=36;
FN_Rough=12;
FN_Medium=32;
FN_Fine=72;
FN_ExtraFine=128;

FN_USED=FN_Medium;

FN_M8=8.00;

// ==================================
// = Test Stage =
// ==================================
if (DesignStatus=="printing"){
    translate([0,30,BlowCanHeight]){
        rotate([180,0,0]){
            Membrane_Cover_Ring();
        }
        }
    translate([0,0,0]){
        Blow_Can();
    }
}
if (DesignStatus=="sizing"){
    see_me_half(){
            translate([0,0,0]){
                if( Blow_Can_Print=="yes"){
                    Blow_Can();
                }
            }
            translate([0,0,0]){
                linear_extrude(height=1){
                }
            }
            translate([0,0,0]){
                if( Membrane_Cover_Ring_Print=="yes"){
                    Membrane_Cover_Ring();
                }
            }
            if( String_Print=="yes"){
                rotate([0,0,20]){
                    translate([0,0,BlowCanHeight/2]){            
                        CYLINDER_EMBOSSER(  BlowCanDiameter,
                                            FONTSIZE,
                                            EMBOSSDEPTH,
                                            Vector);
                        rotate([0,0,270]){
                            translate([0,0,-BlowCanHeight/2+BlowCanHeight]){            
                                CYLINDER_EMBOSSER(  MembraneOuterDiameter,
                                                    FONTSIZE,
                                                    EMBOSSDEPTH,
                                                    Vector);
                            }
                        }
                    }
                }
            }
    //        translate([0,0,-FONTSIZE]){
    //            difference(){
    //                cylinder(h=15,d=BlowCanDiameter+EMBOSSDEPTH,$fn=64);
    //                cylinder(h=15,d=BlowCanDiameter,$fn=64);
    //            }
    //        }
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
                                translate([0,0,10]){
                                    //cube([70,70,20],center=true);
                                }
                                translate([-30,-30,0]){
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
                                    1,
                                    "no");
                    }
                }
                // outer Tube
                union(){
                    Ring_Shaper(    BlowCanHeight-WallThickness/2,
                                    BlowCanDiameter,
                                    WallThickness);
                    translate([0,0,BlowCanHeight-WallThickness/2]){
                    //Ring_Lip(RADIUS,DIAMETER_RING,SCAL_X,SCAL_Y,SCAL_Z,HULL,HEIGHTDIF,OFFDIF,SCAL_X2,SCAL_Y2)
                        //Ring_Lip(5,20,1,1,"yes",4,7,0.5,0.5);
                        
                        Ring_Lip(   WallThickness,              // RADIUS 
                                    BlowCanDiameter/2,          // DIAMETER
                                    1,                          // SCAL_X
                                    1,                          // SCAL_Y
                                    "yes",                      // "yes" or "no" 
                                    -WallThickness/1.5,         // HEIGHTDIF    relevant if "yes"
                                    -0.1,                          // OFFDIF       relevant if "yes"
                                    0.2,                        // SCAL_X2      relevant if "yes"
                                    0.2,                        // SCAL_Y2      relevant if "yes"
                                    );

//                        translate([0,0,-WallThickness/2.5]){            
//                            #Ring_Lip(   WallThickness,
//                                        BlowCanDiameter/2,
//                                        0.5,
//                                        0.5);
//                        }
                    }
                }
            //}
            // Textempossing
            rotate([0,0,20]){
                translate([0,0,BlowCanHeight/2]){
                    rotate([0,0,0]){
                        if(String_Print=="yes"){
                            // Nothing
                        }
                        else{
                        CYLINDER_EMBOSSER(  BlowCanDiameter,
                                            FONTSIZE,
                                            EMBOSSDEPTH,
                                            20,
                                            Vector);
                        }
                    }
                }
            }
        }
        // == Cuttings ==
        // blow hole
        rotate([0,0,180]){
            translate([0,BlowCanDiameter/2,BlowCanHeight/2]){
                rotate([90,0,0]){
                    scale([1,2,2]){
                        cylinder(3,d=5,center=true,$fn=FN_USED);
                    }
                }
            }
        }
        // Smooth bottom Cut
        translate([0,0,BottomHeight]){
            Ring_Lip(   (   BlowCanDiameter/2-Tube_d/2-WallThickness_Tube/2-WallThickness/2),
                            BlowCanDiameter/2-((BlowCanDiameter+WallThickness)/4-(Tube_d+WallThickness_Tube)/4),
                            1,
                            1,
                            "no"
                            );
        }
        // Hanger hole
        translate([-BlowCanDiameter/2+3,0,0]){
            rotate([0,-45,0]){
                scale([1,2,1]){
                    cylinder(h=20,d=2,center=true,$fn=FN_USED);
                }
            }
        }
        // Bottom incision
        cylinder(h=BottomHeight/1.5,d2=Tube_d,d1=BlowCanDiameter-(BlowCanDiameter-Tube_d)/2,$fn=FN_USED); //Tube_d+2*WallThickness_Tube
        translate([0,0,BottomHeight/2]){
            Ring_Lip(   1,
                        BlowCanDiameter/2,
                        2,
                        3.75,
                        "no"
                        );
        }
    }
}
//Can_Bottom(52);
module Can_Bottom(OUTER){
    difference(){
        cylinder(h=BottomHeight,d=OUTER,$fn=FN_USED);
        cylinder(h=BottomHeight,d=Tube_d,$fn=FN_USED);
    }
}
//Membrane_Cover_Ring();
module Membrane_Cover_Ring(){
    translate([0,0,BlowCanHeight+MembraneCoverHeight-ClampLipOverlap]){
        mirror([0,0,1]){
            difference(){
                union(){
                    cylinder(h=ClampLipHeight,d=BlowCanDiameter+WallThickness*2+MembraneSpacing,$fn=FN_USED);
                    Ring_Shaper(    MembraneCoverHeight,
                                    BlowCanDiameter+WallThickness*2+MembraneSpacing,
                                    WallThickness);
                }
                // Incission vor the Lip of the Blow can
                cylinder(h=ClampLipHeight,d=BlowCanDiameter-WallThickness,$fn=FN_USED);
                translate([0,0,MembraneCoverHeight-2.5]){
                    Ring_Lip(   WallThickness,
                                BlowCanDiameter/2,
                                1.05,
                                1.15,
                                "no"
                                );
                }
                cylinder(h=MembraneCoverHeight/2,d=(BlowCanDiameter-WallThickness)*1.1,$fn=FN_USED); // was d=(BlowCanDiameter-WallThickness)*1.175
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
    rotate([0,0,20]){
        translate([0,0,BlowCanHeight]){
            if(String_Print=="yes"){
                // Nothing
            }
            else{
                CYLINDER_EMBOSSER(  MembraneOuterDiameter,
                                    FONTSIZE,
                                    EMBOSSDEPTH,
                                    20,
                                    Vector);
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
// Ring_Lip(5,20,1,1,"yes",4,7,0.5,0.5);
module Ring_Lip(RADIUS,DIAMETER_RING,SCAL_X,SCAL_Y,HULL,HEIGHTDIF,OFFDIF,SCAL_X2,SCAL_Y2){
        //scale([SCAL_X,SCAL_Y,1]){
    rotate_extrude(angle=360,convexity=3,$fn=FN_USED){
        translate([DIAMETER_RING,0,0]){
            if(HULL=="yes"){
                hull(){
                    scale([SCAL_X,SCAL_Y,1]){
                        circle(d=RADIUS,$fn=FN_USED);
                    }
                    translate([OFFDIF,HEIGHTDIF,0]){
                        scale([SCAL_X2,SCAL_Y2,1]){
                            circle(d=RADIUS,$fn=FN_USED);
                        }
                    }
                }
            }
            else if(HULL=="no"){
                scale([SCAL_X,SCAL_Y,1]){
                    circle(d=RADIUS,$fn=FN_USED);
                }
            }
            else{
                circle(10);
                // assert( !(HULL== "no" ? true:false) ,"ERROR! Hull-Parameter wrong");
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
        circle(d=OUTER,$fn=FN_USED);
        circle(d=OUTER-WALLTHICKNESS,$fn=FN_USED);
    }
}
module 2D_Ring_Shape(OUTER_D,Inner_D){
    difference(){
        circle(d=OUTER_D,$fn=FN_USED);
        circle(d=Inner_D,$fn=FN_USED);
    }
}
module 2D_Rounded_Square_Base_Shape(PARAM_X,PARAM_Y,RADIUS){
    translate([RADIUS,RADIUS,0]){
        minkowski(){
            square([PARAM_X-RADIUS*2,PARAM_Y-RADIUS*2]);
            circle(RADIUS,$fn=FN_USED);
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

// ====================================
// === Vector Foo for the Cover ====
// ====================================

// Cumulative sum of values in v
function cumsum(v) = [
    for (   a = v[0]-v[0], i = 0; i < len(v); a = a+v[i], i = i+1) a+v[i]];
Vector=cumsum(FONTWIDTHSTRING_2);    
//echo("cumsum",cumsum(FONTWIDTHSTRING_2));
//echo("Vector",cumsum(FONTWIDTHSTRING_2));

// calculates a vector that contains values of degree based on the values in the Vector, the Values are handled as they were arc length
// So every value is the angle of separation to the letter before
output = [for (a = [ 0 : len(FONTWIDTHSTRING_2) - 1 ]) (FONTWIDTHSTRING_2[a]*180*ONEPointMM)*FONTSIZE/(PI*DIAMETER/2) ];
echo("output",output);

// Like cumsum of FONTWIDTHSTRING_2 in Vector
// Now we get the sum of all angles from the start to the position of the letter at the position as the text gets wraped around the cylinder
Vector_Deg=cumsum(output);
echo("Vector_Deg",Vector_Deg);

// ====================================
// === Vector Foo for the Blow Can ====
// ====================================

// Cumulative sum of values in v
function cumsum(v) = [
    for (   a = v[0]-v[0], i = 0; i < len(v); a = a+v[i], i = i+1) a+v[i]];
Vector_BlowCan=cumsum(FONTWIDTHSTRING_3);    
//echo("cumsum",cumsum(FONTWIDTHSTRING_2));
//echo("Vector",cumsum(FONTWIDTHSTRING_2));

// calculates a vector that contains values of degree based on the values in the Vector, the Values are handled as they were arc length
// So every value is the angle of separation to the letter before
output_BlowCan = [for (a = [ 0 : len(FONTWIDTHSTRING_3) - 1 ]) (FONTWIDTHSTRING_3[a]*180*ONEPointMM)*FONTSIZE/(PI*DIAMETER/2) ];
echo("output",output);

// Like cumsum of FONTWIDTHSTRING_2 in Vector
// Now we get the sum of all angles from the start to the position of the letter at the position as the text gets wraped around the cylinder
Vector_Deg_BlowCan=cumsum(output_BlowCan);
echo("Vector_Deg",Vector_Deg);


module TEST_Cylinder(){
    difference(){
        cylinder(h=HEIGHT,d=DIAMETER,$fn=FN_USED);
        cylinder(h=HEIGHT,d=DIAMETER-2*WALLTHICKNESS,$fn=FN_USED);
    }
    translate([0,0,HEIGHT/4]){
        CYLINDER_EMBOSSER(DIAMETER,FONTSIZE,WALLTHICKNESS,Vector);
    }
}

//CYLINDER_EMBOSSER(DIAMETER,FONTSIZE,WALLTHICKNESS,Vector);
module CYLINDER_EMBOSSER(OUTER_D,FONTSIZE,EMBOSSDEPTH,ROT_Tune,Vector){
    intersection(){
        translate([0,0,-FONTSIZE/2]){
            difference(){
                rotate([0,0,360/(2*FN_USED)+ROT_Tune]){
                    // ROT_Tune makes shure that the CGAL-Calculations don't mess up du to broken aka Open geometry (aka holes!)
                    // It Rotates the Ring accordingly to the Faccetes of the cilinder that will get Embossed.
                    cylinder(h=2*FONTSIZE,d=OUTER_D+2*EMBOSSDEPTH,$fn=FN_USED);
                }
                rotate([0,0,360/(4*FN_USED)+ROT_Tune]){
                    cylinder(h=2*FONTSIZE,d=OUTER_D-2*EMBOSSDEPTH,$fn=2*FN_USED);
                }
            }
        }
        translate([0,0,0]){
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
}



// Output of the text string to align the Letters semi-manual to get the Values vor corect spacing around the cylinder  
module TEXTSTRING(){
    color("White",1.0){
        linear_extrude(height=EMBOSSDEPTH){
            text(   text=str(STRINGOFTEXT),
                    size=FONTSIZE,
                    font=FONT,
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

