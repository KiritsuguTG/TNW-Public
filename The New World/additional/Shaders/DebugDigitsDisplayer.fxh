//////////////////////////////////////////////////////////////////////////////
// 数字显示器
// 2021/07/23 岚依
//  lanyi@ra3.moe
//  红警3吧 https://tieba.baidu.com/RA3
//////////////////////////////////////////////////////////////////////////////

#ifndef LANYI_DEBUG_DIGITS_DISPLAYER
#define LANYI_DEBUG_DIGITS_DISPLAYER
#include "Common.fxh"

// ----------------------------------------------------------------------------
// 材质参数
// ----------------------------------------------------------------------------

// 数字贴图（0~9，假如有后缀，那么在9后面）
texture DigitsTexture
<
    string UIName = "DigitsTexture";
    string SasBindAddress = "Lanyi.DigitsTexture";
>;
sampler2D DigitsTextureSampler
<
    string Texture = "DigitsTexture";
    string UIName = "DigitsTexture";
    string SasBindAddress = "Lanyi.DigitsTexture";
> = sampler_state {
    Texture = < DigitsTexture >;
    MinFilter = Anisotropic;
    MagFilter = Linear;
    MipFilter = Linear;
    AddressU = Clamp;
    AddressV = Clamp;
    AddressW = Clamp;
};

float4 GetDigit(float2 currentUV, float number, int maxDigits, int maxDecimalDigits) {
    if (currentUV.y < 0 || currentUV.y > 1) {
        return 0;
    }
    float currentDigitPosition = floor(maxDigits * currentUV.x);
    float exponent = maxDigits - currentDigitPosition - 1;
    if (exponent >= maxDigits) {
        return 0;
    }
    if (exponent + maxDecimalDigits < 0) {
        return 0;
    }
    float currentDigitValue = floor(fmod(number / pow(10, exponent), 10));
    float uvBegin = currentDigitPosition / maxDigits;
    float difference = currentUV - uvBegin;
    float differenceRatio = difference * maxDigits;
    if (exponent == -1 && differenceRatio < 0.1) {
        return frac(Time) > 0.5 ? 1 : 0;
    }
    float2 actualUV = float2((currentDigitValue + differenceRatio) / 10, currentUV.y);
    return tex2D(DigitsTextureSampler, actualUV);
}
#endif