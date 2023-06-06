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
// Blow in the smal oval hole at the side of the Can
// 
// How To
// 
// ================================================================================================================
// This is a device to make Noise like a Train Horn on Demonstrations and other gatherings.
// The design is lightweight and one set needs just an hour or less to print.
// It needs aproximately under 4.7m of filament so less than 15g per unit.
// It is recomendet to start production 2 weeks prior to a demonstration.
// 20 pices will fit on a single printbed of an ordinary Prusa mk3.
// One can combine different amonts of Blowcans and Covers to achive a Printtime fit the time sleeping over night
// Aim is to print 12 Cans and 6 Covers over night and start a new print in the Morning with 12 Covers and 6 Cans
// so the result will be 20 full sets.
// also there is a feature to get a message embossed on the surface of both parts. (its a little complicatetd)
// Between the Cover and the Blowcan there has to be a membrane out of a flexible material aka latexglove
// ================================================================================================================
 
// ================================================================================================================
// == Insall instruktions
// ================================================================================================================
//
// Take a latexglove and cut it open to get a nice sheet of rubber
// Span the sheet over the can and press the Cover on the can
// the installation is correct if the device sounds like a tini drum if taped whit the fingertip on the circle of the cover
// Blow in the oval Hole in the side of the can. ...... (surprize ^^)
//
// ================================================================================================================

// ================================================================================================================
// == how dos the Embossing work
// ================================================================================================================
//
// Use the customizer in whith textfiftting.
// The OpenSCAD-File writes the desiered text in the desiered font and size
// and a secont version of the same text in transparent as overley. 
// Then the user assign values in a vector and aligns the second text to the first white one letter by 
// letter just by sense of proportion and visual overlay.
// When the two texts match, the information in the vector FONTWIDTHSTRING_Cover containes spacing as values.
// These values are used to calculate the Angles so that the spacing of the letters lookes nice on a 
// cylinder like the text were written on a flat pice and then wraped around the cylinder_B
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
// Then lookup for the vector FONTWIDTHSTRING_Cover and fill in values
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

DesignStatus="printing"; // ["sizing","fitting","printing", "textfitting", "Only_Text"]

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
Text_Ascend_Deg=35;

// =================================================
// ================ Fonts ==========================
// =================================================

FONT="Liberation Sans:style=Regular";

// =================================================
// ================ Messages =======================
// =================================================

////Message: 1
//STRINGOFTEXT_BlowCan="HHHwww.printables.com";  // (18 charackters)
//FONTWIDTHSTRING_BlowCan=[ 0.00,2.50,2.50,2.50,2.50,2.50,2.275,0.75,1.85,0.95,0.50,1.85,0.75,1.85,1.85,0.50,1.85,1.625,0.75,1.60,1.850];
//
////Message: 2
//STRINGOFTEXT_Cover="Hello World";  // (11 charackters)
//FONTWIDTHSTRING_Cover=[ 0.00,2.50,1.85,0.50,0.55,0.55,2.025,3.30,1.85,0.95,0.525];

// ================== Köln 28.04.2023

STRINGOFTEXT_BlowCan="Riders unite, together we fight!"; // (32 charackters)
FONTWIDTHSTRING_BlowCan=[0.00,2.50,0.525,1.85,1.85,0.95,0.75,1.60,1.85,1.85,0.525,0.725,1.85,0.75,0.7250,0.75,1.85,1.85,1.825,0.75,1.85,1.825,0.75,0.95,2.50,0.75,1.825,0.75,0.525,1.85,1.85,0.725];

////Message: 2
STRINGOFTEXT_Cover="BR-Konferenz 2023";  // (17 charackters)
FONTWIDTHSTRING_Cover=[0.00,2.50,0.95,1.85,1.625,1.85,1.85,0.75,1.825,1.85,1.85,0.72,1.85,1.825,0.75,1.85,1.85,1.85];
// ================== Köln 28.04.2023 ================== \\


// ============================================================================================
// ============= For text align testiung
// ============================================================================================
//STRINGOFTEXT_BlowCan="HHllwWw...l";  // (11 charackters)
//FONTWIDTHSTRING_BlowCan=[ 0.00,2.50,2.50,0.50,0.50,2.50,3.375,2.275,0.740,0.740,0.75,0.5];
//
//// Testmessage 2
//STRINGOFTEXT_Cover="HHlHwWw...l";  // (11 charackters)
//FONTWIDTHSTRING_Cover=[ 0.00,2.50,2.50,0.50,2.50,2.50,3.375,2.275,0.740,0.740,0.75,0.5];
////// Testmessage 3
////STRINGOFTEXT_Cover="Hello World";  // (11 charackters)
////FONTWIDTHSTRING_Cover=[ 0.00,2.50,1.85,0.50,0.55,0.55,2.025,3.30,1.85,0.95,0.525];

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
Tube_d=28;  // Set1 25mm, Set2 29mm
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
MembraneSpacing=-0.32; // -0.22 "is to loose"
MembraneOuterDiameter=BlowCanDiameter+WallThickness*2+MembraneSpacing;

Offset_rot_Start=20;

module __Customizer_Limit__ () {}  // This actually works
shown_by_customizer = false;
// === Facettes Numbers ===

FN_HexNut=6;
FN_Performance=36;
FN_Rough=12;
FN_Medium=32;
FN_Fine=72;
FN_ExtraFine=128;

//FN_USED=FN_Medium;
FN_USED=FN_Fine;

FN_M8=8.00;



// ==================================
// = Test Stage =
// ==================================
// 1 Modus textaligning  
if (DesignStatus=="textfitting"){
    translate([0,-15,0]){
        TEXTSTRING(STRINGOFTEXT_BlowCan,Vector_BlowCan);
    }
    TEXTSTRING(STRINGOFTEXT_Cover,Vector_Cover);
    //TEST_Cylinder();
}
if (DesignStatus=="printing"){ //BlowCanHeight+MembraneCoverHeight-ClampLipOverlap
    translate([0,50,BlowCanHeight+MembraneCoverHeight-ClampLipOverlap]){
        rotate([180,0,0]){
            //Membrane_Cover_Ring();
        }
    }
    translate([0,0,0]){
        Blow_Can();
    }
}
if (DesignStatus=="sizing"){
see_me_half(){
            translate([0,0,0]){
                //if( Blow_Can_Print=="yes"){
                    //Blow_Can();
                    Membrane_Cover_Ring();
                //}
            }
            translate([0,0,0]){
                linear_extrude(height=1){
                }
            }
            translate([0,0,0]){
                //if( Membrane_Cover_Ring_Print=="yes"){
                    //Membrane_Cover_Ring();
                    Blow_Can();
                //}
            }
            if( String_Print=="yes"){
                // Blowcan
                rotate([0,0,20]){
                    translate([0,0,BlowCanHeight/2]){
                        echo("Vector_BlowCan See Me Half",Vector_BlowCan);            
                        CYLINDER_EMBOSSER(  STRINGOFTEXT_BlowCan,
                                            FONTWIDTHSTRING_BlowCan,
                                            BlowCanDiameter,
                                            FONTSIZE,
                                            EMBOSSDEPTH,
                                            Offset_rot_Start,
                                            //Vector_BlowCan,
                                            //Vector_Cover,
                                            Vector_BlowCan,
                                            0.55,
                                            Text_Ascend_Deg                             );
                        // Cover
                        rotate([0,0,270]){
                            translate([0,0,-BlowCanHeight/2+BlowCanHeight]){            
                                echo("Vector_Cover See Me Half",Vector_Cover);
                                CYLINDER_EMBOSSER(  STRINGOFTEXT_Cover,
                                                    FONTWIDTHSTRING_Cover,
                                                    MembraneOuterDiameter,
                                                    FONTSIZE,
                                                    EMBOSSDEPTH,
                                                    Offset_rot_Start,
                                                    //Vector_BlowCan,
                                                    Vector_Cover,
                                                    0.00,
                                                    0.0                     );
                            }
                        }   
//                            STRINGOFTEXT_EMBOSS,
//                            OUTER_D,
//                            FONTSIZE,
//                            EMBOSSDEPTH,
//                            ROT_Tune,                         ??? Fehlt hier oben drüber
//                            Vector,
//                            Spiral_Ascend_Step,
//                            Spiral_Ascend_Deg
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

if (DesignStatus=="Only_Text"){
//cube(10);
    see_me_half(){
        translate([0,0,BlowCanHeight]){
            CYLINDER_EMBOSSER(  STRINGOFTEXT_Cover,
                            FONTWIDTHSTRING_Cover,
                            MembraneOuterDiameter,
                            FONTSIZE,
                            EMBOSSDEPTH,
                            Offset_rot_Start,                         // Rot Tune
                            //Vector_BlowCan,
                            Vector_Cover,
                            0.00,                       // Ascend Step
                            0.0                         // Ascend degree
                            );
        }
        translate([0,0,/*BlowCanHeight/4*/0]){
            CYLINDER_EMBOSSER(  STRINGOFTEXT_BlowCan,
                                FONTWIDTHSTRING_BlowCan,
                                BlowCanDiameter,
                                FONTSIZE,
                                EMBOSSDEPTH,
                                Offset_rot_Start,                         //Rot Tune
                                Vector_BlowCan,
                                0.0,                       // Ascend Step
                                Text_Ascend_Deg            // Ascend degree
                                );
        }
        translate([0,0,0]){
            CYLINDER_EMBOSSER(  STRINGOFTEXT_BlowCan,
                                FONTWIDTHSTRING_BlowCan,
                                BlowCanDiameter,
                                FONTSIZE,
                                EMBOSSDEPTH,
                                Offset_rot_Start,           //Rot Tune
                                Vector_BlowCan,             
                                0,                          // Ascend Step
                                0                           // Ascend degree
                                );
        }
    }
}
module see_me_half(){
//cylinder(h=30,50,10);
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
                translate([0,0,BlowCanHeight/4]){
                    rotate([0,0,24]){
                        if(String_Print=="yes"){
                            // Nothing
                        }
                        else{
                        CYLINDER_EMBOSSER(  STRINGOFTEXT_BlowCan,
                                            FONTWIDTHSTRING_BlowCan,
                                            BlowCanDiameter,
                                            FONTSIZE,
                                            EMBOSSDEPTH,
                                            Offset_rot_Start,
                                            //Vector_BlowCan,
                                            //Vector_Cover,
                                            Vector_BlowCan,
                                            0.55,
                                            4.5                             );
//                        CYLINDER_EMBOSSER(  STRINGOFTEXT,
//                                            BlowCanDiameter,
//                                            FONTSIZE,
//                                            EMBOSSDEPTH,
//                                            20,
//                                            Vector,
//                                            0.55,       // Spiral_Ascend_Step rise of heigth every letter gets multiplied by i per rotation step
//                                            4.5);       // Spiral_Ascend_Deg  fix value of degree each letter gets rotatet out of vertical to line up the String as it is writen in a nice spiral
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
                                1.02, // Was 1.05 fit to loose
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
        translate([0,0,0]){
            rotate([0,180,0]){
                Membrane_Protektor(MembraneClerance/6);
            }
        }        
    }
    rotate([0,0,20]){
        translate([0,0,BlowCanHeight]){
            if(String_Print=="yes"){
                // Nothing
            }
            else{
                CYLINDER_EMBOSSER(  STRINGOFTEXT_Cover,
                                    FONTWIDTHSTRING_Cover,
                                    MembraneOuterDiameter,
                                    FONTSIZE,
                                    EMBOSSDEPTH,
                                    Offset_rot_Start,
                                    //Vector_BlowCan,
                                    Vector_Cover,
                                    0.00,
                                    0.0                     );
//                CYLINDER_EMBOSSER(  STRINGOFTEXT_Cover,
//                                    MembraneOuterDiameter,
//                                    FONTSIZE,
//                                    EMBOSSDEPTH,
//                                    20,
//                                    Vector_BlowCan, // WAS: Vector,
//                                    0,   // Spiral_Ascend_Step rise of heigth every letter gets multiplied by i per rotation step
//                                    0); // Spiral_Ascend_Deg  fix value of degree each letter gets rotatet out of vertical to line up the String as it is writen in a nice spiral
            }
        }
    }
}
//Membrane_Protektor(1);
module Membrane_Protektor(HEIGHT=1){
    difference(){
        linear_extrude(height=HEIGHT+3){
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
        translate([0,0,HEIGHT]){
            rotate_extrude(angle=360,convexity=2){
                union(){
                    2D_Rounded_Square_Base_Shape((BlowCanDiameter+WallThickness+WallThickness*0.15)/2,12,3);
                    square([3,12]);
                }
            }
        }
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
//2D_Rounded_Square_Base_Shape(PARAM_X=10,PARAM_Y=25,RADIUS=3);
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

// Cumulative sum of values in v for Cover
function cumsum(v) = [
    for (   a = v[0]-v[0], i = 0; i < len(v); a = a+v[i], i = i+1) a+v[i]];
Vector_Cover=cumsum(FONTWIDTHSTRING_Cover);    
//echo("cumsum",cumsum(FONTWIDTHSTRING_Cover));
//echo("Vector",cumsum(FONTWIDTHSTRING_Cover));

// calculates a vector that contains values of degree based on the values in the Vector, the Values are handled as they were arc length
// So every value is the angle of separation to the letter before
output_Cover = [for (a = [ 0 : len(FONTWIDTHSTRING_Cover) - 1 ]) (FONTWIDTHSTRING_Cover[a]*180*ONEPointMM)*FONTSIZE/(PI*DIAMETER/2) ];
echo("output_Cover",output_Cover);

// Like cumsum of FONTWIDTHSTRING_Cover in Vector
// Now we get the sum of all angles from the start to the position of the letter at the position as the text gets wraped around the cylinder
Vector_Deg=cumsum(output_Cover); 
echo("Vector_Deg",Vector_Deg);

//Vector_Chooser=cumsum(output_Cover);

// ====================================
// === Vector Foo for the Blow Can ====
// ====================================

// Cumulative sum of values in v for Blow Can
function cumsum(v) = [
    for (   a = v[0]-v[0], i = 0; i < len(v); a = a+v[i], i = i+1) a+v[i]
];
Vector_BlowCan=cumsum(FONTWIDTHSTRING_BlowCan);    
//echo("cumsum",cumsum(FONTWIDTHSTRING_Cover));
//echo("Vector",cumsum(FONTWIDTHSTRING_Cover));

// calculates a vector that contains values of degree based on the values in the Vector, the Values are handled as they were arc length
// So every value is the angle of separation to the letter before
output_BlowCan = [for (a = [ 0 : len(FONTWIDTHSTRING_BlowCan) - 1 ]) (FONTWIDTHSTRING_BlowCan[a]*180*ONEPointMM)*FONTSIZE/(PI*DIAMETER/2) ];
echo("output_BlowCan",output_BlowCan);

// Like cumsum of FONTWIDTHSTRING_Cover in Vector
// Now we get the sum of all angles from the start to the position of the letter at the position as the text gets wraped around the cylinder
Vector_Deg_BlowCan=cumsum(output_BlowCan);
echo("Vector_Deg_BlowCan",Vector_Deg_BlowCan);


//Vector_Chooser=cumsum(output_BlowCan);

// ====================================
// === Vector Foo for both parts ======
// ====================================


//function cumsum(v) = [
//    for (   a = v[0]-v[0], i = 0; i < len(v); a = a+v[i], i = i+1) a+v[i]];
//Vector_Chooser=cumsum(FooBaa);
//FooBaa=[for (a = [ 0 : len(FONTWIDTHSTRING_String) - 1 ]) (FONTWIDTHSTRING_String[a]*180*ONEPointMM)*FONTSIZE/(PI*DIAMETER/2) ];


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
module CYLINDER_EMBOSSER(   STRINGOFTEXT_EMBOSS,            // containes the individual letters as a string
                            FONTWIDTHSTRING_String,         // containes the width of every individual letter of STRINGOFTEXT_EMBOSS
                            OUTER_D,                        // Outer diameter of the cylinder
                            FONTSIZE,                       // size of the font in [mm]
                            EMBOSSDEPTH,                    // Level above surface of the embossing [mm]
                            ROT_Offset,                     // Offsets the start of the string [°]
                            Vector_Cooser,                  // containes the values of a vector 
                            Spiral_Ascend_Step,             // 
                            Spiral_Ascend_Deg        ){     // Degree the string acends
    //Spiral_Ascend_Step=0.55;
    //Spiral_Ascend_Deg=4.5;
    /*
    Spiral_Ascend_Deg is the angle of the spiraling text in regard to the horizontal line.
    Spiral_Ascend_Step is the step up of the Altitude dependent on the size (FONTWIDTHSTRING_*** ) of a individual letter.
    So Spiral_Ascend_Step has to be calculated for every individual letter to align te spiraling string on the hypotenusis
    */
    FooBaa=[for (a = [ 0 : len(FONTWIDTHSTRING_String) - 1 ]) (cos(Spiral_Ascend_Deg)*FONTWIDTHSTRING_String[a]*180*ONEPointMM)*FONTSIZE/(PI*DIAMETER/2) ];
    Vector_Chooser=cumsum(FooBaa);
    function cumsum(v) = [
        for (   a = v[0]-v[0], i = 0; i < len(v); a = a+v[i], i = i+1) a+v[i]
    ]; // Some fancy Vector Foo i obviously copy pastet from somewere without deeper understanding
    
    
    FooBaa_Ascend=[for (a = [ 0 : len(FONTWIDTHSTRING_String) - 1 ]) (FONTWIDTHSTRING_String[a]*ONEPointMM)*FONTSIZE ];
    Vector_Chooser_Ascend=cumsum(FooBaa_Ascend);
    // Creates curved Letters to aply on the outer cylinder surface.
    intersection(){
        translate([0,0,-FONTSIZE/2]){
            // A thin cylinderring 
            difference(){
                rotate([0,0,360/(2*FN_USED)+ROT_Offset]){
                    // ROT_Tune makes shure that the CGAL-Calculations don't mess up du to broken aka Open geometry (aka holes!)
                    // It Rotates the Ring accordingly to the Faccetes of the cilinder that will get Embossed.
                    cylinder(h=4*FONTSIZE,d=OUTER_D+2*EMBOSSDEPTH,$fn=FN_USED);
                }
                rotate([0,0,360/(4*FN_USED)+ROT_Offset]){
                    cylinder(h=4*FONTSIZE,d=OUTER_D-2*EMBOSSDEPTH,$fn=2*FN_USED);
                }
            }
        }
        // Textgeneration 
        translate([0,0,0]){
            for(i=[0:len(STRINGOFTEXT_EMBOSS)-1]){
                rotate([0,0,Vector_Chooser[i]+ROT_Offset]){  // A vector that containes the cumulative sum of all widhts of the individual letters that came before to deternmine the absolute value the rotation has to be performed to set a letter at the correct position by ablout rotation. 
                    echo("Vector_Chooser_Ascend CYLINDER_EMBOSSER",Vector_Chooser_Ascend[i]);
                    translate([0,0,sin(Spiral_Ascend_Deg)*Vector_Chooser_Ascend[i]]){  // Shifts the Letter upward by usin Pythagorem-Theroem tan(ALPHA)=oposid sid/adjacent side
                        rotate([90,0,0]){
                            //rotate([0,0,25]){
                                linear_extrude(height=(OUTER_D/2+2*EMBOSSDEPTH)){
                                    rotate([0,0,Spiral_Ascend_Deg]){                 // rotates the letters by the desiered ascending angle
                                    text(   text=str(STRINGOFTEXT_EMBOSS[i]),
                                                    size=FONTSIZE,
                                                    font=FONT,
                                                    valign="baseline",
                                                    halign =HALIGN);
//                                    square([Vector_Chooser[i]-1,FONTSIZE-5]); //For  testing
                                }
                            }
                        }
                    }
                }
            }
        }
    }
}



// Output of the text string to align the Letters semi-manual to get the Values vor corect spacing around the cylinder  
module TEXTSTRING(STRINGOFTEXT,VECTOR){
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
                    font=FONT,
                    valign="baseline",
                    halign =HALIGN);
        }
    }
    echo("LEN",len(STRINGOFTEXT));
    echo("ONEPointMM",ONEPointMM);
    echo("FONTSIZE",FONTSIZE);
    echo("Vector_Cover[2]",Vector_Cover[1]);
    for(i=[0:len(STRINGOFTEXT)-1]){
        echo("Vector_Cover",(Vector_Cover[i]));
        translate([(VECTOR[i]*ONEPointMM*FONTSIZE)+i,0,0.5]){
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

