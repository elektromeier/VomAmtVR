/**************************
***** Compiler Parameters *****
***************************
@P EffectName: VLEffectMain
@P   - Material.PixelStageSurfaceShaders: mixin MaterialSurfaceArray [{layers = [mixin MaterialSurfaceDiffuse [{diffuseMap = mixin Float4ToColor [{Value = mixin DoFloat4 [{Before = mixin ComputeOrder [{Computes = [mixin AssignVarFloat4<Input_0> [{Value = InputFloat4<ShaderFX.InputValueFloat4,PerMaterial>}]]}]}, {Value = GetVarFloat4<Input_0>}]}]}], mixin MaterialSurfaceGlossinessMap<true> [{glossinessMap = mixin FloatToScalar [{Value = mixin DoFloat [{Before = mixin ComputeOrder [{Computes = [ComputeVoid]}]}, {Value = ConstantFloat<1>}]}]}], mixin MaterialSurfaceMetalness [{metalnessMap = ComputeColorConstantFloatLink<Material.MetalnessValue>}], mixin MaterialSurfaceLightingAndShading [{surfaces = [MaterialSurfaceShadingDiffuseLambert<false>, mixin MaterialSurfaceShadingSpecularMicrofacet [{environmentFunction = MaterialSpecularMicrofacetEnvironmentGGXLUT}, {fresnelFunction = MaterialSpecularMicrofacetFresnelSchlick}, {geometricShadowingFunction = MaterialSpecularMicrofacetVisibilitySmithSchlickGGX}, {normalDistributionFunction = MaterialSpecularMicrofacetNormalDistributionGGX}]]}]]}]
@P Material.PixelStageStreamInitializer: mixin MaterialStream, MaterialPixelShadingStream
@P Lighting.DirectLightGroups: mixin LightDirectionalGroup<1>, ShadowMapReceiverDirectional<4,1,true,true,false,false>, ShadowMapFilterPcf<PerView.Lighting,7>, mixin LightClusteredPointGroup, LightClusteredSpotGroup, mixin LightPointGroup<32>, mixin LightSpotGroup<8>
@P Lighting.EnvironmentLights: LightSimpleAmbient, sdfx LightSkyboxEffect, sdfx LightSkyboxEffect, EnvironmentLight
@P LightSkyboxShader.LightDiffuseColor.environmentLights[1]: SphericalHarmonicsEnvironmentColor<3>
@P LightSkyboxShader.LightSpecularColor.environmentLights[1]: RoughnessCubeMapEnvironmentColor
@P LightSkyboxShader.LightDiffuseColor.environmentLights[2]: SphericalHarmonicsEnvironmentColor<3>
@P LightSkyboxShader.LightSpecularColor.environmentLights[2]: RoughnessCubeMapEnvironmentColor
@P StrideEffectBase.RenderTargetExtensions: mixin [{ShadingColor1 = GBufferOutputSubsurfaceScatteringMaterialIndex}]
***************************
****  ConstantBuffers  ****
***************************
cbuffer PerDraw [Size: 2016]
@C    World_id32 => Transformation.World
@C    WorldInverse_id33 => Transformation.WorldInverse
@C    WorldInverseTranspose_id34 => Transformation.WorldInverseTranspose
@C    WorldView_id35 => Transformation.WorldView
@C    WorldViewInverse_id36 => Transformation.WorldViewInverse
@C    WorldViewProjection_id37 => Transformation.WorldViewProjection
@C    WorldScale_id38 => Transformation.WorldScale
@C    EyeMS_id39 => Transformation.EyeMS
@C    MaterialIndex_id83 => GBufferOutputSubsurfaceScatteringMaterialIndex.MaterialIndex
@C    _padding_PerDraw_Default => _padding_PerDraw_Default
@C    LightCount_id182 => DirectLightGroupPerDraw.LightCount.directLightGroups[3]
@C    Lights_id184 => LightPointGroup.Lights.directLightGroups[3]
@C    LightCount_id185 => DirectLightGroupPerDraw.LightCount.directLightGroups[4]
@C    Lights_id187 => LightSpotGroup.Lights.directLightGroups[4]
@C    _padding_PerDraw_Lighting => _padding_PerDraw_Lighting
cbuffer PerMaterial [Size: 32]
@C    InputValue_id212 => ShaderFX.InputValueFloat4
@C    constantFloat_id226 => Material.MetalnessValue
cbuffer PerView [Size: 1888]
@C    View_id25 => Transformation.View
@C    ViewInverse_id26 => Transformation.ViewInverse
@C    Projection_id27 => Transformation.Projection
@C    ProjectionInverse_id28 => Transformation.ProjectionInverse
@C    ViewProjection_id29 => Transformation.ViewProjection
@C    ProjScreenRay_id30 => Transformation.ProjScreenRay
@C    Eye_id31 => Transformation.Eye
@C    NearClipPlane_id168 => Camera.NearClipPlane
@C    FarClipPlane_id169 => Camera.FarClipPlane
@C    ZProjection_id170 => Camera.ZProjection
@C    ViewSize_id171 => Camera.ViewSize
@C    AspectRatio_id172 => Camera.AspectRatio
@C    _padding_PerView_Default => _padding_PerView_Default
@C    LightCount_id86 => DirectLightGroupPerView.LightCount.directLightGroups[0]
@C    Lights_id88 => LightDirectionalGroup.Lights.directLightGroups[0]
@C    ShadowMapTextureSize_id90 => ShadowMap.TextureSize.directLightGroups[0]
@C    ShadowMapTextureTexelSize_id91 => ShadowMap.TextureTexelSize.directLightGroups[0]
@C    WorldToShadowCascadeUV_id153 => ShadowMapReceiverBase.WorldToShadowCascadeUV.directLightGroups[0]
@C    InverseWorldToShadowCascadeUV_id154 => ShadowMapReceiverBase.InverseWorldToShadowCascadeUV.directLightGroups[0]
@C    ViewMatrices_id155 => ShadowMapReceiverBase.ViewMatrices.directLightGroups[0]
@C    DepthRanges_id156 => ShadowMapReceiverBase.DepthRanges.directLightGroups[0]
@C    DepthBiases_id157 => ShadowMapReceiverBase.DepthBiases.directLightGroups[0]
@C    OffsetScales_id158 => ShadowMapReceiverBase.OffsetScales.directLightGroups[0]
@C    CascadeDepthSplits_id165 => ShadowMapReceiverDirectional.CascadeDepthSplits.directLightGroups[0]
@C    ClusterDepthScale_id177 => LightClustered.ClusterDepthScale
@C    ClusterDepthBias_id178 => LightClustered.ClusterDepthBias
@C    ClusterStride_id179 => LightClustered.ClusterStride
@C    AmbientLight_id188 => LightSimpleAmbient.AmbientLight.environmentLights[0]
@C    SphericalColors_id193 => SphericalHarmonicsEnvironmentColor.SphericalColors.lightDiffuseColor.environmentLights[1]
@C    MipCount_id194 => RoughnessCubeMapEnvironmentColor.MipCount.lightSpecularColor.environmentLights[1]
@C    SkyMatrix_id196 => LightSkyboxShader.SkyMatrix.environmentLights[1]
@C    Intensity_id197 => LightSkyboxShader.Intensity.environmentLights[1]
@C    SphericalColors_id204 => SphericalHarmonicsEnvironmentColor.SphericalColors.lightDiffuseColor.environmentLights[2]
@C    MipCount_id205 => RoughnessCubeMapEnvironmentColor.MipCount.lightSpecularColor.environmentLights[2]
@C    SkyMatrix_id207 => LightSkyboxShader.SkyMatrix.environmentLights[2]
@C    Intensity_id208 => LightSkyboxShader.Intensity.environmentLights[2]
@C    _padding_PerView_Lighting => _padding_PerView_Lighting
***************************
******  Resources    ******
***************************
@R    PerMaterial => PerMaterial [Stage: None, Slot: (-1--1)]
@R    EnvironmentLightingDFG_LUT_id233 => MaterialSpecularMicrofacetEnvironmentGGXLUT.EnvironmentLightingDFG_LUT [Stage: None, Slot: (-1--1)]
@R    EnvironmentLightingDFG_LUT_id233 => MaterialSpecularMicrofacetEnvironmentGGXLUT.EnvironmentLightingDFG_LUT [Stage: None, Slot: (-1--1)]
@R    ShadowMapTexture_id89 => ShadowMap.ShadowMapTexture.directLightGroups[0] [Stage: None, Slot: (-1--1)]
@R    ShadowMapTexture_id89 => ShadowMap.ShadowMapTexture.directLightGroups[0] [Stage: None, Slot: (-1--1)]
@R    LightClusters_id175 => LightClustered.LightClusters [Stage: None, Slot: (-1--1)]
@R    LightClusters_id175 => LightClustered.LightClusters [Stage: None, Slot: (-1--1)]
@R    LightIndices_id176 => LightClustered.LightIndices [Stage: None, Slot: (-1--1)]
@R    LightIndices_id176 => LightClustered.LightIndices [Stage: None, Slot: (-1--1)]
@R    PointLights_id180 => LightClusteredPointGroup.PointLights [Stage: None, Slot: (-1--1)]
@R    PointLights_id180 => LightClusteredPointGroup.PointLights [Stage: None, Slot: (-1--1)]
@R    SpotLights_id181 => LightClusteredSpotGroup.SpotLights [Stage: None, Slot: (-1--1)]
@R    SpotLights_id181 => LightClusteredSpotGroup.SpotLights [Stage: None, Slot: (-1--1)]
@R    CubeMap_id195 => RoughnessCubeMapEnvironmentColor.CubeMap.lightSpecularColor.environmentLights[1] [Stage: None, Slot: (-1--1)]
@R    CubeMap_id195 => RoughnessCubeMapEnvironmentColor.CubeMap.lightSpecularColor.environmentLights[1] [Stage: None, Slot: (-1--1)]
@R    CubeMap_id206 => RoughnessCubeMapEnvironmentColor.CubeMap.lightSpecularColor.environmentLights[2] [Stage: None, Slot: (-1--1)]
@R    CubeMap_id206 => RoughnessCubeMapEnvironmentColor.CubeMap.lightSpecularColor.environmentLights[2] [Stage: None, Slot: (-1--1)]
@R    PerDraw => PerDraw [Stage: Vertex, Slot: (0-0)]
@R    PerView => PerView [Stage: Vertex, Slot: (1-1)]
@R    LinearSampler_id122 => Texturing.LinearSampler [Stage: Pixel, Slot: (0-0)]
@R    LinearClampCompareLessEqualSampler_id124 => Texturing.LinearClampCompareLessEqualSampler [Stage: Pixel, Slot: (1-1)]
@R    EnvironmentLightingDFG_LUT_id233 => MaterialSpecularMicrofacetEnvironmentGGXLUT.EnvironmentLightingDFG_LUT [Stage: Pixel, Slot: (0-0)]
@R    ShadowMapTexture_id89 => ShadowMap.ShadowMapTexture.directLightGroups[0] [Stage: Pixel, Slot: (1-1)]
@R    LightClusters_id175 => LightClustered.LightClusters [Stage: Pixel, Slot: (2-2)]
@R    LightIndices_id176 => LightClustered.LightIndices [Stage: Pixel, Slot: (3-3)]
@R    PointLights_id180 => LightClusteredPointGroup.PointLights [Stage: Pixel, Slot: (4-4)]
@R    SpotLights_id181 => LightClusteredSpotGroup.SpotLights [Stage: Pixel, Slot: (5-5)]
@R    CubeMap_id195 => RoughnessCubeMapEnvironmentColor.CubeMap.lightSpecularColor.environmentLights[1] [Stage: Pixel, Slot: (6-6)]
@R    CubeMap_id206 => RoughnessCubeMapEnvironmentColor.CubeMap.lightSpecularColor.environmentLights[2] [Stage: Pixel, Slot: (7-7)]
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
@S    ShadowMapReceiverDirectional => 0bf9ec91d0d63d48d1ba26668b1f66ec
@S    ShadowMapReceiverBase => 378009624fef0fa663eadb2f18a1e67c
@S    ShadowMapGroup => 7cc147d3462fc743e45887d78f3ee6c4
@S    ShadowMapCommon => a636008e844a6b4cc640e0310830794e
@S    ShadowMapFilterBase => 92c4ea2f9b3a7a114f7d9d7556b97ea5
@S    Texturing => 6605f68230266eff2bc8b4e8102ede6b
@S    Math => 395aa210901b9e0783594d1b4fb0a441
@S    ShadowMapFilterPcf => 101a5eea4b5aec04d9bbfd95eee01fbc
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
@S    LightPointGroup => da6546cbd60334ecd110ef8910244deb
@S    DirectLightGroupPerDraw => 21b22acd6960e0c69dfa6d8e84871170
@S    LightSpotGroup => 0a41fc6f2dbe808ee08a2400e4520199
@S    LightSimpleAmbient => 6b7c24748a4d72e5eb22ae12802d3b2d
@S    LightSkyboxShader => e57c1a10760a5036091dc1dcff962ae4
@S    IComputeEnvironmentColor => 0783535f47b4ba224b058b4b2ef41e20
@S    SphericalHarmonicsEnvironmentColor => d0c7f35eaec52e1a0fb822bc020d370a
@S    SphericalHarmonicsUtils => cdd3d002e9050bbda686218976dc0951
@S    RoughnessCubeMapEnvironmentColor => 0f1c10a9dec458f93fadc022cb19144e
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
@S    ConstantFloat => aed4b78684dc4c864ef592d9012d160a
@S    MaterialSurfaceMetalness => 53f38107e2a3f588a066e5056cfbe194
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
@S    GBufferOutputSubsurfaceScatteringMaterialIndex => 5df9471bf02401dc5db0de4bbd3d8abb
***************************
*****     Stages      *****
***************************
@G    Vertex => 22731900f4ca88603809638a49572b4d
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
//   float4 _padding_PerDraw_Default;   // Offset:  432 Size:    16 [unused]
//   int LightCount_id182;              // Offset:  448 Size:     4 [unused]
//   
//   struct PointLightData
//   {
//       
//       float3 PositionWS;             // Offset:  464
//       float InvSquareRadius;         // Offset:  476
//       float3 Color;                  // Offset:  480
//
//   } Lights_id184[32];                // Offset:  464 Size:  1020 [unused]
//   int LightCount_id185;              // Offset: 1484 Size:     4 [unused]
//   
//   struct SpotLightData
//   {
//       
//       float3 PositionWS;             // Offset: 1488
//       float3 DirectionWS;            // Offset: 1504
//       float3 AngleOffsetAndInvSquareRadius;// Offset: 1520
//       float3 Color;                  // Offset: 1536
//
//   } Lights_id187[8];                 // Offset: 1488 Size:   508 [unused]
//   float4 _padding_PerDraw_Lighting;  // Offset: 2000 Size:    16 [unused]
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
//   float NearClipPlane_id168;         // Offset:  352 Size:     4 [unused]
//      = 0x3f800000 
//   float FarClipPlane_id169;          // Offset:  356 Size:     4 [unused]
//      = 0x42c80000 
//   float2 ZProjection_id170;          // Offset:  360 Size:     8 [unused]
//   float2 ViewSize_id171;             // Offset:  368 Size:     8 [unused]
//   float AspectRatio_id172;           // Offset:  376 Size:     4 [unused]
//   float4 _padding_PerView_Default;   // Offset:  384 Size:    16 [unused]
//   int LightCount_id86;               // Offset:  400 Size:     4 [unused]
//   
//   struct DirectionalLightData
//   {
//       
//       float3 DirectionWS;            // Offset:  416
//       float3 Color;                  // Offset:  432
//
//   } Lights_id88;                     // Offset:  416 Size:    28 [unused]
//   float2 ShadowMapTextureSize_id90;  // Offset:  448 Size:     8 [unused]
//   float2 ShadowMapTextureTexelSize_id91;// Offset:  456 Size:     8 [unused]
//   float4x4 WorldToShadowCascadeUV_id153[4];// Offset:  464 Size:   256 [unused]
//   float4x4 InverseWorldToShadowCascadeUV_id154[4];// Offset:  720 Size:   256 [unused]
//   float4x4 ViewMatrices_id155[4];    // Offset:  976 Size:   256 [unused]
//   float2 DepthRanges_id156[4];       // Offset: 1232 Size:    56 [unused]
//   float DepthBiases_id157;           // Offset: 1296 Size:     4 [unused]
//   float OffsetScales_id158;          // Offset: 1312 Size:     4 [unused]
//   float CascadeDepthSplits_id165[4]; // Offset: 1328 Size:    52 [unused]
//   float ClusterDepthScale_id177;     // Offset: 1380 Size:     4 [unused]
//   float ClusterDepthBias_id178;      // Offset: 1384 Size:     4 [unused]
//   float2 ClusterStride_id179;        // Offset: 1392 Size:     8 [unused]
//   float3 AmbientLight_id188;         // Offset: 1408 Size:    12 [unused]
//   float3 SphericalColors_id193[9];   // Offset: 1424 Size:   140 [unused]
//   float MipCount_id194;              // Offset: 1564 Size:     4 [unused]
//   float4x4 SkyMatrix_id196;          // Offset: 1568 Size:    64 [unused]
//   float Intensity_id197;             // Offset: 1632 Size:     4 [unused]
//   float3 SphericalColors_id204[9];   // Offset: 1648 Size:   140 [unused]
//   float MipCount_id205;              // Offset: 1788 Size:     4 [unused]
//   float4x4 SkyMatrix_id207;          // Offset: 1792 Size:    64 [unused]
//   float Intensity_id208;             // Offset: 1856 Size:     4 [unused]
//   float4 _padding_PerView_Lighting;  // Offset: 1872 Size:    16 [unused]
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
// DEPTH_VS                 0   x           2     NONE   float   x   
// NORMALWS                 0    yzw        2     NONE   float    yzw
// SCREENPOSITION_ID167_SEM     0   xyzw        3     NONE   float   xyzw
//
vs_5_0
dcl_globalFlags refactoringAllowed
dcl_constantbuffer CB0[11], immediateIndexed
dcl_constantbuffer CB1[20], immediateIndexed
dcl_input v0.xyzw
dcl_input v1.xyz
dcl_output o0.xyzw
dcl_output_siv o1.xyzw, position
dcl_output o2.x
dcl_output o2.yzw
dcl_output o3.xyzw
dcl_temps 2
//
// Initial variable locations:
//   v0.x <- __input__.Position_id21.x; v0.y <- __input__.Position_id21.y; v0.z <- __input__.Position_id21.z; v0.w <- __input__.Position_id21.w; 
//   v1.x <- __input__.meshNormal_id16.x; v1.y <- __input__.meshNormal_id16.y; v1.z <- __input__.meshNormal_id16.z; 
//   o3.x <- <VSMain return value>.ScreenPosition_id167.x; o3.y <- <VSMain return value>.ScreenPosition_id167.y; o3.z <- <VSMain return value>.ScreenPosition_id167.z; o3.w <- <VSMain return value>.ScreenPosition_id167.w; 
//   o2.x <- <VSMain return value>.DepthVS_id23; o2.y <- <VSMain return value>.normalWS_id19.x; o2.z <- <VSMain return value>.normalWS_id19.y; o2.w <- <VSMain return value>.normalWS_id19.z; 
//   o1.x <- <VSMain return value>.ShadingPosition_id0.x; o1.y <- <VSMain return value>.ShadingPosition_id0.y; o1.z <- <VSMain return value>.ShadingPosition_id0.z; o1.w <- <VSMain return value>.ShadingPosition_id0.w; 
//   o0.x <- <VSMain return value>.PositionWS_id22.x; o0.y <- <VSMain return value>.PositionWS_id22.y; o0.z <- <VSMain return value>.PositionWS_id22.z; o0.w <- <VSMain return value>.PositionWS_id22.w
//
#line 1495 "C:\Users\elektromeier\Desktop\VomAmt\VomAmtVR\lib\log\shader_VLEffectMain_a89d306c75888ad5d6d008f50d1e119c.hlsl"
dp4 r0.x, v0.xyzw, cb0[0].xyzw  // r0.x <- streams.PositionWS_id22.x
dp4 r0.y, v0.xyzw, cb0[1].xyzw  // r0.y <- streams.PositionWS_id22.y
dp4 r0.z, v0.xyzw, cb0[2].xyzw  // r0.z <- streams.PositionWS_id22.z
dp4 r0.w, v0.xyzw, cb0[3].xyzw  // r0.w <- streams.PositionWS_id22.w

#line 1582
mov o0.xyzw, r0.xyzw

#line 1450
dp4 r1.x, r0.xyzw, cb1[16].xyzw  // r1.x <- <ComputeShadingPosition_id11 return value>.x
dp4 r1.y, r0.xyzw, cb1[17].xyzw  // r1.y <- <ComputeShadingPosition_id11 return value>.y
dp4 r1.z, r0.xyzw, cb1[18].xyzw  // r1.z <- <ComputeShadingPosition_id11 return value>.z
dp4 r1.w, r0.xyzw, cb1[19].xyzw  // r1.w <- <ComputeShadingPosition_id11 return value>.w

#line 1582
mov o1.xyzw, r1.xyzw
mov o3.xyzw, r1.xyzw
mov o2.x, r1.w

#line 1535
dp3 o2.y, v1.xyzx, cb0[8].xyzx
dp3 o2.z, v1.xyzx, cb0[9].xyzx
dp3 o2.w, v1.xyzx, cb0[10].xyzx

#line 1582
ret 
// Approximately 16 instruction slots used
@G    Pixel => 6862e24921e1d40d45b93b6e8a1033b2
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
//   float4 _padding_PerDraw_Default;   // Offset:  432 Size:    16 [unused]
//   int LightCount_id182;              // Offset:  448 Size:     4
//   
//   struct PointLightData
//   {
//       
//       float3 PositionWS;             // Offset:  464
//       float InvSquareRadius;         // Offset:  476
//       float3 Color;                  // Offset:  480
//
//   } Lights_id184[32];                // Offset:  464 Size:  1020
//   int LightCount_id185;              // Offset: 1484 Size:     4
//   
//   struct SpotLightData
//   {
//       
//       float3 PositionWS;             // Offset: 1488
//       float3 DirectionWS;            // Offset: 1504
//       float3 AngleOffsetAndInvSquareRadius;// Offset: 1520
//       float3 Color;                  // Offset: 1536
//
//   } Lights_id187[8];                 // Offset: 1488 Size:   508
//   float4 _padding_PerDraw_Lighting;  // Offset: 2000 Size:    16 [unused]
//
// }
//
// cbuffer PerMaterial
// {
//
//   float4 InputValue_id212;           // Offset:    0 Size:    16
//   float constantFloat_id226;         // Offset:   16 Size:     4
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
//   float NearClipPlane_id168;         // Offset:  352 Size:     4 [unused]
//      = 0x3f800000 
//   float FarClipPlane_id169;          // Offset:  356 Size:     4 [unused]
//      = 0x42c80000 
//   float2 ZProjection_id170;          // Offset:  360 Size:     8
//   float2 ViewSize_id171;             // Offset:  368 Size:     8 [unused]
//   float AspectRatio_id172;           // Offset:  376 Size:     4 [unused]
//   float4 _padding_PerView_Default;   // Offset:  384 Size:    16 [unused]
//   int LightCount_id86;               // Offset:  400 Size:     4
//   
//   struct DirectionalLightData
//   {
//       
//       float3 DirectionWS;            // Offset:  416
//       float3 Color;                  // Offset:  432
//
//   } Lights_id88;                     // Offset:  416 Size:    28
//   float2 ShadowMapTextureSize_id90;  // Offset:  448 Size:     8
//   float2 ShadowMapTextureTexelSize_id91;// Offset:  456 Size:     8
//   float4x4 WorldToShadowCascadeUV_id153[4];// Offset:  464 Size:   256
//   float4x4 InverseWorldToShadowCascadeUV_id154[4];// Offset:  720 Size:   256 [unused]
//   float4x4 ViewMatrices_id155[4];    // Offset:  976 Size:   256 [unused]
//   float2 DepthRanges_id156[4];       // Offset: 1232 Size:    56 [unused]
//   float DepthBiases_id157;           // Offset: 1296 Size:     4
//   float OffsetScales_id158;          // Offset: 1312 Size:     4
//   float CascadeDepthSplits_id165[4]; // Offset: 1328 Size:    52
//   float ClusterDepthScale_id177;     // Offset: 1380 Size:     4
//   float ClusterDepthBias_id178;      // Offset: 1384 Size:     4
//   float2 ClusterStride_id179;        // Offset: 1392 Size:     8
//   float3 AmbientLight_id188;         // Offset: 1408 Size:    12
//   float3 SphericalColors_id193[9];   // Offset: 1424 Size:   140
//   float MipCount_id194;              // Offset: 1564 Size:     4
//   float4x4 SkyMatrix_id196;          // Offset: 1568 Size:    64
//   float Intensity_id197;             // Offset: 1632 Size:     4
//   float3 SphericalColors_id204[9];   // Offset: 1648 Size:   140
//   float MipCount_id205;              // Offset: 1788 Size:     4
//   float4x4 SkyMatrix_id207;          // Offset: 1792 Size:    64
//   float Intensity_id208;             // Offset: 1856 Size:     4
//   float4 _padding_PerView_Lighting;  // Offset: 1872 Size:    16 [unused]
//
// }
//
//
// Resource Bindings:
//
// Name                                 Type  Format         Dim      HLSL Bind  Count
// ------------------------------ ---------- ------- ----------- -------------- ------
// LinearSampler_id122               sampler      NA          NA             s0      1 
// LinearClampCompareLessEqualSampler_id124  sampler_c      NA          NA             s1      1 
// EnvironmentLightingDFG_LUT_id233    texture  float4          2d             t0      1 
// ShadowMapTexture_id89             texture  float4          2d             t1      1 
// LightClusters_id175               texture   uint2          3d             t2      1 
// LightIndices_id176                texture    uint         buf             t3      1 
// PointLights_id180                 texture  float4         buf             t4      1 
// SpotLights_id181                  texture  float4         buf             t5      1 
// CubeMap_id195                     texture  float4        cube             t6      1 
// CubeMap_id206                     texture  float4        cube             t7      1 
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
// DEPTH_VS                 0   x           2     NONE   float   x   
// NORMALWS                 0    yzw        2     NONE   float    yzw
// SCREENPOSITION_ID167_SEM     0   xyzw        3     NONE   float   xy w
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
dcl_constantbuffer CB0[125], dynamicIndexed
dcl_constantbuffer CB1[2], immediateIndexed
dcl_constantbuffer CB2[117], dynamicIndexed
dcl_sampler s0, mode_default
dcl_sampler s1, mode_comparison
dcl_resource_texture2d (float,float,float,float) t0
dcl_resource_texture2d (float,float,float,float) t1
dcl_resource_texture3d (uint,uint,uint,uint) t2
dcl_resource_buffer (uint,uint,uint,uint) t3
dcl_resource_buffer (float,float,float,float) t4
dcl_resource_buffer (float,float,float,float) t5
dcl_resource_texturecube (float,float,float,float) t6
dcl_resource_texturecube (float,float,float,float) t7
dcl_input_ps linear v0.xyz
dcl_input_ps_siv linear noperspective v1.z, position
dcl_input_ps linear v2.x
dcl_input_ps linear v2.yzw
dcl_input_ps linear v3.xyw
dcl_input_ps_sgv constant v4.x, is_front_face
dcl_output o0.xyzw
dcl_output o1.xyzw
dcl_temps 21
//
// Initial variable locations:
//   v0.x <- __input__.PositionWS_id22.x; v0.y <- __input__.PositionWS_id22.y; v0.z <- __input__.PositionWS_id22.z; v0.w <- __input__.PositionWS_id22.w; 
//   v1.x <- __input__.ShadingPosition_id0.x; v1.y <- __input__.ShadingPosition_id0.y; v1.z <- __input__.ShadingPosition_id0.z; v1.w <- __input__.ShadingPosition_id0.w; 
//   v2.x <- __input__.DepthVS_id23; v2.y <- __input__.normalWS_id19.x; v2.z <- __input__.normalWS_id19.y; v2.w <- __input__.normalWS_id19.z; 
//   v3.x <- __input__.ScreenPosition_id167.x; v3.y <- __input__.ScreenPosition_id167.y; v3.z <- __input__.ScreenPosition_id167.z; v3.w <- __input__.ScreenPosition_id167.w; 
//   v4.x <- __input__.IsFrontFace_id1; 
//   o1.x <- <PSMain return value>.ColorTarget1_id3.x; o1.y <- <PSMain return value>.ColorTarget1_id3.y; o1.z <- <PSMain return value>.ColorTarget1_id3.z; o1.w <- <PSMain return value>.ColorTarget1_id3.w; 
//   o0.x <- <PSMain return value>.ColorTarget_id2.x; o0.y <- <PSMain return value>.ColorTarget_id2.y; o0.z <- <PSMain return value>.ColorTarget_id2.z; o0.w <- <PSMain return value>.ColorTarget_id2.w
//
#line 1562 "C:\Users\elektromeier\Desktop\VomAmt\VomAmtVR\lib\log\shader_VLEffectMain_a89d306c75888ad5d6d008f50d1e119c.hlsl"
div r0.xy, v3.xyxx, v3.wwww  // r0.x <- streams.ScreenPosition_id167.x; r0.y <- streams.ScreenPosition_id167.y

#line 1529
dp3 r0.z, v2.yzwy, v2.yzwy
lt r0.w, l(0.000000), r0.z

#line 1530
rsq r0.z, r0.z
mul r1.xyz, r0.zzzz, v2.yzwy  // r1.x <- streams.normalWS_id19.x; r1.y <- streams.normalWS_id19.y; r1.z <- streams.normalWS_id19.z
movc r1.xyz, r0.wwww, r1.xyzx, v2.yzwy

#line 1503
add r2.xyz, -v0.xyzx, cb2[21].xyzx
dp3 r0.z, r2.xyzx, r2.xyzx
rsq r0.z, r0.z
mul r3.xyz, r0.zzzz, r2.xyzx  // r3.x <- streams.viewWS_id68.x; r3.y <- streams.viewWS_id68.y; r3.z <- streams.viewWS_id68.z

#line 1406
add r4.xyz, cb1[0].xyzx, l(-0.020000, -0.020000, -0.020000, 0.000000)
mad r4.xyz, cb1[1].xxxx, r4.xyzx, l(0.020000, 0.020000, 0.020000, 0.000000)  // r4.x <- streams.matSpecular_id55.x; r4.y <- streams.matSpecular_id55.y; r4.z <- streams.matSpecular_id55.z

#line 1407
mad r5.xyz, cb1[1].xxxx, -cb1[0].xyzx, cb1[0].xyzx  // r5.x <- streams.matDiffuse_id53.x; r5.y <- streams.matDiffuse_id53.y; r5.z <- streams.matDiffuse_id53.z

#line 1211
movc r1.xyz, v4.xxxx, r1.xyzx, -r1.xyzx  // r1.x <- streams.normalWS_id19.x; r1.y <- streams.normalWS_id19.y; r1.z <- streams.normalWS_id19.z

#line 1169
dp3 r0.w, r1.xyzx, r3.xyzx
max r6.y, r0.w, l(0.000100)  // r6.y <- streams.NdotV_id72

#line 1235
ilt r0.w, l(0), cb2[25].x
if_nz r0.w

#line 1139
  dp3 r0.w, r1.xyzx, -cb2[26].xyzx
  max r0.w, r0.w, l(0.000100)  // r0.w <- streams.NdotL_id49

#line 921
  lt r1.w, cb2[83].x, v2.x

#line 924
  and r1.w, r1.w, l(1)  // r1.w <- cascadeIndex

#line 921
  lt r2.w, cb2[84].x, v2.x

#line 924
  movc r1.w, r2.w, l(2), r1.w

#line 921
  lt r2.w, cb2[85].x, v2.x

#line 924
  movc r1.w, r2.w, l(3), r1.w

#line 721
  add r3.w, -r0.w, l(1.000000)
  max r3.w, r3.w, l(0.000000)  // r3.w <- normalOffsetScale

#line 722
  mul r4.w, cb2[28].z, cb2[82].x
  dp2 r3.w, r4.wwww, r3.wwww

#line 929
  mad r7.xyz, r3.wwww, r1.xyzx, v0.xyzx  // r7.x <- shadowPosition.x; r7.y <- shadowPosition.y; r7.z <- shadowPosition.z

#line 714
  ishl r3.w, r1.w, l(2)
  mov r7.w, l(1.000000)
  dp4 r8.x, r7.xyzw, cb2[r3.w + 29].xyzw  // r8.x <- shadowPosition.x
  dp4 r8.y, r7.xyzw, cb2[r3.w + 30].xyzw  // r8.y <- shadowPosition.y
  dp4 r4.w, r7.xyzw, cb2[r3.w + 31].xyzw  // r4.w <- shadowPosition.z
  dp4 r5.w, r7.xyzw, cb2[r3.w + 32].xyzw  // r5.w <- shadowPosition.w

#line 715
  add r8.z, r4.w, -cb2[81].x  // r8.z <- shadowPosition.z

#line 716
  div r8.xyz, r8.xyzx, r5.wwww

#line 508
  mad r6.zw, r8.xxxy, cb2[28].xxxy, l(0.000000, 0.000000, 0.500000, 0.500000)
  round_ni r8.xy, r6.zwzz  // r8.x <- base_uv.x; r8.y <- base_uv.y

#line 509
  add r6.zw, r6.zzzw, -r8.xxxy  // r6.z <- st.x; r6.w <- st.y

#line 510
  add r8.xy, r8.xyxx, l(-0.500000, -0.500000, 0.000000, 0.000000)

#line 511
  mul r8.xy, r8.xyxx, cb2[28].zwzz

#line 387
  mad r9.xyzw, r6.zwwz, l(11.000000, 11.000000, 11.000000, 11.000000), l(-28.000000, -28.000000, 17.000000, 17.000000)  // r9.x <- uvW1.x; r9.y <- uvW1.y

#line 388
  mad r10.xyzw, r6.wzzw, l(5.000000, 5.000000, 5.000000, 5.000000), l(-6.000000, -6.000000, 1.000000, 1.000000)  // r10.x <- uvW0.y; r10.y <- uvW0.x

#line 390
  mad r11.xyzw, r6.zwzw, l(4.000000, 4.000000, 4.000000, 4.000000), l(-5.000000, -5.000000, -16.000000, -16.000000)

#line 389
  div r11.xy, r11.xyxx, r10.yxyy
  add r12.xw, r11.xxxy, l(-3.000000, 0.000000, 0.000000, -3.000000)  // r12.x <- uv0.x; r12.w <- uv0.y

#line 390
  div r11.xy, r11.zwzz, r9.xyxx
  add r12.yz, r11.yyxy, l(0.000000, -1.000000, -1.000000, 0.000000)  // r12.y <- uv1.y; r12.z <- uv1.x

#line 391
  mad r11.xy, r6.zwzz, l(7.000000, 7.000000, 0.000000, 0.000000), l(5.000000, 5.000000, 0.000000, 0.000000)
  div r11.xy, r11.xyxx, r9.wzww
  add r11.xw, r11.yyyx, l(1.000000, 0.000000, 0.000000, 1.000000)  // r11.x <- uv2.y; r11.w <- uv2.x

#line 392
  div r6.zw, r6.zzzw, r10.zzzw
  add r13.xy, r6.zwzz, l(3.000000, 3.000000, 0.000000, 0.000000)  // r13.x <- uv3.x; r13.y <- uv3.y

#line 394
  mad r14.xyzw, r12.xwzw, cb2[28].zwzw, r8.xyxy

#line 399
  mov r11.yz, r12.wwyw

#line 400
  mov r13.zw, r11.yyyz

#line 398
  mad r15.xyzw, r12.xyzy, cb2[28].zwzw, r8.xyxy

#line 399
  mad r16.xyzw, r11.wywz, cb2[28].zwzw, r8.xyxy

#line 400
  mad r17.xyzw, r13.xzxw, cb2[28].zwzw, r8.xyxy

#line 401
  mov r12.y, r11.x
  mul r6.zw, -r9.wwwz, r10.xxxy

#line 402
  mad r18.xyzw, r12.xyzy, cb2[28].zwzw, r8.xyxy
  mul r13.zw, r9.yyyx, -r9.wwwz

#line 403
  mad r19.xy, r11.wxww, cb2[28].zwzz, r8.xyxx
  mul r19.zw, r9.yyyz, r9.xxxw

#line 404
  mov r12.w, r13.x
  mad r12.yw, r12.wwwy, cb2[28].zzzw, r8.xxxy

#line 406
  mov r11.xz, r12.xxzx

#line 405
  mov r11.y, r13.y
  mul r12.xz, r10.xxyx, -r10.zzwz

#line 406
  mad r20.xyzw, r11.xyzy, cb2[28].zwzw, r8.xyxy
  mul r11.xz, r9.yyxy, -r10.zzwz

#line 407
  mad r11.yw, r11.wwwy, cb2[28].zzzw, r8.xxxy
  mul r9.xyzw, r9.xyzw, r10.xyzw

#line 408
  mad r8.xy, r13.xyxx, cb2[28].zwzz, r8.xyxx
  mul r10.xy, r10.xwxx, r10.yzyy

#line 503
  sample_c_lz_indexable(texture2d)(float,float,float,float) r4.w, r14.xyxx, t1.xxxx, s1, r8.z  // r4.w <- <SampleTextureAndCompare_id69 return value>
  sample_c_lz_indexable(texture2d)(float,float,float,float) r5.w, r14.zwzz, t1.xxxx, s1, r8.z  // r5.w <- <SampleTextureAndCompare_id69 return value>

#line 596
  mul r5.w, r5.w, r9.x
  mad r4.w, r10.x, r4.w, r5.w  // r4.w <- shadow

#line 503
  sample_c_lz_indexable(texture2d)(float,float,float,float) r5.w, r16.xyxx, t1.xxxx, s1, r8.z  // r5.w <- <SampleTextureAndCompare_id69 return value>

#line 596
  mad r4.w, r6.z, r5.w, r4.w

#line 503
  sample_c_lz_indexable(texture2d)(float,float,float,float) r5.w, r17.xyxx, t1.xxxx, s1, r8.z

#line 596
  mad r4.w, r12.x, r5.w, r4.w

#line 503
  sample_c_lz_indexable(texture2d)(float,float,float,float) r5.w, r15.xyxx, t1.xxxx, s1, r8.z

#line 596
  mad r4.w, r9.y, r5.w, r4.w

#line 503
  sample_c_lz_indexable(texture2d)(float,float,float,float) r5.w, r15.zwzz, t1.xxxx, s1, r8.z

#line 596
  mad r4.w, r19.z, r5.w, r4.w

#line 503
  sample_c_lz_indexable(texture2d)(float,float,float,float) r5.w, r16.zwzz, t1.xxxx, s1, r8.z

#line 596
  mad r4.w, r13.z, r5.w, r4.w

#line 503
  sample_c_lz_indexable(texture2d)(float,float,float,float) r5.w, r17.zwzz, t1.xxxx, s1, r8.z

#line 596
  mad r4.w, r11.x, r5.w, r4.w

#line 503
  sample_c_lz_indexable(texture2d)(float,float,float,float) r5.w, r18.xyxx, t1.xxxx, s1, r8.z

#line 596
  mad r4.w, r6.w, r5.w, r4.w

#line 503
  sample_c_lz_indexable(texture2d)(float,float,float,float) r5.w, r18.zwzz, t1.xxxx, s1, r8.z

#line 596
  mad r4.w, r13.w, r5.w, r4.w

#line 503
  sample_c_lz_indexable(texture2d)(float,float,float,float) r5.w, r19.xyxx, t1.xxxx, s1, r8.z

#line 596
  mad r4.w, r19.w, r5.w, r4.w

#line 503
  sample_c_lz_indexable(texture2d)(float,float,float,float) r5.w, r12.ywyy, t1.xxxx, s1, r8.z

#line 596
  mad r4.w, r9.z, r5.w, r4.w

#line 503
  sample_c_lz_indexable(texture2d)(float,float,float,float) r5.w, r20.xyxx, t1.xxxx, s1, r8.z

#line 596
  mad r4.w, r12.z, r5.w, r4.w

#line 503
  sample_c_lz_indexable(texture2d)(float,float,float,float) r5.w, r20.zwzz, t1.xxxx, s1, r8.z

#line 596
  mad r4.w, r11.z, r5.w, r4.w

#line 503
  sample_c_lz_indexable(texture2d)(float,float,float,float) r5.w, r11.ywyy, t1.xxxx, s1, r8.z

#line 596
  mad r4.w, r9.w, r5.w, r4.w

#line 503
  sample_c_lz_indexable(texture2d)(float,float,float,float) r5.w, r8.xyxx, t1.xxxx, s1, r8.z

#line 596
  mad r4.w, r10.y, r5.w, r4.w

#line 598
  mul r8.xyz, r4.wwww, l(0.000370, 0.000370, 0.000370, 0.000000)  // r8.z <- shadow

#line 935
  ilt r5.w, l(0), r1.w
  if_nz r5.w

#line 937
    iadd r5.w, r1.w, l(-1)
    add r5.w, -cb2[r5.w + 83].x, cb2[r1.w + 83].x  // r5.w <- splitSize

#line 938
  else 
    mov r5.w, cb2[r1.w + 83].x  // r5.w <- splitSize
  endif 

#line 939
  add r1.w, -v2.x, cb2[r1.w + 83].x
  div r1.w, r1.w, r5.w  // r1.w <- splitDist

#line 940
  lt r5.w, r1.w, l(0.200000)
  if_nz r5.w

#line 943
    if_nz r2.w

#line 945
      mov r8.xyz, r8.zzzz  // r8.x <- shadow.x; r8.y <- shadow.y; r8.z <- shadow.z
    else 

#line 942
      mul_sat r1.w, r1.w, l(5.000000)
      mad r2.w, r1.w, l(-2.000000), l(3.000000)
      mul r1.w, r1.w, r1.w
      mul r1.w, r1.w, r2.w  // r1.w <- lerpAmt

#line 714
      dp4 r9.x, r7.xyzw, cb2[r3.w + 33].xyzw  // r9.x <- shadowPosition.x
      dp4 r9.y, r7.xyzw, cb2[r3.w + 34].xyzw  // r9.y <- shadowPosition.y
      dp4 r2.w, r7.xyzw, cb2[r3.w + 35].xyzw  // r2.w <- shadowPosition.z
      dp4 r3.w, r7.xyzw, cb2[r3.w + 36].xyzw  // r3.w <- shadowPosition.w

#line 715
      add r9.z, r2.w, -cb2[81].x  // r9.z <- shadowPosition.z

#line 716
      div r7.xyz, r9.xyzx, r3.wwww  // r7.x <- shadowPosition.x; r7.y <- shadowPosition.y; r7.z <- shadowPosition.z

#line 508
      mad r6.zw, r7.xxxy, cb2[28].xxxy, l(0.000000, 0.000000, 0.500000, 0.500000)
      round_ni r7.xy, r6.zwzz  // r7.x <- base_uv.x; r7.y <- base_uv.y

#line 509
      add r6.zw, r6.zzzw, -r7.xxxy  // r6.z <- st.x; r6.w <- st.y

#line 510
      add r7.xy, r7.xyxx, l(-0.500000, -0.500000, 0.000000, 0.000000)

#line 511
      mul r7.xy, r7.xyxx, cb2[28].zwzz

#line 387
      mad r9.xyzw, r6.zwwz, l(11.000000, 11.000000, 11.000000, 11.000000), l(-28.000000, -28.000000, 17.000000, 17.000000)  // r9.x <- uvW1.x; r9.y <- uvW1.y

#line 388
      mad r10.xyzw, r6.wzzw, l(5.000000, 5.000000, 5.000000, 5.000000), l(-6.000000, -6.000000, 1.000000, 1.000000)  // r10.x <- uvW0.y; r10.y <- uvW0.x

#line 390
      mad r11.xyzw, r6.zwzw, l(4.000000, 4.000000, 4.000000, 4.000000), l(-5.000000, -5.000000, -16.000000, -16.000000)

#line 389
      div r11.xy, r11.xyxx, r10.yxyy
      add r12.xw, r11.xxxy, l(-3.000000, 0.000000, 0.000000, -3.000000)  // r12.x <- uv0.x; r12.w <- uv0.y

#line 390
      div r11.xy, r11.zwzz, r9.xyxx
      add r12.yz, r11.yyxy, l(0.000000, -1.000000, -1.000000, 0.000000)  // r12.y <- uv1.y; r12.z <- uv1.x

#line 391
      mad r11.xy, r6.zwzz, l(7.000000, 7.000000, 0.000000, 0.000000), l(5.000000, 5.000000, 0.000000, 0.000000)
      div r11.xy, r11.xyxx, r9.wzww
      add r11.xw, r11.yyyx, l(1.000000, 0.000000, 0.000000, 1.000000)  // r11.x <- uv2.y; r11.w <- uv2.x

#line 392
      div r6.zw, r6.zzzw, r10.zzzw
      add r13.xy, r6.zwzz, l(3.000000, 3.000000, 0.000000, 0.000000)  // r13.x <- uv3.x; r13.y <- uv3.y

#line 394
      mad r14.xyzw, r12.xwzw, cb2[28].zwzw, r7.xyxy

#line 399
      mov r11.yz, r12.wwyw

#line 400
      mov r13.zw, r11.yyyz

#line 398
      mad r15.xyzw, r12.xyzy, cb2[28].zwzw, r7.xyxy

#line 399
      mad r16.xyzw, r11.wywz, cb2[28].zwzw, r7.xyxy

#line 400
      mad r17.xyzw, r13.xzxw, cb2[28].zwzw, r7.xyxy

#line 401
      mov r12.y, r11.x
      mul r6.zw, -r9.wwwz, r10.xxxy

#line 402
      mad r18.xyzw, r12.xyzy, cb2[28].zwzw, r7.xyxy
      mul r13.zw, r9.yyyx, -r9.wwwz

#line 403
      mad r19.xy, r11.wxww, cb2[28].zwzz, r7.xyxx
      mul r19.zw, r9.yyyz, r9.xxxw

#line 404
      mov r12.w, r13.x
      mad r12.yw, r12.wwwy, cb2[28].zzzw, r7.xxxy

#line 406
      mov r11.xz, r12.xxzx

#line 405
      mov r11.y, r13.y
      mul r12.xz, r10.xxyx, -r10.zzwz

#line 406
      mad r20.xyzw, r11.xyzy, cb2[28].zwzw, r7.xyxy
      mul r11.xz, r9.yyxy, -r10.zzwz

#line 407
      mad r11.yw, r11.wwwy, cb2[28].zzzw, r7.xxxy
      mul r9.xyzw, r9.xyzw, r10.xyzw

#line 408
      mad r7.xy, r13.xyxx, cb2[28].zwzz, r7.xyxx
      mul r10.xy, r10.xwxx, r10.yzyy

#line 503
      sample_c_lz_indexable(texture2d)(float,float,float,float) r2.w, r14.xyxx, t1.xxxx, s1, r7.z  // r2.w <- <SampleTextureAndCompare_id69 return value>
      sample_c_lz_indexable(texture2d)(float,float,float,float) r3.w, r14.zwzz, t1.xxxx, s1, r7.z  // r3.w <- <SampleTextureAndCompare_id69 return value>

#line 596
      mul r3.w, r3.w, r9.x
      mad r2.w, r10.x, r2.w, r3.w  // r2.w <- shadow

#line 503
      sample_c_lz_indexable(texture2d)(float,float,float,float) r3.w, r16.xyxx, t1.xxxx, s1, r7.z  // r3.w <- <SampleTextureAndCompare_id69 return value>

#line 596
      mad r2.w, r6.z, r3.w, r2.w

#line 503
      sample_c_lz_indexable(texture2d)(float,float,float,float) r3.w, r17.xyxx, t1.xxxx, s1, r7.z

#line 596
      mad r2.w, r12.x, r3.w, r2.w

#line 503
      sample_c_lz_indexable(texture2d)(float,float,float,float) r3.w, r15.xyxx, t1.xxxx, s1, r7.z

#line 596
      mad r2.w, r9.y, r3.w, r2.w

#line 503
      sample_c_lz_indexable(texture2d)(float,float,float,float) r3.w, r15.zwzz, t1.xxxx, s1, r7.z

#line 596
      mad r2.w, r19.z, r3.w, r2.w

#line 503
      sample_c_lz_indexable(texture2d)(float,float,float,float) r3.w, r16.zwzz, t1.xxxx, s1, r7.z

#line 596
      mad r2.w, r13.z, r3.w, r2.w

#line 503
      sample_c_lz_indexable(texture2d)(float,float,float,float) r3.w, r17.zwzz, t1.xxxx, s1, r7.z

#line 596
      mad r2.w, r11.x, r3.w, r2.w

#line 503
      sample_c_lz_indexable(texture2d)(float,float,float,float) r3.w, r18.xyxx, t1.xxxx, s1, r7.z

#line 596
      mad r2.w, r6.w, r3.w, r2.w

#line 503
      sample_c_lz_indexable(texture2d)(float,float,float,float) r3.w, r18.zwzz, t1.xxxx, s1, r7.z

#line 596
      mad r2.w, r13.w, r3.w, r2.w

#line 503
      sample_c_lz_indexable(texture2d)(float,float,float,float) r3.w, r19.xyxx, t1.xxxx, s1, r7.z

#line 596
      mad r2.w, r19.w, r3.w, r2.w

#line 503
      sample_c_lz_indexable(texture2d)(float,float,float,float) r3.w, r12.ywyy, t1.xxxx, s1, r7.z

#line 596
      mad r2.w, r9.z, r3.w, r2.w

#line 503
      sample_c_lz_indexable(texture2d)(float,float,float,float) r3.w, r20.xyxx, t1.xxxx, s1, r7.z

#line 596
      mad r2.w, r12.z, r3.w, r2.w

#line 503
      sample_c_lz_indexable(texture2d)(float,float,float,float) r3.w, r20.zwzz, t1.xxxx, s1, r7.z

#line 596
      mad r2.w, r11.z, r3.w, r2.w

#line 503
      sample_c_lz_indexable(texture2d)(float,float,float,float) r3.w, r11.ywyy, t1.xxxx, s1, r7.z

#line 596
      mad r2.w, r9.w, r3.w, r2.w

#line 503
      sample_c_lz_indexable(texture2d)(float,float,float,float) r3.w, r7.xyxx, t1.xxxx, s1, r7.z

#line 596
      mad r2.w, r10.y, r3.w, r2.w

#line 598
      mul r2.w, r2.w, l(0.000370)

#line 949
      mad r3.w, r4.w, l(0.000370), -r2.w
      mad r8.xyz, r1.wwww, r3.wwww, r2.wwww  // r8.x <- shadow.x; r8.y <- shadow.y; r8.z <- shadow.z

#line 950
    endif 

#line 951
  endif 

#line 1141
  mul r7.xyz, r8.xyzx, cb2[27].xyzx
  mul r7.xyz, r0.wwww, r7.xyzx  // r7.x <- streams.lightColorNdotL_id44.x; r7.y <- streams.lightColorNdotL_id44.y; r7.z <- streams.lightColorNdotL_id44.z

#line 1131
  mad r2.xyz, r2.xyzx, r0.zzzz, -cb2[26].xyzx
  dp3 r0.z, r2.xyzx, r2.xyzx
  rsq r0.z, r0.z
  mul r2.xyz, r0.zzzz, r2.xyzx  // r2.x <- streams.H_id75.x; r2.y <- streams.H_id75.y; r2.z <- streams.H_id75.z

#line 1133
  dp3_sat r0.z, -cb2[26].xyzx, r2.xyzx  // r0.z <- streams.LdotH_id77

#line 1127
  mul r2.xyz, r5.xyzx, r7.xyzx

#line 566
  add r8.xyz, -r4.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
  add r0.z, -r0.z, l(1.000000)
  mul r1.w, r0.z, r0.z
  mul r1.w, r1.w, r1.w
  mul r0.z, r0.z, r1.w
  mad r8.xyz, r8.xyzx, r0.zzzz, r4.xyzx  // r8.x <- <FresnelSchlick_id183 return value>.x; r8.y <- <FresnelSchlick_id183 return value>.y; r8.z <- <FresnelSchlick_id183 return value>.z

#line 562
  mad r0.z, r0.w, l(0.500000), l(0.500000)
  div r0.z, r0.w, r0.z  // r0.z <- <VisibilityhSchlickGGX_id199 return value>
  mad r1.w, r6.y, l(0.500000), l(0.500000)
  div r1.w, r6.y, r1.w  // r1.w <- <VisibilityhSchlickGGX_id199 return value>

#line 701
  mul r0.z, r0.z, r1.w
  mul r0.w, r6.y, r0.w
  div r0.z, r0.z, r0.w  // r0.z <- <VisibilitySmithSchlickGGX_id201 return value>

#line 1121
  mul r8.xyz, r0.zzzz, r8.xyzx
  mul r7.xyz, r7.xyzx, r8.xyzx

#line 1122
  mul r7.xyz, r7.xyzx, l(0.079577, 0.079577, 0.079577, 0.000000)  // r7.x <- <ComputeDirectLightContribution_id552 return value>.x; r7.y <- <ComputeDirectLightContribution_id552 return value>.y; r7.z <- <ComputeDirectLightContribution_id552 return value>.z

#line 1243
  mad r2.xyz, r2.xyzx, l(0.318310, 0.318310, 0.318310, 0.000000), r7.xyzx  // r2.x <- directLightingContribution.x; r2.y <- directLightingContribution.y; r2.z <- directLightingContribution.z

#line 1244
else 
  mov r2.xyz, l(0,0,0,0)  // r2.x <- directLightingContribution.x; r2.y <- directLightingContribution.y; r2.z <- directLightingContribution.z
endif 

#line 886
add r0.z, v1.z, -cb2[22].z
div r0.z, cb2[22].w, r0.z  // r0.z <- depth

#line 887
mad r0.xy, r0.xyxx, l(1.000000, -1.000000, 0.000000, 0.000000), l(1.000000, 1.000000, 0.000000, 0.000000)
mul r0.xy, r0.xyxx, cb2[87].xyxx

#line 888
mad r0.z, r0.z, cb2[86].y, cb2[86].z
log r0.z, r0.z
max r0.z, r0.z, l(0.000000)

#line 889
mul r0.xy, r0.xyxx, l(0.500000, 0.500000, 0.000000, 0.000000)

#line 888
ftoi r7.xyz, r0.xyzx  // r7.z <- slice

#line 889
mov r7.w, l(0)
ld_indexable(texture3d)(uint,uint,uint,uint) r0.xy, r7.xyzw, t2.xyzw  // r0.x <- streams.lightData_id173.x; r0.y <- streams.lightData_id173.y

#line 1109
and r0.z, r0.y, l(0x0000ffff)  // r0.z <- <GetMaxLightCount_id254 return value>

#line 1253
mov r7.xyz, r1.xyzx  // r7.x <- streams.normalWS_id19.x; r7.y <- streams.normalWS_id19.y; r7.z <- streams.normalWS_id19.z
mov r7.w, v0.x  // r7.w <- streams.PositionWS_id22.x
mov r8.xy, v0.yzyy  // r8.x <- streams.PositionWS_id22.y; r8.y <- streams.PositionWS_id22.z
mov r8.zw, r3.xxxy  // r8.z <- streams.viewWS_id68.x; r8.w <- streams.viewWS_id68.y
mov r9.z, r3.z  // r9.z <- streams.viewWS_id68.z
mov r10.xyz, r5.xyzx  // r10.x <- streams.matDiffuseVisible_id69.x; r10.y <- streams.matDiffuseVisible_id69.y; r10.z <- streams.matDiffuseVisible_id69.z
mov r11.xyz, r4.xyzx  // r11.x <- streams.matSpecularVisible_id71.x; r11.y <- streams.matSpecularVisible_id71.y; r11.z <- streams.matSpecularVisible_id71.z
mov r6.w, r6.y  // r6.w <- streams.NdotV_id72
mov r6.z, r0.x  // r6.z <- streams.lightIndex_id174
mov r12.xyz, r2.xyzx  // r12.x <- directLightingContribution.x; r12.y <- directLightingContribution.y; r12.z <- directLightingContribution.z
mov r0.w, l(0)  // r0.w <- i
loop 
  ige r1.w, r0.w, r0.z
  breakc_nz r1.w

#line 1255
  if_nz r1.w

#line 1257
    break 

#line 1258
  endif 

#line 873
  ld_indexable(buffer)(uint,uint,uint,uint) r1.w, r6.zzzz, t3.yzwx  // r1.w <- realLightIndex

#line 874
  iadd r6.z, r6.z, l(1)  // r6.z <- streams.lightIndex_id174

#line 876
  ishl r2.w, r1.w, l(1)
  ld_indexable(buffer)(float,float,float,float) r13.xyzw, r2.wwww, t4.xyzw  // r13.x <- pointLight1.x; r13.y <- pointLight1.y; r13.z <- pointLight1.z; r13.w <- pointLight1.w

#line 877
  bfi r1.w, l(31), l(1), r1.w, l(1)
  ld_indexable(buffer)(float,float,float,float) r14.xyz, r1.wwww, t4.xyzw  // r14.x <- pointLight2.x; r14.y <- pointLight2.y; r14.z <- pointLight2.z

#line 553
  mov r15.x, r7.w
  mov r15.yz, r8.xxyx
  add r13.xyz, r13.xyzx, -r15.xyzx  // r13.x <- lightVector.x; r13.y <- lightVector.y; r13.z <- lightVector.z

#line 554
  dp3 r1.w, r13.xyzx, r13.xyzx
  sqrt r2.w, r1.w  // r2.w <- lightVectorLength

#line 555
  div r13.xyz, r13.xyzx, r2.wwww  // r13.x <- lightVectorNorm.x; r13.y <- lightVectorNorm.y; r13.z <- lightVectorNorm.z

#line 449
  max r2.w, r1.w, l(0.000100)
  div r2.w, l(1.000000, 1.000000, 1.000000, 1.000000), r2.w  // r2.w <- attenuation

#line 333
  mul r1.w, r13.w, r1.w  // r1.w <- factor

#line 334
  mad r1.w, -r1.w, r1.w, l(1.000000)
  max r1.w, r1.w, l(0.000000)  // r1.w <- smoothFactor

#line 335
  mul r1.w, r1.w, r1.w  // r1.w <- <SmoothDistanceAttenuation_id83 return value>

#line 450
  mul r1.w, r1.w, r2.w  // r1.w <- attenuation

#line 1095
  dp3 r2.w, r7.xyzx, r13.xyzx
  max r2.w, r2.w, l(0.000100)  // r2.w <- streams.NdotL_id49

#line 1097
  mul r14.xyz, r1.wwww, r14.xyzx
  mul r14.xyz, r2.wwww, r14.xyzx  // r14.x <- streams.lightColorNdotL_id44.x; r14.y <- streams.lightColorNdotL_id44.y; r14.z <- streams.lightColorNdotL_id44.z

#line 1131
  mov r9.xy, r8.zwzz
  add r9.xyw, r13.xyxz, r9.xyxz
  dp3 r1.w, r9.xywx, r9.xywx
  rsq r1.w, r1.w
  mul r9.xyw, r1.wwww, r9.xyxw  // r9.x <- streams.H_id75.x; r9.y <- streams.H_id75.y; r9.w <- streams.H_id75.z

#line 1133
  dp3_sat r1.w, r13.xyzx, r9.xywx  // r1.w <- streams.LdotH_id77

#line 1127
  mul r9.xyw, r10.xyxz, r14.xyxz

#line 1263
  mad r9.xyw, r9.xyxw, l(0.318310, 0.318310, 0.000000, 0.318310), r12.xyxz  // r9.x <- directLightingContribution.x; r9.y <- directLightingContribution.y; r9.w <- directLightingContribution.z

#line 566
  add r13.xyz, -r11.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
  add r1.w, -r1.w, l(1.000000)
  mul r3.w, r1.w, r1.w
  mul r3.w, r3.w, r3.w
  mul r1.w, r1.w, r3.w
  mad r13.xyz, r13.xyzx, r1.wwww, r11.xyzx  // r13.x <- <FresnelSchlick_id183 return value>.x; r13.y <- <FresnelSchlick_id183 return value>.y; r13.z <- <FresnelSchlick_id183 return value>.z

#line 562
  mad r1.w, r2.w, l(0.500000), l(0.500000)
  div r1.w, r2.w, r1.w  // r1.w <- <VisibilityhSchlickGGX_id199 return value>
  mad r3.w, r6.w, l(0.500000), l(0.500000)
  div r3.w, r6.w, r3.w  // r3.w <- <VisibilityhSchlickGGX_id199 return value>

#line 701
  mul r1.w, r1.w, r3.w
  mul r2.w, r6.w, r2.w
  div r1.w, r1.w, r2.w  // r1.w <- <VisibilitySmithSchlickGGX_id201 return value>

#line 1121
  mul r13.xyz, r1.wwww, r13.xyzx
  mul r13.xyz, r14.xyzx, r13.xyzx

#line 1267
  mad r12.xyz, r13.xyzx, l(0.079577, 0.079577, 0.079577, 0.000000), r9.xywx  // r12.x <- directLightingContribution.x; r12.y <- directLightingContribution.y; r12.z <- directLightingContribution.z

#line 1253
  iadd r0.w, r0.w, l(1)

#line 1269
endloop   // r6.z <- streams.lightIndex_id174

#line 1087
ushr r0.x, r0.y, l(16)  // r0.x <- <GetMaxLightCount_id266 return value>

#line 1277
mov r0.yzw, v0.xxyz  // r0.y <- streams.PositionWS_id22.x; r0.z <- streams.PositionWS_id22.y; r0.w <- streams.PositionWS_id22.z
mov r2.xyz, r1.xyzx  // r2.x <- streams.normalWS_id19.x; r2.y <- streams.normalWS_id19.y; r2.z <- streams.normalWS_id19.z
mov r7.xyz, r3.xyzx  // r7.x <- streams.viewWS_id68.x; r7.y <- streams.viewWS_id68.y; r7.z <- streams.viewWS_id68.z
mov r8.xyz, r5.xyzx  // r8.x <- streams.matDiffuseVisible_id69.x; r8.y <- streams.matDiffuseVisible_id69.y; r8.z <- streams.matDiffuseVisible_id69.z
mov r9.xyz, r4.xyzx  // r9.x <- streams.matSpecularVisible_id71.x; r9.y <- streams.matSpecularVisible_id71.y; r9.z <- streams.matSpecularVisible_id71.z
mov r1.w, r6.y  // r1.w <- streams.NdotV_id72
mov r10.xyz, r12.xyzx  // r10.x <- directLightingContribution.x; r10.y <- directLightingContribution.y; r10.z <- directLightingContribution.z
mov r2.w, r6.z  // r2.w <- streams.lightIndex_id174
mov r3.w, l(0)  // r3.w <- i
loop 
  ige r4.w, r3.w, r0.x
  breakc_nz r4.w

#line 1279
  if_nz r4.w

#line 1281
    break 

#line 1282
  endif 

#line 845
  ld_indexable(buffer)(uint,uint,uint,uint) r4.w, r2.wwww, t3.yzwx  // r4.w <- realLightIndex

#line 846
  iadd r2.w, r2.w, l(1)  // r2.w <- streams.lightIndex_id174

#line 848
  ishl r5.w, r4.w, l(2)
  ld_indexable(buffer)(float,float,float,float) r11.xyz, r5.wwww, t5.xyzw  // r11.x <- spotLight1.x; r11.y <- spotLight1.y; r11.z <- spotLight1.z

#line 851
  bfi r13.xyz, l(30, 30, 30, 0), l(2, 2, 2, 0), r4.wwww, l(1, 2, 3, 0)

#line 849
  ld_indexable(buffer)(float,float,float,float) r14.xyz, r13.xxxx, t5.xyzw  // r14.x <- spotLight2.x; r14.y <- spotLight2.y; r14.z <- spotLight2.z

#line 850
  ld_indexable(buffer)(float,float,float,float) r13.xyw, r13.yyyy, t5.xywz  // r13.x <- spotLight3.x; r13.y <- spotLight3.y; r13.w <- spotLight3.z

#line 851
  ld_indexable(buffer)(float,float,float,float) r15.xyz, r13.zzzz, t5.xyzw  // r15.x <- spotLight4.x; r15.y <- spotLight4.y; r15.z <- spotLight4.z

#line 540
  add r11.xyz, -r0.yzwy, r11.xyzx  // r11.x <- lightVector.x; r11.y <- lightVector.y; r11.z <- lightVector.z

#line 541
  dp3 r4.w, r11.xyzx, r11.xyzx
  sqrt r5.w, r4.w  // r5.w <- lightVectorLength

#line 542
  div r11.xyz, r11.xyzx, r5.wwww  // r11.x <- lightVectorNorm.x; r11.y <- lightVectorNorm.y; r11.z <- lightVectorNorm.z

#line 442
  max r5.w, r4.w, l(0.000100)
  div r5.w, l(1.000000, 1.000000, 1.000000, 1.000000), r5.w  // r5.w <- attenuation

#line 327
  mul r4.w, r13.w, r4.w  // r4.w <- factor

#line 328
  mad r4.w, -r4.w, r4.w, l(1.000000)
  max r4.w, r4.w, l(0.000000)  // r4.w <- smoothFactor

#line 329
  mul r4.w, r4.w, r4.w  // r4.w <- <SmoothDistanceAttenuation_id94 return value>

#line 443
  mul r4.w, r4.w, r5.w  // r4.w <- attenuation

#line 434
  dp3 r5.w, -r14.xyzx, r11.xyzx  // r5.w <- cd

#line 435
  mad_sat r5.w, r5.w, r13.x, r13.y  // r5.w <- attenuation

#line 436
  mul r5.w, r5.w, r5.w

#line 548
  mul r4.w, r4.w, r5.w  // r4.w <- attenuation

#line 1073
  dp3 r5.w, r2.xyzx, r11.xyzx
  max r5.w, r5.w, l(0.000100)  // r5.w <- streams.NdotL_id49

#line 1075
  mul r13.xyz, r4.wwww, r15.xyzx
  mul r13.xyz, r5.wwww, r13.xyzx  // r13.x <- streams.lightColorNdotL_id44.x; r13.y <- streams.lightColorNdotL_id44.y; r13.z <- streams.lightColorNdotL_id44.z

#line 1131
  add r14.xyz, r7.xyzx, r11.xyzx
  dp3 r4.w, r14.xyzx, r14.xyzx
  rsq r4.w, r4.w
  mul r14.xyz, r4.wwww, r14.xyzx  // r14.x <- streams.H_id75.x; r14.y <- streams.H_id75.y; r14.z <- streams.H_id75.z

#line 1133
  dp3_sat r4.w, r11.xyzx, r14.xyzx  // r4.w <- streams.LdotH_id77

#line 1127
  mul r11.xyz, r8.xyzx, r13.xyzx

#line 1287
  mad r11.xyz, r11.xyzx, l(0.318310, 0.318310, 0.318310, 0.000000), r10.xyzx  // r11.x <- directLightingContribution.x; r11.y <- directLightingContribution.y; r11.z <- directLightingContribution.z

#line 566
  add r14.xyz, -r9.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
  add r4.w, -r4.w, l(1.000000)
  mul r6.w, r4.w, r4.w
  mul r6.w, r6.w, r6.w
  mul r4.w, r4.w, r6.w
  mad r14.xyz, r14.xyzx, r4.wwww, r9.xyzx  // r14.x <- <FresnelSchlick_id183 return value>.x; r14.y <- <FresnelSchlick_id183 return value>.y; r14.z <- <FresnelSchlick_id183 return value>.z

#line 562
  mad r4.w, r5.w, l(0.500000), l(0.500000)
  div r4.w, r5.w, r4.w  // r4.w <- <VisibilityhSchlickGGX_id199 return value>
  mad r6.w, r1.w, l(0.500000), l(0.500000)
  div r6.w, r1.w, r6.w  // r6.w <- <VisibilityhSchlickGGX_id199 return value>

#line 701
  mul r4.w, r4.w, r6.w
  mul r5.w, r1.w, r5.w
  div r4.w, r4.w, r5.w  // r4.w <- <VisibilitySmithSchlickGGX_id201 return value>

#line 1121
  mul r14.xyz, r4.wwww, r14.xyzx
  mul r13.xyz, r13.xyzx, r14.xyzx

#line 1291
  mad r10.xyz, r13.xyzx, l(0.079577, 0.079577, 0.079577, 0.000000), r11.xyzx  // r10.x <- directLightingContribution.x; r10.y <- directLightingContribution.y; r10.z <- directLightingContribution.z

#line 1277
  iadd r3.w, r3.w, l(1)

#line 1293
endloop   // r2.w <- streams.lightIndex_id174

#line 1301
mov r0.xyz, v0.xyzx  // r0.x <- streams.PositionWS_id22.x; r0.y <- streams.PositionWS_id22.y; r0.z <- streams.PositionWS_id22.z
mov r2.xyz, r1.xyzx
mov r7.xyz, r3.xyzx
mov r8.xyz, r5.xyzx
mov r9.xyz, r4.xyzx
mov r0.w, r6.y  // r0.w <- streams.NdotV_id72
mov r11.xyz, r10.xyzx  // r11.x <- directLightingContribution.x; r11.y <- directLightingContribution.y; r11.z <- directLightingContribution.z
mov r1.w, l(0)  // r1.w <- i
loop 
  ige r2.w, r1.w, l(32)
  breakc_nz r2.w

#line 1303
  ige r2.w, r1.w, cb0[28].x
  if_nz r2.w

#line 1305
    break 

#line 1306
  endif 

#line 825
  ishl r2.w, r1.w, l(1)

#line 532
  add r12.xyz, -r0.xyzx, cb0[r2.w + 29].xyzx  // r12.x <- lightVector.x; r12.y <- lightVector.y; r12.z <- lightVector.z

#line 533
  dp3 r3.w, r12.xyzx, r12.xyzx
  sqrt r4.w, r3.w  // r4.w <- lightVectorLength

#line 534
  div r12.xyz, r12.xyzx, r4.wwww  // r12.x <- lightVectorNorm.x; r12.y <- lightVectorNorm.y; r12.z <- lightVectorNorm.z

#line 428
  max r4.w, r3.w, l(0.000100)
  div r4.w, l(1.000000, 1.000000, 1.000000, 1.000000), r4.w  // r4.w <- attenuation

#line 321
  mul r3.w, r3.w, cb0[r2.w + 29].w  // r3.w <- factor

#line 322
  mad r3.w, -r3.w, r3.w, l(1.000000)
  max r3.w, r3.w, l(0.000000)  // r3.w <- smoothFactor

#line 323
  mul r3.w, r3.w, r3.w  // r3.w <- <SmoothDistanceAttenuation_id105 return value>

#line 429
  mul r3.w, r3.w, r4.w  // r3.w <- attenuation

#line 1051
  dp3 r4.w, r2.xyzx, r12.xyzx
  max r4.w, r4.w, l(0.000100)  // r4.w <- streams.NdotL_id49

#line 1053
  mul r13.xyz, r3.wwww, cb0[r2.w + 30].xyzx
  mul r13.xyz, r4.wwww, r13.xyzx  // r13.x <- streams.lightColorNdotL_id44.x; r13.y <- streams.lightColorNdotL_id44.y; r13.z <- streams.lightColorNdotL_id44.z

#line 1131
  add r14.xyz, r7.xyzx, r12.xyzx
  dp3 r2.w, r14.xyzx, r14.xyzx
  rsq r2.w, r2.w
  mul r14.xyz, r2.wwww, r14.xyzx  // r14.x <- streams.H_id75.x; r14.y <- streams.H_id75.y; r14.z <- streams.H_id75.z

#line 1133
  dp3_sat r2.w, r12.xyzx, r14.xyzx  // r2.w <- streams.LdotH_id77

#line 1127
  mul r12.xyz, r8.xyzx, r13.xyzx

#line 1311
  mad r12.xyz, r12.xyzx, l(0.318310, 0.318310, 0.318310, 0.000000), r11.xyzx  // r12.x <- directLightingContribution.x; r12.y <- directLightingContribution.y; r12.z <- directLightingContribution.z

#line 566
  add r14.xyz, -r9.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
  add r2.w, -r2.w, l(1.000000)
  mul r3.w, r2.w, r2.w
  mul r3.w, r3.w, r3.w
  mul r2.w, r2.w, r3.w
  mad r14.xyz, r14.xyzx, r2.wwww, r9.xyzx  // r14.x <- <FresnelSchlick_id183 return value>.x; r14.y <- <FresnelSchlick_id183 return value>.y; r14.z <- <FresnelSchlick_id183 return value>.z

#line 562
  mad r2.w, r4.w, l(0.500000), l(0.500000)
  div r2.w, r4.w, r2.w  // r2.w <- <VisibilityhSchlickGGX_id199 return value>
  mad r3.w, r0.w, l(0.500000), l(0.500000)
  div r3.w, r0.w, r3.w  // r3.w <- <VisibilityhSchlickGGX_id199 return value>

#line 701
  mul r2.w, r2.w, r3.w
  mul r3.w, r0.w, r4.w
  div r2.w, r2.w, r3.w  // r2.w <- <VisibilitySmithSchlickGGX_id201 return value>

#line 1121
  mul r14.xyz, r2.wwww, r14.xyzx
  mul r13.xyz, r13.xyzx, r14.xyzx

#line 1315
  mad r11.xyz, r13.xyzx, l(0.079577, 0.079577, 0.079577, 0.000000), r12.xyzx  // r11.x <- directLightingContribution.x; r11.y <- directLightingContribution.y; r11.z <- directLightingContribution.z

#line 1301
  iadd r1.w, r1.w, l(1)

#line 1317
endloop 

#line 1325
mov r0.xyz, v0.xyzx
mov r2.xyz, r1.xyzx
mov r7.xyz, r3.xyzx
mov r8.xyz, r5.xyzx
mov r9.xyz, r4.xyzx
mov r0.w, r6.y
mov r10.xyz, r11.xyzx  // r10.x <- directLightingContribution.x; r10.y <- directLightingContribution.y; r10.z <- directLightingContribution.z
mov r1.w, l(0)  // r1.w <- i
loop 
  ige r2.w, r1.w, l(8)
  breakc_nz r2.w

#line 1327
  ige r2.w, r1.w, cb0[92].w
  if_nz r2.w

#line 1329
    break 

#line 1330
  endif 

#line 803
  ishl r2.w, r1.w, l(2)

#line 519
  add r12.xyz, -r0.xyzx, cb0[r2.w + 93].xyzx  // r12.x <- lightVector.x; r12.y <- lightVector.y; r12.z <- lightVector.z

#line 520
  dp3 r3.w, r12.xyzx, r12.xyzx
  sqrt r4.w, r3.w  // r4.w <- lightVectorLength

#line 521
  div r12.xyz, r12.xyzx, r4.wwww  // r12.x <- lightVectorNorm.x; r12.y <- lightVectorNorm.y; r12.z <- lightVectorNorm.z

#line 421
  max r4.w, r3.w, l(0.000100)
  div r4.w, l(1.000000, 1.000000, 1.000000, 1.000000), r4.w  // r4.w <- attenuation

#line 315
  mul r3.w, r3.w, cb0[r2.w + 95].z  // r3.w <- factor

#line 316
  mad r3.w, -r3.w, r3.w, l(1.000000)
  max r3.w, r3.w, l(0.000000)  // r3.w <- smoothFactor

#line 317
  mul r3.w, r3.w, r3.w  // r3.w <- <SmoothDistanceAttenuation_id115 return value>

#line 422
  mul r3.w, r3.w, r4.w  // r3.w <- attenuation

#line 413
  dp3 r4.w, -cb0[r2.w + 94].xyzx, r12.xyzx  // r4.w <- cd

#line 414
  mad_sat r4.w, r4.w, cb0[r2.w + 95].x, cb0[r2.w + 95].y  // r4.w <- attenuation

#line 415
  mul r4.w, r4.w, r4.w

#line 527
  mul r3.w, r3.w, r4.w  // r3.w <- attenuation

#line 1029
  dp3 r4.w, r2.xyzx, r12.xyzx
  max r4.w, r4.w, l(0.000100)  // r4.w <- streams.NdotL_id49

#line 1031
  mul r13.xyz, r3.wwww, cb0[r2.w + 96].xyzx
  mul r13.xyz, r4.wwww, r13.xyzx  // r13.x <- streams.lightColorNdotL_id44.x; r13.y <- streams.lightColorNdotL_id44.y; r13.z <- streams.lightColorNdotL_id44.z

#line 1131
  add r14.xyz, r7.xyzx, r12.xyzx
  dp3 r2.w, r14.xyzx, r14.xyzx
  rsq r2.w, r2.w
  mul r14.xyz, r2.wwww, r14.xyzx  // r14.x <- streams.H_id75.x; r14.y <- streams.H_id75.y; r14.z <- streams.H_id75.z

#line 1133
  dp3_sat r2.w, r12.xyzx, r14.xyzx  // r2.w <- streams.LdotH_id77

#line 1127
  mul r12.xyz, r8.xyzx, r13.xyzx

#line 1335
  mad r12.xyz, r12.xyzx, l(0.318310, 0.318310, 0.318310, 0.000000), r10.xyzx  // r12.x <- directLightingContribution.x; r12.y <- directLightingContribution.y; r12.z <- directLightingContribution.z

#line 566
  add r14.xyz, -r9.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
  add r2.w, -r2.w, l(1.000000)
  mul r3.w, r2.w, r2.w
  mul r3.w, r3.w, r3.w
  mul r2.w, r2.w, r3.w
  mad r14.xyz, r14.xyzx, r2.wwww, r9.xyzx  // r14.x <- <FresnelSchlick_id183 return value>.x; r14.y <- <FresnelSchlick_id183 return value>.y; r14.z <- <FresnelSchlick_id183 return value>.z

#line 562
  mad r2.w, r4.w, l(0.500000), l(0.500000)
  div r2.w, r4.w, r2.w  // r2.w <- <VisibilityhSchlickGGX_id199 return value>
  mad r3.w, r0.w, l(0.500000), l(0.500000)
  div r3.w, r0.w, r3.w  // r3.w <- <VisibilityhSchlickGGX_id199 return value>

#line 701
  mul r2.w, r2.w, r3.w
  mul r3.w, r0.w, r4.w
  div r2.w, r2.w, r3.w  // r2.w <- <VisibilitySmithSchlickGGX_id201 return value>

#line 1121
  mul r14.xyz, r2.wwww, r14.xyzx
  mul r13.xyz, r13.xyzx, r14.xyzx

#line 1339
  mad r10.xyz, r13.xyzx, l(0.079577, 0.079577, 0.079577, 0.000000), r12.xyzx  // r10.x <- directLightingContribution.x; r10.y <- directLightingContribution.y; r10.z <- directLightingContribution.z

#line 1325
  iadd r1.w, r1.w, l(1)

#line 1341
endloop 

#line 779
mov r6.x, l(0)
sample_l_indexable(texture2d)(float,float,float,float) r0.xy, r6.xyxx, t0.xyzw, s0, l(0.000000)  // r0.x <- environmentLightingDFG.x; r0.y <- environmentLightingDFG.y

#line 780
mad r0.xyz, r4.xyzx, r0.xxxx, r0.yyyy  // r0.x <- <Compute_id374 return value>.x; r0.y <- <Compute_id374 return value>.y; r0.z <- <Compute_id374 return value>.z

#line 1012
mul r2.xyz, r0.xyzx, cb2[88].xyzx  // r2.x <- <ComputeEnvironmentLightContribution_id553 return value>.x; r2.y <- <ComputeEnvironmentLightContribution_id553 return value>.y; r2.z <- <ComputeEnvironmentLightContribution_id553 return value>.z

#line 1353
mad r2.xyz, r5.xyzx, cb2[88].xyzx, r2.xyzx  // r2.x <- environmentLightingContribution.x; r2.y <- environmentLightingContribution.y; r2.z <- environmentLightingContribution.z

#line 1001
dp3 r0.w, r1.xyzx, cb2[98].xyzx  // r0.w <- sampleDirection.x
dp3 r1.w, r1.xyzx, cb2[99].xyzx  // r1.w <- sampleDirection.y
dp3 r2.w, r1.xyzx, cb2[100].xyzx  // r2.w <- sampleDirection.z

#line 640
mul r3.w, r1.w, r1.w  // r3.w <- y2

#line 641
mul r4.x, r2.w, r2.w  // r4.x <- z2

#line 645
mad r4.yzw, cb2[90].xxyz, r1.wwww, cb2[89].xxyz  // r4.y <- color.x; r4.z <- color.y; r4.w <- color.z

#line 646
mad r4.yzw, cb2[91].xxyz, -r2.wwww, r4.yyzw

#line 647
mad r4.yzw, cb2[92].xxyz, r0.wwww, r4.yyzw

#line 650
mul r6.xyz, r1.wwww, cb2[93].xyzx
mad r4.yzw, r6.xxyz, r0.wwww, r4.yyzw

#line 651
mul r6.xyz, r1.wwww, cb2[94].xyzx
mad r4.yzw, r6.xxyz, -r2.wwww, r4.yyzw

#line 652
mad r1.w, r4.x, l(3.000000), l(-1.000000)
mad r4.xyz, cb2[95].xyzx, r1.wwww, r4.yzwy  // r4.x <- color.x; r4.y <- color.y; r4.z <- color.z

#line 653
mul r6.xyz, r0.wwww, cb2[96].xyzx
mad r4.xyz, r6.xyzx, -r2.wwww, r4.xyzx

#line 654
mad r0.w, r0.w, r0.w, -r3.w
mad r4.xyz, cb2[97].xyzx, r0.wwww, r4.xyzx

#line 1003
mul r4.xyz, r4.xyzx, cb2[102].xxxx  // r4.x <- streams.envLightDiffuseColor_id47.x; r4.y <- streams.envLightDiffuseColor_id47.y; r4.z <- streams.envLightDiffuseColor_id47.z

#line 1004
dp3 r0.w, -r3.xyzx, r1.xyzx
add r0.w, r0.w, r0.w
mad r3.xyz, r1.xyzx, -r0.wwww, -r3.xyzx  // r3.x <- sampleDirection.x; r3.y <- sampleDirection.y; r3.z <- sampleDirection.z

#line 1005
dp3 r6.x, r3.xyzx, cb2[98].xyzx  // r6.x <- sampleDirection.x
dp3 r6.y, r3.xyzx, cb2[99].xyzx  // r6.y <- sampleDirection.y
dp3 r0.w, r3.xyzx, cb2[100].xyzx  // r0.w <- sampleDirection.z

#line 1006
mov r6.z, -r0.w  // r6.z <- sampleDirection.z

#line 765
sample_l_indexable(texturecube)(float,float,float,float) r6.xyz, r6.xyzx, t6.xyzw, s0, cb2[97].w  // r6.x <- <Compute_id312 return value>.x; r6.y <- <Compute_id312 return value>.y; r6.z <- <Compute_id312 return value>.z

#line 1007
mul r6.xyz, r6.xyzx, cb2[102].xxxx  // r6.x <- streams.envLightSpecularColor_id48.x; r6.y <- streams.envLightSpecularColor_id48.y; r6.z <- streams.envLightSpecularColor_id48.z

#line 1361
mad r2.xyz, r5.xyzx, r4.xyzx, r2.xyzx

#line 1365
mad r2.xyz, r0.xyzx, r6.xyzx, r2.xyzx

#line 989
dp3 r0.w, r1.xyzx, cb2[112].xyzx  // r0.w <- sampleDirection.x
dp3 r1.w, r1.xyzx, cb2[113].xyzx  // r1.w <- sampleDirection.y
dp3 r1.x, r1.xyzx, cb2[114].xyzx  // r1.x <- sampleDirection.z

#line 615
mul r1.yz, r1.wwxw, r1.wwxw  // r1.y <- y2; r1.z <- z2

#line 620
mad r4.xyz, cb2[104].xyzx, r1.wwww, cb2[103].xyzx  // r4.x <- color.x; r4.y <- color.y; r4.z <- color.z

#line 621
mad r4.xyz, cb2[105].xyzx, -r1.xxxx, r4.xyzx

#line 622
mad r4.xyz, cb2[106].xyzx, r0.wwww, r4.xyzx

#line 625
mul r6.xyz, r1.wwww, cb2[107].xyzx
mad r4.xyz, r6.xyzx, r0.wwww, r4.xyzx

#line 626
mul r6.xyz, r1.wwww, cb2[108].xyzx
mad r4.xyz, r6.xyzx, -r1.xxxx, r4.xyzx

#line 627
mad r1.z, r1.z, l(3.000000), l(-1.000000)
mad r4.xyz, cb2[109].xyzx, r1.zzzz, r4.xyzx

#line 628
mul r6.xyz, r0.wwww, cb2[110].xyzx
mad r1.xzw, r6.xxyz, -r1.xxxx, r4.xxyz  // r1.x <- color.x; r1.z <- color.y; r1.w <- color.z

#line 629
mad r0.w, r0.w, r0.w, -r1.y
mad r1.xyz, cb2[111].xyzx, r0.wwww, r1.xzwx  // r1.y <- color.y; r1.z <- color.z

#line 991
mul r1.xyz, r1.xyzx, cb2[116].xxxx  // r1.x <- streams.envLightDiffuseColor_id47.x; r1.y <- streams.envLightDiffuseColor_id47.y; r1.z <- streams.envLightDiffuseColor_id47.z

#line 993
dp3 r4.x, r3.xyzx, cb2[112].xyzx  // r4.x <- sampleDirection.x
dp3 r4.y, r3.xyzx, cb2[113].xyzx  // r4.y <- sampleDirection.y
dp3 r0.w, r3.xyzx, cb2[114].xyzx  // r0.w <- sampleDirection.z

#line 994
mov r4.z, -r0.w  // r4.z <- sampleDirection.z

#line 750
sample_l_indexable(texturecube)(float,float,float,float) r3.xyz, r4.xyzx, t7.xyzw, s0, cb2[111].w  // r3.x <- <Compute_id332 return value>.x; r3.y <- <Compute_id332 return value>.y; r3.z <- <Compute_id332 return value>.z

#line 995
mul r3.xyz, r3.xyzx, cb2[116].xxxx  // r3.x <- streams.envLightSpecularColor_id48.x; r3.y <- streams.envLightSpecularColor_id48.y; r3.z <- streams.envLightSpecularColor_id48.z

#line 1373
mad r1.xyz, r5.xyzx, r1.xyzx, r2.xyzx  // r1.x <- environmentLightingContribution.x; r1.y <- environmentLightingContribution.y; r1.z <- environmentLightingContribution.z

#line 1377
mad r0.xyz, r0.xyzx, r3.xyzx, r1.xyzx  // r0.x <- environmentLightingContribution.x; r0.y <- environmentLightingContribution.y; r0.z <- environmentLightingContribution.z

#line 1392
mad o0.xyz, r10.xyzx, l(3.141593, 3.141593, 3.141593, 0.000000), r0.xyzx

#line 1499
utof o1.xyzw, cb0[26].xxxx

#line 1567
mov o0.w, cb1[0].w
ret 
// Approximately 568 instruction slots used
***************************
*************************/
const static int TMaxLightCount_id87 = 1;
const static int TCascadeCountBase_id151 = 4;
const static int TLightCountBase_id152 = 1;
const static int TCascadeCount_id159 = 4;
const static int TLightCount_id160 = 1;
const static bool TBlendCascades_id161 = true;
const static bool TDepthRangeAuto_id162 = true;
const static bool TCascadeDebug_id163 = false;
const static bool TComputeTransmittance_id164 = false;
const static int TFilterSize_id166 = 7;
const static int TMaxLightCount_id183 = 32;
const static int TMaxLightCount_id186 = 8;
const static int TOrder_id190 = 3;
const static int TOrder_id192 = 3;
const static bool TInvert_id224 = true;
const static float Value_id220 = 1;
const static bool TIsEnergyConservative_id230 = false;
static const float PI_id232 = 3.14159265358979323846;
struct PS_STREAMS 
{
    float4 ScreenPosition_id167;
    float3 normalWS_id19;
    float4 PositionWS_id22;
    float DepthVS_id23;
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
    float4 Input_0_id211;
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
    uint2 lightData_id173;
    int lightIndex_id174;
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
    float DepthVS_id23 : DEPTH_VS;
    float3 normalWS_id19 : NORMALWS;
    float4 ScreenPosition_id167 : SCREENPOSITION_ID167_SEM;
    bool IsFrontFace_id1 : SV_IsFrontFace;
};
struct VS_STREAMS 
{
    float4 Position_id21;
    float3 meshNormal_id16;
    float4 PositionH_id24;
    float3 meshNormalWS_id17;
    float4 PositionWS_id22;
    float4 ShadingPosition_id0;
    float DepthVS_id23;
    float3 normalWS_id19;
    float4 ScreenPosition_id167;
};
struct VS_OUTPUT 
{
    float4 PositionWS_id22 : POSITION_WS;
    float4 ShadingPosition_id0 : SV_Position;
    float DepthVS_id23 : DEPTH_VS;
    float3 normalWS_id19 : NORMALWS;
    float4 ScreenPosition_id167 : SCREENPOSITION_ID167_SEM;
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
    float4 _padding_PerDraw_Default;
    int LightCount_id182;
    PointLightData Lights_id184[TMaxLightCount_id183];
    int LightCount_id185;
    SpotLightData Lights_id187[TMaxLightCount_id186];
    float4 _padding_PerDraw_Lighting;
};
cbuffer PerMaterial 
{
    float4 InputValue_id212;
    float constantFloat_id226;
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
    float NearClipPlane_id168 = 1.0f;
    float FarClipPlane_id169 = 100.0f;
    float2 ZProjection_id170;
    float2 ViewSize_id171;
    float AspectRatio_id172;
    float4 _padding_PerView_Default;
    int LightCount_id86;
    DirectionalLightData Lights_id88[TMaxLightCount_id87];
    float2 ShadowMapTextureSize_id90;
    float2 ShadowMapTextureTexelSize_id91;
    float4x4 WorldToShadowCascadeUV_id153[TCascadeCountBase_id151 * TLightCountBase_id152];
    float4x4 InverseWorldToShadowCascadeUV_id154[TCascadeCountBase_id151 * TLightCountBase_id152];
    float4x4 ViewMatrices_id155[TCascadeCountBase_id151 * TLightCountBase_id152];
    float2 DepthRanges_id156[TCascadeCountBase_id151 * TLightCountBase_id152];
    float DepthBiases_id157[TLightCountBase_id152];
    float OffsetScales_id158[TLightCountBase_id152];
    float CascadeDepthSplits_id165[TCascadeCount_id159 * TLightCount_id160];
    float ClusterDepthScale_id177;
    float ClusterDepthBias_id178;
    float2 ClusterStride_id179;
    float3 AmbientLight_id188;
    float3 SphericalColors_id193[TOrder_id192 * TOrder_id192];
    float MipCount_id194;
    float4x4 SkyMatrix_id196;
    float Intensity_id197;
    float3 SphericalColors_id204[TOrder_id192 * TOrder_id192];
    float MipCount_id205;
    float4x4 SkyMatrix_id207;
    float Intensity_id208;
    float4 _padding_PerView_Lighting;
};
cbuffer Globals 
{
    float2 Texture0TexelSize_id93;
    float2 Texture1TexelSize_id95;
    float2 Texture2TexelSize_id97;
    float2 Texture3TexelSize_id99;
    float2 Texture4TexelSize_id101;
    float2 Texture5TexelSize_id103;
    float2 Texture6TexelSize_id105;
    float2 Texture7TexelSize_id107;
    float2 Texture8TexelSize_id109;
    float2 Texture9TexelSize_id111;
};
Texture2D Texture0_id92;
Texture2D Texture1_id94;
Texture2D Texture2_id96;
Texture2D Texture3_id98;
Texture2D Texture4_id100;
Texture2D Texture5_id102;
Texture2D Texture6_id104;
Texture2D Texture7_id106;
Texture2D Texture8_id108;
Texture2D Texture9_id110;
TextureCube TextureCube0_id112;
TextureCube TextureCube1_id113;
TextureCube TextureCube2_id114;
TextureCube TextureCube3_id115;
Texture3D Texture3D0_id116;
Texture3D Texture3D1_id117;
Texture3D Texture3D2_id118;
Texture3D Texture3D3_id119;
SamplerState Sampler_id120;
SamplerState PointSampler_id121 
{
    Filter = MIN_MAG_MIP_POINT;
};
SamplerState LinearSampler_id122 
{
    Filter = MIN_MAG_MIP_LINEAR;
};
SamplerState LinearBorderSampler_id123 
{
    Filter = MIN_MAG_MIP_LINEAR;
    AddressU = Border;
    AddressV = Border;
};
SamplerComparisonState LinearClampCompareLessEqualSampler_id124 
{
    Filter = COMPARISON_MIN_MAG_LINEAR_MIP_POINT;
    AddressU = Clamp;
    AddressV = Clamp;
    ComparisonFunc = LessEqual;
};
SamplerState AnisotropicSampler_id125 
{
    Filter = ANISOTROPIC;
};
SamplerState AnisotropicRepeatSampler_id126 
{
    Filter = ANISOTROPIC;
    AddressU = Wrap;
    AddressV = Wrap;
    MaxAnisotropy = 16;
};
SamplerState PointRepeatSampler_id127 
{
    Filter = MIN_MAG_MIP_POINT;
    AddressU = Wrap;
    AddressV = Wrap;
};
SamplerState LinearRepeatSampler_id128 
{
    Filter = MIN_MAG_MIP_LINEAR;
    AddressU = Wrap;
    AddressV = Wrap;
};
SamplerState RepeatSampler_id129 
{
    AddressU = Wrap;
    AddressV = Wrap;
};
SamplerState Sampler0_id130;
SamplerState Sampler1_id131;
SamplerState Sampler2_id132;
SamplerState Sampler3_id133;
SamplerState Sampler4_id134;
SamplerState Sampler5_id135;
SamplerState Sampler6_id136;
SamplerState Sampler7_id137;
SamplerState Sampler8_id138;
SamplerState Sampler9_id139;
Texture2D EnvironmentLightingDFG_LUT_id233;
Texture2D ShadowMapTexture_id89;
Texture3D<uint2> LightClusters_id175;
Buffer<uint> LightIndices_id176;
Buffer<float4> PointLights_id180;
Buffer<float4> SpotLights_id181;
TextureCube CubeMap_id195;
TextureCube CubeMap_id206;
float4 Project_id61(float4 vec, float4x4 mat)
{
    float4 vecProjected = mul(vec, mat);
    vecProjected.xyz /= vecProjected.w;
    return vecProjected;
}
float SmoothDistanceAttenuation_id115(float squaredDistance, float lightInvSquareRadius)
{
    float factor = squaredDistance * lightInvSquareRadius;
    float smoothFactor = saturate(1.0f - factor * factor);
    return smoothFactor * smoothFactor;
}
float SmoothDistanceAttenuation_id105(float squaredDistance, float lightInvSquareRadius)
{
    float factor = squaredDistance * lightInvSquareRadius;
    float smoothFactor = saturate(1.0f - factor * factor);
    return smoothFactor * smoothFactor;
}
float SmoothDistanceAttenuation_id94(float squaredDistance, float lightInvSquareRadius)
{
    float factor = squaredDistance * lightInvSquareRadius;
    float smoothFactor = saturate(1.0f - factor * factor);
    return smoothFactor * smoothFactor;
}
float SmoothDistanceAttenuation_id83(float squaredDistance, float lightInvSquareRadius)
{
    float factor = squaredDistance * lightInvSquareRadius;
    float smoothFactor = saturate(1.0f - factor * factor);
    return smoothFactor * smoothFactor;
}
float Get3x3FilterKernel_id71(float2 base_uv, float2 st, out float3 kernel[4])
{
    float2 uvW0 = (3 - 2 * st);
    float2 uvW1 = (1 + 2 * st);
    float2 uv0 = (2 - st) / uvW0 - 1;
    float2 uv1 = st / uvW1 + 1;
    kernel[0] = float3(base_uv + uv0 * ShadowMapTextureTexelSize_id91, uvW0.x * uvW0.y);
    kernel[1] = float3(base_uv + float2(uv1.x, uv0.y) * ShadowMapTextureTexelSize_id91, uvW1.x * uvW0.y);
    kernel[2] = float3(base_uv + float2(uv0.x, uv1.y) * ShadowMapTextureTexelSize_id91, uvW0.x * uvW1.y);
    kernel[3] = float3(base_uv + uv1 * ShadowMapTextureTexelSize_id91, uvW1.x * uvW1.y);
    return 16.0;
}
float Get5x5FilterKernel_id70(float2 base_uv, float2 st, out float3 kernel[9])
{
    float2 uvW0 = (4 - 3 * st);
    float2 uvW1 = 7;
    float2 uvW2 = (1 + 3 * st);
    float2 uv0 = (3 - 2 * st) / uvW0 - 2;
    float2 uv1 = (3 + st) / uvW1;
    float2 uv2 = st / uvW2 + 2;
    kernel[0] = float3(base_uv + uv0 * ShadowMapTextureTexelSize_id91, uvW0.x * uvW0.y);
    kernel[1] = float3(base_uv + float2(uv1.x, uv0.y) * ShadowMapTextureTexelSize_id91, uvW1.x * uvW0.y);
    kernel[2] = float3(base_uv + float2(uv2.x, uv0.y) * ShadowMapTextureTexelSize_id91, uvW2.x * uvW0.y);
    kernel[3] = float3(base_uv + float2(uv0.x, uv1.y) * ShadowMapTextureTexelSize_id91, uvW0.x * uvW1.y);
    kernel[4] = float3(base_uv + uv1 * ShadowMapTextureTexelSize_id91, uvW1.x * uvW1.y);
    kernel[5] = float3(base_uv + float2(uv2.x, uv1.y) * ShadowMapTextureTexelSize_id91, uvW2.x * uvW1.y);
    kernel[6] = float3(base_uv + float2(uv0.x, uv2.y) * ShadowMapTextureTexelSize_id91, uvW0.x * uvW2.y);
    kernel[7] = float3(base_uv + float2(uv1.x, uv2.y) * ShadowMapTextureTexelSize_id91, uvW1.x * uvW2.y);
    kernel[8] = float3(base_uv + uv2 * ShadowMapTextureTexelSize_id91, uvW2.x * uvW2.y);
    return 144.0;
}
float SampleThickness_id72(float3 shadowSpaceCoordinate, float3 pixelPositionWS, float2 depthRanges, float4x4 inverseWorldToShadowCascadeUV, bool isOrthographic)
{
    const float shadowMapDepth = ShadowMapTexture_id89.SampleLevel(LinearBorderSampler_id123, shadowSpaceCoordinate.xy, 0).r;
    float thickness;
    if (isOrthographic)
    {
        thickness = abs(shadowMapDepth - shadowSpaceCoordinate.z) * depthRanges.y;
    }
    else
    {
        float4 shadowmapPositionWorldSpace = Project_id61(float4(shadowSpaceCoordinate.xy, shadowMapDepth, 1.0), inverseWorldToShadowCascadeUV);
        thickness = distance(shadowmapPositionWorldSpace.xyz, pixelPositionWS.xyz);
    }
    return (thickness);
}
float Get7x7FilterKernel_id68(float2 base_uv, float2 st, out float3 kernel[16])
{
    float2 uvW0 = (5 * st - 6);
    float2 uvW1 = (11 * st - 28);
    float2 uvW2 = -(11 * st + 17);
    float2 uvW3 = -(5 * st + 1);
    float2 uv0 = (4 * st - 5) / uvW0 - 3;
    float2 uv1 = (4 * st - 16) / uvW1 - 1;
    float2 uv2 = -(7 * st + 5) / uvW2 + 1;
    float2 uv3 = -st / uvW3 + 3;
    kernel[0] = float3(base_uv + uv0 * ShadowMapTextureTexelSize_id91, uvW0.x * uvW0.y);
    kernel[1] = float3(base_uv + float2(uv1.x, uv0.y) * ShadowMapTextureTexelSize_id91, uvW1.x * uvW0.y);
    kernel[2] = float3(base_uv + float2(uv2.x, uv0.y) * ShadowMapTextureTexelSize_id91, uvW2.x * uvW0.y);
    kernel[3] = float3(base_uv + float2(uv3.x, uv0.y) * ShadowMapTextureTexelSize_id91, uvW3.x * uvW0.y);
    kernel[4] = float3(base_uv + float2(uv0.x, uv1.y) * ShadowMapTextureTexelSize_id91, uvW0.x * uvW1.y);
    kernel[5] = float3(base_uv + uv1 * ShadowMapTextureTexelSize_id91, uvW1.x * uvW1.y);
    kernel[6] = float3(base_uv + float2(uv2.x, uv1.y) * ShadowMapTextureTexelSize_id91, uvW2.x * uvW1.y);
    kernel[7] = float3(base_uv + float2(uv3.x, uv1.y) * ShadowMapTextureTexelSize_id91, uvW3.x * uvW1.y);
    kernel[8] = float3(base_uv + float2(uv0.x, uv2.y) * ShadowMapTextureTexelSize_id91, uvW0.x * uvW2.y);
    kernel[9] = float3(base_uv + float2(uv1.x, uv2.y) * ShadowMapTextureTexelSize_id91, uvW1.x * uvW2.y);
    kernel[10] = float3(base_uv + uv2 * ShadowMapTextureTexelSize_id91, uvW2.x * uvW2.y);
    kernel[11] = float3(base_uv + float2(uv3.x, uv2.y) * ShadowMapTextureTexelSize_id91, uvW3.x * uvW2.y);
    kernel[12] = float3(base_uv + float2(uv0.x, uv3.y) * ShadowMapTextureTexelSize_id91, uvW0.x * uvW3.y);
    kernel[13] = float3(base_uv + float2(uv1.x, uv3.y) * ShadowMapTextureTexelSize_id91, uvW1.x * uvW3.y);
    kernel[14] = float3(base_uv + float2(uv2.x, uv3.y) * ShadowMapTextureTexelSize_id91, uvW2.x * uvW3.y);
    kernel[15] = float3(base_uv + uv3 * ShadowMapTextureTexelSize_id91, uvW3.x * uvW3.y);
    return 2704.0;
}
float GetAngularAttenuation_id117(float3 lightVector, float3 lightDirection, float lightAngleScale, float lightAngleOffset)
{
    float cd = dot(lightDirection, lightVector);
    float attenuation = saturate(cd * lightAngleScale + lightAngleOffset);
    attenuation *= attenuation;
    return attenuation;
}
float GetDistanceAttenuation_id116(float lightVectorLength, float lightInvSquareRadius)
{
    float d2 = lightVectorLength * lightVectorLength;
    float attenuation = 1.0 / (max(d2, 0.01 * 0.01));
    attenuation *= SmoothDistanceAttenuation_id115(d2, lightInvSquareRadius);
    return attenuation;
}
float GetDistanceAttenuation_id107(float lightVectorLength, float lightInvSquareRadius)
{
    float d2 = lightVectorLength * lightVectorLength;
    float attenuation = 1.0 / (max(d2, 0.01 * 0.01));
    attenuation *= SmoothDistanceAttenuation_id105(d2, lightInvSquareRadius);
    return attenuation;
}
float GetAngularAttenuation_id96(float3 lightVector, float3 lightDirection, float lightAngleScale, float lightAngleOffset)
{
    float cd = dot(lightDirection, lightVector);
    float attenuation = saturate(cd * lightAngleScale + lightAngleOffset);
    attenuation *= attenuation;
    return attenuation;
}
float GetDistanceAttenuation_id95(float lightVectorLength, float lightInvSquareRadius)
{
    float d2 = lightVectorLength * lightVectorLength;
    float attenuation = 1.0 / (max(d2, 0.01 * 0.01));
    attenuation *= SmoothDistanceAttenuation_id94(d2, lightInvSquareRadius);
    return attenuation;
}
float GetDistanceAttenuation_id85(float lightVectorLength, float lightInvSquareRadius)
{
    float d2 = lightVectorLength * lightVectorLength;
    float attenuation = 1.0 / (max(d2, 0.01 * 0.01));
    attenuation *= SmoothDistanceAttenuation_id83(d2, lightInvSquareRadius);
    return attenuation;
}
float SampleAndFilter_id76(float3 adjustedPixelPositionWS, float3 adjustedPixelPositionShadowSpace, float2 depthRanges, float4x4 inverseWorldToShadowCascadeUV, bool isOrthographic, bool isDualParaboloid = false)
{
    float2 uv = adjustedPixelPositionShadowSpace.xy * ShadowMapTextureSize_id90;
    float2 base_uv = floor(uv + 0.5);
    float2 st = uv + 0.5 - base_uv;
    base_uv *= ShadowMapTextureTexelSize_id91;
    float thickness = 0.0;
    float normalizationFactor = 1.0;

    {
        float3 kernel[16];
        normalizationFactor = Get7x7FilterKernel_id68(base_uv, st, kernel);

        [unroll]
        for (int i = 0; i < 16; ++i)
        {
            thickness += kernel[i].z * SampleThickness_id72(float3(kernel[i].xy, adjustedPixelPositionShadowSpace.z), adjustedPixelPositionWS, depthRanges, inverseWorldToShadowCascadeUV, isOrthographic);
        }
    }
    return (thickness / normalizationFactor);
}
void CalculateAdjustedShadowSpacePixelPosition_id75(float filterRadiusInPixels, float3 pixelPositionWS, float3 meshNormalWS, float4x4 worldToShadowCascadeUV, float4x4 inverseWorldToShadowCascadeUV, out float3 adjustedPixelPositionWS, out float3 adjustedPixelPositionShadowSpace)
{
    float4 bottomLeftTexelWS = Project_id61(float4(0.0, 0.0, 0.0, 1.0), inverseWorldToShadowCascadeUV);
    const float4 topRightTexelWS = Project_id61(float4(ShadowMapTextureTexelSize_id91.xy * filterRadiusInPixels, 0.0, 1.0), inverseWorldToShadowCascadeUV);
    const float texelDiagonalLength = distance(topRightTexelWS.xyz, bottomLeftTexelWS.xyz);
    const float3 positionOffsetWS = meshNormalWS * texelDiagonalLength;
    adjustedPixelPositionWS = pixelPositionWS - positionOffsetWS;
    const float4 shadowMapCoordinate = Project_id61(float4(adjustedPixelPositionWS, 1.0), worldToShadowCascadeUV);
    adjustedPixelPositionShadowSpace = shadowMapCoordinate.xyz;
}
void CalculateAdjustedShadowSpacePixelPositionPerspective_id74(float filterRadiusInPixels, float3 pixelPositionWS, float3 meshNormalWS, float4x4 worldToShadowCascadeUV, float4x4 inverseWorldToShadowCascadeUV, out float3 adjustedPixelPositionWS, out float3 adjustedPixelPositionShadowSpace)
{
    const float4 shadowMapCoordinate = Project_id61(float4(pixelPositionWS, 1.0), worldToShadowCascadeUV);
    const float4 topRightTexelWS = Project_id61(float4(shadowMapCoordinate.xy + ShadowMapTextureTexelSize_id91.xy * filterRadiusInPixels, shadowMapCoordinate.z, 1.0), inverseWorldToShadowCascadeUV);
    const float texelDiagonalLength = distance(topRightTexelWS.xyz, pixelPositionWS);
    const float3 positionOffsetWS = meshNormalWS * texelDiagonalLength;
    adjustedPixelPositionWS = pixelPositionWS - positionOffsetWS;
    const float4 adjustedShadowMapCoordinate = Project_id61(float4(adjustedPixelPositionWS, 1.0), worldToShadowCascadeUV);
    adjustedPixelPositionShadowSpace = adjustedShadowMapCoordinate.xyz;
}
float GetFilterRadiusInPixels_id73()
{

    {
        return 4.5;
    }
}
float SampleTextureAndCompare_id69(float2 position, float positionDepth)
{
    return ShadowMapTexture_id89.SampleCmpLevelZero(LinearClampCompareLessEqualSampler_id124, position, positionDepth);
}
void CalculatePCFKernelParameters_id67(float2 position, out float2 base_uv, out float2 st)
{
    float2 uv = position * ShadowMapTextureSize_id90;
    base_uv = floor(uv + 0.5);
    st = uv + 0.5 - base_uv;
    base_uv -= 0.5;
    base_uv *= ShadowMapTextureTexelSize_id91;
}
float4 Compute_id351()
{
    return InputValue_id212;
}
float ComputeAttenuation_id118(float3 PositionWS, float3 AngleOffsetAndInvSquareRadius, float3 DirectionWS, float3 position, inout float3 lightVectorNorm)
{
    float3 lightVector = PositionWS - position;
    float lightVectorLength = length(lightVector);
    lightVectorNorm = lightVector / lightVectorLength;
    float3 lightAngleOffsetAndInvSquareRadius = AngleOffsetAndInvSquareRadius;
    float2 lightAngleAndOffset = lightAngleOffsetAndInvSquareRadius.xy;
    float lightInvSquareRadius = lightAngleOffsetAndInvSquareRadius.z;
    float3 lightDirection = -DirectionWS;
    float attenuation = GetDistanceAttenuation_id116(lightVectorLength, lightInvSquareRadius);
    attenuation *= GetAngularAttenuation_id117(lightVectorNorm, lightDirection, lightAngleAndOffset.x, lightAngleAndOffset.y);
    return attenuation;
}
float ComputeAttenuation_id106(PointLightDataInternal light, float3 position, inout float3 lightVectorNorm)
{
    float3 lightVector = light.PositionWS - position;
    float lightVectorLength = length(lightVector);
    lightVectorNorm = lightVector / lightVectorLength;
    float lightInvSquareRadius = light.InvSquareRadius;
    return GetDistanceAttenuation_id107(lightVectorLength, lightInvSquareRadius);
}
float ComputeAttenuation_id97(float3 PositionWS, float3 AngleOffsetAndInvSquareRadius, float3 DirectionWS, float3 position, inout float3 lightVectorNorm)
{
    float3 lightVector = PositionWS - position;
    float lightVectorLength = length(lightVector);
    lightVectorNorm = lightVector / lightVectorLength;
    float3 lightAngleOffsetAndInvSquareRadius = AngleOffsetAndInvSquareRadius;
    float2 lightAngleAndOffset = lightAngleOffsetAndInvSquareRadius.xy;
    float lightInvSquareRadius = lightAngleOffsetAndInvSquareRadius.z;
    float3 lightDirection = -DirectionWS;
    float attenuation = GetDistanceAttenuation_id95(lightVectorLength, lightInvSquareRadius);
    attenuation *= GetAngularAttenuation_id96(lightVectorNorm, lightDirection, lightAngleAndOffset.x, lightAngleAndOffset.y);
    return attenuation;
}
float ComputeAttenuation_id84(PointLightDataInternal light, float3 position, inout float3 lightVectorNorm)
{
    float3 lightVector = light.PositionWS - position;
    float lightVectorLength = length(lightVector);
    lightVectorNorm = lightVector / lightVectorLength;
    float lightInvSquareRadius = light.InvSquareRadius;
    return GetDistanceAttenuation_id85(lightVectorLength, lightInvSquareRadius);
}
float VisibilityhSchlickGGX_id199(float alphaR, float nDotX)
{
    float k = alphaR * 0.5f;
    return nDotX / (nDotX * (1.0f - k) + k);
}
float3 FresnelSchlick_id183(float3 f0, float3 f90, float lOrVDotH)
{
    return f0 + (f90 - f0) * pow((1 - lOrVDotH), 5);
}
float FilterThickness_id63(float3 pixelPositionWS, float3 meshNormalWS, float2 depthRanges, float4x4 worldToShadowCascadeUV, float4x4 inverseWorldToShadowCascadeUV, bool isOrthographic)
{
    float3 adjustedPixelPositionWS;
    float3 adjustedPixelPositionShadowSpace;
    if (isOrthographic)
    {
        CalculateAdjustedShadowSpacePixelPosition_id75(GetFilterRadiusInPixels_id73(), pixelPositionWS, meshNormalWS, worldToShadowCascadeUV, inverseWorldToShadowCascadeUV, adjustedPixelPositionWS, adjustedPixelPositionShadowSpace);
    }
    else
    {
        CalculateAdjustedShadowSpacePixelPositionPerspective_id74(GetFilterRadiusInPixels_id73(), pixelPositionWS, meshNormalWS, worldToShadowCascadeUV, inverseWorldToShadowCascadeUV, adjustedPixelPositionWS, adjustedPixelPositionShadowSpace);
    }
    return SampleAndFilter_id76(adjustedPixelPositionWS, adjustedPixelPositionShadowSpace, depthRanges, inverseWorldToShadowCascadeUV, isOrthographic);
}
float FilterShadow_id62(float2 position, float positionDepth)
{
    float shadow = 0.0f;
    float2 base_uv;
    float2 st;
    CalculatePCFKernelParameters_id67(position, base_uv, st);

    {
        float3 kernel[16];
        float normalizationFactor = Get7x7FilterKernel_id68(base_uv, st, kernel);

        [unroll]
        for (int i = 0; i < 16; ++i)
        {
            shadow += kernel[i].z * SampleTextureAndCompare_id69(kernel[i].xy, positionDepth);
        }
        shadow /= normalizationFactor;
    }
    return shadow;
}
void Compute_id363()
{
}
void Compute_id354(inout PS_STREAMS streams)
{
    streams.Input_0_id211 = Compute_id351();
}
float4 EvaluateSphericalHarmonics_id137(float3 sphericalColors[TOrder_id190 * TOrder_id190], float3 direction)
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
float4 EvaluateSphericalHarmonics_id128(float3 sphericalColors[TOrder_id190 * TOrder_id190], float3 direction)
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
void ProcessLight_id119(inout PS_STREAMS streams, SpotLightDataInternal light)
{
    float3 lightVectorNorm;
    float attenuation = ComputeAttenuation_id118(light.PositionWS, light.AngleOffsetAndInvSquareRadius, light.DirectionWS, streams.PositionWS_id22.xyz, lightVectorNorm);
    streams.lightColor_id43 = light.Color;
    streams.lightAttenuation_id46 = attenuation;
    streams.lightDirectionWS_id42 = lightVectorNorm;
}
void ProcessLight_id108(inout PS_STREAMS streams, PointLightDataInternal light)
{
    float3 lightVectorNorm;
    float attenuation = ComputeAttenuation_id106(light, streams.PositionWS_id22.xyz, lightVectorNorm);
    streams.lightPositionWS_id41 = light.PositionWS;
    streams.lightColor_id43 = light.Color;
    streams.lightAttenuation_id46 = attenuation;
    streams.lightDirectionWS_id42 = lightVectorNorm;
}
void ProcessLight_id98(inout PS_STREAMS streams, SpotLightDataInternal light)
{
    float3 lightVectorNorm;
    float attenuation = ComputeAttenuation_id97(light.PositionWS, light.AngleOffsetAndInvSquareRadius, light.DirectionWS, streams.PositionWS_id22.xyz, lightVectorNorm);
    streams.lightColor_id43 = light.Color;
    streams.lightAttenuation_id46 = attenuation;
    streams.lightDirectionWS_id42 = lightVectorNorm;
}
void ProcessLight_id87(inout PS_STREAMS streams, PointLightDataInternal light)
{
    float3 lightVectorNorm;
    float attenuation = ComputeAttenuation_id84(light, streams.PositionWS_id22.xyz, lightVectorNorm);
    streams.lightPositionWS_id41 = light.PositionWS;
    streams.lightColor_id43 = light.Color;
    streams.lightAttenuation_id46 = attenuation;
    streams.lightDirectionWS_id42 = lightVectorNorm;
}
float NormalDistributionGGX_id213(float alphaR, float nDotH)
{
    float alphaR2 = alphaR * alphaR;
    float d = max(nDotH * nDotH * (alphaR2 - 1) + 1, 0.0001);
    return alphaR2 / (PI_id232 * d * d);
}
float VisibilitySmithSchlickGGX_id201(float alphaR, float nDotL, float nDotV)
{
    return VisibilityhSchlickGGX_id199(alphaR, nDotL) * VisibilityhSchlickGGX_id199(alphaR, nDotV) / (nDotL * nDotV);
}
float3 FresnelSchlick_id189(float3 f0, float lOrVDotH)
{
    return FresnelSchlick_id183(f0, 1.0f, lOrVDotH);
}
float ComputeThicknessFromCascade_id66(float3 pixelPositionWS, float3 meshNormalWS, int cascadeIndex, int lightIndex, bool isOrthographic)
{
    const int arrayIndex = cascadeIndex + lightIndex * TCascadeCountBase_id151;
    return FilterThickness_id63(pixelPositionWS, meshNormalWS, DepthRanges_id156[arrayIndex], WorldToShadowCascadeUV_id153[arrayIndex], InverseWorldToShadowCascadeUV_id154[arrayIndex], isOrthographic);
}
float ComputeShadowFromCascade_id65(float3 shadowPositionWS, int cascadeIndex, int lightIndex)
{
    float4 shadowPosition = mul(float4(shadowPositionWS, 1.0), WorldToShadowCascadeUV_id153[cascadeIndex + lightIndex * TCascadeCountBase_id151]);
    shadowPosition.z -= DepthBiases_id157[lightIndex];
    shadowPosition.xyz /= shadowPosition.w;
    return FilterShadow_id62(shadowPosition.xy, shadowPosition.z);
}
float3 GetShadowPositionOffset_id64(float offsetScale, float nDotL, float3 normal)
{
    float normalOffsetScale = saturate(1.0f - nDotL);
    return 2.0f * ShadowMapTextureTexelSize_id91.x * offsetScale * normalOffsetScale * normal;
}
float Compute_id366()
{
    return Value_id220;
}
void Compute_id365()
{

    {
        Compute_id363();
    }
}
float4 Compute_id357(inout PS_STREAMS streams)
{
    return streams.Input_0_id211;
}
void Compute_id356(inout PS_STREAMS streams)
{

    {
        Compute_id354(streams);
    }
}
float4 Compute_id332(inout PS_STREAMS streams, float3 direction)
{
    float alpha = streams.alphaRoughness_id70;
    float mipLevel = sqrt(alpha) * MipCount_id205;
    return CubeMap_id206.SampleLevel(LinearSampler_id122, direction, mipLevel);
}
float4 Compute_id327(float3 direction)
{
    return EvaluateSphericalHarmonics_id137(SphericalColors_id204, direction);
}
void PrepareEnvironmentLight_id141(inout PS_STREAMS streams)
{
    streams.envLightDiffuseColor_id47 = 0;
    streams.envLightSpecularColor_id48 = 0;
}
float4 Compute_id312(inout PS_STREAMS streams, float3 direction)
{
    float alpha = streams.alphaRoughness_id70;
    float mipLevel = sqrt(alpha) * MipCount_id194;
    return CubeMap_id195.SampleLevel(LinearSampler_id122, direction, mipLevel);
}
float4 Compute_id307(float3 direction)
{
    return EvaluateSphericalHarmonics_id128(SphericalColors_id193, direction);
}
void PrepareEnvironmentLight_id132(inout PS_STREAMS streams)
{
    streams.envLightDiffuseColor_id47 = 0;
    streams.envLightSpecularColor_id48 = 0;
}
float3 Compute_id374(float3 specularColor, float alphaR, float nDotV)
{
    float glossiness = 1.0f - sqrt(alphaR);
    float4 environmentLightingDFG = EnvironmentLightingDFG_LUT_id233.SampleLevel(LinearSampler_id122, float2(glossiness, nDotV), 0);
    return specularColor * environmentLightingDFG.r + environmentLightingDFG.g;
}
void PrepareEnvironmentLight_id123(inout PS_STREAMS streams)
{
    streams.envLightDiffuseColor_id47 = 0;
    streams.envLightSpecularColor_id48 = 0;
}
float3 ComputeSpecularTextureProjection_id114(float3 positionWS, float3 reflectionWS, int lightIndex)
{
    return 1.0f;
}
float3 ComputeTextureProjection_id113(float3 positionWS, int lightIndex)
{
    return 1.0f;
}
float3 ComputeShadow_id112(inout PS_STREAMS streams, float3 position, int lightIndex)
{
    streams.thicknessWS_id85 = 0.0;
    return 1.0f;
}
void PrepareDirectLightCore_id111(inout PS_STREAMS streams, int lightIndex)
{
    SpotLightDataInternal data;
    data.PositionWS = Lights_id187[lightIndex].PositionWS;
    data.DirectionWS = Lights_id187[lightIndex].DirectionWS;
    data.AngleOffsetAndInvSquareRadius = Lights_id187[lightIndex].AngleOffsetAndInvSquareRadius;
    data.Color = Lights_id187[lightIndex].Color;
    ProcessLight_id119(streams, data);
}
float3 ComputeSpecularTextureProjection_id104(float3 positionWS, float3 reflectionWS, int lightIndex)
{
    return 1.0f;
}
float3 ComputeTextureProjection_id103(float3 positionWS, int lightIndex)
{
    return 1.0f;
}
float3 ComputeShadow_id102(inout PS_STREAMS streams, float3 position, int lightIndex)
{
    streams.thicknessWS_id85 = 0.0;
    return 1.0f;
}
void PrepareDirectLightCore_id101(inout PS_STREAMS streams, int lightIndex)
{
    PointLightDataInternal data;
    data.PositionWS = Lights_id184[lightIndex].PositionWS;
    data.InvSquareRadius = Lights_id184[lightIndex].InvSquareRadius;
    data.Color = Lights_id184[lightIndex].Color;
    ProcessLight_id108(streams, data);
}
float3 ComputeSpecularTextureProjection_id93(float3 positionWS, float3 reflectionWS, int lightIndex)
{
    return 1.0f;
}
float3 ComputeTextureProjection_id92(float3 positionWS, int lightIndex)
{
    return 1.0f;
}
float3 ComputeShadow_id91(inout PS_STREAMS streams, float3 position, int lightIndex)
{
    streams.thicknessWS_id85 = 0.0;
    return 1.0f;
}
void PrepareDirectLightCore_id90(inout PS_STREAMS streams, int lightIndexIgnored)
{
    int realLightIndex = LightIndices_id176.Load(streams.lightIndex_id174);
    streams.lightIndex_id174++;
    SpotLightDataInternal spotLight;
    float4 spotLight1 = SpotLights_id181.Load(realLightIndex * 4);
    float4 spotLight2 = SpotLights_id181.Load(realLightIndex * 4 + 1);
    float4 spotLight3 = SpotLights_id181.Load(realLightIndex * 4 + 2);
    float4 spotLight4 = SpotLights_id181.Load(realLightIndex * 4 + 3);
    spotLight.PositionWS = spotLight1.xyz;
    spotLight.DirectionWS = spotLight2.xyz;
    spotLight.AngleOffsetAndInvSquareRadius = spotLight3.xyz;
    spotLight.Color = spotLight4.xyz;
    ProcessLight_id98(streams, spotLight);
}
float3 ComputeSpecularTextureProjection_id82(float3 positionWS, float3 reflectionWS, int lightIndex)
{
    return 1.0f;
}
float3 ComputeTextureProjection_id81(float3 positionWS, int lightIndex)
{
    return 1.0f;
}
float3 ComputeShadow_id80(inout PS_STREAMS streams, float3 position, int lightIndex)
{
    streams.thicknessWS_id85 = 0.0;
    return 1.0f;
}
void PrepareDirectLightCore_id79(inout PS_STREAMS streams, int lightIndexIgnored)
{
    int realLightIndex = LightIndices_id176.Load(streams.lightIndex_id174);
    streams.lightIndex_id174++;
    PointLightDataInternal pointLight;
    float4 pointLight1 = PointLights_id180.Load(realLightIndex * 2);
    float4 pointLight2 = PointLights_id180.Load(realLightIndex * 2 + 1);
    pointLight.PositionWS = pointLight1.xyz;
    pointLight.InvSquareRadius = pointLight1.w;
    pointLight.Color = pointLight2.xyz;
    ProcessLight_id87(streams, pointLight);
}
void PrepareLightData_id86(inout PS_STREAMS streams)
{
    float projectedDepth = streams.ShadingPosition_id0.z;
    float depth = ZProjection_id170.y / (projectedDepth - ZProjection_id170.x);
    float2 texCoord = float2(streams.ScreenPosition_id167.x + 1, 1 - streams.ScreenPosition_id167.y) * 0.5;
    int slice = int(max(log2(depth * ClusterDepthScale_id177 + ClusterDepthBias_id178), 0));
    streams.lightData_id173 = LightClusters_id175.Load(int4(texCoord * ClusterStride_id179, slice, 0));
    streams.lightIndex_id174 = streams.lightData_id173.x;
}
float Compute_id466(inout PS_STREAMS streams)
{
    return NormalDistributionGGX_id213(streams.alphaRoughness_id70, streams.NdotH_id76);
}
float Compute_id436(inout PS_STREAMS streams)
{
    return VisibilitySmithSchlickGGX_id201(streams.alphaRoughness_id70, streams.NdotL_id49, streams.NdotV_id72);
}
float3 Compute_id406(inout PS_STREAMS streams, float3 f0)
{
    return FresnelSchlick_id189(f0, streams.LdotH_id77);
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
    int cascadeIndexBase = lightIndex * TCascadeCount_id159;
    int cascadeIndex = 0;

    [unroll]
    for (int i = 0; i < TCascadeCount_id159 - 1; i++)
    {
        [flatten]
        if (streams.DepthVS_id23 > CascadeDepthSplits_id165[cascadeIndexBase + i])
        {
            cascadeIndex = i + 1;
        }
    }
    float3 shadow = 1.0;
    float tempThickness = 999.0;
    float3 shadowPosition = position.xyz;
    shadowPosition += GetShadowPositionOffset_id64(OffsetScales_id158[lightIndex], streams.NdotL_id49, streams.normalWS_id19);
    if (cascadeIndex < TCascadeCount_id159)
    {
        shadow = ComputeShadowFromCascade_id65(shadowPosition, cascadeIndex, lightIndex);
        float nextSplit = CascadeDepthSplits_id165[cascadeIndexBase + cascadeIndex];
        float splitSize = nextSplit;
        if (cascadeIndex > 0)
        {
            splitSize = nextSplit - CascadeDepthSplits_id165[cascadeIndexBase + cascadeIndex - 1];
        }
        float splitDist = (nextSplit - streams.DepthVS_id23) / splitSize;
        if (splitDist < 0.2)
        {
            float lerpAmt = smoothstep(0.0, 0.2, splitDist);
            if (cascadeIndex == TCascadeCount_id159 - 1)
            {
            }
            else if (TBlendCascades_id161)
            {
                float nextShadow = ComputeShadowFromCascade_id65(shadowPosition, cascadeIndex + 1, lightIndex);
                shadow = lerp(nextShadow, shadow, lerpAmt);
            }
        }
    }
    streams.thicknessWS_id85 = tempThickness;
    return shadow;
}
void PrepareDirectLightCore_id55(inout PS_STREAMS streams, int lightIndex)
{
    streams.lightColor_id43 = Lights_id88[lightIndex].Color;
    streams.lightDirectionWS_id42 = -Lights_id88[lightIndex].DirectionWS;
}
float Compute_id369()
{
    Compute_id365();
    return Compute_id366();
}
float4 Compute_id360(inout PS_STREAMS streams)
{
    Compute_id356(streams);
    return Compute_id357(streams);
}
void ResetStream_id216()
{
}
void AfterLightingAndShading_id523()
{
}
void AfterLightingAndShading_id504()
{
}
void PrepareEnvironmentLight_id350(inout PS_STREAMS streams)
{
    streams.envLightDiffuseColor_id47 = 0;
    streams.envLightSpecularColor_id48 = 0;
}
void PrepareEnvironmentLight_id347(inout PS_STREAMS streams)
{
    PrepareEnvironmentLight_id141(streams);
    float ambientAccessibility = streams.matAmbientOcclusion_id57;
    float3 sampleDirection = mul(streams.normalWS_id19, (float3x3)SkyMatrix_id207);
    sampleDirection = float3(sampleDirection.xy, -sampleDirection.z);
    streams.envLightDiffuseColor_id47 = Compute_id327(sampleDirection).rgb * Intensity_id208 * ambientAccessibility * streams.matDiffuseSpecularAlphaBlend_id65.x;
    sampleDirection = reflect(-streams.viewWS_id68, streams.normalWS_id19);
    sampleDirection = mul(sampleDirection, (float3x3)SkyMatrix_id207);
    sampleDirection = float3(sampleDirection.xy, -sampleDirection.z);
    streams.envLightSpecularColor_id48 = Compute_id332(streams, sampleDirection).rgb * Intensity_id208 * ambientAccessibility * streams.matDiffuseSpecularAlphaBlend_id65.y;
}
void PrepareEnvironmentLight_id342(inout PS_STREAMS streams)
{
    PrepareEnvironmentLight_id132(streams);
    float ambientAccessibility = streams.matAmbientOcclusion_id57;
    float3 sampleDirection = mul(streams.normalWS_id19, (float3x3)SkyMatrix_id196);
    sampleDirection = float3(sampleDirection.xy, -sampleDirection.z);
    streams.envLightDiffuseColor_id47 = Compute_id307(sampleDirection).rgb * Intensity_id197 * ambientAccessibility * streams.matDiffuseSpecularAlphaBlend_id65.x;
    sampleDirection = reflect(-streams.viewWS_id68, streams.normalWS_id19);
    sampleDirection = mul(sampleDirection, (float3x3)SkyMatrix_id196);
    sampleDirection = float3(sampleDirection.xy, -sampleDirection.z);
    streams.envLightSpecularColor_id48 = Compute_id312(streams, sampleDirection).rgb * Intensity_id197 * ambientAccessibility * streams.matDiffuseSpecularAlphaBlend_id65.y;
}
float3 ComputeEnvironmentLightContribution_id553(inout PS_STREAMS streams)
{
    float3 specularColor = streams.matSpecularVisible_id71;
    return Compute_id374(specularColor, streams.alphaRoughness_id70, streams.NdotV_id72) * streams.envLightSpecularColor_id48;
}
float3 ComputeEnvironmentLightContribution_id497(inout PS_STREAMS streams)
{
    float3 diffuseColor = streams.matDiffuseVisible_id69;
    return diffuseColor * streams.envLightDiffuseColor_id47;
}
void PrepareEnvironmentLight_id337(inout PS_STREAMS streams)
{
    PrepareEnvironmentLight_id123(streams);
    float3 lightColor = AmbientLight_id188 * streams.matAmbientOcclusion_id57;
    streams.envLightDiffuseColor_id47 = lightColor;
    streams.envLightSpecularColor_id48 = lightColor;
}
void PrepareDirectLight_id288(inout PS_STREAMS streams, int lightIndex)
{
    PrepareDirectLightCore_id111(streams, lightIndex);
    streams.NdotL_id49 = max(dot(streams.normalWS_id19, streams.lightDirectionWS_id42), 0.0001f);
    streams.shadowColor_id84 = ComputeShadow_id112(streams, streams.PositionWS_id22.xyz, lightIndex);
    streams.lightColorNdotL_id44 = streams.lightColor_id43 * streams.lightAttenuation_id46 * streams.shadowColor_id84 * streams.NdotL_id49 * streams.lightDirectAmbientOcclusion_id50;
    streams.lightSpecularColorNdotL_id45 = streams.lightColorNdotL_id44;
    streams.lightColorNdotL_id44 *= ComputeTextureProjection_id113(streams.PositionWS_id22.xyz, lightIndex);
    float3 reflectionVectorWS = reflect(-streams.viewWS_id68, streams.normalWS_id19);
    streams.lightSpecularColorNdotL_id45 *= ComputeSpecularTextureProjection_id114(streams.PositionWS_id22.xyz, reflectionVectorWS, lightIndex);
}
int GetLightCount_id290()
{
    return LightCount_id185;
}
int GetMaxLightCount_id291()
{
    return TMaxLightCount_id186;
}
void PrepareDirectLights_id286()
{
}
void PrepareDirectLight_id275(inout PS_STREAMS streams, int lightIndex)
{
    PrepareDirectLightCore_id101(streams, lightIndex);
    streams.NdotL_id49 = max(dot(streams.normalWS_id19, streams.lightDirectionWS_id42), 0.0001f);
    streams.shadowColor_id84 = ComputeShadow_id102(streams, streams.PositionWS_id22.xyz, lightIndex);
    streams.lightColorNdotL_id44 = streams.lightColor_id43 * streams.lightAttenuation_id46 * streams.shadowColor_id84 * streams.NdotL_id49 * streams.lightDirectAmbientOcclusion_id50;
    streams.lightSpecularColorNdotL_id45 = streams.lightColorNdotL_id44;
    streams.lightColorNdotL_id44 *= ComputeTextureProjection_id103(streams.PositionWS_id22.xyz, lightIndex);
    float3 reflectionVectorWS = reflect(-streams.viewWS_id68, streams.normalWS_id19);
    streams.lightSpecularColorNdotL_id45 *= ComputeSpecularTextureProjection_id104(streams.PositionWS_id22.xyz, reflectionVectorWS, lightIndex);
}
int GetLightCount_id277()
{
    return LightCount_id182;
}
int GetMaxLightCount_id279()
{
    return TMaxLightCount_id183;
}
void PrepareDirectLights_id273()
{
}
void PrepareDirectLight_id263(inout PS_STREAMS streams, int lightIndex)
{
    PrepareDirectLightCore_id90(streams, lightIndex);
    streams.NdotL_id49 = max(dot(streams.normalWS_id19, streams.lightDirectionWS_id42), 0.0001f);
    streams.shadowColor_id84 = ComputeShadow_id91(streams, streams.PositionWS_id22.xyz, lightIndex);
    streams.lightColorNdotL_id44 = streams.lightColor_id43 * streams.lightAttenuation_id46 * streams.shadowColor_id84 * streams.NdotL_id49 * streams.lightDirectAmbientOcclusion_id50;
    streams.lightSpecularColorNdotL_id45 = streams.lightColorNdotL_id44;
    streams.lightColorNdotL_id44 *= ComputeTextureProjection_id92(streams.PositionWS_id22.xyz, lightIndex);
    float3 reflectionVectorWS = reflect(-streams.viewWS_id68, streams.normalWS_id19);
    streams.lightSpecularColorNdotL_id45 *= ComputeSpecularTextureProjection_id93(streams.PositionWS_id22.xyz, reflectionVectorWS, lightIndex);
}
int GetLightCount_id267(inout PS_STREAMS streams)
{
    return streams.lightData_id173.y >> 16;
}
int GetMaxLightCount_id266(inout PS_STREAMS streams)
{
    return streams.lightData_id173.y >> 16;
}
void PrepareDirectLights_id261()
{
}
void PrepareDirectLight_id250(inout PS_STREAMS streams, int lightIndex)
{
    PrepareDirectLightCore_id79(streams, lightIndex);
    streams.NdotL_id49 = max(dot(streams.normalWS_id19, streams.lightDirectionWS_id42), 0.0001f);
    streams.shadowColor_id84 = ComputeShadow_id80(streams, streams.PositionWS_id22.xyz, lightIndex);
    streams.lightColorNdotL_id44 = streams.lightColor_id43 * streams.lightAttenuation_id46 * streams.shadowColor_id84 * streams.NdotL_id49 * streams.lightDirectAmbientOcclusion_id50;
    streams.lightSpecularColorNdotL_id45 = streams.lightColorNdotL_id44;
    streams.lightColorNdotL_id44 *= ComputeTextureProjection_id81(streams.PositionWS_id22.xyz, lightIndex);
    float3 reflectionVectorWS = reflect(-streams.viewWS_id68, streams.normalWS_id19);
    streams.lightSpecularColorNdotL_id45 *= ComputeSpecularTextureProjection_id82(streams.PositionWS_id22.xyz, reflectionVectorWS, lightIndex);
}
int GetLightCount_id255(inout PS_STREAMS streams)
{
    return streams.lightData_id173.y & 0xFFFF;
}
int GetMaxLightCount_id254(inout PS_STREAMS streams)
{
    return streams.lightData_id173.y & 0xFFFF;
}
void PrepareDirectLights_id253(inout PS_STREAMS streams)
{
    PrepareLightData_id86(streams);
}
float3 ComputeDirectLightContribution_id552(inout PS_STREAMS streams)
{
    float3 specularColor = streams.matSpecularVisible_id71;
    float3 fresnel = Compute_id406(streams, specularColor);
    float geometricShadowing = Compute_id436(streams);
    float normalDistribution = Compute_id466(streams);
    float3 reflected = fresnel * geometricShadowing * normalDistribution / 4;
    return reflected * streams.lightSpecularColorNdotL_id45 * streams.matDiffuseSpecularAlphaBlend_id65.y;
}
float3 ComputeDirectLightContribution_id496(inout PS_STREAMS streams)
{
    float3 diffuseColor = streams.matDiffuseVisible_id69;
    return diffuseColor / PI_id232 * streams.lightColorNdotL_id44 * streams.matDiffuseSpecularAlphaBlend_id65.x;
}
void PrepareMaterialPerDirectLight_id30(inout PS_STREAMS streams)
{
    streams.H_id75 = normalize(streams.viewWS_id68 + streams.lightDirectionWS_id42);
    streams.NdotH_id76 = saturate(dot(streams.normalWS_id19, streams.H_id75));
    streams.LdotH_id77 = saturate(dot(streams.lightDirectionWS_id42, streams.H_id75));
    streams.VdotH_id78 = streams.LdotH_id77;
}
void PrepareDirectLight_id226(inout PS_STREAMS streams, int lightIndex)
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
int GetLightCount_id228()
{
    return LightCount_id86;
}
int GetMaxLightCount_id229()
{
    return TMaxLightCount_id87;
}
void PrepareDirectLights_id224()
{
}
void PrepareForLightingAndShading_id520()
{
}
void PrepareForLightingAndShading_id501()
{
}
void PrepareMaterialForLightingAndShading_id215(inout PS_STREAMS streams)
{
    streams.lightDirectAmbientOcclusion_id50 = lerp(1.0, streams.matAmbientOcclusion_id57, streams.matAmbientOcclusionDirectLightingFactor_id58);
    streams.matDiffuseVisible_id69 = streams.matDiffuse_id53.rgb * lerp(1.0f, streams.matCavity_id59, streams.matCavityDiffuse_id60) * streams.matDiffuseSpecularAlphaBlend_id65.r * streams.matAlphaBlendColor_id66;
    streams.matSpecularVisible_id71 = streams.matSpecular_id55.rgb * streams.matSpecularIntensity_id56 * lerp(1.0f, streams.matCavity_id59, streams.matCavitySpecular_id61) * streams.matDiffuseSpecularAlphaBlend_id65.g * streams.matAlphaBlendColor_id66;
    streams.NdotV_id72 = max(dot(streams.normalWS_id19, streams.viewWS_id68), 0.0001f);
    float roughness = 1.0f - streams.matGlossiness_id54;
    streams.alphaRoughness_id70 = max(roughness * roughness, 0.001);
}
void ResetLightStream_id214(inout PS_STREAMS streams)
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
float4 Compute_id372()
{
    return float4(constantFloat_id226, constantFloat_id226, constantFloat_id226, constantFloat_id226);
}
float4 Compute_id371()
{
    float x = Compute_id369();
    return float4(x, x, x, x);
}
float4 Compute_id362(inout PS_STREAMS streams)
{
    return Compute_id360(streams);
}
void ResetStream_id217(inout PS_STREAMS streams)
{
    ResetStream_id216();
    streams.matBlend_id40 = 0.0f;
}
void Compute_id584(inout PS_STREAMS streams)
{
    UpdateNormalFromTangentSpace_id23(streams.matNormal_id51);
    if (!streams.IsFrontFace_id1)
        streams.normalWS_id19 = -streams.normalWS_id19;
    ResetLightStream_id214(streams);
    PrepareMaterialForLightingAndShading_id215(streams);

    {
        PrepareForLightingAndShading_id501();
    }

    {
        PrepareForLightingAndShading_id520();
    }
    float3 directLightingContribution = 0;

    {
        PrepareDirectLights_id224();
        const int maxLightCount = GetMaxLightCount_id229();
        int count = GetLightCount_id228();

        for (int i = 0; i < maxLightCount; i++)
        {
            if (i >= count)
            {
                break;
            }
            PrepareDirectLight_id226(streams, i);
            PrepareMaterialPerDirectLight_id30(streams);

            {
                directLightingContribution += ComputeDirectLightContribution_id496(streams);
            }

            {
                directLightingContribution += ComputeDirectLightContribution_id552(streams);
            }
        }
    }

    {
        PrepareDirectLights_id253(streams);
        const int maxLightCount = GetMaxLightCount_id254(streams);
        int count = GetLightCount_id255(streams);

        for (int i = 0; i < maxLightCount; i++)
        {
            if (i >= count)
            {
                break;
            }
            PrepareDirectLight_id250(streams, i);
            PrepareMaterialPerDirectLight_id30(streams);

            {
                directLightingContribution += ComputeDirectLightContribution_id496(streams);
            }

            {
                directLightingContribution += ComputeDirectLightContribution_id552(streams);
            }
        }
    }

    {
        PrepareDirectLights_id261();
        const int maxLightCount = GetMaxLightCount_id266(streams);
        int count = GetLightCount_id267(streams);

        for (int i = 0; i < maxLightCount; i++)
        {
            if (i >= count)
            {
                break;
            }
            PrepareDirectLight_id263(streams, i);
            PrepareMaterialPerDirectLight_id30(streams);

            {
                directLightingContribution += ComputeDirectLightContribution_id496(streams);
            }

            {
                directLightingContribution += ComputeDirectLightContribution_id552(streams);
            }
        }
    }

    {
        PrepareDirectLights_id273();
        const int maxLightCount = GetMaxLightCount_id279();
        int count = GetLightCount_id277();

        for (int i = 0; i < maxLightCount; i++)
        {
            if (i >= count)
            {
                break;
            }
            PrepareDirectLight_id275(streams, i);
            PrepareMaterialPerDirectLight_id30(streams);

            {
                directLightingContribution += ComputeDirectLightContribution_id496(streams);
            }

            {
                directLightingContribution += ComputeDirectLightContribution_id552(streams);
            }
        }
    }

    {
        PrepareDirectLights_id286();
        const int maxLightCount = GetMaxLightCount_id291();
        int count = GetLightCount_id290();

        for (int i = 0; i < maxLightCount; i++)
        {
            if (i >= count)
            {
                break;
            }
            PrepareDirectLight_id288(streams, i);
            PrepareMaterialPerDirectLight_id30(streams);

            {
                directLightingContribution += ComputeDirectLightContribution_id496(streams);
            }

            {
                directLightingContribution += ComputeDirectLightContribution_id552(streams);
            }
        }
    }
    float3 environmentLightingContribution = 0;

    {
        PrepareEnvironmentLight_id337(streams);

        {
            environmentLightingContribution += ComputeEnvironmentLightContribution_id497(streams);
        }

        {
            environmentLightingContribution += ComputeEnvironmentLightContribution_id553(streams);
        }
    }

    {
        PrepareEnvironmentLight_id342(streams);

        {
            environmentLightingContribution += ComputeEnvironmentLightContribution_id497(streams);
        }

        {
            environmentLightingContribution += ComputeEnvironmentLightContribution_id553(streams);
        }
    }

    {
        PrepareEnvironmentLight_id347(streams);

        {
            environmentLightingContribution += ComputeEnvironmentLightContribution_id497(streams);
        }

        {
            environmentLightingContribution += ComputeEnvironmentLightContribution_id553(streams);
        }
    }

    {
        PrepareEnvironmentLight_id350(streams);

        {
            environmentLightingContribution += ComputeEnvironmentLightContribution_id497(streams);
        }

        {
            environmentLightingContribution += ComputeEnvironmentLightContribution_id553(streams);
        }
    }
    streams.shadingColor_id73 += directLightingContribution * PI_id232 + environmentLightingContribution;
    streams.shadingColorAlpha_id74 = streams.matDiffuse_id53.a;

    {
        AfterLightingAndShading_id504();
    }

    {
        AfterLightingAndShading_id523();
    }
}
void Compute_id568(inout PS_STREAMS streams)
{
    float metalness = Compute_id372().r;
    streams.matSpecular_id55 = lerp(0.02, streams.matDiffuse_id53.rgb, metalness);
    streams.matDiffuse_id53.rgb = lerp(streams.matDiffuse_id53.rgb, 0, metalness);
}
void Compute_id563(inout PS_STREAMS streams)
{
    float glossiness = Compute_id371().r;

    {
        glossiness = 1.0 - glossiness;
    }
    streams.matGlossiness_id54 = glossiness;
}
void Compute_id558(inout PS_STREAMS streams)
{
    float4 colorBase = Compute_id362(streams);
    streams.matDiffuse_id53 = colorBase;
    streams.matColorBase_id52 = colorBase;
}
void ResetStream_id218(inout PS_STREAMS streams)
{
    ResetStream_id217(streams);
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
        Compute_id558(streams);
    }

    {
        Compute_id563(streams);
    }

    {
        Compute_id568(streams);
    }

    {
        Compute_id584(streams);
    }
}
void ResetStream_id51(inout PS_STREAMS streams)
{
    ResetStream_id218(streams);
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
    streams.DepthVS_id23 = __input__.DepthVS_id23;
    streams.normalWS_id19 = __input__.normalWS_id19;
    streams.ScreenPosition_id167 = __input__.ScreenPosition_id167;
    streams.IsFrontFace_id1 = __input__.IsFrontFace_id1;
    streams.ScreenPosition_id167 /= streams.ScreenPosition_id167.w;
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
    streams.ScreenPosition_id167 = streams.ShadingPosition_id0;
    VS_OUTPUT __output__ = (VS_OUTPUT)0;
    __output__.PositionWS_id22 = streams.PositionWS_id22;
    __output__.ShadingPosition_id0 = streams.ShadingPosition_id0;
    __output__.DepthVS_id23 = streams.DepthVS_id23;
    __output__.normalWS_id19 = streams.normalWS_id19;
    __output__.ScreenPosition_id167 = streams.ScreenPosition_id167;
    return __output__;
}
