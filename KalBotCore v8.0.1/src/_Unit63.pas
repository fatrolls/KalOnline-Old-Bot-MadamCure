//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit _Unit63;

interface

uses
  SysUtils, Classes;


implementation

Initialization
//0049C4FC
{*
 0049C4FC    push        ebp
 0049C4FD    mov         ebp,esp
 0049C4FF    sub         dword ptr ds:[55DD14],1
>0049C506    jae         0049C52F
 0049C508    push        49C534;'Delphi Picture'
 0049C50D    call        user32.RegisterClipboardFormatA
 0049C512    mov         [0055DD10],ax;gvar_0055DD10:LongWord
 0049C518    push        49C544;'Delphi Component'
 0049C51D    call        user32.RegisterClipboardFormatA
 0049C522    mov         [0055DD12],ax;gvar_0055DD12:LongWord
 0049C528    xor         eax,eax
 0049C52A    mov         [0055DD18],eax;gvar_0055DD18
 0049C52F    pop         ebp
 0049C530    ret
*}
Finalization
//0049C4C0
{*
 0049C4C0    push        ebp
 0049C4C1    mov         ebp,esp
 0049C4C3    xor         eax,eax
 0049C4C5    push        ebp
 0049C4C6    push        49C4F1
 0049C4CB    push        dword ptr fs:[eax]
 0049C4CE    mov         dword ptr fs:[eax],esp
 0049C4D1    inc         dword ptr ds:[55DD14]
>0049C4D7    jne         0049C4E3
 0049C4D9    mov         eax,[0055DD18];gvar_0055DD18
 0049C4DE    call        TObject.Free
 0049C4E3    xor         eax,eax
 0049C4E5    pop         edx
 0049C4E6    pop         ecx
 0049C4E7    pop         ecx
 0049C4E8    mov         dword ptr fs:[eax],edx
 0049C4EB    push        49C4F8
 0049C4F0    ret
>0049C4F1    jmp         @HandleFinally
>0049C4F6    jmp         0049C4F0
 0049C4F8    pop         ebp
 0049C4F9    ret
*}
end.