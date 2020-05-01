//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit IniFiles;

interface

uses
  SysUtils, Classes;


implementation

Initialization
Finalization
//004A04F0
{*
 004A04F0    push        ebp
 004A04F1    mov         ebp,esp
 004A04F3    xor         eax,eax
 004A04F5    push        ebp
 004A04F6    push        4A052C
 004A04FB    push        dword ptr fs:[eax]
 004A04FE    mov         dword ptr fs:[eax],esp
 004A0501    inc         dword ptr ds:[55DD58]
>004A0507    jne         004A051E
 004A0509    mov         eax,541390
 004A050E    mov         ecx,2
 004A0513    mov         edx,dword ptr ds:[4010AC];String
 004A0519    call        @FinalizeArray
 004A051E    xor         eax,eax
 004A0520    pop         edx
 004A0521    pop         ecx
 004A0522    pop         ecx
 004A0523    mov         dword ptr fs:[eax],edx
 004A0526    push        4A0533
 004A052B    ret
>004A052C    jmp         @HandleFinally
>004A0531    jmp         004A052B
 004A0533    pop         ebp
 004A0534    ret
*}
end.