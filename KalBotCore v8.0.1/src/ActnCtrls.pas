//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit ActnCtrls;

interface

uses
  SysUtils, Classes, ExtCtrls, ActnCtrls, Controls, Contnrs, ActnMan;

type
  TCustomButtonControl = class(TCustomActionControl)
  public
    FAllowAllUp:Boolean;//f1A8
    FDown:Boolean;//f1A9
    FDragging:Boolean;//f1AA
    FMouseInControl:Boolean;//f1AB
    FTrackButton:TMouseButton;//f1AC
    FFlat:Boolean;//f1AD
    FState:TButtonState;//f1AE
    procedure Loaded; virtual;//vC//004FC128
    constructor Create(AOwner:TComponent); virtual;//v2C//004FBE68
    //procedure v84(?:?; ?:?; ?:?; ?:?); virtual;//v84//004FC5F4
    procedure v8C; virtual;//v8C//004FC400
    //function v9C:?; virtual;//v9C//004FC114
    //procedure vA8(?:?); virtual;//vA8//004FC6E4
    //procedure vAC(?:?); virtual;//vAC//004FC078
    //procedure vD0(?:?); virtual;//vD0//004FC478
    //procedure vD4(?:?); virtual;//vD4//004FC6BC
    //procedure vD8(?:?); virtual;//vD8//004FC588
    procedure vDC; virtual;//vDC//004FBED4
    //procedure vE4(?:TRect; ?:?); virtual;//vE4//004FC0F4
    //procedure WMLButtonDblClk(?:?); message WM_LBUTTONDBLCLK;//004FC684
    //procedure CMDialogChar(?:?); message CM_DIALOGCHAR;//004FC740
    //procedure CMEnabledChanged(?:?); message CM_ENABLEDCHANGED;//004FBF18
    //procedure CMTextChanged(?:?); message CM_TEXTCHANGED;//004FBF3C
    //procedure CMMouseEnter(?:?); message CM_MOUSEENTER;//004FBFA4
    //procedure CMMouseLeave(?:?); message CM_MOUSELEAVE;//004FC004
    //procedure sub_004CD1B0(?:?; ?:?; ?:?; ?:?); dynamic;//004FC27C
    //procedure sub_004CD0D4(?:?; ?:?; ?:?); dynamic;//004FC1C8
    //procedure sub_004CCD68(?:?; ?:?; ?:?; ?:?); dynamic;//004FC160
    procedure sub_004CCCAC; dynamic;//004FBEF8
    procedure SetFlat(const Value:Boolean);//004FC554
  end;
  TCustomUtilityButton = class(TCustomButtonControl)
  public
    FArrowSize:Integer;//f1B0
    FDirection:TScrollDirection;//f1B4
    FScrollTimer:TTimer;//f1B8
    FOnClick:TNotifyEvent;//f1C0
    f1C2:word;//f1C2
    f1C4:TCustomActionToolBar;//f1C4
    FRepeatRate:Integer;//f1C8
    FAutoScroll:Boolean;//f1CC
    FArrowType:TArrowType;//f1CD
    destructor Destroy; virtual;//004FC810
    constructor Create(AOwner:TComponent); virtual;//v2C//004FC75C
    procedure v8C; virtual;//v8C//004FCB5C
    procedure vE8; virtual;//vE8//004FC8E0
    //procedure CMMouseEnter(?:?); message CM_MOUSEENTER;//004FC87C
    //procedure CMMouseLeave(?:?); message CM_MOUSELEAVE;//004FC8B4
    //procedure sub_004CCD68(?:?; ?:?; ?:?; ?:?); dynamic;//004FCA24
    procedure sub_004CCCAC; dynamic;//004FC850
  end;
  TCustomToolScrollBtn = class(TCustomUtilityButton)
  public
    constructor Create(AOwner:TComponent); virtual;//v2C//004FCB9C
    procedure vE8; virtual;//vE8//004FCBF8
  end;
  TCustomDropDownButton = class(TCustomButtonControl)
  public
    ...FDroppedDown:Boolean;//f1B0
    procedure v8C; virtual;//v8C//004FD03C
    procedure vDC; virtual;//vDC//004FCD48
    //procedure vE4(?:?; ?:?); virtual;//vE4//004FCDC0
    //function vE8:?; virtual;//vE8//004FCF34
    procedure DropDownClick; virtual;//vEC//004FCE34
    //procedure CMMouseLeave(?:?); message CM_MOUSELEAVE;//004FCD98
    //procedure sub_004CCD68(?:?; ?:?; ?:?; ?:?); dynamic;//004FCF78
    procedure sub_004CCCAC; dynamic;//004FCD6C
  end;
  TCustomActionCombo = class(TCustomComboBoxEx)
  public
    ....FComboControl:TCustomComboControl;//f2A0
    //procedure vF4(?:?; ?:?; ?:?); virtual;//vF4//004FD3BC
    //procedure sub_004CBB18(?:?; ?:?; ?:?); dynamic;//004FD0F8
    //procedure sub_004CBAC0(?:?; ?:?; ?:?; ?:?; ?:?); dynamic;//004FD12C
    //procedure sub_004CC67C(?:?); dynamic;//004FD0C4
    procedure sub_004CB99C; dynamic;//004FD0A4
  end;
  TCustomComboControl = class(TCustomActionControl)
  public
    ..........................FComboBox:TCustomActionCombo;//f1A8
    destructor Destroy; virtual;//004FD280
    constructor Create(AOwner:TComponent); virtual;//v2C//004FD1B0
    //procedure v60(?:?); virtual;//v60//004FD580
    //procedure v68(?:?); virtual;//v68//004FD5AC
    //procedure v84(?:?; ?:?; ?:?; ?:?); virtual;//v84//004FD494
    procedure v8C; virtual;//v8C//004FD3FC
    //procedure vD0(?:?); virtual;//vD0//004FD43C
    procedure vDC; virtual;//vDC//004FD2C0
    //procedure CMVisibleChanged(?:?); message CM_VISIBLECHANGED;//004FD34C
    procedure sub_004CC91C; dynamic;//004FD5E4
    procedure sub_004CCCAC; dynamic;//004FD324
  end;
  TCustomActionDockBar = class(TCustomActionBar)
  public
    ....FDragObject:TDragDockObject;//f280
    procedure Loaded; virtual;//vC//004FD840
    constructor Create(AOwner:TComponent); virtual;//v2C//004FD5F8
    //function v58:?; virtual;//v58//004FD888
    //procedure sub_004D1C58(?:?; ?:?; ?:?; ?:?); dynamic;//004FD7D0
    //procedure sub_004CA46C(?:?; ?:?); dynamic;//004FD654
    //procedure sub_004CBD68(?:?); dynamic;//004FD78C
    //procedure sub_004CBD24(?:?; ?:?; ?:?); dynamic;//004FD74C
  end;
  TCustomActionToolBar = class(TCustomActionDockBar)
  public
    FHiddenItems:TStack;//f288
    FHideLevel:Integer;//f28C
    FPopupBar:TCustomActionBar;//f290
    FScrollBtn:TCustomToolScrollBtn;//f294
    FShadowClr:TColor;//f298
    FHighlightClr:TColor;//f29C
    destructor Destroy; virtual;//004FD948
    constructor Create(AOwner:TComponent); virtual;//v2C//004FD8A0
    procedure SetBounds(ALeft:Integer; ATop:Integer; AWidth:Integer; AHeight:Integer); virtual;//v84//004FE934
    procedure vCC; virtual;//vCC//004FD9A0
    //function vD4(?:?):?; virtual;//vD4//004FDA24
    //procedure vE0(?:?; ?:?; ?:?); virtual;//vE0//004FDAF8
    //function v110(?:?):?; virtual;//v110//004FDAC8
    procedure v118; virtual;//v118//004FDB90
    procedure Reset; virtual;//v120//004FE858
    procedure SetOrientation(Value:TBarOrientation); virtual;//v134//004FE670
    //procedure v14C(?:?; ?:?); virtual;//v14C//004FDD2C
    //function v150:?; virtual;//v150//004FE9D8
    //procedure CMColorChanged(?:?); message CM_COLORCHANGED;//004FE8E0
    //procedure sub_004CBB18(?:?; ?:?; ?:?); dynamic;//004FE974
    procedure DisableHiding;//004FDAB4
    procedure EnableHiding;//004FDE6C
  end;
  TActionToolBar = class(TCustomActionToolBar)
  end;
    constructor Create(AOwner:TComponent);//004FBE68
    procedure sub_004FBED4;//004FBED4
    procedure sub_004CCCAC;//004FBEF8
    //procedure CMEnabledChanged(?:?);//004FBF18
    //procedure CMTextChanged(?:?);//004FBF3C
    //procedure CMMouseEnter(?:?);//004FBFA4
    //procedure CMMouseLeave(?:?);//004FC004
    //procedure sub_004FC078(?:?);//004FC078
    //procedure sub_004FC0F4(?:TRect; ?:?);//004FC0F4
    //function sub_004FC114:?;//004FC114
    procedure Loaded;//004FC128
    //procedure sub_004CCD68(?:?; ?:?; ?:?; ?:?);//004FC160
    //procedure sub_004CD0D4(?:?; ?:?; ?:?);//004FC1C8
    //procedure sub_004CD1B0(?:?; ?:?; ?:?; ?:?);//004FC27C
    procedure sub_004FC400;//004FC400
    //procedure sub_004FC478(?:?);//004FC478
    //procedure sub_004FC4C4(?:TCustomButtonControl; ?:?);//004FC4C4
    //procedure sub_004FC588(?:?);//004FC588
    //procedure sub_004FC5C0(?:TCustomButtonControl; ?:?);//004FC5C0
    //procedure sub_004FC5F4(?:?; ?:?; ?:?; ?:?);//004FC5F4
    procedure sub_004FC62C(?:TCustomButtonControl);//004FC62C
    //procedure WMLButtonDblClk(?:?);//004FC684
    //procedure sub_004FC6BC(?:?);//004FC6BC
    //procedure sub_004FC6E4(?:?);//004FC6E4
    //procedure CMDialogChar(?:?);//004FC740
    constructor Create(AOwner:TComponent);//004FC75C
    destructor Destroy;//004FC810
    procedure sub_004CCCAC;//004FC850
    //procedure CMMouseEnter(?:?);//004FC87C
    //procedure CMMouseLeave(?:?);//004FC8B4
    procedure sub_004FC8E0;//004FC8E0
    //procedure sub_004CCD68(?:?; ?:?; ?:?; ?:?);//004FCA24
    //procedure sub_004FCAC0(?:TCustomMenuExpandBtn; ?:?);//004FCAC0
    //procedure sub_004FCAF4(?:TCustomMenuExpandBtn; ?:?);//004FCAF4
    //procedure sub_004FCB28(?:TCustomUtilityButton; ?:?);//004FCB28
    procedure sub_004FCB5C;//004FCB5C
    constructor Create(AOwner:TComponent);//004FCB9C
    procedure sub_004FCBF8;//004FCBF8
    procedure sub_004FCD48;//004FCD48
    procedure sub_004CCCAC;//004FCD6C
    //procedure CMMouseLeave(?:?);//004FCD98
    //procedure sub_004FCDC0(?:?; ?:?);//004FCDC0
    procedure DropDownClick;//004FCE34
    //function sub_004FCF34:?;//004FCF34
    //procedure sub_004CCD68(?:?; ?:?; ?:?; ?:?);//004FCF78
    //function sub_004FCFCC(?:TCustomDropDownButton):?;//004FCFCC
    procedure sub_004FD03C;//004FD03C
    procedure sub_004CB99C;//004FD0A4
    //procedure sub_004CC67C(?:?);//004FD0C4
    //procedure sub_004CBB18(?:?; ?:?; ?:?);//004FD0F8
    //procedure sub_004CBAC0(?:?; ?:?; ?:?; ?:?; ?:?);//004FD12C
    constructor Create(AOwner:TComponent);//004FD1B0
    destructor Destroy;//004FD280
    procedure sub_004FD2C0;//004FD2C0
    procedure sub_004CCCAC;//004FD324
    //procedure CMVisibleChanged(?:?);//004FD34C
    //procedure sub_004FD37C(?:?; ?:?);//004FD37C
    //procedure sub_004FD3BC(?:?; ?:?; ?:?);//004FD3BC
    procedure sub_004FD3FC;//004FD3FC
    //procedure sub_004FD43C(?:?);//004FD43C
    //procedure sub_004FD494(?:?; ?:?; ?:?; ?:?);//004FD494
    //procedure sub_004FD580(?:?);//004FD580
    //procedure sub_004FD5AC(?:?);//004FD5AC
    procedure sub_004CC91C;//004FD5E4
    constructor Create(AOwner:TComponent);//004FD5F8
    //procedure sub_004CA46C(?:?; ?:?);//004FD654
    //procedure sub_004CBD24(?:?; ?:?; ?:?);//004FD74C
    //procedure sub_004CBD68(?:?);//004FD78C
    //procedure sub_004D1C58(?:?; ?:?; ?:?; ?:?);//004FD7D0
    procedure Loaded;//004FD840
    //function sub_004FD888:?;//004FD888
    constructor Create(AOwner:TComponent);//004FD8A0
    destructor Destroy;//004FD948
    procedure sub_004FD9A0;//004FD9A0
    //function sub_004FDA24(?:?):?;//004FDA24
    //function sub_004FDAC8(?:?):?;//004FDAC8
    //procedure sub_004FDAF8(?:?; ?:?; ?:?);//004FDAF8
    procedure sub_004FDB90;//004FDB90
    //procedure sub_004FDD2C(?:?; ?:?);//004FDD2C
    //function sub_004FDEA0(?:TWinControl):?;//004FDEA0
    //function sub_004FDED4(?:?; ?:?):?;//004FDED4
    procedure sub_004FE114(?:TCustomActionToolBar);//004FE114
    procedure SetOrientation(Value:TBarOrientation);//004FE670
    procedure sub_004FE748(?:TCustomActionToolBar);//004FE748
    procedure Reset;//004FE858
    //procedure CMColorChanged(?:?);//004FE8E0
    procedure SetBounds(ALeft:Integer; ATop:Integer; AWidth:Integer; AHeight:Integer);//004FE934
    //procedure sub_004CBB18(?:?; ?:?; ?:?);//004FE974
    //function sub_004FE9D8:?;//004FE9D8
    //function sub_004FEA10(?:TCustomActionToolBar):?;//004FEA10

implementation

//004FBE68
constructor TCustomButtonControl.Create(AOwner:TComponent);
begin
{*
 004FBE68    push        ebp
 004FBE69    mov         ebp,esp
 004FBE6B    add         esp,0FFFFFFF4
 004FBE6E    test        dl,dl
>004FBE70    je          004FBE7A
 004FBE72    add         esp,0FFFFFFF0
 004FBE75    call        @ClassCreate
 004FBE7A    mov         dword ptr [ebp-0C],ecx
 004FBE7D    mov         byte ptr [ebp-5],dl
 004FBE80    mov         dword ptr [ebp-4],eax
 004FBE83    mov         ecx,dword ptr [ebp-0C]
 004FBE86    xor         edx,edx
 004FBE88    mov         eax,dword ptr [ebp-4]
 004FBE8B    call        TCustomActionControl.Create
 004FBE90    mov         eax,dword ptr [ebp-4]
 004FBE93    mov         edx,dword ptr ds:[4FBED0];0x80 gvar_004FBED0
 004FBE99    mov         dword ptr [eax+50],edx;TCustomButtonControl.FControlStyle:TControlStyle
 004FBE9C    mov         eax,dword ptr [ebp-4]
 004FBE9F    mov         byte ptr [eax+1AD],1;TCustomButtonControl.FFlat:Boolean
 004FBEA6    mov         eax,dword ptr [ebp-4]
 004FBEA9    mov         byte ptr [eax+1AE],0;TCustomButtonControl.FState:TButtonState
 004FBEB0    mov         eax,dword ptr [ebp-4]
 004FBEB3    cmp         byte ptr [ebp-5],0
>004FBEB7    je          004FBEC8
 004FBEB9    call        @AfterConstruction
 004FBEBE    pop         dword ptr fs:[0]
 004FBEC5    add         esp,0C
 004FBEC8    mov         eax,dword ptr [ebp-4]
 004FBECB    mov         esp,ebp
 004FBECD    pop         ebp
 004FBECE    ret
*}
end;

//004FBED4
procedure sub_004FBED4;
begin
{*
 004FBED4    push        ebp
 004FBED5    mov         ebp,esp
 004FBED7    push        ecx
 004FBED8    mov         dword ptr [ebp-4],eax
 004FBEDB    mov         eax,dword ptr [ebp-4]
 004FBEDE    call        00515568
 004FBEE3    mov         eax,dword ptr [ebp-4]
 004FBEE6    mov         edx,dword ptr [eax+48];TCustomButtonControl.Width:Integer
 004FBEE9    inc         edx
 004FBEEA    mov         eax,dword ptr [ebp-4]
 004FBEED    call        TControl.SetWidth
 004FBEF2    pop         ecx
 004FBEF3    pop         ebp
 004FBEF4    ret
*}
end;

//004FBEF8
procedure TCustomButtonControl.sub_004CCCAC;
begin
{*
 004FBEF8    push        ebp
 004FBEF9    mov         ebp,esp
 004FBEFB    push        ecx
 004FBEFC    mov         dword ptr [ebp-4],eax
 004FBEFF    mov         dl,1
 004FBF01    mov         eax,dword ptr [ebp-4]
 004FBF04    mov         ecx,dword ptr [eax]
 004FBF06    call        dword ptr [ecx+0D8];TCustomButtonControl.sub_004FC588
 004FBF0C    mov         eax,dword ptr [ebp-4]
 004FBF0F    call        TCustomActionControl.sub_004CCCAC
 004FBF14    pop         ecx
 004FBF15    pop         ebp
 004FBF16    ret
*}
end;

//004FBF18
{*procedure TCustomButtonControl.CMEnabledChanged(?:?);
begin
 004FBF18    push        ebp
 004FBF19    mov         ebp,esp
 004FBF1B    add         esp,0FFFFFFF8
 004FBF1E    mov         dword ptr [ebp-8],edx
 004FBF21    mov         dword ptr [ebp-4],eax
 004FBF24    mov         eax,dword ptr [ebp-4]
 004FBF27    call        004FC62C
 004FBF2C    mov         edx,dword ptr [ebp-8]
 004FBF2F    mov         eax,dword ptr [ebp-4]
 004FBF32    call        TControl.CMEnabledChanged
 004FBF37    pop         ecx
 004FBF38    pop         ecx
 004FBF39    pop         ebp
 004FBF3A    ret
end;*}

//004FBF3C
{*procedure TCustomButtonControl.CMTextChanged(?:?);
begin
 004FBF3C    push        ebp
 004FBF3D    mov         ebp,esp
 004FBF3F    add         esp,0FFFFFFF8
 004FBF42    mov         dword ptr [ebp-8],edx
 004FBF45    mov         dword ptr [ebp-4],eax
 004FBF48    mov         eax,dword ptr [ebp-4]
 004FBF4B    mov         edx,dword ptr [eax]
 004FBF4D    call        dword ptr [edx+0C8];TCustomButtonControl.sub_005152A0
 004FBF53    test        al,al
>004FBF55    je          004FBF93
 004FBF57    mov         eax,dword ptr [ebp-4]
 004FBF5A    call        0051541C
 004FBF5F    test        eax,eax
>004FBF61    je          004FBF84
 004FBF63    mov         eax,dword ptr [ebp-4]
 004FBF66    call        0051541C
 004FBF6B    mov         al,byte ptr [eax+227]
 004FBF71    sub         al,2
>004FBF73    jae         004FBF84
 004FBF75    mov         edx,8
 004FBF7A    mov         eax,dword ptr [ebp-4]
 004FBF7D    call        TControl.SetWidth
>004FBF82    jmp         004FBF9E
 004FBF84    mov         edx,6
 004FBF89    mov         eax,dword ptr [ebp-4]
 004FBF8C    call        TControl.SetHeight
>004FBF91    jmp         004FBF9E
 004FBF93    mov         edx,dword ptr [ebp-8]
 004FBF96    mov         eax,dword ptr [ebp-4]
 004FBF99    call        TCustomActionControl.CMTextChanged
 004FBF9E    pop         ecx
 004FBF9F    pop         ecx
 004FBFA0    pop         ebp
 004FBFA1    ret
end;*}

//004FBFA4
{*procedure TCustomButtonControl.CMMouseEnter(?:?);
begin
 004FBFA4    push        ebp
 004FBFA5    mov         ebp,esp
 004FBFA7    add         esp,0FFFFFFF8
 004FBFAA    mov         dword ptr [ebp-8],edx
 004FBFAD    mov         dword ptr [ebp-4],eax
 004FBFB0    mov         edx,dword ptr [ebp-8]
 004FBFB3    mov         eax,dword ptr [ebp-4]
 004FBFB6    call        TControl.CMMouseEnter
 004FBFBB    mov         eax,dword ptr [ebp-4]
 004FBFBE    cmp         byte ptr [eax+1AD],0;TCustomButtonControl.FFlat:Boolean
>004FBFC5    je          004FBFFD
 004FBFC7    mov         eax,dword ptr [ebp-4]
 004FBFCA    cmp         byte ptr [eax+1AB],0;TCustomButtonControl.FMouseInControl:Boolean
>004FBFD1    jne         004FBFFD
 004FBFD3    mov         eax,dword ptr [ebp-4]
 004FBFD6    mov         edx,dword ptr [eax]
 004FBFD8    call        dword ptr [edx+50];TImage.GetEnabled
 004FBFDB    test        al,al
>004FBFDD    je          004FBFFD
 004FBFDF    call        user32.GetCapture
 004FBFE4    test        eax,eax
>004FBFE6    jne         004FBFFD
 004FBFE8    mov         eax,dword ptr [ebp-4]
 004FBFEB    mov         byte ptr [eax+1AB],1;TCustomButtonControl.FMouseInControl:Boolean
 004FBFF2    mov         eax,dword ptr [ebp-4]
 004FBFF5    mov         edx,dword ptr [eax]
 004FBFF7    call        dword ptr [edx+80];TCustomButtonControl.sub_004CB7F8
 004FBFFD    pop         ecx
 004FBFFE    pop         ecx
 004FBFFF    pop         ebp
 004FC000    ret
end;*}

//004FC004
{*procedure TCustomButtonControl.CMMouseLeave(?:?);
begin
 004FC004    push        ebp
 004FC005    mov         ebp,esp
 004FC007    add         esp,0FFFFFFF8
 004FC00A    mov         dword ptr [ebp-8],edx
 004FC00D    mov         dword ptr [ebp-4],eax
 004FC010    mov         edx,dword ptr [ebp-8]
 004FC013    mov         eax,dword ptr [ebp-4]
 004FC016    call        TControl.CMMouseLeave
 004FC01B    mov         eax,dword ptr [ebp-4]
 004FC01E    cmp         byte ptr [eax+1AD],0;TCustomButtonControl.FFlat:Boolean
>004FC025    je          004FC074
 004FC027    mov         eax,dword ptr [ebp-4]
 004FC02A    cmp         byte ptr [eax+1AB],0;TCustomButtonControl.FMouseInControl:Boolean
>004FC031    je          004FC074
 004FC033    mov         eax,dword ptr [ebp-4]
 004FC036    mov         edx,dword ptr [eax]
 004FC038    call        dword ptr [edx+50];TImage.GetEnabled
 004FC03B    test        al,al
>004FC03D    je          004FC074
 004FC03F    mov         eax,dword ptr [ebp-4]
 004FC042    mov         byte ptr [eax+1AB],0;TCustomButtonControl.FMouseInControl:Boolean
 004FC049    mov         eax,dword ptr [ebp-4]
 004FC04C    mov         edx,dword ptr [eax]
 004FC04E    call        dword ptr [edx+0C0];TCustomButtonControl.sub_00515370
 004FC054    test        al,al
>004FC056    jne         004FC062
 004FC058    mov         eax,dword ptr [ebp-4]
 004FC05B    mov         byte ptr [eax+1AE],0;TCustomButtonControl.FState:TButtonState
 004FC062    mov         eax,dword ptr [ebp-4]
 004FC065    mov         byte ptr [eax+1AA],0;TCustomButtonControl.FDragging:Boolean
 004FC06C    mov         eax,dword ptr [ebp-4]
 004FC06F    mov         edx,dword ptr [eax]
 004FC071    call        dword ptr [edx+7C];TCustomButtonControl.sub_004CB6E8
 004FC074    pop         ecx
 004FC075    pop         ecx
 004FC076    pop         ebp
 004FC077    ret
end;*}

//004FC078
{*procedure sub_004FC078(?:?);
begin
 004FC078    push        ebp
 004FC079    mov         ebp,esp
 004FC07B    add         esp,0FFFFFFF8
 004FC07E    mov         dword ptr [ebp-8],edx
 004FC081    mov         dword ptr [ebp-4],eax
 004FC084    mov         eax,dword ptr [ebp-4]
 004FC087    mov         edx,dword ptr [eax]
 004FC089    call        dword ptr [edx+0C0];TCustomButtonControl.sub_00515370
 004FC08F    test        al,al
>004FC091    je          004FC0E5
 004FC093    mov         eax,dword ptr [ebp-4]
 004FC096    cmp         byte ptr [eax+1AB],0;TCustomButtonControl.FMouseInControl:Boolean
>004FC09D    jne         004FC0E5
 004FC09F    mov         eax,dword ptr [ebp-4]
 004FC0A2    mov         eax,dword ptr [eax+160];TCustomButtonControl...............................................
 004FC0A8    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 004FC0AB    call        TBrush.GetColor
 004FC0B0    mov         edx,13
 004FC0B5    call        004F8F98
 004FC0BA    push        eax
 004FC0BB    mov         eax,dword ptr [ebp-4]
 004FC0BE    mov         eax,dword ptr [eax+160];TCustomButtonControl...............................................
 004FC0C4    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 004FC0C7    call        TBrush.GetColor
 004FC0CC    pop         edx
 004FC0CD    call        0048FA88
 004FC0D2    mov         edx,eax
 004FC0D4    mov         eax,dword ptr [ebp-4]
 004FC0D7    mov         eax,dword ptr [eax+160];TCustomButtonControl...............................................
 004FC0DD    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 004FC0E0    call        0048775C
 004FC0E5    mov         edx,dword ptr [ebp-8]
 004FC0E8    mov         eax,dword ptr [ebp-4]
 004FC0EB    call        00513A2C
 004FC0F0    pop         ecx
 004FC0F1    pop         ecx
 004FC0F2    pop         ebp
 004FC0F3    ret
end;*}

//004FC0F4
{*procedure sub_004FC0F4(?:TRect; ?:?);
begin
 004FC0F4    push        ebp
 004FC0F5    mov         ebp,esp
 004FC0F7    add         esp,0FFFFFFE8
 004FC0FA    push        esi
 004FC0FB    push        edi
 004FC0FC    mov         esi,edx
 004FC0FE    lea         edi,[ebp-14]
 004FC101    movs        dword ptr [edi],dword ptr [esi]
 004FC102    movs        dword ptr [edi],dword ptr [esi]
 004FC103    movs        dword ptr [edi],dword ptr [esi]
 004FC104    movs        dword ptr [edi],dword ptr [esi]
 004FC105    mov         byte ptr [ebp-15],cl
 004FC108    mov         dword ptr [ebp-4],eax
 004FC10B    pop         edi
 004FC10C    pop         esi
 004FC10D    mov         esp,ebp
 004FC10F    pop         ebp
 004FC110    ret
end;*}

//004FC114
{*function sub_004FC114:?;
begin
 004FC114    push        ebp
 004FC115    mov         ebp,esp
 004FC117    add         esp,0FFFFFFF8
 004FC11A    mov         dword ptr [ebp-4],eax
 004FC11D    mov         byte ptr [ebp-5],0
 004FC121    mov         al,byte ptr [ebp-5]
 004FC124    pop         ecx
 004FC125    pop         ecx
 004FC126    pop         ebp
 004FC127    ret
end;*}

//004FC128
procedure TCustomButtonControl.Loaded;
begin
{*
 004FC128    push        ebp
 004FC129    mov         ebp,esp
 004FC12B    push        ecx
 004FC12C    push        esi
 004FC12D    mov         dword ptr [ebp-4],eax
 004FC130    mov         eax,dword ptr [ebp-4]
 004FC133    call        TControl.Loaded
 004FC138    mov         eax,dword ptr [ebp-4]
 004FC13B    mov         edx,dword ptr [eax]
 004FC13D    call        dword ptr [edx+3C];TCustomButtonControl.sub_005153C4
 004FC140    test        eax,eax
>004FC142    je          004FC15C
 004FC144    mov         eax,dword ptr [ebp-4]
 004FC147    mov         edx,dword ptr [eax]
 004FC149    call        dword ptr [edx+3C];TCustomButtonControl.sub_005153C4
 004FC14C    mov         edx,eax
 004FC14E    mov         cl,1
 004FC150    mov         eax,dword ptr [ebp-4]
 004FC153    mov         si,0FFEF
 004FC157    call        @CallDynaInst;TControl.sub_004CD9E4
 004FC15C    pop         esi
 004FC15D    pop         ecx
 004FC15E    pop         ebp
 004FC15F    ret
*}
end;

//004FC160
{*procedure TCustomButtonControl.sub_004CCD68(?:?; ?:?; ?:?; ?:?);
begin
 004FC160    push        ebp
 004FC161    mov         ebp,esp
 004FC163    add         esp,0FFFFFFF8
 004FC166    mov         byte ptr [ebp-6],cl
 004FC169    mov         byte ptr [ebp-5],dl
 004FC16C    mov         dword ptr [ebp-4],eax
 004FC16F    mov         eax,dword ptr [ebp+0C]
 004FC172    push        eax
 004FC173    mov         eax,dword ptr [ebp+8]
 004FC176    push        eax
 004FC177    mov         cl,byte ptr [ebp-6]
 004FC17A    mov         dl,byte ptr [ebp-5]
 004FC17D    mov         eax,dword ptr [ebp-4]
 004FC180    call        TControl.sub_004CCD68
 004FC185    cmp         byte ptr [ebp-5],0
>004FC189    jne         004FC1BF
 004FC18B    mov         eax,dword ptr [ebp-4]
 004FC18E    mov         edx,dword ptr [eax]
 004FC190    call        dword ptr [edx+50];TImage.GetEnabled
 004FC193    test        al,al
>004FC195    je          004FC1BF
 004FC197    mov         eax,dword ptr [ebp-4]
 004FC19A    cmp         byte ptr [eax+1A9],0;TCustomButtonControl.FDown:Boolean
>004FC1A1    jne         004FC1B5
 004FC1A3    mov         dl,2
 004FC1A5    mov         eax,dword ptr [ebp-4]
 004FC1A8    call        004FC5C0
 004FC1AD    mov         eax,dword ptr [ebp-4]
 004FC1B0    mov         edx,dword ptr [eax]
 004FC1B2    call        dword ptr [edx+7C];TCustomButtonControl.sub_004CB6E8
 004FC1B5    mov         eax,dword ptr [ebp-4]
 004FC1B8    mov         byte ptr [eax+1AA],1;TCustomButtonControl.FDragging:Boolean
 004FC1BF    pop         ecx
 004FC1C0    pop         ecx
 004FC1C1    pop         ebp
 004FC1C2    ret         8
end;*}

//004FC1C8
{*procedure TCustomButtonControl.sub_004CD0D4(?:?; ?:?; ?:?);
begin
 004FC1C8    push        ebp
 004FC1C9    mov         ebp,esp
 004FC1CB    add         esp,0FFFFFFF0
 004FC1CE    mov         dword ptr [ebp-0C],ecx
 004FC1D1    mov         byte ptr [ebp-5],dl
 004FC1D4    mov         dword ptr [ebp-4],eax
 004FC1D7    mov         eax,dword ptr [ebp+8]
 004FC1DA    push        eax
 004FC1DB    mov         ecx,dword ptr [ebp-0C]
 004FC1DE    mov         dl,byte ptr [ebp-5]
 004FC1E1    mov         eax,dword ptr [ebp-4]
 004FC1E4    call        TControl.sub_004CD0D4
 004FC1E9    mov         eax,dword ptr [ebp-4]
 004FC1EC    cmp         byte ptr [eax+1AA],0;TCustomButtonControl.FDragging:Boolean
>004FC1F3    je          004FC262
 004FC1F5    mov         eax,dword ptr [ebp-4]
 004FC1F8    cmp         byte ptr [eax+1A9],0;TCustomButtonControl.FDown:Boolean
>004FC1FF    jne         004FC207
 004FC201    mov         byte ptr [ebp-0D],0
>004FC205    jmp         004FC20B
 004FC207    mov         byte ptr [ebp-0D],3
 004FC20B    cmp         dword ptr [ebp-0C],0
>004FC20F    jl          004FC247
 004FC211    mov         eax,dword ptr [ebp-4]
 004FC214    call        TControl.GetClientWidth
 004FC219    cmp         eax,dword ptr [ebp-0C]
>004FC21C    jle         004FC247
 004FC21E    cmp         dword ptr [ebp+8],0
>004FC222    jl          004FC247
 004FC224    mov         eax,dword ptr [ebp-4]
 004FC227    call        TControl.GetClientHeight
 004FC22C    cmp         eax,dword ptr [ebp+8]
>004FC22F    jl          004FC247
 004FC231    mov         eax,dword ptr [ebp-4]
 004FC234    cmp         byte ptr [eax+1A9],0;TCustomButtonControl.FDown:Boolean
>004FC23B    je          004FC243
 004FC23D    mov         byte ptr [ebp-0D],3
>004FC241    jmp         004FC247
 004FC243    mov         byte ptr [ebp-0D],2
 004FC247    mov         al,byte ptr [ebp-0D]
 004FC24A    mov         edx,dword ptr [ebp-4]
 004FC24D    cmp         al,byte ptr [edx+1AE];TCustomButtonControl.FState:TButtonState
>004FC253    je          004FC276
 004FC255    mov         dl,byte ptr [ebp-0D]
 004FC258    mov         eax,dword ptr [ebp-4]
 004FC25B    call        004FC5C0
>004FC260    jmp         004FC276
 004FC262    mov         eax,dword ptr [ebp-4]
 004FC265    cmp         byte ptr [eax+1AB],0;TCustomButtonControl.FMouseInControl:Boolean
>004FC26C    jne         004FC276
 004FC26E    mov         eax,dword ptr [ebp-4]
 004FC271    call        004FC62C
 004FC276    mov         esp,ebp
 004FC278    pop         ebp
 004FC279    ret         4
end;*}

//004FC27C
{*procedure TCustomButtonControl.sub_004CD1B0(?:?; ?:?; ?:?; ?:?);
begin
 004FC27C    push        ebp
 004FC27D    mov         ebp,esp
 004FC27F    add         esp,0FFFFFFF8
 004FC282    push        esi
 004FC283    mov         byte ptr [ebp-6],cl
 004FC286    mov         byte ptr [ebp-5],dl
 004FC289    mov         dword ptr [ebp-4],eax
 004FC28C    mov         eax,dword ptr [ebp+0C]
 004FC28F    push        eax
 004FC290    mov         eax,dword ptr [ebp+8]
 004FC293    push        eax
 004FC294    mov         cl,byte ptr [ebp-6]
 004FC297    mov         dl,byte ptr [ebp-5]
 004FC29A    mov         eax,dword ptr [ebp-4]
 004FC29D    call        TControl.sub_004CD1B0
 004FC2A2    mov         eax,dword ptr [ebp-4]
 004FC2A5    cmp         byte ptr [eax+1AA],0;TCustomButtonControl.FDragging:Boolean
>004FC2AC    je          004FC3F8
 004FC2B2    mov         eax,dword ptr [ebp-4]
 004FC2B5    mov         byte ptr [eax+1AA],0;TCustomButtonControl.FDragging:Boolean
 004FC2BC    cmp         dword ptr [ebp+0C],0
>004FC2C0    jl          004FC2E2
 004FC2C2    mov         eax,dword ptr [ebp-4]
 004FC2C5    call        TControl.GetClientWidth
 004FC2CA    cmp         eax,dword ptr [ebp+0C]
>004FC2CD    jle         004FC2E2
 004FC2CF    cmp         dword ptr [ebp+8],0
>004FC2D3    jl          004FC2E2
 004FC2D5    mov         eax,dword ptr [ebp-4]
 004FC2D8    call        TControl.GetClientHeight
 004FC2DD    cmp         eax,dword ptr [ebp+8]
>004FC2E0    jge         004FC2E6
 004FC2E2    xor         eax,eax
>004FC2E4    jmp         004FC2E8
 004FC2E6    mov         al,1
 004FC2E8    mov         byte ptr [ebp-7],al
 004FC2EB    mov         eax,dword ptr [ebp-4]
 004FC2EE    cmp         dword ptr [eax+16C],0;TCustomButtonControl.FActionClient:TActionClientItem
>004FC2F5    je          004FC38A
 004FC2FB    mov         eax,dword ptr [ebp-4]
 004FC2FE    mov         eax,dword ptr [eax+16C];TCustomButtonControl.FActionClient:TActionClientItem
 004FC304    call        TActionClientItem.GetAction
 004FC309    mov         edx,dword ptr ds:[4DA408];TCustomAction
 004FC30F    call        @IsClass
 004FC314    test        al,al
>004FC316    je          004FC38A
 004FC318    mov         eax,dword ptr [ebp-4]
 004FC31B    mov         eax,dword ptr [eax+16C];TCustomButtonControl.FActionClient:TActionClientItem
 004FC321    call        TActionClientItem.GetAction
 004FC326    cmp         dword ptr [eax+6C],0
>004FC32A    je          004FC357
 004FC32C    mov         eax,dword ptr [ebp-4]
 004FC32F    mov         eax,dword ptr [eax+16C];TCustomButtonControl.FActionClient:TActionClientItem
 004FC335    call        TActionClientItem.GetAction
 004FC33A    cmp         byte ptr [eax+95],0
>004FC341    je          004FC38A
 004FC343    mov         eax,dword ptr [ebp-4]
 004FC346    mov         eax,dword ptr [eax+16C];TCustomButtonControl.FActionClient:TActionClientItem
 004FC34C    call        TActionClientItem.GetAction
 004FC351    cmp         byte ptr [eax+69],0
>004FC355    je          004FC38A
 004FC357    mov         eax,dword ptr [ebp-4]
 004FC35A    mov         byte ptr [eax+1AE],0;TCustomButtonControl.FState:TButtonState
 004FC361    mov         eax,dword ptr [ebp-4]
 004FC364    mov         byte ptr [eax+1AB],0;TCustomButtonControl.FMouseInControl:Boolean
 004FC36B    cmp         byte ptr [ebp-7],0
>004FC36F    je          004FC3DE
 004FC371    mov         eax,dword ptr [ebp-4]
 004FC374    mov         al,byte ptr [eax+1AE];TCustomButtonControl.FState:TButtonState
 004FC37A    add         al,0FE
 004FC37C    sub         al,2
>004FC37E    jb          004FC3DE
 004FC380    mov         eax,dword ptr [ebp-4]
 004FC383    mov         edx,dword ptr [eax]
 004FC385    call        dword ptr [edx+7C];TCustomButtonControl.sub_004CB6E8
>004FC388    jmp         004FC3DE
 004FC38A    cmp         byte ptr [ebp-7],0
>004FC38E    je          004FC3BD
 004FC390    mov         eax,dword ptr [ebp-4]
 004FC393    mov         dl,byte ptr [eax+1A9];TCustomButtonControl.FDown:Boolean
 004FC399    xor         dl,1
 004FC39C    mov         eax,dword ptr [ebp-4]
 004FC39F    call        004FC4C4
 004FC3A4    mov         eax,dword ptr [ebp-4]
 004FC3A7    cmp         byte ptr [eax+1A9],0;TCustomButtonControl.FDown:Boolean
>004FC3AE    je          004FC3DE
 004FC3B0    mov         eax,dword ptr [ebp-4]
 004FC3B3    mov         edx,dword ptr [eax]
 004FC3B5    call        dword ptr [edx+80];TCustomButtonControl.sub_004CB7F8
>004FC3BB    jmp         004FC3DE
 004FC3BD    mov         eax,dword ptr [ebp-4]
 004FC3C0    cmp         byte ptr [eax+1A9],0;TCustomButtonControl.FDown:Boolean
>004FC3C7    je          004FC3D3
 004FC3C9    mov         eax,dword ptr [ebp-4]
 004FC3CC    mov         byte ptr [eax+1AE],3;TCustomButtonControl.FState:TButtonState
 004FC3D3    mov         eax,dword ptr [ebp-4]
 004FC3D6    mov         edx,dword ptr [eax]
 004FC3D8    call        dword ptr [edx+80];TCustomButtonControl.sub_004CB7F8
 004FC3DE    cmp         byte ptr [ebp-7],0
>004FC3E2    je          004FC3F0
 004FC3E4    mov         eax,dword ptr [ebp-4]
 004FC3E7    mov         si,0FFEB
 004FC3EB    call        @CallDynaInst;TCustomButtonControl.sub_004CCCAC
 004FC3F0    mov         eax,dword ptr [ebp-4]
 004FC3F3    call        004FC62C
 004FC3F8    pop         esi
 004FC3F9    pop         ecx
 004FC3FA    pop         ecx
 004FC3FB    pop         ebp
 004FC3FC    ret         8
end;*}

//004FC400
procedure sub_004FC400;
begin
{*
 004FC400    push        ebp
 004FC401    mov         ebp,esp
 004FC403    add         esp,0FFFFFFEC
 004FC406    push        ebx
 004FC407    mov         dword ptr [ebp-4],eax
 004FC40A    mov         eax,dword ptr [ebp-4]
 004FC40D    call        005143A8
 004FC412    mov         eax,dword ptr [ebp-4]
 004FC415    mov         edx,dword ptr [eax]
 004FC417    call        dword ptr [edx+0C8];TCustomButtonControl.sub_005152A0
 004FC41D    test        al,al
>004FC41F    jne         004FC473
 004FC421    mov         eax,dword ptr [ebp-4]
 004FC424    mov         eax,dword ptr [eax+160];TCustomButtonControl...............................................
 004FC42A    mov         eax,dword ptr [eax+10];TCanvas.Pen:TPen
 004FC42D    mov         edx,1
 004FC432    call        TPen.SetWidth
 004FC437    lea         edx,[ebp-14]
 004FC43A    mov         eax,dword ptr [ebp-4]
 004FC43D    mov         ecx,dword ptr [eax]
 004FC43F    call        dword ptr [ecx+44];TCustomButtonControl.sub_004CA73C
 004FC442    lea         eax,[ebp-14]
 004FC445    push        eax
 004FC446    mov         eax,dword ptr [ebp-4]
 004FC449    mov         edx,dword ptr [eax]
 004FC44B    call        dword ptr [edx+0C0];TCustomButtonControl.sub_00515370
 004FC451    test        al,al
>004FC453    jne         004FC465
 004FC455    mov         eax,dword ptr [ebp-4]
 004FC458    cmp         byte ptr [eax+1AE],2;TCustomButtonControl.FState:TButtonState
>004FC45F    je          004FC465
 004FC461    xor         ecx,ecx
>004FC463    jmp         004FC467
 004FC465    mov         cl,1
 004FC467    mov         eax,dword ptr [ebp-4]
 004FC46A    pop         edx
 004FC46B    mov         ebx,dword ptr [eax]
 004FC46D    call        dword ptr [ebx+0E4];TCustomButtonControl.sub_004FC0F4
 004FC473    pop         ebx
 004FC474    mov         esp,ebp
 004FC476    pop         ebp
 004FC477    ret
*}
end;

//004FC478
{*procedure sub_004FC478(?:?);
begin
 004FC478    push        ebp
 004FC479    mov         ebp,esp
 004FC47B    add         esp,0FFFFFFF8
 004FC47E    mov         dword ptr [ebp-8],edx
 004FC481    mov         dword ptr [ebp-4],eax
 004FC484    mov         edx,dword ptr [ebp-8]
 004FC487    mov         eax,dword ptr [ebp-4]
 004FC48A    call        0051497C
 004FC48F    mov         eax,dword ptr [ebp-4]
 004FC492    mov         edx,dword ptr [eax]
 004FC494    call        dword ptr [edx+50];TImage.GetEnabled
 004FC497    test        al,al
>004FC499    je          004FC4B0
 004FC49B    cmp         dword ptr [ebp-8],0
>004FC49F    je          004FC4B0
 004FC4A1    mov         eax,dword ptr [ebp-4]
 004FC4A4    mov         edx,dword ptr [eax]
 004FC4A6    call        dword ptr [edx+0C8];TCustomButtonControl.sub_005152A0
 004FC4AC    test        al,al
>004FC4AE    je          004FC4B4
 004FC4B0    xor         edx,edx
>004FC4B2    jmp         004FC4B6
 004FC4B4    mov         dl,1
 004FC4B6    mov         eax,dword ptr [ebp-4]
 004FC4B9    mov         ecx,dword ptr [eax]
 004FC4BB    call        dword ptr [ecx+64];TImage.SetEnabled
 004FC4BE    pop         ecx
 004FC4BF    pop         ecx
 004FC4C0    pop         ebp
 004FC4C1    ret
end;*}

//004FC4C4
{*procedure sub_004FC4C4(?:TCustomButtonControl; ?:?);
begin
 004FC4C4    push        ebp
 004FC4C5    mov         ebp,esp
 004FC4C7    add         esp,0FFFFFFF8
 004FC4CA    mov         byte ptr [ebp-5],dl
 004FC4CD    mov         dword ptr [ebp-4],eax
 004FC4D0    mov         eax,dword ptr [ebp-4]
 004FC4D3    mov         edx,dword ptr [eax]
 004FC4D5    call        dword ptr [edx+0C4];TCustomButtonControl.sub_00514368
 004FC4DB    test        al,al
>004FC4DD    jne         004FC4E3
 004FC4DF    mov         byte ptr [ebp-5],0
 004FC4E3    mov         al,byte ptr [ebp-5]
 004FC4E6    mov         edx,dword ptr [ebp-4]
 004FC4E9    cmp         al,byte ptr [edx+1A9];TCustomButtonControl.FDown:Boolean
>004FC4EF    je          004FC550
 004FC4F1    mov         eax,dword ptr [ebp-4]
 004FC4F4    cmp         byte ptr [eax+1A9],0;TCustomButtonControl.FDown:Boolean
>004FC4FB    je          004FC509
 004FC4FD    mov         eax,dword ptr [ebp-4]
 004FC500    cmp         byte ptr [eax+1A8],0;TCustomButtonControl.FAllowAllUp:Boolean
>004FC507    je          004FC550
 004FC509    mov         al,byte ptr [ebp-5]
 004FC50C    mov         edx,dword ptr [ebp-4]
 004FC50F    mov         byte ptr [edx+1A9],al;TCustomButtonControl.FDown:Boolean
 004FC515    cmp         byte ptr [ebp-5],0
>004FC519    je          004FC53B
 004FC51B    mov         eax,dword ptr [ebp-4]
 004FC51E    cmp         byte ptr [eax+1AE],0;TCustomButtonControl.FState:TButtonState
>004FC525    jne         004FC52F
 004FC527    mov         eax,dword ptr [ebp-4]
 004FC52A    mov         edx,dword ptr [eax]
 004FC52C    call        dword ptr [edx+7C];TCustomButtonControl.sub_004CB6E8
 004FC52F    mov         eax,dword ptr [ebp-4]
 004FC532    mov         byte ptr [eax+1AE],3;TCustomButtonControl.FState:TButtonState
>004FC539    jmp         004FC550
 004FC53B    mov         eax,dword ptr [ebp-4]
 004FC53E    mov         byte ptr [eax+1AE],0;TCustomButtonControl.FState:TButtonState
 004FC545    mov         eax,dword ptr [ebp-4]
 004FC548    mov         edx,dword ptr [eax]
 004FC54A    call        dword ptr [edx+80];TCustomButtonControl.sub_004CB7F8
 004FC550    pop         ecx
 004FC551    pop         ecx
 004FC552    pop         ebp
 004FC553    ret
end;*}

//004FC554
procedure TCustomButtonControl.SetFlat(const Value:Boolean);
begin
{*
 004FC554    push        ebp
 004FC555    mov         ebp,esp
 004FC557    add         esp,0FFFFFFF8
 004FC55A    mov         byte ptr [ebp-5],dl
 004FC55D    mov         dword ptr [ebp-4],eax
 004FC560    mov         eax,dword ptr [ebp-4]
 004FC563    mov         al,byte ptr [eax+1AD]
 004FC569    cmp         al,byte ptr [ebp-5]
>004FC56C    je          004FC582
 004FC56E    mov         al,byte ptr [ebp-5]
 004FC571    mov         edx,dword ptr [ebp-4]
 004FC574    mov         byte ptr [edx+1AD],al
 004FC57A    mov         eax,dword ptr [ebp-4]
 004FC57D    mov         edx,dword ptr [eax]
 004FC57F    call        dword ptr [edx+7C]
 004FC582    pop         ecx
 004FC583    pop         ecx
 004FC584    pop         ebp
 004FC585    ret
*}
end;

//004FC588
{*procedure sub_004FC588(?:?);
begin
 004FC588    push        ebp
 004FC589    mov         ebp,esp
 004FC58B    add         esp,0FFFFFFF8
 004FC58E    mov         byte ptr [ebp-5],dl
 004FC591    mov         dword ptr [ebp-4],eax
 004FC594    mov         dl,byte ptr [ebp-5]
 004FC597    mov         eax,dword ptr [ebp-4]
 004FC59A    call        00514AB8
 004FC59F    xor         eax,eax
 004FC5A1    mov         al,byte ptr [ebp-5]
 004FC5A4    mov         dl,byte ptr [eax+541A48]
 004FC5AA    mov         eax,dword ptr [ebp-4]
 004FC5AD    call        004FC5C0
 004FC5B2    mov         eax,dword ptr [ebp-4]
 004FC5B5    mov         byte ptr [eax+1AB],0;TCustomButtonControl.FMouseInControl:Boolean
 004FC5BC    pop         ecx
 004FC5BD    pop         ecx
 004FC5BE    pop         ebp
 004FC5BF    ret
end;*}

//004FC5C0
{*procedure sub_004FC5C0(?:TCustomButtonControl; ?:?);
begin
 004FC5C0    push        ebp
 004FC5C1    mov         ebp,esp
 004FC5C3    add         esp,0FFFFFFF8
 004FC5C6    mov         byte ptr [ebp-5],dl
 004FC5C9    mov         dword ptr [ebp-4],eax
 004FC5CC    mov         eax,dword ptr [ebp-4]
 004FC5CF    mov         al,byte ptr [eax+1AE];TCustomButtonControl.FState:TButtonState
 004FC5D5    cmp         al,byte ptr [ebp-5]
>004FC5D8    je          004FC5EE
 004FC5DA    mov         al,byte ptr [ebp-5]
 004FC5DD    mov         edx,dword ptr [ebp-4]
 004FC5E0    mov         byte ptr [edx+1AE],al;TCustomButtonControl.FState:TButtonState
 004FC5E6    mov         eax,dword ptr [ebp-4]
 004FC5E9    mov         edx,dword ptr [eax]
 004FC5EB    call        dword ptr [edx+7C];TCustomButtonControl.sub_004CB6E8
 004FC5EE    pop         ecx
 004FC5EF    pop         ecx
 004FC5F0    pop         ebp
 004FC5F1    ret
end;*}

//004FC5F4
{*procedure sub_004FC5F4(?:?; ?:?; ?:?; ?:?);
begin
 004FC5F4    push        ebp
 004FC5F5    mov         ebp,esp
 004FC5F7    add         esp,0FFFFFFF4
 004FC5FA    mov         dword ptr [ebp-0C],ecx
 004FC5FD    mov         dword ptr [ebp-8],edx
 004FC600    mov         dword ptr [ebp-4],eax
 004FC603    mov         eax,dword ptr [ebp+0C]
 004FC606    push        eax
 004FC607    mov         eax,dword ptr [ebp+8]
 004FC60A    push        eax
 004FC60B    mov         ecx,dword ptr [ebp-0C]
 004FC60E    mov         edx,dword ptr [ebp-8]
 004FC611    mov         eax,dword ptr [ebp-4]
 004FC614    call        004CA110
 004FC619    mov         eax,dword ptr [ebp-4]
 004FC61C    mov         edx,dword ptr [eax]
 004FC61E    call        dword ptr [edx+90];TCustomButtonControl.sub_005135CC
 004FC624    mov         esp,ebp
 004FC626    pop         ebp
 004FC627    ret         8
end;*}

//004FC62C
procedure sub_004FC62C(?:TCustomButtonControl);
begin
{*
 004FC62C    push        ebp
 004FC62D    mov         ebp,esp
 004FC62F    add         esp,0FFFFFFF4
 004FC632    mov         dword ptr [ebp-4],eax
 004FC635    mov         eax,dword ptr [ebp-4]
 004FC638    test        byte ptr [eax+1C],8;TCustomButtonControl.FComponentState:TComponentState
>004FC63C    jne         004FC680
 004FC63E    mov         eax,dword ptr [ebp-4]
 004FC641    cmp         byte ptr [eax+1AD],0;TCustomButtonControl.FFlat:Boolean
>004FC648    je          004FC680
 004FC64A    mov         eax,dword ptr [ebp-4]
 004FC64D    mov         edx,dword ptr [eax]
 004FC64F    call        dword ptr [edx+50];TImage.GetEnabled
 004FC652    test        al,al
>004FC654    je          004FC680
 004FC656    lea         eax,[ebp-0C]
 004FC659    push        eax
 004FC65A    call        user32.GetCursorPos
 004FC65F    lea         eax,[ebp-0C]
 004FC662    mov         dl,1
 004FC664    call        004C8F78
 004FC669    cmp         eax,dword ptr [ebp-4]
 004FC66C    sete        al
 004FC66F    mov         edx,dword ptr [ebp-4]
 004FC672    mov         byte ptr [edx+1AB],al;TCustomButtonControl.FMouseInControl:Boolean
 004FC678    mov         eax,dword ptr [ebp-4]
 004FC67B    mov         edx,dword ptr [eax]
 004FC67D    call        dword ptr [edx+7C];TCustomButtonControl.sub_004CB6E8
 004FC680    mov         esp,ebp
 004FC682    pop         ebp
 004FC683    ret
*}
end;

//004FC684
{*procedure TCustomButtonControl.WMLButtonDblClk(?:?);
begin
 004FC684    push        ebp
 004FC685    mov         ebp,esp
 004FC687    add         esp,0FFFFFFF8
 004FC68A    push        esi
 004FC68B    mov         dword ptr [ebp-8],edx
 004FC68E    mov         dword ptr [ebp-4],eax
 004FC691    mov         edx,dword ptr [ebp-8]
 004FC694    mov         eax,dword ptr [ebp-4]
 004FC697    call        TControl.WMLButtonDblClk
 004FC69C    mov         eax,dword ptr [ebp-4]
 004FC69F    cmp         byte ptr [eax+1A9],0;TCustomButtonControl.FDown:Boolean
>004FC6A6    je          004FC6B4
 004FC6A8    mov         eax,dword ptr [ebp-4]
 004FC6AB    mov         si,0FFE9
 004FC6AF    call        @CallDynaInst;TControl.sub_004CCD3C
 004FC6B4    pop         esi
 004FC6B5    pop         ecx
 004FC6B6    pop         ecx
 004FC6B7    pop         ebp
 004FC6B8    ret
end;*}

//004FC6BC
{*procedure sub_004FC6BC(?:?);
begin
 004FC6BC    push        ebp
 004FC6BD    mov         ebp,esp
 004FC6BF    add         esp,0FFFFFFF8
 004FC6C2    mov         byte ptr [ebp-5],dl
 004FC6C5    mov         dword ptr [ebp-4],eax
 004FC6C8    mov         dl,byte ptr [ebp-5]
 004FC6CB    mov         eax,dword ptr [ebp-4]
 004FC6CE    call        00514C58
 004FC6D3    mov         edx,4
 004FC6D8    mov         eax,dword ptr [ebp-4]
 004FC6DB    call        00514C04
 004FC6E0    pop         ecx
 004FC6E1    pop         ecx
 004FC6E2    pop         ebp
 004FC6E3    ret
end;*}

//004FC6E4
{*procedure sub_004FC6E4(?:?);
begin
 004FC6E4    push        ebp
 004FC6E5    mov         ebp,esp
 004FC6E7    add         esp,0FFFFFFEC
 004FC6EA    push        esi
 004FC6EB    push        edi
 004FC6EC    mov         esi,edx
 004FC6EE    lea         edi,[ebp-0C]
 004FC6F1    movs        dword ptr [edi],dword ptr [esi]
 004FC6F2    movs        dword ptr [edi],dword ptr [esi]
 004FC6F3    mov         dword ptr [ebp-4],eax
 004FC6F6    mov         eax,dword ptr [ebp-0C]
 004FC6F9    mov         dword ptr [ebp-14],eax
 004FC6FC    mov         eax,dword ptr [ebp-8]
 004FC6FF    mov         dword ptr [ebp-10],eax
 004FC702    mov         eax,dword ptr [ebp-4]
 004FC705    test        byte ptr [eax+1C],10;TCustomButtonControl.FComponentState:TComponentState
>004FC709    jne         004FC72C
 004FC70B    mov         eax,dword ptr [ebp-4]
 004FC70E    cmp         byte ptr [eax+1AE],2;TCustomButtonControl.FState:TButtonState
>004FC715    je          004FC726
 004FC717    mov         eax,dword ptr [ebp-4]
 004FC71A    mov         edx,dword ptr [eax]
 004FC71C    call        dword ptr [edx+0C0];TCustomButtonControl.sub_00515370
 004FC722    test        al,al
>004FC724    je          004FC72C
 004FC726    inc         dword ptr [ebp-14]
 004FC729    inc         dword ptr [ebp-10]
 004FC72C    lea         edx,[ebp-14]
 004FC72F    mov         eax,dword ptr [ebp-4]
 004FC732    call        00513C20
 004FC737    pop         edi
 004FC738    pop         esi
 004FC739    mov         esp,ebp
 004FC73B    pop         ebp
 004FC73C    ret
end;*}

//004FC740
{*procedure TCustomButtonControl.CMDialogChar(?:?);
begin
 004FC740    push        ebp
 004FC741    mov         ebp,esp
 004FC743    add         esp,0FFFFFFF8
 004FC746    mov         dword ptr [ebp-8],edx
 004FC749    mov         dword ptr [ebp-4],eax
 004FC74C    mov         edx,dword ptr [ebp-8]
 004FC74F    mov         eax,dword ptr [ebp-4]
 004FC752    mov         ecx,dword ptr [eax]
 004FC754    call        dword ptr [ecx-10];TControl.DefaultHandler
 004FC757    pop         ecx
 004FC758    pop         ecx
 004FC759    pop         ebp
 004FC75A    ret
end;*}

//004FC75C
constructor TCustomUtilityButton.Create(AOwner:TComponent);
begin
{*
 004FC75C    push        ebp
 004FC75D    mov         ebp,esp
 004FC75F    add         esp,0FFFFFFF0
 004FC762    test        dl,dl
>004FC764    je          004FC76E
 004FC766    add         esp,0FFFFFFF0
 004FC769    call        @ClassCreate
 004FC76E    mov         dword ptr [ebp-0C],ecx
 004FC771    mov         byte ptr [ebp-5],dl
 004FC774    mov         dword ptr [ebp-4],eax
 004FC777    mov         ecx,dword ptr [ebp-0C]
 004FC77A    xor         edx,edx
 004FC77C    mov         eax,dword ptr [ebp-4]
 004FC77F    call        TCustomButtonControl.Create
 004FC784    mov         eax,dword ptr [ebp-4]
 004FC787    mov         byte ptr [eax+1CC],0;TCustomUtilityButton.FAutoScroll:Boolean
 004FC78E    mov         eax,dword ptr [ebp-4]
 004FC791    mov         dword ptr [eax+1B0],2;TCustomUtilityButton.FArrowSize:Integer
 004FC79B    mov         eax,dword ptr [ebp-4]
 004FC79E    mov         byte ptr [eax+1CD],1;TCustomUtilityButton.FArrowType:TArrowType
 004FC7A5    mov         ecx,dword ptr [ebp-4]
 004FC7A8    mov         dl,1
 004FC7AA    mov         eax,[00495F38];TTimer
 004FC7AF    call        TTimer.Create;TTimer.Create
 004FC7B4    mov         edx,dword ptr [ebp-4]
 004FC7B7    mov         dword ptr [edx+1B8],eax;TCustomUtilityButton.FScrollTimer:TTimer
 004FC7BD    mov         eax,dword ptr [ebp-4]
 004FC7C0    mov         eax,dword ptr [eax+1B8];TCustomUtilityButton.FScrollTimer:TTimer
 004FC7C6    mov         dword ptr [ebp-10],eax
 004FC7C9    xor         edx,edx
 004FC7CB    mov         eax,dword ptr [ebp-10]
 004FC7CE    call        TTimer.SetEnabled
 004FC7D3    mov         eax,dword ptr [ebp-4]
 004FC7D6    push        eax
 004FC7D7    push        4FCA68
 004FC7DC    mov         eax,dword ptr [ebp-10]
 004FC7DF    call        TTimer.SetOnTimer
 004FC7E4    mov         edx,2EE
 004FC7E9    mov         eax,dword ptr [ebp-10]
 004FC7EC    call        TTimer.SetInterval
 004FC7F1    mov         eax,dword ptr [ebp-4]
 004FC7F4    cmp         byte ptr [ebp-5],0
>004FC7F8    je          004FC809
 004FC7FA    call        @AfterConstruction
 004FC7FF    pop         dword ptr fs:[0]
 004FC806    add         esp,0C
 004FC809    mov         eax,dword ptr [ebp-4]
 004FC80C    mov         esp,ebp
 004FC80E    pop         ebp
 004FC80F    ret
*}
end;

//004FC810
destructor TCustomUtilityButton.Destroy;
begin
{*
 004FC810    push        ebp
 004FC811    mov         ebp,esp
 004FC813    add         esp,0FFFFFFF8
 004FC816    call        @BeforeDestruction
 004FC81B    mov         byte ptr [ebp-5],dl
 004FC81E    mov         dword ptr [ebp-4],eax
 004FC821    mov         eax,dword ptr [ebp-4]
 004FC824    mov         eax,dword ptr [eax+1B8]
 004FC82A    call        TObject.Free
 004FC82F    mov         dl,byte ptr [ebp-5]
 004FC832    and         dl,0FC
 004FC835    mov         eax,dword ptr [ebp-4]
 004FC838    call        TCustomActionControl.Destroy
 004FC83D    cmp         byte ptr [ebp-5],0
>004FC841    jle         004FC84B
 004FC843    mov         eax,dword ptr [ebp-4]
 004FC846    call        @ClassDestroy
 004FC84B    pop         ecx
 004FC84C    pop         ecx
 004FC84D    pop         ebp
 004FC84E    ret
*}
end;

//004FC850
procedure TCustomUtilityButton.sub_004CCCAC;
begin
{*
 004FC850    push        ebp
 004FC851    mov         ebp,esp
 004FC853    push        ecx
 004FC854    push        ebx
 004FC855    mov         dword ptr [ebp-4],eax
 004FC858    mov         eax,dword ptr [ebp-4]
 004FC85B    cmp         word ptr [eax+1C2],0;TCustomUtilityButton.?f1C2:word
>004FC863    je          004FC877
 004FC865    mov         ebx,dword ptr [ebp-4]
 004FC868    mov         edx,dword ptr [ebp-4]
 004FC86B    mov         eax,dword ptr [ebx+1C4];TCustomUtilityButton.?f1C4:TCustomActionToolBar
 004FC871    call        dword ptr [ebx+1C0];TCustomUtilityButton.FOnClick
 004FC877    pop         ebx
 004FC878    pop         ecx
 004FC879    pop         ebp
 004FC87A    ret
*}
end;

//004FC87C
{*procedure TCustomUtilityButton.CMMouseEnter(?:?);
begin
 004FC87C    push        ebp
 004FC87D    mov         ebp,esp
 004FC87F    add         esp,0FFFFFFF8
 004FC882    mov         dword ptr [ebp-8],edx
 004FC885    mov         dword ptr [ebp-4],eax
 004FC888    mov         edx,dword ptr [ebp-8]
 004FC88B    mov         eax,dword ptr [ebp-4]
 004FC88E    call        TCustomButtonControl.CMMouseEnter
 004FC893    mov         eax,dword ptr [ebp-4]
 004FC896    cmp         byte ptr [eax+1CC],0;TCustomUtilityButton.FAutoScroll:Boolean
>004FC89D    je          004FC8AF
 004FC89F    mov         dl,1
 004FC8A1    mov         eax,dword ptr [ebp-4]
 004FC8A4    mov         eax,dword ptr [eax+1B8];TCustomUtilityButton.FScrollTimer:TTimer
 004FC8AA    call        TTimer.SetEnabled
 004FC8AF    pop         ecx
 004FC8B0    pop         ecx
 004FC8B1    pop         ebp
 004FC8B2    ret
end;*}

//004FC8B4
{*procedure TCustomUtilityButton.CMMouseLeave(?:?);
begin
 004FC8B4    push        ebp
 004FC8B5    mov         ebp,esp
 004FC8B7    add         esp,0FFFFFFF8
 004FC8BA    mov         dword ptr [ebp-8],edx
 004FC8BD    mov         dword ptr [ebp-4],eax
 004FC8C0    mov         edx,dword ptr [ebp-8]
 004FC8C3    mov         eax,dword ptr [ebp-4]
 004FC8C6    call        TCustomButtonControl.CMMouseLeave
 004FC8CB    xor         edx,edx
 004FC8CD    mov         eax,dword ptr [ebp-4]
 004FC8D0    mov         eax,dword ptr [eax+1B8];TCustomUtilityButton.FScrollTimer:TTimer
 004FC8D6    call        TTimer.SetEnabled
 004FC8DB    pop         ecx
 004FC8DC    pop         ecx
 004FC8DD    pop         ebp
 004FC8DE    ret
end;*}

//004FC8E0
procedure sub_004FC8E0;
begin
{*
 004FC8E0    push        ebp
 004FC8E1    mov         ebp,esp
 004FC8E3    add         esp,0FFFFFFF0
 004FC8E6    mov         dword ptr [ebp-4],eax
 004FC8E9    mov         byte ptr [ebp-0E],0
 004FC8ED    mov         byte ptr [ebp-0D],0
 004FC8F1    mov         eax,dword ptr [ebp-4]
 004FC8F4    mov         al,byte ptr [eax+1B4];TCustomUtilityButton.FDirection:TScrollDirection
 004FC8FA    sub         al,2
>004FC8FC    jb          004FC962
 004FC8FE    sub         al,2
>004FC900    jae         004FC9C3
 004FC906    mov         eax,dword ptr [ebp-4]
 004FC909    mov         edx,dword ptr [eax+4C];TCustomUtilityButton.Height:Integer
 004FC90C    sar         edx,1
>004FC90E    jns         004FC913
 004FC910    adc         edx,0
 004FC913    mov         eax,dword ptr [ebp-4]
 004FC916    mov         eax,dword ptr [eax+1B0];TCustomUtilityButton.FArrowSize:Integer
 004FC91C    sar         eax,1
>004FC91E    jns         004FC923
 004FC920    adc         eax,0
 004FC923    sub         edx,eax
 004FC925    cmp         byte ptr [ebp-0E],2
 004FC929    sete        al
 004FC92C    and         eax,7F
 004FC92F    add         edx,dword ptr [eax*4+541A4C]
 004FC936    mov         eax,dword ptr [ebp-4]
 004FC939    mov         eax,dword ptr [eax+48];TCustomUtilityButton.Width:Integer
 004FC93C    sar         eax,1
>004FC93E    jns         004FC943
 004FC940    adc         eax,0
 004FC943    mov         ecx,dword ptr [ebp-4]
 004FC946    sub         eax,dword ptr [ecx+1B0]
 004FC94C    xor         ecx,ecx
 004FC94E    mov         cl,byte ptr [ebp-0D]
 004FC951    add         eax,dword ptr [ecx*4+541A4C]
 004FC958    lea         ecx,[ebp-0C]
 004FC95B    call        Point
>004FC960    jmp         004FC9C3
 004FC962    cmp         byte ptr [ebp-0E],2
 004FC966    sete        al
 004FC969    and         eax,7F
 004FC96C    mov         edx,dword ptr [eax*4+541A4C]
 004FC973    mov         eax,dword ptr [ebp-4]
 004FC976    mov         eax,dword ptr [eax+4C];TCustomUtilityButton.Height:Integer
 004FC979    sar         eax,1
>004FC97B    jns         004FC980
 004FC97D    adc         eax,0
 004FC980    mov         ecx,dword ptr [ebp-4]
 004FC983    sub         eax,dword ptr [ecx+1B0]
 004FC989    add         edx,eax
 004FC98B    mov         eax,dword ptr [ebp-4]
 004FC98E    mov         eax,dword ptr [eax+48];TCustomUtilityButton.Width:Integer
 004FC991    sar         eax,1
>004FC993    jns         004FC998
 004FC995    adc         eax,0
 004FC998    mov         ecx,dword ptr [ebp-4]
 004FC99B    mov         ecx,dword ptr [ecx+1B0]
 004FC9A1    sar         ecx,1
>004FC9A3    jns         004FC9A8
 004FC9A5    adc         ecx,0
 004FC9A8    sub         eax,ecx
 004FC9AA    cmp         byte ptr [ebp-0E],2
 004FC9AE    sete        cl
 004FC9B1    and         ecx,7F
 004FC9B4    add         eax,dword ptr [ecx*4+541A4C]
 004FC9BB    lea         ecx,[ebp-0C]
 004FC9BE    call        Point
 004FC9C3    mov         eax,dword ptr [ebp-4]
 004FC9C6    mov         al,byte ptr [eax+1CD];TCustomUtilityButton.FArrowType:TArrowType
 004FC9CC    sub         al,1
>004FC9CE    jb          004FC9D4
>004FC9D0    je          004FC9FA
>004FC9D2    jmp         004FCA1E
 004FC9D4    mov         eax,dword ptr [ebp-4]
 004FC9D7    mov         eax,dword ptr [eax+1B0];TCustomUtilityButton.FArrowSize:Integer
 004FC9DD    push        eax
 004FC9DE    lea         ecx,[ebp-0C]
 004FC9E1    mov         eax,dword ptr [ebp-4]
 004FC9E4    mov         dl,byte ptr [eax+1B4];TCustomUtilityButton.FDirection:TScrollDirection
 004FC9EA    mov         eax,dword ptr [ebp-4]
 004FC9ED    mov         eax,dword ptr [eax+160];TCustomUtilityButton...............................................
 004FC9F3    call        004F9148
>004FC9F8    jmp         004FCA1E
 004FC9FA    mov         eax,dword ptr [ebp-4]
 004FC9FD    mov         eax,dword ptr [eax+1B0];TCustomUtilityButton.FArrowSize:Integer
 004FCA03    push        eax
 004FCA04    lea         ecx,[ebp-0C]
 004FCA07    mov         eax,dword ptr [ebp-4]
 004FCA0A    mov         dl,byte ptr [eax+1B4];TCustomUtilityButton.FDirection:TScrollDirection
 004FCA10    mov         eax,dword ptr [ebp-4]
 004FCA13    mov         eax,dword ptr [eax+160];TCustomUtilityButton...............................................
 004FCA19    call        004F9338
 004FCA1E    mov         esp,ebp
 004FCA20    pop         ebp
 004FCA21    ret
*}
end;

//004FCA24
{*procedure TCustomUtilityButton.sub_004CCD68(?:?; ?:?; ?:?; ?:?);
begin
 004FCA24    push        ebp
 004FCA25    mov         ebp,esp
 004FCA27    add         esp,0FFFFFFF8
 004FCA2A    mov         byte ptr [ebp-6],cl
 004FCA2D    mov         byte ptr [ebp-5],dl
 004FCA30    mov         dword ptr [ebp-4],eax
 004FCA33    cmp         byte ptr [ebp-5],0
>004FCA37    jne         004FCA49
 004FCA39    xor         edx,edx
 004FCA3B    mov         eax,dword ptr [ebp-4]
 004FCA3E    mov         eax,dword ptr [eax+1B8];TCustomUtilityButton.FScrollTimer:TTimer
 004FCA44    call        TTimer.SetEnabled
 004FCA49    mov         eax,dword ptr [ebp+0C]
 004FCA4C    push        eax
 004FCA4D    mov         eax,dword ptr [ebp+8]
 004FCA50    push        eax
 004FCA51    mov         cl,byte ptr [ebp-6]
 004FCA54    mov         dl,byte ptr [ebp-5]
 004FCA57    mov         eax,dword ptr [ebp-4]
 004FCA5A    call        TCustomButtonControl.sub_004CCD68
 004FCA5F    pop         ecx
 004FCA60    pop         ecx
 004FCA61    pop         ebp
 004FCA62    ret         8
end;*}

//004FCAC0
{*procedure sub_004FCAC0(?:TCustomMenuExpandBtn; ?:?);
begin
 004FCAC0    push        ebp
 004FCAC1    mov         ebp,esp
 004FCAC3    add         esp,0FFFFFFF8
 004FCAC6    mov         dword ptr [ebp-8],edx
 004FCAC9    mov         dword ptr [ebp-4],eax
 004FCACC    mov         eax,dword ptr [ebp-4]
 004FCACF    mov         eax,dword ptr [eax+1B0]
 004FCAD5    cmp         eax,dword ptr [ebp-8]
>004FCAD8    je          004FCAEE
 004FCADA    mov         eax,dword ptr [ebp-8]
 004FCADD    mov         edx,dword ptr [ebp-4]
 004FCAE0    mov         dword ptr [edx+1B0],eax
 004FCAE6    mov         eax,dword ptr [ebp-4]
 004FCAE9    mov         edx,dword ptr [eax]
 004FCAEB    call        dword ptr [edx+7C]
 004FCAEE    pop         ecx
 004FCAEF    pop         ecx
 004FCAF0    pop         ebp
 004FCAF1    ret
end;*}

//004FCAF4
{*procedure sub_004FCAF4(?:TCustomMenuExpandBtn; ?:?);
begin
 004FCAF4    push        ebp
 004FCAF5    mov         ebp,esp
 004FCAF7    add         esp,0FFFFFFF8
 004FCAFA    mov         byte ptr [ebp-5],dl
 004FCAFD    mov         dword ptr [ebp-4],eax
 004FCB00    mov         eax,dword ptr [ebp-4]
 004FCB03    mov         al,byte ptr [eax+1CD]
 004FCB09    cmp         al,byte ptr [ebp-5]
>004FCB0C    je          004FCB22
 004FCB0E    mov         al,byte ptr [ebp-5]
 004FCB11    mov         edx,dword ptr [ebp-4]
 004FCB14    mov         byte ptr [edx+1CD],al
 004FCB1A    mov         eax,dword ptr [ebp-4]
 004FCB1D    mov         edx,dword ptr [eax]
 004FCB1F    call        dword ptr [edx+7C]
 004FCB22    pop         ecx
 004FCB23    pop         ecx
 004FCB24    pop         ebp
 004FCB25    ret
end;*}

//004FCB28
{*procedure sub_004FCB28(?:TCustomUtilityButton; ?:?);
begin
 004FCB28    push        ebp
 004FCB29    mov         ebp,esp
 004FCB2B    add         esp,0FFFFFFF8
 004FCB2E    mov         byte ptr [ebp-5],dl
 004FCB31    mov         dword ptr [ebp-4],eax
 004FCB34    mov         eax,dword ptr [ebp-4]
 004FCB37    mov         al,byte ptr [eax+1B4]
 004FCB3D    cmp         al,byte ptr [ebp-5]
>004FCB40    je          004FCB56
 004FCB42    mov         al,byte ptr [ebp-5]
 004FCB45    mov         edx,dword ptr [ebp-4]
 004FCB48    mov         byte ptr [edx+1B4],al
 004FCB4E    mov         eax,dword ptr [ebp-4]
 004FCB51    mov         edx,dword ptr [eax]
 004FCB53    call        dword ptr [edx+7C]
 004FCB56    pop         ecx
 004FCB57    pop         ecx
 004FCB58    pop         ebp
 004FCB59    ret
end;*}

//004FCB5C
procedure sub_004FCB5C;
begin
{*
 004FCB5C    push        ebp
 004FCB5D    mov         ebp,esp
 004FCB5F    push        ecx
 004FCB60    mov         dword ptr [ebp-4],eax
 004FCB63    mov         eax,dword ptr [ebp-4]
 004FCB66    call        004FC400
 004FCB6B    mov         eax,dword ptr [ebp-4]
 004FCB6E    call        0051541C
 004FCB73    call        TActionToolBar.GetColorMap
 004FCB78    mov         edx,dword ptr [eax+50]
 004FCB7B    mov         eax,dword ptr [ebp-4]
 004FCB7E    mov         eax,dword ptr [eax+160];TCustomUtilityButton...............................................
 004FCB84    mov         eax,dword ptr [eax+10];TCanvas.Pen:TPen
 004FCB87    call        TPen.SetColor
 004FCB8C    mov         eax,dword ptr [ebp-4]
 004FCB8F    mov         edx,dword ptr [eax]
 004FCB91    call        dword ptr [edx+0E8];TCustomUtilityButton.sub_004FC8E0
 004FCB97    pop         ecx
 004FCB98    pop         ebp
 004FCB99    ret
*}
end;

//004FCB9C
constructor TCustomToolScrollBtn.Create(AOwner:TComponent);
begin
{*
 004FCB9C    push        ebp
 004FCB9D    mov         ebp,esp
 004FCB9F    add         esp,0FFFFFFF4
 004FCBA2    test        dl,dl
>004FCBA4    je          004FCBAE
 004FCBA6    add         esp,0FFFFFFF0
 004FCBA9    call        @ClassCreate
 004FCBAE    mov         dword ptr [ebp-0C],ecx
 004FCBB1    mov         byte ptr [ebp-5],dl
 004FCBB4    mov         dword ptr [ebp-4],eax
 004FCBB7    mov         ecx,dword ptr [ebp-0C]
 004FCBBA    xor         edx,edx
 004FCBBC    mov         eax,dword ptr [ebp-4]
 004FCBBF    call        TCustomUtilityButton.Create
 004FCBC4    mov         eax,dword ptr [ebp-4]
 004FCBC7    lea         edx,[eax+80];TCustomToolScrollBtn.Hint:String
 004FCBCD    mov         eax,[0055B288];^SMoreButtons:TResStringRec
 004FCBD2    call        LoadResString
 004FCBD7    mov         eax,dword ptr [ebp-4]
 004FCBDA    cmp         byte ptr [ebp-5],0
>004FCBDE    je          004FCBEF
 004FCBE0    call        @AfterConstruction
 004FCBE5    pop         dword ptr fs:[0]
 004FCBEC    add         esp,0C
 004FCBEF    mov         eax,dword ptr [ebp-4]
 004FCBF2    mov         esp,ebp
 004FCBF4    pop         ebp
 004FCBF5    ret
*}
end;

//004FCBF8
procedure sub_004FCBF8;
begin
{*
 004FCBF8    push        ebp
 004FCBF9    mov         ebp,esp
 004FCBFB    add         esp,0FFFFFFEC
 004FCBFE    push        ebx
 004FCBFF    mov         dword ptr [ebp-4],eax
 004FCC02    mov         eax,dword ptr [ebp-4]
 004FCC05    mov         al,byte ptr [eax+1B4];TCustomToolScrollBtn.FDirection:TScrollDirection
 004FCC0B    sub         al,2
>004FCC0D    jb          004FCC38
 004FCC0F    sub         al,2
>004FCC11    jae         004FCC64
 004FCC13    lea         ecx,[ebp-0C]
 004FCC16    mov         eax,dword ptr [ebp-4]
 004FCC19    mov         eax,dword ptr [eax+48];TCustomToolScrollBtn.Width:Integer
 004FCC1C    sar         eax,1
>004FCC1E    jns         004FCC23
 004FCC20    adc         eax,0
 004FCC23    mov         edx,dword ptr [ebp-4]
 004FCC26    sub         eax,dword ptr [edx+1B0]
 004FCC2C    mov         edx,3
 004FCC31    call        Point
>004FCC36    jmp         004FCC64
 004FCC38    mov         eax,dword ptr [ebp-4]
 004FCC3B    mov         eax,dword ptr [eax+48];TCustomToolScrollBtn.Width:Integer
 004FCC3E    sar         eax,1
>004FCC40    jns         004FCC45
 004FCC42    adc         eax,0
 004FCC45    mov         edx,dword ptr [ebp-4]
 004FCC48    mov         edx,dword ptr [edx+1B0];TCustomToolScrollBtn.FArrowSize:Integer
 004FCC4E    sar         edx,1
>004FCC50    jns         004FCC55
 004FCC52    adc         edx,0
 004FCC55    sub         eax,edx
 004FCC57    lea         ecx,[ebp-0C]
 004FCC5A    mov         edx,3
 004FCC5F    call        Point
 004FCC64    mov         eax,dword ptr [ebp-4]
 004FCC67    mov         edx,dword ptr [eax]
 004FCC69    call        dword ptr [edx+50];TImage.GetEnabled
 004FCC6C    test        al,al
>004FCC6E    je          004FCC93
 004FCC70    mov         eax,dword ptr [ebp-4]
 004FCC73    call        0051541C
 004FCC78    call        TActionToolBar.GetColorMap
 004FCC7D    mov         edx,dword ptr [eax+50]
 004FCC80    mov         eax,dword ptr [ebp-4]
 004FCC83    mov         eax,dword ptr [eax+160];TCustomToolScrollBtn...............................................
 004FCC89    mov         eax,dword ptr [eax+10];TCanvas.Pen:TPen
 004FCC8C    call        TPen.SetColor
>004FCC91    jmp         004FCCB4
 004FCC93    mov         eax,dword ptr [ebp-4]
 004FCC96    call        0051541C
 004FCC9B    call        TActionToolBar.GetColorMap
 004FCCA0    mov         edx,dword ptr [eax+48]
 004FCCA3    mov         eax,dword ptr [ebp-4]
 004FCCA6    mov         eax,dword ptr [eax+160];TCustomToolScrollBtn...............................................
 004FCCAC    mov         eax,dword ptr [eax+10];TCanvas.Pen:TPen
 004FCCAF    call        TPen.SetColor
 004FCCB4    mov         eax,dword ptr [ebp-4]
 004FCCB7    mov         eax,dword ptr [eax+30];TCustomToolScrollBtn.FParent:TWinControl
 004FCCBA    mov         edx,dword ptr ds:[4FB284];TCustomActionToolBar
 004FCCC0    call        @IsClass
 004FCCC5    test        al,al
>004FCCC7    je          004FCCFC
 004FCCC9    mov         eax,dword ptr [ebp-4]
 004FCCCC    mov         eax,dword ptr [eax+30];TCustomToolScrollBtn.FParent:TWinControl
 004FCCCF    call        004FDEA0
 004FCCD4    test        eax,eax
>004FCCD6    jle         004FCCFC
 004FCCD8    mov         eax,dword ptr [ebp-4]
 004FCCDB    mov         eax,dword ptr [eax+1B0];TCustomToolScrollBtn.FArrowSize:Integer
 004FCCE1    push        eax
 004FCCE2    lea         ecx,[ebp-0C]
 004FCCE5    mov         eax,dword ptr [ebp-4]
 004FCCE8    mov         dl,byte ptr [eax+1B4];TCustomToolScrollBtn.FDirection:TScrollDirection
 004FCCEE    mov         eax,dword ptr [ebp-4]
 004FCCF1    mov         eax,dword ptr [eax+160];TCustomToolScrollBtn...............................................
 004FCCF7    call        004F9338
 004FCCFC    push        2
 004FCCFE    lea         ecx,[ebp-14]
 004FCD01    mov         eax,dword ptr [ebp-4]
 004FCD04    mov         edx,dword ptr [eax+4C];TCustomToolScrollBtn.Height:Integer
 004FCD07    sub         edx,8
 004FCD0A    mov         eax,dword ptr [ebp-4]
 004FCD0D    mov         eax,dword ptr [eax+48];TCustomToolScrollBtn.Width:Integer
 004FCD10    sar         eax,1
>004FCD12    jns         004FCD17
 004FCD14    adc         eax,0
 004FCD17    mov         ebx,dword ptr [ebp-4]
 004FCD1A    sub         eax,dword ptr [ebx+1B0]
 004FCD20    call        Point
 004FCD25    lea         ecx,[ebp-14]
 004FCD28    mov         eax,dword ptr [ebp-4]
 004FCD2B    movzx       eax,byte ptr [eax+5B];TCustomToolScrollBtn.FAlign:TAlign
 004FCD2F    mov         dl,byte ptr [eax+541A54]
 004FCD35    mov         eax,dword ptr [ebp-4]
 004FCD38    mov         eax,dword ptr [eax+160];TCustomToolScrollBtn...............................................
 004FCD3E    call        004F9148
 004FCD43    pop         ebx
 004FCD44    mov         esp,ebp
 004FCD46    pop         ebp
 004FCD47    ret
*}
end;

//004FCD48
procedure sub_004FCD48;
begin
{*
 004FCD48    push        ebp
 004FCD49    mov         ebp,esp
 004FCD4B    push        ecx
 004FCD4C    mov         dword ptr [ebp-4],eax
 004FCD4F    mov         eax,dword ptr [ebp-4]
 004FCD52    call        004FBED4
 004FCD57    mov         eax,dword ptr [ebp-4]
 004FCD5A    mov         edx,dword ptr [eax+48];TCustomDropDownButton.Width:Integer
 004FCD5D    add         edx,9
 004FCD60    mov         eax,dword ptr [ebp-4]
 004FCD63    call        TControl.SetWidth
 004FCD68    pop         ecx
 004FCD69    pop         ebp
 004FCD6A    ret
*}
end;

//004FCD6C
procedure TCustomDropDownButton.sub_004CCCAC;
begin
{*
 004FCD6C    push        ebp
 004FCD6D    mov         ebp,esp
 004FCD6F    push        ecx
 004FCD70    mov         dword ptr [ebp-4],eax
 004FCD73    mov         eax,dword ptr [ebp-4]
 004FCD76    call        004FCFCC
 004FCD7B    test        al,al
>004FCD7D    je          004FCD8D
 004FCD7F    mov         eax,dword ptr [ebp-4]
 004FCD82    mov         edx,dword ptr [eax]
 004FCD84    call        dword ptr [edx+0EC];TCustomDropDownButton.DropDownClick
 004FCD8A    pop         ecx
 004FCD8B    pop         ebp
 004FCD8C    ret
 004FCD8D    mov         eax,dword ptr [ebp-4]
 004FCD90    call        TCustomButtonControl.sub_004CCCAC
 004FCD95    pop         ecx
 004FCD96    pop         ebp
 004FCD97    ret
*}
end;

//004FCD98
{*procedure TCustomDropDownButton.CMMouseLeave(?:?);
begin
 004FCD98    push        ebp
 004FCD99    mov         ebp,esp
 004FCD9B    add         esp,0FFFFFFF8
 004FCD9E    mov         dword ptr [ebp-8],edx
 004FCDA1    mov         dword ptr [ebp-4],eax
 004FCDA4    mov         edx,dword ptr [ebp-8]
 004FCDA7    mov         eax,dword ptr [ebp-4]
 004FCDAA    call        TCustomButtonControl.CMMouseLeave
 004FCDAF    mov         eax,dword ptr [ebp-4]
 004FCDB2    mov         byte ptr [eax+1B0],0;TCustomDropDownButton.....FDroppedDown:Boolean
 004FCDB9    pop         ecx
 004FCDBA    pop         ecx
 004FCDBB    pop         ebp
 004FCDBC    ret
end;*}

//004FCDC0
{*procedure sub_004FCDC0(?:?; ?:?);
begin
 004FCDC0    push        ebp
 004FCDC1    mov         ebp,esp
 004FCDC3    add         esp,0FFFFFFE8
 004FCDC6    push        esi
 004FCDC7    push        edi
 004FCDC8    mov         esi,edx
 004FCDCA    lea         edi,[ebp-15]
 004FCDCD    movs        dword ptr [edi],dword ptr [esi]
 004FCDCE    movs        dword ptr [edi],dword ptr [esi]
 004FCDCF    movs        dword ptr [edi],dword ptr [esi]
 004FCDD0    movs        dword ptr [edi],dword ptr [esi]
 004FCDD1    mov         byte ptr [ebp-5],cl
 004FCDD4    mov         dword ptr [ebp-4],eax
 004FCDD7    sub         dword ptr [ebp-0D],9
 004FCDDB    cmp         byte ptr [ebp-5],0
>004FCDDF    je          004FCDED
 004FCDE1    mov         eax,dword ptr [ebp-4]
 004FCDE4    call        004FCFCC
 004FCDE9    test        al,al
>004FCDEB    je          004FCDF1
 004FCDED    xor         ecx,ecx
>004FCDEF    jmp         004FCDF3
 004FCDF1    mov         cl,1
 004FCDF3    lea         edx,[ebp-15]
 004FCDF6    mov         eax,dword ptr [ebp-4]
 004FCDF9    call        004FC0F4
 004FCDFE    mov         eax,dword ptr [ebp-0D]
 004FCE01    mov         dword ptr [ebp-15],eax
 004FCE04    add         dword ptr [ebp-0D],9
 004FCE08    cmp         byte ptr [ebp-5],0
>004FCE0C    jne         004FCE1E
 004FCE0E    mov         eax,dword ptr [ebp-4]
 004FCE11    cmp         byte ptr [eax+1B0],0;TCustomDropDownButton......FDroppedDown:Boolean
>004FCE18    jne         004FCE1E
 004FCE1A    xor         ecx,ecx
>004FCE1C    jmp         004FCE20
 004FCE1E    mov         cl,1
 004FCE20    lea         edx,[ebp-15]
 004FCE23    mov         eax,dword ptr [ebp-4]
 004FCE26    call        004FC0F4
 004FCE2B    pop         edi
 004FCE2C    pop         esi
 004FCE2D    mov         esp,ebp
 004FCE2F    pop         ebp
 004FCE30    ret
end;*}

//004FCE34
procedure TCustomDropDownButton.DropDownClick;
begin
{*
 004FCE34    push        ebp
 004FCE35    mov         ebp,esp
 004FCE37    add         esp,0FFFFFFE8
 004FCE3A    mov         dword ptr [ebp-4],eax
 004FCE3D    mov         eax,dword ptr [ebp-4]
 004FCE40    mov         edx,dword ptr [eax]
 004FCE42    call        dword ptr [edx+0E8]
 004FCE48    xor         ecx,ecx
 004FCE4A    mov         dl,1
 004FCE4C    call        dword ptr [eax+2C]
 004FCE4F    mov         edx,dword ptr ds:[4FF100];TCustomActionPopupMenu
 004FCE55    call        @AsClass
 004FCE5A    mov         dword ptr [ebp-8],eax
 004FCE5D    xor         eax,eax
 004FCE5F    push        ebp
 004FCE60    push        4FCF28
 004FCE65    push        dword ptr fs:[eax]
 004FCE68    mov         dword ptr fs:[eax],esp
 004FCE6B    mov         eax,dword ptr [ebp-4]
 004FCE6E    mov         edx,dword ptr [eax+16C]
 004FCE74    mov         eax,dword ptr [ebp-8]
 004FCE77    mov         ecx,dword ptr [eax]
 004FCE79    call        dword ptr [ecx+124]
 004FCE7F    mov         eax,dword ptr [ebp-4]
 004FCE82    mov         edx,dword ptr [eax+44]
 004FCE85    mov         eax,dword ptr [ebp-4]
 004FCE88    add         edx,dword ptr [eax+4C]
 004FCE8B    lea         ecx,[ebp-18]
 004FCE8E    mov         eax,dword ptr [ebp-4]
 004FCE91    mov         eax,dword ptr [eax+40]
 004FCE94    call        Point
 004FCE99    lea         edx,[ebp-18]
 004FCE9C    lea         ecx,[ebp-10]
 004FCE9F    mov         eax,dword ptr [ebp-4]
 004FCEA2    call        TControl.ClientToScreen
 004FCEA7    mov         eax,dword ptr [ebp-8]
 004FCEAA    mov         edx,dword ptr [ebp-4]
 004FCEAD    mov         dword ptr [eax+2AC],edx
 004FCEB3    mov         eax,dword ptr [ebp-4]
 004FCEB6    mov         byte ptr [eax+1B0],1
 004FCEBD    xor         eax,eax
 004FCEBF    push        ebp
 004FCEC0    push        4FCF0B
 004FCEC5    push        dword ptr fs:[eax]
 004FCEC8    mov         dword ptr fs:[eax],esp
 004FCECB    xor         edx,edx
 004FCECD    mov         eax,dword ptr [ebp-4]
 004FCED0    call        TCustomButtonControl.SetFlat
 004FCED5    mov         eax,dword ptr [ebp-4]
 004FCED8    mov         edx,dword ptr [ebp-10]
 004FCEDB    sub         edx,dword ptr [eax+40]
 004FCEDE    mov         ecx,dword ptr [ebp-0C]
 004FCEE1    mov         eax,dword ptr [ebp-8]
 004FCEE4    call        TCustomActionPopupMenu.Popup
 004FCEE9    xor         eax,eax
 004FCEEB    pop         edx
 004FCEEC    pop         ecx
 004FCEED    pop         ecx
 004FCEEE    mov         dword ptr fs:[eax],edx
 004FCEF1    push        4FCF12
 004FCEF6    mov         eax,dword ptr [ebp-4]
 004FCEF9    mov         byte ptr [eax+1B0],0
 004FCF00    mov         dl,1
 004FCF02    mov         eax,dword ptr [ebp-4]
 004FCF05    call        TCustomButtonControl.SetFlat
 004FCF0A    ret
>004FCF0B    jmp         @HandleFinally
>004FCF10    jmp         004FCEF6
 004FCF12    xor         eax,eax
 004FCF14    pop         edx
 004FCF15    pop         ecx
 004FCF16    pop         ecx
 004FCF17    mov         dword ptr fs:[eax],edx
 004FCF1A    push        4FCF2F
 004FCF1F    mov         eax,dword ptr [ebp-8]
 004FCF22    call        TObject.Free
 004FCF27    ret
>004FCF28    jmp         @HandleFinally
>004FCF2D    jmp         004FCF1F
 004FCF2F    mov         esp,ebp
 004FCF31    pop         ebp
 004FCF32    ret
*}
end;

//004FCF34
{*function sub_004FCF34:?;
begin
 004FCF34    push        ebp
 004FCF35    mov         ebp,esp
 004FCF37    add         esp,0FFFFFFF4
 004FCF3A    mov         dword ptr [ebp-4],eax
 004FCF3D    mov         eax,dword ptr [ebp-4]
 004FCF40    call        0051541C
 004FCF45    mov         edx,dword ptr [eax]
 004FCF47    call        dword ptr [edx+148]
 004FCF4D    mov         edx,dword ptr ds:[4FEAE0];TActionBarStyleEx
 004FCF53    call        @AsClass
 004FCF58    mov         dword ptr [ebp-0C],eax
 004FCF5B    mov         eax,dword ptr [ebp-4]
 004FCF5E    call        0051541C
 004FCF63    mov         edx,eax
 004FCF65    mov         eax,dword ptr [ebp-0C]
 004FCF68    mov         ecx,dword ptr [eax]
 004FCF6A    call        dword ptr [ecx+0C];@AbstractError
 004FCF6D    mov         dword ptr [ebp-8],eax
 004FCF70    mov         eax,dword ptr [ebp-8]
 004FCF73    mov         esp,ebp
 004FCF75    pop         ebp
 004FCF76    ret
end;*}

//004FCF78
{*procedure TCustomDropDownButton.sub_004CCD68(?:?; ?:?; ?:?; ?:?);
begin
 004FCF78    push        ebp
 004FCF79    mov         ebp,esp
 004FCF7B    add         esp,0FFFFFFF8
 004FCF7E    mov         byte ptr [ebp-6],cl
 004FCF81    mov         byte ptr [ebp-5],dl
 004FCF84    mov         dword ptr [ebp-4],eax
 004FCF87    mov         eax,dword ptr [ebp+0C]
 004FCF8A    push        eax
 004FCF8B    mov         eax,dword ptr [ebp+8]
 004FCF8E    push        eax
 004FCF8F    mov         cl,byte ptr [ebp-6]
 004FCF92    mov         dl,byte ptr [ebp-5]
 004FCF95    mov         eax,dword ptr [ebp-4]
 004FCF98    call        TCustomButtonControl.sub_004CCD68
 004FCF9D    mov         eax,dword ptr [ebp-4]
 004FCFA0    call        004FCFCC
 004FCFA5    test        al,al
>004FCFA7    je          004FCFB3
 004FCFA9    mov         eax,dword ptr [ebp-4]
 004FCFAC    mov         byte ptr [eax+1AE],0;TCustomDropDownButton.FState:TButtonState
 004FCFB3    cmp         byte ptr [ebp-5],0
>004FCFB7    jne         004FCFC3
 004FCFB9    mov         eax,dword ptr [ebp-4]
 004FCFBC    mov         byte ptr [eax+1B0],1;TCustomDropDownButton.......FDroppedDown:Boolean
 004FCFC3    pop         ecx
 004FCFC4    pop         ecx
 004FCFC5    pop         ebp
 004FCFC6    ret         8
end;*}

//004FCFCC
{*function sub_004FCFCC(?:TCustomDropDownButton):?;
begin
 004FCFCC    push        ebp
 004FCFCD    mov         ebp,esp
 004FCFCF    add         esp,0FFFFFFD8
 004FCFD2    mov         dword ptr [ebp-4],eax
 004FCFD5    lea         edx,[ebp-18]
 004FCFD8    mov         eax,[0055B688];^gvar_0055DDAC
 004FCFDD    mov         eax,dword ptr [eax]
 004FCFDF    call        004D95A4
 004FCFE4    lea         edx,[ebp-18]
 004FCFE7    lea         ecx,[ebp-10]
 004FCFEA    mov         eax,dword ptr [ebp-4]
 004FCFED    call        TControl.ScreenToClient
 004FCFF2    push        dword ptr [ebp-0C]
 004FCFF5    push        dword ptr [ebp-10]
 004FCFF8    mov         eax,dword ptr [ebp-4]
 004FCFFB    call        TControl.GetClientHeight
 004FD000    push        eax
 004FD001    lea         eax,[ebp-28]
 004FD004    push        eax
 004FD005    mov         eax,dword ptr [ebp-4]
 004FD008    call        TControl.GetClientWidth
 004FD00D    push        eax
 004FD00E    mov         eax,dword ptr [ebp-4]
 004FD011    call        TControl.GetClientWidth
 004FD016    sub         eax,9
 004FD019    xor         edx,edx
 004FD01B    pop         ecx
 004FD01C    call        Rect
 004FD021    lea         eax,[ebp-28]
 004FD024    push        eax
 004FD025    call        user32.PtInRect
 004FD02A    cmp         eax,1
 004FD02D    sbb         eax,eax
 004FD02F    inc         eax
 004FD030    mov         byte ptr [ebp-5],al
 004FD033    mov         al,byte ptr [ebp-5]
 004FD036    mov         esp,ebp
 004FD038    pop         ebp
 004FD039    ret
end;*}

//004FD03C
procedure sub_004FD03C;
begin
{*
 004FD03C    push        ebp
 004FD03D    mov         ebp,esp
 004FD03F    add         esp,0FFFFFFF4
 004FD042    mov         dword ptr [ebp-4],eax
 004FD045    mov         eax,dword ptr [ebp-4]
 004FD048    call        004FC400
 004FD04D    mov         eax,dword ptr [ebp-4]
 004FD050    mov         eax,dword ptr [eax+160];TCustomDropDownButton..............................................
 004FD056    mov         eax,dword ptr [eax+10];TCanvas.Pen:TPen
 004FD059    xor         edx,edx
 004FD05B    call        TPen.SetColor
 004FD060    push        2
 004FD062    mov         eax,dword ptr [ebp-4]
 004FD065    call        TControl.GetClientHeight
 004FD06A    sar         eax,1
>004FD06C    jns         004FD071
 004FD06E    adc         eax,0
 004FD071    dec         eax
 004FD072    push        eax
 004FD073    mov         eax,dword ptr [ebp-4]
 004FD076    call        TControl.GetClientWidth
 004FD07B    sub         eax,4
 004FD07E    sub         eax,3
 004FD081    lea         ecx,[ebp-0C]
 004FD084    pop         edx
 004FD085    call        Point
 004FD08A    lea         ecx,[ebp-0C]
 004FD08D    mov         dl,3
 004FD08F    mov         eax,dword ptr [ebp-4]
 004FD092    mov         eax,dword ptr [eax+160];TCustomDropDownButton..............................................
 004FD098    call        004F9148
 004FD09D    mov         esp,ebp
 004FD09F    pop         ebp
 004FD0A0    ret
*}
end;

//004FD0A4
procedure TCustomActionCombo.sub_004CB99C;
begin
{*
 004FD0A4    push        ebp
 004FD0A5    mov         ebp,esp
 004FD0A7    push        ecx
 004FD0A8    push        esi
 004FD0A9    mov         dword ptr [ebp-4],eax
 004FD0AC    mov         eax,dword ptr [ebp-4]
 004FD0AF    mov         eax,dword ptr [eax+2A0];TCustomActionCombo......FComboControl:TCustomComboControl
 004FD0B5    mov         si,0FFED
 004FD0B9    call        @CallDynaInst;TCustomActionControl.sub_004CB99C
 004FD0BE    pop         esi
 004FD0BF    pop         ecx
 004FD0C0    pop         ebp
 004FD0C1    ret
*}
end;

//004FD0C4
{*procedure TCustomActionCombo.sub_004CC67C(?:?);
begin
 004FD0C4    push        ebp
 004FD0C5    mov         ebp,esp
 004FD0C7    add         esp,0FFFFFFF4
 004FD0CA    mov         dword ptr [ebp-8],edx
 004FD0CD    mov         dword ptr [ebp-4],eax
 004FD0D0    mov         edx,dword ptr [ebp-8]
 004FD0D3    mov         eax,dword ptr [ebp-4]
 004FD0D6    call        TControl.sub_004CC67C
 004FD0DB    mov         byte ptr [ebp-9],al
 004FD0DE    mov         eax,dword ptr [ebp-8]
 004FD0E1    mov         eax,dword ptr [eax]
 004FD0E3    sub         eax,201
>004FD0E8    jne         004FD0EE
 004FD0EA    mov         byte ptr [ebp-9],1
 004FD0EE    mov         al,byte ptr [ebp-9]
 004FD0F1    mov         esp,ebp
 004FD0F3    pop         ebp
 004FD0F4    ret
end;*}

//004FD0F8
{*procedure TCustomActionCombo.sub_004CBB18(?:?; ?:?; ?:?);
begin
 004FD0F8    push        ebp
 004FD0F9    mov         ebp,esp
 004FD0FB    add         esp,0FFFFFFF4
 004FD0FE    push        ebx
 004FD0FF    mov         dword ptr [ebp-0C],ecx
 004FD102    mov         dword ptr [ebp-8],edx
 004FD105    mov         dword ptr [ebp-4],eax
 004FD108    mov         eax,dword ptr [ebp+8]
 004FD10B    push        eax
 004FD10C    mov         ecx,dword ptr [ebp-0C]
 004FD10F    mov         edx,dword ptr [ebp-8]
 004FD112    mov         eax,dword ptr [ebp-4]
 004FD115    mov         eax,dword ptr [eax+2A0];TCustomActionCombo.......FComboControl:TCustomComboControl
 004FD11B    mov         ebx,dword ptr [eax]
 004FD11D    call        dword ptr [ebx+94];TCustomComboControl.sub_005156D8
 004FD123    pop         ebx
 004FD124    mov         esp,ebp
 004FD126    pop         ebp
 004FD127    ret         4
end;*}

//004FD12C
{*procedure TCustomActionCombo.sub_004CBAC0(?:?; ?:?; ?:?; ?:?; ?:?);
begin
 004FD12C    push        ebp
 004FD12D    mov         ebp,esp
 004FD12F    add         esp,0FFFFFFF4
 004FD132    mov         dword ptr [ebp-0C],ecx
 004FD135    mov         dword ptr [ebp-8],edx
 004FD138    mov         dword ptr [ebp-4],eax
 004FD13B    mov         eax,dword ptr [ebp+10]
 004FD13E    push        eax
 004FD13F    mov         al,byte ptr [ebp+0C]
 004FD142    push        eax
 004FD143    mov         eax,dword ptr [ebp+8]
 004FD146    push        eax
 004FD147    mov         ecx,dword ptr [ebp-0C]
 004FD14A    mov         edx,dword ptr [ebp-8]
 004FD14D    mov         eax,dword ptr [ebp-4]
 004FD150    call        TControl.sub_004CBAC0
 004FD155    mov         eax,dword ptr [ebp-4]
 004FD158    mov         eax,dword ptr [eax+2A0];TCustomActionCombo........FComboControl:TCustomComboControl
 004FD15E    cmp         dword ptr [eax+16C],0;TCustomComboControl.FActionClient:TActionClientItem
>004FD165    je          004FD179
 004FD167    mov         eax,dword ptr [ebp-8]
 004FD16A    mov         edx,dword ptr ds:[509A10];TActionDragObject
 004FD170    call        @IsClass
 004FD175    test        al,al
>004FD177    jne         004FD1A1
 004FD179    mov         eax,dword ptr [ebp-8]
 004FD17C    mov         edx,dword ptr ds:[509B2C];TActionItemDragObject
 004FD182    call        @IsClass
 004FD187    test        al,al
>004FD189    jne         004FD1A1
 004FD18B    mov         eax,dword ptr [ebp-8]
 004FD18E    mov         edx,dword ptr ds:[509A94];TCategoryDragObject
 004FD194    call        @IsClass
 004FD199    test        al,al
>004FD19B    jne         004FD1A1
 004FD19D    xor         eax,eax
>004FD19F    jmp         004FD1A3
 004FD1A1    mov         al,1
 004FD1A3    mov         edx,dword ptr [ebp+8]
 004FD1A6    mov         byte ptr [edx],al
 004FD1A8    mov         esp,ebp
 004FD1AA    pop         ebp
 004FD1AB    ret         0C
end;*}

//004FD1B0
constructor TCustomComboControl.Create(AOwner:TComponent);
begin
{*
 004FD1B0    push        ebp
 004FD1B1    mov         ebp,esp
 004FD1B3    add         esp,0FFFFFFF4
 004FD1B6    test        dl,dl
>004FD1B8    je          004FD1C2
 004FD1BA    add         esp,0FFFFFFF0
 004FD1BD    call        @ClassCreate
 004FD1C2    mov         dword ptr [ebp-0C],ecx
 004FD1C5    mov         byte ptr [ebp-5],dl
 004FD1C8    mov         dword ptr [ebp-4],eax
 004FD1CB    mov         ecx,dword ptr [ebp-0C]
 004FD1CE    xor         edx,edx
 004FD1D0    mov         eax,dword ptr [ebp-4]
 004FD1D3    call        TCustomActionControl.Create
 004FD1D8    mov         ecx,dword ptr [ebp-4]
 004FD1DB    mov         dl,1
 004FD1DD    mov         eax,[004FAD48];TCustomActionCombo
 004FD1E2    call        TCustomComboBoxEx.Create;TCustomActionCombo.Create
 004FD1E7    mov         edx,dword ptr [ebp-4]
 004FD1EA    mov         dword ptr [edx+1A8],eax;TCustomComboControl............................FComboBox:TCustom...
 004FD1F0    mov         eax,dword ptr [ebp-4]
 004FD1F3    mov         eax,dword ptr [eax+1A8];TCustomComboControl.............................FComboBox:TCusto...
 004FD1F9    xor         edx,edx
 004FD1FB    call        TPanel.SetTabStop
 004FD200    mov         eax,dword ptr [ebp-4]
 004FD203    mov         eax,dword ptr [eax+1A8];TCustomComboControl..............................FComboBox:TCust...
 004FD209    mov         edx,64
 004FD20E    call        TControl.SetWidth
 004FD213    mov         eax,dword ptr [ebp-4]
 004FD216    mov         eax,dword ptr [eax+1A8];TCustomComboControl...............................FComboBox:TCus...
 004FD21C    mov         edx,dword ptr [ebp-4]
 004FD21F    mov         dword ptr [eax+124],edx;TCustomActionCombo.?f124:TMessageForm
 004FD225    mov         dword ptr [eax+120],4FD37C;TCustomActionCombo.FOnClick:TNotifyEvent sub_004FD37C
 004FD22F    mov         eax,dword ptr [ebp-4]
 004FD232    mov         eax,dword ptr [eax+1A8];TCustomComboControl................................FComboBox:TCu...
 004FD238    mov         edx,dword ptr [ebp-4]
 004FD23B    mov         dword ptr [eax+2A0],edx;TCustomActionCombo.........FComboControl:TCustomComboControl
 004FD241    mov         eax,dword ptr [ebp-4]
 004FD244    mov         eax,dword ptr [eax+1A8];TCustomComboControl.................................FComboBox:TC...
 004FD24A    test        byte ptr [eax+1C],10;TCustomActionCombo.FComponentState:TComponentState
>004FD24E    je          004FD260
 004FD250    mov         eax,dword ptr [ebp-4]
 004FD253    mov         eax,dword ptr [eax+1A8];TCustomComboControl..................................FComboBox:T...
 004FD259    mov         dl,1
 004FD25B    mov         ecx,dword ptr [eax]
 004FD25D    call        dword ptr [ecx+60];TImage.SetDragMode
 004FD260    mov         eax,dword ptr [ebp-4]
 004FD263    cmp         byte ptr [ebp-5],0
>004FD267    je          004FD278
 004FD269    call        @AfterConstruction
 004FD26E    pop         dword ptr fs:[0]
 004FD275    add         esp,0C
 004FD278    mov         eax,dword ptr [ebp-4]
 004FD27B    mov         esp,ebp
 004FD27D    pop         ebp
 004FD27E    ret
*}
end;

//004FD280
destructor TCustomComboControl.Destroy;
begin
{*
 004FD280    push        ebp
 004FD281    mov         ebp,esp
 004FD283    add         esp,0FFFFFFF8
 004FD286    call        @BeforeDestruction
 004FD28B    mov         byte ptr [ebp-5],dl
 004FD28E    mov         dword ptr [ebp-4],eax
 004FD291    mov         eax,dword ptr [ebp-4]
 004FD294    add         eax,1A8
 004FD299    call        FreeAndNil
 004FD29E    mov         dl,byte ptr [ebp-5]
 004FD2A1    and         dl,0FC
 004FD2A4    mov         eax,dword ptr [ebp-4]
 004FD2A7    call        TCustomActionControl.Destroy
 004FD2AC    cmp         byte ptr [ebp-5],0
>004FD2B0    jle         004FD2BA
 004FD2B2    mov         eax,dword ptr [ebp-4]
 004FD2B5    call        @ClassDestroy
 004FD2BA    pop         ecx
 004FD2BB    pop         ecx
 004FD2BC    pop         ebp
 004FD2BD    ret
*}
end;

//004FD2C0
procedure sub_004FD2C0;
begin
{*
 004FD2C0    push        ebp
 004FD2C1    mov         ebp,esp
 004FD2C3    push        ecx
 004FD2C4    mov         dword ptr [ebp-4],eax
 004FD2C7    mov         eax,dword ptr [ebp-4]
 004FD2CA    call        00515568
 004FD2CF    mov         eax,dword ptr [ebp-4]
 004FD2D2    mov         eax,dword ptr [eax+1A8];TCustomComboControl...................................FComboBox:...
 004FD2D8    call        TWinControl.HandleAllocated
 004FD2DD    test        al,al
>004FD2DF    je          004FD320
 004FD2E1    mov         eax,dword ptr [ebp-4]
 004FD2E4    mov         edx,dword ptr [eax]
 004FD2E6    call        dword ptr [edx+98];TCustomComboControl.sub_005152D0
 004FD2EC    test        al,al
>004FD2EE    je          004FD30C
 004FD2F0    mov         eax,dword ptr [ebp-4]
 004FD2F3    mov         eax,dword ptr [eax+1A8];TCustomComboControl....................................FComboBox...
 004FD2F9    mov         edx,dword ptr [eax+48];TCustomActionCombo.Width:Integer
 004FD2FC    mov         eax,dword ptr [ebp-4]
 004FD2FF    add         edx,dword ptr [eax+48];TCustomComboControl.Width:Integer
 004FD302    mov         eax,dword ptr [ebp-4]
 004FD305    call        TControl.SetWidth
>004FD30A    jmp         004FD320
 004FD30C    mov         eax,dword ptr [ebp-4]
 004FD30F    mov         eax,dword ptr [eax+1A8];TCustomComboControl.....................................FComboBo...
 004FD315    mov         edx,dword ptr [eax+48];TCustomActionCombo.Width:Integer
 004FD318    mov         eax,dword ptr [ebp-4]
 004FD31B    call        TControl.SetWidth
 004FD320    pop         ecx
 004FD321    pop         ebp
 004FD322    ret
*}
end;

//004FD324
procedure TCustomComboControl.sub_004CCCAC;
begin
{*
 004FD324    push        ebp
 004FD325    mov         ebp,esp
 004FD327    push        ecx
 004FD328    mov         dword ptr [ebp-4],eax
 004FD32B    mov         eax,dword ptr [ebp-4]
 004FD32E    test        byte ptr [eax+1C],10;TCustomComboControl.FComponentState:TComponentState
>004FD332    je          004FD341
 004FD334    mov         dl,1
 004FD336    mov         eax,dword ptr [ebp-4]
 004FD339    mov         ecx,dword ptr [eax]
 004FD33B    call        dword ptr [ecx+0D8];TCustomComboControl.sub_00514AB8
 004FD341    mov         eax,dword ptr [ebp-4]
 004FD344    call        TCustomActionControl.sub_004CCCAC
 004FD349    pop         ecx
 004FD34A    pop         ebp
 004FD34B    ret
*}
end;

//004FD34C
{*procedure TCustomComboControl.CMVisibleChanged(?:?);
begin
 004FD34C    push        ebp
 004FD34D    mov         ebp,esp
 004FD34F    add         esp,0FFFFFFF8
 004FD352    mov         dword ptr [ebp-8],edx
 004FD355    mov         dword ptr [ebp-4],eax
 004FD358    mov         edx,dword ptr [ebp-8]
 004FD35B    mov         eax,dword ptr [ebp-4]
 004FD35E    call        TControl.CMVisibleChanged
 004FD363    mov         eax,dword ptr [ebp-4]
 004FD366    mov         dl,byte ptr [eax+57];TCustomComboControl.FVisible:Boolean
 004FD369    mov         eax,dword ptr [ebp-4]
 004FD36C    mov         eax,dword ptr [eax+1A8];TCustomComboControl......................................FComboB...
 004FD372    call        TControl.SetVisible
 004FD377    pop         ecx
 004FD378    pop         ecx
 004FD379    pop         ebp
 004FD37A    ret
end;*}

//004FD37C
{*procedure sub_004FD37C(?:?; ?:?);
begin
 004FD37C    push        ebp
 004FD37D    mov         ebp,esp
 004FD37F    add         esp,0FFFFFFF8
 004FD382    push        esi
 004FD383    mov         dword ptr [ebp-8],edx
 004FD386    mov         dword ptr [ebp-4],eax
 004FD389    mov         eax,dword ptr [ebp-4]
 004FD38C    call        0051541C
 004FD391    test        eax,eax
>004FD393    je          004FD3B5
 004FD395    mov         eax,dword ptr [ebp-4]
 004FD398    call        0051541C
 004FD39D    mov         edx,dword ptr [eax]
 004FD39F    call        dword ptr [edx+104]
 004FD3A5    test        al,al
>004FD3A7    jne         004FD3B5
 004FD3A9    mov         eax,dword ptr [ebp-4]
 004FD3AC    mov         si,0FFEB
 004FD3B0    call        @CallDynaInst
 004FD3B5    pop         esi
 004FD3B6    pop         ecx
 004FD3B7    pop         ecx
 004FD3B8    pop         ebp
 004FD3B9    ret
end;*}

//004FD3BC
{*procedure sub_004FD3BC(?:?; ?:?; ?:?);
begin
 004FD3BC    push        ebp
 004FD3BD    mov         ebp,esp
 004FD3BF    add         esp,0FFFFFFF4
 004FD3C2    mov         dword ptr [ebp-0C],ecx
 004FD3C5    mov         dword ptr [ebp-8],edx
 004FD3C8    mov         dword ptr [ebp-4],eax
 004FD3CB    mov         eax,dword ptr [ebp-4]
 004FD3CE    cmp         byte ptr [eax+5D],1;TCustomActionCombo.FDragMode:TDragMode
>004FD3D2    jne         004FD3E3
 004FD3D4    mov         eax,dword ptr [ebp-8]
 004FD3D7    mov         eax,dword ptr [eax]
 004FD3D9    add         eax,0FFFFFF00
 004FD3DE    sub         eax,9
>004FD3E1    jb          004FD3F5
 004FD3E3    mov         eax,dword ptr [ebp+8]
 004FD3E6    push        eax
 004FD3E7    mov         edx,dword ptr [ebp-8]
 004FD3EA    mov         ecx,dword ptr [ebp-0C]
 004FD3ED    mov         eax,dword ptr [ebp-4]
 004FD3F0    call        004BF2EC
 004FD3F5    mov         esp,ebp
 004FD3F7    pop         ebp
 004FD3F8    ret         4
end;*}

//004FD3FC
procedure sub_004FD3FC;
begin
{*
 004FD3FC    push        ebp
 004FD3FD    mov         ebp,esp
 004FD3FF    push        ecx
 004FD400    mov         dword ptr [ebp-4],eax
 004FD403    mov         eax,dword ptr [ebp-4]
 004FD406    call        005143A8
 004FD40B    mov         eax,dword ptr [ebp-4]
 004FD40E    cmp         dword ptr [eax+1A8],0;TCustomComboControl.......................................FComboBo...
>004FD415    je          004FD437
 004FD417    mov         eax,dword ptr [ebp-4]
 004FD41A    mov         eax,dword ptr [eax+1A8];TCustomComboControl........................................FComb...
 004FD420    call        TWinControl.HandleAllocated
 004FD425    test        al,al
>004FD427    je          004FD437
 004FD429    mov         eax,dword ptr [ebp-4]
 004FD42C    mov         eax,dword ptr [eax+1A8];TCustomComboControl.........................................FCom...
 004FD432    mov         edx,dword ptr [eax]
 004FD434    call        dword ptr [edx+7C];TCustomActionCombo.sub_004D3648
 004FD437    pop         ecx
 004FD438    pop         ebp
 004FD439    ret
*}
end;

//004FD43C
{*procedure sub_004FD43C(?:?);
begin
 004FD43C    push        ebp
 004FD43D    mov         ebp,esp
 004FD43F    add         esp,0FFFFFFF8
 004FD442    push        ebx
 004FD443    mov         dword ptr [ebp-8],edx
 004FD446    mov         dword ptr [ebp-4],eax
 004FD449    mov         edx,dword ptr [ebp-8]
 004FD44C    mov         eax,dword ptr [ebp-4]
 004FD44F    call        0051497C
 004FD454    cmp         dword ptr [ebp-8],0
>004FD458    je          004FD48E
 004FD45A    mov         eax,dword ptr [ebp-4]
 004FD45D    mov         eax,dword ptr [eax+1A8];TCustomComboControl..........................................FCo...
 004FD463    mov         edx,dword ptr [eax]
 004FD465    call        dword ptr [edx+3C];TSpeedButton.GetAction
 004FD468    mov         ebx,eax
 004FD46A    mov         eax,dword ptr [ebp-8]
 004FD46D    call        TActionClientItem.GetAction
 004FD472    cmp         ebx,eax
>004FD474    je          004FD48E
 004FD476    mov         eax,dword ptr [ebp-8]
 004FD479    call        TActionClientItem.GetAction
 004FD47E    mov         edx,eax
 004FD480    mov         eax,dword ptr [ebp-4]
 004FD483    mov         eax,dword ptr [eax+1A8];TCustomComboControl...........................................FC...
 004FD489    call        TSpeedButton.SetAction
 004FD48E    pop         ebx
 004FD48F    pop         ecx
 004FD490    pop         ecx
 004FD491    pop         ebp
 004FD492    ret
end;*}

//004FD494
{*procedure sub_004FD494(?:?; ?:?; ?:?; ?:?);
begin
 004FD494    push        ebp
 004FD495    mov         ebp,esp
 004FD497    add         esp,0FFFFFFF0
 004FD49A    push        ebx
 004FD49B    mov         dword ptr [ebp-0C],ecx
 004FD49E    mov         dword ptr [ebp-8],edx
 004FD4A1    mov         dword ptr [ebp-4],eax
 004FD4A4    mov         eax,dword ptr [ebp+0C]
 004FD4A7    push        eax
 004FD4A8    mov         eax,dword ptr [ebp+8]
 004FD4AB    push        eax
 004FD4AC    mov         ecx,dword ptr [ebp-0C]
 004FD4AF    mov         edx,dword ptr [ebp-8]
 004FD4B2    mov         eax,dword ptr [ebp-4]
 004FD4B5    call        004CA110
 004FD4BA    mov         eax,dword ptr [ebp-4]
 004FD4BD    cmp         dword ptr [eax+1A8],0;TCustomComboControl............................................FCo...
>004FD4C4    je          004FD56E
 004FD4CA    mov         eax,dword ptr [ebp-4]
 004FD4CD    mov         eax,dword ptr [eax+4C];TCustomComboControl.Height:Integer
 004FD4D0    sar         eax,1
>004FD4D2    jns         004FD4D7
 004FD4D4    adc         eax,0
 004FD4D7    mov         edx,dword ptr [ebp-4]
 004FD4DA    add         eax,dword ptr [edx+44];TCustomComboControl.Top:Integer
 004FD4DD    mov         edx,dword ptr [ebp-4]
 004FD4E0    mov         edx,dword ptr [edx+1A8];TCustomComboControl................................................
 004FD4E6    mov         edx,dword ptr [edx+4C];TCustomActionCombo.Height:Integer
 004FD4E9    sar         edx,1
>004FD4EB    jns         004FD4F0
 004FD4ED    adc         edx,0
 004FD4F0    sub         eax,edx
 004FD4F2    mov         dword ptr [ebp-10],eax
 004FD4F5    mov         eax,dword ptr [ebp-4]
 004FD4F8    mov         edx,dword ptr [eax]
 004FD4FA    call        dword ptr [edx+98];TCustomComboControl.sub_005152D0
 004FD500    test        al,al
>004FD502    je          004FD543
 004FD504    mov         eax,dword ptr [ebp-4]
 004FD507    mov         eax,dword ptr [eax+1A8];TCustomComboControl................................................
 004FD50D    mov         eax,dword ptr [eax+48];TCustomActionCombo.Width:Integer
 004FD510    push        eax
 004FD511    mov         eax,dword ptr [ebp-4]
 004FD514    mov         eax,dword ptr [eax+1A8];TCustomComboControl................................................
 004FD51A    mov         eax,dword ptr [eax+4C];TCustomActionCombo.Height:Integer
 004FD51D    push        eax
 004FD51E    mov         edx,dword ptr [ebp-8]
 004FD521    mov         eax,dword ptr [ebp-4]
 004FD524    add         edx,dword ptr [eax+198];TCustomComboControl.FTextBounds.Right:Longint
 004FD52A    add         edx,5
 004FD52D    mov         ecx,dword ptr [ebp-10]
 004FD530    mov         eax,dword ptr [ebp-4]
 004FD533    mov         eax,dword ptr [eax+1A8];TCustomComboControl................................................
 004FD539    mov         ebx,dword ptr [eax]
 004FD53B    call        dword ptr [ebx+84];TWinControl.SetBounds
>004FD541    jmp         004FD56E
 004FD543    mov         eax,dword ptr [ebp-4]
 004FD546    mov         eax,dword ptr [eax+48];TCustomComboControl.Width:Integer
 004FD549    push        eax
 004FD54A    mov         eax,dword ptr [ebp-4]
 004FD54D    mov         eax,dword ptr [eax+1A8];TCustomComboControl................................................
 004FD553    mov         eax,dword ptr [eax+4C];TCustomActionCombo.Height:Integer
 004FD556    push        eax
 004FD557    mov         ecx,dword ptr [ebp-10]
 004FD55A    mov         edx,dword ptr [ebp-8]
 004FD55D    mov         eax,dword ptr [ebp-4]
 004FD560    mov         eax,dword ptr [eax+1A8];TCustomComboControl................................................
 004FD566    mov         ebx,dword ptr [eax]
 004FD568    call        dword ptr [ebx+84];TWinControl.SetBounds
 004FD56E    mov         eax,dword ptr [ebp-4]
 004FD571    mov         edx,dword ptr [eax]
 004FD573    call        dword ptr [edx+90];TCustomComboControl.sub_005135CC
 004FD579    pop         ebx
 004FD57A    mov         esp,ebp
 004FD57C    pop         ebp
 004FD57D    ret         8
end;*}

//004FD580
{*procedure sub_004FD580(?:?);
begin
 004FD580    push        ebp
 004FD581    mov         ebp,esp
 004FD583    add         esp,0FFFFFFF8
 004FD586    mov         byte ptr [ebp-5],dl
 004FD589    mov         dword ptr [ebp-4],eax
 004FD58C    mov         dl,byte ptr [ebp-5]
 004FD58F    mov         eax,dword ptr [ebp-4]
 004FD592    call        TImage.SetDragMode
 004FD597    mov         dl,byte ptr [ebp-5]
 004FD59A    mov         eax,dword ptr [ebp-4]
 004FD59D    mov         eax,dword ptr [eax+1A8];TCustomComboControl................................................
 004FD5A3    mov         ecx,dword ptr [eax]
 004FD5A5    call        dword ptr [ecx+60];TImage.SetDragMode
 004FD5A8    pop         ecx
 004FD5A9    pop         ecx
 004FD5AA    pop         ebp
 004FD5AB    ret
end;*}

//004FD5AC
{*procedure sub_004FD5AC(?:?);
begin
 004FD5AC    push        ebp
 004FD5AD    mov         ebp,esp
 004FD5AF    add         esp,0FFFFFFF8
 004FD5B2    mov         dword ptr [ebp-8],edx
 004FD5B5    mov         dword ptr [ebp-4],eax
 004FD5B8    mov         eax,dword ptr [ebp-4]
 004FD5BB    cmp         dword ptr [eax+1A8],0;TCustomComboControl..................................................
>004FD5C2    je          004FD5D5
 004FD5C4    mov         edx,dword ptr [ebp-8]
 004FD5C7    mov         eax,dword ptr [ebp-4]
 004FD5CA    mov         eax,dword ptr [eax+1A8];TCustomComboControl................................................
 004FD5D0    mov         ecx,dword ptr [eax]
 004FD5D2    call        dword ptr [ecx+68];TCustomActionCombo.sub_004CAD7C
 004FD5D5    mov         edx,dword ptr [ebp-8]
 004FD5D8    mov         eax,dword ptr [ebp-4]
 004FD5DB    call        004CAD7C
 004FD5E0    pop         ecx
 004FD5E1    pop         ecx
 004FD5E2    pop         ebp
 004FD5E3    ret
end;*}

//004FD5E4
procedure TCustomComboControl.sub_004CC91C;
begin
{*
 004FD5E4    push        ebp
 004FD5E5    mov         ebp,esp
 004FD5E7    push        ecx
 004FD5E8    mov         dword ptr [ebp-4],eax
 004FD5EB    mov         eax,dword ptr [ebp-4]
 004FD5EE    call        TControl.sub_004CC91C
 004FD5F3    pop         ecx
 004FD5F4    pop         ebp
 004FD5F5    ret
*}
end;

//004FD5F8
constructor TCustomActionDockBar.Create(AOwner:TComponent);
begin
{*
 004FD5F8    push        ebp
 004FD5F9    mov         ebp,esp
 004FD5FB    add         esp,0FFFFFFF4
 004FD5FE    test        dl,dl
>004FD600    je          004FD60A
 004FD602    add         esp,0FFFFFFF0
 004FD605    call        @ClassCreate
 004FD60A    mov         dword ptr [ebp-0C],ecx
 004FD60D    mov         byte ptr [ebp-5],dl
 004FD610    mov         dword ptr [ebp-4],eax
 004FD613    mov         ecx,dword ptr [ebp-0C]
 004FD616    xor         edx,edx
 004FD618    mov         eax,dword ptr [ebp-4]
 004FD61B    call        TCustomActionBar.Create
 004FD620    xor         edx,edx
 004FD622    mov         eax,dword ptr [ebp-4]
 004FD625    call        TImage.SetAlign
 004FD62A    mov         eax,dword ptr [ebp-4]
 004FD62D    mov         byte ptr [eax+9B],1;TCustomActionDockBar.FDragKind:TDragKind
 004FD634    mov         eax,dword ptr [ebp-4]
 004FD637    cmp         byte ptr [ebp-5],0
>004FD63B    je          004FD64C
 004FD63D    call        @AfterConstruction
 004FD642    pop         dword ptr fs:[0]
 004FD649    add         esp,0C
 004FD64C    mov         eax,dword ptr [ebp-4]
 004FD64F    mov         esp,ebp
 004FD651    pop         ebp
 004FD652    ret
*}
end;

//004FD654
{*procedure TCustomActionDockBar.sub_004CA46C(?:?; ?:?);
begin
 004FD654    push        ebp
 004FD655    mov         ebp,esp
 004FD657    add         esp,0FFFFFFE0
 004FD65A    push        esi
 004FD65B    push        edi
 004FD65C    mov         esi,ecx
 004FD65E    lea         edi,[ebp-20]
 004FD661    movs        dword ptr [edi],dword ptr [esi]
 004FD662    movs        dword ptr [edi],dword ptr [esi]
 004FD663    movs        dword ptr [edi],dword ptr [esi]
 004FD664    movs        dword ptr [edi],dword ptr [esi]
 004FD665    mov         dword ptr [ebp-8],edx
 004FD668    mov         dword ptr [ebp-4],eax
 004FD66B    lea         ecx,[ebp-20]
 004FD66E    mov         edx,dword ptr [ebp-8]
 004FD671    mov         eax,dword ptr [ebp-4]
 004FD674    call        TControl.sub_004CA46C
 004FD679    mov         eax,dword ptr [ebp-4]
 004FD67C    mov         edx,dword ptr [eax]
 004FD67E    call        dword ptr [edx+54];TCustomActionDockBar.sub_004CDEBC
 004FD681    test        al,al
>004FD683    je          004FD6B0
 004FD685    mov         eax,dword ptr [ebp-4]
 004FD688    cmp         dword ptr [eax+210],0;TCustomActionDockBar.FActionClient:TActionClient
>004FD68F    je          004FD6A1
 004FD691    mov         dl,1
 004FD693    mov         eax,dword ptr [ebp-4]
 004FD696    mov         eax,dword ptr [eax+210];TCustomActionDockBar.FActionClient:TActionClient
 004FD69C    call        TActionBarItem.SetAutoSize
 004FD6A1    xor         edx,edx
 004FD6A3    mov         eax,dword ptr [ebp-4]
 004FD6A6    mov         ecx,dword ptr [eax]
 004FD6A8    call        dword ptr [ecx+60];TImage.SetDragMode
>004FD6AB    jmp         004FD746
 004FD6B0    xor         edx,edx
 004FD6B2    mov         eax,dword ptr [ebp-4]
 004FD6B5    mov         ecx,dword ptr [eax]
 004FD6B7    call        dword ptr [ecx+60];TImage.SetDragMode
 004FD6BA    mov         eax,dword ptr [ebp-4]
 004FD6BD    cmp         dword ptr [eax+210],0;TCustomActionDockBar.FActionClient:TActionClient
>004FD6C4    je          004FD6D6
 004FD6C6    xor         edx,edx
 004FD6C8    mov         eax,dword ptr [ebp-4]
 004FD6CB    mov         eax,dword ptr [eax+210];TCustomActionDockBar.FActionClient:TActionClient
 004FD6D1    call        TActionBarItem.SetAutoSize
 004FD6D6    mov         eax,dword ptr [ebp-4]
 004FD6D9    mov         eax,dword ptr [eax+258];TCustomActionDockBar.FHorzMargin:Integer
 004FD6DF    add         eax,eax
 004FD6E1    mov         dword ptr [ebp-0C],eax
 004FD6E4    mov         eax,dword ptr [ebp-4]
 004FD6E7    call        0051105C
 004FD6EC    mov         dword ptr [ebp-10],eax
 004FD6EF    cmp         dword ptr [ebp-10],0
>004FD6F3    je          004FD721
 004FD6F5    mov         eax,dword ptr [ebp-10]
 004FD6F8    mov         eax,dword ptr [eax+40]
 004FD6FB    mov         eax,dword ptr [eax+48]
 004FD6FE    add         dword ptr [ebp-0C],eax
 004FD701    mov         eax,dword ptr [ebp-4]
 004FD704    mov         eax,dword ptr [eax+228];TCustomActionDockBar.FSpacing:Integer
 004FD70A    add         dword ptr [ebp-0C],eax
 004FD70D    mov         edx,dword ptr [ebp-10]
 004FD710    mov         eax,dword ptr [ebp-4]
 004FD713    call        005113A0
 004FD718    mov         dword ptr [ebp-10],eax
 004FD71B    cmp         dword ptr [ebp-10],0
>004FD71F    jne         004FD6F5
 004FD721    mov         eax,dword ptr [ebp-4]
 004FD724    mov         eax,dword ptr [eax+258];TCustomActionDockBar.FHorzMargin:Integer
 004FD72A    add         eax,eax
 004FD72C    cmp         eax,dword ptr [ebp-0C]
>004FD72F    je          004FD73C
 004FD731    mov         edx,dword ptr [ebp-0C]
 004FD734    mov         eax,dword ptr [ebp-4]
 004FD737    call        TControl.SetWidth
 004FD73C    xor         edx,edx
 004FD73E    mov         eax,dword ptr [ebp-4]
 004FD741    call        TControl.SetHeight
 004FD746    pop         edi
 004FD747    pop         esi
 004FD748    mov         esp,ebp
 004FD74A    pop         ebp
 004FD74B    ret
end;*}

//004FD74C
{*procedure TCustomActionDockBar.sub_004CBD24(?:?; ?:?; ?:?);
begin
 004FD74C    push        ebp
 004FD74D    mov         ebp,esp
 004FD74F    add         esp,0FFFFFFF4
 004FD752    mov         dword ptr [ebp-0C],ecx
 004FD755    mov         dword ptr [ebp-8],edx
 004FD758    mov         dword ptr [ebp-4],eax
 004FD75B    mov         eax,dword ptr [ebp+8]
 004FD75E    push        eax
 004FD75F    mov         ecx,dword ptr [ebp-0C]
 004FD762    mov         edx,dword ptr [ebp-8]
 004FD765    mov         eax,dword ptr [ebp-4]
 004FD768    call        TControl.sub_004CBD24
 004FD76D    mov         eax,dword ptr [ebp-4]
 004FD770    mov         eax,dword ptr [eax+280];TCustomActionDockBar......FDragObject:TDragDockObject
 004FD776    call        TObject.Free
 004FD77B    mov         eax,dword ptr [ebp-4]
 004FD77E    xor         edx,edx
 004FD780    mov         dword ptr [eax+280],edx;TCustomActionDockBar.......FDragObject:TDragDockObject
 004FD786    mov         esp,ebp
 004FD788    pop         ebp
 004FD789    ret         4
end;*}

//004FD78C
{*procedure TCustomActionDockBar.sub_004CBD68(?:?);
begin
 004FD78C    push        ebp
 004FD78D    mov         ebp,esp
 004FD78F    add         esp,0FFFFFFF8
 004FD792    mov         dword ptr [ebp-8],edx
 004FD795    mov         dword ptr [ebp-4],eax
 004FD798    mov         edx,dword ptr [ebp-8]
 004FD79B    mov         eax,dword ptr [ebp-4]
 004FD79E    call        TControl.sub_004CBD68
 004FD7A3    mov         ecx,dword ptr [ebp-4]
 004FD7A6    mov         dl,1
 004FD7A8    mov         eax,[004930E0];TToolDockObject
 004FD7AD    call        TToolDockObject.Create;TToolDockObject.Create
 004FD7B2    mov         edx,dword ptr [ebp-4]
 004FD7B5    mov         dword ptr [edx+280],eax;TCustomActionDockBar........FDragObject:TDragDockObject
 004FD7BB    mov         eax,dword ptr [ebp-8]
 004FD7BE    mov         edx,dword ptr [ebp-4]
 004FD7C1    mov         edx,dword ptr [edx+280];TCustomActionDockBar.........FDragObject:TDragDockObject
 004FD7C7    mov         dword ptr [eax],edx
 004FD7C9    pop         ecx
 004FD7CA    pop         ecx
 004FD7CB    pop         ebp
 004FD7CC    ret
end;*}

//004FD7D0
{*procedure TCustomActionDockBar.sub_004D1C58(?:?; ?:?; ?:?; ?:?);
begin
 004FD7D0    push        ebp
 004FD7D1    mov         ebp,esp
 004FD7D3    add         esp,0FFFFFFEC
 004FD7D6    push        esi
 004FD7D7    push        edi
 004FD7D8    mov         esi,dword ptr [ebp+0C]
 004FD7DB    lea         edi,[ebp-14]
 004FD7DE    movs        dword ptr [edi],dword ptr [esi]
 004FD7DF    movs        dword ptr [edi],dword ptr [esi]
 004FD7E0    mov         dword ptr [ebp-0C],ecx
 004FD7E3    mov         dword ptr [ebp-8],edx
 004FD7E6    mov         dword ptr [ebp-4],eax
 004FD7E9    lea         eax,[ebp-14]
 004FD7EC    push        eax
 004FD7ED    mov         eax,dword ptr [ebp+8]
 004FD7F0    push        eax
 004FD7F1    mov         ecx,dword ptr [ebp-0C]
 004FD7F4    mov         edx,dword ptr [ebp-8]
 004FD7F7    mov         eax,dword ptr [ebp-4]
 004FD7FA    call        TWinControl.sub_004D1C58
 004FD7FF    mov         eax,dword ptr [ebp+8]
 004FD802    cmp         byte ptr [eax],0
>004FD805    je          004FD82B
 004FD807    mov         eax,dword ptr [ebp-8]
 004FD80A    mov         edx,dword ptr ds:[509FE4];TCustomActionControl
 004FD810    call        @IsClass
 004FD815    test        al,al
>004FD817    jne         004FD82F
 004FD819    mov         eax,dword ptr [ebp-8]
 004FD81C    mov         edx,dword ptr ds:[49C6E8];TSpeedButton
 004FD822    call        @IsClass
 004FD827    test        al,al
>004FD829    jne         004FD82F
 004FD82B    xor         eax,eax
>004FD82D    jmp         004FD831
 004FD82F    mov         al,1
 004FD831    mov         edx,dword ptr [ebp+8]
 004FD834    mov         byte ptr [edx],al
 004FD836    pop         edi
 004FD837    pop         esi
 004FD838    mov         esp,ebp
 004FD83A    pop         ebp
 004FD83B    ret         8
end;*}

//004FD840
procedure TCustomActionDockBar.Loaded;
begin
{*
 004FD840    push        ebp
 004FD841    mov         ebp,esp
 004FD843    add         esp,0FFFFFFF4
 004FD846    mov         dword ptr [ebp-4],eax
 004FD849    mov         eax,dword ptr [ebp-4]
 004FD84C    call        004CF618
 004FD851    dec         eax
 004FD852    test        eax,eax
>004FD854    jl          004FD87C
 004FD856    inc         eax
 004FD857    mov         dword ptr [ebp-0C],eax
 004FD85A    mov         dword ptr [ebp-8],0
 004FD861    mov         edx,dword ptr [ebp-8]
 004FD864    mov         eax,dword ptr [ebp-4]
 004FD867    call        004CF5AC
 004FD86C    mov         edx,dword ptr [ebp-4]
 004FD86F    call        004CA67C
 004FD874    inc         dword ptr [ebp-8]
 004FD877    dec         dword ptr [ebp-0C]
>004FD87A    jne         004FD861
 004FD87C    mov         eax,dword ptr [ebp-4]
 004FD87F    call        TCustomActionBar.Loaded
 004FD884    mov         esp,ebp
 004FD886    pop         ebp
 004FD887    ret
*}
end;

//004FD888
{*function sub_004FD888:?;
begin
 004FD888    push        ebp
 004FD889    mov         ebp,esp
 004FD88B    add         esp,0FFFFFFF8
 004FD88E    mov         dword ptr [ebp-4],eax
 004FD891    mov         eax,[0050A1B0];TXToolDockForm
 004FD896    mov         dword ptr [ebp-8],eax
 004FD899    mov         eax,dword ptr [ebp-8]
 004FD89C    pop         ecx
 004FD89D    pop         ecx
 004FD89E    pop         ebp
 004FD89F    ret
end;*}

//004FD8A0
constructor TCustomActionToolBar.Create(AOwner:TComponent);
begin
{*
 004FD8A0    push        ebp
 004FD8A1    mov         ebp,esp
 004FD8A3    add         esp,0FFFFFFF4
 004FD8A6    test        dl,dl
>004FD8A8    je          004FD8B2
 004FD8AA    add         esp,0FFFFFFF0
 004FD8AD    call        @ClassCreate
 004FD8B2    mov         dword ptr [ebp-0C],ecx
 004FD8B5    mov         byte ptr [ebp-5],dl
 004FD8B8    mov         dword ptr [ebp-4],eax
 004FD8BB    mov         ecx,dword ptr [ebp-0C]
 004FD8BE    xor         edx,edx
 004FD8C0    mov         eax,dword ptr [ebp-4]
 004FD8C3    call        TCustomActionDockBar.Create
 004FD8C8    mov         dl,1
 004FD8CA    mov         eax,dword ptr [ebp-4]
 004FD8CD    call        TImage.SetAlign
 004FD8D2    mov         edx,1D
 004FD8D7    mov         eax,dword ptr [ebp-4]
 004FD8DA    call        TControl.SetHeight
 004FD8DF    mov         edx,1
 004FD8E4    mov         eax,dword ptr [ebp-4]
 004FD8E7    call        TActionToolBar.SetHorzMargin
 004FD8EC    mov         dl,byte ptr ds:[4FD944];0x0 gvar_004FD944
 004FD8F2    mov         eax,dword ptr [ebp-4]
 004FD8F5    call        TActionToolBar.SetEdgeBorders
 004FD8FA    mov         dl,1
 004FD8FC    mov         eax,dword ptr [ebp-4]
 004FD8FF    call        TActionToolBar.SetEdgeInner
 004FD904    xor         edx,edx
 004FD906    mov         eax,dword ptr [ebp-4]
 004FD909    call        TActionToolBar.SetEdgeOuter
 004FD90E    mov         dl,1
 004FD910    mov         eax,dword ptr [ebp-4]
 004FD913    call        TActionToolBar.SetHorzSeparator
 004FD918    mov         dl,1
 004FD91A    mov         eax,dword ptr [ebp-4]
 004FD91D    call        00512404
 004FD922    mov         eax,dword ptr [ebp-4]
 004FD925    cmp         byte ptr [ebp-5],0
>004FD929    je          004FD93A
 004FD92B    call        @AfterConstruction
 004FD930    pop         dword ptr fs:[0]
 004FD937    add         esp,0C
 004FD93A    mov         eax,dword ptr [ebp-4]
 004FD93D    mov         esp,ebp
 004FD93F    pop         ebp
 004FD940    ret
*}
end;

//004FD948
destructor TCustomActionToolBar.Destroy;
begin
{*
 004FD948    push        ebp
 004FD949    mov         ebp,esp
 004FD94B    add         esp,0FFFFFFF8
 004FD94E    call        @BeforeDestruction
 004FD953    mov         byte ptr [ebp-5],dl
 004FD956    mov         dword ptr [ebp-4],eax
 004FD959    mov         eax,dword ptr [ebp-4]
 004FD95C    mov         eax,dword ptr [eax+288];TCustomActionToolBar.FHiddenItems:TStack
 004FD962    call        TObject.Free
 004FD967    mov         eax,dword ptr [ebp-4]
 004FD96A    cmp         dword ptr [eax+294],0;TCustomActionToolBar.FScrollBtn:TCustomToolScrollBtn
>004FD971    je          004FD980
 004FD973    mov         eax,dword ptr [ebp-4]
 004FD976    add         eax,294;TCustomActionToolBar.FScrollBtn:TCustomToolScrollBtn
 004FD97B    call        FreeAndNil
 004FD980    mov         dl,byte ptr [ebp-5]
 004FD983    and         dl,0FC
 004FD986    mov         eax,dword ptr [ebp-4]
 004FD989    call        TCustomActionBar.Destroy
 004FD98E    cmp         byte ptr [ebp-5],0
>004FD992    jle         004FD99C
 004FD994    mov         eax,dword ptr [ebp-4]
 004FD997    call        @ClassDestroy
 004FD99C    pop         ecx
 004FD99D    pop         ecx
 004FD99E    pop         ebp
 004FD99F    ret
*}
end;

//004FD9A0
procedure sub_004FD9A0;
begin
{*
 004FD9A0    push        ebp
 004FD9A1    mov         ebp,esp
 004FD9A3    push        ecx
 004FD9A4    push        esi
 004FD9A5    mov         dword ptr [ebp-4],eax
 004FD9A8    mov         eax,dword ptr [ebp-4]
 004FD9AB    call        0050FCD4
 004FD9B0    mov         eax,dword ptr [ebp-4]
 004FD9B3    call        00512624
 004FD9B8    test        al,al
>004FD9BA    jne         004FD9DB
 004FD9BC    mov         eax,dword ptr [ebp-4]
 004FD9BF    call        004FE748
>004FD9C4    jmp         004FDA1F
 004FD9C6    mov         eax,dword ptr [ebp-4]
 004FD9C9    mov         eax,dword ptr [eax+288];TCustomActionToolBar.FHiddenItems:TStack
 004FD9CF    call        TOrderedList.Pop
 004FD9D4    mov         dl,1
 004FD9D6    call        TControl.SetVisible
 004FD9DB    mov         eax,dword ptr [ebp-4]
 004FD9DE    cmp         dword ptr [eax+288],0;TCustomActionToolBar.FHiddenItems:TStack
>004FD9E5    je          004FD9F9
 004FD9E7    mov         eax,dword ptr [ebp-4]
 004FD9EA    mov         eax,dword ptr [eax+288];TCustomActionToolBar.FHiddenItems:TStack
 004FD9F0    call        TOrderedList.Count
 004FD9F5    test        eax,eax
>004FD9F7    jg          004FD9C6
 004FD9F9    mov         eax,dword ptr [ebp-4]
 004FD9FC    add         eax,288;TCustomActionToolBar.FHiddenItems:TStack
 004FDA01    call        FreeAndNil
 004FDA06    mov         eax,dword ptr [ebp-4]
 004FDA09    add         eax,294;TCustomActionToolBar.FScrollBtn:TCustomToolScrollBtn
 004FDA0E    call        FreeAndNil
 004FDA13    mov         eax,dword ptr [ebp-4]
 004FDA16    mov         si,0FFCF
 004FDA1A    call        @CallDynaInst;TControl.sub_004C9EFC
 004FDA1F    pop         esi
 004FDA20    pop         ecx
 004FDA21    pop         ebp
 004FDA22    ret
*}
end;

//004FDA24
{*function sub_004FDA24(?:?):?;
begin
 004FDA24    push        ebp
 004FDA25    mov         ebp,esp
 004FDA27    add         esp,0FFFFFFE4
 004FDA2A    mov         dword ptr [ebp-8],edx
 004FDA2D    mov         dword ptr [ebp-4],eax
 004FDA30    mov         edx,dword ptr [ebp-8]
 004FDA33    mov         eax,dword ptr [ebp-4]
 004FDA36    call        0050FEB4
 004FDA3B    mov         dword ptr [ebp-0C],eax
 004FDA3E    mov         edx,3
 004FDA43    mov         eax,dword ptr [ebp-0C]
 004FDA46    call        00514C04
 004FDA4B    push        4
 004FDA4D    lea         eax,[ebp-1C]
 004FDA50    push        eax
 004FDA51    mov         ecx,4
 004FDA56    mov         edx,4
 004FDA5B    mov         eax,4
 004FDA60    call        Rect
 004FDA65    lea         edx,[ebp-1C]
 004FDA68    mov         eax,dword ptr [ebp-0C]
 004FDA6B    call        00514B94
 004FDA70    mov         eax,dword ptr [ebp-4]
 004FDA73    cmp         dword ptr [eax+210],0;TCustomActionToolBar.FActionClient:TActionClient
>004FDA7A    je          004FDAAC
 004FDA7C    mov         eax,dword ptr [ebp-4]
 004FDA7F    mov         eax,dword ptr [eax+210];TCustomActionToolBar.FActionClient:TActionClient
 004FDA85    mov         dl,byte ptr [eax+39]
 004FDA88    mov         eax,dword ptr [ebp-0C]
 004FDA8B    mov         ecx,dword ptr [eax]
 004FDA8D    call        dword ptr [ecx+0D4]
 004FDA93    mov         eax,dword ptr [ebp-4]
 004FDA96    mov         eax,dword ptr [eax+210];TCustomActionToolBar.FActionClient:TActionClient
 004FDA9C    call        TActionClient.GetItems
 004FDAA1    mov         dl,byte ptr [eax+29]
 004FDAA4    mov         eax,dword ptr [ebp-0C]
 004FDAA7    call        00515984
 004FDAAC    mov         eax,dword ptr [ebp-0C]
 004FDAAF    mov         esp,ebp
 004FDAB1    pop         ebp
 004FDAB2    ret
end;*}

//004FDAB4
procedure TCustomActionToolBar.DisableHiding;
begin
{*
 004FDAB4    push        ebp
 004FDAB5    mov         ebp,esp
 004FDAB7    push        ecx
 004FDAB8    mov         dword ptr [ebp-4],eax
 004FDABB    mov         eax,dword ptr [ebp-4]
 004FDABE    inc         dword ptr [eax+28C]
 004FDAC4    pop         ecx
 004FDAC5    pop         ebp
 004FDAC6    ret
*}
end;

//004FDAC8
{*function sub_004FDAC8(?:?):?;
begin
 004FDAC8    push        ebp
 004FDAC9    mov         ebp,esp
 004FDACB    add         esp,0FFFFFFF4
 004FDACE    push        ebx
 004FDACF    mov         dword ptr [ebp-8],edx
 004FDAD2    mov         dword ptr [ebp-4],eax
 004FDAD5    mov         eax,dword ptr [ebp-4]
 004FDAD8    mov         edx,dword ptr [eax]
 004FDADA    call        dword ptr [edx+148];TCustomActionToolBar.sub_0051331C
 004FDAE0    mov         ecx,dword ptr [ebp-8]
 004FDAE3    mov         edx,dword ptr [ebp-4]
 004FDAE6    mov         ebx,dword ptr [eax]
 004FDAE8    call        dword ptr [ebx]
 004FDAEA    mov         dword ptr [ebp-0C],eax
 004FDAED    mov         eax,dword ptr [ebp-0C]
 004FDAF0    pop         ebx
 004FDAF1    mov         esp,ebp
 004FDAF3    pop         ebp
 004FDAF4    ret
end;*}

//004FDAF8
{*procedure sub_004FDAF8(?:?; ?:?; ?:?);
begin
 004FDAF8    push        ebp
 004FDAF9    mov         ebp,esp
 004FDAFB    add         esp,0FFFFFFDC
 004FDAFE    mov         dword ptr [ebp-0C],ecx
 004FDB01    mov         dword ptr [ebp-8],edx
 004FDB04    mov         dword ptr [ebp-4],eax
 004FDB07    xor         eax,eax
 004FDB09    mov         dword ptr [ebp-14],eax
 004FDB0C    lea         ecx,[ebp-24]
 004FDB0F    mov         edx,dword ptr [ebp+8]
 004FDB12    mov         eax,dword ptr [ebp-0C]
 004FDB15    call        Point
 004FDB1A    lea         edx,[ebp-24]
 004FDB1D    mov         eax,dword ptr [ebp-4]
 004FDB20    call        00511158
 004FDB25    mov         dword ptr [ebp-18],eax
 004FDB28    cmp         dword ptr [ebp-18],0
>004FDB2C    je          004FDB3F
 004FDB2E    mov         eax,dword ptr [ebp-18]
 004FDB31    mov         eax,dword ptr [eax+16C]
 004FDB37    call        TCollectionItem.GetIndex
 004FDB3C    mov         dword ptr [ebp-14],eax
 004FDB3F    mov         eax,dword ptr [ebp-8]
 004FDB42    call        0050F4F4
 004FDB47    dec         eax
 004FDB48    test        eax,eax
>004FDB4A    jl          004FDB87
 004FDB4C    inc         eax
 004FDB4D    mov         dword ptr [ebp-1C],eax
 004FDB50    mov         dword ptr [ebp-10],0
 004FDB57    mov         edx,dword ptr [ebp-10]
 004FDB5A    mov         eax,dword ptr [ebp-8]
 004FDB5D    call        0050F4A8
 004FDB62    push        eax
 004FDB63    mov         eax,dword ptr [ebp-4]
 004FDB66    mov         eax,dword ptr [eax+210];TCustomActionToolBar.FActionClient:TActionClient
 004FDB6C    call        TActionClient.GetItems
 004FDB71    mov         edx,dword ptr [ebp-14]
 004FDB74    call        00479DAC
 004FDB79    pop         edx
 004FDB7A    call        TActionClientItem.SetAction
 004FDB7F    inc         dword ptr [ebp-10]
 004FDB82    dec         dword ptr [ebp-1C]
>004FDB85    jne         004FDB57
 004FDB87    mov         esp,ebp
 004FDB89    pop         ebp
 004FDB8A    ret         4
end;*}

//004FDB90
procedure sub_004FDB90;
begin
{*
 004FDB90    push        ebp
 004FDB91    mov         ebp,esp
 004FDB93    add         esp,0FFFFFFEC
 004FDB96    push        ebx
 004FDB97    mov         dword ptr [ebp-4],eax
 004FDB9A    mov         eax,dword ptr [ebp-4]
 004FDB9D    call        00510888
 004FDBA2    mov         eax,dword ptr [ebp-4]
 004FDBA5    mov         edx,dword ptr [eax]
 004FDBA7    call        dword ptr [edx+114];TCustomActionToolBar.sub_00511728
 004FDBAD    test        eax,eax
>004FDBAF    je          004FDD25
 004FDBB5    mov         eax,dword ptr [ebp-4]
 004FDBB8    call        00512624
 004FDBBD    test        al,al
>004FDBBF    je          004FDD25
 004FDBC5    mov         eax,dword ptr [ebp-4]
 004FDBC8    mov         edx,dword ptr [eax]
 004FDBCA    call        dword ptr [edx+140];TCustomActionToolBar.sub_00510D68
 004FDBD0    mov         dword ptr [ebp-8],eax
 004FDBD3    mov         eax,dword ptr [ebp-4]
 004FDBD6    mov         edx,dword ptr [eax]
 004FDBD8    call        dword ptr [edx+0EC];TCustomActionToolBar.sub_00510E5C
 004FDBDE    mov         dword ptr [ebp-0C],eax
 004FDBE1    cmp         dword ptr [ebp-8],0
>004FDBE5    je          004FDD25
 004FDBEB    cmp         dword ptr [ebp-0C],0
>004FDBEF    je          004FDD25
 004FDBF5    mov         eax,dword ptr [ebp-8]
 004FDBF8    cmp         dword ptr [eax+40],0
>004FDBFC    je          004FDD25
 004FDC02    mov         eax,dword ptr [ebp-0C]
 004FDC05    cmp         dword ptr [eax+40],0
>004FDC09    je          004FDD25
 004FDC0F    mov         eax,dword ptr [ebp-8]
 004FDC12    mov         eax,dword ptr [eax+40]
 004FDC15    mov         eax,dword ptr [eax+44]
 004FDC18    mov         edx,dword ptr [ebp-0C]
 004FDC1B    mov         edx,dword ptr [edx+40]
 004FDC1E    cmp         eax,dword ptr [edx+44]
>004FDC21    je          004FDD25
 004FDC27    mov         eax,dword ptr [ebp-4]
 004FDC2A    cmp         byte ptr [eax+25C],0;TCustomActionToolBar.FHorzSeparator:Boolean
>004FDC31    je          004FDCA5
 004FDC33    mov         eax,dword ptr [ebp-4]
 004FDC36    mov         al,byte ptr [eax+227];TCustomActionToolBar.FOrientation:TBarOrientation
 004FDC3C    sub         al,2
>004FDC3E    jae         004FDCA5
 004FDC40    mov         eax,dword ptr [ebp-4]
 004FDC43    mov         eax,dword ptr [eax+250];TCustomActionToolBar.FVRowCount:Integer
 004FDC49    dec         eax
 004FDC4A    test        eax,eax
>004FDC4C    jle         004FDCA5
 004FDC4E    mov         dword ptr [ebp-14],eax
 004FDC51    mov         dword ptr [ebp-10],1
 004FDC58    mov         eax,dword ptr [ebp-4]
 004FDC5B    mov         edx,dword ptr [eax+254];TCustomActionToolBar.FVertMargin:Integer
 004FDC61    add         edx,edx
 004FDC63    mov         eax,dword ptr [ebp-0C]
 004FDC66    mov         eax,dword ptr [eax+40]
 004FDC69    add         edx,dword ptr [eax+4C]
 004FDC6C    mov         eax,dword ptr [ebp-4]
 004FDC6F    mov         eax,dword ptr [eax+254];TCustomActionToolBar.FVertMargin:Integer
 004FDC75    add         eax,eax
 004FDC77    add         eax,2
 004FDC7A    mov         ecx,dword ptr [ebp-0C]
 004FDC7D    mov         ecx,dword ptr [ecx+40]
 004FDC80    add         eax,dword ptr [ecx+4C]
 004FDC83    mov         ecx,dword ptr [ebp-10]
 004FDC86    dec         ecx
 004FDC87    imul        eax,ecx
 004FDC8A    add         edx,eax
 004FDC8C    inc         edx
 004FDC8D    mov         ecx,2
 004FDC92    mov         eax,dword ptr [ebp-4]
 004FDC95    mov         ebx,dword ptr [eax]
 004FDC97    call        dword ptr [ebx+14C];TCustomActionToolBar.sub_004FDD2C
 004FDC9D    inc         dword ptr [ebp-10]
 004FDCA0    dec         dword ptr [ebp-14]
>004FDCA3    jne         004FDC58
 004FDCA5    mov         eax,dword ptr [ebp-4]
 004FDCA8    cmp         byte ptr [eax+265],0;TCustomActionToolBar.FVertSeparator:Boolean
>004FDCAF    je          004FDD25
 004FDCB1    mov         eax,dword ptr [ebp-4]
 004FDCB4    mov         al,byte ptr [eax+227];TCustomActionToolBar.FOrientation:TBarOrientation
 004FDCBA    add         al,0FE
 004FDCBC    sub         al,2
>004FDCBE    jae         004FDD25
 004FDCC0    mov         eax,dword ptr [ebp-4]
 004FDCC3    mov         eax,dword ptr [eax+24C];TCustomActionToolBar.FHRowCount:Integer
 004FDCC9    dec         eax
 004FDCCA    test        eax,eax
>004FDCCC    jle         004FDD25
 004FDCCE    mov         dword ptr [ebp-14],eax
 004FDCD1    mov         dword ptr [ebp-10],1
 004FDCD8    mov         eax,dword ptr [ebp-4]
 004FDCDB    mov         edx,dword ptr [eax+258];TCustomActionToolBar.FHorzMargin:Integer
 004FDCE1    add         edx,edx
 004FDCE3    mov         eax,dword ptr [ebp-0C]
 004FDCE6    mov         eax,dword ptr [eax+40]
 004FDCE9    add         edx,dword ptr [eax+48]
 004FDCEC    mov         eax,dword ptr [ebp-4]
 004FDCEF    mov         eax,dword ptr [eax+258];TCustomActionToolBar.FHorzMargin:Integer
 004FDCF5    add         eax,eax
 004FDCF7    add         eax,2
 004FDCFA    mov         ecx,dword ptr [ebp-0C]
 004FDCFD    mov         ecx,dword ptr [ecx+40]
 004FDD00    add         eax,dword ptr [ecx+48]
 004FDD03    mov         ecx,dword ptr [ebp-10]
 004FDD06    dec         ecx
 004FDD07    imul        eax,ecx
 004FDD0A    add         edx,eax
 004FDD0C    inc         edx
 004FDD0D    mov         ecx,2
 004FDD12    mov         eax,dword ptr [ebp-4]
 004FDD15    mov         ebx,dword ptr [eax]
 004FDD17    call        dword ptr [ebx+14C];TCustomActionToolBar.sub_004FDD2C
 004FDD1D    inc         dword ptr [ebp-10]
 004FDD20    dec         dword ptr [ebp-14]
>004FDD23    jne         004FDCD8
 004FDD25    pop         ebx
 004FDD26    mov         esp,ebp
 004FDD28    pop         ebp
 004FDD29    ret
*}
end;

//004FDD2C
{*procedure sub_004FDD2C(?:?; ?:?);
begin
 004FDD2C    push        ebp
 004FDD2D    mov         ebp,esp
 004FDD2F    add         esp,0FFFFFFE0
 004FDD32    mov         dword ptr [ebp-0C],ecx
 004FDD35    mov         dword ptr [ebp-8],edx
 004FDD38    mov         dword ptr [ebp-4],eax
 004FDD3B    mov         eax,dword ptr [ebp-4]
 004FDD3E    mov         al,byte ptr [eax+227];TCustomActionToolBar.FOrientation:TBarOrientation
 004FDD44    add         al,0FE
 004FDD46    sub         al,2
>004FDD48    jae         004FDD76
 004FDD4A    lea         ecx,[ebp-14]
 004FDD4D    mov         edx,dword ptr [ebp-0C]
 004FDD50    dec         edx
 004FDD51    mov         eax,dword ptr [ebp-8]
 004FDD54    dec         eax
 004FDD55    call        Point
 004FDD5A    mov         eax,dword ptr [ebp-4]
 004FDD5D    call        TControl.GetClientHeight
 004FDD62    mov         edx,eax
 004FDD64    sub         edx,dword ptr [ebp-0C]
 004FDD67    inc         edx
 004FDD68    lea         ecx,[ebp-1C]
 004FDD6B    mov         eax,dword ptr [ebp-8]
 004FDD6E    dec         eax
 004FDD6F    call        Point
>004FDD74    jmp         004FDDBA
 004FDD76    xor         edx,edx
 004FDD78    mov         eax,dword ptr [ebp-4]
 004FDD7B    mov         ecx,dword ptr [eax]
 004FDD7D    call        dword ptr [ecx+0F8];TCustomActionToolBar.sub_00511578
 004FDD83    add         eax,dword ptr [ebp-0C]
 004FDD86    lea         ecx,[ebp-14]
 004FDD89    mov         edx,dword ptr [ebp-8]
 004FDD8C    dec         edx
 004FDD8D    call        Point
 004FDD92    mov         dl,1
 004FDD94    mov         eax,dword ptr [ebp-4]
 004FDD97    mov         ecx,dword ptr [eax]
 004FDD99    call        dword ptr [ecx+0F8];TCustomActionToolBar.sub_00511578
 004FDD9F    push        eax
 004FDDA0    mov         eax,dword ptr [ebp-4]
 004FDDA3    call        TControl.GetClientWidth
 004FDDA8    sub         eax,dword ptr [ebp-0C]
 004FDDAB    pop         edx
 004FDDAC    sub         eax,edx
 004FDDAE    lea         ecx,[ebp-1C]
 004FDDB1    mov         edx,dword ptr [ebp-8]
 004FDDB4    dec         edx
 004FDDB5    call        Point
 004FDDBA    mov         eax,dword ptr [ebp-4]
 004FDDBD    mov         eax,dword ptr [eax+21C];TCustomActionToolBar.FCanvas:TCanvas
 004FDDC3    mov         dword ptr [ebp-20],eax
 004FDDC6    mov         edx,1
 004FDDCB    mov         eax,dword ptr [ebp-20]
 004FDDCE    mov         eax,dword ptr [eax+10];TCanvas.Pen:TPen
 004FDDD1    call        TPen.SetWidth
 004FDDD6    mov         eax,dword ptr [ebp-4]
 004FDDD9    call        TActionToolBar.GetColorMap
 004FDDDE    mov         edx,dword ptr [eax+58]
 004FDDE1    mov         eax,dword ptr [ebp-20]
 004FDDE4    mov         eax,dword ptr [eax+10];TCanvas.Pen:TPen
 004FDDE7    call        TPen.SetColor
 004FDDEC    mov         ecx,dword ptr [ebp-10]
 004FDDEF    mov         edx,dword ptr [ebp-14]
 004FDDF2    mov         eax,dword ptr [ebp-20]
 004FDDF5    call        TCanvas.MoveTo
 004FDDFA    mov         ecx,dword ptr [ebp-18]
 004FDDFD    mov         edx,dword ptr [ebp-1C]
 004FDE00    mov         eax,dword ptr [ebp-20]
 004FDE03    call        TCanvas.LineTo
 004FDE08    mov         eax,dword ptr [ebp-4]
 004FDE0B    call        TActionToolBar.GetColorMap
 004FDE10    call        TXPColorMap.GetUnusedColor
 004FDE15    mov         edx,eax
 004FDE17    mov         eax,dword ptr [ebp-20]
 004FDE1A    mov         eax,dword ptr [eax+10];TCanvas.Pen:TPen
 004FDE1D    call        TPen.SetColor
 004FDE22    mov         eax,dword ptr [ebp-14]
 004FDE25    cmp         eax,dword ptr [ebp-1C]
>004FDE28    jne         004FDE4A
 004FDE2A    mov         edx,dword ptr [ebp-14]
 004FDE2D    inc         edx
 004FDE2E    mov         ecx,dword ptr [ebp-10]
 004FDE31    mov         eax,dword ptr [ebp-20]
 004FDE34    call        TCanvas.MoveTo
 004FDE39    mov         edx,dword ptr [ebp-14]
 004FDE3C    inc         edx
 004FDE3D    mov         ecx,dword ptr [ebp-18]
 004FDE40    mov         eax,dword ptr [ebp-20]
 004FDE43    call        TCanvas.LineTo
>004FDE48    jmp         004FDE68
 004FDE4A    mov         ecx,dword ptr [ebp-10]
 004FDE4D    inc         ecx
 004FDE4E    mov         edx,dword ptr [ebp-14]
 004FDE51    mov         eax,dword ptr [ebp-20]
 004FDE54    call        TCanvas.MoveTo
 004FDE59    mov         ecx,dword ptr [ebp-18]
 004FDE5C    inc         ecx
 004FDE5D    mov         edx,dword ptr [ebp-1C]
 004FDE60    mov         eax,dword ptr [ebp-20]
 004FDE63    call        TCanvas.LineTo
 004FDE68    mov         esp,ebp
 004FDE6A    pop         ebp
 004FDE6B    ret
end;*}

//004FDE6C
procedure TCustomActionToolBar.EnableHiding;
begin
{*
 004FDE6C    push        ebp
 004FDE6D    mov         ebp,esp
 004FDE6F    push        ecx
 004FDE70    mov         dword ptr [ebp-4],eax
 004FDE73    mov         eax,dword ptr [ebp-4]
 004FDE76    cmp         dword ptr [eax+28C],0
>004FDE7D    jle         004FDE9C
 004FDE7F    mov         eax,dword ptr [ebp-4]
 004FDE82    dec         dword ptr [eax+28C]
 004FDE88    mov         eax,dword ptr [ebp-4]
 004FDE8B    cmp         dword ptr [eax+28C],0
>004FDE92    jne         004FDE9C
 004FDE94    mov         eax,dword ptr [ebp-4]
 004FDE97    call        004FE114
 004FDE9C    pop         ecx
 004FDE9D    pop         ebp
 004FDE9E    ret
*}
end;

//004FDEA0
{*function sub_004FDEA0(?:TWinControl):?;
begin
 004FDEA0    push        ebp
 004FDEA1    mov         ebp,esp
 004FDEA3    add         esp,0FFFFFFF8
 004FDEA6    mov         dword ptr [ebp-4],eax
 004FDEA9    xor         eax,eax
 004FDEAB    mov         dword ptr [ebp-8],eax
 004FDEAE    mov         eax,dword ptr [ebp-4]
 004FDEB1    cmp         dword ptr [eax+288],0
>004FDEB8    je          004FDECB
 004FDEBA    mov         eax,dword ptr [ebp-4]
 004FDEBD    mov         eax,dword ptr [eax+288]
 004FDEC3    call        TOrderedList.Count
 004FDEC8    mov         dword ptr [ebp-8],eax
 004FDECB    mov         eax,dword ptr [ebp-8]
 004FDECE    pop         ecx
 004FDECF    pop         ecx
 004FDED0    pop         ebp
 004FDED1    ret
end;*}

//004FDED4
{*function sub_004FDED4(?:?; ?:?):?;
begin
 004FDED4    push        ebp
 004FDED5    mov         ebp,esp
 004FDED7    add         esp,0FFFFFFE8
 004FDEDA    push        ebx
 004FDEDB    mov         dword ptr [ebp-4],eax
 004FDEDE    mov         byte ptr [ebp-5],0
 004FDEE2    cmp         dword ptr [ebp-4],0
>004FDEE6    je          004FE10B
 004FDEEC    mov         eax,dword ptr [ebp+8]
 004FDEEF    mov         eax,dword ptr [eax-4]
 004FDEF2    mov         edx,dword ptr [ebp-4]
 004FDEF5    cmp         eax,dword ptr [edx+16C]
>004FDEFB    jne         004FDFAE
 004FDF01    mov         eax,dword ptr [ebp+8]
 004FDF04    mov         eax,dword ptr [eax-8]
 004FDF07    mov         al,byte ptr [eax+227]
 004FDF0D    sub         al,1
>004FDF0F    jb          004FDF1D
>004FDF11    je          004FDF37
 004FDF13    dec         al
>004FDF15    je          004FDF73
 004FDF17    dec         al
>004FDF19    je          004FDF55
>004FDF1B    jmp         004FDF8B
 004FDF1D    lea         edx,[ebp-18]
 004FDF20    mov         eax,dword ptr [ebp-4]
 004FDF23    call        004CA6AC
 004FDF28    mov         eax,dword ptr [ebp-10]
 004FDF2B    mov         edx,dword ptr [ebp+8]
 004FDF2E    cmp         eax,dword ptr [edx-18]
 004FDF31    setge       byte ptr [ebp-5]
>004FDF35    jmp         004FDF8B
 004FDF37    mov         eax,dword ptr [ebp+8]
 004FDF3A    mov         eax,dword ptr [eax-10]
 004FDF3D    mov         edx,dword ptr [ebp+8]
 004FDF40    sub         eax,dword ptr [edx-18]
 004FDF43    mov         edx,dword ptr [ebp+8]
 004FDF46    add         eax,dword ptr [edx-18]
 004FDF49    mov         edx,dword ptr [ebp-4]
 004FDF4C    cmp         eax,dword ptr [edx+40]
 004FDF4F    setge       byte ptr [ebp-5]
>004FDF53    jmp         004FDF8B
 004FDF55    mov         eax,dword ptr [ebp+8]
 004FDF58    mov         eax,dword ptr [eax-0C]
 004FDF5B    mov         edx,dword ptr [ebp+8]
 004FDF5E    sub         eax,dword ptr [edx-14]
 004FDF61    mov         edx,dword ptr [ebp+8]
 004FDF64    add         eax,dword ptr [edx-14]
 004FDF67    mov         edx,dword ptr [ebp-4]
 004FDF6A    cmp         eax,dword ptr [edx+44]
 004FDF6D    setge       byte ptr [ebp-5]
>004FDF71    jmp         004FDF8B
 004FDF73    lea         edx,[ebp-18]
 004FDF76    mov         eax,dword ptr [ebp-4]
 004FDF79    call        004CA6AC
 004FDF7E    mov         eax,dword ptr [ebp-0C]
 004FDF81    mov         edx,dword ptr [ebp+8]
 004FDF84    cmp         eax,dword ptr [edx-14]
 004FDF87    setge       byte ptr [ebp-5]
 004FDF8B    cmp         byte ptr [ebp-5],0
>004FDF8F    je          004FDFA0
 004FDF91    mov         eax,dword ptr [ebp-4]
 004FDF94    mov         eax,dword ptr [eax+16C]
 004FDF9A    cmp         byte ptr [eax+30],0
>004FDF9E    jne         004FDFA4
 004FDFA0    xor         eax,eax
>004FDFA2    jmp         004FDFA6
 004FDFA4    mov         al,1
 004FDFA6    mov         byte ptr [ebp-5],al
>004FDFA9    jmp         004FE10B
 004FDFAE    mov         eax,dword ptr [ebp+8]
 004FDFB1    mov         eax,dword ptr [eax-8]
 004FDFB4    mov         al,byte ptr [eax+227]
 004FDFBA    sub         al,1
>004FDFBC    jb          004FDFD9
>004FDFBE    je          004FE045
 004FDFC4    dec         al
>004FDFC6    je          004FE0B8
 004FDFCC    dec         al
>004FDFCE    je          004FE080
>004FDFD4    jmp         004FE10B
 004FDFD9    mov         eax,dword ptr [ebp+8]
 004FDFDC    mov         eax,dword ptr [eax-8]
 004FDFDF    mov         dl,1
 004FDFE1    mov         ecx,dword ptr [eax]
 004FDFE3    call        dword ptr [ecx+0F8]
 004FDFE9    push        eax
 004FDFEA    mov         eax,dword ptr [ebp+8]
 004FDFED    mov         eax,dword ptr [eax-8]
 004FDFF0    call        TControl.GetClientWidth
 004FDFF5    mov         ebx,eax
 004FDFF7    mov         eax,dword ptr [ebp+8]
 004FDFFA    mov         eax,dword ptr [eax-8]
 004FDFFD    sub         ebx,dword ptr [eax+258]
 004FE003    pop         eax
 004FE004    sub         ebx,eax
 004FE006    mov         eax,dword ptr [ebp+8]
 004FE009    mov         eax,dword ptr [eax-10]
 004FE00C    mov         edx,dword ptr [ebp+8]
 004FE00F    sub         eax,dword ptr [edx-18]
 004FE012    sub         ebx,eax
 004FE014    lea         edx,[ebp-18]
 004FE017    mov         eax,dword ptr [ebp+8]
 004FE01A    mov         eax,dword ptr [eax-4]
 004FE01D    mov         eax,dword ptr [eax+40]
 004FE020    call        004CA6AC
 004FE025    mov         eax,dword ptr [ebp-10]
 004FE028    mov         edx,dword ptr [ebp+8]
 004FE02B    mov         edx,dword ptr [edx-8]
 004FE02E    add         eax,dword ptr [edx+228]
 004FE034    mov         edx,dword ptr [ebp-4]
 004FE037    add         eax,dword ptr [edx+48]
 004FE03A    cmp         ebx,eax
 004FE03C    setl        byte ptr [ebp-5]
>004FE040    jmp         004FE10B
 004FE045    mov         eax,dword ptr [ebp+8]
 004FE048    mov         eax,dword ptr [eax-4]
 004FE04B    mov         eax,dword ptr [eax+40]
 004FE04E    mov         eax,dword ptr [eax+40]
 004FE051    mov         edx,dword ptr [ebp+8]
 004FE054    mov         edx,dword ptr [edx-8]
 004FE057    sub         eax,dword ptr [edx+228]
 004FE05D    mov         edx,dword ptr [ebp+8]
 004FE060    mov         edx,dword ptr [edx-10]
 004FE063    mov         ecx,dword ptr [ebp+8]
 004FE066    sub         edx,dword ptr [ecx-18]
 004FE069    mov         ecx,dword ptr [ebp+8]
 004FE06C    add         edx,dword ptr [ecx-18]
 004FE06F    sub         eax,edx
 004FE071    mov         edx,dword ptr [ebp-4]
 004FE074    cmp         eax,dword ptr [edx+48]
 004FE077    setl        byte ptr [ebp-5]
>004FE07B    jmp         004FE10B
 004FE080    mov         eax,dword ptr [ebp+8]
 004FE083    mov         eax,dword ptr [eax-4]
 004FE086    mov         eax,dword ptr [eax+40]
 004FE089    mov         eax,dword ptr [eax+44]
 004FE08C    mov         edx,dword ptr [ebp+8]
 004FE08F    mov         edx,dword ptr [edx-8]
 004FE092    sub         eax,dword ptr [edx+228]
 004FE098    mov         edx,dword ptr [ebp+8]
 004FE09B    mov         edx,dword ptr [edx-0C]
 004FE09E    mov         ecx,dword ptr [ebp+8]
 004FE0A1    sub         edx,dword ptr [ecx-14]
 004FE0A4    mov         ecx,dword ptr [ebp+8]
 004FE0A7    add         edx,dword ptr [ecx-14]
 004FE0AA    sub         eax,edx
 004FE0AC    mov         edx,dword ptr [ebp-4]
 004FE0AF    cmp         eax,dword ptr [edx+4C]
 004FE0B2    setl        byte ptr [ebp-5]
>004FE0B6    jmp         004FE10B
 004FE0B8    mov         eax,dword ptr [ebp+8]
 004FE0BB    mov         eax,dword ptr [eax-8]
 004FE0BE    call        TControl.GetClientHeight
 004FE0C3    mov         ebx,eax
 004FE0C5    mov         eax,dword ptr [ebp+8]
 004FE0C8    mov         eax,dword ptr [eax-8]
 004FE0CB    sub         ebx,dword ptr [eax+228]
 004FE0D1    mov         eax,dword ptr [ebp+8]
 004FE0D4    mov         eax,dword ptr [eax-8]
 004FE0D7    sub         ebx,dword ptr [eax+254]
 004FE0DD    mov         eax,dword ptr [ebp+8]
 004FE0E0    mov         eax,dword ptr [eax-0C]
 004FE0E3    mov         edx,dword ptr [ebp+8]
 004FE0E6    sub         eax,dword ptr [edx-14]
 004FE0E9    sub         ebx,eax
 004FE0EB    lea         edx,[ebp-18]
 004FE0EE    mov         eax,dword ptr [ebp+8]
 004FE0F1    mov         eax,dword ptr [eax-4]
 004FE0F4    mov         eax,dword ptr [eax+40]
 004FE0F7    call        004CA6AC
 004FE0FC    mov         eax,dword ptr [ebp-0C]
 004FE0FF    mov         edx,dword ptr [ebp-4]
 004FE102    add         eax,dword ptr [edx+4C]
 004FE105    cmp         ebx,eax
 004FE107    setl        byte ptr [ebp-5]
 004FE10B    mov         al,byte ptr [ebp-5]
 004FE10E    pop         ebx
 004FE10F    mov         esp,ebp
 004FE111    pop         ebp
 004FE112    ret
end;*}

//004FE114
procedure sub_004FE114(?:TCustomActionToolBar);
begin
{*
 004FE114    push        ebp
 004FE115    mov         ebp,esp
 004FE117    add         esp,0FFFFFFE0
 004FE11A    mov         dword ptr [ebp-8],eax
 004FE11D    mov         eax,dword ptr [ebp-8]
 004FE120    call        00512624
 004FE125    test        al,al
>004FE127    jne         004FE367
 004FE12D    mov         eax,dword ptr [ebp-8]
 004FE130    cmp         dword ptr [eax+28C],0
>004FE137    jg          004FE367
 004FE13D    mov         eax,dword ptr [ebp-8]
 004FE140    cmp         dword ptr [eax+294],0
>004FE147    je          004FE15C
 004FE149    lea         edx,[ebp-18]
 004FE14C    mov         eax,dword ptr [ebp-8]
 004FE14F    mov         eax,dword ptr [eax+294]
 004FE155    call        004CA6AC
>004FE15A    jmp         004FE16D
 004FE15C    push        0
 004FE15E    lea         eax,[ebp-18]
 004FE161    push        eax
 004FE162    xor         ecx,ecx
 004FE164    xor         edx,edx
 004FE166    xor         eax,eax
 004FE168    call        Rect
 004FE16D    mov         eax,dword ptr [ebp-8]
 004FE170    call        00511000
 004FE175    mov         dword ptr [ebp-4],eax
 004FE178    cmp         dword ptr [ebp-4],0
>004FE17C    je          004FE367
 004FE182    push        ebp
 004FE183    mov         eax,dword ptr [ebp-4]
 004FE186    mov         eax,dword ptr [eax+40]
 004FE189    call        004FDED4
 004FE18E    pop         ecx
 004FE18F    test        al,al
>004FE191    je          004FE258
 004FE197    mov         eax,dword ptr [ebp-8]
 004FE19A    mov         eax,dword ptr [eax+210]
 004FE1A0    call        TActionClient.GetItems
 004FE1A5    cmp         byte ptr [eax+2A],0
>004FE1A9    je          004FE1BA
 004FE1AB    mov         dl,1
 004FE1AD    mov         eax,dword ptr [ebp-8]
 004FE1B0    call        00510EAC
 004FE1B5    mov         dword ptr [ebp-1C],eax
>004FE1B8    jmp         004FE1C0
 004FE1BA    mov         eax,dword ptr [ebp-4]
 004FE1BD    mov         dword ptr [ebp-1C],eax
 004FE1C0    cmp         dword ptr [ebp-1C],0
>004FE1C4    je          004FE320
 004FE1CA    mov         eax,dword ptr [ebp-1C]
 004FE1CD    cmp         byte ptr [eax+30],0
>004FE1D1    je          004FE320
 004FE1D7    mov         eax,dword ptr [ebp-8]
 004FE1DA    call        0051105C
 004FE1DF    cmp         eax,dword ptr [ebp-4]
>004FE1E2    je          004FE320
 004FE1E8    mov         eax,dword ptr [ebp-8]
 004FE1EB    cmp         dword ptr [eax+288],0
>004FE1F2    jne         004FE211
 004FE1F4    mov         dl,1
 004FE1F6    mov         eax,[0048FE00];TStack
 004FE1FB    call        TOrderedList.Create;TStack.Create
 004FE200    mov         edx,dword ptr [ebp-8]
 004FE203    mov         dword ptr [edx+288],eax
 004FE209    mov         eax,dword ptr [ebp-8]
 004FE20C    call        004FE748
 004FE211    mov         eax,dword ptr [ebp-8]
 004FE214    test        byte ptr [eax+1C],10
>004FE218    je          004FE232
 004FE21A    mov         eax,dword ptr [ebp-1C]
 004FE21D    mov         eax,dword ptr [eax+40]
 004FE220    mov         eax,dword ptr [eax+50]
 004FE223    or          eax,dword ptr ds:[4FE36C];0x400 gvar_004FE36C
 004FE229    mov         edx,dword ptr [ebp-1C]
 004FE22C    mov         edx,dword ptr [edx+40]
 004FE22F    mov         dword ptr [edx+50],eax
 004FE232    mov         eax,dword ptr [ebp-8]
 004FE235    mov         eax,dword ptr [eax+288]
 004FE23B    mov         edx,dword ptr [ebp-1C]
 004FE23E    mov         edx,dword ptr [edx+40]
 004FE241    call        0048FF60
 004FE246    xor         edx,edx
 004FE248    mov         eax,dword ptr [ebp-1C]
 004FE24B    mov         eax,dword ptr [eax+40]
 004FE24E    call        TControl.SetVisible
>004FE253    jmp         004FE320
 004FE258    mov         eax,dword ptr [ebp-8]
 004FE25B    cmp         dword ptr [eax+288],0
>004FE262    je          004FE320
 004FE268    mov         eax,dword ptr [ebp-8]
 004FE26B    mov         eax,dword ptr [eax+288]
 004FE271    call        TOrderedList.Count
 004FE276    test        eax,eax
>004FE278    jle         004FE320
 004FE27E    push        ebp
 004FE27F    mov         eax,dword ptr [ebp-8]
 004FE282    mov         eax,dword ptr [eax+288]
 004FE288    call        0048FF28
 004FE28D    call        004FDED4
 004FE292    pop         ecx
 004FE293    test        al,al
>004FE295    jne         004FE320
 004FE29B    mov         eax,dword ptr [ebp-8]
 004FE29E    test        byte ptr [eax+1C],10
>004FE2A2    je          004FE2C6
 004FE2A4    mov         eax,dword ptr [ebp-8]
 004FE2A7    mov         eax,dword ptr [eax+288]
 004FE2AD    call        0048FF28
 004FE2B2    mov         dword ptr [ebp-20],eax
 004FE2B5    mov         eax,[004FE36C];0x400 gvar_004FE36C
 004FE2BA    mov         edx,dword ptr [ebp-20]
 004FE2BD    or          eax,dword ptr [edx+50]
 004FE2C0    mov         edx,dword ptr [ebp-20]
 004FE2C3    mov         dword ptr [edx+50],eax
 004FE2C6    mov         eax,dword ptr [ebp-8]
 004FE2C9    mov         eax,dword ptr [eax+288]
 004FE2CF    call        0048FF28
 004FE2D4    mov         eax,dword ptr [eax+16C]
 004FE2DA    cmp         byte ptr [eax+30],0
>004FE2DE    je          004FE2F5
 004FE2E0    mov         eax,dword ptr [ebp-8]
 004FE2E3    mov         eax,dword ptr [eax+288]
 004FE2E9    call        TOrderedList.Pop
 004FE2EE    mov         dl,1
 004FE2F0    call        TControl.SetVisible
 004FE2F5    mov         eax,dword ptr [ebp-8]
 004FE2F8    cmp         dword ptr [eax+288],0
>004FE2FF    je          004FE320
 004FE301    mov         eax,dword ptr [ebp-8]
 004FE304    mov         eax,dword ptr [eax+288]
 004FE30A    call        TOrderedList.Count
 004FE30F    test        eax,eax
>004FE311    jne         004FE320
 004FE313    mov         eax,dword ptr [ebp-8]
 004FE316    add         eax,288
 004FE31B    call        FreeAndNil
 004FE320    mov         eax,dword ptr [ebp-8]
 004FE323    cmp         dword ptr [eax+294],0
>004FE32A    je          004FE367
 004FE32C    mov         eax,dword ptr [ebp-8]
 004FE32F    test        byte ptr [eax+1C],10
>004FE333    jne         004FE353
 004FE335    mov         eax,dword ptr [ebp-8]
 004FE338    call        004FDEA0
 004FE33D    test        eax,eax
>004FE33F    jg          004FE357
 004FE341    mov         eax,dword ptr [ebp-8]
 004FE344    mov         eax,dword ptr [eax+214]
 004FE34A    cmp         dword ptr [eax+88],0
>004FE351    jne         004FE357
 004FE353    xor         edx,edx
>004FE355    jmp         004FE359
 004FE357    mov         dl,1
 004FE359    mov         eax,dword ptr [ebp-8]
 004FE35C    mov         eax,dword ptr [eax+294]
 004FE362    mov         ecx,dword ptr [eax]
 004FE364    call        dword ptr [ecx+64]
 004FE367    mov         esp,ebp
 004FE369    pop         ebp
 004FE36A    ret
*}
end;

//004FE670
procedure TActionToolBar.SetOrientation(Value:TBarOrientation);
begin
{*
 004FE670    push        ebp
 004FE671    mov         ebp,esp
 004FE673    add         esp,0FFFFFFF8
 004FE676    mov         byte ptr [ebp-5],dl
 004FE679    mov         dword ptr [ebp-4],eax
 004FE67C    mov         eax,dword ptr [ebp-4]
 004FE67F    call        TCustomActionToolBar.DisableHiding
 004FE684    xor         eax,eax
 004FE686    push        ebp
 004FE687    push        4FE73D
 004FE68C    push        dword ptr fs:[eax]
 004FE68F    mov         dword ptr fs:[eax],esp
 004FE692    mov         eax,dword ptr [ebp-4]
 004FE695    cmp         dword ptr [eax+288],0;TActionToolBar.FHiddenItems:TStack
>004FE69C    je          004FE6C7
>004FE69E    jmp         004FE6B5
 004FE6A0    mov         eax,dword ptr [ebp-4]
 004FE6A3    mov         eax,dword ptr [eax+288];TActionToolBar.FHiddenItems:TStack
 004FE6A9    call        TOrderedList.Pop
 004FE6AE    mov         dl,1
 004FE6B0    call        TControl.SetVisible
 004FE6B5    mov         eax,dword ptr [ebp-4]
 004FE6B8    mov         eax,dword ptr [eax+288];TActionToolBar.FHiddenItems:TStack
 004FE6BE    call        TOrderedList.Count
 004FE6C3    test        eax,eax
>004FE6C5    jg          004FE6A0
 004FE6C7    mov         eax,dword ptr [ebp-4]
 004FE6CA    add         eax,288;TActionToolBar.FHiddenItems:TStack
 004FE6CF    call        FreeAndNil
 004FE6D4    mov         dl,byte ptr [ebp-5]
 004FE6D7    mov         eax,dword ptr [ebp-4]
 004FE6DA    call        00511CA8
 004FE6DF    mov         eax,dword ptr [ebp-4]
 004FE6E2    cmp         dword ptr [eax+294],0;TActionToolBar.FScrollBtn:TCustomToolScrollBtn
>004FE6E9    je          004FE727
 004FE6EB    mov         eax,dword ptr [ebp-4]
 004FE6EE    movzx       eax,byte ptr [eax+227];TActionToolBar.FOrientation:TBarOrientation
 004FE6F5    mov         dl,byte ptr [eax+541A60]
 004FE6FB    mov         eax,dword ptr [ebp-4]
 004FE6FE    mov         eax,dword ptr [eax+294];TActionToolBar.FScrollBtn:TCustomToolScrollBtn
 004FE704    call        004FCB28
 004FE709    mov         eax,dword ptr [ebp-4]
 004FE70C    movzx       eax,byte ptr [eax+227];TActionToolBar.FOrientation:TBarOrientation
 004FE713    mov         dl,byte ptr [eax+541A5C]
 004FE719    mov         eax,dword ptr [ebp-4]
 004FE71C    mov         eax,dword ptr [eax+294];TActionToolBar.FScrollBtn:TCustomToolScrollBtn
 004FE722    call        TImage.SetAlign
 004FE727    xor         eax,eax
 004FE729    pop         edx
 004FE72A    pop         ecx
 004FE72B    pop         ecx
 004FE72C    mov         dword ptr fs:[eax],edx
 004FE72F    push        4FE744
 004FE734    mov         eax,dword ptr [ebp-4]
 004FE737    call        TCustomActionToolBar.EnableHiding
 004FE73C    ret
>004FE73D    jmp         @HandleFinally
>004FE742    jmp         004FE734
 004FE744    pop         ecx
 004FE745    pop         ecx
 004FE746    pop         ebp
 004FE747    ret
*}
end;

//004FE748
procedure sub_004FE748(?:TCustomActionToolBar);
begin
{*
 004FE748    push        ebp
 004FE749    mov         ebp,esp
 004FE74B    add         esp,0FFFFFFF8
 004FE74E    mov         dword ptr [ebp-4],eax
 004FE751    mov         eax,dword ptr [ebp-4]
 004FE754    call        00512624
 004FE759    test        al,al
>004FE75B    jne         004FE853
 004FE761    mov         eax,dword ptr [ebp-4]
 004FE764    cmp         dword ptr [eax+294],0;TCustomActionToolBar.FScrollBtn:TCustomToolScrollBtn
>004FE76B    jne         004FE853
 004FE771    mov         eax,dword ptr [ebp-4]
 004FE774    cmp         dword ptr [eax+210],0;TCustomActionToolBar.FActionClient:TActionClient
>004FE77B    je          004FE853
 004FE781    mov         eax,dword ptr [ebp-4]
 004FE784    call        004FEA10
 004FE789    mov         ecx,dword ptr [ebp-4]
 004FE78C    mov         dl,1
 004FE78E    call        dword ptr [eax+2C]
 004FE791    mov         edx,dword ptr [ebp-4]
 004FE794    mov         dword ptr [edx+294],eax;TCustomActionToolBar.FScrollBtn:TCustomToolScrollBtn
 004FE79A    mov         eax,dword ptr [ebp-4]
 004FE79D    mov         eax,dword ptr [eax+294];TCustomActionToolBar.FScrollBtn:TCustomToolScrollBtn
 004FE7A3    mov         dword ptr [ebp-8],eax
 004FE7A6    mov         eax,dword ptr [ebp-8]
 004FE7A9    lea         edx,[eax+80];TCustomToolScrollBtn.Hint:String
 004FE7AF    mov         eax,[0055B288];^SMoreButtons:TResStringRec
 004FE7B4    call        LoadResString
 004FE7B9    mov         eax,dword ptr [ebp-4]
 004FE7BC    movzx       eax,byte ptr [eax+227];TCustomActionToolBar.FOrientation:TBarOrientation
 004FE7C3    mov         dl,byte ptr [eax+541A60]
 004FE7C9    mov         eax,dword ptr [ebp-8]
 004FE7CC    call        004FCB28
 004FE7D1    mov         eax,dword ptr [ebp-4]
 004FE7D4    movzx       eax,byte ptr [eax+227];TCustomActionToolBar.FOrientation:TBarOrientation
 004FE7DB    mov         dl,byte ptr [eax+541A5C]
 004FE7E1    mov         eax,dword ptr [ebp-8]
 004FE7E4    call        TImage.SetAlign
 004FE7E9    mov         edx,dword ptr [ebp-4]
 004FE7EC    mov         eax,dword ptr [ebp-8]
 004FE7EF    mov         ecx,dword ptr [eax]
 004FE7F1    call        dword ptr [ecx+68];TCustomToolScrollBtn.sub_004CAD7C
 004FE7F4    mov         dl,1
 004FE7F6    mov         eax,dword ptr [ebp-8]
 004FE7F9    call        TPanel.SetParentColor
 004FE7FE    mov         eax,dword ptr [ebp-8]
 004FE801    mov         al,byte ptr [eax+5B];TCustomToolScrollBtn.FAlign:TAlign
 004FE804    dec         eax
 004FE805    sub         al,2
>004FE807    jae         004FE818
 004FE809    mov         edx,0D
 004FE80E    mov         eax,dword ptr [ebp-8]
 004FE811    call        TControl.SetHeight
>004FE816    jmp         004FE825
 004FE818    mov         edx,0B
 004FE81D    mov         eax,dword ptr [ebp-8]
 004FE820    call        TControl.SetWidth
 004FE825    mov         eax,dword ptr [ebp-4]
 004FE828    mov         eax,dword ptr [eax+210];TCustomActionToolBar.FActionClient:TActionClient
 004FE82E    call        0050CCE0
 004FE833    mov         edx,eax
 004FE835    mov         eax,dword ptr [ebp-8]
 004FE838    call        005147F4
 004FE83D    mov         eax,dword ptr [ebp-4]
 004FE840    mov         edx,dword ptr [ebp-8]
 004FE843    mov         dword ptr [edx+1C4],eax;TCustomToolScrollBtn.?f1C4:TCustomActionToolBar
 004FE849    mov         dword ptr [edx+1C0],4FE370;TCustomToolScrollBtn.FOnClick:TNotifyEvent
 004FE853    pop         ecx
 004FE854    pop         ecx
 004FE855    pop         ebp
 004FE856    ret
*}
end;

//004FE858
procedure TCustomActionToolBar.Reset;
begin
{*
 004FE858    push        ebp
 004FE859    mov         ebp,esp
 004FE85B    push        ecx
 004FE85C    mov         dword ptr [ebp-4],eax
 004FE85F    mov         eax,dword ptr [ebp-4]
 004FE862    call        TCustomActionToolBar.DisableHiding
 004FE867    xor         eax,eax
 004FE869    push        ebp
 004FE86A    push        4FE8D5
 004FE86F    push        dword ptr fs:[eax]
 004FE872    mov         dword ptr fs:[eax],esp
 004FE875    mov         eax,dword ptr [ebp-4]
 004FE878    cmp         dword ptr [eax+288],0
>004FE87F    je          004FE8B7
>004FE881    jmp         004FE898
 004FE883    mov         eax,dword ptr [ebp-4]
 004FE886    mov         eax,dword ptr [eax+288]
 004FE88C    call        TOrderedList.Pop
 004FE891    mov         dl,1
 004FE893    call        TControl.SetVisible
 004FE898    mov         eax,dword ptr [ebp-4]
 004FE89B    mov         eax,dword ptr [eax+288]
 004FE8A1    call        TOrderedList.Count
 004FE8A6    test        eax,eax
>004FE8A8    jg          004FE883
 004FE8AA    mov         eax,dword ptr [ebp-4]
 004FE8AD    add         eax,288
 004FE8B2    call        FreeAndNil
 004FE8B7    mov         eax,dword ptr [ebp-4]
 004FE8BA    call        TCustomActionBar.Reset
 004FE8BF    xor         eax,eax
 004FE8C1    pop         edx
 004FE8C2    pop         ecx
 004FE8C3    pop         ecx
 004FE8C4    mov         dword ptr fs:[eax],edx
 004FE8C7    push        4FE8DC
 004FE8CC    mov         eax,dword ptr [ebp-4]
 004FE8CF    call        TCustomActionToolBar.EnableHiding
 004FE8D4    ret
>004FE8D5    jmp         @HandleFinally
>004FE8DA    jmp         004FE8CC
 004FE8DC    pop         ecx
 004FE8DD    pop         ebp
 004FE8DE    ret
*}
end;

//004FE8E0
{*procedure TCustomActionToolBar.CMColorChanged(?:?);
begin
 004FE8E0    push        ebp
 004FE8E1    mov         ebp,esp
 004FE8E3    add         esp,0FFFFFFF8
 004FE8E6    mov         dword ptr [ebp-8],edx
 004FE8E9    mov         dword ptr [ebp-4],eax
 004FE8EC    mov         edx,dword ptr [ebp-8]
 004FE8EF    mov         eax,dword ptr [ebp-4]
 004FE8F2    call        TWinControl.CMColorChanged
 004FE8F7    xor         ecx,ecx
 004FE8F9    mov         edx,0FFFFFFAB
 004FE8FE    mov         eax,dword ptr [ebp-4]
 004FE901    mov         eax,dword ptr [eax+70];TCustomActionToolBar.FColor:TColor
 004FE904    call        004F8EF8
 004FE909    mov         edx,dword ptr [ebp-4]
 004FE90C    mov         dword ptr [edx+298],eax;TCustomActionToolBar.FShadowClr:TColor
 004FE912    xor         ecx,ecx
 004FE914    mov         edx,55
 004FE919    mov         eax,dword ptr [ebp-4]
 004FE91C    mov         eax,dword ptr [eax+70];TCustomActionToolBar.FColor:TColor
 004FE91F    call        004F8EF8
 004FE924    mov         edx,dword ptr [ebp-4]
 004FE927    mov         dword ptr [edx+29C],eax;TCustomActionToolBar.FHighlightClr:TColor
 004FE92D    pop         ecx
 004FE92E    pop         ecx
 004FE92F    pop         ebp
 004FE930    ret
end;*}

//004FE934
procedure TCustomActionToolBar.SetBounds(ALeft:Integer; ATop:Integer; AWidth:Integer; AHeight:Integer);
begin
{*
 004FE934    push        ebp
 004FE935    mov         ebp,esp
 004FE937    add         esp,0FFFFFFF4
 004FE93A    mov         dword ptr [ebp-0C],ecx
 004FE93D    mov         dword ptr [ebp-8],edx
 004FE940    mov         dword ptr [ebp-4],eax
 004FE943    mov         eax,dword ptr [ebp+0C]
 004FE946    push        eax
 004FE947    mov         eax,dword ptr [ebp+8]
 004FE94A    push        eax
 004FE94B    mov         ecx,dword ptr [ebp-0C]
 004FE94E    mov         edx,dword ptr [ebp-8]
 004FE951    mov         eax,dword ptr [ebp-4]
 004FE954    call        TCustomActionBar.SetBounds
 004FE959    mov         eax,dword ptr [ebp-4]
 004FE95C    call        00512624
 004FE961    test        al,al
>004FE963    jne         004FE96D
 004FE965    mov         eax,dword ptr [ebp-4]
 004FE968    call        004FE114
 004FE96D    mov         esp,ebp
 004FE96F    pop         ebp
 004FE970    ret         8
*}
end;

//004FE974
{*procedure TCustomActionToolBar.sub_004CBB18(?:?; ?:?; ?:?);
begin
 004FE974    push        ebp
 004FE975    mov         ebp,esp
 004FE977    add         esp,0FFFFFFF4
 004FE97A    push        ebx
 004FE97B    mov         dword ptr [ebp-0C],ecx
 004FE97E    mov         dword ptr [ebp-8],edx
 004FE981    mov         dword ptr [ebp-4],eax
 004FE984    mov         eax,dword ptr [ebp+8]
 004FE987    push        eax
 004FE988    mov         ecx,dword ptr [ebp-0C]
 004FE98B    mov         edx,dword ptr [ebp-8]
 004FE98E    mov         eax,dword ptr [ebp-4]
 004FE991    call        TCustomActionBar.sub_004CBB18
 004FE996    mov         eax,dword ptr [ebp-4]
 004FE999    mov         eax,dword ptr [eax+48];TCustomActionToolBar.Width:Integer
 004FE99C    push        eax
 004FE99D    mov         eax,dword ptr [ebp-4]
 004FE9A0    mov         eax,dword ptr [eax+4C];TCustomActionToolBar.Height:Integer
 004FE9A3    push        eax
 004FE9A4    mov         eax,dword ptr [ebp-4]
 004FE9A7    mov         ecx,dword ptr [eax+44];TCustomActionToolBar.Top:Integer
 004FE9AA    mov         eax,dword ptr [ebp-4]
 004FE9AD    mov         edx,dword ptr [eax+40];TCustomActionToolBar.Left:Integer
 004FE9B0    mov         eax,dword ptr [ebp-4]
 004FE9B3    mov         ebx,dword ptr [eax]
 004FE9B5    call        dword ptr [ebx+84];TCustomActionToolBar.SetBounds
 004FE9BB    mov         eax,dword ptr [ebp-4]
 004FE9BE    call        00512624
 004FE9C3    test        al,al
>004FE9C5    jne         004FE9CF
 004FE9C7    mov         eax,dword ptr [ebp-4]
 004FE9CA    call        004FE114
 004FE9CF    pop         ebx
 004FE9D0    mov         esp,ebp
 004FE9D2    pop         ebp
 004FE9D3    ret         4
end;*}

//004FE9D8
{*function sub_004FE9D8:?;
begin
 004FE9D8    push        ebp
 004FE9D9    mov         ebp,esp
 004FE9DB    add         esp,0FFFFFFF4
 004FE9DE    mov         dword ptr [ebp-4],eax
 004FE9E1    mov         eax,dword ptr [ebp-4]
 004FE9E4    mov         edx,dword ptr [eax]
 004FE9E6    call        dword ptr [edx+148];TCustomActionToolBar.sub_0051331C
 004FE9EC    mov         edx,dword ptr ds:[4FEAE0];TActionBarStyleEx
 004FE9F2    call        @AsClass
 004FE9F7    mov         dword ptr [ebp-0C],eax
 004FE9FA    mov         edx,dword ptr [ebp-4]
 004FE9FD    mov         eax,dword ptr [ebp-0C]
 004FEA00    mov         ecx,dword ptr [eax]
 004FEA02    call        dword ptr [ecx+0C];@AbstractError
 004FEA05    mov         dword ptr [ebp-8],eax
 004FEA08    mov         eax,dword ptr [ebp-8]
 004FEA0B    mov         esp,ebp
 004FEA0D    pop         ebp
 004FEA0E    ret
end;*}

//004FEA10
{*function sub_004FEA10(?:TCustomActionToolBar):?;
begin
 004FEA10    push        ebp
 004FEA11    mov         ebp,esp
 004FEA13    add         esp,0FFFFFFF4
 004FEA16    mov         dword ptr [ebp-4],eax
 004FEA19    mov         eax,dword ptr [ebp-4]
 004FEA1C    mov         edx,dword ptr [eax]
 004FEA1E    call        dword ptr [edx+148];TCustomActionToolBar.sub_0051331C
 004FEA24    mov         edx,dword ptr ds:[4FEAE0];TActionBarStyleEx
 004FEA2A    call        @AsClass
 004FEA2F    mov         dword ptr [ebp-0C],eax
 004FEA32    mov         eax,dword ptr [ebp-0C]
 004FEA35    mov         edx,dword ptr [eax]
 004FEA37    call        dword ptr [edx+14];@AbstractError
 004FEA3A    mov         dword ptr [ebp-8],eax
 004FEA3D    mov         eax,dword ptr [ebp-8]
 004FEA40    mov         esp,ebp
 004FEA42    pop         ebp
 004FEA43    ret
end;*}

end.