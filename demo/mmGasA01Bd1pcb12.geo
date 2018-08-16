// Include "mmGasA00AssemblyParam.geo";

// Include "mmGasA00CuP0cp12Param.geo";
// Include "mmGasA01CuY1cp12Param.geo";
// Include "mmGasA02CuX2cp12Param.geo";

// Include "mmGasA00Bd0pcb12Param.geo";
Include "mmGasA01Bd1pcb12Param.geo";
// Include "mmGasA02Bd2pcb12Param.geo";

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


/// PCB LEVEL 1
//----------------------------------------------------------
//// Connect the upper and lower points with lines to form the PCB 1 layer

// lA01pcb12Ib1 = newl; Line ( lA01pcb12Ib1 ) = { ptExA01cp2C1, ptExA02cp1C1 };
// Transfinite Line { lA01pcb12Ib1 } = lA01pcb12Ib1;
// lA01pcb12Ib2 = newl; Line ( lA01pcb12Ib2 ) = { ptExA01cp2C2, ptExA02cp1C4 };
// Transfinite Line { lA01pcb12Ib2 } = lA01pcb12Ib2;
// lA01pcb12Ib3 = newl; Line ( lA01pcb12Ib3 ) = { ptExA01cp2C3, ptExA02cp1C3 };
// Transfinite Line { lA01pcb12Ib3 } = lA01pcb12Ib3;
// lA01pcb12Ib4 = newl; Line ( lA01pcb12Ib4 ) = { ptExA01cp2C4, ptExA02cp1C2 };
// Transfinite Line { lA01pcb12Ib4 } = lA01pcb12Ib4;

//----------------------------------------------------------
//// Connect the upper and lower copper conductor - level 1

lA01Bd1pcb12Ib1 = newl; Line ( lA01Bd1pcb12Ib1 ) = { ptExA01cp1C1, ptExA01cp2C1 };
Transfinite Line { lA01Bd1pcb12Ib1 } = lA01Bd1pcb12Ib1;
lA01Bd1pcb12Ib2 = newl; Line ( lA01Bd1pcb12Ib2 ) = { ptExA01cp1C2, ptExA01cp2C2 };
Transfinite Line { lA01Bd1pcb12Ib2 } = lA01Bd1pcb12Ib2;
lA01Bd1pcb12Ib3 = newl; Line ( lA01Bd1pcb12Ib3 ) = { ptExA01cp1C3, ptExA01cp2C3 };
Transfinite Line { lA01Bd1pcb12Ib3 } = lA01Bd1pcb12Ib3;
lA01Bd1pcb12Ib4 = newl; Line ( lA01Bd1pcb12Ib4 ) = { ptExA01cp1C4, ptExA01cp2C4 };
Transfinite Line { lA01Bd1pcb12Ib4 } = lA01Bd1pcb12Ib4;

//----------------------------------------------------------
//// Connect the PCB to the lower copper conductor - level 0

// lA01Bd1pcb12Ib1 = newl; Line ( lA01Bd1pcb12Ib1 ) = { ptExA01cp1C1, ptExA01cp2C1 };
// Transfinite Line { lA01Bd1pcb12Ib1 } = lA01Bd1pcb12Ib1;
// lA01Bd1pcb12Ib2 = newl; Line ( lA01Bd1pcb12Ib2 ) = { ptExA01cp1C2, ptExA01cp2C2 };
// Transfinite Line { lA01Bd1pcb12Ib2 } = lA01Bd1pcb12Ib2;
// lA01Bd1pcb12Ib3 = newl; Line ( lA01Bd1pcb12Ib3 ) = { ptExA01cp1C3, ptExA01cp2C3 };
// Transfinite Line { lA01Bd1pcb12Ib3 } = lA01Bd1pcb12Ib3;
// lA01Bd1pcb12Ib4 = newl; Line ( lA01Bd1pcb12Ib4 ) = { ptExA01cp1C4, ptExA01cp2C4 };
// Transfinite Line { lA01Bd1pcb12Ib4 } = lA01Bd1pcb12Ib4;

//----------------------------------------------------------
//// Connect the PCB to the upper level lower copper conductor - level 0

lA01Bd1PCB2Tb1 = newl; Line ( lA01Bd1pcb2Tb1 ) = { ptExA01cp2C1, ptExA01Bd1pcb2AdC1 };
Transfinite Line { lA01Bd1pcb2Tb1 } = lA01Bd1pcb2Tb1;
lA01Bd1pcb2Tb2 = newl; Line ( lA01Bd1pcb2Tb2 ) = { ptExA01cp2C2, ptExA01Bd1pcb2AdC2 };
Transfinite Line { lA01Bd1pcb2Tb2 } = lA01Bd1pcb2Tb2;
lA01Bd1pcb2Tb3 = newl; Line ( lA01Bd1pcb2Tb3 ) = { ptExA01cp2C3, ptExA01Bd1pcb2AdC3 };
Transfinite Line { lA01Bd1pcb2Tb3 } = lA01Bd1pcb2Tb3;
lA01Bd1pcb2Tb4 = newl; Line ( lA01Bd1pcb2Tb4 ) = { ptExA01cp2C4, ptExA01Bd1pcb2AdC4 };
Transfinite Line { lA01Bd1pcb2Tb4 } = lA01Bd1pcb2Tb4;

//----------------------------------------------------------
//// Connect the top electrode to the level 0 - PCB top

// ltExA00EcC1 = newl; Line ( ltExA00EcC1 ) = { ptExA00EcC1, ptExA01cp2C1 };
// Transfinite Line { ltExA00EcC1 } = ltExA00EcC1;
// ltExA00EcM12 = newl; Line ( ltExA00EcM12 ) = { ptExA00EcM12, ltExA00Ptmc1 };
// Transfinite Line { ltExA00EcM12 } = ltExA00EcM12;
// ltExA00EcC2 = newl; Line ( ltExA00EcC2 ) = { ptExA00EcC2, ptExA01cp2C4 };
// Transfinite Line { ltExA00EcC2 } = ltExA00EcC2;
// ltExA00EcC3 = newl; Line ( ltExA00EcC3 ) = { ptExA00EcC3, ptExA01cp2C3 };
// Transfinite Line { ltExA00EcC3 } = ltExA00EcC3;
// ltExA00EcM34 = newl; Line ( ltExA00EcM34 ) = { ptExA00EcM34, ltExA00Ptmc3 };
// Transfinite Line { ltExA00EcM34 } = ltExA00EcM34;
// ltExA00EcC4 = newl; Line ( ltExA00EcC4 ) = { ptExA00EcC4, ptExA01cp2C2 };
// Transfinite Line { ltExA00EcC4 } = ltExA00EcC4;

//----------------------------------------------------------
//// Connect the PCB top side - level 3 side lower lines

lA01Bd1pcb2TbB1 = newl; Line ( lA01Bd1pcb2TbB1 ) = { ptExA01cp2C1, ptExA01cp2C2 };
lA01Bd1pcb2TbR2 = newl; Line ( lA01Bd1pcb2TbR2 ) = { ptExA01Bd1pcb2AdC2, ptExA01Bd1pcb2AdC3 };
lA01Bd1pcb2TbT3 = newl; Line ( lA01Bd1pcb2TbT3 ) = { ptExA01cp2C3, ptExA01cp2C4 };
lA01Bd1pcb2TbL4 = newl; Line ( lA01Bd1pcb2TbL4 ) = { ptExA01Bd1pcb2AdC4, ptExA01Bd1pcb2AdC1 };


/// SURFACES
//----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
//// PCB top gas bounding surfaces

For m1 In { 0:numA01cpUy }
 For n1 In { 0:numA01cpUx }

//----------------------------------------------------------
//// PCB top gas bounding surfaces

/// Segmented top PCB intermediate lines

If( m1 > 0 )
	
	/// Middle

	lA01Bd1pcb2TIb1~{m1}~{n1} = newl; Line ( lA01Bd1pcb2TIb1~{m1}~{n1} ) = { ptA01cp2C2~{m1-1}~{n1}, ptA01cp2C1~{m1}~{n1} };
	lA01Bd1pcb2TIb1 = lA01Bd1pcb2TIb1~{m1}~{n1};
	lA01Bd1pcb2TIb1A[] += lA01Bd1pcb2TIb1~{m1}~{n1};

	lA01cp2Tb4S = lA01cp2Tb4~{m1}~{n1};

		lA01Bd1pcb2TIb4~{m1}~{n1} = newl; Line ( lA01Bd1pcb2TIb4~{m1}~{n1} ) = { ptA01cp2C3~{m1-1}~{n1}, ptA01cp2C4~{m1}~{n1} };
		lA01Bd1pcb2TIb4 = lA01Bd1pcb2TIb4~{m1}~{n1};
		lA01Bd1pcb2TIb4A[] += lA01Bd1pcb2TIb4~{m1}~{n1};

		lA01cp2Tb2S = lA01cp2Tb2~{m1-1}~{n1};

		/// Top side middle - 2

		llA01Bd1pcb2Tb3 = newll; Line Loop ( llA01Bd1pcb2Tb3 ) = { lA01Bd1pcb2TIb1, -lA01cp2Tb4S, -lA01Bd1pcb2TIb4, -lA01cp2Tb2S };
		psA01Bd1pcb2Tb3 = news; Plane Surface ( psA01Bd1pcb2Tb3 ) = { llA01Bd1pcb2Tb3 };
		psA01Bd1pcb2Tb3A[] += psA01Bd1pcb2Tb3;

EndIf

If( m1 == numA01cpUy && n1 == numA01cpUx )

	/// Side 2

	lA01Bd1pcb2TIb2 = newl; Line ( lA01Bd1pcb2TIb2 ) = { ptA01cp2C2~{numA01cpUy}~{numA01cpUx}, ptExA01Bd1pcb2AdC2 };

	/// Top side middle last - 3

	lA01Bd1pcb2TIb5 = newl; Line ( lA01Bd1pcb2TIb5 ) = { ptA01cp2C3~{numA01cpUy}~{numA01cpUx}, ptExA01Bd1pcb2AdC3 };
	lA01Bd1pcb2TIb3a = newl; Line ( lA01Bd1pcb2TIb3a ) = { ptExA01Bd1pcb2AdC2, ptExA01Bd1pcb2AdC3 };
	lA01Bd1pcb2TIb3b = newl; Line ( lA01Bd1pcb2TIb3b ) = { ptA01cp2C2~{numA01cpUy}~{numA01cpUx}, ptA01cp2C3~{numA01cpUy}~{numA01cpUx} };
	llA01Bd1pcb2Tb2 = newll; Line Loop ( llA01Bd1pcb2Tb2 ) = { lA01Bd1pcb2TIb2, lA01Bd1pcb2TbR2, -lA01Bd1pcb2TIb5, -lA01cp2Tb2~{numA01cpUy}~{numA01cpUx} };										// -lA01Bd1pcb2TIb3b
	psA01Bd1pcb2Tb2 = news; Plane Surface ( psA01Bd1pcb2Tb2 ) = { llA01Bd1pcb2Tb2 };

EndIf

// llA01Bd1pcb2TTb = newll; Line Loop ( llA01Bd1pcb2TTb ) = { llA01cp22Ib5A[], lA01Bd1pcb2TbB1, lA01Bd1pcb2Tb2, lA01Bd1pcb2TbR2, -lA01Bd1pcb2Tb3, lA01Bd1pcb2TbT3, lA01Bd1pcb2Tb4, lA01Bd1pcb2TbL4, -lA01Bd1pcb2Tb1 };


 EndFor
EndFor

//----------------------------------------------------------
//// PCB top gas bounding surfaces

/// Segmented top PCB intermediate lines

/// Side 1

lA01Bd1pcb2TIb0 = newl; Line ( lA01Bd1pcb2TIb0 ) = { ptExA01Bd1pcb2AdC1, ptA01cp2C1~{0}~{0} };

/// Top side middle first - 1

lA01Bd1pcb2TIb3 = newl; Line ( lA01Bd1pcb2TIb3 ) = { ptExA01Bd1pcb2AdC4, ptA01cp2C4~{0}~{0} };
lA01Bd1pcb2TIb2a = newl; Line ( lA01Bd1pcb2TIb2a ) = { ptExA01Bd1pcb2AdC4, ptExA01Bd1pcb2AdC1 };
lA01Bd1pcb2TIb2b = newl; Line ( lA01Bd1pcb2TIb2b ) = { ptA01cp2C1~{0}~{0}, ptA01cp2C4~{0}~{0} };
llA01Bd1pcb2Tb1 = newll; Line Loop ( llA01Bd1pcb2Tb1 ) = { lA01Bd1pcb2TIb0, -lA01cp2Tb4~{0}~{0}, -lA01Bd1pcb2TIb3, lA01Bd1pcb2TbL4 };															// lA01Bd1pcb2TIb2b
psA01Bd1pcb2Tb1 = news; Plane Surface ( psA01Bd1pcb2Tb1 ) = { llA01Bd1pcb2Tb1 };

//----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
//// Intermediate PCB layers

/// Segmented top side adjacent

If( numA01cpUy == 0 )

	/// Top side - 1

	llA01Bd1pcb2Tb4 = newll; Line Loop ( llA01Bd1pcb2Tb4 ) = { lA01Bd1pcb2Tb1, lA01Bd1pcb2TIb0, lA01cp2Tb1A[], lA01Bd1pcb2TIb2, -lA01Bd1pcb2Tb4, -lA01Bd1pcb2TbB1 };
	psA01Bd1pcb2Tb4 = news; Plane Surface ( psA01Bd1pcb2Tb4 ) = { llA01Bd1pcb2Tb4 };

	/// Top side - 2

	llA01Bd1pcb2Tb5 = newll; Line Loop ( llA01Bd1pcb2Tb5 ) = { lA01Bd1pcb2Tb2, lA01Bd1pcb2TIb3, -lA01cp2Tb3A[], lA01Bd1pcb2TIb5, -lA01Bd1pcb2Tb3, lA01Bd1pcb2TbT3 };
	psA01Bd1pcb2Tb5 = news; Plane Surface ( psA01Bd1pcb2Tb5 ) = { llA01Bd1pcb2Tb5 };

Else

	/// Top side - 1

	llA01Bd1pcb2Tb4 = newll; Line Loop ( llA01Bd1pcb2Tb4 ) = { lA01Bd1pcb2Tb1, lA01Bd1pcb2TIb0, lA01cp2Tb1A[], lA01Bd1pcb2TIb1A[], lA01Bd1pcb2TIb2, -lA01Bd1pcb2Tb2, -lA01Bd1pcb2TbB1 };
	psA01Bd1pcb2Tb4 = news; Plane Surface ( psA01Bd1pcb2Tb4 ) = { llA01Bd1pcb2Tb4 };

	// ptExA01cp2C1, ptExA01Bd1pcb2AdC1; ptExA01Bd1pcb2AdC1, ptA01cp2C1~{0}~{0}; ptA01cp2C1~{m1}~{n1}, ptA01cp2C2~{m1}~{n1}; ptA01cp2C2~{m1-1}~{n1}, ptA01cp2C1~{m1}~{n1};
	// ptA01cp2C2~{numA01cpUy}~{numA01cpUx}, ptExA01Bd1pcb2AdC2; ptExA01Bd1pcb2AdC2, ptExA01cp2C2; ptExA01cp2C2, ptExA01cp2C1 

	/// Top side - 2

	llA01Bd1pcb2Tb5 = newll; Line Loop ( llA01Bd1pcb2Tb5 ) = { lA01Bd1pcb2Tb4, lA01Bd1pcb2TIb3, -lA01cp2Tb3A[], lA01Bd1pcb2TIb4A[], lA01Bd1pcb2TIb5, -lA01Bd1pcb2Tb3, lA01Bd1pcb2TbT3 };
	psA01Bd1pcb2Tb5 = news; Plane Surface ( psA01Bd1pcb2Tb5 ) = { llA01Bd1pcb2Tb5 };

	// ptExA01cp2C4, ptExA01Bd1pcb2AdC4; ptExA01Bd1pcb2AdC4, ptA01cp2C4~{0}~{0}; ptA01cp2C4~{m1}~{n1}, ptA01cp2C3~{m1}~{n1}; ptA01cp2C3~{m1-1}~{n1}, ptA01cp2C4~{m1}~{n1}
	// ptA01cp2C3~{numA01cpUy}~{numA01cpUx}, ptExA01Bd1pcb2AdC3; ptExA01Bd1pcb2AdC3, ptExA01cp2C3; ptExA01cp2C3, ptExA01cp2C4

EndIf

/// Complete bounding top PCB gas surface

// llA01Bd1pcb2BrTb1 = newll; Line Loop ( llA01Bd1pcb2BrTb1 ) = { lA01Bd1pcb2TbB1, lA01Bd1pcb2Tb2, lA01Bd1pcb2TbR2, -lA01Bd1pcb2Tb3, lA01Bd1pcb2TbT3, lA01Bd1pcb2Tb4, lA01Bd1pcb2TbL4, -lA01Bd1pcb2Tb1 };
// psA01Bd1pcb2BrTb1 = news; Plane Surface ( psA01Bd1pcb2BrTb1 ) = { llA01Bd1pcb2BrTb1 };

// psA01Bd1pcb2InTb1 = news; Plane Surface ( psA01Bd1pcb2InTb1 ) = { surfA01cp2Tb6A[] }; // psA01Bd1pcb2BrTb1,
// psA01Bd1pcb2InTb1 = news; Plane Surface ( psA01Bd1pcb2InTb1 ) = { llA01Bd1pcb2TTb };

//----------------------------------------------------------
//// Feature / Element removal

// Delete{ Surface { psA01Bd1pcb2BrTb1 }; }

//----------------------------------------------------------
//// Complete side layers

/// x - direction

llA01Bd1pcb12Ib1 = newll; Line Loop ( llA01Bd1pcb12Ib1 ) = { -lA01Bd1pcb2TbB1, -lA01Bd1pcb12Ib1, lA00Bd0pcb2TbB1, lA01Bd1pcb12Ib2 };
psA01Bd1pcb12Ib1  = news; Plane Surface ( psA01Bd1pcb12Ib1 ) = { llA01Bd1pcb12Ib1 };
// Transfinite Surface { psA01Bd1pcb12Ib1 };
// Recombine Surface { psA01Bd1pcb12Ib1 };

// ptExA01cp2C2, ptExA01cp2C1, ptExA01cp2C1, ptExA01cp1C1, ptExA01cp1C1, ptExA01cp1C2, ptExA01cp1C2, ptExA01cp2C2

/// y - direction

llA01Bd1pcb12Ib2 = newll; Line Loop ( llA01Bd1pcb12Ib2 ) = { lA01Bd1pcb12Ib1, lA01Bd1pcb2Tb1, -lA01Bd1pcb2TbL4, -lA01Bd1pcb2Tb4, -lA01Bd1pcb12Ib4, lA00Bd0pcb2Tb4, lA00Bd0pcb2TbL4, -lA00Bd0pcb2Tb1 };
psA01Bd1pcb12Ib2  = news; Plane Surface ( psA01Bd1pcb12Ib2 ) = { llA01Bd1pcb12Ib2 };
// Transfinite Surface { psA01Bd1pcb12Ib2 };
// Recombine Surface { psA01Bd1pcb12Ib2 };

// ptExA01cp1C1, ptExA01cp2C1, ptExA01cp2C1, ptExA01Bd1pcb2AdC1, ptExA01Bd1pcb2AdC1, ptExA01Bd1pcb2AdC4, ptExA01Bd1pcb2AdC4, ptExA01cp2C4, ptExA01cp2C4, ptExA01cp1C4,
// ptExA01cp1C1, ptExA01cp2C1, ptExA01cp2C1, ptExA01Bd1pcb2AdC1, ptExA01Bd1pcb2AdC1, ptExA01Bd1pcb2AdC4, ptExA01Bd1pcb2AdC4, ptExA01cp2C4, ptExA01cp2C4, ptExA01cp1C4, ptExA01cp1C4, ptExA00Bd0pcb2AdC4, ptExA00Bd0pcb2AdC4, ptExA00Bd0pcb2AdC1,
// ptExA01Bd1pcb2AdC1, ptExA01cp1C1 

/// x - direction

llA01Bd1pcb12Ib3 = newll; Line Loop ( llA01Bd1pcb12Ib3 ) = { lA01Bd1pcb2TbT3, -lA01Bd1pcb12Ib4, -lA00Bd0pcb2TbT3, lA01Bd1pcb12Ib3 };
psA01Bd1pcb12Ib3  = news; Plane Surface ( psA01Bd1pcb12Ib3 ) = { llA01Bd1pcb12Ib3 };
// Transfinite Surface { psA01Bd1pcb12Ib3 };
// Recombine Surface { psA01Bd1pcb12Ib3 };

// ptExA01cp2C3, ptExA01cp2C4, ptExA01cp2C4, ptExA01cp1C4, ptExA01cp1C4, ptExA01cp1C3, ptExA01cp1C3, ptExA01cp2C3

/// y - direction

llA01Bd1pcb12Ib4 = newll; Line Loop ( llA01Bd1pcb12Ib4 ) = { lA01Bd1pcb12Ib2, lA01Bd1pcb2Tb2, lA01Bd1pcb2TbR2, -lA01Bd1pcb2Tb3, -lA01Bd1pcb12Ib3, lA00Bd0pcb2Tb3, -lA00Bd0pcb2TbR2, -lA00Bd0pcb2Tb2 };
psA01Bd1pcb12Ib4  = news; Plane Surface ( psA01Bd1pcb12Ib4 ) = { llA01Bd1pcb12Ib4 };
// Transfinite Surface { psA01Bd1pcb12Ib4 };
// Recombine Surface { psA01Bd1pcb12Ib4 };

// ptExA01cp1C2, ptExA01cp2C2, ptExA01cp2C2, ptExA01Bd1pcb2AdC2, ptExA01Bd1pcb2AdC2, ptExA01Bd1pcb2AdC3, ptExA01Bd1pcb2AdC3, ptExA01cp2C3, ptExA01cp2C3, ptExA01cp1C3, ptExA01cp1C3, ptExA01cp1C2
// ptExA01cp1C2, ptExA01cp2C2, ptExA01cp2C2, ptExA01Bd1pcb2AdC2, ptExA01Bd1pcb2AdC2, ptExA01Bd1pcb2AdC3, ptExA01Bd1pcb2AdC3, ptExA01cp2C3, ptExA01cp2C3, ptExA01cp1C3, ptExA01cp1C3, ptExA00Bd0pcb2AdC3, ptExA00Bd0pcb2AdC3, ptExA00Bd0pcb2AdC2, 
// ptExA00Bd0pcb2AdC2, ptExA01cp1C2 


/// SURFACE LOOP
//----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
//// PCB Surface Loop - PCB surface loop

//----------------------------------------------------------
//// PCB Surface Layers

If( numA01cpUy == 0 )

	slA01Bd1pcbSb1 = newsl; Surface Loop ( slA01Bd1pcbSb1 ) = { psA01Bd1pcb2Tb1, psA01Bd1pcb2Tb2, psA01Bd1pcb2Tb4, psA01Bd1pcb2Tb5, surfA01cp2Tb6A[], psA01Bd1pcb12Ib1, psA01Bd1pcb12Ib2, psA01Bd1pcb12Ib3, psA01Bd1pcb12Ib4, surfA01cp1Bb5A[] };

Else

	slA01Bd1pcbSb1 = newsl; Surface Loop ( slA01Bd1pcbSb1 ) = { psA01Bd1pcb2Tb1, psA01Bd1pcb2Tb2, psA01Bd1pcb2Tb3A, psA01Bd1pcb2Tb4, psA01Bd1pcb2Tb5, surfA01cp2Tb6A[], psA01Bd1pcb12Ib1, psA01Bd1pcb12Ib2, psA01Bd1pcb12Ib3, psA01Bd1pcb12Ib4, surfA01cp1Bb5A[] };

EndIf

// psA01Bd1pcb2BrTb1

slA01Bd1pcbTSb1[] += slA01Bd1pcbSb1;


/// VOLUME
//----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
//// PCB volume

volA01Bd1pcbV1 = newv; Volume ( volA01Bd1pcbV1 ) = slA01Bd1pcbTSb1[];


/// PHYSICAL SURFACE
//----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
//// Physical surfaces - PCB surface

If(numA01cpUy == 0)

	// physsurfA01Bd1pcbSb1 = newreg; 
	Physical Surface ( physsurfA01Bd1pcbSb1 ) = { psA01Bd1pcb2Tb1, psA01Bd1pcb2Tb2, psA01Bd1pcb2Tb4, psA01Bd1pcb2Tb5, surfA01cp2Tb6A[], psA01Bd1pcb12Ib1, psA01Bd1pcb12Ib2, psA01Bd1pcb12Ib3, psA01Bd1pcb12Ib4, surfA01cp1Bb5A[] };

Else

	// physsurfA01Bd1pcbSb1 = newreg; 
	Physical Surface ( physsurfA01Bd1pcbSb1 ) = { psA01Bd1pcb2Tb1, psA01Bd1pcb2Tb2, psA01Bd1pcb2Tb3A, psA01Bd1pcb2Tb4, psA01Bd1pcb2Tb5, surfA01cp2Tb6A[], psA01Bd1pcb12Ib1, psA01Bd1pcb12Ib2, psA01Bd1pcb12Ib3, psA01Bd1pcb12Ib4, surfA01cp1Bb5A[] };

EndIf

// psA01Bd1pcb2InTb1
// psA01Bd1pcb12Ib1, psA01Bd1pcb12Ib2, psA01Bd1pcb12Ib3, psA01Bd1pcb12Ib4, surfA01cp1Bb5A[]
// surfA01cp2Tb6A[], psA01Bd1pcb2Tb1, psA01Bd1pcb2Tb2, psA01Bd1pcb2Tb3A, psA01Bd1pcb2Tb4, psA01Bd1pcb2Tb5


/// PHYSICAL VOLUME
//----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
//// Physical volume - PCB volume

// physvolA01Bd1pcbV1 = newreg;
Physical Volume ( physvolA01Bd1pcbV1 ) = { volA01Bd1pcbV1 };


// End
