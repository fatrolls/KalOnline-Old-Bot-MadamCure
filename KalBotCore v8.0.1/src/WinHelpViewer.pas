//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit WinHelpViewer;

interface

uses
  SysUtils, Classes;

type
  TWinHelpViewer = class(TInterfacedObject)
  public
    FViewerID:Integer;//fC
    FLastCommandType:TWHCommandType;//f10
    FLastCommand:String;//f14
    FLastContext:Integer;//f18
    FHelpManager:IHelpManager;//f1C
    procedure InternalShutDown;//004C3A8C
    constructor Create;//004C454C
  end;
    //procedure sub_004C39AC(?:?; ?:?; ?:?);//004C39AC
    //procedure sub_004C3AC4(?:?; ?:?);//004C3AC4
    //function sub_004C3AE4(?:?; ?:?):?;//004C3AE4
    //function sub_004C3B70(?:?; ?:?):?;//004C3B70
    //function sub_004C3C20(?:?):?;//004C3C20
    //procedure sub_004C3C34(?:?);//004C3C34
    //procedure sub_004C3CC8(?:?; ?:?);//004C3CC8
    //procedure sub_004C3E20(?:?; ?:?);//004C3E20
    //procedure sub_004C3E3C(?:?);//004C3E3C
    //procedure sub_004C3E64(?:?);//004C3E64
    //function sub_004C3EA0(?:?; ?:?):?;//004C3EA0
    //procedure sub_004C3F14(?:?; ?:?);//004C3F14
    //function sub_004C4034(?:?; ?:?; ?:?):?;//004C4034
    //procedure sub_004C40AC(?:?; ?:?; ?:?);//004C40AC
    //function sub_004C4158(?:?; ?:?; ?:?; ?:?; ?:?):?;//004C4158
    //procedure sub_004C4340(?:?);//004C4340
    //function sub_004C4370(?:?; ?:?; ?:AnsiString; ?:?):?;//004C4370
    //function sub_004C4404(?:?; ?:?):?;//004C4404
    //function sub_004C4428(?:?; ?:?):?;//004C4428
    //function sub_004C4450(?:?):?;//004C4450
    //procedure sub_004C44B8(?:?);//004C44B8

implementation

//004C39AC
{*procedure sub_004C39AC(?:?; ?:?; ?:?);
begin
 004C39AC    push        ebp
 004C39AD    mov         ebp,esp
 004C39AF    add         esp,0FFFFFFEC
 004C39B2    push        ebx
 004C39B3    xor         ebx,ebx
 004C39B5    mov         dword ptr [ebp-14],ebx
 004C39B8    mov         dword ptr [ebp-10],ebx
 004C39BB    mov         dword ptr [ebp-0C],ecx
 004C39BE    mov         dword ptr [ebp-8],edx
 004C39C1    mov         dword ptr [ebp-4],eax
 004C39C4    xor         eax,eax
 004C39C6    push        ebp
 004C39C7    push        4C3A74
 004C39CC    push        dword ptr fs:[eax]
 004C39CF    mov         dword ptr fs:[eax],esp
 004C39D2    mov         eax,dword ptr [ebp-0C]
 004C39D5    call        @LStrClr
 004C39DA    cmp         dword ptr [ebp-8],0
>004C39DE    jne         004C39F9
 004C39E0    mov         eax,dword ptr [ebp-4]
 004C39E3    cmp         dword ptr [eax+1C],0
>004C39E7    je          004C39F9
 004C39E9    lea         edx,[ebp-10]
 004C39EC    mov         eax,dword ptr [ebp-4]
 004C39EF    mov         eax,dword ptr [eax+1C]
 004C39F2    mov         ecx,dword ptr [eax]
 004C39F4    call        dword ptr [ecx+10]
>004C39F7    jmp         004C3A04
 004C39F9    lea         eax,[ebp-10]
 004C39FC    mov         edx,dword ptr [ebp-8]
 004C39FF    call        @LStrLAsg
 004C3A04    cmp         dword ptr [ebp-10],0
>004C3A08    jne         004C3A20
 004C3A0A    cmp         dword ptr ds:[55DD98],0;gvar_0055DD98:IInterface
>004C3A11    je          004C3A20
 004C3A13    lea         edx,[ebp-10]
 004C3A16    mov         eax,[0055DD98];gvar_0055DD98:IInterface
 004C3A1B    mov         ecx,dword ptr [eax]
 004C3A1D    call        dword ptr [ecx+20]
 004C3A20    cmp         dword ptr ds:[55DD98],0;gvar_0055DD98:IInterface
>004C3A27    je          004C3A4E
 004C3A29    lea         edx,[ebp-14]
 004C3A2C    mov         eax,[0055DD98];gvar_0055DD98:IInterface
 004C3A31    mov         ecx,dword ptr [eax]
 004C3A33    call        dword ptr [ecx+1C]
 004C3A36    push        dword ptr [ebp-14]
 004C3A39    push        4C3A88;'\'
 004C3A3E    push        dword ptr [ebp-10]
 004C3A41    lea         eax,[ebp-10]
 004C3A44    mov         edx,3
 004C3A49    call        @LStrCatN
 004C3A4E    mov         eax,dword ptr [ebp-0C]
 004C3A51    mov         edx,dword ptr [ebp-10]
 004C3A54    call        @LStrAsg
 004C3A59    xor         eax,eax
 004C3A5B    pop         edx
 004C3A5C    pop         ecx
 004C3A5D    pop         ecx
 004C3A5E    mov         dword ptr fs:[eax],edx
 004C3A61    push        4C3A7B
 004C3A66    lea         eax,[ebp-14]
 004C3A69    mov         edx,2
 004C3A6E    call        @LStrArrayClr
 004C3A73    ret
>004C3A74    jmp         @HandleFinally
>004C3A79    jmp         004C3A66
 004C3A7B    pop         ebx
 004C3A7C    mov         esp,ebp
 004C3A7E    pop         ebp
 004C3A7F    ret
end;*}

//004C3A8C
procedure TWinHelpViewer.InternalShutDown;
begin
{*
 004C3A8C    push        ebp
 004C3A8D    mov         ebp,esp
 004C3A8F    push        ecx
 004C3A90    mov         dword ptr [ebp-4],eax
 004C3A93    mov         eax,dword ptr [ebp-4]
 004C3A96    call        004C3E3C
 004C3A9B    mov         eax,dword ptr [ebp-4]
 004C3A9E    cmp         dword ptr [eax+1C],0
>004C3AA2    je          004C3AC0
 004C3AA4    mov         eax,dword ptr [ebp-4]
 004C3AA7    mov         edx,dword ptr [eax+0C]
 004C3AAA    mov         eax,dword ptr [ebp-4]
 004C3AAD    mov         eax,dword ptr [eax+1C]
 004C3AB0    mov         ecx,dword ptr [eax]
 004C3AB2    call        dword ptr [ecx+14]
 004C3AB5    mov         eax,dword ptr [ebp-4]
 004C3AB8    add         eax,1C
 004C3ABB    call        @IntfClear
 004C3AC0    pop         ecx
 004C3AC1    pop         ebp
 004C3AC2    ret
*}
end;

//004C3AC4
{*procedure sub_004C3AC4(?:?; ?:?);
begin
 004C3AC4    push        ebp
 004C3AC5    mov         ebp,esp
 004C3AC7    add         esp,0FFFFFFF8
 004C3ACA    mov         dword ptr [ebp-8],edx
 004C3ACD    mov         dword ptr [ebp-4],eax
 004C3AD0    mov         eax,dword ptr [ebp-8]
 004C3AD3    mov         edx,dword ptr ds:[55DD9C];gvar_0055DD9C
 004C3AD9    call        @LStrAsg
 004C3ADE    pop         ecx
 004C3ADF    pop         ecx
 004C3AE0    pop         ebp
 004C3AE1    ret
end;*}

//004C3AE4
{*function sub_004C3AE4(?:?; ?:?):?;
begin
 004C3AE4    push        ebp
 004C3AE5    mov         ebp,esp
 004C3AE7    add         esp,0FFFFFFEC
 004C3AEA    push        ebx
 004C3AEB    xor         ecx,ecx
 004C3AED    mov         dword ptr [ebp-14],ecx
 004C3AF0    mov         dword ptr [ebp-8],edx
 004C3AF3    mov         dword ptr [ebp-4],eax
 004C3AF6    xor         eax,eax
 004C3AF8    push        ebp
 004C3AF9    push        4C3B60
 004C3AFE    push        dword ptr fs:[eax]
 004C3B01    mov         dword ptr fs:[eax],esp
 004C3B04    cmp         dword ptr ds:[55DD98],0;gvar_0055DD98:IInterface
>004C3B0B    je          004C3B43
 004C3B0D    lea         ecx,[ebp-14]
 004C3B10    xor         edx,edx
 004C3B12    mov         eax,dword ptr [ebp-4]
 004C3B15    call        004C39AC
 004C3B1A    mov         ecx,dword ptr [ebp-14]
 004C3B1D    mov         edx,dword ptr [ebp-8]
 004C3B20    mov         eax,[0055DD98];gvar_0055DD98:IInterface
 004C3B25    mov         ebx,dword ptr [eax]
 004C3B27    call        dword ptr [ebx+0C]
 004C3B2A    mov         byte ptr [ebp-0D],al
 004C3B2D    cmp         byte ptr [ebp-0D],0
>004C3B31    je          004C3B3C
 004C3B33    mov         dword ptr [ebp-0C],1
>004C3B3A    jmp         004C3B4A
 004C3B3C    xor         eax,eax
 004C3B3E    mov         dword ptr [ebp-0C],eax
>004C3B41    jmp         004C3B4A
 004C3B43    mov         dword ptr [ebp-0C],1
 004C3B4A    xor         eax,eax
 004C3B4C    pop         edx
 004C3B4D    pop         ecx
 004C3B4E    pop         ecx
 004C3B4F    mov         dword ptr fs:[eax],edx
 004C3B52    push        4C3B67
 004C3B57    lea         eax,[ebp-14]
 004C3B5A    call        @LStrClr
 004C3B5F    ret
>004C3B60    jmp         @HandleFinally
>004C3B65    jmp         004C3B57
 004C3B67    mov         eax,dword ptr [ebp-0C]
 004C3B6A    pop         ebx
 004C3B6B    mov         esp,ebp
 004C3B6D    pop         ebp
 004C3B6E    ret
end;*}

//004C3B70
{*function sub_004C3B70(?:?; ?:?):?;
begin
 004C3B70    push        ebp
 004C3B71    mov         ebp,esp
 004C3B73    add         esp,0FFFFFFEC
 004C3B76    xor         ecx,ecx
 004C3B78    mov         dword ptr [ebp-10],ecx
 004C3B7B    mov         dword ptr [ebp-14],ecx
 004C3B7E    mov         dword ptr [ebp-8],edx
 004C3B81    mov         dword ptr [ebp-4],eax
 004C3B84    xor         eax,eax
 004C3B86    push        ebp
 004C3B87    push        4C3C05
 004C3B8C    push        dword ptr fs:[eax]
 004C3B8F    mov         dword ptr fs:[eax],esp
 004C3B92    cmp         dword ptr ds:[55DD98],0;gvar_0055DD98:IInterface
>004C3B99    je          004C3BAD
 004C3B9B    mov         edx,dword ptr [ebp-8]
 004C3B9E    mov         eax,[0055DD98];gvar_0055DD98:IInterface
 004C3BA3    mov         ecx,dword ptr [eax]
 004C3BA5    call        dword ptr [ecx+18]
 004C3BA8    mov         dword ptr [ebp-0C],eax
>004C3BAB    jmp         004C3BEA
 004C3BAD    mov         dl,1
 004C3BAF    mov         eax,[00476078];TStringList
 004C3BB4    call        TObject.Create;TStringList.Create
 004C3BB9    mov         dword ptr [ebp-0C],eax
 004C3BBC    lea         edx,[ebp-14]
 004C3BBF    mov         eax,dword ptr [ebp-4]
 004C3BC2    call        004C3AC4
 004C3BC7    push        dword ptr [ebp-14]
 004C3BCA    push        4C3C1C;': '
 004C3BCF    push        dword ptr [ebp-8]
 004C3BD2    lea         eax,[ebp-10]
 004C3BD5    mov         edx,3
 004C3BDA    call        @LStrCatN
 004C3BDF    mov         edx,dword ptr [ebp-10]
 004C3BE2    mov         eax,dword ptr [ebp-0C]
 004C3BE5    mov         ecx,dword ptr [eax]
 004C3BE7    call        dword ptr [ecx+38];TStringList.sub_0047B3A4
 004C3BEA    xor         eax,eax
 004C3BEC    pop         edx
 004C3BED    pop         ecx
 004C3BEE    pop         ecx
 004C3BEF    mov         dword ptr fs:[eax],edx
 004C3BF2    push        4C3C0C
 004C3BF7    lea         eax,[ebp-14]
 004C3BFA    mov         edx,2
 004C3BFF    call        @LStrArrayClr
 004C3C04    ret
>004C3C05    jmp         @HandleFinally
>004C3C0A    jmp         004C3BF7
 004C3C0C    mov         eax,dword ptr [ebp-0C]
 004C3C0F    mov         esp,ebp
 004C3C11    pop         ebp
 004C3C12    ret
end;*}

//004C3C20
{*function sub_004C3C20(?:?):?;
begin
 004C3C20    push        ebp
 004C3C21    mov         ebp,esp
 004C3C23    add         esp,0FFFFFFF8
 004C3C26    mov         dword ptr [ebp-4],eax
 004C3C29    mov         byte ptr [ebp-5],1
 004C3C2D    mov         al,byte ptr [ebp-5]
 004C3C30    pop         ecx
 004C3C31    pop         ecx
 004C3C32    pop         ebp
 004C3C33    ret
end;*}

//004C3C34
{*procedure sub_004C3C34(?:?);
begin
 004C3C34    push        ebp
 004C3C35    mov         ebp,esp
 004C3C37    push        0
 004C3C39    push        0
 004C3C3B    push        0
 004C3C3D    mov         dword ptr [ebp-4],eax
 004C3C40    xor         eax,eax
 004C3C42    push        ebp
 004C3C43    push        4C3CBC
 004C3C48    push        dword ptr fs:[eax]
 004C3C4B    mov         dword ptr fs:[eax],esp
 004C3C4E    mov         eax,dword ptr [ebp-4]
 004C3C51    call        004C4450
 004C3C56    test        al,al
>004C3C58    je          004C3CA1
 004C3C5A    mov         eax,dword ptr [ebp-4]
 004C3C5D    mov         byte ptr [eax+10],2
 004C3C61    lea         edx,[ebp-0C]
 004C3C64    mov         eax,dword ptr [ebp-4]
 004C3C67    mov         eax,dword ptr [eax+1C]
 004C3C6A    mov         ecx,dword ptr [eax]
 004C3C6C    call        dword ptr [ecx+10]
 004C3C6F    mov         edx,dword ptr [ebp-0C]
 004C3C72    lea         ecx,[ebp-8]
 004C3C75    mov         eax,dword ptr [ebp-4]
 004C3C78    call        004C39AC
 004C3C7D    cmp         dword ptr [ebp-8],0
>004C3C81    je          004C3CA1
 004C3C83    push        0
 004C3C85    push        3
 004C3C87    mov         eax,dword ptr [ebp-8]
 004C3C8A    call        @LStrToPChar
 004C3C8F    push        eax
 004C3C90    mov         eax,dword ptr [ebp-4]
 004C3C93    mov         eax,dword ptr [eax+1C]
 004C3C96    mov         edx,dword ptr [eax]
 004C3C98    call        dword ptr [edx+0C]
 004C3C9B    push        eax
 004C3C9C    call        user32.WinHelpA
 004C3CA1    xor         eax,eax
 004C3CA3    pop         edx
 004C3CA4    pop         ecx
 004C3CA5    pop         ecx
 004C3CA6    mov         dword ptr fs:[eax],edx
 004C3CA9    push        4C3CC3
 004C3CAE    lea         eax,[ebp-0C]
 004C3CB1    mov         edx,2
 004C3CB6    call        @LStrArrayClr
 004C3CBB    ret
>004C3CBC    jmp         @HandleFinally
>004C3CC1    jmp         004C3CAE
 004C3CC3    mov         esp,ebp
 004C3CC5    pop         ebp
 004C3CC6    ret
end;*}

//004C3CC8
{*procedure sub_004C3CC8(?:?; ?:?);
begin
 004C3CC8    push        ebp
 004C3CC9    mov         ebp,esp
 004C3CCB    add         esp,0FFFFFFDC
 004C3CCE    xor         ecx,ecx
 004C3CD0    mov         dword ptr [ebp-24],ecx
 004C3CD3    mov         dword ptr [ebp-0C],ecx
 004C3CD6    mov         dword ptr [ebp-10],ecx
 004C3CD9    mov         dword ptr [ebp-8],edx
 004C3CDC    mov         dword ptr [ebp-4],eax
 004C3CDF    xor         eax,eax
 004C3CE1    push        ebp
 004C3CE2    push        4C3DD2
 004C3CE7    push        dword ptr fs:[eax]
 004C3CEA    mov         dword ptr fs:[eax],esp
 004C3CED    cmp         dword ptr [ebp-8],0
>004C3CF1    jne         004C3D09
 004C3CF3    mov         ecx,4C3800;^gvar_0055C664
 004C3CF8    mov         dl,1
 004C3CFA    mov         eax,[00490AF4];EHelpSystemException
 004C3CFF    call        Exception.Create;EHelpSystemException.Create
 004C3D04    call        @RaiseExcept
 004C3D09    lea         eax,[ebp-0C]
 004C3D0C    push        eax
 004C3D0D    mov         eax,dword ptr [ebp-8]
 004C3D10    mov         dword ptr [ebp-20],eax
 004C3D13    mov         byte ptr [ebp-1C],0B
 004C3D17    lea         ecx,[ebp-24]
 004C3D1A    xor         edx,edx
 004C3D1C    mov         eax,dword ptr [ebp-4]
 004C3D1F    call        004C39AC
 004C3D24    mov         eax,dword ptr [ebp-24]
 004C3D27    mov         dword ptr [ebp-18],eax
 004C3D2A    mov         byte ptr [ebp-14],0B
 004C3D2E    lea         edx,[ebp-20]
 004C3D31    mov         ecx,1
 004C3D36    mov         eax,4C3DE8;'IE(AL("%s",4),"AL(\"%0:s\",3)","JK(\"%1:s\",\"%0:s\")")'
 004C3D3B    call        Format
 004C3D40    mov         eax,dword ptr [ebp-4]
 004C3D43    call        004C4450
 004C3D48    test        al,al
>004C3D4A    je          004C3DAF
 004C3D4C    lea         ecx,[ebp-10]
 004C3D4F    xor         edx,edx
 004C3D51    mov         eax,dword ptr [ebp-4]
 004C3D54    call        004C39AC
 004C3D59    push        0
 004C3D5B    mov         ecx,dword ptr [ebp-0C]
 004C3D5E    mov         dl,1
 004C3D60    mov         eax,dword ptr [ebp-4]
 004C3D63    call        004C4370
 004C3D68    test        al,al
>004C3D6A    je          004C3DAF
 004C3D6C    cmp         dword ptr [ebp-10],0
>004C3D70    je          004C3DAF
 004C3D72    mov         eax,dword ptr [ebp-4]
 004C3D75    mov         byte ptr [eax+10],1
 004C3D79    mov         eax,dword ptr [ebp-4]
 004C3D7C    add         eax,14
 004C3D7F    mov         edx,dword ptr [ebp-0C]
 004C3D82    call        @LStrAsg
 004C3D87    mov         eax,dword ptr [ebp-0C]
 004C3D8A    call        @LStrToPChar
 004C3D8F    push        eax
 004C3D90    push        102
 004C3D95    mov         eax,dword ptr [ebp-10]
 004C3D98    call        @LStrToPChar
 004C3D9D    push        eax
 004C3D9E    mov         eax,dword ptr [ebp-4]
 004C3DA1    mov         eax,dword ptr [eax+1C]
 004C3DA4    mov         edx,dword ptr [eax]
 004C3DA6    call        dword ptr [edx+0C]
 004C3DA9    push        eax
 004C3DAA    call        user32.WinHelpA
 004C3DAF    xor         eax,eax
 004C3DB1    pop         edx
 004C3DB2    pop         ecx
 004C3DB3    pop         ecx
 004C3DB4    mov         dword ptr fs:[eax],edx
 004C3DB7    push        4C3DD9
 004C3DBC    lea         eax,[ebp-24]
 004C3DBF    call        @LStrClr
 004C3DC4    lea         eax,[ebp-10]
 004C3DC7    mov         edx,2
 004C3DCC    call        @LStrArrayClr
 004C3DD1    ret
>004C3DD2    jmp         @HandleFinally
>004C3DD7    jmp         004C3DBC
 004C3DD9    mov         esp,ebp
 004C3DDB    pop         ebp
 004C3DDC    ret
end;*}

//004C3E20
{*procedure sub_004C3E20(?:?; ?:?);
begin
 004C3E20    push        ebp
 004C3E21    mov         ebp,esp
 004C3E23    add         esp,0FFFFFFF8
 004C3E26    mov         dword ptr [ebp-8],edx
 004C3E29    mov         dword ptr [ebp-4],eax
 004C3E2C    mov         eax,dword ptr [ebp-8]
 004C3E2F    mov         edx,dword ptr [ebp-4]
 004C3E32    mov         dword ptr [edx+0C],eax
 004C3E35    pop         ecx
 004C3E36    pop         ecx
 004C3E37    pop         ebp
 004C3E38    ret
end;*}

//004C3E3C
{*procedure sub_004C3E3C(?:?);
begin
 004C3E3C    push        ebp
 004C3E3D    mov         ebp,esp
 004C3E3F    push        ecx
 004C3E40    mov         dword ptr [ebp-4],eax
 004C3E43    mov         eax,dword ptr [ebp-4]
 004C3E46    mov         byte ptr [eax+10],3
 004C3E4A    push        0
 004C3E4C    push        2
 004C3E4E    push        4C3E60;'
 004C3E53    push        0
 004C3E55    call        user32.WinHelpA
 004C3E5A    pop         ecx
 004C3E5B    pop         ebp
 004C3E5C    ret
end;*}

//004C3E64
{*procedure sub_004C3E64(?:?);
begin
 004C3E64    push        ebp
 004C3E65    mov         ebp,esp
 004C3E67    push        ecx
 004C3E68    mov         dword ptr [ebp-4],eax
 004C3E6B    mov         eax,dword ptr [ebp-4]
 004C3E6E    call        004C3E3C
 004C3E73    mov         eax,dword ptr [ebp-4]
 004C3E76    cmp         dword ptr [eax+1C],0
>004C3E7A    je          004C3E87
 004C3E7C    mov         eax,dword ptr [ebp-4]
 004C3E7F    add         eax,1C
 004C3E82    call        @IntfClear
 004C3E87    cmp         dword ptr ds:[55DD98],0;gvar_0055DD98:IInterface
>004C3E8E    je          004C3E9A
 004C3E90    mov         eax,55DD98;gvar_0055DD98:IInterface
 004C3E95    call        @IntfClear
 004C3E9A    pop         ecx
 004C3E9B    pop         ebp
 004C3E9C    ret
end;*}

//004C3EA0
{*function sub_004C3EA0(?:?; ?:?):?;
begin
 004C3EA0    push        ebp
 004C3EA1    mov         ebp,esp
 004C3EA3    add         esp,0FFFFFFF0
 004C3EA6    push        ebx
 004C3EA7    xor         ecx,ecx
 004C3EA9    mov         dword ptr [ebp-10],ecx
 004C3EAC    mov         dword ptr [ebp-8],edx
 004C3EAF    mov         dword ptr [ebp-4],eax
 004C3EB2    xor         eax,eax
 004C3EB4    push        ebp
 004C3EB5    push        4C3F03
 004C3EBA    push        dword ptr fs:[eax]
 004C3EBD    mov         dword ptr fs:[eax],esp
 004C3EC0    mov         byte ptr [ebp-9],1
 004C3EC4    cmp         dword ptr ds:[55DD98],0;gvar_0055DD98:IInterface
>004C3ECB    je          004C3EED
 004C3ECD    lea         ecx,[ebp-10]
 004C3ED0    xor         edx,edx
 004C3ED2    mov         eax,dword ptr [ebp-4]
 004C3ED5    call        004C39AC
 004C3EDA    mov         ecx,dword ptr [ebp-10]
 004C3EDD    mov         edx,dword ptr [ebp-8]
 004C3EE0    mov         eax,[0055DD98];gvar_0055DD98:IInterface
 004C3EE5    mov         ebx,dword ptr [eax]
 004C3EE7    call        dword ptr [ebx+10]
 004C3EEA    mov         byte ptr [ebp-9],al
 004C3EED    xor         eax,eax
 004C3EEF    pop         edx
 004C3EF0    pop         ecx
 004C3EF1    pop         ecx
 004C3EF2    mov         dword ptr fs:[eax],edx
 004C3EF5    push        4C3F0A
 004C3EFA    lea         eax,[ebp-10]
 004C3EFD    call        @LStrClr
 004C3F02    ret
>004C3F03    jmp         @HandleFinally
>004C3F08    jmp         004C3EFA
 004C3F0A    mov         al,byte ptr [ebp-9]
 004C3F0D    pop         ebx
 004C3F0E    mov         esp,ebp
 004C3F10    pop         ebp
 004C3F11    ret
end;*}

//004C3F14
{*procedure sub_004C3F14(?:?; ?:?);
begin
 004C3F14    push        ebp
 004C3F15    mov         ebp,esp
 004C3F17    add         esp,0FFFFFEE8
 004C3F1D    xor         ecx,ecx
 004C3F1F    mov         dword ptr [ebp-118],ecx
 004C3F25    mov         dword ptr [ebp-0C],ecx
 004C3F28    mov         dword ptr [ebp-8],edx
 004C3F2B    mov         dword ptr [ebp-4],eax
 004C3F2E    xor         eax,eax
 004C3F30    push        ebp
 004C3F31    push        4C4019
 004C3F36    push        dword ptr fs:[eax]
 004C3F39    mov         dword ptr fs:[eax],esp
 004C3F3C    mov         eax,dword ptr [ebp-8]
 004C3F3F    mov         dword ptr [ebp-114],eax
 004C3F45    mov         byte ptr [ebp-110],0B
 004C3F4C    lea         eax,[ebp-114]
 004C3F52    push        eax
 004C3F53    push        0
 004C3F55    mov         ecx,4C4024
 004C3F5A    lea         eax,[ebp-10C]
 004C3F60    mov         edx,0FF
 004C3F65    call        004679CC
 004C3F6A    lea         ecx,[ebp-0C]
 004C3F6D    xor         edx,edx
 004C3F6F    mov         eax,dword ptr [ebp-4]
 004C3F72    call        004C39AC
 004C3F77    mov         eax,dword ptr [ebp-4]
 004C3F7A    call        004C4450
 004C3F7F    test        al,al
>004C3F81    je          004C3FF8
 004C3F83    push        0
 004C3F85    lea         eax,[ebp-118]
 004C3F8B    lea         edx,[ebp-10C]
 004C3F91    mov         ecx,100
 004C3F96    call        @LStrFromArray
 004C3F9B    mov         ecx,dword ptr [ebp-118]
 004C3FA1    mov         dl,1
 004C3FA3    mov         eax,dword ptr [ebp-4]
 004C3FA6    call        004C4370
 004C3FAB    test        al,al
>004C3FAD    je          004C3FF8
 004C3FAF    cmp         dword ptr [ebp-0C],0
>004C3FB3    je          004C3FF8
 004C3FB5    mov         eax,dword ptr [ebp-4]
 004C3FB8    mov         byte ptr [eax+10],1
 004C3FBC    mov         eax,dword ptr [ebp-4]
 004C3FBF    add         eax,14
 004C3FC2    lea         edx,[ebp-10C]
 004C3FC8    mov         ecx,100
 004C3FCD    call        @LStrFromArray
 004C3FD2    lea         eax,[ebp-10C]
 004C3FD8    push        eax
 004C3FD9    push        102
 004C3FDE    mov         eax,dword ptr [ebp-0C]
 004C3FE1    call        @LStrToPChar
 004C3FE6    push        eax
 004C3FE7    mov         eax,dword ptr [ebp-4]
 004C3FEA    mov         eax,dword ptr [eax+1C]
 004C3FED    mov         edx,dword ptr [eax]
 004C3FEF    call        dword ptr [edx+0C]
 004C3FF2    push        eax
 004C3FF3    call        user32.WinHelpA
 004C3FF8    xor         eax,eax
 004C3FFA    pop         edx
 004C3FFB    pop         ecx
 004C3FFC    pop         ecx
 004C3FFD    mov         dword ptr fs:[eax],edx
 004C4000    push        4C4020
 004C4005    lea         eax,[ebp-118]
 004C400B    call        @LStrClr
 004C4010    lea         eax,[ebp-0C]
 004C4013    call        @LStrClr
 004C4018    ret
>004C4019    jmp         @HandleFinally
>004C401E    jmp         004C4005
 004C4020    mov         esp,ebp
 004C4022    pop         ebp
 004C4023    ret
end;*}

//004C4034
{*function sub_004C4034(?:?; ?:?; ?:?):?;
begin
 004C4034    push        ebp
 004C4035    mov         ebp,esp
 004C4037    add         esp,0FFFFFFEC
 004C403A    push        ebx
 004C403B    xor         ebx,ebx
 004C403D    mov         dword ptr [ebp-14],ebx
 004C4040    mov         dword ptr [ebp-0C],ecx
 004C4043    mov         dword ptr [ebp-8],edx
 004C4046    mov         dword ptr [ebp-4],eax
 004C4049    xor         eax,eax
 004C404B    push        ebp
 004C404C    push        4C409B
 004C4051    push        dword ptr fs:[eax]
 004C4054    mov         dword ptr fs:[eax],esp
 004C4057    mov         byte ptr [ebp-0D],1
 004C405B    cmp         dword ptr ds:[55DD98],0;gvar_0055DD98:IInterface
>004C4062    je          004C4085
 004C4064    lea         ecx,[ebp-14]
 004C4067    mov         edx,dword ptr [ebp-0C]
 004C406A    mov         eax,dword ptr [ebp-4]
 004C406D    call        004C39AC
 004C4072    mov         ecx,dword ptr [ebp-14]
 004C4075    mov         edx,dword ptr [ebp-8]
 004C4078    mov         eax,[0055DD98];gvar_0055DD98:IInterface
 004C407D    mov         ebx,dword ptr [eax]
 004C407F    call        dword ptr [ebx+14]
 004C4082    mov         byte ptr [ebp-0D],al
 004C4085    xor         eax,eax
 004C4087    pop         edx
 004C4088    pop         ecx
 004C4089    pop         ecx
 004C408A    mov         dword ptr fs:[eax],edx
 004C408D    push        4C40A2
 004C4092    lea         eax,[ebp-14]
 004C4095    call        @LStrClr
 004C409A    ret
>004C409B    jmp         @HandleFinally
>004C40A0    jmp         004C4092
 004C40A2    mov         al,byte ptr [ebp-0D]
 004C40A5    pop         ebx
 004C40A6    mov         esp,ebp
 004C40A8    pop         ebp
 004C40A9    ret
end;*}

//004C40AC
{*procedure sub_004C40AC(?:?; ?:?; ?:?);
begin
 004C40AC    push        ebp
 004C40AD    mov         ebp,esp
 004C40AF    add         esp,0FFFFFFF0
 004C40B2    push        ebx
 004C40B3    xor         ebx,ebx
 004C40B5    mov         dword ptr [ebp-10],ebx
 004C40B8    mov         dword ptr [ebp-0C],ecx
 004C40BB    mov         dword ptr [ebp-8],edx
 004C40BE    mov         dword ptr [ebp-4],eax
 004C40C1    xor         eax,eax
 004C40C3    push        ebp
 004C40C4    push        4C4149
 004C40C9    push        dword ptr fs:[eax]
 004C40CC    mov         dword ptr fs:[eax],esp
 004C40CF    lea         ecx,[ebp-10]
 004C40D2    mov         edx,dword ptr [ebp-0C]
 004C40D5    mov         eax,dword ptr [ebp-4]
 004C40D8    call        004C39AC
 004C40DD    mov         eax,dword ptr [ebp-4]
 004C40E0    call        004C4450
 004C40E5    test        al,al
>004C40E7    je          004C4133
 004C40E9    mov         eax,dword ptr [ebp-8]
 004C40EC    push        eax
 004C40ED    xor         ecx,ecx
 004C40EF    xor         edx,edx
 004C40F1    mov         eax,dword ptr [ebp-4]
 004C40F4    call        004C4370
 004C40F9    test        al,al
>004C40FB    je          004C4133
 004C40FD    cmp         dword ptr [ebp-10],0
>004C4101    je          004C4133
 004C4103    mov         eax,dword ptr [ebp-4]
 004C4106    mov         byte ptr [eax+10],0
 004C410A    mov         eax,dword ptr [ebp-8]
 004C410D    mov         edx,dword ptr [ebp-4]
 004C4110    mov         dword ptr [edx+18],eax
 004C4113    mov         eax,dword ptr [ebp-8]
 004C4116    push        eax
 004C4117    push        1
 004C4119    mov         eax,dword ptr [ebp-10]
 004C411C    call        @LStrToPChar
 004C4121    push        eax
 004C4122    mov         eax,dword ptr [ebp-4]
 004C4125    mov         eax,dword ptr [eax+1C]
 004C4128    mov         edx,dword ptr [eax]
 004C412A    call        dword ptr [edx+0C]
 004C412D    push        eax
 004C412E    call        user32.WinHelpA
 004C4133    xor         eax,eax
 004C4135    pop         edx
 004C4136    pop         ecx
 004C4137    pop         ecx
 004C4138    mov         dword ptr fs:[eax],edx
 004C413B    push        4C4150
 004C4140    lea         eax,[ebp-10]
 004C4143    call        @LStrClr
 004C4148    ret
>004C4149    jmp         @HandleFinally
>004C414E    jmp         004C4140
 004C4150    pop         ebx
 004C4151    mov         esp,ebp
 004C4153    pop         ebp
 004C4154    ret
end;*}

//004C4158
{*function sub_004C4158(?:?; ?:?; ?:?; ?:?; ?:?):?;
begin
 004C4158    push        ebp
 004C4159    mov         ebp,esp
 004C415B    add         esp,0FFFFFFE4
 004C415E    push        ebx
 004C415F    xor         ebx,ebx
 004C4161    mov         dword ptr [ebp-1C],ebx
 004C4164    mov         dword ptr [ebp-18],ebx
 004C4167    mov         dword ptr [ebp-14],ebx
 004C416A    mov         dword ptr [ebp-0C],ecx
 004C416D    mov         dword ptr [ebp-8],edx
 004C4170    mov         dword ptr [ebp-4],eax
 004C4173    xor         eax,eax
 004C4175    push        ebp
 004C4176    push        4C4262
 004C417B    push        dword ptr fs:[eax]
 004C417E    mov         dword ptr fs:[eax],esp
 004C4181    mov         byte ptr [ebp-0D],0
 004C4185    mov         eax,dword ptr [ebp-4]
 004C4188    call        004C4450
 004C418D    test        al,al
>004C418F    je          004C4247
 004C4195    cmp         word ptr [ebp+0C],102
>004C419B    je          004C41CA
 004C419D    cmp         word ptr [ebp+0C],105
>004C41A3    je          004C41CA
 004C41A5    cmp         word ptr [ebp+0C],201
>004C41AB    je          004C41CA
 004C41AD    cmp         word ptr [ebp+0C],0A
>004C41B2    je          004C41CA
 004C41B4    cmp         word ptr [ebp+0C],8
>004C41B9    je          004C41CA
 004C41BB    cmp         word ptr [ebp+0C],1
>004C41C0    je          004C41CA
 004C41C2    cmp         word ptr [ebp+0C],101
>004C41C8    jne         004C41EA
 004C41CA    push        0
 004C41CC    lea         edx,[ebp-14]
 004C41CF    movzx       eax,word ptr [ebp+0C]
 004C41D3    call        IntToStr
 004C41D8    mov         ecx,dword ptr [ebp-14]
 004C41DB    mov         dl,1
 004C41DD    mov         eax,dword ptr [ebp-4]
 004C41E0    call        004C4370
 004C41E5    mov         byte ptr [ebp-0E],al
>004C41E8    jmp         004C41EE
 004C41EA    mov         byte ptr [ebp-0E],1
 004C41EE    cmp         byte ptr [ebp-0E],0
>004C41F2    je          004C4247
 004C41F4    mov         eax,dword ptr [ebp-4]
 004C41F7    mov         byte ptr [eax+10],1
 004C41FB    lea         edx,[ebp-18]
 004C41FE    movzx       eax,word ptr [ebp+0C]
 004C4202    call        IntToStr
 004C4207    mov         edx,dword ptr [ebp-18]
 004C420A    mov         eax,dword ptr [ebp-4]
 004C420D    add         eax,14
 004C4210    call        @LStrAsg
 004C4215    mov         eax,dword ptr [ebp+8]
 004C4218    push        eax
 004C4219    movzx       eax,word ptr [ebp+0C]
 004C421D    push        eax
 004C421E    lea         ecx,[ebp-1C]
 004C4221    mov         edx,dword ptr [ebp-0C]
 004C4224    mov         eax,dword ptr [ebp-4]
 004C4227    call        004C39AC
 004C422C    mov         eax,dword ptr [ebp-1C]
 004C422F    call        @LStrToPChar
 004C4234    push        eax
 004C4235    mov         eax,dword ptr [ebp-8]
 004C4238    push        eax
 004C4239    call        user32.WinHelpA
 004C423E    cmp         eax,1
 004C4241    sbb         eax,eax
 004C4243    inc         eax
 004C4244    mov         byte ptr [ebp-0D],al
 004C4247    xor         eax,eax
 004C4249    pop         edx
 004C424A    pop         ecx
 004C424B    pop         ecx
 004C424C    mov         dword ptr fs:[eax],edx
 004C424F    push        4C4269
 004C4254    lea         eax,[ebp-1C]
 004C4257    mov         edx,3
 004C425C    call        @LStrArrayClr
 004C4261    ret
>004C4262    jmp         @HandleFinally
>004C4267    jmp         004C4254
 004C4269    mov         al,byte ptr [ebp-0D]
 004C426C    pop         ebx
 004C426D    mov         esp,ebp
 004C426F    pop         ebp
 004C4270    ret         8
end;*}

//004C4340
{*procedure sub_004C4340(?:?);
begin
 004C4340    push        ebp
 004C4341    mov         ebp,esp
 004C4343    push        ecx
 004C4344    mov         dword ptr [ebp-4],eax
 004C4347    mov         eax,dword ptr [ebp-4]
 004C434A    mov         byte ptr [eax+0C],0
 004C434E    mov         eax,dword ptr [ebp-4]
 004C4351    mov         byte ptr [eax+0D],0
 004C4355    mov         eax,dword ptr [ebp-4]
 004C4358    xor         edx,edx
 004C435A    mov         dword ptr [eax+4],edx
 004C435D    mov         eax,dword ptr [ebp-4]
 004C4360    push        eax
 004C4361    push        4C4274
 004C4366    call        user32.EnumWindows
 004C436B    pop         ecx
 004C436C    pop         ebp
 004C436D    ret
end;*}

//004C4370
{*function sub_004C4370(?:?; ?:?; ?:AnsiString; ?:?):?;
begin
 004C4370    push        ebp
 004C4371    mov         ebp,esp
 004C4373    add         esp,0FFFFFFE0
 004C4376    mov         dword ptr [ebp-0C],ecx
 004C4379    mov         byte ptr [ebp-5],dl
 004C437C    mov         dword ptr [ebp-4],eax
 004C437F    mov         eax,dword ptr [ebp-0C]
 004C4382    call        @LStrAddRef
 004C4387    xor         eax,eax
 004C4389    push        ebp
 004C438A    push        4C43F4
 004C438F    push        dword ptr fs:[eax]
 004C4392    mov         dword ptr fs:[eax],esp
 004C4395    mov         byte ptr [ebp-0D],1
 004C4399    lea         eax,[ebp-20]
 004C439C    call        004C4340
 004C43A1    cmp         byte ptr [ebp-14],0
>004C43A5    je          004C43DE
 004C43A7    mov         al,byte ptr [ebp-5]
 004C43AA    mov         edx,dword ptr [ebp-4]
 004C43AD    cmp         al,byte ptr [edx+10]
>004C43B0    jne         004C43DE
 004C43B2    mov         al,byte ptr [ebp-5]
 004C43B5    sub         al,1
>004C43B7    jb          004C43D1
>004C43B9    jne         004C43DE
 004C43BB    mov         eax,dword ptr [ebp-4]
 004C43BE    mov         edx,dword ptr [eax+14]
 004C43C1    mov         eax,dword ptr [ebp-0C]
 004C43C4    call        CompareStr
 004C43C9    test        eax,eax
 004C43CB    setne       byte ptr [ebp-0D]
>004C43CF    jmp         004C43DE
 004C43D1    mov         eax,dword ptr [ebp+8]
 004C43D4    mov         edx,dword ptr [ebp-4]
 004C43D7    cmp         eax,dword ptr [edx+18]
 004C43DA    setne       byte ptr [ebp-0D]
 004C43DE    xor         eax,eax
 004C43E0    pop         edx
 004C43E1    pop         ecx
 004C43E2    pop         ecx
 004C43E3    mov         dword ptr fs:[eax],edx
 004C43E6    push        4C43FB
 004C43EB    lea         eax,[ebp-0C]
 004C43EE    call        @LStrClr
 004C43F3    ret
>004C43F4    jmp         @HandleFinally
>004C43F9    jmp         004C43EB
 004C43FB    mov         al,byte ptr [ebp-0D]
 004C43FE    mov         esp,ebp
 004C4400    pop         ebp
 004C4401    ret         4
end;*}

//004C4404
{*function sub_004C4404(?:?; ?:?):?;
begin
 004C4404    push        ebp
 004C4405    mov         ebp,esp
 004C4407    add         esp,0FFFFFFE8
 004C440A    push        esi
 004C440B    push        edi
 004C440C    mov         esi,edx
 004C440E    lea         edi,[ebp-18]
 004C4411    movs        dword ptr [edi],dword ptr [esi]
 004C4412    movs        dword ptr [edi],dword ptr [esi]
 004C4413    movs        dword ptr [edi],dword ptr [esi]
 004C4414    movs        dword ptr [edi],dword ptr [esi]
 004C4415    mov         dword ptr [ebp-4],eax
 004C4418    mov         byte ptr [ebp-5],0
 004C441C    mov         al,byte ptr [ebp-5]
 004C441F    pop         edi
 004C4420    pop         esi
 004C4421    mov         esp,ebp
 004C4423    pop         ebp
 004C4424    ret
end;*}

//004C4428
{*function sub_004C4428(?:?; ?:?):?;
begin
 004C4428    push        ebp
 004C4429    mov         ebp,esp
 004C442B    add         esp,0FFFFFFE8
 004C442E    push        esi
 004C442F    push        edi
 004C4430    mov         esi,edx
 004C4432    lea         edi,[ebp-18]
 004C4435    movs        dword ptr [edi],dword ptr [esi]
 004C4436    movs        dword ptr [edi],dword ptr [esi]
 004C4437    movs        dword ptr [edi],dword ptr [esi]
 004C4438    movs        dword ptr [edi],dword ptr [esi]
 004C4439    mov         dword ptr [ebp-4],eax
 004C443C    mov         al,byte ptr [ebp-0B]
 004C443F    xor         al,1
 004C4441    mov         byte ptr [ebp-5],al
 004C4444    mov         al,byte ptr [ebp-5]
 004C4447    pop         edi
 004C4448    pop         esi
 004C4449    mov         esp,ebp
 004C444B    pop         ebp
 004C444C    ret
end;*}

//004C4450
{*function sub_004C4450(?:?):?;
begin
 004C4450    push        ebp
 004C4451    mov         ebp,esp
 004C4453    add         esp,0FFFFFFE8
 004C4456    mov         dword ptr [ebp-4],eax
 004C4459    mov         byte ptr [ebp-5],0
 004C445D    lea         eax,[ebp-18]
 004C4460    call        004C4340
 004C4465    cmp         byte ptr [ebp-0C],0
>004C4469    je          004C4485
 004C446B    lea         eax,[ebp-18]
 004C446E    push        eax
 004C446F    push        4C42DC
 004C4474    push        0
 004C4476    mov         eax,dword ptr [ebp-14]
 004C4479    push        eax
 004C447A    call        user32.GetWindowThreadProcessId
 004C447F    push        eax
 004C4480    call        user32.EnumThreadWindows
 004C4485    lea         edx,[ebp-18]
 004C4488    mov         eax,dword ptr [ebp-4]
 004C448B    call        004C4404
 004C4490    test        al,al
>004C4492    jne         004C44AF
 004C4494    lea         edx,[ebp-18]
 004C4497    mov         eax,dword ptr [ebp-4]
 004C449A    call        004C4428
 004C449F    test        al,al
>004C44A1    je          004C44AB
 004C44A3    mov         eax,dword ptr [ebp-4]
 004C44A6    call        004C44B8
 004C44AB    mov         byte ptr [ebp-5],1
 004C44AF    mov         al,byte ptr [ebp-5]
 004C44B2    mov         esp,ebp
 004C44B4    pop         ebp
 004C44B5    ret
end;*}

//004C44B8
{*procedure sub_004C44B8(?:?);
begin
 004C44B8    push        ebp
 004C44B9    mov         ebp,esp
 004C44BB    add         esp,0FFFFFFF4
 004C44BE    xor         edx,edx
 004C44C0    mov         dword ptr [ebp-0C],edx
 004C44C3    mov         dword ptr [ebp-4],eax
 004C44C6    xor         eax,eax
 004C44C8    push        ebp
 004C44C9    push        4C4541
 004C44CE    push        dword ptr fs:[eax]
 004C44D1    mov         dword ptr fs:[eax],esp
 004C44D4    mov         eax,dword ptr [ebp-4]
 004C44D7    call        004C3E3C
 004C44DC    call        kernel32.GetTickCount
 004C44E1    mov         dword ptr [ebp-8],eax
 004C44E4    push        0
 004C44E6    call        kernel32.Sleep
 004C44EB    call        kernel32.GetTickCount
 004C44F0    sub         eax,dword ptr [ebp-8]
 004C44F3    cmp         eax,3E8
>004C44F8    jbe         004C44E4
 004C44FA    lea         ecx,[ebp-0C]
 004C44FD    xor         edx,edx
 004C44FF    mov         eax,dword ptr [ebp-4]
 004C4502    call        004C39AC
 004C4507    cmp         dword ptr [ebp-0C],0
>004C450B    je          004C452B
 004C450D    push        0
 004C450F    push        9
 004C4511    mov         eax,dword ptr [ebp-0C]
 004C4514    call        @LStrToPChar
 004C4519    push        eax
 004C451A    mov         eax,dword ptr [ebp-4]
 004C451D    mov         eax,dword ptr [eax+1C]
 004C4520    mov         edx,dword ptr [eax]
 004C4522    call        dword ptr [edx+0C]
 004C4525    push        eax
 004C4526    call        user32.WinHelpA
 004C452B    xor         eax,eax
 004C452D    pop         edx
 004C452E    pop         ecx
 004C452F    pop         ecx
 004C4530    mov         dword ptr fs:[eax],edx
 004C4533    push        4C4548
 004C4538    lea         eax,[ebp-0C]
 004C453B    call        @LStrClr
 004C4540    ret
>004C4541    jmp         @HandleFinally
>004C4546    jmp         004C4538
 004C4548    mov         esp,ebp
 004C454A    pop         ebp
 004C454B    ret
end;*}

//004C454C
constructor TWinHelpViewer.Create;
begin
{*
 004C454C    push        ebp
 004C454D    mov         ebp,esp
 004C454F    add         esp,0FFFFFFF8
 004C4552    test        dl,dl
>004C4554    je          004C455E
 004C4556    add         esp,0FFFFFFF0
 004C4559    call        @ClassCreate
 004C455E    mov         byte ptr [ebp-5],dl
 004C4561    mov         dword ptr [ebp-4],eax
 004C4564    xor         edx,edx
 004C4566    mov         eax,dword ptr [ebp-4]
 004C4569    call        TObject.Create
 004C456E    mov         eax,55DDA8
 004C4573    mov         edx,dword ptr [ebp-4]
 004C4576    test        edx,edx
>004C4578    je          004C457D
 004C457A    sub         edx,0FFFFFFE0
 004C457D    call        @IntfCopy
 004C4582    mov         eax,dword ptr [ebp-4]
 004C4585    cmp         byte ptr [ebp-5],0
>004C4589    je          004C459A
 004C458B    call        @AfterConstruction
 004C4590    pop         dword ptr fs:[0]
 004C4597    add         esp,0C
 004C459A    mov         eax,dword ptr [ebp-4]
 004C459D    pop         ecx
 004C459E    pop         ecx
 004C459F    pop         ebp
 004C45A0    ret
*}
end;

Initialization
//004C4654
{*
 004C4654    push        ebp
 004C4655    mov         ebp,esp
 004C4657    xor         eax,eax
 004C4659    push        ebp
 004C465A    push        4C46A6
 004C465F    push        dword ptr fs:[eax]
 004C4662    mov         dword ptr fs:[eax],esp
 004C4665    sub         dword ptr ds:[55DDA0],1
>004C466C    jae         004C4698
 004C466E    mov         dl,1
 004C4670    mov         eax,[004C3934];TWinHelpViewer
 004C4675    call        TWinHelpViewer.Create
 004C467A    mov         [0055DDA4],eax
 004C467F    mov         eax,[0055DDA4]
 004C4684    add         eax,1C
 004C4687    call        @IntfClear
 004C468C    mov         edx,eax
 004C468E    mov         eax,[0055DDA8]
 004C4693    call        RegisterViewer
 004C4698    xor         eax,eax
 004C469A    pop         edx
 004C469B    pop         ecx
 004C469C    pop         ecx
 004C469D    mov         dword ptr fs:[eax],edx
 004C46A0    push        4C46AD
 004C46A5    ret
>004C46A6    jmp         @HandleFinally
>004C46AB    jmp         004C46A5
 004C46AD    pop         ebp
 004C46AE    ret
*}
Finalization
//004C45DC
{*
 004C45DC    push        ebp
 004C45DD    mov         ebp,esp
 004C45DF    xor         eax,eax
 004C45E1    push        ebp
 004C45E2    push        4C464A
 004C45E7    push        dword ptr fs:[eax]
 004C45EA    mov         dword ptr fs:[eax],esp
 004C45ED    inc         dword ptr ds:[55DDA0]
>004C45F3    jne         004C463C
 004C45F5    mov         eax,[0055DDA4]
 004C45FA    cmp         dword ptr [eax+1C],0
>004C45FE    je          004C460A
 004C4600    mov         eax,[0055DDA4]
 004C4605    call        TWinHelpViewer.InternalShutDown
 004C460A    mov         eax,55DDA8
 004C460F    call        @IntfClear
 004C4614    mov         eax,55DD98;gvar_0055DD98:IInterface
 004C4619    call        @IntfClear
 004C461E    mov         eax,55DDA8
 004C4623    call        @IntfClear
 004C4628    mov         eax,55DD9C;gvar_0055DD9C
 004C462D    call        @LStrClr
 004C4632    mov         eax,55DD98;gvar_0055DD98:IInterface
 004C4637    call        @IntfClear
 004C463C    xor         eax,eax
 004C463E    pop         edx
 004C463F    pop         ecx
 004C4640    pop         ecx
 004C4641    mov         dword ptr fs:[eax],edx
 004C4644    push        4C4651
 004C4649    ret
>004C464A    jmp         @HandleFinally
>004C464F    jmp         004C4649
 004C4651    pop         ebp
 004C4652    ret
*}
end.