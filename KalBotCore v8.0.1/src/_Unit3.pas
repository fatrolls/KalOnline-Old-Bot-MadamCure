//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit _Unit3;

interface

uses
  SysUtils, Classes;

    //procedure sub_00406E84(?:?; ?:?; ?:?; ?:?; ?:?);//00406E84
    //procedure sub_00406EBC(?:Integer; ?:Integer; ?:?);//00406EBC
    //function sub_00406EE0(?:?; ?:TBorderWidth; ?:TBorderWidth):?;//00406EE0
    //procedure sub_00406F2C(?:?; ?:?; ?:?; ?:?; ?:?);//00406F2C
    //procedure sub_00406F6C(?:?; ?:?);//00406F6C

implementation

//00406E84
{*procedure sub_00406E84(?:?; ?:?; ?:?; ?:?; ?:?);
begin
 00406E84    push        ebp
 00406E85    mov         ebp,esp
 00406E87    add         esp,0FFFFFFF4
 00406E8A    mov         dword ptr [ebp-0C],ecx
 00406E8D    mov         dword ptr [ebp-8],edx
 00406E90    mov         dword ptr [ebp-4],eax
 00406E93    mov         eax,dword ptr [ebp+8]
 00406E96    mov         edx,dword ptr [ebp-4]
 00406E99    mov         dword ptr [eax],edx
 00406E9B    mov         eax,dword ptr [ebp+8]
 00406E9E    mov         edx,dword ptr [ebp-8]
 00406EA1    mov         dword ptr [eax+4],edx
 00406EA4    mov         eax,dword ptr [ebp+8]
 00406EA7    mov         edx,dword ptr [ebp+0C]
 00406EAA    mov         dword ptr [eax+0C],edx
 00406EAD    mov         eax,dword ptr [ebp+8]
 00406EB0    mov         edx,dword ptr [ebp-0C]
 00406EB3    mov         dword ptr [eax+8],edx
 00406EB6    mov         esp,ebp
 00406EB8    pop         ebp
 00406EB9    ret         8
end;*}

//00406EBC
{*procedure sub_00406EBC(?:Integer; ?:Integer; ?:?);
begin
 00406EBC    push        ebp
 00406EBD    mov         ebp,esp
 00406EBF    add         esp,0FFFFFFF4
 00406EC2    mov         dword ptr [ebp-0C],ecx
 00406EC5    mov         dword ptr [ebp-8],edx
 00406EC8    mov         dword ptr [ebp-4],eax
 00406ECB    mov         eax,dword ptr [ebp-0C]
 00406ECE    mov         edx,dword ptr [ebp-4]
 00406ED1    mov         dword ptr [eax],edx
 00406ED3    mov         eax,dword ptr [ebp-0C]
 00406ED6    mov         edx,dword ptr [ebp-8]
 00406ED9    mov         dword ptr [eax+4],edx
 00406EDC    mov         esp,ebp
 00406EDE    pop         ebp
 00406EDF    ret
end;*}

//00406EE0
{*function sub_00406EE0(?:?; ?:TBorderWidth; ?:TBorderWidth):?;
begin
 00406EE0    push        ebp
 00406EE1    mov         ebp,esp
 00406EE3    add         esp,0FFFFFFF0
 00406EE6    mov         dword ptr [ebp-0C],ecx
 00406EE9    mov         dword ptr [ebp-8],edx
 00406EEC    mov         dword ptr [ebp-4],eax
 00406EEF    mov         eax,dword ptr [ebp-4]
 00406EF2    test        eax,eax
>00406EF4    je          00406F1F
 00406EF6    mov         eax,dword ptr [ebp-4]
 00406EF9    mov         edx,dword ptr [ebp-8]
 00406EFC    add         dword ptr [eax],edx
 00406EFE    mov         eax,dword ptr [ebp-4]
 00406F01    mov         edx,dword ptr [ebp-8]
 00406F04    add         dword ptr [eax+8],edx
 00406F07    mov         eax,dword ptr [ebp-4]
 00406F0A    mov         edx,dword ptr [ebp-0C]
 00406F0D    add         dword ptr [eax+4],edx
 00406F10    mov         eax,dword ptr [ebp-4]
 00406F13    mov         edx,dword ptr [ebp-0C]
 00406F16    add         dword ptr [eax+0C],edx
 00406F19    mov         byte ptr [ebp-0D],1
>00406F1D    jmp         00406F23
 00406F1F    mov         byte ptr [ebp-0D],0
 00406F23    mov         al,byte ptr [ebp-0D]
 00406F26    mov         esp,ebp
 00406F28    pop         ebp
 00406F29    ret
end;*}

//00406F2C
{*procedure sub_00406F2C(?:?; ?:?; ?:?; ?:?; ?:?);
begin
 00406F2C    push        ebp
 00406F2D    mov         ebp,esp
 00406F2F    add         esp,0FFFFFFF4
 00406F32    mov         dword ptr [ebp-0C],ecx
 00406F35    mov         dword ptr [ebp-8],edx
 00406F38    mov         dword ptr [ebp-4],eax
 00406F3B    mov         eax,dword ptr [ebp+8]
 00406F3E    mov         edx,dword ptr [ebp-4]
 00406F41    mov         dword ptr [eax],edx
 00406F43    mov         eax,dword ptr [ebp+8]
 00406F46    mov         edx,dword ptr [ebp-8]
 00406F49    mov         dword ptr [eax+4],edx
 00406F4C    mov         eax,dword ptr [ebp-4]
 00406F4F    add         eax,dword ptr [ebp-0C]
 00406F52    mov         edx,dword ptr [ebp+8]
 00406F55    mov         dword ptr [edx+8],eax
 00406F58    mov         eax,dword ptr [ebp-8]
 00406F5B    add         eax,dword ptr [ebp+0C]
 00406F5E    mov         edx,dword ptr [ebp+8]
 00406F61    mov         dword ptr [edx+0C],eax
 00406F64    mov         esp,ebp
 00406F66    pop         ebp
 00406F67    ret         8
end;*}

//00406F6C
{*procedure sub_00406F6C(?:?; ?:?);
begin
 00406F6C    push        ebp
 00406F6D    mov         ebp,esp
 00406F6F    add         esp,0FFFFFFF8
 00406F72    mov         dword ptr [ebp-8],edx
 00406F75    mov         dword ptr [ebp-4],eax
 00406F78    mov         eax,dword ptr [ebp-4]
 00406F7B    mov         eax,dword ptr [eax+8]
 00406F7E    mov         edx,dword ptr [ebp-4]
 00406F81    sub         eax,dword ptr [edx]
 00406F83    sar         eax,1
>00406F85    jns         00406F8A
 00406F87    adc         eax,0
 00406F8A    mov         edx,dword ptr [ebp-4]
 00406F8D    add         eax,dword ptr [edx]
 00406F8F    mov         edx,dword ptr [ebp-8]
 00406F92    mov         dword ptr [edx],eax
 00406F94    mov         eax,dword ptr [ebp-4]
 00406F97    mov         eax,dword ptr [eax+0C]
 00406F9A    mov         edx,dword ptr [ebp-4]
 00406F9D    sub         eax,dword ptr [edx+4]
 00406FA0    sar         eax,1
>00406FA2    jns         00406FA7
 00406FA4    adc         eax,0
 00406FA7    mov         edx,dword ptr [ebp-4]
 00406FAA    add         eax,dword ptr [edx+4]
 00406FAD    mov         edx,dword ptr [ebp-8]
 00406FB0    mov         dword ptr [edx+4],eax
 00406FB3    pop         ecx
 00406FB4    pop         ecx
 00406FB5    pop         ebp
 00406FB6    ret
end;*}

end.