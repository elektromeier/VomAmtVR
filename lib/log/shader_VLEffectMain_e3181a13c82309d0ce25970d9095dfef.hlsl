/**************************
***** Compiler Parameters *****
***************************
@P EffectName: VLEffectMain
@P   - Material.PixelStageSurfaceShaders: mixin MaterialSurfaceArray [{layers = [mixin MaterialSurfaceDiffuse [{diffuseMap = mixin Float4ToColor [{Value = mixin DoFloat4 [{Before = mixin ComputeOrder [{Computes = [ComputeVoid, ComputeVoid, mixin AssignVarFloat4<BufferItem_1> [{Value = mixin GetItemBufferFloat4<ObjectBuffer_fx0,PerMaterial> [{Index = GetSemanticUInt<SemanticValue_2,SV_InstanceID>}]}], mixin AssignVarFloat4<SRgbToLinear_ShaderFXResult_3> [{Value = mixin SRgbToLinear_ShaderFX [{SRgb = GetVarFloat4<BufferItem_1>}]}]]}]}, {Value = GetVarFloat4<SRgbToLinear_ShaderFXResult_3>}]}]}], mixin MaterialSurfaceGlossinessMap<true> [{glossinessMap = mixin FloatToScalar [{Value = mixin DoFloat [{Before = mixin ComputeOrder [{Computes = [mixin AssignVarFloat<Input_4> [{Value = InputFloat<ShaderFX.InputValueFloat,PerMaterial>}]]}]}, {Value = GetVarFloat<Input_4>}]}]}], mixin MaterialSurfaceMetalness [{metalnessMap = mixin FloatToScalar [{Value = mixin DoFloat [{Before = mixin ComputeOrder [{Computes = [mixin AssignVarFloat<Input_5> [{Value = InputFloat<ShaderFX.InputValueFloat.i1,PerMaterial>}]]}]}, {Value = GetVarFloat<Input_5>}]}]}], mixin MaterialSurfaceSetStreamFromComputeColor<matEmissive,rgba> [{computeColorSource = mixin Float4ToColor [{Value = mixin DoFloat4 [{Before = mixin ComputeOrder [{Computes = [ComputeVoid]}]}, {Value = ConstantFloat4<float4(1, 1, 1, 1)>}]}]}], mixin MaterialSurfaceSetStreamFromComputeColor<matEmissiveIntensity,r> [{computeColorSource = mixin FloatToScalar [{Value = mixin DoFloat [{Before = mixin ComputeOrder [{Computes = [ComputeVoid, ComputeVoid, mixin AssignVarFloat<BufferItem_7> [{Value = mixin GetItemBufferFloat<ObjectBuffer_fx6,PerMaterial> [{Index = GetSemanticUInt<SemanticValue_8,SV_InstanceID>}]}]]}]}, {Value = GetVarFloat<BufferItem_7>}]}]}], mixin MaterialSurfaceLightingAndShading [{surfaces = [MaterialSurfaceShadingDiffuseLambert<false>, mixin MaterialSurfaceShadingSpecularMicrofacet [{environmentFunction = MaterialSpecularMicrofacetEnvironmentGGXLUT}, {fresnelFunction = MaterialSpecularMicrofacetFresnelSchlick}, {geometricShadowingFunction = MaterialSpecularMicrofacetVisibilitySmithSchlickGGX}, {normalDistributionFunction = MaterialSpecularMicrofacetNormalDistributionGGX}]]}], MaterialSurfaceEmissiveShading<false>]}]
@P Material.PixelStageStreamInitializer: mixin MaterialStream, MaterialPixelShadingStream
@P StrideEffectBase.ModelTransformUsage: 0
@P StrideEffectBase.HasInstancing: True
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
@C    MaterialIndex_id85 => GBufferOutputSubsurfaceScatteringMaterialIndex.MaterialIndex
@C    _padding_PerDraw_Default => _padding_PerDraw_Default
@C    LightCount_id184 => DirectLightGroupPerDraw.LightCount.directLightGroups[3]
@C    Lights_id186 => LightPointGroup.Lights.directLightGroups[3]
@C    LightCount_id187 => DirectLightGroupPerDraw.LightCount.directLightGroups[4]
@C    Lights_id189 => LightSpotGroup.Lights.directLightGroups[4]
@C    _padding_PerDraw_Lighting => _padding_PerDraw_Lighting
cbuffer PerMaterial [Size: 16]
@C    InputValue_id227 => ShaderFX.InputValueFloat
@C    InputValue_id236 => ShaderFX.InputValueFloat.i1
cbuffer PerView [Size: 1888]
@C    View_id25 => Transformation.View
@C    ViewInverse_id26 => Transformation.ViewInverse
@C    Projection_id27 => Transformation.Projection
@C    ProjectionInverse_id28 => Transformation.ProjectionInverse
@C    ViewProjection_id29 => Transformation.ViewProjection
@C    ProjScreenRay_id30 => Transformation.ProjScreenRay
@C    Eye_id31 => Transformation.Eye
@C    NearClipPlane_id170 => Camera.NearClipPlane
@C    FarClipPlane_id171 => Camera.FarClipPlane
@C    ZProjection_id172 => Camera.ZProjection
@C    ViewSize_id173 => Camera.ViewSize
@C    AspectRatio_id174 => Camera.AspectRatio
@C    _padding_PerView_Default => _padding_PerView_Default
@C    LightCount_id88 => DirectLightGroupPerView.LightCount.directLightGroups[0]
@C    Lights_id90 => LightDirectionalGroup.Lights.directLightGroups[0]
@C    ShadowMapTextureSize_id92 => ShadowMap.TextureSize.directLightGroups[0]
@C    ShadowMapTextureTexelSize_id93 => ShadowMap.TextureTexelSize.directLightGroups[0]
@C    WorldToShadowCascadeUV_id155 => ShadowMapReceiverBase.WorldToShadowCascadeUV.directLightGroups[0]
@C    InverseWorldToShadowCascadeUV_id156 => ShadowMapReceiverBase.InverseWorldToShadowCascadeUV.directLightGroups[0]
@C    ViewMatrices_id157 => ShadowMapReceiverBase.ViewMatrices.directLightGroups[0]
@C    DepthRanges_id158 => ShadowMapReceiverBase.DepthRanges.directLightGroups[0]
@C    DepthBiases_id159 => ShadowMapReceiverBase.DepthBiases.directLightGroups[0]
@C    OffsetScales_id160 => ShadowMapReceiverBase.OffsetScales.directLightGroups[0]
@C    CascadeDepthSplits_id167 => ShadowMapReceiverDirectional.CascadeDepthSplits.directLightGroups[0]
@C    ClusterDepthScale_id179 => LightClustered.ClusterDepthScale
@C    ClusterDepthBias_id180 => LightClustered.ClusterDepthBias
@C    ClusterStride_id181 => LightClustered.ClusterStride
@C    AmbientLight_id190 => LightSimpleAmbient.AmbientLight.environmentLights[0]
@C    SphericalColors_id195 => SphericalHarmonicsEnvironmentColor.SphericalColors.lightDiffuseColor.environmentLights[1]
@C    MipCount_id196 => RoughnessCubeMapEnvironmentColor.MipCount.lightSpecularColor.environmentLights[1]
@C    SkyMatrix_id198 => LightSkyboxShader.SkyMatrix.environmentLights[1]
@C    Intensity_id199 => LightSkyboxShader.Intensity.environmentLights[1]
@C    SphericalColors_id206 => SphericalHarmonicsEnvironmentColor.SphericalColors.lightDiffuseColor.environmentLights[2]
@C    MipCount_id207 => RoughnessCubeMapEnvironmentColor.MipCount.lightSpecularColor.environmentLights[2]
@C    SkyMatrix_id209 => LightSkyboxShader.SkyMatrix.environmentLights[2]
@C    Intensity_id210 => LightSkyboxShader.Intensity.environmentLights[2]
@C    _padding_PerView_Lighting => _padding_PerView_Lighting
***************************
******  Resources    ******
***************************
@R    PerMaterial => PerMaterial [Stage: None, Slot: (-1--1)]
@R    InstanceWorld_id40 => TransformationInstancing.InstanceWorld [Stage: None, Slot: (-1--1)]
@R    InstanceWorld_id40 => TransformationInstancing.InstanceWorld [Stage: None, Slot: (-1--1)]
@R    InstanceWorldInverse_id41 => TransformationInstancing.InstanceWorldInverse [Stage: None, Slot: (-1--1)]
@R    InstanceWorldInverse_id41 => TransformationInstancing.InstanceWorldInverse [Stage: None, Slot: (-1--1)]
@R    DynamicBuffer_id214 => ObjectBuffer_fx0 [Stage: None, Slot: (-1--1)]
@R    DynamicBuffer_id214 => ObjectBuffer_fx0 [Stage: None, Slot: (-1--1)]
@R    DynamicBuffer_id253 => ObjectBuffer_fx6 [Stage: None, Slot: (-1--1)]
@R    DynamicBuffer_id253 => ObjectBuffer_fx6 [Stage: None, Slot: (-1--1)]
@R    EnvironmentLightingDFG_LUT_id267 => MaterialSpecularMicrofacetEnvironmentGGXLUT.EnvironmentLightingDFG_LUT [Stage: None, Slot: (-1--1)]
@R    EnvironmentLightingDFG_LUT_id267 => MaterialSpecularMicrofacetEnvironmentGGXLUT.EnvironmentLightingDFG_LUT [Stage: None, Slot: (-1--1)]
@R    ShadowMapTexture_id91 => ShadowMap.ShadowMapTexture.directLightGroups[0] [Stage: None, Slot: (-1--1)]
@R    ShadowMapTexture_id91 => ShadowMap.ShadowMapTexture.directLightGroups[0] [Stage: None, Slot: (-1--1)]
@R    LightClusters_id177 => LightClustered.LightClusters [Stage: None, Slot: (-1--1)]
@R    LightClusters_id177 => LightClustered.LightClusters [Stage: None, Slot: (-1--1)]
@R    LightIndices_id178 => LightClustered.LightIndices [Stage: None, Slot: (-1--1)]
@R    LightIndices_id178 => LightClustered.LightIndices [Stage: None, Slot: (-1--1)]
@R    PointLights_id182 => LightClusteredPointGroup.PointLights [Stage: None, Slot: (-1--1)]
@R    PointLights_id182 => LightClusteredPointGroup.PointLights [Stage: None, Slot: (-1--1)]
@R    SpotLights_id183 => LightClusteredSpotGroup.SpotLights [Stage: None, Slot: (-1--1)]
@R    SpotLights_id183 => LightClusteredSpotGroup.SpotLights [Stage: None, Slot: (-1--1)]
@R    CubeMap_id197 => RoughnessCubeMapEnvironmentColor.CubeMap.lightSpecularColor.environmentLights[1] [Stage: None, Slot: (-1--1)]
@R    CubeMap_id197 => RoughnessCubeMapEnvironmentColor.CubeMap.lightSpecularColor.environmentLights[1] [Stage: None, Slot: (-1--1)]
@R    CubeMap_id208 => RoughnessCubeMapEnvironmentColor.CubeMap.lightSpecularColor.environmentLights[2] [Stage: None, Slot: (-1--1)]
@R    CubeMap_id208 => RoughnessCubeMapEnvironmentColor.CubeMap.lightSpecularColor.environmentLights[2] [Stage: None, Slot: (-1--1)]
@R    InstanceWorld_id40 => TransformationInstancing.InstanceWorld [Stage: Vertex, Slot: (0-0)]
@R    InstanceWorldInverse_id41 => TransformationInstancing.InstanceWorldInverse [Stage: Vertex, Slot: (1-1)]
@R    PerView => PerView [Stage: Vertex, Slot: (0-0)]
@R    LinearSampler_id124 => Texturing.LinearSampler [Stage: Pixel, Slot: (0-0)]
@R    LinearClampCompareLessEqualSampler_id126 => Texturing.LinearClampCompareLessEqualSampler [Stage: Pixel, Slot: (1-1)]
@R    DynamicBuffer_id214 => ObjectBuffer_fx0 [Stage: Pixel, Slot: (0-0)]
@R    DynamicBuffer_id253 => ObjectBuffer_fx6 [Stage: Pixel, Slot: (1-1)]
@R    EnvironmentLightingDFG_LUT_id267 => MaterialSpecularMicrofacetEnvironmentGGXLUT.EnvironmentLightingDFG_LUT [Stage: Pixel, Slot: (2-2)]
@R    ShadowMapTexture_id91 => ShadowMap.ShadowMapTexture.directLightGroups[0] [Stage: Pixel, Slot: (3-3)]
@R    LightClusters_id177 => LightClustered.LightClusters [Stage: Pixel, Slot: (4-4)]
@R    LightIndices_id178 => LightClustered.LightIndices [Stage: Pixel, Slot: (5-5)]
@R    PointLights_id182 => LightClusteredPointGroup.PointLights [Stage: Pixel, Slot: (6-6)]
@R    SpotLights_id183 => LightClusteredSpotGroup.SpotLights [Stage: Pixel, Slot: (7-7)]
@R    CubeMap_id197 => RoughnessCubeMapEnvironmentColor.CubeMap.lightSpecularColor.environmentLights[1] [Stage: Pixel, Slot: (8-8)]
@R    CubeMap_id208 => RoughnessCubeMapEnvironmentColor.CubeMap.lightSpecularColor.environmentLights[2] [Stage: Pixel, Slot: (9-9)]
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
@S    GetItemBufferFloat4 => 6bd82ad670c7625bb6c032f16d8773af
@S    ComputeUInt => 78f5fba21eb9638d1fe5b2ab2f2b1473
@S    DeclBufferFloat4 => e577e58ad93d009af9e21028993784e5
@S    GetSemanticUInt => c7f97593922a73ace6d87d7e1411282d
@S    SemanticUInt => d5b6f820e3033d37942fd14091e16457
@S    SRgbToLinear_ShaderFX => c1818816125e87fc35921cf7ba42a73f
@S    ColorUtilityTemp => aaad87d7a436b3b45e9357c497e8f2e5
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
@S    ConstantFloat4 => be4f0833deb972bc9d796b3dd76bf42d
@S    GetItemBufferFloat => a365756f3c20462ba93382579023c845
@S    DeclBufferFloat => a48625de424e0e3329d000d0f5740c9a
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
@S    GBufferOutputSubsurfaceScatteringMaterialIndex => 5df9471bf02401dc5db0de4bbd3d8abb
***************************
*****     Stages      *****
***************************
@G    Vertex => 8e2d80bb45ba95f35296503ac1305d12
//
// Generated by Microsoft (R) HLSL Shader Compiler 10.1
//
//
// Buffer Definitions: 
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
//   float NearClipPlane_id170;         // Offset:  352 Size:     4 [unused]
//      = 0x3f800000 
//   float FarClipPlane_id171;          // Offset:  356 Size:     4 [unused]
//      = 0x42c80000 
//   float2 ZProjection_id172;          // Offset:  360 Size:     8 [unused]
//   float2 ViewSize_id173;             // Offset:  368 Size:     8 [unused]
//   float AspectRatio_id174;           // Offset:  376 Size:     4 [unused]
//   float4 _padding_PerView_Default;   // Offset:  384 Size:    16 [unused]
//   int LightCount_id88;               // Offset:  400 Size:     4 [unused]
//   
//   struct DirectionalLightData
//   {
//       
//       float3 DirectionWS;            // Offset:  416
//       float3 Color;                  // Offset:  432
//
//   } Lights_id90;                     // Offset:  416 Size:    28 [unused]
//   float2 ShadowMapTextureSize_id92;  // Offset:  448 Size:     8 [unused]
//   float2 ShadowMapTextureTexelSize_id93;// Offset:  456 Size:     8 [unused]
//   float4x4 WorldToShadowCascadeUV_id155[4];// Offset:  464 Size:   256 [unused]
//   float4x4 InverseWorldToShadowCascadeUV_id156[4];// Offset:  720 Size:   256 [unused]
//   float4x4 ViewMatrices_id157[4];    // Offset:  976 Size:   256 [unused]
//   float2 DepthRanges_id158[4];       // Offset: 1232 Size:    56 [unused]
//   float DepthBiases_id159;           // Offset: 1296 Size:     4 [unused]
//   float OffsetScales_id160;          // Offset: 1312 Size:     4 [unused]
//   float CascadeDepthSplits_id167[4]; // Offset: 1328 Size:    52 [unused]
//   float ClusterDepthScale_id179;     // Offset: 1380 Size:     4 [unused]
//   float ClusterDepthBias_id180;      // Offset: 1384 Size:     4 [unused]
//   float2 ClusterStride_id181;        // Offset: 1392 Size:     8 [unused]
//   float3 AmbientLight_id190;         // Offset: 1408 Size:    12 [unused]
//   float3 SphericalColors_id195[9];   // Offset: 1424 Size:   140 [unused]
//   float MipCount_id196;              // Offset: 1564 Size:     4 [unused]
//   float4x4 SkyMatrix_id198;          // Offset: 1568 Size:    64 [unused]
//   float Intensity_id199;             // Offset: 1632 Size:     4 [unused]
//   float3 SphericalColors_id206[9];   // Offset: 1648 Size:   140 [unused]
//   float MipCount_id207;              // Offset: 1788 Size:     4 [unused]
//   float4x4 SkyMatrix_id209;          // Offset: 1792 Size:    64 [unused]
//   float Intensity_id210;             // Offset: 1856 Size:     4 [unused]
//   float4 _padding_PerView_Lighting;  // Offset: 1872 Size:    16 [unused]
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
// PerView                           cbuffer      NA          NA            cb0      1 
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
// DEPTH_VS                 0   x           2     NONE   float   x   
// NORMALWS                 0    yzw        2     NONE   float    yzw
// SCREENPOSITION_ID169_SEM     0   xyzw        3     NONE   float   xyzw
// SV_InstanceID            0   x           4     NONE    uint   x   
//
vs_5_0
dcl_globalFlags refactoringAllowed
dcl_constantbuffer CB0[20], immediateIndexed
dcl_resource_structured t0, 64
dcl_resource_structured t1, 64
dcl_input v0.xyzw
dcl_input_sgv v1.x, instance_id
dcl_input v2.xyz
dcl_output o0.xyzw
dcl_output_siv o1.xyzw, position
dcl_output o2.x
dcl_output o2.yzw
dcl_output o3.xyzw
dcl_output o4.x
dcl_temps 4
//
// Initial variable locations:
//   v0.x <- __input__.Position_id21.x; v0.y <- __input__.Position_id21.y; v0.z <- __input__.Position_id21.z; v0.w <- __input__.Position_id21.w; 
//   v1.x <- __input__.InstanceID_id13; 
//   v2.x <- __input__.meshNormal_id16.x; v2.y <- __input__.meshNormal_id16.y; v2.z <- __input__.meshNormal_id16.z; 
//   o4.x <- <VSMain return value>.InstanceID_id13; 
//   o3.x <- <VSMain return value>.ScreenPosition_id169.x; o3.y <- <VSMain return value>.ScreenPosition_id169.y; o3.z <- <VSMain return value>.ScreenPosition_id169.z; o3.w <- <VSMain return value>.ScreenPosition_id169.w; 
//   o2.x <- <VSMain return value>.DepthVS_id23; o2.y <- <VSMain return value>.normalWS_id19.x; o2.z <- <VSMain return value>.normalWS_id19.y; o2.w <- <VSMain return value>.normalWS_id19.z; 
//   o1.x <- <VSMain return value>.ShadingPosition_id0.x; o1.y <- <VSMain return value>.ShadingPosition_id0.y; o1.z <- <VSMain return value>.ShadingPosition_id0.z; o1.w <- <VSMain return value>.ShadingPosition_id0.w; 
//   o0.x <- <VSMain return value>.PositionWS_id22.x; o0.y <- <VSMain return value>.PositionWS_id22.y; o0.z <- <VSMain return value>.PositionWS_id22.z; o0.w <- <VSMain return value>.PositionWS_id22.w
//
#line 1626 "C:\Users\elektromeier\Desktop\VomAmt\VomAmtVR\lib\log\shader_VLEffectMain_e3181a13c82309d0ce25970d9095dfef.hlsl"
ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r0.xyzw, v1.x, l(0), t0.xyzw  // r0.x <- <GetInstanceWorld_id13 return value>._m00; r0.y <- <GetInstanceWorld_id13 return value>._m10; r0.z <- <GetInstanceWorld_id13 return value>._m20; r0.w <- <GetInstanceWorld_id13 return value>._m30

#line 1676
dp4 r0.x, v0.xyzw, r0.xyzw  // r0.x <- streams.PositionWS_id22.x

#line 1626
ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r1.xyzw, v1.x, l(16), t0.xyzw  // r1.x <- <GetInstanceWorld_id13 return value>._m01; r1.y <- <GetInstanceWorld_id13 return value>._m11; r1.z <- <GetInstanceWorld_id13 return value>._m21; r1.w <- <GetInstanceWorld_id13 return value>._m31

#line 1676
dp4 r0.y, v0.xyzw, r1.xyzw  // r0.y <- streams.PositionWS_id22.y

#line 1626
ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r1.xyzw, v1.x, l(32), t0.xyzw  // r1.x <- <GetInstanceWorld_id13 return value>._m02; r1.y <- <GetInstanceWorld_id13 return value>._m12; r1.z <- <GetInstanceWorld_id13 return value>._m22; r1.w <- <GetInstanceWorld_id13 return value>._m32

#line 1676
dp4 r0.z, v0.xyzw, r1.xyzw  // r0.z <- streams.PositionWS_id22.z

#line 1626
ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r1.xyzw, v1.x, l(48), t0.xyzw  // r1.x <- <GetInstanceWorld_id13 return value>._m03; r1.y <- <GetInstanceWorld_id13 return value>._m13; r1.z <- <GetInstanceWorld_id13 return value>._m23; r1.w <- <GetInstanceWorld_id13 return value>._m33

#line 1676
dp4 r0.w, v0.xyzw, r1.xyzw  // r0.w <- streams.PositionWS_id22.w

#line 1770
mov o0.xyzw, r0.xyzw

#line 1619
dp4 r1.x, r0.xyzw, cb0[16].xyzw  // r1.x <- <ComputeShadingPosition_id11 return value>.x
dp4 r1.y, r0.xyzw, cb0[17].xyzw  // r1.y <- <ComputeShadingPosition_id11 return value>.y
dp4 r1.z, r0.xyzw, cb0[18].xyzw  // r1.z <- <ComputeShadingPosition_id11 return value>.z
dp4 r1.w, r0.xyzw, cb0[19].xyzw  // r1.w <- <ComputeShadingPosition_id11 return value>.w

#line 1770
mov o1.xyzw, r1.xyzw
mov o3.xyzw, r1.xyzw
mov o2.x, r1.w

#line 1695
ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r0.xyz, v1.x, l(0), t1.yxzx  // r0.y <- <GetInstanceWorldInverse_id14 return value>._m00; r0.x <- <GetInstanceWorldInverse_id14 return value>._m10; r0.z <- <GetInstanceWorldInverse_id14 return value>._m20

#line 1720
mov r1.x, r0.y

#line 1695
ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r2.xyz, v1.x, l(16), t1.xzyx  // r2.x <- <GetInstanceWorldInverse_id14 return value>._m01; r2.z <- <GetInstanceWorldInverse_id14 return value>._m11; r2.y <- <GetInstanceWorldInverse_id14 return value>._m21

#line 1720
mov r1.y, r2.x

#line 1695
ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r3.xyz, v1.x, l(32), t1.xyzx  // r3.x <- <GetInstanceWorldInverse_id14 return value>._m02; r3.y <- <GetInstanceWorldInverse_id14 return value>._m12; r3.z <- <GetInstanceWorldInverse_id14 return value>._m22

#line 1720
mov r1.z, r3.x
dp3 o2.y, r1.xyzx, v2.xyzx
mov r2.x, r0.z
mov r0.y, r2.z
mov r0.z, r3.y
mov r2.z, r3.z
dp3 o2.w, r2.xyzx, v2.xyzx
dp3 o2.z, r0.xyzx, v2.xyzx

#line 1770
mov o4.x, v1.x
ret 
// Approximately 31 instruction slots used
@G    Pixel => a616a4b30df3aae6efb5777a92a558a0
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
//   float4 _padding_PerDraw_Default;   // Offset:  432 Size:    16 [unused]
//   int LightCount_id184;              // Offset:  448 Size:     4
//   
//   struct PointLightData
//   {
//       
//       float3 PositionWS;             // Offset:  464
//       float InvSquareRadius;         // Offset:  476
//       float3 Color;                  // Offset:  480
//
//   } Lights_id186[32];                // Offset:  464 Size:  1020
//   int LightCount_id187;              // Offset: 1484 Size:     4
//   
//   struct SpotLightData
//   {
//       
//       float3 PositionWS;             // Offset: 1488
//       float3 DirectionWS;            // Offset: 1504
//       float3 AngleOffsetAndInvSquareRadius;// Offset: 1520
//       float3 Color;                  // Offset: 1536
//
//   } Lights_id189[8];                 // Offset: 1488 Size:   508
//   float4 _padding_PerDraw_Lighting;  // Offset: 2000 Size:    16 [unused]
//
// }
//
// cbuffer PerMaterial
// {
//
//   float InputValue_id227;            // Offset:    0 Size:     4
//   float InputValue_id236;            // Offset:    4 Size:     4
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
//   float NearClipPlane_id170;         // Offset:  352 Size:     4 [unused]
//      = 0x3f800000 
//   float FarClipPlane_id171;          // Offset:  356 Size:     4 [unused]
//      = 0x42c80000 
//   float2 ZProjection_id172;          // Offset:  360 Size:     8
//   float2 ViewSize_id173;             // Offset:  368 Size:     8 [unused]
//   float AspectRatio_id174;           // Offset:  376 Size:     4 [unused]
//   float4 _padding_PerView_Default;   // Offset:  384 Size:    16 [unused]
//   int LightCount_id88;               // Offset:  400 Size:     4
//   
//   struct DirectionalLightData
//   {
//       
//       float3 DirectionWS;            // Offset:  416
//       float3 Color;                  // Offset:  432
//
//   } Lights_id90;                     // Offset:  416 Size:    28
//   float2 ShadowMapTextureSize_id92;  // Offset:  448 Size:     8
//   float2 ShadowMapTextureTexelSize_id93;// Offset:  456 Size:     8
//   float4x4 WorldToShadowCascadeUV_id155[4];// Offset:  464 Size:   256
//   float4x4 InverseWorldToShadowCascadeUV_id156[4];// Offset:  720 Size:   256 [unused]
//   float4x4 ViewMatrices_id157[4];    // Offset:  976 Size:   256 [unused]
//   float2 DepthRanges_id158[4];       // Offset: 1232 Size:    56 [unused]
//   float DepthBiases_id159;           // Offset: 1296 Size:     4
//   float OffsetScales_id160;          // Offset: 1312 Size:     4
//   float CascadeDepthSplits_id167[4]; // Offset: 1328 Size:    52
//   float ClusterDepthScale_id179;     // Offset: 1380 Size:     4
//   float ClusterDepthBias_id180;      // Offset: 1384 Size:     4
//   float2 ClusterStride_id181;        // Offset: 1392 Size:     8
//   float3 AmbientLight_id190;         // Offset: 1408 Size:    12
//   float3 SphericalColors_id195[9];   // Offset: 1424 Size:   140
//   float MipCount_id196;              // Offset: 1564 Size:     4
//   float4x4 SkyMatrix_id198;          // Offset: 1568 Size:    64
//   float Intensity_id199;             // Offset: 1632 Size:     4
//   float3 SphericalColors_id206[9];   // Offset: 1648 Size:   140
//   float MipCount_id207;              // Offset: 1788 Size:     4
//   float4x4 SkyMatrix_id209;          // Offset: 1792 Size:    64
//   float Intensity_id210;             // Offset: 1856 Size:     4
//   float4 _padding_PerView_Lighting;  // Offset: 1872 Size:    16 [unused]
//
// }
//
//
// Resource Bindings:
//
// Name                                 Type  Format         Dim      HLSL Bind  Count
// ------------------------------ ---------- ------- ----------- -------------- ------
// LinearSampler_id124               sampler      NA          NA             s0      1 
// LinearClampCompareLessEqualSampler_id126  sampler_c      NA          NA             s1      1 
// DynamicBuffer_id214               texture  float4         buf             t0      1 
// DynamicBuffer_id253               texture   float         buf             t1      1 
// EnvironmentLightingDFG_LUT_id267    texture  float4          2d             t2      1 
// ShadowMapTexture_id91             texture  float4          2d             t3      1 
// LightClusters_id177               texture   uint2          3d             t4      1 
// LightIndices_id178                texture    uint         buf             t5      1 
// PointLights_id182                 texture  float4         buf             t6      1 
// SpotLights_id183                  texture  float4         buf             t7      1 
// CubeMap_id197                     texture  float4        cube             t8      1 
// CubeMap_id208                     texture  float4        cube             t9      1 
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
// SCREENPOSITION_ID169_SEM     0   xyzw        3     NONE   float   xy w
// SV_InstanceID            0   x           4     NONE    uint   x   
// SV_IsFrontFace           0   x           5    FFACE    uint   x   
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
dcl_constantbuffer CB1[1], immediateIndexed
dcl_constantbuffer CB2[117], dynamicIndexed
dcl_sampler s0, mode_default
dcl_sampler s1, mode_comparison
dcl_resource_buffer (float,float,float,float) t0
dcl_resource_buffer (float,float,float,float) t1
dcl_resource_texture2d (float,float,float,float) t2
dcl_resource_texture2d (float,float,float,float) t3
dcl_resource_texture3d (uint,uint,uint,uint) t4
dcl_resource_buffer (uint,uint,uint,uint) t5
dcl_resource_buffer (float,float,float,float) t6
dcl_resource_buffer (float,float,float,float) t7
dcl_resource_texturecube (float,float,float,float) t8
dcl_resource_texturecube (float,float,float,float) t9
dcl_input_ps linear v0.xyz
dcl_input_ps_siv linear noperspective v1.z, position
dcl_input_ps linear v2.x
dcl_input_ps linear v2.yzw
dcl_input_ps linear v3.xyw
dcl_input_ps constant v4.x
dcl_input_ps_sgv constant v5.x, is_front_face
dcl_output o0.xyzw
dcl_output o1.xyzw
dcl_temps 22
//
// Initial variable locations:
//   v0.x <- __input__.PositionWS_id22.x; v0.y <- __input__.PositionWS_id22.y; v0.z <- __input__.PositionWS_id22.z; v0.w <- __input__.PositionWS_id22.w; 
//   v1.x <- __input__.ShadingPosition_id0.x; v1.y <- __input__.ShadingPosition_id0.y; v1.z <- __input__.ShadingPosition_id0.z; v1.w <- __input__.ShadingPosition_id0.w; 
//   v2.x <- __input__.DepthVS_id23; v2.y <- __input__.normalWS_id19.x; v2.z <- __input__.normalWS_id19.y; v2.w <- __input__.normalWS_id19.z; 
//   v3.x <- __input__.ScreenPosition_id169.x; v3.y <- __input__.ScreenPosition_id169.y; v3.z <- __input__.ScreenPosition_id169.z; v3.w <- __input__.ScreenPosition_id169.w; 
//   v4.x <- __input__.InstanceID_id13; 
//   v5.x <- __input__.IsFrontFace_id1; 
//   o1.x <- <PSMain return value>.ColorTarget1_id3.x; o1.y <- <PSMain return value>.ColorTarget1_id3.y; o1.z <- <PSMain return value>.ColorTarget1_id3.z; o1.w <- <PSMain return value>.ColorTarget1_id3.w; 
//   o0.x <- <PSMain return value>.ColorTarget_id2.x; o0.y <- <PSMain return value>.ColorTarget_id2.y; o0.z <- <PSMain return value>.ColorTarget_id2.z; o0.w <- <PSMain return value>.ColorTarget_id2.w
//
#line 1748 "C:\Users\elektromeier\Desktop\VomAmt\VomAmtVR\lib\log\shader_VLEffectMain_e3181a13c82309d0ce25970d9095dfef.hlsl"
div r0.xy, v3.xyxx, v3.wwww  // r0.x <- streams.ScreenPosition_id169.x; r0.y <- streams.ScreenPosition_id169.y

#line 1714
dp3 r0.z, v2.yzwy, v2.yzwy
lt r0.w, l(0.000000), r0.z

#line 1715
rsq r0.z, r0.z
mul r1.xyz, r0.zzzz, v2.yzwy  // r1.x <- streams.normalWS_id19.x; r1.y <- streams.normalWS_id19.y; r1.z <- streams.normalWS_id19.z
movc r1.xyz, r0.wwww, r1.xyzx, v2.yzwy

#line 1684
add r2.xyz, -v0.xyzx, cb2[21].xyzx
dp3 r0.z, r2.xyzx, r2.xyzx
rsq r0.z, r0.z
mul r3.xyz, r0.zzzz, r2.xyzx  // r3.x <- streams.viewWS_id70.x; r3.y <- streams.viewWS_id70.y; r3.z <- streams.viewWS_id70.z

#line 566
ld_indexable(buffer)(float,float,float,float) r4.xyzw, v4.xxxx, t0.xyzw  // r4.x <- <Compute_id370 return value>.x; r4.y <- <Compute_id370 return value>.y; r4.z <- <Compute_id370 return value>.z; r4.w <- <Compute_id370 return value>.w

#line 436
mad r5.xyz, r4.xyzx, l(0.305306, 0.305306, 0.305306, 0.000000), l(0.682171, 0.682171, 0.682171, 0.000000)
mad r5.xyz, r4.xyzx, r5.xyzx, l(0.012523, 0.012523, 0.012523, 0.000000)
mul r6.xyz, r4.xyzx, r5.xyzx  // r6.x <- <SRgbToLinear_id669 return value>.x; r6.y <- <SRgbToLinear_id669 return value>.y; r6.z <- <SRgbToLinear_id669 return value>.z

#line 1583
add r0.w, -cb1[0].x, l(1.000000)  // r0.w <- glossiness

#line 1575
mad r4.xyz, r4.xyzx, r5.xyzx, l(-0.020000, -0.020000, -0.020000, 0.000000)
mad r4.xyz, cb1[0].yyyy, r4.xyzx, l(0.020000, 0.020000, 0.020000, 0.000000)  // r4.x <- streams.matSpecular_id57.x; r4.y <- streams.matSpecular_id57.y; r4.z <- streams.matSpecular_id57.z

#line 1576
mad r5.xyz, cb1[0].yyyy, -r6.xyzx, r6.xyzx  // r5.x <- streams.matDiffuse_id55.x; r5.y <- streams.matDiffuse_id55.y; r5.z <- streams.matDiffuse_id55.z

#line 550
ld_indexable(buffer)(float,float,float,float) r1.w, v4.xxxx, t1.yzwx  // r1.w <- <Compute_id425 return value>

#line 1372
movc r1.xyz, v5.xxxx, r1.xyzx, -r1.xyzx  // r1.x <- streams.normalWS_id19.x; r1.y <- streams.normalWS_id19.y; r1.z <- streams.normalWS_id19.z

#line 1316
dp3 r2.w, r1.xyzx, r3.xyzx
max r6.y, r2.w, l(0.000100)  // r6.y <- streams.NdotV_id74

#line 1317
add r0.w, -r0.w, l(1.000000)  // r0.w <- roughness

#line 1318
mul r0.w, r0.w, r0.w
max r0.w, r0.w, l(0.001000)  // r0.w <- streams.alphaRoughness_id72

#line 1396
ilt r2.w, l(0), cb2[25].x
if_nz r2.w

#line 1286
  dp3 r2.w, r1.xyzx, -cb2[26].xyzx
  max r2.w, r2.w, l(0.000100)  // r2.w <- streams.NdotL_id51

#line 1053
  lt r3.w, cb2[83].x, v2.x

#line 1056
  and r3.w, r3.w, l(1)  // r3.w <- cascadeIndex

#line 1053
  lt r5.w, cb2[84].x, v2.x

#line 1056
  movc r3.w, r5.w, l(2), r3.w

#line 1053
  lt r5.w, cb2[85].x, v2.x

#line 1056
  movc r3.w, r5.w, l(3), r3.w

#line 800
  add r6.z, -r2.w, l(1.000000)
  max r6.z, r6.z, l(0.000000)  // r6.z <- normalOffsetScale

#line 801
  mul r6.w, cb2[28].z, cb2[82].x
  dp2 r6.z, r6.wwww, r6.zzzz

#line 1061
  mad r7.xyz, r6.zzzz, r1.xyzx, v0.xyzx  // r7.x <- shadowPosition.x; r7.y <- shadowPosition.y; r7.z <- shadowPosition.z

#line 793
  ishl r6.z, r3.w, l(2)
  mov r7.w, l(1.000000)
  dp4 r8.x, r7.xyzw, cb2[r6.z + 29].xyzw  // r8.x <- shadowPosition.x
  dp4 r8.y, r7.xyzw, cb2[r6.z + 30].xyzw  // r8.y <- shadowPosition.y
  dp4 r6.w, r7.xyzw, cb2[r6.z + 31].xyzw  // r6.w <- shadowPosition.z
  dp4 r8.w, r7.xyzw, cb2[r6.z + 32].xyzw  // r8.w <- shadowPosition.w

#line 794
  add r8.z, r6.w, -cb2[81].x  // r8.z <- shadowPosition.z

#line 795
  div r8.xyz, r8.xyzx, r8.wwww

#line 543
  mad r8.xy, r8.xyxx, cb2[28].xyxx, l(0.500000, 0.500000, 0.000000, 0.000000)
  round_ni r9.xy, r8.xyxx  // r9.x <- base_uv.x; r9.y <- base_uv.y

#line 544
  add r8.xy, r8.xyxx, -r9.xyxx  // r8.x <- st.x; r8.y <- st.y

#line 545
  add r9.xy, r9.xyxx, l(-0.500000, -0.500000, 0.000000, 0.000000)

#line 546
  mul r9.xy, r9.xyxx, cb2[28].zwzz

#line 405
  mad r10.xyzw, r8.xyyx, l(11.000000, 11.000000, 11.000000, 11.000000), l(-28.000000, -28.000000, 17.000000, 17.000000)  // r10.x <- uvW1.x; r10.y <- uvW1.y

#line 406
  mad r11.xyzw, r8.yxxy, l(5.000000, 5.000000, 5.000000, 5.000000), l(-6.000000, -6.000000, 1.000000, 1.000000)  // r11.x <- uvW0.y; r11.y <- uvW0.x

#line 408
  mad r12.xyzw, r8.xyxy, l(4.000000, 4.000000, 4.000000, 4.000000), l(-5.000000, -5.000000, -16.000000, -16.000000)

#line 407
  div r9.zw, r12.xxxy, r11.yyyx
  add r13.xw, r9.zzzw, l(-3.000000, 0.000000, 0.000000, -3.000000)  // r13.x <- uv0.x; r13.w <- uv0.y

#line 408
  div r9.zw, r12.zzzw, r10.xxxy
  add r13.yz, r9.wwzw, l(0.000000, -1.000000, -1.000000, 0.000000)  // r13.y <- uv1.y; r13.z <- uv1.x

#line 409
  mad r9.zw, r8.xxxy, l(0.000000, 0.000000, 7.000000, 7.000000), l(0.000000, 0.000000, 5.000000, 5.000000)
  div r9.zw, r9.zzzw, r10.wwwz
  add r12.xw, r9.wwwz, l(1.000000, 0.000000, 0.000000, 1.000000)  // r12.x <- uv2.y; r12.w <- uv2.x

#line 410
  div r8.xy, r8.xyxx, r11.zwzz
  add r14.xy, r8.xyxx, l(3.000000, 3.000000, 0.000000, 0.000000)  // r14.x <- uv3.x; r14.y <- uv3.y

#line 412
  mad r15.xyzw, r13.xwzw, cb2[28].zwzw, r9.xyxy

#line 417
  mov r12.yz, r13.wwyw

#line 418
  mov r14.zw, r12.yyyz

#line 416
  mad r16.xyzw, r13.xyzy, cb2[28].zwzw, r9.xyxy

#line 417
  mad r17.xyzw, r12.wywz, cb2[28].zwzw, r9.xyxy

#line 418
  mad r18.xyzw, r14.xzxw, cb2[28].zwzw, r9.xyxy

#line 419
  mov r13.y, r12.x
  mul r8.xy, -r10.wzww, r11.xyxx

#line 420
  mad r19.xyzw, r13.xyzy, cb2[28].zwzw, r9.xyxy
  mul r9.zw, r10.yyyx, -r10.wwwz

#line 421
  mad r14.zw, r12.wwwx, cb2[28].zzzw, r9.xxxy
  mul r20.xy, r10.yzyy, r10.xwxx

#line 422
  mov r13.w, r14.x
  mad r13.yw, r13.wwwy, cb2[28].zzzw, r9.xxxy

#line 424
  mov r12.xz, r13.xxzx

#line 423
  mov r12.y, r14.y
  mul r13.xz, r11.xxyx, -r11.zzwz

#line 424
  mad r21.xyzw, r12.xyzy, cb2[28].zwzw, r9.xyxy
  mul r12.xz, r10.yyxy, -r11.zzwz

#line 425
  mad r12.yw, r12.wwwy, cb2[28].zzzw, r9.xxxy
  mul r10.xyzw, r10.xyzw, r11.xyzw

#line 426
  mad r9.xy, r14.xyxx, cb2[28].zwzz, r9.xyxx
  mul r11.xy, r11.xwxx, r11.yzyy

#line 538
  sample_c_lz_indexable(texture2d)(float,float,float,float) r6.w, r15.xyxx, t3.xxxx, s1, r8.z  // r6.w <- <SampleTextureAndCompare_id74 return value>
  sample_c_lz_indexable(texture2d)(float,float,float,float) r8.w, r15.zwzz, t3.xxxx, s1, r8.z  // r8.w <- <SampleTextureAndCompare_id74 return value>

#line 647
  mul r8.w, r8.w, r10.x
  mad r6.w, r11.x, r6.w, r8.w  // r6.w <- shadow

#line 538
  sample_c_lz_indexable(texture2d)(float,float,float,float) r8.w, r17.xyxx, t3.xxxx, s1, r8.z  // r8.w <- <SampleTextureAndCompare_id74 return value>

#line 647
  mad r6.w, r8.x, r8.w, r6.w

#line 538
  sample_c_lz_indexable(texture2d)(float,float,float,float) r8.x, r18.xyxx, t3.xxxx, s1, r8.z  // r8.x <- <SampleTextureAndCompare_id74 return value>

#line 647
  mad r6.w, r13.x, r8.x, r6.w

#line 538
  sample_c_lz_indexable(texture2d)(float,float,float,float) r8.x, r16.xyxx, t3.xxxx, s1, r8.z

#line 647
  mad r6.w, r10.y, r8.x, r6.w

#line 538
  sample_c_lz_indexable(texture2d)(float,float,float,float) r8.x, r16.zwzz, t3.xxxx, s1, r8.z

#line 647
  mad r6.w, r20.x, r8.x, r6.w

#line 538
  sample_c_lz_indexable(texture2d)(float,float,float,float) r8.x, r17.zwzz, t3.xxxx, s1, r8.z

#line 647
  mad r6.w, r9.z, r8.x, r6.w

#line 538
  sample_c_lz_indexable(texture2d)(float,float,float,float) r8.x, r18.zwzz, t3.xxxx, s1, r8.z

#line 647
  mad r6.w, r12.x, r8.x, r6.w

#line 538
  sample_c_lz_indexable(texture2d)(float,float,float,float) r8.x, r19.xyxx, t3.xxxx, s1, r8.z

#line 647
  mad r6.w, r8.y, r8.x, r6.w

#line 538
  sample_c_lz_indexable(texture2d)(float,float,float,float) r8.x, r19.zwzz, t3.xxxx, s1, r8.z

#line 647
  mad r6.w, r9.w, r8.x, r6.w

#line 538
  sample_c_lz_indexable(texture2d)(float,float,float,float) r8.x, r14.zwzz, t3.xxxx, s1, r8.z

#line 647
  mad r6.w, r20.y, r8.x, r6.w

#line 538
  sample_c_lz_indexable(texture2d)(float,float,float,float) r8.x, r13.ywyy, t3.xxxx, s1, r8.z

#line 647
  mad r6.w, r10.z, r8.x, r6.w

#line 538
  sample_c_lz_indexable(texture2d)(float,float,float,float) r8.x, r21.xyxx, t3.xxxx, s1, r8.z

#line 647
  mad r6.w, r13.z, r8.x, r6.w

#line 538
  sample_c_lz_indexable(texture2d)(float,float,float,float) r8.x, r21.zwzz, t3.xxxx, s1, r8.z

#line 647
  mad r6.w, r12.z, r8.x, r6.w

#line 538
  sample_c_lz_indexable(texture2d)(float,float,float,float) r8.x, r12.ywyy, t3.xxxx, s1, r8.z

#line 647
  mad r6.w, r10.w, r8.x, r6.w

#line 538
  sample_c_lz_indexable(texture2d)(float,float,float,float) r8.x, r9.xyxx, t3.xxxx, s1, r8.z

#line 647
  mad r6.w, r11.y, r8.x, r6.w

#line 649
  mul r8.xyz, r6.wwww, l(0.000370, 0.000370, 0.000370, 0.000000)  // r8.z <- shadow

#line 1067
  ilt r8.w, l(0), r3.w
  if_nz r8.w

#line 1069
    iadd r8.w, r3.w, l(-1)
    add r8.w, -cb2[r8.w + 83].x, cb2[r3.w + 83].x  // r8.w <- splitSize

#line 1070
  else 
    mov r8.w, cb2[r3.w + 83].x  // r8.w <- splitSize
  endif 

#line 1071
  add r3.w, -v2.x, cb2[r3.w + 83].x
  div r3.w, r3.w, r8.w  // r3.w <- splitDist

#line 1072
  lt r8.w, r3.w, l(0.200000)
  if_nz r8.w

#line 1075
    if_nz r5.w

#line 1077
      mov r8.xyz, r8.zzzz  // r8.x <- shadow.x; r8.y <- shadow.y; r8.z <- shadow.z
    else 

#line 1074
      mul_sat r3.w, r3.w, l(5.000000)
      mad r5.w, r3.w, l(-2.000000), l(3.000000)
      mul r3.w, r3.w, r3.w
      mul r3.w, r3.w, r5.w  // r3.w <- lerpAmt

#line 793
      dp4 r9.x, r7.xyzw, cb2[r6.z + 33].xyzw  // r9.x <- shadowPosition.x
      dp4 r9.y, r7.xyzw, cb2[r6.z + 34].xyzw  // r9.y <- shadowPosition.y
      dp4 r5.w, r7.xyzw, cb2[r6.z + 35].xyzw  // r5.w <- shadowPosition.z
      dp4 r6.z, r7.xyzw, cb2[r6.z + 36].xyzw  // r6.z <- shadowPosition.w

#line 794
      add r9.z, r5.w, -cb2[81].x  // r9.z <- shadowPosition.z

#line 795
      div r7.xyz, r9.xyzx, r6.zzzz  // r7.x <- shadowPosition.x; r7.y <- shadowPosition.y; r7.z <- shadowPosition.z

#line 543
      mad r7.xy, r7.xyxx, cb2[28].xyxx, l(0.500000, 0.500000, 0.000000, 0.000000)
      round_ni r9.xy, r7.xyxx  // r9.x <- base_uv.x; r9.y <- base_uv.y

#line 544
      add r7.xy, r7.xyxx, -r9.xyxx  // r7.x <- st.x; r7.y <- st.y

#line 545
      add r9.xy, r9.xyxx, l(-0.500000, -0.500000, 0.000000, 0.000000)

#line 546
      mul r9.xy, r9.xyxx, cb2[28].zwzz

#line 405
      mad r10.xyzw, r7.xyyx, l(11.000000, 11.000000, 11.000000, 11.000000), l(-28.000000, -28.000000, 17.000000, 17.000000)  // r10.x <- uvW1.x; r10.y <- uvW1.y

#line 406
      mad r11.xyzw, r7.yxxy, l(5.000000, 5.000000, 5.000000, 5.000000), l(-6.000000, -6.000000, 1.000000, 1.000000)  // r11.x <- uvW0.y; r11.y <- uvW0.x

#line 408
      mad r12.xyzw, r7.xyxy, l(4.000000, 4.000000, 4.000000, 4.000000), l(-5.000000, -5.000000, -16.000000, -16.000000)

#line 407
      div r9.zw, r12.xxxy, r11.yyyx
      add r13.xw, r9.zzzw, l(-3.000000, 0.000000, 0.000000, -3.000000)  // r13.x <- uv0.x; r13.w <- uv0.y

#line 408
      div r9.zw, r12.zzzw, r10.xxxy
      add r13.yz, r9.wwzw, l(0.000000, -1.000000, -1.000000, 0.000000)  // r13.y <- uv1.y; r13.z <- uv1.x

#line 409
      mad r9.zw, r7.xxxy, l(0.000000, 0.000000, 7.000000, 7.000000), l(0.000000, 0.000000, 5.000000, 5.000000)
      div r9.zw, r9.zzzw, r10.wwwz
      add r12.xw, r9.wwwz, l(1.000000, 0.000000, 0.000000, 1.000000)  // r12.x <- uv2.y; r12.w <- uv2.x

#line 410
      div r7.xy, r7.xyxx, r11.zwzz
      add r14.xy, r7.xyxx, l(3.000000, 3.000000, 0.000000, 0.000000)  // r14.x <- uv3.x; r14.y <- uv3.y

#line 412
      mad r15.xyzw, r13.xwzw, cb2[28].zwzw, r9.xyxy

#line 417
      mov r12.yz, r13.wwyw

#line 418
      mov r14.zw, r12.yyyz

#line 416
      mad r16.xyzw, r13.xyzy, cb2[28].zwzw, r9.xyxy

#line 417
      mad r17.xyzw, r12.wywz, cb2[28].zwzw, r9.xyxy

#line 418
      mad r18.xyzw, r14.xzxw, cb2[28].zwzw, r9.xyxy

#line 419
      mov r13.y, r12.x
      mul r7.xy, -r10.wzww, r11.xyxx

#line 420
      mad r19.xyzw, r13.xyzy, cb2[28].zwzw, r9.xyxy
      mul r9.zw, r10.yyyx, -r10.wwwz

#line 421
      mad r14.zw, r12.wwwx, cb2[28].zzzw, r9.xxxy
      mul r20.xy, r10.yzyy, r10.xwxx

#line 422
      mov r13.w, r14.x
      mad r13.yw, r13.wwwy, cb2[28].zzzw, r9.xxxy

#line 424
      mov r12.xz, r13.xxzx

#line 423
      mov r12.y, r14.y
      mul r13.xz, r11.xxyx, -r11.zzwz

#line 424
      mad r21.xyzw, r12.xyzy, cb2[28].zwzw, r9.xyxy
      mul r12.xz, r10.yyxy, -r11.zzwz

#line 425
      mad r12.yw, r12.wwwy, cb2[28].zzzw, r9.xxxy
      mul r10.xyzw, r10.xyzw, r11.xyzw

#line 426
      mad r9.xy, r14.xyxx, cb2[28].zwzz, r9.xyxx
      mul r11.xy, r11.xwxx, r11.yzyy

#line 538
      sample_c_lz_indexable(texture2d)(float,float,float,float) r5.w, r15.xyxx, t3.xxxx, s1, r7.z  // r5.w <- <SampleTextureAndCompare_id74 return value>
      sample_c_lz_indexable(texture2d)(float,float,float,float) r6.z, r15.zwzz, t3.xxxx, s1, r7.z  // r6.z <- <SampleTextureAndCompare_id74 return value>

#line 647
      mul r6.z, r6.z, r10.x
      mad r5.w, r11.x, r5.w, r6.z  // r5.w <- shadow

#line 538
      sample_c_lz_indexable(texture2d)(float,float,float,float) r6.z, r17.xyxx, t3.xxxx, s1, r7.z  // r6.z <- <SampleTextureAndCompare_id74 return value>

#line 647
      mad r5.w, r7.x, r6.z, r5.w

#line 538
      sample_c_lz_indexable(texture2d)(float,float,float,float) r6.z, r18.xyxx, t3.xxxx, s1, r7.z

#line 647
      mad r5.w, r13.x, r6.z, r5.w

#line 538
      sample_c_lz_indexable(texture2d)(float,float,float,float) r6.z, r16.xyxx, t3.xxxx, s1, r7.z

#line 647
      mad r5.w, r10.y, r6.z, r5.w

#line 538
      sample_c_lz_indexable(texture2d)(float,float,float,float) r6.z, r16.zwzz, t3.xxxx, s1, r7.z

#line 647
      mad r5.w, r20.x, r6.z, r5.w

#line 538
      sample_c_lz_indexable(texture2d)(float,float,float,float) r6.z, r17.zwzz, t3.xxxx, s1, r7.z

#line 647
      mad r5.w, r9.z, r6.z, r5.w

#line 538
      sample_c_lz_indexable(texture2d)(float,float,float,float) r6.z, r18.zwzz, t3.xxxx, s1, r7.z

#line 647
      mad r5.w, r12.x, r6.z, r5.w

#line 538
      sample_c_lz_indexable(texture2d)(float,float,float,float) r6.z, r19.xyxx, t3.xxxx, s1, r7.z

#line 647
      mad r5.w, r7.y, r6.z, r5.w

#line 538
      sample_c_lz_indexable(texture2d)(float,float,float,float) r6.z, r19.zwzz, t3.xxxx, s1, r7.z

#line 647
      mad r5.w, r9.w, r6.z, r5.w

#line 538
      sample_c_lz_indexable(texture2d)(float,float,float,float) r6.z, r14.zwzz, t3.xxxx, s1, r7.z

#line 647
      mad r5.w, r20.y, r6.z, r5.w

#line 538
      sample_c_lz_indexable(texture2d)(float,float,float,float) r6.z, r13.ywyy, t3.xxxx, s1, r7.z

#line 647
      mad r5.w, r10.z, r6.z, r5.w

#line 538
      sample_c_lz_indexable(texture2d)(float,float,float,float) r6.z, r21.xyxx, t3.xxxx, s1, r7.z

#line 647
      mad r5.w, r13.z, r6.z, r5.w

#line 538
      sample_c_lz_indexable(texture2d)(float,float,float,float) r6.z, r21.zwzz, t3.xxxx, s1, r7.z

#line 647
      mad r5.w, r12.z, r6.z, r5.w

#line 538
      sample_c_lz_indexable(texture2d)(float,float,float,float) r6.z, r12.ywyy, t3.xxxx, s1, r7.z

#line 647
      mad r5.w, r10.w, r6.z, r5.w

#line 538
      sample_c_lz_indexable(texture2d)(float,float,float,float) r6.z, r9.xyxx, t3.xxxx, s1, r7.z

#line 647
      mad r5.w, r11.y, r6.z, r5.w

#line 649
      mul r5.w, r5.w, l(0.000370)

#line 1081
      mad r6.z, r6.w, l(0.000370), -r5.w
      mad r8.xyz, r3.wwww, r6.zzzz, r5.wwww  // r8.x <- shadow.x; r8.y <- shadow.y; r8.z <- shadow.z

#line 1082
    endif 

#line 1083
  endif 

#line 1288
  mul r7.xyz, r8.xyzx, cb2[27].xyzx
  mul r7.xyz, r2.wwww, r7.xyzx  // r7.x <- streams.lightColorNdotL_id46.x; r7.y <- streams.lightColorNdotL_id46.y; r7.z <- streams.lightColorNdotL_id46.z

#line 1278
  mad r2.xyz, r2.xyzx, r0.zzzz, -cb2[26].xyzx
  dp3 r0.z, r2.xyzx, r2.xyzx
  rsq r0.z, r0.z
  mul r2.xyz, r0.zzzz, r2.xyzx  // r2.x <- streams.H_id77.x; r2.y <- streams.H_id77.y; r2.z <- streams.H_id77.z

#line 1279
  dp3_sat r0.z, r1.xyzx, r2.xyzx  // r0.z <- streams.NdotH_id78

#line 1280
  dp3_sat r2.x, -cb2[26].xyzx, r2.xyzx  // r2.x <- streams.LdotH_id79

#line 1274
  mul r8.xyz, r5.xyzx, r7.xyzx

#line 617
  add r9.xyz, -r4.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
  add r2.x, -r2.x, l(1.000000)
  mul r2.y, r2.x, r2.x
  mul r2.y, r2.y, r2.y
  mul r2.x, r2.y, r2.x
  mad r2.xyz, r9.xyzx, r2.xxxx, r4.xyzx  // r2.x <- <FresnelSchlick_id196 return value>.x; r2.y <- <FresnelSchlick_id196 return value>.y; r2.z <- <FresnelSchlick_id196 return value>.z

#line 612
  mul r3.w, r0.w, l(0.500000)  // r3.w <- k

#line 613
  mad r5.w, -r0.w, l(0.500000), l(1.000000)
  mad r6.z, r2.w, r5.w, r3.w
  div r6.z, r2.w, r6.z  // r6.z <- <VisibilityhSchlickGGX_id212 return value>
  mad r3.w, r6.y, r5.w, r3.w
  div r3.w, r6.y, r3.w  // r3.w <- <VisibilityhSchlickGGX_id212 return value>

#line 780
  mul r3.w, r3.w, r6.z
  mul r2.w, r6.y, r2.w
  div r2.w, r3.w, r2.w  // r2.w <- <VisibilitySmithSchlickGGX_id214 return value>

#line 774
  mul r3.w, r0.w, r0.w  // r3.w <- alphaR2

#line 775
  mul r0.z, r0.z, r0.z
  mad r5.w, r0.w, r0.w, l(-1.000000)
  mad r0.z, r0.z, r5.w, l(1.000000)
  max r0.z, r0.z, l(0.000100)  // r0.z <- d

#line 776
  mul r0.z, r0.z, r0.z
  mul r0.z, r0.z, l(3.141593)
  div r0.z, r3.w, r0.z  // r0.z <- <NormalDistributionGGX_id226 return value>

#line 1268
  mul r2.xyz, r2.wwww, r2.xyzx
  mul r2.xyz, r0.zzzz, r2.xyzx
  mul r2.xyz, r7.xyzx, r2.xyzx

#line 1269
  mul r2.xyz, r2.xyzx, l(0.250000, 0.250000, 0.250000, 0.000000)  // r2.x <- <ComputeDirectLightContribution_id616 return value>.x; r2.y <- <ComputeDirectLightContribution_id616 return value>.y; r2.z <- <ComputeDirectLightContribution_id616 return value>.z

#line 1404
  mad r2.xyz, r8.xyzx, l(0.318310, 0.318310, 0.318310, 0.000000), r2.xyzx  // r2.x <- directLightingContribution.x; r2.y <- directLightingContribution.y; r2.z <- directLightingContribution.z

#line 1405
else 
  mov r2.xyz, l(0,0,0,0)  // r2.x <- directLightingContribution.x; r2.y <- directLightingContribution.y; r2.z <- directLightingContribution.z
endif 

#line 1018
add r0.z, v1.z, -cb2[22].z
div r0.z, cb2[22].w, r0.z  // r0.z <- depth

#line 1019
mad r0.xy, r0.xyxx, l(1.000000, -1.000000, 0.000000, 0.000000), l(1.000000, 1.000000, 0.000000, 0.000000)
mul r0.xy, r0.xyxx, cb2[87].xyxx

#line 1020
mad r0.z, r0.z, cb2[86].y, cb2[86].z
log r0.z, r0.z
max r0.z, r0.z, l(0.000000)

#line 1021
mul r0.xy, r0.xyxx, l(0.500000, 0.500000, 0.000000, 0.000000)

#line 1020
ftoi r7.xyz, r0.xyzx  // r7.z <- slice

#line 1021
mov r7.w, l(0)
ld_indexable(texture3d)(uint,uint,uint,uint) r0.xy, r7.xyzw, t4.xyzw  // r0.x <- streams.lightData_id175.x; r0.y <- streams.lightData_id175.y

#line 1256
and r0.z, r0.y, l(0x0000ffff)  // r0.z <- <GetMaxLightCount_id270 return value>

#line 1414
mov r7.xyz, r1.xyzx  // r7.x <- streams.normalWS_id19.x; r7.y <- streams.normalWS_id19.y; r7.z <- streams.normalWS_id19.z
mov r7.w, v0.x  // r7.w <- streams.PositionWS_id22.x
mov r8.xy, v0.yzyy  // r8.x <- streams.PositionWS_id22.y; r8.y <- streams.PositionWS_id22.z
mov r8.zw, r3.xxxy  // r8.z <- streams.viewWS_id70.x; r8.w <- streams.viewWS_id70.y
mov r9.z, r3.z  // r9.z <- streams.viewWS_id70.z
mov r10.xyz, r5.xyzx  // r10.x <- streams.matDiffuseVisible_id71.x; r10.y <- streams.matDiffuseVisible_id71.y; r10.z <- streams.matDiffuseVisible_id71.z
mov r11.xyz, r4.xyzx  // r11.x <- streams.matSpecularVisible_id73.x; r11.y <- streams.matSpecularVisible_id73.y; r11.z <- streams.matSpecularVisible_id73.z
mov r11.w, r0.w  // r11.w <- streams.alphaRoughness_id72
mov r6.w, r6.y  // r6.w <- streams.NdotV_id74
mov r6.z, r0.x  // r6.z <- streams.lightIndex_id176
mov r12.xyz, r2.xyzx  // r12.x <- directLightingContribution.x; r12.y <- directLightingContribution.y; r12.z <- directLightingContribution.z
mov r2.w, l(0)  // r2.w <- i
loop 
  ige r3.w, r2.w, r0.z
  breakc_nz r3.w

#line 1416
  if_nz r3.w

#line 1418
    break 

#line 1419
  endif 

#line 1005
  ld_indexable(buffer)(uint,uint,uint,uint) r3.w, r6.zzzz, t5.yzwx  // r3.w <- realLightIndex

#line 1006
  iadd r6.z, r6.z, l(1)  // r6.z <- streams.lightIndex_id176

#line 1008
  ishl r5.w, r3.w, l(1)
  ld_indexable(buffer)(float,float,float,float) r13.xyzw, r5.wwww, t6.xyzw  // r13.x <- pointLight1.x; r13.y <- pointLight1.y; r13.z <- pointLight1.z; r13.w <- pointLight1.w

#line 1009
  bfi r3.w, l(31), l(1), r3.w, l(1)
  ld_indexable(buffer)(float,float,float,float) r14.xyz, r3.wwww, t6.xyzw  // r14.x <- pointLight2.x; r14.y <- pointLight2.y; r14.z <- pointLight2.z

#line 604
  mov r15.x, r7.w
  mov r15.yz, r8.xxyx
  add r13.xyz, r13.xyzx, -r15.xyzx  // r13.x <- lightVector.x; r13.y <- lightVector.y; r13.z <- lightVector.z

#line 605
  dp3 r3.w, r13.xyzx, r13.xyzx
  sqrt r5.w, r3.w  // r5.w <- lightVectorLength

#line 606
  div r13.xyz, r13.xyzx, r5.wwww  // r13.x <- lightVectorNorm.x; r13.y <- lightVectorNorm.y; r13.z <- lightVectorNorm.z

#line 484
  max r5.w, r3.w, l(0.000100)
  div r5.w, l(1.000000, 1.000000, 1.000000, 1.000000), r5.w  // r5.w <- attenuation

#line 351
  mul r3.w, r13.w, r3.w  // r3.w <- factor

#line 352
  mad r3.w, -r3.w, r3.w, l(1.000000)
  max r3.w, r3.w, l(0.000000)  // r3.w <- smoothFactor

#line 353
  mul r3.w, r3.w, r3.w  // r3.w <- <SmoothDistanceAttenuation_id88 return value>

#line 485
  mul r3.w, r3.w, r5.w  // r3.w <- attenuation

#line 1242
  dp3 r5.w, r7.xyzx, r13.xyzx
  max r5.w, r5.w, l(0.000100)  // r5.w <- streams.NdotL_id51

#line 1244
  mul r14.xyz, r3.wwww, r14.xyzx
  mul r14.xyz, r5.wwww, r14.xyzx  // r14.x <- streams.lightColorNdotL_id46.x; r14.y <- streams.lightColorNdotL_id46.y; r14.z <- streams.lightColorNdotL_id46.z

#line 1278
  mov r9.xy, r8.zwzz
  add r9.xyw, r13.xyxz, r9.xyxz
  dp3 r3.w, r9.xywx, r9.xywx
  rsq r3.w, r3.w
  mul r9.xyw, r3.wwww, r9.xyxw  // r9.x <- streams.H_id77.x; r9.y <- streams.H_id77.y; r9.w <- streams.H_id77.z

#line 1279
  dp3_sat r3.w, r7.xyzx, r9.xywx  // r3.w <- streams.NdotH_id78

#line 1280
  dp3_sat r9.x, r13.xyzx, r9.xywx  // r9.x <- streams.LdotH_id79

#line 1274
  mul r13.xyz, r10.xyzx, r14.xyzx

#line 1424
  mad r13.xyz, r13.xyzx, l(0.318310, 0.318310, 0.318310, 0.000000), r12.xyzx  // r13.x <- directLightingContribution.x; r13.y <- directLightingContribution.y; r13.z <- directLightingContribution.z

#line 617
  add r15.xyz, -r11.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
  add r9.x, -r9.x, l(1.000000)
  mul r9.y, r9.x, r9.x
  mul r9.y, r9.y, r9.y
  mul r9.x, r9.y, r9.x
  mad r9.xyw, r15.xyxz, r9.xxxx, r11.xyxz  // r9.x <- <FresnelSchlick_id196 return value>.x; r9.y <- <FresnelSchlick_id196 return value>.y; r9.w <- <FresnelSchlick_id196 return value>.z

#line 612
  mul r10.w, r11.w, l(0.500000)  // r10.w <- k

#line 613
  mad r12.w, -r11.w, l(0.500000), l(1.000000)
  mad r13.w, r5.w, r12.w, r10.w
  div r13.w, r5.w, r13.w  // r13.w <- <VisibilityhSchlickGGX_id212 return value>
  mad r10.w, r6.w, r12.w, r10.w
  div r10.w, r6.w, r10.w  // r10.w <- <VisibilityhSchlickGGX_id212 return value>

#line 780
  mul r10.w, r10.w, r13.w
  mul r5.w, r6.w, r5.w
  div r5.w, r10.w, r5.w  // r5.w <- <VisibilitySmithSchlickGGX_id214 return value>

#line 774
  mul r10.w, r11.w, r11.w  // r10.w <- alphaR2

#line 775
  mul r3.w, r3.w, r3.w
  mad r12.w, r11.w, r11.w, l(-1.000000)
  mad r3.w, r3.w, r12.w, l(1.000000)
  max r3.w, r3.w, l(0.000100)  // r3.w <- d

#line 776
  mul r3.w, r3.w, r3.w
  mul r3.w, r3.w, l(3.141593)
  div r3.w, r10.w, r3.w  // r3.w <- <NormalDistributionGGX_id226 return value>

#line 1268
  mul r9.xyw, r5.wwww, r9.xyxw
  mul r9.xyw, r3.wwww, r9.xyxw
  mul r9.xyw, r14.xyxz, r9.xyxw

#line 1428
  mad r12.xyz, r9.xywx, l(0.250000, 0.250000, 0.250000, 0.000000), r13.xyzx  // r12.x <- directLightingContribution.x; r12.y <- directLightingContribution.y; r12.z <- directLightingContribution.z

#line 1414
  iadd r2.w, r2.w, l(1)

#line 1430
endloop   // r6.z <- streams.lightIndex_id176

#line 1234
ushr r0.x, r0.y, l(16)  // r0.x <- <GetMaxLightCount_id282 return value>

#line 1438
mov r2.xyz, v0.xyzx  // r2.x <- streams.PositionWS_id22.x; r2.y <- streams.PositionWS_id22.y; r2.z <- streams.PositionWS_id22.z
mov r7.y, r0.w  // r7.y <- streams.alphaRoughness_id72
mov r7.w, r6.y  // r7.w <- streams.NdotV_id74
mov r8.xyz, r1.xyzx  // r8.x <- streams.normalWS_id19.x; r8.y <- streams.normalWS_id19.y; r8.z <- streams.normalWS_id19.z
mov r9.xyz, r3.xyzx  // r9.x <- streams.viewWS_id70.x; r9.y <- streams.viewWS_id70.y
mov r10.xyz, r5.xyzx
mov r11.xyz, r4.xyzx
mov r13.xyz, r12.xyzx  // r13.x <- directLightingContribution.x; r13.y <- directLightingContribution.y; r13.z <- directLightingContribution.z
mov r0.y, r6.z  // r0.y <- streams.lightIndex_id176
mov r0.z, l(0)  // r0.z <- i
loop 
  ige r2.w, r0.z, r0.x
  breakc_nz r2.w

#line 1440
  if_nz r2.w

#line 1442
    break 

#line 1443
  endif 

#line 977
  ld_indexable(buffer)(uint,uint,uint,uint) r2.w, r0.yyyy, t5.yzwx  // r2.w <- realLightIndex

#line 978
  iadd r0.y, r0.y, l(1)  // r0.y <- streams.lightIndex_id176

#line 980
  ishl r3.w, r2.w, l(2)
  ld_indexable(buffer)(float,float,float,float) r14.xyz, r3.wwww, t7.xyzw  // r14.x <- spotLight1.x; r14.y <- spotLight1.y; r14.z <- spotLight1.z

#line 983
  bfi r15.xyz, l(30, 30, 30, 0), l(2, 2, 2, 0), r2.wwww, l(1, 2, 3, 0)

#line 981
  ld_indexable(buffer)(float,float,float,float) r16.xyz, r15.xxxx, t7.xyzw  // r16.x <- spotLight2.x; r16.y <- spotLight2.y; r16.z <- spotLight2.z

#line 982
  ld_indexable(buffer)(float,float,float,float) r15.xyw, r15.yyyy, t7.xywz  // r15.x <- spotLight3.x; r15.y <- spotLight3.y; r15.w <- spotLight3.z

#line 983
  ld_indexable(buffer)(float,float,float,float) r17.xyz, r15.zzzz, t7.xyzw  // r17.x <- spotLight4.x; r17.y <- spotLight4.y; r17.z <- spotLight4.z

#line 591
  add r14.xyz, -r2.xyzx, r14.xyzx  // r14.x <- lightVector.x; r14.y <- lightVector.y; r14.z <- lightVector.z

#line 592
  dp3 r2.w, r14.xyzx, r14.xyzx
  sqrt r3.w, r2.w  // r3.w <- lightVectorLength

#line 593
  div r14.xyz, r14.xyzx, r3.wwww  // r14.x <- lightVectorNorm.x; r14.y <- lightVectorNorm.y; r14.z <- lightVectorNorm.z

#line 477
  max r3.w, r2.w, l(0.000100)
  div r3.w, l(1.000000, 1.000000, 1.000000, 1.000000), r3.w  // r3.w <- attenuation

#line 345
  mul r2.w, r15.w, r2.w  // r2.w <- factor

#line 346
  mad r2.w, -r2.w, r2.w, l(1.000000)
  max r2.w, r2.w, l(0.000000)  // r2.w <- smoothFactor

#line 347
  mul r2.w, r2.w, r2.w  // r2.w <- <SmoothDistanceAttenuation_id99 return value>

#line 478
  mul r2.w, r2.w, r3.w  // r2.w <- attenuation

#line 469
  dp3 r3.w, -r16.xyzx, r14.xyzx  // r3.w <- cd

#line 470
  mad_sat r3.w, r3.w, r15.x, r15.y  // r3.w <- attenuation

#line 471
  mul r3.w, r3.w, r3.w

#line 599
  mul r2.w, r2.w, r3.w  // r2.w <- attenuation

#line 1220
  dp3 r3.w, r8.xyzx, r14.xyzx
  max r3.w, r3.w, l(0.000100)  // r3.w <- streams.NdotL_id51

#line 1222
  mul r15.xyz, r2.wwww, r17.xyzx
  mul r15.xyz, r3.wwww, r15.xyzx  // r15.x <- streams.lightColorNdotL_id46.x; r15.y <- streams.lightColorNdotL_id46.y; r15.z <- streams.lightColorNdotL_id46.z

#line 1278
  add r16.xyz, r9.xyzx, r14.xyzx
  dp3 r2.w, r16.xyzx, r16.xyzx
  rsq r2.w, r2.w
  mul r16.xyz, r2.wwww, r16.xyzx  // r16.x <- streams.H_id77.x; r16.y <- streams.H_id77.y; r16.z <- streams.H_id77.z

#line 1279
  dp3_sat r2.w, r8.xyzx, r16.xyzx  // r2.w <- streams.NdotH_id78

#line 1280
  dp3_sat r5.w, r14.xyzx, r16.xyzx  // r5.w <- streams.LdotH_id79

#line 1274
  mul r14.xyz, r10.xyzx, r15.xyzx

#line 1448
  mad r14.xyz, r14.xyzx, l(0.318310, 0.318310, 0.318310, 0.000000), r13.xyzx  // r14.x <- directLightingContribution.x; r14.y <- directLightingContribution.y; r14.z <- directLightingContribution.z

#line 617
  add r16.xyz, -r11.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
  add r5.w, -r5.w, l(1.000000)
  mul r6.w, r5.w, r5.w
  mul r6.w, r6.w, r6.w
  mul r5.w, r5.w, r6.w
  mad r16.xyz, r16.xyzx, r5.wwww, r11.xyzx  // r16.x <- <FresnelSchlick_id196 return value>.x; r16.y <- <FresnelSchlick_id196 return value>.y; r16.z <- <FresnelSchlick_id196 return value>.z

#line 612
  mul r5.w, r7.y, l(0.500000)  // r5.w <- k

#line 613
  mad r6.w, -r7.y, l(0.500000), l(1.000000)
  mad r7.x, r3.w, r6.w, r5.w
  div r7.x, r3.w, r7.x  // r7.x <- <VisibilityhSchlickGGX_id212 return value>
  mad r5.w, r7.w, r6.w, r5.w
  div r5.w, r7.w, r5.w  // r5.w <- <VisibilityhSchlickGGX_id212 return value>

#line 780
  mul r5.w, r5.w, r7.x
  mul r3.w, r7.w, r3.w
  div r3.w, r5.w, r3.w  // r3.w <- <VisibilitySmithSchlickGGX_id214 return value>

#line 774
  mul r5.w, r7.y, r7.y  // r5.w <- alphaR2

#line 775
  mul r2.w, r2.w, r2.w
  mad r6.w, r7.y, r7.y, l(-1.000000)
  mad r2.w, r2.w, r6.w, l(1.000000)
  max r2.w, r2.w, l(0.000100)  // r2.w <- d

#line 776
  mul r2.w, r2.w, r2.w
  mul r2.w, r2.w, l(3.141593)
  div r2.w, r5.w, r2.w  // r2.w <- <NormalDistributionGGX_id226 return value>

#line 1268
  mul r16.xyz, r3.wwww, r16.xyzx
  mul r16.xyz, r2.wwww, r16.xyzx
  mul r15.xyz, r15.xyzx, r16.xyzx

#line 1452
  mad r13.xyz, r15.xyzx, l(0.250000, 0.250000, 0.250000, 0.000000), r14.xyzx  // r13.x <- directLightingContribution.x; r13.y <- directLightingContribution.y; r13.z <- directLightingContribution.z

#line 1438
  iadd r0.z, r0.z, l(1)

#line 1454
endloop   // r0.y <- streams.lightIndex_id176

#line 1462
mov r0.xyz, v0.xyzx  // r0.x <- streams.PositionWS_id22.x; r0.y <- streams.PositionWS_id22.y; r0.z <- streams.PositionWS_id22.z
mov r2.y, r0.w  // r2.y <- streams.alphaRoughness_id72
mov r2.w, r6.y  // r2.w <- streams.NdotV_id74
mov r7.xyz, r1.xyzx  // r7.x <- streams.normalWS_id19.x; r7.y <- streams.normalWS_id19.y; r7.z <- streams.normalWS_id19.z
mov r8.xyz, r3.xyzx  // r8.x <- streams.viewWS_id70.x; r8.y <- streams.viewWS_id70.y; r8.z <- streams.viewWS_id70.z
mov r9.xyz, r5.xyzx  // r9.x <- streams.matDiffuseVisible_id71.x; r9.y <- streams.matDiffuseVisible_id71.y; r9.z <- streams.matDiffuseVisible_id71.z
mov r10.xyz, r4.xyzx  // r10.x <- streams.matSpecularVisible_id73.x; r10.y <- streams.matSpecularVisible_id73.y; r10.z <- streams.matSpecularVisible_id73.z
mov r11.xyz, r13.xyzx  // r11.x <- directLightingContribution.x; r11.y <- directLightingContribution.y; r11.z <- directLightingContribution.z
mov r2.x, l(0)  // r2.x <- i
loop 
  ige r2.z, r2.x, l(32)
  breakc_nz r2.z

#line 1464
  ige r2.z, r2.x, cb0[28].x
  if_nz r2.z

#line 1466
    break 

#line 1467
  endif 

#line 957
  ishl r2.z, r2.x, l(1)

#line 583
  add r12.xyz, -r0.xyzx, cb0[r2.z + 29].xyzx  // r12.x <- lightVector.x; r12.y <- lightVector.y; r12.z <- lightVector.z

#line 584
  dp3 r3.w, r12.xyzx, r12.xyzx
  sqrt r5.w, r3.w  // r5.w <- lightVectorLength

#line 585
  div r12.xyz, r12.xyzx, r5.wwww  // r12.x <- lightVectorNorm.x; r12.y <- lightVectorNorm.y; r12.z <- lightVectorNorm.z

#line 463
  max r5.w, r3.w, l(0.000100)
  div r5.w, l(1.000000, 1.000000, 1.000000, 1.000000), r5.w  // r5.w <- attenuation

#line 339
  mul r3.w, r3.w, cb0[r2.z + 29].w  // r3.w <- factor

#line 340
  mad r3.w, -r3.w, r3.w, l(1.000000)
  max r3.w, r3.w, l(0.000000)  // r3.w <- smoothFactor

#line 341
  mul r3.w, r3.w, r3.w  // r3.w <- <SmoothDistanceAttenuation_id110 return value>

#line 464
  mul r3.w, r3.w, r5.w  // r3.w <- attenuation

#line 1198
  dp3 r5.w, r7.xyzx, r12.xyzx
  max r5.w, r5.w, l(0.000100)  // r5.w <- streams.NdotL_id51

#line 1200
  mul r14.xyz, r3.wwww, cb0[r2.z + 30].xyzx
  mul r14.xyz, r5.wwww, r14.xyzx  // r14.x <- streams.lightColorNdotL_id46.x; r14.y <- streams.lightColorNdotL_id46.y; r14.z <- streams.lightColorNdotL_id46.z

#line 1278
  add r15.xyz, r8.xyzx, r12.xyzx
  dp3 r2.z, r15.xyzx, r15.xyzx
  rsq r2.z, r2.z
  mul r15.xyz, r2.zzzz, r15.xyzx  // r15.x <- streams.H_id77.x; r15.y <- streams.H_id77.y; r15.z <- streams.H_id77.z

#line 1279
  dp3_sat r2.z, r7.xyzx, r15.xyzx  // r2.z <- streams.NdotH_id78

#line 1280
  dp3_sat r3.w, r12.xyzx, r15.xyzx  // r3.w <- streams.LdotH_id79

#line 1274
  mul r12.xyz, r9.xyzx, r14.xyzx

#line 1472
  mad r12.xyz, r12.xyzx, l(0.318310, 0.318310, 0.318310, 0.000000), r11.xyzx  // r12.x <- directLightingContribution.x; r12.y <- directLightingContribution.y; r12.z <- directLightingContribution.z

#line 617
  add r15.xyz, -r10.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
  add r3.w, -r3.w, l(1.000000)
  mul r6.z, r3.w, r3.w
  mul r6.z, r6.z, r6.z
  mul r3.w, r3.w, r6.z
  mad r15.xyz, r15.xyzx, r3.wwww, r10.xyzx  // r15.x <- <FresnelSchlick_id196 return value>.x; r15.y <- <FresnelSchlick_id196 return value>.y; r15.z <- <FresnelSchlick_id196 return value>.z

#line 612
  mul r3.w, r2.y, l(0.500000)  // r3.w <- k

#line 613
  mad r6.z, -r2.y, l(0.500000), l(1.000000)
  mad r6.w, r5.w, r6.z, r3.w
  div r6.w, r5.w, r6.w  // r6.w <- <VisibilityhSchlickGGX_id212 return value>
  mad r3.w, r2.w, r6.z, r3.w
  div r3.w, r2.w, r3.w  // r3.w <- <VisibilityhSchlickGGX_id212 return value>

#line 780
  mul r3.w, r3.w, r6.w
  mul r5.w, r2.w, r5.w
  div r3.w, r3.w, r5.w  // r3.w <- <VisibilitySmithSchlickGGX_id214 return value>

#line 774
  mul r5.w, r2.y, r2.y  // r5.w <- alphaR2

#line 775
  mul r2.z, r2.z, r2.z
  mad r6.z, r2.y, r2.y, l(-1.000000)
  mad r2.z, r2.z, r6.z, l(1.000000)
  max r2.z, r2.z, l(0.000100)  // r2.z <- d

#line 776
  mul r2.z, r2.z, r2.z
  mul r2.z, r2.z, l(3.141593)
  div r2.z, r5.w, r2.z  // r2.z <- <NormalDistributionGGX_id226 return value>

#line 1268
  mul r15.xyz, r3.wwww, r15.xyzx
  mul r15.xyz, r2.zzzz, r15.xyzx
  mul r14.xyz, r14.xyzx, r15.xyzx

#line 1476
  mad r11.xyz, r14.xyzx, l(0.250000, 0.250000, 0.250000, 0.000000), r12.xyzx  // r11.x <- directLightingContribution.x; r11.y <- directLightingContribution.y; r11.z <- directLightingContribution.z

#line 1462
  iadd r2.x, r2.x, l(1)

#line 1478
endloop 

#line 1486
mov r0.xyz, v0.xyzx
mov r2.y, r0.w
mov r2.w, r6.y
mov r7.xyz, r1.xyzx
mov r8.xyz, r3.xyzx
mov r9.xyz, r5.xyzx
mov r10.xyz, r4.xyzx
mov r12.xyz, r11.xyzx  // r12.x <- directLightingContribution.x; r12.y <- directLightingContribution.y; r12.z <- directLightingContribution.z
mov r2.x, l(0)  // r2.x <- i
loop 
  ige r2.z, r2.x, l(8)
  breakc_nz r2.z

#line 1488
  ige r2.z, r2.x, cb0[92].w
  if_nz r2.z

#line 1490
    break 

#line 1491
  endif 

#line 935
  ishl r2.z, r2.x, l(2)

#line 570
  add r13.xyz, -r0.xyzx, cb0[r2.z + 93].xyzx  // r13.x <- lightVector.x; r13.y <- lightVector.y; r13.z <- lightVector.z

#line 571
  dp3 r3.w, r13.xyzx, r13.xyzx
  sqrt r5.w, r3.w  // r5.w <- lightVectorLength

#line 572
  div r13.xyz, r13.xyzx, r5.wwww  // r13.x <- lightVectorNorm.x; r13.y <- lightVectorNorm.y; r13.z <- lightVectorNorm.z

#line 456
  max r5.w, r3.w, l(0.000100)
  div r5.w, l(1.000000, 1.000000, 1.000000, 1.000000), r5.w  // r5.w <- attenuation

#line 333
  mul r3.w, r3.w, cb0[r2.z + 95].z  // r3.w <- factor

#line 334
  mad r3.w, -r3.w, r3.w, l(1.000000)
  max r3.w, r3.w, l(0.000000)  // r3.w <- smoothFactor

#line 335
  mul r3.w, r3.w, r3.w  // r3.w <- <SmoothDistanceAttenuation_id120 return value>

#line 457
  mul r3.w, r3.w, r5.w  // r3.w <- attenuation

#line 448
  dp3 r5.w, -cb0[r2.z + 94].xyzx, r13.xyzx  // r5.w <- cd

#line 449
  mad_sat r5.w, r5.w, cb0[r2.z + 95].x, cb0[r2.z + 95].y  // r5.w <- attenuation

#line 450
  mul r5.w, r5.w, r5.w

#line 578
  mul r3.w, r3.w, r5.w  // r3.w <- attenuation

#line 1176
  dp3 r5.w, r7.xyzx, r13.xyzx
  max r5.w, r5.w, l(0.000100)  // r5.w <- streams.NdotL_id51

#line 1178
  mul r14.xyz, r3.wwww, cb0[r2.z + 96].xyzx
  mul r14.xyz, r5.wwww, r14.xyzx  // r14.x <- streams.lightColorNdotL_id46.x; r14.y <- streams.lightColorNdotL_id46.y; r14.z <- streams.lightColorNdotL_id46.z

#line 1278
  add r15.xyz, r8.xyzx, r13.xyzx
  dp3 r2.z, r15.xyzx, r15.xyzx
  rsq r2.z, r2.z
  mul r15.xyz, r2.zzzz, r15.xyzx  // r15.x <- streams.H_id77.x; r15.y <- streams.H_id77.y; r15.z <- streams.H_id77.z

#line 1279
  dp3_sat r2.z, r7.xyzx, r15.xyzx  // r2.z <- streams.NdotH_id78

#line 1280
  dp3_sat r3.w, r13.xyzx, r15.xyzx  // r3.w <- streams.LdotH_id79

#line 1274
  mul r13.xyz, r9.xyzx, r14.xyzx

#line 1496
  mad r13.xyz, r13.xyzx, l(0.318310, 0.318310, 0.318310, 0.000000), r12.xyzx  // r13.x <- directLightingContribution.x; r13.y <- directLightingContribution.y; r13.z <- directLightingContribution.z

#line 617
  add r15.xyz, -r10.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
  add r3.w, -r3.w, l(1.000000)
  mul r6.z, r3.w, r3.w
  mul r6.z, r6.z, r6.z
  mul r3.w, r3.w, r6.z
  mad r15.xyz, r15.xyzx, r3.wwww, r10.xyzx  // r15.x <- <FresnelSchlick_id196 return value>.x; r15.y <- <FresnelSchlick_id196 return value>.y; r15.z <- <FresnelSchlick_id196 return value>.z

#line 612
  mul r3.w, r2.y, l(0.500000)  // r3.w <- k

#line 613
  mad r6.z, -r2.y, l(0.500000), l(1.000000)
  mad r6.w, r5.w, r6.z, r3.w
  div r6.w, r5.w, r6.w  // r6.w <- <VisibilityhSchlickGGX_id212 return value>
  mad r3.w, r2.w, r6.z, r3.w
  div r3.w, r2.w, r3.w  // r3.w <- <VisibilityhSchlickGGX_id212 return value>

#line 780
  mul r3.w, r3.w, r6.w
  mul r5.w, r2.w, r5.w
  div r3.w, r3.w, r5.w  // r3.w <- <VisibilitySmithSchlickGGX_id214 return value>

#line 774
  mul r5.w, r2.y, r2.y  // r5.w <- alphaR2

#line 775
  mul r2.z, r2.z, r2.z
  mad r6.z, r2.y, r2.y, l(-1.000000)
  mad r2.z, r2.z, r6.z, l(1.000000)
  max r2.z, r2.z, l(0.000100)  // r2.z <- d

#line 776
  mul r2.z, r2.z, r2.z
  mul r2.z, r2.z, l(3.141593)
  div r2.z, r5.w, r2.z  // r2.z <- <NormalDistributionGGX_id226 return value>

#line 1268
  mul r15.xyz, r3.wwww, r15.xyzx
  mul r15.xyz, r2.zzzz, r15.xyzx
  mul r14.xyz, r14.xyzx, r15.xyzx

#line 1500
  mad r12.xyz, r14.xyzx, l(0.250000, 0.250000, 0.250000, 0.000000), r13.xyzx  // r12.x <- directLightingContribution.x; r12.y <- directLightingContribution.y; r12.z <- directLightingContribution.z

#line 1486
  iadd r2.x, r2.x, l(1)

#line 1502
endloop 

#line 910
sqrt r0.x, r0.w
add r6.x, -r0.x, l(1.000000)  // r6.x <- glossiness

#line 911
sample_l_indexable(texture2d)(float,float,float,float) r0.yz, r6.xyxx, t2.zxyw, s0, l(0.000000)  // r0.y <- environmentLightingDFG.x; r0.z <- environmentLightingDFG.y

#line 912
mad r0.yzw, r4.xxyz, r0.yyyy, r0.zzzz  // r0.y <- <Compute_id438 return value>.x; r0.z <- <Compute_id438 return value>.y; r0.w <- <Compute_id438 return value>.z

#line 1159
mul r2.xyz, r0.yzwy, cb2[88].xyzx  // r2.x <- <ComputeEnvironmentLightContribution_id617 return value>.x; r2.y <- <ComputeEnvironmentLightContribution_id617 return value>.y; r2.z <- <ComputeEnvironmentLightContribution_id617 return value>.z

#line 1514
mad r2.xyz, r5.xyzx, cb2[88].xyzx, r2.xyzx  // r2.x <- environmentLightingContribution.x; r2.y <- environmentLightingContribution.y; r2.z <- environmentLightingContribution.z

#line 1148
dp3 r2.w, r1.xyzx, cb2[98].xyzx  // r2.w <- sampleDirection.x
dp3 r3.w, r1.xyzx, cb2[99].xyzx  // r3.w <- sampleDirection.y
dp3 r4.x, r1.xyzx, cb2[100].xyzx  // r4.x <- sampleDirection.z

#line 719
mul r4.y, r3.w, r3.w  // r4.y <- y2

#line 720
mul r4.z, r4.x, r4.x  // r4.z <- z2

#line 724
mad r6.xyz, cb2[90].xyzx, r3.wwww, cb2[89].xyzx  // r6.x <- color.x; r6.y <- color.y; r6.z <- color.z

#line 725
mad r6.xyz, cb2[91].xyzx, -r4.xxxx, r6.xyzx

#line 726
mad r6.xyz, cb2[92].xyzx, r2.wwww, r6.xyzx

#line 729
mul r7.xyz, r3.wwww, cb2[93].xyzx
mad r6.xyz, r7.xyzx, r2.wwww, r6.xyzx

#line 730
mul r7.xyz, r3.wwww, cb2[94].xyzx
mad r6.xyz, r7.xyzx, -r4.xxxx, r6.xyzx

#line 731
mad r3.w, r4.z, l(3.000000), l(-1.000000)
mad r6.xyz, cb2[95].xyzx, r3.wwww, r6.xyzx

#line 732
mul r7.xyz, r2.wwww, cb2[96].xyzx
mad r6.xyz, r7.xyzx, -r4.xxxx, r6.xyzx

#line 733
mad r2.w, r2.w, r2.w, -r4.y
mad r4.xyz, cb2[97].xyzx, r2.wwww, r6.xyzx  // r4.x <- color.x; r4.y <- color.y; r4.z <- color.z

#line 1150
mul r4.xyz, r4.xyzx, cb2[102].xxxx  // r4.x <- streams.envLightDiffuseColor_id49.x; r4.y <- streams.envLightDiffuseColor_id49.y; r4.z <- streams.envLightDiffuseColor_id49.z

#line 1151
dp3 r2.w, -r3.xyzx, r1.xyzx
add r2.w, r2.w, r2.w
mad r3.xyz, r1.xyzx, -r2.wwww, -r3.xyzx  // r3.x <- sampleDirection.x; r3.y <- sampleDirection.y; r3.z <- sampleDirection.z

#line 1152
dp3 r6.x, r3.xyzx, cb2[98].xyzx  // r6.x <- sampleDirection.x
dp3 r6.y, r3.xyzx, cb2[99].xyzx  // r6.y <- sampleDirection.y
dp3 r2.w, r3.xyzx, cb2[100].xyzx  // r2.w <- sampleDirection.z

#line 1153
mov r6.z, -r2.w  // r6.z <- sampleDirection.z

#line 896
mul r2.w, r0.x, cb2[97].w  // r2.w <- mipLevel

#line 897
sample_l_indexable(texturecube)(float,float,float,float) r6.xyz, r6.xyzx, t8.xyzw, s0, r2.w  // r6.x <- <Compute_id328 return value>.x; r6.y <- <Compute_id328 return value>.y; r6.z <- <Compute_id328 return value>.z

#line 1154
mul r6.xyz, r6.xyzx, cb2[102].xxxx  // r6.x <- streams.envLightSpecularColor_id50.x; r6.y <- streams.envLightSpecularColor_id50.y; r6.z <- streams.envLightSpecularColor_id50.z

#line 1522
mad r2.xyz, r5.xyzx, r4.xyzx, r2.xyzx

#line 1526
mad r2.xyz, r0.yzwy, r6.xyzx, r2.xyzx

#line 1136
dp3 r2.w, r1.xyzx, cb2[112].xyzx  // r2.w <- sampleDirection.x
dp3 r3.w, r1.xyzx, cb2[113].xyzx  // r3.w <- sampleDirection.y
dp3 r1.x, r1.xyzx, cb2[114].xyzx  // r1.x <- sampleDirection.z

#line 694
mul r1.y, r3.w, r3.w  // r1.y <- y2

#line 695
mul r1.z, r1.x, r1.x  // r1.z <- z2

#line 699
mad r4.xyz, cb2[104].xyzx, r3.wwww, cb2[103].xyzx  // r4.x <- color.x; r4.y <- color.y; r4.z <- color.z

#line 700
mad r4.xyz, cb2[105].xyzx, -r1.xxxx, r4.xyzx

#line 701
mad r4.xyz, cb2[106].xyzx, r2.wwww, r4.xyzx

#line 704
mul r6.xyz, r3.wwww, cb2[107].xyzx
mad r4.xyz, r6.xyzx, r2.wwww, r4.xyzx

#line 705
mul r6.xyz, r3.wwww, cb2[108].xyzx
mad r4.xyz, r6.xyzx, -r1.xxxx, r4.xyzx

#line 706
mad r1.z, r1.z, l(3.000000), l(-1.000000)
mad r4.xyz, cb2[109].xyzx, r1.zzzz, r4.xyzx

#line 707
mul r6.xyz, r2.wwww, cb2[110].xyzx
mad r4.xyz, r6.xyzx, -r1.xxxx, r4.xyzx

#line 708
mad r1.x, r2.w, r2.w, -r1.y
mad r1.xyz, cb2[111].xyzx, r1.xxxx, r4.xyzx  // r1.x <- color.x; r1.y <- color.y; r1.z <- color.z

#line 1138
mul r1.xyz, r1.xyzx, cb2[116].xxxx  // r1.x <- streams.envLightDiffuseColor_id49.x; r1.y <- streams.envLightDiffuseColor_id49.y; r1.z <- streams.envLightDiffuseColor_id49.z

#line 1140
dp3 r4.x, r3.xyzx, cb2[112].xyzx  // r4.x <- sampleDirection.x
dp3 r4.y, r3.xyzx, cb2[113].xyzx  // r4.y <- sampleDirection.y
dp3 r2.w, r3.xyzx, cb2[114].xyzx  // r2.w <- sampleDirection.z

#line 1141
mov r4.z, -r2.w  // r4.z <- sampleDirection.z

#line 881
mul r0.x, r0.x, cb2[111].w  // r0.x <- mipLevel

#line 882
sample_l_indexable(texturecube)(float,float,float,float) r3.xyz, r4.xyzx, t9.xyzw, s0, r0.x  // r3.x <- <Compute_id348 return value>.x; r3.y <- <Compute_id348 return value>.y; r3.z <- <Compute_id348 return value>.z

#line 1142
mul r3.xyz, r3.xyzx, cb2[116].xxxx  // r3.x <- streams.envLightSpecularColor_id50.x; r3.y <- streams.envLightSpecularColor_id50.y; r3.z <- streams.envLightSpecularColor_id50.z

#line 1534
mad r1.xyz, r5.xyzx, r1.xyzx, r2.xyzx  // r1.x <- environmentLightingContribution.x; r1.y <- environmentLightingContribution.y; r1.z <- environmentLightingContribution.z

#line 1538
mad r0.xyz, r0.yzwy, r3.xyzx, r1.xyzx  // r0.x <- environmentLightingContribution.x; r0.y <- environmentLightingContribution.y; r0.z <- environmentLightingContribution.z

#line 1553
mad r0.xyz, r12.xyzx, l(3.141593, 3.141593, 3.141593, 0.000000), r0.xyzx  // r0.x <- streams.shadingColor_id75.x; r0.y <- streams.shadingColor_id75.y; r0.z <- streams.shadingColor_id75.z

#line 1366
add o0.xyz, r1.wwww, r0.xyzx

#line 1680
utof o1.xyzw, cb0[26].xxxx

#line 1753
mov o0.w, r4.w
ret 
// Approximately 646 instruction slots used
***************************
*************************/
const static int TMaxLightCount_id89 = 1;
const static int TCascadeCountBase_id153 = 4;
const static int TLightCountBase_id154 = 1;
const static int TCascadeCount_id161 = 4;
const static int TLightCount_id162 = 1;
const static bool TBlendCascades_id163 = true;
const static bool TDepthRangeAuto_id164 = true;
const static bool TCascadeDebug_id165 = false;
const static bool TComputeTransmittance_id166 = false;
const static int TFilterSize_id168 = 7;
const static int TMaxLightCount_id185 = 32;
const static int TMaxLightCount_id188 = 8;
const static int TOrder_id192 = 3;
const static int TOrder_id194 = 3;
const static bool TInvert_id233 = true;
const static float4 Value_id247 = float4(1, 1, 1, 1);
const static bool TIsEnergyConservative_id264 = false;
static const float PI_id266 = 3.14159265358979323846;
const static bool TUseAlphaFromEmissive_id276 = false;
struct PS_STREAMS 
{
    float4 ScreenPosition_id169;
    float3 normalWS_id19;
    float4 PositionWS_id22;
    uint InstanceID_id13;
    float DepthVS_id23;
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
    float4 BufferItem_1_id213;
    float4 SRgbToLinear_ShaderFXResult_3_id218;
    float Input_4_id226;
    float Input_5_id235;
    float BufferItem_7_id252;
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
    uint2 lightData_id175;
    int lightIndex_id176;
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
    float4 ScreenPosition_id169 : SCREENPOSITION_ID169_SEM;
    uint InstanceID_id13 : SV_InstanceID;
    bool IsFrontFace_id1 : SV_IsFrontFace;
};
struct VS_STREAMS 
{
    float4 Position_id21;
    uint InstanceID_id13;
    float3 meshNormal_id16;
    float4 PositionH_id24;
    float3 meshNormalWS_id17;
    float4 PositionWS_id22;
    float4 ShadingPosition_id0;
    float DepthVS_id23;
    float3 normalWS_id19;
    float4 ScreenPosition_id169;
};
struct VS_OUTPUT 
{
    float4 PositionWS_id22 : POSITION_WS;
    float4 ShadingPosition_id0 : SV_Position;
    float DepthVS_id23 : DEPTH_VS;
    float3 normalWS_id19 : NORMALWS;
    float4 ScreenPosition_id169 : SCREENPOSITION_ID169_SEM;
    uint InstanceID_id13 : SV_InstanceID;
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
    float4 _padding_PerDraw_Default;
    int LightCount_id184;
    PointLightData Lights_id186[TMaxLightCount_id185];
    int LightCount_id187;
    SpotLightData Lights_id189[TMaxLightCount_id188];
    float4 _padding_PerDraw_Lighting;
};
cbuffer PerMaterial 
{
    float InputValue_id227;
    float InputValue_id236;
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
    float NearClipPlane_id170 = 1.0f;
    float FarClipPlane_id171 = 100.0f;
    float2 ZProjection_id172;
    float2 ViewSize_id173;
    float AspectRatio_id174;
    float4 _padding_PerView_Default;
    int LightCount_id88;
    DirectionalLightData Lights_id90[TMaxLightCount_id89];
    float2 ShadowMapTextureSize_id92;
    float2 ShadowMapTextureTexelSize_id93;
    float4x4 WorldToShadowCascadeUV_id155[TCascadeCountBase_id153 * TLightCountBase_id154];
    float4x4 InverseWorldToShadowCascadeUV_id156[TCascadeCountBase_id153 * TLightCountBase_id154];
    float4x4 ViewMatrices_id157[TCascadeCountBase_id153 * TLightCountBase_id154];
    float2 DepthRanges_id158[TCascadeCountBase_id153 * TLightCountBase_id154];
    float DepthBiases_id159[TLightCountBase_id154];
    float OffsetScales_id160[TLightCountBase_id154];
    float CascadeDepthSplits_id167[TCascadeCount_id161 * TLightCount_id162];
    float ClusterDepthScale_id179;
    float ClusterDepthBias_id180;
    float2 ClusterStride_id181;
    float3 AmbientLight_id190;
    float3 SphericalColors_id195[TOrder_id194 * TOrder_id194];
    float MipCount_id196;
    float4x4 SkyMatrix_id198;
    float Intensity_id199;
    float3 SphericalColors_id206[TOrder_id194 * TOrder_id194];
    float MipCount_id207;
    float4x4 SkyMatrix_id209;
    float Intensity_id210;
    float4 _padding_PerView_Lighting;
};
cbuffer Globals 
{
    float2 Texture0TexelSize_id95;
    float2 Texture1TexelSize_id97;
    float2 Texture2TexelSize_id99;
    float2 Texture3TexelSize_id101;
    float2 Texture4TexelSize_id103;
    float2 Texture5TexelSize_id105;
    float2 Texture6TexelSize_id107;
    float2 Texture7TexelSize_id109;
    float2 Texture8TexelSize_id111;
    float2 Texture9TexelSize_id113;
};
Texture2D Texture0_id94;
Texture2D Texture1_id96;
Texture2D Texture2_id98;
Texture2D Texture3_id100;
Texture2D Texture4_id102;
Texture2D Texture5_id104;
Texture2D Texture6_id106;
Texture2D Texture7_id108;
Texture2D Texture8_id110;
Texture2D Texture9_id112;
TextureCube TextureCube0_id114;
TextureCube TextureCube1_id115;
TextureCube TextureCube2_id116;
TextureCube TextureCube3_id117;
Texture3D Texture3D0_id118;
Texture3D Texture3D1_id119;
Texture3D Texture3D2_id120;
Texture3D Texture3D3_id121;
SamplerState Sampler_id122;
SamplerState PointSampler_id123 
{
    Filter = MIN_MAG_MIP_POINT;
};
SamplerState LinearSampler_id124 
{
    Filter = MIN_MAG_MIP_LINEAR;
};
SamplerState LinearBorderSampler_id125 
{
    Filter = MIN_MAG_MIP_LINEAR;
    AddressU = Border;
    AddressV = Border;
};
SamplerComparisonState LinearClampCompareLessEqualSampler_id126 
{
    Filter = COMPARISON_MIN_MAG_LINEAR_MIP_POINT;
    AddressU = Clamp;
    AddressV = Clamp;
    ComparisonFunc = LessEqual;
};
SamplerState AnisotropicSampler_id127 
{
    Filter = ANISOTROPIC;
};
SamplerState AnisotropicRepeatSampler_id128 
{
    Filter = ANISOTROPIC;
    AddressU = Wrap;
    AddressV = Wrap;
    MaxAnisotropy = 16;
};
SamplerState PointRepeatSampler_id129 
{
    Filter = MIN_MAG_MIP_POINT;
    AddressU = Wrap;
    AddressV = Wrap;
};
SamplerState LinearRepeatSampler_id130 
{
    Filter = MIN_MAG_MIP_LINEAR;
    AddressU = Wrap;
    AddressV = Wrap;
};
SamplerState RepeatSampler_id131 
{
    AddressU = Wrap;
    AddressV = Wrap;
};
SamplerState Sampler0_id132;
SamplerState Sampler1_id133;
SamplerState Sampler2_id134;
SamplerState Sampler3_id135;
SamplerState Sampler4_id136;
SamplerState Sampler5_id137;
SamplerState Sampler6_id138;
SamplerState Sampler7_id139;
SamplerState Sampler8_id140;
SamplerState Sampler9_id141;
StructuredBuffer<InstanceTransform> InstanceWorld_id40;
StructuredBuffer<InstanceTransform> InstanceWorldInverse_id41;
Buffer<float4> DynamicBuffer_id214;
Buffer<float> DynamicBuffer_id253;
Texture2D EnvironmentLightingDFG_LUT_id267;
Texture2D ShadowMapTexture_id91;
Texture3D<uint2> LightClusters_id177;
Buffer<uint> LightIndices_id178;
Buffer<float4> PointLights_id182;
Buffer<float4> SpotLights_id183;
TextureCube CubeMap_id197;
TextureCube CubeMap_id208;
float4 Project_id66(float4 vec, float4x4 mat)
{
    float4 vecProjected = mul(vec, mat);
    vecProjected.xyz /= vecProjected.w;
    return vecProjected;
}
float SmoothDistanceAttenuation_id120(float squaredDistance, float lightInvSquareRadius)
{
    float factor = squaredDistance * lightInvSquareRadius;
    float smoothFactor = saturate(1.0f - factor * factor);
    return smoothFactor * smoothFactor;
}
float SmoothDistanceAttenuation_id110(float squaredDistance, float lightInvSquareRadius)
{
    float factor = squaredDistance * lightInvSquareRadius;
    float smoothFactor = saturate(1.0f - factor * factor);
    return smoothFactor * smoothFactor;
}
float SmoothDistanceAttenuation_id99(float squaredDistance, float lightInvSquareRadius)
{
    float factor = squaredDistance * lightInvSquareRadius;
    float smoothFactor = saturate(1.0f - factor * factor);
    return smoothFactor * smoothFactor;
}
float SmoothDistanceAttenuation_id88(float squaredDistance, float lightInvSquareRadius)
{
    float factor = squaredDistance * lightInvSquareRadius;
    float smoothFactor = saturate(1.0f - factor * factor);
    return smoothFactor * smoothFactor;
}
float Get3x3FilterKernel_id76(float2 base_uv, float2 st, out float3 kernel[4])
{
    float2 uvW0 = (3 - 2 * st);
    float2 uvW1 = (1 + 2 * st);
    float2 uv0 = (2 - st) / uvW0 - 1;
    float2 uv1 = st / uvW1 + 1;
    kernel[0] = float3(base_uv + uv0 * ShadowMapTextureTexelSize_id93, uvW0.x * uvW0.y);
    kernel[1] = float3(base_uv + float2(uv1.x, uv0.y) * ShadowMapTextureTexelSize_id93, uvW1.x * uvW0.y);
    kernel[2] = float3(base_uv + float2(uv0.x, uv1.y) * ShadowMapTextureTexelSize_id93, uvW0.x * uvW1.y);
    kernel[3] = float3(base_uv + uv1 * ShadowMapTextureTexelSize_id93, uvW1.x * uvW1.y);
    return 16.0;
}
float Get5x5FilterKernel_id75(float2 base_uv, float2 st, out float3 kernel[9])
{
    float2 uvW0 = (4 - 3 * st);
    float2 uvW1 = 7;
    float2 uvW2 = (1 + 3 * st);
    float2 uv0 = (3 - 2 * st) / uvW0 - 2;
    float2 uv1 = (3 + st) / uvW1;
    float2 uv2 = st / uvW2 + 2;
    kernel[0] = float3(base_uv + uv0 * ShadowMapTextureTexelSize_id93, uvW0.x * uvW0.y);
    kernel[1] = float3(base_uv + float2(uv1.x, uv0.y) * ShadowMapTextureTexelSize_id93, uvW1.x * uvW0.y);
    kernel[2] = float3(base_uv + float2(uv2.x, uv0.y) * ShadowMapTextureTexelSize_id93, uvW2.x * uvW0.y);
    kernel[3] = float3(base_uv + float2(uv0.x, uv1.y) * ShadowMapTextureTexelSize_id93, uvW0.x * uvW1.y);
    kernel[4] = float3(base_uv + uv1 * ShadowMapTextureTexelSize_id93, uvW1.x * uvW1.y);
    kernel[5] = float3(base_uv + float2(uv2.x, uv1.y) * ShadowMapTextureTexelSize_id93, uvW2.x * uvW1.y);
    kernel[6] = float3(base_uv + float2(uv0.x, uv2.y) * ShadowMapTextureTexelSize_id93, uvW0.x * uvW2.y);
    kernel[7] = float3(base_uv + float2(uv1.x, uv2.y) * ShadowMapTextureTexelSize_id93, uvW1.x * uvW2.y);
    kernel[8] = float3(base_uv + uv2 * ShadowMapTextureTexelSize_id93, uvW2.x * uvW2.y);
    return 144.0;
}
float SampleThickness_id77(float3 shadowSpaceCoordinate, float3 pixelPositionWS, float2 depthRanges, float4x4 inverseWorldToShadowCascadeUV, bool isOrthographic)
{
    const float shadowMapDepth = ShadowMapTexture_id91.SampleLevel(LinearBorderSampler_id125, shadowSpaceCoordinate.xy, 0).r;
    float thickness;
    if (isOrthographic)
    {
        thickness = abs(shadowMapDepth - shadowSpaceCoordinate.z) * depthRanges.y;
    }
    else
    {
        float4 shadowmapPositionWorldSpace = Project_id66(float4(shadowSpaceCoordinate.xy, shadowMapDepth, 1.0), inverseWorldToShadowCascadeUV);
        thickness = distance(shadowmapPositionWorldSpace.xyz, pixelPositionWS.xyz);
    }
    return (thickness);
}
float Get7x7FilterKernel_id73(float2 base_uv, float2 st, out float3 kernel[16])
{
    float2 uvW0 = (5 * st - 6);
    float2 uvW1 = (11 * st - 28);
    float2 uvW2 = -(11 * st + 17);
    float2 uvW3 = -(5 * st + 1);
    float2 uv0 = (4 * st - 5) / uvW0 - 3;
    float2 uv1 = (4 * st - 16) / uvW1 - 1;
    float2 uv2 = -(7 * st + 5) / uvW2 + 1;
    float2 uv3 = -st / uvW3 + 3;
    kernel[0] = float3(base_uv + uv0 * ShadowMapTextureTexelSize_id93, uvW0.x * uvW0.y);
    kernel[1] = float3(base_uv + float2(uv1.x, uv0.y) * ShadowMapTextureTexelSize_id93, uvW1.x * uvW0.y);
    kernel[2] = float3(base_uv + float2(uv2.x, uv0.y) * ShadowMapTextureTexelSize_id93, uvW2.x * uvW0.y);
    kernel[3] = float3(base_uv + float2(uv3.x, uv0.y) * ShadowMapTextureTexelSize_id93, uvW3.x * uvW0.y);
    kernel[4] = float3(base_uv + float2(uv0.x, uv1.y) * ShadowMapTextureTexelSize_id93, uvW0.x * uvW1.y);
    kernel[5] = float3(base_uv + uv1 * ShadowMapTextureTexelSize_id93, uvW1.x * uvW1.y);
    kernel[6] = float3(base_uv + float2(uv2.x, uv1.y) * ShadowMapTextureTexelSize_id93, uvW2.x * uvW1.y);
    kernel[7] = float3(base_uv + float2(uv3.x, uv1.y) * ShadowMapTextureTexelSize_id93, uvW3.x * uvW1.y);
    kernel[8] = float3(base_uv + float2(uv0.x, uv2.y) * ShadowMapTextureTexelSize_id93, uvW0.x * uvW2.y);
    kernel[9] = float3(base_uv + float2(uv1.x, uv2.y) * ShadowMapTextureTexelSize_id93, uvW1.x * uvW2.y);
    kernel[10] = float3(base_uv + uv2 * ShadowMapTextureTexelSize_id93, uvW2.x * uvW2.y);
    kernel[11] = float3(base_uv + float2(uv3.x, uv2.y) * ShadowMapTextureTexelSize_id93, uvW3.x * uvW2.y);
    kernel[12] = float3(base_uv + float2(uv0.x, uv3.y) * ShadowMapTextureTexelSize_id93, uvW0.x * uvW3.y);
    kernel[13] = float3(base_uv + float2(uv1.x, uv3.y) * ShadowMapTextureTexelSize_id93, uvW1.x * uvW3.y);
    kernel[14] = float3(base_uv + float2(uv2.x, uv3.y) * ShadowMapTextureTexelSize_id93, uvW2.x * uvW3.y);
    kernel[15] = float3(base_uv + uv3 * ShadowMapTextureTexelSize_id93, uvW3.x * uvW3.y);
    return 2704.0;
}
uint Compute_id422(inout PS_STREAMS streams)
{
    return streams.InstanceID_id13;
}
float4 SRgbToLinear_id669(float4 sRGBa)
{
    float3 sRGB = sRGBa.rgb;
    return float4(sRGB * (sRGB * (sRGB * 0.305306011 + 0.682171111) + 0.012522878), sRGBa.a);
}
float4 Compute_id371(inout PS_STREAMS streams)
{
    return streams.BufferItem_1_id213;
}
uint Compute_id367(inout PS_STREAMS streams)
{
    return streams.InstanceID_id13;
}
float GetAngularAttenuation_id122(float3 lightVector, float3 lightDirection, float lightAngleScale, float lightAngleOffset)
{
    float cd = dot(lightDirection, lightVector);
    float attenuation = saturate(cd * lightAngleScale + lightAngleOffset);
    attenuation *= attenuation;
    return attenuation;
}
float GetDistanceAttenuation_id121(float lightVectorLength, float lightInvSquareRadius)
{
    float d2 = lightVectorLength * lightVectorLength;
    float attenuation = 1.0 / (max(d2, 0.01 * 0.01));
    attenuation *= SmoothDistanceAttenuation_id120(d2, lightInvSquareRadius);
    return attenuation;
}
float GetDistanceAttenuation_id112(float lightVectorLength, float lightInvSquareRadius)
{
    float d2 = lightVectorLength * lightVectorLength;
    float attenuation = 1.0 / (max(d2, 0.01 * 0.01));
    attenuation *= SmoothDistanceAttenuation_id110(d2, lightInvSquareRadius);
    return attenuation;
}
float GetAngularAttenuation_id101(float3 lightVector, float3 lightDirection, float lightAngleScale, float lightAngleOffset)
{
    float cd = dot(lightDirection, lightVector);
    float attenuation = saturate(cd * lightAngleScale + lightAngleOffset);
    attenuation *= attenuation;
    return attenuation;
}
float GetDistanceAttenuation_id100(float lightVectorLength, float lightInvSquareRadius)
{
    float d2 = lightVectorLength * lightVectorLength;
    float attenuation = 1.0 / (max(d2, 0.01 * 0.01));
    attenuation *= SmoothDistanceAttenuation_id99(d2, lightInvSquareRadius);
    return attenuation;
}
float GetDistanceAttenuation_id90(float lightVectorLength, float lightInvSquareRadius)
{
    float d2 = lightVectorLength * lightVectorLength;
    float attenuation = 1.0 / (max(d2, 0.01 * 0.01));
    attenuation *= SmoothDistanceAttenuation_id88(d2, lightInvSquareRadius);
    return attenuation;
}
float SampleAndFilter_id81(float3 adjustedPixelPositionWS, float3 adjustedPixelPositionShadowSpace, float2 depthRanges, float4x4 inverseWorldToShadowCascadeUV, bool isOrthographic, bool isDualParaboloid = false)
{
    float2 uv = adjustedPixelPositionShadowSpace.xy * ShadowMapTextureSize_id92;
    float2 base_uv = floor(uv + 0.5);
    float2 st = uv + 0.5 - base_uv;
    base_uv *= ShadowMapTextureTexelSize_id93;
    float thickness = 0.0;
    float normalizationFactor = 1.0;

    {
        float3 kernel[16];
        normalizationFactor = Get7x7FilterKernel_id73(base_uv, st, kernel);

        [unroll]
        for (int i = 0; i < 16; ++i)
        {
            thickness += kernel[i].z * SampleThickness_id77(float3(kernel[i].xy, adjustedPixelPositionShadowSpace.z), adjustedPixelPositionWS, depthRanges, inverseWorldToShadowCascadeUV, isOrthographic);
        }
    }
    return (thickness / normalizationFactor);
}
void CalculateAdjustedShadowSpacePixelPosition_id80(float filterRadiusInPixels, float3 pixelPositionWS, float3 meshNormalWS, float4x4 worldToShadowCascadeUV, float4x4 inverseWorldToShadowCascadeUV, out float3 adjustedPixelPositionWS, out float3 adjustedPixelPositionShadowSpace)
{
    float4 bottomLeftTexelWS = Project_id66(float4(0.0, 0.0, 0.0, 1.0), inverseWorldToShadowCascadeUV);
    const float4 topRightTexelWS = Project_id66(float4(ShadowMapTextureTexelSize_id93.xy * filterRadiusInPixels, 0.0, 1.0), inverseWorldToShadowCascadeUV);
    const float texelDiagonalLength = distance(topRightTexelWS.xyz, bottomLeftTexelWS.xyz);
    const float3 positionOffsetWS = meshNormalWS * texelDiagonalLength;
    adjustedPixelPositionWS = pixelPositionWS - positionOffsetWS;
    const float4 shadowMapCoordinate = Project_id66(float4(adjustedPixelPositionWS, 1.0), worldToShadowCascadeUV);
    adjustedPixelPositionShadowSpace = shadowMapCoordinate.xyz;
}
void CalculateAdjustedShadowSpacePixelPositionPerspective_id79(float filterRadiusInPixels, float3 pixelPositionWS, float3 meshNormalWS, float4x4 worldToShadowCascadeUV, float4x4 inverseWorldToShadowCascadeUV, out float3 adjustedPixelPositionWS, out float3 adjustedPixelPositionShadowSpace)
{
    const float4 shadowMapCoordinate = Project_id66(float4(pixelPositionWS, 1.0), worldToShadowCascadeUV);
    const float4 topRightTexelWS = Project_id66(float4(shadowMapCoordinate.xy + ShadowMapTextureTexelSize_id93.xy * filterRadiusInPixels, shadowMapCoordinate.z, 1.0), inverseWorldToShadowCascadeUV);
    const float texelDiagonalLength = distance(topRightTexelWS.xyz, pixelPositionWS);
    const float3 positionOffsetWS = meshNormalWS * texelDiagonalLength;
    adjustedPixelPositionWS = pixelPositionWS - positionOffsetWS;
    const float4 adjustedShadowMapCoordinate = Project_id66(float4(adjustedPixelPositionWS, 1.0), worldToShadowCascadeUV);
    adjustedPixelPositionShadowSpace = adjustedShadowMapCoordinate.xyz;
}
float GetFilterRadiusInPixels_id78()
{

    {
        return 4.5;
    }
}
float SampleTextureAndCompare_id74(float2 position, float positionDepth)
{
    return ShadowMapTexture_id91.SampleCmpLevelZero(LinearClampCompareLessEqualSampler_id126, position, positionDepth);
}
void CalculatePCFKernelParameters_id72(float2 position, out float2 base_uv, out float2 st)
{
    float2 uv = position * ShadowMapTextureSize_id92;
    base_uv = floor(uv + 0.5);
    st = uv + 0.5 - base_uv;
    base_uv -= 0.5;
    base_uv *= ShadowMapTextureTexelSize_id93;
}
float Compute_id425(inout PS_STREAMS streams)
{
    return DynamicBuffer_id253[Compute_id422(streams)];
}
float Compute_id401()
{
    return InputValue_id236;
}
float Compute_id389()
{
    return InputValue_id227;
}
float4 Compute_id374(inout PS_STREAMS streams)
{
    return SRgbToLinear_id669(Compute_id371(streams));
}
float4 Compute_id370(inout PS_STREAMS streams)
{
    return DynamicBuffer_id214[Compute_id367(streams)];
}
float ComputeAttenuation_id123(float3 PositionWS, float3 AngleOffsetAndInvSquareRadius, float3 DirectionWS, float3 position, inout float3 lightVectorNorm)
{
    float3 lightVector = PositionWS - position;
    float lightVectorLength = length(lightVector);
    lightVectorNorm = lightVector / lightVectorLength;
    float3 lightAngleOffsetAndInvSquareRadius = AngleOffsetAndInvSquareRadius;
    float2 lightAngleAndOffset = lightAngleOffsetAndInvSquareRadius.xy;
    float lightInvSquareRadius = lightAngleOffsetAndInvSquareRadius.z;
    float3 lightDirection = -DirectionWS;
    float attenuation = GetDistanceAttenuation_id121(lightVectorLength, lightInvSquareRadius);
    attenuation *= GetAngularAttenuation_id122(lightVectorNorm, lightDirection, lightAngleAndOffset.x, lightAngleAndOffset.y);
    return attenuation;
}
float ComputeAttenuation_id111(PointLightDataInternal light, float3 position, inout float3 lightVectorNorm)
{
    float3 lightVector = light.PositionWS - position;
    float lightVectorLength = length(lightVector);
    lightVectorNorm = lightVector / lightVectorLength;
    float lightInvSquareRadius = light.InvSquareRadius;
    return GetDistanceAttenuation_id112(lightVectorLength, lightInvSquareRadius);
}
float ComputeAttenuation_id102(float3 PositionWS, float3 AngleOffsetAndInvSquareRadius, float3 DirectionWS, float3 position, inout float3 lightVectorNorm)
{
    float3 lightVector = PositionWS - position;
    float lightVectorLength = length(lightVector);
    lightVectorNorm = lightVector / lightVectorLength;
    float3 lightAngleOffsetAndInvSquareRadius = AngleOffsetAndInvSquareRadius;
    float2 lightAngleAndOffset = lightAngleOffsetAndInvSquareRadius.xy;
    float lightInvSquareRadius = lightAngleOffsetAndInvSquareRadius.z;
    float3 lightDirection = -DirectionWS;
    float attenuation = GetDistanceAttenuation_id100(lightVectorLength, lightInvSquareRadius);
    attenuation *= GetAngularAttenuation_id101(lightVectorNorm, lightDirection, lightAngleAndOffset.x, lightAngleAndOffset.y);
    return attenuation;
}
float ComputeAttenuation_id89(PointLightDataInternal light, float3 position, inout float3 lightVectorNorm)
{
    float3 lightVector = light.PositionWS - position;
    float lightVectorLength = length(lightVector);
    lightVectorNorm = lightVector / lightVectorLength;
    float lightInvSquareRadius = light.InvSquareRadius;
    return GetDistanceAttenuation_id90(lightVectorLength, lightInvSquareRadius);
}
float VisibilityhSchlickGGX_id212(float alphaR, float nDotX)
{
    float k = alphaR * 0.5f;
    return nDotX / (nDotX * (1.0f - k) + k);
}
float3 FresnelSchlick_id196(float3 f0, float3 f90, float lOrVDotH)
{
    return f0 + (f90 - f0) * pow((1 - lOrVDotH), 5);
}
float FilterThickness_id68(float3 pixelPositionWS, float3 meshNormalWS, float2 depthRanges, float4x4 worldToShadowCascadeUV, float4x4 inverseWorldToShadowCascadeUV, bool isOrthographic)
{
    float3 adjustedPixelPositionWS;
    float3 adjustedPixelPositionShadowSpace;
    if (isOrthographic)
    {
        CalculateAdjustedShadowSpacePixelPosition_id80(GetFilterRadiusInPixels_id78(), pixelPositionWS, meshNormalWS, worldToShadowCascadeUV, inverseWorldToShadowCascadeUV, adjustedPixelPositionWS, adjustedPixelPositionShadowSpace);
    }
    else
    {
        CalculateAdjustedShadowSpacePixelPositionPerspective_id79(GetFilterRadiusInPixels_id78(), pixelPositionWS, meshNormalWS, worldToShadowCascadeUV, inverseWorldToShadowCascadeUV, adjustedPixelPositionWS, adjustedPixelPositionShadowSpace);
    }
    return SampleAndFilter_id81(adjustedPixelPositionWS, adjustedPixelPositionShadowSpace, depthRanges, inverseWorldToShadowCascadeUV, isOrthographic);
}
float FilterShadow_id67(float2 position, float positionDepth)
{
    float shadow = 0.0f;
    float2 base_uv;
    float2 st;
    CalculatePCFKernelParameters_id72(position, base_uv, st);

    {
        float3 kernel[16];
        float normalizationFactor = Get7x7FilterKernel_id73(base_uv, st, kernel);

        [unroll]
        for (int i = 0; i < 16; ++i)
        {
            shadow += kernel[i].z * SampleTextureAndCompare_id74(kernel[i].xy, positionDepth);
        }
        shadow /= normalizationFactor;
    }
    return shadow;
}
void Compute_id429(inout PS_STREAMS streams)
{
    streams.BufferItem_7_id252 = Compute_id425(streams);
}
void Compute_id427()
{
}
void Compute_id426()
{
}
void Compute_id413()
{
}
void Compute_id404(inout PS_STREAMS streams)
{
    streams.Input_5_id235 = Compute_id401();
}
void Compute_id392(inout PS_STREAMS streams)
{
    streams.Input_4_id226 = Compute_id389();
}
void Compute_id380(inout PS_STREAMS streams)
{
    streams.SRgbToLinear_ShaderFXResult_3_id218 = Compute_id374(streams);
}
void Compute_id378(inout PS_STREAMS streams)
{
    streams.BufferItem_1_id213 = Compute_id370(streams);
}
void Compute_id376()
{
}
void Compute_id375()
{
}
float4 EvaluateSphericalHarmonics_id142(float3 sphericalColors[TOrder_id192 * TOrder_id192], float3 direction)
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
float4 EvaluateSphericalHarmonics_id133(float3 sphericalColors[TOrder_id192 * TOrder_id192], float3 direction)
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
void ProcessLight_id124(inout PS_STREAMS streams, SpotLightDataInternal light)
{
    float3 lightVectorNorm;
    float attenuation = ComputeAttenuation_id123(light.PositionWS, light.AngleOffsetAndInvSquareRadius, light.DirectionWS, streams.PositionWS_id22.xyz, lightVectorNorm);
    streams.lightColor_id45 = light.Color;
    streams.lightAttenuation_id48 = attenuation;
    streams.lightDirectionWS_id44 = lightVectorNorm;
}
void ProcessLight_id113(inout PS_STREAMS streams, PointLightDataInternal light)
{
    float3 lightVectorNorm;
    float attenuation = ComputeAttenuation_id111(light, streams.PositionWS_id22.xyz, lightVectorNorm);
    streams.lightPositionWS_id43 = light.PositionWS;
    streams.lightColor_id45 = light.Color;
    streams.lightAttenuation_id48 = attenuation;
    streams.lightDirectionWS_id44 = lightVectorNorm;
}
void ProcessLight_id103(inout PS_STREAMS streams, SpotLightDataInternal light)
{
    float3 lightVectorNorm;
    float attenuation = ComputeAttenuation_id102(light.PositionWS, light.AngleOffsetAndInvSquareRadius, light.DirectionWS, streams.PositionWS_id22.xyz, lightVectorNorm);
    streams.lightColor_id45 = light.Color;
    streams.lightAttenuation_id48 = attenuation;
    streams.lightDirectionWS_id44 = lightVectorNorm;
}
void ProcessLight_id92(inout PS_STREAMS streams, PointLightDataInternal light)
{
    float3 lightVectorNorm;
    float attenuation = ComputeAttenuation_id89(light, streams.PositionWS_id22.xyz, lightVectorNorm);
    streams.lightPositionWS_id43 = light.PositionWS;
    streams.lightColor_id45 = light.Color;
    streams.lightAttenuation_id48 = attenuation;
    streams.lightDirectionWS_id44 = lightVectorNorm;
}
float NormalDistributionGGX_id226(float alphaR, float nDotH)
{
    float alphaR2 = alphaR * alphaR;
    float d = max(nDotH * nDotH * (alphaR2 - 1) + 1, 0.0001);
    return alphaR2 / (PI_id266 * d * d);
}
float VisibilitySmithSchlickGGX_id214(float alphaR, float nDotL, float nDotV)
{
    return VisibilityhSchlickGGX_id212(alphaR, nDotL) * VisibilityhSchlickGGX_id212(alphaR, nDotV) / (nDotL * nDotV);
}
float3 FresnelSchlick_id202(float3 f0, float lOrVDotH)
{
    return FresnelSchlick_id196(f0, 1.0f, lOrVDotH);
}
float ComputeThicknessFromCascade_id71(float3 pixelPositionWS, float3 meshNormalWS, int cascadeIndex, int lightIndex, bool isOrthographic)
{
    const int arrayIndex = cascadeIndex + lightIndex * TCascadeCountBase_id153;
    return FilterThickness_id68(pixelPositionWS, meshNormalWS, DepthRanges_id158[arrayIndex], WorldToShadowCascadeUV_id155[arrayIndex], InverseWorldToShadowCascadeUV_id156[arrayIndex], isOrthographic);
}
float ComputeShadowFromCascade_id70(float3 shadowPositionWS, int cascadeIndex, int lightIndex)
{
    float4 shadowPosition = mul(float4(shadowPositionWS, 1.0), WorldToShadowCascadeUV_id155[cascadeIndex + lightIndex * TCascadeCountBase_id153]);
    shadowPosition.z -= DepthBiases_id159[lightIndex];
    shadowPosition.xyz /= shadowPosition.w;
    return FilterShadow_id67(shadowPosition.xy, shadowPosition.z);
}
float3 GetShadowPositionOffset_id69(float offsetScale, float nDotL, float3 normal)
{
    float normalOffsetScale = saturate(1.0f - nDotL);
    return 2.0f * ShadowMapTextureTexelSize_id93.x * offsetScale * normalOffsetScale * normal;
}
float Compute_id432(inout PS_STREAMS streams)
{
    return streams.BufferItem_7_id252;
}
void Compute_id431(inout PS_STREAMS streams)
{

    {
        Compute_id426();
    }

    {
        Compute_id427();
    }

    {
        Compute_id429(streams);
    }
}
float4 Compute_id416()
{
    return Value_id247;
}
void Compute_id415()
{

    {
        Compute_id413();
    }
}
float Compute_id407(inout PS_STREAMS streams)
{
    return streams.Input_5_id235;
}
void Compute_id406(inout PS_STREAMS streams)
{

    {
        Compute_id404(streams);
    }
}
float Compute_id395(inout PS_STREAMS streams)
{
    return streams.Input_4_id226;
}
void Compute_id394(inout PS_STREAMS streams)
{

    {
        Compute_id392(streams);
    }
}
float4 Compute_id383(inout PS_STREAMS streams)
{
    return streams.SRgbToLinear_ShaderFXResult_3_id218;
}
void Compute_id382(inout PS_STREAMS streams)
{

    {
        Compute_id375();
    }

    {
        Compute_id376();
    }

    {
        Compute_id378(streams);
    }

    {
        Compute_id380(streams);
    }
}
float4 Compute_id348(inout PS_STREAMS streams, float3 direction)
{
    float alpha = streams.alphaRoughness_id72;
    float mipLevel = sqrt(alpha) * MipCount_id207;
    return CubeMap_id208.SampleLevel(LinearSampler_id124, direction, mipLevel);
}
float4 Compute_id343(float3 direction)
{
    return EvaluateSphericalHarmonics_id142(SphericalColors_id206, direction);
}
void PrepareEnvironmentLight_id146(inout PS_STREAMS streams)
{
    streams.envLightDiffuseColor_id49 = 0;
    streams.envLightSpecularColor_id50 = 0;
}
float4 Compute_id328(inout PS_STREAMS streams, float3 direction)
{
    float alpha = streams.alphaRoughness_id72;
    float mipLevel = sqrt(alpha) * MipCount_id196;
    return CubeMap_id197.SampleLevel(LinearSampler_id124, direction, mipLevel);
}
float4 Compute_id323(float3 direction)
{
    return EvaluateSphericalHarmonics_id133(SphericalColors_id195, direction);
}
void PrepareEnvironmentLight_id137(inout PS_STREAMS streams)
{
    streams.envLightDiffuseColor_id49 = 0;
    streams.envLightSpecularColor_id50 = 0;
}
float3 Compute_id438(float3 specularColor, float alphaR, float nDotV)
{
    float glossiness = 1.0f - sqrt(alphaR);
    float4 environmentLightingDFG = EnvironmentLightingDFG_LUT_id267.SampleLevel(LinearSampler_id124, float2(glossiness, nDotV), 0);
    return specularColor * environmentLightingDFG.r + environmentLightingDFG.g;
}
void PrepareEnvironmentLight_id128(inout PS_STREAMS streams)
{
    streams.envLightDiffuseColor_id49 = 0;
    streams.envLightSpecularColor_id50 = 0;
}
float3 ComputeSpecularTextureProjection_id119(float3 positionWS, float3 reflectionWS, int lightIndex)
{
    return 1.0f;
}
float3 ComputeTextureProjection_id118(float3 positionWS, int lightIndex)
{
    return 1.0f;
}
float3 ComputeShadow_id117(inout PS_STREAMS streams, float3 position, int lightIndex)
{
    streams.thicknessWS_id87 = 0.0;
    return 1.0f;
}
void PrepareDirectLightCore_id116(inout PS_STREAMS streams, int lightIndex)
{
    SpotLightDataInternal data;
    data.PositionWS = Lights_id189[lightIndex].PositionWS;
    data.DirectionWS = Lights_id189[lightIndex].DirectionWS;
    data.AngleOffsetAndInvSquareRadius = Lights_id189[lightIndex].AngleOffsetAndInvSquareRadius;
    data.Color = Lights_id189[lightIndex].Color;
    ProcessLight_id124(streams, data);
}
float3 ComputeSpecularTextureProjection_id109(float3 positionWS, float3 reflectionWS, int lightIndex)
{
    return 1.0f;
}
float3 ComputeTextureProjection_id108(float3 positionWS, int lightIndex)
{
    return 1.0f;
}
float3 ComputeShadow_id107(inout PS_STREAMS streams, float3 position, int lightIndex)
{
    streams.thicknessWS_id87 = 0.0;
    return 1.0f;
}
void PrepareDirectLightCore_id106(inout PS_STREAMS streams, int lightIndex)
{
    PointLightDataInternal data;
    data.PositionWS = Lights_id186[lightIndex].PositionWS;
    data.InvSquareRadius = Lights_id186[lightIndex].InvSquareRadius;
    data.Color = Lights_id186[lightIndex].Color;
    ProcessLight_id113(streams, data);
}
float3 ComputeSpecularTextureProjection_id98(float3 positionWS, float3 reflectionWS, int lightIndex)
{
    return 1.0f;
}
float3 ComputeTextureProjection_id97(float3 positionWS, int lightIndex)
{
    return 1.0f;
}
float3 ComputeShadow_id96(inout PS_STREAMS streams, float3 position, int lightIndex)
{
    streams.thicknessWS_id87 = 0.0;
    return 1.0f;
}
void PrepareDirectLightCore_id95(inout PS_STREAMS streams, int lightIndexIgnored)
{
    int realLightIndex = LightIndices_id178.Load(streams.lightIndex_id176);
    streams.lightIndex_id176++;
    SpotLightDataInternal spotLight;
    float4 spotLight1 = SpotLights_id183.Load(realLightIndex * 4);
    float4 spotLight2 = SpotLights_id183.Load(realLightIndex * 4 + 1);
    float4 spotLight3 = SpotLights_id183.Load(realLightIndex * 4 + 2);
    float4 spotLight4 = SpotLights_id183.Load(realLightIndex * 4 + 3);
    spotLight.PositionWS = spotLight1.xyz;
    spotLight.DirectionWS = spotLight2.xyz;
    spotLight.AngleOffsetAndInvSquareRadius = spotLight3.xyz;
    spotLight.Color = spotLight4.xyz;
    ProcessLight_id103(streams, spotLight);
}
float3 ComputeSpecularTextureProjection_id87(float3 positionWS, float3 reflectionWS, int lightIndex)
{
    return 1.0f;
}
float3 ComputeTextureProjection_id86(float3 positionWS, int lightIndex)
{
    return 1.0f;
}
float3 ComputeShadow_id85(inout PS_STREAMS streams, float3 position, int lightIndex)
{
    streams.thicknessWS_id87 = 0.0;
    return 1.0f;
}
void PrepareDirectLightCore_id84(inout PS_STREAMS streams, int lightIndexIgnored)
{
    int realLightIndex = LightIndices_id178.Load(streams.lightIndex_id176);
    streams.lightIndex_id176++;
    PointLightDataInternal pointLight;
    float4 pointLight1 = PointLights_id182.Load(realLightIndex * 2);
    float4 pointLight2 = PointLights_id182.Load(realLightIndex * 2 + 1);
    pointLight.PositionWS = pointLight1.xyz;
    pointLight.InvSquareRadius = pointLight1.w;
    pointLight.Color = pointLight2.xyz;
    ProcessLight_id92(streams, pointLight);
}
void PrepareLightData_id91(inout PS_STREAMS streams)
{
    float projectedDepth = streams.ShadingPosition_id0.z;
    float depth = ZProjection_id172.y / (projectedDepth - ZProjection_id172.x);
    float2 texCoord = float2(streams.ScreenPosition_id169.x + 1, 1 - streams.ScreenPosition_id169.y) * 0.5;
    int slice = int(max(log2(depth * ClusterDepthScale_id179 + ClusterDepthBias_id180), 0));
    streams.lightData_id175 = LightClusters_id177.Load(int4(texCoord * ClusterStride_id181, slice, 0));
    streams.lightIndex_id176 = streams.lightData_id175.x;
}
float Compute_id530(inout PS_STREAMS streams)
{
    return NormalDistributionGGX_id226(streams.alphaRoughness_id72, streams.NdotH_id78);
}
float Compute_id500(inout PS_STREAMS streams)
{
    return VisibilitySmithSchlickGGX_id214(streams.alphaRoughness_id72, streams.NdotL_id51, streams.NdotV_id74);
}
float3 Compute_id470(inout PS_STREAMS streams, float3 f0)
{
    return FresnelSchlick_id202(f0, streams.LdotH_id79);
}
float3 ComputeSpecularTextureProjection_id63(float3 positionWS, float3 reflectionWS, int lightIndex)
{
    return 1.0f;
}
float3 ComputeTextureProjection_id62(float3 positionWS, int lightIndex)
{
    return 1.0f;
}
float3 ComputeShadow_id61(inout PS_STREAMS streams, float3 position, int lightIndex)
{
    int cascadeIndexBase = lightIndex * TCascadeCount_id161;
    int cascadeIndex = 0;

    [unroll]
    for (int i = 0; i < TCascadeCount_id161 - 1; i++)
    {
        [flatten]
        if (streams.DepthVS_id23 > CascadeDepthSplits_id167[cascadeIndexBase + i])
        {
            cascadeIndex = i + 1;
        }
    }
    float3 shadow = 1.0;
    float tempThickness = 999.0;
    float3 shadowPosition = position.xyz;
    shadowPosition += GetShadowPositionOffset_id69(OffsetScales_id160[lightIndex], streams.NdotL_id51, streams.normalWS_id19);
    if (cascadeIndex < TCascadeCount_id161)
    {
        shadow = ComputeShadowFromCascade_id70(shadowPosition, cascadeIndex, lightIndex);
        float nextSplit = CascadeDepthSplits_id167[cascadeIndexBase + cascadeIndex];
        float splitSize = nextSplit;
        if (cascadeIndex > 0)
        {
            splitSize = nextSplit - CascadeDepthSplits_id167[cascadeIndexBase + cascadeIndex - 1];
        }
        float splitDist = (nextSplit - streams.DepthVS_id23) / splitSize;
        if (splitDist < 0.2)
        {
            float lerpAmt = smoothstep(0.0, 0.2, splitDist);
            if (cascadeIndex == TCascadeCount_id161 - 1)
            {
            }
            else if (TBlendCascades_id163)
            {
                float nextShadow = ComputeShadowFromCascade_id70(shadowPosition, cascadeIndex + 1, lightIndex);
                shadow = lerp(nextShadow, shadow, lerpAmt);
            }
        }
    }
    streams.thicknessWS_id87 = tempThickness;
    return shadow;
}
void PrepareDirectLightCore_id60(inout PS_STREAMS streams, int lightIndex)
{
    streams.lightColor_id45 = Lights_id90[lightIndex].Color;
    streams.lightDirectionWS_id44 = -Lights_id90[lightIndex].DirectionWS;
}
float Compute_id435(inout PS_STREAMS streams)
{
    Compute_id431(streams);
    return Compute_id432(streams);
}
float4 Compute_id419()
{
    Compute_id415();
    return Compute_id416();
}
float Compute_id410(inout PS_STREAMS streams)
{
    Compute_id406(streams);
    return Compute_id407(streams);
}
float Compute_id398(inout PS_STREAMS streams)
{
    Compute_id394(streams);
    return Compute_id395(streams);
}
float4 Compute_id386(inout PS_STREAMS streams)
{
    Compute_id382(streams);
    return Compute_id383(streams);
}
void ResetStream_id232()
{
}
void AfterLightingAndShading_id587()
{
}
void AfterLightingAndShading_id568()
{
}
void PrepareEnvironmentLight_id366(inout PS_STREAMS streams)
{
    streams.envLightDiffuseColor_id49 = 0;
    streams.envLightSpecularColor_id50 = 0;
}
void PrepareEnvironmentLight_id363(inout PS_STREAMS streams)
{
    PrepareEnvironmentLight_id146(streams);
    float ambientAccessibility = streams.matAmbientOcclusion_id59;
    float3 sampleDirection = mul(streams.normalWS_id19, (float3x3)SkyMatrix_id209);
    sampleDirection = float3(sampleDirection.xy, -sampleDirection.z);
    streams.envLightDiffuseColor_id49 = Compute_id343(sampleDirection).rgb * Intensity_id210 * ambientAccessibility * streams.matDiffuseSpecularAlphaBlend_id67.x;
    sampleDirection = reflect(-streams.viewWS_id70, streams.normalWS_id19);
    sampleDirection = mul(sampleDirection, (float3x3)SkyMatrix_id209);
    sampleDirection = float3(sampleDirection.xy, -sampleDirection.z);
    streams.envLightSpecularColor_id50 = Compute_id348(streams, sampleDirection).rgb * Intensity_id210 * ambientAccessibility * streams.matDiffuseSpecularAlphaBlend_id67.y;
}
void PrepareEnvironmentLight_id358(inout PS_STREAMS streams)
{
    PrepareEnvironmentLight_id137(streams);
    float ambientAccessibility = streams.matAmbientOcclusion_id59;
    float3 sampleDirection = mul(streams.normalWS_id19, (float3x3)SkyMatrix_id198);
    sampleDirection = float3(sampleDirection.xy, -sampleDirection.z);
    streams.envLightDiffuseColor_id49 = Compute_id323(sampleDirection).rgb * Intensity_id199 * ambientAccessibility * streams.matDiffuseSpecularAlphaBlend_id67.x;
    sampleDirection = reflect(-streams.viewWS_id70, streams.normalWS_id19);
    sampleDirection = mul(sampleDirection, (float3x3)SkyMatrix_id198);
    sampleDirection = float3(sampleDirection.xy, -sampleDirection.z);
    streams.envLightSpecularColor_id50 = Compute_id328(streams, sampleDirection).rgb * Intensity_id199 * ambientAccessibility * streams.matDiffuseSpecularAlphaBlend_id67.y;
}
float3 ComputeEnvironmentLightContribution_id617(inout PS_STREAMS streams)
{
    float3 specularColor = streams.matSpecularVisible_id73;
    return Compute_id438(specularColor, streams.alphaRoughness_id72, streams.NdotV_id74) * streams.envLightSpecularColor_id50;
}
float3 ComputeEnvironmentLightContribution_id561(inout PS_STREAMS streams)
{
    float3 diffuseColor = streams.matDiffuseVisible_id71;
    return diffuseColor * streams.envLightDiffuseColor_id49;
}
void PrepareEnvironmentLight_id353(inout PS_STREAMS streams)
{
    PrepareEnvironmentLight_id128(streams);
    float3 lightColor = AmbientLight_id190 * streams.matAmbientOcclusion_id59;
    streams.envLightDiffuseColor_id49 = lightColor;
    streams.envLightSpecularColor_id50 = lightColor;
}
void PrepareDirectLight_id304(inout PS_STREAMS streams, int lightIndex)
{
    PrepareDirectLightCore_id116(streams, lightIndex);
    streams.NdotL_id51 = max(dot(streams.normalWS_id19, streams.lightDirectionWS_id44), 0.0001f);
    streams.shadowColor_id86 = ComputeShadow_id117(streams, streams.PositionWS_id22.xyz, lightIndex);
    streams.lightColorNdotL_id46 = streams.lightColor_id45 * streams.lightAttenuation_id48 * streams.shadowColor_id86 * streams.NdotL_id51 * streams.lightDirectAmbientOcclusion_id52;
    streams.lightSpecularColorNdotL_id47 = streams.lightColorNdotL_id46;
    streams.lightColorNdotL_id46 *= ComputeTextureProjection_id118(streams.PositionWS_id22.xyz, lightIndex);
    float3 reflectionVectorWS = reflect(-streams.viewWS_id70, streams.normalWS_id19);
    streams.lightSpecularColorNdotL_id47 *= ComputeSpecularTextureProjection_id119(streams.PositionWS_id22.xyz, reflectionVectorWS, lightIndex);
}
int GetLightCount_id306()
{
    return LightCount_id187;
}
int GetMaxLightCount_id307()
{
    return TMaxLightCount_id188;
}
void PrepareDirectLights_id302()
{
}
void PrepareDirectLight_id291(inout PS_STREAMS streams, int lightIndex)
{
    PrepareDirectLightCore_id106(streams, lightIndex);
    streams.NdotL_id51 = max(dot(streams.normalWS_id19, streams.lightDirectionWS_id44), 0.0001f);
    streams.shadowColor_id86 = ComputeShadow_id107(streams, streams.PositionWS_id22.xyz, lightIndex);
    streams.lightColorNdotL_id46 = streams.lightColor_id45 * streams.lightAttenuation_id48 * streams.shadowColor_id86 * streams.NdotL_id51 * streams.lightDirectAmbientOcclusion_id52;
    streams.lightSpecularColorNdotL_id47 = streams.lightColorNdotL_id46;
    streams.lightColorNdotL_id46 *= ComputeTextureProjection_id108(streams.PositionWS_id22.xyz, lightIndex);
    float3 reflectionVectorWS = reflect(-streams.viewWS_id70, streams.normalWS_id19);
    streams.lightSpecularColorNdotL_id47 *= ComputeSpecularTextureProjection_id109(streams.PositionWS_id22.xyz, reflectionVectorWS, lightIndex);
}
int GetLightCount_id293()
{
    return LightCount_id184;
}
int GetMaxLightCount_id295()
{
    return TMaxLightCount_id185;
}
void PrepareDirectLights_id289()
{
}
void PrepareDirectLight_id279(inout PS_STREAMS streams, int lightIndex)
{
    PrepareDirectLightCore_id95(streams, lightIndex);
    streams.NdotL_id51 = max(dot(streams.normalWS_id19, streams.lightDirectionWS_id44), 0.0001f);
    streams.shadowColor_id86 = ComputeShadow_id96(streams, streams.PositionWS_id22.xyz, lightIndex);
    streams.lightColorNdotL_id46 = streams.lightColor_id45 * streams.lightAttenuation_id48 * streams.shadowColor_id86 * streams.NdotL_id51 * streams.lightDirectAmbientOcclusion_id52;
    streams.lightSpecularColorNdotL_id47 = streams.lightColorNdotL_id46;
    streams.lightColorNdotL_id46 *= ComputeTextureProjection_id97(streams.PositionWS_id22.xyz, lightIndex);
    float3 reflectionVectorWS = reflect(-streams.viewWS_id70, streams.normalWS_id19);
    streams.lightSpecularColorNdotL_id47 *= ComputeSpecularTextureProjection_id98(streams.PositionWS_id22.xyz, reflectionVectorWS, lightIndex);
}
int GetLightCount_id283(inout PS_STREAMS streams)
{
    return streams.lightData_id175.y >> 16;
}
int GetMaxLightCount_id282(inout PS_STREAMS streams)
{
    return streams.lightData_id175.y >> 16;
}
void PrepareDirectLights_id277()
{
}
void PrepareDirectLight_id266(inout PS_STREAMS streams, int lightIndex)
{
    PrepareDirectLightCore_id84(streams, lightIndex);
    streams.NdotL_id51 = max(dot(streams.normalWS_id19, streams.lightDirectionWS_id44), 0.0001f);
    streams.shadowColor_id86 = ComputeShadow_id85(streams, streams.PositionWS_id22.xyz, lightIndex);
    streams.lightColorNdotL_id46 = streams.lightColor_id45 * streams.lightAttenuation_id48 * streams.shadowColor_id86 * streams.NdotL_id51 * streams.lightDirectAmbientOcclusion_id52;
    streams.lightSpecularColorNdotL_id47 = streams.lightColorNdotL_id46;
    streams.lightColorNdotL_id46 *= ComputeTextureProjection_id86(streams.PositionWS_id22.xyz, lightIndex);
    float3 reflectionVectorWS = reflect(-streams.viewWS_id70, streams.normalWS_id19);
    streams.lightSpecularColorNdotL_id47 *= ComputeSpecularTextureProjection_id87(streams.PositionWS_id22.xyz, reflectionVectorWS, lightIndex);
}
int GetLightCount_id271(inout PS_STREAMS streams)
{
    return streams.lightData_id175.y & 0xFFFF;
}
int GetMaxLightCount_id270(inout PS_STREAMS streams)
{
    return streams.lightData_id175.y & 0xFFFF;
}
void PrepareDirectLights_id269(inout PS_STREAMS streams)
{
    PrepareLightData_id91(streams);
}
float3 ComputeDirectLightContribution_id616(inout PS_STREAMS streams)
{
    float3 specularColor = streams.matSpecularVisible_id73;
    float3 fresnel = Compute_id470(streams, specularColor);
    float geometricShadowing = Compute_id500(streams);
    float normalDistribution = Compute_id530(streams);
    float3 reflected = fresnel * geometricShadowing * normalDistribution / 4;
    return reflected * streams.lightSpecularColorNdotL_id47 * streams.matDiffuseSpecularAlphaBlend_id67.y;
}
float3 ComputeDirectLightContribution_id560(inout PS_STREAMS streams)
{
    float3 diffuseColor = streams.matDiffuseVisible_id71;
    return diffuseColor / PI_id266 * streams.lightColorNdotL_id46 * streams.matDiffuseSpecularAlphaBlend_id67.x;
}
void PrepareMaterialPerDirectLight_id34(inout PS_STREAMS streams)
{
    streams.H_id77 = normalize(streams.viewWS_id70 + streams.lightDirectionWS_id44);
    streams.NdotH_id78 = saturate(dot(streams.normalWS_id19, streams.H_id77));
    streams.LdotH_id79 = saturate(dot(streams.lightDirectionWS_id44, streams.H_id77));
    streams.VdotH_id80 = streams.LdotH_id79;
}
void PrepareDirectLight_id242(inout PS_STREAMS streams, int lightIndex)
{
    PrepareDirectLightCore_id60(streams, lightIndex);
    streams.NdotL_id51 = max(dot(streams.normalWS_id19, streams.lightDirectionWS_id44), 0.0001f);
    streams.shadowColor_id86 = ComputeShadow_id61(streams, streams.PositionWS_id22.xyz, lightIndex);
    streams.lightColorNdotL_id46 = streams.lightColor_id45 * streams.lightAttenuation_id48 * streams.shadowColor_id86 * streams.NdotL_id51 * streams.lightDirectAmbientOcclusion_id52;
    streams.lightSpecularColorNdotL_id47 = streams.lightColorNdotL_id46;
    streams.lightColorNdotL_id46 *= ComputeTextureProjection_id62(streams.PositionWS_id22.xyz, lightIndex);
    float3 reflectionVectorWS = reflect(-streams.viewWS_id70, streams.normalWS_id19);
    streams.lightSpecularColorNdotL_id47 *= ComputeSpecularTextureProjection_id63(streams.PositionWS_id22.xyz, reflectionVectorWS, lightIndex);
}
int GetLightCount_id244()
{
    return LightCount_id88;
}
int GetMaxLightCount_id245()
{
    return TMaxLightCount_id89;
}
void PrepareDirectLights_id240()
{
}
void PrepareForLightingAndShading_id584()
{
}
void PrepareForLightingAndShading_id565()
{
}
void PrepareMaterialForLightingAndShading_id228(inout PS_STREAMS streams)
{
    streams.lightDirectAmbientOcclusion_id52 = lerp(1.0, streams.matAmbientOcclusion_id59, streams.matAmbientOcclusionDirectLightingFactor_id60);
    streams.matDiffuseVisible_id71 = streams.matDiffuse_id55.rgb * lerp(1.0f, streams.matCavity_id61, streams.matCavityDiffuse_id62) * streams.matDiffuseSpecularAlphaBlend_id67.r * streams.matAlphaBlendColor_id68;
    streams.matSpecularVisible_id73 = streams.matSpecular_id57.rgb * streams.matSpecularIntensity_id58 * lerp(1.0f, streams.matCavity_id61, streams.matCavitySpecular_id63) * streams.matDiffuseSpecularAlphaBlend_id67.g * streams.matAlphaBlendColor_id68;
    streams.NdotV_id74 = max(dot(streams.normalWS_id19, streams.viewWS_id70), 0.0001f);
    float roughness = 1.0f - streams.matGlossiness_id56;
    streams.alphaRoughness_id72 = max(roughness * roughness, 0.001);
}
void ResetLightStream_id227(inout PS_STREAMS streams)
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
float4 Compute_id437(inout PS_STREAMS streams)
{
    float x = Compute_id435(streams);
    return float4(x, x, x, x);
}
float4 Compute_id421()
{
    return Compute_id419();
}
float4 Compute_id412(inout PS_STREAMS streams)
{
    float x = Compute_id410(streams);
    return float4(x, x, x, x);
}
float4 Compute_id400(inout PS_STREAMS streams)
{
    float x = Compute_id398(streams);
    return float4(x, x, x, x);
}
float4 Compute_id388(inout PS_STREAMS streams)
{
    return Compute_id386(streams);
}
void ResetStream_id233(inout PS_STREAMS streams)
{
    ResetStream_id232();
    streams.matBlend_id42 = 0.0f;
}
void Compute_id659(inout PS_STREAMS streams)
{
    streams.shadingColor_id75 += streams.matEmissive_id64.rgb * streams.matEmissiveIntensity_id65;
}
void Compute_id658(inout PS_STREAMS streams)
{
    UpdateNormalFromTangentSpace_id26(streams.matNormal_id53);
    if (!streams.IsFrontFace_id1)
        streams.normalWS_id19 = -streams.normalWS_id19;
    ResetLightStream_id227(streams);
    PrepareMaterialForLightingAndShading_id228(streams);

    {
        PrepareForLightingAndShading_id565();
    }

    {
        PrepareForLightingAndShading_id584();
    }
    float3 directLightingContribution = 0;

    {
        PrepareDirectLights_id240();
        const int maxLightCount = GetMaxLightCount_id245();
        int count = GetLightCount_id244();

        for (int i = 0; i < maxLightCount; i++)
        {
            if (i >= count)
            {
                break;
            }
            PrepareDirectLight_id242(streams, i);
            PrepareMaterialPerDirectLight_id34(streams);

            {
                directLightingContribution += ComputeDirectLightContribution_id560(streams);
            }

            {
                directLightingContribution += ComputeDirectLightContribution_id616(streams);
            }
        }
    }

    {
        PrepareDirectLights_id269(streams);
        const int maxLightCount = GetMaxLightCount_id270(streams);
        int count = GetLightCount_id271(streams);

        for (int i = 0; i < maxLightCount; i++)
        {
            if (i >= count)
            {
                break;
            }
            PrepareDirectLight_id266(streams, i);
            PrepareMaterialPerDirectLight_id34(streams);

            {
                directLightingContribution += ComputeDirectLightContribution_id560(streams);
            }

            {
                directLightingContribution += ComputeDirectLightContribution_id616(streams);
            }
        }
    }

    {
        PrepareDirectLights_id277();
        const int maxLightCount = GetMaxLightCount_id282(streams);
        int count = GetLightCount_id283(streams);

        for (int i = 0; i < maxLightCount; i++)
        {
            if (i >= count)
            {
                break;
            }
            PrepareDirectLight_id279(streams, i);
            PrepareMaterialPerDirectLight_id34(streams);

            {
                directLightingContribution += ComputeDirectLightContribution_id560(streams);
            }

            {
                directLightingContribution += ComputeDirectLightContribution_id616(streams);
            }
        }
    }

    {
        PrepareDirectLights_id289();
        const int maxLightCount = GetMaxLightCount_id295();
        int count = GetLightCount_id293();

        for (int i = 0; i < maxLightCount; i++)
        {
            if (i >= count)
            {
                break;
            }
            PrepareDirectLight_id291(streams, i);
            PrepareMaterialPerDirectLight_id34(streams);

            {
                directLightingContribution += ComputeDirectLightContribution_id560(streams);
            }

            {
                directLightingContribution += ComputeDirectLightContribution_id616(streams);
            }
        }
    }

    {
        PrepareDirectLights_id302();
        const int maxLightCount = GetMaxLightCount_id307();
        int count = GetLightCount_id306();

        for (int i = 0; i < maxLightCount; i++)
        {
            if (i >= count)
            {
                break;
            }
            PrepareDirectLight_id304(streams, i);
            PrepareMaterialPerDirectLight_id34(streams);

            {
                directLightingContribution += ComputeDirectLightContribution_id560(streams);
            }

            {
                directLightingContribution += ComputeDirectLightContribution_id616(streams);
            }
        }
    }
    float3 environmentLightingContribution = 0;

    {
        PrepareEnvironmentLight_id353(streams);

        {
            environmentLightingContribution += ComputeEnvironmentLightContribution_id561(streams);
        }

        {
            environmentLightingContribution += ComputeEnvironmentLightContribution_id617(streams);
        }
    }

    {
        PrepareEnvironmentLight_id358(streams);

        {
            environmentLightingContribution += ComputeEnvironmentLightContribution_id561(streams);
        }

        {
            environmentLightingContribution += ComputeEnvironmentLightContribution_id617(streams);
        }
    }

    {
        PrepareEnvironmentLight_id363(streams);

        {
            environmentLightingContribution += ComputeEnvironmentLightContribution_id561(streams);
        }

        {
            environmentLightingContribution += ComputeEnvironmentLightContribution_id617(streams);
        }
    }

    {
        PrepareEnvironmentLight_id366(streams);

        {
            environmentLightingContribution += ComputeEnvironmentLightContribution_id561(streams);
        }

        {
            environmentLightingContribution += ComputeEnvironmentLightContribution_id617(streams);
        }
    }
    streams.shadingColor_id75 += directLightingContribution * PI_id266 + environmentLightingContribution;
    streams.shadingColorAlpha_id76 = streams.matDiffuse_id55.a;

    {
        AfterLightingAndShading_id568();
    }

    {
        AfterLightingAndShading_id587();
    }
}
void Compute_id642(inout PS_STREAMS streams)
{
    streams.matEmissiveIntensity_id65 = Compute_id437(streams).r;
}
void Compute_id637(inout PS_STREAMS streams)
{
    streams.matEmissive_id64 = Compute_id421().rgba;
}
void Compute_id632(inout PS_STREAMS streams)
{
    float metalness = Compute_id412(streams).r;
    streams.matSpecular_id57 = lerp(0.02, streams.matDiffuse_id55.rgb, metalness);
    streams.matDiffuse_id55.rgb = lerp(streams.matDiffuse_id55.rgb, 0, metalness);
}
void Compute_id627(inout PS_STREAMS streams)
{
    float glossiness = Compute_id400(streams).r;

    {
        glossiness = 1.0 - glossiness;
    }
    streams.matGlossiness_id56 = glossiness;
}
void Compute_id622(inout PS_STREAMS streams)
{
    float4 colorBase = Compute_id388(streams);
    streams.matDiffuse_id55 = colorBase;
    streams.matColorBase_id54 = colorBase;
}
void ResetStream_id234(inout PS_STREAMS streams)
{
    ResetStream_id233(streams);
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
    return InstanceWorld_id40[instanceId].Matrix;
}
void Compute_id57(inout PS_STREAMS streams)
{

    {
        Compute_id622(streams);
    }

    {
        Compute_id627(streams);
    }

    {
        Compute_id632(streams);
    }

    {
        Compute_id637(streams);
    }

    {
        Compute_id642(streams);
    }

    {
        Compute_id658(streams);
    }

    {
        Compute_id659(streams);
    }
}
void ResetStream_id56(inout PS_STREAMS streams)
{
    ResetStream_id234(streams);
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
float4 Compute_id55()
{
    return MaterialIndex_id85;
}
float4 Shading_id35(inout PS_STREAMS streams)
{
    streams.viewWS_id70 = normalize(Eye_id31.xyz - streams.PositionWS_id22.xyz);
    streams.shadingColor_id75 = 0;
    ResetStream_id56(streams);
    Compute_id57(streams);
    return float4(streams.shadingColor_id75, streams.shadingColorAlpha_id76);
}
void PSMain_id1()
{
}
float4x4 GetInstanceWorldInverse_id14(uint instanceId)
{
    return InstanceWorldInverse_id41[instanceId].Matrix;
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
    streams.ColorTarget1_id3 = Compute_id55();
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
    streams.DepthVS_id23 = __input__.DepthVS_id23;
    streams.normalWS_id19 = __input__.normalWS_id19;
    streams.ScreenPosition_id169 = __input__.ScreenPosition_id169;
    streams.InstanceID_id13 = __input__.InstanceID_id13;
    streams.IsFrontFace_id1 = __input__.IsFrontFace_id1;
    streams.ScreenPosition_id169 /= streams.ScreenPosition_id169.w;
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
    streams.ScreenPosition_id169 = streams.ShadingPosition_id0;
    VS_OUTPUT __output__ = (VS_OUTPUT)0;
    __output__.PositionWS_id22 = streams.PositionWS_id22;
    __output__.ShadingPosition_id0 = streams.ShadingPosition_id0;
    __output__.DepthVS_id23 = streams.DepthVS_id23;
    __output__.normalWS_id19 = streams.normalWS_id19;
    __output__.ScreenPosition_id169 = streams.ScreenPosition_id169;
    __output__.InstanceID_id13 = streams.InstanceID_id13;
    return __output__;
}
