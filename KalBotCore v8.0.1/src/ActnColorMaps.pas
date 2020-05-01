//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit ActnColorMaps;

interface

uses
  SysUtils, Classes;

type
  TXPColorMap = class(TCustomActionBarColorMap)
  public
    procedure v38; virtual;//v38//004FA5B4
  end;
    procedure sub_004FA5B4;//004FA5B4

implementation

//004FA5B4
procedure sub_004FA5B4;
begin
{*
 004FA5B4    push        ebp
 004FA5B5    mov         ebp,esp
 004FA5B7    push        ecx
 004FA5B8    mov         dword ptr [ebp-4],eax
 004FA5BB    mov         eax,dword ptr [ebp-4]
 004FA5BE    call        0050F978
 004FA5C3    mov         edx,0FF00000F
 004FA5C8    mov         eax,dword ptr [ebp-4]
 004FA5CB    mov         ecx,dword ptr [eax]
 004FA5CD    call        dword ptr [ecx+30];TXPColorMap.SetColor
 004FA5D0    mov         eax,dword ptr [ebp-4]
 004FA5D3    mov         dword ptr [eax+74],0FF000005;TXPColorMap.FMenuColor:TColor
 004FA5DA    mov         eax,dword ptr [ebp-4]
 004FA5DD    mov         dword ptr [eax+38],0C66931;TXPColorMap.FBtnFrameColor:TColor
 004FA5E4    mov         eax,dword ptr [ebp-4]
 004FA5E7    mov         dword ptr [eax+34],0FF00000F;TXPColorMap.FBtnSelectedColor:TColor
 004FA5EE    mov         eax,dword ptr [ebp-4]
 004FA5F1    mov         dword ptr [eax+48],0FF000011;TXPColorMap.FDisabledFontColor:TColor
 004FA5F8    mov         eax,dword ptr [ebp-4]
 004FA5FB    mov         dword ptr [eax+4C],0FF000014;TXPColorMap.FDisabledFontShadow:TColor
 004FA602    mov         eax,dword ptr [ebp-4]
 004FA605    mov         dword ptr [eax+44],808080;TXPColorMap.FDisabledColor:TColor
 004FA60C    mov         edx,0FF000008
 004FA611    mov         eax,dword ptr [ebp-4]
 004FA614    mov         ecx,dword ptr [eax]
 004FA616    call        dword ptr [ecx+34];TXPColorMap.SetFontColor
 004FA619    mov         eax,dword ptr [ebp-4]
 004FA61C    mov         dword ptr [eax+78],0FFFFFF;TXPColorMap.FFrameTopLeftInner:TColor
 004FA623    mov         eax,dword ptr [ebp-4]
 004FA626    mov         dword ptr [eax+7C],7A868A;TXPColorMap.FFrameTopLeftOuter:TColor
 004FA62D    mov         eax,dword ptr [ebp-4]
 004FA630    mov         dword ptr [eax+80],0FFFFFF;TXPColorMap.FFrameBottomRightInner:TColor
 004FA63A    mov         eax,dword ptr [ebp-4]
 004FA63D    mov         dword ptr [eax+84],7A868A;TXPColorMap.FFrameBottomRightOuter:TColor
 004FA647    mov         edx,0F
 004FA64C    mov         eax,0FF00000F
 004FA651    call        004F8F98
 004FA656    mov         edx,dword ptr [ebp-4]
 004FA659    mov         dword ptr [edx+6C],eax;TXPColorMap.FHighlightColor:TColor
 004FA65C    mov         eax,dword ptr [ebp-4]
 004FA65F    mov         dword ptr [eax+54],20000000;TXPColorMap.FHotColor:TColor
 004FA666    mov         eax,dword ptr [ebp-4]
 004FA669    mov         dword ptr [eax+5C],20000000;TXPColorMap.FHotFontColor:TColor
 004FA670    mov         eax,dword ptr [ebp-4]
 004FA673    mov         dword ptr [eax+68],0EFD3C6;TXPColorMap.FSelectedColor:TColor
 004FA67A    mov         eax,dword ptr [ebp-4]
 004FA67D    xor         edx,edx
 004FA67F    mov         dword ptr [eax+64],edx;TXPColorMap.FSelectedFontColor:TColor
 004FA682    mov         eax,dword ptr [ebp-4]
 004FA685    mov         dword ptr [eax+58],0FF000015;TXPColorMap.FShadowColor:TColor
 004FA68C    mov         edx,0F
 004FA691    mov         eax,0FF00000F
 004FA696    call        004F8F98
 004FA69B    mov         edx,dword ptr [ebp-4]
 004FA69E    mov         dword ptr [edx+60],eax;TXPColorMap.FUnusedColor:TColor
 004FA6A1    pop         ecx
 004FA6A2    pop         ebp
 004FA6A3    ret
*}
end;

end.