// Shader created with Shader Forge v1.37 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.37;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:9361,x:34364,y:32584,varname:node_9361,prsc:2|emission-2460-OUT,custl-5085-OUT;n:type:ShaderForge.SFN_LightAttenuation,id:8068,x:32700,y:33291,varname:node_8068,prsc:2;n:type:ShaderForge.SFN_LightColor,id:3406,x:32700,y:33157,varname:node_3406,prsc:2;n:type:ShaderForge.SFN_LightVector,id:6869,x:31824,y:32859,varname:node_6869,prsc:2;n:type:ShaderForge.SFN_NormalVector,id:9684,x:31824,y:32987,prsc:2,pt:True;n:type:ShaderForge.SFN_Dot,id:7782,x:32036,y:32902,cmnt:Lambert,varname:node_7782,prsc:2,dt:1|A-6869-OUT,B-9684-OUT;n:type:ShaderForge.SFN_Multiply,id:1941,x:32431,y:32898,cmnt:Diffuse Contribution,varname:node_1941,prsc:2|A-5927-RGB,B-7782-OUT;n:type:ShaderForge.SFN_Color,id:5927,x:31822,y:32225,ptovrint:False,ptlb:Color,ptin:_Color,varname:node_5927,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_Multiply,id:5085,x:32945,y:33157,cmnt:Attenuate and Color,varname:node_5085,prsc:2|A-1941-OUT,B-3406-RGB,C-8068-OUT;n:type:ShaderForge.SFN_AmbientLight,id:7528,x:32717,y:32311,varname:node_7528,prsc:2;n:type:ShaderForge.SFN_Multiply,id:2460,x:33412,y:32222,cmnt:Ambient Light,varname:node_2460,prsc:2|A-5927-RGB,B-7528-RGB,C-7359-OUT,D-4023-OUT;n:type:ShaderForge.SFN_TexCoord,id:1342,x:32072,y:32356,varname:node_1342,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Vector3,id:1042,x:32072,y:32504,varname:node_1042,prsc:2,v1:0.5,v2:0.5,v3:0.5;n:type:ShaderForge.SFN_Distance,id:7745,x:32298,y:32432,varname:node_7745,prsc:2|A-1342-UVOUT,B-1042-OUT;n:type:ShaderForge.SFN_OneMinus,id:4472,x:32480,y:32432,varname:node_4472,prsc:2|IN-7745-OUT;n:type:ShaderForge.SFN_Multiply,id:7359,x:33053,y:32432,varname:node_7359,prsc:2|A-4472-OUT,B-3871-OUT,C-6692-OUT;n:type:ShaderForge.SFN_Vector1,id:3871,x:32480,y:32555,varname:node_3871,prsc:2,v1:2;n:type:ShaderForge.SFN_Color,id:6873,x:32480,y:32634,ptovrint:False,ptlb:Cold Color,ptin:_ColdColor,varname:node_6873,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_Slider,id:4023,x:33255,y:32371,ptovrint:False,ptlb:Glow Power,ptin:_GlowPower,varname:node_4023,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:1,cur:1,max:11;n:type:ShaderForge.SFN_Lerp,id:6692,x:32818,y:32612,varname:node_6692,prsc:2|A-6873-RGB,B-4966-RGB,T-8599-OUT;n:type:ShaderForge.SFN_Slider,id:8599,x:32834,y:32791,ptovrint:False,ptlb:Heat,ptin:_Heat,varname:node_8599,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Color,id:4966,x:32622,y:32802,ptovrint:False,ptlb:Hot Color,ptin:_HotColor,varname:node_4966,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5,c2:0.5,c3:0.5,c4:1;proporder:5927-6873-4023-8599-4966;pass:END;sub:END;*/

Shader "DiscoMeltem/FloorTile_shader" {
    Properties {
        _Color ("Color", Color) = (0.5,0.5,0.5,1)
        _ColdColor ("Cold Color", Color) = (0.5,0.5,0.5,1)
        _GlowPower ("Glow Power", Range(1, 11)) = 1
        _Heat ("Heat", Range(0, 1)) = 0
        _HotColor ("Hot Color", Color) = (0.5,0.5,0.5,1)
    }
    SubShader {
        Tags {
            "RenderType"="Opaque"
        }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #include "Lighting.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles gles3 
            #pragma target 3.0
            uniform float4 _Color;
            uniform float4 _ColdColor;
            uniform float _GlowPower;
            uniform float _Heat;
            uniform float4 _HotColor;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                LIGHTING_COORDS(3,4)
                UNITY_FOG_COORDS(5)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos( v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3 normalDirection = i.normalDir;
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                float3 lightColor = _LightColor0.rgb;
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
////// Emissive:
                float3 emissive = (_Color.rgb*UNITY_LIGHTMODEL_AMBIENT.rgb*((1.0 - distance(i.uv0,float3(0.5,0.5,0.5)))*2.0*lerp(_ColdColor.rgb,_HotColor.rgb,_Heat))*_GlowPower);
                float node_7782 = max(0,dot(lightDirection,normalDirection)); // Lambert
                float3 node_1941 = (_Color.rgb*node_7782); // Diffuse Contribution
                float3 finalColor = emissive + (node_1941*_LightColor0.rgb*attenuation);
                fixed4 finalRGBA = fixed4(finalColor,1);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
        Pass {
            Name "FORWARD_DELTA"
            Tags {
                "LightMode"="ForwardAdd"
            }
            Blend One One
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDADD
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #include "Lighting.cginc"
            #pragma multi_compile_fwdadd_fullshadows
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles gles3 
            #pragma target 3.0
            uniform float4 _Color;
            uniform float4 _ColdColor;
            uniform float _GlowPower;
            uniform float _Heat;
            uniform float4 _HotColor;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                LIGHTING_COORDS(3,4)
                UNITY_FOG_COORDS(5)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos( v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3 normalDirection = i.normalDir;
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                float3 lightColor = _LightColor0.rgb;
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float node_7782 = max(0,dot(lightDirection,normalDirection)); // Lambert
                float3 node_1941 = (_Color.rgb*node_7782); // Diffuse Contribution
                float3 finalColor = (node_1941*_LightColor0.rgb*attenuation);
                fixed4 finalRGBA = fixed4(finalColor * 1,0);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
