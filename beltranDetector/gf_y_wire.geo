// *********************************************************************
// gf_y_wire.geo
// -----------------
// A wire with ends +/- y.
// 
// ---------------------------------------------------------------------
// Parameters
// ---------------------------------------------------------------------
// x0: x position of center
// y0: y position of center
// z0: z position of center
// lc: characteristic length
// c_l: length
// c_r: radius
//
// internal variables prefixed with c_ to prevent confusion
//
// ---------------------------------------------------------------------
// Return Values
// ---------------------------------------------------------------------
// s1: ID of surface 1: side 1
// s2: ID of surface 2: side 2
// s3: ID of surface 3: side 3
// s4: ID of surface 4: side 4

// *********************************************************************

// Default parameters
x0 = 0;
y0 = 0;
z0 = 0;
c_l = 1;
c_r = 1;
c_lc = 1;

Function gf_y_wire
 
  // *******************************
  // Cylinder first side End Cap Points
  // *******************************


  //list of points
  c_p1 = newp; Point(c_p1) = {-c_r + x0, y0-c_l/2, 0   + z0, c_lc};
  c_p2 = newp; Point(c_p2) = {0    + x0, y0-c_l/2, c_r + z0, c_lc};
  c_p3 = newp; Point(c_p3) = {c_r  + x0, y0-c_l/2, 0   + z0, c_lc};
  c_p4 = newp; Point(c_p4) = {0    + x0, y0-c_l/2 , -c_r+ z0, c_lc};




 // *******************************
  // Cylinder second side End Cap Points
  // *******************************


  //list of points
  c_p5 = newp; Point(c_p5) = {-c_r + x0, y0+c_l/2, 0   + z0, c_lc};
  c_p6 = newp; Point(c_p6) = {0    + x0, y0+c_l/2, c_r + z0, c_lc};
  c_p7 = newp; Point(c_p7) = {c_r  + x0, y0+c_l/2, 0   + z0, c_lc};
  c_p8 = newp; Point(c_p8) = {0    + x0, y0+c_l/2, -c_r+ z0, c_lc};



  // *******************************
  // Cylinder Lines
  // *******************************

  c_l1 = newl; Line(c_l1) = {c_p1,c_p5};
  c_l2 = newl; Line(c_l2) = {c_p2,c_p6};
  c_l3 = newl; Line(c_l3) = {c_p3,c_p7};
  c_l4 = newl; Line(c_l4) = {c_p4,c_p8};

  // *******************************
  // Cylinder Surfaces 
  // *******************************

c_out1[] = Extrude{{0,1,0},{x0,y0,z0},Pi/2}{Line{c_l1};};
c_out2[] = Extrude{{0,1,0},{x0,y0,z0},Pi/2}{Line{c_l2};};
c_out3[] = Extrude{{0,1,0},{x0,y0,z0},Pi/2}{Line{c_l3};};
c_out4[] = Extrude{{0,1,0},{x0,y0,z0},Pi/2}{Line{c_l4};};


  // *******************************
  // Cylinder surface loop
  // *******************************


 //prepare list of surface numbers for access outside function
  s1 = c_out1[1];
  s2 = c_out2[1];	
  s3 = c_out3[1];
  s4 = c_out4[1];  

 c_sl1 = newsl; Surface Loop(c_sl1) = {c_out1[1], c_out2[1], c_out3[1], c_out4[1]};


  // ---------------------------------------
  // Update the boundaries array.
  bounds[n_bdry] = c_sl1; n_bdry += 1;

Return

// End