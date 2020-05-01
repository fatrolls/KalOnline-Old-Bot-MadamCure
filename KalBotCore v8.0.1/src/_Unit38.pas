//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit _Unit38;

interface

uses
  SysUtils, Classes;

    //function sub_0048FCA0(?:Integer; ?:?):?;//0048FCA0
    //function sub_0048FCCC(?:Integer; ?:Integer):?;//0048FCCC

implementation

//0048FCA0
{*function sub_0048FCA0(?:Integer; ?:?):?;
begin
 0048FCA0    push        ebp
 0048FCA1    mov         ebp,esp
 0048FCA3    add         esp,0FFFFFFF4
 0048FCA6    mov         dword ptr [ebp-8],edx
 0048FCA9    mov         dword ptr [ebp-4],eax
 0048FCAC    mov         eax,dword ptr [ebp-4]
 0048FCAF    cmp         eax,dword ptr [ebp-8]
>0048FCB2    jge         0048FCBC
 0048FCB4    mov         eax,dword ptr [ebp-4]
 0048FCB7    mov         dword ptr [ebp-0C],eax
>0048FCBA    jmp         0048FCC2
 0048FCBC    mov         eax,dword ptr [ebp-8]
 0048FCBF    mov         dword ptr [ebp-0C],eax
 0048FCC2    mov         eax,dword ptr [ebp-0C]
 0048FCC5    mov         esp,ebp
 0048FCC7    pop         ebp
 0048FCC8    ret
end;*}

//0048FCCC
{*function sub_0048FCCC(?:Integer; ?:Integer):?;
begin
 0048FCCC    push        ebp
 0048FCCD    mov         ebp,esp
 0048FCCF    add         esp,0FFFFFFF4
 0048FCD2    mov         dword ptr [ebp-8],edx
 0048FCD5    mov         dword ptr [ebp-4],eax
 0048FCD8    mov         eax,dword ptr [ebp-4]
 0048FCDB    cmp         eax,dword ptr [ebp-8]
>0048FCDE    jle         0048FCE8
 0048FCE0    mov         eax,dword ptr [ebp-4]
 0048FCE3    mov         dword ptr [ebp-0C],eax
>0048FCE6    jmp         0048FCEE
 0048FCE8    mov         eax,dword ptr [ebp-8]
 0048FCEB    mov         dword ptr [ebp-0C],eax
 0048FCEE    mov         eax,dword ptr [ebp-0C]
 0048FCF1    mov         esp,ebp
 0048FCF3    pop         ebp
 0048FCF4    ret
end;*}

end.