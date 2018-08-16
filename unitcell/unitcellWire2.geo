// *********************************************************************
// gemcell_wire_15_i.geo
//
// Description:
// Geometry file for a GEM cell.
// This cell can be repeated any number of times within Garfield 
// to construct an arbitrarily large GEM.
//
// *********************************************************************  


// Parameters

tC = 0.0035;            // copper thickness, in mm
tD = 0.0035;            // dielectric thickness, in mm
lE = 0.4;               // distance from GEM plates to upper exterior electrode, in mm
lP = 0.02;              // distance from lower LEM plate to pad (readout) plane, in mm
a = 0.10;                // the "pitch", or distance between GEM pillars, in mm

mwf = 1;                                      // mesh_window_factor

mm = 1;                                       // geometrical scaling
r_w = 0.010 * mm;                             // radius of Wiremesh, in microns
p_0 = 0.050;                                    // pitch of the window, in mm
p = 0.050 * mm - 0*r_w/mwf * mm;                // pitch of the window, in microns
R = (p * p + r_w * r_w)/(2 * r_w);            // radius
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

x1_sp_wind_fac2 = p*0.00;
x2_sp_wind_fac2 = p*0.00;
y1_sp_wind_fac2 = p*0.00;
y2_sp_wind_fac2 = p*0.00;

sp_fac = p*1.00;
sp_fac1 = p*1.00;

Rtp = R - R*0.00;
Rtn = R + R*0.00;


// Characteristic lengths

  lcCopperPlateBdry = 0.01;
  lcExtElectrodeBdry = 0.01;
  lcWireMesh = 0.001;                      

// *********************************************************************

// circle


//----------------------------------------------------------
// First set of wires

//----------------------------------------------------------
// x-direction

/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
/////// Face 1a - half wire (y - z) extrude in x direction - Corner 3 to Corner 4
// Wire 1a1

p0_1a = newp;     Point(p0_1a)        = {p+sp_fac1,p+sp_fac1,-r_w+mesh_level*mm, lcWireMesh * mm};                        // centre circle
p1a_1_1 = newp;   Point(p1a_1_1)      = {p+sp_fac1,p+sp_fac1,-2*r_w+mesh_level*mm, lcWireMesh * mm};                          // bottom circle
// p2_1a = newp;  Point(p2_1a)        = {p+sp_fac1,p+sp_fac1+r_w,-r_w+mesh_level*mm, lcWireMesh * mm};                    // right circle
p1a_3_1 = newp;   Point(p1a_3_1)      = {p+sp_fac1,p+sp_fac1,0+mesh_level*mm, lcWireMesh * mm};                      // top circle
p4_1a = newp;     Point(p4_1a)        = {p+sp_fac1,p+sp_fac1-r_w,-r_w+mesh_level*mm, lcWireMesh * mm};                    // left circle

l2_1as = newl;    Line(l2_1as)        = {p1a_1_1, p1a_3_1};
l3_1a = newl;     Circle(l3_1a)       = {p1a_3_1, p0_1a, p4_1a};
l4_1a = newl;     Circle(l4_1a)       = {p4_1a, p0_1a, p1a_1_1};

ll1_1a = newll;   Line Loop(ll1_1a)   = {l3_1a, l4_1a, l2_1as};

s_1_1a = news;    Plane Surface(s_1_1a) = {ll1_1a};

sa_1_1[] = {};
tmpa_1_1a[] = {};
tmpa_1_1a[] = {s_1_1a};

/*
tmpa_1_1b[] = Extrude {-x2_sp_wind_fac,0,0} {
  Surface{tmpa_1_1a[0]};
};

sa_1_1[] = tmpa_1_1b[{2:4}];
*/

tmpa_1_1[] = Extrude {{x2_sp_wind_fac2,0,0},{0,1,0},{p+1*sp_fac1,p+1*sp_fac1,Rtn-r_w}, alpha} {
  Surface{tmpa_1_1a[0]};
};

sa_1_1[] = tmpa_1_1[{2:4}];


// Wire 1a2

sa_1_2[] = {};
tmpa_1_2a[] = {tmpa_1_1[0]};

tmpa_1_2[] = Extrude {{x2_sp_wind_fac2,0,0},{0,-1,0},{-p+1*sp_fac1,p+1*sp_fac1,-Rtp+r_w}, alpha} {
  Surface{tmpa_1_2a[0]};
};

sa_1_2[] = tmpa_1_2[{2:4}];

/*
tmpa_1_2c[] = Extrude {-x2_sp_wind_fac,0,0} {
  Surface{tmpa_1_2b[0]};
};

sa_1_2[] = tmpa_1_2c[{2:4}];
*/

s_1_1a1[] = s_1_1a;
s_1_1a2[] = tmpa_1_2[0];

sl_wire_exterior_surface_1a[] = newreg; Surface Loop(sl_wire_exterior_surface_1a) = { s_1_1a1[0], sa_1_1[], sa_1_2[], s_1_1a2[0] }; // sa_1_1b[], sa_1_2c[]
// vol_1a_wire = newv; Compound Volume(vol_1a_wire) = { tmpa_1_1[1], tmpa_1_2[1] }; // tmpa_1_1b[1], tmpa_1_2c[1]
vol_1a_wire = newreg; Volume(vol_1a_wire) = sl_wire_exterior_surface_1a[];

physvol_1a_wire = newreg; Physical Volume(physvol_1a_wire) = vol_1a_wire;
physsurf_1a_wire = newreg; Physical Surface(physsurf_1a_wire) = { s_1_1a1, sa_1_1[], sa_1_2[], s_1_1a2 }; // sa_1_1b[], sa_1_2c[]


//----------------------------------------------------------
// Second set of wires

/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
/////// Face 1b - half wire (y - z) extrude in x direction - Corner 1 to Corner 2
// Wire 1b1

p0_1b = newp; Point(p0_1b)      = {-p+sp_fac1,-p+sp_fac1,-r_w+mesh_level*mm, lcWireMesh * mm};                                            // centre circle
p1b_1_1 = newp; Point(p1b_1_1)  = {-p+sp_fac1,-p+sp_fac1,-2*r_w+mesh_level*mm, lcWireMesh * mm};                                              // bottom circle
p2_1b = newp; Point(p2_1b)      = {-p+sp_fac1,-p+sp_fac1+r_w,-r_w+mesh_level*mm, lcWireMesh * mm};                                        // right circle
p1b_3_1 = newp; Point(p1b_3_1)  = {-p+sp_fac1,-p+sp_fac1,0+mesh_level*mm, lcWireMesh * mm};                                          // top circle
// p4_1b = newp; Point(p4_1b)   = {-p+sp_fac1,-p+sp_fac1-r_w,-r_w+mesh_level*mm, lcWireMesh * mm};                                        // left circle

l1_1b = newl; Circle(l1_1b)     = {p1b_1_1, p0_1b, p2_1b};
l2_1b = newl; Circle(l2_1b)     = {p2_1b, p0_1b, p1b_3_1};
l2_1bs = newl; Line(l2_1bs)     = {p1b_1_1, p1b_3_1};

ll1_1b = newll; Line Loop(ll1_1b) = {l1_1b, l2_1b, -l2_1bs};

s_1_1b = news; Plane Surface(s_1_1b) = {ll1_1b};

sb_1_1[] = {};
tmpb_1_1[] = {s_1_1b};

/*
tmpb_1_1b[] = Extrude {x1_sp_wind_fac,0,0} {
  Surface{tmpb_1_1a[0]};
};

sb_1_1[] = tmpb_1_1b[{2:4}];
*/

tmpb_1_1[] = Extrude {{x1_sp_wind_fac2,0,0},{0,-1,0},{-p+1*sp_fac1,-p,Rtn-r_w}, alpha} {
  Surface{tmpb_1_1[0]};
};

sb_1_1[] = tmpb_1_1[{2:4}];


// Wire 1b2

sb_1_2[] = {};
tmpb_1_2[] = {tmpb_1_1[0]};


tmpb_1_2[] = Extrude {{x1_sp_wind_fac2,0,0},{0,1,0},{p+sp_fac1,-p,-Rtp+r_w}, alpha} {
  Surface{tmpb_1_2[0]};
};

sb_1_2[] = tmpb_1_2[{2:4}];

/*
tmpb_1_2c[] = Extrude {x1_sp_wind_fac,0,0} {
  Surface{tmpb_1_2a[0]};
};

sb_1_2[] = tmpb_1_2c[{2:4}];
*/

s_1_1b1[] = s_1_1b;
s_1_1b2[] = tmpb_1_2[0];

sl_wire_exterior_surface_1b[] = newreg; Surface Loop(sl_wire_exterior_surface_1b) = { s_1_1b1[0], sb_1_1[0], sb_1_1[1], sb_1_1[2], sb_1_2[0], sb_1_2[1], sb_1_2[2], s_1_1b2[0] }; // sb_1_1[0], sb_1_1b[1], sb_1_1b[2], sb_1_2c[0], sb_1_2c[1], sb_1_2c[2],
// vol_1b_wire = newreg; Compound Volume(vol_1b_wire) = { tmpb_1_1[1], tmpb_1_2[1] }; // tmpb_1_1b[1], tmpb_1_2c[1]
vol_1b_wire = newreg; Volume(vol_1b_wire) = sl_wire_exterior_surface_1b[];

physvol_1b_wire = newreg; Physical Volume(physvol_1b_wire) = vol_1b_wire;
physsurf_1b_wire = newreg; Physical Surface(physsurf_1b_wire) = { s_1_1b1[], sb_1_1[], sb_1_2[], s_1_1b2[] }; // sb_1_1b[], sb_1_2c[], 


//----------------------------------------------------------
// First set of wires

//----------------------------------------------------------
// y-direction

/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
/////// Face 2a - half wire (x - z) extrude in y direction - Corner 3 to Corner 2
// Wire 2a1

p0_2a = newp; Point(p0_2a)      = {p+sp_fac1,p+sp_fac1,r_w+mesh_level*mm, lcWireMesh * mm};                         // centre circle
p2a_1_1 = newp; Point(p2a_1_1)  = {p+sp_fac1,p+sp_fac1,0+mesh_level*mm, lcWireMesh * mm};                       // bottom circle
// p2_2a = newp; Point(p2_2a)   = {p+sp_fac1+r_w,p+sp_fac1,r_w+mesh_level*mm, lcWireMesh * mm};                     // right circle
p2a_3_1 = newp; Point(p2a_3_1)  = {p+sp_fac1,p+sp_fac1,2*r_w+mesh_level*mm, lcWireMesh * mm};                            // top circle
p4_2a = newp; Point(p4_2a)      = {p+sp_fac1-r_w,p+sp_fac1,r_w+mesh_level*mm, lcWireMesh * mm};                     // left circle

l2_2as = newl; Line(l2_2as)     = {p2a_1_1, p2a_3_1};
l3_2a = newl; Circle(l3_2a)     = {p2a_3_1, p0_2a, p4_2a};
l4_2a = newl; Circle(l4_2a)     = {p4_2a, p0_2a, p2a_1_1};

ll1_2a = newll; Line Loop(ll1_2a) = {l3_2a, l4_2a, l2_2as};

s_1_2a = news; Plane Surface(s_1_2a) = {ll1_2a};

sa_2_1[] = {};
tmpa_2_1[] = {s_1_2a};

/*
tmpa_2_1b[] = Extrude {0,-y1_sp_wind_fac,0} {
  Surface{tmpa_2_1a[0]};
};

sa_2_1[] = tmpa_2_1b[{2:4}];
*/

tmpa_2_1[] = Extrude {{0,y1_sp_wind_fac2,0},{1,0,0},{p+1*sp_fac1,p+1*sp_fac1,-Rtp+r_w}, alpha} {
  Surface{tmpa_2_1[0]};
};

sa_2_1[] = tmpa_2_1[{2:4}];

// Wire 2a2

sa_2_2[] = {};
tmpa_2_2[] = {tmpa_2_1[0]};

tmpa_2_2[] = Extrude {{0,y1_sp_wind_fac2,0},{-1,0,0},{p+sp_fac1,-p+sp_fac1,Rtn-r_w}, alpha} {
  Surface{tmpa_2_2[0]};
};

sa_2_2[] = tmpa_2_2[{2:4}];

/*
tmpa_2_2c[] = Extrude {0,-y1_sp_wind_fac,0} {
  Surface{tmpa_2_2b[0]};
};

sa_2_2[] = tmpa_2_2c[{2:4}];
*/

s_1_2a1[] = s_1_2a;
s_1_2a2[] = tmpa_2_2[0];

sl_wire_exterior_surface_2a[] = newreg; Surface Loop(sl_wire_exterior_surface_2a) = { s_1_2a1[0], sa_2_1[], sa_2_2[], s_1_2a2[0] }; // sa_2_1b[], sa_2_2c[]
// vol_2a_wire1 = newreg; Volume(vol_2a_wire1) = { tmpa_2_1[] }; // tmpa_2_1b[1], tmpa_2_2c[1]
// vol_2a_wire2 = newreg; Volume(vol_2a_wire2) = { tmpa_2_2[] }; // tmpa_2_1b[1], tmpa_2_2c[1]
vol_2a_wire = newreg; Volume(vol_2a_wire) = sl_wire_exterior_surface_2a[];

physvol_2a_wire = newreg; Physical Volume(physvol_2a_wire) = vol_2a_wire;
// physvol_2a_wire1 = newreg; Physical Volume(physvol_2a_wire1) = vol_2a_wire1;
// physvol_2a_wire2 = newreg; Physical Volume(physvol_2a_wire2) = vol_2a_wire2;
physsurf_2a_wire = newreg; Physical Surface(physsurf_2a_wire) = { s_1_2a1[], sa_2_1[], sa_2_2[], s_1_2a2[] }; // sa_2_1b[], sa_2_2c[]


//----------------------------------------------------------
// Second set of wires

//----------------------------------------------------------
// y-direction

/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
/////// Face 2b - half wire (x - z) extrude in y direction - Corner 1 to Corner 4
// Wire 2b1

p0_2b = newp; Point(p0_2b)      = {-p+sp_fac1,-p+sp_fac1,r_w+mesh_level*mm, lcWireMesh * mm};                                               // centre circle
p2b_1_1 = newp; Point(p2b_1_1)  = {-p+sp_fac1,-p+sp_fac1,0+mesh_level*mm, lcWireMesh * mm};                                         // bottom circle
p2_2b = newp; Point(p2_2b)      = {-p+sp_fac1+r_w,-p+sp_fac1,r_w+mesh_level*mm, lcWireMesh * mm};                                           // right circle
p2b_3_1 = newp; Point(p2b_3_1)  = {-p+sp_fac1,-p+sp_fac1,2*r_w+mesh_level*mm, lcWireMesh * mm};                                              // top circle
// p4_2b = newp; Point(p4_2b)   = {-p+sp_fac1-r_w,-p+sp_fac1,r_w+mesh_level*mm, lcWireMesh * mm};                                        // left circle

l1_2b = newl; Circle(l1_2b)     = {p2b_1_1, p0_2b, p2_2b};
l2_2b = newl; Circle(l2_2b)     = {p2_2b, p0_2b, p2b_3_1};
l2_2bs = newl; Line(l2_2bs)     = {p2b_1_1, p2b_3_1};

ll1_2b = newll; Line Loop(ll1_2b) = {l1_2b, l2_2b, -l2_2bs};

s_1_2b = news; Plane Surface(s_1_2b) = {ll1_2b};

sb_2_1[] = {};
tmpb_2_1[] = {s_1_2b};

/*
tmpb_2_1b[] = Extrude {0,y2_sp_wind_fac,0} {
  Surface{tmpb_2_1a[0]};
};

sb_2_1[] = tmpb_2_1b[{2:4}];
*/

tmpb_2_1[] = Extrude {{0,y2_sp_wind_fac2,0},{-1,0,0},{-p,-p+1*sp_fac1,-Rtp+r_w}, alpha} {
  Surface{tmpb_2_1[0]};
};

sb_2_1[] = tmpb_2_1[{2:4}];

// Wire 2b2

sb_2_2[] = {};
tmpb_2_2[] = {tmpb_2_1[0]};

tmpb_2_2[] = Extrude {{0,y2_sp_wind_fac2,0},{1,0,0},{-p,p+1*sp_fac1,Rtn-r_w}, alpha} {
  Surface{tmpb_2_2[0]};
};

sb_2_2[] = tmpb_2_2[{2:4}];

/*
tmpb_2_2c[] = Extrude {0,y2_sp_wind_fac,0} {
  Surface{tmpb_2_2b[0]};
};

sb_2_2[] = tmpb_2_2c[{2:4}];
*/

s_1_2b1[] = s_1_2b;
s_1_2b2[] = tmpb_2_2[0];

sl_wire_exterior_surface_2b[] = newreg; Surface Loop(sl_wire_exterior_surface_2b) = { s_1_2b1[0], sb_2_1[], sb_2_2[], s_1_2b2[0] }; // sb_2_1b[], sb_2_2c[]
// vol_2b_wire1 = newreg; Volume(vol_2b_wire1) = { tmpb_2_1[] }; // tmpb_2_1b[1], tmpb_2_2c[1]
// vol_2b_wire2 = newreg; Volume(vol_2b_wire2) = { tmpb_2_2[] }; // tmpb_2_1b[1], tmpb_2_2c[1]
vol_2b_wire = newreg; Volume(vol_2b_wire) = sl_wire_exterior_surface_2b[];

physvol_2b_wire = newreg; Physical Volume(physvol_2b_wire) = vol_2b_wire;
// physvol_2b_wire1 = newreg; Physical Volume(physvol_2b_wire1) = vol_2b_wire1;
// physvol_2b_wire2 = newreg; Physical Volume(physvol_2b_wire2) = vol_2b_wire2;
physsurf_2b_wire = newreg; Physical Surface(physsurf_2b_wire) = { s_1_2b1[], sb_2_1[], sb_2_2[], s_1_2b2[] }; // sb_2_1b[], sb_2_2c[]

// Coherence;


// *******************************************
// Comparative IF Statement
// *******************************************

For q In {1:2}
  For r In {1:2}
    For s In {1:2}


// *******************************************
// Face physsurf_bdh_1_1 (Corner 1 - Corner 2)
// *******************************************

  If(q == 1 && r == 1) 

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


// *******************************************
// Face physsurf_bdh_1_2 (Corner 2 - Corner 3)
// *******************************************

  If(q == 1 && r == 2)

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


// *******************************************
// Face physsurf_bdh_2_1 (Corner 3 - Corner 4)
// *******************************************

  If(q == 2 && r == 1)

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


// *******************************************
// Face physsurf_bdh_2_2 (Corner 4 - Corner 1)
// *******************************************

  If(q == 2 && r == 2) 

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


// *******************************************
// Corner 1
// *******************************************
pc1_1 = newp; Point(pc1_1) = {geo_f_x*0+geo_f_x*m*a, geo_f_y*0+geo_f_y*n*a, tD/2,lcCopperPlateBdry};
// pc2_1 = newp; Point(pc2_1) = {geo_f_x*0+geo_f_x*m*a, geo_f_y*0+geo_f_y*n*a, -1*tD/2,lcCopperPlateBdry};
pc3_1 = newp; Point(pc3_1) = {geo_f_x*0+geo_f_x*m*a, geo_f_y*0+geo_f_y*n*a, (2*tC+tD)/2,lcCopperPlateBdry};
// pc4_1 = newp; Point(pc4_1) = {geo_f_x*0+geo_f_x*m*a, geo_f_y*0+geo_f_y*n*a, -1*(2*tC+tD)/2,lcCopperPlateBdry};

// *******************************************
// Corner 2
// *******************************************
pc1_2 = newp; Point(pc1_2) = {geo_f_x*a+geo_f_x*m*a, geo_f_y*0+geo_f_y*n*a, tD/2,lcCopperPlateBdry};
// pc2_2 = newp; Point(pc2_2) = {geo_f_x*a+geo_f_x*m*a, geo_f_y*0+geo_f_y*n*a, -1*tD/2,lcCopperPlateBdry};
pc3_2 = newp; Point(pc3_2) = {geo_f_x*a+geo_f_x*m*a, geo_f_y*0+geo_f_y*n*a, (2*tC+tD)/2,lcCopperPlateBdry};
// pc4_2 = newp; Point(pc4_2) = {geo_f_x*a+geo_f_x*m*a, geo_f_y*0+geo_f_y*n*a, -1*(2*tC+tD)/2,lcCopperPlateBdry};

// *******************************************
// Corner 3
// *******************************************
pc1_3 = newp; Point(pc1_3) = {geo_f_x*a+geo_f_x*m*a, geo_f_y*a+geo_f_y*n*a, tD/2,lcCopperPlateBdry};
// pc2_3 = newp; Point(pc2_3) = {geo_f_x*a+geo_f_x*m*a, geo_f_y*a+geo_f_y*n*a, -1*tD/2,lcCopperPlateBdry};
pc3_3 = newp; Point(pc3_3) = {geo_f_x*a+geo_f_x*m*a, geo_f_y*a+geo_f_y*n*a, (2*tC+tD)/2,lcCopperPlateBdry};
// pc4_3 = newp; Point(pc4_3) = {geo_f_x*a+geo_f_x*m*a, geo_f_y*a+geo_f_y*n*a, -1*(2*tC+tD)/2,lcCopperPlateBdry};

// *******************************************
// Corner 4
// *******************************************
pc1_4 = newp; Point(pc1_4) = {geo_f_x*0+geo_f_x*m*a, geo_f_y*a+geo_f_y*n*a, tD/2,lcCopperPlateBdry};
// pc2_4 = newp; Point(pc2_4) = {geo_f_x*0+geo_f_x*m*a, geo_f_y*a+geo_f_y*n*a, -1*tD/2,lcCopperPlateBdry};
pc3_4 = newp; Point(pc3_4) = {geo_f_x*0+geo_f_x*m*a, geo_f_y*a+geo_f_y*n*a, (2*tC+tD)/2,lcCopperPlateBdry};
// pc4_4 = newp; Point(pc4_4) = {geo_f_x*0+geo_f_x*m*a, geo_f_y*a+geo_f_y*n*a, -1*(2*tC+tD)/2,lcCopperPlateBdry};

// --------------------------------------------------------------------------

// *******************************************************************
// Copper planes
// *******************************************************************

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

/*
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
*/

/*
// Lines splitting the LEM in half
lmid1_1 = newl; Line(lmid1_1) = {ptmc_1, ptmd_1};
lmid1_2 = newl; Line(lmid1_2) = {ptmd_1, pbmd_1};
lmid1_3 = newl; Line(lmid1_3) = {pbmd_1, pbmc_1};
*/

/*
lmid2_1 = newl; Line(lmid2_1) = {ptmc_2, ptmd_2};
lmid2_2 = newl; Line(lmid2_2) = {ptmd_2, pbmd_2};
lmid2_3 = newl; Line(lmid2_3) = {pbmd_2, pbmc_2};
*/

/*
lmid3_1 = newl; Line(lmid3_1) = {ptmc_3, ptmd_3};
lmid3_2 = newl; Line(lmid3_2) = {ptmd_3, pbmd_3};
lmid3_3 = newl; Line(lmid3_3) = {pbmd_3, pbmc_3};
*/

/*
lmid4_1 = newl; Line(lmid4_1) = {ptmc_4, ptmd_4};
lmid4_2 = newl; Line(lmid4_2) = {ptmd_4, pbmd_4};
lmid4_3 = newl; Line(lmid4_3) = {pbmd_4, pbmc_4};
*/


// **********************************************************
// External Electrodes
// **********************************************************

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


// *************************************************************
// Define surfaces
// *************************************************************

// Copper plate surfaces

llcp_up_border1 = newreg; Line Loop(llcp_up_border1) = {lcptib9, lcptlb5a, lcptlb5b, -lcptib10, -lcptub1a, -lcptub1b};
pscp_up_border1 = newreg; Plane Surface(pscp_up_border1) = {llcp_up_border1};
llcp_up_border2 = newreg; Line Loop(llcp_up_border2) = {lcptib10, lcptlb6a, lcptlb6b, -lcptib11, -lcptub2a, -lcptub2b};
pscp_up_border2 = newreg; Plane Surface(pscp_up_border2) = {llcp_up_border2};
llcp_up_border3 = newreg; Line Loop(llcp_up_border3) = {lcptib11, lcptlb7a, lcptlb7b, -lcptib12, -lcptub3a, -lcptub3b};
pscp_up_border3 = newreg; Plane Surface(pscp_up_border3) = {llcp_up_border3};
llcp_up_border4 = newreg; Line Loop(llcp_up_border4) = {lcptib12, lcptlb8a, lcptlb8b, -lcptib9, -lcptub4a, -lcptub4b};
pscp_up_border4 = newreg; Plane Surface(pscp_up_border4) = {llcp_up_border4};

// llcp_low_border1 = newreg; Line Loop(llcp_low_border1) = {lcpbib9, lcpblb5a, lcpblb5b, -lcpbib10, -lcpbub1a, -lcpbub1b};
// pscp_low_border1 = newreg; Plane Surface(pscp_low_border1) = {llcp_low_border1};
// llcp_low_border2 = newreg; Line Loop(llcp_low_border2) = {lcpbib10, lcpblb6a, lcpblb6b, -lcpbib11, -lcpbub2a, -lcpbub2b};
// pscp_low_border2 = newreg; Plane Surface(pscp_low_border2) = {llcp_low_border2};
// llcp_low_border3 = newreg; Line Loop(llcp_low_border3) = {lcpbib11, lcpblb7a, lcpblb7b, -lcpbib12, -lcpbub3a, -lcpbub3b};
// pscp_low_border3 = newreg; Plane Surface(pscp_low_border3) = {llcp_low_border3};
// llcp_low_border4 = newreg; Line Loop(llcp_low_border4) = {lcpbib12, lcpblb8a, lcpblb8b, -lcpbib9, -lcpbub4a, -lcpbub4b};
// pscp_low_border4 = newreg; Plane Surface(pscp_low_border4) = {llcp_low_border4};

llcp_face1 = newreg; Line Loop(llcp_face1) = {lcptub1a, lcptub1b, lcptub2a, lcptub2b, lcptub3a, lcptub3b, lcptub4a, lcptub4b};
pscp_face1 = newreg; Plane Surface(pscp_face1) = {llcp_face1};

// llcp_face3 = newreg; Line Loop(llcp_face3) = {lcpbub1a, lcpbub1b, lcpbub2a, lcpbub2b, lcpbub3a, lcpbub3b, lcpbub4a, lcpbub4b};
// pscp_face2 = newreg; Plane Surface(pscp_face2) = {llcp_face3};

// Gas & Dielectric surfaces

ll_top_gas1 = newreg; Line Loop(ll_top_gas1) = {lcptlb5a, lcptlb5b, lcptlb6a, lcptlb6b, lcptlb7a, lcptlb7b, lcptlb8a, lcptlb8b};
ps_top_gas = newreg; Plane Surface(ps_top_gas) = {ll_top_gas1};

// ll_bottom_gas1 = newreg; Line Loop(ll_bottom_gas1) = {lcpblb5a, lcpblb5b, lcpblb6a, lcpblb6b, lcpblb7a, lcpblb7b, lcpblb8a, lcpblb8b};
// ps_bottom_gas = newreg; Plane Surface(ps_bottom_gas) = {ll_bottom_gas1};

// ll_side_gas1a = newreg; Line Loop(ll_side_gas1a) = {lcptlb5a, lmid1_2, -lcpblb5a, -lcorner1};
// ps_side_gas1a = newreg; Plane Surface(ps_side_gas1a) = {ll_side_gas1a};

// ll_side_gas2a = newreg; Line Loop(ll_side_gas2a) = {lcptlb6a, lmid2_2, -lcpblb6a,  -lcorner2};
// ps_side_gas2a = newreg; Plane Surface(ps_side_gas2a) = {ll_side_gas2a};

// ll_side_gas3a = newreg; Line Loop(ll_side_gas3a) = {lcptlb7a, lmid3_2, -lcpblb7a, -lcorner3};
// ps_side_gas3a = newreg; Plane Surface(ps_side_gas3a) = {ll_side_gas3a};

// ll_side_gas4a = newreg; Line Loop(ll_side_gas4a) = {lcptlb8a, lmid4_2, -lcpblb8a, -lcorner4};
// ps_side_gas4a = newreg; Plane Surface(ps_side_gas4a) = {ll_side_gas4a};

// ll_side_gas1b = newreg; Line Loop(ll_side_gas1b) = {lcptlb5b, lcorner2, -lcpblb5b, -lmid1_2};
// ps_side_gas1b = newreg; Plane Surface(ps_side_gas1b) = {ll_side_gas1b};

// ll_side_gas2b = newreg; Line Loop(ll_side_gas2b) = {lcptlb6b, lcorner3, -lcpblb6b, -lmid2_2};
// ps_side_gas2b = newreg; Plane Surface(ps_side_gas2b) = {ll_side_gas2b};

// ll_side_gas3b = newreg; Line Loop(ll_side_gas3b) = {lcptlb7b, lcorner4, -lcpblb7b, -lmid3_2};
// ps_side_gas3b = newreg; Plane Surface(ps_side_gas3b) = {ll_side_gas3b};

// ll_side_gas4b = newreg; Line Loop(ll_side_gas4b) = {lcptlb8b, lcorner1, -lcpblb8b, -lmid4_2};
// ps_side_gas4b = newreg; Plane Surface(ps_side_gas4b) = {ll_side_gas4b};

// Coherence;

// Bounding and intersecting surfaces


/*
//----------------------------------------------------------
// Top electrode

pexet1 = newp; Point(pexet1) = {geo_f_x*0+geo_f_x*m_1*a, geo_f_y*0+geo_f_y*n_1*a, tutC+lE,lcExtElectrodeBdry};
// pexet2 = newp; Point(pexet2) = {geo_f_x*a/2+geo_f_x*m_1*a, geo_f_y*0+geo_f_y*n_1*a, tutC+lE,lcExtElectrodeBdry};
pexet3 = newp; Point(pexet3) = {geo_f_x*a+geo_f_x*m_1*a, geo_f_y*0+geo_f_y*n_1*a, tutC+lE,lcExtElectrodeBdry};
pexet4 = newp; Point(pexet4) = {geo_f_x*a+geo_f_x*m_1*a, geo_f_y*a+geo_f_y*n_1*a, tutC+lE,lcExtElectrodeBdry};
// pexet5 = newp; Point(pexet5) = {geo_f_x*a/2+geo_f_x*m_1*a, geo_f_y*a+geo_f_y*n_1*a, tutC+lE,lcExtElectrodeBdry};
pexet6 = newp; Point(pexet6) = {geo_f_x*0+geo_f_x*m_1*a, geo_f_y*a+geo_f_y*n_1*a, tutC+lE,lcExtElectrodeBdry};

//----------------------------------------------------------
// Top electrode lines

lexet1 = newl; Line(lexet1) = {pexet1, pexet3};
// Transfinite Line { lexet1 } = lexet1;
// lexet2 = newl; Line(lexet2) = {pexet2, pexet3};
// Transfinite Line { lexet2 } = lexet2;
lexet3 = newl; Line(lexet3) = {pexet3, pexet4};
// Transfinite Line { lexet3 } = lexet3;
lexet4 = newl; Line(lexet4) = {pexet4, pexet6};
// Transfinite Line { lexet4 } = lexet4;
// lexet5 = newl; Line(lexet5) = {pexet5, pexet6};
// Transfinite Line { lexet5 } = lexet5;
lexet6 = newl; Line(lexet6) = {pexet6, pexet1};
// Transfinite Line { lexet6 } = lexet6;

//----------------------------------------------------------
// Upper electrode boundary - transfinite

// lexett1 = newl; Line(lexett1) = {pexet1, pexet3};
// Transfinite Line { lexett1 } = lexett1; 
// lexett2 = newl; Line(lexett2) = {pexet3, pexet4};
// Transfinite Line { lexett2 } = lexett2;
// lexett3 = newl; Line(lexett3) = {pexet4, pexet6};
// Transfinite Line { lexett3 } = lexett3;
// lexett4 = newl; Line(lexett4) = {pexet6, pexet1};
// Transfinite Line { lexett4 } = lexett4;

//----------------------------------------------------------
// Connect the top electrode to the LEM.

lexetc1 = newl; Line(lexetc1) = {pexet1, pc2_1}; // pc4_1
// Transfinite Line { lexetc1 } = lexetc1;
// lexetc2 = newl; Line(lexetc2) = {pexet2, ptmc_1};
// Transfinite Line { lexetc2 } = lexetc2;
lexetc3 = newl; Line(lexetc3) = {pexet3, pc2_2}; // pc4_2
// Transfinite Line { lexetc3 } = lexetc3;
lexetc4 = newl; Line(lexetc4) = {pexet4, pc2_3}; // pc4_3
// Transfinite Line { lexetc4 } = lexetc4;
// lexetc5 = newl; Line(lexetc5) = {pexet5, ptmc_3};
// Transfinite Line { lexetc5 } = lexetc5;
lexetc6 = newl; Line(lexetc6) = {pexet6, pc2_4}; // pc4_4
// Transfinite Line { lexetc6 } = lexetc6;

//----------------------------------------------------------
// Bottom electrode

// pexeb1 = newp; Point(pexeb1) = {geo_f_x*0+geo_f_x*m_1*a, geo_f_y*0+geo_f_y*n_1*a, mesh_level * mm,lcExtElectrodeBdry};
// pexeb2 = newp; Point(pexeb2) = {geo_f_x*a/2+geo_f_x*m_1*a, geo_f_y*0+geo_f_y*n_1*a, mesh_level * mm,lcExtElectrodeBdry};
// pexeb3 = newp; Point(pexeb3) = {geo_f_x*a+geo_f_x*m_1*a, geo_f_y*0+geo_f_y*n_1*a, mesh_level * mm,lcExtElectrodeBdry};
// pexeb4 = newp; Point(pexeb4) = {geo_f_x*a+geo_f_x*m_1*a, geo_f_y*a+geo_f_y*n_1*a, mesh_level * mm,lcExtElectrodeBdry};
// pexeb5 = newp; Point(pexeb5) = {geo_f_x*a/2+geo_f_x*m_1*a, geo_f_y*a+geo_f_y*n_1*a, mesh_level * mm,lcExtElectrodeBdry};
// pexeb6 = newp; Point(pexeb6) = {geo_f_x*0+geo_f_x*m_1*a, geo_f_y*a+geo_f_y*n_1*a, mesh_level * mm,lcExtElectrodeBdry};

//----------------------------------------------------------
// Bottom wire level boundary - transfinite

// lexebt1 = newl; Line(lexebt1) = {pexeb1, pexeb3};
// Transfinite Line { lexebt1 } = lexebt1;
// lexebt2 = newl; Line(lexebt2) = {pexeb3, pexeb4};
// Transfinite Line { lexebt2 } = lexebt2;
// lexebt3 = newl; Line(lexebt3) = {pexeb4, pexeb6};
// Transfinite Line { lexebt3 } = lexebt3;
// lexebt4 = newl; Line(lexebt4) = {pexeb6, pexeb1};
// Transfinite Line { lexebt4 } = lexebt4;

//----------------------------------------------------------
// Copper plate surfaces

llcp_up_border1 = newreg; Line Loop(llcp_up_border1) = {lcptlb5a, -lcptib10, -lcptub1a, lcptib9}; // lcptlb5b, -lcptub1b
pscp_up_border1 = newreg; Plane Surface(pscp_up_border1) = {llcp_up_border1};
// Transfinite Surface { pscp_up_border1 };
// Recombine Surface { pscp_up_border1 };

llcp_up_border2 = newreg; Line Loop(llcp_up_border2) = {lcptlb6a, -lcptib11, -lcptub2a, lcptib10}; // lcptlb6b, -lcptub2b
pscp_up_border2 = newreg; Plane Surface(pscp_up_border2) = {llcp_up_border2};
// Transfinite Surface { pscp_up_border2 };
// Recombine Surface { pscp_up_border2 };

llcp_up_border3 = newreg; Line Loop(llcp_up_border3) = {lcptlb7a, -lcptib12, -lcptub3a, lcptib11}; // lcptlb7b, -lcptub3b
pscp_up_border3 = newreg; Plane Surface(pscp_up_border3) = {llcp_up_border3};
// Transfinite Surface { pscp_up_border3 };
// Recombine Surface { pscp_up_border3 };

llcp_up_border4 = newreg; Line Loop(llcp_up_border4) = {lcptlb8a, -lcptib9, -lcptub4a, lcptib12}; // lcptlb8b, -lcptub4b
pscp_up_border4 = newreg; Plane Surface(pscp_up_border4) = {llcp_up_border4};
// Transfinite Surface { pscp_up_border4 };
// Recombine Surface { pscp_up_border4 };

// llcp_low_border1 = newreg; Line Loop(llcp_low_border1) = {lcpblb5a, -lcpbib10, -lcpbub1a, lcpbib9}; // lcpblb5b,  -lcpbub1b
// pscp_low_border1 = newreg; Plane Surface(pscp_low_border1) = {llcp_low_border1};
// Transfinite Surface { pscp_low_border1 };
// Recombine Surface { pscp_low_border1 };

// llcp_low_border2 = newreg; Line Loop(llcp_low_border2) = {lcpblb6a, -lcpbib11, -lcpbub2a, lcpbib10}; // lcpblb6b, -lcpbub2b  
// pscp_low_border2 = newreg; Plane Surface(pscp_low_border2) = {llcp_low_border2};
// Transfinite Surface { pscp_low_border2 };
// Recombine Surface { pscp_low_border2 };

// llcp_low_border3 = newreg; Line Loop(llcp_low_border3) = {lcpblb7a, -lcpbib12, -lcpbub3a, lcpbib11}; // lcpblb7b, -lcpbub3b
// pscp_low_border3 = newreg; Plane Surface(pscp_low_border3) = {llcp_low_border3};
// Transfinite Surface { pscp_low_border3 };
// Recombine Surface { pscp_low_border3 };

// llcp_low_border4 = newreg; Line Loop(llcp_low_border4) = {lcpblb8a, -lcpbib9, -lcpbub4a, lcpbib12}; // lcpblb8b,  -lcpbub4b
// pscp_low_border4 = newreg; Plane Surface(pscp_low_border4) = {llcp_low_border4};
// Transfinite Surface { pscp_low_border4 };
// Recombine Surface { pscp_low_border4 };

// llcp_face1 = newreg; Line Loop(llcp_face1) = {lcptub1a, lcptub2a, lcptub3a, lcptub4a}; // lcptub1b, lcptub2b, lcptub3b, lcptub4b 
// llcp_face3 = newreg; Line Loop(llcp_face3) = {lcpbub1a, lcpbub2a, lcpbub3a, lcpbub4a}; // lcpbub1b, lcpbub2b, lcpbub3b, lcpbub4b

//----------------------------------------------------------
// Copper plate surfaces

// ll_side_gas1a = newreg; Line Loop(ll_side_gas1a) = {lcptlb5a, -lcorner2, -lcpbub1a, lcorner1}; // lmid1_2,
// ps_side_gas1a = newreg; Plane Surface(ps_side_gas1a) = {ll_side_gas1a};
// Transfinite Surface { ps_side_gas1a };
// Recombine Surface { ps_side_gas1a };

// ll_side_gas2a = newreg; Line Loop(ll_side_gas2a) = {lcptlb6a, -lcorner3, -lcpbub2a, lcorner2}; // lmid2_2,
// ps_side_gas2a = newreg; Plane Surface(ps_side_gas2a) = {ll_side_gas2a};
// Transfinite Surface { ps_side_gas2a };
// Recombine Surface { ps_side_gas2a };

// ll_side_gas3a = newreg; Line Loop(ll_side_gas3a) = {lcptlb7a, -lcorner4, -lcpbub3a, lcorner3}; // lmid3_2,
// ps_side_gas3a = newreg; Plane Surface(ps_side_gas3a) = {ll_side_gas3a};
// Transfinite Surface { ps_side_gas3a };
// Recombine Surface { ps_side_gas3a };

// ll_side_gas4a = newreg; Line Loop(ll_side_gas4a) = {lcptlb8a, -lcorner1, -lcpbub4a, lcorner4}; // lmid4_2,
// ps_side_gas4a = newreg; Plane Surface(ps_side_gas4a) = {ll_side_gas4a};
// Transfinite Surface { ps_side_gas4a };
// Recombine Surface { ps_side_gas4a };

// ll_side_gas1b = newreg; Line Loop(ll_side_gas1b) = {lcptlb5b, lcorner2, -lcpblb5b, lcorner1}; // -lmid1_2
// ps_side_gas1b = newreg; Plane Surface(ps_side_gas1b) = {ll_side_gas1b};
// ll_side_gas2b = newreg; Line Loop(ll_side_gas2b) = {lcptlb6b, lcorner3, -lcpblb6b, lcorner2}; // -lmid2_2
// ps_side_gas2b = newreg; Plane Surface(ps_side_gas2b) = {ll_side_gas2b};
// ll_side_gas3b = newreg; Line Loop(ll_side_gas3b) = {lcptlb7b, lcorner4, -lcpblb7b, lcorner3}; // -lmid3_2
// ps_side_gas3b = newreg; Plane Surface(ps_side_gas3b) = {ll_side_gas3b};
// ll_side_gas4b = newreg; Line Loop(ll_side_gas4b) = {lcptlb8b, lcorner1, -lcpblb8b, lcorner4}; // -lmid4_2
// ps_side_gas4b = newreg; Plane Surface(ps_side_gas4b) = {ll_side_gas4b};
*/

/*
//----------------------------------------------------------
// Bounding and intersecting surfaces

//----------------------------------------------------------
// Face physsurf_bdh_1_1 (Corner 1 - Corner 2)

l1bdh_1_1_bsurft1 = newl; Line(l1bdh_1_1_bsurft1) = {pexet3, pbdhbt_1_1_2[1]};
l2bdh_1_1_bsurft1 = newl; Line(l2bdh_1_1_bsurft1) = {pexet1, p2b_1_1};
l1bdh_1_1_bsurfb1 = newl; Line(l1bdh_1_1_bsurfb1) = {pc2_2, pbdhab_1_2_2[1]};
l2bdh_1_1_bsurfb1 = newl; Line(l2bdh_1_1_bsurfb1) = {pc2_1, p1b_1_1};

llbdh_1_1_bsurf1t = newreg; Line Loop(llbdh_1_1_bsurf1t) = {lexet1, l1bdh_1_1_bsurft1,  -l2_2b, -l1_2b, -ll_bdhbt_1_1_1[0], -ll_bdhbt_1_1_2[0], -l2bdh_1_1_bsurft1};
llbdh_1_1_bsurf1b = newreg; Line Loop(llbdh_1_1_bsurf1b) = {lcpbub1a, l1bdh_1_1_bsurfb1, ll_bdhac0_1_2_2[0], ll_bdhac1_1_2_2[0], -ll_bdhbb_1_1_1[0], -ll_bdhbb_1_1_2[0], -l2bdh_1_1_bsurfb1};

psbdh_1_1_bsurf1t = newreg; Plane Surface(psbdh_1_1_bsurf1t) = {llbdh_1_1_bsurf1t};
psbdh_1_1_bsurf1b = newreg; Plane Surface(psbdh_1_1_bsurf1b) = {llbdh_1_1_bsurf1b};

//----------------------------------------------------------
// Face physsurf_bdh_1_2 (Corner 2 - Corner 3)

l1bdh_1_2_bsurft1 = newl; Line(l1bdh_1_2_bsurft1) = {pexet4, p2a_1_1};
l1bdh_1_2_bsurfb1 = newl; Line(l1bdh_1_2_bsurfb1) = {pc2_3, p1a_1_1};

llbdh_1_2_bsurf3t = newreg; Line Loop(llbdh_1_2_bsurf3t) = {lexet3, l1bdh_1_2_bsurft1, ll_bdhat_1_2_2[0], ll_bdhat_1_2_1[0], ll_bdhbc0_1_1_2[0], ll_bdhbc1_1_1_2[0], -l1bdh_1_1_bsurft1};
llbdh_1_2_bsurf3b = newreg; Line Loop(llbdh_1_2_bsurf3b) = {lcpbub2a, l1bdh_1_2_bsurfb1, -l4_1a, -l3_1a, ll_bdhab_1_2_2[0], ll_bdhab_1_2_1[0], -l1bdh_1_1_bsurfb1};

psbdh_1_2_bsurf3t = newreg; Plane Surface(psbdh_1_2_bsurf3t) = {llbdh_1_2_bsurf3t};
psbdh_1_2_bsurf3b = newreg; Plane Surface(psbdh_1_2_bsurf3b) = {llbdh_1_2_bsurf3b};

//----------------------------------------------------------
// Face physsurf_bdh_2_1 (Corner 3 - Corner 4)

l1bdh_2_1_bsurft4 = newl; Line(l1bdh_2_1_bsurft4) = {pexet6, pbdhat_2_1_2[1]};
l1bdh_2_1_bsurfb4 = newl; Line(l1bdh_2_1_bsurfb4) = {pc2_4, pbdhbb_2_2_2[1]};

llbdh_2_1_bsurf4t = newreg; Line Loop(llbdh_2_1_bsurf4t) = {lexet4, l1bdh_2_1_bsurft4, -ll_bdhat_2_1_1[0], -ll_bdhat_2_1_2[0], l3_2a, l4_2a, -l1bdh_1_2_bsurft1};
llbdh_2_1_bsurf4b = newreg; Line Loop(llbdh_2_1_bsurf4b) = {lcpbub3a, l1bdh_2_1_bsurfb4, -ll_bdhbc1_2_2_2[0], -ll_bdhbc0_2_2_2[0], -ll_bdhab_2_1_1[0], -ll_bdhab_2_1_2[0], -l1bdh_1_2_bsurfb1}; 

psbdh_2_1_bsurf4t = newreg; Plane Surface(psbdh_2_1_bsurf4t) = {llbdh_2_1_bsurf4t};
psbdh_2_1_bsurf4b = newreg; Plane Surface(psbdh_2_1_bsurf4b) = {llbdh_2_1_bsurf4b};

//----------------------------------------------------------
// Face physsurf_bdh_2_2 (Corner 4 - Corner 1)

llbdh_2_2_bsurf6t = newreg; Line Loop(llbdh_2_2_bsurf6t) = {lexet6, l2bdh_1_1_bsurft1, ll_bdhbt_2_2_2[0], ll_bdhbt_2_2_1[0], -ll_bdhac1_2_1_2[0], -ll_bdhac0_2_1_2[0], -l1bdh_2_1_bsurft4};
llbdh_2_2_bsurf6b = newreg; Line Loop(llbdh_2_2_bsurf6b) = {lcpbub4a, l2bdh_1_1_bsurfb1, l1_1b, l2_1b, ll_bdhbb_2_2_2[0], ll_bdhbb_2_2_1[0], -l1bdh_2_1_bsurfb4};

psbdh_2_2_bsurf6t = newreg; Plane Surface(psbdh_2_2_bsurf6t) = {llbdh_2_2_bsurf6t};
psbdh_2_2_bsurf6b = newreg; Plane Surface(psbdh_2_2_bsurf6b) = {llbdh_2_2_bsurf6b};

//----------------------------------------------------------
// Bounding surfaces

ll_bsurf7 = newreg; Line Loop(ll_bsurf7) = {lexet1, lexet3, lexet4, lexet6}; // lexet2, lexet5,
ps_bsurf7 = newreg; Plane Surface( ps_bsurf7 ) = { ll_bsurf7 };
// Transfinite Surface { ps_bsurf7 };
// Recombine Surface { ps_bsurf7 };

ll_top_cp1a2 = newreg; Line Loop(ll_top_cp1a2) = {lcpbub1a, lcpbub2a, lcpbub3a, lcpbub4a}; // lcpbub1b, lcpbub2b, lcpbub3b, lcpbub4b

ps_top_cp2a = news; Plane Surface(news) = {ll_top_cp1a2}; // ll_top_cp2a
surf_top_cp[] += {ps_top_cp2a};
// Transfinite Surface { surf_top_cp[] };
// Recombine Surface { surf_top_cp[] };

// ps_bottom_dielectric1a1 = news; Plane Surface(news) = {ll_bottom_cp2a};
// surf_bottom_dielectric[] = {ps_bottom_dielectric1a1};
// Transfinite Surface { surf_bottom_dielectric[] };
// Recombine Surface { surf_bottom_dielectric[] };

ll_bottom_cp1a2 = newreg; Line Loop(ll_bottom_cp1a2) = {lcpblb5a, lcpblb6a, lcpblb7a, lcpblb8a}; // lcpblb5b, lcpblb6b, lcpblb7b, lcpblb8b
ps_bottom_cp2a = news; Plane Surface(news) = {ll_bottom_cp1a2}; // ll_bottom_cp2a
surf_bottom_cp[] += {ps_bottom_cp2a};
// Transfinite Surface { surf_bottom_cp[] };
// Recombine Surface { surf_bottom_cp[] };
*/


// *******************************************
// Face physsurf_bdh_1_1
// *******************************************

// Face physsurf_bdh_1_1

l1bdh_1_1_bsurft1 = newl; Line(l1bdh_1_1_bsurft1) = {pexet3, pbdhat_1_2_2[1]};
l2bdh_1_1_bsurft1 = newl; Line(l2bdh_1_1_bsurft1) = {pexet1, p2b_1_1};
l1bdh_1_1_bsurfb1 = newl; Line(l1bdh_1_1_bsurfb1) = {pc3_2, pbdhbb_1_1_2[1]};
l2bdh_1_1_bsurfb1 = newl; Line(l2bdh_1_1_bsurfb1) = {pc3_1, p1b_1_1};

llbdh_1_1_bsurf1t = newreg; Line Loop(llbdh_1_1_bsurf1t) = {lexet1, lexet2, l1bdh_1_1_bsurft1, -ll_bdhac1_1_2_2[0], -ll_bdhac0_1_2_2[0], -ll_bdhbt_1_1_2[0], -ll_bdhbt_1_1_1[0], -l2_2b, -l1_2b, -l2bdh_1_1_bsurft1};
llbdh_1_1_bsurf1b = newreg; Line Loop(llbdh_1_1_bsurf1b) = {lcptub1a, lcptub1b, l1bdh_1_1_bsurfb1, -ll_bdhbb_1_1_2[0], -ll_bdhbb_1_1_1[0], -l2bdh_1_1_bsurfb1};

psbdh_1_1_bsurf1t = newreg; Plane Surface(psbdh_1_1_bsurf1t) = {llbdh_1_1_bsurf1t};
psbdh_1_1_bsurf1b = newreg; Plane Surface(psbdh_1_1_bsurf1b) = {llbdh_1_1_bsurf1b};


// *******************************************
// Face physsurf_bdh_1_2
// *******************************************

// Face physsurf_bdh_1_2 (Corner 2 - Corner 3)

l1bdh_1_2_bsurft1 = newl; Line(l1bdh_1_2_bsurft1) = {pexet4, p2a_1_1};
l1bdh_1_2_bsurfb1 = newl; Line(l1bdh_1_2_bsurfb1) = {pc3_3, p1a_1_1};

llbdh_1_2_bsurf3t = newreg; Line Loop(llbdh_1_2_bsurf3t) = {lexet3, l1bdh_1_2_bsurft1, ll_bdhat_1_2_1[0], ll_bdhat_1_2_2[0], -l1bdh_1_1_bsurft1};
llbdh_1_2_bsurf3b = newreg; Line Loop(llbdh_1_2_bsurf3b) = {-lcptub2b, -lcptub2a, l1bdh_1_1_bsurfb1, ll_bdhbc0_1_1_2[0], ll_bdhbc1_1_1_2[0], -ll_bdhab_1_2_2[0], -ll_bdhab_1_2_1[0], l3_1a, l4_1a, -l1bdh_1_2_bsurfb1};

psbdh_1_2_bsurf3t = newreg; Plane Surface(psbdh_1_2_bsurf3t) = {llbdh_1_2_bsurf3t};
psbdh_1_2_bsurf3b = newreg; Plane Surface(psbdh_1_2_bsurf3b) = {llbdh_1_2_bsurf3b};


// *******************************************
// Face physsurf_bdh_2_1
// *******************************************

// Face physsurf_bdh_2_1

l1bdh_2_1_bsurft4 = newl; Line(l1bdh_2_1_bsurft4) = {pexet6, pbdhbt_2_2_2[1]};
l1bdh_2_1_bsurfb4 = newl; Line(l1bdh_2_1_bsurfb4) = {pc3_4, pbdha1_2_1_2[0]};

llbdh_2_1_bsurf4t = newreg; Line Loop(llbdh_2_1_bsurf4t) = {lexet4, lexet5, l1bdh_2_1_bsurft4, ll_bdhbc0_2_2_2[0], ll_bdhbc1_2_2_2[0], -ll_bdhat_2_1_2[0], -ll_bdhat_2_1_1[0], l3_2a, l4_2a, -l1bdh_1_2_bsurft1};
llbdh_2_1_bsurf4b = newreg; Line Loop(llbdh_2_1_bsurf4b) = {lcptub3a, lcptub3b, l1bdh_2_1_bsurfb4, -ll_bdhab_2_1_2[0], -ll_bdhab_2_1_1[0], -l1bdh_1_2_bsurfb1};

psbdh_2_1_bsurf4t = newreg; Plane Surface(psbdh_2_1_bsurf4t) = {llbdh_2_1_bsurf4t};
psbdh_2_1_bsurf4b = newreg; Plane Surface(psbdh_2_1_bsurf4b) = {llbdh_2_1_bsurf4b};


// *******************************************
// Face physsurf_bdh_2_2
// *******************************************

// Face physsurf_bdh_2_2

llbdh_2_2_bsurf6t = newreg; Line Loop(llbdh_2_2_bsurf6t) = {lexet6, l2bdh_1_1_bsurft1, ll_bdhbt_2_2_2[0], ll_bdhbt_2_2_1[0], -l1bdh_2_1_bsurft4};
llbdh_2_2_bsurf6b = newreg; Line Loop(llbdh_2_2_bsurf6b) = {lcptub4a, lcptub4b, l2bdh_1_1_bsurfb1, l1_1b, l2_1b, ll_bdhbb_2_2_1[0], ll_bdhbb_2_2_2[0], ll_bdhac0_2_1_2[0], ll_bdhac1_2_1_2[0], -l1bdh_2_1_bsurfb4};

psbdh_2_2_bsurf6t = newreg; Plane Surface(psbdh_2_2_bsurf6t) = {llbdh_2_2_bsurf6t};
psbdh_2_2_bsurf6b = newreg; Plane Surface(psbdh_2_2_bsurf6b) = {llbdh_2_2_bsurf6b};



// Bounding surfaces


ll_bsurf7 = newreg; Line Loop(ll_bsurf7) = {lexet1, lexet2, lexet3, lexet4, lexet5, lexet6};
ps_bsurf7 = newreg; Plane Surface(ps_bsurf7) = {ll_bsurf7};

// Volumes
sl_gas = newreg; Surface Loop(sl_gas) = { psbdh_1_1_bsurf1t, psbdh_1_1_bsurf1b, psbdh_1_2_bsurf3t, psbdh_1_2_bsurf3b, psbdh_2_1_bsurf4t, psbdh_2_1_bsurf4b, psbdh_2_2_bsurf6t, psbdh_2_2_bsurf6b, ps_bsurf7, pscp_face1, -sa_1_1[0], -sa_1_1[1], -sa_1_2[0], -sa_1_2[1], -sb_1_1[0], -sb_1_1[1], -sb_1_2[0], -sb_1_2[1], -sa_2_1[0], -sa_2_1[1], -sa_2_2[0], -sa_2_2[1], -sb_2_1[0], -sb_2_1[1], -sb_2_2[0], -sb_2_2[1]};
vol_gas = newreg; Volume(vol_gas) = {sl_gas};

sl_lower_cp = newreg; Surface Loop(sl_lower_cp) = {ps_top_gas, pscp_up_border1, pscp_up_border2, pscp_up_border3, pscp_up_border4, pscp_face1};
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
physsurf_gas = newreg; Physical Surface(physsurf_gas) = { psbdh_1_1_bsurf1t, psbdh_1_1_bsurf1b, psbdh_1_2_bsurf3t, psbdh_1_2_bsurf3b, psbdh_2_1_bsurf4t, psbdh_2_1_bsurf4b, psbdh_2_2_bsurf6t, psbdh_2_2_bsurf6b, ps_bsurf7, pscp_up_border1, pscp_up_border2, pscp_up_border3, pscp_up_border4, pscp_face1, -sa_1_1[0], -sa_1_1[1], -sa_1_2[0], -sa_1_2[1], -sb_1_1[0], -sb_1_1[1], -sb_1_2[0], -sb_1_2[1], -sa_2_1[0], -sa_2_1[1], -sa_2_2[0], -sa_2_2[1], -sb_2_1[0], -sb_2_1[1], -sb_2_2[0], -sb_2_2[1]};

// ps_side_gas1a, ps_side_gas2a, ps_side_gas3a, ps_side_gas4a, ps_side_gas1b, ps_side_gas2b, ps_side_gas3b, ps_side_gas4b

// Recombine Surface{physsurf_gas};

// Surfaces to which voltages will be applied
// Bounding surface 2
physsurf_lower_cp = newreg; Physical Surface(physsurf_lower_cp) = {ps_top_gas, pscp_up_border1, pscp_up_border2, pscp_up_border3, pscp_up_border4, pscp_face1}; // pscp_low_border1, pscp_low_border2, pscp_low_border3, pscp_low_border4, ps_bottom_gas

// Recombine Surface{physsurf_lower_cp};

// Bounding surface 3
physsurf_wire = newreg; Physical Surface(physsurf_wire) = {s_1_2b, sb_1_1[2], sb_1_2[2], tmpa_2_2[0], s_1_1a, sa_2_1[2], sa_2_2[2], tmpb_1_2[0], s_1_2a, sa_1_1[2], sa_1_2[2], tmpb_2_2[0], s_1_1b, sb_2_1[2], sb_2_2[2], tmpa_1_2[0], sa_1_1[0], sa_1_1[1], sa_1_2[0], sa_1_2[1], sb_1_1[0], sb_1_1[1], sb_1_2[0], sb_1_2[1], sa_2_1[0], sa_2_1[1], sa_2_2[0], sa_2_2[1], sb_2_1[0], sb_2_1[1], sb_2_2[0], sb_2_2[1]};

// Recombine Surface{physsurf_wire};

// Bounding surface 4
physsurf_upper_el = newreg; Physical Surface(physsurf_upper_el) = {ps_bsurf7};

// Recombine Surface{physsurf_gas};


// Surfaces for periodic boundary conditions


// Bounding surface 5
physsurf_bdh_1_1 = newreg; Physical Surface(physsurf_bdh_1_1) = {pscp_up_border1, psbdh_1_1_bsurf1t, psbdh_1_1_bsurf1b}; // ps_side_gas1a, ps_side_gas1b

// Bounding surface 6
physsurf_bdh_1_2 = newreg; Physical Surface(physsurf_bdh_1_2) = {pscp_up_border2, psbdh_1_2_bsurf3t, psbdh_1_2_bsurf3b}; // ps_side_gas2a, ps_side_gas2b

// Bounding surface 7
physsurf_bdh_2_1 = newreg; Physical Surface(physsurf_bdh_2_1) = {pscp_up_border3, psbdh_2_1_bsurf4t, psbdh_2_1_bsurf4b}; // ps_side_gas3a, ps_side_gas3b

// Bounding surface 8
physsurf_bdh_2_2 = newreg; Physical Surface(physsurf_bdh_2_2) = {pscp_up_border4, psbdh_2_2_bsurf6t, psbdh_2_2_bsurf6b}; // ps_side_gas4a, ps_side_gas4b


// pscp_low_border1, pscp_low_border2, pscp_low_border3, pscp_low_border4, pscp_face1, ps_top_gas, ps_side_gas1a, ps_side_gas2a, ps_side_gas3a, ps_side_gas4a, ps_side_gas1b, ps_side_gas2b, ps_side_gas3b, ps_side_gas4b
// ps_side_gas1a, ps_side_gas2a, ps_side_gas3a, ps_side_gas4a, ps_side_gas1b, ps_side_gas2b, ps_side_gas3b, ps_side_gas4b


/*
//----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
// EXTERNAL ELECTRODES

//----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
//// FINAL DEFINITIONS (SURFACES / VOLUMES)

//------------------------------------------------------------------------------------------
/// SURFACE LOOPS

//----------------------------------------------------------
// Wire Gas Interior Surface Loop - interior wire gas surface loop

sl_wire_gas_total_surface = newreg; Surface Loop(sl_wire_gas_total_surface) = { ps_bsurf7, psbdh_1_1_bsurf1t, psbdh_1_1_bsurf1b, psbdh_1_2_bsurf3t, psbdh_1_2_bsurf3b, psbdh_2_1_bsurf4t, psbdh_2_1_bsurf4b, psbdh_2_2_bsurf6t, psbdh_2_2_bsurf6b, -surf_top_cp[], -sa_1_1[0], -sa_1_1[1], -sa_1_2[0], -sa_1_2[1], -sb_1_1[0], -sb_1_1[1], -sb_1_2[0], -sb_1_2[1], -sa_2_1[0], -sa_2_1[1], -sa_2_2[0], -sa_2_2[1], -sb_2_1[0], -sb_2_1[1], -sb_2_2[0], -sb_2_2[1] };
// -surf_top_gas1[], -surf_top_gas2[], -surf_top_gas3[], -surf_top_gas4[], -surf_top_gas5[], -surf_cyl_dielectric1[], -surf_cyl_dielectric2[], -surf_cyl_dielectric3[], -surf_cyl_dielectric4[],
// pscp_up_border1, pscp_up_border2, pscp_up_border3, pscp_up_border4,
// ps_side_gas1a, ps_side_gas2a, ps_side_gas3a, ps_side_gas4a,
total_sl_wire_gas_total_surface[] += sl_wire_gas_total_surface;

//----------------------------------------------------------
// Gas Exterior Surface Loop - exterior gas surface loop

// total_sl_gas_exterior_surface[0] = newreg; Surface Loop(total_sl_gas_exterior_surface[0]) = { ps_side_gas1b, ps_side_gas2b, ps_side_gas3b, ps_side_gas4b, ps_bsurf2, ps_bsurf5 };

//----------------------------------------------------------
// Dielectric Surface Loop - dielectric surface loop

// sl_dielectric = newreg; Surface Loop(sl_dielectric) = { surf_top_gas1[], surf_top_gas2[], surf_top_gas3[], surf_top_gas4[], surf_top_gas5[], surf_cyl_dielectric1[], surf_cyl_dielectric2[], surf_cyl_dielectric3[], surf_cyl_dielectric4[], -surf_lower_cp1[], 
// -surf_lower_cp2[], -surf_lower_cp3[], -surf_lower_cp4[], surf_bottom_dielectric[] };
// total_sl_dielectric[] += sl_dielectric;

//----------------------------------------------------------
// Wire Volume Surface Loop - wire electrode

// sl_wire = newreg; Surface Loop(sl_wire) = { s_1_2b, sb_1_1[2], sb_1_2[2], tmpa_2_2[0], s_1_1a, sa_2_1[2], sa_2_2[2], tmpb_1_2[0], s_1_2a, sa_1_1[2], sa_1_2[2], tmpb_2_2[0], s_1_1b, sb_2_1[2], sb_2_2[2], tmpa_1_2[0], sa_1_1[0], sa_1_1[1], sa_1_2[0], 
// sa_1_2[1], sb_1_1[0], sb_1_1[1], sb_1_2[0], sb_1_2[1], sa_2_1[0], sa_2_1[1], sa_2_2[0], sa_2_2[1], sb_2_1[0], sb_2_1[1], sb_2_2[0], sb_2_2[1] };
// vol_wire = newreg; Volume(vol_wire) = {sl_wire};

//----------------------------------------------------------
// Lower Electrode Surface Loop - lower electrode surface loop

sl_lower_cp = newreg; Surface Loop(sl_lower_cp) = { surf_top_cp[], pscp_low_border1, pscp_low_border2, pscp_low_border3, pscp_low_border4, surf_bottom_cp[] }; // surf_lower_cp1[], surf_lower_cp2[], surf_lower_cp3[], surf_lower_cp4[],
total_sl_lower_cp[] += sl_lower_cp;


//------------------------------------------------------------------------------------------
/// CONTAINER VOLUME

// vol_container = newreg; Volume(vol_container) = { total_sl_gas_exterior_surface[0] };

//------------------------------------------------------------------------------------------
/// WIRE VOLUME

// total_vol_wire = newreg; Compound Volume(total_vol_wire) = { vol_x1_wire, vol_x2_wire, vol_y1_wire, vol_y2_wire };
// total_vol_wire = newreg; Volume(total_vol_wire) = { total_sl_wire_gas_interior_surface[] };

//------------------------------------------------------------------------------------------
/// GAS VOLUME

vol_gas = newreg; Volume(vol_gas) = { total_sl_wire_gas_total_surface[] }; //  sl_wire_exterior_surface_1a[], sl_wire_exterior_surface_1b[], sl_wire_exterior_surface_2a[], sl_wire_exterior_surface_2b[]
// vol_gas = newreg; Volume(vol_gas) = { total_sl_wire_gas_total_surface[] }; // total_sl_gas_exterior_surface[0]


//------------------------------------------------------------------------------------------
/// COMPONENT VOLUMES

// vol_dielectric = newreg; Volume(vol_dielectric) = total_sl_dielectric[];
vol_lower_cp = newreg; Volume(vol_lower_cp) = total_sl_lower_cp[];


//------------------------------------------------------------------------------------------
/// PHYSICAL SURFACES

//----------------------------------------------------------
// Physical Surfaces - periodic boundary conditions

physsurf_bdh_1_1 = newreg; Physical Surface(physsurf_bd1h1) = { psbdh_1_1_bsurf1t, s_1_2b1[], sb_1_1[2], sb_1_2[2], s_1_2a2[], psbdh_1_1_bsurf1b };             // ps_side_gas1b, ps_bsurf2, pscp_up_border1, ps_side_gas1a,
physsurf_bdh_1_2 = newreg; Physical Surface(physsurf_bd1h2) = { psbdh_1_2_bsurf3t, s_1_1a1[], sa_2_1[2], sa_2_2[2], s_1_1b2[], psbdh_1_2_bsurf3b };             // ps_side_gas2b, pscp_up_border2, ps_side_gas2a,
physsurf_bdh_2_1 = newreg; Physical Surface(physsurf_bd2h1) = { psbdh_2_1_bsurf4t, s_1_2a1[], sa_1_1[2], sa_1_2[2], s_1_2b2[], psbdh_2_1_bsurf4b };             // ps_side_gas3b, ps_bsurf5, pscp_up_border3, ps_side_gas3a,
physsurf_bdh_2_2 = newreg; Physical Surface(physsurf_bd2h2) = { psbdh_2_2_bsurf6t, s_1_1b1[], sb_2_1[2], sb_2_2[2], s_1_1a2[], psbdh_2_2_bsurf6b };             // ps_side_gas4b, pscp_up_border4, ps_side_gas4a,

//----------------------------------------------------------
// Physical surfaces - container surface

// physsurf_container = newreg; Physical Surface(physsurf_container) = { surf_top_cp[], ps_side_gas1a, ps_side_gas2a, ps_side_gas3a, ps_side_gas4a,
// ps_bsurf1, ps_bsurf3, ps_bsurf4, ps_bsurf6, ps_bsurf7, pscp_up_border1, pscp_up_border2, pscp_up_border3, pscp_up_border4, ps_side_gas1b, ps_side_gas2b, ps_side_gas3b, ps_side_gas4b, ps_bsurf2, ps_bsurf5 };

//----------------------------------------------------------
// Physical surfaces - wire surface

// physsurf_wire = newreg; Physical Surface(physsurf_wire) = { sa_1_1[0], sa_1_1[1], sa_1_2[0], sa_1_2[1], sb_1_1[0], sb_1_1[1], sb_1_2[0], sb_1_2[1], sa_2_1[0], sa_2_1[1], sa_2_2[0], sa_2_2[1], sb_2_1[0], sb_2_1[1], sb_2_2[0], sb_2_2[1] };
// physsurf_wire = newreg; Physical Surface(physsurf_wire) = { physsurf_1a_wire, physsurf_1b_wire, physsurf_2a_wire, physsurf_2b_wire };

// physsurf_wire = newreg; Physical Surface(physsurf_wire) = { s_1_2b, sb_1_1[2], sb_1_2[2], tmpa_2_2[0], s_1_1a, sa_2_1[2], sa_2_2[2], tmpb_1_2[0], s_1_2a, sa_1_1[2], sa_1_2[2], tmpb_2_2[0], s_1_1b, sb_2_1[2], sb_2_2[2], tmpa_1_2[0], sa_1_1[0], sa_1_1[1], 
// sa_1_2[0], sa_1_2[1], sb_1_1[0], sb_1_1[1], sb_1_2[0], sb_1_2[1], sa_2_1[0], sa_2_1[1], sa_2_2[0], sa_2_2[1], sb_2_1[0], sb_2_1[1], sb_2_2[0], sb_2_2[1] };

//----------------------------------------------------------
// Physical surfaces - gas exterior / interior surface

physsurf_gas = newreg; Physical Surface(physsurf_gas) = { ps_bsurf7, psbdh_1_1_bsurf1t, psbdh_1_1_bsurf1b, psbdh_1_2_bsurf3t, psbdh_1_2_bsurf3b, psbdh_2_1_bsurf4t, psbdh_2_1_bsurf4b, psbdh_2_2_bsurf6t, psbdh_2_2_bsurf6b, -surf_top_cp[], -sa_1_1[0], -sa_1_1[1], -sa_1_2[0], -sa_1_2[1], -sb_1_1[0], -sb_1_1[1], -sb_1_2[0], -sb_1_2[1], -sa_2_1[0], -sa_2_1[1], -sa_2_2[0], -sa_2_2[1], -sb_2_1[0], -sb_2_1[1], -sb_2_2[0], -sb_2_2[1] };
// Physical Surface(physsurf_gas) = { physsurf_container, -physsurf_x1_wire, -physsurf_x2_wire, -physsurf_y1_wire, -physsurf_y2_wire };

//----------------------------------------------------------
// Physical surfaces - dielectric surface

// physsurf_dielectric = newreg; Physical Surface(physsurf_dielectric) = total_sl_dielectric[];
// physsurf_dielectric = newreg; Physical Surface(physsurf_dielectric) = { surf_top_gas1[], surf_top_gas2[], surf_top_gas3[], surf_top_gas4[], surf_top_gas5[], surf_cyl_dielectric1[], surf_cyl_dielectric2[], surf_cyl_dielectric3[], surf_cyl_dielectric4[], 
// -surf_lower_cp1[], -surf_lower_cp2[], -surf_lower_cp3[], -surf_lower_cp4[], surf_bottom_dielectric[] };

//----------------------------------------------------------
// Physical surfaces - lower electrode surface

physsurf_lower_cp = newreg; Physical Surface(physsurf_lower_cp) = { surf_top_cp[], pscp_up_border1, pscp_up_border2, pscp_up_border3, pscp_up_border4, surf_bottom_cp[] }; // surf_lower_cp1[], surf_lower_cp2[], surf_lower_cp3[], surf_lower_cp4[], 

//----------------------------------------------------------
// Physical surfaces - upper electrode surface

physsurf_upper_el = newreg; Physical Surface(physsurf_upper_el) = { ps_bsurf7 };


//------------------------------------------------------------------------------------------
/// PHYSICAL VOLUMES

//----------------------------------------------------------
// Physical Volumes - Container Volume

// physvol_container = newreg; Physical Volume(physvol_container) = vol_container;

//----------------------------------------------------------
// Physical Volumes - Wire Volume

// physvol_wire = newreg; Physical Volume(physvol_wire) = total_vol_wire;

//----------------------------------------------------------
// Physical Volumes - Gas Volume

physvol_gas = newreg; Physical Volume(physvol_gas) = { vol_gas };
// Physical Volume(physvol_gas) = { vol_gas };

//----------------------------------------------------------
// Physical Volumes - Component Volumes

// physvol_dielectric = newreg; Physical Volume(physvol_dielectric) = { vol_dielectric };
physvol_lower_cp = newreg; Physical Volume(physvol_lower_cp) = { vol_lower_cp };

//----------------------------------------------------------
// FEATURE / ELEMENT REMOVAL

// Delete { Volume { vol_gas }; }

// Coherence;
*/