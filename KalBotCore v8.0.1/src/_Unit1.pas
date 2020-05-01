//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit _Unit1;

interface

uses
  SysUtils, Classes;

    function GetModuleHandleA:HMODULE; stdcall;//00406D44
    function LocalAlloc(size:Integer):Pointer; stdcall;//00406D4C
    function TlsGetValue:Pointer; stdcall;//00406D54
    function TlsSetValue(lpTlsValue:Pointer):LongBool; stdcall;//00406D5C
    function AllocTlsBuffer(Size:Integer):Pointer;//00406D64
    function GetTlsSize:Integer;//00406D70
    procedure InitThreadTLS;//00406D78
    function @GetTls:Pointer;//00406DBC
    procedure InitializeModule;//00406DFC
    procedure @InitExe;//00406E08

implementation

//00406D44
function kernel32.GetModuleHandleA:HMODULE; stdcall;
begin
{*
 00406D44    jmp         dword ptr ds:[55F2C8]
*}
end;

//00406D4C
function kernel32.LocalAlloc(size:Integer):Pointer; stdcall;
begin
{*
 00406D4C    jmp         dword ptr ds:[55F2C4]
*}
end;

//00406D54
function kernel32.TlsGetValue:Pointer; stdcall;
begin
{*
 00406D54    jmp         dword ptr ds:[55F2C0]
*}
end;

//00406D5C
function kernel32.TlsSetValue(lpTlsValue:Pointer):LongBool; stdcall;
begin
{*
 00406D5C    jmp         dword ptr ds:[55F2BC]
*}
end;

//00406D64
function AllocTlsBuffer(Size:Integer):Pointer;
begin
{*
 00406D64    push        eax
 00406D65    push        40
 00406D67    call        kernel32.LocalAlloc
 00406D6C    ret
*}
end;

//00406D70
function GetTlsSize:Integer;
begin
{*
 00406D70    mov         eax,24C
 00406D75    ret
*}
end;

//00406D78
procedure InitThreadTLS;
begin
{*
 00406D78    push        ebx
 00406D79    call        GetTlsSize
 00406D7E    mov         ebx,eax
 00406D80    test        ebx,ebx
>00406D82    je          00406DBA
 00406D84    cmp         dword ptr ds:[53D0A4],0FFFFFFFF
>00406D8B    jne         00406D97
 00406D8D    mov         eax,0E2
 00406D92    call        @RunError
 00406D97    mov         eax,ebx
 00406D99    call        AllocTlsBuffer
 00406D9E    test        eax,eax
>00406DA0    jne         00406DAE
 00406DA2    mov         eax,0E2
 00406DA7    call        @RunError
>00406DAC    jmp         00406DBA
 00406DAE    push        eax
 00406DAF    mov         eax,[0053D0A4]
 00406DB4    push        eax
 00406DB5    call        kernel32.TlsSetValue
 00406DBA    pop         ebx
 00406DBB    ret
*}
end;

//00406DBC
function @GetTls:Pointer;
begin
{*
 00406DBC    mov         cl,byte ptr ds:[55C660]
 00406DC2    mov         eax,[0053D0A4]
 00406DC7    test        cl,cl
>00406DC9    jne         00406DF1
 00406DCB    mov         edx,dword ptr fs:[2C]
 00406DD2    mov         eax,dword ptr [edx+eax*4]
 00406DD5    ret
 00406DD6    call        InitThreadTLS
 00406DDB    mov         eax,[0053D0A4]
 00406DE0    push        eax
 00406DE1    call        kernel32.TlsGetValue
 00406DE6    test        eax,eax
>00406DE8    je          00406DEB
 00406DEA    ret
 00406DEB    mov         eax,[0055C66C]
 00406DF0    ret
 00406DF1    push        eax
 00406DF2    call        kernel32.TlsGetValue
 00406DF7    test        eax,eax
>00406DF9    je          00406DD6
 00406DFB    ret
*}
end;

//00406DFC
procedure InitializeModule;
begin
{*
 00406DFC    mov         eax,53D0AC
 00406E01    call        RegisterModule
 00406E06    ret
*}
end;

//00406E08
procedure @InitExe;
begin
{*
 00406E08    push        ebx
 00406E09    mov         ebx,eax
 00406E0B    xor         eax,eax
 00406E0D    mov         [0053D0A4],eax
 00406E12    push        0
 00406E14    call        kernel32.GetModuleHandleA
 00406E19    mov         [0055C664],eax;gvar_0055C664
 00406E1E    mov         eax,[0055C664];gvar_0055C664
 00406E23    mov         [0053D0B0],eax
 00406E28    xor         eax,eax
 00406E2A    mov         [0053D0B4],eax
 00406E2F    xor         eax,eax
 00406E31    mov         [0053D0B8],eax
 00406E36    call        InitializeModule
 00406E3B    mov         edx,53D0AC
 00406E40    mov         eax,ebx
 00406E42    call        @StartExe
 00406E47    pop         ebx
 00406E48    ret
*}
end;

end.