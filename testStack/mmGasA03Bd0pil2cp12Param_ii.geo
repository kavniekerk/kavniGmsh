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
/// PILLAR STRUCTURE
//----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
//// Variable designation: geometrical element, structural reference, interface / description, number


/// CONSTANTS
//----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
//// Variable designation: geometrical element, structural reference, interface / description, number

//----------------------------------------------------------
//// Geometric parameters

cA00MWf = 1.00;																																	// mesh window factor
cA00MM = 1.00;																																	// geometrical scaling

dA00Extx = 5.25;																																// shell x dimension x d, in mm
dA00Exty = 5.25;																																// shell y dimension y d, in mm

//----------------------------------------------------------
//// Current best dimensions for mesh characteristic lengths

lcA03pil1 = 0.0025;																																// characterization of dielectric pillar
lcA03pilEt1 = 0.0025;																															// characterization of dielectric etched pillar

//----------------------------------------------------------
//// Copper anode pillar geometric parameters

cA03PilGeoFx = 1;																																// geometric factor
cA03PilGeoFy = 1;																																// geometric factor

//----------------------------------------------------------
//// Pillar mesh level

dA03Mshlvl = 1.25*cA00MM;																															// mesh level, in mm
// dA03MshWin = 0.05;																															// mesh window, in mm

//----------------------------------------------------------
//// Wire mesh parameters

dA04WrR =  0.02*cA00MM;																															// radius of wire mesh, in microns

//----------------------------------------------------------
//// Pillar parameters

dA03PilR0 = 0.25;																																// pillar radius
dA03PilR1 = 0.025;																																// the etched amount (pillar radius = pilR0 + pilR1), in mm

nA03PilPchxNum = 3.00;																															// pillar pitch x number
nA03PilPchyNum = 1.00;																															// pillar pitch y number

//----------------------------------------------------------
//// Copper anode geometric parameters

/// Copper strip width

dA02cpStrpWth = 0.95*cA00MM;																													// copper anode strip width
dA02cpSpWth1 = 0.05*cA00MM;																														// copper strip x separation width
dA02cpSpWth2 = 0.05*cA00MM;																														// copper strip y separation width

//----------------------------------------------------------
//// Copper anode and strip pillar parameters

/// Pillar detector size co-ordinate

dA03PildetSzxCo = ( dA00Extx - 0*( dA02cpStrpWth + dA02cpSpWth1 ) );																			// pillar detector size x co-ordinate
dA03PildetSzyCo = ( dA00Exty - 0*( dA02cpStrpWth + dA02cpSpWth2 ) );																			// pillar detector size y co-ordinate

/// Pillar & copper anode size co-ordinate

dA03PilCpAnSzxCo1a = ( dA02cpStrpWth/2 + dA02cpSpWth1/2 );																						// pillar copper anode size x 1a co-ordinate
dA03PilCpAnSzyCo1a = ( dA02cpSpWth2/2 );																										// pillar copper anode size y 1a co-ordinate

dA03PilCpAnSzxCo1b = ( dA02cpStrpWth/2 + dA02cpSpWth1/2 );																						// pillar copper anode size x 1b co-ordinate
dA03PilCpAnSzyCo1b = ( dA02cpSpWth2/2 );																										// pillar copper anode size y 1b co-ordinate

dA03PilCpAnSzxCo2a = ( dA02cpStrpWth/2 + dA02cpSpWth1/2 );																						// pillar copper anode size x 2a co-ordinate
dA03PilCpAnSzyCo2a = ( dA00Exty - dA02cpSpWth2/2 );																								// pillar copper anode size y 2a co-ordinate

dA03PilCpAnSzxCo2b = ( dA02cpStrpWth/2 + dA02cpSpWth1/2 );																						// pillar copper anode size x 2b co-ordinate
dA03PilCpAnSzyCo2b = ( dA00Exty - dA02cpSpWth2/2 );																								// pillar copper anode size y 2b co-ordinate

/// Copper strip count x

nA03PilCpStrpCntx = Floor ( ( dA03PildetSzxCo ) / ( dA02cpStrpWth + dA02cpSpWth1 ) );															// pillar strip count x

/// Copper strip length

dA03PilCpStrpLth = ( dA03PilCpAnSzyCo2a - dA03PilCpAnSzyCo1a );																					// pillar copper strip length

/// Copper strip number x

nA03PilCpNumStrpx = Floor ( dA03PildetSzxCo / ( dA02cpStrpWth + dA02cpSpWth1 ) );																// pillar copper strip number

/// Pillar & copper anode co-ordinate

dA03PilcpxCoD1 = ( dA03PildetSzxCo - dA02cpSpWth1 - dA02cpStrpWth - ( ( nA02cpNumStrpx - 1 )*( dA02cpStrpWth + dA02cpSpWth1 ) ) )/2;			// pillar copper x co-ordinate distance 1
dA03PilcpyCoD2 = dA02cpSpWth2/2;																												// pillar copper y co-ordinate distance 2

/// Geometric constant

dA03PilGeoWcxr = dA03PilcpxCoD1*1.0;																											// pillar geometric constant, y - direction of wire in x radial direction
dA03PilGeoWcyd = dA03PilcpyCoD2*0.0;																											// pillar geometric constant, y - direction of wire in the y - direction

/// Pillar & copper anode units

nA03PilNumCpUx = nA03PilCpStrpCntx - 1;																											// number of x pillar copper units
nA03PilNumCpUy = nA03PilCpStrpCntx - 1;																											// number of y pillar copper units

//----------------------------------------------------------
//// Pillar parameters

/// Pillar anode size co-ordinate

dA03PilAnSzxCo1a = ( dA02cpStrpWth/2 );																											// pillar anode size x 1a co-ordinate
dA03PilAnSzyCo1a = ( dA02cpStrpWth/2 + dA02cpSpWth2/2 );																						// pillar anode size y 1a co-ordinate

dA03PilAnSzxCo1b = ( dA02cpStrpWth/2 + dA02cpSpWth1/2 );																						// pillar anode size x 1b co-ordinate
dA03PilAnSzyCo1b = ( dA02cpStrpWth/2 + dA02cpSpWth2/2 );																						// pillar anode size y 1b co-ordinate

dA03PilAnSzxCo2a = ( dA00Extx - dA02cpStrpWth/2 - dA02cpSpWth1/2 );																				// pillar anode size x 2a co-ordinate
dA03PilAnSzyCo2a = ( dA00Exty - dA02cpStrpWth/2 - dA02cpSpWth2/2 );																				// pillar anode size y 2a co-ordinate

/// Pillar pitch co-ordinate

dA03PilPchx = ( nA03PilPchxNum )*( dA02cpStrpWth + dA02cpSpWth1 );																				// pillar pitch x co-ordinate			
dA03PilPchy = ( 1.00/nA03PilPchyNum )*( dA03PilAnSzyCo2a - dA03PilAnSzyCo1a );																	// pillar pitch y co-ordinate

/// Pillar anode size co-ordinate

// dA03PilAnSzxCo2b = ( dA03PilPchx    + dA02cpSpWth1/2 );																						// pillar anode size x 2b co-ordinate
// dA03PilAnSzyCo2b = ( dA02cpStrpLth  + dA02cpSpWth2/2 );																						// pillar anode size y 2b co-ordinate

/// Pillar strip count x

nA03PilStrpCntx = Floor ( ( dA03PilAnSzxCo2a - dA03PilAnSzxCo1a ) / ( dA03PilPchx ) );															// pillar strip count x

/// Pillar copper strip length

dA03PilStrpLth = ( dA03PilAnSzyCo2a - dA03PilAnSzyCo1a ) / ( dA02cpStrpLth );																	// pillar copper strip length

/// Pillar units

numA03PilUx = Floor ( ( dA00Extx ) / ( dA03PilPchx ) );																							// number of x pillar units
numA03PilUy = Floor ( ( dA00Exty ) / ( dA03PilPchy ) );																							// number of y pillar units

/// Pillar factor co-ordinate

cA03PilFx  = 1.00*dA03PilPchx;																													// pillar x factor co-ordinates, multiplication factor in x
cA03PilFy  = 1.00*dA03PilPchy;																													// pillar y factor co-ordinates, multiplication factor in y

/// Pillar constant factor / co-ordinate

dA03PilCfx = 0.00*nA03PilStrpCntx + 1.00*dA03PilAnSzxCo1a + dA02cpxCoD1;																		// pillar x constant / co-ordinates, constant factor in x
dA03PilCfy = 0.00*dA03PilPchy 	+ 1.00*dA03PilAnSzyCo1a;																						// pillar y constant / co-ordinates, constant factor in y

/// Pillar units

If ( ( dA00Extx - dA03PilCfx ) < ( numA03PilUx )*dA03PilPchx )

	numA03PilUx = numA03PilUx - 1;

EndIf

If ( ( dA00Exty - dA03PilCfy ) < ( numA03PilUy )*dA03PilPchy )

	numA03PilUy = numA03PilUy - 1;

EndIf

//----------------------------------------------------------
//// Level parameters

lvlA00cp1_0pil2cp12 = 0;																														// lvl 0cp1 electrode ground bottom copper level, in mm

thA00cp12_0pil2cp12 = 0.10;																														// 0cp12 thickness, in mm

lvlA00cp1_0pil2cp12 = ( lvlA00cp1_0pil2cp12 );																									// lvl 0cp1 electrode ground bottom copper level, in mm
lvlA00cp2_0pil2cp12 = ( lvlA00cp1_0pil2cp12 + thA00cp12_0pil2cp12 );																			// lvl 0pcb1 / 0cp2 electrode ground top copper level / thickness, in mm

thA00pcb12_0pil2cp12 = 0.25;																													// 0pcb12 thickness, in mm
thA01cp12_0pil2cp12 = 0.10;																														// 1cp12 thickness, in mm

lvlA01cp1_0pil2cp12 = ( lvlA00cp2_0pil2cp12 + thA00pcb12_0pil2cp12 );																			// lvl 0pcb2 / 1pcb1 / 1cp1 bottom electrode copper level / thickness, in mm
lvlA01cp2_0pil2cp12 = ( lvlA01cp1_0pil2cp12 + thA01cp12_0pil2cp12 );																			// lvl 1pcb2 / 2pcb1 / 1cp2 top electrode copper level / thickness, in mm

thA02pcb12_0pil2cp12 = 0.25;																													// 2pcb12 thickness, in mm
thA02cp12_0pil2cp12 = 0.10;																														// 2cp12 thickness, in mm

lvlA02cp1_0pil2cp12 = ( lvlA01cp2_0pil2cp12 + thA02pcb12_0pil2cp12 );																			// lvl 2pcb2 / 2cp1 bottom electrode copper level / thickness, in mm
lvlA02cp2_0pil2cp12 = ( lvlA02cp1_0pil2cp12 + thA02cp12_0pil2cp12 );																			// lvl 2cp2 top electrode copper level / thickness, in mm

lvlA03di1 = 	( dA03Mshlvl - 4*dA04WrR );																										// lvl 3di1 top of dielectric pillar
lvlA03diE1 = ( lvlA03di1 - 0.025 );																												// lvl 3diE1 etched level 1 of dielectric pillar
lvlA03diE2 = ( 0.5 * (lvlA03di1 - lvlA03diE1) + lvlA03diE1 );																					// lvl 3diE2 etched level 2 of dielectric pillar


/// POINTS
//----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
//// Pillar points

For m In { 0:numA03PilUx }
 For n In { 0:numA03PilUy }

	/// Top layer
	//----------------------------------------------------------
	//// Center

	// ptcA03Bd0pil1L1~~{m}~{n} = newp; Point ( ptcA03Bd0pil1L1~~{m}~{n} ) = { dA03PilCfx + cA03PilFx*cA03PilGeoFx*m, dA03PilCfy + cA03PilFy*cA03PilGeoFy*n, lvlA01cp1_0pil2cp12, lcA03pil1 };
	// ptcA03Bd0pil1L2~{m}~{n} = newp; Point ( ptcA03Bd0pil1L2~{m}~{n} ) = { dA03PilCfx + cA03PilFx*cA03PilGeoFx*m, dA03PilCfy + cA03PilFy*cA03PilGeoFy*n, lvlA01cp2_0pil2cp12, lcA03pil1 };

	ptcA03Bd0pil2L1~{m}~{n} = newp; Point ( ptcA03Bd0pil2L1~{m}~{n} ) = { dA03PilCfx + cA03PilFx*cA03PilGeoFx*m, dA03PilCfy + cA03PilFy*cA03PilGeoFy*n, lvlA02cp1_0pil2cp12, lcA03pil1 };
	ptcA03Bd0pil2L2~{m}~{n} = newp; Point ( ptcA03Bd0pil2L2~{m}~{n} ) = { dA03PilCfx + cA03PilFx*cA03PilGeoFx*m, dA03PilCfy + cA03PilFy*cA03PilGeoFy*n, lvlA02cp2_0pil2cp12, lcA03pil1 };
	ptcA03Bd0pil3L1~{m}~{n} = newp; Point ( ptcA03Bd0pil3L1~{m}~{n} ) = { dA03PilCfx + cA03PilFx*cA03PilGeoFx*m, dA03PilCfy + cA03PilFy*cA03PilGeoFy*n, lvlA03diE1, lcA03pil1 };
	ptcA03Bd0pil3L2~{m}~{n} = newp; Point ( ptcA03Bd0pil3L2~{m}~{n} ) = { dA03PilCfx + cA03PilFx*cA03PilGeoFx*m, dA03PilCfy + cA03PilFy*cA03PilGeoFy*n, lvlA03di1, lcA03pil1 };

	//----------------------------------------------------------
	//// Top layer

	ptcA03Bd0pil3L2L1~{m}~{n} = newp; Point ( ptcA03Bd0pil3L2L1~{m}~{n} ) = { dA03PilCfx + cA03PilFx*cA03PilGeoFx*m - 1*( dA03PilR0 ), dA03PilCfy + cA03PilFy*cA03PilGeoFy*n, lvlA03di1, lcA03pil1 };
	ptcA03Bd0pil3L2B2~{m}~{n} = newp; Point ( ptcA03Bd0pil3L2B2~{m}~{n} ) = { dA03PilCfx + cA03PilFx*cA03PilGeoFx*m, dA03PilCfy + cA03PilFy*cA03PilGeoFy*n - 1*( dA03PilR0 ), lvlA03di1, lcA03pil1 };
	ptcA03Bd0pil3L2R3~{m}~{n} = newp; Point ( ptcA03Bd0pil3L2R3~{m}~{n} ) = { dA03PilCfx + cA03PilFx*cA03PilGeoFx*m + 1*( dA03PilR0 ), dA03PilCfy + cA03PilFy*cA03PilGeoFy*n, lvlA03di1, lcA03pil1 };
	ptcA03Bd0pil3L2T4~{m}~{n} = newp; Point ( ptcA03Bd0pil3L2T4~{m}~{n} ) = { dA03PilCfx + cA03PilFx*cA03PilGeoFx*m, dA03PilCfy + cA03PilFy*cA03PilGeoFy*n + 1*( dA03PilR0 ), lvlA03di1, lcA03pil1 };

	// Upper etched layer
	//----------------------------------------------------------
	//// Top upper etched layer

	ptcA03Bd0pil3L1L1~{m}~{n} = newp; Point ( ptcA03Bd0pil3L1L1~{m}~{n} ) = { dA03PilCfx + cA03PilFx*cA03PilGeoFx*m - 1*( dA03PilR0 + dA03PilR1 ), dA03PilCfy + cA03PilFy*cA03PilGeoFy*n, lvlA03diE1, lcA03pilEt1 };
	ptcA03Bd0pil3L1B2~{m}~{n} = newp; Point ( ptcA03Bd0pil3L1B2~{m}~{n} ) = { dA03PilCfx + cA03PilFx*cA03PilGeoFx*m, dA03PilCfy + cA03PilFy*cA03PilGeoFy*n - 1*( dA03PilR0 + dA03PilR1 ), lvlA03diE1, lcA03pilEt1 };
	ptcA03Bd0pil3L1R3~{m}~{n} = newp; Point ( ptcA03Bd0pil3L1R3~{m}~{n} ) = { dA03PilCfx + cA03PilFx*cA03PilGeoFx*m + 1*( dA03PilR0 + dA03PilR1 ), dA03PilCfy + cA03PilFy*cA03PilGeoFy*n, lvlA03diE1, lcA03pilEt1 };
	ptcA03Bd0pil3L1T4~{m}~{n} = newp; Point ( ptcA03Bd0pil3L1T4~{m}~{n} ) = { dA03PilCfx + cA03PilFx*cA03PilGeoFx*m, dA03PilCfy + cA03PilFy*cA03PilGeoFy*n + 1*( dA03PilR0 + dA03PilR1 ), lvlA03diE1, lcA03pilEt1 };

	// Top copper strip level (2cp2)
	//----------------------------------------------------------
	//// Middle etched top layer

	ptcA03Bd0pil2L2L1~{m}~{n} = newp; Point ( ptcA03Bd0pil2L2L1~{m}~{n} ) = { dA03PilCfx + cA03PilFx*cA03PilGeoFx*m - 1*( dA03PilR0 + dA03PilR1 ), dA03PilCfy + cA03PilFy*cA03PilGeoFy*n, lvlA02cp2_0pil2cp12, lcA03pilEt1 }; 			// +dA03PilR1
	ptcA03Bd0pil2L2B2~{m}~{n} = newp; Point ( ptcA03Bd0pil2L2B2~{m}~{n} ) = { dA03PilCfx + cA03PilFx*cA03PilGeoFx*m, dA03PilCfy + cA03PilFy*cA03PilGeoFy*n - 1*( dA03PilR0 + dA03PilR1 ), lvlA02cp2_0pil2cp12, lcA03pilEt1 }; 			// +dA03PilR1
	ptcA03Bd0pil2L2R3~{m}~{n} = newp; Point ( ptcA03Bd0pil2L2R3~{m}~{n} ) = { dA03PilCfx + cA03PilFx*cA03PilGeoFx*m + 1*( dA03PilR0 + dA03PilR1 ), dA03PilCfy + cA03PilFy*cA03PilGeoFy*n, lvlA02cp2_0pil2cp12, lcA03pilEt1 }; 			// +dA03PilR1
	ptcA03Bd0pil2L2T4~{m}~{n} = newp; Point ( ptcA03Bd0pil2L2T4~{m}~{n} ) = { dA03PilCfx + cA03PilFx*cA03PilGeoFx*m, dA03PilCfy + cA03PilFy*cA03PilGeoFy*n + 1*( dA03PilR0 + dA03PilR1 ), lvlA02cp2_0pil2cp12, lcA03pilEt1 }; 			// +dA03PilR1

	//----------------------------------------------------------
	//// Middle etched bottom layer

	ptcA03Bd0pil2L1L1~{m}~{n} = newp; Point ( ptcA03Bd0pil2L1L1~{m}~{n} ) = { dA03PilCfx + cA03PilFx*cA03PilGeoFx*m - 1*( dA03PilR0 + dA03PilR1 ), dA03PilCfy + cA03PilFy*cA03PilGeoFy*n, lvlA02cp1_0pil2cp12, lcA03pilEt1 }; 			// +dA03PilR1
	ptcA03Bd0pil2L1B2~{m}~{n} = newp; Point ( ptcA03Bd0pil2L1B2~{m}~{n} ) = { dA03PilCfx + cA03PilFx*cA03PilGeoFx*m, dA03PilCfy + cA03PilFy*cA03PilGeoFy*n - 1*( dA03PilR0 + dA03PilR1 ), lvlA02cp1_0pil2cp12, lcA03pilEt1 }; 			// +dA03PilR1
	ptcA03Bd0pil2L1R3~{m}~{n} = newp; Point ( ptcA03Bd0pil2L1R3~{m}~{n} ) = { dA03PilCfx + cA03PilFx*cA03PilGeoFx*m + 1*( dA03PilR0 + dA03PilR1 ), dA03PilCfy + cA03PilFy*cA03PilGeoFy*n, lvlA02cp1_0pil2cp12, lcA03pilEt1 }; 			// +dA03PilR1
	ptcA03Bd0pil2L1T4~{m}~{n} = newp; Point ( ptcA03Bd0pil2L1T4~{m}~{n} ) = { dA03PilCfx + cA03PilFx*cA03PilGeoFx*m, dA03PilCfy + cA03PilFy*cA03PilGeoFy*n + 1*( dA03PilR0 + dA03PilR1 ), lvlA02cp1_0pil2cp12, lcA03pilEt1 }; 			// +dA03PilR1

	// Bottom copper strip level (1cp2)
	//----------------------------------------------------------
	//// Lower etched top layer

	// ptcA03Bd0pil1L2L1~{m}~{n} = newp; Point ( ptcA03Bd0pil1L2L1~{m}~{n} ) = { dA03PilCfx + cA03PilFx*cA03PilGeoFx*m - 1*( dA03PilR0 + dA03PilR1 ), dA03PilCfy + cA03PilFy*cA03PilGeoFy*n, lvlA01cp2_0pil2cp12, lcA03pilEt1 }; 		// +dA03PilR1
	// ptcA03Bd0pil1L2B2~{m}~{n} = newp; Point ( ptcA03Bd0pil1L2B2~{m}~{n} ) = { dA03PilCfx + cA03PilFx*cA03PilGeoFx*m, dA03PilCfy + cA03PilFy*cA03PilGeoFy*n - 1*( dA03PilR0 + dA03PilR1 ), lvlA01cp2_0pil2cp12, lcA03pilEt1 }; 		// +dA03PilR1
	// ptcA03Bd0pil1L2R3~{m}~{n} = newp; Point ( ptcA03Bd0pil1L2R3~{m}~{n} ) = { dA03PilCfx + cA03PilFx*cA03PilGeoFx*m + 1*( dA03PilR0 + dA03PilR1 ), dA03PilCfy + cA03PilFy*cA03PilGeoFy*n, lvlA01cp2_0pil2cp12, lcA03pilEt1 }; 		// +dA03PilR1
	// ptcA03Bd0pil1L2T4~{m}~{n} = newp; Point ( ptcA03Bd0pil1L2T4~{m}~{n} ) = { dA03PilCfx + cA03PilFx*cA03PilGeoFx*m, dA03PilCfy + cA03PilFy*cA03PilGeoFy*n + 1*( dA03PilR0 + dA03PilR1 ), lvlA01cp2_0pil2cp12, lcA03pilEt1 }; 		// +dA03PilR1

	//----------------------------------------------------------
	//// Lower etched bottom layer

	// ptcA03Bd0pil1L1L1~{m}~{n} = newp; Point ( ptcA03Bd0pil1L1L1~{m}~{n} ) = { dA03PilCfx + cA03PilFx*cA03PilGeoFx*m - 1*( dA03PilR0 + dA03PilR1 ), dA03PilCfy + cA03PilFy*cA03PilGeoFy*n, lvlA01cp1_0pil2cp12, lcA03pilEt1 };		// +dA03PilR1
	// ptcA03Bd0pil1L1B2~{m}~{n} = newp; Point ( ptcA03Bd0pil1L1B2~{m}~{n} ) = { dA03PilCfx + cA03PilFx*cA03PilGeoFx*m, dA03PilCfy + cA03PilFy*cA03PilGeoFy*n - 1*( dA03PilR0 + dA03PilR1 ), lvlA01cp1_0pil2cp12, lcA03pilEt1 };		// +dA03PilR1
	// ptcA03Bd0pil1L1R3~{m}~{n} = newp; Point ( ptcA03Bd0pil1L1R3~{m}~{n} ) = { dA03PilCfx + cA03PilFx*cA03PilGeoFx*m + 1*( dA03PilR0 + dA03PilR1 ), dA03PilCfy + cA03PilFy*cA03PilGeoFy*n, lvlA01cp1_0pil2cp12, lcA03pilEt1 };		// +dA03PilR1
	// ptcA03Bd0pil1L1T4~{m}~{n} = newp; Point ( ptcA03Bd0pil1L1T4~{m}~{n} ) = { dA03PilCfx + cA03PilFx*cA03PilGeoFx*m, dA03PilCfy + cA03PilFy*cA03PilGeoFy*n + 1*( dA03PilR0 + dA03PilR1 ), lvlA01cp1_0pil2cp12, lcA03pilEt1 };		// +dA03PilR1

	//----------------------------------------------------------
	//// Bottom layer

	// ptcA03Bd0pil2L1~{m}~{n} = newp; Point ( ptcA03Bd0pil2L1~{m}~{n} ) = { dA03PilCfx + cA03PilFx*cA03PilGeoFx*m - 1*( dA03PilR0 ), dA03PilCfy + cA03PilFy*cA03PilGeoFy*n, lvlA00cp2_0pil2cp12, lcA03pil1 };
	// ptcA03Bd0pil2B2~{m}~{n} = newp; Point ( ptcA03Bd0pil2B2~{m}~{n} ) = { dA03PilCfx + cA03PilFx*cA03PilGeoFx*m, dA03PilCfy + cA03PilFy*cA03PilGeoFy*n - 1*( dA03PilR0 ), lvlA00cp2_0pil2cp12, lcA03pil1 };
	// ptcA03Bd0pil2R3~{m}~{n} = newp; Point ( ptcA03Bd0pil2R3~{m}~{n} ) = { dA03PilCfx + cA03PilFx*cA03PilGeoFx*m + 1*( dA03PilR0 ), dA03PilCfy + cA03PilFy*cA03PilGeoFy*n, lvlA00cp2_0pil2cp12, lcA03pil1 };
	// ptcA03Bd0pil2T4~{m}~{n} = newp; Point ( ptcA03Bd0pil2T4~{m}~{n} ) = { dA03PilCfx + cA03PilFx*cA03PilGeoFx*m, dA03PilCfy + cA03PilFy*cA03PilGeoFy*n + 1*( dA03PilR0 ), lvlA00cp2_0pil2cp12, lcA03pil1 };


 EndFor
EndFor


/// DIAGRAM
//----------------------------------------------------------
//// Copper anode and strip pillar parameters

//    2a 2b 
//	|	    |	   |	   |
//	|	    |	   |	   |
//	|	    |	   |	   |
//	|	    |	   |	   |
//	|	    |	   |	   |
//	|	    |	   |	   |
//	|	    |	   |	   |
//	|	    |	   |	   |
//	|	    |	   |	   |
// 	|	    |	   |	   |
//    1a 1b 

//----------------------------------------------------------
//// Pillar parameters

//     |            |
//     |            |
//----y1a----------y1b
//     4            3
//
//     1            2
//----x1a----------x1b
//     |            |
//     |            |


// End