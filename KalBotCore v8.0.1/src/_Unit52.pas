//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit _Unit52;

interface

uses
  SysUtils, Classes;


implementation

Initialization
//00491C1C
{*
 00491C1C    push        ebp
 00491C1D    mov         ebp,esp
 00491C1F    sub         dword ptr ds:[55DBBC],1
 00491C26    pop         ebp
 00491C27    ret
*}
Finalization
//00491BE0
{*
 00491BE0    push        ebp
 00491BE1    mov         ebp,esp
 00491BE3    xor         eax,eax
 00491BE5    push        ebp
 00491BE6    push        491C11
 00491BEB    push        dword ptr fs:[eax]
 00491BEE    mov         dword ptr fs:[eax],esp
 00491BF1    inc         dword ptr ds:[55DBBC]
>00491BF7    jne         00491C03
 00491BF9    mov         eax,[005410DC];0x0 gvar_005410DC
 00491BFE    call        TObject.Free
 00491C03    xor         eax,eax
 00491C05    pop         edx
 00491C06    pop         ecx
 00491C07    pop         ecx
 00491C08    mov         dword ptr fs:[eax],edx
 00491C0B    push        491C18
 00491C10    ret
>00491C11    jmp         @HandleFinally
>00491C16    jmp         00491C10
 00491C18    pop         ebp
 00491C19    ret
*}
end.