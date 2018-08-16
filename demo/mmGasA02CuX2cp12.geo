// Include "mmGasA00AssemblyParam.geo";

// Include "mmGasA00CuP0cp12Param.geo";
// Include "mmGasA01CuY1cp12Param.geo";
Include "mmGasA02CuX2cp12Param.geo";

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
Include "mmGasA02Bd2pcb12.geo";

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
/// COPPER STRIP STRUCTURE
//----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
//// Variable designation: geometrical element, structural reference, interface / description, number


/// LINES
//----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
//// Copper strip border conductor lines


/// UPPER COPPER CONDUCTOR LEVEL 2
//----------------------------------------------------------
//// Bottom upper copper boundary 2cp1 - level 1

lA02cp1Bb1 = newl; Line ( lA02cp1Bb1 ) = { ptExA02cp1C1, ptExA02cp1C2 };
// Transfinite Line { lA02cp1Bb1 } = lA02cp1Bb1;
lA02cp1Bb2 = newl; Line ( lA02cp1Bb2 ) = { ptExA02cp1C2, ptExA02cp1C3 };
// Transfinite Line { lA02cp1Bb2 } = lA02cp1Bb2;
lA02cp1Bb3 = newl; Line ( lA02cp1Bb3 ) = { ptExA02cp1C3, ptExA02cp1C4 };
// Transfinite Line { lA02cp1Bb3 } = lA02cp1Bb3;
lA02cp1Bb4 = newl; Line ( lA02cp1Bb4 ) = { ptExA02cp1C4, ptExA02cp1C1 };
// Transfinite Line { lA02cp1Bb4 } = lA02cp1Bb4;

//----------------------------------------------------------
//// Connect the upper and lower points with lines to form the conductor - level 2

lA02cp12Ib1 = newl; Line ( lA02cp12Ib1 ) = { ptExA02cp2C1, ptExA02cp1C1 };
// Transfinite Line { lA02cp12Ib1 } = lA02cp12Ib1;
lA02cp12Ib2 = newl; Line ( lA02cp12Ib2 ) = { ptExA02cp2C2, ptExA02cp1C2 };
// Transfinite Line { lA02cp12Ib2 } = lA02cp12Ib2;
lA02cp12Ib3 = newl; Line ( lA02cp12Ib3 ) = { ptExA02cp2C3, ptExA02cp1C3 };
// Transfinite Line { lA02cp12Ib3 } = lA02cp12Ib3;
lA02cp12Ib4 = newl; Line ( lA02cp12Ib4 ) = { ptExA02cp2C4, ptExA02cp1C4 };
// Transfinite Line { lA02cp12Ib4 } = lA02cp12Ib4;

//----------------------------------------------------------
//// Top upper copper boundary 2cp2 - level 2

lA02cp2Tb1 = newl; Line ( lA02cp2Tb1 ) = { ptExA02cp2C1, ptExA02cp2C2 };
// Transfinite Line { lA02cp2Tb1 } = lA02cp2Tb1;
lA02cp2Tb2 = newl; Line ( lA02cp2Tb2 ) = { ptExA02cp2C2, ptExA02cp2C3 };
// Transfinite Line { lA02cp2Tb2 } = lA02cp2Tb2;
lA02cp2Tb3 = newl; Line ( lA02cp2Tb3 ) = { ptExA02cp2C3, ptExA02cp2C4 };
// Transfinite Line { lA02cp2Tb3 } = lA02cp2Tb3;
lA02cp2Tb4 = newl; Line ( lA02cp2Tb4 ) = { ptExA02cp2C4, ptExA02cp2C1 };
// Transfinite Line { lA02cp2Tb4 } = lA02cp2Tb4;


/// GEOMETRY MODULE
/// COPPER STRIP STRUCTURE
//----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
//// Variable designation: geometrical element, structural reference, interface / description, number


/// LINES
//----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
//// Strip lines

For m1 In { 0:numA02cpUx }
 For n1 In { 0:numA02cpUy }

	//----------------------------------------------------------
	//// Lower boundary - level 1

	lA02cp1Bb1~{m1}~{n1} = newl; Line ( lA02cp1Bb1~{m1}~{n1} ) = { ptA02cp1C1~{m1}~{n1}, ptA02cp1C2~{m1}~{n1} };
	// Transfinite Line { lA02cp1Bb1~{m1}~{n1} } = lA02cp1Bb1~{m1}~{n1};
	lA02cp1Bb1A[] += lA02cp1Bb1~{m1}~{n1};
	lA02cp1Bb2~{m1}~{n1} = newl; Line ( lA02cp1Bb2~{m1}~{n1} ) = { ptA02cp1C2~{m1}~{n1}, ptA02cp1C3~{m1}~{n1} };
	// Transfinite Line { lA02cp1Bb2~{m1}~{n1} } = lA02cp1Bb2~{m1}~{n1};
	lA02cp1Bb2A[] += lA02cp1Bb2~{m1}~{n1};
	lA02cp1Bb3~{m1}~{n1} = newl; Line ( lA02cp1Bb3~{m1}~{n1} ) = { ptA02cp1C3~{m1}~{n1}, ptA02cp1C4~{m1}~{n1} };
	// Transfinite Line { lA02cp1Bb3~{m1}~{n1} } = lA02cp1Bb3~{m1}~{n1};
	lA02cp1Bb3A[] += lA02cp1Bb3~{m1}~{n1};
	lA02cp1Bb4~{m1}~{n1} = newl; Line ( lA02cp1Bb4~{m1}~{n1} ) = { ptA02cp1C4~{m1}~{n1}, ptA02cp1C1~{m1}~{n1} };
	// Transfinite Line { lA02cp1Bb4~{m1}~{n1} } = lA02cp1Bb4~{m1}~{n1};
	lA02cp1Bb4A[] += lA02cp1Bb4~{m1}~{n1};

	//----------------------------------------------------------
	//// Upper boundary - level 2

	lA02cp2Tb1~{m1}~{n1} = newl; Line ( lA02cp2Tb1~{m1}~{n1} ) = { ptA02cp2C1~{m1}~{n1}, ptA02cp2C2~{m1}~{n1} };
	// Transfinite Line { lA02cp2Tb1~{m1}~{n1} } = lA02cp2Tb1~{m1}~{n1};
	lA02cp2Tb1A[] += lA02cp2Tb1~{m1}~{n1};
	lA02cp2Tb2~{m1}~{n1} = newl; Line ( lA02cp2Tb2~{m1}~{n1} ) = { ptA02cp2C2~{m1}~{n1}, ptA02cp2C3~{m1}~{n1} };
	// Transfinite Line { lA02cp2Tb2~{m1}~{n1} } = lA02cp2Tb2~{m1}~{n1};
	lA02cp2Tb2A[] += lA02cp2Tb2~{m1}~{n1};
	lA02cp2Tb3~{m1}~{n1} = newl; Line ( lA02cp2Tb3~{m1}~{n1} ) = { ptA02cp2C3~{m1}~{n1}, ptA02cp2C4~{m1}~{n1} };
	// Transfinite Line { lA02cp2Tb3~{m1}~{n1} } = lA02cp2Tb3~{m1}~{n1};
	lA02cp2Tb3A[] += lA02cp2Tb3~{m1}~{n1};
	lA02cp2Tb4~{m1}~{n1} = newl; Line ( lA02cp2Tb4~{m1}~{n1} ) = { ptA02cp2C4~{m1}~{n1}, ptA02cp2C1~{m1}~{n1} };
	// Transfinite Line { lA02cp2Tb4~{m1}~{n1} } = lA02cp2Tb4~{m1}~{n1};
	lA02cp2Tb4A[] += lA02cp2Tb4~{m1}~{n1};

	//----------------------------------------------------------
	//// Connect the upper and lower points with lines to form the strip conductor

	lA02cp12Ib1~{m1}~{n1} = newl; Line ( lA02cp12Ib1~{m1}~{n1} ) = { ptA02cp2C1~{m1}~{n1}, ptA02cp1C1~{m1}~{n1} };
	// Transfinite Line { lA02cp12Ib1~{m1}~{n1} } = lA02cp12Ib1~{m1}~{n1};
	lA02cp12Ib1A[] += lA02cp12Ib1~{m1}~{n1};
	lA02cp12Ib2~{m1}~{n1} = newl; Line ( lA02cp12Ib2~{m1}~{n1} ) = { ptA02cp2C2~{m1}~{n1}, ptA02cp1C2~{m1}~{n1} };
	// Transfinite Line { lA02cp12Ib2~{m1}~{n1} } = lA02cp12Ib2~{m1}~{n1};
	lA02cp12Ib2A[] += lA02cp12Ib2~{m1}~{n1};
	lA02cp12Ib3~{m1}~{n1} = newl; Line ( lA02cp12Ib3~{m1}~{n1} ) = { ptA02cp2C3~{m1}~{n1}, ptA02cp1C3~{m1}~{n1} };
	// Transfinite Line { lA02cp12Ib3~{m1}~{n1} } = lA02cp12Ib3~{m1}~{n1};
	lA02cp12Ib3A[] += lA02cp12Ib3~{m1}~{n1};
	lA02cp12Ib4~{m1}~{n1} = newl; Line ( lA02cp12Ib4~{m1}~{n1} ) = { ptA02cp2C4~{m1}~{n1}, ptA02cp1C4~{m1}~{n1} };
	// Transfinite Line { lA02cp12Ib4~{m1}~{n1} } = lA02cp12Ib4~{m1}~{n1};
	lA02cp12Ib4A[] += lA02cp12Ib4~{m1}~{n1};


 EndFor
EndFor


/// SURFACES
//----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
//// Copper strip surfaces

For m1 In { 0:numA02cpUx }
 For n1 In { 0:numA02cpUy }

	llA02cp12Ib1~{m1}~{n1} = newll; Line Loop ( llA02cp12Ib1~{m1}~{n1} ) = { lA02cp1Bb1~{m1}~{n1}, -lA02cp12Ib2~{m1}~{n1}, -lA02cp2Tb1~{m1}~{n1}, lA02cp12Ib1~{m1}~{n1} };
	psA02cp12Ib1~{m1}~{n1} = news; Plane Surface ( psA02cp12Ib1~{m1}~{n1} ) = { llA02cp12Ib1~{m1}~{n1} };
	surfA02cp12Ib1A[] += psA02cp12Ib1~{m1}~{n1};
	// Transfinite Surface { psA02cp12Ib1~{m1}~{n1} };
	// Recombine Surface { psA02cp12Ib1~{m1}~{n1} };

	llA02cp12Ib2~{m1}~{n1} = newll; Line Loop ( llA02cp12Ib2~{m1}~{n1} ) = { lA02cp1Bb2~{m1}~{n1}, -lA02cp12Ib3~{m1}~{n1}, -lA02cp2Tb2~{m1}~{n1}, lA02cp12Ib2~{m1}~{n1} };
	psA02cp12Ib2~{m1}~{n1} = news; Plane Surface ( psA02cp12Ib2~{m1}~{n1} ) = { llA02cp12Ib2~{m1}~{n1} };
	surfA02cp12Ib2A[] += psA02cp12Ib2~{m1}~{n1};
	// Transfinite Surface { psA02cp12Ib2~{m1}~{n1} };
	// Recombine Surface { psA02cp12Ib2~{m1}~{n1} };

	llA02cp12Ib3~{m1}~{n1} = newll; Line Loop ( llA02cp12Ib3~{m1}~{n1} ) = { lA02cp1Bb3~{m1}~{n1}, -lA02cp12Ib4~{m1}~{n1}, -lA02cp2Tb3~{m1}~{n1}, lA02cp12Ib3~{m1}~{n1} };
	psA02cp12Ib3~{m1}~{n1} = news; Plane Surface ( psA02cp12Ib3~{m1}~{n1} ) = { llA02cp12Ib3~{m1}~{n1} };
	surfA02cp12Ib3A[] += psA02cp12Ib3~{m1}~{n1};
	// Transfinite Surface { psA02cp12Ib3~{m1}~{n1} };
	// Recombine Surface { psA02cp12Ib3~{m1}~{n1} };

	llA02cp12Ib4~{m1}~{n1} = newll; Line Loop ( llA02cp12Ib4~{m1}~{n1} ) = { lA02cp1Bb4~{m1}~{n1}, -lA02cp12Ib1~{m1}~{n1}, -lA02cp2Tb4~{m1}~{n1}, lA02cp12Ib4~{m1}~{n1} };
	psA02cp12Ib4~{m1}~{n1} = news; Plane Surface ( psA02cp12Ib4~{m1}~{n1} ) = { llA02cp12Ib4~{m1}~{n1} };
	surfA02cp12Ib4A[] += psA02cp12Ib4~{m1}~{n1};
	// Transfinite Surface { psA02cp12Ib4~{m1}~{n1} };
	// Recombine Surface { psA02cp12Ib4~{m1}~{n1} };

	llA02cp12Ib5~{m1}~{n1} = newll; Line Loop ( llA02cp12Ib5~{m1}~{n1} ) = { lA02cp1Bb1~{m1}~{n1}, lA02cp1Bb2~{m1}~{n1}, lA02cp1Bb3~{m1}~{n1}, lA02cp1Bb4~{m1}~{n1} };
	llA02cp12Ib5A[] += llA02cp12Ib5~{m1}~{n1};
	psA02cp12Ib5~{m1}~{n1} = news; Plane Surface ( psA02cp12Ib5~{m1}~{n1} ) = { llA02cp12Ib5~{m1}~{n1} };
	surfA02cp1Bb5A[] += psA02cp12Ib5~{m1}~{n1};
	// Transfinite Surface { psA02cp12Ib5~{m1}~{n1} };
	// Recombine Surface { psA02cp12Ib5~{m1}~{n1} };

	llA02cp12Ib6~{m1}~{n1} = newll; Line Loop ( llA02cp12Ib6~{m1}~{n1} ) = { lA02cp2Tb1~{m1}~{n1}, lA02cp2Tb2~{m1}~{n1}, lA02cp2Tb3~{m1}~{n1}, lA02cp2Tb4~{m1}~{n1} };
	psA02cp12Ib6~{m1}~{n1} = news; Plane Surface ( psA02cp12Ib6~{m1}~{n1} ) = { llA02cp12Ib6~{m1}~{n1} };
	surfA02cp2Tb6A[] += psA02cp12Ib6~{m1}~{n1};
	// Transfinite Surface { psA02cp12Ib6~{m1}~{n1} };
	// Recombine Surface { psA02cp12Ib6~{m1}~{n1} };

	//----------------------------------------------------------
	//// Copper strip and surface loop - Anode Surface loop

	// slA02cpSb1~{m1}~{n1} = newsl; Surface Loop ( slA02cpSb1~{m1}~{n1} ) = { psA02cp12Ib1~{m1}~{n1}, psA02cp12Ib2~{m1}~{n1}, psA02cp12Ib3~{m1}~{n1}, psA02cp12Ib4~{m1}~{n1}, psA02cp12Ib5~{m1}~{n1}, psA02cp12Ib6~{m1}~{n1} };
	// slA02cpSb1[] += slA02cpSb1~{m1}~{n1};


 EndFor
EndFor


/// SURFACE LOOP
//----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
//// Strip electrode surface Loop - lower electrode surface loop

//----------------------------------------------------------
//// Strip copper strip layers

// slA02cpTSb1[] = newsl; Surface Loop ( slA02cpTSb1 ) = { surfA02cp12Ib1A[], surfA02cp12Ib2A[], surfA02cp12Ib3A[], surfA02cp12Ib4A[], surfA02cp1Bb5A[], surfA02cp2Tb6A[] };
// Transfinite Surface { slA02cpTSb1[] };
// Recombine Surface { slA02cpTSb1[] };

// slA02cpBSb1[] += { surfA02cp1Bb5A[] };
// Transfinite Surface { slA02cpBSb1[] };
// Recombine Surface { slA02cpBSb1[] };

//----------------------------------------------------------
//// Strip electrode surface Loop - upper electrode surface loop

slA02cpSb1 = newsl; Surface Loop ( slA02cpSb1 ) = { surfA02cp12Ib1A[], surfA02cp12Ib2A[], surfA02cp12Ib3A[], surfA02cp12Ib4A[], surfA02cp1Bb5A[], surfA02cp2Tb6A[] };
slA02cpSb1A[] += slA02cpSb1;

		// surfExA02cp1[] = {};
        // vA02cp1[] = {};
        // sA02cp1[] = {};
        // surfExA02cp1[] = { surfA02cp1Bb5A[] };
        // surfExA02cp1[] = Extrude {0, 0, (lvlA02cp2 - lvlA02cp1) } { Surface { surfExA02cp1[] }; Recombine;
        // };

          // vA02cp1[] += surfExA02cp1[1];
          // vtA02cp1[] += vA02cp1[];
          // sA02cp1[] += surfExA02cp1[{2:5}];
          // stA02cp1[] += sA02cp1[];


/// VOLUME
//----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
//// Volume

// volA02cpV1 = newv; Volume ( volA02cpV1 ) = slA02cpSb1[];
volA02cpV1 = newv; Volume ( volA02cpV1 ) = slA02cpSb1A[];


/// PHYSICAL SURFACE
//----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
//// Physical surfaces - strip copper conductor electrode surface

// physsurfA02cpSb1 = newreg;
Physical Surface ( physsurfA02cpSb1 ) = { surfA02cp12Ib1A[], surfA02cp12Ib2A[], surfA02cp12Ib3A[], surfA02cp12Ib4A[], surfA02cp1Bb5A[], surfA02cp2Tb6A[] };


/// PHYSICAL VOLUME
//----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
//// Physical volume - strip copper conductor electrode volume

// physvolA02cpV1 = newreg;
Physical Volume ( physvolA02cpV1 ) = { volA02cpV1 };


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