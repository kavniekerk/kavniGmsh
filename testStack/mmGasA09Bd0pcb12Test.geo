// Include "mmGasA00Assembly.geo";
// Include "mmGasA00AssemblyParam.geo";

// Include "mmGasA00Bd0pcb12.geo";
// Include "mmGasA00Bd0pcb12CompLab.pro";
// Include "mmGasA00Bd0pcb12Param.geo";
// Include "mmGasA09Bd0pcb12ParamTest.geo";

Include "mmGasA09CuTest0.geo";
// Include "mmGasA00CuP0cp12.geo";
// Include "mmGasA00CuP0cp12CompLab.pro";
// Include "mmGasA00CuP0cp12Param.geo";

// Include "mmGasA01Bd1pcb12.geo";
// Include "mmGasA01Bd1pcb12CompLab.pro";
// Include "mmGasA01Bd1pcb12Param.geo";
Include "mmGasA09Bd1pcb12ParamTestv0.geo";

Include "mmGasA09CuTest1v0.geo";
// Include "mmGasA01CuY1cp12.geo";
// Include "mmGasA01CuY1cp12CompLab.pro";
// Include "mmGasA01CuY1cp12Param.geo";

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
/// PCB STRUCTURE
//----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
//// Variable designation: geometrical element, structural reference, interface / description, number


/// LINES
//----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
//// Border lines


/// PCB LEVEL 0
//----------------------------------------------------------
//// Connect the upper and lower points with lines to form the PCB 0 layer

/*
lA00pcb12Ib1 = newl; Line ( lA00pcb12Ib1 ) = { ptExA00cp2C1, ptExA01cp1C1 };
// Transfinite Line { lA00pcb12Ib1 } = lA00pcb12Ib1;
lA00pcb12Ib2 = newl; Line ( lA00pcb12Ib2 ) = { ptExA00cp2C2, ptExA01cp1C2 };
// Transfinite Line { lA00pcb12Ib2 } = lA00pcb12Ib2;
lA00pcb12Ib3 = newl; Line ( lA00pcb12Ib3 ) = { ptExA00cp2C3, ptExA01cp1C3 };
// Transfinite Line { lA00pcb12Ib3 } = lA00pcb12Ib3;
lA00pcb12Ib4 = newl; Line ( lA00pcb12Ib4 ) = { ptExA00cp2C4, ptExA01cp1C4 };
// Transfinite Line { lA00pcb12Ib4 } = lA00pcb12Ib4;

//----------------------------------------------------------
//// Connect the upper and lower copper conductor - level 0

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
//// Connect the pcb to the lower copper conductor - level 0

lA00Bd0pcb12Ib1 = newl; Line ( lA00Bd0pcb12Ib1 ) = { ptExA00cp2C1, ptExA01cp1C1 };
// Transfinite Line { lA00Bd0pcb12Ib1 } = lA00Bd0pcb12Ib1;
lA00Bd0pcb12Ib2 = newl; Line ( lA00Bd0pcb12Ib2 ) = { ptExA00cp2C2, ptExA01cp1C2 };
// Transfinite Line { lA00Bd0pcb12Ib2 } = lA00Bd0pcb12Ib2;
lA00Bd0pcb12Ib3 = newl; Line ( lA00Bd0pcb12Ib3 ) = { ptExA00cp2C3, ptExA01cp1C3 };
// Transfinite Line { lA00Bd0pcb12Ib3 } = lA00Bd0pcb12Ib3;
lA00Bd0pcb12Ib4 = newl; Line ( lA00Bd0pcb12Ib4 ) = { ptExA00cp2C4, ptExA01cp1C4 };
// Transfinite Line { lA00Bd0pcb12Ib4 } = lA00Bd0pcb12Ib4;


//----------------------------------------------------------
//// Connect the pcb to the upper level lower copper conductor - level 0

lA00Bd0pcb2Tb1 = newl; Line ( lA00Bd0pcb2Tb1 ) = { ptExA01cp1C1, ptExA00Bd0pcb2AdC1 };
// Transfinite Line { lA00Bd0pcb2Tb1 } = lA00Bd0pcb2Tb1;
lA00Bd0pcb2Tb2 = newl; Line ( lA00Bd0pcb2Tb2 ) = { ptExA01cp1C2, ptExA00Bd0pcb2AdC2 };
// Transfinite Line { lA00Bd0pcb2Tb2 } = lA00Bd0pcb2Tb2;
lA00Bd0pcb2Tb3 = newl; Line ( lA00Bd0pcb2Tb3 ) = { ptExA01cp1C3, ptExA00Bd0pcb2AdC3 };
// Transfinite Line { lA00Bd0pcb2Tb3 } = lA00Bd0pcb2Tb3;
lA00Bd0pcb2Tb4 = newl; Line ( lA00Bd0pcb2Tb4 ) = { ptExA01cp1C4, ptExA00Bd0pcb2AdC4 };
// Transfinite Line { lA00Bd0pcb2Tb4 } = lA00Bd0pcb2Tb4;

//----------------------------------------------------------
//// Connect the top electrode to the level 0 - PCB top

/*
ltExA00EcC1 = newl; Line ( ltExA00EcC1 ) = { ptExA00EcC1, ptExA01cp1C1 };
// Transfinite Line { ltExA00EcC1 } = ltExA00EcC1;
// ltExA00EcM12 = newl; Line ( ltExA00EcM12 ) = { ptExA00EcM12, ltExA0Ptmc1 };
// Transfinite Line { ltExA00EcM12 } = ltExA00EcM12;
ltExA00EcC2 = newl; Line ( ltExA00EcC2 ) = { ptExA00EcC2, ptExA01cp1C4 };
// Transfinite Line { ltExA00EcC2 } = ltExA00EcC2;
ltExA00EcC3 = newl; Line ( ltExA00EcC3 ) = { ptExA00EcC3, ptExA01cp1C3 };
// Transfinite Line { ltExA00EcC3 } = ltExA00EcC3;
// ltExA00EcM34 = newl; Line ( ltExA00EcM34 ) = { ptExA00EcM34, ltExA0Ptmc3 };
// Transfinite Line { ltExA00EcM34 } = ltExA00EcM34;
ltExA00EcC4 = newl; Line ( ltExA00EcC4 ) = { ptExA00EcC4, ptExA01cp1C2 };
// Transfinite Line { ltExA00EcC4 } = ltExA00EcC4;
*/

//----------------------------------------------------------
//// Connect the pcb top side - level 3 side lower lines

/*
lA00Bd0pcb1TbB1 = newl; Line ( lA00Bd0pcb1TbB1 ) = { ptExA00cp2C1, ptExA00cp2C2 }; // lA00cp2Tb1
lA00Bd0pcb1TbR2 = newl; Line ( lA00Bd0pcb1TbR2 ) = { ptExA00cp2C2, ptExA00cp2C3 }; // lA00cp2Tb2
lA00Bd0pcb1TbT3 = newl; Line ( lA00Bd0pcb1TbT3 ) = { ptExA00cp2C3, ptExA00cp2C4 }; // lA00cp2Tb3
lA00Bd0pcb1TbL4 = newl; Line ( lA00Bd0pcb1TbL4 ) = { ptExA00cp2C4, ptExA00cp2C1 }; // lA00cp2Tb4
*/

//----------------------------------------------------------
//// Connect the pcb top side - level 3 side lower lines

lA00Bd0pcb2TbB1 = newl; Line ( lA00Bd0pcb2TbB1 ) = { ptExA01cp1C1, ptExA01cp1C2 };
lA00Bd0pcb2TbR2 = newl; Line ( lA00Bd0pcb2TbR2 ) = { ptExA00Bd0pcb2AdC2, ptExA00Bd0pcb2AdC3 };
lA00Bd0pcb2TbT3 = newl; Line ( lA00Bd0pcb2TbT3 ) = { ptExA01cp1C3, ptExA01cp1C4 };
lA00Bd0pcb2TbL4 = newl; Line ( lA00Bd0pcb2TbL4 ) = { ptExA00Bd0pcb2AdC4, ptExA00Bd0pcb2AdC1 };


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

	lA00Bd0pcb2TIb1~{m1}~{n1} = newl; Line ( lA00Bd0pcb2TIb1~{m1}~{n1} ) = { ptA01cp1C2~{m1-1}~{n1}, ptA01cp1C1~{m1}~{n1} };
	lA00Bd0pcb2TIb1 = lA00Bd0pcb2TIb1~{m1}~{n1};
	lA00Bd0pcb2TIb1A[] += lA00Bd0pcb2TIb1~{m1}~{n1};

	lA01cp1Bb4S = lA01cp1Bb4~{m1}~{n1};

		lA00Bd0pcb2TIb4~{m1}~{n1} = newl; Line ( lA00Bd0pcb2TIb4~{m1}~{n1} ) = { ptA01cp1C3~{m1-1}~{n1}, ptA01cp1C4~{m1}~{n1} };
		lA00Bd0pcb2TIb4 = lA00Bd0pcb2TIb4~{m1}~{n1};
		lA00Bd0pcb2TIb4A[] += lA00Bd0pcb2TIb4~{m1}~{n1};

		lA01cp1Bb2S = lA01cp1Bb2~{m1-1}~{n1};

		/// Top side middle - 2

		llA00Bd0pcb2Tb3 = newll; Line Loop ( llA00Bd0pcb2Tb3 ) = { lA00Bd0pcb2TIb1, -lA01cp1Bb4S, -lA00Bd0pcb2TIb4, -lA01cp1Bb2S };
		psA00Bd0pcb2Tb3 = news; Plane Surface ( psA00Bd0pcb2Tb3 ) = { llA00Bd0pcb2Tb3 };
		psA00Bd0pcb2Tb3A[] += psA00Bd0pcb2Tb3;

EndIf

If( m1 == numA01cpUy && n1 == numA01cpUx )

	/// Side 2

	lA00Bd0pcb2TIb2 = newl; Line ( lA00Bd0pcb2TIb2 ) = { ptA01cp1C2~{numA01cpUy}~{numA01cpUx}, ptExA00Bd0pcb2AdC2 };

	/// Top side middle last - 3

	lA00Bd0pcb2TIb5 = newl; Line ( lA00Bd0pcb2TIb5 ) = { ptA01cp1C3~{numA01cpUy}~{numA01cpUx}, ptExA00Bd0pcb2AdC3 };
	lA00Bd0pcb2TIb3a = newl; Line ( lA00Bd0pcb2TIb3a ) = { ptExA00Bd0pcb2AdC2, ptExA00Bd0pcb2AdC3 };
	lA00Bd0pcb2TIb3b = newl; Line ( lA00Bd0pcb2TIb3b ) = { ptA01cp1C2~{numA01cpUy}~{numA01cpUx}, ptA01cp1C3~{numA01cpUy}~{numA01cpUx} };
	llA00Bd0pcb2Tb2 = newll; Line Loop ( llA00Bd0pcb2Tb2 ) = { lA00Bd0pcb2TIb2, lA00Bd0pcb2TbR2, -lA00Bd0pcb2TIb5, -lA01cp1Bb2~{numA01cpUy}~{numA01cpUx} };										// -lA00Bd0pcb2TIb3b
	psA00Bd0pcb2Tb2 = news; Plane Surface ( psA00Bd0pcb2Tb2 ) = { llA00Bd0pcb2Tb2 };

EndIf

// llA00Bd0pcb2TTb = newll; Line Loop ( llA00Bd0pcb2TTb ) = { llA01cp12Ib5A[], lA00Bd0pcb2TbB1, lA00Bd0pcb2Tb2, lA00Bd0pcb2TbR2, -lA00Bd0pcb2Tb3, lA00Bd0pcb2TbT3, lA00Bd0pcb2Tb4, lA00Bd0pcb2TbL4, -lA00Bd0pcb2Tb1 };


 EndFor
EndFor

//----------------------------------------------------------
//// PCB top gas bounding surfaces

/// Segmented top PCB intermediate lines

/// Side 1

lA00Bd0pcb2TIb0 = newl; Line ( lA00Bd0pcb2TIb0 ) = { ptExA00Bd0pcb2AdC1, ptA01cp1C1~{0}~{0} };

/// Top side middle first - 1

lA00Bd0pcb2TIb3 = newl; Line ( lA00Bd0pcb2TIb3 ) = { ptExA00Bd0pcb2AdC4, ptA01cp1C4~{0}~{0} };
// lA00Bd0pcb2TIb2a = newl; Line ( lA00Bd0pcb2TIb2a ) = { ptExA00Bd0pcb2AdC4, ptExA00Bd0pcb2AdC1 };
// lA00Bd0pcb2TIb2b = newl; Line ( lA00Bd0pcb2TIb2b ) = { ptA01cp1C1~{0}~{0}, ptA01cp1C4~{0}~{0} };
llA00Bd0pcb2Tb1 = newll; Line Loop ( llA00Bd0pcb2Tb1 ) = { lA00Bd0pcb2TIb0, -lA01cp1Bb4~{0}~{0}, -lA00Bd0pcb2TIb3, lA00Bd0pcb2TbL4 };															// lA00Bd0pcb2TIb2b
psA00Bd0pcb2Tb1 = news; Plane Surface ( psA00Bd0pcb2Tb1 ) = { llA00Bd0pcb2Tb1 };

// ptExA00Bd0pcb2AdC1, ptA01cp1C1~{0}~{0}, ptA01cp1C4~{0}~{0}, ptA01cp1C1~{0}~{0}, ptA01cp1C4~{0}~{0}, ptExA00Bd0pcb2AdC4, ptExA00Bd0pcb2AdC4, ptExA00Bd0pcb2AdC1

//----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
//// Intermediate PCB layers

/// Segmented top side adjacent

If( numA01cpUy == 0 )

	/// Top side - 1

	llA00Bd0pcb2Tb4 = newll; Line Loop ( llA00Bd0pcb2Tb4 ) = { lA00Bd0pcb2Tb1, lA00Bd0pcb2TIb0, lA01cp1Bb1A[], lA00Bd0pcb2TIb2, -lA00Bd0pcb2Tb4, -lA00Bd0pcb2TbB1 };
	psA00Bd0pcb2Tb4 = news; Plane Surface ( psA00Bd0pcb2Tb4 ) = { llA00Bd0pcb2Tb4 };

	/// Top side - 2

	llA00Bd0pcb2Tb5 = newll; Line Loop ( llA00Bd0pcb2Tb5 ) = { lA00Bd0pcb2Tb2, lA00Bd0pcb2TIb3, -lA01cp1Bb3A[], lA00Bd0pcb2TIb5, -lA00Bd0pcb2Tb3, lA00Bd0pcb2TbT3 };
	psA00Bd0pcb2Tb5 = news; Plane Surface ( psA00Bd0pcb2Tb5 ) = { llA00Bd0pcb2Tb5 };

Else

	/// Top side - 1

	llA00Bd0pcb2Tb4 = newll; Line Loop ( llA00Bd0pcb2Tb4 ) = { lA00Bd0pcb2Tb1, lA00Bd0pcb2TIb0, lA01cp1Bb1A[], lA00Bd0pcb2TIb1A[], lA00Bd0pcb2TIb2, -lA00Bd0pcb2Tb2, -lA00Bd0pcb2TbB1 };
	psA00Bd0pcb2Tb4 = news; Plane Surface ( psA00Bd0pcb2Tb4 ) = { llA00Bd0pcb2Tb4 };

	// ptExA01cp1C1, ptExA00Bd0pcb2AdC1; ptExA00Bd0pcb2AdC1, ptA01cp1C1~{0}~{0}; ptA01cp1C1~{m1}~{n1}, ptA01cp1C2~{m1}~{n1}; ptA01cp1C2~{m1-1}~{n1}, ptA01cp1C1~{m1}~{n1};
	// ptA01cp1C2~{numA01cpUy}~{numA01cpUx}, ptExA00Bd0pcb2AdC2; ptExA00Bd0pcb2AdC2, ptExA01cp1C2; ptExA01cp1C2, ptExA01cp1C1

	/// Top side - 2

	llA00Bd0pcb2Tb5 = newll; Line Loop ( llA00Bd0pcb2Tb5 ) = { lA00Bd0pcb2Tb4, lA00Bd0pcb2TIb3, -lA01cp1Bb3A[], lA00Bd0pcb2TIb4A[], lA00Bd0pcb2TIb5, -lA00Bd0pcb2Tb3, lA00Bd0pcb2TbT3 };
	psA00Bd0pcb2Tb5 = news; Plane Surface ( psA00Bd0pcb2Tb5 ) = { llA00Bd0pcb2Tb5 };

	// ptExA01cp1C4, ptExA00Bd0pcb2AdC4; ptExA00Bd0pcb2AdC4, ptA01cp1C4~{0}~{0}; ptA01cp1C4~{m1}~{n1}, ptA01cp1C3~{m1}~{n1}; ptA01cp1C3~{m1-1}~{n1}, ptA01cp1C4~{m1}~{n1}
	// ptA01cp1C3~{numA01cpUy}~{numA01cpUx}, ptExA00Bd0pcb2AdC3; ptExA00Bd0pcb2AdC3, ptExA01cp1C3; ptExA01cp1C3, ptExA01cp1C4

EndIf

/// Complete bounding top PCB gas surface

// llA00Bd0pcb2BrTb1 = newll; Line Loop ( llA00Bd0pcb2BrTb1 ) = { lA00Bd0pcb2TbB1, lA00Bd0pcb2Tb2, lA00Bd0pcb2TbR2, -lA00Bd0pcb2Tb3, lA00Bd0pcb2TbT3, lA00Bd0pcb2Tb4, lA00Bd0pcb2TbL4, -lA00Bd0pcb2Tb1 };
// psA00Bd0pcb2BrTb1 = news; Plane Surface ( psA00Bd0pcb2BrTb1 ) = { llA00Bd0pcb2BrTb1 };

// psA00Bd0pcb2InTb1 = news; Plane Surface ( psA00Bd0pcb2InTb1 ) = { surfA01cp1Bb6A[] }; // psA00Bd0pcb2BrTb1,
// psA00Bd0pcb2InTb1 = news; Plane Surface ( psA00Bd0pcb2InTb1 ) = { llA00Bd0pcb2TTb };

//----------------------------------------------------------
//// Feature / Element removal

// Delete{ Surface { psA00Bd0pcb2BrTb1 }; }


//----------------------------------------------------------
//// Complete side layers

/// x - direction

llA00Bd0pcb12Ib1 = newll; Line Loop ( llA00Bd0pcb12Ib1 ) = { -lA00Bd0pcb2TbB1, -lA00Bd0pcb12Ib1, lA00cp2Tb1, lA00Bd0pcb12Ib2 };
psA00Bd0pcb12Ib1  = news; Plane Surface ( psA00Bd0pcb12Ib1 ) = { llA00Bd0pcb12Ib1 };
// Transfinite Surface { psA00Bd0pcb12Ib1 };
// Recombine Surface { psA00Bd0pcb12Ib1 };

// ptExA01cp1C2, ptExA01cp1C1, ptExA01cp1C1, ptExA00cp2C1, ptExA00cp2C1, ptExA00cp2C2, ptExA00cp2C2, ptExA01cp1C2 

/// y - direction

llA00Bd0pcb12Ib2 = newll; Line Loop ( llA00Bd0pcb12Ib2 ) = { lA00Bd0pcb12Ib1, lA00Bd0pcb2Tb1, -lA00Bd0pcb2TbL4, -lA00Bd0pcb2Tb4, -lA00Bd0pcb12Ib4, lA00cp2Tb4 };
psA00Bd0pcb12Ib2  = news; Plane Surface ( psA00Bd0pcb12Ib2 ) = { llA00Bd0pcb12Ib2 };
// Transfinite Surface { psA00Bd0pcb12Ib2 };
// Recombine Surface { psA00Bd0pcb12Ib2 };

// ptExA00cp2C1, ptExA01cp1C1, ptExA01cp1C1, ptExA00Bd0pcb2AdC1, ptExA00Bd0pcb2AdC1, ptExA00Bd0pcb2AdC4, ptExA00Bd0pcb2AdC4, ptExA01cp1C4, ptExA01cp1C4, ptExA00cp2C4, ptExA00cp2C4, ptExA00cp2C1

/// x - direction

llA00Bd0pcb12Ib3 = newll; Line Loop ( llA00Bd0pcb12Ib3 ) = { lA00Bd0pcb2TbT3, -lA00Bd0pcb12Ib4, -lA00cp2Tb3, lA00Bd0pcb12Ib3 };
psA00Bd0pcb12Ib3  = news; Plane Surface ( psA00Bd0pcb12Ib3 ) = { llA00Bd0pcb12Ib3 };
// Transfinite Surface { psA00Bd0pcb12Ib3 };
// Recombine Surface { psA00Bd0pcb12Ib3 };

// ptExA01cp1C3, ptExA01cp1C4, ptExA01cp1C4, ptExA00cp1C4, ptExA00cp1C4, ptExA00cp1C3, ptExA00cp1C3, ptExA01cp1C3

/// y - direction

llA00Bd0pcb12Ib4 = newll; Line Loop ( llA00Bd0pcb12Ib4 ) = { lA00Bd0pcb12Ib2, lA00Bd0pcb2Tb2, lA00Bd0pcb2TbR2, -lA00Bd0pcb2Tb3, -lA00Bd0pcb12Ib3, -lA00cp2Tb2 };
psA00Bd0pcb12Ib4  = news; Plane Surface ( psA00Bd0pcb12Ib4 ) = { llA00Bd0pcb12Ib4 };
// Transfinite Surface { psA00Bd0pcb12Ib4 };
// Recombine Surface { psA00Bd0pcb12Ib4 };

// ptExA00cp1C2, ptExA01cp1C2, ptExA01cp1C2, ptExA00Bd0pcb2AdC2, ptExA00Bd0pcb2AdC2, ptExA00Bd0pcb2AdC3, ptExA00Bd0pcb2AdC3, ptExA01cp1C3, ptExA01cp1C3, ptExA00cp1C3, ptExA00cp1C3, ptExA00cp1C2


/// SURFACE LOOP
//----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
//// PCB Surface Loop - PCB surface loop

//----------------------------------------------------------
//// PCB Surface Layers

If( numA01cpUy == 0 )

	slA00Bd0pcbSb1 = newsl; Surface Loop ( slA00Bd0pcbSb1 ) = { psA00Bd0pcb2Tb1, psA00Bd0pcb2Tb2, surfA01cp1Bb5A[], psA00Bd0pcb2Tb4, psA00Bd0pcb2Tb5, psA00Bd0pcb12Ib1, psA00Bd0pcb12Ib2, psA00Bd0pcb12Ib3, psA00Bd0pcb12Ib4, surfA00cp2TbA[] };
	// surfA01cp2Tb6A[],

Else

	slA00Bd0pcbSb1 = newsl; Surface Loop ( slA00Bd0pcbSb1 ) = { psA00Bd0pcb2Tb1, psA00Bd0pcb2Tb2, psA00Bd0pcb2Tb3A[], surfA01cp1Bb5A[], psA00Bd0pcb2Tb4, psA00Bd0pcb2Tb5, psA00Bd0pcb12Ib1, psA00Bd0pcb12Ib2, psA00Bd0pcb12Ib3, psA00Bd0pcb12Ib4, surfA00cp2TbA[] };
	// surfA01cp2Tb6A[],

EndIf

// psA00Bd0pcb2BrTb1

slA00Bd0pcbTSb1[] += slA00Bd0pcbSb1;


/// VOLUME
//----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
//// PCB volume

volA00Bd0pcb12V1 = newv; Volume ( volA00Bd0pcb12V1 ) = slA00Bd0pcbTSb1[];


/// PHYSICAL SURFACE
//----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
//// Physical surfaces - PCB surface

If(numA01cpUy == 0)

	physsurfA00Bd0pcb12Sb1 = newreg; Physical Surface ( physsurfA00Bd0pcb12Sb1 ) = { psA00Bd0pcb2Tb1, psA00Bd0pcb2Tb2, surfA01cp1Bb5A[], psA00Bd0pcb2Tb4, psA00Bd0pcb2Tb5, psA00Bd0pcb12Ib1, psA00Bd0pcb12Ib2, psA00Bd0pcb12Ib3, psA00Bd0pcb12Ib4, surfA00cp2TbA[] };
	// surfA01cp2Tb6A[], 

Else

	physsurfA00Bd0pcb12Sb1 = newreg; Physical Surface ( physsurfA00Bd0pcb12Sb1 ) = { psA00Bd0pcb2Tb1, psA00Bd0pcb2Tb2, psA00Bd0pcb2Tb3A[], surfA01cp1Bb5A[], psA00Bd0pcb2Tb4, psA00Bd0pcb2Tb5, psA00Bd0pcb12Ib1, psA00Bd0pcb12Ib2, psA00Bd0pcb12Ib3, psA00Bd0pcb12Ib4, surfA00cp2TbA[] };
	// surfA01cp2Tb6A[],

EndIf

// psA00Bd0pcb2InTb1
// psA00Bd0pcb12Ib1, psA00Bd0pcb12Ib2, psA00Bd0pcb12Ib3, psA00Bd0pcb12Ib4, surfA00cp1Bb5A[]
// surfA01cp1Bb6A[], psA00Bd0pcb2Tb1, psA00Bd0pcb2Tb2, psA00Bd0pcb2Tb3A, psA00Bd0pcb2Tb4, psA00Bd0pcb2Tb5


/// PHYSICAL VOLUME
//----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
//// Physical volume - PCB volume

physvolA00Bd0pcb12V1 = newreg; Physical Volume ( physvolA00Bd0pcb12V1 ) = { volA00Bd0pcb12V1 };


// End
