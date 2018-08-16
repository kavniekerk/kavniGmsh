// Include "mmGasA00Assembly.geo";
// Include "mmGasA00AssemblyParam.geo";

// Include "mmGasA00Bd0pcb12.geo";
// Include "mmGasA00Bd0pcb12CompLab.pro";
// Include "mmGasA00Bd0pcb12Param.geo";

// Include "mmGasA00CuP0cp12.geo";
// Include "mmGasA00CuP0cp12CompLab.pro";
// Include "mmGasA00CuP0cp12Param.geo";
Include "mmGasA09CuP0cp12ParamTest.geo";

// Include "mmGasA01Bd1pcb12.geo";
// Include "mmGasA01Bd1pcb12CompLab.pro";
// Include "mmGasA01Bd1pcb12Param.geo";

// Include "mmGasA01CuY1cp12.geo";
// Include "mmGasA01CuY1cp12CompLab.pro";
// Include "mmGasA01CuY1cp12Param.geo";
// Include "mmGasA09CuY1cp12ParamTest.geo";

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


/// GEOMETRY MODULE 0
/// COPPER CONDUCTOR STRUCTURE
//----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
//// Variable designation: geometrical element, structural reference, interface / description, number


/// LINES
//----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
//// Border conductor lines


/// BOTTOM GROUND COPPER CONDUCTOR LEVEL 0cp1
//----------------------------------------------------------
//// Bottom ground copper boundary 0cp1 - level 1

/*
lA00cp1Bb1 = newl; Line ( lA00cp1Bb1 ) = { ptExA00cp1C1, ptExA00cp1C2 };
// Transfinite Line { lA00cp1Bb1 } = lA00cp1Bb1;
lA00cp1Bb2 = newl; Line ( lA00cp1Bb2 ) = { ptExA00cp1C2, ptExA00cp1C3 };
// Transfinite Line { lA00cp1Bb2 } = lA00cp1Bb2;
lA00cp1Bb3 = newl; Line ( lA00cp1Bb3 ) = { ptExA00cp1C3, ptExA00cp1C4 };
// Transfinite Line { lA00cp1Bb3 } = lA00cp1Bb3;
lA00cp1Bb4 = newl; Line ( lA00cp1Bb4 ) = { ptExA00cp1C4, ptExA00cp1C1 };
// Transfinite Line { lA00cp1Bb4 } = lA00cp1Bb4;

/// A00 copper 1 Bottom boundary
//----------------------------------------------------------
//// Lower boundary - level 1

lA00cp1Bb1 = newl; Line (  lA00cp1Bb1 ) = { ptExA00cp1C1, ptExA00cp1C2 };
// Transfinite Line {  lA00cp1Bb1 } =  lA00cp1Bb1;
lA00cp1Bb2 = newl; Line (  lA00cp1Bb2 ) = { ptExA00cp1C2, ptExA00cp1C3 };
// Transfinite Line {  lA00cp1Bb2 } =  lA00cp1Bb2;
lA00cp1Bb3 = newl; Line (  lA00cp1Bb3 ) = { ptExA00cp1C3, ptExA00cp1C4 };
// Transfinite Line {  lA00cp1Bb3 } =  lA00cp1Bb3;
lA00cp1Bb4 = newl; Line (  lA00cp1Bb4 ) = { ptExA00cp1C4, ptExA00cp1C1 };
// Transfinite Line {  lA00cp1Bb4 } =  lA00cp1Bb4;

/// External A00 copper 1 Bottom boundary
//----------------------------------------------------------
//// Lower boundary - level 1

lExA00cp1Bb1 = newl; Line ( lExA00cp1Bb1 ) = { ptExA00cp1C1, ptExA00cp1C2 };
// Transfinite Line { lExA00cp1Bb1 } = lExA00cp1Bb1;
lExA00cp1Bb2 = newl; Line ( lExA00cp1Bb2 ) = { ptExA00cp1C2, ptExA00cp1C3 };
// Transfinite Line { lExA00cp1Bb2 } = lExA00cp1Bb2;
lExA00cp1Bb3 = newl; Line ( lExA00cp1Bb3 ) = { ptExA00cp1C3, ptExA00cp1C4 };
// Transfinite Line { lExA00cp1Bb3 } = lExA00cp1Bb3;
lExA00cp1Bb4 = newl; Line ( lExA00cp1Bb4 ) = { ptExA00cp1C4, ptExA00cp1C1 };
// Transfinite Line { lExA00cp1Bb4 } = lExA00cp1Bb4;


/// INTERMEDIATE GROUND COPPER CONDUCTOR LEVEL 0cp12
//----------------------------------------------------------
//// Connect the upper and lower points with lines to form the conductor - level 0

lA00cp12Ib1 = newl; Line ( lA00cp12Ib1 ) = { ptExA00cp2C1, ptExA00cp1C1 };
// Transfinite Line { lA00cp12Ib1 } = lA00cp12Ib1;
lA00cp12Ib2 = newl; Line ( lA00cp12Ib2 ) = { ptExA00cp2C2, ptExA00cp1C2 };
// Transfinite Line { lA00cp12Ib2 } = lA00cp12Ib2;
lA00cp12Ib3 = newl; Line ( lA00cp12Ib3 ) = { ptExA00cp2C3, ptExA00cp1C3 };
// Transfinite Line { lA00cp12Ib3 } = lA00cp12Ib3;
lA00cp12Ib4 = newl; Line ( lA00cp12Ib4 ) = { ptExA00cp2C4, ptExA00cp1C4 };
// Transfinite Line { lA00cp12Ib4 } = lA00cp12Ib4;

/// A00 copper 12 Intermediate boundary
//----------------------------------------------------------
//// Connect the upper and lower points with lines to form the plate conductor

lA00cp12Ib1 = newl; Line ( lA00cp12Ib1 ) = { ptExA00cp2C1, ptExA00cp1C1 };
// Transfinite Line {  lA00cp12Ib1 } =  lA00cp12Ib1;
lA00cp12Ib2 = newl; Line ( lA00cp12Ib2 ) = { ptExA00cp2C2, ptExA00cp1C2 };
// Transfinite Line {  lA00cp12Ib2 } =  lA00cp12Ib2;
lA00cp12Ib3 = newl; Line ( lA00cp12Ib3 ) = { ptExA00cp2C3, ptExA00cp1C3 };
// Transfinite Line { lA00cp12Ib3 } = lA00cp12Ib3;
lA00cp12Ib4 = newl; Line ( lA00cp12Ib4 ) = { ptExA00cp2C4, ptExA00cp1C4 };
// Transfinite Line { lA00cp12Ib4 } = lA00cp12Ib4;

/// A00 copper 12 Intermediate boundary
//----------------------------------------------------------
//// Connect the upper and lower points with lines to form the conductor

lExA00cp12Ib1 = newl; Line ( lExA00cp12Ib1 ) = { ptExA00cp2C1, ptExA00cp1C1 };
// Transfinite Line { lExA00cp12Ib1 } = lExA00cp12Ib1;
lExA00cp12Ib2 = newl; Line ( lExA00cp12Ib2 ) = { ptExA00cp2C2, ptExA00cp1C2 };
// Transfinite Line { lExA00cp12Ib2 } = lExA00cp12Ib2;
lExA00cp12Ib3 = newl; Line ( lExA00cp12Ib3 ) = { ptExA00cp2C3, ptExA00cp1C3 };
// Transfinite Line { lExA00cp12Ib3 } = lExA00cp12Ib3;
lExA00cp12Ib4 = newl; Line ( lExA00cp12Ib4 ) = { ptExA00cp2C4, ptExA00cp1C4 };
// Transfinite Line { lExA00cp12Ib4 } = lExA00cp12Ib4;
*/


/// TOP GROUND COPPER CONDUCTOR LEVEL 0cp2
//----------------------------------------------------------
//// Top ground copper boundary  0cp2 - level 2

lA00cp2Tb1 = newl; Line ( lA00cp2Tb1 ) = { ptExA00cp2C1, ptExA00cp2C2 };
// Transfinite Line { lA00cp2Tb1 } = lA00cp2Tb1;
lA00cp2Tb2 = newl; Line ( lA00cp2Tb2 ) = { ptExA00cp2C2, ptExA00cp2C3 };
// Transfinite Line { lA00cp2Tb2 } = lA00cp2Tb2;
lA00cp2Tb3 = newl; Line ( lA00cp2Tb3 ) = { ptExA00cp2C3, ptExA00cp2C4 };
// Transfinite Line { lA00cp2Tb3 } = lA00cp2Tb3;
lA00cp2Tb4 = newl; Line ( lA00cp2Tb4 ) = { ptExA00cp2C4, ptExA00cp2C1 };
// Transfinite Line { lA00cp2Tb4 } = lA00cp2Tb4;


/*
/// A00 copper 2 Top boundary
//----------------------------------------------------------
//// Upper boundary - level 2

lA00cp2Tb1 = newl; Line ( lA00cp2Tb1 ) = { ptExA00cp2C1, ptExA00cp2C2 };
// Transfinite Line { lA00cp2Tb1 } = lA00cp2Tb1;
lA00cp2Tb2 = newl; Line ( lA00cp2Tb2 ) = { ptExA00cp2C2, ptExA00cp2C3 };
// Transfinite Line { lA00cp2Tb2 } = lA00cp2Tb2;
lA00cp2Tb3 = newl; Line ( lA00cp2Tb3 ) = { ptExA00cp2C3, ptExA00cp2C4 };
// Transfinite Line { lA00cp2Tb3 } = lA00cp2Tb3;
lA00cp2Tb4 = newl; Line ( lA00cp2Tb4 ) = { ptExA00cp2C4, ptExA00cp2C1 };
// Transfinite Line { lA00cp2Tb4 } = lA00cp2Tb4;

/// A00 copper 2 Top boundary
//----------------------------------------------------------
//// Upper boundary - level 2

lExA00cp2Tb1 = newl; Line ( lExA00cp2Tb1 ) = { ptExA00cp2C1, ptExA00cp2C2 };
// Transfinite Line { lExA00cp2Tb1 } = lExA00cp2Tb1;
lExA00cp2Tb2 = newl; Line ( lExA00cp2Tb2 ) = { ptExA00cp2C2, ptExA00cp2C3 };
// Transfinite Line { lExA00cp2Tb2 } = lExA00cp2Tb2;
lExA00cp2Tb3 = newl; Line ( lExA00cp2Tb3 ) = { ptExA00cp2C3, ptExA00cp2C4 };
// Transfinite Line { lExA00cp2Tb3 } = lExA00cp2Tb3;
lExA00cp2Tb4 = newl; Line ( lExA00cp2Tb4 ) = { ptExA00cp2C4, ptExA00cp2C1 };
// Transfinite Line { lExA00cp2Tb4 } = lExA00cp2Tb4;
*/


/// SURFACES
//----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
//// Copper top & bottom surfaces

surfA00cp1BbA[] = {};
surfA00cp2TbA[] = {};

/*
llA00cp1Bb1 = newll; Line Loop ( llA00cp1Bb1 ) = { lA00cp1Bb1, lA00cp1Bb2, lA00cp1Bb3, lA00cp1Bb4 };                                                                        //
llA00cp1Bb1A[] += { llA00cp1Bb1 };
psA00cp1Bb1 = news; Plane Surface ( psA00cp1Bb1 ) = { llA00cp1Bb1A };                                                                                                       // 
surfA00cp1BbA[] += { psA00cp1Bb1 };
// Transfinite Surface { surfA00cp1BbA[] };
// Recombine Surface { surfA00cp1BbA[] };
*/

llA00cp2Tb1 = newll; Line Loop ( llA00cp2Tb1 ) = { lA00cp2Tb1, lA00cp2Tb2, lA00cp2Tb3, lA00cp2Tb4 };                                                                        //
llA00cp2Tb1A[] += { llA00cp2Tb1 };
psA00cp2Tb1 = news; Plane Surface ( psA00cp2Tb1 ) = { llA00cp2Tb1A[] };                                                                                                     //
surfA00cp2TbA[] += { psA00cp2Tb1 };
// Transfinite Surface { surfA00cp2TbA[] };
// Recombine Surface { surfA00cp2TbA[] };

/*
//----------------------------------------------------------
//// Copper conductor side surfaces

llA00cp12Ib1 = newll; Line Loop ( llA00cp12Ib1 ) = { lA00cp1Bb1, -lA00cp12Ib2, -lA00cp2Tb1,  lA00cp12Ib1 };                                                                 //
psA00cp12Ib1 = news; Plane Surface ( psA00cp12Ib1 ) = { llA00cp12Ib1 };
// Transfinite Surface { psA00cp12Ib1 };
// Recombine Surface { psA00cp12Ib1 };

llA00cp12Ib2 = newll; Line Loop ( llA00cp12Ib2 ) = { lA00cp1Bb2, -lA00cp12Ib3, -lA00cp2Tb2,  lA00cp12Ib2 };                                                                 //
psA00cp12Ib2 = news; Plane Surface ( psA00cp12Ib2 ) = { llA00cp12Ib2 };
// Transfinite Surface { psA00cp12Ib2 };
// Recombine Surface { psA00cp12Ib2 };

llA00cp12Ib3 = newll; Line Loop ( llA00cp12Ib3 ) = { lA00cp1Bb3, -lA00cp12Ib4, -lA00cp2Tb3, lA00cp12Ib3 };                                                                  //
psA00cp12Ib3 = news; Plane Surface ( psA00cp12Ib3 ) = { llA00cp12Ib3 };
// Transfinite Surface { psA00cp12Ib3 };
// Recombine Surface { psA00cp12Ib3 };

llA00cp12Ib4 = newll; Line Loop ( llA00cp12Ib4 ) = { lA00cp1Bb4, -lA00cp12Ib1, -lA00cp2Tb4, lA00cp12Ib4 };                                                                  //
psA00cp12Ib4 = news; Plane Surface ( psA00cp12Ib4 ) = { llA00cp12Ib4 };
// Transfinite Surface { psA00cp12Ib4 };
// Recombine Surface { psA00cp12Ib4 };
*/


/*
/// SURFACE LOOP
//----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
//// Copper electrode surface loop - electrode surface loop

slA00cpSb1 = newsl; Surface Loop ( slA00cpSb1 ) = { surfA00cp2TbA[], psA00cp12Ib1, psA00cp12Ib2, psA00cp12Ib3, psA00cp12Ib4, surfA00cp1BbA[] };
slA00cpSb1A[] += slA00cpSb1;


/// VOLUME
//----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
//// Copper volume

volA00cpV1 = newv; Volume ( volA00cpV1 ) = slA00cpSb1A[];


/// PHYSICAL SURFACE
//----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
//// Physical surfaces - copper conductor electrode surface

// physsurfA00cpSb1 = newreg;
Physical Surface ( physsurfA00cpSb1 ) = { surfA00cp2TbA[], psA00cp12Ib1, psA00cp12Ib2, psA00cp12Ib3, psA00cp12Ib4, surfA00cp1BbA[] };


/// PHYSICAL VOLUME
//----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
//// Physical volume - copper conductor electrode volume

// physvolA00cpV1 = newreg;
Physical Volume ( physvolA00cpV1 ) = { volA00cpV1 };
*/


/// DIAGRAM
//----------------------------------------------------------
//// Copper anode parameters

//      |            |
//      |            |
// ----y1a----------y1b----
//      4            3
//
//      1            2
// ----x1a----------x1b----
//      |            |
//      |            |


// End

