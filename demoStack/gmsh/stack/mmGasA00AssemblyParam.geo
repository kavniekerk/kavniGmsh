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
/// EXTERNAL SHELL STRUCTURE
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

lcA03ExtBd1 = 0.050;							  																												// characterization of external electrode / cathode

//----------------------------------------------------------
//// Geometric copper anode parameters

cA00DetShellGeoFx = 1;																																			// geometric factor
cA00DetShellGeoFy = 1;																																			// geometric factor

/// A0 detector shell counter constant

mA00DetShellc1 = 0;																																				// counter / constant, copper x1
nA00DetShellc1 = 0;																																				// counter / constant, copper y1
mA00DetShellc2 = 1;																																				// counter / constant, copper x2
nA00DetShellc2 = 1;																																				// counter / constant, copper y2

//----------------------------------------------------------
//// Level parameters

lvlA00cp1_DetShell = 0;																																			// lvl 0cp1 electrode ground bottom copper level, in mm

thA00cp12_DetShell = 0.10;																																		// 0cp12 thickness, in mm

lvlA00cp1_DetShell = ( lvlA00cp1_DetShell );																													// lvl 0cp1 electrode ground bottom copper level, in mm
lvlA00cp2_DetShell = ( lvlA00cp1_DetShell + thA00cp12_DetShell );																								// lvl 0pcb1 / 0cp2 electrode ground top copper level / thickness, in mm

thA00pcb12_DetShell = 0.25;																																		// 0pcb12 thickness, in mm

lvlA00pcb1_DetShell = ( lvlA00cp2_DetShell );																													// lvl 0pcb1 / 0cp2 bottom electrode copper level, in mm
lvlA00pcb2_DetShell = ( lvlA00pcb1_DetShell + thA00pcb12_DetShell );																							// lvl 0pcb2 / 1pcb1 / 1cp1 top electrode copper level / thickness, in mm

thA01pcb12_DetShell = 0.10;																																		// 1pcb12 thickness, in mm

lvlA01pcb1_DetShell = ( lvlA00pcb2_DetShell );																													// lvl 0pcb2 / 1pcb1 / 1cp1 bottom electrode copper level, in mm
lvlA01pcb2_DetShell = ( lvlA01pcb1_DetShell + thA01pcb12_DetShell );																							// lvl 1pcb2 / 2pcb1 / 1cp2 top electrode copper level / thickness, in mm

thA02pcb12_DetShell = 0.25;																																		// 2pcb12 thickness, in mm

lvlA02pcb1_DetShell = ( lvlA01pcb2_DetShell );																													// lvl 1pcb2 / 2pcb1 / 1cp2 bottom electrode copper level, in mm
lvlA02pcb2_DetShell = ( lvlA02pcb1_DetShell + thA02pcb12_DetShell );																							// lvl 2pcb2 / 2cp1 top electrode copper level / thickness, in mm

lvlA03E = 4.00;																																					// distance from lvl 2 electrode to high voltage electrode, in mm
// lvlA03P = 0.10;																																				// distance from lvl 0 electrode to ground electrode, in mm


/// POINTS
//----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
//// External top electrode corners

//----------------------------------------------------------
//// Top electrode - to copper level 0

ptExA00El1 = newp; Point ( ptExA00El1 ) = { cA00DetShellGeoFx*0 + cA00DetShellGeoFx*mA00DetShellc1*dA00Extx, cA00DetShellGeoFy*0 + cA00DetShellGeoFy*nA00DetShellc1*dA00Exty, lvlA02pcb2_DetShell + lvlA03E, lcA03ExtBd1 };
ptExA00El2 = newp; Point ( ptExA00El2 ) = { cA00DetShellGeoFx*0 + cA00DetShellGeoFx*mA00DetShellc1*dA00Extx, cA00DetShellGeoFy*dA00Exty + cA00DetShellGeoFy*nA00DetShellc1*dA00Exty, lvlA02pcb2_DetShell + lvlA03E, lcA03ExtBd1 };
// ptExA00El23 = newp; Point ( ptExA00El23 ) = { cA00DetShellGeoFx*dA00Extx/2 + cA00DetShellGeoFx*mA00DetShellc1*dA00Extx, cA00DetShellGeoFy*dA00Exty + cA00DetShellGeoFy*nA00DetShellc1*dA00Exty, lvlA02pcb2_DetShell + lvlA03E, lcA03ExtBd1 };
ptExA00El3 = newp; Point ( ptExA00El3 ) = { cA00DetShellGeoFx*dA00Extx + cA00DetShellGeoFx*mA00DetShellc1*dA00Extx, cA00DetShellGeoFy*dA00Exty + cA00DetShellGeoFy*nA00DetShellc1*dA00Exty, lvlA02pcb2_DetShell + lvlA03E, lcA03ExtBd1 };
ptExA00El4 = newp; Point ( ptExA00El4 ) = { cA00DetShellGeoFx*dA00Extx + cA00DetShellGeoFx*mA00DetShellc1*dA00Extx, cA00DetShellGeoFy*0 + cA00DetShellGeoFy*nA00DetShellc1*dA00Exty, lvlA02pcb2_DetShell + lvlA03E, lcA03ExtBd1 };
// ptExA00El41 = newp; Point ( ptExA00El41 ) = { cA00DetShellGeoFx*dA00Extx/2 + cA00DetShellGeoFx*mA00DetShellc1*dA00Extx, cA00DetShellGeoFy*0 + cA00DetShellGeoFy*nA00DetShellc1*dA00Exty, lvlA02pcb2_DetShell + lvlA03E, lcA03ExtBd1 };


/*
//----------------------------------------------------------
//// Top electrode - to copper level 1

ptExA00El1 = newp; Point ( ptExA00El1 ) = { cA00DetShellGeoFx*0 + cA00DetShellGeoFx*mA00DetShellc1*dA00Extx, cA00DetShellGeoFy*0 + cA00DetShellGeoFy*nA00DetShellc1*dA00Exty, lvlA02pcb2_DetShell + lvlA03E, lcA03ExtBd1 };
ptExA00El2 = newp; Point ( ptExA00El2 ) = { cA00DetShellGeoFx*0 + cA00DetShellGeoFx*mA00DetShellc1*dA00Extx, cA00DetShellGeoFy*dA00Exty + cA00DetShellGeoFy*nA00DetShellc1*dA00Exty, lvlA02pcb2_DetShell + lvlA03E, lcA03ExtBd1 };
// ptExA00El23 = newp; Point ( ptExA00El23 ) = { cA00DetShellGeoFx*dA00Extx/2 + cA00DetShellGeoFx*mA00DetShellc1*dA00Extx, cA00DetShellGeoFy*0 + cA00DetShellGeoFy*nA00DetShellc1*dA00Exty, lvlA02pcb2_DetShell + lvlA03E, lcA03ExtBd1 };
ptExA00El3 = newp; Point ( ptExA00El3 ) = { cA00DetShellGeoFx*dA00Extx + cA00DetShellGeoFx*mA00DetShellc1*dA00Extx, cA00DetShellGeoFy*dA00Exty + cA00DetShellGeoFy*nA00DetShellc1*dA00Exty, lvlA02pcb2_DetShell + lvlA03E, lcA03ExtBd1 };
ptExA00El4 = newp; Point ( ptExA00El4 ) = { cA00DetShellGeoFx*dA00Extx + cA00DetShellGeoFx*mA00DetShellc1*dA00Extx, cA00DetShellGeoFy*0 + cA00DetShellGeoFy*nA00DetShellc1*dA00Exty, lvlA02pcb2_DetShell + lvlA03E, lcA03ExtBd1 };
// ptExA00El41 = newp; Point ( ptExA00El41 ) = { cA00DetShellGeoFx*dA00Extx/2 + cA00DetShellGeoFx*mA00DetShellc1*dA00Extx, cA00DetShellGeoFy*dA00Exty + cA00DetShellGeoFy*nA00DetShellc1*dA00Exty, lvlA02pcb2_DetShell + lvlA03E, lcA03ExtBd1 };

//----------------------------------------------------------
//// Top electrode - to copper level 2

ptExA00El1 = newp; Point ( ptExA00El1 ) = { cA00DetShellGeoFx*0 + cA00DetShellGeoFx*mA00DetShellc1*dA00Extx, cA00DetShellGeoFy*0 + cA00DetShellGeoFy*nA00DetShellc1*dA00Exty, lvlA02pcb2_DetShell + lvlA03E, lcA03ExtBd1 };
// ptExA00El12 = newp; Point ( ptExA00El12 ) = { cA00DetShellGeoFx*dA00Extx/2 + cA00DetShellGeoFx*mA00DetShellc1*dA00Extx, cA00DetShellGeoFy*0 + cA00DetShellGeoFy*nA00DetShellc1*dA00Exty, lvlA02pcb2_DetShell + lvlA03E, lcA03ExtBd1 };
ptExA00El2 = newp; Point ( ptExA00El2 ) = { cA00DetShellGeoFx*dA00Extx + cA00DetShellGeoFx*mA00DetShellc1*dA00Extx, cA00DetShellGeoFy*0 + cA00DetShellGeoFy*nA00DetShellc1*dA00Exty, lvlA02pcb2_DetShell + lvlA03E, lcA03ExtBd1 };
ptExA00El3 = newp; Point ( ptExA00El3 ) = { cA00DetShellGeoFx*dA00Extx + cA00DetShellGeoFx*mA00DetShellc1*dA00Extx, cA00DetShellGeoFy*dA00Exty + cA00DetShellGeoFy*nA00DetShellc1*dA00Exty, lvlA02pcb2_DetShell + lvlA03E, lcA03ExtBd1 };
// ptExA00El34 = newp; Point ( ptExA00El34 ) = { cA00DetShellGeoFx*dA00Extx/2 + cA00DetShellGeoFx*mA00DetShellc1*dA00Extx, cA00DetShellGeoFy*dA00Exty + cA00DetShellGeoFy*nA00DetShellc1*dA00Exty, lvlA02pcb2_DetShell + lvlA03E, lcA03ExtBd1 };
ptExA00El4 = newp; Point ( ptExA00El4 ) = { cA00DetShellGeoFx*0 + cA00DetShellGeoFx*mA00DetShellc1*dA00Extx, cA00DetShellGeoFy*dA00Exty + cA00DetShellGeoFy*nA00DetShellc1*dA00Exty, lvlA02pcb2_DetShell + lvlA03E, lcA03ExtBd1 };
*/


// End

