#define ENV_WATER
#include "Common.fxh"

float3 NoCloudMultiplier <bool unmanaged = 1;> = { 1, 1, 1 };
float3 RecolorColorDummy <bool unmanaged = 1;>;
texture StaticDisplacementTexture <string SasBindAddress = "Water.StaticDisplacementTexture";>; // 13
sampler2D StaticDisplacementTextureSampler : register(ps_2_0, s0) 
<
    string Texture = "StaticDisplacementTexture"; 
    string SasBindAddress = "Water.StaticDisplacementTexture";
> = sampler_state {
    Texture = <StaticDisplacementTexture>; // 15
    MinFilter = 2;
    MagFilter = 2;
    MipFilter = 2;
    AddressU = 1;
    AddressV = 1;
};
texture WaterReflectionTexture <string UIWidget = "None"; string SasBindAddress = "Water.ReflectionTexture";>; // 18
sampler2D WaterReflectionTextureSampler
<
    string Texture = "WaterReflectionTexture"; 
    string UIWidget = "None"; string SasBindAddress = "Water.ReflectionTexture";
> = sampler_state {
    Texture = <WaterReflectionTexture>; // 21
    MipFilter = 1;
    MinFilter = 2;
    MagFilter = 2;
    AddressU = 3;
    AddressV = 3;
};
texture WaterRefractionTexture <string UIWidget = "None"; string SasBindAddress = "Water.RefractionTexture";>; // 25
sampler2D WaterRefractionTextureSampler : register(ps_2_0, s1) 
<
    string Texture = "WaterRefractionTexture"; 
    string UIWidget = "None"; 
    string SasBindAddress = "Water.RefractionTexture";
> = sampler_state {
    Texture = <WaterRefractionTexture>; // 28
    MipFilter = 1;
    MinFilter = 2;
    MagFilter = 2;
    AddressU = 3;
    AddressV = 3;
};
texture ShroudSampler <string UIWidget = "None"; string SasBindAddress = "Terrain.Shroud.Texture";>; // 43
sampler2D ShroudSamplerSampler 
<
    string Texture = "ShroudSampler"; 
    string UIWidget = "None"; 
    string SasBindAddress = "Terrain.Shroud.Texture";
> = sampler_state {
    Texture = <ShroudSampler>; // 46
    MinFilter = 2;
    MagFilter = 2;
    MipFilter = 2;
    AddressU = 3;
    AddressV = 3;
};
float4 MaterialColorDiffuse <string UIName = "Diffuse Material Color"; string UIWidget = "Color";> = { 1, 1, 1, 0 };
texture Foam <string UIName = "FoamMap";>; // 52
sampler2D FoamSampler : register(ps_2_0, s2) 
<
    string Texture = "Foam"; 
    string UIName = "FoamMap";
> = sampler_state {
    Texture = <Foam>; // 54
    MinFilter = 3;
    MagFilter = 2;
    MipFilter = 2;
    AddressU = 1;
    AddressV = 1;
};
float FoamHeight <string UIName = "Foam Mask Height"; string UIWidget = "Slider"; float UIMax = 25; float UIMin = -25; float UIStep = 0.1;>;
float FoamBlend <string UIName = "Foam Mask Blend"; string UIWidget = "Slider"; float UIMax = 25; float UIMin = 0.1; float UIStep = 0.1;> = { 1 };
float Foam1Scalar <string UIName = "Foam 1 Scale"; string UIWidget = "Slider"; float UIMax = 50; float UIMin = 0; float UIStep = 0.01;> = { 1 };
float Foam2Scalar <string UIName = "Foam 2 Scale"; string UIWidget = "Slider"; float UIMax = 50; float UIMin = 0; float UIStep = 0.01;> = { 1 };
float FoamSpeed <string UIName = "Foam Speed"; string UIWidget = "Slider"; float UIMax = 50; float UIMin = -50; float UIStep = 0.01;> = { 1 };
float OctaveScalar <string UIName = "Octave Scale"; string UIWidget = "Slider"; float UIMax = 50; float UIMin = 0; float UIStep = 0.01;> = { 1 };
float OctaveDivergenceAngle <string UIName = "Octave Divergence Angle"; string UIWidget = "Slider"; float UIMax = 180; float UIMin = 0; float UIStep = 0.5;>;
float OctaveSpeed <string UIName = "Octave Speed"; string UIWidget = "Slider"; float UIMax = 50; float UIMin = 0; float UIStep = 0.01;> = { 1 };
float OctaveDivergenceSpeed <string UIName = "Octave Divergence Speed"; string UIWidget = "Slider"; float UIMax = 10; float UIMin = 0; float UIStep = 0.001;>;
float WaveAmplitude : register(vs_2_0, c31) <string UIName = "Wave Amplitude"; string UIWidget = "Slider"; float UIMin = 0; float UIMax = 3; float UIStep = 0.1;> = { 3 };
float WaveFrequency : register(vs_2_0, c32) <string UIName = "Wave frequency"; string UIWidget = "Slider"; float UIMin = 0; float UIMax = 6; float UIStep = 0.01;> = { 0.2 };
texture DisplacementTexture <string SasBindAddress = "Water.DisplacementTexture";>; // 79
sampler2D DisplacementTextureSampler : register(vs_3_0, s0) 
<
    string Texture = "DisplacementTexture"; 
    string SasBindAddress = "Water.DisplacementTexture";
> = sampler_state {
    Texture = <DisplacementTexture>; // 81
    MinFilter = 2;
    MagFilter = 2;
    MipFilter = 1;
    AddressU = 3;
    AddressV = 3;
};
float DisplacementTextureSize <string SasBindAddress = "Water.DisplacementTextureSize";>;
struct
{
    float frequency;
    float amplitude;
    float phase;
    float2 direction;
} wave[3] : register(vs_2_0, c11) = { 0.1, 1, 1, 0.2, -0.7, 0.25, 0.5, 0.5, -1, -0.7, 0.15, 0.5, 1.5, -1, 0.2 };

// PS_WaterShadowMap_Array_Shader_0 Pixel_3_0 Has PRES True
struct PS_WaterShadowMap_Array_Shader_0_Input
{
    float4 color : COLOR;
    float4 texcoord : TEXCOORD;
    float4 texcoord1 : TEXCOORD1;
    float4 texcoord3 : TEXCOORD3;
    float4 texcoord4 : TEXCOORD4;
    float2 texcoord5 : TEXCOORD5;
};

float4 PS_WaterShadowMap_Array_Shader_0(PS_WaterShadowMap_Array_Shader_0_Input i) : COLOR
{
    /*
    PRSI
      OutputRegisterOffset: 11
      Unknown1: 0
      Unknown2: 0
      OutputRegisterCount: 1
      Unknown3: 0
      Unknown4: 0
      Unknown5: 11
      Unknown6: 1
      Mappings: 1
        0 - ConstOutput: 0 ConstInput 0
    
    */
    float4 expr11;
    {
        // Expression_2_1
        // rcp c11.x, c0.x
        expr11.x = 1.0f / (DisplacementTextureSize.x);
    }

    float4 out_color;
    float4 temp0, temp1, temp2, temp3, temp4;
    // def c0, 2, -1, 1, 0
    // def c1, 50, 0.5, 0.2, 2.2
    // def c2, 50, 0, 1, 0.025
    // def c3, 3, 0.15, -0.1, 0
    // dcl_color v0.w
    // dcl_texcoord v1
    // dcl_texcoord1 v2
    // dcl_texcoord3 v3
    // dcl_texcoord4 v4
    // dcl_texcoord5 v5.xy
    // dcl_2d s0
    // dcl_2d s1
    // dcl_2d s2
    // dcl_cube s3
    // dcl_2d s4
    // dcl_2d s5
    // dcl_2d s6
    // mov r0.zw, c0
    temp0.zw = float2(1, 0);
    // mad r0.xy, c11.x, r0.zwzw, v4
    temp0.xy = expr11.xx * temp0.zw + i.texcoord4.xy;
    // texld r1, r0, s6
    temp1 = tex2D(DisplacementTextureSampler, temp0.xy);
    // texld r2, v4, s6
    temp2 = tex2D(DisplacementTextureSampler, i.texcoord4.xy);
    // add r0.x, r1.z, -r2.z
    temp0.x = temp1.z + -temp2.z;
    // mad r0.zw, c11.x, r0.xywz, v4.xyxy
    temp0.zw = expr11.xx * temp0.wz + i.texcoord4.xy;
    // texld r1, r0.zwzw, s6
    temp1 = tex2D(DisplacementTextureSampler, temp0.zw);
    // add r0.y, -r2.z, r1.z
    temp0.y = -temp2.z + temp1.z;
    // mul r0.xy, r0, c1.x
    temp0.xy = temp0.xy * float2(50, 50);
    // texld r1, v2, s0
    temp1 = tex2D(StaticDisplacementTextureSampler, i.texcoord1.xy);
    // mad r1.xyz, r1, c0.x, c0.y
    temp1.xyz = temp1.xyz * float3(2, 2, 2) + float3(-1, -1, -1);
    // texld r2, v2.zwzw, s0
    temp2 = tex2D(StaticDisplacementTextureSampler, i.texcoord1.zw);
    // mad r1.xyz, r2, c0.x, r1
    temp1.xyz = temp2.xyz * float3(2, 2, 2) + temp1.xyz;
    // add r1.xyz, r1, c0.y
    temp1.xyz = temp1.xyz + float3(-1, -1, -1);
    // mov r0.z, c1.y
    temp0.z = float1(0.5);
    // mad r0.xyz, r1, c1.z, r0
    temp0.xyz = temp1.xyz * float3(0.2, 0.2, 0.2) + temp0.xyz;
    // nrm r1.xyz, r0
    temp1.xyz = normalize(temp0.xyz);
    // mad r0.xyz, r1, c2.x, c2.yyzw
    temp0.xyz = temp1.xyz * float3(50, 50, 50) + float3(0, 0, 1);
    // nrm r1.xyz, r0
    temp1.xyz = normalize(temp0.xyz);
    // add r0.xyz, c123, -v3
    temp0.xyz = EyePosition.xyz + -i.texcoord3.xyz;
    // nrm r2.xyz, r0
    temp2.xyz = normalize(temp0.xyz);
    // dp3 r0.x, r2, r1
    temp0.x = dot(temp2.xyz, temp1.xyz);
    // add r0.y, r0.x, r0.x
    temp0.y = temp0.x + temp0.x;
    // add r0.x, -r0.x, c0.z
    temp0.x = -temp0.x + float1(1);
    // mad r0.yzw, r1.xxyz, -r0.y, r2.xxyz
    temp0.yzw = temp1.xyz * -temp0.yyy + temp2.xyz;
    // mov r0.yzw, -r0
    temp0.yzw = -temp0.yzw;
    // texld r2, r0.yzww, s3
    temp2 = texCUBE(EnvironmentTextureSampler, temp0.yzw);
    // log r0.y, r2.x
    temp0.y = log2(temp2.x);
    // log r0.z, r2.y
    temp0.z = log2(temp2.y);
    // log r0.w, r2.z
    temp0.w = log2(temp2.z);
    // mul r0.yzw, r0, c1.w
    temp0.yzw = temp0.yzw * float3(2.2, 2.2, 2.2);
    // exp r2.x, r0.y
    temp2.x = exp2(temp0.y);
    // exp r2.y, r0.z
    temp2.y = exp2(temp0.z);
    // exp r2.z, r0.w
    temp2.z = exp2(temp0.w);
    // mul r0.yzw, r2.xxyz, c5.xxyz
    temp0.yzw = temp2.xyz * DirectionalLight[0].Color.xyz;
    // mul r0.xyz, r0.x, r0.yzww
    temp0.xyz = temp0.xxx * temp0.yzw;
    // mul r1.zw, r1.xyxy, c1.z
    temp1.zw = temp1.xy * float2(0.2, 0.2);
    // mad r1.xy, r1, c3.y, v4.zwzw
    temp1.xy = temp1.xy * float2(0.15, 0.15) + i.texcoord4.zw;
    // mad r2, v3.xyzx, c0.zzzw, c0.wwwz
    temp2 = i.texcoord3.xyzx * float4(1, 1, 1, 0) + float4(0, 0, 0, 1);
    // dp4 r3.x, r2, c119
    temp3.x = dot(temp2, (ViewProjection._m00_m10_m20_m30));
    // dp4 r3.y, r2, c120
    temp3.y = dot(temp2, (ViewProjection._m01_m11_m21_m31));
    // dp4 r0.w, r2, c122
    temp0.w = dot(temp2, (ViewProjection._m03_m13_m23_m33));
    // add r2.xy, r3, r0.w
    temp2.xy = temp3.xy + temp0.ww;
    // rcp r0.w, r0.w
    temp0.w = 1.0f / temp0.w;
    // mul r2.xy, r2, c1.y
    temp2.xy = temp2.xy * float2(0.5, 0.5);
    // mad r1.zw, r2.xyxy, r0.w, r1
    temp1.zw = temp2.xy * temp0.ww + temp1.zw;
    // texld r2, r1.zwzw, s1
    temp2 = tex2D(WaterReflectionTextureSampler, temp1.zw);
    // texld r3, v1, s5
    temp3 = tex2D(FoamSampler, i.texcoord.xy);
    // texld r4, v1.zwzw, s5
    temp4 = tex2D(FoamSampler, i.texcoord.zw);
    // mul r3.xyz, r3, r4
    temp3.xyz = temp3.xyz * temp4.xyz;
    // mul r3.xyz, r3, r3
    temp3.xyz = temp3.xyz * temp3.xyz;
    // mul r0.w, c1.z, v3.w
    temp0.w = float1(0.2) * i.texcoord3.w;
    // max r1.z, r0.w, c2.w
    temp1.z = max(temp0.w, float1(0.025));
    // min r0.w, r1.z, c3.x
    temp0.w = min(temp1.z, float1(3));
    // mul r3.xyz, r3, r0.w
    temp3.xyz = temp3.xyz * temp0.www;
    // mul r3.xyz, r3, c5
    temp3.xyz = temp3.xyz * DirectionalLight[0].Color.xyz;
    // mad r2.xyz, r2, c1.y, r3
    temp2.xyz = temp2.xyz * float3(0.5, 0.5, 0.5) + temp3.xyz;
    // mad r0.xyz, r0, c0.x, r2
    temp0.xyz = temp0.xyz * float3(2, 2, 2) + temp2.xyz;
    // texld r1, r1, s2
    temp1 = tex2D(WaterRefractionTextureSampler, temp1.xy);
    // texld r2, v4.zwzw, s2
    temp2 = tex2D(WaterRefractionTextureSampler, i.texcoord4.zw);
    // add r3.xyz, r1, -r2
    temp3.xyz = temp1.xyz + -temp2.xyz;
    // dp3 r0.w, r3, r3
    temp0.w = dot(temp3.xyz, temp3.xyz);
    // rsq r0.w, r0.w
    temp0.w = 1 / sqrt(temp0.w);
    // rcp r0.w, r0.w
    temp0.w = 1.0f / temp0.w;
    // add r0.w, r0.w, c3.z
    temp0.w = temp0.w + float1(-0.1);
    // cmp r1.xyz, r0.w, r2, r1
    temp1.xyz = (temp0.www >= 0) ? temp2.xyz : temp1.xyz;
    // texld r2, v5, s4
    // max 0.2: 尝试把水的黑边给去掉
    temp2 = max(0.2, tex2D(ShroudSamplerSampler, i.texcoord5.xy));
    // mad oC0.xyz, r2.x, r0, r1
    out_color.xyz = temp2.xxx * temp0.xyz + temp1.xyz;
    // mov oC0.w, v0.w
    out_color.w = i.color.w;
    // 

    return out_color;
}

// PS_WaterShadowMap_Array_Shader_1 Pixel_3_0 Has PRES True
struct VS_High_Output
{
    float4 position : POSITION;
    float4 color : COLOR;
    float4 texcoord : TEXCOORD;
    float4 texcoord1 : TEXCOORD1;
    float4 texcoord2 : TEXCOORD2;
    float4 texcoord3 : TEXCOORD3;
    float4 ModelUV_UnknownZW : TEXCOORD4;
    float2 ShroudUV : TEXCOORD5;
};

float4 PS_WaterShadowMap_Array_Shader_1(VS_High_Output i) : COLOR
{
    /*
    PRSI
      OutputRegisterOffset: 12
      Unknown1: 0
      Unknown2: 0
      OutputRegisterCount: 1
      Unknown3: 0
      Unknown4: 0
      Unknown5: 12
      Unknown6: 1
      Mappings: 1
        0 - ConstOutput: 0 ConstInput 0
    
    */
    float4 expr12;
    {
        // Expression_2_1
        // rcp c12.x, c0.x
        expr12.x = 1.0f / (DisplacementTextureSize.x);
    }

    float4 out_color;
    float4 temp0, temp1, temp2, temp3, temp4;
    // def c0, 2, -1, 1, 0
    // def c1, 50, 0.5, 0.2, 0.01
    // def c2, 50, 0, 1, 0.25
    // def c3, 2.2, 0.025, 3, 0.15
    // def c4, -0.1, 0, 0, 0
    // dcl_color v0.w
    // dcl_texcoord v1
    // dcl_texcoord1 v2
    // dcl_texcoord2 v3.xyz
    // dcl_texcoord3 v4
    // dcl_texcoord4 v5
    // dcl_texcoord5 v6.xy
    // dcl_2d s0
    // dcl_2d s1
    // dcl_2d s2
    // dcl_2d s3
    // dcl_cube s4
    // dcl_2d s5
    // dcl_2d s6
    // dcl_2d s7
    // mov r0.zw, c0
    temp0.zw = float2(1, 0);
    // mad r0.xy, c12.x, r0.zwzw, v5
    temp0.xy = expr12.xx * temp0.zw + i.ModelUV_UnknownZW.xy;
    // texld r1, r0, s7
    temp1 = tex2D(DisplacementTextureSampler, temp0.xy);
    // texld r2, v5, s7
    temp2 = tex2D(DisplacementTextureSampler, i.ModelUV_UnknownZW.xy);
    // add r0.x, r1.z, -r2.z
    temp0.x = temp1.z + -temp2.z;
    // mad r0.zw, c12.x, r0.xywz, v5.xyxy
    temp0.zw = expr12.xx * temp0.wz + i.ModelUV_UnknownZW.xy;
    // texld r1, r0.zwzw, s7
    temp1 = tex2D(DisplacementTextureSampler, temp0.zw);
    // add r0.y, -r2.z, r1.z
    temp0.y = -temp2.z + temp1.z;
    // mul r0.xy, r0, c1.x
    temp0.xy = temp0.xy * float2(50, 50);
    // texld r1, v2, s1
    temp1 = tex2D(StaticDisplacementTextureSampler, i.texcoord1.xy);
    // mad r1.xyz, r1, c0.x, c0.y
    temp1.xyz = temp1.xyz * float3(2, 2, 2) + float3(-1, -1, -1);
    // texld r2, v2.zwzw, s1
    temp2 = tex2D(StaticDisplacementTextureSampler, i.texcoord1.zw);
    // mad r1.xyz, r2, c0.x, r1
    temp1.xyz = temp2.xyz * float3(2, 2, 2) + temp1.xyz;
    // add r1.xyz, r1, c0.y
    temp1.xyz = temp1.xyz + float3(-1, -1, -1);
    // mov r0.z, c1.y
    temp0.z = float1(0.5);
    // mad r0.xyz, r1, c1.z, r0
    temp0.xyz = temp1.xyz * float3(0.2, 0.2, 0.2) + temp0.xyz;
    // nrm r1.xyz, r0
    temp1.xyz = normalize(temp0.xyz);
    // mul r0.xy, r1, c1.w
    temp0.xy = temp1.xy * float2(0.01, 0.01);
    // mad r1.xyz, r1, c2.x, c2.yyzw
    temp1.xyz = temp1.xyz * float3(50, 50, 50) + float3(0, 0, 1);
    // mov r0.z, c0.w
    temp0.z = float1(0);
    // add r0.xyz, r0, v3
    temp0.xyz = temp0.xyz + i.texcoord2.xyz;
    // add r2.xy, r0, c11.zxzw
    temp2.xy = temp0.xy + Shadowmap_Zero_Zero_OneOverMapSize_OneOverMapSize.zx;
    // texld r2, r2, s0
    temp2 = tex2D(ShadowMapSampler, temp2.xy);
    // mov r2.y, r2.x
    temp2.y = temp2.x;
    // add r3.xy, r0, c11.yzzw
    temp3.xy = temp0.xy + Shadowmap_Zero_Zero_OneOverMapSize_OneOverMapSize.yz;
    // texld r3, r3, s0
    temp3 = tex2D(ShadowMapSampler, temp3.xy);
    // mov r2.z, r3.x
    temp2.z = temp3.x;
    // add r3.xy, r0, c11.wzzw
    temp3.xy = temp0.xy + Shadowmap_Zero_Zero_OneOverMapSize_OneOverMapSize.wz;
    // texld r3, r3, s0
    temp3 = tex2D(ShadowMapSampler, temp3.xy);
    // mov r2.w, r3.x
    temp2.w = temp3.x;
    // texld r3, r0, s0
    temp3 = tex2D(ShadowMapSampler, temp0.xy);
    // mov r2.x, r3.x
    temp2.x = temp3.x;
    // add r0, -r0.z, r2
    temp0 = -temp0.z + temp2;
    // cmp r0, r0, c0.z, c0.w
    temp0 = (temp0 >= 0) ? float4(1, 1, 1, 1) : float4(0, 0, 0, 0);
    // dp4 r0.x, c0.z, r0
    temp0.x = dot(float4(1, 1, 1, 1), temp0);
    // mul r0.x, r0.x, c2.w
    temp0.x = temp0.x * float1(0.25);
    // nrm r2.xyz, r1
    temp2.xyz = normalize(temp1.xyz);
    // add r0.yzw, c123.xxyz, -v4.xxyz
    temp0.yzw = EyePosition.xyz + -i.texcoord3.xyz;
    // nrm r1.xyz, r0.yzww
    temp1.xyz = normalize(temp0.yzww.xyz);
    // dp3 r0.y, r1, r2
    temp0.y = dot(temp1.xyz, temp2.xyz);
    // add r0.z, r0.y, r0.y
    temp0.z = temp0.y + temp0.y;
    // add r0.y, -r0.y, c0.z
    temp0.y = -temp0.y + float1(1);
    // mad r1.xyz, r2, -r0.z, r1
    temp1.xyz = temp2.xyz * -temp0.zzz + temp1.xyz;
    // mov r1.xyz, -r1
    temp1.xyz = -temp1.xyz;
    // texld r1, r1, s4
    temp1 = texCUBE(EnvironmentTextureSampler, temp1.xyz);
    // log r3.x, r1.x
    temp3.x = log2(temp1.x);
    // log r3.y, r1.y
    temp3.y = log2(temp1.y);
    // log r3.z, r1.z
    temp3.z = log2(temp1.z);
    // mul r1.xyz, r3, c3.x
    temp1.xyz = temp3.xyz * float3(2.2, 2.2, 2.2);
    // exp r3.x, r1.x
    temp3.x = exp2(temp1.x);
    // exp r3.y, r1.y
    temp3.y = exp2(temp1.y);
    // exp r3.z, r1.z
    temp3.z = exp2(temp1.z);
    // mul r1.xyz, r3, c5
    temp1.xyz = temp3.xyz * DirectionalLight[0].Color.xyz;
    // mul r0.yzw, r0.y, r1.xxyz
    temp0.yzw = temp0.yyy * temp1.xyz;
    // mul r0.xyz, r0.x, r0.yzww
    temp0.xyz = temp0.xxx * temp0.yzw;
    // mul r1.xy, r2, c1.z
    temp1.xy = temp2.xy * float2(0.2, 0.2);
    // mad r1.zw, r2.xyxy, c3.w, v5
    temp1.zw = temp2.xy * float2(0.15, 0.15) + i.ModelUV_UnknownZW.zw;
    // mad r2, v4.xyzx, c0.zzzw, c0.wwwz
    temp2 = i.texcoord3.xyzx * float4(1, 1, 1, 0) + float4(0, 0, 0, 1);
    // dp4 r3.x, r2, c119
    temp3.x = dot(temp2, (ViewProjection._m00_m10_m20_m30));
    // dp4 r3.y, r2, c120
    temp3.y = dot(temp2, (ViewProjection._m01_m11_m21_m31));
    // dp4 r0.w, r2, c122
    temp0.w = dot(temp2, (ViewProjection._m03_m13_m23_m33));
    // add r2.xy, r3, r0.w
    temp2.xy = temp3.xy + temp0.ww;
    // rcp r0.w, r0.w
    temp0.w = 1.0f / temp0.w;
    // mul r2.xy, r2, c1.y
    temp2.xy = temp2.xy * float2(0.5, 0.5);
    // mad r1.xy, r2, r0.w, r1
    temp1.xy = temp2.xy * temp0.ww + temp1.xy;
    // texld r2, r1, s2
    temp2 = tex2D(WaterReflectionTextureSampler, temp1.xy);
    // texld r3, v1, s6
    temp3 = tex2D(FoamSampler, i.texcoord.xy);
    // texld r4, v1.zwzw, s6
    temp4 = tex2D(FoamSampler, i.texcoord.zw);
    // mul r3.xyz, r3, r4
    temp3.xyz = temp3.xyz * temp4.xyz;
    // mul r3.xyz, r3, r3
    temp3.xyz = temp3.xyz * temp3.xyz;
    // mul r0.w, c1.z, v4.w
    temp0.w = float1(0.2) * i.texcoord3.w;
    // max r1.x, r0.w, c3.y
    temp1.x = max(temp0.w, float1(0.025));
    // min r0.w, r1.x, c3.z
    temp0.w = min(temp1.x, float1(3));
    // mul r3.xyz, r3, r0.w
    temp3.xyz = temp3.xyz * temp0.www;
    // mul r3.xyz, r3, c5
    temp3.xyz = temp3.xyz * DirectionalLight[0].Color.xyz;
    // mad r2.xyz, r2, c1.y, r3
    temp2.xyz = temp2.xyz * float3(0.5, 0.5, 0.5) + temp3.xyz;
    // mad r0.xyz, r0, c0.x, r2
    temp0.xyz = temp0.xyz * float3(2, 2, 2) + temp2.xyz;
    // texld r1, r1.zwzw, s3
    temp1 = tex2D(WaterRefractionTextureSampler, temp1.zw);
    // texld r2, v5.zwzw, s3
    temp2 = tex2D(WaterRefractionTextureSampler, i.ModelUV_UnknownZW.zw);
    // add r3.xyz, r1, -r2
    temp3.xyz = temp1.xyz + -temp2.xyz;
    // dp3 r0.w, r3, r3
    temp0.w = dot(temp3.xyz, temp3.xyz);
    // rsq r0.w, r0.w
    temp0.w = 1 / sqrt(temp0.w);
    // rcp r0.w, r0.w
    temp0.w = 1.0f / temp0.w;
    // add r0.w, r0.w, c4.x
    temp0.w = temp0.w + float1(-0.1);
    // cmp r1.xyz, r0.w, r2, r1
    temp1.xyz = (temp0.www >= 0) ? temp2.xyz : temp1.xyz;
    // texld r2, v6, s5
    // max 0.2: 尝试把水的黑边给去掉
    temp2 = max(0.2, tex2D(ShroudSamplerSampler, i.ShroudUV.xy));
    // mad oC0.xyz, r2.x, r0, r1
    out_color.xyz = temp2.xxx * temp0.xyz + temp1.xyz;
    // mov oC0.w, v0.w
    out_color.w = i.color.w;
    // 

    return out_color;
}

PixelShader PS_WaterShadowMap_Array[2] = {
    compile ps_3_0 PS_WaterShadowMap_Array_Shader_0(), // 85
    compile ps_3_0 PS_WaterShadowMap_Array_Shader_1(), // 86
};
// PixelShader3 Pixel_2_0 Has PRES False
struct PixelShader3_Input
{
    float4 color : COLOR;
    float3 texcoord : TEXCOORD;
    float4 texcoord1 : TEXCOORD1;
};

float4 PixelShader3(PixelShader3_Input i) : COLOR
{
    float4 out_color;
    float4 temp0, temp1, temp2;
    // def c0, 0.2, 0, 0, 0
    // dcl v0
    // dcl t0.xyz
    // dcl t1
    // dcl_cube s0
    // dcl_2d s1
    // dcl_2d s2
    // texld r0, t0, s0
    temp0 = texCUBE(EnvironmentTextureSampler, i.texcoord.xyz);
    // mad r0.xyz, r0, c5, v0
    temp0.xyz = temp0.xyz * DirectionalLight[0].Color.xyz + i.color.xyz;
    // mov r1.xy, t1.wzyx
    temp1.xy = i.texcoord1.wz;
    // texld r1, r1, s2
    temp1 = tex2D(FoamSampler, temp1.xy);
    // texld r2, t1, s1
    temp2 = tex2D(ShroudSamplerSampler, i.texcoord1.xy);
    // mad r0.xyz, r1, c0.x, r0
    temp0.xyz = temp1.xyz * float3(0.2, 0.2, 0.2) + temp0.xyz;
    // mov r0.w, v0.w
    temp0.w = i.color.w;
    // mul r0, r2.x, r0
    temp0 = temp2.x * temp0;
    // mov oC0, r0
    out_color = temp0;
    // 

    return out_color;
}

// VertexShader4 Vertex_2_0 Has PRES True
struct VertexShader4_Output
{
    float4 position : POSITION;
    float3 texcoord : TEXCOORD;
    float4 texcoord1 : TEXCOORD1;
    float4 color : COLOR;
};

VertexShader4_Output VertexShader4(float4 position : POSITION)
{
    /*
    PRSI
      OutputRegisterOffset: 15
      Unknown1: 0
      Unknown2: 0
      OutputRegisterCount: 1
      Unknown3: 0
      Unknown4: 0
      Unknown5: 15
      Unknown6: 1
      Mappings: 1
        0 - ConstOutput: 0 ConstInput 0
    
    */
    float4 expr15;
    {
        // Expression_2_1
        // mul c15.x, c0.x, (0.05)
        expr15.x = Time.x * (0.05);
    }

    VertexShader4_Output o;
    float4 temp0;
    float3 temp1, temp2;
    // def c0, 0.01, 0, 0, 0
    // def c1, 1, 0, -0, -2
    // def c2, 0.16, 0.47, 0.69, 0.6
    // dcl_position v0
    // mov r0.w, c1.x
    temp0.w = float1(1);
    // mad r1.xyz, v0.xyxw, c1.xxyw, c1.zzxw
    temp1.xyz = position.xyx * float3(1, 1, 0) + float3(-0, -0, 1);
    // dp3 r0.z, r1, c13.xyww
    temp0.z = dot(temp1.xyz, (World._m02_m12_m22_m32).xyw);
    // dp3 r0.x, r1, c11.xyww
    temp0.x = dot(temp1.xyz, (World._m00_m10_m20_m30).xyw);
    // dp3 r0.y, r1, c12.xyww
    temp0.y = dot(temp1.xyz, (World._m01_m11_m21_m31).xyw);
    // dp4 oPos.x, r0, c119
    o.position.x = dot(temp0, (ViewProjection._m00_m10_m20_m30));
    // dp4 oPos.y, r0, c120
    o.position.y = dot(temp0, (ViewProjection._m01_m11_m21_m31));
    // dp4 oPos.z, r0, c121
    o.position.z = dot(temp0, (ViewProjection._m02_m12_m22_m32));
    // dp4 oPos.w, r0, c122
    o.position.w = dot(temp0, (ViewProjection._m03_m13_m23_m33));
    // add r1.xyz, -r0, c123
    temp1.xyz = -temp0.xyz + EyePosition.xyz;
    // nrm r2.xyz, r1
    temp2.xyz = normalize(temp1.xyz);
    // mad r1.xyz, r2.z, c1.zzww, r2
    temp1.xyz = temp2.zzz * float3(-0, -0, -2) + temp2.xyz;
    // mov oT0.xyz, -r1
    o.texcoord = -temp1;
    // add r0.zw, r0.xyxy, c14
    temp0.zw = temp0.xy + Shroud.ScaleUV_OffsetUV.zw;
    // mov r1.x, c0.x
    temp1.x = float1(0.01);
    // mad oT1.zw, r0.xyyx, r1.x, -c15.x
    o.texcoord1.zw = temp0.yx * temp1.xx + -expr15.xx;
    // mul oT1.xy, r0.zwzw, c14
    o.texcoord1.xy = temp0.zw * Shroud.ScaleUV_OffsetUV.xy;
    // mov oD0, c2
    o.color = float4(0.16, 0.47, 0.69, 0.6);
    // 

    return o;
}

// PixelShader5 Pixel_2_0 Has PRES False
struct PixelShader5_Input
{
    float4 color : COLOR;
    float4 texcoord : TEXCOORD;
    float4 texcoord1 : TEXCOORD1;
    float4 texcoord2 : TEXCOORD2;
    float2 texcoord3 : TEXCOORD3;
};

float4 PixelShader5(PixelShader5_Input i) : COLOR
{
    float4 out_color;
    float4 temp0, temp1, temp2, temp3;
    float3 temp4;
    // def c0, 2, -1, 0.2, 0.5
    // def c1, 50, 0.15, -0.15, 0
    // def c2, 0.16, 0.57, 0.79, 0
    // dcl v0
    // dcl t0
    // dcl t1
    // dcl t2
    // dcl t3.xy
    // dcl_2d s0
    // dcl_2d s1
    // dcl_cube s2
    // dcl_2d s3
    // texld r0, t0, s0
    temp0 = tex2D(StaticDisplacementTextureSampler, i.texcoord.xy);
    // mad r0.xyz, r0, c0.x, c0.y
    temp0.xyz = temp0.xyz * float3(2, 2, 2) + float3(-1, -1, -1);
    // mov r1.x, t0.z
    temp1.x = i.texcoord.z;
    // mov r1.y, t0.w
    temp1.y = i.texcoord.w;
    // texld r1, r1, s0
    temp1 = tex2D(StaticDisplacementTextureSampler, temp1.xy);
    // mad r0.xyz, r1, c0.x, r0
    temp0.xyz = temp1.xyz * float3(2, 2, 2) + temp0.xyz;
    // add r0.xyz, r0, c0.y
    temp0.xyz = temp0.xyz + float3(-1, -1, -1);
    // mul r0.xyz, r0, c0.z
    temp0.xyz = temp0.xyz * float3(0.2, 0.2, 0.2);
    // nrm r1.xyz, r0
    temp1.xyz = normalize(temp0.xyz);
    // mul r1.w, t1.w, c0.w
    temp1.w = i.texcoord1.w * float1(0.5);
    // mad r0.xyz, r1, c1.x, r1.w
    temp0.xyz = temp1.xyz * float3(50, 50, 50) + temp1.www;
    // nrm r1.xyz, r0
    temp1.xyz = normalize(temp0.xyz);
    // dp3 r1.w, t1, r1
    temp1.w = dot(i.texcoord1.xyz, temp1.xyz);
    // add r1.w, r1.w, r1.w
    temp1.w = temp1.w + temp1.w;
    // mad r0.xyz, r1, -r1.w, t1
    temp0.xyz = temp1.xyz * -temp1.www + i.texcoord1.xyz;
    // mad r2.x, r1.x, c1.y, t2.z
    temp2.x = temp1.x * float1(0.15) + i.texcoord2.z;
    // mad r2.y, r1.y, c1.y, t2.w
    temp2.y = temp1.y * float1(0.15) + i.texcoord2.w;
    // mov r0.xyz, -r0
    temp0.xyz = -temp0.xyz;
    // mov r1.x, t2.z
    temp1.x = i.texcoord2.z;
    // mov r1.y, t2.w
    temp1.y = i.texcoord2.w;
    // texld r0, r0, s2
    temp0 = texCUBE(EnvironmentTextureSampler, temp0.xyz);
    // texld r2, r2, s1
    temp2 = tex2D(WaterRefractionTextureSampler, temp2.xy);
    // texld r1, r1, s1
    temp1 = tex2D(WaterRefractionTextureSampler, temp1.xy);
    // texld r3, t3, s3
    temp3 = tex2D(ShroudSamplerSampler, i.texcoord3.xy);
    // mul r0.xyz, r0, c5
    temp0.xyz = temp0.xyz * DirectionalLight[0].Color.xyz;
    // add r4.xyz, r2, -r1
    temp4.xyz = temp2.xyz + -temp1.xyz;
    // dp3 r0.w, r4, r4
    temp0.w = dot(temp4.xyz, temp4.xyz);
    // add r0.w, r0.w, c1.z
    temp0.w = temp0.w + float1(-0.15);
    // cmp r1.xyz, r0.w, r1, r2
    temp1.xyz = (temp0.www >= 0) ? temp1.xyz : temp2.xyz;
    // mad r0.xyz, r1, c2, r0
    temp0.xyz = temp1.xyz * float3(0.16, 0.57, 0.79) + temp0.xyz;
    // mul r0.xyz, r3.x, r0
    temp0.xyz = temp3.xxx * temp0.xyz;
    // mov r0.w, v0.w
    temp0.w = i.color.w;
    // mov oC0, r0
    out_color = temp0;
    // 

    return out_color;
}

// VertexShader6 Vertex_2_0 Has PRES True
struct VertexShader6_Output
{
    float4 texcoord : TEXCOORD;
    float4 texcoord1 : TEXCOORD1;
    float2 texcoord3 : TEXCOORD3;
    float4 position : POSITION;
    float4 texcoord2 : TEXCOORD2;
    float4 color : COLOR;
};

VertexShader6_Output VertexShader6(float4 position : POSITION)
{
    /*
    PRSI
      OutputRegisterOffset: 23
      Unknown1: 0
      Unknown2: 0
      OutputRegisterCount: 4
      Unknown3: 0
      Unknown4: 0
      Unknown5: 23
      Unknown6: 1
      Mappings: 2
        0 - ConstOutput: 25 ConstInput 2
        1 - ConstOutput: 0 ConstInput 0
    
    */
    float4 expr23;
    float4 expr24;
    float4 expr25;
    float4 expr26;
    {
        float4 temp0;
        float4 temp1;
        // Expression_2_1
        // mul r0.x, c1.x, c3.x
        temp0.x = OctaveSpeed.x * Time.x;
        // mul r1.x, r0.x, (0.015)
        temp1.x = temp0.x * (0.015);
        // mul r0.x, r1.x, c2.x
        temp0.x = temp1.x * OctaveDivergenceSpeed.x;
        // add c23.x, r1.x, r0.x
        expr23.x = temp1.x + temp0.x;
        // neg r1.y, r0.x
        temp1.y = -temp0.x;
        // add c25.x, r1.x, r1.y
        expr25.x = temp1.x + temp1.y;
        // mov c26.xyz, c0.xyz
        expr26.xyz = MaterialColorDiffuse.xyz;
        // mov c26.w, (1)
        expr26.w = (1);
    }

    VertexShader6_Output o;
    float4 temp0, temp1;
    float addr0;
    float3 temp2;
    float2 temp3;
    // def c0, 0.1591549, 0.5, 6.283185, -3.141593
    // def c1, 0.002047857, 0.001433974, -0.002047857, 4
    // def c2, 0.5, -0.5, 0, 0
    // def c3, 1, 0, 0.001433974, 0
    // def c4, 1, -1, 0, 0
    // def c5, -1.550099E-06, -2.170139E-05, 0.002604167, 0.0002604167
    // def c6, -0.02083333, -0.125, 1, 0.5
    // defi i0, 3, 0, 0, 0
    // dcl_position v0
    // mad r0.xyz, v0.xyxw, c3.xxyw, c3.yyxw
    temp0.xyz = position.xyx * float3(1, 1, 0) + float3(0, 0, 1);
    // dp3 r0.w, r0, c29.xyww
    temp0.w = dot(temp0.xyz, (World._m02_m12_m22_m32).xyw);
    // dp3 r1.x, r0, c27.xyww
    temp1.x = dot(temp0.xyz, (World._m00_m10_m20_m30).xyw);
    // dp3 r1.y, r0, c28.xyww
    temp1.y = dot(temp0.xyz, (World._m01_m11_m21_m31).xyw);
    // mul r0.xyz, r1.y, c1
    temp0.xyz = temp1.yyy * float3(0.002047857, 0.001433974, -0.002047857);
    // mad oT0.yw, r1.x, c1.xzzx, r0.y
    o.texcoord.yw = temp1.xx * float2(-0.002047857, 0.002047857) + temp0.yy;
    // mad r0.xy, r1.x, c3.z, r0.xzzw
    temp0.xy = temp1.xx * float2(0.001433974, 0.001433974) + temp0.xz;
    // add oT0.x, r0.x, c23.x
    o.texcoord.x = temp0.x + expr23.x;
    // add oT0.z, r0.y, c25.x
    o.texcoord.z = temp0.y + expr25.x;
    // mov r1.z, r0.w
    temp1.z = temp0.w;
    // mov r0.xy, c3.y
    temp0.xy = float2(0, 0);
    // rep i0
    for (int it0 = 0; it0 < int1(3); ++it0) {
        // mul r0.z, r0.y, c1.w
        temp0.z = temp0.y * float1(4);
        // mova a0.x, r0.z
        addr0.x = temp0.z;
        // mov r2.x, c33.x
        temp2.x = Time.x;
        // mul r0.z, r2.x, c13[a0.x].x
        temp0.z = temp2.x * wave[0 + (addr0.x / 4)].phase.x;
        // mov r2.x, c12[a0.x].x
        temp2.x = wave[0 + (addr0.x / 4)].amplitude.x;
        // mul r2.x, r2.x, c31.x
        temp2.x = temp2.x * WaveAmplitude.x;
        // mul r2.yz, r1.xxyw, c14[a0.x].xxyw
        temp2.yz = temp1.xy * wave[0 + (addr0.x / 4)].direction.xy;
        // add r2.y, r2.z, r2.y
        temp2.y = temp2.z + temp2.y;
        // mul r2.y, r2.y, c11[a0.x].x
        temp2.y = temp2.y * wave[0 + (addr0.x / 4)].frequency.x;
        // mad r0.z, r2.y, c32.x, r0.z
        temp0.z = temp2.y * WaveFrequency.x + temp0.z;
        // mad r0.z, r0.z, c0.x, c0.y
        temp0.z = temp0.z * float1(0.15915494) + float1(0.5);
        // frc r0.z, r0.z
        temp0.z = frac(temp0.z);
        // mad r0.z, r0.z, c0.z, c0.w
        temp0.z = temp0.z * float1(6.2831855) + float1(-3.1415927);
        // sincos r3.xy, r0.z, c5, c6
        sincos(temp0.z, temp3.y, temp3.x);
        // mad r0.x, r2.x, r3.x, r0.x
        temp0.x = temp2.x * temp3.x + temp0.x;
        // mul r0.z, r2.x, r3.y
        temp0.z = temp2.x * temp3.y;
        // max r0.z, r0.z, c3.y
        temp0.z = max(temp0.z, float1(0));
        // add r1.z, r1.z, r0.z
        temp1.z = temp1.z + temp0.z;
        // add r0.y, r0.y, c3.x
        temp0.y = temp0.y + float1(1);
        // endrep
    }
    // mov oT1.w, r0.x
    o.texcoord1.w = temp0.x;
    // add r0.xyz, -r1, c123
    temp0.xyz = -temp1.xyz + EyePosition.xyz;
    // dp3 r0.w, r0, r0
    temp0.w = dot(temp0.xyz, temp0.xyz);
    // rsq r0.w, r0.w
    temp0.w = 1 / sqrt(temp0.w);
    // mul oT1.xyz, r0, r0.w
    o.texcoord1.xyz = temp0.xyz * temp0.www;
    // add r0.xy, r1, c30.zwzw
    temp0.xy = temp1.xy + Shroud.ScaleUV_OffsetUV.zw;
    // mul oT3.xy, r0, c30
    o.texcoord3 = temp0 * Shroud.ScaleUV_OffsetUV;
    // mov r1.w, c3.x
    temp1.w = float1(1);
    // dp4 r0.z, r1, c122
    temp0.z = dot(temp1, (ViewProjection._m03_m13_m23_m33));
    // dp4 r0.x, r1, c119
    temp0.x = dot(temp1, (ViewProjection._m00_m10_m20_m30));
    // dp4 r0.y, r1, c120
    temp0.y = dot(temp1, (ViewProjection._m01_m11_m21_m31));
    // mov oPos.xyw, r0.xyzz
    o.position.xyw = temp0.xyz;
    // dp4 oPos.z, r1, c121
    o.position.z = dot(temp1, (ViewProjection._m02_m12_m22_m32));
    // rcp r0.z, r0.z
    temp0.z = 1.0f / temp0.z;
    // mul r0.xy, r0, r0.z
    temp0.xy = temp0.xy * temp0.zz;
    // mad oT2.zw, r0.xyxy, c2.xyxy, c2.x
    o.texcoord2.zw = temp0.xy * float2(0.5, -0.5) + float2(0.5, 0.5);
    // mov oD0, c26
    o.color = expr26;
    // mad oT2.xy, v0, c4, c4.zxzw
    o.texcoord2.xy = position.xy * float2(1, -1) + float2(0, 1);
    // 

    return o;
}

// Expression7 Expression_2_0 Has PRES False
float Expression7()
{
    float1 expr0;
    // mov c0.x, c0.x
    expr0.x = HasShadow.x;
    return expr0;
}

// VS_High Vertex_3_0 Has PRES True
float4x4 WorldViewProjection : WorldViewProjection;
float4x4 View : View;
float4x4 Projection : Projection;
float4x4 ViewI : ViewInverse;
float4x4 ProjectionI : ProjectionInverse;



// 获取摄像机所能看见的最远距离
float GetFarClipPlane() {
    // http://dougrogers.blogspot.com/2013/02/how-to-derive-near-and-far-clip-plane.html
    // https://en.wikibooks.org/wiki/GLSL_Programming/Vertex_Transformations#Projection_Transformation_and_Perspective_Division
    float x = Projection._m22;
    float y = Projection._m32;
    /*  x = (n+f)/(n-f)
        y = 2nf/(n-f)

        x/y = (n+f)/2nf
        x/y + 1/y = n/2nf + f/2nf + n/2nf - f/2nf
        (x+1)/y = 2n/2nf
        (x+1)/y = 1/f
        f = y/(x+1)
        
        x/y - 1/y = n/2nf + f/2nf - n/2nf + f/2nf
        (x-1)/y = 2f/2fn
        (x-1)/y = 1/n
        n = y/(x-1)
    */
    float farClipPlane = y / (x + 1);
    return farClipPlane;
}

// PRK 和 RC 帮忙解出来的超级函数
float4 CalculateProjectionPosition(float4x4 ViewProjectionI, float waterHeight, float2 position) {
    float4 t = ViewProjectionI._13_23_33_43;
    // 水面平面方程（高度 200）
    // ax + by + cz + dw = 200
    // z = -w * Projection_33 + Projection_43
    // ax + by + c(Projection_43 - Projection_33 * w) + dw = 200
    // ax + by + c * Projection_43 - c * Projection_33 * w + dw = 200
    // ax + by + (d - c * Projection_33)w = 200 - c * Projection_43
    
    // 在投影空间中，从零点发射的直线，该直线上的每个像素最终都会在屏幕坐标的 position 位置上
    // vector is [i = f * pos.x, j = f * pos.y, k = f]
    // r = ta [a = (i, j, k)]
    // (x, y, w) = (it, jt, kt)
    // x = it, y = jt, w = kt
    // x/i = y/j = w/k
    
    // 方程组
    // ax + by + (d - c * Projection_33)w = 200 - c * Projection_43
    // x/i = y/j = w/k
    // ai/k * w + bj/k * w + (d - c * Projection_33)w = 200 - c * Projection_43
    // (ai/k + bj/k +  (d - c * Projection_33)) * w = 200 - c * Projection_43
    // w = (200 - c * Projection_43) / (ai/k + bj/k + (d - c * Projection_33))
    float f = GetFarClipPlane();
    float k = f;
    float2 ij = position.xy * f;

    // a, b, c, d = t(.x .y .z .w)
    float denominator = (dot(t.xy, ij) / k + t.w - t.z * Projection._33);
    // TODO: 是否需要分开处理除 0 的情况？
    float w = (waterHeight - t.z * Projection._43) / denominator;
    // z = -w * Projection_33 + Projection_43
    float z = mul(float4(0, 0, -w, 1), Projection).z;
    float2 xy = position.xy * w;

    return float4(xy, z, w);
    
}

VS_High_Output VS_High(float4 position : POSITION, uniform bool IsHorizonVisible)
{
    /*
    PRSI
      OutputRegisterOffset: 11
      Unknown1: 0
      Unknown2: 0
      OutputRegisterCount: 9
      Unknown3: 0
      Unknown4: 0
      Unknown5: 11
      Unknown6: 4
      Mappings: 2
        0 - ConstOutput: 16 ConstInput 4
        1 - ConstOutput: 0 ConstInput 0
    
    */
    float4 expr11;
    float4 expr12;
    float4 expr13;
    float4 expr14;
    float4 expr15;
    float4 expr16;
    float4 expr17;
    float4 expr18;
    float4 expr19;
    {
        float4 temp0;
        float4 temp1;
        // Expression_2_1
        // mul c11.x, c3.x, (0.005)
        expr11.x = Foam1Scalar.x * (0.005);
        // mul c12.x, c4.x, (0.004)
        expr12.x = Foam2Scalar.x * (0.004);
        // mul r0.x, c5.x, c8.x
        temp0.x = FoamSpeed.x * Time.x;
        // mul c13.x, r0.x, (0.011)
        expr13.x = temp0.x * (0.011);
        // mul r0.x, c6.x, c8.x
        temp0.x = OctaveSpeed.x * Time.x;
        // mul r1.x, r0.x, (0.015)
        temp1.x = temp0.x * (0.015);
        // mul r0.x, r1.x, c7.x
        temp0.x = temp1.x * OctaveDivergenceSpeed.x;
        // add c14.x, r1.x, r0.x
        expr14.x = temp1.x + temp0.x;
        // neg r1.y, r0.x
        temp1.y = -temp0.x;
        // add c16.x, r1.x, r1.y
        expr16.x = temp1.x + temp1.y;
        // add c17.x, c1.x, c2.x
        expr17.x = FoamHeight.x + FoamBlend.x;
        // rcp c18.x, c2.x
        expr18.x = 1.0f / (FoamBlend.x);
        // mov c19.xyz, c0.xyz
        expr19.xyz = MaterialColorDiffuse.xyz;
        // mov c19.w, (1)
        expr19.w = (1);
    }

    VS_High_Output o;
    float4 temp0, temp2;
    // def c0, 0.002047857, 0.001433974, -0.002047857, 0.13
    // def c1, 300, -300, 0.5, -0.5
    // def c2, 0, -0.0015, 0, 0
    // def c3, 1, 0, 0.001433974, -1
    // dcl_position v0
    // dcl_2d s0
    // dcl_position o0
    // dcl_color o1
    // dcl_texcoord o2
    // dcl_texcoord1 o3
    // dcl_texcoord2 o4
    // dcl_texcoord3 o5
    // dcl_texcoord4 o6
    // dcl_texcoord5 o7.xy

    float3 modelWorldPosition;
    // 假如最远点在屏幕内…… 也就是说假如能看见海上的地平线……
    if (IsHorizonVisible) {
        // 获取当前摄像机在世界坐标系下的“方向”
        float4 viewDirection = mul(float4(0, 0, -1, 0), ViewI);
        float2 horizontalViewDirection = normalize(viewDirection.xy);
        // 摄像机视窗的纵横比
        float aspectRatio = Projection._22 / Projection._11; // = width / height

        float cosPhi = horizontalViewDirection.y;
        float sinPhi = -horizontalViewDirection.x;
        // 这个矩阵是用作 M×V 而不是 V×M 的，因此按照传统数学（而不是 DirectX）的旋转矩阵来排列
        float2x2 rotationMatrix = {
            cosPhi, -sinPhi,
            sinPhi, cosPhi
        };
        // 把 0~1 的水面移到 -0.5~0.5，也就是以 0 为中心
        position.x -= 0.5;
        // 放大！
        position *= GetFarClipPlane();
        position.x *= aspectRatio;
        // 旋转！
        position.xy = mul(rotationMatrix, position.xy);
        // 移动！
        position.xy += ViewI[3].xy;
        // 吊袜！
        modelWorldPosition = float4(position.xy, World[3].z, 1);

        // 计算（原）世界矩阵的逆矩阵
        float4x4 WorldI = 0;
        WorldI._m00_m11 = 1;
        WorldI[3] = float4(-World[3], 1);
        WorldI._m00_m11_m30_m31 /= World._m00_m11_m00_m11;
        position = mul(float4(modelWorldPosition.xyz, 1), WorldI);
    }
    // 原 shader 部分
    // mad r0.xyz, v0.xyxw, c3.xxyw, c3.yyxw
    // dp3 r1.x, r0, c20.xyww
    else {
        modelWorldPosition.xyz = mul(float4(position.xy, 0, 1), World);
    }

    // mov r2.x, c11.x
    // mad o2.x, r1.x, r2.x, c13.x
    o.texcoord.x = modelWorldPosition.x * expr11.x + expr13.x;
    // mov r2.x, c12.x
    // mad o2.z, r1.x, r2.x, -c13.x
    o.texcoord.z = modelWorldPosition.x * expr12.x + -expr13.x;
    // dp3 r1.y, r0, c21.xyww [^]
    // dp3 r1.z, r0, c22.xyww [^]
    

    // mul r0, r1.y, c0.xyzy
    temp0 = modelWorldPosition.y * float4(0.002047857, 0.001433974, -0.002047857, 0.001433974);
    // mad r0.xz, r1.x, c3.z, r0
    temp0.xz = modelWorldPosition.xx * float2(0.001433974, 0.001433974) + temp0.xz;
    // mad o3.yw, r1.x, c0.xzzx, r0
    o.texcoord1.yw = modelWorldPosition.xx * float2(-0.002047857, 0.002047857) + temp0.yw;
    // add o3.x, r0.x, c14.x
    o.texcoord1.x = temp0.x + expr14.x;
    // add o3.z, r0.z, c16.x
    o.texcoord1.z = temp0.z + expr16.x;
    // mad r0, v0.xyxx, c3.xwyy, c3.yxyy
    temp0 = position.xyxx * float4(1, -1, 0, 0) + float4(0, 1, 0, 0);
    // texldl r0, r0, s0
    temp0 = tex2Dlod(DisplacementTextureSampler, temp0);

    // min r0.xyz, r0, c0.w
    temp0.xyz = min(temp0.xyz, float3(0.13, 0.13, 0.13));
    // mul r0.w, r0.z, c1.x
    temp0.w = temp0.z * float1(300);
    // slt r0.w, c17.x, r0.w
    temp0.w = (expr17.x < temp0.w) ? 1 : 0;
    // mov r2.x, c1.x
    temp2.x = float1(300);
    // mad r1.w, r0.z, r2.x, -c17.x
    float4 temp1;
    temp1.w = temp0.z * temp2.x + -expr17.x;



    float4 worldPosition;
    // mad r2.xyz, r0, c1.yxxw, r1
    worldPosition.xyz = temp0.xyz * float3(-300, 300, 300) + modelWorldPosition.xyz;
    // mul r0.x, r1.w, c18.x
    temp0.x = temp1.w * expr18.x;
    // mul o5.w, r0.w, r0.x
    o.texcoord3.w = temp0.w * temp0.x;
    // mov r2.w, c3.x
    worldPosition.w = float1(1);
    // dp4 o0.z, r2, c121
    // dp4 r0.z, r2, c122
    // rcp r0.w, r0.z
    // dp4 r0.x, r2, c119
    // dp4 r0.y, r2, c120
    // mul r1.xz, r0.w, r0.xyyw
    float4 projectionPosition = mul(worldPosition, ViewProjection);
    temp1.xz = projectionPosition.xy / projectionPosition.w;
    // mov o0.xyw, r0.xyzz
    o.position = projectionPosition;
    // mad o6.zw, r1.xyxz, c1, c1.z
    o.ModelUV_UnknownZW.zw = temp1.xz * float2(0.5, -0.5) + float2(0.5, 0.5);
    // add r0.xy, r2, c23.zwzw
    // mul o7.xy, r0, c23
    o.ShroudUV = CalculateShroudCoordinates(worldPosition);
    // mov o1, c19
    o.color = expr19;
    // mul r0.x, r1.y, c11.x
    temp0.x = modelWorldPosition.y * expr11.x;
    // mul r0.y, r1.y, c12.x
    temp0.y = modelWorldPosition.y * expr12.x;
    // mov o2.yw, r0.xxzy
    o.texcoord.yw = temp0.xy;
    
    // dp4 r0.x, r2, c113
    // dp4 r0.y, r2, c114
    // dp4 r0.z, r2, c115
    // dp4 r0.w, r2, c116

    // mov o5.xyz, r2
    o.texcoord3.xyz = worldPosition.xyz;

    // rcp r1.x, r0.w
    // mov o4.w, r0.w
    // mad o4.xyz, r0, r1.x, c2.xxyw
    o.texcoord2 = CalculateShadowMapCoordinates(worldPosition);
    // mad o6.xy, v0, c3.xwzw, c3.yxzw
    o.ModelUV_UnknownZW.xy = position.xy * float2(1, -1) + float2(0, 1);
    // 

    return o;
}

bool IsHorizonVisible() {
    // 获取当前摄像机在世界坐标系下的“方向”
    float4 viewDirection = mul(float4(0, 0, -1, 0), ViewI);
    float2 horizontalViewDirection = normalize(viewDirection.xy);

    // 我们计算一下实际上最远的那一点应该在哪里
    float2 supposedFarPointWorld = ViewI[3].xy + horizontalViewDirection * GetFarClipPlane();
    // 表达式着色器访问显式指定寄存器的变量（比如说 World 以及 View Projection）貌似会导致游戏崩溃……
    // 所以需要用这种奇怪的方法获得这些矩阵
    float4x4 world = mul(mul(WorldViewProjection, ProjectionI), ViewI);
    float4x4 viewProjection = mul(View, Projection);
    float4 supposedFarPoint = mul(float4(supposedFarPointWorld, world[3].z, 1), viewProjection);

    // 假如最远点在屏幕内，也就是说假如能看见海上的地平线……
    if (abs(supposedFarPoint.y / supposedFarPoint.w) < 1) {
        return true;
    }
    return false;
}

VertexShader VS_High_Array[2] = {
    compile vs_3_0 VS_High(false),
    compile vs_3_0 VS_High(true),
};

technique Default
{
    pass P0
    {
        VertexShader = VS_High_Array[IsHorizonVisible()]; // compile vs_3_0 VS_High(); // 87
        PixelShader = PS_WaterShadowMap_Array[Expression7()]; // 88
        AlphaBlendEnable = 0;
        ZEnable = 1;
        ZFunc = 4;
        ZWriteEnable = 0;
        CullMode = 2;
        AlphaTestEnable = 0;
    }
}

technique Default_M
{
    pass P0
    {
        VertexShader = compile vs_2_0 VertexShader6(); // 89
        PixelShader = compile ps_2_0 PixelShader5(); // 90
        ZEnable = 1;
        ZFunc = 4;
        ZWriteEnable = 0;
        CullMode = 2;
        AlphaTestEnable = 0;
        AlphaBlendEnable = 0;
    }
}

technique Default_L
{
    pass P0
    {
        VertexShader = compile vs_2_0 VertexShader4(); // 91
        PixelShader = compile ps_2_0 PixelShader3(); // 92
        ZEnable = 1;
        ZFunc = 4;
        ZWriteEnable = 0;
        CullMode = 2;
        AlphaTestEnable = 0;
        AlphaBlendEnable = 1;
    }
}

