// Shader created with Shader Forge v1.37 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.37;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:9361,x:34364,y:32584,varname:node_9361,prsc:2|emission-7528-RGB,custl-5085-OUT;n:type:ShaderForge.SFN_LightAttenuation,id:8068,x:33214,y:33196,varname:node_8068,prsc:2;n:type:ShaderForge.SFN_LightVector,id:6869,x:32059,y:32774,varname:node_6869,prsc:2;n:type:ShaderForge.SFN_NormalVector,id:9684,x:32059,y:32902,prsc:2,pt:True;n:type:ShaderForge.SFN_Dot,id:7782,x:32271,y:32817,cmnt:Lambert,varname:node_7782,prsc:2,dt:1|A-6869-OUT,B-9684-OUT;n:type:ShaderForge.SFN_Multiply,id:5085,x:33482,y:33055,cmnt:Attenuate and Color,varname:node_5085,prsc:2|A-5425-OUT,B-8068-OUT,C-8612-RGB;n:type:ShaderForge.SFN_AmbientLight,id:7528,x:33474,y:32571,varname:node_7528,prsc:2;n:type:ShaderForge.SFN_Color,id:6873,x:32104,y:33543,ptovrint:False,ptlb:Cold Color,ptin:_ColdColor,varname:node_6873,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_Lerp,id:6692,x:32300,y:33525,varname:node_6692,prsc:2|A-6873-RGB,B-4966-RGB,T-8599-OUT;n:type:ShaderForge.SFN_Slider,id:8599,x:32300,y:33703,ptovrint:False,ptlb:Heat,ptin:_Heat,varname:node_8599,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Color,id:4966,x:32104,y:33715,ptovrint:False,ptlb:Hot Color,ptin:_HotColor,varname:node_4966,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_LightColor,id:8612,x:33214,y:33335,varname:node_8612,prsc:2;n:type:ShaderForge.SFN_Add,id:5425,x:32942,y:32981,varname:node_5425,prsc:2|A-7782-OUT,B-5914-OUT;n:type:ShaderForge.SFN_Cubemap,id:3862,x:32325,y:33150,ptovrint:False,ptlb:DiscoMap,ptin:_DiscoMap,varname:node_3862,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,cube:3b2b758c3d3f186449a278b8612c2c54,pvfc:0;n:type:ShaderForge.SFN_Multiply,id:5914,x:32634,y:33189,varname:node_5914,prsc:2|A-3862-RGB,B-6692-OUT;proporder:6873-8599-4966-3862;pass:END;sub:END;*/

Shader "DiscoMeltem/DiscoBall" {
    Properties {
        _ColdColor ("Cold Color", Color) = (0.5,0.5,0.5,1)
        _Heat ("Heat", Range(0, 1)) = 0
        _HotColor ("Hot Color", Color) = (0.5,0.5,0.5,1)
        _DiscoMap ("DiscoMap", Cube) = "_Skybox" {}
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
            uniform float4 _ColdColor;
            uniform float _Heat;
            uniform float4 _HotColor;
            uniform samplerCUBE _DiscoMap;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float4 posWorld : TEXCOORD0;
                float3 normalDir : TEXCOORD1;
                LIGHTING_COORDS(2,3)
                UNITY_FOG_COORDS(4)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
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
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                float3 viewReflectDirection = reflect( -viewDirection, normalDirection );
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                float3 lightColor = _LightColor0.rgb;
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
////// Emissive:
                float3 emissive = UNITY_LIGHTMODEL_AMBIENT.rgb;
                float node_7782 = max(0,dot(lightDirection,normalDirection)); // Lambert
                float3 node_6692 = lerp(_ColdColor.rgb,_HotColor.rgb,_Heat);
                float3 finalColor = emissive + ((node_7782+(texCUBE(_DiscoMap,viewReflectDirection).rgb*node_6692))*attenuation*_LightColor0.rgb);
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
            uniform float4 _ColdColor;
            uniform float _Heat;
            uniform float4 _HotColor;
            uniform samplerCUBE _DiscoMap;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float4 posWorld : TEXCOORD0;
                float3 normalDir : TEXCOORD1;
                LIGHTING_COORDS(2,3)
                UNITY_FOG_COORDS(4)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
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
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                float3 viewReflectDirection = reflect( -viewDirection, normalDirection );
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                float3 lightColor = _LightColor0.rgb;
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float node_7782 = max(0,dot(lightDirection,normalDirection)); // Lambert
                float3 node_6692 = lerp(_ColdColor.rgb,_HotColor.rgb,_Heat);
                float3 finalColor = ((node_7782+(texCUBE(_DiscoMap,viewReflectDirection).rgb*node_6692))*attenuation*_LightColor0.rgb);
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
