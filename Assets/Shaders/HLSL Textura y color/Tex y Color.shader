Shader "Project/Tex y Color"
{
    Properties {
      _MainTex ("Texture", 2D) = "white" {}
      _Albedo("Albedo", Color)=(1,1,1,1)
    }
    SubShader {
      Tags { "RenderType" = "Opaque" }
      CGPROGRAM
      #pragma surface surf Lambert

        fixed4 _Albedo;
        
      struct Input {
        float2 uv_MainTex;
      };
      sampler2D _MainTex;
      void surf (Input IN, inout SurfaceOutput o) {
        o.Albedo = tex2D (_MainTex, IN.uv_MainTex).rgb* _Albedo.rgb;
      }
      ENDCG
    } 
    Fallback "Diffuse"
  }
