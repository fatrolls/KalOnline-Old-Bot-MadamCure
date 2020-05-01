//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit _Unit12;

interface

uses
  SysUtils, Classes;

    //function sub_0041BB68(?:?):?;//0041BB68
    //procedure sub_0041BB94(?:?; ?:?; ?:?; ?:?; ?:?);//0041BB94
    //procedure sub_0041BF54(?:PChar; ?:?; ?:?);//0041BF54
    //procedure sub_0041C06C(?:?; ?:Longint; ?:?; ?:?; ?:?; ?:?; ?:?);//0041C06C
    //procedure sub_0041C238(?:?; ?:?; ?:?; ?:?);//0041C238
    //procedure sub_0041C2E4(?:?; ?:?);//0041C2E4
    //procedure sub_0041C310(?:?; ?:?);//0041C310
    //procedure sub_0041C33C(?:?; ?:Longint; ?:?);//0041C33C
    //procedure sub_0041C46C(?:AnsiString; ?:?);//0041C46C

implementation

//0041BB68
{*function sub_0041BB68(?:?):?;
begin
 0041BB68    mov         edx,eax
 0041BB6A    shr         edx,18
 0041BB6D    mov         ecx,eax
 0041BB6F    shr         ecx,8
 0041BB72    and         ecx,0FF00
 0041BB78    or          edx,ecx
 0041BB7A    mov         ecx,eax
 0041BB7C    shl         ecx,8
 0041BB7F    and         ecx,0FF0000
 0041BB85    or          edx,ecx
 0041BB87    shl         eax,18
 0041BB8A    and         eax,0FF000000
 0041BB8F    or          edx,eax
 0041BB91    mov         eax,edx
 0041BB93    ret
end;*}

//0041BB94
{*procedure sub_0041BB94(?:?; ?:?; ?:?; ?:?; ?:?);
begin
 0041BB94    push        ebp
 0041BB95    mov         ebp,esp
 0041BB97    add         esp,0FFFFFFF0
 0041BB9A    push        ebx
 0041BB9B    push        esi
 0041BB9C    mov         dword ptr [ebp-8],edx
 0041BB9F    mov         dword ptr [ebp-4],eax
 0041BBA2    mov         eax,dword ptr [ebp+8]
 0041BBA5    mov         edx,dword ptr [ebp+0C]
 0041BBA8    add         edx,0FFFFF000
 0041BBAE    mov         ebx,dword ptr [ebp-4]
 0041BBB1    mov         ebx,dword ptr [ebx]
 0041BBB3    xor         ebx,dword ptr [ecx]
 0041BBB5    mov         dword ptr [ebp-0C],ebx
 0041BBB8    mov         ebx,eax
 0041BBBA    shl         ebx,2
 0041BBBD    add         ecx,ebx
 0041BBBF    xor         ebx,ebx
 0041BBC1    mov         bl,byte ptr [ebp-9]
 0041BBC4    mov         ebx,dword ptr [edx+ebx*4]
 0041BBC7    movzx       esi,byte ptr [ebp-0A]
 0041BBCB    add         ebx,dword ptr [edx+esi*4+400]
 0041BBD2    movzx       esi,byte ptr [ebp-0B]
 0041BBD6    xor         ebx,dword ptr [edx+esi*4+800]
 0041BBDD    movzx       esi,byte ptr [ebp-0C]
 0041BBE1    add         ebx,dword ptr [edx+esi*4+0C00]
 0041BBE8    mov         esi,dword ptr [ebp-8]
 0041BBEB    xor         ebx,dword ptr [esi]
 0041BBED    xor         ebx,dword ptr [ecx]
 0041BBEF    mov         dword ptr [ebp-10],ebx
 0041BBF2    mov         ebx,eax
 0041BBF4    shl         ebx,2
 0041BBF7    add         ecx,ebx
 0041BBF9    xor         ebx,ebx
 0041BBFB    mov         bl,byte ptr [ebp-0D]
 0041BBFE    mov         ebx,dword ptr [edx+ebx*4]
 0041BC01    movzx       esi,byte ptr [ebp-0E]
 0041BC05    add         ebx,dword ptr [edx+esi*4+400]
 0041BC0C    movzx       esi,byte ptr [ebp-0F]
 0041BC10    xor         ebx,dword ptr [edx+esi*4+800]
 0041BC17    movzx       esi,byte ptr [ebp-10]
 0041BC1B    add         ebx,dword ptr [edx+esi*4+0C00]
 0041BC22    xor         ebx,dword ptr [ebp-0C]
 0041BC25    xor         ebx,dword ptr [ecx]
 0041BC27    mov         dword ptr [ebp-0C],ebx
 0041BC2A    mov         ebx,eax
 0041BC2C    shl         ebx,2
 0041BC2F    add         ecx,ebx
 0041BC31    xor         ebx,ebx
 0041BC33    mov         bl,byte ptr [ebp-9]
 0041BC36    mov         ebx,dword ptr [edx+ebx*4]
 0041BC39    movzx       esi,byte ptr [ebp-0A]
 0041BC3D    add         ebx,dword ptr [edx+esi*4+400]
 0041BC44    movzx       esi,byte ptr [ebp-0B]
 0041BC48    xor         ebx,dword ptr [edx+esi*4+800]
 0041BC4F    movzx       esi,byte ptr [ebp-0C]
 0041BC53    add         ebx,dword ptr [edx+esi*4+0C00]
 0041BC5A    xor         ebx,dword ptr [ebp-10]
 0041BC5D    xor         ebx,dword ptr [ecx]
 0041BC5F    mov         dword ptr [ebp-10],ebx
 0041BC62    mov         ebx,eax
 0041BC64    shl         ebx,2
 0041BC67    add         ecx,ebx
 0041BC69    xor         ebx,ebx
 0041BC6B    mov         bl,byte ptr [ebp-0D]
 0041BC6E    mov         ebx,dword ptr [edx+ebx*4]
 0041BC71    movzx       esi,byte ptr [ebp-0E]
 0041BC75    add         ebx,dword ptr [edx+esi*4+400]
 0041BC7C    movzx       esi,byte ptr [ebp-0F]
 0041BC80    xor         ebx,dword ptr [edx+esi*4+800]
 0041BC87    movzx       esi,byte ptr [ebp-10]
 0041BC8B    add         ebx,dword ptr [edx+esi*4+0C00]
 0041BC92    xor         ebx,dword ptr [ebp-0C]
 0041BC95    xor         ebx,dword ptr [ecx]
 0041BC97    mov         dword ptr [ebp-0C],ebx
 0041BC9A    mov         ebx,eax
 0041BC9C    shl         ebx,2
 0041BC9F    add         ecx,ebx
 0041BCA1    xor         ebx,ebx
 0041BCA3    mov         bl,byte ptr [ebp-9]
 0041BCA6    mov         ebx,dword ptr [edx+ebx*4]
 0041BCA9    movzx       esi,byte ptr [ebp-0A]
 0041BCAD    add         ebx,dword ptr [edx+esi*4+400]
 0041BCB4    movzx       esi,byte ptr [ebp-0B]
 0041BCB8    xor         ebx,dword ptr [edx+esi*4+800]
 0041BCBF    movzx       esi,byte ptr [ebp-0C]
 0041BCC3    add         ebx,dword ptr [edx+esi*4+0C00]
 0041BCCA    xor         ebx,dword ptr [ebp-10]
 0041BCCD    xor         ebx,dword ptr [ecx]
 0041BCCF    mov         dword ptr [ebp-10],ebx
 0041BCD2    mov         ebx,eax
 0041BCD4    shl         ebx,2
 0041BCD7    add         ecx,ebx
 0041BCD9    xor         ebx,ebx
 0041BCDB    mov         bl,byte ptr [ebp-0D]
 0041BCDE    mov         ebx,dword ptr [edx+ebx*4]
 0041BCE1    movzx       esi,byte ptr [ebp-0E]
 0041BCE5    add         ebx,dword ptr [edx+esi*4+400]
 0041BCEC    movzx       esi,byte ptr [ebp-0F]
 0041BCF0    xor         ebx,dword ptr [edx+esi*4+800]
 0041BCF7    movzx       esi,byte ptr [ebp-10]
 0041BCFB    add         ebx,dword ptr [edx+esi*4+0C00]
 0041BD02    xor         ebx,dword ptr [ebp-0C]
 0041BD05    xor         ebx,dword ptr [ecx]
 0041BD07    mov         dword ptr [ebp-0C],ebx
 0041BD0A    mov         ebx,eax
 0041BD0C    shl         ebx,2
 0041BD0F    add         ecx,ebx
 0041BD11    xor         ebx,ebx
 0041BD13    mov         bl,byte ptr [ebp-9]
 0041BD16    mov         ebx,dword ptr [edx+ebx*4]
 0041BD19    movzx       esi,byte ptr [ebp-0A]
 0041BD1D    add         ebx,dword ptr [edx+esi*4+400]
 0041BD24    movzx       esi,byte ptr [ebp-0B]
 0041BD28    xor         ebx,dword ptr [edx+esi*4+800]
 0041BD2F    movzx       esi,byte ptr [ebp-0C]
 0041BD33    add         ebx,dword ptr [edx+esi*4+0C00]
 0041BD3A    xor         ebx,dword ptr [ebp-10]
 0041BD3D    xor         ebx,dword ptr [ecx]
 0041BD3F    mov         dword ptr [ebp-10],ebx
 0041BD42    mov         ebx,eax
 0041BD44    shl         ebx,2
 0041BD47    add         ecx,ebx
 0041BD49    xor         ebx,ebx
 0041BD4B    mov         bl,byte ptr [ebp-0D]
 0041BD4E    mov         ebx,dword ptr [edx+ebx*4]
 0041BD51    movzx       esi,byte ptr [ebp-0E]
 0041BD55    add         ebx,dword ptr [edx+esi*4+400]
 0041BD5C    movzx       esi,byte ptr [ebp-0F]
 0041BD60    xor         ebx,dword ptr [edx+esi*4+800]
 0041BD67    movzx       esi,byte ptr [ebp-10]
 0041BD6B    add         ebx,dword ptr [edx+esi*4+0C00]
 0041BD72    xor         ebx,dword ptr [ebp-0C]
 0041BD75    xor         ebx,dword ptr [ecx]
 0041BD77    mov         dword ptr [ebp-0C],ebx
 0041BD7A    mov         ebx,eax
 0041BD7C    shl         ebx,2
 0041BD7F    add         ecx,ebx
 0041BD81    xor         ebx,ebx
 0041BD83    mov         bl,byte ptr [ebp-9]
 0041BD86    mov         ebx,dword ptr [edx+ebx*4]
 0041BD89    movzx       esi,byte ptr [ebp-0A]
 0041BD8D    add         ebx,dword ptr [edx+esi*4+400]
 0041BD94    movzx       esi,byte ptr [ebp-0B]
 0041BD98    xor         ebx,dword ptr [edx+esi*4+800]
 0041BD9F    movzx       esi,byte ptr [ebp-0C]
 0041BDA3    add         ebx,dword ptr [edx+esi*4+0C00]
 0041BDAA    xor         ebx,dword ptr [ebp-10]
 0041BDAD    xor         ebx,dword ptr [ecx]
 0041BDAF    mov         dword ptr [ebp-10],ebx
 0041BDB2    mov         ebx,eax
 0041BDB4    shl         ebx,2
 0041BDB7    add         ecx,ebx
 0041BDB9    xor         ebx,ebx
 0041BDBB    mov         bl,byte ptr [ebp-0D]
 0041BDBE    mov         ebx,dword ptr [edx+ebx*4]
 0041BDC1    movzx       esi,byte ptr [ebp-0E]
 0041BDC5    add         ebx,dword ptr [edx+esi*4+400]
 0041BDCC    movzx       esi,byte ptr [ebp-0F]
 0041BDD0    xor         ebx,dword ptr [edx+esi*4+800]
 0041BDD7    movzx       esi,byte ptr [ebp-10]
 0041BDDB    add         ebx,dword ptr [edx+esi*4+0C00]
 0041BDE2    xor         ebx,dword ptr [ebp-0C]
 0041BDE5    xor         ebx,dword ptr [ecx]
 0041BDE7    mov         dword ptr [ebp-0C],ebx
 0041BDEA    mov         ebx,eax
 0041BDEC    shl         ebx,2
 0041BDEF    add         ecx,ebx
 0041BDF1    xor         ebx,ebx
 0041BDF3    mov         bl,byte ptr [ebp-9]
 0041BDF6    mov         ebx,dword ptr [edx+ebx*4]
 0041BDF9    movzx       esi,byte ptr [ebp-0A]
 0041BDFD    add         ebx,dword ptr [edx+esi*4+400]
 0041BE04    movzx       esi,byte ptr [ebp-0B]
 0041BE08    xor         ebx,dword ptr [edx+esi*4+800]
 0041BE0F    movzx       esi,byte ptr [ebp-0C]
 0041BE13    add         ebx,dword ptr [edx+esi*4+0C00]
 0041BE1A    xor         ebx,dword ptr [ebp-10]
 0041BE1D    xor         ebx,dword ptr [ecx]
 0041BE1F    mov         dword ptr [ebp-10],ebx
 0041BE22    mov         ebx,eax
 0041BE24    shl         ebx,2
 0041BE27    add         ecx,ebx
 0041BE29    xor         ebx,ebx
 0041BE2B    mov         bl,byte ptr [ebp-0D]
 0041BE2E    mov         ebx,dword ptr [edx+ebx*4]
 0041BE31    movzx       esi,byte ptr [ebp-0E]
 0041BE35    add         ebx,dword ptr [edx+esi*4+400]
 0041BE3C    movzx       esi,byte ptr [ebp-0F]
 0041BE40    xor         ebx,dword ptr [edx+esi*4+800]
 0041BE47    movzx       esi,byte ptr [ebp-10]
 0041BE4B    add         ebx,dword ptr [edx+esi*4+0C00]
 0041BE52    xor         ebx,dword ptr [ebp-0C]
 0041BE55    xor         ebx,dword ptr [ecx]
 0041BE57    mov         dword ptr [ebp-0C],ebx
 0041BE5A    mov         ebx,eax
 0041BE5C    shl         ebx,2
 0041BE5F    add         ecx,ebx
 0041BE61    xor         ebx,ebx
 0041BE63    mov         bl,byte ptr [ebp-9]
 0041BE66    mov         ebx,dword ptr [edx+ebx*4]
 0041BE69    movzx       esi,byte ptr [ebp-0A]
 0041BE6D    add         ebx,dword ptr [edx+esi*4+400]
 0041BE74    movzx       esi,byte ptr [ebp-0B]
 0041BE78    xor         ebx,dword ptr [edx+esi*4+800]
 0041BE7F    movzx       esi,byte ptr [ebp-0C]
 0041BE83    add         ebx,dword ptr [edx+esi*4+0C00]
 0041BE8A    xor         ebx,dword ptr [ebp-10]
 0041BE8D    xor         ebx,dword ptr [ecx]
 0041BE8F    mov         dword ptr [ebp-10],ebx
 0041BE92    mov         ebx,eax
 0041BE94    shl         ebx,2
 0041BE97    add         ecx,ebx
 0041BE99    xor         ebx,ebx
 0041BE9B    mov         bl,byte ptr [ebp-0D]
 0041BE9E    mov         ebx,dword ptr [edx+ebx*4]
 0041BEA1    movzx       esi,byte ptr [ebp-0E]
 0041BEA5    add         ebx,dword ptr [edx+esi*4+400]
 0041BEAC    movzx       esi,byte ptr [ebp-0F]
 0041BEB0    xor         ebx,dword ptr [edx+esi*4+800]
 0041BEB7    movzx       esi,byte ptr [ebp-10]
 0041BEBB    add         ebx,dword ptr [edx+esi*4+0C00]
 0041BEC2    xor         ebx,dword ptr [ebp-0C]
 0041BEC5    xor         ebx,dword ptr [ecx]
 0041BEC7    mov         dword ptr [ebp-0C],ebx
 0041BECA    mov         ebx,eax
 0041BECC    shl         ebx,2
 0041BECF    add         ecx,ebx
 0041BED1    xor         ebx,ebx
 0041BED3    mov         bl,byte ptr [ebp-9]
 0041BED6    mov         ebx,dword ptr [edx+ebx*4]
 0041BED9    movzx       esi,byte ptr [ebp-0A]
 0041BEDD    add         ebx,dword ptr [edx+esi*4+400]
 0041BEE4    movzx       esi,byte ptr [ebp-0B]
 0041BEE8    xor         ebx,dword ptr [edx+esi*4+800]
 0041BEEF    movzx       esi,byte ptr [ebp-0C]
 0041BEF3    add         ebx,dword ptr [edx+esi*4+0C00]
 0041BEFA    xor         ebx,dword ptr [ebp-10]
 0041BEFD    xor         ebx,dword ptr [ecx]
 0041BEFF    mov         dword ptr [ebp-10],ebx
 0041BF02    mov         ebx,eax
 0041BF04    shl         ebx,2
 0041BF07    add         ecx,ebx
 0041BF09    xor         ebx,ebx
 0041BF0B    mov         bl,byte ptr [ebp-0D]
 0041BF0E    mov         ebx,dword ptr [edx+ebx*4]
 0041BF11    movzx       esi,byte ptr [ebp-0E]
 0041BF15    add         ebx,dword ptr [edx+esi*4+400]
 0041BF1C    movzx       esi,byte ptr [ebp-0F]
 0041BF20    xor         ebx,dword ptr [edx+esi*4+800]
 0041BF27    movzx       esi,byte ptr [ebp-10]
 0041BF2B    add         ebx,dword ptr [edx+esi*4+0C00]
 0041BF32    xor         ebx,dword ptr [ebp-0C]
 0041BF35    xor         ebx,dword ptr [ecx]
 0041BF37    mov         edx,dword ptr [ebp-8]
 0041BF3A    mov         dword ptr [edx],ebx
 0041BF3C    shl         eax,2
 0041BF3F    add         ecx,eax
 0041BF41    mov         eax,dword ptr [ebp-10]
 0041BF44    xor         eax,dword ptr [ecx]
 0041BF46    mov         edx,dword ptr [ebp-4]
 0041BF49    mov         dword ptr [edx],eax
 0041BF4B    pop         esi
 0041BF4C    pop         ebx
 0041BF4D    mov         esp,ebp
 0041BF4F    pop         ebp
 0041BF50    ret         4
end;*}

//0041BF54
{*procedure sub_0041BF54(?:PChar; ?:?; ?:?);
begin
 0041BF54    push        ebp
 0041BF55    mov         ebp,esp
 0041BF57    add         esp,0FFFFFFF0
 0041BF5A    push        ebx
 0041BF5B    push        esi
 0041BF5C    push        edi
 0041BF5D    mov         dword ptr [ebp-8],edx
 0041BF60    mov         dword ptr [ebp-4],eax
 0041BF63    xor         esi,esi
 0041BF65    mov         edi,12
 0041BF6A    mov         eax,dword ptr [ebp+8]
 0041BF6D    lea         ecx,[eax-1048]
 0041BF73    lea         eax,[esi+1]
 0041BF76    xor         edx,edx
 0041BF78    div         eax,dword ptr [ebp-8]
 0041BF7B    mov         eax,dword ptr [ebp-4]
 0041BF7E    xor         ebx,ebx
 0041BF80    mov         bl,byte ptr [eax+edx]
 0041BF83    shl         ebx,10
 0041BF86    mov         eax,dword ptr [ebp-4]
 0041BF89    movzx       eax,byte ptr [eax+esi]
 0041BF8D    shl         eax,18
 0041BF90    add         ebx,eax
 0041BF92    lea         eax,[esi+2]
 0041BF95    xor         edx,edx
 0041BF97    div         eax,dword ptr [ebp-8]
 0041BF9A    mov         eax,dword ptr [ebp-4]
 0041BF9D    movzx       eax,byte ptr [eax+edx]
 0041BFA1    shl         eax,8
 0041BFA4    add         ebx,eax
 0041BFA6    lea         eax,[esi+3]
 0041BFA9    xor         edx,edx
 0041BFAB    div         eax,dword ptr [ebp-8]
 0041BFAE    mov         eax,dword ptr [ebp-4]
 0041BFB1    movzx       eax,byte ptr [eax+edx]
 0041BFB5    add         ebx,eax
 0041BFB7    xor         dword ptr [ecx],ebx
 0041BFB9    lea         eax,[esi+4]
 0041BFBC    xor         edx,edx
 0041BFBE    div         eax,dword ptr [ebp-8]
 0041BFC1    mov         esi,edx
 0041BFC3    add         ecx,4
 0041BFC6    dec         edi
>0041BFC7    jne         0041BF73
 0041BFC9    xor         eax,eax
 0041BFCB    mov         dword ptr [ebp-0C],eax
 0041BFCE    xor         eax,eax
 0041BFD0    mov         dword ptr [ebp-10],eax
 0041BFD3    xor         edi,edi
 0041BFD5    mov         eax,dword ptr [ebp+8]
 0041BFD8    push        eax
 0041BFD9    push        1
 0041BFDB    mov         eax,dword ptr [ebp+8]
 0041BFDE    lea         ecx,[eax-1048]
 0041BFE4    lea         edx,[ebp-10]
 0041BFE7    lea         eax,[ebp-0C]
 0041BFEA    call        0041BB94
 0041BFEF    pop         ecx
 0041BFF0    mov         eax,edi
 0041BFF2    add         eax,eax
 0041BFF4    mov         edx,dword ptr [ebp+8]
 0041BFF7    mov         ecx,dword ptr [ebp-0C]
 0041BFFA    mov         dword ptr [edx+eax*4-1048],ecx
 0041C001    mov         edx,dword ptr [ebp+8]
 0041C004    mov         ecx,dword ptr [ebp-10]
 0041C007    mov         dword ptr [edx+eax*4-1044],ecx
 0041C00E    inc         edi
 0041C00F    cmp         edi,9
>0041C012    jne         0041BFD5
 0041C014    mov         edi,4
 0041C019    mov         eax,dword ptr [ebp+8]
 0041C01C    lea         ebx,[eax-1000]
 0041C022    xor         esi,esi
 0041C024    mov         eax,dword ptr [ebp+8]
 0041C027    push        eax
 0041C028    push        1
 0041C02A    mov         eax,dword ptr [ebp+8]
 0041C02D    lea         ecx,[eax-1048]
 0041C033    lea         edx,[ebp-10]
 0041C036    lea         eax,[ebp-0C]
 0041C039    call        0041BB94
 0041C03E    pop         ecx
 0041C03F    mov         eax,esi
 0041C041    add         eax,eax
 0041C043    mov         edx,dword ptr [ebp-0C]
 0041C046    mov         dword ptr [ebx+eax*4],edx
 0041C049    mov         edx,dword ptr [ebp-10]
 0041C04C    mov         dword ptr [ebx+eax*4+4],edx
 0041C050    inc         esi
 0041C051    cmp         esi,80
>0041C057    jne         0041C024
 0041C059    add         ebx,400
 0041C05F    dec         edi
>0041C060    jne         0041C022
 0041C062    pop         edi
 0041C063    pop         esi
 0041C064    pop         ebx
 0041C065    mov         esp,ebp
 0041C067    pop         ebp
 0041C068    ret
end;*}

//0041C06C
{*procedure sub_0041C06C(?:?; ?:Longint; ?:?; ?:?; ?:?; ?:?; ?:?);
begin
 0041C06C    push        ebp
 0041C06D    mov         ebp,esp
 0041C06F    add         esp,0FFFFF004
 0041C075    push        eax
 0041C076    add         esp,0FFFFFF9C
 0041C079    push        ebx
 0041C07A    push        esi
 0041C07B    push        edi
 0041C07C    mov         byte ptr [ebp-104D],cl
 0041C082    mov         dword ptr [ebp-104C],edx
 0041C088    mov         edi,eax
 0041C08A    mov         ebx,dword ptr [ebp+14]
 0041C08D    lea         esi,[ebp-105C]
 0041C093    push        esi
 0041C094    push        edi
 0041C095    mov         esi,53ED48
 0041C09A    lea         edi,[ebp-1048]
 0041C0A0    mov         ecx,12
 0041C0A5    rep movs    dword ptr [edi],dword ptr [esi]
 0041C0A7    pop         edi
 0041C0A8    pop         esi
 0041C0A9    push        esi
 0041C0AA    push        edi
 0041C0AB    mov         esi,53ED90
 0041C0B0    lea         edi,[ebp-1000]
 0041C0B6    mov         ecx,400
 0041C0BB    rep movs    dword ptr [edi],dword ptr [esi]
 0041C0BD    pop         edi
 0041C0BE    pop         esi
 0041C0BF    push        ebp
 0041C0C0    mov         eax,ebx
 0041C0C2    call        @DynArrayLength
 0041C0C7    push        eax
 0041C0C8    mov         eax,ebx
 0041C0CA    call        @LStrToPChar
 0041C0CF    pop         edx
 0041C0D0    call        0041BF54
 0041C0D5    pop         ecx
 0041C0D6    mov         ebx,edi
 0041C0D8    cmp         byte ptr [ebp-104D],0
>0041C0DF    je          0041C0F9
 0041C0E1    lea         eax,[ebp-1048]
 0041C0E7    mov         dword ptr [ebp-1054],eax
 0041C0ED    mov         dword ptr [ebp-1058],1
>0041C0F7    jmp         0041C10F
 0041C0F9    lea         eax,[ebp-1004]
 0041C0FF    mov         dword ptr [ebp-1054],eax
 0041C105    mov         dword ptr [ebp-1058],0FFFFFFFF
 0041C10F    mov         eax,dword ptr [ebp-104C]
 0041C115    shr         eax,3
 0041C118    dec         eax
 0041C119    test        eax,eax
>0041C11B    jl          0041C22E
 0041C121    inc         eax
 0041C122    mov         dword ptr [ebp-1064],eax
 0041C128    cmp         dword ptr [ebp+10],0
>0041C12C    jne         0041C132
 0041C12E    cmp         dword ptr [ebp+0C],0
>0041C132    je          0041C1AE
 0041C134    mov         dword ptr [esi],7
 0041C13A    lea         eax,[ebp+0C]
 0041C13D    add         eax,dword ptr [esi]
 0041C13F    mov         dl,byte ptr [eax]
 0041C141    inc         edx
 0041C142    and         dl,0FF
 0041C145    mov         byte ptr [eax],dl
 0041C147    lea         eax,[ebp+0C]
 0041C14A    add         eax,dword ptr [esi]
 0041C14C    cmp         byte ptr [eax],0
>0041C14F    jne         0041C158
 0041C151    dec         dword ptr [esi]
 0041C153    cmp         dword ptr [esi],0FFFFFFFF
>0041C156    jne         0041C13A
 0041C158    lea         eax,[ebp+0C]
 0041C15B    mov         eax,dword ptr [eax]
 0041C15D    call        0041BB68
 0041C162    mov         dword ptr [esi],eax
 0041C164    lea         eax,[ebp+0C]
 0041C167    add         eax,4
 0041C16A    mov         eax,dword ptr [eax]
 0041C16C    call        0041BB68
 0041C171    mov         dword ptr [ebp-1060],eax
 0041C177    push        ebp
 0041C178    mov         eax,dword ptr [ebp-1058]
 0041C17E    push        eax
 0041C17F    lea         edx,[ebp-1060]
 0041C185    mov         eax,esi
 0041C187    mov         ecx,dword ptr [ebp-1054]
 0041C18D    call        0041BB94
 0041C192    pop         ecx
 0041C193    mov         eax,dword ptr [esi]
 0041C195    call        0041BB68
 0041C19A    xor         dword ptr [ebx],eax
 0041C19C    mov         eax,dword ptr [ebp-1060]
 0041C1A2    call        0041BB68
 0041C1A7    lea         edx,[ebx+4]
 0041C1AA    xor         dword ptr [edx],eax
>0041C1AC    jmp         0041C21F
 0041C1AE    cmp         byte ptr [ebp+8],0
>0041C1B2    jne         0041C206
 0041C1B4    mov         edi,ebx
 0041C1B6    mov         eax,dword ptr [edi]
 0041C1B8    call        0041BB68
 0041C1BD    mov         dword ptr [esi],eax
 0041C1BF    lea         eax,[ebx+4]
 0041C1C2    mov         eax,dword ptr [eax]
 0041C1C4    call        0041BB68
 0041C1C9    mov         dword ptr [ebp-1060],eax
 0041C1CF    push        ebp
 0041C1D0    mov         eax,dword ptr [ebp-1058]
 0041C1D6    push        eax
 0041C1D7    lea         edx,[ebp-1060]
 0041C1DD    mov         eax,esi
 0041C1DF    mov         ecx,dword ptr [ebp-1054]
 0041C1E5    call        0041BB94
 0041C1EA    pop         ecx
 0041C1EB    mov         eax,dword ptr [esi]
 0041C1ED    call        0041BB68
 0041C1F2    mov         dword ptr [edi],eax
 0041C1F4    mov         eax,dword ptr [ebp-1060]
 0041C1FA    call        0041BB68
 0041C1FF    lea         edx,[ebx+4]
 0041C202    mov         dword ptr [edx],eax
>0041C204    jmp         0041C21F
 0041C206    push        ebp
 0041C207    mov         eax,dword ptr [ebp-1058]
 0041C20D    push        eax
 0041C20E    mov         edx,ebx
 0041C210    lea         eax,[ebx+4]
 0041C213    mov         ecx,dword ptr [ebp-1054]
 0041C219    call        0041BB94
 0041C21E    pop         ecx
 0041C21F    add         ebx,8
 0041C222    dec         dword ptr [ebp-1064]
>0041C228    jne         0041C128
 0041C22E    pop         edi
 0041C22F    pop         esi
 0041C230    pop         ebx
 0041C231    mov         esp,ebp
 0041C233    pop         ebp
 0041C234    ret         10
end;*}

//0041C238
{*procedure sub_0041C238(?:?; ?:?; ?:?; ?:?);
begin
 0041C238    push        ebp
 0041C239    mov         ebp,esp
 0041C23B    push        ecx
 0041C23C    push        ebx
 0041C23D    push        esi
 0041C23E    push        edi
 0041C23F    mov         edi,edx
 0041C241    mov         esi,eax
 0041C243    mov         eax,dword ptr [esi]
 0041C245    call        @DynArrayLength
 0041C24A    mov         ebx,eax
 0041C24C    test        ebx,ebx
>0041C24E    jle         0041C2DC
 0041C254    mov         eax,esi
 0041C256    call        UniqueString
 0041C25B    push        edi
 0041C25C    push        dword ptr [ebp+0C]
 0041C25F    push        dword ptr [ebp+8]
 0041C262    push        0
 0041C264    cmp         dword ptr [ebp+0C],0
>0041C268    jne         0041C26E
 0041C26A    cmp         dword ptr [ebp+8],0
 0041C26E    setne       cl
 0041C271    mov         eax,dword ptr [esi]
 0041C273    mov         edx,ebx
 0041C275    call        0041C06C
 0041C27A    mov         eax,dword ptr [esi]
 0041C27C    mov         al,byte ptr [eax+ebx-1]
 0041C280    cmp         al,8
>0041C282    ja          0041C2DC
 0041C284    test        al,al
>0041C286    jbe         0041C2DC
 0041C288    mov         byte ptr [ebp-1],1
 0041C28C    and         eax,0FF
 0041C291    dec         eax
 0041C292    test        eax,eax
>0041C294    jle         0041C2B7
 0041C296    mov         edx,1
 0041C29B    mov         ecx,ebx
 0041C29D    sub         ecx,edx
 0041C29F    mov         edi,dword ptr [esi]
 0041C2A1    mov         cl,byte ptr [edi+ecx-1]
 0041C2A5    mov         edi,dword ptr [esi]
 0041C2A7    cmp         cl,byte ptr [edi+ebx-1]
>0041C2AB    je          0041C2B3
 0041C2AD    mov         byte ptr [ebp-1],0
>0041C2B1    jmp         0041C2B7
 0041C2B3    inc         edx
 0041C2B4    dec         eax
>0041C2B5    jne         0041C29B
 0041C2B7    cmp         byte ptr [ebp-1],0
>0041C2BB    je          0041C2DC
 0041C2BD    mov         eax,dword ptr [esi]
 0041C2BF    call        @DynArrayLength
 0041C2C4    mov         edx,eax
 0041C2C6    inc         edx
 0041C2C7    mov         eax,dword ptr [esi]
 0041C2C9    movzx       eax,byte ptr [eax+ebx-1]
 0041C2CE    sub         edx,eax
 0041C2D0    mov         eax,esi
 0041C2D2    mov         ecx,8
 0041C2D7    call        @LStrDelete
 0041C2DC    pop         edi
 0041C2DD    pop         esi
 0041C2DE    pop         ebx
 0041C2DF    pop         ecx
 0041C2E0    pop         ebp
 0041C2E1    ret         8
end;*}

//0041C2E4
{*procedure sub_0041C2E4(?:?; ?:?);
begin
 0041C2E4    push        ebx
 0041C2E5    push        esi
 0041C2E6    mov         esi,edx
 0041C2E8    mov         ebx,eax
 0041C2EA    mov         eax,ebx
 0041C2EC    call        UniqueString
 0041C2F1    push        esi
 0041C2F2    push        0
 0041C2F4    push        0
 0041C2F6    push        1
 0041C2F8    mov         eax,dword ptr [ebx]
 0041C2FA    call        @DynArrayLength
 0041C2FF    mov         edx,eax
 0041C301    mov         eax,dword ptr [ebx]
 0041C303    mov         cl,1
 0041C305    call        0041C06C
 0041C30A    pop         esi
 0041C30B    pop         ebx
 0041C30C    ret
end;*}

//0041C310
{*procedure sub_0041C310(?:?; ?:?);
begin
 0041C310    push        ebx
 0041C311    push        esi
 0041C312    mov         esi,edx
 0041C314    mov         ebx,eax
 0041C316    mov         eax,ebx
 0041C318    call        UniqueString
 0041C31D    push        esi
 0041C31E    push        0
 0041C320    push        0
 0041C322    push        1
 0041C324    mov         eax,dword ptr [ebx]
 0041C326    call        @DynArrayLength
 0041C32B    mov         edx,eax
 0041C32D    mov         eax,dword ptr [ebx]
 0041C32F    xor         ecx,ecx
 0041C331    call        0041C06C
 0041C336    pop         esi
 0041C337    pop         ebx
 0041C338    ret
end;*}

//0041C33C
{*procedure sub_0041C33C(?:?; ?:Longint; ?:?);
begin
 0041C33C    push        ebx
 0041C33D    push        esi
 0041C33E    push        edi
 0041C33F    mov         esi,ecx
 0041C341    mov         edi,edx
 0041C343    mov         ebx,eax
 0041C345    test        edi,edi
>0041C347    jle         0041C45E
 0041C34D    lea         eax,[edi+2]
 0041C350    mov         ecx,3
 0041C355    cdq
 0041C356    idiv        eax,ecx
 0041C358    mov         edx,eax
 0041C35A    shl         edx,2
 0041C35D    mov         eax,esi
 0041C35F    call        @LStrSetLength
 0041C364    mov         ecx,dword ptr [esi]
 0041C366    mov         eax,edi
 0041C368    mov         esi,3
 0041C36D    cdq
 0041C36E    idiv        eax,esi
 0041C370    mov         esi,eax
 0041C372    test        esi,esi
>0041C374    jle         0041C3D5
 0041C376    xor         eax,eax
 0041C378    mov         al,byte ptr [ebx]
 0041C37A    shl         eax,10
 0041C37D    xor         edx,edx
 0041C37F    mov         dl,byte ptr [ebx+1]
 0041C382    shl         edx,8
 0041C385    add         eax,edx
 0041C387    xor         edx,edx
 0041C389    mov         dl,byte ptr [ebx+2]
 0041C38C    add         eax,edx
 0041C38E    mov         edx,eax
 0041C390    shr         edx,12
 0041C393    and         edx,3F
 0041C396    mov         dl,byte ptr [edx+53FD90]
 0041C39C    mov         byte ptr [ecx],dl
 0041C39E    mov         edx,eax
 0041C3A0    shr         edx,0C
 0041C3A3    and         edx,3F
 0041C3A6    mov         dl,byte ptr [edx+53FD90]
 0041C3AC    mov         byte ptr [ecx+1],dl
 0041C3AF    mov         edx,eax
 0041C3B1    shr         edx,6
 0041C3B4    and         edx,3F
 0041C3B7    mov         dl,byte ptr [edx+53FD90]
 0041C3BD    mov         byte ptr [ecx+2],dl
 0041C3C0    and         eax,3F
 0041C3C3    mov         al,byte ptr [eax+53FD90]
 0041C3C9    mov         byte ptr [ecx+3],al
 0041C3CC    add         ecx,4
 0041C3CF    add         ebx,3
 0041C3D2    dec         esi
>0041C3D3    jne         0041C376
 0041C3D5    mov         eax,edi
 0041C3D7    mov         esi,3
 0041C3DC    cdq
 0041C3DD    idiv        eax,esi
 0041C3DF    dec         edx
>0041C3E0    je          0041C3E7
 0041C3E2    dec         edx
>0041C3E3    je          0041C417
>0041C3E5    jmp         0041C465
 0041C3E7    xor         eax,eax
 0041C3E9    mov         al,byte ptr [ebx]
 0041C3EB    shl         eax,10
 0041C3EE    mov         edx,eax
 0041C3F0    shr         edx,12
 0041C3F3    and         edx,3F
 0041C3F6    mov         dl,byte ptr [edx+53FD90]
 0041C3FC    mov         byte ptr [ecx],dl
 0041C3FE    shr         eax,0C
 0041C401    and         eax,3F
 0041C404    mov         al,byte ptr [eax+53FD90]
 0041C40A    mov         byte ptr [ecx+1],al
 0041C40D    mov         byte ptr [ecx+2],3D
 0041C411    mov         byte ptr [ecx+3],3D
>0041C415    jmp         0041C465
 0041C417    xor         eax,eax
 0041C419    mov         al,byte ptr [ebx]
 0041C41B    shl         eax,10
 0041C41E    xor         edx,edx
 0041C420    mov         dl,byte ptr [ebx+1]
 0041C423    shl         edx,8
 0041C426    add         eax,edx
 0041C428    mov         edx,eax
 0041C42A    shr         edx,12
 0041C42D    and         edx,3F
 0041C430    mov         dl,byte ptr [edx+53FD90]
 0041C436    mov         byte ptr [ecx],dl
 0041C438    mov         edx,eax
 0041C43A    shr         edx,0C
 0041C43D    and         edx,3F
 0041C440    mov         dl,byte ptr [edx+53FD90]
 0041C446    mov         byte ptr [ecx+1],dl
 0041C449    shr         eax,6
 0041C44C    and         eax,3F
 0041C44F    mov         al,byte ptr [eax+53FD90]
 0041C455    mov         byte ptr [ecx+2],al
 0041C458    mov         byte ptr [ecx+3],3D
>0041C45C    jmp         0041C465
 0041C45E    mov         eax,esi
 0041C460    call        @LStrClr
 0041C465    pop         edi
 0041C466    pop         esi
 0041C467    pop         ebx
 0041C468    ret
end;*}

//0041C46C
{*procedure sub_0041C46C(?:AnsiString; ?:?);
begin
 0041C46C    push        ebx
 0041C46D    push        esi
 0041C46E    mov         esi,edx
 0041C470    mov         ebx,eax
 0041C472    mov         eax,ebx
 0041C474    call        @DynArrayLength
 0041C479    mov         edx,eax
 0041C47B    mov         ecx,esi
 0041C47D    mov         eax,ebx
 0041C47F    call        0041C33C
 0041C484    pop         esi
 0041C485    pop         ebx
 0041C486    ret
end;*}

end.