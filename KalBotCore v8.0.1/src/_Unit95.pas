//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit _Unit95;

interface

uses
  SysUtils, Classes;

    //procedure sub_00521C54(?:?; ?:?; ?:?; ?:?);//00521C54
    //procedure sub_00521C84(?:?; ?:?; ?:?; ?:?);//00521C84
    //function sub_00521CB4(?:?; ?:?; ?:?; ?:?):?;//00521CB4
    //procedure sub_00521CE4(?:?; ?:?);//00521CE4
    //procedure sub_00521D14(?:?; ?:?; ?:?; ?:?);//00521D14
    //procedure sub_00521D44(?:?; ?:?; ?:?; ?:?);//00521D44
    //procedure sub_00521D74(?:?; ?:?; ?:?; ?:?);//00521D74
    //procedure sub_00521DA4(?:?; ?:?);//00521DA4

implementation

//00521C54
{*procedure sub_00521C54(?:?; ?:?; ?:?; ?:?);
begin
 00521C54    push        ebp
 00521C55    mov         ebp,esp
 00521C57    add         esp,0FFFFFFF8
 00521C5A    push        dword ptr [ebp+14]
 00521C5D    push        dword ptr [ebp+10]
 00521C60    push        dword ptr [ebp+0C]
 00521C63    push        dword ptr [ebp+8]
 00521C66    call        00521D14
 00521C6B    call        @TRUNC
 00521C70    mov         dword ptr [ebp-8],eax
 00521C73    mov         dword ptr [ebp-4],edx
 00521C76    mov         eax,dword ptr [ebp-8]
 00521C79    mov         edx,dword ptr [ebp-4]
 00521C7C    pop         ecx
 00521C7D    pop         ecx
 00521C7E    pop         ebp
 00521C7F    ret         10
end;*}

//00521C84
{*procedure sub_00521C84(?:?; ?:?; ?:?; ?:?);
begin
 00521C84    push        ebp
 00521C85    mov         ebp,esp
 00521C87    add         esp,0FFFFFFF8
 00521C8A    push        dword ptr [ebp+14]
 00521C8D    push        dword ptr [ebp+10]
 00521C90    push        dword ptr [ebp+0C]
 00521C93    push        dword ptr [ebp+8]
 00521C96    call        00521D44
 00521C9B    call        @TRUNC
 00521CA0    mov         dword ptr [ebp-8],eax
 00521CA3    mov         dword ptr [ebp-4],edx
 00521CA6    mov         eax,dword ptr [ebp-8]
 00521CA9    mov         edx,dword ptr [ebp-4]
 00521CAC    pop         ecx
 00521CAD    pop         ecx
 00521CAE    pop         ebp
 00521CAF    ret         10
end;*}

//00521CB4
{*function sub_00521CB4(?:?; ?:?; ?:?; ?:?):?;
begin
 00521CB4    push        ebp
 00521CB5    mov         ebp,esp
 00521CB7    add         esp,0FFFFFFF8
 00521CBA    push        dword ptr [ebp+14]
 00521CBD    push        dword ptr [ebp+10]
 00521CC0    push        dword ptr [ebp+0C]
 00521CC3    push        dword ptr [ebp+8]
 00521CC6    call        00521D74
 00521CCB    call        @TRUNC
 00521CD0    mov         dword ptr [ebp-8],eax
 00521CD3    mov         dword ptr [ebp-4],edx
 00521CD6    mov         eax,dword ptr [ebp-8]
 00521CD9    mov         edx,dword ptr [ebp-4]
 00521CDC    pop         ecx
 00521CDD    pop         ecx
 00521CDE    pop         ebp
 00521CDF    ret         10
end;*}

//00521CE4
{*procedure sub_00521CE4(?:?; ?:?);
begin
 00521CE4    push        ebp
 00521CE5    mov         ebp,esp
 00521CE7    add         esp,0FFFFFFF8
 00521CEA    fld         qword ptr [ebp+10]
 00521CED    fcomp       qword ptr [ebp+8]
 00521CF0    fnstsw      al
 00521CF2    sahf
>00521CF3    jae         00521D01
 00521CF5    fld         qword ptr [ebp+8]
 00521CF8    fsub        qword ptr [ebp+10]
 00521CFB    fstp        qword ptr [ebp-8]
 00521CFE    wait
>00521CFF    jmp         00521D0B
 00521D01    fld         qword ptr [ebp+10]
 00521D04    fsub        qword ptr [ebp+8]
 00521D07    fstp        qword ptr [ebp-8]
 00521D0A    wait
 00521D0B    fld         qword ptr [ebp-8]
 00521D0E    pop         ecx
 00521D0F    pop         ecx
 00521D10    pop         ebp
 00521D11    ret         10
end;*}

//00521D14
{*procedure sub_00521D14(?:?; ?:?; ?:?; ?:?);
begin
 00521D14    push        ebp
 00521D15    mov         ebp,esp
 00521D17    add         esp,0FFFFFFF8
 00521D1A    push        dword ptr [ebp+14]
 00521D1D    push        dword ptr [ebp+10]
 00521D20    push        dword ptr [ebp+0C]
 00521D23    push        dword ptr [ebp+8]
 00521D26    call        00521CE4
 00521D2B    fmul        dword ptr ds:[521D40];1440:Single
 00521D31    fstp        qword ptr [ebp-8]
 00521D34    wait
 00521D35    fld         qword ptr [ebp-8]
 00521D38    pop         ecx
 00521D39    pop         ecx
 00521D3A    pop         ebp
 00521D3B    ret         10
end;*}

//00521D44
{*procedure sub_00521D44(?:?; ?:?; ?:?; ?:?);
begin
 00521D44    push        ebp
 00521D45    mov         ebp,esp
 00521D47    add         esp,0FFFFFFF8
 00521D4A    push        dword ptr [ebp+14]
 00521D4D    push        dword ptr [ebp+10]
 00521D50    push        dword ptr [ebp+0C]
 00521D53    push        dword ptr [ebp+8]
 00521D56    call        00521CE4
 00521D5B    fmul        dword ptr ds:[521D70];86400:Single
 00521D61    fstp        qword ptr [ebp-8]
 00521D64    wait
 00521D65    fld         qword ptr [ebp-8]
 00521D68    pop         ecx
 00521D69    pop         ecx
 00521D6A    pop         ebp
 00521D6B    ret         10
end;*}

//00521D74
{*procedure sub_00521D74(?:?; ?:?; ?:?; ?:?);
begin
 00521D74    push        ebp
 00521D75    mov         ebp,esp
 00521D77    add         esp,0FFFFFFF8
 00521D7A    push        dword ptr [ebp+14]
 00521D7D    push        dword ptr [ebp+10]
 00521D80    push        dword ptr [ebp+0C]
 00521D83    push        dword ptr [ebp+8]
 00521D86    call        00521CE4
 00521D8B    fmul        dword ptr ds:[521DA0];86400000:Single
 00521D91    fstp        qword ptr [ebp-8]
 00521D94    wait
 00521D95    fld         qword ptr [ebp-8]
 00521D98    pop         ecx
 00521D99    pop         ecx
 00521D9A    pop         ebp
 00521D9B    ret         10
end;*}

//00521DA4
{*procedure sub_00521DA4(?:?; ?:?);
begin
 00521DA4    push        ebp
 00521DA5    mov         ebp,esp
 00521DA7    add         esp,0FFFFFFF8
 00521DAA    fld         qword ptr [ebp+10]
 00521DAD    fmul        dword ptr ds:[521DCC];86400:Single
 00521DB3    fild        qword ptr [ebp+8]
 00521DB6    faddp       st(1),st
 00521DB8    fdiv        dword ptr ds:[521DCC];86400:Single
 00521DBE    fstp        qword ptr [ebp-8]
 00521DC1    wait
 00521DC2    fld         qword ptr [ebp-8]
 00521DC5    pop         ecx
 00521DC6    pop         ecx
 00521DC7    pop         ebp
 00521DC8    ret         10
end;*}

end.