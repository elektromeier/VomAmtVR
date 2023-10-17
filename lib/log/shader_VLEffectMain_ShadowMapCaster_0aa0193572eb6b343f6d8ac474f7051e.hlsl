/**************************
***** Compiler Parameters *****
***************************
@P EffectName: VLEffectMain.ShadowMapCaster
@P   - StrideEffectBase.HasInstancing: True
@P Material.PixelStageSurfaceShaders: mixin MaterialSurfaceArray [{layers = [mixin MaterialSurfaceDiffuse [{diffuseMap = MaterialCompiling}], mixin MaterialSurfaceLightingAndShading [{surfaces = [MaterialSurfaceShadingDiffuseLambert<false>]}]]}]
@P Material.PixelStageStreamInitializer: mixin MaterialStream, MaterialPixelShadingStream
@P Lighting.EnvironmentLights: LightConstantWhite
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
@R    InstanceWorldInverse_id40 => TransformationInstancing.InstanceWorldInverse [Stage: Vertex, Slot: (1-1)]
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
@S    ShadowMapCasterNoPixelShader => cc7142412cfd324e26085f940beb9f1d
@S    LightConstantWhite => 908ef9d20842056edb7256edab7d3f0c
@S    MaterialSurfaceArray => 6c056e27887290fe2f9862991714228f
@S    MaterialSurfaceDiffuse => 4130aff8a17174b1b1457299185be45e
@S    IMaterialSurfacePixel => efa5da7adb861031599778e9829daca8
@S    MaterialCompiling => 932f0dd13b0b368363ea1e841593644d
@S    Global => 9f1e0462aa3fb62f0ff0d7a537626a5a
@S    Texturing => 6605f68230266eff2bc8b4e8102ede6b
@S    MaterialSurfaceLightingAndShading => 56a8877cd2af395727b11f69c761ad41
@S    Math => 395aa210901b9e0783594d1b4fb0a441
@S    IMaterialSurfaceShading => 86261e2a0ca0229f0d6ddf87490e5967
@S    MaterialSurfaceShadingDiffuseLambert => 9adb7783d6ea173f9f8ffdfa5c141256
***************************
*****     Stages      *****
***************************
@G    Vertex => d75df991cec32fc8cf857c5df3c8ad1f
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
// Resource bind info for InstanceWorldInverse_id40
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
// InstanceWorldInverse_id40         texture  struct         r/o             t1      1 
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
// POSITIONH                0   xyzw        2     NONE   float   xyzw
// DEPTH_VS                 0   x           3     NONE   float   x   
// MESHNORMALWS_ID16_SEM     0    yzw        3     NONE   float    yzw
// NORMALWS                 0   xyz         4     NONE   float   xyz 
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
dcl_output o2.xyzw
dcl_output o3.x
dcl_output o3.yzw
dcl_output o4.xyz
dcl_temps 4
//
// Initial variable locations:
//   v0.x <- __input__.Position_id20.x; v0.y <- __input__.Position_id20.y; v0.z <- __input__.Position_id20.z; v0.w <- __input__.Position_id20.w; 
//   v1.x <- __input__.InstanceID_id13; 
//   v2.x <- __input__.meshNormal_id15.x; v2.y <- __input__.meshNormal_id15.y; v2.z <- __input__.meshNormal_id15.z; 
//   o4.x <- <VSMain return value>.normalWS_id18.x; o4.y <- <VSMain return value>.normalWS_id18.y; o4.z <- <VSMain return value>.normalWS_id18.z; 
//   o3.x <- <VSMain return value>.DepthVS_id22; o3.y <- <VSMain return value>.meshNormalWS_id16.x; o3.z <- <VSMain return value>.meshNormalWS_id16.y; o3.w <- <VSMain return value>.meshNormalWS_id16.z; 
//   o2.x <- <VSMain return value>.PositionH_id23.x; o2.y <- <VSMain return value>.PositionH_id23.y; o2.z <- <VSMain return value>.PositionH_id23.z; o2.w <- <VSMain return value>.PositionH_id23.w; 
//   o1.x <- <VSMain return value>.ShadingPosition_id0.x; o1.y <- <VSMain return value>.ShadingPosition_id0.y; o1.z <- <VSMain return value>.ShadingPosition_id0.z; o1.w <- <VSMain return value>.ShadingPosition_id0.w; 
//   o0.x <- <VSMain return value>.PositionWS_id21.x; o0.y <- <VSMain return value>.PositionWS_id21.y; o0.z <- <VSMain return value>.PositionWS_id21.z; o0.w <- <VSMain return value>.PositionWS_id21.w
//
#line 166 "C:\Users\elektromeier\Desktop\VomAmt\VomAmtVR\lib\log\shader_VLEffectMain_ShadowMapCaster_0aa0193572eb6b343f6d8ac474f7051e.hlsl"
ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r0.xyzw, v1.x, l(0), t0.xyzw  // r0.x <- <GetInstanceWorld_id13 return value>._m00; r0.y <- <GetInstanceWorld_id13 return value>._m10; r0.z <- <GetInstanceWorld_id13 return value>._m20; r0.w <- <GetInstanceWorld_id13 return value>._m30

#line 180
dp4 r0.x, v0.xyzw, r0.xyzw  // r0.x <- streams.PositionWS_id21.x

#line 166
ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r1.xyzw, v1.x, l(16), t0.xyzw  // r1.x <- <GetInstanceWorld_id13 return value>._m01; r1.y <- <GetInstanceWorld_id13 return value>._m11; r1.z <- <GetInstanceWorld_id13 return value>._m21; r1.w <- <GetInstanceWorld_id13 return value>._m31

#line 180
dp4 r0.y, v0.xyzw, r1.xyzw  // r0.y <- streams.PositionWS_id21.y

#line 166
ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r1.xyzw, v1.x, l(32), t0.xyzw  // r1.x <- <GetInstanceWorld_id13 return value>._m02; r1.y <- <GetInstanceWorld_id13 return value>._m12; r1.z <- <GetInstanceWorld_id13 return value>._m22; r1.w <- <GetInstanceWorld_id13 return value>._m32

#line 180
dp4 r0.z, v0.xyzw, r1.xyzw  // r0.z <- streams.PositionWS_id21.z

#line 166
ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r1.xyzw, v1.x, l(48), t0.xyzw  // r1.x <- <GetInstanceWorld_id13 return value>._m03; r1.y <- <GetInstanceWorld_id13 return value>._m13; r1.z <- <GetInstanceWorld_id13 return value>._m23; r1.w <- <GetInstanceWorld_id13 return value>._m33

#line 180
dp4 r0.w, v0.xyzw, r1.xyzw  // r0.w <- streams.PositionWS_id21.w

#line 220
mov o0.xyzw, r0.xyzw

#line 159
dp4 r1.x, r0.xyzw, cb0[16].xyzw  // r1.x <- <ComputeShadingPosition_id11 return value>.x
dp4 r1.y, r0.xyzw, cb0[17].xyzw  // r1.y <- <ComputeShadingPosition_id11 return value>.y
dp4 r1.z, r0.xyzw, cb0[18].xyzw  // r1.z <- <ComputeShadingPosition_id11 return value>.z
dp4 r1.w, r0.xyzw, cb0[19].xyzw  // r1.w <- <ComputeShadingPosition_id11 return value>.w

#line 220
mov o1.xyzw, r1.xyzw
mov o2.xyzw, r1.xyzw
mov o3.x, r1.w

#line 184
ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r0.xyz, v1.x, l(0), t1.yxzx  // r0.y <- <GetInstanceWorldInverse_id14 return value>._m00; r0.x <- <GetInstanceWorldInverse_id14 return value>._m10; r0.z <- <GetInstanceWorldInverse_id14 return value>._m20

#line 197
mov r1.x, r0.y

#line 184
ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r2.xyz, v1.x, l(16), t1.xzyx  // r2.x <- <GetInstanceWorldInverse_id14 return value>._m01; r2.z <- <GetInstanceWorldInverse_id14 return value>._m11; r2.y <- <GetInstanceWorldInverse_id14 return value>._m21

#line 197
mov r1.y, r2.x

#line 184
ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r3.xyz, v1.x, l(32), t1.xyzx  // r3.x <- <GetInstanceWorldInverse_id14 return value>._m02; r3.y <- <GetInstanceWorldInverse_id14 return value>._m12; r3.z <- <GetInstanceWorldInverse_id14 return value>._m22

#line 197
mov r1.z, r3.x
dp3 r1.y, r1.xyzx, v2.xyzx  // r1.y <- streams.meshNormalWS_id16.x
mov r2.x, r0.z
mov r0.y, r2.z
mov r0.z, r3.y
mov r2.z, r3.z
dp3 r1.w, r2.xyzx, v2.xyzx  // r1.w <- streams.meshNormalWS_id16.z
dp3 r1.z, r0.xyzx, v2.xyzx  // r1.z <- streams.meshNormalWS_id16.y

#line 220
mov o3.yzw, r1.yyzw
mov o4.xyz, r1.yzwy
ret 
// Approximately 32 instruction slots used
***************************
*************************/
struct VS_STREAMS 
{
    float4 Position_id20;
    uint InstanceID_id13;
    float3 meshNormal_id15;
    float4 PositionWS_id21;
    float4 ShadingPosition_id0;
    float4 PositionH_id23;
    float DepthVS_id22;
    float3 meshNormalWS_id16;
    float3 normalWS_id18;
};
struct VS_OUTPUT 
{
    float4 PositionWS_id21 : POSITION_WS;
    float4 ShadingPosition_id0 : SV_Position;
    float4 PositionH_id23 : POSITIONH;
    float DepthVS_id22 : DEPTH_VS;
    float3 meshNormalWS_id16 : MESHNORMALWS_ID16_SEM;
    float3 normalWS_id18 : NORMALWS;
};
struct VS_INPUT 
{
    float4 Position_id20 : POSITION;
    uint InstanceID_id13 : SV_InstanceID;
    float3 meshNormal_id15 : NORMAL;
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
cbuffer PerFrame 
{
    float Time_id86;
    float TimeStep_id87;
};
cbuffer PerMaterial 
{
    float4 OriginalColor_id146;
    bool HasTexture_id147;
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
    float2 Texture0TexelSize_id89;
    float2 Texture1TexelSize_id91;
    float2 Texture2TexelSize_id93;
    float2 Texture3TexelSize_id95;
    float2 Texture4TexelSize_id97;
    float2 Texture5TexelSize_id99;
    float2 Texture6TexelSize_id101;
    float2 Texture7TexelSize_id103;
    float2 Texture8TexelSize_id105;
    float2 Texture9TexelSize_id107;
};
Texture2D Texture0_id88;
Texture2D Texture1_id90;
Texture2D Texture2_id92;
Texture2D Texture3_id94;
Texture2D Texture4_id96;
Texture2D Texture5_id98;
Texture2D Texture6_id100;
Texture2D Texture7_id102;
Texture2D Texture8_id104;
Texture2D Texture9_id106;
TextureCube TextureCube0_id108;
TextureCube TextureCube1_id109;
TextureCube TextureCube2_id110;
TextureCube TextureCube3_id111;
Texture3D Texture3D0_id112;
Texture3D Texture3D1_id113;
Texture3D Texture3D2_id114;
Texture3D Texture3D3_id115;
SamplerState Sampler_id116;
SamplerState PointSampler_id117 
{
    Filter = MIN_MAG_MIP_POINT;
};
SamplerState LinearSampler_id118 
{
    Filter = MIN_MAG_MIP_LINEAR;
};
SamplerState LinearBorderSampler_id119 
{
    Filter = MIN_MAG_MIP_LINEAR;
    AddressU = Border;
    AddressV = Border;
};
SamplerComparisonState LinearClampCompareLessEqualSampler_id120 
{
    Filter = COMPARISON_MIN_MAG_LINEAR_MIP_POINT;
    AddressU = Clamp;
    AddressV = Clamp;
    ComparisonFunc = LessEqual;
};
SamplerState AnisotropicSampler_id121 
{
    Filter = ANISOTROPIC;
};
SamplerState AnisotropicRepeatSampler_id122 
{
    Filter = ANISOTROPIC;
    AddressU = Wrap;
    AddressV = Wrap;
    MaxAnisotropy = 16;
};
SamplerState PointRepeatSampler_id123 
{
    Filter = MIN_MAG_MIP_POINT;
    AddressU = Wrap;
    AddressV = Wrap;
};
SamplerState LinearRepeatSampler_id124 
{
    Filter = MIN_MAG_MIP_LINEAR;
    AddressU = Wrap;
    AddressV = Wrap;
};
SamplerState RepeatSampler_id125 
{
    AddressU = Wrap;
    AddressV = Wrap;
};
SamplerState Sampler0_id126;
SamplerState Sampler1_id127;
SamplerState Sampler2_id128;
SamplerState Sampler3_id129;
SamplerState Sampler4_id130;
SamplerState Sampler5_id131;
SamplerState Sampler6_id132;
SamplerState Sampler7_id133;
SamplerState Sampler8_id134;
SamplerState Sampler9_id135;
StructuredBuffer<InstanceTransform> InstanceWorld_id39;
StructuredBuffer<InstanceTransform> InstanceWorldInverse_id40;
Texture2D OriginalTexture_id148;
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
float4x4 GetInstanceWorldInverse_id14(uint instanceId)
{
    return InstanceWorldInverse_id40[instanceId].Matrix;
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
void GenerateNormal_VS_id26(inout VS_STREAMS streams)
{
    streams.meshNormalWS_id16 = mul((float3x3)GetInstanceWorldInverse_id14(streams.InstanceID_id13), streams.meshNormal_id15);
    streams.normalWS_id18 = streams.meshNormalWS_id16;
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
    streams.meshNormal_id15 = __input__.meshNormal_id15;
    VSMain_id9(streams);
    GenerateNormal_VS_id26(streams);
    VS_OUTPUT __output__ = (VS_OUTPUT)0;
    __output__.PositionWS_id21 = streams.PositionWS_id21;
    __output__.ShadingPosition_id0 = streams.ShadingPosition_id0;
    __output__.PositionH_id23 = streams.PositionH_id23;
    __output__.DepthVS_id22 = streams.DepthVS_id22;
    __output__.meshNormalWS_id16 = streams.meshNormalWS_id16;
    __output__.normalWS_id18 = streams.normalWS_id18;
    return __output__;
}