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
/// COPPER PLANE STRUCTURE
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

lcA00cp12Cnd1 = 0.01;																																			// characterization of metal surfaces / copper conductor boundary

//----------------------------------------------------------
//// Copper anode geometric parameters

cA00CuP0cp12GeoFx = 1;																																			// geometric factor
cA00CuP0cp12GeoFy = 1;																																			// geometric factor

/// A00 counter constant

mA00c1 = 0;																																						// counter / constant, copper x1
nA00c1 = 0;																																						// counter / constant, copper y1
mA00c2 = 1;																																						// counter / constant, copper x2
nA00c2 = 1;																																						// counter / constant, copper y2

//----------------------------------------------------------
//// Geometric copper anode parameters

cA00cp12DetShellGeoFx = 1;																																		// geometric factor
cA00cp12DetShellGeoFy = 1;																																		// geometric factor

/// A00 detector shell counter constant

mA00cp12DetShellc1 = 0;																																			// counter / constant, copper x1
nA00cp12DetShellc1 = 0;																																			// counter / constant, copper y1
mA00cp12DetShellc2 = 1;																																			// counter / constant, copper x2
nA00cp12DetShellc2 = 1;																																			// counter / constant, copper y2

//----------------------------------------------------------
//// Level parameters

lvlA00cp1_Y0cp12 = 0;																																			// lvl 0cp1 electrode ground bottom copper level, in mm

thA00cp12 = 0.10;																																				// 0cp12 thickness, in mm

lvlA00cp1 = ( lvlA00cp1_Y0cp12 );																																// lvl 0cp1 electrode ground bottom copper level, in mm
lvlA00cp2 = ( lvlA00cp1 + thA00cp12 );																															// lvl 0pcb1 / 0cp2 electrode ground top copper level / thickness, in mm


/// GEOMETRY MODULE
/// COPPER CONDUCTOR STRUCTURE
//----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
//// Variable designation: geometrical element, structural reference, interface / description, number


/// POINTS
//----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
//// Exterior corners


/// LEVEL 0cp1 - copper
//----------------------------------------------------------
//// Copper strip corner 1

// ptExA00cp1C1 = newp; Point ( ptExA00cp1C1 ) = { cA00cp12DetShellGeoFx*0 + cA00cp12DetShellGeoFx*mA00cp12DetShellc1*dA00Extx, cA00cp12DetShellGeoFy*0 + cA00cp12DetShellGeoFy*nA00cp12DetShellc1*dA00Exty, lvlA00cp1, lcA00cp12Cnd1 };	

/// lvl 0cp1 - level 0 ground bottom layer - bottom lower copper electrode

//----------------------------------------------------------
//// Copper strip corner 2

// ptExA00cp1C2 = newp; Point ( ptExA00cp1C2 ) = { cA00cp12DetShellGeoFx*dA00Extx + cA00cp12DetShellGeoFx*mA00cp12DetShellc1*dA00Extx, cA00cp12DetShellGeoFy*0 + cA00cp12DetShellGeoFy*nA00cp12DetShellc1*dA00Exty, lvlA00cp1, lcA00cp12Cnd1 };				

/// lvl 0cp1 - level 0 ground bottom layer - bottom lower copper electrode 

//----------------------------------------------------------
//// Copper strip corner 3

// ptExA00cp1C3 = newp; Point ( ptExA00cp1C3 ) = { cA00cp12DetShellGeoFx*dA00Extx + cA00cp12DetShellGeoFx*mA00cp12DetShellc1*dA00Extx, cA00cp12DetShellGeoFy*dA00Exty + cA00cp12DetShellGeoFy*nA00cp12DetShellc1*dA00Exty, lvlA00cp1, lcA00cp12Cnd1 };					
																																																					
/// lvl 0cp1 - level 0 ground bottom layer - bottom lower copper electrode

//----------------------------------------------------------
//// Copper strip corner 4

// ptExA00cp1C4 = newp; Point ( ptExA00cp1C4 ) = { cA00cp12DetShellGeoFx*0 + cA00cp12DetShellGeoFx*mA00cp12DetShellc1*dA00Extx, cA00cp12DetShellGeoFy*dA00Exty + cA00cp12DetShellGeoFy*nA00cp12DetShellc1*dA00Exty, lvlA00cp1, lcA00cp12Cnd1 };				

/// lvl 0cp1 - level 0 ground bottom layer - bottom lower copper electrode


/// LEVEL 0cp2 - copper
//----------------------------------------------------------
//// Copper strip corner 1

// ptExA00cp2C1 = newp; Point ( ptExA00cp2C1 ) = { cA00cp12DetShellGeoFx*0 + cA00cp12DetShellGeoFx*mA00cp12DetShellc1*dA00Extx, cA00cp12DetShellGeoFy*0 + cA00cp12DetShellGeoFy*nA00cp12DetShellc1*dA00Exty, lvlA00cp2, lcA00cp12Cnd1 };					

/// lvl 0cp2 - level 0 ground top layer

//----------------------------------------------------------
//// Copper strip corner 2

// ptExA00cp2C2 = newp; Point ( ptExA00cp2C2 ) = { cA00cp12DetShellGeoFx*dA00Extx + cA00cp12DetShellGeoFx*mA00cp12DetShellc1*dA00Extx, cA00cp12DetShellGeoFy*0 + cA00cp12DetShellGeoFy*nA00cp12DetShellc1*dA00Exty, lvlA00cp2, lcA00cp12Cnd1 };				

/// lvl 0cp2 - level 0 ground top layer

//----------------------------------------------------------
//// Copper strip corner 3

// ptExA00cp2C3 = newp; Point ( ptExA00cp2C3 ) = { cA00cp12DetShellGeoFx*dA00Extx + cA00cp12DetShellGeoFx*mA00cp12DetShellc1*dA00Extx, cA00cp12DetShellGeoFy*dA00Exty + cA00cp12DetShellGeoFy*nA00cp12DetShellc1*dA00Exty, lvlA00cp2, lcA00cp12Cnd1 };			

/// lvl 0cp2 - level 0 ground top layer

//----------------------------------------------------------
//// Copper strip corner 4

// ptExA00cp2C4 = newp; Point ( ptExA00cp2C4 ) = { cA00cp12DetShellGeoFx*0 + cA00cp12DetShellGeoFx*mA00cp12DetShellc1*dA00Extx, cA00cp12DetShellGeoFy*dA00Exty + cA00cp12DetShellGeoFy*nA00cp12DetShellc1*dA00Exty, lvlA00cp2, lcA00cp12Cnd1 };				

/// lvl 0cp2 - level 0 ground top layer


/// POINTS
//----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
//// Exterior corners


/*
/// LEVEL 0cp1 - copper
//----------------------------------------------------------
//// Copper strip corner 1

ptExA00cp1C1 = newp; Point ( ptExA00cp1C1 ) = { cA00CuP0cp12GeoFx*0 + cA00CuP0cp12GeoFx*mA00c1*dA00Extx, cA00CuP0cp12GeoFy*0 + cA00CuP0cp12GeoFy*nA00c1*dA00Exty, lvlA00cp1, lcA00cp12Cnd1 };								

/// lvl A00cp1 - level 0 bottom layer - bottom lower copper

//----------------------------------------------------------
//// Copper strip corner 2

ptExA00cp1C2 = newp; Point ( ptExA00cp1C2 ) = { cA00CuP0cp12GeoFx*0 + cA00CuP0cp12GeoFx*mA00c1*dA00Extx, cA00CuP0cp12GeoFy*dA00Exty + cA00CuP0cp12GeoFy*nA00c1*dA00Exty, lvlA00cp1, lcA00cp12Cnd1 };							

/// lvl A00cp1 - level 0 bottom layer - bottom lower copper

//----------------------------------------------------------
//// Copper strip corner 3

ptExA00cp1C3 = newp; Point ( ptExA00cp1C3 ) = { cA00CuP0cp12GeoFx*dA00Extx + cA00CuP0cp12GeoFx*mA00c1*dA00Extx, cA00CuP0cp12GeoFy*dA00Exty + cA00CuP0cp12GeoFy*nA00c1*dA00Exty, lvlA00cp1, lcA00cp12Cnd1 };						

/// lvl A00cp1 - level 0 bottom layer - bottom lower copper

//----------------------------------------------------------
//// Copper strip corner 4

ptExA00cp1C4 = newp; Point ( ptExA00cp1C4 ) = { cA00CuP0cp12GeoFx*dA00Extx + cA00CuP0cp12GeoFx*mA00c1*dA00Extx, cA00CuP0cp12GeoFy*0 + cA00CuP0cp12GeoFy*nA00c1*dA00Exty, lvlA00cp1, lcA00cp12Cnd1 };							

/// lvl A00cp1 - level 0 bottom layer - bottom lower copper
*/


/// LEVEL 0cp2 - copper
//----------------------------------------------------------
//// Copper strip corner 1

ptExA00cp2C1 = newp; Point ( ptExA00cp2C1 ) = { cA00CuP0cp12GeoFx*0 + cA00CuP0cp12GeoFx*mA00c1*dA00Extx, cA00CuP0cp12GeoFy*0 + cA00CuP0cp12GeoFy*nA00c1*dA00Exty, lvlA00cp2, lcA00cp12Cnd1 };								

/// lvl A00cp2 - level 0 top layer

//----------------------------------------------------------
//// Copper strip corner 2

ptExA00cp2C2 = newp; Point ( ptExA00cp2C2 ) = { cA00CuP0cp12GeoFx*0 + cA00CuP0cp12GeoFx*mA00c1*dA00Extx, cA00CuP0cp12GeoFy*dA00Exty + cA00CuP0cp12GeoFy*nA00c1*dA00Exty, lvlA00cp2, lcA00cp12Cnd1 };							

/// lvl A00cp2 - level 0 top layer

//----------------------------------------------------------
//// Copper strip corner 3

ptExA00cp2C3 = newp; Point ( ptExA00cp2C3 ) = { cA00CuP0cp12GeoFx*dA00Extx + cA00CuP0cp12GeoFx*mA00c1*dA00Extx, cA00CuP0cp12GeoFy*dA00Exty + cA00CuP0cp12GeoFy*nA00c1*dA00Exty, lvlA00cp2, lcA00cp12Cnd1 };						

/// lvl A00cp2 - level 0 top layer

//----------------------------------------------------------
//// Copper strip corner 4

ptExA00cp2C4 = newp; Point ( ptExA00cp2C4 ) = { cA00CuP0cp12GeoFx*dA00Extx + cA00CuP0cp12GeoFx*mA00c1*dA00Extx, cA00CuP0cp12GeoFy*0 + cA00CuP0cp12GeoFy*nA00c1*dA00Exty, lvlA00cp2, lcA00cp12Cnd1 };							

/// lvl A00cp2 - level 0 top layer


// End