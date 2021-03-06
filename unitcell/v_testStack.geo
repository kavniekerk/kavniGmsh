// *********************************************************************
// gemcell_wire_14.geo
//
// Description:
// Geometry file for a GEM cell.
// This cell can be repeated any number of times within Garfield 
// to construct an arbitrarily large GEM.
//
// *********************************************************************  

// General.ExpertMode = 1; // Don't complain for hybrid structured/unstructured mesh
// Mesh.Algorithm = 6; // Use Frontal 2D algorithm
// Mesh.Optimize = 1; // Optimize 3D tet mesh

// Extrusion Precision

Geometry.ExtrudeSplinePoints = 3;
Geometry.Points = 0;

// Parameters

tC = 0.0035;            // copper thickness, in mm
tD = 0.0035;            // dielectric thickness, in mm
lE = 0.4;               // distance from GEM plates to upper exterior electrode, in mm
lP = 0.02;              // distance from lower LEM plate to pad (readout) plane, in mm
a = 0.05;                // the "pitch", or distance between GEM pillars, in mm

mwf = 1;                                      // mesh_window_factor

h_r_w = 0.075;

mm = 1;                                       // geometrical scaling
r_w = 0.001 * mm;                             // radius of Wiremesh, in microns
p_0 = 0.025;                                    // pitch of the window, in mm
p = 0.025 * mm - 0*r_w/mwf * mm;                // pitch of the window, in microns
R = (p * p + h_r_w * h_r_w)/(2 * h_r_w);            // radius
alpha = Asin((p/R));                          // angle in radians

mesh_level = 0.05;                            // mesh level, in mm
mesh_window = 0.05;                           // mesh window, in mm

Number_Units_x = 0;						                // Number of units, 1
Number_Units_y = 0; 					                // Number of units, 1

geo_f_x = 1;							                    // Geometric_factor
geo_f_y = 1;							                    // Geometric_factor

h_f = 0*r_w;                                  // Heightfactor

m = 0;
n = 0;

// Characteristic lengths

  lcCopperPlateBdry = 0.0001;
  lcExtElectrodeBdry = 0.0001;
  LcWiremesh = 0.0001;                      

// *********************************************************************

// circle

// Face 1a - half wire (y - z) extrude in x direction - Corner 3 to Corner 4
// Wire 1a1

p0_1a = newp; Point(p0_1a) = {p+p,p+p,-r_w+mesh_level*mm-h_f, LcWiremesh * mm};            // centre circle
p1a_1_1 = newp; Point(p1a_1_1) = {p+p,p+p,-2*r_w+mesh_level*mm-h_f, LcWiremesh * mm};      // bottom circle
p2_1a = newp; Point(p2_1a) = {p+p,p+p+r_w,-r_w+mesh_level*mm-h_f, LcWiremesh * mm};        // right circle
p1a_3_1 = newp; Point(p1a_3_1) = {p+p,p+p,0+mesh_level*mm-h_f, LcWiremesh * mm};           // top circle
p4_1a = newp; Point(p4_1a) = {p+p,p+p-r_w,-r_w+mesh_level*mm-h_f, LcWiremesh * mm};        // left circle

l2_1as = newl; Line(l2_1as) = {p1a_1_1, p1a_3_1};
l3_1a = newl; Circle(l3_1a) = {p1a_3_1, p0_1a, p4_1a};
l4_1a = newl; Circle(l4_1a) = {p4_1a, p0_1a, p1a_1_1};

ll1_1a = newll; Line Loop(ll1_1a) = {l3_1a, l4_1a, l2_1as};

s_1_1a = news; Plane Surface(s_1_1a) = {ll1_1a};

sa_1_1[] = {};
tmpa_1_1[] = {};
tmpa_1_1[] = {s_1_1a};

tmpa_1_1[] = Extrude {{0,0,0},{0,1,0},{p+p+h_f,p+p+h_f,R-r_w-h_f}, alpha} {
  Surface{tmpa_1_1[0]}; Layers { 10 }; Recombine;
};

sa_1_1[] += tmpa_1_1[{2:4}];

// Wire 1a2

sa_1_2[] = {};
tmpa_1_2[] = {tmpa_1_1[0]};

tmpa_1_2[] = Extrude {{0,0,0},{0,-1,0},{-p+p+h_f,-p+p+h_f,-R+r_w+h_f}, alpha} {
  Surface{tmpa_1_2[0]}; Layers { 10 }; Recombine;
};

sa_1_2[] += tmpa_1_2[{2:4}];

// Face 1b - half wire (y - z) extrude in x direction - Corner 1 to Corner 2
// Wire 1b1

p0_1b = newp; Point(p0_1b) = {-p+p,-p+p,-r_w+mesh_level*mm-h_f, LcWiremesh * mm};
p1b_1_1 = newp; Point(p1b_1_1) = {-p+p,-p+p,-2*r_w+mesh_level*mm-h_f, LcWiremesh * mm};
p2_1b = newp; Point(p2_1b) = {-p+p,r_w - p+p,-r_w+mesh_level*mm-h_f, LcWiremesh * mm};
p1b_3_1 = newp; Point(p1b_3_1) = {-p+p,-p+p, 0+mesh_level*mm-h_f, LcWiremesh * mm};
p4_1b = newp; Point(p4_1b) = {-p+p,-r_w - p+p,-r_w+mesh_level*mm-h_f, LcWiremesh * mm};

l1_1b = newl; Circle(l1_1b) = {p1b_1_1, p0_1b, p2_1b};
l2_1b = newl; Circle(l2_1b) = {p2_1b, p0_1b, p1b_3_1};
l2_1bs = newl; Line(l2_1bs) = {p1b_1_1, p1b_3_1};

ll1_1b = newll; Line Loop(ll1_1b) = {l1_1b, l2_1b, -l2_1bs};

s_1_1b = news; Plane Surface(s_1_1b) = {ll1_1b};

sb_1_1[] = {};
tmpb_1_1[] = {s_1_1b};

tmpb_1_1[] = Extrude {{0,0,0},{0,-1,0},{-p+p-h_f,-p+p-h_f,R-r_w-h_f}, alpha} {
  Surface{tmpb_1_1[0]}; Layers { 10 }; Recombine;
};

sb_1_1[] += tmpb_1_1[{2:4}];

// Wire 1b2

sb_1_2[] = {};
tmpb_1_2[] = {tmpb_1_1[0]};

tmpb_1_2[] = Extrude {{0,0,0},{0,1,0},{p+p-h_f,p+p-h_f,-R+r_w+h_f}, alpha} {
  Surface{tmpb_1_2[0]}; Layers { 10 }; Recombine;
};

sb_1_2[] += tmpb_1_2[{2:4}];

// Face 2a - half wire (x - z) extrude in y direction - Corner 3 to Corner 2
// Wire 2a1

p0_2a = newp; Point(p0_2a) = {p+p,p+p,r_w+mesh_level*mm+h_f, LcWiremesh * mm};
p2a_1_1 = newp; Point(p2a_1_1) = {p+p,p+p,r_w+r_w+mesh_level*mm+h_f, LcWiremesh * mm};
p2_2a = newp; Point(p2_2a) = {p+p+r_w,p+p,r_w+mesh_level*mm+h_f, LcWiremesh * mm};
p2a_3_1 = newp; Point(p2a_3_1) = {p+p,p+p,0+mesh_level*mm+h_f, LcWiremesh * mm};
p4_2a = newp; Point(p4_2a) = {p+p-r_w,p+p,r_w+mesh_level*mm+h_f, LcWiremesh * mm};

l2_2as = newl; Line(l2_2as) = {p2a_1_1, p1a_3_1};
l3_2a = newl; Circle(l3_2a) = {p1a_3_1, p0_2a, p4_2a};
l4_2a = newl; Circle(l4_2a) = {p4_2a, p0_2a, p2a_1_1};

ll1_2a = newll; Line Loop(ll1_2a) = {l3_2a, l4_2a, l2_2as};

s_1_2a = news; Plane Surface(s_1_2a) = {ll1_2a};

sa_2_1[] = {};
tmpa_2_1[] = {s_1_2a};

tmpa_2_1[] = Extrude {{0,0,0},{1,0,0},{p+p+h_f,p+p+h_f,-R+r_w+h_f}, alpha} {
  Surface{tmpa_2_1[0]}; Layers { 10 }; Recombine;
};

sa_2_1[] += tmpa_2_1[{2:4}];

// Wire 2a2

sa_2_2[] = {};
tmpa_2_2[] = {tmpa_2_1[0]};

tmpa_2_2[] = Extrude {{0,0,0},{-1,0,0},{-p+p+h_f,-p+p+h_f,R-r_w-h_f}, alpha} {
  Surface{tmpa_2_2[0]}; Layers { 10 }; Recombine;
};

sa_2_2[] += tmpa_2_2[{2:4}];

// Face 2b - half wire (x - z) extrude in y direction - Corner 1 to Corner 4
// Wire 2b1

p0_2b = newp; Point(p0_2b) = {-p+p,-p+p,r_w+mesh_level*mm+h_f, LcWiremesh * mm};
p2b_1_1 = newp; Point(p2b_1_1) = {-p+p,-p+p,2*r_w+mesh_level*mm+h_f, LcWiremesh * mm};
p2_2b = newp; Point(p2_2b) = {-p+p+r_w,-p+p,r_w+mesh_level*mm+h_f, LcWiremesh * mm};
p2b_3_1 = newp; Point(p2b_3_1) = {-p+p,-p+p,0+mesh_level*mm+h_f, LcWiremesh * mm};
p4_2b = newp; Point(p4_2b) = {-p+p-r_w,-p+p,r_w+mesh_level*mm+h_f, LcWiremesh * mm};

l1_2b = newl; Circle(l1_2b) = {p2b_1_1, p0_2b, p2_2b};
l2_2b = newl; Circle(l2_2b) = {p2_2b, p0_2b, p1b_3_1};
l2_2bs = newl; Line(l2_2bs) = {p2b_1_1, p1b_3_1};

ll1_2b = newll; Line Loop(ll1_2b) = {l1_2b, l2_2b, -l2_2bs};

s_1_2b = news; Plane Surface(s_1_2b) = {ll1_2b};

sb_2_1[] = {};
tmpb_2_1[] = {s_1_2b};

tmpb_2_1[] = Extrude {{0,0,0},{-1,0,0},{-p+p-h_f,-p+p-h_f,-R+r_w+h_f}, alpha} {
  Surface{tmpb_2_1[0]}; Layers { 10 }; Recombine; 
};

sb_2_1[] += tmpb_2_1[{2:4}];

// Wire 2b2

sb_2_2[] = {};
tmpb_2_2[] = {tmpb_2_1[0]};

tmpb_2_2[] = Extrude {{0,0,0},{1,0,0},{p+p-h_f,p+p-h_f,R-r_w-h_f}, alpha} {
  Surface{tmpb_2_2[0]}; Layers { 10 }; Recombine;
};

sb_2_2[] += tmpb_2_2[{2:4}];

Coherence;

// *******************************
// Comparative IF Statement
// *******************************

For q In {1:2}
  For r In {1:2}
    For s In {1:2}

// *******************************
// Face physsurf_bdh_1_1 (Corner 1 - Corner 2)
// *******************************

  If(q == 1&& r == 1) 

  ll_bdhbt~{q}~{r}~{s}[] = {};
  ll_bdhbb~{q}~{r}~{s}[] = {};

  pbdhbt~{q}~{r}~{s}() = {};
  pbdhbb~{q}~{r}~{s}() = {};

  ll_bdhb~{q}~{r}~{s}[] = {};

    ll_bdhb~{q}~{r}~{s}[] += Boundary{ Surface{sb~{r}~{s}[2]}; };

  For t In {0:3}

    If(t == 0 && s == 2)
      ll_bdhbc0~{q}~{r}~{s}[] = {};
      pbdhbc0~{q}~{r}~{s}() = {};
      ll_bdhbc~{q}~{r}~{s}[] = {};

      ll_bdhbc~{q}~{r}~{s}[] += Boundary{ Surface{tmpb~{r}~{s}[t]}; };
      ll_bdhbc0~{q}~{r}~{s}[] = Abs(ll_bdhbc~{q}~{r}~{s}[t]);
      pbdhbc0~{q}~{r}~{s}() = PointsOf{ Line{Abs(ll_bdhbc~{q}~{r}~{s}[t])}; };
    EndIf

    If(t == 1)
      ll_bdhbb~{q}~{r}~{s}[] = Abs(ll_bdhb~{q}~{r}~{s}[t]);
      pbdhbb~{q}~{r}~{s}() = PointsOf{ Line{Abs(ll_bdhb~{q}~{r}~{s}[t])}; };
    EndIf  

    If(t == 1 && s == 2)
      ll_bdhbc1~{q}~{r}~{s}[] = {};
      pbdhbc1~{q}~{r}~{s}() = {};

      ll_bdhbc1~{q}~{r}~{s}[] = Abs(ll_bdhbc~{q}~{r}~{s}[t]);
      pbdhbc1~{q}~{r}~{s}() = PointsOf{ Line{Abs(ll_bdhbc~{q}~{r}~{s}[t])}; };
    EndIf

    If(t == 2 && s == 2)
      ll_bdhb1~{q}~{r}~{s}[] = {};
      pbdhb1~{q}~{r}~{s}() = {};

      ll_bdhb1~{q}~{r}~{s}[] = Abs(ll_bdhb~{q}~{r}~{s}[t]);
      pbdhb1~{q}~{r}~{s}() = PointsOf{ Line{Abs(ll_bdhb~{q}~{r}~{s}[t])}; };
    EndIf

    If(t == 3)  
      ll_bdhbt~{q}~{r}~{s}[] = Abs(ll_bdhb~{q}~{r}~{s}[t]);
      pbdhbt~{q}~{r}~{s}() = PointsOf{ Line{Abs(ll_bdhb~{q}~{r}~{s}[t])}; };
    EndIf

  EndFor

  EndIf

// *******************************
// Face physsurf_bdh_1_2 (Corner 2 - Corner 3)
// *******************************

  If(q == 1&& r == 2)

  ll_bdhat~{q}~{r}~{s}[] = {};
  ll_bdhab~{q}~{r}~{s}[] = {}; 

  pbdhat~{q}~{r}~{s}() = {};
  pbdhab~{q}~{r}~{s}() = {};

  ll_bdha~{q}~{r}~{s}[] = {};

    ll_bdha~{q}~{r}~{s}[] += Boundary{ Surface{sa~{r}~{s}[2]}; };

  For t In {0:3}

    If(t == 0 && s == 2)
      ll_bdhac0~{q}~{r}~{s}[] = {};
      pbdhac0~{q}~{r}~{s}() = {};
      ll_bdhac~{q}~{r}~{s}[] = {};

      ll_bdhac~{q}~{r}~{s}[] += Boundary{ Surface{tmpa~{r}~{s}[t]}; };
      ll_bdhac0~{q}~{r}~{s}[] = Abs(ll_bdhac~{q}~{r}~{s}[t]);
      pbdhac0~{q}~{r}~{s}() = PointsOf{ Line{Abs(ll_bdhac~{q}~{r}~{s}[t])}; };
    EndIf

    If(t == 1)
      ll_bdhab~{q}~{r}~{s}[] = Abs(ll_bdha~{q}~{r}~{s}[t]);
      pbdhab~{q}~{r}~{s}() = PointsOf{ Line{Abs(ll_bdha~{q}~{r}~{s}[t])}; };
    EndIf

    If(t == 1 && s == 2)
      ll_bdhac1~{q}~{r}~{s}[] = {};
      pbdhac1~{q}~{r}~{s}() = {};

      ll_bdhac1~{q}~{r}~{s}[] = Abs(ll_bdhac~{q}~{r}~{s}[t]);
      pbdhac1~{q}~{r}~{s}() = PointsOf{ Line{Abs(ll_bdhac~{q}~{r}~{s}[t])}; };
    EndIf

    If(t == 2 && s == 2)
      ll_bdha1~{q}~{r}~{s}[] = {}; 
      pbdha1~{q}~{r}~{s}() = {};

      ll_bdha1~{q}~{r}~{s}[] = Abs(ll_bdha~{q}~{r}~{s}[t]);
      pbdha1~{q}~{r}~{s}() = PointsOf{ Line{Abs(ll_bdha~{q}~{r}~{s}[t])}; };
    EndIf

    If(t == 3)
      ll_bdhat~{q}~{r}~{s}[] = Abs(ll_bdha~{q}~{r}~{s}[t]);
      pbdhat~{q}~{r}~{s}() = PointsOf{ Line{Abs(ll_bdha~{q}~{r}~{s}[t])}; };
    EndIf

  EndFor

  EndIf

// *******************************
// Face physsurf_bdh_2_1 (Corner 3 - Corner 4)
// *******************************

  If(q == 2&& r == 1)

  ll_bdhat~{q}~{r}~{s}[] = {};
  ll_bdhab~{q}~{r}~{s}[] = {}; 

  pbdhat~{q}~{r}~{s}() = {};
  pbdhab~{q}~{r}~{s}() = {};

  ll_bdha~{q}~{r}~{s}[] = {};

    ll_bdha~{q}~{r}~{s}[] += Boundary{ Surface{sa~{r}~{s}[2]}; };

  For t In {0:3}

    If(t == 0 && s == 2)
      ll_bdhac0~{q}~{r}~{s}[] = {};
      pbdhac0~{q}~{r}~{s}() = {};
      ll_bdhac~{q}~{r}~{s}[] = {};

      ll_bdhac~{q}~{r}~{s}[] += Boundary{ Surface{tmpa~{r}~{s}[t]}; };
      ll_bdhac0~{q}~{r}~{s}[] = Abs(ll_bdhac~{q}~{r}~{s}[t]);
      pbdhac0~{q}~{r}~{s}() = PointsOf{ Line{Abs(ll_bdhac~{q}~{r}~{s}[t])}; };
    EndIf
  
    If(t == 3)
      ll_bdhab~{q}~{r}~{s}[] = Abs(ll_bdha~{q}~{r}~{s}[t]);
      pbdhab~{q}~{r}~{s}() = PointsOf{ Line{Abs(ll_bdha~{q}~{r}~{s}[t])}; };
    EndIf

    If(t == 2 && s == 2)
      ll_bdha1~{q}~{r}~{s}[] = {};
      pbdha1~{q}~{r}~{s}() = {};

      ll_bdha1~{q}~{r}~{s}[] = Abs(ll_bdha~{q}~{r}~{s}[t]);
      pbdha1~{q}~{r}~{s}() = PointsOf{ Line{Abs(ll_bdha~{q}~{r}~{s}[t])}; };
    EndIf

    If(t == 1)
      ll_bdhat~{q}~{r}~{s}[] = Abs(ll_bdha~{q}~{r}~{s}[t]);
      pbdhat~{q}~{r}~{s}() = PointsOf{ Line{Abs(ll_bdha~{q}~{r}~{s}[t])}; };
    EndIf

    If(t == 1 && s == 2)
      ll_bdhac1~{q}~{r}~{s}[] = {};
      pbdhac1~{q}~{r}~{s}() = {};

      ll_bdhac1~{q}~{r}~{s}[] = Abs(ll_bdhac~{q}~{r}~{s}[t]);
      pbdhac1~{q}~{r}~{s}() = PointsOf{ Line{Abs(ll_bdhac~{q}~{r}~{s}[t])}; };
    EndIf

  EndFor

  EndIf

// *******************************
// Face physsurf_bdh_2_2 (Corner 4 - Corner 1)
// *******************************

  If(q == 2&& r == 2) 

  ll_bdhbt~{q}~{r}~{s}[] = {};
  ll_bdhbb~{q}~{r}~{s}[] = {};
  pbdhbt~{q}~{r}~{s}() = {};
  pbdhbb~{q}~{r}~{s}() = {};

  ll_bdhb~{q}~{r}~{s}[] = {};

    ll_bdhb~{q}~{r}~{s}[] += Boundary{ Surface{sb~{r}~{s}[2]}; };

  For t In {0:3}
 
    If(t == 0 && s == 2)
      ll_bdhbc0~{q}~{r}~{s}[] = {};
      pbdhbc0~{q}~{r}~{s}() = {};
      ll_bdhbc~{q}~{r}~{s}[] = {};

      ll_bdhbc~{q}~{r}~{s}[] += Boundary{ Surface{tmpb~{r}~{s}[t]}; };
      ll_bdhbc0~{q}~{r}~{s}[] = Abs(ll_bdhbc~{q}~{r}~{s}[t]);
      pbdhbc0~{q}~{r}~{s}() = PointsOf{ Line{Abs(ll_bdhbc~{q}~{r}~{s}[t])}; };
    EndIf

    If(t == 3)
      ll_bdhbb~{q}~{r}~{s}[] = Abs(ll_bdhb~{q}~{r}~{s}[t]);
      pbdhbb~{q}~{r}~{s}() = PointsOf{ Line{Abs(ll_bdhb~{q}~{r}~{s}[t])}; };
    EndIf

    If(t == 2 && s == 2)
      ll_bdhb1~{q}~{r}~{s}[] = {};
      pbdhb1~{q}~{r}~{s}() = {};

      ll_bdhb1~{q}~{r}~{s}[] = Abs(ll_bdhb~{q}~{r}~{s}[t]);
      pbdhb1~{q}~{r}~{s}() = PointsOf{ Line{Abs(ll_bdhb~{q}~{r}~{s}[t])}; };
    EndIf

    If(t == 1)  
      ll_bdhbt~{q}~{r}~{s}[] = Abs(ll_bdhb~{q}~{r}~{s}[t]);
      pbdhbt~{q}~{r}~{s}() = PointsOf{ Line{Abs(ll_bdhb~{q}~{r}~{s}[t])}; };
    EndIf

    If(t == 1 && s == 2)  
      ll_bdhbc1~{q}~{r}~{s}[] = {};
      pbdhbc1~{q}~{r}~{s}() = {};

      ll_bdhbc1~{q}~{r}~{s}[] = Abs(ll_bdhbc~{q}~{r}~{s}[t]);
      pbdhbc1~{q}~{r}~{s}() = PointsOf{ Line{Abs(ll_bdhbc~{q}~{r}~{s}[t])}; };
    EndIf

  EndFor

  EndIf

  EndFor
 EndFor
EndFor

// SHELL

// --------------------------------------------------------------------------

// *******************************
// Corner 1
// *******************************
pc1_1 = newp; Point(pc1_1) = {geo_f_x*0+geo_f_x*m*a, geo_f_y*0+geo_f_y*n*a, tD/2,lcCopperPlateBdry};
pc2_1 = newp; Point(pc2_1) = {geo_f_x*0+geo_f_x*m*a, geo_f_y*0+geo_f_y*n*a, -1*tD/2,lcCopperPlateBdry};
pc3_1 = newp; Point(pc3_1) = {geo_f_x*0+geo_f_x*m*a, geo_f_y*0+geo_f_y*n*a, (2*tC+tD)/2,lcCopperPlateBdry};
pc4_1 = newp; Point(pc4_1) = {geo_f_x*0+geo_f_x*m*a, geo_f_y*0+geo_f_y*n*a, -1*(2*tC+tD)/2,lcCopperPlateBdry};

// *******************************
// Corner 2
// *******************************
pc1_2 = newp; Point(pc1_2) = {geo_f_x*a+geo_f_x*m*a, geo_f_y*0+geo_f_y*n*a, tD/2,lcCopperPlateBdry};
pc2_2 = newp; Point(pc2_2) = {geo_f_x*a+geo_f_x*m*a, geo_f_y*0+geo_f_y*n*a, -1*tD/2,lcCopperPlateBdry};
pc3_2 = newp; Point(pc3_2) = {geo_f_x*a+geo_f_x*m*a, geo_f_y*0+geo_f_y*n*a, (2*tC+tD)/2,lcCopperPlateBdry};
pc4_2 = newp; Point(pc4_2) = {geo_f_x*a+geo_f_x*m*a, geo_f_y*0+geo_f_y*n*a, -1*(2*tC+tD)/2,lcCopperPlateBdry};

// *******************************
// Corner 3
// *******************************
pc1_3 = newp; Point(pc1_3) = {geo_f_x*a+geo_f_x*m*a, geo_f_y*a+geo_f_y*n*a, tD/2,lcCopperPlateBdry};
pc2_3 = newp; Point(pc2_3) = {geo_f_x*a+geo_f_x*m*a, geo_f_y*a+geo_f_y*n*a, -1*tD/2,lcCopperPlateBdry};
pc3_3 = newp; Point(pc3_3) = {geo_f_x*a+geo_f_x*m*a, geo_f_y*a+geo_f_y*n*a, (2*tC+tD)/2,lcCopperPlateBdry};
pc4_3 = newp; Point(pc4_3) = {geo_f_x*a+geo_f_x*m*a, geo_f_y*a+geo_f_y*n*a, -1*(2*tC+tD)/2,lcCopperPlateBdry};

// *******************************
// Corner 4
// *******************************
pc1_4 = newp; Point(pc1_4) = {geo_f_x*0+geo_f_x*m*a, geo_f_y*a+geo_f_y*n*a, tD/2,lcCopperPlateBdry};
pc2_4 = newp; Point(pc2_4) = {geo_f_x*0+geo_f_x*m*a, geo_f_y*a+geo_f_y*n*a, -1*tD/2,lcCopperPlateBdry};
pc3_4 = newp; Point(pc3_4) = {geo_f_x*0+geo_f_x*m*a, geo_f_y*a+geo_f_y*n*a, (2*tC+tD)/2,lcCopperPlateBdry};
pc4_4 = newp; Point(pc4_4) = {geo_f_x*0+geo_f_x*m*a, geo_f_y*a+geo_f_y*n*a, -1*(2*tC+tD)/2,lcCopperPlateBdry};

// --------------------------------------------------------------------------

// *******************************************************
// Copper planes
// *******************************************************

// Points between two half pillars on upper LEM
ptmc_1 = newp; Point(ptmc_1) = {geo_f_x*a/2+geo_f_x*m*a, geo_f_y*0+geo_f_y*n*a, (2*tC+tD)/2, lcCopperPlateBdry};
ptmd_1 = newp; Point(ptmd_1) = {geo_f_x*a/2+geo_f_x*m*a, geo_f_y*0+geo_f_y*n*a, tD/2, lcCopperPlateBdry};

ptmc_2 = newp; Point(ptmc_2) = {geo_f_x*a+geo_f_x*m*a, geo_f_y*a/2+geo_f_y*n*a, (2*tC+tD)/2, lcCopperPlateBdry};
ptmd_2 = newp; Point(ptmd_2) = {geo_f_x*a+geo_f_x*m*a, geo_f_y*a/2+geo_f_y*n*a, tD/2, lcCopperPlateBdry};

ptmc_3 = newp; Point(ptmc_3) = {geo_f_x*a/2+geo_f_x*m*a, geo_f_y*a+geo_f_y*n*a, (2*tC+tD)/2, lcCopperPlateBdry};
ptmd_3 = newp; Point(ptmd_3) = {geo_f_x*a/2+geo_f_x*m*a, geo_f_y*a+geo_f_y*n*a, tD/2, lcCopperPlateBdry};

ptmc_4 = newp; Point(ptmc_4) = {geo_f_x*0+geo_f_x*m*a, geo_f_y*a/2+geo_f_y*n*a, (2*tC+tD)/2, lcCopperPlateBdry};
ptmd_4 = newp; Point(ptmd_4) = {geo_f_x*0+geo_f_x*m*a, geo_f_y*a/2+geo_f_y*n*a, tD/2, lcCopperPlateBdry};

// Top lower boundary
pcptl1 = newp; Point(pcptl1) = {geo_f_x*0+geo_f_x*m*a, geo_f_y*0+geo_f_y*n*a, tD/2,lcCopperPlateBdry};
pcptl2 = newp; Point(pcptl2) = {geo_f_x*a+geo_f_x*m*a, geo_f_y*0+geo_f_y*n*a, tD/2,lcCopperPlateBdry};
pcptl3 = newp; Point(pcptl3) = {geo_f_x*a+geo_f_x*m*a, geo_f_y*a+geo_f_y*n*a, tD/2,lcCopperPlateBdry};
pcptl4 = newp; Point(pcptl4) = {geo_f_x*0+geo_f_x*m*a, geo_f_y*a+geo_f_y*n*a, tD/2,lcCopperPlateBdry};

// Top upper boundary
pcptu1 = newp; Point(pcptu1) = {geo_f_x*0+geo_f_x*m*a, geo_f_y*0+geo_f_y*n*a, (2*tC+tD)/2,lcCopperPlateBdry};
pcptu2 = newp; Point(pcptu2) = {geo_f_x*a+geo_f_x*m*a, geo_f_y*0+geo_f_y*n*a, (2*tC+tD)/2,lcCopperPlateBdry};
pcptu3 = newp; Point(pcptu3) = {geo_f_x*a+geo_f_x*m*a, geo_f_y*a+geo_f_y*n*a, (2*tC+tD)/2,lcCopperPlateBdry};
pcptu4 = newp; Point(pcptu4) = {geo_f_x*0+geo_f_x*m*a, geo_f_y*a+geo_f_y*n*a, (2*tC+tD)/2,lcCopperPlateBdry};

// Border lines
// Upper boundary
lcptub1a = newl; Line(lcptub1a) = {pc3_1,ptmc_1};
lcptub1b = newl; Line(lcptub1b) = {ptmc_1,pc3_2};
lcptub2a = newl; Line(lcptub2a) = {pc3_2,ptmc_2};
lcptub2b = newl; Line(lcptub2b) = {ptmc_2,pc3_3};
lcptub3a = newl; Line(lcptub3a) = {pc3_3,ptmc_3};
lcptub3b = newl; Line(lcptub3b) = {ptmc_3,pc3_4};
lcptub4a = newl; Line(lcptub4a) = {pc3_4,ptmc_4};
lcptub4b = newl; Line(lcptub4b) = {ptmc_4,pc3_1};

// Lower boundary
lcptlb5a = newl; Line(lcptlb5a) = {pc1_1,ptmd_1};
lcptlb5b = newl; Line(lcptlb5b) = {ptmd_1,pc1_2};
lcptlb6a = newl; Line(lcptlb6a) = {pc1_2,ptmd_2};
lcptlb6b = newl; Line(lcptlb6b) = {ptmd_2,pc1_3};
lcptlb7a = newl; Line(lcptlb7a) = {pc1_3,ptmd_3};
lcptlb7b = newl; Line(lcptlb7b) = {ptmd_3,pc1_4};
lcptlb8a = newl; Line(lcptlb8a) = {pc1_4,ptmd_4};
lcptlb8b = newl; Line(lcptlb8b) = {ptmd_4,pc1_1};

// Connect the upper and lower points with lines to form the plate
lcptib9 = newl; Line(lcptib9) = {pc3_1, pc1_1};
lcptib10 = newl; Line(lcptib10) = {pc3_2, pc1_2};
lcptib11 = newl; Line(lcptib11) = {pc3_3, pc1_3};
lcptib12 = newl; Line(lcptib12) = {pc3_4, pc1_4};

// ---------------------------------------------

// Points between two half pillars on lower LEM
pbmd_1 = newp; Point(pbmd_1) = {geo_f_x*a/2+geo_f_x*m*a, geo_f_y*0+geo_f_y*n*a, -1*tD/2, lcCopperPlateBdry};
pbmc_1 = newp; Point(pbmc_1) = {geo_f_x*a/2+geo_f_x*m*a, geo_f_y*0+geo_f_y*n*a, -1*(2*tC+tD)/2, lcCopperPlateBdry};

pbmd_2 = newp; Point(pbmd_2) = {geo_f_x*a+geo_f_x*m*a, geo_f_y*a/2+geo_f_y*n*a, -1*tD/2, lcCopperPlateBdry};
pbmc_2 = newp; Point(pbmc_2) = {geo_f_x*a+geo_f_x*m*a, geo_f_y*a/2+geo_f_y*n*a, -1*(2*tC+tD)/2, lcCopperPlateBdry};

pbmd_3 = newp; Point(pbmd_3) = {geo_f_x*a/2+geo_f_x*m*a, geo_f_y*a+geo_f_y*n*a, -1*tD/2, lcCopperPlateBdry};
pbmc_3 = newp; Point(pbmc_3) = {geo_f_x*a/2+geo_f_x*m*a, geo_f_y*a+geo_f_y*n*a, -1*(2*tC+tD)/2, lcCopperPlateBdry};

pbmd_4 = newp; Point(pbmd_4) = {geo_f_x*0+geo_f_x*m*a, geo_f_y*a/2+geo_f_y*n*a, -1*tD/2, lcCopperPlateBdry};
pbmc_4 = newp; Point(pbmc_4) = {geo_f_x*0+geo_f_x*m*a, geo_f_y*a/2+geo_f_y*n*a, -1*(2*tC+tD)/2, lcCopperPlateBdry};

// Bottom lower boundary
pcpbl1 = newp; Point(pcpbl1) = {geo_f_x*0+geo_f_x*m*a, geo_f_y*0+geo_f_y*n*a, -1*(2*tC+tD)/2,lcCopperPlateBdry};
pcpbl2 = newp; Point(pcpbl2) = {geo_f_x*a+geo_f_x*m*a, geo_f_y*0+geo_f_y*n*a, -1*(2*tC+tD)/2,lcCopperPlateBdry};
pcpbl3 = newp; Point(pcpbl3) = {geo_f_x*a+geo_f_x*m*a, geo_f_y*a+geo_f_y*n*a, -1*(2*tC+tD)/2,lcCopperPlateBdry};
pcpbl4 = newp; Point(pcpbl4) = {geo_f_x*0+geo_f_x*m*a, geo_f_y*a+geo_f_y*n*a, -1*(2*tC+tD)/2,lcCopperPlateBdry};

// Bottom upper boundary
pcpbu1 = newp; Point(pcpbu1) = {geo_f_x*0+geo_f_x*m*a, geo_f_y*0+geo_f_y*n*a, -1*tD/2,lcCopperPlateBdry};
pcpbu2 = newp; Point(pcpbu2) = {geo_f_x*a+geo_f_x*m*a, geo_f_y*0+geo_f_y*n*a, -1*tD/2,lcCopperPlateBdry};
pcpbu3 = newp; Point(pcpbu3) = {geo_f_x*a+geo_f_x*m*a, geo_f_y*a+geo_f_y*n*a, -1*tD/2,lcCopperPlateBdry};
pcpbu4 = newp; Point(pcpbu4) = {geo_f_x*0+geo_f_x*m*a, geo_f_y*a+geo_f_y*n*a, -1*tD/2,lcCopperPlateBdry};

// Border lines
// Upper boundary
lcpbub1a = newl; Line(lcpbub1a) = {pc4_1,pbmc_1};
lcpbub1b = newl; Line(lcpbub1b) = {pbmc_1,pc4_2};
lcpbub2a = newl; Line(lcpbub2a) = {pc4_2,pbmc_2};
lcpbub2b = newl; Line(lcpbub2b) = {pbmc_2,pc4_3};
lcpbub3a = newl; Line(lcpbub3a) = {pc4_3,pbmc_3};
lcpbub3b = newl; Line(lcpbub3b) = {pbmc_3,pc4_4};
lcpbub4a = newl; Line(lcpbub4a) = {pc4_4,pbmc_4};
lcpbub4b = newl; Line(lcpbub4b) = {pbmc_4,pc4_1};

// Lower boundary
lcpblb5a = newl; Line(lcpblb5a) = {pc2_1,pbmd_1};
lcpblb5b = newl; Line(lcpblb5b) = {pbmd_1,pc2_2};
lcpblb6a = newl; Line(lcpblb6a) = {pc2_2,pbmd_2};
lcpblb6b = newl; Line(lcpblb6b) = {pbmd_2,pc2_3};
lcpblb7a = newl; Line(lcpblb7a) = {pc2_3,pbmd_3};
lcpblb7b = newl; Line(lcpblb7b) = {pbmd_3,pc2_4};
lcpblb8a = newl; Line(lcpblb8a) = {pc2_4,pbmd_4};
lcpblb8b = newl; Line(lcpblb8b) = {pbmd_4,pc2_1};

// Connect the upper and lower points with lines to form the plate
lcpbib9 = newl; Line(lcpbib9) = {pc4_1, pc2_1};
lcpbib10 = newl; Line(lcpbib10) = {pc4_2, pc2_2};
lcpbib11 = newl; Line(lcpbib11) = {pc4_3, pc2_3};
lcpbib12 = newl; Line(lcpbib12) = {pc4_4, pc2_4};

// Lines connecting the upper and lower level corners
lcorner1 = newl; Line(lcorner1) = {pc1_1, pc2_1};
lcorner2 = newl; Line(lcorner2) = {pc1_2, pc2_2};
lcorner3 = newl; Line(lcorner3) = {pc1_3, pc2_3};
lcorner4 = newl; Line(lcorner4) = {pc1_4, pc2_4};

// Lines splitting the LEM in half
lmid1_1 = newl; Line(lmid1_1) = {ptmc_1, ptmd_1};
lmid1_2 = newl; Line(lmid1_2) = {ptmd_1, pbmd_1};
lmid1_3 = newl; Line(lmid1_3) = {pbmd_1, pbmc_1};

lmid2_1 = newl; Line(lmid2_1) = {ptmc_2, ptmd_2};
lmid2_2 = newl; Line(lmid2_2) = {ptmd_2, pbmd_2};
lmid2_3 = newl; Line(lmid2_3) = {pbmd_2, pbmc_2};

lmid3_1 = newl; Line(lmid3_1) = {ptmc_3, ptmd_3};
lmid3_2 = newl; Line(lmid3_2) = {ptmd_3, pbmd_3};
lmid3_3 = newl; Line(lmid3_3) = {pbmd_3, pbmc_3};

lmid4_1 = newl; Line(lmid4_1) = {ptmc_4, ptmd_4};
lmid4_2 = newl; Line(lmid4_2) = {ptmd_4, pbmd_4};
lmid4_3 = newl; Line(lmid4_3) = {pbmd_4, pbmc_4};

// **********************************************
// External Electrodes
// **********************************************

// Top electrode
pexet1 = newp; Point(pexet1) = {geo_f_x*0+geo_f_x*m*a, geo_f_y*0+geo_f_y*n*a, (2*tC+tD)/2+lE,lcExtElectrodeBdry};
pexet2 = newp; Point(pexet2) = {geo_f_x*a/2+geo_f_x*m*a, geo_f_y*0+geo_f_y*n*a, (2*tC+tD)/2+lE,lcExtElectrodeBdry};
pexet3 = newp; Point(pexet3) = {geo_f_x*a+geo_f_x*m*a, geo_f_y*0+geo_f_y*n*a, (2*tC+tD)/2+lE,lcExtElectrodeBdry};
pexet4 = newp; Point(pexet4) = {geo_f_x*a+geo_f_x*m*a, geo_f_y*a+geo_f_y*n*a, (2*tC+tD)/2+lE,lcExtElectrodeBdry};
pexet5 = newp; Point(pexet5) = {geo_f_x*a/2+geo_f_x*m*a, geo_f_y*a+geo_f_y*n*a, (2*tC+tD)/2+lE,lcExtElectrodeBdry};
pexet6 = newp; Point(pexet6) = {geo_f_x*0+geo_f_x*m*a, geo_f_y*a+geo_f_y*n*a, (2*tC+tD)/2+lE,lcExtElectrodeBdry};

// Top electrode lines
lexet1 = newl; Line(lexet1) = {pexet1, pexet2};
lexet2 = newl; Line(lexet2) = {pexet2, pexet3};
lexet3 = newl; Line(lexet3) = {pexet3, pexet4};
lexet4 = newl; Line(lexet4) = {pexet4, pexet5};
lexet5 = newl; Line(lexet5) = {pexet5, pexet6};
lexet6 = newl; Line(lexet6) = {pexet6, pexet1};

// *************************************************
// Define surfaces
// *************************************************

// Copper plate surfaces

llcp_up_border1 = newreg; Line Loop(llcp_up_border1) = {lcptib9, lcptlb5a, lcptlb5b, -lcptib10, -lcptub1a, -lcptub1b};
pscp_up_border1 = newreg; Plane Surface(pscp_up_border1) = {llcp_up_border1};
llcp_up_border2 = newreg; Line Loop(llcp_up_border2) = {lcptib10, lcptlb6a, lcptlb6b, -lcptib11, -lcptub2a, -lcptub2b};

pscp_up_border2 = newreg; Plane Surface(pscp_up_border2) = {llcp_up_border2};
llcp_up_border3 = newreg; Line Loop(llcp_up_border3) = {lcptib11, lcptlb7a, lcptlb7b, -lcptib12, -lcptub3a, -lcptub3b};
pscp_up_border3 = newreg; Plane Surface(pscp_up_border3) = {llcp_up_border3};
llcp_up_border4 = newreg; Line Loop(llcp_up_border4) = {lcptib12, lcptlb8a, lcptlb8b, -lcptib9, -lcptub4a, -lcptub4b};
pscp_up_border4 = newreg; Plane Surface(pscp_up_border4) = {llcp_up_border4};

llcp_low_border1 = newreg; Line Loop(llcp_low_border1) = {lcpbib9, lcpblb5a, lcpblb5b, -lcpbib10, -lcpbub1a, -lcpbub1b};
pscp_low_border1 = newreg; Plane Surface(pscp_low_border1) = {llcp_low_border1}; 
llcp_low_border2 = newreg; Line Loop(llcp_low_border2) = {lcpbib10, lcpblb6a, lcpblb6b, -lcpbib11, -lcpbub2a, -lcpbub2b};
pscp_low_border2 = newreg; Plane Surface(pscp_low_border2) = {llcp_low_border2};
llcp_low_border3 = newreg; Line Loop(llcp_low_border3) = {lcpbib11, lcpblb7a, lcpblb7b, -lcpbib12, -lcpbub3a, -lcpbub3b};
pscp_low_border3 = newreg; Plane Surface(pscp_low_border3) = {llcp_low_border3};
llcp_low_border4 = newreg; Line Loop(llcp_low_border4) = {lcpbib12, lcpblb8a, lcpblb8b, -lcpbib9, -lcpbub4a, -lcpbub4b};
pscp_low_border4 = newreg; Plane Surface(pscp_low_border4) = {llcp_low_border4};

llcp_face1 = newreg; Line Loop(llcp_face1) = {lcptub1a, lcptub1b, lcptub2a, lcptub2b, lcptub3a, lcptub3b, lcptub4a, lcptub4b};
pscp_face1 = newreg; Plane Surface(pscp_face1) = {llcp_face1};

llcp_face3 = newreg; Line Loop(llcp_face3) = {lcpbub1a, lcpbub1b, lcpbub2a, lcpbub2b, lcpbub3a, lcpbub3b, lcpbub4a, lcpbub4b};
pscp_face2 = newreg; Plane Surface(pscp_face2) = {llcp_face3};

// Gas & Dielectric surfaces

ll_top_gas1 = newreg; Line Loop(ll_top_gas1) = {lcptlb5a, lcptlb5b, lcptlb6a, lcptlb6b, lcptlb7a, lcptlb7b, lcptlb8a, lcptlb8b};
ps_top_gas = newreg; Plane Surface(ps_top_gas) = {ll_top_gas1};

ll_bottom_gas1 = newreg; Line Loop(ll_bottom_gas1) = {lcpblb5a, lcpblb5b, lcpblb6a, lcpblb6b, lcpblb7a, lcpblb7b, lcpblb8a, lcpblb8b};
ps_bottom_gas = newreg; Plane Surface(ps_bottom_gas) = {ll_bottom_gas1};

ll_side_gas1a = newreg; Line Loop(ll_side_gas1a) = {lcptlb5a, lmid1_2, -lcpblb5a, -lcorner1};
ps_side_gas1a = newreg; Plane Surface(ps_side_gas1a) = {ll_side_gas1a};

ll_side_gas2a = newreg; Line Loop(ll_side_gas2a) = {lcptlb6a, lmid2_2, -lcpblb6a,  -lcorner2};
ps_side_gas2a = newreg; Plane Surface(ps_side_gas2a) = {ll_side_gas2a};

ll_side_gas3a = newreg; Line Loop(ll_side_gas3a) = {lcptlb7a, lmid3_2, -lcpblb7a, -lcorner3};
ps_side_gas3a = newreg; Plane Surface(ps_side_gas3a) = {ll_side_gas3a};

ll_side_gas4a = newreg; Line Loop(ll_side_gas4a) = {lcptlb8a, lmid4_2, -lcpblb8a, -lcorner4};
ps_side_gas4a = newreg; Plane Surface(ps_side_gas4a) = {ll_side_gas4a};

ll_side_gas1b = newreg; Line Loop(ll_side_gas1b) = {lcptlb5b, lcorner2, -lcpblb5b, -lmid1_2};
ps_side_gas1b = newreg; Plane Surface(ps_side_gas1b) = {ll_side_gas1b};

ll_side_gas2b = newreg; Line Loop(ll_side_gas2b) = {lcptlb6b, lcorner3, -lcpblb6b, -lmid2_2};
ps_side_gas2b = newreg; Plane Surface(ps_side_gas2b) = {ll_side_gas2b};

ll_side_gas3b = newreg; Line Loop(ll_side_gas3b) = {lcptlb7b, lcorner4, -lcpblb7b, -lmid3_2};
ps_side_gas3b = newreg; Plane Surface(ps_side_gas3b) = {ll_side_gas3b};

ll_side_gas4b = newreg; Line Loop(ll_side_gas4b) = {lcptlb8b, lcorner1, -lcpblb8b, -lmid4_2};
ps_side_gas4b = newreg; Plane Surface(ps_side_gas4b) = {ll_side_gas4b};

Coherence;

// Bounding and intersecting surfaces

// *******************************
// Face physsurf_bdh_1_1
// *******************************

// Face physsurf_bdh_1_1

l1bdh_1_1_bsurft1 = newl; Line(l1bdh_1_1_bsurft1) = {pexet3, pbdhbt_1_1_2[1]};
l2bdh_1_1_bsurft1 = newl; Line(l2bdh_1_1_bsurft1) = {pexet1, p2b_1_1};
l1bdh_1_1_bsurfb1 = newl; Line(l1bdh_1_1_bsurfb1) = {pc3_2, pbdhab_1_2_2[1]};
l2bdh_1_1_bsurfb1 = newl; Line(l2bdh_1_1_bsurfb1) = {pc3_1, p1b_1_1};

llbdh_1_1_bsurf1t = newreg; Line Loop(llbdh_1_1_bsurf1t) = {lexet1, lexet2, l1bdh_1_1_bsurft1,  -l2_2b, -l1_2b, -ll_bdhbt_1_1_1[0], -ll_bdhbt_1_1_2[0], -l2bdh_1_1_bsurft1};
llbdh_1_1_bsurf1b = newreg; Line Loop(llbdh_1_1_bsurf1b) = {lcptub1a, lcptub1b, l1bdh_1_1_bsurfb1, ll_bdhac0_1_2_2[0], ll_bdhac1_1_2_2[0], -ll_bdhbb_1_1_1[0], -ll_bdhbb_1_1_2[0], -l2bdh_1_1_bsurfb1};

psbdh_1_1_bsurf1t = newreg; Plane Surface(psbdh_1_1_bsurf1t) = {llbdh_1_1_bsurf1t};
psbdh_1_1_bsurf1b = newreg; Plane Surface(psbdh_1_1_bsurf1b) = {llbdh_1_1_bsurf1b};

// *******************************
// Face physsurf_bdh_1_2
// *******************************

// Face physsurf_bdh_1_2 (Corner 2 - Corner 3)

l1bdh_1_2_bsurft1 = newl; Line(l1bdh_1_2_bsurft1) = {pexet4, p2a_1_1};
l1bdh_1_2_bsurfb1 = newl; Line(l1bdh_1_2_bsurfb1) = {pc3_3, p1a_1_1};

llbdh_1_2_bsurf3t = newreg; Line Loop(llbdh_1_2_bsurf3t) = {lexet3, l1bdh_1_2_bsurft1, ll_bdhat_1_2_2[0], ll_bdhat_1_2_1[0], ll_bdhbc0_1_1_2[0], ll_bdhbc1_1_1_2[0], -l1bdh_1_1_bsurft1};
llbdh_1_2_bsurf3b = newreg; Line Loop(llbdh_1_2_bsurf3b) = {lcptub2a, lcptub2b, l1bdh_1_2_bsurfb1, -l4_1a, -l3_1a, ll_bdhab_1_2_2[0], ll_bdhab_1_2_1[0], -l1bdh_1_1_bsurfb1};

psbdh_1_2_bsurf3t = newreg; Plane Surface(psbdh_1_2_bsurf3t) = {llbdh_1_2_bsurf3t};
psbdh_1_2_bsurf3b = newreg; Plane Surface(psbdh_1_2_bsurf3b) = {llbdh_1_2_bsurf3b};

// *******************************
// Face physsurf_bdh_2_1
// *******************************

// Face physsurf_bdh_2_1

l1bdh_2_1_bsurft4 = newl; Line(l1bdh_2_1_bsurft4) = {pexet6, pbdhat_2_1_2[1]};
l1bdh_2_1_bsurfb4 = newl; Line(l1bdh_2_1_bsurfb4) = {pc3_4, pbdhbb_2_2_2[1]};

llbdh_2_1_bsurf4t = newreg; Line Loop(llbdh_2_1_bsurf4t) = {lexet4, lexet5, l1bdh_2_1_bsurft4, -ll_bdhat_2_1_1[0], -ll_bdhat_2_1_2[0], l3_2a, l4_2a, -l1bdh_1_2_bsurft1};
llbdh_2_1_bsurf4b = newreg; Line Loop(llbdh_2_1_bsurf4b) = {lcptub3a, lcptub3b, l1bdh_2_1_bsurfb4, -ll_bdhbc1_2_2_2[0], -ll_bdhbc0_2_2_2[0], -ll_bdhab_2_1_1[0], -ll_bdhab_2_1_2[0], -l1bdh_1_2_bsurfb1}; 

psbdh_2_1_bsurf4t = newreg; Plane Surface(psbdh_2_1_bsurf4t) = {llbdh_2_1_bsurf4t};
psbdh_2_1_bsurf4b = newreg; Plane Surface(psbdh_2_1_bsurf4b) = {llbdh_2_1_bsurf4b};

// *******************************
// Face physsurf_bdh_2_2
// *******************************

// Face physsurf_bdh_2_2

llbdh_2_2_bsurf6t = newreg; Line Loop(llbdh_2_2_bsurf6t) = {lexet6, l2bdh_1_1_bsurft1, ll_bdhbt_2_2_2[0], ll_bdhbt_2_2_1[0], -ll_bdhac1_2_1_2[0], -ll_bdhac0_2_1_2[0], -l1bdh_2_1_bsurft4};
llbdh_2_2_bsurf6b = newreg; Line Loop(llbdh_2_2_bsurf6b) = {lcptub4a, lcptub4b, l2bdh_1_1_bsurfb1, l1_1b, l2_1b, ll_bdhbb_2_2_2[0], ll_bdhbb_2_2_1[0], -l1bdh_2_1_bsurfb4};

psbdh_2_2_bsurf6t = newreg; Plane Surface(psbdh_2_2_bsurf6t) = {llbdh_2_2_bsurf6t};
psbdh_2_2_bsurf6b = newreg; Plane Surface(psbdh_2_2_bsurf6b) = {llbdh_2_2_bsurf6b};

// Bounding surfaces

ll_bsurf7 = newreg; Line Loop(ll_bsurf7) = {lexet1, lexet2, lexet3, lexet4, lexet5, lexet6};
ps_bsurf7 = newreg; Plane Surface(ps_bsurf7) = {ll_bsurf7};

// Volumes
sl_gas = newreg; Surface Loop(sl_gas) = {ps_side_gas1a, ps_side_gas2a, ps_side_gas3a, ps_side_gas4a, ps_side_gas1b, ps_side_gas2b, ps_side_gas3b, ps_side_gas4b, psbdh_1_1_bsurf1t, psbdh_1_1_bsurf1b, psbdh_1_2_bsurf3t, psbdh_1_2_bsurf3b, psbdh_2_1_bsurf4t, psbdh_2_1_bsurf4b, psbdh_2_2_bsurf6t, psbdh_2_2_bsurf6b, ps_bsurf7, pscp_up_border1, pscp_up_border2, pscp_up_border3, pscp_up_border4, ps_bottom_gas, sa_1_1[0], sa_1_1[1], sa_1_2[0], sa_1_2[1], sb_1_1[0], sb_1_1[1], sb_1_2[0], sb_1_2[1], sa_2_1[0], sa_2_1[1], sa_2_2[0], sa_2_2[1], sb_2_1[0], sb_2_1[1], sb_2_2[0], sb_2_2[1]};
vol_gas = newreg; Volume(vol_gas) = {sl_gas};

sl_lower_cp = newreg; Surface Loop(sl_lower_cp) = {pscp_face2, pscp_low_border1, pscp_low_border2, pscp_low_border3, pscp_low_border4, ps_bottom_gas};
vol_lower_cp = newreg; Volume(vol_lower_cp) = {sl_lower_cp};

sl_wire = newreg; Surface Loop(sl_wire) = {s_1_2b, sb_1_1[2], sb_1_2[2], tmpa_2_2[0], s_1_1a, sa_2_1[2], sa_2_2[2], tmpb_1_2[0], s_1_2a, sa_1_1[2], sa_1_2[2], tmpb_2_2[0], s_1_1b, sb_2_1[2], sb_2_2[2], tmpa_1_2[0], sa_1_1[0], sa_1_1[1], sa_1_2[0], sa_1_2[1], sb_1_1[0], sb_1_1[1], sb_1_2[0], sb_1_2[1], sa_2_1[0], sa_2_1[1], sa_2_2[0], sa_2_2[1], sb_2_1[0], sb_2_1[1], sb_2_2[0], sb_2_2[1]};
vol_wire = newreg; Volume(vol_wire) = {sl_wire};

// Physical volumes

// Volume 1
physvol_gas = newreg; Physical Volume(physvol_gas) = {vol_gas};

// Volume 2
physvol_lower_cp = newreg; Physical Volume(physvol_lower_cp) = {vol_lower_cp};

// Volume 3
physvol_wire = newreg; Physical Volume(physvol_wire) = {vol_wire};

// Physical surfaces

// Gas physical surface
// Bounding surface 1
physsurf_gas = newreg; Physical Surface(physsurf_gas) = {ps_side_gas1a, ps_side_gas2a, ps_side_gas3a, ps_side_gas4a, ps_side_gas1b, ps_side_gas2b, ps_side_gas3b, ps_side_gas4b, psbdh_1_1_bsurf1t, psbdh_1_1_bsurf1b, psbdh_1_2_bsurf3t, psbdh_1_2_bsurf3b, psbdh_2_1_bsurf4t, psbdh_2_1_bsurf4b, psbdh_2_2_bsurf6t, psbdh_2_2_bsurf6b, ps_bsurf7, pscp_up_border1, pscp_up_border2, pscp_up_border3, pscp_up_border4, ps_bottom_gas, sa_1_1[0], sa_1_1[1], sa_1_2[0], sa_1_2[1], sb_1_1[0], sb_1_1[1], sb_1_2[0], sb_1_2[1], sa_2_1[0], sa_2_1[1], sa_2_2[0], sa_2_2[1], sb_2_1[0], sb_2_1[1], sb_2_2[0], sb_2_2[1]};

// Recombine Surface{physsurf_gas};

// Surfaces to which voltages will be applied
// Bounding surface 2
physsurf_lower_cp = newreg; Physical Surface(physsurf_lower_cp) = {pscp_face2, pscp_low_border1, pscp_low_border2, pscp_low_border3, pscp_low_border4, ps_bottom_gas};

// Recombine Surface{physsurf_lower_cp};

// Bounding surface 3
physsurf_wire = newreg; Physical Surface(physsurf_wire) = {s_1_2b, sb_1_1[2], sb_1_2[2], tmpa_2_2[0], s_1_1a, sa_2_1[2], sa_2_2[2], tmpb_1_2[0], s_1_2a, sa_1_1[2], sa_1_2[2], tmpb_2_2[0], s_1_1b, sb_2_1[2], sb_2_2[2], tmpa_1_2[0], sa_1_1[0], sa_1_1[1], sa_1_2[0], sa_1_2[1], sb_1_1[0], sb_1_1[1], sb_1_2[0], sb_1_2[1], sa_2_1[0], sa_2_1[1], sa_2_2[0], sa_2_2[1], sb_2_1[0], sb_2_1[1], sb_2_2[0], sb_2_2[1]};

// Recombine Surface{physsurf_wire};

// Bounding surface 4
physsurf_upper_el = newreg; Physical Surface(physsurf_upper_el) = {ps_bsurf7};

// Recombine Surface{physsurf_gas};

// Surfaces for periodic boundary conditions

// Bounding surface 5
physsurf_bdh_1_1 = newreg; Physical Surface(physsurf_bdh_1_1) = {pscp_up_border1, ps_side_gas1a, ps_side_gas1b, psbdh_1_1_bsurf1t, psbdh_1_1_bsurf1b};

// Bounding surface 6
physsurf_bdh_1_2 = newreg; Physical Surface(physsurf_bdh_1_2) = {pscp_up_border2, ps_side_gas2a, ps_side_gas2b, psbdh_1_2_bsurf3t, psbdh_1_2_bsurf3b};

// Bounding surface 7
physsurf_bdh_2_1 = newreg; Physical Surface(physsurf_bdh_2_1) = {pscp_up_border3, ps_side_gas3a, ps_side_gas3b, psbdh_2_1_bsurf4t, psbdh_2_1_bsurf4b};

// Bounding surface 8
physsurf_bdh_2_2 = newreg; Physical Surface(physsurf_bdh_2_2) = {pscp_up_border4, ps_side_gas4a, ps_side_gas4b, psbdh_2_2_bsurf6t, psbdh_2_2_bsurf6b};

// Meshing parameters

// Mesh Module

// unstructured mesh - model should not self intersect
// attempt to set the Mesh.RandomFactor * size(triangle)/size(model) so that it approaches machine accuracy. Increase Mesh.RandomFactor

// utilize different 2D & 3D meshing algorithms, or try to alter the characteristic lengths so that the mesh elements geometry better match the surface and volume elements in your geometry

// Optimize mesh quality !!!

// non-recombined 3D extruded wire volume elements fail - swapping algorithm is bad, try to change surface mesh a bit, recombine your mesh to produce/generate prisms/hexahedra instead of tetrahedra

// Recombine surfaces

// elliptic mesh generator
// utilize Mesh.Smoothing = 10;

// curved surfaces - gmsh can generate 1st order and 2nd order elements. click on second order in the mesh menu, after mesh is completed. To always generate 2nd second elements, select 'generate second order elements' in the mesh option panel. command line use '-order 2'
// explore the mesh by utilizing 'clipping planes,' /Tools/Clipping Planes/ 

// /Tools/Statistics/ - They measure the quality of the tetrahedra in a mesh:

// Gamma ~ inscribed_radius / circumscribed_radius
// Eta ~ volume^(2/3) / sum_edge_length^2
// Rho ~ min_edge_length / max_edge_length

// The graphs plot the the number of elements vs. the quality measure


// generate fine mesh for curvilinear result to conplex curves
// utilize second order and 

// do not combine tets, when recombining quads

Recombine Surface "*";
// Mesh.RecombineAll = 1;

Mesh.Algorithm = 1; // meshing 2D with MeshAdapt - for complex curved surfaces
// 2D mesh algorithm (1=MeshAdapt, 5=Delaunay, 6=Frontal)
// Default value: 1
// Saved in: General.OptionsFileName

Mesh.Algorithm3D = 4; // meshing 3D with Frontal - robustness, quality
// 3D mesh algorithm (1=Delaunay, 4=Frontal)
// Default value: 1
// Saved in: General.OptionsFileName

Mesh.AngleSmoothNormals = 20;
// Threshold angle below which normals are not smoothed
// Default value: 30
// Saved in: General.OptionsFileName

Mesh.AllowSwapAngle = 5;
// Treshold angle (in degrees) between faces normals under which we allow an edge swap
// Default value: 10
// Saved in: General.OptionsFileName

Mesh.BdfFieldFormat = 0;
// Field format for Nastran BDF files (0=free, 1=small, 2=large)
// Default value: 1
// Saved in: General.OptionsFileName

Mesh.Binary = 0;
// Write mesh files in binary format (if possible)
// Default value: 0
// Saved in: General.OptionsFileName

Mesh.CharacteristicLengthExtendFromBoundary = 1;
// Extend characteristic lengths from the boundaries inside the surface/volume
// Default value: 1
// Saved in: General.OptionsFileName

Mesh.CharacteristicLengthFactor = 1;
// Factor applied to all characteristic lengths
// Default value: 1
// Saved in: General.OptionsFileName

Mesh.CharacteristicLengthMin = 0;
// Minimum characteristic length
// Default value: 0
// Saved in: General.OptionsFileName

Mesh.CharacteristicLengthMax = 1e+22;
// Maximum characteristic length
// Default value: 1e+22
// Saved in: General.OptionsFileName

Mesh.CharacteristicLengthFromCurvature = 1;
// Compute characteristic lengths from curvature
// Default value: 0
// Saved in: General.OptionsFileName

Mesh.CharacteristicLengthFromPoints = 1;
// Compute characteristic lengths from values given at geometry points
// Default value: 1
// Saved in: General.OptionsFileName

Mesh.Clip = 0;
// Enable clipping planes? (Plane[i]=2^i, i=0,...,5)
// Default value: 0
// Saved in: -

Mesh.ColorCarousel = 1;
// Mesh coloring (0=by element type, 1=by elementary entity, 2=by physical entity, 3=by partition)
// Default value: 1
// Saved in: General.OptionsFileName

Mesh.CpuTime = 0;
// CPU time (in seconds) for the generation of the current mesh (read-only)
// Default value: 0
// Saved in: -

Mesh.DrawSkinOnly = 0;
// Draw only the skin of 3D meshes?
// Default value: 0
// Saved in: General.OptionsFileName

Mesh.Dual = 0;
// Display the dual mesh obtained by barycentric subdivision
// Default value: 0
// Saved in: General.OptionsFileName

Mesh.ElementOrder = 2;
// Element order (1=linear elements, N (<6) = elements of higher order)
// Default value: 1
// Saved in: General.OptionsFileName

Mesh.Explode = 1;
// Element shrinking factor (between 0 and 1)
// Default value: 1
// Saved in: General.OptionsFileName

Mesh.Format = 1;
// Mesh output format (1=msh, 2=unv, 19=vrml, 27=stl, 30=mesh, 31=bdf, 32=cgns, 33=med)
// Default value: 1
// Saved in: General.OptionsFileName

Mesh.Hexahedra = 1;
// Display mesh hexahedra?
// Default value: 1
// Saved in: General.OptionsFileName

// Mesh.LabelsFrequency = 100;
// Labels display frequency?
// Default value: 100
// Saved in: General.OptionsFileName

Mesh.LabelType = 0;
// Type of element label (0=element number, 1=elementary entity number, 2=physical entity number, 3=partition number, 4=coordinates)
// Default value: 0
// Saved in: General.OptionsFileName

Mesh.LcIntegrationPrecision = 1e-09;
// Accuracy of evaluation of the LC field for 1D mesh generation
// Default value: 1e-09
// Saved in: General.OptionsFileName

Mesh.Light = 1;
// Enable lighting for the mesh
// Default value: 1
// Saved in: General.OptionsFileName

Mesh.LightLines = 1;
// Enable lighting for mesh lines (element edges)
// Default value: 1
// Saved in: General.OptionsFileName

Mesh.LightTwoSide = 1;
// Light both sides of surfaces (leads to slower rendering)
// Default value: 1
// Saved in: General.OptionsFileName

Mesh.Lines = 0;
// Display mesh lines (1D elements)?
// Default value: 0
// Saved in: General.OptionsFileName

Mesh.LineNumbers = 0;
// Display mesh line numbers?
// Default value: 0
// Saved in: General.OptionsFileName

Mesh.LineWidth = 1;
// Display width of mesh lines (in pixels)
// Default value: 1
// Saved in: General.OptionsFileName

Mesh.MeshOnlyVisible = 0;
// Mesh only visible entities (experimental: use with caution!)
// Default value: 0
// Saved in: General.OptionsFileName

Mesh.MinimumCirclePoints = 7;
// Minimum number of points used to mesh a circle
// Default value: 7
// Saved in: General.OptionsFileName

Mesh.MinimumCurvePoints = 3;
// Minimum number of points used to mesh a (non-straight) curve
// Default value: 3
// Saved in: General.OptionsFileName

Mesh.MshFileVersion = 2.1;
// Version of the MSH file format to use
// Default value: 2.1
// Saved in: General.OptionsFileName

Mesh.NbHexahedra = 0;
// Number of hexahedra in the current mesh (read-only)
// Default value: 0
// Saved in: -

Mesh.NbNodes = 0;
// Number of nodes in the current mesh (read-only)
// Default value: 0
// Saved in: -

Mesh.NbPartitions = 4;
// Number of partitions
// Default value: 4
// Saved in: General.OptionsFileName

Mesh.NbPrisms = 0;
// Number of prisms in the current mesh (read-only)
// Default value: 0
// Saved in: -

Mesh.NbPyramids = 0;
// Number of pyramids in the current mesh (read-only)
// Default value: 0
// Saved in: -

Mesh.NbQuadrangles = 0;
// Number of quadrangles in the current mesh (read-only)
// Default value: 0
// Saved in: -

Mesh.NbTetrahedra = 0;
// Number of tetrahedra in the current mesh (read-only)
// Default value: 0
// Saved in: -

Mesh.NbTriangles = 0;
// Number of triangles in the current mesh (read-only)
// Default value: 0
// Saved in: -

Mesh.Normals = 0;
// Display size of normal vectors (in pixels)
// Default value: 0
// Saved in: General.OptionsFileName

Mesh.NumSubEdges = 2;
// Number of edge subdivisions when displaying high order elements
// Default value: 2
// Saved in: General.OptionsFileName

Mesh.Optimize = 0;
// Optimize the mesh to improve the quality of tetrahedral elements
// Default value: 0
// Saved in: General.OptionsFileName

Mesh.OptimizeNetgen = 0;
// Optimize the mesh using Netgen to improve the quality of tetrahedral elements
// Default value: 0
// Saved in: General.OptionsFileName

Mesh.Partitioner = 2;
// Partitioner software (1=Chacho, 2=METIS)
// Default value: 2
// Saved in: General.OptionsFileName

Mesh.Points = 0;
// Display mesh vertices (nodes)?
// Default value: 0
// Saved in: General.OptionsFileName

Mesh.PointNumbers = 0;
// Display mesh node numbers?
// Default value: 0
// Saved in: General.OptionsFileName

Mesh.PointSize = 4;
// Display size of mesh vertices (in pixels)
// Default value: 4
// Saved in: General.OptionsFileName

Mesh.PointType = 0;
// Display mesh vertices as solid color dots (0) or 3D spheres (1)
// Default value: 0
// Saved in: General.OptionsFileName

Mesh.Prisms = 1;
// Display mesh prisms?
// Default value: 1
// Saved in: General.OptionsFileName

Mesh.Pyramids = 1;
// Display mesh pyramids?
// Default value: 1
// Saved in: General.OptionsFileName

Mesh.Quadrangles = 1;
// Display mesh quadrangles?
// Default value: 1
// Saved in: General.OptionsFileName

Mesh.QualityInf = 0;
// Only display elements whose quality measure is greater than QualityInf
// Default value: 0
// Saved in: General.OptionsFileName

Mesh.QualitySup = 0;
// Only display elements whose quality measure is smaller than QualitySup
// Default value: 0
// Saved in: General.OptionsFileName

Mesh.QualityType = 2;
// Type of quality measure (0=gamma~vol/sum_face/max_edge, 1=eta~vol^(2/3)/sum_edge^2, 2=rho~min_edge/max_edge)
// Default value: 2
// Saved in: General.OptionsFileName

Mesh.RadiusInf = 0;
// Only display elements whose longest edge is greater than RadiusInf
// Default value: 0
// Saved in: General.OptionsFileName

Mesh.RadiusSup = 0;
// Only display elements whose longest edge is smaller than RadiusSup
// Default value: 0
// Saved in: General.OptionsFileName

Mesh.RandomFactor = 1e-05;
// Random factor used in the 2D meshing algorithm (should be increased if RandomFactor * size(triangle)/size(model) approaches machine accuracy)
// Default value: 1e-09
// Saved in: General.OptionsFileName

Mesh.RefineSteps = 10;
// Number of refinement steps in the MeshAdapt-based 2D algorithms
// Default value: 10
// Saved in: General.OptionsFileName

// Mesh.ReverseAllNormals = 0;
// Reverse all the mesh normals (for display)
// Default value: 0
// Saved in: General.OptionsFileName

Mesh.SaveAll = 0;
// Ignore Physical definitions and save all elements
// Default value: 0
// Saved in: -

Mesh.SaveElementTagType = 1;
// Type of the element tag saved in mesh formats that don't support saving physical or partition ids (1=elementary, 2=physical, 3=partition)
// Default value: 1
// Saved in: General.OptionsFileName

Mesh.SaveParametric = 0;
// Save parametric coordinates of nodes
// Default value: 0
// Saved in: General.OptionsFileName

Mesh.SaveGroupsOfNodes = 0;
// Save groups of nodes for each physical line and surface (UNV mesh format only)
// Default value: 0
// Saved in: General.OptionsFileName

Mesh.ScalingFactor = 1;
// Global scaling factor applied to the saved mesh
// Default value: 1
// Saved in: General.OptionsFileName

Mesh.SecondOrderExperimental = 0;
// Use experimental code to generate second order mesh
// Default value: 0
// Saved in: General.OptionsFileName

Mesh.SecondOrderIncomplete = 1;
// Create incomplete second order elements? (8-node quads, 20-node hexas, etc.)
// Default value: 1
// Saved in: General.OptionsFileName

Mesh.SecondOrderLinear = 0;
// Should second order vertices simply be created by linear interpolation?
// Default value: 0
// Saved in: General.OptionsFileName

Mesh.Smoothing = 5;
// Number of smoothing steps applied to the final mesh
// Default value: 1
// Saved in: General.OptionsFileName

// Mesh.SmoothInternalEdges = 0;
// Number of smoothing steps of internal edges for high order meshes
// Default value: 0
// Saved in: General.OptionsFileName

Mesh.SmoothNormals = 0;
// Smooth the mesh normals?
// Default value: 0
// Saved in: General.OptionsFileName

Mesh.SubdivisionAlgorithm = 0;
// Mesh subdivision algorithm (0=none, 1=all quadrangles, 2=all hexahedra)
// Default value: 0
// Saved in: General.OptionsFileName

Mesh.SurfaceEdges = 1;
// Display edges of surface mesh?
// Default value: 1
// Saved in: General.OptionsFileName

Mesh.SurfaceFaces = 0;
// Display faces of surface mesh?
// Default value: 0
// Saved in: General.OptionsFileName

Mesh.SurfaceNumbers = 0;
// Display surface mesh element numbers?
// Default value: 0
// Saved in: General.OptionsFileName

Mesh.Tangents = 0;
// Display size of tangent vectors (in pixels)
// Default value: 0
// Saved in: General.OptionsFileName

Mesh.Tetrahedra = 1;
// Display mesh tetrahedra?
// Default value: 1
// Saved in: General.OptionsFileName

Mesh.ToleranceEdgeLength = 0;
// Skip a model edge in mesh generation if its length is less than user's defined tolerance
// Default value: 0
// Saved in: General.OptionsFileName

Mesh.Triangles = 1;
// Display mesh triangles?
// Default value: 1
// Saved in: General.OptionsFileName

Mesh.VolumeEdges = 1;
// Display edges of volume mesh?
// Default value: 1
// Saved in: General.OptionsFileName

Mesh.VolumeFaces = 0;
// Display faces of volume mesh?
// Default value: 0
// Saved in: General.OptionsFileName

Mesh.VolumeNumbers = 0;
// Display volume mesh element numbers?
// Default value: 0
// Saved in: General.OptionsFileName

Mesh.Voronoi = 0;
// Display the voronoi diagram
// Default value: 0
// Saved in: General.OptionsFileName

Mesh.ZoneDefinition = 0;
// Method for defining a zone (0=single zone, 1=by partition, 2=by physical)
// Default value: 0
// Saved in: General.OptionsFileName

Mesh.Color.Points = {0,0,255};
// Mesh node color
// Default value: {0,0,255}
// Saved in: General.OptionsFileName

Mesh.Color.PointsSup = {255,0,255};
// Second order mesh node color
// Default value: {255,0,255}
// Saved in: General.OptionsFileName

Mesh.Color.Lines = {0,0,0};
// Mesh line color
// Default value: {0,0,0}
// Saved in: General.OptionsFileName

Mesh.Color.Triangles = {160,150,255};
// Mesh triangle color (if Mesh.ColorCarousel=0)
// Default value: {160,150,255}
// Saved in: General.OptionsFileName

Mesh.Color.Quadrangles = {130,120,225};
// Mesh quadrangle color (if Mesh.ColorCarousel=0)
// Default value: {130,120,225}
// Saved in: General.OptionsFileName

Mesh.Color.Tetrahedra = {160,150,255};
// Mesh tetrahedron color (if Mesh.ColorCarousel=0)
// Default value: {160,150,255}
// Saved in: General.OptionsFileName

Mesh.Color.Hexahedra = {130,120,225};
// Mesh hexahedron color (if Mesh.ColorCarousel=0)
// Default value: {130,120,225}
// Saved in: General.OptionsFileName

Mesh.Color.Prisms = {232,210,23};
// Mesh prism color (if Mesh.ColorCarousel=0)
// Default value: {232,210,23}
// Saved in: General.OptionsFileName

Mesh.Color.Pyramids = {217,113,38};
// Mesh pyramid color (if Mesh.ColorCarousel=0)
// Default value: {217,113,38}
// Saved in: General.OptionsFileName

Mesh.Color.Tangents = {255,255,0};
// Tangent mesh vector color
// Default value: {255,255,0}
// Saved in: General.OptionsFileName

Mesh.Color.Normals = {255,0,0};
// Normal mesh vector color
// Default value: {255,0,0}
// Saved in: General.OptionsFileName

Mesh.Color.Zero = {255,120,0};
// Color 0 in color carousel
// Default value: {255,120,0}
// Saved in: General.OptionsFileName

Mesh.Color.One = {255,160,0};
// Color 1 in color carousel
// Default value: {255,160,0}
// Saved in: General.OptionsFileName

Mesh.Color.Two = {255,200,0};
// Color 2 in color carousel
// Default value: {255,200,0}
// Saved in: General.OptionsFileName

Mesh.Color.Three = {255,240,0};
// Color 3 in color carousel
// Default value: {255,240,0}
// Saved in: General.OptionsFileName

Mesh.Color.Four = {228,255,0};
// Color 4 in color carousel
// Default value: {228,255,0}
// Saved in: General.OptionsFileName

Mesh.Color.Five = {188,255,0};
// Color 5 in color carousel
// Default value: {188,255,0}
// Saved in: General.OptionsFileName

Mesh.Color.Six = {148,255,0};
// Color 6 in color carousel
// Default value: {148,255,0}
// Saved in: General.OptionsFileName

Mesh.Color.Seven = {148,255,0};
// Color 7 in color carousel
// Default value: {108,255,0}
// Saved in: General.OptionsFileName

Mesh.Color.Eight = {68,255,0};
// Color 8 in color carousel
// Default value: {68,255,0}
// Saved in: General.OptionsFileName

Mesh.Color.Nine = {0,255,52};
// Color 9 in color carousel
// Default value: {0,255,52}
// Saved in: General.OptionsFileName

Mesh.Color.Ten = {0,255,132};
// Color 10 in color carousel
// Default value: {0,255,132}
// Saved in: General.OptionsFileName

Mesh.Color.Eleven = {0,255,192};
// Color 11 in color carousel
// Default value: {0,255,192}
// Saved in: General.OptionsFileName

Mesh.Color.Twelve = {0,216,255};
// Color 12 in color carousel
// Default value: {0,216,255}
// Saved in: General.OptionsFileName

Mesh.Color.Thirteen = {0,176,255};
// Color 13 in color carousel
// Default value: {0,176,255}
// Saved in: General.OptionsFileName

Mesh.Color.Fourteen = {0,116,255};
// Color 14 in color carousel
// Default value: {0,116,255}
// Saved in: General.OptionsFileName

Mesh.Color.Fifteen = {0,76,255};
// Color 15 in color carousel
// Default value: {0,76,255}
// Saved in: General.OptionsFileName

Mesh.Color.Sixteen = {24,0,255};
// Color 16 in color carousel
// Default value: {24,0,255}
// Saved in: General.OptionsFileName

Mesh.Color.Seventeen = {84,0,255};
// Color 17 in color carousel
// Default value: {84,0,255}
// Saved in: General.OptionsFileName

Mesh.Color.Eighteen = {104,0,255};
// Color 18 in color carousel
// Default value: {104,0,255}
// Saved in: General.OptionsFileName

Mesh.Color.Nineteen = {184,0,255};
// Color 19 in color carousel
// Default value: {184,0,255}
// Saved in: General.OptionsFileName

//+
Field[1] = BoundaryLayer;
//+
Field[1].AnisoMax = 10;
//+
Field[1].AnisoMax = 100;
//+
Background Field = 1;
