
//----------------------------------------------------------------------
// small_cell.geo
// toy model to emulate fig 2.3 of ahmed BetaCage thesis
// units are in cm
// A bounding box created from one gf_recta`ngle object 0.4x0.4x1.2 
// 3 perpendicular wires 0.5 cm appart in the z axis 
// middle wire diameter (anode) 25um =0.0025 cm
// up and down wires (cathode) 125um =0.0125 cm
//
// Material Groups:
//  
//   wires are stainless steel 
//   inner volume is Ar gas
//
//
//
// Berta Beltran  Dec 2017  gmsh for Elmer to garfieldpp
// *********************************************************************


// Include the components.
Include "gf_x_wire.geo";
Include "gf_y_wire.geo";
Include "gf_x_disk.geo";
Include "gf_y_disk.geo";

// Create the counters for numbering physical objects.
// (sec. 2.5 on p.8 garifeld_elmer_doc.pdf)
n_physv = 1; // physical volumes
n_physs = 1; // physical surfaces
n_bdry = 0;  // number of boundary surfaces between


//***********************************
// Characteristic lenghts 
//***********************************

lcBoundingBox=0.01;
lcDisks=0.001;
lcAnode=0.001;
lcCathode=0.001;



//************************************
//Bounding box dimensions (cmm)  
//************************************

xpitch=0.5;
ypitch=0.5;
zheigth=1.2;


// **********************************************
//create outer bounding box (Bounding volume) 
// **********************************************

// Create outer bounding box; first set parameters (cm) and then return values.
x0 = 0; y0 = 0; z0 = 0; lc = lcBoundingBox; l = xpitch; w = ypitch; h = zheigth ;
vol = -1; s1 = -1; s2 = -1; s3 = -1; s4 = -1; s5 = -1; s6 = -1;

// ---------------------------------------------------------------------
// Parameters
// ---------------------------------------------------------------------
// x0: x position of center
// y0: y position of center
// z0: z position of center
// lc: characteristic length
// l: length (x)
// w: width (y)
// h: height (z)
//
// ---------------------------------------------------------------------
// Return Values
// ---------------------------------------------------------------------
// vol: the ID of the inner volume
// s1: ID of surface 1: normal -x
// s2: ID of surface 2: normal +y
// s3: ID of surface 3: normal +x
// s4: ID of surface 4: normal -y
// s5: ID of surface 5: normal +z
// s6: ID of surface 6: normal -z
//
// *********************************************************************

 
// *******************************
// Points for the edges of the box 
// *******************************

  p1 = newp; Point(p1) = {x0-l/2., y0-w/2., z0-h/2., lc};
  p2 = newp; Point(p2) = {x0-l/2., y0-w/2., z0+h/2., lc};
  p3 = newp; Point(p3) = {x0-l/2., y0+w/2., z0-h/2., lc};
  p4 = newp; Point(p4) = {x0-l/2., y0+w/2., z0+h/2., lc};
  p5 = newp; Point(p5) = {x0+l/2., y0-w/2., z0-h/2., lc};
  p6 = newp; Point(p6) = {x0+l/2., y0-w/2., z0+h/2., lc};
  p7 = newp; Point(p7) = {x0+l/2., y0+w/2., z0-h/2., lc};
  p8 = newp; Point(p8) = {x0+l/2., y0+w/2., z0+h/2., lc};

  // *******************************
  // Lines that define the box 
  // *******************************

  l1 = newl; Line(l1) = {p1,p2};
  l2 = newl; Line(l2) = {p2,p4};
  l3 = newl; Line(l3) = {p4,p3};
  l4 = newl; Line(l4) = {p3,p1};
  l5 = newl; Line(l5) = {p5,p6};
  l6 = newl; Line(l6) = {p6,p8};
  l7 = newl; Line(l7) = {p8,p7};
  l8 = newl; Line(l8) = {p7,p5};
  l9 = newl; Line(l9) = {p1,p5};
  l10 = newl; Line(l10) = {p2,p6};
  l11 = newl; Line(l11) = {p3,p7};
  l12 = newl; Line(l12) = {p4,p8};


// create disks (line loops) that I will subtrack from the box walls to leave holes for the wires to "plug" into. If I dont do this
// the meshing algorithm will complain


// Create disk that will be subtracted from s1; first set parameters (cm) and then return values.
x0 = -1*( xpitch/2.); y0 = 0.; z0 = 0.; c_r=0.0025/2.; lc = lcDisks; c_lp1 = -1;
Call gf_x_disk;

// give a permanet name to this line loop  
s1_lineloop=c_lp1;


// Create 1st disk that will be subtracted from s2; first set parameters (cm) and then return values.
x0 = 0; y0 = ypitch/2.; z0 = 0.5; c_r=0.0125/2.; lc = lcDisks; c_lp1 = -1;
Call gf_y_disk;

// give a permanet name to this line loop  
s2_1lineloop=c_lp1;


// Create 2st disk that will be subtracted from s2; first set parameters (cm) and then return values.
x0 = 0; y0 = ypitch/2.; z0 = -0.5; c_r=0.0125/2.; lc = lcDisks; c_lp1 = -1;
Call gf_y_disk;

// give a permanet name to this surface 
s2_2lineloop=c_lp1;


// Create disk that will be subtracted from s3; first set parameters (cm) and then return values.
x0 = xpitch/2.; y0 = 0; z0 = 0; c_r=0.0025/2.; lc =lcDisks; c_lp1 = -1;
Call gf_x_disk;

// give a permanet name to this line loop  
s3_lineloop=c_lp1;


// Create 1st disk that will be subtracted from s4; first set parameters (cm) and then return values.
x0 = 0; y0 = -1*(ypitch/2.); z0 = 0.5; c_r=0.0125/2.; lc = lcDisks; c_lp1 = -1;
Call gf_y_disk;

// give a permanet name to this line loop  
s4_1lineloop=c_lp1;


// Create 2st disk that will be subtracted from s4; first set parameters (cm) and then return values.
x0 = 0; y0 = -1*(ypitch/2.); z0 = -0.5; c_r=0.0125/2.; lc = lcDisks; c_lp1 = -1;
Call gf_y_disk;

// give a permanet name to this surface 
s4_2lineloop=c_lp1;


  // *******************************
  // Surfaces of the bounding box, where we will subtracting the wires line loops 
  // *******************************

  lp1 = newll; Line Loop(lp1) = {l1, l2, l3, l4};
  s1 = news; Plane Surface(s1) = {lp1,s1_lineloop};
  lp2 = newll; Line Loop(lp2) = {l12, l7, -l11, -l3};
  s2 = news; Plane Surface(s2) = {lp2,s2_1lineloop,s2_2lineloop};
  lp3 = newll; Line Loop(lp3) = {-l5, -l6, -l7, -l8};
  s3 = news; Plane Surface(s3) = {lp3,s3_lineloop};
  lp4 = newll; Line Loop(lp4) = {-l10, l5, l9, -l1};
  s4 = news; Plane Surface(s4) = {lp4,s4_1lineloop,s4_2lineloop};
  lp5 = newll; Line Loop(lp5) = {-l2, -l12, l6, l10};
  s5 = news; Plane Surface(s5) = {lp5};
  lp6 = newll; Line Loop(lp6) = {-l9, l8, l11, -l4};
  s6 = news; Plane Surface(s6) = {lp6};

  // *******************************
  // Volumes
  // *******************************

  sl = newsl; Surface Loop(sl) = {s5, s1, s4, s3, s2, s6};


  // ---------------------------------------

  // Update the boundaries array.
  bounds[n_bdry] = sl; n_bdry += 1;

// save the the 4 surfaces ids from the box
c_boxlist[0] = s1;
c_boxlist[1] = s2;
c_boxlist[2] = s3;
c_boxlist[3] = s4;


//Physical Surface: Surfaces of the bounding box that will have mirror conditions 
physs_box = n_physs; Physical Surface(physs_box) = {c_boxlist[0]}; n_physs += 1;
physs_box = n_physs; Physical Surface(physs_box) = {c_boxlist[1]}; n_physs += 1;
physs_box = n_physs; Physical Surface(physs_box) = {c_boxlist[2]}; n_physs += 1;
physs_box = n_physs; Physical Surface(physs_box) = {c_boxlist[3]}; n_physs += 1;




//*************************************************
// create bottom most wire, parallel to y axis 
//*************************************************

c_r = 0.0125/2. ;//cm  cathode diameter 125um
c_l = ypitch; // cm  lenght of the wire, from one side to the other of the bounding box 
lc = lcCathode; // cm characteristic lenght for the mesh
x0 = 0; y0 = 0; z0 = -0.5;
//initialize surface and volume pointers for manipulation after creation
s1 = -1; s2 = -1; s3 = -1; s4 = -1; 
Call gf_y_wire;

// save the surfaces id that later will be assigned a potential
c_bcatlist[0] = s1;
c_bcatlist[1] = s2;
c_bcatlist[2] = s3;
c_bcatlist[3] = s4;


//Physical Surface
physs_bcathode = n_physs; Physical Surface(physs_bcathode) = {c_bcatlist[]}; n_physs+=1;




//*************************************************
// create middle wire, parallel to x axis 
//*************************************************

c_r = 0.0025/2. ;//cm  anode diameter 25um
c_l = xpitch; // cm  lenght of the wire, from one side to the other of the bounding box 
lc = lcAnode; // cm characteristic lenght for the mesh
x0 = 0; y0 = 0; z0 = 0;
//initialize surface and volume pointers for manipulation after creation
s1 = -1; s2 = -1; s3 = -1; s4 = -1;
Call gf_x_wire;

// save the surfaces id that later will be assigned a potential
c_anlist[0] = s1;
c_anlist[1] = s2;
c_anlist[2] = s3;
c_anlist[3] = s4;


//Physical Surface
physs_an = n_physs; Physical Surface(physs_an) = {c_anlist[]}; n_physs+=1;



//*************************************************
// create top most wire, parallel to y axis 
//*************************************************

c_r = 0.0125/2. ;//cm  cathode diameter 125um
c_l = ypitch; // cm  lenght of the wire, from one side to the other of the bounding box 
lc = lcCathode; // cm characteristic lenght for the mesh
x0 = 0; y0 = 0; z0 = 0.5;
//initialize surface and volume pointers for manipulation after creation
s1 = -1; s2 = -1; s3 = -1; s4 = -1;
Call gf_y_wire;

// save the surfaces id that later will be assigned a potential
c_tcatlist[0] = s1;
c_tcatlist[1] = s2;
c_tcatlist[2] = s3;
c_tcatlist[3] = s4;


//Physical Surface
physs_tcathode = n_physs; Physical Surface(physs_tcathode) = {c_tcatlist[]}; n_physs+=1;



// **********************************************
// Create the bounding volume, logical then physical
// **********************************************
vol_bound = newv; Volume(vol_bound) = {bounds[]};

physv_gas = n_physv; Physical Volume(physv_gas) = {vol_bound}; n_physv += 1;