//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit _Unit65;

interface

uses
  SysUtils, Classes;


implementation

Initialization
//004A05A4
{*
 004A05A4    push        ebp
 004A05A5    mov         ebp,esp
 004A05A7    sub         dword ptr ds:[55DD5C],1
 004A05AE    pop         ebp
 004A05AF    ret
*}
Finalization
//004A0554
{*
 004A0554    push        ebp
 004A0555    mov         ebp,esp
 004A0557    xor         eax,eax
 004A0559    push        ebp
 004A055A    push        4A0599
 004A055F    push        dword ptr fs:[eax]
 004A0562    mov         dword ptr fs:[eax],esp
 004A0565    inc         dword ptr ds:[55DD5C]
>004A056B    jne         004A058B
 004A056D    cmp         dword ptr ds:[54139C],0;gvar_0054139C
>004A0574    je          004A0581
 004A0576    mov         eax,[0054139C];0x0 gvar_0054139C
 004A057B    push        eax
 004A057C    call        kernel32.FreeLibrary
 004A0581    mov         eax,541398;^'MAPI32.DLL'
 004A0586    call        @LStrClr
 004A058B    xor         eax,eax
 004A058D    pop         edx
 004A058E    pop         ecx
 004A058F    pop         ecx
 004A0590    mov         dword ptr fs:[eax],edx
 004A0593    push        4A05A0
 004A0598    ret
>004A0599    jmp         @HandleFinally
>004A059E    jmp         004A0598
 004A05A0    pop         ebp
 004A05A1    ret
*}
end.