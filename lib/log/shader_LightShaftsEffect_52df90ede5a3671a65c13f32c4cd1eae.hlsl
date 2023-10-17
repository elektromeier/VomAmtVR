/**************************
***** Compiler Parameters *****
***************************
@P EffectName: LightShaftsEffect
@P   - LightShaftsEffect.SampleCount: 64
@P LightShaftsEffect.LightGroup: mixin LightDirectionalGroup<1>, ShadowMapReceiverDirectional<4,1,true,true,false,false>, ShadowMapFilterPcf<PerView.Lighting,7>
***************************
****  ConstantBuffers  ****
***************************
cbuffer PerDraw [Size: 480]
@C    MatrixTransform_id73 => SpriteBase.MatrixTransform
@C    World_id87 => Transformation.World
@C    WorldInverse_id88 => Transformation.WorldInverse
@C    WorldInverseTranspose_id89 => Transformation.WorldInverseTranspose
@C    WorldView_id90 => Transformation.WorldView
@C    WorldViewInverse_id91 => Transformation.WorldViewInverse
@C    WorldViewProjection_id92 => Transformation.WorldViewProjection
@C    WorldScale_id93 => Transformation.WorldScale
@C    EyeMS_id94 => Transformation.EyeMS
cbuffer PerFrame [Size: 16]
@C    DensityFactor_id116 => LightShaftsShader.DensityFactor
cbuffer PerView [Size: 1408]
@C    NearClipPlane_id74 => Camera.NearClipPlane
@C    FarClipPlane_id75 => Camera.FarClipPlane
@C    ZProjection_id76 => Camera.ZProjection
@C    ViewSize_id77 => Camera.ViewSize
@C    AspectRatio_id78 => Camera.AspectRatio
@C    View_id80 => Transformation.View
@C    ViewInverse_id81 => Transformation.ViewInverse
@C    Projection_id82 => Transformation.Projection
@C    ProjectionInverse_id83 => Transformation.ProjectionInverse
@C    ViewProjection_id84 => Transformation.ViewProjection
@C    ProjScreenRay_id85 => Transformation.ProjScreenRay
@C    Eye_id86 => Transformation.Eye
@C    _padding_PerView_Default => _padding_PerView_Default
@C    LightCount_id142 => DirectLightGroupPerView.LightCount.lightGroup
@C    Lights_id144 => LightDirectionalGroup.Lights.lightGroup
@C    ShadowMapTextureSize_id152 => ShadowMap.TextureSize.lightGroup
@C    ShadowMapTextureTexelSize_id153 => ShadowMap.TextureTexelSize.lightGroup
@C    WorldToShadowCascadeUV_id157 => ShadowMapReceiverBase.WorldToShadowCascadeUV.lightGroup
@C    InverseWorldToShadowCascadeUV_id158 => ShadowMapReceiverBase.InverseWorldToShadowCascadeUV.lightGroup
@C    ViewMatrices_id159 => ShadowMapReceiverBase.ViewMatrices.lightGroup
@C    DepthRanges_id160 => ShadowMapReceiverBase.DepthRanges.lightGroup
@C    DepthBiases_id161 => ShadowMapReceiverBase.DepthBiases.lightGroup
@C    OffsetScales_id162 => ShadowMapReceiverBase.OffsetScales.lightGroup
@C    CascadeDepthSplits_id169 => ShadowMapReceiverDirectional.CascadeDepthSplits.lightGroup
@C    _padding_PerView_Lighting => _padding_PerView_Lighting
***************************
******  Resources    ******
***************************
@R    DepthStencil_id79 => DepthBase.DepthStencil [Stage: None, Slot: (-1--1)]
@R    DepthStencil_id79 => DepthBase.DepthStencil [Stage: None, Slot: (-1--1)]
@R    ShadowMapTexture_id151 => ShadowMap.ShadowMapTexture.lightGroup [Stage: None, Slot: (-1--1)]
@R    ShadowMapTexture_id151 => ShadowMap.ShadowMapTexture.lightGroup [Stage: None, Slot: (-1--1)]
@R    PerDraw => PerDraw [Stage: Vertex, Slot: (0-0)]
@R    PointSampler_id43 => Texturing.PointSampler [Stage: Pixel, Slot: (0-0)]
@R    LinearClampCompareLessEqualSampler_id46 => Texturing.LinearClampCompareLessEqualSampler [Stage: Pixel, Slot: (1-1)]
@R    Texture0_id14 => Texturing.Texture0 [Stage: Pixel, Slot: (0-0)]
@R    Texture1_id16 => Texturing.Texture1 [Stage: Pixel, Slot: (1-1)]
@R    DepthStencil_id79 => DepthBase.DepthStencil [Stage: Pixel, Slot: (2-2)]
@R    ShadowMapTexture_id151 => ShadowMap.ShadowMapTexture.lightGroup [Stage: Pixel, Slot: (3-3)]
@R    PerFrame => PerFrame [Stage: Pixel, Slot: (0-0)]
@R    PerView => PerView [Stage: Pixel, Slot: (1-1)]
***************************
*****     Sources     *****
***************************
@S    LightShaftsShader => 3a3d2730af062ce6f6934598b0d07a73
@S    ImageEffectShader => 9b7cefba2dd674808bc791525995b495
@S    SpriteBase => 67b12f03dd9d34e76b6fcfb517afba8c
@S    ShaderBase => 01e372056ff6c06edab8e988414a8f75
@S    ShaderBaseStream => 91c0ea8aae0a45ca00578a4084fa3607
@S    Texturing => 6605f68230266eff2bc8b4e8102ede6b
@S    LightStream => 56c38b50a16fcb778c6eb6de86c307b5
@S    NormalStream => 901c352015317e9dff7f9aef777dc0c7
@S    DirectLightGroup => f340deae83183fca86789915a8f743c4
@S    ShadowGroup => 05578eeca4469db17e4a68e127e25a9f
@S    ShadowStream => 1adfec0b15bc9bf4d56e6be9b378a587
@S    TextureProjectionGroup => 48db91a31cbf2a9150d13547051adb85
@S    PositionStream4 => 978c413387a2cb385e61d6d096be6d21
@S    MaterialPixelStream => ba54d20041c3b54e07f20babb85f60bb
@S    MaterialStream => 5add3babbb46e617235ca05953485ed8
@S    IStreamInitializer => 092b60c9fe32ce985421fcfe20a11072
@S    PostEffectBoundingRay => 570cc38c69a127537a85d8c5e2376a2b
@S    DepthBase => 7a1f570f20bc1567e96828f78622fddb
@S    Camera => 68de88612bfb3b0a92e9082b82b993a9
@S    Transformation => 6c40fce14b58a620257103f7d0f4c093
@S    Math => 395aa210901b9e0783594d1b4fb0a441
@S    ComputeColorOut => 60638c2989a4b680d39df1f0a52b79cb
@S    ComputeColor => 4f34177c1ace328c0f5ae9b3e880dac2
@S    ComputeColorIn => 25f6914399f3be5bc8e3f0c0eaf9b7f1
@S    LightDirectionalGroup => ac53667662784343d421b00fac059f9a
@S    DirectLightGroupPerView => 8e17a5b08d2245289bb7a2dfb37a8dd8
@S    LightDirectional => a342c290a036eb9fbb9d93bdd7fa32de
@S    ShadowMapReceiverDirectional => 0bf9ec91d0d63d48d1ba26668b1f66ec
@S    ShadowMapReceiverBase => 378009624fef0fa663eadb2f18a1e67c
@S    MaterialPixelShadingStream => 9d583be145776e49c5a8377a978b0658
@S    ShadowMapGroup => 7cc147d3462fc743e45887d78f3ee6c4
@S    ShadowMapCommon => a636008e844a6b4cc640e0310830794e
@S    ShadowMapFilterBase => 92c4ea2f9b3a7a114f7d9d7556b97ea5
@S    ShadowMapFilterPcf => 101a5eea4b5aec04d9bbfd95eee01fbc
***************************
*****     Stages      *****
***************************
@G    Vertex => 79eb7ff071584feaa45b858a38e87b6a
//
// Generated by Microsoft (R) HLSL Shader Compiler 10.1
//
//
// Buffer Definitions: 
//
// cbuffer PerDraw
// {
//
//   float4x4 MatrixTransform_id73;     // Offset:    0 Size:    64
//   float4x4 World_id87;               // Offset:   64 Size:    64 [unused]
//   float4x4 WorldInverse_id88;        // Offset:  128 Size:    64 [unused]
//   float4x4 WorldInverseTranspose_id89;// Offset:  192 Size:    64 [unused]
//   float4x4 WorldView_id90;           // Offset:  256 Size:    64 [unused]
//   float4x4 WorldViewInverse_id91;    // Offset:  320 Size:    64 [unused]
//   float4x4 WorldViewProjection_id92; // Offset:  384 Size:    64 [unused]
//   float3 WorldScale_id93;            // Offset:  448 Size:    12 [unused]
//   float4 EyeMS_id94;                 // Offset:  464 Size:    16 [unused]
//
// }
//
//
// Resource Bindings:
//
// Name                                 Type  Format         Dim      HLSL Bind  Count
// ------------------------------ ---------- ------- ----------- -------------- ------
// PerDraw                           cbuffer      NA          NA            cb0      1 
//
//
//
// Input signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// POSITION                 0   xyzw        0     NONE   float   xyzw
// TEXCOORD                 0   xy          1     NONE   float   xy  
//
//
// Output signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// SV_Position              0   xyzw        0      POS   float   xyzw
// TEXCOORD                 0   xy          1     NONE   float   xy  
//
vs_5_0
dcl_globalFlags refactoringAllowed
dcl_constantbuffer CB0[4], immediateIndexed
dcl_input v0.xyzw
dcl_input v1.xy
dcl_output_siv o0.xyzw, position
dcl_output o1.xy
//
// Initial variable locations:
//   v0.x <- __input__.Position_id72.x; v0.y <- __input__.Position_id72.y; v0.z <- __input__.Position_id72.z; v0.w <- __input__.Position_id72.w; 
//   v1.x <- __input__.TexCoord_id62.x; v1.y <- __input__.TexCoord_id62.y; 
//   o1.x <- <VSMain return value>.TexCoord_id62.x; o1.y <- <VSMain return value>.TexCoord_id62.y; 
//   o0.x <- <VSMain return value>.ShadingPosition_id0.x; o0.y <- <VSMain return value>.ShadingPosition_id0.y; o0.z <- <VSMain return value>.ShadingPosition_id0.z; o0.w <- <VSMain return value>.ShadingPosition_id0.w
//
#line 548 "C:\Users\elektromeier\Desktop\VomAmt\VomAmtVR\lib\log\shader_LightShaftsEffect_52df90ede5a3671a65c13f32c4cd1eae.hlsl"
dp4 o0.x, v0.xyzw, cb0[0].xyzw
dp4 o0.y, v0.xyzw, cb0[1].xyzw
dp4 o0.z, v0.xyzw, cb0[2].xyzw
dp4 o0.w, v0.xyzw, cb0[3].xyzw

#line 552
mov o1.xy, v1.xyxx
ret 
// Approximately 6 instruction slots used
@G    Pixel => 23dbef372d58ff3ecb04ce0dfb23eaba
//
// Generated by Microsoft (R) HLSL Shader Compiler 10.1
//
//
// Buffer Definitions: 
//
// cbuffer PerFrame
// {
//
//   float DensityFactor_id116;         // Offset:    0 Size:     4
//
// }
//
// cbuffer PerView
// {
//
//   float NearClipPlane_id74;          // Offset:    0 Size:     4 [unused]
//      = 0x3f800000 
//   float FarClipPlane_id75;           // Offset:    4 Size:     4 [unused]
//      = 0x42c80000 
//   float2 ZProjection_id76;           // Offset:    8 Size:     8
//   float2 ViewSize_id77;              // Offset:   16 Size:     8 [unused]
//   float AspectRatio_id78;            // Offset:   24 Size:     4 [unused]
//   float4x4 View_id80;                // Offset:   32 Size:    64 [unused]
//   float4x4 ViewInverse_id81;         // Offset:   96 Size:    64
//   float4x4 Projection_id82;          // Offset:  160 Size:    64 [unused]
//   float4x4 ProjectionInverse_id83;   // Offset:  224 Size:    64
//   float4x4 ViewProjection_id84;      // Offset:  288 Size:    64 [unused]
//   float2 ProjScreenRay_id85;         // Offset:  352 Size:     8 [unused]
//   float4 Eye_id86;                   // Offset:  368 Size:    16
//   float4 _padding_PerView_Default;   // Offset:  384 Size:    16 [unused]
//   int LightCount_id142;              // Offset:  400 Size:     4 [unused]
//   
//   struct DirectionalLightData
//   {
//       
//       float3 DirectionWS;            // Offset:  416
//       float3 Color;                  // Offset:  432
//
//   } Lights_id144;                    // Offset:  416 Size:    28 [unused]
//   float2 ShadowMapTextureSize_id152; // Offset:  448 Size:     8
//   float2 ShadowMapTextureTexelSize_id153;// Offset:  456 Size:     8
//   float4x4 WorldToShadowCascadeUV_id157[4];// Offset:  464 Size:   256
//   float4x4 InverseWorldToShadowCascadeUV_id158[4];// Offset:  720 Size:   256 [unused]
//   float4x4 ViewMatrices_id159[4];    // Offset:  976 Size:   256 [unused]
//   float2 DepthRanges_id160[4];       // Offset: 1232 Size:    56 [unused]
//   float DepthBiases_id161;           // Offset: 1296 Size:     4
//   float OffsetScales_id162;          // Offset: 1312 Size:     4 [unused]
//   float CascadeDepthSplits_id169[4]; // Offset: 1328 Size:    52
//   float4 _padding_PerView_Lighting;  // Offset: 1392 Size:    16 [unused]
//
// }
//
//
// Resource Bindings:
//
// Name                                 Type  Format         Dim      HLSL Bind  Count
// ------------------------------ ---------- ------- ----------- -------------- ------
// PointSampler_id43                 sampler      NA          NA             s0      1 
// LinearClampCompareLessEqualSampler_id46  sampler_c      NA          NA             s1      1 
// Texture0_id14                     texture  float4          2d             t0      1 
// Texture1_id16                     texture  float4          2d             t1      1 
// DepthStencil_id79                 texture  float4          2d             t2      1 
// ShadowMapTexture_id151            texture  float4          2d             t3      1 
// PerFrame                          cbuffer      NA          NA            cb0      1 
// PerView                           cbuffer      NA          NA            cb1      1 
//
//
//
// Input signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// SV_Position              0   xyzw        0      POS   float       
// TEXCOORD                 0   xy          1     NONE   float   xy  
//
//
// Output signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// SV_Target                0   xyzw        0   TARGET   float   xyzw
//
ps_5_0
dcl_globalFlags refactoringAllowed
dcl_constantbuffer CB0[1], immediateIndexed
dcl_constantbuffer CB1[87], dynamicIndexed
dcl_sampler s0, mode_default
dcl_sampler s1, mode_comparison
dcl_resource_texture2d (float,float,float,float) t0
dcl_resource_texture2d (float,float,float,float) t1
dcl_resource_texture2d (float,float,float,float) t2
dcl_resource_texture2d (float,float,float,float) t3
dcl_input_ps linear v1.xy
dcl_output o0.xyzw
dcl_temps 19
//
// Initial variable locations:
//   v0.x <- __input__.ShadingPosition_id0.x; v0.y <- __input__.ShadingPosition_id0.y; v0.z <- __input__.ShadingPosition_id0.z; v0.w <- __input__.ShadingPosition_id0.w; 
//   v1.x <- __input__.TexCoord_id62.x; v1.y <- __input__.TexCoord_id62.y; 
//   o0.x <- <PSMain return value>.ColorTarget_id2.x; o0.y <- <PSMain return value>.ColorTarget_id2.y; o0.z <- <PSMain return value>.ColorTarget_id2.z; o0.w <- <PSMain return value>.ColorTarget_id2.w
//
#line 496 "C:\Users\elektromeier\Desktop\VomAmt\VomAmtVR\lib\log\shader_LightShaftsEffect_52df90ede5a3671a65c13f32c4cd1eae.hlsl"
sample_indexable(texture2d)(float,float,float,float) r0.xy, v1.xyxx, t0.xyzw, s0  // r0.x <- minmax.x; r0.y <- minmax.y

#line 500
lt r0.z, r0.y, l(1.000000)
if_nz r0.z

#line 497
  sample_indexable(texture2d)(float,float,float,float) r0.z, l(0.000000, 0.000000, 0.000000, 0.000000), t1.yzxw, s0  // r0.z <- backsideMin

#line 498
  lt r0.z, r0.z, l(1.000000)

#line 499
  movc r0.x, r0.z, l(0), r0.x

#line 482
  sample_l_indexable(texture2d)(float,float,float,float) r0.z, v1.xyxx, t2.yzxw, s0, l(0.000000)  // r0.z <- <GetZProjDepthFromUV_id4 return value>

#line 504
  min r1.z, r0.z, r0.y  // r1.z <- maxZ

#line 478
  add r0.x, r0.x, -cb1[0].z
  add r0.y, r1.z, -cb1[0].z
  div r0.xy, cb1[0].wwww, r0.xyxx  // r0.y <- <ComputeDepthFromZProj_id6 return value>

#line 520
  lt r0.z, r0.x, r0.y
  if_nz r0.z

#line 508
    mad r1.xy, v1.xyxx, l(2.000000, -2.000000, 0.000000, 0.000000), l(-1.000000, 1.000000, 0.000000, 0.000000)
    mov r1.w, l(1.000000)
    dp4 r2.x, r1.xyzw, cb1[14].xyzw  // r2.x <- positionVS.x
    dp4 r2.y, r1.xyzw, cb1[15].xyzw  // r2.y <- positionVS.y
    dp4 r2.z, r1.xyzw, cb1[16].xyzw  // r2.z <- positionVS.z
    dp4 r2.w, r1.xyzw, cb1[17].xyzw  // r2.w <- positionVS.w

#line 509
    div r1.xyzw, r2.xyzw, r2.wwww  // r1.x <- positionVS.x; r1.y <- positionVS.y; r1.z <- positionVS.z; r1.w <- positionVS.w

#line 510
    dp4 r2.x, r1.xyzw, cb1[6].xyzw  // r2.x <- endingPosition.x
    dp4 r2.y, r1.xyzw, cb1[7].xyzw  // r2.y <- endingPosition.y
    dp4 r2.z, r1.xyzw, cb1[8].xyzw  // r2.z <- endingPosition.z

#line 511
    add r3.xyz, r2.xyzx, -cb1[23].xyzx  // r3.x <- endingPositionDelta.x; r3.y <- endingPositionDelta.y; r3.z <- endingPositionDelta.z

#line 513
    dp3 r0.z, r3.xyzx, r3.xyzx
    rsq r0.w, r0.z
    mul r3.xyz, r0.wwww, r3.xyzx  // r3.x <- directionWS.x; r3.y <- directionWS.y; r3.z <- directionWS.z

#line 514
    sqrt r0.z, r0.z
    div r0.z, r0.z, r0.y  // r0.z <- depthSlope

#line 515
    mul r3.xyz, r0.zzzz, r3.xyzx

#line 516
    add r0.y, -r0.x, r0.y  // r0.y <- stepRange

#line 522
    mul r0.z, r0.y, l(0.015625)  // r0.z <- stepSize

#line 458
    dp3 r0.w, r1.zxyz, l(313.000000, 1039.000000, 638359.000000, 0.000000)
    ftoi r0.w, r0.w  // r0.w <- <HashXYZ_id11 return value>

#line 453
    ishl r1.x, r0.w, l(13)
    xor r0.w, r0.w, r1.x  // r0.w <- n

#line 454
    imul null, r1.x, r0.w, r0.w
    imad r1.x, r1.x, l(0x00003d73), l(0x000c0ae5)
    imad r0.w, r0.w, r1.x, l(0x5208dd0d)
    and r0.w, r0.w, l(0x7fffffff)
    utof r0.w, r0.w
    mul r0.w, r0.z, r0.w

#line 523
    mad r0.w, r0.w, l(0.000000), -r0.y
    mad r1.xyz, r0.wwww, r3.xyzx, r2.xyzx  // r1.x <- positionWS.x; r1.y <- positionWS.y; r1.z <- positionWS.z

#line 470
    mul r0.w, r0.z, cb0[0].x

#line 380
    mov r2.w, l(1.000000)

#line 526
    mov r2.xyz, r1.xyzx  // r2.x <- positionWS.x; r2.y <- positionWS.y; r2.z <- positionWS.z
    mov r1.w, r0.x  // r1.w <- streams.DepthVS_id97
    mov r3.w, l(0)  // r3.w <- lightResult.x
    mov r4.x, l(0)  // r4.x <- i
    loop 
      ige r4.y, r4.x, l(64)
      breakc_nz r4.y

#line 399
      lt r4.y, cb1[83].x, r1.w

#line 402
      and r4.y, r4.y, l(1)  // r4.y <- cascadeIndex

#line 399
      lt r4.z, cb1[84].x, r1.w

#line 402
      movc r4.y, r4.z, l(2), r4.y

#line 399
      lt r4.z, cb1[85].x, r1.w

#line 402
      movc r4.y, r4.z, l(3), r4.y

#line 380
      ishl r4.w, r4.y, l(2)
      dp4 r5.x, r2.xyzw, cb1[r4.w + 29].xyzw  // r5.x <- shadowPosition.x
      dp4 r5.y, r2.xyzw, cb1[r4.w + 30].xyzw  // r5.y <- shadowPosition.y
      dp4 r5.w, r2.xyzw, cb1[r4.w + 31].xyzw  // r5.w <- shadowPosition.z
      dp4 r6.x, r2.xyzw, cb1[r4.w + 32].xyzw  // r6.x <- shadowPosition.w

#line 381
      add r5.z, r5.w, -cb1[81].x  // r5.z <- shadowPosition.z

#line 382
      div r5.xyz, r5.xyzx, r6.xxxx

#line 334
      mad r5.xy, r5.xyxx, cb1[28].xyxx, l(0.500000, 0.500000, 0.000000, 0.000000)
      round_ni r6.xy, r5.xyxx  // r6.x <- base_uv.x; r6.y <- base_uv.y

#line 335
      add r5.xy, r5.xyxx, -r6.xyxx  // r5.x <- st.x; r5.y <- st.y

#line 336
      add r6.xy, r6.xyxx, l(-0.500000, -0.500000, 0.000000, 0.000000)

#line 337
      mul r6.xy, r6.xyxx, cb1[28].zwzz

#line 255
      mad r7.xyzw, r5.xyyx, l(11.000000, 11.000000, 11.000000, 11.000000), l(-28.000000, -28.000000, 17.000000, 17.000000)  // r7.x <- uvW1.x; r7.y <- uvW1.y

#line 256
      mad r8.xyzw, r5.yxxy, l(5.000000, 5.000000, 5.000000, 5.000000), l(-6.000000, -6.000000, 1.000000, 1.000000)  // r8.x <- uvW0.y; r8.y <- uvW0.x

#line 258
      mad r9.xyzw, r5.xyxy, l(4.000000, 4.000000, 4.000000, 4.000000), l(-5.000000, -5.000000, -16.000000, -16.000000)

#line 257
      div r6.zw, r9.xxxy, r8.yyyx
      add r10.xw, r6.zzzw, l(-3.000000, 0.000000, 0.000000, -3.000000)  // r10.x <- uv0.x; r10.w <- uv0.y

#line 258
      div r6.zw, r9.zzzw, r7.xxxy
      add r10.yz, r6.wwzw, l(0.000000, -1.000000, -1.000000, 0.000000)  // r10.y <- uv1.y; r10.z <- uv1.x

#line 259
      mad r6.zw, r5.xxxy, l(0.000000, 0.000000, 7.000000, 7.000000), l(0.000000, 0.000000, 5.000000, 5.000000)
      div r6.zw, r6.zzzw, r7.wwwz
      add r9.xw, r6.wwwz, l(1.000000, 0.000000, 0.000000, 1.000000)  // r9.x <- uv2.y; r9.w <- uv2.x

#line 260
      div r5.xy, r5.xyxx, r8.zwzz
      add r11.xy, r5.xyxx, l(3.000000, 3.000000, 0.000000, 0.000000)  // r11.x <- uv3.x; r11.y <- uv3.y

#line 262
      mad r12.xyzw, r10.xwzw, cb1[28].zwzw, r6.xyxy

#line 267
      mov r9.yz, r10.wwyw

#line 268
      mov r11.zw, r9.yyyz

#line 266
      mad r13.xyzw, r10.xyzy, cb1[28].zwzw, r6.xyxy

#line 267
      mad r14.xyzw, r9.wywz, cb1[28].zwzw, r6.xyxy

#line 268
      mad r15.xyzw, r11.xzxw, cb1[28].zwzw, r6.xyxy

#line 269
      mov r10.y, r9.x
      mul r5.xy, -r7.wzww, r8.xyxx

#line 270
      mad r16.xyzw, r10.xyzy, cb1[28].zwzw, r6.xyxy
      mul r6.zw, r7.yyyx, -r7.wwwz

#line 271
      mad r11.zw, r9.wwwx, cb1[28].zzzw, r6.xxxy
      mul r17.xy, r7.yzyy, r7.xwxx

#line 272
      mov r10.w, r11.x
      mad r10.yw, r10.wwwy, cb1[28].zzzw, r6.xxxy

#line 274
      mov r9.xz, r10.xxzx

#line 273
      mov r9.y, r11.y
      mul r10.xz, r8.xxyx, -r8.zzwz

#line 274
      mad r18.xyzw, r9.xyzy, cb1[28].zwzw, r6.xyxy
      mul r9.xz, r7.yyxy, -r8.zzwz

#line 275
      mad r9.yw, r9.wwwy, cb1[28].zzzw, r6.xxxy
      mul r7.xyzw, r7.xyzw, r8.xyzw

#line 276
      mad r6.xy, r11.xyxx, cb1[28].zwzz, r6.xyxx
      mul r8.xy, r8.xwxx, r8.yzyy

#line 329
      sample_c_lz_indexable(texture2d)(float,float,float,float) r5.w, r12.xyxx, t3.xxxx, s1, r5.z  // r5.w <- <SampleTextureAndCompare_id34 return value>
      sample_c_lz_indexable(texture2d)(float,float,float,float) r8.z, r12.zwzz, t3.xxxx, s1, r5.z  // r8.z <- <SampleTextureAndCompare_id34 return value>

#line 367
      mul r7.x, r7.x, r8.z
      mad r5.w, r8.x, r5.w, r7.x  // r5.w <- shadow

#line 329
      sample_c_lz_indexable(texture2d)(float,float,float,float) r7.x, r14.xyxx, t3.xxxx, s1, r5.z  // r7.x <- <SampleTextureAndCompare_id34 return value>

#line 367
      mad r5.x, r5.x, r7.x, r5.w  // r5.x <- shadow

#line 329
      sample_c_lz_indexable(texture2d)(float,float,float,float) r5.w, r15.xyxx, t3.xxxx, s1, r5.z  // r5.w <- <SampleTextureAndCompare_id34 return value>

#line 367
      mad r5.x, r10.x, r5.w, r5.x

#line 329
      sample_c_lz_indexable(texture2d)(float,float,float,float) r5.w, r13.xyxx, t3.xxxx, s1, r5.z

#line 367
      mad r5.x, r7.y, r5.w, r5.x

#line 329
      sample_c_lz_indexable(texture2d)(float,float,float,float) r5.w, r13.zwzz, t3.xxxx, s1, r5.z

#line 367
      mad r5.x, r17.x, r5.w, r5.x

#line 329
      sample_c_lz_indexable(texture2d)(float,float,float,float) r5.w, r14.zwzz, t3.xxxx, s1, r5.z

#line 367
      mad r5.x, r6.z, r5.w, r5.x

#line 329
      sample_c_lz_indexable(texture2d)(float,float,float,float) r5.w, r15.zwzz, t3.xxxx, s1, r5.z

#line 367
      mad r5.x, r9.x, r5.w, r5.x

#line 329
      sample_c_lz_indexable(texture2d)(float,float,float,float) r5.w, r16.xyxx, t3.xxxx, s1, r5.z

#line 367
      mad r5.x, r5.y, r5.w, r5.x

#line 329
      sample_c_lz_indexable(texture2d)(float,float,float,float) r5.y, r16.zwzz, t3.xxxx, s1, r5.z  // r5.y <- <SampleTextureAndCompare_id34 return value>

#line 367
      mad r5.x, r6.w, r5.y, r5.x

#line 329
      sample_c_lz_indexable(texture2d)(float,float,float,float) r5.y, r11.zwzz, t3.xxxx, s1, r5.z

#line 367
      mad r5.x, r17.y, r5.y, r5.x

#line 329
      sample_c_lz_indexable(texture2d)(float,float,float,float) r5.y, r10.ywyy, t3.xxxx, s1, r5.z

#line 367
      mad r5.x, r7.z, r5.y, r5.x

#line 329
      sample_c_lz_indexable(texture2d)(float,float,float,float) r5.y, r18.xyxx, t3.xxxx, s1, r5.z

#line 367
      mad r5.x, r10.z, r5.y, r5.x

#line 329
      sample_c_lz_indexable(texture2d)(float,float,float,float) r5.y, r18.zwzz, t3.xxxx, s1, r5.z

#line 367
      mad r5.x, r9.z, r5.y, r5.x

#line 329
      sample_c_lz_indexable(texture2d)(float,float,float,float) r5.y, r9.ywyy, t3.xxxx, s1, r5.z

#line 367
      mad r5.x, r7.w, r5.y, r5.x

#line 329
      sample_c_lz_indexable(texture2d)(float,float,float,float) r5.y, r6.xyxx, t3.xxxx, s1, r5.z

#line 367
      mad r5.x, r8.y, r5.y, r5.x

#line 369
      mul r5.yzw, r5.xxxx, l(0.000000, 0.000370, 0.000370, 0.000370)  // r5.w <- shadow

#line 413
      ilt r6.x, l(0), r4.y
      if_nz r6.x

#line 415
        iadd r6.x, r4.y, l(-1)
        add r6.x, -cb1[r6.x + 83].x, cb1[r4.y + 83].x  // r6.x <- splitSize

#line 416
      else 
        mov r6.x, cb1[r4.y + 83].x  // r6.x <- splitSize
      endif 

#line 417
      add r4.y, -r1.w, cb1[r4.y + 83].x
      div r4.y, r4.y, r6.x  // r4.y <- splitDist

#line 418
      lt r6.x, r4.y, l(0.200000)
      if_nz r6.x

#line 421
        if_nz r4.z

#line 423
          mov r5.yzw, r5.wwww  // r5.y <- shadow.x; r5.z <- shadow.y; r5.w <- shadow.z
        else 

#line 420
          mul_sat r4.y, r4.y, l(5.000000)
          mad r4.z, r4.y, l(-2.000000), l(3.000000)
          mul r4.y, r4.y, r4.y
          mul r4.y, r4.y, r4.z  // r4.y <- lerpAmt

#line 380
          dp4 r6.x, r2.xyzw, cb1[r4.w + 33].xyzw  // r6.x <- shadowPosition.x
          dp4 r6.y, r2.xyzw, cb1[r4.w + 34].xyzw  // r6.y <- shadowPosition.y
          dp4 r4.z, r2.xyzw, cb1[r4.w + 35].xyzw  // r4.z <- shadowPosition.z
          dp4 r4.w, r2.xyzw, cb1[r4.w + 36].xyzw  // r4.w <- shadowPosition.w

#line 381
          add r6.z, r4.z, -cb1[81].x  // r6.z <- shadowPosition.z

#line 382
          div r6.xyz, r6.xyzx, r4.wwww

#line 334
          mad r4.zw, r6.xxxy, cb1[28].xxxy, l(0.000000, 0.000000, 0.500000, 0.500000)
          round_ni r6.xy, r4.zwzz  // r6.x <- base_uv.x; r6.y <- base_uv.y

#line 335
          add r4.zw, r4.zzzw, -r6.xxxy  // r4.z <- st.x; r4.w <- st.y

#line 336
          add r6.xy, r6.xyxx, l(-0.500000, -0.500000, 0.000000, 0.000000)

#line 337
          mul r6.xy, r6.xyxx, cb1[28].zwzz

#line 255
          mad r7.xyzw, r4.zwwz, l(11.000000, 11.000000, 11.000000, 11.000000), l(-28.000000, -28.000000, 17.000000, 17.000000)  // r7.x <- uvW1.x; r7.y <- uvW1.y

#line 256
          mad r8.xyzw, r4.wzzw, l(5.000000, 5.000000, 5.000000, 5.000000), l(-6.000000, -6.000000, 1.000000, 1.000000)  // r8.x <- uvW0.y; r8.y <- uvW0.x

#line 258
          mad r9.xyzw, r4.zwzw, l(4.000000, 4.000000, 4.000000, 4.000000), l(-5.000000, -5.000000, -16.000000, -16.000000)

#line 257
          div r9.xy, r9.xyxx, r8.yxyy
          add r10.xw, r9.xxxy, l(-3.000000, 0.000000, 0.000000, -3.000000)  // r10.x <- uv0.x; r10.w <- uv0.y

#line 258
          div r9.xy, r9.zwzz, r7.xyxx
          add r10.yz, r9.yyxy, l(0.000000, -1.000000, -1.000000, 0.000000)  // r10.y <- uv1.y; r10.z <- uv1.x

#line 259
          mad r9.xy, r4.zwzz, l(7.000000, 7.000000, 0.000000, 0.000000), l(5.000000, 5.000000, 0.000000, 0.000000)
          div r9.xy, r9.xyxx, r7.wzww
          add r9.xw, r9.yyyx, l(1.000000, 0.000000, 0.000000, 1.000000)  // r9.x <- uv2.y; r9.w <- uv2.x

#line 260
          div r4.zw, r4.zzzw, r8.zzzw
          add r11.xy, r4.zwzz, l(3.000000, 3.000000, 0.000000, 0.000000)  // r11.x <- uv3.x; r11.y <- uv3.y

#line 262
          mad r12.xyzw, r10.xwzw, cb1[28].zwzw, r6.xyxy

#line 267
          mov r9.yz, r10.wwyw

#line 268
          mov r11.zw, r9.yyyz

#line 266
          mad r13.xyzw, r10.xyzy, cb1[28].zwzw, r6.xyxy

#line 267
          mad r14.xyzw, r9.wywz, cb1[28].zwzw, r6.xyxy

#line 268
          mad r15.xyzw, r11.xzxw, cb1[28].zwzw, r6.xyxy

#line 269
          mov r10.y, r9.x
          mul r4.zw, -r7.wwwz, r8.xxxy

#line 270
          mad r16.xyzw, r10.xyzy, cb1[28].zwzw, r6.xyxy
          mul r11.zw, r7.yyyx, -r7.wwwz

#line 271
          mad r17.xy, r9.wxww, cb1[28].zwzz, r6.xyxx
          mul r17.zw, r7.yyyz, r7.xxxw

#line 272
          mov r10.w, r11.x
          mad r10.yw, r10.wwwy, cb1[28].zzzw, r6.xxxy

#line 274
          mov r9.xz, r10.xxzx

#line 273
          mov r9.y, r11.y
          mul r10.xz, r8.xxyx, -r8.zzwz

#line 274
          mad r18.xyzw, r9.xyzy, cb1[28].zwzw, r6.xyxy
          mul r9.xz, r7.yyxy, -r8.zzwz

#line 275
          mad r9.yw, r9.wwwy, cb1[28].zzzw, r6.xxxy
          mul r7.xyzw, r7.xyzw, r8.xyzw

#line 276
          mad r6.xy, r11.xyxx, cb1[28].zwzz, r6.xyxx
          mul r8.xy, r8.xwxx, r8.yzyy

#line 329
          sample_c_lz_indexable(texture2d)(float,float,float,float) r6.w, r12.xyxx, t3.xxxx, s1, r6.z  // r6.w <- <SampleTextureAndCompare_id34 return value>
          sample_c_lz_indexable(texture2d)(float,float,float,float) r8.z, r12.zwzz, t3.xxxx, s1, r6.z  // r8.z <- <SampleTextureAndCompare_id34 return value>

#line 367
          mul r7.x, r7.x, r8.z
          mad r6.w, r8.x, r6.w, r7.x  // r6.w <- shadow

#line 329
          sample_c_lz_indexable(texture2d)(float,float,float,float) r7.x, r14.xyxx, t3.xxxx, s1, r6.z  // r7.x <- <SampleTextureAndCompare_id34 return value>

#line 367
          mad r4.z, r4.z, r7.x, r6.w  // r4.z <- shadow

#line 329
          sample_c_lz_indexable(texture2d)(float,float,float,float) r6.w, r15.xyxx, t3.xxxx, s1, r6.z  // r6.w <- <SampleTextureAndCompare_id34 return value>

#line 367
          mad r4.z, r10.x, r6.w, r4.z

#line 329
          sample_c_lz_indexable(texture2d)(float,float,float,float) r6.w, r13.xyxx, t3.xxxx, s1, r6.z

#line 367
          mad r4.z, r7.y, r6.w, r4.z

#line 329
          sample_c_lz_indexable(texture2d)(float,float,float,float) r6.w, r13.zwzz, t3.xxxx, s1, r6.z

#line 367
          mad r4.z, r17.z, r6.w, r4.z

#line 329
          sample_c_lz_indexable(texture2d)(float,float,float,float) r6.w, r14.zwzz, t3.xxxx, s1, r6.z

#line 367
          mad r4.z, r11.z, r6.w, r4.z

#line 329
          sample_c_lz_indexable(texture2d)(float,float,float,float) r6.w, r15.zwzz, t3.xxxx, s1, r6.z

#line 367
          mad r4.z, r9.x, r6.w, r4.z

#line 329
          sample_c_lz_indexable(texture2d)(float,float,float,float) r6.w, r16.xyxx, t3.xxxx, s1, r6.z

#line 367
          mad r4.z, r4.w, r6.w, r4.z

#line 329
          sample_c_lz_indexable(texture2d)(float,float,float,float) r4.w, r16.zwzz, t3.xxxx, s1, r6.z  // r4.w <- <SampleTextureAndCompare_id34 return value>

#line 367
          mad r4.z, r11.w, r4.w, r4.z

#line 329
          sample_c_lz_indexable(texture2d)(float,float,float,float) r4.w, r17.xyxx, t3.xxxx, s1, r6.z

#line 367
          mad r4.z, r17.w, r4.w, r4.z

#line 329
          sample_c_lz_indexable(texture2d)(float,float,float,float) r4.w, r10.ywyy, t3.xxxx, s1, r6.z

#line 367
          mad r4.z, r7.z, r4.w, r4.z

#line 329
          sample_c_lz_indexable(texture2d)(float,float,float,float) r4.w, r18.xyxx, t3.xxxx, s1, r6.z

#line 367
          mad r4.z, r10.z, r4.w, r4.z

#line 329
          sample_c_lz_indexable(texture2d)(float,float,float,float) r4.w, r18.zwzz, t3.xxxx, s1, r6.z

#line 367
          mad r4.z, r9.z, r4.w, r4.z

#line 329
          sample_c_lz_indexable(texture2d)(float,float,float,float) r4.w, r9.ywyy, t3.xxxx, s1, r6.z

#line 367
          mad r4.z, r7.w, r4.w, r4.z

#line 329
          sample_c_lz_indexable(texture2d)(float,float,float,float) r4.w, r6.xyxx, t3.xxxx, s1, r6.z

#line 367
          mad r4.z, r8.y, r4.w, r4.z

#line 369
          mul r4.z, r4.z, l(0.000370)

#line 427
          mad r4.w, r5.x, l(0.000370), -r4.z
          mad r5.yzw, r4.yyyy, r4.wwww, r4.zzzz  // r5.y <- shadow.x; r5.z <- shadow.y; r5.w <- shadow.z

#line 428
        endif 

#line 429
      endif 

#line 469
      max r4.y, r5.z, r5.y
      max r4.y, r5.w, r4.y  // r4.y <- shadow

#line 528
      mad r3.w, r0.w, r4.y, r3.w

#line 529
      mad r2.xyz, r0.zzzz, r3.xyzx, r2.xyzx

#line 530
      mad r1.w, r0.y, l(0.015625), r1.w

#line 531
      iadd r4.x, r4.x, l(1)
    endloop 

#line 532
  else   // Prior locations: r1.z <- maxZ
    mov r3.w, l(0)  // r3.w <- lightResult.x
  endif 

#line 534
  mov r0.xyz, r3.wwww  // r0.x <- streams.ColorTarget_id2.x; r0.y <- streams.ColorTarget_id2.y; r0.z <- streams.ColorTarget_id2.z
else   // Prior locations: r0.x <- minmax.x; r0.y <- minmax.y

#line 538
  mov r0.xyz, l(0,0,0,0)  // r0.x <- streams.ColorTarget_id2.x; r0.y <- streams.ColorTarget_id2.y; r0.z <- streams.ColorTarget_id2.z
endif 

#line 541
mov o0.xyz, r0.xyzx
mov o0.w, l(1.000000)
ret 
// Approximately 257 instruction slots used
***************************
*************************/
const static int TSampleCount_id98 = 64;
const static int TMaxLightCount_id143 = 1;
const static int TCascadeCountBase_id155 = 4;
const static int TLightCountBase_id156 = 1;
const static int TCascadeCount_id163 = 4;
const static int TLightCount_id164 = 1;
const static bool TBlendCascades_id165 = true;
const static bool TDepthRangeAuto_id166 = true;
const static bool TCascadeDebug_id167 = false;
const static bool TComputeTransmittance_id168 = false;
const static int TFilterSize_id170 = 7;
struct PS_STREAMS 
{
    float2 TexCoord_id62;
    float DepthVS_id97;
    float3 lightPositionWS_id99;
    float3 lightDirectionWS_id100;
    float3 lightColor_id101;
    float3 lightColorNdotL_id102;
    float3 lightSpecularColorNdotL_id103;
    float lightAttenuation_id104;
    float3 envLightDiffuseColor_id105;
    float3 envLightSpecularColor_id106;
    float lightDirectAmbientOcclusion_id108;
    float NdotL_id107;
    float3 normalWS_id112;
    float3 meshNormalWS_id110;
    float4 PositionWS_id96;
    float thicknessWS_id118;
    float4 ColorTarget_id2;
};
struct PS_OUTPUT 
{
    float4 ColorTarget_id2 : SV_Target0;
};
struct PS_INPUT 
{
    float4 ShadingPosition_id0 : SV_Position;
    float2 TexCoord_id62 : TEXCOORD0;
};
struct VS_STREAMS 
{
    float4 Position_id72;
    float2 TexCoord_id62;
    float4 ShadingPosition_id0;
};
struct VS_OUTPUT 
{
    float4 ShadingPosition_id0 : SV_Position;
    float2 TexCoord_id62 : TEXCOORD0;
};
struct VS_INPUT 
{
    float4 Position_id72 : POSITION;
    float2 TexCoord_id62 : TEXCOORD0;
};
struct DirectionalLightData 
{
    float3 DirectionWS;
    float3 Color;
};
cbuffer PerDraw 
{
    float4x4 MatrixTransform_id73;
    float4x4 World_id87;
    float4x4 WorldInverse_id88;
    float4x4 WorldInverseTranspose_id89;
    float4x4 WorldView_id90;
    float4x4 WorldViewInverse_id91;
    float4x4 WorldViewProjection_id92;
    float3 WorldScale_id93;
    float4 EyeMS_id94;
};
cbuffer PerFrame 
{
    float DensityFactor_id116;
};
cbuffer PerView 
{
    float NearClipPlane_id74 = 1.0f;
    float FarClipPlane_id75 = 100.0f;
    float2 ZProjection_id76;
    float2 ViewSize_id77;
    float AspectRatio_id78;
    float4x4 View_id80;
    float4x4 ViewInverse_id81;
    float4x4 Projection_id82;
    float4x4 ProjectionInverse_id83;
    float4x4 ViewProjection_id84;
    float2 ProjScreenRay_id85;
    float4 Eye_id86;
    float4 _padding_PerView_Default;
    int LightCount_id142;
    DirectionalLightData Lights_id144[TMaxLightCount_id143];
    float2 ShadowMapTextureSize_id152;
    float2 ShadowMapTextureTexelSize_id153;
    float4x4 WorldToShadowCascadeUV_id157[TCascadeCountBase_id155 * TLightCountBase_id156];
    float4x4 InverseWorldToShadowCascadeUV_id158[TCascadeCountBase_id155 * TLightCountBase_id156];
    float4x4 ViewMatrices_id159[TCascadeCountBase_id155 * TLightCountBase_id156];
    float2 DepthRanges_id160[TCascadeCountBase_id155 * TLightCountBase_id156];
    float DepthBiases_id161[TLightCountBase_id156];
    float OffsetScales_id162[TLightCountBase_id156];
    float CascadeDepthSplits_id169[TCascadeCount_id163 * TLightCount_id164];
    float4 _padding_PerView_Lighting;
};
cbuffer Globals 
{
    float2 Texture0TexelSize_id15;
    float2 Texture1TexelSize_id17;
    float2 Texture2TexelSize_id19;
    float2 Texture3TexelSize_id21;
    float2 Texture4TexelSize_id23;
    float2 Texture5TexelSize_id25;
    float2 Texture6TexelSize_id27;
    float2 Texture7TexelSize_id29;
    float2 Texture8TexelSize_id31;
    float2 Texture9TexelSize_id33;
};
Texture2D Texture0_id14;
Texture2D Texture1_id16;
Texture2D Texture2_id18;
Texture2D Texture3_id20;
Texture2D Texture4_id22;
Texture2D Texture5_id24;
Texture2D Texture6_id26;
Texture2D Texture7_id28;
Texture2D Texture8_id30;
Texture2D Texture9_id32;
TextureCube TextureCube0_id34;
TextureCube TextureCube1_id35;
TextureCube TextureCube2_id36;
TextureCube TextureCube3_id37;
Texture3D Texture3D0_id38;
Texture3D Texture3D1_id39;
Texture3D Texture3D2_id40;
Texture3D Texture3D3_id41;
SamplerState Sampler_id42;
SamplerState PointSampler_id43 
{
    Filter = MIN_MAG_MIP_POINT;
};
SamplerState LinearSampler_id44 
{
    Filter = MIN_MAG_MIP_LINEAR;
};
SamplerState LinearBorderSampler_id45 
{
    Filter = MIN_MAG_MIP_LINEAR;
    AddressU = Border;
    AddressV = Border;
};
SamplerComparisonState LinearClampCompareLessEqualSampler_id46 
{
    Filter = COMPARISON_MIN_MAG_LINEAR_MIP_POINT;
    AddressU = Clamp;
    AddressV = Clamp;
    ComparisonFunc = LessEqual;
};
SamplerState AnisotropicSampler_id47 
{
    Filter = ANISOTROPIC;
};
SamplerState AnisotropicRepeatSampler_id48 
{
    Filter = ANISOTROPIC;
    AddressU = Wrap;
    AddressV = Wrap;
    MaxAnisotropy = 16;
};
SamplerState PointRepeatSampler_id49 
{
    Filter = MIN_MAG_MIP_POINT;
    AddressU = Wrap;
    AddressV = Wrap;
};
SamplerState LinearRepeatSampler_id50 
{
    Filter = MIN_MAG_MIP_LINEAR;
    AddressU = Wrap;
    AddressV = Wrap;
};
SamplerState RepeatSampler_id51 
{
    AddressU = Wrap;
    AddressV = Wrap;
};
SamplerState Sampler0_id52;
SamplerState Sampler1_id53;
SamplerState Sampler2_id54;
SamplerState Sampler3_id55;
SamplerState Sampler4_id56;
SamplerState Sampler5_id57;
SamplerState Sampler6_id58;
SamplerState Sampler7_id59;
SamplerState Sampler8_id60;
SamplerState Sampler9_id61;
Texture2D DepthStencil_id79;
Texture2D ShadowMapTexture_id151;
float4 Project_id26(float4 vec, float4x4 mat)
{
    float4 vecProjected = mul(vec, mat);
    vecProjected.xyz /= vecProjected.w;
    return vecProjected;
}
float Get3x3FilterKernel_id36(float2 base_uv, float2 st, out float3 kernel[4])
{
    float2 uvW0 = (3 - 2 * st);
    float2 uvW1 = (1 + 2 * st);
    float2 uv0 = (2 - st) / uvW0 - 1;
    float2 uv1 = st / uvW1 + 1;
    kernel[0] = float3(base_uv + uv0 * ShadowMapTextureTexelSize_id153, uvW0.x * uvW0.y);
    kernel[1] = float3(base_uv + float2(uv1.x, uv0.y) * ShadowMapTextureTexelSize_id153, uvW1.x * uvW0.y);
    kernel[2] = float3(base_uv + float2(uv0.x, uv1.y) * ShadowMapTextureTexelSize_id153, uvW0.x * uvW1.y);
    kernel[3] = float3(base_uv + uv1 * ShadowMapTextureTexelSize_id153, uvW1.x * uvW1.y);
    return 16.0;
}
float Get5x5FilterKernel_id35(float2 base_uv, float2 st, out float3 kernel[9])
{
    float2 uvW0 = (4 - 3 * st);
    float2 uvW1 = 7;
    float2 uvW2 = (1 + 3 * st);
    float2 uv0 = (3 - 2 * st) / uvW0 - 2;
    float2 uv1 = (3 + st) / uvW1;
    float2 uv2 = st / uvW2 + 2;
    kernel[0] = float3(base_uv + uv0 * ShadowMapTextureTexelSize_id153, uvW0.x * uvW0.y);
    kernel[1] = float3(base_uv + float2(uv1.x, uv0.y) * ShadowMapTextureTexelSize_id153, uvW1.x * uvW0.y);
    kernel[2] = float3(base_uv + float2(uv2.x, uv0.y) * ShadowMapTextureTexelSize_id153, uvW2.x * uvW0.y);
    kernel[3] = float3(base_uv + float2(uv0.x, uv1.y) * ShadowMapTextureTexelSize_id153, uvW0.x * uvW1.y);
    kernel[4] = float3(base_uv + uv1 * ShadowMapTextureTexelSize_id153, uvW1.x * uvW1.y);
    kernel[5] = float3(base_uv + float2(uv2.x, uv1.y) * ShadowMapTextureTexelSize_id153, uvW2.x * uvW1.y);
    kernel[6] = float3(base_uv + float2(uv0.x, uv2.y) * ShadowMapTextureTexelSize_id153, uvW0.x * uvW2.y);
    kernel[7] = float3(base_uv + float2(uv1.x, uv2.y) * ShadowMapTextureTexelSize_id153, uvW1.x * uvW2.y);
    kernel[8] = float3(base_uv + uv2 * ShadowMapTextureTexelSize_id153, uvW2.x * uvW2.y);
    return 144.0;
}
float SampleThickness_id37(float3 shadowSpaceCoordinate, float3 pixelPositionWS, float2 depthRanges, float4x4 inverseWorldToShadowCascadeUV, bool isOrthographic)
{
    const float shadowMapDepth = ShadowMapTexture_id151.SampleLevel(LinearBorderSampler_id45, shadowSpaceCoordinate.xy, 0).r;
    float thickness;
    if (isOrthographic)
    {
        thickness = abs(shadowMapDepth - shadowSpaceCoordinate.z) * depthRanges.y;
    }
    else
    {
        float4 shadowmapPositionWorldSpace = Project_id26(float4(shadowSpaceCoordinate.xy, shadowMapDepth, 1.0), inverseWorldToShadowCascadeUV);
        thickness = distance(shadowmapPositionWorldSpace.xyz, pixelPositionWS.xyz);
    }
    return (thickness);
}
float Get7x7FilterKernel_id33(float2 base_uv, float2 st, out float3 kernel[16])
{
    float2 uvW0 = (5 * st - 6);
    float2 uvW1 = (11 * st - 28);
    float2 uvW2 = -(11 * st + 17);
    float2 uvW3 = -(5 * st + 1);
    float2 uv0 = (4 * st - 5) / uvW0 - 3;
    float2 uv1 = (4 * st - 16) / uvW1 - 1;
    float2 uv2 = -(7 * st + 5) / uvW2 + 1;
    float2 uv3 = -st / uvW3 + 3;
    kernel[0] = float3(base_uv + uv0 * ShadowMapTextureTexelSize_id153, uvW0.x * uvW0.y);
    kernel[1] = float3(base_uv + float2(uv1.x, uv0.y) * ShadowMapTextureTexelSize_id153, uvW1.x * uvW0.y);
    kernel[2] = float3(base_uv + float2(uv2.x, uv0.y) * ShadowMapTextureTexelSize_id153, uvW2.x * uvW0.y);
    kernel[3] = float3(base_uv + float2(uv3.x, uv0.y) * ShadowMapTextureTexelSize_id153, uvW3.x * uvW0.y);
    kernel[4] = float3(base_uv + float2(uv0.x, uv1.y) * ShadowMapTextureTexelSize_id153, uvW0.x * uvW1.y);
    kernel[5] = float3(base_uv + uv1 * ShadowMapTextureTexelSize_id153, uvW1.x * uvW1.y);
    kernel[6] = float3(base_uv + float2(uv2.x, uv1.y) * ShadowMapTextureTexelSize_id153, uvW2.x * uvW1.y);
    kernel[7] = float3(base_uv + float2(uv3.x, uv1.y) * ShadowMapTextureTexelSize_id153, uvW3.x * uvW1.y);
    kernel[8] = float3(base_uv + float2(uv0.x, uv2.y) * ShadowMapTextureTexelSize_id153, uvW0.x * uvW2.y);
    kernel[9] = float3(base_uv + float2(uv1.x, uv2.y) * ShadowMapTextureTexelSize_id153, uvW1.x * uvW2.y);
    kernel[10] = float3(base_uv + uv2 * ShadowMapTextureTexelSize_id153, uvW2.x * uvW2.y);
    kernel[11] = float3(base_uv + float2(uv3.x, uv2.y) * ShadowMapTextureTexelSize_id153, uvW3.x * uvW2.y);
    kernel[12] = float3(base_uv + float2(uv0.x, uv3.y) * ShadowMapTextureTexelSize_id153, uvW0.x * uvW3.y);
    kernel[13] = float3(base_uv + float2(uv1.x, uv3.y) * ShadowMapTextureTexelSize_id153, uvW1.x * uvW3.y);
    kernel[14] = float3(base_uv + float2(uv2.x, uv3.y) * ShadowMapTextureTexelSize_id153, uvW2.x * uvW3.y);
    kernel[15] = float3(base_uv + uv3 * ShadowMapTextureTexelSize_id153, uvW3.x * uvW3.y);
    return 2704.0;
}
float SampleAndFilter_id41(float3 adjustedPixelPositionWS, float3 adjustedPixelPositionShadowSpace, float2 depthRanges, float4x4 inverseWorldToShadowCascadeUV, bool isOrthographic, bool isDualParaboloid = false)
{
    float2 uv = adjustedPixelPositionShadowSpace.xy * ShadowMapTextureSize_id152;
    float2 base_uv = floor(uv + 0.5);
    float2 st = uv + 0.5 - base_uv;
    base_uv *= ShadowMapTextureTexelSize_id153;
    float thickness = 0.0;
    float normalizationFactor = 1.0;

    {
        float3 kernel[16];
        normalizationFactor = Get7x7FilterKernel_id33(base_uv, st, kernel);

        [unroll]
        for (int i = 0; i < 16; ++i)
        {
            thickness += kernel[i].z * SampleThickness_id37(float3(kernel[i].xy, adjustedPixelPositionShadowSpace.z), adjustedPixelPositionWS, depthRanges, inverseWorldToShadowCascadeUV, isOrthographic);
        }
    }
    return (thickness / normalizationFactor);
}
void CalculateAdjustedShadowSpacePixelPosition_id40(float filterRadiusInPixels, float3 pixelPositionWS, float3 meshNormalWS, float4x4 worldToShadowCascadeUV, float4x4 inverseWorldToShadowCascadeUV, out float3 adjustedPixelPositionWS, out float3 adjustedPixelPositionShadowSpace)
{
    float4 bottomLeftTexelWS = Project_id26(float4(0.0, 0.0, 0.0, 1.0), inverseWorldToShadowCascadeUV);
    const float4 topRightTexelWS = Project_id26(float4(ShadowMapTextureTexelSize_id153.xy * filterRadiusInPixels, 0.0, 1.0), inverseWorldToShadowCascadeUV);
    const float texelDiagonalLength = distance(topRightTexelWS.xyz, bottomLeftTexelWS.xyz);
    const float3 positionOffsetWS = meshNormalWS * texelDiagonalLength;
    adjustedPixelPositionWS = pixelPositionWS - positionOffsetWS;
    const float4 shadowMapCoordinate = Project_id26(float4(adjustedPixelPositionWS, 1.0), worldToShadowCascadeUV);
    adjustedPixelPositionShadowSpace = shadowMapCoordinate.xyz;
}
void CalculateAdjustedShadowSpacePixelPositionPerspective_id39(float filterRadiusInPixels, float3 pixelPositionWS, float3 meshNormalWS, float4x4 worldToShadowCascadeUV, float4x4 inverseWorldToShadowCascadeUV, out float3 adjustedPixelPositionWS, out float3 adjustedPixelPositionShadowSpace)
{
    const float4 shadowMapCoordinate = Project_id26(float4(pixelPositionWS, 1.0), worldToShadowCascadeUV);
    const float4 topRightTexelWS = Project_id26(float4(shadowMapCoordinate.xy + ShadowMapTextureTexelSize_id153.xy * filterRadiusInPixels, shadowMapCoordinate.z, 1.0), inverseWorldToShadowCascadeUV);
    const float texelDiagonalLength = distance(topRightTexelWS.xyz, pixelPositionWS);
    const float3 positionOffsetWS = meshNormalWS * texelDiagonalLength;
    adjustedPixelPositionWS = pixelPositionWS - positionOffsetWS;
    const float4 adjustedShadowMapCoordinate = Project_id26(float4(adjustedPixelPositionWS, 1.0), worldToShadowCascadeUV);
    adjustedPixelPositionShadowSpace = adjustedShadowMapCoordinate.xyz;
}
float GetFilterRadiusInPixels_id38()
{

    {
        return 4.5;
    }
}
float SampleTextureAndCompare_id34(float2 position, float positionDepth)
{
    return ShadowMapTexture_id151.SampleCmpLevelZero(LinearClampCompareLessEqualSampler_id46, position, positionDepth);
}
void CalculatePCFKernelParameters_id32(float2 position, out float2 base_uv, out float2 st)
{
    float2 uv = position * ShadowMapTextureSize_id152;
    base_uv = floor(uv + 0.5);
    st = uv + 0.5 - base_uv;
    base_uv -= 0.5;
    base_uv *= ShadowMapTextureTexelSize_id153;
}
float FilterThickness_id28(float3 pixelPositionWS, float3 meshNormalWS, float2 depthRanges, float4x4 worldToShadowCascadeUV, float4x4 inverseWorldToShadowCascadeUV, bool isOrthographic)
{
    float3 adjustedPixelPositionWS;
    float3 adjustedPixelPositionShadowSpace;
    if (isOrthographic)
    {
        CalculateAdjustedShadowSpacePixelPosition_id40(GetFilterRadiusInPixels_id38(), pixelPositionWS, meshNormalWS, worldToShadowCascadeUV, inverseWorldToShadowCascadeUV, adjustedPixelPositionWS, adjustedPixelPositionShadowSpace);
    }
    else
    {
        CalculateAdjustedShadowSpacePixelPositionPerspective_id39(GetFilterRadiusInPixels_id38(), pixelPositionWS, meshNormalWS, worldToShadowCascadeUV, inverseWorldToShadowCascadeUV, adjustedPixelPositionWS, adjustedPixelPositionShadowSpace);
    }
    return SampleAndFilter_id41(adjustedPixelPositionWS, adjustedPixelPositionShadowSpace, depthRanges, inverseWorldToShadowCascadeUV, isOrthographic);
}
float FilterShadow_id27(float2 position, float positionDepth)
{
    float shadow = 0.0f;
    float2 base_uv;
    float2 st;
    CalculatePCFKernelParameters_id32(position, base_uv, st);

    {
        float3 kernel[16];
        float normalizationFactor = Get7x7FilterKernel_id33(base_uv, st, kernel);

        [unroll]
        for (int i = 0; i < 16; ++i)
        {
            shadow += kernel[i].z * SampleTextureAndCompare_id34(kernel[i].xy, positionDepth);
        }
        shadow /= normalizationFactor;
    }
    return shadow;
}
float ComputeThicknessFromCascade_id31(float3 pixelPositionWS, float3 meshNormalWS, int cascadeIndex, int lightIndex, bool isOrthographic)
{
    const int arrayIndex = cascadeIndex + lightIndex * TCascadeCountBase_id155;
    return FilterThickness_id28(pixelPositionWS, meshNormalWS, DepthRanges_id160[arrayIndex], WorldToShadowCascadeUV_id157[arrayIndex], InverseWorldToShadowCascadeUV_id158[arrayIndex], isOrthographic);
}
float ComputeShadowFromCascade_id30(float3 shadowPositionWS, int cascadeIndex, int lightIndex)
{
    float4 shadowPosition = mul(float4(shadowPositionWS, 1.0), WorldToShadowCascadeUV_id157[cascadeIndex + lightIndex * TCascadeCountBase_id155]);
    shadowPosition.z -= DepthBiases_id161[lightIndex];
    shadowPosition.xyz /= shadowPosition.w;
    return FilterShadow_id27(shadowPosition.xy, shadowPosition.z);
}
float3 GetShadowPositionOffset_id29(float offsetScale, float nDotL, float3 normal)
{
    float normalOffsetScale = saturate(1.0f - nDotL);
    return 2.0f * ShadowMapTextureTexelSize_id153.x * offsetScale * normalOffsetScale * normal;
}
float3 ComputeShadow_id18(inout PS_STREAMS streams, float3 position, int lightIndex)
{
    int cascadeIndexBase = lightIndex * TCascadeCount_id163;
    int cascadeIndex = 0;

    [unroll]
    for (int i = 0; i < TCascadeCount_id163 - 1; i++)
    {
        [flatten]
        if (streams.DepthVS_id97 > CascadeDepthSplits_id169[cascadeIndexBase + i])
        {
            cascadeIndex = i + 1;
        }
    }
    float3 shadow = 1.0;
    float tempThickness = 999.0;
    float3 shadowPosition = position.xyz;
    shadowPosition += GetShadowPositionOffset_id29(OffsetScales_id162[lightIndex], streams.NdotL_id107, streams.normalWS_id112);
    if (cascadeIndex < TCascadeCount_id163)
    {
        shadow = ComputeShadowFromCascade_id30(shadowPosition, cascadeIndex, lightIndex);
        float nextSplit = CascadeDepthSplits_id169[cascadeIndexBase + cascadeIndex];
        float splitSize = nextSplit;
        if (cascadeIndex > 0)
        {
            splitSize = nextSplit - CascadeDepthSplits_id169[cascadeIndexBase + cascadeIndex - 1];
        }
        float splitDist = (nextSplit - streams.DepthVS_id97) / splitSize;
        if (splitDist < 0.2)
        {
            float lerpAmt = smoothstep(0.0, 0.2, splitDist);
            if (cascadeIndex == TCascadeCount_id163 - 1)
            {
            }
            else if (TBlendCascades_id165)
            {
                float nextShadow = ComputeShadowFromCascade_id30(shadowPosition, cascadeIndex + 1, lightIndex);
                shadow = lerp(nextShadow, shadow, lerpAmt);
            }
        }
    }
    streams.thicknessWS_id118 = tempThickness;
    return shadow;
}
float ComputeAttenuation_id17(float3 position, int lightIndex)
{
    return 1;
}
void ResetLightStream_id14(inout PS_STREAMS streams)
{
    streams.lightPositionWS_id99 = 0;
    streams.lightDirectionWS_id100 = 0;
    streams.lightColor_id101 = 0;
    streams.lightColorNdotL_id102 = 0;
    streams.lightSpecularColorNdotL_id103 = 0;
    streams.lightAttenuation_id104 = 1.0f;
    streams.envLightDiffuseColor_id105 = 0;
    streams.envLightSpecularColor_id106 = 0;
    streams.lightDirectAmbientOcclusion_id108 = 1.0f;
    streams.NdotL_id107 = 0;
}
float FastRandom_id65(uint n)
{
    n = (n << 13) ^ n;
    return float((n * (n * n * 15731 + 789221) + 1376312589) & 0x7fffffff) / 2147483648.0;
}
int HashXYZ_id11(float3 input)
{
    return int(input.z * 313 + input.x * 1039 + input.y * 638359);
}
float3 ComputeColorIn_id15(inout PS_STREAMS streams, float4 positionWS, float stepSize, int stepIndex)
{
    ResetLightStream_id14(streams);
    streams.NdotL_id107 = 1;
    streams.normalWS_id112 = float3(0, 1, 0);
    streams.meshNormalWS_id110 = 0.0f;
    streams.PositionWS_id96 = 0.0f;
    float atten = ComputeAttenuation_id17(positionWS.xyz, 0);
    float3 shadowColor = ComputeShadow_id18(streams, positionWS.xyz, 0);
    float shadow = max(max(shadowColor.x, shadowColor.y), shadowColor.z);
    return DensityFactor_id116 * stepSize * shadow * atten;
}
float RayStepJitter_id12(float3 input, float stepSize)
{
    return stepSize * FastRandom_id65(HashXYZ_id11(input));
}
float ComputeDepthFromZProj_id6(float depth)
{
    return ZProjection_id76.y / (depth - ZProjection_id76.x);
}
float GetZProjDepthFromUV_id4(float2 uv)
{
    return DepthStencil_id79.SampleLevel(PointSampler_id43, uv, 0.0).x;
}
float4 ComputeFinalColor_id13(float3 lightAcc)
{
    return float4(lightAcc.xxx, 1.0f);
}
float3 ComputeColorOut_id9()
{
    return 0;
}
PS_OUTPUT PSMain(PS_INPUT __input__)
{
    PS_STREAMS streams = (PS_STREAMS)0;
    streams.TexCoord_id62 = __input__.TexCoord_id62;
    float2 minmax = Texture0_id14.Sample(PointSampler_id43, streams.TexCoord_id62).xy;
    float backsideMin = Texture1_id16.Sample(PointSampler_id43, 0.0f).x;
    if (backsideMin < 1.0f)
        minmax.x = 0.0f;
    if (minmax.y < 1.0f)
    {
        float currentZ = GetZProjDepthFromUV_id4(streams.TexCoord_id62);
        float minZ = minmax.x;
        float maxZ = min(minmax.y, currentZ);
        float minDistance = ComputeDepthFromZProj_id6(minZ);
        float maxDistance = ComputeDepthFromZProj_id6(maxZ);
        float4 positionClipSpace = float4((1.0f - streams.TexCoord_id62.xy * 2.0f) * float2(-1.0f, 1.0f), maxZ, 1.0f);
        float4 positionVS = mul(positionClipSpace, ProjectionInverse_id83);
        positionVS.xyzw /= positionVS.w;
        float4 endingPosition = mul(positionVS, ViewInverse_id81);
        float3 endingPositionDelta = endingPosition.xyz - Eye_id86.xyz;
        float4 directionWS = float4(endingPositionDelta, 0.0f);
        directionWS = normalize(directionWS);
        float depthSlope = length(endingPositionDelta) / maxDistance;
        directionWS *= depthSlope;
        float stepRange = (maxDistance - minDistance);
        float stepSize = stepRange / (float)TSampleCount_id98;
        float3 lightResult = 0.0f;
        streams.DepthVS_id97 = minDistance;
        if (maxDistance > minDistance)
        {
            stepSize = (maxDistance - minDistance) / (float)TSampleCount_id98;
            float4 positionWS = endingPosition + (RayStepJitter_id12(positionVS.xyz, stepSize) - stepRange) * directionWS;
            streams.DepthVS_id97 = minDistance;

            for (int i = 0; i < TSampleCount_id98; i++)
            {
                lightResult += ComputeColorIn_id15(streams, positionWS, stepSize, i);
                positionWS += stepSize * directionWS;
                streams.DepthVS_id97 += stepSize;
            }
        }
        streams.ColorTarget_id2 = ComputeFinalColor_id13(lightResult);
    }
    else
    {
        streams.ColorTarget_id2 = ComputeFinalColor_id13(ComputeColorOut_id9());
    }
    PS_OUTPUT __output__ = (PS_OUTPUT)0;
    __output__.ColorTarget_id2 = streams.ColorTarget_id2;
    return __output__;
}
VS_OUTPUT VSMain(VS_INPUT __input__)
{
    VS_STREAMS streams = (VS_STREAMS)0;
    streams.Position_id72 = __input__.Position_id72;
    streams.TexCoord_id62 = __input__.TexCoord_id62;
    streams.ShadingPosition_id0 = mul(streams.Position_id72, MatrixTransform_id73);
    VS_OUTPUT __output__ = (VS_OUTPUT)0;
    __output__.ShadingPosition_id0 = streams.ShadingPosition_id0;
    __output__.TexCoord_id62 = streams.TexCoord_id62;
    return __output__;
}
