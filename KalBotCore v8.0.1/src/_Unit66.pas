//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit _Unit66;

interface

uses
  SysUtils, Classes;


implementation

Initialization
//004A0600
{*
 004A0600    push        ebp
 004A0601    mov         ebp,esp
 004A0603    sub         dword ptr ds:[55DD60],1
 004A060A    pop         ebp
 004A060B    ret
*}
Finalization
//004A05B0
{*
 004A05B0    push        ebp
 004A05B1    mov         ebp,esp
 004A05B3    xor         eax,eax
 004A05B5    push        ebp
 004A05B6    push        4A05F4
 004A05BB    push        dword ptr fs:[eax]
 004A05BE    mov         dword ptr fs:[eax],esp
 004A05C1    inc         dword ptr ds:[55DD60]
>004A05C7    jne         004A05E6
 004A05C9    cmp         byte ptr ds:[55DD68],0;gvar_0055DD68
>004A05D0    je          004A05E6
 004A05D2    cmp         dword ptr ds:[55DD64],0;gvar_0055DD64
>004A05D9    je          004A05E6
 004A05DB    mov         eax,[0055DD64];gvar_0055DD64
 004A05E0    push        eax
 004A05E1    call        kernel32.FreeLibrary
 004A05E6    xor         eax,eax
 004A05E8    pop         edx
 004A05E9    pop         ecx
 004A05EA    pop         ecx
 004A05EB    mov         dword ptr fs:[eax],edx
 004A05EE    push        4A05FB
 004A05F3    ret
>004A05F4    jmp         @HandleFinally
>004A05F9    jmp         004A05F3
 004A05FB    pop         ebp
 004A05FC    ret
*}
end.