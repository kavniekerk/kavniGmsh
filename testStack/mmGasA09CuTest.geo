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
Include "mmGasA09CuP1cp12ParamTest.geo";

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


/// LINES
//----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
//// Copper strip border conductor lines


/// LOWER COPPER CONDUCTOR LEVEL 1
//----------------------------------------------------------
//// Bottom upper copper boundary 1cp1 - level 1


lA01cp1Bb1 = newl; Line ( lA01cp1Bb1 ) = { ptExA01cp1C1, ptExA01cp1C2 };
// Transfinite Line { lA01cp1Bb1 } = lA01cp1Bb1;
lA01cp1Bb2 = newl; Line ( lA01cp1Bb2 ) = { ptExA01cp1C2, ptExA01cp1C3 };
// Transfinite Line { lA01cp1Bb2 } = lA01cp1Bb2;
lA01cp1Bb3 = newl; Line ( lA01cp1Bb3 ) = { ptExA01cp1C3, ptExA01cp1C4 };
// Transfinite Line { lA01cp1Bb3 } = lA01cp1Bb3;
lA01cp1Bb4 = newl; Line ( lA01cp1Bb4 ) = { ptExA01cp1C4, ptExA01cp1C1 };
// Transfinite Line { lA01cp1Bb4 } = lA01cp1Bb4;


//----------------------------------------------------------
//// Connect the upper and lower points with lines to form the conductor - level 1

lA01cp12Ib1 = newl; Line ( lA01cp12Ib1 ) = { ptExA01cp2C1, ptExA01cp1C1 };
// Transfinite Line { lA01cp12Ib1 } = lA01cp12Ib1;
lA01cp12Ib2 = newl; Line ( lA01cp12Ib2 ) = { ptExA01cp2C2, ptExA01cp1C2 };
// Transfinite Line { lA01cp12Ib2 } = lA01cp12Ib2;
lA01cp12Ib3 = newl; Line ( lA01cp12Ib3 ) = { ptExA01cp2C3, ptExA01cp1C3 };
// Transfinite Line { lA01cp12Ib3 } = lA01cp12Ib3;
lA01cp12Ib4 = newl; Line ( lA01cp12Ib4 ) = { ptExA01cp2C4, ptExA01cp1C4 };
// Transfinite Line { lA01cp12Ib4 } = lA01cp12Ib4;


//----------------------------------------------------------
//// Upper copper boundary 1cp2 - level 2

lA01cp2Tb1 = newl; Line ( lA01cp2Tb1 ) = { ptExA01cp2C1, ptExA01cp2C2 };
// Transfinite Line { lA01cp2Tb1 } = lA01cp2Tb1;
lA01cp2Tb2 = newl; Line ( lA01cp2Tb2 ) = { ptExA01cp2C2, ptExA01cp2C3 };
// Transfinite Line { lA01cp2Tb2 } = lA01cp2Tb2;
lA01cp2Tb3 = newl; Line ( lA01cp2Tb3 ) = { ptExA01cp2C3, ptExA01cp2C4 };
// Transfinite Line { lA01cp2Tb3 } = lA01cp2Tb3;
lA01cp2Tb4 = newl; Line ( lA01cp2Tb4 ) = { ptExA01cp2C4, ptExA01cp2C1 };
// Transfinite Line { lA01cp2Tb4 } = lA01cp2Tb4;


/// LINES
//----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
//// Strip lines


For m1 In { 0:numA01cpUy }
  For n1 In { 0:numA01cpUx }


    //----------------------------------------------------------
    //// Lower boundary - level 1

    lA01cp1Bb1~{m1}~{n1} = newl; Line ( lA01cp1Bb1~{m1}~{n1} ) = { ptA01cp1C1~{m1}~{n1}, ptA01cp1C2~{m1}~{n1} };
    // Transfinite Line { lA01cp1Bb1~{m1}~{n1} } = lA01cp1Bb1~{m1}~{n1};
    lA01cp1Bb1A[] += lA01cp1Bb1~{m1}~{n1};
    // Delete { Line{ lA01cp1Bb1~{m1}~{n1} }; }
    lA01cp1Bb2~{m1}~{n1} = newl; Line ( lA01cp1Bb2~{m1}~{n1} ) = { ptA01cp1C2~{m1}~{n1}, ptA01cp1C3~{m1}~{n1} };
    // Transfinite Line { lA01cp1Bb2~{m1}~{n1} } = lA01cp1Bb2~{m1}~{n1};
    lA01cp1Bb2A[] += lA01cp1Bb2~{m1}~{n1};
    // Delete { Line{ lA01cp1Bb2~{m1}~{n1} }; }
    lA01cp1Bb3~{m1}~{n1} = newl; Line ( lA01cp1Bb3~{m1}~{n1} ) = { ptA01cp1C3~{m1}~{n1}, ptA01cp1C4~{m1}~{n1} };
    // Transfinite Line { lA01cp1Bb3~{m1}~{n1} } = lA01cp1Bb3~{m1}~{n1};
    lA01cp1Bb3A[] += lA01cp1Bb3~{m1}~{n1};
    // Delete { Line{ lA01cp1Bb3~{m1}~{n1} }; }
    lA01cp1Bb4~{m1}~{n1} = newl; Line ( lA01cp1Bb4~{m1}~{n1} ) = { ptA01cp1C4~{m1}~{n1}, ptA01cp1C1~{m1}~{n1} };
    // Transfinite Line { lA01cp1Bb4~{m1}~{n1} } = lA01cp1Bb4~{m1}~{n1};
    lA01cp1Bb4A[] += lA01cp1Bb4~{m1}~{n1};
    // Delete { Line{ lA01cp1Bb4~{m1}~{n1} }; }

    //----------------------------------------------------------
    //// Upper boundary - level 2

    lA01cp2Tb1~{m1}~{n1} = newl; Line ( lA01cp2Tb1~{m1}~{n1} ) = { ptA01cp2C1~{m1}~{n1}, ptA01cp2C2~{m1}~{n1} };
    // Transfinite Line { lA01cp2Tb1~{m1}~{n1} } = lA01cp2Tb1~{m1}~{n1};
    lA01cp2Tb1A[] += lA01cp2Tb1~{m1}~{n1};
    lA01cp2Tb2~{m1}~{n1} = newl; Line ( lA01cp2Tb2~{m1}~{n1} ) = { ptA01cp2C2~{m1}~{n1}, ptA01cp2C3~{m1}~{n1} };
    // Transfinite Line { lA01cp2Tb2~{m1}~{n1} } = lA01cp2Tb2~{m1}~{n1};
    lA01cp2Tb2A[] += lA01cp2Tb2~{m1}~{n1};
    lA01cp2Tb3~{m1}~{n1} = newl; Line ( lA01cp2Tb3~{m1}~{n1} ) = { ptA01cp2C3~{m1}~{n1}, ptA01cp2C4~{m1}~{n1} };
    // Transfinite Line { lA01cp2Tb3~{m1}~{n1} } = lA01cp2Tb3~{m1}~{n1};
    lA01cp2Tb3A[] += lA01cp2Tb3~{m1}~{n1};
    lA01cp2Tb4~{m1}~{n1} = newl; Line ( lA01cp2Tb4~{m1}~{n1} ) = { ptA01cp2C4~{m1}~{n1}, ptA01cp2C1~{m1}~{n1} };
    // Transfinite Line { lA01cp2Tb4~{m1}~{n1} } = lA01cp2Tb4~{m1}~{n1};
    lA01cp2Tb4A[] += lA01cp2Tb4~{m1}~{n1};
 
    //----------------------------------------------------------
    //// Intermediate boundary - connect the upper and lower points with lines to form the strip conductor

    lA01cp12Ib1~{m1}~{n1} = newl; Line ( lA01cp12Ib1~{m1}~{n1} ) = { ptA01cp2C1~{m1}~{n1}, ptA01cp1C1~{m1}~{n1} };
    // Transfinite Line { lA01cp12Ib1~{m1}~{n1} } = lA01cp12Ib1~{m1}~{n1};
    lA01cp12Ib1A[] += lA01cp12Ib1~{m1}~{n1};
    lA01cp12Ib2~{m1}~{n1} = newl; Line ( lA01cp12Ib2~{m1}~{n1} ) = { ptA01cp2C2~{m1}~{n1}, ptA01cp1C2~{m1}~{n1} };
    // Transfinite Line { lA01cp12Ib2~{m1}~{n1} } = lA01cp12Ib2~{m1}~{n1};
    lA01cp12Ib2A[] += lA01cp12Ib2~{m1}~{n1};
    lA01cp12Ib3~{m1}~{n1} = newl; Line ( lA01cp12Ib3~{m1}~{n1} ) = { ptA01cp2C3~{m1}~{n1}, ptA01cp1C3~{m1}~{n1} };
    // Transfinite Line { lA01cp12Ib3~{m1}~{n1} } = lA01cp12Ib3~{m1}~{n1};
    lA01cp12Ib3A[] += lA01cp12Ib3~{m1}~{n1};
    lA01cp12Ib4~{m1}~{n1} = newl; Line ( lA01cp12Ib4~{m1}~{n1} ) = { ptA01cp2C4~{m1}~{n1}, ptA01cp1C4~{m1}~{n1} };
    // Transfinite Line { lA01cp12Ib4~{m1}~{n1} } = lA01cp12Ib4~{m1}~{n1};
    lA01cp12Ib4A[] += lA01cp12Ib4~{m1}~{n1};


 EndFor
EndFor


/// SURFACES
//----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
//// Copper strip surfaces



For m1 In { 0:numA01cpUy }
 For n1 In { 0:numA01cpUx }


    //----------------------------------------------------------
    //// Side boundary

    llA01cp12Ib1~{m1}~{n1} = newll; Line Loop ( llA01cp12Ib1~{m1}~{n1} ) = { lA01cp1Bb1~{m1}~{n1}, -lA01cp12Ib2~{m1}~{n1}, -lA01cp2Tb1~{m1}~{n1}, lA01cp12Ib1~{m1}~{n1} };
    psA01cp12Ib1~{m1}~{n1} = news; Plane Surface ( psA01cp12Ib1~{m1}~{n1} ) = { llA01cp12Ib1~{m1}~{n1} };
    surfA01cp12Ib1A[] += psA01cp12Ib1~{m1}~{n1};
    // Transfinite Surface { psA01cp12Ib1~{m1}~{n1} };
    // Recombine Surface { psA01cp12Ib1~{m1}~{n1} };

    //----------------------------------------------------------
    //// Side boundary

    llA01cp12Ib2~{m1}~{n1} = newll; Line Loop ( llA01cp12Ib2~{m1}~{n1} ) = { lA01cp1Bb2~{m1}~{n1}, -lA01cp12Ib3~{m1}~{n1}, -lA01cp2Tb2~{m1}~{n1}, lA01cp12Ib2~{m1}~{n1} };
    psA01cp12Ib2~{m1}~{n1} = news; Plane Surface ( psA01cp12Ib2~{m1}~{n1} ) = { llA01cp12Ib2~{m1}~{n1} };
    surfA01cp12Ib2A[] += psA01cp12Ib2~{m1}~{n1};
    // Transfinite Surface { psA01cp12Ib2~{m1}~{n1} };
    // Recombine Surface { psA01cp12Ib2~{m1}~{n1} };

    //----------------------------------------------------------
    //// Side boundary

    llA01cp12Ib3~{m1}~{n1} = newll; Line Loop ( llA01cp12Ib3~{m1}~{n1} ) = { lA01cp1Bb3~{m1}~{n1}, -lA01cp12Ib4~{m1}~{n1}, -lA01cp2Tb3~{m1}~{n1}, lA01cp12Ib3~{m1}~{n1} };
    psA01cp12Ib3~{m1}~{n1} = news; Plane Surface ( psA01cp12Ib3~{m1}~{n1} ) = { llA01cp12Ib3~{m1}~{n1} };
    surfA01cp12Ib3A[] += psA01cp12Ib3~{m1}~{n1};
    // Transfinite Surface { psA01cp12Ib3~{m1}~{n1} };
    // Recombine Surface { psA01cp12Ib3~{m1}~{n1} };

    //----------------------------------------------------------
    //// Side boundary

    llA01cp12Ib4~{m1}~{n1} = newll; Line Loop ( llA01cp12Ib4~{m1}~{n1} ) = { lA01cp1Bb4~{m1}~{n1}, -lA01cp12Ib1~{m1}~{n1}, -lA01cp2Tb4~{m1}~{n1}, lA01cp12Ib4~{m1}~{n1} };
    psA01cp12Ib4~{m1}~{n1} = news; Plane Surface ( psA01cp12Ib4~{m1}~{n1} ) = { llA01cp12Ib4~{m1}~{n1} };
    surfA01cp12Ib4A[] += psA01cp12Ib4~{m1}~{n1};
    // Transfinite Surface { psA01cp12Ib4~{m1}~{n1} };
    // Recombine Surface { psA01cp12Ib4~{m1}~{n1} };

    //----------------------------------------------------------
    //// Bottom boundary

    llA01cp12Bb5~{m1}~{n1} = newll; Line Loop ( llA01cp12Bb5~{m1}~{n1} ) = { lA01cp1Bb1~{m1}~{n1}, lA01cp1Bb2~{m1}~{n1}, lA01cp1Bb3~{m1}~{n1}, lA01cp1Bb4~{m1}~{n1} };
    llA01cp12Bb5A[] += llA01cp12Bb5~{m1}~{n1};
    psA01cp12Bb5A~{m1}~{n1} = news; Plane Surface ( psA01cp12Bb5A~{m1}~{n1} ) = { llA01cp12Bb5~{m1}~{n1} };
    // surfA01cp1Bb5A[] += psA01cp12Bb5A~{m1}~{n1};
    // Transfinite Surface { psA01cp12Bb5A~{m1}~{n1} };
    // Recombine Surface { psA01cp12Bb5A~{m1}~{n1} };

    //----------------------------------------------------------
    //// Top boundary

    llA01cp12Tb6~{m1}~{n1} = newll; Line Loop ( llA01cp12Tb6~{m1}~{n1} ) = { lA01cp2Tb1~{m1}~{n1}, lA01cp2Tb2~{m1}~{n1}, lA01cp2Tb3~{m1}~{n1}, lA01cp2Tb4~{m1}~{n1} };
    psA01cp12Tb6A~{m1}~{n1} = news; Plane Surface ( psA01cp12Tb6A~{m1}~{n1} ) = { llA01cp12Tb6~{m1}~{n1} };
    // surfA01cp2Tb6A[] += psA01cp12Tb6A~{m1}~{n1};
    // Transfinite Surface { psA01cp12Tb6A~{m1}~{n1} };
    // Recombine Surface { psA01cp12Tb6A~{m1}~{n1} };

    //----------------------------------------------------------
    //// Copper strip and surface loop - anode surface loop

    slA01cpSb1~{m1}~{n1} = newsl; Surface Loop ( slA01cpSb1~{m1}~{n1} ) = { psA01cp12Ib1~{m1}~{n1}, psA01cp12Ib2~{m1}~{n1}, psA01cp12Ib3~{m1}~{n1}, psA01cp12Ib4~{m1}~{n1}, psA01cp12Bb5A~{m1}~{n1}, psA01cp12Tb6A~{m1}~{n1} };
    slA01cpSb1A1[] += slA01cpSb1~{m1}~{n1};
    slA01cpSb1[] = { psA01cp12Ib1~{m1}~{n1}, psA01cp12Ib2~{m1}~{n1}, psA01cp12Ib3~{m1}~{n1}, psA01cp12Ib4~{m1}~{n1}, psA01cp12Bb5A~{m1}~{n1}, psA01cp12Tb6A~{m1}~{n1} };   
    slA01cpSb1A2[] += { psA01cp12Ib1~{m1}~{n1}, psA01cp12Ib2~{m1}~{n1}, psA01cp12Ib3~{m1}~{n1}, psA01cp12Ib4~{m1}~{n1}, psA01cp12Bb5A~{m1}~{n1}, psA01cp12Tb6A~{m1}~{n1} };
    physsurfA01cpSb1~{m1}~{n1} = newreg; Physical Surface ( physsurfA01cpSb1~{m1}~{n1} ) = { slA01cpSb1[] };


 EndFor
EndFor


For m1 In { 0:numA01cpUy }
 For n1 In { 0:numA01cpUx }


volA01cpV1~{m1}~{n1} = newv; Volume ( volA01cpV1~{m1}~{n1} ) = { slA01cpSb1~{m1}~{n1} };
physvolA01cpV1~{m1}~{n1} = newreg; Physical Volume ( physvolA01cpV1~{m1}~{n1} ) = { volA01cpV1~{m1}~{n1} };


 EndFor
EndFor


/// SURFACE LOOP
//----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
//// Strip electrode surface loop - lower electrode surface loop

//----------------------------------------------------------
//// Strip copper strip layers

// slA01cpTSb1[] = newsl; Surface Loop ( slA01cpTSb1 ) = { surfA01cp12Ib1A[], surfA01cp12Ib2A[], surfA01cp12Ib3A[], surfA01cp12Ib4A[], surfA01cp1Bb5A[], surfA01cp2Tb6A[] };
// Transfinite Surface { slA01cpTSb1[] };
// Recombine Surface { slA01cpTSb1[] };

// slA01cpBSb1[] += { surfA01cp1Bb5A[] };
// Transfinite Surface { slA01cpBSb1[] };
// Recombine Surface { slA01cpBSb1[] };

//----------------------------------------------------------
//// Strip electrode surface loop - upper electrode surface loop

// slA01cpSb1 = newsl; Surface Loop ( slA01cpSb1 ) = { surfA01cp12Ib1A[], surfA01cp12Ib2A[], surfA01cp12Ib3A[], surfA01cp12Ib4A[], surfA01cp1Bb5A[], surfA01cp2Tb6A[] };
// slA01cpSb1A[] += slA01cpSb1;

		// surfExA01cp1[] = {};
        // vA01cp1[] = {};
        // sA01cp1[] = {};
        // surfExA01cp1[] = { surfA01cp1Bb5A[] };
        // surfExA01cp1[] = Extrude {0, 0, (lvlA01cp2 - lvlA01cp1) } { Surface { surfExA01cp1[] }; Recombine;
        // };

          // vA01cp1[] += surfExA01cp1[1];
          // vtA01cp1[] += vA01cp1[];
          // sA01cp1[] += surfExA01cp1[{2:5}];
          // stA01cp1[] += sA01cp1[];


/// VOLUME
//----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
//// Volume

// volA01cpV1 = newv; Volume ( volA01cpV1 ) = { slA01cpSb1[] };
// volA01cpV1 = newv; Volume ( volA01cpV1 ) = { slA01cpSb1A1[] };


/// PHYSICAL SURFACE
//----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
//// Physical surfaces - strip copper conductor electrode surface

// physsurfA01cpSb1 = newreg; 
// Physical Surface ( physsurfA01cpSb1 ) = { surfA01cp12Ib1A[], surfA01cp12Ib2A[], surfA01cp12Ib3A[], surfA01cp12Ib4A[], surfA01cp1Bb5A[], surfA01cp2Tb6A[] };
Physical Surface ( physsurfA01cpSb1 ) = { slA01cpSb1A2[] };


/// PHYSICAL VOLUME
//----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
//// Physical volume - strip copper conductor electrode volume

// physvolA01cpV1 = newreg;
// Physical Volume ( physvolA01cpV1 ) = { volA01cpV1 };


/// DIAGRAM
//----------------------------------------------------------
//// Copper anode parameters

//      |            |
//      |            |
// ----y1b----------x1b----
//      2            3
//
//      1            4
// ----y1a----------x1a----
//      |            |
//      |            |


// End
