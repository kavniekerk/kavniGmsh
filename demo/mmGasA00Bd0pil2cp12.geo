// Include "mmGasA00AssemblyParam.geo";

// Include "mmGasA00CuP0cp12Param.geo";
// Include "mmGasA01CuY1cp12Param.geo";
// Include "mmGasA02CuX2cp12Param.geo";

// Include "mmGasA00Bd0pcb12Param.geo";
// Include "mmGasA01Bd1pcb12Param.geo";
// Include "mmGasA02Bd2pcb12Param.geo";

// Include "mmGasA00Str0Wr12Param.geo";
// Include "mmGasA00Cur0Wr12Param.geo";
Include "mmGasA03Bd0pil2cp12Param.geo";

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
/// PILLAR STRUCTURE
//----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
//// Variable designation: geometrical element, structural reference, interface / description, number


/// LINES
//----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
//// Circular boundaries

For m In { 0:numA03PilUx }
 For n In { 0:numA03PilUy }

	//----------------------------------------------------------
	//// Top layer

	lcA03Bd0pil3L2Ar1~{m}~{n} = newc; Circle ( lcA03Bd0pil3L2Ar1~{m}~{n} ) = { ptcA03Bd0pil3L2L1~{m}~{n}, ptcA03Bd0pil3L2~{m}~{n}, ptcA03Bd0pil3L2B2~{m}~{n} };
	lcA03Bd0pil3L2Ar2~{m}~{n} = newc; Circle ( lcA03Bd0pil3L2Ar2~{m}~{n} ) = { ptcA03Bd0pil3L2B2~{m}~{n}, ptcA03Bd0pil3L2~{m}~{n}, ptcA03Bd0pil3L2R3~{m}~{n} };
	lcA03Bd0pil3L2Ar3~{m}~{n} = newc; Circle ( lcA03Bd0pil3L2Ar3~{m}~{n} ) = { ptcA03Bd0pil3L2R3~{m}~{n}, ptcA03Bd0pil3L2~{m}~{n}, ptcA03Bd0pil3L2T4~{m}~{n} };
	lcA03Bd0pil3L2Ar4~{m}~{n} = newc; Circle ( lcA03Bd0pil3L2Ar4~{m}~{n} ) = { ptcA03Bd0pil3L2T4~{m}~{n}, ptcA03Bd0pil3L2~{m}~{n}, ptcA03Bd0pil3L2L1~{m}~{n} };

	//----------------------------------------------------------
	//// Upper etched layer

	lcA03Bd0pil3L1Ar1~{m}~{n} = newc; Circle ( lcA03Bd0pil3L1Ar1~{m}~{n} ) = { ptcA03Bd0pil3L1L1~{m}~{n}, ptcA03Bd0pil3L1~{m}~{n}, ptcA03Bd0pil3L1B2~{m}~{n} };
	lcA03Bd0pil3L1Ar2~{m}~{n} = newc; Circle ( lcA03Bd0pil3L1Ar2~{m}~{n} ) = { ptcA03Bd0pil3L1B2~{m}~{n}, ptcA03Bd0pil3L1~{m}~{n}, ptcA03Bd0pil3L1R3~{m}~{n} };
	lcA03Bd0pil3L1Ar3~{m}~{n} = newc; Circle ( lcA03Bd0pil3L1Ar3~{m}~{n} ) = { ptcA03Bd0pil3L1R3~{m}~{n}, ptcA03Bd0pil3L1~{m}~{n}, ptcA03Bd0pil3L1T4~{m}~{n} };
	lcA03Bd0pil3L1Ar4~{m}~{n} = newc; Circle ( lcA03Bd0pil3L1Ar4~{m}~{n} ) = { ptcA03Bd0pil3L1T4~{m}~{n}, ptcA03Bd0pil3L1~{m}~{n}, ptcA03Bd0pil3L1L1~{m}~{n} };

	//-------------------------------------------------------
	//// Line connecting top of pillar to bottom of ecthed area

	lA03Bd0pil3L12l1~{m}~{n} = newl; Line ( lA03Bd0pil3L12l1~{m}~{n} ) = { ptcA03Bd0pil3L1L1~{m}~{n}, ptcA03Bd0pil3L2L1~{m}~{n} };
	// Transfinite Line { lA03Bd0pil3L12l1~{m}~{n} } = lA03Bd0pil3L12l1~{m}~{n};
	lA03Bd0pil3L12l2~{m}~{n} = newl; Line ( lA03Bd0pil3L12l2~{m}~{n} ) = { ptcA03Bd0pil3L1B2~{m}~{n}, ptcA03Bd0pil3L2B2~{m}~{n} };
	// Transfinite Line { lA03Bd0pil3L12l2~{m}~{n} } = lA03Bd0pil3L12l2~{m}~{n};
	lA03Bd0pil3L12l3~{m}~{n} = newl; Line ( lA03Bd0pil3L12l3~{m}~{n} ) = { ptcA03Bd0pil3L1R3~{m}~{n}, ptcA03Bd0pil3L2R3~{m}~{n} };
	// Transfinite Line { lA03Bd0pil3L12l3~{m}~{n} } = lA03Bd0pil3L12l3~{m}~{n};
	lA03Bd0pil3L12l4~{m}~{n} = newl; Line ( lA03Bd0pil3L12l4~{m}~{n} ) = { ptcA03Bd0pil3L1T4~{m}~{n}, ptcA03Bd0pil3L2T4~{m}~{n} };
	// Transfinite Line { lA03Bd0pil3L12l4~{m}~{n} } = lA03Bd0pil3L12l4~{m}~{n};

	/// Middle level (2pil2)
	//----------------------------------------------------------
	//// Middle top / bottom of pillar body / top of copper plane

	lcA03Bd0pil2L2Ar1~{m}~{n} = newc; Circle ( lcA03Bd0pil2L2Ar1~{m}~{n} ) = { ptcA03Bd0pil2L2L1~{m}~{n}, ptcA03Bd0pil2L2~{m}~{n}, ptcA03Bd0pil2L2B2~{m}~{n} };
	lcA03Bd0pil2L2Ar2~{m}~{n} = newc; Circle ( lcA03Bd0pil2L2Ar2~{m}~{n} ) = { ptcA03Bd0pil2L2B2~{m}~{n}, ptcA03Bd0pil2L2~{m}~{n}, ptcA03Bd0pil2L2R3~{m}~{n} };
	lcA03Bd0pil2L2Ar3~{m}~{n} = newc; Circle ( lcA03Bd0pil2L2Ar3~{m}~{n} ) = { ptcA03Bd0pil2L2R3~{m}~{n}, ptcA03Bd0pil2L2~{m}~{n}, ptcA03Bd0pil2L2T4~{m}~{n} };
	lcA03Bd0pil2L2Ar4~{m}~{n} = newc; Circle ( lcA03Bd0pil2L2Ar4~{m}~{n} ) = { ptcA03Bd0pil2L2T4~{m}~{n}, ptcA03Bd0pil2L2~{m}~{n}, ptcA03Bd0pil2L2L1~{m}~{n} };

	//----------------------------------------------------------
	//// Middle bottom

	// lcA03Bd0pil2L1Ar1~{m}~{n} = newc; Circle ( lcA03Bd0pil2L1Ar1~{m}~{n} ) = { ptcA03Bd0pil2L1L1~{m}~{n}, ptcA03Bd0pil2L1~{m}~{n}, ptcA03Bd0pil2L1B2~{m}~{n} };
	// lcA03Bd0pil2L1Ar2~{m}~{n} = newc; Circle ( lcA03Bd0pil2L1Ar2~{m}~{n} ) = { ptcA03Bd0pil2L1B2~{m}~{n}, ptcA03Bd0pil2L1~{m}~{n}, ptcA03Bd0pil2L1R3~{m}~{n} };
	// lcA03Bd0pil2L1Ar3~{m}~{n} = newc; Circle ( lcA03Bd0pil2L1Ar3~{m}~{n} ) = { ptcA03Bd0pil2L1R3~{m}~{n}, ptcA03Bd0pil2L1~{m}~{n}, ptcA03Bd0pil2L1T4~{m}~{n} };
	// lcA03Bd0pil2L1Ar4~{m}~{n} = newc; Circle ( lcA03Bd0pil2L1Ar4~{m}~{n} ) = { ptcA03Bd0pil2L1T4~{m}~{n}, ptcA03Bd0pil2L1~{m}~{n}, ptcA03Bd0pil2L1L1~{m}~{n} };

	/// Lower level (1pil2)
	//----------------------------------------------------------
	//// Lower top

	// lcA03Bd0pil1L2Ar1~{m}~{n} = newc; Circle ( lcA03Bd0pil1L2Ar1~{m}~{n} ) = { ptcA03Bd0pil1L2L1~{m}~{n}, ptcA03Bd0pil1L2~{m}~{n}, ptcA03Bd0pil1L2B2~{m}~{n} };
	// lcA03Bd0pil1L2Ar2~{m}~{n} = newc; Circle ( lcA03Bd0pil1L2Ar2~{m}~{n} ) = { ptcA03Bd0pil1L2B2~{m}~{n}, ptcA03Bd0pil1L2~{m}~{n}, ptcA03Bd0pil1L2R3~{m}~{n} };
	// lcA03Bd0pil1L2Ar3~{m}~{n} = newc; Circle ( lcA03Bd0pil1L2Ar3~{m}~{n} ) = { ptcA03Bd0pil1L2R3~{m}~{n}, ptcA03Bd0pil1L2~{m}~{n}, ptcA03Bd0pil1L2T4~{m}~{n} };
	// lcA03Bd0pil1L2Ar4~{m}~{n} = newc; Circle ( lcA03Bd0pil1L2Ar4~{m}~{n} ) = { ptcA03Bd0pil1L2T4~{m}~{n}, ptcA03Bd0pil1L2~{m}~{n}, ptcA03Bd0pil1L2L1~{m}~{n} };

	//----------------------------------------------------------
	//// Lower bottom

	// lcA03Bd0pil1L1Ar1~{m}~{n} = newc; Circle ( lcA03Bd0pil1L1Ar1~{m}~{n} ) = { ptcA03Bd0pil1L1L1~{m}~{n}, ptcA03Bd0pil1L1~~{m}~{n}, ptcA03Bd0pil1L1B2~{m}~{n} };
	// lcA03Bd0pil1L1Ar2~{m}~{n} = newc; Circle ( lcA03Bd0pil1L1Ar2~{m}~{n} ) = { ptcA03Bd0pil1L1B2~{m}~{n}, ptcA03Bd0pil1L1~~{m}~{n}, ptcA03Bd0pil1L1R3~{m}~{n} };
	// lcA03Bd0pil1L1Ar3~{m}~{n} = newc; Circle ( lcA03Bd0pil1L1Ar3~{m}~{n} ) = { ptcA03Bd0pil1L1R3~{m}~{n}, ptcA03Bd0pil1L1~~{m}~{n}, ptcA03Bd0pil1L1T4~{m}~{n} };
	// lcA03Bd0pil1L1Ar4~{m}~{n} = newc; Circle ( lcA03Bd0pil1L1Ar4~{m}~{n} ) = { ptcA03Bd0pil1L1T4~{m}~{n}, ptcA03Bd0pil1L1~~{m}~{n}, ptcA03Bd0pil1L1L1~{m}~{n} };

	//----------------------------------------------------------
	//// Lines connecting top and bottom pillar body / gas interface

	lA03Bd0pil23L21l1~{m}~{n} = newl; Line ( lA03Bd0pil23L21l1~{m}~{n} ) = { ptcA03Bd0pil2L2L1~{m}~{n}, ptcA03Bd0pil3L1L1~{m}~{n} }; 				// ptcA03Bd0pil3L2L1~{m}~{n}
	// Transfinite Line { lA03Bd0pil23L21l1~{m}~{n} } = lA03Bd0pil23L21l1~{m}~{n};
	lA03Bd0pil23L21l2~{m}~{n} = newl; Line ( lA03Bd0pil23L21l2~{m}~{n} ) = { ptcA03Bd0pil2L2B2~{m}~{n}, ptcA03Bd0pil3L1B2~{m}~{n} }; 				// ptcA03Bd0pil3L2B2~{m}~{n} 
	// Transfinite Line { lA03Bd0pil23L21l2~{m}~{n} } = lA03Bd0pil23L21l2~{m}~{n};
	lA03Bd0pil23L21l3~{m}~{n} = newl; Line ( lA03Bd0pil23L21l3~{m}~{n} ) = { ptcA03Bd0pil2L2R3~{m}~{n}, ptcA03Bd0pil3L1R3~{m}~{n} }; 				// ptcA03Bd0pil3L2R3~{m}~{n}
	// Transfinite Line { lA03Bd0pil23L21l3~{m}~{n} } = lA03Bd0pil23L21l3~{m}~{n};
	lA03Bd0pil23L21l4~{m}~{n} = newl; Line ( lA03Bd0pil23L21l4~{m}~{n} ) = { ptcA03Bd0pil2L2T4~{m}~{n}, ptcA03Bd0pil3L1T4~{m}~{n} }; 				// ptcA03Bd0pil3L2T4~{m}~{n}
	// Transfinite Line { lA03Bd0pil23L21l4~{m}~{n} } = lA03Bd0pil23L21l4~{m}~{n};

	// lA03Bd0pil2L12l1~{m}~{n} = newl; Line ( lA03Bd0pil2L12l1~{m}~{n} ) = { ptcA03Bd0pil2L2L1~{m}~{n}, ptcA03Bd0pil2L1L1~{m}~{n} };
	// Transfinite Line { lA03Bd0pil2L12l1~{m}~{n} } = lA03Bd0pil2L12l1~{m}~{n};
	// lA03Bd0pil2L12l2~{m}~{n} = newl; Line ( lA03Bd0pil2L12l2~{m}~{n} ) = { ptcA03Bd0pil2L2B2~{m}~{n}, ptcA03Bd0pil2L1B2~{m}~{n} };
	// Transfinite Line { lA03Bd0pil2L12l2{m}~{n} } = lA03Bd0pil2L12l2{m}~{n};
	// lA03Bd0pil2L12l3~{m}~{n} = newl; Line ( lA03Bd0pil2L12l3~{m}~{n} ) = { ptcA03Bd0pil2L2R3~{m}~{n}, ptcA03Bd0pil2L1R3~{m}~{n} };
	// Transfinite Line { lA03Bd0pil2L12l3~{m}~{n} } = lA03Bd0pil2L12l3~{m}~{n};
	// lA03Bd0pil2L12l4~{m}~{n} = newl; Line ( lA03Bd0pil2L12l4~{m}~{n} ) = { ptcA03Bd0pil2L2T4~{m}~{n}, ptcA03Bd0pil2L1T4~{m}~{n} };
	// Transfinite Line { lA03Bd0pil2L12l4~{m}~{n} } = lA03Bd0pil2L12l4~{m}~{n};

	// lA03Bd0pil1L12l1~{m}~{n} = newl; Line ( lA03Bd0pil1L12l1~{m}~{n} ) = { ptcA03Bd0pil1L2L1~{m}~{n}, ptcA03Bd0pil1L1L1~{m}~{n} };
	// Transfinite Line { lA03Bd0pil1L12l1~{m}~{n} } = lA03Bd0pil1L12l1~{m}~{n};
	// lA03Bd0pil1L12l2~{m}~{n} = newl; Line ( lA03Bd0pil1L12l2~{m}~{n} ) = { ptcA03Bd0pil1L2B2~{m}~{n}, ptcA03Bd0pil1L1B2~{m}~{n} };
	// Transfinite Line { lA03Bd0pil1L12l2~{m}~{n} } = lA03Bd0pil1L12l2~{m}~{n};
	// lA03Bd0pil1L12l3~{m}~{n} = newl; Line ( lA03Bd0pil1L12l3~{m}~{n} ) = { ptcA03Bd0pil1L2R3~{m}~{n}, ptcA03Bd0pil1L1R3~{m}~{n} };
	// Transfinite Line { lA03Bd0pil1L12l3~{m}~{n} } = lA03Bd0pil1L12l3~{m}~{n};
	// lA03Bd0pil1L12l4~{m}~{n} = newl; Line ( lA03Bd0pil1L12l4~{m}~{n} ) = { ptcA03Bd0pil1L2T4~{m}~{n}, ptcA03Bd0pil1L1T4~{m}~{n} };
	// Transfinite Line { lA03Bd0pil1L12l4~{m}~{n} } = lA03Bd0pil1L12l4~{m}~{n};

	/// Intersection pillar / copper planes
	//----------------------------------------------------------
	//// Connect connecting top and bottom pillar body / copper plane

	// lA03Bd0pil2L12l1~{m}~{n} = newl; Line ( lA03Bd0pil2L12l1~{m}~{n} ) = { ptcA03Bd0pil2L2L1~{m}~{n}, ptcA03Bd0pil2L1L1~{m}~{n} };
	// Transfinite Line { lA03Bd0pil2L12l1~{m}~{n} } = lA03Bd0pil2L12l1~{m}~{n};
	// lA03Bd0pil2L12l2~{m}~{n} = newl; Line ( lA03Bd0pil2L12l2~{m}~{n} ) = { ptcA03Bd0pil2L2B2~{m}~{n}, ptcA03Bd0pil2L1B2~{m}~{n} };
	// Transfinite Line { lA03Bd0pil2L12l2~{m}~{n} } = lA03Bd0pil2L12l2~{m}~{n};
	// lA03Bd0pil2L12l3~{m}~{n} = newl; Line ( lA03Bd0pil2L12l3~{m}~{n} ) = { ptcA03Bd0pil2L2R3~{m}~{n}, ptcA03Bd0pil2L1R3~{m}~{n} };
	// Transfinite Line { lA03Bd0pil2L12l3~{m}~{n} } = lA03Bd0pil2L12l3~{m}~{n};
	// lA03Bd0pil2L12l4~{m}~{n} = newl; Line ( lA03Bd0pil2L12l4~{m}~{n} ) = { ptcA03Bd0pil2L2T4~{m}~{n}, ptcA03Bd0pil2L1T4~{m}~{n} };
	// Transfinite Line { lA03Bd0pil2L12l4~{m}~{n} } = lA03Bd0pil2L12l4~{m}~{n};

	//----------------------------------------------------------
	//// Line loop level 2 rim

	// llA03Bd0pil2L12l1~{m}~{n} = newll; Line Loop ( llA03Bd0pil2L12l1~{m}~{n} ) = { lA03Bd0pil2L12l1~{m}~{n}, lcA03Bd0pil2L1Ar1~{m}~{n}, -lA03Bd0pil2L12l2{m}~{n}, -lcA03Bd0pil2L2Ar1~{m}~{n} };
	// llA03Bd0pil2L12l2~{m}~{n} = newll; Line Loop ( llA03Bd0pil2L12l2~{m}~{n} ) = { lA03Bd0pil2L12l2{m}~{n}, lcA03Bd0pil2L1Ar2~{m}~{n}, -lA03Bd0pil2L12l3~{m}~{n}, -lcA03Bd0pil2L2Ar2~{m}~{n} };
	// llA03Bd0pil2L12l3~{m}~{n} = newll; Line Loop ( llA03Bd0pil2L12l3~{m}~{n} ) = { lA03Bd0pil2L12l3~{m}~{n}, lcA03Bd0pil2L1Ar3~{m}~{n}, -lA03Bd0pil2L12l4~{m}~{n}, -lcA03Bd0pil2L2Ar3~{m}~{n} };
	// llA03Bd0pil2L12l4~{m}~{n} = newll; Line Loop ( llA03Bd0pil2L12l4~{m}~{n} ) = { lA03Bd0pil2L12l4~{m}~{n}, lcA03Bd0pil2L1Ar4~{m}~{n}, -lA03Bd0pil2L12l1~{m}~{n}, -lcA03Bd0pil2L2Ar4~{m}~{n} };

	//----------------------------------------------------------
	//// Line loop  level 1 rim

	// llA03Bd0pil1L12l1~{m}~{n} = newll; Line Loop ( llA03Bd0pil1L12l1~{m}~{n} ) = { lA03Bd0pil1L12l1~{m}~{n}, lcA03Bd0pil1L1Ar1~{m}~{n}, -lA03Bd0pil1L12l2~{m}~{n}, -lcA03Bd0pil1L2Ar1~{m}~{n} };
	// llA03Bd0pil1L12l2~{m}~{n} = newll; Line Loop ( llA03Bd0pil1L12l2~{m}~{n} ) = { lA03Bd0pil1L12l2~{m}~{n}, lcA03Bd0pil1L1Ar2~{m}~{n}, -lA03Bd0pil1L12l3~{m}~{n}, -lcA03Bd0pil1L2Ar2~{m}~{n} };
	// llA03Bd0pil1L12l3~{m}~{n} = newll; Line Loop ( llA03Bd0pil1L12l3~{m}~{n} ) = { lA03Bd0pil1L12l3~{m}~{n}, lcA03Bd0pil1L1Ar3~{m}~{n}, -lA03Bd0pil1L12l4~{m}~{n}, -lcA03Bd0pil1L2Ar3~{m}~{n} };
	// llA03Bd0pil1L12l4~{m}~{n} = newll; Line Loop ( llA03Bd0pil1L12l4~{m}~{n} ) = { lA03Bd0pil1L12l4~{m}~{n}, lcA03Bd0pil1L1Ar4~{m}~{n}, -lA03Bd0pil1L12l1~{m}~{n}, -lcA03Bd0pil1L2Ar4~{m}~{n} };


 EndFor
EndFor


/// SURFACES
//----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
//// Pillar surfaces

For m In { 0:numA03PilUx }
 For n In { 0:numA03PilUy }

	//----------------------------------------------------------
	//// Surfaces to which voltages will be applied

	// psA03Bd0pil2L12S1 = news; Surface ( psA03Bd0pil2L12S1 ) = { llA03Bd0pil2L12l1~{m}~{n} };
	// surfA03Bd0pil2L12S1A[] += psA03Bd0pil2L12S1;
	// psA03Bd0pil2L12S2 = news; Surface ( psA03Bd0pil2L12S2 ) = { llA03Bd0pil2L12l2~{m}~{n} };
	// surfA03Bd0pil2L12S2A[] += psA03Bd0pil2L12S2;
	// psA03Bd0pil2L12S3 = news; Surface ( psA03Bd0pil2L12S3 ) = { llA03Bd0pil2L12l3~{m}~{n} };
	// surfA03Bd0pil2L12S3A[] += psA03Bd0pil2L12S3;
	// psA03Bd0pil2L12S4 = news; Surface ( psA03Bd0pil2L12S4 ) = { llA03Bd0pil2L12l4~{m}~{n} };
	// surfA03Bd0pil2L12S4A[] += psA03Bd0pil2L12S4;

	//----------------------------------------------------------
	//// Surfaces to which voltages will be applied

	// psA03Bd0pil1L12S1 = news; Surface ( psA03Bd0pil1L12S1 ) = { llA03Bd0pil1L12l1~{m}~{n} };
	// surfA03Bd0pil1L12S1A[] += psA03Bd0pil1L12S1;
	// psA03Bd0pil1L12S2 = news; Surface ( psA03Bd0pil1L12S2 ) = { llA03Bd0pil1L12l2~{m}~{n} };
	// surfA03Bd0pil1L12S2A[] += psA03Bd0pil1L12S2;
	// psA03Bd0pil1L12S3 = news; Surface ( psA03Bd0pil1L12S3 ) = { llA03Bd0pil1L12l3~{m}~{n} };
	// surfA03Bd0pil1L12S3A[] += psA03Bd0pil1L12S3;
	// psA03Bd0pil1L12S4 = news; Surface ( psA03Bd0pil1L12S4 ) = { llA03Bd0pil1L12l4~{m}~{n} };
	// surfA03Bd0pil1L12S4A[] += psA03Bd0pil1L12S4;

	//----------------------------------------------------------
	//// Gas & dielectric surfaces

	/// Ruled cylinder-gas dielectric surfaces

	llA03Bd0pil23L21l1~{m}~{n} = newll; Line Loop ( llA03Bd0pil23L21l1~{m}~{n} ) = { lA03Bd0pil23L21l1~{m}~{n}, lcA03Bd0pil3L1Ar1~{m}~{n}, -lA03Bd0pil23L21l2~{m}~{n}, -lcA03Bd0pil2L2Ar1~{m}~{n} };
	rsA03Bd0pil23L21S1 = news; Ruled Surface ( rsA03Bd0pil23L21S1 ) = { llA03Bd0pil23L21l1~{m}~{n} };
	surfA03Bd0pil23L21S1A[] += rsA03Bd0pil23L21S1;
	// Recombine Surface { surfA03Bd0pil23L21S1A[] };

	llA03Bd0pil23L21l2~{m}~{n} = newll; Line Loop ( llA03Bd0pil23L21l2~{m}~{n} ) = { lA03Bd0pil23L21l2~{m}~{n}, lcA03Bd0pil3L1Ar2~{m}~{n}, -lA03Bd0pil23L21l3~{m}~{n}, -lcA03Bd0pil2L2Ar2~{m}~{n} };
	rsA03Bd0pil23L21S2 = news; Ruled Surface ( rsA03Bd0pil23L21S2 ) = { llA03Bd0pil23L21l2~{m}~{n} };
	surfA03Bd0pil23L21S2A[] += rsA03Bd0pil23L21S2;
	// Recombine Surface { surfA03Bd0pil23L21S2A[] };

	llA03Bd0pil23L21l3~{m}~{n} = newll; Line Loop ( llA03Bd0pil23L21l3~{m}~{n} ) = { lA03Bd0pil23L21l3~{m}~{n}, lcA03Bd0pil3L1Ar3~{m}~{n}, -lA03Bd0pil23L21l4~{m}~{n}, -lcA03Bd0pil2L2Ar3~{m}~{n} };
	rsA03Bd0pil23L21S3 = news; Ruled Surface ( rsA03Bd0pil23L21S3 ) = { llA03Bd0pil23L21l3~{m}~{n} };
	surfA03Bd0pil23L21S3A[] += rsA03Bd0pil23L21S3;
	// Recombine Surface { surfA03Bd0pil23L21S3A[] };

	llA03Bd0pil23L21l4~{m}~{n} = newll; Line Loop ( llA03Bd0pil23L21l4~{m}~{n} ) = { lA03Bd0pil23L21l4~{m}~{n}, lcA03Bd0pil3L1Ar4~{m}~{n}, -lA03Bd0pil23L21l1~{m}~{n}, -lcA03Bd0pil2L2Ar4~{m}~{n} };
	rsA03Bd0pil23L21S4 = news; Ruled Surface ( rsA03Bd0pil23L21S4 ) = { llA03Bd0pil23L21l4~{m}~{n} };
	surfA03Bd0pil23L21S4A[] += rsA03Bd0pil23L21S4;
	// Recombine Surface { surfA03Bd0pil23L21S4A[] };

	/// Ruled cylinder-gas dielectric surfaces

	llA03Bd0pil3L12l1~{m}~{n} = newll; Line Loop ( llA03Bd0pil3L12l1~{m}~{n} ) = { lA03Bd0pil3L12l1~{m}~{n}, lcA03Bd0pil3L2Ar1~{m}~{n}, -lA03Bd0pil3L12l2~{m}~{n}, -lcA03Bd0pil3L1Ar1~{m}~{n} };
	rsA03Bd0pil3L12l1 = news; Ruled Surface ( rsA03Bd0pil3L12l1 ) = { llA03Bd0pil3L12l1~{m}~{n} };
	surfA03Bd0pil3L12l1A[] += rsA03Bd0pil3L12l1;
	// Transfinite Surface { surfA03Bd0pil3L12l1A[] };
	// Recombine Surface { surfA03Bd0pil3L12l1A[] };

	llA03Bd0pil3L12l2~{m}~{n} = newll; Line Loop ( llA03Bd0pil3L12l2~{m}~{n} ) = { lA03Bd0pil3L12l2~{m}~{n}, lcA03Bd0pil3L2Ar2~{m}~{n}, -lA03Bd0pil3L12l3~{m}~{n}, -lcA03Bd0pil3L1Ar2~{m}~{n}  };
	rsA03Bd0pil3L12l2 = news; Ruled Surface ( rsA03Bd0pil3L12l2 ) = { llA03Bd0pil3L12l2~{m}~{n} };
	surfA03Bd0pil3L12l2A[] += rsA03Bd0pil3L12l2;
	// Transfinite Surface { surfA03Bd0pil3L12l2A[] };
	// Recombine Surface { surfA03Bd0pil3L12l2A[] };

	llA03Bd0pil3L12l3~{m}~{n} = newll; Line Loop ( llA03Bd0pil3L12l3~{m}~{n} ) = { lA03Bd0pil3L12l3~{m}~{n}, lcA03Bd0pil3L2Ar3~{m}~{n}, -lA03Bd0pil3L12l4~{m}~{n}, -lcA03Bd0pil3L1Ar3~{m}~{n} };
	rsA03Bd0pil3L12l3 = news; Ruled Surface ( rsA03Bd0pil3L12l3 ) = { llA03Bd0pil3L12l3~{m}~{n} };
	surfA03Bd0pil3L12l3A[] += rsA03Bd0pil3L12l3;
	// Transfinite Surface { surfA03Bd0pil3L12l3A[] };
	// Recombine Surface { surfA03Bd0pil3L12l3A[] };

	llA03Bd0pil3L12l4~{m}~{n} = newll; Line Loop ( llA03Bd0pil3L12l4~{m}~{n} ) = { lA03Bd0pil3L12l4~{m}~{n}, lcA03Bd0pil3L2Ar4~{m}~{n}, -lA03Bd0pil3L12l1~{m}~{n}, -lcA03Bd0pil3L1Ar4~{m}~{n} };
	rsA03Bd0pil3L12l4 = news; Ruled Surface ( rsA03Bd0pil3L12l4 ) = { llA03Bd0pil3L12l4~{m}~{n} };
	surfA03Bd0pil3L12l4A[] += rsA03Bd0pil3L12l4;
	// Transfinite Surface { surfA03Bd0pil3L12l4A[] };
	// Recombine Surface { surfA03Bd0pil3L12l4A[] };

	/// Top planar-gas dielectric surfaces

	llA03Bd0pil3L2l1~{m}~{n} = newll; Line Loop ( llA03Bd0pil3L2l1~{m}~{n} ) = { lcA03Bd0pil3L2Ar1~{m}~{n}, lcA03Bd0pil3L2Ar2~{m}~{n}, lcA03Bd0pil3L2Ar3~{m}~{n}, lcA03Bd0pil3L2Ar4~{m}~{n} };
	psA03Bd0pil3L2l1 = news; Plane Surface ( psA03Bd0pil3L2l1 ) = { llA03Bd0pil3L2l1~{m}~{n} };
	surfA03Bd0pil3L2l1A[] += psA03Bd0pil3L2l1;
	// Transfinite Surface { surfA03Bd0pil3L2l1A[] };
	// Recombine Surface { surfA03Bd0pil3L2l1A[] };

	//----------------------------------------------------------
	//// Level 2 copper strip layer surfaces

	llA03Bd0pil2L2l1 = newll; Line Loop ( llA03Bd0pil2L2l1 ) = { lcA03Bd0pil2L2Ar1~{m}~{n}, lcA03Bd0pil2L2Ar2~{m}~{n}, lcA03Bd0pil2L2Ar3~{m}~{n}, lcA03Bd0pil2L2Ar4~{m}~{n} };
	llA03Bd0pil2L2l1A[] += { llA03Bd0pil2L2l1 };
	psA03Bd0pil2L2l1 = news; Plane Surface ( psA03Bd0pil2L2l1 ) = { llA03Bd0pil2L2l1A[] };
	surfA03Bd0pil2L2l1A[] += { psA03Bd0pil2L2l1 };
	// Transfinite Surface { surfA03Bd0pil2L2l1A[] };
	// Recombine Surface { surfA03Bd0pil2L2l1A[] };

	// llA03Bd0pil2L1l1 = newll; Line Loop ( llA03Bd0pil2L1l1 ) = { lcA03Bd0pil2L1Ar1~{m}~{n}, lcA03Bd0pil2L1Ar2~{m}~{n}, lcA03Bd0pil2L1Ar3~{m}~{n}, lcA03Bd0pil2L1Ar4~{m}~{n} };
	// llA03Bd0pil2L1l1A[] += { llA03Bd0pil2L1l1 };
	// psA03Bd0pil2L1l1 = news; Plane Surface ( psA03Bd0pil2L1l1 ) = { llA03Bd0pil2L1l1A[] };
	// surfA03Bd0pil2L1l1A[] += { psA03Bd0pil2L1l1 };
	// Transfinite Surface { surfA03Bd0pil2L1l1A[] };
	// Recombine Surface { surfA03Bd0pil2L1l1A[] };

	//----------------------------------------------------------
	//// Level 1 copper strip layer surfaces

	// llA03Bd0pil1L2l1 = newll; Line Loop ( llA03Bd0pil1L2l1 ) = { lcA03Bd0pil1L2Ar1~{m}~{n}, lcA03Bd0pil1L2Ar2~{m}~{n}, lcA03Bd0pil1L2Ar3~{m}~{n}, lcA03Bd0pil1L2Ar4~{m}~{n} };
	// llA03Bd0pil1L2l1A[] += { llA03Bd0pil1L2l1 };	
	// psA03Bd0pil1L2l1 = news; Plane Surface ( psA03Bd0pil1L2l1 ) = { llA03Bd0pil1L2l1A[] };
	// surfA03Bd0pil1L2l1A[] += { psA03Bd0pil1L2l1 };
	// Transfinite Surface { surfA03Bd0pil1L2l1A[] };
	// Recombine Surface { surfA03Bd0pil1L2l1A[] };

	// llA03Bd0pil1L1l1 = newll; Line Loop ( llA03Bd0pil1L1l1 ) = { lcA03Bd0pil1L1Ar1~{m}~{n}, lcA03Bd0pil1L1Ar2~{m}~{n}, lcA03Bd0pil1L1Ar3~{m}~{n}, lcA03Bd0pil1L1Ar4~{m}~{n} };
	// llA03Bd0pil1L1l1A[] += { llA03Bd0pil1L1l1 };
	// psA03Bd0pil1L1l1 = news; Plane Surface ( psA03Bd0pil1L1l1 ) = { llA03Bd0pil1L1l1A[] };
	// surfA03Bd0pil1L1l1A[] += { psA03Bd0pil1L1l1 };
	// Transfinite Surface { surfA03Bd0pil1L1l1A[] };
	// Recombine Surface { surfA03Bd0pil1L1l1A[] };

	//----------------------------------------------------------
	//// Level 0 copper strip layer surfaces

	// llA03Bd0pil0L2l1 = newll; Line Loop ( llA03Bd0pil0L2l1 ) = { lcA03Bd0pil0L2Ar1~{m}~{n}, lcA03Bd0pil0L2Ar2~{m}~{n}, lcA03Bd0pil0L2Ar3~{m}~{n}, lcA03Bd0pil0L2Ar4~{m}~{n} };
	// llA03Bd0pil0L2l1A[] += { llA03Bd0pil0L2l1 };
	// psA03Bd0pil0L2l1 = news; Plane Surface ( psA03Bd0pil0L2l1 ) = { llA03Bd0pil0L2l1A[] };
	// surfA03Bd0pil0L2l1A[] += { psA03Bd0pil0L2l1 };
	// Transfinite Surface { surfA03Bd0pil0L2l1A[] };
	// Recombine Surface { surfA03Bd0pil0L2l1A[] };

	// llA03Bd0pil0L1l1 = newll; Line Loop ( llA03Bd0pil0L1l1 ) = { lcA03Bd0pil0L1Ar1~{m}~{n}, lcA03Bd0pil0L1Ar2~{m}~{n}, lcA03Bd0pil0L1Ar3~{m}~{n}, lcA03Bd0pil0L1Ar4~{m}~{n} };
	// llA03Bd0pil0L1l1A[] += { llA03Bd0pil0L1l1 };
	// psA03Bd0pil0L1l1 = news; Plane Surface ( psA03Bd0pil0L1l1 ) = { llA03Bd0pil0L1l1A[] };
	// surfA03Bd0pil0L1l1A[] += { psA03Bd0pil0L1l1 };
	// Transfinite Surface { surfA03Bd0pil0L1l1A[] };
	// Recombine Surface { surfA03Bd0pil0L1l1A[] };

		Delete { Point { ptcA03Bd0pil2L1~{m}~{n} }; }
		Delete { Point { ptcA03Bd0pil2L2~{m}~{n} }; }
		Delete { Point { ptcA03Bd0pil3L1~{m}~{n} }; }
		Delete { Point { ptcA03Bd0pil3L2~{m}~{n} }; }


 EndFor
EndFor


/// SURFACE LOOP
//----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
//// Pillar surface Loop - pillar surface loop

slA03Bd0pilSb1 = newsl; Surface Loop ( slA03Bd0pilSb1 ) = { surfA03Bd0pil3L2l1A[], surfA03Bd0pil3L12l1A[], surfA03Bd0pil3L12l2A[], surfA03Bd0pil3L12l3A[], surfA03Bd0pil3L12l4A[], surfA03Bd0pil23L21S1A[], surfA03Bd0pil23L21S2A[], surfA03Bd0pil23L21S3A[], surfA03Bd0pil23L21S4A[], surfA03Bd0pil2L2l1A[] };
// -surfA03Bd0pil2L12S1A[], -surfA03Bd0pil2L12S2A[], -surfA03Bd0pil2L12S3A[], -surfA03Bd0pil2L12S4A[],
slA03Bd0pilSb1A[] += slA03Bd0pilSb1;


/// VOLUME
//----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
//// Pillar volume

volA03Bd0pilV1 = newv; Volume ( volA03Bd0pilV1 ) = slA03Bd0pilSb1A[];


/// PHYSICAL SURFACE
//----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
//// Physical surfaces - pillar surface

// physsurfA03Bd0pilSb1 = newreg;
// Physical Surface ( physsurfA03Bd0pilSb1 ) = slA03Bd0pilSb1A[];

// physsurfA03Bd0pilSb1 = newreg;
// Physical Surface ( physsurfA03Bd0pilSb1 ) = { surfA03Bd0pil3L2l1A[], surfA03Bd0pil3L12l1A[], surfA03Bd0pil3L12l2A[], surfA03Bd0pil3L12l3A[], surfA03Bd0pil3L12l4A[], surfA03Bd0pil23L21S1A[],
// surfA03Bd0pil23L21S2A[], surfA03Bd0pil23L21S3A[], surfA03Bd0pil23L21S4A[], surfA03Bd0pil2L2l1A[], -surfA03Bd0pil2L12S1A[], -surfA03Bd0pil2L12S2A[], -surfA03Bd0pil2L12S3A[], -surfA03Bd0pil2L12S4A[] };


/// PHYSICAL VOLUME
//----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
//// Physical volume - pillar volume

// physvolA03Bd0pilV1 = newreg; 
// Physical Volume ( physvolA03Bd0pilV1 ) = { volA03Bd0pilV1 };


// End