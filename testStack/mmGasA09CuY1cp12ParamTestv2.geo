// Include "mmGasA00Assembly.geo";
// Include "mmGasA00AssemblyParam.geo";

// Include "mmGasA00Bd0pcb12.geo";
// Include "mmGasA00Bd0pcb12CompLab.pro";
// Include "mmGasA00Bd0pcb12Param.geo";

// Include "mmGasA00CuP0cp12.geo";
// Include "mmGasA00CuP0cp12CompLab.pro";
// Include "mmGasA00CuP0cp12Param.geo";

// Include "mmGasA01Bd1pcb12.geo";
// Include "mmGasA01Bd1pcb12CompLab.pro";
// Include "mmGasA01Bd1pcb12Param.geo";

// Include "mmGasA01CuY1cp12.geo";
// Include "mmGasA01CuY1cp12CompLab.pro";
// Include "mmGasA01CuY1cp12Param.geo";

// Include "mmGasA02Bd2pcb12.geo";
// Include "mmGasA02Bd2pcb12CompLab.pro";
// Include "mmGasA02Bd2pcb12Param.geo";

// Include "mmGasA02CuX2cp12.geo";
// Include "mmGasA02CuX2cp12CompLab.pro";
// Include "mmGasA02CuX2cp12Param.geo";

// Include "mmGasA03Bd0pil2cp12.geo";
// Include "mmGasA03Bd0pil2cp12CompLab.pro";
// Include "mmGasA03Bd0pil2cp12Param.geo";

// Include "mmGasA04Cur0Wr12.geo";
// Include "mmGasA04Cur0Wr12D2x1Wire.geo";
// Include "mmGasA04Cur0Wr12D2y1Wire.geo";
// Include "mmGasA04Cur0Wr12Param.geo";
// Include "mmGasA04Cur0Wr12S1x2Wire.geo";
// Include "mmGasA04Cur0Wr12S1y2Wire.geo";
// Include "mmGasA04Cur0Wr12S1x1y1Wire.geo";
// Include "mmGasA04Cur0Wr12D2x2y2Wire.geo";
// Include "mmGasA04Cur0Wr12Tx1y1x2y2Wire.geo";

// Include "mmGasA04Str0Wr12.geo";
// Include "mmGasA04Str0Wr12D2x1Wire.geo";
// Include "mmGasA04Str0Wr12D2x2y2Wire.geo";
// Include "mmGasA04Str0Wr12D2y1Wire.geo";
// Include "mmGasA04Str0Wr12Param.geo";
// Include "mmGasA04Str0Wr12S1x1y1Wire.geo";
// Include "mmGasA04Str0Wr12S1x2Wire.geo";
// Include "mmGasA04Str0Wr12S1y2Wire.geo";
// Include "mmGasA04Str0Wr12Tx1y1x2y2Wire.geo";

// Include "mmGasA04Wr12CompLab.pro";
// Include "mmGasA04Wr12D2x1WireCompLab.pro";
// Include "mmGasA04Wr12D2x2y2WireCompLab.pro";
// Include "mmGasA04Wr12D2y1WireCompLab.pro";
// Include "mmGasA04Wr12S1x2WireCompLab.pro";
// Include "mmGasA04Wr12S1y2WireCompLab.pro";
// Include "mmGasA04Wr12S1x1y1WireCompLab.pro";
// Include "mmGasA04Wr12Tx1y1x2y2WireCompLab.pro";

// Include "mmGasA05CompLab.pro";
// Include "mmGasA05MaterialDatabase.pro";
// Include "mmGasA05MaterialMacros.pro";
// Include "mmGasA05MeshOp.pro";

// Include "mmGasA05Param.geo";

// Include "mmGasA06SolverElectrostaticsV.pro";
// Include "mmGasA06SolverElectrostaticsV2.pro";
// Include "mmGasA06SolverIntegrationLib.pro";
// Include "mmGasA06SolverJacobianLib.pro";
// Include "mmGasA06SolverOp.pro";

// Include "mmGasA07PipeData.pro";
// Include "mmGasA08List.txt";


/// GEOMETRY MODULE
/// COPPER STRIP STRUCTURE
//----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
//// Variable designation: geometrical element, structural reference, interface / description, number


/// CONSTANTS
//----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
//// Variable designation: geometrical element, structural reference, interface / description, number

//----------------------------------------------------------
//// Geometric parameters

cA00MWf = 1.00;																																					// mesh window factor
cA00MM = 1.00;																																					// geometrical scaling

dA00Extx = 5.25;																																				// shell x dimension x d, in mm
dA00Exty = 5.25;																																				// shell y dimension y d, in mm

//----------------------------------------------------------
//// Current best dimensions for mesh characteristic lengths

lcA01cp12Cnd1 = 0.02;																																			// characterization of metal surfaces / copper conductor boundary

//----------------------------------------------------------
//// Copper anode geometric parameters

cA01CuY1cp12GeoFx = 1;																																			// geometric factor
cA01CuY1cp12GeoFy = 1;																																			// geometric factor

/// Copper strip width

dA01cpStrpWth = 0.95*cA00MM;																																	// copper anode strip width
dA01cpSpWth1 = 0.05*cA00MM;																																		// copper strip y separation width
dA01cpSpWth2 = 0.05*cA00MM;																																		// copper strip x separation width

/// A01 counter constant

mA01c1 = 0;																																						// counter / constant, copper y1
nA01c1 = 0;																																						// counter / constant, copper x1
mA01c2 = 1;																																						// counter / constant, copper y2
nA01c2 = 1;																																						// counter / constant, copper x2

//----------------------------------------------------------
//// Geometric copper anode parameters

cA01cp12DetShellGeoFx = 1;																																		// geometric factor
cA01cp12DetShellGeoFy = 1;																																		// geometric factor

/// A01 detector shell counter constant

mA01cp12DetShellc1 = 0;																																			// counter / constant, copper x1
nA01cp12DetShellc1 = 0;																																			// counter / constant, copper y1
mA01cp12DetShellc2 = 1;																																			// counter / constant, copper x2
nA01cp12DetShellc2 = 1;																																			// counter / constant, copper y2

//----------------------------------------------------------
//// Copper anode parameters

/// Detector size co-ordinate

dA01DetSzyCo = ( dA00Exty - 0*( dA01cpStrpWth + dA01cpSpWth1 ) );																								// detector size y co-ordinate
dA01DetSzxCo = ( dA00Extx - 0*( dA01cpStrpWth + dA01cpSpWth2 ) );																								// detector size x co-ordinate

/// Copper anode size co-ordinate

dA01cpAnSzyCo1a = ( 1*dA01cpSpWth1/2 );																															// copper anode size y 1a co-ordinate
dA01cpAnSzxCo1a = ( 1*dA01cpSpWth2/2 );																															// copper anode size x 1a co-ordinate

dA01cpAnSzyCo1b = ( (dA01cpSpWth1/2) + ( dA01cpStrpWth ) );																										// copper anode size y 1b co-ordinate
dA01cpAnSzxCo1b = ( dA00Extx - dA01cpSpWth2/2 );																												// copper anode size x 1b co-ordinate

dA01cpAnSzyCo2a = ( dA00Exty - dA01cpSpWth1/2 );																												// copper anode size y 2a co-ordinate
dA01cpAnSzxCo2a = ( dA00Extx - dA01cpSpWth2/2 );																												// copper anode size x 2a co-ordinate

/// Copper strip length

dA01cpStrpLth = ( dA00Extx - dA01cpSpWth2 );																													// copper strip length

// dA01cpAnSzxCo1b = ( ( dA01cpSpWth2/2 ) + ( dA01cpStrpLth ) );																								// copper anode size x 1b co-ordinate

/// Copper strip number y

nA01cpNumStrpy = Floor ( dA01DetSzyCo / ( dA01cpStrpWth + dA01cpSpWth1 ) );																						// copper strip number y

/// Copper anode co-ordinate

dA01cpyCoD1 = ( dA01DetSzyCo - dA01cpSpWth1 - dA01cpStrpWth - ( ( nA01cpNumStrpy - 1 )*( dA01cpStrpWth + dA01cpSpWth1 ) ) )/2;									// copper anode y co-ordinate distance 1
dA01cpxCoD2 = dA01cpSpWth2/2;																																	// copper anode x co-ordinate distance 2

/// Geometric constant

dA01GeoWcyr = dA01cpyCoD1*1.0;																														 			// geometric constant, x - direction strip in the y radial direction
dA01GeoWcxd = dA01cpxCoD2*0.0;																														 			// geometric constant, x - direction strip in the x - direction

/// Copper strip count y

nA01cpStrpCnty = Floor ( ( dA01DetSzyCo ) / ( dA01cpStrpWth + dA01cpSpWth1 ) );																					// strip count y

/// Copper anode units initial

numA01cpUy0 = nA01cpStrpCnty;																																	// number of copper anode y units initial
numA01cpUx0 = 1;																																				// number of copper anode x units initial 

/// Copper anode units

numA01cpUy = numA01cpUy0 - 1;																																	// number of copper anode units in the x - direction
numA01cpUx = numA01cpUx0 - 1;																																	// number of copper anode units in the y - direction

//----------------------------------------------------------
//// Level parameters

lvlA00cp1_Y1cp12 = 0;																																			// lvl 0cp1 electrode ground bottom copper level, in mm

thA00cp12_Y1cp12 = 0.10;																																		// 0cp12 thickness, in mm

lvlA00cp1_Y1cp12 = ( lvlA00cp1_Y1cp12 );																														// lvl 0cp1 electrode ground bottom copper level, in mm
lvlA00cp2_Y1cp12 = ( lvlA00cp1_Y1cp12 + thA00cp12_Y1cp12 );																										// lvl 0pcb1 / 0cp2 electrode ground top copper level / thickness, in mm

thA00pcb12_Y1cp12 = 0.25;																																		// 0pcb12 thickness, in mm
thA01cp12 = 0.10;																																				// 1cp12 thickness, in mm

lvlA01cp1 = ( lvlA00cp2_Y1cp12 + thA00pcb12_Y1cp12 );																											// lvl 0pcb2 / 1pcb1 / 1cp1 bottom electrode copper level / thickness, in mm
lvlA01cp2 = ( lvlA01cp1 + thA01cp12 );																															// lvl 1pcb2 / 2pcb1 / 1cp2 top electrode copper level / thickness, in mm


/// VARIABLE DECLARATION
//----------------------------------------------------------
//// Lines & surfaces

lA01cp1Bb1A[] = {};
lA01cp1Bb2A[] = {};
lA01cp1Bb3A[] = {};
lA01cp1Bb4A[] = {};

lA01cp2Tb1A[] = {};
lA01cp2Tb2A[] = {};
lA01cp2Tb3A[] = {};
lA01cp2Tb4A[] = {};

lA01cp12Ib1A[] = {};
lA01cp12Ib2A[] = {};
lA01cp12Ib3A[] = {};
lA01cp12Ib4A[] = {};

surfA01cp12Ib1A[] = {};
surfA01cp12Ib2A[] = {};
surfA01cp12Ib3A[] = {};
surfA01cp12Ib4A[] = {};

surfA01cp1Bb5A[] = {};
surfA01cp2Tb6A[] = {};

slA01cpSb1[] = {};


/// GEOMETRY MODULE
/// COPPER STRIP STRUCTURE
//----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
//// Variable designation: geometrical element, structural reference, interface / description, number


/// POINTS
//----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
//// External shell corners


/*
/// LEVEL 1cp1 - copper
//----------------------------------------------------------
//// Copper strip corner 1

ptExA01cp1C1 = newp; Point ( ptExA01cp1C1 ) = { cA01cp12DetShellGeoFx*0 + cA01cp12DetShellGeoFx*mA01cp12DetShellc1*dA00Extx, cA01cp12DetShellGeoFy*0 + cA01cp12DetShellGeoFy*nA01cp12DetShellc1*dA00Exty, lvlA01cp1, lcA01cp12Cnd1 };				

/// Lvl 1cp1 - level 1 bottom layer - middle                                                                                                           
/// Copper electrode strips

//----------------------------------------------------------
//// Copper strip corner 2

ptExA01cp1C2 = newp; Point ( ptExA01cp1C2 ) = { cA01cp12DetShellGeoFx*0 + cA01cp12DetShellGeoFx*mA01cp12DetShellc1*dA00Extx, cA01cp12DetShellGeoFy*dA00Exty + cA01cp12DetShellGeoFy*nA01cp12DetShellc1*dA00Exty, lvlA01cp1, lcA01cp12Cnd1 };               

/// Lvl 1cp1 - level 1 bottom layer - middle 
/// Copper electrode strips

//----------------------------------------------------------
//// Copper strip corner 3

ptExA01cp1C3 = newp; Point ( ptExA01cp1C3 ) = { cA01cp12DetShellGeoFx*dA00Extx + cA01cp12DetShellGeoFx*mA01cp12DetShellc1*dA00Extx, cA01cp12DetShellGeoFy*dA00Exty + cA01cp12DetShellGeoFy*nA01cp12DetShellc1*dA00Exty, lvlA01cp1, lcA01cp12Cnd1 };             

/// Lvl 1cp1 - level 1 bottom layer - middle 
/// Copper electrode strips

//----------------------------------------------------------
//// Copper strip corner 4

ptExA01cp1C4 = newp; Point ( ptExA01cp1C4 ) = { cA01cp12DetShellGeoFx*dA00Extx + cA01cp12DetShellGeoFx*mA01cp12DetShellc1*dA00Extx, cA01cp12DetShellGeoFy*0 + cA01cp12DetShellGeoFy*nA01cp12DetShellc1*dA00Exty, lvlA01cp1, lcA01cp12Cnd1 };               

/// Lvl 1cp1 - level 1 bottom layer - middle 
/// Copper electrode strips
*/


/// LEVEL 1cp2 - copper
//----------------------------------------------------------
//// Copper strip corner 1

ptExA01cp2C1 = newp; Point ( ptExA01cp2C1 ) = { cA01cp12DetShellGeoFx*0 + cA01cp12DetShellGeoFx*mA01cp12DetShellc1*dA00Extx, cA01cp12DetShellGeoFy*0 + cA01cp12DetShellGeoFy*nA01cp12DetShellc1*dA00Exty, lvlA01cp2, lcA01cp12Cnd1 };

/// Lvl 1cp2 - level 1 top layer

//----------------------------------------------------------
//// Copper strip corner 2

ptExA01cp2C2 = newp; Point ( ptExA01cp2C2 ) = { cA01cp12DetShellGeoFx*0 + cA01cp12DetShellGeoFx*mA01cp12DetShellc1*dA00Extx, cA01cp12DetShellGeoFy*dA00Exty + cA01cp12DetShellGeoFy*nA01cp12DetShellc1*dA00Exty, lvlA01cp2, lcA01cp12Cnd1 };

/// Lvl 1cp2 - level 1 top layer

//----------------------------------------------------------
//// Copper strip corner 3

ptExA01cp2C3 = newp; Point ( ptExA01cp2C3 ) = { cA01cp12DetShellGeoFx*dA00Extx + cA01cp12DetShellGeoFx*mA01cp12DetShellc1*dA00Extx, cA01cp12DetShellGeoFy*dA00Exty + cA01cp12DetShellGeoFy*nA01cp12DetShellc1*dA00Exty, lvlA01cp2, lcA01cp12Cnd1 };

/// Lvl 1cp2 - level 1 top layer

//----------------------------------------------------------
//// Copper strip corner 4

ptExA01cp2C4 = newp; Point ( ptExA01cp2C4 ) = { cA01cp12DetShellGeoFx*dA00Extx + cA01cp12DetShellGeoFx*mA01cp12DetShellc1*dA00Extx, cA01cp12DetShellGeoFy*0 + cA01cp12DetShellGeoFy*nA01cp12DetShellc1*dA00Exty, lvlA01cp2, lcA01cp12Cnd1 };

/// Lvl 1cp2 - level 1 top layer


/// POINTS
//----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
//// Individual strip corners


/*
/// LEVEL 1cp1 - copper

For m1 In { 0:numA01cpUy }
  For n1 In { 0:numA01cpUx }


/// Level 3 - top lower layer
//----------------------------------------------------------
//// Copper strip corner 1

ptA01cp1C1~{m1}~{n1} = newp; Point ( ptA01cp1C1~{m1}~{n1} ) = { dA01GeoWcxd + cA01CuY1cp12GeoFx*dA01cpAnSzxCo1a + cA01CuY1cp12GeoFx*n1*( dA01cpStrpLth ), dA01GeoWcyr + cA01CuY1cp12GeoFy*dA01cpAnSzyCo1a + cA01CuY1cp12GeoFy*m1*( dA01cpStrpWth + dA01cpSpWth1 ), lvlA01cp1, lcA01cp12Cnd1 };

//----------------------------------------------------------
//// Copper strip corner 2

ptA01cp1C2~{m1}~{n1} = newp; Point ( ptA01cp1C2~{m1}~{n1} ) = { dA01GeoWcxd + cA01CuY1cp12GeoFx*dA01cpAnSzxCo1a + cA01CuY1cp12GeoFx*n1*( dA01cpStrpLth ), dA01GeoWcyr + cA01CuY1cp12GeoFy*dA01cpAnSzyCo1b + cA01CuY1cp12GeoFy*m1*( dA01cpStrpWth + dA01cpSpWth1 ), lvlA01cp1, lcA01cp12Cnd1 };

//----------------------------------------------------------
//// Copper strip corner 3

ptA01cp1C3~{m1}~{n1} = newp; Point ( ptA01cp1C3~{m1}~{n1} ) = { dA01GeoWcxd + cA01CuY1cp12GeoFx*dA01cpAnSzxCo1b + cA01CuY1cp12GeoFx*n1*( dA01cpStrpLth ), dA01GeoWcyr + cA01CuY1cp12GeoFy*dA01cpAnSzyCo1b + cA01CuY1cp12GeoFy*m1*( dA01cpStrpWth + dA01cpSpWth1 ), lvlA01cp1, lcA01cp12Cnd1 };

//----------------------------------------------------------
//// Copper strip corner 4

ptA01cp1C4~{m1}~{n1} = newp; Point ( ptA01cp1C4~{m1}~{n1} ) = { dA01GeoWcxd + cA01CuY1cp12GeoFx*dA01cpAnSzxCo1b + cA01CuY1cp12GeoFx*n1*( dA01cpStrpLth ), dA01GeoWcyr + cA01CuY1cp12GeoFy*dA01cpAnSzyCo1a + cA01CuY1cp12GeoFy*m1*( dA01cpStrpWth + dA01cpSpWth1 ), lvlA01cp1, lcA01cp12Cnd1 };


 EndFor
EndFor
*/


/// LEVEL 1cp2 - copper

For m1 In { 0:numA01cpUy }
  For n1 In { 0:numA01cpUx }


/// Level 4 - top upper layer - top upper copper electrode
//----------------------------------------------------------
//// Copper strip corner 1

ptA01cp2C1~{m1}~{n1} = newp; Point ( ptA01cp2C1~{m1}~{n1} ) = { dA01GeoWcxd + cA01CuY1cp12GeoFx*dA01cpAnSzxCo1a + cA01CuY1cp12GeoFx*n1*( dA01cpStrpLth ), dA01GeoWcyr + cA01CuY1cp12GeoFy*dA01cpAnSzyCo1a + cA01CuY1cp12GeoFy*m1*( dA01cpStrpWth + dA01cpSpWth1 ), lvlA01cp2, lcA01cp12Cnd1 };

//----------------------------------------------------------
//// Copper strip corner 2

ptA01cp2C2~{m1}~{n1} = newp; Point ( ptA01cp2C2~{m1}~{n1} ) = { dA01GeoWcxd + cA01CuY1cp12GeoFx*dA01cpAnSzxCo1a + cA01CuY1cp12GeoFx*n1*( dA01cpStrpLth ), dA01GeoWcyr + cA01CuY1cp12GeoFy*dA01cpAnSzyCo1b + cA01CuY1cp12GeoFy*m1*( dA01cpStrpWth + dA01cpSpWth1 ), lvlA01cp2, lcA01cp12Cnd1 };

//----------------------------------------------------------
//// Copper strip corner 3

ptA01cp2C3~{m1}~{n1} = newp; Point ( ptA01cp2C3~{m1}~{n1} ) = { dA01GeoWcxd + cA01CuY1cp12GeoFx*dA01cpAnSzxCo1b + cA01CuY1cp12GeoFx*n1*( dA01cpStrpLth ), dA01GeoWcyr + cA01CuY1cp12GeoFy*dA01cpAnSzyCo1b + cA01CuY1cp12GeoFy*m1*( dA01cpStrpWth + dA01cpSpWth1 ), lvlA01cp2, lcA01cp12Cnd1 };

//----------------------------------------------------------
//// Copper strip corner 4

ptA01cp2C4~{m1}~{n1} = newp; Point ( ptA01cp2C4~{m1}~{n1} ) = { dA01GeoWcxd + cA01CuY1cp12GeoFx*dA01cpAnSzxCo1b + cA01CuY1cp12GeoFx*n1*( dA01cpStrpLth ), dA01GeoWcyr + cA01CuY1cp12GeoFy*dA01cpAnSzyCo1a + cA01CuY1cp12GeoFy*m1*( dA01cpStrpWth + dA01cpSpWth1 ), lvlA01cp2, lcA01cp12Cnd1 };


 EndFor
EndFor


// End