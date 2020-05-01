//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit _Unit31;

interface

uses
  SysUtils, Classes;

type
  _Unit3131_2 = .2 = record//size=10
f4:WideString;//f4
f8:WideString;//f8
fC:WideString;//fC
end;;
  _DynArr_31_3 = array of _Unit3131_2;
//elSize = 10;

implementation

Initialization
//0046533C
{*
 0046533C    sub         dword ptr ds:[55D900],1
>00465343    jae         0046535B
 00465345    push        1
 00465347    mov         ecx,464E5C
 0046534C    mov         edx,465360
 00465351    mov         eax,465394
 00465356    call        004568CC
 0046535B    ret
*}
Finalization
//004652EC
{*
 004652EC    push        ebp
 004652ED    mov         ebp,esp
 004652EF    xor         eax,eax
 004652F1    push        ebp
 004652F2    push        46531D
 004652F7    push        dword ptr fs:[eax]
 004652FA    mov         dword ptr fs:[eax],esp
 004652FD    inc         dword ptr ds:[55D900]
>00465303    jne         0046530F
 00465305    mov         eax,46532C
 0046530A    call        00456950
 0046530F    xor         eax,eax
 00465311    pop         edx
 00465312    pop         ecx
 00465313    pop         ecx
 00465314    mov         dword ptr fs:[eax],edx
 00465317    push        465324
 0046531C    ret
>0046531D    jmp         @HandleFinally
>00465322    jmp         0046531C
 00465324    pop         ebp
 00465325    ret
*}
end.