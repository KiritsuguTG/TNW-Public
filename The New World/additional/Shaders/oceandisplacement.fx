#include "Common.fxh"
#include "DebugDigitsDisplayer.fxh"

texture DisplacementTexture <string SasBindAddress = "Water.DisplacementTexture";>; // 2
sampler2D DisplacementTextureSampler <string Texture = "DisplacementTexture"; string SasBindAddress = "Water.DisplacementTexture";> =
sampler_state
{
    Texture = <DisplacementTexture>; // 4
    MinFilter = 2;
    MagFilter = 2;
    MipFilter = 1;
    AddressU = 3;
    AddressV = 3;
};
float DisplacementTextureSize <string SasBindAddress = "Water.DisplacementTextureSize";>;
texture StaticDisplacementTexture <string SasBindAddress = "Water.StaticDisplacementTexture";>; // 8
sampler2D StaticDisplacementTextureSampler <string Texture = "StaticDisplacementTexture"; string SasBindAddress = "Water.StaticDisplacementTexture";> =
sampler_state
{
    Texture = <StaticDisplacementTexture>; // 10
    MinFilter = 2;
    MagFilter = 2;
    MipFilter = 2;
    AddressU = 1;
    AddressV = 1;
};
row_major float4x4 ViewI : ViewInverse;
row_major float4x4 ProjectionI : ProjectionInverse;

struct DebugDisplayDisplacement_VertexShader2_Output
{
    float4 position : POSITION;
    float2 texcoord : TEXCOORD;
};

// DebugDisplayDisplacement_PixelShader1 Pixel_3_0 Has PRES False
float4 DebugDisplayDisplacement_PixelShader1(DebugDisplayDisplacement_VertexShader2_Output In) : COLOR
{
    float4 out_color;
    float4 temp0;
    // def c0, 0.5, 1, 0, 0
    // dcl_texcoord v0.xy
    // dcl_2d s0
    // texld r0, v0, s0
    temp0 = tex2D(DisplacementTextureSampler, In.texcoord.xy);
    // mad oC0.xyz, r0, c0.x, c0.x
    out_color.xyz = temp0.xyz * 2/* * float3(0.5, 0.5, 0.5) */ + float3(0.5, 0.5, 0.5);
    out_color.xyz += GetDigit(In.texcoord * 8, Time, 4, 3).xyz;

    float2 p00 = mul(ProjectionI, float4(0, 0, 0, 1)).xy;
    float2 p11 = mul(ProjectionI, float4(1, 1, 0, 1)).xy;
    float2 diff = p11 - p00;
    float area = diff.x * diff.y;
    out_color.xyz += GetDigit((In.texcoord - float2(0.5, 0)) * float2(3, 8), area, 10, 2).yxz;
    out_color.xyz += GetDigit((In.texcoord - float2(0, 0.5)) * 8, area / 700000, 4, 3).yxz;
    // mov oC0.w, c0.y
    out_color.w = float1(1);
    // 

    return out_color;
}

// DebugDisplayDisplacement_VertexShader2 Vertex_3_0 Has PRES False
struct DebugDisplayDisplacement_VertexShader2_Input
{
    float4 position : POSITION;
    float4 texcoord : TEXCOORD;
};

DebugDisplayDisplacement_VertexShader2_Output DebugDisplayDisplacement_VertexShader2(DebugDisplayDisplacement_VertexShader2_Input i)
{
    DebugDisplayDisplacement_VertexShader2_Output o;
    // def c0, 0.5, 0.6666667, 0, 1
    // dcl_position v0
    // dcl_texcoord v1
    // dcl_position o0
    // dcl_texcoord o1.xy
    // mul o0.xyz, c0, v0
    o.position.xyz = float3(0.5, 0.6666667, 0) * i.position.xyz;
    o.position.xy += float2(0.45, 0.3);
    // mov o0.w, c0.w
    o.position.w = float1(1);
    // mov o1.xy, v1
    o.texcoord = i.texcoord;

    // 

    return o;
}

// StaticDisplacement_PixelShader3 Pixel_3_0 Has PRES True
float4 StaticDisplacement_PixelShader3(float2 texcoord1 : TEXCOORD1) : COLOR
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
        // mul c11.x, c0.x, (45)
        expr11.x = Time.x * (45);
    }

    float4 out_color;
    float4 temp0, temp1, temp2;
    // def c0, 0.0005, 2, -1, 0.06
    // def c1, -0.9659202, 0.2588402, 0, 0.9659202
    // dcl_texcoord1 v0.xy
    // dcl_2d s0
    // add r0.xy, v0, v0
    temp0.xy = texcoord1.xy + texcoord1.xy;
    // dp2add r0.w, r0, c1, c1.z
    temp0.w = dot(temp0.xy, float2(-0.96592015, 0.25884023)) + float1(0);
    // mov r1.xyw, c1
    temp1.xyw = float3(-0.96592015, 0.25884023, 0.96592015);
    // dp2add r0.z, r0, r1.ywzw, c11.x
    temp0.z = dot(temp0.xy, temp1.yw) + expr11.x;
    // mul r0.zw, r0, c0.x
    temp0.zw = temp0.zw * float2(0.0005, 0.0005);
    // texld r2, r0.zwzw, s0
    temp2 = tex2D(StaticDisplacementTextureSampler, temp0.zw);
    // mad r0.z, r2.w, c0.y, c0.z
    temp0.z = temp2.w * float1(2) + float1(-1);
    // dp2add r1.w, r0, c1.wyzw, c1.z
    temp1.w = dot(temp0.xy, float2(0.96592015, 0.25884023)) + float1(0);
    // dp2add r1.z, r0, r1.yxzw, c11.x
    temp1.z = dot(temp0.xy, temp1.yx) + expr11.x;
    // mul r0.xy, r1.zwzw, c0.x
    temp0.xy = temp1.zw * float2(0.0005, 0.0005);
    // texld r1, r0, s0
    temp1 = tex2D(StaticDisplacementTextureSampler, temp0.xy);
    // mad r0.x, r1.w, c0.y, r0.z
    temp0.x = temp1.w * float1(2) + temp0.z;
    // add r0.x, r0.x, c0.z
    temp0.x = temp0.x + float1(-1);
    // mul oC0.xyz, r0.x, c0.w
    out_color.xyz = temp0.xxx * float3(0.06, 0.06, 0.06);
    // mov oC0.w, c1.z
    out_color.w = float1(0);
    // 

    return out_color;
}

// StaticDisplacement_VertexShader4 Vertex_3_0 Has PRES True
struct StaticDisplacement_VertexShader4_Input
{
    float4 position : POSITION;
    float4 texcoord : TEXCOORD;
};

struct StaticDisplacement_VertexShader4_Output
{
    float4 position : POSITION;
    float2 texcoord : TEXCOORD;
    float2 texcoord1 : TEXCOORD1;
};

StaticDisplacement_VertexShader4_Output StaticDisplacement_VertexShader4(StaticDisplacement_VertexShader4_Input i)
{
    /*
    PRSI
      OutputRegisterOffset: 11
      Unknown1: 0
      Unknown2: 0
      OutputRegisterCount: 2
      Unknown3: 0
      Unknown4: 0
      Unknown5: 11
      Unknown6: 2
      Mappings: 1
        0 - ConstOutput: 0 ConstInput 0
    
    */
    float4 expr11;
    float4 expr12;
    {
        float4 temp0;
        float4 temp1;
        float4 temp2;
        // Expression_2_1
        // mul r0.x, c4.x, c0.x
        temp0.x = (ViewI._m00_m10_m20_m30).x * (ProjectionI._m00_m10_m20_m30).x;
        // mul r0.y, c4.x, c0.y
        temp0.y = (ViewI._m00_m10_m20_m30).x * (ProjectionI._m00_m10_m20_m30).y;
        // mul r0.z, c4.x, c0.w
        temp0.z = (ViewI._m00_m10_m20_m30).x * (ProjectionI._m00_m10_m20_m30).w;
        // mul r1.x, c4.y, c1.x
        temp1.x = (ViewI._m00_m10_m20_m30).y * (ProjectionI._m01_m11_m21_m31).x;
        // mul r1.y, c4.y, c1.y
        temp1.y = (ViewI._m00_m10_m20_m30).y * (ProjectionI._m01_m11_m21_m31).y;
        // mul r1.z, c4.y, c1.w
        temp1.z = (ViewI._m00_m10_m20_m30).y * (ProjectionI._m01_m11_m21_m31).w;
        // add r2.xyz, r0.xyz, r1.xyz
        temp2.xyz = temp0.xyz + temp1.xyz;
        // mul r0.x, c4.z, c2.x
        temp0.x = (ViewI._m00_m10_m20_m30).z * (ProjectionI._m02_m12_m22_m32).x;
        // mul r0.y, c4.z, c2.y
        temp0.y = (ViewI._m00_m10_m20_m30).z * (ProjectionI._m02_m12_m22_m32).y;
        // mul r0.z, c4.z, c2.w
        temp0.z = (ViewI._m00_m10_m20_m30).z * (ProjectionI._m02_m12_m22_m32).w;
        // add r1.xyz, r2.xyz, r0.xyz
        temp1.xyz = temp2.xyz + temp0.xyz;
        // mul r0.x, c4.w, c3.x
        temp0.x = (ViewI._m00_m10_m20_m30).w * (ProjectionI._m03_m13_m23_m33).x;
        // mul r0.y, c4.w, c3.y
        temp0.y = (ViewI._m00_m10_m20_m30).w * (ProjectionI._m03_m13_m23_m33).y;
        // mul r0.z, c4.w, c3.w
        temp0.z = (ViewI._m00_m10_m20_m30).w * (ProjectionI._m03_m13_m23_m33).w;
        // add c11.xyz, r1.xyz, r0.xyz
        expr11.xyz = temp1.xyz + temp0.xyz;
        // mul r0.x, c5.x, c0.x
        temp0.x = (ViewI._m01_m11_m21_m31).x * (ProjectionI._m00_m10_m20_m30).x;
        // mul r0.y, c5.x, c0.y
        temp0.y = (ViewI._m01_m11_m21_m31).x * (ProjectionI._m00_m10_m20_m30).y;
        // mul r0.z, c5.x, c0.w
        temp0.z = (ViewI._m01_m11_m21_m31).x * (ProjectionI._m00_m10_m20_m30).w;
        // mul r1.x, c5.y, c1.x
        temp1.x = (ViewI._m01_m11_m21_m31).y * (ProjectionI._m01_m11_m21_m31).x;
        // mul r1.y, c5.y, c1.y
        temp1.y = (ViewI._m01_m11_m21_m31).y * (ProjectionI._m01_m11_m21_m31).y;
        // mul r1.z, c5.y, c1.w
        temp1.z = (ViewI._m01_m11_m21_m31).y * (ProjectionI._m01_m11_m21_m31).w;
        // add r2.xyz, r0.xyz, r1.xyz
        temp2.xyz = temp0.xyz + temp1.xyz;
        // mul r0.x, c5.z, c2.x
        temp0.x = (ViewI._m01_m11_m21_m31).z * (ProjectionI._m02_m12_m22_m32).x;
        // mul r0.y, c5.z, c2.y
        temp0.y = (ViewI._m01_m11_m21_m31).z * (ProjectionI._m02_m12_m22_m32).y;
        // mul r0.z, c5.z, c2.w
        temp0.z = (ViewI._m01_m11_m21_m31).z * (ProjectionI._m02_m12_m22_m32).w;
        // add r1.xyz, r2.xyz, r0.xyz
        temp1.xyz = temp2.xyz + temp0.xyz;
        // mul r0.x, c5.w, c3.x
        temp0.x = (ViewI._m01_m11_m21_m31).w * (ProjectionI._m03_m13_m23_m33).x;
        // mul r0.y, c5.w, c3.y
        temp0.y = (ViewI._m01_m11_m21_m31).w * (ProjectionI._m03_m13_m23_m33).y;
        // mul r0.z, c5.w, c3.w
        temp0.z = (ViewI._m01_m11_m21_m31).w * (ProjectionI._m03_m13_m23_m33).w;
        // add c12.xyz, r1.xyz, r0.xyz
        expr12.xyz = temp1.xyz + temp0.xyz;
    }

    StaticDisplacement_VertexShader4_Output o;
    float3 temp0;
    // def c0, 1, -1, 0, 2
    // dcl_position v0
    // dcl_texcoord v1
    // dcl_position o0
    // dcl_texcoord o1.xy
    // dcl_texcoord1 o2.xy
    // mad r0.xy, v1, c0, c0.zxzw
    temp0.xy = i.texcoord.xy * float2(1, -1) + float2(0, 1);
    // mad r0.xy, r0, c0.w, c0.y
    temp0.xy = temp0.xy * float2(2, 2) + float2(-1, -1);
    // mov r0.z, c0.x
    temp0.z = float1(1);
    // dp3 o2.x, r0, c11
    o.texcoord1.x = dot(temp0.xyz, expr11.xyz);
    // dp3 o2.y, r0, c12
    o.texcoord1.y = dot(temp0.xyz, expr12.xyz);
    // mov o0.xyz, v0
    o.position.xyz = i.position.xyz;
    // mov o0.w, c0.x
    o.position.w = float1(1);
    // mov o1.xy, v1
    o.texcoord = i.texcoord;
    // 

    return o;
}

// BlurV_PixelShader5 Pixel_3_0 Has PRES True
float4 BlurV_PixelShader5(float2 texcoord : TEXCOORD) : COLOR
{
    /*
    PRSI
      OutputRegisterOffset: 11
      Unknown1: 0
      Unknown2: 0
      OutputRegisterCount: 18
      Unknown3: 0
      Unknown4: 0
      Unknown5: 11
      Unknown6: 18
      Mappings: 1
        0 - ConstOutput: 0 ConstInput 0
    
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
    float4 expr20;
    float4 expr21;
    float4 expr22;
    float4 expr23;
    float4 expr24;
    float4 expr25;
    float4 expr26;
    float4 expr27;
    float4 expr28;
    {
        float4 temp0;
        // Expression_2_1
        // rcp r0.x, c0.x
        temp0.x = 1.0f / (DisplacementTextureSize.x);
        // mul c11.xy, r0.x, (-0, -9)
        expr11.xy = temp0.x * float2(-0, -9);
        // mul c12.x, r0.x, (-0)
        expr12.x = temp0.x * (-0);
        // mul c12.y, r0.x, (-8)
        expr12.y = temp0.x * (-8);
        // mul c13.x, r0.x, (-0)
        expr13.x = temp0.x * (-0);
        // mul c13.y, r0.x, (-7)
        expr13.y = temp0.x * (-7);
        // mul c14.xy, r0.x, (-0, -6)
        expr14.xy = temp0.x * float2(-0, -6);
        // mul c15.x, r0.x, (-0)
        expr15.x = temp0.x * (-0);
        // mul c15.y, r0.x, (-5)
        expr15.y = temp0.x * (-5);
        // mul c16.x, r0.x, (-0)
        expr16.x = temp0.x * (-0);
        // mul c16.y, r0.x, (-4)
        expr16.y = temp0.x * (-4);
        // mul c17.xy, r0.x, (-0, -3)
        expr17.xy = temp0.x * float2(-0, -3);
        // mul c18.x, r0.x, (-0)
        expr18.x = temp0.x * (-0);
        // mul c18.y, r0.x, (-2)
        expr18.y = temp0.x * (-2);
        // mul c19.x, r0.x, (-0)
        expr19.x = temp0.x * (-0);
        // mul c19.y, r0.x, (-1)
        expr19.y = temp0.x * (-1);
        // mul c20.xy, r0.x, (0, 1)
        expr20.xy = temp0.x * float2(0, 1);
        // mul c21.x, r0.x, (0)
        expr21.x = temp0.x * (0);
        // mul c21.y, r0.x, (2)
        expr21.y = temp0.x * (2);
        // mul c22.x, r0.x, (0)
        expr22.x = temp0.x * (0);
        // mul c22.y, r0.x, (3)
        expr22.y = temp0.x * (3);
        // mul c23.xy, r0.x, (0, 4)
        expr23.xy = temp0.x * float2(0, 4);
        // mul c24.x, r0.x, (0)
        expr24.x = temp0.x * (0);
        // mul c24.y, r0.x, (5)
        expr24.y = temp0.x * (5);
        // mul c25.x, r0.x, (0)
        expr25.x = temp0.x * (0);
        // mul c25.y, r0.x, (6)
        expr25.y = temp0.x * (6);
        // mul c26.xy, r0.x, (0, 7)
        expr26.xy = temp0.x * float2(0, 7);
        // mul c27.x, r0.x, (0)
        expr27.x = temp0.x * (0);
        // mul c27.y, r0.x, (8)
        expr27.y = temp0.x * (8);
        // mul c28.x, r0.x, (0)
        expr28.x = temp0.x * (0);
        // mul c28.y, r0.x, (9)
        expr28.y = temp0.x * (9);
    }

    float4 out_color;
    float4 temp0, temp1;
    // def c0, 0.09549151, 0.561285, 0.02447174, 0.07562184
    // def c1, 0.2061074, 1.667444, 0.3454915, 3.285819
    // def c2, 0.5, -5, 0.3454915, -3.285819
    // def c3, 0.5, 5, 0.6545085, 6.224745
    // def c4, 0.9755282, 3.014548, 1, -0
    // def c5, 0.7938926, 6.422726, 0.9045085, 5.316567
    // def c6, 0.9755282, -3.014548, 0.9045085, -5.316567
    // def c7, 0.7938926, -6.422726, 0.6545085, -6.224745
    // def c8, 0.2061074, -1.667444, 0.09549151, -0.561285
    // def c9, 0.02447174, -0.07562184, 0.02380952, 0.04761905
    // dcl_texcoord v0.xy
    // dcl_2d s0
    // add r0.xy, c12, v0
    temp0.xy = expr12.xy + texcoord.xy;
    // texld r0, r0, s0
    temp0 = tex2D(DisplacementTextureSampler, temp0.xy);
    // mul r0.xyz, r0, c0.xyxw
    temp0.xyz = temp0.xyz * float3(0.095491506, 0.56128496, 0.095491506);
    // add r1.xy, c11, v0
    temp1.xy = expr11.xy + texcoord.xy;
    // texld r1, r1, s0
    temp1 = tex2D(DisplacementTextureSampler, temp1.xy);
    // mad r0.xyz, r1, c0.zwzw, r0
    temp0.xyz = temp1.xyz * float3(0.024471743, 0.07562184, 0.024471743) + temp0.xyz;
    // add r1.xy, c13, v0
    temp1.xy = expr13.xy + texcoord.xy;
    // texld r1, r1, s0
    temp1 = tex2D(DisplacementTextureSampler, temp1.xy);
    // mad r0.xyz, r1, c1.xyxw, r0
    temp0.xyz = temp1.xyz * float3(0.20610738, 1.6674438, 0.20610738) + temp0.xyz;
    // add r1.xy, c14, v0
    temp1.xy = expr14.xy + texcoord.xy;
    // texld r1, r1, s0
    temp1 = tex2D(DisplacementTextureSampler, temp1.xy);
    // mad r0.xyz, r1, c1.zwzw, r0
    temp0.xyz = temp1.xyz * float3(0.3454915, 3.2858193, 0.3454915) + temp0.xyz;
    // add r1.xy, c15, v0
    temp1.xy = expr15.xy + texcoord.xy;
    // texld r1, r1, s0
    temp1 = tex2D(DisplacementTextureSampler, temp1.xy);
    // mad r0.xyz, r1, c3.xyxw, r0
    temp0.xyz = temp1.xyz * float3(0.5, 5, 0.5) + temp0.xyz;
    // add r1.xy, c16, v0
    temp1.xy = expr16.xy + texcoord.xy;
    // texld r1, r1, s0
    temp1 = tex2D(DisplacementTextureSampler, temp1.xy);
    // mad r0.xyz, r1, c3.zwzw, r0
    temp0.xyz = temp1.xyz * float3(0.6545085, 6.2247453, 0.6545085) + temp0.xyz;
    // add r1.xy, c17, v0
    temp1.xy = expr17.xy + texcoord.xy;
    // texld r1, r1, s0
    temp1 = tex2D(DisplacementTextureSampler, temp1.xy);
    // mad r0.xyz, r1, c5.xyxw, r0
    temp0.xyz = temp1.xyz * float3(0.7938926, 6.422726, 0.7938926) + temp0.xyz;
    // add r1.xy, c18, v0
    temp1.xy = expr18.xy + texcoord.xy;
    // texld r1, r1, s0
    temp1 = tex2D(DisplacementTextureSampler, temp1.xy);
    // mad r0.xyz, r1, c5.zwzw, r0
    temp0.xyz = temp1.xyz * float3(0.9045085, 5.3165674, 0.9045085) + temp0.xyz;
    // add r1.xy, c19, v0
    temp1.xy = expr19.xy + texcoord.xy;
    // texld r1, r1, s0
    temp1 = tex2D(DisplacementTextureSampler, temp1.xy);
    // mad r0.xyz, r1, c4.xyxw, r0
    temp0.xyz = temp1.xyz * float3(0.97552824, 3.014548, 0.97552824) + temp0.xyz;
    // texld r1, v0, s0
    temp1 = tex2D(DisplacementTextureSampler, texcoord.xy);
    // mad r0.xyz, r1, c4.zwzw, r0
    temp0.xyz = temp1.xyz * float3(1, -0, 1) + temp0.xyz;
    // add r1.xy, c20, v0
    temp1.xy = expr20.xy + texcoord.xy;
    // texld r1, r1, s0
    temp1 = tex2D(DisplacementTextureSampler, temp1.xy);
    // mad r0.xyz, r1, c6.xyxw, r0
    temp0.xyz = temp1.xyz * float3(0.97552824, -3.014548, 0.97552824) + temp0.xyz;
    // add r1.xy, c21, v0
    temp1.xy = expr21.xy + texcoord.xy;
    // texld r1, r1, s0
    temp1 = tex2D(DisplacementTextureSampler, temp1.xy);
    // mad r0.xyz, r1, c6.zwzw, r0
    temp0.xyz = temp1.xyz * float3(0.9045085, -5.3165674, 0.9045085) + temp0.xyz;
    // add r1.xy, c22, v0
    temp1.xy = expr22.xy + texcoord.xy;
    // texld r1, r1, s0
    temp1 = tex2D(DisplacementTextureSampler, temp1.xy);
    // mad r0.xyz, r1, c7.xyxw, r0
    temp0.xyz = temp1.xyz * float3(0.7938926, -6.422726, 0.7938926) + temp0.xyz;
    // add r1.xy, c23, v0
    temp1.xy = expr23.xy + texcoord.xy;
    // texld r1, r1, s0
    temp1 = tex2D(DisplacementTextureSampler, temp1.xy);
    // mad r0.xyz, r1, c7.zwzw, r0
    temp0.xyz = temp1.xyz * float3(0.6545085, -6.2247453, 0.6545085) + temp0.xyz;
    // add r1.xy, c24, v0
    temp1.xy = expr24.xy + texcoord.xy;
    // texld r1, r1, s0
    temp1 = tex2D(DisplacementTextureSampler, temp1.xy);
    // mad r0.xyz, r1, c2.xyxw, r0
    temp0.xyz = temp1.xyz * float3(0.5, -5, 0.5) + temp0.xyz;
    // add r1.xy, c25, v0
    temp1.xy = expr25.xy + texcoord.xy;
    // texld r1, r1, s0
    temp1 = tex2D(DisplacementTextureSampler, temp1.xy);
    // mad r0.xyz, r1, c2.zwzw, r0
    temp0.xyz = temp1.xyz * float3(0.3454915, -3.2858193, 0.3454915) + temp0.xyz;
    // add r1.xy, c26, v0
    temp1.xy = expr26.xy + texcoord.xy;
    // texld r1, r1, s0
    temp1 = tex2D(DisplacementTextureSampler, temp1.xy);
    // mad r0.xyz, r1, c8.xyxw, r0
    temp0.xyz = temp1.xyz * float3(0.20610738, -1.6674438, 0.20610738) + temp0.xyz;
    // add r1.xy, c27, v0
    temp1.xy = expr27.xy + texcoord.xy;
    // texld r1, r1, s0
    temp1 = tex2D(DisplacementTextureSampler, temp1.xy);
    // mad r0.xyz, r1, c8.zwzw, r0
    temp0.xyz = temp1.xyz * float3(0.095491506, -0.56128496, 0.095491506) + temp0.xyz;
    // add r1.xy, c28, v0
    temp1.xy = expr28.xy + texcoord.xy;
    // texld r1, r1, s0
    temp1 = tex2D(DisplacementTextureSampler, temp1.xy);
    // mad r0.xyz, r1, c9.xyxw, r0
    temp0.xyz = temp1.xyz * float3(0.024471743, -0.07562184, 0.024471743) + temp0.xyz;
    // mul oC0.xyz, r0, c9.zzww
    out_color.xyz = temp0.xyz * float3(0.023809524, 0.023809524, 0.04761905);
    // mov oC0.w, -c4.w
    out_color.w = float1(0);
    //

    float2 edgeDistances = min(texcoord, 1 - texcoord);
    float edgeFactor = saturate(min(edgeDistances.x, edgeDistances.y) * 32);
    // edgeFactor = 0.01 + (2.97 - 1.98 * edgeFactor) * edgeFactor * edgeFactor;
    edgeFactor = edgeFactor * edgeFactor * (3 - 2 * edgeFactor);
    out_color.xyz *= edgeFactor;

    return out_color;
}

// BlurV_VertexShader6 Vertex_3_0 Has PRES False
struct BlurV_VertexShader6_Input
{
    float4 position : POSITION;
    float4 texcoord : TEXCOORD;
};

struct BlurV_VertexShader6_Output
{
    float4 position : POSITION;
    float2 texcoord : TEXCOORD;
};

BlurV_VertexShader6_Output BlurV_VertexShader6(BlurV_VertexShader6_Input i)
{
    BlurV_VertexShader6_Output o;
    // def c0, 1, 0, 0, 0
    // dcl_position v0
    // dcl_texcoord v1
    // dcl_position o0
    // dcl_texcoord o1.xy
    // mov o0.xyz, v0
    o.position.xyz = i.position.xyz;
    // mov o0.w, c0.x
    o.position.w = float1(1);
    // mov o1.xy, v1
    o.texcoord = i.texcoord;
    // 

    return o;
}

// BlurU_PixelShader7 Pixel_3_0 Has PRES True
float4 BlurU_PixelShader7(float2 texcoord : TEXCOORD) : COLOR
{
    /*
    PRSI
      OutputRegisterOffset: 11
      Unknown1: 0
      Unknown2: 0
      OutputRegisterCount: 18
      Unknown3: 0
      Unknown4: 0
      Unknown5: 11
      Unknown6: 18
      Mappings: 1
        0 - ConstOutput: 0 ConstInput 0
    
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
    float4 expr20;
    float4 expr21;
    float4 expr22;
    float4 expr23;
    float4 expr24;
    float4 expr25;
    float4 expr26;
    float4 expr27;
    float4 expr28;
    {
        float4 temp0;
        // Expression_2_1
        // rcp r0.x, c0.x
        temp0.x = 1.0f / (DisplacementTextureSize.x);
        // mul c11.xy, r0.x, (-9, -0)
        expr11.xy = temp0.x * float2(-9, -0);
        // mul c12.x, r0.x, (-8)
        expr12.x = temp0.x * (-8);
        // mul c12.y, r0.x, (-0)
        expr12.y = temp0.x * (-0);
        // mul c13.x, r0.x, (-7)
        expr13.x = temp0.x * (-7);
        // mul c13.y, r0.x, (-0)
        expr13.y = temp0.x * (-0);
        // mul c14.xy, r0.x, (-6, -0)
        expr14.xy = temp0.x * float2(-6, -0);
        // mul c15.x, r0.x, (-5)
        expr15.x = temp0.x * (-5);
        // mul c15.y, r0.x, (-0)
        expr15.y = temp0.x * (-0);
        // mul c16.x, r0.x, (-4)
        expr16.x = temp0.x * (-4);
        // mul c16.y, r0.x, (-0)
        expr16.y = temp0.x * (-0);
        // mul c17.xy, r0.x, (-3, -0)
        expr17.xy = temp0.x * float2(-3, -0);
        // mul c18.x, r0.x, (-2)
        expr18.x = temp0.x * (-2);
        // mul c18.y, r0.x, (-0)
        expr18.y = temp0.x * (-0);
        // mul c19.x, r0.x, (-1)
        expr19.x = temp0.x * (-1);
        // mul c19.y, r0.x, (-0)
        expr19.y = temp0.x * (-0);
        // mul c20.xy, r0.x, (1, 0)
        expr20.xy = temp0.x * float2(1, 0);
        // mul c21.x, r0.x, (2)
        expr21.x = temp0.x * (2);
        // mul c21.y, r0.x, (0)
        expr21.y = temp0.x * (0);
        // mul c22.x, r0.x, (3)
        expr22.x = temp0.x * (3);
        // mul c22.y, r0.x, (0)
        expr22.y = temp0.x * (0);
        // mul c23.xy, r0.x, (4, 0)
        expr23.xy = temp0.x * float2(4, 0);
        // mul c24.x, r0.x, (5)
        expr24.x = temp0.x * (5);
        // mul c24.y, r0.x, (0)
        expr24.y = temp0.x * (0);
        // mul c25.x, r0.x, (6)
        expr25.x = temp0.x * (6);
        // mul c25.y, r0.x, (0)
        expr25.y = temp0.x * (0);
        // mul c26.xy, r0.x, (7, 0)
        expr26.xy = temp0.x * float2(7, 0);
        // mul c27.x, r0.x, (8)
        expr27.x = temp0.x * (8);
        // mul c27.y, r0.x, (0)
        expr27.y = temp0.x * (0);
        // mul c28.x, r0.x, (9)
        expr28.x = temp0.x * (9);
        // mul c28.y, r0.x, (0)
        expr28.y = temp0.x * (0);
    }

    float4 out_color;
    float4 temp0, temp1;
    // def c0, 0.561285, 0.09549151, 0.07562184, 0.02447174
    // def c1, 3.014548, 0.9755282, -0, 1
    // def c2, 1.667444, 0.2061074, 3.285819, 0.3454915
    // def c3, 5, 0.5, 6.224745, 0.6545085
    // def c4, 6.422726, 0.7938926, 5.316567, 0.9045085
    // def c5, -3.014548, 0.9755282, -5.316567, 0.9045085
    // def c6, -6.422726, 0.7938926, -6.224745, 0.6545085
    // def c7, -5, 0.5, -3.285819, 0.3454915
    // def c8, -1.667444, 0.2061074, -0.561285, 0.09549151
    // def c9, -0.07562184, 0.02447174, 0.02380952, 0.04761905
    // dcl_texcoord v0.xy
    // dcl_2d s0
    // add r0.xy, c12, v0
    temp0.xy = expr12.xy + texcoord.xy;
    // texld r0, r0, s0
    temp0 = tex2D(DisplacementTextureSampler, temp0.xy);
    // mul r0.xyz, r0, c0.xyyw
    temp0.xyz = temp0.xyz * float3(0.56128496, 0.095491506, 0.095491506);
    // add r1.xy, c11, v0
    temp1.xy = expr11.xy + texcoord.xy;
    // texld r1, r1, s0
    temp1 = tex2D(DisplacementTextureSampler, temp1.xy);
    // mad r0.xyz, r1, c0.zwww, r0
    temp0.xyz = temp1.xyz * float3(0.07562184, 0.024471743, 0.024471743) + temp0.xyz;
    // add r1.xy, c13, v0
    temp1.xy = expr13.xy + texcoord.xy;
    // texld r1, r1, s0
    temp1 = tex2D(DisplacementTextureSampler, temp1.xy);
    // mad r0.xyz, r1, c2.xyyw, r0
    temp0.xyz = temp1.xyz * float3(1.6674438, 0.20610738, 0.20610738) + temp0.xyz;
    // add r1.xy, c14, v0
    temp1.xy = expr14.xy + texcoord.xy;
    // texld r1, r1, s0
    temp1 = tex2D(DisplacementTextureSampler, temp1.xy);
    // mad r0.xyz, r1, c2.zwww, r0
    temp0.xyz = temp1.xyz * float3(3.2858193, 0.3454915, 0.3454915) + temp0.xyz;
    // add r1.xy, c15, v0
    temp1.xy = expr15.xy + texcoord.xy;
    // texld r1, r1, s0
    temp1 = tex2D(DisplacementTextureSampler, temp1.xy);
    // mad r0.xyz, r1, c3.xyyw, r0
    temp0.xyz = temp1.xyz * float3(5, 0.5, 0.5) + temp0.xyz;
    // add r1.xy, c16, v0
    temp1.xy = expr16.xy + texcoord.xy;
    // texld r1, r1, s0
    temp1 = tex2D(DisplacementTextureSampler, temp1.xy);
    // mad r0.xyz, r1, c3.zwww, r0
    temp0.xyz = temp1.xyz * float3(6.2247453, 0.6545085, 0.6545085) + temp0.xyz;
    // add r1.xy, c17, v0
    temp1.xy = expr17.xy + texcoord.xy;
    // texld r1, r1, s0
    temp1 = tex2D(DisplacementTextureSampler, temp1.xy);
    // mad r0.xyz, r1, c4.xyyw, r0
    temp0.xyz = temp1.xyz * float3(6.422726, 0.7938926, 0.7938926) + temp0.xyz;
    // add r1.xy, c18, v0
    temp1.xy = expr18.xy + texcoord.xy;
    // texld r1, r1, s0
    temp1 = tex2D(DisplacementTextureSampler, temp1.xy);
    // mad r0.xyz, r1, c4.zwww, r0
    temp0.xyz = temp1.xyz * float3(5.3165674, 0.9045085, 0.9045085) + temp0.xyz;
    // add r1.xy, c19, v0
    temp1.xy = expr19.xy + texcoord.xy;
    // texld r1, r1, s0
    temp1 = tex2D(DisplacementTextureSampler, temp1.xy);
    // mad r0.xyz, r1, c1.xyyw, r0
    temp0.xyz = temp1.xyz * float3(3.014548, 0.97552824, 0.97552824) + temp0.xyz;
    // texld r1, v0, s0
    temp1 = tex2D(DisplacementTextureSampler, texcoord.xy);
    // mad r0.xyz, r1, c1.zwww, r0
    temp0.xyz = temp1.xyz * float3(-0, 1, 1) + temp0.xyz;
    // add r1.xy, c20, v0
    temp1.xy = expr20.xy + texcoord.xy;
    // texld r1, r1, s0
    temp1 = tex2D(DisplacementTextureSampler, temp1.xy);
    // mad r0.xyz, r1, c5.xyyw, r0
    temp0.xyz = temp1.xyz * float3(-3.014548, 0.97552824, 0.97552824) + temp0.xyz;
    // add r1.xy, c21, v0
    temp1.xy = expr21.xy + texcoord.xy;
    // texld r1, r1, s0
    temp1 = tex2D(DisplacementTextureSampler, temp1.xy);
    // mad r0.xyz, r1, c5.zwww, r0
    temp0.xyz = temp1.xyz * float3(-5.3165674, 0.9045085, 0.9045085) + temp0.xyz;
    // add r1.xy, c22, v0
    temp1.xy = expr22.xy + texcoord.xy;
    // texld r1, r1, s0
    temp1 = tex2D(DisplacementTextureSampler, temp1.xy);
    // mad r0.xyz, r1, c6.xyyw, r0
    temp0.xyz = temp1.xyz * float3(-6.422726, 0.7938926, 0.7938926) + temp0.xyz;
    // add r1.xy, c23, v0
    temp1.xy = expr23.xy + texcoord.xy;
    // texld r1, r1, s0
    temp1 = tex2D(DisplacementTextureSampler, temp1.xy);
    // mad r0.xyz, r1, c6.zwww, r0
    temp0.xyz = temp1.xyz * float3(-6.2247453, 0.6545085, 0.6545085) + temp0.xyz;
    // add r1.xy, c24, v0
    temp1.xy = expr24.xy + texcoord.xy;
    // texld r1, r1, s0
    temp1 = tex2D(DisplacementTextureSampler, temp1.xy);
    // mad r0.xyz, r1, c7.xyyw, r0
    temp0.xyz = temp1.xyz * float3(-5, 0.5, 0.5) + temp0.xyz;
    // add r1.xy, c25, v0
    temp1.xy = expr25.xy + texcoord.xy;
    // texld r1, r1, s0
    temp1 = tex2D(DisplacementTextureSampler, temp1.xy);
    // mad r0.xyz, r1, c7.zwww, r0
    temp0.xyz = temp1.xyz * float3(-3.2858193, 0.3454915, 0.3454915) + temp0.xyz;
    // add r1.xy, c26, v0
    temp1.xy = expr26.xy + texcoord.xy;
    // texld r1, r1, s0
    temp1 = tex2D(DisplacementTextureSampler, temp1.xy);
    // mad r0.xyz, r1, c8.xyyw, r0
    temp0.xyz = temp1.xyz * float3(-1.6674438, 0.20610738, 0.20610738) + temp0.xyz;
    // add r1.xy, c27, v0
    temp1.xy = expr27.xy + texcoord.xy;
    // texld r1, r1, s0
    temp1 = tex2D(DisplacementTextureSampler, temp1.xy);
    // mad r0.xyz, r1, c8.zwww, r0
    temp0.xyz = temp1.xyz * float3(-0.56128496, 0.095491506, 0.095491506) + temp0.xyz;
    // add r1.xy, c28, v0
    temp1.xy = expr28.xy + texcoord.xy;
    // texld r1, r1, s0
    temp1 = tex2D(DisplacementTextureSampler, temp1.xy);
    // mad r0.xyz, r1, c9.xyyw, r0
    temp0.xyz = temp1.xyz * float3(-0.07562184, 0.024471743, 0.024471743) + temp0.xyz;
    // mul oC0.xyz, r0, c9.zzww
    out_color.xyz = temp0.xyz * float3(0.023809524, 0.023809524, 0.04761905);
    // mov oC0.w, -c1.z
    out_color.w = float1(0);
    // 

    return out_color;
}

// BlurU_VertexShader8 Vertex_3_0 Has PRES False
struct BlurU_VertexShader8_Input
{
    float4 position : POSITION;
    float4 texcoord : TEXCOORD;
};

struct BlurU_VertexShader8_Output
{
    float4 position : POSITION;
    float2 texcoord : TEXCOORD;
};

BlurU_VertexShader8_Output BlurU_VertexShader8(BlurU_VertexShader8_Input i)
{
    BlurU_VertexShader8_Output o;
    // def c0, 1, 0, 0, 0
    // dcl_position v0
    // dcl_texcoord v1
    // dcl_position o0
    // dcl_texcoord o1.xy
    // mov o0.xyz, v0
    o.position.xyz = i.position.xyz;
    // mov o0.w, c0.x
    o.position.w = float1(1);
    // mov o1.xy, v1
    o.texcoord = i.texcoord;
    // 

    return o;
}

// RenderWaveParticles_PixelShader9 Pixel_2_0 Has PRES False
float4 RenderWaveParticles_PixelShader9(float texcoord : TEXCOORD) : COLOR
{
    float4 out_color;
    float4 temp0 = 0;
    // def c0, 0, 0, 0, 0
    // dcl t0.x
    // mov r0.xyz, t0.x
    temp0.xyz = texcoord.x;
    // mov r0.w, c0.x
    temp0.w = float1(0);
    // mov oC0, r0
    out_color = temp0;
    // 

    return out_color;
}

// RenderWaveParticles_VertexShader10 Vertex_2_0 Has PRES False
struct RenderWaveParticles_VertexShader10_Input
{
    float4 position : POSITION;
    float4 texcoord : TEXCOORD;
};

struct RenderWaveParticles_VertexShader10_Output
{
    float4 position : POSITION;
    float texcoord : TEXCOORD;
};

RenderWaveParticles_VertexShader10_Output RenderWaveParticles_VertexShader10(RenderWaveParticles_VertexShader10_Input i)
{
    RenderWaveParticles_VertexShader10_Output o;
    float4 temp0;
    float2 temp1;
    // def c0, 0, -0.3606738, 0.5, 1
    // dcl_position v0
    // dcl_texcoord v1
    // add r0.x, -v1.y, c11.x
    temp0.x = -i.texcoord.y + Time.x;
    // mad r0.yz, r0.x, v0.xzww, v0.xxyw
    temp0.yz = temp0.xx * i.position.zw + i.position.xy;
    // mul r1.xy, r0.x, c0.yzzw
    temp1.xy = temp0.xx * float2(-0.36067376, 0.5);
    // mov r0.w, c0.w
    temp0.w = float1(1);
    // dp3 oPos.x, r0.yzww, c119.xyww
    o.position.x = dot(temp0.yzw, (ViewProjection._m00_m10_m20_m30).xyw);
    // dp3 oPos.y, r0.yzww, c120.xyww
    o.position.y = dot(temp0.yzw, (ViewProjection._m01_m11_m21_m31).xyw);
    // exp r0.x, r1.x
    temp0.x = exp2(temp1.x);
    // max r0.y, r1.y, c0.x
    temp0.y = max(temp1.y, float1(0));
    // abs r0.z, v1.x
    temp0.z = abs(i.texcoord.x);
    // mul r0.x, r0.x, r0.z
    temp0.x = temp0.x * temp0.z;
    // min r0.y, r0.y, c0.w
    temp0.y = min(temp0.y, float1(1));
    // mad r0.x, r0.x, r0.y, -v1.x
    temp0.x = temp0.x * temp0.y + -i.texcoord.x;
    // slt r0.y, v1.x, c0.x
    temp0.y = (i.texcoord.x < float1(0)) ? 1 : 0;
    // mad r0.x, r0.y, r0.x, v1.x
    temp0.x = temp0.y * temp0.x + i.texcoord.x;

    float2 p00 = mul(ProjectionI, float4(0, 0, 0, 1)).xy;
    float2 p11 = mul(ProjectionI, float4(1, 1, 0, 1)).xy;
    float2 diff = p11 - p00;
    float area = diff.x * diff.y;
    float ratio = min(700000 / area, 4);

    // min oT0.x, r0.x, c0.w
    o.texcoord = min(temp0.x, float4(1, 1, 1, 1)) * ratio;
    // mov oPos.zw, c0.xyxw
    o.position.zw = float2(0, 1);
    // 

    return o;
}

technique RenderWaveParticles
{
    pass P0
    {
        VertexShader = compile vs_2_0 RenderWaveParticles_VertexShader10(); // 13
        PixelShader = compile ps_2_0 RenderWaveParticles_PixelShader9(); // 14
        ZEnable = 0;
        ZWriteEnable = 0;
        CullMode = 1;
        AlphaTestEnable = 0;
        AlphaBlendEnable = 1;
        SrcBlend = 2;
        DestBlend = 2;
    }
}

technique BlurU
{
    pass p0
    {
        VertexShader = compile vs_3_0 BlurU_VertexShader8(); // 15
        PixelShader = compile ps_3_0 BlurU_PixelShader7(); // 16
        ZEnable = 0;
        ZWriteEnable = 0;
        CullMode = 1;
        AlphaBlendEnable = 0;
        AlphaTestEnable = 0;
    }
}

technique BlurV
{
    pass p0
    {
        VertexShader = compile vs_3_0 BlurV_VertexShader6(); // 17
        PixelShader = compile ps_3_0 BlurV_PixelShader5(); // 18
        ZEnable = 0;
        ZWriteEnable = 0;
        CullMode = 1;
        AlphaBlendEnable = 0;
        AlphaTestEnable = 0;
    }
}

technique StaticDisplacement
{
    pass p0
    {
        VertexShader = compile vs_3_0 StaticDisplacement_VertexShader4(); // 19
        PixelShader = compile ps_3_0 StaticDisplacement_PixelShader3(); // 20
        ZEnable = 0;
        ZWriteEnable = 0;
        CullMode = 1;
        AlphaTestEnable = 0;
        AlphaBlendEnable = 1;
        SrcBlend = 2;
        DestBlend = 2;
    }
}

technique DebugDisplayDisplacement
{
    pass P0
    {
        VertexShader = compile vs_3_0 DebugDisplayDisplacement_VertexShader2(); // 21
        PixelShader = compile ps_3_0 DebugDisplayDisplacement_PixelShader1(); // 22
        ZEnable = 0;
        ZWriteEnable = 0;
        CullMode = 1;
        AlphaTestEnable = 0;
        AlphaBlendEnable = 0;
        SrcBlend = 2;
        DestBlend = 2;
    }
}

