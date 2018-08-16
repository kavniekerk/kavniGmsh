// Include "mmGasA00AssemblyParam.geo";

// Include "mmGasA00CuP0cp12Param.geo";
// Include "mmGasA01CuY1cp12Param.geo";
// Include "mmGasA02CuX2cp12Param.geo";

// Include "mmGasA00Bd0pcb12Param.geo";
// Include "mmGasA01Bd1pcb12Param.geo";
// Include "mmGasA02Bd2pcb12Param.geo";

// Include "mmGasA00Str0Wr12Param.geo";
Include "mmGasA00Cur0Wr12Param.geo";
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

Include "mmGasA00CompLab0Wr12S1x1y1wire.pro";
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
/// WIRE MESH STRUCTURE
//----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
//// Variable designation: geometrical element, structural reference, interface / description, number


/// WIRES
//----------------------------------------------------------
//// First set of wires

//----------------------------------------------------------
//// x - direction

For i In { 1:itA00x }
  For j In { 1:jtA00x }

  k = 1;
  l = 1;


/// POINTS / LINES / SURFACE / SURFACE LOOPS
//----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
//// Geometry

  sfx11a1[] = {};        // Surfaces of all wiremeshs
  llfx11a10[] = {};      // Line loops of bottom wiremesh intersects
  llfx11a11[] = {};      // Line loops of top wiremesh intersects

      p0x11a1~{j}~{i} = newp; Point ( p0x11a1~{j}~{i} ) = { 2*dA04WrHp1 + 4*(i-1)*dA04WrHp1 + 2*k*dA04WrHp1 + dA04WrGeoWcxd, 4*(j-1)*dA04WrHp1 + dA04WrGeoWcyr,           -1*dA04WrR + dA04Mshlvl*cA00MM, lcA04WrGd1 };
      p1x11a1~{j}~{i} = newp; Point ( p1x11a1~{j}~{i} ) = { 2*dA04WrHp1 + 4*(i-1)*dA04WrHp1 + 2*k*dA04WrHp1 + dA04WrGeoWcxd, 4*(j-1)*dA04WrHp1 + dA04WrGeoWcyr,           -2*dA04WrR + dA04Mshlvl*cA00MM, lcA04WrGd1 };
      p2x11a1~{j}~{i} = newp; Point ( p2x11a1~{j}~{i} ) = { 2*dA04WrHp1 + 4*(i-1)*dA04WrHp1 + 2*k*dA04WrHp1 + dA04WrGeoWcxd, 4*(j-1)*dA04WrHp1 + dA04WrR + dA04WrGeoWcyr,   -1*dA04WrR + dA04Mshlvl*cA00MM, lcA04WrGd1 };
      p3x11a1~{j}~{i} = newp; Point ( p3x11a1~{j}~{i} ) = { 2*dA04WrHp1 + 4*(i-1)*dA04WrHp1 + 2*k*dA04WrHp1 + dA04WrGeoWcxd, 4*(j-1)*dA04WrHp1 + dA04WrGeoWcyr,            0 + dA04Mshlvl*cA00MM, lcA04WrGd1 };
      p4x11a1~{j}~{i} = newp; Point ( p4x11a1~{j}~{i} ) = { 2*dA04WrHp1 + 4*(i-1)*dA04WrHp1 + 2*k*dA04WrHp1 + dA04WrGeoWcxd, 4*(j-1)*dA04WrHp1 - dA04WrR + dA04WrGeoWcyr,   -1*dA04WrR + dA04Mshlvl*cA00MM, lcA04WrGd1 };

      l1x11a1~{j}~{i} = newl; Circle ( l1x11a1~{j}~{i} ) = { p1x11a1~{j}~{i}, p0x11a1~{j}~{i}, p2x11a1~{j}~{i} };
      l2x11a1~{j}~{i} = newl; Circle ( l2x11a1~{j}~{i} ) = { p2x11a1~{j}~{i}, p0x11a1~{j}~{i}, p3x11a1~{j}~{i} };
      l3x11a1~{j}~{i} = newl; Circle ( l3x11a1~{j}~{i} ) = { p3x11a1~{j}~{i}, p0x11a1~{j}~{i}, p4x11a1~{j}~{i} };
      l4x11a1~{j}~{i} = newl; Circle ( l4x11a1~{j}~{i} ) = { p4x11a1~{j}~{i}, p0x11a1~{j}~{i}, p1x11a1~{j}~{i} };

      ll1x11a1~{j}~{i} = newll; Line Loop ( ll1x11a1~{j}~{i} ) = { l1x11a1~{j}~{i}, l2x11a1~{j}~{i}, l3x11a1~{j}~{i}, l4x11a1~{j}~{i} };
      s1x11a1~{j}~{i} = news; Plane Surface ( s1x11a1~{j}~{i} ) = { ll1x11a1~{j}~{i} };
      // llfx11a10[] += ll1x11a1~{j}~{i};

      If ( i == itA00x )

          stS1x1[] += s1x11a1~{j}~{i};

      EndIf

        // physFilx11a1[] = {};
        // physFilTopx11a1 = {};
        // physFilBotx11a1 = {};

        // Physical Surface ( Sprintf( "Wrmsh bottom boundary x11a1 (%g in Lyr %g)", j, i ), BNDWrmsh1x11a1 + 1000 * i + j ) = { s1x11a1~{j}~{i} };           // Bottom
        // physFilBotx11a1 += BNDWrmsh1x11a1 + 1000 * i + j;

        vx11a1[] = {};
        sx11a1[] = {};
        tmpx11a1[] = { s1x11a1~{j}~{i} };

          tmpx11a1[] = Extrude { { 0, 0, 0 }, { 0, 1, 0 }, { 2*dA04WrHp1 + 4*(i-1)*dA04WrHp1 + 2*k*dA04WrHp1, 4*(j-1)*dA04WrHp1, dA04WrWinR - dA04WrR }, aA04Alpha } {
            Surface { tmpx11a1[0] }; Recombine;
          };

          vx11a1[] = tmpx11a1[1];
          vtx11a1[] += vx11a1[];

          sx11a1[] = tmpx11a1[{2:5}];
          stx11a1[] += sx11a1[];

        // Physical Surface ( Sprintf( "Wrmsh top boundary x11a1 (%g in Lyr %g)", j, i ), BNDWrmsh2x11a1 + 1100 * i + j ) = { tmpx11a1[0] };                  // Top
        // physFilTopx11a1 += BNDWrmsh2x11a1 + 1100 * i + j;

        // Physical Surface ( Sprintf( "Wrmsh lateral boundary x11a1 (%g in Lyr %g)", j, i ), BNDWrmsh3x11a1 + 1200 * i + j ) = { sx11a1[] };                 // Sides
        // Physical Volume ( Sprintf( "Wrmsh volumex11a1 (%g in Lyr %g)", j, i ), VOLWrmsh1x11a1 + 1000 * i + j ) = { vx11a1[] };
        // physFilx11a1[] += VOLWrmsh1x11a1 + 1000 * i + j;

        // sfx11a1[] += sx11a1[];
        // ll2x11a1~{j}~{i} = newll; Line Loop ( ll2x11a1~{j}~{i} ) = Boundary { Surface { tmpx11a1[0] }; };
        // llfx11a11[] += ll2x11a1~{j}~{i};

  sfx11a2[] = {};        // Surfaces of all wiremeshs
  llfx11a21[] = {};      // Line loops of top wiremesh intersects

        // physFilx11a2[] = {};
        // physFilTopx11a2 = {};
        // physFilBotx11a2 = {};

        // Physical Surface ( Sprintf( "Wrmsh bottom boundary x11a2 (%g in Lyr %g)", j, i ), BNDWrmsh1x11a2 + 1000 * i + j ) = { tmpx11a1[0] };               // Bottom
        // physFilBotx11a2 += BNDWrmsh1x11a2 + 1000 * i + j;

        vx11a2[] = {};
        sx11a2[] = {};
        tmpx11a2[] = { tmpx11a1[0] };

          tmpx11a2[] = Extrude { { 0, 0, 0 }, { 0, -1, 0 }, { 4*(i-1)*dA04WrHp1 + 2*k*dA04WrHp1, 4*(j-1)*dA04WrHp1, -dA04WrWinR + dA04WrR }, aA04Alpha } {
            Surface { tmpx11a2[0] }; Recombine;
          };

          vx11a2[] = tmpx11a2[1];
          vtx11a2[] += vx11a2[];

          sx11a2[] = tmpx11a2[{2:5}];
          stx11a2[] += sx11a2[];

        // Physical Surface ( Sprintf( "Wrmsh top boundary x11a2 (%g in Lyr %g)", j, i ), BNDWrmsh2x11a2 + 1100 * i + j ) = { tmpx11a2[0] };                  // Top
        // physFilTopx11a2 += BNDWrmsh2x11a2 + 1100 * i + j;

        // Physical Surface ( Sprintf( "Wrmsh lateral boundary x11a2 (%g in Lyr %g)", j, i ), BNDWrmsh3x11a2 + 1200 * i + j ) = { sx11a2[] };                 // Sides
        // Physical Volume ( Sprintf( "Wrmsh volumex11a2 (%g in Lyr %g)", j, i ), VOLWrmsh1x11a2 + 1000 * i + j ) = { vx11a2[] };
        // physFilx11a2[] += VOLWrmsh1x11a2 + 1000 * i + j;

        // sfx11a2[] += sx11a2[];
        // ll2x11a2~{j}~{i} = newll; Line Loop ( ll2x11a2~{j}~{i} ) = Boundary { Surface { tmpx11a2[0] }; };
        // llfx11a21[] += ll2x11a2~{j}~{i};
  
  sfx11b1[] = {};        // Surfaces of all wiremeshs
  llfx11b11[] = {};      // Line loops of top wiremesh intersects

        // physFilx11b1[] = {};
        // physFilTopx11b1 = {};
        // physFilBotx11b1 = {};

        // Physical Surface ( Sprintf( "Wrmsh bottom boundary x11b1 (%g in Lyr %g)", j, i ), BNDWrmsh1x11b1 + 1000 * i + j ) = { tmpx11a2[0] };               // Bottom
        // physFilBotx11b1 += BNDWrmsh1x11b1 + 1000 * i + j;

        vx11b1[] = {};
        sx11b1[] = {};
        tmpx11b1[] = { tmpx11a2[0] };

          tmpx11b1[] = Extrude { { 0, 0, 0 }, { 0, -1, 0 }, { 4*(i-1)*dA04WrHp1 + 2*k*dA04WrHp1, 2*dA04WrHp1 + 4*(j-1)*dA04WrHp1, -dA04WrWinR + dA04WrR }, aA04Alpha } {
            Surface { tmpx11b1[0] }; Recombine;
          };

          vx11b1[] = tmpx11b1[1];
          vtx11b1[] += vx11b1[];

          sx11b1[] = tmpx11b1[{2:5}];
          stx11b1[] += sx11b1[];    

        // Physical Surface ( Sprintf( "Wrmsh top boundary x11b1 (%g in Lyr %g)", j, i ), BNDWrmsh2x11b1 + 1100 * i + j ) = { tmpx11b1[0] };                  // Top
        // physFilTopx11b1 += BNDWrmsh2x11b1 + 1100 * i + j;

        // Physical Surface ( Sprintf( "Wrmsh lateral boundary x11b1 (%g in Lyr %g)", j, i ), BNDWrmsh3x11b1 + 1200 * i + j ) = { sx11b1[] };                 // Sides
        // Physical Volume ( Sprintf( "Wrmsh volumex11b1 (%g in Lyr %g)", j, i ), VOLWrmsh1x11b1 + 1000 * i + j ) = { vx11b1[] };
        // physFilx11b1[] += VOLWrmsh1x11b1 + 1000 * i + j;

        // sfx11b1[] += sx11b1[];
        // ll2x11b1~{j}~{i} = newll; Line Loop ( ll2x11b1~{j}~{i} ) = Boundary { Surface { tmpx11b1[0] }; };
        // llfx11b11[] += ll2x11b1~{j}~{i};

  sfx11b2[] = {};        // Surfaces of all wiremeshs
  llfx11b21[] = {};      // Line loops of top wiremesh intersects

        // physFilx11b2[] = {};
        // physFilTopx11b2 = {};
        // physFilBotx11b2 = {};

        // Physical Surface ( Sprintf( "Wrmsh bottom boundary x11b2 (%g in Lyr %g)", j, i ), BNDWrmsh1x11b2 + 1000 * i + j ) = { tmpx11b1[0] };               // Bottom
        // physFilBotx11b2 += BNDWrmsh1x11b2 + 1000 * i + j;

        vx11b2[] = {};
        sx11b2[] = {};
        tmpx11b2[] = { tmpx11b1[0] };

          tmpx11b2[] = Extrude { { 0, 0, 0 }, { 0, 1, 0 }, { -2*dA04WrHp1 + 4*(i-1)*dA04WrHp1 + 2*k*dA04WrHp1, 4*(j-1)*dA04WrHp1, dA04WrWinR - dA04WrR }, aA04Alpha } {
            Surface{ tmpx11b2[0] }; Recombine;
          };

          vx11b2[] = tmpx11b2[1];
          vtx11b2[] += vx11b2[];      

          sx11b2[] = tmpx11b2[{2:5}];
          stx11b2[] += sx11b2[];

        // Physical Surface ( Sprintf( "Wrmsh top boundary x11b2 (%g in Lyr %g)", j, i ), BNDWrmsh2x11b2 + 1100 * i + j ) = { tmpx11b2[0] };                  // Top
        // physFilTopx11b2 += BNDWrmsh2x11b2 + 1100 * i + j;

        // Physical Surface ( Sprintf( "Wrmsh lateral boundary x11b2 (%g in Lyr %g)", j, i ), BNDWrmsh3x11b2 + 1200 * i + j ) = { sx11b2[] };                 // Sides
        // Physical Volume ( Sprintf("Wrmsh volumex11b2 (%g in Lyr %g)", j, i ), VOLWrmsh1x11b2 + 1000 * i + j ) = { vx11b2[] };
        // physFilx11b2[] += VOLWrmsh1x11b2 + 1000 * i + j;

        // sfx11b2[] += sx11b2[];
        // ll2x11b2~{j}~{i} = newll; Line Loop ( ll2x11b2~{j}~{i} ) = Boundary { Surface { tmpx11b2[0] }; };
        // llfx11b21[] += ll2x11b2~{j}~{i};
 
        If ( i == 1 )

            stTmpx1[] += tmpx11b2[0];

        EndIf
  
  k += 1;
  l += 1;

  EndFor
EndFor


/// PHYSICAL SURFACE & VOLUME
//----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
//// Surface

// physsurfA04x1Wr = newreg;
// Physical Surface ( physsurfA04x1Wr ) = { stS1x1[], stx11a1[], stx11a2[], stx11b1[], stx11b2[], stTmpx1[] };

// physvolA04x1Wr = newreg;
// Physical Volume ( physvolA04x1Wr) = { vtx11a1[], vtx11a2[], vtx11b1[], vtx11b2[] };

// slA04WrExtSurfx1[] = newsl; Surface Loop ( slA04WrExtSurfx1 ) = { -stS1x1[], stx11a1[], stx11a2[], stTmpx1[] };
// volA04x1Wr = newv; Volume ( volA04x1Wr ) = slA04WrExtSurfx1[];
// Physical Volume ( physvolA04x1Wr) = volA04x1Wr;

// surfA04x1Wr = newreg; Compound Surface ( surfA04x1Wr ) = slA04WrExtSurfx1[];
// Physical Surface ( physsurfA04x1Wr ) = surfA04x1Wr;
// Physical Surface ( physsurfA04x1Wr ) = { -stS1x1[], stx11a1[], stx11a2[], stTmpx1[] };

// compsurfA04x1Wr = news; Compound Surface ( compsurfA04x1Wr ) = { stS1x1[], stx11a1[], stx11a2[], stTmpx1[] };
// compvolA04x1Wr = newreg; Compound Volume ( compvolA04x1Wr ) = { vtx11a1[], vtx11a2[] };
// Physical Volume ( physvolA04x1Wr) = compvolA04x1Wr;

// Physical Surface ( physsurfA04x1Wr ) = { stS1x1[], sx11a11, sx11a12, sx11a13, sx11a14 , sx11a21, sx11a22, sx11a23, sx11a24, stTmpx1[] };
// stA04x1SurfLoop = newsl; Surface Loop ( stA04x1SurfLoop ) = { stS1x1[], sx11a11, sx11a12, sx11a13, sx11a14 , sx11a21, sx11a22, sx11a23, sx11a24, stTmpx1[] };
// volA04x1Wr = newv; Volume ( volA04x1Wr ) = stA04x1SurfLoop;
// Physical Volume ( physvolA04x1Wr) = volA04x1Wr;


/// WIRES
//----------------------------------------------------------
//// First set of wires

//----------------------------------------------------------
//// y - direction

For i In { 1:itA00y }
  For j In { 1:jtA00y }

  k = 1;
  l = 1;


/// POINTS / LINES / SURFACE / SURFACE LOOPS
//----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
//// Geometry

  sfy12a1[] = {};        // Surfaces of all wiremeshs
  llfy12a10[] = {};      // Line loops of bottom wiremesh intersects
  llfy12a11[] = {};      // Line loops of top wiremesh intersects

      p0y12a1~{j}~{i} = newp; Point ( p0y12a1~{j}~{i} ) = { 4*(j-1)*dA04WrHp1 + dA04WrGeoWcxr, 2*dA04WrHp1 + 4*(i-1)*dA04WrHp1 + 2*k*dA04WrHp1 + dA04WrGeoWcyd,           +1*dA04WrR + dA04Mshlvl*cA00MM, lcA04WrGd1 };
      p1y12a1~{j}~{i} = newp; Point ( p1y12a1~{j}~{i} ) = { 4*(j-1)*dA04WrHp1 + dA04WrGeoWcxr, 2*dA04WrHp1 + 4*(i-1)*dA04WrHp1 + 2*k*dA04WrHp1 + dA04WrGeoWcyd,           +2*dA04WrR + dA04Mshlvl*cA00MM, lcA04WrGd1 };
      p2y12a1~{j}~{i} = newp; Point ( p2y12a1~{j}~{i} ) = { 4*(j-1)*dA04WrHp1 + dA04WrR + dA04WrGeoWcxr, 2*dA04WrHp1 + 4*(i-1)*dA04WrHp1 + 2*k*dA04WrHp1 + dA04WrGeoWcyd,   +1*dA04WrR + dA04Mshlvl*cA00MM, lcA04WrGd1 };
      p3y12a1~{j}~{i} = newp; Point ( p3y12a1~{j}~{i} ) = { 4*(j-1)*dA04WrHp1 + dA04WrGeoWcxr, 2*dA04WrHp1 + 4*(i-1)*dA04WrHp1 + 2*k*dA04WrHp1 + dA04WrGeoWcyd,            0 + dA04Mshlvl*cA00MM, lcA04WrGd1 };
      p4y12a1~{j}~{i} = newp; Point ( p4y12a1~{j}~{i} ) = { 4*(j-1)*dA04WrHp1 - dA04WrR + dA04WrGeoWcxr, 2*dA04WrHp1 + 4*(i-1)*dA04WrHp1 + 2*k*dA04WrHp1 + dA04WrGeoWcyd,   +1*dA04WrR + dA04Mshlvl*cA00MM, lcA04WrGd1 };

      l1y12a1~{j}~{i} = newl; Circle ( l1y12a1~{j}~{i} ) = { p1y12a1~{j}~{i}, p0y12a1~{j}~{i}, p2y12a1~{j}~{i} };
      l2y12a1~{j}~{i} = newl; Circle ( l2y12a1~{j}~{i} ) = { p2y12a1~{j}~{i}, p0y12a1~{j}~{i}, p3y12a1~{j}~{i} };
      l3y12a1~{j}~{i} = newl; Circle ( l3y12a1~{j}~{i} ) = { p3y12a1~{j}~{i}, p0y12a1~{j}~{i}, p4y12a1~{j}~{i} };
      l4y12a1~{j}~{i} = newl; Circle ( l4y12a1~{j}~{i} ) = { p4y12a1~{j}~{i}, p0y12a1~{j}~{i}, p1y12a1~{j}~{i} };

      ll1y12a1~{j}~{i} = newll; Line Loop ( ll1y12a1~{j}~{i} ) = { l1y12a1~{j}~{i}, l2y12a1~{j}~{i}, l3y12a1~{j}~{i}, l4y12a1~{j}~{i} };
      s1y12a1~{j}~{i} = news; Plane Surface ( s1y12a1~{j}~{i} ) = { ll1y12a1~{j}~{i} };
      // llfy12a10[] += ll1y12a1~{j}~{i};

      If ( i == itA00y )

          stS1y1[] += s1y12a1~{j}~{i};

      EndIf

        // physFily12a1 = {};
        // physFilTopy12a1 = {};
        // physFilBoty12a1 = {};

        // Physical Surface ( Sprintf( "Wrmsh bottom boundary y12a1 (%g in Lyr %g)", j, i ), BNDWrmsh1y12a1 + 1000 * i + j ) = { s1y12a1~{j}~{i} };           // Bottom
        // physFilBoty12a1 += BNDWrmsh1y12a1 + 1000 * i + j;

        vy12a1[] = {};
        sy12a1[] = {};
        tmpy12a1[] = { s1y12a1~{j}~{i} };

          tmpy12a1[] = Extrude { { 0, 0, 0 }, { 1, 0, 0 }, { 4*(j-1)*dA04WrHp1, 2*dA04WrHp1 + 4*(i-1)*dA04WrHp1 + 2*k*dA04WrHp1, -dA04WrWinR + dA04WrR }, aA04Alpha } {
            Surface { tmpy12a1[0] };
          };

          vy12a1[] += tmpy12a1[1];
          vty12a1[] += vy12a1[];
          sy12a1[] += tmpy12a1[{2:5}];
          sty12a1[] += sy12a1[];

        // Physical Surface ( Sprintf( "Wrmsh top boundary y12a1 (%g in Lyr %g)", j, i ), BNDWrmsh2y12a1 + 1100 * i + j ) = { tmpy12a1[0] };                  // Top
        // physFilTopy12a1 += BNDWrmsh2y12a1 + 1100 * i + j;

        // Physical Surface ( Sprintf( "Wrmsh lateral boundary y12a1 (%g in Lyr %g)", j, i ), BNDWrmsh3y12a1 + 1200 * i + j ) = { sy12a1[] };                 // Sides
        // Physical Volume ( Sprintf( "Wrmsh volumey12a1 (%g in Lyr %g)", j, i ), VOLWrmsh1y12a1 + 1000 * i + j ) = { vy12a1[] };
        // physFily12a1 += VOLWrmsh1y12a1 + 1000 * i + j;

        // sfy12a1[] += sy12a1[];
        // ll2y12a1~{j}~{i} = newll; Line Loop ( ll2y12a1~{j}~{i} ) = Boundary { Surface { tmpy12a1[0] }; };
        // llfy12a11[] += ll2y12a1~{j}~{i};

  sfy12a2[] = {};        // Surfaces of all wiremeshs
  llfy12a21[] = {};      // Line loops of top wiremesh intersects

        // physFily12a2 = {};
        // physFilTopy12a2 = {};
        // physFilBoty12a2 = {};

        // Physical Surface ( Sprintf( "Wrmsh bottom boundary y12a2 (%g in Lyr %g)", j, i ), BNDWrmsh1y12a2 + 1000 * i + j ) = { tmpy12a1[0] };               // Bottom
        // physFilBoty12a2 += BNDWrmsh1y12a2 + 1000 * i + j;

        vy12a2[] = {};
        sy12a2[] = {};
        tmpy12a2[] = { tmpy12a1[0] };

           tmpy12a2[] = Extrude { { 0, 0, 0 }, { -1, 0, 0 }, { 4*(j-1)*dA04WrHp1, 4*(i-1)*dA04WrHp1 + 2*k*dA04WrHp1, dA04WrWinR - dA04WrR }, aA04Alpha } {
            Surface { tmpy12a2[0] };
          }; 

          vy12a2[] += tmpy12a2[1];
          vty12a2[] += vy12a2[];
          sy12a2[] += tmpy12a2[{2:5}];
          sty12a2[] += sy12a2[];

        // Physical Surface ( Sprintf( "Wrmsh top boundary y12a2 (%g in Lyr %g)", j, i ), BNDWrmsh2y12a2 + 1100 * i + j ) = { tmpy12a2[0] };                  // Top
        // physFilTopy12a2 += BNDWrmsh2y12a2 + 1100 * i + j;

        // Physical Surface ( Sprintf( "Wrmsh lateral boundary y12a2 (%g in Lyr %g)", j, i ), BNDWrmsh3y12a2 + 1200 * i + j ) = { sy12a2[] };                 // Sides
        // Physical Volume ( Sprintf( "Wrmsh volumey12a2 (%g in Lyr %g)", j, i ), VOLWrmsh1y12a2 + 1000 * i + j ) = { vy12a2[] };
        // physFily12a2 += VOLWrmsh1y12a2 + 1000 * i + j;

        // sfy12a2[] += sy12a2[];
        // ll2y12a2~{j}~{i} = newll; Line Loop ( ll2y12a2~{j}~{i} ) = Boundary { Surface { tmpy12a2[0] }; };
        // llfy12a21[] += ll2y12a2~{j}~{i};

  sfy12b1[] = {};        // Surfaces of all wiremeshs
  llfy12b11[] = {};      // Line loops of top wiremesh intersects

        // physFily12b1 = {};
        // physFilTopy12b1 = {};
        // physFilBoty12b1 = {};

        // Physical Surface ( Sprintf( "Wrmsh bottom boundary y12b1 (%g in Lyr %g)", j, i ), BNDWrmsh1y12b1 + 1000 * i + j ) = { tmpy12a2[0] };               // Bottom
        // physFilBoty12b1 += BNDWrmsh1y12b1 + 1000 * i + j;

        vy12b1[] = {};
        sy12b1[] = {};
        tmpy12b1[] = { tmpy12a2[0] };

           tmpy12b1[] = Extrude { { 0, 0, 0 }, { -1, 0, 0 }, { 4*(j-1)*dA04WrHp1, 4*(i-1)*dA04WrHp1 + 2*k*dA04WrHp1, dA04WrWinR - dA04WrR }, aA04Alpha } {
            Surface { tmpy12b1[0] };
          }; 

          vy12b1[] += tmpy12b1[1];
          vty12b1[] += vy12b1[];
          sy12b1[] += tmpy12b1[{2:5}];
          sty12b1[] += sy12b1[];

        // Physical Surface ( Sprintf( "Wrmsh top boundary y12b1 (%g in Lyr %g)", j, i ), BNDWrmsh2y12b1 + 1100 * i + j ) = { tmpy12b1[0] };                  // Top
        // physFilTopy12b1 += BNDWrmsh2y12b1 + 1100 * i + j;

        // Physical Surface ( Sprintf( "Wrmsh lateral boundary y12b1 (%g in Lyr %g)", j, i ), BNDWrmsh3y12b1 + 1200 * i + j ) = { sy12b1[] };                 // Sides
        // Physical Volume ( Sprintf( "Wrmsh volumey12b1 (%g in Lyr %g)", j, i ), VOLWrmsh1y12b1 + 1000 * i + j ) = { vy12b1[] };
        // physFily12b1 += VOLWrmsh1y12b1 + 1000 * i + j;

        // sfy12b1[] += sy12b1[];
        // ll2y12b1~{j}~{i} = newll; Line Loop (ll2y12b1~{j}~{i}) = Boundary { Surface { tmpy12b1[0] }; };
        // llfy12b11[] += ll2y12b1~{j}~{i};

  sfy12b2[] = {};        // Surfaces of all wiremeshs
  llfy12b21[] = {};      // Line loops of top wiremesh intersects

        // physFily12b2 = {};
        // physFilTopy12b2 = {};
        // physFilBoty12b2 = {};

        // Physical Surface ( Sprintf( "Wrmsh bottom boundary y12b2 (%g in Lyr %g)", j, i ), BNDWrmsh1y12b2 + 1000 * i + j ) = { tmpy12b1[0] };               // Bottom
        // physFilBoty12b2 += BNDWrmsh1y12b2 + 1000 * i + j;

        vy12b2[] = {};
        sy12b2[] = {};
        tmpy12b2[] = { tmpy12b1[0] };

           tmpy12b2[] = Extrude { { 0, 0, 0 }, { 1, 0, 0 }, { 4*(j-1)*dA04WrHp1, -2*dA04WrHp1 + 4*(i-1)*dA04WrHp1 + 2*k*dA04WrHp1, -dA04WrWinR + dA04WrR }, aA04Alpha } {
            Surface { tmpy12b2[0] };
          }; 

          vy12b2[] += tmpy12b2[1];
          vty12b2[] += vy12b2[];
          sy12b2[] += tmpy12b2[{2:5}];
          sty12b2[] += sy12b2[];

        // Physical Surface ( Sprintf("Wrmsh top boundary y12b2 (%g in Lyr %g)", j, i ), BNDWrmsh2y12b2 + 1100 * i + j) = { tmpy12b2[0] };                    // Top
        // physFilTopy12b2 += BNDWrmsh2y12b2 + 1100 * i + j;

        // Physical Surface ( Sprintf( "Wrmsh lateral boundary y12b2 (%g in Lyr %g)", j, i ), BNDWrmsh3y12b2 + 1200 * i + j ) = { sy12b2[] };                 // Sides
        // Physical Volume ( Sprintf( "Wrmsh volumey12b2 (%g in Lyr %g)", j, i ), VOLWrmsh1y12b2 + 1000 * i + j ) = { vy12b2[] };
        // physFily12b2 += VOLWrmsh1y12b2 + 1000 * i + j;

        // sfy12b2[] += sy12b2[];
        // ll2y12b2~{j}~{i} = newll; Line Loop (ll2y12b2~{j}~{i}) = Boundary { Surface { tmpy12b2[0] }; };
        // llfy12b21[] += ll2y12b2~{j}~{i};

        If ( i == 1 )

            stTmpy1[] += tmpy12b2[0];
            
        EndIf

  k += 1;
  l += 1;

  EndFor
EndFor


/// PHYSICAL SURFACE & VOLUME
//----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
//// Surface

// physsurfA04y1Wr = newreg;
// Physical Surface ( physsurfA04y1Wr ) = { stS1y1[], sty12a1[], sty12a2[], sty12b1[], sty12b2[], stTmpy1[] };

// physvolA04y1Wr = newreg;
// Physical Volume ( physvolA04y1Wr ) = { vty12a1[], vty12a2[], vty12b1[], vty12b2[] };

// slA04WrExtSurfy1[] = newsl; Surface Loop ( slA04WrExtSurfy1 ) = { -stS1y1[], sty12a1[], sty12a2[], stTmpy1[] };
// volA04y1Wr = newv; Volume ( volA04y1Wr ) = slA04WrExtSurfy1[];
// Physical Volume ( physvolA04y1Wr ) = volA04y1Wr;

// surfA04y1Wr = newreg; Compound Surface ( surfA04y1Wr ) = slA04WrExtSurfy1[];
// Physical Surface ( physsurfA04y1Wr ) = surfA04y1Wr;
// Physical Surface ( physsurfA04y1Wr ) = { -stS1y1[], sty12a1[], sty12a2[], stTmpy1[] };

// compsurfA04y1Wr = news; Compound Surface ( compsurfA04y1Wr ) = { stS1y1[], sty12a1[], sty12a2[], stTmpy1[] };
// compvolA04y1Wr = newreg; Compound Volume ( compvolA04y1Wr ) = { vty12a1[], vty12a2[] };
// Physical Volume ( physvolA04y1Wr ) = compvolA04y1Wr;

// Physical Surface ( physsurfA04y1Wr ) = { stS1y1[], sy12a11, sy12a12, sy12a13, sy12a14 , sy12a21, sy12a22, sy12a23, sy12a24, stTmpy1[] };
// stA04y1SurfLoop = newsl; Surface Loop ( stA04y1SurfLoop ) = { stS1y1[], sy12a11, sy12a12, sy12a13, sy12a14 , sy12a21, sy12a22, sy12a23, sy12a24, stTmpy1[] };
// volA04y1Wr = newv; Volume ( volA04y1Wr ) = stA04y1SurfLoop;
// Physical Volume ( physvolA04y1Wr ) = volA04y1Wr;


/*
/// WIRES
//----------------------------------------------------------
//// Second set of wires

//----------------------------------------------------------
//// x - direction

For i In { 1:itA00x }
  For j In { 1:jtA00x-1 }

  k = 1;
  l = 1;


/// POINTS / LINES / SURFACE / SURFACE LOOPS
//----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
//// Geometry

  sfx21b1[] = {};        // Surfaces of all wiremeshs
  llfx21b10[] = {};      // Line loops of bottom wiremesh intersects
  llfx21b11[] = {};      // Line loops of top wiremesh intersects

      p0x21b1~{j}~{i} = newp; Point ( p0x21b1~{j}~{i} ) = { -2*dA04WrHp1 + 4*(i-1)*dA04WrHp1 + 6*k*dA04WrHp1 + dA04WrGeoWcxd, 4*(j-1)*dA04WrHp1 + 2*l*dA04WrHp1 + dA04WrGeoWcyr,          1*dA04WrR + dA04Mshlvl*cA00MM, lcA04WrGd1 };
      p1x21b1~{j}~{i} = newp; Point ( p1x21b1~{j}~{i} ) = { -2*dA04WrHp1 + 4*(i-1)*dA04WrHp1 + 6*k*dA04WrHp1 + dA04WrGeoWcxd, 4*(j-1)*dA04WrHp1 + 2*l*dA04WrHp1 + dA04WrGeoWcyr,        2*dA04WrR + dA04Mshlvl*cA00MM, lcA04WrGd1 };
      p2x21b1~{j}~{i} = newp; Point ( p2x21b1~{j}~{i} ) = { -2*dA04WrHp1 + 4*(i-1)*dA04WrHp1 + 6*k*dA04WrHp1 + dA04WrGeoWcxd, dA04WrR + 4*(j-1)*dA04WrHp1 + 2*l*dA04WrHp1 + dA04WrGeoWcyr,  1*dA04WrR + dA04Mshlvl*cA00MM, lcA04WrGd1 };
      p3x21b1~{j}~{i} = newp; Point ( p3x21b1~{j}~{i} ) = { -2*dA04WrHp1 + 4*(i-1)*dA04WrHp1 + 6*k*dA04WrHp1 + dA04WrGeoWcxd, 4*(j-1)*dA04WrHp1 + 2*l*dA04WrHp1 + dA04WrGeoWcyr,         0 + dA04Mshlvl*cA00MM, lcA04WrGd1 };
      p4x21b1~{j}~{i} = newp; Point ( p4x21b1~{j}~{i} ) = { -2*dA04WrHp1 + 4*(i-1)*dA04WrHp1 + 6*k*dA04WrHp1 + dA04WrGeoWcxd, -dA04WrR + 4*(j-1)*dA04WrHp1 + 2*l*dA04WrHp1 + dA04WrGeoWcyr,   1*dA04WrR + dA04Mshlvl*cA00MM, lcA04WrGd1 };

      l1x21b1~{j}~{i} = newl; Circle ( l1x21b1~{j}~{i} ) = { p1x21b1~{j}~{i}, p0x21b1~{j}~{i}, p2x21b1~{j}~{i} };
      l2x21b1~{j}~{i} = newl; Circle ( l2x21b1~{j}~{i} ) = { p2x21b1~{j}~{i}, p0x21b1~{j}~{i}, p3x21b1~{j}~{i} };
      l3x21b1~{j}~{i} = newl; Circle ( l3x21b1~{j}~{i} ) = { p3x21b1~{j}~{i}, p0x21b1~{j}~{i}, p4x21b1~{j}~{i} };
      l4x21b1~{j}~{i} = newl; Circle ( l4x21b1~{j}~{i} ) = { p4x21b1~{j}~{i}, p0x21b1~{j}~{i}, p1x21b1~{j}~{i} };

      ll1x21b1~{j}~{i} = newll; Line Loop ( ll1x21b1~{j}~{i} ) = { l1x21b1~{j}~{i}, l2x21b1~{j}~{i}, l3x21b1~{j}~{i}, l4x21b1~{j}~{i} };
      s1x21b1~{j}~{i} = news; Plane Surface ( s1x21b1~{j}~{i} ) = { ll1x21b1~{j}~{i} };
      // llfx21b10[] += ll1x21b1~{j}~{i};

      If ( i == itA00x )

          stS1x2[] += s1x21b1~{j}~{i};

      EndIf
      
        // physFilx21b1 = {};
        // physFilTopx21b1 = {};
        // physFilBotx21b1 = {};

        // Physical Surface ( Sprintf( "Wrmsh bottom boundary x21b1 (%g in Lyr %g)", j, i ), BNDWrmsh1x21b1 + 1000 * i + j ) = { s1x21b1~{j}~{i} };           // Bottom
        // physFilBotx21b1 += BNDWrmsh1x21b1 + 1000 * i + j;

        vx21b1[] = {};
        sx21b1[] = {};
        tmpx21b1[] = { s1x21b1~{j}~{i} };

          tmpx21b1[] = Extrude { { 0, 0, 0 }, { 0, -1, 0 }, { 4*(i-1)*dA04WrHp1 + 4*k*dA04WrHp1, 4*(j-1)*dA04WrHp1 + 2*l*dA04WrHp1, -dA04WrWinR + dA04WrR }, aA04Alpha } {
            Surface { tmpx21b1[0] };
          };

          vx21b1[] += tmpx21b1[1];
          vtx21b1[] += vx21b1[];
          sx21b1[] += tmpx21b1[{2:5}];
          stx21b1[] += sx21b1[];

        // Physical Surface ( Sprintf( "Wrmsh top boundary x21b1 (%g in Lyr %g)", j, i ), BNDWrmsh2x21b1 + 1100 * i + j ) = tmpx21b1[0];                      // Top
        // physFilTopx21b1 += BNDWrmsh2x21b1 + 1100 * i + j;

        // Physical Surface ( Sprintf( "Wrmsh lateral boundary x21b1 (%g in Lyr %g)", j, i ), BNDWrmsh3x21b1 + 1200 * i + j ) = sx21b1[];                     // Sides
        // Physical Volume ( Sprintf( "Wrmsh volumex21b1 (%g in Lyr %g)", j, i ), VOLWrmsh1x21b1 + 1000 * i + j ) = { vx21b1[] };
        // physFilx21b1 += VOLWrmsh1x21b1 + 1000 * i + j;

        // sfx21b1[] += sx21b1[];
        // ll2x21b1~{j}~{i} = newll; Line Loop ( ll2x21b1~{j}~{i} ) = Boundary { Surface { tmpx21b1[0] }; };
        // llfx21b11[] += ll2x21b1~{j}~{i};

  sfx21b2[] = {};        // Surfaces of all wiremeshs
  llfx21b21[] = {};      // Line loops of top wiremesh intersects

        // physFilx21b2 = {};
        // physFilTopx21b2 = {};
        // physFilBotx21b2 = {};

        // Physical Surface ( Sprintf( "Wrmsh bottom boundary x21b2 (%g in Lyr %g)", j, i ), BNDWrmsh1x21b2 + 1000 * i + j ) = { tmpx21b1[0] };               // Bottom
        // physFilBotx21b2 += BNDWrmsh1x21b2 + 1000 * i + j;

        vx21b2[] = {};
        sx21b2[] = {};
        tmpx21b2[] = { tmpx21b1[0] };

           tmpx21b2[] = Extrude { { 0, 0, 0 }, { 0, 1, 0 }, { 4*(i-1)*dA04WrHp1 + 2*k*dA04WrHp1, 4*(j-1)*dA04WrHp1 + l*dA04WrHp1, dA04WrWinR - dA04WrR }, aA04Alpha } {
            Surface { tmpx21b2[0] };
          }; 

          vx21b2[] += tmpx21b2[1];
          vtx21b2[] += vx21b2[];
          sx21b2[] += tmpx21b2[{2:5}];
          stx21b2[] += sx21b2[];

        // Physical Surface ( Sprintf( "Wrmsh top boundary x21b2 (%g in Lyr %g)", j, i ), BNDWrmsh2x21b2 + 1100 * i + j ) = { tmpx21b2[0] };                  // Top
        // physFilTopx21b2 += BNDWrmsh2x21b2 + 1100 * i + j;

        // Physical Surface ( Sprintf( "Wrmsh lateral boundary x21b2 (%g in Lyr %g)", j, i ), BNDWrmsh3x21b2 + 1200 * i + j ) = { sx21b2[] };                 // Sides
        // Physical Volume ( Sprintf( "Wrmsh volumex21b2 (%g in Lyr %g)", j, i ), VOLWrmsh1x21b2 + 1000 * i + j ) = { vx21b2[] };
        // physFilx21b2 += VOLWrmsh1x21b2 + 1000 * i + j;

        // sfx21b2[] += sx21b2[];
        // ll2x21b2~{j}~{i} = newll; Line Loop ( ll2x21b2~{j}~{i} ) = Boundary { Surface { tmpx21b2[0] }; };
        // llfx21b21[] += ll2x21b2~{j}~{i};

  sfx21a1[] = {};        // Surfaces of all wiremeshs
  llfx21a11[] = {};      // Line loops of top wiremesh intersects

        // physFilx21a1 = {};
        // physFilTopx21a1 = {};
        // physFilBotx21a1 = {};

        // Physical Surface ( Sprintf( "Wrmsh bottom boundary x21a1 (%g in Lyr %g)", j, i ), BNDWrmsh1x21a1 + 1000 * i + j ) = { tmpx21b2[0] };               // Bottom
        // physFilBotx21a1 += BNDWrmsh1x21a1 + 1000 * i + j;

        vx21a1[] = {};
        sx21a1[] = {};
        tmpx21a1[] = { tmpx21b2[0] };

           tmpx21a1[] = Extrude { { 0, 0, 0 }, { 0, 1, 0 }, { dA04WrHp1 + 4*(i-1)*dA04WrHp1 + k*dA04WrHp1, dA04WrHp1 + 4*(j-1)*dA04WrHp1 + l*dA04WrHp1, dA04WrWinR - dA04WrR }, aA04Alpha } {
            Surface{ tmpx21a1[0] };
          }; 

          vx21a1[] += tmpx21a1[1];
          vtx21a1[] += vx21a1[];
          sx21a1[] += tmpx21a1[{2:5}];
          stx21a1[] += sx21a1[];

        // Physical Surface ( Sprintf( "Wrmsh top boundary x21a1 (%g in Lyr %g)", j, i ), BNDWrmsh2x21a1 + 1100 * i + j ) = { tmpx21a1[0] };                  // Top
        // physFilTopx21a1 += BNDWrmsh2x21a1 + 1100 * i + j;

        // Physical Surface ( Sprintf( "Wrmsh lateral boundary x21a1 (%g in Lyr %g)", j, i ), BNDWrmsh3x21a1 + 1200 * i + j ) = { sx21a1[] };                 // Sides
        // Physical Volume ( Sprintf( "Wrmsh volumex21a1 (%g in Lyr %g)", j, i ), VOLWrmsh1x21a1 + 1000 * i + j ) = { vx21a1[] };
        // physFilx21a1 += VOLWrmsh1x21a1 + 1000 * i + j;

        // sfx21a1[] += sx21a1[];
        // ll2x21a1~{j}~{i} = newll; Line Loop (ll2x21a1~{j}~{i}) = Boundary { Surface {tmpx21a1[0]}; };
        // llfx21a11[] += ll2x21a1~{j}~{i};

  sfx21a2[] = {};        // Surfaces of all wiremeshs
  llfx21a21[] = {};      // Line loops of top wiremesh intersects

        // physFilx21a2 = {};
        // physFilTopx21a2 = {};
        // physFilBotx21a2 = {};

        // Physical Surface ( Sprintf( "Wrmsh bottom boundary x21a2 (%g in Lyr %g)", j, i ), BNDWrmsh1x21a2 + 1000 * i + j ) = { tmpx21a1[0] };               // Bottom
        // physFilBotx21a2 += BNDWrmsh1x21a2 + 1000 * i + j;

        vx21a2[] = {};
        sx21a2[] = {};
        tmpx21a2[] = {tmpx21a1[0]};

           tmpx21a2[] = Extrude { { 0, 0, 0 }, { 0, -1, 0 }, { -dA04WrHp1 + 4*(i-1)*dA04WrHp1 + k*dA04WrHp1, -dA04WrHp1 + 4*(j-1)*dA04WrHp1 + 2*l*dA04WrHp1, -dA04WrWinR + dA04WrR }, aA04Alpha } {
            Surface { tmpx21a2[0] };
          }; 

          vx21a2[] += tmpx21a2[1];
          vtx21a2[] += vx21a2[];
          sx21a2[] += tmpx21a2[{2:5}];
          stx21a2[] += sx21a2[];

        // Physical Surface ( Sprintf( "Wrmsh top boundary x21a2 (%g in Lyr %g)", j, i ), BNDWrmsh2x21a2 + 1100 * i + j ) = { tmpx21a2[0] };                  // Top
        // physFilTopx21a2 += BNDWrmsh2x21a2 + 1100 * i + j;

        // Physical Surface ( Sprintf( "Wrmsh lateral boundary x21a2 (%g in Lyr %g)", j, i ), BNDWrmsh3x21a2 + 1200 * i + j ) = { sx21a2[] };                 // Sides
        // Physical Volume ( Sprintf( "Wrmsh volumex21a2 (%g in Lyr %g)", j, i ), VOLWrmsh1x21a2 + 1000 * i + j ) = { vx21a2[] };
        // physFilx21a2 += VOLWrmsh1x21a2 + 1000 * i + j;

        // sfx21a2[] += sx21a2[];
        // ll2x21a2~{j}~{i} = newll; Line Loop (ll2x21a2~{j}~{i}) = Boundary { Surface { tmpx21a2[0] }; };
        // llfx21a21[] += ll2x21a2~{j}~{i};

        If ( i == 1 )

           stTmpx2[] += tmpx21a2[0];

        EndIf

  k += 1;
  l += 1;

  EndFor
EndFor


/// PHYSICAL SURFACE & VOLUME
//----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
//// Surface

// physsurfA04x2Wr = newreg;
// Physical Surface ( physsurfA04x2Wr ) = { stS1x2[], stx21b1[], stx21b2[], stx21a1[], stx21a2[], stTmpx2[] };

// physvolA04x2Wr = newreg;
// Physical Volume ( physvolA04x2Wr ) = { vtx21b1[], vtx21b2[], vtx21a1[], vtx21a2[] };

// slA04WrExtSurfx2[] = newsl; Surface Loop ( slA04WrExtSurfx2 ) = { -stS1x2[], stx21b1[], stx21b2[], stTmpx2[] };
// volA04x2Wr = newv; Volume ( volA04x2Wr ) = slA04WrExtSurfx2[];
// Physical Volume ( physvolA04x2Wr ) = volA04x2Wr;

// surfA04x2Wr = newreg; Compound Surface ( surfA04x2Wr ) = slA04WrExtSurfx2[];
// Physical Surface ( physsurfA04x2Wr ) = surfA04x2Wr;
// Physical Surface ( physsurfA04x2Wr ) = { -stS1x2[], stx21b1[], stx21b2[], stTmpx2[] };

// compsurfA04x2Wr = news; Compound Surface ( compsurfA04x2Wr ) = { stS1x2[], stx21b1[], stx21b2[], stTmpx2[] };
// compvolA04x2Wr = newreg; Compound Volume ( compvolA04x2Wr ) = { vtx21b1[], vtx21b2[] };
// Physical Volume ( physvolA04x2Wr ) = compvolA04x2Wr;

// Physical Surface ( physsurfA04x2Wr ) = { stS1x2[], sx21b11, sx21b12, sx21b13, sx21b14 , sx21b21, sx21b22, sx21b23, sx21b24, stTmpx2[] };
// stA04x2SurfLoop = newsl; Surface Loop ( stA04x2SurfLoop ) = { stS1x2[], sx21b11, sx21b12, sx21b13, sx21b14 , sx21b21, sx21b22, sx21b23, sx21b24, stTmpx2[] };
// volA04x2Wr = newv; Volume ( volA04x2Wr ) = stA04x2SurfLoop;
// Physical Volume ( physvolA04x2Wr ) = volA04x2Wr;

//----------------------------------------------------------
//// Feature / Element removal

// Delete{ Point{ p0x21b1~{j}~{i} }; Point{ p1x21b1~{j}~{i} }; Point{ p2x21b1~{j}~{i} }; Point{ p3x21b1~{j}~{i} }; Point{ p4x21b1~{j}~{i} }; Line{ l1x21b1~{j}~{i} }; Line{ l2x21b1~{j}~{i} }; Line{ l3x21b1~{j}~{i} }; 
// Line{ l4x21b1~{j}~{i} }; Surface { s1x21b1~{j}~{i} }; }

// Delete{ Volume{ vx21b1[] }; Volume{ tmpx21b1[1] }; Volume{ vtx21b1[] }; Surface { sx21b1[] }; Surface { tmpx21b1[{2:5}] }; Surface { stx21b1[] }; Surface { sfx21b1[] }; }
// Delete{ Volume{ vx21b2[] }; Volume{ tmpx21b2[1] }; Volume{ vtx21b2[] }; Surface { sx21b2[] }; Surface { tmpx21b2[{2:5}] }; Surface { stx21b2[] }; Surface { sfx21b2[] }; }
*/


/*
/// WIRES
//----------------------------------------------------------
//// Second set of wires

//----------------------------------------------------------
//// y - direction

For i In { 1:itA00y }
  For j In { 1:jtA00y-1 }

  k = 1;
  l = 1;


/// POINTS / LINES / SURFACE / SURFACE LOOPS
//----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
//// Geometry

  sfy22b1[] = {};        // Surfaces of all wiremeshs
  llfy22b10[] = {};      // Line loops of bottom wiremesh intersects
  llfy22b11[] = {};      // Line loops of top wiremesh intersects

      p0y22b1~{j}~{i} = newp; Point ( p0y22b1~{j}~{i} ) = { 4*(j-1)*dA04WrHp1 + 2*l*dA04WrHp1 + dA04WrGeoWcxr, 2*dA04WrHp1 + 4*(i-1)*dA04WrHp1 + 2*k*dA04WrHp1 + dA04WrGeoWcyd,                -1*dA04WrR + dA04Mshlvl*cA00MM, lcA04WrGd1 };
      p1y22b1~{j}~{i} = newp; Point ( p1y22b1~{j}~{i} ) = { 4*(j-1)*dA04WrHp1 + 2*l*dA04WrHp1 + dA04WrGeoWcxr, 2*dA04WrHp1 + 4*(i-1)*dA04WrHp1 + 2*k*dA04WrHp1 + dA04WrGeoWcyd,                -2*dA04WrR + dA04Mshlvl*cA00MM, lcA04WrGd1 };
      p2y22b1~{j}~{i} = newp; Point ( p2y22b1~{j}~{i} ) = { 4*(j-1)*dA04WrHp1 + 2*l*dA04WrHp1 + dA04WrR + dA04WrGeoWcxr, 2*dA04WrHp1 + 4*(i-1)*dA04WrHp1 + 2*k*dA04WrHp1 + dA04WrGeoWcyd,  -1*dA04WrR + dA04Mshlvl*cA00MM, lcA04WrGd1 };
      p3y22b1~{j}~{i} = newp; Point ( p3y22b1~{j}~{i} ) = { 4*(j-1)*dA04WrHp1 + 2*l*dA04WrHp1 + dA04WrGeoWcxr, 2*dA04WrHp1 + 4*(i-1)*dA04WrHp1 + 2*k*dA04WrHp1 + dA04WrGeoWcyd,                 0 + dA04Mshlvl*cA00MM, lcA04WrGd1 };
      p4y22b1~{j}~{i} = newp; Point ( p4y22b1~{j}~{i} ) = { 4*(j-1)*dA04WrHp1 + 2*l*dA04WrHp1 - dA04WrR + dA04WrGeoWcxr, 2*dA04WrHp1 + 4*(i-1)*dA04WrHp1 + 2*k*dA04WrHp1 + dA04WrGeoWcyd,  -1*dA04WrR + dA04Mshlvl*cA00MM, lcA04WrGd1 };

      l1y22b1~{j}~{i} = newl; Circle ( l1y22b1~{j}~{i} ) = { p1y22b1~{j}~{i}, p0y22b1~{j}~{i}, p2y22b1~{j}~{i} };
      l2y22b1~{j}~{i} = newl; Circle ( l2y22b1~{j}~{i} ) = { p2y22b1~{j}~{i}, p0y22b1~{j}~{i}, p3y22b1~{j}~{i} };
      l3y22b1~{j}~{i} = newl; Circle ( l3y22b1~{j}~{i} ) = { p3y22b1~{j}~{i}, p0y22b1~{j}~{i}, p4y22b1~{j}~{i} };
      l4y22b1~{j}~{i} = newl; Circle ( l4y22b1~{j}~{i} ) = { p4y22b1~{j}~{i}, p0y22b1~{j}~{i}, p1y22b1~{j}~{i} };

      ll1y22b1~{j}~{i} = newll; Line Loop ( ll1y22b1~{j}~{i} ) = { l1y22b1~{j}~{i}, l2y22b1~{j}~{i}, l3y22b1~{j}~{i}, l4y22b1~{j}~{i} };
      s1y22b1~{j}~{i} = news; Plane Surface ( s1y22b1~{j}~{i} ) = { ll1y22b1~{j}~{i} };
      llfy22b10[] += ll1y22b1~{j}~{i};

      If ( i == itA00y )

          stS1y2[] += s1y22b1~{j}~{i};

      EndIf

        // physFily22b1 = {};
        // physFilTopy22b1 = {};
        // physFilBoty22b1 = {};

        // Physical Surface ( Sprintf( "Wrmsh bottom boundary y22b1 (%g in Lyr %g)", j, i ), BNDWrmsh1y22b1 + 1000 * i + j ) = { s1y22b1~{j}~{i} };           // Bottom
        // physFilBoty22b1 += BNDWrmsh1y22b1 + 1000 * i + j;

        vy22b1[] = {};
        sy22b1[] = {};
        tmpy22b1[] = { s1y22b1~{j}~{i} };

          tmpy22b1[] = Extrude { { 0, 0, 0 }, { -1, 0, 0 }, { 4*(j-1)*dA04WrHp1 + 2*l*dA04WrHp1, 4*(i-1)*dA04WrHp1 + 4*k*dA04WrHp1, dA04WrWinR - dA04WrR }, aA04Alpha } {
            Surface { tmpy22b1[0] };
          };

          vy22b1[] += tmpy22b1[1];
          vty22b1[] += vy22b1[]; 
          sy22b1[] += tmpy22b1[{2:5}];
          sty22b1[] += sy22b1[];

        // Physical Surface ( Sprintf( "Wrmsh top boundary y22b1 (%g in Lyr %g)", j, i ), BNDWrmsh2y22b1 + 1100 * i + j ) = { tmpy22b1[0] };                  // Top
        // physFilTopy22b1 += BNDWrmsh2y22b1 + 1100 * i + j;

        // Physical Surface ( Sprintf( "Wrmsh lateral boundary y22b1 (%g in Lyr %g)", j, i ), BNDWrmsh3y22b1 + 1200 * i + j ) = { sy22b1[] };                 // Sides
        // Physical Volume ( Sprintf( "Wrmsh volumey22b1 (%g in Lyr %g)", j, i ), VOLWrmsh1y22b1 + 1000 * i + j ) = { vy22b1[] };
        // physFily22b1 += VOLWrmsh1y22b1 + 1000 * i + j;

        // sfy22b1[] += sy22b1[];
        // ll2y22b1~{j}~{i} = newll; Line Loop ( ll2y22b1~{j}~{i} ) = Boundary { Surface { tmpy22b1[0] }; };
        // llfy22b11[] += ll2y22b1~{j}~{i};

  sfy22b2[] = {};        // Surfaces of all wiremeshs
  llfy22b21[] = {};      // Line loops of top wiremesh intersects

        // physFily22b2 = {};
        // physFilTopy22b2 = {};
        // physFilBoty22b2 = {};

        // Physical Surface ( Sprintf( "Wrmsh bottom boundary y22b2 (%g in Lyr %g)", j, i ), BNDWrmsh1y22b2 + 1000 * i + j ) = { tmpy22b1[0] };               // Bottom
        // physFilBoty22b2 += BNDWrmsh1y22b2 + 1000 * i + j;

        vy22b2[] = {};
        sy22b2[] = {};
        tmpy22b2[] = {tmpy22b1[0]};

           tmpy22b2[] = Extrude { { 0, 0, 0 }, { 1, 0, 0 }, { 4*(j-1)*dA04WrHp1 + 2*l*dA04WrHp1, 2*dA04WrHp1 - 4*dA04WrHp1 + 4*(i-1)*dA04WrHp1 + 4*k*dA04WrHp1, -dA04WrWinR + dA04WrR }, aA04Alpha } {
            Surface { tmpy22b2[0] };
          }; 

          vy22b2[] += tmpy22b2[1];
          vty22b2[] += vy22b2[];
          sy22b2[] += tmpy22b2[{2:5}];
          sty22b2[] += sy22b2[];

        // Physical Surface ( Sprintf( "Wrmsh top boundary y22b2 (%g in Lyr %g)", j, i ), BNDWrmsh2y22b2 + 1100 * i + j ) = { tmpy22b2[0] };                  // Top
        // physFilTopy22b2 += BNDWrmsh2y22b2 + 1100 * i + j;

        // Physical Surface ( Sprintf( "Wrmsh lateral boundary y22b2 (%g in Lyr %g)", j, i ), BNDWrmsh3y22b2 + 1200 * i + j ) = { sy22b2[] };                 // Sides
        // Physical Volume ( Sprintf( "Wrmsh volumey22b2 (%g in Lyr %g)", j, i), VOLWrmsh1y22b2 + 1000 * i + j ) = { vy22b2[] };
        // physFily22b2 += VOLWrmsh1y22b2 + 1000 * i + j;

        // sfy22b2[] += sy22b2[];
        // ll2y22b2~{j}~{i} = newll; Line Loop ( ll2y22b2~{j}~{i} ) = Boundary { Surface { tmpy22b2[0] }; };
        // llfy22b21[] += ll2y22b2~{j}~{i};

  sfy22a1[] = {};        // Surfaces of all wiremeshs
  llfy22a11[] = {};      // Line loops of top wiremesh intersects

        // physFily22a1 = {};
        // physFilTopy22a1 = {};
        // physFilBoty22a1 = {};

        // Physical Surface ( Sprintf( "Wrmsh bottom boundary y22a1 (%g in Lyr %g)", j, i ), BNDWrmsh1y22a1 + 1000 * i + j ) = { tmpy22b2[0] };               // Bottom
        // physFilBoty22a1 += BNDWrmsh1y22a1 + 1000 * i + j;

        vy22a1[] = {};
        sy22a1[] = {};
        tmpy22a1[] = {tmpy22b2[0]};

            tmpy22a1[] = Extrude { { 0, 0, 0 }, { 1, 0, 0 }, { 4*(j-1)*dA04WrHp1 + 2*l*dA04WrHp1, dA04WrHp1 + 4*(i-1)*dA04WrHp1 + k*dA04WrHp1, -dA04WrWinR + dA04WrR }, aA04Alpha } {
            Surface { tmpy22a1[0] };
          }; 

          vy22a1[] += tmpy22a1[1];
          vty22a1[] += vy22a1[];
          sy22a1[] += tmpy22a1[{2:5}];
          sty22a1[] += sy22a1[];

        // Physical Surface ( Sprintf( "Wrmsh top boundary y22a1 (%g in Lyr %g)", j, i ), BNDWrmsh2y22a1 + 1100 * i + j ) = { tmpy22a1[0] };                  // Top
        // physFilTopy22a1 += BNDWrmsh2y22a1 + 1100 * i + j;

        // Physical Surface ( Sprintf( "Wrmsh lateral boundary y22a1 (%g in Lyr %g)", j, i ), BNDWrmsh3y22a1 + 1200 * i + j ) = { sy22a1[] };                 // Sides
        // Physical Volume ( Sprintf( "Wrmsh volumey22a1 (%g in Lyr %g)", j, i ), VOLWrmsh1y22a1 + 1000 * i + j ) = { vy22a1[] };
        // physFily22a1 += VOLWrmsh1y22a1 + 1000 * i + j;

        // sfy22a1[] += sy22a1[];
        // ll2y22a1~{j}~{i} = newll; Line Loop ( ll2y22a1~{j}~{i} ) = Boundary { Surface { tmpy22a1[0] }; };
        // llfy22a11[] += ll2y22a1~{j}~{i};

  sfy22a2[] = {};        // Surfaces of all wiremeshs
  llfy22a21[] = {};      // Line loops of top wiremesh intersects

        // physFily22a2 = {};
        // physFilTopy22a2 = {};
        // physFilBoty22a2 = {};

        // Physical Surface ( Sprintf( "Wrmsh bottom boundary y22a2 (%g in Lyr %g)", j, i), BNDWrmsh1y22a2 + 1000 * i + j ) = { tmpy22a1[0] };                // Bottom
        // physFilBoty22a2 += BNDWrmsh1y22a2 + 1000 * i + j;

        vy22a2[] = {};
        sy22a2[] = {};
        tmpy22a2[] = { tmpy22a1[0] };
        
           tmpy22a2[] = Extrude { { 0, 0, 0 }, { -1, 0, 0 }, { 4*(j-1)*dA04WrHp1 + 2*l*dA04WrHp1, -dA04WrHp1 + 4*(i-1)*dA04WrHp1 + k*dA04WrHp1, dA04WrWinR - dA04WrR }, aA04Alpha } { 
            Surface{ tmpy22a2[0] };
          }; 

          vy22a2[] += tmpy22a2[1];
          vty22a2[] += vy22a2[];
          sy22a2[] += tmpy22a2[{2:5}];
          sty22a2[] += sy22a2[];

        // Physical Surface ( Sprintf( "Wrmsh top boundary y22a2 (%g in Lyr %g)", j, i ), BNDWrmsh2y22a2 + 1100 * i + j ) = { tmpy22a2[0] };                  // Top
        // physFilTopy22a2 += BNDWrmsh2y22a2 + 1100 * i + j;

        // Physical Surface ( Sprintf( "Wrmsh lateral boundary y22a2 (%g in Lyr %g)", j, i ), BNDWrmsh3y22a2 + 1200 * i + j ) = { sy22a2[] };                 // Sides
        // Physical Volume ( Sprintf( "Wrmsh volumey22a2 (%g in Lyr %g)", j, i ), VOLWrmsh1y22a2 + 1000 * i + j ) = { vy22a2[] };
        // physFily22a2 += VOLWrmsh1y22a2 + 1000 * i + j;

        // sfy22a2[] += sy22a2[];
        // ll2y22a2~{j}~{i} = newll; Line Loop ( ll2y22a2~{j}~{i} ) = Boundary { Surface { tmpy22a2[0] }; };
        // llfy22a21[] += ll2y22a2~{j}~{i};

        If ( i == 1 )

           stTmpy2[] += tmpy22a2[0];

        EndIf

  EndFor
EndFor


/// PHYSICAL SURFACE & VOLUME
//----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
//// Surface

// physsurfA04y2Wr = newreg;
// Physical Surface ( physsurfA04y2Wr ) = { stS1y2[], sty22b1[], sty22b2[], sty22a1[], sty22a2[], stTmpy2[] };

// physvolA04y2Wr = newreg;
// Physical Volume ( physvolA04y2Wr ) = { vty22b1[], vty22b2[], vty22a1[], vty22a2[] };

// slA04WrExtSurfy2[] = newsl; Surface Loop ( slA04WrExtSurfy2 ) = { -stS1y2[], sty22b1[], sty22b2[], stTmpy2[] };
// volA04y2Wr = newv; Volume ( volA04y2Wr ) = slA04WrExtSurfy2[];
// Physical Volume ( physvolA04y2Wr ) = volA04y2Wr;

// surfA04y2Wr = newreg; Compound Surface ( surfA04y2Wr ) = slA04WrExtSurfy2[];
// Physical Surface ( physsurfA04y2Wr ) = surfA04y2Wr;
// Physical Surface ( physsurfA04y2Wr ) = { -stS1y2[], sty22b1[], sty22b2[], stTmpy2[] };

// compsurfA04y2Wr = news; Compound Surface ( compsurfA04y2Wr ) = { stS1y2[], sty22b1[], sty22b2[], stTmpy2[] };
// compvolA04y2Wr = newreg; Compound Volume ( compvolA04y2Wr ) = { vty22b1[], vty22b2[] };
// Physical Volume ( physvolA04y2Wr ) = compvolA04y2Wr;

// Physical Surface ( physsurfA04y2Wr ) = { stS1y2[], sy22b11, sy22b12, sy22b13, sy22b14 , sy22b21, sy22b22, sy22b23, sy22b24, stTmpy2[] };
// stA04y2SurfLoop = newsl; Surface Loop ( stA04y2SurfLoop ) = { stS1y2[], sy22b11, sy22b12, sy22b13, sy22b14 , sy22b21, sy22b22, sy22b23, sy22b24, stTmpy2[] };
// volA04y2Wr = newv; Volume ( volA04y2Wr ) = stA04y2SurfLoop;
// Physical Volume ( physvolA04y2Wr ) = volA04y2Wr;

//----------------------------------------------------------
//// Feature / Element removal

// Delete { Point{ p0y22b1~{j}~{i} }; Point{ p1y22b1~{j}~{i} }; Point{ p2y22b1~{j}~{i} }; Point{ p3y22b1~{j}~{i} }; Point{ p4y22b1~{j}~{i} }; Line{ l1y22b1~{j}~{i} }; Line{ l2y22b1~{j}~{i} }; Line{ l3y22b1~{j}~{i} }; 
// Line { l4y22b1~{j}~{i} }; Surface { s1y22b1~{j}~{i} }; }

// Delete { Volume{ vy22b1[] }; Volume{ tmpy22b1[1] }; Volume{ vty22b1[] }; Surface { sy22b1[] }; Surface { tmpy22b1[{2:5}] }; Surface { sty22b1[] }; Surface { sfy22b1[] }; }
// Delete { Volume{ vy22b2[] }; Volume{ tmpy22b2[1] }; Volume{ vty22b2[] }; Surface { sy22b2[] }; Surface { tmpy22b2[{2:5}] }; Surface { sty22b2[] }; Surface { sfy22b2[] }; }
*/


/// WIRE VOLUMES
//----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
//// Wire volume

// TotVolA04Wr = newv; Compound Volume ( TotVolA04Wr ) = { volA04x1Wr, volA04x2Wr, volA04y1Wr, volA04y2Wr };
// TotVolA04Wr = newv; Volume ( TotVolA04Wr ) = { TotSlA04WrGasInteriorSurf[] };


/// PHYSICAL SURFACES
//----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
//// Physical Surfaces - wire surface

// physsurfA04Wr = newreg;
// Physical Surface ( physsurfA04Wr ) = { stS1x1[], stx11a1[], stx11a2[], stTmpx1[], stS1x2[], stx21b1[], stx21b2[], stTmpx2[], stS1y1[], sty12a1[], sty12a2[], stTmpy1[], stS1y2[], sty22b1[], sty22b2[], stTmpy2[] };

// physsurfA04Wr = newreg;
// Physical Surface ( physsurfA04Wr ) = { physsurfA04x1Wr, physsurfA04x2Wr, physsurfA04y1Wr, physsurfA04y2Wr };


/// PHYSICAL VOLUMES
//----------------------------------------------------------
//// Physical Volumes - wire volume

// physvolA04Wr = newreg;
// Physical Volume ( physvolA04Wr ) = TotVolA04Wr;


/// End


/// DELETE WIRES
//----------------------------------------------------------
//// First set of wires

//----------------------------------------------------------
//// x - direction

// For i In { 1:(itA00x) }
  // For j In { 1:(jtA00x) }

  // Delete { Point { p0x11a1~{j}~{i} }; Point { p1x11a1~{j}~{i} }; Point { p2x11a1~{j}~{i} }; Point { p3x11a1~{j}~{i} }; Point { p4x11a1~{j}~{i} }; }
  // Delete { Line { l1x11a1~{j}~{i} }; Line { l2x11a1~{j}~{i} }; Line { l3x11a1~{j}~{i} }; Line { l4x11a1~{j}~{i} }; }
  // Delete { Surface { s1x11a1~{j}~{i} }; }

  // EndFor
// EndFor

// For m In { 0:0 }

        // Delete { Volume { vx11a1[m] }; }
        // Delete { Volume { vx11a2[m] }; }
        // Delete { Volume { vx11b1[m] }; }
        // Delete { Volume { vx11b2[m] }; }

// EndFor

// For n In { 0:3 }

        // Delete { Surface { sx11a1[n] }; }
        // Delete { Surface { sx11a2[n] }; }
        // Delete { Surface { sx11b1[n] }; }
        // Delete { Surface { sx11b2[n] }; } 
              
// EndFor

// For o In { 0:5 }

        // If ( o == 1 )

          // Delete { Volume { tmpx11a1[o] }; }
          // Delete { Volume { tmpx11a2[o] }; }
          // Delete { Volume { tmpx11b1[o] }; }
          // Delete { Volume { tmpx11b2[o] }; }

        // Else

          // Delete { Surface { tmpx11a1[o] }; }
          // Delete { Surface { tmpx11a2[o] }; }
          // Delete { Surface { tmpx11b1[o] }; }
          // Delete { Surface { tmpx11b2[o] }; }

        // EndIf

// EndFor


/// End