Shader "project/limpio"
{
    Properties
    {
       
    }
    SubShader
    {
        CGPROGRAM
        #pragma surface surf Lambert

        struct Input
        {
            float3 color;
        };
        void surf(Input IN, inout SurfaceOutput o)
        {
            o.Albedo = fixed4(1.0, 1.0, 1.0, 1.0);
        }
        ENDCG
       
        
    }
}
