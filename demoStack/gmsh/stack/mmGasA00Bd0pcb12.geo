// Include "mmGasA00AssemblyParam.geo";

// Include "mmGasA00CuP0cp12Param.geo";
// Include "mmGasA01CuY1cp12Param.geo";
// Include "mmGasA02CuX2cp12Param.geo";

Include "mmGasA00Bd0pcb12Param.geo";
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


/// PCB LEVEL 0
//----------------------------------------------------------
//// Connect the upper and lower points with lines to form the pcb 0 layer

/*
lA00pcb12Ib1 = newl; Line ( lA00pcb12Ib1 ) = { ptExA00cp2C1, ptExA01cp1C1 };
// Transfinite Line { lA00pcb12Ib1 } = lA00pcb12Ib1;
lA00pcb12Ib2 = newl; Line ( lA00pcb12Ib2 ) = { ptExA00cp2C2, ptExA01cp1C2 };
// Transfinite Line { lA00pcb12Ib2 } = lA00pcb12Ib2;
lA00pcb12Ib3 = newl; Line ( lA00pcb12Ib3 ) = { ptExA00cp2C3, ptExA01cp1C3 };
// Transfinite Line { lA00pcb12Ib3 } = lA00pcb12Ib3;
lA00pcb12Ib4 = newl; Line ( lA00pcb12Ib4 ) = { ptExA00cp2C4, ptExA01cp1C4 };
// Transfinite Line { lA00pcb12Ib4 } = lA00pcb12Ib4;
*/

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

/*
lA00Bd0pcb12Ib1 = newl; Line ( lA00Bd0pcb12Ib1 ) = { ptExA00cp2C1, ptExA01cp1C1 };
// Transfinite Line { lA00Bd0pcb12Ib1 } = lA00Bd0pcb12Ib1;
lA00Bd0pcb12Ib2 = newl; Line ( lA00Bd0pcb12Ib2 ) = { ptExA00cp2C2, ptExA01cp1C2 };
// Transfinite Line { lA00Bd0pcb12Ib2 } = lA00Bd0pcb12Ib2;
lA00Bd0pcb12Ib3 = newl; Line ( lA00Bd0pcb12Ib3 ) = { ptExA00cp2C3, ptExA01cp1C3 };
// Transfinite Line { lA00Bd0pcb12Ib3 } = lA00Bd0pcb12Ib3;
lA00Bd0pcb12Ib4 = newl; Line ( lA00Bd0pcb12Ib4 ) = { ptExA00cp2C4, ptExA01cp1C4 };
// Transfinite Line { lA00Bd0pcb12Ib4 } = lA00Bd0pcb12Ib4;
*/

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

/*
ltExA00EcC1 = newl; Line ( ltExA00EcC1 ) = { ptExA00EcC1, ptExA01cp1C1 };
Transfinite Line { ltExA00EcC1 } = ltExA00EcC1;
// ltExA00EcM12 = newl; Line ( ltExA00EcM12 ) = { ptExA00EcM12, ltExA0Ptmc1 };
// Transfinite Line { ltExA00EcM12 } = ltExA00EcM12;
ltExA00EcC2 = newl; Line ( ltExA00EcC2 ) = { ptExA00EcC2, ptExA01cp1C4 };
Transfinite Line { ltExA00EcC2 } = ltExA00EcC2;
ltExA00EcC3 = newl; Line ( ltExA00EcC3 ) = { ptExA00EcC3, ptExA01cp1C3 };
Transfinite Line { ltExA00EcC3 } = ltExA00EcC3;
// ltExA00EcM34 = newl; Line ( ltExA00EcM34 ) = { ptExA00EcM34, ltExA0Ptmc3 };
// Transfinite Line { ltExA00EcM34 } = ltExA00EcM34;
ltExA00EcC4 = newl; Line ( ltExA00EcC4 ) = { ptExA00EcC4, ptExA01cp1C2 };
Transfinite Line { ltExA00EcC4 } = ltExA00EcC4;
*/

//----------------------------------------------------------
//// Connect the pcb top side - level 3 side lower lines

lA00Bd0pcb2TbB1 = newl; Line ( lA00Bd0pcb2TbB1 ) = { ptExA01cp1C1, ptExA01cp1C2 };
lA00Bd0pcb2TbR2 = newl; Line ( lA00Bd0pcb2TbR2 ) = { ptExA00Bd0pcb2AdC2, ptExA00Bd0pcb2AdC3 };
lA00Bd0pcb2TbT3 = newl; Line ( lA00Bd0pcb2TbT3 ) = { ptExA01cp1C3, ptExA01cp1C4 };
lA00Bd0pcb2TbL4 = newl; Line ( lA00Bd0pcb2TbL4 ) = { ptExA00Bd0pcb2AdC4, ptExA00Bd0pcb2AdC1 };


// End
