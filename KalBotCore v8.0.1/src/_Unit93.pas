//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit _Unit93;

interface

uses
  SysUtils, Classes, MainUnit;

type
  TGameSession = class(TInterfacedObject)
  public
    f14:dword;//f14
    f20:dword;//f20
    f24:TMainForm;//f24
    //constructor Create(?:?);//0052B6FC
  end;
    //procedure sub_0052B770(?:?; ?:?; ?:?; ?:?);//0052B770
    //procedure sub_0052B844(?:?; ?:?);//0052B844
    //procedure sub_0052B8BC(?:?; ?:?);//0052B8BC
    //procedure sub_0052B908(?:?);//0052B908

implementation

//0052B6FC
{*constructor TGameSession.Create(?:?);
begin
 0052B6FC    push        ebp
 0052B6FD    mov         ebp,esp
 0052B6FF    add         esp,0FFFFFFF4
 0052B702    test        dl,dl
>0052B704    je          0052B70E
 0052B706    add         esp,0FFFFFFF0
 0052B709    call        @ClassCreate
 0052B70E    mov         dword ptr [ebp-0C],ecx
 0052B711    mov         byte ptr [ebp-5],dl
 0052B714    mov         dword ptr [ebp-4],eax
 0052B717    mov         eax,dword ptr [ebp-4]
 0052B71A    mov         edx,dword ptr [ebp-0C]
 0052B71D    mov         dword ptr [eax+18],edx
 0052B720    mov         eax,dword ptr [ebp-4]
 0052B723    mov         edx,dword ptr [ebp+8]
 0052B726    mov         dword ptr [eax+28],edx
 0052B729    mov         eax,dword ptr [ebp-4]
 0052B72C    mov         dword ptr [eax+14],0FFFFFFFF
 0052B733    push        9
 0052B735    mov         ecx,54E748
 0052B73A    mov         edx,dword ptr [ebp-4]
 0052B73D    test        edx,edx
>0052B73F    je          0052B744
 0052B741    sub         edx,0FFFFFFD4
 0052B744    mov         eax,dword ptr [ebp-0C]
 0052B747    call        005204E4
 0052B74C    mov         eax,dword ptr [ebp-4]
 0052B74F    cmp         byte ptr [ebp-5],0
>0052B753    je          0052B764
 0052B755    call        @AfterConstruction
 0052B75A    pop         dword ptr fs:[0]
 0052B761    add         esp,0C
 0052B764    mov         eax,dword ptr [ebp-4]
 0052B767    mov         esp,ebp
 0052B769    pop         ebp
 0052B76A    ret         4
end;*}

//0052B770
{*procedure sub_0052B770(?:?; ?:?; ?:?; ?:?);
begin
 0052B770    push        ebp
 0052B771    mov         ebp,esp
 0052B773    add         esp,0FFFFFFF0
 0052B776    push        ebx
 0052B777    mov         dword ptr [ebp-0C],ecx
 0052B77A    mov         byte ptr [ebp-5],dl
 0052B77D    mov         dword ptr [ebp-4],eax
 0052B780    mov         byte ptr [ebp-0D],8
 0052B784    mov         al,byte ptr [ebp+0C]
 0052B787    sub         al,1
>0052B789    jae         0052B824
 0052B78F    xor         eax,eax
 0052B791    mov         al,byte ptr [ebp-5]
 0052B794    cmp         eax,86
>0052B799    jg          0052B7BC
>0052B79B    je          0052B804
 0052B79D    cmp         eax,55
>0052B7A0    jg          0052B7B0
>0052B7A2    je          0052B816
 0052B7A4    sub         eax,1F
>0052B7A7    je          0052B7DE
 0052B7A9    sub         eax,1D
>0052B7AC    je          0052B7FE
>0052B7AE    jmp         0052B824
 0052B7B0    sub         eax,7C
>0052B7B3    je          0052B7E4
 0052B7B5    sub         eax,3
>0052B7B8    je          0052B80A
>0052B7BA    jmp         0052B824
 0052B7BC    sub         eax,88
>0052B7C1    je          0052B7F8
 0052B7C3    dec         eax
>0052B7C4    je          0052B810
 0052B7C6    sub         eax,8
>0052B7C9    je          0052B7D2
 0052B7CB    sub         eax,19
>0052B7CE    je          0052B7D8
>0052B7D0    jmp         0052B824
 0052B7D2    mov         byte ptr [ebp-0D],0
>0052B7D6    jmp         0052B824
 0052B7D8    mov         byte ptr [ebp-0D],1
>0052B7DC    jmp         0052B824
 0052B7DE    mov         byte ptr [ebp-0D],4
>0052B7E2    jmp         0052B824
 0052B7E4    mov         eax,dword ptr [ebp-0C]
 0052B7E7    mov         edx,dword ptr [eax+4]
 0052B7EA    mov         eax,dword ptr [ebp-4]
 0052B7ED    call        0052B844
 0052B7F2    mov         byte ptr [ebp-0D],5
>0052B7F6    jmp         0052B824
 0052B7F8    mov         byte ptr [ebp-0D],6
>0052B7FC    jmp         0052B824
 0052B7FE    mov         byte ptr [ebp-0D],7
>0052B802    jmp         0052B824
 0052B804    mov         byte ptr [ebp-0D],2
>0052B808    jmp         0052B824
 0052B80A    mov         byte ptr [ebp-0D],3
>0052B80E    jmp         0052B824
 0052B810    mov         byte ptr [ebp-0D],8
>0052B814    jmp         0052B824
 0052B816    mov         eax,dword ptr [ebp-0C]
 0052B819    mov         edx,dword ptr [eax+4]
 0052B81C    mov         eax,dword ptr [ebp-4]
 0052B81F    call        0052B8BC
 0052B824    mov         eax,dword ptr [ebp-4]
 0052B827    cmp         word ptr [eax+22],0
>0052B82C    je          0052B83A
 0052B82E    mov         ebx,dword ptr [ebp-4]
 0052B831    mov         dl,byte ptr [ebp-0D]
 0052B834    mov         eax,dword ptr [ebx+24]
 0052B837    call        dword ptr [ebx+20]
 0052B83A    pop         ebx
 0052B83B    mov         esp,ebp
 0052B83D    pop         ebp
 0052B83E    ret         8
end;*}

//0052B844
{*procedure sub_0052B844(?:?; ?:?);
begin
 0052B844    push        ebp
 0052B845    mov         ebp,esp
 0052B847    add         esp,0FFFFFFF8
 0052B84A    mov         dword ptr [ebp-8],edx
 0052B84D    mov         dword ptr [ebp-4],eax
 0052B850    lea         eax,[ebp-8]
 0052B853    mov         edx,3
 0052B858    call        0051F5E4
 0052B85D    lea         eax,[ebp-8]
 0052B860    call        0051F398
 0052B865    lea         eax,[ebp-8]
 0052B868    call        0051F3CC
 0052B86D    mov         edx,dword ptr [ebp-4]
 0052B870    mov         dword ptr [edx+0C],eax
 0052B873    lea         eax,[ebp-8]
 0052B876    call        0051F3CC
 0052B87B    mov         edx,dword ptr [ebp-4]
 0052B87E    mov         dword ptr [edx+10],eax
 0052B881    mov         eax,dword ptr [ebp-4]
 0052B884    mov         ecx,dword ptr [eax+10]
 0052B887    shr         ecx,0D
 0052B88A    mov         eax,dword ptr [ebp-4]
 0052B88D    mov         edx,dword ptr [eax+0C]
 0052B890    shr         edx,0D
 0052B893    mov         eax,dword ptr [ebp-4]
 0052B896    mov         eax,dword ptr [eax+28]
 0052B899    mov         eax,dword ptr [eax+14]
 0052B89C    call        00525590
 0052B8A1    mov         edx,dword ptr [ebp-4]
 0052B8A4    mov         dword ptr [edx+14],eax
 0052B8A7    mov         eax,dword ptr [ebp-4]
 0052B8AA    cmp         dword ptr [eax+14],0FFFFFFFF
>0052B8AE    jne         0052B8B8
 0052B8B0    mov         eax,dword ptr [ebp-4]
 0052B8B3    xor         edx,edx
 0052B8B5    mov         dword ptr [eax+14],edx
 0052B8B8    pop         ecx
 0052B8B9    pop         ecx
 0052B8BA    pop         ebp
 0052B8BB    ret
end;*}

//0052B8BC
{*procedure sub_0052B8BC(?:?; ?:?);
begin
 0052B8BC    push        ebp
 0052B8BD    mov         ebp,esp
 0052B8BF    add         esp,0FFFFFFF8
 0052B8C2    mov         dword ptr [ebp-8],edx
 0052B8C5    mov         dword ptr [ebp-4],eax
 0052B8C8    lea         eax,[ebp-8]
 0052B8CB    mov         edx,3
 0052B8D0    call        0051F5E4
 0052B8D5    lea         eax,[ebp-8]
 0052B8D8    call        0051F338
 0052B8DD    and         eax,0FF
 0052B8E2    mov         edx,dword ptr [ebp-4]
 0052B8E5    mov         dword ptr [edx+14],eax
 0052B8E8    lea         eax,[ebp-8]
 0052B8EB    call        0051F3CC
 0052B8F0    mov         edx,dword ptr [ebp-4]
 0052B8F3    mov         dword ptr [edx+0C],eax
 0052B8F6    lea         eax,[ebp-8]
 0052B8F9    call        0051F3CC
 0052B8FE    mov         edx,dword ptr [ebp-4]
 0052B901    mov         dword ptr [edx+10],eax
 0052B904    pop         ecx
 0052B905    pop         ecx
 0052B906    pop         ebp
 0052B907    ret
end;*}

//0052B908
{*procedure sub_0052B908(?:?);
begin
 0052B908    push        ebp
 0052B909    mov         ebp,esp
 0052B90B    push        ecx
 0052B90C    mov         dword ptr [ebp-4],eax
 0052B90F    pop         ecx
 0052B910    pop         ebp
 0052B911    ret
end;*}

end.