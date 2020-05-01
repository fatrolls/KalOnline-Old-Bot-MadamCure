//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit _Unit123;

interface

uses
  SysUtils, Classes;

    function PlaySoundA(hmod:HMODULE; fdwSound:DWORD):BOOL; stdcall;//004FA17C
    function sndPlaySoundA(uFlags:UINT):BOOL; stdcall;//004FA184

implementation

//004FA17C
function winmm.PlaySoundA(hmod:HMODULE; fdwSound:DWORD):BOOL; stdcall;
begin
{*
 004FA17C    jmp         dword ptr ds:[55FB68]
*}
end;

//004FA184
function winmm.sndPlaySoundA(uFlags:UINT):BOOL; stdcall;
begin
{*
 004FA184    jmp         dword ptr ds:[55FB64]
*}
end;

end.