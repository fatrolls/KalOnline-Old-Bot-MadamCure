//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit _Unit73;

interface

uses
  SysUtils, Classes;

    //function sub_00491C28(?:?; ?:?; ?:?; ?:?):?;//00491C28
    //function sub_00491C64(?:?):?;//00491C64
    procedure sub_00491C94;//00491C94

implementation

//00491C28
{*function sub_00491C28(?:?; ?:?; ?:?; ?:?):?;
begin
 00491C28    push        ebp
 00491C29    mov         ebp,esp
 00491C2B    push        ecx
 00491C2C    cmp         dword ptr ds:[55DBE8],0;gvar_0055DBE8:Pointer
>00491C33    je          00491C4F
 00491C35    mov         eax,dword ptr [ebp+14]
 00491C38    push        eax
 00491C39    mov         eax,dword ptr [ebp+10]
 00491C3C    push        eax
 00491C3D    mov         eax,dword ptr [ebp+0C]
 00491C40    push        eax
 00491C41    mov         eax,dword ptr [ebp+8]
 00491C44    push        eax
 00491C45    call        dword ptr ds:[55DBE8]
 00491C4B    test        eax,eax
>00491C4D    jne         00491C53
 00491C4F    xor         eax,eax
>00491C51    jmp         00491C55
 00491C53    mov         al,1
 00491C55    neg         al
 00491C57    sbb         eax,eax
 00491C59    mov         dword ptr [ebp-4],eax
 00491C5C    mov         eax,dword ptr [ebp-4]
 00491C5F    pop         ecx
 00491C60    pop         ebp
 00491C61    ret         10
end;*}

//00491C64
{*function sub_00491C64(?:?):?;
begin
 00491C64    push        ebp
 00491C65    mov         ebp,esp
 00491C67    push        ecx
 00491C68    cmp         dword ptr ds:[55DBEC],0;gvar_0055DBEC:Pointer
>00491C6F    je          00491C7F
 00491C71    mov         eax,dword ptr [ebp+8]
 00491C74    push        eax
 00491C75    call        dword ptr ds:[55DBEC]
 00491C7B    test        eax,eax
>00491C7D    jne         00491C83
 00491C7F    xor         eax,eax
>00491C81    jmp         00491C85
 00491C83    mov         al,1
 00491C85    neg         al
 00491C87    sbb         eax,eax
 00491C89    mov         dword ptr [ebp-4],eax
 00491C8C    mov         eax,dword ptr [ebp-4]
 00491C8F    pop         ecx
 00491C90    pop         ebp
 00491C91    ret         4
end;*}

//00491C94
procedure sub_00491C94;
begin
{*
 00491C94    push        ebp
 00491C95    mov         ebp,esp
 00491C97    push        ecx
 00491C98    push        491E30;'comctl32.dll'
 00491C9D    call        kernel32.GetModuleHandleA
 00491CA2    mov         dword ptr [ebp-4],eax
 00491CA5    cmp         dword ptr [ebp-4],0
>00491CA9    je          00491E2B
 00491CAF    push        491E40;'InitializeFlatSB'
 00491CB4    mov         eax,dword ptr [ebp-4]
 00491CB7    push        eax
 00491CB8    call        kernel32.GetProcAddress
 00491CBD    mov         [0055DBEC],eax;gvar_0055DBEC:Pointer
 00491CC2    push        491E54;'UninitializeFlatSB'
 00491CC7    mov         eax,dword ptr [ebp-4]
 00491CCA    push        eax
 00491CCB    call        kernel32.GetProcAddress
 00491CD0    mov         [0055DBF0],eax;gvar_0055DBF0:Pointer
 00491CD5    push        491E68;'FlatSB_GetScrollProp'
 00491CDA    mov         eax,dword ptr [ebp-4]
 00491CDD    push        eax
 00491CDE    call        kernel32.GetProcAddress
 00491CE3    mov         [0055DBE4],eax;gvar_0055DBE4:Pointer
 00491CE8    push        491E80;'FlatSB_SetScrollProp'
 00491CED    mov         eax,dword ptr [ebp-4]
 00491CF0    push        eax
 00491CF1    call        kernel32.GetProcAddress
 00491CF6    mov         [0055DBE8],eax;gvar_0055DBE8:Pointer
 00491CFB    push        491E98;'FlatSB_EnableScrollBar'
 00491D00    mov         eax,dword ptr [ebp-4]
 00491D03    push        eax
 00491D04    call        kernel32.GetProcAddress
 00491D09    mov         [0055DBC0],eax;gvar_0055DBC0:Pointer
 00491D0E    cmp         dword ptr ds:[55DBC0],0;gvar_0055DBC0:Pointer
>00491D15    jne         00491D21
 00491D17    mov         eax,407B94;user32.EnableScrollBar:LongBool
 00491D1C    mov         [0055DBC0],eax;gvar_0055DBC0:Pointer
 00491D21    push        491EB0;'FlatSB_ShowScrollBar'
 00491D26    mov         eax,dword ptr [ebp-4]
 00491D29    push        eax
 00491D2A    call        kernel32.GetProcAddress
 00491D2F    mov         [0055DBC4],eax;gvar_0055DBC4:Pointer
 00491D34    cmp         dword ptr ds:[55DBC4],0;gvar_0055DBC4:Pointer
>00491D3B    jne         00491D47
 00491D3D    mov         eax,408054;user32.ShowScrollBar:LongBool
 00491D42    mov         [0055DBC4],eax;gvar_0055DBC4:Pointer
 00491D47    push        491EC8;'FlatSB_GetScrollRange'
 00491D4C    mov         eax,dword ptr [ebp-4]
 00491D4F    push        eax
 00491D50    call        kernel32.GetProcAddress
 00491D55    mov         [0055DBC8],eax;gvar_0055DBC8:Pointer
 00491D5A    cmp         dword ptr ds:[55DBC8],0;gvar_0055DBC8:Pointer
>00491D61    jne         00491D6D
 00491D63    mov         eax,407D14;user32.GetScrollRange:LongBool
 00491D68    mov         [0055DBC8],eax;gvar_0055DBC8:Pointer
 00491D6D    push        491EE0;'FlatSB_GetScrollInfo'
 00491D72    mov         eax,dword ptr [ebp-4]
 00491D75    push        eax
 00491D76    call        kernel32.GetProcAddress
 00491D7B    mov         [0055DBCC],eax;gvar_0055DBCC:Pointer
 00491D80    cmp         dword ptr ds:[55DBCC],0;gvar_0055DBCC:Pointer
>00491D87    jne         00491D93
 00491D89    mov         eax,407D04;user32.GetScrollInfo:LongBool
 00491D8E    mov         [0055DBCC],eax;gvar_0055DBCC:Pointer
 00491D93    push        491EF8;'FlatSB_GetScrollPos'
 00491D98    mov         eax,dword ptr [ebp-4]
 00491D9B    push        eax
 00491D9C    call        kernel32.GetProcAddress
 00491DA1    mov         [0055DBD0],eax;gvar_0055DBD0:Pointer
 00491DA6    cmp         dword ptr ds:[55DBD0],0;gvar_0055DBD0:Pointer
>00491DAD    jne         00491DB9
 00491DAF    mov         eax,407D0C;user32.GetScrollPos:Integer
 00491DB4    mov         [0055DBD0],eax;gvar_0055DBD0:Pointer
 00491DB9    push        491F0C;'FlatSB_SetScrollPos'
 00491DBE    mov         eax,dword ptr [ebp-4]
 00491DC1    push        eax
 00491DC2    call        kernel32.GetProcAddress
 00491DC7    mov         [0055DBD4],eax;gvar_0055DBD4:Pointer
 00491DCC    cmp         dword ptr ds:[55DBD4],0;gvar_0055DBD4:Pointer
>00491DD3    jne         00491DDF
 00491DD5    mov         eax,407FDC;user32.SetScrollPos:Integer
 00491DDA    mov         [0055DBD4],eax;gvar_0055DBD4:Pointer
 00491DDF    push        491F20;'FlatSB_SetScrollInfo'
 00491DE4    mov         eax,dword ptr [ebp-4]
 00491DE7    push        eax
 00491DE8    call        kernel32.GetProcAddress
 00491DED    mov         [0055DBD8],eax;gvar_0055DBD8:Pointer
 00491DF2    cmp         dword ptr ds:[55DBD8],0;gvar_0055DBD8:Pointer
>00491DF9    jne         00491E05
 00491DFB    mov         eax,407FD4;user32.SetScrollInfo:Integer
 00491E00    mov         [0055DBD8],eax;gvar_0055DBD8:Pointer
 00491E05    push        491F38;'FlatSB_SetScrollRange'
 00491E0A    mov         eax,dword ptr [ebp-4]
 00491E0D    push        eax
 00491E0E    call        kernel32.GetProcAddress
 00491E13    mov         [0055DBDC],eax;gvar_0055DBDC:Pointer
 00491E18    cmp         dword ptr ds:[55DBDC],0;gvar_0055DBDC:Pointer
>00491E1F    jne         00491E2B
 00491E21    mov         eax,407FE4;user32.SetScrollRange:LongBool
 00491E26    mov         [0055DBDC],eax;gvar_0055DBDC:Pointer
 00491E2B    pop         ecx
 00491E2C    pop         ebp
 00491E2D    ret
*}
end;

Initialization
//00491F80
{*
 00491F80    push        ebp
 00491F81    mov         ebp,esp
 00491F83    sub         dword ptr ds:[55DBE0],1
>00491F8A    jae         00491F91
 00491F8C    call        00491C94
 00491F91    pop         ebp
 00491F92    ret
*}
Finalization
end.