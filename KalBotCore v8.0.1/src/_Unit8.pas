//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit _Unit8;

interface

uses
  SysUtils, Classes;

type
  _Unit88_3 = .3 = record//size=18
f10:WideString;//f10
end;;
  _DynArr_8_4 = array of _Unit88_3;
//elSize = 18;
  TIProgressAlert = class(TInterfacedObject)
  public
    f10:WideString;//f10
    f30:.4;//f30
    f4C:WideString;//f4C
    //constructor Create(?:?; ?:?);//0040C4A4
  end;
  _DynArr_8_5 = array of ?;
//elSize = 4
//varType equivalent: varInteger;
    //procedure sub_0040C55C(?:?; ?:?);//0040C55C
    //function sub_0040C570(?:?):?;//0040C570
    //function sub_0040C574(?:?):?;//0040C574
    //procedure sub_0040C578(?:?; ?:?);//0040C578
    //procedure sub_0040C608(?:?; ?:?; ?:?; ?:?);//0040C608
    //procedure sub_0040C71C(?:?);//0040C71C
    //procedure sub_0040C744(?:?);//0040C744
    //procedure sub_0040C750(?:?; ?:?);//0040C750
    //procedure sub_0040C83C(?:?);//0040C83C
    //procedure sub_0040C884(?:?; ?:?);//0040C884
    //function sub_0040C958(?:?; ?:?; ?:?; ?:?):?;//0040C958
    //procedure sub_0040CBD4(?:?; ?:?; ?:?; ?:?);//0040CBD4
    //function sub_0040CCC4(?:?; ?:?; ?:?):?;//0040CCC4
    //procedure sub_0040D3E8(?:?);//0040D3E8
    //procedure sub_0040D468(?:?; ?:?; ?:?; ?:?);//0040D468

implementation

//0040C4A4
{*constructor TIProgressAlert.Create(?:?; ?:?);
begin
 0040C4A4    push        ebp
 0040C4A5    mov         ebp,esp
 0040C4A7    push        ebx
 0040C4A8    push        esi
 0040C4A9    push        edi
 0040C4AA    test        dl,dl
>0040C4AC    je          0040C4B6
 0040C4AE    add         esp,0FFFFFFF0
 0040C4B1    call        @ClassCreate
 0040C4B6    mov         esi,ecx
 0040C4B8    mov         ebx,edx
 0040C4BA    mov         edi,eax
 0040C4BC    xor         edx,edx
 0040C4BE    mov         eax,edi
 0040C4C0    call        TObject.Create
 0040C4C5    lea         eax,[edi+10]
 0040C4C8    mov         edx,esi
 0040C4CA    call        @WStrAsg
 0040C4CF    mov         eax,dword ptr [ebp+0C]
 0040C4D2    mov         dword ptr [edi+48],eax
 0040C4D5    lea         eax,[edi+4C]
 0040C4D8    mov         edx,dword ptr [ebp+8]
 0040C4DB    call        @WStrAsg
 0040C4E0    mov         eax,edi
 0040C4E2    test        bl,bl
>0040C4E4    je          0040C4F5
 0040C4E6    call        @AfterConstruction
 0040C4EB    pop         dword ptr fs:[0]
 0040C4F2    add         esp,0C
 0040C4F5    mov         eax,edi
 0040C4F7    pop         edi
 0040C4F8    pop         esi
 0040C4F9    pop         ebx
 0040C4FA    pop         ebp
 0040C4FB    ret         8
end;*}

//0040C55C
{*procedure sub_0040C55C(?:?; ?:?);
begin
 0040C55C    push        ebx
 0040C55D    push        esi
 0040C55E    mov         esi,edx
 0040C560    mov         ebx,eax
 0040C562    mov         eax,esi
 0040C564    mov         edx,dword ptr [ebx+10]
 0040C567    call        @WStrAsg
 0040C56C    pop         esi
 0040C56D    pop         ebx
 0040C56E    ret
end;*}

//0040C570
{*function sub_0040C570(?:?):?;
begin
 0040C570    mov         eax,dword ptr [eax+44]
 0040C573    ret
end;*}

//0040C574
{*function sub_0040C574(?:?):?;
begin
 0040C574    mov         eax,dword ptr [eax+40]
 0040C577    ret
end;*}

//0040C578
{*procedure sub_0040C578(?:?; ?:?);
begin
 0040C578    push        ebp
 0040C579    mov         ebp,esp
 0040C57B    push        0
 0040C57D    push        ebx
 0040C57E    push        esi
 0040C57F    mov         esi,edx
 0040C581    mov         ebx,eax
 0040C583    xor         eax,eax
 0040C585    push        ebp
 0040C586    push        40C5FA
 0040C58B    push        dword ptr fs:[eax]
 0040C58E    mov         dword ptr fs:[eax],esp
 0040C591    mov         eax,dword ptr [ebx+10]
 0040C594    mov         edx,esi
 0040C596    call        @WStrCmp
>0040C59B    je          0040C5E4
 0040C59D    lea         eax,[ebx+10]
 0040C5A0    mov         edx,esi
 0040C5A2    call        @WStrAsg
 0040C5A7    call        kernel32.GetVersion
 0040C5AC    test        eax,80000000
>0040C5B1    jne         0040C5C7
 0040C5B3    mov         eax,dword ptr [ebx+10]
 0040C5B6    call        @WStrToPWChar
 0040C5BB    push        eax
 0040C5BC    mov         eax,dword ptr [ebx+20]
 0040C5BF    push        eax
 0040C5C0    call        user32.SetWindowTextW
>0040C5C5    jmp         0040C5E4
 0040C5C7    lea         eax,[ebp-4]
 0040C5CA    mov         edx,dword ptr [ebx+10]
 0040C5CD    call        @LStrFromWStr
 0040C5D2    mov         eax,dword ptr [ebp-4]
 0040C5D5    call        @LStrToPChar
 0040C5DA    push        eax
 0040C5DB    mov         eax,dword ptr [ebx+20]
 0040C5DE    push        eax
 0040C5DF    call        user32.SetWindowTextA
 0040C5E4    xor         eax,eax
 0040C5E6    pop         edx
 0040C5E7    pop         ecx
 0040C5E8    pop         ecx
 0040C5E9    mov         dword ptr fs:[eax],edx
 0040C5EC    push        40C601
 0040C5F1    lea         eax,[ebp-4]
 0040C5F4    call        @LStrClr
 0040C5F9    ret
>0040C5FA    jmp         @HandleFinally
>0040C5FF    jmp         0040C5F1
 0040C601    pop         esi
 0040C602    pop         ebx
 0040C603    pop         ecx
 0040C604    pop         ebp
 0040C605    ret
end;*}

//0040C608
{*procedure sub_0040C608(?:?; ?:?; ?:?; ?:?);
begin
 0040C608    push        ebp
 0040C609    mov         ebp,esp
 0040C60B    push        0
 0040C60D    push        ebx
 0040C60E    push        esi
 0040C60F    push        edi
 0040C610    mov         edi,edx
 0040C612    mov         ebx,eax
 0040C614    xor         eax,eax
 0040C616    push        ebp
 0040C617    push        40C70B
 0040C61C    push        dword ptr fs:[eax]
 0040C61F    mov         dword ptr fs:[eax],esp
 0040C622    mov         eax,dword ptr [ebx+30]
 0040C625    call        @LStrLen
 0040C62A    mov         esi,eax
 0040C62C    lea         eax,[esi+1]
 0040C62F    push        eax
 0040C630    lea         eax,[ebx+30]
 0040C633    mov         ecx,1
 0040C638    mov         edx,dword ptr ds:[40C31C];_DynArr_8_4
 0040C63E    call        @DynArraySetLength
 0040C643    add         esp,4
 0040C646    lea         eax,[esi+esi*2]
 0040C649    mov         edx,dword ptr [ebx+30]
 0040C64C    mov         ecx,dword ptr [ebx+38]
 0040C64F    mov         dword ptr [edx+eax*8],ecx
 0040C652    mov         ecx,dword ptr [ebx+3C]
 0040C655    mov         dword ptr [edx+eax*8+4],ecx
 0040C659    mov         edx,dword ptr [ebx+30]
 0040C65C    mov         ecx,dword ptr [ebp+8]
 0040C65F    mov         dword ptr [edx+eax*8+8],ecx
 0040C663    mov         ecx,dword ptr [ebp+0C]
 0040C666    mov         dword ptr [edx+eax*8+0C],ecx
 0040C66A    mov         eax,edi
 0040C66C    xor         edx,edx
 0040C66E    call        @WStrCmp
>0040C673    jne         0040C691
 0040C675    test        esi,esi
>0040C677    jle         0040C691
 0040C679    lea         edi,[esi+esi*2]
 0040C67C    mov         eax,dword ptr [ebx+30]
 0040C67F    lea         eax,[eax+edi*8+10]
 0040C683    mov         edx,dword ptr [ebx+30]
 0040C686    mov         edx,dword ptr [edx+edi*8-8]
 0040C68A    call        @WStrAsg
>0040C68F    jmp         0040C6A2
 0040C691    lea         eax,[esi+esi*2]
 0040C694    mov         edx,dword ptr [ebx+30]
 0040C697    lea         eax,[edx+eax*8+10]
 0040C69B    mov         edx,edi
 0040C69D    call        @WStrAsg
 0040C6A2    mov         eax,dword ptr [ebp+8]
 0040C6A5    mov         edx,dword ptr [ebp+0C]
 0040C6A8    add         dword ptr [ebx+38],eax
 0040C6AB    adc         dword ptr [ebx+3C],edx
 0040C6AE    test        esi,esi
>0040C6B0    jne         0040C6F5
 0040C6B2    call        kernel32.GetVersion
 0040C6B7    test        eax,80000000
>0040C6BC    jne         0040C6D5
 0040C6BE    mov         eax,dword ptr [ebx+30]
 0040C6C1    mov         eax,dword ptr [eax+10]
 0040C6C4    call        @WStrToPWChar
 0040C6C9    push        eax
 0040C6CA    mov         eax,dword ptr [ebx+28]
 0040C6CD    push        eax
 0040C6CE    call        user32.SetWindowTextW
>0040C6D3    jmp         0040C6F5
 0040C6D5    lea         eax,[ebp-4]
 0040C6D8    mov         edx,dword ptr [ebx+30]
 0040C6DB    mov         edx,dword ptr [edx+10]
 0040C6DE    call        @LStrFromWStr
 0040C6E3    mov         eax,dword ptr [ebp-4]
 0040C6E6    call        @LStrToPChar
 0040C6EB    push        eax
 0040C6EC    mov         eax,dword ptr [ebx+28]
 0040C6EF    push        eax
 0040C6F0    call        user32.SetWindowTextA
 0040C6F5    xor         eax,eax
 0040C6F7    pop         edx
 0040C6F8    pop         ecx
 0040C6F9    pop         ecx
 0040C6FA    mov         dword ptr fs:[eax],edx
 0040C6FD    push        40C712
 0040C702    lea         eax,[ebp-4]
 0040C705    call        @LStrClr
 0040C70A    ret
>0040C70B    jmp         @HandleFinally
>0040C710    jmp         0040C702
 0040C712    pop         edi
 0040C713    pop         esi
 0040C714    pop         ebx
 0040C715    pop         ecx
 0040C716    pop         ebp
 0040C717    ret         8
end;*}

//0040C71C
{*procedure sub_0040C71C(?:?);
begin
 0040C71C    push        ebx
 0040C71D    mov         ebx,eax
 0040C71F    lea         eax,[ebx+30]
 0040C722    mov         edx,dword ptr ds:[40C31C];_DynArr_8_4
 0040C728    call        @DynArrayClear
 0040C72D    xor         eax,eax
 0040C72F    mov         dword ptr [ebx+40],eax
 0040C732    mov         dword ptr [ebx+38],0
 0040C739    mov         dword ptr [ebx+3C],0
 0040C740    pop         ebx
 0040C741    ret
end;*}

//0040C744
{*procedure sub_0040C744(?:?);
begin
 0040C744    mov         edx,dword ptr [eax+40]
 0040C747    inc         edx
 0040C748    call        0040C750
 0040C74D    ret
end;*}

//0040C750
{*procedure sub_0040C750(?:?; ?:?);
begin
 0040C750    push        ebp
 0040C751    mov         ebp,esp
 0040C753    push        0
 0040C755    push        ebx
 0040C756    push        esi
 0040C757    mov         esi,edx
 0040C759    mov         ebx,eax
 0040C75B    xor         eax,eax
 0040C75D    push        ebp
 0040C75E    push        40C82E
 0040C763    push        dword ptr fs:[eax]
 0040C766    mov         dword ptr fs:[eax],esp
 0040C769    cmp         esi,dword ptr [ebx+40]
>0040C76C    je          0040C818
 0040C772    test        esi,esi
>0040C774    jl          0040C818
 0040C77A    mov         eax,dword ptr [ebx+30]
 0040C77D    call        @LStrLen
 0040C782    cmp         esi,eax
>0040C784    jg          0040C818
 0040C78A    mov         eax,dword ptr [ebx+30]
 0040C78D    call        @LStrLen
 0040C792    cmp         esi,eax
>0040C794    jne         0040C7A8
 0040C796    dec         esi
 0040C797    mov         dword ptr [ebx+40],esi
 0040C79A    mov         edx,3E8
 0040C79F    mov         eax,ebx
 0040C7A1    call        0040C884
>0040C7A6    jmp         0040C7B4
 0040C7A8    mov         dword ptr [ebx+40],esi
 0040C7AB    xor         edx,edx
 0040C7AD    mov         eax,ebx
 0040C7AF    call        0040C884
 0040C7B4    mov         eax,dword ptr [ebx+30]
 0040C7B7    call        @LStrLen
 0040C7BC    cmp         eax,dword ptr [ebx+40]
>0040C7BF    jle         0040C818
 0040C7C1    cmp         dword ptr [ebx+28],0
>0040C7C5    je          0040C818
 0040C7C7    call        kernel32.GetVersion
 0040C7CC    test        eax,80000000
>0040C7D1    jne         0040C7F1
 0040C7D3    mov         eax,dword ptr [ebx+40]
 0040C7D6    lea         eax,[eax+eax*2]
 0040C7D9    mov         edx,dword ptr [ebx+30]
 0040C7DC    mov         eax,dword ptr [edx+eax*8+10]
 0040C7E0    call        @WStrToPWChar
 0040C7E5    push        eax
 0040C7E6    mov         eax,dword ptr [ebx+28]
 0040C7E9    push        eax
 0040C7EA    call        user32.SetWindowTextW
>0040C7EF    jmp         0040C818
 0040C7F1    lea         eax,[ebp-4]
 0040C7F4    mov         edx,dword ptr [ebx+40]
 0040C7F7    lea         edx,[edx+edx*2]
 0040C7FA    mov         ecx,dword ptr [ebx+30]
 0040C7FD    mov         edx,dword ptr [ecx+edx*8+10]
 0040C801    call        @LStrFromWStr
 0040C806    mov         eax,dword ptr [ebp-4]
 0040C809    call        @LStrToPChar
 0040C80E    push        eax
 0040C80F    mov         eax,dword ptr [ebx+28]
 0040C812    push        eax
 0040C813    call        user32.SetWindowTextA
 0040C818    xor         eax,eax
 0040C81A    pop         edx
 0040C81B    pop         ecx
 0040C81C    pop         ecx
 0040C81D    mov         dword ptr fs:[eax],edx
 0040C820    push        40C835
 0040C825    lea         eax,[ebp-4]
 0040C828    call        @LStrClr
 0040C82D    ret
>0040C82E    jmp         @HandleFinally
>0040C833    jmp         0040C825
 0040C835    pop         esi
 0040C836    pop         ebx
 0040C837    pop         ecx
 0040C838    pop         ebp
 0040C839    ret
end;*}

//0040C83C
{*procedure sub_0040C83C(?:?);
begin
 0040C83C    push        ebx
 0040C83D    add         esp,0FFFFFFE4
 0040C840    mov         ebx,eax
 0040C842    push        0
 0040C844    mov         eax,dword ptr [ebx+20]
 0040C847    push        eax
 0040C848    call        user32.GetWindowThreadProcessId
 0040C84D    mov         ebx,eax
 0040C84F    call        kernel32.GetCurrentThreadId
 0040C854    cmp         ebx,eax
>0040C856    jne         0040C87C
>0040C858    jmp         0040C866
 0040C85A    push        esp
 0040C85B    call        user32.TranslateMessage
 0040C860    push        esp
 0040C861    call        user32.DispatchMessageA
 0040C866    push        1
 0040C868    push        0
 0040C86A    push        0
 0040C86C    push        0
 0040C86E    lea         eax,[esp+10]
 0040C872    push        eax
 0040C873    call        user32.PeekMessageA
 0040C878    test        eax,eax
>0040C87A    jne         0040C85A
 0040C87C    add         esp,1C
 0040C87F    pop         ebx
 0040C880    ret
end;*}

//0040C884
{*procedure sub_0040C884(?:?; ?:?);
begin
 0040C884    push        ebx
 0040C885    push        esi
 0040C886    push        edi
 0040C887    mov         esi,edx
 0040C889    mov         ebx,eax
 0040C88B    mov         dword ptr [ebx+44],esi
 0040C88E    cmp         dword ptr [ebx+3C],0
>0040C892    jne         0040C89C
 0040C894    cmp         dword ptr [ebx+38],0
>0040C898    jbe         0040C8E4
>0040C89A    jmp         0040C89E
>0040C89C    jle         0040C8E4
 0040C89E    mov         eax,dword ptr [ebx+40]
 0040C8A1    lea         eax,[eax+eax*2]
 0040C8A4    mov         edx,dword ptr [ebx+30]
 0040C8A7    lea         edi,[edx+eax*8]
 0040C8AA    push        dword ptr [ebx+3C]
 0040C8AD    push        dword ptr [ebx+38]
 0040C8B0    push        0
 0040C8B2    push        3E8
 0040C8B7    push        0
 0040C8B9    push        3E8
 0040C8BE    mov         eax,esi
 0040C8C0    cdq
 0040C8C1    push        edx
 0040C8C2    push        eax
 0040C8C3    mov         eax,dword ptr [edi+8]
 0040C8C6    mov         edx,dword ptr [edi+0C]
 0040C8C9    call        @_llmul
 0040C8CE    call        @_lldiv
 0040C8D3    add         eax,dword ptr [edi]
 0040C8D5    adc         edx,dword ptr [edi+4]
 0040C8D8    call        @_llmul
 0040C8DD    call        @_lldiv
 0040C8E2    mov         esi,eax
 0040C8E4    mov         edi,dword ptr [ebx+2C]
 0040C8E7    test        edi,edi
>0040C8E9    je          0040C929
 0040C8EB    push        0
 0040C8ED    push        edi
 0040C8EE    call        user32.GetWindowThreadProcessId
 0040C8F3    mov         edi,eax
 0040C8F5    call        kernel32.GetCurrentThreadId
 0040C8FA    cmp         edi,eax
>0040C8FC    jne         0040C918
 0040C8FE    push        0
 0040C900    push        esi
 0040C901    push        402
 0040C906    mov         eax,dword ptr [ebx+2C]
 0040C909    push        eax
 0040C90A    call        user32.SendMessageA
 0040C90F    mov         eax,ebx
 0040C911    call        0040C83C
>0040C916    jmp         0040C929
 0040C918    push        0
 0040C91A    push        esi
 0040C91B    push        402
 0040C920    mov         eax,dword ptr [ebx+2C]
 0040C923    push        eax
 0040C924    call        user32.PostMessageA
 0040C929    pop         edi
 0040C92A    pop         esi
 0040C92B    pop         ebx
 0040C92C    ret
end;*}

//0040C958
{*function sub_0040C958(?:?; ?:?; ?:?; ?:?):?;
begin
 0040C958    push        ebp
 0040C959    mov         ebp,esp
 0040C95B    add         esp,0FFFFFFB4
 0040C95E    push        ebx
 0040C95F    push        esi
 0040C960    push        edi
 0040C961    xor         ebx,ebx
 0040C963    mov         dword ptr [ebp-4C],ebx
 0040C966    mov         dword ptr [ebp-14],ebx
 0040C969    mov         dword ptr [ebp-4],ecx
 0040C96C    mov         esi,edx
 0040C96E    mov         edi,eax
 0040C970    mov         ebx,dword ptr [ebp+8]
 0040C973    xor         eax,eax
 0040C975    push        ebp
 0040C976    push        40CBBF
 0040C97B    push        dword ptr fs:[eax]
 0040C97E    mov         dword ptr fs:[eax],esp
 0040C981    lea         eax,[ebp-14]
 0040C984    mov         edx,dword ptr ds:[40C930];_DynArr_8_5
 0040C98A    call        @DynArrayClear
 0040C98F    mov         byte ptr [ebp-5],0
 0040C993    call        kernel32.GetVersion
 0040C998    test        eax,80000000
>0040C99D    jne         0040C9B3
 0040C99F    push        2
 0040C9A1    mov         eax,esi
 0040C9A3    call        @WStrToPWChar
 0040C9A8    push        eax
 0040C9A9    push        edi
 0040C9AA    call        kernel32.FindResourceW
 0040C9AF    mov         esi,eax
>0040C9B1    jmp         0040C9D0
 0040C9B3    push        2
 0040C9B5    lea         eax,[ebp-4C]
 0040C9B8    mov         edx,esi
 0040C9BA    call        @LStrFromWStr
 0040C9BF    mov         eax,dword ptr [ebp-4C]
 0040C9C2    call        @LStrToPChar
 0040C9C7    push        eax
 0040C9C8    push        edi
 0040C9C9    call        kernel32.FindResourceA
 0040C9CE    mov         esi,eax
 0040C9D0    test        esi,esi
>0040C9D2    je          0040CB9B
 0040C9D8    push        esi
 0040C9D9    push        edi
 0040C9DA    call        kernel32.SizeofResource
 0040C9DF    mov         edx,ebx
 0040C9E1    imul        edx,ebx
 0040C9E4    shl         edx,2
 0040C9E7    add         edx,28
 0040C9EA    cmp         eax,edx
>0040C9EC    jne         0040CB9B
 0040C9F2    push        esi
 0040C9F3    push        edi
 0040C9F4    call        kernel32.LoadResource
 0040C9F9    mov         esi,eax
 0040C9FB    test        esi,esi
>0040C9FD    je          0040CB9B
 0040CA03    mov         eax,ebx
 0040CA05    imul        ebx
 0040CA07    push        eax
 0040CA08    lea         eax,[ebp-14]
 0040CA0B    mov         ecx,1
 0040CA10    mov         edx,dword ptr ds:[40C930];_DynArr_8_5
 0040CA16    call        @DynArraySetLength
 0040CA1B    add         esp,4
 0040CA1E    push        esi
 0040CA1F    call        kernel32.LockResource
 0040CA24    mov         edi,eax
 0040CA26    lea         edx,[ebp-48]
 0040CA29    mov         eax,edi
 0040CA2B    mov         ecx,28
 0040CA30    call        Move
 0040CA35    add         edi,28
 0040CA38    mov         eax,ebx
 0040CA3A    imul        ebx
 0040CA3C    mov         ecx,eax
 0040CA3E    shl         ecx,2
 0040CA41    mov         edx,dword ptr [ebp-14]
 0040CA44    mov         eax,edi
 0040CA46    call        Move
 0040CA4B    mov         eax,esi
 0040CA4D    call        00408150
 0040CA52    push        esi
 0040CA53    call        kernel32.FreeResource
 0040CA58    push        0F
 0040CA5A    call        user32.GetSysColor
 0040CA5F    mov         dword ptr [ebp-18],eax
 0040CA62    mov         eax,dword ptr [ebp-18]
 0040CA65    and         eax,0FF
 0040CA6A    shl         eax,10
 0040CA6D    mov         edx,dword ptr [ebp-18]
 0040CA70    and         edx,0FF00
 0040CA76    add         eax,edx
 0040CA78    mov         edx,dword ptr [ebp-18]
 0040CA7B    and         edx,0FF0000
 0040CA81    shr         edx,10
 0040CA84    add         eax,edx
 0040CA86    mov         dword ptr [ebp-18],eax
 0040CA89    mov         eax,ebx
 0040CA8B    imul        ebx
 0040CA8D    dec         eax
 0040CA8E    test        eax,eax
>0040CA90    jb          0040CB0A
 0040CA92    inc         eax
 0040CA93    mov         dword ptr [ebp-1C],eax
 0040CA96    xor         eax,eax
 0040CA98    mov         edx,dword ptr [ebp-14]
 0040CA9B    mov         edx,dword ptr [edx+eax*4]
 0040CA9E    shr         edx,18
 0040CAA1    inc         edx
 0040CAA2    mov         ecx,100
 0040CAA7    sub         ecx,edx
 0040CAA9    mov         esi,dword ptr [ebp-18]
 0040CAAC    and         esi,0FF00FF
 0040CAB2    imul        ecx,esi
 0040CAB5    mov         esi,dword ptr [ebp-14]
 0040CAB8    mov         esi,dword ptr [esi+eax*4]
 0040CABB    and         esi,0FF00FF
 0040CAC1    imul        esi,edx
 0040CAC4    add         ecx,esi
 0040CAC6    shr         ecx,8
 0040CAC9    and         ecx,0FF00FF
 0040CACF    mov         esi,100
 0040CAD4    sub         esi,edx
 0040CAD6    mov         edi,dword ptr [ebp-18]
 0040CAD9    and         edi,0FF00
 0040CADF    imul        esi,edi
 0040CAE2    mov         edi,dword ptr [ebp-14]
 0040CAE5    mov         edi,dword ptr [edi+eax*4]
 0040CAE8    and         edi,0FF00
 0040CAEE    imul        edi,edx
 0040CAF1    add         esi,edi
 0040CAF3    shr         esi,8
 0040CAF6    and         esi,0FF00
 0040CAFC    add         ecx,esi
 0040CAFE    mov         edx,dword ptr [ebp-14]
 0040CB01    mov         dword ptr [edx+eax*4],ecx
 0040CB04    inc         eax
 0040CB05    dec         dword ptr [ebp-1C]
>0040CB08    jne         0040CA98
 0040CB0A    push        0
 0040CB0C    call        gdi32.CreateCompatibleDC
 0040CB11    mov         esi,eax
 0040CB13    test        esi,esi
>0040CB15    je          0040CB9B
 0040CB1B    xor         eax,eax
 0040CB1D    mov         dword ptr [ebp-10],eax
 0040CB20    push        0
 0040CB22    push        0
 0040CB24    lea         eax,[ebp-10]
 0040CB27    push        eax
 0040CB28    push        0
 0040CB2A    lea         eax,[ebp-48]
 0040CB2D    push        eax
 0040CB2E    push        esi
 0040CB2F    call        gdi32.CreateDIBSection
 0040CB34    mov         edi,eax
 0040CB36    test        edi,edi
>0040CB38    je          0040CB95
 0040CB3A    cmp         dword ptr [ebp-10],0
>0040CB3E    je          0040CB95
 0040CB40    call        gdi32.GdiFlush
 0040CB45    mov         eax,ebx
 0040CB47    imul        ebx
 0040CB49    mov         ecx,eax
 0040CB4B    shl         ecx,2
 0040CB4E    mov         edx,dword ptr [ebp-10]
 0040CB51    mov         eax,dword ptr [ebp-14]
 0040CB54    call        Move
 0040CB59    call        gdi32.GdiFlush
 0040CB5E    push        edi
 0040CB5F    push        esi
 0040CB60    call        gdi32.SelectObject
 0040CB65    mov         dword ptr [ebp-0C],eax
 0040CB68    push        0CC0020
 0040CB6D    push        0
 0040CB6F    push        0
 0040CB71    push        esi
 0040CB72    push        ebx
 0040CB73    push        ebx
 0040CB74    push        0
 0040CB76    push        0
 0040CB78    mov         eax,dword ptr [ebp-4]
 0040CB7B    push        eax
 0040CB7C    call        gdi32.BitBlt
 0040CB81    mov         eax,dword ptr [ebp-0C]
 0040CB84    push        eax
 0040CB85    push        esi
 0040CB86    call        gdi32.SelectObject
 0040CB8B    push        edi
 0040CB8C    call        gdi32.DeleteObject
 0040CB91    mov         byte ptr [ebp-5],1
 0040CB95    push        esi
 0040CB96    call        gdi32.DeleteDC
 0040CB9B    xor         eax,eax
 0040CB9D    pop         edx
 0040CB9E    pop         ecx
 0040CB9F    pop         ecx
 0040CBA0    mov         dword ptr fs:[eax],edx
 0040CBA3    push        40CBC6
 0040CBA8    lea         eax,[ebp-4C]
 0040CBAB    call        @LStrClr
 0040CBB0    lea         eax,[ebp-14]
 0040CBB3    mov         edx,dword ptr ds:[40C930];_DynArr_8_5
 0040CBB9    call        @DynArrayClear
 0040CBBE    ret
>0040CBBF    jmp         @HandleFinally
>0040CBC4    jmp         0040CBA8
 0040CBC6    mov         al,byte ptr [ebp-5]
 0040CBC9    pop         edi
 0040CBCA    pop         esi
 0040CBCB    pop         ebx
 0040CBCC    mov         esp,ebp
 0040CBCE    pop         ebp
 0040CBCF    ret         4
end;*}

//0040CBD4
{*procedure sub_0040CBD4(?:?; ?:?; ?:?; ?:?);
begin
 0040CBD4    push        ebp
 0040CBD5    mov         ebp,esp
 0040CBD7    push        ecx
 0040CBD8    push        ebx
 0040CBD9    push        esi
 0040CBDA    push        edi
 0040CBDB    mov         byte ptr [ebp-1],0
 0040CBDF    mov         eax,dword ptr [ebp+0C]
 0040CBE2    sub         eax,10
>0040CBE5    je          0040CBF5
 0040CBE7    sub         eax,1B
>0040CBEA    je          0040CC0E
 0040CBEC    sub         eax,0E7
>0040CBF1    je          0040CBFB
>0040CBF3    jmp         0040CC67
 0040CBF5    mov         byte ptr [ebp-1],1
>0040CBF9    jmp         0040CC67
 0040CBFB    mov         eax,dword ptr [ebp+10]
 0040CBFE    and         eax,0FFF0
 0040CC03    cmp         eax,0F060
 0040CC08    sete        byte ptr [ebp-1]
>0040CC0C    jmp         0040CC67
 0040CC0E    mov         ebx,dword ptr [ebp+14]
 0040CC11    push        0EB
 0040CC13    mov         eax,dword ptr [ebx+14]
 0040CC16    push        eax
 0040CC17    call        user32.GetWindowLongA
 0040CC1C    xor         edx,edx
 0040CC1E    push        ebp
 0040CC1F    push        40CC5D
 0040CC24    push        dword ptr fs:[edx]
 0040CC27    mov         dword ptr fs:[edx],esp
 0040CC2A    test        eax,eax
>0040CC2C    je          0040CC53
 0040CC2E    test        eax,eax
>0040CC30    je          0040CC53
 0040CC32    push        20
 0040CC34    mov         ecx,dword ptr [ebx+18]
 0040CC37    mov         edx,dword ptr [eax+4C]
 0040CC3A    mov         eax,dword ptr [eax+48]
 0040CC3D    call        0040C958
 0040CC42    mov         eax,1
 0040CC47    pop         dword ptr fs:[0]
 0040CC4E    add         esp,8
>0040CC51    jmp         0040CCB9
 0040CC53    xor         eax,eax
 0040CC55    pop         edx
 0040CC56    pop         ecx
 0040CC57    pop         ecx
 0040CC58    mov         dword ptr fs:[eax],edx
>0040CC5B    jmp         0040CC67
>0040CC5D    jmp         @HandleAnyException
 0040CC62    call        @DoneExcept
 0040CC67    cmp         byte ptr [ebp-1],0
>0040CC6B    je          0040CC80
 0040CC6D    push        0EB
 0040CC6F    mov         eax,dword ptr [ebp+8]
 0040CC72    push        eax
 0040CC73    call        user32.GetWindowLongA
 0040CC78    test        eax,eax
>0040CC7A    jne         0040CC80
 0040CC7C    xor         eax,eax
>0040CC7E    jmp         0040CCB9
 0040CC80    mov         eax,dword ptr [ebp+8]
 0040CC83    push        eax
 0040CC84    call        user32.IsWindowUnicode
 0040CC89    test        eax,eax
>0040CC8B    je          0040CCA4
 0040CC8D    mov         eax,dword ptr [ebp+14]
 0040CC90    push        eax
 0040CC91    mov         eax,dword ptr [ebp+10]
 0040CC94    push        eax
 0040CC95    mov         eax,dword ptr [ebp+0C]
 0040CC98    push        eax
 0040CC99    mov         eax,dword ptr [ebp+8]
 0040CC9C    push        eax
 0040CC9D    call        user32.DefWindowProcW
>0040CCA2    jmp         0040CCB9
 0040CCA4    mov         eax,dword ptr [ebp+14]
 0040CCA7    push        eax
 0040CCA8    mov         eax,dword ptr [ebp+10]
 0040CCAB    push        eax
 0040CCAC    mov         eax,dword ptr [ebp+0C]
 0040CCAF    push        eax
 0040CCB0    mov         eax,dword ptr [ebp+8]
 0040CCB3    push        eax
 0040CCB4    call        user32.DefWindowProcA
 0040CCB9    pop         edi
 0040CCBA    pop         esi
 0040CCBB    pop         ebx
 0040CCBC    pop         ecx
 0040CCBD    pop         ebp
 0040CCBE    ret         10
end;*}

//0040CCC4
{*function sub_0040CCC4(?:?; ?:?; ?:?):?;
begin
 0040CCC4    push        ebp
 0040CCC5    mov         ebp,esp
 0040CCC7    add         esp,0FFFFFF98
 0040CCCA    push        ebx
 0040CCCB    push        esi
 0040CCCC    push        edi
 0040CCCD    xor         ebx,ebx
 0040CCCF    mov         dword ptr [ebp-64],ebx
 0040CCD2    mov         dword ptr [ebp-68],ebx
 0040CCD5    mov         dword ptr [ebp-60],ebx
 0040CCD8    mov         dword ptr [ebp-5C],ebx
 0040CCDB    mov         dword ptr [ebp-58],ebx
 0040CCDE    mov         dword ptr [ebp-54],ebx
 0040CCE1    mov         byte ptr [ebp-1],cl
 0040CCE4    mov         ebx,eax
 0040CCE6    xor         eax,eax
 0040CCE8    push        ebp
 0040CCE9    push        40D30E
 0040CCEE    push        dword ptr fs:[eax]
 0040CCF1    mov         dword ptr fs:[eax],esp
 0040CCF4    cmp         dword ptr [ebx+20],0
 0040CCF8    sete        byte ptr [ebp-2]
 0040CCFC    cmp         byte ptr [ebp-2],0
>0040CD00    je          0040D2F3
 0040CD06    mov         eax,edx
 0040CD08    mov         dword ptr [ebx+0C],eax
 0040CD0B    test        eax,eax
>0040CD0D    je          0040CD17
 0040CD0F    push        0
 0040CD11    push        eax
 0040CD12    call        user32.EnableWindow
 0040CD17    cmp         dword ptr [ebx+30],0
>0040CD1B    jne         0040CD30
 0040CD1D    push        0
 0040CD1F    push        3E8
 0040CD24    mov         edx,40D324
 0040CD29    mov         eax,ebx
 0040CD2B    call        0040C608
 0040CD30    lea         eax,[ebp-30]
 0040CD33    mov         edx,28
 0040CD38    call        00408130
 0040CD3D    mov         dword ptr [ebp-30],0C0
 0040CD44    mov         dword ptr [ebp-2C],40CBD4;sub_0040CBD4
 0040CD4B    mov         eax,[0055C664];gvar_0055C664
 0040CD50    mov         dword ptr [ebp-20],eax
 0040CD53    mov         dword ptr [ebp-14],10
 0040CD5A    push        7F00
 0040CD5F    push        0
 0040CD61    call        user32.LoadCursorA
 0040CD66    mov         dword ptr [ebp-18],eax
 0040CD69    call        kernel32.GetVersion
 0040CD6E    test        eax,80000000
>0040CD73    jne         0040CDBD
 0040CD75    mov         eax,40D344
 0040CD7A    mov         dword ptr [ebp-0C],eax
 0040CD7D    lea         eax,[ebp-30]
 0040CD80    push        eax
 0040CD81    call        user32.RegisterClassW
 0040CD86    push        0C00000
 0040CD8B    push        0
 0040CD8D    push        0
 0040CD8F    push        64
 0040CD91    push        64
 0040CD93    mov         eax,dword ptr [ebx+0C]
 0040CD96    push        eax
 0040CD97    push        0
 0040CD99    mov         eax,[0055C664];gvar_0055C664
 0040CD9E    push        eax
 0040CD9F    push        0
 0040CDA1    mov         eax,dword ptr [ebx+10]
 0040CDA4    call        @WStrToPWChar
 0040CDA9    mov         ecx,eax
 0040CDAB    mov         edx,dword ptr [ebp-0C]
 0040CDAE    mov         eax,89
 0040CDB3    call        004083CC
 0040CDB8    mov         dword ptr [ebx+20],eax
>0040CDBB    jmp         0040CE0E
 0040CDBD    mov         eax,40D368
 0040CDC2    mov         dword ptr [ebp-0C],eax
 0040CDC5    lea         eax,[ebp-30]
 0040CDC8    push        eax
 0040CDC9    call        user32.RegisterClassA
 0040CDCE    push        0C00000
 0040CDD3    push        0
 0040CDD5    push        0
 0040CDD7    push        64
 0040CDD9    push        64
 0040CDDB    mov         eax,dword ptr [ebx+0C]
 0040CDDE    push        eax
 0040CDDF    push        0
 0040CDE1    mov         eax,[0055C664];gvar_0055C664
 0040CDE6    push        eax
 0040CDE7    push        0
 0040CDE9    lea         eax,[ebp-54]
 0040CDEC    mov         edx,dword ptr [ebx+10]
 0040CDEF    call        @LStrFromWStr
 0040CDF4    mov         eax,dword ptr [ebp-54]
 0040CDF7    call        @LStrToPChar
 0040CDFC    mov         ecx,eax
 0040CDFE    mov         edx,dword ptr [ebp-0C]
 0040CE01    mov         eax,89
 0040CE06    call        00408368
 0040CE0B    mov         dword ptr [ebx+20],eax
 0040CE0E    push        0
 0040CE10    mov         eax,dword ptr [ebx+20]
 0040CE13    push        eax
 0040CE14    call        user32.GetSystemMenu
 0040CE19    mov         esi,eax
 0040CE1B    push        0
 0040CE1D    push        0F020
 0040CE22    push        esi
 0040CE23    call        user32.RemoveMenu
 0040CE28    push        0
 0040CE2A    push        0F030
 0040CE2F    push        esi
 0040CE30    call        user32.RemoveMenu
 0040CE35    push        0
 0040CE37    push        0F120
 0040CE3C    push        esi
 0040CE3D    call        user32.RemoveMenu
 0040CE42    push        0
 0040CE44    push        0F000
 0040CE49    push        esi
 0040CE4A    call        user32.RemoveMenu
 0040CE4F    push        40D37C;'Tahoma'
 0040CE54    push        0
 0040CE56    push        0
 0040CE58    push        0
 0040CE5A    push        0
 0040CE5C    push        1
 0040CE5E    push        0
 0040CE60    push        0
 0040CE62    push        0
 0040CE64    push        190
 0040CE69    push        0
 0040CE6B    push        0
 0040CE6D    push        0
 0040CE6F    push        0F5
 0040CE71    call        gdi32.CreateFontA
 0040CE76    mov         esi,eax
 0040CE78    mov         dword ptr [ebx+18],esi
 0040CE7B    test        esi,esi
>0040CE7D    jne         0040CEA9
 0040CE7F    push        40D384;'MS Sans Serif'
 0040CE84    push        0
 0040CE86    push        0
 0040CE88    push        0
 0040CE8A    push        0
 0040CE8C    push        1
 0040CE8E    push        0
 0040CE90    push        0
 0040CE92    push        0
 0040CE94    push        190
 0040CE99    push        0
 0040CE9B    push        0
 0040CE9D    push        0
 0040CE9F    push        0F4
 0040CEA1    call        gdi32.CreateFontA
 0040CEA6    mov         dword ptr [ebx+18],eax
 0040CEA9    push        0
 0040CEAB    call        gdi32.CreateCompatibleDC
 0040CEB0    mov         esi,eax
 0040CEB2    mov         dword ptr [ebx+14],esi
 0040CEB5    mov         eax,dword ptr [ebx+18]
 0040CEB8    push        eax
 0040CEB9    push        esi
 0040CEBA    call        gdi32.SelectObject
 0040CEBF    mov         dword ptr [ebx+1C],eax
 0040CEC2    mov         esi,dword ptr [ebx+40]
 0040CEC5    mov         eax,dword ptr [ebx+30]
 0040CEC8    call        00405CE8
 0040CECD    mov         edi,eax
 0040CECF    sub         edi,esi
>0040CED1    jl          0040CF80
 0040CED7    inc         edi
 0040CED8    push        0
 0040CEDA    push        1A4
 0040CEDF    push        0
 0040CEE1    push        0
 0040CEE3    lea         eax,[ebp-50]
 0040CEE6    push        eax
 0040CEE7    call        user32.SetRect
 0040CEEC    call        kernel32.GetVersion
 0040CEF1    test        eax,80000000
>0040CEF6    jne         0040CF1E
 0040CEF8    push        410
 0040CEFD    lea         eax,[ebp-50]
 0040CF00    push        eax
 0040CF01    push        0FF
 0040CF03    lea         eax,[esi+esi*2]
 0040CF06    mov         edx,dword ptr [ebx+30]
 0040CF09    mov         eax,dword ptr [edx+eax*8+10]
 0040CF0D    call        @WStrToPWChar
 0040CF12    push        eax
 0040CF13    mov         eax,dword ptr [ebx+14]
 0040CF16    push        eax
 0040CF17    call        user32.DrawTextW
>0040CF1C    jmp         0040CF4D
 0040CF1E    push        410
 0040CF23    lea         eax,[ebp-50]
 0040CF26    push        eax
 0040CF27    push        0FF
 0040CF29    lea         eax,[ebp-58]
 0040CF2C    lea         edx,[esi+esi*2]
 0040CF2F    mov         ecx,dword ptr [ebx+30]
 0040CF32    mov         edx,dword ptr [ecx+edx*8+10]
 0040CF36    call        @LStrFromWStr
 0040CF3B    mov         eax,dword ptr [ebp-58]
 0040CF3E    call        @LStrToPChar
 0040CF43    push        eax
 0040CF44    mov         eax,dword ptr [ebx+14]
 0040CF47    push        eax
 0040CF48    call        user32.DrawTextA
 0040CF4D    cmp         esi,dword ptr [ebx+40]
>0040CF50    jle         0040CF6A
 0040CF52    mov         eax,dword ptr [ebp-48]
 0040CF55    cmp         eax,dword ptr [ebp-38]
>0040CF58    jle         0040CF5D
 0040CF5A    mov         dword ptr [ebp-38],eax
 0040CF5D    mov         eax,dword ptr [ebp-44]
 0040CF60    cmp         eax,dword ptr [ebp-34]
>0040CF63    jle         0040CF78
 0040CF65    mov         dword ptr [ebp-34],eax
>0040CF68    jmp         0040CF78
 0040CF6A    push        esi
 0040CF6B    push        edi
 0040CF6C    lea         esi,[ebp-50]
 0040CF6F    lea         edi,[ebp-40]
 0040CF72    movs        dword ptr [edi],dword ptr [esi]
 0040CF73    movs        dword ptr [edi],dword ptr [esi]
 0040CF74    movs        dword ptr [edi],dword ptr [esi]
 0040CF75    movs        dword ptr [edi],dword ptr [esi]
 0040CF76    pop         edi
 0040CF77    pop         esi
 0040CF78    inc         esi
 0040CF79    dec         edi
>0040CF7A    jne         0040CED8
 0040CF80    call        kernel32.GetVersion
 0040CF85    test        eax,80000000
>0040CF8A    jne         0040CFA7
 0040CF8C    push        2
 0040CF8E    mov         eax,dword ptr [ebx+4C]
 0040CF91    call        @WStrToPWChar
 0040CF96    push        eax
 0040CF97    mov         eax,dword ptr [ebx+48]
 0040CF9A    push        eax
 0040CF9B    call        kernel32.FindResourceW
 0040CFA0    test        eax,eax
 0040CFA2    setne       al
>0040CFA5    jmp         0040CFCB
 0040CFA7    push        2
 0040CFA9    lea         eax,[ebp-5C]
 0040CFAC    mov         edx,dword ptr [ebx+4C]
 0040CFAF    call        @LStrFromWStr
 0040CFB4    mov         eax,dword ptr [ebp-5C]
 0040CFB7    call        @LStrToPChar
 0040CFBC    push        eax
 0040CFBD    mov         eax,dword ptr [ebx+48]
 0040CFC0    push        eax
 0040CFC1    call        kernel32.FindResourceA
 0040CFC6    test        eax,eax
 0040CFC8    setne       al
 0040CFCB    test        al,al
>0040CFCD    je          0040D011
 0040CFCF    add         dword ptr [ebp-40],28
 0040CFD3    add         dword ptr [ebp-38],28
 0040CFD7    push        9
 0040CFD9    push        9
 0040CFDB    push        20
 0040CFDD    push        20
 0040CFDF    mov         eax,dword ptr [ebx+20]
 0040CFE2    push        eax
 0040CFE3    push        0
 0040CFE5    mov         eax,[0055C664];gvar_0055C664
 0040CFEA    push        eax
 0040CFEB    push        0
 0040CFED    mov         edx,40D394;'
 0040CFF2    mov         eax,40D398
 0040CFF7    mov         ecx,5800000B
 0040CFFC    call        00408490
 0040D001    mov         esi,eax
 0040D003    mov         dword ptr [ebx+24],esi
 0040D006    push        ebx
 0040D007    push        0EB
 0040D009    push        esi
 0040D00A    call        user32.SetWindowLongA
>0040D00F    jmp         0040D016
 0040D011    xor         eax,eax
 0040D013    mov         dword ptr [ebx+24],eax
 0040D016    cmp         dword ptr [ebp-38],0DC
>0040D01D    jge         0040D026
 0040D01F    mov         dword ptr [ebp-38],0DC
 0040D026    mov         dword ptr [ebp-40],0B
 0040D02D    mov         dword ptr [ebp-3C],0C
 0040D034    cmp         dword ptr [ebx+24],0
>0040D038    je          0040D064
 0040D03A    mov         dword ptr [ebp-40],33
 0040D041    mov         eax,dword ptr [ebp-34]
 0040D044    cmp         eax,1A
>0040D047    jge         0040D064
 0040D049    mov         edx,1A
 0040D04E    sub         edx,eax
 0040D050    sar         edx,1
>0040D052    jns         0040D057
 0040D054    adc         edx,0
 0040D057    add         edx,0C
 0040D05A    mov         dword ptr [ebp-3C],edx
 0040D05D    mov         dword ptr [ebp-34],1A
 0040D064    mov         eax,dword ptr [ebp-38]
 0040D067    add         eax,16
 0040D06A    mov         dword ptr [ebp-8],eax
 0040D06D    mov         edi,dword ptr [ebp-34]
 0040D070    add         edi,0C
 0040D073    add         edi,0C
 0040D076    call        kernel32.GetVersion
 0040D07B    test        eax,80000000
>0040D080    jne         0040D0C8
 0040D082    mov         eax,dword ptr [ebp-40]
 0040D085    push        eax
 0040D086    mov         eax,dword ptr [ebp-3C]
 0040D089    push        eax
 0040D08A    mov         eax,dword ptr [ebp-38]
 0040D08D    push        eax
 0040D08E    mov         eax,dword ptr [ebp-34]
 0040D091    push        eax
 0040D092    mov         eax,dword ptr [ebx+20]
 0040D095    push        eax
 0040D096    push        0
 0040D098    mov         eax,[0055C664];gvar_0055C664
 0040D09D    push        eax
 0040D09E    push        0
 0040D0A0    mov         eax,dword ptr [ebx+40]
 0040D0A3    lea         eax,[eax+eax*2]
 0040D0A6    mov         edx,dword ptr [ebx+30]
 0040D0A9    mov         eax,dword ptr [edx+eax*8+10]
 0040D0AD    call        @WStrToPWChar
 0040D0B2    mov         edx,eax
 0040D0B4    mov         eax,40D3A0
 0040D0B9    mov         ecx,50000000
 0040D0BE    call        004084F0
 0040D0C3    mov         dword ptr [ebx+28],eax
>0040D0C6    jmp         0040D117
 0040D0C8    mov         eax,dword ptr [ebp-40]
 0040D0CB    push        eax
 0040D0CC    mov         eax,dword ptr [ebp-3C]
 0040D0CF    push        eax
 0040D0D0    mov         eax,dword ptr [ebp-38]
 0040D0D3    push        eax
 0040D0D4    mov         eax,dword ptr [ebp-34]
 0040D0D7    push        eax
 0040D0D8    mov         eax,dword ptr [ebx+20]
 0040D0DB    push        eax
 0040D0DC    push        0
 0040D0DE    mov         eax,[0055C664];gvar_0055C664
 0040D0E3    push        eax
 0040D0E4    push        0
 0040D0E6    lea         eax,[ebp-60]
 0040D0E9    mov         edx,dword ptr [ebx+40]
 0040D0EC    lea         edx,[edx+edx*2]
 0040D0EF    mov         ecx,dword ptr [ebx+30]
 0040D0F2    mov         edx,dword ptr [ecx+edx*8+10]
 0040D0F6    call        @LStrFromWStr
 0040D0FB    mov         eax,dword ptr [ebp-60]
 0040D0FE    call        @LStrToPChar
 0040D103    mov         edx,eax
 0040D105    mov         eax,40D3B0
 0040D10A    mov         ecx,50000000
 0040D10F    call        00408490
 0040D114    mov         dword ptr [ebx+28],eax
 0040D117    push        0
 0040D119    mov         eax,dword ptr [ebx+18]
 0040D11C    push        eax
 0040D11D    push        30
 0040D11F    mov         eax,dword ptr [ebx+28]
 0040D122    push        eax
 0040D123    call        user32.SendMessageA
 0040D128    push        0B
 0040D12A    push        edi
 0040D12B    mov         eax,dword ptr [ebp-8]
 0040D12E    sub         eax,16
 0040D131    push        eax
 0040D132    push        14
 0040D134    call        user32.GetSystemMetrics
 0040D139    push        eax
 0040D13A    mov         eax,dword ptr [ebx+20]
 0040D13D    push        eax
 0040D13E    push        0
 0040D140    mov         eax,[0055C664];gvar_0055C664
 0040D145    push        eax
 0040D146    push        0
 0040D148    mov         edx,40D394;'
 0040D14D    mov         eax,40D3B8
 0040D152    mov         ecx,50000000
 0040D157    call        00408490
 0040D15C    mov         esi,eax
 0040D15E    mov         dword ptr [ebx+2C],esi
 0040D161    push        3E80000
 0040D166    push        0
 0040D168    push        401
 0040D16D    push        esi
 0040D16E    call        user32.SendMessageA
 0040D173    push        7
 0040D175    call        user32.GetSystemMetrics
 0040D17A    add         eax,eax
 0040D17C    add         dword ptr [ebp-8],eax
 0040D17F    push        33
 0040D181    call        user32.GetSystemMetrics
 0040D186    mov         esi,eax
 0040D188    push        14
 0040D18A    call        user32.GetSystemMetrics
 0040D18F    add         esi,eax
 0040D191    add         esi,0C
 0040D194    push        8
 0040D196    call        user32.GetSystemMetrics
 0040D19B    add         eax,eax
 0040D19D    add         esi,eax
 0040D19F    add         edi,esi
 0040D1A1    mov         eax,dword ptr [ebx+20]
 0040D1A4    push        eax
 0040D1A5    call        user32.IsIconic
 0040D1AA    test        eax,eax
>0040D1AC    je          0040D1B9
 0040D1AE    push        9
 0040D1B0    mov         eax,dword ptr [ebx+20]
 0040D1B3    push        eax
 0040D1B4    call        user32.ShowWindow
 0040D1B9    cmp         byte ptr [ebp-1],0
>0040D1BD    je          0040D216
 0040D1BF    push        4
 0040D1C1    push        edi
 0040D1C2    mov         eax,dword ptr [ebp-8]
 0040D1C5    push        eax
 0040D1C6    push        1
 0040D1C8    call        user32.GetSystemMetrics
 0040D1CD    sub         eax,edi
 0040D1CF    sar         eax,1
>0040D1D1    jns         0040D1D6
 0040D1D3    adc         eax,0
 0040D1D6    push        eax
 0040D1D7    push        0
 0040D1D9    call        user32.GetSystemMetrics
 0040D1DE    sub         eax,dword ptr [ebp-8]
 0040D1E1    sar         eax,1
>0040D1E3    jns         0040D1E8
 0040D1E5    adc         eax,0
 0040D1E8    push        eax
 0040D1E9    push        0
 0040D1EB    mov         eax,dword ptr [ebx+20]
 0040D1EE    push        eax
 0040D1EF    call        user32.SetWindowPos
 0040D1F4    push        1
 0040D1F6    mov         eax,dword ptr [ebx+20]
 0040D1F9    push        eax
 0040D1FA    call        user32.ShowWindow
 0040D1FF    mov         eax,dword ptr [ebx+20]
 0040D202    push        eax
 0040D203    call        user32.BringWindowToTop
 0040D208    mov         eax,dword ptr [ebx+20]
 0040D20B    push        eax
 0040D20C    call        user32.SetForegroundWindow
>0040D211    jmp         0040D2E9
 0040D216    push        0
 0040D218    lea         eax,[ebp-40]
 0040D21B    push        eax
 0040D21C    push        0
 0040D21E    push        30
 0040D220    call        user32.SystemParametersInfoA
 0040D225    test        eax,eax
>0040D227    jne         0040D248
 0040D229    push        10
 0040D22B    call        user32.GetSystemMetrics
 0040D230    mov         dword ptr [ebp-38],eax
 0040D233    push        11
 0040D235    call        user32.GetSystemMetrics
 0040D23A    mov         esi,eax
 0040D23C    push        4
 0040D23E    call        user32.GetSystemMetrics
 0040D243    add         esi,eax
 0040D245    mov         dword ptr [ebp-34],esi
 0040D248    xor         esi,esi
 0040D24A    push        0
 0040D24C    call        kernel32.SetLastError
 0040D251    lea         eax,[ebp-68]
 0040D254    push        eax
 0040D255    mov         cl,30
 0040D257    mov         edx,1
 0040D25C    mov         eax,esi
 0040D25E    call        0040AA44
 0040D263    mov         ecx,dword ptr [ebp-68]
 0040D266    lea         eax,[ebp-64]
 0040D269    mov         edx,40D3D4;'madProgressAlertPos'
 0040D26E    call        @LStrCat3
 0040D273    mov         eax,dword ptr [ebp-64]
 0040D276    call        @LStrToPChar
 0040D27B    push        eax
 0040D27C    push        0
 0040D27E    push        0
 0040D280    push        0
 0040D282    call        kernel32.CreateEventA
 0040D287    mov         dword ptr [ebx+50],eax
 0040D28A    cmp         dword ptr [ebx+50],0
>0040D28E    je          0040D2B3
 0040D290    call        kernel32.GetLastError
 0040D295    cmp         eax,0B7
>0040D29A    je          0040D2A5
 0040D29C    mov         eax,edi
 0040D29E    imul        esi
 0040D2A0    sub         dword ptr [ebp-34],eax
>0040D2A3    jmp         0040D2B9
 0040D2A5    mov         eax,dword ptr [ebx+50]
 0040D2A8    push        eax
 0040D2A9    call        kernel32.CloseHandle
 0040D2AE    xor         eax,eax
 0040D2B0    mov         dword ptr [ebx+50],eax
 0040D2B3    inc         esi
 0040D2B4    cmp         esi,8
>0040D2B7    jne         0040D24A
 0040D2B9    push        14
 0040D2BB    push        edi
 0040D2BC    mov         eax,dword ptr [ebp-8]
 0040D2BF    push        eax
 0040D2C0    mov         eax,dword ptr [ebp-34]
 0040D2C3    sub         eax,edi
 0040D2C5    sub         eax,2
 0040D2C8    push        eax
 0040D2C9    mov         eax,dword ptr [ebp-38]
 0040D2CC    sub         eax,dword ptr [ebp-8]
 0040D2CF    sub         eax,2
 0040D2D2    push        eax
 0040D2D3    push        0
 0040D2D5    mov         eax,dword ptr [ebx+20]
 0040D2D8    push        eax
 0040D2D9    call        user32.SetWindowPos
 0040D2DE    push        4
 0040D2E0    mov         eax,dword ptr [ebx+20]
 0040D2E3    push        eax
 0040D2E4    call        user32.ShowWindow
 0040D2E9    mov         edx,dword ptr [ebx+44]
 0040D2EC    mov         eax,ebx
 0040D2EE    call        0040C884
 0040D2F3    xor         eax,eax
 0040D2F5    pop         edx
 0040D2F6    pop         ecx
 0040D2F7    pop         ecx
 0040D2F8    mov         dword ptr fs:[eax],edx
 0040D2FB    push        40D315
 0040D300    lea         eax,[ebp-68]
 0040D303    mov         edx,6
 0040D308    call        @LStrArrayClr
 0040D30D    ret
>0040D30E    jmp         @HandleFinally
>0040D313    jmp         0040D300
 0040D315    mov         al,byte ptr [ebp-2]
 0040D318    pop         edi
 0040D319    pop         esi
 0040D31A    pop         ebx
 0040D31B    mov         esp,ebp
 0040D31D    pop         ebp
 0040D31E    ret
end;*}

//0040D3E8
{*procedure sub_0040D3E8(?:?);
begin
 0040D3E8    push        ebx
 0040D3E9    push        esi
 0040D3EA    mov         ebx,eax
 0040D3EC    cmp         dword ptr [ebx+20],0
>0040D3F0    je          0040D463
 0040D3F2    mov         eax,dword ptr [ebx+24]
 0040D3F5    test        eax,eax
>0040D3F7    je          0040D403
 0040D3F9    push        0
 0040D3FB    push        0EB
 0040D3FD    push        eax
 0040D3FE    call        user32.SetWindowLongA
 0040D403    push        0
 0040D405    mov         eax,dword ptr [ebx+20]
 0040D408    push        eax
 0040D409    call        user32.GetWindowThreadProcessId
 0040D40E    mov         esi,eax
 0040D410    call        kernel32.GetCurrentThreadId
 0040D415    cmp         esi,eax
>0040D417    je          0040D43D
 0040D419    push        1
 0040D41B    push        0EB
 0040D41D    mov         eax,dword ptr [ebx+20]
 0040D420    push        eax
 0040D421    call        user32.SetWindowLongA
 0040D426    push        0
 0040D428    push        0F060
 0040D42D    push        112
 0040D432    mov         eax,dword ptr [ebx+20]
 0040D435    push        eax
 0040D436    call        user32.SendMessageA
>0040D43B    jmp         0040D446
 0040D43D    mov         eax,dword ptr [ebx+20]
 0040D440    push        eax
 0040D441    call        user32.DestroyWindow
 0040D446    xor         eax,eax
 0040D448    mov         dword ptr [ebx+20],eax
 0040D44B    mov         eax,dword ptr [ebx+0C]
 0040D44E    test        eax,eax
>0040D450    je          0040D463
 0040D452    push        0FF
 0040D454    push        eax
 0040D455    call        user32.EnableWindow
 0040D45A    mov         eax,dword ptr [ebx+0C]
 0040D45D    push        eax
 0040D45E    call        user32.SetActiveWindow
 0040D463    pop         esi
 0040D464    pop         ebx
 0040D465    ret
end;*}

//0040D468
{*procedure sub_0040D468(?:?; ?:?; ?:?; ?:?);
begin
 0040D468    push        ebp
 0040D469    mov         ebp,esp
 0040D46B    push        ebx
 0040D46C    push        esi
 0040D46D    push        edi
 0040D46E    mov         edi,ecx
 0040D470    mov         esi,edx
 0040D472    mov         ebx,eax
 0040D474    push        esi
 0040D475    push        edi
 0040D476    mov         ecx,ebx
 0040D478    mov         dl,1
 0040D47A    mov         eax,[0040C424];TIProgressAlert
 0040D47F    call        TIProgressAlert.Create;TIProgressAlert.Create
 0040D484    mov         edx,eax
 0040D486    test        edx,edx
>0040D488    je          0040D48D
 0040D48A    sub         edx,0FFFFFFAC
 0040D48D    mov         eax,dword ptr [ebp+8]
 0040D490    call        @IntfCopy
 0040D495    pop         edi
 0040D496    pop         esi
 0040D497    pop         ebx
 0040D498    pop         ebp
 0040D499    ret         4
end;*}

end.