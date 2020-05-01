//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit _Unit20;

interface

uses
  SysUtils, Classes;

    function CoInitialize:HRESULT; stdcall;//0042F1FC
    procedure CoUninitialize;//0042F204
    function CoCreateInstance(unkOuter:IUnknown; dwClsContext:Longint; const iid:TGUID; var pv:void ):HRESULT; stdcall;//0042F20C
    function CoTaskMemAlloc:Pointer; stdcall;//0042F214
    //function sub_0042F21C(?:?):?;//0042F21C

implementation

//0042F1FC
function ole32.CoInitialize:HRESULT; stdcall;
begin
{*
 0042F1FC    jmp         dword ptr ds:[55FA2C]
*}
end;

//0042F204
procedure ole32.CoUninitialize;
begin
{*
 0042F204    jmp         dword ptr ds:[55FA28]
*}
end;

//0042F20C
function ole32.CoCreateInstance(unkOuter:IUnknown; dwClsContext:Longint; const iid:TGUID; var pv:void ):HRESULT; stdcall;
begin
{*
 0042F20C    jmp         dword ptr ds:[55FA24]
*}
end;

//0042F214
function ole32.CoTaskMemAlloc:Pointer; stdcall;
begin
{*
 0042F214    jmp         dword ptr ds:[55FA20]
*}
end;

//0042F21C
{*function sub_0042F21C(?:?):?;
begin
 0042F21C    push        ebp
 0042F21D    mov         ebp,esp
 0042F21F    add         esp,0FFFFFFF8
 0042F222    mov         dword ptr [ebp-4],eax
 0042F225    test        byte ptr [ebp-1],80
 0042F229    sete        byte ptr [ebp-5]
 0042F22D    mov         al,byte ptr [ebp-5]
 0042F230    pop         ecx
 0042F231    pop         ecx
 0042F232    pop         ebp
 0042F233    ret
end;*}

end.