//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit _Unit90;

interface

uses
  SysUtils, Classes;

type
  TLibeay = class(TObject)
    constructor Create;//0051C39C
  end;
  _DynArr_90_3 = array of ?;
//elSize = 1
//varType equivalent: varByte;
  TKalCrypt = class(TObject)
  public
    f8:.3;//f8
    constructor Create;//0051C30C
  end;
    procedure sub_0051BDC4;//0051BDC4
    //procedure sub_0051BDCC(?:?);//0051BDCC
    //function sub_0051BE3C(?:?; ?:void ):?;//0051BE3C
    //function sub_0051C034(?:void ):?;//0051C034
    //function sub_0051C070(?:?; ?:?; ?:?):?;//0051C070
    //function sub_0051C0A4(?:byte; ?:?; ?:?):?;//0051C0A4
    //function sub_0051C0D8(?:?; ?:?; ?:?; ?:?; ?:?):?;//0051C0D8
    //function sub_0051C140(?:?; ?:?; ?:?; ?:?):?;//0051C140
    //procedure sub_0051C1C8(?:dword; ?:?);//0051C1C8
    //procedure sub_0051C224(?:?; ?:Integer);//0051C224
    //procedure sub_0051C244(?:?; ?:Integer);//0051C244
    //procedure sub_0051C264(?:dword; ?:?; ?:?);//0051C264
    //procedure sub_0051C2B8(?:?; ?:?; ?:?);//0051C2B8
    //procedure sub_0051C414(?:?; ?:?);//0051C414
    //procedure sub_0051C464(?:?; ?:?);//0051C464
    //procedure sub_0051C4B4(?:?; ?:?);//0051C4B4

implementation

//0051BDC4
procedure sub_0051BDC4;
begin
{*
 0051BDC4    push        ebp
 0051BDC5    mov         ebp,esp
 0051BDC7    bswap       eax
 0051BDC9    pop         ebp
 0051BDCA    ret
*}
end;

//0051BDCC
{*procedure sub_0051BDCC(?:?);
begin
 0051BDCC    push        ebp
 0051BDCD    mov         ebp,esp
 0051BDCF    add         esp,0FFFFFFF8
 0051BDD2    mov         dword ptr [ebp-4],eax
 0051BDD5    mov         eax,dword ptr [ebp-4]
 0051BDD8    mov         eax,dword ptr [eax]
 0051BDDA    mov         dword ptr [ebp-8],eax
 0051BDDD    push        ebp
 0051BDDE    mov         eax,dword ptr [ebp-4]
 0051BDE1    mov         eax,dword ptr [eax]
 0051BDE3    mov         eax,dword ptr [eax]
 0051BDE5    call        0051BDC4
 0051BDEA    pop         ecx
 0051BDEB    mov         edx,dword ptr [ebp-8]
 0051BDEE    mov         dword ptr [edx],eax
 0051BDF0    push        ebp
 0051BDF1    mov         eax,dword ptr [ebp-4]
 0051BDF4    mov         eax,dword ptr [eax]
 0051BDF6    add         eax,4
 0051BDF9    mov         eax,dword ptr [eax]
 0051BDFB    call        0051BDC4
 0051BE00    pop         ecx
 0051BE01    mov         edx,dword ptr [ebp-8]
 0051BE04    mov         dword ptr [edx+4],eax
 0051BE07    push        ebp
 0051BE08    mov         eax,dword ptr [ebp-4]
 0051BE0B    mov         eax,dword ptr [eax]
 0051BE0D    add         eax,8
 0051BE10    mov         eax,dword ptr [eax]
 0051BE12    call        0051BDC4
 0051BE17    pop         ecx
 0051BE18    mov         edx,dword ptr [ebp-8]
 0051BE1B    mov         dword ptr [edx+8],eax
 0051BE1E    push        ebp
 0051BE1F    mov         eax,dword ptr [ebp-4]
 0051BE22    mov         eax,dword ptr [eax]
 0051BE24    add         eax,0C
 0051BE27    mov         eax,dword ptr [eax]
 0051BE29    call        0051BDC4
 0051BE2E    pop         ecx
 0051BE2F    mov         edx,dword ptr [ebp-8]
 0051BE32    mov         dword ptr [edx+0C],eax
 0051BE35    pop         ecx
 0051BE36    pop         ecx
 0051BE37    pop         ebp
 0051BE38    ret
end;*}

//0051BE3C
{*function sub_0051BE3C(?:?; ?:void ):?;
begin
 0051BE3C    push        ebp
 0051BE3D    mov         ebp,esp
 0051BE3F    add         esp,0FFFFFFA4
 0051BE42    mov         dword ptr [ebp-8],edx
 0051BE45    mov         dword ptr [ebp-4],eax
 0051BE48    mov         byte ptr [ebp-9],0
 0051BE4C    xor         eax,eax
 0051BE4E    mov         dword ptr [ebp-18],eax
 0051BE51    xor         eax,eax
 0051BE53    mov         dword ptr [ebp-10],eax
 0051BE56    xor         eax,eax
 0051BE58    mov         dword ptr [ebp-2C],eax
 0051BE5B    xor         eax,eax
 0051BE5D    mov         dword ptr [ebp-34],eax
 0051BE60    xor         eax,eax
 0051BE62    mov         dword ptr [ebp-14],eax
 0051BE65    xor         eax,eax
 0051BE67    mov         dword ptr [ebp-30],eax
 0051BE6A    xor         eax,eax
 0051BE6C    mov         dword ptr [ebp-1C],eax
 0051BE6F    cmp         dword ptr [ebp-1C],5
>0051BE73    jl          0051BF51
 0051BE79    cmp         dword ptr [ebp-1C],2F
>0051BE7D    jl          0051BEC7
 0051BE7F    mov         eax,dword ptr [ebp-1C]
 0051BE82    sub         eax,2F
 0051BE85    cmp         eax,3
>0051BE88    je          0051BE95
 0051BE8A    mov         eax,dword ptr [ebp-1C]
 0051BE8D    sub         eax,2F
 0051BE90    cmp         eax,4
>0051BE93    jne         0051BEAE
 0051BE95    mov         eax,dword ptr [ebp-8]
 0051BE98    mov         edx,dword ptr [ebp-1C]
 0051BE9B    mov         al,byte ptr [eax+edx]
 0051BE9E    xor         al,0EA
 0051BEA0    mov         edx,dword ptr [ebp-8]
 0051BEA3    mov         ecx,dword ptr [ebp-1C]
 0051BEA6    mov         byte ptr [edx+ecx],al
>0051BEA9    jmp         0051BF51
 0051BEAE    mov         eax,dword ptr [ebp-8]
 0051BEB1    mov         edx,dword ptr [ebp-1C]
 0051BEB4    mov         al,byte ptr [eax+edx]
 0051BEB7    xor         al,0B0
 0051BEB9    mov         edx,dword ptr [ebp-8]
 0051BEBC    mov         ecx,dword ptr [ebp-1C]
 0051BEBF    mov         byte ptr [edx+ecx],al
>0051BEC2    jmp         0051BF51
 0051BEC7    cmp         dword ptr [ebp-18],3
>0051BECB    jne         0051BED7
 0051BECD    xor         eax,eax
 0051BECF    mov         dword ptr [ebp-18],eax
 0051BED2    inc         dword ptr [ebp-14]
>0051BED5    jmp         0051BEDD
 0051BED7    inc         dword ptr [ebp-18]
 0051BEDA    inc         dword ptr [ebp-10]
 0051BEDD    cmp         dword ptr [ebp-18],0
>0051BEE1    je          0051BEFF
 0051BEE3    cmp         dword ptr [ebp-10],10
>0051BEE7    jg          0051BEFF
 0051BEE9    mov         eax,dword ptr [ebp-8]
 0051BEEC    mov         edx,dword ptr [ebp-1C]
 0051BEEF    mov         al,byte ptr [eax+edx]
 0051BEF2    xor         al,0AC
 0051BEF4    mov         edx,dword ptr [ebp-8]
 0051BEF7    mov         ecx,dword ptr [ebp-1C]
 0051BEFA    mov         byte ptr [edx+ecx],al
>0051BEFD    jmp         0051BF51
 0051BEFF    cmp         dword ptr [ebp-18],0
>0051BF03    je          0051BF21
 0051BF05    cmp         dword ptr [ebp-10],10
>0051BF09    jle         0051BF21
 0051BF0B    mov         eax,dword ptr [ebp-8]
 0051BF0E    mov         edx,dword ptr [ebp-1C]
 0051BF11    mov         al,byte ptr [eax+edx]
 0051BF14    xor         al,0C2
 0051BF16    mov         edx,dword ptr [ebp-8]
 0051BF19    mov         ecx,dword ptr [ebp-1C]
 0051BF1C    mov         byte ptr [edx+ecx],al
>0051BF1F    jmp         0051BF51
 0051BF21    cmp         dword ptr [ebp-14],5
>0051BF25    jg          0051BF3D
 0051BF27    mov         eax,dword ptr [ebp-8]
 0051BF2A    mov         edx,dword ptr [ebp-1C]
 0051BF2D    mov         al,byte ptr [eax+edx]
 0051BF30    xor         al,8A
 0051BF32    mov         edx,dword ptr [ebp-8]
 0051BF35    mov         ecx,dword ptr [ebp-1C]
 0051BF38    mov         byte ptr [edx+ecx],al
>0051BF3B    jmp         0051BF51
 0051BF3D    mov         eax,dword ptr [ebp-8]
 0051BF40    mov         edx,dword ptr [ebp-1C]
 0051BF43    mov         al,byte ptr [eax+edx]
 0051BF46    xor         al,0FE
 0051BF48    mov         edx,dword ptr [ebp-8]
 0051BF4B    mov         ecx,dword ptr [ebp-1C]
 0051BF4E    mov         byte ptr [edx+ecx],al
 0051BF51    inc         dword ptr [ebp-1C]
 0051BF54    cmp         dword ptr [ebp-1C],34
>0051BF58    jne         0051BE6F
 0051BF5E    xor         eax,eax
 0051BF60    mov         dword ptr [ebp-1C],eax
 0051BF63    cmp         dword ptr [ebp-1C],5
>0051BF67    jge         0051BF7B
 0051BF69    mov         eax,dword ptr [ebp-8]
 0051BF6C    mov         edx,dword ptr [ebp-1C]
 0051BF6F    mov         al,byte ptr [eax+edx]
 0051BF72    mov         edx,dword ptr [ebp-1C]
 0051BF75    mov         byte ptr [ebp+edx-21],al
>0051BF79    jmp         0051BFD1
 0051BF7B    cmp         dword ptr [ebp-1C],2F
>0051BF7F    jl          0051BF93
 0051BF81    mov         eax,dword ptr [ebp-8]
 0051BF84    mov         edx,dword ptr [ebp-1C]
 0051BF87    mov         al,byte ptr [eax+edx]
 0051BF8A    mov         edx,dword ptr [ebp-1C]
 0051BF8D    mov         byte ptr [ebp+edx-55],al
>0051BF91    jmp         0051BFD1
 0051BF93    cmp         dword ptr [ebp-2C],3
>0051BF97    jne         0051BFA0
 0051BF99    xor         eax,eax
 0051BF9B    mov         dword ptr [ebp-2C],eax
>0051BF9E    jmp         0051BFD1
 0051BFA0    cmp         dword ptr [ebp-34],10
>0051BFA4    jl          0051BFBB
 0051BFA6    mov         eax,dword ptr [ebp-8]
 0051BFA9    mov         edx,dword ptr [ebp-1C]
 0051BFAC    mov         al,byte ptr [eax+edx]
 0051BFAF    mov         edx,dword ptr [ebp-30]
 0051BFB2    mov         byte ptr [ebp+edx-5C],al
 0051BFB6    inc         dword ptr [ebp-30]
>0051BFB9    jmp         0051BFCE
 0051BFBB    mov         eax,dword ptr [ebp-8]
 0051BFBE    mov         edx,dword ptr [ebp-1C]
 0051BFC1    mov         al,byte ptr [eax+edx]
 0051BFC4    mov         edx,dword ptr [ebp-34]
 0051BFC7    mov         byte ptr [ebp+edx-4C],al
 0051BFCB    inc         dword ptr [ebp-34]
 0051BFCE    inc         dword ptr [ebp-2C]
 0051BFD1    inc         dword ptr [ebp-1C]
 0051BFD4    cmp         dword ptr [ebp-1C],34
>0051BFD8    jne         0051BF63
 0051BFDA    xor         eax,eax
 0051BFDC    mov         dword ptr [ebp-38],eax
 0051BFDF    mov         eax,dword ptr [ebp-38]
 0051BFE2    mov         al,byte ptr [ebp+eax-21]
 0051BFE6    mov         edx,dword ptr [ebp-38]
 0051BFE9    cmp         al,byte ptr [ebp+edx-26]
>0051BFED    jne         0051C02A
 0051BFEF    inc         dword ptr [ebp-38]
 0051BFF2    cmp         dword ptr [ebp-38],5
>0051BFF6    jne         0051BFDF
 0051BFF8    xor         eax,eax
 0051BFFA    mov         dword ptr [ebp-3C],eax
 0051BFFD    mov         eax,dword ptr [ebp-3C]
 0051C000    mov         al,byte ptr [ebp+eax-4C]
 0051C004    mov         edx,dword ptr [ebp-3C]
 0051C007    cmp         al,byte ptr [ebp+edx-5C]
>0051C00B    jne         0051C02A
 0051C00D    mov         eax,dword ptr [ebp-3C]
 0051C010    mov         al,byte ptr [ebp+eax-4C]
 0051C014    mov         edx,dword ptr [ebp-4]
 0051C017    mov         ecx,dword ptr [ebp-3C]
 0051C01A    mov         byte ptr [edx+ecx],al
 0051C01D    inc         dword ptr [ebp-3C]
 0051C020    cmp         dword ptr [ebp-3C],10
>0051C024    jne         0051BFFD
 0051C026    mov         byte ptr [ebp-9],1
 0051C02A    mov         al,byte ptr [ebp-9]
 0051C02D    mov         esp,ebp
 0051C02F    pop         ebp
 0051C030    ret
end;*}

//0051C034
{*function sub_0051C034(?:void ):?;
begin
 0051C034    push        ebp
 0051C035    mov         ebp,esp
 0051C037    add         esp,0FFFFFFEC
 0051C03A    mov         dword ptr [ebp-4],eax
 0051C03D    mov         eax,dword ptr [ebp-4]
 0051C040    shr         eax,6
 0051C043    mov         dword ptr [ebp-10],eax
 0051C046    mov         eax,dword ptr [ebp-10]
 0051C049    mov         dword ptr [ebp-14],eax
 0051C04C    mov         eax,dword ptr [ebp-10]
 0051C04F    shr         eax,9
 0051C052    shl         eax,9
 0051C055    mov         edx,dword ptr [ebp-14]
 0051C058    sub         edx,eax
 0051C05A    mov         dword ptr [ebp-0C],edx
 0051C05D    mov         eax,dword ptr [ebp-0C]
 0051C060    xor         eax,7E4D
 0051C065    mov         dword ptr [ebp-8],eax
 0051C068    mov         eax,dword ptr [ebp-8]
 0051C06B    mov         esp,ebp
 0051C06D    pop         ebp
 0051C06E    ret
end;*}

//0051C070
{*function sub_0051C070(?:?; ?:?; ?:?):?;
begin
 0051C070    push        ebp
 0051C071    mov         ebp,esp
 0051C073    add         esp,0FFFFFFF0
 0051C076    mov         dword ptr [ebp-0C],ecx
 0051C079    mov         dword ptr [ebp-8],edx
 0051C07C    mov         dword ptr [ebp-4],eax
 0051C07F    mov         eax,dword ptr [ebp-8]
 0051C082    push        eax
 0051C083    mov         eax,dword ptr [ebp-0C]
 0051C086    push        eax
 0051C087    mov         eax,[0055B52C];^gvar_00541AAC
 0051C08C    mov         ecx,dword ptr [ebp-4]
 0051C08F    mov         edx,63FF
 0051C094    call        0051C0D8
 0051C099    mov         dword ptr [ebp-10],eax
 0051C09C    mov         eax,dword ptr [ebp-10]
 0051C09F    mov         esp,ebp
 0051C0A1    pop         ebp
 0051C0A2    ret
end;*}

//0051C0A4
{*function sub_0051C0A4(?:byte; ?:?; ?:?):?;
begin
 0051C0A4    push        ebp
 0051C0A5    mov         ebp,esp
 0051C0A7    add         esp,0FFFFFFF0
 0051C0AA    mov         dword ptr [ebp-0C],ecx
 0051C0AD    mov         dword ptr [ebp-8],edx
 0051C0B0    mov         dword ptr [ebp-4],eax
 0051C0B3    mov         eax,dword ptr [ebp-8]
 0051C0B6    push        eax
 0051C0B7    mov         eax,dword ptr [ebp-0C]
 0051C0BA    push        eax
 0051C0BB    mov         eax,[0055B1FC];^gvar_00547EAC
 0051C0C0    mov         ecx,dword ptr [ebp-4]
 0051C0C3    mov         edx,63FF
 0051C0C8    call        0051C0D8
 0051C0CD    mov         dword ptr [ebp-10],eax
 0051C0D0    mov         eax,dword ptr [ebp-10]
 0051C0D3    mov         esp,ebp
 0051C0D5    pop         ebp
 0051C0D6    ret
end;*}

//0051C0D8
{*function sub_0051C0D8(?:?; ?:?; ?:?; ?:?; ?:?):?;
begin
 0051C0D8    push        ebp
 0051C0D9    mov         ebp,esp
 0051C0DB    add         esp,0FFFFFFEC
 0051C0DE    mov         dword ptr [ebp-8],ecx
 0051C0E1    mov         dword ptr [ebp-14],edx
 0051C0E4    mov         dword ptr [ebp-4],eax
 0051C0E7    mov         eax,dword ptr [ebp+8]
 0051C0EA    dec         eax
 0051C0EB    mov         dword ptr [ebp-10],eax
 0051C0EE    cmp         dword ptr [ebp+0C],0
>0051C0F2    jne         0051C0FD
 0051C0F4    mov         dword ptr [ebp-0C],0FFFFFFFF
>0051C0FB    jmp         0051C137
 0051C0FD    and         dword ptr [ebp-8],3F
 0051C101    shl         dword ptr [ebp-8],8
 0051C105    cmp         dword ptr [ebp-10],0
>0051C109    jl          0051C130
 0051C10B    mov         eax,dword ptr [ebp-10]
 0051C10E    mov         edx,dword ptr [ebp+0C]
 0051C111    movzx       eax,byte ptr [edx+eax]
 0051C115    add         eax,dword ptr [ebp-8]
 0051C118    mov         edx,dword ptr [ebp-4]
 0051C11B    mov         al,byte ptr [edx+eax]
 0051C11E    mov         edx,dword ptr [ebp-10]
 0051C121    mov         ecx,dword ptr [ebp+0C]
 0051C124    mov         byte ptr [ecx+edx],al
 0051C127    dec         dword ptr [ebp-10]
 0051C12A    cmp         dword ptr [ebp-10],0
>0051C12E    jge         0051C10B
 0051C130    mov         eax,dword ptr [ebp-10]
 0051C133    inc         eax
 0051C134    mov         dword ptr [ebp-0C],eax
 0051C137    mov         eax,dword ptr [ebp-0C]
 0051C13A    mov         esp,ebp
 0051C13C    pop         ebp
 0051C13D    ret         8
end;*}

//0051C140
{*function sub_0051C140(?:?; ?:?; ?:?; ?:?):?;
begin
 0051C140    push        ebp
 0051C141    mov         ebp,esp
 0051C143    add         esp,0FFFFFFE0
 0051C146    mov         dword ptr [ebp-8],ecx
 0051C149    mov         dword ptr [ebp-20],edx
 0051C14C    mov         dword ptr [ebp-4],eax
 0051C14F    xor         eax,eax
 0051C151    mov         dword ptr [ebp-18],eax
 0051C154    cmp         dword ptr [ebp-8],0
>0051C158    jne         0051C163
 0051C15A    mov         dword ptr [ebp-0C],0FFFFFFFF
>0051C161    jmp         0051C1BE
 0051C163    mov         eax,dword ptr [ebp+8]
 0051C166    and         eax,8000000F
>0051C16B    jns         0051C172
 0051C16D    dec         eax
 0051C16E    or          eax,0FFFFFFF0
 0051C171    inc         eax
 0051C172    mov         edx,dword ptr [ebp+8]
 0051C175    sub         edx,eax
 0051C177    mov         dword ptr [ebp-10],edx
 0051C17A    mov         eax,dword ptr [ebp-10]
 0051C17D    mov         edx,dword ptr [ebp+8]
 0051C180    dec         edx
 0051C181    sub         edx,eax
>0051C183    jl          0051C1B7
 0051C185    inc         edx
 0051C186    mov         dword ptr [ebp-1C],edx
 0051C189    mov         dword ptr [ebp-14],eax
 0051C18C    mov         eax,dword ptr [ebp-4]
 0051C18F    mov         edx,dword ptr [ebp-18]
 0051C192    mov         al,byte ptr [eax+edx]
 0051C195    mov         edx,dword ptr [ebp-8]
 0051C198    mov         ecx,dword ptr [ebp-10]
 0051C19B    mov         dl,byte ptr [edx+ecx]
 0051C19E    xor         al,dl
 0051C1A0    mov         edx,dword ptr [ebp-8]
 0051C1A3    mov         ecx,dword ptr [ebp-10]
 0051C1A6    mov         byte ptr [edx+ecx],al
 0051C1A9    inc         dword ptr [ebp-10]
 0051C1AC    inc         dword ptr [ebp-18]
 0051C1AF    inc         dword ptr [ebp-14]
 0051C1B2    dec         dword ptr [ebp-1C]
>0051C1B5    jne         0051C18C
 0051C1B7    mov         eax,dword ptr [ebp-10]
 0051C1BA    inc         eax
 0051C1BB    mov         dword ptr [ebp-0C],eax
 0051C1BE    mov         eax,dword ptr [ebp-0C]
 0051C1C1    mov         esp,ebp
 0051C1C3    pop         ebp
 0051C1C4    ret         4
end;*}

//0051C1C8
{*procedure sub_0051C1C8(?:dword; ?:?);
begin
 0051C1C8    push        ebp
 0051C1C9    mov         ebp,esp
 0051C1CB    add         esp,0FFFFFFF4
 0051C1CE    mov         dword ptr [ebp-8],edx
 0051C1D1    mov         dword ptr [ebp-4],eax
 0051C1D4    push        10
 0051C1D6    mov         eax,dword ptr [ebp-4]
 0051C1D9    add         eax,8
 0051C1DC    mov         ecx,1
 0051C1E1    mov         edx,dword ptr ds:[51BD2C];_DynArr_90_3
 0051C1E7    call        @DynArraySetLength
 0051C1EC    add         esp,4
 0051C1EF    xor         eax,eax
 0051C1F1    mov         dword ptr [ebp-0C],eax
 0051C1F4    mov         eax,dword ptr [ebp-8]
 0051C1F7    mov         edx,dword ptr [ebp-0C]
 0051C1FA    mov         al,byte ptr [eax+edx]
 0051C1FD    mov         edx,dword ptr [ebp-4]
 0051C200    mov         edx,dword ptr [edx+8]
 0051C203    mov         ecx,dword ptr [ebp-0C]
 0051C206    mov         byte ptr [edx+ecx],al
 0051C209    inc         dword ptr [ebp-0C]
 0051C20C    cmp         dword ptr [ebp-0C],10
>0051C210    jne         0051C1F4
 0051C212    lea         edx,[ebp-8]
 0051C215    mov         eax,dword ptr [ebp-4]
 0051C218    mov         eax,dword ptr [eax+4]
 0051C21B    call        0051C4B4
 0051C220    mov         esp,ebp
 0051C222    pop         ebp
 0051C223    ret
end;*}

//0051C224
{*procedure sub_0051C224(?:?; ?:Integer);
begin
 0051C224    push        ebp
 0051C225    mov         ebp,esp
 0051C227    add         esp,0FFFFFFF8
 0051C22A    mov         dword ptr [ebp-8],edx
 0051C22D    mov         dword ptr [ebp-4],eax
 0051C230    lea         edx,[ebp-8]
 0051C233    mov         eax,dword ptr [ebp-4]
 0051C236    mov         eax,dword ptr [eax+4]
 0051C239    call        0051C414
 0051C23E    pop         ecx
 0051C23F    pop         ecx
 0051C240    pop         ebp
 0051C241    ret
end;*}

//0051C244
{*procedure sub_0051C244(?:?; ?:Integer);
begin
 0051C244    push        ebp
 0051C245    mov         ebp,esp
 0051C247    add         esp,0FFFFFFF8
 0051C24A    mov         dword ptr [ebp-8],edx
 0051C24D    mov         dword ptr [ebp-4],eax
 0051C250    lea         edx,[ebp-8]
 0051C253    mov         eax,dword ptr [ebp-4]
 0051C256    mov         eax,dword ptr [eax+4]
 0051C259    call        0051C464
 0051C25E    pop         ecx
 0051C25F    pop         ecx
 0051C260    pop         ebp
 0051C261    ret
end;*}

//0051C264
{*procedure sub_0051C264(?:dword; ?:?; ?:?);
begin
 0051C264    push        ebp
 0051C265    mov         ebp,esp
 0051C267    add         esp,0FFFFFFE4
 0051C26A    mov         dword ptr [ebp-0C],ecx
 0051C26D    mov         dword ptr [ebp-8],edx
 0051C270    mov         dword ptr [ebp-4],eax
 0051C273    mov         eax,dword ptr [ebp-0C]
 0051C276    shr         eax,4
 0051C279    mov         dword ptr [ebp-18],eax
 0051C27C    mov         eax,dword ptr [ebp-18]
 0051C27F    dec         eax
 0051C280    test        eax,eax
>0051C282    jl          0051C2B1
 0051C284    inc         eax
 0051C285    mov         dword ptr [ebp-1C],eax
 0051C288    mov         dword ptr [ebp-10],0
 0051C28F    mov         eax,dword ptr [ebp-10]
 0051C292    shl         eax,4
 0051C295    mov         dword ptr [ebp-14],eax
 0051C298    mov         eax,dword ptr [ebp-8]
 0051C29B    mov         edx,dword ptr [ebp-14]
 0051C29E    lea         edx,[eax+edx]
 0051C2A1    mov         eax,dword ptr [ebp-4]
 0051C2A4    call        0051C244
 0051C2A9    inc         dword ptr [ebp-10]
 0051C2AC    dec         dword ptr [ebp-1C]
>0051C2AF    jne         0051C28F
 0051C2B1    mov         esp,ebp
 0051C2B3    pop         ebp
 0051C2B4    ret
end;*}

//0051C2B8
{*procedure sub_0051C2B8(?:?; ?:?; ?:?);
begin
 0051C2B8    push        ebp
 0051C2B9    mov         ebp,esp
 0051C2BB    add         esp,0FFFFFFE4
 0051C2BE    mov         dword ptr [ebp-0C],ecx
 0051C2C1    mov         dword ptr [ebp-8],edx
 0051C2C4    mov         dword ptr [ebp-4],eax
 0051C2C7    mov         eax,dword ptr [ebp-0C]
 0051C2CA    shr         eax,4
 0051C2CD    mov         dword ptr [ebp-18],eax
 0051C2D0    mov         eax,dword ptr [ebp-18]
 0051C2D3    dec         eax
 0051C2D4    test        eax,eax
>0051C2D6    jl          0051C305
 0051C2D8    inc         eax
 0051C2D9    mov         dword ptr [ebp-1C],eax
 0051C2DC    mov         dword ptr [ebp-10],0
 0051C2E3    mov         eax,dword ptr [ebp-10]
 0051C2E6    shl         eax,4
 0051C2E9    mov         dword ptr [ebp-14],eax
 0051C2EC    mov         eax,dword ptr [ebp-8]
 0051C2EF    mov         edx,dword ptr [ebp-14]
 0051C2F2    lea         edx,[eax+edx]
 0051C2F5    mov         eax,dword ptr [ebp-4]
 0051C2F8    call        0051C224
 0051C2FD    inc         dword ptr [ebp-10]
 0051C300    dec         dword ptr [ebp-1C]
>0051C303    jne         0051C2E3
 0051C305    mov         esp,ebp
 0051C307    pop         ebp
 0051C308    ret
end;*}

//0051C30C
constructor TKalCrypt.Create;
begin
{*
 0051C30C    push        ebp
 0051C30D    mov         ebp,esp
 0051C30F    add         esp,0FFFFFFF8
 0051C312    test        dl,dl
>0051C314    je          0051C31E
 0051C316    add         esp,0FFFFFFF0
 0051C319    call        @ClassCreate
 0051C31E    mov         byte ptr [ebp-5],dl
 0051C321    mov         dword ptr [ebp-4],eax
 0051C324    xor         edx,edx
 0051C326    mov         eax,dword ptr [ebp-4]
 0051C329    call        TObject.Create
 0051C32E    mov         dl,1
 0051C330    mov         eax,[0051BCD8];TLibeay
 0051C335    call        TLibeay.Create;TLibeay.Create
 0051C33A    mov         edx,dword ptr [ebp-4]
 0051C33D    mov         dword ptr [edx+4],eax
 0051C340    mov         eax,dword ptr [ebp-4]
 0051C343    cmp         byte ptr [ebp-5],0
>0051C347    je          0051C358
 0051C349    call        @AfterConstruction
 0051C34E    pop         dword ptr fs:[0]
 0051C355    add         esp,0C
 0051C358    mov         eax,dword ptr [ebp-4]
 0051C35B    pop         ecx
 0051C35C    pop         ecx
 0051C35D    pop         ebp
 0051C35E    ret
*}
end;

//0051C39C
constructor TLibeay.Create;
begin
{*
 0051C39C    push        ebp
 0051C39D    mov         ebp,esp
 0051C39F    add         esp,0FFFFFFF8
 0051C3A2    test        dl,dl
>0051C3A4    je          0051C3AE
 0051C3A6    add         esp,0FFFFFFF0
 0051C3A9    call        @ClassCreate
 0051C3AE    mov         byte ptr [ebp-5],dl
 0051C3B1    mov         dword ptr [ebp-4],eax
 0051C3B4    xor         edx,edx
 0051C3B6    mov         eax,dword ptr [ebp-4]
 0051C3B9    call        TObject.Create
 0051C3BE    mov         eax,dword ptr [ebp-4]
 0051C3C1    cmp         byte ptr [ebp-5],0
>0051C3C5    je          0051C3D6
 0051C3C7    call        @AfterConstruction
 0051C3CC    pop         dword ptr fs:[0]
 0051C3D3    add         esp,0C
 0051C3D6    mov         eax,dword ptr [ebp-4]
 0051C3D9    pop         ecx
 0051C3DA    pop         ecx
 0051C3DB    pop         ebp
 0051C3DC    ret
*}
end;

//0051C414
{*procedure sub_0051C414(?:?; ?:?);
begin
 0051C414    push        ebp
 0051C415    mov         ebp,esp
 0051C417    add         esp,0FFFFFFE8
 0051C41A    mov         dword ptr [ebp-8],edx
 0051C41D    mov         dword ptr [ebp-4],eax
 0051C420    mov         eax,dword ptr [ebp-8]
 0051C423    call        0051BDCC
 0051C428    push        1
 0051C42A    mov         eax,dword ptr [ebp-4]
 0051C42D    add         eax,4
 0051C430    push        eax
 0051C431    lea         eax,[ebp-18]
 0051C434    push        eax
 0051C435    mov         eax,dword ptr [ebp-8]
 0051C438    mov         eax,dword ptr [eax]
 0051C43A    push        eax
 0051C43B    call        libeay32.AES_ecb_encrypt
 0051C440    add         esp,10
 0051C443    lea         edx,[ebp-18]
 0051C446    mov         eax,dword ptr [ebp-8]
 0051C449    mov         eax,dword ptr [eax]
 0051C44B    mov         ecx,10
 0051C450    call        0040810C
 0051C455    mov         eax,dword ptr [ebp-8]
 0051C458    call        0051BDCC
 0051C45D    mov         esp,ebp
 0051C45F    pop         ebp
 0051C460    ret
end;*}

//0051C464
{*procedure sub_0051C464(?:?; ?:?);
begin
 0051C464    push        ebp
 0051C465    mov         ebp,esp
 0051C467    add         esp,0FFFFFFE8
 0051C46A    mov         dword ptr [ebp-8],edx
 0051C46D    mov         dword ptr [ebp-4],eax
 0051C470    mov         eax,dword ptr [ebp-8]
 0051C473    call        0051BDCC
 0051C478    push        0
 0051C47A    mov         eax,dword ptr [ebp-4]
 0051C47D    add         eax,198
 0051C482    push        eax
 0051C483    lea         eax,[ebp-18]
 0051C486    push        eax
 0051C487    mov         eax,dword ptr [ebp-8]
 0051C48A    mov         eax,dword ptr [eax]
 0051C48C    push        eax
 0051C48D    call        libeay32.AES_ecb_encrypt
 0051C492    add         esp,10
 0051C495    lea         edx,[ebp-18]
 0051C498    mov         eax,dword ptr [ebp-8]
 0051C49B    mov         eax,dword ptr [eax]
 0051C49D    mov         ecx,10
 0051C4A2    call        0040810C
 0051C4A7    mov         eax,dword ptr [ebp-8]
 0051C4AA    call        0051BDCC
 0051C4AF    mov         esp,ebp
 0051C4B1    pop         ebp
 0051C4B2    ret
end;*}

//0051C4B4
{*procedure sub_0051C4B4(?:?; ?:?);
begin
 0051C4B4    push        ebp
 0051C4B5    mov         ebp,esp
 0051C4B7    add         esp,0FFFFFFF8
 0051C4BA    mov         dword ptr [ebp-8],edx
 0051C4BD    mov         dword ptr [ebp-4],eax
 0051C4C0    mov         eax,dword ptr [ebp-8]
 0051C4C3    call        0051BDCC
 0051C4C8    mov         eax,dword ptr [ebp-4]
 0051C4CB    add         eax,4
 0051C4CE    push        eax
 0051C4CF    push        80
 0051C4D4    mov         eax,dword ptr [ebp-8]
 0051C4D7    mov         eax,dword ptr [eax]
 0051C4D9    push        eax
 0051C4DA    call        libeay32.AES_set_encrypt_key
 0051C4DF    add         esp,0C
 0051C4E2    mov         eax,dword ptr [ebp-4]
 0051C4E5    add         eax,198
 0051C4EA    push        eax
 0051C4EB    push        80
 0051C4F0    mov         eax,dword ptr [ebp-8]
 0051C4F3    mov         eax,dword ptr [eax]
 0051C4F5    push        eax
 0051C4F6    call        libeay32.AES_set_decrypt_key
 0051C4FB    add         esp,0C
 0051C4FE    pop         ecx
 0051C4FF    pop         ecx
 0051C500    pop         ebp
 0051C501    ret
end;*}

Initialization
//0051C534
{*
 0051C534    push        ebp
 0051C535    mov         ebp,esp
 0051C537    sub         dword ptr ds:[55E058],1
 0051C53E    pop         ebp
 0051C53F    ret
*}
Finalization
end.