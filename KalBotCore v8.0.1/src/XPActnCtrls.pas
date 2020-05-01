//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit XPActnCtrls;

interface

uses
  SysUtils, Classes, ShadowWnd;

type
  TXPStyleMenuItem = class(TCustomMenuItem)
  public
    procedure v90; virtual;//v90//00516BC0
    //procedure vA4(?:?); virtual;//vA4//00516E6C
    //procedure vAC(?:?); virtual;//vAC//00516C08
    //procedure vB0(?:?; ?:?; ?:?); virtual;//vB0//00517578
    //procedure vB4(?:?; ?:?; ?:?; ?:?; ?:?); virtual;//vB4//00517470
    //procedure vB8(?:?); virtual;//vB8//005172C4
    procedure vDC; virtual;//vDC//00516B48
    procedure vE8; virtual;//vE8//005174EC
    procedure vEC; virtual;//vEC//005175E0
  end;
  TXPStyleMenuButton = class(TCustomMenuButton)
  public
    //procedure vAC(?:?); virtual;//vAC//00517678
    //procedure vB0(?:?; ?:?; ?:?); virtual;//vB0//00517880
  end;
  TXPStylePopupMenu = class(TCustomActionPopupMenu)
  public
    .......FBtnShadow:TShadowWindow;//f318
    destructor Destroy; virtual;//0051793C
    constructor Create(AOwner:TComponent); virtual;//v2C//005178E8
    //procedure vC8(?:?); virtual;//vC8//00517A80
    procedure v188; virtual;//v188//0051797C
    //function v18C:?; virtual;//v18C//00517A3C
    procedure v190; virtual;//v190//00517A54
    //procedure v194(?:?; ?:?); virtual;//v194//00517DEC
    procedure sub_004CC91C; dynamic;//00517E8C
  end;
  TXPStyleExpandBtn = class(TCustomMenuExpandBtn)
  public
    //procedure vAC(?:?); virtual;//vAC//00517EC4
    //procedure vE4(?:?; ?:?); virtual;//vE4//00517FD0
  end;
  TXPStyleButton = class(TCustomButtonControl)
  public
    //procedure vA4(?:?); virtual;//vA4//00518210
    //procedure vAC(?:?); virtual;//vAC//00518078
    //procedure vB0(?:?; ?:?; ?:?); virtual;//vB0//00518410
    //procedure vE4(?:?; ?:?); virtual;//vE4//00518154
  end;
  TXPStyleDropDownBtn = class(TCustomDropDownButton)
  public
    //procedure vA4(?:?); virtual;//vA4//0051863C
    //procedure vAC(?:?); virtual;//vAC//005184B0
    //procedure vE4(?:?; ?:?); virtual;//vE4//00518580
    //function vE8:?; virtual;//vE8//00518838
  end;
  TXPStyleCustomizePopup = class(TCustomizeActionToolBar)
  public
    constructor Create(AOwner:TComponent); virtual;//v2C//00518850
    //procedure vC8(?:?); virtual;//vC8//005188D4
    //function v10C:?; virtual;//v10C//005188BC
    //function v198:?; virtual;//v198//005188A4
  end;
  TXPStyleToolScrollBtn = class(TCustomToolScrollBtn)
  public
    //procedure vAC(?:?); virtual;//vAC//005194C8
  end;
  TXPStyleAddRemoveItem = class(TCustomAddRemoveItem)
  public
    //procedure vA4(?:?); virtual;//vA4//00518CCC
    //procedure vAC(?:?); virtual;//vAC//00518AA4
    //procedure vB0(?:?; ?:?; ?:?); virtual;//vB0//00519380
    //procedure vB8(?:?); virtual;//vB8//005191E0
    procedure vDC; virtual;//vDC//00518A60
    procedure vEC; virtual;//vEC//005194BC
  end;
    //function sub_00516B14:?;//00516B14
    procedure sub_00516B48;//00516B48
    procedure sub_00516BC0;//00516BC0
    //procedure sub_00516C08(?:?);//00516C08
    //procedure sub_00516E6C(?:?);//00516E6C
    //procedure sub_005172C4(?:?);//005172C4
    //procedure sub_00517470(?:?; ?:?; ?:?; ?:?; ?:?);//00517470
    procedure sub_005174EC;//005174EC
    //procedure sub_00517578(?:?; ?:?; ?:?);//00517578
    procedure sub_005175E0;//005175E0
    //procedure sub_005175EC(?:?);//005175EC
    //procedure sub_00517678(?:?);//00517678
    //procedure sub_00517880(?:?; ?:?; ?:?);//00517880
    constructor Create(AOwner:TComponent);//005178E8
    destructor Destroy;//0051793C
    procedure sub_0051797C;//0051797C
    //function sub_00517A3C:?;//00517A3C
    procedure sub_00517A54;//00517A54
    //procedure sub_00517A80(?:?);//00517A80
    //procedure sub_00517DEC(?:?; ?:?);//00517DEC
    procedure sub_004CC91C;//00517E8C
    //procedure sub_00517EC4(?:?);//00517EC4
    //procedure sub_00517FD0(?:?; ?:?);//00517FD0
    //procedure sub_00518078(?:?);//00518078
    //procedure sub_00518154(?:?; ?:?);//00518154
    //procedure sub_00518210(?:?);//00518210
    //procedure sub_00518410(?:?; ?:?; ?:?);//00518410
    //procedure sub_005184B0(?:?);//005184B0
    //procedure sub_00518580(?:?; ?:?);//00518580
    //procedure sub_0051863C(?:?);//0051863C
    //function sub_00518838:?;//00518838
    constructor Create(AOwner:TComponent);//00518850
    //function sub_005188A4:?;//005188A4
    //function sub_005188BC:?;//005188BC
    //procedure sub_005188D4(?:?);//005188D4
    procedure sub_00518A60;//00518A60
    //procedure sub_00518AA4(?:?);//00518AA4
    //procedure sub_00518CCC(?:?);//00518CCC
    //procedure sub_005191E0(?:?);//005191E0
    //procedure sub_00519380(?:?; ?:?; ?:?);//00519380
    procedure sub_005194BC;//005194BC
    //procedure sub_005194C8(?:?);//005194C8

implementation

//00516B14
{*function sub_00516B14:?;
begin
 00516B14    push        ebp
 00516B15    mov         ebp,esp
 00516B17    push        ecx
 00516B18    push        2
 00516B1A    call        user32.GetAsyncKeyState
 00516B1F    movsx       eax,ax
 00516B22    test        ah,80
>00516B25    jne         00516B3A
 00516B27    push        1
 00516B29    call        user32.GetAsyncKeyState
 00516B2E    movsx       eax,ax
 00516B31    test        ah,80
>00516B34    jne         00516B3A
 00516B36    xor         eax,eax
>00516B38    jmp         00516B3C
 00516B3A    mov         al,1
 00516B3C    mov         byte ptr [ebp-1],al
 00516B3F    mov         al,byte ptr [ebp-1]
 00516B42    pop         ecx
 00516B43    pop         ebp
 00516B44    ret
end;*}

//00516B48
procedure sub_00516B48;
begin
{*
 00516B48    push        ebp
 00516B49    mov         ebp,esp
 00516B4B    add         esp,0FFFFFFEC
 00516B4E    push        esi
 00516B4F    push        edi
 00516B50    mov         dword ptr [ebp-4],eax
 00516B53    mov         eax,dword ptr [ebp-4]
 00516B56    call        00507658
 00516B5B    mov         eax,dword ptr [ebp-4]
 00516B5E    mov         edx,dword ptr [eax]
 00516B60    call        dword ptr [edx+0C8];TXPStyleMenuItem.sub_005152A0
 00516B66    test        al,al
>00516B68    je          00516B79
 00516B6A    mov         edx,3
 00516B6F    mov         eax,dword ptr [ebp-4]
 00516B72    call        TControl.SetHeight
>00516B77    jmp         00516B8A
 00516B79    mov         eax,dword ptr [ebp-4]
 00516B7C    mov         edx,dword ptr [eax+4C];TXPStyleMenuItem.Height:Integer
 00516B7F    add         edx,2
 00516B82    mov         eax,dword ptr [ebp-4]
 00516B85    call        TControl.SetHeight
 00516B8A    mov         eax,dword ptr [ebp-4]
 00516B8D    call        00515218
 00516B92    test        al,al
>00516B94    jne         00516BB9
 00516B96    mov         eax,dword ptr [ebp-4]
 00516B99    lea         esi,[eax+190];TXPStyleMenuItem.FTextBounds:TRect
 00516B9F    lea         edi,[ebp-14]
 00516BA2    movs        dword ptr [edi],dword ptr [esi]
 00516BA3    movs        dword ptr [edi],dword ptr [esi]
 00516BA4    movs        dword ptr [edi],dword ptr [esi]
 00516BA5    movs        dword ptr [edi],dword ptr [esi]
 00516BA6    inc         dword ptr [ebp-10]
 00516BA9    mov         eax,dword ptr [ebp-4]
 00516BAC    lea         esi,[ebp-14]
 00516BAF    lea         edi,[eax+190];TXPStyleMenuItem.FTextBounds:TRect
 00516BB5    movs        dword ptr [edi],dword ptr [esi]
 00516BB6    movs        dword ptr [edi],dword ptr [esi]
 00516BB7    movs        dword ptr [edi],dword ptr [esi]
 00516BB8    movs        dword ptr [edi],dword ptr [esi]
 00516BB9    pop         edi
 00516BBA    pop         esi
 00516BBB    mov         esp,ebp
 00516BBD    pop         ebp
 00516BBE    ret
*}
end;

//00516BC0
procedure sub_00516BC0;
begin
{*
 00516BC0    push        ebp
 00516BC1    mov         ebp,esp
 00516BC3    add         esp,0FFFFFFF4
 00516BC6    mov         dword ptr [ebp-4],eax
 00516BC9    mov         eax,dword ptr [ebp-4]
 00516BCC    call        00507824
 00516BD1    lea         ecx,[ebp-0C]
 00516BD4    mov         eax,dword ptr [ebp-4]
 00516BD7    mov         edx,dword ptr [eax+176]
 00516BDD    inc         edx
 00516BDE    mov         eax,dword ptr [ebp-4]
 00516BE1    mov         eax,dword ptr [eax+172];TXPStyleMenuItem.FGlyphPos:TPoint
 00516BE7    call        Point
 00516BEC    mov         eax,dword ptr [ebp-4]
 00516BEF    mov         edx,dword ptr [ebp-0C]
 00516BF2    mov         dword ptr [eax+172],edx;TXPStyleMenuItem.FGlyphPos:TPoint
 00516BF8    mov         edx,dword ptr [ebp-8]
 00516BFB    mov         dword ptr [eax+176],edx
 00516C01    mov         esp,ebp
 00516C03    pop         ebp
 00516C04    ret
*}
end;

//00516C08
{*procedure sub_00516C08(?:?);
begin
 00516C08    push        ebp
 00516C09    mov         ebp,esp
 00516C0B    add         esp,0FFFFFFD8
 00516C0E    push        esi
 00516C0F    push        edi
 00516C10    mov         dword ptr [ebp-8],edx
 00516C13    mov         dword ptr [ebp-4],eax
 00516C16    mov         eax,dword ptr [ebp-4]
 00516C19    cmp         dword ptr [eax+16C],0;TXPStyleMenuItem.FActionClient:TActionClientItem
>00516C20    je          00516E63
 00516C26    mov         eax,dword ptr [ebp-4]
 00516C29    mov         eax,dword ptr [eax+16C];TXPStyleMenuItem.FActionClient:TActionClientItem
 00516C2F    cmp         dword ptr [eax+24],20000000;TActionClientItem.Color:TColor
>00516C36    je          00516C55
 00516C38    mov         eax,dword ptr [ebp-4]
 00516C3B    mov         eax,dword ptr [eax+16C];TXPStyleMenuItem.FActionClient:TActionClientItem
 00516C41    mov         edx,dword ptr [eax+24];TActionClientItem.Color:TColor
 00516C44    mov         eax,dword ptr [ebp-4]
 00516C47    mov         eax,dword ptr [eax+160];TXPStyleMenuItem...................................................
 00516C4D    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 00516C50    call        TBrush.SetColor
 00516C55    mov         eax,dword ptr [ebp-8]
 00516C58    mov         esi,eax
 00516C5A    lea         edi,[ebp-28]
 00516C5D    movs        dword ptr [edi],dword ptr [esi]
 00516C5E    movs        dword ptr [edi],dword ptr [esi]
 00516C5F    movs        dword ptr [edi],dword ptr [esi]
 00516C60    movs        dword ptr [edi],dword ptr [esi]
 00516C61    mov         eax,dword ptr [ebp-4]
 00516C64    mov         eax,dword ptr [eax+190];TXPStyleMenuItem.FTextBounds:TRect
 00516C6A    mov         edx,dword ptr [ebp-4]
 00516C6D    cmp         eax,dword ptr [edx+172];TXPStyleMenuItem.FGlyphPos:TPoint
>00516C73    jle         00516C7A
 00516C75    xor         eax,eax
 00516C77    mov         dword ptr [ebp-28],eax
 00516C7A    mov         eax,dword ptr [ebp-8]
 00516C7D    mov         esi,eax
 00516C7F    lea         edi,[ebp-18]
 00516C82    movs        dword ptr [edi],dword ptr [esi]
 00516C83    movs        dword ptr [edi],dword ptr [esi]
 00516C84    movs        dword ptr [edi],dword ptr [esi]
 00516C85    movs        dword ptr [edi],dword ptr [esi]
 00516C86    mov         eax,dword ptr [ebp-4]
 00516C89    mov         eax,dword ptr [eax+190];TXPStyleMenuItem.FTextBounds:TRect
 00516C8F    mov         edx,dword ptr [ebp-4]
 00516C92    cmp         eax,dword ptr [edx+172];TXPStyleMenuItem.FGlyphPos:TPoint
>00516C98    jle         00516CAB
 00516C9A    mov         eax,dword ptr [ebp-4]
 00516C9D    mov         eax,dword ptr [eax+190];TXPStyleMenuItem.FTextBounds:TRect
 00516CA3    sub         eax,3
 00516CA6    mov         dword ptr [ebp-10],eax
>00516CA9    jmp         00516CBA
 00516CAB    mov         eax,dword ptr [ebp-4]
 00516CAE    mov         eax,dword ptr [eax+198];TXPStyleMenuItem.FTextBounds.Right:Longint
 00516CB4    add         eax,3
 00516CB7    mov         dword ptr [ebp-10],eax
 00516CBA    mov         dword ptr [ebp-10],19
 00516CC1    mov         eax,dword ptr [ebp-10]
 00516CC4    sub         eax,dword ptr [ebp-18]
 00516CC7    mov         dword ptr [ebp-28],eax
 00516CCA    mov         eax,dword ptr [ebp-4]
 00516CCD    mov         eax,dword ptr [eax+16C];TXPStyleMenuItem.FActionClient:TActionClientItem
 00516CD3    call        0050F28C
 00516CD8    test        al,al
>00516CDA    je          00516D03
 00516CDC    mov         eax,dword ptr [ebp-4]
 00516CDF    call        0051541C
 00516CE4    call        TActionToolBar.GetColorMap
 00516CE9    call        TXPColorMap.GetUnusedColor
 00516CEE    mov         edx,eax
 00516CF0    mov         eax,dword ptr [ebp-4]
 00516CF3    mov         eax,dword ptr [eax+160];TXPStyleMenuItem...................................................
 00516CF9    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 00516CFC    call        TBrush.SetColor
>00516D01    jmp         00516D24
 00516D03    mov         eax,dword ptr [ebp-4]
 00516D06    call        0051541C
 00516D0B    call        TActionToolBar.GetColorMap
 00516D10    mov         edx,dword ptr [eax+40]
 00516D13    mov         eax,dword ptr [ebp-4]
 00516D16    mov         eax,dword ptr [eax+160];TXPStyleMenuItem...................................................
 00516D1C    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 00516D1F    call        TBrush.SetColor
 00516D24    lea         edx,[ebp-18]
 00516D27    mov         eax,dword ptr [ebp-4]
 00516D2A    mov         eax,dword ptr [eax+160];TXPStyleMenuItem...................................................
 00516D30    call        TCanvas.FillRect
 00516D35    mov         eax,dword ptr [ebp-4]
 00516D38    mov         eax,dword ptr [eax+1AC];TXPStyleMenuItem.FMenu:TCustomActionMenuBar
 00516D3E    call        TActionToolBar.GetColorMap
 00516D43    mov         edx,dword ptr [eax+74]
 00516D46    mov         eax,dword ptr [ebp-4]
 00516D49    mov         eax,dword ptr [eax+160];TXPStyleMenuItem...................................................
 00516D4F    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 00516D52    call        TBrush.SetColor
 00516D57    mov         eax,dword ptr [ebp-4]
 00516D5A    cmp         byte ptr [eax+18A],0;TXPStyleMenuItem.FSelected:Boolean
>00516D61    je          00516D6F
 00516D63    mov         eax,dword ptr [ebp-4]
 00516D66    mov         edx,dword ptr [eax]
 00516D68    call        dword ptr [edx+50];TImage.GetEnabled
 00516D6B    test        al,al
>00516D6D    jne         00516D87
 00516D6F    mov         eax,dword ptr [ebp-4]
 00516D72    cmp         byte ptr [eax+18A],0;TXPStyleMenuItem.FSelected:Boolean
>00516D79    je          00516DCF
 00516D7B    mov         eax,dword ptr [ebp-4]
 00516D7E    cmp         byte ptr [eax+1B0],0;TXPStyleMenuItem.FMouseSelected:Boolean
>00516D85    jne         00516DCF
 00516D87    mov         eax,dword ptr [ebp-4]
 00516D8A    mov         edx,dword ptr [eax]
 00516D8C    call        dword ptr [edx+50];TImage.GetEnabled
 00516D8F    test        al,al
>00516D91    je          00516DC9
 00516D93    mov         eax,dword ptr [ebp-4]
 00516D96    call        0051541C
 00516D9B    mov         edx,dword ptr [eax]
 00516D9D    call        dword ptr [edx+104]
 00516DA3    test        al,al
>00516DA5    jne         00516DC9
 00516DA7    mov         eax,dword ptr [ebp-4]
 00516DAA    mov         eax,dword ptr [eax+1AC];TXPStyleMenuItem.FMenu:TCustomActionMenuBar
 00516DB0    call        TActionToolBar.GetColorMap
 00516DB5    mov         edx,dword ptr [eax+68]
 00516DB8    mov         eax,dword ptr [ebp-4]
 00516DBB    mov         eax,dword ptr [eax+160];TXPStyleMenuItem...................................................
 00516DC1    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 00516DC4    call        TBrush.SetColor
 00516DC9    mov         eax,dword ptr [ebp-8]
 00516DCC    dec         dword ptr [eax+8]
 00516DCF    lea         edx,[ebp-28]
 00516DD2    mov         eax,dword ptr [ebp-4]
 00516DD5    call        00513A2C
 00516DDA    mov         eax,[0055B688];^gvar_0055DDAC
 00516DDF    mov         eax,dword ptr [eax]
 00516DE1    call        004D95C4
 00516DE6    test        al,al
>00516DE8    jne         00516E63
 00516DEA    mov         eax,dword ptr [ebp-4]
 00516DED    cmp         byte ptr [eax+18A],0;TXPStyleMenuItem.FSelected:Boolean
>00516DF4    je          00516E02
 00516DF6    mov         eax,dword ptr [ebp-4]
 00516DF9    mov         edx,dword ptr [eax]
 00516DFB    call        dword ptr [edx+50];TImage.GetEnabled
 00516DFE    test        al,al
>00516E00    jne         00516E1A
 00516E02    mov         eax,dword ptr [ebp-4]
 00516E05    cmp         byte ptr [eax+18A],0;TXPStyleMenuItem.FSelected:Boolean
>00516E0C    je          00516E63
 00516E0E    mov         eax,dword ptr [ebp-4]
 00516E11    cmp         byte ptr [eax+1B0],0;TXPStyleMenuItem.FMouseSelected:Boolean
>00516E18    jne         00516E63
 00516E1A    mov         edx,dword ptr [ebp-8]
 00516E1D    mov         eax,dword ptr [ebp-4]
 00516E20    mov         eax,dword ptr [eax+160];TXPStyleMenuItem...................................................
 00516E26    call        TCanvas.FillRect
 00516E2B    mov         eax,dword ptr [ebp-4]
 00516E2E    call        0051541C
 00516E33    call        TActionToolBar.GetColorMap
 00516E38    mov         edx,dword ptr [eax+38]
 00516E3B    mov         eax,dword ptr [ebp-4]
 00516E3E    mov         eax,dword ptr [eax+160];TXPStyleMenuItem...................................................
 00516E44    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 00516E47    call        TBrush.SetColor
 00516E4C    mov         eax,dword ptr [ebp-8]
 00516E4F    inc         dword ptr [eax+8]
 00516E52    mov         edx,dword ptr [ebp-8]
 00516E55    mov         eax,dword ptr [ebp-4]
 00516E58    mov         eax,dword ptr [eax+160];TXPStyleMenuItem...................................................
 00516E5E    call        00487D80
 00516E63    pop         edi
 00516E64    pop         esi
 00516E65    mov         esp,ebp
 00516E67    pop         ebp
 00516E68    ret
end;*}

//00516E6C
{*procedure sub_00516E6C(?:?);
begin
 00516E6C    push        ebp
 00516E6D    mov         ebp,esp
 00516E6F    add         esp,0FFFFFFC8
 00516E72    mov         dword ptr [ebp-8],edx
 00516E75    mov         dword ptr [ebp-4],eax
 00516E78    mov         eax,dword ptr [ebp-4]
 00516E7B    cmp         dword ptr [eax+16C],0;TXPStyleMenuItem.FActionClient:TActionClientItem
>00516E82    je          00516FBE
 00516E88    mov         eax,dword ptr [ebp-4]
 00516E8B    mov         eax,dword ptr [eax+16C];TXPStyleMenuItem.FActionClient:TActionClientItem
 00516E91    call        0050E94C
 00516E96    test        al,al
>00516E98    jne         00516FBE
 00516E9E    mov         eax,dword ptr [ebp-4]
 00516EA1    mov         edx,dword ptr [eax]
 00516EA3    call        dword ptr [edx+3C];TXPStyleMenuItem.sub_005153C4
 00516EA6    mov         edx,dword ptr ds:[4DA408];TCustomAction
 00516EAC    call        @IsClass
 00516EB1    test        al,al
>00516EB3    je          00516FBE
 00516EB9    mov         eax,dword ptr [ebp-4]
 00516EBC    mov         edx,dword ptr [eax]
 00516EBE    call        dword ptr [edx+3C];TXPStyleMenuItem.sub_005153C4
 00516EC1    cmp         byte ptr [eax+69],0
>00516EC5    je          00516FBE
 00516ECB    mov         eax,dword ptr [ebp-4]
 00516ECE    mov         edx,dword ptr [eax]
 00516ED0    call        dword ptr [edx+0C0];TXPStyleMenuItem.sub_00515370
 00516ED6    test        al,al
>00516ED8    je          00516F67
 00516EDE    mov         eax,dword ptr [ebp-4]
 00516EE1    mov         eax,dword ptr [eax+4C];TXPStyleMenuItem.Height:Integer
 00516EE4    dec         eax
 00516EE5    push        eax
 00516EE6    lea         eax,[ebp-30]
 00516EE9    push        eax
 00516EEA    mov         ecx,dword ptr [ebp-8]
 00516EED    mov         ecx,dword ptr [ecx]
 00516EEF    add         ecx,14
 00516EF2    mov         eax,dword ptr [ebp-8]
 00516EF5    mov         eax,dword ptr [eax]
 00516EF7    dec         eax
 00516EF8    mov         edx,1
 00516EFD    call        Rect
 00516F02    mov         eax,dword ptr [ebp-4]
 00516F05    mov         eax,dword ptr [eax+1AC];TXPStyleMenuItem.FMenu:TCustomActionMenuBar
 00516F0B    call        TActionToolBar.GetColorMap
 00516F10    mov         edx,dword ptr [eax+68]
 00516F13    mov         eax,dword ptr [ebp-4]
 00516F16    mov         eax,dword ptr [eax+160];TXPStyleMenuItem...................................................
 00516F1C    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 00516F1F    call        TBrush.SetColor
 00516F24    lea         edx,[ebp-30]
 00516F27    mov         eax,dword ptr [ebp-4]
 00516F2A    mov         eax,dword ptr [eax+160];TXPStyleMenuItem...................................................
 00516F30    call        TCanvas.FillRect
 00516F35    mov         eax,dword ptr [ebp-4]
 00516F38    call        0051541C
 00516F3D    call        TActionToolBar.GetColorMap
 00516F42    mov         edx,dword ptr [eax+38]
 00516F45    mov         eax,dword ptr [ebp-4]
 00516F48    mov         eax,dword ptr [eax+160];TXPStyleMenuItem...................................................
 00516F4E    mov         eax,dword ptr [eax+10];TCanvas.Pen:TPen
 00516F51    call        TPen.SetColor
 00516F56    lea         edx,[ebp-30]
 00516F59    mov         eax,dword ptr [ebp-4]
 00516F5C    mov         eax,dword ptr [eax+160];TXPStyleMenuItem...................................................
 00516F62    call        00487FD8
 00516F67    mov         eax,dword ptr [ebp-4]
 00516F6A    call        0051541C
 00516F6F    call        TActionToolBar.GetColorMap
 00516F74    mov         edx,dword ptr [eax+50]
 00516F77    mov         eax,dword ptr [ebp-4]
 00516F7A    mov         eax,dword ptr [eax+160];TXPStyleMenuItem...................................................
 00516F80    mov         eax,dword ptr [eax+10];TCanvas.Pen:TPen
 00516F83    call        TPen.SetColor
 00516F88    push        1
 00516F8A    lea         ecx,[ebp-38]
 00516F8D    mov         edx,dword ptr [ebp-8]
 00516F90    mov         edx,dword ptr [edx+4]
 00516F93    add         edx,3
 00516F96    mov         eax,dword ptr [ebp-8]
 00516F99    mov         eax,dword ptr [eax]
 00516F9B    add         eax,6
 00516F9E    call        Point
 00516FA3    lea         edx,[ebp-38]
 00516FA6    mov         eax,dword ptr [ebp-4]
 00516FA9    mov         eax,dword ptr [eax+160];TXPStyleMenuItem...................................................
 00516FAF    mov         ecx,2
 00516FB4    call        004F93F4
>00516FB9    jmp         005172C0
 00516FBE    mov         eax,dword ptr [ebp-4]
 00516FC1    mov         edx,dword ptr [eax]
 00516FC3    call        dword ptr [edx+0C0];TXPStyleMenuItem.sub_00515370
 00516FC9    test        al,al
>00516FCB    je          00517045
 00516FCD    mov         eax,dword ptr [ebp-4]
 00516FD0    mov         eax,dword ptr [eax+4C];TXPStyleMenuItem.Height:Integer
 00516FD3    dec         eax
 00516FD4    push        eax
 00516FD5    lea         eax,[ebp-30]
 00516FD8    push        eax
 00516FD9    mov         ecx,dword ptr [ebp-8]
 00516FDC    mov         ecx,dword ptr [ecx]
 00516FDE    add         ecx,14
 00516FE1    mov         eax,dword ptr [ebp-8]
 00516FE4    mov         eax,dword ptr [eax]
 00516FE6    dec         eax
 00516FE7    mov         edx,1
 00516FEC    call        Rect
 00516FF1    mov         eax,dword ptr [ebp-4]
 00516FF4    mov         eax,dword ptr [eax+1AC];TXPStyleMenuItem.FMenu:TCustomActionMenuBar
 00516FFA    call        TActionToolBar.GetColorMap
 00516FFF    mov         edx,dword ptr [eax+68]
 00517002    mov         eax,dword ptr [ebp-4]
 00517005    mov         eax,dword ptr [eax+160];TXPStyleMenuItem...................................................
 0051700B    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 0051700E    call        TBrush.SetColor
 00517013    mov         eax,dword ptr [ebp-4]
 00517016    call        0051541C
 0051701B    call        TActionToolBar.GetColorMap
 00517020    mov         edx,dword ptr [eax+38]
 00517023    mov         eax,dword ptr [ebp-4]
 00517026    mov         eax,dword ptr [eax+160];TXPStyleMenuItem...................................................
 0051702C    mov         eax,dword ptr [eax+10];TCanvas.Pen:TPen
 0051702F    call        TPen.SetColor
 00517034    lea         edx,[ebp-30]
 00517037    mov         eax,dword ptr [ebp-4]
 0051703A    mov         eax,dword ptr [eax+160];TXPStyleMenuItem...................................................
 00517040    call        00487FD8
 00517045    mov         eax,dword ptr [ebp-4]
 00517048    mov         eax,dword ptr [eax+160];TXPStyleMenuItem...................................................
 0051704E    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 00517051    call        TBrush.GetColor
 00517056    mov         dword ptr [ebp-0C],eax
 00517059    mov         eax,dword ptr [ebp-4]
 0051705C    cmp         byte ptr [eax+18A],0;TXPStyleMenuItem.FSelected:Boolean
>00517063    je          00517071
 00517065    mov         eax,dword ptr [ebp-4]
 00517068    mov         edx,dword ptr [eax]
 0051706A    call        dword ptr [edx+50];TImage.GetEnabled
 0051706D    test        al,al
>0051706F    jne         00517089
 00517071    mov         eax,dword ptr [ebp-4]
 00517074    cmp         byte ptr [eax+18A],0;TXPStyleMenuItem.FSelected:Boolean
>0051707B    je          005170AD
 0051707D    mov         eax,dword ptr [ebp-4]
 00517080    cmp         byte ptr [eax+1B0],0;TXPStyleMenuItem.FMouseSelected:Boolean
>00517087    jne         005170AD
 00517089    mov         eax,dword ptr [ebp-4]
 0051708C    mov         eax,dword ptr [eax+1AC];TXPStyleMenuItem.FMenu:TCustomActionMenuBar
 00517092    call        TActionToolBar.GetColorMap
 00517097    mov         edx,dword ptr [eax+68]
 0051709A    mov         eax,dword ptr [ebp-4]
 0051709D    mov         eax,dword ptr [eax+160];TXPStyleMenuItem...................................................
 005170A3    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 005170A6    call        TBrush.SetColor
>005170AB    jmp         005170CF
 005170AD    mov         eax,dword ptr [ebp-4]
 005170B0    mov         eax,dword ptr [eax+1AC];TXPStyleMenuItem.FMenu:TCustomActionMenuBar
 005170B6    call        TActionToolBar.GetColorMap
 005170BB    mov         edx,dword ptr [eax+58]
 005170BE    mov         eax,dword ptr [ebp-4]
 005170C1    mov         eax,dword ptr [eax+160];TXPStyleMenuItem...................................................
 005170C7    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 005170CA    call        TBrush.SetColor
 005170CF    mov         eax,dword ptr [ebp-8]
 005170D2    mov         edx,dword ptr [eax]
 005170D4    mov         dword ptr [ebp-18],edx
 005170D7    mov         edx,dword ptr [eax+4]
 005170DA    mov         dword ptr [ebp-14],edx
 005170DD    mov         eax,dword ptr [ebp-4]
 005170E0    cmp         byte ptr [eax+18A],0;TXPStyleMenuItem.FSelected:Boolean
>005170E7    je          0051729A
 005170ED    mov         eax,dword ptr [ebp-4]
 005170F0    mov         edx,dword ptr [eax]
 005170F2    call        dword ptr [edx+50];TImage.GetEnabled
 005170F5    test        al,al
>005170F7    je          0051729A
 005170FD    mov         eax,dword ptr [ebp-4]
 00517100    mov         eax,dword ptr [eax+16C];TXPStyleMenuItem.FActionClient:TActionClientItem
 00517106    call        0050E94C
 0051710B    test        al,al
>0051710D    je          0051729A
 00517113    mov         eax,dword ptr [ebp-4]
 00517116    mov         eax,dword ptr [eax+160];TXPStyleMenuItem...................................................
 0051711C    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 0051711F    call        TBrush.GetColor
 00517124    mov         dword ptr [ebp-10],eax
 00517127    mov         dl,1
 00517129    mov         eax,[00485C6C];TBitmap
 0051712E    call        TBitmap.Create;TBitmap.Create
 00517133    mov         dword ptr [ebp-1C],eax
 00517136    xor         eax,eax
 00517138    push        ebp
 00517139    push        517283
 0051713E    push        dword ptr fs:[eax]
 00517141    mov         dword ptr fs:[eax],esp
 00517144    mov         eax,dword ptr [ebp-4]
 00517147    mov         eax,dword ptr [eax+16C];TXPStyleMenuItem.FActionClient:TActionClientItem
 0051714D    call        TActionClientItem.GetAction
 00517152    test        eax,eax
>00517154    je          00517183
 00517156    mov         eax,dword ptr [ebp-4]
 00517159    mov         eax,dword ptr [eax+16C];TXPStyleMenuItem.FActionClient:TActionClientItem
 0051715F    call        TActionClientItem.GetAction
 00517164    cmp         dword ptr [eax+5C],0
>00517168    je          00517183
 0051716A    mov         eax,dword ptr [ebp-4]
 0051716D    mov         eax,dword ptr [eax+16C];TXPStyleMenuItem.FActionClient:TActionClientItem
 00517173    call        TActionClientItem.GetAction
 00517178    mov         eax,dword ptr [eax+5C]
 0051717B    mov         eax,dword ptr [eax+38]
 0051717E    mov         dword ptr [ebp-20],eax
>00517181    jmp         0051719C
 00517183    mov         eax,dword ptr [ebp-4]
 00517186    mov         eax,dword ptr [eax+16C];TXPStyleMenuItem.FActionClient:TActionClientItem
 0051718C    call        0050CCC4
 00517191    call        0050BE18
 00517196    mov         eax,dword ptr [eax+38]
 00517199    mov         dword ptr [ebp-20],eax
 0051719C    cmp         dword ptr [ebp-20],0
>005171A0    je          00517259
 005171A6    mov         eax,dword ptr [ebp-4]
 005171A9    mov         eax,dword ptr [eax+16C];TXPStyleMenuItem.FActionClient:TActionClientItem
 005171AF    mov         edx,dword ptr [eax+58];TActionClientItem.ImageIndex:TImageIndex
 005171B2    mov         ecx,dword ptr [ebp-1C]
 005171B5    mov         eax,dword ptr [ebp-20]
 005171B8    call        004DCAE0
 005171BD    test        al,al
>005171BF    je          00517259
 005171C5    mov         eax,dword ptr [ebp-4]
 005171C8    mov         eax,dword ptr [eax+1AC];TXPStyleMenuItem.FMenu:TCustomActionMenuBar
 005171CE    call        TActionToolBar.GetColorMap
 005171D3    mov         eax,dword ptr [eax+68]
 005171D6    mov         edx,0FFFFFFCE
 005171DB    call        004F9070
 005171E0    mov         edx,eax
 005171E2    mov         eax,dword ptr [ebp-4]
 005171E5    mov         eax,dword ptr [eax+160];TXPStyleMenuItem...................................................
 005171EB    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 005171EE    call        TBrush.SetColor
 005171F3    mov         eax,dword ptr [ebp-20]
 005171F6    mov         edx,dword ptr [eax+34]
 005171F9    mov         eax,dword ptr [ebp-1C]
 005171FC    mov         ecx,dword ptr [eax]
 005171FE    call        dword ptr [ecx+40];TBitmap.sub_0048EB14
 00517201    mov         eax,dword ptr [ebp-20]
 00517204    mov         edx,dword ptr [eax+34]
 00517207    mov         eax,dword ptr [ebp-1C]
 0051720A    mov         ecx,dword ptr [eax]
 0051720C    call        dword ptr [ecx+34];TBitmap.sub_0048E6F4
 0051720F    push        84
 00517214    push        0
 00517216    push        0
 00517218    mov         eax,dword ptr [ebp-14]
 0051721B    add         eax,2
 0051721E    push        eax
 0051721F    mov         eax,dword ptr [ebp-18]
 00517222    add         eax,3
 00517225    push        eax
 00517226    push        0
 00517228    mov         eax,dword ptr [ebp-1C]
 0051722B    mov         edx,dword ptr [eax]
 0051722D    call        dword ptr [edx+64];TBitmap.sub_0048D584
 00517230    push        eax
 00517231    push        0
 00517233    mov         eax,dword ptr [ebp-4]
 00517236    mov         eax,dword ptr [eax+160];TXPStyleMenuItem...................................................
 0051723C    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 0051723F    call        TBrush.GetHandle
 00517244    push        eax
 00517245    mov         eax,dword ptr [ebp-4]
 00517248    mov         eax,dword ptr [eax+160];TXPStyleMenuItem...................................................
 0051724E    call        TCanvas.GetHandle
 00517253    push        eax
 00517254    call        user32.DrawStateA
 00517259    xor         eax,eax
 0051725B    pop         edx
 0051725C    pop         ecx
 0051725D    pop         ecx
 0051725E    mov         dword ptr fs:[eax],edx
 00517261    push        51728A
 00517266    mov         eax,dword ptr [ebp-1C]
 00517269    call        TObject.Free
 0051726E    mov         eax,dword ptr [ebp-4]
 00517271    mov         eax,dword ptr [eax+160];TXPStyleMenuItem...................................................
 00517277    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 0051727A    mov         edx,dword ptr [ebp-10]
 0051727D    call        TBrush.SetColor
 00517282    ret
>00517283    jmp         @HandleFinally
>00517288    jmp         00517266
 0051728A    inc         dword ptr [ebp-18]
 0051728D    lea         edx,[ebp-18]
 00517290    mov         eax,dword ptr [ebp-4]
 00517293    call        00513B5C
>00517298    jmp         005172AC
 0051729A    add         dword ptr [ebp-18],2
 0051729E    inc         dword ptr [ebp-14]
 005172A1    lea         edx,[ebp-18]
 005172A4    mov         eax,dword ptr [ebp-4]
 005172A7    call        00513B5C
 005172AC    mov         eax,dword ptr [ebp-4]
 005172AF    mov         eax,dword ptr [eax+160];TXPStyleMenuItem...................................................
 005172B5    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 005172B8    mov         edx,dword ptr [ebp-0C]
 005172BB    call        TBrush.SetColor
 005172C0    mov         esp,ebp
 005172C2    pop         ebp
 005172C3    ret
end;*}

//005172C4
{*procedure sub_005172C4(?:?);
begin
 005172C4    push        ebp
 005172C5    mov         ebp,esp
 005172C7    add         esp,0FFFFFFD0
 005172CA    mov         dword ptr [ebp-10],edx
 005172CD    mov         dword ptr [ebp-4],eax
 005172D0    mov         eax,dword ptr [ebp-4]
 005172D3    cmp         byte ptr [eax+18A],0;TXPStyleMenuItem.FSelected:Boolean
>005172DA    je          005172F8
 005172DC    lea         edx,[ebp-30]
 005172DF    mov         eax,dword ptr [ebp-4]
 005172E2    mov         ecx,dword ptr [eax]
 005172E4    call        dword ptr [ecx+44];TXPStyleMenuItem.sub_004CA73C
 005172E7    lea         edx,[ebp-30]
 005172EA    mov         eax,dword ptr [ebp-4]
 005172ED    mov         eax,dword ptr [eax+160];TXPStyleMenuItem...................................................
 005172F3    call        TCanvas.FillRect
 005172F8    mov         eax,dword ptr [ebp-4]
 005172FB    mov         eax,dword ptr [eax+160];TXPStyleMenuItem...................................................
 00517301    mov         ecx,dword ptr [eax+14];TCanvas.Brush:TBrush
 00517304    mov         dl,1
 00517306    mov         eax,[004855B4];TBrushRecall
 0051730B    call        TBrushRecall.Create;TBrushRecall.Create
 00517310    mov         dword ptr [ebp-0C],eax
 00517313    mov         eax,dword ptr [ebp-4]
 00517316    mov         eax,dword ptr [eax+160];TXPStyleMenuItem...................................................
 0051731C    mov         ecx,dword ptr [eax+10];TCanvas.Pen:TPen
 0051731F    mov         dl,1
 00517321    mov         eax,[0048555C];TPenRecall
 00517326    call        TPenRecall.Create;TPenRecall.Create
 0051732B    mov         dword ptr [ebp-8],eax
 0051732E    xor         eax,eax
 00517330    push        ebp
 00517331    push        517462
 00517336    push        dword ptr fs:[eax]
 00517339    mov         dword ptr fs:[eax],esp
 0051733C    mov         eax,dword ptr [ebp-4]
 0051733F    cmp         dword ptr [eax+16C],0;TXPStyleMenuItem.FActionClient:TActionClientItem
>00517346    je          0051737B
 00517348    mov         eax,dword ptr [ebp-4]
 0051734B    mov         eax,dword ptr [eax+16C];TXPStyleMenuItem.FActionClient:TActionClientItem
 00517351    call        0050F28C
 00517356    test        al,al
>00517358    je          0051737B
 0051735A    mov         eax,dword ptr [ebp-4]
 0051735D    cmp         byte ptr [eax+1A0],0;TXPStyleMenuItem.FTransparent:Boolean
>00517364    jne         0051737B
 00517366    mov         eax,dword ptr [ebp-4]
 00517369    mov         eax,dword ptr [eax+160];TXPStyleMenuItem...................................................
 0051736F    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 00517372    xor         edx,edx
 00517374    call        TBrush.SetStyle
>00517379    jmp         005173D5
 0051737B    mov         eax,dword ptr [ebp-4]
 0051737E    mov         edx,dword ptr [eax+70];TXPStyleMenuItem.FColor:TColor
 00517381    mov         eax,dword ptr [ebp-4]
 00517384    mov         eax,dword ptr [eax+160];TXPStyleMenuItem...................................................
 0051738A    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 0051738D    call        TBrush.SetColor
 00517392    lea         edx,[ebp-20]
 00517395    mov         eax,dword ptr [ebp-4]
 00517398    call        004CA6AC
 0051739D    push        1
 0051739F    push        4
 005173A1    lea         eax,[ebp-20]
 005173A4    push        eax
 005173A5    mov         eax,dword ptr [ebp-4]
 005173A8    mov         eax,dword ptr [eax+160];TXPStyleMenuItem...................................................
 005173AE    call        TCanvas.GetHandle
 005173B3    push        eax
 005173B4    call        user32.DrawEdge
 005173B9    push        4
 005173BB    push        4
 005173BD    lea         eax,[ebp-20]
 005173C0    push        eax
 005173C1    mov         eax,dword ptr [ebp-4]
 005173C4    mov         eax,dword ptr [eax+160];TXPStyleMenuItem...................................................
 005173CA    call        TCanvas.GetHandle
 005173CF    push        eax
 005173D0    call        user32.DrawEdge
 005173D5    mov         eax,dword ptr [ebp-4]
 005173D8    mov         eax,dword ptr [eax+1AC];TXPStyleMenuItem.FMenu:TCustomActionMenuBar
 005173DE    call        TActionToolBar.GetColorMap
 005173E3    mov         edx,dword ptr [eax+48]
 005173E6    mov         eax,dword ptr [ebp-4]
 005173E9    mov         eax,dword ptr [eax+160];TXPStyleMenuItem...................................................
 005173EF    mov         eax,dword ptr [eax+10];TCanvas.Pen:TPen
 005173F2    call        TPen.SetColor
 005173F7    mov         eax,dword ptr [ebp-4]
 005173FA    call        TControl.GetClientHeight
 005173FF    mov         ecx,eax
 00517401    sar         ecx,1
>00517403    jns         00517408
 00517405    adc         ecx,0
 00517408    mov         eax,dword ptr [ebp-4]
 0051740B    mov         eax,dword ptr [eax+160];TXPStyleMenuItem...................................................
 00517411    mov         edx,20
 00517416    call        TCanvas.MoveTo
 0051741B    mov         eax,dword ptr [ebp-4]
 0051741E    call        TControl.GetClientHeight
 00517423    sar         eax,1
>00517425    jns         0051742A
 00517427    adc         eax,0
 0051742A    push        eax
 0051742B    mov         eax,dword ptr [ebp-4]
 0051742E    call        TControl.GetClientWidth
 00517433    mov         edx,eax
 00517435    mov         eax,dword ptr [ebp-4]
 00517438    mov         eax,dword ptr [eax+160];TXPStyleMenuItem...................................................
 0051743E    pop         ecx
 0051743F    call        TCanvas.LineTo
 00517444    xor         eax,eax
 00517446    pop         edx
 00517447    pop         ecx
 00517448    pop         ecx
 00517449    mov         dword ptr fs:[eax],edx
 0051744C    push        517469
 00517451    mov         eax,dword ptr [ebp-0C]
 00517454    call        TObject.Free
 00517459    mov         eax,dword ptr [ebp-8]
 0051745C    call        TObject.Free
 00517461    ret
>00517462    jmp         @HandleFinally
>00517467    jmp         00517451
 00517469    mov         esp,ebp
 0051746B    pop         ebp
 0051746C    ret
end;*}

//00517470
{*procedure sub_00517470(?:?; ?:?; ?:?; ?:?; ?:?);
begin
 00517470    push        ebp
 00517471    mov         ebp,esp
 00517473    add         esp,0FFFFFFE8
 00517476    push        esi
 00517477    push        edi
 00517478    mov         esi,edx
 0051747A    lea         edi,[ebp-18]
 0051747D    movs        dword ptr [edi],dword ptr [esi]
 0051747E    movs        dword ptr [edi],dword ptr [esi]
 0051747F    movs        dword ptr [edi],dword ptr [esi]
 00517480    movs        dword ptr [edi],dword ptr [esi]
 00517481    mov         dword ptr [ebp-8],ecx
 00517484    mov         dword ptr [ebp-4],eax
 00517487    mov         eax,dword ptr [ebp+10]
 0051748A    call        @LStrAddRef
 0051748F    xor         eax,eax
 00517491    push        ebp
 00517492    push        5174DA
 00517497    push        dword ptr fs:[eax]
 0051749A    mov         dword ptr fs:[eax],esp
 0051749D    push        0
 0051749F    push        6
 005174A1    lea         eax,[ebp-18]
 005174A4    push        eax
 005174A5    call        user32.OffsetRect
 005174AA    mov         eax,dword ptr [ebp+10]
 005174AD    push        eax
 005174AE    mov         eax,dword ptr [ebp+0C]
 005174B1    push        eax
 005174B2    mov         eax,dword ptr [ebp+8]
 005174B5    push        eax
 005174B6    mov         ecx,dword ptr [ebp-8]
 005174B9    lea         edx,[ebp-18]
 005174BC    mov         eax,dword ptr [ebp-4]
 005174BF    call        00507898
 005174C4    xor         eax,eax
 005174C6    pop         edx
 005174C7    pop         ecx
 005174C8    pop         ecx
 005174C9    mov         dword ptr fs:[eax],edx
 005174CC    push        5174E1
 005174D1    lea         eax,[ebp+10]
 005174D4    call        @LStrClr
 005174D9    ret
>005174DA    jmp         @HandleFinally
>005174DF    jmp         005174D1
 005174E1    pop         edi
 005174E2    pop         esi
 005174E3    mov         esp,ebp
 005174E5    pop         ebp
 005174E6    ret         0C
end;*}

//005174EC
procedure sub_005174EC;
begin
{*
 005174EC    push        ebp
 005174ED    mov         ebp,esp
 005174EF    add         esp,0FFFFFFF0
 005174F2    mov         dword ptr [ebp-4],eax
 005174F5    mov         eax,dword ptr [ebp-4]
 005174F8    call        00506EAC
 005174FD    mov         eax,dword ptr [ebp-4]
 00517500    mov         eax,dword ptr [eax+160];TXPStyleMenuItem...................................................
 00517506    mov         dword ptr [ebp-8],eax
 00517509    mov         eax,dword ptr [ebp-4]
 0051750C    mov         eax,dword ptr [eax+1AC];TXPStyleMenuItem.FMenu:TCustomActionMenuBar
 00517512    call        TActionToolBar.GetColorMap
 00517517    mov         edx,dword ptr [eax+50]
 0051751A    mov         eax,dword ptr [ebp-8]
 0051751D    mov         eax,dword ptr [eax+10];TCanvas.Pen:TPen
 00517520    call        TPen.SetColor
 00517525    mov         eax,dword ptr [ebp-8]
 00517528    mov         eax,dword ptr [eax+10];TCanvas.Pen:TPen
 0051752B    call        TPen.GetColor
 00517530    mov         edx,eax
 00517532    mov         eax,dword ptr [ebp-8]
 00517535    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 00517538    call        TBrush.SetColor
 0051753D    push        3
 0051753F    lea         ecx,[ebp-10]
 00517542    mov         eax,dword ptr [ebp-4]
 00517545    mov         edx,dword ptr [eax+4C];TXPStyleMenuItem.Height:Integer
 00517548    sar         edx,1
>0051754A    jns         0051754F
 0051754C    adc         edx,0
 0051754F    sub         edx,3
 00517552    mov         eax,dword ptr [ebp-4]
 00517555    mov         eax,dword ptr [eax+48];TXPStyleMenuItem.Width:Integer
 00517558    sub         eax,0B
 0051755B    call        Point
 00517560    lea         ecx,[ebp-10]
 00517563    mov         dl,1
 00517565    mov         eax,dword ptr [ebp-4]
 00517568    mov         eax,dword ptr [eax+160];TXPStyleMenuItem...................................................
 0051756E    call        004F9148
 00517573    mov         esp,ebp
 00517575    pop         ebp
 00517576    ret
*}
end;

//00517578
{*procedure sub_00517578(?:?; ?:?; ?:?);
begin
 00517578    push        ebp
 00517579    mov         ebp,esp
 0051757B    add         esp,0FFFFFFF4
 0051757E    mov         dword ptr [ebp-0C],ecx
 00517581    mov         dword ptr [ebp-8],edx
 00517584    mov         dword ptr [ebp-4],eax
 00517587    mov         eax,dword ptr [ebp+8]
 0051758A    call        @LStrAddRef
 0051758F    xor         eax,eax
 00517591    push        ebp
 00517592    push        5175D2
 00517597    push        dword ptr fs:[eax]
 0051759A    mov         dword ptr fs:[eax],esp
 0051759D    push        0
 0051759F    push        6
 005175A1    mov         eax,dword ptr [ebp-8]
 005175A4    push        eax
 005175A5    call        user32.OffsetRect
 005175AA    mov         eax,dword ptr [ebp+8]
 005175AD    push        eax
 005175AE    mov         ecx,dword ptr [ebp-0C]
 005175B1    mov         edx,dword ptr [ebp-8]
 005175B4    mov         eax,dword ptr [ebp-4]
 005175B7    call        005079CC
 005175BC    xor         eax,eax
 005175BE    pop         edx
 005175BF    pop         ecx
 005175C0    pop         ecx
 005175C1    mov         dword ptr fs:[eax],edx
 005175C4    push        5175D9
 005175C9    lea         eax,[ebp+8]
 005175CC    call        @LStrClr
 005175D1    ret
>005175D2    jmp         @HandleFinally
>005175D7    jmp         005175C9
 005175D9    mov         esp,ebp
 005175DB    pop         ebp
 005175DC    ret         4
end;*}

//005175E0
procedure sub_005175E0;
begin
{*
 005175E0    push        ebp
 005175E1    mov         ebp,esp
 005175E3    push        ecx
 005175E4    mov         dword ptr [ebp-4],eax
 005175E7    pop         ecx
 005175E8    pop         ebp
 005175E9    ret
*}
end;

//005175EC
{*procedure sub_005175EC(?:?);
begin
 005175EC    push        ebp
 005175ED    mov         ebp,esp
 005175EF    mov         eax,dword ptr [ebp+8]
 005175F2    mov         eax,dword ptr [eax-4]
 005175F5    call        0050832C
 005175FA    call        TActionToolBar.GetColorMap
 005175FF    mov         edx,dword ptr [eax+68]
 00517602    mov         eax,dword ptr [ebp+8]
 00517605    mov         eax,dword ptr [eax-4]
 00517608    mov         eax,dword ptr [eax+160]
 0051760E    mov         eax,dword ptr [eax+14]
 00517611    call        TBrush.SetColor
 00517616    mov         eax,dword ptr [ebp+8]
 00517619    mov         eax,dword ptr [eax-4]
 0051761C    call        0051541C
 00517621    call        TActionToolBar.GetColorMap
 00517626    mov         edx,dword ptr [eax+38]
 00517629    mov         eax,dword ptr [ebp+8]
 0051762C    mov         eax,dword ptr [eax-4]
 0051762F    mov         eax,dword ptr [eax+160]
 00517635    mov         eax,dword ptr [eax+10]
 00517638    call        TPen.SetColor
 0051763D    mov         eax,dword ptr [ebp+8]
 00517640    mov         eax,dword ptr [eax-4]
 00517643    mov         eax,dword ptr [eax+48]
 00517646    push        eax
 00517647    mov         eax,dword ptr [ebp+8]
 0051764A    mov         eax,dword ptr [eax-4]
 0051764D    mov         eax,dword ptr [eax+4C]
 00517650    push        eax
 00517651    mov         eax,dword ptr [ebp+8]
 00517654    mov         eax,dword ptr [eax-4]
 00517657    mov         eax,dword ptr [eax+160]
 0051765D    xor         ecx,ecx
 0051765F    xor         edx,edx
 00517661    call        00487F84
 00517666    push        0FF
 00517668    push        0FF
 0051766A    mov         eax,dword ptr [ebp+8]
 0051766D    mov         eax,dword ptr [eax-8]
 00517670    push        eax
 00517671    call        user32.InflateRect
 00517676    pop         ebp
 00517677    ret
end;*}

//00517678
{*procedure sub_00517678(?:?);
begin
 00517678    push        ebp
 00517679    mov         ebp,esp
 0051767B    add         esp,0FFFFFFE0
 0051767E    mov         dword ptr [ebp-8],edx
 00517681    mov         dword ptr [ebp-4],eax
 00517684    mov         eax,dword ptr [ebp-4]
 00517687    call        0051541C
 0051768C    call        TActionToolBar.GetColorMap
 00517691    mov         edx,dword ptr [eax+40]
 00517694    mov         eax,dword ptr [ebp-4]
 00517697    mov         eax,dword ptr [eax+160];TXPStyleMenuButton.................................................
 0051769D    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 005176A0    call        TBrush.SetColor
 005176A5    mov         eax,dword ptr [ebp-4]
 005176A8    call        0051541C
 005176AD    mov         edx,dword ptr ds:[4FED30];TCustomActionMenuBar
 005176B3    call        @IsClass
 005176B8    test        al,al
>005176BA    je          0051785D
 005176C0    mov         eax,dword ptr [ebp-4]
 005176C3    call        0051541C
 005176C8    cmp         byte ptr [eax+296],0
>005176CF    je          0051785D
 005176D5    mov         eax,dword ptr [ebp-4]
 005176D8    cmp         byte ptr [eax+18A],0;TXPStyleMenuButton.FSelected:Boolean
>005176DF    je          00517870
 005176E5    mov         eax,dword ptr [ebp-4]
 005176E8    mov         eax,dword ptr [eax+16C];TXPStyleMenuButton.FActionClient:TActionClientItem
 005176EE    cmp         dword ptr [eax+18],0;TActionClientItem.FChildActionBar:TCustomActionBar
>005176F2    jne         00517741
 005176F4    mov         eax,dword ptr [ebp-4]
 005176F7    call        0050832C
 005176FC    mov         eax,dword ptr [eax+2C4]
 00517702    mov         eax,dword ptr [eax+2B0]
 00517708    call        TOrderedList.Count
 0051770D    dec         eax
>0051770E    jne         00517870
 00517714    mov         eax,dword ptr [ebp-4]
 00517717    call        0050832C
 0051771C    call        TActionToolBar.GetColorMap
 00517721    mov         edx,dword ptr [eax+68]
 00517724    mov         eax,dword ptr [ebp-4]
 00517727    mov         eax,dword ptr [eax+160];TXPStyleMenuButton.................................................
 0051772D    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 00517730    call        TBrush.SetColor
 00517735    push        ebp
 00517736    call        005175EC
 0051773B    pop         ecx
>0051773C    jmp         00517870
 00517741    mov         eax,dword ptr [ebp-4]
 00517744    call        0050832C
 00517749    call        TActionToolBar.GetColorMap
 0051774E    mov         edx,dword ptr [eax+34]
 00517751    mov         eax,dword ptr [ebp-4]
 00517754    mov         eax,dword ptr [eax+160];TXPStyleMenuButton.................................................
 0051775A    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 0051775D    call        TBrush.SetColor
 00517762    mov         eax,dword ptr [ebp-4]
 00517765    call        0051541C
 0051776A    call        TActionToolBar.GetColorMap
 0051776F    mov         edx,dword ptr [eax+7C]
 00517772    mov         eax,dword ptr [ebp-4]
 00517775    mov         eax,dword ptr [eax+160];TXPStyleMenuButton.................................................
 0051777B    mov         eax,dword ptr [eax+10];TCanvas.Pen:TPen
 0051777E    call        TPen.SetColor
 00517783    mov         eax,dword ptr [ebp-4]
 00517786    mov         eax,dword ptr [eax+160];TXPStyleMenuButton.................................................
 0051778C    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 0051778F    mov         dl,1
 00517791    call        TBrush.SetStyle
 00517796    mov         eax,dword ptr [ebp-4]
 00517799    mov         eax,dword ptr [eax+48];TXPStyleMenuButton.Width:Integer
 0051779C    push        eax
 0051779D    mov         eax,dword ptr [ebp-4]
 005177A0    mov         eax,dword ptr [eax+4C];TXPStyleMenuButton.Height:Integer
 005177A3    push        eax
 005177A4    mov         eax,dword ptr [ebp-4]
 005177A7    mov         eax,dword ptr [eax+160];TXPStyleMenuButton.................................................
 005177AD    xor         ecx,ecx
 005177AF    xor         edx,edx
 005177B1    call        00487F84
 005177B6    lea         edx,[ebp-20]
 005177B9    mov         eax,dword ptr [ebp-4]
 005177BC    call        004CA6AC
 005177C1    lea         edx,[ebp-20]
 005177C4    lea         ecx,[ebp-10]
 005177C7    mov         eax,dword ptr [ebp-4]
 005177CA    mov         eax,dword ptr [eax+30];TXPStyleMenuButton.FParent:TWinControl
 005177CD    call        TControl.ClientToScreen
 005177D2    lea         edx,[ebp-20]
 005177D5    mov         eax,dword ptr [ebp-4]
 005177D8    mov         eax,dword ptr [eax+16C];TXPStyleMenuButton.FActionClient:TActionClientItem
 005177DE    mov         eax,dword ptr [eax+18];TActionClientItem.FChildActionBar:TCustomActionBar
 005177E1    call        004CA6AC
 005177E6    mov         eax,dword ptr [ebp-14]
 005177E9    cmp         eax,dword ptr [ebp-0C]
>005177EC    jg          005177F5
 005177EE    xor         eax,eax
 005177F0    mov         dword ptr [ebp-0C],eax
>005177F3    jmp         005177FF
 005177F5    mov         eax,dword ptr [ebp-4]
 005177F8    mov         eax,dword ptr [eax+4C];TXPStyleMenuButton.Height:Integer
 005177FB    dec         eax
 005177FC    mov         dword ptr [ebp-0C],eax
 005177FF    mov         eax,dword ptr [ebp-4]
 00517802    call        0051541C
 00517807    call        TActionToolBar.GetColorMap
 0051780C    mov         edx,dword ptr [eax+34]
 0051780F    mov         eax,dword ptr [ebp-4]
 00517812    mov         eax,dword ptr [eax+160];TXPStyleMenuButton.................................................
 00517818    mov         eax,dword ptr [eax+10];TCanvas.Pen:TPen
 0051781B    call        TPen.SetColor
 00517820    mov         eax,dword ptr [ebp-4]
 00517823    mov         eax,dword ptr [eax+160];TXPStyleMenuButton.................................................
 00517829    mov         ecx,dword ptr [ebp-0C]
 0051782C    mov         edx,1
 00517831    call        TCanvas.MoveTo
 00517836    mov         eax,dword ptr [ebp-4]
 00517839    mov         edx,dword ptr [eax+48];TXPStyleMenuButton.Width:Integer
 0051783C    dec         edx
 0051783D    mov         eax,dword ptr [ebp-4]
 00517840    mov         eax,dword ptr [eax+160];TXPStyleMenuButton.................................................
 00517846    mov         ecx,dword ptr [ebp-0C]
 00517849    call        TCanvas.LineTo
 0051784E    push        0FF
 00517850    push        0FF
 00517852    mov         eax,dword ptr [ebp-8]
 00517855    push        eax
 00517856    call        user32.InflateRect
>0051785B    jmp         00517870
 0051785D    mov         eax,dword ptr [ebp-4]
 00517860    cmp         byte ptr [eax+1AB],0;TXPStyleMenuButton.FMouseInControl:Boolean
>00517867    je          00517870
 00517869    push        ebp
 0051786A    call        005175EC
 0051786F    pop         ecx
 00517870    mov         edx,dword ptr [ebp-8]
 00517873    mov         eax,dword ptr [ebp-4]
 00517876    call        004FC078
 0051787B    mov         esp,ebp
 0051787D    pop         ebp
 0051787E    ret
end;*}

//00517880
{*procedure sub_00517880(?:?; ?:?; ?:?);
begin
 00517880    push        ebp
 00517881    mov         ebp,esp
 00517883    add         esp,0FFFFFFF4
 00517886    mov         dword ptr [ebp-0C],ecx
 00517889    mov         dword ptr [ebp-8],edx
 0051788C    mov         dword ptr [ebp-4],eax
 0051788F    mov         eax,dword ptr [ebp+8]
 00517892    call        @LStrAddRef
 00517897    xor         eax,eax
 00517899    push        ebp
 0051789A    push        5178DA
 0051789F    push        dword ptr fs:[eax]
 005178A2    mov         dword ptr fs:[eax],esp
 005178A5    push        0
 005178A7    push        1
 005178A9    mov         eax,dword ptr [ebp-8]
 005178AC    push        eax
 005178AD    call        user32.OffsetRect
 005178B2    mov         eax,dword ptr [ebp+8]
 005178B5    push        eax
 005178B6    mov         ecx,dword ptr [ebp-0C]
 005178B9    mov         edx,dword ptr [ebp-8]
 005178BC    mov         eax,dword ptr [ebp-4]
 005178BF    call        005081F8
 005178C4    xor         eax,eax
 005178C6    pop         edx
 005178C7    pop         ecx
 005178C8    pop         ecx
 005178C9    mov         dword ptr fs:[eax],edx
 005178CC    push        5178E1
 005178D1    lea         eax,[ebp+8]
 005178D4    call        @LStrClr
 005178D9    ret
>005178DA    jmp         @HandleFinally
>005178DF    jmp         005178D1
 005178E1    mov         esp,ebp
 005178E3    pop         ebp
 005178E4    ret         4
end;*}

//005178E8
constructor TXPStylePopupMenu.Create(AOwner:TComponent);
begin
{*
 005178E8    push        ebp
 005178E9    mov         ebp,esp
 005178EB    add         esp,0FFFFFFF4
 005178EE    test        dl,dl
>005178F0    je          005178FA
 005178F2    add         esp,0FFFFFFF0
 005178F5    call        @ClassCreate
 005178FA    mov         dword ptr [ebp-0C],ecx
 005178FD    mov         byte ptr [ebp-5],dl
 00517900    mov         dword ptr [ebp-4],eax
 00517903    mov         ecx,dword ptr [ebp-0C]
 00517906    xor         edx,edx
 00517908    mov         eax,dword ptr [ebp-4]
 0051790B    call        TCustomActionPopupMenu.Create
 00517910    xor         edx,edx
 00517912    mov         eax,dword ptr [ebp-4]
 00517915    call        TActionToolBar.SetVertMargin
 0051791A    mov         eax,dword ptr [ebp-4]
 0051791D    cmp         byte ptr [ebp-5],0
>00517921    je          00517932
 00517923    call        @AfterConstruction
 00517928    pop         dword ptr fs:[0]
 0051792F    add         esp,0C
 00517932    mov         eax,dword ptr [ebp-4]
 00517935    mov         esp,ebp
 00517937    pop         ebp
 00517938    ret
*}
end;

//0051793C
destructor TXPStylePopupMenu.Destroy;
begin
{*
 0051793C    push        ebp
 0051793D    mov         ebp,esp
 0051793F    add         esp,0FFFFFFF8
 00517942    call        @BeforeDestruction
 00517947    mov         byte ptr [ebp-5],dl
 0051794A    mov         dword ptr [ebp-4],eax
 0051794D    mov         eax,dword ptr [ebp-4]
 00517950    add         eax,318;TXPStylePopupMenu.........FBtnShadow:TShadowWindow
 00517955    call        FreeAndNil
 0051795A    mov         dl,byte ptr [ebp-5]
 0051795D    and         dl,0FC
 00517960    mov         eax,dword ptr [ebp-4]
 00517963    call        TCustomActionPopupMenu.Destroy
 00517968    cmp         byte ptr [ebp-5],0
>0051796C    jle         00517976
 0051796E    mov         eax,dword ptr [ebp-4]
 00517971    call        @ClassDestroy
 00517976    pop         ecx
 00517977    pop         ecx
 00517978    pop         ebp
 00517979    ret
*}
end;

//0051797C
procedure sub_0051797C;
begin
{*
 0051797C    push        ebp
 0051797D    mov         ebp,esp
 0051797F    push        ecx
 00517980    mov         dword ptr [ebp-4],eax
 00517983    mov         eax,dword ptr [ebp-4]
 00517986    call        005050E0
 0051798B    mov         eax,dword ptr [ebp-4]
 0051798E    cmp         byte ptr [eax+314],0;TXPStylePopupMenu.FShadow:Boolean
>00517995    je          00517A39
 0051799B    mov         eax,dword ptr [ebp-4]
 0051799E    mov         edx,dword ptr [eax]
 005179A0    call        dword ptr [edx+104];TXPStylePopupMenu.sub_0050226C
 005179A6    test        al,al
>005179A8    jne         00517A39
 005179AE    mov         eax,dword ptr [ebp-4]
 005179B1    cmp         dword ptr [eax+210],0;TXPStylePopupMenu.FActionClient:TActionClient
>005179B8    je          00517A13
 005179BA    mov         eax,dword ptr [ebp-4]
 005179BD    mov         eax,dword ptr [eax+210];TXPStylePopupMenu.FActionClient:TActionClient
 005179C3    mov         edx,dword ptr ds:[509710];TActionClientItem
 005179C9    call        @IsClass
 005179CE    test        al,al
>005179D0    je          00517A13
 005179D2    mov         eax,dword ptr [ebp-4]
 005179D5    mov         eax,dword ptr [eax+210];TXPStylePopupMenu.FActionClient:TActionClient
 005179DB    mov         eax,dword ptr [eax+40]
 005179DE    mov         edx,dword ptr ds:[5007B4];TCustomMenuButton
 005179E4    call        @IsClass
 005179E9    test        al,al
>005179EB    je          00517A13
 005179ED    mov         eax,dword ptr [ebp-4]
 005179F0    cmp         dword ptr [eax+318],0;TXPStylePopupMenu..........FBtnShadow:TShadowWindow
>005179F7    jne         00517A13
 005179F9    push        0
 005179FB    mov         ecx,dword ptr [ebp-4]
 005179FE    mov         dl,1
 00517A00    mov         eax,[004F9738];TShadowWindow
 00517A05    call        TShadowWindow.Create;TShadowWindow.Create
 00517A0A    mov         edx,dword ptr [ebp-4]
 00517A0D    mov         dword ptr [edx+318],eax;TXPStylePopupMenu...........FBtnShadow:TShadowWindow
 00517A13    mov         eax,dword ptr [ebp-4]
 00517A16    cmp         dword ptr [eax+318],0;TXPStylePopupMenu............FBtnShadow:TShadowWindow
>00517A1D    je          00517A39
 00517A1F    mov         eax,dword ptr [ebp-4]
 00517A22    mov         eax,dword ptr [eax+210];TXPStylePopupMenu.FActionClient:TActionClient
 00517A28    mov         edx,dword ptr [eax+40]
 00517A2B    mov         eax,dword ptr [ebp-4]
 00517A2E    mov         eax,dword ptr [eax+318];TXPStylePopupMenu.............FBtnShadow:TShadowWindow
 00517A34    call        004F9AD4
 00517A39    pop         ecx
 00517A3A    pop         ebp
 00517A3B    ret
*}
end;

//00517A3C
{*function sub_00517A3C:?;
begin
 00517A3C    push        ebp
 00517A3D    mov         ebp,esp
 00517A3F    add         esp,0FFFFFFF8
 00517A42    mov         dword ptr [ebp-4],eax
 00517A45    mov         eax,[00516160];TXPStyleExpandBtn
 00517A4A    mov         dword ptr [ebp-8],eax
 00517A4D    mov         eax,dword ptr [ebp-8]
 00517A50    pop         ecx
 00517A51    pop         ecx
 00517A52    pop         ebp
 00517A53    ret
end;*}

//00517A54
procedure sub_00517A54;
begin
{*
 00517A54    push        ebp
 00517A55    mov         ebp,esp
 00517A57    push        ecx
 00517A58    mov         dword ptr [ebp-4],eax
 00517A5B    mov         eax,dword ptr [ebp-4]
 00517A5E    call        00505174
 00517A63    mov         eax,dword ptr [ebp-4]
 00517A66    cmp         dword ptr [eax+318],0;TXPStylePopupMenu..............FBtnShadow:TShadowWindow
>00517A6D    je          00517A7D
 00517A6F    mov         eax,dword ptr [ebp-4]
 00517A72    mov         eax,dword ptr [eax+318];TXPStylePopupMenu...............FBtnShadow:TShadowWindow
 00517A78    call        004CB768
 00517A7D    pop         ecx
 00517A7E    pop         ebp
 00517A7F    ret
*}
end;

//00517A80
{*procedure sub_00517A80(?:?);
begin
 00517A80    push        ebp
 00517A81    mov         ebp,esp
 00517A83    add         esp,0FFFFFFBC
 00517A86    push        ebx
 00517A87    mov         dword ptr [ebp-8],edx
 00517A8A    mov         dword ptr [ebp-4],eax
 00517A8D    lea         eax,[ebp-24]
 00517A90    push        eax
 00517A91    mov         eax,dword ptr [ebp-4]
 00517A94    call        TWinControl.GetHandle
 00517A99    push        eax
 00517A9A    call        user32.GetClientRect
 00517A9F    lea         eax,[ebp-34]
 00517AA2    push        eax
 00517AA3    mov         eax,dword ptr [ebp-4]
 00517AA6    call        TWinControl.GetHandle
 00517AAB    push        eax
 00517AAC    call        user32.GetWindowRect
 00517AB1    push        2
 00517AB3    lea         eax,[ebp-34]
 00517AB6    push        eax
 00517AB7    mov         eax,dword ptr [ebp-4]
 00517ABA    call        TWinControl.GetHandle
 00517ABF    push        eax
 00517AC0    push        0
 00517AC2    call        user32.MapWindowPoints
 00517AC7    mov         eax,dword ptr [ebp-30]
 00517ACA    neg         eax
 00517ACC    push        eax
 00517ACD    mov         eax,dword ptr [ebp-34]
 00517AD0    neg         eax
 00517AD2    push        eax
 00517AD3    lea         eax,[ebp-24]
 00517AD6    push        eax
 00517AD7    call        user32.OffsetRect
 00517ADC    mov         eax,dword ptr [ebp-18]
 00517ADF    push        eax
 00517AE0    mov         eax,dword ptr [ebp-1C]
 00517AE3    push        eax
 00517AE4    mov         eax,dword ptr [ebp-20]
 00517AE7    push        eax
 00517AE8    mov         eax,dword ptr [ebp-24]
 00517AEB    push        eax
 00517AEC    mov         eax,dword ptr [ebp-8]
 00517AEF    push        eax
 00517AF0    call        gdi32.ExcludeClipRect
 00517AF5    mov         eax,dword ptr [ebp-30]
 00517AF8    neg         eax
 00517AFA    push        eax
 00517AFB    mov         eax,dword ptr [ebp-34]
 00517AFE    neg         eax
 00517B00    push        eax
 00517B01    lea         eax,[ebp-34]
 00517B04    push        eax
 00517B05    call        user32.OffsetRect
 00517B0A    mov         eax,dword ptr [ebp-4]
 00517B0D    mov         eax,dword ptr [eax+21C];TXPStylePopupMenu.FCanvas:TCanvas
 00517B13    call        TCanvas.GetHandle
 00517B18    mov         dword ptr [ebp-0C],eax
 00517B1B    xor         eax,eax
 00517B1D    push        ebp
 00517B1E    push        517DDE
 00517B23    push        dword ptr fs:[eax]
 00517B26    mov         dword ptr fs:[eax],esp
 00517B29    mov         eax,dword ptr [ebp-4]
 00517B2C    mov         eax,dword ptr [eax+21C];TXPStylePopupMenu.FCanvas:TCanvas
 00517B32    mov         edx,dword ptr [ebp-8]
 00517B35    call        TCanvas.SetHandle
 00517B3A    mov         eax,dword ptr [ebp-4]
 00517B3D    mov         eax,dword ptr [eax+21C];TXPStylePopupMenu.FCanvas:TCanvas
 00517B43    mov         eax,dword ptr [eax+10];TCanvas.Pen:TPen
 00517B46    mov         edx,1
 00517B4B    call        TPen.SetWidth
 00517B50    mov         eax,dword ptr [ebp-4]
 00517B53    call        TActionToolBar.GetColorMap
 00517B58    mov         edx,dword ptr [eax+7C]
 00517B5B    mov         eax,dword ptr [ebp-4]
 00517B5E    mov         eax,dword ptr [eax+21C];TXPStylePopupMenu.FCanvas:TCanvas
 00517B64    mov         eax,dword ptr [eax+10];TCanvas.Pen:TPen
 00517B67    call        TPen.SetColor
 00517B6C    mov         eax,dword ptr [ebp-4]
 00517B6F    mov         eax,dword ptr [eax+21C];TXPStylePopupMenu.FCanvas:TCanvas
 00517B75    mov         ecx,dword ptr [ebp-30]
 00517B78    mov         edx,dword ptr [ebp-2C]
 00517B7B    call        TCanvas.MoveTo
 00517B80    mov         eax,dword ptr [ebp-4]
 00517B83    mov         eax,dword ptr [eax+21C];TXPStylePopupMenu.FCanvas:TCanvas
 00517B89    mov         ecx,dword ptr [ebp-30]
 00517B8C    mov         edx,dword ptr [ebp-34]
 00517B8F    call        TCanvas.LineTo
 00517B94    mov         eax,dword ptr [ebp-4]
 00517B97    mov         eax,dword ptr [eax+21C];TXPStylePopupMenu.FCanvas:TCanvas
 00517B9D    mov         ecx,dword ptr [ebp-28]
 00517BA0    mov         edx,dword ptr [ebp-34]
 00517BA3    call        TCanvas.LineTo
 00517BA8    mov         eax,dword ptr [ebp-4]
 00517BAB    call        TActionToolBar.GetColorMap
 00517BB0    mov         edx,dword ptr [eax+78]
 00517BB3    mov         eax,dword ptr [ebp-4]
 00517BB6    mov         eax,dword ptr [eax+21C];TXPStylePopupMenu.FCanvas:TCanvas
 00517BBC    mov         eax,dword ptr [eax+10];TCanvas.Pen:TPen
 00517BBF    call        TPen.SetColor
 00517BC4    mov         ecx,dword ptr [ebp-30]
 00517BC7    inc         ecx
 00517BC8    mov         edx,dword ptr [ebp-2C]
 00517BCB    dec         edx
 00517BCC    mov         eax,dword ptr [ebp-4]
 00517BCF    mov         eax,dword ptr [eax+21C];TXPStylePopupMenu.FCanvas:TCanvas
 00517BD5    call        TCanvas.MoveTo
 00517BDA    mov         ecx,dword ptr [ebp-30]
 00517BDD    inc         ecx
 00517BDE    mov         edx,dword ptr [ebp-34]
 00517BE1    inc         edx
 00517BE2    mov         eax,dword ptr [ebp-4]
 00517BE5    mov         eax,dword ptr [eax+21C];TXPStylePopupMenu.FCanvas:TCanvas
 00517BEB    call        TCanvas.LineTo
 00517BF0    mov         ecx,dword ptr [ebp-28]
 00517BF3    sub         ecx,2
 00517BF6    mov         edx,dword ptr [ebp-34]
 00517BF9    inc         edx
 00517BFA    mov         eax,dword ptr [ebp-4]
 00517BFD    mov         eax,dword ptr [eax+21C];TXPStylePopupMenu.FCanvas:TCanvas
 00517C03    call        TCanvas.LineTo
 00517C08    mov         eax,dword ptr [ebp-4]
 00517C0B    call        TActionToolBar.GetColorMap
 00517C10    mov         edx,dword ptr [eax+84]
 00517C16    mov         eax,dword ptr [ebp-4]
 00517C19    mov         eax,dword ptr [eax+21C];TXPStylePopupMenu.FCanvas:TCanvas
 00517C1F    mov         eax,dword ptr [eax+10];TCanvas.Pen:TPen
 00517C22    call        TPen.SetColor
 00517C27    mov         edx,dword ptr [ebp-2C]
 00517C2A    dec         edx
 00517C2B    mov         eax,dword ptr [ebp-4]
 00517C2E    mov         eax,dword ptr [eax+21C];TXPStylePopupMenu.FCanvas:TCanvas
 00517C34    mov         ecx,dword ptr [ebp-30]
 00517C37    call        TCanvas.MoveTo
 00517C3C    mov         ecx,dword ptr [ebp-28]
 00517C3F    dec         ecx
 00517C40    mov         edx,dword ptr [ebp-2C]
 00517C43    dec         edx
 00517C44    mov         eax,dword ptr [ebp-4]
 00517C47    mov         eax,dword ptr [eax+21C];TXPStylePopupMenu.FCanvas:TCanvas
 00517C4D    call        TCanvas.LineTo
 00517C52    mov         ecx,dword ptr [ebp-28]
 00517C55    dec         ecx
 00517C56    mov         edx,dword ptr [ebp-34]
 00517C59    dec         edx
 00517C5A    mov         eax,dword ptr [ebp-4]
 00517C5D    mov         eax,dword ptr [eax+21C];TXPStylePopupMenu.FCanvas:TCanvas
 00517C63    call        TCanvas.LineTo
 00517C68    mov         eax,dword ptr [ebp-4]
 00517C6B    call        TActionToolBar.GetColorMap
 00517C70    mov         edx,dword ptr [eax+80]
 00517C76    mov         eax,dword ptr [ebp-4]
 00517C79    mov         eax,dword ptr [eax+21C];TXPStylePopupMenu.FCanvas:TCanvas
 00517C7F    mov         eax,dword ptr [eax+10];TCanvas.Pen:TPen
 00517C82    call        TPen.SetColor
 00517C87    mov         ecx,dword ptr [ebp-30]
 00517C8A    inc         ecx
 00517C8B    mov         edx,dword ptr [ebp-2C]
 00517C8E    sub         edx,2
 00517C91    mov         eax,dword ptr [ebp-4]
 00517C94    mov         eax,dword ptr [eax+21C];TXPStylePopupMenu.FCanvas:TCanvas
 00517C9A    call        TCanvas.MoveTo
 00517C9F    mov         ecx,dword ptr [ebp-28]
 00517CA2    sub         ecx,2
 00517CA5    mov         edx,dword ptr [ebp-2C]
 00517CA8    sub         edx,2
 00517CAB    mov         eax,dword ptr [ebp-4]
 00517CAE    mov         eax,dword ptr [eax+21C];TXPStylePopupMenu.FCanvas:TCanvas
 00517CB4    call        TCanvas.LineTo
 00517CB9    mov         ecx,dword ptr [ebp-28]
 00517CBC    sub         ecx,2
 00517CBF    mov         eax,dword ptr [ebp-4]
 00517CC2    mov         eax,dword ptr [eax+21C];TXPStylePopupMenu.FCanvas:TCanvas
 00517CC8    mov         edx,dword ptr [ebp-34]
 00517CCB    call        TCanvas.LineTo
 00517CD0    mov         eax,dword ptr [ebp-4]
 00517CD3    cmp         dword ptr [eax+210],0;TXPStylePopupMenu.FActionClient:TActionClient
>00517CDA    je          00517DBF
 00517CE0    mov         eax,dword ptr [ebp-4]
 00517CE3    call        TActionToolBar.GetColorMap
 00517CE8    mov         ebx,dword ptr [eax+34]
 00517CEB    mov         eax,dword ptr [ebp-4]
 00517CEE    call        TActionToolBar.GetColorMap
 00517CF3    cmp         ebx,dword ptr [eax+7C]
>00517CF6    je          00517DBF
 00517CFC    mov         eax,dword ptr [ebp-4]
 00517CFF    mov         eax,dword ptr [eax+2AC];TXPStylePopupMenu.FParentControl:TCustomActionControl
 00517D05    mov         edx,dword ptr ds:[515DB8];TXPStyleMenuButton
 00517D0B    call        @IsClass
 00517D10    test        al,al
>00517D12    je          00517DBF
 00517D18    lea         edx,[ebp-44]
 00517D1B    mov         eax,dword ptr [ebp-4]
 00517D1E    mov         eax,dword ptr [eax+2AC];TXPStylePopupMenu.FParentControl:TCustomActionControl
 00517D24    call        004CA6AC
 00517D29    lea         edx,[ebp-44]
 00517D2C    lea         ecx,[ebp-14]
 00517D2F    mov         eax,dword ptr [ebp-4]
 00517D32    mov         eax,dword ptr [eax+2AC];TXPStylePopupMenu.FParentControl:TCustomActionControl
 00517D38    mov         eax,dword ptr [eax+30];TCustomActionControl.FParent:TWinControl
 00517D3B    call        TControl.ClientToScreen
 00517D40    lea         edx,[ebp-44]
 00517D43    mov         eax,dword ptr [ebp-4]
 00517D46    call        004CA6AC
 00517D4B    mov         eax,dword ptr [ebp-38]
 00517D4E    cmp         eax,dword ptr [ebp-10]
>00517D51    jg          00517D5C
 00517D53    mov         eax,dword ptr [ebp-28]
 00517D56    dec         eax
 00517D57    mov         dword ptr [ebp-10],eax
>00517D5A    jmp         00517D61
 00517D5C    xor         eax,eax
 00517D5E    mov         dword ptr [ebp-10],eax
 00517D61    mov         eax,dword ptr [ebp-4]
 00517D64    mov         edx,dword ptr [ebp-14]
 00517D67    sub         edx,dword ptr [eax+40]
 00517D6A    inc         edx
 00517D6B    mov         eax,dword ptr [ebp-4]
 00517D6E    mov         eax,dword ptr [eax+21C];TXPStylePopupMenu.FCanvas:TCanvas
 00517D74    mov         ecx,dword ptr [ebp-10]
 00517D77    call        TCanvas.MoveTo
 00517D7C    mov         eax,dword ptr [ebp-4]
 00517D7F    call        TActionToolBar.GetColorMap
 00517D84    mov         edx,dword ptr [eax+34]
 00517D87    mov         eax,dword ptr [ebp-4]
 00517D8A    mov         eax,dword ptr [eax+21C];TXPStylePopupMenu.FCanvas:TCanvas
 00517D90    mov         eax,dword ptr [eax+10];TCanvas.Pen:TPen
 00517D93    call        TPen.SetColor
 00517D98    mov         eax,dword ptr [ebp-4]
 00517D9B    mov         edx,dword ptr [ebp-14]
 00517D9E    sub         edx,dword ptr [eax+40]
 00517DA1    mov         eax,dword ptr [ebp-4]
 00517DA4    mov         eax,dword ptr [eax+2AC];TXPStylePopupMenu.FParentControl:TCustomActionControl
 00517DAA    add         edx,dword ptr [eax+48];TCustomActionControl.Width:Integer
 00517DAD    dec         edx
 00517DAE    mov         eax,dword ptr [ebp-4]
 00517DB1    mov         eax,dword ptr [eax+21C];TXPStylePopupMenu.FCanvas:TCanvas
 00517DB7    mov         ecx,dword ptr [ebp-10]
 00517DBA    call        TCanvas.LineTo
 00517DBF    xor         eax,eax
 00517DC1    pop         edx
 00517DC2    pop         ecx
 00517DC3    pop         ecx
 00517DC4    mov         dword ptr fs:[eax],edx
 00517DC7    push        517DE5
 00517DCC    mov         eax,dword ptr [ebp-4]
 00517DCF    mov         eax,dword ptr [eax+21C];TXPStylePopupMenu.FCanvas:TCanvas
 00517DD5    mov         edx,dword ptr [ebp-0C]
 00517DD8    call        TCanvas.SetHandle
 00517DDD    ret
>00517DDE    jmp         @HandleFinally
>00517DE3    jmp         00517DCC
 00517DE5    pop         ebx
 00517DE6    mov         esp,ebp
 00517DE8    pop         ebp
 00517DE9    ret
end;*}

//00517DEC
{*procedure sub_00517DEC(?:?; ?:?);
begin
 00517DEC    push        ebp
 00517DED    mov         ebp,esp
 00517DEF    add         esp,0FFFFFFE4
 00517DF2    mov         dword ptr [ebp-0C],ecx
 00517DF5    mov         dword ptr [ebp-8],edx
 00517DF8    mov         dword ptr [ebp-4],eax
 00517DFB    mov         ecx,dword ptr [ebp-0C]
 00517DFE    mov         edx,dword ptr [ebp-8]
 00517E01    mov         eax,dword ptr [ebp-4]
 00517E04    call        005045B0
 00517E09    mov         eax,dword ptr [ebp-0C]
 00517E0C    mov         edx,dword ptr ds:[500604];TCustomMenuItem
 00517E12    call        @IsClass
 00517E17    test        al,al
>00517E19    je          00517E50
 00517E1B    lea         edx,[ebp-1C]
 00517E1E    mov         eax,dword ptr [ebp-0C]
 00517E21    mov         eax,dword ptr [eax+30]
 00517E24    call        004CA6AC
 00517E29    mov         eax,dword ptr [ebp-1C]
 00517E2C    mov         edx,dword ptr [ebp-4]
 00517E2F    cmp         eax,dword ptr [edx+40];TXPStylePopupMenu.Left:Integer
>00517E32    jge         00517E50
 00517E34    lea         edx,[ebp-1C]
 00517E37    mov         eax,dword ptr [ebp-0C]
 00517E3A    mov         eax,dword ptr [eax+30]
 00517E3D    call        004CA6AC
 00517E42    mov         edx,dword ptr [ebp-14]
 00517E45    dec         edx
 00517E46    mov         eax,dword ptr [ebp-4]
 00517E49    call        TTabSheet.SetLeft
>00517E4E    jmp         00517E87
 00517E50    mov         eax,dword ptr [ebp-0C]
 00517E53    mov         edx,dword ptr ds:[5007B4];TCustomMenuButton
 00517E59    call        @IsClass
 00517E5E    test        al,al
>00517E60    je          00517E87
 00517E62    lea         edx,[ebp-1C]
 00517E65    mov         eax,dword ptr [ebp-0C]
 00517E68    call        004CA6AC
 00517E6D    mov         eax,dword ptr [ebp-1C]
 00517E70    mov         edx,dword ptr [ebp-4]
 00517E73    cmp         eax,dword ptr [edx+40];TXPStylePopupMenu.Left:Integer
>00517E76    jge         00517E87
 00517E78    mov         eax,dword ptr [ebp-4]
 00517E7B    mov         edx,dword ptr [eax+40];TXPStylePopupMenu.Left:Integer
 00517E7E    dec         edx
 00517E7F    mov         eax,dword ptr [ebp-4]
 00517E82    call        TTabSheet.SetLeft
 00517E87    mov         esp,ebp
 00517E89    pop         ebp
 00517E8A    ret
end;*}

//00517E8C
procedure TXPStylePopupMenu.sub_004CC91C;
begin
{*
 00517E8C    push        ebp
 00517E8D    mov         ebp,esp
 00517E8F    push        ecx
 00517E90    mov         dword ptr [ebp-4],eax
 00517E93    mov         eax,dword ptr [ebp-4]
 00517E96    mov         eax,dword ptr [eax+2AC];TXPStylePopupMenu.FParentControl:TCustomActionControl
 00517E9C    mov         edx,dword ptr ds:[4FA6DC];TCustomButtonControl
 00517EA2    call        @IsClass
 00517EA7    test        al,al
>00517EA9    je          00517EB9
 00517EAB    mov         eax,dword ptr [ebp-4]
 00517EAE    mov         eax,dword ptr [eax+2AC];TXPStylePopupMenu.FParentControl:TCustomActionControl
 00517EB4    mov         edx,dword ptr [eax]
 00517EB6    call        dword ptr [edx+7C];TCustomActionControl.sub_004CB6E8
 00517EB9    mov         eax,dword ptr [ebp-4]
 00517EBC    call        TCustomActionPopupMenu.sub_004CC91C
 00517EC1    pop         ecx
 00517EC2    pop         ebp
 00517EC3    ret
*}
end;

//00517EC4
{*procedure sub_00517EC4(?:?);
begin
 00517EC4    push        ebp
 00517EC5    mov         ebp,esp
 00517EC7    add         esp,0FFFFFFE8
 00517ECA    push        esi
 00517ECB    push        edi
 00517ECC    mov         dword ptr [ebp-8],edx
 00517ECF    mov         dword ptr [ebp-4],eax
 00517ED2    mov         eax,dword ptr [ebp-4]
 00517ED5    call        00503DDC
 00517EDA    call        TActionToolBar.GetColorMap
 00517EDF    mov         edx,dword ptr [eax+74]
 00517EE2    mov         eax,dword ptr [ebp-4]
 00517EE5    mov         eax,dword ptr [eax+160];TXPStyleExpandBtn..................................................
 00517EEB    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 00517EEE    call        TBrush.SetColor
 00517EF3    mov         edx,dword ptr [ebp-8]
 00517EF6    mov         eax,dword ptr [ebp-4]
 00517EF9    mov         eax,dword ptr [eax+160];TXPStyleExpandBtn..................................................
 00517EFF    call        TCanvas.FillRect
 00517F04    mov         eax,dword ptr [ebp-8]
 00517F07    mov         esi,eax
 00517F09    lea         edi,[ebp-18]
 00517F0C    movs        dword ptr [edi],dword ptr [esi]
 00517F0D    movs        dword ptr [edi],dword ptr [esi]
 00517F0E    movs        dword ptr [edi],dword ptr [esi]
 00517F0F    movs        dword ptr [edi],dword ptr [esi]
 00517F10    mov         dword ptr [ebp-10],18
 00517F17    mov         eax,dword ptr [ebp-4]
 00517F1A    call        00503DDC
 00517F1F    call        TActionToolBar.GetColorMap
 00517F24    mov         edx,dword ptr [eax+34]
 00517F27    mov         eax,dword ptr [ebp-4]
 00517F2A    mov         eax,dword ptr [eax+160];TXPStyleExpandBtn..................................................
 00517F30    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 00517F33    call        TBrush.SetColor
 00517F38    lea         edx,[ebp-18]
 00517F3B    mov         eax,dword ptr [ebp-4]
 00517F3E    mov         eax,dword ptr [eax+160];TXPStyleExpandBtn..................................................
 00517F44    call        TCanvas.FillRect
 00517F49    mov         eax,dword ptr [ebp-4]
 00517F4C    cmp         byte ptr [eax+1AE],2;TXPStyleExpandBtn.FState:TButtonState
>00517F53    je          00517F7C
 00517F55    mov         eax,dword ptr [ebp-4]
 00517F58    cmp         byte ptr [eax+1AD],0;TXPStyleExpandBtn.FFlat:Boolean
>00517F5F    je          00517F7C
 00517F61    mov         eax,dword ptr [ebp-4]
 00517F64    cmp         byte ptr [eax+1AB],0;TXPStyleExpandBtn.FMouseInControl:Boolean
>00517F6B    jne         00517F7C
 00517F6D    mov         eax,dword ptr [ebp-4]
 00517F70    mov         edx,dword ptr [eax]
 00517F72    call        dword ptr [edx+0C0];TXPStyleExpandBtn.sub_00515370
 00517F78    test        al,al
>00517F7A    je          00517FC8
 00517F7C    push        1
 00517F7E    push        0
 00517F80    mov         eax,dword ptr [ebp-8]
 00517F83    push        eax
 00517F84    call        user32.OffsetRect
 00517F89    push        0FC
 00517F8B    push        0FE
 00517F8D    mov         eax,dword ptr [ebp-8]
 00517F90    push        eax
 00517F91    call        user32.InflateRect
 00517F96    mov         eax,dword ptr [ebp-4]
 00517F99    call        00503DDC
 00517F9E    call        TActionToolBar.GetColorMap
 00517FA3    mov         edx,dword ptr [eax+68]
 00517FA6    mov         eax,dword ptr [ebp-4]
 00517FA9    mov         eax,dword ptr [eax+160];TXPStyleExpandBtn..................................................
 00517FAF    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 00517FB2    call        TBrush.SetColor
 00517FB7    mov         edx,dword ptr [ebp-8]
 00517FBA    mov         eax,dword ptr [ebp-4]
 00517FBD    mov         eax,dword ptr [eax+160];TXPStyleExpandBtn..................................................
 00517FC3    call        TCanvas.FillRect
 00517FC8    pop         edi
 00517FC9    pop         esi
 00517FCA    mov         esp,ebp
 00517FCC    pop         ebp
 00517FCD    ret
end;*}

//00517FD0
{*procedure sub_00517FD0(?:?; ?:?);
begin
 00517FD0    push        ebp
 00517FD1    mov         ebp,esp
 00517FD3    add         esp,0FFFFFFE8
 00517FD6    push        esi
 00517FD7    push        edi
 00517FD8    mov         esi,edx
 00517FDA    lea         edi,[ebp-14]
 00517FDD    movs        dword ptr [edi],dword ptr [esi]
 00517FDE    movs        dword ptr [edi],dword ptr [esi]
 00517FDF    movs        dword ptr [edi],dword ptr [esi]
 00517FE0    movs        dword ptr [edi],dword ptr [esi]
 00517FE1    mov         byte ptr [ebp-15],cl
 00517FE4    mov         dword ptr [ebp-4],eax
 00517FE7    mov         eax,dword ptr [ebp-4]
 00517FEA    mov         edx,dword ptr [eax]
 00517FEC    call        dword ptr [edx+50];TImage.GetEnabled
 00517FEF    test        al,al
>00517FF1    je          00518072
 00517FF3    mov         eax,dword ptr [ebp-4]
 00517FF6    cmp         byte ptr [eax+1AE],2;TXPStyleExpandBtn.FState:TButtonState
>00517FFD    je          00518026
 00517FFF    mov         eax,dword ptr [ebp-4]
 00518002    cmp         byte ptr [eax+1AD],0;TXPStyleExpandBtn.FFlat:Boolean
>00518009    je          00518026
 0051800B    mov         eax,dword ptr [ebp-4]
 0051800E    cmp         byte ptr [eax+1AB],0;TXPStyleExpandBtn.FMouseInControl:Boolean
>00518015    jne         00518026
 00518017    mov         eax,dword ptr [ebp-4]
 0051801A    mov         edx,dword ptr [eax]
 0051801C    call        dword ptr [edx+0C0];TXPStyleExpandBtn.sub_00515370
 00518022    test        al,al
>00518024    je          00518072
 00518026    push        1
 00518028    push        0
 0051802A    lea         eax,[ebp-14]
 0051802D    push        eax
 0051802E    call        user32.OffsetRect
 00518033    push        0FC
 00518035    push        0FE
 00518037    lea         eax,[ebp-14]
 0051803A    push        eax
 0051803B    call        user32.InflateRect
 00518040    mov         eax,dword ptr [ebp-4]
 00518043    call        0051541C
 00518048    call        TActionToolBar.GetColorMap
 0051804D    mov         edx,dword ptr [eax+38]
 00518050    mov         eax,dword ptr [ebp-4]
 00518053    mov         eax,dword ptr [eax+160];TXPStyleExpandBtn..................................................
 00518059    mov         eax,dword ptr [eax+10];TCanvas.Pen:TPen
 0051805C    call        TPen.SetColor
 00518061    lea         edx,[ebp-14]
 00518064    mov         eax,dword ptr [ebp-4]
 00518067    mov         eax,dword ptr [eax+160];TXPStyleExpandBtn..................................................
 0051806D    call        00487FD8
 00518072    pop         edi
 00518073    pop         esi
 00518074    mov         esp,ebp
 00518076    pop         ebp
 00518077    ret
end;*}

//00518078
{*procedure sub_00518078(?:?);
begin
 00518078    push        ebp
 00518079    mov         ebp,esp
 0051807B    add         esp,0FFFFFFF8
 0051807E    mov         dword ptr [ebp-8],edx
 00518081    mov         dword ptr [ebp-4],eax
 00518084    mov         eax,dword ptr [ebp-4]
 00518087    mov         edx,dword ptr [eax]
 00518089    call        dword ptr [edx+50];TImage.GetEnabled
 0051808C    test        al,al
>0051808E    je          00518124
 00518094    mov         eax,dword ptr [ebp-4]
 00518097    call        0051541C
 0051809C    mov         edx,dword ptr [eax]
 0051809E    call        dword ptr [edx+104]
 005180A4    test        al,al
>005180A6    jne         00518124
 005180A8    mov         eax,dword ptr [ebp-4]
 005180AB    cmp         byte ptr [eax+1AB],0;TXPStyleButton.FMouseInControl:Boolean
>005180B2    jne         005180C3
 005180B4    mov         eax,dword ptr [ebp-4]
 005180B7    mov         edx,dword ptr [eax]
 005180B9    call        dword ptr [edx+0C0];TXPStyleButton.sub_00515370
 005180BF    test        al,al
>005180C1    je          00518101
 005180C3    mov         eax,dword ptr [ebp-4]
 005180C6    cmp         dword ptr [eax+16C],0;TXPStyleButton.FActionClient:TActionClientItem
>005180CD    je          00518101
 005180CF    mov         eax,dword ptr [ebp-4]
 005180D2    mov         eax,dword ptr [eax+16C];TXPStyleButton.FActionClient:TActionClientItem
 005180D8    cmp         byte ptr [eax+50],0;TActionClientItem.FSeparator:Boolean
>005180DC    jne         00518101
 005180DE    mov         eax,dword ptr [ebp-4]
 005180E1    call        0051541C
 005180E6    call        TActionToolBar.GetColorMap
 005180EB    mov         edx,dword ptr [eax+68]
 005180EE    mov         eax,dword ptr [ebp-4]
 005180F1    mov         eax,dword ptr [eax+160];TXPStyleButton.....................................................
 005180F7    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 005180FA    call        TBrush.SetColor
>005180FF    jmp         00518145
 00518101    mov         eax,dword ptr [ebp-4]
 00518104    call        0051541C
 00518109    call        TActionToolBar.GetColorMap
 0051810E    mov         edx,dword ptr [eax+40]
 00518111    mov         eax,dword ptr [ebp-4]
 00518114    mov         eax,dword ptr [eax+160];TXPStyleButton.....................................................
 0051811A    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 0051811D    call        TBrush.SetColor
>00518122    jmp         00518145
 00518124    mov         eax,dword ptr [ebp-4]
 00518127    call        0051541C
 0051812C    call        TActionToolBar.GetColorMap
 00518131    mov         edx,dword ptr [eax+40]
 00518134    mov         eax,dword ptr [ebp-4]
 00518137    mov         eax,dword ptr [eax+160];TXPStyleButton.....................................................
 0051813D    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 00518140    call        TBrush.SetColor
 00518145    mov         edx,dword ptr [ebp-8]
 00518148    mov         eax,dword ptr [ebp-4]
 0051814B    call        004FC078
 00518150    pop         ecx
 00518151    pop         ecx
 00518152    pop         ebp
 00518153    ret
end;*}

//00518154
{*procedure sub_00518154(?:?; ?:?);
begin
 00518154    push        ebp
 00518155    mov         ebp,esp
 00518157    add         esp,0FFFFFFE8
 0051815A    push        esi
 0051815B    push        edi
 0051815C    mov         esi,edx
 0051815E    lea         edi,[ebp-14]
 00518161    movs        dword ptr [edi],dword ptr [esi]
 00518162    movs        dword ptr [edi],dword ptr [esi]
 00518163    movs        dword ptr [edi],dword ptr [esi]
 00518164    movs        dword ptr [edi],dword ptr [esi]
 00518165    mov         byte ptr [ebp-15],cl
 00518168    mov         dword ptr [ebp-4],eax
 0051816B    mov         eax,dword ptr [ebp-4]
 0051816E    call        0051541C
 00518173    mov         edx,dword ptr [eax]
 00518175    call        dword ptr [edx+104]
 0051817B    test        al,al
>0051817D    jne         00518207
 00518183    mov         eax,dword ptr [ebp-4]
 00518186    mov         edx,dword ptr [eax]
 00518188    call        dword ptr [edx+50];TImage.GetEnabled
 0051818B    test        al,al
>0051818D    je          00518207
 0051818F    mov         eax,dword ptr [ebp-4]
 00518192    cmp         byte ptr [eax+1AE],2;TXPStyleButton.FState:TButtonState
>00518199    je          005181C2
 0051819B    mov         eax,dword ptr [ebp-4]
 0051819E    cmp         byte ptr [eax+1AD],0;TXPStyleButton.FFlat:Boolean
>005181A5    je          005181C2
 005181A7    mov         eax,dword ptr [ebp-4]
 005181AA    cmp         byte ptr [eax+1AB],0;TXPStyleButton.FMouseInControl:Boolean
>005181B1    jne         005181C2
 005181B3    mov         eax,dword ptr [ebp-4]
 005181B6    mov         edx,dword ptr [eax]
 005181B8    call        dword ptr [edx+0C0];TXPStyleButton.sub_00515370
 005181BE    test        al,al
>005181C0    je          00518207
 005181C2    mov         eax,dword ptr [ebp-4]
 005181C5    call        0051541C
 005181CA    call        TActionToolBar.GetColorMap
 005181CF    mov         edx,dword ptr [eax+38]
 005181D2    mov         eax,dword ptr [ebp-4]
 005181D5    mov         eax,dword ptr [eax+160];TXPStyleButton.....................................................
 005181DB    mov         eax,dword ptr [eax+10];TCanvas.Pen:TPen
 005181DE    call        TPen.SetColor
 005181E3    mov         eax,dword ptr [ebp-4]
 005181E6    mov         eax,dword ptr [eax+160];TXPStyleButton.....................................................
 005181EC    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 005181EF    mov         dl,1
 005181F1    call        TBrush.SetStyle
 005181F6    lea         edx,[ebp-14]
 005181F9    mov         eax,dword ptr [ebp-4]
 005181FC    mov         eax,dword ptr [eax+160];TXPStyleButton.....................................................
 00518202    call        00487FD8
 00518207    pop         edi
 00518208    pop         esi
 00518209    mov         esp,ebp
 0051820B    pop         ebp
 0051820C    ret
end;*}

//00518210
{*procedure sub_00518210(?:?);
begin
 00518210    push        ebp
 00518211    mov         ebp,esp
 00518213    add         esp,0FFFFFFE4
 00518216    mov         dword ptr [ebp-8],edx
 00518219    mov         dword ptr [ebp-4],eax
 0051821C    mov         eax,dword ptr [ebp-8]
 0051821F    mov         edx,dword ptr [eax]
 00518221    mov         dword ptr [ebp-18],edx
 00518224    mov         edx,dword ptr [eax+4]
 00518227    mov         dword ptr [ebp-14],edx
 0051822A    mov         eax,dword ptr [ebp-4]
 0051822D    call        0051541C
 00518232    mov         edx,dword ptr [eax]
 00518234    call        dword ptr [edx+104]
 0051823A    test        al,al
>0051823C    jne         005183CD
 00518242    mov         eax,dword ptr [ebp-4]
 00518245    cmp         byte ptr [eax+1AB],0;TXPStyleButton.FMouseInControl:Boolean
>0051824C    je          005183CD
 00518252    mov         eax,dword ptr [ebp-4]
 00518255    mov         edx,dword ptr [eax]
 00518257    call        dword ptr [edx+0C0];TXPStyleButton.sub_00515370
 0051825D    test        al,al
>0051825F    jne         005183CD
 00518265    mov         eax,dword ptr [ebp-4]
 00518268    mov         edx,dword ptr [eax]
 0051826A    call        dword ptr [edx+50];TImage.GetEnabled
 0051826D    test        al,al
>0051826F    je          005183CD
 00518275    mov         eax,dword ptr [ebp-4]
 00518278    mov         eax,dword ptr [eax+16C];TXPStyleButton.FActionClient:TActionClientItem
 0051827E    call        0050E94C
 00518283    test        al,al
>00518285    je          005183CD
 0051828B    mov         eax,dword ptr [ebp-4]
 0051828E    mov         eax,dword ptr [eax+160];TXPStyleButton.....................................................
 00518294    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 00518297    call        TBrush.GetColor
 0051829C    mov         dword ptr [ebp-0C],eax
 0051829F    mov         dl,1
 005182A1    mov         eax,[00485C6C];TBitmap
 005182A6    call        TBitmap.Create;TBitmap.Create
 005182AB    mov         dword ptr [ebp-10],eax
 005182AE    xor         eax,eax
 005182B0    push        ebp
 005182B1    push        5183B1
 005182B6    push        dword ptr fs:[eax]
 005182B9    mov         dword ptr fs:[eax],esp
 005182BC    mov         eax,dword ptr [ebp-4]
 005182BF    mov         eax,dword ptr [eax+16C];TXPStyleButton.FActionClient:TActionClientItem
 005182C5    call        TActionClientItem.GetAction
 005182CA    mov         eax,dword ptr [eax+5C]
 005182CD    mov         dword ptr [ebp-1C],eax
 005182D0    mov         eax,dword ptr [ebp-4]
 005182D3    mov         eax,dword ptr [eax+16C];TXPStyleButton.FActionClient:TActionClientItem
 005182D9    mov         edx,dword ptr [eax+58];TActionClientItem.ImageIndex:TImageIndex
 005182DC    mov         eax,dword ptr [ebp-1C]
 005182DF    mov         eax,dword ptr [eax+38]
 005182E2    mov         ecx,dword ptr [ebp-10]
 005182E5    call        004DCAE0
 005182EA    test        al,al
>005182EC    je          00518387
 005182F2    mov         eax,dword ptr [ebp-4]
 005182F5    call        0051541C
 005182FA    call        TActionToolBar.GetColorMap
 005182FF    mov         eax,dword ptr [eax+68]
 00518302    mov         edx,0FFFFFFCE
 00518307    call        004F9070
 0051830C    mov         edx,eax
 0051830E    mov         eax,dword ptr [ebp-4]
 00518311    mov         eax,dword ptr [eax+160];TXPStyleButton.....................................................
 00518317    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 0051831A    call        TBrush.SetColor
 0051831F    mov         eax,dword ptr [ebp-1C]
 00518322    mov         eax,dword ptr [eax+38]
 00518325    mov         edx,dword ptr [eax+34]
 00518328    mov         eax,dword ptr [ebp-10]
 0051832B    mov         ecx,dword ptr [eax]
 0051832D    call        dword ptr [ecx+40];TBitmap.sub_0048EB14
 00518330    mov         eax,dword ptr [ebp-1C]
 00518333    mov         eax,dword ptr [eax+38]
 00518336    mov         edx,dword ptr [eax+34]
 00518339    mov         eax,dword ptr [ebp-10]
 0051833C    mov         ecx,dword ptr [eax]
 0051833E    call        dword ptr [ecx+34];TBitmap.sub_0048E6F4
 00518341    push        84
 00518346    push        0
 00518348    push        0
 0051834A    mov         eax,dword ptr [ebp-14]
 0051834D    inc         eax
 0051834E    push        eax
 0051834F    mov         eax,dword ptr [ebp-18]
 00518352    inc         eax
 00518353    push        eax
 00518354    push        0
 00518356    mov         eax,dword ptr [ebp-10]
 00518359    mov         edx,dword ptr [eax]
 0051835B    call        dword ptr [edx+64];TBitmap.sub_0048D584
 0051835E    push        eax
 0051835F    push        0
 00518361    mov         eax,dword ptr [ebp-4]
 00518364    mov         eax,dword ptr [eax+160];TXPStyleButton.....................................................
 0051836A    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 0051836D    call        TBrush.GetHandle
 00518372    push        eax
 00518373    mov         eax,dword ptr [ebp-4]
 00518376    mov         eax,dword ptr [eax+160];TXPStyleButton.....................................................
 0051837C    call        TCanvas.GetHandle
 00518381    push        eax
 00518382    call        user32.DrawStateA
 00518387    xor         eax,eax
 00518389    pop         edx
 0051838A    pop         ecx
 0051838B    pop         ecx
 0051838C    mov         dword ptr fs:[eax],edx
 0051838F    push        5183B8
 00518394    mov         eax,dword ptr [ebp-10]
 00518397    call        TObject.Free
 0051839C    mov         eax,dword ptr [ebp-4]
 0051839F    mov         eax,dword ptr [eax+160];TXPStyleButton.....................................................
 005183A5    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 005183A8    mov         edx,dword ptr [ebp-0C]
 005183AB    call        TBrush.SetColor
 005183B0    ret
>005183B1    jmp         @HandleFinally
>005183B6    jmp         00518394
 005183B8    mov         eax,dword ptr [ebp-4]
 005183BB    mov         edx,dword ptr [eax]
 005183BD    call        dword ptr [edx+0C0];TXPStyleButton.sub_00515370
 005183C3    test        al,al
>005183C5    jne         005183CD
 005183C7    dec         dword ptr [ebp-18]
 005183CA    dec         dword ptr [ebp-14]
 005183CD    mov         eax,dword ptr [ebp-4]
 005183D0    test        byte ptr [eax+1C],10;TXPStyleButton.FComponentState:TComponentState
>005183D4    jne         00518400
 005183D6    mov         eax,dword ptr [ebp-4]
 005183D9    cmp         byte ptr [eax+1AE],2;TXPStyleButton.FState:TButtonState
>005183E0    jne         00518400
 005183E2    mov         eax,dword ptr [ebp-4]
 005183E5    mov         edx,dword ptr [eax]
 005183E7    call        dword ptr [edx+0C0];TXPStyleButton.sub_00515370
 005183ED    test        al,al
>005183EF    jne         00518400
 005183F1    call        00516B14
 005183F6    test        al,al
>005183F8    je          00518400
 005183FA    inc         dword ptr [ebp-18]
 005183FD    inc         dword ptr [ebp-14]
 00518400    lea         edx,[ebp-18]
 00518403    mov         eax,dword ptr [ebp-4]
 00518406    call        00513B5C
 0051840B    mov         esp,ebp
 0051840D    pop         ebp
 0051840E    ret
end;*}

//00518410
{*procedure sub_00518410(?:?; ?:?; ?:?);
begin
 00518410    push        ebp
 00518411    mov         ebp,esp
 00518413    add         esp,0FFFFFFF4
 00518416    mov         dword ptr [ebp-0C],ecx
 00518419    mov         dword ptr [ebp-8],edx
 0051841C    mov         dword ptr [ebp-4],eax
 0051841F    mov         eax,dword ptr [ebp+8]
 00518422    call        @LStrAddRef
 00518427    xor         eax,eax
 00518429    push        ebp
 0051842A    push        5184A0
 0051842F    push        dword ptr fs:[eax]
 00518432    mov         dword ptr fs:[eax],esp
 00518435    mov         eax,dword ptr [ebp-4]
 00518438    cmp         byte ptr [eax+1AB],0;TXPStyleButton.FMouseInControl:Boolean
>0051843F    je          00518478
 00518441    mov         eax,dword ptr [ebp-4]
 00518444    call        0051541C
 00518449    call        TActionToolBar.GetColorMap
 0051844E    cmp         dword ptr [eax+5C],20000000
>00518455    je          00518478
 00518457    mov         eax,dword ptr [ebp-4]
 0051845A    call        0051541C
 0051845F    call        TActionToolBar.GetColorMap
 00518464    mov         edx,dword ptr [eax+5C]
 00518467    mov         eax,dword ptr [ebp-4]
 0051846A    mov         eax,dword ptr [eax+160];TXPStyleButton.....................................................
 00518470    mov         eax,dword ptr [eax+0C];TCanvas.Font:TFont
 00518473    call        TFont.SetColor
 00518478    mov         eax,dword ptr [ebp+8]
 0051847B    push        eax
 0051847C    mov         ecx,dword ptr [ebp-0C]
 0051847F    mov         edx,dword ptr [ebp-8]
 00518482    mov         eax,dword ptr [ebp-4]
 00518485    call        00514200
 0051848A    xor         eax,eax
 0051848C    pop         edx
 0051848D    pop         ecx
 0051848E    pop         ecx
 0051848F    mov         dword ptr fs:[eax],edx
 00518492    push        5184A7
 00518497    lea         eax,[ebp+8]
 0051849A    call        @LStrClr
 0051849F    ret
>005184A0    jmp         @HandleFinally
>005184A5    jmp         00518497
 005184A7    mov         esp,ebp
 005184A9    pop         ebp
 005184AA    ret         4
end;*}

//005184B0
{*procedure sub_005184B0(?:?);
begin
 005184B0    push        ebp
 005184B1    mov         ebp,esp
 005184B3    add         esp,0FFFFFFF8
 005184B6    mov         dword ptr [ebp-8],edx
 005184B9    mov         dword ptr [ebp-4],eax
 005184BC    mov         eax,dword ptr [ebp-4]
 005184BF    mov         edx,dword ptr [eax]
 005184C1    call        dword ptr [edx+50];TImage.GetEnabled
 005184C4    test        al,al
>005184C6    je          0051854D
 005184CC    mov         eax,dword ptr [ebp-4]
 005184CF    call        0051541C
 005184D4    mov         edx,dword ptr [eax]
 005184D6    call        dword ptr [edx+104]
 005184DC    test        al,al
>005184DE    jne         0051854D
 005184E0    mov         eax,dword ptr [ebp-4]
 005184E3    cmp         byte ptr [eax+1AB],0;TXPStyleDropDownBtn.FMouseInControl:Boolean
>005184EA    jne         005184FB
 005184EC    mov         eax,dword ptr [ebp-4]
 005184EF    mov         edx,dword ptr [eax]
 005184F1    call        dword ptr [edx+0C0];TXPStyleDropDownBtn.sub_00515370
 005184F7    test        al,al
>005184F9    je          0051852A
 005184FB    mov         eax,dword ptr [ebp-4]
 005184FE    cmp         dword ptr [eax+16C],0;TXPStyleDropDownBtn.FActionClient:TActionClientItem
>00518505    je          0051852A
 00518507    mov         eax,dword ptr [ebp-4]
 0051850A    call        0051541C
 0051850F    call        TActionToolBar.GetColorMap
 00518514    mov         edx,dword ptr [eax+68]
 00518517    mov         eax,dword ptr [ebp-4]
 0051851A    mov         eax,dword ptr [eax+160];TXPStyleDropDownBtn................................................
 00518520    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 00518523    call        TBrush.SetColor
>00518528    jmp         0051856E
 0051852A    mov         eax,dword ptr [ebp-4]
 0051852D    call        0051541C
 00518532    call        TActionToolBar.GetColorMap
 00518537    mov         edx,dword ptr [eax+40]
 0051853A    mov         eax,dword ptr [ebp-4]
 0051853D    mov         eax,dword ptr [eax+160];TXPStyleDropDownBtn................................................
 00518543    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 00518546    call        TBrush.SetColor
>0051854B    jmp         0051856E
 0051854D    mov         eax,dword ptr [ebp-4]
 00518550    call        0051541C
 00518555    call        TActionToolBar.GetColorMap
 0051855A    mov         edx,dword ptr [eax+40]
 0051855D    mov         eax,dword ptr [ebp-4]
 00518560    mov         eax,dword ptr [eax+160];TXPStyleDropDownBtn................................................
 00518566    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 00518569    call        TBrush.SetColor
 0051856E    mov         edx,dword ptr [ebp-8]
 00518571    mov         eax,dword ptr [ebp-4]
 00518574    call        004FC078
 00518579    pop         ecx
 0051857A    pop         ecx
 0051857B    pop         ebp
 0051857C    ret
end;*}

//00518580
{*procedure sub_00518580(?:?; ?:?);
begin
 00518580    push        ebp
 00518581    mov         ebp,esp
 00518583    add         esp,0FFFFFFE8
 00518586    push        esi
 00518587    push        edi
 00518588    mov         esi,edx
 0051858A    lea         edi,[ebp-14]
 0051858D    movs        dword ptr [edi],dword ptr [esi]
 0051858E    movs        dword ptr [edi],dword ptr [esi]
 0051858F    movs        dword ptr [edi],dword ptr [esi]
 00518590    movs        dword ptr [edi],dword ptr [esi]
 00518591    mov         byte ptr [ebp-15],cl
 00518594    mov         dword ptr [ebp-4],eax
 00518597    mov         eax,dword ptr [ebp-4]
 0051859A    mov         edx,dword ptr [eax]
 0051859C    call        dword ptr [edx+50];TImage.GetEnabled
 0051859F    test        al,al
>005185A1    je          00518634
 005185A7    mov         eax,dword ptr [ebp-4]
 005185AA    call        0051541C
 005185AF    mov         edx,dword ptr [eax]
 005185B1    call        dword ptr [edx+104]
 005185B7    test        al,al
>005185B9    jne         00518634
 005185BB    mov         eax,dword ptr [ebp-4]
 005185BE    cmp         byte ptr [eax+1AB],0;TXPStyleDropDownBtn.FMouseInControl:Boolean
>005185C5    jne         005185D6
 005185C7    mov         eax,dword ptr [ebp-4]
 005185CA    mov         edx,dword ptr [eax]
 005185CC    call        dword ptr [edx+0C0];TXPStyleDropDownBtn.sub_00515370
 005185D2    test        al,al
>005185D4    je          00518634
 005185D6    mov         eax,dword ptr [ebp-4]
 005185D9    cmp         dword ptr [eax+16C],0;TXPStyleDropDownBtn.FActionClient:TActionClientItem
>005185E0    je          00518634
 005185E2    mov         eax,dword ptr [ebp-4]
 005185E5    call        0051541C
 005185EA    call        TActionToolBar.GetColorMap
 005185EF    mov         edx,dword ptr [eax+38]
 005185F2    mov         eax,dword ptr [ebp-4]
 005185F5    mov         eax,dword ptr [eax+160];TXPStyleDropDownBtn................................................
 005185FB    mov         eax,dword ptr [eax+10];TCanvas.Pen:TPen
 005185FE    call        TPen.SetColor
 00518603    sub         dword ptr [ebp-0C],9
 00518607    lea         edx,[ebp-14]
 0051860A    mov         eax,dword ptr [ebp-4]
 0051860D    mov         eax,dword ptr [eax+160];TXPStyleDropDownBtn................................................
 00518613    call        00487FD8
 00518618    mov         eax,dword ptr [ebp-0C]
 0051861B    dec         eax
 0051861C    mov         dword ptr [ebp-14],eax
 0051861F    add         dword ptr [ebp-0C],9
 00518623    lea         edx,[ebp-14]
 00518626    mov         eax,dword ptr [ebp-4]
 00518629    mov         eax,dword ptr [eax+160];TXPStyleDropDownBtn................................................
 0051862F    call        00487FD8
 00518634    pop         edi
 00518635    pop         esi
 00518636    mov         esp,ebp
 00518638    pop         ebp
 00518639    ret
end;*}

//0051863C
{*procedure sub_0051863C(?:?);
begin
 0051863C    push        ebp
 0051863D    mov         ebp,esp
 0051863F    add         esp,0FFFFFFE4
 00518642    mov         dword ptr [ebp-8],edx
 00518645    mov         dword ptr [ebp-4],eax
 00518648    mov         eax,dword ptr [ebp-8]
 0051864B    mov         edx,dword ptr [eax]
 0051864D    mov         dword ptr [ebp-18],edx
 00518650    mov         edx,dword ptr [eax+4]
 00518653    mov         dword ptr [ebp-14],edx
 00518656    mov         eax,dword ptr [ebp-4]
 00518659    call        0051541C
 0051865E    mov         edx,dword ptr [eax]
 00518660    call        dword ptr [edx+104]
 00518666    test        al,al
>00518668    jne         005187F3
 0051866E    mov         eax,dword ptr [ebp-4]
 00518671    cmp         byte ptr [eax+1AB],0;TXPStyleDropDownBtn.FMouseInControl:Boolean
>00518678    je          005187F3
 0051867E    mov         eax,dword ptr [ebp-4]
 00518681    mov         edx,dword ptr [eax]
 00518683    call        dword ptr [edx+0C0];TXPStyleDropDownBtn.sub_00515370
 00518689    test        al,al
>0051868B    jne         005187F3
 00518691    mov         eax,dword ptr [ebp-4]
 00518694    mov         edx,dword ptr [eax]
 00518696    call        dword ptr [edx+50];TImage.GetEnabled
 00518699    test        al,al
>0051869B    je          005187F3
 005186A1    mov         eax,dword ptr [ebp-4]
 005186A4    mov         eax,dword ptr [eax+16C];TXPStyleDropDownBtn.FActionClient:TActionClientItem
 005186AA    call        0050E94C
 005186AF    test        al,al
>005186B1    je          005187F3
 005186B7    mov         eax,dword ptr [ebp-4]
 005186BA    mov         eax,dword ptr [eax+160];TXPStyleDropDownBtn................................................
 005186C0    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 005186C3    call        TBrush.GetColor
 005186C8    mov         dword ptr [ebp-0C],eax
 005186CB    mov         dl,1
 005186CD    mov         eax,[00485C6C];TBitmap
 005186D2    call        TBitmap.Create;TBitmap.Create
 005186D7    mov         dword ptr [ebp-10],eax
 005186DA    xor         eax,eax
 005186DC    push        ebp
 005186DD    push        5187D7
 005186E2    push        dword ptr fs:[eax]
 005186E5    mov         dword ptr fs:[eax],esp
 005186E8    mov         eax,dword ptr [ebp-4]
 005186EB    mov         edx,dword ptr [eax]
 005186ED    call        dword ptr [edx+3C];TXPStyleDropDownBtn.sub_005153C4
 005186F0    mov         eax,dword ptr [eax+5C]
 005186F3    mov         dword ptr [ebp-1C],eax
 005186F6    mov         eax,dword ptr [ebp-4]
 005186F9    mov         eax,dword ptr [eax+16C];TXPStyleDropDownBtn.FActionClient:TActionClientItem
 005186FF    mov         edx,dword ptr [eax+58];TActionClientItem.ImageIndex:TImageIndex
 00518702    mov         eax,dword ptr [ebp-1C]
 00518705    mov         eax,dword ptr [eax+38]
 00518708    mov         ecx,dword ptr [ebp-10]
 0051870B    call        004DCAE0
 00518710    test        al,al
>00518712    je          005187AD
 00518718    mov         eax,dword ptr [ebp-4]
 0051871B    call        0051541C
 00518720    call        TActionToolBar.GetColorMap
 00518725    mov         eax,dword ptr [eax+68]
 00518728    mov         edx,0FFFFFFCE
 0051872D    call        004F9070
 00518732    mov         edx,eax
 00518734    mov         eax,dword ptr [ebp-4]
 00518737    mov         eax,dword ptr [eax+160];TXPStyleDropDownBtn................................................
 0051873D    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 00518740    call        TBrush.SetColor
 00518745    mov         eax,dword ptr [ebp-1C]
 00518748    mov         eax,dword ptr [eax+38]
 0051874B    mov         edx,dword ptr [eax+34]
 0051874E    mov         eax,dword ptr [ebp-10]
 00518751    mov         ecx,dword ptr [eax]
 00518753    call        dword ptr [ecx+40];TBitmap.sub_0048EB14
 00518756    mov         eax,dword ptr [ebp-1C]
 00518759    mov         eax,dword ptr [eax+38]
 0051875C    mov         edx,dword ptr [eax+34]
 0051875F    mov         eax,dword ptr [ebp-10]
 00518762    mov         ecx,dword ptr [eax]
 00518764    call        dword ptr [ecx+34];TBitmap.sub_0048E6F4
 00518767    push        84
 0051876C    push        0
 0051876E    push        0
 00518770    mov         eax,dword ptr [ebp-14]
 00518773    inc         eax
 00518774    push        eax
 00518775    mov         eax,dword ptr [ebp-18]
 00518778    inc         eax
 00518779    push        eax
 0051877A    push        0
 0051877C    mov         eax,dword ptr [ebp-10]
 0051877F    mov         edx,dword ptr [eax]
 00518781    call        dword ptr [edx+64];TBitmap.sub_0048D584
 00518784    push        eax
 00518785    push        0
 00518787    mov         eax,dword ptr [ebp-4]
 0051878A    mov         eax,dword ptr [eax+160];TXPStyleDropDownBtn................................................
 00518790    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 00518793    call        TBrush.GetHandle
 00518798    push        eax
 00518799    mov         eax,dword ptr [ebp-4]
 0051879C    mov         eax,dword ptr [eax+160];TXPStyleDropDownBtn................................................
 005187A2    call        TCanvas.GetHandle
 005187A7    push        eax
 005187A8    call        user32.DrawStateA
 005187AD    xor         eax,eax
 005187AF    pop         edx
 005187B0    pop         ecx
 005187B1    pop         ecx
 005187B2    mov         dword ptr fs:[eax],edx
 005187B5    push        5187DE
 005187BA    mov         eax,dword ptr [ebp-10]
 005187BD    call        TObject.Free
 005187C2    mov         eax,dword ptr [ebp-4]
 005187C5    mov         eax,dword ptr [eax+160];TXPStyleDropDownBtn................................................
 005187CB    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 005187CE    mov         edx,dword ptr [ebp-0C]
 005187D1    call        TBrush.SetColor
 005187D6    ret
>005187D7    jmp         @HandleFinally
>005187DC    jmp         005187BA
 005187DE    mov         eax,dword ptr [ebp-4]
 005187E1    mov         edx,dword ptr [eax]
 005187E3    call        dword ptr [edx+0C0];TXPStyleDropDownBtn.sub_00515370
 005187E9    test        al,al
>005187EB    jne         005187F3
 005187ED    dec         dword ptr [ebp-18]
 005187F0    dec         dword ptr [ebp-14]
 005187F3    mov         eax,dword ptr [ebp-4]
 005187F6    test        byte ptr [eax+1C],10;TXPStyleDropDownBtn.FComponentState:TComponentState
>005187FA    jne         00518826
 005187FC    mov         eax,dword ptr [ebp-4]
 005187FF    cmp         byte ptr [eax+1AE],2;TXPStyleDropDownBtn.FState:TButtonState
>00518806    jne         00518826
 00518808    mov         eax,dword ptr [ebp-4]
 0051880B    mov         edx,dword ptr [eax]
 0051880D    call        dword ptr [edx+0C0];TXPStyleDropDownBtn.sub_00515370
 00518813    test        al,al
>00518815    jne         00518826
 00518817    call        00516B14
 0051881C    test        al,al
>0051881E    je          00518826
 00518820    inc         dword ptr [ebp-18]
 00518823    inc         dword ptr [ebp-14]
 00518826    lea         edx,[ebp-18]
 00518829    mov         eax,dword ptr [ebp-4]
 0051882C    call        00513B5C
 00518831    mov         esp,ebp
 00518833    pop         ebp
 00518834    ret
end;*}

//00518838
{*function sub_00518838:?;
begin
 00518838    push        ebp
 00518839    mov         ebp,esp
 0051883B    add         esp,0FFFFFFF8
 0051883E    mov         dword ptr [ebp-4],eax
 00518841    mov         eax,[00515F30];TXPStylePopupMenu
 00518846    mov         dword ptr [ebp-8],eax
 00518849    mov         eax,dword ptr [ebp-8]
 0051884C    pop         ecx
 0051884D    pop         ecx
 0051884E    pop         ebp
 0051884F    ret
end;*}

//00518850
constructor TXPStyleCustomizePopup.Create(AOwner:TComponent);
begin
{*
 00518850    push        ebp
 00518851    mov         ebp,esp
 00518853    add         esp,0FFFFFFF4
 00518856    test        dl,dl
>00518858    je          00518862
 0051885A    add         esp,0FFFFFFF0
 0051885D    call        @ClassCreate
 00518862    mov         dword ptr [ebp-0C],ecx
 00518865    mov         byte ptr [ebp-5],dl
 00518868    mov         dword ptr [ebp-4],eax
 0051886B    mov         ecx,dword ptr [ebp-0C]
 0051886E    xor         edx,edx
 00518870    mov         eax,dword ptr [ebp-4]
 00518873    call        TCustomizeActionToolBar.Create
 00518878    xor         edx,edx
 0051887A    mov         eax,dword ptr [ebp-4]
 0051887D    call        TActionToolBar.SetVertMargin
 00518882    mov         eax,dword ptr [ebp-4]
 00518885    cmp         byte ptr [ebp-5],0
>00518889    je          0051889A
 0051888B    call        @AfterConstruction
 00518890    pop         dword ptr fs:[0]
 00518897    add         esp,0C
 0051889A    mov         eax,dword ptr [ebp-4]
 0051889D    mov         esp,ebp
 0051889F    pop         ebp
 005188A0    ret
*}
end;

//005188A4
{*function sub_005188A4:?;
begin
 005188A4    push        ebp
 005188A5    mov         ebp,esp
 005188A7    add         esp,0FFFFFFF8
 005188AA    mov         dword ptr [ebp-4],eax
 005188AD    mov         eax,[0051698C];TXPStyleAddRemoveItem
 005188B2    mov         dword ptr [ebp-8],eax
 005188B5    mov         eax,dword ptr [ebp-8]
 005188B8    pop         ecx
 005188B9    pop         ecx
 005188BA    pop         ebp
 005188BB    ret
end;*}

//005188BC
{*function sub_005188BC:?;
begin
 005188BC    push        ebp
 005188BD    mov         ebp,esp
 005188BF    add         esp,0FFFFFFF8
 005188C2    mov         dword ptr [ebp-4],eax
 005188C5    mov         eax,[004FA1C4];TXPColorMap
 005188CA    mov         dword ptr [ebp-8],eax
 005188CD    mov         eax,dword ptr [ebp-8]
 005188D0    pop         ecx
 005188D1    pop         ecx
 005188D2    pop         ebp
 005188D3    ret
end;*}

//005188D4
{*procedure sub_005188D4(?:?);
begin
 005188D4    push        ebp
 005188D5    mov         ebp,esp
 005188D7    add         esp,0FFFFFFD8
 005188DA    mov         dword ptr [ebp-8],edx
 005188DD    mov         dword ptr [ebp-4],eax
 005188E0    lea         eax,[ebp-18]
 005188E3    push        eax
 005188E4    mov         eax,dword ptr [ebp-4]
 005188E7    call        TWinControl.GetHandle
 005188EC    push        eax
 005188ED    call        user32.GetClientRect
 005188F2    lea         eax,[ebp-28]
 005188F5    push        eax
 005188F6    mov         eax,dword ptr [ebp-4]
 005188F9    call        TWinControl.GetHandle
 005188FE    push        eax
 005188FF    call        user32.GetWindowRect
 00518904    push        2
 00518906    lea         eax,[ebp-28]
 00518909    push        eax
 0051890A    mov         eax,dword ptr [ebp-4]
 0051890D    call        TWinControl.GetHandle
 00518912    push        eax
 00518913    push        0
 00518915    call        user32.MapWindowPoints
 0051891A    mov         eax,dword ptr [ebp-24]
 0051891D    neg         eax
 0051891F    push        eax
 00518920    mov         eax,dword ptr [ebp-28]
 00518923    neg         eax
 00518925    push        eax
 00518926    lea         eax,[ebp-18]
 00518929    push        eax
 0051892A    call        user32.OffsetRect
 0051892F    mov         eax,dword ptr [ebp-0C]
 00518932    push        eax
 00518933    mov         eax,dword ptr [ebp-10]
 00518936    push        eax
 00518937    mov         eax,dword ptr [ebp-14]
 0051893A    push        eax
 0051893B    mov         eax,dword ptr [ebp-18]
 0051893E    push        eax
 0051893F    mov         eax,dword ptr [ebp-8]
 00518942    push        eax
 00518943    call        gdi32.ExcludeClipRect
 00518948    mov         eax,dword ptr [ebp-24]
 0051894B    neg         eax
 0051894D    push        eax
 0051894E    mov         eax,dword ptr [ebp-28]
 00518951    neg         eax
 00518953    push        eax
 00518954    lea         eax,[ebp-28]
 00518957    push        eax
 00518958    call        user32.OffsetRect
 0051895D    xor         eax,eax
 0051895F    push        ebp
 00518960    push        518A55
 00518965    push        dword ptr fs:[eax]
 00518968    mov         dword ptr fs:[eax],esp
 0051896B    mov         eax,dword ptr [ebp-4]
 0051896E    mov         eax,dword ptr [eax+21C];TXPStyleCustomizePopup.FCanvas:TCanvas
 00518974    mov         edx,dword ptr [ebp-8]
 00518977    call        TCanvas.SetHandle
 0051897C    mov         eax,dword ptr [ebp-4]
 0051897F    call        TActionToolBar.GetColorMap
 00518984    mov         edx,dword ptr [eax+7C]
 00518987    mov         eax,dword ptr [ebp-4]
 0051898A    mov         eax,dword ptr [eax+21C];TXPStyleCustomizePopup.FCanvas:TCanvas
 00518990    mov         eax,dword ptr [eax+10];TCanvas.Pen:TPen
 00518993    call        TPen.SetColor
 00518998    mov         eax,dword ptr [ebp-4]
 0051899B    call        TActionToolBar.GetColorMap
 005189A0    mov         edx,dword ptr [eax+40]
 005189A3    mov         eax,dword ptr [ebp-4]
 005189A6    mov         eax,dword ptr [eax+21C];TXPStyleCustomizePopup.FCanvas:TCanvas
 005189AC    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 005189AF    call        TBrush.SetColor
 005189B4    lea         edx,[ebp-28]
 005189B7    mov         eax,dword ptr [ebp-4]
 005189BA    mov         eax,dword ptr [eax+21C];TXPStyleCustomizePopup.FCanvas:TCanvas
 005189C0    call        00487FD8
 005189C5    mov         eax,dword ptr [ebp-4]
 005189C8    call        TActionToolBar.GetColorMap
 005189CD    mov         edx,dword ptr [eax+34]
 005189D0    mov         eax,dword ptr [ebp-4]
 005189D3    mov         eax,dword ptr [eax+21C];TXPStyleCustomizePopup.FCanvas:TCanvas
 005189D9    mov         eax,dword ptr [eax+10];TCanvas.Pen:TPen
 005189DC    call        TPen.SetColor
 005189E1    mov         eax,dword ptr [ebp-4]
 005189E4    mov         eax,dword ptr [eax+21C];TXPStyleCustomizePopup.FCanvas:TCanvas
 005189EA    mov         ecx,1
 005189EF    mov         edx,1
 005189F4    call        TCanvas.MoveTo
 005189F9    mov         eax,dword ptr [ebp-4]
 005189FC    mov         ecx,dword ptr [eax+4C];TXPStyleCustomizePopup.Height:Integer
 005189FF    dec         ecx
 00518A00    mov         eax,dword ptr [ebp-4]
 00518A03    mov         eax,dword ptr [eax+21C];TXPStyleCustomizePopup.FCanvas:TCanvas
 00518A09    mov         edx,1
 00518A0E    call        TCanvas.LineTo
 00518A13    xor         eax,eax
 00518A15    pop         edx
 00518A16    pop         ecx
 00518A17    pop         ecx
 00518A18    mov         dword ptr fs:[eax],edx
 00518A1B    push        518A5C
 00518A20    mov         eax,dword ptr [ebp-1C]
 00518A23    push        eax
 00518A24    mov         eax,dword ptr [ebp-20]
 00518A27    push        eax
 00518A28    mov         eax,dword ptr [ebp-24]
 00518A2B    push        eax
 00518A2C    mov         eax,dword ptr [ebp-28]
 00518A2F    push        eax
 00518A30    mov         eax,dword ptr [ebp-4]
 00518A33    mov         eax,dword ptr [eax+21C];TXPStyleCustomizePopup.FCanvas:TCanvas
 00518A39    call        TCanvas.GetHandle
 00518A3E    push        eax
 00518A3F    call        gdi32.IntersectClipRect
 00518A44    mov         eax,dword ptr [ebp-4]
 00518A47    mov         eax,dword ptr [eax+21C];TXPStyleCustomizePopup.FCanvas:TCanvas
 00518A4D    xor         edx,edx
 00518A4F    call        TCanvas.SetHandle
 00518A54    ret
>00518A55    jmp         @HandleFinally
>00518A5A    jmp         00518A20
 00518A5C    mov         esp,ebp
 00518A5E    pop         ebp
 00518A5F    ret
end;*}

//00518A60
procedure sub_00518A60;
begin
{*
 00518A60    push        ebp
 00518A61    mov         ebp,esp
 00518A63    push        ecx
 00518A64    mov         dword ptr [ebp-4],eax
 00518A67    mov         eax,dword ptr [ebp-4]
 00518A6A    call        005052C8
 00518A6F    mov         eax,dword ptr [ebp-4]
 00518A72    mov         edx,dword ptr [eax]
 00518A74    call        dword ptr [edx+0C8];TXPStyleAddRemoveItem.sub_005152A0
 00518A7A    test        al,al
>00518A7C    je          00518A8E
 00518A7E    mov         edx,3
 00518A83    mov         eax,dword ptr [ebp-4]
 00518A86    call        TControl.SetHeight
 00518A8B    pop         ecx
 00518A8C    pop         ebp
 00518A8D    ret
 00518A8E    mov         eax,dword ptr [ebp-4]
 00518A91    mov         edx,dword ptr [eax+4C];TXPStyleAddRemoveItem.Height:Integer
 00518A94    add         edx,2
 00518A97    mov         eax,dword ptr [ebp-4]
 00518A9A    call        TControl.SetHeight
 00518A9F    pop         ecx
 00518AA0    pop         ebp
 00518AA1    ret
*}
end;

//00518AA4
{*procedure sub_00518AA4(?:?);
begin
 00518AA4    push        ebp
 00518AA5    mov         ebp,esp
 00518AA7    add         esp,0FFFFFFD8
 00518AAA    push        esi
 00518AAB    push        edi
 00518AAC    mov         dword ptr [ebp-8],edx
 00518AAF    mov         dword ptr [ebp-4],eax
 00518AB2    mov         eax,dword ptr [ebp-4]
 00518AB5    cmp         dword ptr [eax+16C],0;TXPStyleAddRemoveItem.FActionClient:TActionClientItem
>00518ABC    je          00518CC5
 00518AC2    mov         eax,dword ptr [ebp-4]
 00518AC5    mov         eax,dword ptr [eax+16C];TXPStyleAddRemoveItem.FActionClient:TActionClientItem
 00518ACB    cmp         dword ptr [eax+24],20000000;TActionClientItem.Color:TColor
>00518AD2    je          00518AF1
 00518AD4    mov         eax,dword ptr [ebp-4]
 00518AD7    mov         eax,dword ptr [eax+16C];TXPStyleAddRemoveItem.FActionClient:TActionClientItem
 00518ADD    mov         edx,dword ptr [eax+24];TActionClientItem.Color:TColor
 00518AE0    mov         eax,dword ptr [ebp-4]
 00518AE3    mov         eax,dword ptr [eax+160];TXPStyleAddRemoveItem..............................................
 00518AE9    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 00518AEC    call        TBrush.SetColor
 00518AF1    mov         eax,dword ptr [ebp-8]
 00518AF4    mov         esi,eax
 00518AF6    lea         edi,[ebp-28]
 00518AF9    movs        dword ptr [edi],dword ptr [esi]
 00518AFA    movs        dword ptr [edi],dword ptr [esi]
 00518AFB    movs        dword ptr [edi],dword ptr [esi]
 00518AFC    movs        dword ptr [edi],dword ptr [esi]
 00518AFD    mov         eax,dword ptr [ebp-4]
 00518B00    mov         eax,dword ptr [eax+190];TXPStyleAddRemoveItem.FTextBounds:TRect
 00518B06    mov         edx,dword ptr [ebp-4]
 00518B09    cmp         eax,dword ptr [edx+172];TXPStyleAddRemoveItem.FGlyphPos:TPoint
>00518B0F    jle         00518B16
 00518B11    xor         eax,eax
 00518B13    mov         dword ptr [ebp-28],eax
 00518B16    mov         eax,dword ptr [ebp-8]
 00518B19    mov         esi,eax
 00518B1B    lea         edi,[ebp-18]
 00518B1E    movs        dword ptr [edi],dword ptr [esi]
 00518B1F    movs        dword ptr [edi],dword ptr [esi]
 00518B20    movs        dword ptr [edi],dword ptr [esi]
 00518B21    movs        dword ptr [edi],dword ptr [esi]
 00518B22    mov         eax,dword ptr [ebp-4]
 00518B25    mov         eax,dword ptr [eax+190];TXPStyleAddRemoveItem.FTextBounds:TRect
 00518B2B    mov         edx,dword ptr [ebp-4]
 00518B2E    cmp         eax,dword ptr [edx+172];TXPStyleAddRemoveItem.FGlyphPos:TPoint
>00518B34    jle         00518B47
 00518B36    mov         eax,dword ptr [ebp-4]
 00518B39    mov         eax,dword ptr [eax+190];TXPStyleAddRemoveItem.FTextBounds:TRect
 00518B3F    sub         eax,3
 00518B42    mov         dword ptr [ebp-10],eax
>00518B45    jmp         00518B56
 00518B47    mov         eax,dword ptr [ebp-4]
 00518B4A    mov         eax,dword ptr [eax+198];TXPStyleAddRemoveItem.FTextBounds.Right:Longint
 00518B50    add         eax,3
 00518B53    mov         dword ptr [ebp-10],eax
 00518B56    mov         dword ptr [ebp-10],2C
 00518B5D    mov         eax,dword ptr [ebp-10]
 00518B60    sub         eax,dword ptr [ebp-18]
 00518B63    mov         dword ptr [ebp-28],eax
 00518B66    mov         eax,dword ptr [ebp-4]
 00518B69    mov         eax,dword ptr [eax+16C];TXPStyleAddRemoveItem.FActionClient:TActionClientItem
 00518B6F    call        0050F28C
 00518B74    test        al,al
>00518B76    je          00518BA0
 00518B78    mov         eax,dword ptr [ebp-4]
 00518B7B    mov         eax,dword ptr [eax+1AC];TXPStyleAddRemoveItem.FMenu:TCustomActionMenuBar
 00518B81    call        TActionToolBar.GetColorMap
 00518B86    call        TXPColorMap.GetUnusedColor
 00518B8B    mov         edx,eax
 00518B8D    mov         eax,dword ptr [ebp-4]
 00518B90    mov         eax,dword ptr [eax+160];TXPStyleAddRemoveItem..............................................
 00518B96    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 00518B99    call        TBrush.SetColor
>00518B9E    jmp         00518BC2
 00518BA0    mov         eax,dword ptr [ebp-4]
 00518BA3    mov         eax,dword ptr [eax+1AC];TXPStyleAddRemoveItem.FMenu:TCustomActionMenuBar
 00518BA9    call        TActionToolBar.GetColorMap
 00518BAE    mov         edx,dword ptr [eax+34]
 00518BB1    mov         eax,dword ptr [ebp-4]
 00518BB4    mov         eax,dword ptr [eax+160];TXPStyleAddRemoveItem..............................................
 00518BBA    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 00518BBD    call        TBrush.SetColor
 00518BC2    lea         edx,[ebp-18]
 00518BC5    mov         eax,dword ptr [ebp-4]
 00518BC8    call        00513A2C
 00518BCD    mov         eax,dword ptr [ebp-4]
 00518BD0    mov         eax,dword ptr [eax+1AC];TXPStyleAddRemoveItem.FMenu:TCustomActionMenuBar
 00518BD6    call        TActionToolBar.GetColorMap
 00518BDB    mov         edx,dword ptr [eax+74]
 00518BDE    mov         eax,dword ptr [ebp-4]
 00518BE1    mov         eax,dword ptr [eax+160];TXPStyleAddRemoveItem..............................................
 00518BE7    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 00518BEA    call        TBrush.SetColor
 00518BEF    mov         eax,dword ptr [ebp-4]
 00518BF2    cmp         byte ptr [eax+18A],0;TXPStyleAddRemoveItem.FSelected:Boolean
>00518BF9    je          00518C07
 00518BFB    mov         eax,dword ptr [ebp-4]
 00518BFE    mov         edx,dword ptr [eax]
 00518C00    call        dword ptr [edx+50];TImage.GetEnabled
 00518C03    test        al,al
>00518C05    jne         00518C1F
 00518C07    mov         eax,dword ptr [ebp-4]
 00518C0A    cmp         byte ptr [eax+18A],0;TXPStyleAddRemoveItem.FSelected:Boolean
>00518C11    je          00518C47
 00518C13    mov         eax,dword ptr [ebp-4]
 00518C16    cmp         byte ptr [eax+1B0],0;TXPStyleAddRemoveItem.FMouseSelected:Boolean
>00518C1D    jne         00518C47
 00518C1F    mov         eax,dword ptr [ebp-4]
 00518C22    mov         eax,dword ptr [eax+1AC];TXPStyleAddRemoveItem.FMenu:TCustomActionMenuBar
 00518C28    call        TActionToolBar.GetColorMap
 00518C2D    mov         edx,dword ptr [eax+68]
 00518C30    mov         eax,dword ptr [ebp-4]
 00518C33    mov         eax,dword ptr [eax+160];TXPStyleAddRemoveItem..............................................
 00518C39    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 00518C3C    call        TBrush.SetColor
 00518C41    mov         eax,dword ptr [ebp-8]
 00518C44    dec         dword ptr [eax+8]
 00518C47    lea         edx,[ebp-28]
 00518C4A    mov         eax,dword ptr [ebp-4]
 00518C4D    call        00513A2C
 00518C52    mov         eax,dword ptr [ebp-4]
 00518C55    cmp         byte ptr [eax+18A],0;TXPStyleAddRemoveItem.FSelected:Boolean
>00518C5C    je          00518C6A
 00518C5E    mov         eax,dword ptr [ebp-4]
 00518C61    mov         edx,dword ptr [eax]
 00518C63    call        dword ptr [edx+50];TImage.GetEnabled
 00518C66    test        al,al
>00518C68    jne         00518C82
 00518C6A    mov         eax,dword ptr [ebp-4]
 00518C6D    cmp         byte ptr [eax+18A],0;TXPStyleAddRemoveItem.FSelected:Boolean
>00518C74    je          00518CC5
 00518C76    mov         eax,dword ptr [ebp-4]
 00518C79    cmp         byte ptr [eax+1B0],0;TXPStyleAddRemoveItem.FMouseSelected:Boolean
>00518C80    jne         00518CC5
 00518C82    mov         edx,dword ptr [ebp-8]
 00518C85    mov         eax,dword ptr [ebp-4]
 00518C88    mov         eax,dword ptr [eax+160];TXPStyleAddRemoveItem..............................................
 00518C8E    call        TCanvas.FillRect
 00518C93    mov         eax,dword ptr [ebp-4]
 00518C96    call        0051541C
 00518C9B    call        TActionToolBar.GetColorMap
 00518CA0    mov         edx,dword ptr [eax+38]
 00518CA3    mov         eax,dword ptr [ebp-4]
 00518CA6    mov         eax,dword ptr [eax+160];TXPStyleAddRemoveItem..............................................
 00518CAC    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 00518CAF    call        TBrush.SetColor
 00518CB4    mov         edx,dword ptr [ebp-8]
 00518CB7    mov         eax,dword ptr [ebp-4]
 00518CBA    mov         eax,dword ptr [eax+160];TXPStyleAddRemoveItem..............................................
 00518CC0    call        00487D80
 00518CC5    pop         edi
 00518CC6    pop         esi
 00518CC7    mov         esp,ebp
 00518CC9    pop         ebp
 00518CCA    ret
end;*}

//00518CCC
{*procedure sub_00518CCC(?:?);
begin
 00518CCC    push        ebp
 00518CCD    mov         ebp,esp
 00518CCF    add         esp,0FFFFFFC8
 00518CD2    mov         dword ptr [ebp-8],edx
 00518CD5    mov         dword ptr [ebp-4],eax
 00518CD8    mov         eax,dword ptr [ebp-4]
 00518CDB    cmp         dword ptr [eax+16C],0;TXPStyleAddRemoveItem.FActionClient:TActionClientItem
>00518CE2    je          00518E1F
 00518CE8    mov         eax,dword ptr [ebp-4]
 00518CEB    mov         eax,dword ptr [eax+16C];TXPStyleAddRemoveItem.FActionClient:TActionClientItem
 00518CF1    call        0050E94C
 00518CF6    test        al,al
>00518CF8    jne         00518E1F
 00518CFE    mov         eax,dword ptr [ebp-4]
 00518D01    mov         edx,dword ptr [eax]
 00518D03    call        dword ptr [edx+3C];TXPStyleAddRemoveItem.sub_005153C4
 00518D06    mov         edx,dword ptr ds:[4DA408];TCustomAction
 00518D0C    call        @IsClass
 00518D11    test        al,al
>00518D13    je          00518E1F
 00518D19    mov         eax,dword ptr [ebp-4]
 00518D1C    mov         edx,dword ptr [eax]
 00518D1E    call        dword ptr [edx+3C];TXPStyleAddRemoveItem.sub_005153C4
 00518D21    cmp         byte ptr [eax+69],0
>00518D25    je          00518E1F
 00518D2B    mov         eax,dword ptr [ebp-4]
 00518D2E    mov         edx,dword ptr [eax]
 00518D30    call        dword ptr [edx+0C0];TXPStyleAddRemoveItem.sub_00515370
 00518D36    test        al,al
>00518D38    je          00518DC7
 00518D3E    mov         eax,dword ptr [ebp-4]
 00518D41    mov         eax,dword ptr [eax+4C];TXPStyleAddRemoveItem.Height:Integer
 00518D44    dec         eax
 00518D45    push        eax
 00518D46    lea         eax,[ebp-30]
 00518D49    push        eax
 00518D4A    mov         ecx,dword ptr [ebp-8]
 00518D4D    mov         ecx,dword ptr [ecx]
 00518D4F    add         ecx,14
 00518D52    mov         eax,dword ptr [ebp-8]
 00518D55    mov         eax,dword ptr [eax]
 00518D57    dec         eax
 00518D58    mov         edx,1
 00518D5D    call        Rect
 00518D62    mov         eax,dword ptr [ebp-4]
 00518D65    mov         eax,dword ptr [eax+1AC];TXPStyleAddRemoveItem.FMenu:TCustomActionMenuBar
 00518D6B    call        TActionToolBar.GetColorMap
 00518D70    mov         edx,dword ptr [eax+68]
 00518D73    mov         eax,dword ptr [ebp-4]
 00518D76    mov         eax,dword ptr [eax+160];TXPStyleAddRemoveItem..............................................
 00518D7C    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 00518D7F    call        TBrush.SetColor
 00518D84    lea         edx,[ebp-30]
 00518D87    mov         eax,dword ptr [ebp-4]
 00518D8A    mov         eax,dword ptr [eax+160];TXPStyleAddRemoveItem..............................................
 00518D90    call        TCanvas.FillRect
 00518D95    mov         eax,dword ptr [ebp-4]
 00518D98    call        0051541C
 00518D9D    call        TActionToolBar.GetColorMap
 00518DA2    mov         edx,dword ptr [eax+38]
 00518DA5    mov         eax,dword ptr [ebp-4]
 00518DA8    mov         eax,dword ptr [eax+160];TXPStyleAddRemoveItem..............................................
 00518DAE    mov         eax,dword ptr [eax+10];TCanvas.Pen:TPen
 00518DB1    call        TPen.SetColor
 00518DB6    lea         edx,[ebp-30]
 00518DB9    mov         eax,dword ptr [ebp-4]
 00518DBC    mov         eax,dword ptr [eax+160];TXPStyleAddRemoveItem..............................................
 00518DC2    call        00487FD8
 00518DC7    mov         eax,dword ptr [ebp-4]
 00518DCA    mov         eax,dword ptr [eax+1AC];TXPStyleAddRemoveItem.FMenu:TCustomActionMenuBar
 00518DD0    call        TActionToolBar.GetColorMap
 00518DD5    mov         edx,dword ptr [eax+50]
 00518DD8    mov         eax,dword ptr [ebp-4]
 00518DDB    mov         eax,dword ptr [eax+160];TXPStyleAddRemoveItem..............................................
 00518DE1    mov         eax,dword ptr [eax+10];TCanvas.Pen:TPen
 00518DE4    call        TPen.SetColor
 00518DE9    push        1
 00518DEB    lea         ecx,[ebp-38]
 00518DEE    mov         edx,dword ptr [ebp-8]
 00518DF1    mov         edx,dword ptr [edx+4]
 00518DF4    add         edx,3
 00518DF7    mov         eax,dword ptr [ebp-8]
 00518DFA    mov         eax,dword ptr [eax]
 00518DFC    add         eax,6
 00518DFF    call        Point
 00518E04    lea         edx,[ebp-38]
 00518E07    mov         eax,dword ptr [ebp-4]
 00518E0A    mov         eax,dword ptr [eax+160];TXPStyleAddRemoveItem..............................................
 00518E10    mov         ecx,2
 00518E15    call        004F93F4
>00518E1A    jmp         005190BA
 00518E1F    mov         eax,dword ptr [ebp-4]
 00518E22    mov         edx,dword ptr [eax]
 00518E24    call        dword ptr [edx+0C0];TXPStyleAddRemoveItem.sub_00515370
 00518E2A    test        al,al
>00518E2C    je          00518EA6
 00518E2E    mov         eax,dword ptr [ebp-4]
 00518E31    mov         eax,dword ptr [eax+4C];TXPStyleAddRemoveItem.Height:Integer
 00518E34    dec         eax
 00518E35    push        eax
 00518E36    lea         eax,[ebp-30]
 00518E39    push        eax
 00518E3A    mov         ecx,dword ptr [ebp-8]
 00518E3D    mov         ecx,dword ptr [ecx]
 00518E3F    add         ecx,14
 00518E42    mov         eax,dword ptr [ebp-8]
 00518E45    mov         eax,dword ptr [eax]
 00518E47    dec         eax
 00518E48    mov         edx,1
 00518E4D    call        Rect
 00518E52    mov         eax,dword ptr [ebp-4]
 00518E55    mov         eax,dword ptr [eax+1AC];TXPStyleAddRemoveItem.FMenu:TCustomActionMenuBar
 00518E5B    call        TActionToolBar.GetColorMap
 00518E60    mov         edx,dword ptr [eax+68]
 00518E63    mov         eax,dword ptr [ebp-4]
 00518E66    mov         eax,dword ptr [eax+160];TXPStyleAddRemoveItem..............................................
 00518E6C    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 00518E6F    call        TBrush.SetColor
 00518E74    mov         eax,dword ptr [ebp-4]
 00518E77    call        0051541C
 00518E7C    call        TActionToolBar.GetColorMap
 00518E81    mov         edx,dword ptr [eax+38]
 00518E84    mov         eax,dword ptr [ebp-4]
 00518E87    mov         eax,dword ptr [eax+160];TXPStyleAddRemoveItem..............................................
 00518E8D    mov         eax,dword ptr [eax+10];TCanvas.Pen:TPen
 00518E90    call        TPen.SetColor
 00518E95    lea         edx,[ebp-30]
 00518E98    mov         eax,dword ptr [ebp-4]
 00518E9B    mov         eax,dword ptr [eax+160];TXPStyleAddRemoveItem..............................................
 00518EA1    call        00487FD8
 00518EA6    mov         eax,dword ptr [ebp-4]
 00518EA9    mov         eax,dword ptr [eax+160];TXPStyleAddRemoveItem..............................................
 00518EAF    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 00518EB2    call        TBrush.GetColor
 00518EB7    mov         dword ptr [ebp-0C],eax
 00518EBA    mov         eax,dword ptr [ebp-4]
 00518EBD    cmp         byte ptr [eax+18A],0;TXPStyleAddRemoveItem.FSelected:Boolean
>00518EC4    je          00518ED2
 00518EC6    mov         eax,dword ptr [ebp-4]
 00518EC9    mov         edx,dword ptr [eax]
 00518ECB    call        dword ptr [edx+50];TImage.GetEnabled
 00518ECE    test        al,al
>00518ED0    jne         00518EEA
 00518ED2    mov         eax,dword ptr [ebp-4]
 00518ED5    cmp         byte ptr [eax+18A],0;TXPStyleAddRemoveItem.FSelected:Boolean
>00518EDC    je          00518F0E
 00518EDE    mov         eax,dword ptr [ebp-4]
 00518EE1    cmp         byte ptr [eax+1B0],0;TXPStyleAddRemoveItem.FMouseSelected:Boolean
>00518EE8    jne         00518F0E
 00518EEA    mov         eax,dword ptr [ebp-4]
 00518EED    mov         eax,dword ptr [eax+1AC];TXPStyleAddRemoveItem.FMenu:TCustomActionMenuBar
 00518EF3    call        TActionToolBar.GetColorMap
 00518EF8    mov         edx,dword ptr [eax+68]
 00518EFB    mov         eax,dword ptr [ebp-4]
 00518EFE    mov         eax,dword ptr [eax+160];TXPStyleAddRemoveItem..............................................
 00518F04    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 00518F07    call        TBrush.SetColor
>00518F0C    jmp         00518F30
 00518F0E    mov         eax,dword ptr [ebp-4]
 00518F11    mov         eax,dword ptr [eax+1AC];TXPStyleAddRemoveItem.FMenu:TCustomActionMenuBar
 00518F17    call        TActionToolBar.GetColorMap
 00518F1C    mov         edx,dword ptr [eax+34]
 00518F1F    mov         eax,dword ptr [ebp-4]
 00518F22    mov         eax,dword ptr [eax+160];TXPStyleAddRemoveItem..............................................
 00518F28    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 00518F2B    call        TBrush.SetColor
 00518F30    mov         eax,dword ptr [ebp-8]
 00518F33    mov         edx,dword ptr [eax]
 00518F35    mov         dword ptr [ebp-18],edx
 00518F38    mov         edx,dword ptr [eax+4]
 00518F3B    mov         dword ptr [ebp-14],edx
 00518F3E    mov         eax,dword ptr [ebp-4]
 00518F41    cmp         byte ptr [eax+18A],0;TXPStyleAddRemoveItem.FSelected:Boolean
>00518F48    je          00519094
 00518F4E    mov         eax,dword ptr [ebp-4]
 00518F51    mov         edx,dword ptr [eax]
 00518F53    call        dword ptr [edx+50];TImage.GetEnabled
 00518F56    test        al,al
>00518F58    je          00519094
 00518F5E    mov         eax,dword ptr [ebp-4]
 00518F61    mov         eax,dword ptr [eax+16C];TXPStyleAddRemoveItem.FActionClient:TActionClientItem
 00518F67    call        0050E94C
 00518F6C    test        al,al
>00518F6E    je          00519094
 00518F74    mov         eax,dword ptr [ebp-4]
 00518F77    mov         eax,dword ptr [eax+160];TXPStyleAddRemoveItem..............................................
 00518F7D    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 00518F80    call        TBrush.GetColor
 00518F85    mov         dword ptr [ebp-10],eax
 00518F88    mov         dl,1
 00518F8A    mov         eax,[00485C6C];TBitmap
 00518F8F    call        TBitmap.Create;TBitmap.Create
 00518F94    mov         dword ptr [ebp-1C],eax
 00518F97    xor         eax,eax
 00518F99    push        ebp
 00518F9A    push        51907D
 00518F9F    push        dword ptr fs:[eax]
 00518FA2    mov         dword ptr fs:[eax],esp
 00518FA5    mov         eax,dword ptr [ebp-4]
 00518FA8    mov         eax,dword ptr [eax+160];TXPStyleAddRemoveItem..............................................
 00518FAE    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 00518FB1    mov         edx,0FF000010
 00518FB6    call        TBrush.SetColor
 00518FBB    mov         eax,dword ptr [ebp-4]
 00518FBE    mov         edx,dword ptr [eax]
 00518FC0    call        dword ptr [edx+3C];TXPStyleAddRemoveItem.sub_005153C4
 00518FC3    mov         eax,dword ptr [eax+5C]
 00518FC6    mov         dword ptr [ebp-20],eax
 00518FC9    mov         eax,dword ptr [ebp-4]
 00518FCC    mov         eax,dword ptr [eax+16C];TXPStyleAddRemoveItem.FActionClient:TActionClientItem
 00518FD2    mov         edx,dword ptr [eax+58];TActionClientItem.ImageIndex:TImageIndex
 00518FD5    mov         eax,dword ptr [ebp-20]
 00518FD8    mov         eax,dword ptr [eax+38]
 00518FDB    mov         ecx,dword ptr [ebp-1C]
 00518FDE    call        004DCAE0
 00518FE3    test        al,al
>00518FE5    je          00519053
 00518FE7    mov         eax,dword ptr [ebp-20]
 00518FEA    mov         eax,dword ptr [eax+38]
 00518FED    mov         edx,dword ptr [eax+34]
 00518FF0    mov         eax,dword ptr [ebp-1C]
 00518FF3    mov         ecx,dword ptr [eax]
 00518FF5    call        dword ptr [ecx+40];TBitmap.sub_0048EB14
 00518FF8    mov         eax,dword ptr [ebp-20]
 00518FFB    mov         eax,dword ptr [eax+38]
 00518FFE    mov         edx,dword ptr [eax+34]
 00519001    mov         eax,dword ptr [ebp-1C]
 00519004    mov         ecx,dword ptr [eax]
 00519006    call        dword ptr [ecx+34];TBitmap.sub_0048E6F4
 00519009    push        84
 0051900E    push        0
 00519010    push        0
 00519012    mov         eax,dword ptr [ebp-14]
 00519015    add         eax,2
 00519018    push        eax
 00519019    mov         eax,dword ptr [ebp-18]
 0051901C    add         eax,3
 0051901F    push        eax
 00519020    push        0
 00519022    mov         eax,dword ptr [ebp-1C]
 00519025    mov         edx,dword ptr [eax]
 00519027    call        dword ptr [edx+64];TBitmap.sub_0048D584
 0051902A    push        eax
 0051902B    push        0
 0051902D    mov         eax,dword ptr [ebp-4]
 00519030    mov         eax,dword ptr [eax+160];TXPStyleAddRemoveItem..............................................
 00519036    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 00519039    call        TBrush.GetHandle
 0051903E    push        eax
 0051903F    mov         eax,dword ptr [ebp-4]
 00519042    mov         eax,dword ptr [eax+160];TXPStyleAddRemoveItem..............................................
 00519048    call        TCanvas.GetHandle
 0051904D    push        eax
 0051904E    call        user32.DrawStateA
 00519053    xor         eax,eax
 00519055    pop         edx
 00519056    pop         ecx
 00519057    pop         ecx
 00519058    mov         dword ptr fs:[eax],edx
 0051905B    push        519084
 00519060    mov         eax,dword ptr [ebp-1C]
 00519063    call        TObject.Free
 00519068    mov         eax,dword ptr [ebp-4]
 0051906B    mov         eax,dword ptr [eax+160];TXPStyleAddRemoveItem..............................................
 00519071    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 00519074    mov         edx,dword ptr [ebp-10]
 00519077    call        TBrush.SetColor
 0051907C    ret
>0051907D    jmp         @HandleFinally
>00519082    jmp         00519060
 00519084    inc         dword ptr [ebp-18]
 00519087    lea         edx,[ebp-18]
 0051908A    mov         eax,dword ptr [ebp-4]
 0051908D    call        00513B5C
>00519092    jmp         005190A6
 00519094    add         dword ptr [ebp-18],2
 00519098    inc         dword ptr [ebp-14]
 0051909B    lea         edx,[ebp-18]
 0051909E    mov         eax,dword ptr [ebp-4]
 005190A1    call        00513B5C
 005190A6    mov         eax,dword ptr [ebp-4]
 005190A9    mov         eax,dword ptr [eax+160];TXPStyleAddRemoveItem..............................................
 005190AF    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 005190B2    mov         edx,dword ptr [ebp-0C]
 005190B5    call        TBrush.SetColor
 005190BA    mov         eax,dword ptr [ebp-4]
 005190BD    mov         eax,dword ptr [eax+16C];TXPStyleAddRemoveItem.FActionClient:TActionClientItem
 005190C3    call        TCollectionItem.GetIndex
 005190C8    push        eax
 005190C9    mov         eax,dword ptr [ebp-4]
 005190CC    mov         eax,dword ptr [eax+1AC];TXPStyleAddRemoveItem.FMenu:TCustomActionMenuBar
 005190D2    mov         eax,dword ptr [eax+2C4];TCustomActionMenuBar.FRootMenu:TCustomActionMenuBar
 005190D8    mov         eax,dword ptr [eax+2AC];TCustomActionMenuBar.FParentControl:TCustomActionControl
 005190DE    call        0051541C
 005190E3    mov         eax,dword ptr [eax+210]
 005190E9    call        TActionClient.GetItems
 005190EE    pop         edx
 005190EF    call        0050D884
 005190F4    cmp         byte ptr [eax+30],0
>005190F8    je          005191D9
 005190FE    mov         eax,dword ptr [ebp-4]
 00519101    mov         eax,dword ptr [eax+4C];TXPStyleAddRemoveItem.Height:Integer
 00519104    dec         eax
 00519105    push        eax
 00519106    lea         eax,[ebp-30]
 00519109    push        eax
 0051910A    mov         ecx,12
 0051910F    mov         edx,1
 00519114    mov         eax,1
 00519119    call        Rect
 0051911E    mov         eax,dword ptr [ebp-4]
 00519121    mov         eax,dword ptr [eax+1AC];TXPStyleAddRemoveItem.FMenu:TCustomActionMenuBar
 00519127    call        TActionToolBar.GetColorMap
 0051912C    mov         edx,dword ptr [eax+68]
 0051912F    mov         eax,dword ptr [ebp-4]
 00519132    mov         eax,dword ptr [eax+160];TXPStyleAddRemoveItem..............................................
 00519138    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 0051913B    call        TBrush.SetColor
 00519140    lea         edx,[ebp-30]
 00519143    mov         eax,dword ptr [ebp-4]
 00519146    mov         eax,dword ptr [eax+160];TXPStyleAddRemoveItem..............................................
 0051914C    call        TCanvas.FillRect
 00519151    mov         eax,dword ptr [ebp-4]
 00519154    call        0051541C
 00519159    call        TActionToolBar.GetColorMap
 0051915E    mov         edx,dword ptr [eax+38]
 00519161    mov         eax,dword ptr [ebp-4]
 00519164    mov         eax,dword ptr [eax+160];TXPStyleAddRemoveItem..............................................
 0051916A    mov         eax,dword ptr [eax+10];TCanvas.Pen:TPen
 0051916D    call        TPen.SetColor
 00519172    lea         edx,[ebp-30]
 00519175    mov         eax,dword ptr [ebp-4]
 00519178    mov         eax,dword ptr [eax+160];TXPStyleAddRemoveItem..............................................
 0051917E    call        00487FD8
 00519183    mov         eax,dword ptr [ebp-4]
 00519186    mov         eax,dword ptr [eax+1AC];TXPStyleAddRemoveItem.FMenu:TCustomActionMenuBar
 0051918C    call        TActionToolBar.GetColorMap
 00519191    mov         edx,dword ptr [eax+50]
 00519194    mov         eax,dword ptr [ebp-4]
 00519197    mov         eax,dword ptr [eax+160];TXPStyleAddRemoveItem..............................................
 0051919D    mov         eax,dword ptr [eax+10];TCanvas.Pen:TPen
 005191A0    call        TPen.SetColor
 005191A5    push        1
 005191A7    lea         ecx,[ebp-38]
 005191AA    mov         eax,dword ptr [ebp-4]
 005191AD    mov         edx,dword ptr [eax+4C];TXPStyleAddRemoveItem.Height:Integer
 005191B0    sar         edx,1
>005191B2    jns         005191B7
 005191B4    adc         edx,0
 005191B7    dec         edx
 005191B8    mov         eax,dword ptr [ebp-30]
 005191BB    add         eax,5;TRect.Top:Longint
 005191BE    call        Point
 005191C3    lea         edx,[ebp-38]
 005191C6    mov         eax,dword ptr [ebp-4]
 005191C9    mov         eax,dword ptr [eax+160];TXPStyleAddRemoveItem..............................................
 005191CF    mov         ecx,2
 005191D4    call        004F93F4
 005191D9    mov         esp,ebp
 005191DB    pop         ebp
 005191DC    ret
end;*}

//005191E0
{*procedure sub_005191E0(?:?);
begin
 005191E0    push        ebp
 005191E1    mov         ebp,esp
 005191E3    add         esp,0FFFFFFD0
 005191E6    mov         dword ptr [ebp-10],edx
 005191E9    mov         dword ptr [ebp-4],eax
 005191EC    mov         eax,dword ptr [ebp-4]
 005191EF    cmp         byte ptr [eax+18A],0;TXPStyleAddRemoveItem.FSelected:Boolean
>005191F6    je          00519214
 005191F8    lea         edx,[ebp-30]
 005191FB    mov         eax,dword ptr [ebp-4]
 005191FE    mov         ecx,dword ptr [eax]
 00519200    call        dword ptr [ecx+44];TXPStyleAddRemoveItem.sub_004CA73C
 00519203    lea         edx,[ebp-30]
 00519206    mov         eax,dword ptr [ebp-4]
 00519209    mov         eax,dword ptr [eax+160];TXPStyleAddRemoveItem..............................................
 0051920F    call        TCanvas.FillRect
 00519214    mov         eax,dword ptr [ebp-4]
 00519217    mov         eax,dword ptr [eax+160];TXPStyleAddRemoveItem..............................................
 0051921D    mov         ecx,dword ptr [eax+14];TCanvas.Brush:TBrush
 00519220    mov         dl,1
 00519222    mov         eax,[004855B4];TBrushRecall
 00519227    call        TBrushRecall.Create;TBrushRecall.Create
 0051922C    mov         dword ptr [ebp-0C],eax
 0051922F    mov         eax,dword ptr [ebp-4]
 00519232    mov         eax,dword ptr [eax+160];TXPStyleAddRemoveItem..............................................
 00519238    mov         ecx,dword ptr [eax+10];TCanvas.Pen:TPen
 0051923B    mov         dl,1
 0051923D    mov         eax,[0048555C];TPenRecall
 00519242    call        TPenRecall.Create;TPenRecall.Create
 00519247    mov         dword ptr [ebp-8],eax
 0051924A    xor         eax,eax
 0051924C    push        ebp
 0051924D    push        519372
 00519252    push        dword ptr fs:[eax]
 00519255    mov         dword ptr fs:[eax],esp
 00519258    mov         eax,dword ptr [ebp-4]
 0051925B    cmp         dword ptr [eax+16C],0;TXPStyleAddRemoveItem.FActionClient:TActionClientItem
>00519262    je          00519297
 00519264    mov         eax,dword ptr [ebp-4]
 00519267    mov         eax,dword ptr [eax+16C];TXPStyleAddRemoveItem.FActionClient:TActionClientItem
 0051926D    call        0050F28C
 00519272    test        al,al
>00519274    je          00519297
 00519276    mov         eax,dword ptr [ebp-4]
 00519279    cmp         byte ptr [eax+1A0],0;TXPStyleAddRemoveItem.FTransparent:Boolean
>00519280    jne         00519297
 00519282    mov         eax,dword ptr [ebp-4]
 00519285    mov         eax,dword ptr [eax+160];TXPStyleAddRemoveItem..............................................
 0051928B    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 0051928E    xor         edx,edx
 00519290    call        TBrush.SetStyle
>00519295    jmp         005192F1
 00519297    mov         eax,dword ptr [ebp-4]
 0051929A    mov         edx,dword ptr [eax+70];TXPStyleAddRemoveItem.FColor:TColor
 0051929D    mov         eax,dword ptr [ebp-4]
 005192A0    mov         eax,dword ptr [eax+160];TXPStyleAddRemoveItem..............................................
 005192A6    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 005192A9    call        TBrush.SetColor
 005192AE    lea         edx,[ebp-20]
 005192B1    mov         eax,dword ptr [ebp-4]
 005192B4    call        004CA6AC
 005192B9    push        1
 005192BB    push        4
 005192BD    lea         eax,[ebp-20]
 005192C0    push        eax
 005192C1    mov         eax,dword ptr [ebp-4]
 005192C4    mov         eax,dword ptr [eax+160];TXPStyleAddRemoveItem..............................................
 005192CA    call        TCanvas.GetHandle
 005192CF    push        eax
 005192D0    call        user32.DrawEdge
 005192D5    push        4
 005192D7    push        4
 005192D9    lea         eax,[ebp-20]
 005192DC    push        eax
 005192DD    mov         eax,dword ptr [ebp-4]
 005192E0    mov         eax,dword ptr [eax+160];TXPStyleAddRemoveItem..............................................
 005192E6    call        TCanvas.GetHandle
 005192EB    push        eax
 005192EC    call        user32.DrawEdge
 005192F1    mov         eax,dword ptr [ebp-4]
 005192F4    mov         eax,dword ptr [eax+160];TXPStyleAddRemoveItem..............................................
 005192FA    mov         eax,dword ptr [eax+10];TCanvas.Pen:TPen
 005192FD    mov         edx,0FF000010
 00519302    call        TPen.SetColor
 00519307    mov         eax,dword ptr [ebp-4]
 0051930A    call        TControl.GetClientHeight
 0051930F    mov         ecx,eax
 00519311    sar         ecx,1
>00519313    jns         00519318
 00519315    adc         ecx,0
 00519318    mov         eax,dword ptr [ebp-4]
 0051931B    mov         eax,dword ptr [eax+160];TXPStyleAddRemoveItem..............................................
 00519321    mov         edx,20
 00519326    call        TCanvas.MoveTo
 0051932B    mov         eax,dword ptr [ebp-4]
 0051932E    call        TControl.GetClientHeight
 00519333    sar         eax,1
>00519335    jns         0051933A
 00519337    adc         eax,0
 0051933A    push        eax
 0051933B    mov         eax,dword ptr [ebp-4]
 0051933E    call        TControl.GetClientWidth
 00519343    mov         edx,eax
 00519345    mov         eax,dword ptr [ebp-4]
 00519348    mov         eax,dword ptr [eax+160];TXPStyleAddRemoveItem..............................................
 0051934E    pop         ecx
 0051934F    call        TCanvas.LineTo
 00519354    xor         eax,eax
 00519356    pop         edx
 00519357    pop         ecx
 00519358    pop         ecx
 00519359    mov         dword ptr fs:[eax],edx
 0051935C    push        519379
 00519361    mov         eax,dword ptr [ebp-0C]
 00519364    call        TObject.Free
 00519369    mov         eax,dword ptr [ebp-8]
 0051936C    call        TObject.Free
 00519371    ret
>00519372    jmp         @HandleFinally
>00519377    jmp         00519361
 00519379    mov         esp,ebp
 0051937B    pop         ebp
 0051937C    ret
end;*}

//00519380
{*procedure sub_00519380(?:?; ?:?; ?:?);
begin
 00519380    push        ebp
 00519381    mov         ebp,esp
 00519383    add         esp,0FFFFFFF0
 00519386    push        ebx
 00519387    xor         ebx,ebx
 00519389    mov         dword ptr [ebp-10],ebx
 0051938C    mov         dword ptr [ebp-0C],ecx
 0051938F    mov         dword ptr [ebp-8],edx
 00519392    mov         dword ptr [ebp-4],eax
 00519395    mov         eax,dword ptr [ebp+8]
 00519398    call        @LStrAddRef
 0051939D    xor         eax,eax
 0051939F    push        ebp
 005193A0    push        5194A1
 005193A5    push        dword ptr fs:[eax]
 005193A8    mov         dword ptr fs:[eax],esp
 005193AB    lea         eax,[ebp-10]
 005193AE    mov         edx,dword ptr [ebp+8]
 005193B1    call        @LStrLAsg
 005193B6    mov         eax,dword ptr [ebp-4]
 005193B9    mov         eax,dword ptr [eax+30];TXPStyleAddRemoveItem.FParent:TWinControl
 005193BC    mov         edx,dword ptr ds:[509DC8];TCustomActionBar
 005193C2    call        @IsClass
 005193C7    test        al,al
>005193C9    je          00519407
 005193CB    mov         eax,dword ptr [ebp-4]
 005193CE    mov         eax,dword ptr [eax+30];TXPStyleAddRemoveItem.FParent:TWinControl
 005193D1    cmp         byte ptr [eax+248],0
>005193D8    jne         00519407
 005193DA    mov         edx,dword ptr [ebp-10]
 005193DD    mov         eax,5194B8;'&'
 005193E2    call        @LStrPos
 005193E7    test        eax,eax
>005193E9    jle         00519407
 005193EB    mov         edx,dword ptr [ebp-10]
 005193EE    mov         eax,5194B8;'&'
 005193F3    call        @LStrPos
 005193F8    mov         edx,eax
 005193FA    lea         eax,[ebp-10]
 005193FD    mov         ecx,1
 00519402    call        @LStrDelete
 00519407    lea         eax,[ebp+8]
 0051940A    mov         edx,dword ptr [ebp-10]
 0051940D    call        @LStrLAsg
 00519412    push        0
 00519414    push        6
 00519416    mov         eax,dword ptr [ebp-8]
 00519419    push        eax
 0051941A    call        user32.OffsetRect
 0051941F    mov         eax,dword ptr [ebp-4]
 00519422    mov         edx,dword ptr [eax]
 00519424    call        dword ptr [edx+50];TImage.GetEnabled
 00519427    test        al,al
>00519429    je          0051944F
 0051942B    mov         eax,dword ptr [ebp-4]
 0051942E    mov         eax,dword ptr [eax+1AC];TXPStyleAddRemoveItem.FMenu:TCustomActionMenuBar
 00519434    call        TActionToolBar.GetColorMap
 00519439    mov         edx,dword ptr [eax+50]
 0051943C    mov         eax,dword ptr [ebp-4]
 0051943F    mov         eax,dword ptr [eax+160];TXPStyleAddRemoveItem..............................................
 00519445    mov         eax,dword ptr [eax+0C];TCanvas.Font:TFont
 00519448    call        TFont.SetColor
>0051944D    jmp         00519471
 0051944F    mov         eax,dword ptr [ebp-4]
 00519452    mov         eax,dword ptr [eax+1AC];TXPStyleAddRemoveItem.FMenu:TCustomActionMenuBar
 00519458    call        TActionToolBar.GetColorMap
 0051945D    mov         edx,dword ptr [eax+48]
 00519460    mov         eax,dword ptr [ebp-4]
 00519463    mov         eax,dword ptr [eax+160];TXPStyleAddRemoveItem..............................................
 00519469    mov         eax,dword ptr [eax+0C];TCanvas.Font:TFont
 0051946C    call        TFont.SetColor
 00519471    mov         eax,dword ptr [ebp+8]
 00519474    push        eax
 00519475    mov         ecx,dword ptr [ebp-0C]
 00519478    mov         edx,dword ptr [ebp-8]
 0051947B    mov         eax,dword ptr [ebp-4]
 0051947E    call        005079CC
 00519483    xor         eax,eax
 00519485    pop         edx
 00519486    pop         ecx
 00519487    pop         ecx
 00519488    mov         dword ptr fs:[eax],edx
 0051948B    push        5194A8
 00519490    lea         eax,[ebp-10]
 00519493    call        @LStrClr
 00519498    lea         eax,[ebp+8]
 0051949B    call        @LStrClr
 005194A0    ret
>005194A1    jmp         @HandleFinally
>005194A6    jmp         00519490
 005194A8    pop         ebx
 005194A9    mov         esp,ebp
 005194AB    pop         ebp
 005194AC    ret         4
end;*}

//005194BC
procedure sub_005194BC;
begin
{*
 005194BC    push        ebp
 005194BD    mov         ebp,esp
 005194BF    push        ecx
 005194C0    mov         dword ptr [ebp-4],eax
 005194C3    pop         ecx
 005194C4    pop         ebp
 005194C5    ret
*}
end;

//005194C8
{*procedure sub_005194C8(?:?);
begin
 005194C8    push        ebp
 005194C9    mov         ebp,esp
 005194CB    add         esp,0FFFFFFE8
 005194CE    mov         dword ptr [ebp-8],edx
 005194D1    mov         dword ptr [ebp-4],eax
 005194D4    mov         eax,dword ptr [ebp-4]
 005194D7    mov         edx,dword ptr [eax]
 005194D9    call        dword ptr [edx+50];TImage.GetEnabled
 005194DC    test        al,al
>005194DE    je          0051950F
 005194E0    mov         eax,dword ptr [ebp-4]
 005194E3    cmp         byte ptr [eax+1AB],0;TXPStyleToolScrollBtn.FMouseInControl:Boolean
>005194EA    je          0051950F
 005194EC    mov         eax,dword ptr [ebp-4]
 005194EF    call        0051541C
 005194F4    call        TActionToolBar.GetColorMap
 005194F9    mov         edx,dword ptr [eax+68]
 005194FC    mov         eax,dword ptr [ebp-4]
 005194FF    mov         eax,dword ptr [eax+160];TXPStyleToolScrollBtn..............................................
 00519505    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 00519508    call        TBrush.SetColor
>0051950D    jmp         00519530
 0051950F    mov         eax,dword ptr [ebp-4]
 00519512    call        0051541C
 00519517    call        TActionToolBar.GetColorMap
 0051951C    mov         edx,dword ptr [eax+40]
 0051951F    mov         eax,dword ptr [ebp-4]
 00519522    mov         eax,dword ptr [eax+160];TXPStyleToolScrollBtn..............................................
 00519528    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 0051952B    call        TBrush.SetColor
 00519530    mov         edx,dword ptr [ebp-8]
 00519533    mov         eax,dword ptr [ebp-4]
 00519536    call        004FC078
 0051953B    mov         eax,dword ptr [ebp-4]
 0051953E    mov         edx,dword ptr [eax]
 00519540    call        dword ptr [edx+50];TImage.GetEnabled
 00519543    test        al,al
>00519545    je          00519590
 00519547    mov         eax,dword ptr [ebp-4]
 0051954A    cmp         byte ptr [eax+1AB],0;TXPStyleToolScrollBtn.FMouseInControl:Boolean
>00519551    je          00519590
 00519553    mov         eax,dword ptr [ebp-4]
 00519556    call        0051541C
 0051955B    call        TActionToolBar.GetColorMap
 00519560    mov         edx,dword ptr [eax+38]
 00519563    mov         eax,dword ptr [ebp-4]
 00519566    mov         eax,dword ptr [eax+160];TXPStyleToolScrollBtn..............................................
 0051956C    mov         eax,dword ptr [eax+10];TCanvas.Pen:TPen
 0051956F    call        TPen.SetColor
 00519574    lea         edx,[ebp-18]
 00519577    mov         eax,dword ptr [ebp-4]
 0051957A    mov         ecx,dword ptr [eax]
 0051957C    call        dword ptr [ecx+44];TXPStyleToolScrollBtn.sub_004CA73C
 0051957F    lea         edx,[ebp-18]
 00519582    mov         eax,dword ptr [ebp-4]
 00519585    mov         eax,dword ptr [eax+160];TXPStyleToolScrollBtn..............................................
 0051958B    call        00487FD8
 00519590    mov         esp,ebp
 00519592    pop         ebp
 00519593    ret
end;*}

end.