/**************************
***** Compiler Parameters *****
***************************
@P EffectName: VLEffectMain.ShadowMapCaster
@P   - Material.PixelStageSurfaceShaders: mixin MaterialSurfaceArray [{layers = [mixin MaterialSurfaceDiffuse [{diffuseMap = mixin Float4ToColor [{Value = mixin DoFloat4 [{Before = mixin ComputeOrder [{Computes = [mixin AssignVarFloat4<Input_0> [{Value = InputFloat4<ShaderFX.InputValueFloat4,PerMaterial>}]]}]}, {Value = GetVarFloat4<Input_0>}]}]}], mixin MaterialSurfaceGlossinessMap<true> [{glossinessMap = mixin FloatToScalar [{Value = mixin DoFloat [{Before = mixin ComputeOrder [{Computes = [mixin AssignVarFloat<Input_1> [{Value = InputFloat<ShaderFX.InputValueFloat,PerMaterial>}]]}]}, {Value = GetVarFloat<Input_1>}]}]}], mixin MaterialSurfaceMetalness [{metalnessMap = mixin FloatToScalar [{Value = mixin DoFloat [{Before = mixin ComputeOrder [{Computes = [mixin AssignVarFloat<Input_2> [{Value = InputFloat<ShaderFX.InputValueFloat.i1,PerMaterial>}]]}]}, {Value = GetVarFloat<Input_2>}]}]}], mixin MaterialSurfaceSetStreamFromComputeColor<matAlphaDiscard,r> [{computeColorSource = ComputeColorConstantFloatLink<Material.AlphaDiscardValue>}], mixin MaterialSurfaceLightingAndShading [{surfaces = [MaterialSurfaceShadingDiffuseLambert<false>, mixin MaterialSurfaceShadingSpecularMicrofacet [{environmentFunction = MaterialSpecularMicrofacetEnvironmentGGXLUT}, {fresnelFunction = MaterialSpecularMicrofacetFresnelSchlick}, {geometricShadowingFunction = MaterialSpecularMicrofacetVisibilitySmithSchlickGGX}, {normalDistributionFunction = MaterialSpecularMicrofacetNormalDistributionGGX}]]}], MaterialSurfaceTransparentAlphaDiscard]}]
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
@C    InputValue_id83 => ShaderFX.InputValueFloat4
@C    InputValue_id91 => ShaderFX.InputValueFloat
@C    InputValue_id100 => ShaderFX.InputValueFloat.i1
@C    constantFloat_id168 => Material.AlphaDiscardValue
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
@R    EnvironmentLightingDFG_LUT_id175 => MaterialSpecularMicrofacetEnvironmentGGXLUT.EnvironmentLightingDFG_LUT [Stage: None, Slot: (-1--1)]
@R    EnvironmentLightingDFG_LUT_id175 => MaterialSpecularMicrofacetEnvironmentGGXLUT.EnvironmentLightingDFG_LUT [Stage: None, Slot: (-1--1)]
@R    PerDraw => PerDraw [Stage: Vertex, Slot: (0-0)]
@R    PerView => PerView [Stage: Vertex, Slot: (1-1)]
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
@S    Texturing => 6605f68230266eff2bc8b4e8102ede6b
@S    ComputeColorConstantFloatLink => 67c5dd9d320c3e22be10134f9f78fe1f
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
@S    MaterialSurfaceTransparentAlphaDiscard => 837e2cafe8aa58fd650cafb9b02f586b
***************************
*****     Stages      *****
***************************
@G    Vertex => 4fd5f2026fdd3bcfbe35e062a609e9e1
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
//
//
// Output signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// POSITION_WS              0   xyzw        0     NONE   float   xyzw
// SV_Position              0   xyzw        1      POS   float   xyzw
// NORMALWS                 0   xyz         2     NONE   float   xyz 
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
dcl_temps 1
//
// Initial variable locations:
//   v0.x <- __input__.Position_id20.x; v0.y <- __input__.Position_id20.y; v0.z <- __input__.Position_id20.z; v0.w <- __input__.Position_id20.w; 
//   v1.x <- __input__.meshNormal_id15.x; v1.y <- __input__.meshNormal_id15.y; v1.z <- __input__.meshNormal_id15.z; 
//   o2.x <- <VSMain return value>.normalWS_id18.x; o2.y <- <VSMain return value>.normalWS_id18.y; o2.z <- <VSMain return value>.normalWS_id18.z; 
//   o1.x <- <VSMain return value>.ShadingPosition_id0.x; o1.y <- <VSMain return value>.ShadingPosition_id0.y; o1.z <- <VSMain return value>.ShadingPosition_id0.z; o1.w <- <VSMain return value>.ShadingPosition_id0.w; 
//   o0.x <- <VSMain return value>.PositionWS_id21.x; o0.y <- <VSMain return value>.PositionWS_id21.y; o0.z <- <VSMain return value>.PositionWS_id21.z; o0.w <- <VSMain return value>.PositionWS_id21.w
//
#line 487 "C:\Users\elektromeier\Desktop\VomAmt\VomAmtVR\lib\log\shader_VLEffectMain_ShadowMapCaster_4b262c9be9dfe6f7a14e2825145e297a.hlsl"
dp4 r0.x, v0.xyzw, cb0[0].xyzw  // r0.x <- streams.PositionWS_id21.x
dp4 r0.y, v0.xyzw, cb0[1].xyzw  // r0.y <- streams.PositionWS_id21.y
dp4 r0.z, v0.xyzw, cb0[2].xyzw  // r0.z <- streams.PositionWS_id21.z
dp4 r0.w, v0.xyzw, cb0[3].xyzw  // r0.w <- streams.PositionWS_id21.w

#line 547
mov o0.xyzw, r0.xyzw

#line 455
dp4 o1.x, r0.xyzw, cb1[16].xyzw
dp4 o1.y, r0.xyzw, cb1[17].xyzw
dp4 o1.z, r0.xyzw, cb1[18].xyzw
dp4 o1.w, r0.xyzw, cb1[19].xyzw

#line 516
dp3 o2.x, v1.xyzx, cb0[8].xyzx
dp3 o2.y, v1.xyzx, cb0[9].xyzx
dp3 o2.z, v1.xyzx, cb0[10].xyzx

#line 547
ret 
// Approximately 13 instruction slots used
@G    Pixel => c0b890d7273225db78d98bde8ec1963f
//
// Generated by Microsoft (R) HLSL Shader Compiler 10.1
//
//
// Buffer Definitions: 
//
// cbuffer PerMaterial
// {
//
//   float4 InputValue_id83;            // Offset:    0 Size:    16
//   float InputValue_id91;             // Offset:   16 Size:     4 [unused]
//   float InputValue_id100;            // Offset:   20 Size:     4 [unused]
//   float constantFloat_id168;         // Offset:   24 Size:     4
//
// }
//
//
// Resource Bindings:
//
// Name                                 Type  Format         Dim      HLSL Bind  Count
// ------------------------------ ---------- ------- ----------- -------------- ------
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
// SV_IsFrontFace           0   x           3    FFACE    uint       
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
dcl_output o0.xyzw
dcl_temps 1
//
// Initial variable locations:
//   v0.x <- __input__.PositionWS_id21.x; v0.y <- __input__.PositionWS_id21.y; v0.z <- __input__.PositionWS_id21.z; v0.w <- __input__.PositionWS_id21.w; 
//   v1.x <- __input__.ShadingPosition_id0.x; v1.y <- __input__.ShadingPosition_id0.y; v1.z <- __input__.ShadingPosition_id0.z; v1.w <- __input__.ShadingPosition_id0.w; 
//   v2.x <- __input__.normalWS_id18.x; v2.y <- __input__.normalWS_id18.y; v2.z <- __input__.normalWS_id18.z; 
//   v3.x <- __input__.IsFrontFace_id1; 
//   o0.x <- <PSMain return value>.ColorTarget_id2.x; o0.y <- <PSMain return value>.ColorTarget_id2.y; o0.z <- <PSMain return value>.ColorTarget_id2.z; o0.w <- <PSMain return value>.ColorTarget_id2.w
//
#line 339 "C:\Users\elektromeier\Desktop\VomAmt\VomAmtVR\lib\log\shader_VLEffectMain_ShadowMapCaster_4b262c9be9dfe6f7a14e2825145e297a.hlsl"
lt r0.x, cb0[0].w, cb0[1].z

#line 341
discard_nz r0.x

#line 531
add r0.x, cb0[0].w, -cb0[1].z
lt r0.x, r0.x, l(0.000000)
discard_nz r0.x

#line 534
mov o0.xyz, l(0,0,0,0)
mov o0.w, cb0[0].w
ret 
// Approximately 8 instruction slots used
***************************
*************************/
const static bool TInvert_id97 = true;
static const float PI_id174 = 3.14159265358979323846;
struct PS_STREAMS 
{
    float3 normalWS_id18;
    float4 PositionWS_id21;
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
    float4 Input_0_id82;
    float Input_1_id90;
    float Input_2_id99;
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
    bool IsFrontFace_id1 : SV_IsFrontFace;
};
struct VS_STREAMS 
{
    float4 Position_id20;
    float3 meshNormal_id15;
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
};
struct VS_INPUT 
{
    float4 Position_id20 : POSITION;
    float3 meshNormal_id15 : NORMAL;
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
    float4 InputValue_id83;
    float InputValue_id91;
    float InputValue_id100;
    float constantFloat_id168;
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
Texture2D EnvironmentLightingDFG_LUT_id175;
float Compute_id154()
{
    return InputValue_id100;
}
float Compute_id142()
{
    return InputValue_id91;
}
float4 Compute_id130()
{
    return InputValue_id83;
}
void Compute_id157(inout PS_STREAMS streams)
{
    streams.Input_2_id99 = Compute_id154();
}
void Compute_id145(inout PS_STREAMS streams)
{
    streams.Input_1_id90 = Compute_id142();
}
void Compute_id133(inout PS_STREAMS streams)
{
    streams.Input_0_id82 = Compute_id130();
}
float Compute_id160(inout PS_STREAMS streams)
{
    return streams.Input_2_id99;
}
void Compute_id159(inout PS_STREAMS streams)
{

    {
        Compute_id157(streams);
    }
}
float Compute_id148(inout PS_STREAMS streams)
{
    return streams.Input_1_id90;
}
void Compute_id147(inout PS_STREAMS streams)
{

    {
        Compute_id145(streams);
    }
}
float4 Compute_id136(inout PS_STREAMS streams)
{
    return streams.Input_0_id82;
}
void Compute_id135(inout PS_STREAMS streams)
{

    {
        Compute_id133(streams);
    }
}
float Compute_id163(inout PS_STREAMS streams)
{
    Compute_id159(streams);
    return Compute_id160(streams);
}
float Compute_id151(inout PS_STREAMS streams)
{
    Compute_id147(streams);
    return Compute_id148(streams);
}
float4 Compute_id139(inout PS_STREAMS streams)
{
    Compute_id135(streams);
    return Compute_id136(streams);
}
void ResetStream_id127()
{
}
void AfterLightingAndShading_id317()
{
}
void AfterLightingAndShading_id298()
{
}
void PrepareForLightingAndShading_id314()
{
}
void PrepareForLightingAndShading_id295()
{
}
void PrepareMaterialForLightingAndShading_id123(inout PS_STREAMS streams)
{
    streams.lightDirectAmbientOcclusion_id49 = lerp(1.0, streams.matAmbientOcclusion_id56, streams.matAmbientOcclusionDirectLightingFactor_id57);
    streams.matDiffuseVisible_id68 = streams.matDiffuse_id52.rgb * lerp(1.0f, streams.matCavity_id58, streams.matCavityDiffuse_id59) * streams.matDiffuseSpecularAlphaBlend_id64.r * streams.matAlphaBlendColor_id65;
    streams.matSpecularVisible_id70 = streams.matSpecular_id54.rgb * streams.matSpecularIntensity_id55 * lerp(1.0f, streams.matCavity_id58, streams.matCavitySpecular_id60) * streams.matDiffuseSpecularAlphaBlend_id64.g * streams.matAlphaBlendColor_id65;
    streams.NdotV_id71 = max(dot(streams.normalWS_id18, streams.viewWS_id67), 0.0001f);
    float roughness = 1.0f - streams.matGlossiness_id53;
    streams.alphaRoughness_id69 = max(roughness * roughness, 0.001);
}
void ResetLightStream_id122(inout PS_STREAMS streams)
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
void UpdateNormalFromTangentSpace_id22(float3 normalInTangentSpace)
{
}
float4 Compute_id166()
{
    return float4(constantFloat_id168, constantFloat_id168, constantFloat_id168, constantFloat_id168);
}
float4 Compute_id165(inout PS_STREAMS streams)
{
    float x = Compute_id163(streams);
    return float4(x, x, x, x);
}
float4 Compute_id153(inout PS_STREAMS streams)
{
    float x = Compute_id151(streams);
    return float4(x, x, x, x);
}
float4 Compute_id141(inout PS_STREAMS streams)
{
    return Compute_id139(streams);
}
void ResetStream_id128(inout PS_STREAMS streams)
{
    ResetStream_id127();
    streams.matBlend_id39 = 0.0f;
}
void Compute_id384(inout PS_STREAMS streams)
{
    if (streams.shadingColorAlpha_id73 < streams.matAlphaDiscard_id66)
    {
        discard;
    }
}
void Compute_id383(inout PS_STREAMS streams)
{
    UpdateNormalFromTangentSpace_id22(streams.matNormal_id50);
    if (!streams.IsFrontFace_id1)
        streams.normalWS_id18 = -streams.normalWS_id18;
    ResetLightStream_id122(streams);
    PrepareMaterialForLightingAndShading_id123(streams);

    {
        PrepareForLightingAndShading_id295();
    }

    {
        PrepareForLightingAndShading_id314();
    }
    float3 directLightingContribution = 0;
    float3 environmentLightingContribution = 0;
    streams.shadingColor_id72 += directLightingContribution * PI_id174 + environmentLightingContribution;
    streams.shadingColorAlpha_id73 = streams.matDiffuse_id52.a;

    {
        AfterLightingAndShading_id298();
    }

    {
        AfterLightingAndShading_id317();
    }
}
void Compute_id367(inout PS_STREAMS streams)
{
    streams.matAlphaDiscard_id66 = Compute_id166().r;
}
void Compute_id362(inout PS_STREAMS streams)
{
    float metalness = Compute_id165(streams).r;
    streams.matSpecular_id54 = lerp(0.02, streams.matDiffuse_id52.rgb, metalness);
    streams.matDiffuse_id52.rgb = lerp(streams.matDiffuse_id52.rgb, 0, metalness);
}
void Compute_id357(inout PS_STREAMS streams)
{
    float glossiness = Compute_id153(streams).r;

    {
        glossiness = 1.0 - glossiness;
    }
    streams.matGlossiness_id53 = glossiness;
}
void Compute_id352(inout PS_STREAMS streams)
{
    float4 colorBase = Compute_id141(streams);
    streams.matDiffuse_id52 = colorBase;
    streams.matColorBase_id51 = colorBase;
}
void ResetStream_id129(inout PS_STREAMS streams)
{
    ResetStream_id128(streams);
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
void Compute_id45(inout PS_STREAMS streams)
{

    {
        Compute_id352(streams);
    }

    {
        Compute_id357(streams);
    }

    {
        Compute_id362(streams);
    }

    {
        Compute_id367(streams);
    }

    {
        Compute_id383(streams);
    }

    {
        Compute_id384(streams);
    }
}
void ResetStream_id44(inout PS_STREAMS streams)
{
    ResetStream_id129(streams);
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
    ResetStream_id44(streams);
    Compute_id45(streams);
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
    streams.IsFrontFace_id1 = __input__.IsFrontFace_id1;
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
    VSMain_id9(streams);
    GenerateNormal_VS_id20(streams);
    VS_OUTPUT __output__ = (VS_OUTPUT)0;
    __output__.PositionWS_id21 = streams.PositionWS_id21;
    __output__.ShadingPosition_id0 = streams.ShadingPosition_id0;
    __output__.normalWS_id18 = streams.normalWS_id18;
    return __output__;
}
