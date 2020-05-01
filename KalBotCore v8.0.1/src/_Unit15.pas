//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit _Unit15;

interface

uses
  SysUtils, Classes;

type
  _Arr_15_3 = array [1..2] of INVItemEx;
  TNVItem = class(TInterfacedObject)
  public
    fC:dword;//fC
    f10:WideString;//f10
    f14:dword;//f14
    f19:byte;//f19
    f1C:dword;//f1C
    f20:.3;//f20
    f28:dword;//f28
    //f2C:?;//f2C
    f34:dword;//f34
    f38:Integer;//f38
    f3C:byte;//f3C
    f40:WideString;//f40
    //procedure v0(?:?; ?:?); virtual;//v0//0042A200
    //procedure v4(?:?; ?:?; ?:?); virtual;//v4//0042A2D4
    procedure v8; virtual;//v8//0042A508
    procedure vC; virtual;//vC//0042A50C
    //function v10:?; virtual;//v10//0042A528
  end;
  TNVButton = class(TNVItem)
  public
    f48:dword;//f48
    f4C:WideString;//f4C
    f50:byte;//f50
    f51:byte;//f51
    //procedure v0(?:?; ?:?); virtual;//v0//0042A7A8
    //procedure v4(?:?; ?:?; ?:?); virtual;//v4//0042A888
    //procedure vC(?:?; ?:?; ?:?); virtual;//vC//0042A96C
    //constructor Create(?:?; ?:?);//0042A75C
  end;
  TNVLabel = class(TNVItem)
  public
    .:WideString;//f48
    //procedure v0(?:?; ?:?); virtual;//v0//0042AC88
    //procedure v4(?:?; ?:?; ?:?); virtual;//v4//0042ACD0
    //constructor Create(?:?);//0042A15C
  end;
  TNVEdit = class(TNVItem)
  public
    f48:dword;//f48
    f4C:byte;//f4C
    ..:WideString;//f50
    f54:byte;//f54
    f55:byte;//f55
    //procedure v0(?:?; ?:?); virtual;//v0//0042AFC8
    //procedure v4(?:?; ?:?; ?:?); virtual;//v4//0042B0F8
    //procedure v8(?:?); virtual;//v8//0042B1B0
    //function v10:?; virtual;//v10//0042B280
  end;
  TNVCheckBox = class(TNVItem)
  public
    ..:WideString;//f48
    f4C:byte;//f4C
    //procedure v0(?:?; ?:?); virtual;//v0//0042B4EC
    //procedure v4(?:?; ?:?; ?:?); virtual;//v4//0042B58C
    //procedure vC(?:?; ?:?; ?:?); virtual;//vC//0042B640
  end;
  TNVImage = class(TNVItem)
  public
    f48:WideString;//f48
    f4C:INVBitmap;//f4C
    f50:byte;//f50
    f51:byte;//f51
    //procedure v0(?:?; ?:?); virtual;//v0//0042B884
    //procedure v4(?:?; ?:?; ?:?); virtual;//v4//0042B980
    //procedure v8(?:?); virtual;//v8//0042BB10
  end;
  _DynArr_15_01 = array of INVItemEx;
//elSize = 4
//varType equivalent: varUnknown;
  TNVForm = class(TInterfacedObject)
  public
    f10:WideString;//f10
    f14:WideString;//f14
    f18:WideString;//f18
    f24:.01;//f24
    f44:WideString;//f44
    f4C:INVItem;//f4C
    f54:IInterface;//f54
    //constructor Create(?:?; ?:?; ?:?; ?:?; ?:?);//0042CA70
  end;
  _DynArr_15_21 = array of INVForm;
//elSize = 4
//varType equivalent: varUnknown;
  TNVAssistant = class(TInterfacedObject)
  public
    fC:WideString;//fC
    f10:.21;//f10
    f1C:IInterface;//f1C
    //constructor Create(?:?; ?:?; ?:?);//0042ED08
  end;
    //function sub_00429A68(?:?):?;//00429A68
    //function sub_00429AD4(?:?):?;//00429AD4
    //procedure sub_00429B38(?:DWORD; ?:?; ?:?);//00429B38
    //function sub_00429C34(?:?; ?:?; ?:?):?;//00429C34
    //procedure sub_00429CB4(?:HDC; ?:WideString; ?:?; ?:?; ?:?);//00429CB4
    //procedure sub_00429D70(?:?; ?:?; ?:?; ?:?);//00429D70
    //procedure sub_00429DB8(?:?; ?:?; ?:?; ?:?; ?:?; ?:?);//00429DB8
    //procedure sub_00429DEC(?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?);//00429DEC
    //procedure sub_00429F00(?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?);//00429F00
    //procedure sub_00429F54(?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?);//00429F54
    procedure sub_0042A1B0;//0042A1B0
    //function sub_0042A1B4(?:?):?;//0042A1B4
    //procedure sub_0042A200(?:?; ?:?);//0042A200
    //procedure sub_0042A2D4(?:?; ?:?; ?:?);//0042A2D4
    procedure sub_0042A508;//0042A508
    procedure sub_0042A50C;//0042A50C
    //function sub_0042A528:?;//0042A528
    //procedure sub_0042A52C(?:TNVItem; ?:?; ?:?; ?:?; ?:?);//0042A52C
    //procedure sub_0042A65C(?:?; ?:?);//0042A65C
    //function sub_0042A684(?:?):?;//0042A684
    //procedure sub_0042A688(?:?; ?:?);//0042A688
    //procedure sub_0042A69C(?:?; ?:?);//0042A69C
    //function sub_0042A6B0(?:?):?;//0042A6B0
    //function sub_0042A6B4(?:?):?;//0042A6B4
    //function sub_0042A6B8(?:?):?;//0042A6B8
    //function sub_0042A6BC(?:?):?;//0042A6BC
    //procedure sub_0042A6C0(?:?; ?:?);//0042A6C0
    //procedure sub_0042A6E8(?:?; ?:?);//0042A6E8
    //procedure sub_0042A6FC(?:?; ?:?);//0042A6FC
    //procedure sub_0042A724(?:?);//0042A724
    //procedure sub_0042A7A8(?:?; ?:?);//0042A7A8
    //procedure sub_0042A888(?:?; ?:?; ?:?);//0042A888
    //procedure sub_0042A96C(?:?; ?:?; ?:?);//0042A96C
    //procedure sub_0042AC44(?:TNVButton; ?:?);//0042AC44
    //procedure sub_0042AC70(?:?; ?:?);//0042AC70
    //function sub_0042AC84(?:?):?;//0042AC84
    //procedure sub_0042AC88(?:?; ?:?);//0042AC88
    //procedure sub_0042ACD0(?:?; ?:?; ?:?);//0042ACD0
    //procedure sub_0042AD7C(?:TNVItem; ?:?; ?:?);//0042AD7C
    //function sub_0042AE8C(?:TNVItem; ?:?):?;//0042AE8C
    //procedure sub_0042AF88(?:TNVItem; ?:?);//0042AF88
    //procedure sub_0042AFB4(?:?; ?:?);//0042AFB4
    //procedure sub_0042AFC8(?:?; ?:?);//0042AFC8
    //procedure sub_0042B0F8(?:?; ?:?; ?:?);//0042B0F8
    //procedure sub_0042B1B0(?:?);//0042B1B0
    //function sub_0042B280:?;//0042B280
    //function sub_0042B2E4(?:?):?;//0042B2E4
    //function sub_0042B2E8(?:?):?;//0042B2E8
    //procedure sub_0042B2EC(?:?; ?:?);//0042B2EC
    //procedure sub_0042B300(?:TNVEdit; ?:?);//0042B300
    //procedure sub_0042B3E0(?:?; ?:?);//0042B3E0
    //procedure sub_0042B4A4(?:?);//0042B4A4
    //procedure sub_0042B4AC(?:?; ?:?);//0042B4AC
    //procedure sub_0042B4C0(?:?);//0042B4C0
    //procedure sub_0042B4C8(?:?; ?:?);//0042B4C8
    //procedure sub_0042B4EC(?:?; ?:?);//0042B4EC
    //procedure sub_0042B58C(?:?; ?:?; ?:?);//0042B58C
    //procedure sub_0042B640(?:?; ?:?; ?:?);//0042B640
    //procedure sub_0042B840(?:?; ?:?);//0042B840
    //procedure sub_0042B854(?:?; ?:?);//0042B854
    //function sub_0042B868(?:?):?;//0042B868
    //procedure sub_0042B86C(?:?; ?:?);//0042B86C
    //procedure sub_0042B884(?:?; ?:?);//0042B884
    //procedure sub_0042B980(?:?; ?:?; ?:?);//0042B980
    //procedure sub_0042BB10(?:?);//0042BB10
    //procedure sub_0042BC38(?:?; ?:?);//0042BC38
    //procedure sub_0042BC4C(?:?; ?:?);//0042BC4C
    //function sub_0042BC60(?:?):?;//0042BC60
    //function sub_0042BC64(?:?):?;//0042BC64
    //function sub_0042BC68(?:?):?;//0042BC68
    //function sub_0042BC74(?:?):?;//0042BC74
    //procedure sub_0042BC80(?:?; ?:?);//0042BC80
    //procedure sub_0042BD90(?:TNVItem; ?:IInterface; ?:?);//0042BD90
    //procedure sub_0042BE98(?:?; ?:?; ?:WideString; ?:?);//0042BE98
    //function sub_0042C180(?:IInterface; ?:?; ?:?):?;//0042C180
    //function sub_0042C630(?:?; ?:?):?;//0042C630
    //procedure sub_0042D824(?:?);//0042D824
    //procedure sub_0042D8E0(?:?; ?:?; ?:?; ?:?);//0042D8E0
    //procedure sub_0042D980(?:?; ?:?; ?:?);//0042D980
    //procedure sub_0042D9D4(?:?; ?:IInterface; ?:?);//0042D9D4
    //procedure sub_0042DA74(?:?; ?:?; ?:?; ?:?);//0042DA74
    //procedure sub_0042DAC0(?:?; ?:?);//0042DAC0
    //procedure sub_0042DADC(?:?; ?:?);//0042DADC
    //procedure sub_0042DAF0(?:?; ?:?);//0042DAF0
    //procedure sub_0042DB04(?:?; ?:?);//0042DB04
    //procedure sub_0042DB18(?:?; ?:?);//0042DB18
    //procedure sub_0042DB2C(?:?; ?:?);//0042DB2C
    //procedure sub_0042DB40(?:?);//0042DB40
    //procedure sub_0042DB4C(?:dword; ?:?);//0042DB4C
    //procedure sub_0042DB78(?:dword; ?:?);//0042DB78
    //procedure sub_0042DBA4(?:?; ?:?);//0042DBA4
    //procedure sub_0042DBD0(?:?; ?:?);//0042DBD0
    //procedure sub_0042DBE4(?:?; ?:?);//0042DBE4
    //function sub_0042DBF8(?:?):?;//0042DBF8
    //function sub_0042DBFC(?:?):?;//0042DBFC
    //function sub_0042DC00(?:?):?;//0042DC00
    //function sub_0042DC04(?:?):?;//0042DC04
    //procedure sub_0042DC08(?:?; ?:?);//0042DC08
    //procedure sub_0042DC0C(?:?; ?:?; ?:?);//0042DC0C
    //procedure sub_0042DC40(?:?; ?:?; ?:?);//0042DC40
    //procedure sub_0042DCAC(?:?; ?:?; ?:?);//0042DCAC
    //procedure sub_0042DD18(?:?; ?:?; ?:?);//0042DD18
    //procedure sub_0042DD84(?:?; ?:?; ?:?);//0042DD84
    //procedure sub_0042DDF0(?:?; ?:?; ?:?);//0042DDF0
    //procedure sub_0042DE5C(?:?);//0042DE5C
    //procedure sub_0042DE64(?:?);//0042DE64
    //procedure sub_0042E064(?:AnsiString; ?:?; ?:?; ?:?);//0042E064
    //procedure sub_0042E0D4(?:?; ?:?);//0042E0D4
    //procedure sub_0042E22C(?:?; ?:?; ?:?);//0042E22C
    //function sub_0042E314(?:?; ?:?):?;//0042E314
    //procedure sub_0042ECD8(?:?; ?:?);//0042ECD8
    //procedure sub_0042ECEC(?:?; ?:?);//0042ECEC
    //function sub_0042ED00(?:?):?;//0042ED00
    //procedure sub_0042ED04(?:?; ?:?);//0042ED04
    //procedure sub_0042EDDC(?:?; ?:?);//0042EDDC
    //procedure sub_0042EDF0(?:?; ?:?);//0042EDF0
    //procedure sub_0042EE2C(?:?);//0042EE2C
    //procedure sub_0042EE38(?:?; ?:?; ?:?);//0042EE38
    //procedure sub_0042EE6C(?:?; ?:?; ?:?);//0042EE6C
    //function sub_0042EF04(?:?):?;//0042EF04
    //function sub_0042EF08(?:?):?;//0042EF08
    //procedure sub_0042EF0C(?:?; ?:?);//0042EF0C
    //function sub_0042EF10(?:?; ?:?):?;//0042EF10
    //procedure sub_0042EF70(?:?; ?:?);//0042EF70
    //procedure sub_0042EF84(?:?; ?:?);//0042EF84
    //function sub_0042EF98(?:?):?;//0042EF98
    //procedure sub_0042EF9C(?:?; ?:?);//0042EF9C
    //procedure sub_0042EFA0(?:?; ?:?; ?:?; ?:?; ?:?);//0042EFA0
    //procedure sub_0042EFFC(?:?; ?:?; ?:?; ?:?; ?:?; ?:?);//0042EFFC

implementation

//00429A68
{*function sub_00429A68(?:?):?;
begin
 00429A68    push        ebx
 00429A69    push        esi
 00429A6A    mov         ebx,eax
 00429A6C    mov         esi,dword ptr ds:[55B210];^gvar_0053D140
 00429A72    mov         esi,dword ptr [esi]
 00429A74    mov         edx,429AB4
 00429A79    mov         eax,ebx
 00429A7B    call        esi
 00429A7D    test        al,al
>00429A7F    jne         00429AA9
 00429A81    mov         esi,dword ptr ds:[55B210];^gvar_0053D140
 00429A87    mov         esi,dword ptr [esi]
 00429A89    mov         edx,429AC0
 00429A8E    mov         eax,ebx
 00429A90    call        esi
 00429A92    test        al,al
>00429A94    jne         00429AA9
 00429A96    mov         eax,ebx
 00429A98    mov         edx,429AD0;'1'
 00429A9D    call        @WStrCmp
>00429AA2    je          00429AA9
 00429AA4    xor         eax,eax
 00429AA6    pop         esi
 00429AA7    pop         ebx
 00429AA8    ret
 00429AA9    mov         al,1
 00429AAB    pop         esi
 00429AAC    pop         ebx
 00429AAD    ret
end;*}

//00429AD4
{*function sub_00429AD4(?:?):?;
begin
 00429AD4    push        ebp
 00429AD5    mov         ebp,esp
 00429AD7    push        ecx
 00429AD8    push        ebx
 00429AD9    mov         dword ptr [ebp-4],eax
 00429ADC    lea         eax,[ebp-4]
 00429ADF    call        @WStrAddRef
 00429AE4    xor         eax,eax
 00429AE6    push        ebp
 00429AE7    push        429B2A
 00429AEC    push        dword ptr fs:[eax]
 00429AEF    mov         dword ptr fs:[eax],esp
 00429AF2    mov         eax,dword ptr [ebp-4]
 00429AF5    call        @WStrLen
 00429AFA    push        eax
 00429AFB    mov         eax,dword ptr [ebp-4]
 00429AFE    call        @WStrToPWChar
 00429B03    mov         edx,eax
 00429B05    mov         ebx,dword ptr ds:[55B54C];^gvar_0053D164
 00429B0B    mov         ebx,dword ptr [ebx]
 00429B0D    xor         eax,eax
 00429B0F    pop         ecx
 00429B10    call        ebx
 00429B12    mov         ebx,eax
 00429B14    xor         eax,eax
 00429B16    pop         edx
 00429B17    pop         ecx
 00429B18    pop         ecx
 00429B19    mov         dword ptr fs:[eax],edx
 00429B1C    push        429B31
 00429B21    lea         eax,[ebp-4]
 00429B24    call        @WStrClr
 00429B29    ret
>00429B2A    jmp         @HandleFinally
>00429B2F    jmp         00429B21
 00429B31    mov         eax,ebx
 00429B33    pop         ebx
 00429B34    pop         ecx
 00429B35    pop         ebp
 00429B36    ret
end;*}

//00429B38
{*procedure sub_00429B38(?:DWORD; ?:?; ?:?);
begin
 00429B38    push        ebx
 00429B39    push        esi
 00429B3A    push        edi
 00429B3B    push        ebp
 00429B3C    add         esp,0FFFFFFF8
 00429B3F    mov         byte ptr [esp+4],cl
 00429B43    mov         dword ptr [esp],edx
 00429B46    mov         edi,eax
 00429B48    mov         ecx,edi
 00429B4A    mov         al,byte ptr [esp]
 00429B4D    mov         byte ptr [esp+5],al
 00429B51    mov         edx,edi
 00429B53    shr         edx,8
 00429B56    mov         eax,dword ptr [esp]
 00429B59    shr         eax,8
 00429B5C    mov         byte ptr [esp+6],al
 00429B60    mov         eax,edi
 00429B62    shr         eax,10
 00429B65    mov         ebx,dword ptr [esp]
 00429B68    shr         ebx,10
 00429B6B    mov         byte ptr [esp+7],bl
 00429B6F    xor         esi,esi
 00429B71    cmp         byte ptr [esp+4],0
>00429B76    je          00429BCE
 00429B78    xor         ebx,ebx
 00429B7A    mov         bl,cl
 00429B7C    movzx       ebp,byte ptr [esp+5]
 00429B81    add         ebx,ebp
 00429B83    cmp         ebx,0FF
>00429B89    jbe         00429B90
 00429B8B    inc         esi
 00429B8C    mov         cl,0FF
>00429B8E    jmp         00429B94
 00429B90    add         cl,byte ptr [esp+5]
 00429B94    xor         ebx,ebx
 00429B96    mov         bl,dl
 00429B98    movzx       ebp,byte ptr [esp+6]
 00429B9D    add         ebx,ebp
 00429B9F    cmp         ebx,0FF
>00429BA5    jbe         00429BAC
 00429BA7    inc         esi
 00429BA8    mov         dl,0FF
>00429BAA    jmp         00429BB0
 00429BAC    add         dl,byte ptr [esp+6]
 00429BB0    xor         ebx,ebx
 00429BB2    mov         bl,al
 00429BB4    movzx       ebp,byte ptr [esp+7]
 00429BB9    add         ebx,ebp
 00429BBB    cmp         ebx,0FF
>00429BC1    jbe         00429BC8
 00429BC3    inc         esi
 00429BC4    mov         al,0FF
>00429BC6    jmp         00429BFB
 00429BC8    add         al,byte ptr [esp+7]
>00429BCC    jmp         00429BFB
 00429BCE    cmp         cl,byte ptr [esp+5]
>00429BD2    jae         00429BD9
 00429BD4    inc         esi
 00429BD5    xor         ecx,ecx
>00429BD7    jmp         00429BDD
 00429BD9    sub         cl,byte ptr [esp+5]
 00429BDD    cmp         dl,byte ptr [esp+6]
>00429BE1    jae         00429BE8
 00429BE3    inc         esi
 00429BE4    xor         edx,edx
>00429BE6    jmp         00429BEC
 00429BE8    sub         dl,byte ptr [esp+6]
 00429BEC    cmp         al,byte ptr [esp+7]
>00429BF0    jae         00429BF7
 00429BF2    inc         esi
 00429BF3    xor         eax,eax
>00429BF5    jmp         00429BFB
 00429BF7    sub         al,byte ptr [esp+7]
 00429BFB    dec         esi
>00429BFC    jle         00429C11
 00429BFE    mov         cl,byte ptr [esp+4]
 00429C02    xor         cl,1
 00429C05    mov         edx,dword ptr [esp]
 00429C08    mov         eax,edi
 00429C0A    call        00429B38
>00429C0F    jmp         00429C2A
 00429C11    and         eax,0FF
 00429C16    shl         eax,10
 00429C19    and         edx,0FF
 00429C1F    shl         edx,8
 00429C22    add         eax,edx
 00429C24    xor         edx,edx
 00429C26    mov         dl,cl
 00429C28    add         eax,edx
 00429C2A    pop         ecx
 00429C2B    pop         edx
 00429C2C    pop         ebp
 00429C2D    pop         edi
 00429C2E    pop         esi
 00429C2F    pop         ebx
 00429C30    ret
end;*}

//00429C34
{*function sub_00429C34(?:?; ?:?; ?:?):?;
begin
 00429C34    push        ebx
 00429C35    push        esi
 00429C36    push        edi
 00429C37    push        ebp
 00429C38    mov         esi,edx
 00429C3A    mov         ebp,eax
 00429C3C    test        cl,cl
>00429C3E    je          00429C47
 00429C40    mov         ebx,2BC
>00429C45    jmp         00429C4C
 00429C47    mov         ebx,190
 00429C4C    mov         eax,ebp
 00429C4E    call        @LStrToPChar
 00429C53    push        eax
 00429C54    push        0
 00429C56    push        0
 00429C58    push        0
 00429C5A    push        0
 00429C5C    push        1
 00429C5E    push        0
 00429C60    push        0
 00429C62    push        0
 00429C64    push        ebx
 00429C65    push        0
 00429C67    push        0
 00429C69    push        0
 00429C6B    mov         edi,esi
 00429C6D    neg         edi
 00429C6F    push        edi
 00429C70    call        gdi32.CreateFontA
 00429C75    test        eax,eax
>00429C77    jne         00429C9D
 00429C79    push        429CA4;'MS Sans Serif'
 00429C7E    push        0
 00429C80    push        0
 00429C82    push        0
 00429C84    push        0
 00429C86    push        1
 00429C88    push        0
 00429C8A    push        0
 00429C8C    push        0
 00429C8E    push        ebx
 00429C8F    push        0
 00429C91    push        0
 00429C93    push        0
 00429C95    neg         esi
 00429C97    push        edi
 00429C98    call        gdi32.CreateFontA
 00429C9D    pop         ebp
 00429C9E    pop         edi
 00429C9F    pop         esi
 00429CA0    pop         ebx
 00429CA1    ret
end;*}

//00429CB4
{*procedure sub_00429CB4(?:HDC; ?:WideString; ?:?; ?:?; ?:?);
begin
 00429CB4    push        ebp
 00429CB5    mov         ebp,esp
 00429CB7    push        0
 00429CB9    push        0
 00429CBB    push        0
 00429CBD    push        ebx
 00429CBE    push        esi
 00429CBF    push        edi
 00429CC0    mov         dword ptr [ebp-4],ecx
 00429CC3    mov         ebx,edx
 00429CC5    mov         edi,eax
 00429CC7    mov         esi,dword ptr [ebp+8]
 00429CCA    xor         eax,eax
 00429CCC    push        ebp
 00429CCD    push        429D60
 00429CD2    push        dword ptr fs:[eax]
 00429CD5    mov         dword ptr fs:[eax],esp
 00429CD8    call        kernel32.GetVersion
 00429CDD    test        eax,80000000
>00429CE2    jne         00429D03
 00429CE4    push        esi
 00429CE5    mov         eax,ebx
 00429CE7    call        @WStrLen
 00429CEC    push        eax
 00429CED    mov         eax,ebx
 00429CEF    call        @WStrToPWChar
 00429CF4    push        eax
 00429CF5    push        edi
 00429CF6    call        gdi32.GetTextExtentPoint32W
 00429CFB    cmp         eax,1
 00429CFE    sbb         eax,eax
 00429D00    inc         eax
>00429D01    jmp         00429D36
 00429D03    push        esi
 00429D04    lea         eax,[ebp-8]
 00429D07    mov         edx,ebx
 00429D09    call        @LStrFromWStr
 00429D0E    mov         eax,dword ptr [ebp-8]
 00429D11    call        @DynArrayLength
 00429D16    push        eax
 00429D17    lea         eax,[ebp-0C]
 00429D1A    mov         edx,ebx
 00429D1C    call        @LStrFromWStr
 00429D21    mov         eax,dword ptr [ebp-0C]
 00429D24    call        @LStrToPChar
 00429D29    push        eax
 00429D2A    push        edi
 00429D2B    call        gdi32.GetTextExtentPoint32A
 00429D30    cmp         eax,1
 00429D33    sbb         eax,eax
 00429D35    inc         eax
 00429D36    test        al,al
>00429D38    jne         00429D45
 00429D3A    mov         eax,dword ptr [ebp-4]
 00429D3D    mov         dword ptr [esi],eax
 00429D3F    mov         eax,dword ptr [ebp+0C]
 00429D42    mov         dword ptr [esi+4],eax
 00429D45    xor         eax,eax
 00429D47    pop         edx
 00429D48    pop         ecx
 00429D49    pop         ecx
 00429D4A    mov         dword ptr fs:[eax],edx
 00429D4D    push        429D67
 00429D52    lea         eax,[ebp-0C]
 00429D55    mov         edx,2
 00429D5A    call        @LStrArrayClr
 00429D5F    ret
>00429D60    jmp         @HandleFinally
>00429D65    jmp         00429D52
 00429D67    pop         edi
 00429D68    pop         esi
 00429D69    pop         ebx
 00429D6A    mov         esp,ebp
 00429D6C    pop         ebp
 00429D6D    ret         8
end;*}

//00429D70
{*procedure sub_00429D70(?:?; ?:?; ?:?; ?:?);
begin
 00429D70    push        ebp
 00429D71    mov         ebp,esp
 00429D73    add         esp,0FFFFFFF0
 00429D76    push        ebx
 00429D77    push        esi
 00429D78    push        edi
 00429D79    mov         esi,edx
 00429D7B    lea         edi,[ebp-10]
 00429D7E    movs        dword ptr [edi],dword ptr [esi]
 00429D7F    movs        dword ptr [edi],dword ptr [esi]
 00429D80    movs        dword ptr [edi],dword ptr [esi]
 00429D81    movs        dword ptr [edi],dword ptr [esi]
 00429D82    mov         esi,eax
 00429D84    test        ecx,ecx
>00429D86    je          00429D93
 00429D88    push        ecx
 00429D89    push        ecx
 00429D8A    lea         eax,[ebp-10]
 00429D8D    push        eax
 00429D8E    call        user32.InflateRect
 00429D93    mov         eax,dword ptr [ebp+8]
 00429D96    push        eax
 00429D97    call        gdi32.CreateSolidBrush
 00429D9C    mov         ebx,eax
 00429D9E    push        ebx
 00429D9F    lea         eax,[ebp-10]
 00429DA2    push        eax
 00429DA3    push        esi
 00429DA4    call        user32.FillRect
 00429DA9    push        ebx
 00429DAA    call        gdi32.DeleteObject
 00429DAF    pop         edi
 00429DB0    pop         esi
 00429DB1    pop         ebx
 00429DB2    mov         esp,ebp
 00429DB4    pop         ebp
 00429DB5    ret         4
end;*}

//00429DB8
{*procedure sub_00429DB8(?:?; ?:?; ?:?; ?:?; ?:?; ?:?);
begin
 00429DB8    push        ebp
 00429DB9    mov         ebp,esp
 00429DBB    add         esp,0FFFFFFF0
 00429DBE    push        esi
 00429DBF    mov         esi,eax
 00429DC1    mov         dword ptr [ebp-10],edx
 00429DC4    mov         dword ptr [ebp-0C],ecx
 00429DC7    mov         eax,dword ptr [ebp+10]
 00429DCA    inc         eax
 00429DCB    mov         dword ptr [ebp-8],eax
 00429DCE    mov         eax,dword ptr [ebp+0C]
 00429DD1    inc         eax
 00429DD2    mov         dword ptr [ebp-4],eax
 00429DD5    mov         eax,dword ptr [ebp+8]
 00429DD8    push        eax
 00429DD9    xor         ecx,ecx
 00429DDB    lea         edx,[ebp-10]
 00429DDE    mov         eax,esi
 00429DE0    call        00429D70
 00429DE5    pop         esi
 00429DE6    mov         esp,ebp
 00429DE8    pop         ebp
 00429DE9    ret         0C
end;*}

//00429DEC
{*procedure sub_00429DEC(?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?);
begin
 00429DEC    push        ebp
 00429DED    mov         ebp,esp
 00429DEF    add         esp,0FFFFFFEC
 00429DF2    push        ebx
 00429DF3    push        esi
 00429DF4    push        edi
 00429DF5    mov         dword ptr [ebp-4],ecx
 00429DF8    mov         edi,edx
 00429DFA    mov         ebx,eax
 00429DFC    mov         eax,dword ptr [ebp+8]
 00429DFF    push        eax
 00429E00    push        1
 00429E02    mov         eax,dword ptr [ebp+10]
 00429E05    push        eax
 00429E06    call        gdi32.CreatePen
 00429E0B    mov         dword ptr [ebp-8],eax
 00429E0E    mov         eax,dword ptr [ebp-8]
 00429E11    push        eax
 00429E12    push        ebx
 00429E13    call        gdi32.SelectObject
 00429E18    mov         dword ptr [ebp-0C],eax
 00429E1B    mov         eax,dword ptr [ebp+0C]
 00429E1E    push        eax
 00429E1F    push        ebx
 00429E20    call        gdi32.SetBkColor
 00429E25    mov         dword ptr [ebp-10],eax
 00429E28    mov         eax,dword ptr [ebp+14]
 00429E2B    dec         eax
 00429E2C    test        eax,eax
>00429E2E    jl          00429ED8
 00429E34    inc         eax
 00429E35    mov         dword ptr [ebp-14],eax
 00429E38    xor         esi,esi
 00429E3A    push        0
 00429E3C    mov         eax,dword ptr [ebp-4]
 00429E3F    add         eax,esi
 00429E41    push        eax
 00429E42    push        edi
 00429E43    push        ebx
 00429E44    call        gdi32.MoveToEx
 00429E49    test        eax,eax
>00429E4B    je          00429E5E
 00429E4D    mov         eax,dword ptr [ebp-4]
 00429E50    add         eax,esi
 00429E52    push        eax
 00429E53    mov         eax,dword ptr [ebp+1C]
 00429E56    inc         eax
 00429E57    push        eax
 00429E58    push        ebx
 00429E59    call        gdi32.LineTo
 00429E5E    push        0
 00429E60    mov         eax,dword ptr [ebp-4]
 00429E63    push        eax
 00429E64    lea         eax,[esi+edi]
 00429E67    push        eax
 00429E68    push        ebx
 00429E69    call        gdi32.MoveToEx
 00429E6E    test        eax,eax
>00429E70    je          00429E81
 00429E72    mov         eax,dword ptr [ebp+18]
 00429E75    inc         eax
 00429E76    push        eax
 00429E77    lea         eax,[esi+edi]
 00429E7A    push        eax
 00429E7B    push        ebx
 00429E7C    call        gdi32.LineTo
 00429E81    push        0
 00429E83    mov         eax,dword ptr [ebp+18]
 00429E86    sub         eax,esi
 00429E88    push        eax
 00429E89    mov         eax,dword ptr [ebp+1C]
 00429E8C    push        eax
 00429E8D    push        ebx
 00429E8E    call        gdi32.MoveToEx
 00429E93    test        eax,eax
>00429E95    je          00429EA7
 00429E97    mov         eax,dword ptr [ebp+18]
 00429E9A    sub         eax,esi
 00429E9C    push        eax
 00429E9D    mov         eax,edi
 00429E9F    dec         eax
 00429EA0    push        eax
 00429EA1    push        ebx
 00429EA2    call        gdi32.LineTo
 00429EA7    push        0
 00429EA9    mov         eax,dword ptr [ebp+18]
 00429EAC    push        eax
 00429EAD    mov         eax,dword ptr [ebp+1C]
 00429EB0    sub         eax,esi
 00429EB2    push        eax
 00429EB3    push        ebx
 00429EB4    call        gdi32.MoveToEx
 00429EB9    test        eax,eax
>00429EBB    je          00429ECE
 00429EBD    mov         eax,dword ptr [ebp-4]
 00429EC0    dec         eax
 00429EC1    push        eax
 00429EC2    mov         eax,dword ptr [ebp+1C]
 00429EC5    sub         eax,esi
 00429EC7    push        eax
 00429EC8    push        ebx
 00429EC9    call        gdi32.LineTo
 00429ECE    inc         esi
 00429ECF    dec         dword ptr [ebp-14]
>00429ED2    jne         00429E3A
 00429ED8    mov         eax,dword ptr [ebp-10]
 00429EDB    push        eax
 00429EDC    push        ebx
 00429EDD    call        gdi32.SetBkColor
 00429EE2    mov         eax,dword ptr [ebp-0C]
 00429EE5    push        eax
 00429EE6    push        ebx
 00429EE7    call        gdi32.SelectObject
 00429EEC    mov         eax,dword ptr [ebp-8]
 00429EEF    push        eax
 00429EF0    call        gdi32.DeleteObject
 00429EF5    pop         edi
 00429EF6    pop         esi
 00429EF7    pop         ebx
 00429EF8    mov         esp,ebp
 00429EFA    pop         ebp
 00429EFB    ret         18
end;*}

//00429F00
{*procedure sub_00429F00(?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?);
begin
 00429F00    push        ebp
 00429F01    mov         ebp,esp
 00429F03    add         esp,0FFFFFFF0
 00429F06    push        ebx
 00429F07    push        esi
 00429F08    push        edi
 00429F09    mov         esi,edx
 00429F0B    lea         edi,[ebp-10]
 00429F0E    movs        dword ptr [edi],dword ptr [esi]
 00429F0F    movs        dword ptr [edi],dword ptr [esi]
 00429F10    movs        dword ptr [edi],dword ptr [esi]
 00429F11    movs        dword ptr [edi],dword ptr [esi]
 00429F12    mov         ebx,eax
 00429F14    test        ecx,ecx
>00429F16    je          00429F23
 00429F18    push        ecx
 00429F19    push        ecx
 00429F1A    lea         eax,[ebp-10]
 00429F1D    push        eax
 00429F1E    call        user32.InflateRect
 00429F23    mov         eax,dword ptr [ebp-8]
 00429F26    dec         eax
 00429F27    push        eax
 00429F28    mov         eax,dword ptr [ebp-4]
 00429F2B    dec         eax
 00429F2C    push        eax
 00429F2D    mov         eax,dword ptr [ebp+14]
 00429F30    push        eax
 00429F31    mov         eax,dword ptr [ebp+10]
 00429F34    push        eax
 00429F35    mov         eax,dword ptr [ebp+0C]
 00429F38    push        eax
 00429F39    mov         eax,dword ptr [ebp+8]
 00429F3C    push        eax
 00429F3D    mov         ecx,dword ptr [ebp-0C]
 00429F40    mov         edx,dword ptr [ebp-10]
 00429F43    mov         eax,ebx
 00429F45    call        00429DEC
 00429F4A    pop         edi
 00429F4B    pop         esi
 00429F4C    pop         ebx
 00429F4D    mov         esp,ebp
 00429F4F    pop         ebp
 00429F50    ret         10
end;*}

//00429F54
{*procedure sub_00429F54(?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?);
begin
 00429F54    push        ebp
 00429F55    mov         ebp,esp
 00429F57    add         esp,0FFFFFFD4
 00429F5A    push        ebx
 00429F5B    push        esi
 00429F5C    push        edi
 00429F5D    xor         ebx,ebx
 00429F5F    mov         dword ptr [ebp-2C],ebx
 00429F62    mov         dword ptr [ebp-28],ebx
 00429F65    mov         dword ptr [ebp-24],ebx
 00429F68    mov         dword ptr [ebp-20],ebx
 00429F6B    mov         dword ptr [ebp-0C],ecx
 00429F6E    mov         dword ptr [ebp-8],edx
 00429F71    mov         dword ptr [ebp-4],eax
 00429F74    mov         ebx,dword ptr [ebp+0C]
 00429F77    mov         edi,dword ptr [ebp+24]
 00429F7A    xor         eax,eax
 00429F7C    push        ebp
 00429F7D    push        42A14B
 00429F82    push        dword ptr fs:[eax]
 00429F85    mov         dword ptr fs:[eax],esp
 00429F88    mov         cl,byte ptr [ebp+18]
 00429F8B    mov         edx,dword ptr [ebp+1C]
 00429F8E    mov         eax,dword ptr [ebp+20]
 00429F91    call        00429C34
 00429F96    mov         dword ptr [ebp-10],eax
 00429F99    mov         eax,dword ptr [ebp-10]
 00429F9C    push        eax
 00429F9D    mov         eax,dword ptr [ebp-4]
 00429FA0    push        eax
 00429FA1    call        gdi32.SelectObject
 00429FA6    mov         dword ptr [ebp-14],eax
 00429FA9    test        ebx,ebx
>00429FAB    je          0042A03C
 00429FB1    call        kernel32.GetVersion
 00429FB6    test        eax,80000000
>00429FBB    jne         00429FE2
 00429FBD    lea         eax,[ebp-1C]
 00429FC0    push        eax
 00429FC1    mov         eax,edi
 00429FC3    call        @WStrLen
 00429FC8    push        eax
 00429FC9    mov         eax,edi
 00429FCB    call        @WStrToPWChar
 00429FD0    push        eax
 00429FD1    mov         eax,dword ptr [ebp-4]
 00429FD4    push        eax
 00429FD5    call        gdi32.GetTextExtentPoint32W
 00429FDA    cmp         eax,1
 00429FDD    sbb         eax,eax
 00429FDF    inc         eax
>00429FE0    jmp         0042A01B
 00429FE2    lea         eax,[ebp-1C]
 00429FE5    push        eax
 00429FE6    lea         eax,[ebp-20]
 00429FE9    mov         edx,edi
 00429FEB    call        @LStrFromWStr
 00429FF0    mov         eax,dword ptr [ebp-20]
 00429FF3    call        @DynArrayLength
 00429FF8    push        eax
 00429FF9    lea         eax,[ebp-24]
 00429FFC    mov         edx,edi
 00429FFE    call        @LStrFromWStr
 0042A003    mov         eax,dword ptr [ebp-24]
 0042A006    call        @LStrToPChar
 0042A00B    push        eax
 0042A00C    mov         eax,dword ptr [ebp-4]
 0042A00F    push        eax
 0042A010    call        gdi32.GetTextExtentPoint32A
 0042A015    cmp         eax,1
 0042A018    sbb         eax,eax
 0042A01A    inc         eax
 0042A01B    test        al,al
>0042A01D    je          0042A03C
 0042A01F    sub         ebx,dword ptr [ebp-1C]
 0042A022    sar         ebx,1
>0042A024    jns         0042A029
 0042A026    adc         ebx,0
 0042A029    add         dword ptr [ebp-8],ebx
 0042A02C    mov         eax,dword ptr [ebp+8]
 0042A02F    sub         eax,dword ptr [ebp-18]
 0042A032    sar         eax,1
>0042A034    jns         0042A039
 0042A036    adc         eax,0
 0042A039    add         dword ptr [ebp-0C],eax
 0042A03C    push        1
 0042A03E    mov         eax,dword ptr [ebp-4]
 0042A041    push        eax
 0042A042    call        gdi32.SetBkMode
 0042A047    mov         eax,dword ptr [ebp+10]
 0042A04A    push        eax
 0042A04B    mov         eax,dword ptr [ebp-4]
 0042A04E    push        eax
 0042A04F    call        gdi32.SetTextColor
 0042A054    cmp         byte ptr [ebp+14],0
>0042A058    je          0042A0B4
 0042A05A    push        0FFFFFF
 0042A05F    mov         eax,dword ptr [ebp-4]
 0042A062    push        eax
 0042A063    call        gdi32.SetTextColor
 0042A068    or          esi,0FFFFFFFF
 0042A06B    or          ebx,0FFFFFFFF
 0042A06E    test        esi,esi
>0042A070    jne         0042A076
 0042A072    test        ebx,ebx
>0042A074    je          0042A09B
 0042A076    mov         eax,edi
 0042A078    call        @WStrLen
 0042A07D    push        eax
 0042A07E    mov         eax,edi
 0042A080    call        @WStrToPWChar
 0042A085    push        eax
 0042A086    mov         eax,dword ptr [ebp-0C]
 0042A089    add         eax,ebx
 0042A08B    push        eax
 0042A08C    mov         eax,dword ptr [ebp-8]
 0042A08F    add         eax,esi
 0042A091    push        eax
 0042A092    mov         eax,dword ptr [ebp-4]
 0042A095    push        eax
 0042A096    call        gdi32.TextOutW
 0042A09B    inc         ebx
 0042A09C    cmp         ebx,2
>0042A09F    jne         0042A06E
 0042A0A1    inc         esi
 0042A0A2    cmp         esi,2
>0042A0A5    jne         0042A06B
 0042A0A7    mov         eax,dword ptr [ebp+10]
 0042A0AA    push        eax
 0042A0AB    mov         eax,dword ptr [ebp-4]
 0042A0AE    push        eax
 0042A0AF    call        gdi32.SetTextColor
 0042A0B4    call        kernel32.GetVersion
 0042A0B9    test        eax,80000000
>0042A0BE    jne         0042A0E3
 0042A0C0    mov         eax,edi
 0042A0C2    call        @WStrLen
 0042A0C7    push        eax
 0042A0C8    mov         eax,edi
 0042A0CA    call        @WStrToPWChar
 0042A0CF    push        eax
 0042A0D0    mov         eax,dword ptr [ebp-0C]
 0042A0D3    push        eax
 0042A0D4    mov         eax,dword ptr [ebp-8]
 0042A0D7    push        eax
 0042A0D8    mov         eax,dword ptr [ebp-4]
 0042A0DB    push        eax
 0042A0DC    call        gdi32.TextOutW
>0042A0E1    jmp         0042A11A
 0042A0E3    lea         eax,[ebp-28]
 0042A0E6    mov         edx,edi
 0042A0E8    call        @LStrFromWStr
 0042A0ED    mov         eax,dword ptr [ebp-28]
 0042A0F0    call        @DynArrayLength
 0042A0F5    push        eax
 0042A0F6    lea         eax,[ebp-2C]
 0042A0F9    mov         edx,edi
 0042A0FB    call        @LStrFromWStr
 0042A100    mov         eax,dword ptr [ebp-2C]
 0042A103    call        @LStrToPChar
 0042A108    push        eax
 0042A109    mov         eax,dword ptr [ebp-0C]
 0042A10C    push        eax
 0042A10D    mov         eax,dword ptr [ebp-8]
 0042A110    push        eax
 0042A111    mov         eax,dword ptr [ebp-4]
 0042A114    push        eax
 0042A115    call        gdi32.TextOutA
 0042A11A    mov         eax,dword ptr [ebp-14]
 0042A11D    push        eax
 0042A11E    mov         eax,dword ptr [ebp-4]
 0042A121    push        eax
 0042A122    call        gdi32.SelectObject
 0042A127    mov         eax,dword ptr [ebp-10]
 0042A12A    push        eax
 0042A12B    call        gdi32.DeleteObject
 0042A130    xor         eax,eax
 0042A132    pop         edx
 0042A133    pop         ecx
 0042A134    pop         ecx
 0042A135    mov         dword ptr fs:[eax],edx
 0042A138    push        42A152
 0042A13D    lea         eax,[ebp-2C]
 0042A140    mov         edx,4
 0042A145    call        @LStrArrayClr
 0042A14A    ret
>0042A14B    jmp         @HandleFinally
>0042A150    jmp         0042A13D
 0042A152    pop         edi
 0042A153    pop         esi
 0042A154    pop         ebx
 0042A155    mov         esp,ebp
 0042A157    pop         ebp
 0042A158    ret         20
end;*}

//0042A15C
{*constructor TNVLabel.Create(?:?);
begin
 0042A15C    push        ebp
 0042A15D    mov         ebp,esp
 0042A15F    push        ebx
 0042A160    push        esi
 0042A161    push        edi
 0042A162    test        dl,dl
>0042A164    je          0042A16E
 0042A166    add         esp,0FFFFFFF0
 0042A169    call        @ClassCreate
 0042A16E    mov         esi,ecx
 0042A170    mov         ebx,edx
 0042A172    mov         edi,eax
 0042A174    xor         edx,edx
 0042A176    mov         eax,edi
 0042A178    call        TObject.Create
 0042A17D    mov         dword ptr [edi+0C],esi
 0042A180    lea         eax,[edi+10]
 0042A183    mov         edx,dword ptr [ebp+8]
 0042A186    call        @WStrAsg
 0042A18B    mov         byte ptr [edi+19],1
 0042A18F    mov         eax,edi
 0042A191    test        bl,bl
>0042A193    je          0042A1A4
 0042A195    call        @AfterConstruction
 0042A19A    pop         dword ptr fs:[0]
 0042A1A1    add         esp,0C
 0042A1A4    mov         eax,edi
 0042A1A6    pop         edi
 0042A1A7    pop         esi
 0042A1A8    pop         ebx
 0042A1A9    pop         ebp
 0042A1AA    ret         4
end;*}

//0042A1B0
procedure sub_0042A1B0;
begin
{*
 0042A1B0    ret
*}
end;

//0042A1B4
{*function sub_0042A1B4(?:?):?;
begin
 0042A1B4    push        ebx
 0042A1B5    push        esi
 0042A1B6    mov         ebx,eax
 0042A1B8    push        7FFFFFFF
 0042A1BD    mov         esi,dword ptr ds:[55B2C0];^gvar_0053D14C
 0042A1C3    mov         esi,dword ptr [esi]
 0042A1C5    mov         ecx,1
 0042A1CA    mov         edx,ebx
 0042A1CC    mov         eax,42A1E8
 0042A1D1    call        esi
 0042A1D3    test        eax,eax
>0042A1D5    jle         0042A1DC
 0042A1D7    mov         al,1
 0042A1D9    pop         esi
 0042A1DA    pop         ebx
 0042A1DB    ret
 0042A1DC    xor         eax,eax
 0042A1DE    pop         esi
 0042A1DF    pop         ebx
 0042A1E0    ret
end;*}

//0042A200
{*procedure sub_0042A200(?:?; ?:?);
begin
 0042A200    push        ebx
 0042A201    push        esi
 0042A202    push        edi
 0042A203    mov         edi,ecx
 0042A205    mov         esi,edx
 0042A207    mov         ebx,eax
 0042A209    mov         eax,esi
 0042A20B    mov         edx,42A278;'Spacing'
 0042A210    call        @WStrCmp
>0042A215    jne         0042A223
 0042A217    mov         eax,edi
 0042A219    call        00429AD4
 0042A21E    mov         dword ptr [ebx+1C],eax;TNVItem.?f1C:dword
>0042A221    jmp         0042A26F
 0042A223    mov         eax,esi
 0042A225    mov         edx,42A28C;'Enabled'
 0042A22A    call        @WStrCmp
>0042A22F    jne         0042A23D
 0042A231    mov         eax,edi
 0042A233    call        00429A68
 0042A238    mov         byte ptr [ebx+19],al;TNVItem.?f19:byte
>0042A23B    jmp         0042A26F
 0042A23D    mov         eax,esi
 0042A23F    mov         edx,42A2A0;'OutputType'
 0042A244    call        @WStrCmp
>0042A249    jne         0042A257
 0042A24B    mov         eax,edi
 0042A24D    call        0042A1B4
 0042A252    mov         byte ptr [ebx+3C],al;TNVItem.?f3C:byte
>0042A255    jmp         0042A26F
 0042A257    mov         eax,esi
 0042A259    mov         edx,42A2BC;'OutputName'
 0042A25E    call        @WStrCmp
>0042A263    jne         0042A26F
 0042A265    lea         eax,[ebx+40];TNVItem.?f40:WideString
 0042A268    mov         edx,edi
 0042A26A    call        @WStrAsg
 0042A26F    pop         edi
 0042A270    pop         esi
 0042A271    pop         ebx
 0042A272    ret
end;*}

//0042A2D4
{*procedure sub_0042A2D4(?:?; ?:?; ?:?);
begin
 0042A2D4    push        ebp
 0042A2D5    mov         ebp,esp
 0042A2D7    add         esp,0FFFFFE00
 0042A2DD    push        ebx
 0042A2DE    push        esi
 0042A2DF    push        edi
 0042A2E0    mov         edi,ecx
 0042A2E2    mov         ebx,eax
 0042A2E4    mov         eax,dword ptr [ebx+38];TNVItem.?f38:Integer
 0042A2E7    mov         dword ptr [edi],eax
 0042A2E9    mov         eax,dword ptr [ebx+14];TNVItem.?f14:dword
 0042A2EC    test        eax,eax
>0042A2EE    je          0042A30C
 0042A2F0    push        0
 0042A2F2    mov         edx,dword ptr [ebx+0C];TNVItem.?fC:dword
 0042A2F5    mov         edx,dword ptr [edx+38]
 0042A2F8    push        edx
 0042A2F9    push        30
 0042A2FB    push        eax
 0042A2FC    call        user32.SendMessageA
 0042A301    push        5
 0042A303    mov         eax,dword ptr [ebx+14];TNVItem.?f14:dword
 0042A306    push        eax
 0042A307    call        user32.ShowWindow
 0042A30C    mov         eax,dword ptr [ebx+1C];TNVItem.?f1C:dword
 0042A30F    test        eax,eax
>0042A311    je          0042A31A
 0042A313    add         dword ptr [edi],eax
>0042A315    jmp         0042A4FE
 0042A31A    mov         esi,dword ptr [ebx+0C];TNVItem.?fC:dword
 0042A31D    mov         eax,dword ptr [esi+24]
 0042A320    call        00405CE8
 0042A325    mov         edx,dword ptr [esi+24]
 0042A328    mov         eax,dword ptr [edx+eax*4]
 0042A32B    mov         edx,dword ptr [eax]
 0042A32D    call        dword ptr [edx+28]
 0042A330    cmp         ebx,eax
>0042A332    je          0042A4FE
 0042A338    mov         eax,ebx
 0042A33A    mov         edx,dword ptr ds:[429154];TNVLabel
 0042A340    call        @IsClass
 0042A345    test        al,al
>0042A347    je          0042A35F
 0042A349    mov         edx,dword ptr [ebp+8]
 0042A34C    mov         eax,ebx
 0042A34E    call        0042AE8C
 0042A353    test        al,al
>0042A355    je          0042A35F
 0042A357    add         dword ptr [edi],4
>0042A35A    jmp         0042A4FE
 0042A35F    lea         edx,[ebp-100]
 0042A365    mov         eax,dword ptr [esi]
 0042A367    call        TObject.ClassName
 0042A36C    lea         eax,[ebp-100]
 0042A372    push        eax
 0042A373    mov         eax,dword ptr [esi+24]
 0042A376    mov         edx,dword ptr [ebx+28];TNVItem.?f28:dword
 0042A379    mov         eax,dword ptr [eax+edx*4+4]
 0042A37D    mov         edx,dword ptr [eax]
 0042A37F    call        dword ptr [edx+28]
 0042A382    mov         eax,dword ptr [eax]
 0042A384    lea         edx,[ebp-200]
 0042A38A    call        TObject.ClassName
 0042A38F    lea         edx,[ebp-200]
 0042A395    pop         eax
 0042A396    xor         ecx,ecx
 0042A398    mov         cl,byte ptr [eax]
 0042A39A    inc         ecx
 0042A39B    call        @AStrCmp
>0042A3A0    jne         0042A427
 0042A3A6    mov         eax,ebx
 0042A3A8    mov         edx,dword ptr ds:[42901C];TNVButton
 0042A3AE    call        @IsClass
 0042A3B3    test        al,al
>0042A3B5    je          0042A3BF
 0042A3B7    add         dword ptr [edi],4
>0042A3BA    jmp         0042A4FE
 0042A3BF    mov         eax,ebx
 0042A3C1    mov         edx,dword ptr ds:[42930C];TNVEdit
 0042A3C7    call        @IsClass
 0042A3CC    test        al,al
>0042A3CE    je          0042A3D8
 0042A3D0    add         dword ptr [edi],6
>0042A3D3    jmp         0042A4FE
 0042A3D8    mov         eax,ebx
 0042A3DA    mov         edx,dword ptr ds:[429474];TNVCheckBox
 0042A3E0    call        @IsClass
 0042A3E5    test        al,al
>0042A3E7    je          0042A3F1
 0042A3E9    add         dword ptr [edi],8
>0042A3EC    jmp         0042A4FE
 0042A3F1    mov         eax,ebx
 0042A3F3    mov         edx,dword ptr ds:[429154];TNVLabel
 0042A3F9    call        @IsClass
 0042A3FE    test        al,al
>0042A400    je          0042A40A
 0042A402    add         dword ptr [edi],8
>0042A405    jmp         0042A4FE
 0042A40A    mov         eax,ebx
 0042A40C    mov         edx,dword ptr ds:[4295EC];TNVImage
 0042A412    call        @IsClass
 0042A417    test        al,al
>0042A419    je          0042A4FE
 0042A41F    add         dword ptr [edi],8
>0042A422    jmp         0042A4FE
 0042A427    mov         eax,dword ptr [esi+24]
 0042A42A    mov         edx,dword ptr [ebx+28];TNVItem.?f28:dword
 0042A42D    mov         eax,dword ptr [eax+edx*4+4]
 0042A431    mov         edx,dword ptr [eax]
 0042A433    call        dword ptr [edx+28]
 0042A436    mov         edx,dword ptr ds:[429154];TNVLabel
 0042A43C    call        @IsClass
 0042A441    test        al,al
>0042A443    je          0042A4FB
 0042A449    mov         eax,dword ptr [esi+24]
 0042A44C    mov         edx,dword ptr [ebx+28];TNVItem.?f28:dword
 0042A44F    mov         eax,dword ptr [eax+edx*4+4]
 0042A453    mov         edx,dword ptr [eax]
 0042A455    call        dword ptr [edx+28]
 0042A458    mov         edx,dword ptr [ebp+8]
 0042A45B    call        0042AE8C
 0042A460    test        al,al
>0042A462    je          0042A4FB
 0042A468    mov         eax,dword ptr [esi+24]
 0042A46B    mov         edx,dword ptr [ebx+28];TNVItem.?f28:dword
 0042A46E    mov         eax,dword ptr [eax+edx*4-4]
 0042A472    mov         edx,dword ptr [eax]
 0042A474    call        dword ptr [edx+28]
 0042A477    mov         edx,dword ptr ds:[429154];TNVLabel
 0042A47D    call        @IsClass
 0042A482    test        al,al
>0042A484    je          0042A4FB
 0042A486    mov         eax,dword ptr [esi+24]
 0042A489    mov         edx,dword ptr [ebx+28];TNVItem.?f28:dword
 0042A48C    mov         eax,dword ptr [eax+edx*4-4]
 0042A490    mov         edx,dword ptr [eax]
 0042A492    call        dword ptr [edx+28]
 0042A495    mov         edx,dword ptr [ebp+8]
 0042A498    call        0042AE8C
 0042A49D    test        al,al
>0042A49F    je          0042A4FB
 0042A4A1    mov         eax,dword ptr [esi+24]
 0042A4A4    call        @LStrLen
 0042A4A9    mov         edx,dword ptr [ebx+28];TNVItem.?f28:dword
 0042A4AC    add         edx,2
 0042A4AF    cmp         eax,edx
>0042A4B1    jle         0042A4FB
 0042A4B3    mov         eax,dword ptr [esi+24]
 0042A4B6    mov         edx,dword ptr [ebx+28];TNVItem.?f28:dword
 0042A4B9    mov         eax,dword ptr [eax+edx*4+8]
 0042A4BD    mov         edx,dword ptr [eax]
 0042A4BF    call        dword ptr [edx+28]
 0042A4C2    mov         eax,dword ptr [eax]
 0042A4C4    lea         edx,[ebp-100]
 0042A4CA    call        TObject.ClassName
 0042A4CF    lea         eax,[ebp-100]
 0042A4D5    push        eax
 0042A4D6    lea         edx,[ebp-200]
 0042A4DC    mov         eax,dword ptr [esi]
 0042A4DE    call        TObject.ClassName
 0042A4E3    lea         edx,[ebp-200]
 0042A4E9    pop         eax
 0042A4EA    xor         ecx,ecx
 0042A4EC    mov         cl,byte ptr [eax]
 0042A4EE    inc         ecx
 0042A4EF    call        @AStrCmp
>0042A4F4    jne         0042A4FB
 0042A4F6    add         dword ptr [edi],8
>0042A4F9    jmp         0042A4FE
 0042A4FB    add         dword ptr [edi],0C
 0042A4FE    pop         edi
 0042A4FF    pop         esi
 0042A500    pop         ebx
 0042A501    mov         esp,ebp
 0042A503    pop         ebp
 0042A504    ret         4
end;*}

//0042A508
procedure sub_0042A508;
begin
{*
 0042A508    ret
*}
end;

//0042A50C
procedure sub_0042A50C;
begin
{*
 0042A50C    push        ebp
 0042A50D    mov         ebp,esp
 0042A50F    add         esp,0FFFFFFF0
 0042A512    push        esi
 0042A513    push        edi
 0042A514    mov         esi,dword ptr [ebp+8]
 0042A517    lea         edi,[ebp-10]
 0042A51A    movs        dword ptr [edi],dword ptr [esi]
 0042A51B    movs        dword ptr [edi],dword ptr [esi]
 0042A51C    movs        dword ptr [edi],dword ptr [esi]
 0042A51D    movs        dword ptr [edi],dword ptr [esi]
 0042A51E    pop         edi
 0042A51F    pop         esi
 0042A520    mov         esp,ebp
 0042A522    pop         ebp
 0042A523    ret         4
*}
end;

//0042A528
{*function sub_0042A528:?;
begin
 0042A528    mov         al,1
 0042A52A    ret
end;*}

//0042A52C
{*procedure sub_0042A52C(?:TNVItem; ?:?; ?:?; ?:?; ?:?);
begin
 0042A52C    push        ebp
 0042A52D    mov         ebp,esp
 0042A52F    push        0
 0042A531    push        0
 0042A533    push        ebx
 0042A534    push        esi
 0042A535    push        edi
 0042A536    mov         ebx,eax
 0042A538    xor         eax,eax
 0042A53A    push        ebp
 0042A53B    push        42A64B
 0042A540    push        dword ptr fs:[eax]
 0042A543    mov         dword ptr fs:[eax],esp
 0042A546    mov         al,byte ptr [ebp+8]
 0042A549    mov         byte ptr [ebx+18],al
 0042A54C    push        ecx
 0042A54D    push        edx
 0042A54E    lea         eax,[ebx+2C]
 0042A551    push        eax
 0042A552    call        user32.OffsetRect
 0042A557    cmp         byte ptr [ebx+18],0
>0042A55B    je          0042A564
 0042A55D    or          dword ptr [ebp+0C],10000
 0042A564    lea         esi,[ebx+2C]
 0042A567    call        kernel32.GetVersion
 0042A56C    test        eax,80000000
>0042A571    jne         0042A5BD
 0042A573    mov         edi,dword ptr [esi]
 0042A575    push        edi
 0042A576    mov         eax,dword ptr [esi+4]
 0042A579    push        eax
 0042A57A    mov         eax,dword ptr [esi+8]
 0042A57D    sub         eax,edi
 0042A57F    push        eax
 0042A580    mov         eax,dword ptr [esi+0C]
 0042A583    sub         eax,dword ptr [esi+4]
 0042A586    push        eax
 0042A587    mov         eax,dword ptr [ebx+0C]
 0042A58A    mov         eax,dword ptr [eax+2C]
 0042A58D    push        eax
 0042A58E    push        0
 0042A590    mov         eax,[0055C664];gvar_0055C664
 0042A595    push        eax
 0042A596    push        0
 0042A598    mov         eax,dword ptr [ebp+10]
 0042A59B    call        @WStrToPWChar
 0042A5A0    push        eax
 0042A5A1    mov         eax,dword ptr [ebp+14]
 0042A5A4    call        @WStrToPWChar
 0042A5A9    mov         ecx,dword ptr [ebp+0C]
 0042A5AC    add         ecx,40000000
 0042A5B2    pop         edx
 0042A5B3    call        004084F0
 0042A5B8    mov         dword ptr [ebx+14],eax
>0042A5BB    jmp         0042A61B
 0042A5BD    mov         edi,dword ptr [esi]
 0042A5BF    push        edi
 0042A5C0    mov         eax,dword ptr [esi+4]
 0042A5C3    push        eax
 0042A5C4    mov         eax,dword ptr [esi+8]
 0042A5C7    sub         eax,edi
 0042A5C9    push        eax
 0042A5CA    mov         eax,dword ptr [esi+0C]
 0042A5CD    sub         eax,dword ptr [esi+4]
 0042A5D0    push        eax
 0042A5D1    mov         eax,dword ptr [ebx+0C]
 0042A5D4    mov         eax,dword ptr [eax+2C]
 0042A5D7    push        eax
 0042A5D8    push        0
 0042A5DA    mov         eax,[0055C664];gvar_0055C664
 0042A5DF    push        eax
 0042A5E0    push        0
 0042A5E2    lea         eax,[ebp-4]
 0042A5E5    mov         edx,dword ptr [ebp+10]
 0042A5E8    call        @LStrFromWStr
 0042A5ED    mov         eax,dword ptr [ebp-4]
 0042A5F0    call        @LStrToPChar
 0042A5F5    push        eax
 0042A5F6    lea         eax,[ebp-8]
 0042A5F9    mov         edx,dword ptr [ebp+14]
 0042A5FC    call        @LStrFromWStr
 0042A601    mov         eax,dword ptr [ebp-8]
 0042A604    call        @LStrToPChar
 0042A609    mov         ecx,dword ptr [ebp+0C]
 0042A60C    add         ecx,40000000
 0042A612    pop         edx
 0042A613    call        00408490
 0042A618    mov         dword ptr [ebx+14],eax
 0042A61B    mov         eax,dword ptr [ebx+14]
 0042A61E    test        eax,eax
>0042A620    je          0042A630
 0042A622    cmp         byte ptr [ebx+19],0
>0042A626    jne         0042A630
 0042A628    push        0
 0042A62A    push        eax
 0042A62B    call        user32.EnableWindow
 0042A630    xor         eax,eax
 0042A632    pop         edx
 0042A633    pop         ecx
 0042A634    pop         ecx
 0042A635    mov         dword ptr fs:[eax],edx
 0042A638    push        42A652
 0042A63D    lea         eax,[ebp-8]
 0042A640    mov         edx,2
 0042A645    call        @LStrArrayClr
 0042A64A    ret
>0042A64B    jmp         @HandleFinally
>0042A650    jmp         0042A63D
 0042A652    pop         edi
 0042A653    pop         esi
 0042A654    pop         ebx
 0042A655    pop         ecx
 0042A656    pop         ecx
 0042A657    pop         ebp
 0042A658    ret         10
end;*}

//0042A65C
{*procedure sub_0042A65C(?:?; ?:?);
begin
 0042A65C    mov         byte ptr [eax+1A],dl
 0042A65F    mov         edx,dword ptr [eax+14]
 0042A662    test        edx,edx
>0042A664    je          0042A683
 0042A666    cmp         byte ptr [eax+19],0
>0042A66A    je          0042A672
 0042A66C    cmp         byte ptr [eax+1A],0
>0042A670    je          0042A676
 0042A672    xor         ecx,ecx
>0042A674    jmp         0042A678
 0042A676    mov         cl,1
 0042A678    neg         cl
 0042A67A    sbb         ecx,ecx
 0042A67C    push        ecx
 0042A67D    push        edx
 0042A67E    call        user32.EnableWindow
 0042A683    ret
end;*}

//0042A684
{*function sub_0042A684(?:?):?;
begin
 0042A684    mov         al,byte ptr [eax+3C]
 0042A687    ret
end;*}

//0042A688
{*procedure sub_0042A688(?:?; ?:?);
begin
 0042A688    push        ebx
 0042A689    push        esi
 0042A68A    mov         esi,edx
 0042A68C    mov         ebx,eax
 0042A68E    mov         eax,esi
 0042A690    mov         edx,dword ptr [ebx+40]
 0042A693    call        @WStrAsg
 0042A698    pop         esi
 0042A699    pop         ebx
 0042A69A    ret
end;*}

//0042A69C
{*procedure sub_0042A69C(?:?; ?:?);
begin
 0042A69C    push        ebx
 0042A69D    push        esi
 0042A69E    mov         esi,edx
 0042A6A0    mov         ebx,eax
 0042A6A2    mov         eax,esi
 0042A6A4    mov         edx,dword ptr [ebx+10]
 0042A6A7    call        @WStrAsg
 0042A6AC    pop         esi
 0042A6AD    pop         ebx
 0042A6AE    ret
end;*}

//0042A6B0
{*function sub_0042A6B0(?:?):?;
begin
 0042A6B0    mov         eax,dword ptr [eax+14]
 0042A6B3    ret
end;*}

//0042A6B4
{*function sub_0042A6B4(?:?):?;
begin
 0042A6B4    mov         al,byte ptr [eax+18]
 0042A6B7    ret
end;*}

//0042A6B8
{*function sub_0042A6B8(?:?):?;
begin
 0042A6B8    mov         eax,dword ptr [eax+1C]
 0042A6BB    ret
end;*}

//0042A6BC
{*function sub_0042A6BC(?:?):?;
begin
 0042A6BC    mov         al,byte ptr [eax+19]
 0042A6BF    ret
end;*}

//0042A6C0
{*procedure sub_0042A6C0(?:?; ?:?);
begin
 0042A6C0    push        ebx
 0042A6C1    push        esi
 0042A6C2    mov         ebx,edx
 0042A6C4    mov         esi,eax
 0042A6C6    test        bl,bl
>0042A6C8    je          0042A6E1
 0042A6CA    mov         eax,esi
 0042A6CC    mov         edx,dword ptr ds:[42930C];TNVEdit
 0042A6D2    call        @IsClass
 0042A6D7    test        al,al
>0042A6D9    je          0042A6E4
 0042A6DB    cmp         dword ptr [esi+48],1
>0042A6DF    jle         0042A6E4
 0042A6E1    mov         byte ptr [esi+3C],bl
 0042A6E4    pop         esi
 0042A6E5    pop         ebx
 0042A6E6    ret
end;*}

//0042A6E8
{*procedure sub_0042A6E8(?:?; ?:?);
begin
 0042A6E8    push        ebx
 0042A6E9    push        esi
 0042A6EA    mov         esi,edx
 0042A6EC    mov         ebx,eax
 0042A6EE    lea         eax,[ebx+40]
 0042A6F1    mov         edx,esi
 0042A6F3    call        @WStrAsg
 0042A6F8    pop         esi
 0042A6F9    pop         ebx
 0042A6FA    ret
end;*}

//0042A6FC
{*procedure sub_0042A6FC(?:?; ?:?);
begin
 0042A6FC    mov         byte ptr [eax+19],dl
 0042A6FF    mov         edx,dword ptr [eax+14]
 0042A702    test        edx,edx
>0042A704    je          0042A723
 0042A706    cmp         byte ptr [eax+19],0
>0042A70A    je          0042A712
 0042A70C    cmp         byte ptr [eax+1A],0
>0042A710    je          0042A716
 0042A712    xor         ecx,ecx
>0042A714    jmp         0042A718
 0042A716    mov         cl,1
 0042A718    neg         cl
 0042A71A    sbb         ecx,ecx
 0042A71C    push        ecx
 0042A71D    push        edx
 0042A71E    call        user32.EnableWindow
 0042A723    ret
end;*}

//0042A724
{*procedure sub_0042A724(?:?);
begin
 0042A724    push        ebx
 0042A725    mov         ebx,eax
 0042A727    mov         eax,dword ptr [ebx+14]
 0042A72A    test        eax,eax
>0042A72C    je          0042A757
 0042A72E    push        eax
 0042A72F    call        user32.SetFocus
 0042A734    mov         eax,ebx
 0042A736    mov         edx,dword ptr ds:[42930C];TNVEdit
 0042A73C    call        @IsClass
 0042A741    test        al,al
>0042A743    je          0042A757
 0042A745    push        0FF
 0042A747    push        0
 0042A749    push        0B1
 0042A74E    mov         eax,dword ptr [ebx+14]
 0042A751    push        eax
 0042A752    call        user32.SendMessageA
 0042A757    pop         ebx
 0042A758    ret
end;*}

//0042A75C
{*constructor TNVButton.Create(?:?; ?:?);
begin
 0042A75C    push        ebp
 0042A75D    mov         ebp,esp
 0042A75F    push        ebx
 0042A760    push        esi
 0042A761    test        dl,dl
>0042A763    je          0042A76D
 0042A765    add         esp,0FFFFFFF0
 0042A768    call        @ClassCreate
 0042A76D    mov         ebx,edx
 0042A76F    mov         esi,eax
 0042A771    mov         eax,dword ptr [ebp+0C]
 0042A774    push        eax
 0042A775    xor         edx,edx
 0042A777    mov         eax,esi
 0042A779    call        TNVLabel.Create
 0042A77E    lea         eax,[esi+4C]
 0042A781    mov         edx,dword ptr [ebp+8]
 0042A784    call        @WStrAsg
 0042A789    mov         eax,esi
 0042A78B    test        bl,bl
>0042A78D    je          0042A79E
 0042A78F    call        @AfterConstruction
 0042A794    pop         dword ptr fs:[0]
 0042A79B    add         esp,0C
 0042A79E    mov         eax,esi
 0042A7A0    pop         esi
 0042A7A1    pop         ebx
 0042A7A2    pop         ebp
 0042A7A3    ret         8
end;*}

//0042A7A8
{*procedure sub_0042A7A8(?:?; ?:?);
begin
 0042A7A8    push        ebx
 0042A7A9    push        esi
 0042A7AA    push        edi
 0042A7AB    mov         edi,ecx
 0042A7AD    mov         esi,edx
 0042A7AF    mov         ebx,eax
 0042A7B1    mov         eax,esi
 0042A7B3    mov         edx,42A830;'MinWidth'
 0042A7B8    call        @WStrCmp
>0042A7BD    jne         0042A7CB
 0042A7BF    mov         eax,edi
 0042A7C1    call        00429AD4
 0042A7C6    mov         dword ptr [ebx+48],eax;TNVButton.?f48:dword
>0042A7C9    jmp         0042A826
 0042A7CB    mov         eax,esi
 0042A7CD    mov         edx,42A848;'Caption'
 0042A7D2    call        @WStrCmp
>0042A7D7    jne         0042A7E5
 0042A7D9    lea         eax,[ebx+4C];TNVButton.?f4C:WideString
 0042A7DC    mov         edx,edi
 0042A7DE    call        @WStrAsg
>0042A7E3    jmp         0042A826
 0042A7E5    mov         eax,esi
 0042A7E7    mov         edx,42A85C;'NoOwnerDraw'
 0042A7EC    call        @WStrCmp
>0042A7F1    jne         0042A7FF
 0042A7F3    mov         eax,edi
 0042A7F5    call        00429A68
 0042A7FA    mov         byte ptr [ebx+50],al;TNVButton.?f50:byte
>0042A7FD    jmp         0042A826
 0042A7FF    mov         eax,esi
 0042A801    mov         edx,42A878;'Visible'
 0042A806    call        @WStrCmp
>0042A80B    jne         0042A81B
 0042A80D    mov         eax,edi
 0042A80F    call        00429A68
 0042A814    xor         al,1
 0042A816    mov         byte ptr [ebx+51],al;TNVButton.?f51:byte
>0042A819    jmp         0042A826
 0042A81B    mov         ecx,edi
 0042A81D    mov         edx,esi
 0042A81F    mov         eax,ebx
 0042A821    call        0042A200
 0042A826    pop         edi
 0042A827    pop         esi
 0042A828    pop         ebx
 0042A829    ret
end;*}

//0042A888
{*procedure sub_0042A888(?:?; ?:?; ?:?);
begin
 0042A888    push        ebp
 0042A889    mov         ebp,esp
 0042A88B    add         esp,0FFFFFFF0
 0042A88E    push        ebx
 0042A88F    push        esi
 0042A890    push        edi
 0042A891    xor         ebx,ebx
 0042A893    mov         dword ptr [ebp-10],ebx
 0042A896    mov         dword ptr [ebp-0C],ebx
 0042A899    mov         edi,ecx
 0042A89B    mov         esi,edx
 0042A89D    mov         ebx,eax
 0042A89F    xor         eax,eax
 0042A8A1    push        ebp
 0042A8A2    push        42A947
 0042A8A7    push        dword ptr fs:[eax]
 0042A8AA    mov         dword ptr fs:[eax],esp
 0042A8AD    push        0D
 0042A8AF    lea         eax,[ebp-8]
 0042A8B2    push        eax
 0042A8B3    lea         edx,[ebp-0C]
 0042A8B6    mov         eax,ebx
 0042A8B8    call        0042AC44
 0042A8BD    mov         edx,dword ptr [ebp-0C]
 0042A8C0    xor         ecx,ecx
 0042A8C2    mov         eax,dword ptr [ebp+8]
 0042A8C5    call        00429CB4
 0042A8CA    lea         eax,[ebx+34];TNVButton.?f34:dword
 0042A8CD    mov         edx,dword ptr [ebp-8]
 0042A8D0    mov         dword ptr [eax],edx
 0042A8D2    mov         edx,dword ptr [ebp-4]
 0042A8D5    mov         dword ptr [eax+4],edx
 0042A8D8    add         dword ptr [ebx+34],20;TNVButton.?f34:dword
 0042A8DC    cmp         dword ptr [ebx+34],46;TNVButton.?f34:dword
>0042A8E0    jge         0042A8E9
 0042A8E2    mov         dword ptr [ebx+34],46;TNVButton.?f34:dword
 0042A8E9    add         dword ptr [ebx+38],0A;TNVButton.?f38:Integer
 0042A8ED    mov         eax,dword ptr [ebx+48];TNVButton.?f48:dword
 0042A8F0    cmp         eax,dword ptr [ebx+34];TNVButton.?f34:dword
>0042A8F3    jle         0042A8F8
 0042A8F5    mov         dword ptr [ebx+34],eax;TNVButton.?f34:dword
 0042A8F8    push        42A95C
 0042A8FD    lea         edx,[ebp-10]
 0042A900    mov         eax,ebx
 0042A902    call        0042AC44
 0042A907    mov         eax,dword ptr [ebp-10]
 0042A90A    push        eax
 0042A90B    push        4000
 0042A910    push        1
 0042A912    mov         ecx,dword ptr [edi]
 0042A914    mov         edx,esi
 0042A916    mov         eax,ebx
 0042A918    call        0042A52C
 0042A91D    mov         eax,dword ptr [ebp+8]
 0042A920    push        eax
 0042A921    mov         ecx,edi
 0042A923    mov         edx,esi
 0042A925    mov         eax,ebx
 0042A927    call        0042A2D4
 0042A92C    xor         eax,eax
 0042A92E    pop         edx
 0042A92F    pop         ecx
 0042A930    pop         ecx
 0042A931    mov         dword ptr fs:[eax],edx
 0042A934    push        42A94E
 0042A939    lea         eax,[ebp-10]
 0042A93C    mov         edx,2
 0042A941    call        @WStrArrayClr
 0042A946    ret
>0042A947    jmp         @HandleFinally
>0042A94C    jmp         0042A939
 0042A94E    pop         edi
 0042A94F    pop         esi
 0042A950    pop         ebx
 0042A951    mov         esp,ebp
 0042A953    pop         ebp
 0042A954    ret         4
end;*}

//0042A96C
{*procedure sub_0042A96C(?:?; ?:?; ?:?);
begin
 0042A96C    push        ebp
 0042A96D    mov         ebp,esp
 0042A96F    add         esp,0FFFFFFCC
 0042A972    push        ebx
 0042A973    push        esi
 0042A974    push        edi
 0042A975    xor         ebx,ebx
 0042A977    mov         dword ptr [ebp-34],ebx
 0042A97A    mov         dword ptr [ebp-30],ebx
 0042A97D    mov         dword ptr [ebp-2C],ebx
 0042A980    mov         dword ptr [ebp-28],ebx
 0042A983    mov         dword ptr [ebp-24],ebx
 0042A986    mov         esi,dword ptr [ebp+8]
 0042A989    lea         edi,[ebp-20]
 0042A98C    movs        dword ptr [edi],dword ptr [esi]
 0042A98D    movs        dword ptr [edi],dword ptr [esi]
 0042A98E    movs        dword ptr [edi],dword ptr [esi]
 0042A98F    movs        dword ptr [edi],dword ptr [esi]
 0042A990    mov         ebx,ecx
 0042A992    mov         edi,edx
 0042A994    mov         dword ptr [ebp-4],eax
 0042A997    xor         eax,eax
 0042A999    push        ebp
 0042A99A    push        42AC23
 0042A99F    push        dword ptr fs:[eax]
 0042A9A2    mov         dword ptr fs:[eax],esp
 0042A9A5    lea         edx,[ebp-24]
 0042A9A8    mov         eax,dword ptr [ebp-4]
 0042A9AB    mov         eax,dword ptr [eax+0C];TNVButton.?fC:dword
 0042A9AE    call        0042DB4C
 0042A9B3    mov         eax,dword ptr [ebp-24]
 0042A9B6    mov         edx,dword ptr [eax]
 0042A9B8    call        dword ptr [edx+10]
 0042A9BB    mov         edx,dword ptr [ebp-4]
 0042A9BE    cmp         eax,dword ptr [edx+14];TNVButton.?f14:dword
>0042A9C1    jne         0042A9D3
 0042A9C3    mov         dword ptr [ebp-0C],80A080
 0042A9CA    mov         dword ptr [ebp-10],20102
>0042A9D1    jmp         0042AA0F
 0042A9D3    lea         edx,[ebp-28]
 0042A9D6    mov         eax,dword ptr [ebp-4]
 0042A9D9    mov         eax,dword ptr [eax+0C];TNVButton.?fC:dword
 0042A9DC    call        0042DB78
 0042A9E1    mov         eax,dword ptr [ebp-28]
 0042A9E4    mov         edx,dword ptr [eax]
 0042A9E6    call        dword ptr [edx+10]
 0042A9E9    mov         edx,dword ptr [ebp-4]
 0042A9EC    cmp         eax,dword ptr [edx+14];TNVButton.?f14:dword
>0042A9EF    jne         0042AA01
 0042A9F1    mov         dword ptr [ebp-0C],0A08080
 0042A9F8    mov         dword ptr [ebp-10],10202
>0042A9FF    jmp         0042AA0F
 0042AA01    mov         dword ptr [ebp-0C],8080A0
 0042AA08    mov         dword ptr [ebp-10],20201
 0042AA0F    test        bl,4
>0042AA12    jne         0042AB7B
 0042AA18    test        bl,10
>0042AA1B    je          0042AAD2
 0042AA21    push        8
 0042AA23    call        user32.GetSysColor
 0042AA28    push        eax
 0042AA29    xor         ecx,ecx
 0042AA2B    lea         edx,[ebp-20]
 0042AA2E    mov         eax,edi
 0042AA30    call        00429D70
 0042AA35    xor         eax,eax
 0042AA37    mov         dword ptr [ebp-8],eax
 0042AA3A    mov         ebx,dword ptr [ebp-14]
 0042AA3D    sub         ebx,3
 0042AA40    mov         esi,dword ptr [ebp-1C]
 0042AA43    add         esi,2
 0042AA46    sub         esi,ebx
>0042AA48    jg          0042AA7B
 0042AA4A    dec         esi
 0042AA4B    mov         eax,dword ptr [ebp-18]
 0042AA4E    sub         eax,2
 0042AA51    push        eax
 0042AA52    lea         eax,[ebx+1]
 0042AA55    push        eax
 0042AA56    mov         eax,dword ptr [ebp-8]
 0042AA59    push        eax
 0042AA5A    mov         edx,dword ptr [ebp-20]
 0042AA5D    add         edx,2
 0042AA60    mov         ecx,ebx
 0042AA62    mov         eax,edi
 0042AA64    call        00429DB8
 0042AA69    mov         eax,20202
 0042AA6E    sub         eax,dword ptr [ebp-10]
 0042AA71    lea         eax,[eax+eax*2]
 0042AA74    add         dword ptr [ebp-8],eax
 0042AA77    dec         ebx
 0042AA78    inc         esi
>0042AA79    jne         0042AA4B
 0042AA7B    push        1
 0042AA7D    push        2
 0042AA7F    mov         eax,dword ptr [ebp-8]
 0042AA82    push        eax
 0042AA83    mov         eax,dword ptr [ebp-0C]
 0042AA86    push        eax
 0042AA87    mov         ecx,0FFFFFFFD
 0042AA8C    lea         edx,[ebp-20]
 0042AA8F    mov         eax,edi
 0042AA91    call        00429F00
 0042AA96    lea         edx,[ebp-2C]
 0042AA99    mov         eax,dword ptr [ebp-4]
 0042AA9C    call        0042AC44
 0042AAA1    mov         eax,dword ptr [ebp-2C]
 0042AAA4    push        eax
 0042AAA5    push        42AC3C;'Arial'
 0042AAAA    push        0F
 0042AAAC    push        0
 0042AAAE    push        0
 0042AAB0    push        5
 0042AAB2    call        user32.GetSysColor
 0042AAB7    push        eax
 0042AAB8    mov         eax,dword ptr [ebp-18]
 0042AABB    push        eax
 0042AABC    mov         eax,dword ptr [ebp-14]
 0042AABF    push        eax
 0042AAC0    mov         ecx,dword ptr [ebp-1C]
 0042AAC3    mov         edx,dword ptr [ebp-20]
 0042AAC6    mov         eax,edi
 0042AAC8    call        00429F54
>0042AACD    jmp         0042ABF5
 0042AAD2    push        10
 0042AAD4    call        user32.GetSysColor
 0042AAD9    push        eax
 0042AADA    xor         ecx,ecx
 0042AADC    lea         edx,[ebp-20]
 0042AADF    mov         eax,edi
 0042AAE1    call        00429D70
 0042AAE6    push        0F
 0042AAE8    call        user32.GetSysColor
 0042AAED    push        eax
 0042AAEE    mov         ecx,0FFFFFFFE
 0042AAF3    lea         edx,[ebp-20]
 0042AAF6    mov         eax,edi
 0042AAF8    call        00429D70
 0042AAFD    mov         dword ptr [ebp-8],0FFFFFF
 0042AB04    mov         ebx,dword ptr [ebp-1C]
 0042AB07    add         ebx,3
 0042AB0A    mov         esi,dword ptr [ebp-14]
 0042AB0D    sub         esi,4
 0042AB10    sub         esi,ebx
>0042AB12    jl          0042AB42
 0042AB14    inc         esi
 0042AB15    mov         eax,dword ptr [ebp-18]
 0042AB18    sub         eax,3
 0042AB1B    push        eax
 0042AB1C    lea         eax,[ebx+1]
 0042AB1F    push        eax
 0042AB20    mov         eax,dword ptr [ebp-8]
 0042AB23    push        eax
 0042AB24    mov         edx,dword ptr [ebp-20]
 0042AB27    add         edx,3
 0042AB2A    mov         ecx,ebx
 0042AB2C    mov         eax,edi
 0042AB2E    call        00429DB8
 0042AB33    test        bl,1
>0042AB36    je          0042AB3E
 0042AB38    mov         eax,dword ptr [ebp-10]
 0042AB3B    sub         dword ptr [ebp-8],eax
 0042AB3E    inc         ebx
 0042AB3F    dec         esi
>0042AB40    jne         0042AB15
 0042AB42    lea         edx,[ebp-30]
 0042AB45    mov         eax,dword ptr [ebp-4]
 0042AB48    call        0042AC44
 0042AB4D    mov         eax,dword ptr [ebp-30]
 0042AB50    push        eax
 0042AB51    push        42AC3C;'Arial'
 0042AB56    push        0F
 0042AB58    push        0
 0042AB5A    push        1
 0042AB5C    push        8
 0042AB5E    call        user32.GetSysColor
 0042AB63    push        eax
 0042AB64    mov         eax,dword ptr [ebp-18]
 0042AB67    push        eax
 0042AB68    mov         eax,dword ptr [ebp-14]
 0042AB6B    push        eax
 0042AB6C    mov         ecx,dword ptr [ebp-1C]
 0042AB6F    mov         edx,dword ptr [ebp-20]
 0042AB72    mov         eax,edi
 0042AB74    call        00429F54
>0042AB79    jmp         0042ABF5
 0042AB7B    push        0F
 0042AB7D    call        user32.GetSysColor
 0042AB82    push        eax
 0042AB83    xor         ecx,ecx
 0042AB85    lea         edx,[ebp-20]
 0042AB88    mov         eax,edi
 0042AB8A    call        00429D70
 0042AB8F    push        0F
 0042AB91    call        user32.GetSysColor
 0042AB96    mov         cl,1
 0042AB98    mov         edx,101010
 0042AB9D    call        00429B38
 0042ABA2    push        eax
 0042ABA3    mov         ecx,0FFFFFFFE
 0042ABA8    lea         edx,[ebp-20]
 0042ABAB    mov         eax,edi
 0042ABAD    call        00429D70
 0042ABB2    lea         edx,[ebp-34]
 0042ABB5    mov         eax,dword ptr [ebp-4]
 0042ABB8    call        0042AC44
 0042ABBD    mov         eax,dword ptr [ebp-34]
 0042ABC0    push        eax
 0042ABC1    push        42AC3C;'Arial'
 0042ABC6    push        0F
 0042ABC8    push        0
 0042ABCA    push        0
 0042ABCC    push        0F
 0042ABCE    call        user32.GetSysColor
 0042ABD3    xor         ecx,ecx
 0042ABD5    mov         edx,141414
 0042ABDA    call        00429B38
 0042ABDF    push        eax
 0042ABE0    mov         eax,dword ptr [ebp-18]
 0042ABE3    push        eax
 0042ABE4    mov         eax,dword ptr [ebp-14]
 0042ABE7    push        eax
 0042ABE8    mov         ecx,dword ptr [ebp-1C]
 0042ABEB    mov         edx,dword ptr [ebp-20]
 0042ABEE    mov         eax,edi
 0042ABF0    call        00429F54
 0042ABF5    xor         eax,eax
 0042ABF7    pop         edx
 0042ABF8    pop         ecx
 0042ABF9    pop         ecx
 0042ABFA    mov         dword ptr fs:[eax],edx
 0042ABFD    push        42AC2A
 0042AC02    lea         eax,[ebp-34]
 0042AC05    mov         edx,3
 0042AC0A    call        @WStrArrayClr
 0042AC0F    lea         eax,[ebp-28]
 0042AC12    mov         edx,dword ptr ds:[428D44];INVButton
 0042AC18    mov         ecx,2
 0042AC1D    call        @FinalizeArray
 0042AC22    ret
>0042AC23    jmp         @HandleFinally
>0042AC28    jmp         0042AC02
 0042AC2A    pop         edi
 0042AC2B    pop         esi
 0042AC2C    pop         ebx
 0042AC2D    mov         esp,ebp
 0042AC2F    pop         ebp
 0042AC30    ret         4
end;*}

//0042AC44
{*procedure sub_0042AC44(?:TNVButton; ?:?);
begin
 0042AC44    push        ebx
 0042AC45    push        esi
 0042AC46    mov         esi,edx
 0042AC48    mov         ebx,eax
 0042AC4A    mov         eax,dword ptr [ebx+4C];TNVButton.?f4C:WideString
 0042AC4D    xor         edx,edx
 0042AC4F    call        @WStrCmp
>0042AC54    jne         0042AC63
 0042AC56    mov         eax,esi
 0042AC58    mov         edx,dword ptr [ebx+10];TNVButton.?f10:WideString
 0042AC5B    call        @WStrAsg
 0042AC60    pop         esi
 0042AC61    pop         ebx
 0042AC62    ret
 0042AC63    mov         eax,esi
 0042AC65    mov         edx,dword ptr [ebx+4C];TNVButton.?f4C:WideString
 0042AC68    call        @WStrAsg
 0042AC6D    pop         esi
 0042AC6E    pop         ebx
 0042AC6F    ret
end;*}

//0042AC70
{*procedure sub_0042AC70(?:?; ?:?);
begin
 0042AC70    push        ebx
 0042AC71    push        esi
 0042AC72    mov         esi,edx
 0042AC74    mov         ebx,eax
 0042AC76    lea         eax,[ebx+4C]
 0042AC79    mov         edx,esi
 0042AC7B    call        @WStrAsg
 0042AC80    pop         esi
 0042AC81    pop         ebx
 0042AC82    ret
end;*}

//0042AC84
{*function sub_0042AC84(?:?):?;
begin
 0042AC84    mov         eax,dword ptr [eax+48]
 0042AC87    ret
end;*}

//0042AC88
{*procedure sub_0042AC88(?:?; ?:?);
begin
 0042AC88    push        ebx
 0042AC89    push        esi
 0042AC8A    push        edi
 0042AC8B    mov         edi,ecx
 0042AC8D    mov         esi,edx
 0042AC8F    mov         ebx,eax
 0042AC91    mov         eax,esi
 0042AC93    mov         edx,42ACC0;'Caption'
 0042AC98    call        @WStrCmp
>0042AC9D    jne         0042ACAB
 0042AC9F    lea         eax,[ebx+48];TNVLabel...:WideString
 0042ACA2    mov         edx,edi
 0042ACA4    call        @WStrAsg
>0042ACA9    jmp         0042ACB6
 0042ACAB    mov         ecx,edi
 0042ACAD    mov         edx,esi
 0042ACAF    mov         eax,ebx
 0042ACB1    call        0042A200
 0042ACB6    pop         edi
 0042ACB7    pop         esi
 0042ACB8    pop         ebx
 0042ACB9    ret
end;*}

//0042ACD0
{*procedure sub_0042ACD0(?:?; ?:?; ?:?);
begin
 0042ACD0    push        ebp
 0042ACD1    mov         ebp,esp
 0042ACD3    add         esp,0FFFFFFEC
 0042ACD6    push        ebx
 0042ACD7    push        esi
 0042ACD8    push        edi
 0042ACD9    xor         ebx,ebx
 0042ACDB    mov         dword ptr [ebp-14],ebx
 0042ACDE    mov         esi,ecx
 0042ACE0    mov         edi,edx
 0042ACE2    mov         ebx,eax
 0042ACE4    xor         eax,eax
 0042ACE6    push        ebp
 0042ACE7    push        42AD57
 0042ACEC    push        dword ptr fs:[eax]
 0042ACEF    mov         dword ptr fs:[eax],esp
 0042ACF2    sub         dword ptr [esi],2
 0042ACF5    lea         ecx,[ebp-10]
 0042ACF8    mov         edx,dword ptr [ebp+8]
 0042ACFB    mov         eax,ebx
 0042ACFD    call        0042AD7C
 0042AD02    push        esi
 0042AD03    push        edi
 0042AD04    lea         esi,[ebp-10]
 0042AD07    lea         edi,[ebx+2C];TNVLabel.?f2C:?
 0042AD0A    movs        dword ptr [edi],dword ptr [esi]
 0042AD0B    movs        dword ptr [edi],dword ptr [esi]
 0042AD0C    movs        dword ptr [edi],dword ptr [esi]
 0042AD0D    movs        dword ptr [edi],dword ptr [esi]
 0042AD0E    pop         edi
 0042AD0F    pop         esi
 0042AD10    push        42AD6C
 0042AD15    lea         edx,[ebp-14]
 0042AD18    mov         eax,ebx
 0042AD1A    call        0042AF88
 0042AD1F    mov         eax,dword ptr [ebp-14]
 0042AD22    push        eax
 0042AD23    push        0
 0042AD25    push        0
 0042AD27    mov         ecx,dword ptr [esi]
 0042AD29    mov         edx,edi
 0042AD2B    mov         eax,ebx
 0042AD2D    call        0042A52C
 0042AD32    mov         eax,dword ptr [ebp+8]
 0042AD35    push        eax
 0042AD36    mov         ecx,esi
 0042AD38    mov         edx,edi
 0042AD3A    mov         eax,ebx
 0042AD3C    call        0042A2D4
 0042AD41    xor         eax,eax
 0042AD43    pop         edx
 0042AD44    pop         ecx
 0042AD45    pop         ecx
 0042AD46    mov         dword ptr fs:[eax],edx
 0042AD49    push        42AD5E
 0042AD4E    lea         eax,[ebp-14]
 0042AD51    call        @WStrClr
 0042AD56    ret
>0042AD57    jmp         @HandleFinally
>0042AD5C    jmp         0042AD4E
 0042AD5E    pop         edi
 0042AD5F    pop         esi
 0042AD60    pop         ebx
 0042AD61    mov         esp,ebp
 0042AD63    pop         ebp
 0042AD64    ret         4
end;*}

//0042AD7C
{*procedure sub_0042AD7C(?:TNVItem; ?:?; ?:?);
begin
 0042AD7C    push        ebp
 0042AD7D    mov         ebp,esp
 0042AD7F    push        0
 0042AD81    push        0
 0042AD83    push        0
 0042AD85    push        0
 0042AD87    push        0
 0042AD89    push        0
 0042AD8B    push        ebx
 0042AD8C    push        esi
 0042AD8D    push        edi
 0042AD8E    mov         esi,ecx
 0042AD90    mov         edi,edx
 0042AD92    mov         ebx,eax
 0042AD94    xor         eax,eax
 0042AD96    push        ebp
 0042AD97    push        42AE7D
 0042AD9C    push        dword ptr fs:[eax]
 0042AD9F    mov         dword ptr fs:[eax],esp
 0042ADA2    mov         eax,esi
 0042ADA4    mov         edx,10
 0042ADA9    call        00408130
 0042ADAE    mov         eax,dword ptr [ebx+0C];TNVLabel.?fC:dword
 0042ADB1    mov         eax,dword ptr [eax+30]
 0042ADB4    sub         eax,2E
 0042ADB7    mov         dword ptr [esi+8],eax
 0042ADBA    call        kernel32.GetVersion
 0042ADBF    test        eax,80000000
>0042ADC4    jne         0042ADFA
 0042ADC6    push        410
 0042ADCB    push        esi
 0042ADCC    lea         edx,[ebp-4]
 0042ADCF    mov         eax,ebx
 0042ADD1    call        0042AF88
 0042ADD6    mov         eax,dword ptr [ebp-4]
 0042ADD9    call        @WStrLen
 0042ADDE    push        eax
 0042ADDF    lea         edx,[ebp-8]
 0042ADE2    mov         eax,ebx
 0042ADE4    call        0042AF88
 0042ADE9    mov         eax,dword ptr [ebp-8]
 0042ADEC    call        @WStrToPWChar
 0042ADF1    push        eax
 0042ADF2    push        edi
 0042ADF3    call        user32.DrawTextW
>0042ADF8    jmp         0042AE42
 0042ADFA    push        410
 0042ADFF    push        esi
 0042AE00    lea         edx,[ebp-10]
 0042AE03    mov         eax,ebx
 0042AE05    call        0042AF88
 0042AE0A    mov         edx,dword ptr [ebp-10]
 0042AE0D    lea         eax,[ebp-0C]
 0042AE10    call        @LStrFromWStr
 0042AE15    mov         eax,dword ptr [ebp-0C]
 0042AE18    call        @DynArrayLength
 0042AE1D    push        eax
 0042AE1E    lea         edx,[ebp-18]
 0042AE21    mov         eax,ebx
 0042AE23    call        0042AF88
 0042AE28    mov         edx,dword ptr [ebp-18]
 0042AE2B    lea         eax,[ebp-14]
 0042AE2E    call        @LStrFromWStr
 0042AE33    mov         eax,dword ptr [ebp-14]
 0042AE36    call        @LStrToPChar
 0042AE3B    push        eax
 0042AE3C    push        edi
 0042AE3D    call        user32.DrawTextA
 0042AE42    xor         eax,eax
 0042AE44    pop         edx
 0042AE45    pop         ecx
 0042AE46    pop         ecx
 0042AE47    mov         dword ptr fs:[eax],edx
 0042AE4A    push        42AE84
 0042AE4F    lea         eax,[ebp-18]
 0042AE52    call        @WStrClr
 0042AE57    lea         eax,[ebp-14]
 0042AE5A    call        @LStrClr
 0042AE5F    lea         eax,[ebp-10]
 0042AE62    call        @WStrClr
 0042AE67    lea         eax,[ebp-0C]
 0042AE6A    call        @LStrClr
 0042AE6F    lea         eax,[ebp-8]
 0042AE72    mov         edx,2
 0042AE77    call        @WStrArrayClr
 0042AE7C    ret
>0042AE7D    jmp         @HandleFinally
>0042AE82    jmp         0042AE4F
 0042AE84    pop         edi
 0042AE85    pop         esi
 0042AE86    pop         ebx
 0042AE87    mov         esp,ebp
 0042AE89    pop         ebp
 0042AE8A    ret
end;*}

//0042AE8C
{*function sub_0042AE8C(?:TNVItem; ?:?):?;
begin
 0042AE8C    push        ebp
 0042AE8D    mov         ebp,esp
 0042AE8F    add         esp,0FFFFFFD4
 0042AE92    push        ebx
 0042AE93    push        esi
 0042AE94    push        edi
 0042AE95    xor         ecx,ecx
 0042AE97    mov         dword ptr [ebp-2C],ecx
 0042AE9A    mov         dword ptr [ebp-0C],ecx
 0042AE9D    mov         dword ptr [ebp-10],ecx
 0042AEA0    mov         dword ptr [ebp-4],ecx
 0042AEA3    mov         dword ptr [ebp-8],ecx
 0042AEA6    mov         esi,edx
 0042AEA8    mov         ebx,eax
 0042AEAA    xor         eax,eax
 0042AEAC    push        ebp
 0042AEAD    push        42AF65
 0042AEB2    push        dword ptr fs:[eax]
 0042AEB5    mov         dword ptr fs:[eax],esp
 0042AEB8    lea         edx,[ebp-8]
 0042AEBB    mov         eax,ebx
 0042AEBD    call        0042AF88
 0042AEC2    mov         eax,dword ptr [ebp-8]
 0042AEC5    lea         ecx,[ebp-4]
 0042AEC8    mov         edx,1
 0042AECD    call        004092D8
 0042AED2    mov         eax,dword ptr [ebp-4]
 0042AED5    mov         edx,42AF7C;':'
 0042AEDA    call        @WStrCmp
>0042AEDF    je          0042AF0A
 0042AEE1    lea         edx,[ebp-10]
 0042AEE4    mov         eax,ebx
 0042AEE6    call        0042AF88
 0042AEEB    mov         eax,dword ptr [ebp-10]
 0042AEEE    lea         ecx,[ebp-0C]
 0042AEF1    mov         edx,1
 0042AEF6    call        004092D8
 0042AEFB    mov         eax,dword ptr [ebp-0C]
 0042AEFE    mov         edx,42AF84;'?'
 0042AF03    call        @WStrCmp
>0042AF08    jne         0042AF3A
 0042AF0A    lea         ecx,[ebp-20]
 0042AF0D    mov         edx,esi
 0042AF0F    mov         eax,ebx
 0042AF11    call        0042AD7C
 0042AF16    mov         edi,dword ptr [ebp-14]
 0042AF19    push        0
 0042AF1B    lea         eax,[ebp-28]
 0042AF1E    push        eax
 0042AF1F    lea         edx,[ebp-2C]
 0042AF22    mov         eax,ebx
 0042AF24    call        0042AF88
 0042AF29    mov         edx,dword ptr [ebp-2C]
 0042AF2C    xor         ecx,ecx
 0042AF2E    mov         eax,esi
 0042AF30    call        00429CB4
 0042AF35    cmp         edi,dword ptr [ebp-24]
>0042AF38    je          0042AF3E
 0042AF3A    xor         eax,eax
>0042AF3C    jmp         0042AF40
 0042AF3E    mov         al,1
 0042AF40    mov         ebx,eax
 0042AF42    xor         eax,eax
 0042AF44    pop         edx
 0042AF45    pop         ecx
 0042AF46    pop         ecx
 0042AF47    mov         dword ptr fs:[eax],edx
 0042AF4A    push        42AF6C
 0042AF4F    lea         eax,[ebp-2C]
 0042AF52    call        @WStrClr
 0042AF57    lea         eax,[ebp-10]
 0042AF5A    mov         edx,4
 0042AF5F    call        @WStrArrayClr
 0042AF64    ret
>0042AF65    jmp         @HandleFinally
>0042AF6A    jmp         0042AF4F
 0042AF6C    mov         eax,ebx
 0042AF6E    pop         edi
 0042AF6F    pop         esi
 0042AF70    pop         ebx
 0042AF71    mov         esp,ebp
 0042AF73    pop         ebp
 0042AF74    ret
end;*}

//0042AF88
{*procedure sub_0042AF88(?:TNVItem; ?:?);
begin
 0042AF88    push        ebx
 0042AF89    push        esi
 0042AF8A    mov         esi,edx
 0042AF8C    mov         ebx,eax
 0042AF8E    mov         eax,dword ptr [ebx+48]
 0042AF91    xor         edx,edx
 0042AF93    call        @WStrCmp
>0042AF98    jne         0042AFA7
 0042AF9A    mov         eax,esi
 0042AF9C    mov         edx,dword ptr [ebx+10];TNVItem.?f10:WideString
 0042AF9F    call        @WStrAsg
 0042AFA4    pop         esi
 0042AFA5    pop         ebx
 0042AFA6    ret
 0042AFA7    mov         eax,esi
 0042AFA9    mov         edx,dword ptr [ebx+48]
 0042AFAC    call        @WStrAsg
 0042AFB1    pop         esi
 0042AFB2    pop         ebx
 0042AFB3    ret
end;*}

//0042AFB4
{*procedure sub_0042AFB4(?:?; ?:?);
begin
 0042AFB4    push        ebx
 0042AFB5    push        esi
 0042AFB6    mov         esi,edx
 0042AFB8    mov         ebx,eax
 0042AFBA    lea         eax,[ebx+48]
 0042AFBD    mov         edx,esi
 0042AFBF    call        @WStrAsg
 0042AFC4    pop         esi
 0042AFC5    pop         ebx
 0042AFC6    ret
end;*}

//0042AFC8
{*procedure sub_0042AFC8(?:?; ?:?);
begin
 0042AFC8    push        ebx
 0042AFC9    push        esi
 0042AFCA    push        edi
 0042AFCB    mov         edi,ecx
 0042AFCD    mov         esi,edx
 0042AFCF    mov         ebx,eax
 0042AFD1    mov         eax,esi
 0042AFD3    mov         edx,42B084;'Text'
 0042AFD8    call        @WStrCmp
>0042AFDD    jne         0042B004
 0042AFDF    lea         eax,[ebx+50];TNVEdit...:WideString
 0042AFE2    mov         edx,edi
 0042AFE4    call        @WStrAsg
 0042AFE9    push        0
 0042AFEB    mov         esi,dword ptr ds:[55B308];^gvar_0053D128
 0042AFF1    mov         esi,dword ptr [esi]
 0042AFF3    lea         eax,[ebx+50];TNVEdit...:WideString
 0042AFF6    mov         ecx,42B094
 0042AFFB    mov         edx,42B0A0
 0042B000    call        esi
>0042B002    jmp         0042B07B
 0042B004    mov         eax,esi
 0042B006    mov         edx,42B0B0;'Lines'
 0042B00B    call        @WStrCmp
>0042B010    jne         0042B01E
 0042B012    mov         eax,edi
 0042B014    call        00429AD4
 0042B019    mov         dword ptr [ebx+48],eax;TNVEdit.?f48:dword
>0042B01C    jmp         0042B07B
 0042B01E    mov         eax,esi
 0042B020    mov         edx,42B0C0;'Optional'
 0042B025    call        @WStrCmp
>0042B02A    jne         0042B038
 0042B02C    mov         eax,edi
 0042B02E    call        00429A68
 0042B033    mov         byte ptr [ebx+4C],al;TNVEdit.?f4C:byte
>0042B036    jmp         0042B07B
 0042B038    mov         eax,esi
 0042B03A    mov         edx,42B0D8;'Colored'
 0042B03F    call        @WStrCmp
>0042B044    jne         0042B054
 0042B046    mov         eax,edi
 0042B048    call        00429A68
 0042B04D    xor         al,1
 0042B04F    mov         byte ptr [ebx+54],al;TNVEdit.?f54:byte
>0042B052    jmp         0042B07B
 0042B054    mov         eax,esi
 0042B056    mov         edx,42B0EC;'Valid'
 0042B05B    call        @WStrCmp
>0042B060    jne         0042B070
 0042B062    mov         eax,edi
 0042B064    call        00429A68
 0042B069    xor         al,1
 0042B06B    mov         byte ptr [ebx+55],al;TNVEdit.?f55:byte
>0042B06E    jmp         0042B07B
 0042B070    mov         ecx,edi
 0042B072    mov         edx,esi
 0042B074    mov         eax,ebx
 0042B076    call        0042A200
 0042B07B    pop         edi
 0042B07C    pop         esi
 0042B07D    pop         ebx
 0042B07E    ret
end;*}

//0042B0F8
{*procedure sub_0042B0F8(?:?; ?:?; ?:?);
begin
 0042B0F8    push        ebp
 0042B0F9    mov         ebp,esp
 0042B0FB    add         esp,0FFFFFFF4
 0042B0FE    push        ebx
 0042B0FF    push        esi
 0042B100    push        edi
 0042B101    mov         dword ptr [ebp-4],ecx
 0042B104    mov         esi,edx
 0042B106    mov         ebx,eax
 0042B108    mov         eax,dword ptr [ebx+0C];TNVEdit.?fC:dword
 0042B10B    mov         eax,dword ptr [eax+30]
 0042B10E    sub         eax,2E
 0042B111    mov         dword ptr [ebx+34],eax;TNVEdit.?f34:dword
 0042B114    push        0D
 0042B116    lea         eax,[ebp-0C]
 0042B119    push        eax
 0042B11A    xor         ecx,ecx
 0042B11C    mov         edx,42B198
 0042B121    mov         eax,dword ptr [ebp+8]
 0042B124    call        00429CB4
 0042B129    mov         edi,dword ptr [ebp-8]
 0042B12C    mov         dword ptr [ebx+38],edi;TNVEdit.?f38:Integer
 0042B12F    mov         eax,dword ptr [ebx+48];TNVEdit.?f48:dword
 0042B132    cmp         eax,1
>0042B135    jle         0042B13D
 0042B137    imul        edi,eax
 0042B13A    mov         dword ptr [ebx+38],edi;TNVEdit.?f38:Integer
 0042B13D    add         dword ptr [ebx+38],2;TNVEdit.?f38:Integer
 0042B141    cmp         dword ptr [ebx+48],1;TNVEdit.?f48:dword
>0042B145    jle         0042B14E
 0042B147    mov         eax,201044
>0042B14C    jmp         0042B150
 0042B14E    xor         eax,eax
 0042B150    push        42B1A4
 0042B155    mov         edx,dword ptr [ebx+50];TNVEdit...:WideString
 0042B158    push        edx
 0042B159    push        eax
 0042B15A    push        1
 0042B15C    mov         ecx,dword ptr [ebp-4]
 0042B15F    mov         ecx,dword ptr [ecx]
 0042B161    add         ecx,2
 0042B164    lea         edx,[esi+2]
 0042B167    mov         eax,ebx
 0042B169    call        0042A52C
 0042B16E    push        2
 0042B170    push        2
 0042B172    lea         eax,[ebx+2C];TNVEdit.?f2C:?
 0042B175    push        eax
 0042B176    call        user32.InflateRect
 0042B17B    mov         eax,dword ptr [ebp+8]
 0042B17E    push        eax
 0042B17F    mov         ecx,dword ptr [ebp-4]
 0042B182    mov         edx,esi
 0042B184    mov         eax,ebx
 0042B186    call        0042A2D4
 0042B18B    pop         edi
 0042B18C    pop         esi
 0042B18D    pop         ebx
 0042B18E    mov         esp,ebp
 0042B190    pop         ebp
 0042B191    ret         4
end;*}

//0042B1B0
{*procedure sub_0042B1B0(?:?);
begin
 0042B1B0    push        ebx
 0042B1B1    push        esi
 0042B1B2    push        edi
 0042B1B3    add         esp,0FFFFFFF0
 0042B1B6    mov         esi,edx
 0042B1B8    mov         ebx,eax
 0042B1BA    push        esi
 0042B1BB    lea         esi,[ebx+2C];TNVEdit.?f2C:?
 0042B1BE    lea         edi,[esp+4]
 0042B1C2    movs        dword ptr [edi],dword ptr [esi]
 0042B1C3    movs        dword ptr [edi],dword ptr [esi]
 0042B1C4    movs        dword ptr [edi],dword ptr [esi]
 0042B1C5    movs        dword ptr [edi],dword ptr [esi]
 0042B1C6    pop         esi
 0042B1C7    call        user32.GetFocus
 0042B1CC    cmp         eax,dword ptr [ebx+14];TNVEdit.?f14:dword
>0042B1CF    jne         0042B24E
 0042B1D1    push        10
 0042B1D3    call        user32.GetSysColor
 0042B1D8    push        eax
 0042B1D9    mov         ecx,1
 0042B1DE    lea         edx,[esp+4]
 0042B1E2    mov         eax,esi
 0042B1E4    call        00429D70
 0042B1E9    mov         edi,dword ptr [esp+8]
 0042B1ED    push        edi
 0042B1EE    mov         ebx,dword ptr [esp+10]
 0042B1F2    push        ebx
 0042B1F3    push        5
 0042B1F5    call        user32.GetSysColor
 0042B1FA    push        eax
 0042B1FB    mov         edx,dword ptr [esp+0C]
 0042B1FF    dec         edx
 0042B200    mov         ecx,ebx
 0042B202    mov         eax,esi
 0042B204    call        00429DB8
 0042B209    push        edi
 0042B20A    push        ebx
 0042B20B    push        5
 0042B20D    call        user32.GetSysColor
 0042B212    push        eax
 0042B213    mov         ecx,dword ptr [esp+10]
 0042B217    dec         ecx
 0042B218    mov         edx,edi
 0042B21A    mov         eax,esi
 0042B21C    call        00429DB8
 0042B221    push        0F
 0042B223    call        user32.GetSysColor
 0042B228    push        eax
 0042B229    xor         ecx,ecx
 0042B22B    lea         edx,[esp+4]
 0042B22F    mov         eax,esi
 0042B231    call        00429D70
 0042B236    push        5
 0042B238    call        user32.GetSysColor
 0042B23D    push        eax
 0042B23E    or          ecx,0FFFFFFFF
 0042B241    lea         edx,[esp+4]
 0042B245    mov         eax,esi
 0042B247    call        00429D70
>0042B24C    jmp         0042B278
 0042B24E    push        0F
 0042B250    call        user32.GetSysColor
 0042B255    mov         edx,0FFFFFF
 0042B25A    sub         edx,eax
 0042B25C    and         edx,0FEFEFE
 0042B262    shr         edx,1
 0042B264    mov         eax,0FFFFFF
 0042B269    sub         eax,edx
 0042B26B    push        eax
 0042B26C    xor         ecx,ecx
 0042B26E    lea         edx,[ebx+2C];TNVEdit.?f2C:?
 0042B271    mov         eax,esi
 0042B273    call        00429D70
 0042B278    add         esp,10
 0042B27B    pop         edi
 0042B27C    pop         esi
 0042B27D    pop         ebx
 0042B27E    ret
end;*}

//0042B280
{*function sub_0042B280:?;
begin
 0042B280    push        ebp
 0042B281    mov         ebp,esp
 0042B283    push        0
 0042B285    push        ebx
 0042B286    mov         ebx,eax
 0042B288    xor         eax,eax
 0042B28A    push        ebp
 0042B28B    push        42B2D6
 0042B290    push        dword ptr fs:[eax]
 0042B293    mov         dword ptr fs:[eax],esp
 0042B296    cmp         byte ptr [ebx+4C],0;TNVEdit.?f4C:byte
>0042B29A    jne         0042B2BC
 0042B29C    cmp         byte ptr [ebx+55],0;TNVEdit.?f55:byte
>0042B2A0    jne         0042B2B8
 0042B2A2    lea         edx,[ebp-4]
 0042B2A5    mov         eax,ebx
 0042B2A7    call        0042B300
 0042B2AC    mov         eax,dword ptr [ebp-4]
 0042B2AF    xor         edx,edx
 0042B2B1    call        @WStrCmp
>0042B2B6    jne         0042B2BC
 0042B2B8    xor         eax,eax
>0042B2BA    jmp         0042B2BE
 0042B2BC    mov         al,1
 0042B2BE    mov         ebx,eax
 0042B2C0    xor         eax,eax
 0042B2C2    pop         edx
 0042B2C3    pop         ecx
 0042B2C4    pop         ecx
 0042B2C5    mov         dword ptr fs:[eax],edx
 0042B2C8    push        42B2DD
 0042B2CD    lea         eax,[ebp-4]
 0042B2D0    call        @WStrClr
 0042B2D5    ret
>0042B2D6    jmp         @HandleFinally
>0042B2DB    jmp         0042B2CD
 0042B2DD    mov         eax,ebx
 0042B2DF    pop         ebx
 0042B2E0    pop         ecx
 0042B2E1    pop         ebp
 0042B2E2    ret
end;*}

//0042B2E4
{*function sub_0042B2E4(?:?):?;
begin
 0042B2E4    mov         eax,dword ptr [eax+48]
 0042B2E7    ret
end;*}

//0042B2E8
{*function sub_0042B2E8(?:?):?;
begin
 0042B2E8    mov         al,byte ptr [eax+4C]
 0042B2EB    ret
end;*}

//0042B2EC
{*procedure sub_0042B2EC(?:?; ?:?);
begin
 0042B2EC    mov         byte ptr [eax+4C],dl
 0042B2EF    mov         edx,dword ptr [eax+0C]
 0042B2F2    test        edx,edx
>0042B2F4    je          0042B2FD
 0042B2F6    mov         eax,edx
 0042B2F8    call        0042D824
 0042B2FD    ret
end;*}

//0042B300
{*procedure sub_0042B300(?:TNVEdit; ?:?);
begin
 0042B300    push        ebp
 0042B301    mov         ebp,esp
 0042B303    push        0
 0042B305    push        ebx
 0042B306    push        esi
 0042B307    mov         esi,edx
 0042B309    mov         ebx,eax
 0042B30B    xor         eax,eax
 0042B30D    push        ebp
 0042B30E    push        42B3D4
 0042B313    push        dword ptr fs:[eax]
 0042B316    mov         dword ptr fs:[eax],esp
 0042B319    cmp         dword ptr [ebx+14],0;TNVEdit.?f14:dword
>0042B31D    je          0042B3B4
 0042B323    call        kernel32.GetVersion
 0042B328    test        eax,80000000
>0042B32D    jne         0042B36D
 0042B32F    push        0
 0042B331    push        0
 0042B333    push        0E
 0042B335    mov         eax,dword ptr [ebx+14];TNVEdit.?f14:dword
 0042B338    push        eax
 0042B339    call        user32.SendMessageW
 0042B33E    mov         edx,eax
 0042B340    inc         edx
 0042B341    lea         eax,[ebx+50];TNVEdit...:WideString
 0042B344    call        @WStrSetLength
 0042B349    mov         eax,dword ptr [ebx+50];TNVEdit...:WideString
 0042B34C    push        eax
 0042B34D    mov         eax,dword ptr [ebx+50];TNVEdit...:WideString
 0042B350    call        @WStrLen
 0042B355    push        eax
 0042B356    push        0D
 0042B358    mov         eax,dword ptr [ebx+14];TNVEdit.?f14:dword
 0042B35B    push        eax
 0042B35C    call        user32.SendMessageW
 0042B361    mov         edx,eax
 0042B363    lea         eax,[ebx+50];TNVEdit...:WideString
 0042B366    call        @WStrSetLength
>0042B36B    jmp         0042B3B4
 0042B36D    push        0
 0042B36F    push        0
 0042B371    push        0E
 0042B373    mov         eax,dword ptr [ebx+14];TNVEdit.?f14:dword
 0042B376    push        eax
 0042B377    call        user32.SendMessageA
 0042B37C    mov         edx,eax
 0042B37E    inc         edx
 0042B37F    lea         eax,[ebp-4]
 0042B382    call        @LStrSetLength
 0042B387    mov         eax,dword ptr [ebp-4]
 0042B38A    push        eax
 0042B38B    mov         eax,dword ptr [ebp-4]
 0042B38E    call        @DynArrayLength
 0042B393    push        eax
 0042B394    push        0D
 0042B396    mov         eax,dword ptr [ebx+14];TNVEdit.?f14:dword
 0042B399    push        eax
 0042B39A    call        user32.SendMessageA
 0042B39F    mov         edx,eax
 0042B3A1    lea         eax,[ebp-4]
 0042B3A4    call        @LStrSetLength
 0042B3A9    lea         eax,[ebx+50];TNVEdit...:WideString
 0042B3AC    mov         edx,dword ptr [ebp-4]
 0042B3AF    call        @WStrFromLStr
 0042B3B4    mov         eax,esi
 0042B3B6    mov         edx,dword ptr [ebx+50];TNVEdit...:WideString
 0042B3B9    call        @WStrAsg
 0042B3BE    xor         eax,eax
 0042B3C0    pop         edx
 0042B3C1    pop         ecx
 0042B3C2    pop         ecx
 0042B3C3    mov         dword ptr fs:[eax],edx
 0042B3C6    push        42B3DB
 0042B3CB    lea         eax,[ebp-4]
 0042B3CE    call        @LStrClr
 0042B3D3    ret
>0042B3D4    jmp         @HandleFinally
>0042B3D9    jmp         0042B3CB
 0042B3DB    pop         esi
 0042B3DC    pop         ebx
 0042B3DD    pop         ecx
 0042B3DE    pop         ebp
 0042B3DF    ret
end;*}

//0042B3E0
{*procedure sub_0042B3E0(?:?; ?:?);
begin
 0042B3E0    push        ebp
 0042B3E1    mov         ebp,esp
 0042B3E3    push        0
 0042B3E5    push        0
 0042B3E7    push        ebx
 0042B3E8    push        esi
 0042B3E9    mov         esi,edx
 0042B3EB    mov         ebx,eax
 0042B3ED    xor         eax,eax
 0042B3EF    push        ebp
 0042B3F0    push        42B497
 0042B3F5    push        dword ptr fs:[eax]
 0042B3F8    mov         dword ptr fs:[eax],esp
 0042B3FB    lea         eax,[ebx+50]
 0042B3FE    mov         edx,esi
 0042B400    call        @WStrAsg
 0042B405    lea         edx,[ebp-4]
 0042B408    mov         eax,ebx
 0042B40A    call        0042B300
 0042B40F    mov         edx,dword ptr [ebp-4]
 0042B412    mov         eax,esi
 0042B414    call        @WStrCmp
>0042B419    je          0042B458
 0042B41B    cmp         dword ptr [ebx+14],0
>0042B41F    je          0042B458
 0042B421    call        kernel32.GetVersion
 0042B426    test        eax,80000000
>0042B42B    jne         0042B43D
 0042B42D    push        esi
 0042B42E    push        0
 0042B430    push        0C
 0042B432    mov         eax,dword ptr [ebx+14]
 0042B435    push        eax
 0042B436    call        user32.SendMessageW
>0042B43B    jmp         0042B458
 0042B43D    lea         eax,[ebp-8]
 0042B440    mov         edx,esi
 0042B442    call        @LStrFromWStr
 0042B447    mov         eax,dword ptr [ebp-8]
 0042B44A    push        eax
 0042B44B    push        0
 0042B44D    push        0C
 0042B44F    mov         eax,dword ptr [ebx+14]
 0042B452    push        eax
 0042B453    call        user32.SendMessageA
 0042B458    mov         eax,dword ptr [ebx+0C]
 0042B45B    test        eax,eax
>0042B45D    je          0042B479
 0042B45F    mov         edx,ebx
 0042B461    test        edx,edx
>0042B463    je          0042B468
 0042B465    sub         edx,0FFFFFFA8
 0042B468    push        edx
 0042B469    mov         edx,eax
 0042B46B    test        edx,edx
>0042B46D    je          0042B472
 0042B46F    sub         edx,0FFFFFFA0
 0042B472    mov         cl,3
 0042B474    call        0042DA74
 0042B479    xor         eax,eax
 0042B47B    pop         edx
 0042B47C    pop         ecx
 0042B47D    pop         ecx
 0042B47E    mov         dword ptr fs:[eax],edx
 0042B481    push        42B49E
 0042B486    lea         eax,[ebp-8]
 0042B489    call        @LStrClr
 0042B48E    lea         eax,[ebp-4]
 0042B491    call        @WStrClr
 0042B496    ret
>0042B497    jmp         @HandleFinally
>0042B49C    jmp         0042B486
 0042B49E    pop         esi
 0042B49F    pop         ebx
 0042B4A0    pop         ecx
 0042B4A1    pop         ecx
 0042B4A2    pop         ebp
 0042B4A3    ret
end;*}

//0042B4A4
{*procedure sub_0042B4A4(?:?);
begin
 0042B4A4    mov         al,byte ptr [eax+54]
 0042B4A7    xor         al,1
 0042B4A9    ret
end;*}

//0042B4AC
{*procedure sub_0042B4AC(?:?; ?:?);
begin
 0042B4AC    xor         dl,1
 0042B4AF    mov         byte ptr [eax+54],dl
 0042B4B2    push        0
 0042B4B4    push        0
 0042B4B6    mov         eax,dword ptr [eax+14]
 0042B4B9    push        eax
 0042B4BA    call        user32.InvalidateRect
 0042B4BF    ret
end;*}

//0042B4C0
{*procedure sub_0042B4C0(?:?);
begin
 0042B4C0    mov         al,byte ptr [eax+55]
 0042B4C3    xor         al,1
 0042B4C5    ret
end;*}

//0042B4C8
{*procedure sub_0042B4C8(?:?; ?:?);
begin
 0042B4C8    push        ebx
 0042B4C9    mov         ebx,eax
 0042B4CB    xor         dl,1
 0042B4CE    mov         byte ptr [ebx+55],dl
 0042B4D1    push        0
 0042B4D3    push        0
 0042B4D5    mov         eax,dword ptr [ebx+14]
 0042B4D8    push        eax
 0042B4D9    call        user32.InvalidateRect
 0042B4DE    mov         eax,dword ptr [ebx+0C]
 0042B4E1    test        eax,eax
>0042B4E3    je          0042B4EA
 0042B4E5    call        0042D824
 0042B4EA    pop         ebx
 0042B4EB    ret
end;*}

//0042B4EC
{*procedure sub_0042B4EC(?:?; ?:?);
begin
 0042B4EC    push        ebx
 0042B4ED    push        esi
 0042B4EE    push        edi
 0042B4EF    mov         edi,ecx
 0042B4F1    mov         esi,edx
 0042B4F3    mov         ebx,eax
 0042B4F5    mov         eax,esi
 0042B4F7    mov         edx,42B558;'Caption'
 0042B4FC    call        @WStrCmp
>0042B501    jne         0042B50F
 0042B503    lea         eax,[ebx+48];TNVCheckBox...:WideString
 0042B506    mov         edx,edi
 0042B508    call        @WStrAsg
>0042B50D    jmp         0042B54E
 0042B50F    mov         eax,esi
 0042B511    mov         edx,42B56C;'Text'
 0042B516    call        @WStrCmp
>0042B51B    jne         0042B529
 0042B51D    lea         eax,[ebx+48];TNVCheckBox...:WideString
 0042B520    mov         edx,edi
 0042B522    call        @WStrAsg
>0042B527    jmp         0042B54E
 0042B529    mov         eax,esi
 0042B52B    mov         edx,42B57C;'Checked'
 0042B530    call        @WStrCmp
>0042B535    jne         0042B543
 0042B537    mov         eax,edi
 0042B539    call        00429A68
 0042B53E    mov         byte ptr [ebx+4C],al;TNVCheckBox.?f4C:byte
>0042B541    jmp         0042B54E
 0042B543    mov         ecx,edi
 0042B545    mov         edx,esi
 0042B547    mov         eax,ebx
 0042B549    call        0042A200
 0042B54E    pop         edi
 0042B54F    pop         esi
 0042B550    pop         ebx
 0042B551    ret
end;*}

//0042B58C
{*procedure sub_0042B58C(?:?; ?:?; ?:?);
begin
 0042B58C    push        ebp
 0042B58D    mov         ebp,esp
 0042B58F    add         esp,0FFFFFFF8
 0042B592    push        ebx
 0042B593    push        esi
 0042B594    push        edi
 0042B595    mov         edi,ecx
 0042B597    mov         esi,edx
 0042B599    mov         ebx,eax
 0042B59B    push        0D
 0042B59D    lea         eax,[ebp-8]
 0042B5A0    push        eax
 0042B5A1    xor         ecx,ecx
 0042B5A3    mov         edx,dword ptr [ebx+48];TNVCheckBox...:WideString
 0042B5A6    mov         eax,dword ptr [ebp+8]
 0042B5A9    call        00429CB4
 0042B5AE    lea         eax,[ebx+34];TNVCheckBox.?f34:dword
 0042B5B1    mov         edx,dword ptr [ebp-8]
 0042B5B4    mov         dword ptr [eax],edx
 0042B5B6    mov         edx,dword ptr [ebp-4]
 0042B5B9    mov         dword ptr [eax+4],edx
 0042B5BC    push        47
 0042B5BE    call        user32.GetSystemMetrics
 0042B5C3    add         eax,8
 0042B5C6    add         dword ptr [ebx+34],eax;TNVCheckBox.?f34:dword
 0042B5C9    push        48
 0042B5CB    call        user32.GetSystemMetrics
 0042B5D0    cmp         eax,dword ptr [ebx+38];TNVCheckBox.?f38:Integer
>0042B5D3    jle         0042B5DF
 0042B5D5    push        47
 0042B5D7    call        user32.GetSystemMetrics
 0042B5DC    mov         dword ptr [ebx+38],eax;TNVCheckBox.?f38:Integer
 0042B5DF    push        42B630
 0042B5E4    mov         eax,dword ptr [ebx+48];TNVCheckBox...:WideString
 0042B5E7    push        eax
 0042B5E8    push        400B
 0042B5ED    push        1
 0042B5EF    mov         ecx,dword ptr [edi]
 0042B5F1    mov         edx,esi
 0042B5F3    mov         eax,ebx
 0042B5F5    call        0042A52C
 0042B5FA    cmp         byte ptr [ebx+4C],0;TNVCheckBox.?f4C:byte
>0042B5FE    je          0042B612
 0042B600    push        0
 0042B602    push        1
 0042B604    push        0F1
 0042B609    mov         eax,dword ptr [ebx+14];TNVCheckBox.?f14:dword
 0042B60C    push        eax
 0042B60D    call        user32.SendMessageA
 0042B612    mov         eax,dword ptr [ebp+8]
 0042B615    push        eax
 0042B616    mov         ecx,edi
 0042B618    mov         edx,esi
 0042B61A    mov         eax,ebx
 0042B61C    call        0042A2D4
 0042B621    pop         edi
 0042B622    pop         esi
 0042B623    pop         ebx
 0042B624    pop         ecx
 0042B625    pop         ecx
 0042B626    pop         ebp
 0042B627    ret         4
end;*}

//0042B640
{*procedure sub_0042B640(?:?; ?:?; ?:?);
begin
 0042B640    push        ebp
 0042B641    mov         ebp,esp
 0042B643    add         esp,0FFFFFFB8
 0042B646    push        ebx
 0042B647    push        esi
 0042B648    push        edi
 0042B649    xor         ebx,ebx
 0042B64B    mov         dword ptr [ebp-48],ebx
 0042B64E    mov         dword ptr [ebp-44],ebx
 0042B651    mov         dword ptr [ebp-40],ebx
 0042B654    mov         dword ptr [ebp-3C],ebx
 0042B657    mov         dword ptr [ebp-38],ebx
 0042B65A    mov         dword ptr [ebp-34],ebx
 0042B65D    mov         dword ptr [ebp-30],ebx
 0042B660    mov         dword ptr [ebp-2C],ebx
 0042B663    mov         esi,dword ptr [ebp+8]
 0042B666    lea         edi,[ebp-18]
 0042B669    movs        dword ptr [edi],dword ptr [esi]
 0042B66A    movs        dword ptr [edi],dword ptr [esi]
 0042B66B    movs        dword ptr [edi],dword ptr [esi]
 0042B66C    movs        dword ptr [edi],dword ptr [esi]
 0042B66D    mov         esi,ecx
 0042B66F    mov         ebx,edx
 0042B671    mov         dword ptr [ebp-4],eax
 0042B674    xor         eax,eax
 0042B676    push        ebp
 0042B677    push        42B805
 0042B67C    push        dword ptr fs:[eax]
 0042B67F    mov         dword ptr fs:[eax],esp
 0042B682    push        0F
 0042B684    call        user32.GetSysColor
 0042B689    push        eax
 0042B68A    xor         ecx,ecx
 0042B68C    lea         edx,[ebp-18]
 0042B68F    mov         eax,ebx
 0042B691    call        00429D70
 0042B696    push        esi
 0042B697    lea         esi,[ebp-18]
 0042B69A    lea         edi,[ebp-28]
 0042B69D    movs        dword ptr [edi],dword ptr [esi]
 0042B69E    movs        dword ptr [edi],dword ptr [esi]
 0042B69F    movs        dword ptr [edi],dword ptr [esi]
 0042B6A0    movs        dword ptr [edi],dword ptr [esi]
 0042B6A1    pop         esi
 0042B6A2    mov         eax,dword ptr [ebp-0C]
 0042B6A5    mov         dword ptr [ebp-10],eax
 0042B6A8    add         eax,4
 0042B6AB    mov         dword ptr [ebp-28],eax
 0042B6AE    sub         dword ptr [ebp-20],2
 0042B6B2    push        0F
 0042B6B4    call        user32.GetSysColor
 0042B6B9    mov         edx,0FFFFFF
 0042B6BE    sub         edx,eax
 0042B6C0    and         edx,0FEFEFE
 0042B6C6    shr         edx,1
 0042B6C8    mov         eax,0FFFFFF
 0042B6CD    sub         eax,edx
 0042B6CF    push        eax
 0042B6D0    xor         ecx,ecx
 0042B6D2    lea         edx,[ebp-18]
 0042B6D5    mov         eax,ebx
 0042B6D7    call        00429D70
 0042B6DC    test        esi,1
>0042B6E2    jne         0042B6EC
 0042B6E4    test        esi,4
>0042B6EA    je          0042B6F7
 0042B6EC    push        0F
 0042B6EE    call        user32.GetSysColor
 0042B6F3    mov         edi,eax
>0042B6F5    jmp         0042B700
 0042B6F7    push        5
 0042B6F9    call        user32.GetSysColor
 0042B6FE    mov         edi,eax
 0042B700    push        edi
 0042B701    mov         ecx,0FFFFFFFE
 0042B706    lea         edx,[ebp-18]
 0042B709    mov         eax,ebx
 0042B70B    call        00429D70
 0042B710    mov         eax,esi
 0042B712    and         eax,4
 0042B715    test        eax,eax
>0042B717    je          0042B724
 0042B719    push        10
 0042B71B    call        user32.GetSysColor
 0042B720    mov         edi,eax
>0042B722    jmp         0042B72D
 0042B724    push        8
 0042B726    call        user32.GetSysColor
 0042B72B    mov         edi,eax
 0042B72D    mov         eax,dword ptr [ebp-4]
 0042B730    cmp         byte ptr [eax+4C],0;TNVCheckBox.?f4C:byte
>0042B734    je          0042B77A
 0042B736    mov         eax,dword ptr [ebp-14]
 0042B739    mov         dword ptr [ebp-8],eax
 0042B73C    lea         eax,[ebp-48]
 0042B73F    call        0040D610
 0042B744    cmp         byte ptr [ebp-35],0A
>0042B748    jb          0042B74D
 0042B74A    dec         dword ptr [ebp-8]
 0042B74D    push        42B81C
 0042B752    push        42B828;'Marlett'
 0042B757    push        0D
 0042B759    push        0
 0042B75B    push        0
 0042B75D    push        edi
 0042B75E    mov         edx,dword ptr [ebp-10]
 0042B761    mov         eax,dword ptr [ebp-18]
 0042B764    sub         edx,eax
 0042B766    push        edx
 0042B767    mov         edx,dword ptr [ebp-0C]
 0042B76A    sub         edx,dword ptr [ebp-14]
 0042B76D    push        edx
 0042B76E    mov         ecx,dword ptr [ebp-8]
 0042B771    mov         edx,eax
 0042B773    mov         eax,ebx
 0042B775    call        00429F54
 0042B77A    mov         eax,esi
 0042B77C    and         eax,4
 0042B77F    test        eax,eax
>0042B781    je          0042B7B2
 0042B783    mov         eax,dword ptr [ebp-4]
 0042B786    mov         eax,dword ptr [eax+48];TNVCheckBox...:WideString
 0042B789    push        eax
 0042B78A    push        42B838;'Tahoma'
 0042B78F    push        0B
 0042B791    push        0
 0042B793    push        0
 0042B795    push        5
 0042B797    call        user32.GetSysColor
 0042B79C    push        eax
 0042B79D    push        0
 0042B79F    push        0
 0042B7A1    mov         ecx,dword ptr [ebp-24]
 0042B7A4    inc         ecx
 0042B7A5    mov         edx,dword ptr [ebp-28]
 0042B7A8    add         edx,2
 0042B7AB    mov         eax,ebx
 0042B7AD    call        00429F54
 0042B7B2    mov         eax,dword ptr [ebp-4]
 0042B7B5    mov         eax,dword ptr [eax+48];TNVCheckBox...:WideString
 0042B7B8    push        eax
 0042B7B9    push        42B838;'Tahoma'
 0042B7BE    push        0B
 0042B7C0    push        0
 0042B7C2    push        0
 0042B7C4    push        edi
 0042B7C5    push        0
 0042B7C7    push        0
 0042B7C9    mov         edx,dword ptr [ebp-28]
 0042B7CC    inc         edx
 0042B7CD    mov         ecx,dword ptr [ebp-24]
 0042B7D0    mov         eax,ebx
 0042B7D2    call        00429F54
 0042B7D7    test        esi,10
>0042B7DD    je          0042B7E9
 0042B7DF    lea         eax,[ebp-28]
 0042B7E2    push        eax
 0042B7E3    push        ebx
 0042B7E4    call        user32.DrawFocusRect
 0042B7E9    xor         eax,eax
 0042B7EB    pop         edx
 0042B7EC    pop         ecx
 0042B7ED    pop         ecx
 0042B7EE    mov         dword ptr fs:[eax],edx
 0042B7F1    push        42B80C
 0042B7F6    lea         eax,[ebp-48]
 0042B7F9    mov         edx,dword ptr ds:[40D4D4];TOS
 0042B7FF    call        @FinalizeRecord
 0042B804    ret
>0042B805    jmp         @HandleFinally
>0042B80A    jmp         0042B7F6
 0042B80C    pop         edi
 0042B80D    pop         esi
 0042B80E    pop         ebx
 0042B80F    mov         esp,ebp
 0042B811    pop         ebp
 0042B812    ret         4
end;*}

//0042B840
{*procedure sub_0042B840(?:?; ?:?);
begin
 0042B840    push        ebx
 0042B841    push        esi
 0042B842    mov         esi,edx
 0042B844    mov         ebx,eax
 0042B846    mov         eax,esi
 0042B848    mov         edx,dword ptr [ebx+48]
 0042B84B    call        @WStrAsg
 0042B850    pop         esi
 0042B851    pop         ebx
 0042B852    ret
end;*}

//0042B854
{*procedure sub_0042B854(?:?; ?:?);
begin
 0042B854    push        ebx
 0042B855    push        esi
 0042B856    mov         esi,edx
 0042B858    mov         ebx,eax
 0042B85A    lea         eax,[ebx+48]
 0042B85D    mov         edx,esi
 0042B85F    call        @WStrAsg
 0042B864    pop         esi
 0042B865    pop         ebx
 0042B866    ret
end;*}

//0042B868
{*function sub_0042B868(?:?):?;
begin
 0042B868    mov         al,byte ptr [eax+4C]
 0042B86B    ret
end;*}

//0042B86C
{*procedure sub_0042B86C(?:?; ?:?);
begin
 0042B86C    mov         byte ptr [eax+4C],dl
 0042B86F    mov         edx,dword ptr [eax+14]
 0042B872    test        edx,edx
>0042B874    je          0042B880
 0042B876    push        0FF
 0042B878    push        0
 0042B87A    push        edx
 0042B87B    call        user32.InvalidateRect
 0042B880    ret
end;*}

//0042B884
{*procedure sub_0042B884(?:?; ?:?);
begin
 0042B884    push        ebx
 0042B885    push        esi
 0042B886    push        edi
 0042B887    mov         edi,ecx
 0042B889    mov         esi,edx
 0042B88B    mov         ebx,eax
 0042B88D    mov         eax,esi
 0042B88F    mov         edx,42B924;'Width'
 0042B894    call        @WStrCmp
>0042B899    jne         0042B8A7
 0042B89B    mov         eax,edi
 0042B89D    call        00429AD4
 0042B8A2    mov         dword ptr [ebx+34],eax;TNVImage.?f34:dword
>0042B8A5    jmp         0042B91A
 0042B8A7    mov         eax,esi
 0042B8A9    mov         edx,42B934;'Height'
 0042B8AE    call        @WStrCmp
>0042B8B3    jne         0042B8C1
 0042B8B5    mov         eax,edi
 0042B8B7    call        00429AD4
 0042B8BC    mov         dword ptr [ebx+38],eax;TNVImage.?f38:Integer
>0042B8BF    jmp         0042B91A
 0042B8C1    mov         eax,esi
 0042B8C3    mov         edx,42B948;'File'
 0042B8C8    call        @WStrCmp
>0042B8CD    jne         0042B8DB
 0042B8CF    lea         eax,[ebx+48];TNVImage.?f48:WideString
 0042B8D2    mov         edx,edi
 0042B8D4    call        @WStrAsg
>0042B8D9    jmp         0042B91A
 0042B8DB    mov         eax,esi
 0042B8DD    mov         edx,42B958;'Clickable'
 0042B8E2    call        @WStrCmp
>0042B8E7    jne         0042B8F5
 0042B8E9    mov         eax,edi
 0042B8EB    call        00429A68
 0042B8F0    mov         byte ptr [ebx+50],al;TNVImage.?f50:byte
>0042B8F3    jmp         0042B91A
 0042B8F5    mov         eax,esi
 0042B8F7    mov         edx,42B970;'Border'
 0042B8FC    call        @WStrCmp
>0042B901    jne         0042B90F
 0042B903    mov         eax,edi
 0042B905    call        00429A68
 0042B90A    mov         byte ptr [ebx+51],al;TNVImage.?f51:byte
>0042B90D    jmp         0042B91A
 0042B90F    mov         ecx,edi
 0042B911    mov         edx,esi
 0042B913    mov         eax,ebx
 0042B915    call        0042A200
 0042B91A    pop         edi
 0042B91B    pop         esi
 0042B91C    pop         ebx
 0042B91D    ret
end;*}

//0042B980
{*procedure sub_0042B980(?:?; ?:?; ?:?);
begin
 0042B980    push        ebp
 0042B981    mov         ebp,esp
 0042B983    add         esp,0FFFFFFF0
 0042B986    push        ebx
 0042B987    push        esi
 0042B988    push        edi
 0042B989    xor         ebx,ebx
 0042B98B    mov         dword ptr [ebp-10],ebx
 0042B98E    mov         dword ptr [ebp-0C],ebx
 0042B991    mov         dword ptr [ebp-8],ecx
 0042B994    mov         dword ptr [ebp-4],edx
 0042B997    mov         ebx,eax
 0042B999    xor         eax,eax
 0042B99B    push        ebp
 0042B99C    push        42BB00
 0042B9A1    push        dword ptr fs:[eax]
 0042B9A4    mov         dword ptr fs:[eax],esp
 0042B9A7    xor         esi,esi
 0042B9A9    cmp         byte ptr [ebx+50],0;TNVImage.?f50:byte
>0042B9AD    je          0042B9B2
 0042B9AF    add         esi,6
 0042B9B2    cmp         byte ptr [ebx+51],0;TNVImage.?f51:byte
>0042B9B6    je          0042B9BB
 0042B9B8    add         esi,2
 0042B9BB    cmp         dword ptr [ebx+4C],0;TNVImage.?f4C:INVBitmap
>0042B9BF    jne         0042B9E3
 0042B9C1    mov         eax,dword ptr [ebx+48];TNVImage.?f48:WideString
 0042B9C4    xor         edx,edx
 0042B9C6    call        @WStrCmp
>0042B9CB    je          0042B9E3
 0042B9CD    lea         edx,[ebp-0C]
 0042B9D0    mov         eax,dword ptr [ebx+48];TNVImage.?f48:WideString
 0042B9D3    call        00428AF8
 0042B9D8    mov         edx,dword ptr [ebp-0C]
 0042B9DB    lea         eax,[ebx+4C];TNVImage.?f4C:INVBitmap
 0042B9DE    call        @IntfCopy
 0042B9E3    cmp         dword ptr [ebx+34],0;TNVImage.?f34:dword
>0042B9E7    jne         0042BA03
 0042B9E9    cmp         dword ptr [ebx+4C],0;TNVImage.?f4C:INVBitmap
>0042B9ED    je          0042B9FC
 0042B9EF    mov         eax,dword ptr [ebx+4C];TNVImage.?f4C:INVBitmap
 0042B9F2    mov         edx,dword ptr [eax]
 0042B9F4    call        dword ptr [edx+0C]
 0042B9F7    mov         dword ptr [ebx+34],eax;TNVImage.?f34:dword
>0042B9FA    jmp         0042BA03
 0042B9FC    mov         dword ptr [ebx+34],20;TNVImage.?f34:dword
 0042BA03    cmp         dword ptr [ebx+38],0;TNVImage.?f38:Integer
>0042BA07    jne         0042BA23
 0042BA09    cmp         dword ptr [ebx+4C],0;TNVImage.?f4C:INVBitmap
>0042BA0D    je          0042BA1C
 0042BA0F    mov         eax,dword ptr [ebx+4C];TNVImage.?f4C:INVBitmap
 0042BA12    mov         edx,dword ptr [eax]
 0042BA14    call        dword ptr [edx+10]
 0042BA17    mov         dword ptr [ebx+38],eax;TNVImage.?f38:Integer
>0042BA1A    jmp         0042BA23
 0042BA1C    mov         dword ptr [ebx+38],20;TNVImage.?f38:Integer
 0042BA23    mov         eax,dword ptr [ebx+0C];TNVImage.?fC:dword
 0042BA26    mov         eax,dword ptr [eax+30]
 0042BA29    sub         eax,2A
 0042BA2C    sub         eax,esi
 0042BA2E    cmp         eax,dword ptr [ebx+34];TNVImage.?f34:dword
>0042BA31    jge         0042BA36
 0042BA33    mov         dword ptr [ebx+34],eax;TNVImage.?f34:dword
 0042BA36    push        1
 0042BA38    call        user32.GetSystemMetrics
 0042BA3D    mov         ecx,3
 0042BA42    cdq
 0042BA43    idiv        eax,ecx
 0042BA45    cmp         eax,dword ptr [ebx+38];TNVImage.?f38:Integer
>0042BA48    jge         0042BA5C
 0042BA4A    push        1
 0042BA4C    call        user32.GetSystemMetrics
 0042BA51    mov         ecx,3
 0042BA56    cdq
 0042BA57    idiv        eax,ecx
 0042BA59    mov         dword ptr [ebx+38],eax;TNVImage.?f38:Integer
 0042BA5C    cmp         dword ptr [ebx+4C],0;TNVImage.?f4C:INVBitmap
>0042BA60    je          0042BAB5
 0042BA62    mov         eax,dword ptr [ebx+4C];TNVImage.?f4C:INVBitmap
 0042BA65    mov         edx,dword ptr [eax]
 0042BA67    call        dword ptr [edx+0C]
 0042BA6A    cmp         eax,dword ptr [ebx+34];TNVImage.?f34:dword
>0042BA6D    jne         0042BA7C
 0042BA6F    mov         eax,dword ptr [ebx+4C];TNVImage.?f4C:INVBitmap
 0042BA72    mov         edx,dword ptr [eax]
 0042BA74    call        dword ptr [edx+10]
 0042BA77    cmp         eax,dword ptr [ebx+38];TNVImage.?f38:Integer
>0042BA7A    je          0042BAB5
 0042BA7C    lea         eax,[ebp-10]
 0042BA7F    push        eax
 0042BA80    mov         ecx,dword ptr [ebx+38];TNVImage.?f38:Integer
 0042BA83    mov         edx,dword ptr [ebx+34];TNVImage.?f34:dword
 0042BA86    mov         eax,dword ptr [ebx+4C];TNVImage.?f4C:INVBitmap
 0042BA89    mov         edi,dword ptr [eax]
 0042BA8B    call        dword ptr [edi+28]
 0042BA8E    mov         edx,dword ptr [ebp-10]
 0042BA91    lea         eax,[ebx+4C];TNVImage.?f4C:INVBitmap
 0042BA94    call        @IntfCopy
 0042BA99    cmp         dword ptr [ebx+4C],0;TNVImage.?f4C:INVBitmap
>0042BA9D    je          0042BAB5
 0042BA9F    mov         eax,dword ptr [ebx+4C];TNVImage.?f4C:INVBitmap
 0042BAA2    mov         edx,dword ptr [eax]
 0042BAA4    call        dword ptr [edx+0C]
 0042BAA7    mov         dword ptr [ebx+34],eax;TNVImage.?f34:dword
 0042BAAA    mov         eax,dword ptr [ebx+4C];TNVImage.?f4C:INVBitmap
 0042BAAD    mov         edx,dword ptr [eax]
 0042BAAF    call        dword ptr [edx+10]
 0042BAB2    mov         dword ptr [ebx+38],eax;TNVImage.?f38:Integer
 0042BAB5    add         dword ptr [ebx+34],esi;TNVImage.?f34:dword
 0042BAB8    add         dword ptr [ebx+38],esi;TNVImage.?f38:Integer
 0042BABB    mov         eax,dword ptr [ebp-8]
 0042BABE    mov         eax,dword ptr [eax]
 0042BAC0    push        eax
 0042BAC1    mov         eax,dword ptr [ebp-4]
 0042BAC4    push        eax
 0042BAC5    lea         eax,[ebx+2C];TNVImage.?f2C:?
 0042BAC8    push        eax
 0042BAC9    call        user32.OffsetRect
 0042BACE    mov         eax,dword ptr [ebp+8]
 0042BAD1    push        eax
 0042BAD2    mov         ecx,dword ptr [ebp-8]
 0042BAD5    mov         edx,dword ptr [ebp-4]
 0042BAD8    mov         eax,ebx
 0042BADA    call        0042A2D4
 0042BADF    xor         eax,eax
 0042BAE1    pop         edx
 0042BAE2    pop         ecx
 0042BAE3    pop         ecx
 0042BAE4    mov         dword ptr fs:[eax],edx
 0042BAE7    push        42BB07
 0042BAEC    lea         eax,[ebp-10]
 0042BAEF    mov         edx,dword ptr ds:[426224];INVBitmap
 0042BAF5    mov         ecx,2
 0042BAFA    call        @FinalizeArray
 0042BAFF    ret
>0042BB00    jmp         @HandleFinally
>0042BB05    jmp         0042BAEC
 0042BB07    pop         edi
 0042BB08    pop         esi
 0042BB09    pop         ebx
 0042BB0A    mov         esp,ebp
 0042BB0C    pop         ebp
 0042BB0D    ret         4
end;*}

//0042BB10
{*procedure sub_0042BB10(?:?);
begin
 0042BB10    push        ebx
 0042BB11    push        esi
 0042BB12    push        edi
 0042BB13    add         esp,0FFFFFFF0
 0042BB16    mov         esi,edx
 0042BB18    mov         ebx,eax
 0042BB1A    push        esi
 0042BB1B    lea         esi,[ebx+2C];TNVImage.?f2C:?
 0042BB1E    lea         edi,[esp+4]
 0042BB22    movs        dword ptr [edi],dword ptr [esi]
 0042BB23    movs        dword ptr [edi],dword ptr [esi]
 0042BB24    movs        dword ptr [edi],dword ptr [esi]
 0042BB25    movs        dword ptr [edi],dword ptr [esi]
 0042BB26    pop         esi
 0042BB27    cmp         byte ptr [ebx+50],0;TNVImage.?f50:byte
>0042BB2B    je          0042BB6C
 0042BB2D    push        2
 0042BB2F    push        0
 0042BB31    push        0
 0042BB33    push        0F
 0042BB35    call        user32.GetSysColor
 0042BB3A    mov         edx,0FFFFFF
 0042BB3F    sub         edx,eax
 0042BB41    and         edx,0FEFEFE
 0042BB47    shr         edx,1
 0042BB49    mov         eax,0FFFFFF
 0042BB4E    sub         eax,edx
 0042BB50    push        eax
 0042BB51    xor         ecx,ecx
 0042BB53    lea         edx,[esp+10]
 0042BB57    mov         eax,esi
 0042BB59    call        00429F00
 0042BB5E    push        0FD
 0042BB60    push        0FD
 0042BB62    lea         eax,[esp+8]
 0042BB66    push        eax
 0042BB67    call        user32.InflateRect
 0042BB6C    cmp         dword ptr [ebx+4C],0;TNVImage.?f4C:INVBitmap
>0042BB70    je          0042BC1C
 0042BB76    cmp         byte ptr [ebx+51],0;TNVImage.?f51:byte
>0042BB7A    je          0042BBA5
 0042BB7C    push        1
 0042BB7E    push        0
 0042BB80    push        0
 0042BB82    push        8
 0042BB84    call        user32.GetSysColor
 0042BB89    push        eax
 0042BB8A    xor         ecx,ecx
 0042BB8C    lea         edx,[esp+10]
 0042BB90    mov         eax,esi
 0042BB92    call        00429F00
 0042BB97    push        0FF
 0042BB99    push        0FF
 0042BB9B    lea         eax,[esp+8]
 0042BB9F    push        eax
 0042BBA0    call        user32.InflateRect
 0042BBA5    mov         eax,dword ptr [esp+8]
 0042BBA9    dec         eax
 0042BBAA    push        eax
 0042BBAB    mov         eax,dword ptr [ebx+4C];TNVImage.?f4C:INVBitmap
 0042BBAE    mov         edx,dword ptr [eax]
 0042BBB0    call        dword ptr [edx+10]
 0042BBB3    add         eax,dword ptr [esp+8]
 0042BBB7    dec         eax
 0042BBB8    push        eax
 0042BBB9    push        0F
 0042BBBB    call        user32.GetSysColor
 0042BBC0    push        eax
 0042BBC1    mov         eax,dword ptr [ebx+4C];TNVImage.?f4C:INVBitmap
 0042BBC4    mov         edx,dword ptr [eax]
 0042BBC6    call        dword ptr [edx+0C]
 0042BBC9    mov         edx,eax
 0042BBCB    add         edx,dword ptr [esp+0C]
 0042BBCF    mov         ecx,dword ptr [esp+10]
 0042BBD3    mov         eax,esi
 0042BBD5    call        00429DB8
 0042BBDA    mov         eax,dword ptr [esp+8]
 0042BBDE    dec         eax
 0042BBDF    push        eax
 0042BBE0    mov         eax,dword ptr [esp+10]
 0042BBE4    dec         eax
 0042BBE5    push        eax
 0042BBE6    push        0F
 0042BBE8    call        user32.GetSysColor
 0042BBED    push        eax
 0042BBEE    mov         eax,dword ptr [ebx+4C];TNVImage.?f4C:INVBitmap
 0042BBF1    mov         edx,dword ptr [eax]
 0042BBF3    call        dword ptr [edx+10]
 0042BBF6    mov         ecx,eax
 0042BBF8    add         ecx,dword ptr [esp+10]
 0042BBFC    mov         edx,dword ptr [esp+0C]
 0042BC00    mov         eax,esi
 0042BC02    call        00429DB8
 0042BC07    mov         eax,dword ptr [esp+4]
 0042BC0B    push        eax
 0042BC0C    mov         ecx,dword ptr [esp+4]
 0042BC10    mov         edx,esi
 0042BC12    mov         eax,dword ptr [ebx+4C];TNVImage.?f4C:INVBitmap
 0042BC15    mov         ebx,dword ptr [eax]
 0042BC17    call        dword ptr [ebx+14]
>0042BC1A    jmp         0042BC31
 0042BC1C    push        0F
 0042BC1E    call        user32.GetSysColor
 0042BC23    push        eax
 0042BC24    xor         ecx,ecx
 0042BC26    lea         edx,[esp+4]
 0042BC2A    mov         eax,esi
 0042BC2C    call        00429D70
 0042BC31    add         esp,10
 0042BC34    pop         edi
 0042BC35    pop         esi
 0042BC36    pop         ebx
 0042BC37    ret
end;*}

//0042BC38
{*procedure sub_0042BC38(?:?; ?:?);
begin
 0042BC38    push        ebx
 0042BC39    push        esi
 0042BC3A    mov         esi,edx
 0042BC3C    mov         ebx,eax
 0042BC3E    mov         eax,esi
 0042BC40    mov         edx,dword ptr [ebx+48]
 0042BC43    call        @WStrAsg
 0042BC48    pop         esi
 0042BC49    pop         ebx
 0042BC4A    ret
end;*}

//0042BC4C
{*procedure sub_0042BC4C(?:?; ?:?);
begin
 0042BC4C    push        ebx
 0042BC4D    push        esi
 0042BC4E    mov         esi,edx
 0042BC50    mov         ebx,eax
 0042BC52    mov         eax,esi
 0042BC54    mov         edx,dword ptr [ebx+4C]
 0042BC57    call        @IntfCopy
 0042BC5C    pop         esi
 0042BC5D    pop         ebx
 0042BC5E    ret
end;*}

//0042BC60
{*function sub_0042BC60(?:?):?;
begin
 0042BC60    mov         al,byte ptr [eax+50]
 0042BC63    ret
end;*}

//0042BC64
{*function sub_0042BC64(?:?):?;
begin
 0042BC64    mov         al,byte ptr [eax+51]
 0042BC67    ret
end;*}

//0042BC68
{*function sub_0042BC68(?:?):?;
begin
 0042BC68    mov         edx,dword ptr [eax+34]
 0042BC6B    sub         edx,dword ptr [eax+2C]
 0042BC6E    mov         eax,edx
 0042BC70    ret
end;*}

//0042BC74
{*function sub_0042BC74(?:?):?;
begin
 0042BC74    mov         edx,dword ptr [eax+38]
 0042BC77    sub         edx,dword ptr [eax+30]
 0042BC7A    mov         eax,edx
 0042BC7C    ret
end;*}

//0042BC80
{*procedure sub_0042BC80(?:?; ?:?);
begin
 0042BC80    push        ebp
 0042BC81    mov         ebp,esp
 0042BC83    add         esp,0FFFFFFE8
 0042BC86    push        ebx
 0042BC87    push        esi
 0042BC88    push        edi
 0042BC89    xor         ecx,ecx
 0042BC8B    mov         dword ptr [ebp-18],ecx
 0042BC8E    mov         dword ptr [ebp-4],edx
 0042BC91    mov         ebx,eax
 0042BC93    mov         eax,dword ptr [ebp-4]
 0042BC96    call        @IntfAddRef
 0042BC9B    xor         eax,eax
 0042BC9D    push        ebp
 0042BC9E    push        42BD81
 0042BCA3    push        dword ptr fs:[eax]
 0042BCA6    mov         dword ptr fs:[eax],esp
 0042BCA9    cmp         dword ptr [ebx+2C],0
>0042BCAD    jle         0042BD58
 0042BCB3    cmp         dword ptr [ebp-4],0
>0042BCB7    je          0042BD38
 0042BCB9    lea         esi,[ebx+2C]
 0042BCBC    lea         edi,[ebp-14]
 0042BCBF    movs        dword ptr [edi],dword ptr [esi]
 0042BCC0    movs        dword ptr [edi],dword ptr [esi]
 0042BCC1    movs        dword ptr [edi],dword ptr [esi]
 0042BCC2    movs        dword ptr [edi],dword ptr [esi]
 0042BCC3    mov         eax,dword ptr [ebp-10]
 0042BCC6    neg         eax
 0042BCC8    push        eax
 0042BCC9    mov         eax,dword ptr [ebp-14]
 0042BCCC    neg         eax
 0042BCCE    push        eax
 0042BCCF    lea         eax,[ebp-14]
 0042BCD2    push        eax
 0042BCD3    call        user32.OffsetRect
 0042BCD8    xor         eax,eax
 0042BCDA    cmp         byte ptr [ebx+50],0
>0042BCDE    je          0042BCE3
 0042BCE0    add         eax,6
 0042BCE3    cmp         byte ptr [ebx+51],0
>0042BCE7    je          0042BCEC
 0042BCE9    add         eax,2
 0042BCEC    sub         dword ptr [ebp-0C],eax
 0042BCEF    sub         dword ptr [ebp-8],eax
 0042BCF2    mov         eax,dword ptr [ebp-4]
 0042BCF5    mov         edx,dword ptr [eax]
 0042BCF7    call        dword ptr [edx+0C]
 0042BCFA    cmp         eax,dword ptr [ebp-0C]
>0042BCFD    jg          0042BD0C
 0042BCFF    mov         eax,dword ptr [ebp-4]
 0042BD02    mov         edx,dword ptr [eax]
 0042BD04    call        dword ptr [edx+10]
 0042BD07    cmp         eax,dword ptr [ebp-8]
>0042BD0A    jle         0042BD2B
 0042BD0C    lea         eax,[ebp-18]
 0042BD0F    push        eax
 0042BD10    mov         ecx,dword ptr [ebp-8]
 0042BD13    mov         edx,dword ptr [ebp-0C]
 0042BD16    mov         eax,dword ptr [ebp-4]
 0042BD19    mov         esi,dword ptr [eax]
 0042BD1B    call        dword ptr [esi+28]
 0042BD1E    mov         edx,dword ptr [ebp-18]
 0042BD21    lea         eax,[ebx+4C]
 0042BD24    call        @IntfCopy
>0042BD29    jmp         0042BD40
 0042BD2B    lea         eax,[ebx+4C]
 0042BD2E    mov         edx,dword ptr [ebp-4]
 0042BD31    call        @IntfCopy
>0042BD36    jmp         0042BD40
 0042BD38    lea         eax,[ebx+4C]
 0042BD3B    call        @IntfClear
 0042BD40    mov         eax,dword ptr [ebx+0C]
 0042BD43    test        eax,eax
>0042BD45    je          0042BD63
 0042BD47    push        0
 0042BD49    lea         edx,[ebx+2C]
 0042BD4C    push        edx
 0042BD4D    mov         eax,dword ptr [eax+2C]
 0042BD50    push        eax
 0042BD51    call        user32.InvalidateRect
>0042BD56    jmp         0042BD63
 0042BD58    lea         eax,[ebx+4C]
 0042BD5B    mov         edx,dword ptr [ebp-4]
 0042BD5E    call        @IntfCopy
 0042BD63    xor         eax,eax
 0042BD65    pop         edx
 0042BD66    pop         ecx
 0042BD67    pop         ecx
 0042BD68    mov         dword ptr fs:[eax],edx
 0042BD6B    push        42BD88
 0042BD70    lea         eax,[ebp-18]
 0042BD73    call        @IntfClear
 0042BD78    lea         eax,[ebp-4]
 0042BD7B    call        @IntfClear
 0042BD80    ret
>0042BD81    jmp         @HandleFinally
>0042BD86    jmp         0042BD70
 0042BD88    pop         edi
 0042BD89    pop         esi
 0042BD8A    pop         ebx
 0042BD8B    mov         esp,ebp
 0042BD8D    pop         ebp
 0042BD8E    ret
end;*}

//0042BD90
{*procedure sub_0042BD90(?:TNVItem; ?:IInterface; ?:?);
begin
 0042BD90    push        ebp
 0042BD91    mov         ebp,esp
 0042BD93    push        ecx
 0042BD94    push        ebx
 0042BD95    push        esi
 0042BD96    push        edi
 0042BD97    mov         esi,edx
 0042BD99    mov         dword ptr [ebp-4],eax
 0042BD9C    mov         eax,dword ptr [ebp-4]
 0042BD9F    call        @IntfAddRef
 0042BDA4    mov         edi,dword ptr [ebp+8]
 0042BDA7    add         edi,0FFFFFFFC
 0042BDAA    xor         eax,eax
 0042BDAC    push        ebp
 0042BDAD    push        42BE89
 0042BDB2    push        dword ptr fs:[eax]
 0042BDB5    mov         dword ptr fs:[eax],esp
 0042BDB8    mov         eax,dword ptr [edi]
 0042BDBA    mov         eax,dword ptr [eax+24]
 0042BDBD    call        @LStrLen
 0042BDC2    mov         ebx,eax
 0042BDC4    lea         eax,[ebx+1]
 0042BDC7    push        eax
 0042BDC8    mov         eax,dword ptr [edi]
 0042BDCA    add         eax,24
 0042BDCD    mov         ecx,1
 0042BDD2    mov         edx,dword ptr ds:[429670];_DynArr_15_01
 0042BDD8    call        @DynArraySetLength
 0042BDDD    add         esp,4
 0042BDE0    mov         eax,dword ptr [edi]
 0042BDE2    mov         eax,dword ptr [eax+24]
 0042BDE5    lea         eax,[eax+ebx*4]
 0042BDE8    mov         edx,dword ptr [ebp-4]
 0042BDEB    call        @IntfCopy
 0042BDF0    test        ebx,ebx
>0042BDF2    jle         0042BE5E
 0042BDF4    mov         eax,dword ptr [edi]
 0042BDF6    mov         eax,dword ptr [eax+24]
 0042BDF9    mov         eax,dword ptr [eax+ebx*4]
 0042BDFC    mov         edx,dword ptr [eax]
 0042BDFE    call        dword ptr [edx+28]
 0042BE01    add         eax,24
 0042BE04    mov         edx,dword ptr [edi]
 0042BE06    mov         edx,dword ptr [edx+24]
 0042BE09    mov         edx,dword ptr [edx]
 0042BE0B    call        @IntfCopy
 0042BE10    mov         eax,dword ptr [edi]
 0042BE12    mov         eax,dword ptr [eax+24]
 0042BE15    mov         eax,dword ptr [eax]
 0042BE17    mov         edx,dword ptr [eax]
 0042BE19    call        dword ptr [edx+28]
 0042BE1C    add         eax,20
 0042BE1F    mov         edx,dword ptr [ebp-4]
 0042BE22    call        @IntfCopy
 0042BE27    mov         eax,dword ptr [edi]
 0042BE29    mov         eax,dword ptr [eax+24]
 0042BE2C    mov         eax,dword ptr [eax+ebx*4]
 0042BE2F    mov         edx,dword ptr [eax]
 0042BE31    call        dword ptr [edx+28]
 0042BE34    add         eax,20
 0042BE37    mov         edx,dword ptr [edi]
 0042BE39    mov         edx,dword ptr [edx+24]
 0042BE3C    mov         edx,dword ptr [edx+ebx*4-4]
 0042BE40    call        @IntfCopy
 0042BE45    mov         eax,dword ptr [edi]
 0042BE47    mov         eax,dword ptr [eax+24]
 0042BE4A    mov         eax,dword ptr [eax+ebx*4-4]
 0042BE4E    mov         edx,dword ptr [eax]
 0042BE50    call        dword ptr [edx+28]
 0042BE53    add         eax,24
 0042BE56    mov         edx,dword ptr [ebp-4]
 0042BE59    call        @IntfCopy
 0042BE5E    mov         eax,dword ptr [ebp-4]
 0042BE61    mov         edx,dword ptr [eax]
 0042BE63    call        dword ptr [edx+28]
 0042BE66    mov         dword ptr [eax+28],ebx
 0042BE69    mov         eax,esi
 0042BE6B    mov         edx,dword ptr [ebp-4]
 0042BE6E    call        @IntfCopy
 0042BE73    xor         eax,eax
 0042BE75    pop         edx
 0042BE76    pop         ecx
 0042BE77    pop         ecx
 0042BE78    mov         dword ptr fs:[eax],edx
 0042BE7B    push        42BE90
 0042BE80    lea         eax,[ebp-4]
 0042BE83    call        @IntfClear
 0042BE88    ret
>0042BE89    jmp         @HandleFinally
>0042BE8E    jmp         0042BE80
 0042BE90    pop         edi
 0042BE91    pop         esi
 0042BE92    pop         ebx
 0042BE93    pop         ecx
 0042BE94    pop         ebp
 0042BE95    ret
end;*}

//0042BE98
{*procedure sub_0042BE98(?:?; ?:?; ?:WideString; ?:?);
begin
 0042BE98    push        ebp
 0042BE99    mov         ebp,esp
 0042BE9B    push        0
 0042BE9D    push        0
 0042BE9F    push        0
 0042BEA1    push        ebx
 0042BEA2    push        esi
 0042BEA3    mov         dword ptr [ebp-4],ecx
 0042BEA6    mov         esi,edx
 0042BEA8    mov         ebx,eax
 0042BEAA    xor         eax,eax
 0042BEAC    push        ebp
 0042BEAD    push        42C07C
 0042BEB2    push        dword ptr fs:[eax]
 0042BEB5    mov         dword ptr fs:[eax],esp
 0042BEB8    test        ebx,ebx
>0042BEBA    jne         0042C051
 0042BEC0    mov         eax,esi
 0042BEC2    mov         edx,42C090;'MinWidth'
 0042BEC7    call        @WStrCmp
>0042BECC    jne         0042BEEA
 0042BECE    mov         eax,dword ptr [ebp-4]
 0042BED1    call        00429AD4
 0042BED6    mov         edx,dword ptr [ebp+8]
 0042BED9    mov         edx,dword ptr [edx+8]
 0042BEDC    mov         edx,dword ptr [edx+8]
 0042BEDF    mov         edx,dword ptr [edx-4]
 0042BEE2    mov         dword ptr [edx+3C],eax
>0042BEE5    jmp         0042C061
 0042BEEA    mov         eax,esi
 0042BEEC    mov         edx,42C0A8;'Message'
 0042BEF1    call        @WStrCmp
>0042BEF6    jne         0042BF14
 0042BEF8    mov         eax,dword ptr [ebp+8]
 0042BEFB    mov         eax,dword ptr [eax+8]
 0042BEFE    mov         eax,dword ptr [eax+8]
 0042BF01    mov         eax,dword ptr [eax-4]
 0042BF04    add         eax,18
 0042BF07    mov         edx,dword ptr [ebp-4]
 0042BF0A    call        @WStrAsg
>0042BF0F    jmp         0042C061
 0042BF14    mov         eax,esi
 0042BF16    mov         edx,42C0BC;'ActiveControl'
 0042BF1B    call        @WStrCmp
>0042BF20    jne         0042BF3E
 0042BF22    mov         eax,dword ptr [ebp+8]
 0042BF25    mov         eax,dword ptr [eax+8]
 0042BF28    mov         eax,dword ptr [eax+8]
 0042BF2B    mov         eax,dword ptr [eax-4]
 0042BF2E    add         eax,44
 0042BF31    mov         edx,dword ptr [ebp-4]
 0042BF34    call        @WStrAsg
>0042BF39    jmp         0042C061
 0042BF3E    mov         eax,esi
 0042BF40    mov         edx,42C0DC;'Timer'
 0042BF45    call        @WStrCmp
>0042BF4A    jne         0042BF68
 0042BF4C    mov         eax,dword ptr [ebp-4]
 0042BF4F    call        00429AD4
 0042BF54    mov         edx,dword ptr [ebp+8]
 0042BF57    mov         edx,dword ptr [edx+8]
 0042BF5A    mov         edx,dword ptr [edx+8]
 0042BF5D    mov         edx,dword ptr [edx-4]
 0042BF60    mov         dword ptr [edx+48],eax
>0042BF63    jmp         0042C061
 0042BF68    mov         eax,esi
 0042BF6A    mov         edx,42C0EC;'OnAction'
 0042BF6F    call        @WStrCmp
>0042BF74    jne         0042C061
 0042BF7A    mov         ebx,dword ptr ds:[55B210];^gvar_0053D140
 0042BF80    mov         ebx,dword ptr [ebx]
 0042BF82    mov         edx,42C104
 0042BF87    mov         eax,dword ptr [ebp-4]
 0042BF8A    call        ebx
 0042BF8C    test        al,al
>0042BF8E    je          0042BFA9
 0042BF90    mov         eax,[0053FDF8];0x0 gvar_0053FDF8
 0042BF95    mov         edx,dword ptr [ebp+8]
 0042BF98    mov         edx,dword ptr [edx+8]
 0042BF9B    mov         edx,dword ptr [edx+8]
 0042BF9E    mov         edx,dword ptr [edx-4]
 0042BFA1    mov         dword ptr [edx+28],eax
>0042BFA4    jmp         0042C061
 0042BFA9    mov         ebx,dword ptr ds:[55B210];^gvar_0053D140
 0042BFAF    mov         ebx,dword ptr [ebx]
 0042BFB1    mov         edx,42C140
 0042BFB6    mov         eax,dword ptr [ebp-4]
 0042BFB9    call        ebx
 0042BFBB    test        al,al
>0042BFBD    je          0042BFD8
 0042BFBF    mov         eax,[0053FDFC];0x0 gvar_0053FDFC
 0042BFC4    mov         edx,dword ptr [ebp+8]
 0042BFC7    mov         edx,dword ptr [edx+8]
 0042BFCA    mov         edx,dword ptr [edx+8]
 0042BFCD    mov         edx,dword ptr [edx-4]
 0042BFD0    mov         dword ptr [edx+28],eax
>0042BFD3    jmp         0042C061
 0042BFD8    lea         eax,[ebp-0C]
 0042BFDB    push        eax
 0042BFDC    mov         ebx,dword ptr ds:[55B67C];^gvar_0053D170
 0042BFE2    mov         ebx,dword ptr [ebx]
 0042BFE4    mov         cl,2E
 0042BFE6    mov         edx,2
 0042BFEB    mov         eax,dword ptr [ebp-4]
 0042BFEE    call        ebx
 0042BFF0    mov         eax,dword ptr [ebp-0C]
 0042BFF3    xor         edx,edx
 0042BFF5    call        @WStrCmp
>0042BFFA    jne         0042C011
 0042BFFC    lea         eax,[ebp-8]
 0042BFFF    call        @WStrClr
 0042C004    lea         eax,[ebp-0C]
 0042C007    mov         edx,dword ptr [ebp-4]
 0042C00A    call        00404F28
>0042C00F    jmp         0042C029
 0042C011    lea         eax,[ebp-8]
 0042C014    push        eax
 0042C015    mov         ebx,dword ptr ds:[55B67C];^gvar_0053D170
 0042C01B    mov         ebx,dword ptr [ebx]
 0042C01D    mov         cl,2E
 0042C01F    mov         edx,1
 0042C024    mov         eax,dword ptr [ebp-4]
 0042C027    call        ebx
 0042C029    mov         eax,dword ptr [ebp-0C]
 0042C02C    push        eax
 0042C02D    push        1
 0042C02F    xor         eax,eax
 0042C031    call        004218CC
 0042C036    mov         ecx,dword ptr [ebp-8]
 0042C039    mov         dl,1
 0042C03B    call        004211F8
 0042C040    mov         edx,dword ptr [ebp+8]
 0042C043    mov         edx,dword ptr [edx+8]
 0042C046    mov         edx,dword ptr [edx+8]
 0042C049    mov         edx,dword ptr [edx-4]
 0042C04C    mov         dword ptr [edx+28],eax
>0042C04F    jmp         0042C061
 0042C051    mov         eax,ebx
 0042C053    mov         edx,dword ptr [eax]
 0042C055    call        dword ptr [edx+28]
 0042C058    mov         ecx,dword ptr [ebp-4]
 0042C05B    mov         edx,esi
 0042C05D    mov         ebx,dword ptr [eax]
 0042C05F    call        dword ptr [ebx]
 0042C061    xor         eax,eax
 0042C063    pop         edx
 0042C064    pop         ecx
 0042C065    pop         ecx
 0042C066    mov         dword ptr fs:[eax],edx
 0042C069    push        42C083
 0042C06E    lea         eax,[ebp-0C]
 0042C071    mov         edx,2
 0042C076    call        @WStrArrayClr
 0042C07B    ret
>0042C07C    jmp         @HandleFinally
>0042C081    jmp         0042C06E
 0042C083    pop         esi
 0042C084    pop         ebx
 0042C085    mov         esp,ebp
 0042C087    pop         ebp
 0042C088    ret
end;*}

//0042C180
{*function sub_0042C180(?:IInterface; ?:?; ?:?):?;
begin
 0042C180    push        ebp
 0042C181    mov         ebp,esp
 0042C183    mov         ecx,7
 0042C188    push        0
 0042C18A    push        0
 0042C18C    dec         ecx
>0042C18D    jne         0042C188
 0042C18F    push        ebx
 0042C190    push        esi
 0042C191    push        edi
 0042C192    mov         esi,edx
 0042C194    mov         edi,eax
 0042C196    xor         eax,eax
 0042C198    push        ebp
 0042C199    push        42C5CF
 0042C19E    push        dword ptr fs:[eax]
 0042C1A1    mov         dword ptr fs:[eax],esp
 0042C1A4    mov         bl,1
 0042C1A6    mov         eax,dword ptr [ebp+8]
 0042C1A9    mov         eax,dword ptr [eax+8]
 0042C1AC    mov         eax,dword ptr [eax+14]
 0042C1AF    call        @LStrToPChar
 0042C1B4    mov         edx,eax
 0042C1B6    add         edx,dword ptr [esi]
 0042C1B8    mov         eax,dword ptr [esi]
 0042C1BA    mov         ecx,dword ptr [ebp+8]
 0042C1BD    mov         ecx,dword ptr [ecx+8]
 0042C1C0    mov         ecx,dword ptr [ecx+14]
 0042C1C3    movzx       ecx,byte ptr [ecx+eax-1]
 0042C1C8    lea         eax,[ebp-4]
 0042C1CB    call        @LStrFromPCharLen
 0042C1D0    lea         edx,[ebp-0C]
 0042C1D3    mov         eax,dword ptr [ebp-4]
 0042C1D6    call        0040BC40
 0042C1DB    mov         eax,dword ptr [esi]
 0042C1DD    mov         edx,dword ptr [ebp+8]
 0042C1E0    mov         edx,dword ptr [edx+8]
 0042C1E3    mov         edx,dword ptr [edx+14]
 0042C1E6    movzx       eax,byte ptr [edx+eax-1]
 0042C1EB    add         eax,2
 0042C1EE    add         dword ptr [esi],eax
 0042C1F0    mov         eax,dword ptr [esi]
 0042C1F2    mov         edx,dword ptr [ebp+8]
 0042C1F5    mov         edx,dword ptr [edx+8]
 0042C1F8    mov         edx,dword ptr [edx+14]
 0042C1FB    movzx       eax,byte ptr [edx+eax-2]
 0042C200    cmp         eax,14
>0042C203    ja          0042C547
 0042C209    jmp         dword ptr [eax*4+42C210]
 0042C209    dd          0042C547
 0042C209    dd          0042C547
 0042C209    dd          0042C264
 0042C209    dd          0042C29E
 0042C209    dd          0042C2D9
 0042C209    dd          0042C547
 0042C209    dd          0042C313
 0042C209    dd          0042C374
 0042C209    dd          0042C3D0
 0042C209    dd          0042C3D0
 0042C209    dd          0042C547
 0042C209    dd          0042C547
 0042C209    dd          0042C40C
 0042C209    dd          0042C547
 0042C209    dd          0042C547
 0042C209    dd          0042C547
 0042C209    dd          0042C547
 0042C209    dd          0042C547
 0042C209    dd          0042C46F
 0042C209    dd          0042C547
 0042C209    dd          0042C4E7
 0042C264    push        ebp
 0042C265    lea         eax,[ebp-14]
 0042C268    push        eax
 0042C269    mov         eax,dword ptr [esi]
 0042C26B    mov         edx,dword ptr [ebp+8]
 0042C26E    mov         edx,dword ptr [edx+8]
 0042C271    mov         edx,dword ptr [edx+14]
 0042C274    lea         eax,[edx+eax-1]
 0042C278    movsx       eax,byte ptr [eax]
 0042C27B    mov         cx,30
 0042C27F    mov         edx,1
 0042C284    call        0040AB1C
 0042C289    mov         ecx,dword ptr [ebp-14]
 0042C28C    mov         edx,dword ptr [ebp-0C]
 0042C28F    mov         eax,edi
 0042C291    call        0042BE98
 0042C296    pop         ecx
 0042C297    inc         dword ptr [esi]
>0042C299    jmp         0042C59A
 0042C29E    push        ebp
 0042C29F    lea         eax,[ebp-18]
 0042C2A2    push        eax
 0042C2A3    mov         eax,dword ptr [esi]
 0042C2A5    mov         edx,dword ptr [ebp+8]
 0042C2A8    mov         edx,dword ptr [edx+8]
 0042C2AB    mov         edx,dword ptr [edx+14]
 0042C2AE    lea         eax,[edx+eax-1]
 0042C2B2    movsx       eax,word ptr [eax]
 0042C2B5    mov         cx,30
 0042C2B9    mov         edx,1
 0042C2BE    call        0040AB1C
 0042C2C3    mov         ecx,dword ptr [ebp-18]
 0042C2C6    mov         edx,dword ptr [ebp-0C]
 0042C2C9    mov         eax,edi
 0042C2CB    call        0042BE98
 0042C2D0    pop         ecx
 0042C2D1    add         dword ptr [esi],2
>0042C2D4    jmp         0042C59A
 0042C2D9    push        ebp
 0042C2DA    lea         eax,[ebp-1C]
 0042C2DD    push        eax
 0042C2DE    mov         eax,dword ptr [esi]
 0042C2E0    mov         edx,dword ptr [ebp+8]
 0042C2E3    mov         edx,dword ptr [edx+8]
 0042C2E6    mov         edx,dword ptr [edx+14]
 0042C2E9    lea         eax,[edx+eax-1]
 0042C2ED    mov         eax,dword ptr [eax]
 0042C2EF    mov         cx,30
 0042C2F3    mov         edx,1
 0042C2F8    call        0040AB1C
 0042C2FD    mov         ecx,dword ptr [ebp-1C]
 0042C300    mov         edx,dword ptr [ebp-0C]
 0042C303    mov         eax,edi
 0042C305    call        0042BE98
 0042C30A    pop         ecx
 0042C30B    add         dword ptr [esi],4
>0042C30E    jmp         0042C59A
 0042C313    mov         eax,dword ptr [ebp+8]
 0042C316    mov         eax,dword ptr [eax+8]
 0042C319    mov         eax,dword ptr [eax+14]
 0042C31C    call        @LStrToPChar
 0042C321    mov         edx,eax
 0042C323    add         edx,dword ptr [esi]
 0042C325    mov         eax,dword ptr [esi]
 0042C327    mov         ecx,dword ptr [ebp+8]
 0042C32A    mov         ecx,dword ptr [ecx+8]
 0042C32D    mov         ecx,dword ptr [ecx+14]
 0042C330    lea         eax,[ecx+eax-1]
 0042C334    xor         ecx,ecx
 0042C336    mov         cl,byte ptr [eax]
 0042C338    lea         eax,[ebp-8]
 0042C33B    call        @LStrFromPCharLen
 0042C340    push        ebp
 0042C341    lea         eax,[ebp-20]
 0042C344    mov         edx,dword ptr [ebp-8]
 0042C347    call        @WStrFromLStr
 0042C34C    mov         ecx,dword ptr [ebp-20]
 0042C34F    mov         edx,dword ptr [ebp-0C]
 0042C352    mov         eax,edi
 0042C354    call        0042BE98
 0042C359    pop         ecx
 0042C35A    mov         eax,dword ptr [esi]
 0042C35C    mov         edx,dword ptr [ebp+8]
 0042C35F    mov         edx,dword ptr [edx+8]
 0042C362    mov         edx,dword ptr [edx+14]
 0042C365    lea         eax,[edx+eax-1]
 0042C369    movzx       eax,byte ptr [eax]
 0042C36C    inc         eax
 0042C36D    add         dword ptr [esi],eax
>0042C36F    jmp         0042C59A
 0042C374    mov         eax,dword ptr [ebp+8]
 0042C377    mov         eax,dword ptr [eax+8]
 0042C37A    mov         eax,dword ptr [eax+14]
 0042C37D    call        @LStrToPChar
 0042C382    mov         edx,eax
 0042C384    add         edx,dword ptr [esi]
 0042C386    mov         eax,dword ptr [esi]
 0042C388    mov         ecx,dword ptr [ebp+8]
 0042C38B    mov         ecx,dword ptr [ecx+8]
 0042C38E    mov         ecx,dword ptr [ecx+14]
 0042C391    movzx       ecx,byte ptr [ecx+eax-1]
 0042C396    lea         eax,[ebp-8]
 0042C399    call        @LStrFromPCharLen
 0042C39E    push        ebp
 0042C39F    lea         edx,[ebp-24]
 0042C3A2    mov         eax,dword ptr [ebp-8]
 0042C3A5    call        0040BC40
 0042C3AA    mov         ecx,dword ptr [ebp-24]
 0042C3AD    mov         edx,dword ptr [ebp-0C]
 0042C3B0    mov         eax,edi
 0042C3B2    call        0042BE98
 0042C3B7    pop         ecx
 0042C3B8    mov         eax,dword ptr [esi]
 0042C3BA    mov         edx,dword ptr [ebp+8]
 0042C3BD    mov         edx,dword ptr [edx+8]
 0042C3C0    mov         edx,dword ptr [edx+14]
 0042C3C3    movzx       eax,byte ptr [edx+eax-1]
 0042C3C8    inc         eax
 0042C3C9    add         dword ptr [esi],eax
>0042C3CB    jmp         0042C59A
 0042C3D0    push        ebp
 0042C3D1    lea         eax,[ebp-28]
 0042C3D4    push        eax
 0042C3D5    mov         eax,dword ptr [esi]
 0042C3D7    mov         edx,dword ptr [ebp+8]
 0042C3DA    mov         edx,dword ptr [edx+8]
 0042C3DD    mov         edx,dword ptr [edx+14]
 0042C3E0    cmp         byte ptr [edx+eax-2],9
 0042C3E5    sete        al
 0042C3E8    and         eax,7F
 0042C3EB    mov         cx,30
 0042C3EF    mov         edx,1
 0042C3F4    call        0040AB1C
 0042C3F9    mov         ecx,dword ptr [ebp-28]
 0042C3FC    mov         edx,dword ptr [ebp-0C]
 0042C3FF    mov         eax,edi
 0042C401    call        0042BE98
 0042C406    pop         ecx
>0042C407    jmp         0042C59A
 0042C40C    mov         eax,dword ptr [ebp+8]
 0042C40F    mov         eax,dword ptr [eax+8]
 0042C412    mov         eax,dword ptr [eax+14]
 0042C415    call        @LStrToPChar
 0042C41A    mov         edx,eax
 0042C41C    add         edx,dword ptr [esi]
 0042C41E    add         edx,3
 0042C421    mov         eax,dword ptr [esi]
 0042C423    mov         ecx,dword ptr [ebp+8]
 0042C426    mov         ecx,dword ptr [ecx+8]
 0042C429    mov         ecx,dword ptr [ecx+14]
 0042C42C    lea         eax,[ecx+eax-1]
 0042C430    mov         ecx,dword ptr [eax]
 0042C432    lea         eax,[ebp-8]
 0042C435    call        @LStrFromPCharLen
 0042C43A    push        ebp
 0042C43B    lea         eax,[ebp-2C]
 0042C43E    mov         edx,dword ptr [ebp-8]
 0042C441    call        @WStrFromLStr
 0042C446    mov         ecx,dword ptr [ebp-2C]
 0042C449    mov         edx,dword ptr [ebp-0C]
 0042C44C    mov         eax,edi
 0042C44E    call        0042BE98
 0042C453    pop         ecx
 0042C454    mov         eax,dword ptr [esi]
 0042C456    mov         edx,dword ptr [ebp+8]
 0042C459    mov         edx,dword ptr [edx+8]
 0042C45C    mov         edx,dword ptr [edx+14]
 0042C45F    lea         eax,[edx+eax-1]
 0042C463    mov         eax,dword ptr [eax]
 0042C465    add         eax,4
 0042C468    add         dword ptr [esi],eax
>0042C46A    jmp         0042C59A
 0042C46F    mov         eax,dword ptr [esi]
 0042C471    mov         edx,dword ptr [ebp+8]
 0042C474    mov         edx,dword ptr [edx+8]
 0042C477    mov         edx,dword ptr [edx+14]
 0042C47A    lea         eax,[edx+eax-1]
 0042C47E    mov         edx,dword ptr [eax]
 0042C480    lea         eax,[ebp-10]
 0042C483    call        @WStrSetLength
 0042C488    mov         eax,dword ptr [ebp-10]
 0042C48B    xor         edx,edx
 0042C48D    call        @WStrCmp
>0042C492    je          0042C4C4
 0042C494    mov         eax,dword ptr [ebp+8]
 0042C497    mov         eax,dword ptr [eax+8]
 0042C49A    mov         eax,dword ptr [eax+14]
 0042C49D    call        @LStrToPChar
 0042C4A2    add         eax,dword ptr [esi]
 0042C4A4    add         eax,3
 0042C4A7    push        eax
 0042C4A8    mov         eax,dword ptr [ebp-10]
 0042C4AB    call        @WStrLen
 0042C4B0    add         eax,eax
 0042C4B2    push        eax
 0042C4B3    mov         eax,dword ptr [ebp-10]
 0042C4B6    call        @WStrToPWChar
 0042C4BB    mov         edx,eax
 0042C4BD    pop         ecx
 0042C4BE    pop         eax
 0042C4BF    call        Move
 0042C4C4    push        ebp
 0042C4C5    mov         ecx,dword ptr [ebp-10]
 0042C4C8    mov         edx,dword ptr [ebp-0C]
 0042C4CB    mov         eax,edi
 0042C4CD    call        0042BE98
 0042C4D2    pop         ecx
 0042C4D3    mov         eax,dword ptr [ebp-10]
 0042C4D6    call        @WStrLen
 0042C4DB    add         eax,eax
 0042C4DD    add         eax,4
 0042C4E0    add         dword ptr [esi],eax
>0042C4E2    jmp         0042C59A
 0042C4E7    mov         eax,dword ptr [ebp+8]
 0042C4EA    mov         eax,dword ptr [eax+8]
 0042C4ED    mov         eax,dword ptr [eax+14]
 0042C4F0    call        @LStrToPChar
 0042C4F5    mov         edx,eax
 0042C4F7    add         edx,dword ptr [esi]
 0042C4F9    add         edx,3
 0042C4FC    mov         eax,dword ptr [esi]
 0042C4FE    mov         ecx,dword ptr [ebp+8]
 0042C501    mov         ecx,dword ptr [ecx+8]
 0042C504    mov         ecx,dword ptr [ecx+14]
 0042C507    lea         eax,[ecx+eax-1]
 0042C50B    mov         ecx,dword ptr [eax]
 0042C50D    lea         eax,[ebp-8]
 0042C510    call        @LStrFromPCharLen
 0042C515    push        ebp
 0042C516    lea         edx,[ebp-30]
 0042C519    mov         eax,dword ptr [ebp-8]
 0042C51C    call        0040BC40
 0042C521    mov         ecx,dword ptr [ebp-30]
 0042C524    mov         edx,dword ptr [ebp-0C]
 0042C527    mov         eax,edi
 0042C529    call        0042BE98
 0042C52E    pop         ecx
 0042C52F    mov         eax,dword ptr [esi]
 0042C531    mov         edx,dword ptr [ebp+8]
 0042C534    mov         edx,dword ptr [edx+8]
 0042C537    mov         edx,dword ptr [edx+14]
 0042C53A    lea         eax,[edx+eax-1]
 0042C53E    mov         eax,dword ptr [eax]
 0042C540    add         eax,4
 0042C543    add         dword ptr [esi],eax
>0042C545    jmp         0042C59A
 0042C547    push        0
 0042C549    push        42C5E0
 0042C54E    push        42C5F4;'Internal error: Invalid assistant resource ('
 0042C553    lea         eax,[ebp-38]
 0042C556    push        eax
 0042C557    mov         eax,dword ptr [esi]
 0042C559    mov         edx,dword ptr [ebp+8]
 0042C55C    mov         edx,dword ptr [edx+8]
 0042C55F    mov         edx,dword ptr [edx+14]
 0042C562    movzx       eax,byte ptr [edx+eax-2]
 0042C567    mov         cl,30
 0042C569    mov         edx,1
 0042C56E    call        0040AA68
 0042C573    push        dword ptr [ebp-38]
 0042C576    push        42C62C;').'
 0042C57B    lea         eax,[ebp-34]
 0042C57E    mov         edx,3
 0042C583    call        @LStrCatN
 0042C588    mov         eax,dword ptr [ebp-34]
 0042C58B    call        @LStrToPChar
 0042C590    push        eax
 0042C591    push        0
 0042C593    call        user32.MessageBoxA
 0042C598    xor         ebx,ebx
 0042C59A    xor         eax,eax
 0042C59C    pop         edx
 0042C59D    pop         ecx
 0042C59E    pop         ecx
 0042C59F    mov         dword ptr fs:[eax],edx
 0042C5A2    push        42C5D6
 0042C5A7    lea         eax,[ebp-38]
 0042C5AA    mov         edx,2
 0042C5AF    call        @LStrArrayClr
 0042C5B4    lea         eax,[ebp-30]
 0042C5B7    mov         edx,0A
 0042C5BC    call        @WStrArrayClr
 0042C5C1    lea         eax,[ebp-8]
 0042C5C4    mov         edx,2
 0042C5C9    call        @LStrArrayClr
 0042C5CE    ret
>0042C5CF    jmp         @HandleFinally
>0042C5D4    jmp         0042C5A7
 0042C5D6    mov         eax,ebx
 0042C5D8    pop         edi
 0042C5D9    pop         esi
 0042C5DA    pop         ebx
 0042C5DB    mov         esp,ebp
 0042C5DD    pop         ebp
 0042C5DE    ret
end;*}

//0042C630
{*function sub_0042C630(?:?; ?:?):?;
begin
 0042C630    push        ebp
 0042C631    mov         ebp,esp
 0042C633    mov         ecx,26
 0042C638    push        0
 0042C63A    push        0
 0042C63C    dec         ecx
>0042C63D    jne         0042C638
 0042C63F    push        ebx
 0042C640    push        esi
 0042C641    push        edi
 0042C642    mov         esi,eax
 0042C644    mov         edi,dword ptr [ebp+8]
 0042C647    add         edi,14
 0042C64A    xor         eax,eax
 0042C64C    push        ebp
 0042C64D    push        42CA30
 0042C652    push        dword ptr fs:[eax]
 0042C655    mov         dword ptr fs:[eax],esp
 0042C658    mov         eax,dword ptr [edi]
 0042C65A    call        @LStrToPChar
 0042C65F    mov         edx,eax
 0042C661    add         edx,dword ptr [esi]
 0042C663    mov         eax,dword ptr [esi]
 0042C665    mov         ecx,dword ptr [edi]
 0042C667    movzx       ecx,byte ptr [ecx+eax-1]
 0042C66C    lea         eax,[ebp-4]
 0042C66F    call        @LStrFromPCharLen
 0042C674    lea         edx,[ebp-8]
 0042C677    mov         eax,dword ptr [ebp-4]
 0042C67A    call        0040BC40
 0042C67F    mov         eax,dword ptr [esi]
 0042C681    mov         edx,dword ptr [edi]
 0042C683    movzx       eax,byte ptr [edx+eax-1]
 0042C688    inc         eax
 0042C689    add         dword ptr [esi],eax
 0042C68B    mov         eax,dword ptr [edi]
 0042C68D    call        @LStrToPChar
 0042C692    mov         edx,eax
 0042C694    add         edx,dword ptr [esi]
 0042C696    mov         eax,dword ptr [esi]
 0042C698    mov         ecx,dword ptr [edi]
 0042C69A    movzx       ecx,byte ptr [ecx+eax-1]
 0042C69F    lea         eax,[ebp-4]
 0042C6A2    call        @LStrFromPCharLen
 0042C6A7    lea         edx,[ebp-0C]
 0042C6AA    mov         eax,dword ptr [ebp-4]
 0042C6AD    call        0040BC40
 0042C6B2    mov         eax,dword ptr [ebp-0C]
 0042C6B5    mov         edx,42CA44;'AbortBtn'
 0042C6BA    call        @WStrCmp
>0042C6BF    jne         0042C6CE
 0042C6C1    lea         eax,[ebp-0C]
 0042C6C4    mov         edx,42CA5C
 0042C6C9    call        00404F28
 0042C6CE    mov         eax,dword ptr [esi]
 0042C6D0    mov         edx,dword ptr [edi]
 0042C6D2    movzx       eax,byte ptr [edx+eax-1]
 0042C6D7    inc         eax
 0042C6D8    add         dword ptr [esi],eax
 0042C6DA    lea         eax,[ebp-10]
 0042C6DD    call        @IntfClear
 0042C6E2    mov         eax,dword ptr [ebp-8]
 0042C6E5    mov         word ptr [eax],54
 0042C6EA    lea         edx,[ebp-114]
 0042C6F0    mov         eax,[0042901C];TNVButton
 0042C6F5    call        TObject.ClassName
 0042C6FA    lea         edx,[ebp-114]
 0042C700    lea         eax,[ebp-14]
 0042C703    call        @WStrFromString
 0042C708    mov         edx,dword ptr [ebp-14]
 0042C70B    mov         eax,dword ptr [ebp-8]
 0042C70E    call        @WStrCmp
>0042C713    jne         0042C808
 0042C719    lea         edx,[ebp-118]
 0042C71F    mov         eax,dword ptr [ebp+8]
 0042C722    mov         eax,dword ptr [eax-4]
 0042C725    mov         eax,dword ptr [eax+24]
 0042C728    mov         eax,dword ptr [eax]
 0042C72A    mov         ecx,dword ptr [eax]
 0042C72C    call        dword ptr [ecx+0C]
 0042C72F    mov         edx,dword ptr [ebp-118]
 0042C735    mov         eax,dword ptr [ebp-0C]
 0042C738    call        @WStrCmp
>0042C73D    jne         0042C757
 0042C73F    lea         eax,[ebp-10]
 0042C742    mov         edx,dword ptr [ebp+8]
 0042C745    mov         edx,dword ptr [edx-4]
 0042C748    mov         edx,dword ptr [edx+24]
 0042C74B    mov         edx,dword ptr [edx]
 0042C74D    call        @IntfCopy
>0042C752    jmp         0042C980
 0042C757    lea         edx,[ebp-11C]
 0042C75D    mov         eax,dword ptr [ebp+8]
 0042C760    mov         eax,dword ptr [eax-4]
 0042C763    mov         eax,dword ptr [eax+24]
 0042C766    mov         eax,dword ptr [eax+4]
 0042C769    mov         ecx,dword ptr [eax]
 0042C76B    call        dword ptr [ecx+0C]
 0042C76E    mov         edx,dword ptr [ebp-11C]
 0042C774    mov         eax,dword ptr [ebp-0C]
 0042C777    call        @WStrCmp
>0042C77C    jne         0042C797
 0042C77E    lea         eax,[ebp-10]
 0042C781    mov         edx,dword ptr [ebp+8]
 0042C784    mov         edx,dword ptr [edx-4]
 0042C787    mov         edx,dword ptr [edx+24]
 0042C78A    mov         edx,dword ptr [edx+4]
 0042C78D    call        @IntfCopy
>0042C792    jmp         0042C980
 0042C797    lea         edx,[ebp-120]
 0042C79D    mov         eax,dword ptr [ebp+8]
 0042C7A0    mov         eax,dword ptr [eax-4]
 0042C7A3    mov         eax,dword ptr [eax+24]
 0042C7A6    mov         eax,dword ptr [eax+8]
 0042C7A9    mov         ecx,dword ptr [eax]
 0042C7AB    call        dword ptr [ecx+0C]
 0042C7AE    mov         edx,dword ptr [ebp-120]
 0042C7B4    mov         eax,dword ptr [ebp-0C]
 0042C7B7    call        @WStrCmp
>0042C7BC    jne         0042C7D7
 0042C7BE    lea         eax,[ebp-10]
 0042C7C1    mov         edx,dword ptr [ebp+8]
 0042C7C4    mov         edx,dword ptr [edx-4]
 0042C7C7    mov         edx,dword ptr [edx+24]
 0042C7CA    mov         edx,dword ptr [edx+8]
 0042C7CD    call        @IntfCopy
>0042C7D2    jmp         0042C980
 0042C7D7    mov         eax,dword ptr [ebp+8]
 0042C7DA    push        eax
 0042C7DB    mov         eax,dword ptr [ebp-0C]
 0042C7DE    push        eax
 0042C7DF    push        0
 0042C7E1    mov         eax,dword ptr [ebp+8]
 0042C7E4    mov         ecx,dword ptr [eax-4]
 0042C7E7    mov         dl,1
 0042C7E9    mov         eax,[0042901C];TNVButton
 0042C7EE    call        TNVButton.Create;TNVButton.Create
 0042C7F3    test        eax,eax
>0042C7F5    je          0042C7FA
 0042C7F7    sub         eax,0FFFFFFBC
 0042C7FA    lea         edx,[ebp-10]
 0042C7FD    call        0042BD90
 0042C802    pop         ecx
>0042C803    jmp         0042C980
 0042C808    lea         edx,[ebp-114]
 0042C80E    mov         eax,[00429154];TNVLabel
 0042C813    call        TObject.ClassName
 0042C818    lea         edx,[ebp-114]
 0042C81E    lea         eax,[ebp-124]
 0042C824    call        @WStrFromString
 0042C829    mov         edx,dword ptr [ebp-124]
 0042C82F    mov         eax,dword ptr [ebp-8]
 0042C832    call        @WStrCmp
>0042C837    jne         0042C868
 0042C839    mov         eax,dword ptr [ebp+8]
 0042C83C    push        eax
 0042C83D    mov         eax,dword ptr [ebp-0C]
 0042C840    push        eax
 0042C841    mov         eax,dword ptr [ebp+8]
 0042C844    mov         ecx,dword ptr [eax-4]
 0042C847    mov         dl,1
 0042C849    mov         eax,[00429154];TNVLabel
 0042C84E    call        TNVLabel.Create;TNVLabel.Create
 0042C853    test        eax,eax
>0042C855    je          0042C85A
 0042C857    sub         eax,0FFFFFFBC
 0042C85A    lea         edx,[ebp-10]
 0042C85D    call        0042BD90
 0042C862    pop         ecx
>0042C863    jmp         0042C980
 0042C868    lea         edx,[ebp-114]
 0042C86E    mov         eax,[0042930C];TNVEdit
 0042C873    call        TObject.ClassName
 0042C878    lea         edx,[ebp-114]
 0042C87E    lea         eax,[ebp-128]
 0042C884    call        @WStrFromString
 0042C889    mov         edx,dword ptr [ebp-128]
 0042C88F    mov         eax,dword ptr [ebp-8]
 0042C892    call        @WStrCmp
>0042C897    jne         0042C8C8
 0042C899    mov         eax,dword ptr [ebp+8]
 0042C89C    push        eax
 0042C89D    mov         eax,dword ptr [ebp-0C]
 0042C8A0    push        eax
 0042C8A1    mov         eax,dword ptr [ebp+8]
 0042C8A4    mov         ecx,dword ptr [eax-4]
 0042C8A7    mov         dl,1
 0042C8A9    mov         eax,[0042930C];TNVEdit
 0042C8AE    call        TNVLabel.Create;TNVEdit.Create
 0042C8B3    test        eax,eax
>0042C8B5    je          0042C8BA
 0042C8B7    sub         eax,0FFFFFFBC
 0042C8BA    lea         edx,[ebp-10]
 0042C8BD    call        0042BD90
 0042C8C2    pop         ecx
>0042C8C3    jmp         0042C980
 0042C8C8    lea         edx,[ebp-114]
 0042C8CE    mov         eax,[00429474];TNVCheckBox
 0042C8D3    call        TObject.ClassName
 0042C8D8    lea         edx,[ebp-114]
 0042C8DE    lea         eax,[ebp-12C]
 0042C8E4    call        @WStrFromString
 0042C8E9    mov         edx,dword ptr [ebp-12C]
 0042C8EF    mov         eax,dword ptr [ebp-8]
 0042C8F2    call        @WStrCmp
>0042C8F7    jne         0042C925
 0042C8F9    mov         eax,dword ptr [ebp+8]
 0042C8FC    push        eax
 0042C8FD    mov         eax,dword ptr [ebp-0C]
 0042C900    push        eax
 0042C901    mov         eax,dword ptr [ebp+8]
 0042C904    mov         ecx,dword ptr [eax-4]
 0042C907    mov         dl,1
 0042C909    mov         eax,[00429474];TNVCheckBox
 0042C90E    call        TNVLabel.Create;TNVCheckBox.Create
 0042C913    test        eax,eax
>0042C915    je          0042C91A
 0042C917    sub         eax,0FFFFFFBC
 0042C91A    lea         edx,[ebp-10]
 0042C91D    call        0042BD90
 0042C922    pop         ecx
>0042C923    jmp         0042C980
 0042C925    lea         edx,[ebp-114]
 0042C92B    mov         eax,[004295EC];TNVImage
 0042C930    call        TObject.ClassName
 0042C935    lea         edx,[ebp-114]
 0042C93B    lea         eax,[ebp-130]
 0042C941    call        @WStrFromString
 0042C946    mov         edx,dword ptr [ebp-130]
 0042C94C    mov         eax,dword ptr [ebp-8]
 0042C94F    call        @WStrCmp
>0042C954    jne         0042C980
 0042C956    mov         eax,dword ptr [ebp+8]
 0042C959    push        eax
 0042C95A    mov         eax,dword ptr [ebp-0C]
 0042C95D    push        eax
 0042C95E    mov         eax,dword ptr [ebp+8]
 0042C961    mov         ecx,dword ptr [eax-4]
 0042C964    mov         dl,1
 0042C966    mov         eax,[004295EC];TNVImage
 0042C96B    call        TNVLabel.Create;TNVImage.Create
 0042C970    test        eax,eax
>0042C972    je          0042C977
 0042C974    sub         eax,0FFFFFFBC
 0042C977    lea         edx,[ebp-10]
 0042C97A    call        0042BD90
 0042C97F    pop         ecx
 0042C980    mov         eax,dword ptr [ebp+8]
 0042C983    mov         eax,dword ptr [eax-4]
 0042C986    mov         eax,dword ptr [eax+10]
 0042C989    xor         edx,edx
 0042C98B    call        @WStrCmp
>0042C990    jne         0042C9A9
 0042C992    cmp         dword ptr [ebp-10],0
>0042C996    jne         0042C9A9
 0042C998    mov         eax,dword ptr [ebp+8]
 0042C99B    mov         eax,dword ptr [eax-4]
 0042C99E    add         eax,10
 0042C9A1    mov         edx,dword ptr [ebp-0C]
 0042C9A4    call        @WStrAsg
 0042C9A9    mov         bl,1
>0042C9AB    jmp         0042C9BB
 0042C9AD    push        ebp
 0042C9AE    mov         edx,esi
 0042C9B0    mov         eax,dword ptr [ebp-10]
 0042C9B3    call        0042C180
 0042C9B8    pop         ecx
 0042C9B9    mov         ebx,eax
 0042C9BB    test        bl,bl
>0042C9BD    je          0042C9CA
 0042C9BF    mov         eax,dword ptr [esi]
 0042C9C1    mov         edx,dword ptr [edi]
 0042C9C3    cmp         byte ptr [edx+eax-1],0
>0042C9C8    jne         0042C9AD
 0042C9CA    inc         dword ptr [esi]
>0042C9CC    jmp         0042C9DC
 0042C9CE    mov         eax,dword ptr [ebp+8]
 0042C9D1    push        eax
 0042C9D2    mov         eax,esi
 0042C9D4    call        0042C630
 0042C9D9    pop         ecx
 0042C9DA    mov         ebx,eax
 0042C9DC    test        bl,bl
>0042C9DE    je          0042C9EB
 0042C9E0    mov         eax,dword ptr [esi]
 0042C9E2    mov         edx,dword ptr [edi]
 0042C9E4    cmp         byte ptr [edx+eax-1],0
>0042C9E9    jne         0042C9CE
 0042C9EB    inc         dword ptr [esi]
 0042C9ED    xor         eax,eax
 0042C9EF    pop         edx
 0042C9F0    pop         ecx
 0042C9F1    pop         ecx
 0042C9F2    mov         dword ptr fs:[eax],edx
 0042C9F5    push        42CA37
 0042C9FA    lea         eax,[ebp-130]
 0042CA00    mov         edx,7
 0042CA05    call        @WStrArrayClr
 0042CA0A    lea         eax,[ebp-14]
 0042CA0D    call        @WStrClr
 0042CA12    lea         eax,[ebp-10]
 0042CA15    call        @IntfClear
 0042CA1A    lea         eax,[ebp-0C]
 0042CA1D    mov         edx,2
 0042CA22    call        @WStrArrayClr
 0042CA27    lea         eax,[ebp-4]
 0042CA2A    call        @LStrClr
 0042CA2F    ret
>0042CA30    jmp         @HandleFinally
>0042CA35    jmp         0042C9FA
 0042CA37    mov         eax,ebx
 0042CA39    pop         edi
 0042CA3A    pop         esi
 0042CA3B    pop         ebx
 0042CA3C    mov         esp,ebp
 0042CA3E    pop         ebp
 0042CA3F    ret
end;*}

//0042CA70
{*constructor TNVForm.Create(?:?; ?:?; ?:?; ?:?; ?:?);
begin
 0042CA70    push        ebp
 0042CA71    mov         ebp,esp
 0042CA73    push        0
 0042CA75    push        0
 0042CA77    push        0
 0042CA79    push        0
 0042CA7B    push        0
 0042CA7D    push        ebx
 0042CA7E    push        esi
 0042CA7F    push        edi
 0042CA80    test        dl,dl
>0042CA82    je          0042CA8C
 0042CA84    add         esp,0FFFFFFF0
 0042CA87    call        @ClassCreate
 0042CA8C    mov         edi,ecx
 0042CA8E    mov         ebx,edx
 0042CA90    mov         dword ptr [ebp-4],eax
 0042CA93    lea         esi,[ebp-4]
 0042CA96    xor         eax,eax
 0042CA98    push        ebp
 0042CA99    push        42CBBD
 0042CA9E    push        dword ptr fs:[eax]
 0042CAA1    mov         dword ptr fs:[eax],esp
 0042CAA4    xor         edx,edx
 0042CAA6    mov         eax,dword ptr [esi]
 0042CAA8    call        TObject.Create
 0042CAAD    mov         eax,dword ptr [esi]
 0042CAAF    mov         dword ptr [eax+0C],edi
 0042CAB2    mov         eax,dword ptr [esi]
 0042CAB4    add         eax,14
 0042CAB7    mov         edx,dword ptr [ebp+18]
 0042CABA    call        @WStrAsg
 0042CABF    mov         eax,dword ptr [esi]
 0042CAC1    add         eax,54
 0042CAC4    mov         edx,dword ptr [ebp+10]
 0042CAC7    call        @IntfCopy
 0042CACC    mov         eax,dword ptr [esi]
 0042CACE    mov         edx,dword ptr [ebp+0C]
 0042CAD1    mov         dword ptr [eax+1C],edx
 0042CAD4    mov         eax,dword ptr [esi]
 0042CAD6    mov         edx,dword ptr [ebp+8]
 0042CAD9    mov         dword ptr [eax+20],edx
 0042CADC    push        ebp
 0042CADD    push        42CBE8
 0042CAE2    push        42CC04
 0042CAE7    mov         ecx,dword ptr [esi]
 0042CAE9    mov         dl,1
 0042CAEB    mov         eax,[0042901C];TNVButton
 0042CAF0    call        TNVButton.Create;TNVButton.Create
 0042CAF5    test        eax,eax
>0042CAF7    je          0042CAFC
 0042CAF9    sub         eax,0FFFFFFBC
 0042CAFC    lea         edx,[ebp-0C]
 0042CAFF    call        0042BD90
 0042CB04    pop         ecx
 0042CB05    push        ebp
 0042CB06    push        42CC18
 0042CB0B    push        42CC2C
 0042CB10    mov         ecx,dword ptr [esi]
 0042CB12    mov         dl,1
 0042CB14    mov         eax,[0042901C];TNVButton
 0042CB19    call        TNVButton.Create;TNVButton.Create
 0042CB1E    test        eax,eax
>0042CB20    je          0042CB25
 0042CB22    sub         eax,0FFFFFFBC
 0042CB25    lea         edx,[ebp-10]
 0042CB28    call        0042BD90
 0042CB2D    pop         ecx
 0042CB2E    push        ebp
 0042CB2F    push        42CC3C
 0042CB34    push        42CC54
 0042CB39    mov         ecx,dword ptr [esi]
 0042CB3B    mov         dl,1
 0042CB3D    mov         eax,[0042901C];TNVButton
 0042CB42    call        TNVButton.Create;TNVButton.Create
 0042CB47    test        eax,eax
>0042CB49    je          0042CB4E
 0042CB4B    sub         eax,0FFFFFFBC
 0042CB4E    lea         edx,[ebp-14]
 0042CB51    call        0042BD90
 0042CB56    pop         ecx
 0042CB57    mov         dword ptr [ebp-8],5
 0042CB5E    mov         edi,dword ptr ds:[55B3F0];^gvar_0053D0F4
 0042CB64    mov         edi,dword ptr [edi]
 0042CB66    mov         edx,dword ptr [ebp+14]
 0042CB69    mov         eax,42CC6C;'TPF0'
 0042CB6E    call        edi
 0042CB70    test        al,al
>0042CB72    je          0042CB7E
 0042CB74    push        ebp
 0042CB75    lea         eax,[ebp-8]
 0042CB78    call        0042C630
 0042CB7D    pop         ecx
 0042CB7E    mov         eax,dword ptr [esi]
 0042CB80    inc         dword ptr [eax+4]
 0042CB83    push        0
 0042CB85    mov         edx,dword ptr [esi]
 0042CB87    test        edx,edx
>0042CB89    je          0042CB8E
 0042CB8B    sub         edx,0FFFFFFA0
 0042CB8E    xor         ecx,ecx
 0042CB90    mov         eax,dword ptr [esi]
 0042CB92    call        0042DA74
 0042CB97    mov         eax,dword ptr [esi]
 0042CB99    dec         dword ptr [eax+4]
 0042CB9C    xor         eax,eax
 0042CB9E    pop         edx
 0042CB9F    pop         ecx
 0042CBA0    pop         ecx
 0042CBA1    mov         dword ptr fs:[eax],edx
 0042CBA4    push        42CBC4
 0042CBA9    lea         eax,[ebp-14]
 0042CBAC    mov         edx,dword ptr ds:[428DB4];INVItemEx
 0042CBB2    mov         ecx,3
 0042CBB7    call        @FinalizeArray
 0042CBBC    ret
>0042CBBD    jmp         @HandleFinally
>0042CBC2    jmp         0042CBA9
 0042CBC4    mov         eax,dword ptr [esi]
 0042CBC6    test        bl,bl
>0042CBC8    je          0042CBD9
 0042CBCA    call        @AfterConstruction
 0042CBCF    pop         dword ptr fs:[0]
 0042CBD6    add         esp,0C
 0042CBD9    mov         eax,dword ptr [esi]
 0042CBDB    pop         edi
 0042CBDC    pop         esi
 0042CBDD    pop         ebx
 0042CBDE    mov         esp,ebp
 0042CBE0    pop         ebp
 0042CBE1    ret         14
end;*}

//0042D824
{*procedure sub_0042D824(?:?);
begin
 0042D824    push        ebp
 0042D825    mov         ebp,esp
 0042D827    push        0
 0042D829    push        0
 0042D82B    push        0
 0042D82D    push        ebx
 0042D82E    push        esi
 0042D82F    push        edi
 0042D830    mov         edi,eax
 0042D832    xor         eax,eax
 0042D834    push        ebp
 0042D835    push        42D8BF
 0042D83A    push        dword ptr fs:[eax]
 0042D83D    mov         dword ptr fs:[eax],esp
 0042D840    mov         byte ptr [ebp-1],0
 0042D844    mov         eax,dword ptr [edi+24]
 0042D847    call        00405CE8
 0042D84C    mov         ebx,eax
 0042D84E    sub         ebx,3
>0042D851    jl          0042D877
 0042D853    inc         ebx
 0042D854    mov         esi,3
 0042D859    mov         eax,dword ptr [edi+24]
 0042D85C    mov         eax,dword ptr [eax+esi*4]
 0042D85F    mov         edx,dword ptr [eax]
 0042D861    call        dword ptr [edx+28]
 0042D864    mov         edx,dword ptr [eax]
 0042D866    call        dword ptr [edx+10]
 0042D869    test        al,al
>0042D86B    jne         0042D873
 0042D86D    mov         byte ptr [ebp-1],1
>0042D871    jmp         0042D877
 0042D873    inc         esi
 0042D874    dec         ebx
>0042D875    jne         0042D859
 0042D877    lea         edx,[ebp-0C]
 0042D87A    mov         eax,edi
 0042D87C    call        0042DB4C
 0042D881    mov         edx,dword ptr [ebp-0C]
 0042D884    lea         eax,[ebp-8]
 0042D887    mov         ecx,42D8D0;['{94D23487-7861-4FD8-93FA-E62680ECAC99}']
 0042D88C    call        @IntfCast
 0042D891    mov         eax,dword ptr [ebp-8]
 0042D894    mov         edx,dword ptr [eax]
 0042D896    call        dword ptr [edx+28]
 0042D899    mov         dl,byte ptr [ebp-1]
 0042D89C    call        0042A65C
 0042D8A1    xor         eax,eax
 0042D8A3    pop         edx
 0042D8A4    pop         ecx
 0042D8A5    pop         ecx
 0042D8A6    mov         dword ptr fs:[eax],edx
 0042D8A9    push        42D8C6
 0042D8AE    lea         eax,[ebp-0C]
 0042D8B1    call        @IntfClear
 0042D8B6    lea         eax,[ebp-8]
 0042D8B9    call        @IntfClear
 0042D8BE    ret
>0042D8BF    jmp         @HandleFinally
>0042D8C4    jmp         0042D8AE
 0042D8C6    pop         edi
 0042D8C7    pop         esi
 0042D8C8    pop         ebx
 0042D8C9    mov         esp,ebp
 0042D8CB    pop         ebp
 0042D8CC    ret
end;*}

//0042D8E0
{*procedure sub_0042D8E0(?:?; ?:?; ?:?; ?:?);
begin
 0042D8E0    push        ebp
 0042D8E1    mov         ebp,esp
 0042D8E3    add         esp,0FFFFFFF4
 0042D8E6    push        ebx
 0042D8E7    push        esi
 0042D8E8    push        edi
 0042D8E9    xor         ebx,ebx
 0042D8EB    mov         dword ptr [ebp-0C],ebx
 0042D8EE    mov         dword ptr [ebp-8],ecx
 0042D8F1    mov         dword ptr [ebp-4],edx
 0042D8F4    mov         esi,eax
 0042D8F6    xor         eax,eax
 0042D8F8    push        ebp
 0042D8F9    push        42D96E
 0042D8FE    push        dword ptr fs:[eax]
 0042D901    mov         dword ptr fs:[eax],esp
 0042D904    mov         eax,dword ptr [esi+24]
 0042D907    call        00405CE8
 0042D90C    mov         edi,eax
 0042D90E    test        edi,edi
>0042D910    jl          0042D950
 0042D912    inc         edi
 0042D913    xor         ebx,ebx
 0042D915    lea         edx,[ebp-0C]
 0042D918    mov         eax,dword ptr [esi+24]
 0042D91B    mov         eax,dword ptr [eax+ebx*4]
 0042D91E    mov         ecx,dword ptr [eax]
 0042D920    call        dword ptr [ecx+0C]
 0042D923    mov         eax,dword ptr [ebp-0C]
 0042D926    mov         edx,dword ptr [ebp-4]
 0042D929    call        @WStrCmp
>0042D92E    jne         0042D94C
 0042D930    mov         eax,dword ptr [ebp+8]
 0042D933    call        @IntfClear
 0042D938    push        eax
 0042D939    mov         eax,dword ptr [ebp-8]
 0042D93C    push        eax
 0042D93D    mov         eax,dword ptr [esi+24]
 0042D940    mov         eax,dword ptr [eax+ebx*4]
 0042D943    push        eax
 0042D944    mov         eax,dword ptr [eax]
 0042D946    call        dword ptr [eax]
 0042D948    test        eax,eax
>0042D94A    je          0042D958
 0042D94C    inc         ebx
 0042D94D    dec         edi
>0042D94E    jne         0042D915
 0042D950    mov         eax,dword ptr [ebp+8]
 0042D953    call        @IntfClear
 0042D958    xor         eax,eax
 0042D95A    pop         edx
 0042D95B    pop         ecx
 0042D95C    pop         ecx
 0042D95D    mov         dword ptr fs:[eax],edx
 0042D960    push        42D975
 0042D965    lea         eax,[ebp-0C]
 0042D968    call        @WStrClr
 0042D96D    ret
>0042D96E    jmp         @HandleFinally
>0042D973    jmp         0042D965
 0042D975    pop         edi
 0042D976    pop         esi
 0042D977    pop         ebx
 0042D978    mov         esp,ebp
 0042D97A    pop         ebp
 0042D97B    ret         4
end;*}

//0042D980
{*procedure sub_0042D980(?:?; ?:?; ?:?);
begin
 0042D980    push        ebx
 0042D981    push        esi
 0042D982    push        edi
 0042D983    push        ebp
 0042D984    push        ecx
 0042D985    mov         dword ptr [esp],ecx
 0042D988    mov         ebp,edx
 0042D98A    mov         edi,eax
 0042D98C    mov         eax,dword ptr [esp]
 0042D98F    call        @IntfClear
 0042D994    test        ebp,ebp
>0042D996    je          0042D9CC
 0042D998    mov         eax,dword ptr [edi+24]
 0042D99B    call        00405CE8
 0042D9A0    mov         esi,eax
 0042D9A2    test        esi,esi
>0042D9A4    jl          0042D9CC
 0042D9A6    inc         esi
 0042D9A7    xor         ebx,ebx
 0042D9A9    mov         eax,dword ptr [edi+24]
 0042D9AC    mov         eax,dword ptr [eax+ebx*4]
 0042D9AF    mov         edx,dword ptr [eax]
 0042D9B1    call        dword ptr [edx+10]
 0042D9B4    cmp         ebp,eax
>0042D9B6    jne         0042D9C8
 0042D9B8    mov         eax,dword ptr [esp]
 0042D9BB    mov         edx,dword ptr [edi+24]
 0042D9BE    mov         edx,dword ptr [edx+ebx*4]
 0042D9C1    call        @IntfCopy
>0042D9C6    jmp         0042D9CC
 0042D9C8    inc         ebx
 0042D9C9    dec         esi
>0042D9CA    jne         0042D9A9
 0042D9CC    pop         edx
 0042D9CD    pop         ebp
 0042D9CE    pop         edi
 0042D9CF    pop         esi
 0042D9D0    pop         ebx
 0042D9D1    ret
end;*}

//0042D9D4
{*procedure sub_0042D9D4(?:?; ?:IInterface; ?:?);
begin
 0042D9D4    push        ebp
 0042D9D5    mov         ebp,esp
 0042D9D7    push        0
 0042D9D9    push        ebx
 0042D9DA    push        esi
 0042D9DB    mov         ebx,ecx
 0042D9DD    mov         esi,edx
 0042D9DF    xor         eax,eax
 0042D9E1    push        ebp
 0042D9E2    push        42DA65
 0042D9E7    push        dword ptr fs:[eax]
 0042D9EA    mov         dword ptr fs:[eax],esp
 0042D9ED    test        esi,esi
>0042D9EF    je          0042DA4F
 0042D9F1    lea         eax,[ebp-4]
 0042D9F4    mov         edx,esi
 0042D9F6    call        @IntfCopy
 0042D9FB    mov         eax,dword ptr [ebp-4]
 0042D9FE    mov         edx,dword ptr [eax]
 0042DA00    call        dword ptr [edx+28]
 0042DA03    xor         edx,edx
 0042DA05    mov         dl,bl
 0042DA07    mov         edx,dword ptr [eax+edx*4+20]
 0042DA0B    lea         eax,[ebp-4]
 0042DA0E    call        @IntfCopy
 0042DA13    mov         eax,dword ptr [ebp-4]
 0042DA16    mov         edx,dword ptr [eax]
 0042DA18    call        dword ptr [edx+1C]
 0042DA1B    test        al,al
>0042DA1D    je          0042DA3D
 0042DA1F    mov         eax,dword ptr [ebp-4]
 0042DA22    mov         edx,dword ptr [eax]
 0042DA24    call        dword ptr [edx+14]
 0042DA27    test        al,al
>0042DA29    je          0042DA3D
 0042DA2B    mov         eax,dword ptr [ebp-4]
 0042DA2E    mov         edx,dword ptr [eax]
 0042DA30    call        dword ptr [edx+10]
 0042DA33    push        eax
 0042DA34    call        user32.IsWindowEnabled
 0042DA39    test        eax,eax
>0042DA3B    jne         0042DA42
 0042DA3D    cmp         esi,dword ptr [ebp-4]
>0042DA40    jne         0042D9FB
 0042DA42    cmp         esi,dword ptr [ebp-4]
>0042DA45    je          0042DA4F
 0042DA47    mov         eax,dword ptr [ebp-4]
 0042DA4A    mov         edx,dword ptr [eax]
 0042DA4C    call        dword ptr [edx+24]
 0042DA4F    xor         eax,eax
 0042DA51    pop         edx
 0042DA52    pop         ecx
 0042DA53    pop         ecx
 0042DA54    mov         dword ptr fs:[eax],edx
 0042DA57    push        42DA6C
 0042DA5C    lea         eax,[ebp-4]
 0042DA5F    call        @IntfClear
 0042DA64    ret
>0042DA65    jmp         @HandleFinally
>0042DA6A    jmp         0042DA5C
 0042DA6C    pop         esi
 0042DA6D    pop         ebx
 0042DA6E    pop         ecx
 0042DA6F    pop         ebp
 0042DA70    ret
end;*}

//0042DA74
{*procedure sub_0042DA74(?:?; ?:?; ?:?; ?:?);
begin
 0042DA74    push        ebp
 0042DA75    mov         ebp,esp
 0042DA77    add         esp,0FFFFFFF8
 0042DA7A    push        ebx
 0042DA7B    mov         byte ptr [ebp-5],cl
 0042DA7E    mov         dword ptr [ebp-4],edx
 0042DA81    mov         ebx,eax
 0042DA83    cmp         dword ptr [ebx+28],0
>0042DA87    je          0042DA99
 0042DA89    mov         eax,dword ptr [ebx+54]
 0042DA8C    push        eax
 0042DA8D    mov         ecx,dword ptr [ebp+8]
 0042DA90    mov         dl,byte ptr [ebp-5]
 0042DA93    mov         eax,dword ptr [ebp-4]
 0042DA96    call        dword ptr [ebx+28]
 0042DA99    mov         eax,dword ptr [ebx+0C]
 0042DA9C    test        eax,eax
>0042DA9E    je          0042DAB8
 0042DAA0    cmp         dword ptr [eax+18],0
>0042DAA4    je          0042DAB8
 0042DAA6    mov         edx,dword ptr [eax+1C]
 0042DAA9    push        edx
 0042DAAA    mov         ebx,eax
 0042DAAC    mov         ecx,dword ptr [ebp+8]
 0042DAAF    mov         dl,byte ptr [ebp-5]
 0042DAB2    mov         eax,dword ptr [ebp-4]
 0042DAB5    call        dword ptr [ebx+18]
 0042DAB8    pop         ebx
 0042DAB9    pop         ecx
 0042DABA    pop         ecx
 0042DABB    pop         ebp
 0042DABC    ret         4
end;*}

//0042DAC0
{*procedure sub_0042DAC0(?:?; ?:?);
begin
 0042DAC0    push        ebx
 0042DAC1    push        esi
 0042DAC2    mov         esi,edx
 0042DAC4    mov         ebx,eax
 0042DAC6    mov         eax,esi
 0042DAC8    mov         edx,dword ptr [ebx+0C]
 0042DACB    test        edx,edx
>0042DACD    je          0042DAD2
 0042DACF    sub         edx,0FFFFFFDC
 0042DAD2    call        @IntfCopy
 0042DAD7    pop         esi
 0042DAD8    pop         ebx
 0042DAD9    ret
end;*}

//0042DADC
{*procedure sub_0042DADC(?:?; ?:?);
begin
 0042DADC    push        ebx
 0042DADD    push        esi
 0042DADE    mov         esi,edx
 0042DAE0    mov         ebx,eax
 0042DAE2    mov         eax,esi
 0042DAE4    mov         edx,dword ptr [ebx+10]
 0042DAE7    call        @WStrAsg
 0042DAEC    pop         esi
 0042DAED    pop         ebx
 0042DAEE    ret
end;*}

//0042DAF0
{*procedure sub_0042DAF0(?:?; ?:?);
begin
 0042DAF0    push        ebx
 0042DAF1    push        esi
 0042DAF2    mov         esi,edx
 0042DAF4    mov         ebx,eax
 0042DAF6    mov         eax,esi
 0042DAF8    mov         edx,dword ptr [ebx+14]
 0042DAFB    call        @WStrAsg
 0042DB00    pop         esi
 0042DB01    pop         ebx
 0042DB02    ret
end;*}

//0042DB04
{*procedure sub_0042DB04(?:?; ?:?);
begin
 0042DB04    push        ebx
 0042DB05    push        esi
 0042DB06    mov         esi,edx
 0042DB08    mov         ebx,eax
 0042DB0A    lea         eax,[ebx+14]
 0042DB0D    mov         edx,esi
 0042DB0F    call        @WStrAsg
 0042DB14    pop         esi
 0042DB15    pop         ebx
 0042DB16    ret
end;*}

//0042DB18
{*procedure sub_0042DB18(?:?; ?:?);
begin
 0042DB18    push        ebx
 0042DB19    push        esi
 0042DB1A    mov         esi,edx
 0042DB1C    mov         ebx,eax
 0042DB1E    mov         eax,esi
 0042DB20    mov         edx,dword ptr [ebx+18]
 0042DB23    call        @WStrAsg
 0042DB28    pop         esi
 0042DB29    pop         ebx
 0042DB2A    ret
end;*}

//0042DB2C
{*procedure sub_0042DB2C(?:?; ?:?);
begin
 0042DB2C    push        ebx
 0042DB2D    push        esi
 0042DB2E    mov         esi,edx
 0042DB30    mov         ebx,eax
 0042DB32    lea         eax,[ebx+18]
 0042DB35    mov         edx,esi
 0042DB37    call        @WStrAsg
 0042DB3C    pop         esi
 0042DB3D    pop         ebx
 0042DB3E    ret
end;*}

//0042DB40
{*procedure sub_0042DB40(?:?);
begin
 0042DB40    mov         eax,dword ptr [eax+24]
 0042DB43    call        @LStrLen
 0042DB48    ret
end;*}

//0042DB4C
{*procedure sub_0042DB4C(?:dword; ?:?);
begin
 0042DB4C    push        ebx
 0042DB4D    push        esi
 0042DB4E    mov         esi,edx
 0042DB50    mov         ebx,eax
 0042DB52    mov         eax,esi
 0042DB54    mov         edx,dword ptr [ebx+24]
 0042DB57    mov         edx,dword ptr [edx]
 0042DB59    mov         ecx,42DB68;['{20E07644-4788-4FDF-8F90-B62C0E61E20B}']
 0042DB5E    call        @IntfCast
 0042DB63    pop         esi
 0042DB64    pop         ebx
 0042DB65    ret
end;*}

//0042DB78
{*procedure sub_0042DB78(?:dword; ?:?);
begin
 0042DB78    push        ebx
 0042DB79    push        esi
 0042DB7A    mov         esi,edx
 0042DB7C    mov         ebx,eax
 0042DB7E    mov         eax,esi
 0042DB80    mov         edx,dword ptr [ebx+24]
 0042DB83    mov         edx,dword ptr [edx+4]
 0042DB86    mov         ecx,42DB94;['{20E07644-4788-4FDF-8F90-B62C0E61E20B}']
 0042DB8B    call        @IntfCast
 0042DB90    pop         esi
 0042DB91    pop         ebx
 0042DB92    ret
end;*}

//0042DBA4
{*procedure sub_0042DBA4(?:?; ?:?);
begin
 0042DBA4    push        ebx
 0042DBA5    push        esi
 0042DBA6    mov         esi,edx
 0042DBA8    mov         ebx,eax
 0042DBAA    mov         eax,esi
 0042DBAC    mov         edx,dword ptr [ebx+24]
 0042DBAF    mov         edx,dword ptr [edx+8]
 0042DBB2    mov         ecx,42DBC0;['{20E07644-4788-4FDF-8F90-B62C0E61E20B}']
 0042DBB7    call        @IntfCast
 0042DBBC    pop         esi
 0042DBBD    pop         ebx
 0042DBBE    ret
end;*}

//0042DBD0
{*procedure sub_0042DBD0(?:?; ?:?);
begin
 0042DBD0    push        ebx
 0042DBD1    push        esi
 0042DBD2    mov         esi,edx
 0042DBD4    mov         ebx,eax
 0042DBD6    mov         eax,esi
 0042DBD8    mov         edx,dword ptr [ebx+44]
 0042DBDB    call        @WStrAsg
 0042DBE0    pop         esi
 0042DBE1    pop         ebx
 0042DBE2    ret
end;*}

//0042DBE4
{*procedure sub_0042DBE4(?:?; ?:?);
begin
 0042DBE4    push        ebx
 0042DBE5    push        esi
 0042DBE6    mov         esi,edx
 0042DBE8    mov         ebx,eax
 0042DBEA    lea         eax,[ebx+44]
 0042DBED    mov         edx,esi
 0042DBEF    call        @WStrAsg
 0042DBF4    pop         esi
 0042DBF5    pop         ebx
 0042DBF6    ret
end;*}

//0042DBF8
{*function sub_0042DBF8(?:?):?;
begin
 0042DBF8    mov         eax,dword ptr [eax+48]
 0042DBFB    ret
end;*}

//0042DBFC
{*function sub_0042DBFC(?:?):?;
begin
 0042DBFC    mov         eax,dword ptr [eax+2C]
 0042DBFF    ret
end;*}

//0042DC00
{*function sub_0042DC00(?:?):?;
begin
 0042DC00    mov         al,byte ptr [eax+50]
 0042DC03    ret
end;*}

//0042DC04
{*function sub_0042DC04(?:?):?;
begin
 0042DC04    mov         eax,dword ptr [eax+28]
 0042DC07    ret
end;*}

//0042DC08
{*procedure sub_0042DC08(?:?; ?:?);
begin
 0042DC08    mov         dword ptr [eax+28],edx
 0042DC0B    ret
end;*}

//0042DC0C
{*procedure sub_0042DC0C(?:?; ?:?; ?:?);
begin
 0042DC0C    push        ebx
 0042DC0D    push        esi
 0042DC0E    push        edi
 0042DC0F    mov         edi,ecx
 0042DC11    mov         esi,edx
 0042DC13    mov         ebx,eax
 0042DC15    test        esi,esi
>0042DC17    jl          0042DC34
 0042DC19    mov         eax,dword ptr [ebx+24]
 0042DC1C    call        @LStrLen
 0042DC21    cmp         esi,eax
>0042DC23    jge         0042DC34
 0042DC25    mov         eax,edi
 0042DC27    mov         edx,dword ptr [ebx+24]
 0042DC2A    mov         edx,dword ptr [edx+esi*4]
 0042DC2D    call        @IntfCopy
>0042DC32    jmp         0042DC3B
 0042DC34    mov         eax,edi
 0042DC36    call        @IntfClear
 0042DC3B    pop         edi
 0042DC3C    pop         esi
 0042DC3D    pop         ebx
 0042DC3E    ret
end;*}

//0042DC40
{*procedure sub_0042DC40(?:?; ?:?; ?:?);
begin
 0042DC40    push        ebp
 0042DC41    mov         ebp,esp
 0042DC43    push        0
 0042DC45    push        ebx
 0042DC46    push        esi
 0042DC47    push        edi
 0042DC48    mov         edi,ecx
 0042DC4A    mov         esi,edx
 0042DC4C    mov         ebx,eax
 0042DC4E    xor         eax,eax
 0042DC50    push        ebp
 0042DC51    push        42DC8E
 0042DC56    push        dword ptr fs:[eax]
 0042DC59    mov         dword ptr fs:[eax],esp
 0042DC5C    lea         eax,[ebp-4]
 0042DC5F    push        eax
 0042DC60    mov         ecx,42DC9C
 0042DC65    mov         edx,esi
 0042DC67    mov         eax,ebx
 0042DC69    call        0042D8E0
 0042DC6E    mov         edx,dword ptr [ebp-4]
 0042DC71    mov         eax,edi
 0042DC73    call        @IntfCopy
 0042DC78    xor         eax,eax
 0042DC7A    pop         edx
 0042DC7B    pop         ecx
 0042DC7C    pop         ecx
 0042DC7D    mov         dword ptr fs:[eax],edx
 0042DC80    push        42DC95
 0042DC85    lea         eax,[ebp-4]
 0042DC88    call        @IntfClear
 0042DC8D    ret
>0042DC8E    jmp         @HandleFinally
>0042DC93    jmp         0042DC85
 0042DC95    pop         edi
 0042DC96    pop         esi
 0042DC97    pop         ebx
 0042DC98    pop         ecx
 0042DC99    pop         ebp
 0042DC9A    ret
end;*}

//0042DCAC
{*procedure sub_0042DCAC(?:?; ?:?; ?:?);
begin
 0042DCAC    push        ebp
 0042DCAD    mov         ebp,esp
 0042DCAF    push        0
 0042DCB1    push        ebx
 0042DCB2    push        esi
 0042DCB3    push        edi
 0042DCB4    mov         edi,ecx
 0042DCB6    mov         esi,edx
 0042DCB8    mov         ebx,eax
 0042DCBA    xor         eax,eax
 0042DCBC    push        ebp
 0042DCBD    push        42DCFA
 0042DCC2    push        dword ptr fs:[eax]
 0042DCC5    mov         dword ptr fs:[eax],esp
 0042DCC8    lea         eax,[ebp-4]
 0042DCCB    push        eax
 0042DCCC    mov         ecx,42DD08
 0042DCD1    mov         edx,esi
 0042DCD3    mov         eax,ebx
 0042DCD5    call        0042D8E0
 0042DCDA    mov         edx,dword ptr [ebp-4]
 0042DCDD    mov         eax,edi
 0042DCDF    call        @IntfCopy
 0042DCE4    xor         eax,eax
 0042DCE6    pop         edx
 0042DCE7    pop         ecx
 0042DCE8    pop         ecx
 0042DCE9    mov         dword ptr fs:[eax],edx
 0042DCEC    push        42DD01
 0042DCF1    lea         eax,[ebp-4]
 0042DCF4    call        @IntfClear
 0042DCF9    ret
>0042DCFA    jmp         @HandleFinally
>0042DCFF    jmp         0042DCF1
 0042DD01    pop         edi
 0042DD02    pop         esi
 0042DD03    pop         ebx
 0042DD04    pop         ecx
 0042DD05    pop         ebp
 0042DD06    ret
end;*}

//0042DD18
{*procedure sub_0042DD18(?:?; ?:?; ?:?);
begin
 0042DD18    push        ebp
 0042DD19    mov         ebp,esp
 0042DD1B    push        0
 0042DD1D    push        ebx
 0042DD1E    push        esi
 0042DD1F    push        edi
 0042DD20    mov         edi,ecx
 0042DD22    mov         esi,edx
 0042DD24    mov         ebx,eax
 0042DD26    xor         eax,eax
 0042DD28    push        ebp
 0042DD29    push        42DD66
 0042DD2E    push        dword ptr fs:[eax]
 0042DD31    mov         dword ptr fs:[eax],esp
 0042DD34    lea         eax,[ebp-4]
 0042DD37    push        eax
 0042DD38    mov         ecx,42DD74
 0042DD3D    mov         edx,esi
 0042DD3F    mov         eax,ebx
 0042DD41    call        0042D8E0
 0042DD46    mov         edx,dword ptr [ebp-4]
 0042DD49    mov         eax,edi
 0042DD4B    call        @IntfCopy
 0042DD50    xor         eax,eax
 0042DD52    pop         edx
 0042DD53    pop         ecx
 0042DD54    pop         ecx
 0042DD55    mov         dword ptr fs:[eax],edx
 0042DD58    push        42DD6D
 0042DD5D    lea         eax,[ebp-4]
 0042DD60    call        @IntfClear
 0042DD65    ret
>0042DD66    jmp         @HandleFinally
>0042DD6B    jmp         0042DD5D
 0042DD6D    pop         edi
 0042DD6E    pop         esi
 0042DD6F    pop         ebx
 0042DD70    pop         ecx
 0042DD71    pop         ebp
 0042DD72    ret
end;*}

//0042DD84
{*procedure sub_0042DD84(?:?; ?:?; ?:?);
begin
 0042DD84    push        ebp
 0042DD85    mov         ebp,esp
 0042DD87    push        0
 0042DD89    push        ebx
 0042DD8A    push        esi
 0042DD8B    push        edi
 0042DD8C    mov         edi,ecx
 0042DD8E    mov         esi,edx
 0042DD90    mov         ebx,eax
 0042DD92    xor         eax,eax
 0042DD94    push        ebp
 0042DD95    push        42DDD2
 0042DD9A    push        dword ptr fs:[eax]
 0042DD9D    mov         dword ptr fs:[eax],esp
 0042DDA0    lea         eax,[ebp-4]
 0042DDA3    push        eax
 0042DDA4    mov         ecx,42DDE0
 0042DDA9    mov         edx,esi
 0042DDAB    mov         eax,ebx
 0042DDAD    call        0042D8E0
 0042DDB2    mov         edx,dword ptr [ebp-4]
 0042DDB5    mov         eax,edi
 0042DDB7    call        @IntfCopy
 0042DDBC    xor         eax,eax
 0042DDBE    pop         edx
 0042DDBF    pop         ecx
 0042DDC0    pop         ecx
 0042DDC1    mov         dword ptr fs:[eax],edx
 0042DDC4    push        42DDD9
 0042DDC9    lea         eax,[ebp-4]
 0042DDCC    call        @IntfClear
 0042DDD1    ret
>0042DDD2    jmp         @HandleFinally
>0042DDD7    jmp         0042DDC9
 0042DDD9    pop         edi
 0042DDDA    pop         esi
 0042DDDB    pop         ebx
 0042DDDC    pop         ecx
 0042DDDD    pop         ebp
 0042DDDE    ret
end;*}

//0042DDF0
{*procedure sub_0042DDF0(?:?; ?:?; ?:?);
begin
 0042DDF0    push        ebp
 0042DDF1    mov         ebp,esp
 0042DDF3    push        0
 0042DDF5    push        ebx
 0042DDF6    push        esi
 0042DDF7    push        edi
 0042DDF8    mov         edi,ecx
 0042DDFA    mov         esi,edx
 0042DDFC    mov         ebx,eax
 0042DDFE    xor         eax,eax
 0042DE00    push        ebp
 0042DE01    push        42DE3E
 0042DE06    push        dword ptr fs:[eax]
 0042DE09    mov         dword ptr fs:[eax],esp
 0042DE0C    lea         eax,[ebp-4]
 0042DE0F    push        eax
 0042DE10    mov         ecx,42DE4C
 0042DE15    mov         edx,esi
 0042DE17    mov         eax,ebx
 0042DE19    call        0042D8E0
 0042DE1E    mov         edx,dword ptr [ebp-4]
 0042DE21    mov         eax,edi
 0042DE23    call        @IntfCopy
 0042DE28    xor         eax,eax
 0042DE2A    pop         edx
 0042DE2B    pop         ecx
 0042DE2C    pop         ecx
 0042DE2D    mov         dword ptr fs:[eax],edx
 0042DE30    push        42DE45
 0042DE35    lea         eax,[ebp-4]
 0042DE38    call        @IntfClear
 0042DE3D    ret
>0042DE3E    jmp         @HandleFinally
>0042DE43    jmp         0042DE35
 0042DE45    pop         edi
 0042DE46    pop         esi
 0042DE47    pop         ebx
 0042DE48    pop         ecx
 0042DE49    pop         ebp
 0042DE4A    ret
end;*}

//0042DE5C
{*procedure sub_0042DE5C(?:?);
begin
 0042DE5C    mov         byte ptr [eax+5C],1
 0042DE60    ret
end;*}

//0042DE64
{*procedure sub_0042DE64(?:?);
begin
 0042DE64    push        ebp
 0042DE65    mov         ebp,esp
 0042DE67    add         esp,0FFFFFFD4
 0042DE6A    push        ebx
 0042DE6B    xor         eax,eax
 0042DE6D    mov         dword ptr [ebp-2C],eax
 0042DE70    xor         eax,eax
 0042DE72    push        ebp
 0042DE73    push        42E01F
 0042DE78    push        dword ptr fs:[eax]
 0042DE7B    mov         dword ptr fs:[eax],esp
 0042DE7E    lea         eax,[ebp-28]
 0042DE81    mov         edx,28
 0042DE86    call        00408130
 0042DE8B    mov         dword ptr [ebp-28],0C0
 0042DE92    mov         eax,[0055C664];gvar_0055C664
 0042DE97    mov         dword ptr [ebp-18],eax
 0042DE9A    mov         dword ptr [ebp-0C],10
 0042DEA1    push        7F00
 0042DEA6    push        0
 0042DEA8    call        user32.LoadCursorA
 0042DEAD    mov         dword ptr [ebp-10],eax
 0042DEB0    call        kernel32.GetVersion
 0042DEB5    test        eax,80000000
>0042DEBA    jne         0042DF21
 0042DEBC    mov         eax,407AF4;user32.DefWindowProcW:Longint
 0042DEC1    mov         dword ptr [ebp-24],eax
 0042DEC4    mov         eax,42E02C
 0042DEC9    mov         dword ptr [ebp-4],eax
 0042DECC    lea         eax,[ebp-28]
 0042DECF    push        eax
 0042DED0    call        user32.RegisterClassW
 0042DED5    push        0C80000
 0042DEDA    push        0
 0042DEDC    push        0
 0042DEDE    push        0C8
 0042DEE3    push        0C8
 0042DEE8    mov         eax,dword ptr [ebp+8]
 0042DEEB    mov         eax,dword ptr [eax-8]
 0042DEEE    push        eax
 0042DEEF    push        0
 0042DEF1    mov         eax,[0055C664];gvar_0055C664
 0042DEF6    push        eax
 0042DEF7    push        0
 0042DEF9    mov         eax,dword ptr [ebp+8]
 0042DEFC    mov         eax,dword ptr [eax-4]
 0042DEFF    mov         eax,dword ptr [eax+14]
 0042DF02    call        @WStrToPWChar
 0042DF07    mov         ecx,eax
 0042DF09    mov         edx,dword ptr [ebp-4]
 0042DF0C    mov         eax,1
 0042DF11    call        004083CC
 0042DF16    mov         edx,dword ptr [ebp+8]
 0042DF19    mov         edx,dword ptr [edx-4]
 0042DF1C    mov         dword ptr [edx+2C],eax
>0042DF1F    jmp         0042DF8F
 0042DF21    mov         eax,407AEC;user32.DefWindowProcA:Longint
 0042DF26    mov         dword ptr [ebp-24],eax
 0042DF29    mov         eax,42E050
 0042DF2E    mov         dword ptr [ebp-4],eax
 0042DF31    lea         eax,[ebp-28]
 0042DF34    push        eax
 0042DF35    call        user32.RegisterClassA
 0042DF3A    push        0C80000
 0042DF3F    push        0
 0042DF41    push        0
 0042DF43    push        0C8
 0042DF48    push        0C8
 0042DF4D    mov         eax,dword ptr [ebp+8]
 0042DF50    mov         eax,dword ptr [eax-8]
 0042DF53    push        eax
 0042DF54    push        0
 0042DF56    mov         eax,[0055C664];gvar_0055C664
 0042DF5B    push        eax
 0042DF5C    push        0
 0042DF5E    lea         eax,[ebp-2C]
 0042DF61    mov         edx,dword ptr [ebp+8]
 0042DF64    mov         edx,dword ptr [edx-4]
 0042DF67    mov         edx,dword ptr [edx+14]
 0042DF6A    call        @LStrFromWStr
 0042DF6F    mov         eax,dword ptr [ebp-2C]
 0042DF72    call        @LStrToPChar
 0042DF77    mov         ecx,eax
 0042DF79    mov         edx,dword ptr [ebp-4]
 0042DF7C    mov         eax,1
 0042DF81    call        00408368
 0042DF86    mov         edx,dword ptr [ebp+8]
 0042DF89    mov         edx,dword ptr [edx-4]
 0042DF8C    mov         dword ptr [edx+2C],eax
 0042DF8F    mov         edx,42CD8C
 0042DF94    mov         eax,dword ptr [ebp+8]
 0042DF97    mov         eax,dword ptr [eax-4]
 0042DF9A    mov         ecx,4
 0042DF9F    call        0040EF08
 0042DFA4    mov         edx,dword ptr [ebp+8]
 0042DFA7    mov         dword ptr [edx-0C],eax
 0042DFAA    mov         eax,dword ptr [ebp+8]
 0042DFAD    mov         eax,dword ptr [eax-0C]
 0042DFB0    push        eax
 0042DFB1    push        0FC
 0042DFB3    mov         eax,dword ptr [ebp+8]
 0042DFB6    mov         eax,dword ptr [eax-4]
 0042DFB9    mov         eax,dword ptr [eax+2C]
 0042DFBC    push        eax
 0042DFBD    call        user32.SetWindowLongA
 0042DFC2    push        0
 0042DFC4    mov         eax,dword ptr [ebp+8]
 0042DFC7    mov         eax,dword ptr [eax-4]
 0042DFCA    mov         eax,dword ptr [eax+2C]
 0042DFCD    push        eax
 0042DFCE    call        user32.GetSystemMenu
 0042DFD3    mov         ebx,eax
 0042DFD5    push        0
 0042DFD7    push        0F020
 0042DFDC    push        ebx
 0042DFDD    call        user32.RemoveMenu
 0042DFE2    push        0
 0042DFE4    push        0F030
 0042DFE9    push        ebx
 0042DFEA    call        user32.RemoveMenu
 0042DFEF    push        0
 0042DFF1    push        0F120
 0042DFF6    push        ebx
 0042DFF7    call        user32.RemoveMenu
 0042DFFC    push        0
 0042DFFE    push        0F000
 0042E003    push        ebx
 0042E004    call        user32.RemoveMenu
 0042E009    xor         eax,eax
 0042E00B    pop         edx
 0042E00C    pop         ecx
 0042E00D    pop         ecx
 0042E00E    mov         dword ptr fs:[eax],edx
 0042E011    push        42E026
 0042E016    lea         eax,[ebp-2C]
 0042E019    call        @LStrClr
 0042E01E    ret
>0042E01F    jmp         @HandleFinally
>0042E024    jmp         0042E016
 0042E026    pop         ebx
 0042E027    mov         esp,ebp
 0042E029    pop         ebp
 0042E02A    ret
end;*}

//0042E064
{*procedure sub_0042E064(?:AnsiString; ?:?; ?:?; ?:?);
begin
 0042E064    push        ebp
 0042E065    mov         ebp,esp
 0042E067    push        ecx
 0042E068    push        ebx
 0042E069    push        esi
 0042E06A    push        edi
 0042E06B    mov         byte ptr [ebp-1],cl
 0042E06E    mov         edi,edx
 0042E070    mov         esi,eax
 0042E072    mov         eax,dword ptr [ebp+8]
 0042E075    mov         eax,dword ptr [eax-4]
 0042E078    cmp         dword ptr [eax+38],0
>0042E07C    je          0042E0A0
 0042E07E    mov         eax,dword ptr [ebp+8]
 0042E081    mov         eax,dword ptr [eax-14]
 0042E084    push        eax
 0042E085    mov         eax,dword ptr [ebp+8]
 0042E088    mov         eax,dword ptr [eax-10]
 0042E08B    push        eax
 0042E08C    call        gdi32.SelectObject
 0042E091    mov         eax,dword ptr [ebp+8]
 0042E094    mov         eax,dword ptr [eax-4]
 0042E097    mov         eax,dword ptr [eax+38]
 0042E09A    push        eax
 0042E09B    call        gdi32.DeleteObject
 0042E0A0    mov         cl,byte ptr [ebp-1]
 0042E0A3    mov         edx,edi
 0042E0A5    mov         eax,esi
 0042E0A7    call        00429C34
 0042E0AC    mov         ebx,eax
 0042E0AE    mov         eax,dword ptr [ebp+8]
 0042E0B1    mov         eax,dword ptr [eax-4]
 0042E0B4    mov         dword ptr [eax+38],ebx
 0042E0B7    mov         eax,dword ptr [ebp+8]
 0042E0BA    push        ebx
 0042E0BB    mov         eax,dword ptr [ebp+8]
 0042E0BE    mov         eax,dword ptr [eax-10]
 0042E0C1    push        eax
 0042E0C2    call        gdi32.SelectObject
 0042E0C7    mov         edx,dword ptr [ebp+8]
 0042E0CA    mov         dword ptr [edx-14],eax
 0042E0CD    pop         edi
 0042E0CE    pop         esi
 0042E0CF    pop         ebx
 0042E0D0    pop         ecx
 0042E0D1    pop         ebp
 0042E0D2    ret
end;*}

//0042E0D4
{*procedure sub_0042E0D4(?:?; ?:?);
begin
 0042E0D4    push        ebp
 0042E0D5    mov         ebp,esp
 0042E0D7    xor         ecx,ecx
 0042E0D9    push        ecx
 0042E0DA    push        ecx
 0042E0DB    push        ecx
 0042E0DC    push        ecx
 0042E0DD    push        ecx
 0042E0DE    push        ebx
 0042E0DF    push        esi
 0042E0E0    mov         ebx,eax
 0042E0E2    xor         eax,eax
 0042E0E4    push        ebp
 0042E0E5    push        42E1EF
 0042E0EA    push        dword ptr fs:[eax]
 0042E0ED    mov         dword ptr fs:[eax],esp
 0042E0F0    lea         eax,[ebp-4]
 0042E0F3    mov         edx,ebx
 0042E0F5    mov         ecx,42E1FC;['{94D23487-7861-4FD8-93FA-E62680ECAC99}']
 0042E0FA    call        @IntfCast
 0042E0FF    mov         eax,dword ptr [ebp-4]
 0042E102    mov         edx,dword ptr [eax]
 0042E104    call        dword ptr [edx+28]
 0042E107    mov         ebx,eax
 0042E109    cmp         byte ptr [ebx+50],0
>0042E10D    je          0042E118
 0042E10F    mov         dword ptr [ebx+38],17
>0042E116    jmp         0042E11F
 0042E118    mov         dword ptr [ebx+38],20
 0042E11F    cmp         byte ptr [ebx+50],0
>0042E123    je          0042E172
 0042E125    mov         eax,dword ptr [ebp+8]
 0042E128    push        eax
 0042E129    xor         ecx,ecx
 0042E12B    mov         edx,0B
 0042E130    mov         eax,42E214;'Tahoma'
 0042E135    call        0042E064
 0042E13A    pop         ecx
 0042E13B    push        0
 0042E13D    lea         eax,[ebp-0C]
 0042E140    push        eax
 0042E141    lea         edx,[ebp-10]
 0042E144    mov         eax,ebx
 0042E146    call        0042AC44
 0042E14B    mov         edx,dword ptr [ebp-10]
 0042E14E    mov         eax,dword ptr [ebp+8]
 0042E151    mov         eax,dword ptr [eax-10]
 0042E154    xor         ecx,ecx
 0042E156    call        00429CB4
 0042E15B    mov         esi,dword ptr [ebp-0C]
 0042E15E    add         esi,14
 0042E161    mov         dword ptr [ebx+34],esi
 0042E164    cmp         esi,4B
>0042E167    jge         0042E1BD
 0042E169    mov         dword ptr [ebx+34],4B
>0042E170    jmp         0042E1BD
 0042E172    mov         eax,dword ptr [ebp+8]
 0042E175    push        eax
 0042E176    xor         ecx,ecx
 0042E178    mov         edx,0F
 0042E17D    mov         eax,42E224;'Arial'
 0042E182    call        0042E064
 0042E187    pop         ecx
 0042E188    push        0
 0042E18A    lea         eax,[ebp-0C]
 0042E18D    push        eax
 0042E18E    lea         edx,[ebp-14]
 0042E191    mov         eax,ebx
 0042E193    call        0042AC44
 0042E198    mov         edx,dword ptr [ebp-14]
 0042E19B    mov         eax,dword ptr [ebp+8]
 0042E19E    mov         eax,dword ptr [eax-10]
 0042E1A1    xor         ecx,ecx
 0042E1A3    call        00429CB4
 0042E1A8    mov         esi,dword ptr [ebp-0C]
 0042E1AB    add         esi,14
 0042E1AE    mov         dword ptr [ebx+34],esi
 0042E1B1    cmp         esi,55
>0042E1B4    jge         0042E1BD
 0042E1B6    mov         dword ptr [ebx+34],55
 0042E1BD    cmp         byte ptr [ebx+51],0
>0042E1C1    je          0042E1CC
 0042E1C3    mov         eax,dword ptr [ebx+2C]
 0042E1C6    sub         eax,8
 0042E1C9    mov         dword ptr [ebx+34],eax
 0042E1CC    xor         eax,eax
 0042E1CE    pop         edx
 0042E1CF    pop         ecx
 0042E1D0    pop         ecx
 0042E1D1    mov         dword ptr fs:[eax],edx
 0042E1D4    push        42E1F6
 0042E1D9    lea         eax,[ebp-14]
 0042E1DC    mov         edx,2
 0042E1E1    call        @WStrArrayClr
 0042E1E6    lea         eax,[ebp-4]
 0042E1E9    call        @IntfClear
 0042E1EE    ret
>0042E1EF    jmp         @HandleFinally
>0042E1F4    jmp         0042E1D9
 0042E1F6    pop         esi
 0042E1F7    pop         ebx
 0042E1F8    mov         esp,ebp
 0042E1FA    pop         ebp
 0042E1FB    ret
end;*}

//0042E22C
{*procedure sub_0042E22C(?:?; ?:?; ?:?);
begin
 0042E22C    push        ebp
 0042E22D    mov         ebp,esp
 0042E22F    push        0
 0042E231    push        0
 0042E233    push        ebx
 0042E234    push        esi
 0042E235    push        edi
 0042E236    mov         edi,edx
 0042E238    mov         ebx,eax
 0042E23A    xor         eax,eax
 0042E23C    push        ebp
 0042E23D    push        42E2E2
 0042E242    push        dword ptr fs:[eax]
 0042E245    mov         dword ptr fs:[eax],esp
 0042E248    lea         eax,[ebp-4]
 0042E24B    mov         edx,ebx
 0042E24D    mov         ecx,42E2F0;['{94D23487-7861-4FD8-93FA-E62680ECAC99}']
 0042E252    call        @IntfCast
 0042E257    mov         eax,dword ptr [ebp-4]
 0042E25A    mov         edx,dword ptr [eax]
 0042E25C    call        dword ptr [edx+28]
 0042E25F    mov         ebx,eax
 0042E261    cmp         byte ptr [ebx+50],0
>0042E265    je          0042E26B
 0042E267    xor         esi,esi
>0042E269    jmp         0042E270
 0042E26B    mov         esi,0B
 0042E270    cmp         byte ptr [ebx+51],0
>0042E274    jne         0042E27C
 0042E276    or          esi,10000000
 0042E27C    push        42E304
 0042E281    lea         edx,[ebp-8]
 0042E284    mov         eax,ebx
 0042E286    call        0042AC44
 0042E28B    mov         eax,dword ptr [ebp-8]
 0042E28E    push        eax
 0042E28F    or          esi,4000
 0042E295    push        esi
 0042E296    push        1
 0042E298    mov         eax,dword ptr [ebp+8]
 0042E29B    mov         eax,dword ptr [eax-4]
 0042E29E    mov         ecx,dword ptr [eax+34]
 0042E2A1    sub         ecx,dword ptr [ebx+38]
 0042E2A4    sub         ecx,9
 0042E2A7    mov         edx,edi
 0042E2A9    mov         eax,ebx
 0042E2AB    call        0042A52C
 0042E2B0    push        0
 0042E2B2    mov         eax,dword ptr [ebx+0C]
 0042E2B5    mov         eax,dword ptr [eax+38]
 0042E2B8    push        eax
 0042E2B9    push        30
 0042E2BB    mov         eax,dword ptr [ebx+14]
 0042E2BE    push        eax
 0042E2BF    call        user32.SendMessageA
 0042E2C4    xor         eax,eax
 0042E2C6    pop         edx
 0042E2C7    pop         ecx
 0042E2C8    pop         ecx
 0042E2C9    mov         dword ptr fs:[eax],edx
 0042E2CC    push        42E2E9
 0042E2D1    lea         eax,[ebp-8]
 0042E2D4    call        @WStrClr
 0042E2D9    lea         eax,[ebp-4]
 0042E2DC    call        @IntfClear
 0042E2E1    ret
>0042E2E2    jmp         @HandleFinally
>0042E2E7    jmp         0042E2D1
 0042E2E9    pop         edi
 0042E2EA    pop         esi
 0042E2EB    pop         ebx
 0042E2EC    pop         ecx
 0042E2ED    pop         ecx
 0042E2EE    pop         ebp
 0042E2EF    ret
end;*}

//0042E314
{*function sub_0042E314(?:?; ?:?):?;
begin
 0042E314    push        ebp
 0042E315    mov         ebp,esp
 0042E317    mov         ecx,20
 0042E31C    push        0
 0042E31E    push        0
 0042E320    dec         ecx
>0042E321    jne         0042E31C
 0042E323    push        ebx
 0042E324    push        esi
 0042E325    push        edi
 0042E326    mov         dword ptr [ebp-8],edx
 0042E329    mov         dword ptr [ebp-4],eax
 0042E32C    lea         ebx,[ebp-4]
 0042E32F    xor         eax,eax
 0042E331    push        ebp
 0042E332    push        42EC82
 0042E337    push        dword ptr fs:[eax]
 0042E33A    mov         dword ptr fs:[eax],esp
 0042E33D    mov         eax,dword ptr [ebx]
 0042E33F    cmp         byte ptr [eax+5C],0
>0042E343    je          0042E34C
 0042E345    mov         bl,2
>0042E347    jmp         0042EB03
 0042E34C    cmp         dword ptr [ebp-8],0
>0042E350    je          0042E35F
 0042E352    mov         eax,dword ptr [ebp-8]
 0042E355    push        eax
 0042E356    call        user32.IsWindowEnabled
 0042E35B    test        eax,eax
>0042E35D    jne         0042E363
 0042E35F    xor         eax,eax
>0042E361    jmp         0042E365
 0042E363    mov         al,1
 0042E365    mov         byte ptr [ebp-1D],al
 0042E368    cmp         byte ptr [ebp-1D],0
>0042E36C    je          0042E379
 0042E36E    push        0
 0042E370    mov         eax,dword ptr [ebp-8]
 0042E373    push        eax
 0042E374    call        user32.EnableWindow
 0042E379    push        ebp
 0042E37A    call        0042DE64
 0042E37F    pop         ecx
 0042E380    push        0
 0042E382    call        gdi32.CreateCompatibleDC
 0042E387    mov         dword ptr [ebp-10],eax
 0042E38A    push        ebp
 0042E38B    lea         edx,[ebp-54]
 0042E38E    mov         eax,dword ptr [ebx]
 0042E390    call        0042DB4C
 0042E395    mov         eax,dword ptr [ebp-54]
 0042E398    call        0042E0D4
 0042E39D    pop         ecx
 0042E39E    push        ebp
 0042E39F    lea         edx,[ebp-58]
 0042E3A2    mov         eax,dword ptr [ebx]
 0042E3A4    call        0042DB78
 0042E3A9    mov         eax,dword ptr [ebp-58]
 0042E3AC    call        0042E0D4
 0042E3B1    pop         ecx
 0042E3B2    push        ebp
 0042E3B3    lea         edx,[ebp-5C]
 0042E3B6    mov         eax,dword ptr [ebx]
 0042E3B8    call        0042DBA4
 0042E3BD    mov         eax,dword ptr [ebp-5C]
 0042E3C0    call        0042E0D4
 0042E3C5    pop         ecx
 0042E3C6    push        ebp
 0042E3C7    mov         cl,1
 0042E3C9    mov         edx,0F
 0042E3CE    mov         eax,42ECA0;'Arial'
 0042E3D3    call        0042E064
 0042E3D8    pop         ecx
 0042E3D9    push        0
 0042E3DB    lea         eax,[ebp-64]
 0042E3DE    push        eax
 0042E3DF    mov         eax,dword ptr [ebx]
 0042E3E1    mov         edx,dword ptr [eax+18]
 0042E3E4    xor         ecx,ecx
 0042E3E6    mov         eax,dword ptr [ebp-10]
 0042E3E9    call        00429CB4
 0042E3EE    mov         esi,dword ptr [ebp-64]
 0042E3F1    add         esi,0B
 0042E3F4    add         esi,10
 0042E3F7    mov         eax,dword ptr [ebx]
 0042E3F9    imul        eax,dword ptr [eax+20],13
 0042E3FD    add         esi,eax
 0042E3FF    add         esi,9
 0042E402    lea         edx,[ebp-6C]
 0042E405    mov         eax,dword ptr [ebx]
 0042E407    call        0042DB4C
 0042E40C    mov         edx,dword ptr [ebp-6C]
 0042E40F    lea         eax,[ebp-68]
 0042E412    mov         ecx,42ECA8;['{94D23487-7861-4FD8-93FA-E62680ECAC99}']
 0042E417    call        @IntfCast
 0042E41C    mov         eax,dword ptr [ebp-68]
 0042E41F    mov         edx,dword ptr [eax]
 0042E421    call        dword ptr [edx+28]
 0042E424    mov         edi,dword ptr [eax+34]
 0042E427    lea         edx,[ebp-74]
 0042E42A    mov         eax,dword ptr [ebx]
 0042E42C    call        0042DB78
 0042E431    mov         edx,dword ptr [ebp-74]
 0042E434    lea         eax,[ebp-70]
 0042E437    mov         ecx,42ECA8;['{94D23487-7861-4FD8-93FA-E62680ECAC99}']
 0042E43C    call        @IntfCast
 0042E441    mov         eax,dword ptr [ebp-70]
 0042E444    mov         edx,dword ptr [eax]
 0042E446    call        dword ptr [edx+28]
 0042E449    add         edi,dword ptr [eax+34]
 0042E44C    lea         edx,[ebp-7C]
 0042E44F    mov         eax,dword ptr [ebx]
 0042E451    call        0042DBA4
 0042E456    mov         edx,dword ptr [ebp-7C]
 0042E459    lea         eax,[ebp-78]
 0042E45C    mov         ecx,42ECA8;['{94D23487-7861-4FD8-93FA-E62680ECAC99}']
 0042E461    call        @IntfCast
 0042E466    mov         eax,dword ptr [ebp-78]
 0042E469    mov         edx,dword ptr [eax]
 0042E46B    call        dword ptr [edx+28]
 0042E46E    add         edi,dword ptr [eax+34]
 0042E471    add         edi,20
 0042E474    mov         eax,dword ptr [ebx]
 0042E476    mov         dword ptr [eax+30],edi
 0042E479    mov         eax,dword ptr [ebx]
 0042E47B    cmp         dword ptr [eax+30],13B
>0042E482    jge         0042E48D
 0042E484    mov         eax,dword ptr [ebx]
 0042E486    mov         dword ptr [eax+30],13B
 0042E48D    mov         eax,dword ptr [ebx]
 0042E48F    mov         eax,dword ptr [eax+3C]
 0042E492    mov         edx,dword ptr [ebx]
 0042E494    cmp         eax,dword ptr [edx+30]
>0042E497    jle         0042E49E
 0042E499    mov         edx,dword ptr [ebx]
 0042E49B    mov         dword ptr [edx+30],eax
 0042E49E    mov         eax,dword ptr [ebx]
 0042E4A0    cmp         esi,dword ptr [eax+30]
>0042E4A3    jle         0042E4AA
 0042E4A5    mov         eax,dword ptr [ebx]
 0042E4A7    mov         dword ptr [eax+30],esi
 0042E4AA    push        ebp
 0042E4AB    xor         ecx,ecx
 0042E4AD    mov         edx,0B
 0042E4B2    mov         eax,42ECC0;'Tahoma'
 0042E4B7    call        0042E064
 0042E4BC    pop         ecx
 0042E4BD    mov         dword ptr [ebp-18],28
 0042E4C4    mov         eax,dword ptr [ebx]
 0042E4C6    mov         eax,dword ptr [eax+24]
 0042E4C9    call        00405CE8
 0042E4CE    sub         eax,3
>0042E4D1    jl          0042E500
 0042E4D3    inc         eax
 0042E4D4    mov         dword ptr [ebp-24],eax
 0042E4D7    mov         esi,3
 0042E4DC    mov         eax,dword ptr [ebp-10]
 0042E4DF    push        eax
 0042E4E0    mov         eax,dword ptr [ebx]
 0042E4E2    mov         eax,dword ptr [eax+24]
 0042E4E5    mov         eax,dword ptr [eax+esi*4]
 0042E4E8    mov         edx,dword ptr [eax]
 0042E4EA    call        dword ptr [edx+28]
 0042E4ED    lea         ecx,[ebp-18]
 0042E4F0    mov         edx,15
 0042E4F5    mov         edi,dword ptr [eax]
 0042E4F7    call        dword ptr [edi+4]
 0042E4FA    inc         esi
 0042E4FB    dec         dword ptr [ebp-24]
>0042E4FE    jne         0042E4DC
 0042E500    lea         edx,[ebp-84]
 0042E506    mov         eax,dword ptr [ebx]
 0042E508    call        0042DB4C
 0042E50D    mov         edx,dword ptr [ebp-84]
 0042E513    lea         eax,[ebp-80]
 0042E516    mov         ecx,42ECA8;['{94D23487-7861-4FD8-93FA-E62680ECAC99}']
 0042E51B    call        @IntfCast
 0042E520    mov         eax,dword ptr [ebp-80]
 0042E523    mov         edx,dword ptr [eax]
 0042E525    call        dword ptr [edx+28]
 0042E528    mov         eax,dword ptr [eax+38]
 0042E52B    add         eax,dword ptr [ebp-18]
 0042E52E    add         eax,21
 0042E531    mov         edx,dword ptr [ebx]
 0042E533    mov         dword ptr [edx+34],eax
 0042E536    mov         eax,dword ptr [ebp-14]
 0042E539    push        eax
 0042E53A    mov         eax,dword ptr [ebp-10]
 0042E53D    push        eax
 0042E53E    call        gdi32.SelectObject
 0042E543    mov         eax,dword ptr [ebp-10]
 0042E546    push        eax
 0042E547    call        gdi32.DeleteDC
 0042E54C    lea         edx,[ebp-8C]
 0042E552    mov         eax,dword ptr [ebx]
 0042E554    call        0042DB4C
 0042E559    mov         edx,dword ptr [ebp-8C]
 0042E55F    lea         eax,[ebp-88]
 0042E565    mov         ecx,42ECA8;['{94D23487-7861-4FD8-93FA-E62680ECAC99}']
 0042E56A    call        @IntfCast
 0042E56F    mov         eax,dword ptr [ebp-88]
 0042E575    mov         edx,dword ptr [eax]
 0042E577    call        dword ptr [edx+28]
 0042E57A    cmp         byte ptr [eax+50],0
>0042E57E    je          0042E6EE
 0042E584    lea         edx,[ebp-94]
 0042E58A    mov         eax,dword ptr [ebx]
 0042E58C    call        0042DB78
 0042E591    mov         edx,dword ptr [ebp-94]
 0042E597    lea         eax,[ebp-90]
 0042E59D    mov         ecx,42ECA8;['{94D23487-7861-4FD8-93FA-E62680ECAC99}']
 0042E5A2    call        @IntfCast
 0042E5A7    mov         eax,dword ptr [ebp-90]
 0042E5AD    mov         edx,dword ptr [eax]
 0042E5AF    call        dword ptr [edx+28]
 0042E5B2    cmp         byte ptr [eax+51],0
>0042E5B6    je          0042E6EE
 0042E5BC    lea         edx,[ebp-9C]
 0042E5C2    mov         eax,dword ptr [ebx]
 0042E5C4    call        0042DBA4
 0042E5C9    mov         edx,dword ptr [ebp-9C]
 0042E5CF    lea         eax,[ebp-98]
 0042E5D5    mov         ecx,42ECA8;['{94D23487-7861-4FD8-93FA-E62680ECAC99}']
 0042E5DA    call        @IntfCast
 0042E5DF    mov         eax,dword ptr [ebp-98]
 0042E5E5    mov         edx,dword ptr [eax]
 0042E5E7    call        dword ptr [edx+28]
 0042E5EA    cmp         byte ptr [eax+50],0
>0042E5EE    je          0042E6EE
 0042E5F4    push        ebp
 0042E5F5    lea         edx,[ebp-0A4]
 0042E5FB    mov         eax,dword ptr [ebx]
 0042E5FD    call        0042DBA4
 0042E602    mov         edx,dword ptr [ebp-0A4]
 0042E608    lea         eax,[ebp-0A0]
 0042E60E    mov         ecx,42ECA8;['{94D23487-7861-4FD8-93FA-E62680ECAC99}']
 0042E613    call        @IntfCast
 0042E618    mov         eax,dword ptr [ebp-0A0]
 0042E61E    mov         edx,dword ptr [eax]
 0042E620    call        dword ptr [edx+28]
 0042E623    mov         edx,dword ptr [ebx]
 0042E625    mov         edx,dword ptr [edx+30]
 0042E628    sub         edx,8
 0042E62B    sub         edx,dword ptr [eax+34]
 0042E62E    push        edx
 0042E62F    lea         edx,[ebp-0A8]
 0042E635    mov         eax,dword ptr [ebx]
 0042E637    call        0042DBA4
 0042E63C    mov         eax,dword ptr [ebp-0A8]
 0042E642    pop         edx
 0042E643    call        0042E22C
 0042E648    pop         ecx
 0042E649    push        ebp
 0042E64A    lea         edx,[ebp-0B0]
 0042E650    mov         eax,dword ptr [ebx]
 0042E652    call        0042DBA4
 0042E657    mov         edx,dword ptr [ebp-0B0]
 0042E65D    lea         eax,[ebp-0AC]
 0042E663    mov         ecx,42ECA8;['{94D23487-7861-4FD8-93FA-E62680ECAC99}']
 0042E668    call        @IntfCast
 0042E66D    mov         eax,dword ptr [ebp-0AC]
 0042E673    mov         edx,dword ptr [eax]
 0042E675    call        dword ptr [edx+28]
 0042E678    mov         esi,dword ptr [eax+2C]
 0042E67B    lea         edx,[ebp-0B8]
 0042E681    mov         eax,dword ptr [ebx]
 0042E683    call        0042DB4C
 0042E688    mov         edx,dword ptr [ebp-0B8]
 0042E68E    lea         eax,[ebp-0B4]
 0042E694    mov         ecx,42ECA8;['{94D23487-7861-4FD8-93FA-E62680ECAC99}']
 0042E699    call        @IntfCast
 0042E69E    mov         eax,dword ptr [ebp-0B4]
 0042E6A4    mov         edx,dword ptr [eax]
 0042E6A6    call        dword ptr [edx+28]
 0042E6A9    sub         esi,dword ptr [eax+34]
 0042E6AC    sub         esi,8
 0042E6AF    push        esi
 0042E6B0    lea         edx,[ebp-0BC]
 0042E6B6    mov         eax,dword ptr [ebx]
 0042E6B8    call        0042DB4C
 0042E6BD    mov         eax,dword ptr [ebp-0BC]
 0042E6C3    pop         edx
 0042E6C4    call        0042E22C
 0042E6C9    pop         ecx
 0042E6CA    push        ebp
 0042E6CB    lea         edx,[ebp-0C0]
 0042E6D1    mov         eax,dword ptr [ebx]
 0042E6D3    call        0042DB78
 0042E6D8    mov         eax,dword ptr [ebp-0C0]
 0042E6DE    mov         edx,8
 0042E6E3    call        0042E22C
 0042E6E8    pop         ecx
>0042E6E9    jmp         0042E7B2
 0042E6EE    push        ebp
 0042E6EF    lea         edx,[ebp-0C4]
 0042E6F5    mov         eax,dword ptr [ebx]
 0042E6F7    call        0042DB4C
 0042E6FC    mov         eax,dword ptr [ebp-0C4]
 0042E702    mov         edx,8
 0042E707    call        0042E22C
 0042E70C    pop         ecx
 0042E70D    push        ebp
 0042E70E    lea         edx,[ebp-0CC]
 0042E714    mov         eax,dword ptr [ebx]
 0042E716    call        0042DB4C
 0042E71B    mov         edx,dword ptr [ebp-0CC]
 0042E721    lea         eax,[ebp-0C8]
 0042E727    mov         ecx,42ECA8;['{94D23487-7861-4FD8-93FA-E62680ECAC99}']
 0042E72C    call        @IntfCast
 0042E731    mov         eax,dword ptr [ebp-0C8]
 0042E737    mov         edx,dword ptr [eax]
 0042E739    call        dword ptr [edx+28]
 0042E73C    mov         eax,dword ptr [eax+34]
 0042E73F    add         eax,8
 0042E742    push        eax
 0042E743    lea         edx,[ebp-0D0]
 0042E749    mov         eax,dword ptr [ebx]
 0042E74B    call        0042DB78
 0042E750    mov         eax,dword ptr [ebp-0D0]
 0042E756    pop         edx
 0042E757    call        0042E22C
 0042E75C    pop         ecx
 0042E75D    push        ebp
 0042E75E    lea         edx,[ebp-0D8]
 0042E764    mov         eax,dword ptr [ebx]
 0042E766    call        0042DBA4
 0042E76B    mov         edx,dword ptr [ebp-0D8]
 0042E771    lea         eax,[ebp-0D4]
 0042E777    mov         ecx,42ECA8;['{94D23487-7861-4FD8-93FA-E62680ECAC99}']
 0042E77C    call        @IntfCast
 0042E781    mov         eax,dword ptr [ebp-0D4]
 0042E787    mov         edx,dword ptr [eax]
 0042E789    call        dword ptr [edx+28]
 0042E78C    mov         edx,dword ptr [ebx]
 0042E78E    mov         edx,dword ptr [edx+30]
 0042E791    sub         edx,8
 0042E794    sub         edx,dword ptr [eax+34]
 0042E797    push        edx
 0042E798    lea         edx,[ebp-0DC]
 0042E79E    mov         eax,dword ptr [ebx]
 0042E7A0    call        0042DBA4
 0042E7A5    mov         eax,dword ptr [ebp-0DC]
 0042E7AB    pop         edx
 0042E7AC    call        0042E22C
 0042E7B1    pop         ecx
 0042E7B2    mov         eax,dword ptr [ebx]
 0042E7B4    call        0042D824
 0042E7B9    mov         eax,dword ptr [ebx]
 0042E7BB    mov         eax,dword ptr [eax+44]
 0042E7BE    xor         edx,edx
 0042E7C0    call        @WStrCmp
>0042E7C5    je          0042E7DE
 0042E7C7    lea         eax,[ebp-1C]
 0042E7CA    push        eax
 0042E7CB    mov         ecx,42ECC8
 0042E7D0    mov         eax,dword ptr [ebx]
 0042E7D2    mov         edx,dword ptr [eax+44]
 0042E7D5    mov         eax,dword ptr [ebx]
 0042E7D7    call        0042D8E0
>0042E7DC    jmp         0042E7E6
 0042E7DE    lea         eax,[ebp-1C]
 0042E7E1    call        @IntfClear
 0042E7E6    cmp         dword ptr [ebp-1C],0
>0042E7EA    je          0042E7F6
 0042E7EC    mov         eax,dword ptr [ebp-1C]
 0042E7EF    mov         edx,dword ptr [eax]
 0042E7F1    call        dword ptr [edx+24]
>0042E7F4    jmp         0042E828
 0042E7F6    lea         edx,[ebp-0E4]
 0042E7FC    mov         eax,dword ptr [ebx]
 0042E7FE    call        0042DBA4
 0042E803    mov         edx,dword ptr [ebp-0E4]
 0042E809    lea         eax,[ebp-0E0]
 0042E80F    mov         ecx,42ECA8;['{94D23487-7861-4FD8-93FA-E62680ECAC99}']
 0042E814    call        @IntfCast
 0042E819    mov         edx,dword ptr [ebp-0E0]
 0042E81F    mov         cl,1
 0042E821    mov         eax,dword ptr [ebx]
 0042E823    call        0042D9D4
 0042E828    lea         eax,[ebp-50]
 0042E82B    push        eax
 0042E82C    mov         eax,dword ptr [ebx]
 0042E82E    mov         eax,dword ptr [eax+2C]
 0042E831    push        eax
 0042E832    call        user32.GetWindowRect
 0042E837    mov         esi,dword ptr [ebp-48]
 0042E83A    sub         esi,dword ptr [ebp-50]
 0042E83D    mov         edi,dword ptr [ebp-44]
 0042E840    sub         edi,dword ptr [ebp-4C]
 0042E843    lea         eax,[ebp-50]
 0042E846    push        eax
 0042E847    mov         eax,dword ptr [ebx]
 0042E849    mov         eax,dword ptr [eax+2C]
 0042E84C    push        eax
 0042E84D    call        user32.GetClientRect
 0042E852    sub         esi,dword ptr [ebp-48]
 0042E855    sub         edi,dword ptr [ebp-44]
 0042E858    push        4
 0042E85A    mov         eax,dword ptr [ebx]
 0042E85C    mov         eax,dword ptr [eax+34]
 0042E85F    add         eax,edi
 0042E861    push        eax
 0042E862    mov         eax,dword ptr [ebx]
 0042E864    mov         eax,dword ptr [eax+30]
 0042E867    add         eax,esi
 0042E869    push        eax
 0042E86A    push        1
 0042E86C    call        user32.GetSystemMetrics
 0042E871    mov         edx,dword ptr [ebx]
 0042E873    sub         eax,dword ptr [edx+34]
 0042E876    sub         eax,edi
 0042E878    sar         eax,1
>0042E87A    jns         0042E87F
 0042E87C    adc         eax,0
 0042E87F    push        eax
 0042E880    push        0
 0042E882    call        user32.GetSystemMetrics
 0042E887    mov         edx,dword ptr [ebx]
 0042E889    sub         eax,dword ptr [edx+30]
 0042E88C    sub         eax,esi
 0042E88E    sar         eax,1
>0042E890    jns         0042E895
 0042E892    adc         eax,0
 0042E895    push        eax
 0042E896    push        0
 0042E898    mov         eax,dword ptr [ebx]
 0042E89A    mov         eax,dword ptr [eax+2C]
 0042E89D    push        eax
 0042E89E    call        user32.SetWindowPos
 0042E8A3    push        0
 0042E8A5    mov         edx,dword ptr [ebx]
 0042E8A7    test        edx,edx
>0042E8A9    je          0042E8AE
 0042E8AB    sub         edx,0FFFFFFA0
 0042E8AE    mov         cl,1
 0042E8B0    mov         eax,dword ptr [ebx]
 0042E8B2    call        0042DA74
 0042E8B7    mov         eax,dword ptr [ebx]
 0042E8B9    cmp         byte ptr [eax+5C],0
>0042E8BD    je          0042E8C6
 0042E8BF    mov         bl,2
>0042E8C1    jmp         0042EB03
 0042E8C6    push        1
 0042E8C8    mov         eax,dword ptr [ebx]
 0042E8CA    mov         eax,dword ptr [eax+2C]
 0042E8CD    push        eax
 0042E8CE    call        user32.ShowWindow
 0042E8D3    mov         eax,dword ptr [ebx]
 0042E8D5    mov         eax,dword ptr [eax+2C]
 0042E8D8    push        eax
 0042E8D9    call        user32.IsIconic
 0042E8DE    test        eax,eax
>0042E8E0    je          0042E8EF
 0042E8E2    push        9
 0042E8E4    mov         eax,dword ptr [ebx]
 0042E8E6    mov         eax,dword ptr [eax+2C]
 0042E8E9    push        eax
 0042E8EA    call        user32.ShowWindow
 0042E8EF    mov         eax,dword ptr [ebx]
 0042E8F1    mov         eax,dword ptr [eax+2C]
 0042E8F4    push        eax
 0042E8F5    call        user32.BringWindowToTop
 0042E8FA    mov         eax,dword ptr [ebx]
 0042E8FC    mov         eax,dword ptr [eax+2C]
 0042E8FF    push        eax
 0042E900    call        user32.SetForegroundWindow
 0042E905    mov         eax,dword ptr [ebx]
 0042E907    mov         eax,dword ptr [eax+48]
 0042E90A    test        eax,eax
>0042E90C    je          0042EAA6
 0042E912    push        0
 0042E914    push        eax
 0042E915    push        309
 0042E91A    mov         eax,dword ptr [ebx]
 0042E91C    mov         eax,dword ptr [eax+2C]
 0042E91F    push        eax
 0042E920    call        user32.SetTimer
>0042E925    jmp         0042EAA6
 0042E92A    cmp         dword ptr [ebp-3C],100
>0042E931    jne         0042E974
 0042E933    cmp         dword ptr [ebp-38],1B
>0042E937    jne         0042E974
 0042E939    lea         edx,[ebp-0E8]
 0042E93F    mov         eax,dword ptr [ebx]
 0042E941    call        0042DBA4
 0042E946    mov         eax,dword ptr [ebp-0E8]
 0042E94C    mov         edx,dword ptr [eax]
 0042E94E    call        dword ptr [edx+1C]
 0042E951    test        al,al
>0042E953    je          0042E974
 0042E955    mov         eax,dword ptr [ebx]
 0042E957    mov         byte ptr [eax+50],3
 0042E95B    mov         eax,dword ptr [ebx]
 0042E95D    mov         eax,dword ptr [eax+2C]
 0042E960    mov         dword ptr [ebp-40],eax
 0042E963    mov         dword ptr [ebp-3C],10
 0042E96A    xor         eax,eax
 0042E96C    mov         dword ptr [ebp-38],eax
 0042E96F    xor         eax,eax
 0042E971    mov         dword ptr [ebp-34],eax
 0042E974    cmp         dword ptr [ebp-3C],102
>0042E97B    jne         0042E9B7
 0042E97D    cmp         dword ptr [ebp-38],9
>0042E981    jne         0042E9B7
 0042E983    lea         ecx,[ebp-0EC]
 0042E989    mov         edx,dword ptr [ebp-40]
 0042E98C    mov         eax,dword ptr [ebx]
 0042E98E    call        0042D980
 0042E993    mov         eax,dword ptr [ebp-0EC]
 0042E999    push        eax
 0042E99A    push        10
 0042E99C    call        user32.GetKeyState
 0042E9A1    movsx       eax,ax
 0042E9A4    test        ah,80
 0042E9A7    sete        cl
 0042E9AA    mov         eax,dword ptr [ebx]
 0042E9AC    pop         edx
 0042E9AD    call        0042D9D4
>0042E9B2    jmp         0042EAA6
 0042E9B7    cmp         dword ptr [ebp-3C],100
>0042E9BE    jne         0042EA81
 0042E9C4    cmp         dword ptr [ebp-38],0D
>0042E9C8    jne         0042EA81
 0042E9CE    lea         ecx,[ebp-0F0]
 0042E9D4    mov         edx,dword ptr [ebp-40]
 0042E9D7    mov         eax,dword ptr [ebx]
 0042E9D9    call        0042D980
 0042E9DE    cmp         dword ptr [ebp-0F0],0
>0042E9E5    je          0042EA81
 0042E9EB    lea         ecx,[ebp-0F4]
 0042E9F1    mov         edx,dword ptr [ebp-40]
 0042E9F4    mov         eax,dword ptr [ebx]
 0042E9F6    call        0042D980
 0042E9FB    mov         eax,dword ptr [ebp-0F4]
 0042EA01    mov         edx,dword ptr [eax]
 0042EA03    call        dword ptr [edx+28]
 0042EA06    mov         edx,dword ptr ds:[42901C];TNVButton
 0042EA0C    call        @IsClass
 0042EA11    test        al,al
>0042EA13    jne         0042EA81
 0042EA15    lea         ecx,[ebp-0F8]
 0042EA1B    mov         edx,dword ptr [ebp-40]
 0042EA1E    mov         eax,dword ptr [ebx]
 0042EA20    call        0042D980
 0042EA25    mov         eax,dword ptr [ebp-0F8]
 0042EA2B    mov         edx,dword ptr [eax]
 0042EA2D    call        dword ptr [edx+28]
 0042EA30    mov         edx,dword ptr ds:[42930C];TNVEdit
 0042EA36    call        @IsClass
 0042EA3B    test        al,al
>0042EA3D    je          0042EA60
 0042EA3F    lea         ecx,[ebp-0FC]
 0042EA45    mov         edx,dword ptr [ebp-40]
 0042EA48    mov         eax,dword ptr [ebx]
 0042EA4A    call        0042D980
 0042EA4F    mov         eax,dword ptr [ebp-0FC]
 0042EA55    mov         edx,dword ptr [eax]
 0042EA57    call        dword ptr [edx+28]
 0042EA5A    cmp         dword ptr [eax+48],1
>0042EA5E    jg          0042EA81
 0042EA60    lea         ecx,[ebp-100]
 0042EA66    mov         edx,dword ptr [ebp-40]
 0042EA69    mov         eax,dword ptr [ebx]
 0042EA6B    call        0042D980
 0042EA70    mov         edx,dword ptr [ebp-100]
 0042EA76    mov         cl,1
 0042EA78    mov         eax,dword ptr [ebx]
 0042EA7A    call        0042D9D4
>0042EA7F    jmp         0042EAA6
 0042EA81    lea         eax,[ebp-40]
 0042EA84    push        eax
 0042EA85    mov         eax,dword ptr [ebx]
 0042EA87    mov         eax,dword ptr [eax+2C]
 0042EA8A    push        eax
 0042EA8B    call        user32.IsDialogMessageA
 0042EA90    test        eax,eax
>0042EA92    jne         0042EAA6
 0042EA94    lea         eax,[ebp-40]
 0042EA97    push        eax
 0042EA98    call        user32.TranslateMessage
 0042EA9D    lea         eax,[ebp-40]
 0042EAA0    push        eax
 0042EAA1    call        user32.DispatchMessageA
 0042EAA6    mov         eax,dword ptr [ebx]
 0042EAA8    mov         eax,dword ptr [eax+2C]
 0042EAAB    push        eax
 0042EAAC    call        user32.IsWindow
 0042EAB1    test        eax,eax
>0042EAB3    je          0042EACE
 0042EAB5    push        0
 0042EAB7    push        0
 0042EAB9    push        0
 0042EABB    lea         eax,[ebp-40]
 0042EABE    push        eax
 0042EABF    call        user32.GetMessageA
 0042EAC4    inc         eax
 0042EAC5    cmp         eax,1
>0042EAC8    ja          0042E92A
 0042EACE    push        8000
 0042EAD3    push        0
 0042EAD5    mov         eax,dword ptr [ebp-0C]
 0042EAD8    push        eax
 0042EAD9    call        kernel32.VirtualFree
 0042EADE    mov         eax,dword ptr [ebx]
 0042EAE0    mov         bl,byte ptr [eax+50]
 0042EAE3    cmp         dword ptr [ebp-8],0
 0042EAE7    setne       al
 0042EAEA    and         al,byte ptr [ebp-1D]
>0042EAED    je          0042EB03
 0042EAEF    push        0FF
 0042EAF1    mov         eax,dword ptr [ebp-8]
 0042EAF4    push        eax
 0042EAF5    call        user32.EnableWindow
 0042EAFA    mov         eax,dword ptr [ebp-8]
 0042EAFD    push        eax
 0042EAFE    call        user32.SetActiveWindow
 0042EB03    xor         eax,eax
 0042EB05    pop         edx
 0042EB06    pop         ecx
 0042EB07    pop         ecx
 0042EB08    mov         dword ptr fs:[eax],edx
 0042EB0B    push        42EC8C
 0042EB10    lea         eax,[ebp-100]
 0042EB16    mov         edx,dword ptr ds:[428DB4];INVItemEx
 0042EB1C    mov         ecx,6
 0042EB21    call        @FinalizeArray
 0042EB26    lea         eax,[ebp-0E8]
 0042EB2C    mov         edx,dword ptr ds:[428D44];INVButton
 0042EB32    mov         ecx,2
 0042EB37    call        @FinalizeArray
 0042EB3C    lea         eax,[ebp-0E0]
 0042EB42    call        @IntfClear
 0042EB47    lea         eax,[ebp-0DC]
 0042EB4D    mov         edx,dword ptr ds:[428D44];INVButton
 0042EB53    mov         ecx,2
 0042EB58    call        @FinalizeArray
 0042EB5D    lea         eax,[ebp-0D4]
 0042EB63    call        @IntfClear
 0042EB68    lea         eax,[ebp-0D0]
 0042EB6E    mov         edx,dword ptr ds:[428D44];INVButton
 0042EB74    mov         ecx,2
 0042EB79    call        @FinalizeArray
 0042EB7E    lea         eax,[ebp-0C8]
 0042EB84    call        @IntfClear
 0042EB89    lea         eax,[ebp-0C4]
 0042EB8F    mov         edx,dword ptr ds:[428D44];INVButton
 0042EB95    mov         ecx,4
 0042EB9A    call        @FinalizeArray
 0042EB9F    lea         eax,[ebp-0B4]
 0042EBA5    call        @IntfClear
 0042EBAA    lea         eax,[ebp-0B0]
 0042EBB0    call        @IntfClear
 0042EBB5    lea         eax,[ebp-0AC]
 0042EBBB    call        @IntfClear
 0042EBC0    lea         eax,[ebp-0A8]
 0042EBC6    mov         edx,dword ptr ds:[428D44];INVButton
 0042EBCC    mov         ecx,2
 0042EBD1    call        @FinalizeArray
 0042EBD6    lea         eax,[ebp-0A0]
 0042EBDC    call        @IntfClear
 0042EBE1    lea         eax,[ebp-9C]
 0042EBE7    call        @IntfClear
 0042EBEC    lea         eax,[ebp-98]
 0042EBF2    call        @IntfClear
 0042EBF7    lea         eax,[ebp-94]
 0042EBFD    call        @IntfClear
 0042EC02    lea         eax,[ebp-90]
 0042EC08    call        @IntfClear
 0042EC0D    lea         eax,[ebp-8C]
 0042EC13    call        @IntfClear
 0042EC18    lea         eax,[ebp-88]
 0042EC1E    call        @IntfClear
 0042EC23    lea         eax,[ebp-84]
 0042EC29    call        @IntfClear
 0042EC2E    lea         eax,[ebp-80]
 0042EC31    call        @IntfClear
 0042EC36    lea         eax,[ebp-7C]
 0042EC39    call        @IntfClear
 0042EC3E    lea         eax,[ebp-78]
 0042EC41    call        @IntfClear
 0042EC46    lea         eax,[ebp-74]
 0042EC49    call        @IntfClear
 0042EC4E    lea         eax,[ebp-70]
 0042EC51    call        @IntfClear
 0042EC56    lea         eax,[ebp-6C]
 0042EC59    call        @IntfClear
 0042EC5E    lea         eax,[ebp-68]
 0042EC61    call        @IntfClear
 0042EC66    lea         eax,[ebp-5C]
 0042EC69    mov         edx,dword ptr ds:[428D44];INVButton
 0042EC6F    mov         ecx,3
 0042EC74    call        @FinalizeArray
 0042EC79    lea         eax,[ebp-1C]
 0042EC7C    call        @IntfClear
 0042EC81    ret
>0042EC82    jmp         @HandleFinally
>0042EC87    jmp         0042EB10
 0042EC8C    mov         eax,ebx
 0042EC8E    pop         edi
 0042EC8F    pop         esi
 0042EC90    pop         ebx
 0042EC91    mov         esp,ebp
 0042EC93    pop         ebp
 0042EC94    ret
end;*}

//0042ECD8
{*procedure sub_0042ECD8(?:?; ?:?);
begin
 0042ECD8    push        ebx
 0042ECD9    push        esi
 0042ECDA    mov         esi,edx
 0042ECDC    mov         ebx,eax
 0042ECDE    mov         eax,esi
 0042ECE0    mov         edx,dword ptr [ebx+54]
 0042ECE3    call        @IntfCopy
 0042ECE8    pop         esi
 0042ECE9    pop         ebx
 0042ECEA    ret
end;*}

//0042ECEC
{*procedure sub_0042ECEC(?:?; ?:?);
begin
 0042ECEC    push        ebx
 0042ECED    push        esi
 0042ECEE    mov         esi,edx
 0042ECF0    mov         ebx,eax
 0042ECF2    lea         eax,[ebx+54]
 0042ECF5    mov         edx,esi
 0042ECF7    call        @IntfCopy
 0042ECFC    pop         esi
 0042ECFD    pop         ebx
 0042ECFE    ret
end;*}

//0042ED00
{*function sub_0042ED00(?:?):?;
begin
 0042ED00    mov         eax,dword ptr [eax+58]
 0042ED03    ret
end;*}

//0042ED04
{*procedure sub_0042ED04(?:?; ?:?);
begin
 0042ED04    mov         dword ptr [eax+58],edx
 0042ED07    ret
end;*}

//0042ED08
{*constructor TNVAssistant.Create(?:?; ?:?; ?:?);
begin
 0042ED08    push        ebp
 0042ED09    mov         ebp,esp
 0042ED0B    add         esp,0FFFFFFF4
 0042ED0E    push        ebx
 0042ED0F    push        esi
 0042ED10    push        edi
 0042ED11    test        dl,dl
>0042ED13    je          0042ED1D
 0042ED15    add         esp,0FFFFFFF0
 0042ED18    call        @ClassCreate
 0042ED1D    mov         dword ptr [ebp-8],ecx
 0042ED20    mov         byte ptr [ebp-1],dl
 0042ED23    mov         ebx,eax
 0042ED25    xor         edx,edx
 0042ED27    mov         eax,ebx
 0042ED29    call        TObject.Create
 0042ED2E    lea         eax,[ebx+0C]
 0042ED31    mov         edx,dword ptr [ebp-8]
 0042ED34    call        @WStrAsg
 0042ED39    lea         eax,[ebx+1C]
 0042ED3C    mov         edx,dword ptr [ebp+8]
 0042ED3F    call        @IntfCopy
 0042ED44    mov         eax,dword ptr [ebp+0C]
 0042ED47    inc         eax
 0042ED48    push        eax
 0042ED49    lea         eax,[ebx+10]
 0042ED4C    mov         ecx,1
 0042ED51    mov         edx,dword ptr ds:[4298D8];_DynArr_15_21
 0042ED57    call        @DynArraySetLength
 0042ED5C    add         esp,4
 0042ED5F    mov         eax,dword ptr [ebx+10]
 0042ED62    call        00405CE8
 0042ED67    test        eax,eax
>0042ED69    jl          0042EDB7
 0042ED6B    inc         eax
 0042ED6C    mov         dword ptr [ebp-0C],eax
 0042ED6F    xor         edi,edi
 0042ED71    mov         esi,dword ptr [ebp+10]
 0042ED74    mov         eax,dword ptr [ebp-8]
 0042ED77    push        eax
 0042ED78    mov         eax,dword ptr [esi]
 0042ED7A    push        eax
 0042ED7B    mov         eax,dword ptr [ebp+8]
 0042ED7E    push        eax
 0042ED7F    lea         eax,[edi+1]
 0042ED82    push        eax
 0042ED83    mov         eax,dword ptr [ebx+10]
 0042ED86    call        @LStrLen
 0042ED8B    push        eax
 0042ED8C    mov         ecx,ebx
 0042ED8E    mov         dl,1
 0042ED90    mov         eax,[00429840];TNVForm
 0042ED95    call        TNVForm.Create;TNVForm.Create
 0042ED9A    mov         edx,eax
 0042ED9C    test        edx,edx
>0042ED9E    je          0042EDA3
 0042EDA0    sub         edx,0FFFFFFA0
 0042EDA3    mov         eax,dword ptr [ebx+10]
 0042EDA6    lea         eax,[eax+edi*4]
 0042EDA9    call        @IntfCopy
 0042EDAE    inc         edi
 0042EDAF    add         esi,4
 0042EDB2    dec         dword ptr [ebp-0C]
>0042EDB5    jne         0042ED74
 0042EDB7    mov         eax,ebx
 0042EDB9    cmp         byte ptr [ebp-1],0
>0042EDBD    je          0042EDCE
 0042EDBF    call        @AfterConstruction
 0042EDC4    pop         dword ptr fs:[0]
 0042EDCB    add         esp,0C
 0042EDCE    mov         eax,ebx
 0042EDD0    pop         edi
 0042EDD1    pop         esi
 0042EDD2    pop         ebx
 0042EDD3    mov         esp,ebp
 0042EDD5    pop         ebp
 0042EDD6    ret         0C
end;*}

//0042EDDC
{*procedure sub_0042EDDC(?:?; ?:?);
begin
 0042EDDC    push        ebx
 0042EDDD    push        esi
 0042EDDE    mov         esi,edx
 0042EDE0    mov         ebx,eax
 0042EDE2    mov         eax,esi
 0042EDE4    mov         edx,dword ptr [ebx+0C]
 0042EDE7    call        @WStrAsg
 0042EDEC    pop         esi
 0042EDED    pop         ebx
 0042EDEE    ret
end;*}

//0042EDF0
{*procedure sub_0042EDF0(?:?; ?:?);
begin
 0042EDF0    push        ebx
 0042EDF1    push        esi
 0042EDF2    push        edi
 0042EDF3    push        ebp
 0042EDF4    mov         ebp,edx
 0042EDF6    mov         edi,eax
 0042EDF8    lea         eax,[edi+0C]
 0042EDFB    mov         edx,ebp
 0042EDFD    call        @WStrAsg
 0042EE02    mov         eax,dword ptr [edi+10]
 0042EE05    call        00405CE8
 0042EE0A    mov         ebx,eax
 0042EE0C    test        ebx,ebx
>0042EE0E    jl          0042EE24
 0042EE10    inc         ebx
 0042EE11    xor         esi,esi
 0042EE13    mov         eax,dword ptr [edi+10]
 0042EE16    mov         eax,dword ptr [eax+esi*4]
 0042EE19    mov         edx,ebp
 0042EE1B    mov         ecx,dword ptr [eax]
 0042EE1D    call        dword ptr [ecx+18]
 0042EE20    inc         esi
 0042EE21    dec         ebx
>0042EE22    jne         0042EE13
 0042EE24    pop         ebp
 0042EE25    pop         edi
 0042EE26    pop         esi
 0042EE27    pop         ebx
 0042EE28    ret
end;*}

//0042EE2C
{*procedure sub_0042EE2C(?:?);
begin
 0042EE2C    mov         eax,dword ptr [eax+10]
 0042EE2F    call        @LStrLen
 0042EE34    ret
end;*}

//0042EE38
{*procedure sub_0042EE38(?:?; ?:?; ?:?);
begin
 0042EE38    push        ebx
 0042EE39    push        esi
 0042EE3A    push        edi
 0042EE3B    mov         edi,ecx
 0042EE3D    mov         esi,edx
 0042EE3F    mov         ebx,eax
 0042EE41    test        esi,esi
>0042EE43    jl          0042EE60
 0042EE45    mov         eax,dword ptr [ebx+10]
 0042EE48    call        @LStrLen
 0042EE4D    cmp         esi,eax
>0042EE4F    jge         0042EE60
 0042EE51    mov         eax,edi
 0042EE53    mov         edx,dword ptr [ebx+10]
 0042EE56    mov         edx,dword ptr [edx+esi*4]
 0042EE59    call        @IntfCopy
>0042EE5E    jmp         0042EE67
 0042EE60    mov         eax,edi
 0042EE62    call        @IntfClear
 0042EE67    pop         edi
 0042EE68    pop         esi
 0042EE69    pop         ebx
 0042EE6A    ret
end;*}

//0042EE6C
{*procedure sub_0042EE6C(?:?; ?:?; ?:?);
begin
 0042EE6C    push        ebp
 0042EE6D    mov         ebp,esp
 0042EE6F    add         esp,0FFFFFFF4
 0042EE72    push        ebx
 0042EE73    push        esi
 0042EE74    push        edi
 0042EE75    xor         ebx,ebx
 0042EE77    mov         dword ptr [ebp-0C],ebx
 0042EE7A    mov         dword ptr [ebp-8],ecx
 0042EE7D    mov         dword ptr [ebp-4],edx
 0042EE80    mov         edi,eax
 0042EE82    xor         eax,eax
 0042EE84    push        ebp
 0042EE85    push        42EEF3
 0042EE8A    push        dword ptr fs:[eax]
 0042EE8D    mov         dword ptr fs:[eax],esp
 0042EE90    mov         eax,dword ptr [ebp-8]
 0042EE93    call        @IntfClear
 0042EE98    mov         eax,dword ptr [edi+10]
 0042EE9B    call        00405CE8
 0042EEA0    mov         esi,eax
 0042EEA2    test        esi,esi
>0042EEA4    jl          0042EEDD
 0042EEA6    inc         esi
 0042EEA7    xor         ebx,ebx
 0042EEA9    lea         edx,[ebp-0C]
 0042EEAC    mov         eax,dword ptr [edi+10]
 0042EEAF    mov         eax,dword ptr [eax+ebx*4]
 0042EEB2    mov         ecx,dword ptr [eax]
 0042EEB4    call        dword ptr [ecx+10]
 0042EEB7    mov         eax,dword ptr [ebp-0C]
 0042EEBA    mov         ecx,dword ptr ds:[55B210];^gvar_0053D140
 0042EEC0    mov         ecx,dword ptr [ecx]
 0042EEC2    mov         edx,dword ptr [ebp-4]
 0042EEC5    call        ecx
 0042EEC7    test        al,al
>0042EEC9    je          0042EED9
 0042EECB    mov         eax,dword ptr [ebp-8]
 0042EECE    mov         edx,dword ptr [edi+10]
 0042EED1    mov         edx,dword ptr [edx+ebx*4]
 0042EED4    call        @IntfCopy
 0042EED9    inc         ebx
 0042EEDA    dec         esi
>0042EEDB    jne         0042EEA9
 0042EEDD    xor         eax,eax
 0042EEDF    pop         edx
 0042EEE0    pop         ecx
 0042EEE1    pop         ecx
 0042EEE2    mov         dword ptr fs:[eax],edx
 0042EEE5    push        42EEFA
 0042EEEA    lea         eax,[ebp-0C]
 0042EEED    call        @WStrClr
 0042EEF2    ret
>0042EEF3    jmp         @HandleFinally
>0042EEF8    jmp         0042EEEA
 0042EEFA    pop         edi
 0042EEFB    pop         esi
 0042EEFC    pop         ebx
 0042EEFD    mov         esp,ebp
 0042EEFF    pop         ebp
 0042EF00    ret
end;*}

//0042EF04
{*function sub_0042EF04(?:?):?;
begin
 0042EF04    mov         al,byte ptr [eax+14]
 0042EF07    ret
end;*}

//0042EF08
{*function sub_0042EF08(?:?):?;
begin
 0042EF08    mov         eax,dword ptr [eax+18]
 0042EF0B    ret
end;*}

//0042EF0C
{*procedure sub_0042EF0C(?:?; ?:?);
begin
 0042EF0C    mov         dword ptr [eax+18],edx
 0042EF0F    ret
end;*}

//0042EF10
{*function sub_0042EF10(?:?; ?:?):?;
begin
 0042EF10    push        ebx
 0042EF11    push        esi
 0042EF12    push        edi
 0042EF13    push        ebp
 0042EF14    push        ecx
 0042EF15    mov         edi,edx
 0042EF17    mov         ebp,eax
 0042EF19    test        edi,edi
>0042EF1B    je          0042EF25
 0042EF1D    push        0
 0042EF1F    push        edi
 0042EF20    call        user32.EnableWindow
 0042EF25    mov         byte ptr [esp],1
 0042EF29    mov         eax,dword ptr [ebp+10]
 0042EF2C    call        00405CE8
 0042EF31    mov         ebx,eax
 0042EF33    test        ebx,ebx
>0042EF35    jl          0042EF55
 0042EF37    inc         ebx
 0042EF38    xor         esi,esi
 0042EF3A    mov         eax,dword ptr [ebp+10]
 0042EF3D    mov         eax,dword ptr [eax+esi*4]
 0042EF40    mov         edx,edi
 0042EF42    mov         ecx,dword ptr [eax]
 0042EF44    call        dword ptr [ecx+6C]
 0042EF47    cmp         al,3
>0042EF49    jne         0042EF51
 0042EF4B    mov         byte ptr [esp],3
>0042EF4F    jmp         0042EF55
 0042EF51    inc         esi
 0042EF52    dec         ebx
>0042EF53    jne         0042EF3A
 0042EF55    test        edi,edi
>0042EF57    je          0042EF61
 0042EF59    push        0FF
 0042EF5B    push        edi
 0042EF5C    call        user32.EnableWindow
 0042EF61    mov         al,byte ptr [esp]
 0042EF64    mov         byte ptr [ebp+14],al
 0042EF67    mov         al,byte ptr [esp]
 0042EF6A    pop         edx
 0042EF6B    pop         ebp
 0042EF6C    pop         edi
 0042EF6D    pop         esi
 0042EF6E    pop         ebx
 0042EF6F    ret
end;*}

//0042EF70
{*procedure sub_0042EF70(?:?; ?:?);
begin
 0042EF70    push        ebx
 0042EF71    push        esi
 0042EF72    mov         esi,edx
 0042EF74    mov         ebx,eax
 0042EF76    mov         eax,esi
 0042EF78    mov         edx,dword ptr [ebx+1C]
 0042EF7B    call        @IntfCopy
 0042EF80    pop         esi
 0042EF81    pop         ebx
 0042EF82    ret
end;*}

//0042EF84
{*procedure sub_0042EF84(?:?; ?:?);
begin
 0042EF84    push        ebx
 0042EF85    push        esi
 0042EF86    mov         esi,edx
 0042EF88    mov         ebx,eax
 0042EF8A    lea         eax,[ebx+1C]
 0042EF8D    mov         edx,esi
 0042EF8F    call        @IntfCopy
 0042EF94    pop         esi
 0042EF95    pop         ebx
 0042EF96    ret
end;*}

//0042EF98
{*function sub_0042EF98(?:?):?;
begin
 0042EF98    mov         eax,dword ptr [eax+20]
 0042EF9B    ret
end;*}

//0042EF9C
{*procedure sub_0042EF9C(?:?; ?:?);
begin
 0042EF9C    mov         dword ptr [eax+20],edx
 0042EF9F    ret
end;*}

//0042EFA0
{*procedure sub_0042EFA0(?:?; ?:?; ?:?; ?:?; ?:?);
begin
 0042EFA0    push        ebp
 0042EFA1    mov         ebp,esp
 0042EFA3    add         esp,0FFFFFFF8
 0042EFA6    push        ebx
 0042EFA7    push        esi
 0042EFA8    push        edi
 0042EFA9    mov         dword ptr [ebp-8],ecx
 0042EFAC    mov         dword ptr [ebp-4],edx
 0042EFAF    mov         edi,eax
 0042EFB1    mov         esi,dword ptr [ebp+8]
 0042EFB4    mov         ebx,dword ptr [ebp+0C]
 0042EFB7    mov         eax,dword ptr [ebp-4]
 0042EFBA    push        eax
 0042EFBB    mov         eax,dword ptr [ebp-8]
 0042EFBE    push        eax
 0042EFBF    push        ebx
 0042EFC0    mov         ecx,edi
 0042EFC2    mov         dl,1
 0042EFC4    mov         eax,[004299EC];TNVAssistant
 0042EFC9    call        TNVAssistant.Create;TNVAssistant.Create
 0042EFCE    mov         edx,eax
 0042EFD0    test        edx,edx
>0042EFD2    je          0042EFD7
 0042EFD4    sub         edx,0FFFFFFDC
 0042EFD7    mov         eax,esi
 0042EFD9    call        @IntfCopy
 0042EFDE    cmp         dword ptr ds:[53FDF4],0;gvar_0053FDF4
>0042EFE5    je          0042EFF1
 0042EFE7    mov         eax,dword ptr [esi]
 0042EFE9    mov         edx,ebx
 0042EFEB    call        dword ptr ds:[53FDF4]
 0042EFF1    pop         edi
 0042EFF2    pop         esi
 0042EFF3    pop         ebx
 0042EFF4    pop         ecx
 0042EFF5    pop         ecx
 0042EFF6    pop         ebp
 0042EFF7    ret         8
end;*}

//0042EFFC
{*procedure sub_0042EFFC(?:?; ?:?; ?:?; ?:?; ?:?; ?:?);
begin
 0042EFFC    push        ebp
 0042EFFD    mov         ebp,esp
 0042EFFF    push        ecx
 0042F000    mov         ecx,5
 0042F005    push        0
 0042F007    push        0
 0042F009    dec         ecx
>0042F00A    jne         0042F005
 0042F00C    xchg        ecx,dword ptr [ebp-4]
 0042F00F    push        ebx
 0042F010    push        esi
 0042F011    push        edi
 0042F012    mov         ebx,ecx
 0042F014    mov         dword ptr [ebp-8],edx
 0042F017    mov         dword ptr [ebp-4],eax
 0042F01A    xor         eax,eax
 0042F01C    push        ebp
 0042F01D    push        42F19A
 0042F022    push        dword ptr fs:[eax]
 0042F025    mov         dword ptr fs:[eax],esp
 0042F028    mov         eax,dword ptr [ebp+10]
 0042F02B    inc         eax
 0042F02C    push        eax
 0042F02D    lea         eax,[ebp-0C]
 0042F030    mov         ecx,1
 0042F035    mov         edx,dword ptr ds:[40874C];TDAAnsiString
 0042F03B    call        @DynArraySetLength
 0042F040    add         esp,4
 0042F043    cmp         dword ptr [ebp-0C],0
>0042F047    je          0042F13A
 0042F04D    mov         eax,dword ptr [ebp-4]
 0042F050    call        FindResourceHInstance
 0042F055    mov         esi,eax
 0042F057    call        kernel32.GetVersion
 0042F05C    test        eax,80000000
>0042F061    jne         0042F09A
 0042F063    push        0A
 0042F065    mov         edi,dword ptr ds:[55B37C];^gvar_0053D134
 0042F06B    mov         edi,dword ptr [edi]
 0042F06D    lea         edx,[ebp-14]
 0042F070    mov         eax,dword ptr [ebx]
 0042F072    call        edi
 0042F074    mov         ecx,dword ptr [ebp-14]
 0042F077    lea         eax,[ebp-10]
 0042F07A    mov         edx,42F1B0;'TME'
 0042F07F    call        @WStrCat3
 0042F084    mov         eax,dword ptr [ebp-10]
 0042F087    call        @WStrToPWChar
 0042F08C    push        eax
 0042F08D    push        esi
 0042F08E    call        kernel32.FindResourceW
 0042F093    test        eax,eax
 0042F095    setne       al
>0042F098    jmp         0042F0DA
 0042F09A    push        0A
 0042F09C    lea         eax,[ebp-20]
 0042F09F    mov         edx,dword ptr [ebx]
 0042F0A1    call        @LStrFromWStr
 0042F0A6    mov         eax,dword ptr [ebp-20]
 0042F0A9    mov         edi,dword ptr ds:[55B5D0];^gvar_0053D0E0
 0042F0AF    mov         edi,dword ptr [edi]
 0042F0B1    lea         edx,[ebp-1C]
 0042F0B4    call        edi
 0042F0B6    mov         ecx,dword ptr [ebp-1C]
 0042F0B9    lea         eax,[ebp-18]
 0042F0BC    mov         edx,42F1C0;'TME'
 0042F0C1    call        @LStrCat3
 0042F0C6    mov         eax,dword ptr [ebp-18]
 0042F0C9    call        @LStrToPChar
 0042F0CE    push        eax
 0042F0CF    push        esi
 0042F0D0    call        kernel32.FindResourceA
 0042F0D5    test        eax,eax
 0042F0D7    setne       al
 0042F0DA    test        al,al
>0042F0DC    je          0042F0E1
 0042F0DE    mov         dword ptr [ebp-4],esi
 0042F0E1    mov         eax,dword ptr [ebp-0C]
 0042F0E4    call        00405CE8
 0042F0E9    mov         esi,eax
 0042F0EB    test        esi,esi
>0042F0ED    jl          0042F13A
 0042F0EF    inc         esi
 0042F0F0    xor         edi,edi
 0042F0F2    lea         eax,[ebp-24]
 0042F0F5    push        eax
 0042F0F6    mov         ecx,dword ptr ds:[55B37C];^gvar_0053D134
 0042F0FC    mov         ecx,dword ptr [ecx]
 0042F0FE    lea         edx,[ebp-2C]
 0042F101    mov         eax,dword ptr [ebx]
 0042F103    call        ecx
 0042F105    mov         ecx,dword ptr [ebp-2C]
 0042F108    lea         eax,[ebp-28]
 0042F10B    mov         edx,42F1B0;'TME'
 0042F110    call        @WStrCat3
 0042F115    mov         ecx,dword ptr [ebp-28]
 0042F118    mov         edx,0A
 0042F11D    mov         eax,dword ptr [ebp-4]
 0042F120    call        0041012C
 0042F125    mov         edx,dword ptr [ebp-24]
 0042F128    mov         eax,dword ptr [ebp-0C]
 0042F12B    lea         eax,[eax+edi*4]
 0042F12E    call        @LStrAsg
 0042F133    inc         edi
 0042F134    add         ebx,4
 0042F137    dec         esi
>0042F138    jne         0042F0F2
 0042F13A    mov         eax,dword ptr [ebp+0C]
 0042F13D    push        eax
 0042F13E    mov         eax,dword ptr [ebp+8]
 0042F141    push        eax
 0042F142    mov         eax,dword ptr [ebp-0C]
 0042F145    call        00405CE8
 0042F14A    mov         ecx,eax
 0042F14C    mov         edx,dword ptr [ebp-0C]
 0042F14F    mov         eax,dword ptr [ebp-8]
 0042F152    call        0042EFA0
 0042F157    xor         eax,eax
 0042F159    pop         edx
 0042F15A    pop         ecx
 0042F15B    pop         ecx
 0042F15C    mov         dword ptr fs:[eax],edx
 0042F15F    push        42F1A1
 0042F164    lea         eax,[ebp-2C]
 0042F167    mov         edx,2
 0042F16C    call        @WStrArrayClr
 0042F171    lea         eax,[ebp-24]
 0042F174    mov         edx,4
 0042F179    call        @LStrArrayClr
 0042F17E    lea         eax,[ebp-14]
 0042F181    mov         edx,2
 0042F186    call        @WStrArrayClr
 0042F18B    lea         eax,[ebp-0C]
 0042F18E    mov         edx,dword ptr ds:[40874C];TDAAnsiString
 0042F194    call        @DynArrayClear
 0042F199    ret
>0042F19A    jmp         @HandleFinally
>0042F19F    jmp         0042F164
 0042F1A1    pop         edi
 0042F1A2    pop         esi
 0042F1A3    pop         ebx
 0042F1A4    mov         esp,ebp
 0042F1A6    pop         ebp
 0042F1A7    ret         0C
end;*}

end.