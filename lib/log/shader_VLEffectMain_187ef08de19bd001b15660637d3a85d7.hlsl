/**************************
***** Compiler Parameters *****
***************************
@P EffectName: VLEffectMain
@P   - Material.PixelStageSurfaceShaders: mixin MaterialSurfaceArray [{layers = [mixin MaterialSurfaceDiffuse [{diffuseMap = ComputeColorConstantColorLink<Material.DiffuseValue>}], mixin MaterialSurfaceLightingAndShading [{surfaces = [MaterialSurfaceShadingDiffuseLambert<false>]}]]}]
@P Material.PixelStageStreamInitializer: mixin MaterialStream, MaterialPixelShadingStream
@P Lighting.DirectLightGroups: mixin LightDirectionalGroup<8>, mixin LightClusteredPointGroup, LightClusteredSpotGroup
@P Lighting.EnvironmentLights: LightSimpleAmbient, sdfx LightSkyboxEffect, sdfx LightSkyboxEffect, EnvironmentLight
@P LightSkyboxShader.LightDiffuseColor.environmentLights[1]: SphericalHarmonicsEnvironmentColor<3>
@P LightSkyboxShader.LightSpecularColor.environmentLights[1]: RoughnessCubeMapEnvironmentColor
@P LightSkyboxShader.LightDiffuseColor.environmentLights[2]: SphericalHarmonicsEnvironmentColor<3>
@P LightSkyboxShader.LightSpecularColor.environmentLights[2]: RoughnessCubeMapEnvironmentColor
@P StrideEffectBase.RenderTargetExtensions: mixin [{ShadingColor1 = GBufferOutputSubsurfaceScatteringMaterialIndex}]
***************************
****  ConstantBuffers  ****
***************************
cbuffer PerDraw [Size: 432]
@C    World_id32 => Transformation.World
@C    WorldInverse_id33 => Transformation.WorldInverse
@C    WorldInverseTranspose_id34 => Transformation.WorldInverseTranspose
@C    WorldView_id35 => Transformation.WorldView
@C    WorldViewInverse_id36 => Transformation.WorldViewInverse
@C    WorldViewProjection_id37 => Transformation.WorldViewProjection
@C    WorldScale_id38 => Transformation.WorldScale
@C    EyeMS_id39 => Transformation.EyeMS
@C    MaterialIndex_id83 => GBufferOutputSubsurfaceScatteringMaterialIndex.MaterialIndex
cbuffer PerMaterial [Size: 16]
@C    constantColor_id185 => Material.DiffuseValue
cbuffer PerView [Size: 1168]
@C    View_id25 => Transformation.View
@C    ViewInverse_id26 => Transformation.ViewInverse
@C    Projection_id27 => Transformation.Projection
@C    ProjectionInverse_id28 => Transformation.ProjectionInverse
@C    ViewProjection_id29 => Transformation.ViewProjection
@C    ProjScreenRay_id30 => Transformation.ProjScreenRay
@C    Eye_id31 => Transformation.Eye
@C    NearClipPlane_id90 => Camera.NearClipPlane
@C    FarClipPlane_id91 => Camera.FarClipPlane
@C    ZProjection_id92 => Camera.ZProjection
@C    ViewSize_id93 => Camera.ViewSize
@C    AspectRatio_id94 => Camera.AspectRatio
@C    _padding_PerView_Default => _padding_PerView_Default
@C    LightCount_id86 => DirectLightGroupPerView.LightCount.directLightGroups[0]
@C    Lights_id88 => LightDirectionalGroup.Lights.directLightGroups[0]
@C    ClusterDepthScale_id99 => LightClustered.ClusterDepthScale
@C    ClusterDepthBias_id100 => LightClustered.ClusterDepthBias
@C    ClusterStride_id101 => LightClustered.ClusterStride
@C    AmbientLight_id104 => LightSimpleAmbient.AmbientLight.environmentLights[0]
@C    SphericalColors_id109 => SphericalHarmonicsEnvironmentColor.SphericalColors.lightDiffuseColor.environmentLights[1]
@C    MipCount_id168 => RoughnessCubeMapEnvironmentColor.MipCount.lightSpecularColor.environmentLights[1]
@C    SkyMatrix_id170 => LightSkyboxShader.SkyMatrix.environmentLights[1]
@C    Intensity_id171 => LightSkyboxShader.Intensity.environmentLights[1]
@C    SphericalColors_id178 => SphericalHarmonicsEnvironmentColor.SphericalColors.lightDiffuseColor.environmentLights[2]
@C    MipCount_id179 => RoughnessCubeMapEnvironmentColor.MipCount.lightSpecularColor.environmentLights[2]
@C    SkyMatrix_id181 => LightSkyboxShader.SkyMatrix.environmentLights[2]
@C    Intensity_id182 => LightSkyboxShader.Intensity.environmentLights[2]
@C    _padding_PerView_Lighting => _padding_PerView_Lighting
***************************
******  Resources    ******
***************************
@R    PerMaterial => PerMaterial [Stage: None, Slot: (-1--1)]
@R    LightClusters_id97 => LightClustered.LightClusters [Stage: None, Slot: (-1--1)]
@R    LightClusters_id97 => LightClustered.LightClusters [Stage: None, Slot: (-1--1)]
@R    LightIndices_id98 => LightClustered.LightIndices [Stage: None, Slot: (-1--1)]
@R    LightIndices_id98 => LightClustered.LightIndices [Stage: None, Slot: (-1--1)]
@R    PointLights_id102 => LightClusteredPointGroup.PointLights [Stage: None, Slot: (-1--1)]
@R    PointLights_id102 => LightClusteredPointGroup.PointLights [Stage: None, Slot: (-1--1)]
@R    SpotLights_id103 => LightClusteredSpotGroup.SpotLights [Stage: None, Slot: (-1--1)]
@R    SpotLights_id103 => LightClusteredSpotGroup.SpotLights [Stage: None, Slot: (-1--1)]
@R    CubeMap_id169 => RoughnessCubeMapEnvironmentColor.CubeMap.lightSpecularColor.environmentLights[1] [Stage: None, Slot: (-1--1)]
@R    CubeMap_id169 => RoughnessCubeMapEnvironmentColor.CubeMap.lightSpecularColor.environmentLights[1] [Stage: None, Slot: (-1--1)]
@R    CubeMap_id180 => RoughnessCubeMapEnvironmentColor.CubeMap.lightSpecularColor.environmentLights[2] [Stage: None, Slot: (-1--1)]
@R    CubeMap_id180 => RoughnessCubeMapEnvironmentColor.CubeMap.lightSpecularColor.environmentLights[2] [Stage: None, Slot: (-1--1)]
@R    PerDraw => PerDraw [Stage: Vertex, Slot: (0-0)]
@R    PerView => PerView [Stage: Vertex, Slot: (1-1)]
@R    LightClusters_id97 => LightClustered.LightClusters [Stage: Pixel, Slot: (0-0)]
@R    LightIndices_id98 => LightClustered.LightIndices [Stage: Pixel, Slot: (1-1)]
@R    PointLights_id102 => LightClusteredPointGroup.PointLights [Stage: Pixel, Slot: (2-2)]
@R    SpotLights_id103 => LightClusteredSpotGroup.SpotLights [Stage: Pixel, Slot: (3-3)]
@R    PerDraw => PerDraw [Stage: Pixel, Slot: (0-0)]
@R    PerMaterial => PerMaterial [Stage: Pixel, Slot: (1-1)]
@R    PerView => PerView [Stage: Pixel, Slot: (2-2)]
***************************
*****     Sources     *****
***************************
@S    ShaderBase => 01e372056ff6c06edab8e988414a8f75
@S    ShaderBaseStream => 91c0ea8aae0a45ca00578a4084fa3607
@S    ShadingBase => ffb632df632721ce2c25f1b6f505fc1e
@S    ComputeColor => 4f34177c1ace328c0f5ae9b3e880dac2
@S    TransformationBase => 8b17025a11a061cbf806a590fecff713
@S    NormalStream => 901c352015317e9dff7f9aef777dc0c7
@S    TransformationWAndVP => 4852381ef91335cbf665eca43a0eb5ee
@S    PositionStream4 => 978c413387a2cb385e61d6d096be6d21
@S    PositionHStream4 => 6a2c2e4bcfc42de2c49c69f480ead970
@S    Transformation => 6c40fce14b58a620257103f7d0f4c093
@S    NormalFromMesh => d6eccd1ce6aae826e4049d4e94b581a4
@S    NormalBase => 3e598ef48925debde0053f3469205f5f
@S    NormalUpdate => a1cefe3f75303b1c5857928c714e12bf
@S    MaterialSurfacePixelStageCompositor => 69d0c95661b93268f264d740adf7b8f4
@S    PositionStream => f29f571241be3db9dd2ec9688eb1db49
@S    MaterialPixelShadingStream => 9d583be145776e49c5a8377a978b0658
@S    MaterialPixelStream => ba54d20041c3b54e07f20babb85f60bb
@S    MaterialStream => 5add3babbb46e617235ca05953485ed8
@S    IStreamInitializer => 092b60c9fe32ce985421fcfe20a11072
@S    LightStream => 56c38b50a16fcb778c6eb6de86c307b5
@S    DirectLightGroupArray => eb6e08e566ca745bb06964c172175969
@S    DirectLightGroup => f340deae83183fca86789915a8f743c4
@S    ShadowGroup => 05578eeca4469db17e4a68e127e25a9f
@S    ShadowStream => 1adfec0b15bc9bf4d56e6be9b378a587
@S    TextureProjectionGroup => 48db91a31cbf2a9150d13547051adb85
@S    EnvironmentLightArray => 02bffee7c5265d75553f30029f1fbf48
@S    EnvironmentLight => aec79836f4a6429ad55d8efc9971a8d7
@S    IMaterialSurface => 993d0e1a3a0209ce4df727250c905ab8
@S    LightDirectionalGroup => ac53667662784343d421b00fac059f9a
@S    DirectLightGroupPerView => 8e17a5b08d2245289bb7a2dfb37a8dd8
@S    LightDirectional => a342c290a036eb9fbb9d93bdd7fa32de
@S    LightClusteredPointGroup => daa4f884feed02bad152ef53f5820771
@S    LightClustered => f939f2ab47789c1fd022283bcadfa42e
@S    ScreenPositionBase => 447b80ee2709564be56e617346288f78
@S    Camera => 68de88612bfb3b0a92e9082b82b993a9
@S    LightPoint => ffca22202bf34deee191bc36e95d9ccf
@S    LightUtil => 21256a4364432cc656447ee541333792
@S    LightClusteredSpotGroup => ae51eef97b7a5ad4cf63e15461308bdd
@S    LightSpot => ffc8735093683cafbdbc1f59643b9b8f
@S    SpotLightDataInternalShader => 5f0bd728a1c56b1def3b26d3859f6876
@S    LightSpotAttenuationDefault => 3764b4b242d09ba41b1a9cd5678ddf55
@S    LightSimpleAmbient => 6b7c24748a4d72e5eb22ae12802d3b2d
@S    LightSkyboxShader => e57c1a10760a5036091dc1dcff962ae4
@S    IComputeEnvironmentColor => 0783535f47b4ba224b058b4b2ef41e20
@S    SphericalHarmonicsEnvironmentColor => d0c7f35eaec52e1a0fb822bc020d370a
@S    SphericalHarmonicsUtils => cdd3d002e9050bbda686218976dc0951
@S    Math => 395aa210901b9e0783594d1b4fb0a441
@S    RoughnessCubeMapEnvironmentColor => 0f1c10a9dec458f93fadc022cb19144e
@S    Texturing => 6605f68230266eff2bc8b4e8102ede6b
@S    MaterialSurfaceArray => 6c056e27887290fe2f9862991714228f
@S    MaterialSurfaceDiffuse => 4130aff8a17174b1b1457299185be45e
@S    IMaterialSurfacePixel => efa5da7adb861031599778e9829daca8
@S    ComputeColorConstantColorLink => 66070b757702cedd6874020f33fef9bf
@S    MaterialSurfaceLightingAndShading => 56a8877cd2af395727b11f69c761ad41
@S    IMaterialSurfaceShading => 86261e2a0ca0229f0d6ddf87490e5967
@S    MaterialSurfaceShadingDiffuseLambert => 9adb7783d6ea173f9f8ffdfa5c141256
@S    GBufferOutputSubsurfaceScatteringMaterialIndex => 5df9471bf02401dc5db0de4bbd3d8abb
***************************
*****     Stages      *****
***************************
@G    Vertex => 934d223d6907a61625e2b0eaad985654
//
// Generated by Microsoft (R) HLSL Shader Compiler 10.1
//
//
// Buffer Definitions: 
//
// cbuffer PerDraw
// {
//
//   float4x4 World_id32;               // Offset:    0 Size:    64
//   float4x4 WorldInverse_id33;        // Offset:   64 Size:    64 [unused]
//   float4x4 WorldInverseTranspose_id34;// Offset:  128 Size:    64
//   float4x4 WorldView_id35;           // Offset:  192 Size:    64 [unused]
//   float4x4 WorldViewInverse_id36;    // Offset:  256 Size:    64 [unused]
//   float4x4 WorldViewProjection_id37; // Offset:  320 Size:    64 [unused]
//   float3 WorldScale_id38;            // Offset:  384 Size:    12 [unused]
//   float4 EyeMS_id39;                 // Offset:  400 Size:    16 [unused]
//   uint MaterialIndex_id83;           // Offset:  416 Size:     4 [unused]
//
// }
//
// cbuffer PerView
// {
//
//   float4x4 View_id25;                // Offset:    0 Size:    64 [unused]
//   float4x4 ViewInverse_id26;         // Offset:   64 Size:    64 [unused]
//   float4x4 Projection_id27;          // Offset:  128 Size:    64 [unused]
//   float4x4 ProjectionInverse_id28;   // Offset:  192 Size:    64 [unused]
//   float4x4 ViewProjection_id29;      // Offset:  256 Size:    64
//   float2 ProjScreenRay_id30;         // Offset:  320 Size:     8 [unused]
//   float4 Eye_id31;                   // Offset:  336 Size:    16 [unused]
//   float NearClipPlane_id90;          // Offset:  352 Size:     4 [unused]
//      = 0x3f800000 
//   float FarClipPlane_id91;           // Offset:  356 Size:     4 [unused]
//      = 0x42c80000 
//   float2 ZProjection_id92;           // Offset:  360 Size:     8 [unused]
//   float2 ViewSize_id93;              // Offset:  368 Size:     8 [unused]
//   float AspectRatio_id94;            // Offset:  376 Size:     4 [unused]
//   float4 _padding_PerView_Default;   // Offset:  384 Size:    16 [unused]
//   int LightCount_id86;               // Offset:  400 Size:     4 [unused]
//   
//   struct DirectionalLightData
//   {
//       
//       float3 DirectionWS;            // Offset:  416
//       float3 Color;                  // Offset:  432
//
//   } Lights_id88[8];                  // Offset:  416 Size:   252 [unused]
//   float ClusterDepthScale_id99;      // Offset:  668 Size:     4 [unused]
//   float ClusterDepthBias_id100;      // Offset:  672 Size:     4 [unused]
//   float2 ClusterStride_id101;        // Offset:  676 Size:     8 [unused]
//   float3 AmbientLight_id104;         // Offset:  688 Size:    12 [unused]
//   float3 SphericalColors_id109[9];   // Offset:  704 Size:   140 [unused]
//   float MipCount_id168;              // Offset:  844 Size:     4 [unused]
//   float4x4 SkyMatrix_id170;          // Offset:  848 Size:    64 [unused]
//   float Intensity_id171;             // Offset:  912 Size:     4 [unused]
//   float3 SphericalColors_id178[9];   // Offset:  928 Size:   140 [unused]
//   float MipCount_id179;              // Offset: 1068 Size:     4 [unused]
//   float4x4 SkyMatrix_id181;          // Offset: 1072 Size:    64 [unused]
//   float Intensity_id182;             // Offset: 1136 Size:     4 [unused]
//   float4 _padding_PerView_Lighting;  // Offset: 1152 Size:    16 [unused]
//
// }
//
//
// Resource Bindings:
//
// Name                                 Type  Format         Dim      HLSL Bind  Count
// ------------------------------ ---------- ------- ----------- -------------- ------
// PerDraw                           cbuffer      NA          NA            cb0      1 
// PerView                           cbuffer      NA          NA            cb1      1 
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
// POSITION_WS              0   xyzw        0     NONE   float   xyzw
// SV_Position              0   xyzw        1      POS   float   xyzw
// NORMALWS                 0   xyz         2     NONE   float   xyz 
// SCREENPOSITION_ID89_SEM     0   xyzw        3     NONE   float   xyzw
//
vs_5_0
dcl_globalFlags refactoringAllowed
dcl_constantbuffer CB0[11], immediateIndexed
dcl_constantbuffer CB1[20], immediateIndexed
dcl_input v0.xyzw
dcl_input v1.xyz
dcl_output o0.xyzw
dcl_output_siv o1.xyzw, position
dcl_output o2.xyz
dcl_output o3.xyzw
dcl_temps 2
//
// Initial variable locations:
//   v0.x <- __input__.Position_id21.x; v0.y <- __input__.Position_id21.y; v0.z <- __input__.Position_id21.z; v0.w <- __input__.Position_id21.w; 
//   v1.x <- __input__.meshNormal_id16.x; v1.y <- __input__.meshNormal_id16.y; v1.z <- __input__.meshNormal_id16.z; 
//   o3.x <- <VSMain return value>.ScreenPosition_id89.x; o3.y <- <VSMain return value>.ScreenPosition_id89.y; o3.z <- <VSMain return value>.ScreenPosition_id89.z; o3.w <- <VSMain return value>.ScreenPosition_id89.w; 
//   o2.x <- <VSMain return value>.normalWS_id19.x; o2.y <- <VSMain return value>.normalWS_id19.y; o2.z <- <VSMain return value>.normalWS_id19.z; 
//   o1.x <- <VSMain return value>.ShadingPosition_id0.x; o1.y <- <VSMain return value>.ShadingPosition_id0.y; o1.z <- <VSMain return value>.ShadingPosition_id0.z; o1.w <- <VSMain return value>.ShadingPosition_id0.w; 
//   o0.x <- <VSMain return value>.PositionWS_id22.x; o0.y <- <VSMain return value>.PositionWS_id22.y; o0.z <- <VSMain return value>.PositionWS_id22.z; o0.w <- <VSMain return value>.PositionWS_id22.w
//
#line 852 "C:\Users\elektromeier\Desktop\VomAmt\VomAmtVR\lib\log\shader_VLEffectMain_187ef08de19bd001b15660637d3a85d7.hlsl"
dp4 r0.x, v0.xyzw, cb0[0].xyzw  // r0.x <- streams.PositionWS_id22.x
dp4 r0.y, v0.xyzw, cb0[1].xyzw  // r0.y <- streams.PositionWS_id22.y
dp4 r0.z, v0.xyzw, cb0[2].xyzw  // r0.z <- streams.PositionWS_id22.z
dp4 r0.w, v0.xyzw, cb0[3].xyzw  // r0.w <- streams.PositionWS_id22.w

#line 937
mov o0.xyzw, r0.xyzw

#line 815
dp4 r1.x, r0.xyzw, cb1[16].xyzw  // r1.x <- <ComputeShadingPosition_id11 return value>.x
dp4 r1.y, r0.xyzw, cb1[17].xyzw  // r1.y <- <ComputeShadingPosition_id11 return value>.y
dp4 r1.z, r0.xyzw, cb1[18].xyzw  // r1.z <- <ComputeShadingPosition_id11 return value>.z
dp4 r1.w, r0.xyzw, cb1[19].xyzw  // r1.w <- <ComputeShadingPosition_id11 return value>.w

#line 937
mov o1.xyzw, r1.xyzw
mov o3.xyzw, r1.xyzw

#line 892
dp3 o2.x, v1.xyzx, cb0[8].xyzx
dp3 o2.y, v1.xyzx, cb0[9].xyzx
dp3 o2.z, v1.xyzx, cb0[10].xyzx

#line 937
ret 
// Approximately 15 instruction slots used
@G    Pixel => c33cc90873e29f7f1b27c11df7a3428e
//
// Generated by Microsoft (R) HLSL Shader Compiler 10.1
//
//
// Buffer Definitions: 
//
// cbuffer PerDraw
// {
//
//   float4x4 World_id32;               // Offset:    0 Size:    64 [unused]
//   float4x4 WorldInverse_id33;        // Offset:   64 Size:    64 [unused]
//   float4x4 WorldInverseTranspose_id34;// Offset:  128 Size:    64 [unused]
//   float4x4 WorldView_id35;           // Offset:  192 Size:    64 [unused]
//   float4x4 WorldViewInverse_id36;    // Offset:  256 Size:    64 [unused]
//   float4x4 WorldViewProjection_id37; // Offset:  320 Size:    64 [unused]
//   float3 WorldScale_id38;            // Offset:  384 Size:    12 [unused]
//   float4 EyeMS_id39;                 // Offset:  400 Size:    16 [unused]
//   uint MaterialIndex_id83;           // Offset:  416 Size:     4
//
// }
//
// cbuffer PerMaterial
// {
//
//   float4 constantColor_id185;        // Offset:    0 Size:    16
//
// }
//
// cbuffer PerView
// {
//
//   float4x4 View_id25;                // Offset:    0 Size:    64 [unused]
//   float4x4 ViewInverse_id26;         // Offset:   64 Size:    64 [unused]
//   float4x4 Projection_id27;          // Offset:  128 Size:    64 [unused]
//   float4x4 ProjectionInverse_id28;   // Offset:  192 Size:    64 [unused]
//   float4x4 ViewProjection_id29;      // Offset:  256 Size:    64 [unused]
//   float2 ProjScreenRay_id30;         // Offset:  320 Size:     8 [unused]
//   float4 Eye_id31;                   // Offset:  336 Size:    16 [unused]
//   float NearClipPlane_id90;          // Offset:  352 Size:     4 [unused]
//      = 0x3f800000 
//   float FarClipPlane_id91;           // Offset:  356 Size:     4 [unused]
//      = 0x42c80000 
//   float2 ZProjection_id92;           // Offset:  360 Size:     8
//   float2 ViewSize_id93;              // Offset:  368 Size:     8 [unused]
//   float AspectRatio_id94;            // Offset:  376 Size:     4 [unused]
//   float4 _padding_PerView_Default;   // Offset:  384 Size:    16 [unused]
//   int LightCount_id86;               // Offset:  400 Size:     4
//   
//   struct DirectionalLightData
//   {
//       
//       float3 DirectionWS;            // Offset:  416
//       float3 Color;                  // Offset:  432
//
//   } Lights_id88[8];                  // Offset:  416 Size:   252
//   float ClusterDepthScale_id99;      // Offset:  668 Size:     4
//   float ClusterDepthBias_id100;      // Offset:  672 Size:     4
//   float2 ClusterStride_id101;        // Offset:  676 Size:     8
//   float3 AmbientLight_id104;         // Offset:  688 Size:    12
//   float3 SphericalColors_id109[9];   // Offset:  704 Size:   140
//   float MipCount_id168;              // Offset:  844 Size:     4 [unused]
//   float4x4 SkyMatrix_id170;          // Offset:  848 Size:    64
//   float Intensity_id171;             // Offset:  912 Size:     4
//   float3 SphericalColors_id178[9];   // Offset:  928 Size:   140
//   float MipCount_id179;              // Offset: 1068 Size:     4 [unused]
//   float4x4 SkyMatrix_id181;          // Offset: 1072 Size:    64
//   float Intensity_id182;             // Offset: 1136 Size:     4
//   float4 _padding_PerView_Lighting;  // Offset: 1152 Size:    16 [unused]
//
// }
//
//
// Resource Bindings:
//
// Name                                 Type  Format         Dim      HLSL Bind  Count
// ------------------------------ ---------- ------- ----------- -------------- ------
// LightClusters_id97                texture   uint2          3d             t0      1 
// LightIndices_id98                 texture    uint         buf             t1      1 
// PointLights_id102                 texture  float4         buf             t2      1 
// SpotLights_id103                  texture  float4         buf             t3      1 
// PerDraw                           cbuffer      NA          NA            cb0      1 
// PerMaterial                       cbuffer      NA          NA            cb1      1 
// PerView                           cbuffer      NA          NA            cb2      1 
//
//
//
// Input signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// POSITION_WS              0   xyzw        0     NONE   float   xyz 
// SV_Position              0   xyzw        1      POS   float     z 
// NORMALWS                 0   xyz         2     NONE   float   xyz 
// SCREENPOSITION_ID89_SEM     0   xyzw        3     NONE   float   xy w
// SV_IsFrontFace           0   x           4    FFACE    uint   x   
//
//
// Output signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// SV_Target                0   xyzw        0   TARGET   float   xyzw
// SV_Target                1   xyzw        1   TARGET   float   xyzw
//
ps_5_0
dcl_globalFlags refactoringAllowed
dcl_constantbuffer CB0[27], immediateIndexed
dcl_constantbuffer CB1[1], immediateIndexed
dcl_constantbuffer CB2[72], dynamicIndexed
dcl_resource_texture3d (uint,uint,uint,uint) t0
dcl_resource_buffer (uint,uint,uint,uint) t1
dcl_resource_buffer (float,float,float,float) t2
dcl_resource_buffer (float,float,float,float) t3
dcl_input_ps linear v0.xyz
dcl_input_ps_siv linear noperspective v1.z, position
dcl_input_ps linear v2.xyz
dcl_input_ps linear v3.xyw
dcl_input_ps_sgv constant v4.x, is_front_face
dcl_output o0.xyzw
dcl_output o1.xyzw
dcl_temps 10
//
// Initial variable locations:
//   v0.x <- __input__.PositionWS_id22.x; v0.y <- __input__.PositionWS_id22.y; v0.z <- __input__.PositionWS_id22.z; v0.w <- __input__.PositionWS_id22.w; 
//   v1.x <- __input__.ShadingPosition_id0.x; v1.y <- __input__.ShadingPosition_id0.y; v1.z <- __input__.ShadingPosition_id0.z; v1.w <- __input__.ShadingPosition_id0.w; 
//   v2.x <- __input__.normalWS_id19.x; v2.y <- __input__.normalWS_id19.y; v2.z <- __input__.normalWS_id19.z; 
//   v3.x <- __input__.ScreenPosition_id89.x; v3.y <- __input__.ScreenPosition_id89.y; v3.z <- __input__.ScreenPosition_id89.z; v3.w <- __input__.ScreenPosition_id89.w; 
//   v4.x <- __input__.IsFrontFace_id1; 
//   o1.x <- <PSMain return value>.ColorTarget1_id3.x; o1.y <- <PSMain return value>.ColorTarget1_id3.y; o1.z <- <PSMain return value>.ColorTarget1_id3.z; o1.w <- <PSMain return value>.ColorTarget1_id3.w; 
//   o0.x <- <PSMain return value>.ColorTarget_id2.x; o0.y <- <PSMain return value>.ColorTarget_id2.y; o0.z <- <PSMain return value>.ColorTarget_id2.z; o0.w <- <PSMain return value>.ColorTarget_id2.w
//
#line 918 "C:\Users\elektromeier\Desktop\VomAmt\VomAmtVR\lib\log\shader_VLEffectMain_187ef08de19bd001b15660637d3a85d7.hlsl"
div r0.xy, v3.xyxx, v3.wwww  // r0.x <- streams.ScreenPosition_id89.x; r0.y <- streams.ScreenPosition_id89.y

#line 886
dp3 r0.z, v2.xyzx, v2.xyzx
lt r0.w, l(0.000000), r0.z

#line 887
rsq r0.z, r0.z
mul r1.xyz, r0.zzzz, v2.xyzx  // r1.x <- streams.normalWS_id19.x; r1.y <- streams.normalWS_id19.y; r1.z <- streams.normalWS_id19.z
movc r1.xyz, r0.wwww, r1.xyzx, v2.xyzx

#line 675
movc r1.xyz, v4.xxxx, r1.xyzx, -r1.xyzx  // r1.x <- streams.normalWS_id19.x; r1.y <- streams.normalWS_id19.y; r1.z <- streams.normalWS_id19.z

#line 689
mov r2.xyz, r1.xyzx  // r2.x <- streams.normalWS_id19.x; r2.y <- streams.normalWS_id19.y; r2.z <- streams.normalWS_id19.z
mov r3.xyz, cb1[0].xyzx  // r3.x <- streams.matDiffuseVisible_id69.x; r3.y <- streams.matDiffuseVisible_id69.y; r3.z <- streams.matDiffuseVisible_id69.z
mov r4.xyz, l(0,0,0,0)  // r4.x <- directLightingContribution.x; r4.y <- directLightingContribution.y; r4.z <- directLightingContribution.z
mov r0.z, l(0)  // r0.z <- i
loop 
  ige r0.w, r0.z, l(8)
  breakc_nz r0.w

#line 691
  ige r0.w, r0.z, cb2[25].x
  if_nz r0.w

#line 693
    break 

#line 694
  endif 

#line 505
  ishl r0.w, r0.z, l(1)

#line 615
  dp3 r1.w, r2.xyzx, -cb2[r0.w + 26].xyzx
  max r1.w, r1.w, l(0.000100)  // r1.w <- streams.NdotL_id49

#line 617
  mul r5.xyz, r1.wwww, cb2[r0.w + 27].xyzx  // r5.x <- streams.lightColorNdotL_id44.x; r5.y <- streams.lightColorNdotL_id44.y; r5.z <- streams.lightColorNdotL_id44.z

#line 603
  mul r5.xyz, r5.xyzx, r3.xyzx

#line 699
  mad r4.xyz, r5.xyzx, l(0.318310, 0.318310, 0.318310, 0.000000), r4.xyzx

#line 689
  iadd r0.z, r0.z, l(1)

#line 701
endloop 

#line 484
add r0.z, v1.z, -cb2[22].z
div r0.z, cb2[22].w, r0.z  // r0.z <- depth

#line 485
mad r0.xy, r0.xyxx, l(1.000000, -1.000000, 0.000000, 0.000000), l(1.000000, 1.000000, 0.000000, 0.000000)
mul r0.xy, r0.xyxx, cb2[42].yzyy

#line 486
mad r0.z, r0.z, cb2[41].w, cb2[42].x
log r0.z, r0.z
max r0.z, r0.z, l(0.000000)

#line 487
mul r0.xy, r0.xyxx, l(0.500000, 0.500000, 0.000000, 0.000000)

#line 486
ftoi r2.xyz, r0.xyzx  // r2.z <- slice

#line 487
mov r2.w, l(0)
ld_indexable(texture3d)(uint,uint,uint,uint) r0.xy, r2.xyzw, t0.xyzw  // r0.x <- streams.lightData_id95.x; r0.y <- streams.lightData_id95.y

#line 594
and r0.z, r0.y, l(0x0000ffff)  // r0.z <- <GetMaxLightCount_id136 return value>

#line 709
mov r2.xyz, r1.xyzx  // r2.x <- streams.normalWS_id19.x; r2.y <- streams.normalWS_id19.y; r2.z <- streams.normalWS_id19.z
mov r2.w, v0.x  // r2.w <- streams.PositionWS_id22.x
mov r3.yz, v0.yyzy  // r3.y <- streams.PositionWS_id22.y; r3.z <- streams.PositionWS_id22.z
mov r5.xyz, cb1[0].xyzx  // r5.x <- streams.matDiffuseVisible_id69.x; r5.y <- streams.matDiffuseVisible_id69.y; r5.z <- streams.matDiffuseVisible_id69.z
mov r6.xyz, r4.xyzx  // r6.x <- directLightingContribution.x; r6.y <- directLightingContribution.y; r6.z <- directLightingContribution.z
mov r7.x, r0.x  // r7.x <- streams.lightIndex_id96
mov r0.w, l(0)  // r0.w <- i
loop 
  ige r1.w, r0.w, r0.z
  breakc_nz r1.w

#line 711
  if_nz r1.w

#line 713
    break 

#line 714
  endif 

#line 471
  ld_indexable(buffer)(uint,uint,uint,uint) r1.w, r7.xxxx, t1.yzwx  // r1.w <- realLightIndex

#line 472
  iadd r7.x, r7.x, l(1)  // r7.x <- streams.lightIndex_id96

#line 474
  ishl r3.w, r1.w, l(1)
  ld_indexable(buffer)(float,float,float,float) r8.xyzw, r3.wwww, t2.xyzw  // r8.x <- pointLight1.x; r8.y <- pointLight1.y; r8.z <- pointLight1.z; r8.w <- pointLight1.w

#line 475
  bfi r1.w, l(31), l(1), r1.w, l(1)
  ld_indexable(buffer)(float,float,float,float) r7.yzw, r1.wwww, t2.wxyz  // r7.y <- pointLight2.x; r7.z <- pointLight2.y; r7.w <- pointLight2.z

#line 320
  mov r3.x, r2.w
  add r8.xyz, -r3.xyzx, r8.xyzx  // r8.x <- lightVector.x; r8.y <- lightVector.y; r8.z <- lightVector.z

#line 321
  dp3 r1.w, r8.xyzx, r8.xyzx
  sqrt r3.x, r1.w  // r3.x <- lightVectorLength

#line 322
  div r8.xyz, r8.xyzx, r3.xxxx  // r8.x <- lightVectorNorm.x; r8.y <- lightVectorNorm.y; r8.z <- lightVectorNorm.z

#line 301
  max r3.x, r1.w, l(0.000100)
  div r3.x, l(1.000000, 1.000000, 1.000000, 1.000000), r3.x  // r3.x <- attenuation

#line 280
  mul r1.w, r8.w, r1.w  // r1.w <- factor

#line 281
  mad r1.w, -r1.w, r1.w, l(1.000000)
  max r1.w, r1.w, l(0.000000)  // r1.w <- smoothFactor

#line 282
  mul r1.w, r1.w, r1.w  // r1.w <- <SmoothDistanceAttenuation_id59 return value>

#line 302
  mul r1.w, r1.w, r3.x  // r1.w <- attenuation

#line 580
  dp3 r3.x, r2.xyzx, r8.xyzx
  max r3.x, r3.x, l(0.000100)  // r3.x <- streams.NdotL_id49

#line 582
  mul r7.yzw, r1.wwww, r7.yyzw
  mul r7.yzw, r3.xxxx, r7.yyzw  // r7.y <- streams.lightColorNdotL_id44.x; r7.z <- streams.lightColorNdotL_id44.y; r7.w <- streams.lightColorNdotL_id44.z

#line 603
  mul r7.yzw, r7.yyzw, r5.xxyz

#line 719
  mad r6.xyz, r7.yzwy, l(0.318310, 0.318310, 0.318310, 0.000000), r6.xyzx

#line 709
  iadd r0.w, r0.w, l(1)

#line 721
endloop   // r7.x <- streams.lightIndex_id96

#line 572
ushr r0.x, r0.y, l(16)  // r0.x <- <GetMaxLightCount_id148 return value>

#line 729
mov r0.yzw, v0.xxyz  // r0.y <- streams.PositionWS_id22.x; r0.z <- streams.PositionWS_id22.y; r0.w <- streams.PositionWS_id22.z
mov r2.xyz, r1.xyzx
mov r3.xyz, cb1[0].xyzx  // r3.x <- streams.matDiffuseVisible_id69.x; r3.y <- streams.matDiffuseVisible_id69.y; r3.z <- streams.matDiffuseVisible_id69.z
mov r4.xyz, r6.xyzx  // r4.x <- directLightingContribution.x; r4.y <- directLightingContribution.y; r4.z <- directLightingContribution.z
mov r1.w, r7.x  // r1.w <- streams.lightIndex_id96
mov r2.w, l(0)  // r2.w <- i
loop 
  ige r3.w, r2.w, r0.x
  breakc_nz r3.w

#line 731
  if_nz r3.w

#line 733
    break 

#line 734
  endif 

#line 443
  ld_indexable(buffer)(uint,uint,uint,uint) r3.w, r1.wwww, t1.yzwx  // r3.w <- realLightIndex

#line 444
  iadd r1.w, r1.w, l(1)  // r1.w <- streams.lightIndex_id96

#line 446
  ishl r4.w, r3.w, l(2)
  ld_indexable(buffer)(float,float,float,float) r5.xyz, r4.wwww, t3.xyzw  // r5.x <- spotLight1.x; r5.y <- spotLight1.y; r5.z <- spotLight1.z

#line 449
  bfi r7.yzw, l(0, 30, 30, 30), l(0, 2, 2, 2), r3.wwww, l(0, 1, 2, 3)

#line 447
  ld_indexable(buffer)(float,float,float,float) r8.xyz, r7.yyyy, t3.xyzw  // r8.x <- spotLight2.x; r8.y <- spotLight2.y; r8.z <- spotLight2.z

#line 448
  ld_indexable(buffer)(float,float,float,float) r9.xyz, r7.zzzz, t3.xyzw  // r9.x <- spotLight3.x; r9.y <- spotLight3.y; r9.z <- spotLight3.z

#line 449
  ld_indexable(buffer)(float,float,float,float) r7.yzw, r7.wwww, t3.wxyz  // r7.y <- spotLight4.x; r7.z <- spotLight4.y; r7.w <- spotLight4.z

#line 307
  add r5.xyz, -r0.yzwy, r5.xyzx  // r5.x <- lightVector.x; r5.y <- lightVector.y; r5.z <- lightVector.z

#line 308
  dp3 r3.w, r5.xyzx, r5.xyzx
  sqrt r4.w, r3.w  // r4.w <- lightVectorLength

#line 309
  div r5.xyz, r5.xyzx, r4.wwww  // r5.x <- lightVectorNorm.x; r5.y <- lightVectorNorm.y; r5.z <- lightVectorNorm.z

#line 294
  max r4.w, r3.w, l(0.000100)
  div r4.w, l(1.000000, 1.000000, 1.000000, 1.000000), r4.w  // r4.w <- attenuation

#line 274
  mul r3.w, r9.z, r3.w  // r3.w <- factor

#line 275
  mad r3.w, -r3.w, r3.w, l(1.000000)
  max r3.w, r3.w, l(0.000000)  // r3.w <- smoothFactor

#line 276
  mul r3.w, r3.w, r3.w  // r3.w <- <SmoothDistanceAttenuation_id70 return value>

#line 295
  mul r3.w, r3.w, r4.w  // r3.w <- attenuation

#line 286
  dp3 r4.w, -r8.xyzx, r5.xyzx  // r4.w <- cd

#line 287
  mad_sat r4.w, r4.w, r9.x, r9.y  // r4.w <- attenuation

#line 288
  mul r4.w, r4.w, r4.w

#line 315
  mul r3.w, r3.w, r4.w  // r3.w <- attenuation

#line 558
  dp3 r4.w, r2.xyzx, r5.xyzx
  max r4.w, r4.w, l(0.000100)  // r4.w <- streams.NdotL_id49

#line 560
  mul r5.xyz, r3.wwww, r7.yzwy
  mul r5.xyz, r4.wwww, r5.xyzx  // r5.x <- streams.lightColorNdotL_id44.x; r5.y <- streams.lightColorNdotL_id44.y; r5.z <- streams.lightColorNdotL_id44.z

#line 603
  mul r5.xyz, r3.xyzx, r5.xyzx

#line 739
  mad r4.xyz, r5.xyzx, l(0.318310, 0.318310, 0.318310, 0.000000), r4.xyzx

#line 729
  iadd r2.w, r2.w, l(1)

#line 741
endloop   // r1.w <- streams.lightIndex_id96

#line 535
dp3 r0.x, r1.xyzx, cb2[53].xyzx  // r0.x <- sampleDirection.x
dp3 r0.y, r1.xyzx, cb2[54].xyzx  // r0.y <- sampleDirection.y
dp3 r0.z, r1.xyzx, cb2[55].xyzx  // r0.z <- sampleDirection.z

#line 357
mul r0.w, r0.y, r0.y  // r0.w <- y2

#line 358
mul r1.w, r0.z, r0.z  // r1.w <- z2

#line 362
mad r2.xyz, cb2[45].xyzx, r0.yyyy, cb2[44].xyzx  // r2.x <- color.x; r2.y <- color.y; r2.z <- color.z

#line 363
mad r2.xyz, cb2[46].xyzx, -r0.zzzz, r2.xyzx

#line 364
mad r2.xyz, cb2[47].xyzx, r0.xxxx, r2.xyzx

#line 367
mul r3.xyz, r0.yyyy, cb2[48].xyzx
mad r2.xyz, r3.xyzx, r0.xxxx, r2.xyzx

#line 368
mul r3.xyz, r0.yyyy, cb2[49].xyzx
mad r2.xyz, r3.xyzx, -r0.zzzz, r2.xyzx

#line 369
mad r0.y, r1.w, l(3.000000), l(-1.000000)
mad r2.xyz, cb2[50].xyzx, r0.yyyy, r2.xyzx

#line 370
mul r3.xyz, r0.xxxx, cb2[51].xyzx
mad r2.xyz, r3.xyzx, -r0.zzzz, r2.xyzx

#line 371
mad r0.x, r0.x, r0.x, -r0.w
mad r0.xyz, cb2[52].xyzx, r0.xxxx, r2.xyzx  // r0.x <- color.x; r0.y <- color.y; r0.z <- color.z

#line 537
mul r0.xyz, r0.xyzx, cb2[57].xxxx  // r0.x <- streams.envLightDiffuseColor_id47.x; r0.y <- streams.envLightDiffuseColor_id47.y; r0.z <- streams.envLightDiffuseColor_id47.z

#line 546
mul r0.xyz, r0.xyzx, cb1[0].xyzx  // r0.x <- <ComputeEnvironmentLightContribution_id211 return value>.x; r0.y <- <ComputeEnvironmentLightContribution_id211 return value>.y; r0.z <- <ComputeEnvironmentLightContribution_id211 return value>.z

#line 757
mad r0.xyz, cb1[0].xyzx, cb2[43].xyzx, r0.xyzx  // r0.x <- environmentLightingContribution.x; r0.y <- environmentLightingContribution.y; r0.z <- environmentLightingContribution.z

#line 523
dp3 r0.w, r1.xyzx, cb2[67].xyzx  // r0.w <- sampleDirection.x
dp3 r1.w, r1.xyzx, cb2[68].xyzx  // r1.w <- sampleDirection.y
dp3 r1.x, r1.xyzx, cb2[69].xyzx  // r1.x <- sampleDirection.z

#line 332
mul r1.yz, r1.wwxw, r1.wwxw  // r1.y <- y2; r1.z <- z2

#line 337
mad r2.xyz, cb2[59].xyzx, r1.wwww, cb2[58].xyzx  // r2.x <- color.x; r2.y <- color.y; r2.z <- color.z

#line 338
mad r2.xyz, cb2[60].xyzx, -r1.xxxx, r2.xyzx

#line 339
mad r2.xyz, cb2[61].xyzx, r0.wwww, r2.xyzx

#line 342
mul r3.xyz, r1.wwww, cb2[62].xyzx
mad r2.xyz, r3.xyzx, r0.wwww, r2.xyzx

#line 343
mul r3.xyz, r1.wwww, cb2[63].xyzx
mad r2.xyz, r3.xyzx, -r1.xxxx, r2.xyzx

#line 344
mad r1.z, r1.z, l(3.000000), l(-1.000000)
mad r2.xyz, cb2[64].xyzx, r1.zzzz, r2.xyzx

#line 345
mul r3.xyz, r0.wwww, cb2[65].xyzx
mad r1.xzw, r3.xxyz, -r1.xxxx, r2.xxyz  // r1.x <- color.x; r1.z <- color.y; r1.w <- color.z

#line 346
mad r0.w, r0.w, r0.w, -r1.y
mad r1.xyz, cb2[66].xyzx, r0.wwww, r1.xzwx  // r1.y <- color.y; r1.z <- color.z

#line 525
mul r1.xyz, r1.xyzx, cb2[71].xxxx  // r1.x <- streams.envLightDiffuseColor_id47.x; r1.y <- streams.envLightDiffuseColor_id47.y; r1.z <- streams.envLightDiffuseColor_id47.z

#line 765
mad r0.xyz, cb1[0].xyzx, r1.xyzx, r0.xyzx

#line 776
mad o0.xyz, r4.xyzx, l(3.141593, 3.141593, 3.141593, 0.000000), r0.xyzx

#line 856
utof o1.xyzw, cb0[26].xxxx

#line 923
mov o0.w, cb1[0].w
ret 
// Approximately 165 instruction slots used
***************************
*************************/
const static int TMaxLightCount_id87 = 8;
const static int TOrder_id106 = 3;
const static int TOrder_id108 = 3;
static const float PI_id188 = 3.14159265358979323846;
const static bool TIsEnergyConservative_id189 = false;
struct PS_STREAMS 
{
    float4 ScreenPosition_id89;
    float3 normalWS_id19;
    float4 PositionWS_id22;
    float4 ShadingPosition_id0;
    bool IsFrontFace_id1;
    float3 meshNormalWS_id17;
    float3 viewWS_id68;
    float3 shadingColor_id73;
    float matBlend_id40;
    float3 matNormal_id51;
    float4 matColorBase_id52;
    float4 matDiffuse_id53;
    float3 matDiffuseVisible_id69;
    float3 matSpecular_id55;
    float3 matSpecularVisible_id71;
    float matSpecularIntensity_id56;
    float matGlossiness_id54;
    float alphaRoughness_id70;
    float matAmbientOcclusion_id57;
    float matAmbientOcclusionDirectLightingFactor_id58;
    float matCavity_id59;
    float matCavityDiffuse_id60;
    float matCavitySpecular_id61;
    float4 matEmissive_id62;
    float matEmissiveIntensity_id63;
    float matScatteringStrength_id64;
    float2 matDiffuseSpecularAlphaBlend_id65;
    float3 matAlphaBlendColor_id66;
    float matAlphaDiscard_id67;
    float shadingColorAlpha_id74;
    float3 lightPositionWS_id41;
    float3 lightDirectionWS_id42;
    float3 lightColor_id43;
    float3 lightColorNdotL_id44;
    float3 lightSpecularColorNdotL_id45;
    float lightAttenuation_id46;
    float3 envLightDiffuseColor_id47;
    float3 envLightSpecularColor_id48;
    float lightDirectAmbientOcclusion_id50;
    float NdotL_id49;
    float NdotV_id72;
    float thicknessWS_id85;
    float3 shadowColor_id84;
    float3 H_id75;
    float NdotH_id76;
    float LdotH_id77;
    float VdotH_id78;
    uint2 lightData_id95;
    int lightIndex_id96;
    float4 ColorTarget_id2;
    float4 ColorTarget1_id3;
};
struct PS_OUTPUT 
{
    float4 ColorTarget_id2 : SV_Target0;
    float4 ColorTarget1_id3 : SV_Target1;
};
struct PS_INPUT 
{
    float4 PositionWS_id22 : POSITION_WS;
    float4 ShadingPosition_id0 : SV_Position;
    float3 normalWS_id19 : NORMALWS;
    float4 ScreenPosition_id89 : SCREENPOSITION_ID89_SEM;
    bool IsFrontFace_id1 : SV_IsFrontFace;
};
struct VS_STREAMS 
{
    float4 Position_id21;
    float3 meshNormal_id16;
    float4 PositionH_id24;
    float DepthVS_id23;
    float3 meshNormalWS_id17;
    float4 PositionWS_id22;
    float4 ShadingPosition_id0;
    float3 normalWS_id19;
    float4 ScreenPosition_id89;
};
struct VS_OUTPUT 
{
    float4 PositionWS_id22 : POSITION_WS;
    float4 ShadingPosition_id0 : SV_Position;
    float3 normalWS_id19 : NORMALWS;
    float4 ScreenPosition_id89 : SCREENPOSITION_ID89_SEM;
};
struct VS_INPUT 
{
    float4 Position_id21 : POSITION;
    float3 meshNormal_id16 : NORMAL;
};
struct DirectionalLightData 
{
    float3 DirectionWS;
    float3 Color;
};
struct PointLightData 
{
    float3 PositionWS;
    float InvSquareRadius;
    float3 Color;
};
struct PointLightDataInternal 
{
    float3 PositionWS;
    float InvSquareRadius;
    float3 Color;
};
struct SpotLightDataInternal 
{
    float3 PositionWS;
    float3 DirectionWS;
    float3 AngleOffsetAndInvSquareRadius;
    float3 Color;
};
struct SpotLightData 
{
    float3 PositionWS;
    float3 DirectionWS;
    float3 AngleOffsetAndInvSquareRadius;
    float3 Color;
};
cbuffer PerDraw 
{
    float4x4 World_id32;
    float4x4 WorldInverse_id33;
    float4x4 WorldInverseTranspose_id34;
    float4x4 WorldView_id35;
    float4x4 WorldViewInverse_id36;
    float4x4 WorldViewProjection_id37;
    float3 WorldScale_id38;
    float4 EyeMS_id39;
    uint MaterialIndex_id83;
};
cbuffer PerMaterial 
{
    float4 constantColor_id185;
};
cbuffer PerView 
{
    float4x4 View_id25;
    float4x4 ViewInverse_id26;
    float4x4 Projection_id27;
    float4x4 ProjectionInverse_id28;
    float4x4 ViewProjection_id29;
    float2 ProjScreenRay_id30;
    float4 Eye_id31;
    float NearClipPlane_id90 = 1.0f;
    float FarClipPlane_id91 = 100.0f;
    float2 ZProjection_id92;
    float2 ViewSize_id93;
    float AspectRatio_id94;
    float4 _padding_PerView_Default;
    int LightCount_id86;
    DirectionalLightData Lights_id88[TMaxLightCount_id87];
    float ClusterDepthScale_id99;
    float ClusterDepthBias_id100;
    float2 ClusterStride_id101;
    float3 AmbientLight_id104;
    float3 SphericalColors_id109[TOrder_id108 * TOrder_id108];
    float MipCount_id168;
    float4x4 SkyMatrix_id170;
    float Intensity_id171;
    float3 SphericalColors_id178[TOrder_id108 * TOrder_id108];
    float MipCount_id179;
    float4x4 SkyMatrix_id181;
    float Intensity_id182;
    float4 _padding_PerView_Lighting;
};
cbuffer Globals 
{
    float2 Texture0TexelSize_id111;
    float2 Texture1TexelSize_id113;
    float2 Texture2TexelSize_id115;
    float2 Texture3TexelSize_id117;
    float2 Texture4TexelSize_id119;
    float2 Texture5TexelSize_id121;
    float2 Texture6TexelSize_id123;
    float2 Texture7TexelSize_id125;
    float2 Texture8TexelSize_id127;
    float2 Texture9TexelSize_id129;
};
Texture2D Texture0_id110;
Texture2D Texture1_id112;
Texture2D Texture2_id114;
Texture2D Texture3_id116;
Texture2D Texture4_id118;
Texture2D Texture5_id120;
Texture2D Texture6_id122;
Texture2D Texture7_id124;
Texture2D Texture8_id126;
Texture2D Texture9_id128;
TextureCube TextureCube0_id130;
TextureCube TextureCube1_id131;
TextureCube TextureCube2_id132;
TextureCube TextureCube3_id133;
Texture3D Texture3D0_id134;
Texture3D Texture3D1_id135;
Texture3D Texture3D2_id136;
Texture3D Texture3D3_id137;
SamplerState Sampler_id138;
SamplerState PointSampler_id139 
{
    Filter = MIN_MAG_MIP_POINT;
};
SamplerState LinearSampler_id140 
{
    Filter = MIN_MAG_MIP_LINEAR;
};
SamplerState LinearBorderSampler_id141 
{
    Filter = MIN_MAG_MIP_LINEAR;
    AddressU = Border;
    AddressV = Border;
};
SamplerComparisonState LinearClampCompareLessEqualSampler_id142 
{
    Filter = COMPARISON_MIN_MAG_LINEAR_MIP_POINT;
    AddressU = Clamp;
    AddressV = Clamp;
    ComparisonFunc = LessEqual;
};
SamplerState AnisotropicSampler_id143 
{
    Filter = ANISOTROPIC;
};
SamplerState AnisotropicRepeatSampler_id144 
{
    Filter = ANISOTROPIC;
    AddressU = Wrap;
    AddressV = Wrap;
    MaxAnisotropy = 16;
};
SamplerState PointRepeatSampler_id145 
{
    Filter = MIN_MAG_MIP_POINT;
    AddressU = Wrap;
    AddressV = Wrap;
};
SamplerState LinearRepeatSampler_id146 
{
    Filter = MIN_MAG_MIP_LINEAR;
    AddressU = Wrap;
    AddressV = Wrap;
};
SamplerState RepeatSampler_id147 
{
    AddressU = Wrap;
    AddressV = Wrap;
};
SamplerState Sampler0_id148;
SamplerState Sampler1_id149;
SamplerState Sampler2_id150;
SamplerState Sampler3_id151;
SamplerState Sampler4_id152;
SamplerState Sampler5_id153;
SamplerState Sampler6_id154;
SamplerState Sampler7_id155;
SamplerState Sampler8_id156;
SamplerState Sampler9_id157;
Texture3D<uint2> LightClusters_id97;
Buffer<uint> LightIndices_id98;
Buffer<float4> PointLights_id102;
Buffer<float4> SpotLights_id103;
TextureCube CubeMap_id169;
TextureCube CubeMap_id180;
float SmoothDistanceAttenuation_id70(float squaredDistance, float lightInvSquareRadius)
{
    float factor = squaredDistance * lightInvSquareRadius;
    float smoothFactor = saturate(1.0f - factor * factor);
    return smoothFactor * smoothFactor;
}
float SmoothDistanceAttenuation_id59(float squaredDistance, float lightInvSquareRadius)
{
    float factor = squaredDistance * lightInvSquareRadius;
    float smoothFactor = saturate(1.0f - factor * factor);
    return smoothFactor * smoothFactor;
}
float GetAngularAttenuation_id72(float3 lightVector, float3 lightDirection, float lightAngleScale, float lightAngleOffset)
{
    float cd = dot(lightDirection, lightVector);
    float attenuation = saturate(cd * lightAngleScale + lightAngleOffset);
    attenuation *= attenuation;
    return attenuation;
}
float GetDistanceAttenuation_id71(float lightVectorLength, float lightInvSquareRadius)
{
    float d2 = lightVectorLength * lightVectorLength;
    float attenuation = 1.0 / (max(d2, 0.01 * 0.01));
    attenuation *= SmoothDistanceAttenuation_id70(d2, lightInvSquareRadius);
    return attenuation;
}
float GetDistanceAttenuation_id61(float lightVectorLength, float lightInvSquareRadius)
{
    float d2 = lightVectorLength * lightVectorLength;
    float attenuation = 1.0 / (max(d2, 0.01 * 0.01));
    attenuation *= SmoothDistanceAttenuation_id59(d2, lightInvSquareRadius);
    return attenuation;
}
float ComputeAttenuation_id73(float3 PositionWS, float3 AngleOffsetAndInvSquareRadius, float3 DirectionWS, float3 position, inout float3 lightVectorNorm)
{
    float3 lightVector = PositionWS - position;
    float lightVectorLength = length(lightVector);
    lightVectorNorm = lightVector / lightVectorLength;
    float3 lightAngleOffsetAndInvSquareRadius = AngleOffsetAndInvSquareRadius;
    float2 lightAngleAndOffset = lightAngleOffsetAndInvSquareRadius.xy;
    float lightInvSquareRadius = lightAngleOffsetAndInvSquareRadius.z;
    float3 lightDirection = -DirectionWS;
    float attenuation = GetDistanceAttenuation_id71(lightVectorLength, lightInvSquareRadius);
    attenuation *= GetAngularAttenuation_id72(lightVectorNorm, lightDirection, lightAngleAndOffset.x, lightAngleAndOffset.y);
    return attenuation;
}
float ComputeAttenuation_id60(PointLightDataInternal light, float3 position, inout float3 lightVectorNorm)
{
    float3 lightVector = light.PositionWS - position;
    float lightVectorLength = length(lightVector);
    lightVectorNorm = lightVector / lightVectorLength;
    float lightInvSquareRadius = light.InvSquareRadius;
    return GetDistanceAttenuation_id61(lightVectorLength, lightInvSquareRadius);
}
float4 EvaluateSphericalHarmonics_id92(float3 sphericalColors[TOrder_id106 * TOrder_id106], float3 direction)
{
    float x = direction.x;
    float y = direction.y;
    float z = direction.z;
    float x2 = x * x;
    float y2 = y * y;
    float z2 = z * z;
    float3 color = sphericalColors[0];

    {
        color += sphericalColors[1] * y;
        color += sphericalColors[2] * z;
        color += sphericalColors[3] * x;

        {
            color += sphericalColors[4] * y * x;
            color += sphericalColors[5] * y * z;
            color += sphericalColors[6] * (3.0 * z2 - 1.0);
            color += sphericalColors[7] * x * z;
            color += sphericalColors[8] * (x2 - y2);
        }
    }
    return float4(color, 1);
}
float4 EvaluateSphericalHarmonics_id83(float3 sphericalColors[TOrder_id106 * TOrder_id106], float3 direction)
{
    float x = direction.x;
    float y = direction.y;
    float z = direction.z;
    float x2 = x * x;
    float y2 = y * y;
    float z2 = z * z;
    float3 color = sphericalColors[0];

    {
        color += sphericalColors[1] * y;
        color += sphericalColors[2] * z;
        color += sphericalColors[3] * x;

        {
            color += sphericalColors[4] * y * x;
            color += sphericalColors[5] * y * z;
            color += sphericalColors[6] * (3.0 * z2 - 1.0);
            color += sphericalColors[7] * x * z;
            color += sphericalColors[8] * (x2 - y2);
        }
    }
    return float4(color, 1);
}
void ProcessLight_id74(inout PS_STREAMS streams, SpotLightDataInternal light)
{
    float3 lightVectorNorm;
    float attenuation = ComputeAttenuation_id73(light.PositionWS, light.AngleOffsetAndInvSquareRadius, light.DirectionWS, streams.PositionWS_id22.xyz, lightVectorNorm);
    streams.lightColor_id43 = light.Color;
    streams.lightAttenuation_id46 = attenuation;
    streams.lightDirectionWS_id42 = lightVectorNorm;
}
void ProcessLight_id63(inout PS_STREAMS streams, PointLightDataInternal light)
{
    float3 lightVectorNorm;
    float attenuation = ComputeAttenuation_id60(light, streams.PositionWS_id22.xyz, lightVectorNorm);
    streams.lightPositionWS_id41 = light.PositionWS;
    streams.lightColor_id43 = light.Color;
    streams.lightAttenuation_id46 = attenuation;
    streams.lightDirectionWS_id42 = lightVectorNorm;
}
float4 Compute_id189(inout PS_STREAMS streams, float3 direction)
{
    float alpha = streams.alphaRoughness_id70;
    float mipLevel = sqrt(alpha) * MipCount_id179;
    return CubeMap_id180.SampleLevel(LinearSampler_id140, direction, mipLevel);
}
float4 Compute_id184(float3 direction)
{
    return EvaluateSphericalHarmonics_id92(SphericalColors_id178, direction);
}
void PrepareEnvironmentLight_id96(inout PS_STREAMS streams)
{
    streams.envLightDiffuseColor_id47 = 0;
    streams.envLightSpecularColor_id48 = 0;
}
float4 Compute_id169(inout PS_STREAMS streams, float3 direction)
{
    float alpha = streams.alphaRoughness_id70;
    float mipLevel = sqrt(alpha) * MipCount_id168;
    return CubeMap_id169.SampleLevel(LinearSampler_id140, direction, mipLevel);
}
float4 Compute_id164(float3 direction)
{
    return EvaluateSphericalHarmonics_id83(SphericalColors_id109, direction);
}
void PrepareEnvironmentLight_id87(inout PS_STREAMS streams)
{
    streams.envLightDiffuseColor_id47 = 0;
    streams.envLightSpecularColor_id48 = 0;
}
void PrepareEnvironmentLight_id78(inout PS_STREAMS streams)
{
    streams.envLightDiffuseColor_id47 = 0;
    streams.envLightSpecularColor_id48 = 0;
}
float3 ComputeSpecularTextureProjection_id69(float3 positionWS, float3 reflectionWS, int lightIndex)
{
    return 1.0f;
}
float3 ComputeTextureProjection_id68(float3 positionWS, int lightIndex)
{
    return 1.0f;
}
float3 ComputeShadow_id67(inout PS_STREAMS streams, float3 position, int lightIndex)
{
    streams.thicknessWS_id85 = 0.0;
    return 1.0f;
}
void PrepareDirectLightCore_id66(inout PS_STREAMS streams, int lightIndexIgnored)
{
    int realLightIndex = LightIndices_id98.Load(streams.lightIndex_id96);
    streams.lightIndex_id96++;
    SpotLightDataInternal spotLight;
    float4 spotLight1 = SpotLights_id103.Load(realLightIndex * 4);
    float4 spotLight2 = SpotLights_id103.Load(realLightIndex * 4 + 1);
    float4 spotLight3 = SpotLights_id103.Load(realLightIndex * 4 + 2);
    float4 spotLight4 = SpotLights_id103.Load(realLightIndex * 4 + 3);
    spotLight.PositionWS = spotLight1.xyz;
    spotLight.DirectionWS = spotLight2.xyz;
    spotLight.AngleOffsetAndInvSquareRadius = spotLight3.xyz;
    spotLight.Color = spotLight4.xyz;
    ProcessLight_id74(streams, spotLight);
}
float3 ComputeSpecularTextureProjection_id58(float3 positionWS, float3 reflectionWS, int lightIndex)
{
    return 1.0f;
}
float3 ComputeTextureProjection_id57(float3 positionWS, int lightIndex)
{
    return 1.0f;
}
float3 ComputeShadow_id56(inout PS_STREAMS streams, float3 position, int lightIndex)
{
    streams.thicknessWS_id85 = 0.0;
    return 1.0f;
}
void PrepareDirectLightCore_id55(inout PS_STREAMS streams, int lightIndexIgnored)
{
    int realLightIndex = LightIndices_id98.Load(streams.lightIndex_id96);
    streams.lightIndex_id96++;
    PointLightDataInternal pointLight;
    float4 pointLight1 = PointLights_id102.Load(realLightIndex * 2);
    float4 pointLight2 = PointLights_id102.Load(realLightIndex * 2 + 1);
    pointLight.PositionWS = pointLight1.xyz;
    pointLight.InvSquareRadius = pointLight1.w;
    pointLight.Color = pointLight2.xyz;
    ProcessLight_id63(streams, pointLight);
}
void PrepareLightData_id62(inout PS_STREAMS streams)
{
    float projectedDepth = streams.ShadingPosition_id0.z;
    float depth = ZProjection_id92.y / (projectedDepth - ZProjection_id92.x);
    float2 texCoord = float2(streams.ScreenPosition_id89.x + 1, 1 - streams.ScreenPosition_id89.y) * 0.5;
    int slice = int(max(log2(depth * ClusterDepthScale_id99 + ClusterDepthBias_id100), 0));
    streams.lightData_id95 = LightClusters_id97.Load(int4(texCoord * ClusterStride_id101, slice, 0));
    streams.lightIndex_id96 = streams.lightData_id95.x;
}
float3 ComputeSpecularTextureProjection_id52(float3 positionWS, float3 reflectionWS, int lightIndex)
{
    return 1.0f;
}
float3 ComputeTextureProjection_id51(float3 positionWS, int lightIndex)
{
    return 1.0f;
}
float3 ComputeShadow_id50(inout PS_STREAMS streams, float3 position, int lightIndex)
{
    streams.thicknessWS_id85 = 0.0;
    return 1.0f;
}
void PrepareDirectLightCore_id49(inout PS_STREAMS streams, int lightIndex)
{
    streams.lightColor_id43 = Lights_id88[lightIndex].Color;
    streams.lightDirectionWS_id42 = -Lights_id88[lightIndex].DirectionWS;
}
void ResetStream_id111()
{
}
void AfterLightingAndShading_id218()
{
}
void PrepareEnvironmentLight_id207(inout PS_STREAMS streams)
{
    streams.envLightDiffuseColor_id47 = 0;
    streams.envLightSpecularColor_id48 = 0;
}
void PrepareEnvironmentLight_id204(inout PS_STREAMS streams)
{
    PrepareEnvironmentLight_id96(streams);
    float ambientAccessibility = streams.matAmbientOcclusion_id57;
    float3 sampleDirection = mul(streams.normalWS_id19, (float3x3)SkyMatrix_id181);
    sampleDirection = float3(sampleDirection.xy, -sampleDirection.z);
    streams.envLightDiffuseColor_id47 = Compute_id184(sampleDirection).rgb * Intensity_id182 * ambientAccessibility * streams.matDiffuseSpecularAlphaBlend_id65.x;
    sampleDirection = reflect(-streams.viewWS_id68, streams.normalWS_id19);
    sampleDirection = mul(sampleDirection, (float3x3)SkyMatrix_id181);
    sampleDirection = float3(sampleDirection.xy, -sampleDirection.z);
    streams.envLightSpecularColor_id48 = Compute_id189(streams, sampleDirection).rgb * Intensity_id182 * ambientAccessibility * streams.matDiffuseSpecularAlphaBlend_id65.y;
}
void PrepareEnvironmentLight_id199(inout PS_STREAMS streams)
{
    PrepareEnvironmentLight_id87(streams);
    float ambientAccessibility = streams.matAmbientOcclusion_id57;
    float3 sampleDirection = mul(streams.normalWS_id19, (float3x3)SkyMatrix_id170);
    sampleDirection = float3(sampleDirection.xy, -sampleDirection.z);
    streams.envLightDiffuseColor_id47 = Compute_id164(sampleDirection).rgb * Intensity_id171 * ambientAccessibility * streams.matDiffuseSpecularAlphaBlend_id65.x;
    sampleDirection = reflect(-streams.viewWS_id68, streams.normalWS_id19);
    sampleDirection = mul(sampleDirection, (float3x3)SkyMatrix_id170);
    sampleDirection = float3(sampleDirection.xy, -sampleDirection.z);
    streams.envLightSpecularColor_id48 = Compute_id169(streams, sampleDirection).rgb * Intensity_id171 * ambientAccessibility * streams.matDiffuseSpecularAlphaBlend_id65.y;
}
float3 ComputeEnvironmentLightContribution_id211(inout PS_STREAMS streams)
{
    float3 diffuseColor = streams.matDiffuseVisible_id69;
    return diffuseColor * streams.envLightDiffuseColor_id47;
}
void PrepareEnvironmentLight_id194(inout PS_STREAMS streams)
{
    PrepareEnvironmentLight_id78(streams);
    float3 lightColor = AmbientLight_id104 * streams.matAmbientOcclusion_id57;
    streams.envLightDiffuseColor_id47 = lightColor;
    streams.envLightSpecularColor_id48 = lightColor;
}
void PrepareDirectLight_id145(inout PS_STREAMS streams, int lightIndex)
{
    PrepareDirectLightCore_id66(streams, lightIndex);
    streams.NdotL_id49 = max(dot(streams.normalWS_id19, streams.lightDirectionWS_id42), 0.0001f);
    streams.shadowColor_id84 = ComputeShadow_id67(streams, streams.PositionWS_id22.xyz, lightIndex);
    streams.lightColorNdotL_id44 = streams.lightColor_id43 * streams.lightAttenuation_id46 * streams.shadowColor_id84 * streams.NdotL_id49 * streams.lightDirectAmbientOcclusion_id50;
    streams.lightSpecularColorNdotL_id45 = streams.lightColorNdotL_id44;
    streams.lightColorNdotL_id44 *= ComputeTextureProjection_id68(streams.PositionWS_id22.xyz, lightIndex);
    float3 reflectionVectorWS = reflect(-streams.viewWS_id68, streams.normalWS_id19);
    streams.lightSpecularColorNdotL_id45 *= ComputeSpecularTextureProjection_id69(streams.PositionWS_id22.xyz, reflectionVectorWS, lightIndex);
}
int GetLightCount_id149(inout PS_STREAMS streams)
{
    return streams.lightData_id95.y >> 16;
}
int GetMaxLightCount_id148(inout PS_STREAMS streams)
{
    return streams.lightData_id95.y >> 16;
}
void PrepareDirectLights_id143()
{
}
void PrepareDirectLight_id132(inout PS_STREAMS streams, int lightIndex)
{
    PrepareDirectLightCore_id55(streams, lightIndex);
    streams.NdotL_id49 = max(dot(streams.normalWS_id19, streams.lightDirectionWS_id42), 0.0001f);
    streams.shadowColor_id84 = ComputeShadow_id56(streams, streams.PositionWS_id22.xyz, lightIndex);
    streams.lightColorNdotL_id44 = streams.lightColor_id43 * streams.lightAttenuation_id46 * streams.shadowColor_id84 * streams.NdotL_id49 * streams.lightDirectAmbientOcclusion_id50;
    streams.lightSpecularColorNdotL_id45 = streams.lightColorNdotL_id44;
    streams.lightColorNdotL_id44 *= ComputeTextureProjection_id57(streams.PositionWS_id22.xyz, lightIndex);
    float3 reflectionVectorWS = reflect(-streams.viewWS_id68, streams.normalWS_id19);
    streams.lightSpecularColorNdotL_id45 *= ComputeSpecularTextureProjection_id58(streams.PositionWS_id22.xyz, reflectionVectorWS, lightIndex);
}
int GetLightCount_id137(inout PS_STREAMS streams)
{
    return streams.lightData_id95.y & 0xFFFF;
}
int GetMaxLightCount_id136(inout PS_STREAMS streams)
{
    return streams.lightData_id95.y & 0xFFFF;
}
void PrepareDirectLights_id135(inout PS_STREAMS streams)
{
    PrepareLightData_id62(streams);
}
float3 ComputeDirectLightContribution_id210(inout PS_STREAMS streams)
{
    float3 diffuseColor = streams.matDiffuseVisible_id69;
    return diffuseColor / PI_id188 * streams.lightColorNdotL_id44 * streams.matDiffuseSpecularAlphaBlend_id65.x;
}
void PrepareMaterialPerDirectLight_id30(inout PS_STREAMS streams)
{
    streams.H_id75 = normalize(streams.viewWS_id68 + streams.lightDirectionWS_id42);
    streams.NdotH_id76 = saturate(dot(streams.normalWS_id19, streams.H_id75));
    streams.LdotH_id77 = saturate(dot(streams.lightDirectionWS_id42, streams.H_id75));
    streams.VdotH_id78 = streams.LdotH_id77;
}
void PrepareDirectLight_id121(inout PS_STREAMS streams, int lightIndex)
{
    PrepareDirectLightCore_id49(streams, lightIndex);
    streams.NdotL_id49 = max(dot(streams.normalWS_id19, streams.lightDirectionWS_id42), 0.0001f);
    streams.shadowColor_id84 = ComputeShadow_id50(streams, streams.PositionWS_id22.xyz, lightIndex);
    streams.lightColorNdotL_id44 = streams.lightColor_id43 * streams.lightAttenuation_id46 * streams.shadowColor_id84 * streams.NdotL_id49 * streams.lightDirectAmbientOcclusion_id50;
    streams.lightSpecularColorNdotL_id45 = streams.lightColorNdotL_id44;
    streams.lightColorNdotL_id44 *= ComputeTextureProjection_id51(streams.PositionWS_id22.xyz, lightIndex);
    float3 reflectionVectorWS = reflect(-streams.viewWS_id68, streams.normalWS_id19);
    streams.lightSpecularColorNdotL_id45 *= ComputeSpecularTextureProjection_id52(streams.PositionWS_id22.xyz, reflectionVectorWS, lightIndex);
}
int GetLightCount_id123()
{
    return LightCount_id86;
}
int GetMaxLightCount_id124()
{
    return TMaxLightCount_id87;
}
void PrepareDirectLights_id119()
{
}
void PrepareForLightingAndShading_id215()
{
}
void PrepareMaterialForLightingAndShading_id110(inout PS_STREAMS streams)
{
    streams.lightDirectAmbientOcclusion_id50 = lerp(1.0, streams.matAmbientOcclusion_id57, streams.matAmbientOcclusionDirectLightingFactor_id58);
    streams.matDiffuseVisible_id69 = streams.matDiffuse_id53.rgb * lerp(1.0f, streams.matCavity_id59, streams.matCavityDiffuse_id60) * streams.matDiffuseSpecularAlphaBlend_id65.r * streams.matAlphaBlendColor_id66;
    streams.matSpecularVisible_id71 = streams.matSpecular_id55.rgb * streams.matSpecularIntensity_id56 * lerp(1.0f, streams.matCavity_id59, streams.matCavitySpecular_id61) * streams.matDiffuseSpecularAlphaBlend_id65.g * streams.matAlphaBlendColor_id66;
    streams.NdotV_id72 = max(dot(streams.normalWS_id19, streams.viewWS_id68), 0.0001f);
    float roughness = 1.0f - streams.matGlossiness_id54;
    streams.alphaRoughness_id70 = max(roughness * roughness, 0.001);
}
void ResetLightStream_id109(inout PS_STREAMS streams)
{
    streams.lightPositionWS_id41 = 0;
    streams.lightDirectionWS_id42 = 0;
    streams.lightColor_id43 = 0;
    streams.lightColorNdotL_id44 = 0;
    streams.lightSpecularColorNdotL_id45 = 0;
    streams.lightAttenuation_id46 = 1.0f;
    streams.envLightDiffuseColor_id47 = 0;
    streams.envLightSpecularColor_id48 = 0;
    streams.lightDirectAmbientOcclusion_id50 = 1.0f;
    streams.NdotL_id49 = 0;
}
void UpdateNormalFromTangentSpace_id23(float3 normalInTangentSpace)
{
}
float4 Compute_id208()
{
    return constantColor_id185;
}
void ResetStream_id112(inout PS_STREAMS streams)
{
    ResetStream_id111();
    streams.matBlend_id40 = 0.0f;
}
void Compute_id252(inout PS_STREAMS streams)
{
    UpdateNormalFromTangentSpace_id23(streams.matNormal_id51);
    if (!streams.IsFrontFace_id1)
        streams.normalWS_id19 = -streams.normalWS_id19;
    ResetLightStream_id109(streams);
    PrepareMaterialForLightingAndShading_id110(streams);

    {
        PrepareForLightingAndShading_id215();
    }
    float3 directLightingContribution = 0;

    {
        PrepareDirectLights_id119();
        const int maxLightCount = GetMaxLightCount_id124();
        int count = GetLightCount_id123();

        for (int i = 0; i < maxLightCount; i++)
        {
            if (i >= count)
            {
                break;
            }
            PrepareDirectLight_id121(streams, i);
            PrepareMaterialPerDirectLight_id30(streams);

            {
                directLightingContribution += ComputeDirectLightContribution_id210(streams);
            }
        }
    }

    {
        PrepareDirectLights_id135(streams);
        const int maxLightCount = GetMaxLightCount_id136(streams);
        int count = GetLightCount_id137(streams);

        for (int i = 0; i < maxLightCount; i++)
        {
            if (i >= count)
            {
                break;
            }
            PrepareDirectLight_id132(streams, i);
            PrepareMaterialPerDirectLight_id30(streams);

            {
                directLightingContribution += ComputeDirectLightContribution_id210(streams);
            }
        }
    }

    {
        PrepareDirectLights_id143();
        const int maxLightCount = GetMaxLightCount_id148(streams);
        int count = GetLightCount_id149(streams);

        for (int i = 0; i < maxLightCount; i++)
        {
            if (i >= count)
            {
                break;
            }
            PrepareDirectLight_id145(streams, i);
            PrepareMaterialPerDirectLight_id30(streams);

            {
                directLightingContribution += ComputeDirectLightContribution_id210(streams);
            }
        }
    }
    float3 environmentLightingContribution = 0;

    {
        PrepareEnvironmentLight_id194(streams);

        {
            environmentLightingContribution += ComputeEnvironmentLightContribution_id211(streams);
        }
    }

    {
        PrepareEnvironmentLight_id199(streams);

        {
            environmentLightingContribution += ComputeEnvironmentLightContribution_id211(streams);
        }
    }

    {
        PrepareEnvironmentLight_id204(streams);

        {
            environmentLightingContribution += ComputeEnvironmentLightContribution_id211(streams);
        }
    }

    {
        PrepareEnvironmentLight_id207(streams);

        {
            environmentLightingContribution += ComputeEnvironmentLightContribution_id211(streams);
        }
    }
    streams.shadingColor_id73 += directLightingContribution * PI_id188 + environmentLightingContribution;
    streams.shadingColorAlpha_id74 = streams.matDiffuse_id53.a;

    {
        AfterLightingAndShading_id218();
    }
}
void Compute_id236(inout PS_STREAMS streams)
{
    float4 colorBase = Compute_id208();
    streams.matDiffuse_id53 = colorBase;
    streams.matColorBase_id52 = colorBase;
}
void ResetStream_id113(inout PS_STREAMS streams)
{
    ResetStream_id112(streams);
    streams.matNormal_id51 = float3(0, 0, 1);
    streams.matColorBase_id52 = 0.0f;
    streams.matDiffuse_id53 = 0.0f;
    streams.matDiffuseVisible_id69 = 0.0f;
    streams.matSpecular_id55 = 0.0f;
    streams.matSpecularVisible_id71 = 0.0f;
    streams.matSpecularIntensity_id56 = 1.0f;
    streams.matGlossiness_id54 = 0.0f;
    streams.alphaRoughness_id70 = 1.0f;
    streams.matAmbientOcclusion_id57 = 1.0f;
    streams.matAmbientOcclusionDirectLightingFactor_id58 = 0.0f;
    streams.matCavity_id59 = 1.0f;
    streams.matCavityDiffuse_id60 = 0.0f;
    streams.matCavitySpecular_id61 = 0.0f;
    streams.matEmissive_id62 = 0.0f;
    streams.matEmissiveIntensity_id63 = 0.0f;
    streams.matScatteringStrength_id64 = 1.0f;
    streams.matDiffuseSpecularAlphaBlend_id65 = 1.0f;
    streams.matAlphaBlendColor_id66 = 1.0f;
    streams.matAlphaDiscard_id67 = 0.1f;
}
float4 ComputeShadingPosition_id11(float4 world)
{
    return mul(world, ViewProjection_id29);
}
void PostTransformPosition_id6()
{
}
void PreTransformPosition_id4()
{
}
void Compute_id46(inout PS_STREAMS streams)
{

    {
        Compute_id236(streams);
    }

    {
        Compute_id252(streams);
    }
}
void ResetStream_id45(inout PS_STREAMS streams)
{
    ResetStream_id113(streams);
    streams.shadingColorAlpha_id74 = 1.0f;
}
void PostTransformPosition_id12(inout VS_STREAMS streams)
{
    PostTransformPosition_id6();
    streams.ShadingPosition_id0 = ComputeShadingPosition_id11(streams.PositionWS_id22);
    streams.PositionH_id24 = streams.ShadingPosition_id0;
    streams.DepthVS_id23 = streams.ShadingPosition_id0.w;
}
void TransformPosition_id5()
{
}
void PreTransformPosition_id10(inout VS_STREAMS streams)
{
    PreTransformPosition_id4();
    streams.PositionWS_id22 = mul(streams.Position_id21, World_id32);
}
float4 Compute_id44()
{
    return MaterialIndex_id83;
}
float4 Shading_id31(inout PS_STREAMS streams)
{
    streams.viewWS_id68 = normalize(Eye_id31.xyz - streams.PositionWS_id22.xyz);
    streams.shadingColor_id73 = 0;
    ResetStream_id45(streams);
    Compute_id46(streams);
    return float4(streams.shadingColor_id73, streams.shadingColorAlpha_id74);
}
void PSMain_id1()
{
}
void BaseTransformVS_id8(inout VS_STREAMS streams)
{
    PreTransformPosition_id10(streams);
    TransformPosition_id5();
    PostTransformPosition_id12(streams);
}
void VSMain_id0()
{
}
void PSMain_id3(inout PS_STREAMS streams)
{
    PSMain_id1();
    streams.ColorTarget_id2 = Shading_id31(streams);
    streams.ColorTarget1_id3 = Compute_id44();
}
void GenerateNormal_PS_id22(inout PS_STREAMS streams)
{
    if (dot(streams.normalWS_id19, streams.normalWS_id19) > 0)
        streams.normalWS_id19 = normalize(streams.normalWS_id19);
    streams.meshNormalWS_id17 = streams.normalWS_id19;
}
void GenerateNormal_VS_id21(inout VS_STREAMS streams)
{
    streams.meshNormalWS_id17 = mul(streams.meshNormal_id16, (float3x3)WorldInverseTranspose_id34);
    streams.normalWS_id19 = streams.meshNormalWS_id17;
}
void VSMain_id9(inout VS_STREAMS streams)
{
    VSMain_id0();
    BaseTransformVS_id8(streams);
}
void PSMain_id20(inout PS_STREAMS streams)
{
    GenerateNormal_PS_id22(streams);
    PSMain_id3(streams);
}
void VSMain_id19(inout VS_STREAMS streams)
{
    VSMain_id9(streams);
    GenerateNormal_VS_id21(streams);
}
PS_OUTPUT PSMain(PS_INPUT __input__)
{
    PS_STREAMS streams = (PS_STREAMS)0;
    streams.PositionWS_id22 = __input__.PositionWS_id22;
    streams.ShadingPosition_id0 = __input__.ShadingPosition_id0;
    streams.normalWS_id19 = __input__.normalWS_id19;
    streams.ScreenPosition_id89 = __input__.ScreenPosition_id89;
    streams.IsFrontFace_id1 = __input__.IsFrontFace_id1;
    streams.ScreenPosition_id89 /= streams.ScreenPosition_id89.w;
    PSMain_id20(streams);
    PS_OUTPUT __output__ = (PS_OUTPUT)0;
    __output__.ColorTarget_id2 = streams.ColorTarget_id2;
    __output__.ColorTarget1_id3 = streams.ColorTarget1_id3;
    return __output__;
}
VS_OUTPUT VSMain(VS_INPUT __input__)
{
    VS_STREAMS streams = (VS_STREAMS)0;
    streams.Position_id21 = __input__.Position_id21;
    streams.meshNormal_id16 = __input__.meshNormal_id16;
    VSMain_id19(streams);
    streams.ScreenPosition_id89 = streams.ShadingPosition_id0;
    VS_OUTPUT __output__ = (VS_OUTPUT)0;
    __output__.PositionWS_id22 = streams.PositionWS_id22;
    __output__.ShadingPosition_id0 = streams.ShadingPosition_id0;
    __output__.normalWS_id19 = streams.normalWS_id19;
    __output__.ScreenPosition_id89 = streams.ScreenPosition_id89;
    return __output__;
}
