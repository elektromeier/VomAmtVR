/**************************
***** Compiler Parameters *****
***************************
@P EffectName: VLEffectMain.ShadowMapCaster
@P   - Material.PixelStageSurfaceShaders: mixin MaterialSurfaceArray [{layers = [mixin MaterialSurfaceDiffuse [{diffuseMap = mixin Float4ToColor [{Value = mixin DoFloat4 [{Before = mixin ComputeOrder [{Computes = [ComputeVoid, ComputeVoid, mixin AssignVarFloat4<BufferItem_1> [{Value = mixin GetItemBufferFloat4<ObjectBuffer_fx0,PerMaterial> [{Index = GetSemanticUInt<SemanticValue_2,SV_InstanceID>}]}], mixin AssignVarFloat4<SRgbToLinear_ShaderFXResult_3> [{Value = mixin SRgbToLinear_ShaderFX [{SRgb = GetVarFloat4<BufferItem_1>}]}]]}]}, {Value = GetVarFloat4<SRgbToLinear_ShaderFXResult_3>}]}]}], mixin MaterialSurfaceNormalMap<true,true> [{normalMap = mixin Float4ToColor [{Value = mixin DoFloat4 [{Before = mixin ComputeOrder [{Computes = [mixin AssignVarFloat4<Input_4> [{Value = InputFloat4<ShaderFX.InputValueFloat4,PerMaterial>}]]}]}, {Value = GetVarFloat4<Input_4>}]}]}], mixin MaterialSurfaceGlossinessMap<true> [{glossinessMap = mixin FloatToScalar [{Value = mixin DoFloat [{Before = mixin ComputeOrder [{Computes = [mixin AssignVarFloat<Input_5> [{Value = InputFloat<ShaderFX.InputValueFloat,PerMaterial>}]]}]}, {Value = GetVarFloat<Input_5>}]}]}], mixin MaterialSurfaceMetalness [{metalnessMap = mixin FloatToScalar [{Value = mixin DoFloat [{Before = mixin ComputeOrder [{Computes = [mixin AssignVarFloat<Input_6> [{Value = InputFloat<ShaderFX.InputValueFloat.i1,PerMaterial>}]]}]}, {Value = GetVarFloat<Input_6>}]}]}], mixin MaterialSurfaceSetStreamFromComputeColor<matEmissive,rgba> [{computeColorSource = mixin Float4ToColor [{Value = mixin DoFloat4 [{Before = mixin ComputeOrder [{Computes = [ComputeVoid]}]}, {Value = ConstantFloat4<float4(1, 1, 1, 1)>}]}]}], mixin MaterialSurfaceSetStreamFromComputeColor<matEmissiveIntensity,r> [{computeColorSource = mixin FloatToScalar [{Value = mixin DoFloat [{Before = mixin ComputeOrder [{Computes = [ComputeVoid, ComputeVoid, mixin AssignVarFloat<BufferItem_8> [{Value = mixin GetItemBufferFloat<ObjectBuffer_fx7,PerMaterial> [{Index = GetSemanticUInt<SemanticValue_9,SV_InstanceID>}]}]]}]}, {Value = GetVarFloat<BufferItem_8>}]}]}], mixin MaterialSurfaceLightingAndShading [{surfaces = [MaterialSurfaceShadingDiffuseLambert<false>, mixin MaterialSurfaceShadingSpecularMicrofacet [{environmentFunction = MaterialSpecularMicrofacetEnvironmentGGXLUT}, {fresnelFunction = MaterialSpecularMicrofacetFresnelSchlick}, {geometricShadowingFunction = MaterialSpecularMicrofacetVisibilitySmithSchlickGGX}, {normalDistributionFunction = MaterialSpecularMicrofacetNormalDistributionGGX}]]}], MaterialSurfaceEmissiveShading<false>]}]
@P Material.PixelStageStreamInitializer: mixin MaterialStream, MaterialPixelShadingStream
@P Material.HasNormalMap: True
@P StrideEffectBase.ModelTransformUsage: 0
@P StrideEffectBase.HasInstancing: True
***************************
****  ConstantBuffers  ****
***************************
cbuffer PerView [Size: 352]
@C    View_id24 => Transformation.View
@C    ViewInverse_id25 => Transformation.ViewInverse
@C    Projection_id26 => Transformation.Projection
@C    ProjectionInverse_id27 => Transformation.ProjectionInverse
@C    ViewProjection_id28 => Transformation.ViewProjection
@C    ProjScreenRay_id29 => Transformation.ProjScreenRay
@C    Eye_id30 => Transformation.Eye
***************************
******  Resources    ******
***************************
@R    InstanceWorld_id39 => TransformationInstancing.InstanceWorld [Stage: None, Slot: (-1--1)]
@R    InstanceWorld_id39 => TransformationInstancing.InstanceWorld [Stage: None, Slot: (-1--1)]
@R    InstanceWorldInverse_id40 => TransformationInstancing.InstanceWorldInverse [Stage: None, Slot: (-1--1)]
@R    InstanceWorldInverse_id40 => TransformationInstancing.InstanceWorldInverse [Stage: None, Slot: (-1--1)]
@R    InstanceWorld_id39 => TransformationInstancing.InstanceWorld [Stage: Vertex, Slot: (0-0)]
@R    PerView => PerView [Stage: Vertex, Slot: (0-0)]
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
@S    ShadowMapCasterNoPixelShader => cc7142412cfd324e26085f940beb9f1d
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
@S    MaterialSurfaceNormalMap => 1f8ee0c6c370eee2fbb83d50a38eb2b6
@S    InputFloat4 => dde84bd708e467fe677dfda4ce575339
@S    DeclFloat4 => b2a3d29ab3b24927c9d8403a0245327b
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
@S    Texturing => 6605f68230266eff2bc8b4e8102ede6b
@S    ConstantFloat4 => be4f0833deb972bc9d796b3dd76bf42d
@S    GetItemBufferFloat => a365756f3c20462ba93382579023c845
@S    DeclBufferFloat => a48625de424e0e3329d000d0f5740c9a
@S    MaterialSurfaceLightingAndShading => 56a8877cd2af395727b11f69c761ad41
@S    Math => 395aa210901b9e0783594d1b4fb0a441
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
***************************
*****     Stages      *****
***************************
@G    Vertex => 3ce0b4342ce3ba8a58dee7e4ab30784d
//
// Generated by Microsoft (R) HLSL Shader Compiler 10.1
//
//
// Buffer Definitions: 
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
//
// }
//
// Resource bind info for InstanceWorld_id39
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
// InstanceWorld_id39                texture  struct         r/o             t0      1 
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
//
//
// Output signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// POSITION_WS              0   xyzw        0     NONE   float   xyzw
// SV_Position              0   xyzw        1      POS   float   xyzw
// POSITIONH                0   xyzw        2     NONE   float   xyzw
// DEPTH_VS                 0   x           3     NONE   float   x   
// NORMALWS                 0    yzw        3     NONE   float    yzw
//
vs_5_0
dcl_globalFlags refactoringAllowed
dcl_constantbuffer CB0[20], immediateIndexed
dcl_resource_structured t0, 64
dcl_input v0.xyzw
dcl_input_sgv v1.x, instance_id
dcl_output o0.xyzw
dcl_output_siv o1.xyzw, position
dcl_output o2.xyzw
dcl_output o3.x
dcl_output o3.yzw
dcl_temps 2
//
// Initial variable locations:
//   v0.x <- __input__.Position_id20.x; v0.y <- __input__.Position_id20.y; v0.z <- __input__.Position_id20.z; v0.w <- __input__.Position_id20.w; 
//   v1.x <- __input__.InstanceID_id13; 
//   o3.x <- <VSMain return value>.DepthVS_id22; o3.y <- <VSMain return value>.normalWS_id18.x; o3.z <- <VSMain return value>.normalWS_id18.y; o3.w <- <VSMain return value>.normalWS_id18.z; 
//   o2.x <- <VSMain return value>.PositionH_id23.x; o2.y <- <VSMain return value>.PositionH_id23.y; o2.z <- <VSMain return value>.PositionH_id23.z; o2.w <- <VSMain return value>.PositionH_id23.w; 
//   o1.x <- <VSMain return value>.ShadingPosition_id0.x; o1.y <- <VSMain return value>.ShadingPosition_id0.y; o1.z <- <VSMain return value>.ShadingPosition_id0.z; o1.w <- <VSMain return value>.ShadingPosition_id0.w; 
//   o0.x <- <VSMain return value>.PositionWS_id21.x; o0.y <- <VSMain return value>.PositionWS_id21.y; o0.z <- <VSMain return value>.PositionWS_id21.z; o0.w <- <VSMain return value>.PositionWS_id21.w
//
#line 160 "C:\Users\elektromeier\Desktop\VomAmt\VomAmtVR\lib\log\shader_VLEffectMain_ShadowMapCaster_adfdbbab4859a8f6e76338df11e77978.hlsl"
ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r0.xyzw, v1.x, l(0), t0.xyzw  // r0.x <- <GetInstanceWorld_id13 return value>._m00; r0.y <- <GetInstanceWorld_id13 return value>._m10; r0.z <- <GetInstanceWorld_id13 return value>._m20; r0.w <- <GetInstanceWorld_id13 return value>._m30

#line 174
dp4 r0.x, v0.xyzw, r0.xyzw  // r0.x <- streams.PositionWS_id21.x

#line 160
ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r1.xyzw, v1.x, l(16), t0.xyzw  // r1.x <- <GetInstanceWorld_id13 return value>._m01; r1.y <- <GetInstanceWorld_id13 return value>._m11; r1.z <- <GetInstanceWorld_id13 return value>._m21; r1.w <- <GetInstanceWorld_id13 return value>._m31

#line 174
dp4 r0.y, v0.xyzw, r1.xyzw  // r0.y <- streams.PositionWS_id21.y

#line 160
ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r1.xyzw, v1.x, l(32), t0.xyzw  // r1.x <- <GetInstanceWorld_id13 return value>._m02; r1.y <- <GetInstanceWorld_id13 return value>._m12; r1.z <- <GetInstanceWorld_id13 return value>._m22; r1.w <- <GetInstanceWorld_id13 return value>._m32

#line 174
dp4 r0.z, v0.xyzw, r1.xyzw  // r0.z <- streams.PositionWS_id21.z

#line 160
ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r1.xyzw, v1.x, l(48), t0.xyzw  // r1.x <- <GetInstanceWorld_id13 return value>._m03; r1.y <- <GetInstanceWorld_id13 return value>._m13; r1.z <- <GetInstanceWorld_id13 return value>._m23; r1.w <- <GetInstanceWorld_id13 return value>._m33

#line 174
dp4 r0.w, v0.xyzw, r1.xyzw  // r0.w <- streams.PositionWS_id21.w

#line 207
mov o0.xyzw, r0.xyzw

#line 153
dp4 r1.x, r0.xyzw, cb0[16].xyzw  // r1.x <- <ComputeShadingPosition_id11 return value>.x
dp4 r1.y, r0.xyzw, cb0[17].xyzw  // r1.y <- <ComputeShadingPosition_id11 return value>.y
dp4 r1.z, r0.xyzw, cb0[18].xyzw  // r1.z <- <ComputeShadingPosition_id11 return value>.z
dp4 r1.w, r0.xyzw, cb0[19].xyzw  // r1.w <- <ComputeShadingPosition_id11 return value>.w

#line 207
mov o1.xyzw, r1.xyzw
mov o2.xyzw, r1.xyzw
mov o3.x, r1.w
mov o3.yzw, l(0,0,0,0)
ret 
// Approximately 18 instruction slots used
***************************
*************************/
struct VS_STREAMS 
{
    float4 Position_id20;
    uint InstanceID_id13;
    float4 PositionWS_id21;
    float4 ShadingPosition_id0;
    float4 PositionH_id23;
    float DepthVS_id22;
    float3 normalWS_id18;
};
struct VS_OUTPUT 
{
    float4 PositionWS_id21 : POSITION_WS;
    float4 ShadingPosition_id0 : SV_Position;
    float4 PositionH_id23 : POSITIONH;
    float DepthVS_id22 : DEPTH_VS;
    float3 normalWS_id18 : NORMALWS;
};
struct VS_INPUT 
{
    float4 Position_id20 : POSITION;
    uint InstanceID_id13 : SV_InstanceID;
};
struct InstanceTransform 
{
    float4x4 Matrix;
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
};
cbuffer PerMaterial 
{
    float4 InputValue_id98;
    float InputValue_id108;
    float InputValue_id117;
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
};
cbuffer Globals 
{
    float2 Texture0TexelSize_id128;
    float2 Texture1TexelSize_id130;
    float2 Texture2TexelSize_id132;
    float2 Texture3TexelSize_id134;
    float2 Texture4TexelSize_id136;
    float2 Texture5TexelSize_id138;
    float2 Texture6TexelSize_id140;
    float2 Texture7TexelSize_id142;
    float2 Texture8TexelSize_id144;
    float2 Texture9TexelSize_id146;
};
Texture2D Texture0_id127;
Texture2D Texture1_id129;
Texture2D Texture2_id131;
Texture2D Texture3_id133;
Texture2D Texture4_id135;
Texture2D Texture5_id137;
Texture2D Texture6_id139;
Texture2D Texture7_id141;
Texture2D Texture8_id143;
Texture2D Texture9_id145;
TextureCube TextureCube0_id147;
TextureCube TextureCube1_id148;
TextureCube TextureCube2_id149;
TextureCube TextureCube3_id150;
Texture3D Texture3D0_id151;
Texture3D Texture3D1_id152;
Texture3D Texture3D2_id153;
Texture3D Texture3D3_id154;
SamplerState Sampler_id155;
SamplerState PointSampler_id156 
{
    Filter = MIN_MAG_MIP_POINT;
};
SamplerState LinearSampler_id157 
{
    Filter = MIN_MAG_MIP_LINEAR;
};
SamplerState LinearBorderSampler_id158 
{
    Filter = MIN_MAG_MIP_LINEAR;
    AddressU = Border;
    AddressV = Border;
};
SamplerComparisonState LinearClampCompareLessEqualSampler_id159 
{
    Filter = COMPARISON_MIN_MAG_LINEAR_MIP_POINT;
    AddressU = Clamp;
    AddressV = Clamp;
    ComparisonFunc = LessEqual;
};
SamplerState AnisotropicSampler_id160 
{
    Filter = ANISOTROPIC;
};
SamplerState AnisotropicRepeatSampler_id161 
{
    Filter = ANISOTROPIC;
    AddressU = Wrap;
    AddressV = Wrap;
    MaxAnisotropy = 16;
};
SamplerState PointRepeatSampler_id162 
{
    Filter = MIN_MAG_MIP_POINT;
    AddressU = Wrap;
    AddressV = Wrap;
};
SamplerState LinearRepeatSampler_id163 
{
    Filter = MIN_MAG_MIP_LINEAR;
    AddressU = Wrap;
    AddressV = Wrap;
};
SamplerState RepeatSampler_id164 
{
    AddressU = Wrap;
    AddressV = Wrap;
};
SamplerState Sampler0_id165;
SamplerState Sampler1_id166;
SamplerState Sampler2_id167;
SamplerState Sampler3_id168;
SamplerState Sampler4_id169;
SamplerState Sampler5_id170;
SamplerState Sampler6_id171;
SamplerState Sampler7_id172;
SamplerState Sampler8_id173;
SamplerState Sampler9_id174;
StructuredBuffer<InstanceTransform> InstanceWorld_id39;
StructuredBuffer<InstanceTransform> InstanceWorldInverse_id40;
Buffer<float4> DynamicBuffer_id85;
Buffer<float> DynamicBuffer_id192;
Texture2D EnvironmentLightingDFG_LUT_id206;
float4 ComputeShadingPosition_id11(float4 world)
{
    return mul(world, ViewProjection_id28);
}
void PostTransformPosition_id6()
{
}
float4x4 GetInstanceWorld_id13(uint instanceId)
{
    return InstanceWorld_id39[instanceId].Matrix;
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
void PreTransformPosition_id15(inout VS_STREAMS streams)
{
    streams.PositionWS_id21 = mul(streams.Position_id20, GetInstanceWorld_id13(streams.InstanceID_id13));
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
void GenerateNormal_VS_id16(inout VS_STREAMS streams)
{
    streams.normalWS_id18 = 0.0f;
}
void VSMain_id9(inout VS_STREAMS streams)
{
    VSMain_id0();
    BaseTransformVS_id8(streams);
}
VS_OUTPUT VSMain(VS_INPUT __input__)
{
    VS_STREAMS streams = (VS_STREAMS)0;
    streams.Position_id20 = __input__.Position_id20;
    streams.InstanceID_id13 = __input__.InstanceID_id13;
    VSMain_id9(streams);
    GenerateNormal_VS_id16(streams);
    VS_OUTPUT __output__ = (VS_OUTPUT)0;
    __output__.PositionWS_id21 = streams.PositionWS_id21;
    __output__.ShadingPosition_id0 = streams.ShadingPosition_id0;
    __output__.PositionH_id23 = streams.PositionH_id23;
    __output__.DepthVS_id22 = streams.DepthVS_id22;
    __output__.normalWS_id18 = streams.normalWS_id18;
    return __output__;
}
