// Include "mmGasA00AssemblyParam.geo";

// Include "mmGasA00CuP0cp12Param.geo";
// Include "mmGasA01CuY1cp12Param.geo";
// Include "mmGasA02CuX2cp12Param.geo";

// Include "mmGasA00Bd0pcb12Param.geo";
// Include "mmGasA01Bd1pcb12Param.geo";
Include "mmGasA02Bd2pcb12Param.geo";

// Include "mmGasA00Str0Wr12Param.geo";
// Include "mmGasA00Cur0Wr12Param.geo";
// Include "mmGasA03Bd0pil2cp12Param.geo";

// Include "mmGasA00CuP0cp12.geo";
Include "mmGasA01CuY1cp12.geo";
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


/// LINES
//----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
//// Border lines


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

lA02Bd2pcb12Ib1 = newl; Line ( lA02Bd2pcb12Ib1 ) = { ptExA01cp2C1, ptExA02cp1C1 };
Transfinite Line { lA02Bd2pcb12Ib1 } = lA02Bd2pcb12Ib1;
lA02Bd2pcb12Ib2 = newl; Line ( lA02Bd2pcb12Ib2 ) = { ptExA01cp2C4, ptExA02cp1C2 };
Transfinite Line { lA02Bd2pcb12Ib2 } = lA02Bd2pcb12Ib2;
lA02Bd2pcb12Ib3 = newl; Line ( lA02Bd2pcb12Ib3 ) = { ptExA01cp2C3, ptExA02cp1C3 };
Transfinite Line { lA02Bd2pcb12Ib3 } = lA02Bd2pcb12Ib3;
lA02Bd2pcb12Ib4 = newl; Line ( lA02Bd2pcb12Ib4 ) = { ptExA01cp2C2, ptExA02cp1C4 };
Transfinite Line { lA02Bd2pcb12Ib4 } = lA02Bd2pcb12Ib4;

//----------------------------------------------------------
//// Connect the pcb to the lower copper conductor - level 2

// lA02Bd2pcb12Ib1 = newl; Line ( lA02Bd2pcb12Ib1 ) = { ptExA01cp2C1, ptExA02cp1C1 };
// Transfinite Line { lA02Bd2pcb12Ib1 } = lA02Bd2pcb12Ib1;
// lA02Bd2pcb12Ib2 = newl; Line ( lA02Bd2pcb12Ib2 ) = { ptExA01cp2C4, ptExA02cp1C2 };
// Transfinite Line { lA02Bd2pcb12Ib2 } = lA02Bd2pcb12Ib2;
// lA02Bd2pcb12Ib3 = newl; Line ( lA02Bd2pcb12Ib3 ) = { ptExA01cp2C3, ptExA02cp1C3 };
// Transfinite Line { lA02Bd2pcb12Ib3 } = lA02Bd2pcb12Ib3;
// lA02Bd2pcb12Ib4 = newl; Line ( lA02Bd2pcb12Ib4 ) = { ptExA01cp2C2, ptExA02cp1C4 };
// Transfinite Line { lA02Bd2pcb12Ib4 } = lA02Bd2pcb12Ib4;

//----------------------------------------------------------
//// Connect the pcb to the upper level lower copper conductor - level 2

lA02Bd2pcb2Tb1 = newl; Line ( lA02Bd2pcb2Tb1 ) = { ptExA02cp1C1, ptExA02Bd2pcb2AdC1 };
Transfinite Line { lA02Bd2pcb2Tb1 } = lA02Bd2pcb2Tb1;
lA02Bd2pcb2Tb2 = newl; Line ( lA02Bd2pcb2Tb2 ) = { ptExA02cp1C2, ptExA02Bd2pcb2AdC2 };
Transfinite Line { lA02Bd2pcb2Tb2 } = lA02Bd2pcb2Tb2;
lA02Bd2pcb2Tb3 = newl; Line ( lA02Bd2pcb2Tb3 ) = { ptExA02cp1C3, ptExA02Bd2pcb2AdC3 };
Transfinite Line { lA02Bd2pcb2Tb3 } = lA02Bd2pcb2Tb3;
lA02Bd2pcb2Tb4 = newl; Line ( lA02Bd2pcb2Tb4 ) = { ptExA02cp1C4, ptExA02Bd2pcb2AdC4 };
Transfinite Line { lA02Bd2pcb2Tb4 } = lA02Bd2pcb2Tb4;

//----------------------------------------------------------
//// Connect the top electrode to the level 2 - pcb top

// ltExEcC1 = newl; Line ( ltExEcC1 ) = { ptExEcC1, ptExA02cp2C1 };
// Transfinite Line { ltExEcC1 } = ltExEcC1;
// ltExEcM12 = newl; Line ( ltExEcM12 ) = { ptExEcM12, ltExPtmc1 };
// Transfinite Line { ltExEcM12 } = ltExEcM12;
// ltExEcC2 = newl; Line ( ltExEcC2 ) = { ptExEcC2, ptExA02cp2C2 };
// Transfinite Line { ltExEcC2 } = ltExEcC2;
// ltExEcC3 = newl; Line ( ltExEcC3 ) = { ptExEcC3, ptExA02cp2C3 };
// Transfinite Line { ltExEcC3 } = ltExEcC3;
// ltExEcM34 = newl; Line ( ltExEcM34 ) = { ptExEcM34, ltExPtmc3 };
// Transfinite Line { ltExEcM34 } = ltExEcM34;
// ltExEcC4 = newl; Line ( ltExEcC4 ) = { ptExEcC4, ptExA02cp2C4 };
// Transfinite Line { ltExEcC4 } = ltExEcC4;

//----------------------------------------------------------
//// Connect the pcb top side - level 3 side lower lines

lA02Bd2pcb2TbB1 = newl; Line ( lA02Bd2pcb2TbB1 ) = { ptExA02cp1C1, ptExA02cp1C2 };
lA02Bd2pcb2TbR2 = newl; Line ( lA02Bd2pcb2TbR2 ) = { ptExA02Bd2pcb2AdC2, ptExA02Bd2pcb2AdC3 };
lA02Bd2pcb2TbT3 = newl; Line ( lA02Bd2pcb2TbT3 ) = { ptExA02cp1C3, ptExA02cp1C4 };
lA02Bd2pcb2TbL4 = newl; Line ( lA02Bd2pcb2TbL4 ) = { ptExA02Bd2pcb2AdC4, ptExA02Bd2pcb2AdC1 };


// End
