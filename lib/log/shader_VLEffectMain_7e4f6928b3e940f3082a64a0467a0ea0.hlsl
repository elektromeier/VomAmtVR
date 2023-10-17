/**************************
***** Compiler Parameters *****
***************************
@P EffectName: VLEffectMain
@P   - Material.PixelStageSurfaceShaders: mixin MaterialSurfaceArray [{layers = [mixin MaterialSurfaceDiffuse [{diffuseMap = mixin Float4ToColor [{Value = mixin DoFloat4 [{Before = mixin ComputeOrder [{Computes = [mixin AssignVarFloat4<Input_0> [{Value = InputFloat4<ShaderFX.InputValueFloat4,PerMaterial>}]]}]}, {Value = GetVarFloat4<Input_0>}]}]}], mixin MaterialSurfaceGlossinessMap<true> [{glossinessMap = mixin FloatToScalar [{Value = mixin DoFloat [{Before = mixin ComputeOrder [{Computes = [mixin AssignVarFloat<Input_1> [{Value = InputFloat<ShaderFX.InputValueFloat,PerMaterial>}]]}]}, {Value = GetVarFloat<Input_1>}]}]}], mixin MaterialSurfaceMetalness [{metalnessMap = mixin FloatToScalar [{Value = mixin DoFloat [{Before = mixin ComputeOrder [{Computes = [mixin AssignVarFloat<Input_2> [{Value = InputFloat<ShaderFX.InputValueFloat.i1,PerMaterial>}]]}]}, {Value = GetVarFloat<Input_2>}]}]}], mixin MaterialSurfaceLightingAndShading [{surfaces = [MaterialSurfaceShadingDiffuseLambert<false>, mixin MaterialSurfaceShadingSpecularMicrofacet [{environmentFunction = MaterialSpecularMicrofacetEnvironmentGGXLUT}, {fresnelFunction = MaterialSpecularMicrofacetFresnelSchlick}, {geometricShadowingFunction = MaterialSpecularMicrofacetVisibilitySmithSchlickGGX}, {normalDistributionFunction = MaterialSpecularMicrofacetNormalDistributionGGX}]]}]]}]
@P Material.PixelStageStreamInitializer: mixin MaterialStream, MaterialPixelShadingStream
@P StrideEffectBase.ModelTransformUsage: 2
@P StrideEffectBase.HasInstancing: True
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
@C    MaterialIndex_id85 => GBufferOutputSubsurfaceScatteringMaterialIndex.MaterialIndex
cbuffer PerMaterial [Size: 32]
@C    InputValue_id188 => ShaderFX.InputValueFloat4
@C    InputValue_id196 => ShaderFX.InputValueFloat
@C    InputValue_id205 => ShaderFX.InputValueFloat.i1
cbuffer PerView [Size: 1168]
@C    View_id25 => Transformation.View
@C    ViewInverse_id26 => Transformation.ViewInverse
@C    Projection_id27 => Transformation.Projection
@C    ProjectionInverse_id28 => Transformation.ProjectionInverse
@C    ViewProjection_id29 => Transformation.ViewProjection
@C    ProjScreenRay_id30 => Transformation.ProjScreenRay
@C    Eye_id31 => Transformation.Eye
@C    NearClipPlane_id92 => Camera.NearClipPlane
@C    FarClipPlane_id93 => Camera.FarClipPlane
@C    ZProjection_id94 => Camera.ZProjection
@C    ViewSize_id95 => Camera.ViewSize
@C    AspectRatio_id96 => Camera.AspectRatio
@C    _padding_PerView_Default => _padding_PerView_Default
@C    LightCount_id88 => DirectLightGroupPerView.LightCount.directLightGroups[0]
@C    Lights_id90 => LightDirectionalGroup.Lights.directLightGroups[0]
@C    ClusterDepthScale_id101 => LightClustered.ClusterDepthScale
@C    ClusterDepthBias_id102 => LightClustered.ClusterDepthBias
@C    ClusterStride_id103 => LightClustered.ClusterStride
@C    AmbientLight_id106 => LightSimpleAmbient.AmbientLight.environmentLights[0]
@C    SphericalColors_id111 => SphericalHarmonicsEnvironmentColor.SphericalColors.lightDiffuseColor.environmentLights[1]
@C    MipCount_id170 => RoughnessCubeMapEnvironmentColor.MipCount.lightSpecularColor.environmentLights[1]
@C    SkyMatrix_id172 => LightSkyboxShader.SkyMatrix.environmentLights[1]
@C    Intensity_id173 => LightSkyboxShader.Intensity.environmentLights[1]
@C    SphericalColors_id180 => SphericalHarmonicsEnvironmentColor.SphericalColors.lightDiffuseColor.environmentLights[2]
@C    MipCount_id181 => RoughnessCubeMapEnvironmentColor.MipCount.lightSpecularColor.environmentLights[2]
@C    SkyMatrix_id183 => LightSkyboxShader.SkyMatrix.environmentLights[2]
@C    Intensity_id184 => LightSkyboxShader.Intensity.environmentLights[2]
@C    _padding_PerView_Lighting => _padding_PerView_Lighting
***************************
******  Resources    ******
***************************
@R    PerMaterial => PerMaterial [Stage: None, Slot: (-1--1)]
@R    InstanceWorld_id40 => TransformationInstancing.InstanceWorld [Stage: None, Slot: (-1--1)]
@R    InstanceWorld_id40 => TransformationInstancing.InstanceWorld [Stage: None, Slot: (-1--1)]
@R    InstanceWorldInverse_id41 => TransformationInstancing.InstanceWorldInverse [Stage: None, Slot: (-1--1)]
@R    InstanceWorldInverse_id41 => TransformationInstancing.InstanceWorldInverse [Stage: None, Slot: (-1--1)]
@R    EnvironmentLightingDFG_LUT_id217 => MaterialSpecularMicrofacetEnvironmentGGXLUT.EnvironmentLightingDFG_LUT [Stage: None, Slot: (-1--1)]
@R    EnvironmentLightingDFG_LUT_id217 => MaterialSpecularMicrofacetEnvironmentGGXLUT.EnvironmentLightingDFG_LUT [Stage: None, Slot: (-1--1)]
@R    LightClusters_id99 => LightClustered.LightClusters [Stage: None, Slot: (-1--1)]
@R    LightClusters_id99 => LightClustered.LightClusters [Stage: None, Slot: (-1--1)]
@R    LightIndices_id100 => LightClustered.LightIndices [Stage: None, Slot: (-1--1)]
@R    LightIndices_id100 => LightClustered.LightIndices [Stage: None, Slot: (-1--1)]
@R    PointLights_id104 => LightClusteredPointGroup.PointLights [Stage: None, Slot: (-1--1)]
@R    PointLights_id104 => LightClusteredPointGroup.PointLights [Stage: None, Slot: (-1--1)]
@R    SpotLights_id105 => LightClusteredSpotGroup.SpotLights [Stage: None, Slot: (-1--1)]
@R    SpotLights_id105 => LightClusteredSpotGroup.SpotLights [Stage: None, Slot: (-1--1)]
@R    CubeMap_id171 => RoughnessCubeMapEnvironmentColor.CubeMap.lightSpecularColor.environmentLights[1] [Stage: None, Slot: (-1--1)]
@R    CubeMap_id171 => RoughnessCubeMapEnvironmentColor.CubeMap.lightSpecularColor.environmentLights[1] [Stage: None, Slot: (-1--1)]
@R    CubeMap_id182 => RoughnessCubeMapEnvironmentColor.CubeMap.lightSpecularColor.environmentLights[2] [Stage: None, Slot: (-1--1)]
@R    CubeMap_id182 => RoughnessCubeMapEnvironmentColor.CubeMap.lightSpecularColor.environmentLights[2] [Stage: None, Slot: (-1--1)]
@R    InstanceWorld_id40 => TransformationInstancing.InstanceWorld [Stage: Vertex, Slot: (0-0)]
@R    InstanceWorldInverse_id41 => TransformationInstancing.InstanceWorldInverse [Stage: Vertex, Slot: (1-1)]
@R    PerDraw => PerDraw [Stage: Vertex, Slot: (0-0)]
@R    PerView => PerView [Stage: Vertex, Slot: (1-1)]
@R    LinearSampler_id142 => Texturing.LinearSampler [Stage: Pixel, Slot: (0-0)]
@R    EnvironmentLightingDFG_LUT_id217 => MaterialSpecularMicrofacetEnvironmentGGXLUT.EnvironmentLightingDFG_LUT [Stage: Pixel, Slot: (0-0)]
@R    LightClusters_id99 => LightClustered.LightClusters [Stage: Pixel, Slot: (1-1)]
@R    LightIndices_id100 => LightClustered.LightIndices [Stage: Pixel, Slot: (2-2)]
@R    PointLights_id104 => LightClusteredPointGroup.PointLights [Stage: Pixel, Slot: (3-3)]
@R    SpotLights_id105 => LightClusteredSpotGroup.SpotLights [Stage: Pixel, Slot: (4-4)]
@R    CubeMap_id171 => RoughnessCubeMapEnvironmentColor.CubeMap.lightSpecularColor.environmentLights[1] [Stage: Pixel, Slot: (5-5)]
@R    CubeMap_id182 => RoughnessCubeMapEnvironmentColor.CubeMap.lightSpecularColor.environmentLights[2] [Stage: Pixel, Slot: (6-6)]
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
@S    TransformationWAndVPInstanced => 7ae21b812d8f104b720e1cb5503fd0b8
@S    TransformationWAndVP => 4852381ef91335cbf665eca43a0eb5ee
@S    PositionStream4 => 978c413387a2cb385e61d6d096be6d21
@S    PositionHStream4 => 6a2c2e4bcfc42de2c49c69f480ead970
@S    Transformation => 6c40fce14b58a620257103f7d0f4c093
@S    TransformationInstancing => 0ad01e933cd8ab1581e738646f849de1
@S    NormalFromMeshInstanced => 8cdb65394bcabfc62dca8baa29012a84
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
@S    GBufferOutputSubsurfaceScatteringMaterialIndex => 5df9471bf02401dc5db0de4bbd3d8abb
***************************
*****     Stages      *****
***************************
@G    Vertex => 99206d17d83ebd84fd5ab247923c5e9a
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
//   float4x4 WorldInverse_id33;        // Offset:   64 Size:    64
//   float4x4 WorldInverseTranspose_id34;// Offset:  128 Size:    64 [unused]
//   float4x4 WorldView_id35;           // Offset:  192 Size:    64 [unused]
//   float4x4 WorldViewInverse_id36;    // Offset:  256 Size:    64 [unused]
//   float4x4 WorldViewProjection_id37; // Offset:  320 Size:    64 [unused]
//   float3 WorldScale_id38;            // Offset:  384 Size:    12 [unused]
//   float4 EyeMS_id39;                 // Offset:  400 Size:    16 [unused]
//   uint MaterialIndex_id85;           // Offset:  416 Size:     4 [unused]
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
//   float NearClipPlane_id92;          // Offset:  352 Size:     4 [unused]
//      = 0x3f800000 
//   float FarClipPlane_id93;           // Offset:  356 Size:     4 [unused]
//      = 0x42c80000 
//   float2 ZProjection_id94;           // Offset:  360 Size:     8 [unused]
//   float2 ViewSize_id95;              // Offset:  368 Size:     8 [unused]
//   float AspectRatio_id96;            // Offset:  376 Size:     4 [unused]
//   float4 _padding_PerView_Default;   // Offset:  384 Size:    16 [unused]
//   int LightCount_id88;               // Offset:  400 Size:     4 [unused]
//   
//   struct DirectionalLightData
//   {
//       
//       float3 DirectionWS;            // Offset:  416
//       float3 Color;                  // Offset:  432
//
//   } Lights_id90[8];                  // Offset:  416 Size:   252 [unused]
//   float ClusterDepthScale_id101;     // Offset:  668 Size:     4 [unused]
//   float ClusterDepthBias_id102;      // Offset:  672 Size:     4 [unused]
//   float2 ClusterStride_id103;        // Offset:  676 Size:     8 [unused]
//   float3 AmbientLight_id106;         // Offset:  688 Size:    12 [unused]
//   float3 SphericalColors_id111[9];   // Offset:  704 Size:   140 [unused]
//   float MipCount_id170;              // Offset:  844 Size:     4 [unused]
//   float4x4 SkyMatrix_id172;          // Offset:  848 Size:    64 [unused]
//   float Intensity_id173;             // Offset:  912 Size:     4 [unused]
//   float3 SphericalColors_id180[9];   // Offset:  928 Size:   140 [unused]
//   float MipCount_id181;              // Offset: 1068 Size:     4 [unused]
//   float4x4 SkyMatrix_id183;          // Offset: 1072 Size:    64 [unused]
//   float Intensity_id184;             // Offset: 1136 Size:     4 [unused]
//   float4 _padding_PerView_Lighting;  // Offset: 1152 Size:    16 [unused]
//
// }
//
// Resource bind info for InstanceWorld_id40
// {
//
//   struct InstanceTransform
//   {
//       
//       float4x4 Matrix;               // Offset:    0
//
//   } $Element;                        // Offset:    0 Size:    64
//
// }
//
// Resource bind info for InstanceWorldInverse_id41
// {
//
//   struct InstanceTransform
//   {
//       
//       float4x4 Matrix;               // Offset:    0
//
//   } $Element;                        // Offset:    0 Size:    64
//
// }
//
//
// Resource Bindings:
//
// Name                                 Type  Format         Dim      HLSL Bind  Count
// ------------------------------ ---------- ------- ----------- -------------- ------
// InstanceWorld_id40                texture  struct         r/o             t0      1 
// InstanceWorldInverse_id41         texture  struct         r/o             t1      1 
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
// SV_InstanceID            0   x           1   INSTID    uint   x   
// NORMAL                   0   xyz         2     NONE   float   xyz 
//
//
// Output signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// POSITION_WS              0   xyzw        0     NONE   float   xyzw
// SV_Position              0   xyzw        1      POS   float   xyzw
// NORMALWS                 0   xyz         2     NONE   float   xyz 
// SCREENPOSITION_ID91_SEM     0   xyzw        3     NONE   float   xyzw
//
vs_5_0
dcl_globalFlags refactoringAllowed
dcl_constantbuffer CB0[8], immediateIndexed
dcl_constantbuffer CB1[20], immediateIndexed
dcl_resource_structured t0, 64
dcl_resource_structured t1, 64
dcl_input v0.xyzw
dcl_input_sgv v1.x, instance_id
dcl_input v2.xyz
dcl_output o0.xyzw
dcl_output_siv o1.xyzw, position
dcl_output o2.xyz
dcl_output o3.xyzw
dcl_temps 7
//
// Initial variable locations:
//   v0.x <- __input__.Position_id21.x; v0.y <- __input__.Position_id21.y; v0.z <- __input__.Position_id21.z; v0.w <- __input__.Position_id21.w; 
//   v1.x <- __input__.InstanceID_id13; 
//   v2.x <- __input__.meshNormal_id16.x; v2.y <- __input__.meshNormal_id16.y; v2.z <- __input__.meshNormal_id16.z; 
//   o3.x <- <VSMain return value>.ScreenPosition_id91.x; o3.y <- <VSMain return value>.ScreenPosition_id91.y; o3.z <- <VSMain return value>.ScreenPosition_id91.z; o3.w <- <VSMain return value>.ScreenPosition_id91.w; 
//   o2.x <- <VSMain return value>.normalWS_id19.x; o2.y <- <VSMain return value>.normalWS_id19.y; o2.z <- <VSMain return value>.normalWS_id19.z; 
//   o1.x <- <VSMain return value>.ShadingPosition_id0.x; o1.y <- <VSMain return value>.ShadingPosition_id0.y; o1.z <- <VSMain return value>.ShadingPosition_id0.z; o1.w <- <VSMain return value>.ShadingPosition_id0.w; 
//   o0.x <- <VSMain return value>.PositionWS_id22.x; o0.y <- <VSMain return value>.PositionWS_id22.y; o0.z <- <VSMain return value>.PositionWS_id22.z; o0.w <- <VSMain return value>.PositionWS_id22.w
//
#line 1031 "C:\Users\elektromeier\Desktop\VomAmt\VomAmtVR\lib\log\shader_VLEffectMain_7e4f6928b3e940f3082a64a0467a0ea0.hlsl"
ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r0.xyzw, v1.x, l(0), t0.xyzw
mov r1.x, r0.x
ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r2.xyzw, v1.x, l(16), t0.xzyw
mov r1.y, r2.x
ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r3.xyzw, v1.x, l(32), t0.xywz
mov r1.z, r3.x
ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r4.xyzw, v1.x, l(48), t0.xyzw
mov r1.w, r4.x
dp4 r5.x, r1.xyzw, cb0[0].xyzw  // r5.x <- <GetInstanceWorld_id13 return value>._m00
mov r6.x, r0.y
mov r6.y, r2.z
mov r6.z, r3.y
mov r6.w, r4.y
dp4 r5.y, r6.xyzw, cb0[0].xyzw  // r5.y <- <GetInstanceWorld_id13 return value>._m10
mov r2.x, r0.z
mov r3.x, r0.w
mov r3.y, r2.w
mov r2.z, r3.w
mov r2.w, r4.z
mov r3.w, r4.w
dp4 r5.z, r2.xyzw, cb0[0].xyzw  // r5.z <- <GetInstanceWorld_id13 return value>._m20
dp4 r5.w, r3.xyzw, cb0[0].xyzw  // r5.w <- <GetInstanceWorld_id13 return value>._m30

#line 1069
dp4 r0.x, v0.xyzw, r5.xyzw  // r0.x <- streams.PositionWS_id22.x

#line 1031
dp4 r4.x, r1.xyzw, cb0[1].xyzw  // r4.x <- <GetInstanceWorld_id13 return value>._m01
dp4 r4.y, r6.xyzw, cb0[1].xyzw  // r4.y <- <GetInstanceWorld_id13 return value>._m11
dp4 r4.z, r2.xyzw, cb0[1].xyzw  // r4.z <- <GetInstanceWorld_id13 return value>._m21
dp4 r4.w, r3.xyzw, cb0[1].xyzw  // r4.w <- <GetInstanceWorld_id13 return value>._m31

#line 1069
dp4 r0.y, v0.xyzw, r4.xyzw  // r0.y <- streams.PositionWS_id22.y

#line 1031
dp4 r4.x, r1.xyzw, cb0[2].xyzw  // r4.x <- <GetInstanceWorld_id13 return value>._m02
dp4 r1.x, r1.xyzw, cb0[3].xyzw  // r1.x <- <GetInstanceWorld_id13 return value>._m03
dp4 r4.y, r6.xyzw, cb0[2].xyzw  // r4.y <- <GetInstanceWorld_id13 return value>._m12
dp4 r1.y, r6.xyzw, cb0[3].xyzw  // r1.y <- <GetInstanceWorld_id13 return value>._m13
dp4 r4.z, r2.xyzw, cb0[2].xyzw  // r4.z <- <GetInstanceWorld_id13 return value>._m22
dp4 r1.z, r2.xyzw, cb0[3].xyzw  // r1.z <- <GetInstanceWorld_id13 return value>._m23
dp4 r4.w, r3.xyzw, cb0[2].xyzw  // r4.w <- <GetInstanceWorld_id13 return value>._m32
dp4 r1.w, r3.xyzw, cb0[3].xyzw  // r1.w <- <GetInstanceWorld_id13 return value>._m33

#line 1069
dp4 r0.w, v0.xyzw, r1.xyzw  // r0.w <- streams.PositionWS_id22.w
dp4 r0.z, v0.xyzw, r4.xyzw  // r0.z <- streams.PositionWS_id22.z

#line 1159
mov o0.xyzw, r0.xyzw

#line 1024
dp4 r1.x, r0.xyzw, cb1[16].xyzw  // r1.x <- <ComputeShadingPosition_id11 return value>.x
dp4 r1.y, r0.xyzw, cb1[17].xyzw  // r1.y <- <ComputeShadingPosition_id11 return value>.y
dp4 r1.z, r0.xyzw, cb1[18].xyzw  // r1.z <- <ComputeShadingPosition_id11 return value>.z
dp4 r1.w, r0.xyzw, cb1[19].xyzw  // r1.w <- <ComputeShadingPosition_id11 return value>.w

#line 1159
mov o1.xyzw, r1.xyzw
mov o3.xyzw, r1.xyzw

#line 1088
ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r0.xyzw, v1.x, l(16), t1.xyzw
mul r1.xyz, r0.yyyy, cb0[5].xyzx
mad r1.xyz, cb0[4].xyzx, r0.xxxx, r1.xyzx
mad r0.xyz, cb0[6].xyzx, r0.zzzz, r1.xyzx
mad r0.xyz, cb0[7].xyzx, r0.wwww, r0.xyzx  // r0.x <- <GetInstanceWorldInverse_id14 return value>._m01; r0.y <- <GetInstanceWorldInverse_id14 return value>._m11; r0.z <- <GetInstanceWorldInverse_id14 return value>._m21

#line 1113
mul r0.xyz, r0.xyzx, v2.yyyy

#line 1088
ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r1.xyzw, v1.x, l(0), t1.xyzw
mul r2.xyz, r1.yyyy, cb0[5].xyzx
mad r2.xyz, cb0[4].xyzx, r1.xxxx, r2.xyzx
mad r1.xyz, cb0[6].xyzx, r1.zzzz, r2.xyzx
mad r1.xyz, cb0[7].xyzx, r1.wwww, r1.xyzx  // r1.x <- <GetInstanceWorldInverse_id14 return value>._m00; r1.y <- <GetInstanceWorldInverse_id14 return value>._m10; r1.z <- <GetInstanceWorldInverse_id14 return value>._m20

#line 1113
mad r0.xyz, r1.xyzx, v2.xxxx, r0.xyzx

#line 1088
ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r1.xyzw, v1.x, l(32), t1.xyzw
mul r2.xyz, r1.yyyy, cb0[5].xyzx
mad r2.xyz, cb0[4].xyzx, r1.xxxx, r2.xyzx
mad r1.xyz, cb0[6].xyzx, r1.zzzz, r2.xyzx
mad r1.xyz, cb0[7].xyzx, r1.wwww, r1.xyzx  // r1.x <- <GetInstanceWorldInverse_id14 return value>._m02; r1.y <- <GetInstanceWorldInverse_id14 return value>._m12; r1.z <- <GetInstanceWorldInverse_id14 return value>._m22

#line 1113
mad o2.xyz, r1.xyzx, v2.zzzz, r0.xyzx

#line 1159
ret 
// Approximately 64 instruction slots used
@G    Pixel => ba3da0fd3ba6c355baf662d656c546d9
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
//   uint MaterialIndex_id85;           // Offset:  416 Size:     4
//
// }
//
// cbuffer PerMaterial
// {
//
//   float4 InputValue_id188;           // Offset:    0 Size:    16
//   float InputValue_id196;            // Offset:   16 Size:     4
//   float InputValue_id205;            // Offset:   20 Size:     4
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
//   float NearClipPlane_id92;          // Offset:  352 Size:     4 [unused]
//      = 0x3f800000 
//   float FarClipPlane_id93;           // Offset:  356 Size:     4 [unused]
//      = 0x42c80000 
//   float2 ZProjection_id94;           // Offset:  360 Size:     8
//   float2 ViewSize_id95;              // Offset:  368 Size:     8 [unused]
//   float AspectRatio_id96;            // Offset:  376 Size:     4 [unused]
//   float4 _padding_PerView_Default;   // Offset:  384 Size:    16 [unused]
//   int LightCount_id88;               // Offset:  400 Size:     4
//   
//   struct DirectionalLightData
//   {
//       
//       float3 DirectionWS;            // Offset:  416
//       float3 Color;                  // Offset:  432
//
//   } Lights_id90[8];                  // Offset:  416 Size:   252
//   float ClusterDepthScale_id101;     // Offset:  668 Size:     4
//   float ClusterDepthBias_id102;      // Offset:  672 Size:     4
//   float2 ClusterStride_id103;        // Offset:  676 Size:     8
//   float3 AmbientLight_id106;         // Offset:  688 Size:    12
//   float3 SphericalColors_id111[9];   // Offset:  704 Size:   140
//   float MipCount_id170;              // Offset:  844 Size:     4
//   float4x4 SkyMatrix_id172;          // Offset:  848 Size:    64
//   float Intensity_id173;             // Offset:  912 Size:     4
//   float3 SphericalColors_id180[9];   // Offset:  928 Size:   140
//   float MipCount_id181;              // Offset: 1068 Size:     4
//   float4x4 SkyMatrix_id183;          // Offset: 1072 Size:    64
//   float Intensity_id184;             // Offset: 1136 Size:     4
//   float4 _padding_PerView_Lighting;  // Offset: 1152 Size:    16 [unused]
//
// }
//
//
// Resource Bindings:
//
// Name                                 Type  Format         Dim      HLSL Bind  Count
// ------------------------------ ---------- ------- ----------- -------------- ------
// LinearSampler_id142               sampler      NA          NA             s0      1 
// EnvironmentLightingDFG_LUT_id217    texture  float4          2d             t0      1 
// LightClusters_id99                texture   uint2          3d             t1      1 
// LightIndices_id100                texture    uint         buf             t2      1 
// PointLights_id104                 texture  float4         buf             t3      1 
// SpotLights_id105                  texture  float4         buf             t4      1 
// CubeMap_id171                     texture  float4        cube             t5      1 
// CubeMap_id182                     texture  float4        cube             t6      1 
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
// SCREENPOSITION_ID91_SEM     0   xyzw        3     NONE   float   xy w
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
dcl_temps 18
//
// Initial variable locations:
//   v0.x <- __input__.PositionWS_id22.x; v0.y <- __input__.PositionWS_id22.y; v0.z <- __input__.PositionWS_id22.z; v0.w <- __input__.PositionWS_id22.w; 
//   v1.x <- __input__.ShadingPosition_id0.x; v1.y <- __input__.ShadingPosition_id0.y; v1.z <- __input__.ShadingPosition_id0.z; v1.w <- __input__.ShadingPosition_id0.w; 
//   v2.x <- __input__.normalWS_id19.x; v2.y <- __input__.normalWS_id19.y; v2.z <- __input__.normalWS_id19.z; 
//   v3.x <- __input__.ScreenPosition_id91.x; v3.y <- __input__.ScreenPosition_id91.y; v3.z <- __input__.ScreenPosition_id91.z; v3.w <- __input__.ScreenPosition_id91.w; 
//   v4.x <- __input__.IsFrontFace_id1; 
//   o1.x <- <PSMain return value>.ColorTarget1_id3.x; o1.y <- <PSMain return value>.ColorTarget1_id3.y; o1.z <- <PSMain return value>.ColorTarget1_id3.z; o1.w <- <PSMain return value>.ColorTarget1_id3.w; 
//   o0.x <- <PSMain return value>.ColorTarget_id2.x; o0.y <- <PSMain return value>.ColorTarget_id2.y; o0.z <- <PSMain return value>.ColorTarget_id2.z; o0.w <- <PSMain return value>.ColorTarget_id2.w
//
#line 1139 "C:\Users\elektromeier\Desktop\VomAmt\VomAmtVR\lib\log\shader_VLEffectMain_7e4f6928b3e940f3082a64a0467a0ea0.hlsl"
div r0.xy, v3.xyxx, v3.wwww  // r0.x <- streams.ScreenPosition_id91.x; r0.y <- streams.ScreenPosition_id91.y

#line 1107
dp3 r0.z, v2.xyzx, v2.xyzx
lt r0.w, l(0.000000), r0.z

#line 1108
rsq r0.z, r0.z
mul r1.xyz, r0.zzzz, v2.xyzx  // r1.x <- streams.normalWS_id19.x; r1.y <- streams.normalWS_id19.y; r1.z <- streams.normalWS_id19.z
movc r1.xyz, r0.wwww, r1.xyzx, v2.xyzx

#line 1077
add r2.xyz, -v0.xyzx, cb2[21].xyzx
dp3 r0.z, r2.xyzx, r2.xyzx
rsq r0.z, r0.z
mul r2.xyz, r0.zzzz, r2.xyzx  // r2.x <- streams.viewWS_id70.x; r2.y <- streams.viewWS_id70.y; r2.z <- streams.viewWS_id70.z

#line 988
add r0.z, -cb1[1].x, l(1.000000)  // r0.z <- glossiness

#line 980
add r3.xyz, cb1[0].xyzx, l(-0.020000, -0.020000, -0.020000, 0.000000)
mad r3.xyz, cb1[1].yyyy, r3.xyzx, l(0.020000, 0.020000, 0.020000, 0.000000)  // r3.x <- streams.matSpecular_id57.x; r3.y <- streams.matSpecular_id57.y; r3.z <- streams.matSpecular_id57.z

#line 981
mad r4.xyz, cb1[1].yyyy, -cb1[0].xyzx, cb1[0].xyzx  // r4.x <- streams.matDiffuse_id55.x; r4.y <- streams.matDiffuse_id55.y; r4.z <- streams.matDiffuse_id55.z

#line 833
movc r1.xyz, v4.xxxx, r1.xyzx, -r1.xyzx  // r1.x <- streams.normalWS_id19.x; r1.y <- streams.normalWS_id19.y; r1.z <- streams.normalWS_id19.z

#line 790
dp3 r0.w, r1.xyzx, r2.xyzx
max r5.y, r0.w, l(0.000100)  // r5.y <- streams.NdotV_id74

#line 791
add r0.z, -r0.z, l(1.000000)  // r0.z <- roughness

#line 792
mul r0.z, r0.z, r0.z
max r0.z, r0.z, l(0.001000)  // r0.z <- streams.alphaRoughness_id72

#line 851
mov r0.w, r5.y  // r0.w <- streams.NdotV_id74
mov r6.xyz, r1.xyzx  // r6.x <- streams.normalWS_id19.x; r6.y <- streams.normalWS_id19.y; r6.z <- streams.normalWS_id19.z
mov r7.xyz, r2.xyzx  // r7.x <- streams.viewWS_id70.x; r7.y <- streams.viewWS_id70.y; r7.z <- streams.viewWS_id70.z
mov r8.xyz, r4.xyzx  // r8.x <- streams.matDiffuseVisible_id71.x; r8.y <- streams.matDiffuseVisible_id71.y; r8.z <- streams.matDiffuseVisible_id71.z
mov r9.xyz, r3.xyzx  // r9.x <- streams.matSpecularVisible_id73.x; r9.y <- streams.matSpecularVisible_id73.y; r9.z <- streams.matSpecularVisible_id73.z
mov r9.w, r0.z  // r9.w <- streams.alphaRoughness_id72
mov r10.xyz, l(0,0,0,0)  // r10.x <- directLightingContribution.x; r10.y <- directLightingContribution.y; r10.z <- directLightingContribution.z
mov r1.w, l(0)  // r1.w <- i
loop 
  ige r2.w, r1.w, l(8)
  breakc_nz r2.w

#line 853
  ige r2.w, r1.w, cb2[25].x
  if_nz r2.w

#line 855
    break 

#line 856
  endif 

#line 618
  ishl r2.w, r1.w, l(1)

#line 760
  dp3 r3.w, r6.xyzx, -cb2[r2.w + 26].xyzx
  max r3.w, r3.w, l(0.000100)  // r3.w <- streams.NdotL_id51

#line 762
  mul r11.xyz, r3.wwww, cb2[r2.w + 27].xyzx  // r11.x <- streams.lightColorNdotL_id46.x; r11.y <- streams.lightColorNdotL_id46.y; r11.z <- streams.lightColorNdotL_id46.z

#line 752
  add r12.xyz, r7.xyzx, -cb2[r2.w + 26].xyzx
  dp3 r4.w, r12.xyzx, r12.xyzx
  rsq r4.w, r4.w
  mul r12.xyz, r4.wwww, r12.xyzx  // r12.x <- streams.H_id77.x; r12.y <- streams.H_id77.y; r12.z <- streams.H_id77.z

#line 753
  dp3_sat r4.w, r6.xyzx, r12.xyzx  // r4.w <- streams.NdotH_id78

#line 754
  dp3_sat r2.w, -cb2[r2.w + 26].xyzx, r12.xyzx  // r2.w <- streams.LdotH_id79

#line 748
  mul r12.xyz, r8.xyzx, r11.xyzx

#line 861
  mad r12.xyz, r12.xyzx, l(0.318310, 0.318310, 0.318310, 0.000000), r10.xyzx  // r12.x <- directLightingContribution.x; r12.y <- directLightingContribution.y; r12.z <- directLightingContribution.z

#line 360
  add r13.xyz, -r9.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
  add r2.w, -r2.w, l(1.000000)
  mul r5.z, r2.w, r2.w
  mul r5.z, r5.z, r5.z
  mul r2.w, r2.w, r5.z
  mad r13.xyz, r13.xyzx, r2.wwww, r9.xyzx  // r13.x <- <FresnelSchlick_id147 return value>.x; r13.y <- <FresnelSchlick_id147 return value>.y; r13.z <- <FresnelSchlick_id147 return value>.z

#line 355
  mul r2.w, r9.w, l(0.500000)  // r2.w <- k

#line 356
  mad r5.z, -r9.w, l(0.500000), l(1.000000)
  mad r5.w, r3.w, r5.z, r2.w
  div r5.w, r3.w, r5.w  // r5.w <- <VisibilityhSchlickGGX_id163 return value>
  mad r2.w, r0.w, r5.z, r2.w
  div r2.w, r0.w, r2.w  // r2.w <- <VisibilityhSchlickGGX_id163 return value>

#line 449
  mul r2.w, r2.w, r5.w
  mul r3.w, r0.w, r3.w
  div r2.w, r2.w, r3.w  // r2.w <- <VisibilitySmithSchlickGGX_id165 return value>

#line 443
  mul r3.w, r9.w, r9.w  // r3.w <- alphaR2

#line 444
  mul r4.w, r4.w, r4.w
  mad r5.z, r9.w, r9.w, l(-1.000000)
  mad r4.w, r4.w, r5.z, l(1.000000)
  max r4.w, r4.w, l(0.000100)  // r4.w <- d

#line 445
  mul r4.w, r4.w, r4.w
  mul r4.w, r4.w, l(3.141593)
  div r3.w, r3.w, r4.w  // r3.w <- <NormalDistributionGGX_id177 return value>

#line 742
  mul r13.xyz, r2.wwww, r13.xyzx
  mul r13.xyz, r3.wwww, r13.xyzx
  mul r11.xyz, r11.xyzx, r13.xyzx

#line 865
  mad r10.xyz, r11.xyzx, l(0.250000, 0.250000, 0.250000, 0.000000), r12.xyzx  // r10.x <- directLightingContribution.x; r10.y <- directLightingContribution.y; r10.z <- directLightingContribution.z

#line 851
  iadd r1.w, r1.w, l(1)

#line 867
endloop 

#line 585
add r0.w, v1.z, -cb2[22].z
div r0.w, cb2[22].w, r0.w  // r0.w <- depth

#line 586
mad r0.xy, r0.xyxx, l(1.000000, -1.000000, 0.000000, 0.000000), l(1.000000, 1.000000, 0.000000, 0.000000)
mul r0.xy, r0.xyxx, cb2[42].yzyy

#line 587
mad r0.w, r0.w, cb2[41].w, cb2[42].x
log r0.w, r0.w
max r0.w, r0.w, l(0.000000)

#line 588
mul r0.xy, r0.xyxx, l(0.500000, 0.500000, 0.000000, 0.000000)

#line 587
ftoi r6.xyz, r0.xywx  // r6.z <- slice

#line 588
mov r6.w, l(0)
ld_indexable(texture3d)(uint,uint,uint,uint) r0.xy, r6.xyzw, t1.xyzw  // r0.x <- streams.lightData_id97.x; r0.y <- streams.lightData_id97.y

#line 730
and r0.w, r0.y, l(0x0000ffff)  // r0.w <- <GetMaxLightCount_id205 return value>

#line 875
mov r6.xyz, r1.xyzx  // r6.x <- streams.normalWS_id19.x; r6.y <- streams.normalWS_id19.y; r6.z <- streams.normalWS_id19.z
mov r6.w, v0.x  // r6.w <- streams.PositionWS_id22.x
mov r7.xy, v0.yzyy  // r7.x <- streams.PositionWS_id22.y; r7.y <- streams.PositionWS_id22.z
mov r7.zw, r2.xxxy  // r7.z <- streams.viewWS_id70.x; r7.w <- streams.viewWS_id70.y
mov r8.z, r2.z  // r8.z <- streams.viewWS_id70.z
mov r9.xyz, r4.xyzx  // r9.x <- streams.matDiffuseVisible_id71.x; r9.y <- streams.matDiffuseVisible_id71.y; r9.z <- streams.matDiffuseVisible_id71.z
mov r11.xyz, r3.xyzx  // r11.x <- streams.matSpecularVisible_id73.x; r11.y <- streams.matSpecularVisible_id73.y; r11.z <- streams.matSpecularVisible_id73.z
mov r11.w, r0.z  // r11.w <- streams.alphaRoughness_id72
mov r5.w, r5.y  // r5.w <- streams.NdotV_id74
mov r5.z, r0.x  // r5.z <- streams.lightIndex_id98
mov r12.xyz, r10.xyzx  // r12.x <- directLightingContribution.x; r12.y <- directLightingContribution.y; r12.z <- directLightingContribution.z
mov r1.w, l(0)  // r1.w <- i
loop 
  ige r2.w, r1.w, r0.w
  breakc_nz r2.w

#line 877
  if_nz r2.w

#line 879
    break 

#line 880
  endif 

#line 572
  ld_indexable(buffer)(uint,uint,uint,uint) r2.w, r5.zzzz, t2.yzwx  // r2.w <- realLightIndex

#line 573
  iadd r5.z, r5.z, l(1)  // r5.z <- streams.lightIndex_id98

#line 575
  ishl r3.w, r2.w, l(1)
  ld_indexable(buffer)(float,float,float,float) r13.xyzw, r3.wwww, t3.xyzw  // r13.x <- pointLight1.x; r13.y <- pointLight1.y; r13.z <- pointLight1.z; r13.w <- pointLight1.w

#line 576
  bfi r2.w, l(31), l(1), r2.w, l(1)
  ld_indexable(buffer)(float,float,float,float) r14.xyz, r2.wwww, t3.xyzw  // r14.x <- pointLight2.x; r14.y <- pointLight2.y; r14.z <- pointLight2.z

#line 347
  mov r15.x, r6.w
  mov r15.yz, r7.xxyx
  add r13.xyz, r13.xyzx, -r15.xyzx  // r13.x <- lightVector.x; r13.y <- lightVector.y; r13.z <- lightVector.z

#line 348
  dp3 r2.w, r13.xyzx, r13.xyzx
  sqrt r3.w, r2.w  // r3.w <- lightVectorLength

#line 349
  div r13.xyz, r13.xyzx, r3.wwww  // r13.x <- lightVectorNorm.x; r13.y <- lightVectorNorm.y; r13.z <- lightVectorNorm.z

#line 316
  max r3.w, r2.w, l(0.000100)
  div r3.w, l(1.000000, 1.000000, 1.000000, 1.000000), r3.w  // r3.w <- attenuation

#line 295
  mul r2.w, r13.w, r2.w  // r2.w <- factor

#line 296
  mad r2.w, -r2.w, r2.w, l(1.000000)
  max r2.w, r2.w, l(0.000000)  // r2.w <- smoothFactor

#line 297
  mul r2.w, r2.w, r2.w  // r2.w <- <SmoothDistanceAttenuation_id68 return value>

#line 317
  mul r2.w, r2.w, r3.w  // r2.w <- attenuation

#line 716
  dp3 r3.w, r6.xyzx, r13.xyzx
  max r3.w, r3.w, l(0.000100)  // r3.w <- streams.NdotL_id51

#line 718
  mul r14.xyz, r2.wwww, r14.xyzx
  mul r14.xyz, r3.wwww, r14.xyzx  // r14.x <- streams.lightColorNdotL_id46.x; r14.y <- streams.lightColorNdotL_id46.y; r14.z <- streams.lightColorNdotL_id46.z

#line 752
  mov r8.xy, r7.zwzz
  add r8.xyw, r13.xyxz, r8.xyxz
  dp3 r2.w, r8.xywx, r8.xywx
  rsq r2.w, r2.w
  mul r8.xyw, r2.wwww, r8.xyxw  // r8.x <- streams.H_id77.x; r8.y <- streams.H_id77.y; r8.w <- streams.H_id77.z

#line 753
  dp3_sat r2.w, r6.xyzx, r8.xywx  // r2.w <- streams.NdotH_id78

#line 754
  dp3_sat r4.w, r13.xyzx, r8.xywx  // r4.w <- streams.LdotH_id79

#line 748
  mul r8.xyw, r9.xyxz, r14.xyxz

#line 885
  mad r8.xyw, r8.xyxw, l(0.318310, 0.318310, 0.000000, 0.318310), r12.xyxz  // r8.x <- directLightingContribution.x; r8.y <- directLightingContribution.y; r8.w <- directLightingContribution.z

#line 360
  add r13.xyz, -r11.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
  add r4.w, -r4.w, l(1.000000)
  mul r9.w, r4.w, r4.w
  mul r9.w, r9.w, r9.w
  mul r4.w, r4.w, r9.w
  mad r13.xyz, r13.xyzx, r4.wwww, r11.xyzx  // r13.x <- <FresnelSchlick_id147 return value>.x; r13.y <- <FresnelSchlick_id147 return value>.y; r13.z <- <FresnelSchlick_id147 return value>.z

#line 355
  mul r4.w, r11.w, l(0.500000)  // r4.w <- k

#line 356
  mad r9.w, -r11.w, l(0.500000), l(1.000000)
  mad r10.w, r3.w, r9.w, r4.w
  div r10.w, r3.w, r10.w  // r10.w <- <VisibilityhSchlickGGX_id163 return value>
  mad r4.w, r5.w, r9.w, r4.w
  div r4.w, r5.w, r4.w  // r4.w <- <VisibilityhSchlickGGX_id163 return value>

#line 449
  mul r4.w, r4.w, r10.w
  mul r3.w, r5.w, r3.w
  div r3.w, r4.w, r3.w  // r3.w <- <VisibilitySmithSchlickGGX_id165 return value>

#line 443
  mul r4.w, r11.w, r11.w  // r4.w <- alphaR2

#line 444
  mul r2.w, r2.w, r2.w
  mad r9.w, r11.w, r11.w, l(-1.000000)
  mad r2.w, r2.w, r9.w, l(1.000000)
  max r2.w, r2.w, l(0.000100)  // r2.w <- d

#line 445
  mul r2.w, r2.w, r2.w
  mul r2.w, r2.w, l(3.141593)
  div r2.w, r4.w, r2.w  // r2.w <- <NormalDistributionGGX_id177 return value>

#line 742
  mul r13.xyz, r3.wwww, r13.xyzx
  mul r13.xyz, r2.wwww, r13.xyzx
  mul r13.xyz, r14.xyzx, r13.xyzx

#line 889
  mad r12.xyz, r13.xyzx, l(0.250000, 0.250000, 0.250000, 0.000000), r8.xywx  // r12.x <- directLightingContribution.x; r12.y <- directLightingContribution.y; r12.z <- directLightingContribution.z

#line 875
  iadd r1.w, r1.w, l(1)

#line 891
endloop   // r5.z <- streams.lightIndex_id98

#line 708
ushr r0.x, r0.y, l(16)  // r0.x <- <GetMaxLightCount_id217 return value>

#line 899
mov r6.xyz, v0.xyzx  // r6.x <- streams.PositionWS_id22.x; r6.y <- streams.PositionWS_id22.y; r6.z <- streams.PositionWS_id22.z
mov r7.xyz, r1.xyzx  // r7.x <- streams.normalWS_id19.x; r7.y <- streams.normalWS_id19.y; r7.z <- streams.normalWS_id19.z
mov r8.xyz, r2.xyzx  // r8.x <- streams.viewWS_id70.x; r8.y <- streams.viewWS_id70.y
mov r9.xyz, r4.xyzx
mov r10.xyz, r3.xyzx  // r10.x <- streams.matSpecularVisible_id73.x; r10.y <- streams.matSpecularVisible_id73.y; r10.z <- streams.matSpecularVisible_id73.z
mov r11.x, r0.z  // r11.x <- streams.alphaRoughness_id72
mov r11.z, r5.y  // r11.z <- streams.NdotV_id74
mov r13.xyz, r12.xyzx  // r13.x <- directLightingContribution.x; r13.y <- directLightingContribution.y; r13.z <- directLightingContribution.z
mov r0.y, r5.z  // r0.y <- streams.lightIndex_id98
mov r0.w, l(0)  // r0.w <- i
loop 
  ige r1.w, r0.w, r0.x
  breakc_nz r1.w

#line 901
  if_nz r1.w

#line 903
    break 

#line 904
  endif 

#line 544
  ld_indexable(buffer)(uint,uint,uint,uint) r1.w, r0.yyyy, t2.yzwx  // r1.w <- realLightIndex

#line 545
  iadd r0.y, r0.y, l(1)  // r0.y <- streams.lightIndex_id98

#line 547
  ishl r2.w, r1.w, l(2)
  ld_indexable(buffer)(float,float,float,float) r14.xyz, r2.wwww, t4.xyzw  // r14.x <- spotLight1.x; r14.y <- spotLight1.y; r14.z <- spotLight1.z

#line 550
  bfi r15.xyz, l(30, 30, 30, 0), l(2, 2, 2, 0), r1.wwww, l(1, 2, 3, 0)

#line 548
  ld_indexable(buffer)(float,float,float,float) r16.xyz, r15.xxxx, t4.xyzw  // r16.x <- spotLight2.x; r16.y <- spotLight2.y; r16.z <- spotLight2.z

#line 549
  ld_indexable(buffer)(float,float,float,float) r15.xyw, r15.yyyy, t4.xywz  // r15.x <- spotLight3.x; r15.y <- spotLight3.y; r15.w <- spotLight3.z

#line 550
  ld_indexable(buffer)(float,float,float,float) r17.xyz, r15.zzzz, t4.xyzw  // r17.x <- spotLight4.x; r17.y <- spotLight4.y; r17.z <- spotLight4.z

#line 334
  add r14.xyz, -r6.xyzx, r14.xyzx  // r14.x <- lightVector.x; r14.y <- lightVector.y; r14.z <- lightVector.z

#line 335
  dp3 r1.w, r14.xyzx, r14.xyzx
  sqrt r2.w, r1.w  // r2.w <- lightVectorLength

#line 336
  div r14.xyz, r14.xyzx, r2.wwww  // r14.x <- lightVectorNorm.x; r14.y <- lightVectorNorm.y; r14.z <- lightVectorNorm.z

#line 309
  max r2.w, r1.w, l(0.000100)
  div r2.w, l(1.000000, 1.000000, 1.000000, 1.000000), r2.w  // r2.w <- attenuation

#line 289
  mul r1.w, r15.w, r1.w  // r1.w <- factor

#line 290
  mad r1.w, -r1.w, r1.w, l(1.000000)
  max r1.w, r1.w, l(0.000000)  // r1.w <- smoothFactor

#line 291
  mul r1.w, r1.w, r1.w  // r1.w <- <SmoothDistanceAttenuation_id79 return value>

#line 310
  mul r1.w, r1.w, r2.w  // r1.w <- attenuation

#line 301
  dp3 r2.w, -r16.xyzx, r14.xyzx  // r2.w <- cd

#line 302
  mad_sat r2.w, r2.w, r15.x, r15.y  // r2.w <- attenuation

#line 303
  mul r2.w, r2.w, r2.w

#line 342
  mul r1.w, r1.w, r2.w  // r1.w <- attenuation

#line 694
  dp3 r2.w, r7.xyzx, r14.xyzx
  max r2.w, r2.w, l(0.000100)  // r2.w <- streams.NdotL_id51

#line 696
  mul r15.xyz, r1.wwww, r17.xyzx
  mul r15.xyz, r2.wwww, r15.xyzx  // r15.x <- streams.lightColorNdotL_id46.x; r15.y <- streams.lightColorNdotL_id46.y; r15.z <- streams.lightColorNdotL_id46.z

#line 752
  add r16.xyz, r8.xyzx, r14.xyzx
  dp3 r1.w, r16.xyzx, r16.xyzx
  rsq r1.w, r1.w
  mul r16.xyz, r1.wwww, r16.xyzx  // r16.x <- streams.H_id77.x; r16.y <- streams.H_id77.y; r16.z <- streams.H_id77.z

#line 753
  dp3_sat r1.w, r7.xyzx, r16.xyzx  // r1.w <- streams.NdotH_id78

#line 754
  dp3_sat r3.w, r14.xyzx, r16.xyzx  // r3.w <- streams.LdotH_id79

#line 748
  mul r14.xyz, r9.xyzx, r15.xyzx

#line 909
  mad r14.xyz, r14.xyzx, l(0.318310, 0.318310, 0.318310, 0.000000), r13.xyzx  // r14.x <- directLightingContribution.x; r14.y <- directLightingContribution.y; r14.z <- directLightingContribution.z

#line 360
  add r16.xyz, -r10.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
  add r3.w, -r3.w, l(1.000000)
  mul r4.w, r3.w, r3.w
  mul r4.w, r4.w, r4.w
  mul r3.w, r3.w, r4.w
  mad r16.xyz, r16.xyzx, r3.wwww, r10.xyzx  // r16.x <- <FresnelSchlick_id147 return value>.x; r16.y <- <FresnelSchlick_id147 return value>.y; r16.z <- <FresnelSchlick_id147 return value>.z

#line 355
  mul r3.w, r11.x, l(0.500000)  // r3.w <- k

#line 356
  mad r4.w, -r11.x, l(0.500000), l(1.000000)
  mad r5.w, r2.w, r4.w, r3.w
  div r5.w, r2.w, r5.w  // r5.w <- <VisibilityhSchlickGGX_id163 return value>
  mad r3.w, r11.z, r4.w, r3.w
  div r3.w, r11.z, r3.w  // r3.w <- <VisibilityhSchlickGGX_id163 return value>

#line 449
  mul r3.w, r3.w, r5.w
  mul r2.w, r11.z, r2.w
  div r2.w, r3.w, r2.w  // r2.w <- <VisibilitySmithSchlickGGX_id165 return value>

#line 443
  mul r3.w, r11.x, r11.x  // r3.w <- alphaR2

#line 444
  mul r1.w, r1.w, r1.w
  mad r4.w, r11.x, r11.x, l(-1.000000)
  mad r1.w, r1.w, r4.w, l(1.000000)
  max r1.w, r1.w, l(0.000100)  // r1.w <- d

#line 445
  mul r1.w, r1.w, r1.w
  mul r1.w, r1.w, l(3.141593)
  div r1.w, r3.w, r1.w  // r1.w <- <NormalDistributionGGX_id177 return value>

#line 742
  mul r16.xyz, r2.wwww, r16.xyzx
  mul r16.xyz, r1.wwww, r16.xyzx
  mul r15.xyz, r15.xyzx, r16.xyzx

#line 913
  mad r13.xyz, r15.xyzx, l(0.250000, 0.250000, 0.250000, 0.000000), r14.xyzx  // r13.x <- directLightingContribution.x; r13.y <- directLightingContribution.y; r13.z <- directLightingContribution.z

#line 899
  iadd r0.w, r0.w, l(1)

#line 915
endloop   // r0.y <- streams.lightIndex_id98

#line 520
sqrt r0.x, r0.z
add r5.x, -r0.x, l(1.000000)  // r5.x <- glossiness

#line 521
sample_l_indexable(texture2d)(float,float,float,float) r0.yz, r5.xyxx, t0.zxyw, s0, l(0.000000)  // r0.y <- environmentLightingDFG.x; r0.z <- environmentLightingDFG.y

#line 522
mad r0.yzw, r3.xxyz, r0.yyyy, r0.zzzz  // r0.y <- <Compute_id313 return value>.x; r0.z <- <Compute_id313 return value>.y; r0.w <- <Compute_id313 return value>.z

#line 677
mul r3.xyz, r0.yzwy, cb2[43].xyzx  // r3.x <- <ComputeEnvironmentLightContribution_id492 return value>.x; r3.y <- <ComputeEnvironmentLightContribution_id492 return value>.y; r3.z <- <ComputeEnvironmentLightContribution_id492 return value>.z

#line 927
mad r3.xyz, r4.xyzx, cb2[43].xyzx, r3.xyzx  // r3.x <- environmentLightingContribution.x; r3.y <- environmentLightingContribution.y; r3.z <- environmentLightingContribution.z

#line 666
dp3 r1.w, r1.xyzx, cb2[53].xyzx  // r1.w <- sampleDirection.x
dp3 r2.w, r1.xyzx, cb2[54].xyzx  // r2.w <- sampleDirection.y
dp3 r3.w, r1.xyzx, cb2[55].xyzx  // r3.w <- sampleDirection.z

#line 405
mul r4.w, r2.w, r2.w  // r4.w <- y2

#line 406
mul r5.x, r3.w, r3.w  // r5.x <- z2

#line 410
mad r5.yzw, cb2[45].xxyz, r2.wwww, cb2[44].xxyz  // r5.y <- color.x; r5.z <- color.y; r5.w <- color.z

#line 411
mad r5.yzw, cb2[46].xxyz, -r3.wwww, r5.yyzw

#line 412
mad r5.yzw, cb2[47].xxyz, r1.wwww, r5.yyzw

#line 415
mul r6.xyz, r2.wwww, cb2[48].xyzx
mad r5.yzw, r6.xxyz, r1.wwww, r5.yyzw

#line 416
mul r6.xyz, r2.wwww, cb2[49].xyzx
mad r5.yzw, r6.xxyz, -r3.wwww, r5.yyzw

#line 417
mad r2.w, r5.x, l(3.000000), l(-1.000000)
mad r5.xyz, cb2[50].xyzx, r2.wwww, r5.yzwy  // r5.x <- color.x; r5.y <- color.y; r5.z <- color.z

#line 418
mul r6.xyz, r1.wwww, cb2[51].xyzx
mad r5.xyz, r6.xyzx, -r3.wwww, r5.xyzx

#line 419
mad r1.w, r1.w, r1.w, -r4.w
mad r5.xyz, cb2[52].xyzx, r1.wwww, r5.xyzx

#line 668
mul r5.xyz, r5.xyzx, cb2[57].xxxx  // r5.x <- streams.envLightDiffuseColor_id49.x; r5.y <- streams.envLightDiffuseColor_id49.y; r5.z <- streams.envLightDiffuseColor_id49.z

#line 669
dp3 r1.w, -r2.xyzx, r1.xyzx
add r1.w, r1.w, r1.w
mad r2.xyz, r1.xyzx, -r1.wwww, -r2.xyzx  // r2.x <- sampleDirection.x; r2.y <- sampleDirection.y; r2.z <- sampleDirection.z

#line 670
dp3 r6.x, r2.xyzx, cb2[53].xyzx  // r6.x <- sampleDirection.x
dp3 r6.y, r2.xyzx, cb2[54].xyzx  // r6.y <- sampleDirection.y
dp3 r1.w, r2.xyzx, cb2[55].xyzx  // r1.w <- sampleDirection.z

#line 671
mov r6.z, -r1.w  // r6.z <- sampleDirection.z

#line 506
mul r1.w, r0.x, cb2[52].w  // r1.w <- mipLevel

#line 507
sample_l_indexable(texturecube)(float,float,float,float) r6.xyz, r6.xyzx, t5.xyzw, s0, r1.w  // r6.x <- <Compute_id238 return value>.x; r6.y <- <Compute_id238 return value>.y; r6.z <- <Compute_id238 return value>.z

#line 672
mul r6.xyz, r6.xyzx, cb2[57].xxxx  // r6.x <- streams.envLightSpecularColor_id50.x; r6.y <- streams.envLightSpecularColor_id50.y; r6.z <- streams.envLightSpecularColor_id50.z

#line 935
mad r3.xyz, r4.xyzx, r5.xyzx, r3.xyzx

#line 939
mad r3.xyz, r0.yzwy, r6.xyzx, r3.xyzx

#line 654
dp3 r1.w, r1.xyzx, cb2[67].xyzx  // r1.w <- sampleDirection.x
dp3 r2.w, r1.xyzx, cb2[68].xyzx  // r2.w <- sampleDirection.y
dp3 r1.x, r1.xyzx, cb2[69].xyzx  // r1.x <- sampleDirection.z

#line 380
mul r1.y, r2.w, r2.w  // r1.y <- y2

#line 381
mul r1.z, r1.x, r1.x  // r1.z <- z2

#line 385
mad r5.xyz, cb2[59].xyzx, r2.wwww, cb2[58].xyzx  // r5.x <- color.x; r5.y <- color.y; r5.z <- color.z

#line 386
mad r5.xyz, cb2[60].xyzx, -r1.xxxx, r5.xyzx

#line 387
mad r5.xyz, cb2[61].xyzx, r1.wwww, r5.xyzx

#line 390
mul r6.xyz, r2.wwww, cb2[62].xyzx
mad r5.xyz, r6.xyzx, r1.wwww, r5.xyzx

#line 391
mul r6.xyz, r2.wwww, cb2[63].xyzx
mad r5.xyz, r6.xyzx, -r1.xxxx, r5.xyzx

#line 392
mad r1.z, r1.z, l(3.000000), l(-1.000000)
mad r5.xyz, cb2[64].xyzx, r1.zzzz, r5.xyzx

#line 393
mul r6.xyz, r1.wwww, cb2[65].xyzx
mad r5.xyz, r6.xyzx, -r1.xxxx, r5.xyzx

#line 394
mad r1.x, r1.w, r1.w, -r1.y
mad r1.xyz, cb2[66].xyzx, r1.xxxx, r5.xyzx  // r1.x <- color.x; r1.y <- color.y; r1.z <- color.z

#line 656
mul r1.xyz, r1.xyzx, cb2[71].xxxx  // r1.x <- streams.envLightDiffuseColor_id49.x; r1.y <- streams.envLightDiffuseColor_id49.y; r1.z <- streams.envLightDiffuseColor_id49.z

#line 658
dp3 r5.x, r2.xyzx, cb2[67].xyzx  // r5.x <- sampleDirection.x
dp3 r5.y, r2.xyzx, cb2[68].xyzx  // r5.y <- sampleDirection.y
dp3 r1.w, r2.xyzx, cb2[69].xyzx  // r1.w <- sampleDirection.z

#line 659
mov r5.z, -r1.w  // r5.z <- sampleDirection.z

#line 491
mul r0.x, r0.x, cb2[66].w  // r0.x <- mipLevel

#line 492
sample_l_indexable(texturecube)(float,float,float,float) r2.xyz, r5.xyzx, t6.xyzw, s0, r0.x  // r2.x <- <Compute_id258 return value>.x; r2.y <- <Compute_id258 return value>.y; r2.z <- <Compute_id258 return value>.z

#line 660
mul r2.xyz, r2.xyzx, cb2[71].xxxx  // r2.x <- streams.envLightSpecularColor_id50.x; r2.y <- streams.envLightSpecularColor_id50.y; r2.z <- streams.envLightSpecularColor_id50.z

#line 947
mad r1.xyz, r4.xyzx, r1.xyzx, r3.xyzx  // r1.x <- environmentLightingContribution.x; r1.y <- environmentLightingContribution.y; r1.z <- environmentLightingContribution.z

#line 951
mad r0.xyz, r0.yzwy, r2.xyzx, r1.xyzx  // r0.x <- environmentLightingContribution.x; r0.y <- environmentLightingContribution.y; r0.z <- environmentLightingContribution.z

#line 966
mad o0.xyz, r13.xyzx, l(3.141593, 3.141593, 3.141593, 0.000000), r0.xyzx

#line 1073
utof o1.xyzw, cb0[26].xxxx

#line 1144
mov o0.w, cb1[0].w
ret 
// Approximately 317 instruction slots used
***************************
*************************/
const static int TMaxLightCount_id89 = 8;
const static int TOrder_id108 = 3;
const static int TOrder_id110 = 3;
const static bool TInvert_id202 = true;
const static bool TIsEnergyConservative_id214 = false;
static const float PI_id216 = 3.14159265358979323846;
struct PS_STREAMS 
{
    float4 ScreenPosition_id91;
    float3 normalWS_id19;
    float4 PositionWS_id22;
    float4 ShadingPosition_id0;
    bool IsFrontFace_id1;
    float3 meshNormalWS_id17;
    float3 viewWS_id70;
    float3 shadingColor_id75;
    float matBlend_id42;
    float3 matNormal_id53;
    float4 matColorBase_id54;
    float4 matDiffuse_id55;
    float3 matDiffuseVisible_id71;
    float3 matSpecular_id57;
    float3 matSpecularVisible_id73;
    float matSpecularIntensity_id58;
    float matGlossiness_id56;
    float alphaRoughness_id72;
    float matAmbientOcclusion_id59;
    float matAmbientOcclusionDirectLightingFactor_id60;
    float matCavity_id61;
    float matCavityDiffuse_id62;
    float matCavitySpecular_id63;
    float4 matEmissive_id64;
    float matEmissiveIntensity_id65;
    float matScatteringStrength_id66;
    float2 matDiffuseSpecularAlphaBlend_id67;
    float3 matAlphaBlendColor_id68;
    float matAlphaDiscard_id69;
    float shadingColorAlpha_id76;
    float4 Input_0_id187;
    float Input_1_id195;
    float Input_2_id204;
    float3 lightPositionWS_id43;
    float3 lightDirectionWS_id44;
    float3 lightColor_id45;
    float3 lightColorNdotL_id46;
    float3 lightSpecularColorNdotL_id47;
    float lightAttenuation_id48;
    float3 envLightDiffuseColor_id49;
    float3 envLightSpecularColor_id50;
    float lightDirectAmbientOcclusion_id52;
    float NdotL_id51;
    float NdotV_id74;
    float thicknessWS_id87;
    float3 shadowColor_id86;
    float3 H_id77;
    float NdotH_id78;
    float LdotH_id79;
    float VdotH_id80;
    uint2 lightData_id97;
    int lightIndex_id98;
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
    float4 ScreenPosition_id91 : SCREENPOSITION_ID91_SEM;
    bool IsFrontFace_id1 : SV_IsFrontFace;
};
struct VS_STREAMS 
{
    float4 Position_id21;
    uint InstanceID_id13;
    float3 meshNormal_id16;
    float4 PositionH_id24;
    float DepthVS_id23;
    float3 meshNormalWS_id17;
    float4 PositionWS_id22;
    float4 ShadingPosition_id0;
    float3 normalWS_id19;
    float4 ScreenPosition_id91;
};
struct VS_OUTPUT 
{
    float4 PositionWS_id22 : POSITION_WS;
    float4 ShadingPosition_id0 : SV_Position;
    float3 normalWS_id19 : NORMALWS;
    float4 ScreenPosition_id91 : SCREENPOSITION_ID91_SEM;
};
struct VS_INPUT 
{
    float4 Position_id21 : POSITION;
    uint InstanceID_id13 : SV_InstanceID;
    float3 meshNormal_id16 : NORMAL;
};
struct InstanceTransform 
{
    float4x4 Matrix;
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
    uint MaterialIndex_id85;
};
cbuffer PerMaterial 
{
    float4 InputValue_id188;
    float InputValue_id196;
    float InputValue_id205;
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
    float NearClipPlane_id92 = 1.0f;
    float FarClipPlane_id93 = 100.0f;
    float2 ZProjection_id94;
    float2 ViewSize_id95;
    float AspectRatio_id96;
    float4 _padding_PerView_Default;
    int LightCount_id88;
    DirectionalLightData Lights_id90[TMaxLightCount_id89];
    float ClusterDepthScale_id101;
    float ClusterDepthBias_id102;
    float2 ClusterStride_id103;
    float3 AmbientLight_id106;
    float3 SphericalColors_id111[TOrder_id110 * TOrder_id110];
    float MipCount_id170;
    float4x4 SkyMatrix_id172;
    float Intensity_id173;
    float3 SphericalColors_id180[TOrder_id110 * TOrder_id110];
    float MipCount_id181;
    float4x4 SkyMatrix_id183;
    float Intensity_id184;
    float4 _padding_PerView_Lighting;
};
cbuffer Globals 
{
    float2 Texture0TexelSize_id113;
    float2 Texture1TexelSize_id115;
    float2 Texture2TexelSize_id117;
    float2 Texture3TexelSize_id119;
    float2 Texture4TexelSize_id121;
    float2 Texture5TexelSize_id123;
    float2 Texture6TexelSize_id125;
    float2 Texture7TexelSize_id127;
    float2 Texture8TexelSize_id129;
    float2 Texture9TexelSize_id131;
};
Texture2D Texture0_id112;
Texture2D Texture1_id114;
Texture2D Texture2_id116;
Texture2D Texture3_id118;
Texture2D Texture4_id120;
Texture2D Texture5_id122;
Texture2D Texture6_id124;
Texture2D Texture7_id126;
Texture2D Texture8_id128;
Texture2D Texture9_id130;
TextureCube TextureCube0_id132;
TextureCube TextureCube1_id133;
TextureCube TextureCube2_id134;
TextureCube TextureCube3_id135;
Texture3D Texture3D0_id136;
Texture3D Texture3D1_id137;
Texture3D Texture3D2_id138;
Texture3D Texture3D3_id139;
SamplerState Sampler_id140;
SamplerState PointSampler_id141 
{
    Filter = MIN_MAG_MIP_POINT;
};
SamplerState LinearSampler_id142 
{
    Filter = MIN_MAG_MIP_LINEAR;
};
SamplerState LinearBorderSampler_id143 
{
    Filter = MIN_MAG_MIP_LINEAR;
    AddressU = Border;
    AddressV = Border;
};
SamplerComparisonState LinearClampCompareLessEqualSampler_id144 
{
    Filter = COMPARISON_MIN_MAG_LINEAR_MIP_POINT;
    AddressU = Clamp;
    AddressV = Clamp;
    ComparisonFunc = LessEqual;
};
SamplerState AnisotropicSampler_id145 
{
    Filter = ANISOTROPIC;
};
SamplerState AnisotropicRepeatSampler_id146 
{
    Filter = ANISOTROPIC;
    AddressU = Wrap;
    AddressV = Wrap;
    MaxAnisotropy = 16;
};
SamplerState PointRepeatSampler_id147 
{
    Filter = MIN_MAG_MIP_POINT;
    AddressU = Wrap;
    AddressV = Wrap;
};
SamplerState LinearRepeatSampler_id148 
{
    Filter = MIN_MAG_MIP_LINEAR;
    AddressU = Wrap;
    AddressV = Wrap;
};
SamplerState RepeatSampler_id149 
{
    AddressU = Wrap;
    AddressV = Wrap;
};
SamplerState Sampler0_id150;
SamplerState Sampler1_id151;
SamplerState Sampler2_id152;
SamplerState Sampler3_id153;
SamplerState Sampler4_id154;
SamplerState Sampler5_id155;
SamplerState Sampler6_id156;
SamplerState Sampler7_id157;
SamplerState Sampler8_id158;
SamplerState Sampler9_id159;
StructuredBuffer<InstanceTransform> InstanceWorld_id40;
StructuredBuffer<InstanceTransform> InstanceWorldInverse_id41;
Texture2D EnvironmentLightingDFG_LUT_id217;
Texture3D<uint2> LightClusters_id99;
Buffer<uint> LightIndices_id100;
Buffer<float4> PointLights_id104;
Buffer<float4> SpotLights_id105;
TextureCube CubeMap_id171;
TextureCube CubeMap_id182;
float SmoothDistanceAttenuation_id79(float squaredDistance, float lightInvSquareRadius)
{
    float factor = squaredDistance * lightInvSquareRadius;
    float smoothFactor = saturate(1.0f - factor * factor);
    return smoothFactor * smoothFactor;
}
float SmoothDistanceAttenuation_id68(float squaredDistance, float lightInvSquareRadius)
{
    float factor = squaredDistance * lightInvSquareRadius;
    float smoothFactor = saturate(1.0f - factor * factor);
    return smoothFactor * smoothFactor;
}
float GetAngularAttenuation_id81(float3 lightVector, float3 lightDirection, float lightAngleScale, float lightAngleOffset)
{
    float cd = dot(lightDirection, lightVector);
    float attenuation = saturate(cd * lightAngleScale + lightAngleOffset);
    attenuation *= attenuation;
    return attenuation;
}
float GetDistanceAttenuation_id80(float lightVectorLength, float lightInvSquareRadius)
{
    float d2 = lightVectorLength * lightVectorLength;
    float attenuation = 1.0 / (max(d2, 0.01 * 0.01));
    attenuation *= SmoothDistanceAttenuation_id79(d2, lightInvSquareRadius);
    return attenuation;
}
float GetDistanceAttenuation_id70(float lightVectorLength, float lightInvSquareRadius)
{
    float d2 = lightVectorLength * lightVectorLength;
    float attenuation = 1.0 / (max(d2, 0.01 * 0.01));
    attenuation *= SmoothDistanceAttenuation_id68(d2, lightInvSquareRadius);
    return attenuation;
}
float Compute_id301()
{
    return InputValue_id205;
}
float Compute_id289()
{
    return InputValue_id196;
}
float4 Compute_id277()
{
    return InputValue_id188;
}
float ComputeAttenuation_id82(float3 PositionWS, float3 AngleOffsetAndInvSquareRadius, float3 DirectionWS, float3 position, inout float3 lightVectorNorm)
{
    float3 lightVector = PositionWS - position;
    float lightVectorLength = length(lightVector);
    lightVectorNorm = lightVector / lightVectorLength;
    float3 lightAngleOffsetAndInvSquareRadius = AngleOffsetAndInvSquareRadius;
    float2 lightAngleAndOffset = lightAngleOffsetAndInvSquareRadius.xy;
    float lightInvSquareRadius = lightAngleOffsetAndInvSquareRadius.z;
    float3 lightDirection = -DirectionWS;
    float attenuation = GetDistanceAttenuation_id80(lightVectorLength, lightInvSquareRadius);
    attenuation *= GetAngularAttenuation_id81(lightVectorNorm, lightDirection, lightAngleAndOffset.x, lightAngleAndOffset.y);
    return attenuation;
}
float ComputeAttenuation_id69(PointLightDataInternal light, float3 position, inout float3 lightVectorNorm)
{
    float3 lightVector = light.PositionWS - position;
    float lightVectorLength = length(lightVector);
    lightVectorNorm = lightVector / lightVectorLength;
    float lightInvSquareRadius = light.InvSquareRadius;
    return GetDistanceAttenuation_id70(lightVectorLength, lightInvSquareRadius);
}
float VisibilityhSchlickGGX_id163(float alphaR, float nDotX)
{
    float k = alphaR * 0.5f;
    return nDotX / (nDotX * (1.0f - k) + k);
}
float3 FresnelSchlick_id147(float3 f0, float3 f90, float lOrVDotH)
{
    return f0 + (f90 - f0) * pow((1 - lOrVDotH), 5);
}
void Compute_id304(inout PS_STREAMS streams)
{
    streams.Input_2_id204 = Compute_id301();
}
void Compute_id292(inout PS_STREAMS streams)
{
    streams.Input_1_id195 = Compute_id289();
}
void Compute_id280(inout PS_STREAMS streams)
{
    streams.Input_0_id187 = Compute_id277();
}
float4 EvaluateSphericalHarmonics_id101(float3 sphericalColors[TOrder_id108 * TOrder_id108], float3 direction)
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
float4 EvaluateSphericalHarmonics_id92(float3 sphericalColors[TOrder_id108 * TOrder_id108], float3 direction)
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
void ProcessLight_id83(inout PS_STREAMS streams, SpotLightDataInternal light)
{
    float3 lightVectorNorm;
    float attenuation = ComputeAttenuation_id82(light.PositionWS, light.AngleOffsetAndInvSquareRadius, light.DirectionWS, streams.PositionWS_id22.xyz, lightVectorNorm);
    streams.lightColor_id45 = light.Color;
    streams.lightAttenuation_id48 = attenuation;
    streams.lightDirectionWS_id44 = lightVectorNorm;
}
void ProcessLight_id72(inout PS_STREAMS streams, PointLightDataInternal light)
{
    float3 lightVectorNorm;
    float attenuation = ComputeAttenuation_id69(light, streams.PositionWS_id22.xyz, lightVectorNorm);
    streams.lightPositionWS_id43 = light.PositionWS;
    streams.lightColor_id45 = light.Color;
    streams.lightAttenuation_id48 = attenuation;
    streams.lightDirectionWS_id44 = lightVectorNorm;
}
float NormalDistributionGGX_id177(float alphaR, float nDotH)
{
    float alphaR2 = alphaR * alphaR;
    float d = max(nDotH * nDotH * (alphaR2 - 1) + 1, 0.0001);
    return alphaR2 / (PI_id216 * d * d);
}
float VisibilitySmithSchlickGGX_id165(float alphaR, float nDotL, float nDotV)
{
    return VisibilityhSchlickGGX_id163(alphaR, nDotL) * VisibilityhSchlickGGX_id163(alphaR, nDotV) / (nDotL * nDotV);
}
float3 FresnelSchlick_id153(float3 f0, float lOrVDotH)
{
    return FresnelSchlick_id147(f0, 1.0f, lOrVDotH);
}
float Compute_id307(inout PS_STREAMS streams)
{
    return streams.Input_2_id204;
}
void Compute_id306(inout PS_STREAMS streams)
{

    {
        Compute_id304(streams);
    }
}
float Compute_id295(inout PS_STREAMS streams)
{
    return streams.Input_1_id195;
}
void Compute_id294(inout PS_STREAMS streams)
{

    {
        Compute_id292(streams);
    }
}
float4 Compute_id283(inout PS_STREAMS streams)
{
    return streams.Input_0_id187;
}
void Compute_id282(inout PS_STREAMS streams)
{

    {
        Compute_id280(streams);
    }
}
float4 Compute_id258(inout PS_STREAMS streams, float3 direction)
{
    float alpha = streams.alphaRoughness_id72;
    float mipLevel = sqrt(alpha) * MipCount_id181;
    return CubeMap_id182.SampleLevel(LinearSampler_id142, direction, mipLevel);
}
float4 Compute_id253(float3 direction)
{
    return EvaluateSphericalHarmonics_id101(SphericalColors_id180, direction);
}
void PrepareEnvironmentLight_id105(inout PS_STREAMS streams)
{
    streams.envLightDiffuseColor_id49 = 0;
    streams.envLightSpecularColor_id50 = 0;
}
float4 Compute_id238(inout PS_STREAMS streams, float3 direction)
{
    float alpha = streams.alphaRoughness_id72;
    float mipLevel = sqrt(alpha) * MipCount_id170;
    return CubeMap_id171.SampleLevel(LinearSampler_id142, direction, mipLevel);
}
float4 Compute_id233(float3 direction)
{
    return EvaluateSphericalHarmonics_id92(SphericalColors_id111, direction);
}
void PrepareEnvironmentLight_id96(inout PS_STREAMS streams)
{
    streams.envLightDiffuseColor_id49 = 0;
    streams.envLightSpecularColor_id50 = 0;
}
float3 Compute_id313(float3 specularColor, float alphaR, float nDotV)
{
    float glossiness = 1.0f - sqrt(alphaR);
    float4 environmentLightingDFG = EnvironmentLightingDFG_LUT_id217.SampleLevel(LinearSampler_id142, float2(glossiness, nDotV), 0);
    return specularColor * environmentLightingDFG.r + environmentLightingDFG.g;
}
void PrepareEnvironmentLight_id87(inout PS_STREAMS streams)
{
    streams.envLightDiffuseColor_id49 = 0;
    streams.envLightSpecularColor_id50 = 0;
}
float3 ComputeSpecularTextureProjection_id78(float3 positionWS, float3 reflectionWS, int lightIndex)
{
    return 1.0f;
}
float3 ComputeTextureProjection_id77(float3 positionWS, int lightIndex)
{
    return 1.0f;
}
float3 ComputeShadow_id76(inout PS_STREAMS streams, float3 position, int lightIndex)
{
    streams.thicknessWS_id87 = 0.0;
    return 1.0f;
}
void PrepareDirectLightCore_id75(inout PS_STREAMS streams, int lightIndexIgnored)
{
    int realLightIndex = LightIndices_id100.Load(streams.lightIndex_id98);
    streams.lightIndex_id98++;
    SpotLightDataInternal spotLight;
    float4 spotLight1 = SpotLights_id105.Load(realLightIndex * 4);
    float4 spotLight2 = SpotLights_id105.Load(realLightIndex * 4 + 1);
    float4 spotLight3 = SpotLights_id105.Load(realLightIndex * 4 + 2);
    float4 spotLight4 = SpotLights_id105.Load(realLightIndex * 4 + 3);
    spotLight.PositionWS = spotLight1.xyz;
    spotLight.DirectionWS = spotLight2.xyz;
    spotLight.AngleOffsetAndInvSquareRadius = spotLight3.xyz;
    spotLight.Color = spotLight4.xyz;
    ProcessLight_id83(streams, spotLight);
}
float3 ComputeSpecularTextureProjection_id67(float3 positionWS, float3 reflectionWS, int lightIndex)
{
    return 1.0f;
}
float3 ComputeTextureProjection_id66(float3 positionWS, int lightIndex)
{
    return 1.0f;
}
float3 ComputeShadow_id65(inout PS_STREAMS streams, float3 position, int lightIndex)
{
    streams.thicknessWS_id87 = 0.0;
    return 1.0f;
}
void PrepareDirectLightCore_id64(inout PS_STREAMS streams, int lightIndexIgnored)
{
    int realLightIndex = LightIndices_id100.Load(streams.lightIndex_id98);
    streams.lightIndex_id98++;
    PointLightDataInternal pointLight;
    float4 pointLight1 = PointLights_id104.Load(realLightIndex * 2);
    float4 pointLight2 = PointLights_id104.Load(realLightIndex * 2 + 1);
    pointLight.PositionWS = pointLight1.xyz;
    pointLight.InvSquareRadius = pointLight1.w;
    pointLight.Color = pointLight2.xyz;
    ProcessLight_id72(streams, pointLight);
}
void PrepareLightData_id71(inout PS_STREAMS streams)
{
    float projectedDepth = streams.ShadingPosition_id0.z;
    float depth = ZProjection_id94.y / (projectedDepth - ZProjection_id94.x);
    float2 texCoord = float2(streams.ScreenPosition_id91.x + 1, 1 - streams.ScreenPosition_id91.y) * 0.5;
    int slice = int(max(log2(depth * ClusterDepthScale_id101 + ClusterDepthBias_id102), 0));
    streams.lightData_id97 = LightClusters_id99.Load(int4(texCoord * ClusterStride_id103, slice, 0));
    streams.lightIndex_id98 = streams.lightData_id97.x;
}
float Compute_id405(inout PS_STREAMS streams)
{
    return NormalDistributionGGX_id177(streams.alphaRoughness_id72, streams.NdotH_id78);
}
float Compute_id375(inout PS_STREAMS streams)
{
    return VisibilitySmithSchlickGGX_id165(streams.alphaRoughness_id72, streams.NdotL_id51, streams.NdotV_id74);
}
float3 Compute_id345(inout PS_STREAMS streams, float3 f0)
{
    return FresnelSchlick_id153(f0, streams.LdotH_id79);
}
float3 ComputeSpecularTextureProjection_id61(float3 positionWS, float3 reflectionWS, int lightIndex)
{
    return 1.0f;
}
float3 ComputeTextureProjection_id60(float3 positionWS, int lightIndex)
{
    return 1.0f;
}
float3 ComputeShadow_id59(inout PS_STREAMS streams, float3 position, int lightIndex)
{
    streams.thicknessWS_id87 = 0.0;
    return 1.0f;
}
void PrepareDirectLightCore_id58(inout PS_STREAMS streams, int lightIndex)
{
    streams.lightColor_id45 = Lights_id90[lightIndex].Color;
    streams.lightDirectionWS_id44 = -Lights_id90[lightIndex].DirectionWS;
}
float Compute_id310(inout PS_STREAMS streams)
{
    Compute_id306(streams);
    return Compute_id307(streams);
}
float Compute_id298(inout PS_STREAMS streams)
{
    Compute_id294(streams);
    return Compute_id295(streams);
}
float4 Compute_id286(inout PS_STREAMS streams)
{
    Compute_id282(streams);
    return Compute_id283(streams);
}
void ResetStream_id180()
{
}
void AfterLightingAndShading_id462()
{
}
void AfterLightingAndShading_id443()
{
}
void PrepareEnvironmentLight_id276(inout PS_STREAMS streams)
{
    streams.envLightDiffuseColor_id49 = 0;
    streams.envLightSpecularColor_id50 = 0;
}
void PrepareEnvironmentLight_id273(inout PS_STREAMS streams)
{
    PrepareEnvironmentLight_id105(streams);
    float ambientAccessibility = streams.matAmbientOcclusion_id59;
    float3 sampleDirection = mul(streams.normalWS_id19, (float3x3)SkyMatrix_id183);
    sampleDirection = float3(sampleDirection.xy, -sampleDirection.z);
    streams.envLightDiffuseColor_id49 = Compute_id253(sampleDirection).rgb * Intensity_id184 * ambientAccessibility * streams.matDiffuseSpecularAlphaBlend_id67.x;
    sampleDirection = reflect(-streams.viewWS_id70, streams.normalWS_id19);
    sampleDirection = mul(sampleDirection, (float3x3)SkyMatrix_id183);
    sampleDirection = float3(sampleDirection.xy, -sampleDirection.z);
    streams.envLightSpecularColor_id50 = Compute_id258(streams, sampleDirection).rgb * Intensity_id184 * ambientAccessibility * streams.matDiffuseSpecularAlphaBlend_id67.y;
}
void PrepareEnvironmentLight_id268(inout PS_STREAMS streams)
{
    PrepareEnvironmentLight_id96(streams);
    float ambientAccessibility = streams.matAmbientOcclusion_id59;
    float3 sampleDirection = mul(streams.normalWS_id19, (float3x3)SkyMatrix_id172);
    sampleDirection = float3(sampleDirection.xy, -sampleDirection.z);
    streams.envLightDiffuseColor_id49 = Compute_id233(sampleDirection).rgb * Intensity_id173 * ambientAccessibility * streams.matDiffuseSpecularAlphaBlend_id67.x;
    sampleDirection = reflect(-streams.viewWS_id70, streams.normalWS_id19);
    sampleDirection = mul(sampleDirection, (float3x3)SkyMatrix_id172);
    sampleDirection = float3(sampleDirection.xy, -sampleDirection.z);
    streams.envLightSpecularColor_id50 = Compute_id238(streams, sampleDirection).rgb * Intensity_id173 * ambientAccessibility * streams.matDiffuseSpecularAlphaBlend_id67.y;
}
float3 ComputeEnvironmentLightContribution_id492(inout PS_STREAMS streams)
{
    float3 specularColor = streams.matSpecularVisible_id73;
    return Compute_id313(specularColor, streams.alphaRoughness_id72, streams.NdotV_id74) * streams.envLightSpecularColor_id50;
}
float3 ComputeEnvironmentLightContribution_id436(inout PS_STREAMS streams)
{
    float3 diffuseColor = streams.matDiffuseVisible_id71;
    return diffuseColor * streams.envLightDiffuseColor_id49;
}
void PrepareEnvironmentLight_id263(inout PS_STREAMS streams)
{
    PrepareEnvironmentLight_id87(streams);
    float3 lightColor = AmbientLight_id106 * streams.matAmbientOcclusion_id59;
    streams.envLightDiffuseColor_id49 = lightColor;
    streams.envLightSpecularColor_id50 = lightColor;
}
void PrepareDirectLight_id214(inout PS_STREAMS streams, int lightIndex)
{
    PrepareDirectLightCore_id75(streams, lightIndex);
    streams.NdotL_id51 = max(dot(streams.normalWS_id19, streams.lightDirectionWS_id44), 0.0001f);
    streams.shadowColor_id86 = ComputeShadow_id76(streams, streams.PositionWS_id22.xyz, lightIndex);
    streams.lightColorNdotL_id46 = streams.lightColor_id45 * streams.lightAttenuation_id48 * streams.shadowColor_id86 * streams.NdotL_id51 * streams.lightDirectAmbientOcclusion_id52;
    streams.lightSpecularColorNdotL_id47 = streams.lightColorNdotL_id46;
    streams.lightColorNdotL_id46 *= ComputeTextureProjection_id77(streams.PositionWS_id22.xyz, lightIndex);
    float3 reflectionVectorWS = reflect(-streams.viewWS_id70, streams.normalWS_id19);
    streams.lightSpecularColorNdotL_id47 *= ComputeSpecularTextureProjection_id78(streams.PositionWS_id22.xyz, reflectionVectorWS, lightIndex);
}
int GetLightCount_id218(inout PS_STREAMS streams)
{
    return streams.lightData_id97.y >> 16;
}
int GetMaxLightCount_id217(inout PS_STREAMS streams)
{
    return streams.lightData_id97.y >> 16;
}
void PrepareDirectLights_id212()
{
}
void PrepareDirectLight_id201(inout PS_STREAMS streams, int lightIndex)
{
    PrepareDirectLightCore_id64(streams, lightIndex);
    streams.NdotL_id51 = max(dot(streams.normalWS_id19, streams.lightDirectionWS_id44), 0.0001f);
    streams.shadowColor_id86 = ComputeShadow_id65(streams, streams.PositionWS_id22.xyz, lightIndex);
    streams.lightColorNdotL_id46 = streams.lightColor_id45 * streams.lightAttenuation_id48 * streams.shadowColor_id86 * streams.NdotL_id51 * streams.lightDirectAmbientOcclusion_id52;
    streams.lightSpecularColorNdotL_id47 = streams.lightColorNdotL_id46;
    streams.lightColorNdotL_id46 *= ComputeTextureProjection_id66(streams.PositionWS_id22.xyz, lightIndex);
    float3 reflectionVectorWS = reflect(-streams.viewWS_id70, streams.normalWS_id19);
    streams.lightSpecularColorNdotL_id47 *= ComputeSpecularTextureProjection_id67(streams.PositionWS_id22.xyz, reflectionVectorWS, lightIndex);
}
int GetLightCount_id206(inout PS_STREAMS streams)
{
    return streams.lightData_id97.y & 0xFFFF;
}
int GetMaxLightCount_id205(inout PS_STREAMS streams)
{
    return streams.lightData_id97.y & 0xFFFF;
}
void PrepareDirectLights_id204(inout PS_STREAMS streams)
{
    PrepareLightData_id71(streams);
}
float3 ComputeDirectLightContribution_id491(inout PS_STREAMS streams)
{
    float3 specularColor = streams.matSpecularVisible_id73;
    float3 fresnel = Compute_id345(streams, specularColor);
    float geometricShadowing = Compute_id375(streams);
    float normalDistribution = Compute_id405(streams);
    float3 reflected = fresnel * geometricShadowing * normalDistribution / 4;
    return reflected * streams.lightSpecularColorNdotL_id47 * streams.matDiffuseSpecularAlphaBlend_id67.y;
}
float3 ComputeDirectLightContribution_id435(inout PS_STREAMS streams)
{
    float3 diffuseColor = streams.matDiffuseVisible_id71;
    return diffuseColor / PI_id216 * streams.lightColorNdotL_id46 * streams.matDiffuseSpecularAlphaBlend_id67.x;
}
void PrepareMaterialPerDirectLight_id34(inout PS_STREAMS streams)
{
    streams.H_id77 = normalize(streams.viewWS_id70 + streams.lightDirectionWS_id44);
    streams.NdotH_id78 = saturate(dot(streams.normalWS_id19, streams.H_id77));
    streams.LdotH_id79 = saturate(dot(streams.lightDirectionWS_id44, streams.H_id77));
    streams.VdotH_id80 = streams.LdotH_id79;
}
void PrepareDirectLight_id190(inout PS_STREAMS streams, int lightIndex)
{
    PrepareDirectLightCore_id58(streams, lightIndex);
    streams.NdotL_id51 = max(dot(streams.normalWS_id19, streams.lightDirectionWS_id44), 0.0001f);
    streams.shadowColor_id86 = ComputeShadow_id59(streams, streams.PositionWS_id22.xyz, lightIndex);
    streams.lightColorNdotL_id46 = streams.lightColor_id45 * streams.lightAttenuation_id48 * streams.shadowColor_id86 * streams.NdotL_id51 * streams.lightDirectAmbientOcclusion_id52;
    streams.lightSpecularColorNdotL_id47 = streams.lightColorNdotL_id46;
    streams.lightColorNdotL_id46 *= ComputeTextureProjection_id60(streams.PositionWS_id22.xyz, lightIndex);
    float3 reflectionVectorWS = reflect(-streams.viewWS_id70, streams.normalWS_id19);
    streams.lightSpecularColorNdotL_id47 *= ComputeSpecularTextureProjection_id61(streams.PositionWS_id22.xyz, reflectionVectorWS, lightIndex);
}
int GetLightCount_id192()
{
    return LightCount_id88;
}
int GetMaxLightCount_id193()
{
    return TMaxLightCount_id89;
}
void PrepareDirectLights_id188()
{
}
void PrepareForLightingAndShading_id459()
{
}
void PrepareForLightingAndShading_id440()
{
}
void PrepareMaterialForLightingAndShading_id179(inout PS_STREAMS streams)
{
    streams.lightDirectAmbientOcclusion_id52 = lerp(1.0, streams.matAmbientOcclusion_id59, streams.matAmbientOcclusionDirectLightingFactor_id60);
    streams.matDiffuseVisible_id71 = streams.matDiffuse_id55.rgb * lerp(1.0f, streams.matCavity_id61, streams.matCavityDiffuse_id62) * streams.matDiffuseSpecularAlphaBlend_id67.r * streams.matAlphaBlendColor_id68;
    streams.matSpecularVisible_id73 = streams.matSpecular_id57.rgb * streams.matSpecularIntensity_id58 * lerp(1.0f, streams.matCavity_id61, streams.matCavitySpecular_id63) * streams.matDiffuseSpecularAlphaBlend_id67.g * streams.matAlphaBlendColor_id68;
    streams.NdotV_id74 = max(dot(streams.normalWS_id19, streams.viewWS_id70), 0.0001f);
    float roughness = 1.0f - streams.matGlossiness_id56;
    streams.alphaRoughness_id72 = max(roughness * roughness, 0.001);
}
void ResetLightStream_id178(inout PS_STREAMS streams)
{
    streams.lightPositionWS_id43 = 0;
    streams.lightDirectionWS_id44 = 0;
    streams.lightColor_id45 = 0;
    streams.lightColorNdotL_id46 = 0;
    streams.lightSpecularColorNdotL_id47 = 0;
    streams.lightAttenuation_id48 = 1.0f;
    streams.envLightDiffuseColor_id49 = 0;
    streams.envLightSpecularColor_id50 = 0;
    streams.lightDirectAmbientOcclusion_id52 = 1.0f;
    streams.NdotL_id51 = 0;
}
void UpdateNormalFromTangentSpace_id26(float3 normalInTangentSpace)
{
}
float4 Compute_id312(inout PS_STREAMS streams)
{
    float x = Compute_id310(streams);
    return float4(x, x, x, x);
}
float4 Compute_id300(inout PS_STREAMS streams)
{
    float x = Compute_id298(streams);
    return float4(x, x, x, x);
}
float4 Compute_id288(inout PS_STREAMS streams)
{
    return Compute_id286(streams);
}
void ResetStream_id181(inout PS_STREAMS streams)
{
    ResetStream_id180();
    streams.matBlend_id42 = 0.0f;
}
void Compute_id523(inout PS_STREAMS streams)
{
    UpdateNormalFromTangentSpace_id26(streams.matNormal_id53);
    if (!streams.IsFrontFace_id1)
        streams.normalWS_id19 = -streams.normalWS_id19;
    ResetLightStream_id178(streams);
    PrepareMaterialForLightingAndShading_id179(streams);

    {
        PrepareForLightingAndShading_id440();
    }

    {
        PrepareForLightingAndShading_id459();
    }
    float3 directLightingContribution = 0;

    {
        PrepareDirectLights_id188();
        const int maxLightCount = GetMaxLightCount_id193();
        int count = GetLightCount_id192();

        for (int i = 0; i < maxLightCount; i++)
        {
            if (i >= count)
            {
                break;
            }
            PrepareDirectLight_id190(streams, i);
            PrepareMaterialPerDirectLight_id34(streams);

            {
                directLightingContribution += ComputeDirectLightContribution_id435(streams);
            }

            {
                directLightingContribution += ComputeDirectLightContribution_id491(streams);
            }
        }
    }

    {
        PrepareDirectLights_id204(streams);
        const int maxLightCount = GetMaxLightCount_id205(streams);
        int count = GetLightCount_id206(streams);

        for (int i = 0; i < maxLightCount; i++)
        {
            if (i >= count)
            {
                break;
            }
            PrepareDirectLight_id201(streams, i);
            PrepareMaterialPerDirectLight_id34(streams);

            {
                directLightingContribution += ComputeDirectLightContribution_id435(streams);
            }

            {
                directLightingContribution += ComputeDirectLightContribution_id491(streams);
            }
        }
    }

    {
        PrepareDirectLights_id212();
        const int maxLightCount = GetMaxLightCount_id217(streams);
        int count = GetLightCount_id218(streams);

        for (int i = 0; i < maxLightCount; i++)
        {
            if (i >= count)
            {
                break;
            }
            PrepareDirectLight_id214(streams, i);
            PrepareMaterialPerDirectLight_id34(streams);

            {
                directLightingContribution += ComputeDirectLightContribution_id435(streams);
            }

            {
                directLightingContribution += ComputeDirectLightContribution_id491(streams);
            }
        }
    }
    float3 environmentLightingContribution = 0;

    {
        PrepareEnvironmentLight_id263(streams);

        {
            environmentLightingContribution += ComputeEnvironmentLightContribution_id436(streams);
        }

        {
            environmentLightingContribution += ComputeEnvironmentLightContribution_id492(streams);
        }
    }

    {
        PrepareEnvironmentLight_id268(streams);

        {
            environmentLightingContribution += ComputeEnvironmentLightContribution_id436(streams);
        }

        {
            environmentLightingContribution += ComputeEnvironmentLightContribution_id492(streams);
        }
    }

    {
        PrepareEnvironmentLight_id273(streams);

        {
            environmentLightingContribution += ComputeEnvironmentLightContribution_id436(streams);
        }

        {
            environmentLightingContribution += ComputeEnvironmentLightContribution_id492(streams);
        }
    }

    {
        PrepareEnvironmentLight_id276(streams);

        {
            environmentLightingContribution += ComputeEnvironmentLightContribution_id436(streams);
        }

        {
            environmentLightingContribution += ComputeEnvironmentLightContribution_id492(streams);
        }
    }
    streams.shadingColor_id75 += directLightingContribution * PI_id216 + environmentLightingContribution;
    streams.shadingColorAlpha_id76 = streams.matDiffuse_id55.a;

    {
        AfterLightingAndShading_id443();
    }

    {
        AfterLightingAndShading_id462();
    }
}
void Compute_id507(inout PS_STREAMS streams)
{
    float metalness = Compute_id312(streams).r;
    streams.matSpecular_id57 = lerp(0.02, streams.matDiffuse_id55.rgb, metalness);
    streams.matDiffuse_id55.rgb = lerp(streams.matDiffuse_id55.rgb, 0, metalness);
}
void Compute_id502(inout PS_STREAMS streams)
{
    float glossiness = Compute_id300(streams).r;

    {
        glossiness = 1.0 - glossiness;
    }
    streams.matGlossiness_id56 = glossiness;
}
void Compute_id497(inout PS_STREAMS streams)
{
    float4 colorBase = Compute_id288(streams);
    streams.matDiffuse_id55 = colorBase;
    streams.matColorBase_id54 = colorBase;
}
void ResetStream_id182(inout PS_STREAMS streams)
{
    ResetStream_id181(streams);
    streams.matNormal_id53 = float3(0, 0, 1);
    streams.matColorBase_id54 = 0.0f;
    streams.matDiffuse_id55 = 0.0f;
    streams.matDiffuseVisible_id71 = 0.0f;
    streams.matSpecular_id57 = 0.0f;
    streams.matSpecularVisible_id73 = 0.0f;
    streams.matSpecularIntensity_id58 = 1.0f;
    streams.matGlossiness_id56 = 0.0f;
    streams.alphaRoughness_id72 = 1.0f;
    streams.matAmbientOcclusion_id59 = 1.0f;
    streams.matAmbientOcclusionDirectLightingFactor_id60 = 0.0f;
    streams.matCavity_id61 = 1.0f;
    streams.matCavityDiffuse_id62 = 0.0f;
    streams.matCavitySpecular_id63 = 0.0f;
    streams.matEmissive_id64 = 0.0f;
    streams.matEmissiveIntensity_id65 = 0.0f;
    streams.matScatteringStrength_id66 = 1.0f;
    streams.matDiffuseSpecularAlphaBlend_id67 = 1.0f;
    streams.matAlphaBlendColor_id68 = 1.0f;
    streams.matAlphaDiscard_id69 = 0.1f;
}
float4 ComputeShadingPosition_id11(float4 world)
{
    return mul(world, ViewProjection_id29);
}
void PostTransformPosition_id6()
{
}
float4x4 GetInstanceWorld_id13(uint instanceId)
{
    return mul(InstanceWorld_id40[instanceId].Matrix, World_id32);
}
void Compute_id55(inout PS_STREAMS streams)
{

    {
        Compute_id497(streams);
    }

    {
        Compute_id502(streams);
    }

    {
        Compute_id507(streams);
    }

    {
        Compute_id523(streams);
    }
}
void ResetStream_id54(inout PS_STREAMS streams)
{
    ResetStream_id182(streams);
    streams.shadingColorAlpha_id76 = 1.0f;
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
void PreTransformPosition_id15(inout VS_STREAMS streams)
{
    streams.PositionWS_id22 = mul(streams.Position_id21, GetInstanceWorld_id13(streams.InstanceID_id13));
}
float4 Compute_id53()
{
    return MaterialIndex_id85;
}
float4 Shading_id35(inout PS_STREAMS streams)
{
    streams.viewWS_id70 = normalize(Eye_id31.xyz - streams.PositionWS_id22.xyz);
    streams.shadingColor_id75 = 0;
    ResetStream_id54(streams);
    Compute_id55(streams);
    return float4(streams.shadingColor_id75, streams.shadingColorAlpha_id76);
}
void PSMain_id1()
{
}
float4x4 GetInstanceWorldInverse_id14(uint instanceId)
{
    return mul(WorldInverse_id33, InstanceWorldInverse_id41[instanceId].Matrix);
}
void BaseTransformVS_id8(inout VS_STREAMS streams)
{
    PreTransformPosition_id15(streams);
    TransformPosition_id5();
    PostTransformPosition_id12(streams);
}
void VSMain_id0()
{
}
void PSMain_id3(inout PS_STREAMS streams)
{
    PSMain_id1();
    streams.ColorTarget_id2 = Shading_id35(streams);
    streams.ColorTarget1_id3 = Compute_id53();
}
void GenerateNormal_PS_id25(inout PS_STREAMS streams)
{
    if (dot(streams.normalWS_id19, streams.normalWS_id19) > 0)
        streams.normalWS_id19 = normalize(streams.normalWS_id19);
    streams.meshNormalWS_id17 = streams.normalWS_id19;
}
void GenerateNormal_VS_id27(inout VS_STREAMS streams)
{
    streams.meshNormalWS_id17 = mul((float3x3)GetInstanceWorldInverse_id14(streams.InstanceID_id13), streams.meshNormal_id16);
    streams.normalWS_id19 = streams.meshNormalWS_id17;
}
void VSMain_id9(inout VS_STREAMS streams)
{
    VSMain_id0();
    BaseTransformVS_id8(streams);
}
void PSMain_id23(inout PS_STREAMS streams)
{
    GenerateNormal_PS_id25(streams);
    PSMain_id3(streams);
}
void VSMain_id22(inout VS_STREAMS streams)
{
    VSMain_id9(streams);
    GenerateNormal_VS_id27(streams);
}
PS_OUTPUT PSMain(PS_INPUT __input__)
{
    PS_STREAMS streams = (PS_STREAMS)0;
    streams.PositionWS_id22 = __input__.PositionWS_id22;
    streams.ShadingPosition_id0 = __input__.ShadingPosition_id0;
    streams.normalWS_id19 = __input__.normalWS_id19;
    streams.ScreenPosition_id91 = __input__.ScreenPosition_id91;
    streams.IsFrontFace_id1 = __input__.IsFrontFace_id1;
    streams.ScreenPosition_id91 /= streams.ScreenPosition_id91.w;
    PSMain_id23(streams);
    PS_OUTPUT __output__ = (PS_OUTPUT)0;
    __output__.ColorTarget_id2 = streams.ColorTarget_id2;
    __output__.ColorTarget1_id3 = streams.ColorTarget1_id3;
    return __output__;
}
VS_OUTPUT VSMain(VS_INPUT __input__)
{
    VS_STREAMS streams = (VS_STREAMS)0;
    streams.Position_id21 = __input__.Position_id21;
    streams.InstanceID_id13 = __input__.InstanceID_id13;
    streams.meshNormal_id16 = __input__.meshNormal_id16;
    VSMain_id22(streams);
    streams.ScreenPosition_id91 = streams.ShadingPosition_id0;
    VS_OUTPUT __output__ = (VS_OUTPUT)0;
    __output__.PositionWS_id22 = streams.PositionWS_id22;
    __output__.ShadingPosition_id0 = streams.ShadingPosition_id0;
    __output__.normalWS_id19 = streams.normalWS_id19;
    __output__.ScreenPosition_id91 = streams.ScreenPosition_id91;
    return __output__;
}
