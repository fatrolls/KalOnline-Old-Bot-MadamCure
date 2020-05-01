//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit _Unit19;

interface

uses
  SysUtils, Classes;

    function ShellExecuteA(Operation:PAnsiChar; FileName:PAnsiChar; Parameters:PAnsiChar; Directory:PAnsiChar; ShowCmd:Integer):HINST; stdcall;//0042FC18
    function ShellExecuteA(Operation:PAnsiChar; FileName:PAnsiChar; Parameters:PAnsiChar; Directory:PAnsiChar; ShowCmd:Integer):HINST; stdcall;//0042FC20
    function ShellExecuteExA:BOOL; stdcall;//0042FC28

implementation

//0042FC18
function shell32.ShellExecuteA(Operation:PAnsiChar; FileName:PAnsiChar; Parameters:PAnsiChar; Directory:PAnsiChar; ShowCmd:Integer):HINST; stdcall;
begin
{*
 0042FC18    jmp         dword ptr ds:[55FA9C]
*}
end;

//0042FC20
function shell32.ShellExecuteA(Operation:PAnsiChar; FileName:PAnsiChar; Parameters:PAnsiChar; Directory:PAnsiChar; ShowCmd:Integer):HINST; stdcall;
begin
{*
 0042FC20    jmp         dword ptr ds:[55FA9C]
*}
end;

//0042FC28
function shell32.ShellExecuteExA:BOOL; stdcall;
begin
{*
 0042FC28    jmp         dword ptr ds:[55FA98]
*}
end;

end.