//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit _Unit80;

interface

uses
  SysUtils, Classes;

type
  TSingleMessage = TSingleMessage = record//size=C
f4:String;//f4
end;;
  TLispMessages = class(TObject)
    constructor Create;//00523C50
  end;
    //function sub_00523B2C(?:?; ?:?; ?:?; ?:?):?;//00523B2C
    //function sub_00523CE8(?:?; ?:?; ?:?):?;//00523CE8
    //function sub_00523DE8(?:?; ?:?):?;//00523DE8
    //procedure sub_00523E74(?:?; ?:?; ?:?; ?:?);//00523E74
    //procedure sub_00523EBC(?:?; ?:TLISPListElement);//00523EBC

implementation

//00523B2C
{*function sub_00523B2C(?:?; ?:?; ?:?; ?:?):?;
begin
 00523B2C    push        ebp
 00523B2D    mov         ebp,esp
 00523B2F    add         esp,0FFFFFFE8
 00523B32    mov         dword ptr [ebp-0C],ecx
 00523B35    mov         dword ptr [ebp-8],edx
 00523B38    mov         dword ptr [ebp-4],eax
 00523B3B    mov         eax,dword ptr [ebp-0C]
 00523B3E    call        @LStrAddRef
 00523B43    xor         eax,eax
 00523B45    push        ebp
 00523B46    push        523BE9
 00523B4B    push        dword ptr fs:[eax]
 00523B4E    mov         dword ptr fs:[eax],esp
 00523B51    mov         byte ptr [ebp-0D],1
 00523B55    mov         edx,dword ptr ds:[523AAC];TSingleMessage
 00523B5B    mov         eax,0C
 00523B60    call        00405948
 00523B65    mov         dword ptr [ebp-14],eax
 00523B68    mov         eax,dword ptr [ebp-8]
 00523B6B    mov         edx,dword ptr [ebp-14]
 00523B6E    mov         dword ptr [edx],eax
 00523B70    mov         eax,dword ptr [ebp-14]
 00523B73    add         eax,4
 00523B76    mov         edx,dword ptr [ebp-0C]
 00523B79    call        @LStrAsg
 00523B7E    mov         al,byte ptr [ebp+8]
 00523B81    mov         edx,dword ptr [ebp-14]
 00523B84    mov         byte ptr [edx+8],al
 00523B87    mov         cl,byte ptr [ebp+8]
 00523B8A    mov         edx,dword ptr [ebp-8]
 00523B8D    mov         eax,dword ptr [ebp-4]
 00523B90    call        00523CE8
 00523B95    mov         dword ptr [ebp-18],eax
 00523B98    cmp         dword ptr [ebp-18],0
>00523B9C    jl          00523BC5
 00523B9E    mov         edx,dword ptr [ebp-18]
 00523BA1    mov         eax,dword ptr [ebp-4]
 00523BA4    mov         eax,dword ptr [eax+4]
 00523BA7    call        TList.Get
 00523BAC    mov         edx,dword ptr ds:[523AAC];TSingleMessage
 00523BB2    call        @Dispose
 00523BB7    mov         edx,dword ptr [ebp-18]
 00523BBA    mov         eax,dword ptr [ebp-4]
 00523BBD    mov         eax,dword ptr [eax+4]
 00523BC0    call        00478668
 00523BC5    mov         edx,dword ptr [ebp-14]
 00523BC8    mov         eax,dword ptr [ebp-4]
 00523BCB    mov         eax,dword ptr [eax+4]
 00523BCE    call        TList.Add
 00523BD3    xor         eax,eax
 00523BD5    pop         edx
 00523BD6    pop         ecx
 00523BD7    pop         ecx
 00523BD8    mov         dword ptr fs:[eax],edx
 00523BDB    push        523BF0
 00523BE0    lea         eax,[ebp-0C]
 00523BE3    call        @LStrClr
 00523BE8    ret
>00523BE9    jmp         @HandleFinally
>00523BEE    jmp         00523BE0
 00523BF0    mov         al,byte ptr [ebp-0D]
 00523BF3    mov         esp,ebp
 00523BF5    pop         ebp
 00523BF6    ret         4
end;*}

//00523C50
constructor TLispMessages.Create;
begin
{*
 00523C50    push        ebp
 00523C51    mov         ebp,esp
 00523C53    add         esp,0FFFFFFF8
 00523C56    test        dl,dl
>00523C58    je          00523C62
 00523C5A    add         esp,0FFFFFFF0
 00523C5D    call        @ClassCreate
 00523C62    mov         byte ptr [ebp-5],dl
 00523C65    mov         dword ptr [ebp-4],eax
 00523C68    xor         edx,edx
 00523C6A    mov         eax,dword ptr [ebp-4]
 00523C6D    call        TObject.Create
 00523C72    mov         dl,1
 00523C74    mov         eax,[004759C0];TList
 00523C79    call        TObject.Create;TList.Create
 00523C7E    mov         edx,dword ptr [ebp-4]
 00523C81    mov         dword ptr [edx+4],eax
 00523C84    mov         eax,dword ptr [ebp-4]
 00523C87    cmp         byte ptr [ebp-5],0
>00523C8B    je          00523C9C
 00523C8D    call        @AfterConstruction
 00523C92    pop         dword ptr fs:[0]
 00523C99    add         esp,0C
 00523C9C    mov         eax,dword ptr [ebp-4]
 00523C9F    pop         ecx
 00523CA0    pop         ecx
 00523CA1    pop         ebp
 00523CA2    ret
*}
end;

//00523CE8
{*function sub_00523CE8(?:?; ?:?; ?:?):?;
begin
 00523CE8    push        ebp
 00523CE9    mov         ebp,esp
 00523CEB    add         esp,0FFFFFFE4
 00523CEE    mov         byte ptr [ebp-9],cl
 00523CF1    mov         dword ptr [ebp-8],edx
 00523CF4    mov         dword ptr [ebp-4],eax
 00523CF7    mov         dword ptr [ebp-10],0FFFFFFFF
 00523CFE    mov         eax,dword ptr [ebp-4]
 00523D01    mov         eax,dword ptr [eax+4]
 00523D04    mov         eax,dword ptr [eax+8]
 00523D07    dec         eax
 00523D08    test        eax,eax
>00523D0A    jl          00523D4D
 00523D0C    inc         eax
 00523D0D    mov         dword ptr [ebp-1C],eax
 00523D10    mov         dword ptr [ebp-14],0
 00523D17    mov         eax,dword ptr [ebp-4]
 00523D1A    mov         eax,dword ptr [eax+4]
 00523D1D    mov         edx,dword ptr [ebp-14]
 00523D20    call        TList.Get
 00523D25    mov         dword ptr [ebp-18],eax
 00523D28    mov         eax,dword ptr [ebp-18]
 00523D2B    mov         eax,dword ptr [eax]
 00523D2D    cmp         eax,dword ptr [ebp-8]
>00523D30    jne         00523D45
 00523D32    mov         eax,dword ptr [ebp-18]
 00523D35    mov         al,byte ptr [eax+8]
 00523D38    cmp         al,byte ptr [ebp-9]
>00523D3B    jne         00523D45
 00523D3D    mov         eax,dword ptr [ebp-14]
 00523D40    mov         dword ptr [ebp-10],eax
>00523D43    jmp         00523D4D
 00523D45    inc         dword ptr [ebp-14]
 00523D48    dec         dword ptr [ebp-1C]
>00523D4B    jne         00523D17
 00523D4D    mov         eax,dword ptr [ebp-10]
 00523D50    mov         esp,ebp
 00523D52    pop         ebp
 00523D53    ret
end;*}

//00523DE8
{*function sub_00523DE8(?:?; ?:?):?;
begin
 00523DE8    push        ebp
 00523DE9    mov         ebp,esp
 00523DEB    add         esp,0FFFFFFEC
 00523DEE    xor         ecx,ecx
 00523DF0    mov         dword ptr [ebp-14],ecx
 00523DF3    mov         dword ptr [ebp-8],edx
 00523DF6    mov         dword ptr [ebp-4],eax
 00523DF9    mov         eax,dword ptr [ebp-8]
 00523DFC    call        @LStrAddRef
 00523E01    xor         eax,eax
 00523E03    push        ebp
 00523E04    push        523E66
 00523E09    push        dword ptr fs:[eax]
 00523E0C    mov         dword ptr fs:[eax],esp
 00523E0F    mov         byte ptr [ebp-9],8
 00523E13    xor         eax,eax
 00523E15    mov         dword ptr [ebp-10],eax
 00523E18    lea         edx,[ebp-14]
 00523E1B    mov         eax,dword ptr [ebp-8]
 00523E1E    call        00466210
 00523E23    mov         eax,dword ptr [ebp-14]
 00523E26    mov         edx,dword ptr [ebp-10]
 00523E29    mov         edx,dword ptr [edx*4+54E5A0];^'sys'
 00523E30    call        @LStrCmp
>00523E35    jne         00523E3F
 00523E37    mov         al,byte ptr [ebp-10]
 00523E3A    mov         byte ptr [ebp-9],al
>00523E3D    jmp         00523E48
 00523E3F    inc         dword ptr [ebp-10]
 00523E42    cmp         dword ptr [ebp-10],8
>00523E46    jne         00523E18
 00523E48    xor         eax,eax
 00523E4A    pop         edx
 00523E4B    pop         ecx
 00523E4C    pop         ecx
 00523E4D    mov         dword ptr fs:[eax],edx
 00523E50    push        523E6D
 00523E55    lea         eax,[ebp-14]
 00523E58    call        @LStrClr
 00523E5D    lea         eax,[ebp-8]
 00523E60    call        @LStrClr
 00523E65    ret
>00523E66    jmp         @HandleFinally
>00523E6B    jmp         00523E55
 00523E6D    mov         al,byte ptr [ebp-9]
 00523E70    mov         esp,ebp
 00523E72    pop         ebp
 00523E73    ret
end;*}

//00523E74
{*procedure sub_00523E74(?:?; ?:?; ?:?; ?:?);
begin
 00523E74    push        ebp
 00523E75    mov         ebp,esp
 00523E77    add         esp,0FFFFFFF0
 00523E7A    mov         byte ptr [ebp-9],cl
 00523E7D    mov         dword ptr [ebp-8],edx
 00523E80    mov         dword ptr [ebp-4],eax
 00523E83    mov         cl,byte ptr [ebp-9]
 00523E86    mov         edx,dword ptr [ebp-8]
 00523E89    mov         eax,dword ptr [ebp-4]
 00523E8C    call        00523CE8
 00523E91    mov         dword ptr [ebp-10],eax
 00523E94    cmp         dword ptr [ebp-10],0
>00523E98    jl          00523EB3
 00523E9A    mov         edx,dword ptr [ebp-10]
 00523E9D    mov         eax,dword ptr [ebp-4]
 00523EA0    mov         eax,dword ptr [eax+4]
 00523EA3    call        TList.Get
 00523EA8    mov         edx,dword ptr [eax+4]
 00523EAB    mov         eax,dword ptr [ebp+8]
 00523EAE    call        @LStrAsg
 00523EB3    mov         esp,ebp
 00523EB5    pop         ebp
 00523EB6    ret         4
end;*}

//00523EBC
{*procedure sub_00523EBC(?:?; ?:TLISPListElement);
begin
 00523EBC    push        ebp
 00523EBD    mov         ebp,esp
 00523EBF    add         esp,0FFFFFFF0
 00523EC2    xor         ecx,ecx
 00523EC4    mov         dword ptr [ebp-10],ecx
 00523EC7    mov         dword ptr [ebp-0C],ecx
 00523ECA    mov         dword ptr [ebp-8],edx
 00523ECD    mov         dword ptr [ebp-4],eax
 00523ED0    xor         eax,eax
 00523ED2    push        ebp
 00523ED3    push        523F3E
 00523ED8    push        dword ptr fs:[eax]
 00523EDB    mov         dword ptr fs:[eax],esp
 00523EDE    lea         ecx,[ebp-0C]
 00523EE1    xor         edx,edx
 00523EE3    mov         eax,dword ptr [ebp-8]
 00523EE6    call        00523918
 00523EEB    mov         edx,dword ptr [ebp-0C]
 00523EEE    mov         eax,dword ptr [ebp-4]
 00523EF1    call        00523DE8
 00523EF6    push        eax
 00523EF7    lea         ecx,[ebp-10]
 00523EFA    mov         edx,2
 00523EFF    mov         eax,dword ptr [ebp-8]
 00523F02    call        00523918
 00523F07    mov         eax,dword ptr [ebp-10]
 00523F0A    push        eax
 00523F0B    mov         edx,1
 00523F10    mov         eax,dword ptr [ebp-8]
 00523F13    call        005238C8
 00523F18    mov         edx,eax
 00523F1A    mov         eax,dword ptr [ebp-4]
 00523F1D    pop         ecx
 00523F1E    call        00523B2C
 00523F23    xor         eax,eax
 00523F25    pop         edx
 00523F26    pop         ecx
 00523F27    pop         ecx
 00523F28    mov         dword ptr fs:[eax],edx
 00523F2B    push        523F45
 00523F30    lea         eax,[ebp-10]
 00523F33    mov         edx,2
 00523F38    call        @LStrArrayClr
 00523F3D    ret
>00523F3E    jmp         @HandleFinally
>00523F43    jmp         00523F30
 00523F45    mov         esp,ebp
 00523F47    pop         ebp
 00523F48    ret
end;*}

Initialization
Finalization
//00523F4C
{*
 00523F4C    push        ebp
 00523F4D    mov         ebp,esp
 00523F4F    xor         eax,eax
 00523F51    push        ebp
 00523F52    push        523F88
 00523F57    push        dword ptr fs:[eax]
 00523F5A    mov         dword ptr fs:[eax],esp
 00523F5D    inc         dword ptr ds:[55E088]
>00523F63    jne         00523F7A
 00523F65    mov         eax,54E5A0;^'sys'
 00523F6A    mov         ecx,8
 00523F6F    mov         edx,dword ptr ds:[4010AC];String
 00523F75    call        @FinalizeArray
 00523F7A    xor         eax,eax
 00523F7C    pop         edx
 00523F7D    pop         ecx
 00523F7E    pop         ecx
 00523F7F    mov         dword ptr fs:[eax],edx
 00523F82    push        523F8F
 00523F87    ret
>00523F88    jmp         @HandleFinally
>00523F8D    jmp         00523F87
 00523F8F    pop         ebp
 00523F90    ret
*}
end.