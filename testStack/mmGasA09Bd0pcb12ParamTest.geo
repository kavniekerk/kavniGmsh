// Include "mmGasA00Assembly.geo";
// Include "mmGasA00AssemblyParam.geo";

// Include "mmGasA00Bd0pcb12.geo";
// Include "mmGasA00Bd0pcb12CompLab.pro";
/// Include "mmGasA00Bd0pcb12Param.geo";

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
/// PCB STRUCTURE
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

lcA00pcb12 = 0.01;																																			// characterization of pcb layer

//----------------------------------------------------------
//// Geometric copper anode parameters

cA00Bd0pcb12GeoFx = 1;																																			// geometric factor
cA00Bd0pcb12GeoFy = 1;																																			// geometric factor

/// A00 detector boundary 0 pcb counter constant

mA00Bd0pcb12c1 = 0;																																				// counter / constant, pcb / copper x1
nA00Bd0pcb12c1 = 0;																																				// counter / constant, pcb / copper y1
mA00Bd0pcb12c2 = 1;																																				// counter / constant, pcb / copper x2
nA00Bd0pcb12c2 = 1;																																				// counter / constant, pcb / copper y2

//----------------------------------------------------------
//// Copper anode geometric parameters

/// Copper strip width

dA00cpStrpWth_Bd0pcb12 = 0.95*cA00MM;																															// copper anode strip width
dA00cpSpWth1_Bd0pcb12 = 0.05*cA00MM;																															// copper strip y separation width
dA00cpSpWth2_Bd0pcb12 = 0.05*cA00MM;																															// copper strip x separation width

//----------------------------------------------------------
//// Level parameters

lvlA00cp1_Bd0pcb12 = 0;																																			// lvl 0cp1 electrode ground bottom copper level, in mm

thA00cp12_Bd0pcb12 = 0.10;																																		// 0cp12 thickness, in mm

lvlA00cp1_Bd0pcb12 = ( lvlA00cp1_Bd0pcb12 );																													// lvl 0cp1 electrode ground bottom copper level, in mm
lvlA00cp2_Bd0pcb12 = ( lvlA00cp1_Bd0pcb12 + thA00cp12_Bd0pcb12 );																								// lvl 0pcb1 / 0cp2 electrode ground top copper level / thickness, in mm

thA00pcb12 = 0.25;																																				// 0pcb12 thickness, in mm

lvlA00pcb1 = ( lvlA00cp2_Bd0pcb12 );																															// lvl 0pcb1 / 0cp2 bottom electrode copper level, in mm
lvlA00pcb2 = ( lvlA00pcb1 + thA00pcb12 );																														// lvl 0pcb2 / 1pcb1 / 1cp1 top electrode copper level / thickness, in mm

thA01pcb12 = 0.10;

lvlA01pcb2 = ( lvlA00pcb2 + thA01pcb12 );

/// GEOMETRY MODULE
/// PCB STRUCTURE
//----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
//// Variable designation: geometrical element, structural reference, interface / description, number


/// POINTS
//----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
//// Pcb corners

/// Corners - geometry

/*
ptExA00Bd0pcb2C1 = newp; Point ( ptExA00Bd0pcb2C1 ) = { cA00Bd0pcb12GeoFx*0 + cA00Bd0pcb12GeoFx*mA00Bd0pcb12c1*dA00Extx, cA00Bd0pcb12GeoFy*0 + cA00Bd0pcb12GeoFy*nA00Bd0pcb12c1*dA00Exty, lvlA00pcb2, lcA00pcb12 };
ptExA00Bd0pcb2C2 = newp; Point ( ptExA00Bd0pcb2C2 ) = { cA00Bd0pcb12GeoFx*0 + cA00Bd0pcb12GeoFx*mA00Bd0pcb12c1*dA00Extx, cA00Bd0pcb12GeoFy*dA00Exty + cA00Bd0pcb12GeoFy*nA00Bd0pcb12c1*dA00Exty, lvlA00pcb2, lcA00pcb12 };
ptExA00Bd0pcb2C3 = newp; Point ( ptExA00Bd0pcb2C3 ) = { cA00Bd0pcb12GeoFx*dA00Extx + cA00Bd0pcb12GeoFx*mA00Bd0pcb12c1*dA00Extx, cA00Bd0pcb12GeoFy*dA00Exty + cA00Bd0pcb12GeoFy*nA00Bd0pcb12c1*dA00Exty, lvlA00pcb2, lcA00pcb12 };
ptExA00Bd0pcb2C4 = newp; Point ( ptExA00Bd0pcb2C4 ) = { cA00Bd0pcb12GeoFx*dA00Extx + cA00Bd0pcb12GeoFx*mA00Bd0pcb12c1*dA00Extx, cA00Bd0pcb12GeoFy*0 + cA00Bd0pcb12GeoFy*nA00Bd0pcb12c1*dA00Exty, lvlA00pcb2, lcA00pcb12 };
*/

/// Adjacent corners - geometry

// level 1cp1 - 0pcb2 - 1pcb1

ptExA00Bd0pcb2AdC1 = newp; Point ( ptExA00Bd0pcb2AdC1 ) = { cA00Bd0pcb12GeoFx*0 + cA00Bd0pcb12GeoFx*nA00Bd0pcb12c1*dA00Extx + dA00cpSpWth2_Bd0pcb12/2 , cA00Bd0pcb12GeoFy*0 + cA00Bd0pcb12GeoFy*mA00Bd0pcb12c1*dA00Exty, lvlA00pcb2, lcA00pcb12 };
ptExA00Bd0pcb2AdC2 = newp; Point ( ptExA00Bd0pcb2AdC2 ) = { cA00Bd0pcb12GeoFx*0 + cA00Bd0pcb12GeoFx*nA00Bd0pcb12c1*dA00Extx + dA00cpSpWth2_Bd0pcb12/2, cA00Bd0pcb12GeoFy*dA00Exty + cA00Bd0pcb12GeoFy*mA00Bd0pcb12c1*dA00Exty, lvlA00pcb2, lcA00pcb12 };
ptExA00Bd0pcb2AdC3 = newp; Point ( ptExA00Bd0pcb2AdC3 ) = { cA00Bd0pcb12GeoFx*dA00Extx + cA00Bd0pcb12GeoFx*nA00Bd0pcb12c1*dA00Extx - dA00cpSpWth2_Bd0pcb12/2, cA00Bd0pcb12GeoFy*dA00Exty + cA00Bd0pcb12GeoFy*mA00Bd0pcb12c1*dA00Exty, lvlA00pcb2, lcA00pcb12 };
ptExA00Bd0pcb2AdC4 = newp; Point ( ptExA00Bd0pcb2AdC4 ) = { cA00Bd0pcb12GeoFx*dA00Extx + cA00Bd0pcb12GeoFx*nA00Bd0pcb12c1*dA00Extx - dA00cpSpWth2_Bd0pcb12/2, cA00Bd0pcb12GeoFy*0 + cA00Bd0pcb12GeoFy*mA00Bd0pcb12c1*dA00Exty, lvlA00pcb2, lcA00pcb12 };


/*
// level 1cp2 - 1pcb2 - 2pcb1

ptExA01Bd1pcb2AdC1 = newp; Point ( ptExA01Bd1pcb2AdC1 ) = { cA00Bd0pcb12GeoFx*0 + cA00Bd0pcb12GeoFx*nA00Bd0pcb12c1*dA00Extx + dA00cpSpWth2_Bd0pcb12/2, cA00Bd0pcb12GeoFy*0 + cA00Bd0pcb12GeoFy*mA00Bd0pcb12c1*dA00Exty, lvlA01pcb2, lcA00pcb12 };
ptExA01Bd1pcb2AdC2 = newp; Point ( ptExA01Bd1pcb2AdC2 ) = { cA00Bd0pcb12GeoFx*0 + cA00Bd0pcb12GeoFx*nA00Bd0pcb12c1*dA00Extx + dA00cpSpWth2_Bd0pcb12/2, cA00Bd0pcb12GeoFy*dA00Exty + cA00Bd0pcb12GeoFy*mA00Bd0pcb12c1*dA00Exty, lvlA01pcb2, lcA00pcb12 };
ptExA01Bd1pcb2AdC3 = newp; Point ( ptExA01Bd1pcb2AdC3 ) = { cA00Bd0pcb12GeoFx*dA00Extx + cA00Bd0pcb12GeoFx*nA00Bd0pcb12c1*dA00Extx - dA00cpSpWth2_Bd0pcb12/2, cA00Bd0pcb12GeoFy*dA00Exty + cA00Bd0pcb12GeoFy*mA00Bd0pcb12c1*dA00Exty, lvlA01pcb2, lcA00pcb12 };
ptExA01Bd1pcb2AdC4 = newp; Point ( ptExA01Bd1pcb2AdC4 ) = { cA00Bd0pcb12GeoFx*dA00Extx + cA00Bd0pcb12GeoFx*nA00Bd0pcb12c1*dA00Extx - dA00cpSpWth2_Bd0pcb12/2, cA00Bd0pcb12GeoFy*0 + cA00Bd0pcb12GeoFy*mA00Bd0pcb12c1*dA00Exty, lvlA01pcb2, lcA00pcb12 };
*/


// End