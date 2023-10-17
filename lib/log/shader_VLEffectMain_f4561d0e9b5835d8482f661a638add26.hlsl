/**************************
***** Compiler Parameters *****
***************************
@P EffectName: VLEffectMain
@P   - Material.PixelStageSurfaceShaders: mixin MaterialSurfaceArray [{layers = [mixin MaterialSurfaceDiffuse [{diffuseMap = mixin Float4ToColor [{Value = mixin DoFloat4 [{Before = mixin ComputeOrder [{Computes = [mixin AssignVarFloat4<Input_0> [{Value = InputFloat4<ShaderFX.InputValueFloat4,PerMaterial>}]]}]}, {Value = GetVarFloat4<Input_0>}]}]}], mixin MaterialSurfaceGlossinessMap<true> [{glossinessMap = mixin FloatToScalar [{Value = mixin DoFloat [{Before = mixin ComputeOrder [{Computes = [ComputeVoid]}]}, {Value = ConstantFloat<1>}]}]}], mixin MaterialSurfaceMetalness [{metalnessMap = ComputeColorConstantFloatLink<Material.MetalnessValue>}], mixin MaterialSurfaceSetStreamFromComputeColor<matEmissive,rgba> [{computeColorSource = mixin Float4ToColor [{Value = mixin DoFloat4 [{Before = mixin ComputeOrder [{Computes = [mixin AssignVarFloat4<Input_1> [{Value = InputFloat4<ShaderFX.InputValueFloat4.i1,PerMaterial>}]]}]}, {Value = GetVarFloat4<Input_1>}]}]}], mixin MaterialSurfaceSetStreamFromComputeColor<matEmissiveIntensity,r> [{computeColorSource = mixin FloatToScalar [{Value = mixin DoFloat [{Before = mixin ComputeOrder [{Computes = [mixin AssignVarFloat<Input_2> [{Value = InputFloat<ShaderFX.InputValueFloat,PerMaterial>}]]}]}, {Value = GetVarFloat<Input_2>}]}]}], mixin MaterialSurfaceSetStreamFromComputeColor<matDiffuseSpecularAlphaBlend,r> [{computeColorSource = mixin FloatToScalar [{Value = mixin DoFloat [{Before = mixin ComputeOrder [{Computes = [mixin AssignVarFloat<Input_3> [{Value = InputFloat<ShaderFX.InputValueFloat.i1,PerMaterial>}]]}]}, {Value = GetVarFloat<Input_3>}]}]}], mixin MaterialSurfaceSetStreamFromComputeColor<matAlphaBlendColor,rgb> [{computeColorSource = mixin Float4ToColor [{Value = mixin DoFloat4 [{Before = mixin ComputeOrder [{Computes = [ComputeVoid]}]}, {Value = ConstantFloat4<float4(1, 1, 1, 1)>}]}]}], mixin MaterialSurfaceLightingAndShading [{surfaces = [MaterialSurfaceShadingDiffuseLambert<false>, mixin MaterialSurfaceShadingSpecularMicrofacet [{environmentFunction = MaterialSpecularMicrofacetEnvironmentGGXLUT}, {fresnelFunction = MaterialSpecularMicrofacetFresnelSchlick}, {geometricShadowingFunction = MaterialSpecularMicrofacetVisibilitySmithSchlickGGX}, {normalDistributionFunction = MaterialSpecularMicrofacetNormalDistributionGGX}]]}], MaterialSurfaceEmissiveShading<true>, MaterialSurfaceDiffuseSpecularAlphaBlendColor]}]
@P Material.PixelStageStreamInitializer: mixin MaterialStream, MaterialPixelShadingStream
@P Material.UsePixelShaderWithDepthPass: True
@P Lighting.DirectLightGroups: mixin LightDirectionalGroup<1>, ShadowMapReceiverDirectional<4,1,true,true,false,false>, ShadowMapFilterPcf<PerView.Lighting,7>, mixin LightClusteredPointGroup, LightClusteredSpotGroup, mixin LightPointGroup<64>, mixin LightSpotGroup<8>
@P Lighting.EnvironmentLights: LightSimpleAmbient, sdfx LightSkyboxEffect, sdfx LightSkyboxEffect, EnvironmentLight
@P LightSkyboxShader.LightDiffuseColor.environmentLights[1]: SphericalHarmonicsEnvironmentColor<3>
@P LightSkyboxShader.LightSpecularColor.environmentLights[1]: RoughnessCubeMapEnvironmentColor
@P LightSkyboxShader.LightDiffuseColor.environmentLights[2]: SphericalHarmonicsEnvironmentColor<3>
@P LightSkyboxShader.LightSpecularColor.environmentLights[2]: RoughnessCubeMapEnvironmentColor
@P StrideEffectBase.RenderTargetExtensions: mixin
***************************
****  ConstantBuffers  ****
***************************
cbuffer PerDraw [Size: 3024]
@C    World_id31 => Transformation.World
@C    WorldInverse_id32 => Transformation.WorldInverse
@C    WorldInverseTranspose_id33 => Transformation.WorldInverseTranspose
@C    WorldView_id34 => Transformation.WorldView
@C    WorldViewInverse_id35 => Transformation.WorldViewInverse
@C    WorldViewProjection_id36 => Transformation.WorldViewProjection
@C    WorldScale_id37 => Transformation.WorldScale
@C    EyeMS_id38 => Transformation.EyeMS
@C    _padding_PerDraw_Default => _padding_PerDraw_Default
@C    LightCount_id180 => DirectLightGroupPerDraw.LightCount.directLightGroups[3]
@C    Lights_id182 => LightPointGroup.Lights.directLightGroups[3]
@C    LightCount_id183 => DirectLightGroupPerDraw.LightCount.directLightGroups[4]
@C    Lights_id185 => LightSpotGroup.Lights.directLightGroups[4]
@C    _padding_PerDraw_Lighting => _padding_PerDraw_Lighting
cbuffer PerMaterial [Size: 64]
@C    InputValue_id210 => ShaderFX.InputValueFloat4
@C    constantFloat_id224 => Material.MetalnessValue
@C    InputValue_id230 => ShaderFX.InputValueFloat4.i1
@C    InputValue_id238 => ShaderFX.InputValueFloat
@C    InputValue_id246 => ShaderFX.InputValueFloat.i1
cbuffer PerView [Size: 1888]
@C    View_id24 => Transformation.View
@C    ViewInverse_id25 => Transformation.ViewInverse
@C    Projection_id26 => Transformation.Projection
@C    ProjectionInverse_id27 => Transformation.ProjectionInverse
@C    ViewProjection_id28 => Transformation.ViewProjection
@C    ProjScreenRay_id29 => Transformation.ProjScreenRay
@C    Eye_id30 => Transformation.Eye
@C    NearClipPlane_id166 => Camera.NearClipPlane
@C    FarClipPlane_id167 => Camera.FarClipPlane
@C    ZProjection_id168 => Camera.ZProjection
@C    ViewSize_id169 => Camera.ViewSize
@C    AspectRatio_id170 => Camera.AspectRatio
@C    _padding_PerView_Default => _padding_PerView_Default
@C    LightCount_id84 => DirectLightGroupPerView.LightCount.directLightGroups[0]
@C    Lights_id86 => LightDirectionalGroup.Lights.directLightGroups[0]
@C    ShadowMapTextureSize_id88 => ShadowMap.TextureSize.directLightGroups[0]
@C    ShadowMapTextureTexelSize_id89 => ShadowMap.TextureTexelSize.directLightGroups[0]
@C    WorldToShadowCascadeUV_id151 => ShadowMapReceiverBase.WorldToShadowCascadeUV.directLightGroups[0]
@C    InverseWorldToShadowCascadeUV_id152 => ShadowMapReceiverBase.InverseWorldToShadowCascadeUV.directLightGroups[0]
@C    ViewMatrices_id153 => ShadowMapReceiverBase.ViewMatrices.directLightGroups[0]
@C    DepthRanges_id154 => ShadowMapReceiverBase.DepthRanges.directLightGroups[0]
@C    DepthBiases_id155 => ShadowMapReceiverBase.DepthBiases.directLightGroups[0]
@C    OffsetScales_id156 => ShadowMapReceiverBase.OffsetScales.directLightGroups[0]
@C    CascadeDepthSplits_id163 => ShadowMapReceiverDirectional.CascadeDepthSplits.directLightGroups[0]
@C    ClusterDepthScale_id175 => LightClustered.ClusterDepthScale
@C    ClusterDepthBias_id176 => LightClustered.ClusterDepthBias
@C    ClusterStride_id177 => LightClustered.ClusterStride
@C    AmbientLight_id186 => LightSimpleAmbient.AmbientLight.environmentLights[0]
@C    SphericalColors_id191 => SphericalHarmonicsEnvironmentColor.SphericalColors.lightDiffuseColor.environmentLights[1]
@C    MipCount_id192 => RoughnessCubeMapEnvironmentColor.MipCount.lightSpecularColor.environmentLights[1]
@C    SkyMatrix_id194 => LightSkyboxShader.SkyMatrix.environmentLights[1]
@C    Intensity_id195 => LightSkyboxShader.Intensity.environmentLights[1]
@C    SphericalColors_id202 => SphericalHarmonicsEnvironmentColor.SphericalColors.lightDiffuseColor.environmentLights[2]
@C    MipCount_id203 => RoughnessCubeMapEnvironmentColor.MipCount.lightSpecularColor.environmentLights[2]
@C    SkyMatrix_id205 => LightSkyboxShader.SkyMatrix.environmentLights[2]
@C    Intensity_id206 => LightSkyboxShader.Intensity.environmentLights[2]
@C    _padding_PerView_Lighting => _padding_PerView_Lighting
***************************
******  Resources    ******
***************************
@R    PerMaterial => PerMaterial [Stage: None, Slot: (-1--1)]
@R    EnvironmentLightingDFG_LUT_id264 => MaterialSpecularMicrofacetEnvironmentGGXLUT.EnvironmentLightingDFG_LUT [Stage: None, Slot: (-1--1)]
@R    EnvironmentLightingDFG_LUT_id264 => MaterialSpecularMicrofacetEnvironmentGGXLUT.EnvironmentLightingDFG_LUT [Stage: None, Slot: (-1--1)]
@R    ShadowMapTexture_id87 => ShadowMap.ShadowMapTexture.directLightGroups[0] [Stage: None, Slot: (-1--1)]
@R    ShadowMapTexture_id87 => ShadowMap.ShadowMapTexture.directLightGroups[0] [Stage: None, Slot: (-1--1)]
@R    LightClusters_id173 => LightClustered.LightClusters [Stage: None, Slot: (-1--1)]
@R    LightClusters_id173 => LightClustered.LightClusters [Stage: None, Slot: (-1--1)]
@R    LightIndices_id174 => LightClustered.LightIndices [Stage: None, Slot: (-1--1)]
@R    LightIndices_id174 => LightClustered.LightIndices [Stage: None, Slot: (-1--1)]
@R    PointLights_id178 => LightClusteredPointGroup.PointLights [Stage: None, Slot: (-1--1)]
@R    PointLights_id178 => LightClusteredPointGroup.PointLights [Stage: None, Slot: (-1--1)]
@R    SpotLights_id179 => LightClusteredSpotGroup.SpotLights [Stage: None, Slot: (-1--1)]
@R    SpotLights_id179 => LightClusteredSpotGroup.SpotLights [Stage: None, Slot: (-1--1)]
@R    CubeMap_id193 => RoughnessCubeMapEnvironmentColor.CubeMap.lightSpecularColor.environmentLights[1] [Stage: None, Slot: (-1--1)]
@R    CubeMap_id193 => RoughnessCubeMapEnvironmentColor.CubeMap.lightSpecularColor.environmentLights[1] [Stage: None, Slot: (-1--1)]
@R    CubeMap_id204 => RoughnessCubeMapEnvironmentColor.CubeMap.lightSpecularColor.environmentLights[2] [Stage: None, Slot: (-1--1)]
@R    CubeMap_id204 => RoughnessCubeMapEnvironmentColor.CubeMap.lightSpecularColor.environmentLights[2] [Stage: None, Slot: (-1--1)]
@R    PerDraw => PerDraw [Stage: Vertex, Slot: (0-0)]
@R    PerView => PerView [Stage: Vertex, Slot: (1-1)]
@R    LinearSampler_id120 => Texturing.LinearSampler [Stage: Pixel, Slot: (0-0)]
@R    LinearClampCompareLessEqualSampler_id122 => Texturing.LinearClampCompareLessEqualSampler [Stage: Pixel, Slot: (1-1)]
@R    EnvironmentLightingDFG_LUT_id264 => MaterialSpecularMicrofacetEnvironmentGGXLUT.EnvironmentLightingDFG_LUT [Stage: Pixel, Slot: (0-0)]
@R    ShadowMapTexture_id87 => ShadowMap.ShadowMapTexture.directLightGroups[0] [Stage: Pixel, Slot: (1-1)]
@R    LightClusters_id173 => LightClustered.LightClusters [Stage: Pixel, Slot: (2-2)]
@R    LightIndices_id174 => LightClustered.LightIndices [Stage: Pixel, Slot: (3-3)]
@R    PointLights_id178 => LightClusteredPointGroup.PointLights [Stage: Pixel, Slot: (4-4)]
@R    SpotLights_id179 => LightClusteredSpotGroup.SpotLights [Stage: Pixel, Slot: (5-5)]
@R    CubeMap_id193 => RoughnessCubeMapEnvironmentColor.CubeMap.lightSpecularColor.environmentLights[1] [Stage: Pixel, Slot: (6-6)]
@R    CubeMap_id204 => RoughnessCubeMapEnvironmentColor.CubeMap.lightSpecularColor.environmentLights[2] [Stage: Pixel, Slot: (7-7)]
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
@S    MaterialSurfaceSetStreamFromComputeColor => d24798cd4613058b907bf6e272883693
@S    IMaterialSurfaceVertex => 0fdda64f0492719d7ada59ea23d8f052
@S    MaterialVertexStream => 4f1267b84dea64fc7c323dfcfc385ab2
@S    MaterialDisplacementStream => 5d57748e7230a9347827c8f299c2d525
@S    IMaterialSurfaceDomain => 4f15b2e1d3036634d4e5f52e39c40e57
@S    MaterialDomainStream => a7008fc6e4d9a36114cef530b894de85
@S    MaterialTessellationStream => c86b4a80b983fe69485b091d0a16cf5a
@S    AssignVarFloat => a27c6bbf503fcc9e236bc94dd1c261bf
@S    StreamVariableFloat => 20a0c0292833cf8f573b776f121529c5
@S    InputFloat => edce7cfb3e88687e30d0d7dadcb5a90d
@S    DeclFloat => f4460ed7a64afae8a4c604a1f0434666
@S    GetVarFloat => 15ef45218ac83c53348d7e12dab45514
@S    ConstantFloat4 => be4f0833deb972bc9d796b3dd76bf42d
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
@S    MaterialSurfaceEmissiveShading => 1c66007c23627d525bd2d12381ca0782
@S    MaterialSurfaceDiffuseSpecularAlphaBlendColor => a85000d6a6bed4152613cbddde8e050e
***************************
*****     Stages      *****
***************************
@G    Vertex => 761d55cce6e70b46a137e172b2136143
//
// Generated by Microsoft (R) HLSL Shader Compiler 10.1
//
//
// Buffer Definitions: 
//
// cbuffer PerDraw
// {
//
//   float4x4 World_id31;               // Offset:    0 Size:    64
//   float4x4 WorldInverse_id32;        // Offset:   64 Size:    64 [unused]
//   float4x4 WorldInverseTranspose_id33;// Offset:  128 Size:    64
//   float4x4 WorldView_id34;           // Offset:  192 Size:    64 [unused]
//   float4x4 WorldViewInverse_id35;    // Offset:  256 Size:    64 [unused]
//   float4x4 WorldViewProjection_id36; // Offset:  320 Size:    64 [unused]
//   float3 WorldScale_id37;            // Offset:  384 Size:    12 [unused]
//   float4 EyeMS_id38;                 // Offset:  400 Size:    16 [unused]
//   float4 _padding_PerDraw_Default;   // Offset:  416 Size:    16 [unused]
//   int LightCount_id180;              // Offset:  432 Size:     4 [unused]
//   
//   struct PointLightData
//   {
//       
//       float3 PositionWS;             // Offset:  448
//       float InvSquareRadius;         // Offset:  460
//       float3 Color;                  // Offset:  464
//
//   } Lights_id182[64];                // Offset:  448 Size:  2044 [unused]
//   int LightCount_id183;              // Offset: 2492 Size:     4 [unused]
//   
//   struct SpotLightData
//   {
//       
//       float3 PositionWS;             // Offset: 2496
//       float3 DirectionWS;            // Offset: 2512
//       float3 AngleOffsetAndInvSquareRadius;// Offset: 2528
//       float3 Color;                  // Offset: 2544
//
//   } Lights_id185[8];                 // Offset: 2496 Size:   508 [unused]
//   float4 _padding_PerDraw_Lighting;  // Offset: 3008 Size:    16 [unused]
//
// }
//
// cbuffer PerView
// {
//
//   float4x4 View_id24;                // Offset:    0 Size:    64 [unused]
//   float4x4 ViewInverse_id25;         // Offset:   64 Size:    64 [unused]
//   float4x4 Projection_id26;          // Offset:  128 Size:    64 [unused]
//   float4x4 ProjectionInverse_id27;   // Offset:  192 Size:    64 [unused]
//   float4x4 ViewProjection_id28;      // Offset:  256 Size:    64
//   float2 ProjScreenRay_id29;         // Offset:  320 Size:     8 [unused]
//   float4 Eye_id30;                   // Offset:  336 Size:    16 [unused]
//   float NearClipPlane_id166;         // Offset:  352 Size:     4 [unused]
//      = 0x3f800000 
//   float FarClipPlane_id167;          // Offset:  356 Size:     4 [unused]
//      = 0x42c80000 
//   float2 ZProjection_id168;          // Offset:  360 Size:     8 [unused]
//   float2 ViewSize_id169;             // Offset:  368 Size:     8 [unused]
//   float AspectRatio_id170;           // Offset:  376 Size:     4 [unused]
//   float4 _padding_PerView_Default;   // Offset:  384 Size:    16 [unused]
//   int LightCount_id84;               // Offset:  400 Size:     4 [unused]
//   
//   struct DirectionalLightData
//   {
//       
//       float3 DirectionWS;            // Offset:  416
//       float3 Color;                  // Offset:  432
//
//   } Lights_id86;                     // Offset:  416 Size:    28 [unused]
//   float2 ShadowMapTextureSize_id88;  // Offset:  448 Size:     8 [unused]
//   float2 ShadowMapTextureTexelSize_id89;// Offset:  456 Size:     8 [unused]
//   float4x4 WorldToShadowCascadeUV_id151[4];// Offset:  464 Size:   256 [unused]
//   float4x4 InverseWorldToShadowCascadeUV_id152[4];// Offset:  720 Size:   256 [unused]
//   float4x4 ViewMatrices_id153[4];    // Offset:  976 Size:   256 [unused]
//   float2 DepthRanges_id154[4];       // Offset: 1232 Size:    56 [unused]
//   float DepthBiases_id155;           // Offset: 1296 Size:     4 [unused]
//   float OffsetScales_id156;          // Offset: 1312 Size:     4 [unused]
//   float CascadeDepthSplits_id163[4]; // Offset: 1328 Size:    52 [unused]
//   float ClusterDepthScale_id175;     // Offset: 1380 Size:     4 [unused]
//   float ClusterDepthBias_id176;      // Offset: 1384 Size:     4 [unused]
//   float2 ClusterStride_id177;        // Offset: 1392 Size:     8 [unused]
//   float3 AmbientLight_id186;         // Offset: 1408 Size:    12 [unused]
//   float3 SphericalColors_id191[9];   // Offset: 1424 Size:   140 [unused]
//   float MipCount_id192;              // Offset: 1564 Size:     4 [unused]
//   float4x4 SkyMatrix_id194;          // Offset: 1568 Size:    64 [unused]
//   float Intensity_id195;             // Offset: 1632 Size:     4 [unused]
//   float3 SphericalColors_id202[9];   // Offset: 1648 Size:   140 [unused]
//   float MipCount_id203;              // Offset: 1788 Size:     4 [unused]
//   float4x4 SkyMatrix_id205;          // Offset: 1792 Size:    64 [unused]
//   float Intensity_id206;             // Offset: 1856 Size:     4 [unused]
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
// SCREENPOSITION_ID165_SEM     0   xyzw        3     NONE   float   xyzw
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
//   v0.x <- __input__.Position_id20.x; v0.y <- __input__.Position_id20.y; v0.z <- __input__.Position_id20.z; v0.w <- __input__.Position_id20.w; 
//   v1.x <- __input__.meshNormal_id15.x; v1.y <- __input__.meshNormal_id15.y; v1.z <- __input__.meshNormal_id15.z; 
//   o3.x <- <VSMain return value>.ScreenPosition_id165.x; o3.y <- <VSMain return value>.ScreenPosition_id165.y; o3.z <- <VSMain return value>.ScreenPosition_id165.z; o3.w <- <VSMain return value>.ScreenPosition_id165.w; 
//   o2.x <- <VSMain return value>.DepthVS_id22; o2.y <- <VSMain return value>.normalWS_id18.x; o2.z <- <VSMain return value>.normalWS_id18.y; o2.w <- <VSMain return value>.normalWS_id18.z; 
//   o1.x <- <VSMain return value>.ShadingPosition_id0.x; o1.y <- <VSMain return value>.ShadingPosition_id0.y; o1.z <- <VSMain return value>.ShadingPosition_id0.z; o1.w <- <VSMain return value>.ShadingPosition_id0.w; 
//   o0.x <- <VSMain return value>.PositionWS_id21.x; o0.y <- <VSMain return value>.PositionWS_id21.y; o0.z <- <VSMain return value>.PositionWS_id21.z; o0.w <- <VSMain return value>.PositionWS_id21.w
//
#line 1661 "C:\Users\elektromeier\Desktop\VomAmt\VomAmtVR\lib\log\shader_VLEffectMain_f4561d0e9b5835d8482f661a638add26.hlsl"
dp4 r0.x, v0.xyzw, cb0[0].xyzw  // r0.x <- streams.PositionWS_id21.x
dp4 r0.y, v0.xyzw, cb0[1].xyzw  // r0.y <- streams.PositionWS_id21.y
dp4 r0.z, v0.xyzw, cb0[2].xyzw  // r0.z <- streams.PositionWS_id21.z
dp4 r0.w, v0.xyzw, cb0[3].xyzw  // r0.w <- streams.PositionWS_id21.w

#line 1742
mov o0.xyzw, r0.xyzw

#line 1592
dp4 r1.x, r0.xyzw, cb1[16].xyzw  // r1.x <- <ComputeShadingPosition_id11 return value>.x
dp4 r1.y, r0.xyzw, cb1[17].xyzw  // r1.y <- <ComputeShadingPosition_id11 return value>.y
dp4 r1.z, r0.xyzw, cb1[18].xyzw  // r1.z <- <ComputeShadingPosition_id11 return value>.z
dp4 r1.w, r0.xyzw, cb1[19].xyzw  // r1.w <- <ComputeShadingPosition_id11 return value>.w

#line 1742
mov o1.xyzw, r1.xyzw
mov o3.xyzw, r1.xyzw
mov o2.x, r1.w

#line 1696
dp3 o2.y, v1.xyzx, cb0[8].xyzx
dp3 o2.z, v1.xyzx, cb0[9].xyzx
dp3 o2.w, v1.xyzx, cb0[10].xyzx

#line 1742
ret 
// Approximately 16 instruction slots used
@G    Pixel => 948ed5e1f1d5ac4b9ebc281b0665a9c8
//
// Generated by Microsoft (R) HLSL Shader Compiler 10.1
//
//
// Buffer Definitions: 
//
// cbuffer PerDraw
// {
//
//   float4x4 World_id31;               // Offset:    0 Size:    64 [unused]
//   float4x4 WorldInverse_id32;        // Offset:   64 Size:    64 [unused]
//   float4x4 WorldInverseTranspose_id33;// Offset:  128 Size:    64 [unused]
//   float4x4 WorldView_id34;           // Offset:  192 Size:    64 [unused]
//   float4x4 WorldViewInverse_id35;    // Offset:  256 Size:    64 [unused]
//   float4x4 WorldViewProjection_id36; // Offset:  320 Size:    64 [unused]
//   float3 WorldScale_id37;            // Offset:  384 Size:    12 [unused]
//   float4 EyeMS_id38;                 // Offset:  400 Size:    16 [unused]
//   float4 _padding_PerDraw_Default;   // Offset:  416 Size:    16 [unused]
//   int LightCount_id180;              // Offset:  432 Size:     4
//   
//   struct PointLightData
//   {
//       
//       float3 PositionWS;             // Offset:  448
//       float InvSquareRadius;         // Offset:  460
//       float3 Color;                  // Offset:  464
//
//   } Lights_id182[64];                // Offset:  448 Size:  2044
//   int LightCount_id183;              // Offset: 2492 Size:     4
//   
//   struct SpotLightData
//   {
//       
//       float3 PositionWS;             // Offset: 2496
//       float3 DirectionWS;            // Offset: 2512
//       float3 AngleOffsetAndInvSquareRadius;// Offset: 2528
//       float3 Color;                  // Offset: 2544
//
//   } Lights_id185[8];                 // Offset: 2496 Size:   508
//   float4 _padding_PerDraw_Lighting;  // Offset: 3008 Size:    16 [unused]
//
// }
//
// cbuffer PerMaterial
// {
//
//   float4 InputValue_id210;           // Offset:    0 Size:    16
//   float constantFloat_id224;         // Offset:   16 Size:     4
//   float4 InputValue_id230;           // Offset:   32 Size:    16
//   float InputValue_id238;            // Offset:   48 Size:     4
//   float InputValue_id246;            // Offset:   52 Size:     4
//
// }
//
// cbuffer PerView
// {
//
//   float4x4 View_id24;                // Offset:    0 Size:    64 [unused]
//   float4x4 ViewInverse_id25;         // Offset:   64 Size:    64 [unused]
//   float4x4 Projection_id26;          // Offset:  128 Size:    64 [unused]
//   float4x4 ProjectionInverse_id27;   // Offset:  192 Size:    64 [unused]
//   float4x4 ViewProjection_id28;      // Offset:  256 Size:    64 [unused]
//   float2 ProjScreenRay_id29;         // Offset:  320 Size:     8 [unused]
//   float4 Eye_id30;                   // Offset:  336 Size:    16
//   float NearClipPlane_id166;         // Offset:  352 Size:     4 [unused]
//      = 0x3f800000 
//   float FarClipPlane_id167;          // Offset:  356 Size:     4 [unused]
//      = 0x42c80000 
//   float2 ZProjection_id168;          // Offset:  360 Size:     8
//   float2 ViewSize_id169;             // Offset:  368 Size:     8 [unused]
//   float AspectRatio_id170;           // Offset:  376 Size:     4 [unused]
//   float4 _padding_PerView_Default;   // Offset:  384 Size:    16 [unused]
//   int LightCount_id84;               // Offset:  400 Size:     4
//   
//   struct DirectionalLightData
//   {
//       
//       float3 DirectionWS;            // Offset:  416
//       float3 Color;                  // Offset:  432
//
//   } Lights_id86;                     // Offset:  416 Size:    28
//   float2 ShadowMapTextureSize_id88;  // Offset:  448 Size:     8
//   float2 ShadowMapTextureTexelSize_id89;// Offset:  456 Size:     8
//   float4x4 WorldToShadowCascadeUV_id151[4];// Offset:  464 Size:   256
//   float4x4 InverseWorldToShadowCascadeUV_id152[4];// Offset:  720 Size:   256 [unused]
//   float4x4 ViewMatrices_id153[4];    // Offset:  976 Size:   256 [unused]
//   float2 DepthRanges_id154[4];       // Offset: 1232 Size:    56 [unused]
//   float DepthBiases_id155;           // Offset: 1296 Size:     4
//   float OffsetScales_id156;          // Offset: 1312 Size:     4
//   float CascadeDepthSplits_id163[4]; // Offset: 1328 Size:    52
//   float ClusterDepthScale_id175;     // Offset: 1380 Size:     4
//   float ClusterDepthBias_id176;      // Offset: 1384 Size:     4
//   float2 ClusterStride_id177;        // Offset: 1392 Size:     8
//   float3 AmbientLight_id186;         // Offset: 1408 Size:    12
//   float3 SphericalColors_id191[9];   // Offset: 1424 Size:   140
//   float MipCount_id192;              // Offset: 1564 Size:     4
//   float4x4 SkyMatrix_id194;          // Offset: 1568 Size:    64
//   float Intensity_id195;             // Offset: 1632 Size:     4
//   float3 SphericalColors_id202[9];   // Offset: 1648 Size:   140
//   float MipCount_id203;              // Offset: 1788 Size:     4
//   float4x4 SkyMatrix_id205;          // Offset: 1792 Size:    64
//   float Intensity_id206;             // Offset: 1856 Size:     4
//   float4 _padding_PerView_Lighting;  // Offset: 1872 Size:    16 [unused]
//
// }
//
//
// Resource Bindings:
//
// Name                                 Type  Format         Dim      HLSL Bind  Count
// ------------------------------ ---------- ------- ----------- -------------- ------
// LinearSampler_id120               sampler      NA          NA             s0      1 
// LinearClampCompareLessEqualSampler_id122  sampler_c      NA          NA             s1      1 
// EnvironmentLightingDFG_LUT_id264    texture  float4          2d             t0      1 
// ShadowMapTexture_id87             texture  float4          2d             t1      1 
// LightClusters_id173               texture   uint2          3d             t2      1 
// LightIndices_id174                texture    uint         buf             t3      1 
// PointLights_id178                 texture  float4         buf             t4      1 
// SpotLights_id179                  texture  float4         buf             t5      1 
// CubeMap_id193                     texture  float4        cube             t6      1 
// CubeMap_id204                     texture  float4        cube             t7      1 
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
// SCREENPOSITION_ID165_SEM     0   xyzw        3     NONE   float   xy w
// SV_IsFrontFace           0   x           4    FFACE    uint   x   
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
dcl_constantbuffer CB0[188], dynamicIndexed
dcl_constantbuffer CB1[4], immediateIndexed
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
dcl_temps 22
//
// Initial variable locations:
//   v0.x <- __input__.PositionWS_id21.x; v0.y <- __input__.PositionWS_id21.y; v0.z <- __input__.PositionWS_id21.z; v0.w <- __input__.PositionWS_id21.w; 
//   v1.x <- __input__.ShadingPosition_id0.x; v1.y <- __input__.ShadingPosition_id0.y; v1.z <- __input__.ShadingPosition_id0.z; v1.w <- __input__.ShadingPosition_id0.w; 
//   v2.x <- __input__.DepthVS_id22; v2.y <- __input__.normalWS_id18.x; v2.z <- __input__.normalWS_id18.y; v2.w <- __input__.normalWS_id18.z; 
//   v3.x <- __input__.ScreenPosition_id165.x; v3.y <- __input__.ScreenPosition_id165.y; v3.z <- __input__.ScreenPosition_id165.z; v3.w <- __input__.ScreenPosition_id165.w; 
//   v4.x <- __input__.IsFrontFace_id1; 
//   o0.x <- <PSMain return value>.ColorTarget_id2.x; o0.y <- <PSMain return value>.ColorTarget_id2.y; o0.z <- <PSMain return value>.ColorTarget_id2.z; o0.w <- <PSMain return value>.ColorTarget_id2.w
//
#line 1723 "C:\Users\elektromeier\Desktop\VomAmt\VomAmtVR\lib\log\shader_VLEffectMain_f4561d0e9b5835d8482f661a638add26.hlsl"
div r0.xy, v3.xyxx, v3.wwww  // r0.x <- streams.ScreenPosition_id165.x; r0.y <- streams.ScreenPosition_id165.y

#line 1690
dp3 r0.z, v2.yzwy, v2.yzwy
lt r0.w, l(0.000000), r0.z

#line 1691
rsq r0.z, r0.z
mul r1.xyz, r0.zzzz, v2.yzwy  // r1.x <- streams.normalWS_id18.x; r1.y <- streams.normalWS_id18.y; r1.z <- streams.normalWS_id18.z
movc r1.xyz, r0.wwww, r1.xyzx, v2.yzwy

#line 1665
add r2.xyz, -v0.xyzx, cb2[21].xyzx
dp3 r0.z, r2.xyzx, r2.xyzx
rsq r0.z, r0.z
mul r3.xyz, r0.zzzz, r2.xyzx  // r3.x <- streams.viewWS_id67.x; r3.y <- streams.viewWS_id67.y; r3.z <- streams.viewWS_id67.z

#line 1548
add r4.xyz, cb1[0].xyzx, l(-0.020000, -0.020000, -0.020000, 0.000000)
mad r4.xyz, cb1[1].xxxx, r4.xyzx, l(0.020000, 0.020000, 0.020000, 0.000000)  // r4.x <- streams.matSpecular_id54.x; r4.y <- streams.matSpecular_id54.y; r4.z <- streams.matSpecular_id54.z

#line 1549
mad r5.xyz, cb1[1].xxxx, -cb1[0].xyzx, cb1[0].xyzx  // r5.x <- streams.matDiffuse_id52.x; r5.y <- streams.matDiffuse_id52.y; r5.z <- streams.matDiffuse_id52.z

#line 1337
movc r1.xyz, v4.xxxx, r1.xyzx, -r1.xyzx  // r1.x <- streams.normalWS_id18.x; r1.y <- streams.normalWS_id18.y; r1.z <- streams.normalWS_id18.z

#line 1263
mul r5.xyz, r5.xyzx, cb1[3].yyyy  // r5.x <- streams.matDiffuseVisible_id68.x; r5.y <- streams.matDiffuseVisible_id68.y; r5.z <- streams.matDiffuseVisible_id68.z

#line 1264
mul r6.xyz, r4.xyzx, cb1[3].yyyy  // r6.x <- streams.matSpecularVisible_id70.x; r6.y <- streams.matSpecularVisible_id70.y; r6.z <- streams.matSpecularVisible_id70.z

#line 1265
dp3 r0.w, r1.xyzx, r3.xyzx
max r7.y, r0.w, l(0.000100)  // r7.y <- streams.NdotV_id71

#line 1361
ilt r0.w, l(0), cb2[25].x
if_nz r0.w

#line 1235
  dp3 r0.w, r1.xyzx, -cb2[26].xyzx
  max r0.w, r0.w, l(0.000100)  // r0.w <- streams.NdotL_id48

#line 997
  lt r1.w, cb2[83].x, v2.x

#line 1000
  and r1.w, r1.w, l(1)  // r1.w <- cascadeIndex

#line 997
  lt r2.w, cb2[84].x, v2.x

#line 1000
  movc r1.w, r2.w, l(2), r1.w

#line 997
  lt r2.w, cb2[85].x, v2.x

#line 1000
  movc r1.w, r2.w, l(3), r1.w

#line 753
  add r3.w, -r0.w, l(1.000000)
  max r3.w, r3.w, l(0.000000)  // r3.w <- normalOffsetScale

#line 754
  mul r4.w, cb2[28].z, cb2[82].x
  dp2 r3.w, r4.wwww, r3.wwww

#line 1005
  mad r8.xyz, r3.wwww, r1.xyzx, v0.xyzx  // r8.x <- shadowPosition.x; r8.y <- shadowPosition.y; r8.z <- shadowPosition.z

#line 746
  ishl r3.w, r1.w, l(2)
  mov r8.w, l(1.000000)
  dp4 r9.x, r8.xyzw, cb2[r3.w + 29].xyzw  // r9.x <- shadowPosition.x
  dp4 r9.y, r8.xyzw, cb2[r3.w + 30].xyzw  // r9.y <- shadowPosition.y
  dp4 r4.w, r8.xyzw, cb2[r3.w + 31].xyzw  // r4.w <- shadowPosition.z
  dp4 r5.w, r8.xyzw, cb2[r3.w + 32].xyzw  // r5.w <- shadowPosition.w

#line 747
  add r9.z, r4.w, -cb2[81].x  // r9.z <- shadowPosition.z

#line 748
  div r9.xyz, r9.xyzx, r5.wwww

#line 513
  mad r7.zw, r9.xxxy, cb2[28].xxxy, l(0.000000, 0.000000, 0.500000, 0.500000)
  round_ni r9.xy, r7.zwzz  // r9.x <- base_uv.x; r9.y <- base_uv.y

#line 514
  add r7.zw, r7.zzzw, -r9.xxxy  // r7.z <- st.x; r7.w <- st.y

#line 515
  add r9.xy, r9.xyxx, l(-0.500000, -0.500000, 0.000000, 0.000000)

#line 516
  mul r9.xy, r9.xyxx, cb2[28].zwzz

#line 392
  mad r10.xyzw, r7.zwwz, l(11.000000, 11.000000, 11.000000, 11.000000), l(-28.000000, -28.000000, 17.000000, 17.000000)  // r10.x <- uvW1.x; r10.y <- uvW1.y

#line 393
  mad r11.xyzw, r7.wzzw, l(5.000000, 5.000000, 5.000000, 5.000000), l(-6.000000, -6.000000, 1.000000, 1.000000)  // r11.x <- uvW0.y; r11.y <- uvW0.x

#line 395
  mad r12.xyzw, r7.zwzw, l(4.000000, 4.000000, 4.000000, 4.000000), l(-5.000000, -5.000000, -16.000000, -16.000000)

#line 394
  div r12.xy, r12.xyxx, r11.yxyy
  add r13.xw, r12.xxxy, l(-3.000000, 0.000000, 0.000000, -3.000000)  // r13.x <- uv0.x; r13.w <- uv0.y

#line 395
  div r12.xy, r12.zwzz, r10.xyxx
  add r13.yz, r12.yyxy, l(0.000000, -1.000000, -1.000000, 0.000000)  // r13.y <- uv1.y; r13.z <- uv1.x

#line 396
  mad r12.xy, r7.zwzz, l(7.000000, 7.000000, 0.000000, 0.000000), l(5.000000, 5.000000, 0.000000, 0.000000)
  div r12.xy, r12.xyxx, r10.wzww
  add r12.xw, r12.yyyx, l(1.000000, 0.000000, 0.000000, 1.000000)  // r12.x <- uv2.y; r12.w <- uv2.x

#line 397
  div r7.zw, r7.zzzw, r11.zzzw
  add r14.xy, r7.zwzz, l(3.000000, 3.000000, 0.000000, 0.000000)  // r14.x <- uv3.x; r14.y <- uv3.y

#line 399
  mad r15.xyzw, r13.xwzw, cb2[28].zwzw, r9.xyxy

#line 404
  mov r12.yz, r13.wwyw

#line 405
  mov r14.zw, r12.yyyz

#line 403
  mad r16.xyzw, r13.xyzy, cb2[28].zwzw, r9.xyxy

#line 404
  mad r17.xyzw, r12.wywz, cb2[28].zwzw, r9.xyxy

#line 405
  mad r18.xyzw, r14.xzxw, cb2[28].zwzw, r9.xyxy

#line 406
  mov r13.y, r12.x
  mul r7.zw, -r10.wwwz, r11.xxxy

#line 407
  mad r19.xyzw, r13.xyzy, cb2[28].zwzw, r9.xyxy
  mul r14.zw, r10.yyyx, -r10.wwwz

#line 408
  mad r20.xy, r12.wxww, cb2[28].zwzz, r9.xyxx
  mul r20.zw, r10.yyyz, r10.xxxw

#line 409
  mov r13.w, r14.x
  mad r13.yw, r13.wwwy, cb2[28].zzzw, r9.xxxy

#line 411
  mov r12.xz, r13.xxzx

#line 410
  mov r12.y, r14.y
  mul r13.xz, r11.xxyx, -r11.zzwz

#line 411
  mad r21.xyzw, r12.xyzy, cb2[28].zwzw, r9.xyxy
  mul r12.xz, r10.yyxy, -r11.zzwz

#line 412
  mad r12.yw, r12.wwwy, cb2[28].zzzw, r9.xxxy
  mul r10.xyzw, r10.xyzw, r11.xyzw

#line 413
  mad r9.xy, r14.xyxx, cb2[28].zwzz, r9.xyxx
  mul r11.xy, r11.xwxx, r11.yzyy

#line 508
  sample_c_lz_indexable(texture2d)(float,float,float,float) r4.w, r15.xyxx, t1.xxxx, s1, r9.z  // r4.w <- <SampleTextureAndCompare_id70 return value>
  sample_c_lz_indexable(texture2d)(float,float,float,float) r5.w, r15.zwzz, t1.xxxx, s1, r9.z  // r5.w <- <SampleTextureAndCompare_id70 return value>

#line 613
  mul r5.w, r5.w, r10.x
  mad r4.w, r11.x, r4.w, r5.w  // r4.w <- shadow

#line 508
  sample_c_lz_indexable(texture2d)(float,float,float,float) r5.w, r17.xyxx, t1.xxxx, s1, r9.z  // r5.w <- <SampleTextureAndCompare_id70 return value>

#line 613
  mad r4.w, r7.z, r5.w, r4.w

#line 508
  sample_c_lz_indexable(texture2d)(float,float,float,float) r5.w, r18.xyxx, t1.xxxx, s1, r9.z

#line 613
  mad r4.w, r13.x, r5.w, r4.w

#line 508
  sample_c_lz_indexable(texture2d)(float,float,float,float) r5.w, r16.xyxx, t1.xxxx, s1, r9.z

#line 613
  mad r4.w, r10.y, r5.w, r4.w

#line 508
  sample_c_lz_indexable(texture2d)(float,float,float,float) r5.w, r16.zwzz, t1.xxxx, s1, r9.z

#line 613
  mad r4.w, r20.z, r5.w, r4.w

#line 508
  sample_c_lz_indexable(texture2d)(float,float,float,float) r5.w, r17.zwzz, t1.xxxx, s1, r9.z

#line 613
  mad r4.w, r14.z, r5.w, r4.w

#line 508
  sample_c_lz_indexable(texture2d)(float,float,float,float) r5.w, r18.zwzz, t1.xxxx, s1, r9.z

#line 613
  mad r4.w, r12.x, r5.w, r4.w

#line 508
  sample_c_lz_indexable(texture2d)(float,float,float,float) r5.w, r19.xyxx, t1.xxxx, s1, r9.z

#line 613
  mad r4.w, r7.w, r5.w, r4.w

#line 508
  sample_c_lz_indexable(texture2d)(float,float,float,float) r5.w, r19.zwzz, t1.xxxx, s1, r9.z

#line 613
  mad r4.w, r14.w, r5.w, r4.w

#line 508
  sample_c_lz_indexable(texture2d)(float,float,float,float) r5.w, r20.xyxx, t1.xxxx, s1, r9.z

#line 613
  mad r4.w, r20.w, r5.w, r4.w

#line 508
  sample_c_lz_indexable(texture2d)(float,float,float,float) r5.w, r13.ywyy, t1.xxxx, s1, r9.z

#line 613
  mad r4.w, r10.z, r5.w, r4.w

#line 508
  sample_c_lz_indexable(texture2d)(float,float,float,float) r5.w, r21.xyxx, t1.xxxx, s1, r9.z

#line 613
  mad r4.w, r13.z, r5.w, r4.w

#line 508
  sample_c_lz_indexable(texture2d)(float,float,float,float) r5.w, r21.zwzz, t1.xxxx, s1, r9.z

#line 613
  mad r4.w, r12.z, r5.w, r4.w

#line 508
  sample_c_lz_indexable(texture2d)(float,float,float,float) r5.w, r12.ywyy, t1.xxxx, s1, r9.z

#line 613
  mad r4.w, r10.w, r5.w, r4.w

#line 508
  sample_c_lz_indexable(texture2d)(float,float,float,float) r5.w, r9.xyxx, t1.xxxx, s1, r9.z

#line 613
  mad r4.w, r11.y, r5.w, r4.w

#line 615
  mul r9.xyz, r4.wwww, l(0.000370, 0.000370, 0.000370, 0.000000)  // r9.z <- shadow

#line 1011
  ilt r5.w, l(0), r1.w
  if_nz r5.w

#line 1013
    iadd r5.w, r1.w, l(-1)
    add r5.w, -cb2[r5.w + 83].x, cb2[r1.w + 83].x  // r5.w <- splitSize

#line 1014
  else 
    mov r5.w, cb2[r1.w + 83].x  // r5.w <- splitSize
  endif 

#line 1015
  add r1.w, -v2.x, cb2[r1.w + 83].x
  div r1.w, r1.w, r5.w  // r1.w <- splitDist

#line 1016
  lt r5.w, r1.w, l(0.200000)
  if_nz r5.w

#line 1019
    if_nz r2.w

#line 1021
      mov r9.xyz, r9.zzzz  // r9.x <- shadow.x; r9.y <- shadow.y; r9.z <- shadow.z
    else 

#line 1018
      mul_sat r1.w, r1.w, l(5.000000)
      mad r2.w, r1.w, l(-2.000000), l(3.000000)
      mul r1.w, r1.w, r1.w
      mul r1.w, r1.w, r2.w  // r1.w <- lerpAmt

#line 746
      dp4 r10.x, r8.xyzw, cb2[r3.w + 33].xyzw  // r10.x <- shadowPosition.x
      dp4 r10.y, r8.xyzw, cb2[r3.w + 34].xyzw  // r10.y <- shadowPosition.y
      dp4 r2.w, r8.xyzw, cb2[r3.w + 35].xyzw  // r2.w <- shadowPosition.z
      dp4 r3.w, r8.xyzw, cb2[r3.w + 36].xyzw  // r3.w <- shadowPosition.w

#line 747
      add r10.z, r2.w, -cb2[81].x  // r10.z <- shadowPosition.z

#line 748
      div r8.xyz, r10.xyzx, r3.wwww  // r8.x <- shadowPosition.x; r8.y <- shadowPosition.y; r8.z <- shadowPosition.z

#line 513
      mad r7.zw, r8.xxxy, cb2[28].xxxy, l(0.000000, 0.000000, 0.500000, 0.500000)
      round_ni r8.xy, r7.zwzz  // r8.x <- base_uv.x; r8.y <- base_uv.y

#line 514
      add r7.zw, r7.zzzw, -r8.xxxy  // r7.z <- st.x; r7.w <- st.y

#line 515
      add r8.xy, r8.xyxx, l(-0.500000, -0.500000, 0.000000, 0.000000)

#line 516
      mul r8.xy, r8.xyxx, cb2[28].zwzz

#line 392
      mad r10.xyzw, r7.zwwz, l(11.000000, 11.000000, 11.000000, 11.000000), l(-28.000000, -28.000000, 17.000000, 17.000000)  // r10.x <- uvW1.x; r10.y <- uvW1.y

#line 393
      mad r11.xyzw, r7.wzzw, l(5.000000, 5.000000, 5.000000, 5.000000), l(-6.000000, -6.000000, 1.000000, 1.000000)  // r11.x <- uvW0.y; r11.y <- uvW0.x

#line 395
      mad r12.xyzw, r7.zwzw, l(4.000000, 4.000000, 4.000000, 4.000000), l(-5.000000, -5.000000, -16.000000, -16.000000)

#line 394
      div r12.xy, r12.xyxx, r11.yxyy
      add r13.xw, r12.xxxy, l(-3.000000, 0.000000, 0.000000, -3.000000)  // r13.x <- uv0.x; r13.w <- uv0.y

#line 395
      div r12.xy, r12.zwzz, r10.xyxx
      add r13.yz, r12.yyxy, l(0.000000, -1.000000, -1.000000, 0.000000)  // r13.y <- uv1.y; r13.z <- uv1.x

#line 396
      mad r12.xy, r7.zwzz, l(7.000000, 7.000000, 0.000000, 0.000000), l(5.000000, 5.000000, 0.000000, 0.000000)
      div r12.xy, r12.xyxx, r10.wzww
      add r12.xw, r12.yyyx, l(1.000000, 0.000000, 0.000000, 1.000000)  // r12.x <- uv2.y; r12.w <- uv2.x

#line 397
      div r7.zw, r7.zzzw, r11.zzzw
      add r14.xy, r7.zwzz, l(3.000000, 3.000000, 0.000000, 0.000000)  // r14.x <- uv3.x; r14.y <- uv3.y

#line 399
      mad r15.xyzw, r13.xwzw, cb2[28].zwzw, r8.xyxy

#line 404
      mov r12.yz, r13.wwyw

#line 405
      mov r14.zw, r12.yyyz

#line 403
      mad r16.xyzw, r13.xyzy, cb2[28].zwzw, r8.xyxy

#line 404
      mad r17.xyzw, r12.wywz, cb2[28].zwzw, r8.xyxy

#line 405
      mad r18.xyzw, r14.xzxw, cb2[28].zwzw, r8.xyxy

#line 406
      mov r13.y, r12.x
      mul r7.zw, -r10.wwwz, r11.xxxy

#line 407
      mad r19.xyzw, r13.xyzy, cb2[28].zwzw, r8.xyxy
      mul r14.zw, r10.yyyx, -r10.wwwz

#line 408
      mad r20.xy, r12.wxww, cb2[28].zwzz, r8.xyxx
      mul r20.zw, r10.yyyz, r10.xxxw

#line 409
      mov r13.w, r14.x
      mad r13.yw, r13.wwwy, cb2[28].zzzw, r8.xxxy

#line 411
      mov r12.xz, r13.xxzx

#line 410
      mov r12.y, r14.y
      mul r13.xz, r11.xxyx, -r11.zzwz

#line 411
      mad r21.xyzw, r12.xyzy, cb2[28].zwzw, r8.xyxy
      mul r12.xz, r10.yyxy, -r11.zzwz

#line 412
      mad r12.yw, r12.wwwy, cb2[28].zzzw, r8.xxxy
      mul r10.xyzw, r10.xyzw, r11.xyzw

#line 413
      mad r8.xy, r14.xyxx, cb2[28].zwzz, r8.xyxx
      mul r11.xy, r11.xwxx, r11.yzyy

#line 508
      sample_c_lz_indexable(texture2d)(float,float,float,float) r2.w, r15.xyxx, t1.xxxx, s1, r8.z  // r2.w <- <SampleTextureAndCompare_id70 return value>
      sample_c_lz_indexable(texture2d)(float,float,float,float) r3.w, r15.zwzz, t1.xxxx, s1, r8.z  // r3.w <- <SampleTextureAndCompare_id70 return value>

#line 613
      mul r3.w, r3.w, r10.x
      mad r2.w, r11.x, r2.w, r3.w  // r2.w <- shadow

#line 508
      sample_c_lz_indexable(texture2d)(float,float,float,float) r3.w, r17.xyxx, t1.xxxx, s1, r8.z  // r3.w <- <SampleTextureAndCompare_id70 return value>

#line 613
      mad r2.w, r7.z, r3.w, r2.w

#line 508
      sample_c_lz_indexable(texture2d)(float,float,float,float) r3.w, r18.xyxx, t1.xxxx, s1, r8.z

#line 613
      mad r2.w, r13.x, r3.w, r2.w

#line 508
      sample_c_lz_indexable(texture2d)(float,float,float,float) r3.w, r16.xyxx, t1.xxxx, s1, r8.z

#line 613
      mad r2.w, r10.y, r3.w, r2.w

#line 508
      sample_c_lz_indexable(texture2d)(float,float,float,float) r3.w, r16.zwzz, t1.xxxx, s1, r8.z

#line 613
      mad r2.w, r20.z, r3.w, r2.w

#line 508
      sample_c_lz_indexable(texture2d)(float,float,float,float) r3.w, r17.zwzz, t1.xxxx, s1, r8.z

#line 613
      mad r2.w, r14.z, r3.w, r2.w

#line 508
      sample_c_lz_indexable(texture2d)(float,float,float,float) r3.w, r18.zwzz, t1.xxxx, s1, r8.z

#line 613
      mad r2.w, r12.x, r3.w, r2.w

#line 508
      sample_c_lz_indexable(texture2d)(float,float,float,float) r3.w, r19.xyxx, t1.xxxx, s1, r8.z

#line 613
      mad r2.w, r7.w, r3.w, r2.w

#line 508
      sample_c_lz_indexable(texture2d)(float,float,float,float) r3.w, r19.zwzz, t1.xxxx, s1, r8.z

#line 613
      mad r2.w, r14.w, r3.w, r2.w

#line 508
      sample_c_lz_indexable(texture2d)(float,float,float,float) r3.w, r20.xyxx, t1.xxxx, s1, r8.z

#line 613
      mad r2.w, r20.w, r3.w, r2.w

#line 508
      sample_c_lz_indexable(texture2d)(float,float,float,float) r3.w, r13.ywyy, t1.xxxx, s1, r8.z

#line 613
      mad r2.w, r10.z, r3.w, r2.w

#line 508
      sample_c_lz_indexable(texture2d)(float,float,float,float) r3.w, r21.xyxx, t1.xxxx, s1, r8.z

#line 613
      mad r2.w, r13.z, r3.w, r2.w

#line 508
      sample_c_lz_indexable(texture2d)(float,float,float,float) r3.w, r21.zwzz, t1.xxxx, s1, r8.z

#line 613
      mad r2.w, r12.z, r3.w, r2.w

#line 508
      sample_c_lz_indexable(texture2d)(float,float,float,float) r3.w, r12.ywyy, t1.xxxx, s1, r8.z

#line 613
      mad r2.w, r10.w, r3.w, r2.w

#line 508
      sample_c_lz_indexable(texture2d)(float,float,float,float) r3.w, r8.xyxx, t1.xxxx, s1, r8.z

#line 613
      mad r2.w, r11.y, r3.w, r2.w

#line 615
      mul r2.w, r2.w, l(0.000370)

#line 1025
      mad r3.w, r4.w, l(0.000370), -r2.w
      mad r9.xyz, r1.wwww, r3.wwww, r2.wwww  // r9.x <- shadow.x; r9.y <- shadow.y; r9.z <- shadow.z

#line 1026
    endif 

#line 1027
  endif 

#line 1237
  mul r8.xyz, r9.xyzx, cb2[27].xyzx
  mul r8.xyz, r0.wwww, r8.xyzx  // r8.x <- streams.lightColorNdotL_id43.x; r8.y <- streams.lightColorNdotL_id43.y; r8.z <- streams.lightColorNdotL_id43.z

#line 1227
  mad r2.xyz, r2.xyzx, r0.zzzz, -cb2[26].xyzx
  dp3 r0.z, r2.xyzx, r2.xyzx
  rsq r0.z, r0.z
  mul r2.xyz, r0.zzzz, r2.xyzx  // r2.x <- streams.H_id74.x; r2.y <- streams.H_id74.y; r2.z <- streams.H_id74.z

#line 1229
  dp3_sat r0.z, -cb2[26].xyzx, r2.xyzx  // r0.z <- streams.LdotH_id76

#line 1223
  mul r2.xyz, r5.xyzx, r8.xyzx
  mul r2.xyz, r2.xyzx, cb1[3].yyyy

#line 583
  mad r4.xyz, -r4.xyzx, cb1[3].yyyy, l(1.000000, 1.000000, 1.000000, 0.000000)
  add r0.z, -r0.z, l(1.000000)
  mul r1.w, r0.z, r0.z
  mul r1.w, r1.w, r1.w
  mul r0.z, r0.z, r1.w
  mad r4.xyz, r4.xyzx, r0.zzzz, r6.xyzx  // r4.x <- <FresnelSchlick_id200 return value>.x; r4.y <- <FresnelSchlick_id200 return value>.y; r4.z <- <FresnelSchlick_id200 return value>.z

#line 579
  mad r0.z, r0.w, l(0.500000), l(0.500000)
  div r0.z, r0.w, r0.z  // r0.z <- <VisibilityhSchlickGGX_id216 return value>
  mad r1.w, r7.y, l(0.500000), l(0.500000)
  div r1.w, r7.y, r1.w  // r1.w <- <VisibilityhSchlickGGX_id216 return value>

#line 733
  mul r0.z, r0.z, r1.w
  mul r0.w, r7.y, r0.w
  div r0.z, r0.z, r0.w  // r0.z <- <VisibilitySmithSchlickGGX_id218 return value>

#line 1217
  mul r4.xyz, r0.zzzz, r4.xyzx
  mul r4.xyz, r8.xyzx, r4.xyzx

#line 1218
  mul r4.xyz, r4.xyzx, cb1[3].yyyy
  mul r4.xyz, r4.xyzx, l(0.079577, 0.079577, 0.079577, 0.000000)  // r4.x <- <ComputeDirectLightContribution_id620 return value>.x; r4.y <- <ComputeDirectLightContribution_id620 return value>.y; r4.z <- <ComputeDirectLightContribution_id620 return value>.z

#line 1369
  mad r2.xyz, r2.xyzx, l(0.318310, 0.318310, 0.318310, 0.000000), r4.xyzx  // r2.x <- directLightingContribution.x; r2.y <- directLightingContribution.y; r2.z <- directLightingContribution.z

#line 1370
else 
  mov r2.xyz, l(0,0,0,0)  // r2.x <- directLightingContribution.x; r2.y <- directLightingContribution.y; r2.z <- directLightingContribution.z
endif 

#line 962
add r0.z, v1.z, -cb2[22].z
div r0.z, cb2[22].w, r0.z  // r0.z <- depth

#line 963
mad r0.xy, r0.xyxx, l(1.000000, -1.000000, 0.000000, 0.000000), l(1.000000, 1.000000, 0.000000, 0.000000)
mul r0.xy, r0.xyxx, cb2[87].xyxx

#line 964
mad r0.z, r0.z, cb2[86].y, cb2[86].z
log r0.z, r0.z
max r0.z, r0.z, l(0.000000)

#line 965
mul r0.xy, r0.xyxx, l(0.500000, 0.500000, 0.000000, 0.000000)

#line 964
ftoi r4.xyz, r0.xyzx  // r4.z <- slice

#line 965
mov r4.w, l(0)
ld_indexable(texture3d)(uint,uint,uint,uint) r0.xy, r4.xyzw, t2.xyzw  // r0.x <- streams.lightData_id171.x; r0.y <- streams.lightData_id171.y

#line 1205
and r0.z, r0.y, l(0x0000ffff)  // r0.z <- <GetMaxLightCount_id277 return value>

#line 1379
mov r4.xyz, r1.xyzx  // r4.x <- streams.normalWS_id18.x; r4.y <- streams.normalWS_id18.y; r4.z <- streams.normalWS_id18.z
mov r4.w, v0.x  // r4.w <- streams.PositionWS_id21.x
mov r8.xy, v0.yzyy  // r8.x <- streams.PositionWS_id21.y; r8.y <- streams.PositionWS_id21.z
mov r8.zw, r3.xxxy  // r8.z <- streams.viewWS_id67.x; r8.w <- streams.viewWS_id67.y
mov r9.z, r3.z  // r9.z <- streams.viewWS_id67.z
mov r10.xyz, r5.xyzx  // r10.x <- streams.matDiffuseVisible_id68.x; r10.y <- streams.matDiffuseVisible_id68.y; r10.z <- streams.matDiffuseVisible_id68.z
mov r10.w, r6.x  // r10.w <- streams.matSpecularVisible_id70.x
mov r11.yz, r6.yyzy  // r11.y <- streams.matSpecularVisible_id70.y; r11.z <- streams.matSpecularVisible_id70.z
mov r7.zw, cb1[3].yyyy  // r7.z <- streams.matDiffuseSpecularAlphaBlend_id64.x; r7.w <- streams.matDiffuseSpecularAlphaBlend_id64.y
mov r12.y, r7.y  // r12.y <- streams.NdotV_id71
mov r12.x, r0.x  // r12.x <- streams.lightIndex_id172
mov r13.xyz, r2.xyzx  // r13.x <- directLightingContribution.x; r13.y <- directLightingContribution.y; r13.z <- directLightingContribution.z
mov r0.w, l(0)  // r0.w <- i
loop 
  ige r1.w, r0.w, r0.z
  breakc_nz r1.w

#line 1381
  if_nz r1.w

#line 1383
    break 

#line 1384
  endif 

#line 949
  ld_indexable(buffer)(uint,uint,uint,uint) r1.w, r12.xxxx, t3.yzwx  // r1.w <- realLightIndex

#line 950
  iadd r12.x, r12.x, l(1)  // r12.x <- streams.lightIndex_id172

#line 952
  ishl r2.w, r1.w, l(1)
  ld_indexable(buffer)(float,float,float,float) r14.xyzw, r2.wwww, t4.xyzw  // r14.x <- pointLight1.x; r14.y <- pointLight1.y; r14.z <- pointLight1.z; r14.w <- pointLight1.w

#line 953
  bfi r1.w, l(31), l(1), r1.w, l(1)
  ld_indexable(buffer)(float,float,float,float) r15.xyz, r1.wwww, t4.xyzw  // r15.x <- pointLight2.x; r15.y <- pointLight2.y; r15.z <- pointLight2.z

#line 570
  mov r16.x, r4.w
  mov r16.yz, r8.xxyx
  add r14.xyz, r14.xyzx, -r16.xyzx  // r14.x <- lightVector.x; r14.y <- lightVector.y; r14.z <- lightVector.z

#line 571
  dp3 r1.w, r14.xyzx, r14.xyzx
  sqrt r2.w, r1.w  // r2.w <- lightVectorLength

#line 572
  div r14.xyz, r14.xyzx, r2.wwww  // r14.x <- lightVectorNorm.x; r14.y <- lightVectorNorm.y; r14.z <- lightVectorNorm.z

#line 454
  max r2.w, r1.w, l(0.000100)
  div r2.w, l(1.000000, 1.000000, 1.000000, 1.000000), r2.w  // r2.w <- attenuation

#line 338
  mul r1.w, r14.w, r1.w  // r1.w <- factor

#line 339
  mad r1.w, -r1.w, r1.w, l(1.000000)
  max r1.w, r1.w, l(0.000000)  // r1.w <- smoothFactor

#line 340
  mul r1.w, r1.w, r1.w  // r1.w <- <SmoothDistanceAttenuation_id84 return value>

#line 455
  mul r1.w, r1.w, r2.w  // r1.w <- attenuation

#line 1191
  dp3 r2.w, r4.xyzx, r14.xyzx
  max r2.w, r2.w, l(0.000100)  // r2.w <- streams.NdotL_id48

#line 1193
  mul r15.xyz, r1.wwww, r15.xyzx
  mul r15.xyz, r2.wwww, r15.xyzx  // r15.x <- streams.lightColorNdotL_id43.x; r15.y <- streams.lightColorNdotL_id43.y; r15.z <- streams.lightColorNdotL_id43.z

#line 1227
  mov r9.xy, r8.zwzz
  add r9.xyw, r14.xyxz, r9.xyxz
  dp3 r1.w, r9.xywx, r9.xywx
  rsq r1.w, r1.w
  mul r9.xyw, r1.wwww, r9.xyxw  // r9.x <- streams.H_id74.x; r9.y <- streams.H_id74.y; r9.w <- streams.H_id74.z

#line 1229
  dp3_sat r1.w, r14.xyzx, r9.xywx  // r1.w <- streams.LdotH_id76

#line 1223
  mul r9.xyw, r10.xyxz, r15.xyxz
  mul r9.xyw, r7.zzzz, r9.xyxw

#line 1389
  mad r9.xyw, r9.xyxw, l(0.318310, 0.318310, 0.000000, 0.318310), r13.xyxz  // r9.x <- directLightingContribution.x; r9.y <- directLightingContribution.y; r9.w <- directLightingContribution.z

#line 583
  mov r11.x, r10.w
  add r14.xyz, -r11.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
  add r1.w, -r1.w, l(1.000000)
  mul r3.w, r1.w, r1.w
  mul r3.w, r3.w, r3.w
  mul r1.w, r1.w, r3.w
  mad r14.xyz, r14.xyzx, r1.wwww, r11.xyzx  // r14.x <- <FresnelSchlick_id200 return value>.x; r14.y <- <FresnelSchlick_id200 return value>.y; r14.z <- <FresnelSchlick_id200 return value>.z

#line 579
  mad r1.w, r2.w, l(0.500000), l(0.500000)
  div r1.w, r2.w, r1.w  // r1.w <- <VisibilityhSchlickGGX_id216 return value>
  mad r3.w, r12.y, l(0.500000), l(0.500000)
  div r3.w, r12.y, r3.w  // r3.w <- <VisibilityhSchlickGGX_id216 return value>

#line 733
  mul r1.w, r1.w, r3.w
  mul r2.w, r12.y, r2.w
  div r1.w, r1.w, r2.w  // r1.w <- <VisibilitySmithSchlickGGX_id218 return value>

#line 1217
  mul r14.xyz, r1.wwww, r14.xyzx
  mul r14.xyz, r15.xyzx, r14.xyzx

#line 1218
  mul r14.xyz, r7.wwww, r14.xyzx

#line 1393
  mad r13.xyz, r14.xyzx, l(0.079577, 0.079577, 0.079577, 0.000000), r9.xywx  // r13.x <- directLightingContribution.x; r13.y <- directLightingContribution.y; r13.z <- directLightingContribution.z

#line 1379
  iadd r0.w, r0.w, l(1)

#line 1395
endloop   // r12.x <- streams.lightIndex_id172

#line 1183
ushr r0.x, r0.y, l(16)  // r0.x <- <GetMaxLightCount_id289 return value>

#line 1403
mov r0.yzw, v0.xxyz  // r0.y <- streams.PositionWS_id21.x; r0.z <- streams.PositionWS_id21.y; r0.w <- streams.PositionWS_id21.z
mov r1.w, cb1[3].y  // r1.w <- streams.matDiffuseSpecularAlphaBlend_id64.x
mov r2.xyz, r1.xyzx  // r2.x <- streams.normalWS_id18.x; r2.y <- streams.normalWS_id18.y; r2.z <- streams.normalWS_id18.z
mov r4.xyz, r3.xyzx  // r4.x <- streams.viewWS_id67.x; r4.y <- streams.viewWS_id67.y; r4.z <- streams.viewWS_id67.z
mov r8.xyz, r5.xyzx  // r8.x <- streams.matDiffuseVisible_id68.x; r8.y <- streams.matDiffuseVisible_id68.y; r8.z <- streams.matDiffuseVisible_id68.z
mov r9.xyz, r6.xyzx  // r9.x <- streams.matSpecularVisible_id70.x; r9.y <- streams.matSpecularVisible_id70.y; r9.z <- streams.matSpecularVisible_id70.z
mov r10.y, cb1[3].y  // r10.y <- streams.matDiffuseSpecularAlphaBlend_id64.y
mov r10.z, r7.y  // r10.z <- streams.NdotV_id71
mov r11.xyz, r13.xyzx  // r11.x <- directLightingContribution.x; r11.y <- directLightingContribution.y; r11.z <- directLightingContribution.z
mov r2.w, r12.x  // r2.w <- streams.lightIndex_id172
mov r3.w, l(0)  // r3.w <- i
loop 
  ige r4.w, r3.w, r0.x
  breakc_nz r4.w

#line 1405
  if_nz r4.w

#line 1407
    break 

#line 1408
  endif 

#line 921
  ld_indexable(buffer)(uint,uint,uint,uint) r4.w, r2.wwww, t3.yzwx  // r4.w <- realLightIndex

#line 922
  iadd r2.w, r2.w, l(1)  // r2.w <- streams.lightIndex_id172

#line 924
  ishl r5.w, r4.w, l(2)
  ld_indexable(buffer)(float,float,float,float) r12.yzw, r5.wwww, t5.wxyz  // r12.y <- spotLight1.x; r12.z <- spotLight1.y; r12.w <- spotLight1.z

#line 927
  bfi r14.xyz, l(30, 30, 30, 0), l(2, 2, 2, 0), r4.wwww, l(1, 2, 3, 0)

#line 925
  ld_indexable(buffer)(float,float,float,float) r15.xyz, r14.xxxx, t5.xyzw  // r15.x <- spotLight2.x; r15.y <- spotLight2.y; r15.z <- spotLight2.z

#line 926
  ld_indexable(buffer)(float,float,float,float) r14.xyw, r14.yyyy, t5.xywz  // r14.x <- spotLight3.x; r14.y <- spotLight3.y; r14.w <- spotLight3.z

#line 927
  ld_indexable(buffer)(float,float,float,float) r16.xyz, r14.zzzz, t5.xyzw  // r16.x <- spotLight4.x; r16.y <- spotLight4.y; r16.z <- spotLight4.z

#line 557
  add r12.yzw, -r0.yyzw, r12.yyzw  // r12.y <- lightVector.x; r12.z <- lightVector.y; r12.w <- lightVector.z

#line 558
  dp3 r4.w, r12.yzwy, r12.yzwy
  sqrt r5.w, r4.w  // r5.w <- lightVectorLength

#line 559
  div r12.yzw, r12.yyzw, r5.wwww  // r12.y <- lightVectorNorm.x; r12.z <- lightVectorNorm.y; r12.w <- lightVectorNorm.z

#line 447
  max r5.w, r4.w, l(0.000100)
  div r5.w, l(1.000000, 1.000000, 1.000000, 1.000000), r5.w  // r5.w <- attenuation

#line 332
  mul r4.w, r14.w, r4.w  // r4.w <- factor

#line 333
  mad r4.w, -r4.w, r4.w, l(1.000000)
  max r4.w, r4.w, l(0.000000)  // r4.w <- smoothFactor

#line 334
  mul r4.w, r4.w, r4.w  // r4.w <- <SmoothDistanceAttenuation_id95 return value>

#line 448
  mul r4.w, r4.w, r5.w  // r4.w <- attenuation

#line 439
  dp3 r5.w, -r15.xyzx, r12.yzwy  // r5.w <- cd

#line 440
  mad_sat r5.w, r5.w, r14.x, r14.y  // r5.w <- attenuation

#line 441
  mul r5.w, r5.w, r5.w

#line 565
  mul r4.w, r4.w, r5.w  // r4.w <- attenuation

#line 1169
  dp3 r5.w, r2.xyzx, r12.yzwy
  max r5.w, r5.w, l(0.000100)  // r5.w <- streams.NdotL_id48

#line 1171
  mul r14.xyz, r4.wwww, r16.xyzx
  mul r14.xyz, r5.wwww, r14.xyzx  // r14.x <- streams.lightColorNdotL_id43.x; r14.y <- streams.lightColorNdotL_id43.y; r14.z <- streams.lightColorNdotL_id43.z

#line 1227
  add r15.xyz, r4.xyzx, r12.yzwy
  dp3 r4.w, r15.xyzx, r15.xyzx
  rsq r4.w, r4.w
  mul r15.xyz, r4.wwww, r15.xyzx  // r15.x <- streams.H_id74.x; r15.y <- streams.H_id74.y; r15.z <- streams.H_id74.z

#line 1229
  dp3_sat r4.w, r12.yzwy, r15.xyzx  // r4.w <- streams.LdotH_id76

#line 1223
  mul r12.yzw, r8.xxyz, r14.xxyz
  mul r12.yzw, r1.wwww, r12.yyzw

#line 1413
  mad r12.yzw, r12.yyzw, l(0.000000, 0.318310, 0.318310, 0.318310), r11.xxyz  // r12.y <- directLightingContribution.x; r12.z <- directLightingContribution.y; r12.w <- directLightingContribution.z

#line 583
  add r15.xyz, -r9.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
  add r4.w, -r4.w, l(1.000000)
  mul r6.w, r4.w, r4.w
  mul r6.w, r6.w, r6.w
  mul r4.w, r4.w, r6.w
  mad r15.xyz, r15.xyzx, r4.wwww, r9.xyzx  // r15.x <- <FresnelSchlick_id200 return value>.x; r15.y <- <FresnelSchlick_id200 return value>.y; r15.z <- <FresnelSchlick_id200 return value>.z

#line 579
  mad r4.w, r5.w, l(0.500000), l(0.500000)
  div r4.w, r5.w, r4.w  // r4.w <- <VisibilityhSchlickGGX_id216 return value>
  mad r6.w, r10.z, l(0.500000), l(0.500000)
  div r6.w, r10.z, r6.w  // r6.w <- <VisibilityhSchlickGGX_id216 return value>

#line 733
  mul r4.w, r4.w, r6.w
  mul r5.w, r10.z, r5.w
  div r4.w, r4.w, r5.w  // r4.w <- <VisibilitySmithSchlickGGX_id218 return value>

#line 1217
  mul r15.xyz, r4.wwww, r15.xyzx
  mul r14.xyz, r14.xyzx, r15.xyzx

#line 1218
  mul r14.xyz, r10.yyyy, r14.xyzx

#line 1417
  mad r11.xyz, r14.xyzx, l(0.079577, 0.079577, 0.079577, 0.000000), r12.yzwy  // r11.x <- directLightingContribution.x; r11.y <- directLightingContribution.y; r11.z <- directLightingContribution.z

#line 1403
  iadd r3.w, r3.w, l(1)

#line 1419
endloop   // r2.w <- streams.lightIndex_id172

#line 1427
mov r0.xyz, v0.xyzx  // r0.x <- streams.PositionWS_id21.x; r0.y <- streams.PositionWS_id21.y; r0.z <- streams.PositionWS_id21.z
mov r0.w, cb1[3].y  // r0.w <- streams.matDiffuseSpecularAlphaBlend_id64.x
mov r2.xyz, r1.xyzx
mov r4.xyz, r3.xyzx
mov r8.xyz, r5.xyzx
mov r9.xyz, r6.xyzx
mov r10.y, cb1[3].y
mov r10.z, r7.y
mov r12.xyz, r11.xyzx  // r12.x <- directLightingContribution.x; r12.y <- directLightingContribution.y; r12.z <- directLightingContribution.z
mov r1.w, l(0)  // r1.w <- i
loop 
  ige r2.w, r1.w, l(64)
  breakc_nz r2.w

#line 1429
  ige r2.w, r1.w, cb0[27].x
  if_nz r2.w

#line 1431
    break 

#line 1432
  endif 

#line 901
  ishl r2.w, r1.w, l(1)

#line 549
  add r13.xyz, -r0.xyzx, cb0[r2.w + 28].xyzx  // r13.x <- lightVector.x; r13.y <- lightVector.y; r13.z <- lightVector.z

#line 550
  dp3 r3.w, r13.xyzx, r13.xyzx
  sqrt r4.w, r3.w  // r4.w <- lightVectorLength

#line 551
  div r13.xyz, r13.xyzx, r4.wwww  // r13.x <- lightVectorNorm.x; r13.y <- lightVectorNorm.y; r13.z <- lightVectorNorm.z

#line 433
  max r4.w, r3.w, l(0.000100)
  div r4.w, l(1.000000, 1.000000, 1.000000, 1.000000), r4.w  // r4.w <- attenuation

#line 326
  mul r3.w, r3.w, cb0[r2.w + 28].w  // r3.w <- factor

#line 327
  mad r3.w, -r3.w, r3.w, l(1.000000)
  max r3.w, r3.w, l(0.000000)  // r3.w <- smoothFactor

#line 328
  mul r3.w, r3.w, r3.w  // r3.w <- <SmoothDistanceAttenuation_id106 return value>

#line 434
  mul r3.w, r3.w, r4.w  // r3.w <- attenuation

#line 1147
  dp3 r4.w, r2.xyzx, r13.xyzx
  max r4.w, r4.w, l(0.000100)  // r4.w <- streams.NdotL_id48

#line 1149
  mul r14.xyz, r3.wwww, cb0[r2.w + 29].xyzx
  mul r14.xyz, r4.wwww, r14.xyzx  // r14.x <- streams.lightColorNdotL_id43.x; r14.y <- streams.lightColorNdotL_id43.y; r14.z <- streams.lightColorNdotL_id43.z

#line 1227
  add r15.xyz, r4.xyzx, r13.xyzx
  dp3 r2.w, r15.xyzx, r15.xyzx
  rsq r2.w, r2.w
  mul r15.xyz, r2.wwww, r15.xyzx  // r15.x <- streams.H_id74.x; r15.y <- streams.H_id74.y; r15.z <- streams.H_id74.z

#line 1229
  dp3_sat r2.w, r13.xyzx, r15.xyzx  // r2.w <- streams.LdotH_id76

#line 1223
  mul r13.xyz, r8.xyzx, r14.xyzx
  mul r13.xyz, r0.wwww, r13.xyzx

#line 1437
  mad r13.xyz, r13.xyzx, l(0.318310, 0.318310, 0.318310, 0.000000), r12.xyzx  // r13.x <- directLightingContribution.x; r13.y <- directLightingContribution.y; r13.z <- directLightingContribution.z

#line 583
  add r15.xyz, -r9.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
  add r2.w, -r2.w, l(1.000000)
  mul r3.w, r2.w, r2.w
  mul r3.w, r3.w, r3.w
  mul r2.w, r2.w, r3.w
  mad r15.xyz, r15.xyzx, r2.wwww, r9.xyzx  // r15.x <- <FresnelSchlick_id200 return value>.x; r15.y <- <FresnelSchlick_id200 return value>.y; r15.z <- <FresnelSchlick_id200 return value>.z

#line 579
  mad r2.w, r4.w, l(0.500000), l(0.500000)
  div r2.w, r4.w, r2.w  // r2.w <- <VisibilityhSchlickGGX_id216 return value>
  mad r3.w, r10.z, l(0.500000), l(0.500000)
  div r3.w, r10.z, r3.w  // r3.w <- <VisibilityhSchlickGGX_id216 return value>

#line 733
  mul r2.w, r2.w, r3.w
  mul r3.w, r10.z, r4.w
  div r2.w, r2.w, r3.w  // r2.w <- <VisibilitySmithSchlickGGX_id218 return value>

#line 1217
  mul r15.xyz, r2.wwww, r15.xyzx
  mul r14.xyz, r14.xyzx, r15.xyzx

#line 1218
  mul r14.xyz, r10.yyyy, r14.xyzx

#line 1441
  mad r12.xyz, r14.xyzx, l(0.079577, 0.079577, 0.079577, 0.000000), r13.xyzx  // r12.x <- directLightingContribution.x; r12.y <- directLightingContribution.y; r12.z <- directLightingContribution.z

#line 1427
  iadd r1.w, r1.w, l(1)

#line 1443
endloop 

#line 1451
mov r0.xyz, v0.xyzx
mov r0.w, cb1[3].y
mov r2.xyz, r1.xyzx
mov r4.xyz, r3.xyzx
mov r8.xyz, r5.xyzx
mov r9.xyz, r6.xyzx
mov r10.y, cb1[3].y
mov r10.z, r7.y
mov r11.xyz, r12.xyzx  // r11.x <- directLightingContribution.x; r11.y <- directLightingContribution.y; r11.z <- directLightingContribution.z
mov r1.w, l(0)  // r1.w <- i
loop 
  ige r2.w, r1.w, l(8)
  breakc_nz r2.w

#line 1453
  ige r2.w, r1.w, cb0[155].w
  if_nz r2.w

#line 1455
    break 

#line 1456
  endif 

#line 879
  ishl r2.w, r1.w, l(2)

#line 536
  add r13.xyz, -r0.xyzx, cb0[r2.w + 156].xyzx  // r13.x <- lightVector.x; r13.y <- lightVector.y; r13.z <- lightVector.z

#line 537
  dp3 r3.w, r13.xyzx, r13.xyzx
  sqrt r4.w, r3.w  // r4.w <- lightVectorLength

#line 538
  div r13.xyz, r13.xyzx, r4.wwww  // r13.x <- lightVectorNorm.x; r13.y <- lightVectorNorm.y; r13.z <- lightVectorNorm.z

#line 426
  max r4.w, r3.w, l(0.000100)
  div r4.w, l(1.000000, 1.000000, 1.000000, 1.000000), r4.w  // r4.w <- attenuation

#line 320
  mul r3.w, r3.w, cb0[r2.w + 158].z  // r3.w <- factor

#line 321
  mad r3.w, -r3.w, r3.w, l(1.000000)
  max r3.w, r3.w, l(0.000000)  // r3.w <- smoothFactor

#line 322
  mul r3.w, r3.w, r3.w  // r3.w <- <SmoothDistanceAttenuation_id116 return value>

#line 427
  mul r3.w, r3.w, r4.w  // r3.w <- attenuation

#line 418
  dp3 r4.w, -cb0[r2.w + 157].xyzx, r13.xyzx  // r4.w <- cd

#line 419
  mad_sat r4.w, r4.w, cb0[r2.w + 158].x, cb0[r2.w + 158].y  // r4.w <- attenuation

#line 420
  mul r4.w, r4.w, r4.w

#line 544
  mul r3.w, r3.w, r4.w  // r3.w <- attenuation

#line 1125
  dp3 r4.w, r2.xyzx, r13.xyzx
  max r4.w, r4.w, l(0.000100)  // r4.w <- streams.NdotL_id48

#line 1127
  mul r14.xyz, r3.wwww, cb0[r2.w + 159].xyzx
  mul r14.xyz, r4.wwww, r14.xyzx  // r14.x <- streams.lightColorNdotL_id43.x; r14.y <- streams.lightColorNdotL_id43.y; r14.z <- streams.lightColorNdotL_id43.z

#line 1227
  add r15.xyz, r4.xyzx, r13.xyzx
  dp3 r2.w, r15.xyzx, r15.xyzx
  rsq r2.w, r2.w
  mul r15.xyz, r2.wwww, r15.xyzx  // r15.x <- streams.H_id74.x; r15.y <- streams.H_id74.y; r15.z <- streams.H_id74.z

#line 1229
  dp3_sat r2.w, r13.xyzx, r15.xyzx  // r2.w <- streams.LdotH_id76

#line 1223
  mul r13.xyz, r8.xyzx, r14.xyzx
  mul r13.xyz, r0.wwww, r13.xyzx

#line 1461
  mad r13.xyz, r13.xyzx, l(0.318310, 0.318310, 0.318310, 0.000000), r11.xyzx  // r13.x <- directLightingContribution.x; r13.y <- directLightingContribution.y; r13.z <- directLightingContribution.z

#line 583
  add r15.xyz, -r9.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
  add r2.w, -r2.w, l(1.000000)
  mul r3.w, r2.w, r2.w
  mul r3.w, r3.w, r3.w
  mul r2.w, r2.w, r3.w
  mad r15.xyz, r15.xyzx, r2.wwww, r9.xyzx  // r15.x <- <FresnelSchlick_id200 return value>.x; r15.y <- <FresnelSchlick_id200 return value>.y; r15.z <- <FresnelSchlick_id200 return value>.z

#line 579
  mad r2.w, r4.w, l(0.500000), l(0.500000)
  div r2.w, r4.w, r2.w  // r2.w <- <VisibilityhSchlickGGX_id216 return value>
  mad r3.w, r10.z, l(0.500000), l(0.500000)
  div r3.w, r10.z, r3.w  // r3.w <- <VisibilityhSchlickGGX_id216 return value>

#line 733
  mul r2.w, r2.w, r3.w
  mul r3.w, r10.z, r4.w
  div r2.w, r2.w, r3.w  // r2.w <- <VisibilitySmithSchlickGGX_id218 return value>

#line 1217
  mul r15.xyz, r2.wwww, r15.xyzx
  mul r14.xyz, r14.xyzx, r15.xyzx

#line 1218
  mul r14.xyz, r10.yyyy, r14.xyzx

#line 1465
  mad r11.xyz, r14.xyzx, l(0.079577, 0.079577, 0.079577, 0.000000), r13.xyzx  // r11.x <- directLightingContribution.x; r11.y <- directLightingContribution.y; r11.z <- directLightingContribution.z

#line 1451
  iadd r1.w, r1.w, l(1)

#line 1467
endloop 

#line 855
mov r7.x, l(0)
sample_l_indexable(texture2d)(float,float,float,float) r0.xy, r7.xyxx, t0.xyzw, s0, l(0.000000)  // r0.x <- environmentLightingDFG.x; r0.y <- environmentLightingDFG.y

#line 856
mad r0.xyz, r6.xyzx, r0.xxxx, r0.yyyy  // r0.x <- <Compute_id442 return value>.x; r0.y <- <Compute_id442 return value>.y; r0.z <- <Compute_id442 return value>.z

#line 1108
mul r2.xyz, r0.xyzx, cb2[88].xyzx  // r2.x <- <ComputeEnvironmentLightContribution_id621 return value>.x; r2.y <- <ComputeEnvironmentLightContribution_id621 return value>.y; r2.z <- <ComputeEnvironmentLightContribution_id621 return value>.z

#line 1479
mad r2.xyz, r5.xyzx, cb2[88].xyzx, r2.xyzx  // r2.x <- environmentLightingContribution.x; r2.y <- environmentLightingContribution.y; r2.z <- environmentLightingContribution.z

#line 1097
dp3 r0.w, r1.xyzx, cb2[98].xyzx  // r0.w <- sampleDirection.x
dp3 r1.w, r1.xyzx, cb2[99].xyzx  // r1.w <- sampleDirection.y
dp3 r2.w, r1.xyzx, cb2[100].xyzx  // r2.w <- sampleDirection.z

#line 672
mul r3.w, r1.w, r1.w  // r3.w <- y2

#line 673
mul r4.x, r2.w, r2.w  // r4.x <- z2

#line 677
mad r4.yzw, cb2[90].xxyz, r1.wwww, cb2[89].xxyz  // r4.y <- color.x; r4.z <- color.y; r4.w <- color.z

#line 678
mad r4.yzw, cb2[91].xxyz, -r2.wwww, r4.yyzw

#line 679
mad r4.yzw, cb2[92].xxyz, r0.wwww, r4.yyzw

#line 682
mul r6.xyz, r1.wwww, cb2[93].xyzx
mad r4.yzw, r6.xxyz, r0.wwww, r4.yyzw

#line 683
mul r6.xyz, r1.wwww, cb2[94].xyzx
mad r4.yzw, r6.xxyz, -r2.wwww, r4.yyzw

#line 684
mad r1.w, r4.x, l(3.000000), l(-1.000000)
mad r4.xyz, cb2[95].xyzx, r1.wwww, r4.yzwy  // r4.x <- color.x; r4.y <- color.y; r4.z <- color.z

#line 685
mul r6.xyz, r0.wwww, cb2[96].xyzx
mad r4.xyz, r6.xyzx, -r2.wwww, r4.xyzx

#line 686
mad r0.w, r0.w, r0.w, -r3.w
mad r4.xyz, cb2[97].xyzx, r0.wwww, r4.xyzx

#line 1099
mul r4.xyz, r4.xyzx, cb2[102].xxxx
mul r4.xyz, r4.xyzx, cb1[3].yyyy  // r4.x <- streams.envLightDiffuseColor_id46.x; r4.y <- streams.envLightDiffuseColor_id46.y; r4.z <- streams.envLightDiffuseColor_id46.z

#line 1100
dp3 r0.w, -r3.xyzx, r1.xyzx
add r0.w, r0.w, r0.w
mad r3.xyz, r1.xyzx, -r0.wwww, -r3.xyzx  // r3.x <- sampleDirection.x; r3.y <- sampleDirection.y; r3.z <- sampleDirection.z

#line 1101
dp3 r6.x, r3.xyzx, cb2[98].xyzx  // r6.x <- sampleDirection.x
dp3 r6.y, r3.xyzx, cb2[99].xyzx  // r6.y <- sampleDirection.y
dp3 r0.w, r3.xyzx, cb2[100].xyzx  // r0.w <- sampleDirection.z

#line 1102
mov r6.z, -r0.w  // r6.z <- sampleDirection.z

#line 841
sample_l_indexable(texturecube)(float,float,float,float) r6.xyz, r6.xyzx, t6.xyzw, s0, cb2[97].w  // r6.x <- <Compute_id335 return value>.x; r6.y <- <Compute_id335 return value>.y; r6.z <- <Compute_id335 return value>.z

#line 1103
mul r6.xyz, r6.xyzx, cb2[102].xxxx
mul r6.xyz, r6.xyzx, cb1[3].yyyy  // r6.x <- streams.envLightSpecularColor_id47.x; r6.y <- streams.envLightSpecularColor_id47.y; r6.z <- streams.envLightSpecularColor_id47.z

#line 1487
mad r2.xyz, r5.xyzx, r4.xyzx, r2.xyzx

#line 1491
mad r2.xyz, r0.xyzx, r6.xyzx, r2.xyzx

#line 1085
dp3 r0.w, r1.xyzx, cb2[112].xyzx  // r0.w <- sampleDirection.x
dp3 r1.w, r1.xyzx, cb2[113].xyzx  // r1.w <- sampleDirection.y
dp3 r1.x, r1.xyzx, cb2[114].xyzx  // r1.x <- sampleDirection.z

#line 647
mul r1.yz, r1.wwxw, r1.wwxw  // r1.y <- y2; r1.z <- z2

#line 652
mad r4.xyz, cb2[104].xyzx, r1.wwww, cb2[103].xyzx  // r4.x <- color.x; r4.y <- color.y; r4.z <- color.z

#line 653
mad r4.xyz, cb2[105].xyzx, -r1.xxxx, r4.xyzx

#line 654
mad r4.xyz, cb2[106].xyzx, r0.wwww, r4.xyzx

#line 657
mul r6.xyz, r1.wwww, cb2[107].xyzx
mad r4.xyz, r6.xyzx, r0.wwww, r4.xyzx

#line 658
mul r6.xyz, r1.wwww, cb2[108].xyzx
mad r4.xyz, r6.xyzx, -r1.xxxx, r4.xyzx

#line 659
mad r1.z, r1.z, l(3.000000), l(-1.000000)
mad r4.xyz, cb2[109].xyzx, r1.zzzz, r4.xyzx

#line 660
mul r6.xyz, r0.wwww, cb2[110].xyzx
mad r1.xzw, r6.xxyz, -r1.xxxx, r4.xxyz  // r1.x <- color.x; r1.z <- color.y; r1.w <- color.z

#line 661
mad r0.w, r0.w, r0.w, -r1.y
mad r1.xyz, cb2[111].xyzx, r0.wwww, r1.xzwx  // r1.y <- color.y; r1.z <- color.z

#line 1087
mul r1.xyz, r1.xyzx, cb2[116].xxxx
mul r1.xyz, r1.xyzx, cb1[3].yyyy  // r1.x <- streams.envLightDiffuseColor_id46.x; r1.y <- streams.envLightDiffuseColor_id46.y; r1.z <- streams.envLightDiffuseColor_id46.z

#line 1089
dp3 r4.x, r3.xyzx, cb2[112].xyzx  // r4.x <- sampleDirection.x
dp3 r4.y, r3.xyzx, cb2[113].xyzx  // r4.y <- sampleDirection.y
dp3 r0.w, r3.xyzx, cb2[114].xyzx  // r0.w <- sampleDirection.z

#line 1090
mov r4.z, -r0.w  // r4.z <- sampleDirection.z

#line 826
sample_l_indexable(texturecube)(float,float,float,float) r3.xyz, r4.xyzx, t7.xyzw, s0, cb2[111].w  // r3.x <- <Compute_id355 return value>.x; r3.y <- <Compute_id355 return value>.y; r3.z <- <Compute_id355 return value>.z

#line 1091
mul r3.xyz, r3.xyzx, cb2[116].xxxx
mul r3.xyz, r3.xyzx, cb1[3].yyyy  // r3.x <- streams.envLightSpecularColor_id47.x; r3.y <- streams.envLightSpecularColor_id47.y; r3.z <- streams.envLightSpecularColor_id47.z

#line 1499
mad r1.xyz, r5.xyzx, r1.xyzx, r2.xyzx  // r1.x <- environmentLightingContribution.x; r1.y <- environmentLightingContribution.y; r1.z <- environmentLightingContribution.z

#line 1503
mad r0.xyz, r0.xyzx, r3.xyzx, r1.xyzx  // r0.x <- environmentLightingContribution.x; r0.y <- environmentLightingContribution.y; r0.z <- environmentLightingContribution.z

#line 1518
mad r0.xyz, r11.xyzx, l(3.141593, 3.141593, 3.141593, 0.000000), r0.xyzx  // r0.x <- streams.shadingColor_id72.x; r0.y <- streams.shadingColor_id72.y; r0.z <- streams.shadingColor_id72.z

#line 1327
mad o0.xyz, cb1[2].xyzx, cb1[3].xxxx, r0.xyzx

#line 1323
mul o0.w, cb1[2].w, cb1[3].y

#line 1727
ret 
// Approximately 593 instruction slots used
***************************
*************************/
const static int TMaxLightCount_id85 = 1;
const static int TCascadeCountBase_id149 = 4;
const static int TLightCountBase_id150 = 1;
const static int TCascadeCount_id157 = 4;
const static int TLightCount_id158 = 1;
const static bool TBlendCascades_id159 = true;
const static bool TDepthRangeAuto_id160 = true;
const static bool TCascadeDebug_id161 = false;
const static bool TComputeTransmittance_id162 = false;
const static int TFilterSize_id164 = 7;
const static int TMaxLightCount_id181 = 64;
const static int TMaxLightCount_id184 = 8;
const static int TOrder_id188 = 3;
const static int TOrder_id190 = 3;
const static bool TInvert_id222 = true;
const static float Value_id218 = 1;
const static float4 Value_id254 = float4(1, 1, 1, 1);
const static bool TIsEnergyConservative_id261 = false;
static const float PI_id263 = 3.14159265358979323846;
const static bool TUseAlphaFromEmissive_id273 = true;
struct PS_STREAMS 
{
    float4 ScreenPosition_id165;
    float3 normalWS_id18;
    float4 PositionWS_id21;
    float DepthVS_id22;
    float4 ShadingPosition_id0;
    bool IsFrontFace_id1;
    float3 meshNormalWS_id16;
    float3 viewWS_id67;
    float3 shadingColor_id72;
    float matBlend_id39;
    float3 matNormal_id50;
    float4 matColorBase_id51;
    float4 matDiffuse_id52;
    float3 matDiffuseVisible_id68;
    float3 matSpecular_id54;
    float3 matSpecularVisible_id70;
    float matSpecularIntensity_id55;
    float matGlossiness_id53;
    float alphaRoughness_id69;
    float matAmbientOcclusion_id56;
    float matAmbientOcclusionDirectLightingFactor_id57;
    float matCavity_id58;
    float matCavityDiffuse_id59;
    float matCavitySpecular_id60;
    float4 matEmissive_id61;
    float matEmissiveIntensity_id62;
    float matScatteringStrength_id63;
    float2 matDiffuseSpecularAlphaBlend_id64;
    float3 matAlphaBlendColor_id65;
    float matAlphaDiscard_id66;
    float shadingColorAlpha_id73;
    float4 Input_0_id209;
    float4 Input_1_id229;
    float Input_2_id237;
    float Input_3_id245;
    float3 lightPositionWS_id40;
    float3 lightDirectionWS_id41;
    float3 lightColor_id42;
    float3 lightColorNdotL_id43;
    float3 lightSpecularColorNdotL_id44;
    float lightAttenuation_id45;
    float3 envLightDiffuseColor_id46;
    float3 envLightSpecularColor_id47;
    float lightDirectAmbientOcclusion_id49;
    float NdotL_id48;
    float NdotV_id71;
    float thicknessWS_id83;
    float3 shadowColor_id82;
    float3 H_id74;
    float NdotH_id75;
    float LdotH_id76;
    float VdotH_id77;
    uint2 lightData_id171;
    int lightIndex_id172;
    float4 ColorTarget_id2;
};
struct PS_OUTPUT 
{
    float4 ColorTarget_id2 : SV_Target0;
};
struct PS_INPUT 
{
    float4 PositionWS_id21 : POSITION_WS;
    float4 ShadingPosition_id0 : SV_Position;
    float DepthVS_id22 : DEPTH_VS;
    float3 normalWS_id18 : NORMALWS;
    float4 ScreenPosition_id165 : SCREENPOSITION_ID165_SEM;
    bool IsFrontFace_id1 : SV_IsFrontFace;
};
struct VS_STREAMS 
{
    float4 Position_id20;
    float3 meshNormal_id15;
    float4 PositionH_id23;
    float3 meshNormalWS_id16;
    float4 PositionWS_id21;
    float4 ShadingPosition_id0;
    float DepthVS_id22;
    float3 normalWS_id18;
    float4 ScreenPosition_id165;
};
struct VS_OUTPUT 
{
    float4 PositionWS_id21 : POSITION_WS;
    float4 ShadingPosition_id0 : SV_Position;
    float DepthVS_id22 : DEPTH_VS;
    float3 normalWS_id18 : NORMALWS;
    float4 ScreenPosition_id165 : SCREENPOSITION_ID165_SEM;
};
struct VS_INPUT 
{
    float4 Position_id20 : POSITION;
    float3 meshNormal_id15 : NORMAL;
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
    float4x4 World_id31;
    float4x4 WorldInverse_id32;
    float4x4 WorldInverseTranspose_id33;
    float4x4 WorldView_id34;
    float4x4 WorldViewInverse_id35;
    float4x4 WorldViewProjection_id36;
    float3 WorldScale_id37;
    float4 EyeMS_id38;
    float4 _padding_PerDraw_Default;
    int LightCount_id180;
    PointLightData Lights_id182[TMaxLightCount_id181];
    int LightCount_id183;
    SpotLightData Lights_id185[TMaxLightCount_id184];
    float4 _padding_PerDraw_Lighting;
};
cbuffer PerMaterial 
{
    float4 InputValue_id210;
    float constantFloat_id224;
    float4 InputValue_id230;
    float InputValue_id238;
    float InputValue_id246;
};
cbuffer PerView 
{
    float4x4 View_id24;
    float4x4 ViewInverse_id25;
    float4x4 Projection_id26;
    float4x4 ProjectionInverse_id27;
    float4x4 ViewProjection_id28;
    float2 ProjScreenRay_id29;
    float4 Eye_id30;
    float NearClipPlane_id166 = 1.0f;
    float FarClipPlane_id167 = 100.0f;
    float2 ZProjection_id168;
    float2 ViewSize_id169;
    float AspectRatio_id170;
    float4 _padding_PerView_Default;
    int LightCount_id84;
    DirectionalLightData Lights_id86[TMaxLightCount_id85];
    float2 ShadowMapTextureSize_id88;
    float2 ShadowMapTextureTexelSize_id89;
    float4x4 WorldToShadowCascadeUV_id151[TCascadeCountBase_id149 * TLightCountBase_id150];
    float4x4 InverseWorldToShadowCascadeUV_id152[TCascadeCountBase_id149 * TLightCountBase_id150];
    float4x4 ViewMatrices_id153[TCascadeCountBase_id149 * TLightCountBase_id150];
    float2 DepthRanges_id154[TCascadeCountBase_id149 * TLightCountBase_id150];
    float DepthBiases_id155[TLightCountBase_id150];
    float OffsetScales_id156[TLightCountBase_id150];
    float CascadeDepthSplits_id163[TCascadeCount_id157 * TLightCount_id158];
    float ClusterDepthScale_id175;
    float ClusterDepthBias_id176;
    float2 ClusterStride_id177;
    float3 AmbientLight_id186;
    float3 SphericalColors_id191[TOrder_id190 * TOrder_id190];
    float MipCount_id192;
    float4x4 SkyMatrix_id194;
    float Intensity_id195;
    float3 SphericalColors_id202[TOrder_id190 * TOrder_id190];
    float MipCount_id203;
    float4x4 SkyMatrix_id205;
    float Intensity_id206;
    float4 _padding_PerView_Lighting;
};
cbuffer Globals 
{
    float2 Texture0TexelSize_id91;
    float2 Texture1TexelSize_id93;
    float2 Texture2TexelSize_id95;
    float2 Texture3TexelSize_id97;
    float2 Texture4TexelSize_id99;
    float2 Texture5TexelSize_id101;
    float2 Texture6TexelSize_id103;
    float2 Texture7TexelSize_id105;
    float2 Texture8TexelSize_id107;
    float2 Texture9TexelSize_id109;
};
Texture2D Texture0_id90;
Texture2D Texture1_id92;
Texture2D Texture2_id94;
Texture2D Texture3_id96;
Texture2D Texture4_id98;
Texture2D Texture5_id100;
Texture2D Texture6_id102;
Texture2D Texture7_id104;
Texture2D Texture8_id106;
Texture2D Texture9_id108;
TextureCube TextureCube0_id110;
TextureCube TextureCube1_id111;
TextureCube TextureCube2_id112;
TextureCube TextureCube3_id113;
Texture3D Texture3D0_id114;
Texture3D Texture3D1_id115;
Texture3D Texture3D2_id116;
Texture3D Texture3D3_id117;
SamplerState Sampler_id118;
SamplerState PointSampler_id119 
{
    Filter = MIN_MAG_MIP_POINT;
};
SamplerState LinearSampler_id120 
{
    Filter = MIN_MAG_MIP_LINEAR;
};
SamplerState LinearBorderSampler_id121 
{
    Filter = MIN_MAG_MIP_LINEAR;
    AddressU = Border;
    AddressV = Border;
};
SamplerComparisonState LinearClampCompareLessEqualSampler_id122 
{
    Filter = COMPARISON_MIN_MAG_LINEAR_MIP_POINT;
    AddressU = Clamp;
    AddressV = Clamp;
    ComparisonFunc = LessEqual;
};
SamplerState AnisotropicSampler_id123 
{
    Filter = ANISOTROPIC;
};
SamplerState AnisotropicRepeatSampler_id124 
{
    Filter = ANISOTROPIC;
    AddressU = Wrap;
    AddressV = Wrap;
    MaxAnisotropy = 16;
};
SamplerState PointRepeatSampler_id125 
{
    Filter = MIN_MAG_MIP_POINT;
    AddressU = Wrap;
    AddressV = Wrap;
};
SamplerState LinearRepeatSampler_id126 
{
    Filter = MIN_MAG_MIP_LINEAR;
    AddressU = Wrap;
    AddressV = Wrap;
};
SamplerState RepeatSampler_id127 
{
    AddressU = Wrap;
    AddressV = Wrap;
};
SamplerState Sampler0_id128;
SamplerState Sampler1_id129;
SamplerState Sampler2_id130;
SamplerState Sampler3_id131;
SamplerState Sampler4_id132;
SamplerState Sampler5_id133;
SamplerState Sampler6_id134;
SamplerState Sampler7_id135;
SamplerState Sampler8_id136;
SamplerState Sampler9_id137;
Texture2D EnvironmentLightingDFG_LUT_id264;
Texture2D ShadowMapTexture_id87;
Texture3D<uint2> LightClusters_id173;
Buffer<uint> LightIndices_id174;
Buffer<float4> PointLights_id178;
Buffer<float4> SpotLights_id179;
TextureCube CubeMap_id193;
TextureCube CubeMap_id204;
float4 Project_id62(float4 vec, float4x4 mat)
{
    float4 vecProjected = mul(vec, mat);
    vecProjected.xyz /= vecProjected.w;
    return vecProjected;
}
float SmoothDistanceAttenuation_id116(float squaredDistance, float lightInvSquareRadius)
{
    float factor = squaredDistance * lightInvSquareRadius;
    float smoothFactor = saturate(1.0f - factor * factor);
    return smoothFactor * smoothFactor;
}
float SmoothDistanceAttenuation_id106(float squaredDistance, float lightInvSquareRadius)
{
    float factor = squaredDistance * lightInvSquareRadius;
    float smoothFactor = saturate(1.0f - factor * factor);
    return smoothFactor * smoothFactor;
}
float SmoothDistanceAttenuation_id95(float squaredDistance, float lightInvSquareRadius)
{
    float factor = squaredDistance * lightInvSquareRadius;
    float smoothFactor = saturate(1.0f - factor * factor);
    return smoothFactor * smoothFactor;
}
float SmoothDistanceAttenuation_id84(float squaredDistance, float lightInvSquareRadius)
{
    float factor = squaredDistance * lightInvSquareRadius;
    float smoothFactor = saturate(1.0f - factor * factor);
    return smoothFactor * smoothFactor;
}
float Get3x3FilterKernel_id72(float2 base_uv, float2 st, out float3 kernel[4])
{
    float2 uvW0 = (3 - 2 * st);
    float2 uvW1 = (1 + 2 * st);
    float2 uv0 = (2 - st) / uvW0 - 1;
    float2 uv1 = st / uvW1 + 1;
    kernel[0] = float3(base_uv + uv0 * ShadowMapTextureTexelSize_id89, uvW0.x * uvW0.y);
    kernel[1] = float3(base_uv + float2(uv1.x, uv0.y) * ShadowMapTextureTexelSize_id89, uvW1.x * uvW0.y);
    kernel[2] = float3(base_uv + float2(uv0.x, uv1.y) * ShadowMapTextureTexelSize_id89, uvW0.x * uvW1.y);
    kernel[3] = float3(base_uv + uv1 * ShadowMapTextureTexelSize_id89, uvW1.x * uvW1.y);
    return 16.0;
}
float Get5x5FilterKernel_id71(float2 base_uv, float2 st, out float3 kernel[9])
{
    float2 uvW0 = (4 - 3 * st);
    float2 uvW1 = 7;
    float2 uvW2 = (1 + 3 * st);
    float2 uv0 = (3 - 2 * st) / uvW0 - 2;
    float2 uv1 = (3 + st) / uvW1;
    float2 uv2 = st / uvW2 + 2;
    kernel[0] = float3(base_uv + uv0 * ShadowMapTextureTexelSize_id89, uvW0.x * uvW0.y);
    kernel[1] = float3(base_uv + float2(uv1.x, uv0.y) * ShadowMapTextureTexelSize_id89, uvW1.x * uvW0.y);
    kernel[2] = float3(base_uv + float2(uv2.x, uv0.y) * ShadowMapTextureTexelSize_id89, uvW2.x * uvW0.y);
    kernel[3] = float3(base_uv + float2(uv0.x, uv1.y) * ShadowMapTextureTexelSize_id89, uvW0.x * uvW1.y);
    kernel[4] = float3(base_uv + uv1 * ShadowMapTextureTexelSize_id89, uvW1.x * uvW1.y);
    kernel[5] = float3(base_uv + float2(uv2.x, uv1.y) * ShadowMapTextureTexelSize_id89, uvW2.x * uvW1.y);
    kernel[6] = float3(base_uv + float2(uv0.x, uv2.y) * ShadowMapTextureTexelSize_id89, uvW0.x * uvW2.y);
    kernel[7] = float3(base_uv + float2(uv1.x, uv2.y) * ShadowMapTextureTexelSize_id89, uvW1.x * uvW2.y);
    kernel[8] = float3(base_uv + uv2 * ShadowMapTextureTexelSize_id89, uvW2.x * uvW2.y);
    return 144.0;
}
float SampleThickness_id73(float3 shadowSpaceCoordinate, float3 pixelPositionWS, float2 depthRanges, float4x4 inverseWorldToShadowCascadeUV, bool isOrthographic)
{
    const float shadowMapDepth = ShadowMapTexture_id87.SampleLevel(LinearBorderSampler_id121, shadowSpaceCoordinate.xy, 0).r;
    float thickness;
    if (isOrthographic)
    {
        thickness = abs(shadowMapDepth - shadowSpaceCoordinate.z) * depthRanges.y;
    }
    else
    {
        float4 shadowmapPositionWorldSpace = Project_id62(float4(shadowSpaceCoordinate.xy, shadowMapDepth, 1.0), inverseWorldToShadowCascadeUV);
        thickness = distance(shadowmapPositionWorldSpace.xyz, pixelPositionWS.xyz);
    }
    return (thickness);
}
float Get7x7FilterKernel_id69(float2 base_uv, float2 st, out float3 kernel[16])
{
    float2 uvW0 = (5 * st - 6);
    float2 uvW1 = (11 * st - 28);
    float2 uvW2 = -(11 * st + 17);
    float2 uvW3 = -(5 * st + 1);
    float2 uv0 = (4 * st - 5) / uvW0 - 3;
    float2 uv1 = (4 * st - 16) / uvW1 - 1;
    float2 uv2 = -(7 * st + 5) / uvW2 + 1;
    float2 uv3 = -st / uvW3 + 3;
    kernel[0] = float3(base_uv + uv0 * ShadowMapTextureTexelSize_id89, uvW0.x * uvW0.y);
    kernel[1] = float3(base_uv + float2(uv1.x, uv0.y) * ShadowMapTextureTexelSize_id89, uvW1.x * uvW0.y);
    kernel[2] = float3(base_uv + float2(uv2.x, uv0.y) * ShadowMapTextureTexelSize_id89, uvW2.x * uvW0.y);
    kernel[3] = float3(base_uv + float2(uv3.x, uv0.y) * ShadowMapTextureTexelSize_id89, uvW3.x * uvW0.y);
    kernel[4] = float3(base_uv + float2(uv0.x, uv1.y) * ShadowMapTextureTexelSize_id89, uvW0.x * uvW1.y);
    kernel[5] = float3(base_uv + uv1 * ShadowMapTextureTexelSize_id89, uvW1.x * uvW1.y);
    kernel[6] = float3(base_uv + float2(uv2.x, uv1.y) * ShadowMapTextureTexelSize_id89, uvW2.x * uvW1.y);
    kernel[7] = float3(base_uv + float2(uv3.x, uv1.y) * ShadowMapTextureTexelSize_id89, uvW3.x * uvW1.y);
    kernel[8] = float3(base_uv + float2(uv0.x, uv2.y) * ShadowMapTextureTexelSize_id89, uvW0.x * uvW2.y);
    kernel[9] = float3(base_uv + float2(uv1.x, uv2.y) * ShadowMapTextureTexelSize_id89, uvW1.x * uvW2.y);
    kernel[10] = float3(base_uv + uv2 * ShadowMapTextureTexelSize_id89, uvW2.x * uvW2.y);
    kernel[11] = float3(base_uv + float2(uv3.x, uv2.y) * ShadowMapTextureTexelSize_id89, uvW3.x * uvW2.y);
    kernel[12] = float3(base_uv + float2(uv0.x, uv3.y) * ShadowMapTextureTexelSize_id89, uvW0.x * uvW3.y);
    kernel[13] = float3(base_uv + float2(uv1.x, uv3.y) * ShadowMapTextureTexelSize_id89, uvW1.x * uvW3.y);
    kernel[14] = float3(base_uv + float2(uv2.x, uv3.y) * ShadowMapTextureTexelSize_id89, uvW2.x * uvW3.y);
    kernel[15] = float3(base_uv + uv3 * ShadowMapTextureTexelSize_id89, uvW3.x * uvW3.y);
    return 2704.0;
}
float GetAngularAttenuation_id118(float3 lightVector, float3 lightDirection, float lightAngleScale, float lightAngleOffset)
{
    float cd = dot(lightDirection, lightVector);
    float attenuation = saturate(cd * lightAngleScale + lightAngleOffset);
    attenuation *= attenuation;
    return attenuation;
}
float GetDistanceAttenuation_id117(float lightVectorLength, float lightInvSquareRadius)
{
    float d2 = lightVectorLength * lightVectorLength;
    float attenuation = 1.0 / (max(d2, 0.01 * 0.01));
    attenuation *= SmoothDistanceAttenuation_id116(d2, lightInvSquareRadius);
    return attenuation;
}
float GetDistanceAttenuation_id108(float lightVectorLength, float lightInvSquareRadius)
{
    float d2 = lightVectorLength * lightVectorLength;
    float attenuation = 1.0 / (max(d2, 0.01 * 0.01));
    attenuation *= SmoothDistanceAttenuation_id106(d2, lightInvSquareRadius);
    return attenuation;
}
float GetAngularAttenuation_id97(float3 lightVector, float3 lightDirection, float lightAngleScale, float lightAngleOffset)
{
    float cd = dot(lightDirection, lightVector);
    float attenuation = saturate(cd * lightAngleScale + lightAngleOffset);
    attenuation *= attenuation;
    return attenuation;
}
float GetDistanceAttenuation_id96(float lightVectorLength, float lightInvSquareRadius)
{
    float d2 = lightVectorLength * lightVectorLength;
    float attenuation = 1.0 / (max(d2, 0.01 * 0.01));
    attenuation *= SmoothDistanceAttenuation_id95(d2, lightInvSquareRadius);
    return attenuation;
}
float GetDistanceAttenuation_id86(float lightVectorLength, float lightInvSquareRadius)
{
    float d2 = lightVectorLength * lightVectorLength;
    float attenuation = 1.0 / (max(d2, 0.01 * 0.01));
    attenuation *= SmoothDistanceAttenuation_id84(d2, lightInvSquareRadius);
    return attenuation;
}
float SampleAndFilter_id77(float3 adjustedPixelPositionWS, float3 adjustedPixelPositionShadowSpace, float2 depthRanges, float4x4 inverseWorldToShadowCascadeUV, bool isOrthographic, bool isDualParaboloid = false)
{
    float2 uv = adjustedPixelPositionShadowSpace.xy * ShadowMapTextureSize_id88;
    float2 base_uv = floor(uv + 0.5);
    float2 st = uv + 0.5 - base_uv;
    base_uv *= ShadowMapTextureTexelSize_id89;
    float thickness = 0.0;
    float normalizationFactor = 1.0;

    {
        float3 kernel[16];
        normalizationFactor = Get7x7FilterKernel_id69(base_uv, st, kernel);

        [unroll]
        for (int i = 0; i < 16; ++i)
        {
            thickness += kernel[i].z * SampleThickness_id73(float3(kernel[i].xy, adjustedPixelPositionShadowSpace.z), adjustedPixelPositionWS, depthRanges, inverseWorldToShadowCascadeUV, isOrthographic);
        }
    }
    return (thickness / normalizationFactor);
}
void CalculateAdjustedShadowSpacePixelPosition_id76(float filterRadiusInPixels, float3 pixelPositionWS, float3 meshNormalWS, float4x4 worldToShadowCascadeUV, float4x4 inverseWorldToShadowCascadeUV, out float3 adjustedPixelPositionWS, out float3 adjustedPixelPositionShadowSpace)
{
    float4 bottomLeftTexelWS = Project_id62(float4(0.0, 0.0, 0.0, 1.0), inverseWorldToShadowCascadeUV);
    const float4 topRightTexelWS = Project_id62(float4(ShadowMapTextureTexelSize_id89.xy * filterRadiusInPixels, 0.0, 1.0), inverseWorldToShadowCascadeUV);
    const float texelDiagonalLength = distance(topRightTexelWS.xyz, bottomLeftTexelWS.xyz);
    const float3 positionOffsetWS = meshNormalWS * texelDiagonalLength;
    adjustedPixelPositionWS = pixelPositionWS - positionOffsetWS;
    const float4 shadowMapCoordinate = Project_id62(float4(adjustedPixelPositionWS, 1.0), worldToShadowCascadeUV);
    adjustedPixelPositionShadowSpace = shadowMapCoordinate.xyz;
}
void CalculateAdjustedShadowSpacePixelPositionPerspective_id75(float filterRadiusInPixels, float3 pixelPositionWS, float3 meshNormalWS, float4x4 worldToShadowCascadeUV, float4x4 inverseWorldToShadowCascadeUV, out float3 adjustedPixelPositionWS, out float3 adjustedPixelPositionShadowSpace)
{
    const float4 shadowMapCoordinate = Project_id62(float4(pixelPositionWS, 1.0), worldToShadowCascadeUV);
    const float4 topRightTexelWS = Project_id62(float4(shadowMapCoordinate.xy + ShadowMapTextureTexelSize_id89.xy * filterRadiusInPixels, shadowMapCoordinate.z, 1.0), inverseWorldToShadowCascadeUV);
    const float texelDiagonalLength = distance(topRightTexelWS.xyz, pixelPositionWS);
    const float3 positionOffsetWS = meshNormalWS * texelDiagonalLength;
    adjustedPixelPositionWS = pixelPositionWS - positionOffsetWS;
    const float4 adjustedShadowMapCoordinate = Project_id62(float4(adjustedPixelPositionWS, 1.0), worldToShadowCascadeUV);
    adjustedPixelPositionShadowSpace = adjustedShadowMapCoordinate.xyz;
}
float GetFilterRadiusInPixels_id74()
{

    {
        return 4.5;
    }
}
float SampleTextureAndCompare_id70(float2 position, float positionDepth)
{
    return ShadowMapTexture_id87.SampleCmpLevelZero(LinearClampCompareLessEqualSampler_id122, position, positionDepth);
}
void CalculatePCFKernelParameters_id68(float2 position, out float2 base_uv, out float2 st)
{
    float2 uv = position * ShadowMapTextureSize_id88;
    base_uv = floor(uv + 0.5);
    st = uv + 0.5 - base_uv;
    base_uv -= 0.5;
    base_uv *= ShadowMapTextureTexelSize_id89;
}
float Compute_id421()
{
    return InputValue_id246;
}
float Compute_id409()
{
    return InputValue_id238;
}
float4 Compute_id397()
{
    return InputValue_id230;
}
float4 Compute_id374()
{
    return InputValue_id210;
}
float ComputeAttenuation_id119(float3 PositionWS, float3 AngleOffsetAndInvSquareRadius, float3 DirectionWS, float3 position, inout float3 lightVectorNorm)
{
    float3 lightVector = PositionWS - position;
    float lightVectorLength = length(lightVector);
    lightVectorNorm = lightVector / lightVectorLength;
    float3 lightAngleOffsetAndInvSquareRadius = AngleOffsetAndInvSquareRadius;
    float2 lightAngleAndOffset = lightAngleOffsetAndInvSquareRadius.xy;
    float lightInvSquareRadius = lightAngleOffsetAndInvSquareRadius.z;
    float3 lightDirection = -DirectionWS;
    float attenuation = GetDistanceAttenuation_id117(lightVectorLength, lightInvSquareRadius);
    attenuation *= GetAngularAttenuation_id118(lightVectorNorm, lightDirection, lightAngleAndOffset.x, lightAngleAndOffset.y);
    return attenuation;
}
float ComputeAttenuation_id107(PointLightDataInternal light, float3 position, inout float3 lightVectorNorm)
{
    float3 lightVector = light.PositionWS - position;
    float lightVectorLength = length(lightVector);
    lightVectorNorm = lightVector / lightVectorLength;
    float lightInvSquareRadius = light.InvSquareRadius;
    return GetDistanceAttenuation_id108(lightVectorLength, lightInvSquareRadius);
}
float ComputeAttenuation_id98(float3 PositionWS, float3 AngleOffsetAndInvSquareRadius, float3 DirectionWS, float3 position, inout float3 lightVectorNorm)
{
    float3 lightVector = PositionWS - position;
    float lightVectorLength = length(lightVector);
    lightVectorNorm = lightVector / lightVectorLength;
    float3 lightAngleOffsetAndInvSquareRadius = AngleOffsetAndInvSquareRadius;
    float2 lightAngleAndOffset = lightAngleOffsetAndInvSquareRadius.xy;
    float lightInvSquareRadius = lightAngleOffsetAndInvSquareRadius.z;
    float3 lightDirection = -DirectionWS;
    float attenuation = GetDistanceAttenuation_id96(lightVectorLength, lightInvSquareRadius);
    attenuation *= GetAngularAttenuation_id97(lightVectorNorm, lightDirection, lightAngleAndOffset.x, lightAngleAndOffset.y);
    return attenuation;
}
float ComputeAttenuation_id85(PointLightDataInternal light, float3 position, inout float3 lightVectorNorm)
{
    float3 lightVector = light.PositionWS - position;
    float lightVectorLength = length(lightVector);
    lightVectorNorm = lightVector / lightVectorLength;
    float lightInvSquareRadius = light.InvSquareRadius;
    return GetDistanceAttenuation_id86(lightVectorLength, lightInvSquareRadius);
}
float VisibilityhSchlickGGX_id216(float alphaR, float nDotX)
{
    float k = alphaR * 0.5f;
    return nDotX / (nDotX * (1.0f - k) + k);
}
float3 FresnelSchlick_id200(float3 f0, float3 f90, float lOrVDotH)
{
    return f0 + (f90 - f0) * pow((1 - lOrVDotH), 5);
}
float FilterThickness_id64(float3 pixelPositionWS, float3 meshNormalWS, float2 depthRanges, float4x4 worldToShadowCascadeUV, float4x4 inverseWorldToShadowCascadeUV, bool isOrthographic)
{
    float3 adjustedPixelPositionWS;
    float3 adjustedPixelPositionShadowSpace;
    if (isOrthographic)
    {
        CalculateAdjustedShadowSpacePixelPosition_id76(GetFilterRadiusInPixels_id74(), pixelPositionWS, meshNormalWS, worldToShadowCascadeUV, inverseWorldToShadowCascadeUV, adjustedPixelPositionWS, adjustedPixelPositionShadowSpace);
    }
    else
    {
        CalculateAdjustedShadowSpacePixelPositionPerspective_id75(GetFilterRadiusInPixels_id74(), pixelPositionWS, meshNormalWS, worldToShadowCascadeUV, inverseWorldToShadowCascadeUV, adjustedPixelPositionWS, adjustedPixelPositionShadowSpace);
    }
    return SampleAndFilter_id77(adjustedPixelPositionWS, adjustedPixelPositionShadowSpace, depthRanges, inverseWorldToShadowCascadeUV, isOrthographic);
}
float FilterShadow_id63(float2 position, float positionDepth)
{
    float shadow = 0.0f;
    float2 base_uv;
    float2 st;
    CalculatePCFKernelParameters_id68(position, base_uv, st);

    {
        float3 kernel[16];
        float normalizationFactor = Get7x7FilterKernel_id69(base_uv, st, kernel);

        [unroll]
        for (int i = 0; i < 16; ++i)
        {
            shadow += kernel[i].z * SampleTextureAndCompare_id70(kernel[i].xy, positionDepth);
        }
        shadow /= normalizationFactor;
    }
    return shadow;
}
void Compute_id433()
{
}
void Compute_id424(inout PS_STREAMS streams)
{
    streams.Input_3_id245 = Compute_id421();
}
void Compute_id412(inout PS_STREAMS streams)
{
    streams.Input_2_id237 = Compute_id409();
}
void Compute_id400(inout PS_STREAMS streams)
{
    streams.Input_1_id229 = Compute_id397();
}
void Compute_id386()
{
}
void Compute_id377(inout PS_STREAMS streams)
{
    streams.Input_0_id209 = Compute_id374();
}
float4 EvaluateSphericalHarmonics_id138(float3 sphericalColors[TOrder_id188 * TOrder_id188], float3 direction)
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
float4 EvaluateSphericalHarmonics_id129(float3 sphericalColors[TOrder_id188 * TOrder_id188], float3 direction)
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
void ProcessLight_id120(inout PS_STREAMS streams, SpotLightDataInternal light)
{
    float3 lightVectorNorm;
    float attenuation = ComputeAttenuation_id119(light.PositionWS, light.AngleOffsetAndInvSquareRadius, light.DirectionWS, streams.PositionWS_id21.xyz, lightVectorNorm);
    streams.lightColor_id42 = light.Color;
    streams.lightAttenuation_id45 = attenuation;
    streams.lightDirectionWS_id41 = lightVectorNorm;
}
void ProcessLight_id109(inout PS_STREAMS streams, PointLightDataInternal light)
{
    float3 lightVectorNorm;
    float attenuation = ComputeAttenuation_id107(light, streams.PositionWS_id21.xyz, lightVectorNorm);
    streams.lightPositionWS_id40 = light.PositionWS;
    streams.lightColor_id42 = light.Color;
    streams.lightAttenuation_id45 = attenuation;
    streams.lightDirectionWS_id41 = lightVectorNorm;
}
void ProcessLight_id99(inout PS_STREAMS streams, SpotLightDataInternal light)
{
    float3 lightVectorNorm;
    float attenuation = ComputeAttenuation_id98(light.PositionWS, light.AngleOffsetAndInvSquareRadius, light.DirectionWS, streams.PositionWS_id21.xyz, lightVectorNorm);
    streams.lightColor_id42 = light.Color;
    streams.lightAttenuation_id45 = attenuation;
    streams.lightDirectionWS_id41 = lightVectorNorm;
}
void ProcessLight_id88(inout PS_STREAMS streams, PointLightDataInternal light)
{
    float3 lightVectorNorm;
    float attenuation = ComputeAttenuation_id85(light, streams.PositionWS_id21.xyz, lightVectorNorm);
    streams.lightPositionWS_id40 = light.PositionWS;
    streams.lightColor_id42 = light.Color;
    streams.lightAttenuation_id45 = attenuation;
    streams.lightDirectionWS_id41 = lightVectorNorm;
}
float NormalDistributionGGX_id230(float alphaR, float nDotH)
{
    float alphaR2 = alphaR * alphaR;
    float d = max(nDotH * nDotH * (alphaR2 - 1) + 1, 0.0001);
    return alphaR2 / (PI_id263 * d * d);
}
float VisibilitySmithSchlickGGX_id218(float alphaR, float nDotL, float nDotV)
{
    return VisibilityhSchlickGGX_id216(alphaR, nDotL) * VisibilityhSchlickGGX_id216(alphaR, nDotV) / (nDotL * nDotV);
}
float3 FresnelSchlick_id206(float3 f0, float lOrVDotH)
{
    return FresnelSchlick_id200(f0, 1.0f, lOrVDotH);
}
float ComputeThicknessFromCascade_id67(float3 pixelPositionWS, float3 meshNormalWS, int cascadeIndex, int lightIndex, bool isOrthographic)
{
    const int arrayIndex = cascadeIndex + lightIndex * TCascadeCountBase_id149;
    return FilterThickness_id64(pixelPositionWS, meshNormalWS, DepthRanges_id154[arrayIndex], WorldToShadowCascadeUV_id151[arrayIndex], InverseWorldToShadowCascadeUV_id152[arrayIndex], isOrthographic);
}
float ComputeShadowFromCascade_id66(float3 shadowPositionWS, int cascadeIndex, int lightIndex)
{
    float4 shadowPosition = mul(float4(shadowPositionWS, 1.0), WorldToShadowCascadeUV_id151[cascadeIndex + lightIndex * TCascadeCountBase_id149]);
    shadowPosition.z -= DepthBiases_id155[lightIndex];
    shadowPosition.xyz /= shadowPosition.w;
    return FilterShadow_id63(shadowPosition.xy, shadowPosition.z);
}
float3 GetShadowPositionOffset_id65(float offsetScale, float nDotL, float3 normal)
{
    float normalOffsetScale = saturate(1.0f - nDotL);
    return 2.0f * ShadowMapTextureTexelSize_id89.x * offsetScale * normalOffsetScale * normal;
}
float4 Compute_id436()
{
    return Value_id254;
}
void Compute_id435()
{

    {
        Compute_id433();
    }
}
float Compute_id427(inout PS_STREAMS streams)
{
    return streams.Input_3_id245;
}
void Compute_id426(inout PS_STREAMS streams)
{

    {
        Compute_id424(streams);
    }
}
float Compute_id415(inout PS_STREAMS streams)
{
    return streams.Input_2_id237;
}
void Compute_id414(inout PS_STREAMS streams)
{

    {
        Compute_id412(streams);
    }
}
float4 Compute_id403(inout PS_STREAMS streams)
{
    return streams.Input_1_id229;
}
void Compute_id402(inout PS_STREAMS streams)
{

    {
        Compute_id400(streams);
    }
}
float Compute_id389()
{
    return Value_id218;
}
void Compute_id388()
{

    {
        Compute_id386();
    }
}
float4 Compute_id380(inout PS_STREAMS streams)
{
    return streams.Input_0_id209;
}
void Compute_id379(inout PS_STREAMS streams)
{

    {
        Compute_id377(streams);
    }
}
float4 Compute_id355(inout PS_STREAMS streams, float3 direction)
{
    float alpha = streams.alphaRoughness_id69;
    float mipLevel = sqrt(alpha) * MipCount_id203;
    return CubeMap_id204.SampleLevel(LinearSampler_id120, direction, mipLevel);
}
float4 Compute_id350(float3 direction)
{
    return EvaluateSphericalHarmonics_id138(SphericalColors_id202, direction);
}
void PrepareEnvironmentLight_id142(inout PS_STREAMS streams)
{
    streams.envLightDiffuseColor_id46 = 0;
    streams.envLightSpecularColor_id47 = 0;
}
float4 Compute_id335(inout PS_STREAMS streams, float3 direction)
{
    float alpha = streams.alphaRoughness_id69;
    float mipLevel = sqrt(alpha) * MipCount_id192;
    return CubeMap_id193.SampleLevel(LinearSampler_id120, direction, mipLevel);
}
float4 Compute_id330(float3 direction)
{
    return EvaluateSphericalHarmonics_id129(SphericalColors_id191, direction);
}
void PrepareEnvironmentLight_id133(inout PS_STREAMS streams)
{
    streams.envLightDiffuseColor_id46 = 0;
    streams.envLightSpecularColor_id47 = 0;
}
float3 Compute_id442(float3 specularColor, float alphaR, float nDotV)
{
    float glossiness = 1.0f - sqrt(alphaR);
    float4 environmentLightingDFG = EnvironmentLightingDFG_LUT_id264.SampleLevel(LinearSampler_id120, float2(glossiness, nDotV), 0);
    return specularColor * environmentLightingDFG.r + environmentLightingDFG.g;
}
void PrepareEnvironmentLight_id124(inout PS_STREAMS streams)
{
    streams.envLightDiffuseColor_id46 = 0;
    streams.envLightSpecularColor_id47 = 0;
}
float3 ComputeSpecularTextureProjection_id115(float3 positionWS, float3 reflectionWS, int lightIndex)
{
    return 1.0f;
}
float3 ComputeTextureProjection_id114(float3 positionWS, int lightIndex)
{
    return 1.0f;
}
float3 ComputeShadow_id113(inout PS_STREAMS streams, float3 position, int lightIndex)
{
    streams.thicknessWS_id83 = 0.0;
    return 1.0f;
}
void PrepareDirectLightCore_id112(inout PS_STREAMS streams, int lightIndex)
{
    SpotLightDataInternal data;
    data.PositionWS = Lights_id185[lightIndex].PositionWS;
    data.DirectionWS = Lights_id185[lightIndex].DirectionWS;
    data.AngleOffsetAndInvSquareRadius = Lights_id185[lightIndex].AngleOffsetAndInvSquareRadius;
    data.Color = Lights_id185[lightIndex].Color;
    ProcessLight_id120(streams, data);
}
float3 ComputeSpecularTextureProjection_id105(float3 positionWS, float3 reflectionWS, int lightIndex)
{
    return 1.0f;
}
float3 ComputeTextureProjection_id104(float3 positionWS, int lightIndex)
{
    return 1.0f;
}
float3 ComputeShadow_id103(inout PS_STREAMS streams, float3 position, int lightIndex)
{
    streams.thicknessWS_id83 = 0.0;
    return 1.0f;
}
void PrepareDirectLightCore_id102(inout PS_STREAMS streams, int lightIndex)
{
    PointLightDataInternal data;
    data.PositionWS = Lights_id182[lightIndex].PositionWS;
    data.InvSquareRadius = Lights_id182[lightIndex].InvSquareRadius;
    data.Color = Lights_id182[lightIndex].Color;
    ProcessLight_id109(streams, data);
}
float3 ComputeSpecularTextureProjection_id94(float3 positionWS, float3 reflectionWS, int lightIndex)
{
    return 1.0f;
}
float3 ComputeTextureProjection_id93(float3 positionWS, int lightIndex)
{
    return 1.0f;
}
float3 ComputeShadow_id92(inout PS_STREAMS streams, float3 position, int lightIndex)
{
    streams.thicknessWS_id83 = 0.0;
    return 1.0f;
}
void PrepareDirectLightCore_id91(inout PS_STREAMS streams, int lightIndexIgnored)
{
    int realLightIndex = LightIndices_id174.Load(streams.lightIndex_id172);
    streams.lightIndex_id172++;
    SpotLightDataInternal spotLight;
    float4 spotLight1 = SpotLights_id179.Load(realLightIndex * 4);
    float4 spotLight2 = SpotLights_id179.Load(realLightIndex * 4 + 1);
    float4 spotLight3 = SpotLights_id179.Load(realLightIndex * 4 + 2);
    float4 spotLight4 = SpotLights_id179.Load(realLightIndex * 4 + 3);
    spotLight.PositionWS = spotLight1.xyz;
    spotLight.DirectionWS = spotLight2.xyz;
    spotLight.AngleOffsetAndInvSquareRadius = spotLight3.xyz;
    spotLight.Color = spotLight4.xyz;
    ProcessLight_id99(streams, spotLight);
}
float3 ComputeSpecularTextureProjection_id83(float3 positionWS, float3 reflectionWS, int lightIndex)
{
    return 1.0f;
}
float3 ComputeTextureProjection_id82(float3 positionWS, int lightIndex)
{
    return 1.0f;
}
float3 ComputeShadow_id81(inout PS_STREAMS streams, float3 position, int lightIndex)
{
    streams.thicknessWS_id83 = 0.0;
    return 1.0f;
}
void PrepareDirectLightCore_id80(inout PS_STREAMS streams, int lightIndexIgnored)
{
    int realLightIndex = LightIndices_id174.Load(streams.lightIndex_id172);
    streams.lightIndex_id172++;
    PointLightDataInternal pointLight;
    float4 pointLight1 = PointLights_id178.Load(realLightIndex * 2);
    float4 pointLight2 = PointLights_id178.Load(realLightIndex * 2 + 1);
    pointLight.PositionWS = pointLight1.xyz;
    pointLight.InvSquareRadius = pointLight1.w;
    pointLight.Color = pointLight2.xyz;
    ProcessLight_id88(streams, pointLight);
}
void PrepareLightData_id87(inout PS_STREAMS streams)
{
    float projectedDepth = streams.ShadingPosition_id0.z;
    float depth = ZProjection_id168.y / (projectedDepth - ZProjection_id168.x);
    float2 texCoord = float2(streams.ScreenPosition_id165.x + 1, 1 - streams.ScreenPosition_id165.y) * 0.5;
    int slice = int(max(log2(depth * ClusterDepthScale_id175 + ClusterDepthBias_id176), 0));
    streams.lightData_id171 = LightClusters_id173.Load(int4(texCoord * ClusterStride_id177, slice, 0));
    streams.lightIndex_id172 = streams.lightData_id171.x;
}
float Compute_id534(inout PS_STREAMS streams)
{
    return NormalDistributionGGX_id230(streams.alphaRoughness_id69, streams.NdotH_id75);
}
float Compute_id504(inout PS_STREAMS streams)
{
    return VisibilitySmithSchlickGGX_id218(streams.alphaRoughness_id69, streams.NdotL_id48, streams.NdotV_id71);
}
float3 Compute_id474(inout PS_STREAMS streams, float3 f0)
{
    return FresnelSchlick_id206(f0, streams.LdotH_id76);
}
float3 ComputeSpecularTextureProjection_id59(float3 positionWS, float3 reflectionWS, int lightIndex)
{
    return 1.0f;
}
float3 ComputeTextureProjection_id58(float3 positionWS, int lightIndex)
{
    return 1.0f;
}
float3 ComputeShadow_id57(inout PS_STREAMS streams, float3 position, int lightIndex)
{
    int cascadeIndexBase = lightIndex * TCascadeCount_id157;
    int cascadeIndex = 0;

    [unroll]
    for (int i = 0; i < TCascadeCount_id157 - 1; i++)
    {
        [flatten]
        if (streams.DepthVS_id22 > CascadeDepthSplits_id163[cascadeIndexBase + i])
        {
            cascadeIndex = i + 1;
        }
    }
    float3 shadow = 1.0;
    float tempThickness = 999.0;
    float3 shadowPosition = position.xyz;
    shadowPosition += GetShadowPositionOffset_id65(OffsetScales_id156[lightIndex], streams.NdotL_id48, streams.normalWS_id18);
    if (cascadeIndex < TCascadeCount_id157)
    {
        shadow = ComputeShadowFromCascade_id66(shadowPosition, cascadeIndex, lightIndex);
        float nextSplit = CascadeDepthSplits_id163[cascadeIndexBase + cascadeIndex];
        float splitSize = nextSplit;
        if (cascadeIndex > 0)
        {
            splitSize = nextSplit - CascadeDepthSplits_id163[cascadeIndexBase + cascadeIndex - 1];
        }
        float splitDist = (nextSplit - streams.DepthVS_id22) / splitSize;
        if (splitDist < 0.2)
        {
            float lerpAmt = smoothstep(0.0, 0.2, splitDist);
            if (cascadeIndex == TCascadeCount_id157 - 1)
            {
            }
            else if (TBlendCascades_id159)
            {
                float nextShadow = ComputeShadowFromCascade_id66(shadowPosition, cascadeIndex + 1, lightIndex);
                shadow = lerp(nextShadow, shadow, lerpAmt);
            }
        }
    }
    streams.thicknessWS_id83 = tempThickness;
    return shadow;
}
void PrepareDirectLightCore_id56(inout PS_STREAMS streams, int lightIndex)
{
    streams.lightColor_id42 = Lights_id86[lightIndex].Color;
    streams.lightDirectionWS_id41 = -Lights_id86[lightIndex].DirectionWS;
}
float4 Compute_id439()
{
    Compute_id435();
    return Compute_id436();
}
float Compute_id430(inout PS_STREAMS streams)
{
    Compute_id426(streams);
    return Compute_id427(streams);
}
float Compute_id418(inout PS_STREAMS streams)
{
    Compute_id414(streams);
    return Compute_id415(streams);
}
float4 Compute_id406(inout PS_STREAMS streams)
{
    Compute_id402(streams);
    return Compute_id403(streams);
}
float Compute_id392()
{
    Compute_id388();
    return Compute_id389();
}
float4 Compute_id383(inout PS_STREAMS streams)
{
    Compute_id379(streams);
    return Compute_id380(streams);
}
void ResetStream_id239()
{
}
void AfterLightingAndShading_id591()
{
}
void AfterLightingAndShading_id572()
{
}
void PrepareEnvironmentLight_id373(inout PS_STREAMS streams)
{
    streams.envLightDiffuseColor_id46 = 0;
    streams.envLightSpecularColor_id47 = 0;
}
void PrepareEnvironmentLight_id370(inout PS_STREAMS streams)
{
    PrepareEnvironmentLight_id142(streams);
    float ambientAccessibility = streams.matAmbientOcclusion_id56;
    float3 sampleDirection = mul(streams.normalWS_id18, (float3x3)SkyMatrix_id205);
    sampleDirection = float3(sampleDirection.xy, -sampleDirection.z);
    streams.envLightDiffuseColor_id46 = Compute_id350(sampleDirection).rgb * Intensity_id206 * ambientAccessibility * streams.matDiffuseSpecularAlphaBlend_id64.x;
    sampleDirection = reflect(-streams.viewWS_id67, streams.normalWS_id18);
    sampleDirection = mul(sampleDirection, (float3x3)SkyMatrix_id205);
    sampleDirection = float3(sampleDirection.xy, -sampleDirection.z);
    streams.envLightSpecularColor_id47 = Compute_id355(streams, sampleDirection).rgb * Intensity_id206 * ambientAccessibility * streams.matDiffuseSpecularAlphaBlend_id64.y;
}
void PrepareEnvironmentLight_id365(inout PS_STREAMS streams)
{
    PrepareEnvironmentLight_id133(streams);
    float ambientAccessibility = streams.matAmbientOcclusion_id56;
    float3 sampleDirection = mul(streams.normalWS_id18, (float3x3)SkyMatrix_id194);
    sampleDirection = float3(sampleDirection.xy, -sampleDirection.z);
    streams.envLightDiffuseColor_id46 = Compute_id330(sampleDirection).rgb * Intensity_id195 * ambientAccessibility * streams.matDiffuseSpecularAlphaBlend_id64.x;
    sampleDirection = reflect(-streams.viewWS_id67, streams.normalWS_id18);
    sampleDirection = mul(sampleDirection, (float3x3)SkyMatrix_id194);
    sampleDirection = float3(sampleDirection.xy, -sampleDirection.z);
    streams.envLightSpecularColor_id47 = Compute_id335(streams, sampleDirection).rgb * Intensity_id195 * ambientAccessibility * streams.matDiffuseSpecularAlphaBlend_id64.y;
}
float3 ComputeEnvironmentLightContribution_id621(inout PS_STREAMS streams)
{
    float3 specularColor = streams.matSpecularVisible_id70;
    return Compute_id442(specularColor, streams.alphaRoughness_id69, streams.NdotV_id71) * streams.envLightSpecularColor_id47;
}
float3 ComputeEnvironmentLightContribution_id565(inout PS_STREAMS streams)
{
    float3 diffuseColor = streams.matDiffuseVisible_id68;
    return diffuseColor * streams.envLightDiffuseColor_id46;
}
void PrepareEnvironmentLight_id360(inout PS_STREAMS streams)
{
    PrepareEnvironmentLight_id124(streams);
    float3 lightColor = AmbientLight_id186 * streams.matAmbientOcclusion_id56;
    streams.envLightDiffuseColor_id46 = lightColor;
    streams.envLightSpecularColor_id47 = lightColor;
}
void PrepareDirectLight_id311(inout PS_STREAMS streams, int lightIndex)
{
    PrepareDirectLightCore_id112(streams, lightIndex);
    streams.NdotL_id48 = max(dot(streams.normalWS_id18, streams.lightDirectionWS_id41), 0.0001f);
    streams.shadowColor_id82 = ComputeShadow_id113(streams, streams.PositionWS_id21.xyz, lightIndex);
    streams.lightColorNdotL_id43 = streams.lightColor_id42 * streams.lightAttenuation_id45 * streams.shadowColor_id82 * streams.NdotL_id48 * streams.lightDirectAmbientOcclusion_id49;
    streams.lightSpecularColorNdotL_id44 = streams.lightColorNdotL_id43;
    streams.lightColorNdotL_id43 *= ComputeTextureProjection_id114(streams.PositionWS_id21.xyz, lightIndex);
    float3 reflectionVectorWS = reflect(-streams.viewWS_id67, streams.normalWS_id18);
    streams.lightSpecularColorNdotL_id44 *= ComputeSpecularTextureProjection_id115(streams.PositionWS_id21.xyz, reflectionVectorWS, lightIndex);
}
int GetLightCount_id313()
{
    return LightCount_id183;
}
int GetMaxLightCount_id314()
{
    return TMaxLightCount_id184;
}
void PrepareDirectLights_id309()
{
}
void PrepareDirectLight_id298(inout PS_STREAMS streams, int lightIndex)
{
    PrepareDirectLightCore_id102(streams, lightIndex);
    streams.NdotL_id48 = max(dot(streams.normalWS_id18, streams.lightDirectionWS_id41), 0.0001f);
    streams.shadowColor_id82 = ComputeShadow_id103(streams, streams.PositionWS_id21.xyz, lightIndex);
    streams.lightColorNdotL_id43 = streams.lightColor_id42 * streams.lightAttenuation_id45 * streams.shadowColor_id82 * streams.NdotL_id48 * streams.lightDirectAmbientOcclusion_id49;
    streams.lightSpecularColorNdotL_id44 = streams.lightColorNdotL_id43;
    streams.lightColorNdotL_id43 *= ComputeTextureProjection_id104(streams.PositionWS_id21.xyz, lightIndex);
    float3 reflectionVectorWS = reflect(-streams.viewWS_id67, streams.normalWS_id18);
    streams.lightSpecularColorNdotL_id44 *= ComputeSpecularTextureProjection_id105(streams.PositionWS_id21.xyz, reflectionVectorWS, lightIndex);
}
int GetLightCount_id300()
{
    return LightCount_id180;
}
int GetMaxLightCount_id302()
{
    return TMaxLightCount_id181;
}
void PrepareDirectLights_id296()
{
}
void PrepareDirectLight_id286(inout PS_STREAMS streams, int lightIndex)
{
    PrepareDirectLightCore_id91(streams, lightIndex);
    streams.NdotL_id48 = max(dot(streams.normalWS_id18, streams.lightDirectionWS_id41), 0.0001f);
    streams.shadowColor_id82 = ComputeShadow_id92(streams, streams.PositionWS_id21.xyz, lightIndex);
    streams.lightColorNdotL_id43 = streams.lightColor_id42 * streams.lightAttenuation_id45 * streams.shadowColor_id82 * streams.NdotL_id48 * streams.lightDirectAmbientOcclusion_id49;
    streams.lightSpecularColorNdotL_id44 = streams.lightColorNdotL_id43;
    streams.lightColorNdotL_id43 *= ComputeTextureProjection_id93(streams.PositionWS_id21.xyz, lightIndex);
    float3 reflectionVectorWS = reflect(-streams.viewWS_id67, streams.normalWS_id18);
    streams.lightSpecularColorNdotL_id44 *= ComputeSpecularTextureProjection_id94(streams.PositionWS_id21.xyz, reflectionVectorWS, lightIndex);
}
int GetLightCount_id290(inout PS_STREAMS streams)
{
    return streams.lightData_id171.y >> 16;
}
int GetMaxLightCount_id289(inout PS_STREAMS streams)
{
    return streams.lightData_id171.y >> 16;
}
void PrepareDirectLights_id284()
{
}
void PrepareDirectLight_id273(inout PS_STREAMS streams, int lightIndex)
{
    PrepareDirectLightCore_id80(streams, lightIndex);
    streams.NdotL_id48 = max(dot(streams.normalWS_id18, streams.lightDirectionWS_id41), 0.0001f);
    streams.shadowColor_id82 = ComputeShadow_id81(streams, streams.PositionWS_id21.xyz, lightIndex);
    streams.lightColorNdotL_id43 = streams.lightColor_id42 * streams.lightAttenuation_id45 * streams.shadowColor_id82 * streams.NdotL_id48 * streams.lightDirectAmbientOcclusion_id49;
    streams.lightSpecularColorNdotL_id44 = streams.lightColorNdotL_id43;
    streams.lightColorNdotL_id43 *= ComputeTextureProjection_id82(streams.PositionWS_id21.xyz, lightIndex);
    float3 reflectionVectorWS = reflect(-streams.viewWS_id67, streams.normalWS_id18);
    streams.lightSpecularColorNdotL_id44 *= ComputeSpecularTextureProjection_id83(streams.PositionWS_id21.xyz, reflectionVectorWS, lightIndex);
}
int GetLightCount_id278(inout PS_STREAMS streams)
{
    return streams.lightData_id171.y & 0xFFFF;
}
int GetMaxLightCount_id277(inout PS_STREAMS streams)
{
    return streams.lightData_id171.y & 0xFFFF;
}
void PrepareDirectLights_id276(inout PS_STREAMS streams)
{
    PrepareLightData_id87(streams);
}
float3 ComputeDirectLightContribution_id620(inout PS_STREAMS streams)
{
    float3 specularColor = streams.matSpecularVisible_id70;
    float3 fresnel = Compute_id474(streams, specularColor);
    float geometricShadowing = Compute_id504(streams);
    float normalDistribution = Compute_id534(streams);
    float3 reflected = fresnel * geometricShadowing * normalDistribution / 4;
    return reflected * streams.lightSpecularColorNdotL_id44 * streams.matDiffuseSpecularAlphaBlend_id64.y;
}
float3 ComputeDirectLightContribution_id564(inout PS_STREAMS streams)
{
    float3 diffuseColor = streams.matDiffuseVisible_id68;
    return diffuseColor / PI_id263 * streams.lightColorNdotL_id43 * streams.matDiffuseSpecularAlphaBlend_id64.x;
}
void PrepareMaterialPerDirectLight_id30(inout PS_STREAMS streams)
{
    streams.H_id74 = normalize(streams.viewWS_id67 + streams.lightDirectionWS_id41);
    streams.NdotH_id75 = saturate(dot(streams.normalWS_id18, streams.H_id74));
    streams.LdotH_id76 = saturate(dot(streams.lightDirectionWS_id41, streams.H_id74));
    streams.VdotH_id77 = streams.LdotH_id76;
}
void PrepareDirectLight_id249(inout PS_STREAMS streams, int lightIndex)
{
    PrepareDirectLightCore_id56(streams, lightIndex);
    streams.NdotL_id48 = max(dot(streams.normalWS_id18, streams.lightDirectionWS_id41), 0.0001f);
    streams.shadowColor_id82 = ComputeShadow_id57(streams, streams.PositionWS_id21.xyz, lightIndex);
    streams.lightColorNdotL_id43 = streams.lightColor_id42 * streams.lightAttenuation_id45 * streams.shadowColor_id82 * streams.NdotL_id48 * streams.lightDirectAmbientOcclusion_id49;
    streams.lightSpecularColorNdotL_id44 = streams.lightColorNdotL_id43;
    streams.lightColorNdotL_id43 *= ComputeTextureProjection_id58(streams.PositionWS_id21.xyz, lightIndex);
    float3 reflectionVectorWS = reflect(-streams.viewWS_id67, streams.normalWS_id18);
    streams.lightSpecularColorNdotL_id44 *= ComputeSpecularTextureProjection_id59(streams.PositionWS_id21.xyz, reflectionVectorWS, lightIndex);
}
int GetLightCount_id251()
{
    return LightCount_id84;
}
int GetMaxLightCount_id252()
{
    return TMaxLightCount_id85;
}
void PrepareDirectLights_id247()
{
}
void PrepareForLightingAndShading_id588()
{
}
void PrepareForLightingAndShading_id569()
{
}
void PrepareMaterialForLightingAndShading_id232(inout PS_STREAMS streams)
{
    streams.lightDirectAmbientOcclusion_id49 = lerp(1.0, streams.matAmbientOcclusion_id56, streams.matAmbientOcclusionDirectLightingFactor_id57);
    streams.matDiffuseVisible_id68 = streams.matDiffuse_id52.rgb * lerp(1.0f, streams.matCavity_id58, streams.matCavityDiffuse_id59) * streams.matDiffuseSpecularAlphaBlend_id64.r * streams.matAlphaBlendColor_id65;
    streams.matSpecularVisible_id70 = streams.matSpecular_id54.rgb * streams.matSpecularIntensity_id55 * lerp(1.0f, streams.matCavity_id58, streams.matCavitySpecular_id60) * streams.matDiffuseSpecularAlphaBlend_id64.g * streams.matAlphaBlendColor_id65;
    streams.NdotV_id71 = max(dot(streams.normalWS_id18, streams.viewWS_id67), 0.0001f);
    float roughness = 1.0f - streams.matGlossiness_id53;
    streams.alphaRoughness_id69 = max(roughness * roughness, 0.001);
}
void ResetLightStream_id231(inout PS_STREAMS streams)
{
    streams.lightPositionWS_id40 = 0;
    streams.lightDirectionWS_id41 = 0;
    streams.lightColor_id42 = 0;
    streams.lightColorNdotL_id43 = 0;
    streams.lightSpecularColorNdotL_id44 = 0;
    streams.lightAttenuation_id45 = 1.0f;
    streams.envLightDiffuseColor_id46 = 0;
    streams.envLightSpecularColor_id47 = 0;
    streams.lightDirectAmbientOcclusion_id49 = 1.0f;
    streams.NdotL_id48 = 0;
}
void UpdateNormalFromTangentSpace_id23(float3 normalInTangentSpace)
{
}
float4 Compute_id441()
{
    return Compute_id439();
}
float4 Compute_id432(inout PS_STREAMS streams)
{
    float x = Compute_id430(streams);
    return float4(x, x, x, x);
}
float4 Compute_id420(inout PS_STREAMS streams)
{
    float x = Compute_id418(streams);
    return float4(x, x, x, x);
}
float4 Compute_id408(inout PS_STREAMS streams)
{
    return Compute_id406(streams);
}
float4 Compute_id395()
{
    return float4(constantFloat_id224, constantFloat_id224, constantFloat_id224, constantFloat_id224);
}
float4 Compute_id394()
{
    float x = Compute_id392();
    return float4(x, x, x, x);
}
float4 Compute_id385(inout PS_STREAMS streams)
{
    return Compute_id383(streams);
}
void ResetStream_id240(inout PS_STREAMS streams)
{
    ResetStream_id239();
    streams.matBlend_id39 = 0.0f;
}
void Compute_id678(inout PS_STREAMS streams)
{
    streams.shadingColorAlpha_id73 = lerp(0, streams.shadingColorAlpha_id73, streams.matDiffuseSpecularAlphaBlend_id64.r);
}
void Compute_id673(inout PS_STREAMS streams)
{
    streams.shadingColor_id72 += streams.matEmissive_id61.rgb * streams.matEmissiveIntensity_id62;

    {
        streams.shadingColorAlpha_id73 = streams.matEmissive_id61.a;
    }
}
void Compute_id672(inout PS_STREAMS streams)
{
    UpdateNormalFromTangentSpace_id23(streams.matNormal_id50);
    if (!streams.IsFrontFace_id1)
        streams.normalWS_id18 = -streams.normalWS_id18;
    ResetLightStream_id231(streams);
    PrepareMaterialForLightingAndShading_id232(streams);

    {
        PrepareForLightingAndShading_id569();
    }

    {
        PrepareForLightingAndShading_id588();
    }
    float3 directLightingContribution = 0;

    {
        PrepareDirectLights_id247();
        const int maxLightCount = GetMaxLightCount_id252();
        int count = GetLightCount_id251();

        for (int i = 0; i < maxLightCount; i++)
        {
            if (i >= count)
            {
                break;
            }
            PrepareDirectLight_id249(streams, i);
            PrepareMaterialPerDirectLight_id30(streams);

            {
                directLightingContribution += ComputeDirectLightContribution_id564(streams);
            }

            {
                directLightingContribution += ComputeDirectLightContribution_id620(streams);
            }
        }
    }

    {
        PrepareDirectLights_id276(streams);
        const int maxLightCount = GetMaxLightCount_id277(streams);
        int count = GetLightCount_id278(streams);

        for (int i = 0; i < maxLightCount; i++)
        {
            if (i >= count)
            {
                break;
            }
            PrepareDirectLight_id273(streams, i);
            PrepareMaterialPerDirectLight_id30(streams);

            {
                directLightingContribution += ComputeDirectLightContribution_id564(streams);
            }

            {
                directLightingContribution += ComputeDirectLightContribution_id620(streams);
            }
        }
    }

    {
        PrepareDirectLights_id284();
        const int maxLightCount = GetMaxLightCount_id289(streams);
        int count = GetLightCount_id290(streams);

        for (int i = 0; i < maxLightCount; i++)
        {
            if (i >= count)
            {
                break;
            }
            PrepareDirectLight_id286(streams, i);
            PrepareMaterialPerDirectLight_id30(streams);

            {
                directLightingContribution += ComputeDirectLightContribution_id564(streams);
            }

            {
                directLightingContribution += ComputeDirectLightContribution_id620(streams);
            }
        }
    }

    {
        PrepareDirectLights_id296();
        const int maxLightCount = GetMaxLightCount_id302();
        int count = GetLightCount_id300();

        for (int i = 0; i < maxLightCount; i++)
        {
            if (i >= count)
            {
                break;
            }
            PrepareDirectLight_id298(streams, i);
            PrepareMaterialPerDirectLight_id30(streams);

            {
                directLightingContribution += ComputeDirectLightContribution_id564(streams);
            }

            {
                directLightingContribution += ComputeDirectLightContribution_id620(streams);
            }
        }
    }

    {
        PrepareDirectLights_id309();
        const int maxLightCount = GetMaxLightCount_id314();
        int count = GetLightCount_id313();

        for (int i = 0; i < maxLightCount; i++)
        {
            if (i >= count)
            {
                break;
            }
            PrepareDirectLight_id311(streams, i);
            PrepareMaterialPerDirectLight_id30(streams);

            {
                directLightingContribution += ComputeDirectLightContribution_id564(streams);
            }

            {
                directLightingContribution += ComputeDirectLightContribution_id620(streams);
            }
        }
    }
    float3 environmentLightingContribution = 0;

    {
        PrepareEnvironmentLight_id360(streams);

        {
            environmentLightingContribution += ComputeEnvironmentLightContribution_id565(streams);
        }

        {
            environmentLightingContribution += ComputeEnvironmentLightContribution_id621(streams);
        }
    }

    {
        PrepareEnvironmentLight_id365(streams);

        {
            environmentLightingContribution += ComputeEnvironmentLightContribution_id565(streams);
        }

        {
            environmentLightingContribution += ComputeEnvironmentLightContribution_id621(streams);
        }
    }

    {
        PrepareEnvironmentLight_id370(streams);

        {
            environmentLightingContribution += ComputeEnvironmentLightContribution_id565(streams);
        }

        {
            environmentLightingContribution += ComputeEnvironmentLightContribution_id621(streams);
        }
    }

    {
        PrepareEnvironmentLight_id373(streams);

        {
            environmentLightingContribution += ComputeEnvironmentLightContribution_id565(streams);
        }

        {
            environmentLightingContribution += ComputeEnvironmentLightContribution_id621(streams);
        }
    }
    streams.shadingColor_id72 += directLightingContribution * PI_id263 + environmentLightingContribution;
    streams.shadingColorAlpha_id73 = streams.matDiffuse_id52.a;

    {
        AfterLightingAndShading_id572();
    }

    {
        AfterLightingAndShading_id591();
    }
}
void Compute_id656(inout PS_STREAMS streams)
{
    streams.matAlphaBlendColor_id65 = Compute_id441().rgb;
}
void Compute_id651(inout PS_STREAMS streams)
{
    streams.matDiffuseSpecularAlphaBlend_id64 = Compute_id432(streams).r;
}
void Compute_id646(inout PS_STREAMS streams)
{
    streams.matEmissiveIntensity_id62 = Compute_id420(streams).r;
}
void Compute_id641(inout PS_STREAMS streams)
{
    streams.matEmissive_id61 = Compute_id408(streams).rgba;
}
void Compute_id636(inout PS_STREAMS streams)
{
    float metalness = Compute_id395().r;
    streams.matSpecular_id54 = lerp(0.02, streams.matDiffuse_id52.rgb, metalness);
    streams.matDiffuse_id52.rgb = lerp(streams.matDiffuse_id52.rgb, 0, metalness);
}
void Compute_id631(inout PS_STREAMS streams)
{
    float glossiness = Compute_id394().r;

    {
        glossiness = 1.0 - glossiness;
    }
    streams.matGlossiness_id53 = glossiness;
}
void Compute_id626(inout PS_STREAMS streams)
{
    float4 colorBase = Compute_id385(streams);
    streams.matDiffuse_id52 = colorBase;
    streams.matColorBase_id51 = colorBase;
}
void ResetStream_id241(inout PS_STREAMS streams)
{
    ResetStream_id240(streams);
    streams.matNormal_id50 = float3(0, 0, 1);
    streams.matColorBase_id51 = 0.0f;
    streams.matDiffuse_id52 = 0.0f;
    streams.matDiffuseVisible_id68 = 0.0f;
    streams.matSpecular_id54 = 0.0f;
    streams.matSpecularVisible_id70 = 0.0f;
    streams.matSpecularIntensity_id55 = 1.0f;
    streams.matGlossiness_id53 = 0.0f;
    streams.alphaRoughness_id69 = 1.0f;
    streams.matAmbientOcclusion_id56 = 1.0f;
    streams.matAmbientOcclusionDirectLightingFactor_id57 = 0.0f;
    streams.matCavity_id58 = 1.0f;
    streams.matCavityDiffuse_id59 = 0.0f;
    streams.matCavitySpecular_id60 = 0.0f;
    streams.matEmissive_id61 = 0.0f;
    streams.matEmissiveIntensity_id62 = 0.0f;
    streams.matScatteringStrength_id63 = 1.0f;
    streams.matDiffuseSpecularAlphaBlend_id64 = 1.0f;
    streams.matAlphaBlendColor_id65 = 1.0f;
    streams.matAlphaDiscard_id66 = 0.1f;
}
float4 ComputeShadingPosition_id11(float4 world)
{
    return mul(world, ViewProjection_id28);
}
void PostTransformPosition_id6()
{
}
void PreTransformPosition_id4()
{
}
void Compute_id53(inout PS_STREAMS streams)
{

    {
        Compute_id626(streams);
    }

    {
        Compute_id631(streams);
    }

    {
        Compute_id636(streams);
    }

    {
        Compute_id641(streams);
    }

    {
        Compute_id646(streams);
    }

    {
        Compute_id651(streams);
    }

    {
        Compute_id656(streams);
    }

    {
        Compute_id672(streams);
    }

    {
        Compute_id673(streams);
    }

    {
        Compute_id678(streams);
    }
}
void ResetStream_id52(inout PS_STREAMS streams)
{
    ResetStream_id241(streams);
    streams.shadingColorAlpha_id73 = 1.0f;
}
void PostTransformPosition_id12(inout VS_STREAMS streams)
{
    PostTransformPosition_id6();
    streams.ShadingPosition_id0 = ComputeShadingPosition_id11(streams.PositionWS_id21);
    streams.PositionH_id23 = streams.ShadingPosition_id0;
    streams.DepthVS_id22 = streams.ShadingPosition_id0.w;
}
void TransformPosition_id5()
{
}
void PreTransformPosition_id10(inout VS_STREAMS streams)
{
    PreTransformPosition_id4();
    streams.PositionWS_id21 = mul(streams.Position_id20, World_id31);
}
float4 Shading_id31(inout PS_STREAMS streams)
{
    streams.viewWS_id67 = normalize(Eye_id30.xyz - streams.PositionWS_id21.xyz);
    streams.shadingColor_id72 = 0;
    ResetStream_id52(streams);
    Compute_id53(streams);
    return float4(streams.shadingColor_id72, streams.shadingColorAlpha_id73);
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
}
void GenerateNormal_PS_id22(inout PS_STREAMS streams)
{
    if (dot(streams.normalWS_id18, streams.normalWS_id18) > 0)
        streams.normalWS_id18 = normalize(streams.normalWS_id18);
    streams.meshNormalWS_id16 = streams.normalWS_id18;
}
void GenerateNormal_VS_id21(inout VS_STREAMS streams)
{
    streams.meshNormalWS_id16 = mul(streams.meshNormal_id15, (float3x3)WorldInverseTranspose_id33);
    streams.normalWS_id18 = streams.meshNormalWS_id16;
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
    streams.PositionWS_id21 = __input__.PositionWS_id21;
    streams.ShadingPosition_id0 = __input__.ShadingPosition_id0;
    streams.DepthVS_id22 = __input__.DepthVS_id22;
    streams.normalWS_id18 = __input__.normalWS_id18;
    streams.ScreenPosition_id165 = __input__.ScreenPosition_id165;
    streams.IsFrontFace_id1 = __input__.IsFrontFace_id1;
    streams.ScreenPosition_id165 /= streams.ScreenPosition_id165.w;
    PSMain_id20(streams);
    PS_OUTPUT __output__ = (PS_OUTPUT)0;
    __output__.ColorTarget_id2 = streams.ColorTarget_id2;
    return __output__;
}
VS_OUTPUT VSMain(VS_INPUT __input__)
{
    VS_STREAMS streams = (VS_STREAMS)0;
    streams.Position_id20 = __input__.Position_id20;
    streams.meshNormal_id15 = __input__.meshNormal_id15;
    VSMain_id19(streams);
    streams.ScreenPosition_id165 = streams.ShadingPosition_id0;
    VS_OUTPUT __output__ = (VS_OUTPUT)0;
    __output__.PositionWS_id21 = streams.PositionWS_id21;
    __output__.ShadingPosition_id0 = streams.ShadingPosition_id0;
    __output__.DepthVS_id22 = streams.DepthVS_id22;
    __output__.normalWS_id18 = streams.normalWS_id18;
    __output__.ScreenPosition_id165 = streams.ScreenPosition_id165;
    return __output__;
}
