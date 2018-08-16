// Include "mmGasA00Assembly.geo";
// Include "mmGasA00AssemblyParam.geo";

// Include "mmGasA09Bd0pcb12Test.geo";
// Include "mmGasA00Bd0pcb12.geo";
// Include "mmGasA00Bd0pcb12CompLab.pro";
// Include "mmGasA00Bd0pcb12Param.geo";
// Include "mmGasA09Bd0pcb12ParamTest.geo";

// Include "mmGasA09CuTest0.geo";
// Include "mmGasA00CuP0cp12.geo";
// Include "mmGasA00CuP0cp12CompLab.pro";
// Include "mmGasA00CuP0cp12Param.geo";

// Include "mmGasA09Bd1pcb12Test.geo";
// Include "mmGasA01Bd1pcb12.geo";
// Include "mmGasA01Bd1pcb12CompLab.pro";
// Include "mmGasA01Bd1pcb12Param.geo";
Include "mmGasA09Bd1pcb12ParamTestv2.geo";

Include "mmGasA09CuTest1v2.geo";
// Include "mmGasA01CuY1cp12.geo";
// Include "mmGasA01CuY1cp12CompLab.pro";
// Include "mmGasA01CuY1cp12Param.geo";

// Include "mmGasA09Bd2pcb12Test.geo";
// Include "mmGasA02Bd2pcb12.geo";
// Include "mmGasA02Bd2pcb12CompLab.pro";
// Include "mmGasA02Bd2pcb12Param.geo";
Include "mmGasA09Bd2pcb12ParamTest.geo";

Include "mmGasA09CuTest2.geo";
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


/// GEOMETRY MODULE 1
/// PCB STRUCTURE
//----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
//// Variable designation: geometrical element, structural reference, interface / description, number


/// LINES
//----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
//// Border lines


/// PCB LEVEL 1
//----------------------------------------------------------
//// Connect the upper and lower points with lines to form the PCB 1 layer

// lA01pcb12Ib1 = newl; Line ( lA01pcb12Ib1 ) = { ptExA01cp1C1, ptExA01cp2C1 };
// Transfinite Line { lA01pcb12Ib1 } = lA01pcb12Ib1;
// lA01pcb12Ib2 = newl; Line ( lA01pcb12Ib2 ) = { ptExA01cp1C2, ptExA01cp2C2 };
// Transfinite Line { lA01pcb12Ib2 } = lA01pcb12Ib2;
// lA01pcb12Ib3 = newl; Line ( lA01pcb12Ib3 ) = { ptExA01cp1C3, ptExA01cp2C3 };
// Transfinite Line { lA01pcb12Ib3 } = lA01pcb12Ib3;
// lA01pcb12Ib4 = newl; Line ( lA01pcb12Ib4 ) = { ptExA01cp1C4, ptExA01cp2C4 };
// Transfinite Line { lA01pcb12Ib4 } = lA01pcb12Ib4;

/*
//----------------------------------------------------------
//// Connect the upper and lower copper conductor - level 1

lA01Bd1pcb12Ib1 = newl; Line ( lA01Bd1pcb12Ib1 ) = { ptExA01cp1C1, ptExA01cp2C1 };
// Transfinite Line { lA01Bd1pcb12Ib1 } = lA01Bd1pcb12Ib1;
lA01Bd1pcb12Ib2 = newl; Line ( lA01Bd1pcb12Ib2 ) = { ptExA01cp1C2, ptExA01cp2C2 };
// Transfinite Line { lA01Bd1pcb12Ib2 } = lA01Bd1pcb12Ib2;
lA01Bd1pcb12Ib3 = newl; Line ( lA01Bd1pcb12Ib3 ) = { ptExA01cp1C3, ptExA01cp2C3 };
// Transfinite Line { lA01Bd1pcb12Ib3 } = lA01Bd1pcb12Ib3;
lA01Bd1pcb12Ib4 = newl; Line ( lA01Bd1pcb12Ib4 ) = { ptExA01cp1C4, ptExA01cp2C4 };
// Transfinite Line { lA01Bd1pcb12Ib4 } = lA01Bd1pcb12Ib4;
*/

//----------------------------------------------------------
//// Connect the PCB to the lower copper conductor - level 1

// lA01Bd1pcb12Ib1 = newl; Line ( lA01Bd1pcb12Ib1 ) = { ptExA01cp1C1, ptExA01cp2C1 };
// Transfinite Line { lA01Bd1pcb12Ib1 } = lA01Bd1pcb12Ib1;
// lA01Bd1pcb12Ib2 = newl; Line ( lA01Bd1pcb12Ib2 ) = { ptExA01cp1C2, ptExA01cp2C2 };
// Transfinite Line { lA01Bd1pcb12Ib2 } = lA01Bd1pcb12Ib2;
// lA01Bd1pcb12Ib3 = newl; Line ( lA01Bd1pcb12Ib3 ) = { ptExA01cp1C3, ptExA01cp2C3 };
// Transfinite Line { lA01Bd1pcb12Ib3 } = lA01Bd1pcb12Ib3;
// lA01Bd1pcb12Ib4 = newl; Line ( lA01Bd1pcb12Ib4 ) = { ptExA01cp1C4, ptExA01cp2C4 };
// Transfinite Line { lA01Bd1pcb12Ib4 } = lA01Bd1pcb12Ib4;

//----------------------------------------------------------
//// Connect the PCB to the upper level lower copper conductor - level 1

lA01Bd1pcb2Tb1 = newl; Line ( lA01Bd1pcb2Tb1 ) = { ptExA01cp2C1, ptExA01Bd1pcb2AdC1 };
// Transfinite Line { lA01Bd1pcb2Tb1 } = lA01Bd1pcb2Tb1;
lA01Bd1pcb2Tb2 = newl; Line ( lA01Bd1pcb2Tb2 ) = { ptExA01cp2C2, ptExA01Bd1pcb2AdC2 };
// Transfinite Line { lA01Bd1pcb2Tb2 } = lA01Bd1pcb2Tb2;
lA01Bd1pcb2Tb3 = newl; Line ( lA01Bd1pcb2Tb3 ) = { ptExA01cp2C3, ptExA01Bd1pcb2AdC3 };
// Transfinite Line { lA01Bd1pcb2Tb3 } = lA01Bd1pcb2Tb3;
lA01Bd1pcb2Tb4 = newl; Line ( lA01Bd1pcb2Tb4 ) = { ptExA01cp2C4, ptExA01Bd1pcb2AdC4 };
// Transfinite Line { lA01Bd1pcb2Tb4 } = lA01Bd1pcb2Tb4;

//----------------------------------------------------------
//// Connect the top electrode to the level 1 - PCB top

// ltExA01EcC1 = newl; Line ( ltExA01EcC1 ) = { ptExA00EcC1, ptExA01cp2C1 };
// Transfinite Line { ltExA01EcC1 } = ltExA01EcC1;
// ltExA01EcM12 = newl; Line ( ltExA01EcM12 ) = { ptExA00EcM12, ltExA00Ptmc1 };
// Transfinite Line { ltExA01EcM12 } = ltExA01EcM12;
// ltExA01EcC2 = newl; Line ( ltExA01EcC2 ) = { ptExA00EcC2, ptExA01cp2C4 };
// Transfinite Line { ltExA01EcC2 } = ltExA01EcC2;
// ltExA01EcC3 = newl; Line ( ltExA01EcC3 ) = { ptExA00EcC3, ptExA01cp2C3 };
// Transfinite Line { ltExA01EcC3 } = ltExA01EcC3;
// ltExA01EcM34 = newl; Line ( ltExA01EcM34 ) = { ptExA00EcM34, ltExA00Ptmc3 };
// Transfinite Line { ltExA01EcM34 } = ltExA01EcM34;
// ltExA01EcC4 = newl; Line ( ltExA01EcC4 ) = { ptExA00EcC4, ptExA01cp2C2 };
// Transfinite Line { ltExA01EcC4 } = ltExA01EcC4;

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

// llA01Bd1pcb2TTb = newll; Line Loop ( llA01Bd1pcb2TTb ) = { llA01cp2Ib5A[], lA01Bd1pcb2TbB1, lA01Bd1pcb2Tb2, lA01Bd1pcb2TbR2, -lA01Bd1pcb2Tb3, lA01Bd1pcb2TbT3, lA01Bd1pcb2Tb4, lA01Bd1pcb2TbL4, -lA01Bd1pcb2Tb1 };


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


/*
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
*/


/*
/// SURFACE LOOP
//----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
//// PCB Surface Loop - PCB surface loop

//----------------------------------------------------------
//// PCB Surface Layers

If( numA01cpUy == 0 )

	// slA01Bd1pcbSb1 = newsl; Surface Loop ( slA01Bd1pcbSb1 ) = { psA01Bd1pcb2Tb1, psA01Bd1pcb2Tb2, psA01Bd1pcb2Tb4, psA01Bd1pcb2Tb5, surfA01cp1Bb5A[] };
	// surfA01cp2Tb6A[], psA01Bd1pcb12Ib1, psA01Bd1pcb12Ib2, psA01Bd1pcb12Ib3, psA01Bd1pcb12Ib4,

Else

	// slA01Bd1pcbSb1 = newsl; Surface Loop ( slA01Bd1pcbSb1 ) = { psA01Bd1pcb2Tb1, psA01Bd1pcb2Tb2, psA01Bd1pcb2Tb3A, psA01Bd1pcb2Tb4, psA01Bd1pcb2Tb5, surfA01cp1Bb5A[] };
	// surfA01cp2Tb6A[], psA01Bd1pcb12Ib1, psA01Bd1pcb12Ib2, psA01Bd1pcb12Ib3, psA01Bd1pcb12Ib4,

EndIf

// psA01Bd1pcb2BrTb1

slA01Bd1pcbTSb1[] += slA01Bd1pcbSb1;


/// VOLUME
//----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
//// PCB volume

// volA01Bd1pcb12V1 = newv; Volume ( volA01Bd1pcb12V1 ) = slA01Bd1pcbTSb1[];


/// PHYSICAL SURFACE
//----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
//// Physical surfaces - PCB surface

If(numA01cpUy == 0)

	// physsurfA01Bd1pcb12Sb1 = newreg;
	// Physical Surface ( physsurfA01Bd1pcb12Sb1 ) = { psA01Bd1pcb2Tb1, psA01Bd1pcb2Tb2, psA01Bd1pcb2Tb4, psA01Bd1pcb2Tb5, surfA01cp1Bb5A[] };
	// surfA01cp2Tb6A[], psA01Bd1pcb12Ib1, psA01Bd1pcb12Ib2, psA01Bd1pcb12Ib3, psA01Bd1pcb12Ib4,

Else

	// physsurfA01Bd1pcb12Sb1 = newreg;
	// Physical Surface ( physsurfA01Bd1pcb12Sb1 ) = { psA01Bd1pcb2Tb1, psA01Bd1pcb2Tb2, psA01Bd1pcb2Tb3A, psA01Bd1pcb2Tb4, psA01Bd1pcb2Tb5, surfA01cp1Bb5A[] };
	// surfA01cp2Tb6A[], psA01Bd1pcb12Ib1, psA01Bd1pcb12Ib2, psA01Bd1pcb12Ib3, psA01Bd1pcb12Ib4,

EndIf

// psA01Bd1pcb2InTb1
// psA01Bd1pcb12Ib1, psA01Bd1pcb12Ib2, psA01Bd1pcb12Ib3, psA01Bd1pcb12Ib4, surfA01cp1Bb5A[]
// surfA01cp2Tb6A[], psA01Bd1pcb2Tb1, psA01Bd1pcb2Tb2, psA01Bd1pcb2Tb3A, psA01Bd1pcb2Tb4, psA01Bd1pcb2Tb5


/// PHYSICAL VOLUME
//----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
//// Physical volume - PCB volume

// physvolA01Bd1pcb12V1 = newreg;
// Physical Volume ( physvolA01Bd1pcb12V1 ) = { volA01Bd1pcb12V1 };


// End
*/


/// GEOMETRY MODULE 2
/// PCB STRUCTURE
//----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
//// Variable designation: geometrical element, structural reference, interface / description, number


/// LINES
//----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
//// Border lines


/// PCB LEVEL 2
//----------------------------------------------------------
//// Connect the upper and lower points with lines to form the PCB 2 layer

// lA02pcb12Ib1 = newl; Line ( lA02pcb12Ib1 ) = { ptExA01cp2C1, ptExA02cp1C1 };
// Transfinite Line { lA02pcb12Ib1 } = lA02pcb12Ib1;
// lA02pcb12Ib2 = newl; Line ( lA02pcb12Ib2 ) = { ptExA01cp2C2, ptExA02cp1C2 };
// Transfinite Line { lA02pcb12Ib2 } = lA02pcb12Ib2;
// lA02pcb12Ib3 = newl; Line ( lA02pcb12Ib3 ) = { ptExA01cp2C3, ptExA02cp1C3 };
// Transfinite Line { lA02pcb12Ib3 } = lA02pcb12Ib3;
// lA02pcb12Ib4 = newl; Line ( lA02pcb12Ib4 ) = { ptExA01cp2C4, ptExA02cp1C4 };
// Transfinite Line { lA02pcb12Ib4 } = lA02pcb12Ib4;

//----------------------------------------------------------
//// Connect the pcb to the lower copper conductor - level 2

lA02Bd2pcb12Ib1 = newl; Line ( lA02Bd2pcb12Ib1 ) = { ptExA01cp2C1, ptExA02cp1C1 };
// Transfinite Line { lA02Bd2pcb12Ib1 } = lA02Bd2pcb12Ib1;
lA02Bd2pcb12Ib2 = newl; Line ( lA02Bd2pcb12Ib2 ) = { ptExA01cp2C4, ptExA02cp1C2 };
// Transfinite Line { lA02Bd2pcb12Ib2 } = lA02Bd2pcb12Ib2;
lA02Bd2pcb12Ib3 = newl; Line ( lA02Bd2pcb12Ib3 ) = { ptExA01cp2C3, ptExA02cp1C3 };
// Transfinite Line { lA02Bd2pcb12Ib3 } = lA02Bd2pcb12Ib3;
lA02Bd2pcb12Ib4 = newl; Line ( lA02Bd2pcb12Ib4 ) = { ptExA01cp2C2, ptExA02cp1C4 };
// Transfinite Line { lA02Bd2pcb12Ib4 } = lA02Bd2pcb12Ib4;

//----------------------------------------------------------
//// Connect the pcb to the lower copper conductor - level 2

// lA02Bd2pcb12Ib1 = newl; Line ( lA02Bd2pcb12Ib1 ) = { ptExA01cp2C1, ptExA02cp1C1 };
// Transfinite Line { lA02Bd2pcb12Ib1 } = lA02Bd2pcb12Ib1;
// lA02Bd2pcb12Ib2 = newl; Line ( lA02Bd2pcb12Ib2 ) = { ptExA01cp2C2, ptExA02cp1C2 };
// Transfinite Line { lA02Bd2pcb12Ib2 } = lA02Bd2pcb12Ib2;
// lA02Bd2pcb12Ib3 = newl; Line ( lA02Bd2pcb12Ib3 ) = { ptExA01cp2C3, ptExA02cp1C3 };
// Transfinite Line { lA02Bd2pcb12Ib3 } = lA02Bd2pcb12Ib3;
// lA02Bd2pcb12Ib4 = newl; Line ( lA02Bd2pcb12Ib4 ) = { ptExA01cp2C4, ptExA02cp1C4 };
// Transfinite Line { lA02Bd2pcb12Ib4 } = lA02Bd2pcb12Ib4;

//----------------------------------------------------------
//// Connect the pcb to the upper level lower copper conductor - level 2

lA02Bd2pcb2Tb1 = newl; Line ( lA02Bd2pcb2Tb1 ) = { ptExA02cp1C1, ptExA02Bd2pcb2AdC1 };
// Transfinite Line { lA02Bd2pcb2Tb1 } = lA02Bd2pcb2Tb1;
lA02Bd2pcb2Tb2 = newl; Line ( lA02Bd2pcb2Tb2 ) = { ptExA02cp1C2, ptExA02Bd2pcb2AdC2 };
// Transfinite Line { lA02Bd2pcb2Tb2 } = lA02Bd2pcb2Tb2;
lA02Bd2pcb2Tb3 = newl; Line ( lA02Bd2pcb2Tb3 ) = { ptExA02cp1C3, ptExA02Bd2pcb2AdC3 };
// Transfinite Line { lA02Bd2pcb2Tb3 } = lA02Bd2pcb2Tb3;
lA02Bd2pcb2Tb4 = newl; Line ( lA02Bd2pcb2Tb4 ) = { ptExA02cp1C4, ptExA02Bd2pcb2AdC4 };
// Transfinite Line { lA02Bd2pcb2Tb4 } = lA02Bd2pcb2Tb4;

//----------------------------------------------------------
//// Connect the top electrode to the level 2 - pcb top

// ltExA02EcC1 = newl; Line ( ltExA02EcC1 ) = { ptExA00EcC1, ptExA02cp2C1 };
// Transfinite Line { ltExA02EcC1 } = ltExA02EcC1;
// ltExA02EcM12 = newl; Line ( ltExA02EcM12 ) = { ptExA00EcM12, ltExA00Ptmc1 };
// Transfinite Line { ltExA02EcM12 } = ltExA02EcM12;
// ltExA02EcC2 = newl; Line ( ltExA02EcC2 ) = { ptExA00EcC2, ptExA02cp2C2 };
// Transfinite Line { ltExA02EcC2 } = ltExA02EcC2;
// ltExA02EcC3 = newl; Line ( ltExA02EcC3 ) = { ptExA00EcC3, ptExA02cp2C3 };
// Transfinite Line { ltExA02EcC3 } = ltExA02EcC3;
// ltExA02EcM34 = newl; Line ( ltExA02EcM34 ) = { ptExA00EcM34, ltExA00Ptmc3 };
// Transfinite Line { ltExA02EcM34 } = ltExA02EcM34;
// ltExA02EcC4 = newl; Line ( ltExA02EcC4 ) = { ptExA00EcC4, ptExA02cp2C4 };
// Transfinite Line { ltExA02EcC4 } = ltExA02EcC4;

//----------------------------------------------------------
//// Connect the pcb top side - level 3 side lower lines

lA02Bd2pcb2TbB1 = newl; Line ( lA02Bd2pcb2TbB1 ) = { ptExA02cp1C1, ptExA02cp1C2 };
lA02Bd2pcb2TbR2 = newl; Line ( lA02Bd2pcb2TbR2 ) = { ptExA02Bd2pcb2AdC2, ptExA02Bd2pcb2AdC3 };
lA02Bd2pcb2TbT3 = newl; Line ( lA02Bd2pcb2TbT3 ) = { ptExA02cp1C3, ptExA02cp1C4 };
lA02Bd2pcb2TbL4 = newl; Line ( lA02Bd2pcb2TbL4 ) = { ptExA02Bd2pcb2AdC4, ptExA02Bd2pcb2AdC1 };


/// SURFACES
//----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
//// PCB top gas bounding surfaces

For m1 In { 0:numA02cpUx }
 For n1 In { 0:numA02cpUy }

//----------------------------------------------------------
//// PCB top gas bounding surfaces

/// Segmented top PCB intermediate lines

If( m1 > 0 )
	
	/// Middle

	lA02Bd2pcb2TIb1~{m1}~{n1} = newl; Line ( lA02Bd2pcb2TIb1~{m1}~{n1} ) = { ptA02cp1C2~{m1-1}~{n1}, ptA02cp1C1~{m1}~{n1} };
	lA02Bd2pcb2TIb1 = lA02Bd2pcb2TIb1~{m1}~{n1};
	lA02Bd2pcb2TIb1A[] += lA02Bd2pcb2TIb1~{m1}~{n1};

	lA02cp1Bb4S = lA02cp1Bb4~{m1}~{n1};

		lA02Bd2pcb2TIb4~{m1}~{n1} = newl; Line ( lA02Bd2pcb2TIb4~{m1}~{n1} ) = { ptA02cp1C3~{m1-1}~{n1}, ptA02cp1C4~{m1}~{n1} };
		lA02Bd2pcb2TIb4 = lA02Bd2pcb2TIb4~{m1}~{n1};
		lA02Bd2pcb2TIb4A[] += lA02Bd2pcb2TIb4~{m1}~{n1};

		lA02cp1Bb2S = lA02cp1Bb2~{m1-1}~{n1};

		/// Top side middle - 2

		llA02Bd2pcb2Tb3 = newll; Line Loop ( llA02Bd2pcb2Tb3 ) = { lA02Bd2pcb2TIb1, -lA02cp1Bb4S, -lA02Bd2pcb2TIb4, -lA02cp1Bb2S };
		psA02Bd2pcb2Tb3 = news; Plane Surface ( psA02Bd2pcb2Tb3 ) = { llA02Bd2pcb2Tb3 };
		psA02Bd2pcb2Tb3A[] += psA02Bd2pcb2Tb3;

EndIf

If( m1 == numA02cpUx && n1 == numA02cpUy )

	/// Side 2

	lA02Bd2pcb2TIb2 = newl; Line ( lA02Bd2pcb2TIb2 ) = { ptA02cp1C2~{numA02cpUx}~{numA02cpUy}, ptExA02Bd2pcb2AdC2 };

	/// Top side middle last - 3

	lA02Bd2pcb2TIb5 = newl; Line ( lA02Bd2pcb2TIb5 ) = { ptA02cp1C3~{numA02cpUx}~{numA02cpUy}, ptExA02Bd2pcb2AdC3 };
	lA02Bd2pcb2TIb3a = newl; Line ( lA02Bd2pcb2TIb3a ) = { ptExA02Bd2pcb2AdC2, ptExA02Bd2pcb2AdC3 };
	lA02Bd2pcb2TIb3b = newl; Line ( lA02Bd2pcb2TIb3b ) = { ptA02cp1C2~{numA02cpUx}~{numA02cpUy}, ptA02cp1C3~{numA02cpUx}~{numA02cpUy} };
	llA02Bd2pcb2Tb2 = newll; Line Loop ( llA02Bd2pcb2Tb2 ) = { lA02Bd2pcb2TIb2, lA02Bd2pcb2TbR2, -lA02Bd2pcb2TIb5, -lA02cp1Bb2~{numA02cpUx}~{numA02cpUy} };										// -lA02Bd2pcb2TIb3b
	psA02Bd2pcb2Tb2 = news; Plane Surface ( psA02Bd2pcb2Tb2 ) = { llA02Bd2pcb2Tb2 };

EndIf

// llA02Bd2pcb2TTb = newll; Line Loop ( llA02Bd2pcb2TTb ) = { llA02cp12Ib5A[], lA02Bd2pcb2TbB1, lA02Bd2pcb2Tb2, lA02Bd2pcb2TbR2, -lA02Bd2pcb2Tb3, lA02Bd2pcb2TbT3, lA02Bd2pcb2Tb4, lA02Bd2pcb2TbL4, -lA02Bd2pcb2Tb1 };


 EndFor
EndFor

//----------------------------------------------------------
//// PCB top gas bounding surfaces

/// Segmented top PCB intermediate lines

/// Side 1

lA02Bd2pcb2TIb0 = newl; Line ( lA02Bd2pcb2TIb0 ) = { ptExA02Bd2pcb2AdC1, ptA02cp1C1~{0}~{0} };

/// Top side middle first - 1

lA02Bd2pcb2TIb3 = newl; Line ( lA02Bd2pcb2TIb3 ) = { ptExA02Bd2pcb2AdC4, ptA02cp1C4~{0}~{0} };
lA02Bd2pcb2TIb2a = newl; Line ( lA02Bd2pcb2TIb2a ) = { ptExA02Bd2pcb2AdC4, ptExA02Bd2pcb2AdC1 };
lA02Bd2pcb2TIb2b = newl; Line ( lA02Bd2pcb2TIb2b ) = { ptA02cp1C1~{0}~{0}, ptA02cp1C4~{0}~{0} };
llA02Bd2pcb2Tb1 = newll; Line Loop ( llA02Bd2pcb2Tb1 ) = { lA02Bd2pcb2TIb0, -lA02cp1Bb4~{0}~{0}, -lA02Bd2pcb2TIb3, lA02Bd2pcb2TbL4 };															// lA02Bd2pcb2TIb2b
psA02Bd2pcb2Tb1 = news; Plane Surface ( psA02Bd2pcb2Tb1 ) = { llA02Bd2pcb2Tb1 };

//----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
//// Intermediate PCB layers

/// Segmented top side adjacent

If( numA02cpUx == 0 )

	/// Top side - 1

	llA02Bd2pcb2Tb4 = newll; Line Loop ( llA02Bd2pcb2Tb4 ) = { lA02Bd2pcb2Tb1, lA02Bd2pcb2TIb0, lA02cp1Bb1A[], lA02Bd2pcb2TIb2, -lA02Bd2pcb2Tb4, -lA02Bd2pcb2TbB1 };
	psA02Bd2pcb2Tb4 = news; Plane Surface ( psA02Bd2pcb2Tb4 ) = { llA02Bd2pcb2Tb4 };

	/// Top side - 2

	llA02Bd2pcb2Tb5 = newll; Line Loop ( llA02Bd2pcb2Tb5 ) = { lA02Bd2pcb2Tb2, lA02Bd2pcb2TIb3, -lA02cp1Bb3A[], lA02Bd2pcb2TIb5, -lA02Bd2pcb2Tb3, lA02Bd2pcb2TbT3 };
	psA02Bd2pcb2Tb5 = news; Plane Surface ( psA02Bd2pcb2Tb5 ) = { llA02Bd2pcb2Tb5 };

Else

	/// Top side - 1

	llA02Bd2pcb2Tb4 = newll; Line Loop ( llA02Bd2pcb2Tb4 ) = { lA02Bd2pcb2Tb1, lA02Bd2pcb2TIb0, lA02cp1Bb1A[], lA02Bd2pcb2TIb1A[], lA02Bd2pcb2TIb2, -lA02Bd2pcb2Tb2, -lA02Bd2pcb2TbB1 };
	psA02Bd2pcb2Tb4 = news; Plane Surface ( psA02Bd2pcb2Tb4 ) = { llA02Bd2pcb2Tb4 };

	// ptExA02cp1C1, ptExA02Bd2pcb2AdC1; ptExA02Bd2pcb2AdC1, ptA02cp1C1~{0}~{0}; ptA02cp1C1~{m1}~{n1}, ptA02cp1C2~{m1}~{n1}; ptA02cp1C2~{m1-1}~{n1}, ptA02cp1C1~{m1}~{n1};
	// ptA02cp1C2~{numA02cpUy}~{numA02cpUx}, ptExA02Bd2pcb2AdC2; ptExA02Bd2pcb2AdC2, ptExA02cp1C2; ptExA02cp1C2, ptExA02cp1C1

	/// Top side - 2

	llA02Bd2pcb2Tb5 = newll; Line Loop ( llA02Bd2pcb2Tb5 ) = { lA02Bd2pcb2Tb4, lA02Bd2pcb2TIb3, -lA02cp1Bb3A[], lA02Bd2pcb2TIb4A[], lA02Bd2pcb2TIb5, -lA02Bd2pcb2Tb3, lA02Bd2pcb2TbT3 };
	psA02Bd2pcb2Tb5 = news; Plane Surface ( psA02Bd2pcb2Tb5 ) = { llA02Bd2pcb2Tb5 };

	// ptExA02cp1C4, ptExA02Bd2pcb2AdC4; ptExA02Bd2pcb2AdC4, ptA02cp1C4~{0}~{0}; ptA02cp1C4~{m1}~{n1}, ptA02cp1C3~{m1}~{n1}; ptA02cp1C3~{m1-1}~{n1}, ptA02cp1C4~{m1}~{n1}
	// ptA02cp1C3~{numA02cpUy}~{numA02cpUx}, ptExA02Bd2pcb2AdC3; ptExA02Bd2pcb2AdC3, ptExA02cp1C3; ptExA02cp1C3, ptExA02cp1C4

EndIf

/// Complete bounding top PCB gas surface

// llA02Bd2pcb2BrTb1 = newll; Line Loop ( llA02Bd2pcb2BrTb1 ) = { lA02Bd2pcb2TbB1, lA02Bd2pcb2Tb2, lA02Bd2pcb2TbR2, -lA02Bd2pcb2Tb3, lA02Bd2pcb2TbT3, lA02Bd2pcb2Tb4, lA02Bd2pcb2TbL4, -lA02Bd2pcb2Tb1 };
// psA02Bd2pcb2BrTb1 = news; Plane Surface ( psA02Bd2pcb2BrTb1 ) = { llA02Bd2pcb2BrTb1 };

// psA02Bd2pcb2InTb1 = news; Plane Surface ( psA02Bd2pcb2InTb1 ) = { surfA02cp1Bb6A[] }; // psA02Bd2pcb2BrTb1,
// psA02Bd2pcb2InTb1 = news; Plane Surface ( psA02Bd2pcb2InTb1 ) = { llA02Bd2pcb2TTb };

//----------------------------------------------------------
//// Feature / Element removal

// Delete{ Surface { psA02Bd2pcb2BrTb1 }; }

//----------------------------------------------------------
//// Complete side layers

/// x - direction

llA02Bd2pcb12Ib1 = newll; Line Loop ( llA02Bd2pcb12Ib1 ) = { lA02Bd2pcb2Tb4, lA02Bd2pcb2TbL4, -lA02Bd2pcb2Tb1, -lA02Bd2pcb12Ib1, lA01Bd1pcb2TbB1, lA02Bd2pcb12Ib4 };
psA02Bd2pcb12Ib1  = news; Plane Surface ( psA02Bd2pcb12Ib1 ) = { llA02Bd2pcb12Ib1 };
// Transfinite Surface { psA02Bd2pcb12Ib1 };
// Recombine Surface { psA02Bd2pcb12Ib1 };

// ptExA02cp1C2, ptExA02cp1C1, ptExA02cp1C1, ptExA01cp2C1, ptExA01cp2C1, ptExA01cp2C2, ptExA01cp2C2, ptExA02cp1C2

/// y - direction

llA02Bd2pcb12Ib2 = newll; Line Loop ( llA02Bd2pcb12Ib2 ) = { lA02Bd2pcb2TbB1, -lA02Bd2pcb12Ib2, lA01Bd1pcb2Tb4, lA01Bd1pcb2TbL4, -lA01Bd1pcb2Tb1, lA02Bd2pcb12Ib1 };
psA02Bd2pcb12Ib2  = news; Plane Surface ( psA02Bd2pcb12Ib2 ) = { llA02Bd2pcb12Ib2 };
// Transfinite Surface { psA02Bd2pcb12Ib2 };
// Recombine Surface { psA02Bd2pcb12Ib2 };

/// x - direction

llA02Bd2pcb12Ib3 = newll; Line Loop ( llA02Bd2pcb12Ib3 ) = { lA02Bd2pcb2Tb2, lA02Bd2pcb2TbR2, -lA02Bd2pcb2Tb3, -lA02Bd2pcb12Ib3, lA01Bd1pcb2TbT3, lA02Bd2pcb12Ib2 };
psA02Bd2pcb12Ib3  = news; Plane Surface ( psA02Bd2pcb12Ib3 ) = { llA02Bd2pcb12Ib3 };
// Transfinite Surface { psA02Bd2pcb12Ib3 };
// Recombine Surface { psA02Bd2pcb12Ib3 };

/// y - direction

llA02Bd2pcb12Ib4 = newll; Line Loop ( llA02Bd2pcb12Ib4 ) = { lA02Bd2pcb2TbT3, -lA02Bd2pcb12Ib4, lA01Bd1pcb2Tb2, lA01Bd1pcb2TbR2, -lA01Bd1pcb2Tb3, lA02Bd2pcb12Ib3 };
psA02Bd2pcb12Ib4  = news; Plane Surface ( psA02Bd2pcb12Ib4 ) = { llA02Bd2pcb12Ib4 };
// Transfinite Surface { psA02Bd2pcb12Ib4 };
// Recombine Surface { psA02Bd2pcb12Ib4 };


/*
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
*/


/// SURFACE LOOP
//----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
//// PCB Surface Loop - PCB surface loop

//----------------------------------------------------------
//// PCB Surface Layers

If( numA02cpUx == 0 )

	slA02Bd2pcbSb1 = newsl; Surface Loop ( slA02Bd2pcbSb1 ) = { psA01Bd1pcb2Tb1, psA01Bd1pcb2Tb2, psA01Bd1pcb2Tb4, psA01Bd1pcb2Tb5, psA02Bd2pcb2Tb1, psA02Bd2pcb2Tb2, psA02Bd2pcb2Tb4, psA02Bd2pcb2Tb5, psA02Bd2pcb12Ib1, psA02Bd2pcb12Ib2, 
	psA02Bd2pcb12Ib3, psA02Bd2pcb12Ib4, surfA02cp1Bb5A[], surfA01cp2Tb6A[] };
	slA02Bd2pcbTSb1A[] += slA02Bd2pcbSb1;
	// slA02Bd2pcbTSb1[] = { psA01Bd1pcb2Tb1, psA01Bd1pcb2Tb2, psA01Bd1pcb2Tb4, psA01Bd1pcb2Tb5, psA02Bd2pcb2Tb1, psA02Bd2pcb2Tb2, psA02Bd2pcb2Tb4, psA02Bd2pcb2Tb5, psA02Bd2pcb12Ib1, psA02Bd2pcb12Ib2, psA02Bd2pcb12Ib3, psA02Bd2pcb12Ib4, 
	// surfA02cp1Bb5A[], surfA01cp2Tb6A[] };
	// slA02Bd2pcbTSb2A[] += { psA01Bd1pcb2Tb1, psA01Bd1pcb2Tb2, psA01Bd1pcb2Tb4, psA01Bd1pcb2Tb5, psA02Bd2pcb2Tb1, psA02Bd2pcb2Tb2, psA02Bd2pcb2Tb4, psA02Bd2pcb2Tb5, psA02Bd2pcb12Ib1, psA02Bd2pcb12Ib2, psA02Bd2pcb12Ib3, psA02Bd2pcb12Ib4, 
	// surfA02cp1Bb5A[], surfA01cp2Tb6A[] };

Else

	slA02Bd2pcbSb1 = newsl; Surface Loop ( slA02Bd2pcbSb1 ) = { psA01Bd1pcb2Tb1, psA01Bd1pcb2Tb2, psA01Bd1pcb2Tb3A[], psA01Bd1pcb2Tb4, psA01Bd1pcb2Tb5, psA02Bd2pcb2Tb1, psA02Bd2pcb2Tb2, psA02Bd2pcb2Tb3A[], psA02Bd2pcb2Tb4, psA02Bd2pcb2Tb5, 
	psA02Bd2pcb12Ib1, psA02Bd2pcb12Ib2, psA02Bd2pcb12Ib3, psA02Bd2pcb12Ib4, surfA02cp1Bb5A[], surfA01cp2Tb6A[] };
	slA02Bd2pcbTSb1A[] += slA02Bd2pcbSb1;
	// slA02Bd2pcbTSb1[] = { psA01Bd1pcb2Tb1, psA01Bd1pcb2Tb2, psA01Bd1pcb2Tb3A[], psA01Bd1pcb2Tb4, psA01Bd1pcb2Tb5, psA02Bd2pcb2Tb1, psA02Bd2pcb2Tb2, psA02Bd2pcb2Tb3A[], psA02Bd2pcb2Tb4, psA02Bd2pcb2Tb5, 
	// psA02Bd2pcb12Ib1, psA02Bd2pcb12Ib2, psA02Bd2pcb12Ib3, psA02Bd2pcb12Ib4, surfA02cp1Bb5A[], surfA01cp2Tb6A[] };
	// slA02Bd2pcbTSb2A[] += { psA01Bd1pcb2Tb1, psA01Bd1pcb2Tb2, psA01Bd1pcb2Tb3A[], psA01Bd1pcb2Tb4, psA01Bd1pcb2Tb5, psA02Bd2pcb2Tb1, psA02Bd2pcb2Tb2, psA02Bd2pcb2Tb3A[], psA02Bd2pcb2Tb4, psA02Bd2pcb2Tb5, 
	// psA02Bd2pcb12Ib1, psA02Bd2pcb12Ib2, psA02Bd2pcb12Ib3, psA02Bd2pcb12Ib4, surfA02cp1Bb5A[], surfA01cp2Tb6A[] };

EndIf

// psA02Bd2pcb2BrTb1

slA02Bd2pcbTSb1[] += slA02Bd2pcbSb1;


/// VOLUME
//----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
//// PCB volume

volA02Bd2pcb12V1 = newv; Volume ( volA02Bd2pcb12V1 ) = { slA02Bd2pcbTSb1A[] }; // slA01Bd1pcbTSb1A[],


/// PHYSICAL SURFACE
//----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
//// Physical surfaces - PCB surface

If(numA02cpUx == 0)

	physsurfA02Bd2pcb12Sb1 = newreg; Physical Surface ( physsurfA02Bd2pcb12Sb1 ) = { psA01Bd1pcb2Tb1, psA01Bd1pcb2Tb2, psA01Bd1pcb2Tb4, psA01Bd1pcb2Tb5, psA02Bd2pcb2Tb1, psA02Bd2pcb2Tb2, psA02Bd2pcb2Tb4, psA02Bd2pcb2Tb5, psA02Bd2pcb12Ib1, psA02Bd2pcb12Ib2, psA02Bd2pcb12Ib3, psA02Bd2pcb12Ib4, surfA02cp1Bb5A[], surfA01cp2Tb6A[] };

Else

	physsurfA02Bd2pcb12Sb1 = newreg; Physical Surface ( physsurfA02Bd2pcb12Sb1 ) = { psA01Bd1pcb2Tb1, psA01Bd1pcb2Tb2, psA01Bd1pcb2Tb3A[], psA01Bd1pcb2Tb4, psA01Bd1pcb2Tb5, psA02Bd2pcb2Tb1, psA02Bd2pcb2Tb2, psA02Bd2pcb2Tb3A[], psA02Bd2pcb2Tb4, psA02Bd2pcb2Tb5, psA02Bd2pcb12Ib1,  psA02Bd2pcb12Ib2, psA02Bd2pcb12Ib3, psA02Bd2pcb12Ib4, surfA02cp1Bb5A[], surfA01cp2Tb6A[] };

EndIf

// psA02Bd2pcb2InTb1
// psA02Bd2pcb12Ib1, psA02Bd2pcb12Ib2, psA02Bd2pcb12Ib3, psA02Bd2pcb12Ib4, surfA02cp1Bb5A[]
// surfA02cp1Bb6A[], psA02Bd2pcb2Tb1, psA02Bd2pcb2Tb2, psA02Bd2pcb2Tb3A, psA02Bd2pcb2Tb4, psA02Bd2pcb2Tb5


/// PHYSICAL VOLUME
//----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
//// Physical volume - PCB volume

physvolA02Bd2pcb12V1 = newreg; Physical Volume ( physvolA02Bd2pcb12V1 ) = { volA02Bd2pcb12V1 };


// End