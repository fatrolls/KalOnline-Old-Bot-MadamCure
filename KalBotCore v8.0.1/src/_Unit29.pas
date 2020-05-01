//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit _Unit29;

interface

uses
  SysUtils, Classes;

type
  _Unit2929_3 = .3 = record//size=8
f0:WideString;//f0
f4:WideString;//f4
end;;
  _DynArr_29_4 = array of _Unit2929_3;
//elSize = 8;
  _Unit2929_2 = .2 = record//size=8
f0:WideString;//f0
f4:_DynArr_29_4;//f4
end;;
  _DynArr_29_5 = array of _Unit2929_2;
//elSize = 8;

implementation

Initialization
//0046416C
{*
 0046416C    sub         dword ptr ds:[55D8F8],1
>00464173    jae         0046418B
 00464175    push        1
 00464177    mov         ecx,463E64
 0046417C    mov         edx,464190
 00464181    mov         eax,4641CC
 00464186    call        004568CC
 0046418B    ret
*}
Finalization
//00464118
{*
 00464118    push        ebp
 00464119    mov         ebp,esp
 0046411B    xor         eax,eax
 0046411D    push        ebp
 0046411E    push        464149
 00464123    push        dword ptr fs:[eax]
 00464126    mov         dword ptr fs:[eax],esp
 00464129    inc         dword ptr ds:[55D8F8]
>0046412F    jne         0046413B
 00464131    mov         eax,464158
 00464136    call        00456950
 0046413B    xor         eax,eax
 0046413D    pop         edx
 0046413E    pop         ecx
 0046413F    pop         ecx
 00464140    mov         dword ptr fs:[eax],edx
 00464143    push        464150
 00464148    ret
>00464149    jmp         @HandleFinally
>0046414E    jmp         00464148
 00464150    pop         ebp
 00464151    ret
*}
end.