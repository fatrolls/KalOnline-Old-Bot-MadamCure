//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit _Unit24;

interface

uses
  SysUtils, Classes;

    function InitCommonControls:Boolean;//0042F26C
    procedure sub_0042F274;//0042F274
    //function sub_0042F2D8(?:?):?;//0042F2D8
    function ImageList_Create(CY:Integer; Flags:UINT; Initial:Integer; Grow:Integer):THandle; stdcall;//0042F31C
    function ImageList_Destroy:BOOL; stdcall;//0042F324
    function ImageList_GetImageCount:Integer; stdcall;//0042F32C
    function ImageList_Add(Image:HBITMAP; Mask:HBITMAP):Integer; stdcall;//0042F334
    function ImageList_ReplaceIcon(Index:Integer; Icon:HICON):Integer; stdcall;//0042F33C
    function ImageList_SetBkColor(ClrBk:TColorRef):TColorRef; stdcall;//0042F344
    function ImageList_GetBkColor:TColorRef; stdcall;//0042F34C
    //function sub_0042F354(?:THandle; ?:?):?;//0042F354
    //function sub_0042F37C(?:?):?;//0042F37C
    function ImageList_Draw(Index:Integer; Dest:HDC; X:Integer; Y:Integer; Style:UINT):BOOL; stdcall;//0042F398
    function ImageList_Replace(Index:Integer; Image:HBITMAP; Mask:HBITMAP):BOOL; stdcall;//0042F3A0
    function ImageList_DrawEx(Index:Integer; Dest:HDC; X:Integer; Y:Integer; DX:Integer; DY:Integer; Bk:TColorRef; Fg:TColorRef; Style:Cardinal):BOOL; stdcall;//0042F3A8
    function ImageList_Remove(Index:Integer):BOOL; stdcall;//0042F3B0
    function ImageList_BeginDrag(Track:Integer; XHotSpot:Integer; YHotSpot:Integer):BOOL; stdcall;//0042F3B8
    function ImageList_EndDrag:BOOL;//0042F3C0
    function ImageList_DragEnter(X:Integer; Y:Integer):BOOL; stdcall;//0042F3C8
    function ImageList_DragLeave:BOOL; stdcall;//0042F3D0
    function ImageList_DragMove(Y:Integer):BOOL; stdcall;//0042F3D8
    function ImageList_SetDragCursorImage(Drag:Integer; XHotSpot:Integer; YHotSpot:Integer):BOOL; stdcall;//0042F3E0
    function ImageList_DragShowNolock:BOOL; stdcall;//0042F3E8
    function ImageList_GetDragImage(HotSpot:PPoint):THandle; stdcall;//0042F3F0
    function ImageList_Read:THandle; stdcall;//0042F3F8
    function ImageList_Write(Stream:IStream):BOOL; stdcall;//0042F400
    function ImageList_GetIconSize(var CX:Integer; var CY:Integer):BOOL; stdcall;//0042F408
    function ImageList_SetIconSize(CX:Integer; CY:Integer):BOOL; stdcall;//0042F410
    //function sub_0042F418(?:HWND; ?:?):?;//0042F418
    //function sub_0042F444(?:HWND; ?:?; ?:?):?;//0042F444
    //function sub_0042F474(?:?):?;//0042F474
    //function sub_0042F49C(?:?):?;//0042F49C
    //function sub_0042F4B8(?:?; ?:Byte):?;//0042F4B8
    //function sub_0042F4E4(?:?; ?:?):?;//0042F4E4
    //function sub_0042F510(?:?; ?:?):?;//0042F510
    //function sub_0042F53C(?:?; ?:?):?;//0042F53C
    //function sub_0042F568(?:?):?;//0042F568
    //function sub_0042F590(?:HWND; ?:?; ?:?):?;//0042F590
    //function sub_0042F5C8(?:HWND; ?:?; ?:?):?;//0042F5C8
    //function sub_0042F5F8(?:?; ?:?; ?:?; ?:?):?;//0042F5F8
    //function sub_0042F654(?:HWND; ?:?):?;//0042F654
    //function sub_0042F680(?:HWND; ?:?; ?:?):?;//0042F680
    //function sub_0042F6B0(?:HWND; ?:?):?;//0042F6B0
    //function sub_0042F6DC(?:HWND):?;//0042F6DC
    //function sub_0042F704(?:HWND; ?:?; ?:?):?;//0042F704
    //function sub_0042F734(?:HWND; ?:?; ?:?):?;//0042F734
    //function sub_0042F764(?:HWND; ?:?):?;//0042F764
    //function sub_0042F790(?:HWND; ?:?):?;//0042F790
    //function sub_0042F7BC(?:HWND; ?:?; ?:?):?;//0042F7BC
    //function sub_0042F7F4(?:HWND; ?:?; ?:?):?;//0042F7F4
    //function sub_0042F824(?:HWND; ?:?):?;//0042F824
    //function sub_0042F850(?:HWND; ?:?):?;//0042F850
    //function sub_0042F87C(?:HWND):?;//0042F87C
    //function sub_0042F8A4(?:HWND; ?:?):?;//0042F8A4
    //function sub_0042F8D0(?:?; ?:?):?;//0042F8D0
    //function sub_0042F904(?:?; ?:?; ?:?; ?:?):?;//0042F904
    //function sub_0042F944(?:?; ?:?; ?:?):?;//0042F944
    //function sub_0042F974(?:HWND; ?:?):?;//0042F974
    //procedure sub_0042F9A8(?:HWND; ?:?; ?:?);//0042F9A8
    //function sub_0042F9E8(?:?; ?:?; ?:?; ?:?):?;//0042F9E8
    procedure sub_0042FA28(?:HWND; ?:Integer);//0042FA28
    //procedure sub_0042FA4C(?:?; ?:?; ?:?);//0042FA4C
    //function sub_0042FA78(?:HWND; ?:?; ?:?):?;//0042FA78
    //function sub_0042FAA8(?:HWND):?;//0042FAA8
    //function sub_0042FAD0(?:HWND; ?:?):?;//0042FAD0
    //function sub_0042FAFC(?:HWND; ?:?; ?:?):?;//0042FAFC
    //function sub_0042FB5C(?:HWND; ?:?; ?:?):?;//0042FB5C
    //function sub_0042FB8C(?:HWND; ?:Integer):?;//0042FB8C
    //function sub_0042FBB8(?:HWND):?;//0042FBB8

implementation

//0042F26C
function comctl32.InitCommonControls:Boolean;
begin
{*
 0042F26C    jmp         dword ptr ds:[55FA90]
*}
end;

//0042F274
procedure sub_0042F274;
begin
{*
 0042F274    push        ebp
 0042F275    mov         ebp,esp
 0042F277    cmp         dword ptr ds:[55D800],0;gvar_0055D800:HMODULE
>0042F27E    jne         0042F2AD
 0042F280    push        42F2B0;'comctl32.dll'
 0042F285    call        kernel32.GetModuleHandleA
 0042F28A    mov         [0055D800],eax;gvar_0055D800:HMODULE
 0042F28F    cmp         dword ptr ds:[55D800],0;gvar_0055D800:HMODULE
>0042F296    je          0042F2AD
 0042F298    push        42F2C0;'InitCommonControlsEx'
 0042F29D    mov         eax,[0055D800];gvar_0055D800:HMODULE
 0042F2A2    push        eax
 0042F2A3    call        kernel32.GetProcAddress
 0042F2A8    mov         [0055D804],eax;gvar_0055D804:Pointer
 0042F2AD    pop         ebp
 0042F2AE    ret
*}
end;

//0042F2D8
{*function sub_0042F2D8(?:?):?;
begin
 0042F2D8    push        ebp
 0042F2D9    mov         ebp,esp
 0042F2DB    add         esp,0FFFFFFF8
 0042F2DE    mov         dword ptr [ebp-4],eax
 0042F2E1    cmp         dword ptr ds:[55D800],0;gvar_0055D800:HMODULE
>0042F2E8    jne         0042F2EF
 0042F2EA    call        0042F274
 0042F2EF    cmp         dword ptr ds:[55D804],0;gvar_0055D804:Pointer
>0042F2F6    je          0042F306
 0042F2F8    mov         eax,dword ptr [ebp-4]
 0042F2FB    push        eax
 0042F2FC    call        dword ptr ds:[55D804]
 0042F302    test        eax,eax
>0042F304    jne         0042F30A
 0042F306    xor         eax,eax
>0042F308    jmp         0042F30C
 0042F30A    mov         al,1
 0042F30C    neg         al
 0042F30E    sbb         eax,eax
 0042F310    mov         dword ptr [ebp-8],eax
 0042F313    mov         eax,dword ptr [ebp-8]
 0042F316    pop         ecx
 0042F317    pop         ecx
 0042F318    pop         ebp
 0042F319    ret
end;*}

//0042F31C
function comctl32.ImageList_Create(CY:Integer; Flags:UINT; Initial:Integer; Grow:Integer):THandle; stdcall;
begin
{*
 0042F31C    jmp         dword ptr ds:[55FA8C]
*}
end;

//0042F324
function comctl32.ImageList_Destroy:BOOL; stdcall;
begin
{*
 0042F324    jmp         dword ptr ds:[55FA88]
*}
end;

//0042F32C
function comctl32.ImageList_GetImageCount:Integer; stdcall;
begin
{*
 0042F32C    jmp         dword ptr ds:[55FA84]
*}
end;

//0042F334
function comctl32.ImageList_Add(Image:HBITMAP; Mask:HBITMAP):Integer; stdcall;
begin
{*
 0042F334    jmp         dword ptr ds:[55FA80]
*}
end;

//0042F33C
function comctl32.ImageList_ReplaceIcon(Index:Integer; Icon:HICON):Integer; stdcall;
begin
{*
 0042F33C    jmp         dword ptr ds:[55FA7C]
*}
end;

//0042F344
function comctl32.ImageList_SetBkColor(ClrBk:TColorRef):TColorRef; stdcall;
begin
{*
 0042F344    jmp         dword ptr ds:[55FA78]
*}
end;

//0042F34C
function comctl32.ImageList_GetBkColor:TColorRef; stdcall;
begin
{*
 0042F34C    jmp         dword ptr ds:[55FA74]
*}
end;

//0042F354
{*function sub_0042F354(?:THandle; ?:?):?;
begin
 0042F354    push        ebp
 0042F355    mov         ebp,esp
 0042F357    add         esp,0FFFFFFF4
 0042F35A    mov         dword ptr [ebp-8],edx
 0042F35D    mov         dword ptr [ebp-4],eax
 0042F360    mov         eax,dword ptr [ebp-8]
 0042F363    push        eax
 0042F364    push        0FF
 0042F366    mov         eax,dword ptr [ebp-4]
 0042F369    push        eax
 0042F36A    call        comctl32.ImageList_ReplaceIcon
 0042F36F    mov         dword ptr [ebp-0C],eax
 0042F372    mov         eax,dword ptr [ebp-0C]
 0042F375    mov         esp,ebp
 0042F377    pop         ebp
 0042F378    ret
end;*}

//0042F37C
{*function sub_0042F37C(?:?):?;
begin
 0042F37C    push        ebp
 0042F37D    mov         ebp,esp
 0042F37F    add         esp,0FFFFFFF8
 0042F382    mov         dword ptr [ebp-4],eax
 0042F385    mov         eax,dword ptr [ebp-4]
 0042F388    shl         eax,8
 0042F38B    mov         dword ptr [ebp-8],eax
 0042F38E    mov         eax,dword ptr [ebp-8]
 0042F391    pop         ecx
 0042F392    pop         ecx
 0042F393    pop         ebp
 0042F394    ret
end;*}

//0042F398
function comctl32.ImageList_Draw(Index:Integer; Dest:HDC; X:Integer; Y:Integer; Style:UINT):BOOL; stdcall;
begin
{*
 0042F398    jmp         dword ptr ds:[55FA70]
*}
end;

//0042F3A0
function comctl32.ImageList_Replace(Index:Integer; Image:HBITMAP; Mask:HBITMAP):BOOL; stdcall;
begin
{*
 0042F3A0    jmp         dword ptr ds:[55FA6C]
*}
end;

//0042F3A8
function comctl32.ImageList_DrawEx(Index:Integer; Dest:HDC; X:Integer; Y:Integer; DX:Integer; DY:Integer; Bk:TColorRef; Fg:TColorRef; Style:Cardinal):BOOL; stdcall;
begin
{*
 0042F3A8    jmp         dword ptr ds:[55FA68]
*}
end;

//0042F3B0
function comctl32.ImageList_Remove(Index:Integer):BOOL; stdcall;
begin
{*
 0042F3B0    jmp         dword ptr ds:[55FA64]
*}
end;

//0042F3B8
function comctl32.ImageList_BeginDrag(Track:Integer; XHotSpot:Integer; YHotSpot:Integer):BOOL; stdcall;
begin
{*
 0042F3B8    jmp         dword ptr ds:[55FA60]
*}
end;

//0042F3C0
function comctl32.ImageList_EndDrag:BOOL;
begin
{*
 0042F3C0    jmp         dword ptr ds:[55FA5C]
*}
end;

//0042F3C8
function comctl32.ImageList_DragEnter(X:Integer; Y:Integer):BOOL; stdcall;
begin
{*
 0042F3C8    jmp         dword ptr ds:[55FA58]
*}
end;

//0042F3D0
function comctl32.ImageList_DragLeave:BOOL; stdcall;
begin
{*
 0042F3D0    jmp         dword ptr ds:[55FA54]
*}
end;

//0042F3D8
function comctl32.ImageList_DragMove(Y:Integer):BOOL; stdcall;
begin
{*
 0042F3D8    jmp         dword ptr ds:[55FA50]
*}
end;

//0042F3E0
function comctl32.ImageList_SetDragCursorImage(Drag:Integer; XHotSpot:Integer; YHotSpot:Integer):BOOL; stdcall;
begin
{*
 0042F3E0    jmp         dword ptr ds:[55FA4C]
*}
end;

//0042F3E8
function comctl32.ImageList_DragShowNolock:BOOL; stdcall;
begin
{*
 0042F3E8    jmp         dword ptr ds:[55FA48]
*}
end;

//0042F3F0
function comctl32.ImageList_GetDragImage(HotSpot:PPoint):THandle; stdcall;
begin
{*
 0042F3F0    jmp         dword ptr ds:[55FA44]
*}
end;

//0042F3F8
function comctl32.ImageList_Read:THandle; stdcall;
begin
{*
 0042F3F8    jmp         dword ptr ds:[55FA40]
*}
end;

//0042F400
function comctl32.ImageList_Write(Stream:IStream):BOOL; stdcall;
begin
{*
 0042F400    jmp         dword ptr ds:[55FA3C]
*}
end;

//0042F408
function comctl32.ImageList_GetIconSize(var CX:Integer; var CY:Integer):BOOL; stdcall;
begin
{*
 0042F408    jmp         dword ptr ds:[55FA38]
*}
end;

//0042F410
function comctl32.ImageList_SetIconSize(CX:Integer; CY:Integer):BOOL; stdcall;
begin
{*
 0042F410    jmp         dword ptr ds:[55FA34]
*}
end;

//0042F418
{*function sub_0042F418(?:HWND; ?:?):?;
begin
 0042F418    push        ebp
 0042F419    mov         ebp,esp
 0042F41B    add         esp,0FFFFFFF4
 0042F41E    mov         dword ptr [ebp-8],edx
 0042F421    mov         dword ptr [ebp-4],eax
 0042F424    mov         eax,dword ptr [ebp-8]
 0042F427    push        eax
 0042F428    push        0
 0042F42A    push        1001
 0042F42F    mov         eax,dword ptr [ebp-4]
 0042F432    push        eax
 0042F433    call        user32.SendMessageA
 0042F438    mov         dword ptr [ebp-0C],eax
 0042F43B    mov         eax,dword ptr [ebp-0C]
 0042F43E    mov         esp,ebp
 0042F440    pop         ebp
 0042F441    ret
end;*}

//0042F444
{*function sub_0042F444(?:HWND; ?:?; ?:?):?;
begin
 0042F444    push        ebp
 0042F445    mov         ebp,esp
 0042F447    add         esp,0FFFFFFF0
 0042F44A    mov         dword ptr [ebp-0C],ecx
 0042F44D    mov         dword ptr [ebp-8],edx
 0042F450    mov         dword ptr [ebp-4],eax
 0042F453    mov         eax,dword ptr [ebp-8]
 0042F456    push        eax
 0042F457    mov         eax,dword ptr [ebp-0C]
 0042F45A    push        eax
 0042F45B    push        1003
 0042F460    mov         eax,dword ptr [ebp-4]
 0042F463    push        eax
 0042F464    call        user32.SendMessageA
 0042F469    mov         dword ptr [ebp-10],eax
 0042F46C    mov         eax,dword ptr [ebp-10]
 0042F46F    mov         esp,ebp
 0042F471    pop         ebp
 0042F472    ret
end;*}

//0042F474
{*function sub_0042F474(?:?):?;
begin
 0042F474    push        ebp
 0042F475    mov         ebp,esp
 0042F477    add         esp,0FFFFFFF8
 0042F47A    mov         dword ptr [ebp-4],eax
 0042F47D    push        0
 0042F47F    push        0
 0042F481    push        1004
 0042F486    mov         eax,dword ptr [ebp-4]
 0042F489    push        eax
 0042F48A    call        user32.SendMessageA
 0042F48F    mov         dword ptr [ebp-8],eax
 0042F492    mov         eax,dword ptr [ebp-8]
 0042F495    pop         ecx
 0042F496    pop         ecx
 0042F497    pop         ebp
 0042F498    ret
end;*}

//0042F49C
{*function sub_0042F49C(?:?):?;
begin
 0042F49C    push        ebp
 0042F49D    mov         ebp,esp
 0042F49F    add         esp,0FFFFFFF8
 0042F4A2    mov         dword ptr [ebp-4],eax
 0042F4A5    mov         eax,dword ptr [ebp-4]
 0042F4A8    shl         eax,0C
 0042F4AB    mov         dword ptr [ebp-8],eax
 0042F4AE    mov         eax,dword ptr [ebp-8]
 0042F4B1    pop         ecx
 0042F4B2    pop         ecx
 0042F4B3    pop         ebp
 0042F4B4    ret
end;*}

//0042F4B8
{*function sub_0042F4B8(?:?; ?:Byte):?;
begin
 0042F4B8    push        ebp
 0042F4B9    mov         ebp,esp
 0042F4BB    add         esp,0FFFFFFF4
 0042F4BE    mov         dword ptr [ebp-8],edx
 0042F4C1    mov         dword ptr [ebp-4],eax
 0042F4C4    mov         eax,dword ptr [ebp-8]
 0042F4C7    push        eax
 0042F4C8    push        0
 0042F4CA    push        1005
 0042F4CF    mov         eax,dword ptr [ebp-4]
 0042F4D2    push        eax
 0042F4D3    call        user32.SendMessageA
 0042F4D8    mov         dword ptr [ebp-0C],eax
 0042F4DB    mov         eax,dword ptr [ebp-0C]
 0042F4DE    mov         esp,ebp
 0042F4E0    pop         ebp
 0042F4E1    ret
end;*}

//0042F4E4
{*function sub_0042F4E4(?:?; ?:?):?;
begin
 0042F4E4    push        ebp
 0042F4E5    mov         ebp,esp
 0042F4E7    add         esp,0FFFFFFF4
 0042F4EA    mov         dword ptr [ebp-8],edx
 0042F4ED    mov         dword ptr [ebp-4],eax
 0042F4F0    mov         eax,dword ptr [ebp-8]
 0042F4F3    push        eax
 0042F4F4    push        0
 0042F4F6    push        1006
 0042F4FB    mov         eax,dword ptr [ebp-4]
 0042F4FE    push        eax
 0042F4FF    call        user32.SendMessageA
 0042F504    mov         dword ptr [ebp-0C],eax
 0042F507    mov         eax,dword ptr [ebp-0C]
 0042F50A    mov         esp,ebp
 0042F50C    pop         ebp
 0042F50D    ret
end;*}

//0042F510
{*function sub_0042F510(?:?; ?:?):?;
begin
 0042F510    push        ebp
 0042F511    mov         ebp,esp
 0042F513    add         esp,0FFFFFFF4
 0042F516    mov         dword ptr [ebp-8],edx
 0042F519    mov         dword ptr [ebp-4],eax
 0042F51C    mov         eax,dword ptr [ebp-8]
 0042F51F    push        eax
 0042F520    push        0
 0042F522    push        1007
 0042F527    mov         eax,dword ptr [ebp-4]
 0042F52A    push        eax
 0042F52B    call        user32.SendMessageA
 0042F530    mov         dword ptr [ebp-0C],eax
 0042F533    mov         eax,dword ptr [ebp-0C]
 0042F536    mov         esp,ebp
 0042F538    pop         ebp
 0042F539    ret
end;*}

//0042F53C
{*function sub_0042F53C(?:?; ?:?):?;
begin
 0042F53C    push        ebp
 0042F53D    mov         ebp,esp
 0042F53F    add         esp,0FFFFFFF4
 0042F542    mov         dword ptr [ebp-8],edx
 0042F545    mov         dword ptr [ebp-4],eax
 0042F548    push        0
 0042F54A    mov         eax,dword ptr [ebp-8]
 0042F54D    push        eax
 0042F54E    push        1008
 0042F553    mov         eax,dword ptr [ebp-4]
 0042F556    push        eax
 0042F557    call        user32.SendMessageA
 0042F55C    mov         dword ptr [ebp-0C],eax
 0042F55F    mov         eax,dword ptr [ebp-0C]
 0042F562    mov         esp,ebp
 0042F564    pop         ebp
 0042F565    ret
end;*}

//0042F568
{*function sub_0042F568(?:?):?;
begin
 0042F568    push        ebp
 0042F569    mov         ebp,esp
 0042F56B    add         esp,0FFFFFFF8
 0042F56E    mov         dword ptr [ebp-4],eax
 0042F571    push        0
 0042F573    push        0
 0042F575    push        1009
 0042F57A    mov         eax,dword ptr [ebp-4]
 0042F57D    push        eax
 0042F57E    call        user32.SendMessageA
 0042F583    mov         dword ptr [ebp-8],eax
 0042F586    mov         eax,dword ptr [ebp-8]
 0042F589    pop         ecx
 0042F58A    pop         ecx
 0042F58B    pop         ebp
 0042F58C    ret
end;*}

//0042F590
{*function sub_0042F590(?:HWND; ?:?; ?:?):?;
begin
 0042F590    push        ebp
 0042F591    mov         ebp,esp
 0042F593    add         esp,0FFFFFFF0
 0042F596    mov         dword ptr [ebp-0C],ecx
 0042F599    mov         dword ptr [ebp-8],edx
 0042F59C    mov         dword ptr [ebp-4],eax
 0042F59F    xor         edx,edx
 0042F5A1    mov         ax,word ptr [ebp-0C]
 0042F5A5    call        004080B4
 0042F5AA    push        eax
 0042F5AB    mov         eax,dword ptr [ebp-8]
 0042F5AE    push        eax
 0042F5AF    push        100C
 0042F5B4    mov         eax,dword ptr [ebp-4]
 0042F5B7    push        eax
 0042F5B8    call        user32.SendMessageA
 0042F5BD    mov         dword ptr [ebp-10],eax
 0042F5C0    mov         eax,dword ptr [ebp-10]
 0042F5C3    mov         esp,ebp
 0042F5C5    pop         ebp
 0042F5C6    ret
end;*}

//0042F5C8
{*function sub_0042F5C8(?:HWND; ?:?; ?:?):?;
begin
 0042F5C8    push        ebp
 0042F5C9    mov         ebp,esp
 0042F5CB    add         esp,0FFFFFFF0
 0042F5CE    mov         dword ptr [ebp-0C],ecx
 0042F5D1    mov         dword ptr [ebp-8],edx
 0042F5D4    mov         dword ptr [ebp-4],eax
 0042F5D7    mov         eax,dword ptr [ebp-0C]
 0042F5DA    push        eax
 0042F5DB    mov         eax,dword ptr [ebp-8]
 0042F5DE    push        eax
 0042F5DF    push        100D
 0042F5E4    mov         eax,dword ptr [ebp-4]
 0042F5E7    push        eax
 0042F5E8    call        user32.SendMessageA
 0042F5ED    mov         dword ptr [ebp-10],eax
 0042F5F0    mov         eax,dword ptr [ebp-10]
 0042F5F3    mov         esp,ebp
 0042F5F5    pop         ebp
 0042F5F6    ret
end;*}

//0042F5F8
{*function sub_0042F5F8(?:?; ?:?; ?:?; ?:?):?;
begin
 0042F5F8    push        ebp
 0042F5F9    mov         ebp,esp
 0042F5FB    add         esp,0FFFFFFF0
 0042F5FE    mov         dword ptr [ebp-0C],ecx
 0042F601    mov         dword ptr [ebp-8],edx
 0042F604    mov         dword ptr [ebp-4],eax
 0042F607    mov         eax,dword ptr [ebp-0C]
 0042F60A    test        eax,eax
>0042F60C    je          0042F631
 0042F60E    mov         eax,dword ptr [ebp-0C]
 0042F611    mov         edx,dword ptr [ebp+8]
 0042F614    mov         dword ptr [eax],edx
 0042F616    mov         eax,dword ptr [ebp-0C]
 0042F619    push        eax
 0042F61A    mov         eax,dword ptr [ebp-8]
 0042F61D    push        eax
 0042F61E    push        100E
 0042F623    mov         eax,dword ptr [ebp-4]
 0042F626    push        eax
 0042F627    call        user32.SendMessageA
 0042F62C    mov         dword ptr [ebp-10],eax
>0042F62F    jmp         0042F648
 0042F631    push        0
 0042F633    mov         eax,dword ptr [ebp-8]
 0042F636    push        eax
 0042F637    push        100E
 0042F63C    mov         eax,dword ptr [ebp-4]
 0042F63F    push        eax
 0042F640    call        user32.SendMessageA
 0042F645    mov         dword ptr [ebp-10],eax
 0042F648    mov         eax,dword ptr [ebp-10]
 0042F64B    mov         esp,ebp
 0042F64D    pop         ebp
 0042F64E    ret         4
end;*}

//0042F654
{*function sub_0042F654(?:HWND; ?:?):?;
begin
 0042F654    push        ebp
 0042F655    mov         ebp,esp
 0042F657    add         esp,0FFFFFFF4
 0042F65A    mov         dword ptr [ebp-8],edx
 0042F65D    mov         dword ptr [ebp-4],eax
 0042F660    mov         eax,dword ptr [ebp-8]
 0042F663    push        eax
 0042F664    push        0
 0042F666    push        1012
 0042F66B    mov         eax,dword ptr [ebp-4]
 0042F66E    push        eax
 0042F66F    call        user32.SendMessageA
 0042F674    mov         dword ptr [ebp-0C],eax
 0042F677    mov         eax,dword ptr [ebp-0C]
 0042F67A    mov         esp,ebp
 0042F67C    pop         ebp
 0042F67D    ret
end;*}

//0042F680
{*function sub_0042F680(?:HWND; ?:?; ?:?):?;
begin
 0042F680    push        ebp
 0042F681    mov         ebp,esp
 0042F683    add         esp,0FFFFFFF0
 0042F686    mov         dword ptr [ebp-0C],ecx
 0042F689    mov         dword ptr [ebp-8],edx
 0042F68C    mov         dword ptr [ebp-4],eax
 0042F68F    mov         eax,dword ptr [ebp-0C]
 0042F692    push        eax
 0042F693    mov         eax,dword ptr [ebp-8]
 0042F696    push        eax
 0042F697    push        1015
 0042F69C    mov         eax,dword ptr [ebp-4]
 0042F69F    push        eax
 0042F6A0    call        user32.SendMessageA
 0042F6A5    mov         dword ptr [ebp-10],eax
 0042F6A8    mov         eax,dword ptr [ebp-10]
 0042F6AB    mov         esp,ebp
 0042F6AD    pop         ebp
 0042F6AE    ret
end;*}

//0042F6B0
{*function sub_0042F6B0(?:HWND; ?:?):?;
begin
 0042F6B0    push        ebp
 0042F6B1    mov         ebp,esp
 0042F6B3    add         esp,0FFFFFFF4
 0042F6B6    mov         dword ptr [ebp-8],edx
 0042F6B9    mov         dword ptr [ebp-4],eax
 0042F6BC    push        0
 0042F6BE    mov         eax,dword ptr [ebp-8]
 0042F6C1    push        eax
 0042F6C2    push        1016
 0042F6C7    mov         eax,dword ptr [ebp-4]
 0042F6CA    push        eax
 0042F6CB    call        user32.SendMessageA
 0042F6D0    mov         dword ptr [ebp-0C],eax
 0042F6D3    mov         eax,dword ptr [ebp-0C]
 0042F6D6    mov         esp,ebp
 0042F6D8    pop         ebp
 0042F6D9    ret
end;*}

//0042F6DC
{*function sub_0042F6DC(?:HWND):?;
begin
 0042F6DC    push        ebp
 0042F6DD    mov         ebp,esp
 0042F6DF    add         esp,0FFFFFFF8
 0042F6E2    mov         dword ptr [ebp-4],eax
 0042F6E5    push        0
 0042F6E7    push        0
 0042F6E9    push        1018
 0042F6EE    mov         eax,dword ptr [ebp-4]
 0042F6F1    push        eax
 0042F6F2    call        user32.SendMessageA
 0042F6F7    mov         dword ptr [ebp-8],eax
 0042F6FA    mov         eax,dword ptr [ebp-8]
 0042F6FD    pop         ecx
 0042F6FE    pop         ecx
 0042F6FF    pop         ebp
 0042F700    ret
end;*}

//0042F704
{*function sub_0042F704(?:HWND; ?:?; ?:?):?;
begin
 0042F704    push        ebp
 0042F705    mov         ebp,esp
 0042F707    add         esp,0FFFFFFF0
 0042F70A    mov         dword ptr [ebp-0C],ecx
 0042F70D    mov         dword ptr [ebp-8],edx
 0042F710    mov         dword ptr [ebp-4],eax
 0042F713    mov         eax,dword ptr [ebp-0C]
 0042F716    push        eax
 0042F717    mov         eax,dword ptr [ebp-8]
 0042F71A    push        eax
 0042F71B    push        101A
 0042F720    mov         eax,dword ptr [ebp-4]
 0042F723    push        eax
 0042F724    call        user32.SendMessageA
 0042F729    mov         dword ptr [ebp-10],eax
 0042F72C    mov         eax,dword ptr [ebp-10]
 0042F72F    mov         esp,ebp
 0042F731    pop         ebp
 0042F732    ret
end;*}

//0042F734
{*function sub_0042F734(?:HWND; ?:?; ?:?):?;
begin
 0042F734    push        ebp
 0042F735    mov         ebp,esp
 0042F737    add         esp,0FFFFFFF0
 0042F73A    mov         dword ptr [ebp-0C],ecx
 0042F73D    mov         dword ptr [ebp-8],edx
 0042F740    mov         dword ptr [ebp-4],eax
 0042F743    mov         eax,dword ptr [ebp-0C]
 0042F746    push        eax
 0042F747    mov         eax,dword ptr [ebp-8]
 0042F74A    push        eax
 0042F74B    push        101B
 0042F750    mov         eax,dword ptr [ebp-4]
 0042F753    push        eax
 0042F754    call        user32.SendMessageA
 0042F759    mov         dword ptr [ebp-10],eax
 0042F75C    mov         eax,dword ptr [ebp-10]
 0042F75F    mov         esp,ebp
 0042F761    pop         ebp
 0042F762    ret
end;*}

//0042F764
{*function sub_0042F764(?:HWND; ?:?):?;
begin
 0042F764    push        ebp
 0042F765    mov         ebp,esp
 0042F767    add         esp,0FFFFFFF4
 0042F76A    mov         dword ptr [ebp-8],edx
 0042F76D    mov         dword ptr [ebp-4],eax
 0042F770    push        0
 0042F772    mov         eax,dword ptr [ebp-8]
 0042F775    push        eax
 0042F776    push        101C
 0042F77B    mov         eax,dword ptr [ebp-4]
 0042F77E    push        eax
 0042F77F    call        user32.SendMessageA
 0042F784    mov         dword ptr [ebp-0C],eax
 0042F787    mov         eax,dword ptr [ebp-0C]
 0042F78A    mov         esp,ebp
 0042F78C    pop         ebp
 0042F78D    ret
end;*}

//0042F790
{*function sub_0042F790(?:HWND; ?:?):?;
begin
 0042F790    push        ebp
 0042F791    mov         ebp,esp
 0042F793    add         esp,0FFFFFFF4
 0042F796    mov         dword ptr [ebp-8],edx
 0042F799    mov         dword ptr [ebp-4],eax
 0042F79C    push        0
 0042F79E    mov         eax,dword ptr [ebp-8]
 0042F7A1    push        eax
 0042F7A2    push        101D
 0042F7A7    mov         eax,dword ptr [ebp-4]
 0042F7AA    push        eax
 0042F7AB    call        user32.SendMessageA
 0042F7B0    mov         dword ptr [ebp-0C],eax
 0042F7B3    mov         eax,dword ptr [ebp-0C]
 0042F7B6    mov         esp,ebp
 0042F7B8    pop         ebp
 0042F7B9    ret
end;*}

//0042F7BC
{*function sub_0042F7BC(?:HWND; ?:?; ?:?):?;
begin
 0042F7BC    push        ebp
 0042F7BD    mov         ebp,esp
 0042F7BF    add         esp,0FFFFFFF0
 0042F7C2    mov         dword ptr [ebp-0C],ecx
 0042F7C5    mov         dword ptr [ebp-8],edx
 0042F7C8    mov         dword ptr [ebp-4],eax
 0042F7CB    xor         edx,edx
 0042F7CD    mov         ax,word ptr [ebp-0C]
 0042F7D1    call        004080B4
 0042F7D6    push        eax
 0042F7D7    mov         eax,dword ptr [ebp-8]
 0042F7DA    push        eax
 0042F7DB    push        101E
 0042F7E0    mov         eax,dword ptr [ebp-4]
 0042F7E3    push        eax
 0042F7E4    call        user32.SendMessageA
 0042F7E9    mov         dword ptr [ebp-10],eax
 0042F7EC    mov         eax,dword ptr [ebp-10]
 0042F7EF    mov         esp,ebp
 0042F7F1    pop         ebp
 0042F7F2    ret
end;*}

//0042F7F4
{*function sub_0042F7F4(?:HWND; ?:?; ?:?):?;
begin
 0042F7F4    push        ebp
 0042F7F5    mov         ebp,esp
 0042F7F7    add         esp,0FFFFFFF0
 0042F7FA    mov         dword ptr [ebp-0C],ecx
 0042F7FD    mov         dword ptr [ebp-8],edx
 0042F800    mov         dword ptr [ebp-4],eax
 0042F803    mov         eax,dword ptr [ebp-0C]
 0042F806    push        eax
 0042F807    mov         eax,dword ptr [ebp-8]
 0042F80A    push        eax
 0042F80B    push        1021
 0042F810    mov         eax,dword ptr [ebp-4]
 0042F813    push        eax
 0042F814    call        user32.SendMessageA
 0042F819    mov         dword ptr [ebp-10],eax
 0042F81C    mov         eax,dword ptr [ebp-10]
 0042F81F    mov         esp,ebp
 0042F821    pop         ebp
 0042F822    ret
end;*}

//0042F824
{*function sub_0042F824(?:HWND; ?:?):?;
begin
 0042F824    push        ebp
 0042F825    mov         ebp,esp
 0042F827    add         esp,0FFFFFFF4
 0042F82A    mov         dword ptr [ebp-8],edx
 0042F82D    mov         dword ptr [ebp-4],eax
 0042F830    mov         eax,dword ptr [ebp-8]
 0042F833    push        eax
 0042F834    push        0
 0042F836    push        1024
 0042F83B    mov         eax,dword ptr [ebp-4]
 0042F83E    push        eax
 0042F83F    call        user32.SendMessageA
 0042F844    mov         dword ptr [ebp-0C],eax
 0042F847    mov         eax,dword ptr [ebp-0C]
 0042F84A    mov         esp,ebp
 0042F84C    pop         ebp
 0042F84D    ret
end;*}

//0042F850
{*function sub_0042F850(?:HWND; ?:?):?;
begin
 0042F850    push        ebp
 0042F851    mov         ebp,esp
 0042F853    add         esp,0FFFFFFF4
 0042F856    mov         dword ptr [ebp-8],edx
 0042F859    mov         dword ptr [ebp-4],eax
 0042F85C    mov         eax,dword ptr [ebp-8]
 0042F85F    push        eax
 0042F860    push        0
 0042F862    push        1026
 0042F867    mov         eax,dword ptr [ebp-4]
 0042F86A    push        eax
 0042F86B    call        user32.SendMessageA
 0042F870    mov         dword ptr [ebp-0C],eax
 0042F873    mov         eax,dword ptr [ebp-0C]
 0042F876    mov         esp,ebp
 0042F878    pop         ebp
 0042F879    ret
end;*}

//0042F87C
{*function sub_0042F87C(?:HWND):?;
begin
 0042F87C    push        ebp
 0042F87D    mov         ebp,esp
 0042F87F    add         esp,0FFFFFFF8
 0042F882    mov         dword ptr [ebp-4],eax
 0042F885    push        0
 0042F887    push        0
 0042F889    push        1027
 0042F88E    mov         eax,dword ptr [ebp-4]
 0042F891    push        eax
 0042F892    call        user32.SendMessageA
 0042F897    mov         dword ptr [ebp-8],eax
 0042F89A    mov         eax,dword ptr [ebp-8]
 0042F89D    pop         ecx
 0042F89E    pop         ecx
 0042F89F    pop         ebp
 0042F8A0    ret
end;*}

//0042F8A4
{*function sub_0042F8A4(?:HWND; ?:?):?;
begin
 0042F8A4    push        ebp
 0042F8A5    mov         ebp,esp
 0042F8A7    add         esp,0FFFFFFF4
 0042F8AA    mov         dword ptr [ebp-8],edx
 0042F8AD    mov         dword ptr [ebp-4],eax
 0042F8B0    mov         eax,dword ptr [ebp-8]
 0042F8B3    push        eax
 0042F8B4    push        0
 0042F8B6    push        1029
 0042F8BB    mov         eax,dword ptr [ebp-4]
 0042F8BE    push        eax
 0042F8BF    call        user32.SendMessageA
 0042F8C4    mov         dword ptr [ebp-0C],eax
 0042F8C7    mov         eax,dword ptr [ebp-0C]
 0042F8CA    mov         esp,ebp
 0042F8CC    pop         ebp
 0042F8CD    ret
end;*}

//0042F8D0
{*function sub_0042F8D0(?:?; ?:?):?;
begin
 0042F8D0    push        ebp
 0042F8D1    mov         ebp,esp
 0042F8D3    add         esp,0FFFFFFF4
 0042F8D6    mov         dword ptr [ebp-8],edx
 0042F8D9    mov         dword ptr [ebp-4],eax
 0042F8DC    push        0
 0042F8DE    mov         eax,dword ptr [ebp-8]
 0042F8E1    push        eax
 0042F8E2    push        102A
 0042F8E7    mov         eax,dword ptr [ebp-4]
 0042F8EA    push        eax
 0042F8EB    call        user32.SendMessageA
 0042F8F0    test        eax,eax
 0042F8F2    setne       al
 0042F8F5    neg         al
 0042F8F7    sbb         eax,eax
 0042F8F9    mov         dword ptr [ebp-0C],eax
 0042F8FC    mov         eax,dword ptr [ebp-0C]
 0042F8FF    mov         esp,ebp
 0042F901    pop         ebp
 0042F902    ret
end;*}

//0042F904
{*function sub_0042F904(?:?; ?:?; ?:?; ?:?):?;
begin
 0042F904    push        ebp
 0042F905    mov         ebp,esp
 0042F907    add         esp,0FFFFFFC8
 0042F90A    mov         dword ptr [ebp-0C],ecx
 0042F90D    mov         dword ptr [ebp-8],edx
 0042F910    mov         dword ptr [ebp-4],eax
 0042F913    mov         eax,dword ptr [ebp+8]
 0042F916    mov         dword ptr [ebp-28],eax
 0042F919    mov         eax,dword ptr [ebp-0C]
 0042F91C    mov         dword ptr [ebp-2C],eax
 0042F91F    lea         eax,[ebp-38]
 0042F922    push        eax
 0042F923    mov         eax,dword ptr [ebp-8]
 0042F926    push        eax
 0042F927    push        102B
 0042F92C    mov         eax,dword ptr [ebp-4]
 0042F92F    push        eax
 0042F930    call        user32.SendMessageA
 0042F935    mov         dword ptr [ebp-10],eax
 0042F938    mov         eax,dword ptr [ebp-10]
 0042F93B    mov         esp,ebp
 0042F93D    pop         ebp
 0042F93E    ret         4
end;*}

//0042F944
{*function sub_0042F944(?:?; ?:?; ?:?):?;
begin
 0042F944    push        ebp
 0042F945    mov         ebp,esp
 0042F947    add         esp,0FFFFFFF0
 0042F94A    mov         dword ptr [ebp-0C],ecx
 0042F94D    mov         dword ptr [ebp-8],edx
 0042F950    mov         dword ptr [ebp-4],eax
 0042F953    mov         eax,dword ptr [ebp-0C]
 0042F956    push        eax
 0042F957    mov         eax,dword ptr [ebp-8]
 0042F95A    push        eax
 0042F95B    push        102C
 0042F960    mov         eax,dword ptr [ebp-4]
 0042F963    push        eax
 0042F964    call        user32.SendMessageA
 0042F969    mov         dword ptr [ebp-10],eax
 0042F96C    mov         eax,dword ptr [ebp-10]
 0042F96F    mov         esp,ebp
 0042F971    pop         ebp
 0042F972    ret
end;*}

//0042F974
{*function sub_0042F974(?:HWND; ?:?):?;
begin
 0042F974    push        ebp
 0042F975    mov         ebp,esp
 0042F977    add         esp,0FFFFFFF4
 0042F97A    mov         dword ptr [ebp-8],edx
 0042F97D    mov         dword ptr [ebp-4],eax
 0042F980    push        0F000
 0042F985    mov         eax,dword ptr [ebp-8]
 0042F988    push        eax
 0042F989    push        102C
 0042F98E    mov         eax,dword ptr [ebp-4]
 0042F991    push        eax
 0042F992    call        user32.SendMessageA
 0042F997    shr         eax,0C
 0042F99A    dec         eax
 0042F99B    mov         dword ptr [ebp-0C],eax
 0042F99E    mov         eax,dword ptr [ebp-0C]
 0042F9A1    mov         esp,ebp
 0042F9A3    pop         ebp
 0042F9A4    ret
end;*}

//0042F9A8
{*procedure sub_0042F9A8(?:HWND; ?:?; ?:?);
begin
 0042F9A8    push        ebp
 0042F9A9    mov         ebp,esp
 0042F9AB    add         esp,0FFFFFFCC
 0042F9AE    mov         byte ptr [ebp-9],cl
 0042F9B1    mov         dword ptr [ebp-8],edx
 0042F9B4    mov         dword ptr [ebp-4],eax
 0042F9B7    mov         dword ptr [ebp-21],0F000
 0042F9BE    mov         al,byte ptr [ebp-9]
 0042F9C1    and         eax,1
 0042F9C4    inc         eax
 0042F9C5    shl         eax,0C
 0042F9C8    mov         dword ptr [ebp-25],eax
 0042F9CB    lea         eax,[ebp-31]
 0042F9CE    push        eax
 0042F9CF    mov         eax,dword ptr [ebp-8]
 0042F9D2    push        eax
 0042F9D3    push        102B
 0042F9D8    mov         eax,dword ptr [ebp-4]
 0042F9DB    push        eax
 0042F9DC    call        user32.SendMessageA
 0042F9E1    mov         esp,ebp
 0042F9E3    pop         ebp
 0042F9E4    ret
end;*}

//0042F9E8
{*function sub_0042F9E8(?:?; ?:?; ?:?; ?:?):?;
begin
 0042F9E8    push        ebp
 0042F9E9    mov         ebp,esp
 0042F9EB    add         esp,0FFFFFFC8
 0042F9EE    mov         dword ptr [ebp-0C],ecx
 0042F9F1    mov         dword ptr [ebp-8],edx
 0042F9F4    mov         dword ptr [ebp-4],eax
 0042F9F7    mov         eax,dword ptr [ebp-0C]
 0042F9FA    mov         dword ptr [ebp-30],eax
 0042F9FD    mov         eax,dword ptr [ebp+8]
 0042FA00    mov         dword ptr [ebp-24],eax
 0042FA03    lea         eax,[ebp-38]
 0042FA06    push        eax
 0042FA07    mov         eax,dword ptr [ebp-8]
 0042FA0A    push        eax
 0042FA0B    push        102E
 0042FA10    mov         eax,dword ptr [ebp-4]
 0042FA13    push        eax
 0042FA14    call        user32.SendMessageA
 0042FA19    mov         dword ptr [ebp-10],eax
 0042FA1C    mov         eax,dword ptr [ebp-10]
 0042FA1F    mov         esp,ebp
 0042FA21    pop         ebp
 0042FA22    ret         4
end;*}

//0042FA28
procedure sub_0042FA28(?:HWND; ?:Integer);
begin
{*
 0042FA28    push        ebp
 0042FA29    mov         ebp,esp
 0042FA2B    add         esp,0FFFFFFF8
 0042FA2E    mov         dword ptr [ebp-8],edx
 0042FA31    mov         dword ptr [ebp-4],eax
 0042FA34    push        0
 0042FA36    mov         eax,dword ptr [ebp-8]
 0042FA39    push        eax
 0042FA3A    push        102F
 0042FA3F    mov         eax,dword ptr [ebp-4]
 0042FA42    push        eax
 0042FA43    call        user32.SendMessageA
 0042FA48    pop         ecx
 0042FA49    pop         ecx
 0042FA4A    pop         ebp
 0042FA4B    ret
*}
end;

//0042FA4C
{*procedure sub_0042FA4C(?:?; ?:?; ?:?);
begin
 0042FA4C    push        ebp
 0042FA4D    mov         ebp,esp
 0042FA4F    add         esp,0FFFFFFF4
 0042FA52    mov         dword ptr [ebp-0C],ecx
 0042FA55    mov         dword ptr [ebp-8],edx
 0042FA58    mov         dword ptr [ebp-4],eax
 0042FA5B    mov         eax,dword ptr [ebp-0C]
 0042FA5E    push        eax
 0042FA5F    mov         eax,dword ptr [ebp-8]
 0042FA62    push        eax
 0042FA63    push        102F
 0042FA68    mov         eax,dword ptr [ebp-4]
 0042FA6B    push        eax
 0042FA6C    call        user32.SendMessageA
 0042FA71    mov         esp,ebp
 0042FA73    pop         ebp
 0042FA74    ret
end;*}

//0042FA78
{*function sub_0042FA78(?:HWND; ?:?; ?:?):?;
begin
 0042FA78    push        ebp
 0042FA79    mov         ebp,esp
 0042FA7B    add         esp,0FFFFFFF0
 0042FA7E    mov         dword ptr [ebp-0C],ecx
 0042FA81    mov         dword ptr [ebp-8],edx
 0042FA84    mov         dword ptr [ebp-4],eax
 0042FA87    mov         eax,dword ptr [ebp-8]
 0042FA8A    push        eax
 0042FA8B    mov         eax,dword ptr [ebp-0C]
 0042FA8E    push        eax
 0042FA8F    push        1030
 0042FA94    mov         eax,dword ptr [ebp-4]
 0042FA97    push        eax
 0042FA98    call        user32.SendMessageA
 0042FA9D    mov         dword ptr [ebp-10],eax
 0042FAA0    mov         eax,dword ptr [ebp-10]
 0042FAA3    mov         esp,ebp
 0042FAA5    pop         ebp
 0042FAA6    ret
end;*}

//0042FAA8
{*function sub_0042FAA8(?:HWND):?;
begin
 0042FAA8    push        ebp
 0042FAA9    mov         ebp,esp
 0042FAAB    add         esp,0FFFFFFF8
 0042FAAE    mov         dword ptr [ebp-4],eax
 0042FAB1    push        0
 0042FAB3    push        0
 0042FAB5    push        1032
 0042FABA    mov         eax,dword ptr [ebp-4]
 0042FABD    push        eax
 0042FABE    call        user32.SendMessageA
 0042FAC3    mov         dword ptr [ebp-8],eax
 0042FAC6    mov         eax,dword ptr [ebp-8]
 0042FAC9    pop         ecx
 0042FACA    pop         ecx
 0042FACB    pop         ebp
 0042FACC    ret
end;*}

//0042FAD0
{*function sub_0042FAD0(?:HWND; ?:?):?;
begin
 0042FAD0    push        ebp
 0042FAD1    mov         ebp,esp
 0042FAD3    add         esp,0FFFFFFF4
 0042FAD6    mov         dword ptr [ebp-8],edx
 0042FAD9    mov         dword ptr [ebp-4],eax
 0042FADC    mov         eax,dword ptr [ebp-8]
 0042FADF    push        eax
 0042FAE0    push        0
 0042FAE2    push        1036
 0042FAE7    mov         eax,dword ptr [ebp-4]
 0042FAEA    push        eax
 0042FAEB    call        user32.SendMessageA
 0042FAF0    mov         dword ptr [ebp-0C],eax
 0042FAF3    mov         eax,dword ptr [ebp-0C]
 0042FAF6    mov         esp,ebp
 0042FAF8    pop         ebp
 0042FAF9    ret
end;*}

//0042FAFC
{*function sub_0042FAFC(?:HWND; ?:?; ?:?):?;
begin
 0042FAFC    push        ebp
 0042FAFD    mov         ebp,esp
 0042FAFF    add         esp,0FFFFFFF0
 0042FB02    mov         dword ptr [ebp-0C],ecx
 0042FB05    mov         dword ptr [ebp-8],edx
 0042FB08    mov         dword ptr [ebp-4],eax
 0042FB0B    mov         eax,dword ptr [ebp-0C]
 0042FB0E    push        eax
 0042FB0F    mov         eax,dword ptr [ebp-8]
 0042FB12    push        eax
 0042FB13    push        103A
 0042FB18    mov         eax,dword ptr [ebp-4]
 0042FB1B    push        eax
 0042FB1C    call        user32.SendMessageA
 0042FB21    mov         dword ptr [ebp-10],eax
 0042FB24    mov         eax,dword ptr [ebp-10]
 0042FB27    mov         esp,ebp
 0042FB29    pop         ebp
 0042FB2A    ret
end;*}

//0042FB5C
{*function sub_0042FB5C(?:HWND; ?:?; ?:?):?;
begin
 0042FB5C    push        ebp
 0042FB5D    mov         ebp,esp
 0042FB5F    add         esp,0FFFFFFF0
 0042FB62    mov         dword ptr [ebp-0C],ecx
 0042FB65    mov         dword ptr [ebp-8],edx
 0042FB68    mov         dword ptr [ebp-4],eax
 0042FB6B    mov         eax,dword ptr [ebp-0C]
 0042FB6E    push        eax
 0042FB6F    mov         eax,dword ptr [ebp-8]
 0042FB72    push        eax
 0042FB73    push        1041
 0042FB78    mov         eax,dword ptr [ebp-4]
 0042FB7B    push        eax
 0042FB7C    call        user32.SendMessageA
 0042FB81    mov         dword ptr [ebp-10],eax
 0042FB84    mov         eax,dword ptr [ebp-10]
 0042FB87    mov         esp,ebp
 0042FB89    pop         ebp
 0042FB8A    ret
end;*}

//0042FB8C
{*function sub_0042FB8C(?:HWND; ?:Integer):?;
begin
 0042FB8C    push        ebp
 0042FB8D    mov         ebp,esp
 0042FB8F    add         esp,0FFFFFFF4
 0042FB92    mov         dword ptr [ebp-8],edx
 0042FB95    mov         dword ptr [ebp-4],eax
 0042FB98    mov         eax,dword ptr [ebp-8]
 0042FB9B    push        eax
 0042FB9C    push        0
 0042FB9E    push        1047
 0042FBA3    mov         eax,dword ptr [ebp-4]
 0042FBA6    push        eax
 0042FBA7    call        user32.SendMessageA
 0042FBAC    mov         dword ptr [ebp-0C],eax
 0042FBAF    mov         eax,dword ptr [ebp-0C]
 0042FBB2    mov         esp,ebp
 0042FBB4    pop         ebp
 0042FBB5    ret
end;*}

//0042FBB8
{*function sub_0042FBB8(?:HWND):?;
begin
 0042FBB8    push        ebp
 0042FBB9    mov         ebp,esp
 0042FBBB    add         esp,0FFFFFFF8
 0042FBBE    mov         dword ptr [ebp-4],eax
 0042FBC1    push        0
 0042FBC3    push        0
 0042FBC5    push        1048
 0042FBCA    mov         eax,dword ptr [ebp-4]
 0042FBCD    push        eax
 0042FBCE    call        user32.SendMessageA
 0042FBD3    mov         dword ptr [ebp-8],eax
 0042FBD6    mov         eax,dword ptr [ebp-8]
 0042FBD9    pop         ecx
 0042FBDA    pop         ecx
 0042FBDB    pop         ebp
 0042FBDC    ret
end;*}

end.