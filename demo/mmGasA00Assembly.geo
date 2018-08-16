Include "mmGasA00AssemblyParam.geo";

// Include "mmGasA00CuP0cp12Param.geo";
// Include "mmGasA01CuY1cp12Param.geo";
// Include "mmGasA02CuX2cp12Param.geo";

// Include "mmGasA00Bd0pcb12Param.geo";
// Include "mmGasA01Bd1pcb12Param.geo";
// Include "mmGasA02Bd2pcb12Param.geo";

// Include "mmGasA00Str0Wr12Param.geo";
// Include "mmGasA00Cur0Wr12Param.geo";
// Include "mmGasA03Bd0pil2cp12Param.geo";

Include "mmGasA00CuP0cp12.geo";
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

Include "mmGasA00CompLab0Wr12Tx1y1x2y2wire.pro";

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

Include "mmGasA00Cur0Wr12Tx1y1x2y2wire.geo";

// Include "mmGasA03Bd0pil2cp12.geo";

// Include "mmGasA00Test.geo";


/// GEOMETRY MODULE
/// PCB STRUCTURE
//----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
//// Variable designation: geometrical element, structural reference, interface / description, number


/// LINES
//----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
//// Border lines

/*
/// PCB LEVEL 0
//----------------------------------------------------------
//// Connect the upper and lower points with lines to form the pcb 0 layer

// lA00pcb12Ib1 = newl; Line ( lA00pcb12Ib1 ) = { ptExA00cp2C1, ptExA01cp1C1 };
// Transfinite Line { lA00pcb12Ib1 } = lA00pcb12Ib1;
// lA00pcb12Ib2 = newl; Line ( lA00pcb12Ib2 ) = { ptExA00cp2C2, ptExA01cp1C2 };
// Transfinite Line { lA00pcb12Ib2 } = lA00pcb12Ib2;
// lA00pcb12Ib3 = newl; Line ( lA00pcb12Ib3 ) = { ptExA00cp2C3, ptExA01cp1C3 };
// Transfinite Line { lA00pcb12Ib3 } = lA00pcb12Ib3;
// lA00pcb12Ib4 = newl; Line ( lA00pcb12Ib4 ) = { ptExA00cp2C4, ptExA01cp1C4 };
// Transfinite Line { lA00pcb12Ib4 } = lA00pcb12Ib4;

//----------------------------------------------------------
//// Connect the upper and lower copper conductor - level 0

lA00Bd0pcb12Ib1 = newl; Line ( lA00Bd0pcb12Ib1 ) = { ptExA00cp2C1, ptExA01cp1C1 };
Transfinite Line { lA00Bd0pcb12Ib1 } = lA00Bd0pcb12Ib1;
lA00Bd0pcb12Ib2 = newl; Line ( lA00Bd0pcb12Ib2 ) = { ptExA00cp2C2, ptExA01cp1C2 };
Transfinite Line { lA00Bd0pcb12Ib2 } = lA00Bd0pcb12Ib2;
lA00Bd0pcb12Ib3 = newl; Line ( lA00Bd0pcb12Ib3 ) = { ptExA00cp2C3, ptExA01cp1C3 };
Transfinite Line { lA00Bd0pcb12Ib3 } = lA00Bd0pcb12Ib3;
lA00Bd0pcb12Ib4 = newl; Line ( lA00Bd0pcb12Ib4 ) = { ptExA00cp2C4, ptExA01cp1C4 };
Transfinite Line { lA00Bd0pcb12Ib4 } = lA00Bd0pcb12Ib4;

//----------------------------------------------------------
//// Connect the pcb to the lower copper conductor - level 0

// lA00Bd0pcb12Ib1 = newl; Line ( lA00Bd0pcb12Ib1 ) = { ptExA00cp2C1, ptExA01cp1C1 };
// Transfinite Line { lA00Bd0pcb12Ib1 } = lA00Bd0pcb12Ib1;
// lA00Bd0pcb12Ib2 = newl; Line ( lA00Bd0pcb12Ib2 ) = { ptExA00cp2C2, ptExA01cp1C2 };
// Transfinite Line { lA00Bd0pcb12Ib2 } = lA00Bd0pcb12Ib2;
// lA00Bd0pcb12Ib3 = newl; Line ( lA00Bd0pcb12Ib3 ) = { ptExA00cp2C3, ptExA01cp1C3 };
// Transfinite Line { lA00Bd0pcb12Ib3 } = lA00Bd0pcb12Ib3;
// lA00Bd0pcb12Ib4 = newl; Line ( lA00Bd0pcb12Ib4 ) = { ptExA00cp2C4, ptExA01cp1C4 };
// Transfinite Line { lA00Bd0pcb12Ib4 } = lA00Bd0pcb12Ib4;

//----------------------------------------------------------
//// Connect the pcb to the upper level lower copper conductor - level 0

lA00Bd0pcb2Tb1 = newl; Line ( lA00Bd0pcb2Tb1 ) = { ptExA01cp1C1, ptExA00Bd0pcb2AdC1 };
Transfinite Line { lA00Bd0pcb2Tb1 } = lA00Bd0pcb2Tb1;
lA00Bd0pcb2Tb2 = newl; Line ( lA00Bd0pcb2Tb2 ) = { ptExA01cp1C2, ptExA00Bd0pcb2AdC2 };
Transfinite Line { lA00Bd0pcb2Tb2 } = lA00Bd0pcb2Tb2;
lA00Bd0pcb2Tb3 = newl; Line ( lA00Bd0pcb2Tb3 ) = { ptExA01cp1C3, ptExA00Bd0pcb2AdC3 };
Transfinite Line { lA00Bd0pcb2Tb3 } = lA00Bd0pcb2Tb3;
lA00Bd0pcb2Tb4 = newl; Line ( lA00Bd0pcb2Tb4 ) = { ptExA01cp1C4, ptExA00Bd0pcb2AdC4 };
Transfinite Line { lA00Bd0pcb2Tb4 } = lA00Bd0pcb2Tb4;

//----------------------------------------------------------
//// Connect the top electrode to the level 0 - pcb top

// ltExA00EcC1 = newl; Line ( ltExA00EcC1 ) = { ptExA00EcC1, ptExA01cp1C1 };
// Transfinite Line { ltExA00EcC1 } = ltExA00EcC1;
// ltExA00EcM12 = newl; Line ( ltExA00EcM12 ) = { ptExA00EcM12, ltExA00Ptmc1 };
// Transfinite Line { ltExA00EcM12 } = ltExA00EcM12;
// ltExA00EcC2 = newl; Line ( ltExA00EcC2 ) = { ptExA00EcC2, ptExA01cp1C4 };
// Transfinite Line { ltExA00EcC2 } = ltExA00EcC2;
// ltExA00EcC3 = newl; Line ( ltExA00EcC3 ) = { ptExA00EcC3, ptExA01cp1C3 };
// Transfinite Line { ltExA00EcC3 } = ltExA00EcC3;
// ltExA00EcM34 = newl; Line ( ltExA00EcM34 ) = { ptExA00EcM34, ltExA00Ptmc3 };
// Transfinite Line { ltExA00EcM34 } = ltExA00EcM34;
// ltExA00EcC4 = newl; Line ( ltExA00EcC4 ) = { ptExA00EcC4, ptExA01cp1C2 };
// Transfinite Line { ltExA00EcC4 } = ltExA00EcC4;


/// PCB LEVEL 2
//----------------------------------------------------------
//// Connect the upper and lower points with lines to form the pcb 2 layer

// lA02pcb12Ib1 = newl; Line ( lA02pcb12Ib1 ) = { ptExA01cp2C1, ptExA02cp1C1 };
// Transfinite Line { lA02pcb12Ib1 } = lA02pcb12Ib1;
// lA02pcb12Ib2 = newl; Line ( lA02pcb12Ib2 ) = { ptExA01cp2C4, ptExA02cp1C2 };
// Transfinite Line { lA02pcb12Ib2 } = lA02pcb12Ib2;
// lA02pcb12Ib3 = newl; Line ( lA02pcb12Ib3 ) = { ptExA01cp2C3, ptExA02cp1C3 };
// Transfinite Line { lA02pcb12Ib3 } = lA02pcb12Ib3;
// lA02pcb12Ib4 = newl; Line ( lA02pcb12Ib4 ) = { ptExA01cp2C2, ptExA02cp1C4 };
// Transfinite Line { lA02pcb12Ib4 } = lA02pcb12Ib4;

//----------------------------------------------------------
//// Connect the pcb to the lower copper conductor - level 2

lA00Bd2pcb12Ib1 = newl; Line ( lA00Bd2pcb12Ib1 ) = { ptExA01cp2C1, ptExA02cp1C1 };
Transfinite Line { lA00Bd2pcb12Ib1 } = lA00Bd2pcb12Ib1;
lA00Bd2pcb12Ib2 = newl; Line ( lA00Bd2pcb12Ib2 ) = { ptExA01cp2C4, ptExA02cp1C2 };
Transfinite Line { lA00Bd2pcb12Ib2 } = lA00Bd2pcb12Ib2;
lA00Bd2pcb12Ib3 = newl; Line ( lA00Bd2pcb12Ib3 ) = { ptExA01cp2C3, ptExA02cp1C3 };
Transfinite Line { lA00Bd2pcb12Ib3 } = lA00Bd2pcb12Ib3;
lA00Bd2pcb12Ib4 = newl; Line ( lA00Bd2pcb12Ib4 ) = { ptExA01cp2C2, ptExA02cp1C4 };
Transfinite Line { lA00Bd2pcb12Ib4 } = lA00Bd2pcb12Ib4;

//----------------------------------------------------------
//// Connect the pcb to the lower copper conductor - level 2

// lA00Bd2pcb12Ib1 = newl; Line ( lA00Bd2pcb12Ib1 ) = { ptExA01cp2C1, ptExA02cp1C1 };
// Transfinite Line { lA00Bd2pcb12Ib1 } = lA00Bd2pcb12Ib1;
// lA00Bd2pcb12Ib2 = newl; Line ( lA00Bd2pcb12Ib2 ) = { ptExA01cp2C4, ptExA02cp1C2 };
// Transfinite Line { lA00Bd2pcb12Ib2 } = lA00Bd2pcb12Ib2;
// lA00Bd2pcb12Ib3 = newl; Line ( lA00Bd2pcb12Ib3 ) = { ptExA01cp2C3, ptExA02cp1C3 };
// Transfinite Line { lA00Bd2pcb12Ib3 } = lA00Bd2pcb12Ib3;
// lA00Bd2pcb12Ib4 = newl; Line ( lA00Bd2pcb12Ib4 ) = { ptExA01cp2C2, ptExA02cp1C4 };
// Transfinite Line { lA00Bd2pcb12Ib4 } = lA00Bd2pcb12Ib4;

//----------------------------------------------------------
//// Connect the pcb to the upper level lower copper conductor - level 2

lA00Bd2pcb2Tb1 = newl; Line ( lA00Bd2pcb2Tb1 ) = { ptExA02cp1C1, ptExA00Bd2pcb2AdC1 };
Transfinite Line { lA00Bd2pcb2Tb1 } = lA00Bd2pcb2Tb1;
lA00Bd2pcb2Tb2 = newl; Line ( lA00Bd2pcb2Tb2 ) = { ptExA02cp1C2, ptExA00Bd2pcb2AdC2 };
Transfinite Line { lA00Bd2pcb2Tb2 } = lA00Bd2pcb2Tb2;
lA00Bd2pcb2Tb3 = newl; Line ( lA00Bd2pcb2Tb3 ) = { ptExA02cp1C3, ptExA00Bd2pcb2AdC3 };
Transfinite Line { lA00Bd2pcb2Tb3 } = lA00Bd2pcb2Tb3;
lA00Bd2pcb2Tb4 = newl; Line ( lA00Bd2pcb2Tb4 ) = { ptExA02cp1C4, ptExA00Bd2pcb2AdC4 };
Transfinite Line { lA00Bd2pcb2Tb4 } = lA00Bd2pcb2Tb4;

//----------------------------------------------------------
//// Connect the top electrode to the level 2 - pcb top

// ltExA00EcC1 = newl; Line ( ltExA00EcC1 ) = { ptExA00EcC1, ptExA02cp2C1 };
// Transfinite Line { ltExA00EcC1 } = ltExA00EcC1;
// ltExA00EcM12 = newl; Line ( ltExA00EcM12 ) = { ptExA00EcM12, ltExA00Ptmc1 };
// Transfinite Line { ltExA00EcM12 } = ltExA00EcM12;
// ltExA00EcC2 = newl; Line ( ltExA00EcC2 ) = { ptExA00EcC2, ptExA02cp2C2 };
// Transfinite Line { ltExA00EcC2 } = ltExA00EcC2;
// ltExA00EcC3 = newl; Line ( ltExA00EcC3 ) = { ptExA00EcC3, ptExA02cp2C3 };
// Transfinite Line { ltExA00EcC3 } = ltExA00EcC3;
// ltExA00EcM34 = newl; Line ( ltExA00EcM34 ) = { ptExA00EcM34, ltExA00Ptmc3 };
// Transfinite Line { ltExA00EcM34 } = ltExA00EcM34;
// ltExA00EcC4 = newl; Line ( ltExA00EcC4 ) = { ptExA00EcC4, ptExA02cp2C4 };
// Transfinite Line { ltExA00EcC4 } = ltExA00EcC4;
*/


/// GEOMETRY MODULE
/// EXTERNAL SHELL STRUCTURE
//----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
//// Variable designation: geometrical element, structural reference, interface / description, number


/*
/// LINES
//----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
//// Border conductor lines

//----------------------------------------------------------
//// Points between half surface ground and upper bottom (1 & 2)

lExA00cp1M12 = newp; Point ( lExA00cp1M12 ) = { cA00DetShellGeoFx*dA00Extx/2 + cA00DetShellGeoFx*mA00DetShellc1*dA00Extx, cA00DetShellGeoFy*0 + cA00DetShellGeoFy*nA00DetShellc1*dA00Exty, lvlA00cp1, lcA00cp12Cnd1 };
lExA01cp1M12 = newp; Point ( lExA01cp1M12 ) = { cA00DetShellGeoFx*dA00Extx/2 + cA00DetShellGeoFx*mA00DetShellc1*dA00Extx, cA00DetShellGeoFy*0 + cA00DetShellGeoFy*nA00DetShellc1*dA00Exty, lvlA01cp1, lcA01cp12Cnd1 };

lExA00cp1M23 = newp; Point ( lExA00cp1M23 ) = { cA00DetShellGeoFx*dA00Extx + cA00DetShellGeoFx*mA00DetShellc1*dA00Extx, cA00DetShellGeoFy*dA00Exty/2 + cA00DetShellGeoFy*nA00DetShellc1*dA00Exty, lvlA00cp1, lcA00cp12Cnd1 };
lExA01cp1M23 = newp; Point ( lExA01cp1M23 ) = { cA00DetShellGeoFx*dA00Extx + cA00DetShellGeoFx*mA00DetShellc1*dA00Extx, cA00DetShellGeoFy*dA00Exty/2 + cA00DetShellGeoFy*nA00DetShellc1*dA00Exty, lvlA01cp1, lcA01cp12Cnd1 };

lExA00cp1M34 = newp; Point ( lExA00cp1M34 ) = { cA00DetShellGeoFx*dA00Extx/2 + cA00DetShellGeoFx*mA00DetShellc1*dA00Extx, cA00DetShellGeoFy*dA00Exty + cA00DetShellGeoFy*nA00DetShellc1*dA00Exty, lvlA00cp1, lcA00cp12Cnd1 };
lExA01cp1M34 = newp; Point ( lExA01cp1M34 ) = { cA00DetShellGeoFx*dA00Extx/2 + cA00DetShellGeoFx*mA00DetShellc1*dA00Extx, cA00DetShellGeoFy*dA00Exty + cA00DetShellGeoFy*nA00DetShellc1*dA00Exty, lvlA01cp1, lcA01cp12Cnd1 };

lExA00cp1M41 = newp; Point ( lExA00cp1M41 ) = { cA00DetShellGeoFx*0 + cA00DetShellGeoFx*mA00DetShellc1*dA00Extx, cA00DetShellGeoFy*dA00Exty/2 + cA00DetShellGeoFy*nA00DetShellc1*dA00Exty, lvlA00cp1, lcA00cp12Cnd1 };
lExA01cp1M41 = newp; Point ( lExA01cp1M41 ) = { cA00DetShellGeoFx*0 + cA00DetShellGeoFx*mA00DetShellc1*dA00Extx, cA00DetShellGeoFy*dA00Exty/2 + cA00DetShellGeoFy*nA00DetShellc1*dA00Exty, lvlA01cp1, lcA01cp12Cnd1 };

//----------------------------------------------------------
//// Points between half surface bottom and top upper layers (3 & 4)

lExA00cp1M12 = newp; Point ( lExA00cp1M12 ) = { cA00DetShellGeoFx*dA00Extx/2 + cA00DetShellGeoFx*mA00DetShellc1*dA00Extx, cA00DetShellGeoFy*0 + cA00DetShellGeoFy*nA00DetShellc1*dA00Exty, lvlA00cp2, lcA00cp12Cnd1 };
lExA01cp1M12 = newp; Point ( lExA01cp1M12 ) = { cA00DetShellGeoFx*dA00Extx/2 + cA00DetShellGeoFx*mA00DetShellc1*dA00Extx, cA00DetShellGeoFy*0 + cA00DetShellGeoFy*nA00DetShellc1*dA00Exty, lvlA01cp2, lcA01cp12Cnd1 };

lExA00cp1M23 = newp; Point ( lExA00cp1M23 ) = { cA00DetShellGeoFx*dA00Extx + cA00DetShellGeoFx*mA00DetShellc1*dA00Extx, cA00DetShellGeoFy*dA00Exty/2 + cA00DetShellGeoFy*nA00DetShellc1*dA00Exty, lvlA00cp2, lcA00cp12Cnd1 };
lExA01cp1M23 = newp; Point ( lExA01cp1M23 ) = { cA00DetShellGeoFx*dA00Extx + cA00DetShellGeoFx*mA00DetShellc1*dA00Extx, cA00DetShellGeoFy*dA00Exty/2 + cA00DetShellGeoFy*nA00DetShellc1*dA00Exty, lvlA01cp2, lcA01cp12Cnd1 };

lExA00cp1M34 = newp; Point ( lExA00cp1M34 ) = { cA00DetShellGeoFx*dA00Extx/2 + cA00DetShellGeoFx*mA00DetShellc1*dA00Extx, cA00DetShellGeoFy*dA00Exty + cA00DetShellGeoFy*nA00DetShellc1*dA00Exty, lvlA00cp2, lcA00cp12Cnd1 };
lExA01cp1M34 = newp; Point ( lExA01cp1M34 ) = { cA00DetShellGeoFx*dA00Extx/2 + cA00DetShellGeoFx*mA00DetShellc1*dA00Extx, cA00DetShellGeoFy*dA00Exty + cA00DetShellGeoFy*nA00DetShellc1*dA00Exty, lvlA01cp2, lcA01cp12Cnd1 };

ExA00cp1M41 = newp; Point ( lExA00cp1M41 ) = { cA00DetShellGeoFx*0 + cA00DetShellGeoFx*mA00DetShellc1*dA00Extx, cA00DetShellGeoFy*dA00Exty/2 + cA00DetShellGeoFy*nA00DetShellc1*dA00Exty, lvlA00cp2, lcA00cp12Cnd1 };
lExA01cp1M41 = newp; Point ( lExA01cp1M41 ) = { cA00DetShellGeoFx*0 + cA00DetShellGeoFx*mA00DetShellc1*dA00Extx, cA00DetShellGeoFy*dA00Exty/2 + cA00DetShellGeoFy*nA00DetShellc1*dA00Exty, lvlA01cp2, lcA01cp12Cnd1 };

//----------------------------------------------------------
//// Top layer boundary

lExA00cp2Tb1 = newp; Point ( lExA00cp2Tb1 ) = { cA00DetShellGeoFx*0 + cA00DetShellGeoFx*mA00DetShellc1*dA00Extx, cA00DetShellGeoFy*0 + cA00DetShellGeoFy*nA00DetShellc1*dA00Exty, lvlA00cp2, lcA00cp12Cnd1 };
lExA00cp2Tb2 = newp; Point ( lExA00cp2Tb2 ) = { cA00DetShellGeoFx*dA00Extx + cA00DetShellGeoFx*mA00DetShellc1*dA00Extx, cA00DetShellGeoFy*0 + cA00DetShellGeoFy*nA00DetShellc1*dA00Exty, lvlA00cp2, lcA00cp12Cnd1 };
lExA00cp2Tb3 = newp; Point ( lExA00cp2Tb3 ) = { cA00DetShellGeoFx*dA00Extx + cA00DetShellGeoFx*mA00DetShellc1*dA00Extx, cA00DetShellGeoFy*dA00Exty + cA00DetShellGeoFy*nA00DetShellc1*dA00Exty, lvlA00cp2, lcA00cp12Cnd1 };
lExA00cp2Tb4 = newp; Point ( lExA00cp2Tb4 ) = { cA00DetShellGeoFx*0 + cA00DetShellGeoFx*mA00DetShellc1*dA00Extx, cA00DetShellGeoFy*dA00Exty + cA00DetShellGeoFy*nA00DetShellc1*dA00Exty, lvlA00cp2, lcA00cp12Cnd1 };

//----------------------------------------------------------
//// Top upper boundary

lExA01cp2Tb1 = newp; Point ( lExA01cp2Tb1 ) = { cA00DetShellGeoFx*0 + cA00DetShellGeoFx*mA00DetShellc1*dA00Extx, cA00DetShellGeoFy*0 + cA00DetShellGeoFy*nA00DetShellc1*dA00Exty, lvlA01cp2, lcA01cp12Cnd1 };
lExA01cp2Tb2 = newp; Point ( lExA01cp2Tb2 ) = { cA00DetShellGeoFx*dA00Extx + cA00DetShellGeoFx*mA00DetShellc1*dA00Extx, cA00DetShellGeoFy*0 + cA00DetShellGeoFy*nA00DetShellc1*dA00Exty, lvlA01cp2, lcA01cp12Cnd1 };
lExA01cp2Tb3 = newp; Point ( lExA01cp2Tb3 ) = { cA00DetShellGeoFx*dA00Extx + cA00DetShellGeoFx*mA00DetShellc1*dA00Extx, cA00DetShellGeoFy*dA00Exty + cA00DetShellGeoFy*nA00DetShellc1*dA00Exty, lvlA01cp2, lcA01cp12Cnd1 };
lExA01cp2Tb4 = newp; Point ( lExA01cp2Tb4 ) = { cA00DetShellGeoFx*0 + cA00DetShellGeoFx*mA00DetShellc1*dA00Extx, cA00DetShellGeoFy*dA00Exty + cA00DetShellGeoFy*nA00DetShellc1*dA00Exty, lvlA01cp2, lcA01cp12Cnd1 };
*/


/// LINES
//----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
//// Border lines

//----------------------------------------------------------
//// Top electrode lines

ltExA00ElTb1 = newl; Line ( ltExA00ElTb1 ) = { ptExA00El1, ptExA00El2 };
// Transfinite Line { ltExA00ElTb1 } = ltExA00ElTb1;
// ltExA00ElMTb12 = newl; Line ( ltExA00ElMTb12 ) = { ptExA00El12, ptExA00El2 };
// Transfinite Line { ltExA00ElMTb12 } = ltExA00ElMTb12;
ltExA00ElTb2 = newl; Line ( ltExA00ElTb2 ) = { ptExA00El2, ptExA00El3 };
// Transfinite Line { ltExA00ElTb2 } = ltExA00ElTb2;
ltExA00ElTb3 = newl; Line ( ltExA00ElTb3 ) = { ptExA00El3, ptExA00El4 };
// Transfinite Line { ltExA00ElTb3 } = ltExA00ElTb3;
// ltExA00ElMTb34 = newl; Line ( ltExA00ElMTb34 ) = { ptExA00El34, ptExA00El4 };
// Transfinite Line { ltExA00ElMTb34 } = ltExA00ElMTb34;
ltExA00ElTb4 = newl; Line ( ltExA00ElTb4 ) = { ptExA00El4, ptExA00El1 };
// Transfinite Line { ltExA00ElTb4 } = ltExA00ElTb4;

//----------------------------------------------------------
//// Connect the top electrode to the level 0 ground conductor

ltExA00ElIbC1 = newl; Line ( ltExA00ElIbC1 ) = { ptExA00El1, ptExA00cp2C1 };
// Transfinite Line { ltExA00ElIbC1 } = ltExA00ElIbC1;
// ltExA00ElIbM12 = newl; Line ( ltExA00ElIbM12 ) = { ptExA00El12, lExA00cp2M12 };
// Transfinite Line { ltExA00ElIbM12 } = ltExA00ElIbM12;
ltExA00ElIbC2 = newl; Line ( ltExA00ElIbC2 ) = { ptExA00El2, ptExA00cp2C2 };																			// level alteration: level 0 - ptExA00cp2C4
// Transfinite Line { ltExA00ElIbC2 } = ltExA00ElIbC2;
ltExA00ElIbC3 = newl; Line ( ltExA00ElIbC3 ) = { ptExA00El3, ptExA00cp2C3 };
// Transfinite Line { ltExA00ElIbC3 } = ltExA00ElIbC3;
// ltExA00ElIbM34 = newl; Line ( ltExA00ElIbM34 ) = { ptExA00El34, lExA00cp2M34 };
// Transfinite Line { ltExA00ElIbM34 } = ltExA00ElIbM34;
ltExA00ElIbC4 = newl; Line ( ltExA00ElIbC4 ) = { ptExA00El4, ptExA00cp2C4 };																			// level alteration: level 0 - ptExA00cp2C2
// Transfinite Line { ltExA00ElIbC4 } = ltExA00ElIbC4;


/*
//----------------------------------------------------------
//// Connect the top electrode to the level 1 pcb / conductor

ltExA00ElIbC1 = newl; Line ( ltExA00ElIbC1 ) = { ptExA00El1, ptExA01cp2C1 };
// Transfinite Line { ltExA00ElIbC1 } = ltExA00ElIbC1;
// ltExA00ElIbM12 = newl; Line ( ltExA00ElIbM12 ) = { ptExA00El12, lExA01cp2M12 };
// Transfinite Line { ltExA00ElIbM12 } = ltExA00ElIbM12;
ltExA00ElIbC2 = newl; Line ( ltExA00ElIbC2 ) = { ptExA00El2, ptExA01cp2C2 };																			// level alteration: level 1 - ptExA01cp2C4
// Transfinite Line { ltExA00ElIbC2 } = ltExA00ElIbC2;
ltExA00ElIbC3 = newl; Line ( ltExA00ElIbC3 ) = { ptExA00El3, ptExA01cp2C3 };
// Transfinite Line { ltExA00ElIbC3 } = ltExA00ElIbC3;
// ltExA00ElIbM34 = newl; Line ( ltExA00ElIbM34 ) = { ptExA00El34, lExA01cp2M34 };
// Transfinite Line { ltExA00ElIbM34 } = ltExA00ElIbM34;
ltExA00ElIbC4 = newl; Line ( ltExA00ElIbC4 ) = { ptExA00El4, ptExA01cp2C4 };																			// level alteration: level 1 - ptExA01cp2C2
// Transfinite Line { ltExA00ElIbC4 } = ltExA00ElIbC4;

//----------------------------------------------------------
//// Connect the top electrode to the level 2 pcb / conductor

ltExA00ElIbC1 = newl; Line ( ltExA00ElIbC1 ) = { ptExA00El1, ptExA02cp2C1 };
// Transfinite Line { ltExA00ElIbC1 } = ltExA00ElIbC1;
// ltExA00ElIbM12 = newl; Line ( ltExA00ElIbM12 ) = { ptExA00El12, lExA02cp2M12 };
// Transfinite Line { ltExA00ElIbM12 } = ltExA00ElIbM12;
ltExA00ElIbC2 = newl; Line ( ltExA00ElIbC2 ) = { ptExA00El2, ptExA02cp2C2 };																			// level alteration: level 2 - ptExA02cp2C2
// Transfinite Line { ltExA00ElIbC2 } = ltExA00ElIbC2;
ltExA00ElIbC3 = newl; Line ( ltExA00ElIbC3 ) = { ptExA00El3, ptExA02cp2C3 };
// Transfinite Line { ltExA00ElIbC3 } = ltExA00ElIbC3;
// ltExA00ElIbM34 = newl; Line ( ltExA00ElIbM34 ) = { ptExA00El34, lExA02cp2M34 };
// Transfinite Line { ltExA00ElIbM34 } = ltExA00ElIbM34;
ltExA00ElIbC4 = newl; Line ( ltExA00ElIbC4 ) = { ptExA00El4, ptExA02cp2C4 };																			// level alteration: level 2 - ptExA02cp2C4
// Transfinite Line { ltExA00ElIbC4 } = ltExA00ElIbC4;
*/


/// CONTAINER SURFACE LOOP / SURFACES
//----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
//// Bounding surfaces

//----------------------------------------------------------
//// Detector shell boundary level 0cp12

llA00DetShellIntBb1 = newll; Line Loop ( llA00DetShellIntBb1 ) = { ltExA00ElTb1, ltExA00ElIbC2, -lA00cp2Tb1, -ltExA00ElIbC1 };							// level 0
// ptExA00El1, ptExA00El2; ptExA00El2, ptExA00cp2C2; ptExA00cp2C2, ptExA00cp2C1; ptExA00cp2C1, ptExA00El1

llA00DetShellIntBb2 = newll; Line Loop ( llA00DetShellIntBb2 ) = { ltExA00ElTb2, ltExA00ElIbC3, -lA00cp2Tb2, -ltExA00ElIbC2 };							// level 0
// ptExA00El2, ptExA00El3; ptExA00El3, ptExA00cp2C3; ptExA00cp2C3, ptExA00cp2C2; ptExA00cp2C2, ptExA00El2

llA00DetShellIntBb3 = newll; Line Loop ( llA00DetShellIntBb3 ) = { ltExA00ElTb3, ltExA00ElIbC4, -lA00cp2Tb3, -ltExA00ElIbC3 };							// level 0
// ptExA00El3, ptExA00El4; ptExA00El4, ptExA00cp2C4; ptExA00cp2C4, ptExA00cp2C3; ptExA00cp2C3, ptExA00El3

llA00DetShellIntBb4 = newll; Line Loop ( llA00DetShellIntBb4 ) = { ltExA00ElTb4, ltExA00ElIbC1, -lA00cp2Tb4, -ltExA00ElIbC4 };							// level 0
// ptExA00El4, ptExA00El1; ptExA00El1, ptExA00cp2C1; ptExA00cp2C1, ptExA00cp2C4; ptExA00cp2C4, ptExA00El4

// top layer, side layer, bottom layer, side layer
// bottom layer: lA00cp2Tb1, lA00cp2Tb2, lA00cp2Tb3, lA00cp2Tb4


/*
//----------------------------------------------------------
//// Detector shell boundary level 1cp12

llA00DetShellIntBb1 = newll; Line Loop ( llA00DetShellIntBb1 ) = { ltExA00ElTb1, ltExA00ElIbC2, -lA01cp2Tb1, -ltExA00ElIbC1 };							// level 1
// ptExA00El1, ptExA00El2; ptExA00El2, ptExA01cp2C2; ptExA01cp2C2, ptExA01cp2C1; ptExA01cp2C1, ptExA00El1

llA00DetShellIntBb2 = newll; Line Loop ( llA00DetShellIntBb2 ) = { ltExA00ElTb2, ltExA00ElIbC3, -lA01cp2Tb2, -ltExA00ElIbC2 };							// level 1
// ptExA00El2, ptExA00El3; ptExA00El3, ptExA01cp2C3; ptExA01cp2C3, ptExA01cp2C2; ptExA01cp2C2, ptExA00El2

llA00DetShellIntBb3 = newll; Line Loop ( llA00DetShellIntBb3 ) = { ltExA00ElTb3, ltExA00ElIbC4, -lA01cp2Tb3, -ltExA00ElIbC3 };							// level 1
// ptExA00El3, ptExA00El4; ptExA00El4, ptExA01cp2C4; ptExA01cp2C4, ptExA01cp2C3; ptExA01cp2C3, ptExA00El3

llA00DetShellIntBb4 = newll; Line Loop ( llA00DetShellIntBb4 ) = { ltExA00ElTb4, ltExA00ElIbC1, -lA01cp2Tb4, -ltExA00ElIbC4 };							// level 1
// ptExA00El4, ptExA00El1; ptExA00El1, ptExA01cp2C1; ptExA01cp2C1, ptExA01cp2C4; ptExA01cp2C4, ptExA00El4

// top layer, side layer, bottom layer, side layer
// bottom layer: lA01cp2Tb1, lA01cp2Tb2, lA01cp2Tb3, lA01cp2Tb4

//----------------------------------------------------------
//// Detector shell boundary level 2cp12

llA00DetShellIntBb1 = newll; Line Loop ( llA00DetShellIntBb1 ) = { ltExA00ElTb1, ltExA00ElIbC2, -lA02cp2Tb1, -ltExA00ElIbC1 };							// level 2
// ptExA00El1, ptExA00El2; ptExA00El2, ptExA02cp2C2; ptExA02cp2C2, ptExA02cp2C1; ptExA02cp2C1, ptExA00El1

llA00DetShellIntBb2 = newll; Line Loop ( llA00DetShellIntBb2 ) = { ltExA00ElTb2, ltExA00ElIbC3, -lA02cp2Tb2, -ltExA00ElIbC2 };							// level 2
// ptExA00El2, ptExA00El3; ptExA00El3, ptExA02cp2C3; ptExA02cp2C3, ptExA02cp2C2; ptExA02cp2C2, ptExA00El2

llA00DetShellIntBb3 = newll; Line Loop ( llA00DetShellIntBb3 ) = { ltExA00ElTb3, ltExA00ElIbC4, -lA02cp2Tb3, -ltExA00ElIbC3 };							// level 2
// ptExA00El3, ptExA00El4; ptExA00El4, ptExA02cp2C4; ptExA02cp2C4, ptExA02cp2C3; ptExA02cp2C3, ptExA00El3

llA00DetShellIntBb4 = newll; Line Loop ( llA00DetShellIntBb4 ) = { ltExA00ElTb4, ltExA00ElIbC1, -lA02cp2Tb4, -ltExA00ElIbC4 };							// level 2
// ptExA00El4, ptExA00El1; ptExA00El1, ptExA02cp2C1; ptExA02cp2C1, ptExA02cp2C4; ptExA02cp2C4, ptExA00El4

// top layer, side layer, bottom layer, side layer
// bottom layer: lA02cp2Tb1, lA02cp2Tb2, lA02cp2Tb3, lA02cp2Tb4
*/


//----------------------------------------------------------
//// Detector shell boundary surfaces

psA00DetShellIntBb1 = news; Plane Surface ( psA00DetShellIntBb1 ) = { llA00DetShellIntBb1 };
// Transfinite Surface { psA00DetShellIntBb1 };
// Recombine Surface { psA00DetShellIntBb1 };

psA00DetShellIntBb2 = news; Plane Surface ( psA00DetShellIntBb2 ) = { llA00DetShellIntBb2 };
// Transfinite Surface { psA00DetShellIntBb2 };
// Recombine Surface { psA00DetShellIntBb2 };

psA00DetShellIntBb3 = news; Plane Surface ( psA00DetShellIntBb3 ) = { llA00DetShellIntBb3 };
// Transfinite Surface { psA00DetShellIntBb3 };
// Recombine Surface { psA00DetShellIntBb3 };

psA00DetShellIntBb4 = news; Plane Surface ( psA00DetShellIntBb4 ) = { llA00DetShellIntBb4 };
// Transfinite Surface { psA00DetShellIntBb4 };
// Recombine Surface { psA00DetShellIntBb4 };

llA00DetShellTb1 = newll; Line Loop ( llA00DetShellTb1 ) = { ltExA00ElTb1, ltExA00ElTb2, ltExA00ElTb3, ltExA00ElTb4 };
psA00DetShellTb1 = news; Plane Surface ( psA00DetShellTb1 ) = { llA00DetShellTb1 };
// Transfinite Surface { psA00DetShellTb1 };
// Recombine Surface { psA00DetShellTb1 };


//----------------------------------------------------------
//// Wire gas interior surface loop - Interior wire gas surface loop


/// WIRE CONFIGURATION 0
//----------------------------------------------------------
//// Single & Double wire configuration - Single direction

/*
/// Wire 0

slA00DetShellGas = newreg; Surface Loop ( slA00DetShellGas ) = { surfA00cp2TbA[], psA00DetShellIntBb1, psA00DetShellIntBb2, psA00DetShellIntBb3, psA00DetShellIntBb4, psA00DetShellTb1 };
slA00DetShellGasA[] += slA00DetShellGas;
*/


/// WIRE CONFIGURATION 1
//----------------------------------------------------------
//// Single & Double wire configuration - Single direction

/*
/// Double 2 wire x1

slA00DetShellGas = newreg; Surface Loop ( slA00DetShellGas ) = { surfA00cp2TbA[], psA00DetShellIntBb1, psA00DetShellIntBb2, psA00DetShellIntBb3, psA00DetShellIntBb4, psA00DetShellTb1, -stS1x1[], stx11a1[], stx11a2[], stx11b1[], stx11b2[], -stTmpx1[] };
slA00DetShellGasA[] += slA00DetShellGas;

// -stS1x1[], stx11a1[], stx11a2[], -stTmpx1[]
*/

/*
/// Double 2 wire y1

slA00DetShellGas = newreg; Surface Loop ( slA00DetShellGas ) = { surfA00cp2TbA[], psA00DetShellIntBb1, psA00DetShellIntBb2, psA00DetShellIntBb3, psA00DetShellIntBb4, psA00DetShellTb1, -stS1y1[], sty12a1[], sty12a2[], sty12b1[], sty12b2[], -stTmpy1[] };
slA00DetShellGasA[] += slA00DetShellGas;

// -stS1y1[], sty12a1[], sty12a2[], sty12b1[], sty12b2[], -stTmpy1[]
*/

/*
/// Single 1 wire x2

slA00DetShellGas = newreg; Surface Loop ( slA00DetShellGas ) = { surfA00cp2TbA[], psA00DetShellIntBb1, psA00DetShellIntBb2, psA00DetShellIntBb3, psA00DetShellIntBb4, psA00DetShellTb1, -stS1x2[], stx21b1[], stx21b2[], stx21a1[], stx21a2[], -stTmpx2[] };
slA00DetShellGasA[] += slA00DetShellGas;

// -stS1x2[], stx21b1[], stx21b2[], stx21a1[], stx21a2[], -stTmpx2[]
*/

/*
/// Single 1 wire y2

slA00DetShellGas = newreg; Surface Loop ( slA00DetShellGas ) = { surfA00cp2TbA[], psA00DetShellIntBb1, psA00DetShellIntBb2, psA00DetShellIntBb3, psA00DetShellIntBb4, psA00DetShellTb1, -stS1y2[], sty22b1[], sty22b2[], sty22a1[], sty22a2[], -stTmpy2[] };
slA00DetShellGasA[] += slA00DetShellGas;
 
// -stS1y2[], sty22b1[], sty22b2[], -stTmpy2[]
*/


/// WIRE CONFIGURATION 2
//----------------------------------------------------------
//// Single & Double wire configuration - Double direction

/*
/// Single 1 wire x1 & y1

slA00DetShellGas = newreg; Surface Loop ( slA00DetShellGas ) = { surfA00cp2TbA[], psA00DetShellIntBb1, psA00DetShellIntBb2, psA00DetShellIntBb3, psA00DetShellIntBb4, psA00DetShellTb1, -stS1x1[], stx11a1[], stx11a2[], stx11b1[], stx11b2[], -stTmpx1[] -stS1y1[], sty12a1[], sty12a2[], sty12b1[], sty12b2[], -stTmpy1[] };
slA00DetShellGasA[] += slA00DetShellGas;

// -stS1x1[], stx11a1[], stx11a2[], -stTmpx1[], -stS1y1[], sty12a1[], sty12a2[], -stTmpy1[]
*/

/*
/// Double 2 wire y2 & x2

slA00DetShellGas = newreg; Surface Loop ( slA00DetShellGas ) = { surfA00cp2TbA[], psA00DetShellIntBb1, psA00DetShellIntBb2, psA00DetShellIntBb3, psA00DetShellIntBb4, psA00DetShellTb1, -stS1x2[], stx21b1[], stx21b2[], stx21a1[], stx21a2[], -stTmpx2[], -stS1y2[], sty22b1[], sty22b2[], sty22a1[], sty22a2[], -stTmpy2[] };
slA00DetShellGasA[] += slA00DetShellGas;

// -stS1x2[], stx21b1[], stx21b2[], -stTmpx2[], -stS1y2[], sty22b1[], sty22b2[], -stTmpy2[]
*/


/// WIRE CONFIGURATION 3
//----------------------------------------------------------
//// Single & Double wire configuration - Double direction


/// Single 1 wire x1 & y1 / Double 2 wire x2 & y2

slA00DetShellGas = newreg; Surface Loop ( slA00DetShellGas ) = { surfA00cp2TbA[], psA00DetShellIntBb1, psA00DetShellIntBb2, psA00DetShellIntBb3, psA00DetShellIntBb4, psA00DetShellTb1, -stS1x1[], stx11a1[], stx11a2[], stx11b1[], stx11b2[], -stTmpx1[], -stS1y1[], sty12a1[], sty12a2[], sty12b1[], sty12b2[], -stTmpy1[], -stS1x2[], stx21b1[], stx21b2[], stx21a1[], stx21a2[], -stTmpx2[], -stS1y2[], sty22b1[], sty22b2[], sty22a1[], sty22a2[], -stTmpy2[] };
slA00DetShellGasA[] += slA00DetShellGas;


/// CONTAINER VOLUMES
//----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
//// Container volumes

// volA00DetShellCont = newreg; Volume ( volA00DetShellCont ) = { surfA00cp2TbA[], psA00DetShellIntBb1, psA00DetShellIntBb2, psA00DetShellIntBb3, psA00DetShellIntBb4, psA00DetShellTb1 };
volA00DetShellGas = newreg; Volume ( volA00DetShellGas ) = { slA00DetShellGasA[] };


/// PHYSICAL SURFACES
//----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
//// Physical surfaces - Periodic boundary conditions

// physsurfA00DetShellBd1 = newreg;
// Physical Surface ( physsurfA00DetShellBd1 ) = { psA00DetShellIntBb1 };													// physical surface detector shell boundary 1

// physsurfA00DetShellBd2 = newreg;
// Physical Surface ( physsurfA00DetShellBd2 ) = { psA00DetShellIntBb2 };													// physical surface detector shell boundary 2

// physsurfA00DetShellBd3 = newreg;
// Physical Surface ( physsurfA00DetShellBd3 ) = { psA00DetShellIntBb3 };													// physical surface detector shell boundary 3

// physsurfA00DetShellBd4 = newreg;
// Physical Surface ( physsurfA00DetShellBd4 ) = { psA00DetShellIntBb4 };													// physical surface detector shell boundary 4

//----------------------------------------------------------
//// Physical surfaces - Container surface

// physsurfA00DetShellCont = newreg;
// Physical Surface ( physsurfA00DetShellCont ) = { surfA00cp2TbA[], psA00DetShellIntBb1, psA00DetShellIntBb2, psA00DetShellIntBb3, psA00DetShellIntBb4, psA00DetShellTb1 };

//----------------------------------------------------------
//// Physical surfaces - Upper electrode surface

// physsurfA00DetShellBdUpEl = newreg;
// Physical Surface ( physsurfA00DetShellBdUpEl ) = { psA00DetShellTb1 };

//----------------------------------------------------------
//// Physical surfaces - Gas surface


/// WIRE CONFIGURATION 0
//----------------------------------------------------------
//// Single & Double wire configuration - Single direction

/*
/// Wire 0

// physsurfA00DetShellGas = newreg;
Physical Surface ( physsurfA00DetShellGas ) = { surfA00cp2TbA[], psA00DetShellIntBb1, psA00DetShellIntBb2, psA00DetShellIntBb3, psA00DetShellIntBb4, psA00DetShellTb1 };
*/


/// WIRE CONFIGURATION 1
//----------------------------------------------------------
//// Single & Double wire configuration - Single direction

/*
/// Double 2 wire x1

// physsurfA00DetShellGas = newreg;
Physical Surface ( physsurfA00DetShellGas ) = { surfA00cp2TbA[], psA00DetShellIntBb1, psA00DetShellIntBb2, psA00DetShellIntBb3, psA00DetShellIntBb4, psA00DetShellTb1, -stS1x1[], stx11a1[], stx11a2[], stx11b1[], stx11b2[], -stTmpx1[] };

// stS1x1[], stx11a1[], stx11a2[], -stTmpx1[]
*/

/*
/// Double 2 wire y1

// physsurfA00DetShellGas = newreg;
Physical Surface ( physsurfA00DetShellGas ) = { surfA00cp2TbA[], psA00DetShellIntBb1, psA00DetShellIntBb2, psA00DetShellIntBb3, psA00DetShellIntBb4, psA00DetShellTb1, -stS1y1[], sty12a1[], sty12a2[], sty12b1[], sty12b2[], -stTmpy1[] };

// -stS1y1[], sty12a1[], sty12a2[], -stTmpy1[]
*/

/*
/// Single 1 wire x2

// physsurfA00DetShellGas = newreg;
Physical Surface ( physsurfA00DetShellGas ) = { surfA00cp2TbA[], psA00DetShellIntBb1, psA00DetShellIntBb2, psA00DetShellIntBb3, psA00DetShellIntBb4, psA00DetShellTb1, -stS1x2[], stx21b1[], stx21b2[], -stTmpx2[] };

// -stS1x2[], stx21b1[], stx21b2[], -stTmpx2[]
*/

/*
/// Single 1 wire y2

// physsurfA00DetShellGas = newreg;
Physical Surface ( physsurfA00DetShellGas ) = { surfA00cp2TbA[], psA00DetShellIntBb1, psA00DetShellIntBb2, psA00DetShellIntBb3, psA00DetShellIntBb4, psA00DetShellTb1, -stS1y2[], sty22b1[], sty22b2[], -stTmpy2[] };

// -stS1y2[], sty22b1[], sty22b2[], -stTmpy2[]
*/


/// WIRE CONFIGURATION 2
//----------------------------------------------------------
//// Single & Double wire configuration - Double direction

/*
/// Single 1 wire x1 & y1

// physsurfA00DetShellGas = newreg;
Physical Surface ( physsurfA00DetShellGas ) = { surfA00cp2TbA[], psA00DetShellIntBb1, psA00DetShellIntBb2, psA00DetShellIntBb3, psA00DetShellIntBb4, psA00DetShellTb1, -stS1x1[], stx11a1[], stx11a2[], -stTmpx1[], -stS1y1[], sty12a1[], sty12a2[], -stTmpy1[] };

// -stS1x1[], stx11a1[], stx11a2[], -stTmpx1[], -stS1y1[], sty12a1[], sty12a2[], -stTmpy1[]
*/

/*
/// Double 2 wire y2 & x2

// physsurfA00DetShellGas = newreg;
Physical Surface ( physsurfA00DetShellGas ) = { surfA00cp2TbA[], psA00DetShellIntBb1, psA00DetShellIntBb2, psA00DetShellIntBb3, psA00DetShellIntBb4, psA00DetShellTb1, -stS1x2[], stx21b1[], stx21b2[], stx21a1[], stx21a2[], -stTmpx2[], -stS1y2[], sty22b1[], sty22b2[], sty22a1[], sty22a2[], -stTmpy2[] };

// -stS1x2[], stx21b1[], stx21b2[], -stTmpx2[], -stS1y2[], sty22b1[], sty22b2[], -stTmpy2[]
*/


/// WIRE CONFIGURATION 3
//----------------------------------------------------------
//// Single & Double wire configuration - Double direction


/// Single 1 wire x1 & y1 / Double 2 wire x2 & y2

// physsurfA00DetShellGas = newreg;
Physical Surface ( physsurfA00DetShellGas ) = { surfA00cp2TbA[], psA00DetShellIntBb1, psA00DetShellIntBb2, psA00DetShellIntBb3, psA00DetShellIntBb4, psA00DetShellTb1, -stS1x1[], stx11a1[], stx11a2[], -stTmpx1[], -stS1y1[], sty12a1[], sty12a2[], -stTmpy1[], -stS1x2[], stx21b1[], stx21b2[], -stTmpx2[], -stS1y2[], sty22b1[], sty22b2[], -stTmpy2[] };

// -stS1x1[], stx11a1[], stx11a2[], stx11b1[], stx11b2[], -stTmpx1[]
// -stS1y1[], sty12a1[], sty12a2[], sty12b1[], sty12b2[], -stTmpy1[]
// -stS1x2[], stx21b1[], stx21b2[], stx21a1[], stx21a2[], -stTmpx2[]
// -stS1y2[], sty22b1[], sty22b2[], sty22a1[], sty22a2[], -stTmpy2[]


/// PHYSICAL VOLUMES
//----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
//// Physical volumes - Container volume

// physvolA00DetShellCont = newreg;
// Physical Volume ( physvolA00DetShellCont ) = ( volA00DetShellCont );

// physvolA00DetShellGas = newreg;
Physical Volume ( physvolA00DetShellGas ) = { volA00DetShellGas };


// End