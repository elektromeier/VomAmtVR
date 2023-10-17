/**************************
***** Compiler Parameters *****
***************************
@P EffectName: VLEffectMain.ShadowMapCaster
@P   - Material.PixelStageSurfaceShaders: mixin MaterialSurfaceArray [{layers = [mixin MaterialSurfaceSetStreamFromComputeColor<matEmissive,rgba> [{computeColorSource = mixin Float4ToColor [{Value = mixin DoFloat4 [{Before = mixin ComputeOrder [{Computes = [ComputeVoid, ComputeVoid, ComputeVoid, mixin AssignVarFloat2<Input_2> [{Value = InputFloat2<ShaderFX.InputValueFloat2,PerMaterial>}], mixin AssignVarFloat2<Plus_3> [{Value = mixin PlusFloat2 [{Left = GetSemanticFloat2<SemanticValue_4,TEXCOORD0>}, {Right = GetVarFloat2<Input_2>}]}], mixin AssignVarFloat2<Input_5> [{Value = InputFloat2<ShaderFX.InputValueFloat2.i1,PerMaterial>}], mixin AssignVarFloat2<Multiply_6> [{Value = mixin MultiplyFloat2 [{Left = GetVarFloat2<Plus_3>}, {Right = GetVarFloat2<Input_5>}]}], mixin AssignVarFloat2<Input_7> [{Value = InputFloat2<ShaderFX.InputValueFloat2.i2,PerMaterial>}], mixin AssignVarFloat2<Plus_8> [{Value = mixin PlusFloat2 [{Left = GetVarFloat2<Multiply_6>}, {Right = GetVarFloat2<Input_7>}]}], mixin AssignVarFloat4<TextureValue_9> [{Value = mixin SampleTextureFloat4<ObjectTexture_fx0,PerMaterial,ObjectSampler_fx1,PerMaterial> [{TexCd = GetVarFloat2<Plus_8>}]}]]}]}, {Value = GetVarFloat4<TextureValue_9>}]}]}], mixin MaterialSurfaceSetStreamFromComputeColor<matEmissiveIntensity,r> [{computeColorSource = mixin FloatToScalar [{Value = mixin DoFloat [{Before = mixin ComputeOrder [{Computes = [ComputeVoid]}]}, {Value = ConstantFloat<1>}]}]}], mixin MaterialSurfaceSetStreamFromComputeColor<matDiffuseSpecularAlphaBlend,rg> [{computeColorSource = mixin ComputeColorMaterialAlphaBlend [{color = mixin FloatToScalar [{Value = mixin DoFloat [{Before = mixin ComputeOrder [{Computes = [mixin AssignVarFloat<Input_10> [{Value = InputFloat<ShaderFX.InputValueFloat,PerMaterial>}]]}]}, {Value = GetVarFloat<Input_10>}]}]}]}], mixin MaterialSurfaceSetStreamFromComputeColor<matAlphaBlendColor,rgb> [{computeColorSource = mixin Float4ToColor [{Value = mixin DoFloat4 [{Before = mixin ComputeOrder [{Computes = [ComputeVoid]}]}, {Value = ConstantFloat4<float4(1, 1, 1, 1)>}]}]}], MaterialSurfaceEmissiveShading<true>, MaterialSurfaceDiffuseSpecularAlphaBlendColor]}]
@P Material.PixelStageStreamInitializer: mixin MaterialStream, MaterialPixelShadingStream
@P Material.UsePixelShaderWithDepthPass: True
***************************
****  ConstantBuffers  ****
***************************
cbuffer PerDraw [Size: 416]
@C    World_id31 => Transformation.World
@C    WorldInverse_id32 => Transformation.WorldInverse
@C    WorldInverseTranspose_id33 => Transformation.WorldInverseTranspose
@C    WorldView_id34 => Transformation.WorldView
@C    WorldViewInverse_id35 => Transformation.WorldViewInverse
@C    WorldViewProjection_id36 => Transformation.WorldViewProjection
@C    WorldScale_id37 => Transformation.WorldScale
@C    EyeMS_id38 => Transformation.EyeMS
cbuffer PerMaterial [Size: 32]
@C    InputValue_id144 => ShaderFX.InputValueFloat2
@C    InputValue_id152 => ShaderFX.InputValueFloat2.i1
@C    InputValue_id159 => ShaderFX.InputValueFloat2.i2
@C    InputValue_id182 => ShaderFX.InputValueFloat
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
@R    PerMaterial => PerMaterial [Stage: None, Slot: (-1--1)]
@R    DynamicTexture_id166 => ObjectTexture_fx0 [Stage: None, Slot: (-1--1)]
@R    DynamicTexture_id166 => ObjectTexture_fx0 [Stage: None, Slot: (-1--1)]
@R    DynamicSampler_id167 => ObjectSampler_fx1 [Stage: None, Slot: (-1--1)]
@R    DynamicSampler_id167 => ObjectSampler_fx1 [Stage: None, Slot: (-1--1)]
@R    PerDraw => PerDraw [Stage: Vertex, Slot: (0-0)]
@R    PerView => PerView [Stage: Vertex, Slot: (1-1)]
@R    DynamicSampler_id167 => ObjectSampler_fx1 [Stage: Pixel, Slot: (0-0)]
@R    DynamicTexture_id166 => ObjectTexture_fx0 [Stage: Pixel, Slot: (0-0)]
@R    PerMaterial => PerMaterial [Stage: Pixel, Slot: (0-0)]
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
@S    ShadowMapCasterAlphaDiscard => 193e60a693af7e06d5e4c7ac5287e077
@S    MaterialSurfaceArray => 6c056e27887290fe2f9862991714228f
@S    MaterialSurfaceSetStreamFromComputeColor => d24798cd4613058b907bf6e272883693
@S    IMaterialSurfacePixel => efa5da7adb861031599778e9829daca8
@S    IMaterialSurfaceVertex => 0fdda64f0492719d7ada59ea23d8f052
@S    MaterialVertexStream => 4f1267b84dea64fc7c323dfcfc385ab2
@S    MaterialDisplacementStream => 5d57748e7230a9347827c8f299c2d525
@S    IMaterialSurfaceDomain => 4f15b2e1d3036634d4e5f52e39c40e57
@S    MaterialDomainStream => a7008fc6e4d9a36114cef530b894de85
@S    MaterialTessellationStream => c86b4a80b983fe69485b091d0a16cf5a
@S    Texturing => 6605f68230266eff2bc8b4e8102ede6b
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
@S    FloatToScalar => 190ca2ba985be574ef882e8bdb8b38a2
@S    ComputeFloat => 2744918ba519afc956e367cbd1cb1fc4
@S    DoFloat => d050e0ec3f8e208b719183949cc88f11
@S    ConstantFloat => aed4b78684dc4c864ef592d9012d160a
@S    ComputeColorMaterialAlphaBlend => 0003b371f937d315b9927e15e8d92265
@S    AssignVarFloat => a27c6bbf503fcc9e236bc94dd1c261bf
@S    StreamVariableFloat => 20a0c0292833cf8f573b776f121529c5
@S    InputFloat => edce7cfb3e88687e30d0d7dadcb5a90d
@S    DeclFloat => f4460ed7a64afae8a4c604a1f0434666
@S    GetVarFloat => 15ef45218ac83c53348d7e12dab45514
@S    ConstantFloat4 => be4f0833deb972bc9d796b3dd76bf42d
@S    MaterialSurfaceEmissiveShading => 1c66007c23627d525bd2d12381ca0782
@S    MaterialSurfaceDiffuseSpecularAlphaBlendColor => a85000d6a6bed4152613cbddde8e050e
***************************
*****     Stages      *****
***************************
@G    Vertex => d401b243ae289c87252688529da57c6a
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
// TEXCOORD                 0   xy          2     NONE   float   xy  
//
//
// Output signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// POSITION_WS              0   xyzw        0     NONE   float   xyzw
// SV_Position              0   xyzw        1      POS   float   xyzw
// NORMALWS                 0   xyz         2     NONE   float   xyz 
// TEXCOORD                 0   xy          3     NONE   float   xy  
//
vs_5_0
dcl_globalFlags refactoringAllowed
dcl_constantbuffer CB0[11], immediateIndexed
dcl_constantbuffer CB1[20], immediateIndexed
dcl_input v0.xyzw
dcl_input v1.xyz
dcl_input v2.xy
dcl_output o0.xyzw
dcl_output_siv o1.xyzw, position
dcl_output o2.xyz
dcl_output o3.xy
dcl_temps 1
//
// Initial variable locations:
//   v0.x <- __input__.Position_id20.x; v0.y <- __input__.Position_id20.y; v0.z <- __input__.Position_id20.z; v0.w <- __input__.Position_id20.w; 
//   v1.x <- __input__.meshNormal_id15.x; v1.y <- __input__.meshNormal_id15.y; v1.z <- __input__.meshNormal_id15.z; 
//   v2.x <- __input__.TexCoord_id133.x; v2.y <- __input__.TexCoord_id133.y; 
//   o3.x <- <VSMain return value>.TexCoord_id133.x; o3.y <- <VSMain return value>.TexCoord_id133.y; 
//   o2.x <- <VSMain return value>.normalWS_id18.x; o2.y <- <VSMain return value>.normalWS_id18.y; o2.z <- <VSMain return value>.normalWS_id18.z; 
//   o1.x <- <VSMain return value>.ShadingPosition_id0.x; o1.y <- <VSMain return value>.ShadingPosition_id0.y; o1.z <- <VSMain return value>.ShadingPosition_id0.z; o1.w <- <VSMain return value>.ShadingPosition_id0.w; 
//   o0.x <- <VSMain return value>.PositionWS_id21.x; o0.y <- <VSMain return value>.PositionWS_id21.y; o0.z <- <VSMain return value>.PositionWS_id21.z; o0.w <- <VSMain return value>.PositionWS_id21.w
//
#line 559 "C:\Users\elektromeier\Desktop\VomAmt\VomAmtVR\lib\log\shader_VLEffectMain_ShadowMapCaster_1cfd3609fa4c931a91c94f553ea21c88.hlsl"
dp4 r0.x, v0.xyzw, cb0[0].xyzw  // r0.x <- streams.PositionWS_id21.x
dp4 r0.y, v0.xyzw, cb0[1].xyzw  // r0.y <- streams.PositionWS_id21.y
dp4 r0.z, v0.xyzw, cb0[2].xyzw  // r0.z <- streams.PositionWS_id21.z
dp4 r0.w, v0.xyzw, cb0[3].xyzw  // r0.w <- streams.PositionWS_id21.w

#line 621
mov o0.xyzw, r0.xyzw

#line 527
dp4 o1.x, r0.xyzw, cb1[16].xyzw
dp4 o1.y, r0.xyzw, cb1[17].xyzw
dp4 o1.z, r0.xyzw, cb1[18].xyzw
dp4 o1.w, r0.xyzw, cb1[19].xyzw

#line 588
dp3 o2.x, v1.xyzx, cb0[8].xyzx
dp3 o2.y, v1.xyzx, cb0[9].xyzx
dp3 o2.z, v1.xyzx, cb0[10].xyzx

#line 621
mov o3.xy, v2.xyxx
ret 
// Approximately 14 instruction slots used
@G    Pixel => 5fd1834c21c50cfea0d34dc27e369086
//
// Generated by Microsoft (R) HLSL Shader Compiler 10.1
//
//
// Buffer Definitions: 
//
// cbuffer PerMaterial
// {
//
//   float2 InputValue_id144;           // Offset:    0 Size:     8
//   float2 InputValue_id152;           // Offset:    8 Size:     8
//   float2 InputValue_id159;           // Offset:   16 Size:     8
//   float InputValue_id182;            // Offset:   24 Size:     4
//
// }
//
//
// Resource Bindings:
//
// Name                                 Type  Format         Dim      HLSL Bind  Count
// ------------------------------ ---------- ------- ----------- -------------- ------
// DynamicSampler_id167              sampler      NA          NA             s0      1 
// DynamicTexture_id166              texture  float4          2d             t0      1 
// PerMaterial                       cbuffer      NA          NA            cb0      1 
//
//
//
// Input signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// POSITION_WS              0   xyzw        0     NONE   float       
// SV_Position              0   xyzw        1      POS   float       
// NORMALWS                 0   xyz         2     NONE   float       
// TEXCOORD                 0   xy          3     NONE   float   xy  
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
dcl_constantbuffer CB0[2], immediateIndexed
dcl_sampler s0, mode_default
dcl_resource_texture2d (float,float,float,float) t0
dcl_input_ps linear v3.xy
dcl_output o0.xyzw
dcl_temps 2
//
// Initial variable locations:
//   v0.x <- __input__.PositionWS_id21.x; v0.y <- __input__.PositionWS_id21.y; v0.z <- __input__.PositionWS_id21.z; v0.w <- __input__.PositionWS_id21.w; 
//   v1.x <- __input__.ShadingPosition_id0.x; v1.y <- __input__.ShadingPosition_id0.y; v1.z <- __input__.ShadingPosition_id0.z; v1.w <- __input__.ShadingPosition_id0.w; 
//   v2.x <- __input__.normalWS_id18.x; v2.y <- __input__.normalWS_id18.y; v2.z <- __input__.normalWS_id18.z; 
//   v3.x <- __input__.TexCoord_id133.x; v3.y <- __input__.TexCoord_id133.y; 
//   o0.x <- <PSMain return value>.ColorTarget_id2.x; o0.y <- <PSMain return value>.ColorTarget_id2.y; o0.z <- <PSMain return value>.ColorTarget_id2.z; o0.w <- <PSMain return value>.ColorTarget_id2.w
//
#line 424 "C:\Users\elektromeier\Desktop\VomAmt\VomAmtVR\lib\log\shader_VLEffectMain_ShadowMapCaster_1cfd3609fa4c931a91c94f553ea21c88.hlsl"
mad r0.x, cb0[1].z, l(2.000000), l(-1.000000)
max r0.x, r0.x, l(0.000000)  // r0.x <- diffuseFactor

#line 259
add r0.yz, v3.xxyx, cb0[0].xxyx  // r0.y <- <Compute_id72 return value>.x; r0.z <- <Compute_id72 return value>.y

#line 243
mad r0.yz, r0.yyzy, cb0[0].zzwz, cb0[1].xxyx  // r0.y <- <Compute_id88 return value>.x; r0.z <- <Compute_id88 return value>.y

#line 239
sample_indexable(texture2d)(float,float,float,float) r1.xyzw, r0.yzyy, t0.xyzw, s0  // r1.x <- <Compute_id92 return value>.x; r1.y <- <Compute_id92 return value>.y; r1.z <- <Compute_id92 return value>.z; r1.w <- <Compute_id92 return value>.w

#line 603
mad r0.y, r0.x, r1.w, l(-0.100000)

#line 443
mul r0.x, r0.x, r1.w  // r0.x <- streams.shadingColorAlpha_id73

#line 606
mov o0.xyz, r1.xyzx
mov o0.w, r0.x

#line 603
lt r0.x, r0.y, l(0.000000)
discard_nz r0.x

#line 606
ret 
// Approximately 12 instruction slots used
***************************
*************************/
const static float Value_id176 = 1;
const static float4 Value_id191 = float4(1, 1, 1, 1);
const static bool TUseAlphaFromEmissive_id196 = true;
struct PS_STREAMS 
{
    float3 normalWS_id18;
    float4 PositionWS_id21;
    float2 TexCoord_id133;
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
    float2 Input_2_id143;
    float2 Plus_3_id146;
    float2 Input_5_id151;
    float2 Multiply_6_id154;
    float2 Input_7_id158;
    float2 Plus_8_id161;
    float4 TextureValue_9_id165;
    float Input_10_id181;
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
    float3 normalWS_id18 : NORMALWS;
    float2 TexCoord_id133 : TEXCOORD0;
};
struct VS_STREAMS 
{
    float4 Position_id20;
    float3 meshNormal_id15;
    float2 TexCoord_id133;
    float4 PositionH_id23;
    float DepthVS_id22;
    float3 meshNormalWS_id16;
    float4 PositionWS_id21;
    float4 ShadingPosition_id0;
    float3 normalWS_id18;
};
struct VS_OUTPUT 
{
    float4 PositionWS_id21 : POSITION_WS;
    float4 ShadingPosition_id0 : SV_Position;
    float3 normalWS_id18 : NORMALWS;
    float2 TexCoord_id133 : TEXCOORD0;
};
struct VS_INPUT 
{
    float4 Position_id20 : POSITION;
    float3 meshNormal_id15 : NORMAL;
    float2 TexCoord_id133 : TEXCOORD0;
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
    float2 InputValue_id144;
    float2 InputValue_id152;
    float2 InputValue_id159;
    float InputValue_id182;
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
    float2 Texture0TexelSize_id86;
    float2 Texture1TexelSize_id88;
    float2 Texture2TexelSize_id90;
    float2 Texture3TexelSize_id92;
    float2 Texture4TexelSize_id94;
    float2 Texture5TexelSize_id96;
    float2 Texture6TexelSize_id98;
    float2 Texture7TexelSize_id100;
    float2 Texture8TexelSize_id102;
    float2 Texture9TexelSize_id104;
};
Texture2D Texture0_id85;
Texture2D Texture1_id87;
Texture2D Texture2_id89;
Texture2D Texture3_id91;
Texture2D Texture4_id93;
Texture2D Texture5_id95;
Texture2D Texture6_id97;
Texture2D Texture7_id99;
Texture2D Texture8_id101;
Texture2D Texture9_id103;
TextureCube TextureCube0_id105;
TextureCube TextureCube1_id106;
TextureCube TextureCube2_id107;
TextureCube TextureCube3_id108;
Texture3D Texture3D0_id109;
Texture3D Texture3D1_id110;
Texture3D Texture3D2_id111;
Texture3D Texture3D3_id112;
SamplerState Sampler_id113;
SamplerState PointSampler_id114 
{
    Filter = MIN_MAG_MIP_POINT;
};
SamplerState LinearSampler_id115 
{
    Filter = MIN_MAG_MIP_LINEAR;
};
SamplerState LinearBorderSampler_id116 
{
    Filter = MIN_MAG_MIP_LINEAR;
    AddressU = Border;
    AddressV = Border;
};
SamplerComparisonState LinearClampCompareLessEqualSampler_id117 
{
    Filter = COMPARISON_MIN_MAG_LINEAR_MIP_POINT;
    AddressU = Clamp;
    AddressV = Clamp;
    ComparisonFunc = LessEqual;
};
SamplerState AnisotropicSampler_id118 
{
    Filter = ANISOTROPIC;
};
SamplerState AnisotropicRepeatSampler_id119 
{
    Filter = ANISOTROPIC;
    AddressU = Wrap;
    AddressV = Wrap;
    MaxAnisotropy = 16;
};
SamplerState PointRepeatSampler_id120 
{
    Filter = MIN_MAG_MIP_POINT;
    AddressU = Wrap;
    AddressV = Wrap;
};
SamplerState LinearRepeatSampler_id121 
{
    Filter = MIN_MAG_MIP_LINEAR;
    AddressU = Wrap;
    AddressV = Wrap;
};
SamplerState RepeatSampler_id122 
{
    AddressU = Wrap;
    AddressV = Wrap;
};
SamplerState Sampler0_id123;
SamplerState Sampler1_id124;
SamplerState Sampler2_id125;
SamplerState Sampler3_id126;
SamplerState Sampler4_id127;
SamplerState Sampler5_id128;
SamplerState Sampler6_id129;
SamplerState Sampler7_id130;
SamplerState Sampler8_id131;
SamplerState Sampler9_id132;
Texture2D DynamicTexture_id166;
SamplerState DynamicSampler_id167;
float Compute_id127()
{
    return InputValue_id182;
}
float2 Compute_id89(inout PS_STREAMS streams)
{
    return streams.Plus_8_id161;
}
float2 Compute_id85(inout PS_STREAMS streams)
{
    return streams.Input_7_id158;
}
float2 Compute_id83(inout PS_STREAMS streams)
{
    return streams.Multiply_6_id154;
}
float2 Compute_id77(inout PS_STREAMS streams)
{
    return streams.Input_5_id151;
}
float2 Compute_id75(inout PS_STREAMS streams)
{
    return streams.Plus_3_id146;
}
float2 Compute_id69(inout PS_STREAMS streams)
{
    return streams.Input_2_id143;
}
float2 Compute_id67(inout PS_STREAMS streams)
{
    return streams.TexCoord_id133;
}
void Compute_id130(inout PS_STREAMS streams)
{
    streams.Input_10_id181 = Compute_id127();
}
float4 Compute_id92(inout PS_STREAMS streams)
{
    return DynamicTexture_id166.Sample(DynamicSampler_id167, Compute_id89(streams));
}
float2 Compute_id88(inout PS_STREAMS streams)
{
    return Compute_id83(streams) + Compute_id85(streams);
}
float2 Compute_id81()
{
    return InputValue_id159;
}
float2 Compute_id80(inout PS_STREAMS streams)
{
    return Compute_id75(streams) * Compute_id77(streams);
}
float2 Compute_id73()
{
    return InputValue_id152;
}
float2 Compute_id72(inout PS_STREAMS streams)
{
    return Compute_id67(streams) + Compute_id69(streams);
}
float2 Compute_id65()
{
    return InputValue_id144;
}
void Compute_id144()
{
}
float Compute_id133(inout PS_STREAMS streams)
{
    return streams.Input_10_id181;
}
void Compute_id132(inout PS_STREAMS streams)
{

    {
        Compute_id130(streams);
    }
}
void Compute_id118()
{
}
void Compute_id109(inout PS_STREAMS streams)
{
    streams.TextureValue_9_id165 = Compute_id92(streams);
}
void Compute_id107(inout PS_STREAMS streams)
{
    streams.Plus_8_id161 = Compute_id88(streams);
}
void Compute_id105(inout PS_STREAMS streams)
{
    streams.Input_7_id158 = Compute_id81();
}
void Compute_id103(inout PS_STREAMS streams)
{
    streams.Multiply_6_id154 = Compute_id80(streams);
}
void Compute_id101(inout PS_STREAMS streams)
{
    streams.Input_5_id151 = Compute_id73();
}
void Compute_id99(inout PS_STREAMS streams)
{
    streams.Plus_3_id146 = Compute_id72(streams);
}
void Compute_id97(inout PS_STREAMS streams)
{
    streams.Input_2_id143 = Compute_id65();
}
void Compute_id95()
{
}
void Compute_id94()
{
}
void Compute_id93()
{
}
float4 Compute_id147()
{
    return Value_id191;
}
void Compute_id146()
{

    {
        Compute_id144();
    }
}
float Compute_id136(inout PS_STREAMS streams)
{
    Compute_id132(streams);
    return Compute_id133(streams);
}
float Compute_id121()
{
    return Value_id176;
}
void Compute_id120()
{

    {
        Compute_id118();
    }
}
float4 Compute_id112(inout PS_STREAMS streams)
{
    return streams.TextureValue_9_id165;
}
void Compute_id111(inout PS_STREAMS streams)
{

    {
        Compute_id93();
    }

    {
        Compute_id94();
    }

    {
        Compute_id95();
    }

    {
        Compute_id97(streams);
    }

    {
        Compute_id99(streams);
    }

    {
        Compute_id101(streams);
    }

    {
        Compute_id103(streams);
    }

    {
        Compute_id105(streams);
    }

    {
        Compute_id107(streams);
    }

    {
        Compute_id109(streams);
    }
}
float4 Compute_id150()
{
    Compute_id146();
    return Compute_id147();
}
float4 Compute_id138(inout PS_STREAMS streams)
{
    float x = Compute_id136(streams);
    return float4(x, x, x, x);
}
float Compute_id124()
{
    Compute_id120();
    return Compute_id121();
}
float4 Compute_id115(inout PS_STREAMS streams)
{
    Compute_id111(streams);
    return Compute_id112(streams);
}
void ResetStream_id62()
{
}
float4 Compute_id152()
{
    return Compute_id150();
}
float4 Compute_id143(inout PS_STREAMS streams)
{
    float alpha = 2.0 * Compute_id138(streams).x;
    float specularFactor = min(1, alpha);
    float diffuseFactor = max(0, alpha - 1.0);
    return float4(diffuseFactor, specularFactor, 0, 0);
}
float4 Compute_id126()
{
    float x = Compute_id124();
    return float4(x, x, x, x);
}
float4 Compute_id117(inout PS_STREAMS streams)
{
    return Compute_id115(streams);
}
void ResetStream_id63(inout PS_STREAMS streams)
{
    ResetStream_id62();
    streams.matBlend_id39 = 0.0f;
}
void Compute_id178(inout PS_STREAMS streams)
{
    streams.shadingColorAlpha_id73 = lerp(0, streams.shadingColorAlpha_id73, streams.matDiffuseSpecularAlphaBlend_id64.r);
}
void Compute_id173(inout PS_STREAMS streams)
{
    streams.shadingColor_id72 += streams.matEmissive_id61.rgb * streams.matEmissiveIntensity_id62;

    {
        streams.shadingColorAlpha_id73 = streams.matEmissive_id61.a;
    }
}
void Compute_id172(inout PS_STREAMS streams)
{
    streams.matAlphaBlendColor_id65 = Compute_id152().rgb;
}
void Compute_id167(inout PS_STREAMS streams)
{
    streams.matDiffuseSpecularAlphaBlend_id64 = Compute_id143(streams).rg;
}
void Compute_id162(inout PS_STREAMS streams)
{
    streams.matEmissiveIntensity_id62 = Compute_id126().r;
}
void Compute_id157(inout PS_STREAMS streams)
{
    streams.matEmissive_id61 = Compute_id117(streams).rgba;
}
void ResetStream_id64(inout PS_STREAMS streams)
{
    ResetStream_id63(streams);
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
void Compute_id36(inout PS_STREAMS streams)
{

    {
        Compute_id157(streams);
    }

    {
        Compute_id162(streams);
    }

    {
        Compute_id167(streams);
    }

    {
        Compute_id172(streams);
    }

    {
        Compute_id173(streams);
    }

    {
        Compute_id178(streams);
    }
}
void ResetStream_id35(inout PS_STREAMS streams)
{
    ResetStream_id64(streams);
    streams.shadingColorAlpha_id73 = 1.0f;
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
float4 Shading_id30(inout PS_STREAMS streams)
{
    streams.viewWS_id67 = normalize(Eye_id30.xyz - streams.PositionWS_id21.xyz);
    streams.shadingColor_id72 = 0;
    ResetStream_id35(streams);
    Compute_id36(streams);
    return float4(streams.shadingColor_id72, streams.shadingColorAlpha_id73);
}
void PSMain_id1()
{
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
void PSMain_id3(inout PS_STREAMS streams)
{
    PSMain_id1();
    streams.ColorTarget_id2 = Shading_id30(streams);
}
void GenerateNormal_PS_id21(inout PS_STREAMS streams)
{
    if (dot(streams.normalWS_id18, streams.normalWS_id18) > 0)
        streams.normalWS_id18 = normalize(streams.normalWS_id18);
    streams.meshNormalWS_id16 = streams.normalWS_id18;
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
void PSMain_id19(inout PS_STREAMS streams)
{
    GenerateNormal_PS_id21(streams);
    PSMain_id3(streams);
}
void GenerateNormal_VS_id20(inout VS_STREAMS streams)
{
    streams.meshNormalWS_id16 = mul(streams.meshNormal_id15, (float3x3)WorldInverseTranspose_id33);
    streams.normalWS_id18 = streams.meshNormalWS_id16;
}
void VSMain_id9(inout VS_STREAMS streams)
{
    VSMain_id0();
    BaseTransformVS_id8(streams);
}
PS_OUTPUT PSMain(PS_INPUT __input__)
{
    PS_STREAMS streams = (PS_STREAMS)0;
    streams.PositionWS_id21 = __input__.PositionWS_id21;
    streams.normalWS_id18 = __input__.normalWS_id18;
    streams.TexCoord_id133 = __input__.TexCoord_id133;
    PSMain_id19(streams);
    clip(streams.ColorTarget_id2.a - streams.matAlphaDiscard_id66);
    PS_OUTPUT __output__ = (PS_OUTPUT)0;
    __output__.ColorTarget_id2 = streams.ColorTarget_id2;
    return __output__;
}
VS_OUTPUT VSMain(VS_INPUT __input__)
{
    VS_STREAMS streams = (VS_STREAMS)0;
    streams.Position_id20 = __input__.Position_id20;
    streams.meshNormal_id15 = __input__.meshNormal_id15;
    streams.TexCoord_id133 = __input__.TexCoord_id133;
    VSMain_id9(streams);
    GenerateNormal_VS_id20(streams);
    VS_OUTPUT __output__ = (VS_OUTPUT)0;
    __output__.PositionWS_id21 = streams.PositionWS_id21;
    __output__.ShadingPosition_id0 = streams.ShadingPosition_id0;
    __output__.normalWS_id18 = streams.normalWS_id18;
    __output__.TexCoord_id133 = streams.TexCoord_id133;
    return __output__;
}
