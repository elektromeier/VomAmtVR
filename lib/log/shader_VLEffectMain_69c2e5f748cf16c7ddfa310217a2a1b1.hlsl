/**************************
***** Compiler Parameters *****
***************************
@P EffectName: VLEffectMain
@P   - Material.PixelStageSurfaceShaders: mixin MaterialSurfaceArray [{layers = [mixin MaterialSurfaceDiffuse [{diffuseMap = mixin Float4ToColor [{Value = mixin DoFloat4 [{Before = mixin ComputeOrder [{Computes = [mixin AssignVarFloat4<Input_0> [{Value = InputFloat4<ShaderFX.InputValueFloat4,PerMaterial>}]]}]}, {Value = GetVarFloat4<Input_0>}]}]}], mixin MaterialSurfaceGlossinessMap<true> [{glossinessMap = mixin FloatToScalar [{Value = mixin DoFloat [{Before = mixin ComputeOrder [{Computes = [mixin AssignVarFloat<Input_1> [{Value = InputFloat<ShaderFX.InputValueFloat,PerMaterial>}]]}]}, {Value = GetVarFloat<Input_1>}]}]}], mixin MaterialSurfaceMetalness [{metalnessMap = mixin FloatToScalar [{Value = mixin DoFloat [{Before = mixin ComputeOrder [{Computes = [mixin AssignVarFloat<Input_2> [{Value = InputFloat<ShaderFX.InputValueFloat.i1,PerMaterial>}]]}]}, {Value = GetVarFloat<Input_2>}]}]}], mixin MaterialSurfaceSetStreamFromComputeColor<matAlphaDiscard,r> [{computeColorSource = ComputeColorConstantFloatLink<Material.AlphaDiscardValue>}], mixin MaterialSurfaceLightingAndShading [{surfaces = [MaterialSurfaceShadingDiffuseLambert<false>, mixin MaterialSurfaceShadingSpecularMicrofacet [{environmentFunction = MaterialSpecularMicrofacetEnvironmentGGXLUT}, {fresnelFunction = MaterialSpecularMicrofacetFresnelSchlick}, {geometricShadowingFunction = MaterialSpecularMicrofacetVisibilitySmithSchlickGGX}, {normalDistributionFunction = MaterialSpecularMicrofacetNormalDistributionGGX}]]}], MaterialSurfaceTransparentAlphaDiscard]}]
@P Material.PixelStageStreamInitializer: mixin MaterialStream, MaterialPixelShadingStream
@P Material.UsePixelShaderWithDepthPass: True
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
cbuffer PerMaterial [Size: 32]
@C    InputValue_id186 => ShaderFX.InputValueFloat4
@C    InputValue_id194 => ShaderFX.InputValueFloat
@C    InputValue_id203 => ShaderFX.InputValueFloat.i1
@C    constantFloat_id213 => Material.AlphaDiscardValue
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
@R    EnvironmentLightingDFG_LUT_id220 => MaterialSpecularMicrofacetEnvironmentGGXLUT.EnvironmentLightingDFG_LUT [Stage: None, Slot: (-1--1)]
@R    EnvironmentLightingDFG_LUT_id220 => MaterialSpecularMicrofacetEnvironmentGGXLUT.EnvironmentLightingDFG_LUT [Stage: None, Slot: (-1--1)]
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
@R    LinearSampler_id140 => Texturing.LinearSampler [Stage: Pixel, Slot: (0-0)]
@R    EnvironmentLightingDFG_LUT_id220 => MaterialSpecularMicrofacetEnvironmentGGXLUT.EnvironmentLightingDFG_LUT [Stage: Pixel, Slot: (0-0)]
@R    LightClusters_id97 => LightClustered.LightClusters [Stage: Pixel, Slot: (1-1)]
@R    LightIndices_id98 => LightClustered.LightIndices [Stage: Pixel, Slot: (2-2)]
@R    PointLights_id102 => LightClusteredPointGroup.PointLights [Stage: Pixel, Slot: (3-3)]
@R    SpotLights_id103 => LightClusteredSpotGroup.SpotLights [Stage: Pixel, Slot: (4-4)]
@R    CubeMap_id169 => RoughnessCubeMapEnvironmentColor.CubeMap.lightSpecularColor.environmentLights[1] [Stage: Pixel, Slot: (5-5)]
@R    CubeMap_id180 => RoughnessCubeMapEnvironmentColor.CubeMap.lightSpecularColor.environmentLights[2] [Stage: Pixel, Slot: (6-6)]
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
@S    Float4ToColor => 090c0c91c91b9d0b479ea3e773355055
@S    ComputeFloat4 => 6aeb31691af393d622350bb42f15ad31
@S    DoFloat4 => 39d0035e8f78b3fb7449b690dd1fcc91
@S    ComputeVoid => de97af339f497c4b8917a076af92194b
@S    ComputeOrder => 50906fabe772669b3f8af01fdd9c505d
@S    AssignVarFloat4 => e54e0b8e92e739bce2ac0f556badd874
@S    StreamVariableFloat4 => c2e6e06503f828c3a049b22513676b9e
@S    InputFloat4 => dde84bd708e467fe677dfda4ce575339
@S    DeclFloat4 => b2a3d29ab3b24927c9d8403a0245327b
@S    GetVarFloat4 => 9a12d35140d41c5c9743d8babe2b56e2
@S    MaterialSurfaceGlossinessMap => ec8934feb70f88c3bd9058130e6b7832
@S    FloatToScalar => 190ca2ba985be574ef882e8bdb8b38a2
@S    ComputeFloat => 2744918ba519afc956e367cbd1cb1fc4
@S    DoFloat => d050e0ec3f8e208b719183949cc88f11
@S    AssignVarFloat => a27c6bbf503fcc9e236bc94dd1c261bf
@S    StreamVariableFloat => 20a0c0292833cf8f573b776f121529c5
@S    InputFloat => edce7cfb3e88687e30d0d7dadcb5a90d
@S    DeclFloat => f4460ed7a64afae8a4c604a1f0434666
@S    GetVarFloat => 15ef45218ac83c53348d7e12dab45514
@S    MaterialSurfaceMetalness => 53f38107e2a3f588a066e5056cfbe194
@S    MaterialSurfaceSetStreamFromComputeColor => d24798cd4613058b907bf6e272883693
@S    IMaterialSurfaceVertex => 0fdda64f0492719d7ada59ea23d8f052
@S    MaterialVertexStream => 4f1267b84dea64fc7c323dfcfc385ab2
@S    MaterialDisplacementStream => 5d57748e7230a9347827c8f299c2d525
@S    IMaterialSurfaceDomain => 4f15b2e1d3036634d4e5f52e39c40e57
@S    MaterialDomainStream => a7008fc6e4d9a36114cef530b894de85
@S    MaterialTessellationStream => c86b4a80b983fe69485b091d0a16cf5a
@S    ComputeColorConstantFloatLink => 67c5dd9d320c3e22be10134f9f78fe1f
@S    MaterialSurfaceLightingAndShading => 56a8877cd2af395727b11f69c761ad41
@S    IMaterialSurfaceShading => 86261e2a0ca0229f0d6ddf87490e5967
@S    MaterialSurfaceShadingDiffuseLambert => 9adb7783d6ea173f9f8ffdfa5c141256
@S    MaterialSurfaceShadingSpecularMicrofacet => 74a9cdfd18445f03ce98df19b4e5e5f0
@S    BRDFMicrofacet => 634bc8cd641b44251287c32dc4bb310b
@S    IMaterialSpecularMicrofacetFresnelFunction => 12e80a2bc796cfc576987299453cb890
@S    IMaterialSpecularMicrofacetVisibilityFunction => a8f975c174875f719493984daf60fab9
@S    IMaterialSpecularMicrofacetNormalDistributionFunction => fc5b438d6e5ae420d08b84f94299b658
@S    IMaterialSpecularMicrofacetEnvironmentFunction => 2faf111195f4b7802bc5194f4a9a62ee
@S    MaterialSpecularMicrofacetEnvironmentGGXLUT => 6f3fa570d4541f87cd04693e894e1856
@S    MaterialSpecularMicrofacetFresnelSchlick => 04e1a6d84795686816d85b78b9155ad8
@S    MaterialSpecularMicrofacetVisibilitySmithSchlickGGX => 45e27c12fa6ed8195f675a525b5df801
@S    MaterialSpecularMicrofacetNormalDistributionGGX => a9f1af90f24c65d1656e0b155aabc565
@S    MaterialSurfaceTransparentAlphaDiscard => 837e2cafe8aa58fd650cafb9b02f586b
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
#line 1085 "C:\Users\elektromeier\Desktop\VomAmt\VomAmtVR\lib\log\shader_VLEffectMain_69c2e5f748cf16c7ddfa310217a2a1b1.hlsl"
dp4 r0.x, v0.xyzw, cb0[0].xyzw  // r0.x <- streams.PositionWS_id22.x
dp4 r0.y, v0.xyzw, cb0[1].xyzw  // r0.y <- streams.PositionWS_id22.y
dp4 r0.z, v0.xyzw, cb0[2].xyzw  // r0.z <- streams.PositionWS_id22.z
dp4 r0.w, v0.xyzw, cb0[3].xyzw  // r0.w <- streams.PositionWS_id22.w

#line 1170
mov o0.xyzw, r0.xyzw

#line 1032
dp4 r1.x, r0.xyzw, cb1[16].xyzw  // r1.x <- <ComputeShadingPosition_id11 return value>.x
dp4 r1.y, r0.xyzw, cb1[17].xyzw  // r1.y <- <ComputeShadingPosition_id11 return value>.y
dp4 r1.z, r0.xyzw, cb1[18].xyzw  // r1.z <- <ComputeShadingPosition_id11 return value>.z
dp4 r1.w, r0.xyzw, cb1[19].xyzw  // r1.w <- <ComputeShadingPosition_id11 return value>.w

#line 1170
mov o1.xyzw, r1.xyzw
mov o3.xyzw, r1.xyzw

#line 1125
dp3 o2.x, v1.xyzx, cb0[8].xyzx
dp3 o2.y, v1.xyzx, cb0[9].xyzx
dp3 o2.z, v1.xyzx, cb0[10].xyzx

#line 1170
ret 
// Approximately 15 instruction slots used
@G    Pixel => 960205be5fc53006bc2de57e32dacca0
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
//   float4 InputValue_id186;           // Offset:    0 Size:    16
//   float InputValue_id194;            // Offset:   16 Size:     4
//   float InputValue_id203;            // Offset:   20 Size:     4
//   float constantFloat_id213;         // Offset:   24 Size:     4
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
//   float4 Eye_id31;                   // Offset:  336 Size:    16
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
//   float MipCount_id168;              // Offset:  844 Size:     4
//   float4x4 SkyMatrix_id170;          // Offset:  848 Size:    64
//   float Intensity_id171;             // Offset:  912 Size:     4
//   float3 SphericalColors_id178[9];   // Offset:  928 Size:   140
//   float MipCount_id179;              // Offset: 1068 Size:     4
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
// LinearSampler_id140               sampler      NA          NA             s0      1 
// EnvironmentLightingDFG_LUT_id220    texture  float4          2d             t0      1 
// LightClusters_id97                texture   uint2          3d             t1      1 
// LightIndices_id98                 texture    uint         buf             t2      1 
// PointLights_id102                 texture  float4         buf             t3      1 
// SpotLights_id103                  texture  float4         buf             t4      1 
// CubeMap_id169                     texture  float4        cube             t5      1 
// CubeMap_id180                     texture  float4        cube             t6      1 
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
dcl_constantbuffer CB1[2], immediateIndexed
dcl_constantbuffer CB2[72], dynamicIndexed
dcl_sampler s0, mode_default
dcl_resource_texture2d (float,float,float,float) t0
dcl_resource_texture3d (uint,uint,uint,uint) t1
dcl_resource_buffer (uint,uint,uint,uint) t2
dcl_resource_buffer (float,float,float,float) t3
dcl_resource_buffer (float,float,float,float) t4
dcl_resource_texturecube (float,float,float,float) t5
dcl_resource_texturecube (float,float,float,float) t6
dcl_input_ps linear v0.xyz
dcl_input_ps_siv linear noperspective v1.z, position
dcl_input_ps linear v2.xyz
dcl_input_ps linear v3.xyw
dcl_input_ps_sgv constant v4.x, is_front_face
dcl_output o0.xyzw
dcl_output o1.xyzw
dcl_temps 17
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
#line 1151 "C:\Users\elektromeier\Desktop\VomAmt\VomAmtVR\lib\log\shader_VLEffectMain_69c2e5f748cf16c7ddfa310217a2a1b1.hlsl"
div r0.xy, v3.xyxx, v3.wwww  // r0.x <- streams.ScreenPosition_id89.x; r0.y <- streams.ScreenPosition_id89.y

#line 1119
dp3 r0.z, v2.xyzx, v2.xyzx
lt r0.w, l(0.000000), r0.z

#line 1120
rsq r0.z, r0.z
mul r1.xyz, r0.zzzz, v2.xyzx  // r1.x <- streams.normalWS_id19.x; r1.y <- streams.normalWS_id19.y; r1.z <- streams.normalWS_id19.z
movc r1.xyz, r0.wwww, r1.xyzx, v2.xyzx

#line 1093
add r2.xyz, -v0.xyzx, cb2[21].xyzx
dp3 r0.z, r2.xyzx, r2.xyzx
rsq r0.z, r0.z
mul r2.xyz, r0.zzzz, r2.xyzx  // r2.x <- streams.viewWS_id68.x; r2.y <- streams.viewWS_id68.y; r2.z <- streams.viewWS_id68.z

#line 996
add r0.z, -cb1[1].x, l(1.000000)  // r0.z <- glossiness

#line 988
add r3.xyz, cb1[0].xyzx, l(-0.020000, -0.020000, -0.020000, 0.000000)
mad r3.xyz, cb1[1].yyyy, r3.xyzx, l(0.020000, 0.020000, 0.020000, 0.000000)  // r3.x <- streams.matSpecular_id55.x; r3.y <- streams.matSpecular_id55.y; r3.z <- streams.matSpecular_id55.z

#line 989
mad r4.xyz, cb1[1].yyyy, -cb1[0].xyzx, cb1[0].xyzx  // r4.x <- streams.matDiffuse_id53.x; r4.y <- streams.matDiffuse_id53.y; r4.z <- streams.matDiffuse_id53.z

#line 837
movc r1.xyz, v4.xxxx, r1.xyzx, -r1.xyzx  // r1.x <- streams.normalWS_id19.x; r1.y <- streams.normalWS_id19.y; r1.z <- streams.normalWS_id19.z

#line 783
dp3 r0.w, r1.xyzx, r2.xyzx
max r5.y, r0.w, l(0.000100)  // r5.y <- streams.NdotV_id72

#line 784
add r0.z, -r0.z, l(1.000000)  // r0.z <- roughness

#line 785
mul r0.z, r0.z, r0.z
max r0.z, r0.z, l(0.001000)  // r0.z <- streams.alphaRoughness_id70

#line 855
mov r6.xyz, r1.xyzx  // r6.x <- streams.normalWS_id19.x; r6.y <- streams.normalWS_id19.y; r6.z <- streams.normalWS_id19.z
mov r7.xyz, r2.xyzx  // r7.x <- streams.viewWS_id68.x; r7.y <- streams.viewWS_id68.y; r7.z <- streams.viewWS_id68.z
mov r8.xyz, r4.xyzx  // r8.x <- streams.matDiffuseVisible_id69.x; r8.y <- streams.matDiffuseVisible_id69.y; r8.z <- streams.matDiffuseVisible_id69.z
mov r9.xyz, r3.xyzx  // r9.x <- streams.matSpecularVisible_id71.x; r9.y <- streams.matSpecularVisible_id71.y; r9.z <- streams.matSpecularVisible_id71.z
mov r9.w, r0.z  // r9.w <- streams.alphaRoughness_id70
mov r10.xyz, l(0,0,0,0)  // r10.x <- directLightingContribution.x; r10.y <- directLightingContribution.y; r10.z <- directLightingContribution.z
mov r0.w, r5.y  // r0.w <- streams.NdotV_id72
mov r1.w, l(0)  // r1.w <- i
loop 
  ige r2.w, r1.w, l(8)
  breakc_nz r2.w

#line 857
  ige r2.w, r1.w, cb2[25].x
  if_nz r2.w

#line 859
    break 

#line 860
  endif 

#line 611
  ishl r2.w, r1.w, l(1)

#line 753
  dp3 r3.w, r6.xyzx, -cb2[r2.w + 26].xyzx
  max r3.w, r3.w, l(0.000100)  // r3.w <- streams.NdotL_id49

#line 755
  mul r11.xyz, r3.wwww, cb2[r2.w + 27].xyzx  // r11.x <- streams.lightColorNdotL_id44.x; r11.y <- streams.lightColorNdotL_id44.y; r11.z <- streams.lightColorNdotL_id44.z

#line 745
  add r12.xyz, r7.xyzx, -cb2[r2.w + 26].xyzx
  dp3 r4.w, r12.xyzx, r12.xyzx
  rsq r4.w, r4.w
  mul r12.xyz, r4.wwww, r12.xyzx  // r12.x <- streams.H_id75.x; r12.y <- streams.H_id75.y; r12.z <- streams.H_id75.z

#line 746
  dp3_sat r4.w, r6.xyzx, r12.xyzx  // r4.w <- streams.NdotH_id76

#line 747
  dp3_sat r2.w, -cb2[r2.w + 26].xyzx, r12.xyzx  // r2.w <- streams.LdotH_id77

#line 741
  mul r12.xyz, r8.xyzx, r11.xyzx

#line 865
  mad r12.xyz, r12.xyzx, l(0.318310, 0.318310, 0.318310, 0.000000), r10.xyzx  // r12.x <- directLightingContribution.x; r12.y <- directLightingContribution.y; r12.z <- directLightingContribution.z

#line 353
  add r13.xyz, -r9.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
  add r2.w, -r2.w, l(1.000000)
  mul r5.z, r2.w, r2.w
  mul r5.z, r5.z, r5.z
  mul r2.w, r2.w, r5.z
  mad r13.xyz, r13.xyzx, r2.wwww, r9.xyzx  // r13.x <- <FresnelSchlick_id148 return value>.x; r13.y <- <FresnelSchlick_id148 return value>.y; r13.z <- <FresnelSchlick_id148 return value>.z

#line 348
  mul r2.w, r9.w, l(0.500000)  // r2.w <- k

#line 349
  mad r5.z, -r9.w, l(0.500000), l(1.000000)
  mad r5.w, r3.w, r5.z, r2.w
  div r5.w, r3.w, r5.w  // r5.w <- <VisibilityhSchlickGGX_id164 return value>
  mad r2.w, r0.w, r5.z, r2.w
  div r2.w, r0.w, r2.w  // r2.w <- <VisibilityhSchlickGGX_id164 return value>

#line 442
  mul r2.w, r2.w, r5.w
  mul r3.w, r0.w, r3.w
  div r2.w, r2.w, r3.w  // r2.w <- <VisibilitySmithSchlickGGX_id166 return value>

#line 436
  mul r3.w, r9.w, r9.w  // r3.w <- alphaR2

#line 437
  mul r4.w, r4.w, r4.w
  mad r5.z, r9.w, r9.w, l(-1.000000)
  mad r4.w, r4.w, r5.z, l(1.000000)
  max r4.w, r4.w, l(0.000100)  // r4.w <- d

#line 438
  mul r4.w, r4.w, r4.w
  mul r4.w, r4.w, l(3.141593)
  div r3.w, r3.w, r4.w  // r3.w <- <NormalDistributionGGX_id178 return value>

#line 735
  mul r13.xyz, r2.wwww, r13.xyzx
  mul r13.xyz, r3.wwww, r13.xyzx
  mul r11.xyz, r11.xyzx, r13.xyzx

#line 869
  mad r10.xyz, r11.xyzx, l(0.250000, 0.250000, 0.250000, 0.000000), r12.xyzx  // r10.x <- directLightingContribution.x; r10.y <- directLightingContribution.y; r10.z <- directLightingContribution.z

#line 855
  iadd r1.w, r1.w, l(1)

#line 871
endloop 

#line 578
add r0.w, v1.z, -cb2[22].z
div r0.w, cb2[22].w, r0.w  // r0.w <- depth

#line 579
mad r0.xy, r0.xyxx, l(1.000000, -1.000000, 0.000000, 0.000000), l(1.000000, 1.000000, 0.000000, 0.000000)
mul r0.xy, r0.xyxx, cb2[42].yzyy

#line 580
mad r0.w, r0.w, cb2[41].w, cb2[42].x
log r0.w, r0.w
max r0.w, r0.w, l(0.000000)

#line 581
mul r0.xy, r0.xyxx, l(0.500000, 0.500000, 0.000000, 0.000000)

#line 580
ftoi r6.xyz, r0.xywx  // r6.z <- slice

#line 581
mov r6.w, l(0)
ld_indexable(texture3d)(uint,uint,uint,uint) r0.xy, r6.xyzw, t1.xyzw  // r0.x <- streams.lightData_id95.x; r0.y <- streams.lightData_id95.y

#line 723
and r0.w, r0.y, l(0x0000ffff)  // r0.w <- <GetMaxLightCount_id209 return value>

#line 879
mov r6.xyz, r1.xyzx  // r6.x <- streams.normalWS_id19.x; r6.y <- streams.normalWS_id19.y; r6.z <- streams.normalWS_id19.z
mov r6.w, v0.x  // r6.w <- streams.PositionWS_id22.x
mov r7.xy, v0.yzyy  // r7.x <- streams.PositionWS_id22.y; r7.y <- streams.PositionWS_id22.z
mov r7.zw, r2.xxxy  // r7.z <- streams.viewWS_id68.x; r7.w <- streams.viewWS_id68.y
mov r8.z, r2.z  // r8.z <- streams.viewWS_id68.z
mov r9.xyz, r4.xyzx  // r9.x <- streams.matDiffuseVisible_id69.x; r9.y <- streams.matDiffuseVisible_id69.y; r9.z <- streams.matDiffuseVisible_id69.z
mov r11.xyz, r3.xyzx  // r11.x <- streams.matSpecularVisible_id71.x; r11.y <- streams.matSpecularVisible_id71.y; r11.z <- streams.matSpecularVisible_id71.z
mov r11.w, r0.z  // r11.w <- streams.alphaRoughness_id70
mov r12.z, r5.y  // r12.z <- streams.NdotV_id72
mov r12.x, r0.x  // r12.x <- streams.lightIndex_id96
mov r13.xyz, r10.xyzx  // r13.x <- directLightingContribution.x; r13.y <- directLightingContribution.y; r13.z <- directLightingContribution.z
mov r1.w, l(0)  // r1.w <- i
loop 
  ige r2.w, r1.w, r0.w
  breakc_nz r2.w

#line 881
  if_nz r2.w

#line 883
    break 

#line 884
  endif 

#line 565
  ld_indexable(buffer)(uint,uint,uint,uint) r2.w, r12.xxxx, t2.yzwx  // r2.w <- realLightIndex

#line 566
  iadd r12.x, r12.x, l(1)  // r12.x <- streams.lightIndex_id96

#line 568
  ishl r3.w, r2.w, l(1)
  ld_indexable(buffer)(float,float,float,float) r14.xyzw, r3.wwww, t3.xyzw  // r14.x <- pointLight1.x; r14.y <- pointLight1.y; r14.z <- pointLight1.z; r14.w <- pointLight1.w

#line 569
  bfi r2.w, l(31), l(1), r2.w, l(1)
  ld_indexable(buffer)(float,float,float,float) r15.xyz, r2.wwww, t3.xyzw  // r15.x <- pointLight2.x; r15.y <- pointLight2.y; r15.z <- pointLight2.z

#line 340
  mov r16.x, r6.w
  mov r16.yz, r7.xxyx
  add r14.xyz, r14.xyzx, -r16.xyzx  // r14.x <- lightVector.x; r14.y <- lightVector.y; r14.z <- lightVector.z

#line 341
  dp3 r2.w, r14.xyzx, r14.xyzx
  sqrt r3.w, r2.w  // r3.w <- lightVectorLength

#line 342
  div r14.xyz, r14.xyzx, r3.wwww  // r14.x <- lightVectorNorm.x; r14.y <- lightVectorNorm.y; r14.z <- lightVectorNorm.z

#line 309
  max r3.w, r2.w, l(0.000100)
  div r3.w, l(1.000000, 1.000000, 1.000000, 1.000000), r3.w  // r3.w <- attenuation

#line 288
  mul r2.w, r14.w, r2.w  // r2.w <- factor

#line 289
  mad r2.w, -r2.w, r2.w, l(1.000000)
  max r2.w, r2.w, l(0.000000)  // r2.w <- smoothFactor

#line 290
  mul r2.w, r2.w, r2.w  // r2.w <- <SmoothDistanceAttenuation_id65 return value>

#line 310
  mul r2.w, r2.w, r3.w  // r2.w <- attenuation

#line 709
  dp3 r3.w, r6.xyzx, r14.xyzx
  max r3.w, r3.w, l(0.000100)  // r3.w <- streams.NdotL_id49

#line 711
  mul r15.xyz, r2.wwww, r15.xyzx
  mul r15.xyz, r3.wwww, r15.xyzx  // r15.x <- streams.lightColorNdotL_id44.x; r15.y <- streams.lightColorNdotL_id44.y; r15.z <- streams.lightColorNdotL_id44.z

#line 745
  mov r8.xy, r7.zwzz
  add r8.xyw, r14.xyxz, r8.xyxz
  dp3 r2.w, r8.xywx, r8.xywx
  rsq r2.w, r2.w
  mul r8.xyw, r2.wwww, r8.xyxw  // r8.x <- streams.H_id75.x; r8.y <- streams.H_id75.y; r8.w <- streams.H_id75.z

#line 746
  dp3_sat r2.w, r6.xyzx, r8.xywx  // r2.w <- streams.NdotH_id76

#line 747
  dp3_sat r4.w, r14.xyzx, r8.xywx  // r4.w <- streams.LdotH_id77

#line 741
  mul r8.xyw, r9.xyxz, r15.xyxz

#line 889
  mad r8.xyw, r8.xyxw, l(0.318310, 0.318310, 0.000000, 0.318310), r13.xyxz  // r8.x <- directLightingContribution.x; r8.y <- directLightingContribution.y; r8.w <- directLightingContribution.z

#line 353
  add r14.xyz, -r11.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
  add r4.w, -r4.w, l(1.000000)
  mul r5.z, r4.w, r4.w
  mul r5.z, r5.z, r5.z
  mul r4.w, r4.w, r5.z
  mad r14.xyz, r14.xyzx, r4.wwww, r11.xyzx  // r14.x <- <FresnelSchlick_id148 return value>.x; r14.y <- <FresnelSchlick_id148 return value>.y; r14.z <- <FresnelSchlick_id148 return value>.z

#line 348
  mul r4.w, r11.w, l(0.500000)  // r4.w <- k

#line 349
  mad r5.z, -r11.w, l(0.500000), l(1.000000)
  mad r5.w, r3.w, r5.z, r4.w
  div r5.w, r3.w, r5.w  // r5.w <- <VisibilityhSchlickGGX_id164 return value>
  mad r4.w, r12.z, r5.z, r4.w
  div r4.w, r12.z, r4.w  // r4.w <- <VisibilityhSchlickGGX_id164 return value>

#line 442
  mul r4.w, r4.w, r5.w
  mul r3.w, r12.z, r3.w
  div r3.w, r4.w, r3.w  // r3.w <- <VisibilitySmithSchlickGGX_id166 return value>

#line 436
  mul r4.w, r11.w, r11.w  // r4.w <- alphaR2

#line 437
  mul r2.w, r2.w, r2.w
  mad r5.z, r11.w, r11.w, l(-1.000000)
  mad r2.w, r2.w, r5.z, l(1.000000)
  max r2.w, r2.w, l(0.000100)  // r2.w <- d

#line 438
  mul r2.w, r2.w, r2.w
  mul r2.w, r2.w, l(3.141593)
  div r2.w, r4.w, r2.w  // r2.w <- <NormalDistributionGGX_id178 return value>

#line 735
  mul r14.xyz, r3.wwww, r14.xyzx
  mul r14.xyz, r2.wwww, r14.xyzx
  mul r14.xyz, r15.xyzx, r14.xyzx

#line 893
  mad r13.xyz, r14.xyzx, l(0.250000, 0.250000, 0.250000, 0.000000), r8.xywx  // r13.x <- directLightingContribution.x; r13.y <- directLightingContribution.y; r13.z <- directLightingContribution.z

#line 879
  iadd r1.w, r1.w, l(1)

#line 895
endloop   // r12.x <- streams.lightIndex_id96

#line 701
ushr r0.x, r0.y, l(16)  // r0.x <- <GetMaxLightCount_id221 return value>

#line 903
mov r6.xyz, v0.xyzx  // r6.x <- streams.PositionWS_id22.x; r6.y <- streams.PositionWS_id22.y; r6.z <- streams.PositionWS_id22.z
mov r0.y, r0.z  // r0.y <- streams.alphaRoughness_id70
mov r0.w, r5.y  // r0.w <- streams.NdotV_id72
mov r7.xyz, r1.xyzx  // r7.x <- streams.normalWS_id19.x; r7.y <- streams.normalWS_id19.y; r7.z <- streams.normalWS_id19.z
mov r8.xyz, r2.xyzx  // r8.x <- streams.viewWS_id68.x; r8.y <- streams.viewWS_id68.y
mov r9.xyz, r4.xyzx
mov r10.xyz, r3.xyzx  // r10.x <- streams.matSpecularVisible_id71.x; r10.y <- streams.matSpecularVisible_id71.y; r10.z <- streams.matSpecularVisible_id71.z
mov r11.xyz, r13.xyzx  // r11.x <- directLightingContribution.x; r11.y <- directLightingContribution.y; r11.z <- directLightingContribution.z
mov r1.w, r12.x  // r1.w <- streams.lightIndex_id96
mov r2.w, l(0)  // r2.w <- i
loop 
  ige r3.w, r2.w, r0.x
  breakc_nz r3.w

#line 905
  if_nz r3.w

#line 907
    break 

#line 908
  endif 

#line 537
  ld_indexable(buffer)(uint,uint,uint,uint) r3.w, r1.wwww, t2.yzwx  // r3.w <- realLightIndex

#line 538
  iadd r1.w, r1.w, l(1)  // r1.w <- streams.lightIndex_id96

#line 540
  ishl r4.w, r3.w, l(2)
  ld_indexable(buffer)(float,float,float,float) r12.yzw, r4.wwww, t4.wxyz  // r12.y <- spotLight1.x; r12.z <- spotLight1.y; r12.w <- spotLight1.z

#line 543
  bfi r14.xyz, l(30, 30, 30, 0), l(2, 2, 2, 0), r3.wwww, l(1, 2, 3, 0)

#line 541
  ld_indexable(buffer)(float,float,float,float) r15.xyz, r14.xxxx, t4.xyzw  // r15.x <- spotLight2.x; r15.y <- spotLight2.y; r15.z <- spotLight2.z

#line 542
  ld_indexable(buffer)(float,float,float,float) r14.xyw, r14.yyyy, t4.xywz  // r14.x <- spotLight3.x; r14.y <- spotLight3.y; r14.w <- spotLight3.z

#line 543
  ld_indexable(buffer)(float,float,float,float) r16.xyz, r14.zzzz, t4.xyzw  // r16.x <- spotLight4.x; r16.y <- spotLight4.y; r16.z <- spotLight4.z

#line 327
  add r12.yzw, -r6.xxyz, r12.yyzw  // r12.y <- lightVector.x; r12.z <- lightVector.y; r12.w <- lightVector.z

#line 328
  dp3 r3.w, r12.yzwy, r12.yzwy
  sqrt r4.w, r3.w  // r4.w <- lightVectorLength

#line 329
  div r12.yzw, r12.yyzw, r4.wwww  // r12.y <- lightVectorNorm.x; r12.z <- lightVectorNorm.y; r12.w <- lightVectorNorm.z

#line 302
  max r4.w, r3.w, l(0.000100)
  div r4.w, l(1.000000, 1.000000, 1.000000, 1.000000), r4.w  // r4.w <- attenuation

#line 282
  mul r3.w, r14.w, r3.w  // r3.w <- factor

#line 283
  mad r3.w, -r3.w, r3.w, l(1.000000)
  max r3.w, r3.w, l(0.000000)  // r3.w <- smoothFactor

#line 284
  mul r3.w, r3.w, r3.w  // r3.w <- <SmoothDistanceAttenuation_id76 return value>

#line 303
  mul r3.w, r3.w, r4.w  // r3.w <- attenuation

#line 294
  dp3 r4.w, -r15.xyzx, r12.yzwy  // r4.w <- cd

#line 295
  mad_sat r4.w, r4.w, r14.x, r14.y  // r4.w <- attenuation

#line 296
  mul r4.w, r4.w, r4.w

#line 335
  mul r3.w, r3.w, r4.w  // r3.w <- attenuation

#line 687
  dp3 r4.w, r7.xyzx, r12.yzwy
  max r4.w, r4.w, l(0.000100)  // r4.w <- streams.NdotL_id49

#line 689
  mul r14.xyz, r3.wwww, r16.xyzx
  mul r14.xyz, r4.wwww, r14.xyzx  // r14.x <- streams.lightColorNdotL_id44.x; r14.y <- streams.lightColorNdotL_id44.y; r14.z <- streams.lightColorNdotL_id44.z

#line 745
  add r15.xyz, r8.xyzx, r12.yzwy
  dp3 r3.w, r15.xyzx, r15.xyzx
  rsq r3.w, r3.w
  mul r15.xyz, r3.wwww, r15.xyzx  // r15.x <- streams.H_id75.x; r15.y <- streams.H_id75.y; r15.z <- streams.H_id75.z

#line 746
  dp3_sat r3.w, r7.xyzx, r15.xyzx  // r3.w <- streams.NdotH_id76

#line 747
  dp3_sat r5.z, r12.yzwy, r15.xyzx  // r5.z <- streams.LdotH_id77

#line 741
  mul r12.yzw, r9.xxyz, r14.xxyz

#line 913
  mad r12.yzw, r12.yyzw, l(0.000000, 0.318310, 0.318310, 0.318310), r11.xxyz  // r12.y <- directLightingContribution.x; r12.z <- directLightingContribution.y; r12.w <- directLightingContribution.z

#line 353
  add r15.xyz, -r10.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
  add r5.z, -r5.z, l(1.000000)
  mul r5.w, r5.z, r5.z
  mul r5.w, r5.w, r5.w
  mul r5.z, r5.w, r5.z
  mad r15.xyz, r15.xyzx, r5.zzzz, r10.xyzx  // r15.x <- <FresnelSchlick_id148 return value>.x; r15.y <- <FresnelSchlick_id148 return value>.y; r15.z <- <FresnelSchlick_id148 return value>.z

#line 348
  mul r5.z, r0.y, l(0.500000)  // r5.z <- k

#line 349
  mad r5.w, -r0.y, l(0.500000), l(1.000000)
  mad r6.w, r4.w, r5.w, r5.z
  div r6.w, r4.w, r6.w  // r6.w <- <VisibilityhSchlickGGX_id164 return value>
  mad r5.z, r0.w, r5.w, r5.z
  div r5.z, r0.w, r5.z  // r5.z <- <VisibilityhSchlickGGX_id164 return value>

#line 442
  mul r5.z, r5.z, r6.w
  mul r4.w, r0.w, r4.w
  div r4.w, r5.z, r4.w  // r4.w <- <VisibilitySmithSchlickGGX_id166 return value>

#line 436
  mul r5.z, r0.y, r0.y  // r5.z <- alphaR2

#line 437
  mul r3.w, r3.w, r3.w
  mad r5.w, r0.y, r0.y, l(-1.000000)
  mad r3.w, r3.w, r5.w, l(1.000000)
  max r3.w, r3.w, l(0.000100)  // r3.w <- d

#line 438
  mul r3.w, r3.w, r3.w
  mul r3.w, r3.w, l(3.141593)
  div r3.w, r5.z, r3.w  // r3.w <- <NormalDistributionGGX_id178 return value>

#line 735
  mul r15.xyz, r4.wwww, r15.xyzx
  mul r15.xyz, r3.wwww, r15.xyzx
  mul r14.xyz, r14.xyzx, r15.xyzx

#line 917
  mad r11.xyz, r14.xyzx, l(0.250000, 0.250000, 0.250000, 0.000000), r12.yzwy  // r11.x <- directLightingContribution.x; r11.y <- directLightingContribution.y; r11.z <- directLightingContribution.z

#line 903
  iadd r2.w, r2.w, l(1)

#line 919
endloop   // r1.w <- streams.lightIndex_id96

#line 828
lt r0.x, cb1[0].w, cb1[1].z

#line 830
discard_nz r0.x

#line 513
sqrt r0.x, r0.z
add r5.x, -r0.x, l(1.000000)  // r5.x <- glossiness

#line 514
sample_l_indexable(texture2d)(float,float,float,float) r0.yz, r5.xyxx, t0.zxyw, s0, l(0.000000)  // r0.y <- environmentLightingDFG.x; r0.z <- environmentLightingDFG.y

#line 515
mad r0.yzw, r3.xxyz, r0.yyyy, r0.zzzz  // r0.y <- <Compute_id319 return value>.x; r0.z <- <Compute_id319 return value>.y; r0.w <- <Compute_id319 return value>.z

#line 670
mul r3.xyz, r0.yzwy, cb2[43].xyzx  // r3.x <- <ComputeEnvironmentLightContribution_id498 return value>.x; r3.y <- <ComputeEnvironmentLightContribution_id498 return value>.y; r3.z <- <ComputeEnvironmentLightContribution_id498 return value>.z

#line 931
mad r3.xyz, r4.xyzx, cb2[43].xyzx, r3.xyzx  // r3.x <- environmentLightingContribution.x; r3.y <- environmentLightingContribution.y; r3.z <- environmentLightingContribution.z

#line 659
dp3 r1.w, r1.xyzx, cb2[53].xyzx  // r1.w <- sampleDirection.x
dp3 r2.w, r1.xyzx, cb2[54].xyzx  // r2.w <- sampleDirection.y
dp3 r3.w, r1.xyzx, cb2[55].xyzx  // r3.w <- sampleDirection.z

#line 398
mul r4.w, r2.w, r2.w  // r4.w <- y2

#line 399
mul r5.x, r3.w, r3.w  // r5.x <- z2

#line 403
mad r5.yzw, cb2[45].xxyz, r2.wwww, cb2[44].xxyz  // r5.y <- color.x; r5.z <- color.y; r5.w <- color.z

#line 404
mad r5.yzw, cb2[46].xxyz, -r3.wwww, r5.yyzw

#line 405
mad r5.yzw, cb2[47].xxyz, r1.wwww, r5.yyzw

#line 408
mul r6.xyz, r2.wwww, cb2[48].xyzx
mad r5.yzw, r6.xxyz, r1.wwww, r5.yyzw

#line 409
mul r6.xyz, r2.wwww, cb2[49].xyzx
mad r5.yzw, r6.xxyz, -r3.wwww, r5.yyzw

#line 410
mad r2.w, r5.x, l(3.000000), l(-1.000000)
mad r5.xyz, cb2[50].xyzx, r2.wwww, r5.yzwy  // r5.x <- color.x; r5.y <- color.y; r5.z <- color.z

#line 411
mul r6.xyz, r1.wwww, cb2[51].xyzx
mad r5.xyz, r6.xyzx, -r3.wwww, r5.xyzx

#line 412
mad r1.w, r1.w, r1.w, -r4.w
mad r5.xyz, cb2[52].xyzx, r1.wwww, r5.xyzx

#line 661
mul r5.xyz, r5.xyzx, cb2[57].xxxx  // r5.x <- streams.envLightDiffuseColor_id47.x; r5.y <- streams.envLightDiffuseColor_id47.y; r5.z <- streams.envLightDiffuseColor_id47.z

#line 662
dp3 r1.w, -r2.xyzx, r1.xyzx
add r1.w, r1.w, r1.w
mad r2.xyz, r1.xyzx, -r1.wwww, -r2.xyzx  // r2.x <- sampleDirection.x; r2.y <- sampleDirection.y; r2.z <- sampleDirection.z

#line 663
dp3 r6.x, r2.xyzx, cb2[53].xyzx  // r6.x <- sampleDirection.x
dp3 r6.y, r2.xyzx, cb2[54].xyzx  // r6.y <- sampleDirection.y
dp3 r1.w, r2.xyzx, cb2[55].xyzx  // r1.w <- sampleDirection.z

#line 664
mov r6.z, -r1.w  // r6.z <- sampleDirection.z

#line 499
mul r1.w, r0.x, cb2[52].w  // r1.w <- mipLevel

#line 500
sample_l_indexable(texturecube)(float,float,float,float) r6.xyz, r6.xyzx, t5.xyzw, s0, r1.w  // r6.x <- <Compute_id242 return value>.x; r6.y <- <Compute_id242 return value>.y; r6.z <- <Compute_id242 return value>.z

#line 665
mul r6.xyz, r6.xyzx, cb2[57].xxxx  // r6.x <- streams.envLightSpecularColor_id48.x; r6.y <- streams.envLightSpecularColor_id48.y; r6.z <- streams.envLightSpecularColor_id48.z

#line 939
mad r3.xyz, r4.xyzx, r5.xyzx, r3.xyzx

#line 943
mad r3.xyz, r0.yzwy, r6.xyzx, r3.xyzx

#line 647
dp3 r1.w, r1.xyzx, cb2[67].xyzx  // r1.w <- sampleDirection.x
dp3 r2.w, r1.xyzx, cb2[68].xyzx  // r2.w <- sampleDirection.y
dp3 r1.x, r1.xyzx, cb2[69].xyzx  // r1.x <- sampleDirection.z

#line 373
mul r1.y, r2.w, r2.w  // r1.y <- y2

#line 374
mul r1.z, r1.x, r1.x  // r1.z <- z2

#line 378
mad r5.xyz, cb2[59].xyzx, r2.wwww, cb2[58].xyzx  // r5.x <- color.x; r5.y <- color.y; r5.z <- color.z

#line 379
mad r5.xyz, cb2[60].xyzx, -r1.xxxx, r5.xyzx

#line 380
mad r5.xyz, cb2[61].xyzx, r1.wwww, r5.xyzx

#line 383
mul r6.xyz, r2.wwww, cb2[62].xyzx
mad r5.xyz, r6.xyzx, r1.wwww, r5.xyzx

#line 384
mul r6.xyz, r2.wwww, cb2[63].xyzx
mad r5.xyz, r6.xyzx, -r1.xxxx, r5.xyzx

#line 385
mad r1.z, r1.z, l(3.000000), l(-1.000000)
mad r5.xyz, cb2[64].xyzx, r1.zzzz, r5.xyzx

#line 386
mul r6.xyz, r1.wwww, cb2[65].xyzx
mad r5.xyz, r6.xyzx, -r1.xxxx, r5.xyzx

#line 387
mad r1.x, r1.w, r1.w, -r1.y
mad r1.xyz, cb2[66].xyzx, r1.xxxx, r5.xyzx  // r1.x <- color.x; r1.y <- color.y; r1.z <- color.z

#line 649
mul r1.xyz, r1.xyzx, cb2[71].xxxx  // r1.x <- streams.envLightDiffuseColor_id47.x; r1.y <- streams.envLightDiffuseColor_id47.y; r1.z <- streams.envLightDiffuseColor_id47.z

#line 651
dp3 r5.x, r2.xyzx, cb2[67].xyzx  // r5.x <- sampleDirection.x
dp3 r5.y, r2.xyzx, cb2[68].xyzx  // r5.y <- sampleDirection.y
dp3 r1.w, r2.xyzx, cb2[69].xyzx  // r1.w <- sampleDirection.z

#line 652
mov r5.z, -r1.w  // r5.z <- sampleDirection.z

#line 484
mul r0.x, r0.x, cb2[66].w  // r0.x <- mipLevel

#line 485
sample_l_indexable(texturecube)(float,float,float,float) r2.xyz, r5.xyzx, t6.xyzw, s0, r0.x  // r2.x <- <Compute_id262 return value>.x; r2.y <- <Compute_id262 return value>.y; r2.z <- <Compute_id262 return value>.z

#line 653
mul r2.xyz, r2.xyzx, cb2[71].xxxx  // r2.x <- streams.envLightSpecularColor_id48.x; r2.y <- streams.envLightSpecularColor_id48.y; r2.z <- streams.envLightSpecularColor_id48.z

#line 951
mad r1.xyz, r4.xyzx, r1.xyzx, r3.xyzx  // r1.x <- environmentLightingContribution.x; r1.y <- environmentLightingContribution.y; r1.z <- environmentLightingContribution.z

#line 955
mad r0.xyz, r0.yzwy, r2.xyzx, r1.xyzx  // r0.x <- environmentLightingContribution.x; r0.y <- environmentLightingContribution.y; r0.z <- environmentLightingContribution.z

#line 970
mad o0.xyz, r11.xyzx, l(3.141593, 3.141593, 3.141593, 0.000000), r0.xyzx

#line 1089
utof o1.xyzw, cb0[26].xxxx

#line 1156
mov o0.w, cb1[0].w
ret 
// Approximately 319 instruction slots used
***************************
*************************/
const static int TMaxLightCount_id87 = 8;
const static int TOrder_id106 = 3;
const static int TOrder_id108 = 3;
const static bool TInvert_id200 = true;
const static bool TIsEnergyConservative_id217 = false;
static const float PI_id219 = 3.14159265358979323846;
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
    float4 Input_0_id185;
    float Input_1_id193;
    float Input_2_id202;
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
    float4 InputValue_id186;
    float InputValue_id194;
    float InputValue_id203;
    float constantFloat_id213;
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
Texture2D EnvironmentLightingDFG_LUT_id220;
Texture3D<uint2> LightClusters_id97;
Buffer<uint> LightIndices_id98;
Buffer<float4> PointLights_id102;
Buffer<float4> SpotLights_id103;
TextureCube CubeMap_id169;
TextureCube CubeMap_id180;
float SmoothDistanceAttenuation_id76(float squaredDistance, float lightInvSquareRadius)
{
    float factor = squaredDistance * lightInvSquareRadius;
    float smoothFactor = saturate(1.0f - factor * factor);
    return smoothFactor * smoothFactor;
}
float SmoothDistanceAttenuation_id65(float squaredDistance, float lightInvSquareRadius)
{
    float factor = squaredDistance * lightInvSquareRadius;
    float smoothFactor = saturate(1.0f - factor * factor);
    return smoothFactor * smoothFactor;
}
float GetAngularAttenuation_id78(float3 lightVector, float3 lightDirection, float lightAngleScale, float lightAngleOffset)
{
    float cd = dot(lightDirection, lightVector);
    float attenuation = saturate(cd * lightAngleScale + lightAngleOffset);
    attenuation *= attenuation;
    return attenuation;
}
float GetDistanceAttenuation_id77(float lightVectorLength, float lightInvSquareRadius)
{
    float d2 = lightVectorLength * lightVectorLength;
    float attenuation = 1.0 / (max(d2, 0.01 * 0.01));
    attenuation *= SmoothDistanceAttenuation_id76(d2, lightInvSquareRadius);
    return attenuation;
}
float GetDistanceAttenuation_id67(float lightVectorLength, float lightInvSquareRadius)
{
    float d2 = lightVectorLength * lightVectorLength;
    float attenuation = 1.0 / (max(d2, 0.01 * 0.01));
    attenuation *= SmoothDistanceAttenuation_id65(d2, lightInvSquareRadius);
    return attenuation;
}
float Compute_id305()
{
    return InputValue_id203;
}
float Compute_id293()
{
    return InputValue_id194;
}
float4 Compute_id281()
{
    return InputValue_id186;
}
float ComputeAttenuation_id79(float3 PositionWS, float3 AngleOffsetAndInvSquareRadius, float3 DirectionWS, float3 position, inout float3 lightVectorNorm)
{
    float3 lightVector = PositionWS - position;
    float lightVectorLength = length(lightVector);
    lightVectorNorm = lightVector / lightVectorLength;
    float3 lightAngleOffsetAndInvSquareRadius = AngleOffsetAndInvSquareRadius;
    float2 lightAngleAndOffset = lightAngleOffsetAndInvSquareRadius.xy;
    float lightInvSquareRadius = lightAngleOffsetAndInvSquareRadius.z;
    float3 lightDirection = -DirectionWS;
    float attenuation = GetDistanceAttenuation_id77(lightVectorLength, lightInvSquareRadius);
    attenuation *= GetAngularAttenuation_id78(lightVectorNorm, lightDirection, lightAngleAndOffset.x, lightAngleAndOffset.y);
    return attenuation;
}
float ComputeAttenuation_id66(PointLightDataInternal light, float3 position, inout float3 lightVectorNorm)
{
    float3 lightVector = light.PositionWS - position;
    float lightVectorLength = length(lightVector);
    lightVectorNorm = lightVector / lightVectorLength;
    float lightInvSquareRadius = light.InvSquareRadius;
    return GetDistanceAttenuation_id67(lightVectorLength, lightInvSquareRadius);
}
float VisibilityhSchlickGGX_id164(float alphaR, float nDotX)
{
    float k = alphaR * 0.5f;
    return nDotX / (nDotX * (1.0f - k) + k);
}
float3 FresnelSchlick_id148(float3 f0, float3 f90, float lOrVDotH)
{
    return f0 + (f90 - f0) * pow((1 - lOrVDotH), 5);
}
void Compute_id308(inout PS_STREAMS streams)
{
    streams.Input_2_id202 = Compute_id305();
}
void Compute_id296(inout PS_STREAMS streams)
{
    streams.Input_1_id193 = Compute_id293();
}
void Compute_id284(inout PS_STREAMS streams)
{
    streams.Input_0_id185 = Compute_id281();
}
float4 EvaluateSphericalHarmonics_id98(float3 sphericalColors[TOrder_id106 * TOrder_id106], float3 direction)
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
float4 EvaluateSphericalHarmonics_id89(float3 sphericalColors[TOrder_id106 * TOrder_id106], float3 direction)
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
void ProcessLight_id80(inout PS_STREAMS streams, SpotLightDataInternal light)
{
    float3 lightVectorNorm;
    float attenuation = ComputeAttenuation_id79(light.PositionWS, light.AngleOffsetAndInvSquareRadius, light.DirectionWS, streams.PositionWS_id22.xyz, lightVectorNorm);
    streams.lightColor_id43 = light.Color;
    streams.lightAttenuation_id46 = attenuation;
    streams.lightDirectionWS_id42 = lightVectorNorm;
}
void ProcessLight_id69(inout PS_STREAMS streams, PointLightDataInternal light)
{
    float3 lightVectorNorm;
    float attenuation = ComputeAttenuation_id66(light, streams.PositionWS_id22.xyz, lightVectorNorm);
    streams.lightPositionWS_id41 = light.PositionWS;
    streams.lightColor_id43 = light.Color;
    streams.lightAttenuation_id46 = attenuation;
    streams.lightDirectionWS_id42 = lightVectorNorm;
}
float NormalDistributionGGX_id178(float alphaR, float nDotH)
{
    float alphaR2 = alphaR * alphaR;
    float d = max(nDotH * nDotH * (alphaR2 - 1) + 1, 0.0001);
    return alphaR2 / (PI_id219 * d * d);
}
float VisibilitySmithSchlickGGX_id166(float alphaR, float nDotL, float nDotV)
{
    return VisibilityhSchlickGGX_id164(alphaR, nDotL) * VisibilityhSchlickGGX_id164(alphaR, nDotV) / (nDotL * nDotV);
}
float3 FresnelSchlick_id154(float3 f0, float lOrVDotH)
{
    return FresnelSchlick_id148(f0, 1.0f, lOrVDotH);
}
float Compute_id311(inout PS_STREAMS streams)
{
    return streams.Input_2_id202;
}
void Compute_id310(inout PS_STREAMS streams)
{

    {
        Compute_id308(streams);
    }
}
float Compute_id299(inout PS_STREAMS streams)
{
    return streams.Input_1_id193;
}
void Compute_id298(inout PS_STREAMS streams)
{

    {
        Compute_id296(streams);
    }
}
float4 Compute_id287(inout PS_STREAMS streams)
{
    return streams.Input_0_id185;
}
void Compute_id286(inout PS_STREAMS streams)
{

    {
        Compute_id284(streams);
    }
}
float4 Compute_id262(inout PS_STREAMS streams, float3 direction)
{
    float alpha = streams.alphaRoughness_id70;
    float mipLevel = sqrt(alpha) * MipCount_id179;
    return CubeMap_id180.SampleLevel(LinearSampler_id140, direction, mipLevel);
}
float4 Compute_id257(float3 direction)
{
    return EvaluateSphericalHarmonics_id98(SphericalColors_id178, direction);
}
void PrepareEnvironmentLight_id102(inout PS_STREAMS streams)
{
    streams.envLightDiffuseColor_id47 = 0;
    streams.envLightSpecularColor_id48 = 0;
}
float4 Compute_id242(inout PS_STREAMS streams, float3 direction)
{
    float alpha = streams.alphaRoughness_id70;
    float mipLevel = sqrt(alpha) * MipCount_id168;
    return CubeMap_id169.SampleLevel(LinearSampler_id140, direction, mipLevel);
}
float4 Compute_id237(float3 direction)
{
    return EvaluateSphericalHarmonics_id89(SphericalColors_id109, direction);
}
void PrepareEnvironmentLight_id93(inout PS_STREAMS streams)
{
    streams.envLightDiffuseColor_id47 = 0;
    streams.envLightSpecularColor_id48 = 0;
}
float3 Compute_id319(float3 specularColor, float alphaR, float nDotV)
{
    float glossiness = 1.0f - sqrt(alphaR);
    float4 environmentLightingDFG = EnvironmentLightingDFG_LUT_id220.SampleLevel(LinearSampler_id140, float2(glossiness, nDotV), 0);
    return specularColor * environmentLightingDFG.r + environmentLightingDFG.g;
}
void PrepareEnvironmentLight_id84(inout PS_STREAMS streams)
{
    streams.envLightDiffuseColor_id47 = 0;
    streams.envLightSpecularColor_id48 = 0;
}
float3 ComputeSpecularTextureProjection_id75(float3 positionWS, float3 reflectionWS, int lightIndex)
{
    return 1.0f;
}
float3 ComputeTextureProjection_id74(float3 positionWS, int lightIndex)
{
    return 1.0f;
}
float3 ComputeShadow_id73(inout PS_STREAMS streams, float3 position, int lightIndex)
{
    streams.thicknessWS_id85 = 0.0;
    return 1.0f;
}
void PrepareDirectLightCore_id72(inout PS_STREAMS streams, int lightIndexIgnored)
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
    ProcessLight_id80(streams, spotLight);
}
float3 ComputeSpecularTextureProjection_id64(float3 positionWS, float3 reflectionWS, int lightIndex)
{
    return 1.0f;
}
float3 ComputeTextureProjection_id63(float3 positionWS, int lightIndex)
{
    return 1.0f;
}
float3 ComputeShadow_id62(inout PS_STREAMS streams, float3 position, int lightIndex)
{
    streams.thicknessWS_id85 = 0.0;
    return 1.0f;
}
void PrepareDirectLightCore_id61(inout PS_STREAMS streams, int lightIndexIgnored)
{
    int realLightIndex = LightIndices_id98.Load(streams.lightIndex_id96);
    streams.lightIndex_id96++;
    PointLightDataInternal pointLight;
    float4 pointLight1 = PointLights_id102.Load(realLightIndex * 2);
    float4 pointLight2 = PointLights_id102.Load(realLightIndex * 2 + 1);
    pointLight.PositionWS = pointLight1.xyz;
    pointLight.InvSquareRadius = pointLight1.w;
    pointLight.Color = pointLight2.xyz;
    ProcessLight_id69(streams, pointLight);
}
void PrepareLightData_id68(inout PS_STREAMS streams)
{
    float projectedDepth = streams.ShadingPosition_id0.z;
    float depth = ZProjection_id92.y / (projectedDepth - ZProjection_id92.x);
    float2 texCoord = float2(streams.ScreenPosition_id89.x + 1, 1 - streams.ScreenPosition_id89.y) * 0.5;
    int slice = int(max(log2(depth * ClusterDepthScale_id99 + ClusterDepthBias_id100), 0));
    streams.lightData_id95 = LightClusters_id97.Load(int4(texCoord * ClusterStride_id101, slice, 0));
    streams.lightIndex_id96 = streams.lightData_id95.x;
}
float Compute_id411(inout PS_STREAMS streams)
{
    return NormalDistributionGGX_id178(streams.alphaRoughness_id70, streams.NdotH_id76);
}
float Compute_id381(inout PS_STREAMS streams)
{
    return VisibilitySmithSchlickGGX_id166(streams.alphaRoughness_id70, streams.NdotL_id49, streams.NdotV_id72);
}
float3 Compute_id351(inout PS_STREAMS streams, float3 f0)
{
    return FresnelSchlick_id154(f0, streams.LdotH_id77);
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
void PrepareDirectLightCore_id55(inout PS_STREAMS streams, int lightIndex)
{
    streams.lightColor_id43 = Lights_id88[lightIndex].Color;
    streams.lightDirectionWS_id42 = -Lights_id88[lightIndex].DirectionWS;
}
float Compute_id314(inout PS_STREAMS streams)
{
    Compute_id310(streams);
    return Compute_id311(streams);
}
float Compute_id302(inout PS_STREAMS streams)
{
    Compute_id298(streams);
    return Compute_id299(streams);
}
float4 Compute_id290(inout PS_STREAMS streams)
{
    Compute_id286(streams);
    return Compute_id287(streams);
}
void ResetStream_id184()
{
}
void AfterLightingAndShading_id468()
{
}
void AfterLightingAndShading_id449()
{
}
void PrepareEnvironmentLight_id280(inout PS_STREAMS streams)
{
    streams.envLightDiffuseColor_id47 = 0;
    streams.envLightSpecularColor_id48 = 0;
}
void PrepareEnvironmentLight_id277(inout PS_STREAMS streams)
{
    PrepareEnvironmentLight_id102(streams);
    float ambientAccessibility = streams.matAmbientOcclusion_id57;
    float3 sampleDirection = mul(streams.normalWS_id19, (float3x3)SkyMatrix_id181);
    sampleDirection = float3(sampleDirection.xy, -sampleDirection.z);
    streams.envLightDiffuseColor_id47 = Compute_id257(sampleDirection).rgb * Intensity_id182 * ambientAccessibility * streams.matDiffuseSpecularAlphaBlend_id65.x;
    sampleDirection = reflect(-streams.viewWS_id68, streams.normalWS_id19);
    sampleDirection = mul(sampleDirection, (float3x3)SkyMatrix_id181);
    sampleDirection = float3(sampleDirection.xy, -sampleDirection.z);
    streams.envLightSpecularColor_id48 = Compute_id262(streams, sampleDirection).rgb * Intensity_id182 * ambientAccessibility * streams.matDiffuseSpecularAlphaBlend_id65.y;
}
void PrepareEnvironmentLight_id272(inout PS_STREAMS streams)
{
    PrepareEnvironmentLight_id93(streams);
    float ambientAccessibility = streams.matAmbientOcclusion_id57;
    float3 sampleDirection = mul(streams.normalWS_id19, (float3x3)SkyMatrix_id170);
    sampleDirection = float3(sampleDirection.xy, -sampleDirection.z);
    streams.envLightDiffuseColor_id47 = Compute_id237(sampleDirection).rgb * Intensity_id171 * ambientAccessibility * streams.matDiffuseSpecularAlphaBlend_id65.x;
    sampleDirection = reflect(-streams.viewWS_id68, streams.normalWS_id19);
    sampleDirection = mul(sampleDirection, (float3x3)SkyMatrix_id170);
    sampleDirection = float3(sampleDirection.xy, -sampleDirection.z);
    streams.envLightSpecularColor_id48 = Compute_id242(streams, sampleDirection).rgb * Intensity_id171 * ambientAccessibility * streams.matDiffuseSpecularAlphaBlend_id65.y;
}
float3 ComputeEnvironmentLightContribution_id498(inout PS_STREAMS streams)
{
    float3 specularColor = streams.matSpecularVisible_id71;
    return Compute_id319(specularColor, streams.alphaRoughness_id70, streams.NdotV_id72) * streams.envLightSpecularColor_id48;
}
float3 ComputeEnvironmentLightContribution_id442(inout PS_STREAMS streams)
{
    float3 diffuseColor = streams.matDiffuseVisible_id69;
    return diffuseColor * streams.envLightDiffuseColor_id47;
}
void PrepareEnvironmentLight_id267(inout PS_STREAMS streams)
{
    PrepareEnvironmentLight_id84(streams);
    float3 lightColor = AmbientLight_id104 * streams.matAmbientOcclusion_id57;
    streams.envLightDiffuseColor_id47 = lightColor;
    streams.envLightSpecularColor_id48 = lightColor;
}
void PrepareDirectLight_id218(inout PS_STREAMS streams, int lightIndex)
{
    PrepareDirectLightCore_id72(streams, lightIndex);
    streams.NdotL_id49 = max(dot(streams.normalWS_id19, streams.lightDirectionWS_id42), 0.0001f);
    streams.shadowColor_id84 = ComputeShadow_id73(streams, streams.PositionWS_id22.xyz, lightIndex);
    streams.lightColorNdotL_id44 = streams.lightColor_id43 * streams.lightAttenuation_id46 * streams.shadowColor_id84 * streams.NdotL_id49 * streams.lightDirectAmbientOcclusion_id50;
    streams.lightSpecularColorNdotL_id45 = streams.lightColorNdotL_id44;
    streams.lightColorNdotL_id44 *= ComputeTextureProjection_id74(streams.PositionWS_id22.xyz, lightIndex);
    float3 reflectionVectorWS = reflect(-streams.viewWS_id68, streams.normalWS_id19);
    streams.lightSpecularColorNdotL_id45 *= ComputeSpecularTextureProjection_id75(streams.PositionWS_id22.xyz, reflectionVectorWS, lightIndex);
}
int GetLightCount_id222(inout PS_STREAMS streams)
{
    return streams.lightData_id95.y >> 16;
}
int GetMaxLightCount_id221(inout PS_STREAMS streams)
{
    return streams.lightData_id95.y >> 16;
}
void PrepareDirectLights_id216()
{
}
void PrepareDirectLight_id205(inout PS_STREAMS streams, int lightIndex)
{
    PrepareDirectLightCore_id61(streams, lightIndex);
    streams.NdotL_id49 = max(dot(streams.normalWS_id19, streams.lightDirectionWS_id42), 0.0001f);
    streams.shadowColor_id84 = ComputeShadow_id62(streams, streams.PositionWS_id22.xyz, lightIndex);
    streams.lightColorNdotL_id44 = streams.lightColor_id43 * streams.lightAttenuation_id46 * streams.shadowColor_id84 * streams.NdotL_id49 * streams.lightDirectAmbientOcclusion_id50;
    streams.lightSpecularColorNdotL_id45 = streams.lightColorNdotL_id44;
    streams.lightColorNdotL_id44 *= ComputeTextureProjection_id63(streams.PositionWS_id22.xyz, lightIndex);
    float3 reflectionVectorWS = reflect(-streams.viewWS_id68, streams.normalWS_id19);
    streams.lightSpecularColorNdotL_id45 *= ComputeSpecularTextureProjection_id64(streams.PositionWS_id22.xyz, reflectionVectorWS, lightIndex);
}
int GetLightCount_id210(inout PS_STREAMS streams)
{
    return streams.lightData_id95.y & 0xFFFF;
}
int GetMaxLightCount_id209(inout PS_STREAMS streams)
{
    return streams.lightData_id95.y & 0xFFFF;
}
void PrepareDirectLights_id208(inout PS_STREAMS streams)
{
    PrepareLightData_id68(streams);
}
float3 ComputeDirectLightContribution_id497(inout PS_STREAMS streams)
{
    float3 specularColor = streams.matSpecularVisible_id71;
    float3 fresnel = Compute_id351(streams, specularColor);
    float geometricShadowing = Compute_id381(streams);
    float normalDistribution = Compute_id411(streams);
    float3 reflected = fresnel * geometricShadowing * normalDistribution / 4;
    return reflected * streams.lightSpecularColorNdotL_id45 * streams.matDiffuseSpecularAlphaBlend_id65.y;
}
float3 ComputeDirectLightContribution_id441(inout PS_STREAMS streams)
{
    float3 diffuseColor = streams.matDiffuseVisible_id69;
    return diffuseColor / PI_id219 * streams.lightColorNdotL_id44 * streams.matDiffuseSpecularAlphaBlend_id65.x;
}
void PrepareMaterialPerDirectLight_id30(inout PS_STREAMS streams)
{
    streams.H_id75 = normalize(streams.viewWS_id68 + streams.lightDirectionWS_id42);
    streams.NdotH_id76 = saturate(dot(streams.normalWS_id19, streams.H_id75));
    streams.LdotH_id77 = saturate(dot(streams.lightDirectionWS_id42, streams.H_id75));
    streams.VdotH_id78 = streams.LdotH_id77;
}
void PrepareDirectLight_id194(inout PS_STREAMS streams, int lightIndex)
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
int GetLightCount_id196()
{
    return LightCount_id86;
}
int GetMaxLightCount_id197()
{
    return TMaxLightCount_id87;
}
void PrepareDirectLights_id192()
{
}
void PrepareForLightingAndShading_id465()
{
}
void PrepareForLightingAndShading_id446()
{
}
void PrepareMaterialForLightingAndShading_id180(inout PS_STREAMS streams)
{
    streams.lightDirectAmbientOcclusion_id50 = lerp(1.0, streams.matAmbientOcclusion_id57, streams.matAmbientOcclusionDirectLightingFactor_id58);
    streams.matDiffuseVisible_id69 = streams.matDiffuse_id53.rgb * lerp(1.0f, streams.matCavity_id59, streams.matCavityDiffuse_id60) * streams.matDiffuseSpecularAlphaBlend_id65.r * streams.matAlphaBlendColor_id66;
    streams.matSpecularVisible_id71 = streams.matSpecular_id55.rgb * streams.matSpecularIntensity_id56 * lerp(1.0f, streams.matCavity_id59, streams.matCavitySpecular_id61) * streams.matDiffuseSpecularAlphaBlend_id65.g * streams.matAlphaBlendColor_id66;
    streams.NdotV_id72 = max(dot(streams.normalWS_id19, streams.viewWS_id68), 0.0001f);
    float roughness = 1.0f - streams.matGlossiness_id54;
    streams.alphaRoughness_id70 = max(roughness * roughness, 0.001);
}
void ResetLightStream_id179(inout PS_STREAMS streams)
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
float4 Compute_id317()
{
    return float4(constantFloat_id213, constantFloat_id213, constantFloat_id213, constantFloat_id213);
}
float4 Compute_id316(inout PS_STREAMS streams)
{
    float x = Compute_id314(streams);
    return float4(x, x, x, x);
}
float4 Compute_id304(inout PS_STREAMS streams)
{
    float x = Compute_id302(streams);
    return float4(x, x, x, x);
}
float4 Compute_id292(inout PS_STREAMS streams)
{
    return Compute_id290(streams);
}
void ResetStream_id185(inout PS_STREAMS streams)
{
    ResetStream_id184();
    streams.matBlend_id40 = 0.0f;
}
void Compute_id535(inout PS_STREAMS streams)
{
    if (streams.shadingColorAlpha_id74 < streams.matAlphaDiscard_id67)
    {
        discard;
    }
}
void Compute_id534(inout PS_STREAMS streams)
{
    UpdateNormalFromTangentSpace_id23(streams.matNormal_id51);
    if (!streams.IsFrontFace_id1)
        streams.normalWS_id19 = -streams.normalWS_id19;
    ResetLightStream_id179(streams);
    PrepareMaterialForLightingAndShading_id180(streams);

    {
        PrepareForLightingAndShading_id446();
    }

    {
        PrepareForLightingAndShading_id465();
    }
    float3 directLightingContribution = 0;

    {
        PrepareDirectLights_id192();
        const int maxLightCount = GetMaxLightCount_id197();
        int count = GetLightCount_id196();

        for (int i = 0; i < maxLightCount; i++)
        {
            if (i >= count)
            {
                break;
            }
            PrepareDirectLight_id194(streams, i);
            PrepareMaterialPerDirectLight_id30(streams);

            {
                directLightingContribution += ComputeDirectLightContribution_id441(streams);
            }

            {
                directLightingContribution += ComputeDirectLightContribution_id497(streams);
            }
        }
    }

    {
        PrepareDirectLights_id208(streams);
        const int maxLightCount = GetMaxLightCount_id209(streams);
        int count = GetLightCount_id210(streams);

        for (int i = 0; i < maxLightCount; i++)
        {
            if (i >= count)
            {
                break;
            }
            PrepareDirectLight_id205(streams, i);
            PrepareMaterialPerDirectLight_id30(streams);

            {
                directLightingContribution += ComputeDirectLightContribution_id441(streams);
            }

            {
                directLightingContribution += ComputeDirectLightContribution_id497(streams);
            }
        }
    }

    {
        PrepareDirectLights_id216();
        const int maxLightCount = GetMaxLightCount_id221(streams);
        int count = GetLightCount_id222(streams);

        for (int i = 0; i < maxLightCount; i++)
        {
            if (i >= count)
            {
                break;
            }
            PrepareDirectLight_id218(streams, i);
            PrepareMaterialPerDirectLight_id30(streams);

            {
                directLightingContribution += ComputeDirectLightContribution_id441(streams);
            }

            {
                directLightingContribution += ComputeDirectLightContribution_id497(streams);
            }
        }
    }
    float3 environmentLightingContribution = 0;

    {
        PrepareEnvironmentLight_id267(streams);

        {
            environmentLightingContribution += ComputeEnvironmentLightContribution_id442(streams);
        }

        {
            environmentLightingContribution += ComputeEnvironmentLightContribution_id498(streams);
        }
    }

    {
        PrepareEnvironmentLight_id272(streams);

        {
            environmentLightingContribution += ComputeEnvironmentLightContribution_id442(streams);
        }

        {
            environmentLightingContribution += ComputeEnvironmentLightContribution_id498(streams);
        }
    }

    {
        PrepareEnvironmentLight_id277(streams);

        {
            environmentLightingContribution += ComputeEnvironmentLightContribution_id442(streams);
        }

        {
            environmentLightingContribution += ComputeEnvironmentLightContribution_id498(streams);
        }
    }

    {
        PrepareEnvironmentLight_id280(streams);

        {
            environmentLightingContribution += ComputeEnvironmentLightContribution_id442(streams);
        }

        {
            environmentLightingContribution += ComputeEnvironmentLightContribution_id498(streams);
        }
    }
    streams.shadingColor_id73 += directLightingContribution * PI_id219 + environmentLightingContribution;
    streams.shadingColorAlpha_id74 = streams.matDiffuse_id53.a;

    {
        AfterLightingAndShading_id449();
    }

    {
        AfterLightingAndShading_id468();
    }
}
void Compute_id518(inout PS_STREAMS streams)
{
    streams.matAlphaDiscard_id67 = Compute_id317().r;
}
void Compute_id513(inout PS_STREAMS streams)
{
    float metalness = Compute_id316(streams).r;
    streams.matSpecular_id55 = lerp(0.02, streams.matDiffuse_id53.rgb, metalness);
    streams.matDiffuse_id53.rgb = lerp(streams.matDiffuse_id53.rgb, 0, metalness);
}
void Compute_id508(inout PS_STREAMS streams)
{
    float glossiness = Compute_id304(streams).r;

    {
        glossiness = 1.0 - glossiness;
    }
    streams.matGlossiness_id54 = glossiness;
}
void Compute_id503(inout PS_STREAMS streams)
{
    float4 colorBase = Compute_id292(streams);
    streams.matDiffuse_id53 = colorBase;
    streams.matColorBase_id52 = colorBase;
}
void ResetStream_id186(inout PS_STREAMS streams)
{
    ResetStream_id185(streams);
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
void Compute_id52(inout PS_STREAMS streams)
{

    {
        Compute_id503(streams);
    }

    {
        Compute_id508(streams);
    }

    {
        Compute_id513(streams);
    }

    {
        Compute_id518(streams);
    }

    {
        Compute_id534(streams);
    }

    {
        Compute_id535(streams);
    }
}
void ResetStream_id51(inout PS_STREAMS streams)
{
    ResetStream_id186(streams);
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
float4 Compute_id50()
{
    return MaterialIndex_id83;
}
float4 Shading_id31(inout PS_STREAMS streams)
{
    streams.viewWS_id68 = normalize(Eye_id31.xyz - streams.PositionWS_id22.xyz);
    streams.shadingColor_id73 = 0;
    ResetStream_id51(streams);
    Compute_id52(streams);
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
    streams.ColorTarget1_id3 = Compute_id50();
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
