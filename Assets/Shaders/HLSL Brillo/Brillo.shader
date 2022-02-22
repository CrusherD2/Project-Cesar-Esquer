Shader "Project/Brillo"
{
    Properties
    {
        _Albedo("Albedo", Color)=(1,1,1,1)
        _NormalStrength("Normal value",Range(-4.0,4.0))=1.0
        _SpecStrength("Specular Strength",Range(0,1))=0.5
        _GlossStrength("Gloss Strngth",Range(0,1))=0.5
        _SpecColor("Specular Color", Color)=(1,1,1,1)
    }
    SubShader
    {
        CGPROGRAM
        #pragma surface surf BlinnPhong

        fixed4 _Albedo;
        float _NormalStrength;
        fixed _SpecStrength;
        fixed _GlossStrength;
        fixed4 _SpecularColor;

        struct Input
        {
            float2 uv_MainTex;
            float4 color: COLOR;
            float3 viewDir;
        };
        
        void surf(Input IN, inout SurfaceOutput o)
        {
            o.Albedo=_Albedo.rgb;
            o.Normal.z/=_NormalStrength;
            o.Gloss= _GlossStrength;
            o.Specular=_SpecColor;
        }

            ENDCG
        
    }
}
