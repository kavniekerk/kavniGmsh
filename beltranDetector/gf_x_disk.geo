// *********************************************************************
// gf_x_disk.geo
// -----------------
// A disk perpendicular to x.
// 
// ---------------------------------------------------------------------
// Parameters
// ---------------------------------------------------------------------
// x0: x position of center
// y0: y position of center
// z0: z position of center
// lc: characteristic length
// c_r: radius 
//
// internal variables prefixed with c_ to prevent confusion
//
// ---------------------------------------------------------------------
// Return Values
// ---------------------------------------------------------------------

// c_lp1: ID of Line Loop perpendicualr to x 

// *********************************************************************

// Default parameters
x0 = 0;
y0 = 0;
z0 = 0;
c_r = 1;
c_lc = 1;

Function gf_x_disk
 
// *******************************
// Disk Points
// *******************************

  //list of points
  c_p1 = newp; Point(c_p1) = {      x0,      y0,       z0, c_lc};
  c_p2 = newp; Point(c_p2) = {      x0,c_r + y0,       z0, c_lc};
  c_p3 = newp; Point(c_p3) = {      x0,      y0, c_r + z0, c_lc};
  c_p4 = newp; Point(c_p4) = {      x0,-c_r+ y0,       z0, c_lc};
  c_p5 = newp; Point(c_p5) = {      x0,      y0, -c_r+ z0, c_lc};

  // *******************************
  // Cylinder End Cap Arc Lines
  // *******************************

  c_l1 = newl; Circle(c_l1) = {c_p2,c_p1,c_p3};
  c_l2 = newl; Circle(c_l2) = {c_p3,c_p1,c_p4};
  c_l4 = newl; Circle(c_l4) = {c_p4,c_p1,c_p5};
  c_l5 = newl; Circle(c_l5) = {c_p5,c_p1,c_p2};

  // *******************************
  // Cylinder End Cap Surface
  // *******************************

  c_lp1 = newll; Line Loop(c_lp1) = {c_l1, c_l2, c_l4, c_l5};
  

Return

// End