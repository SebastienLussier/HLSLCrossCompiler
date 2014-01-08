//
// Generated by Microsoft (R) HLSL Shader Compiler 9.30.9200.20499
//
//
///
// Buffer Definitions: 
//
// cbuffer SharedConsts
// {
//
//   float4x4 World;                    // Offset:    0 Size:    64
//   float4x4 View;                     // Offset:   64 Size:    64
//   float4x4 Projection;               // Offset:  128 Size:    64
//   float4 vOutputColor;               // Offset:  192 Size:    16
//   int ColorFactor;                   // Offset:  208 Size:     4
//
// }
//
//
// Resource Bindings:
//
// Name                                 Type  Format         Dim Slot Elements
// ------------------------------ ---------- ------- ----------- ---- --------
// SharedConsts                      cbuffer      NA          NA    0        1
//
//
//
// Input signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// POSITION                 0   xyzw        0     NONE   float   xyzw
// NORMAL                   0   xyz         1     NONE   float   xyz 
//
//
// Output signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// SV_POSITION              0   xyzw        0      POS   float   xyzw
// TEXCOORD                 0   xyz         1     NONE   float   xyz 
// COLOR                    0   xyzw        2     NONE   float   xyzw
// FACTOR                   0   x           3     NONE     int   x   
// MAX                      0    y          3     NONE     int    y  
// INTCOLOR                 0   xyzw        4     NONE     int   xyzw
//
vs_4_0
dcl_constantbuffer cb0[14], immediateIndexed
dcl_input v0.xyzw
dcl_input v1.xyz
dcl_output_siv o0.xyzw, position
dcl_output o1.xyz
dcl_output o2.xyzw
dcl_output o3.x
dcl_output o3.y
dcl_output o4.xyzw
dcl_temps 2
dp4 r0.x, v0.xyzw, cb0[0].xyzw
dp4 r0.y, v0.xyzw, cb0[1].xyzw
dp4 r0.z, v0.xyzw, cb0[2].xyzw
dp4 r0.w, v0.xyzw, cb0[3].xyzw
dp4 r1.x, r0.xyzw, cb0[4].xyzw
dp4 r1.y, r0.xyzw, cb0[5].xyzw
dp4 r1.z, r0.xyzw, cb0[6].xyzw
dp4 r1.w, r0.xyzw, cb0[7].xyzw
dp4 o0.x, r1.xyzw, cb0[8].xyzw
dp4 o0.y, r1.xyzw, cb0[9].xyzw
dp4 o0.z, r1.xyzw, cb0[10].xyzw
dp4 o0.w, r1.xyzw, cb0[11].xyzw
dp3 o1.x, v1.xyzx, cb0[0].xyzx
dp3 o1.y, v1.xyzx, cb0[1].xyzx
dp3 o1.z, v1.xyzx, cb0[2].xyzx
itof r0.x, cb0[13].x
mul r0.xyzw, r0.xxxx, cb0[12].xyzw
mov o2.xyzw, r0.xyzw
mul r0.xyzw, r0.xyzw, l(10.000000, 10.000000, 10.000000, 10.000000)
round_pi r0.xyzw, r0.xyzw
ftoi r0.xyzw, r0.xyzw
imax o3.y, r0.x, l(10)
ishl o4.xyzw, r0.xyzw, l(1)
mov o3.x, cb0[13].x
ret 
// Approximately 25 instruction slots used