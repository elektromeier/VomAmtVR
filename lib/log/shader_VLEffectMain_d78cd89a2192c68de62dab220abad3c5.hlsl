/**************************
***** Compiler Parameters *****
***************************
@P EffectName: VLEffectMain
@P   - Material.PixelStageSurfaceShaders: mixin MaterialSurfaceArray [{layers = [mixin MaterialSurfaceDiffuse [{diffuseMap = mixin Float4ToColor [{Value = mixin DoFloat4 [{Before = mixin ComputeOrder [{Computes = [ComputeVoid, ComputeVoid, ComputeVoid, mixin AssignVarFloat2<Input_2> [{Value = InputFloat2<ShaderFX.InputValueFloat2,PerMaterial>}], mixin AssignVarFloat2<Plus_3> [{Value = mixin PlusFloat2 [{Left = GetSemanticFloat2<SemanticValue_4,TEXCOORD0>}, {Right = GetVarFloat2<Input_2>}]}], mixin AssignVarFloat2<Input_5> [{Value = InputFloat2<ShaderFX.InputValueFloat2.i1,PerMaterial>}], mixin AssignVarFloat2<Multiply_6> [{Value = mixin MultiplyFloat2 [{Left = GetVarFloat2<Plus_3>}, {Right = GetVarFloat2<Input_5>}]}], mixin AssignVarFloat2<Input_7> [{Value = InputFloat2<ShaderFX.InputValueFloat2.i2,PerMaterial>}], mixin AssignVarFloat2<Plus_8> [{Value = mixin PlusFloat2 [{Left = GetVarFloat2<Multiply_6>}, {Right = GetVarFloat2<Input_7>}]}], mixin AssignVarFloat4<TextureValue_9> [{Value = mixin SampleTextureFloat4<ObjectTexture_fx0,PerMaterial,ObjectSampler_fx1,PerMaterial> [{TexCd = GetVarFloat2<Plus_8>}]}]]}]}, {Value = GetVarFloat4<TextureValue_9>}]}]}], mixin MaterialSurfaceNormalMap<true,true> [{normalMap = mixin Float4ToColor [{Value = mixin DoFloat4 [{Before = mixin ComputeOrder [{Computes = [mixin AssignVarFloat4<Input_10> [{Value = InputFloat4<ShaderFX.InputValueFloat4,PerMaterial>}]]}]}, {Value = GetVarFloat4<Input_10>}]}]}], mixin MaterialSurfaceGlossinessMap<true> [{glossinessMap = mixin FloatToScalar [{Value = mixin DoFloat [{Before = mixin ComputeOrder [{Computes = [ComputeVoid, ComputeVoid, ComputeVoid, mixin AssignVarFloat2<Input_13> [{Value = InputFloat2<ShaderFX.InputValueFloat2.i3,PerMaterial>}], mixin AssignVarFloat2<Plus_14> [{Value = mixin PlusFloat2 [{Left = GetSemanticFloat2<SemanticValue_15,TEXCOORD0>}, {Right = GetVarFloat2<Input_13>}]}], mixin AssignVarFloat2<Input_16> [{Value = InputFloat2<ShaderFX.InputValueFloat2.i4,PerMaterial>}], mixin AssignVarFloat2<Multiply_17> [{Value = mixin MultiplyFloat2 [{Left = GetVarFloat2<Plus_14>}, {Right = GetVarFloat2<Input_16>}]}], mixin AssignVarFloat2<Input_18> [{Value = InputFloat2<ShaderFX.InputValueFloat2.i5,PerMaterial>}], mixin AssignVarFloat2<Plus_19> [{Value = mixin PlusFloat2 [{Left = GetVarFloat2<Multiply_17>}, {Right = GetVarFloat2<Input_18>}]}], mixin AssignVarFloat4<TextureValue_20> [{Value = mixin SampleTextureFloat4<ObjectTexture_fx11,PerMaterial,ObjectSampler_fx12,PerMaterial> [{TexCd = GetVarFloat2<Plus_19>}]}], mixin AssignVarFloat<Member_21> [{Value = mixin GetMemberFloat4Float<r> [{Value = GetVarFloat4<TextureValue_20>}]}]]}]}, {Value = GetVarFloat<Member_21>}]}]}], mixin MaterialSurfaceMetalness [{metalnessMap = mixin FloatToScalar [{Value = mixin DoFloat [{Before = mixin ComputeOrder [{Computes = [ComputeVoid, ComputeVoid, ComputeVoid, mixin AssignVarFloat2<Input_24> [{Value = InputFloat2<ShaderFX.InputValueFloat2.i6,PerMaterial>}], mixin AssignVarFloat2<Plus_25> [{Value = mixin PlusFloat2 [{Left = GetSemanticFloat2<SemanticValue_26,TEXCOORD0>}, {Right = GetVarFloat2<Input_24>}]}], mixin AssignVarFloat2<Input_27> [{Value = InputFloat2<ShaderFX.InputValueFloat2.i7,PerMaterial>}], mixin AssignVarFloat2<Multiply_28> [{Value = mixin MultiplyFloat2 [{Left = GetVarFloat2<Plus_25>}, {Right = GetVarFloat2<Input_27>}]}], mixin AssignVarFloat2<Input_29> [{Value = InputFloat2<ShaderFX.InputValueFloat2.i8,PerMaterial>}], mixin AssignVarFloat2<Plus_30> [{Value = mixin PlusFloat2 [{Left = GetVarFloat2<Multiply_28>}, {Right = GetVarFloat2<Input_29>}]}], mixin AssignVarFloat4<TextureValue_31> [{Value = mixin SampleTextureFloat4<ObjectTexture_fx22,PerMaterial,ObjectSampler_fx23,PerMaterial> [{TexCd = GetVarFloat2<Plus_30>}]}], mixin AssignVarFloat<Member_32> [{Value = mixin GetMemberFloat4Float<r> [{Value = GetVarFloat4<TextureValue_31>}]}]]}]}, {Value = GetVarFloat<Member_32>}]}]}], mixin MaterialSurfaceLightingAndShading [{surfaces = [MaterialSurfaceShadingDiffuseLambert<false>, mixin MaterialSurfaceShadingSpecularMicrofacet [{environmentFunction = MaterialSpecularMicrofacetEnvironmentGGXLUT}, {fresnelFunction = MaterialSpecularMicrofacetFresnelSchlick}, {geometricShadowingFunction = MaterialSpecularMicrofacetVisibilitySmithSchlickGGX}, {normalDistributionFunction = MaterialSpecularMicrofacetNormalDistributionGGX}]]}]]}]
@P Material.PixelStageStreamInitializer: mixin MaterialStream, MaterialPixelShadingStream
@P Material.HasNormalMap: True
@P StrideEffectBase.ModelTransformUsage: 2
@P StrideEffectBase.HasInstancing: True
@P Lighting.DirectLightGroups: mixin LightDirectionalGroup<1>, ShadowMapReceiverDirectional<4,1,true,true,false,false>, ShadowMapFilterPcf<PerView.Lighting,7>, mixin LightClusteredPointGroup, LightClusteredSpotGroup, mixin LightPointGroup<64>, mixin LightSpotGroup<8>
@P Lighting.EnvironmentLights: LightSimpleAmbient, sdfx LightSkyboxEffect, sdfx LightSkyboxEffect, EnvironmentLight
@P LightSkyboxShader.LightDiffuseColor.environmentLights[1]: SphericalHarmonicsEnvironmentColor<3>
@P LightSkyboxShader.LightSpecularColor.environmentLights[1]: RoughnessCubeMapEnvironmentColor
@P LightSkyboxShader.LightDiffuseColor.environmentLights[2]: SphericalHarmonicsEnvironmentColor<3>
@P LightSkyboxShader.LightSpecularColor.environmentLights[2]: RoughnessCubeMapEnvironmentColor
@P StrideEffectBase.RenderTargetExtensions: mixin [{ShadingColor1 = GBufferOutputSubsurfaceScatteringMaterialIndex}]
***************************
****  ConstantBuffers  ****
***************************
cbuffer PerDraw [Size: 3040]
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
cbuffer PerMaterial [Size: 96]
@C    InputValue_id214 => ShaderFX.InputValueFloat2
@C    InputValue_id222 => ShaderFX.InputValueFloat2.i1
@C    InputValue_id229 => ShaderFX.InputValueFloat2.i2
@C    InputValue_id246 => ShaderFX.InputValueFloat4
@C    InputValue_id256 => ShaderFX.InputValueFloat2.i3
@C    InputValue_id264 => ShaderFX.InputValueFloat2.i4
@C    InputValue_id271 => ShaderFX.InputValueFloat2.i5
@C    InputValue_id292 => ShaderFX.InputValueFloat2.i6
@C    InputValue_id300 => ShaderFX.InputValueFloat2.i7
@C    InputValue_id307 => ShaderFX.InputValueFloat2.i8
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
@R    DynamicTexture_id236 => ObjectTexture_fx0 [Stage: None, Slot: (-1--1)]
@R    DynamicTexture_id236 => ObjectTexture_fx0 [Stage: None, Slot: (-1--1)]
@R    DynamicSampler_id237 => ObjectSampler_fx1 [Stage: None, Slot: (-1--1)]
@R    DynamicSampler_id237 => ObjectSampler_fx1 [Stage: None, Slot: (-1--1)]
@R    DynamicTexture_id278 => ObjectTexture_fx11 [Stage: None, Slot: (-1--1)]
@R    DynamicTexture_id278 => ObjectTexture_fx11 [Stage: None, Slot: (-1--1)]
@R    DynamicSampler_id279 => ObjectSampler_fx12 [Stage: None, Slot: (-1--1)]
@R    DynamicSampler_id279 => ObjectSampler_fx12 [Stage: None, Slot: (-1--1)]
@R    DynamicTexture_id314 => ObjectTexture_fx22 [Stage: None, Slot: (-1--1)]
@R    DynamicTexture_id314 => ObjectTexture_fx22 [Stage: None, Slot: (-1--1)]
@R    DynamicSampler_id315 => ObjectSampler_fx23 [Stage: None, Slot: (-1--1)]
@R    DynamicSampler_id315 => ObjectSampler_fx23 [Stage: None, Slot: (-1--1)]
@R    EnvironmentLightingDFG_LUT_id331 => MaterialSpecularMicrofacetEnvironmentGGXLUT.EnvironmentLightingDFG_LUT [Stage: None, Slot: (-1--1)]
@R    EnvironmentLightingDFG_LUT_id331 => MaterialSpecularMicrofacetEnvironmentGGXLUT.EnvironmentLightingDFG_LUT [Stage: None, Slot: (-1--1)]
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
@R    PerDraw => PerDraw [Stage: Vertex, Slot: (0-0)]
@R    PerView => PerView [Stage: Vertex, Slot: (1-1)]
@R    LinearSampler_id124 => Texturing.LinearSampler [Stage: Pixel, Slot: (0-0)]
@R    LinearClampCompareLessEqualSampler_id126 => Texturing.LinearClampCompareLessEqualSampler [Stage: Pixel, Slot: (1-1)]
@R    DynamicSampler_id237 => ObjectSampler_fx1 [Stage: Pixel, Slot: (2-2)]
@R    DynamicSampler_id279 => ObjectSampler_fx12 [Stage: Pixel, Slot: (3-3)]
@R    DynamicSampler_id315 => ObjectSampler_fx23 [Stage: Pixel, Slot: (4-4)]
@R    InstanceWorldInverse_id41 => TransformationInstancing.InstanceWorldInverse [Stage: Pixel, Slot: (0-0)]
@R    DynamicTexture_id236 => ObjectTexture_fx0 [Stage: Pixel, Slot: (1-1)]
@R    DynamicTexture_id278 => ObjectTexture_fx11 [Stage: Pixel, Slot: (2-2)]
@R    DynamicTexture_id314 => ObjectTexture_fx22 [Stage: Pixel, Slot: (3-3)]
@R    EnvironmentLightingDFG_LUT_id331 => MaterialSpecularMicrofacetEnvironmentGGXLUT.EnvironmentLightingDFG_LUT [Stage: Pixel, Slot: (4-4)]
@R    ShadowMapTexture_id91 => ShadowMap.ShadowMapTexture.directLightGroups[0] [Stage: Pixel, Slot: (5-5)]
@R    LightClusters_id177 => LightClustered.LightClusters [Stage: Pixel, Slot: (6-6)]
@R    LightIndices_id178 => LightClustered.LightIndices [Stage: Pixel, Slot: (7-7)]
@R    PointLights_id182 => LightClusteredPointGroup.PointLights [Stage: Pixel, Slot: (8-8)]
@R    SpotLights_id183 => LightClusteredSpotGroup.SpotLights [Stage: Pixel, Slot: (9-9)]
@R    CubeMap_id197 => RoughnessCubeMapEnvironmentColor.CubeMap.lightSpecularColor.environmentLights[1] [Stage: Pixel, Slot: (10-10)]
@R    CubeMap_id208 => RoughnessCubeMapEnvironmentColor.CubeMap.lightSpecularColor.environmentLights[2] [Stage: Pixel, Slot: (11-11)]
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
@S    NormalFromNormalMappingInstanced => 5837a8f78bdfa30d3ba4c76e17c8cdfc
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
@S    AssignVarFloat2 => 67b63b02f9838f2318eb0c65bb4553da
@S    ComputeFloat2 => 3cb979534c18e3e81752140e13d82062
@S    StreamVariableFloat2 => c5141787f96b8fee35fde0d761b49e03
@S    InputFloat2 => 042c351c36e5fb3acaea7eeb8813664f
@S    DeclFloat2 => eecebfd45046be0b49f471972754ce92
@S    PlusFloat2 => ff9adf9813c4ace655072c9d25bf5f9b
@S    GetSemanticFloat2 => cef11c2d21dccf32709a3540af9fdfe6
@S    SemanticFloat2 => eea4e558745376b199f8d17e22432d60
@S    GetVarFloat2 => 64a3517f4f1ae31bdf05f2c3d3fe8e0a
@S    MultiplyFloat2 => 41c1c86a3e98175af72d90c7f66234df
@S    AssignVarFloat4 => e54e0b8e92e739bce2ac0f556badd874
@S    StreamVariableFloat4 => c2e6e06503f828c3a049b22513676b9e
@S    SampleTextureFloat4 => b832676f5e8f16d886cc7db0f638781e
@S    DeclTexture => 20968d641b7a50ffd1f5a28039e2e644
@S    DeclSampler => a4a1cb6e69a422bf97ec5d441117548a
@S    GetVarFloat4 => 9a12d35140d41c5c9743d8babe2b56e2
@S    MaterialSurfaceNormalMap => 1f8ee0c6c370eee2fbb83d50a38eb2b6
@S    InputFloat4 => dde84bd708e467fe677dfda4ce575339
@S    DeclFloat4 => b2a3d29ab3b24927c9d8403a0245327b
@S    MaterialSurfaceGlossinessMap => ec8934feb70f88c3bd9058130e6b7832
@S    FloatToScalar => 190ca2ba985be574ef882e8bdb8b38a2
@S    ComputeFloat => 2744918ba519afc956e367cbd1cb1fc4
@S    DoFloat => d050e0ec3f8e208b719183949cc88f11
@S    AssignVarFloat => a27c6bbf503fcc9e236bc94dd1c261bf
@S    StreamVariableFloat => 20a0c0292833cf8f573b776f121529c5
@S    GetMemberFloat4Float => e601cf80e7676a69aa4dff67294a1716
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
@G    Vertex => 538d19628aa4f84b4d94ca5c147c3d8f
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
//   float4x4 WorldInverseTranspose_id34;// Offset:  128 Size:    64 [unused]
//   float4x4 WorldView_id35;           // Offset:  192 Size:    64 [unused]
//   float4x4 WorldViewInverse_id36;    // Offset:  256 Size:    64 [unused]
//   float4x4 WorldViewProjection_id37; // Offset:  320 Size:    64 [unused]
//   float3 WorldScale_id38;            // Offset:  384 Size:    12 [unused]
//   float4 EyeMS_id39;                 // Offset:  400 Size:    16 [unused]
//   uint MaterialIndex_id85;           // Offset:  416 Size:     4 [unused]
//   float4 _padding_PerDraw_Default;   // Offset:  432 Size:    16 [unused]
//   int LightCount_id184;              // Offset:  448 Size:     4 [unused]
//   
//   struct PointLightData
//   {
//       
//       float3 PositionWS;             // Offset:  464
//       float InvSquareRadius;         // Offset:  476
//       float3 Color;                  // Offset:  480
//
//   } Lights_id186[64];                // Offset:  464 Size:  2044 [unused]
//   int LightCount_id187;              // Offset: 2508 Size:     4 [unused]
//   
//   struct SpotLightData
//   {
//       
//       float3 PositionWS;             // Offset: 2512
//       float3 DirectionWS;            // Offset: 2528
//       float3 AngleOffsetAndInvSquareRadius;// Offset: 2544
//       float3 Color;                  // Offset: 2560
//
//   } Lights_id189[8];                 // Offset: 2512 Size:   508 [unused]
//   float4 _padding_PerDraw_Lighting;  // Offset: 3024 Size:    16 [unused]
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
//
// Resource Bindings:
//
// Name                                 Type  Format         Dim      HLSL Bind  Count
// ------------------------------ ---------- ------- ----------- -------------- ------
// InstanceWorld_id40                texture  struct         r/o             t0      1 
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
// TANGENT                  0   xyzw        3     NONE   float   xyzw
// TEXCOORD                 0   xy          4     NONE   float   xy  
//
//
// Output signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// POSITION_WS              0   xyzw        0     NONE   float   xyzw
// SV_Position              0   xyzw        1      POS   float   xyzw
// DEPTH_VS                 0   x           2     NONE   float   x   
// NORMAL                   0    yzw        2     NONE   float    yzw
// SCREENPOSITION_ID169_SEM     0   xyzw        3     NONE   float   xyzw
// TANGENT                  0   xyzw        4     NONE   float   xyzw
// SV_InstanceID            0   x           5     NONE    uint   x   
// TEXCOORD                 0   xy          6     NONE   float   xy  
//
vs_5_0
dcl_globalFlags refactoringAllowed
dcl_constantbuffer CB0[4], immediateIndexed
dcl_constantbuffer CB1[20], immediateIndexed
dcl_resource_structured t0, 64
dcl_input v0.xyzw
dcl_input_sgv v1.x, instance_id
dcl_input v2.xyz
dcl_input v3.xyzw
dcl_input v4.xy
dcl_output o0.xyzw
dcl_output_siv o1.xyzw, position
dcl_output o2.x
dcl_output o2.yzw
dcl_output o3.xyzw
dcl_output o4.xyzw
dcl_output o5.x
dcl_output o6.xy
dcl_temps 7
//
// Initial variable locations:
//   v0.x <- __input__.Position_id21.x; v0.y <- __input__.Position_id21.y; v0.z <- __input__.Position_id21.z; v0.w <- __input__.Position_id21.w; 
//   v1.x <- __input__.InstanceID_id13; 
//   v2.x <- __input__.meshNormal_id16.x; v2.y <- __input__.meshNormal_id16.y; v2.z <- __input__.meshNormal_id16.z; 
//   v3.x <- __input__.meshTangent_id18.x; v3.y <- __input__.meshTangent_id18.y; v3.z <- __input__.meshTangent_id18.z; v3.w <- __input__.meshTangent_id18.w; 
//   v4.x <- __input__.TexCoord_id142.x; v4.y <- __input__.TexCoord_id142.y; 
//   o6.x <- <VSMain return value>.TexCoord_id142.x; o6.y <- <VSMain return value>.TexCoord_id142.y; 
//   o5.x <- <VSMain return value>.InstanceID_id13; 
//   o4.x <- <VSMain return value>.meshTangent_id18.x; o4.y <- <VSMain return value>.meshTangent_id18.y; o4.z <- <VSMain return value>.meshTangent_id18.z; o4.w <- <VSMain return value>.meshTangent_id18.w; 
//   o3.x <- <VSMain return value>.ScreenPosition_id169.x; o3.y <- <VSMain return value>.ScreenPosition_id169.y; o3.z <- <VSMain return value>.ScreenPosition_id169.z; o3.w <- <VSMain return value>.ScreenPosition_id169.w; 
//   o2.x <- <VSMain return value>.DepthVS_id23; o2.y <- <VSMain return value>.meshNormal_id16.x; o2.z <- <VSMain return value>.meshNormal_id16.y; o2.w <- <VSMain return value>.meshNormal_id16.z; 
//   o1.x <- <VSMain return value>.ShadingPosition_id0.x; o1.y <- <VSMain return value>.ShadingPosition_id0.y; o1.z <- <VSMain return value>.ShadingPosition_id0.z; o1.w <- <VSMain return value>.ShadingPosition_id0.w; 
//   o0.x <- <VSMain return value>.PositionWS_id22.x; o0.y <- <VSMain return value>.PositionWS_id22.y; o0.z <- <VSMain return value>.PositionWS_id22.z; o0.w <- <VSMain return value>.PositionWS_id22.w
//
#line 1988 "C:\Users\elektromeier\Desktop\VomAmt\VomAmtVR\lib\log\shader_VLEffectMain_d78cd89a2192c68de62dab220abad3c5.hlsl"
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

#line 2043
dp4 r0.x, v0.xyzw, r5.xyzw  // r0.x <- streams.PositionWS_id22.x

#line 1988
dp4 r4.x, r1.xyzw, cb0[1].xyzw  // r4.x <- <GetInstanceWorld_id13 return value>._m01
dp4 r4.y, r6.xyzw, cb0[1].xyzw  // r4.y <- <GetInstanceWorld_id13 return value>._m11
dp4 r4.z, r2.xyzw, cb0[1].xyzw  // r4.z <- <GetInstanceWorld_id13 return value>._m21
dp4 r4.w, r3.xyzw, cb0[1].xyzw  // r4.w <- <GetInstanceWorld_id13 return value>._m31

#line 2043
dp4 r0.y, v0.xyzw, r4.xyzw  // r0.y <- streams.PositionWS_id22.y

#line 1988
dp4 r4.x, r1.xyzw, cb0[2].xyzw  // r4.x <- <GetInstanceWorld_id13 return value>._m02
dp4 r1.x, r1.xyzw, cb0[3].xyzw  // r1.x <- <GetInstanceWorld_id13 return value>._m03
dp4 r4.y, r6.xyzw, cb0[2].xyzw  // r4.y <- <GetInstanceWorld_id13 return value>._m12
dp4 r1.y, r6.xyzw, cb0[3].xyzw  // r1.y <- <GetInstanceWorld_id13 return value>._m13
dp4 r4.z, r2.xyzw, cb0[2].xyzw  // r4.z <- <GetInstanceWorld_id13 return value>._m22
dp4 r1.z, r2.xyzw, cb0[3].xyzw  // r1.z <- <GetInstanceWorld_id13 return value>._m23
dp4 r4.w, r3.xyzw, cb0[2].xyzw  // r4.w <- <GetInstanceWorld_id13 return value>._m32
dp4 r1.w, r3.xyzw, cb0[3].xyzw  // r1.w <- <GetInstanceWorld_id13 return value>._m33

#line 2043
dp4 r0.w, v0.xyzw, r1.xyzw  // r0.w <- streams.PositionWS_id22.w
dp4 r0.z, v0.xyzw, r4.xyzw  // r0.z <- streams.PositionWS_id22.z

#line 2147
mov o0.xyzw, r0.xyzw

#line 1981
dp4 r1.x, r0.xyzw, cb1[16].xyzw  // r1.x <- <ComputeShadingPosition_id11 return value>.x
dp4 r1.y, r0.xyzw, cb1[17].xyzw  // r1.y <- <ComputeShadingPosition_id11 return value>.y
dp4 r1.z, r0.xyzw, cb1[18].xyzw  // r1.z <- <ComputeShadingPosition_id11 return value>.z
dp4 r1.w, r0.xyzw, cb1[19].xyzw  // r1.w <- <ComputeShadingPosition_id11 return value>.w

#line 2147
mov o1.xyzw, r1.xyzw
mov o3.xyzw, r1.xyzw
mov o2.x, r1.w
mov o2.yzw, v2.xxyz
mov o4.xyzw, v3.xyzw
mov o5.x, v1.x
mov o6.xy, v4.xyxx
ret 
// Approximately 51 instruction slots used
@G    Pixel => caf9c4f6e67a4e09589f645f153a7686
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
//   float4x4 WorldInverse_id33;        // Offset:   64 Size:    64
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
//   } Lights_id186[64];                // Offset:  464 Size:  2044
//   int LightCount_id187;              // Offset: 2508 Size:     4
//   
//   struct SpotLightData
//   {
//       
//       float3 PositionWS;             // Offset: 2512
//       float3 DirectionWS;            // Offset: 2528
//       float3 AngleOffsetAndInvSquareRadius;// Offset: 2544
//       float3 Color;                  // Offset: 2560
//
//   } Lights_id189[8];                 // Offset: 2512 Size:   508
//   float4 _padding_PerDraw_Lighting;  // Offset: 3024 Size:    16 [unused]
//
// }
//
// cbuffer PerMaterial
// {
//
//   float2 InputValue_id214;           // Offset:    0 Size:     8
//   float2 InputValue_id222;           // Offset:    8 Size:     8
//   float2 InputValue_id229;           // Offset:   16 Size:     8
//   float4 InputValue_id246;           // Offset:   32 Size:    16
//   float2 InputValue_id256;           // Offset:   48 Size:     8
//   float2 InputValue_id264;           // Offset:   56 Size:     8
//   float2 InputValue_id271;           // Offset:   64 Size:     8
//   float2 InputValue_id292;           // Offset:   72 Size:     8
//   float2 InputValue_id300;           // Offset:   80 Size:     8
//   float2 InputValue_id307;           // Offset:   88 Size:     8
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
// LinearSampler_id124               sampler      NA          NA             s0      1 
// LinearClampCompareLessEqualSampler_id126  sampler_c      NA          NA             s1      1 
// DynamicSampler_id237              sampler      NA          NA             s2      1 
// DynamicSampler_id279              sampler      NA          NA             s3      1 
// DynamicSampler_id315              sampler      NA          NA             s4      1 
// InstanceWorldInverse_id41         texture  struct         r/o             t0      1 
// DynamicTexture_id236              texture  float4          2d             t1      1 
// DynamicTexture_id278              texture  float4          2d             t2      1 
// DynamicTexture_id314              texture  float4          2d             t3      1 
// EnvironmentLightingDFG_LUT_id331    texture  float4          2d             t4      1 
// ShadowMapTexture_id91             texture  float4          2d             t5      1 
// LightClusters_id177               texture   uint2          3d             t6      1 
// LightIndices_id178                texture    uint         buf             t7      1 
// PointLights_id182                 texture  float4         buf             t8      1 
// SpotLights_id183                  texture  float4         buf             t9      1 
// CubeMap_id197                     texture  float4        cube            t10      1 
// CubeMap_id208                     texture  float4        cube            t11      1 
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
// NORMAL                   0    yzw        2     NONE   float    yzw
// SCREENPOSITION_ID169_SEM     0   xyzw        3     NONE   float   xy w
// TANGENT                  0   xyzw        4     NONE   float   xyzw
// SV_InstanceID            0   x           5     NONE    uint   x   
// TEXCOORD                 0   xy          6     NONE   float   xy  
// SV_IsFrontFace           0   x           7    FFACE    uint   x   
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
dcl_constantbuffer CB0[189], dynamicIndexed
dcl_constantbuffer CB1[6], immediateIndexed
dcl_constantbuffer CB2[117], dynamicIndexed
dcl_sampler s0, mode_default
dcl_sampler s1, mode_comparison
dcl_sampler s2, mode_default
dcl_sampler s3, mode_default
dcl_sampler s4, mode_default
dcl_resource_structured t0, 64
dcl_resource_texture2d (float,float,float,float) t1
dcl_resource_texture2d (float,float,float,float) t2
dcl_resource_texture2d (float,float,float,float) t3
dcl_resource_texture2d (float,float,float,float) t4
dcl_resource_texture2d (float,float,float,float) t5
dcl_resource_texture3d (uint,uint,uint,uint) t6
dcl_resource_buffer (uint,uint,uint,uint) t7
dcl_resource_buffer (float,float,float,float) t8
dcl_resource_buffer (float,float,float,float) t9
dcl_resource_texturecube (float,float,float,float) t10
dcl_resource_texturecube (float,float,float,float) t11
dcl_input_ps linear v0.xyz
dcl_input_ps_siv linear noperspective v1.z, position
dcl_input_ps linear v2.x
dcl_input_ps linear v2.yzw
dcl_input_ps linear v3.xyw
dcl_input_ps linear v4.xyzw
dcl_input_ps constant v5.x
dcl_input_ps linear v6.xy
dcl_input_ps_sgv constant v7.x, is_front_face
dcl_output o0.xyzw
dcl_output o1.xyzw
dcl_temps 22
//
// Initial variable locations:
//   v0.x <- __input__.PositionWS_id22.x; v0.y <- __input__.PositionWS_id22.y; v0.z <- __input__.PositionWS_id22.z; v0.w <- __input__.PositionWS_id22.w; 
//   v1.x <- __input__.ShadingPosition_id0.x; v1.y <- __input__.ShadingPosition_id0.y; v1.z <- __input__.ShadingPosition_id0.z; v1.w <- __input__.ShadingPosition_id0.w; 
//   v2.x <- __input__.DepthVS_id23; 
//   v3.x <- __input__.ScreenPosition_id169.x; v3.y <- __input__.ScreenPosition_id169.y; v3.z <- __input__.ScreenPosition_id169.z; v3.w <- __input__.ScreenPosition_id169.w; 
//   v2.y <- __input__.meshNormal_id16.x; v2.z <- __input__.meshNormal_id16.y; v2.w <- __input__.meshNormal_id16.z; 
//   v4.x <- __input__.meshTangent_id18.x; v4.y <- __input__.meshTangent_id18.y; v4.z <- __input__.meshTangent_id18.z; v4.w <- __input__.meshTangent_id18.w; 
//   v5.x <- __input__.InstanceID_id13; 
//   v6.x <- __input__.TexCoord_id142.x; v6.y <- __input__.TexCoord_id142.y; 
//   v7.x <- __input__.IsFrontFace_id1; 
//   o1.x <- <PSMain return value>.ColorTarget1_id3.x; o1.y <- <PSMain return value>.ColorTarget1_id3.y; o1.z <- <PSMain return value>.ColorTarget1_id3.z; o1.w <- <PSMain return value>.ColorTarget1_id3.w; 
//   o0.x <- <PSMain return value>.ColorTarget_id2.x; o0.y <- <PSMain return value>.ColorTarget_id2.y; o0.z <- <PSMain return value>.ColorTarget_id2.z; o0.w <- <PSMain return value>.ColorTarget_id2.w
//
#line 2121 "C:\Users\elektromeier\Desktop\VomAmt\VomAmtVR\lib\log\shader_VLEffectMain_d78cd89a2192c68de62dab220abad3c5.hlsl"
div r0.xy, v3.xyxx, v3.wwww  // r0.x <- streams.ScreenPosition_id169.x; r0.y <- streams.ScreenPosition_id169.y

#line 2025
dp3 r0.z, v2.yzwy, v2.yzwy
rsq r0.z, r0.z
mul r1.xyz, r0.zzzz, v2.wyzw  // r1.x <- streams.meshNormal_id16.z; r1.y <- streams.meshNormal_id16.x; r1.z <- streams.meshNormal_id16.y

#line 2026
dp3 r0.z, v4.xyzx, v4.xyzx
rsq r0.z, r0.z
mul r2.xyz, r0.zzzz, v4.yzxy  // r2.x <- tangent.y; r2.y <- tangent.z; r2.z <- tangent.x

#line 2027
mul r3.xyz, r1.xyzx, r2.xyzx
mad r3.xyz, r1.zxyz, r2.yzxy, -r3.xyzx
mul r3.xyz, r3.xyzx, v4.wwww  // r3.x <- bitangent.x; r3.y <- bitangent.y; r3.z <- bitangent.z

#line 1977
ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r4.xyzw, v5.x, l(0), t0.xyzw
ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r5.xyzw, v5.x, l(16), t0.xyzw
ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r6.xyzw, v5.x, l(32), t0.xyzw
mul r7.xyz, r4.yyyy, cb0[5].xyzx
mad r7.xyz, cb0[4].xyzx, r4.xxxx, r7.xyzx
mad r4.xyz, cb0[6].xyzx, r4.zzzz, r7.xyzx
mad r4.xyz, cb0[7].xyzx, r4.wwww, r4.xyzx  // r4.x <- <GetInstanceWorldInverse_id14 return value>._m00; r4.y <- <GetInstanceWorldInverse_id14 return value>._m10; r4.z <- <GetInstanceWorldInverse_id14 return value>._m20
mul r7.xyz, r5.yyyy, cb0[5].xyzx
mad r7.xyz, cb0[4].xyzx, r5.xxxx, r7.xyzx
mad r5.xyz, cb0[6].xyzx, r5.zzzz, r7.xyzx
mad r5.xyz, cb0[7].xyzx, r5.wwww, r5.xyzx  // r5.x <- <GetInstanceWorldInverse_id14 return value>._m01; r5.y <- <GetInstanceWorldInverse_id14 return value>._m11; r5.z <- <GetInstanceWorldInverse_id14 return value>._m21
mul r7.xyz, r6.yyyy, cb0[5].xyzx
mad r7.xyz, cb0[4].xyzx, r6.xxxx, r7.xyzx
mad r6.xyz, cb0[6].xyzx, r6.zzzz, r7.xyzx
mad r6.xyz, cb0[7].xyzx, r6.wwww, r6.xyzx  // r6.x <- <GetInstanceWorldInverse_id14 return value>._m02; r6.y <- <GetInstanceWorldInverse_id14 return value>._m12; r6.z <- <GetInstanceWorldInverse_id14 return value>._m22

#line 2064
mul r7.xyz, r2.xxxx, r5.xyzx
mad r2.xzw, r2.zzzz, r4.xxyz, r7.xxyz
mad r2.xyz, r2.yyyy, r6.xyzx, r2.xzwx  // r2.x <- streams.tangentToWorld_id20._m00; r2.y <- streams.tangentToWorld_id20._m01; r2.z <- streams.tangentToWorld_id20._m02
mul r7.xyz, r3.yyyy, r5.xyzx
mad r3.xyw, r3.xxxx, r4.xyxz, r7.xyxz
mad r3.xyz, r3.zzzz, r6.xyzx, r3.xywx  // r3.x <- streams.tangentToWorld_id20._m10; r3.y <- streams.tangentToWorld_id20._m11; r3.z <- streams.tangentToWorld_id20._m12
mul r5.xyz, r1.zzzz, r5.xyzx
mad r1.yzw, r1.yyyy, r4.xxyz, r5.xxyz
mad r1.xyz, r1.xxxx, r6.xyzx, r1.yzwy  // r1.x <- streams.tangentToWorld_id20._m20; r1.y <- streams.tangentToWorld_id20._m21; r1.z <- streams.tangentToWorld_id20._m22

#line 2051
add r4.xyz, -v0.xyzx, cb2[21].xyzx
dp3 r0.z, r4.xyzx, r4.xyzx
rsq r0.z, r0.z
mul r5.xyz, r0.zzzz, r4.xyzx  // r5.x <- streams.viewWS_id70.x; r5.y <- streams.viewWS_id70.y; r5.z <- streams.viewWS_id70.z

#line 755
add r6.xy, v6.xyxx, cb1[0].xyxx  // r6.x <- <Compute_id362 return value>.x; r6.y <- <Compute_id362 return value>.y

#line 739
mad r6.xy, r6.xyxx, cb1[0].zwzz, cb1[1].xyxx  // r6.x <- <Compute_id378 return value>.x; r6.y <- <Compute_id378 return value>.y

#line 735
sample_indexable(texture2d)(float,float,float,float) r6.xyzw, r6.xyxx, t1.xyzw, s2  // r6.x <- <Compute_id382 return value>.x; r6.y <- <Compute_id382 return value>.y; r6.z <- <Compute_id382 return value>.z; r6.w <- <Compute_id382 return value>.w

#line 1937
mad r7.xy, cb1[2].xyxx, l(2.000000, 2.000000, 0.000000, 0.000000), l(-1.000000, -1.000000, 0.000000, 0.000000)  // r7.x <- normal.x; r7.y <- normal.y

#line 1941
dp2 r0.w, r7.xyxx, r7.xyxx
add r0.w, -r0.w, l(1.000000)
max r0.w, r0.w, l(0.000000)
sqrt r0.w, r0.w  // r0.w <- normal.z

#line 723
add r7.zw, v6.xxxy, cb1[3].xxxy  // r7.z <- <Compute_id427 return value>.x; r7.w <- <Compute_id427 return value>.y

#line 707
mad r7.zw, r7.zzzw, cb1[3].zzzw, cb1[4].xxxy  // r7.z <- <Compute_id443 return value>.x; r7.w <- <Compute_id443 return value>.y

#line 703
sample_indexable(texture2d)(float,float,float,float) r1.w, r7.zwzz, t2.yzwx, s3  // r1.w <- <Compute_id447 return value>.x

#line 1928
add r1.w, -r1.w, l(1.000000)  // r1.w <- glossiness

#line 691
add r7.zw, v6.xxxy, cb1[4].zzzw  // r7.z <- <Compute_id486 return value>.x; r7.w <- <Compute_id486 return value>.y

#line 675
mad r7.zw, r7.zzzw, cb1[5].xxxy, cb1[5].zzzw  // r7.z <- <Compute_id502 return value>.x; r7.w <- <Compute_id502 return value>.y

#line 671
sample_indexable(texture2d)(float,float,float,float) r2.w, r7.zwzz, t3.yzwx, s4  // r2.w <- <Compute_id506 return value>.x

#line 1920
add r8.xyz, r6.xyzx, l(-0.020000, -0.020000, -0.020000, 0.000000)
mad r8.xyz, r2.wwww, r8.xyzx, l(0.020000, 0.020000, 0.020000, 0.000000)  // r8.x <- streams.matSpecular_id57.x; r8.y <- streams.matSpecular_id57.y; r8.z <- streams.matSpecular_id57.z

#line 1921
mad r6.xyz, r2.wwww, -r6.xyzx, r6.xyzx  // r6.x <- streams.matDiffuse_id55.x; r6.y <- streams.matDiffuse_id55.y; r6.z <- streams.matDiffuse_id55.z

#line 1696
mul r3.xyz, r3.xyzx, r7.yyyy
mad r2.xyz, r7.xxxx, r2.xyzx, r3.xyzx
mad r1.xyz, r0.wwww, r1.xyzx, r2.xyzx
dp3 r0.w, r1.xyzx, r1.xyzx
rsq r0.w, r0.w
mul r1.xyz, r0.wwww, r1.xyzx  // r1.x <- streams.normalWS_id19.x; r1.y <- streams.normalWS_id19.y; r1.z <- streams.normalWS_id19.z

#line 1725
movc r1.xyz, v7.xxxx, r1.xyzx, -r1.xyzx  // r1.x <- streams.normalWS_id19.x; r1.y <- streams.normalWS_id19.y; r1.z <- streams.normalWS_id19.z

#line 1677
dp3 r0.w, r1.xyzx, r5.xyzx
max r2.y, r0.w, l(0.000100)  // r2.y <- streams.NdotV_id74

#line 1678
add r0.w, -r1.w, l(1.000000)  // r0.w <- roughness

#line 1679
mul r0.w, r0.w, r0.w
max r0.w, r0.w, l(0.001000)  // r0.w <- streams.alphaRoughness_id72

#line 1749
ilt r1.w, l(0), cb2[25].x
if_nz r1.w

#line 1647
  dp3 r1.w, r1.xyzx, -cb2[26].xyzx
  max r1.w, r1.w, l(0.000100)  // r1.w <- streams.NdotL_id51

#line 1419
  lt r2.z, cb2[83].x, v2.x

#line 1422
  and r2.z, r2.z, l(1)  // r2.z <- cascadeIndex

#line 1419
  lt r2.w, cb2[84].x, v2.x

#line 1422
  movc r2.z, r2.w, l(2), r2.z

#line 1419
  lt r2.w, cb2[85].x, v2.x

#line 1422
  movc r2.z, r2.w, l(3), r2.z

#line 1081
  add r3.x, -r1.w, l(1.000000)
  max r3.x, r3.x, l(0.000000)  // r3.x <- normalOffsetScale

#line 1082
  mul r3.y, cb2[28].z, cb2[82].x
  dp2 r3.x, r3.yyyy, r3.xxxx

#line 1427
  mad r3.xyz, r3.xxxx, r1.xyzx, v0.xyzx  // r3.x <- shadowPosition.x; r3.y <- shadowPosition.y; r3.z <- shadowPosition.z

#line 1074
  ishl r4.w, r2.z, l(2)
  mov r3.w, l(1.000000)
  dp4 r7.x, r3.xyzw, cb2[r4.w + 29].xyzw  // r7.x <- shadowPosition.x
  dp4 r7.y, r3.xyzw, cb2[r4.w + 30].xyzw  // r7.y <- shadowPosition.y
  dp4 r5.w, r3.xyzw, cb2[r4.w + 31].xyzw  // r5.w <- shadowPosition.z
  dp4 r7.w, r3.xyzw, cb2[r4.w + 32].xyzw  // r7.w <- shadowPosition.w

#line 1075
  add r7.z, r5.w, -cb2[81].x  // r7.z <- shadowPosition.z

#line 1076
  div r7.xyz, r7.xyzx, r7.wwww

#line 660
  mad r7.xy, r7.xyxx, cb2[28].xyxx, l(0.500000, 0.500000, 0.000000, 0.000000)
  round_ni r9.xy, r7.xyxx  // r9.x <- base_uv.x; r9.y <- base_uv.y

#line 661
  add r7.xy, r7.xyxx, -r9.xyxx  // r7.x <- st.x; r7.y <- st.y

#line 662
  add r9.xy, r9.xyxx, l(-0.500000, -0.500000, 0.000000, 0.000000)

#line 663
  mul r9.xy, r9.xyxx, cb2[28].zwzz

#line 447
  mad r10.xyzw, r7.xyyx, l(11.000000, 11.000000, 11.000000, 11.000000), l(-28.000000, -28.000000, 17.000000, 17.000000)  // r10.x <- uvW1.x; r10.y <- uvW1.y

#line 448
  mad r11.xyzw, r7.yxxy, l(5.000000, 5.000000, 5.000000, 5.000000), l(-6.000000, -6.000000, 1.000000, 1.000000)  // r11.x <- uvW0.y; r11.y <- uvW0.x

#line 450
  mad r12.xyzw, r7.xyxy, l(4.000000, 4.000000, 4.000000, 4.000000), l(-5.000000, -5.000000, -16.000000, -16.000000)

#line 449
  div r9.zw, r12.xxxy, r11.yyyx
  add r13.xw, r9.zzzw, l(-3.000000, 0.000000, 0.000000, -3.000000)  // r13.x <- uv0.x; r13.w <- uv0.y

#line 450
  div r9.zw, r12.zzzw, r10.xxxy
  add r13.yz, r9.wwzw, l(0.000000, -1.000000, -1.000000, 0.000000)  // r13.y <- uv1.y; r13.z <- uv1.x

#line 451
  mad r9.zw, r7.xxxy, l(0.000000, 0.000000, 7.000000, 7.000000), l(0.000000, 0.000000, 5.000000, 5.000000)
  div r9.zw, r9.zzzw, r10.wwwz
  add r12.xw, r9.wwwz, l(1.000000, 0.000000, 0.000000, 1.000000)  // r12.x <- uv2.y; r12.w <- uv2.x

#line 452
  div r7.xy, r7.xyxx, r11.zwzz
  add r14.xy, r7.xyxx, l(3.000000, 3.000000, 0.000000, 0.000000)  // r14.x <- uv3.x; r14.y <- uv3.y

#line 454
  mad r15.xyzw, r13.xwzw, cb2[28].zwzw, r9.xyxy

#line 459
  mov r12.yz, r13.wwyw

#line 460
  mov r14.zw, r12.yyyz

#line 458
  mad r16.xyzw, r13.xyzy, cb2[28].zwzw, r9.xyxy

#line 459
  mad r17.xyzw, r12.wywz, cb2[28].zwzw, r9.xyxy

#line 460
  mad r18.xyzw, r14.xzxw, cb2[28].zwzw, r9.xyxy

#line 461
  mov r13.y, r12.x
  mul r7.xy, -r10.wzww, r11.xyxx

#line 462
  mad r19.xyzw, r13.xyzy, cb2[28].zwzw, r9.xyxy
  mul r9.zw, r10.yyyx, -r10.wwwz

#line 463
  mad r14.zw, r12.wwwx, cb2[28].zzzw, r9.xxxy
  mul r20.xy, r10.yzyy, r10.xwxx

#line 464
  mov r13.w, r14.x
  mad r13.yw, r13.wwwy, cb2[28].zzzw, r9.xxxy

#line 466
  mov r12.xz, r13.xxzx

#line 465
  mov r12.y, r14.y
  mul r13.xz, r11.xxyx, -r11.zzwz

#line 466
  mad r21.xyzw, r12.xyzy, cb2[28].zwzw, r9.xyxy
  mul r12.xz, r10.yyxy, -r11.zzwz

#line 467
  mad r12.yw, r12.wwwy, cb2[28].zzzw, r9.xxxy
  mul r10.xyzw, r10.xyzw, r11.xyzw

#line 468
  mad r9.xy, r14.xyxx, cb2[28].zwzz, r9.xyxx
  mul r11.xy, r11.xwxx, r11.yzyy

#line 655
  sample_c_lz_indexable(texture2d)(float,float,float,float) r5.w, r15.xyxx, t5.xxxx, s1, r7.z  // r5.w <- <SampleTextureAndCompare_id71 return value>
  sample_c_lz_indexable(texture2d)(float,float,float,float) r7.w, r15.zwzz, t5.xxxx, s1, r7.z  // r7.w <- <SampleTextureAndCompare_id71 return value>

#line 840
  mul r7.w, r7.w, r10.x
  mad r5.w, r11.x, r5.w, r7.w  // r5.w <- shadow

#line 655
  sample_c_lz_indexable(texture2d)(float,float,float,float) r7.w, r17.xyxx, t5.xxxx, s1, r7.z  // r7.w <- <SampleTextureAndCompare_id71 return value>

#line 840
  mad r5.w, r7.x, r7.w, r5.w

#line 655
  sample_c_lz_indexable(texture2d)(float,float,float,float) r7.x, r18.xyxx, t5.xxxx, s1, r7.z  // r7.x <- <SampleTextureAndCompare_id71 return value>

#line 840
  mad r5.w, r13.x, r7.x, r5.w

#line 655
  sample_c_lz_indexable(texture2d)(float,float,float,float) r7.x, r16.xyxx, t5.xxxx, s1, r7.z

#line 840
  mad r5.w, r10.y, r7.x, r5.w

#line 655
  sample_c_lz_indexable(texture2d)(float,float,float,float) r7.x, r16.zwzz, t5.xxxx, s1, r7.z

#line 840
  mad r5.w, r20.x, r7.x, r5.w

#line 655
  sample_c_lz_indexable(texture2d)(float,float,float,float) r7.x, r17.zwzz, t5.xxxx, s1, r7.z

#line 840
  mad r5.w, r9.z, r7.x, r5.w

#line 655
  sample_c_lz_indexable(texture2d)(float,float,float,float) r7.x, r18.zwzz, t5.xxxx, s1, r7.z

#line 840
  mad r5.w, r12.x, r7.x, r5.w

#line 655
  sample_c_lz_indexable(texture2d)(float,float,float,float) r7.x, r19.xyxx, t5.xxxx, s1, r7.z

#line 840
  mad r5.w, r7.y, r7.x, r5.w

#line 655
  sample_c_lz_indexable(texture2d)(float,float,float,float) r7.x, r19.zwzz, t5.xxxx, s1, r7.z

#line 840
  mad r5.w, r9.w, r7.x, r5.w

#line 655
  sample_c_lz_indexable(texture2d)(float,float,float,float) r7.x, r14.zwzz, t5.xxxx, s1, r7.z

#line 840
  mad r5.w, r20.y, r7.x, r5.w

#line 655
  sample_c_lz_indexable(texture2d)(float,float,float,float) r7.x, r13.ywyy, t5.xxxx, s1, r7.z

#line 840
  mad r5.w, r10.z, r7.x, r5.w

#line 655
  sample_c_lz_indexable(texture2d)(float,float,float,float) r7.x, r21.xyxx, t5.xxxx, s1, r7.z

#line 840
  mad r5.w, r13.z, r7.x, r5.w

#line 655
  sample_c_lz_indexable(texture2d)(float,float,float,float) r7.x, r21.zwzz, t5.xxxx, s1, r7.z

#line 840
  mad r5.w, r12.z, r7.x, r5.w

#line 655
  sample_c_lz_indexable(texture2d)(float,float,float,float) r7.x, r12.ywyy, t5.xxxx, s1, r7.z

#line 840
  mad r5.w, r10.w, r7.x, r5.w

#line 655
  sample_c_lz_indexable(texture2d)(float,float,float,float) r7.x, r9.xyxx, t5.xxxx, s1, r7.z

#line 840
  mad r5.w, r11.y, r7.x, r5.w

#line 842
  mul r7.xyz, r5.wwww, l(0.000370, 0.000370, 0.000370, 0.000000)  // r7.z <- shadow

#line 1433
  ilt r7.w, l(0), r2.z
  if_nz r7.w

#line 1435
    iadd r7.w, r2.z, l(-1)
    add r7.w, -cb2[r7.w + 83].x, cb2[r2.z + 83].x  // r7.w <- splitSize

#line 1436
  else 
    mov r7.w, cb2[r2.z + 83].x  // r7.w <- splitSize
  endif 

#line 1437
  add r2.z, -v2.x, cb2[r2.z + 83].x
  div r2.z, r2.z, r7.w  // r2.z <- splitDist

#line 1438
  lt r7.w, r2.z, l(0.200000)
  if_nz r7.w

#line 1441
    if_nz r2.w

#line 1443
      mov r7.xyz, r7.zzzz  // r7.x <- shadow.x; r7.y <- shadow.y; r7.z <- shadow.z
    else 

#line 1440
      mul_sat r2.z, r2.z, l(5.000000)
      mad r2.w, r2.z, l(-2.000000), l(3.000000)
      mul r2.z, r2.z, r2.z
      mul r2.z, r2.z, r2.w  // r2.z <- lerpAmt

#line 1074
      dp4 r9.x, r3.xyzw, cb2[r4.w + 33].xyzw  // r9.x <- shadowPosition.x
      dp4 r9.y, r3.xyzw, cb2[r4.w + 34].xyzw  // r9.y <- shadowPosition.y
      dp4 r2.w, r3.xyzw, cb2[r4.w + 35].xyzw  // r2.w <- shadowPosition.z
      dp4 r3.x, r3.xyzw, cb2[r4.w + 36].xyzw  // r3.x <- shadowPosition.w

#line 1075
      add r9.z, r2.w, -cb2[81].x  // r9.z <- shadowPosition.z

#line 1076
      div r3.xyz, r9.xyzx, r3.xxxx  // r3.x <- shadowPosition.x; r3.y <- shadowPosition.y; r3.z <- shadowPosition.z

#line 660
      mad r3.xy, r3.xyxx, cb2[28].xyxx, l(0.500000, 0.500000, 0.000000, 0.000000)
      round_ni r9.xy, r3.xyxx  // r9.x <- base_uv.x; r9.y <- base_uv.y

#line 661
      add r3.xy, r3.xyxx, -r9.xyxx  // r3.x <- st.x; r3.y <- st.y

#line 662
      add r9.xy, r9.xyxx, l(-0.500000, -0.500000, 0.000000, 0.000000)

#line 663
      mul r9.xy, r9.xyxx, cb2[28].zwzz

#line 447
      mad r10.xyzw, r3.xyyx, l(11.000000, 11.000000, 11.000000, 11.000000), l(-28.000000, -28.000000, 17.000000, 17.000000)  // r10.x <- uvW1.x; r10.y <- uvW1.y

#line 448
      mad r11.xyzw, r3.yxxy, l(5.000000, 5.000000, 5.000000, 5.000000), l(-6.000000, -6.000000, 1.000000, 1.000000)  // r11.x <- uvW0.y; r11.y <- uvW0.x

#line 450
      mad r12.xyzw, r3.xyxy, l(4.000000, 4.000000, 4.000000, 4.000000), l(-5.000000, -5.000000, -16.000000, -16.000000)

#line 449
      div r9.zw, r12.xxxy, r11.yyyx
      add r13.xw, r9.zzzw, l(-3.000000, 0.000000, 0.000000, -3.000000)  // r13.x <- uv0.x; r13.w <- uv0.y

#line 450
      div r9.zw, r12.zzzw, r10.xxxy
      add r13.yz, r9.wwzw, l(0.000000, -1.000000, -1.000000, 0.000000)  // r13.y <- uv1.y; r13.z <- uv1.x

#line 451
      mad r9.zw, r3.xxxy, l(0.000000, 0.000000, 7.000000, 7.000000), l(0.000000, 0.000000, 5.000000, 5.000000)
      div r9.zw, r9.zzzw, r10.wwwz
      add r12.xw, r9.wwwz, l(1.000000, 0.000000, 0.000000, 1.000000)  // r12.x <- uv2.y; r12.w <- uv2.x

#line 452
      div r3.xy, r3.xyxx, r11.zwzz
      add r14.xy, r3.xyxx, l(3.000000, 3.000000, 0.000000, 0.000000)  // r14.x <- uv3.x; r14.y <- uv3.y

#line 454
      mad r15.xyzw, r13.xwzw, cb2[28].zwzw, r9.xyxy

#line 459
      mov r12.yz, r13.wwyw

#line 460
      mov r14.zw, r12.yyyz

#line 458
      mad r16.xyzw, r13.xyzy, cb2[28].zwzw, r9.xyxy

#line 459
      mad r17.xyzw, r12.wywz, cb2[28].zwzw, r9.xyxy

#line 460
      mad r18.xyzw, r14.xzxw, cb2[28].zwzw, r9.xyxy

#line 461
      mov r13.y, r12.x
      mul r3.xy, -r10.wzww, r11.xyxx

#line 462
      mad r19.xyzw, r13.xyzy, cb2[28].zwzw, r9.xyxy
      mul r9.zw, r10.yyyx, -r10.wwwz

#line 463
      mad r14.zw, r12.wwwx, cb2[28].zzzw, r9.xxxy
      mul r20.xy, r10.yzyy, r10.xwxx

#line 464
      mov r13.w, r14.x
      mad r13.yw, r13.wwwy, cb2[28].zzzw, r9.xxxy

#line 466
      mov r12.xz, r13.xxzx

#line 465
      mov r12.y, r14.y
      mul r13.xz, r11.xxyx, -r11.zzwz

#line 466
      mad r21.xyzw, r12.xyzy, cb2[28].zwzw, r9.xyxy
      mul r12.xz, r10.yyxy, -r11.zzwz

#line 467
      mad r12.yw, r12.wwwy, cb2[28].zzzw, r9.xxxy
      mul r10.xyzw, r10.xyzw, r11.xyzw

#line 468
      mad r9.xy, r14.xyxx, cb2[28].zwzz, r9.xyxx
      mul r11.xy, r11.xwxx, r11.yzyy

#line 655
      sample_c_lz_indexable(texture2d)(float,float,float,float) r2.w, r15.xyxx, t5.xxxx, s1, r3.z  // r2.w <- <SampleTextureAndCompare_id71 return value>
      sample_c_lz_indexable(texture2d)(float,float,float,float) r3.w, r15.zwzz, t5.xxxx, s1, r3.z  // r3.w <- <SampleTextureAndCompare_id71 return value>

#line 840
      mul r3.w, r3.w, r10.x
      mad r2.w, r11.x, r2.w, r3.w  // r2.w <- shadow

#line 655
      sample_c_lz_indexable(texture2d)(float,float,float,float) r3.w, r17.xyxx, t5.xxxx, s1, r3.z  // r3.w <- <SampleTextureAndCompare_id71 return value>

#line 840
      mad r2.w, r3.x, r3.w, r2.w

#line 655
      sample_c_lz_indexable(texture2d)(float,float,float,float) r3.x, r18.xyxx, t5.xxxx, s1, r3.z  // r3.x <- <SampleTextureAndCompare_id71 return value>

#line 840
      mad r2.w, r13.x, r3.x, r2.w

#line 655
      sample_c_lz_indexable(texture2d)(float,float,float,float) r3.x, r16.xyxx, t5.xxxx, s1, r3.z

#line 840
      mad r2.w, r10.y, r3.x, r2.w

#line 655
      sample_c_lz_indexable(texture2d)(float,float,float,float) r3.x, r16.zwzz, t5.xxxx, s1, r3.z

#line 840
      mad r2.w, r20.x, r3.x, r2.w

#line 655
      sample_c_lz_indexable(texture2d)(float,float,float,float) r3.x, r17.zwzz, t5.xxxx, s1, r3.z

#line 840
      mad r2.w, r9.z, r3.x, r2.w

#line 655
      sample_c_lz_indexable(texture2d)(float,float,float,float) r3.x, r18.zwzz, t5.xxxx, s1, r3.z

#line 840
      mad r2.w, r12.x, r3.x, r2.w

#line 655
      sample_c_lz_indexable(texture2d)(float,float,float,float) r3.x, r19.xyxx, t5.xxxx, s1, r3.z

#line 840
      mad r2.w, r3.y, r3.x, r2.w

#line 655
      sample_c_lz_indexable(texture2d)(float,float,float,float) r3.x, r19.zwzz, t5.xxxx, s1, r3.z

#line 840
      mad r2.w, r9.w, r3.x, r2.w

#line 655
      sample_c_lz_indexable(texture2d)(float,float,float,float) r3.x, r14.zwzz, t5.xxxx, s1, r3.z

#line 840
      mad r2.w, r20.y, r3.x, r2.w

#line 655
      sample_c_lz_indexable(texture2d)(float,float,float,float) r3.x, r13.ywyy, t5.xxxx, s1, r3.z

#line 840
      mad r2.w, r10.z, r3.x, r2.w

#line 655
      sample_c_lz_indexable(texture2d)(float,float,float,float) r3.x, r21.xyxx, t5.xxxx, s1, r3.z

#line 840
      mad r2.w, r13.z, r3.x, r2.w

#line 655
      sample_c_lz_indexable(texture2d)(float,float,float,float) r3.x, r21.zwzz, t5.xxxx, s1, r3.z

#line 840
      mad r2.w, r12.z, r3.x, r2.w

#line 655
      sample_c_lz_indexable(texture2d)(float,float,float,float) r3.x, r12.ywyy, t5.xxxx, s1, r3.z

#line 840
      mad r2.w, r10.w, r3.x, r2.w

#line 655
      sample_c_lz_indexable(texture2d)(float,float,float,float) r3.x, r9.xyxx, t5.xxxx, s1, r3.z

#line 840
      mad r2.w, r11.y, r3.x, r2.w

#line 842
      mul r2.w, r2.w, l(0.000370)

#line 1447
      mad r3.x, r5.w, l(0.000370), -r2.w
      mad r7.xyz, r2.zzzz, r3.xxxx, r2.wwww  // r7.x <- shadow.x; r7.y <- shadow.y; r7.z <- shadow.z

#line 1448
    endif 

#line 1449
  endif 

#line 1649
  mul r3.xyz, r7.xyzx, cb2[27].xyzx
  mul r3.xyz, r1.wwww, r3.xyzx  // r3.x <- streams.lightColorNdotL_id46.x; r3.y <- streams.lightColorNdotL_id46.y; r3.z <- streams.lightColorNdotL_id46.z

#line 1639
  mad r4.xyz, r4.xyzx, r0.zzzz, -cb2[26].xyzx
  dp3 r0.z, r4.xyzx, r4.xyzx
  rsq r0.z, r0.z
  mul r4.xyz, r0.zzzz, r4.xyzx  // r4.x <- streams.H_id77.x; r4.y <- streams.H_id77.y; r4.z <- streams.H_id77.z

#line 1640
  dp3_sat r0.z, r1.xyzx, r4.xyzx  // r0.z <- streams.NdotH_id78

#line 1641
  dp3_sat r2.z, -cb2[26].xyzx, r4.xyzx  // r2.z <- streams.LdotH_id79

#line 1635
  mul r4.xyz, r3.xyzx, r6.xyzx

#line 810
  add r7.xyz, -r8.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
  add r2.z, -r2.z, l(1.000000)
  mul r2.w, r2.z, r2.z
  mul r2.w, r2.w, r2.w
  mul r2.z, r2.w, r2.z
  mad r7.xyz, r7.xyzx, r2.zzzz, r8.xyzx  // r7.x <- <FresnelSchlick_id187 return value>.x; r7.y <- <FresnelSchlick_id187 return value>.y; r7.z <- <FresnelSchlick_id187 return value>.z

#line 805
  mul r2.z, r0.w, l(0.500000)  // r2.z <- k

#line 806
  mad r2.w, -r0.w, l(0.500000), l(1.000000)
  mad r3.w, r1.w, r2.w, r2.z
  div r3.w, r1.w, r3.w  // r3.w <- <VisibilityhSchlickGGX_id203 return value>
  mad r2.z, r2.y, r2.w, r2.z
  div r2.z, r2.y, r2.z  // r2.z <- <VisibilityhSchlickGGX_id203 return value>

#line 1061
  mul r2.z, r2.z, r3.w
  mul r1.w, r2.y, r1.w
  div r1.w, r2.z, r1.w  // r1.w <- <VisibilitySmithSchlickGGX_id205 return value>

#line 1055
  mul r2.z, r0.w, r0.w  // r2.z <- alphaR2

#line 1056
  mul r0.z, r0.z, r0.z
  mad r2.w, r0.w, r0.w, l(-1.000000)
  mad r0.z, r0.z, r2.w, l(1.000000)
  max r0.z, r0.z, l(0.000100)  // r0.z <- d

#line 1057
  mul r0.z, r0.z, r0.z
  mul r0.z, r0.z, l(3.141593)
  div r0.z, r2.z, r0.z  // r0.z <- <NormalDistributionGGX_id217 return value>

#line 1629
  mul r7.xyz, r1.wwww, r7.xyzx
  mul r7.xyz, r0.zzzz, r7.xyzx
  mul r3.xyz, r3.xyzx, r7.xyzx

#line 1630
  mul r3.xyz, r3.xyzx, l(0.250000, 0.250000, 0.250000, 0.000000)  // r3.x <- <ComputeDirectLightContribution_id716 return value>.x; r3.y <- <ComputeDirectLightContribution_id716 return value>.y; r3.z <- <ComputeDirectLightContribution_id716 return value>.z

#line 1757
  mad r3.xyz, r4.xyzx, l(0.318310, 0.318310, 0.318310, 0.000000), r3.xyzx  // r3.x <- directLightingContribution.x; r3.y <- directLightingContribution.y; r3.z <- directLightingContribution.z

#line 1758
else 
  mov r3.xyz, l(0,0,0,0)  // r3.x <- directLightingContribution.x; r3.y <- directLightingContribution.y; r3.z <- directLightingContribution.z
endif 

#line 1384
add r0.z, v1.z, -cb2[22].z
div r0.z, cb2[22].w, r0.z  // r0.z <- depth

#line 1385
mad r0.xy, r0.xyxx, l(1.000000, -1.000000, 0.000000, 0.000000), l(1.000000, 1.000000, 0.000000, 0.000000)
mul r0.xy, r0.xyxx, cb2[87].xyxx

#line 1386
mad r0.z, r0.z, cb2[86].y, cb2[86].z
log r0.z, r0.z
max r0.z, r0.z, l(0.000000)

#line 1387
mul r0.xy, r0.xyxx, l(0.500000, 0.500000, 0.000000, 0.000000)

#line 1386
ftoi r4.xyz, r0.xyzx  // r4.z <- slice

#line 1387
mov r4.w, l(0)
ld_indexable(texture3d)(uint,uint,uint,uint) r0.xy, r4.xyzw, t6.xyzw  // r0.x <- streams.lightData_id175.x; r0.y <- streams.lightData_id175.y

#line 1617
and r0.z, r0.y, l(0x0000ffff)  // r0.z <- <GetMaxLightCount_id258 return value>

#line 1767
mov r4.xyz, v0.xyzx  // r4.x <- streams.PositionWS_id22.x; r4.y <- streams.PositionWS_id22.y; r4.z <- streams.PositionWS_id22.z
mov r4.w, r5.x  // r4.w <- streams.viewWS_id70.x
mov r7.yz, r5.yyzy  // r7.y <- streams.viewWS_id70.y; r7.z <- streams.viewWS_id70.z
mov r9.xy, r6.xyxx  // r9.x <- streams.matDiffuseVisible_id71.x; r9.y <- streams.matDiffuseVisible_id71.y
mov r10.x, r6.z  // r10.x <- streams.matDiffuseVisible_id71.z
mov r10.yzw, r8.xxyz  // r10.y <- streams.matSpecularVisible_id73.x; r10.z <- streams.matSpecularVisible_id73.y; r10.w <- streams.matSpecularVisible_id73.z
mov r1.w, r0.w  // r1.w <- streams.alphaRoughness_id72
mov r11.xyz, r1.xyzx  // r11.x <- streams.normalWS_id19.x; r11.y <- streams.normalWS_id19.y; r11.z <- streams.normalWS_id19.z
mov r2.w, r2.y  // r2.w <- streams.NdotV_id74
mov r2.z, r0.x  // r2.z <- streams.lightIndex_id176
mov r12.xyz, r3.xyzx  // r12.x <- directLightingContribution.x; r12.y <- directLightingContribution.y; r12.z <- directLightingContribution.z
mov r3.w, l(0)  // r3.w <- i
loop 
  ige r5.w, r3.w, r0.z
  breakc_nz r5.w

#line 1769
  if_nz r5.w

#line 1771
    break 

#line 1772
  endif 

#line 1371
  ld_indexable(buffer)(uint,uint,uint,uint) r5.w, r2.zzzz, t7.yzwx  // r5.w <- realLightIndex

#line 1372
  iadd r2.z, r2.z, l(1)  // r2.z <- streams.lightIndex_id176

#line 1374
  ishl r7.w, r5.w, l(1)
  ld_indexable(buffer)(float,float,float,float) r13.xyzw, r7.wwww, t8.xyzw  // r13.x <- pointLight1.x; r13.y <- pointLight1.y; r13.z <- pointLight1.z; r13.w <- pointLight1.w

#line 1375
  bfi r5.w, l(31), l(1), r5.w, l(1)
  ld_indexable(buffer)(float,float,float,float) r14.xyz, r5.wwww, t8.xyzw  // r14.x <- pointLight2.x; r14.y <- pointLight2.y; r14.z <- pointLight2.z

#line 797
  add r13.xyz, -r4.xyzx, r13.xyzx  // r13.x <- lightVector.x; r13.y <- lightVector.y; r13.z <- lightVector.z

#line 798
  dp3 r5.w, r13.xyzx, r13.xyzx
  sqrt r7.w, r5.w  // r7.w <- lightVectorLength

#line 799
  div r13.xyz, r13.xyzx, r7.wwww  // r13.x <- lightVectorNorm.x; r13.y <- lightVectorNorm.y; r13.z <- lightVectorNorm.z

#line 601
  max r7.w, r5.w, l(0.000100)
  div r7.w, l(1.000000, 1.000000, 1.000000, 1.000000), r7.w  // r7.w <- attenuation

#line 393
  mul r5.w, r13.w, r5.w  // r5.w <- factor

#line 394
  mad r5.w, -r5.w, r5.w, l(1.000000)
  max r5.w, r5.w, l(0.000000)  // r5.w <- smoothFactor

#line 395
  mul r5.w, r5.w, r5.w  // r5.w <- <SmoothDistanceAttenuation_id85 return value>

#line 602
  mul r5.w, r5.w, r7.w  // r5.w <- attenuation

#line 1603
  dp3 r7.w, r11.xyzx, r13.xyzx
  max r7.w, r7.w, l(0.000100)  // r7.w <- streams.NdotL_id51

#line 1605
  mul r14.xyz, r5.wwww, r14.xyzx
  mul r14.xyz, r7.wwww, r14.xyzx  // r14.x <- streams.lightColorNdotL_id46.x; r14.y <- streams.lightColorNdotL_id46.y; r14.z <- streams.lightColorNdotL_id46.z

#line 1639
  mov r7.x, r4.w
  add r15.xyz, r13.xyzx, r7.xyzx
  dp3 r5.w, r15.xyzx, r15.xyzx
  rsq r5.w, r5.w
  mul r15.xyz, r5.wwww, r15.xyzx  // r15.x <- streams.H_id77.x; r15.y <- streams.H_id77.y; r15.z <- streams.H_id77.z

#line 1640
  dp3_sat r5.w, r11.xyzx, r15.xyzx  // r5.w <- streams.NdotH_id78

#line 1641
  dp3_sat r7.x, r13.xyzx, r15.xyzx  // r7.x <- streams.LdotH_id79

#line 1635
  mov r9.z, r10.x
  mul r13.xyz, r14.xyzx, r9.xyzx

#line 1777
  mad r13.xyz, r13.xyzx, l(0.318310, 0.318310, 0.318310, 0.000000), r12.xyzx  // r13.x <- directLightingContribution.x; r13.y <- directLightingContribution.y; r13.z <- directLightingContribution.z

#line 810
  add r15.xyz, -r10.yzwy, l(1.000000, 1.000000, 1.000000, 0.000000)
  add r7.x, -r7.x, l(1.000000)
  mul r8.w, r7.x, r7.x
  mul r8.w, r8.w, r8.w
  mul r7.x, r7.x, r8.w
  mad r15.xyz, r15.xyzx, r7.xxxx, r10.yzwy  // r15.x <- <FresnelSchlick_id187 return value>.x; r15.y <- <FresnelSchlick_id187 return value>.y; r15.z <- <FresnelSchlick_id187 return value>.z

#line 805
  mul r7.x, r1.w, l(0.500000)  // r7.x <- k

#line 806
  mad r8.w, -r1.w, l(0.500000), l(1.000000)
  mad r9.z, r7.w, r8.w, r7.x
  div r9.z, r7.w, r9.z  // r9.z <- <VisibilityhSchlickGGX_id203 return value>
  mad r7.x, r2.w, r8.w, r7.x
  div r7.x, r2.w, r7.x  // r7.x <- <VisibilityhSchlickGGX_id203 return value>

#line 1061
  mul r7.x, r7.x, r9.z
  mul r7.w, r2.w, r7.w
  div r7.x, r7.x, r7.w  // r7.x <- <VisibilitySmithSchlickGGX_id205 return value>

#line 1055
  mul r7.w, r1.w, r1.w  // r7.w <- alphaR2

#line 1056
  mul r5.w, r5.w, r5.w
  mad r8.w, r1.w, r1.w, l(-1.000000)
  mad r5.w, r5.w, r8.w, l(1.000000)
  max r5.w, r5.w, l(0.000100)  // r5.w <- d

#line 1057
  mul r5.w, r5.w, r5.w
  mul r5.w, r5.w, l(3.141593)
  div r5.w, r7.w, r5.w  // r5.w <- <NormalDistributionGGX_id217 return value>

#line 1629
  mul r15.xyz, r7.xxxx, r15.xyzx
  mul r15.xyz, r5.wwww, r15.xyzx
  mul r14.xyz, r14.xyzx, r15.xyzx

#line 1781
  mad r12.xyz, r14.xyzx, l(0.250000, 0.250000, 0.250000, 0.000000), r13.xyzx  // r12.x <- directLightingContribution.x; r12.y <- directLightingContribution.y; r12.z <- directLightingContribution.z

#line 1767
  iadd r3.w, r3.w, l(1)

#line 1783
endloop   // r2.z <- streams.lightIndex_id176

#line 1595
ushr r0.x, r0.y, l(16)  // r0.x <- <GetMaxLightCount_id270 return value>

#line 1791
mov r3.xyz, v0.xyzx  // r3.x <- streams.PositionWS_id22.x; r3.y <- streams.PositionWS_id22.y; r3.z <- streams.PositionWS_id22.z
mov r4.xyz, r5.xyzx  // r4.x <- streams.viewWS_id70.x; r4.y <- streams.viewWS_id70.y; r4.z <- streams.viewWS_id70.z
mov r7.xyz, r6.xyzx  // r7.x <- streams.matDiffuseVisible_id71.x; r7.y <- streams.matDiffuseVisible_id71.y; r7.z <- streams.matDiffuseVisible_id71.z
mov r9.xyz, r8.xyzx  // r9.x <- streams.matSpecularVisible_id73.x; r9.y <- streams.matSpecularVisible_id73.y; r9.z <- streams.matSpecularVisible_id73.z
mov r10.x, r0.w  // r10.x <- streams.alphaRoughness_id72
mov r10.z, r2.y  // r10.z <- streams.NdotV_id74
mov r11.xyz, r1.xyzx
mov r13.xyz, r12.xyzx  // r13.x <- directLightingContribution.x; r13.y <- directLightingContribution.y; r13.z <- directLightingContribution.z
mov r0.y, r2.z  // r0.y <- streams.lightIndex_id176
mov r0.z, l(0)  // r0.z <- i
loop 
  ige r1.w, r0.z, r0.x
  breakc_nz r1.w

#line 1793
  if_nz r1.w

#line 1795
    break 

#line 1796
  endif 

#line 1343
  ld_indexable(buffer)(uint,uint,uint,uint) r1.w, r0.yyyy, t7.yzwx  // r1.w <- realLightIndex

#line 1344
  iadd r0.y, r0.y, l(1)  // r0.y <- streams.lightIndex_id176

#line 1346
  ishl r2.w, r1.w, l(2)
  ld_indexable(buffer)(float,float,float,float) r14.xyz, r2.wwww, t9.xyzw  // r14.x <- spotLight1.x; r14.y <- spotLight1.y; r14.z <- spotLight1.z

#line 1349
  bfi r15.xyz, l(30, 30, 30, 0), l(2, 2, 2, 0), r1.wwww, l(1, 2, 3, 0)

#line 1347
  ld_indexable(buffer)(float,float,float,float) r16.xyz, r15.xxxx, t9.xyzw  // r16.x <- spotLight2.x; r16.y <- spotLight2.y; r16.z <- spotLight2.z

#line 1348
  ld_indexable(buffer)(float,float,float,float) r15.xyw, r15.yyyy, t9.xywz  // r15.x <- spotLight3.x; r15.y <- spotLight3.y; r15.w <- spotLight3.z

#line 1349
  ld_indexable(buffer)(float,float,float,float) r17.xyz, r15.zzzz, t9.xyzw  // r17.x <- spotLight4.x; r17.y <- spotLight4.y; r17.z <- spotLight4.z

#line 784
  add r14.xyz, -r3.xyzx, r14.xyzx  // r14.x <- lightVector.x; r14.y <- lightVector.y; r14.z <- lightVector.z

#line 785
  dp3 r1.w, r14.xyzx, r14.xyzx
  sqrt r2.w, r1.w  // r2.w <- lightVectorLength

#line 786
  div r14.xyz, r14.xyzx, r2.wwww  // r14.x <- lightVectorNorm.x; r14.y <- lightVectorNorm.y; r14.z <- lightVectorNorm.z

#line 594
  max r2.w, r1.w, l(0.000100)
  div r2.w, l(1.000000, 1.000000, 1.000000, 1.000000), r2.w  // r2.w <- attenuation

#line 387
  mul r1.w, r15.w, r1.w  // r1.w <- factor

#line 388
  mad r1.w, -r1.w, r1.w, l(1.000000)
  max r1.w, r1.w, l(0.000000)  // r1.w <- smoothFactor

#line 389
  mul r1.w, r1.w, r1.w  // r1.w <- <SmoothDistanceAttenuation_id96 return value>

#line 595
  mul r1.w, r1.w, r2.w  // r1.w <- attenuation

#line 586
  dp3 r2.w, -r16.xyzx, r14.xyzx  // r2.w <- cd

#line 587
  mad_sat r2.w, r2.w, r15.x, r15.y  // r2.w <- attenuation

#line 588
  mul r2.w, r2.w, r2.w

#line 792
  mul r1.w, r1.w, r2.w  // r1.w <- attenuation

#line 1581
  dp3 r2.w, r11.xyzx, r14.xyzx
  max r2.w, r2.w, l(0.000100)  // r2.w <- streams.NdotL_id51

#line 1583
  mul r15.xyz, r1.wwww, r17.xyzx
  mul r15.xyz, r2.wwww, r15.xyzx  // r15.x <- streams.lightColorNdotL_id46.x; r15.y <- streams.lightColorNdotL_id46.y; r15.z <- streams.lightColorNdotL_id46.z

#line 1639
  add r16.xyz, r4.xyzx, r14.xyzx
  dp3 r1.w, r16.xyzx, r16.xyzx
  rsq r1.w, r1.w
  mul r16.xyz, r1.wwww, r16.xyzx  // r16.x <- streams.H_id77.x; r16.y <- streams.H_id77.y; r16.z <- streams.H_id77.z

#line 1640
  dp3_sat r1.w, r11.xyzx, r16.xyzx  // r1.w <- streams.NdotH_id78

#line 1641
  dp3_sat r3.w, r14.xyzx, r16.xyzx  // r3.w <- streams.LdotH_id79

#line 1635
  mul r14.xyz, r7.xyzx, r15.xyzx

#line 1801
  mad r14.xyz, r14.xyzx, l(0.318310, 0.318310, 0.318310, 0.000000), r13.xyzx  // r14.x <- directLightingContribution.x; r14.y <- directLightingContribution.y; r14.z <- directLightingContribution.z

#line 810
  add r16.xyz, -r9.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
  add r3.w, -r3.w, l(1.000000)
  mul r4.w, r3.w, r3.w
  mul r4.w, r4.w, r4.w
  mul r3.w, r3.w, r4.w
  mad r16.xyz, r16.xyzx, r3.wwww, r9.xyzx  // r16.x <- <FresnelSchlick_id187 return value>.x; r16.y <- <FresnelSchlick_id187 return value>.y; r16.z <- <FresnelSchlick_id187 return value>.z

#line 805
  mul r3.w, r10.x, l(0.500000)  // r3.w <- k

#line 806
  mad r4.w, -r10.x, l(0.500000), l(1.000000)
  mad r5.w, r2.w, r4.w, r3.w
  div r5.w, r2.w, r5.w  // r5.w <- <VisibilityhSchlickGGX_id203 return value>
  mad r3.w, r10.z, r4.w, r3.w
  div r3.w, r10.z, r3.w  // r3.w <- <VisibilityhSchlickGGX_id203 return value>

#line 1061
  mul r3.w, r3.w, r5.w
  mul r2.w, r10.z, r2.w
  div r2.w, r3.w, r2.w  // r2.w <- <VisibilitySmithSchlickGGX_id205 return value>

#line 1055
  mul r3.w, r10.x, r10.x  // r3.w <- alphaR2

#line 1056
  mul r1.w, r1.w, r1.w
  mad r4.w, r10.x, r10.x, l(-1.000000)
  mad r1.w, r1.w, r4.w, l(1.000000)
  max r1.w, r1.w, l(0.000100)  // r1.w <- d

#line 1057
  mul r1.w, r1.w, r1.w
  mul r1.w, r1.w, l(3.141593)
  div r1.w, r3.w, r1.w  // r1.w <- <NormalDistributionGGX_id217 return value>

#line 1629
  mul r16.xyz, r2.wwww, r16.xyzx
  mul r16.xyz, r1.wwww, r16.xyzx
  mul r15.xyz, r15.xyzx, r16.xyzx

#line 1805
  mad r13.xyz, r15.xyzx, l(0.250000, 0.250000, 0.250000, 0.000000), r14.xyzx  // r13.x <- directLightingContribution.x; r13.y <- directLightingContribution.y; r13.z <- directLightingContribution.z

#line 1791
  iadd r0.z, r0.z, l(1)

#line 1807
endloop   // r0.y <- streams.lightIndex_id176

#line 1815
mov r0.xyz, v0.xyzx  // r0.x <- streams.PositionWS_id22.x; r0.y <- streams.PositionWS_id22.y; r0.z <- streams.PositionWS_id22.z
mov r3.xyz, r5.xyzx  // r3.x <- streams.viewWS_id70.x; r3.y <- streams.viewWS_id70.y; r3.z <- streams.viewWS_id70.z
mov r4.xyz, r6.xyzx  // r4.x <- streams.matDiffuseVisible_id71.x; r4.y <- streams.matDiffuseVisible_id71.y; r4.z <- streams.matDiffuseVisible_id71.z
mov r7.xyz, r8.xyzx  // r7.x <- streams.matSpecularVisible_id73.x; r7.y <- streams.matSpecularVisible_id73.y; r7.z <- streams.matSpecularVisible_id73.z
mov r9.x, r0.w  // r9.x <- streams.alphaRoughness_id72
mov r9.z, r2.y  // r9.z <- streams.NdotV_id74
mov r10.xyz, r1.xyzx  // r10.x <- streams.normalWS_id19.x; r10.y <- streams.normalWS_id19.y; r10.z <- streams.normalWS_id19.z
mov r11.xyz, r13.xyzx  // r11.x <- directLightingContribution.x; r11.y <- directLightingContribution.y; r11.z <- directLightingContribution.z
mov r1.w, l(0)  // r1.w <- i
loop 
  ige r2.z, r1.w, l(64)
  breakc_nz r2.z

#line 1817
  ige r2.z, r1.w, cb0[28].x
  if_nz r2.z

#line 1819
    break 

#line 1820
  endif 

#line 1323
  ishl r2.z, r1.w, l(1)

#line 776
  add r12.xyz, -r0.xyzx, cb0[r2.z + 29].xyzx  // r12.x <- lightVector.x; r12.y <- lightVector.y; r12.z <- lightVector.z

#line 777
  dp3 r2.w, r12.xyzx, r12.xyzx
  sqrt r3.w, r2.w  // r3.w <- lightVectorLength

#line 778
  div r12.xyz, r12.xyzx, r3.wwww  // r12.x <- lightVectorNorm.x; r12.y <- lightVectorNorm.y; r12.z <- lightVectorNorm.z

#line 580
  max r3.w, r2.w, l(0.000100)
  div r3.w, l(1.000000, 1.000000, 1.000000, 1.000000), r3.w  // r3.w <- attenuation

#line 381
  mul r2.w, r2.w, cb0[r2.z + 29].w  // r2.w <- factor

#line 382
  mad r2.w, -r2.w, r2.w, l(1.000000)
  max r2.w, r2.w, l(0.000000)  // r2.w <- smoothFactor

#line 383
  mul r2.w, r2.w, r2.w  // r2.w <- <SmoothDistanceAttenuation_id107 return value>

#line 581
  mul r2.w, r2.w, r3.w  // r2.w <- attenuation

#line 1559
  dp3 r3.w, r10.xyzx, r12.xyzx
  max r3.w, r3.w, l(0.000100)  // r3.w <- streams.NdotL_id51

#line 1561
  mul r14.xyz, r2.wwww, cb0[r2.z + 30].xyzx
  mul r14.xyz, r3.wwww, r14.xyzx  // r14.x <- streams.lightColorNdotL_id46.x; r14.y <- streams.lightColorNdotL_id46.y; r14.z <- streams.lightColorNdotL_id46.z

#line 1639
  add r15.xyz, r3.xyzx, r12.xyzx
  dp3 r2.z, r15.xyzx, r15.xyzx
  rsq r2.z, r2.z
  mul r15.xyz, r2.zzzz, r15.xyzx  // r15.x <- streams.H_id77.x; r15.y <- streams.H_id77.y; r15.z <- streams.H_id77.z

#line 1640
  dp3_sat r2.z, r10.xyzx, r15.xyzx  // r2.z <- streams.NdotH_id78

#line 1641
  dp3_sat r2.w, r12.xyzx, r15.xyzx  // r2.w <- streams.LdotH_id79

#line 1635
  mul r12.xyz, r4.xyzx, r14.xyzx

#line 1825
  mad r12.xyz, r12.xyzx, l(0.318310, 0.318310, 0.318310, 0.000000), r11.xyzx  // r12.x <- directLightingContribution.x; r12.y <- directLightingContribution.y; r12.z <- directLightingContribution.z

#line 810
  add r15.xyz, -r7.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
  add r2.w, -r2.w, l(1.000000)
  mul r4.w, r2.w, r2.w
  mul r4.w, r4.w, r4.w
  mul r2.w, r2.w, r4.w
  mad r15.xyz, r15.xyzx, r2.wwww, r7.xyzx  // r15.x <- <FresnelSchlick_id187 return value>.x; r15.y <- <FresnelSchlick_id187 return value>.y; r15.z <- <FresnelSchlick_id187 return value>.z

#line 805
  mul r2.w, r9.x, l(0.500000)  // r2.w <- k

#line 806
  mad r4.w, -r9.x, l(0.500000), l(1.000000)
  mad r5.w, r3.w, r4.w, r2.w
  div r5.w, r3.w, r5.w  // r5.w <- <VisibilityhSchlickGGX_id203 return value>
  mad r2.w, r9.z, r4.w, r2.w
  div r2.w, r9.z, r2.w  // r2.w <- <VisibilityhSchlickGGX_id203 return value>

#line 1061
  mul r2.w, r2.w, r5.w
  mul r3.w, r9.z, r3.w
  div r2.w, r2.w, r3.w  // r2.w <- <VisibilitySmithSchlickGGX_id205 return value>

#line 1055
  mul r3.w, r9.x, r9.x  // r3.w <- alphaR2

#line 1056
  mul r2.z, r2.z, r2.z
  mad r4.w, r9.x, r9.x, l(-1.000000)
  mad r2.z, r2.z, r4.w, l(1.000000)
  max r2.z, r2.z, l(0.000100)  // r2.z <- d

#line 1057
  mul r2.z, r2.z, r2.z
  mul r2.z, r2.z, l(3.141593)
  div r2.z, r3.w, r2.z  // r2.z <- <NormalDistributionGGX_id217 return value>

#line 1629
  mul r15.xyz, r2.wwww, r15.xyzx
  mul r15.xyz, r2.zzzz, r15.xyzx
  mul r14.xyz, r14.xyzx, r15.xyzx

#line 1829
  mad r11.xyz, r14.xyzx, l(0.250000, 0.250000, 0.250000, 0.000000), r12.xyzx  // r11.x <- directLightingContribution.x; r11.y <- directLightingContribution.y; r11.z <- directLightingContribution.z

#line 1815
  iadd r1.w, r1.w, l(1)

#line 1831
endloop 

#line 1839
mov r0.xyz, v0.xyzx
mov r3.xyz, r5.xyzx
mov r4.xyz, r6.xyzx
mov r7.xyz, r8.xyzx
mov r9.x, r0.w
mov r9.z, r2.y
mov r10.xyz, r1.xyzx
mov r12.xyz, r11.xyzx  // r12.x <- directLightingContribution.x; r12.y <- directLightingContribution.y; r12.z <- directLightingContribution.z
mov r1.w, l(0)  // r1.w <- i
loop 
  ige r2.z, r1.w, l(8)
  breakc_nz r2.z

#line 1841
  ige r2.z, r1.w, cb0[156].w
  if_nz r2.z

#line 1843
    break 

#line 1844
  endif 

#line 1301
  ishl r2.z, r1.w, l(2)

#line 763
  add r13.xyz, -r0.xyzx, cb0[r2.z + 157].xyzx  // r13.x <- lightVector.x; r13.y <- lightVector.y; r13.z <- lightVector.z

#line 764
  dp3 r2.w, r13.xyzx, r13.xyzx
  sqrt r3.w, r2.w  // r3.w <- lightVectorLength

#line 765
  div r13.xyz, r13.xyzx, r3.wwww  // r13.x <- lightVectorNorm.x; r13.y <- lightVectorNorm.y; r13.z <- lightVectorNorm.z

#line 573
  max r3.w, r2.w, l(0.000100)
  div r3.w, l(1.000000, 1.000000, 1.000000, 1.000000), r3.w  // r3.w <- attenuation

#line 375
  mul r2.w, r2.w, cb0[r2.z + 159].z  // r2.w <- factor

#line 376
  mad r2.w, -r2.w, r2.w, l(1.000000)
  max r2.w, r2.w, l(0.000000)  // r2.w <- smoothFactor

#line 377
  mul r2.w, r2.w, r2.w  // r2.w <- <SmoothDistanceAttenuation_id117 return value>

#line 574
  mul r2.w, r2.w, r3.w  // r2.w <- attenuation

#line 565
  dp3 r3.w, -cb0[r2.z + 158].xyzx, r13.xyzx  // r3.w <- cd

#line 566
  mad_sat r3.w, r3.w, cb0[r2.z + 159].x, cb0[r2.z + 159].y  // r3.w <- attenuation

#line 567
  mul r3.w, r3.w, r3.w

#line 771
  mul r2.w, r2.w, r3.w  // r2.w <- attenuation

#line 1537
  dp3 r3.w, r10.xyzx, r13.xyzx
  max r3.w, r3.w, l(0.000100)  // r3.w <- streams.NdotL_id51

#line 1539
  mul r14.xyz, r2.wwww, cb0[r2.z + 160].xyzx
  mul r14.xyz, r3.wwww, r14.xyzx  // r14.x <- streams.lightColorNdotL_id46.x; r14.y <- streams.lightColorNdotL_id46.y; r14.z <- streams.lightColorNdotL_id46.z

#line 1639
  add r15.xyz, r3.xyzx, r13.xyzx
  dp3 r2.z, r15.xyzx, r15.xyzx
  rsq r2.z, r2.z
  mul r15.xyz, r2.zzzz, r15.xyzx  // r15.x <- streams.H_id77.x; r15.y <- streams.H_id77.y; r15.z <- streams.H_id77.z

#line 1640
  dp3_sat r2.z, r10.xyzx, r15.xyzx  // r2.z <- streams.NdotH_id78

#line 1641
  dp3_sat r2.w, r13.xyzx, r15.xyzx  // r2.w <- streams.LdotH_id79

#line 1635
  mul r13.xyz, r4.xyzx, r14.xyzx

#line 1849
  mad r13.xyz, r13.xyzx, l(0.318310, 0.318310, 0.318310, 0.000000), r12.xyzx  // r13.x <- directLightingContribution.x; r13.y <- directLightingContribution.y; r13.z <- directLightingContribution.z

#line 810
  add r15.xyz, -r7.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
  add r2.w, -r2.w, l(1.000000)
  mul r4.w, r2.w, r2.w
  mul r4.w, r4.w, r4.w
  mul r2.w, r2.w, r4.w
  mad r15.xyz, r15.xyzx, r2.wwww, r7.xyzx  // r15.x <- <FresnelSchlick_id187 return value>.x; r15.y <- <FresnelSchlick_id187 return value>.y; r15.z <- <FresnelSchlick_id187 return value>.z

#line 805
  mul r2.w, r9.x, l(0.500000)  // r2.w <- k

#line 806
  mad r4.w, -r9.x, l(0.500000), l(1.000000)
  mad r5.w, r3.w, r4.w, r2.w
  div r5.w, r3.w, r5.w  // r5.w <- <VisibilityhSchlickGGX_id203 return value>
  mad r2.w, r9.z, r4.w, r2.w
  div r2.w, r9.z, r2.w  // r2.w <- <VisibilityhSchlickGGX_id203 return value>

#line 1061
  mul r2.w, r2.w, r5.w
  mul r3.w, r9.z, r3.w
  div r2.w, r2.w, r3.w  // r2.w <- <VisibilitySmithSchlickGGX_id205 return value>

#line 1055
  mul r3.w, r9.x, r9.x  // r3.w <- alphaR2

#line 1056
  mul r2.z, r2.z, r2.z
  mad r4.w, r9.x, r9.x, l(-1.000000)
  mad r2.z, r2.z, r4.w, l(1.000000)
  max r2.z, r2.z, l(0.000100)  // r2.z <- d

#line 1057
  mul r2.z, r2.z, r2.z
  mul r2.z, r2.z, l(3.141593)
  div r2.z, r3.w, r2.z  // r2.z <- <NormalDistributionGGX_id217 return value>

#line 1629
  mul r15.xyz, r2.wwww, r15.xyzx
  mul r15.xyz, r2.zzzz, r15.xyzx
  mul r14.xyz, r14.xyzx, r15.xyzx

#line 1853
  mad r12.xyz, r14.xyzx, l(0.250000, 0.250000, 0.250000, 0.000000), r13.xyzx  // r12.x <- directLightingContribution.x; r12.y <- directLightingContribution.y; r12.z <- directLightingContribution.z

#line 1839
  iadd r1.w, r1.w, l(1)

#line 1855
endloop 

#line 1276
sqrt r0.x, r0.w
add r2.x, -r0.x, l(1.000000)  // r2.x <- glossiness

#line 1277
sample_l_indexable(texture2d)(float,float,float,float) r0.yz, r2.xyxx, t4.zxyw, s0, l(0.000000)  // r0.y <- environmentLightingDFG.x; r0.z <- environmentLightingDFG.y

#line 1278
mad r0.yzw, r8.xxyz, r0.yyyy, r0.zzzz  // r0.y <- <Compute_id538 return value>.x; r0.z <- <Compute_id538 return value>.y; r0.w <- <Compute_id538 return value>.z

#line 1520
mul r2.xyz, r0.yzwy, cb2[88].xyzx  // r2.x <- <ComputeEnvironmentLightContribution_id717 return value>.x; r2.y <- <ComputeEnvironmentLightContribution_id717 return value>.y; r2.z <- <ComputeEnvironmentLightContribution_id717 return value>.z

#line 1867
mad r2.xyz, r6.xyzx, cb2[88].xyzx, r2.xyzx  // r2.x <- environmentLightingContribution.x; r2.y <- environmentLightingContribution.y; r2.z <- environmentLightingContribution.z

#line 1509
dp3 r1.w, r1.xyzx, cb2[98].xyzx  // r1.w <- sampleDirection.x
dp3 r2.w, r1.xyzx, cb2[99].xyzx  // r2.w <- sampleDirection.y
dp3 r3.x, r1.xyzx, cb2[100].xyzx  // r3.x <- sampleDirection.z

#line 1000
mul r3.y, r2.w, r2.w  // r3.y <- y2

#line 1001
mul r3.z, r3.x, r3.x  // r3.z <- z2

#line 1005
mad r4.xyz, cb2[90].xyzx, r2.wwww, cb2[89].xyzx  // r4.x <- color.x; r4.y <- color.y; r4.z <- color.z

#line 1006
mad r4.xyz, cb2[91].xyzx, -r3.xxxx, r4.xyzx

#line 1007
mad r4.xyz, cb2[92].xyzx, r1.wwww, r4.xyzx

#line 1010
mul r7.xyz, r2.wwww, cb2[93].xyzx
mad r4.xyz, r7.xyzx, r1.wwww, r4.xyzx

#line 1011
mul r7.xyz, r2.wwww, cb2[94].xyzx
mad r4.xyz, r7.xyzx, -r3.xxxx, r4.xyzx

#line 1012
mad r2.w, r3.z, l(3.000000), l(-1.000000)
mad r4.xyz, cb2[95].xyzx, r2.wwww, r4.xyzx

#line 1013
mul r7.xyz, r1.wwww, cb2[96].xyzx
mad r3.xzw, r7.xxyz, -r3.xxxx, r4.xxyz  // r3.x <- color.x; r3.z <- color.y; r3.w <- color.z

#line 1014
mad r1.w, r1.w, r1.w, -r3.y
mad r3.xyz, cb2[97].xyzx, r1.wwww, r3.xzwx  // r3.y <- color.y; r3.z <- color.z

#line 1511
mul r3.xyz, r3.xyzx, cb2[102].xxxx  // r3.x <- streams.envLightDiffuseColor_id49.x; r3.y <- streams.envLightDiffuseColor_id49.y; r3.z <- streams.envLightDiffuseColor_id49.z

#line 1512
dp3 r1.w, -r5.xyzx, r1.xyzx
add r1.w, r1.w, r1.w
mad r4.xyz, r1.xyzx, -r1.wwww, -r5.xyzx  // r4.x <- sampleDirection.x; r4.y <- sampleDirection.y; r4.z <- sampleDirection.z

#line 1513
dp3 r5.x, r4.xyzx, cb2[98].xyzx  // r5.x <- sampleDirection.x
dp3 r5.y, r4.xyzx, cb2[99].xyzx  // r5.y <- sampleDirection.y
dp3 r1.w, r4.xyzx, cb2[100].xyzx  // r1.w <- sampleDirection.z

#line 1514
mov r5.z, -r1.w  // r5.z <- sampleDirection.z

#line 1262
mul r1.w, r0.x, cb2[97].w  // r1.w <- mipLevel

#line 1263
sample_l_indexable(texturecube)(float,float,float,float) r5.xyz, r5.xyzx, t10.xyzw, s0, r1.w  // r5.x <- <Compute_id316 return value>.x; r5.y <- <Compute_id316 return value>.y; r5.z <- <Compute_id316 return value>.z

#line 1515
mul r5.xyz, r5.xyzx, cb2[102].xxxx  // r5.x <- streams.envLightSpecularColor_id50.x; r5.y <- streams.envLightSpecularColor_id50.y; r5.z <- streams.envLightSpecularColor_id50.z

#line 1875
mad r2.xyz, r6.xyzx, r3.xyzx, r2.xyzx

#line 1879
mad r2.xyz, r0.yzwy, r5.xyzx, r2.xyzx

#line 1497
dp3 r1.w, r1.xyzx, cb2[112].xyzx  // r1.w <- sampleDirection.x
dp3 r2.w, r1.xyzx, cb2[113].xyzx  // r2.w <- sampleDirection.y
dp3 r1.x, r1.xyzx, cb2[114].xyzx  // r1.x <- sampleDirection.z

#line 975
mul r1.y, r2.w, r2.w  // r1.y <- y2

#line 976
mul r1.z, r1.x, r1.x  // r1.z <- z2

#line 980
mad r3.xyz, cb2[104].xyzx, r2.wwww, cb2[103].xyzx  // r3.x <- color.x; r3.y <- color.y; r3.z <- color.z

#line 981
mad r3.xyz, cb2[105].xyzx, -r1.xxxx, r3.xyzx

#line 982
mad r3.xyz, cb2[106].xyzx, r1.wwww, r3.xyzx

#line 985
mul r5.xyz, r2.wwww, cb2[107].xyzx
mad r3.xyz, r5.xyzx, r1.wwww, r3.xyzx

#line 986
mul r5.xyz, r2.wwww, cb2[108].xyzx
mad r3.xyz, r5.xyzx, -r1.xxxx, r3.xyzx

#line 987
mad r1.z, r1.z, l(3.000000), l(-1.000000)
mad r3.xyz, cb2[109].xyzx, r1.zzzz, r3.xyzx

#line 988
mul r5.xyz, r1.wwww, cb2[110].xyzx
mad r3.xyz, r5.xyzx, -r1.xxxx, r3.xyzx

#line 989
mad r1.x, r1.w, r1.w, -r1.y
mad r1.xyz, cb2[111].xyzx, r1.xxxx, r3.xyzx  // r1.x <- color.x; r1.y <- color.y; r1.z <- color.z

#line 1499
mul r1.xyz, r1.xyzx, cb2[116].xxxx  // r1.x <- streams.envLightDiffuseColor_id49.x; r1.y <- streams.envLightDiffuseColor_id49.y; r1.z <- streams.envLightDiffuseColor_id49.z

#line 1501
dp3 r3.x, r4.xyzx, cb2[112].xyzx  // r3.x <- sampleDirection.x
dp3 r3.y, r4.xyzx, cb2[113].xyzx  // r3.y <- sampleDirection.y
dp3 r1.w, r4.xyzx, cb2[114].xyzx  // r1.w <- sampleDirection.z

#line 1502
mov r3.z, -r1.w  // r3.z <- sampleDirection.z

#line 1247
mul r0.x, r0.x, cb2[111].w  // r0.x <- mipLevel

#line 1248
sample_l_indexable(texturecube)(float,float,float,float) r3.xyz, r3.xyzx, t11.xyzw, s0, r0.x  // r3.x <- <Compute_id336 return value>.x; r3.y <- <Compute_id336 return value>.y; r3.z <- <Compute_id336 return value>.z

#line 1503
mul r3.xyz, r3.xyzx, cb2[116].xxxx  // r3.x <- streams.envLightSpecularColor_id50.x; r3.y <- streams.envLightSpecularColor_id50.y; r3.z <- streams.envLightSpecularColor_id50.z

#line 1887
mad r1.xyz, r6.xyzx, r1.xyzx, r2.xyzx  // r1.x <- environmentLightingContribution.x; r1.y <- environmentLightingContribution.y; r1.z <- environmentLightingContribution.z

#line 1891
mad r0.xyz, r0.yzwy, r3.xyzx, r1.xyzx  // r0.x <- environmentLightingContribution.x; r0.y <- environmentLightingContribution.y; r0.z <- environmentLightingContribution.z

#line 1906
mad o0.xyz, r12.xyzx, l(3.141593, 3.141593, 3.141593, 0.000000), r0.xyzx

#line 2047
utof o1.xyzw, cb0[26].xxxx

#line 2126
mov o0.w, r6.w
ret 
// Approximately 687 instruction slots used
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
const static int TMaxLightCount_id185 = 64;
const static int TMaxLightCount_id188 = 8;
const static int TOrder_id192 = 3;
const static int TOrder_id194 = 3;
const static bool TIsNormalXY1_id252 = true;
const static bool TScaleAndBias_id253 = true;
const static bool TInvert_id289 = true;
const static bool TIsEnergyConservative_id328 = false;
static const float PI_id330 = 3.14159265358979323846;
struct PS_STREAMS 
{
    float4 ScreenPosition_id169;
    float3 meshNormal_id16;
    float4 meshTangent_id18;
    uint InstanceID_id13;
    float4 PositionWS_id22;
    float2 TexCoord_id142;
    float DepthVS_id23;
    float4 ShadingPosition_id0;
    bool IsFrontFace_id1;
    float3x3 tangentToWorld_id20;
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
    float2 Input_2_id213;
    float2 Plus_3_id216;
    float2 Input_5_id221;
    float2 Multiply_6_id224;
    float2 Input_7_id228;
    float2 Plus_8_id231;
    float4 TextureValue_9_id235;
    float4 Input_10_id245;
    float2 Input_13_id255;
    float2 Plus_14_id258;
    float2 Input_16_id263;
    float2 Multiply_17_id266;
    float2 Input_18_id270;
    float2 Plus_19_id273;
    float4 TextureValue_20_id277;
    float Member_21_id282;
    float2 Input_24_id291;
    float2 Plus_25_id294;
    float2 Input_27_id299;
    float2 Multiply_28_id302;
    float2 Input_29_id306;
    float2 Plus_30_id309;
    float4 TextureValue_31_id313;
    float Member_32_id318;
    float3 normalWS_id19;
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
    float4 ScreenPosition_id169 : SCREENPOSITION_ID169_SEM;
    float3 meshNormal_id16 : NORMAL;
    float4 meshTangent_id18 : TANGENT;
    uint InstanceID_id13 : SV_InstanceID;
    float2 TexCoord_id142 : TEXCOORD0;
    bool IsFrontFace_id1 : SV_IsFrontFace;
};
struct VS_STREAMS 
{
    float4 Position_id21;
    uint InstanceID_id13;
    float3 meshNormal_id16;
    float4 meshTangent_id18;
    float2 TexCoord_id142;
    float4 PositionH_id24;
    float3 normalWS_id19;
    float4 PositionWS_id22;
    float4 ShadingPosition_id0;
    float DepthVS_id23;
    float4 ScreenPosition_id169;
};
struct VS_OUTPUT 
{
    float4 PositionWS_id22 : POSITION_WS;
    float4 ShadingPosition_id0 : SV_Position;
    float DepthVS_id23 : DEPTH_VS;
    float4 ScreenPosition_id169 : SCREENPOSITION_ID169_SEM;
    float3 meshNormal_id16 : NORMAL;
    float4 meshTangent_id18 : TANGENT;
    uint InstanceID_id13 : SV_InstanceID;
    float2 TexCoord_id142 : TEXCOORD0;
};
struct VS_INPUT 
{
    float4 Position_id21 : POSITION;
    uint InstanceID_id13 : SV_InstanceID;
    float3 meshNormal_id16 : NORMAL;
    float4 meshTangent_id18 : TANGENT;
    float2 TexCoord_id142 : TEXCOORD0;
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
    float2 InputValue_id214;
    float2 InputValue_id222;
    float2 InputValue_id229;
    float4 InputValue_id246;
    float2 InputValue_id256;
    float2 InputValue_id264;
    float2 InputValue_id271;
    float2 InputValue_id292;
    float2 InputValue_id300;
    float2 InputValue_id307;
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
Texture2D DynamicTexture_id236;
SamplerState DynamicSampler_id237;
Texture2D DynamicTexture_id278;
SamplerState DynamicSampler_id279;
Texture2D DynamicTexture_id314;
SamplerState DynamicSampler_id315;
Texture2D EnvironmentLightingDFG_LUT_id331;
Texture2D ShadowMapTexture_id91;
Texture3D<uint2> LightClusters_id177;
Buffer<uint> LightIndices_id178;
Buffer<float4> PointLights_id182;
Buffer<float4> SpotLights_id183;
TextureCube CubeMap_id197;
TextureCube CubeMap_id208;
float4 Project_id63(float4 vec, float4x4 mat)
{
    float4 vecProjected = mul(vec, mat);
    vecProjected.xyz /= vecProjected.w;
    return vecProjected;
}
float SmoothDistanceAttenuation_id117(float squaredDistance, float lightInvSquareRadius)
{
    float factor = squaredDistance * lightInvSquareRadius;
    float smoothFactor = saturate(1.0f - factor * factor);
    return smoothFactor * smoothFactor;
}
float SmoothDistanceAttenuation_id107(float squaredDistance, float lightInvSquareRadius)
{
    float factor = squaredDistance * lightInvSquareRadius;
    float smoothFactor = saturate(1.0f - factor * factor);
    return smoothFactor * smoothFactor;
}
float SmoothDistanceAttenuation_id96(float squaredDistance, float lightInvSquareRadius)
{
    float factor = squaredDistance * lightInvSquareRadius;
    float smoothFactor = saturate(1.0f - factor * factor);
    return smoothFactor * smoothFactor;
}
float SmoothDistanceAttenuation_id85(float squaredDistance, float lightInvSquareRadius)
{
    float factor = squaredDistance * lightInvSquareRadius;
    float smoothFactor = saturate(1.0f - factor * factor);
    return smoothFactor * smoothFactor;
}
float Get3x3FilterKernel_id73(float2 base_uv, float2 st, out float3 kernel[4])
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
float Get5x5FilterKernel_id72(float2 base_uv, float2 st, out float3 kernel[9])
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
float SampleThickness_id74(float3 shadowSpaceCoordinate, float3 pixelPositionWS, float2 depthRanges, float4x4 inverseWorldToShadowCascadeUV, bool isOrthographic)
{
    const float shadowMapDepth = ShadowMapTexture_id91.SampleLevel(LinearBorderSampler_id125, shadowSpaceCoordinate.xy, 0).r;
    float thickness;
    if (isOrthographic)
    {
        thickness = abs(shadowMapDepth - shadowSpaceCoordinate.z) * depthRanges.y;
    }
    else
    {
        float4 shadowmapPositionWorldSpace = Project_id63(float4(shadowSpaceCoordinate.xy, shadowMapDepth, 1.0), inverseWorldToShadowCascadeUV);
        thickness = distance(shadowmapPositionWorldSpace.xyz, pixelPositionWS.xyz);
    }
    return (thickness);
}
float Get7x7FilterKernel_id70(float2 base_uv, float2 st, out float3 kernel[16])
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
float4 Compute_id507(inout PS_STREAMS streams)
{
    return streams.TextureValue_31_id313;
}
float2 Compute_id503(inout PS_STREAMS streams)
{
    return streams.Plus_30_id309;
}
float2 Compute_id499(inout PS_STREAMS streams)
{
    return streams.Input_29_id306;
}
float2 Compute_id497(inout PS_STREAMS streams)
{
    return streams.Multiply_28_id302;
}
float2 Compute_id491(inout PS_STREAMS streams)
{
    return streams.Input_27_id299;
}
float2 Compute_id489(inout PS_STREAMS streams)
{
    return streams.Plus_25_id294;
}
float2 Compute_id483(inout PS_STREAMS streams)
{
    return streams.Input_24_id291;
}
float2 Compute_id481(inout PS_STREAMS streams)
{
    return streams.TexCoord_id142;
}
float4 Compute_id448(inout PS_STREAMS streams)
{
    return streams.TextureValue_20_id277;
}
float2 Compute_id444(inout PS_STREAMS streams)
{
    return streams.Plus_19_id273;
}
float2 Compute_id440(inout PS_STREAMS streams)
{
    return streams.Input_18_id270;
}
float2 Compute_id438(inout PS_STREAMS streams)
{
    return streams.Multiply_17_id266;
}
float2 Compute_id432(inout PS_STREAMS streams)
{
    return streams.Input_16_id263;
}
float2 Compute_id430(inout PS_STREAMS streams)
{
    return streams.Plus_14_id258;
}
float2 Compute_id424(inout PS_STREAMS streams)
{
    return streams.Input_13_id255;
}
float2 Compute_id422(inout PS_STREAMS streams)
{
    return streams.TexCoord_id142;
}
float2 Compute_id379(inout PS_STREAMS streams)
{
    return streams.Plus_8_id231;
}
float2 Compute_id375(inout PS_STREAMS streams)
{
    return streams.Input_7_id228;
}
float2 Compute_id373(inout PS_STREAMS streams)
{
    return streams.Multiply_6_id224;
}
float2 Compute_id367(inout PS_STREAMS streams)
{
    return streams.Input_5_id221;
}
float2 Compute_id365(inout PS_STREAMS streams)
{
    return streams.Plus_3_id216;
}
float2 Compute_id359(inout PS_STREAMS streams)
{
    return streams.Input_2_id213;
}
float2 Compute_id357(inout PS_STREAMS streams)
{
    return streams.TexCoord_id142;
}
float GetAngularAttenuation_id119(float3 lightVector, float3 lightDirection, float lightAngleScale, float lightAngleOffset)
{
    float cd = dot(lightDirection, lightVector);
    float attenuation = saturate(cd * lightAngleScale + lightAngleOffset);
    attenuation *= attenuation;
    return attenuation;
}
float GetDistanceAttenuation_id118(float lightVectorLength, float lightInvSquareRadius)
{
    float d2 = lightVectorLength * lightVectorLength;
    float attenuation = 1.0 / (max(d2, 0.01 * 0.01));
    attenuation *= SmoothDistanceAttenuation_id117(d2, lightInvSquareRadius);
    return attenuation;
}
float GetDistanceAttenuation_id109(float lightVectorLength, float lightInvSquareRadius)
{
    float d2 = lightVectorLength * lightVectorLength;
    float attenuation = 1.0 / (max(d2, 0.01 * 0.01));
    attenuation *= SmoothDistanceAttenuation_id107(d2, lightInvSquareRadius);
    return attenuation;
}
float GetAngularAttenuation_id98(float3 lightVector, float3 lightDirection, float lightAngleScale, float lightAngleOffset)
{
    float cd = dot(lightDirection, lightVector);
    float attenuation = saturate(cd * lightAngleScale + lightAngleOffset);
    attenuation *= attenuation;
    return attenuation;
}
float GetDistanceAttenuation_id97(float lightVectorLength, float lightInvSquareRadius)
{
    float d2 = lightVectorLength * lightVectorLength;
    float attenuation = 1.0 / (max(d2, 0.01 * 0.01));
    attenuation *= SmoothDistanceAttenuation_id96(d2, lightInvSquareRadius);
    return attenuation;
}
float GetDistanceAttenuation_id87(float lightVectorLength, float lightInvSquareRadius)
{
    float d2 = lightVectorLength * lightVectorLength;
    float attenuation = 1.0 / (max(d2, 0.01 * 0.01));
    attenuation *= SmoothDistanceAttenuation_id85(d2, lightInvSquareRadius);
    return attenuation;
}
float SampleAndFilter_id78(float3 adjustedPixelPositionWS, float3 adjustedPixelPositionShadowSpace, float2 depthRanges, float4x4 inverseWorldToShadowCascadeUV, bool isOrthographic, bool isDualParaboloid = false)
{
    float2 uv = adjustedPixelPositionShadowSpace.xy * ShadowMapTextureSize_id92;
    float2 base_uv = floor(uv + 0.5);
    float2 st = uv + 0.5 - base_uv;
    base_uv *= ShadowMapTextureTexelSize_id93;
    float thickness = 0.0;
    float normalizationFactor = 1.0;

    {
        float3 kernel[16];
        normalizationFactor = Get7x7FilterKernel_id70(base_uv, st, kernel);

        [unroll]
        for (int i = 0; i < 16; ++i)
        {
            thickness += kernel[i].z * SampleThickness_id74(float3(kernel[i].xy, adjustedPixelPositionShadowSpace.z), adjustedPixelPositionWS, depthRanges, inverseWorldToShadowCascadeUV, isOrthographic);
        }
    }
    return (thickness / normalizationFactor);
}
void CalculateAdjustedShadowSpacePixelPosition_id77(float filterRadiusInPixels, float3 pixelPositionWS, float3 meshNormalWS, float4x4 worldToShadowCascadeUV, float4x4 inverseWorldToShadowCascadeUV, out float3 adjustedPixelPositionWS, out float3 adjustedPixelPositionShadowSpace)
{
    float4 bottomLeftTexelWS = Project_id63(float4(0.0, 0.0, 0.0, 1.0), inverseWorldToShadowCascadeUV);
    const float4 topRightTexelWS = Project_id63(float4(ShadowMapTextureTexelSize_id93.xy * filterRadiusInPixels, 0.0, 1.0), inverseWorldToShadowCascadeUV);
    const float texelDiagonalLength = distance(topRightTexelWS.xyz, bottomLeftTexelWS.xyz);
    const float3 positionOffsetWS = meshNormalWS * texelDiagonalLength;
    adjustedPixelPositionWS = pixelPositionWS - positionOffsetWS;
    const float4 shadowMapCoordinate = Project_id63(float4(adjustedPixelPositionWS, 1.0), worldToShadowCascadeUV);
    adjustedPixelPositionShadowSpace = shadowMapCoordinate.xyz;
}
void CalculateAdjustedShadowSpacePixelPositionPerspective_id76(float filterRadiusInPixels, float3 pixelPositionWS, float3 meshNormalWS, float4x4 worldToShadowCascadeUV, float4x4 inverseWorldToShadowCascadeUV, out float3 adjustedPixelPositionWS, out float3 adjustedPixelPositionShadowSpace)
{
    const float4 shadowMapCoordinate = Project_id63(float4(pixelPositionWS, 1.0), worldToShadowCascadeUV);
    const float4 topRightTexelWS = Project_id63(float4(shadowMapCoordinate.xy + ShadowMapTextureTexelSize_id93.xy * filterRadiusInPixels, shadowMapCoordinate.z, 1.0), inverseWorldToShadowCascadeUV);
    const float texelDiagonalLength = distance(topRightTexelWS.xyz, pixelPositionWS);
    const float3 positionOffsetWS = meshNormalWS * texelDiagonalLength;
    adjustedPixelPositionWS = pixelPositionWS - positionOffsetWS;
    const float4 adjustedShadowMapCoordinate = Project_id63(float4(adjustedPixelPositionWS, 1.0), worldToShadowCascadeUV);
    adjustedPixelPositionShadowSpace = adjustedShadowMapCoordinate.xyz;
}
float GetFilterRadiusInPixels_id75()
{

    {
        return 4.5;
    }
}
float SampleTextureAndCompare_id71(float2 position, float positionDepth)
{
    return ShadowMapTexture_id91.SampleCmpLevelZero(LinearClampCompareLessEqualSampler_id126, position, positionDepth);
}
void CalculatePCFKernelParameters_id69(float2 position, out float2 base_uv, out float2 st)
{
    float2 uv = position * ShadowMapTextureSize_id92;
    base_uv = floor(uv + 0.5);
    st = uv + 0.5 - base_uv;
    base_uv -= 0.5;
    base_uv *= ShadowMapTextureTexelSize_id93;
}
float Compute_id510(inout PS_STREAMS streams)
{
    return Compute_id507(streams).r;
}
float4 Compute_id506(inout PS_STREAMS streams)
{
    return DynamicTexture_id314.Sample(DynamicSampler_id315, Compute_id503(streams));
}
float2 Compute_id502(inout PS_STREAMS streams)
{
    return Compute_id497(streams) + Compute_id499(streams);
}
float2 Compute_id495()
{
    return InputValue_id307;
}
float2 Compute_id494(inout PS_STREAMS streams)
{
    return Compute_id489(streams) * Compute_id491(streams);
}
float2 Compute_id487()
{
    return InputValue_id300;
}
float2 Compute_id486(inout PS_STREAMS streams)
{
    return Compute_id481(streams) + Compute_id483(streams);
}
float2 Compute_id479()
{
    return InputValue_id292;
}
float Compute_id451(inout PS_STREAMS streams)
{
    return Compute_id448(streams).r;
}
float4 Compute_id447(inout PS_STREAMS streams)
{
    return DynamicTexture_id278.Sample(DynamicSampler_id279, Compute_id444(streams));
}
float2 Compute_id443(inout PS_STREAMS streams)
{
    return Compute_id438(streams) + Compute_id440(streams);
}
float2 Compute_id436()
{
    return InputValue_id271;
}
float2 Compute_id435(inout PS_STREAMS streams)
{
    return Compute_id430(streams) * Compute_id432(streams);
}
float2 Compute_id428()
{
    return InputValue_id264;
}
float2 Compute_id427(inout PS_STREAMS streams)
{
    return Compute_id422(streams) + Compute_id424(streams);
}
float2 Compute_id420()
{
    return InputValue_id256;
}
float4 Compute_id408()
{
    return InputValue_id246;
}
float4 Compute_id382(inout PS_STREAMS streams)
{
    return DynamicTexture_id236.Sample(DynamicSampler_id237, Compute_id379(streams));
}
float2 Compute_id378(inout PS_STREAMS streams)
{
    return Compute_id373(streams) + Compute_id375(streams);
}
float2 Compute_id371()
{
    return InputValue_id229;
}
float2 Compute_id370(inout PS_STREAMS streams)
{
    return Compute_id365(streams) * Compute_id367(streams);
}
float2 Compute_id363()
{
    return InputValue_id222;
}
float2 Compute_id362(inout PS_STREAMS streams)
{
    return Compute_id357(streams) + Compute_id359(streams);
}
float2 Compute_id355()
{
    return InputValue_id214;
}
float ComputeAttenuation_id120(float3 PositionWS, float3 AngleOffsetAndInvSquareRadius, float3 DirectionWS, float3 position, inout float3 lightVectorNorm)
{
    float3 lightVector = PositionWS - position;
    float lightVectorLength = length(lightVector);
    lightVectorNorm = lightVector / lightVectorLength;
    float3 lightAngleOffsetAndInvSquareRadius = AngleOffsetAndInvSquareRadius;
    float2 lightAngleAndOffset = lightAngleOffsetAndInvSquareRadius.xy;
    float lightInvSquareRadius = lightAngleOffsetAndInvSquareRadius.z;
    float3 lightDirection = -DirectionWS;
    float attenuation = GetDistanceAttenuation_id118(lightVectorLength, lightInvSquareRadius);
    attenuation *= GetAngularAttenuation_id119(lightVectorNorm, lightDirection, lightAngleAndOffset.x, lightAngleAndOffset.y);
    return attenuation;
}
float ComputeAttenuation_id108(PointLightDataInternal light, float3 position, inout float3 lightVectorNorm)
{
    float3 lightVector = light.PositionWS - position;
    float lightVectorLength = length(lightVector);
    lightVectorNorm = lightVector / lightVectorLength;
    float lightInvSquareRadius = light.InvSquareRadius;
    return GetDistanceAttenuation_id109(lightVectorLength, lightInvSquareRadius);
}
float ComputeAttenuation_id99(float3 PositionWS, float3 AngleOffsetAndInvSquareRadius, float3 DirectionWS, float3 position, inout float3 lightVectorNorm)
{
    float3 lightVector = PositionWS - position;
    float lightVectorLength = length(lightVector);
    lightVectorNorm = lightVector / lightVectorLength;
    float3 lightAngleOffsetAndInvSquareRadius = AngleOffsetAndInvSquareRadius;
    float2 lightAngleAndOffset = lightAngleOffsetAndInvSquareRadius.xy;
    float lightInvSquareRadius = lightAngleOffsetAndInvSquareRadius.z;
    float3 lightDirection = -DirectionWS;
    float attenuation = GetDistanceAttenuation_id97(lightVectorLength, lightInvSquareRadius);
    attenuation *= GetAngularAttenuation_id98(lightVectorNorm, lightDirection, lightAngleAndOffset.x, lightAngleAndOffset.y);
    return attenuation;
}
float ComputeAttenuation_id86(PointLightDataInternal light, float3 position, inout float3 lightVectorNorm)
{
    float3 lightVector = light.PositionWS - position;
    float lightVectorLength = length(lightVector);
    lightVectorNorm = lightVector / lightVectorLength;
    float lightInvSquareRadius = light.InvSquareRadius;
    return GetDistanceAttenuation_id87(lightVectorLength, lightInvSquareRadius);
}
float VisibilityhSchlickGGX_id203(float alphaR, float nDotX)
{
    float k = alphaR * 0.5f;
    return nDotX / (nDotX * (1.0f - k) + k);
}
float3 FresnelSchlick_id187(float3 f0, float3 f90, float lOrVDotH)
{
    return f0 + (f90 - f0) * pow((1 - lOrVDotH), 5);
}
float FilterThickness_id65(float3 pixelPositionWS, float3 meshNormalWS, float2 depthRanges, float4x4 worldToShadowCascadeUV, float4x4 inverseWorldToShadowCascadeUV, bool isOrthographic)
{
    float3 adjustedPixelPositionWS;
    float3 adjustedPixelPositionShadowSpace;
    if (isOrthographic)
    {
        CalculateAdjustedShadowSpacePixelPosition_id77(GetFilterRadiusInPixels_id75(), pixelPositionWS, meshNormalWS, worldToShadowCascadeUV, inverseWorldToShadowCascadeUV, adjustedPixelPositionWS, adjustedPixelPositionShadowSpace);
    }
    else
    {
        CalculateAdjustedShadowSpacePixelPositionPerspective_id76(GetFilterRadiusInPixels_id75(), pixelPositionWS, meshNormalWS, worldToShadowCascadeUV, inverseWorldToShadowCascadeUV, adjustedPixelPositionWS, adjustedPixelPositionShadowSpace);
    }
    return SampleAndFilter_id78(adjustedPixelPositionWS, adjustedPixelPositionShadowSpace, depthRanges, inverseWorldToShadowCascadeUV, isOrthographic);
}
float FilterShadow_id64(float2 position, float positionDepth)
{
    float shadow = 0.0f;
    float2 base_uv;
    float2 st;
    CalculatePCFKernelParameters_id69(position, base_uv, st);

    {
        float3 kernel[16];
        float normalizationFactor = Get7x7FilterKernel_id70(base_uv, st, kernel);

        [unroll]
        for (int i = 0; i < 16; ++i)
        {
            shadow += kernel[i].z * SampleTextureAndCompare_id71(kernel[i].xy, positionDepth);
        }
        shadow /= normalizationFactor;
    }
    return shadow;
}
void Compute_id529(inout PS_STREAMS streams)
{
    streams.Member_32_id318 = Compute_id510(streams);
}
void Compute_id527(inout PS_STREAMS streams)
{
    streams.TextureValue_31_id313 = Compute_id506(streams);
}
void Compute_id525(inout PS_STREAMS streams)
{
    streams.Plus_30_id309 = Compute_id502(streams);
}
void Compute_id523(inout PS_STREAMS streams)
{
    streams.Input_29_id306 = Compute_id495();
}
void Compute_id521(inout PS_STREAMS streams)
{
    streams.Multiply_28_id302 = Compute_id494(streams);
}
void Compute_id519(inout PS_STREAMS streams)
{
    streams.Input_27_id299 = Compute_id487();
}
void Compute_id517(inout PS_STREAMS streams)
{
    streams.Plus_25_id294 = Compute_id486(streams);
}
void Compute_id515(inout PS_STREAMS streams)
{
    streams.Input_24_id291 = Compute_id479();
}
void Compute_id513()
{
}
void Compute_id512()
{
}
void Compute_id511()
{
}
void Compute_id470(inout PS_STREAMS streams)
{
    streams.Member_21_id282 = Compute_id451(streams);
}
void Compute_id468(inout PS_STREAMS streams)
{
    streams.TextureValue_20_id277 = Compute_id447(streams);
}
void Compute_id466(inout PS_STREAMS streams)
{
    streams.Plus_19_id273 = Compute_id443(streams);
}
void Compute_id464(inout PS_STREAMS streams)
{
    streams.Input_18_id270 = Compute_id436();
}
void Compute_id462(inout PS_STREAMS streams)
{
    streams.Multiply_17_id266 = Compute_id435(streams);
}
void Compute_id460(inout PS_STREAMS streams)
{
    streams.Input_16_id263 = Compute_id428();
}
void Compute_id458(inout PS_STREAMS streams)
{
    streams.Plus_14_id258 = Compute_id427(streams);
}
void Compute_id456(inout PS_STREAMS streams)
{
    streams.Input_13_id255 = Compute_id420();
}
void Compute_id454()
{
}
void Compute_id453()
{
}
void Compute_id452()
{
}
void Compute_id411(inout PS_STREAMS streams)
{
    streams.Input_10_id245 = Compute_id408();
}
void Compute_id399(inout PS_STREAMS streams)
{
    streams.TextureValue_9_id235 = Compute_id382(streams);
}
void Compute_id397(inout PS_STREAMS streams)
{
    streams.Plus_8_id231 = Compute_id378(streams);
}
void Compute_id395(inout PS_STREAMS streams)
{
    streams.Input_7_id228 = Compute_id371();
}
void Compute_id393(inout PS_STREAMS streams)
{
    streams.Multiply_6_id224 = Compute_id370(streams);
}
void Compute_id391(inout PS_STREAMS streams)
{
    streams.Input_5_id221 = Compute_id363();
}
void Compute_id389(inout PS_STREAMS streams)
{
    streams.Plus_3_id216 = Compute_id362(streams);
}
void Compute_id387(inout PS_STREAMS streams)
{
    streams.Input_2_id213 = Compute_id355();
}
void Compute_id385()
{
}
void Compute_id384()
{
}
void Compute_id383()
{
}
float4 EvaluateSphericalHarmonics_id139(float3 sphericalColors[TOrder_id192 * TOrder_id192], float3 direction)
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
float4 EvaluateSphericalHarmonics_id130(float3 sphericalColors[TOrder_id192 * TOrder_id192], float3 direction)
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
void ProcessLight_id121(inout PS_STREAMS streams, SpotLightDataInternal light)
{
    float3 lightVectorNorm;
    float attenuation = ComputeAttenuation_id120(light.PositionWS, light.AngleOffsetAndInvSquareRadius, light.DirectionWS, streams.PositionWS_id22.xyz, lightVectorNorm);
    streams.lightColor_id45 = light.Color;
    streams.lightAttenuation_id48 = attenuation;
    streams.lightDirectionWS_id44 = lightVectorNorm;
}
void ProcessLight_id110(inout PS_STREAMS streams, PointLightDataInternal light)
{
    float3 lightVectorNorm;
    float attenuation = ComputeAttenuation_id108(light, streams.PositionWS_id22.xyz, lightVectorNorm);
    streams.lightPositionWS_id43 = light.PositionWS;
    streams.lightColor_id45 = light.Color;
    streams.lightAttenuation_id48 = attenuation;
    streams.lightDirectionWS_id44 = lightVectorNorm;
}
void ProcessLight_id100(inout PS_STREAMS streams, SpotLightDataInternal light)
{
    float3 lightVectorNorm;
    float attenuation = ComputeAttenuation_id99(light.PositionWS, light.AngleOffsetAndInvSquareRadius, light.DirectionWS, streams.PositionWS_id22.xyz, lightVectorNorm);
    streams.lightColor_id45 = light.Color;
    streams.lightAttenuation_id48 = attenuation;
    streams.lightDirectionWS_id44 = lightVectorNorm;
}
void ProcessLight_id89(inout PS_STREAMS streams, PointLightDataInternal light)
{
    float3 lightVectorNorm;
    float attenuation = ComputeAttenuation_id86(light, streams.PositionWS_id22.xyz, lightVectorNorm);
    streams.lightPositionWS_id43 = light.PositionWS;
    streams.lightColor_id45 = light.Color;
    streams.lightAttenuation_id48 = attenuation;
    streams.lightDirectionWS_id44 = lightVectorNorm;
}
float NormalDistributionGGX_id217(float alphaR, float nDotH)
{
    float alphaR2 = alphaR * alphaR;
    float d = max(nDotH * nDotH * (alphaR2 - 1) + 1, 0.0001);
    return alphaR2 / (PI_id330 * d * d);
}
float VisibilitySmithSchlickGGX_id205(float alphaR, float nDotL, float nDotV)
{
    return VisibilityhSchlickGGX_id203(alphaR, nDotL) * VisibilityhSchlickGGX_id203(alphaR, nDotV) / (nDotL * nDotV);
}
float3 FresnelSchlick_id193(float3 f0, float lOrVDotH)
{
    return FresnelSchlick_id187(f0, 1.0f, lOrVDotH);
}
float ComputeThicknessFromCascade_id68(float3 pixelPositionWS, float3 meshNormalWS, int cascadeIndex, int lightIndex, bool isOrthographic)
{
    const int arrayIndex = cascadeIndex + lightIndex * TCascadeCountBase_id153;
    return FilterThickness_id65(pixelPositionWS, meshNormalWS, DepthRanges_id158[arrayIndex], WorldToShadowCascadeUV_id155[arrayIndex], InverseWorldToShadowCascadeUV_id156[arrayIndex], isOrthographic);
}
float ComputeShadowFromCascade_id67(float3 shadowPositionWS, int cascadeIndex, int lightIndex)
{
    float4 shadowPosition = mul(float4(shadowPositionWS, 1.0), WorldToShadowCascadeUV_id155[cascadeIndex + lightIndex * TCascadeCountBase_id153]);
    shadowPosition.z -= DepthBiases_id159[lightIndex];
    shadowPosition.xyz /= shadowPosition.w;
    return FilterShadow_id64(shadowPosition.xy, shadowPosition.z);
}
float3 GetShadowPositionOffset_id66(float offsetScale, float nDotL, float3 normal)
{
    float normalOffsetScale = saturate(1.0f - nDotL);
    return 2.0f * ShadowMapTextureTexelSize_id93.x * offsetScale * normalOffsetScale * normal;
}
float Compute_id532(inout PS_STREAMS streams)
{
    return streams.Member_32_id318;
}
void Compute_id531(inout PS_STREAMS streams)
{

    {
        Compute_id511();
    }

    {
        Compute_id512();
    }

    {
        Compute_id513();
    }

    {
        Compute_id515(streams);
    }

    {
        Compute_id517(streams);
    }

    {
        Compute_id519(streams);
    }

    {
        Compute_id521(streams);
    }

    {
        Compute_id523(streams);
    }

    {
        Compute_id525(streams);
    }

    {
        Compute_id527(streams);
    }

    {
        Compute_id529(streams);
    }
}
float Compute_id473(inout PS_STREAMS streams)
{
    return streams.Member_21_id282;
}
void Compute_id472(inout PS_STREAMS streams)
{

    {
        Compute_id452();
    }

    {
        Compute_id453();
    }

    {
        Compute_id454();
    }

    {
        Compute_id456(streams);
    }

    {
        Compute_id458(streams);
    }

    {
        Compute_id460(streams);
    }

    {
        Compute_id462(streams);
    }

    {
        Compute_id464(streams);
    }

    {
        Compute_id466(streams);
    }

    {
        Compute_id468(streams);
    }

    {
        Compute_id470(streams);
    }
}
float4 Compute_id414(inout PS_STREAMS streams)
{
    return streams.Input_10_id245;
}
void Compute_id413(inout PS_STREAMS streams)
{

    {
        Compute_id411(streams);
    }
}
float4 Compute_id402(inout PS_STREAMS streams)
{
    return streams.TextureValue_9_id235;
}
void Compute_id401(inout PS_STREAMS streams)
{

    {
        Compute_id383();
    }

    {
        Compute_id384();
    }

    {
        Compute_id385();
    }

    {
        Compute_id387(streams);
    }

    {
        Compute_id389(streams);
    }

    {
        Compute_id391(streams);
    }

    {
        Compute_id393(streams);
    }

    {
        Compute_id395(streams);
    }

    {
        Compute_id397(streams);
    }

    {
        Compute_id399(streams);
    }
}
float4 Compute_id336(inout PS_STREAMS streams, float3 direction)
{
    float alpha = streams.alphaRoughness_id72;
    float mipLevel = sqrt(alpha) * MipCount_id207;
    return CubeMap_id208.SampleLevel(LinearSampler_id124, direction, mipLevel);
}
float4 Compute_id331(float3 direction)
{
    return EvaluateSphericalHarmonics_id139(SphericalColors_id206, direction);
}
void PrepareEnvironmentLight_id143(inout PS_STREAMS streams)
{
    streams.envLightDiffuseColor_id49 = 0;
    streams.envLightSpecularColor_id50 = 0;
}
float4 Compute_id316(inout PS_STREAMS streams, float3 direction)
{
    float alpha = streams.alphaRoughness_id72;
    float mipLevel = sqrt(alpha) * MipCount_id196;
    return CubeMap_id197.SampleLevel(LinearSampler_id124, direction, mipLevel);
}
float4 Compute_id311(float3 direction)
{
    return EvaluateSphericalHarmonics_id130(SphericalColors_id195, direction);
}
void PrepareEnvironmentLight_id134(inout PS_STREAMS streams)
{
    streams.envLightDiffuseColor_id49 = 0;
    streams.envLightSpecularColor_id50 = 0;
}
float3 Compute_id538(float3 specularColor, float alphaR, float nDotV)
{
    float glossiness = 1.0f - sqrt(alphaR);
    float4 environmentLightingDFG = EnvironmentLightingDFG_LUT_id331.SampleLevel(LinearSampler_id124, float2(glossiness, nDotV), 0);
    return specularColor * environmentLightingDFG.r + environmentLightingDFG.g;
}
void PrepareEnvironmentLight_id125(inout PS_STREAMS streams)
{
    streams.envLightDiffuseColor_id49 = 0;
    streams.envLightSpecularColor_id50 = 0;
}
float3 ComputeSpecularTextureProjection_id116(float3 positionWS, float3 reflectionWS, int lightIndex)
{
    return 1.0f;
}
float3 ComputeTextureProjection_id115(float3 positionWS, int lightIndex)
{
    return 1.0f;
}
float3 ComputeShadow_id114(inout PS_STREAMS streams, float3 position, int lightIndex)
{
    streams.thicknessWS_id87 = 0.0;
    return 1.0f;
}
void PrepareDirectLightCore_id113(inout PS_STREAMS streams, int lightIndex)
{
    SpotLightDataInternal data;
    data.PositionWS = Lights_id189[lightIndex].PositionWS;
    data.DirectionWS = Lights_id189[lightIndex].DirectionWS;
    data.AngleOffsetAndInvSquareRadius = Lights_id189[lightIndex].AngleOffsetAndInvSquareRadius;
    data.Color = Lights_id189[lightIndex].Color;
    ProcessLight_id121(streams, data);
}
float3 ComputeSpecularTextureProjection_id106(float3 positionWS, float3 reflectionWS, int lightIndex)
{
    return 1.0f;
}
float3 ComputeTextureProjection_id105(float3 positionWS, int lightIndex)
{
    return 1.0f;
}
float3 ComputeShadow_id104(inout PS_STREAMS streams, float3 position, int lightIndex)
{
    streams.thicknessWS_id87 = 0.0;
    return 1.0f;
}
void PrepareDirectLightCore_id103(inout PS_STREAMS streams, int lightIndex)
{
    PointLightDataInternal data;
    data.PositionWS = Lights_id186[lightIndex].PositionWS;
    data.InvSquareRadius = Lights_id186[lightIndex].InvSquareRadius;
    data.Color = Lights_id186[lightIndex].Color;
    ProcessLight_id110(streams, data);
}
float3 ComputeSpecularTextureProjection_id95(float3 positionWS, float3 reflectionWS, int lightIndex)
{
    return 1.0f;
}
float3 ComputeTextureProjection_id94(float3 positionWS, int lightIndex)
{
    return 1.0f;
}
float3 ComputeShadow_id93(inout PS_STREAMS streams, float3 position, int lightIndex)
{
    streams.thicknessWS_id87 = 0.0;
    return 1.0f;
}
void PrepareDirectLightCore_id92(inout PS_STREAMS streams, int lightIndexIgnored)
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
    ProcessLight_id100(streams, spotLight);
}
float3 ComputeSpecularTextureProjection_id84(float3 positionWS, float3 reflectionWS, int lightIndex)
{
    return 1.0f;
}
float3 ComputeTextureProjection_id83(float3 positionWS, int lightIndex)
{
    return 1.0f;
}
float3 ComputeShadow_id82(inout PS_STREAMS streams, float3 position, int lightIndex)
{
    streams.thicknessWS_id87 = 0.0;
    return 1.0f;
}
void PrepareDirectLightCore_id81(inout PS_STREAMS streams, int lightIndexIgnored)
{
    int realLightIndex = LightIndices_id178.Load(streams.lightIndex_id176);
    streams.lightIndex_id176++;
    PointLightDataInternal pointLight;
    float4 pointLight1 = PointLights_id182.Load(realLightIndex * 2);
    float4 pointLight2 = PointLights_id182.Load(realLightIndex * 2 + 1);
    pointLight.PositionWS = pointLight1.xyz;
    pointLight.InvSquareRadius = pointLight1.w;
    pointLight.Color = pointLight2.xyz;
    ProcessLight_id89(streams, pointLight);
}
void PrepareLightData_id88(inout PS_STREAMS streams)
{
    float projectedDepth = streams.ShadingPosition_id0.z;
    float depth = ZProjection_id172.y / (projectedDepth - ZProjection_id172.x);
    float2 texCoord = float2(streams.ScreenPosition_id169.x + 1, 1 - streams.ScreenPosition_id169.y) * 0.5;
    int slice = int(max(log2(depth * ClusterDepthScale_id179 + ClusterDepthBias_id180), 0));
    streams.lightData_id175 = LightClusters_id177.Load(int4(texCoord * ClusterStride_id181, slice, 0));
    streams.lightIndex_id176 = streams.lightData_id175.x;
}
float Compute_id630(inout PS_STREAMS streams)
{
    return NormalDistributionGGX_id217(streams.alphaRoughness_id72, streams.NdotH_id78);
}
float Compute_id600(inout PS_STREAMS streams)
{
    return VisibilitySmithSchlickGGX_id205(streams.alphaRoughness_id72, streams.NdotL_id51, streams.NdotV_id74);
}
float3 Compute_id570(inout PS_STREAMS streams, float3 f0)
{
    return FresnelSchlick_id193(f0, streams.LdotH_id79);
}
float3 ComputeSpecularTextureProjection_id60(float3 positionWS, float3 reflectionWS, int lightIndex)
{
    return 1.0f;
}
float3 ComputeTextureProjection_id59(float3 positionWS, int lightIndex)
{
    return 1.0f;
}
float3 ComputeShadow_id58(inout PS_STREAMS streams, float3 position, int lightIndex)
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
    shadowPosition += GetShadowPositionOffset_id66(OffsetScales_id160[lightIndex], streams.NdotL_id51, streams.normalWS_id19);
    if (cascadeIndex < TCascadeCount_id161)
    {
        shadow = ComputeShadowFromCascade_id67(shadowPosition, cascadeIndex, lightIndex);
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
                float nextShadow = ComputeShadowFromCascade_id67(shadowPosition, cascadeIndex + 1, lightIndex);
                shadow = lerp(nextShadow, shadow, lerpAmt);
            }
        }
    }
    streams.thicknessWS_id87 = tempThickness;
    return shadow;
}
void PrepareDirectLightCore_id57(inout PS_STREAMS streams, int lightIndex)
{
    streams.lightColor_id45 = Lights_id90[lightIndex].Color;
    streams.lightDirectionWS_id44 = -Lights_id90[lightIndex].DirectionWS;
}
float Compute_id535(inout PS_STREAMS streams)
{
    Compute_id531(streams);
    return Compute_id532(streams);
}
float Compute_id476(inout PS_STREAMS streams)
{
    Compute_id472(streams);
    return Compute_id473(streams);
}
float4 Compute_id417(inout PS_STREAMS streams)
{
    Compute_id413(streams);
    return Compute_id414(streams);
}
float4 Compute_id405(inout PS_STREAMS streams)
{
    Compute_id401(streams);
    return Compute_id402(streams);
}
void ResetStream_id220()
{
}
void AfterLightingAndShading_id687()
{
}
void AfterLightingAndShading_id668()
{
}
void PrepareEnvironmentLight_id354(inout PS_STREAMS streams)
{
    streams.envLightDiffuseColor_id49 = 0;
    streams.envLightSpecularColor_id50 = 0;
}
void PrepareEnvironmentLight_id351(inout PS_STREAMS streams)
{
    PrepareEnvironmentLight_id143(streams);
    float ambientAccessibility = streams.matAmbientOcclusion_id59;
    float3 sampleDirection = mul(streams.normalWS_id19, (float3x3)SkyMatrix_id209);
    sampleDirection = float3(sampleDirection.xy, -sampleDirection.z);
    streams.envLightDiffuseColor_id49 = Compute_id331(sampleDirection).rgb * Intensity_id210 * ambientAccessibility * streams.matDiffuseSpecularAlphaBlend_id67.x;
    sampleDirection = reflect(-streams.viewWS_id70, streams.normalWS_id19);
    sampleDirection = mul(sampleDirection, (float3x3)SkyMatrix_id209);
    sampleDirection = float3(sampleDirection.xy, -sampleDirection.z);
    streams.envLightSpecularColor_id50 = Compute_id336(streams, sampleDirection).rgb * Intensity_id210 * ambientAccessibility * streams.matDiffuseSpecularAlphaBlend_id67.y;
}
void PrepareEnvironmentLight_id346(inout PS_STREAMS streams)
{
    PrepareEnvironmentLight_id134(streams);
    float ambientAccessibility = streams.matAmbientOcclusion_id59;
    float3 sampleDirection = mul(streams.normalWS_id19, (float3x3)SkyMatrix_id198);
    sampleDirection = float3(sampleDirection.xy, -sampleDirection.z);
    streams.envLightDiffuseColor_id49 = Compute_id311(sampleDirection).rgb * Intensity_id199 * ambientAccessibility * streams.matDiffuseSpecularAlphaBlend_id67.x;
    sampleDirection = reflect(-streams.viewWS_id70, streams.normalWS_id19);
    sampleDirection = mul(sampleDirection, (float3x3)SkyMatrix_id198);
    sampleDirection = float3(sampleDirection.xy, -sampleDirection.z);
    streams.envLightSpecularColor_id50 = Compute_id316(streams, sampleDirection).rgb * Intensity_id199 * ambientAccessibility * streams.matDiffuseSpecularAlphaBlend_id67.y;
}
float3 ComputeEnvironmentLightContribution_id717(inout PS_STREAMS streams)
{
    float3 specularColor = streams.matSpecularVisible_id73;
    return Compute_id538(specularColor, streams.alphaRoughness_id72, streams.NdotV_id74) * streams.envLightSpecularColor_id50;
}
float3 ComputeEnvironmentLightContribution_id661(inout PS_STREAMS streams)
{
    float3 diffuseColor = streams.matDiffuseVisible_id71;
    return diffuseColor * streams.envLightDiffuseColor_id49;
}
void PrepareEnvironmentLight_id341(inout PS_STREAMS streams)
{
    PrepareEnvironmentLight_id125(streams);
    float3 lightColor = AmbientLight_id190 * streams.matAmbientOcclusion_id59;
    streams.envLightDiffuseColor_id49 = lightColor;
    streams.envLightSpecularColor_id50 = lightColor;
}
void PrepareDirectLight_id292(inout PS_STREAMS streams, int lightIndex)
{
    PrepareDirectLightCore_id113(streams, lightIndex);
    streams.NdotL_id51 = max(dot(streams.normalWS_id19, streams.lightDirectionWS_id44), 0.0001f);
    streams.shadowColor_id86 = ComputeShadow_id114(streams, streams.PositionWS_id22.xyz, lightIndex);
    streams.lightColorNdotL_id46 = streams.lightColor_id45 * streams.lightAttenuation_id48 * streams.shadowColor_id86 * streams.NdotL_id51 * streams.lightDirectAmbientOcclusion_id52;
    streams.lightSpecularColorNdotL_id47 = streams.lightColorNdotL_id46;
    streams.lightColorNdotL_id46 *= ComputeTextureProjection_id115(streams.PositionWS_id22.xyz, lightIndex);
    float3 reflectionVectorWS = reflect(-streams.viewWS_id70, streams.normalWS_id19);
    streams.lightSpecularColorNdotL_id47 *= ComputeSpecularTextureProjection_id116(streams.PositionWS_id22.xyz, reflectionVectorWS, lightIndex);
}
int GetLightCount_id294()
{
    return LightCount_id187;
}
int GetMaxLightCount_id295()
{
    return TMaxLightCount_id188;
}
void PrepareDirectLights_id290()
{
}
void PrepareDirectLight_id279(inout PS_STREAMS streams, int lightIndex)
{
    PrepareDirectLightCore_id103(streams, lightIndex);
    streams.NdotL_id51 = max(dot(streams.normalWS_id19, streams.lightDirectionWS_id44), 0.0001f);
    streams.shadowColor_id86 = ComputeShadow_id104(streams, streams.PositionWS_id22.xyz, lightIndex);
    streams.lightColorNdotL_id46 = streams.lightColor_id45 * streams.lightAttenuation_id48 * streams.shadowColor_id86 * streams.NdotL_id51 * streams.lightDirectAmbientOcclusion_id52;
    streams.lightSpecularColorNdotL_id47 = streams.lightColorNdotL_id46;
    streams.lightColorNdotL_id46 *= ComputeTextureProjection_id105(streams.PositionWS_id22.xyz, lightIndex);
    float3 reflectionVectorWS = reflect(-streams.viewWS_id70, streams.normalWS_id19);
    streams.lightSpecularColorNdotL_id47 *= ComputeSpecularTextureProjection_id106(streams.PositionWS_id22.xyz, reflectionVectorWS, lightIndex);
}
int GetLightCount_id281()
{
    return LightCount_id184;
}
int GetMaxLightCount_id283()
{
    return TMaxLightCount_id185;
}
void PrepareDirectLights_id277()
{
}
void PrepareDirectLight_id267(inout PS_STREAMS streams, int lightIndex)
{
    PrepareDirectLightCore_id92(streams, lightIndex);
    streams.NdotL_id51 = max(dot(streams.normalWS_id19, streams.lightDirectionWS_id44), 0.0001f);
    streams.shadowColor_id86 = ComputeShadow_id93(streams, streams.PositionWS_id22.xyz, lightIndex);
    streams.lightColorNdotL_id46 = streams.lightColor_id45 * streams.lightAttenuation_id48 * streams.shadowColor_id86 * streams.NdotL_id51 * streams.lightDirectAmbientOcclusion_id52;
    streams.lightSpecularColorNdotL_id47 = streams.lightColorNdotL_id46;
    streams.lightColorNdotL_id46 *= ComputeTextureProjection_id94(streams.PositionWS_id22.xyz, lightIndex);
    float3 reflectionVectorWS = reflect(-streams.viewWS_id70, streams.normalWS_id19);
    streams.lightSpecularColorNdotL_id47 *= ComputeSpecularTextureProjection_id95(streams.PositionWS_id22.xyz, reflectionVectorWS, lightIndex);
}
int GetLightCount_id271(inout PS_STREAMS streams)
{
    return streams.lightData_id175.y >> 16;
}
int GetMaxLightCount_id270(inout PS_STREAMS streams)
{
    return streams.lightData_id175.y >> 16;
}
void PrepareDirectLights_id265()
{
}
void PrepareDirectLight_id254(inout PS_STREAMS streams, int lightIndex)
{
    PrepareDirectLightCore_id81(streams, lightIndex);
    streams.NdotL_id51 = max(dot(streams.normalWS_id19, streams.lightDirectionWS_id44), 0.0001f);
    streams.shadowColor_id86 = ComputeShadow_id82(streams, streams.PositionWS_id22.xyz, lightIndex);
    streams.lightColorNdotL_id46 = streams.lightColor_id45 * streams.lightAttenuation_id48 * streams.shadowColor_id86 * streams.NdotL_id51 * streams.lightDirectAmbientOcclusion_id52;
    streams.lightSpecularColorNdotL_id47 = streams.lightColorNdotL_id46;
    streams.lightColorNdotL_id46 *= ComputeTextureProjection_id83(streams.PositionWS_id22.xyz, lightIndex);
    float3 reflectionVectorWS = reflect(-streams.viewWS_id70, streams.normalWS_id19);
    streams.lightSpecularColorNdotL_id47 *= ComputeSpecularTextureProjection_id84(streams.PositionWS_id22.xyz, reflectionVectorWS, lightIndex);
}
int GetLightCount_id259(inout PS_STREAMS streams)
{
    return streams.lightData_id175.y & 0xFFFF;
}
int GetMaxLightCount_id258(inout PS_STREAMS streams)
{
    return streams.lightData_id175.y & 0xFFFF;
}
void PrepareDirectLights_id257(inout PS_STREAMS streams)
{
    PrepareLightData_id88(streams);
}
float3 ComputeDirectLightContribution_id716(inout PS_STREAMS streams)
{
    float3 specularColor = streams.matSpecularVisible_id73;
    float3 fresnel = Compute_id570(streams, specularColor);
    float geometricShadowing = Compute_id600(streams);
    float normalDistribution = Compute_id630(streams);
    float3 reflected = fresnel * geometricShadowing * normalDistribution / 4;
    return reflected * streams.lightSpecularColorNdotL_id47 * streams.matDiffuseSpecularAlphaBlend_id67.y;
}
float3 ComputeDirectLightContribution_id660(inout PS_STREAMS streams)
{
    float3 diffuseColor = streams.matDiffuseVisible_id71;
    return diffuseColor / PI_id330 * streams.lightColorNdotL_id46 * streams.matDiffuseSpecularAlphaBlend_id67.x;
}
void PrepareMaterialPerDirectLight_id32(inout PS_STREAMS streams)
{
    streams.H_id77 = normalize(streams.viewWS_id70 + streams.lightDirectionWS_id44);
    streams.NdotH_id78 = saturate(dot(streams.normalWS_id19, streams.H_id77));
    streams.LdotH_id79 = saturate(dot(streams.lightDirectionWS_id44, streams.H_id77));
    streams.VdotH_id80 = streams.LdotH_id79;
}
void PrepareDirectLight_id230(inout PS_STREAMS streams, int lightIndex)
{
    PrepareDirectLightCore_id57(streams, lightIndex);
    streams.NdotL_id51 = max(dot(streams.normalWS_id19, streams.lightDirectionWS_id44), 0.0001f);
    streams.shadowColor_id86 = ComputeShadow_id58(streams, streams.PositionWS_id22.xyz, lightIndex);
    streams.lightColorNdotL_id46 = streams.lightColor_id45 * streams.lightAttenuation_id48 * streams.shadowColor_id86 * streams.NdotL_id51 * streams.lightDirectAmbientOcclusion_id52;
    streams.lightSpecularColorNdotL_id47 = streams.lightColorNdotL_id46;
    streams.lightColorNdotL_id46 *= ComputeTextureProjection_id59(streams.PositionWS_id22.xyz, lightIndex);
    float3 reflectionVectorWS = reflect(-streams.viewWS_id70, streams.normalWS_id19);
    streams.lightSpecularColorNdotL_id47 *= ComputeSpecularTextureProjection_id60(streams.PositionWS_id22.xyz, reflectionVectorWS, lightIndex);
}
int GetLightCount_id232()
{
    return LightCount_id88;
}
int GetMaxLightCount_id233()
{
    return TMaxLightCount_id89;
}
void PrepareDirectLights_id228()
{
}
void PrepareForLightingAndShading_id684()
{
}
void PrepareForLightingAndShading_id665()
{
}
void PrepareMaterialForLightingAndShading_id219(inout PS_STREAMS streams)
{
    streams.lightDirectAmbientOcclusion_id52 = lerp(1.0, streams.matAmbientOcclusion_id59, streams.matAmbientOcclusionDirectLightingFactor_id60);
    streams.matDiffuseVisible_id71 = streams.matDiffuse_id55.rgb * lerp(1.0f, streams.matCavity_id61, streams.matCavityDiffuse_id62) * streams.matDiffuseSpecularAlphaBlend_id67.r * streams.matAlphaBlendColor_id68;
    streams.matSpecularVisible_id73 = streams.matSpecular_id57.rgb * streams.matSpecularIntensity_id58 * lerp(1.0f, streams.matCavity_id61, streams.matCavitySpecular_id63) * streams.matDiffuseSpecularAlphaBlend_id67.g * streams.matAlphaBlendColor_id68;
    streams.NdotV_id74 = max(dot(streams.normalWS_id19, streams.viewWS_id70), 0.0001f);
    float roughness = 1.0f - streams.matGlossiness_id56;
    streams.alphaRoughness_id72 = max(roughness * roughness, 0.001);
}
void ResetLightStream_id218(inout PS_STREAMS streams)
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
void UpdateNormalFromTangentSpace_id21(inout PS_STREAMS streams, float3 normalInTangentSpace)
{
    streams.normalWS_id19 = normalize(mul(normalInTangentSpace, streams.tangentToWorld_id20));
}
float4 Compute_id537(inout PS_STREAMS streams)
{
    float x = Compute_id535(streams);
    return float4(x, x, x, x);
}
float4 Compute_id478(inout PS_STREAMS streams)
{
    float x = Compute_id476(streams);
    return float4(x, x, x, x);
}
float4 Compute_id419(inout PS_STREAMS streams)
{
    return Compute_id417(streams);
}
float4 Compute_id407(inout PS_STREAMS streams)
{
    return Compute_id405(streams);
}
void ResetStream_id221(inout PS_STREAMS streams)
{
    ResetStream_id220();
    streams.matBlend_id42 = 0.0f;
}
void Compute_id753(inout PS_STREAMS streams)
{
    UpdateNormalFromTangentSpace_id21(streams, streams.matNormal_id53);
    if (!streams.IsFrontFace_id1)
        streams.normalWS_id19 = -streams.normalWS_id19;
    ResetLightStream_id218(streams);
    PrepareMaterialForLightingAndShading_id219(streams);

    {
        PrepareForLightingAndShading_id665();
    }

    {
        PrepareForLightingAndShading_id684();
    }
    float3 directLightingContribution = 0;

    {
        PrepareDirectLights_id228();
        const int maxLightCount = GetMaxLightCount_id233();
        int count = GetLightCount_id232();

        for (int i = 0; i < maxLightCount; i++)
        {
            if (i >= count)
            {
                break;
            }
            PrepareDirectLight_id230(streams, i);
            PrepareMaterialPerDirectLight_id32(streams);

            {
                directLightingContribution += ComputeDirectLightContribution_id660(streams);
            }

            {
                directLightingContribution += ComputeDirectLightContribution_id716(streams);
            }
        }
    }

    {
        PrepareDirectLights_id257(streams);
        const int maxLightCount = GetMaxLightCount_id258(streams);
        int count = GetLightCount_id259(streams);

        for (int i = 0; i < maxLightCount; i++)
        {
            if (i >= count)
            {
                break;
            }
            PrepareDirectLight_id254(streams, i);
            PrepareMaterialPerDirectLight_id32(streams);

            {
                directLightingContribution += ComputeDirectLightContribution_id660(streams);
            }

            {
                directLightingContribution += ComputeDirectLightContribution_id716(streams);
            }
        }
    }

    {
        PrepareDirectLights_id265();
        const int maxLightCount = GetMaxLightCount_id270(streams);
        int count = GetLightCount_id271(streams);

        for (int i = 0; i < maxLightCount; i++)
        {
            if (i >= count)
            {
                break;
            }
            PrepareDirectLight_id267(streams, i);
            PrepareMaterialPerDirectLight_id32(streams);

            {
                directLightingContribution += ComputeDirectLightContribution_id660(streams);
            }

            {
                directLightingContribution += ComputeDirectLightContribution_id716(streams);
            }
        }
    }

    {
        PrepareDirectLights_id277();
        const int maxLightCount = GetMaxLightCount_id283();
        int count = GetLightCount_id281();

        for (int i = 0; i < maxLightCount; i++)
        {
            if (i >= count)
            {
                break;
            }
            PrepareDirectLight_id279(streams, i);
            PrepareMaterialPerDirectLight_id32(streams);

            {
                directLightingContribution += ComputeDirectLightContribution_id660(streams);
            }

            {
                directLightingContribution += ComputeDirectLightContribution_id716(streams);
            }
        }
    }

    {
        PrepareDirectLights_id290();
        const int maxLightCount = GetMaxLightCount_id295();
        int count = GetLightCount_id294();

        for (int i = 0; i < maxLightCount; i++)
        {
            if (i >= count)
            {
                break;
            }
            PrepareDirectLight_id292(streams, i);
            PrepareMaterialPerDirectLight_id32(streams);

            {
                directLightingContribution += ComputeDirectLightContribution_id660(streams);
            }

            {
                directLightingContribution += ComputeDirectLightContribution_id716(streams);
            }
        }
    }
    float3 environmentLightingContribution = 0;

    {
        PrepareEnvironmentLight_id341(streams);

        {
            environmentLightingContribution += ComputeEnvironmentLightContribution_id661(streams);
        }

        {
            environmentLightingContribution += ComputeEnvironmentLightContribution_id717(streams);
        }
    }

    {
        PrepareEnvironmentLight_id346(streams);

        {
            environmentLightingContribution += ComputeEnvironmentLightContribution_id661(streams);
        }

        {
            environmentLightingContribution += ComputeEnvironmentLightContribution_id717(streams);
        }
    }

    {
        PrepareEnvironmentLight_id351(streams);

        {
            environmentLightingContribution += ComputeEnvironmentLightContribution_id661(streams);
        }

        {
            environmentLightingContribution += ComputeEnvironmentLightContribution_id717(streams);
        }
    }

    {
        PrepareEnvironmentLight_id354(streams);

        {
            environmentLightingContribution += ComputeEnvironmentLightContribution_id661(streams);
        }

        {
            environmentLightingContribution += ComputeEnvironmentLightContribution_id717(streams);
        }
    }
    streams.shadingColor_id75 += directLightingContribution * PI_id330 + environmentLightingContribution;
    streams.shadingColorAlpha_id76 = streams.matDiffuse_id55.a;

    {
        AfterLightingAndShading_id668();
    }

    {
        AfterLightingAndShading_id687();
    }
}
void Compute_id737(inout PS_STREAMS streams)
{
    float metalness = Compute_id537(streams).r;
    streams.matSpecular_id57 = lerp(0.02, streams.matDiffuse_id55.rgb, metalness);
    streams.matDiffuse_id55.rgb = lerp(streams.matDiffuse_id55.rgb, 0, metalness);
}
void Compute_id732(inout PS_STREAMS streams)
{
    float glossiness = Compute_id478(streams).r;

    {
        glossiness = 1.0 - glossiness;
    }
    streams.matGlossiness_id56 = glossiness;
}
void Compute_id727(inout PS_STREAMS streams)
{
    float4 normal = Compute_id419(streams);

    {
        normal = (2.0f * normal) - 1.0f;
    }

    {
        normal.z = sqrt(max(0, 1.0f - (normal.x * normal.x + normal.y * normal.y)));
    }
    streams.matNormal_id53 = normal.xyz;
}
void Compute_id722(inout PS_STREAMS streams)
{
    float4 colorBase = Compute_id407(streams);
    streams.matDiffuse_id55 = colorBase;
    streams.matColorBase_id54 = colorBase;
}
void ResetStream_id222(inout PS_STREAMS streams)
{
    ResetStream_id221(streams);
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
float4x4 GetInstanceWorldInverse_id14(uint instanceId)
{
    return mul(WorldInverse_id33, InstanceWorldInverse_id41[instanceId].Matrix);
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
void Compute_id54(inout PS_STREAMS streams)
{

    {
        Compute_id722(streams);
    }

    {
        Compute_id727(streams);
    }

    {
        Compute_id732(streams);
    }

    {
        Compute_id737(streams);
    }

    {
        Compute_id753(streams);
    }
}
void ResetStream_id53(inout PS_STREAMS streams)
{
    ResetStream_id222(streams);
    streams.shadingColorAlpha_id76 = 1.0f;
}
float3x3 GetTangentWorldTransform_id25(inout PS_STREAMS streams)
{
    return transpose((float3x3)GetInstanceWorldInverse_id14(streams.InstanceID_id13));
}
float3x3 GetTangentMatrix_id18(inout PS_STREAMS streams)
{
    float3x3 tangentMatrix;
    streams.meshNormal_id16 = normalize(streams.meshNormal_id16);
    float3 tangent = normalize(streams.meshTangent_id18.xyz);
    float3 bitangent = streams.meshTangent_id18.w * cross(streams.meshNormal_id16, tangent);
    tangentMatrix = float3x3(tangent, bitangent, streams.meshNormal_id16);
    return tangentMatrix;
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
float4 Compute_id52()
{
    return MaterialIndex_id85;
}
float4 Shading_id33(inout PS_STREAMS streams)
{
    streams.viewWS_id70 = normalize(Eye_id31.xyz - streams.PositionWS_id22.xyz);
    streams.shadingColor_id75 = 0;
    ResetStream_id53(streams);
    Compute_id54(streams);
    return float4(streams.shadingColor_id75, streams.shadingColorAlpha_id76);
}
void PSMain_id1()
{
}
void UpdateTangentToWorld_id20(inout PS_STREAMS streams)
{
    float3x3 tangentMatrix = GetTangentMatrix_id18(streams);
    float3x3 tangentWorldTransform = GetTangentWorldTransform_id25(streams);
    streams.tangentToWorld_id20 = mul(tangentMatrix, tangentWorldTransform);
}
void GenerateNormal_PS_id17()
{
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
    streams.ColorTarget_id2 = Shading_id33(streams);
    streams.ColorTarget1_id3 = Compute_id52();
}
void GenerateNormal_PS_id24(inout PS_STREAMS streams)
{
    GenerateNormal_PS_id17();
    UpdateTangentToWorld_id20(streams);
    streams.meshNormalWS_id17 = mul((float3x3)GetInstanceWorldInverse_id14(streams.InstanceID_id13), streams.meshNormal_id16);
}
void GenerateNormal_VS_id16(inout VS_STREAMS streams)
{
    streams.normalWS_id19 = 0.0f;
}
void VSMain_id9(inout VS_STREAMS streams)
{
    VSMain_id0();
    BaseTransformVS_id8(streams);
}
void PSMain_id23(inout PS_STREAMS streams)
{
    GenerateNormal_PS_id24(streams);
    PSMain_id3(streams);
}
void VSMain_id22(inout VS_STREAMS streams)
{
    VSMain_id9(streams);
    GenerateNormal_VS_id16(streams);
}
PS_OUTPUT PSMain(PS_INPUT __input__)
{
    PS_STREAMS streams = (PS_STREAMS)0;
    streams.PositionWS_id22 = __input__.PositionWS_id22;
    streams.ShadingPosition_id0 = __input__.ShadingPosition_id0;
    streams.DepthVS_id23 = __input__.DepthVS_id23;
    streams.ScreenPosition_id169 = __input__.ScreenPosition_id169;
    streams.meshNormal_id16 = __input__.meshNormal_id16;
    streams.meshTangent_id18 = __input__.meshTangent_id18;
    streams.InstanceID_id13 = __input__.InstanceID_id13;
    streams.TexCoord_id142 = __input__.TexCoord_id142;
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
    streams.meshTangent_id18 = __input__.meshTangent_id18;
    streams.TexCoord_id142 = __input__.TexCoord_id142;
    VSMain_id22(streams);
    streams.ScreenPosition_id169 = streams.ShadingPosition_id0;
    VS_OUTPUT __output__ = (VS_OUTPUT)0;
    __output__.PositionWS_id22 = streams.PositionWS_id22;
    __output__.ShadingPosition_id0 = streams.ShadingPosition_id0;
    __output__.DepthVS_id23 = streams.DepthVS_id23;
    __output__.ScreenPosition_id169 = streams.ScreenPosition_id169;
    __output__.meshNormal_id16 = streams.meshNormal_id16;
    __output__.meshTangent_id18 = streams.meshTangent_id18;
    __output__.InstanceID_id13 = streams.InstanceID_id13;
    __output__.TexCoord_id142 = streams.TexCoord_id142;
    return __output__;
}
