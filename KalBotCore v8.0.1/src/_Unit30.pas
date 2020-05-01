//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit _Unit30;

interface

uses
  SysUtils, Classes;

type
  _Unit3030_2 = .2 = record//size=1C
f0:WideString;//f0
f4:WideString;//f4
end;;
  _DynArr_30_3 = array of _Unit3030_2;
//elSize = 1C;

implementation

Initialization
//00464D9C
{*
 00464D9C    sub         dword ptr ds:[55D8FC],1
>00464DA3    jae         00464DBB
 00464DA5    push        1
 00464DA7    mov         ecx,464A00
 00464DAC    mov         edx,464DC0
 00464DB1    mov         eax,464DF8
 00464DB6    call        004568CC
 00464DBB    ret
*}
Finalization
//00464D48
{*
 00464D48    push        ebp
 00464D49    mov         ebp,esp
 00464D4B    xor         eax,eax
 00464D4D    push        ebp
 00464D4E    push        464D79
 00464D53    push        dword ptr fs:[eax]
 00464D56    mov         dword ptr fs:[eax],esp
 00464D59    inc         dword ptr ds:[55D8FC]
>00464D5F    jne         00464D6B
 00464D61    mov         eax,464D88
 00464D66    call        00456950
 00464D6B    xor         eax,eax
 00464D6D    pop         edx
 00464D6E    pop         ecx
 00464D6F    pop         ecx
 00464D70    mov         dword ptr fs:[eax],edx
 00464D73    push        464D80
 00464D78    ret
>00464D79    jmp         @HandleFinally
>00464D7E    jmp         00464D78
 00464D80    pop         ebp
 00464D81    ret
*}
end.