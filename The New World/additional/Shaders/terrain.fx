#pragma warning(disable: 4008)
#pragma warning(disable: 3571)
#include "Common.fxh"

float3 NoCloudMultiplier <bool unmanaged = 1;> = { 1, 1, 1 };
float3 RecolorColorDummy <bool unmanaged = 1;>;
texture MacroSampler <string UIWidget = "None"; string SasBindAddress = "Terrain.MacroTexture"; string ResourceName = "ShaderPreviewMacro.dds";>; // 6
sampler2D MacroSamplerSampler : register(ps_3_0, s0) <string Texture = "MacroSampler"; string UIWidget = "None"; string SasBindAddress = "Terrain.MacroTexture"; string ResourceName = "ShaderPreviewMacro.dds";> =
sampler_state
{
    Texture = <MacroSampler>; // 10
    MinFilter = 2;
    MagFilter = 2;
    MipFilter = 2;
    AddressU = 1;
    AddressV = 1;
};
texture BaseSamplerClamped <string UIWidget = "None"; string SasBindAddress = "Terrain.BaseTexture"; int WW3DDynamicSet = 2;>; // 16
sampler2D BaseSamplerClampedSampler <string Texture = "BaseSamplerClamped"; string UIWidget = "None"; string SasBindAddress = "Terrain.BaseTexture"; int WW3DDynamicSet = 2;> =
sampler_state
{
    Texture = <BaseSamplerClamped>; // 19
    MinFilter = 3;
    MagFilter = 2;
    MipFilter = 2;
    MaxAnisotropy = 8;
    AddressU = 3;
    AddressV = 3;
};
texture BaseSamplerClamped_L <string UIWidget = "None"; string SasBindAddress = "Terrain.BaseTexture"; int WW3DDynamicSet = 2;>; // 23
sampler2D BaseSamplerClamped_LSampler <string Texture = "BaseSamplerClamped_L"; string UIWidget = "None"; string SasBindAddress = "Terrain.BaseTexture"; int WW3DDynamicSet = 2;> =
sampler_state
{
    Texture = <BaseSamplerClamped_L>; // 26
    MinFilter = 2;
    MagFilter = 2;
    MipFilter = 1;
    MaxAnisotropy = 1;
    AddressU = 3;
    AddressV = 3;
};
texture BaseSamplerWrapped <string UIWidget = "None"; string SasBindAddress = "Terrain.BaseTexture"; int WW3DDynamicSet = 2;>; // 30
sampler2D BaseSamplerWrappedSampler <string Texture = "BaseSamplerWrapped"; string UIWidget = "None"; string SasBindAddress = "Terrain.BaseTexture"; int WW3DDynamicSet = 2;> =
sampler_state
{
    Texture = <BaseSamplerWrapped>; // 33
    MinFilter = 3;
    MagFilter = 2;
    MipFilter = 2;
    MaxAnisotropy = 8;
    AddressU = 1;
    AddressV = 1;
};
texture BaseSamplerWrapped_L <string UIWidget = "None"; string SasBindAddress = "Terrain.BaseTexture"; int WW3DDynamicSet = 2;>; // 37
sampler2D BaseSamplerWrapped_LSampler <string Texture = "BaseSamplerWrapped_L"; string UIWidget = "None"; string SasBindAddress = "Terrain.BaseTexture"; int WW3DDynamicSet = 2;> =
sampler_state
{
    Texture = <BaseSamplerWrapped_L>; // 40
    MinFilter = 2;
    MagFilter = 2;
    MipFilter = 1;
    MaxAnisotropy = 1;
    AddressU = 1;
    AddressV = 1;
};
texture NormalSamplerClamped <string UIWidget = "None"; string SasBindAddress = "Terrain.NormalTexture"; int WW3DDynamicSet = 2;>; // 44
sampler2D NormalSamplerClampedSampler <string Texture = "NormalSamplerClamped"; string UIWidget = "None"; string SasBindAddress = "Terrain.NormalTexture"; int WW3DDynamicSet = 2;> =
sampler_state
{
    Texture = <NormalSamplerClamped>; // 47
    MinFilter = 3;
    MagFilter = 2;
    MipFilter = 2;
    MaxAnisotropy = 8;
    AddressU = 3;
    AddressV = 3;
};
texture NormalSamplerWrapped <string UIWidget = "None"; string SasBindAddress = "Terrain.NormalTexture"; int WW3DDynamicSet = 2;>; // 51
sampler2D NormalSamplerWrappedSampler <string Texture = "NormalSamplerWrapped"; string UIWidget = "None"; string SasBindAddress = "Terrain.NormalTexture"; int WW3DDynamicSet = 2;> =
sampler_state
{
    Texture = <NormalSamplerWrapped>; // 54
    MinFilter = 3;
    MagFilter = 2;
    MipFilter = 2;
    MaxAnisotropy = 8;
    AddressU = 1;
    AddressV = 1;
};
texture ShroudSampler <string UIWidget = "None"; string SasBindAddress = "Terrain.Shroud.Texture";>; // 60
sampler2D ShroudSamplerSampler : register(ps_3_0, s3) <string Texture = "ShroudSampler"; string UIWidget = "None"; string SasBindAddress = "Terrain.Shroud.Texture";> =
sampler_state
{
    Texture = <ShroudSampler>; // 63
    MinFilter = 2;
    MagFilter = 2;
    MipFilter = 2;
    AddressU = 3;
    AddressV = 3;
};
texture CloudSampler <string UIWidget = "None"; string SasBindAddress = "Terrain.Cloud.Texture"; string ResourceName = "ShaderPreviewCloud.dds";>; // 67
sampler2D CloudSamplerSampler : register(ps_2_0, s3) : register(ps_3_0, s4) <string Texture = "CloudSampler"; string UIWidget = "None"; string SasBindAddress = "Terrain.Cloud.Texture"; string ResourceName = "ShaderPreviewCloud.dds";> =
sampler_state
{
    Texture = <CloudSampler>; // 71
    MinFilter = 2;
    MagFilter = 2;
    MipFilter = 2;
    AddressU = 1;
    AddressV = 1;
};
bool IsTerrainAtlasEnabled <string UIWidget = "None"; string SasBindAddress = "Terrain.IsTerrainAtlasEnabled";>;

// VS_TerrainTile_Array_Shader_0 Vertex_3_0 Has PRES False
struct VS_TerrainTile_Array_Shader_0_Input
{
    float4 position : POSITION;
    float4 normal : NORMAL;
    float4 texcoord : TEXCOORD;
};

struct VS_TerrainTile_Array_Shader_0_Output
{
    float4 position : POSITION;
    float4 color : COLOR;
    float color1 : COLOR1;
    float4 texcoord : TEXCOORD;
    float4 texcoord1 : TEXCOORD1;
    float2 texcoord2 : TEXCOORD2;
    float3 texcoord3 : TEXCOORD3;
    float4 texcoord4 : TEXCOORD4;
    float3 texcoord5 : TEXCOORD5;
    float4 texcoord6 : TEXCOORD6;
};

VS_TerrainTile_Array_Shader_0_Output VS_TerrainTile_Array_Shader_0(VS_TerrainTile_Array_Shader_0_Input i)
{
    VS_TerrainTile_Array_Shader_0_Output o;
    float4 temp0, temp1;
    float3 temp2, temp3;
    // def c0, 1, 0, -1, 0.5
    // dcl_position v0
    // dcl_normal v1
    // dcl_texcoord v2
    // dcl_position o0
    // dcl_color o1
    // dcl_color1 o2.x
    // dcl_texcoord o3
    // dcl_texcoord1 o4
    // dcl_texcoord2 o5.xy
    // dcl_texcoord3 o6.xyz
    // dcl_texcoord4 o7
    // dcl_texcoord5 o8.xyz
    // dcl_texcoord6 o9
    // mad r0, v0.xyzx, c0.xxxy, c0.yyyx
    temp0 = i.position.xyzx * float4(1, 1, 1, 0) + float4(0, 0, 0, 1);
    // dp4 o0.x, r0, c119
    o.position.x = dot(temp0, (ViewProjection._m00_m10_m20_m30));
    // dp4 o0.y, r0, c120
    o.position.y = dot(temp0, (ViewProjection._m01_m11_m21_m31));
    // dp4 o0.z, r0, c121
    o.position.z = dot(temp0, (ViewProjection._m02_m12_m22_m32));
    // dp4 o0.w, r0, c122
    o.position.w = dot(temp0, (ViewProjection._m03_m13_m23_m33));
    // mul r1.xyz, c0.xyyw, v1.zxyw
    temp1.xyz = float3(1, 0, 0) * i.normal.zxy;
    // mad r1.xyz, v1.yzxw, c0.yyxw, -r1
    temp1.xyz = i.normal.yzx * float3(0, 0, 1) + -temp1.xyz;
    // dp3 o7.x, c6, -r1
    o.texcoord4.x = dot(DirectionalLight[0].Direction.xyz, -temp1.xyz);
    // mul r2.xyz, c0.yyzw, v1.zxyw
    temp2.xyz = float3(0, 0, -1) * i.normal.zxy;
    // mad r2.xyz, v1.yzxw, c0.yzyw, -r2
    temp2.xyz = i.normal.yzx * float3(0, -1, 0) + -temp2.xyz;
    // dp3 o7.y, c6, -r2
    o.texcoord4.y = dot(DirectionalLight[0].Direction.xyz, -temp2.xyz);
    // dp3 r1.w, c6, v1
    temp1.w = dot(DirectionalLight[0].Direction.xyz, i.normal.xyz);
    // max o7.w, r1.w, c0.y
    o.texcoord4.w = max(temp1.w, float1(0));
    // mov o7.z, r1.w
    o.texcoord4.z = temp1.w;
    // add r3.xyz, c123, -v0
    temp3.xyz = EyePosition.xyz + -i.position.xyz;
    // dp3 r1.w, r3, r3
    temp1.w = dot(temp3.xyz, temp3.xyz);
    // rsq r1.w, r1.w
    temp1.w = 1 / sqrt(temp1.w);
    // mad r3.xyz, r3, r1.w, c6
    temp3.xyz = temp3.xyz * temp1.www + DirectionalLight[0].Direction.xyz;
    // dp3 r1.x, r3, -r1
    temp1.x = dot(temp3.xyz, -temp1.xyz);
    // dp3 r1.y, r3, -r2
    temp1.y = dot(temp3.xyz, -temp2.xyz);
    // dp3 r1.z, r3, v1
    temp1.z = dot(temp3.xyz, i.normal.xyz);
    // dp3 r1.w, r1, r1
    temp1.w = dot(temp1.xyz, temp1.xyz);
    // rsq r1.w, r1.w
    temp1.w = 1 / sqrt(temp1.w);
    // mul o8.xyz, r1, r1.w
    o.texcoord5 = temp1 * temp1.w;
    // dp3 r1.x, v1, c10
    temp1.x = dot(i.normal.xyz, DirectionalLight[2].Direction.xyz);
    // max r1.x, r1.x, c0.y
    temp1.x = max(temp1.x, float1(0));
    // mul r1.xyz, r1.x, c9
    temp1.xyz = temp1.xxx * DirectionalLight[2].Color.xyz;
    // dp3 r1.w, v1, c8
    temp1.w = dot(i.normal.xyz, DirectionalLight[1].Direction.xyz);
    // max r1.w, r1.w, c0.y
    temp1.w = max(temp1.w, float1(0));
    // mad r1.xyz, c7, r1.w, r1
    temp1.xyz = DirectionalLight[1].Color.xyz * temp1.www + temp1.xyz;
    // add r1.xyz, r1, c4
    temp1.xyz = temp1.xyz + AmbientLightColor.xyz;
    // mul o1.xyz, r1, c0.w
    o.color.xyz = temp1.xyz * float3(0.5, 0.5, 0.5);
    // add r1.xy, c11.zwzw, v0
    temp1.xy = Shroud.ScaleUV_OffsetUV.zw + i.position.xy;
    // mul o5.xy, r1, c11
    o.texcoord2 = temp1 * Shroud.ScaleUV_OffsetUV;
    // dp4 o9.x, r0, c113
    o.texcoord6.x = dot(temp0, (ShadowMapWorldToShadow._m00_m10_m20_m30));
    // dp4 o9.y, r0, c114
    o.texcoord6.y = dot(temp0, (ShadowMapWorldToShadow._m01_m11_m21_m31));
    // dp4 o9.z, r0, c115
    o.texcoord6.z = dot(temp0, (ShadowMapWorldToShadow._m02_m12_m22_m32));
    // dp4 o9.w, r0, c116
    o.texcoord6.w = dot(temp0, (ShadowMapWorldToShadow._m03_m13_m23_m33));
    // 修！
    o.texcoord6.z -= 1.5 * Shadowmap_Zero_Zero_OneOverMapSize_OneOverMapSize.z * o.texcoord6.w;
    // mov o1.w, c0.x
    o.color.w = float1(1);
    // mov o2.x, c0.x
    o.color1 = float4(1, 1, 1, 1);
    // mov o3.xy, v2
    o.texcoord.xy = i.texcoord.xy;
    // mov o3.zw, c0.y
    o.texcoord.zw = float2(0, 0);
    // mov o4, c0.y
    o.texcoord1 = float4(0, 0, 0, 0);
    // mov o6.xyz, v0
    o.texcoord3 = i.position;
    // 

    return o;
}

// VS_TerrainTile_Atlas Vertex_3_0 Has PRES False
struct VS_TerrainTile_Atlas_Input
{
    float4 position : POSITION;
    float4 normal : NORMAL;
    float4 texcoord : TEXCOORD;
    float4 texcoord1 : TEXCOORD1;
    float4 texcoord2 : TEXCOORD2;
};

struct VS_TerrainTile_Atlas_Output
{
    float4 position : POSITION;
    float4 color : COLOR;
    float color1 : COLOR1;
    float4 texcoord : TEXCOORD;
    float4 texcoord1 : TEXCOORD1;
    float2 texcoord2 : TEXCOORD2;
    float3 texcoord3 : TEXCOORD3;
    float4 texcoord4 : TEXCOORD4;
    float3 texcoord5 : TEXCOORD5;
    float4 texcoord6 : TEXCOORD6;
};

VS_TerrainTile_Atlas_Output VS_TerrainTile_Atlas(VS_TerrainTile_Atlas_Input i)
{
    VS_TerrainTile_Atlas_Output o;
    // def c0, 0.01, -1, 3.333333E-05, -0
    // def c1, 0, -1, 0.5, -0.0015
    // dcl_position v0
    // dcl_normal v1
    // dcl_texcoord v2
    // dcl_texcoord1 v3
    // dcl_texcoord2 v4
    // dcl_position o0
    // dcl_color o1
    // dcl_color1 o2.x
    // dcl_texcoord o3
    // dcl_texcoord1 o4
    // dcl_texcoord2 o5.xy
    // dcl_texcoord3 o6.xyz
    // dcl_texcoord4 o7
    // dcl_texcoord5 o8.xyz
    // dcl_texcoord6 o9

    // mul o3.xy, c0.z, v2
    // mul o4.xy, c0.z, v3
    // mul o4.zw, c0.z, v4.xyyx
    o.texcoord1 = float4(i.texcoord1.xy, i.texcoord2.yx) / 30000;
    // add o3.w, c0.y, v0.w
    // add o3.z, c0.y, v1.w
    o.texcoord = float4(i.texcoord.xy / 30000, i.normal.w - 1, i.position.w - 1);

    // mad r0, v0.xyzx, -c0.yyyw, -c0.wwwy
    // dp4 o0.x, r0, c119
    // dp4 o0.y, r0, c120
    // dp4 o0.z, r0, c121
    // dp4 o0.w, r0, c122
    o.position = mul(float4(i.position.xyz, 1), ViewProjection);

    // mad r1.xyz, v1, c0.x, c0.y
    float3 r1a = i.normal.xyz / 100 - 1;

    // mul r2.xyz, r1.zxyw, -c0.ywww
    // mad r2.xyz, r1.yzxw, -c0.wwyw, -r2
    // dp3 o7.x, c6, -r2
    // mul r3.xyz, r1.zxyw, c1.xxyw
    // mad r3.xyz, r1.yzxw, c1.xyxw, -r3
    // dp3 o7.y, c6, -r3
    // dp3 r1.w, c6, r1
    // max o7.w, r1.w, -c0.w
    // mov o7.z, r1.w
    float3x3 m1 = { 
        r1a.z,     0, -r1a.x,
            0, r1a.z, -r1a.y,
        r1a.x, r1a.y,  r1a.z
    };
    o.texcoord4.xyz = mul(m1, DirectionalLight[0].Direction);
    o.texcoord4.w = max(0, o.texcoord4.z);

    // add r4.xyz, c123, -v0
    float3 eyeDirection = EyePosition - i.position.xyz;
    // dp3 r1.w, r4, r4
    // rsq r1.w, r1.w
    // mad r4.xyz, r4, r1.w, c6
    float3 r4 = normalize(eyeDirection) + DirectionalLight[0].Direction.xyz;

    // dp3 r2.x, r4, -r2
    // dp3 r2.y, r4, -r3
    // dp3 r2.z, r4, r1
    // dp3 r1.w, r2, r2
    // rsq r1.w, r1.w
    // mul o8.xyz, r2, r1.w
    o.texcoord5 = normalize(mul(m1, r4));

    // dp3 r1.w, r1, c10
    // dp3 r1.x, r1, c8
    // max r1.y, r1.w, -c0.w
    float light2_Intensity = max(dot(r1a, DirectionalLight[2].Direction), 0);

    // mul r1.yzw, r1.y, c9.xxyz
    float3 light2_Color = DirectionalLight[2].Color * light2_Intensity;

    // max r1.x, r1.x, -c0.w
    float light1_Intensity = max(dot(r1a, DirectionalLight[1].Direction), 0);

    // mad r1.xyz, c7, r1.x, r1.yzww
    float3 light1_Color = DirectionalLight[1].Color * light1_Intensity;
    float3 lightColors = light1_Color + light1_Color;

    // add r1.xyz, r1, c4
    lightColors += AmbientLightColor;

    // mul o1.xyz, r1, c1.z
    o.color.xyz = lightColors / 2;

    // add r1.xy, c11.zwzw, v0
    // mul o5.xy, r1, c11
    o.texcoord2 = CalculateShroudCoordinates(i.position);

    // mov o1.w, -c0.y
    o.color.w = float1(1);
    // mov o2.x, -c0.y
    o.color1 = float4(1, 1, 1, 1);
    // mov o6.xyz, v0
    o.texcoord3 = i.position;
    // dp4 r1.x, r0, c113
    // dp4 r1.y, r0, c114
    // dp4 r1.z, r0, c115
    // dp4 r0.x, r0, c116
    // rcp r0.y, r0.x
    // mov o9.w, r0.x
    // mad o9.xyz, r1, r0.y, c1.xxww
    o.texcoord6 = mul(float4(i.position.xyz, 1), ShadowMapWorldToShadow);
    o.texcoord6.xyz /= o.texcoord6.w;
    // original bias: 0.0015
    // 修！
    float biasOffset = 1.5 * Shadowmap_Zero_Zero_OneOverMapSize_OneOverMapSize.z;
    o.texcoord6.z -= biasOffset;
    // 

    return o;
}

VertexShader VS_TerrainTile_Array[2] = {
    compile vs_3_0 VS_TerrainTile_Array_Shader_0(), // 89
    compile vs_3_0 VS_TerrainTile_Atlas(), // 90
};
// PS_TerrainTile_Basic Pixel_3_0 Has PRES True
struct PS_TerrainTile_Basic_Input
{
    float4 color : COLOR;
    float color1 : COLOR1;
    float2 texcoord : TEXCOORD;
    float2 texcoord2 : TEXCOORD2;
    float3 texcoord3 : TEXCOORD3;
    float3 texcoord4 : TEXCOORD4;
    float3 texcoord5 : TEXCOORD5;
};

float4 PS_TerrainTile_Basic(PS_TerrainTile_Basic_Input i) : COLOR
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
        float4 temp0;
        // Expression_2_1
        // mul r0.x, c0.x, (66)
        temp0.x = MapCellSize.x * (66);
        // rcp c11.x, r0.x
        expr11.x = 1.0f / (temp0.x);
    }

    float4 out_color;
    float4 temp0, temp1, temp2, temp3, temp4, temp5, temp6;
    float3 temp7;
    // def c0, 0.75, 0, 1, -1
    // def c1, -2, -3, -4, -5
    // def c2, 1, -1, 2.2, 2
    // def c3, 40, 0, 0, 0
    // dcl_color v0
    // dcl_color1 v1.x
    // dcl_texcoord v2.xy
    // dcl_texcoord2 v3.xy
    // dcl_texcoord3 v4.xyz
    // dcl_texcoord4 v5.xyz
    // dcl_texcoord5_centroid v6.xyz
    // dcl_2d s0
    // dcl_2d s1
    // dcl_2d s2
    // dcl_2d s3
    // dcl_2d s4
    // texld r0, v2, s1
    temp0 = tex2D(BaseSamplerClampedSampler, i.texcoord.xy);
    // mul r1.xy, c117.zwzw, v4.z
    temp1.xy = Cloud.WorldPositionMultiplier_XYZZ.zw * i.texcoord3.zz;
    // mad r1.xy, v4, c117, -r1
    temp1.xy = i.texcoord3.xy * Cloud.WorldPositionMultiplier_XYZZ.xy + -temp1.xy;
    // add r1.xy, r1, c118
    temp1.xy = temp1.xy + Cloud.CurrentOffsetUV.xy;
    // mov r2.xy, c2
    temp2.xy = float2(1, -1);
    // mul r1.zw, r2.xyxy, c11.x
    temp1.zw = temp2.xy * expr11.xx;
    // mul r1.zw, r1, v4.xyxy
    temp1.zw = temp1.zw * i.texcoord3.xy;
    // log r2.x, r0.x
    temp2.x = log2(temp0.x);
    // log r2.y, r0.y
    temp2.y = log2(temp0.y);
    // log r2.z, r0.z
    temp2.z = log2(temp0.z);
    // mul r0.xyz, r2, c2.z
    temp0.xyz = temp2.xyz * float3(2.2, 2.2, 2.2);
    // exp r2.x, r0.x
    temp2.x = exp2(temp0.x);
    // exp r2.y, r0.y
    temp2.y = exp2(temp0.y);
    // exp r2.z, r0.z
    temp2.z = exp2(temp0.z);
    // texld r0, v2, s2
    temp0 = tex2D(NormalSamplerClampedSampler, i.texcoord.xy);
    // mad r0.xy, r0, c2.w, c2.y
    temp0.xy = temp0.xy * float2(2, 2) + float2(-1, -1);
    // mad r0.w, r0.x, -r0.x, c2.x
    temp0.w = temp0.x * -temp0.x + float1(1);
    // mad r0.w, r0.y, -r0.y, r0.w
    temp0.w = temp0.y * -temp0.y + temp0.w;
    // rsq r0.w, r0.w
    temp0.w = 1 / sqrt(temp0.w);
    // rcp r3.z, r0.w
    temp3.z = 1.0f / temp0.w;
    // mul r3.xy, r0, c0.x
    temp3.xy = temp0.xy * float2(0.75, 0.75);
    // nrm r4.xyz, r3
    temp4.xyz = normalize(temp3.xyz);
    // mov r0.xyw, v0.xyzz
    temp0.xyw = i.color.xyz;
    // mov r3.x, c0.y
    temp3.x = float1(0);
    // rep i0
    for (int it0 = 0; it0 < NumPointLights; ++it0) {
        // add r5, r3.x, c1
        temp5 = temp3.x + float4(-2, -3, -4, -5);
        // add r3.xyz, r3.x, -c0.wyzw
        temp3.xyz = temp3.xxx + float3(1, -0, -1);
        // mov r6.y, c0.y
        temp6.y = float1(0);
        // cmp r6.xzw, -r3_abs.y, c89.xyyz, r6.y
        temp6.xzw = (-abs(temp3).yyy >= 0) ? PointLight[0].Color.xyz : temp6.yyy;
        // cmp r7.xyz, -r3_abs.y, c90, r6.y
        temp7.xyz = (-abs(temp3).yyy >= 0) ? PointLight[0].Position.xyz : temp6.yyy;
        // cmp r3.yw, -r3_abs.y, c91.xxzy, r6.y
        temp3.yw = (-abs(temp3).yy >= 0) ? PointLight[0].Range_Inner_Outer.xy : temp6.yy;
        // cmp r6.xyz, -r3_abs.z, c92, r6.xzww
        temp6.xyz = (-abs(temp3).zzz >= 0) ? PointLight[1].Color.xyz : temp6.xzw;
        // cmp r7.xyz, -r3_abs.z, c93, r7
        temp7.xyz = (-abs(temp3).zzz >= 0) ? PointLight[1].Position.xyz : temp7.xyz;
        // cmp r3.yz, -r3_abs.z, c94.xxyw, r3.xyww
        temp3.yz = (-abs(temp3).zz >= 0) ? PointLight[1].Range_Inner_Outer.xy : temp3.yw;
        // cmp r6.xyz, -r5_abs.x, c95, r6
        temp6.xyz = (-abs(temp5).xxx >= 0) ? PointLight[2].Color.xyz : temp6.xyz;
        // cmp r7.xyz, -r5_abs.x, c96, r7
        temp7.xyz = (-abs(temp5).xxx >= 0) ? PointLight[2].Position.xyz : temp7.xyz;
        // cmp r3.yz, -r5_abs.x, c97.xxyw, r3
        temp3.yz = (-abs(temp5).xx >= 0) ? PointLight[2].Range_Inner_Outer.xy : temp3.yz;
        // cmp r6.xyz, -r5_abs.y, c98, r6
        temp6.xyz = (-abs(temp5).yyy >= 0) ? PointLight[3].Color.xyz : temp6.xyz;
        // cmp r7.xyz, -r5_abs.y, c99, r7
        temp7.xyz = (-abs(temp5).yyy >= 0) ? PointLight[3].Position.xyz : temp7.xyz;
        // cmp r3.yz, -r5_abs.y, c100.xxyw, r3
        temp3.yz = (-abs(temp5).yy >= 0) ? PointLight[3].Range_Inner_Outer.xy : temp3.yz;
        // cmp r6.xyz, -r5_abs.z, c101, r6
        temp6.xyz = (-abs(temp5).zzz >= 0) ? PointLight[4].Color.xyz : temp6.xyz;
        // cmp r7.xyz, -r5_abs.z, c102, r7
        temp7.xyz = (-abs(temp5).zzz >= 0) ? PointLight[4].Position.xyz : temp7.xyz;
        // cmp r3.yz, -r5_abs.z, c103.xxyw, r3
        temp3.yz = (-abs(temp5).zz >= 0) ? PointLight[4].Range_Inner_Outer.xy : temp3.yz;
        // cmp r5.xyz, -r5_abs.w, c104, r6
        temp5.xyz = (-abs(temp5).www >= 0) ? PointLight[5].Color.xyz : temp6.xyz;
        // cmp r6.xyz, -r5_abs.w, c105, r7
        temp6.xyz = (-abs(temp5).www >= 0) ? PointLight[5].Position.xyz : temp7.xyz;
        // cmp r3.yz, -r5_abs.w, c106.xxyw, r3
        temp3.yz = (-abs(temp5).ww >= 0) ? PointLight[5].Range_Inner_Outer.xy : temp3.yz;
        // add r6.xyz, r6, -v4
        temp6.xyz = temp6.xyz + -i.texcoord3.xyz;
        // dp3 r2.w, r6, r6
        temp2.w = dot(temp6.xyz, temp6.xyz);
        // rsq r2.w, r2.w
        temp2.w = 1 / sqrt(temp2.w);
        // rcp r3.w, r2.w
        temp3.w = 1.0f / temp2.w;
        // mul r6.xyz, r6, r2.w
        temp6.xyz = temp6.xyz * temp2.www;
        // add r2.w, -r3.y, r3.w
        temp2.w = -temp3.y + temp3.w;
        // add r3.y, -r3.y, r3.z
        temp3.y = -temp3.y + temp3.z;
        // rcp r3.y, r3.y
        temp3.y = 1.0f / temp3.y;
        // mad_sat r2.w, r2.w, -r3.y, c2.x
        temp2.w = saturate(temp2.w * -temp3.y + float1(1));
        // mul r2.w, r2.w, r2.w
        temp2.w = temp2.w * temp2.w;
        // mul r3.yzw, r5.xxyz, r2.w
        temp3.yzw = temp5.xyz * temp2.www;
        // dp3 r2.w, r4, r6
        temp2.w = dot(temp4.xyz, temp6.xyz);
        // max r4.w, r2.w, c0.y
        temp4.w = max(temp2.w, float1(0));
        // mad r0.xyw, r3.yzzw, r4.w, r0
        temp0.xyw = temp3.yzw * temp4.www + temp0.xyw;
        // endrep
    }
    // mul r0.xyw, r2.xyzz, r0
    temp0.xyw = temp2.xyz * temp0.xyw;
    // add r0.xyw, r0, r0
    temp0.xyw = temp0.xyw + temp0.xyw;
    // dp3 r2.w, r4, v5
    temp2.w = dot(temp4.xyz, i.texcoord4.xyz);
    // dp3 r3.x, r4, v6
    temp3.x = dot(temp4.xyz, i.texcoord5.xyz);
    // cmp r3.y, -r2.w, c0.y, c0.z
    temp3.y = (-temp2.w >= 0) ? float1(0) : float1(1);
    // mul r2.w, r2.w, r3.y
    temp2.w = temp2.w * temp3.y;
    // cmp r3.z, -r3.x, c0.y, c0.z
    temp3.z = (-temp3.x >= 0) ? float1(0) : float1(1);
    // mul r3.y, r3.y, r3.z
    temp3.y = temp3.y * temp3.z;
    // pow r4.x, r3.x, c3.x
    temp4.x = pow(temp3.x, float1(40));
    // mul r3.x, r3.y, r4.x
    temp3.x = temp3.y * temp4.x;
    // texld r4, r1, s4
    temp4 = tex2D(CloudSamplerSampler, temp1.xy);
    // log r3.y, r4.x
    temp3.y = log2(temp4.x);
    // log r3.z, r4.y
    temp3.z = log2(temp4.y);
    // log r3.w, r4.z
    temp3.w = log2(temp4.z);
    // mul r3.yzw, r3, c2.z
    temp3.yzw = temp3.yzw * float3(2.2, 2.2, 2.2);
    // exp r4.x, r3.y
    temp4.x = exp2(temp3.y);
    // exp r4.y, r3.z
    temp4.y = exp2(temp3.z);
    // exp r4.z, r3.w
    temp4.z = exp2(temp3.w);
    // mul r3.yzw, r4.xxyz, c5.xxyz
    temp3.yzw = temp4.xyz * DirectionalLight[0].Color.xyz;
    // dp2add r0.z, r3.x, r0.z, c0.y
    temp0.z = dot(temp3.xx, temp0.zz) + float1(0);
    // mad r2.xyz, r2.w, r2, r0.z
    temp2.xyz = temp2.www * temp2.xyz + temp0.zzz;
    // mad r0.xyz, r3.yzww, r2, r0.xyww
    temp0.xyz = temp3.yzw * temp2.xyz + temp0.xyw;
    // texld r1, r1.zwzw, s0
    temp1 = tex2D(MacroSamplerSampler, temp1.zw);
    // log r2.x, r1.x
    temp2.x = log2(temp1.x);
    // log r2.y, r1.y
    temp2.y = log2(temp1.y);
    // log r2.z, r1.z
    temp2.z = log2(temp1.z);
    // mul r1.xyz, r2, c2.z
    temp1.xyz = temp2.xyz * float3(2.2, 2.2, 2.2);
    // exp r2.x, r1.x
    temp2.x = exp2(temp1.x);
    // exp r2.y, r1.y
    temp2.y = exp2(temp1.y);
    // exp r2.z, r1.z
    temp2.z = exp2(temp1.z);
    // mad r0.xyz, r0, r2, c2.y
    temp0.xyz = temp0.xyz * temp2.xyz + float3(-1, -1, -1);
    // mad r0.xyz, v1.x, r0, c2.x
    temp0.xyz = i.color1.xxx * temp0.xyz + float3(1, 1, 1);
    // texld r1, v3, s3
    temp1 = tex2D(ShroudSamplerSampler, i.texcoord2.xy);
    // mul oC0.xyz, r0, r1.x
    out_color.xyz = temp0.xyz * temp1.xxx;
    // mov oC0.w, v0.w
    out_color.w = i.color.w;
    // 

    return out_color;
}

// PS_TerrainTile_Shadow Pixel_3_0 Has PRES True
struct PS_TerrainTile_Shadow_Input
{
    float4 color : COLOR;
    float color1 : COLOR1;
    float2 texcoord : TEXCOORD;
    float2 texcoord2 : TEXCOORD2;
    float3 texcoord3 : TEXCOORD3;
    float3 texcoord4 : TEXCOORD4;
    float3 texcoord5 : TEXCOORD5;
    float4 texcoord6 : TEXCOORD6;
};

float4 PS_TerrainTile_Shadow(PS_TerrainTile_Shadow_Input i) : COLOR
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
        float4 temp0;
        // Expression_2_1
        // mul r0.x, c0.x, (66)
        temp0.x = MapCellSize.x * (66);
        // rcp c12.x, r0.x
        expr12.x = 1.0f / (temp0.x);
    }

    float4 out_color;
    float4 temp0, temp1, temp2, temp3, temp4, temp5, temp6, temp7, temp8;
    // def c0, 0.75, 0, 1, -1
    // def c1, -2, -3, -4, -5
    // def c2, 40, -0.0015, 0.25, 0
    // def c3, 1, -1, 2.2, 2
    // dcl_color v0
    // dcl_color1 v1.x
    // dcl_texcoord v2.xy
    // dcl_texcoord2 v3.xy
    // dcl_texcoord3 v4.xyz
    // dcl_texcoord4 v5.xyz
    // dcl_texcoord5_centroid v6.xyz
    // dcl_texcoord6 v7
    // dcl_2d s0
    // dcl_2d s1
    // dcl_2d s2
    // dcl_2d s3
    // dcl_2d s4
    // dcl_2d s5
    // texld r0, v2, s1
    temp0 = tex2D(BaseSamplerClampedSampler, i.texcoord.xy);
    // mul r1.xy, c117.zwzw, v4.z
    temp1.xy = Cloud.WorldPositionMultiplier_XYZZ.zw * i.texcoord3.zz;
    // mad r1.xy, v4, c117, -r1
    temp1.xy = i.texcoord3.xy * Cloud.WorldPositionMultiplier_XYZZ.xy + -temp1.xy;
    // add r1.xy, r1, c118
    temp1.xy = temp1.xy + Cloud.CurrentOffsetUV.xy;
    // mov r2.xy, c3
    temp2.xy = float2(1, -1);
    // mul r1.zw, r2.xyxy, c12.x
    temp1.zw = temp2.xy * expr12.xx;
    // mul r1.zw, r1, v4.xyxy
    temp1.zw = temp1.zw * i.texcoord3.xy;
    // log r2.x, r0.x
    temp2.x = log2(temp0.x);
    // log r2.y, r0.y
    temp2.y = log2(temp0.y);
    // log r2.z, r0.z
    temp2.z = log2(temp0.z);
    // mul r0.xyz, r2, c3.z
    temp0.xyz = temp2.xyz * float3(2.2, 2.2, 2.2);
    // exp r2.x, r0.x
    temp2.x = exp2(temp0.x);
    // exp r2.y, r0.y
    temp2.y = exp2(temp0.y);
    // exp r2.z, r0.z
    temp2.z = exp2(temp0.z);
    // texld r0, v2, s2
    temp0 = tex2D(NormalSamplerClampedSampler, i.texcoord.xy);
    // mad r0.xy, r0, c3.w, c3.y
    temp0.xy = temp0.xy * float2(2, 2) + float2(-1, -1);
    // mad r0.w, r0.x, -r0.x, c3.x
    temp0.w = temp0.x * -temp0.x + float1(1);
    // mad r0.w, r0.y, -r0.y, r0.w
    temp0.w = temp0.y * -temp0.y + temp0.w;
    // rsq r0.w, r0.w
    temp0.w = 1 / sqrt(temp0.w);
    // rcp r3.z, r0.w
    temp3.z = 1.0f / temp0.w;
    // mul r3.xy, r0, c0.x
    temp3.xy = temp0.xy * float2(0.75, 0.75);
    // nrm r4.xyz, r3
    temp4.xyz = normalize(temp3.xyz);
    // mov r0.xyw, v0.xyzz
    temp0.xyw = i.color.xyz;
    // mov r3.x, c0.y
    temp3.x = float1(0);
    // rep i0
    for (int it0 = 0; it0 < NumPointLights; ++it0) {
        // add r5, r3.x, c1
        temp5 = temp3.x + float4(-2, -3, -4, -5);
        // add r3.xyz, r3.x, -c0.wyzw
        temp3.xyz = temp3.xxx + float3(1, -0, -1);
        // mov r6.y, c0.y
        temp6.y = float1(0);
        // cmp r6.xzw, -r3_abs.y, c89.xyyz, r6.y
        temp6.xzw = (-abs(temp3).yyy >= 0) ? PointLight[0].Color.xyz : temp6.yyy;
        // cmp r7.xyz, -r3_abs.y, c90, r6.y
        temp7.xyz = (-abs(temp3).yyy >= 0) ? PointLight[0].Position.xyz : temp6.yyy;
        // cmp r3.yw, -r3_abs.y, c91.xxzy, r6.y
        temp3.yw = (-abs(temp3).yy >= 0) ? PointLight[0].Range_Inner_Outer.xy : temp6.yy;
        // cmp r6.xyz, -r3_abs.z, c92, r6.xzww
        temp6.xyz = (-abs(temp3).zzz >= 0) ? PointLight[1].Color.xyz : temp6.xzw;
        // cmp r7.xyz, -r3_abs.z, c93, r7
        temp7.xyz = (-abs(temp3).zzz >= 0) ? PointLight[1].Position.xyz : temp7.xyz;
        // cmp r3.yz, -r3_abs.z, c94.xxyw, r3.xyww
        temp3.yz = (-abs(temp3).zz >= 0) ? PointLight[1].Range_Inner_Outer.xy : temp3.yw;
        // cmp r6.xyz, -r5_abs.x, c95, r6
        temp6.xyz = (-abs(temp5).xxx >= 0) ? PointLight[2].Color.xyz : temp6.xyz;
        // cmp r7.xyz, -r5_abs.x, c96, r7
        temp7.xyz = (-abs(temp5).xxx >= 0) ? PointLight[2].Position.xyz : temp7.xyz;
        // cmp r3.yz, -r5_abs.x, c97.xxyw, r3
        temp3.yz = (-abs(temp5).xx >= 0) ? PointLight[2].Range_Inner_Outer.xy : temp3.yz;
        // cmp r6.xyz, -r5_abs.y, c98, r6
        temp6.xyz = (-abs(temp5).yyy >= 0) ? PointLight[3].Color.xyz : temp6.xyz;
        // cmp r7.xyz, -r5_abs.y, c99, r7
        temp7.xyz = (-abs(temp5).yyy >= 0) ? PointLight[3].Position.xyz : temp7.xyz;
        // cmp r3.yz, -r5_abs.y, c100.xxyw, r3
        temp3.yz = (-abs(temp5).yy >= 0) ? PointLight[3].Range_Inner_Outer.xy : temp3.yz;
        // cmp r6.xyz, -r5_abs.z, c101, r6
        temp6.xyz = (-abs(temp5).zzz >= 0) ? PointLight[4].Color.xyz : temp6.xyz;
        // cmp r7.xyz, -r5_abs.z, c102, r7
        temp7.xyz = (-abs(temp5).zzz >= 0) ? PointLight[4].Position.xyz : temp7.xyz;
        // cmp r3.yz, -r5_abs.z, c103.xxyw, r3
        temp3.yz = (-abs(temp5).zz >= 0) ? PointLight[4].Range_Inner_Outer.xy : temp3.yz;
        // cmp r5.xyz, -r5_abs.w, c104, r6
        temp5.xyz = (-abs(temp5).www >= 0) ? PointLight[5].Color.xyz : temp6.xyz;
        // cmp r6.xyz, -r5_abs.w, c105, r7
        temp6.xyz = (-abs(temp5).www >= 0) ? PointLight[5].Position.xyz : temp7.xyz;
        // cmp r3.yz, -r5_abs.w, c106.xxyw, r3
        temp3.yz = (-abs(temp5).ww >= 0) ? PointLight[5].Range_Inner_Outer.xy : temp3.yz;
        // add r6.xyz, r6, -v4
        temp6.xyz = temp6.xyz + -i.texcoord3.xyz;
        // dp3 r2.w, r6, r6
        temp2.w = dot(temp6.xyz, temp6.xyz);
        // rsq r2.w, r2.w
        temp2.w = 1 / sqrt(temp2.w);
        // rcp r3.w, r2.w
        temp3.w = 1.0f / temp2.w;
        // mul r6.xyz, r6, r2.w
        temp6.xyz = temp6.xyz * temp2.www;
        // add r2.w, -r3.y, r3.w
        temp2.w = -temp3.y + temp3.w;
        // add r3.y, -r3.y, r3.z
        temp3.y = -temp3.y + temp3.z;
        // rcp r3.y, r3.y
        temp3.y = 1.0f / temp3.y;
        // mad_sat r2.w, r2.w, -r3.y, c3.x
        temp2.w = saturate(temp2.w * -temp3.y + float1(1));
        // mul r2.w, r2.w, r2.w
        temp2.w = temp2.w * temp2.w;
        // mul r3.yzw, r5.xxyz, r2.w
        temp3.yzw = temp5.xyz * temp2.www;
        // dp3 r2.w, r4, r6
        temp2.w = dot(temp4.xyz, temp6.xyz);
        // max r4.w, r2.w, c0.y
        temp4.w = max(temp2.w, float1(0));
        // mad r0.xyw, r3.yzzw, r4.w, r0
        temp0.xyw = temp3.yzw * temp4.www + temp0.xyw;
        // endrep
    }
    // mul r0.xyw, r2.xyzz, r0
    temp0.xyw = temp2.xyz * temp0.xyw;
    // add r0.xyw, r0, r0
    temp0.xyw = temp0.xyw + temp0.xyw;
    // dp3 r2.w, r4, v5
    temp2.w = dot(temp4.xyz, i.texcoord4.xyz);
    // dp3 r3.x, r4, v6
    temp3.x = dot(temp4.xyz, i.texcoord5.xyz);
    // cmp r3.y, -r2.w, c0.y, c0.z
    temp3.y = (-temp2.w >= 0) ? float1(0) : float1(1);
    // mul r3.z, r2.w, r3.y
    temp3.z = temp2.w * temp3.y;
    // cmp r2.w, -r3.x, c0.y, c0.z
    temp2.w = (-temp3.x >= 0) ? float1(0) : float1(1);
    // mul r2.w, r3.y, r2.w
    temp2.w = temp3.y * temp2.w;
    // pow r4.x, r3.x, c2.x
    temp4.x = pow(temp3.x, float1(40));
    // mul r3.w, r2.w, r4.x
    temp3.w = temp2.w * temp4.x;
    // rcp r2.w, v7.w
    temp2.w = 1.0f / i.texcoord6.w;
    // mul r3.xy, r2.w, v7
    temp3.xy = temp2.ww * i.texcoord6.xy;
    // mad r4.x, v7.z, r2.w, c2.y
    temp4.x = i.texcoord6.z * temp2.w/* + float1(-0.0015) 修！*/;
    // texld r5, r3, s5
    temp5 = tex2D(ShadowMapSampler, temp3.xy);
    // mad r3.xy, v7, r2.w, c11.zxzw
    temp3.xy = i.texcoord6.xy * temp2.ww + Shadowmap_Zero_Zero_OneOverMapSize_OneOverMapSize.zx;
    // texld r6, r3, s5
    temp6 = tex2D(ShadowMapSampler, temp3.xy);
    // mad r3.xy, v7, r2.w, c11.yzzw
    temp3.xy = i.texcoord6.xy * temp2.ww + Shadowmap_Zero_Zero_OneOverMapSize_OneOverMapSize.yz;
    // texld r7, r3, s5
    temp7 = tex2D(ShadowMapSampler, temp3.xy);
    // mad r3.xy, v7, r2.w, c11.wzzw
    temp3.xy = i.texcoord6.xy * temp2.ww + Shadowmap_Zero_Zero_OneOverMapSize_OneOverMapSize.wz;
    // texld r8, r3, s5
    temp8 = tex2D(ShadowMapSampler, temp3.xy);
    // mov r5.y, r6.x
    temp5.y = temp6.x;
    // mov r5.z, r7.x
    temp5.z = temp7.x;
    // mov r5.w, r8.x
    temp5.w = temp8.x;
    // add r4, -r4.x, r5
    temp4 = -temp4.x + temp5;
    // cmp r4, r4, c0.z, c0.y
    temp4 = (temp4 >= 0) ? float4(1, 1, 1, 1) : float4(0, 0, 0, 0);
    // dp4 r2.w, c3.x, r4
    temp2.w = dot(float4(1, 1, 1, 1), temp4);
    // mul r2.w, r2.w, c2.z
    temp2.w = temp2.w * float1(0.25);
    // mul r3.xy, r3.zwzw, r2.w
    temp3.xy = temp3.zw * temp2.ww;
    // texld r4, r1, s4
    temp4 = tex2D(CloudSamplerSampler, temp1.xy);
    // log r5.x, r4.x
    temp5.x = log2(temp4.x);
    // log r5.y, r4.y
    temp5.y = log2(temp4.y);
    // log r5.z, r4.z
    temp5.z = log2(temp4.z);
    // mul r4.xyz, r5, c3.z
    temp4.xyz = temp5.xyz * float3(2.2, 2.2, 2.2);
    // exp r5.x, r4.x
    temp5.x = exp2(temp4.x);
    // exp r5.y, r4.y
    temp5.y = exp2(temp4.y);
    // exp r5.z, r4.z
    temp5.z = exp2(temp4.z);
    // mul r4.xyz, r5, c5
    temp4.xyz = temp5.xyz * DirectionalLight[0].Color.xyz;
    // dp2add r0.z, r3.y, r0.z, c0.y
    temp0.z = dot(temp3.yy, temp0.zz) + float1(0);
    // mad r2.xyz, r3.x, r2, r0.z
    temp2.xyz = temp3.xxx * temp2.xyz + temp0.zzz;
    // mad r0.xyz, r4, r2, r0.xyww
    temp0.xyz = temp4.xyz * temp2.xyz + temp0.xyw;
    // texld r1, r1.zwzw, s0
    temp1 = tex2D(MacroSamplerSampler, temp1.zw);
    // log r2.x, r1.x
    temp2.x = log2(temp1.x);
    // log r2.y, r1.y
    temp2.y = log2(temp1.y);
    // log r2.z, r1.z
    temp2.z = log2(temp1.z);
    // mul r1.xyz, r2, c3.z
    temp1.xyz = temp2.xyz * float3(2.2, 2.2, 2.2);
    // exp r2.x, r1.x
    temp2.x = exp2(temp1.x);
    // exp r2.y, r1.y
    temp2.y = exp2(temp1.y);
    // exp r2.z, r1.z
    temp2.z = exp2(temp1.z);
    // mad r0.xyz, r0, r2, c3.y
    temp0.xyz = temp0.xyz * temp2.xyz + float3(-1, -1, -1);
    // mad r0.xyz, v1.x, r0, c3.x
    temp0.xyz = i.color1.xxx * temp0.xyz + float3(1, 1, 1);
    // texld r1, v3, s3
    temp1 = tex2D(ShroudSamplerSampler, i.texcoord2.xy);
    // mul oC0.xyz, r0, r1.x
    out_color.xyz = temp0.xyz * temp1.xxx;
    // mov oC0.w, v0.w
    out_color.w = i.color.w;
    // 
    return out_color;
}

// PS_TerrainTile_Atlas Pixel_3_0 Has PRES True
struct PS_TerrainTile_Atlas_Input
{
    float4 color : COLOR;
    float color1 : COLOR1;
    float4 texcoord : TEXCOORD;
    float4 texcoord1 : TEXCOORD1;
    float2 texcoord2 : TEXCOORD2;
    float3 texcoord3 : TEXCOORD3;
    float3 texcoord4 : TEXCOORD4;
    float3 texcoord5 : TEXCOORD5;
};

float4 PS_TerrainTile_Atlas(PS_TerrainTile_Atlas_Input i) : COLOR
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
        float4 temp0;
        // Expression_2_1
        // mul r0.x, c0.x, (66)
        temp0.x = MapCellSize.x * (66);
        // rcp c11.x, r0.x
        expr11.x = 1.0f / (temp0.x);
    }

    float4 out_color;
    float4 temp0, temp1, temp2, temp3, temp4, temp5, temp6;
    float3 temp7;
    // def c0, -2, -3, -4, -5
    // def c1, 0.75, 1, 0, -1
    // def c2, 1, -1, 2.2, 2
    // def c3, 40, 0, 0, 0
    // dcl_color v0
    // dcl_color1 v1.x
    // dcl_texcoord v2
    // dcl_texcoord1 v3
    // dcl_texcoord2 v4.xy
    // dcl_texcoord3 v5.xyz
    // dcl_texcoord4 v6.xyz
    // dcl_texcoord5_centroid v7.xyz
    // dcl_2d s0
    // dcl_2d s1
    // dcl_2d s2
    // dcl_2d s3
    // dcl_2d s4
    // texld r0, v2, s1
    temp0 = tex2D(BaseSamplerClampedSampler, i.texcoord.xy);
    // mul r1.xy, c117.zwzw, v5.z
    temp1.xy = Cloud.WorldPositionMultiplier_XYZZ.zw * i.texcoord3.zz;
    // mad r1.xy, v5, c117, -r1
    temp1.xy = i.texcoord3.xy * Cloud.WorldPositionMultiplier_XYZZ.xy + -temp1.xy;
    // add r1.xy, r1, c118
    temp1.xy = temp1.xy + Cloud.CurrentOffsetUV.xy;
    // mov r2.xy, c2
    temp2.xy = float2(1, -1);
    // mul r1.zw, r2.xyxy, c11.x
    temp1.zw = temp2.xy * expr11.xx;
    // mul r1.zw, r1, v5.xyxy
    temp1.zw = temp1.zw * i.texcoord3.xy;
    // mov_sat r2.xy, v2.wzzw
    temp2.xy = saturate(i.texcoord.wz);
    // texld r3, v3, s1
    temp3 = tex2D(BaseSamplerClampedSampler, i.texcoord1.xy);
    // texld r4, v3.wzzw, s1
    temp4 = tex2D(BaseSamplerClampedSampler, i.texcoord1.wz);
    // lrp r5, r2.x, r3, r0
    temp5 = lerp(temp0, temp3, temp2.x);
    // lrp r0, r2.y, r4, r5
    temp0 = lerp(temp5, temp4, temp2.y);
    // log r3.x, r0.x
    temp3.x = log2(temp0.x);
    // log r3.y, r0.y
    temp3.y = log2(temp0.y);
    // log r3.z, r0.z
    temp3.z = log2(temp0.z);
    // mul r0.xyz, r3, c2.z
    temp0.xyz = temp3.xyz * float3(2.2, 2.2, 2.2);
    // exp r3.x, r0.x
    temp3.x = exp2(temp0.x);
    // exp r3.y, r0.y
    temp3.y = exp2(temp0.y);
    // exp r3.z, r0.z
    temp3.z = exp2(temp0.z);
    // texld r4, v2, s2
    temp4 = tex2D(NormalSamplerClampedSampler, i.texcoord.xy);
    // texld r5, v3, s2
    temp5 = tex2D(NormalSamplerClampedSampler, i.texcoord1.xy);
    // texld r6, v3.wzzw, s2
    temp6 = tex2D(NormalSamplerClampedSampler, i.texcoord1.wz);
    // lrp r0.xyz, r2.x, r5, r4
    temp0.xyz = lerp(temp4.xyz, temp5.xyz, temp2.xxx);
    // lrp r4.xyz, r2.y, r6, r0
    temp4.xyz = lerp(temp0.xyz, temp6.xyz, temp2.yyy);
    // mad r0.xyz, r4, c2.w, c2.y
    temp0.xyz = temp4.xyz * float3(2, 2, 2) + float3(-1, -1, -1);
    // mul r0.xyz, r0, c1.xxyw
    temp0.xyz = temp0.xyz * float3(0.75, 0.75, 1);
    // nrm r2.xyz, r0
    temp2.xyz = normalize(temp0.xyz);
    // mov r0.xyz, v0
    temp0.xyz = i.color.xyz;
    // mov r4.x, c1.z
    temp4.x = float1(0);
    // rep i0
    for (int it0 = 0; it0 < NumPointLights; ++it0) {
        // add r5, r4.x, c0
        temp5 = temp4.x + float4(-2, -3, -4, -5);
        // add r4.xyz, r4.x, -c1.wzyw
        temp4.xyz = temp4.xxx + float3(1, -0, -1);
        // mov r6.z, c1.z
        temp6.z = float1(0);
        // cmp r6.xyw, -r4_abs.y, c89.xyzz, r6.z
        temp6.xyw = (-abs(temp4).yyy >= 0) ? PointLight[0].Color.xyz : temp6.zzz;
        // cmp r7.xyz, -r4_abs.y, c90, r6.z
        temp7.xyz = (-abs(temp4).yyy >= 0) ? PointLight[0].Position.xyz : temp6.zzz;
        // cmp r4.yw, -r4_abs.y, c91.xxzy, r6.z
        temp4.yw = (-abs(temp4).yy >= 0) ? PointLight[0].Range_Inner_Outer.xy : temp6.zz;
        // cmp r6.xyz, -r4_abs.z, c92, r6.xyww
        temp6.xyz = (-abs(temp4).zzz >= 0) ? PointLight[1].Color.xyz : temp6.xyw;
        // cmp r7.xyz, -r4_abs.z, c93, r7
        temp7.xyz = (-abs(temp4).zzz >= 0) ? PointLight[1].Position.xyz : temp7.xyz;
        // cmp r4.yz, -r4_abs.z, c94.xxyw, r4.xyww
        temp4.yz = (-abs(temp4).zz >= 0) ? PointLight[1].Range_Inner_Outer.xy : temp4.yw;
        // cmp r6.xyz, -r5_abs.x, c95, r6
        temp6.xyz = (-abs(temp5).xxx >= 0) ? PointLight[2].Color.xyz : temp6.xyz;
        // cmp r7.xyz, -r5_abs.x, c96, r7
        temp7.xyz = (-abs(temp5).xxx >= 0) ? PointLight[2].Position.xyz : temp7.xyz;
        // cmp r4.yz, -r5_abs.x, c97.xxyw, r4
        temp4.yz = (-abs(temp5).xx >= 0) ? PointLight[2].Range_Inner_Outer.xy : temp4.yz;
        // cmp r6.xyz, -r5_abs.y, c98, r6
        temp6.xyz = (-abs(temp5).yyy >= 0) ? PointLight[3].Color.xyz : temp6.xyz;
        // cmp r7.xyz, -r5_abs.y, c99, r7
        temp7.xyz = (-abs(temp5).yyy >= 0) ? PointLight[3].Position.xyz : temp7.xyz;
        // cmp r4.yz, -r5_abs.y, c100.xxyw, r4
        temp4.yz = (-abs(temp5).yy >= 0) ? PointLight[3].Range_Inner_Outer.xy : temp4.yz;
        // cmp r6.xyz, -r5_abs.z, c101, r6
        temp6.xyz = (-abs(temp5).zzz >= 0) ? PointLight[4].Color.xyz : temp6.xyz;
        // cmp r7.xyz, -r5_abs.z, c102, r7
        temp7.xyz = (-abs(temp5).zzz >= 0) ? PointLight[4].Position.xyz : temp7.xyz;
        // cmp r4.yz, -r5_abs.z, c103.xxyw, r4
        temp4.yz = (-abs(temp5).zz >= 0) ? PointLight[4].Range_Inner_Outer.xy : temp4.yz;
        // cmp r5.xyz, -r5_abs.w, c104, r6
        temp5.xyz = (-abs(temp5).www >= 0) ? PointLight[5].Color.xyz : temp6.xyz;
        // cmp r6.xyz, -r5_abs.w, c105, r7
        temp6.xyz = (-abs(temp5).www >= 0) ? PointLight[5].Position.xyz : temp7.xyz;
        // cmp r4.yz, -r5_abs.w, c106.xxyw, r4
        temp4.yz = (-abs(temp5).ww >= 0) ? PointLight[5].Range_Inner_Outer.xy : temp4.yz;
        // add r6.xyz, r6, -v5
        temp6.xyz = temp6.xyz + -i.texcoord3.xyz;
        // dp3 r2.w, r6, r6
        temp2.w = dot(temp6.xyz, temp6.xyz);
        // rsq r2.w, r2.w
        temp2.w = 1 / sqrt(temp2.w);
        // rcp r3.w, r2.w
        temp3.w = 1.0f / temp2.w;
        // mul r6.xyz, r6, r2.w
        temp6.xyz = temp6.xyz * temp2.www;
        // add r2.w, -r4.y, r3.w
        temp2.w = -temp4.y + temp3.w;
        // add r3.w, -r4.y, r4.z
        temp3.w = -temp4.y + temp4.z;
        // rcp r3.w, r3.w
        temp3.w = 1.0f / temp3.w;
        // mad_sat r2.w, r2.w, -r3.w, c2.x
        temp2.w = saturate(temp2.w * -temp3.w + float1(1));
        // mul r2.w, r2.w, r2.w
        temp2.w = temp2.w * temp2.w;
        // mul r4.yzw, r5.xxyz, r2.w
        temp4.yzw = temp5.xyz * temp2.www;
        // dp3 r2.w, r2, r6
        temp2.w = dot(temp2.xyz, temp6.xyz);
        // max r3.w, r2.w, c1.z
        temp3.w = max(temp2.w, float1(0));
        // mad r0.xyz, r4.yzww, r3.w, r0
        temp0.xyz = temp4.yzw * temp3.www + temp0.xyz;
        // endrep
    }
    // mul r0.xyz, r3, r0
    temp0.xyz = temp3.xyz * temp0.xyz;
    // add r0.xyz, r0, r0
    temp0.xyz = temp0.xyz + temp0.xyz;
    // dp3 r2.w, r2, v6
    temp2.w = dot(temp2.xyz, i.texcoord4.xyz);
    // dp3 r2.x, r2, v7
    temp2.x = dot(temp2.xyz, i.texcoord5.xyz);
    // cmp r2.y, -r2.w, c1.z, c1.y
    temp2.y = (-temp2.w >= 0) ? float1(0) : float1(1);
    // mul r2.z, r2.w, r2.y
    temp2.z = temp2.w * temp2.y;
    // cmp r2.w, -r2.x, c1.z, c1.y
    temp2.w = (-temp2.x >= 0) ? float1(0) : float1(1);
    // mul r2.y, r2.y, r2.w
    temp2.y = temp2.y * temp2.w;
    // pow r3.w, r2.x, c3.x
    temp3.w = pow(temp2.x, float1(40));
    // mul r2.x, r2.y, r3.w
    temp2.x = temp2.y * temp3.w;
    // texld r4, r1, s4
    temp4 = tex2D(CloudSamplerSampler, temp1.xy);
    // log r5.x, r4.x
    temp5.x = log2(temp4.x);
    // log r5.y, r4.y
    temp5.y = log2(temp4.y);
    // log r5.z, r4.z
    temp5.z = log2(temp4.z);
    // mul r4.xyz, r5, c2.z
    temp4.xyz = temp5.xyz * float3(2.2, 2.2, 2.2);
    // exp r5.x, r4.x
    temp5.x = exp2(temp4.x);
    // exp r5.y, r4.y
    temp5.y = exp2(temp4.y);
    // exp r5.z, r4.z
    temp5.z = exp2(temp4.z);
    // mul r4.xyz, r5, c5
    temp4.xyz = temp5.xyz * DirectionalLight[0].Color.xyz;
    // dp2add r0.w, r2.x, r0.w, c1.z
    temp0.w = dot(temp2.xx, temp0.ww) + float1(0);
    // mad r2.xyz, r2.z, r3, r0.w
    temp2.xyz = temp2.zzz * temp3.xyz + temp0.www;
    // mad r0.xyz, r4, r2, r0
    temp0.xyz = temp4.xyz * temp2.xyz + temp0.xyz;
    // texld r1, r1.zwzw, s0
    temp1 = tex2D(MacroSamplerSampler, temp1.zw);
    // log r2.x, r1.x
    temp2.x = log2(temp1.x);
    // log r2.y, r1.y
    temp2.y = log2(temp1.y);
    // log r2.z, r1.z
    temp2.z = log2(temp1.z);
    // mul r1.xyz, r2, c2.z
    temp1.xyz = temp2.xyz * float3(2.2, 2.2, 2.2);
    // exp r2.x, r1.x
    temp2.x = exp2(temp1.x);
    // exp r2.y, r1.y
    temp2.y = exp2(temp1.y);
    // exp r2.z, r1.z
    temp2.z = exp2(temp1.z);
    // mad r0.xyz, r0, r2, c2.y
    temp0.xyz = temp0.xyz * temp2.xyz + float3(-1, -1, -1);
    // mad r0.xyz, v1.x, r0, c2.x
    temp0.xyz = i.color1.xxx * temp0.xyz + float3(1, 1, 1);
    // texld r1, v4, s3
    temp1 = tex2D(ShroudSamplerSampler, i.texcoord2.xy);
    // mul oC0.xyz, r0, r1.x
    out_color.xyz = temp0.xyz * temp1.xxx;
    // mov oC0.w, v0.w
    out_color.w = i.color.w;
    // 

    return out_color;
}

// PS_TerrainTile_Atlas_Shadow Pixel_3_0 Has PRES True
struct PS_TerrainTile_Atlas_Shadow_Input
{
    float4 color : COLOR;
    float color1 : COLOR1;
    float4 texcoord : TEXCOORD;
    float4 texcoord1 : TEXCOORD1;
    float2 texcoord2 : TEXCOORD2;
    float3 texcoord3 : TEXCOORD3;
    float3 texcoord4 : TEXCOORD4;
    float3 texcoord5 : TEXCOORD5;
    float3 texcoord6 : TEXCOORD6;
};

float4 PS_TerrainTile_Atlas_Shadow(PS_TerrainTile_Atlas_Shadow_Input i) : COLOR
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
        float4 temp0;
        // Expression_2_1
        // mul r0.x, c0.x, (66)
        temp0.x = MapCellSize.x * (66);
        // rcp c12.x, r0.x
        expr12.x = 1.0f / (temp0.x);
    }

    float4 out_color;
    float4 temp0, temp1, temp2, temp3, temp4, temp5, temp6, temp7;
    // def c0, -2, -3, -4, -5
    // def c1, 40, 0.25, 0, 0
    // def c2, 0.75, 1, 0, -1
    // def c3, 1, -1, 2.2, 2
    // dcl_color v0
    // dcl_color1 v1.x
    // dcl_texcoord v2
    // dcl_texcoord1 v3
    // dcl_texcoord2 v4.xy
    // dcl_texcoord3 v5.xyz
    // dcl_texcoord4 v6.xyz
    // dcl_texcoord5_centroid v7.xyz
    // dcl_texcoord6 v8.xyz
    // dcl_2d s0
    // dcl_2d s1
    // dcl_2d s2
    // dcl_2d s3
    // dcl_2d s4
    // dcl_2d s5
    // texld r0, v2, s1
    temp0 = tex2D(BaseSamplerClampedSampler, i.texcoord.xy);
    // mul r1.xy, c117.zwzw, v5.z
    temp1.xy = Cloud.WorldPositionMultiplier_XYZZ.zw * i.texcoord3.zz;
    // mad r1.xy, v5, c117, -r1
    temp1.xy = i.texcoord3.xy * Cloud.WorldPositionMultiplier_XYZZ.xy + -temp1.xy;
    // add r1.xy, r1, c118
    temp1.xy = temp1.xy + Cloud.CurrentOffsetUV.xy;
    // mov r2.xy, c3
    temp2.xy = float2(1, -1);
    // mul r1.zw, r2.xyxy, c12.x
    temp1.zw = temp2.xy * expr12.xx;
    // mul r1.zw, r1, v5.xyxy
    temp1.zw = temp1.zw * i.texcoord3.xy;
    // mov_sat r2.xy, v2.wzzw
    temp2.xy = saturate(i.texcoord.wz);
    // texld r3, v3, s1
    temp3 = tex2D(BaseSamplerClampedSampler, i.texcoord1.xy);
    // texld r4, v3.wzzw, s1
    temp4 = tex2D(BaseSamplerClampedSampler, i.texcoord1.wz);
    // lrp r5, r2.x, r3, r0
    temp5 = lerp(temp0, temp3, temp2.x);
    // lrp r0, r2.y, r4, r5
    temp0 = lerp(temp5, temp4, temp2.y);
    // log r3.x, r0.x
    temp3.x = log2(temp0.x);
    // log r3.y, r0.y
    temp3.y = log2(temp0.y);
    // log r3.z, r0.z
    temp3.z = log2(temp0.z);
    // mul r0.xyz, r3, c3.z
    temp0.xyz = temp3.xyz * float3(2.2, 2.2, 2.2);
    // exp r3.x, r0.x
    temp3.x = exp2(temp0.x);
    // exp r3.y, r0.y
    temp3.y = exp2(temp0.y);
    // exp r3.z, r0.z
    temp3.z = exp2(temp0.z);
    // texld r4, v2, s2
    temp4 = tex2D(NormalSamplerClampedSampler, i.texcoord.xy);
    // texld r5, v3, s2
    temp5 = tex2D(NormalSamplerClampedSampler, i.texcoord1.xy);
    // texld r6, v3.wzzw, s2
    temp6 = tex2D(NormalSamplerClampedSampler, i.texcoord1.wz);
    // lrp r0.xyz, r2.x, r5, r4
    temp0.xyz = lerp(temp4.xyz, temp5.xyz, temp2.xxx);
    // lrp r4.xyz, r2.y, r6, r0
    temp4.xyz = lerp(temp0.xyz, temp6.xyz, temp2.yyy);
    // mad r0.xyz, r4, c3.w, c3.y
    temp0.xyz = temp4.xyz * float3(2, 2, 2) + float3(-1, -1, -1);
    // mul r0.xyz, r0, c2.xxyw
    temp0.xyz = temp0.xyz * float3(0.75, 0.75, 1);
    // nrm r2.xyz, r0
    temp2.xyz = normalize(temp0.xyz);
    // mov r0.xyz, v0
    temp0.xyz = i.color.xyz;
    // mov r4.x, c2.z
    temp4.x = float1(0);
    // rep i0
    for (int it0 = 0; it0 < NumPointLights; ++it0) {
        // add r5, r4.x, c0
        temp5 = temp4.x + float4(-2, -3, -4, -5);
        // add r4.xyz, r4.x, -c2.wzyw
        temp4.xyz = temp4.xxx + float3(1, -0, -1);
        // mov r6.z, c2.z
        temp6.z = float1(0);
        // cmp r6.xyw, -r4_abs.y, c89.xyzz, r6.z
        temp6.xyw = (-abs(temp4).yyy >= 0) ? PointLight[0].Color.xyz : temp6.zzz;
        // cmp r7.xyz, -r4_abs.y, c90, r6.z
        temp7.xyz = (-abs(temp4).yyy >= 0) ? PointLight[0].Position.xyz : temp6.zzz;
        // cmp r4.yw, -r4_abs.y, c91.xxzy, r6.z
        temp4.yw = (-abs(temp4).yy >= 0) ? PointLight[0].Range_Inner_Outer.xy : temp6.zz;
        // cmp r6.xyz, -r4_abs.z, c92, r6.xyww
        temp6.xyz = (-abs(temp4).zzz >= 0) ? PointLight[1].Color.xyz : temp6.xyw;
        // cmp r7.xyz, -r4_abs.z, c93, r7
        temp7.xyz = (-abs(temp4).zzz >= 0) ? PointLight[1].Position.xyz : temp7.xyz;
        // cmp r4.yz, -r4_abs.z, c94.xxyw, r4.xyww
        temp4.yz = (-abs(temp4).zz >= 0) ? PointLight[1].Range_Inner_Outer.xy : temp4.yw;
        // cmp r6.xyz, -r5_abs.x, c95, r6
        temp6.xyz = (-abs(temp5).xxx >= 0) ? PointLight[2].Color.xyz : temp6.xyz;
        // cmp r7.xyz, -r5_abs.x, c96, r7
        temp7.xyz = (-abs(temp5).xxx >= 0) ? PointLight[2].Position.xyz : temp7.xyz;
        // cmp r4.yz, -r5_abs.x, c97.xxyw, r4
        temp4.yz = (-abs(temp5).xx >= 0) ? PointLight[2].Range_Inner_Outer.xy : temp4.yz;
        // cmp r6.xyz, -r5_abs.y, c98, r6
        temp6.xyz = (-abs(temp5).yyy >= 0) ? PointLight[3].Color.xyz : temp6.xyz;
        // cmp r7.xyz, -r5_abs.y, c99, r7
        temp7.xyz = (-abs(temp5).yyy >= 0) ? PointLight[3].Position.xyz : temp7.xyz;
        // cmp r4.yz, -r5_abs.y, c100.xxyw, r4
        temp4.yz = (-abs(temp5).yy >= 0) ? PointLight[3].Range_Inner_Outer.xy : temp4.yz;
        // cmp r6.xyz, -r5_abs.z, c101, r6
        temp6.xyz = (-abs(temp5).zzz >= 0) ? PointLight[4].Color.xyz : temp6.xyz;
        // cmp r7.xyz, -r5_abs.z, c102, r7
        temp7.xyz = (-abs(temp5).zzz >= 0) ? PointLight[4].Position.xyz : temp7.xyz;
        // cmp r4.yz, -r5_abs.z, c103.xxyw, r4
        temp4.yz = (-abs(temp5).zz >= 0) ? PointLight[4].Range_Inner_Outer.xy : temp4.yz;
        // cmp r5.xyz, -r5_abs.w, c104, r6
        temp5.xyz = (-abs(temp5).www >= 0) ? PointLight[5].Color.xyz : temp6.xyz;
        // cmp r6.xyz, -r5_abs.w, c105, r7
        temp6.xyz = (-abs(temp5).www >= 0) ? PointLight[5].Position.xyz : temp7.xyz;
        // cmp r4.yz, -r5_abs.w, c106.xxyw, r4
        temp4.yz = (-abs(temp5).ww >= 0) ? PointLight[5].Range_Inner_Outer.xy : temp4.yz;
        // add r6.xyz, r6, -v5
        temp6.xyz = temp6.xyz + -i.texcoord3.xyz;
        // dp3 r2.w, r6, r6
        temp2.w = dot(temp6.xyz, temp6.xyz);
        // rsq r2.w, r2.w
        temp2.w = 1 / sqrt(temp2.w);
        // rcp r3.w, r2.w
        temp3.w = 1.0f / temp2.w;
        // mul r6.xyz, r6, r2.w
        temp6.xyz = temp6.xyz * temp2.www;
        // add r2.w, -r4.y, r3.w
        temp2.w = -temp4.y + temp3.w;
        // add r3.w, -r4.y, r4.z
        temp3.w = -temp4.y + temp4.z;
        // rcp r3.w, r3.w
        temp3.w = 1.0f / temp3.w;
        // mad_sat r2.w, r2.w, -r3.w, c3.x
        temp2.w = saturate(temp2.w * -temp3.w + float1(1));
        // mul r2.w, r2.w, r2.w
        temp2.w = temp2.w * temp2.w;
        // mul r4.yzw, r5.xxyz, r2.w
        temp4.yzw = temp5.xyz * temp2.www;
        // dp3 r2.w, r2, r6
        temp2.w = dot(temp2.xyz, temp6.xyz);
        // max r3.w, r2.w, c2.z
        temp3.w = max(temp2.w, float1(0));
        // mad r0.xyz, r4.yzww, r3.w, r0
        temp0.xyz = temp4.yzw * temp3.www + temp0.xyz;
        // endrep
    }
    // mul r0.xyz, r3, r0
    temp0.xyz = temp3.xyz * temp0.xyz;
    // add r0.xyz, r0, r0
    temp0.xyz = temp0.xyz + temp0.xyz;
    // dp3 r2.w, r2, v6
    temp2.w = dot(temp2.xyz, i.texcoord4.xyz);
    // dp3 r2.x, r2, v7
    temp2.x = dot(temp2.xyz, i.texcoord5.xyz);
    // cmp r2.y, -r2.w, c2.z, c2.y
    temp2.y = (-temp2.w >= 0) ? float1(0) : float1(1);
    // mul r2.z, r2.w, r2.y
    temp2.z = temp2.w * temp2.y;
    // cmp r3.w, -r2.x, c2.z, c2.y
    temp3.w = (-temp2.x >= 0) ? float1(0) : float1(1);
    // mul r2.y, r2.y, r3.w
    temp2.y = temp2.y * temp3.w;
    // pow r3.w, r2.x, c1.x
    temp3.w = pow(temp2.x, float1(40));
    // mul r2.w, r2.y, r3.w
    temp2.w = temp2.y * temp3.w;
    // texld r4, v8, s5
    temp4 = tex2D(ShadowMapSampler, i.texcoord6.xy);
    // add r2.xy, c11.zxzw, v8
    temp2.xy = Shadowmap_Zero_Zero_OneOverMapSize_OneOverMapSize.zx + i.texcoord6.xy;
    // texld r5, r2, s5
    temp5 = tex2D(ShadowMapSampler, temp2.xy);
    // add r2.xy, c11.yzzw, v8
    temp2.xy = Shadowmap_Zero_Zero_OneOverMapSize_OneOverMapSize.yz + i.texcoord6.xy;
    // texld r6, r2, s5
    temp6 = tex2D(ShadowMapSampler, temp2.xy);
    // add r2.xy, c11.wzzw, v8
    temp2.xy = Shadowmap_Zero_Zero_OneOverMapSize_OneOverMapSize.wz + i.texcoord6.xy;
    // texld r7, r2, s5
    temp7 = tex2D(ShadowMapSampler, temp2.xy);
    // mov r4.y, r5.x
    temp4.y = temp5.x;
    // mov r4.z, r6.x
    temp4.z = temp6.x;
    // mov r4.w, r7.x
    temp4.w = temp7.x;
    // add r4, r4, -v8.z
    temp4 = temp4 + -i.texcoord6.z;
    // cmp r4, r4, c2.y, c2.z
    temp4 = (temp4 >= 0) ? float4(1, 1, 1, 1) : float4(0, 0, 0, 0);
    // dp4 r2.x, c3.x, r4
    temp2.x = dot(float4(1, 1, 1, 1), temp4);
    // mul r2.x, r2.x, c1.y
    temp2.x = temp2.x * float1(0.25);
    // mul r2.xy, r2.zwzw, r2.x
    temp2.xy = temp2.zw * temp2.xx;
    // texld r4, r1, s4
    temp4 = tex2D(CloudSamplerSampler, temp1.xy);
    // log r5.x, r4.x
    temp5.x = log2(temp4.x);
    // log r5.y, r4.y
    temp5.y = log2(temp4.y);
    // log r5.z, r4.z
    temp5.z = log2(temp4.z);
    // mul r4.xyz, r5, c3.z
    temp4.xyz = temp5.xyz * float3(2.2, 2.2, 2.2);
    // exp r5.x, r4.x
    temp5.x = exp2(temp4.x);
    // exp r5.y, r4.y
    temp5.y = exp2(temp4.y);
    // exp r5.z, r4.z
    temp5.z = exp2(temp4.z);
    // mul r4.xyz, r5, c5
    temp4.xyz = temp5.xyz * DirectionalLight[0].Color.xyz;
    // dp2add r0.w, r2.y, r0.w, c2.z
    temp0.w = dot(temp2.yy, temp0.ww) + float1(0);
    // mad r2.xyz, r2.x, r3, r0.w
    temp2.xyz = temp2.xxx * temp3.xyz + temp0.www;
    // mad r0.xyz, r4, r2, r0
    temp0.xyz = temp4.xyz * temp2.xyz + temp0.xyz;
    // texld r1, r1.zwzw, s0
    temp1 = tex2D(MacroSamplerSampler, temp1.zw);
    // log r2.x, r1.x
    temp2.x = log2(temp1.x);
    // log r2.y, r1.y
    temp2.y = log2(temp1.y);
    // log r2.z, r1.z
    temp2.z = log2(temp1.z);
    // mul r1.xyz, r2, c3.z
    temp1.xyz = temp2.xyz * float3(2.2, 2.2, 2.2);
    // exp r2.x, r1.x
    temp2.x = exp2(temp1.x);
    // exp r2.y, r1.y
    temp2.y = exp2(temp1.y);
    // exp r2.z, r1.z
    temp2.z = exp2(temp1.z);
    // mad r0.xyz, r0, r2, c3.y
    temp0.xyz = temp0.xyz * temp2.xyz + float3(-1, -1, -1);
    // mad r0.xyz, v1.x, r0, c3.x
    temp0.xyz = i.color1.xxx * temp0.xyz + float3(1, 1, 1);
    // texld r1, v4, s3
    temp1 = tex2D(ShroudSamplerSampler, i.texcoord2.xy);
    // mul oC0.xyz, r0, r1.x
    out_color.xyz = temp0.xyz * temp1.xxx;
    // mov oC0.w, v0.w
    out_color.w = i.color.w;
    // 
    return out_color;
}

PixelShader PS_TerrainTile_Array[4] = {
    compile ps_3_0 PS_TerrainTile_Basic(), // 91
    compile ps_3_0 PS_TerrainTile_Shadow(), // 92
    compile ps_3_0 PS_TerrainTile_Atlas(), // 93
    compile ps_3_0 PS_TerrainTile_Atlas_Shadow(), // 94
};
// PS_Cliff_Array_Shader_0 Pixel_3_0 Has PRES True
struct PS_Cliff_Array_Shader_0_Input
{
    float4 color : COLOR;
    float color1 : COLOR1;
    float2 texcoord : TEXCOORD;
    float2 texcoord2 : TEXCOORD2;
    float3 texcoord3 : TEXCOORD3;
    float3 texcoord4 : TEXCOORD4;
    float3 texcoord5 : TEXCOORD5;
};

float4 PS_Cliff_Array_Shader_0(PS_Cliff_Array_Shader_0_Input i) : COLOR
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
        float4 temp0;
        // Expression_2_1
        // mul r0.x, c0.x, (66)
        temp0.x = MapCellSize.x * (66);
        // rcp c11.x, r0.x
        expr11.x = 1.0f / (temp0.x);
    }

    float4 out_color;
    float4 temp0, temp1, temp2, temp3, temp4, temp5, temp6;
    float3 temp7;
    // def c0, 0.75, 0, 1, -1
    // def c1, -2, -3, -4, -5
    // def c2, 1, -1, 2.2, 2
    // def c3, 40, 0, 0, 0
    // dcl_color v0
    // dcl_color1 v1.x
    // dcl_texcoord v2.xy
    // dcl_texcoord2 v3.xy
    // dcl_texcoord3 v4.xyz
    // dcl_texcoord4 v5.xyz
    // dcl_texcoord5_centroid v6.xyz
    // dcl_2d s0
    // dcl_2d s1
    // dcl_2d s2
    // dcl_2d s3
    // dcl_2d s4
    // texld r0, v2, s1
    temp0 = tex2D(BaseSamplerWrappedSampler, i.texcoord.xy);
    // mul r1.xy, c117.zwzw, v4.z
    temp1.xy = Cloud.WorldPositionMultiplier_XYZZ.zw * i.texcoord3.zz;
    // mad r1.xy, v4, c117, -r1
    temp1.xy = i.texcoord3.xy * Cloud.WorldPositionMultiplier_XYZZ.xy + -temp1.xy;
    // add r1.xy, r1, c118
    temp1.xy = temp1.xy + Cloud.CurrentOffsetUV.xy;
    // mov r2.xy, c2
    temp2.xy = float2(1, -1);
    // mul r1.zw, r2.xyxy, c11.x
    temp1.zw = temp2.xy * expr11.xx;
    // mul r1.zw, r1, v4.xyxy
    temp1.zw = temp1.zw * i.texcoord3.xy;
    // log r2.x, r0.x
    temp2.x = log2(temp0.x);
    // log r2.y, r0.y
    temp2.y = log2(temp0.y);
    // log r2.z, r0.z
    temp2.z = log2(temp0.z);
    // mul r0.xyz, r2, c2.z
    temp0.xyz = temp2.xyz * float3(2.2, 2.2, 2.2);
    // exp r2.x, r0.x
    temp2.x = exp2(temp0.x);
    // exp r2.y, r0.y
    temp2.y = exp2(temp0.y);
    // exp r2.z, r0.z
    temp2.z = exp2(temp0.z);
    // texld r0, v2, s2
    temp0 = tex2D(NormalSamplerWrappedSampler, i.texcoord.xy);
    // mad r0.xy, r0, c2.w, c2.y
    temp0.xy = temp0.xy * float2(2, 2) + float2(-1, -1);
    // mad r0.w, r0.x, -r0.x, c2.x
    temp0.w = temp0.x * -temp0.x + float1(1);
    // mad r0.w, r0.y, -r0.y, r0.w
    temp0.w = temp0.y * -temp0.y + temp0.w;
    // rsq r0.w, r0.w
    temp0.w = 1 / sqrt(temp0.w);
    // rcp r3.z, r0.w
    temp3.z = 1.0f / temp0.w;
    // mul r3.xy, r0, c0.x
    temp3.xy = temp0.xy * float2(0.75, 0.75);
    // nrm r4.xyz, r3
    temp4.xyz = normalize(temp3.xyz);
    // mov r0.xyw, v0.xyzz
    temp0.xyw = i.color.xyz;
    // mov r3.x, c0.y
    temp3.x = float1(0);
    // rep i0
    for (int it0 = 0; it0 < NumPointLights; ++it0) {
        // add r5, r3.x, c1
        temp5 = temp3.x + float4(-2, -3, -4, -5);
        // add r3.xyz, r3.x, -c0.wyzw
        temp3.xyz = temp3.xxx + float3(1, -0, -1);
        // mov r6.y, c0.y
        temp6.y = float1(0);
        // cmp r6.xzw, -r3_abs.y, c89.xyyz, r6.y
        temp6.xzw = (-abs(temp3).yyy >= 0) ? PointLight[0].Color.xyz : temp6.yyy;
        // cmp r7.xyz, -r3_abs.y, c90, r6.y
        temp7.xyz = (-abs(temp3).yyy >= 0) ? PointLight[0].Position.xyz : temp6.yyy;
        // cmp r3.yw, -r3_abs.y, c91.xxzy, r6.y
        temp3.yw = (-abs(temp3).yy >= 0) ? PointLight[0].Range_Inner_Outer.xy : temp6.yy;
        // cmp r6.xyz, -r3_abs.z, c92, r6.xzww
        temp6.xyz = (-abs(temp3).zzz >= 0) ? PointLight[1].Color.xyz : temp6.xzw;
        // cmp r7.xyz, -r3_abs.z, c93, r7
        temp7.xyz = (-abs(temp3).zzz >= 0) ? PointLight[1].Position.xyz : temp7.xyz;
        // cmp r3.yz, -r3_abs.z, c94.xxyw, r3.xyww
        temp3.yz = (-abs(temp3).zz >= 0) ? PointLight[1].Range_Inner_Outer.xy : temp3.yw;
        // cmp r6.xyz, -r5_abs.x, c95, r6
        temp6.xyz = (-abs(temp5).xxx >= 0) ? PointLight[2].Color.xyz : temp6.xyz;
        // cmp r7.xyz, -r5_abs.x, c96, r7
        temp7.xyz = (-abs(temp5).xxx >= 0) ? PointLight[2].Position.xyz : temp7.xyz;
        // cmp r3.yz, -r5_abs.x, c97.xxyw, r3
        temp3.yz = (-abs(temp5).xx >= 0) ? PointLight[2].Range_Inner_Outer.xy : temp3.yz;
        // cmp r6.xyz, -r5_abs.y, c98, r6
        temp6.xyz = (-abs(temp5).yyy >= 0) ? PointLight[3].Color.xyz : temp6.xyz;
        // cmp r7.xyz, -r5_abs.y, c99, r7
        temp7.xyz = (-abs(temp5).yyy >= 0) ? PointLight[3].Position.xyz : temp7.xyz;
        // cmp r3.yz, -r5_abs.y, c100.xxyw, r3
        temp3.yz = (-abs(temp5).yy >= 0) ? PointLight[3].Range_Inner_Outer.xy : temp3.yz;
        // cmp r6.xyz, -r5_abs.z, c101, r6
        temp6.xyz = (-abs(temp5).zzz >= 0) ? PointLight[4].Color.xyz : temp6.xyz;
        // cmp r7.xyz, -r5_abs.z, c102, r7
        temp7.xyz = (-abs(temp5).zzz >= 0) ? PointLight[4].Position.xyz : temp7.xyz;
        // cmp r3.yz, -r5_abs.z, c103.xxyw, r3
        temp3.yz = (-abs(temp5).zz >= 0) ? PointLight[4].Range_Inner_Outer.xy : temp3.yz;
        // cmp r5.xyz, -r5_abs.w, c104, r6
        temp5.xyz = (-abs(temp5).www >= 0) ? PointLight[5].Color.xyz : temp6.xyz;
        // cmp r6.xyz, -r5_abs.w, c105, r7
        temp6.xyz = (-abs(temp5).www >= 0) ? PointLight[5].Position.xyz : temp7.xyz;
        // cmp r3.yz, -r5_abs.w, c106.xxyw, r3
        temp3.yz = (-abs(temp5).ww >= 0) ? PointLight[5].Range_Inner_Outer.xy : temp3.yz;
        // add r6.xyz, r6, -v4
        temp6.xyz = temp6.xyz + -i.texcoord3.xyz;
        // dp3 r2.w, r6, r6
        temp2.w = dot(temp6.xyz, temp6.xyz);
        // rsq r2.w, r2.w
        temp2.w = 1 / sqrt(temp2.w);
        // rcp r3.w, r2.w
        temp3.w = 1.0f / temp2.w;
        // mul r6.xyz, r6, r2.w
        temp6.xyz = temp6.xyz * temp2.www;
        // add r2.w, -r3.y, r3.w
        temp2.w = -temp3.y + temp3.w;
        // add r3.y, -r3.y, r3.z
        temp3.y = -temp3.y + temp3.z;
        // rcp r3.y, r3.y
        temp3.y = 1.0f / temp3.y;
        // mad_sat r2.w, r2.w, -r3.y, c2.x
        temp2.w = saturate(temp2.w * -temp3.y + float1(1));
        // mul r2.w, r2.w, r2.w
        temp2.w = temp2.w * temp2.w;
        // mul r3.yzw, r5.xxyz, r2.w
        temp3.yzw = temp5.xyz * temp2.www;
        // dp3 r2.w, r4, r6
        temp2.w = dot(temp4.xyz, temp6.xyz);
        // max r4.w, r2.w, c0.y
        temp4.w = max(temp2.w, float1(0));
        // mad r0.xyw, r3.yzzw, r4.w, r0
        temp0.xyw = temp3.yzw * temp4.www + temp0.xyw;
        // endrep
    }
    // mul r0.xyw, r2.xyzz, r0
    temp0.xyw = temp2.xyz * temp0.xyw;
    // add r0.xyw, r0, r0
    temp0.xyw = temp0.xyw + temp0.xyw;
    // dp3 r2.w, r4, v5
    temp2.w = dot(temp4.xyz, i.texcoord4.xyz);
    // dp3 r3.x, r4, v6
    temp3.x = dot(temp4.xyz, i.texcoord5.xyz);
    // cmp r3.y, -r2.w, c0.y, c0.z
    temp3.y = (-temp2.w >= 0) ? float1(0) : float1(1);
    // mul r2.w, r2.w, r3.y
    temp2.w = temp2.w * temp3.y;
    // cmp r3.z, -r3.x, c0.y, c0.z
    temp3.z = (-temp3.x >= 0) ? float1(0) : float1(1);
    // mul r3.y, r3.y, r3.z
    temp3.y = temp3.y * temp3.z;
    // pow r4.x, r3.x, c3.x
    temp4.x = pow(temp3.x, float1(40));
    // mul r3.x, r3.y, r4.x
    temp3.x = temp3.y * temp4.x;
    // texld r4, r1, s4
    temp4 = tex2D(CloudSamplerSampler, temp1.xy);
    // log r3.y, r4.x
    temp3.y = log2(temp4.x);
    // log r3.z, r4.y
    temp3.z = log2(temp4.y);
    // log r3.w, r4.z
    temp3.w = log2(temp4.z);
    // mul r3.yzw, r3, c2.z
    temp3.yzw = temp3.yzw * float3(2.2, 2.2, 2.2);
    // exp r4.x, r3.y
    temp4.x = exp2(temp3.y);
    // exp r4.y, r3.z
    temp4.y = exp2(temp3.z);
    // exp r4.z, r3.w
    temp4.z = exp2(temp3.w);
    // mul r3.yzw, r4.xxyz, c5.xxyz
    temp3.yzw = temp4.xyz * DirectionalLight[0].Color.xyz;
    // dp2add r0.z, r3.x, r0.z, c0.y
    temp0.z = dot(temp3.xx, temp0.zz) + float1(0);
    // mad r2.xyz, r2.w, r2, r0.z
    temp2.xyz = temp2.www * temp2.xyz + temp0.zzz;
    // mad r0.xyz, r3.yzww, r2, r0.xyww
    temp0.xyz = temp3.yzw * temp2.xyz + temp0.xyw;
    // texld r1, r1.zwzw, s0
    temp1 = tex2D(MacroSamplerSampler, temp1.zw);
    // log r2.x, r1.x
    temp2.x = log2(temp1.x);
    // log r2.y, r1.y
    temp2.y = log2(temp1.y);
    // log r2.z, r1.z
    temp2.z = log2(temp1.z);
    // mul r1.xyz, r2, c2.z
    temp1.xyz = temp2.xyz * float3(2.2, 2.2, 2.2);
    // exp r2.x, r1.x
    temp2.x = exp2(temp1.x);
    // exp r2.y, r1.y
    temp2.y = exp2(temp1.y);
    // exp r2.z, r1.z
    temp2.z = exp2(temp1.z);
    // mad r0.xyz, r0, r2, c2.y
    temp0.xyz = temp0.xyz * temp2.xyz + float3(-1, -1, -1);
    // mad r0.xyz, v1.x, r0, c2.x
    temp0.xyz = i.color1.xxx * temp0.xyz + float3(1, 1, 1);
    // texld r1, v3, s3
    temp1 = tex2D(ShroudSamplerSampler, i.texcoord2.xy);
    // mul oC0.xyz, r0, r1.x
    out_color.xyz = temp0.xyz * temp1.xxx;
    // mov oC0.w, v0.w
    out_color.w = i.color.w;
    // 

    return out_color;
}

// PS_Cliff_Array_Shader_1 Pixel_3_0 Has PRES True
struct PS_Cliff_Array_Shader_1_Input
{
    float4 color : COLOR;
    float color1 : COLOR1;
    float2 texcoord : TEXCOORD;
    float2 texcoord2 : TEXCOORD2;
    float3 texcoord3 : TEXCOORD3;
    float3 texcoord4 : TEXCOORD4;
    float3 texcoord5 : TEXCOORD5;
    float3 texcoord6 : TEXCOORD6;
};

float4 PS_Cliff_Array_Shader_1(PS_Cliff_Array_Shader_1_Input i) : COLOR
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
        float4 temp0;
        // Expression_2_1
        // mul r0.x, c0.x, (66)
        temp0.x = MapCellSize.x * (66);
        // rcp c12.x, r0.x
        expr12.x = 1.0f / (temp0.x);
    }

    float4 out_color;
    float4 temp0, temp1, temp2, temp3, temp4, temp5, temp6, temp7;
    // def c0, 0.75, 0, 1, -1
    // def c1, 1, -1, 2.2, 2
    // def c2, -2, -3, -4, -5
    // def c3, 40, 0.25, 0, 0
    // dcl_color v0
    // dcl_color1 v1.x
    // dcl_texcoord v2.xy
    // dcl_texcoord2 v3.xy
    // dcl_texcoord3 v4.xyz
    // dcl_texcoord4 v5.xyz
    // dcl_texcoord5_centroid v6.xyz
    // dcl_texcoord6 v7.xyz
    // dcl_2d s0
    // dcl_2d s1
    // dcl_2d s2
    // dcl_2d s3
    // dcl_2d s4
    // dcl_2d s5
    // texld r0, v2, s1
    temp0 = tex2D(BaseSamplerWrappedSampler, i.texcoord.xy);
    // mul r1.xy, c117.zwzw, v4.z
    temp1.xy = Cloud.WorldPositionMultiplier_XYZZ.zw * i.texcoord3.zz;
    // mad r1.xy, v4, c117, -r1
    temp1.xy = i.texcoord3.xy * Cloud.WorldPositionMultiplier_XYZZ.xy + -temp1.xy;
    // add r1.xy, r1, c118
    temp1.xy = temp1.xy + Cloud.CurrentOffsetUV.xy;
    // mov r2.xy, c1
    temp2.xy = float2(1, -1);
    // mul r1.zw, r2.xyxy, c12.x
    temp1.zw = temp2.xy * expr12.xx;
    // mul r1.zw, r1, v4.xyxy
    temp1.zw = temp1.zw * i.texcoord3.xy;
    // log r2.x, r0.x
    temp2.x = log2(temp0.x);
    // log r2.y, r0.y
    temp2.y = log2(temp0.y);
    // log r2.z, r0.z
    temp2.z = log2(temp0.z);
    // mul r0.xyz, r2, c1.z
    temp0.xyz = temp2.xyz * float3(2.2, 2.2, 2.2);
    // exp r2.x, r0.x
    temp2.x = exp2(temp0.x);
    // exp r2.y, r0.y
    temp2.y = exp2(temp0.y);
    // exp r2.z, r0.z
    temp2.z = exp2(temp0.z);
    // texld r0, v2, s2
    temp0 = tex2D(NormalSamplerWrappedSampler, i.texcoord.xy);
    // mad r0.xy, r0, c1.w, c1.y
    temp0.xy = temp0.xy * float2(2, 2) + float2(-1, -1);
    // mad r0.w, r0.x, -r0.x, c1.x
    temp0.w = temp0.x * -temp0.x + float1(1);
    // mad r0.w, r0.y, -r0.y, r0.w
    temp0.w = temp0.y * -temp0.y + temp0.w;
    // rsq r0.w, r0.w
    temp0.w = 1 / sqrt(temp0.w);
    // rcp r3.z, r0.w
    temp3.z = 1.0f / temp0.w;
    // mul r3.xy, r0, c0.x
    temp3.xy = temp0.xy * float2(0.75, 0.75);
    // nrm r4.xyz, r3
    temp4.xyz = normalize(temp3.xyz);
    // mov r0.xyw, v0.xyzz
    temp0.xyw = i.color.xyz;
    // mov r3.x, c0.y
    temp3.x = float1(0);
    // rep i0
    for (int it0 = 0; it0 < NumPointLights; ++it0) {
        // add r5, r3.x, c2
        temp5 = temp3.x + float4(-2, -3, -4, -5);
        // add r3.xyz, r3.x, -c0.wyzw
        temp3.xyz = temp3.xxx + float3(1, -0, -1);
        // mov r6.y, c0.y
        temp6.y = float1(0);
        // cmp r6.xzw, -r3_abs.y, c89.xyyz, r6.y
        temp6.xzw = (-abs(temp3).yyy >= 0) ? PointLight[0].Color.xyz : temp6.yyy;
        // cmp r7.xyz, -r3_abs.y, c90, r6.y
        temp7.xyz = (-abs(temp3).yyy >= 0) ? PointLight[0].Position.xyz : temp6.yyy;
        // cmp r3.yw, -r3_abs.y, c91.xxzy, r6.y
        temp3.yw = (-abs(temp3).yy >= 0) ? PointLight[0].Range_Inner_Outer.xy : temp6.yy;
        // cmp r6.xyz, -r3_abs.z, c92, r6.xzww
        temp6.xyz = (-abs(temp3).zzz >= 0) ? PointLight[1].Color.xyz : temp6.xzw;
        // cmp r7.xyz, -r3_abs.z, c93, r7
        temp7.xyz = (-abs(temp3).zzz >= 0) ? PointLight[1].Position.xyz : temp7.xyz;
        // cmp r3.yz, -r3_abs.z, c94.xxyw, r3.xyww
        temp3.yz = (-abs(temp3).zz >= 0) ? PointLight[1].Range_Inner_Outer.xy : temp3.yw;
        // cmp r6.xyz, -r5_abs.x, c95, r6
        temp6.xyz = (-abs(temp5).xxx >= 0) ? PointLight[2].Color.xyz : temp6.xyz;
        // cmp r7.xyz, -r5_abs.x, c96, r7
        temp7.xyz = (-abs(temp5).xxx >= 0) ? PointLight[2].Position.xyz : temp7.xyz;
        // cmp r3.yz, -r5_abs.x, c97.xxyw, r3
        temp3.yz = (-abs(temp5).xx >= 0) ? PointLight[2].Range_Inner_Outer.xy : temp3.yz;
        // cmp r6.xyz, -r5_abs.y, c98, r6
        temp6.xyz = (-abs(temp5).yyy >= 0) ? PointLight[3].Color.xyz : temp6.xyz;
        // cmp r7.xyz, -r5_abs.y, c99, r7
        temp7.xyz = (-abs(temp5).yyy >= 0) ? PointLight[3].Position.xyz : temp7.xyz;
        // cmp r3.yz, -r5_abs.y, c100.xxyw, r3
        temp3.yz = (-abs(temp5).yy >= 0) ? PointLight[3].Range_Inner_Outer.xy : temp3.yz;
        // cmp r6.xyz, -r5_abs.z, c101, r6
        temp6.xyz = (-abs(temp5).zzz >= 0) ? PointLight[4].Color.xyz : temp6.xyz;
        // cmp r7.xyz, -r5_abs.z, c102, r7
        temp7.xyz = (-abs(temp5).zzz >= 0) ? PointLight[4].Position.xyz : temp7.xyz;
        // cmp r3.yz, -r5_abs.z, c103.xxyw, r3
        temp3.yz = (-abs(temp5).zz >= 0) ? PointLight[4].Range_Inner_Outer.xy : temp3.yz;
        // cmp r5.xyz, -r5_abs.w, c104, r6
        temp5.xyz = (-abs(temp5).www >= 0) ? PointLight[5].Color.xyz : temp6.xyz;
        // cmp r6.xyz, -r5_abs.w, c105, r7
        temp6.xyz = (-abs(temp5).www >= 0) ? PointLight[5].Position.xyz : temp7.xyz;
        // cmp r3.yz, -r5_abs.w, c106.xxyw, r3
        temp3.yz = (-abs(temp5).ww >= 0) ? PointLight[5].Range_Inner_Outer.xy : temp3.yz;
        // add r6.xyz, r6, -v4
        temp6.xyz = temp6.xyz + -i.texcoord3.xyz;
        // dp3 r2.w, r6, r6
        temp2.w = dot(temp6.xyz, temp6.xyz);
        // rsq r2.w, r2.w
        temp2.w = 1 / sqrt(temp2.w);
        // rcp r3.w, r2.w
        temp3.w = 1.0f / temp2.w;
        // mul r6.xyz, r6, r2.w
        temp6.xyz = temp6.xyz * temp2.www;
        // add r2.w, -r3.y, r3.w
        temp2.w = -temp3.y + temp3.w;
        // add r3.y, -r3.y, r3.z
        temp3.y = -temp3.y + temp3.z;
        // rcp r3.y, r3.y
        temp3.y = 1.0f / temp3.y;
        // mad_sat r2.w, r2.w, -r3.y, c1.x
        temp2.w = saturate(temp2.w * -temp3.y + float1(1));
        // mul r2.w, r2.w, r2.w
        temp2.w = temp2.w * temp2.w;
        // mul r3.yzw, r5.xxyz, r2.w
        temp3.yzw = temp5.xyz * temp2.www;
        // dp3 r2.w, r4, r6
        temp2.w = dot(temp4.xyz, temp6.xyz);
        // max r4.w, r2.w, c0.y
        temp4.w = max(temp2.w, float1(0));
        // mad r0.xyw, r3.yzzw, r4.w, r0
        temp0.xyw = temp3.yzw * temp4.www + temp0.xyw;
        // endrep
    }
    // mul r0.xyw, r2.xyzz, r0
    temp0.xyw = temp2.xyz * temp0.xyw;
    // add r0.xyw, r0, r0
    temp0.xyw = temp0.xyw + temp0.xyw;
    // dp3 r2.w, r4, v5
    temp2.w = dot(temp4.xyz, i.texcoord4.xyz);
    // dp3 r3.x, r4, v6
    temp3.x = dot(temp4.xyz, i.texcoord5.xyz);
    // cmp r3.y, -r2.w, c0.y, c0.z
    temp3.y = (-temp2.w >= 0) ? float1(0) : float1(1);
    // mul r3.z, r2.w, r3.y
    temp3.z = temp2.w * temp3.y;
    // cmp r2.w, -r3.x, c0.y, c0.z
    temp2.w = (-temp3.x >= 0) ? float1(0) : float1(1);
    // mul r2.w, r3.y, r2.w
    temp2.w = temp3.y * temp2.w;
    // pow r4.x, r3.x, c3.x
    temp4.x = pow(temp3.x, float1(40));
    // mul r3.w, r2.w, r4.x
    temp3.w = temp2.w * temp4.x;
    // texld r4, v7, s5
    temp4 = tex2D(ShadowMapSampler, i.texcoord6.xy);
    // add r3.xy, c11.zxzw, v7
    temp3.xy = Shadowmap_Zero_Zero_OneOverMapSize_OneOverMapSize.zx + i.texcoord6.xy;
    // texld r5, r3, s5
    temp5 = tex2D(ShadowMapSampler, temp3.xy);
    // add r3.xy, c11.yzzw, v7
    temp3.xy = Shadowmap_Zero_Zero_OneOverMapSize_OneOverMapSize.yz + i.texcoord6.xy;
    // texld r6, r3, s5
    temp6 = tex2D(ShadowMapSampler, temp3.xy);
    // add r3.xy, c11.wzzw, v7
    temp3.xy = Shadowmap_Zero_Zero_OneOverMapSize_OneOverMapSize.wz + i.texcoord6.xy;
    // texld r7, r3, s5
    temp7 = tex2D(ShadowMapSampler, temp3.xy);
    // mov r4.y, r5.x
    temp4.y = temp5.x;
    // mov r4.z, r6.x
    temp4.z = temp6.x;
    // mov r4.w, r7.x
    temp4.w = temp7.x;
    // add r4, r4, -v7.z
    temp4 = temp4 + -i.texcoord6.z;
    // cmp r4, r4, c0.z, c0.y
    temp4 = (temp4 >= 0) ? float4(1, 1, 1, 1) : float4(0, 0, 0, 0);
    // dp4 r2.w, c1.x, r4
    temp2.w = dot(float4(1, 1, 1, 1), temp4);
    // mul r2.w, r2.w, c3.y
    temp2.w = temp2.w * float1(0.25);
    // mul r3.xy, r3.zwzw, r2.w
    temp3.xy = temp3.zw * temp2.ww;
    // texld r4, r1, s4
    temp4 = tex2D(CloudSamplerSampler, temp1.xy);
    // log r5.x, r4.x
    temp5.x = log2(temp4.x);
    // log r5.y, r4.y
    temp5.y = log2(temp4.y);
    // log r5.z, r4.z
    temp5.z = log2(temp4.z);
    // mul r4.xyz, r5, c1.z
    temp4.xyz = temp5.xyz * float3(2.2, 2.2, 2.2);
    // exp r5.x, r4.x
    temp5.x = exp2(temp4.x);
    // exp r5.y, r4.y
    temp5.y = exp2(temp4.y);
    // exp r5.z, r4.z
    temp5.z = exp2(temp4.z);
    // mul r4.xyz, r5, c5
    temp4.xyz = temp5.xyz * DirectionalLight[0].Color.xyz;
    // dp2add r0.z, r3.y, r0.z, c0.y
    temp0.z = dot(temp3.yy, temp0.zz) + float1(0);
    // mad r2.xyz, r3.x, r2, r0.z
    temp2.xyz = temp3.xxx * temp2.xyz + temp0.zzz;
    // mad r0.xyz, r4, r2, r0.xyww
    temp0.xyz = temp4.xyz * temp2.xyz + temp0.xyw;
    // texld r1, r1.zwzw, s0
    temp1 = tex2D(MacroSamplerSampler, temp1.zw);
    // log r2.x, r1.x
    temp2.x = log2(temp1.x);
    // log r2.y, r1.y
    temp2.y = log2(temp1.y);
    // log r2.z, r1.z
    temp2.z = log2(temp1.z);
    // mul r1.xyz, r2, c1.z
    temp1.xyz = temp2.xyz * float3(2.2, 2.2, 2.2);
    // exp r2.x, r1.x
    temp2.x = exp2(temp1.x);
    // exp r2.y, r1.y
    temp2.y = exp2(temp1.y);
    // exp r2.z, r1.z
    temp2.z = exp2(temp1.z);
    // mad r0.xyz, r0, r2, c1.y
    temp0.xyz = temp0.xyz * temp2.xyz + float3(-1, -1, -1);
    // mad r0.xyz, v1.x, r0, c1.x
    temp0.xyz = i.color1.xxx * temp0.xyz + float3(1, 1, 1);
    // texld r1, v3, s3
    temp1 = tex2D(ShroudSamplerSampler, i.texcoord2.xy);
    // mul oC0.xyz, r0, r1.x
    out_color.xyz = temp0.xyz * temp1.xxx;
    // mov oC0.w, v0.w
    out_color.w = i.color.w;
    // 

    return out_color;
}

PixelShader PS_Cliff_Array[2] = {
    compile ps_3_0 PS_Cliff_Array_Shader_0(), // 97
    compile ps_3_0 PS_Cliff_Array_Shader_1(), // 98
};
// PS_Road_Array_Shader_0 Pixel_3_0 Has PRES True
struct PS_Road_Array_Shader_0_Input
{
    float4 color : COLOR;
    float color1 : COLOR1;
    float2 texcoord : TEXCOORD;
    float2 texcoord2 : TEXCOORD2;
    float3 texcoord3 : TEXCOORD3;
    float3 texcoord4 : TEXCOORD4;
    float3 texcoord5 : TEXCOORD5;
};

float4 PS_Road_Array_Shader_0(PS_Road_Array_Shader_0_Input i) : COLOR
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
        float4 temp0;
        // Expression_2_1
        // mul r0.x, c0.x, (66)
        temp0.x = MapCellSize.x * (66);
        // rcp c11.x, r0.x
        expr11.x = 1.0f / (temp0.x);
    }

    float4 out_color;
    float4 temp0, temp1, temp2, temp3, temp4, temp5, temp6;
    float3 temp7;
    // def c0, -2, -3, -4, -5
    // def c1, 0.75, 1, 0, -1
    // def c2, 1, -1, 2.2, 2
    // def c3, 40, 0, 0, 0
    // dcl_color v0
    // dcl_color1 v1.x
    // dcl_texcoord v2.xy
    // dcl_texcoord2 v3.xy
    // dcl_texcoord3 v4.xyz
    // dcl_texcoord4 v5.xyz
    // dcl_texcoord5_centroid v6.xyz
    // dcl_2d s0
    // dcl_2d s1
    // dcl_2d s2
    // dcl_2d s3
    // dcl_2d s4
    // texld r0, v2, s1
    temp0 = tex2D(BaseSamplerWrappedSampler, i.texcoord.xy);
    // mul r1.xy, c117.zwzw, v4.z
    temp1.xy = Cloud.WorldPositionMultiplier_XYZZ.zw * i.texcoord3.zz;
    // mad r1.xy, v4, c117, -r1
    temp1.xy = i.texcoord3.xy * Cloud.WorldPositionMultiplier_XYZZ.xy + -temp1.xy;
    // add r1.xy, r1, c118
    temp1.xy = temp1.xy + Cloud.CurrentOffsetUV.xy;
    // mov r2.xy, c2
    temp2.xy = float2(1, -1);
    // mul r1.zw, r2.xyxy, c11.x
    temp1.zw = temp2.xy * expr11.xx;
    // mul r1.zw, r1, v4.xyxy
    temp1.zw = temp1.zw * i.texcoord3.xy;
    // log r2.x, r0.x
    temp2.x = log2(temp0.x);
    // log r2.y, r0.y
    temp2.y = log2(temp0.y);
    // log r2.z, r0.z
    temp2.z = log2(temp0.z);
    // mul r0.xyz, r2, c2.z
    temp0.xyz = temp2.xyz * float3(2.2, 2.2, 2.2);
    // exp r2.x, r0.x
    temp2.x = exp2(temp0.x);
    // exp r2.y, r0.y
    temp2.y = exp2(temp0.y);
    // exp r2.z, r0.z
    temp2.z = exp2(temp0.z);
    // mul oC0.w, r0.w, v0.w
    out_color.w = temp0.w * i.color.w;
    // texld r0, v2, s2
    temp0 = tex2D(NormalSamplerWrappedSampler, i.texcoord.xy);
    // mad r0.xyz, r0, c2.w, c2.y
    temp0.xyz = temp0.xyz * float3(2, 2, 2) + float3(-1, -1, -1);
    // mul r0.xyz, r0, c1.xxyw
    temp0.xyz = temp0.xyz * float3(0.75, 0.75, 1);
    // nrm r3.xyz, r0
    temp3.xyz = normalize(temp0.xyz);
    // mov r0.xyz, v0
    temp0.xyz = i.color.xyz;
    // mov r4.x, c1.z
    temp4.x = float1(0);
    // rep i0
    for (int it0 = 0; it0 < NumPointLights; ++it0) {
        // add r5, r4.x, c0
        temp5 = temp4.x + float4(-2, -3, -4, -5);
        // add r4.xyz, r4.x, -c1.wzyw
        temp4.xyz = temp4.xxx + float3(1, -0, -1);
        // mov r6.z, c1.z
        temp6.z = float1(0);
        // cmp r6.xyw, -r4_abs.y, c89.xyzz, r6.z
        temp6.xyw = (-abs(temp4).yyy >= 0) ? PointLight[0].Color.xyz : temp6.zzz;
        // cmp r7.xyz, -r4_abs.y, c90, r6.z
        temp7.xyz = (-abs(temp4).yyy >= 0) ? PointLight[0].Position.xyz : temp6.zzz;
        // cmp r4.yw, -r4_abs.y, c91.xxzy, r6.z
        temp4.yw = (-abs(temp4).yy >= 0) ? PointLight[0].Range_Inner_Outer.xy : temp6.zz;
        // cmp r6.xyz, -r4_abs.z, c92, r6.xyww
        temp6.xyz = (-abs(temp4).zzz >= 0) ? PointLight[1].Color.xyz : temp6.xyw;
        // cmp r7.xyz, -r4_abs.z, c93, r7
        temp7.xyz = (-abs(temp4).zzz >= 0) ? PointLight[1].Position.xyz : temp7.xyz;
        // cmp r4.yz, -r4_abs.z, c94.xxyw, r4.xyww
        temp4.yz = (-abs(temp4).zz >= 0) ? PointLight[1].Range_Inner_Outer.xy : temp4.yw;
        // cmp r6.xyz, -r5_abs.x, c95, r6
        temp6.xyz = (-abs(temp5).xxx >= 0) ? PointLight[2].Color.xyz : temp6.xyz;
        // cmp r7.xyz, -r5_abs.x, c96, r7
        temp7.xyz = (-abs(temp5).xxx >= 0) ? PointLight[2].Position.xyz : temp7.xyz;
        // cmp r4.yz, -r5_abs.x, c97.xxyw, r4
        temp4.yz = (-abs(temp5).xx >= 0) ? PointLight[2].Range_Inner_Outer.xy : temp4.yz;
        // cmp r6.xyz, -r5_abs.y, c98, r6
        temp6.xyz = (-abs(temp5).yyy >= 0) ? PointLight[3].Color.xyz : temp6.xyz;
        // cmp r7.xyz, -r5_abs.y, c99, r7
        temp7.xyz = (-abs(temp5).yyy >= 0) ? PointLight[3].Position.xyz : temp7.xyz;
        // cmp r4.yz, -r5_abs.y, c100.xxyw, r4
        temp4.yz = (-abs(temp5).yy >= 0) ? PointLight[3].Range_Inner_Outer.xy : temp4.yz;
        // cmp r6.xyz, -r5_abs.z, c101, r6
        temp6.xyz = (-abs(temp5).zzz >= 0) ? PointLight[4].Color.xyz : temp6.xyz;
        // cmp r7.xyz, -r5_abs.z, c102, r7
        temp7.xyz = (-abs(temp5).zzz >= 0) ? PointLight[4].Position.xyz : temp7.xyz;
        // cmp r4.yz, -r5_abs.z, c103.xxyw, r4
        temp4.yz = (-abs(temp5).zz >= 0) ? PointLight[4].Range_Inner_Outer.xy : temp4.yz;
        // cmp r5.xyz, -r5_abs.w, c104, r6
        temp5.xyz = (-abs(temp5).www >= 0) ? PointLight[5].Color.xyz : temp6.xyz;
        // cmp r6.xyz, -r5_abs.w, c105, r7
        temp6.xyz = (-abs(temp5).www >= 0) ? PointLight[5].Position.xyz : temp7.xyz;
        // cmp r4.yz, -r5_abs.w, c106.xxyw, r4
        temp4.yz = (-abs(temp5).ww >= 0) ? PointLight[5].Range_Inner_Outer.xy : temp4.yz;
        // add r6.xyz, r6, -v4
        temp6.xyz = temp6.xyz + -i.texcoord3.xyz;
        // dp3 r2.w, r6, r6
        temp2.w = dot(temp6.xyz, temp6.xyz);
        // rsq r2.w, r2.w
        temp2.w = 1 / sqrt(temp2.w);
        // rcp r3.w, r2.w
        temp3.w = 1.0f / temp2.w;
        // mul r6.xyz, r6, r2.w
        temp6.xyz = temp6.xyz * temp2.www;
        // add r2.w, -r4.y, r3.w
        temp2.w = -temp4.y + temp3.w;
        // add r3.w, -r4.y, r4.z
        temp3.w = -temp4.y + temp4.z;
        // rcp r3.w, r3.w
        temp3.w = 1.0f / temp3.w;
        // mad_sat r2.w, r2.w, -r3.w, c2.x
        temp2.w = saturate(temp2.w * -temp3.w + float1(1));
        // mul r2.w, r2.w, r2.w
        temp2.w = temp2.w * temp2.w;
        // mul r4.yzw, r5.xxyz, r2.w
        temp4.yzw = temp5.xyz * temp2.www;
        // dp3 r2.w, r3, r6
        temp2.w = dot(temp3.xyz, temp6.xyz);
        // max r3.w, r2.w, c1.z
        temp3.w = max(temp2.w, float1(0));
        // mad r0.xyz, r4.yzww, r3.w, r0
        temp0.xyz = temp4.yzw * temp3.www + temp0.xyz;
        // endrep
    }
    // mul r0.xyz, r2, r0
    temp0.xyz = temp2.xyz * temp0.xyz;
    // add r0.xyz, r0, r0
    temp0.xyz = temp0.xyz + temp0.xyz;
    // dp3 r2.w, r3, v5
    temp2.w = dot(temp3.xyz, i.texcoord4.xyz);
    // dp3 r3.x, r3, v6
    temp3.x = dot(temp3.xyz, i.texcoord5.xyz);
    // cmp r3.y, -r2.w, c1.z, c1.y
    temp3.y = (-temp2.w >= 0) ? float1(0) : float1(1);
    // mul r2.w, r2.w, r3.y
    temp2.w = temp2.w * temp3.y;
    // cmp r3.z, -r3.x, c1.z, c1.y
    temp3.z = (-temp3.x >= 0) ? float1(0) : float1(1);
    // mul r3.y, r3.y, r3.z
    temp3.y = temp3.y * temp3.z;
    // pow r4.x, r3.x, c3.x
    temp4.x = pow(temp3.x, float1(40));
    // mul r3.x, r3.y, r4.x
    temp3.x = temp3.y * temp4.x;
    // texld r4, r1, s4
    temp4 = tex2D(CloudSamplerSampler, temp1.xy);
    // log r3.y, r4.x
    temp3.y = log2(temp4.x);
    // log r3.z, r4.y
    temp3.z = log2(temp4.y);
    // log r3.w, r4.z
    temp3.w = log2(temp4.z);
    // mul r3.yzw, r3, c2.z
    temp3.yzw = temp3.yzw * float3(2.2, 2.2, 2.2);
    // exp r4.x, r3.y
    temp4.x = exp2(temp3.y);
    // exp r4.y, r3.z
    temp4.y = exp2(temp3.z);
    // exp r4.z, r3.w
    temp4.z = exp2(temp3.w);
    // mul r3.yzw, r4.xxyz, c5.xxyz
    temp3.yzw = temp4.xyz * DirectionalLight[0].Color.xyz;
    // dp2add r0.w, r3.x, r0.w, c1.z
    temp0.w = dot(temp3.xx, temp0.ww) + float1(0);
    // mad r2.xyz, r2.w, r2, r0.w
    temp2.xyz = temp2.www * temp2.xyz + temp0.www;
    // mad r0.xyz, r3.yzww, r2, r0
    temp0.xyz = temp3.yzw * temp2.xyz + temp0.xyz;
    // texld r1, r1.zwzw, s0
    temp1 = tex2D(MacroSamplerSampler, temp1.zw);
    // log r2.x, r1.x
    temp2.x = log2(temp1.x);
    // log r2.y, r1.y
    temp2.y = log2(temp1.y);
    // log r2.z, r1.z
    temp2.z = log2(temp1.z);
    // mul r1.xyz, r2, c2.z
    temp1.xyz = temp2.xyz * float3(2.2, 2.2, 2.2);
    // exp r2.x, r1.x
    temp2.x = exp2(temp1.x);
    // exp r2.y, r1.y
    temp2.y = exp2(temp1.y);
    // exp r2.z, r1.z
    temp2.z = exp2(temp1.z);
    // mad r0.xyz, r0, r2, c2.y
    temp0.xyz = temp0.xyz * temp2.xyz + float3(-1, -1, -1);
    // mad r0.xyz, v1.x, r0, c2.x
    temp0.xyz = i.color1.xxx * temp0.xyz + float3(1, 1, 1);
    // texld r1, v3, s3
    temp1 = tex2D(ShroudSamplerSampler, i.texcoord2.xy);
    // mul oC0.xyz, r0, r1.x
    out_color.xyz = temp0.xyz * temp1.xxx;
    // 

    return out_color;
}

// PS_Road_Array_Shader_1 Pixel_3_0 Has PRES True
struct PS_Road_Array_Shader_1_Input
{
    float4 color : COLOR;
    float color1 : COLOR1;
    float2 texcoord : TEXCOORD;
    float2 texcoord2 : TEXCOORD2;
    float3 texcoord3 : TEXCOORD3;
    float3 texcoord4 : TEXCOORD4;
    float3 texcoord5 : TEXCOORD5;
    float4 texcoord6 : TEXCOORD6;
};

float4 PS_Road_Array_Shader_1(PS_Road_Array_Shader_1_Input i) : COLOR
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
        float4 temp0;
        // Expression_2_1
        // mul r0.x, c0.x, (66)
        temp0.x = MapCellSize.x * (66);
        // rcp c12.x, r0.x
        expr12.x = 1.0f / (temp0.x);
    }

    float4 out_color;
    float4 temp0, temp1, temp2, temp3, temp4, temp5, temp6, temp7, temp8;
    // def c0, -2, -3, -4, -5
    // def c1, 40, -0.0015, 0.25, 0
    // def c2, 1, -1, 2.2, 2
    // def c3, 0.75, 1, 0, -1
    // dcl_color v0
    // dcl_color1 v1.x
    // dcl_texcoord v2.xy
    // dcl_texcoord2 v3.xy
    // dcl_texcoord3 v4.xyz
    // dcl_texcoord4 v5.xyz
    // dcl_texcoord5_centroid v6.xyz
    // dcl_texcoord6 v7
    // dcl_2d s0
    // dcl_2d s1
    // dcl_2d s2
    // dcl_2d s3
    // dcl_2d s4
    // dcl_2d s5
    // texld r0, v2, s1
    temp0 = tex2D(BaseSamplerWrappedSampler, i.texcoord.xy);
    // mul r1.xy, c117.zwzw, v4.z
    temp1.xy = Cloud.WorldPositionMultiplier_XYZZ.zw * i.texcoord3.zz;
    // mad r1.xy, v4, c117, -r1
    temp1.xy = i.texcoord3.xy * Cloud.WorldPositionMultiplier_XYZZ.xy + -temp1.xy;
    // add r1.xy, r1, c118
    temp1.xy = temp1.xy + Cloud.CurrentOffsetUV.xy;
    // mov r2.xy, c2
    temp2.xy = float2(1, -1);
    // mul r1.zw, r2.xyxy, c12.x
    temp1.zw = temp2.xy * expr12.xx;
    // mul r1.zw, r1, v4.xyxy
    temp1.zw = temp1.zw * i.texcoord3.xy;
    // log r2.x, r0.x
    temp2.x = log2(temp0.x);
    // log r2.y, r0.y
    temp2.y = log2(temp0.y);
    // log r2.z, r0.z
    temp2.z = log2(temp0.z);
    // mul r0.xyz, r2, c2.z
    temp0.xyz = temp2.xyz * float3(2.2, 2.2, 2.2);
    // exp r2.x, r0.x
    temp2.x = exp2(temp0.x);
    // exp r2.y, r0.y
    temp2.y = exp2(temp0.y);
    // exp r2.z, r0.z
    temp2.z = exp2(temp0.z);
    // mul oC0.w, r0.w, v0.w
    out_color.w = temp0.w * i.color.w;
    // texld r0, v2, s2
    temp0 = tex2D(NormalSamplerWrappedSampler, i.texcoord.xy);
    // mad r0.xyz, r0, c2.w, c2.y
    temp0.xyz = temp0.xyz * float3(2, 2, 2) + float3(-1, -1, -1);
    // mul r0.xyz, r0, c3.xxyw
    temp0.xyz = temp0.xyz * float3(0.75, 0.75, 1);
    // nrm r3.xyz, r0
    temp3.xyz = normalize(temp0.xyz);
    // mov r0.xyz, v0
    temp0.xyz = i.color.xyz;
    // mov r4.x, c3.z
    temp4.x = float1(0);
    // rep i0
    for (int it0 = 0; it0 < NumPointLights; ++it0) {
        // add r5, r4.x, c0
        temp5 = temp4.x + float4(-2, -3, -4, -5);
        // add r4.xyz, r4.x, -c3.wzyw
        temp4.xyz = temp4.xxx + float3(1, -0, -1);
        // mov r6.z, c3.z
        temp6.z = float1(0);
        // cmp r6.xyw, -r4_abs.y, c89.xyzz, r6.z
        temp6.xyw = (-abs(temp4).yyy >= 0) ? PointLight[0].Color.xyz : temp6.zzz;
        // cmp r7.xyz, -r4_abs.y, c90, r6.z
        temp7.xyz = (-abs(temp4).yyy >= 0) ? PointLight[0].Position.xyz : temp6.zzz;
        // cmp r4.yw, -r4_abs.y, c91.xxzy, r6.z
        temp4.yw = (-abs(temp4).yy >= 0) ? PointLight[0].Range_Inner_Outer.xy : temp6.zz;
        // cmp r6.xyz, -r4_abs.z, c92, r6.xyww
        temp6.xyz = (-abs(temp4).zzz >= 0) ? PointLight[1].Color.xyz : temp6.xyw;
        // cmp r7.xyz, -r4_abs.z, c93, r7
        temp7.xyz = (-abs(temp4).zzz >= 0) ? PointLight[1].Position.xyz : temp7.xyz;
        // cmp r4.yz, -r4_abs.z, c94.xxyw, r4.xyww
        temp4.yz = (-abs(temp4).zz >= 0) ? PointLight[1].Range_Inner_Outer.xy : temp4.yw;
        // cmp r6.xyz, -r5_abs.x, c95, r6
        temp6.xyz = (-abs(temp5).xxx >= 0) ? PointLight[2].Color.xyz : temp6.xyz;
        // cmp r7.xyz, -r5_abs.x, c96, r7
        temp7.xyz = (-abs(temp5).xxx >= 0) ? PointLight[2].Position.xyz : temp7.xyz;
        // cmp r4.yz, -r5_abs.x, c97.xxyw, r4
        temp4.yz = (-abs(temp5).xx >= 0) ? PointLight[2].Range_Inner_Outer.xy : temp4.yz;
        // cmp r6.xyz, -r5_abs.y, c98, r6
        temp6.xyz = (-abs(temp5).yyy >= 0) ? PointLight[3].Color.xyz : temp6.xyz;
        // cmp r7.xyz, -r5_abs.y, c99, r7
        temp7.xyz = (-abs(temp5).yyy >= 0) ? PointLight[3].Position.xyz : temp7.xyz;
        // cmp r4.yz, -r5_abs.y, c100.xxyw, r4
        temp4.yz = (-abs(temp5).yy >= 0) ? PointLight[3].Range_Inner_Outer.xy : temp4.yz;
        // cmp r6.xyz, -r5_abs.z, c101, r6
        temp6.xyz = (-abs(temp5).zzz >= 0) ? PointLight[4].Color.xyz : temp6.xyz;
        // cmp r7.xyz, -r5_abs.z, c102, r7
        temp7.xyz = (-abs(temp5).zzz >= 0) ? PointLight[4].Position.xyz : temp7.xyz;
        // cmp r4.yz, -r5_abs.z, c103.xxyw, r4
        temp4.yz = (-abs(temp5).zz >= 0) ? PointLight[4].Range_Inner_Outer.xy : temp4.yz;
        // cmp r5.xyz, -r5_abs.w, c104, r6
        temp5.xyz = (-abs(temp5).www >= 0) ? PointLight[5].Color.xyz : temp6.xyz;
        // cmp r6.xyz, -r5_abs.w, c105, r7
        temp6.xyz = (-abs(temp5).www >= 0) ? PointLight[5].Position.xyz : temp7.xyz;
        // cmp r4.yz, -r5_abs.w, c106.xxyw, r4
        temp4.yz = (-abs(temp5).ww >= 0) ? PointLight[5].Range_Inner_Outer.xy : temp4.yz;
        // add r6.xyz, r6, -v4
        temp6.xyz = temp6.xyz + -i.texcoord3.xyz;
        // dp3 r2.w, r6, r6
        temp2.w = dot(temp6.xyz, temp6.xyz);
        // rsq r2.w, r2.w
        temp2.w = 1 / sqrt(temp2.w);
        // rcp r3.w, r2.w
        temp3.w = 1.0f / temp2.w;
        // mul r6.xyz, r6, r2.w
        temp6.xyz = temp6.xyz * temp2.www;
        // add r2.w, -r4.y, r3.w
        temp2.w = -temp4.y + temp3.w;
        // add r3.w, -r4.y, r4.z
        temp3.w = -temp4.y + temp4.z;
        // rcp r3.w, r3.w
        temp3.w = 1.0f / temp3.w;
        // mad_sat r2.w, r2.w, -r3.w, c2.x
        temp2.w = saturate(temp2.w * -temp3.w + float1(1));
        // mul r2.w, r2.w, r2.w
        temp2.w = temp2.w * temp2.w;
        // mul r4.yzw, r5.xxyz, r2.w
        temp4.yzw = temp5.xyz * temp2.www;
        // dp3 r2.w, r3, r6
        temp2.w = dot(temp3.xyz, temp6.xyz);
        // max r3.w, r2.w, c3.z
        temp3.w = max(temp2.w, float1(0));
        // mad r0.xyz, r4.yzww, r3.w, r0
        temp0.xyz = temp4.yzw * temp3.www + temp0.xyz;
        // endrep
    }
    // mul r0.xyz, r2, r0
    temp0.xyz = temp2.xyz * temp0.xyz;
    // add r0.xyz, r0, r0
    temp0.xyz = temp0.xyz + temp0.xyz;
    // dp3 r2.w, r3, v5
    temp2.w = dot(temp3.xyz, i.texcoord4.xyz);
    // dp3 r3.x, r3, v6
    temp3.x = dot(temp3.xyz, i.texcoord5.xyz);
    // cmp r3.y, -r2.w, c3.z, c3.y
    temp3.y = (-temp2.w >= 0) ? float1(0) : float1(1);
    // mul r3.z, r2.w, r3.y
    temp3.z = temp2.w * temp3.y;
    // cmp r2.w, -r3.x, c3.z, c3.y
    temp2.w = (-temp3.x >= 0) ? float1(0) : float1(1);
    // mul r2.w, r3.y, r2.w
    temp2.w = temp3.y * temp2.w;
    // pow r4.x, r3.x, c1.x
    temp4.x = pow(temp3.x, float1(40));
    // mul r3.w, r2.w, r4.x
    temp3.w = temp2.w * temp4.x;
    // rcp r2.w, v7.w
    temp2.w = 1.0f / i.texcoord6.w;
    // mul r3.xy, r2.w, v7
    temp3.xy = temp2.ww * i.texcoord6.xy;
    // mad r4.x, v7.z, r2.w, c1.y
    temp4.x = i.texcoord6.z * temp2.w /*  + float1(-0.0015) 修！*/;
    // texld r5, r3, s5
    temp5 = tex2D(ShadowMapSampler, temp3.xy);
    // mad r3.xy, v7, r2.w, c11.zxzw
    temp3.xy = i.texcoord6.xy * temp2.ww + Shadowmap_Zero_Zero_OneOverMapSize_OneOverMapSize.zx;
    // texld r6, r3, s5
    temp6 = tex2D(ShadowMapSampler, temp3.xy);
    // mad r3.xy, v7, r2.w, c11.yzzw
    temp3.xy = i.texcoord6.xy * temp2.ww + Shadowmap_Zero_Zero_OneOverMapSize_OneOverMapSize.yz;
    // texld r7, r3, s5
    temp7 = tex2D(ShadowMapSampler, temp3.xy);
    // mad r3.xy, v7, r2.w, c11.wzzw
    temp3.xy = i.texcoord6.xy * temp2.ww + Shadowmap_Zero_Zero_OneOverMapSize_OneOverMapSize.wz;
    // texld r8, r3, s5
    temp8 = tex2D(ShadowMapSampler, temp3.xy);
    // mov r5.y, r6.x
    temp5.y = temp6.x;
    // mov r5.z, r7.x
    temp5.z = temp7.x;
    // mov r5.w, r8.x
    temp5.w = temp8.x;
    // add r4, -r4.x, r5
    temp4 = -temp4.x + temp5;
    // cmp r4, r4, c3.y, c3.z
    temp4 = (temp4 >= 0) ? float4(1, 1, 1, 1) : float4(0, 0, 0, 0);
    // dp4 r2.w, c2.x, r4
    temp2.w = dot(float4(1, 1, 1, 1), temp4);
    // mul r2.w, r2.w, c1.z
    temp2.w = temp2.w * float1(0.25);
    // mul r3.xy, r3.zwzw, r2.w
    temp3.xy = temp3.zw * temp2.ww;
    // texld r4, r1, s4
    temp4 = tex2D(CloudSamplerSampler, temp1.xy);
    // log r5.x, r4.x
    temp5.x = log2(temp4.x);
    // log r5.y, r4.y
    temp5.y = log2(temp4.y);
    // log r5.z, r4.z
    temp5.z = log2(temp4.z);
    // mul r4.xyz, r5, c2.z
    temp4.xyz = temp5.xyz * float3(2.2, 2.2, 2.2);
    // exp r5.x, r4.x
    temp5.x = exp2(temp4.x);
    // exp r5.y, r4.y
    temp5.y = exp2(temp4.y);
    // exp r5.z, r4.z
    temp5.z = exp2(temp4.z);
    // mul r4.xyz, r5, c5
    temp4.xyz = temp5.xyz * DirectionalLight[0].Color.xyz;
    // dp2add r0.w, r3.y, r0.w, c3.z
    temp0.w = dot(temp3.yy, temp0.ww) + float1(0);
    // mad r2.xyz, r3.x, r2, r0.w
    temp2.xyz = temp3.xxx * temp2.xyz + temp0.www;
    // mad r0.xyz, r4, r2, r0
    temp0.xyz = temp4.xyz * temp2.xyz + temp0.xyz;
    // texld r1, r1.zwzw, s0
    temp1 = tex2D(MacroSamplerSampler, temp1.zw);
    // log r2.x, r1.x
    temp2.x = log2(temp1.x);
    // log r2.y, r1.y
    temp2.y = log2(temp1.y);
    // log r2.z, r1.z
    temp2.z = log2(temp1.z);
    // mul r1.xyz, r2, c2.z
    temp1.xyz = temp2.xyz * float3(2.2, 2.2, 2.2);
    // exp r2.x, r1.x
    temp2.x = exp2(temp1.x);
    // exp r2.y, r1.y
    temp2.y = exp2(temp1.y);
    // exp r2.z, r1.z
    temp2.z = exp2(temp1.z);
    // mad r0.xyz, r0, r2, c2.y
    temp0.xyz = temp0.xyz * temp2.xyz + float3(-1, -1, -1);
    // mad r0.xyz, v1.x, r0, c2.x
    temp0.xyz = i.color1.xxx * temp0.xyz + float3(1, 1, 1);
    // texld r1, v3, s3
    temp1 = tex2D(ShroudSamplerSampler, i.texcoord2.xy);
    // mul oC0.xyz, r0, r1.x
    out_color.xyz = temp0.xyz * temp1.xxx;
    // 

    return out_color;
}

PixelShader PS_Road_Array[2] = {
    compile ps_3_0 PS_Road_Array_Shader_0(), // 101
    compile ps_3_0 PS_Road_Array_Shader_1(), // 102
};
// PS_Scorch_Array_Shader_0 Pixel_3_0 Has PRES True
struct PS_Scorch_Array_Shader_0_Input
{
    float4 color : COLOR;
    float color1 : COLOR1;
    float2 texcoord : TEXCOORD;
    float2 texcoord2 : TEXCOORD2;
    float3 texcoord3 : TEXCOORD3;
    float3 texcoord4 : TEXCOORD4;
};

float4 PS_Scorch_Array_Shader_0(PS_Scorch_Array_Shader_0_Input i) : COLOR
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
        float4 temp0;
        // Expression_2_1
        // mul r0.x, c0.x, (66)
        temp0.x = MapCellSize.x * (66);
        // rcp c11.x, r0.x
        expr11.x = 1.0f / (temp0.x);
    }

    float4 out_color;
    float4 temp0, temp1, temp2, temp3, temp4, temp5, temp6;
    float3 temp7;
    // def c0, -2, -3, -4, -5
    // def c1, 0.75, 1, 0, -1
    // def c2, 1, -1, 2.2, 2
    // dcl_color v0
    // dcl_color1 v1.x
    // dcl_texcoord v2.xy
    // dcl_texcoord2 v3.xy
    // dcl_texcoord3 v4.xyz
    // dcl_texcoord4 v5.xyz
    // dcl_2d s0
    // dcl_2d s1
    // dcl_2d s2
    // dcl_2d s3
    // dcl_2d s4
    // texld r0, v2, s1
    temp0 = tex2D(BaseSamplerClampedSampler, i.texcoord.xy);
    // mul r1.xy, c117.zwzw, v4.z
    temp1.xy = Cloud.WorldPositionMultiplier_XYZZ.zw * i.texcoord3.zz;
    // mad r1.xy, v4, c117, -r1
    temp1.xy = i.texcoord3.xy * Cloud.WorldPositionMultiplier_XYZZ.xy + -temp1.xy;
    // add r1.xy, r1, c118
    temp1.xy = temp1.xy + Cloud.CurrentOffsetUV.xy;
    // mov r2.xy, c2
    temp2.xy = float2(1, -1);
    // mul r1.zw, r2.xyxy, c11.x
    temp1.zw = temp2.xy * expr11.xx;
    // mul r1.zw, r1, v4.xyxy
    temp1.zw = temp1.zw * i.texcoord3.xy;
    // log r2.x, r0.x
    temp2.x = log2(temp0.x);
    // log r2.y, r0.y
    temp2.y = log2(temp0.y);
    // log r2.z, r0.z
    temp2.z = log2(temp0.z);
    // mul r0.xyz, r2, c2.z
    temp0.xyz = temp2.xyz * float3(2.2, 2.2, 2.2);
    // exp r2.x, r0.x
    temp2.x = exp2(temp0.x);
    // exp r2.y, r0.y
    temp2.y = exp2(temp0.y);
    // exp r2.z, r0.z
    temp2.z = exp2(temp0.z);
    // mul oC0.w, r0.w, v0.w
    out_color.w = temp0.w * i.color.w;
    // texld r0, v2, s2
    temp0 = tex2D(NormalSamplerClampedSampler, i.texcoord.xy);
    // mad r0.xyz, r0, c2.w, c2.y
    temp0.xyz = temp0.xyz * float3(2, 2, 2) + float3(-1, -1, -1);
    // mul r0.xyz, r0, c1.xxyw
    temp0.xyz = temp0.xyz * float3(0.75, 0.75, 1);
    // nrm r3.xyz, r0
    temp3.xyz = normalize(temp0.xyz);
    // mov r0.xyz, v0
    temp0.xyz = i.color.xyz;
    // mov r4.x, c1.z
    temp4.x = float1(0);
    // rep i0
    for (int it0 = 0; it0 < NumPointLights; ++it0) {
        // add r5, r4.x, c0
        temp5 = temp4.x + float4(-2, -3, -4, -5);
        // add r4.xyz, r4.x, -c1.wzyw
        temp4.xyz = temp4.xxx + float3(1, -0, -1);
        // mov r6.z, c1.z
        temp6.z = float1(0);
        // cmp r6.xyw, -r4_abs.y, c89.xyzz, r6.z
        temp6.xyw = (-abs(temp4).yyy >= 0) ? PointLight[0].Color.xyz : temp6.zzz;
        // cmp r7.xyz, -r4_abs.y, c90, r6.z
        temp7.xyz = (-abs(temp4).yyy >= 0) ? PointLight[0].Position.xyz : temp6.zzz;
        // cmp r4.yw, -r4_abs.y, c91.xxzy, r6.z
        temp4.yw = (-abs(temp4).yy >= 0) ? PointLight[0].Range_Inner_Outer.xy : temp6.zz;
        // cmp r6.xyz, -r4_abs.z, c92, r6.xyww
        temp6.xyz = (-abs(temp4).zzz >= 0) ? PointLight[1].Color.xyz : temp6.xyw;
        // cmp r7.xyz, -r4_abs.z, c93, r7
        temp7.xyz = (-abs(temp4).zzz >= 0) ? PointLight[1].Position.xyz : temp7.xyz;
        // cmp r4.yz, -r4_abs.z, c94.xxyw, r4.xyww
        temp4.yz = (-abs(temp4).zz >= 0) ? PointLight[1].Range_Inner_Outer.xy : temp4.yw;
        // cmp r6.xyz, -r5_abs.x, c95, r6
        temp6.xyz = (-abs(temp5).xxx >= 0) ? PointLight[2].Color.xyz : temp6.xyz;
        // cmp r7.xyz, -r5_abs.x, c96, r7
        temp7.xyz = (-abs(temp5).xxx >= 0) ? PointLight[2].Position.xyz : temp7.xyz;
        // cmp r4.yz, -r5_abs.x, c97.xxyw, r4
        temp4.yz = (-abs(temp5).xx >= 0) ? PointLight[2].Range_Inner_Outer.xy : temp4.yz;
        // cmp r6.xyz, -r5_abs.y, c98, r6
        temp6.xyz = (-abs(temp5).yyy >= 0) ? PointLight[3].Color.xyz : temp6.xyz;
        // cmp r7.xyz, -r5_abs.y, c99, r7
        temp7.xyz = (-abs(temp5).yyy >= 0) ? PointLight[3].Position.xyz : temp7.xyz;
        // cmp r4.yz, -r5_abs.y, c100.xxyw, r4
        temp4.yz = (-abs(temp5).yy >= 0) ? PointLight[3].Range_Inner_Outer.xy : temp4.yz;
        // cmp r6.xyz, -r5_abs.z, c101, r6
        temp6.xyz = (-abs(temp5).zzz >= 0) ? PointLight[4].Color.xyz : temp6.xyz;
        // cmp r7.xyz, -r5_abs.z, c102, r7
        temp7.xyz = (-abs(temp5).zzz >= 0) ? PointLight[4].Position.xyz : temp7.xyz;
        // cmp r4.yz, -r5_abs.z, c103.xxyw, r4
        temp4.yz = (-abs(temp5).zz >= 0) ? PointLight[4].Range_Inner_Outer.xy : temp4.yz;
        // cmp r5.xyz, -r5_abs.w, c104, r6
        temp5.xyz = (-abs(temp5).www >= 0) ? PointLight[5].Color.xyz : temp6.xyz;
        // cmp r6.xyz, -r5_abs.w, c105, r7
        temp6.xyz = (-abs(temp5).www >= 0) ? PointLight[5].Position.xyz : temp7.xyz;
        // cmp r4.yz, -r5_abs.w, c106.xxyw, r4
        temp4.yz = (-abs(temp5).ww >= 0) ? PointLight[5].Range_Inner_Outer.xy : temp4.yz;
        // add r6.xyz, r6, -v4
        temp6.xyz = temp6.xyz + -i.texcoord3.xyz;
        // dp3 r0.w, r6, r6
        temp0.w = dot(temp6.xyz, temp6.xyz);
        // rsq r0.w, r0.w
        temp0.w = 1 / sqrt(temp0.w);
        // rcp r2.w, r0.w
        temp2.w = 1.0f / temp0.w;
        // mul r6.xyz, r6, r0.w
        temp6.xyz = temp6.xyz * temp0.www;
        // add r0.w, -r4.y, r2.w
        temp0.w = -temp4.y + temp2.w;
        // add r2.w, -r4.y, r4.z
        temp2.w = -temp4.y + temp4.z;
        // rcp r2.w, r2.w
        temp2.w = 1.0f / temp2.w;
        // mad_sat r0.w, r0.w, -r2.w, c2.x
        temp0.w = saturate(temp0.w * -temp2.w + float1(1));
        // mul r0.w, r0.w, r0.w
        temp0.w = temp0.w * temp0.w;
        // mul r4.yzw, r5.xxyz, r0.w
        temp4.yzw = temp5.xyz * temp0.www;
        // dp3 r0.w, r3, r6
        temp0.w = dot(temp3.xyz, temp6.xyz);
        // max r2.w, r0.w, c1.z
        temp2.w = max(temp0.w, float1(0));
        // mad r0.xyz, r4.yzww, r2.w, r0
        temp0.xyz = temp4.yzw * temp2.www + temp0.xyz;
        // endrep
    }
    // mul r0.xyz, r2, r0
    temp0.xyz = temp2.xyz * temp0.xyz;
    // add r0.xyz, r0, r0
    temp0.xyz = temp0.xyz + temp0.xyz;
    // dp3 r0.w, r3, v5
    temp0.w = dot(temp3.xyz, i.texcoord4.xyz);
    // cmp r2.w, -r0.w, c1.z, c1.y
    temp2.w = (-temp0.w >= 0) ? float1(0) : float1(1);
    // mul r0.w, r0.w, r2.w
    temp0.w = temp0.w * temp2.w;
    // texld r3, r1, s4
    temp3 = tex2D(CloudSamplerSampler, temp1.xy);
    // log r4.x, r3.x
    temp4.x = log2(temp3.x);
    // log r4.y, r3.y
    temp4.y = log2(temp3.y);
    // log r4.z, r3.z
    temp4.z = log2(temp3.z);
    // mul r3.xyz, r4, c2.z
    temp3.xyz = temp4.xyz * float3(2.2, 2.2, 2.2);
    // exp r4.x, r3.x
    temp4.x = exp2(temp3.x);
    // exp r4.y, r3.y
    temp4.y = exp2(temp3.y);
    // exp r4.z, r3.z
    temp4.z = exp2(temp3.z);
    // mul r3.xyz, r4, c5
    temp3.xyz = temp4.xyz * DirectionalLight[0].Color.xyz;
    // mul r2.xyz, r2, r0.w
    temp2.xyz = temp2.xyz * temp0.www;
    // mad r0.xyz, r3, r2, r0
    temp0.xyz = temp3.xyz * temp2.xyz + temp0.xyz;
    // texld r1, r1.zwzw, s0
    temp1 = tex2D(MacroSamplerSampler, temp1.zw);
    // log r2.x, r1.x
    temp2.x = log2(temp1.x);
    // log r2.y, r1.y
    temp2.y = log2(temp1.y);
    // log r2.z, r1.z
    temp2.z = log2(temp1.z);
    // mul r1.xyz, r2, c2.z
    temp1.xyz = temp2.xyz * float3(2.2, 2.2, 2.2);
    // exp r2.x, r1.x
    temp2.x = exp2(temp1.x);
    // exp r2.y, r1.y
    temp2.y = exp2(temp1.y);
    // exp r2.z, r1.z
    temp2.z = exp2(temp1.z);
    // mad r0.xyz, r0, r2, c2.y
    temp0.xyz = temp0.xyz * temp2.xyz + float3(-1, -1, -1);
    // mad r0.xyz, v1.x, r0, c2.x
    temp0.xyz = i.color1.xxx * temp0.xyz + float3(1, 1, 1);
    // texld r1, v3, s3
    temp1 = tex2D(ShroudSamplerSampler, i.texcoord2.xy);
    // mul oC0.xyz, r0, r1.x
    out_color.xyz = temp0.xyz * temp1.xxx;
    // 

    return out_color;
}

// PS_Scorch_Array_Shader_1 Pixel_3_0 Has PRES True
struct PS_Scorch_Array_Shader_1_Input
{
    float4 color : COLOR;
    float color1 : COLOR1;
    float2 texcoord : TEXCOORD;
    float2 texcoord2 : TEXCOORD2;
    float3 texcoord3 : TEXCOORD3;
    float3 texcoord4 : TEXCOORD4;
    float3 texcoord6 : TEXCOORD6;
};

float4 PS_Scorch_Array_Shader_1(PS_Scorch_Array_Shader_1_Input i) : COLOR
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
        float4 temp0;
        // Expression_2_1
        // mul r0.x, c0.x, (66)
        temp0.x = MapCellSize.x * (66);
        // rcp c12.x, r0.x
        expr12.x = 1.0f / (temp0.x);
    }

    float4 out_color;
    float4 temp0, temp1, temp2, temp3, temp4, temp5, temp6;
    float3 temp7;
    // def c0, 1, -1, 2.2, 2
    // def c1, -2, -3, -4, -5
    // def c2, 0.75, 1, 0, -1
    // def c3, 0.25, 0, 0, 0
    // dcl_color v0
    // dcl_color1 v1.x
    // dcl_texcoord v2.xy
    // dcl_texcoord2 v3.xy
    // dcl_texcoord3 v4.xyz
    // dcl_texcoord4 v5.xyz
    // dcl_texcoord6 v6.xyz
    // dcl_2d s0
    // dcl_2d s1
    // dcl_2d s2
    // dcl_2d s3
    // dcl_2d s4
    // dcl_2d s5
    // texld r0, v2, s1
    temp0 = tex2D(BaseSamplerClampedSampler, i.texcoord.xy);
    // mul r1.xy, c117.zwzw, v4.z
    temp1.xy = Cloud.WorldPositionMultiplier_XYZZ.zw * i.texcoord3.zz;
    // mad r1.xy, v4, c117, -r1
    temp1.xy = i.texcoord3.xy * Cloud.WorldPositionMultiplier_XYZZ.xy + -temp1.xy;
    // add r1.xy, r1, c118
    temp1.xy = temp1.xy + Cloud.CurrentOffsetUV.xy;
    // mov r2.xy, c0
    temp2.xy = float2(1, -1);
    // mul r1.zw, r2.xyxy, c12.x
    temp1.zw = temp2.xy * expr12.xx;
    // mul r1.zw, r1, v4.xyxy
    temp1.zw = temp1.zw * i.texcoord3.xy;
    // log r2.x, r0.x
    temp2.x = log2(temp0.x);
    // log r2.y, r0.y
    temp2.y = log2(temp0.y);
    // log r2.z, r0.z
    temp2.z = log2(temp0.z);
    // mul r0.xyz, r2, c0.z
    temp0.xyz = temp2.xyz * float3(2.2, 2.2, 2.2);
    // exp r2.x, r0.x
    temp2.x = exp2(temp0.x);
    // exp r2.y, r0.y
    temp2.y = exp2(temp0.y);
    // exp r2.z, r0.z
    temp2.z = exp2(temp0.z);
    // mul oC0.w, r0.w, v0.w
    out_color.w = temp0.w * i.color.w;
    // texld r0, v2, s2
    temp0 = tex2D(NormalSamplerClampedSampler, i.texcoord.xy);
    // mad r0.xyz, r0, c0.w, c0.y
    temp0.xyz = temp0.xyz * float3(2, 2, 2) + float3(-1, -1, -1);
    // mul r0.xyz, r0, c2.xxyw
    temp0.xyz = temp0.xyz * float3(0.75, 0.75, 1);
    // nrm r3.xyz, r0
    temp3.xyz = normalize(temp0.xyz);
    // mov r0.xyz, v0
    temp0.xyz = i.color.xyz;
    // mov r4.x, c2.z
    temp4.x = float1(0);
    // rep i0
    for (int it0 = 0; it0 < NumPointLights; ++it0) {
        // add r5, r4.x, c1
        temp5 = temp4.x + float4(-2, -3, -4, -5);
        // add r4.xyz, r4.x, -c2.wzyw
        temp4.xyz = temp4.xxx + float3(1, -0, -1);
        // mov r6.z, c2.z
        temp6.z = float1(0);
        // cmp r6.xyw, -r4_abs.y, c89.xyzz, r6.z
        temp6.xyw = (-abs(temp4).yyy >= 0) ? PointLight[0].Color.xyz : temp6.zzz;
        // cmp r7.xyz, -r4_abs.y, c90, r6.z
        temp7.xyz = (-abs(temp4).yyy >= 0) ? PointLight[0].Position.xyz : temp6.zzz;
        // cmp r4.yw, -r4_abs.y, c91.xxzy, r6.z
        temp4.yw = (-abs(temp4).yy >= 0) ? PointLight[0].Range_Inner_Outer.xy : temp6.zz;
        // cmp r6.xyz, -r4_abs.z, c92, r6.xyww
        temp6.xyz = (-abs(temp4).zzz >= 0) ? PointLight[1].Color.xyz : temp6.xyw;
        // cmp r7.xyz, -r4_abs.z, c93, r7
        temp7.xyz = (-abs(temp4).zzz >= 0) ? PointLight[1].Position.xyz : temp7.xyz;
        // cmp r4.yz, -r4_abs.z, c94.xxyw, r4.xyww
        temp4.yz = (-abs(temp4).zz >= 0) ? PointLight[1].Range_Inner_Outer.xy : temp4.yw;
        // cmp r6.xyz, -r5_abs.x, c95, r6
        temp6.xyz = (-abs(temp5).xxx >= 0) ? PointLight[2].Color.xyz : temp6.xyz;
        // cmp r7.xyz, -r5_abs.x, c96, r7
        temp7.xyz = (-abs(temp5).xxx >= 0) ? PointLight[2].Position.xyz : temp7.xyz;
        // cmp r4.yz, -r5_abs.x, c97.xxyw, r4
        temp4.yz = (-abs(temp5).xx >= 0) ? PointLight[2].Range_Inner_Outer.xy : temp4.yz;
        // cmp r6.xyz, -r5_abs.y, c98, r6
        temp6.xyz = (-abs(temp5).yyy >= 0) ? PointLight[3].Color.xyz : temp6.xyz;
        // cmp r7.xyz, -r5_abs.y, c99, r7
        temp7.xyz = (-abs(temp5).yyy >= 0) ? PointLight[3].Position.xyz : temp7.xyz;
        // cmp r4.yz, -r5_abs.y, c100.xxyw, r4
        temp4.yz = (-abs(temp5).yy >= 0) ? PointLight[3].Range_Inner_Outer.xy : temp4.yz;
        // cmp r6.xyz, -r5_abs.z, c101, r6
        temp6.xyz = (-abs(temp5).zzz >= 0) ? PointLight[4].Color.xyz : temp6.xyz;
        // cmp r7.xyz, -r5_abs.z, c102, r7
        temp7.xyz = (-abs(temp5).zzz >= 0) ? PointLight[4].Position.xyz : temp7.xyz;
        // cmp r4.yz, -r5_abs.z, c103.xxyw, r4
        temp4.yz = (-abs(temp5).zz >= 0) ? PointLight[4].Range_Inner_Outer.xy : temp4.yz;
        // cmp r5.xyz, -r5_abs.w, c104, r6
        temp5.xyz = (-abs(temp5).www >= 0) ? PointLight[5].Color.xyz : temp6.xyz;
        // cmp r6.xyz, -r5_abs.w, c105, r7
        temp6.xyz = (-abs(temp5).www >= 0) ? PointLight[5].Position.xyz : temp7.xyz;
        // cmp r4.yz, -r5_abs.w, c106.xxyw, r4
        temp4.yz = (-abs(temp5).ww >= 0) ? PointLight[5].Range_Inner_Outer.xy : temp4.yz;
        // add r6.xyz, r6, -v4
        temp6.xyz = temp6.xyz + -i.texcoord3.xyz;
        // dp3 r0.w, r6, r6
        temp0.w = dot(temp6.xyz, temp6.xyz);
        // rsq r0.w, r0.w
        temp0.w = 1 / sqrt(temp0.w);
        // rcp r2.w, r0.w
        temp2.w = 1.0f / temp0.w;
        // mul r6.xyz, r6, r0.w
        temp6.xyz = temp6.xyz * temp0.www;
        // add r0.w, -r4.y, r2.w
        temp0.w = -temp4.y + temp2.w;
        // add r2.w, -r4.y, r4.z
        temp2.w = -temp4.y + temp4.z;
        // rcp r2.w, r2.w
        temp2.w = 1.0f / temp2.w;
        // mad_sat r0.w, r0.w, -r2.w, c0.x
        temp0.w = saturate(temp0.w * -temp2.w + float1(1));
        // mul r0.w, r0.w, r0.w
        temp0.w = temp0.w * temp0.w;
        // mul r4.yzw, r5.xxyz, r0.w
        temp4.yzw = temp5.xyz * temp0.www;
        // dp3 r0.w, r3, r6
        temp0.w = dot(temp3.xyz, temp6.xyz);
        // max r2.w, r0.w, c2.z
        temp2.w = max(temp0.w, float1(0));
        // mad r0.xyz, r4.yzww, r2.w, r0
        temp0.xyz = temp4.yzw * temp2.www + temp0.xyz;
        // endrep
    }
    // mul r0.xyz, r2, r0
    temp0.xyz = temp2.xyz * temp0.xyz;
    // add r0.xyz, r0, r0
    temp0.xyz = temp0.xyz + temp0.xyz;
    // dp3 r0.w, r3, v5
    temp0.w = dot(temp3.xyz, i.texcoord4.xyz);
    // cmp r2.w, -r0.w, c2.z, c2.y
    temp2.w = (-temp0.w >= 0) ? float1(0) : float1(1);
    // mul r0.w, r0.w, r2.w
    temp0.w = temp0.w * temp2.w;
    // texld r3, v6, s5
    temp3 = tex2D(ShadowMapSampler, i.texcoord6.xy);
    // add r4.xy, c11.zxzw, v6
    temp4.xy = Shadowmap_Zero_Zero_OneOverMapSize_OneOverMapSize.zx + i.texcoord6.xy;
    // texld r4, r4, s5
    temp4 = tex2D(ShadowMapSampler, temp4.xy);
    // add r4.yz, c11, v6.xxyw
    temp4.yz = Shadowmap_Zero_Zero_OneOverMapSize_OneOverMapSize.yz + i.texcoord6.xy;
    // texld r5, r4.yzzw, s5
    temp5 = tex2D(ShadowMapSampler, temp4.yz);
    // add r4.yz, c11.xwzw, v6.xxyw
    temp4.yz = Shadowmap_Zero_Zero_OneOverMapSize_OneOverMapSize.wz + i.texcoord6.xy;
    // texld r6, r4.yzzw, s5
    temp6 = tex2D(ShadowMapSampler, temp4.yz);
    // mov r3.y, r4.x
    temp3.y = temp4.x;
    // mov r3.z, r5.x
    temp3.z = temp5.x;
    // mov r3.w, r6.x
    temp3.w = temp6.x;
    // add r3, r3, -v6.z
    temp3 = temp3 + -i.texcoord6.z;
    // cmp r3, r3, c2.y, c2.z
    temp3 = (temp3 >= 0) ? float4(1, 1, 1, 1) : float4(0, 0, 0, 0);
    // dp4 r2.w, c0.x, r3
    temp2.w = dot(float4(1, 1, 1, 1), temp3);
    // mul r0.w, r0.w, r2.w
    temp0.w = temp0.w * temp2.w;
    // mul r0.w, r0.w, c3.x
    temp0.w = temp0.w * float1(0.25);
    // texld r3, r1, s4
    temp3 = tex2D(CloudSamplerSampler, temp1.xy);
    // log r4.x, r3.x
    temp4.x = log2(temp3.x);
    // log r4.y, r3.y
    temp4.y = log2(temp3.y);
    // log r4.z, r3.z
    temp4.z = log2(temp3.z);
    // mul r3.xyz, r4, c0.z
    temp3.xyz = temp4.xyz * float3(2.2, 2.2, 2.2);
    // exp r4.x, r3.x
    temp4.x = exp2(temp3.x);
    // exp r4.y, r3.y
    temp4.y = exp2(temp3.y);
    // exp r4.z, r3.z
    temp4.z = exp2(temp3.z);
    // mul r3.xyz, r4, c5
    temp3.xyz = temp4.xyz * DirectionalLight[0].Color.xyz;
    // mul r2.xyz, r2, r0.w
    temp2.xyz = temp2.xyz * temp0.www;
    // mad r0.xyz, r3, r2, r0
    temp0.xyz = temp3.xyz * temp2.xyz + temp0.xyz;
    // texld r1, r1.zwzw, s0
    temp1 = tex2D(MacroSamplerSampler, temp1.zw);
    // log r2.x, r1.x
    temp2.x = log2(temp1.x);
    // log r2.y, r1.y
    temp2.y = log2(temp1.y);
    // log r2.z, r1.z
    temp2.z = log2(temp1.z);
    // mul r1.xyz, r2, c0.z
    temp1.xyz = temp2.xyz * float3(2.2, 2.2, 2.2);
    // exp r2.x, r1.x
    temp2.x = exp2(temp1.x);
    // exp r2.y, r1.y
    temp2.y = exp2(temp1.y);
    // exp r2.z, r1.z
    temp2.z = exp2(temp1.z);
    // mad r0.xyz, r0, r2, c0.y
    temp0.xyz = temp0.xyz * temp2.xyz + float3(-1, -1, -1);
    // mad r0.xyz, v1.x, r0, c0.x
    temp0.xyz = i.color1.xxx * temp0.xyz + float3(1, 1, 1);
    // texld r1, v3, s3
    temp1 = tex2D(ShroudSamplerSampler, i.texcoord2.xy);
    // mul oC0.xyz, r0, r1.x
    out_color.xyz = temp0.xyz * temp1.xxx;
    // 

    return out_color;
}

PixelShader PS_Scorch_Array[2] = {
    compile ps_3_0 PS_Scorch_Array_Shader_0(), // 105
    compile ps_3_0 PS_Scorch_Array_Shader_1(), // 106
};
// VS_TerrainTile_M_Array_Shader_0 Vertex_2_0 Has PRES True
struct VS_TerrainTile_M_Array_Shader_0_Input
{
    float4 position : POSITION;
    float4 normal : NORMAL;
    float4 texcoord : TEXCOORD;
};

struct VS_TerrainTile_M_Array_Shader_0_Output
{
    float4 position : POSITION;
    float4 color1 : COLOR1;
    float4 color : COLOR;
    float2 texcoord2 : TEXCOORD2;
    float4 texcoord3 : TEXCOORD3;
    float4 texcoord5 : TEXCOORD5;
    float4 texcoord : TEXCOORD;
    float4 texcoord1 : TEXCOORD1;
};

VS_TerrainTile_M_Array_Shader_0_Output VS_TerrainTile_M_Array_Shader_0(VS_TerrainTile_M_Array_Shader_0_Input i)
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
        float4 temp0;
        // Expression_2_1
        // mul r0.x, c0.x, (66)
        temp0.x = MapCellSize.x * (66);
        // rcp c12.x, r0.x
        expr12.x = 1.0f / (temp0.x);
    }

    VS_TerrainTile_M_Array_Shader_0_Output o;
    float4 temp0, temp1;
    // def c0, 1, 0, 0.5, -1
    // dcl_position v0
    // dcl_normal v1
    // dcl_texcoord v2
    // mad r0, v0.xyzx, c0.xxxy, c0.yyyx
    temp0 = i.position.xyzx * float4(1, 1, 1, 0) + float4(0, 0, 0, 1);
    // dp4 oPos.x, r0, c119
    o.position.x = dot(temp0, (ViewProjection._m00_m10_m20_m30));
    // dp4 oPos.y, r0, c120
    o.position.y = dot(temp0, (ViewProjection._m01_m11_m21_m31));
    // dp4 oPos.z, r0, c121
    o.position.z = dot(temp0, (ViewProjection._m02_m12_m22_m32));
    // dp4 oPos.w, r0, c122
    o.position.w = dot(temp0, (ViewProjection._m03_m13_m23_m33));
    // dp3 r1.x, v1, c6
    temp1.x = dot(i.normal.xyz, DirectionalLight[0].Direction.xyz);
    // max r1.x, r1.x, c0.y
    temp1.x = max(temp1.x, float1(0));
    // mul r1.xyz, r1.x, c5
    temp1.xyz = temp1.xxx * DirectionalLight[0].Color.xyz;
    // mul oD1.xyz, r1, c0.z
    o.color1.xyz = temp1.xyz * float3(0.5, 0.5, 0.5);
    // dp3 r1.x, v1, c10
    temp1.x = dot(i.normal.xyz, DirectionalLight[2].Direction.xyz);
    // max r1.x, r1.x, c0.y
    temp1.x = max(temp1.x, float1(0));
    // mul r1.xyz, r1.x, c9
    temp1.xyz = temp1.xxx * DirectionalLight[2].Color.xyz;
    // dp3 r1.w, v1, c8
    temp1.w = dot(i.normal.xyz, DirectionalLight[1].Direction.xyz);
    // max r1.w, r1.w, c0.y
    temp1.w = max(temp1.w, float1(0));
    // mad r1.xyz, c7, r1.w, r1
    temp1.xyz = DirectionalLight[1].Color.xyz * temp1.www + temp1.xyz;
    // add r1.xyz, r1, c4
    temp1.xyz = temp1.xyz + AmbientLightColor.xyz;
    // mul oD0.xyz, r1, c0.z
    o.color.xyz = temp1.xyz * float3(0.5, 0.5, 0.5);
    // add r1.xy, v0, c11.zwzw
    temp1.xy = i.position.xy + Shroud.ScaleUV_OffsetUV.zw;
    // mul oT2.xy, r1, c11
    o.texcoord2 = temp1 * Shroud.ScaleUV_OffsetUV;
    // mul r1.xy, v0.z, c117.zwzw
    temp1.xy = i.position.zz * Cloud.WorldPositionMultiplier_XYZZ.zw;
    // mad r1.xy, v0, c117, -r1
    temp1.xy = i.position.xy * Cloud.WorldPositionMultiplier_XYZZ.xy + -temp1.xy;
    // add oT3.xy, r1, c118
    o.texcoord3.xy = temp1.xy + Cloud.CurrentOffsetUV.xy;
    // mov r1.xw, c0
    temp1.xw = float2(1, -1);
    // mul r1.xy, r1.wxzw, c12.x
    temp1.xy = temp1.wx * expr12.xx;
    // mul oT3.zw, r1.xyxy, v0.xyyx
    o.texcoord3.zw = temp1.xy * i.position.yx;
    // dp4 oT5.x, r0, c113
    o.texcoord5.x = dot(temp0, (ShadowMapWorldToShadow._m00_m10_m20_m30));
    // dp4 oT5.y, r0, c114
    o.texcoord5.y = dot(temp0, (ShadowMapWorldToShadow._m01_m11_m21_m31));
    // dp4 oT5.z, r0, c115
    o.texcoord5.z = dot(temp0, (ShadowMapWorldToShadow._m02_m12_m22_m32));
    // dp4 oT5.w, r0, c116
    o.texcoord5.w = dot(temp0, (ShadowMapWorldToShadow._m03_m13_m23_m33));
    // mov oD0.w, c0.x
    o.color.w = float1(1);
    // mov oD1.w, c0.x
    o.color1.w = float1(1);
    // mov oT0.xy, v2
    o.texcoord.xy = i.texcoord.xy;
    // mov oT0.zw, c0.y
    o.texcoord.zw = float2(0, 0);
    // mov oT1, c0.y
    o.texcoord1 = float4(0, 0, 0, 0);
    // 

    return o;
}

// VS_TerrainTile_M_Array_Shader_1 Vertex_2_0 Has PRES True
struct VS_TerrainTile_M_Array_Shader_1_Input
{
    float4 position : POSITION;
    float4 normal : NORMAL;
    float4 texcoord : TEXCOORD;
    float4 texcoord1 : TEXCOORD1;
    float4 texcoord2 : TEXCOORD2;
};

struct VS_TerrainTile_M_Array_Shader_1_Output
{
    float4 texcoord : TEXCOORD;
    float4 texcoord1 : TEXCOORD1;
    float4 position : POSITION;
    float4 color1 : COLOR1;
    float4 color : COLOR;
    float2 texcoord2 : TEXCOORD2;
    float4 texcoord3 : TEXCOORD3;
    float4 texcoord5 : TEXCOORD5;
};

VS_TerrainTile_M_Array_Shader_1_Output VS_TerrainTile_M_Array_Shader_1(VS_TerrainTile_M_Array_Shader_1_Input i)
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
        float4 temp0;
        // Expression_2_1
        // mul r0.x, c0.x, (66)
        temp0.x = MapCellSize.x * (66);
        // rcp c12.x, r0.x
        expr12.x = 1.0f / (temp0.x);
    }

    VS_TerrainTile_M_Array_Shader_1_Output o;
    float4 temp0, temp1;
    float3 temp2;
    // def c0, 0.01, -1, 3.333333E-05, -0
    // def c1, 0, -0.0015, 0, 0
    // def c2, 0.5, -1, 1, 0
    // dcl_position v0
    // dcl_normal v1
    // dcl_texcoord v2
    // dcl_texcoord1 v3
    // dcl_texcoord2 v4
    // mul oT0.xy, v2, c0.z
    o.texcoord.xy = i.texcoord.xy * float2(3.3333334E-05, 3.3333334E-05);
    // mul oT1.xy, v3, c0.z
    o.texcoord1.xy = i.texcoord1.xy * float2(3.3333334E-05, 3.3333334E-05);
    // mul oT1.zw, v4.xyyx, c0.z
    o.texcoord1.zw = i.texcoord2.yx * float2(3.3333334E-05, 3.3333334E-05);
    // add oT0.w, v0.w, c0.y
    o.texcoord.w = i.position.w + float1(-1);
    // add oT0.z, v1.w, c0.y
    o.texcoord.z = i.normal.w + float1(-1);
    // mad r0, v0.xyzx, -c0.yyyw, -c0.wwwy
    temp0 = i.position.xyzx * float4(1, 1, 1, 0) + float4(0, 0, 0, 1);
    // dp4 oPos.x, r0, c119
    o.position.x = dot(temp0, (ViewProjection._m00_m10_m20_m30));
    // dp4 oPos.y, r0, c120
    o.position.y = dot(temp0, (ViewProjection._m01_m11_m21_m31));
    // dp4 oPos.z, r0, c121
    o.position.z = dot(temp0, (ViewProjection._m02_m12_m22_m32));
    // dp4 oPos.w, r0, c122
    o.position.w = dot(temp0, (ViewProjection._m03_m13_m23_m33));
    // mad r1.xyz, v1, c0.x, c0.y
    temp1.xyz = i.normal.xyz * float3(0.01, 0.01, 0.01) + float3(-1, -1, -1);
    // dp3 r1.w, r1, c6
    temp1.w = dot(temp1.xyz, DirectionalLight[0].Direction.xyz);
    // max r1.w, r1.w, -c0.w
    temp1.w = max(temp1.w, float1(0));
    // mul r2.xyz, r1.w, c5
    temp2.xyz = temp1.www * DirectionalLight[0].Color.xyz;
    // mul oD1.xyz, r2, c2.x
    o.color1.xyz = temp2.xyz * float3(0.5, 0.5, 0.5);
    // dp3 r1.w, r1, c10
    temp1.w = dot(temp1.xyz, DirectionalLight[2].Direction.xyz);
    // dp3 r1.x, r1, c8
    temp1.x = dot(temp1.xyz, DirectionalLight[1].Direction.xyz);
    // max r1.y, r1.w, -c0.w
    temp1.y = max(temp1.w, float1(0));
    // mul r1.yzw, r1.y, c9.xxyz
    temp1.yzw = temp1.yyy * DirectionalLight[2].Color.xyz;
    // max r1.x, r1.x, -c0.w
    temp1.x = max(temp1.x, float1(0));
    // mad r1.xyz, c7, r1.x, r1.yzww
    temp1.xyz = DirectionalLight[1].Color.xyz * temp1.xxx + temp1.yzw;
    // add r1.xyz, r1, c4
    temp1.xyz = temp1.xyz + AmbientLightColor.xyz;
    // mul oD0.xyz, r1, c2.x
    o.color.xyz = temp1.xyz * float3(0.5, 0.5, 0.5);
    // add r1.xy, v0, c11.zwzw
    temp1.xy = i.position.xy + Shroud.ScaleUV_OffsetUV.zw;
    // mul oT2.xy, r1, c11
    o.texcoord2 = temp1 * Shroud.ScaleUV_OffsetUV;
    // mul r1.xy, v0.z, c117.zwzw
    temp1.xy = i.position.zz * Cloud.WorldPositionMultiplier_XYZZ.zw;
    // mad r1.xy, v0, c117, -r1
    temp1.xy = i.position.xy * Cloud.WorldPositionMultiplier_XYZZ.xy + -temp1.xy;
    // add oT3.xy, r1, c118
    o.texcoord3.xy = temp1.xy + Cloud.CurrentOffsetUV.xy;
    // mov r1.yz, c2
    temp1.yz = float2(-1, 1);
    // mul r1.xy, r1.yzzw, c12.x
    temp1.xy = temp1.yz * expr12.xx;
    // mul oT3.zw, r1.xyxy, v0.xyyx
    o.texcoord3.zw = temp1.xy * i.position.yx;
    // mov oD0.w, -c0.y
    o.color.w = float1(1);
    // mov oD1.w, -c0.y
    o.color1.w = float1(1);
    // dp4 r1.x, r0, c113
    temp1.x = dot(temp0, (ShadowMapWorldToShadow._m00_m10_m20_m30));
    // dp4 r1.y, r0, c114
    temp1.y = dot(temp0, (ShadowMapWorldToShadow._m01_m11_m21_m31));
    // dp4 r1.z, r0, c115
    temp1.z = dot(temp0, (ShadowMapWorldToShadow._m02_m12_m22_m32));
    // dp4 r0.x, r0, c116
    temp0.x = dot(temp0, (ShadowMapWorldToShadow._m03_m13_m23_m33));
    // rcp r0.y, r0.x
    temp0.y = 1.0f / temp0.x;
    // mov oT5.w, r0.x
    o.texcoord5.w = temp0.x;
    // mad oT5.xyz, r1, r0.y, c1.xxyw
    o.texcoord5.xyz = temp1.xyz * temp0.yyy + float3(0, 0, -0.0015);
    // 

    return o;
}

VertexShader VS_TerrainTile_M_Array[2] = {
    compile vs_2_0 VS_TerrainTile_M_Array_Shader_0(), // 109
    compile vs_2_0 VS_TerrainTile_M_Array_Shader_1(), // 110
};
// PS_TerrainTile_M_Array_Shader_0 Pixel_2_0 Has PRES False
struct PS_TerrainTile_M_Array_Shader_0_Input
{
    float4 color : COLOR;
    float4 color1 : COLOR1;
    float2 texcoord : TEXCOORD;
    float2 texcoord2 : TEXCOORD2;
    float4 texcoord3 : TEXCOORD3;
};

float4 PS_TerrainTile_M_Array_Shader_0(PS_TerrainTile_M_Array_Shader_0_Input i) : COLOR
{
    float4 out_color;
    float4 temp0, temp1, temp2;
    // def c0, 2.2, -1, 1, 0
    // dcl v0
    // dcl v1
    // dcl t0.xy
    // dcl t2.xy
    // dcl t3
    // dcl_2d s0
    // dcl_2d s1
    // dcl_2d s2
    // dcl_2d s3
    // texld r0, t3, s3
    temp0 = tex2D(CloudSamplerSampler, i.texcoord3.xy);
    // texld r1, t0, s1
    temp1 = tex2D(BaseSamplerClampedSampler, i.texcoord.xy);
    // log r2.x, r0.x
    temp2.x = log2(temp0.x);
    // log r2.y, r0.y
    temp2.y = log2(temp0.y);
    // log r2.z, r0.z
    temp2.z = log2(temp0.z);
    // mul r0.xyz, r2, c0.x
    temp0.xyz = temp2.xyz * float3(2.2, 2.2, 2.2);
    // exp r2.x, r0.x
    temp2.x = exp2(temp0.x);
    // exp r2.y, r0.y
    temp2.y = exp2(temp0.y);
    // exp r2.z, r0.z
    temp2.z = exp2(temp0.z);
    // mov r0.xyz, v1
    temp0.xyz = i.color1.xyz;
    // mad r0.xyz, r0, r2, v0
    temp0.xyz = temp0.xyz * temp2.xyz + i.color.xyz;
    // mul r0.xyz, r1, r0
    temp0.xyz = temp1.xyz * temp0.xyz;
    // add r0.xyz, r0, r0
    temp0.xyz = temp0.xyz + temp0.xyz;
    // mov r1.xy, t3.wzyx
    temp1.xy = i.texcoord3.wz;
    // texld r1, r1, s0
    temp1 = tex2D(MacroSamplerSampler, temp1.xy);
    // texld r2, t2, s2
    temp2 = tex2D(ShroudSamplerSampler, i.texcoord2.xy);
    // mad r0.xyz, r0, r1, c0.y
    temp0.xyz = temp0.xyz * temp1.xyz + float3(-1, -1, -1);
    // mad r0.xyz, v1.w, r0, c0.z
    temp0.xyz = i.color1.www * temp0.xyz + float3(1, 1, 1);
    // mul r0.xyz, r2.x, r0
    temp0.xyz = temp2.xxx * temp0.xyz;
    // mov r0.w, v0.w
    temp0.w = i.color.w;
    // mov oC0, r0
    out_color = temp0;
    // 

    return out_color;
}

// PS_TerrainTile_M_Array_Shader_1 Pixel_2_0 Has PRES False
struct PS_TerrainTile_M_Array_Shader_1_Input
{
    float4 color : COLOR;
    float4 color1 : COLOR1;
    float2 texcoord : TEXCOORD;
    float2 texcoord2 : TEXCOORD2;
    float4 texcoord3 : TEXCOORD3;
    float4 texcoord5 : TEXCOORD5;
};

float4 PS_TerrainTile_M_Array_Shader_1(PS_TerrainTile_M_Array_Shader_1_Input i) : COLOR
{
    float4 out_color;
    float4 temp0, temp1, temp2, temp3, temp4, temp5, temp6, temp7, temp8;
    // def c0, 2.2, -0.0015, 1, 0
    // def c1, 0.25, 0, 0, 0
    // dcl v0
    // dcl v1
    // dcl t0.xy
    // dcl t2.xy
    // dcl t3
    // dcl t5
    // dcl_2d s0
    // dcl_2d s1
    // dcl_2d s2
    // dcl_2d s3
    // dcl_2d s4
    // rcp r0.w, t5.w
    temp0.w = 1.0f / i.texcoord5.w;
    // mul r0.xy, r0.w, t5
    temp0.xy = temp0.ww * i.texcoord5.xy;
    // mad r1.xy, t5, r0.w, c11.zxyw
    temp1.xy = i.texcoord5.xy * temp0.ww + Shadowmap_Zero_Zero_OneOverMapSize_OneOverMapSize.zx;
    // mad r2.xy, t5, r0.w, c11.yzxw
    temp2.xy = i.texcoord5.xy * temp0.ww + Shadowmap_Zero_Zero_OneOverMapSize_OneOverMapSize.yz;
    // mad r3.xy, t5, r0.w, c11.wzyx
    temp3.xy = i.texcoord5.xy * temp0.ww + Shadowmap_Zero_Zero_OneOverMapSize_OneOverMapSize.wz;
    // mov r4.xy, t3.wzyx
    temp4.xy = i.texcoord3.wz;
    // texld r5, r0, s4
    temp5 = tex2D(ShadowMapSampler, temp0.xy);
    // texld r1, r1, s4
    temp1 = tex2D(ShadowMapSampler, temp1.xy);
    // texld r2, r2, s4
    temp2 = tex2D(ShadowMapSampler, temp2.xy);
    // texld r3, r3, s4
    temp3 = tex2D(ShadowMapSampler, temp3.xy);
    // texld r6, t3, s3
    temp6 = tex2D(CloudSamplerSampler, i.texcoord3.xy);
    // texld r7, t0, s1
    temp7 = tex2D(BaseSamplerClampedSampler, i.texcoord.xy);
    // texld r4, r4, s0
    temp4 = tex2D(MacroSamplerSampler, temp4.xy);
    // texld r8, t2, s2
    temp8 = tex2D(ShroudSamplerSampler, i.texcoord2.xy);
    // mov r5.y, r1.x
    temp5.y = temp1.x;
    // mov r5.z, r2.x
    temp5.z = temp2.x;
    // mad r4.w, t5.z, r0.w, c0.y
    temp4.w = i.texcoord5.z * temp0.w + float1(-0.0015);
    // mov r5.w, r3.x
    temp5.w = temp3.x;
    // add r0, r5, -r4.w
    temp0 = temp5 + -temp4.w;
    // cmp r0, r0, c0.z, c0.w
    temp0 = (temp0 >= 0) ? float4(1, 1, 1, 1) : float4(0, 0, 0, 0);
    // dp4 r4.w, c0.z, r0
    temp4.w = dot(float4(1, 1, 1, 1), temp0);
    // mul r4.w, r4.w, c1.x
    temp4.w = temp4.w * float1(0.25);
    // log r0.x, r6.x
    temp0.x = log2(temp6.x);
    // log r0.y, r6.y
    temp0.y = log2(temp6.y);
    // log r0.z, r6.z
    temp0.z = log2(temp6.z);
    // mul r0.xyz, r0, c0.x
    temp0.xyz = temp0.xyz * float3(2.2, 2.2, 2.2);
    // exp r1.x, r0.x
    temp1.x = exp2(temp0.x);
    // exp r1.y, r0.y
    temp1.y = exp2(temp0.y);
    // exp r1.z, r0.z
    temp1.z = exp2(temp0.z);
    // mul r0.xyz, r1, v1
    temp0.xyz = temp1.xyz * i.color1.xyz;
    // mad r0.xyz, r0, r4.w, v0
    temp0.xyz = temp0.xyz * temp4.www + i.color.xyz;
    // mul r0.xyz, r7, r0
    temp0.xyz = temp7.xyz * temp0.xyz;
    // add r0.xyz, r0, r0
    temp0.xyz = temp0.xyz + temp0.xyz;
    // mad r0.xyz, r0, r4, -c0.z
    temp0.xyz = temp0.xyz * temp4.xyz + float3(-1, -1, -1);
    // mad r0.xyz, v1.w, r0, c0.z
    temp0.xyz = i.color1.www * temp0.xyz + float3(1, 1, 1);
    // mul r0.xyz, r8.x, r0
    temp0.xyz = temp8.xxx * temp0.xyz;
    // mov r0.w, v0.w
    temp0.w = i.color.w;
    // mov oC0, r0
    out_color = temp0;
    // 

    return out_color;
}

// PS_TerrainTile_M_Array_Shader_2 Pixel_2_0 Has PRES False
struct PS_TerrainTile_M_Array_Shader_2_Input
{
    float4 color : COLOR;
    float4 color1 : COLOR1;
    float4 texcoord : TEXCOORD;
    float4 texcoord1 : TEXCOORD1;
    float2 texcoord2 : TEXCOORD2;
    float4 texcoord3 : TEXCOORD3;
};

float4 PS_TerrainTile_M_Array_Shader_2(PS_TerrainTile_M_Array_Shader_2_Input i) : COLOR
{
    float4 out_color;
    float4 temp0, temp1, temp2, temp3, temp4, temp5;
    float3 temp6;
    // def c0, 2.2, -1, 1, 0
    // dcl v0
    // dcl v1
    // dcl t0
    // dcl t1
    // dcl t2.xy
    // dcl t3
    // dcl_2d s0
    // dcl_2d s1
    // dcl_2d s2
    // dcl_2d s3
    // texld r0, t3, s3
    temp0 = tex2D(CloudSamplerSampler, i.texcoord3.xy);
    // log r1.x, r0.x
    temp1.x = log2(temp0.x);
    // log r1.y, r0.y
    temp1.y = log2(temp0.y);
    // log r1.z, r0.z
    temp1.z = log2(temp0.z);
    // mul r0.xyz, r1, c0.x
    temp0.xyz = temp1.xyz * float3(2.2, 2.2, 2.2);
    // exp r1.x, r0.x
    temp1.x = exp2(temp0.x);
    // exp r1.y, r0.y
    temp1.y = exp2(temp0.y);
    // exp r1.z, r0.z
    temp1.z = exp2(temp0.z);
    // mov r0.xyz, v1
    temp0.xyz = i.color1.xyz;
    // mad r0.xyz, r0, r1, v0
    temp0.xyz = temp0.xyz * temp1.xyz + i.color.xyz;
    // mov r1.xy, t1.wzyx
    temp1.xy = i.texcoord1.wz;
    // mov r2.xy, t3.wzyx
    temp2.xy = i.texcoord3.wz;
    // texld r1, r1, s1
    temp1 = tex2D(BaseSamplerClampedSampler, temp1.xy);
    // texld r3, t0, s1
    temp3 = tex2D(BaseSamplerClampedSampler, i.texcoord.xy);
    // texld r4, t1, s1
    temp4 = tex2D(BaseSamplerClampedSampler, i.texcoord1.xy);
    // texld r2, r2, s0
    temp2 = tex2D(MacroSamplerSampler, temp2.xy);
    // texld r5, t2, s2
    temp5 = tex2D(ShroudSamplerSampler, i.texcoord2.xy);
    // mov_sat r5.zw, t0
    temp5.zw = saturate(i.texcoord.zw);
    // lrp r6.xyz, r5.w, r4, r3
    temp6.xyz = lerp(temp3.xyz, temp4.xyz, temp5.www);
    // lrp r3.xyz, r5.z, r1, r6
    temp3.xyz = lerp(temp6.xyz, temp1.xyz, temp5.zzz);
    // mul r0.xyz, r0, r3
    temp0.xyz = temp0.xyz * temp3.xyz;
    // add r0.xyz, r0, r0
    temp0.xyz = temp0.xyz + temp0.xyz;
    // mad r0.xyz, r0, r2, c0.y
    temp0.xyz = temp0.xyz * temp2.xyz + float3(-1, -1, -1);
    // mad r0.xyz, v1.w, r0, c0.z
    temp0.xyz = i.color1.www * temp0.xyz + float3(1, 1, 1);
    // mul r0.xyz, r5.x, r0
    temp0.xyz = temp5.xxx * temp0.xyz;
    // mov r0.w, v0.w
    temp0.w = i.color.w;
    // mov oC0, r0
    out_color = temp0;
    // 

    return out_color;
}

// PS_TerrainTile_M_Array_Shader_3 Pixel_2_0 Has PRES False
struct PS_TerrainTile_M_Array_Shader_3_Input
{
    float4 color : COLOR;
    float4 color1 : COLOR1;
    float4 texcoord : TEXCOORD;
    float4 texcoord1 : TEXCOORD1;
    float2 texcoord2 : TEXCOORD2;
    float4 texcoord3 : TEXCOORD3;
    float3 texcoord5 : TEXCOORD5;
};

float4 PS_TerrainTile_M_Array_Shader_3(PS_TerrainTile_M_Array_Shader_3_Input i) : COLOR
{
    float4 out_color;
    float4 temp0, temp1, temp2, temp3, temp4, temp5, temp6, temp7, temp8, temp9;
    // def c0, 2.2, 1, 0, 0.25
    // dcl v0
    // dcl v1
    // dcl t0
    // dcl t1
    // dcl t2.xy
    // dcl t3
    // dcl t5.xyz
    // dcl_2d s0
    // dcl_2d s1
    // dcl_2d s2
    // dcl_2d s3
    // dcl_2d s4
    // add r0.xy, t5, c11.zxyw
    temp0.xy = i.texcoord5.xy + Shadowmap_Zero_Zero_OneOverMapSize_OneOverMapSize.zx;
    // add r1.xy, t5, c11.yzxw
    temp1.xy = i.texcoord5.xy + Shadowmap_Zero_Zero_OneOverMapSize_OneOverMapSize.yz;
    // add r2.xy, t5, c11.wzyx
    temp2.xy = i.texcoord5.xy + Shadowmap_Zero_Zero_OneOverMapSize_OneOverMapSize.wz;
    // mov r3.xy, t1.wzyx
    temp3.xy = i.texcoord1.wz;
    // mov r4.xy, t3.wzyx
    temp4.xy = i.texcoord3.wz;
    // texld r0, r0, s4
    temp0 = tex2D(ShadowMapSampler, temp0.xy);
    // texld r1, r1, s4
    temp1 = tex2D(ShadowMapSampler, temp1.xy);
    // texld r2, r2, s4
    temp2 = tex2D(ShadowMapSampler, temp2.xy);
    // texld r5, t5, s4
    temp5 = tex2D(ShadowMapSampler, i.texcoord5.xy);
    // texld r6, t3, s3
    temp6 = tex2D(CloudSamplerSampler, i.texcoord3.xy);
    // texld r3, r3, s1
    temp3 = tex2D(BaseSamplerClampedSampler, temp3.xy);
    // texld r7, t0, s1
    temp7 = tex2D(BaseSamplerClampedSampler, i.texcoord.xy);
    // texld r8, t1, s1
    temp8 = tex2D(BaseSamplerClampedSampler, i.texcoord1.xy);
    // texld r4, r4, s0
    temp4 = tex2D(MacroSamplerSampler, temp4.xy);
    // texld r9, t2, s2
    temp9 = tex2D(ShroudSamplerSampler, i.texcoord2.xy);
    // mov r5.y, r0.x
    temp5.y = temp0.x;
    // mov r5.z, r1.x
    temp5.z = temp1.x;
    // mov r5.w, r2.x
    temp5.w = temp2.x;
    // add r0, r5, -t5.z
    temp0 = temp5 + -i.texcoord5.z;
    // cmp r0, r0, c0.y, c0.z
    temp0 = (temp0 >= 0) ? float4(1, 1, 1, 1) : float4(0, 0, 0, 0);
    // dp4 r3.w, c0.y, r0
    temp3.w = dot(float4(1, 1, 1, 1), temp0);
    // mul r3.w, r3.w, c0.w
    temp3.w = temp3.w * float1(0.25);
    // log r0.x, r6.x
    temp0.x = log2(temp6.x);
    // log r0.y, r6.y
    temp0.y = log2(temp6.y);
    // log r0.z, r6.z
    temp0.z = log2(temp6.z);
    // mul r0.xyz, r0, c0.x
    temp0.xyz = temp0.xyz * float3(2.2, 2.2, 2.2);
    // exp r1.x, r0.x
    temp1.x = exp2(temp0.x);
    // exp r1.y, r0.y
    temp1.y = exp2(temp0.y);
    // exp r1.z, r0.z
    temp1.z = exp2(temp0.z);
    // mul r0.xyz, r1, v1
    temp0.xyz = temp1.xyz * i.color1.xyz;
    // mad r0.xyz, r0, r3.w, v0
    temp0.xyz = temp0.xyz * temp3.www + i.color.xyz;
    // mov_sat r1.xy, t0.wzyx
    temp1.xy = saturate(i.texcoord.wz);
    // lrp r2.xyz, r1.x, r8, r7
    temp2.xyz = lerp(temp7.xyz, temp8.xyz, temp1.xxx);
    // lrp r5.xyz, r1.y, r3, r2
    temp5.xyz = lerp(temp2.xyz, temp3.xyz, temp1.yyy);
    // mul r0.xyz, r0, r5
    temp0.xyz = temp0.xyz * temp5.xyz;
    // add r0.xyz, r0, r0
    temp0.xyz = temp0.xyz + temp0.xyz;
    // mad r0.xyz, r0, r4, -c0.y
    temp0.xyz = temp0.xyz * temp4.xyz + float3(-1, -1, -1);
    // mad r0.xyz, v1.w, r0, c0.y
    temp0.xyz = i.color1.www * temp0.xyz + float3(1, 1, 1);
    // mul r0.xyz, r9.x, r0
    temp0.xyz = temp9.xxx * temp0.xyz;
    // mov r0.w, v0.w
    temp0.w = i.color.w;
    // mov oC0, r0
    out_color = temp0;
    // 

    return out_color;
}

PixelShader PS_TerrainTile_M_Array[4] = {
    compile ps_2_0 PS_TerrainTile_M_Array_Shader_0(), // 111
    compile ps_2_0 PS_TerrainTile_M_Array_Shader_1(), // 112
    compile ps_2_0 PS_TerrainTile_M_Array_Shader_2(), // 113
    compile ps_2_0 PS_TerrainTile_M_Array_Shader_3(), // 114
};
// PS_Cliff_M_Array_Shader_0 Pixel_2_0 Has PRES False
struct PS_Cliff_M_Array_Shader_0_Input
{
    float4 color : COLOR;
    float4 color1 : COLOR1;
    float2 texcoord : TEXCOORD;
    float2 texcoord2 : TEXCOORD2;
    float4 texcoord3 : TEXCOORD3;
};

float4 PS_Cliff_M_Array_Shader_0(PS_Cliff_M_Array_Shader_0_Input i) : COLOR
{
    float4 out_color;
    float4 temp0, temp1, temp2;
    // def c0, 2.2, -1, 1, 0
    // dcl v0
    // dcl v1
    // dcl t0.xy
    // dcl t2.xy
    // dcl t3
    // dcl_2d s0
    // dcl_2d s1
    // dcl_2d s2
    // dcl_2d s3
    // texld r0, t3, s3
    temp0 = tex2D(CloudSamplerSampler, i.texcoord3.xy);
    // texld r1, t0, s1
    temp1 = tex2D(BaseSamplerWrappedSampler, i.texcoord.xy);
    // log r2.x, r0.x
    temp2.x = log2(temp0.x);
    // log r2.y, r0.y
    temp2.y = log2(temp0.y);
    // log r2.z, r0.z
    temp2.z = log2(temp0.z);
    // mul r0.xyz, r2, c0.x
    temp0.xyz = temp2.xyz * float3(2.2, 2.2, 2.2);
    // exp r2.x, r0.x
    temp2.x = exp2(temp0.x);
    // exp r2.y, r0.y
    temp2.y = exp2(temp0.y);
    // exp r2.z, r0.z
    temp2.z = exp2(temp0.z);
    // mov r0.xyz, v1
    temp0.xyz = i.color1.xyz;
    // mad r0.xyz, r0, r2, v0
    temp0.xyz = temp0.xyz * temp2.xyz + i.color.xyz;
    // mul r0.xyz, r1, r0
    temp0.xyz = temp1.xyz * temp0.xyz;
    // add r0.xyz, r0, r0
    temp0.xyz = temp0.xyz + temp0.xyz;
    // mov r1.xy, t3.wzyx
    temp1.xy = i.texcoord3.wz;
    // texld r1, r1, s0
    temp1 = tex2D(MacroSamplerSampler, temp1.xy);
    // texld r2, t2, s2
    temp2 = tex2D(ShroudSamplerSampler, i.texcoord2.xy);
    // mad r0.xyz, r0, r1, c0.y
    temp0.xyz = temp0.xyz * temp1.xyz + float3(-1, -1, -1);
    // mad r0.xyz, v1.w, r0, c0.z
    temp0.xyz = i.color1.www * temp0.xyz + float3(1, 1, 1);
    // mul r0.xyz, r2.x, r0
    temp0.xyz = temp2.xxx * temp0.xyz;
    // mov r0.w, v0.w
    temp0.w = i.color.w;
    // mov oC0, r0
    out_color = temp0;
    // 

    return out_color;
}

// PS_Cliff_M_Array_Shader_1 Pixel_2_0 Has PRES False
struct PS_Cliff_M_Array_Shader_1_Input
{
    float4 color : COLOR;
    float4 color1 : COLOR1;
    float2 texcoord : TEXCOORD;
    float2 texcoord2 : TEXCOORD2;
    float4 texcoord3 : TEXCOORD3;
    float3 texcoord5 : TEXCOORD5;
};

float4 PS_Cliff_M_Array_Shader_1(PS_Cliff_M_Array_Shader_1_Input i) : COLOR
{
    float4 out_color;
    float4 temp0, temp1, temp2, temp3, temp4, temp5, temp6, temp7;
    // def c0, 2.2, 1, 0, 0.25
    // dcl v0
    // dcl v1
    // dcl t0.xy
    // dcl t2.xy
    // dcl t3
    // dcl t5.xyz
    // dcl_2d s0
    // dcl_2d s1
    // dcl_2d s2
    // dcl_2d s3
    // dcl_2d s4
    // add r0.xy, t5, c11.zxyw
    temp0.xy = i.texcoord5.xy + Shadowmap_Zero_Zero_OneOverMapSize_OneOverMapSize.zx;
    // add r1.xy, t5, c11.yzxw
    temp1.xy = i.texcoord5.xy + Shadowmap_Zero_Zero_OneOverMapSize_OneOverMapSize.yz;
    // add r2.xy, t5, c11.wzyx
    temp2.xy = i.texcoord5.xy + Shadowmap_Zero_Zero_OneOverMapSize_OneOverMapSize.wz;
    // mov r3.xy, t3.wzyx
    temp3.xy = i.texcoord3.wz;
    // texld r0, r0, s4
    temp0 = tex2D(ShadowMapSampler, temp0.xy);
    // texld r1, r1, s4
    temp1 = tex2D(ShadowMapSampler, temp1.xy);
    // texld r2, r2, s4
    temp2 = tex2D(ShadowMapSampler, temp2.xy);
    // texld r4, t5, s4
    temp4 = tex2D(ShadowMapSampler, i.texcoord5.xy);
    // texld r5, t3, s3
    temp5 = tex2D(CloudSamplerSampler, i.texcoord3.xy);
    // texld r6, t0, s1
    temp6 = tex2D(BaseSamplerWrappedSampler, i.texcoord.xy);
    // texld r3, r3, s0
    temp3 = tex2D(MacroSamplerSampler, temp3.xy);
    // texld r7, t2, s2
    temp7 = tex2D(ShroudSamplerSampler, i.texcoord2.xy);
    // mov r4.y, r0.x
    temp4.y = temp0.x;
    // mov r4.z, r1.x
    temp4.z = temp1.x;
    // mov r4.w, r2.x
    temp4.w = temp2.x;
    // add r0, r4, -t5.z
    temp0 = temp4 + -i.texcoord5.z;
    // cmp r0, r0, c0.y, c0.z
    temp0 = (temp0 >= 0) ? float4(1, 1, 1, 1) : float4(0, 0, 0, 0);
    // dp4 r3.w, c0.y, r0
    temp3.w = dot(float4(1, 1, 1, 1), temp0);
    // mul r3.w, r3.w, c0.w
    temp3.w = temp3.w * float1(0.25);
    // log r0.x, r5.x
    temp0.x = log2(temp5.x);
    // log r0.y, r5.y
    temp0.y = log2(temp5.y);
    // log r0.z, r5.z
    temp0.z = log2(temp5.z);
    // mul r0.xyz, r0, c0.x
    temp0.xyz = temp0.xyz * float3(2.2, 2.2, 2.2);
    // exp r1.x, r0.x
    temp1.x = exp2(temp0.x);
    // exp r1.y, r0.y
    temp1.y = exp2(temp0.y);
    // exp r1.z, r0.z
    temp1.z = exp2(temp0.z);
    // mul r0.xyz, r1, v1
    temp0.xyz = temp1.xyz * i.color1.xyz;
    // mad r0.xyz, r0, r3.w, v0
    temp0.xyz = temp0.xyz * temp3.www + i.color.xyz;
    // mul r0.xyz, r6, r0
    temp0.xyz = temp6.xyz * temp0.xyz;
    // add r0.xyz, r0, r0
    temp0.xyz = temp0.xyz + temp0.xyz;
    // mad r0.xyz, r0, r3, -c0.y
    temp0.xyz = temp0.xyz * temp3.xyz + float3(-1, -1, -1);
    // mad r0.xyz, v1.w, r0, c0.y
    temp0.xyz = i.color1.www * temp0.xyz + float3(1, 1, 1);
    // mul r0.xyz, r7.x, r0
    temp0.xyz = temp7.xxx * temp0.xyz;
    // mov r0.w, v0.w
    temp0.w = i.color.w;
    // mov oC0, r0
    out_color = temp0;
    // 

    return out_color;
}

PixelShader PS_Cliff_M_Array[2] = {
    compile ps_2_0 PS_Cliff_M_Array_Shader_0(), // 117
    compile ps_2_0 PS_Cliff_M_Array_Shader_1(), // 118
};
// PS_Road_M_Array_Shader_0 Pixel_2_0 Has PRES False
struct PS_Road_M_Array_Shader_0_Input
{
    float4 color : COLOR;
    float4 color1 : COLOR1;
    float2 texcoord : TEXCOORD;
    float2 texcoord2 : TEXCOORD2;
    float4 texcoord3 : TEXCOORD3;
};

float4 PS_Road_M_Array_Shader_0(PS_Road_M_Array_Shader_0_Input i) : COLOR
{
    float4 out_color;
    float4 temp0, temp1, temp2, temp3;
    // def c0, 2.2, -1, 1, 0
    // dcl v0
    // dcl v1
    // dcl t0.xy
    // dcl t2.xy
    // dcl t3
    // dcl_2d s0
    // dcl_2d s1
    // dcl_2d s2
    // dcl_2d s3
    // texld r0, t3, s3
    temp0 = tex2D(CloudSamplerSampler, i.texcoord3.xy);
    // texld r1, t0, s1
    temp1 = tex2D(BaseSamplerWrappedSampler, i.texcoord.xy);
    // log r2.x, r0.x
    temp2.x = log2(temp0.x);
    // log r2.y, r0.y
    temp2.y = log2(temp0.y);
    // log r2.z, r0.z
    temp2.z = log2(temp0.z);
    // mul r0.xyz, r2, c0.x
    temp0.xyz = temp2.xyz * float3(2.2, 2.2, 2.2);
    // exp r2.x, r0.x
    temp2.x = exp2(temp0.x);
    // exp r2.y, r0.y
    temp2.y = exp2(temp0.y);
    // exp r2.z, r0.z
    temp2.z = exp2(temp0.z);
    // mov r0.xyz, v1
    temp0.xyz = i.color1.xyz;
    // mad r0.xyz, r0, r2, v0
    temp0.xyz = temp0.xyz * temp2.xyz + i.color.xyz;
    // mul r0.xyz, r1, r0
    temp0.xyz = temp1.xyz * temp0.xyz;
    // mul r1.w, r1.w, v0.w
    temp1.w = temp1.w * i.color.w;
    // add r0.xyz, r0, r0
    temp0.xyz = temp0.xyz + temp0.xyz;
    // mov r2.xy, t3.wzyx
    temp2.xy = i.texcoord3.wz;
    // texld r2, r2, s0
    temp2 = tex2D(MacroSamplerSampler, temp2.xy);
    // texld r3, t2, s2
    temp3 = tex2D(ShroudSamplerSampler, i.texcoord2.xy);
    // mad r0.xyz, r0, r2, c0.y
    temp0.xyz = temp0.xyz * temp2.xyz + float3(-1, -1, -1);
    // mad r0.xyz, v1.w, r0, c0.z
    temp0.xyz = i.color1.www * temp0.xyz + float3(1, 1, 1);
    // mul r1.xyz, r3.x, r0
    temp1.xyz = temp3.xxx * temp0.xyz;
    // mov oC0, r1
    out_color = temp1;
    // 

    return out_color;
}

// PS_Road_M_Array_Shader_1 Pixel_2_0 Has PRES False
struct PS_Road_M_Array_Shader_1_Input
{
    float4 color : COLOR;
    float4 color1 : COLOR1;
    float2 texcoord : TEXCOORD;
    float2 texcoord2 : TEXCOORD2;
    float4 texcoord3 : TEXCOORD3;
    float4 texcoord5 : TEXCOORD5;
};

float4 PS_Road_M_Array_Shader_1(PS_Road_M_Array_Shader_1_Input i) : COLOR
{
    float4 out_color;
    float4 temp0, temp1, temp2, temp3, temp4, temp5, temp6, temp7, temp8;
    // def c0, 2.2, -0.0015, 1, 0
    // def c1, 0.25, 0, 0, 0
    // dcl v0
    // dcl v1
    // dcl t0.xy
    // dcl t2.xy
    // dcl t3
    // dcl t5
    // dcl_2d s0
    // dcl_2d s1
    // dcl_2d s2
    // dcl_2d s3
    // dcl_2d s4
    // rcp r0.w, t5.w
    temp0.w = 1.0f / i.texcoord5.w;
    // mul r0.xy, r0.w, t5
    temp0.xy = temp0.ww * i.texcoord5.xy;
    // mad r1.xy, t5, r0.w, c11.zxyw
    temp1.xy = i.texcoord5.xy * temp0.ww + Shadowmap_Zero_Zero_OneOverMapSize_OneOverMapSize.zx;
    // mad r2.xy, t5, r0.w, c11.yzxw
    temp2.xy = i.texcoord5.xy * temp0.ww + Shadowmap_Zero_Zero_OneOverMapSize_OneOverMapSize.yz;
    // mad r3.xy, t5, r0.w, c11.wzyx
    temp3.xy = i.texcoord5.xy * temp0.ww + Shadowmap_Zero_Zero_OneOverMapSize_OneOverMapSize.wz;
    // mov r4.xy, t3.wzyx
    temp4.xy = i.texcoord3.wz;
    // texld r5, r0, s4
    temp5 = tex2D(ShadowMapSampler, temp0.xy);
    // texld r1, r1, s4
    temp1 = tex2D(ShadowMapSampler, temp1.xy);
    // texld r2, r2, s4
    temp2 = tex2D(ShadowMapSampler, temp2.xy);
    // texld r3, r3, s4
    temp3 = tex2D(ShadowMapSampler, temp3.xy);
    // texld r6, t3, s3
    temp6 = tex2D(CloudSamplerSampler, i.texcoord3.xy);
    // texld r7, t0, s1
    temp7 = tex2D(BaseSamplerWrappedSampler, i.texcoord.xy);
    // texld r4, r4, s0
    temp4 = tex2D(MacroSamplerSampler, temp4.xy);
    // texld r8, t2, s2
    temp8 = tex2D(ShroudSamplerSampler, i.texcoord2.xy);
    // mov r5.y, r1.x
    temp5.y = temp1.x;
    // mov r5.z, r2.x
    temp5.z = temp2.x;
    // mad r4.w, t5.z, r0.w, c0.y
    temp4.w = i.texcoord5.z * temp0.w + float1(-0.0015);
    // mov r5.w, r3.x
    temp5.w = temp3.x;
    // add r0, r5, -r4.w
    temp0 = temp5 + -temp4.w;
    // cmp r0, r0, c0.z, c0.w
    temp0 = (temp0 >= 0) ? float4(1, 1, 1, 1) : float4(0, 0, 0, 0);
    // dp4 r4.w, c0.z, r0
    temp4.w = dot(float4(1, 1, 1, 1), temp0);
    // mul r4.w, r4.w, c1.x
    temp4.w = temp4.w * float1(0.25);
    // log r0.x, r6.x
    temp0.x = log2(temp6.x);
    // log r0.y, r6.y
    temp0.y = log2(temp6.y);
    // log r0.z, r6.z
    temp0.z = log2(temp6.z);
    // mul r0.xyz, r0, c0.x
    temp0.xyz = temp0.xyz * float3(2.2, 2.2, 2.2);
    // exp r1.x, r0.x
    temp1.x = exp2(temp0.x);
    // exp r1.y, r0.y
    temp1.y = exp2(temp0.y);
    // exp r1.z, r0.z
    temp1.z = exp2(temp0.z);
    // mul r0.xyz, r1, v1
    temp0.xyz = temp1.xyz * i.color1.xyz;
    // mad r0.xyz, r0, r4.w, v0
    temp0.xyz = temp0.xyz * temp4.www + i.color.xyz;
    // mul r0.xyz, r7, r0
    temp0.xyz = temp7.xyz * temp0.xyz;
    // mul r1.w, r7.w, v0.w
    temp1.w = temp7.w * i.color.w;
    // add r0.xyz, r0, r0
    temp0.xyz = temp0.xyz + temp0.xyz;
    // mad r0.xyz, r0, r4, -c0.z
    temp0.xyz = temp0.xyz * temp4.xyz + float3(-1, -1, -1);
    // mad r0.xyz, v1.w, r0, c0.z
    temp0.xyz = i.color1.www * temp0.xyz + float3(1, 1, 1);
    // mul r1.xyz, r8.x, r0
    temp1.xyz = temp8.xxx * temp0.xyz;
    // mov oC0, r1
    out_color = temp1;
    // 

    return out_color;
}

PixelShader PS_Road_M_Array[2] = {
    compile ps_2_0 PS_Road_M_Array_Shader_0(), // 121
    compile ps_2_0 PS_Road_M_Array_Shader_1(), // 122
};
// PS_Scorch_M_Array_Shader_0 Pixel_2_0 Has PRES False
struct PS_Scorch_M_Array_Shader_0_Input
{
    float4 color : COLOR;
    float4 color1 : COLOR1;
    float2 texcoord : TEXCOORD;
    float2 texcoord2 : TEXCOORD2;
    float4 texcoord3 : TEXCOORD3;
};

float4 PS_Scorch_M_Array_Shader_0(PS_Scorch_M_Array_Shader_0_Input i) : COLOR
{
    float4 out_color;
    float4 temp0, temp1, temp2, temp3;
    // def c0, 2.2, -1, 1, 0
    // dcl v0
    // dcl v1
    // dcl t0.xy
    // dcl t2.xy
    // dcl t3
    // dcl_2d s0
    // dcl_2d s1
    // dcl_2d s2
    // dcl_2d s3
    // texld r0, t3, s3
    temp0 = tex2D(CloudSamplerSampler, i.texcoord3.xy);
    // texld r1, t0, s1
    temp1 = tex2D(BaseSamplerClampedSampler, i.texcoord.xy);
    // log r2.x, r0.x
    temp2.x = log2(temp0.x);
    // log r2.y, r0.y
    temp2.y = log2(temp0.y);
    // log r2.z, r0.z
    temp2.z = log2(temp0.z);
    // mul r0.xyz, r2, c0.x
    temp0.xyz = temp2.xyz * float3(2.2, 2.2, 2.2);
    // exp r2.x, r0.x
    temp2.x = exp2(temp0.x);
    // exp r2.y, r0.y
    temp2.y = exp2(temp0.y);
    // exp r2.z, r0.z
    temp2.z = exp2(temp0.z);
    // mov r0.xyz, v1
    temp0.xyz = i.color1.xyz;
    // mad r0.xyz, r0, r2, v0
    temp0.xyz = temp0.xyz * temp2.xyz + i.color.xyz;
    // mul r0.xyz, r1, r0
    temp0.xyz = temp1.xyz * temp0.xyz;
    // mul r1.w, r1.w, v0.w
    temp1.w = temp1.w * i.color.w;
    // add r0.xyz, r0, r0
    temp0.xyz = temp0.xyz + temp0.xyz;
    // mov r2.xy, t3.wzyx
    temp2.xy = i.texcoord3.wz;
    // texld r2, r2, s0
    temp2 = tex2D(MacroSamplerSampler, temp2.xy);
    // texld r3, t2, s2
    temp3 = tex2D(ShroudSamplerSampler, i.texcoord2.xy);
    // mad r0.xyz, r0, r2, c0.y
    temp0.xyz = temp0.xyz * temp2.xyz + float3(-1, -1, -1);
    // mad r0.xyz, v1.w, r0, c0.z
    temp0.xyz = i.color1.www * temp0.xyz + float3(1, 1, 1);
    // mul r1.xyz, r3.x, r0
    temp1.xyz = temp3.xxx * temp0.xyz;
    // mov oC0, r1
    out_color = temp1;
    // 

    return out_color;
}

// PS_Scorch_M_Array_Shader_1 Pixel_2_0 Has PRES False
struct PS_Scorch_M_Array_Shader_1_Input
{
    float4 color : COLOR;
    float4 color1 : COLOR1;
    float2 texcoord : TEXCOORD;
    float2 texcoord2 : TEXCOORD2;
    float4 texcoord3 : TEXCOORD3;
    float3 texcoord5 : TEXCOORD5;
};

float4 PS_Scorch_M_Array_Shader_1(PS_Scorch_M_Array_Shader_1_Input i) : COLOR
{
    float4 out_color;
    float4 temp0, temp1, temp2, temp3, temp4, temp5, temp6, temp7;
    // def c0, 2.2, 1, 0, 0.25
    // dcl v0
    // dcl v1
    // dcl t0.xy
    // dcl t2.xy
    // dcl t3
    // dcl t5.xyz
    // dcl_2d s0
    // dcl_2d s1
    // dcl_2d s2
    // dcl_2d s3
    // dcl_2d s4
    // add r0.xy, t5, c11.zxyw
    temp0.xy = i.texcoord5.xy + Shadowmap_Zero_Zero_OneOverMapSize_OneOverMapSize.zx;
    // add r1.xy, t5, c11.yzxw
    temp1.xy = i.texcoord5.xy + Shadowmap_Zero_Zero_OneOverMapSize_OneOverMapSize.yz;
    // add r2.xy, t5, c11.wzyx
    temp2.xy = i.texcoord5.xy + Shadowmap_Zero_Zero_OneOverMapSize_OneOverMapSize.wz;
    // mov r3.xy, t3.wzyx
    temp3.xy = i.texcoord3.wz;
    // texld r0, r0, s4
    temp0 = tex2D(ShadowMapSampler, temp0.xy);
    // texld r1, r1, s4
    temp1 = tex2D(ShadowMapSampler, temp1.xy);
    // texld r2, r2, s4
    temp2 = tex2D(ShadowMapSampler, temp2.xy);
    // texld r4, t5, s4
    temp4 = tex2D(ShadowMapSampler, i.texcoord5.xy);
    // texld r5, t3, s3
    temp5 = tex2D(CloudSamplerSampler, i.texcoord3.xy);
    // texld r6, t0, s1
    temp6 = tex2D(BaseSamplerClampedSampler, i.texcoord.xy);
    // texld r3, r3, s0
    temp3 = tex2D(MacroSamplerSampler, temp3.xy);
    // texld r7, t2, s2
    temp7 = tex2D(ShroudSamplerSampler, i.texcoord2.xy);
    // mov r4.y, r0.x
    temp4.y = temp0.x;
    // mov r4.z, r1.x
    temp4.z = temp1.x;
    // mov r4.w, r2.x
    temp4.w = temp2.x;
    // add r0, r4, -t5.z
    temp0 = temp4 + -i.texcoord5.z;
    // cmp r0, r0, c0.y, c0.z
    temp0 = (temp0 >= 0) ? float4(1, 1, 1, 1) : float4(0, 0, 0, 0);
    // dp4 r3.w, c0.y, r0
    temp3.w = dot(float4(1, 1, 1, 1), temp0);
    // mul r3.w, r3.w, c0.w
    temp3.w = temp3.w * float1(0.25);
    // log r0.x, r5.x
    temp0.x = log2(temp5.x);
    // log r0.y, r5.y
    temp0.y = log2(temp5.y);
    // log r0.z, r5.z
    temp0.z = log2(temp5.z);
    // mul r0.xyz, r0, c0.x
    temp0.xyz = temp0.xyz * float3(2.2, 2.2, 2.2);
    // exp r1.x, r0.x
    temp1.x = exp2(temp0.x);
    // exp r1.y, r0.y
    temp1.y = exp2(temp0.y);
    // exp r1.z, r0.z
    temp1.z = exp2(temp0.z);
    // mul r0.xyz, r1, v1
    temp0.xyz = temp1.xyz * i.color1.xyz;
    // mad r0.xyz, r0, r3.w, v0
    temp0.xyz = temp0.xyz * temp3.www + i.color.xyz;
    // mul r0.xyz, r6, r0
    temp0.xyz = temp6.xyz * temp0.xyz;
    // mul r1.w, r6.w, v0.w
    temp1.w = temp6.w * i.color.w;
    // add r0.xyz, r0, r0
    temp0.xyz = temp0.xyz + temp0.xyz;
    // mad r0.xyz, r0, r3, -c0.y
    temp0.xyz = temp0.xyz * temp3.xyz + float3(-1, -1, -1);
    // mad r0.xyz, v1.w, r0, c0.y
    temp0.xyz = i.color1.www * temp0.xyz + float3(1, 1, 1);
    // mul r1.xyz, r7.x, r0
    temp1.xyz = temp7.xxx * temp0.xyz;
    // mov oC0, r1
    out_color = temp1;
    // 

    return out_color;
}

PixelShader PS_Scorch_M_Array[2] = {
    compile ps_2_0 PS_Scorch_M_Array_Shader_0(), // 125
    compile ps_2_0 PS_Scorch_M_Array_Shader_1(), // 126
};
// PixelShader25 Pixel_2_0 Has PRES False
float4 PixelShader25(float texcoord : TEXCOORD) : COLOR
{
    float4 out_color;
    float4 temp0;
    // dcl t0.x
    // mov r0, t0.x
    temp0 = texcoord.x;
    // mov oC0, r0
    out_color = temp0;
    // 

    return out_color;
}

// VertexShader26 Vertex_2_0 Has PRES False
struct VertexShader26_Output
{
    float4 position : POSITION;
    float texcoord : TEXCOORD;
};

VertexShader26_Output VertexShader26(float4 position : POSITION)
{
    VertexShader26_Output o;
    float4 temp0;
    float2 temp1;
    // def c0, 1, 0, 0, 0
    // dcl_position v0
    // mad r0, v0.xyzx, c0.xxxy, c0.yyyx
    temp0 = position.xyzx * float4(1, 1, 1, 0) + float4(0, 0, 0, 1);
    // dp4 oPos.x, r0, c119
    o.position.x = dot(temp0, (ViewProjection._m00_m10_m20_m30));
    // dp4 oPos.y, r0, c120
    o.position.y = dot(temp0, (ViewProjection._m01_m11_m21_m31));
    // dp4 r1.y, r0, c122
    temp1.y = dot(temp0, (ViewProjection._m03_m13_m23_m33));
    // dp4 r1.x, r0, c121
    temp1.x = dot(temp0, (ViewProjection._m02_m12_m22_m32));
    // rcp r0.x, r1.y
    temp0.x = 1.0f / temp1.y;
    // mov oPos.zw, r1.xyxy
    o.position.zw = temp1.xy;
    // mul oT0.x, r1.x, r0.x
    o.texcoord = temp1.x * temp0.x;
    // 

    return o;
}

// PixelShader27 Pixel_2_0 Has PRES False
float4 PixelShader27(float texcoord : TEXCOORD) : COLOR
{
    float4 out_color;
    float4 temp0;
    // dcl t0.x
    // mov r0, t0.x
    temp0 = texcoord.x;
    // mov oC0, r0
    out_color = temp0;
    // 

    return out_color;
}

// VertexShader28 Vertex_2_0 Has PRES False
struct VertexShader28_Output
{
    float4 position : POSITION;
    float texcoord : TEXCOORD;
};

VertexShader28_Output VertexShader28(float4 position : POSITION)
{
    VertexShader28_Output o;
    float4 temp0;
    float2 temp1;
    // def c0, 1, 0, 0, 0
    // dcl_position v0
    // mad r0, v0.xyzx, c0.xxxy, c0.yyyx
    temp0 = position.xyzx * float4(1, 1, 1, 0) + float4(0, 0, 0, 1);
    // dp4 oPos.x, r0, c119
    o.position.x = dot(temp0, (ViewProjection._m00_m10_m20_m30));
    // dp4 oPos.y, r0, c120
    o.position.y = dot(temp0, (ViewProjection._m01_m11_m21_m31));
    // dp4 r1.y, r0, c122
    temp1.y = dot(temp0, (ViewProjection._m03_m13_m23_m33));
    // dp4 r1.x, r0, c121
    temp1.x = dot(temp0, (ViewProjection._m02_m12_m22_m32));
    // rcp r0.x, r1.y
    temp0.x = 1.0f / temp1.y;
    // mov oPos.zw, r1.xyxy
    o.position.zw = temp1.xy;
    // mul oT0.x, r1.x, r0.x
    o.texcoord = temp1.x * temp0.x;
    // 

    return o;
}

// PixelShader29 Pixel_2_0 Has PRES False
struct PixelShader29_Input
{
    float2 texcoord : TEXCOORD;
    float2 texcoord2 : TEXCOORD2;
    float4 texcoord3 : TEXCOORD3;
};

float4 PixelShader29(PixelShader29_Input i) : COLOR
{
    float4 out_color;
    float4 temp0, temp1;
    // dcl t0.xy
    // dcl t2.xy
    // dcl t3
    // dcl_2d s0
    // dcl_2d s1
    // texld r0, t2, s1
    temp0 = tex2D(ShroudSamplerSampler, i.texcoord2.xy);
    // texld r1, t0, s0
    temp1 = tex2D(BaseSamplerClamped_LSampler, i.texcoord.xy);
    // mul r1, r1, t3
    temp1 = temp1 * i.texcoord3;
    // mul r1.xyz, r0.x, r1
    temp1.xyz = temp0.xxx * temp1.xyz;
    // mov oC0, r1
    out_color = temp1;
    // 

    return out_color;
}

// VertexShader30 Vertex_2_0 Has PRES False
struct VertexShader30_Input
{
    float4 position : POSITION;
    float4 normal : NORMAL;
    float4 color : COLOR;
    float4 texcoord : TEXCOORD;
};

struct VertexShader30_Output
{
    float4 position : POSITION;
    float4 texcoord3 : TEXCOORD3;
    float2 texcoord2 : TEXCOORD2;
    float4 texcoord : TEXCOORD;
    float4 texcoord1 : TEXCOORD1;
};

VertexShader30_Output VertexShader30(VertexShader30_Input i)
{
    VertexShader30_Output o;
    float4 temp0;
    float3 temp1;
    // def c0, 2.55, -1, 1, 0
    // def c1, 3.333333E-05, 0, 0, 0
    // dcl_position v0
    // dcl_normal v1
    // dcl_color v2
    // dcl_texcoord v3
    // mad r0, v0.xyzx, c0.zzzw, c0.wwwz
    temp0 = i.position.xyzx * float4(1, 1, 1, 0) + float4(0, 0, 0, 1);
    // dp4 oPos.x, r0, c119
    o.position.x = dot(temp0, (ViewProjection._m00_m10_m20_m30));
    // dp4 oPos.y, r0, c120
    o.position.y = dot(temp0, (ViewProjection._m01_m11_m21_m31));
    // dp4 oPos.z, r0, c121
    o.position.z = dot(temp0, (ViewProjection._m02_m12_m22_m32));
    // dp4 oPos.w, r0, c122
    o.position.w = dot(temp0, (ViewProjection._m03_m13_m23_m33));
    // mad r0.xyz, v1, c0.x, c0.y
    temp0.xyz = i.normal.xyz * float3(2.55, 2.55, 2.55) + float3(-1, -1, -1);
    // dp3 r0.w, r0, c8
    temp0.w = dot(temp0.xyz, DirectionalLight[1].Direction.xyz);
    // max r0.w, r0.w, c0.w
    temp0.w = max(temp0.w, float1(0));
    // mul r1.xyz, r0.w, c7
    temp1.xyz = temp0.www * DirectionalLight[1].Color.xyz;
    // dp3 r0.w, r0, c6
    temp0.w = dot(temp0.xyz, DirectionalLight[0].Direction.xyz);
    // dp3 r0.x, r0, c10
    temp0.x = dot(temp0.xyz, DirectionalLight[2].Direction.xyz);
    // max r0.y, r0.w, c0.w
    temp0.y = max(temp0.w, float1(0));
    // mad r0.yzw, c5.xxyz, r0.y, r1.xxyz
    temp0.yzw = DirectionalLight[0].Color.xyz * temp0.yyy + temp1.xyz;
    // max r0.x, r0.x, c0.w
    temp0.x = max(temp0.x, float1(0));
    // mad r0.xyz, c9, r0.x, r0.yzww
    temp0.xyz = DirectionalLight[2].Color.xyz * temp0.xxx + temp0.yzw;
    // add r0.xyz, r0, c4
    temp0.xyz = temp0.xyz + AmbientLightColor.xyz;
    // mul oT3.xyz, r0, v2
    o.texcoord3.xyz = temp0.xyz * i.color.xyz;
    // add r0.xy, v0, c11.zwzw
    temp0.xy = i.position.xy + Shroud.ScaleUV_OffsetUV.zw;
    // mul oT2.xy, r0, c11
    o.texcoord2 = temp0 * Shroud.ScaleUV_OffsetUV;
    // mul oT0.xy, v3, c1.x
    o.texcoord.xy = i.texcoord.xy * float2(3.3333334E-05, 3.3333334E-05);
    // mov oT0.zw, c0.w
    o.texcoord.zw = float2(0, 0);
    // mov oT1, c0.w
    o.texcoord1 = float4(0, 0, 0, 0);
    // mov oT3.w, v2.w
    o.texcoord3.w = i.color.w;
    // 

    return o;
}

// PixelShader31 Pixel_2_0 Has PRES False
struct PixelShader31_Input
{
    float2 texcoord : TEXCOORD;
    float2 texcoord2 : TEXCOORD2;
    float4 texcoord3 : TEXCOORD3;
};

float4 PixelShader31(PixelShader31_Input i) : COLOR
{
    float4 out_color;
    float4 temp0, temp1;
    // dcl t0.xy
    // dcl t2.xy
    // dcl t3
    // dcl_2d s0
    // dcl_2d s1
    // texld r0, t2, s1
    temp0 = tex2D(ShroudSamplerSampler, i.texcoord2.xy);
    // texld r1, t0, s0
    temp1 = tex2D(BaseSamplerWrapped_LSampler, i.texcoord.xy);
    // mul r1, r1, t3
    temp1 = temp1 * i.texcoord3;
    // mul r1.xyz, r0.x, r1
    temp1.xyz = temp0.xxx * temp1.xyz;
    // mov oC0, r1
    out_color = temp1;
    // 

    return out_color;
}

// VertexShader32 Vertex_2_0 Has PRES False
struct VertexShader32_Input
{
    float4 position : POSITION;
    float4 normal : NORMAL;
    float4 color : COLOR;
    float4 texcoord : TEXCOORD;
};

struct VertexShader32_Output
{
    float4 position : POSITION;
    float4 texcoord3 : TEXCOORD3;
    float2 texcoord2 : TEXCOORD2;
    float4 texcoord : TEXCOORD;
    float4 texcoord1 : TEXCOORD1;
};

VertexShader32_Output VertexShader32(VertexShader32_Input i)
{
    VertexShader32_Output o;
    float4 temp0;
    // def c0, 1, 0, 0, 0
    // dcl_position v0
    // dcl_normal v1
    // dcl_color v2
    // dcl_texcoord v3
    // mad r0, v0.xyzx, c0.xxxy, c0.yyyx
    temp0 = i.position.xyzx * float4(1, 1, 1, 0) + float4(0, 0, 0, 1);
    // dp4 oPos.x, r0, c119
    o.position.x = dot(temp0, (ViewProjection._m00_m10_m20_m30));
    // dp4 oPos.y, r0, c120
    o.position.y = dot(temp0, (ViewProjection._m01_m11_m21_m31));
    // dp4 oPos.z, r0, c121
    o.position.z = dot(temp0, (ViewProjection._m02_m12_m22_m32));
    // dp4 oPos.w, r0, c122
    o.position.w = dot(temp0, (ViewProjection._m03_m13_m23_m33));
    // dp3 r0.x, v1, c8
    temp0.x = dot(i.normal.xyz, DirectionalLight[1].Direction.xyz);
    // max r0.x, r0.x, c0.y
    temp0.x = max(temp0.x, float1(0));
    // mul r0.xyz, r0.x, c7
    temp0.xyz = temp0.xxx * DirectionalLight[1].Color.xyz;
    // dp3 r0.w, v1, c6
    temp0.w = dot(i.normal.xyz, DirectionalLight[0].Direction.xyz);
    // max r0.w, r0.w, c0.y
    temp0.w = max(temp0.w, float1(0));
    // mad r0.xyz, c5, r0.w, r0
    temp0.xyz = DirectionalLight[0].Color.xyz * temp0.www + temp0.xyz;
    // dp3 r0.w, v1, c10
    temp0.w = dot(i.normal.xyz, DirectionalLight[2].Direction.xyz);
    // max r0.w, r0.w, c0.y
    temp0.w = max(temp0.w, float1(0));
    // mad r0.xyz, c9, r0.w, r0
    temp0.xyz = DirectionalLight[2].Color.xyz * temp0.www + temp0.xyz;
    // add r0.xyz, r0, c4
    temp0.xyz = temp0.xyz + AmbientLightColor.xyz;
    // mul oT3.xyz, r0, v2
    o.texcoord3.xyz = temp0.xyz * i.color.xyz;
    // add r0.xy, v0, c11.zwzw
    temp0.xy = i.position.xy + Shroud.ScaleUV_OffsetUV.zw;
    // mul oT2.xy, r0, c11
    o.texcoord2 = temp0 * Shroud.ScaleUV_OffsetUV;
    // mov oT0.xy, v3
    o.texcoord.xy = i.texcoord.xy;
    // mov oT0.zw, c0.y
    o.texcoord.zw = float2(0, 0);
    // mov oT1, c0.y
    o.texcoord1 = float4(0, 0, 0, 0);
    // mov oT3.w, v2.w
    o.texcoord3.w = i.color.w;
    // 

    return o;
}

// PixelShader33 Pixel_2_0 Has PRES False
struct PixelShader33_Input
{
    float2 texcoord : TEXCOORD;
    float2 texcoord2 : TEXCOORD2;
    float4 texcoord3 : TEXCOORD3;
};

float4 PixelShader33(PixelShader33_Input i) : COLOR
{
    float4 out_color;
    float4 temp0, temp1;
    // dcl t0.xy
    // dcl t2.xy
    // dcl t3
    // dcl_2d s0
    // dcl_2d s1
    // texld r0, t0, s0
    temp0 = tex2D(BaseSamplerWrapped_LSampler, i.texcoord.xy);
    // texld r1, t2, s1
    temp1 = tex2D(ShroudSamplerSampler, i.texcoord2.xy);
    // mul r0.xyz, r0, t3
    temp0.xyz = temp0.xyz * i.texcoord3.xyz;
    // mul r0.xyz, r1.x, r0
    temp0.xyz = temp1.xxx * temp0.xyz;
    // mov r0.w, t3.w
    temp0.w = i.texcoord3.w;
    // mov oC0, r0
    out_color = temp0;
    // 

    return out_color;
}

// VertexShader34 Vertex_2_0 Has PRES False
struct VertexShader34_Input
{
    float4 position : POSITION;
    float4 normal : NORMAL;
    float4 color : COLOR;
    float4 texcoord : TEXCOORD;
};

struct VertexShader34_Output
{
    float4 position : POSITION;
    float4 texcoord3 : TEXCOORD3;
    float2 texcoord2 : TEXCOORD2;
    float4 texcoord : TEXCOORD;
    float4 texcoord1 : TEXCOORD1;
};

VertexShader34_Output VertexShader34(VertexShader34_Input i)
{
    VertexShader34_Output o;
    float4 temp0;
    // def c0, 1, 0, 0, 0
    // dcl_position v0
    // dcl_normal v1
    // dcl_color v2
    // dcl_texcoord v3
    // mad r0, v0.xyzx, c0.xxxy, c0.yyyx
    temp0 = i.position.xyzx * float4(1, 1, 1, 0) + float4(0, 0, 0, 1);
    // dp4 oPos.x, r0, c119
    o.position.x = dot(temp0, (ViewProjection._m00_m10_m20_m30));
    // dp4 oPos.y, r0, c120
    o.position.y = dot(temp0, (ViewProjection._m01_m11_m21_m31));
    // dp4 oPos.z, r0, c121
    o.position.z = dot(temp0, (ViewProjection._m02_m12_m22_m32));
    // dp4 oPos.w, r0, c122
    o.position.w = dot(temp0, (ViewProjection._m03_m13_m23_m33));
    // dp3 r0.x, v1, c8
    temp0.x = dot(i.normal.xyz, DirectionalLight[1].Direction.xyz);
    // max r0.x, r0.x, c0.y
    temp0.x = max(temp0.x, float1(0));
    // mul r0.xyz, r0.x, c7
    temp0.xyz = temp0.xxx * DirectionalLight[1].Color.xyz;
    // dp3 r0.w, v1, c6
    temp0.w = dot(i.normal.xyz, DirectionalLight[0].Direction.xyz);
    // max r0.w, r0.w, c0.y
    temp0.w = max(temp0.w, float1(0));
    // mad r0.xyz, c5, r0.w, r0
    temp0.xyz = DirectionalLight[0].Color.xyz * temp0.www + temp0.xyz;
    // dp3 r0.w, v1, c10
    temp0.w = dot(i.normal.xyz, DirectionalLight[2].Direction.xyz);
    // max r0.w, r0.w, c0.y
    temp0.w = max(temp0.w, float1(0));
    // mad r0.xyz, c9, r0.w, r0
    temp0.xyz = DirectionalLight[2].Color.xyz * temp0.www + temp0.xyz;
    // add r0.xyz, r0, c4
    temp0.xyz = temp0.xyz + AmbientLightColor.xyz;
    // mul oT3.xyz, r0, v2
    o.texcoord3.xyz = temp0.xyz * i.color.xyz;
    // add r0.xy, v0, c11.zwzw
    temp0.xy = i.position.xy + Shroud.ScaleUV_OffsetUV.zw;
    // mul oT2.xy, r0, c11
    o.texcoord2 = temp0 * Shroud.ScaleUV_OffsetUV;
    // mov oT0.xy, v3
    o.texcoord.xy = i.texcoord.xy;
    // mov oT0.zw, c0.y
    o.texcoord.zw = float2(0, 0);
    // mov oT1, c0.y
    o.texcoord1 = float4(0, 0, 0, 0);
    // mov oT3.w, v2.w
    o.texcoord3.w = i.color.w;
    // 

    return o;
}

// PixelShader35 Pixel_2_0 Has PRES False
struct PixelShader35_Input
{
    float4 texcoord : TEXCOORD;
    float4 texcoord1 : TEXCOORD1;
    float2 texcoord2 : TEXCOORD2;
    float4 texcoord3 : TEXCOORD3;
};

float4 PixelShader35(PixelShader35_Input i) : COLOR
{
    float4 out_color;
    float4 temp0, temp1, temp2, temp3;
    float3 temp4;
    // dcl t0
    // dcl t1
    // dcl t2.xy
    // dcl t3
    // dcl_2d s0
    // dcl_2d s1
    // mov r0.xy, t1.wzyx
    temp0.xy = i.texcoord1.wz;
    // texld r0, r0, s0
    temp0 = tex2D(BaseSamplerClamped_LSampler, temp0.xy);
    // texld r1, t0, s0
    temp1 = tex2D(BaseSamplerClamped_LSampler, i.texcoord.xy);
    // texld r2, t1, s0
    temp2 = tex2D(BaseSamplerClamped_LSampler, i.texcoord1.xy);
    // texld r3, t2, s1
    temp3 = tex2D(ShroudSamplerSampler, i.texcoord2.xy);
    // mov_sat r3.zw, t0
    temp3.zw = saturate(i.texcoord.zw);
    // lrp r4.xyz, r3.w, r2, r1
    temp4.xyz = lerp(temp1.xyz, temp2.xyz, temp3.www);
    // lrp r1.xyz, r3.z, r0, r4
    temp1.xyz = lerp(temp4.xyz, temp0.xyz, temp3.zzz);
    // mul r0.xyz, r1, t3
    temp0.xyz = temp1.xyz * i.texcoord3.xyz;
    // mul r0.xyz, r3.x, r0
    temp0.xyz = temp3.xxx * temp0.xyz;
    // mov r0.w, t3.w
    temp0.w = i.texcoord3.w;
    // mov oC0, r0
    out_color = temp0;
    // 

    return out_color;
}

// VertexShader36 Vertex_2_0 Has PRES False
struct VertexShader36_Input
{
    float4 position : POSITION;
    float4 normal : NORMAL;
    float4 texcoord : TEXCOORD;
    float4 texcoord1 : TEXCOORD1;
    float4 texcoord2 : TEXCOORD2;
};

struct VertexShader36_Output
{
    float4 texcoord : TEXCOORD;
    float4 texcoord1 : TEXCOORD1;
    float4 position : POSITION;
    float4 texcoord3 : TEXCOORD3;
    float2 texcoord2 : TEXCOORD2;
};

VertexShader36_Output VertexShader36(VertexShader36_Input i)
{
    VertexShader36_Output o;
    float4 temp0;
    float3 temp1;
    // def c0, 0.01, -1, 3.333333E-05, -0
    // dcl_position v0
    // dcl_normal v1
    // dcl_texcoord v2
    // dcl_texcoord1 v3
    // dcl_texcoord2 v4
    // mul oT0.xy, v2, c0.z
    o.texcoord.xy = i.texcoord.xy * float2(3.3333334E-05, 3.3333334E-05);
    // mul oT1.xy, v3, c0.z
    o.texcoord1.xy = i.texcoord1.xy * float2(3.3333334E-05, 3.3333334E-05);
    // mul oT1.zw, v4.xyyx, c0.z
    o.texcoord1.zw = i.texcoord2.yx * float2(3.3333334E-05, 3.3333334E-05);
    // add oT0.w, v0.w, c0.y
    o.texcoord.w = i.position.w + float1(-1);
    // add oT0.z, v1.w, c0.y
    o.texcoord.z = i.normal.w + float1(-1);
    // mad r0, v0.xyzx, -c0.yyyw, -c0.wwwy
    temp0 = i.position.xyzx * float4(1, 1, 1, 0) + float4(0, 0, 0, 1);
    // dp4 oPos.x, r0, c119
    o.position.x = dot(temp0, (ViewProjection._m00_m10_m20_m30));
    // dp4 oPos.y, r0, c120
    o.position.y = dot(temp0, (ViewProjection._m01_m11_m21_m31));
    // dp4 oPos.z, r0, c121
    o.position.z = dot(temp0, (ViewProjection._m02_m12_m22_m32));
    // dp4 oPos.w, r0, c122
    o.position.w = dot(temp0, (ViewProjection._m03_m13_m23_m33));
    // mad r0.xyz, v1, c0.x, c0.y
    temp0.xyz = i.normal.xyz * float3(0.01, 0.01, 0.01) + float3(-1, -1, -1);
    // dp3 r0.w, r0, c8
    temp0.w = dot(temp0.xyz, DirectionalLight[1].Direction.xyz);
    // max r0.w, r0.w, -c0.w
    temp0.w = max(temp0.w, float1(0));
    // mul r1.xyz, r0.w, c7
    temp1.xyz = temp0.www * DirectionalLight[1].Color.xyz;
    // dp3 r0.w, r0, c6
    temp0.w = dot(temp0.xyz, DirectionalLight[0].Direction.xyz);
    // dp3 r0.x, r0, c10
    temp0.x = dot(temp0.xyz, DirectionalLight[2].Direction.xyz);
    // max r0.y, r0.w, -c0.w
    temp0.y = max(temp0.w, float1(0));
    // mad r0.yzw, c5.xxyz, r0.y, r1.xxyz
    temp0.yzw = DirectionalLight[0].Color.xyz * temp0.yyy + temp1.xyz;
    // max r0.x, r0.x, -c0.w
    temp0.x = max(temp0.x, float1(0));
    // mad r0.xyz, c9, r0.x, r0.yzww
    temp0.xyz = DirectionalLight[2].Color.xyz * temp0.xxx + temp0.yzw;
    // add oT3.xyz, r0, c4
    o.texcoord3.xyz = temp0.xyz + AmbientLightColor.xyz;
    // add r0.xy, v0, c11.zwzw
    temp0.xy = i.position.xy + Shroud.ScaleUV_OffsetUV.zw;
    // mul oT2.xy, r0, c11
    o.texcoord2 = temp0 * Shroud.ScaleUV_OffsetUV;
    // mov oT3.w, -c0.y
    o.texcoord3.w = float1(1);
    // 

    return o;
}

// Expression37 Expression_2_0 Has PRES False
float Expression37()
{
    float1 expr0;
    // mov c0.x, c0.x
    expr0.x = HasShadow.x;
    return expr0;
}

// VertexShader38 Vertex_2_0 Has PRES True
struct VertexShader38_Input
{
    float4 position : POSITION;
    float4 normal : NORMAL;
    float4 color : COLOR;
    float4 texcoord : TEXCOORD;
};

struct VertexShader38_Output
{
    float4 position : POSITION;
    float4 color1 : COLOR1;
    float4 color : COLOR;
    float2 texcoord2 : TEXCOORD2;
    float4 texcoord3 : TEXCOORD3;
    float4 texcoord : TEXCOORD;
    float4 texcoord1 : TEXCOORD1;
    float4 texcoord5 : TEXCOORD5;
};

VertexShader38_Output VertexShader38(VertexShader38_Input i)
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
        float4 temp0;
        // Expression_2_1
        // mul r0.x, c0.x, (66)
        temp0.x = MapCellSize.x * (66);
        // rcp c12.x, r0.x
        expr12.x = 1.0f / (temp0.x);
    }

    VertexShader38_Output o;
    float4 temp0, temp1;
    float3 temp2;
    // def c0, 2.55, -1, 1, 0
    // def c1, 0.5, 3.333333E-05, 0, -0.0015
    // dcl_position v0
    // dcl_normal v1
    // dcl_color v2
    // dcl_texcoord v3
    // mad r0, v0.xyzx, c0.zzzw, c0.wwwz
    temp0 = i.position.xyzx * float4(1, 1, 1, 0) + float4(0, 0, 0, 1);
    // dp4 oPos.x, r0, c119
    o.position.x = dot(temp0, (ViewProjection._m00_m10_m20_m30));
    // dp4 oPos.y, r0, c120
    o.position.y = dot(temp0, (ViewProjection._m01_m11_m21_m31));
    // dp4 oPos.z, r0, c121
    o.position.z = dot(temp0, (ViewProjection._m02_m12_m22_m32));
    // dp4 oPos.w, r0, c122
    o.position.w = dot(temp0, (ViewProjection._m03_m13_m23_m33));
    // mad r1.xyz, v1, c0.x, c0.y
    temp1.xyz = i.normal.xyz * float3(2.55, 2.55, 2.55) + float3(-1, -1, -1);
    // dp3 r1.w, r1, c6
    temp1.w = dot(temp1.xyz, DirectionalLight[0].Direction.xyz);
    // max r1.w, r1.w, c0.w
    temp1.w = max(temp1.w, float1(0));
    // mul r2.xyz, r1.w, c5
    temp2.xyz = temp1.www * DirectionalLight[0].Color.xyz;
    // mul oD1.xyz, r2, c1.x
    o.color1.xyz = temp2.xyz * float3(0.5, 0.5, 0.5);
    // dp3 r1.w, r1, c10
    temp1.w = dot(temp1.xyz, DirectionalLight[2].Direction.xyz);
    // dp3 r1.x, r1, c8
    temp1.x = dot(temp1.xyz, DirectionalLight[1].Direction.xyz);
    // max r1.y, r1.w, c0.w
    temp1.y = max(temp1.w, float1(0));
    // mul r1.yzw, r1.y, c9.xxyz
    temp1.yzw = temp1.yyy * DirectionalLight[2].Color.xyz;
    // max r1.x, r1.x, c0.w
    temp1.x = max(temp1.x, float1(0));
    // mad r1.xyz, c7, r1.x, r1.yzww
    temp1.xyz = DirectionalLight[1].Color.xyz * temp1.xxx + temp1.yzw;
    // add r1.xyz, r1, c4
    temp1.xyz = temp1.xyz + AmbientLightColor.xyz;
    // mul r1.xyz, r1, v2
    temp1.xyz = temp1.xyz * i.color.xyz;
    // mul oD0.xyz, r1, c1.x
    o.color.xyz = temp1.xyz * float3(0.5, 0.5, 0.5);
    // add r1.xy, v0, c11.zwzw
    temp1.xy = i.position.xy + Shroud.ScaleUV_OffsetUV.zw;
    // mul oT2.xy, r1, c11
    o.texcoord2 = temp1 * Shroud.ScaleUV_OffsetUV;
    // mul r1.xy, v0.z, c117.zwzw
    temp1.xy = i.position.zz * Cloud.WorldPositionMultiplier_XYZZ.zw;
    // mad r1.xy, v0, c117, -r1
    temp1.xy = i.position.xy * Cloud.WorldPositionMultiplier_XYZZ.xy + -temp1.xy;
    // add oT3.xy, r1, c118
    o.texcoord3.xy = temp1.xy + Cloud.CurrentOffsetUV.xy;
    // mov r1.yz, c0
    temp1.yz = float2(-1, 1);
    // mul r1.xy, r1.yzzw, c12.x
    temp1.xy = temp1.yz * expr12.xx;
    // mul oT3.zw, r1.xyxy, v0.xyyx
    o.texcoord3.zw = temp1.xy * i.position.yx;
    // mov oD0.w, v2.w
    o.color.w = i.color.w;
    // mov oD1.w, c0.z
    o.color1.w = float1(1);
    // mul oT0.xy, v3, c1.y
    o.texcoord.xy = i.texcoord.xy * float2(3.3333334E-05, 3.3333334E-05);
    // mov oT0.zw, c0.w
    o.texcoord.zw = float2(0, 0);
    // mov oT1, c0.w
    o.texcoord1 = float4(0, 0, 0, 0);
    // dp4 r1.x, r0, c113
    temp1.x = dot(temp0, (ShadowMapWorldToShadow._m00_m10_m20_m30));
    // dp4 r1.y, r0, c114
    temp1.y = dot(temp0, (ShadowMapWorldToShadow._m01_m11_m21_m31));
    // dp4 r1.z, r0, c115
    temp1.z = dot(temp0, (ShadowMapWorldToShadow._m02_m12_m22_m32));
    // dp4 r0.x, r0, c116
    temp0.x = dot(temp0, (ShadowMapWorldToShadow._m03_m13_m23_m33));
    // rcp r0.y, r0.x
    temp0.y = 1.0f / temp0.x;
    // mov oT5.w, r0.x
    o.texcoord5.w = temp0.x;
    // mad oT5.xyz, r1, r0.y, c1.zzww
    o.texcoord5.xyz = temp1.xyz * temp0.yyy + float3(0, 0, -0.0015);
    // 

    return o;
}

// Expression39 Expression_2_0 Has PRES False
float Expression39()
{
    float1 expr0;
    // mov c0.x, c0.x
    expr0.x = HasShadow.x;
    return expr0;
}

// VertexShader40 Vertex_2_0 Has PRES True
struct VertexShader40_Input
{
    float4 position : POSITION;
    float4 normal : NORMAL;
    float4 color : COLOR;
    float4 texcoord : TEXCOORD;
};

struct VertexShader40_Output
{
    float4 position : POSITION;
    float4 color1 : COLOR1;
    float4 color : COLOR;
    float2 texcoord2 : TEXCOORD2;
    float4 texcoord3 : TEXCOORD3;
    float4 texcoord5 : TEXCOORD5;
    float4 texcoord : TEXCOORD;
    float4 texcoord1 : TEXCOORD1;
};

VertexShader40_Output VertexShader40(VertexShader40_Input i)
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
        float4 temp0;
        // Expression_2_1
        // mul r0.x, c0.x, (66)
        temp0.x = MapCellSize.x * (66);
        // rcp c12.x, r0.x
        expr12.x = 1.0f / (temp0.x);
    }

    VertexShader40_Output o;
    float4 temp0, temp1;
    // def c0, 1, 0, 0.5, -1
    // dcl_position v0
    // dcl_normal v1
    // dcl_color v2
    // dcl_texcoord v3
    // mad r0, v0.xyzx, c0.xxxy, c0.yyyx
    temp0 = i.position.xyzx * float4(1, 1, 1, 0) + float4(0, 0, 0, 1);
    // dp4 oPos.x, r0, c119
    o.position.x = dot(temp0, (ViewProjection._m00_m10_m20_m30));
    // dp4 oPos.y, r0, c120
    o.position.y = dot(temp0, (ViewProjection._m01_m11_m21_m31));
    // dp4 oPos.z, r0, c121
    o.position.z = dot(temp0, (ViewProjection._m02_m12_m22_m32));
    // dp4 oPos.w, r0, c122
    o.position.w = dot(temp0, (ViewProjection._m03_m13_m23_m33));
    // dp3 r1.x, v1, c6
    temp1.x = dot(i.normal.xyz, DirectionalLight[0].Direction.xyz);
    // max r1.x, r1.x, c0.y
    temp1.x = max(temp1.x, float1(0));
    // mul r1.xyz, r1.x, c5
    temp1.xyz = temp1.xxx * DirectionalLight[0].Color.xyz;
    // mul oD1.xyz, r1, c0.z
    o.color1.xyz = temp1.xyz * float3(0.5, 0.5, 0.5);
    // dp3 r1.x, v1, c10
    temp1.x = dot(i.normal.xyz, DirectionalLight[2].Direction.xyz);
    // max r1.x, r1.x, c0.y
    temp1.x = max(temp1.x, float1(0));
    // mul r1.xyz, r1.x, c9
    temp1.xyz = temp1.xxx * DirectionalLight[2].Color.xyz;
    // dp3 r1.w, v1, c8
    temp1.w = dot(i.normal.xyz, DirectionalLight[1].Direction.xyz);
    // max r1.w, r1.w, c0.y
    temp1.w = max(temp1.w, float1(0));
    // mad r1.xyz, c7, r1.w, r1
    temp1.xyz = DirectionalLight[1].Color.xyz * temp1.www + temp1.xyz;
    // add r1.xyz, r1, c4
    temp1.xyz = temp1.xyz + AmbientLightColor.xyz;
    // mul r1.xyz, r1, v2
    temp1.xyz = temp1.xyz * i.color.xyz;
    // mul oD0.xyz, r1, c0.z
    o.color.xyz = temp1.xyz * float3(0.5, 0.5, 0.5);
    // add r1.xy, v0, c11.zwzw
    temp1.xy = i.position.xy + Shroud.ScaleUV_OffsetUV.zw;
    // mul oT2.xy, r1, c11
    o.texcoord2 = temp1 * Shroud.ScaleUV_OffsetUV;
    // mul r1.xy, v0.z, c117.zwzw
    temp1.xy = i.position.zz * Cloud.WorldPositionMultiplier_XYZZ.zw;
    // mad r1.xy, v0, c117, -r1
    temp1.xy = i.position.xy * Cloud.WorldPositionMultiplier_XYZZ.xy + -temp1.xy;
    // add oT3.xy, r1, c118
    o.texcoord3.xy = temp1.xy + Cloud.CurrentOffsetUV.xy;
    // mov r1.xw, c0
    temp1.xw = float2(1, -1);
    // mul r1.xy, r1.wxzw, c12.x
    temp1.xy = temp1.wx * expr12.xx;
    // mul oT3.zw, r1.xyxy, v0.xyyx
    o.texcoord3.zw = temp1.xy * i.position.yx;
    // dp4 oT5.x, r0, c113
    o.texcoord5.x = dot(temp0, (ShadowMapWorldToShadow._m00_m10_m20_m30));
    // dp4 oT5.y, r0, c114
    o.texcoord5.y = dot(temp0, (ShadowMapWorldToShadow._m01_m11_m21_m31));
    // dp4 oT5.z, r0, c115
    o.texcoord5.z = dot(temp0, (ShadowMapWorldToShadow._m02_m12_m22_m32));
    // dp4 oT5.w, r0, c116
    o.texcoord5.w = dot(temp0, (ShadowMapWorldToShadow._m03_m13_m23_m33));
    // mov oD0.w, v2.w
    o.color.w = i.color.w;
    // mov oD1.w, c0.x
    o.color1.w = float1(1);
    // mov oT0.xy, v3
    o.texcoord.xy = i.texcoord.xy;
    // mov oT0.zw, c0.y
    o.texcoord.zw = float2(0, 0);
    // mov oT1, c0.y
    o.texcoord1 = float4(0, 0, 0, 0);
    // 

    return o;
}

// Expression41 Expression_2_0 Has PRES False
float Expression41()
{
    float1 expr0;
    // mov c0.x, c0.x
    expr0.x = HasShadow.x;
    return expr0;
}

// VertexShader42 Vertex_2_0 Has PRES True
struct VertexShader42_Input
{
    float4 position : POSITION;
    float4 normal : NORMAL;
    float4 color : COLOR;
    float4 texcoord : TEXCOORD;
};

struct VertexShader42_Output
{
    float4 position : POSITION;
    float4 color1 : COLOR1;
    float4 color : COLOR;
    float2 texcoord2 : TEXCOORD2;
    float4 texcoord3 : TEXCOORD3;
    float4 texcoord : TEXCOORD;
    float4 texcoord1 : TEXCOORD1;
    float4 texcoord5 : TEXCOORD5;
};

VertexShader42_Output VertexShader42(VertexShader42_Input i)
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
        float4 temp0;
        // Expression_2_1
        // mul r0.x, c0.x, (66)
        temp0.x = MapCellSize.x * (66);
        // rcp c12.x, r0.x
        expr12.x = 1.0f / (temp0.x);
    }

    VertexShader42_Output o;
    float4 temp0, temp1;
    // def c0, 0, -0.0015, 0, 0
    // def c1, 1, 0, 0.5, -1
    // dcl_position v0
    // dcl_normal v1
    // dcl_color v2
    // dcl_texcoord v3
    // mad r0, v0.xyzx, c1.xxxy, c1.yyyx
    temp0 = i.position.xyzx * float4(1, 1, 1, 0) + float4(0, 0, 0, 1);
    // dp4 oPos.x, r0, c119
    o.position.x = dot(temp0, (ViewProjection._m00_m10_m20_m30));
    // dp4 oPos.y, r0, c120
    o.position.y = dot(temp0, (ViewProjection._m01_m11_m21_m31));
    // dp4 oPos.z, r0, c121
    o.position.z = dot(temp0, (ViewProjection._m02_m12_m22_m32));
    // dp4 oPos.w, r0, c122
    o.position.w = dot(temp0, (ViewProjection._m03_m13_m23_m33));
    // dp3 r1.x, v1, c6
    temp1.x = dot(i.normal.xyz, DirectionalLight[0].Direction.xyz);
    // max r1.x, r1.x, c1.y
    temp1.x = max(temp1.x, float1(0));
    // mul r1.xyz, r1.x, c5
    temp1.xyz = temp1.xxx * DirectionalLight[0].Color.xyz;
    // mul oD1.xyz, r1, c1.z
    o.color1.xyz = temp1.xyz * float3(0.5, 0.5, 0.5);
    // dp3 r1.x, v1, c10
    temp1.x = dot(i.normal.xyz, DirectionalLight[2].Direction.xyz);
    // max r1.x, r1.x, c1.y
    temp1.x = max(temp1.x, float1(0));
    // mul r1.xyz, r1.x, c9
    temp1.xyz = temp1.xxx * DirectionalLight[2].Color.xyz;
    // dp3 r1.w, v1, c8
    temp1.w = dot(i.normal.xyz, DirectionalLight[1].Direction.xyz);
    // max r1.w, r1.w, c1.y
    temp1.w = max(temp1.w, float1(0));
    // mad r1.xyz, c7, r1.w, r1
    temp1.xyz = DirectionalLight[1].Color.xyz * temp1.www + temp1.xyz;
    // add r1.xyz, r1, c4
    temp1.xyz = temp1.xyz + AmbientLightColor.xyz;
    // mul r1.xyz, r1, v2
    temp1.xyz = temp1.xyz * i.color.xyz;
    // mul oD0.xyz, r1, c1.z
    o.color.xyz = temp1.xyz * float3(0.5, 0.5, 0.5);
    // add r1.xy, v0, c11.zwzw
    temp1.xy = i.position.xy + Shroud.ScaleUV_OffsetUV.zw;
    // mul oT2.xy, r1, c11
    o.texcoord2 = temp1 * Shroud.ScaleUV_OffsetUV;
    // mul r1.xy, v0.z, c117.zwzw
    temp1.xy = i.position.zz * Cloud.WorldPositionMultiplier_XYZZ.zw;
    // mad r1.xy, v0, c117, -r1
    temp1.xy = i.position.xy * Cloud.WorldPositionMultiplier_XYZZ.xy + -temp1.xy;
    // add oT3.xy, r1, c118
    o.texcoord3.xy = temp1.xy + Cloud.CurrentOffsetUV.xy;
    // mov r1.xw, c1
    temp1.xw = float2(1, -1);
    // mul r1.xy, r1.wxzw, c12.x
    temp1.xy = temp1.wx * expr12.xx;
    // mul oT3.zw, r1.xyxy, v0.xyyx
    o.texcoord3.zw = temp1.xy * i.position.yx;
    // mov oD0.w, v2.w
    o.color.w = i.color.w;
    // mov oD1.w, c1.x
    o.color1.w = float1(1);
    // mov oT0.xy, v3
    o.texcoord.xy = i.texcoord.xy;
    // mov oT0.zw, c1.y
    o.texcoord.zw = float2(0, 0);
    // mov oT1, c1.y
    o.texcoord1 = float4(0, 0, 0, 0);
    // dp4 r1.x, r0, c113
    temp1.x = dot(temp0, (ShadowMapWorldToShadow._m00_m10_m20_m30));
    // dp4 r1.y, r0, c114
    temp1.y = dot(temp0, (ShadowMapWorldToShadow._m01_m11_m21_m31));
    // dp4 r1.z, r0, c115
    temp1.z = dot(temp0, (ShadowMapWorldToShadow._m02_m12_m22_m32));
    // dp4 r0.x, r0, c116
    temp0.x = dot(temp0, (ShadowMapWorldToShadow._m03_m13_m23_m33));
    // rcp r0.y, r0.x
    temp0.y = 1.0f / temp0.x;
    // mov oT5.w, r0.x
    o.texcoord5.w = temp0.x;
    // mad oT5.xyz, r1, r0.y, c0.xxyw
    o.texcoord5.xyz = temp1.xyz * temp0.yyy + float3(0, 0, -0.0015);
    // 

    return o;
}

// Expression43 Expression_2_0 Has PRES False
float Expression43()
{
    float4 temp0;
    float1 expr0;
    // add r0.x, c0.x, c0.x
    temp0.x = IsTerrainAtlasEnabled.x + IsTerrainAtlasEnabled.x;
    // add c0.x, r0.x, c1.x
    expr0.x = temp0.x + HasShadow.x;
    return expr0;
}

// Expression44 Expression_2_0 Has PRES False
float Expression44()
{
    float1 expr0;
    // mov c0.x, c0.x
    expr0.x = IsTerrainAtlasEnabled.x;
    return expr0;
}

// Expression45 Expression_2_0 Has PRES False
float Expression45()
{
    float1 expr0;
    // mov c0.x, c0.x
    expr0.x = HasShadow.x;
    return expr0;
}

// VertexShader46 Vertex_3_0 Has PRES False
struct VertexShader46_Input
{
    float4 position : POSITION;
    float4 normal : NORMAL;
    float4 color : COLOR;
    float4 texcoord : TEXCOORD;
    float4 tangent : TANGENT;
};

struct VertexShader46_Output
{
    float4 position : POSITION;
    float4 color : COLOR;
    float color1 : COLOR1;
    float4 texcoord : TEXCOORD;
    float4 texcoord1 : TEXCOORD1;
    float2 texcoord2 : TEXCOORD2;
    float3 texcoord3 : TEXCOORD3;
    float4 texcoord4 : TEXCOORD4;
    float3 texcoord5 : TEXCOORD5;
    float4 texcoord6 : TEXCOORD6;
};

VertexShader46_Output VertexShader46(VertexShader46_Input i)
{
    VertexShader46_Output o;
    float4 temp0, temp1;
    float3 temp2, temp4;
    float2 temp3;
    // def c0, 2.55, -1, 1, 0
    // def c1, 0.5, 3.333333E-05, 0, -0.0015
    // dcl_position v0
    // dcl_normal v1
    // dcl_color v2
    // dcl_texcoord v3
    // dcl_tangent v4
    // dcl_position o0
    // dcl_color o1
    // dcl_color1 o2.x
    // dcl_texcoord o3
    // dcl_texcoord1 o4
    // dcl_texcoord2 o5.xy
    // dcl_texcoord3 o6.xyz
    // dcl_texcoord4 o7
    // dcl_texcoord5 o8.xyz
    // dcl_texcoord6 o9
    // mad r0, v0.xyzx, c0.zzzw, c0.wwwz
    temp0 = i.position.xyzx * float4(1, 1, 1, 0) + float4(0, 0, 0, 1);
    // dp4 o0.x, r0, c119
    o.position.x = dot(temp0, (ViewProjection._m00_m10_m20_m30));
    // dp4 o0.y, r0, c120
    o.position.y = dot(temp0, (ViewProjection._m01_m11_m21_m31));
    // dp4 o0.z, r0, c121
    o.position.z = dot(temp0, (ViewProjection._m02_m12_m22_m32));
    // dp4 o0.w, r0, c122
    o.position.w = dot(temp0, (ViewProjection._m03_m13_m23_m33));
    // add r1.xyz, c123, -v0
    temp1.xyz = EyePosition.xyz + -i.position.xyz;
    // dp3 r1.w, r1, r1
    temp1.w = dot(temp1.xyz, temp1.xyz);
    // rsq r1.w, r1.w
    temp1.w = 1 / sqrt(temp1.w);
    // mad r1.xyz, r1, r1.w, c6
    temp1.xyz = temp1.xyz * temp1.www + DirectionalLight[0].Direction.xyz;
    // mad r2.xyz, v4, c0.x, c0.y
    temp2.xyz = i.tangent.xyz * float3(2.55, 2.55, 2.55) + float3(-1, -1, -1);
    // dp3 r3.x, r1, -r2
    temp3.x = dot(temp1.xyz, -temp2.xyz);
    // dp3 r2.x, c6, -r2
    temp2.x = dot(DirectionalLight[0].Direction.xyz, -temp2.xyz);
    // mad r4.xyz, v1, c0.x, c0.y
    temp4.xyz = i.normal.xyz * float3(2.55, 2.55, 2.55) + float3(-1, -1, -1);
    // dp3 r3.y, r1, r4
    temp3.y = dot(temp1.xyz, temp4.xyz);
    // dp3 r1.x, r3.xxyw, r3.xxyw
    temp1.x = dot(temp3.xxy, temp3.xxy);
    // rsq r1.x, r1.x
    temp1.x = 1 / sqrt(temp1.x);
    // mul o8.xyz, r3.xxyw, r1.x
    o.texcoord5 = temp3.xxy * temp1.x;
    // dp3 r1.x, r4, c10
    temp1.x = dot(temp4.xyz, DirectionalLight[2].Direction.xyz);
    // max r1.x, r1.x, c0.w
    temp1.x = max(temp1.x, float1(0));
    // mul r1.xyz, r1.x, c9
    temp1.xyz = temp1.xxx * DirectionalLight[2].Color.xyz;
    // dp3 r1.w, r4, c8
    temp1.w = dot(temp4.xyz, DirectionalLight[1].Direction.xyz);
    // dp3 r2.y, c6, r4
    temp2.y = dot(DirectionalLight[0].Direction.xyz, temp4.xyz);
    // max r1.w, r1.w, c0.w
    temp1.w = max(temp1.w, float1(0));
    // mad r1.xyz, c7, r1.w, r1
    temp1.xyz = DirectionalLight[1].Color.xyz * temp1.www + temp1.xyz;
    // add r1.xyz, r1, c4
    temp1.xyz = temp1.xyz + AmbientLightColor.xyz;
    // mul r1.xyz, r1, v2
    temp1.xyz = temp1.xyz * i.color.xyz;
    // mul o1.xyz, r1, c1.x
    o.color.xyz = temp1.xyz * float3(0.5, 0.5, 0.5);
    // add r1.xy, c11.zwzw, v0
    temp1.xy = Shroud.ScaleUV_OffsetUV.zw + i.position.xy;
    // mul o5.xy, r1, c11
    o.texcoord2 = temp1 * Shroud.ScaleUV_OffsetUV;
    // mov o1.w, v2.w
    o.color.w = i.color.w;
    // mov o2.x, c0.z
    o.color1 = float4(1, 1, 1, 1);
    // mul o3.xy, c1.y, v3
    o.texcoord.xy = float2(3.3333334E-05, 3.3333334E-05) * i.texcoord.xy;
    // mov o3.zw, c0.w
    o.texcoord.zw = float2(0, 0);
    // mov o4, c0.w
    o.texcoord1 = float4(0, 0, 0, 0);
    // mov o6.xyz, v0
    o.texcoord3 = i.position;
    // max r2.z, r2.y, c0.w
    temp2.z = max(temp2.y, float1(0));
    // mov o7, r2.xxyz
    o.texcoord4 = temp2.xxyz;
    // dp4 r1.x, r0, c113
    temp1.x = dot(temp0, (ShadowMapWorldToShadow._m00_m10_m20_m30));
    // dp4 r1.y, r0, c114
    temp1.y = dot(temp0, (ShadowMapWorldToShadow._m01_m11_m21_m31));
    // dp4 r1.z, r0, c115
    temp1.z = dot(temp0, (ShadowMapWorldToShadow._m02_m12_m22_m32));
    // dp4 r0.x, r0, c116
    temp0.x = dot(temp0, (ShadowMapWorldToShadow._m03_m13_m23_m33));
    // rcp r0.y, r0.x
    temp0.y = 1.0f / temp0.x;
    // mov o9.w, r0.x
    o.texcoord6.w = temp0.x;
    // mad o9.xyz, r1, r0.y, c1.zzww
    o.texcoord6.xyz = temp1.xyz * temp0.yyy + float3(0, 0, -0.0015);
    // 

    return o;
}

// Expression47 Expression_2_0 Has PRES False
float Expression47()
{
    float1 expr0;
    // mov c0.x, c0.x
    expr0.x = HasShadow.x;
    return expr0;
}

// VertexShader48 Vertex_3_0 Has PRES False
struct VertexShader48_Input
{
    float4 position : POSITION;
    float4 normal : NORMAL;
    float4 color : COLOR;
    float4 texcoord : TEXCOORD;
};

struct VertexShader48_Output
{
    float4 position : POSITION;
    float4 color : COLOR;
    float color1 : COLOR1;
    float4 texcoord : TEXCOORD;
    float4 texcoord1 : TEXCOORD1;
    float2 texcoord2 : TEXCOORD2;
    float3 texcoord3 : TEXCOORD3;
    float4 texcoord4 : TEXCOORD4;
    float3 texcoord5 : TEXCOORD5;
    float4 texcoord6 : TEXCOORD6;
};

VertexShader48_Output VertexShader48(VertexShader48_Input i)
{
    VertexShader48_Output o;
    float4 temp0, temp1;
    float3 temp2, temp3;
    // def c0, 1, 0, -1, 0.5
    // dcl_position v0
    // dcl_normal v1
    // dcl_color v2
    // dcl_texcoord v3
    // dcl_position o0
    // dcl_color o1
    // dcl_color1 o2.x
    // dcl_texcoord o3
    // dcl_texcoord1 o4
    // dcl_texcoord2 o5.xy
    // dcl_texcoord3 o6.xyz
    // dcl_texcoord4 o7
    // dcl_texcoord5 o8.xyz
    // dcl_texcoord6 o9
    // mad r0, v0.xyzx, c0.xxxy, c0.yyyx
    temp0 = i.position.xyzx * float4(1, 1, 1, 0) + float4(0, 0, 0, 1);
    // dp4 o0.x, r0, c119
    o.position.x = dot(temp0, (ViewProjection._m00_m10_m20_m30));
    // dp4 o0.y, r0, c120
    o.position.y = dot(temp0, (ViewProjection._m01_m11_m21_m31));
    // dp4 o0.z, r0, c121
    o.position.z = dot(temp0, (ViewProjection._m02_m12_m22_m32));
    // dp4 o0.w, r0, c122
    o.position.w = dot(temp0, (ViewProjection._m03_m13_m23_m33));
    // mul r1.xyz, c0.xyyw, v1.zxyw
    temp1.xyz = float3(1, 0, 0) * i.normal.zxy;
    // mad r1.xyz, v1.yzxw, c0.yyxw, -r1
    temp1.xyz = i.normal.yzx * float3(0, 0, 1) + -temp1.xyz;
    // dp3 o7.x, c6, -r1
    o.texcoord4.x = dot(DirectionalLight[0].Direction.xyz, -temp1.xyz);
    // mul r2.xyz, c0.yyzw, v1.zxyw
    temp2.xyz = float3(0, 0, -1) * i.normal.zxy;
    // mad r2.xyz, v1.yzxw, c0.yzyw, -r2
    temp2.xyz = i.normal.yzx * float3(0, -1, 0) + -temp2.xyz;
    // dp3 o7.y, c6, -r2
    o.texcoord4.y = dot(DirectionalLight[0].Direction.xyz, -temp2.xyz);
    // dp3 r1.w, c6, v1
    temp1.w = dot(DirectionalLight[0].Direction.xyz, i.normal.xyz);
    // max o7.w, r1.w, c0.y
    o.texcoord4.w = max(temp1.w, float1(0));
    // mov o7.z, r1.w
    o.texcoord4.z = temp1.w;
    // add r3.xyz, c123, -v0
    temp3.xyz = EyePosition.xyz + -i.position.xyz;
    // dp3 r1.w, r3, r3
    temp1.w = dot(temp3.xyz, temp3.xyz);
    // rsq r1.w, r1.w
    temp1.w = 1 / sqrt(temp1.w);
    // mad r3.xyz, r3, r1.w, c6
    temp3.xyz = temp3.xyz * temp1.www + DirectionalLight[0].Direction.xyz;
    // dp3 r1.x, r3, -r1
    temp1.x = dot(temp3.xyz, -temp1.xyz);
    // dp3 r1.y, r3, -r2
    temp1.y = dot(temp3.xyz, -temp2.xyz);
    // dp3 r1.z, r3, v1
    temp1.z = dot(temp3.xyz, i.normal.xyz);
    // dp3 r1.w, r1, r1
    temp1.w = dot(temp1.xyz, temp1.xyz);
    // rsq r1.w, r1.w
    temp1.w = 1 / sqrt(temp1.w);
    // mul o8.xyz, r1, r1.w
    o.texcoord5 = temp1 * temp1.w;
    // dp3 r1.x, v1, c10
    temp1.x = dot(i.normal.xyz, DirectionalLight[2].Direction.xyz);
    // max r1.x, r1.x, c0.y
    temp1.x = max(temp1.x, float1(0));
    // mul r1.xyz, r1.x, c9
    temp1.xyz = temp1.xxx * DirectionalLight[2].Color.xyz;
    // dp3 r1.w, v1, c8
    temp1.w = dot(i.normal.xyz, DirectionalLight[1].Direction.xyz);
    // max r1.w, r1.w, c0.y
    temp1.w = max(temp1.w, float1(0));
    // mad r1.xyz, c7, r1.w, r1
    temp1.xyz = DirectionalLight[1].Color.xyz * temp1.www + temp1.xyz;
    // add r1.xyz, r1, c4
    temp1.xyz = temp1.xyz + AmbientLightColor.xyz;
    // mul r1.xyz, r1, v2
    temp1.xyz = temp1.xyz * i.color.xyz;
    // mul o1.xyz, r1, c0.w
    o.color.xyz = temp1.xyz * float3(0.5, 0.5, 0.5);
    // add r1.xy, c11.zwzw, v0
    temp1.xy = Shroud.ScaleUV_OffsetUV.zw + i.position.xy;
    // mul o5.xy, r1, c11
    o.texcoord2 = temp1 * Shroud.ScaleUV_OffsetUV;
    // dp4 o9.x, r0, c113
    o.texcoord6.x = dot(temp0, (ShadowMapWorldToShadow._m00_m10_m20_m30));
    // dp4 o9.y, r0, c114
    o.texcoord6.y = dot(temp0, (ShadowMapWorldToShadow._m01_m11_m21_m31));
    // dp4 o9.z, r0, c115
    o.texcoord6.z = dot(temp0, (ShadowMapWorldToShadow._m02_m12_m22_m32));
    // dp4 o9.w, r0, c116
    o.texcoord6.w = dot(temp0, (ShadowMapWorldToShadow._m03_m13_m23_m33));
    // 修！
    o.texcoord6.z -= 1.5 * Shadowmap_Zero_Zero_OneOverMapSize_OneOverMapSize.z * o.texcoord6.w;
    // mov o1.w, v2.w
    o.color.w = i.color.w;
    // mov o2.x, c0.x
    o.color1 = float4(1, 1, 1, 1);
    // mov o3.xy, v3
    o.texcoord.xy = i.texcoord.xy;
    // mov o3.zw, c0.y
    o.texcoord.zw = float2(0, 0);
    // mov o4, c0.y
    o.texcoord1 = float4(0, 0, 0, 0);
    // mov o6.xyz, v0
    o.texcoord3 = i.position;
    // 

    return o;
}

// Expression49 Expression_2_0 Has PRES False
float Expression49()
{
    float1 expr0;
    // mov c0.x, c0.x
    expr0.x = HasShadow.x;
    return expr0;
}

// VertexShader50 Vertex_3_0 Has PRES False
struct VertexShader50_Input
{
    float4 position : POSITION;
    float4 normal : NORMAL;
    float4 color : COLOR;
    float4 texcoord : TEXCOORD;
};

struct VertexShader50_Output
{
    float4 position : POSITION;
    float4 color : COLOR;
    float color1 : COLOR1;
    float4 texcoord : TEXCOORD;
    float4 texcoord1 : TEXCOORD1;
    float2 texcoord2 : TEXCOORD2;
    float3 texcoord3 : TEXCOORD3;
    float4 texcoord4 : TEXCOORD4;
    float3 texcoord5 : TEXCOORD5;
    float4 texcoord6 : TEXCOORD6;
};

VertexShader50_Output VertexShader50(VertexShader50_Input i)
{
    VertexShader50_Output o;
    float4 temp0, temp1;
    float3 temp2, temp3;
    // def c0, 1, 0, -1, 0.5
    // def c1, 0, -0.0015, 0, 0
    // dcl_position v0
    // dcl_normal v1
    // dcl_color v2
    // dcl_texcoord v3
    // dcl_position o0
    // dcl_color o1
    // dcl_color1 o2.x
    // dcl_texcoord o3
    // dcl_texcoord1 o4
    // dcl_texcoord2 o5.xy
    // dcl_texcoord3 o6.xyz
    // dcl_texcoord4 o7
    // dcl_texcoord5 o8.xyz
    // dcl_texcoord6 o9
    // mad r0, v0.xyzx, c0.xxxy, c0.yyyx
    temp0 = i.position.xyzx * float4(1, 1, 1, 0) + float4(0, 0, 0, 1);
    // dp4 o0.x, r0, c119
    o.position.x = dot(temp0, (ViewProjection._m00_m10_m20_m30));
    // dp4 o0.y, r0, c120
    o.position.y = dot(temp0, (ViewProjection._m01_m11_m21_m31));
    // dp4 o0.z, r0, c121
    o.position.z = dot(temp0, (ViewProjection._m02_m12_m22_m32));
    // dp4 o0.w, r0, c122
    o.position.w = dot(temp0, (ViewProjection._m03_m13_m23_m33));
    // mul r1.xyz, c0.xyyw, v1.zxyw
    temp1.xyz = float3(1, 0, 0) * i.normal.zxy;
    // mad r1.xyz, v1.yzxw, c0.yyxw, -r1
    temp1.xyz = i.normal.yzx * float3(0, 0, 1) + -temp1.xyz;
    // dp3 o7.x, c6, -r1
    o.texcoord4.x = dot(DirectionalLight[0].Direction.xyz, -temp1.xyz);
    // mul r2.xyz, c0.yyzw, v1.zxyw
    temp2.xyz = float3(0, 0, -1) * i.normal.zxy;
    // mad r2.xyz, v1.yzxw, c0.yzyw, -r2
    temp2.xyz = i.normal.yzx * float3(0, -1, 0) + -temp2.xyz;
    // dp3 o7.y, c6, -r2
    o.texcoord4.y = dot(DirectionalLight[0].Direction.xyz, -temp2.xyz);
    // dp3 r1.w, c6, v1
    temp1.w = dot(DirectionalLight[0].Direction.xyz, i.normal.xyz);
    // max o7.w, r1.w, c0.y
    o.texcoord4.w = max(temp1.w, float1(0));
    // mov o7.z, r1.w
    o.texcoord4.z = temp1.w;
    // add r3.xyz, c123, -v0
    temp3.xyz = EyePosition.xyz + -i.position.xyz;
    // dp3 r1.w, r3, r3
    temp1.w = dot(temp3.xyz, temp3.xyz);
    // rsq r1.w, r1.w
    temp1.w = 1 / sqrt(temp1.w);
    // mad r3.xyz, r3, r1.w, c6
    temp3.xyz = temp3.xyz * temp1.www + DirectionalLight[0].Direction.xyz;
    // dp3 r1.x, r3, -r1
    temp1.x = dot(temp3.xyz, -temp1.xyz);
    // dp3 r1.y, r3, -r2
    temp1.y = dot(temp3.xyz, -temp2.xyz);
    // dp3 r1.z, r3, v1
    temp1.z = dot(temp3.xyz, i.normal.xyz);
    // dp3 r1.w, r1, r1
    temp1.w = dot(temp1.xyz, temp1.xyz);
    // rsq r1.w, r1.w
    temp1.w = 1 / sqrt(temp1.w);
    // mul o8.xyz, r1, r1.w
    o.texcoord5 = temp1 * temp1.w;
    // dp3 r1.x, v1, c10
    temp1.x = dot(i.normal.xyz, DirectionalLight[2].Direction.xyz);
    // max r1.x, r1.x, c0.y
    temp1.x = max(temp1.x, float1(0));
    // mul r1.xyz, r1.x, c9
    temp1.xyz = temp1.xxx * DirectionalLight[2].Color.xyz;
    // dp3 r1.w, v1, c8
    temp1.w = dot(i.normal.xyz, DirectionalLight[1].Direction.xyz);
    // max r1.w, r1.w, c0.y
    temp1.w = max(temp1.w, float1(0));
    // mad r1.xyz, c7, r1.w, r1
    temp1.xyz = DirectionalLight[1].Color.xyz * temp1.www + temp1.xyz;
    // add r1.xyz, r1, c4
    temp1.xyz = temp1.xyz + AmbientLightColor.xyz;
    // mul r1.xyz, r1, v2
    temp1.xyz = temp1.xyz * i.color.xyz;
    // mul o1.xyz, r1, c0.w
    o.color.xyz = temp1.xyz * float3(0.5, 0.5, 0.5);
    // add r1.xy, c11.zwzw, v0
    temp1.xy = Shroud.ScaleUV_OffsetUV.zw + i.position.xy;
    // mul o5.xy, r1, c11
    o.texcoord2 = temp1 * Shroud.ScaleUV_OffsetUV;
    // mov o1.w, v2.w
    o.color.w = i.color.w;
    // mov o2.x, c0.x
    o.color1 = float4(1, 1, 1, 1);
    // mov o3.xy, v3
    o.texcoord.xy = i.texcoord.xy;
    // mov o3.zw, c0.y
    o.texcoord.zw = float2(0, 0);
    // mov o4, c0.y
    o.texcoord1 = float4(0, 0, 0, 0);
    // mov o6.xyz, v0
    o.texcoord3 = i.position;
    // dp4 r1.x, r0, c113
    temp1.x = dot(temp0, (ShadowMapWorldToShadow._m00_m10_m20_m30));
    // dp4 r1.y, r0, c114
    temp1.y = dot(temp0, (ShadowMapWorldToShadow._m01_m11_m21_m31));
    // dp4 r1.z, r0, c115
    temp1.z = dot(temp0, (ShadowMapWorldToShadow._m02_m12_m22_m32));
    // dp4 r0.x, r0, c116
    temp0.x = dot(temp0, (ShadowMapWorldToShadow._m03_m13_m23_m33));
    // rcp r0.y, r0.x
    temp0.y = 1.0f / temp0.x;
    // mov o9.w, r0.x
    o.texcoord6.w = temp0.x;
    // mad o9.xyz, r1, r0.y, c1.xxyw
    o.texcoord6.xyz = temp1.xyz * temp0.yyy + float3(0, 0, -0.0015);
    // 

    return o;
}

// Expression51 Expression_2_0 Has PRES False
float Expression51()
{
    float4 temp0;
    float1 expr0;
    // add r0.x, c0.x, c0.x
    temp0.x = IsTerrainAtlasEnabled.x + IsTerrainAtlasEnabled.x;
    // add c0.x, r0.x, c1.x
    expr0.x = temp0.x + HasShadow.x;
    return expr0;
}

// Expression52 Expression_2_0 Has PRES False
float Expression52()
{
    float1 expr0;
    // mov c0.x, c0.x
    expr0.x = IsTerrainAtlasEnabled.x;
    return expr0;
}

technique TerrainTile
{
    pass P0
    {
        VertexShader = VS_TerrainTile_Array[Expression52()]; // 95
        PixelShader = PS_TerrainTile_Array[Expression51()]; // 96
        ZEnable = 1;
        ZWriteEnable = 1;
        ZFunc = 4;
        CullMode = 2;
        AlphaBlendEnable = 0;
        AlphaTestEnable = 0;
    }
}

technique Cliff
{
    pass P0
    {
        VertexShader = compile vs_3_0 VertexShader50(); // 99
        PixelShader = PS_Cliff_Array[Expression49()]; // 100
        ZEnable = 1;
        ZWriteEnable = 0;
        ZFunc = 4;
        CullMode = 2;
        AlphaBlendEnable = 1;
        SrcBlend = 5;
        DestBlend = 6;
        AlphaTestEnable = 0;
    }
}

technique Road
{
    pass P0
    {
        VertexShader = compile vs_3_0 VertexShader48(); // 103
        PixelShader = PS_Road_Array[Expression47()]; // 104
        ZEnable = 1;
        ZWriteEnable = 0;
        ZFunc = 4;
        CullMode = 2;
        AlphaBlendEnable = 1;
        SrcBlend = 5;
        DestBlend = 6;
        AlphaTestEnable = 0;
        DepthBias = -0.0004;
    }
}

technique Scorch
{
    pass P0
    {
        VertexShader = compile vs_3_0 VertexShader46(); // 107
        PixelShader = PS_Scorch_Array[Expression45()]; // 108
        ZEnable = 1;
        ZWriteEnable = 0;
        ZFunc = 4;
        CullMode = 2;
        AlphaBlendEnable = 1;
        SrcBlend = 5;
        DestBlend = 6;
        AlphaTestEnable = 0;
        DepthBias = -0.0002;
    }
}

technique TerrainTile_M
{
    pass P0
    {
        VertexShader = VS_TerrainTile_M_Array[Expression44()]; // 115
        PixelShader = PS_TerrainTile_M_Array[Expression43()]; // 116
        ZEnable = 1;
        ZWriteEnable = 1;
        ZFunc = 4;
        CullMode = 2;
        AlphaBlendEnable = 0;
        AlphaTestEnable = 0;
    }
}

technique Cliff_M
{
    pass P0
    {
        VertexShader = compile vs_2_0 VertexShader42(); // 119
        PixelShader = PS_Cliff_M_Array[Expression41()]; // 120
        ZEnable = 1;
        ZWriteEnable = 0;
        ZFunc = 4;
        CullMode = 2;
        AlphaBlendEnable = 1;
        SrcBlend = 5;
        DestBlend = 6;
        AlphaTestEnable = 0;
    }
}

technique Road_M
{
    pass P0
    {
        VertexShader = compile vs_2_0 VertexShader40(); // 123
        PixelShader = PS_Road_M_Array[Expression39()]; // 124
        ZEnable = 1;
        ZWriteEnable = 0;
        ZFunc = 4;
        CullMode = 2;
        AlphaBlendEnable = 1;
        SrcBlend = 5;
        DestBlend = 6;
        AlphaTestEnable = 0;
        DepthBias = -0.0004;
    }
}

technique Scorch_M
{
    pass P0
    {
        VertexShader = compile vs_2_0 VertexShader38(); // 127
        PixelShader = PS_Scorch_M_Array[Expression37()]; // 128
        ZEnable = 1;
        ZWriteEnable = 0;
        ZFunc = 4;
        CullMode = 2;
        AlphaBlendEnable = 1;
        SrcBlend = 5;
        DestBlend = 6;
        AlphaTestEnable = 0;
        DepthBias = -0.0002;
    }
}

technique TerrainTile_L
{
    pass P0
    {
        VertexShader = compile vs_2_0 VertexShader36(); // 129
        PixelShader = compile ps_2_0 PixelShader35(); // 130
        ZEnable = 1;
        ZWriteEnable = 1;
        ZFunc = 4;
        CullMode = 2;
        AlphaBlendEnable = 0;
        AlphaTestEnable = 0;
    }
}

technique Cliff_L
{
    pass P0
    {
        VertexShader = compile vs_2_0 VertexShader34(); // 131
        PixelShader = compile ps_2_0 PixelShader33(); // 132
        ZEnable = 1;
        ZWriteEnable = 0;
        ZFunc = 4;
        CullMode = 2;
        AlphaBlendEnable = 1;
        SrcBlend = 5;
        DestBlend = 6;
        AlphaTestEnable = 0;
    }
}

technique Road_L
{
    pass P0
    {
        VertexShader = compile vs_2_0 VertexShader32(); // 133
        PixelShader = compile ps_2_0 PixelShader31(); // 134
        ZEnable = 1;
        ZWriteEnable = 0;
        ZFunc = 4;
        CullMode = 2;
        AlphaBlendEnable = 1;
        SrcBlend = 5;
        DestBlend = 6;
        AlphaTestEnable = 0;
        DepthBias = -0.0004;
    }
}

technique Scorch_L
{
    pass P0
    {
        VertexShader = compile vs_2_0 VertexShader30(); // 135
        PixelShader = compile ps_2_0 PixelShader29(); // 136
        ZEnable = 1;
        ZWriteEnable = 0;
        ZFunc = 4;
        CullMode = 2;
        AlphaBlendEnable = 1;
        SrcBlend = 5;
        DestBlend = 6;
        AlphaTestEnable = 0;
        DepthBias = -0.0002;
    }
}

technique _CreateShadowMap
{
    pass P0
    {
        VertexShader = compile vs_2_0 VertexShader28(); // 137
        PixelShader = compile ps_2_0 PixelShader27(); // 138
        ZEnable = 1;
        ZWriteEnable = 1;
        ZFunc = 4;
        CullMode = 2;
        AlphaBlendEnable = 0;
        AlphaTestEnable = 0;
    }
}

technique _CreateDepthMap
{
    pass P0
    {
        VertexShader = compile vs_2_0 VertexShader26(); // 139
        PixelShader = compile ps_2_0 PixelShader25(); // 140
        ZEnable = 1;
        ZWriteEnable = 1;
        ZFunc = 4;
        CullMode = 2;
        AlphaBlendEnable = 0;
        AlphaTestEnable = 0;
    }
}

