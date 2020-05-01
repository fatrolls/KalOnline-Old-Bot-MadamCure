//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit _Unit26;

interface

uses
  SysUtils, Classes;

    function GetSaveFileNameA:BOOL; stdcall;//0042FD7C
    function GetSaveFileNameW:BOOL; stdcall;//0042FD84
    function PrintDlgA:BOOL; stdcall;//0042FD8C

implementation

//0042FD7C
function comdlg32.GetSaveFileNameA:BOOL; stdcall;
begin
{*
 0042FD7C    jmp         dword ptr ds:[55FAAC]
*}
end;

//0042FD84
function comdlg32.GetSaveFileNameW:BOOL; stdcall;
begin
{*
 0042FD84    jmp         dword ptr ds:[55FAA8]
*}
end;

//0042FD8C
function comdlg32.PrintDlgA:BOOL; stdcall;
begin
{*
 0042FD8C    jmp         dword ptr ds:[55FAA4]
*}
end;

end.