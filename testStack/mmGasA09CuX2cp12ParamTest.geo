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
/// Include "mmGasA02CuX2cp12Param.geo";

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

lcA02cp2Cnd1 = 0.02;																																			// characterization of metal surfaces / copper conductor boundary

//----------------------------------------------------------
//// Copper anode geometric parameters

cA02CuX2cp12GeoFx = 1;																																			// geometric factor
cA02CuX2cp12GeoFy = 1;																																			// geometric factor

/// Copper strip width

dA02cpStrpWth = 0.95*cA00MM;																																	// copper anode strip width
dA02cpSpWth1 = 0.05*cA00MM;																																		// copper strip x separation width
dA02cpSpWth2 = 0.05*cA00MM;																																		// copper strip y separation width

/// A02 counter constant

mA02c1 = 0;																																						// counter / constant, copper x1
nA02c1 = 0;																																						// counter / constant, copper y1
mA02c2 = 1;																																						// counter / constant, copper x2
nA02c2 = 1;																																						// counter / constant, copper y2

//----------------------------------------------------------
//// Geometric copper anode parameters

cA02DetShellGeoFx = 1;																																			// geometric factor
cA02DetShellGeoFy = 1;																																			// geometric factor

/// A02 detector shell counter constant

mA02cp12DetShellc1 = 0;																																			// counter / constant, copper x1
nA02cp12DetShellc1 = 0;																																			// counter / constant, copper y1
mA02cp12DetShellc2 = 1;																																			// counter / constant, copper x2
nA02cp12DetShellc2 = 1;																																			// counter / constant, copper y2

//----------------------------------------------------------
//// Copper anode parameters

/// Detector size co-ordinate

dA02DetSzxCo = ( dA00Extx - 0*( dA02cpStrpWth + dA02cpSpWth1 ) );																								// detector size x co-ordinate
dA02DetSzyCo = ( dA00Exty - 0*( dA02cpStrpWth + dA02cpSpWth2 ) );																								// detector size y co-ordinate

/// Copper anode size co-ordinate

dA02cpAnSzxCo1a = ( 1*dA02cpSpWth1/2 );																															// copper anode size x 1a co-ordinate
dA02cpAnSzyCo1a = ( 1*dA02cpSpWth2/2 );																															// copper anode size y 1a co-ordinate

dA02cpAnSzxCo1b = ( (dA02cpSpWth1/2) + ( dA02cpStrpWth ) );																										// copper anode size x 1b co-ordinate
dA02cpAnSzyCo1b = ( dA00Exty - dA02cpSpWth2/2 );																												// copper anode size y 1b co-ordinate

dA02cpAnSzxCo2a = ( dA00Extx - dA02cpSpWth1/2 );																												// copper anode size x 2a co-ordinate
dA02cpAnSzyCo2a = ( dA00Exty - dA02cpSpWth2/2 );																												// copper anode size y 2a co-ordinate

/// Copper strip length

dA02cpStrpLth = ( dA00Exty - dA02cpSpWth2 );																													// copper strip length

// dA02cpAnSzyCo1b = ( ( dA02cpSpWth2/2 ) + ( dA02cpStrpLth ) );																								// copper anode size y 1b co-ordinate

/// Copper strip number x

nA02cpNumStrpx = Floor ( dA02DetSzxCo / ( dA02cpStrpWth + dA02cpSpWth1 ) );																						// copper strip number x

/// Copper anode co-ordinate

dA02cpxCoD1 = ( dA02DetSzxCo - dA02cpSpWth1 - dA02cpStrpWth - ( ( nA02cpNumStrpx - 1 )*( dA02cpStrpWth + dA02cpSpWth1 ) ) )/2;									// copper anode x co-ordinate distance 1
dA02cpyCoD2 = dA02cpSpWth2/2;																																	// copper anode y co-ordinate distance 2

/// Geometric constant

dA02GeoWcxr = dA02cpxCoD1*1.0;																																	// geometric constant, y - direction strip in the x radial direction
dA02GeoWcyd = dA02cpyCoD2*0.0;																																	// geometric constant, y - direction strip in the y - direction

/// Copper strip count x

nA02cpStrpCntx = Floor ( ( dA02DetSzxCo ) / ( dA02cpStrpWth + dA02cpSpWth1 ) );																					// strip count x

/// Copper anode units initial

numA02cpUx0 = nA02cpStrpCntx;																																	// number of copper anode x units initial
numA02cpUy0 = 1;																																				// number of copper anode y units initial 

/// Copper anode units 
	
numA02cpUx = numA02cpUx0 - 1;																																	// number of copper anode units in the y - direction
numA02cpUy = numA02cpUy0 - 1;																																	// number of copper anode units in the x - direction

//----------------------------------------------------------
//// Level parameters

lvlA00cp1_X2cp12 = 0;																																			// lvl 0cp1 electrode ground bottom copper level, in mm

thA00cp12_X2cp12 = 0.10;																																		// 0cp12 thickness, in mm

lvlA00cp1_X2cp12 = ( lvlA00cp1_X2cp12 );																														// lvl 0cp1 electrode ground bottom copper level, in mm
lvlA00cp2_X2cp12 = ( lvlA00cp1_X2cp12 + thA00cp12_X2cp12 );																										// lvl 0pcb1 / 0cp2 electrode ground top copper level / thickness, in mm

thA00pcb12_X2cp12 = 0.25;																																		// 0pcb12 thickness, in mm
thA01cp12_X2cp12 = 0.10;																																		// 1cp12 thickness, in mm

lvlA01cp1_X2cp12 = ( lvlA00cp2_X2cp12 + thA00pcb12_X2cp12 );																									// lvl 0pcb2 / 1pcb1 / 1cp1 bottom electrode copper level / thickness, in mm
lvlA01cp2_X2cp12 = ( lvlA01cp1_X2cp12 + thA01cp12_X2cp12 );																										// lvl 1pcb2 / 2pcb1 / 1cp2 top electrode copper level / thickness, in mm

thA02pcb12_X2cp12 = 0.25;																																		// 2pcb12 thickness, in mm
thA02cp12 = 0.10;																																				// 2cp12 thickness, in mm

lvlA02cp1 = ( lvlA01cp2_X2cp12 + thA02pcb12_X2cp12 );																											// lvl 2pcb2 / 2cp1 bottom electrode copper level / thickness, in mm
lvlA02cp2 = ( lvlA02cp1 + thA02cp12 );																															// lvl 2cp2 top electrode copper level / thickness, in mm


/// VARIABLE DECLARATION
//----------------------------------------------------------
//// Lines & surfaces

lA02cp1Bb1A[] = {};
lA02cp1Bb2A[] = {};
lA02cp1Bb3A[] = {};
lA02cp1Bb4A[] = {};

lA02cp2Tb1A[] = {};
lA02cp2Tb2A[] = {};
lA02cp2Tb3A[] = {};
lA02cp2Tb4A[] = {};

lA02cp12Ib1A[] = {};
lA02cp12Ib2A[] = {};
lA02cp12Ib3A[] = {};
lA02cp12Ib4A[] = {};

surfA02cp12Ib1A[] = {};
surfA02cp12Ib2A[] = {};
surfA02cp12Ib3A[] = {};
surfA02cp12Ib4A[] = {};

surfA02cp1Bb5A[] = {};
surfA02cp2Tb6A[] = {};

slA02cpSb1[] = {};


/// GEOMETRY MODULE
/// COPPER STRIP STRUCTURE
//----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
//// Variable designation: geometrical element, structural reference, interface / description, number


/// POINTS
//----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
//// External shell corners


/// LEVEL 2cp1 - copper
//----------------------------------------------------------
//// Copper strip corner 1

ptExA02cp1C1 = newp; Point ( ptExA02cp1C1 ) = { cA02DetShellGeoFx*0 + cA02DetShellGeoFx*mA02cp12DetShellc1*dA00Extx, cA02DetShellGeoFy*0 + cA02DetShellGeoFy*nA02cp12DetShellc1*dA00Exty, lvlA02cp1, lcA02cp2Cnd1 };		        	

/// Lvl 2cp1 - level 2 bottom layer - top 
/// Copper electrode strips

//----------------------------------------------------------
//// Copper strip corner 2

ptExA02cp1C2 = newp; Point ( ptExA02cp1C2 ) = { cA02DetShellGeoFx*dA00Extx + cA02DetShellGeoFx*mA02cp12DetShellc1*dA00Extx, cA02DetShellGeoFy*0 + cA02DetShellGeoFy*nA02cp12DetShellc1*dA00Exty, lvlA02cp1, lcA02cp2Cnd1 };	        			

/// Lvl 2cp1 - level 2 bottom layer - top 
/// Copper electrode strips

//----------------------------------------------------------
//// Copper strip corner 3

ptExA02cp1C3 = newp; Point ( ptExA02cp1C3 ) = { cA02DetShellGeoFx*dA00Extx + cA02DetShellGeoFx*mA02cp12DetShellc1*dA00Extx, cA02DetShellGeoFy*dA00Exty + cA02DetShellGeoFy*nA02cp12DetShellc1*dA00Exty, lvlA02cp1, lcA02cp2Cnd1 };	        

/// Lvl 2cp1 - level 2 bottom layer - top 
/// Copper electrode strips

//----------------------------------------------------------
//// Copper strip corner 4

ptExA02cp1C4 = newp; Point ( ptExA02cp1C4 ) = { cA02DetShellGeoFx*0 + cA02DetShellGeoFx*mA02cp12DetShellc1*dA00Extx, cA02DetShellGeoFy*dA00Exty + cA02DetShellGeoFy*nA02cp12DetShellc1*dA00Exty, lvlA02cp1, lcA02cp2Cnd1 };	        			

/// Lvl 2cp1 - level 2 bottom layer - top 
/// Copper electrode strips


/*
/// LEVEL 2cp2 - copper
//----------------------------------------------------------
//// Copper strip corner 1

ptExA02cp2C1 = newp; Point ( ptExA02cp2C1 ) = { cA02DetShellGeoFx*0 + cA02DetShellGeoFx*mA02cp12DetShellc1*dA00Extx, cA02DetShellGeoFy*0 + cA02DetShellGeoFy*nA02cp12DetShellc1*dA00Exty, lvlA02cp2, lcA02cp2Cnd1 };					

/// Lvl 2cp2 - level 2 top layer 

//----------------------------------------------------------
//// Copper strip corner 2

ptExA02cp2C2 = newp; Point ( ptExA02cp2C2 ) = { cA02DetShellGeoFx*dA00Extx + cA02DetShellGeoFx*mA02cp12DetShellc1*dA00Extx, cA02DetShellGeoFy*0 + cA02DetShellGeoFy*nA02cp12DetShellc1*dA00Exty, lvlA02cp2, lcA02cp2Cnd1 };				

/// Lvl 2cp2 - level 2 top layer 

//----------------------------------------------------------
//// Copper strip corner 3

ptExA02cp2C3 = newp; Point ( ptExA02cp2C3 ) = { cA02DetShellGeoFx*dA00Extx + cA02DetShellGeoFx*mA02cp12DetShellc1*dA00Extx, cA02DetShellGeoFy*dA00Exty + cA02DetShellGeoFy*nA02cp12DetShellc1*dA00Exty, lvlA02cp2, lcA02cp2Cnd1 };			

/// Lvl 2cp2 - level 2 top layer 

//----------------------------------------------------------
//// Copper strip corner 4

ptExA02cp2C4 = newp; Point ( ptExA02cp2C4 ) = { cA02DetShellGeoFx*0 + cA02DetShellGeoFx*mA02cp12DetShellc1*dA00Extx, cA02DetShellGeoFy*dA00Exty + cA02DetShellGeoFy*nA02cp12DetShellc1*dA00Exty, lvlA02cp2, lcA02cp2Cnd1 };				

/// Lvl 2cp2 - level 2 top layer
*/


/// POINTS
//----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
//// Individual strip corners


/// LEVEL 2cp1 - copper

// For m1 In { 0:numA02cpUx }
//  For n1 In { 0:numA02cpUy }

	/// Level 3 - top lower layer - top lower copper electrode
	//----------------------------------------------------------
	//// Copper strip corner 1

	// ptA02cp1C1~{m1}~{n1} = newp; Point ( ptA02cp1C1~{m1}~{n1} ) = { dA02GeoWcxr + cA02CuX2cp12GeoFx*dA02cpAnSzxCo1a + cA02CuX2cp12GeoFx*m1*( dA02cpStrpWth + dA02cpSpWth1 ), 
	// dA02GeoWcyd + cA02CuX2cp12GeoFy*dA02cpAnSzyCo1a + cA02CuX2cp12GeoFy*n1*( dA02cpStrpLth ), lvlA02cp1, lcA02cp2Cnd1 };

	//----------------------------------------------------------
	//// Copper strip corner 2

	// ptA02cp1C2~{m1}~{n1} = newp; Point ( ptA02cp1C2~{m1}~{n1} ) = { dA02GeoWcxr + cA02CuX2cp12GeoFx*dA02cpAnSzxCo1b + cA02CuX2cp12GeoFx*m1*( dA02cpStrpWth + dA02cpSpWth1 ), 
	// dA02GeoWcyd + cA02CuX2cp12GeoFy*dA02cpAnSzyCo1a + cA02CuX2cp12GeoFy*n1*( dA02cpStrpLth ), lvlA02cp1, lcA02cp2Cnd1 };

	//----------------------------------------------------------
	//// Copper strip corner 3

	// ptA02cp1C3~{m1}~{n1} = newp; Point ( ptA02cp1C3~{m1}~{n1} ) = { dA02GeoWcxr + cA02CuX2cp12GeoFx*dA02cpAnSzxCo1b + cA02CuX2cp12GeoFx*m1*( dA02cpStrpWth + dA02cpSpWth1 ), 
	// dA02GeoWcyd + cA02CuX2cp12GeoFy*dA02cpAnSzyCo1b + cA02CuX2cp12GeoFy*n1*( dA02cpStrpLth ), lvlA02cp1, lcA02cp2Cnd1 };

	//----------------------------------------------------------
	//// Copper strip corner 4

	// ptA02cp1C4~{m1}~{n1} = newp; Point ( ptA02cp1C4~{m1}~{n1} ) = { dA02GeoWcxr + cA02CuX2cp12GeoFx*dA02cpAnSzxCo1a + cA02CuX2cp12GeoFx*m1*( dA02cpStrpWth + dA02cpSpWth1 ), 
	// dA02GeoWcyd + cA02CuX2cp12GeoFy*dA02cpAnSzyCo1b + cA02CuX2cp12GeoFy*n1*( dA02cpStrpLth ), lvlA02cp1, lcA02cp2Cnd1 };


//  EndFor
// EndFor


/*
/// LEVEL 2cp2 - copper

// For m1 In { 0:numA02cpUx }
//  For n1 In { 0:numA02cpUy }

	/// Level 4 - top upper layer - top upper copper electrode
	//----------------------------------------------------------
	//// Copper strip corner 1

	// ptA02cp2C1~{m1}~{n1} = newp; Point ( ptA02cp2C1~{m1}~{n1} ) = { dA02GeoWcxr + cA02CuX2cp12GeoFx*dA02cpAnSzxCo1a + cA02CuX2cp12GeoFx*m1*( dA02cpStrpWth + dA02cpSpWth1 ), 
	// dA02GeoWcyd + cA02CuX2cp12GeoFy*dA02cpAnSzyCo1a + cA02CuX2cp12GeoFy*n1*( dA02cpStrpLth ), lvlA02cp2, lcA02cp2Cnd1 };

	//----------------------------------------------------------
	//// Copper strip corner 2

	// ptA02cp2C2~{m1}~{n1} = newp; Point ( ptA02cp2C2~{m1}~{n1} ) = { dA02GeoWcxr + cA02CuX2cp12GeoFx*dA02cpAnSzxCo1b + cA02CuX2cp12GeoFx*m1*( dA02cpStrpWth + dA02cpSpWth1 ), 
	// dA02GeoWcyd + cA02CuX2cp12GeoFy*dA02cpAnSzyCo1a + cA02CuX2cp12GeoFy*n1*( dA02cpStrpLth ), lvlA02cp2, lcA02cp2Cnd1 };

	//----------------------------------------------------------
	//// Copper strip corner 3

	// ptA02cp2C3~{m1}~{n1} = newp; Point ( ptA02cp2C3~{m1}~{n1} ) = { dA02GeoWcxr + cA02CuX2cp12GeoFx*dA02cpAnSzxCo1b + cA02CuX2cp12GeoFx*m1*( dA02cpStrpWth + dA02cpSpWth1 ), 
	// dA02GeoWcyd + cA02CuX2cp12GeoFy*dA02cpAnSzyCo1b + cA02CuX2cp12GeoFy*n1*( dA02cpStrpLth ), lvlA02cp2, lcA02cp2Cnd1 };

	//----------------------------------------------------------
	//// Copper strip corner 4

	// ptA02cp2C4~{m1}~{n1} = newp; Point ( ptA02cp2C4~{m1}~{n1} ) = { dA02GeoWcxr + cA02CuX2cp12GeoFx*dA02cpAnSzxCo1a + cA02CuX2cp12GeoFx*m1*( dA02cpStrpWth + dA02cpSpWth1 ), 
	// dA02GeoWcyd + cA02CuX2cp12GeoFy*dA02cpAnSzyCo1b + cA02CuX2cp12GeoFy*n1*( dA02cpStrpLth ), lvlA02cp2, lcA02cp2Cnd1 };


//  EndFor
*/
// EndFor


/// POINTS
//----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
//// Individual strip corners


/// LEVEL 2cp1 - copper

For m1 In { 0:numA02cpUx }
 For n1 In { 0:numA02cpUy }

	/// Level 3 - top lower layer - top lower copper electrode
	//----------------------------------------------------------
	//// Copper strip corner 1

	ptA02cp1C1~{m1}~{n1} = newp; Point ( ptA02cp1C1~{m1}~{n1} ) = { dA02GeoWcxr + cA02CuX2cp12GeoFx*dA02cpAnSzxCo1a + cA02CuX2cp12GeoFx*m1*( dA02cpStrpWth + dA02cpSpWth1 ), dA02GeoWcyd + cA02CuX2cp12GeoFy*dA02cpAnSzyCo1a + cA02CuX2cp12GeoFy*n1*( dA02cpStrpLth ), lvlA02cp1, lcA02cp2Cnd1 };

	//----------------------------------------------------------
	//// Copper strip corner 2

	ptA02cp1C2~{m1}~{n1} = newp; Point ( ptA02cp1C2~{m1}~{n1} ) = { dA02GeoWcxr + cA02CuX2cp12GeoFx*dA02cpAnSzxCo1b + cA02CuX2cp12GeoFx*m1*( dA02cpStrpWth + dA02cpSpWth1 ), dA02GeoWcyd + cA02CuX2cp12GeoFy*dA02cpAnSzyCo1a + cA02CuX2cp12GeoFy*n1*( dA02cpStrpLth ), lvlA02cp1, lcA02cp2Cnd1 };

	//----------------------------------------------------------
	//// Copper strip corner 3

	ptA02cp1C3~{m1}~{n1} = newp; Point ( ptA02cp1C3~{m1}~{n1} ) = { dA02GeoWcxr + cA02CuX2cp12GeoFx*dA02cpAnSzxCo1b + cA02CuX2cp12GeoFx*m1*( dA02cpStrpWth + dA02cpSpWth1 ), dA02GeoWcyd + cA02CuX2cp12GeoFy*dA02cpAnSzyCo1b + cA02CuX2cp12GeoFy*n1*( dA02cpStrpLth ), lvlA02cp1, lcA02cp2Cnd1 };

	//----------------------------------------------------------
	//// Copper strip corner 4

	ptA02cp1C4~{m1}~{n1} = newp; Point ( ptA02cp1C4~{m1}~{n1} ) = { dA02GeoWcxr + cA02CuX2cp12GeoFx*dA02cpAnSzxCo1a + cA02CuX2cp12GeoFx*m1*( dA02cpStrpWth + dA02cpSpWth1 ), dA02GeoWcyd + cA02CuX2cp12GeoFy*dA02cpAnSzyCo1b + cA02CuX2cp12GeoFy*n1*( dA02cpStrpLth ), lvlA02cp1, lcA02cp2Cnd1 };


 EndFor
EndFor


/*
/// LEVEL 2cp2 - copper

For m1 In { 0:numA02cpUx }
 For n1 In { 0:numA02cpUy }

	/// Level 4 - top upper layer - top upper copper electrode
	//----------------------------------------------------------
	//// Copper strip corner 1

	ptA02cp2C1~{m1}~{n1} = newp; Point ( ptA02cp2C1~{m1}~{n1} ) = { dA02GeoWcxr + cA02CuX2cp12GeoFx*dA02cpAnSzxCo1a + cA02CuX2cp12GeoFx*m1*( dA02cpStrpWth + dA02cpSpWth1 ), dA02GeoWcyd + cA02CuX2cp12GeoFy*dA02cpAnSzyCo1a + cA02CuX2cp12GeoFy*n1*( dA02cpStrpLth ), lvlA02cp2, lcA02cp2Cnd1 };

	//----------------------------------------------------------
	//// Copper strip corner 2

	ptA02cp2C2~{m1}~{n1} = newp; Point ( ptA02cp2C2~{m1}~{n1} ) = { dA02GeoWcxr + cA02CuX2cp12GeoFx*dA02cpAnSzxCo1b + cA02CuX2cp12GeoFx*m1*( dA02cpStrpWth + dA02cpSpWth1 ), dA02GeoWcyd + cA02CuX2cp12GeoFy*dA02cpAnSzyCo1a + cA02CuX2cp12GeoFy*n1*( dA02cpStrpLth ), lvlA02cp2, lcA02cp2Cnd1 };

	//----------------------------------------------------------
	//// Copper strip corner 3

	ptA02cp2C3~{m1}~{n1} = newp; Point ( ptA02cp2C3~{m1}~{n1} ) = { dA02GeoWcxr + cA02CuX2cp12GeoFx*dA02cpAnSzxCo1b + cA02CuX2cp12GeoFx*m1*( dA02cpStrpWth + dA02cpSpWth1 ), dA02GeoWcyd + cA02CuX2cp12GeoFy*dA02cpAnSzyCo1b + cA02CuX2cp12GeoFy*n1*( dA02cpStrpLth ), lvlA02cp2, lcA02cp2Cnd1 };

	//----------------------------------------------------------
	//// Copper strip corner 4

	ptA02cp2C4~{m1}~{n1} = newp; Point ( ptA02cp2C4~{m1}~{n1} ) = { dA02GeoWcxr + cA02CuX2cp12GeoFx*dA02cpAnSzxCo1a + cA02CuX2cp12GeoFx*m1*( dA02cpStrpWth + dA02cpSpWth1 ), dA02GeoWcyd + cA02CuX2cp12GeoFy*dA02cpAnSzyCo1b + cA02CuX2cp12GeoFy*n1*( dA02cpStrpLth ), lvlA02cp2, lcA02cp2Cnd1 };


 EndFor
EndFor
*/


// End






