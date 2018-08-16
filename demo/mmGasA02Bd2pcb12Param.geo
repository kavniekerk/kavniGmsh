// Include "mmGasA00AssemblyParam.geo";

// Include "mmGasA00CuP0cp12Param.geo";
// Include "mmGasA01CuY1cp12Param.geo";
// Include "mmGasA02CuX2cp12Param.geo";

// Include "mmGasA00Bd0pcb12Param.geo";
// Include "mmGasA01Bd1pcb12Param.geo";
// Include "mmGasA02Bd2pcb12Param.geo";

// Include "mmGasA00Str0Wr12Param.geo";
// Include "mmGasA00Cur0Wr12Param.geo";
// Include "mmGasA03Bd0pil2cp12Param.geo";

// Include "mmGasA00CuP0cp12.geo";
// Include "mmGasA01CuY1cp12.geo";
// Include "mmGasA02CuX2cp12.geo";

// Include "mmGasA00CompLab.pro";

// Include "mmGasA00CompLab0Wr12.pro";
// Include "mmGasA00CompLab0Wr12D2x1wire.pro";
// Include "mmGasA00CompLab0Wr12D2y1wire.pro";
// Include "mmGasA00CompLab0Wr12S1x2wire.pro";
// Include "mmGasA00CompLab0Wr12S1y2wire.pro";

// Include "mmGasA00CompLab0Wr12S1x1y1wire.pro";
// Include "mmGasA00CompLab0Wr12D2x2y2wire.pro";

// Include "mmGasA00CompLab0Wr12Tx1y1x2y2wire.pro";

// Include "mmGasA00MeshOp.pro";

// Include "mmGasA00Bd0pcb12.geo";
// Include "mmGasA01Bd1pcb12.geo";
// Include "mmGasA02Bd2pcb12.geo";

// Include "mmGasA00Str0Wr12.geo";
// Include "mmGasA00Str0Wr12D2x1wire.geo";
// Include "mmGasA00Str0Wr12D2y1wire.geo";
// Include "mmGasA00Str0Wr12S1x2wire.geo";
// Include "mmGasA00Str0Wr12S1y2wire.geo";

// Include "mmGasA00Str0Wr12S1x1y1wire.geo";
// Include "mmGasA00Str0Wr12D2x2y2wire.geo";

// Include "mmGasA00Str0Wr12Tx1y1x2y2wire.geo";

// Include "mmGasA00Cur0Wr12.geo";
// Include "mmGasA00Cur0Wr12D2x1wire.geo";
// Include "mmGasA00Cur0Wr12D2y1wire.geo";
// Include "mmGasA00Cur0Wr12S1x2wire.geo";
// Include "mmGasA00Cur0Wr12S1y2wire.geo";

// Include "mmGasA00Cur0Wr12S1x1y1wire.geo";
// Include "mmGasA00Cur0Wr12D2x2y2wire.geo";

// Include "mmGasA00Cur0Wr12Tx1y1x2y2wire.geo";

// Include "mmGasA03Bd0pil2cp12.geo";


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

dA00Extx = 4.25;																																				// shell x dimension x d, in mm
dA00Exty = 4.25;																																				// shell y dimension y d, in mm

//----------------------------------------------------------
//// Current best dimensions for mesh characteristic lengths

lcA02pcb12 = 0.0025;																																			// characterization of pcb layer

//----------------------------------------------------------
//// Geometric copper anode parameters

cA02Bd2pcb12GeoFx = 1;																																			// geometric factor
cA02Bd2pcb12GeoFy = 1;																																			// geometric factor

/// A02 detector boundary 2 pcb counter constant

mA02Bd2pcb12c1 = 0;																																				// counter / constant, pcb / copper x1
nA02Bd2pcb12c1 = 0;																																				// counter / constant, pcb / copper y1
mA02Bd2pcb12c2 = 1;																																				// counter / constant, pcb / copper x2
nA02Bd2pcb12c2 = 1;																																				// counter / constant, pcb / copper y2

//----------------------------------------------------------
//// Copper anode geometric parameters

/// Copper strip width

dA02cpStrpWth_Bd2pcb12 = 0.95*cA00MM;																															// copper anode strip width
dA02cpSpWth1_Bd2pcb12 = 0.05*cA00MM;																															// copper strip x separation width
dA02cpSpWth2_Bd2pcb12 = 0.05*cA00MM;																															// copper strip y separation width

//----------------------------------------------------------
//// Level parameters

lvlA00cp1_Bd2pcb12 = 0;																																			// lvl 0cp1 electrode ground bottom copper level, in mm

thA00cp12_Bd2pcb12 = 0.10;																																		// 0cp12 thickness, in mm

lvlA00cp1_Bd2pcb12 = ( lvlA00cp1_Bd2pcb12 );																													// lvl 0cp1 electrode ground bottom copper level, in mm
lvlA00cp2_Bd2pcb12 = ( lvlA00cp1_Bd2pcb12 + thA00cp12_Bd2pcb12 );																								// lvl 0pcb1 / 0cp2 electrode ground top copper level / thickness, in mm

thA00pcb12_Bd2pcb12 = 0.25;																																		// 0pcb12 thickness, in mm

lvlA00pcb1_Bd2pcb12 = ( lvlA00cp2_Bd2pcb12 );																													// lvl 0pcb1 / 0cp2 bottom electrode copper level, in mm
lvlA00pcb2_Bd2pcb12 = ( lvlA00pcb1_Bd2pcb12 + thA00pcb12_Bd2pcb12 );																							// lvl 0pcb2 / 1pcb1 / 1cp1 top electrode copper level / thickness, in mm

thA01pcb12_Bd2pcb12 = 0.10;																																		// 1pcb12 thickness, in mm

lvlA01pcb1_Bd2pcb12 = ( lvlA00pcb2_Bd2pcb12 );																													// lvl 0pcb2 / 1pcb1 / 1cp1 bottom electrode copper level, in mm
lvlA01pcb2_Bd2pcb12 = ( lvlA01pcb1_Bd2pcb12 + thA01pcb12_Bd2pcb12 );																							// lvl 1pcb2 / 2pcb1 / 1cp2 top electrode copper level / thickness, in mm

thA02pcb12 = 0.25;																																				// 2pcb12 thickness, in mm

lvlA02pcb1 = ( lvlA01pcb2_Bd2pcb12 );																															// lvl 1pcb2 / 2pcb1 / 1cp2 bottom electrode copper level, in mm
lvlA02pcb2 = ( lvlA02pcb1 + thA02pcb12 );																														// lvl 2pcb2 / 2cp1 top electrode copper level / thickness, in mm


/// GEOMETRY MODULE
/// PCB STRUCTURE
//----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
//// Variable designation: geometrical element, structural reference, interface / description, number


/// POINTS
//----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
//// PCB corners

/// Corners - geometry

// ptExA02Bd2pcb2C1 = newp; Point ( ptExA02Bd2pcb2C1 ) = { cA02Bd2pcb12GeoFx*0 + cA02Bd2pcb12GeoFx*mA02Bd2pcb12c1*dA00Extx, cA02Bd2pcb12GeoFy*0 + cA02Bd2pcb12GeoFy*nA02Bd2pcb12c1*dA00Exty, lvlA02pcb2, lcA02pcb12 };
// ptExA02Bd2pcb2C2 = newp; Point ( ptExA02Bd2pcb2C2 ) = { cA02Bd2pcb12GeoFx*dA00Extx + cA02Bd2pcb12GeoFx*mA02Bd2pcb12c1*dA00Extx, cA02Bd2pcb12GeoFy*0 + cA02Bd2pcb12GeoFy*nA02Bd2pcb12c1*dA00Exty, lvlA02pcb2, lcA02pcb12 };
// ptExA02Bd2pcb2C3 = newp; Point ( ptExA02Bd2pcb2C3 ) = { cA02Bd2pcb12GeoFx*dA00Extx + cA02Bd2pcb12GeoFx*mA02Bd2pcb12c1*dA00Extx, cA02Bd2pcb12GeoFy*dA00Exty + cA02Bd2pcb12GeoFy*nA02Bd2pcb12c1*dA00Exty, lvlA02pcb2, lcA02pcb12 };
// ptExA02Bd2pcb2C4 = newp; Point ( ptExA02Bd2pcb2C4 ) = { cA02Bd2pcb12GeoFx*0 + cA02Bd2pcb12GeoFx*mA02Bd2pcb12c1*dA00Extx, cA02Bd2pcb12GeoFy*dA00Exty + cA02Bd2pcb12GeoFy*nA02Bd2pcb12c1*dA00Exty, lvlA02pcb2, lcA02pcb12 };

/// Adjacent corners - geometry

ptExA02Bd2pcb2AdC1 = newp; Point ( ptExA02Bd2pcb2AdC1 ) = { cA02Bd2pcb12GeoFx*0 + cA02Bd2pcb12GeoFx*mA02Bd2pcb12c1*dA00Extx, cA02Bd2pcb12GeoFy*0 + cA02Bd2pcb12GeoFy*nA02Bd2pcb12c1*dA00Exty + dA02cpSpWth2_Bd2pcb12/2, lvlA02pcb2, lcA02pcb12 };
ptExA02Bd2pcb2AdC2 = newp; Point ( ptExA02Bd2pcb2AdC2 ) = { cA02Bd2pcb12GeoFx*dA00Extx + cA02Bd2pcb12GeoFx*mA02Bd2pcb12c1*dA00Extx, cA02Bd2pcb12GeoFy*0 + cA02Bd2pcb12GeoFy*nA02Bd2pcb12c1*dA00Exty + dA02cpSpWth2_Bd2pcb12/2, lvlA02pcb2, lcA02pcb12 };
ptExA02Bd2pcb2AdC3 = newp; Point ( ptExA02Bd2pcb2AdC3 ) = { cA02Bd2pcb12GeoFx*dA00Extx + cA02Bd2pcb12GeoFx*mA02Bd2pcb12c1*dA00Extx, cA02Bd2pcb12GeoFy*dA00Exty + cA02Bd2pcb12GeoFy*nA02Bd2pcb12c1*dA00Exty - dA02cpSpWth2_Bd2pcb12/2, lvlA02pcb2, lcA02pcb12 };
ptExA02Bd2pcb2AdC4 = newp; Point ( ptExA02Bd2pcb2AdC4 ) = { cA02Bd2pcb12GeoFx*0 + cA02Bd2pcb12GeoFx*mA02Bd2pcb12c1*dA00Extx, cA02Bd2pcb12GeoFy*dA00Exty + cA02Bd2pcb12GeoFy*nA02Bd2pcb12c1*dA00Exty - dA02cpSpWth2_Bd2pcb12/2, lvlA02pcb2, lcA02pcb12 };


// End