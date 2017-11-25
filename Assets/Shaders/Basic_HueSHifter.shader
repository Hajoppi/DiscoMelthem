// Shader created with Shader Forge v1.37 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.37;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:9361,x:34364,y:32584,varname:node_9361,prsc:2|emission-2460-OUT,custl-5085-OUT;n:type:ShaderForge.SFN_LightAttenuation,id:8068,x:32700,y:33291,varname:node_8068,prsc:2;n:type:ShaderForge.SFN_LightColor,id:3406,x:32234,y:33269,varname:node_3406,prsc:2;n:type:ShaderForge.SFN_LightVector,id:6869,x:31824,y:32859,varname:node_6869,prsc:2;n:type:ShaderForge.SFN_NormalVector,id:9684,x:31824,y:32987,prsc:2,pt:True;n:type:ShaderForge.SFN_HalfVector,id:9471,x:31824,y:33138,varname:node_9471,prsc:2;n:type:ShaderForge.SFN_Dot,id:7782,x:32036,y:32902,cmnt:Lambert,varname:node_7782,prsc:2,dt:1|A-6869-OUT,B-9684-OUT;n:type:ShaderForge.SFN_Dot,id:3269,x:32036,y:33076,cmnt:Blinn-Phong,varname:node_3269,prsc:2,dt:1|A-9684-OUT,B-9471-OUT;n:type:ShaderForge.SFN_Multiply,id:2746,x:32431,y:33071,cmnt:Specular Contribution,varname:node_2746,prsc:2|A-7782-OUT,B-5267-OUT,C-3406-RGB,D-4790-OUT;n:type:ShaderForge.SFN_Multiply,id:1941,x:32431,y:32898,cmnt:Diffuse Contribution,varname:node_1941,prsc:2|A-9873-OUT,B-7782-OUT;n:type:ShaderForge.SFN_Exp,id:1700,x:32036,y:33259,varname:node_1700,prsc:2,et:1|IN-9978-OUT;n:type:ShaderForge.SFN_Slider,id:5328,x:31495,y:33261,ptovrint:False,ptlb:Gloss,ptin:_Gloss,varname:node_5328,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.5,max:1;n:type:ShaderForge.SFN_Power,id:5267,x:32234,y:33145,varname:node_5267,prsc:2|VAL-3269-OUT,EXP-1700-OUT;n:type:ShaderForge.SFN_Add,id:2159,x:32700,y:33017,cmnt:Combine,varname:node_2159,prsc:2|A-1941-OUT,B-2746-OUT;n:type:ShaderForge.SFN_Multiply,id:5085,x:32945,y:33157,cmnt:Attenuate and Color,varname:node_5085,prsc:2|A-2159-OUT,B-3406-RGB,C-8068-OUT;n:type:ShaderForge.SFN_ConstantLerp,id:9978,x:31824,y:33261,varname:node_9978,prsc:2,a:1,b:11|IN-5328-OUT;n:type:ShaderForge.SFN_AmbientLight,id:7528,x:32993,y:32285,varname:node_7528,prsc:2;n:type:ShaderForge.SFN_Multiply,id:2460,x:33412,y:32222,cmnt:Ambient Light,varname:node_2460,prsc:2|A-9873-OUT,B-7528-RGB;n:type:ShaderForge.SFN_Color,id:6873,x:31083,y:32293,ptovrint:False,ptlb:Cold Color,ptin:_ColdColor,varname:node_6873,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_Lerp,id:6692,x:31279,y:32275,varname:node_6692,prsc:2|A-6873-RGB,B-4966-RGB,T-8599-OUT;n:type:ShaderForge.SFN_Slider,id:8599,x:31279,y:32453,ptovrint:False,ptlb:Heat,ptin:_Heat,varname:node_8599,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Color,id:4966,x:31083,y:32465,ptovrint:False,ptlb:Hot Color,ptin:_HotColor,varname:node_4966,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_Tex2d,id:1597,x:31279,y:32099,ptovrint:False,ptlb:Basic Texture,ptin:_BasicTexture,varname:node_1597,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False|UVIN-1767-OUT;n:type:ShaderForge.SFN_Multiply,id:3353,x:31598,y:32167,varname:node_3353,prsc:2|A-1597-RGB,B-6692-OUT;n:type:ShaderForge.SFN_Slider,id:4790,x:32234,y:33413,ptovrint:False,ptlb:Spec Power,ptin:_SpecPower,varname:node_4790,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Multiply,id:6412,x:32164,y:32164,varname:node_6412,prsc:2|A-4166-OUT,B-3353-OUT;n:type:ShaderForge.SFN_FragmentPosition,id:3435,x:31786,y:31806,varname:node_3435,prsc:2;n:type:ShaderForge.SFN_Lerp,id:4166,x:32067,y:31958,varname:node_4166,prsc:2|A-195-OUT,B-3435-Y,T-7873-OUT;n:type:ShaderForge.SFN_Vector1,id:195,x:31718,y:31999,varname:node_195,prsc:2,v1:1;n:type:ShaderForge.SFN_Clamp01,id:9873,x:32362,y:32164,varname:node_9873,prsc:2|IN-6412-OUT;n:type:ShaderForge.SFN_Slider,id:7873,x:31603,y:32089,ptovrint:False,ptlb:Gradient Power,ptin:_GradientPower,varname:node_7873,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_SwitchProperty,id:1767,x:30878,y:32013,ptovrint:False,ptlb:Use Tiles,ptin:_UseTiles,varname:node_1767,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False|A-2187-UVOUT,B-432-UVOUT;n:type:ShaderForge.SFN_TexCoord,id:2187,x:30596,y:31909,varname:node_2187,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_TexCoord,id:6534,x:30399,y:32046,varname:node_6534,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_UVTile,id:432,x:30645,y:32129,varname:node_432,prsc:2|UVIN-6534-UVOUT,WDT-5122-OUT,HGT-3327-OUT,TILE-56-OUT;n:type:ShaderForge.SFN_Vector1,id:5122,x:30399,y:32200,varname:node_5122,prsc:2,v1:2;n:type:ShaderForge.SFN_Vector1,id:3327,x:30399,y:32261,varname:node_3327,prsc:2,v1:2;n:type:ShaderForge.SFN_Slider,id:5771,x:30051,y:32346,ptovrint:False,ptlb:Tile Select,ptin:_TileSelect,varname:node_5771,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:3,max:3;n:type:ShaderForge.SFN_Ceil,id:56,x:30399,y:32325,varname:node_56,prsc:2|IN-5771-OUT;proporder:5328-6873-8599-4966-1597-4790-7873-1767-5771;pass:END;sub:END;*/

Shader "DiscoMeltem/Basic_shader" {
    Properties {
        _Gloss ("Gloss", Range(0, 1)) = 0.5
        _ColdColor ("Cold Color", Color) = (0.5,0.5,0.5,1)
        _Heat ("Heat", Range(0, 1)) = 0
        _HotColor ("Hot Color", Color) = (0.5,0.5,0.5,1)
        _BasicTexture ("Basic Texture", 2D) = "white" {}
        _SpecPower ("Spec Power", Range(0, 1)) = 0
        _GradientPower ("Gradient Power", Range(0, 1)) = 0
        [MaterialToggle] _UseTiles ("Use Tiles", Float ) = 0
        _TileSelect ("Tile Select", Range(0, 3)) = 3
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
            uniform float _Gloss;
            uniform float4 _ColdColor;
            uniform float _Heat;
            uniform float4 _HotColor;
            uniform sampler2D _BasicTexture; uniform float4 _BasicTexture_ST;
            uniform float _SpecPower;
            uniform float _GradientPower;
            uniform fixed _UseTiles;
            uniform float _TileSelect;
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
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                float3 lightColor = _LightColor0.rgb;
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
////// Emissive:
                float node_5122 = 2.0;
                float node_56 = ceil(_TileSelect);
                float2 node_432_tc_rcp = float2(1.0,1.0)/float2( node_5122, 2.0 );
                float node_432_ty = floor(node_56 * node_432_tc_rcp.x);
                float node_432_tx = node_56 - node_5122 * node_432_ty;
                float2 node_432 = (i.uv0 + float2(node_432_tx, node_432_ty)) * node_432_tc_rcp;
                float2 _UseTiles_var = lerp( i.uv0, node_432, _UseTiles );
                float4 _BasicTexture_var = tex2D(_BasicTexture,TRANSFORM_TEX(_UseTiles_var, _BasicTexture));
                float3 node_9873 = saturate((lerp(1.0,i.posWorld.g,_GradientPower)*(_BasicTexture_var.rgb*lerp(_ColdColor.rgb,_HotColor.rgb,_Heat))));
                float3 emissive = (node_9873*UNITY_LIGHTMODEL_AMBIENT.rgb);
                float node_7782 = max(0,dot(lightDirection,normalDirection)); // Lambert
                float3 finalColor = emissive + (((node_9873*node_7782)+(node_7782*pow(max(0,dot(normalDirection,halfDirection)),exp2(lerp(1,11,_Gloss)))*_LightColor0.rgb*_SpecPower))*_LightColor0.rgb*attenuation);
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
            uniform float _Gloss;
            uniform float4 _ColdColor;
            uniform float _Heat;
            uniform float4 _HotColor;
            uniform sampler2D _BasicTexture; uniform float4 _BasicTexture_ST;
            uniform float _SpecPower;
            uniform float _GradientPower;
            uniform fixed _UseTiles;
            uniform float _TileSelect;
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
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                float3 lightColor = _LightColor0.rgb;
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float node_5122 = 2.0;
                float node_56 = ceil(_TileSelect);
                float2 node_432_tc_rcp = float2(1.0,1.0)/float2( node_5122, 2.0 );
                float node_432_ty = floor(node_56 * node_432_tc_rcp.x);
                float node_432_tx = node_56 - node_5122 * node_432_ty;
                float2 node_432 = (i.uv0 + float2(node_432_tx, node_432_ty)) * node_432_tc_rcp;
                float2 _UseTiles_var = lerp( i.uv0, node_432, _UseTiles );
                float4 _BasicTexture_var = tex2D(_BasicTexture,TRANSFORM_TEX(_UseTiles_var, _BasicTexture));
                float3 node_9873 = saturate((lerp(1.0,i.posWorld.g,_GradientPower)*(_BasicTexture_var.rgb*lerp(_ColdColor.rgb,_HotColor.rgb,_Heat))));
                float node_7782 = max(0,dot(lightDirection,normalDirection)); // Lambert
                float3 finalColor = (((node_9873*node_7782)+(node_7782*pow(max(0,dot(normalDirection,halfDirection)),exp2(lerp(1,11,_Gloss)))*_LightColor0.rgb*_SpecPower))*_LightColor0.rgb*attenuation);
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
