//////////////////////////////////////////////////////////////////////////////
// 本文件包含了一些不同着色器都会使用到的东西
// 2019/3/9 岚依
//  lanyi@ra3.moe
//  红警3吧 https://tieba.baidu.com/RA3
//////////////////////////////////////////////////////////////////////////////

#ifndef ARMOD_SHADER_COMMON_HEADER
#define ARMOD_SHADER_COMMON_HEADER 1

int _SasGlobal : SasGlobal
<
    int3 SasVersion = int3(1, 0, 0);
    string SasEffectAuthor = "lanyi";
    string SasEffectDescription = "Sopravvivi!";
    string UIWidget = "None";
    int MaxLocalLights = 8;
    int MaxSupportedInstancingMode = 1;
> = 0;

// This is used by 3dsmax to load the correct parser
#if defined(_3DSMAX_)
    string ParamID = "0x1";
    #define readonly
    #define SEMANTIC_3DSMAX(semantic) : semantic
#else
    #define readonly const
    #define texture2D texture
    #define textureCUBE texture
    #define SEMANTIC_3DSMAX(semantic)
#endif

#define SHADER_ARRAY_SELECT(arrayName, expression) ( arrayName[ expression ] )

// Threshold for AlphaRef render state when doing alpha testing
#define DEFAULT_ALPHATEST_THRESHOLD 0x60 

// Taken from d3d9types.h D3DCULL enum
static const int D3DCULL_NONE                = 1;
static const int D3DCULL_CW                  = 2;
static const int D3DCULL_CCW                 = 3;

static const float PI = 3.14159265f;

string DefaultParameterScopeBlock = "material";

// 法线贴图里的红色/绿色通道缩放
#define NORMAL_MAP_BUMP_SCALE 1.5;

#ifndef _3DSMAX_
// ----------------------------------------------------------------------------
// 阴影贴图
//-----------------------------------------------------------------------------
texture ShadowMap
<
    string UIWidget = "None";
    string SasBindAddress = "Sas.Shadow[0].ShadowMap";
>;
sampler2D ShadowMapSampler
<
    string Texture = "ShadowMap";
    string UIWidget = "None";
    string SasBindAddress = "Sas.Shadow[0].ShadowMap";
> = sampler_state {
    Texture = < ShadowMap >;
    MinFilter = Point;
    MagFilter = Point;
    MipFilter = None;
    AddressU = Clamp;
    AddressV = Clamp;
    AddressW = Clamp;
};

// ----------------------------------------------------------------------------
// 云的贴图
// ----------------------------------------------------------------------------
texture CloudTexture
<
    string UIWidget = "None";
    string SasBindAddress = "Terrain.Cloud.Texture";
    string ResourceName = "ShaderPreviewCloud.dds";
>;
sampler2D CloudTextureSampler
<
    string Texture = "CloudTexture";
    string UIWidget = "None";
    string SasBindAddress = "Terrain.Cloud.Texture";
    string ResourceName = "ShaderPreviewCloud.dds";
> = sampler_state {
    Texture = < CloudTexture >;
    MinFilter = Linear;
    MagFilter = Linear;
    MipFilter = Linear;
    AddressU = Wrap;
    AddressV = Wrap;
    AddressW = Clamp;
};

// ----------------------------------------------------------------------------
// 环境反射贴图
// ----------------------------------------------------------------------------
#ifdef ENV_CUSTOM
    // #define ENVMAP_NAME "Terrain.EnvironmentTexture"
    #define ENVMAP_NAME "Lanyi.EnvironmentTexture"
#else
    #ifdef ENV_WATER
        #define ENVMAP_NAME "Water.LightSpaceEnvironmentMap"
    #else
        #define ENVMAP_NAME "Objects.LightSpaceEnvironmentMap"
    #endif
#endif
texture EnvironmentTexture
<
    string SasBindAddress = ENVMAP_NAME;
    string UIWidget = "None";
    string ResourceType = "Cube";
>;
samplerCUBE EnvironmentTextureSampler
<
    string Texture = "EnvironmentTexture";
    string SasBindAddress = ENVMAP_NAME;
    string UIWidget = "None";
    string ResourceType = "Cube";
> = sampler_state {
    Texture = < EnvironmentTexture >;
    MinFilter = Linear;
    MagFilter = Linear;
    MipFilter = Linear;
    AddressU = Clamp;
    AddressV = Clamp;
    AddressW = Clamp;
};

// ----------------------------------------------------------------------------
// 战争迷雾贴图
// ----------------------------------------------------------------------------
texture ShroudTexture
<
    string UIWidget = "None";
    string SasBindAddress = "Terrain.Shroud.Texture";
>;
sampler2D ShroudTextureSampler
<
    string Texture = "ShroudTexture";
    string UIWidget = "None";
    string SasBindAddress = "Terrain.Shroud.Texture";
> = sampler_state {
    Texture = < ShroudTexture >;
    MinFilter = Linear;
    MagFilter = Linear;
    MipFilter = Linear;
    AddressU = Clamp;
    AddressV = Clamp;
};
#endif

// ----------------------------------------------------------------------------
// 其他参数
// ----------------------------------------------------------------------------
float Time : Time;

int NumJointsPerVertex
<
    string UIWidget = "None";
    string SasBindAddress = "Sas.Skeleton.NumJointsPerVertex";
> = 0;

bool DepthWriteEnable
<
    string UIName = "Depth Write Enable";
> = true;

bool AlphaTestEnable
<
    string UIName = "Alpha Test Enable";
> = false;

bool CullingEnable
<
    string UIName = "Culling Enable";
> = true;

#ifndef _3DSMAX_
bool HasRecolorColors
<
    string UIWidget = "None";
    string SasBindAddress = "WW3D.HasRecolorColors";
    bool ExportValue = false;
> = false;
shared float3 RecolorColor : register(vs, c0) : register(ps, c0)
<
    bool unmanaged = true;
> = float3(1, 1, 1);
#else

int ColorType
<
    string UIName = "Preview House Color";
    int UIMin = -1;
    int UIMax = 6;
>;

float3 GetColor() {
    float3 colors[7] = {
        float3(240, 215, 25),
        float3(230, 20, 20),
        float3(50, 75, 200),
        float3(20, 105, 60),
        float3(225, 115, 20),
        float3(102, 207, 248),
        float3(125, 25, 200)      
    };
    if (ColorType >= 0 && ColorType < 7) {
        return colors[ColorType];
    }
    else {
        return 0;
    }
}

#define HasRecolorColors (ColorType > -1)
#define RecolorColor GetColor() / 255
#endif

bool HasShadow
<
    string UIWidget = "None";
    string SasBindAddress = "Sas.HasShadow";
>;

shared float OpacityOverride : register(vs, c1) : register(ps, c1)
<
    bool unmanaged = true;
> = 1.0;

shared float3 TintColor : register(vs, c2) : register(ps, c2)
<
    string UIName = "Tint Color";
    string UIWidget = "Color";
    string SasBindAddress = "TintColor";
    bool unmanaged = true;
> = float3(1, 1, 1);

// 这东西现在是用不到的，但是实际上鼠标指针的 shader 会用到
// 因此在这里声明它，避免我们的 shader 以为这个没用直接把它覆盖了
// 那样将会导致鼠标指针变红或者出现一些其他奇怪的事情
shared float4 EdgeFadeOut : register(c3)
<
    bool unmanaged = true;
> = 0;

shared float3 AmbientLightColor : register(vs, c4) : register(ps, c4)
<
    bool unmanaged = true;
> = float3(0.3, 0.3, 0.3);

struct SasDirectionalLight {
    float3 Color;
    float3 Direction;
};
shared SasDirectionalLight DirectionalLight[3] : register(vs, c5) : register(ps, c5)
<
    bool unmanaged = true;
>;
// for 3ds max
#define DECLARE_DIRECTIONAL_LIGHT(description, index)       \
    float3 DirectionalLight##index##Direction : Direction   \
    <                                                       \
        string Object = "DirectionalLight" #index;          \
        string Space = "World";                             \
        string UIName = description;                        \
        int refID = index;                                  \
    > = 0.7;                                                \
    float3 DirectionalLight##index##Color : LightColor      \
    <                                                       \
        int LightRef = index;                               \
        string UIWidget = "None";                           \
    > = float3(0.57735027, 0.57735027, 0.57735027)

DECLARE_DIRECTIONAL_LIGHT("Main Directional Light", 0);
DECLARE_DIRECTIONAL_LIGHT("Light Accent #1", 1);
DECLARE_DIRECTIONAL_LIGHT("Light Accent #2", 2);
#ifdef _3DSMAX_
    #define USE_LIGHTS_FOR_PREVIEW_IN_3DS_MAX                       \
        DirectionalLight[0].Direction = DirectionalLight0Direction; \
        DirectionalLight[1].Direction = DirectionalLight1Direction; \
        DirectionalLight[2].Direction = DirectionalLight2Direction; \
        DirectionalLight[0].Color = DirectionalLight0Color;         \
        DirectionalLight[1].Color = DirectionalLight1Color;         \
        DirectionalLight[2].Color = DirectionalLight2Color
#else
    #define USE_LIGHTS_FOR_PREVIEW_IN_3DS_MAX
#endif

struct ShroudSetup {
    float4 ScaleUV_OffsetUV;
} Shroud 
#ifndef ENV_WATER
    : register(vs, c11)
#endif
<
    string UIWidget = "None";
    string SasBindAddress = "Terrain.Shroud";
>;

float4 Shadowmap_Zero_Zero_OneOverMapSize_OneOverMapSize : register(ps, c11)
<
    string UIWidget = "None";
    string SasBindAddress = "Sas.Shadow[0].Zero_Zero_OneOverMapSize_OneOverMapSize";
>;

float2 MapCellSize : register(c12)
<
    string UIWidget = "None";
    string SasBindAddress = "Terrain.Map.CellSize";
>;

shared struct PointLightSetup {
    float3 Color;
    float3 Position;
    float2 Range_Inner_Outer;
} PointLight[8] : register(c89)
<
    bool unmanaged = true;
>;

shared float4x4 ShadowMapWorldToShadow : register(c113)
<
    bool unmanaged = true;
>;

shared struct CloudSetup {
    float4 WorldPositionMultiplier_XYZZ;
    float2 CurrentOffsetUV;
} Cloud : register(c117)
<
    bool unmanaged = true;
>;

#ifndef _3DSMAX_
shared float4x4 ViewProjection : ViewProjection : register(c119)
<
    bool unmanaged = true;
>;

shared float3 EyePosition : register(c123)
<
    bool unmanaged = true;
>;
#else
float4x4 View : View;
float4x4 ViewI : ViewI;
float4x4 Projection : Projection;
#define ViewProjection mul(View, Projection)
#define EyePosition ViewI[3].xyz
#endif

float4x3 World : World : register(c124);

shared float4 WorldBones[128] : register(c128)
<
    bool unmanaged = true;
>;

int NumPointLights
<
    string SasBindAddress = "Sas.NumPointLights";
    string UIWidget = "None";
>;

//-----------------------------------------------------------------------------
// 计算战争迷雾贴图的 UV 坐标
//-----------------------------------------------------------------------------
float2 CalculateShroudCoordinates(float4 WorldPosition) {
    return (WorldPosition.xy + Shroud.ScaleUV_OffsetUV.zw) * Shroud.ScaleUV_OffsetUV.xy;
}

//-----------------------------------------------------------------------------
// 计算云的贴图的 UV 坐标
//-----------------------------------------------------------------------------
float2 CalculateCloudCoordinates(float4 WorldPosition) {
    float4 multipliedCloudUV = WorldPosition.xyzz * Cloud.WorldPositionMultiplier_XYZZ;
    return multipliedCloudUV.xy - multipliedCloudUV.zw + Cloud.CurrentOffsetUV;
}

//-----------------------------------------------------------------------------
// 计算阴影贴图的 UV 坐标
//-----------------------------------------------------------------------------
float4 CalculateShadowMapCoordinates(float4 WorldPosition) {
    static const float shadowBias = 0.0015;

    float4 shadowMapCoordinates = mul(WorldPosition, ShadowMapWorldToShadow);
    shadowMapCoordinates.xyz /= shadowMapCoordinates.w;
    shadowMapCoordinates.z -= shadowBias;
    return shadowMapCoordinates;
}

// ----------------------------------------------------------------------------
// 通过四元数来计算旋转的函数，来自 CNC3 的 Skinning.fxh
// ----------------------------------------------------------------------------
float3 Quaternion_RotateVector(float4 rotation, float3 position) {
/*	float x = rotation.w * position.x + rotation.y * position.z - rotation.z * position.y;
	float y = rotation.w * position.y + rotation.z * position.x - rotation.x * position.z;
	float z = rotation.w * position.z + rotation.x * position.y - rotation.y * position.x;
	float w = -(rotation.x * position.x + rotation.y * position.y) - rotation.z * position.z;

	float3 outPosition;
	outPosition.x = rotation.w * x - w * rotation.x + rotation.y * z - y * rotation.z;
	outPosition.y = rotation.w * y - w * rotation.y + rotation.z * x - z * rotation.x;
	outPosition.z = rotation.w * z - w * rotation.z + rotation.x * y - x * rotation.y;

	return outPosition;
*/
	
	float4 a;
	a = rotation.wwwx * position.xyzx + rotation.yzxy * position.zxyy;
	a.w = -a.w;
	a -= rotation.zxyz * position.yzxz;

	return rotation.www * a.xyz - rotation.xyz * a.www + rotation.yzx * a.zxy - rotation.zxy * a.yzx;
}

// ----------------------------------------------------------------------------
// 计算点光源的亮度随着距离的衰减
// ----------------------------------------------------------------------------
float CalculatePointLightAttenuation(float2 pointLightRange, float distanceToLightInnerRange) {
    float pointLightRangeLength = pointLightRange.y - pointLightRange.x;
    float attenuation = saturate(1 - (distanceToLightInnerRange / pointLightRangeLength));
    attenuation *= attenuation;
    return attenuation;
}

// ----------------------------------------------------------------------------
// 计算阴影
// ----------------------------------------------------------------------------
float GetShadow(float4 ShadowMapCoordinates) {
    // 暂时还不支持在 3DS Max 里使用阴影贴图，
    // 因此假如着色器被 MAX 加载、而不是被游戏加载，那么就取消阴影
#ifndef _3DSMAX_
	float2 t = ShadowMapCoordinates.xy;
		
	float depth = ShadowMapCoordinates.z;

	float4 samples = float4(
		tex2D(ShadowMapSampler, t).x,
		tex2D(ShadowMapSampler, t + Shadowmap_Zero_Zero_OneOverMapSize_OneOverMapSize.zx).x,
		tex2D(ShadowMapSampler, t + Shadowmap_Zero_Zero_OneOverMapSize_OneOverMapSize.yz).x,
		tex2D(ShadowMapSampler, t + Shadowmap_Zero_Zero_OneOverMapSize_OneOverMapSize.wz).x);
		
	bool4 bits = (samples - depth >= 0);

	return dot(1.0, bits) / 4.0;
#else
    return 1;
#endif
}

#ifndef _3DSMAX_
// ----------------------------------------------------------------------------
// 另一种计算阴影
// ----------------------------------------------------------------------------

float CalculateShadow2(float4 ShadowMapCoordinates) {
	float a = ShadowMapCoordinates.w;
	float2 t = ShadowMapCoordinates.xy / a;
		
	float depth = ShadowMapCoordinates.z / a - 0.0015;

	float4 samples = float4(
		tex2D(ShadowMapSampler, t).x,
		tex2D(ShadowMapSampler, t + Shadowmap_Zero_Zero_OneOverMapSize_OneOverMapSize.zx).x,
		tex2D(ShadowMapSampler, t + Shadowmap_Zero_Zero_OneOverMapSize_OneOverMapSize.yz).x,
		tex2D(ShadowMapSampler, t + Shadowmap_Zero_Zero_OneOverMapSize_OneOverMapSize.wz).x);
		
	bool4 bits = (samples - depth >= 0);

	return dot(1.0, bits) / 4.0;
}
#endif

// ----------------------------------------------------------------------------
// 获取云的阴影
// ----------------------------------------------------------------------------
float3 GetCloud(float2 cloudUV) {
    // 3DS Max 里应该是没有战争迷雾的，
    // 因此假如着色器被 MAX 加载、而不是被游戏加载，那么就取消战争迷雾
#ifndef _3DSMAX_
    return tex2D(CloudTextureSampler, cloudUV).xyz;
#else
    return 1;
#endif
}

// ----------------------------------------------------------------------------
// 获取战争迷雾的颜色
// ----------------------------------------------------------------------------
float3 GetShroud(float2 shroudUV) {
    // 3DS Max 里应该是没有战争迷雾的，
    // 因此假如着色器被 MAX 加载、而不是被游戏加载，那么就取消战争迷雾
#ifndef _3DSMAX_
    return tex2D(ShroudTextureSampler, shroudUV).xyz;
#else
    return 1;
#endif
}

#endif // ARMOD_SHADER_COMMON_HEADER