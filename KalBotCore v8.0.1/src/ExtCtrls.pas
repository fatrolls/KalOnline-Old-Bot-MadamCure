//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit ExtCtrls;

interface

uses
  SysUtils, Classes, Graphics, Controls, Dialogs, ExtCtrls;

type
  TImage = class(TGraphicControl)
  public
    Picture:TPicture;//f168
    OnProgress:TProgressEvent;//f170
    f172:word;//f172
    f174:dword;//f174
    Stretch:Boolean;//f178
    Center:Boolean;//f179
    IncrementalDisplay:Boolean;//f17A
    Transparent:Boolean;//f17B
    FDrawing:Boolean;//f17C
    Proportional:Boolean;//f17D
    destructor Destroy; virtual;//004989A0
    constructor Create(AOwner:TComponent); virtual;//v2C//004988DC
    //function v34(?:?; ?:?):?; virtual;//v34//0049911C
    procedure v8C; virtual;//v8C//00498B84
    //procedure sub_00498D20(?:?; ?:?; ?:?; ?:?; ?:?; ?:?); dynamic;//00498D20
    procedure sub_004989E0; dynamic;//004989E0
    procedure SetCenter(Value:Boolean);//00498EA4
    procedure SetPicture(Value:TPicture);//00498EDC
    procedure SetStretch(Value:Boolean);//00498F00
    procedure SetTransparent(Value:Boolean);//00498F38
    procedure SetProportional(Value:Boolean);//00498F70
  end;
  TBevelStyle = (bsLowered, bsRaised);
  TBevelShape = (bsBox, bsFrame, bsTopLine, bsBottomLine, bsLeftLine, bsRightLine, bsSpacer);
  TBevel = class(TGraphicControl)
  public
    Style:TBevelStyle;//f168
    Shape:TBevelShape;//f169
    constructor Create(AOwner:TComponent); virtual;//v2C//004991A4
    procedure v8C; virtual;//v8C//00499404
    procedure SetStyle(Value:TBevelStyle);//00499230
    procedure SetShape(Value:TBevelShape);//00499264
  end;
  TTimer = class(TComponent)
  public
    Interval:Cardinal;//f30
    FWindowHandle:HWND;//f34
    OnTimer:TNotifyEvent;//f38
    f3A:word;//f3A
    f3C:dword;//f3C
    Enabled:Boolean;//f40
    destructor Destroy; virtual;//00499738
    constructor Create(AOwner:TComponent); virtual;//v2C//004996CC
    procedure sub_0049992C; dynamic;//0049992C
    procedure SetEnabled(Value:Boolean);//004998B0
    procedure SetInterval(Value:Cardinal);//004998DC
    procedure SetOnTimer(Value:TNotifyEvent);//00499908
  end;
  TCustomPanel = class(TCustomControl)
  public
    FAutoSizeDocking:Boolean;//f210
    FBevelInner:TBevelCut;//f211
    FBevelOuter:TBevelCut;//f212
    FBevelWidth:TBevelWidth;//f214
    FBorderWidth:TBorderWidth;//f218
    FBorderStyle:TBorderStyle;//f21C
    FFullRepaint:Boolean;//f21D
    FLocked:Boolean;//f21E
    FParentBackgroundSet:Boolean;//f21F
    FAlignment:TAlignment;//f220
    constructor Create(AOwner:TComponent); virtual;//v2C//00499950
    //function v34(?:?; ?:?):?; virtual;//v34//0049A190
    //procedure v8C(?:?); virtual;//v8C//00499FB4
    //procedure v98(?:?); virtual;//v98//00499A40
    procedure SetParentBackground(Value:Boolean); virtual;//vBC//0049A1D0
    procedure vC8; virtual;//vC8//00499CBC
    //procedure WMWindowPosChangedMsg(?:?); message WM_WINDOWPOSCHANGED;//00499B50
    //procedure CMCtl3DChanged(?:?); message CM_CTL3DCHANGED;//00499AEC
    //procedure CMTextChanged(?:?); message CM_TEXTCHANGED;//00499AD4
    //procedure CMIsToolControl(?:?); message CM_ISTOOLCONTROL;//00499B28
    //procedure CMDockClient(?:?); message CM_DOCKCLIENT;//0049A03C
    //procedure CMBorderChanged(?:?); message CM_BORDERCHANGED;//00499AB0
    procedure sub_00499F98; dynamic;//00499F98
  end;
  TPanel = class(TCustomPanel)
    procedure SetAlignment(Value:TAlignment);//00499E90
    procedure SetBevelInner(Value:TBevelCut);//00499EB4
    procedure SetBevelOuter(Value:TBevelCut);//00499EE0
    procedure SetBevelWidth(Value:TBevelWidth);//00499F0C
    procedure SetBorderWidth(Value:TBorderWidth);//00499F38
    procedure SetBorderStyle(Value:TBorderStyle);//00499F64
  end;
  TCustomRadioGroup = class(TCustomGroupBox)
  public
    FButtons:TList;//f210
    FItems:TStrings;//f214
    FItemIndex:Integer;//f218
    FColumns:Integer;//f21C
    FReading:Boolean;//f220
    FUpdating:Boolean;//f221
    destructor Destroy; virtual;//0049A654
    procedure Loaded; virtual;//vC//0049A954
    //procedure v14(?:?); virtual;//v14//0049A970
    constructor Create(AOwner:TComponent); virtual;//v2C//0049A5A0
    //function vCC:?; virtual;//vCC//0049ACEC
    procedure WMSize(Message:TWMSize); message WM_SIZE;//0049ACC8
    //procedure CMEnabledChanged(?:?); message CM_ENABLEDCHANGED;//0049AC44
    //procedure CMFontChanged(?:?); message CM_FONTCHANGED;//0049ACA4
    //procedure sub_0049A6BC(?:?); dynamic;//0049A6BC
    //procedure sub_004834DC(?:?; ?:?); dynamic;//0049AD00
  end;
  TRadioGroup = class(TCustomRadioGroup)
    procedure SetColumns(Value:Integer);//0049AA00
    procedure SetItemIndex(Value:Integer);//0049AA54
    procedure SetItems(Value:TStrings);//0049AB24
  end;
  TCanResizeEvent = procedure(Sender:TObject; var NewSize:Integer; var Accept:Boolean) of object;;
  TResizeStyle = (rsNone, rsLine, rsUpdate, rsPattern);
  TSplitter = class(TGraphicControl)
  public
    FActiveControl:TWinControl;//f168
    AutoSnap:Boolean;//f16C
    Beveled:Boolean;//f16D
    FBrush:TBrush;//f170
    FControl:TControl;//f174
    FDownPos:TPoint;//f178
    FLineDC:HDC;//f180
    FLineVisible:Boolean;//f184
    MinSize:NaturalNumber;//f188
    FMaxSize:Integer;//f18C
    FNewSize:Integer;//f190
    FOldKeyDown:TKeyEvent;//f198
    f19C:TMessageForm;//f19C
    FOldSize:Integer;//f1A0
    FPrevBrush:HBRUSH;//f1A4
    ResizeStyle:TResizeStyle;//f1A8
    FSplit:Integer;//f1AC
    OnCanResize:TCanResizeEvent;//f1B0
    f1B2:word;//f1B2
    f1B4:dword;//f1B4
    OnMoved:TNotifyEvent;//f1B8
    f1BA:word;//f1BA
    f1BC:dword;//f1BC
    OnPaint:TNotifyEvent;//f1C0
    f1C2:word;//f1C2
    f1C4:dword;//f1C4
    destructor Destroy; virtual;//0049ADAC
    constructor Create(AOwner:TComponent); virtual;//v2C//0049AD14
    procedure v8C; virtual;//v8C//0049B0EC
    //function v90(?:?):?; virtual;//v90//0049B2D4
    //function v94(?:?):?; virtual;//v94//0049B284
    procedure sub_0049BA10; dynamic;//0049BA10
    procedure sub_0049B0A0; dynamic;//0049B0A0
    //procedure sub_0049B928(?:?; ?:?; ?:?; ?:?); dynamic;//0049B928
    //procedure sub_0049B860(?:?; ?:?; ?:?); dynamic;//0049B860
    //procedure sub_0049B314(?:?; ?:?; ?:?; ?:?); dynamic;//0049B314
    procedure SetBeveled(Value:Boolean);//0049B9E8
  end;
  TBoundLabel = class(TCustomLabel)
  public
    constructor Create(AOwner:TComponent); virtual;//v2C//0049BAAC
    procedure sub_0049BB34; dynamic;//0049BB34
    //function GetHeight:?;//0049BB84
    //function GetLeft:?;//0049BBA0
    //function GetTop:?;//0049BBBC
    //function GetWidth:?;//0049BBD8
    procedure SetHeight(Value:Integer);//0049BBF4
    procedure SetWidth(Value:Integer);//0049BC34
  end;
  TLabelPosition = (lpAbove, lpBelow, lpLeft, lpRight);
  TCustomLabeledEdit = class(TCustomEdit)
  public
    FEditLabel:TBoundLabel;//f220
    FLabelPosition:TLabelPosition;//f224
    FLabelSpacing:Integer;//f228
    procedure Notification(AComponent:TComponent; Operation:TOperation); virtual;//v10//0049BD70
    //procedure v18(?:?); virtual;//v18//0049BF84
    constructor Create(AOwner:TComponent); virtual;//v2C//0049BC74
    //procedure v68(?:?); virtual;//v68//0049C034
    procedure SetBounds(ALeft:Integer; ATop:Integer; AWidth:Integer; AHeight:Integer); virtual;//v84//0049BDB0
    //procedure CMVisibleChanged(?:?); message CM_VISIBLECHANGED;//0049BD40
    //procedure CMEnabledChanged(?:?); message CM_ENABLEDCHANGED;//0049BD0C
    procedure CMBiDiModeChanged(Message:TMessage); message CM_BIDIMODECHANGED;//0049BCDC
  end;
  TLabeledEdit = class(TCustomLabeledEdit)
    procedure SetLabelPosition(Value:TLabelPosition);//0049BDEC
    procedure SetLabelSpacing(Value:Integer);//0049BF54
  end;
  TGroupButton = class(TRadioButton)
  public
    ...FInClick:Boolean;//f218
    destructor Destroy; virtual;//0049A430
    //procedure sub_0049A478(?:?); dynamic;//0049A478
    procedure KeyPress(Key:Char); dynamic;//0049A510
    procedure KeyDown(Key:Word; Shift:TShiftState); dynamic;//0049A568
    constructor Create;//0049A390
  end;
    //procedure sub_0049879C(?:?);//0049879C
    //procedure sub_0049887C(?:TCanvas; ?:?; ?:TColor; ?:?);//0049887C
    constructor Create(AOwner:TComponent);//004988DC
    destructor Destroy;//004989A0
    procedure sub_004989E0;//004989E0
    //procedure sub_00498A18(?:TImage; ?:?);//00498A18
    procedure sub_00498B84;//00498B84
    //function sub_00498C50(?:TImage):?;//00498C50
    //procedure sub_00498D20(?:?; ?:?; ?:?; ?:?; ?:?; ?:?);//00498D20
    //function sub_00498D9C(?:TImage):?;//00498D9C
    procedure sub_00498FA8(?:TImage; ?:TImage);//00498FA8
    //function sub_0049911C(?:?; ?:?):?;//0049911C
    constructor Create(AOwner:TComponent);//004991A4
    //procedure sub_00499298(?:?; ?:?);//00499298
    //procedure sub_004993B4(?:?; ?:?; ?:?; ?:?; ?:?; ?:?);//004993B4
    procedure sub_00499404;//00499404
    constructor Create(AOwner:TComponent);//004996CC
    destructor Destroy;//00499738
    //procedure sub_0049980C(?:?);//0049980C
    procedure sub_0049992C;//0049992C
    constructor Create(AOwner:TComponent);//00499950
    //procedure sub_00499A40(?:?);//00499A40
    //procedure CMBorderChanged(?:?);//00499AB0
    //procedure CMTextChanged(?:?);//00499AD4
    //procedure CMCtl3DChanged(?:?);//00499AEC
    //procedure CMIsToolControl(?:?);//00499B28
    //procedure WMWindowPosChangedMsg(?:?);//00499B50
    //procedure sub_00499C7C(?:?; ?:?);//00499C7C
    procedure sub_00499CBC;//00499CBC
    procedure sub_00499F98;//00499F98
    //procedure sub_00499FB4(?:?);//00499FB4
    //procedure CMDockClient(?:?);//0049A03C
    //function sub_0049A190(?:?; ?:?):?;//0049A190
    procedure SetParentBackground(Value:Boolean);//0049A1D0
    destructor Destroy;//0049A430
    //procedure sub_0049A478(?:?);//0049A478
    procedure KeyPress(Key:Char);//0049A510
    procedure KeyDown(Key:Word; Shift:TShiftState);//0049A568
    constructor Create(AOwner:TComponent);//0049A5A0
    destructor Destroy;//0049A654
    //procedure sub_0049A6BC(?:?);//0049A6BC
    procedure sub_0049A6CC(?:TCustomRadioGroup);//0049A6CC
    //procedure sub_0049A8B0(?:?; ?:?);//0049A8B0
    //procedure sub_0049A8FC(?:?; ?:?);//0049A8FC
    procedure Loaded;//0049A954
    //procedure sub_0049A970(?:?);//0049A970
    //procedure sub_0049A9A8(?:TCustomRadioGroup; ?:?);//0049A9A8
    procedure sub_0049AB48(?:TCustomRadioGroup);//0049AB48
    //procedure CMEnabledChanged(?:?);//0049AC44
    //procedure CMFontChanged(?:?);//0049ACA4
    procedure WMSize(Message:TWMSize);//0049ACC8
    //function sub_0049ACEC:?;//0049ACEC
    //procedure sub_004834DC(?:?; ?:?);//0049AD00
    constructor Create(AOwner:TComponent);//0049AD14
    destructor Destroy;//0049ADAC
    procedure sub_0049ADEC(?:TSplitter);//0049ADEC
    procedure sub_0049AE88(?:TSplitter);//0049AE88
    procedure sub_0049AF1C(?:TSplitter);//0049AF1C
    //function sub_0049AF8C(?:TSplitter):?;//0049AF8C
    procedure sub_0049B0A0;//0049B0A0
    procedure sub_0049B0EC;//0049B0EC
    //function sub_0049B284(?:?):?;//0049B284
    //function sub_0049B2D4(?:?):?;//0049B2D4
    //procedure sub_0049B314(?:?; ?:?; ?:?; ?:?);//0049B314
    procedure sub_0049B544(?:TSplitter);//0049B544
    //procedure sub_0049B6FC(?:TSplitter; ?:?; ?:?; ?:?; ?:?);//0049B6FC
    //procedure sub_0049B82C(?:TSplitter; ?:?; ?:?);//0049B82C
    //procedure sub_0049B860(?:?; ?:?; ?:?);//0049B860
    //procedure sub_0049B928(?:?; ?:?; ?:?; ?:?);//0049B928
    //procedure sub_0049B990(?:?; ?:?; ?:?; ?:?);//0049B990
    procedure sub_0049BA10;//0049BA10
    constructor Create(AOwner:TComponent);//0049BAAC
    procedure sub_0049BB34;//0049BB34
    constructor Create(AOwner:TComponent);//0049BC74
    procedure CMBiDiModeChanged(Message:TMessage);//0049BCDC
    //procedure CMEnabledChanged(?:?);//0049BD0C
    //procedure CMVisibleChanged(?:?);//0049BD40
    procedure Notification(AComponent:TComponent; Operation:TOperation);//0049BD70
    procedure SetBounds(ALeft:Integer; ATop:Integer; AWidth:Integer; AHeight:Integer);//0049BDB0
    //procedure sub_0049BF84(?:?);//0049BF84
    //procedure sub_0049C034(?:?);//0049C034
    procedure sub_0049C07C(?:TCustomLabeledEdit);//0049C07C
    procedure _NF__82C;//0049C244

implementation

//0049879C
{*procedure sub_0049879C(?:?);
begin
 0049879C    push        ebp
 0049879D    mov         ebp,esp
 0049879F    add         esp,0FFFFFFD8
 004987A2    mov         eax,dword ptr [ebp+8]
 004987A5    mov         eax,dword ptr [eax-4]
 004987A8    mov         eax,dword ptr [eax+8]
 004987AB    mov         dword ptr [ebp-8],eax
 004987AE    mov         eax,dword ptr [ebp+8]
 004987B1    mov         eax,dword ptr [eax-4]
 004987B4    mov         eax,dword ptr [eax+4]
 004987B7    mov         dword ptr [ebp-4],eax
 004987BA    mov         eax,dword ptr [ebp+8]
 004987BD    mov         eax,dword ptr [eax-4]
 004987C0    mov         eax,dword ptr [eax]
 004987C2    mov         dword ptr [ebp-10],eax
 004987C5    mov         eax,dword ptr [ebp+8]
 004987C8    mov         eax,dword ptr [eax-4]
 004987CB    mov         eax,dword ptr [eax+0C]
 004987CE    mov         dword ptr [ebp-0C],eax
 004987D1    mov         eax,dword ptr [ebp+8]
 004987D4    mov         edx,dword ptr [eax-0C]
 004987D7    mov         eax,dword ptr [ebp+8]
 004987DA    mov         eax,dword ptr [eax-8]
 004987DD    mov         eax,dword ptr [eax+10]
 004987E0    call        TPen.SetColor
 004987E5    mov         eax,dword ptr [ebp-10]
 004987E8    mov         dword ptr [ebp-28],eax
 004987EB    mov         eax,dword ptr [ebp-0C]
 004987EE    mov         dword ptr [ebp-24],eax
 004987F1    mov         eax,dword ptr [ebp+8]
 004987F4    mov         eax,dword ptr [eax-4]
 004987F7    mov         edx,dword ptr [eax]
 004987F9    mov         dword ptr [ebp-20],edx
 004987FC    mov         edx,dword ptr [eax+4]
 004987FF    mov         dword ptr [ebp-1C],edx
 00498802    mov         eax,dword ptr [ebp-8]
 00498805    mov         dword ptr [ebp-18],eax
 00498808    mov         eax,dword ptr [ebp-4]
 0049880B    mov         dword ptr [ebp-14],eax
 0049880E    lea         edx,[ebp-28]
 00498811    mov         eax,dword ptr [ebp+8]
 00498814    mov         eax,dword ptr [eax-8]
 00498817    mov         ecx,2
 0049881C    call        00487F38
 00498821    mov         eax,dword ptr [ebp+8]
 00498824    mov         edx,dword ptr [eax+0C]
 00498827    mov         eax,dword ptr [ebp+8]
 0049882A    mov         eax,dword ptr [eax-8]
 0049882D    mov         eax,dword ptr [eax+10]
 00498830    call        TPen.SetColor
 00498835    dec         dword ptr [ebp-10]
 00498838    mov         eax,dword ptr [ebp-8]
 0049883B    mov         dword ptr [ebp-28],eax
 0049883E    mov         eax,dword ptr [ebp-4]
 00498841    mov         dword ptr [ebp-24],eax
 00498844    mov         eax,dword ptr [ebp+8]
 00498847    mov         eax,dword ptr [eax-4]
 0049884A    mov         edx,dword ptr [eax+8]
 0049884D    mov         dword ptr [ebp-20],edx
 00498850    mov         edx,dword ptr [eax+0C]
 00498853    mov         dword ptr [ebp-1C],edx
 00498856    mov         eax,dword ptr [ebp-10]
 00498859    mov         dword ptr [ebp-18],eax
 0049885C    mov         eax,dword ptr [ebp-0C]
 0049885F    mov         dword ptr [ebp-14],eax
 00498862    lea         edx,[ebp-28]
 00498865    mov         eax,dword ptr [ebp+8]
 00498868    mov         eax,dword ptr [eax-8]
 0049886B    mov         ecx,2
 00498870    call        00487F38
 00498875    mov         esp,ebp
 00498877    pop         ebp
 00498878    ret
end;*}

//0049887C
{*procedure sub_0049887C(?:TCanvas; ?:?; ?:TColor; ?:?);
begin
 0049887C    push        ebp
 0049887D    mov         ebp,esp
 0049887F    add         esp,0FFFFFFF4
 00498882    mov         dword ptr [ebp-0C],ecx
 00498885    mov         dword ptr [ebp-4],edx
 00498888    mov         dword ptr [ebp-8],eax
 0049888B    mov         eax,dword ptr [ebp-8]
 0049888E    mov         eax,dword ptr [eax+10]
 00498891    mov         edx,1
 00498896    call        TPen.SetWidth
 0049889B    mov         eax,dword ptr [ebp-4]
 0049889E    dec         dword ptr [eax+0C]
 004988A1    mov         eax,dword ptr [ebp-4]
 004988A4    dec         dword ptr [eax+8]
 004988A7    cmp         dword ptr [ebp+8],0
>004988AB    jle         004988CA
 004988AD    dec         dword ptr [ebp+8]
 004988B0    push        ebp
 004988B1    call        0049879C
 004988B6    pop         ecx
 004988B7    push        0FF
 004988B9    push        0FF
 004988BB    mov         eax,dword ptr [ebp-4]
 004988BE    push        eax
 004988BF    call        user32.InflateRect
 004988C4    cmp         dword ptr [ebp+8],0
>004988C8    jg          004988AD
 004988CA    mov         eax,dword ptr [ebp-4]
 004988CD    inc         dword ptr [eax+0C]
 004988D0    mov         eax,dword ptr [ebp-4]
 004988D3    inc         dword ptr [eax+8]
 004988D6    mov         esp,ebp
 004988D8    pop         ebp
 004988D9    ret         8
end;*}

//004988DC
constructor TImage.Create(AOwner:TComponent);
begin
{*
 004988DC    push        ebp
 004988DD    mov         ebp,esp
 004988DF    add         esp,0FFFFFFF4
 004988E2    test        dl,dl
>004988E4    je          004988EE
 004988E6    add         esp,0FFFFFFF0
 004988E9    call        @ClassCreate
 004988EE    mov         dword ptr [ebp-0C],ecx
 004988F1    mov         byte ptr [ebp-5],dl
 004988F4    mov         dword ptr [ebp-4],eax
 004988F7    mov         ecx,dword ptr [ebp-0C]
 004988FA    xor         edx,edx
 004988FC    mov         eax,dword ptr [ebp-4]
 004988FF    call        TGraphicControl.Create
 00498904    mov         eax,dword ptr [ebp-4]
 00498907    mov         eax,dword ptr [eax+50];TImage.FControlStyle:TControlStyle
 0049890A    or          eax,dword ptr ds:[49899C];0x800 gvar_0049899C
 00498910    mov         edx,dword ptr [ebp-4]
 00498913    mov         dword ptr [edx+50],eax;TImage.FControlStyle:TControlStyle
 00498916    mov         dl,1
 00498918    mov         eax,[004859C0];TPicture
 0049891D    call        TPicture.Create;TPicture.Create
 00498922    mov         edx,dword ptr [ebp-4]
 00498925    mov         dword ptr [edx+168],eax;TImage.Picture:TPicture
 0049892B    mov         eax,dword ptr [ebp-4]
 0049892E    mov         eax,dword ptr [eax+168];TImage.Picture:TPicture
 00498934    mov         edx,dword ptr [ebp-4]
 00498937    mov         dword ptr [eax+14],edx;TPicture.?f14:TImage
 0049893A    mov         dword ptr [eax+10],498FA8;TPicture.FOnChange:TNotifyEvent sub_00498FA8
 00498941    mov         eax,dword ptr [ebp-4]
 00498944    mov         eax,dword ptr [eax+168];TImage.Picture:TPicture
 0049894A    mov         edx,dword ptr [ebp-4]
 0049894D    mov         dword ptr [eax+24],edx;TPicture.?f24:TImage
 00498950    push        eax
 00498951    mov         eax,edx
 00498953    mov         dx,0FFC7
 00498957    call        @FindDynaInst;TImage.sub_00498D20
 0049895C    mov         edx,eax
 0049895E    pop         eax
 0049895F    mov         dword ptr [eax+20],edx
 00498962    mov         edx,69
 00498967    mov         eax,dword ptr [ebp-4]
 0049896A    call        TControl.SetHeight
 0049896F    mov         edx,69
 00498974    mov         eax,dword ptr [ebp-4]
 00498977    call        TControl.SetWidth
 0049897C    mov         eax,dword ptr [ebp-4]
 0049897F    cmp         byte ptr [ebp-5],0
>00498983    je          00498994
 00498985    call        @AfterConstruction
 0049898A    pop         dword ptr fs:[0]
 00498991    add         esp,0C
 00498994    mov         eax,dword ptr [ebp-4]
 00498997    mov         esp,ebp
 00498999    pop         ebp
 0049899A    ret
*}
end;

//004989A0
destructor TImage.Destroy;
begin
{*
 004989A0    push        ebp
 004989A1    mov         ebp,esp
 004989A3    add         esp,0FFFFFFF8
 004989A6    call        @BeforeDestruction
 004989AB    mov         byte ptr [ebp-5],dl
 004989AE    mov         dword ptr [ebp-4],eax
 004989B1    mov         eax,dword ptr [ebp-4]
 004989B4    mov         eax,dword ptr [eax+168]
 004989BA    call        TObject.Free
 004989BF    mov         dl,byte ptr [ebp-5]
 004989C2    and         dl,0FC
 004989C5    mov         eax,dword ptr [ebp-4]
 004989C8    call        TGraphicControl.Destroy
 004989CD    cmp         byte ptr [ebp-5],0
>004989D1    jle         004989DB
 004989D3    mov         eax,dword ptr [ebp-4]
 004989D6    call        @ClassDestroy
 004989DB    pop         ecx
 004989DC    pop         ecx
 004989DD    pop         ebp
 004989DE    ret
*}
end;

//004989E0
procedure TImage.sub_004989E0;
begin
{*
 004989E0    push        ebp
 004989E1    mov         ebp,esp
 004989E3    add         esp,0FFFFFFF8
 004989E6    mov         dword ptr [ebp-4],eax
 004989E9    xor         eax,eax
 004989EB    mov         dword ptr [ebp-8],eax
 004989EE    mov         eax,dword ptr [ebp-4]
 004989F1    mov         eax,dword ptr [eax+168];TImage.Picture:TPicture
 004989F7    cmp         dword ptr [eax+0C],0;TPicture.FGraphic:TGraphic
>004989FB    je          00498A11
 004989FD    mov         eax,dword ptr [ebp-4]
 00498A00    mov         eax,dword ptr [eax+168];TImage.Picture:TPicture
 00498A06    mov         eax,dword ptr [eax+0C];TPicture.FGraphic:TGraphic
 00498A09    mov         edx,dword ptr [eax]
 00498A0B    call        dword ptr [edx+24];TGraphic.sub_0048A0D4
 00498A0E    mov         dword ptr [ebp-8],eax
 00498A11    mov         eax,dword ptr [ebp-8]
 00498A14    pop         ecx
 00498A15    pop         ecx
 00498A16    pop         ebp
 00498A17    ret
*}
end;

//00498A18
{*procedure sub_00498A18(?:TImage; ?:?);
begin
 00498A18    push        ebp
 00498A19    mov         ebp,esp
 00498A1B    add         esp,0FFFFFFE0
 00498A1E    mov         dword ptr [ebp-8],edx
 00498A21    mov         dword ptr [ebp-4],eax
 00498A24    mov         eax,dword ptr [ebp-4]
 00498A27    mov         eax,dword ptr [eax+168]
 00498A2D    call        0048AE14
 00498A32    mov         dword ptr [ebp-0C],eax
 00498A35    mov         eax,dword ptr [ebp-4]
 00498A38    mov         eax,dword ptr [eax+168]
 00498A3E    call        0048AE40
 00498A43    mov         dword ptr [ebp-10],eax
 00498A46    mov         eax,dword ptr [ebp-4]
 00498A49    call        TControl.GetClientWidth
 00498A4E    mov         dword ptr [ebp-14],eax
 00498A51    mov         eax,dword ptr [ebp-4]
 00498A54    call        TControl.GetClientHeight
 00498A59    mov         dword ptr [ebp-18],eax
 00498A5C    mov         eax,dword ptr [ebp-4]
 00498A5F    cmp         byte ptr [eax+178],0
>00498A66    jne         00498A8C
 00498A68    mov         eax,dword ptr [ebp-4]
 00498A6B    cmp         byte ptr [eax+17D],0
>00498A72    je          00498B2C
 00498A78    mov         eax,dword ptr [ebp-0C]
 00498A7B    cmp         eax,dword ptr [ebp-14]
>00498A7E    jg          00498A8C
 00498A80    mov         eax,dword ptr [ebp-10]
 00498A83    cmp         eax,dword ptr [ebp-18]
>00498A86    jle         00498B2C
 00498A8C    mov         eax,dword ptr [ebp-4]
 00498A8F    cmp         byte ptr [eax+17D],0
>00498A96    je          00498B20
 00498A9C    cmp         dword ptr [ebp-0C],0
>00498AA0    jle         00498B20
 00498AA2    cmp         dword ptr [ebp-10],0
>00498AA6    jle         00498B20
 00498AA8    fild        dword ptr [ebp-0C]
 00498AAB    fild        dword ptr [ebp-10]
 00498AAE    fdivp       st(1),st
 00498AB0    fstp        qword ptr [ebp-20]
 00498AB3    wait
 00498AB4    mov         eax,dword ptr [ebp-0C]
 00498AB7    cmp         eax,dword ptr [ebp-10]
>00498ABA    jle         00498AEE
 00498ABC    mov         eax,dword ptr [ebp-14]
 00498ABF    mov         dword ptr [ebp-0C],eax
 00498AC2    fild        dword ptr [ebp-14]
 00498AC5    fdiv        qword ptr [ebp-20]
 00498AC8    call        @TRUNC
 00498ACD    mov         dword ptr [ebp-10],eax
 00498AD0    mov         eax,dword ptr [ebp-10]
 00498AD3    cmp         eax,dword ptr [ebp-18]
>00498AD6    jle         00498B2C
 00498AD8    mov         eax,dword ptr [ebp-18]
 00498ADB    mov         dword ptr [ebp-10],eax
 00498ADE    fild        dword ptr [ebp-18]
 00498AE1    fmul        qword ptr [ebp-20]
 00498AE4    call        @TRUNC
 00498AE9    mov         dword ptr [ebp-0C],eax
>00498AEC    jmp         00498B2C
 00498AEE    mov         eax,dword ptr [ebp-18]
 00498AF1    mov         dword ptr [ebp-10],eax
 00498AF4    fild        dword ptr [ebp-18]
 00498AF7    fmul        qword ptr [ebp-20]
 00498AFA    call        @TRUNC
 00498AFF    mov         dword ptr [ebp-0C],eax
 00498B02    mov         eax,dword ptr [ebp-0C]
 00498B05    cmp         eax,dword ptr [ebp-14]
>00498B08    jle         00498B2C
 00498B0A    mov         eax,dword ptr [ebp-14]
 00498B0D    mov         dword ptr [ebp-0C],eax
 00498B10    fild        dword ptr [ebp-14]
 00498B13    fdiv        qword ptr [ebp-20]
 00498B16    call        @TRUNC
 00498B1B    mov         dword ptr [ebp-10],eax
>00498B1E    jmp         00498B2C
 00498B20    mov         eax,dword ptr [ebp-14]
 00498B23    mov         dword ptr [ebp-0C],eax
 00498B26    mov         eax,dword ptr [ebp-18]
 00498B29    mov         dword ptr [ebp-10],eax
 00498B2C    mov         eax,dword ptr [ebp-8]
 00498B2F    xor         edx,edx
 00498B31    mov         dword ptr [eax],edx
 00498B33    mov         eax,dword ptr [ebp-8]
 00498B36    xor         edx,edx
 00498B38    mov         dword ptr [eax+4],edx
 00498B3B    mov         eax,dword ptr [ebp-8]
 00498B3E    mov         edx,dword ptr [ebp-0C]
 00498B41    mov         dword ptr [eax+8],edx
 00498B44    mov         eax,dword ptr [ebp-8]
 00498B47    mov         edx,dword ptr [ebp-10]
 00498B4A    mov         dword ptr [eax+0C],edx
 00498B4D    mov         eax,dword ptr [ebp-4]
 00498B50    cmp         byte ptr [eax+179],0
>00498B57    je          00498B7E
 00498B59    mov         eax,dword ptr [ebp-18]
 00498B5C    sub         eax,dword ptr [ebp-10]
 00498B5F    sar         eax,1
>00498B61    jns         00498B66
 00498B63    adc         eax,0
 00498B66    push        eax
 00498B67    mov         eax,dword ptr [ebp-14]
 00498B6A    sub         eax,dword ptr [ebp-0C]
 00498B6D    sar         eax,1
>00498B6F    jns         00498B74
 00498B71    adc         eax,0
 00498B74    push        eax
 00498B75    mov         eax,dword ptr [ebp-8]
 00498B78    push        eax
 00498B79    call        user32.OffsetRect
 00498B7E    mov         esp,ebp
 00498B80    pop         ebp
 00498B81    ret
end;*}

//00498B84
procedure sub_00498B84;
begin
{*
 00498B84    push        ebp
 00498B85    mov         ebp,esp
 00498B87    add         esp,0FFFFFFE0
 00498B8A    mov         dword ptr [ebp-4],eax
 00498B8D    mov         eax,dword ptr [ebp-4]
 00498B90    test        byte ptr [eax+1C],10;TImage.FComponentState:TComponentState
>00498B94    je          00498BD6
 00498B96    mov         eax,dword ptr [ebp-4]
 00498B99    mov         eax,dword ptr [eax+160];TImage.............................................................
 00498B9F    mov         dword ptr [ebp-0C],eax
 00498BA2    mov         eax,dword ptr [ebp-0C]
 00498BA5    mov         eax,dword ptr [eax+10];TCanvas.Pen:TPen
 00498BA8    mov         dl,1
 00498BAA    call        TPen.SetStyle
 00498BAF    mov         eax,dword ptr [ebp-0C]
 00498BB2    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 00498BB5    mov         dl,1
 00498BB7    call        TBrush.SetStyle
 00498BBC    mov         eax,dword ptr [ebp-4]
 00498BBF    mov         eax,dword ptr [eax+48];TImage.Width:Integer
 00498BC2    push        eax
 00498BC3    mov         eax,dword ptr [ebp-4]
 00498BC6    mov         eax,dword ptr [eax+4C];TImage.Height:Integer
 00498BC9    push        eax
 00498BCA    xor         ecx,ecx
 00498BCC    xor         edx,edx
 00498BCE    mov         eax,dword ptr [ebp-0C]
 00498BD1    call        00487F84
 00498BD6    mov         eax,dword ptr [ebp-4]
 00498BD9    mov         al,byte ptr [eax+17C];TImage.FDrawing:Boolean
 00498BDF    mov         byte ptr [ebp-5],al
 00498BE2    mov         eax,dword ptr [ebp-4]
 00498BE5    mov         byte ptr [eax+17C],1;TImage.FDrawing:Boolean
 00498BEC    xor         eax,eax
 00498BEE    push        ebp
 00498BEF    push        498C42
 00498BF4    push        dword ptr fs:[eax]
 00498BF7    mov         dword ptr fs:[eax],esp
 00498BFA    mov         eax,dword ptr [ebp-4]
 00498BFD    mov         eax,dword ptr [eax+160];TImage.............................................................
 00498C03    mov         dword ptr [ebp-10],eax
 00498C06    lea         edx,[ebp-20]
 00498C09    mov         eax,dword ptr [ebp-4]
 00498C0C    call        00498A18
 00498C11    lea         edx,[ebp-20]
 00498C14    mov         eax,dword ptr [ebp-4]
 00498C17    mov         eax,dword ptr [eax+168];TImage.Picture:TPicture
 00498C1D    mov         ecx,dword ptr [eax+0C];TPicture.FGraphic:TGraphic
 00498C20    mov         eax,dword ptr [ebp-10]
 00498C23    call        0048800C
 00498C28    xor         eax,eax
 00498C2A    pop         edx
 00498C2B    pop         ecx
 00498C2C    pop         ecx
 00498C2D    mov         dword ptr fs:[eax],edx
 00498C30    push        498C49
 00498C35    mov         eax,dword ptr [ebp-4]
 00498C38    mov         dl,byte ptr [ebp-5]
 00498C3B    mov         byte ptr [eax+17C],dl;TImage.FDrawing:Boolean
 00498C41    ret
>00498C42    jmp         @HandleFinally
>00498C47    jmp         00498C35
 00498C49    mov         esp,ebp
 00498C4B    pop         ebp
 00498C4C    ret
*}
end;

//00498C50
{*function sub_00498C50(?:TImage):?;
begin
 00498C50    push        ebp
 00498C51    mov         ebp,esp
 00498C53    add         esp,0FFFFFFF0
 00498C56    mov         dword ptr [ebp-4],eax
 00498C59    mov         byte ptr [ebp-5],0
 00498C5D    mov         eax,dword ptr [ebp-4]
 00498C60    mov         eax,dword ptr [eax+168]
 00498C66    mov         eax,dword ptr [eax+0C]
 00498C69    mov         dword ptr [ebp-10],eax
 00498C6C    mov         eax,dword ptr [ebp-4]
 00498C6F    cmp         byte ptr [eax+57],0
>00498C73    je          00498D18
 00498C79    mov         eax,dword ptr [ebp-4]
 00498C7C    test        byte ptr [eax+1C],1
>00498C80    jne         00498D18
 00498C86    cmp         dword ptr [ebp-10],0
>00498C8A    je          00498D18
 00498C90    mov         eax,dword ptr [ebp-10]
 00498C93    cmp         byte ptr [eax+22],0
>00498C97    je          00498D18
 00498C99    mov         eax,dword ptr [ebp-10]
 00498C9C    mov         edx,dword ptr [eax]
 00498C9E    call        dword ptr [edx+24]
 00498CA1    test        eax,eax
>00498CA3    jne         00498CAE
 00498CA5    mov         eax,dword ptr [ebp-10]
 00498CA8    mov         byte ptr [eax+22],0
>00498CAC    jmp         00498D18
 00498CAE    mov         eax,dword ptr [ebp-4]
 00498CB1    call        004E7ED8
 00498CB6    mov         dword ptr [ebp-0C],eax
 00498CB9    cmp         dword ptr [ebp-0C],0
>00498CBD    je          00498D18
 00498CBF    mov         eax,dword ptr [ebp-0C]
 00498CC2    cmp         byte ptr [eax+22E],0
>00498CC9    je          00498D18
 00498CCB    mov         eax,dword ptr [ebp-0C]
 00498CCE    call        TWinControl.HandleAllocated
 00498CD3    test        al,al
>00498CD5    je          00498D18
 00498CD7    mov         eax,dword ptr [ebp-4]
 00498CDA    cmp         byte ptr [eax+17C],0
>00498CE1    je          00498CF6
 00498CE3    push        0
 00498CE5    xor         ecx,ecx
 00498CE7    mov         edx,30F
 00498CEC    mov         eax,dword ptr [ebp-0C]
 00498CEF    call        004CC7DC
>00498CF4    jmp         00498D0D
 00498CF6    push        0
 00498CF8    push        0
 00498CFA    push        30F
 00498CFF    mov         eax,dword ptr [ebp-0C]
 00498D02    call        TWinControl.GetHandle
 00498D07    push        eax
 00498D08    call        user32.PostMessageA
 00498D0D    mov         byte ptr [ebp-5],1
 00498D11    mov         eax,dword ptr [ebp-10]
 00498D14    mov         byte ptr [eax+22],0
 00498D18    mov         al,byte ptr [ebp-5]
 00498D1B    mov         esp,ebp
 00498D1D    pop         ebp
 00498D1E    ret
end;*}

//00498D20
{*procedure TImage.sub_00498D20(?:?; ?:?; ?:?; ?:?; ?:?; ?:?);
begin
 00498D20    push        ebp
 00498D21    mov         ebp,esp
 00498D23    add         esp,0FFFFFFF4
 00498D26    push        ebx
 00498D27    mov         byte ptr [ebp-9],cl
 00498D2A    mov         dword ptr [ebp-8],edx
 00498D2D    mov         dword ptr [ebp-4],eax
 00498D30    mov         eax,dword ptr [ebp-4]
 00498D33    mov         al,byte ptr [eax+17A];TImage.IncrementalDisplay:Boolean
 00498D39    and         al,byte ptr [ebp+10]
>00498D3C    je          00498D62
 00498D3E    mov         eax,dword ptr [ebp-4]
 00498D41    call        00498C50
 00498D46    test        al,al
>00498D48    je          00498D57
 00498D4A    mov         eax,dword ptr [ebp-4]
 00498D4D    mov         edx,dword ptr [eax]
 00498D4F    call        dword ptr [edx+88];TImage.sub_004CB7BC
>00498D55    jmp         00498D62
 00498D57    mov         eax,dword ptr [ebp-4]
 00498D5A    mov         edx,dword ptr [eax]
 00498D5C    call        dword ptr [edx+8C];TImage.sub_00498B84
 00498D62    mov         eax,dword ptr [ebp-4]
 00498D65    cmp         word ptr [eax+172],0;TImage.?f172:word
>00498D6D    je          00498D94
 00498D6F    mov         al,byte ptr [ebp+14]
 00498D72    push        eax
 00498D73    mov         al,byte ptr [ebp+10]
 00498D76    push        eax
 00498D77    mov         eax,dword ptr [ebp+0C]
 00498D7A    push        eax
 00498D7B    mov         eax,dword ptr [ebp+8]
 00498D7E    push        eax
 00498D7F    mov         ebx,dword ptr [ebp-4]
 00498D82    mov         cl,byte ptr [ebp-9]
 00498D85    mov         edx,dword ptr [ebp-8]
 00498D88    mov         eax,dword ptr [ebx+174];TImage.?f174:dword
 00498D8E    call        dword ptr [ebx+170];TImage.OnProgress
 00498D94    pop         ebx
 00498D95    mov         esp,ebp
 00498D97    pop         ebp
 00498D98    ret         10
end;*}

//00498D9C
{*function sub_00498D9C(?:TImage):?;
begin
 00498D9C    push        ebp
 00498D9D    mov         ebp,esp
 00498D9F    add         esp,0FFFFFFF0
 00498DA2    xor         edx,edx
 00498DA4    mov         dword ptr [ebp-10],edx
 00498DA7    mov         dword ptr [ebp-4],eax
 00498DAA    xor         eax,eax
 00498DAC    push        ebp
 00498DAD    push        498E96
 00498DB2    push        dword ptr fs:[eax]
 00498DB5    mov         dword ptr fs:[eax],esp
 00498DB8    mov         eax,dword ptr [ebp-4]
 00498DBB    mov         eax,dword ptr [eax+168]
 00498DC1    cmp         dword ptr [eax+0C],0
>00498DC5    jne         00498E2E
 00498DC7    mov         dl,1
 00498DC9    mov         eax,[00485C6C];TBitmap
 00498DCE    call        TBitmap.Create;TBitmap.Create
 00498DD3    mov         dword ptr [ebp-0C],eax
 00498DD6    xor         eax,eax
 00498DD8    push        ebp
 00498DD9    push        498E27
 00498DDE    push        dword ptr fs:[eax]
 00498DE1    mov         dword ptr fs:[eax],esp
 00498DE4    mov         eax,dword ptr [ebp-4]
 00498DE7    mov         edx,dword ptr [eax+48]
 00498DEA    mov         eax,dword ptr [ebp-0C]
 00498DED    mov         ecx,dword ptr [eax]
 00498DEF    call        dword ptr [ecx+40];TBitmap.sub_0048EB14
 00498DF2    mov         eax,dword ptr [ebp-4]
 00498DF5    mov         edx,dword ptr [eax+4C]
 00498DF8    mov         eax,dword ptr [ebp-0C]
 00498DFB    mov         ecx,dword ptr [eax]
 00498DFD    call        dword ptr [ecx+34];TBitmap.sub_0048E6F4
 00498E00    mov         eax,dword ptr [ebp-4]
 00498E03    mov         eax,dword ptr [eax+168]
 00498E09    mov         edx,dword ptr [ebp-0C]
 00498E0C    call        0048A9A0
 00498E11    xor         eax,eax
 00498E13    pop         edx
 00498E14    pop         ecx
 00498E15    pop         ecx
 00498E16    mov         dword ptr fs:[eax],edx
 00498E19    push        498E2E
 00498E1E    mov         eax,dword ptr [ebp-0C]
 00498E21    call        TObject.Free
 00498E26    ret
>00498E27    jmp         @HandleFinally
>00498E2C    jmp         00498E1E
 00498E2E    mov         eax,dword ptr [ebp-4]
 00498E31    mov         eax,dword ptr [eax+168]
 00498E37    mov         eax,dword ptr [eax+0C]
 00498E3A    mov         edx,dword ptr ds:[485C6C];TBitmap
 00498E40    call        @IsClass
 00498E45    test        al,al
>00498E47    je          00498E5F
 00498E49    mov         eax,dword ptr [ebp-4]
 00498E4C    mov         eax,dword ptr [eax+168]
 00498E52    mov         eax,dword ptr [eax+0C]
 00498E55    call        TBitmap.GetCanvas
 00498E5A    mov         dword ptr [ebp-8],eax
>00498E5D    jmp         00498E80
 00498E5F    lea         edx,[ebp-10]
 00498E62    mov         eax,[0055B1E8];^SImageCanvasNeedsBitmap:TResStringRec
 00498E67    call        LoadResString
 00498E6C    mov         ecx,dword ptr [ebp-10]
 00498E6F    mov         dl,1
 00498E71    mov         eax,[00475960];EInvalidOperation
 00498E76    call        Exception.Create;EInvalidOperation.Create
 00498E7B    call        @RaiseExcept
 00498E80    xor         eax,eax
 00498E82    pop         edx
 00498E83    pop         ecx
 00498E84    pop         ecx
 00498E85    mov         dword ptr fs:[eax],edx
 00498E88    push        498E9D
 00498E8D    lea         eax,[ebp-10]
 00498E90    call        @LStrClr
 00498E95    ret
>00498E96    jmp         @HandleFinally
>00498E9B    jmp         00498E8D
 00498E9D    mov         eax,dword ptr [ebp-8]
 00498EA0    mov         esp,ebp
 00498EA2    pop         ebp
 00498EA3    ret
end;*}

//00498EA4
procedure TImage.SetCenter(Value:Boolean);
begin
{*
 00498EA4    push        ebp
 00498EA5    mov         ebp,esp
 00498EA7    add         esp,0FFFFFFF8
 00498EAA    mov         byte ptr [ebp-5],dl
 00498EAD    mov         dword ptr [ebp-4],eax
 00498EB0    mov         eax,dword ptr [ebp-4]
 00498EB3    mov         al,byte ptr [eax+179];TImage.Center:Boolean
 00498EB9    cmp         al,byte ptr [ebp-5]
>00498EBC    je          00498ED5
 00498EBE    mov         al,byte ptr [ebp-5]
 00498EC1    mov         edx,dword ptr [ebp-4]
 00498EC4    mov         byte ptr [edx+179],al;TImage.Center:Boolean
 00498ECA    mov         edx,dword ptr [ebp-4]
 00498ECD    mov         eax,dword ptr [ebp-4]
 00498ED0    call        00498FA8
 00498ED5    pop         ecx
 00498ED6    pop         ecx
 00498ED7    pop         ebp
 00498ED8    ret
*}
end;

//00498EDC
procedure TImage.SetPicture(Value:TPicture);
begin
{*
 00498EDC    push        ebp
 00498EDD    mov         ebp,esp
 00498EDF    add         esp,0FFFFFFF8
 00498EE2    mov         dword ptr [ebp-8],edx
 00498EE5    mov         dword ptr [ebp-4],eax
 00498EE8    mov         edx,dword ptr [ebp-8]
 00498EEB    mov         eax,dword ptr [ebp-4]
 00498EEE    mov         eax,dword ptr [eax+168];TImage.Picture:TPicture
 00498EF4    mov         ecx,dword ptr [eax]
 00498EF6    call        dword ptr [ecx+8];TPicture.sub_0048AAA4
 00498EF9    pop         ecx
 00498EFA    pop         ecx
 00498EFB    pop         ebp
 00498EFC    ret
*}
end;

//00498F00
procedure TImage.SetStretch(Value:Boolean);
begin
{*
 00498F00    push        ebp
 00498F01    mov         ebp,esp
 00498F03    add         esp,0FFFFFFF8
 00498F06    mov         byte ptr [ebp-5],dl
 00498F09    mov         dword ptr [ebp-4],eax
 00498F0C    mov         al,byte ptr [ebp-5]
 00498F0F    mov         edx,dword ptr [ebp-4]
 00498F12    cmp         al,byte ptr [edx+178];TImage.Stretch:Boolean
>00498F18    je          00498F31
 00498F1A    mov         al,byte ptr [ebp-5]
 00498F1D    mov         edx,dword ptr [ebp-4]
 00498F20    mov         byte ptr [edx+178],al;TImage.Stretch:Boolean
 00498F26    mov         edx,dword ptr [ebp-4]
 00498F29    mov         eax,dword ptr [ebp-4]
 00498F2C    call        00498FA8
 00498F31    pop         ecx
 00498F32    pop         ecx
 00498F33    pop         ebp
 00498F34    ret
*}
end;

//00498F38
procedure TImage.SetTransparent(Value:Boolean);
begin
{*
 00498F38    push        ebp
 00498F39    mov         ebp,esp
 00498F3B    add         esp,0FFFFFFF8
 00498F3E    mov         byte ptr [ebp-5],dl
 00498F41    mov         dword ptr [ebp-4],eax
 00498F44    mov         al,byte ptr [ebp-5]
 00498F47    mov         edx,dword ptr [ebp-4]
 00498F4A    cmp         al,byte ptr [edx+17B];TImage.Transparent:Boolean
>00498F50    je          00498F69
 00498F52    mov         al,byte ptr [ebp-5]
 00498F55    mov         edx,dword ptr [ebp-4]
 00498F58    mov         byte ptr [edx+17B],al;TImage.Transparent:Boolean
 00498F5E    mov         edx,dword ptr [ebp-4]
 00498F61    mov         eax,dword ptr [ebp-4]
 00498F64    call        00498FA8
 00498F69    pop         ecx
 00498F6A    pop         ecx
 00498F6B    pop         ebp
 00498F6C    ret
*}
end;

//00498F70
procedure TImage.SetProportional(Value:Boolean);
begin
{*
 00498F70    push        ebp
 00498F71    mov         ebp,esp
 00498F73    add         esp,0FFFFFFF8
 00498F76    mov         byte ptr [ebp-5],dl
 00498F79    mov         dword ptr [ebp-4],eax
 00498F7C    mov         eax,dword ptr [ebp-4]
 00498F7F    mov         al,byte ptr [eax+17D];TImage.Proportional:Boolean
 00498F85    cmp         al,byte ptr [ebp-5]
>00498F88    je          00498FA1
 00498F8A    mov         al,byte ptr [ebp-5]
 00498F8D    mov         edx,dword ptr [ebp-4]
 00498F90    mov         byte ptr [edx+17D],al;TImage.Proportional:Boolean
 00498F96    mov         edx,dword ptr [ebp-4]
 00498F99    mov         eax,dword ptr [ebp-4]
 00498F9C    call        00498FA8
 00498FA1    pop         ecx
 00498FA2    pop         ecx
 00498FA3    pop         ebp
 00498FA4    ret
*}
end;

//00498FA8
procedure sub_00498FA8(?:TImage; ?:TImage);
begin
{*
 00498FA8    push        ebp
 00498FA9    mov         ebp,esp
 00498FAB    add         esp,0FFFFFFE4
 00498FAE    push        ebx
 00498FAF    mov         dword ptr [ebp-0C],edx
 00498FB2    mov         dword ptr [ebp-4],eax
 00498FB5    mov         eax,dword ptr [ebp-4]
 00498FB8    cmp         byte ptr [eax+5C],0;TImage.FAutoSize:Boolean
>00498FBC    je          00499017
 00498FBE    mov         eax,dword ptr [ebp-4]
 00498FC1    mov         eax,dword ptr [eax+168];TImage.Picture:TPicture
 00498FC7    call        0048AE14
 00498FCC    test        eax,eax
>00498FCE    jle         00499017
 00498FD0    mov         eax,dword ptr [ebp-4]
 00498FD3    mov         eax,dword ptr [eax+168];TImage.Picture:TPicture
 00498FD9    call        0048AE40
 00498FDE    test        eax,eax
>00498FE0    jle         00499017
 00498FE2    mov         eax,dword ptr [ebp-4]
 00498FE5    mov         eax,dword ptr [eax+168];TImage.Picture:TPicture
 00498FEB    call        0048AE14
 00498FF0    push        eax
 00498FF1    mov         eax,dword ptr [ebp-4]
 00498FF4    mov         eax,dword ptr [eax+168];TImage.Picture:TPicture
 00498FFA    call        0048AE40
 00498FFF    push        eax
 00499000    mov         eax,dword ptr [ebp-4]
 00499003    mov         ecx,dword ptr [eax+44];TImage.Top:Integer
 00499006    mov         eax,dword ptr [ebp-4]
 00499009    mov         edx,dword ptr [eax+40];TImage.Left:Integer
 0049900C    mov         eax,dword ptr [ebp-4]
 0049900F    mov         ebx,dword ptr [eax]
 00499011    call        dword ptr [ebx+84];TImage.sub_004CA110
 00499017    mov         eax,dword ptr [ebp-4]
 0049901A    mov         eax,dword ptr [eax+168];TImage.Picture:TPicture
 00499020    mov         eax,dword ptr [eax+0C];TPicture.FGraphic:TGraphic
 00499023    mov         dword ptr [ebp-8],eax
 00499026    cmp         dword ptr [ebp-8],0
>0049902A    je          004990E9
 00499030    mov         eax,dword ptr [ebp-8]
 00499033    mov         edx,dword ptr ds:[485B2C];TMetafile
 00499039    call        @IsClass
 0049903E    test        al,al
>00499040    jne         00499065
 00499042    mov         eax,dword ptr [ebp-8]
 00499045    mov         edx,dword ptr ds:[485DB0];TIcon
 0049904B    call        @IsClass
 00499050    test        al,al
>00499052    jne         00499065
 00499054    mov         eax,dword ptr [ebp-4]
 00499057    mov         dl,byte ptr [eax+17B];TImage.Transparent:Boolean
 0049905D    mov         eax,dword ptr [ebp-8]
 00499060    mov         ecx,dword ptr [eax]
 00499062    call        dword ptr [ecx+3C];TGraphic.sub_0048A230
 00499065    lea         edx,[ebp-1C]
 00499068    mov         eax,dword ptr [ebp-4]
 0049906B    call        00498A18
 00499070    mov         eax,dword ptr [ebp-8]
 00499073    mov         edx,dword ptr [eax]
 00499075    call        dword ptr [edx+28];TGraphic.sub_0048A0EC
 00499078    test        al,al
>0049907A    jne         004990B1
 0049907C    cmp         dword ptr [ebp-1C],0
>00499080    jg          004990B1
 00499082    cmp         dword ptr [ebp-18],0
>00499086    jg          004990B1
 00499088    mov         eax,dword ptr [ebp-14]
 0049908B    mov         edx,dword ptr [ebp-4]
 0049908E    cmp         eax,dword ptr [edx+48];TImage.Width:Integer
>00499091    jl          004990B1
 00499093    mov         eax,dword ptr [ebp-10]
 00499096    mov         edx,dword ptr [ebp-4]
 00499099    cmp         eax,dword ptr [edx+4C];TImage.Height:Integer
>0049909C    jl          004990B1
 0049909E    mov         eax,[00499118];0x40 gvar_00499118
 004990A3    mov         edx,dword ptr [ebp-4]
 004990A6    or          eax,dword ptr [edx+50];TImage.FControlStyle:TControlStyle
 004990A9    mov         edx,dword ptr [ebp-4]
 004990AC    mov         dword ptr [edx+50],eax;TImage.FControlStyle:TControlStyle
>004990AF    jmp         004990C4
 004990B1    mov         eax,[00499118];0x40 gvar_00499118
 004990B6    mov         edx,dword ptr [ebp-4]
 004990B9    not         eax
 004990BB    and         eax,dword ptr [edx+50];TImage.FControlStyle:TControlStyle
 004990BE    mov         edx,dword ptr [ebp-4]
 004990C1    mov         dword ptr [edx+50],eax;TImage.FControlStyle:TControlStyle
 004990C4    mov         eax,dword ptr [ebp-4]
 004990C7    call        00498C50
 004990CC    test        al,al
>004990CE    je          004990FC
 004990D0    mov         eax,dword ptr [ebp-4]
 004990D3    cmp         byte ptr [eax+17C],0;TImage.FDrawing:Boolean
>004990DA    je          004990FC
 004990DC    mov         eax,dword ptr [ebp-4]
 004990DF    mov         edx,dword ptr [eax]
 004990E1    call        dword ptr [edx+88];TImage.sub_004CB7BC
>004990E7    jmp         004990FC
 004990E9    mov         eax,[00499118];0x40 gvar_00499118
 004990EE    mov         edx,dword ptr [ebp-4]
 004990F1    not         eax
 004990F3    and         eax,dword ptr [edx+50];TImage.FControlStyle:TControlStyle
 004990F6    mov         edx,dword ptr [ebp-4]
 004990F9    mov         dword ptr [edx+50],eax;TImage.FControlStyle:TControlStyle
 004990FC    mov         eax,dword ptr [ebp-4]
 004990FF    cmp         byte ptr [eax+17C],0;TImage.FDrawing:Boolean
>00499106    jne         00499110
 00499108    mov         eax,dword ptr [ebp-4]
 0049910B    mov         edx,dword ptr [eax]
 0049910D    call        dword ptr [edx+7C];TImage.sub_004CB6E8
 00499110    pop         ebx
 00499111    mov         esp,ebp
 00499113    pop         ebp
 00499114    ret
*}
end;

//0049911C
{*function sub_0049911C(?:?; ?:?):?;
begin
 0049911C    push        ebp
 0049911D    mov         ebp,esp
 0049911F    add         esp,0FFFFFFF0
 00499122    mov         dword ptr [ebp-0C],ecx
 00499125    mov         dword ptr [ebp-8],edx
 00499128    mov         dword ptr [ebp-4],eax
 0049912B    mov         byte ptr [ebp-0D],1
 0049912F    mov         eax,dword ptr [ebp-4]
 00499132    test        byte ptr [eax+1C],10;TImage.FComponentState:TComponentState
>00499136    je          0049915C
 00499138    mov         eax,dword ptr [ebp-4]
 0049913B    mov         eax,dword ptr [eax+168];TImage.Picture:TPicture
 00499141    call        0048AE14
 00499146    test        eax,eax
>00499148    jle         0049919C
 0049914A    mov         eax,dword ptr [ebp-4]
 0049914D    mov         eax,dword ptr [eax+168];TImage.Picture:TPicture
 00499153    call        0048AE40
 00499158    test        eax,eax
>0049915A    jle         0049919C
 0049915C    mov         eax,dword ptr [ebp-4]
 0049915F    mov         al,byte ptr [eax+5B];TImage.FAlign:TAlign
 00499162    test        al,al
>00499164    je          0049916C
 00499166    add         al,0FD
 00499168    sub         al,2
>0049916A    jae         0049917F
 0049916C    mov         eax,dword ptr [ebp-4]
 0049916F    mov         eax,dword ptr [eax+168];TImage.Picture:TPicture
 00499175    call        0048AE14
 0049917A    mov         edx,dword ptr [ebp-8]
 0049917D    mov         dword ptr [edx],eax
 0049917F    mov         eax,dword ptr [ebp-4]
 00499182    mov         al,byte ptr [eax+5B];TImage.FAlign:TAlign
 00499185    sub         al,3
>00499187    jae         0049919C
 00499189    mov         eax,dword ptr [ebp-4]
 0049918C    mov         eax,dword ptr [eax+168];TImage.Picture:TPicture
 00499192    call        0048AE40
 00499197    mov         edx,dword ptr [ebp-0C]
 0049919A    mov         dword ptr [edx],eax
 0049919C    mov         al,byte ptr [ebp-0D]
 0049919F    mov         esp,ebp
 004991A1    pop         ebp
 004991A2    ret
end;*}

//004991A4
constructor TBevel.Create(AOwner:TComponent);
begin
{*
 004991A4    push        ebp
 004991A5    mov         ebp,esp
 004991A7    add         esp,0FFFFFFF4
 004991AA    test        dl,dl
>004991AC    je          004991B6
 004991AE    add         esp,0FFFFFFF0
 004991B1    call        @ClassCreate
 004991B6    mov         dword ptr [ebp-0C],ecx
 004991B9    mov         byte ptr [ebp-5],dl
 004991BC    mov         dword ptr [ebp-4],eax
 004991BF    mov         ecx,dword ptr [ebp-0C]
 004991C2    xor         edx,edx
 004991C4    mov         eax,dword ptr [ebp-4]
 004991C7    call        TGraphicControl.Create
 004991CC    mov         eax,dword ptr [ebp-4]
 004991CF    mov         eax,dword ptr [eax+50];TBevel.FControlStyle:TControlStyle
 004991D2    or          eax,dword ptr ds:[49922C];0x800 gvar_0049922C
 004991D8    mov         edx,dword ptr [ebp-4]
 004991DB    mov         dword ptr [edx+50],eax;TBevel.FControlStyle:TControlStyle
 004991DE    mov         eax,dword ptr [ebp-4]
 004991E1    mov         byte ptr [eax+168],0;TBevel.Style:TBevelStyle
 004991E8    mov         eax,dword ptr [ebp-4]
 004991EB    mov         byte ptr [eax+169],0;TBevel.Shape:TBevelShape
 004991F2    mov         edx,32
 004991F7    mov         eax,dword ptr [ebp-4]
 004991FA    call        TControl.SetWidth
 004991FF    mov         edx,32
 00499204    mov         eax,dword ptr [ebp-4]
 00499207    call        TControl.SetHeight
 0049920C    mov         eax,dword ptr [ebp-4]
 0049920F    cmp         byte ptr [ebp-5],0
>00499213    je          00499224
 00499215    call        @AfterConstruction
 0049921A    pop         dword ptr fs:[0]
 00499221    add         esp,0C
 00499224    mov         eax,dword ptr [ebp-4]
 00499227    mov         esp,ebp
 00499229    pop         ebp
 0049922A    ret
*}
end;

//00499230
procedure TBevel.SetStyle(Value:TBevelStyle);
begin
{*
 00499230    push        ebp
 00499231    mov         ebp,esp
 00499233    add         esp,0FFFFFFF8
 00499236    mov         byte ptr [ebp-5],dl
 00499239    mov         dword ptr [ebp-4],eax
 0049923C    mov         al,byte ptr [ebp-5]
 0049923F    mov         edx,dword ptr [ebp-4]
 00499242    cmp         al,byte ptr [edx+168];TBevel.Style:TBevelStyle
>00499248    je          0049925E
 0049924A    mov         al,byte ptr [ebp-5]
 0049924D    mov         edx,dword ptr [ebp-4]
 00499250    mov         byte ptr [edx+168],al;TBevel.Style:TBevelStyle
 00499256    mov         eax,dword ptr [ebp-4]
 00499259    mov         edx,dword ptr [eax]
 0049925B    call        dword ptr [edx+7C];TBevel.sub_004CB6E8
 0049925E    pop         ecx
 0049925F    pop         ecx
 00499260    pop         ebp
 00499261    ret
*}
end;

//00499264
procedure TBevel.SetShape(Value:TBevelShape);
begin
{*
 00499264    push        ebp
 00499265    mov         ebp,esp
 00499267    add         esp,0FFFFFFF8
 0049926A    mov         byte ptr [ebp-5],dl
 0049926D    mov         dword ptr [ebp-4],eax
 00499270    mov         al,byte ptr [ebp-5]
 00499273    mov         edx,dword ptr [ebp-4]
 00499276    cmp         al,byte ptr [edx+169];TBevel.Shape:TBevelShape
>0049927C    je          00499292
 0049927E    mov         al,byte ptr [ebp-5]
 00499281    mov         edx,dword ptr [ebp-4]
 00499284    mov         byte ptr [edx+169],al;TBevel.Shape:TBevelShape
 0049928A    mov         eax,dword ptr [ebp-4]
 0049928D    mov         edx,dword ptr [eax]
 0049928F    call        dword ptr [edx+7C];TBevel.sub_004CB6E8
 00499292    pop         ecx
 00499293    pop         ecx
 00499294    pop         ebp
 00499295    ret
*}
end;

//00499298
{*procedure sub_00499298(?:?; ?:?);
begin
 00499298    push        ebp
 00499299    mov         ebp,esp
 0049929B    add         esp,0FFFFFFC8
 0049929E    mov         dword ptr [ebp-4],eax
 004992A1    mov         eax,dword ptr [ebp+8]
 004992A4    mov         eax,dword ptr [eax-4]
 004992A7    mov         eax,dword ptr [eax+160]
 004992AD    mov         dword ptr [ebp-8],eax
 004992B0    mov         eax,dword ptr [ebp+8]
 004992B3    mov         edx,dword ptr [eax-8]
 004992B6    mov         eax,dword ptr [ebp-8]
 004992B9    mov         eax,dword ptr [eax+10]
 004992BC    call        TPen.SetColor
 004992C1    lea         ecx,[ebp-28]
 004992C4    mov         edx,dword ptr [ebp-4]
 004992C7    mov         edx,dword ptr [edx+0C]
 004992CA    mov         eax,dword ptr [ebp-4]
 004992CD    mov         eax,dword ptr [eax]
 004992CF    call        Point
 004992D4    mov         eax,dword ptr [ebp-28]
 004992D7    mov         dword ptr [ebp-20],eax
 004992DA    mov         eax,dword ptr [ebp-24]
 004992DD    mov         dword ptr [ebp-1C],eax
 004992E0    lea         ecx,[ebp-30]
 004992E3    mov         edx,dword ptr [ebp-4]
 004992E6    mov         edx,dword ptr [edx+4]
 004992E9    mov         eax,dword ptr [ebp-4]
 004992EC    mov         eax,dword ptr [eax]
 004992EE    call        Point
 004992F3    mov         eax,dword ptr [ebp-30]
 004992F6    mov         dword ptr [ebp-18],eax
 004992F9    mov         eax,dword ptr [ebp-2C]
 004992FC    mov         dword ptr [ebp-14],eax
 004992FF    lea         ecx,[ebp-38]
 00499302    mov         edx,dword ptr [ebp-4]
 00499305    mov         edx,dword ptr [edx+4]
 00499308    mov         eax,dword ptr [ebp-4]
 0049930B    mov         eax,dword ptr [eax+8]
 0049930E    call        Point
 00499313    mov         eax,dword ptr [ebp-38]
 00499316    mov         dword ptr [ebp-10],eax
 00499319    mov         eax,dword ptr [ebp-34]
 0049931C    mov         dword ptr [ebp-0C],eax
 0049931F    lea         edx,[ebp-20]
 00499322    mov         ecx,2
 00499327    mov         eax,dword ptr [ebp-8]
 0049932A    call        00487F38
 0049932F    mov         eax,dword ptr [ebp+8]
 00499332    mov         edx,dword ptr [eax-0C]
 00499335    mov         eax,dword ptr [ebp-8]
 00499338    mov         eax,dword ptr [eax+10]
 0049933B    call        TPen.SetColor
 00499340    lea         ecx,[ebp-28]
 00499343    mov         edx,dword ptr [ebp-4]
 00499346    mov         edx,dword ptr [edx+4]
 00499349    mov         eax,dword ptr [ebp-4]
 0049934C    mov         eax,dword ptr [eax+8]
 0049934F    call        Point
 00499354    mov         eax,dword ptr [ebp-28]
 00499357    mov         dword ptr [ebp-20],eax
 0049935A    mov         eax,dword ptr [ebp-24]
 0049935D    mov         dword ptr [ebp-1C],eax
 00499360    lea         ecx,[ebp-30]
 00499363    mov         edx,dword ptr [ebp-4]
 00499366    mov         edx,dword ptr [edx+0C]
 00499369    mov         eax,dword ptr [ebp-4]
 0049936C    mov         eax,dword ptr [eax+8]
 0049936F    call        Point
 00499374    mov         eax,dword ptr [ebp-30]
 00499377    mov         dword ptr [ebp-18],eax
 0049937A    mov         eax,dword ptr [ebp-2C]
 0049937D    mov         dword ptr [ebp-14],eax
 00499380    lea         ecx,[ebp-38]
 00499383    mov         edx,dword ptr [ebp-4]
 00499386    mov         edx,dword ptr [edx+0C]
 00499389    mov         eax,dword ptr [ebp-4]
 0049938C    mov         eax,dword ptr [eax]
 0049938E    call        Point
 00499393    mov         eax,dword ptr [ebp-38]
 00499396    mov         dword ptr [ebp-10],eax
 00499399    mov         eax,dword ptr [ebp-34]
 0049939C    mov         dword ptr [ebp-0C],eax
 0049939F    lea         edx,[ebp-20]
 004993A2    mov         ecx,2
 004993A7    mov         eax,dword ptr [ebp-8]
 004993AA    call        00487F38
 004993AF    mov         esp,ebp
 004993B1    pop         ebp
 004993B2    ret
end;*}

//004993B4
{*procedure sub_004993B4(?:?; ?:?; ?:?; ?:?; ?:?; ?:?);
begin
 004993B4    push        ebp
 004993B5    mov         ebp,esp
 004993B7    add         esp,0FFFFFFF0
 004993BA    mov         dword ptr [ebp-0C],ecx
 004993BD    mov         dword ptr [ebp-8],edx
 004993C0    mov         dword ptr [ebp-4],eax
 004993C3    mov         eax,dword ptr [ebp+10]
 004993C6    mov         eax,dword ptr [eax-4]
 004993C9    mov         eax,dword ptr [eax+160]
 004993CF    mov         dword ptr [ebp-10],eax
 004993D2    mov         edx,dword ptr [ebp-4]
 004993D5    mov         eax,dword ptr [ebp-10]
 004993D8    mov         eax,dword ptr [eax+10]
 004993DB    call        TPen.SetColor
 004993E0    mov         ecx,dword ptr [ebp-0C]
 004993E3    mov         edx,dword ptr [ebp-8]
 004993E6    mov         eax,dword ptr [ebp-10]
 004993E9    call        TCanvas.MoveTo
 004993EE    mov         ecx,dword ptr [ebp+8]
 004993F1    mov         edx,dword ptr [ebp+0C]
 004993F4    mov         eax,dword ptr [ebp-10]
 004993F7    call        TCanvas.LineTo
 004993FC    mov         esp,ebp
 004993FE    pop         ebp
 004993FF    ret         8
end;*}

//00499404
procedure sub_00499404;
begin
{*
 00499404    push        ebp
 00499405    mov         ebp,esp
 00499407    add         esp,0FFFFFFDC
 0049940A    mov         dword ptr [ebp-4],eax
 0049940D    mov         eax,dword ptr [ebp-4]
 00499410    mov         eax,dword ptr [eax+160];TBevel.............................................................
 00499416    mov         dword ptr [ebp-14],eax
 00499419    mov         eax,dword ptr [ebp-4]
 0049941C    test        byte ptr [eax+1C],10;TBevel.FComponentState:TComponentState
>00499420    je          004994C0
 00499426    mov         eax,dword ptr [ebp-4]
 00499429    cmp         byte ptr [eax+169],6;TBevel.Shape:TBevelShape
>00499430    jne         0049948C
 00499432    mov         dl,2
 00499434    mov         eax,dword ptr [ebp-14]
 00499437    mov         eax,dword ptr [eax+10];TCanvas.Pen:TPen
 0049943A    call        TPen.SetStyle
 0049943F    mov         dl,0E
 00499441    mov         eax,dword ptr [ebp-14]
 00499444    mov         eax,dword ptr [eax+10];TCanvas.Pen:TPen
 00499447    call        TPen.SetMode
 0049944C    mov         edx,0FFD8CE
 00499451    mov         eax,dword ptr [ebp-14]
 00499454    mov         eax,dword ptr [eax+10];TCanvas.Pen:TPen
 00499457    call        TPen.SetColor
 0049945C    mov         dl,1
 0049945E    mov         eax,dword ptr [ebp-14]
 00499461    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 00499464    call        TBrush.SetStyle
 00499469    mov         eax,dword ptr [ebp-4]
 0049946C    call        TControl.GetClientWidth
 00499471    push        eax
 00499472    mov         eax,dword ptr [ebp-4]
 00499475    call        TControl.GetClientHeight
 0049947A    push        eax
 0049947B    xor         ecx,ecx
 0049947D    xor         edx,edx
 0049947F    mov         eax,dword ptr [ebp-14]
 00499482    call        00487F84
>00499487    jmp         004996C5
 0049948C    xor         edx,edx
 0049948E    mov         eax,dword ptr [ebp-14]
 00499491    mov         eax,dword ptr [eax+10];TCanvas.Pen:TPen
 00499494    call        TPen.SetStyle
 00499499    mov         dl,4
 0049949B    mov         eax,dword ptr [ebp-14]
 0049949E    mov         eax,dword ptr [eax+10];TCanvas.Pen:TPen
 004994A1    call        TPen.SetMode
 004994A6    xor         edx,edx
 004994A8    mov         eax,dword ptr [ebp-14]
 004994AB    mov         eax,dword ptr [eax+10];TCanvas.Pen:TPen
 004994AE    call        TPen.SetColor
 004994B3    xor         edx,edx
 004994B5    mov         eax,dword ptr [ebp-14]
 004994B8    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 004994BB    call        TBrush.SetStyle
 004994C0    mov         edx,1
 004994C5    mov         eax,dword ptr [ebp-14]
 004994C8    mov         eax,dword ptr [eax+10];TCanvas.Pen:TPen
 004994CB    call        TPen.SetWidth
 004994D0    mov         eax,dword ptr [ebp-4]
 004994D3    cmp         byte ptr [eax+168],0;TBevel.Style:TBevelStyle
>004994DA    jne         004994EC
 004994DC    mov         dword ptr [ebp-8],0FF000010
 004994E3    mov         dword ptr [ebp-0C],0FF000014
>004994EA    jmp         004994FA
 004994EC    mov         dword ptr [ebp-8],0FF000014
 004994F3    mov         dword ptr [ebp-0C],0FF000010
 004994FA    mov         eax,dword ptr [ebp-4]
 004994FD    movzx       eax,byte ptr [eax+169];TBevel.Shape:TBevelShape
 00499504    cmp         eax,5
>00499507    ja          004996C5
 0049950D    jmp         dword ptr [eax*4+499514]
 0049950D    dd          0049952C
 0049950D    dd          00499557
 0049950D    dd          004995CA
 0049950D    dd          00499600
 0049950D    dd          0049964A
 0049950D    dd          0049967D
 0049952C    push        ebp
 0049952D    mov         eax,dword ptr [ebp-4]
 00499530    mov         eax,dword ptr [eax+4C];TBevel.Height:Integer
 00499533    dec         eax
 00499534    push        eax
 00499535    lea         eax,[ebp-24]
 00499538    push        eax
 00499539    mov         eax,dword ptr [ebp-4]
 0049953C    mov         ecx,dword ptr [eax+48];TBevel.Width:Integer
 0049953F    dec         ecx
 00499540    xor         edx,edx
 00499542    xor         eax,eax
 00499544    call        Rect
 00499549    lea         eax,[ebp-24]
 0049954C    call        00499298
 00499551    pop         ecx
>00499552    jmp         004996C5
 00499557    mov         eax,dword ptr [ebp-8]
 0049955A    mov         dword ptr [ebp-10],eax
 0049955D    mov         eax,dword ptr [ebp-0C]
 00499560    mov         dword ptr [ebp-8],eax
 00499563    push        ebp
 00499564    mov         eax,dword ptr [ebp-4]
 00499567    mov         eax,dword ptr [eax+4C];TBevel.Height:Integer
 0049956A    dec         eax
 0049956B    push        eax
 0049956C    lea         eax,[ebp-24]
 0049956F    push        eax
 00499570    mov         eax,dword ptr [ebp-4]
 00499573    mov         ecx,dword ptr [eax+48];TBevel.Width:Integer
 00499576    dec         ecx
 00499577    mov         edx,1
 0049957C    mov         eax,1
 00499581    call        Rect
 00499586    lea         eax,[ebp-24]
 00499589    call        00499298
 0049958E    pop         ecx
 0049958F    mov         eax,dword ptr [ebp-10]
 00499592    mov         dword ptr [ebp-0C],eax
 00499595    mov         eax,dword ptr [ebp-10]
 00499598    mov         dword ptr [ebp-8],eax
 0049959B    push        ebp
 0049959C    mov         eax,dword ptr [ebp-4]
 0049959F    mov         eax,dword ptr [eax+4C];TBevel.Height:Integer
 004995A2    sub         eax,2
 004995A5    push        eax
 004995A6    lea         eax,[ebp-24]
 004995A9    push        eax
 004995AA    mov         eax,dword ptr [ebp-4]
 004995AD    mov         ecx,dword ptr [eax+48];TBevel.Width:Integer
 004995B0    sub         ecx,2
 004995B3    xor         edx,edx
 004995B5    xor         eax,eax
 004995B7    call        Rect
 004995BC    lea         eax,[ebp-24]
 004995BF    call        00499298
 004995C4    pop         ecx
>004995C5    jmp         004996C5
 004995CA    push        ebp
 004995CB    mov         eax,dword ptr [ebp-4]
 004995CE    mov         eax,dword ptr [eax+48];TBevel.Width:Integer
 004995D1    push        eax
 004995D2    push        0
 004995D4    xor         ecx,ecx
 004995D6    xor         edx,edx
 004995D8    mov         eax,dword ptr [ebp-8]
 004995DB    call        004993B4
 004995E0    pop         ecx
 004995E1    push        ebp
 004995E2    mov         eax,dword ptr [ebp-4]
 004995E5    mov         eax,dword ptr [eax+48];TBevel.Width:Integer
 004995E8    push        eax
 004995E9    push        1
 004995EB    mov         ecx,1
 004995F0    xor         edx,edx
 004995F2    mov         eax,dword ptr [ebp-0C]
 004995F5    call        004993B4
 004995FA    pop         ecx
>004995FB    jmp         004996C5
 00499600    push        ebp
 00499601    mov         eax,dword ptr [ebp-4]
 00499604    mov         eax,dword ptr [eax+48];TBevel.Width:Integer
 00499607    push        eax
 00499608    mov         eax,dword ptr [ebp-4]
 0049960B    mov         eax,dword ptr [eax+4C];TBevel.Height:Integer
 0049960E    sub         eax,2
 00499611    push        eax
 00499612    mov         eax,dword ptr [ebp-4]
 00499615    mov         ecx,dword ptr [eax+4C];TBevel.Height:Integer
 00499618    sub         ecx,2
 0049961B    xor         edx,edx
 0049961D    mov         eax,dword ptr [ebp-8]
 00499620    call        004993B4
 00499625    pop         ecx
 00499626    push        ebp
 00499627    mov         eax,dword ptr [ebp-4]
 0049962A    mov         eax,dword ptr [eax+48];TBevel.Width:Integer
 0049962D    push        eax
 0049962E    mov         eax,dword ptr [ebp-4]
 00499631    mov         eax,dword ptr [eax+4C];TBevel.Height:Integer
 00499634    dec         eax
 00499635    push        eax
 00499636    mov         eax,dword ptr [ebp-4]
 00499639    mov         ecx,dword ptr [eax+4C];TBevel.Height:Integer
 0049963C    dec         ecx
 0049963D    xor         edx,edx
 0049963F    mov         eax,dword ptr [ebp-0C]
 00499642    call        004993B4
 00499647    pop         ecx
>00499648    jmp         004996C5
 0049964A    push        ebp
 0049964B    push        0
 0049964D    mov         eax,dword ptr [ebp-4]
 00499650    mov         eax,dword ptr [eax+4C];TBevel.Height:Integer
 00499653    push        eax
 00499654    xor         ecx,ecx
 00499656    xor         edx,edx
 00499658    mov         eax,dword ptr [ebp-8]
 0049965B    call        004993B4
 00499660    pop         ecx
 00499661    push        ebp
 00499662    push        1
 00499664    mov         eax,dword ptr [ebp-4]
 00499667    mov         eax,dword ptr [eax+4C];TBevel.Height:Integer
 0049966A    push        eax
 0049966B    xor         ecx,ecx
 0049966D    mov         edx,1
 00499672    mov         eax,dword ptr [ebp-0C]
 00499675    call        004993B4
 0049967A    pop         ecx
>0049967B    jmp         004996C5
 0049967D    push        ebp
 0049967E    mov         eax,dword ptr [ebp-4]
 00499681    mov         eax,dword ptr [eax+48];TBevel.Width:Integer
 00499684    sub         eax,2
 00499687    push        eax
 00499688    mov         eax,dword ptr [ebp-4]
 0049968B    mov         eax,dword ptr [eax+4C];TBevel.Height:Integer
 0049968E    push        eax
 0049968F    mov         eax,dword ptr [ebp-4]
 00499692    mov         edx,dword ptr [eax+48];TBevel.Width:Integer
 00499695    sub         edx,2
 00499698    xor         ecx,ecx
 0049969A    mov         eax,dword ptr [ebp-8]
 0049969D    call        004993B4
 004996A2    pop         ecx
 004996A3    push        ebp
 004996A4    mov         eax,dword ptr [ebp-4]
 004996A7    mov         eax,dword ptr [eax+48];TBevel.Width:Integer
 004996AA    dec         eax
 004996AB    push        eax
 004996AC    mov         eax,dword ptr [ebp-4]
 004996AF    mov         eax,dword ptr [eax+4C];TBevel.Height:Integer
 004996B2    push        eax
 004996B3    mov         eax,dword ptr [ebp-4]
 004996B6    mov         edx,dword ptr [eax+48];TBevel.Width:Integer
 004996B9    dec         edx
 004996BA    xor         ecx,ecx
 004996BC    mov         eax,dword ptr [ebp-0C]
 004996BF    call        004993B4
 004996C4    pop         ecx
 004996C5    mov         esp,ebp
 004996C7    pop         ebp
 004996C8    ret
*}
end;

//004996CC
constructor TTimer.Create(AOwner:TComponent);
begin
{*
 004996CC    push        ebp
 004996CD    mov         ebp,esp
 004996CF    add         esp,0FFFFFFF4
 004996D2    test        dl,dl
>004996D4    je          004996DE
 004996D6    add         esp,0FFFFFFF0
 004996D9    call        @ClassCreate
 004996DE    mov         dword ptr [ebp-0C],ecx
 004996E1    mov         byte ptr [ebp-5],dl
 004996E4    mov         dword ptr [ebp-4],eax
 004996E7    mov         ecx,dword ptr [ebp-0C]
 004996EA    xor         edx,edx
 004996EC    mov         eax,dword ptr [ebp-4]
 004996EF    call        00482F04
 004996F4    mov         eax,dword ptr [ebp-4]
 004996F7    mov         byte ptr [eax+40],1
 004996FB    mov         eax,dword ptr [ebp-4]
 004996FE    mov         dword ptr [eax+30],3E8
 00499705    mov         eax,dword ptr [ebp-4]
 00499708    push        eax
 00499709    push        499784
 0049970E    call        00484814
 00499713    mov         edx,dword ptr [ebp-4]
 00499716    mov         dword ptr [edx+34],eax
 00499719    mov         eax,dword ptr [ebp-4]
 0049971C    cmp         byte ptr [ebp-5],0
>00499720    je          00499731
 00499722    call        @AfterConstruction
 00499727    pop         dword ptr fs:[0]
 0049972E    add         esp,0C
 00499731    mov         eax,dword ptr [ebp-4]
 00499734    mov         esp,ebp
 00499736    pop         ebp
 00499737    ret
*}
end;

//00499738
destructor TTimer.Destroy;
begin
{*
 00499738    push        ebp
 00499739    mov         ebp,esp
 0049973B    add         esp,0FFFFFFF8
 0049973E    call        @BeforeDestruction
 00499743    mov         byte ptr [ebp-5],dl
 00499746    mov         dword ptr [ebp-4],eax
 00499749    mov         eax,dword ptr [ebp-4]
 0049974C    mov         byte ptr [eax+40],0
 00499750    mov         eax,dword ptr [ebp-4]
 00499753    call        0049980C
 00499758    mov         eax,dword ptr [ebp-4]
 0049975B    mov         eax,dword ptr [eax+34]
 0049975E    call        004848D0
 00499763    mov         dl,byte ptr [ebp-5]
 00499766    and         dl,0FC
 00499769    mov         eax,dword ptr [ebp-4]
 0049976C    call        TComponent.Destroy
 00499771    cmp         byte ptr [ebp-5],0
>00499775    jle         0049977F
 00499777    mov         eax,dword ptr [ebp-4]
 0049977A    call        @ClassDestroy
 0049977F    pop         ecx
 00499780    pop         ecx
 00499781    pop         ebp
 00499782    ret
*}
end;

//0049980C
{*procedure sub_0049980C(?:?);
begin
 0049980C    push        ebp
 0049980D    mov         ebp,esp
 0049980F    add         esp,0FFFFFFF8
 00499812    xor         edx,edx
 00499814    mov         dword ptr [ebp-8],edx
 00499817    mov         dword ptr [ebp-4],eax
 0049981A    xor         eax,eax
 0049981C    push        ebp
 0049981D    push        4998A4
 00499822    push        dword ptr fs:[eax]
 00499825    mov         dword ptr fs:[eax],esp
 00499828    push        1
 0049982A    mov         eax,dword ptr [ebp-4]
 0049982D    mov         eax,dword ptr [eax+34]
 00499830    push        eax
 00499831    call        user32.KillTimer
 00499836    mov         eax,dword ptr [ebp-4]
 00499839    cmp         dword ptr [eax+30],0
>0049983D    je          0049988E
 0049983F    mov         eax,dword ptr [ebp-4]
 00499842    cmp         byte ptr [eax+40],0
>00499846    je          0049988E
 00499848    mov         eax,dword ptr [ebp-4]
 0049984B    cmp         word ptr [eax+3A],0
>00499850    je          0049988E
 00499852    push        0
 00499854    mov         eax,dword ptr [ebp-4]
 00499857    mov         eax,dword ptr [eax+30]
 0049985A    push        eax
 0049985B    push        1
 0049985D    mov         eax,dword ptr [ebp-4]
 00499860    mov         eax,dword ptr [eax+34]
 00499863    push        eax
 00499864    call        user32.SetTimer
 00499869    test        eax,eax
>0049986B    jne         0049988E
 0049986D    lea         edx,[ebp-8]
 00499870    mov         eax,[0055B6D4];^SNoTimers:TResStringRec
 00499875    call        LoadResString
 0049987A    mov         ecx,dword ptr [ebp-8]
 0049987D    mov         dl,1
 0049987F    mov         eax,[00475904];EOutOfResources
 00499884    call        Exception.Create;EOutOfResources.Create
 00499889    call        @RaiseExcept
 0049988E    xor         eax,eax
 00499890    pop         edx
 00499891    pop         ecx
 00499892    pop         ecx
 00499893    mov         dword ptr fs:[eax],edx
 00499896    push        4998AB
 0049989B    lea         eax,[ebp-8]
 0049989E    call        @LStrClr
 004998A3    ret
>004998A4    jmp         @HandleFinally
>004998A9    jmp         0049989B
 004998AB    pop         ecx
 004998AC    pop         ecx
 004998AD    pop         ebp
 004998AE    ret
end;*}

//004998B0
procedure TTimer.SetEnabled(Value:Boolean);
begin
{*
 004998B0    push        ebp
 004998B1    mov         ebp,esp
 004998B3    add         esp,0FFFFFFF8
 004998B6    mov         byte ptr [ebp-5],dl
 004998B9    mov         dword ptr [ebp-4],eax
 004998BC    mov         al,byte ptr [ebp-5]
 004998BF    mov         edx,dword ptr [ebp-4]
 004998C2    cmp         al,byte ptr [edx+40]
>004998C5    je          004998D8
 004998C7    mov         al,byte ptr [ebp-5]
 004998CA    mov         edx,dword ptr [ebp-4]
 004998CD    mov         byte ptr [edx+40],al
 004998D0    mov         eax,dword ptr [ebp-4]
 004998D3    call        0049980C
 004998D8    pop         ecx
 004998D9    pop         ecx
 004998DA    pop         ebp
 004998DB    ret
*}
end;

//004998DC
procedure TTimer.SetInterval(Value:Cardinal);
begin
{*
 004998DC    push        ebp
 004998DD    mov         ebp,esp
 004998DF    add         esp,0FFFFFFF8
 004998E2    mov         dword ptr [ebp-8],edx
 004998E5    mov         dword ptr [ebp-4],eax
 004998E8    mov         eax,dword ptr [ebp-8]
 004998EB    mov         edx,dword ptr [ebp-4]
 004998EE    cmp         eax,dword ptr [edx+30]
>004998F1    je          00499904
 004998F3    mov         eax,dword ptr [ebp-8]
 004998F6    mov         edx,dword ptr [ebp-4]
 004998F9    mov         dword ptr [edx+30],eax
 004998FC    mov         eax,dword ptr [ebp-4]
 004998FF    call        0049980C
 00499904    pop         ecx
 00499905    pop         ecx
 00499906    pop         ebp
 00499907    ret
*}
end;

//00499908
procedure TTimer.SetOnTimer(Value:TNotifyEvent);
begin
{*
 00499908    push        ebp
 00499909    mov         ebp,esp
 0049990B    push        ecx
 0049990C    mov         dword ptr [ebp-4],eax
 0049990F    mov         eax,dword ptr [ebp-4]
 00499912    mov         edx,dword ptr [ebp+8]
 00499915    mov         dword ptr [eax+38],edx
 00499918    mov         edx,dword ptr [ebp+0C]
 0049991B    mov         dword ptr [eax+3C],edx
 0049991E    mov         eax,dword ptr [ebp-4]
 00499921    call        0049980C
 00499926    pop         ecx
 00499927    pop         ebp
 00499928    ret         8
*}
end;

//0049992C
procedure TTimer.sub_0049992C;
begin
{*
 0049992C    push        ebp
 0049992D    mov         ebp,esp
 0049992F    push        ecx
 00499930    push        ebx
 00499931    mov         dword ptr [ebp-4],eax
 00499934    mov         eax,dword ptr [ebp-4]
 00499937    cmp         word ptr [eax+3A],0;TTimer.?f3A:word
>0049993C    je          0049994A
 0049993E    mov         ebx,dword ptr [ebp-4]
 00499941    mov         edx,dword ptr [ebp-4]
 00499944    mov         eax,dword ptr [ebx+3C];TTimer.?f3C:dword
 00499947    call        dword ptr [ebx+38];TTimer.OnTimer
 0049994A    pop         ebx
 0049994B    pop         ecx
 0049994C    pop         ebp
 0049994D    ret
*}
end;

//00499950
constructor TCustomPanel.Create(AOwner:TComponent);
begin
{*
 00499950    push        ebp
 00499951    mov         ebp,esp
 00499953    add         esp,0FFFFFFF4
 00499956    test        dl,dl
>00499958    je          00499962
 0049995A    add         esp,0FFFFFFF0
 0049995D    call        @ClassCreate
 00499962    mov         dword ptr [ebp-0C],ecx
 00499965    mov         byte ptr [ebp-5],dl
 00499968    mov         dword ptr [ebp-4],eax
 0049996B    mov         ecx,dword ptr [ebp-0C]
 0049996E    xor         edx,edx
 00499970    mov         eax,dword ptr [ebp-4]
 00499973    call        TCustomControl.Create
 00499978    mov         eax,dword ptr [ebp-4]
 0049997B    mov         edx,dword ptr ds:[499A34];0x8EB gvar_00499A34
 00499981    mov         dword ptr [eax+50],edx;TCustomPanel.FControlStyle:TControlStyle
 00499984    call        ThemeServices
 00499989    call        TThemeServices.GetThemesEnabled
 0049998E    test        al,al
>00499990    je          004999AE
 00499992    mov         eax,dword ptr [ebp-4]
 00499995    mov         eax,dword ptr [eax+50];TCustomPanel.FControlStyle:TControlStyle
 00499998    or          eax,dword ptr ds:[499A38];0x40000 gvar_00499A38
 0049999E    mov         edx,dword ptr ds:[499A3C];0x40 gvar_00499A3C
 004999A4    not         edx
 004999A6    and         edx,eax
 004999A8    mov         eax,dword ptr [ebp-4]
 004999AB    mov         dword ptr [eax+50],edx;TCustomPanel.FControlStyle:TControlStyle
 004999AE    mov         edx,0B9
 004999B3    mov         eax,dword ptr [ebp-4]
 004999B6    call        TControl.SetWidth
 004999BB    mov         edx,29
 004999C0    mov         eax,dword ptr [ebp-4]
 004999C3    call        TControl.SetHeight
 004999C8    mov         eax,dword ptr [ebp-4]
 004999CB    mov         byte ptr [eax+220],2;TCustomPanel.FAlignment:TAlignment
 004999D2    mov         dl,2
 004999D4    mov         eax,dword ptr [ebp-4]
 004999D7    call        TPanel.SetBevelOuter
 004999DC    mov         edx,1
 004999E1    mov         eax,dword ptr [ebp-4]
 004999E4    call        TPanel.SetBevelWidth
 004999E9    mov         eax,dword ptr [ebp-4]
 004999EC    mov         byte ptr [eax+21C],0;TCustomPanel.FBorderStyle:TBorderStyle
 004999F3    mov         edx,0FF00000F
 004999F8    mov         eax,dword ptr [ebp-4]
 004999FB    call        TPanel.SetColor
 00499A00    mov         eax,dword ptr [ebp-4]
 00499A03    mov         byte ptr [eax+21D],1;TCustomPanel.FFullRepaint:Boolean
 00499A0A    mov         dl,1
 00499A0C    mov         eax,dword ptr [ebp-4]
 00499A0F    call        TPanel.SetUseDockManager
 00499A14    mov         eax,dword ptr [ebp-4]
 00499A17    cmp         byte ptr [ebp-5],0
>00499A1B    je          00499A2C
 00499A1D    call        @AfterConstruction
 00499A22    pop         dword ptr fs:[0]
 00499A29    add         esp,0C
 00499A2C    mov         eax,dword ptr [ebp-4]
 00499A2F    mov         esp,ebp
 00499A31    pop         ebp
 00499A32    ret
*}
end;

//00499A40
{*procedure sub_00499A40(?:?);
begin
 00499A40    push        ebp
 00499A41    mov         ebp,esp
 00499A43    add         esp,0FFFFFFF8
 00499A46    mov         dword ptr [ebp-8],edx
 00499A49    mov         dword ptr [ebp-4],eax
 00499A4C    mov         edx,dword ptr [ebp-8]
 00499A4F    mov         eax,dword ptr [ebp-4]
 00499A52    call        004CF814
 00499A57    mov         eax,dword ptr [ebp-4]
 00499A5A    movzx       eax,byte ptr [eax+21C];TCustomPanel.FBorderStyle:TBorderStyle
 00499A61    mov         eax,dword ptr [eax*4+5411B4]
 00499A68    mov         edx,dword ptr [ebp-8]
 00499A6B    or          dword ptr [edx+4],eax
 00499A6E    mov         eax,[0055B36C];^NewStyleControls:Boolean
 00499A73    cmp         byte ptr [eax],0
>00499A76    je          00499AA4
 00499A78    mov         eax,dword ptr [ebp-4]
 00499A7B    cmp         byte ptr [eax+1A5],0;TCustomPanel.FCtl3D:Boolean
>00499A82    je          00499AA4
 00499A84    mov         eax,dword ptr [ebp-4]
 00499A87    cmp         byte ptr [eax+21C],1;TCustomPanel.FBorderStyle:TBorderStyle
>00499A8E    jne         00499AA4
 00499A90    mov         eax,dword ptr [ebp-8]
 00499A93    and         dword ptr [eax+4],0FF7FFFFF
 00499A9A    mov         eax,dword ptr [ebp-8]
 00499A9D    or          dword ptr [eax+8],200
 00499AA4    mov         eax,dword ptr [ebp-8]
 00499AA7    and         dword ptr [eax+24],0FFFFFFFC
 00499AAB    pop         ecx
 00499AAC    pop         ecx
 00499AAD    pop         ebp
 00499AAE    ret
end;*}

//00499AB0
{*procedure TCustomPanel.CMBorderChanged(?:?);
begin
 00499AB0    push        ebp
 00499AB1    mov         ebp,esp
 00499AB3    add         esp,0FFFFFFF8
 00499AB6    mov         dword ptr [ebp-8],edx
 00499AB9    mov         dword ptr [ebp-4],eax
 00499ABC    mov         edx,dword ptr [ebp-8]
 00499ABF    mov         eax,dword ptr [ebp-4]
 00499AC2    call        TWinControl.CMBorderChanged
 00499AC7    mov         eax,dword ptr [ebp-4]
 00499ACA    mov         edx,dword ptr [eax]
 00499ACC    call        dword ptr [edx+7C];TCustomPanel.sub_004D3648
 00499ACF    pop         ecx
 00499AD0    pop         ecx
 00499AD1    pop         ebp
 00499AD2    ret
end;*}

//00499AD4
{*procedure TCustomPanel.CMTextChanged(?:?);
begin
 00499AD4    push        ebp
 00499AD5    mov         ebp,esp
 00499AD7    add         esp,0FFFFFFF8
 00499ADA    mov         dword ptr [ebp-8],edx
 00499ADD    mov         dword ptr [ebp-4],eax
 00499AE0    mov         eax,dword ptr [ebp-4]
 00499AE3    mov         edx,dword ptr [eax]
 00499AE5    call        dword ptr [edx+7C];TCustomPanel.sub_004D3648
 00499AE8    pop         ecx
 00499AE9    pop         ecx
 00499AEA    pop         ebp
 00499AEB    ret
end;*}

//00499AEC
{*procedure TCustomPanel.CMCtl3DChanged(?:?);
begin
 00499AEC    push        ebp
 00499AED    mov         ebp,esp
 00499AEF    add         esp,0FFFFFFF8
 00499AF2    mov         dword ptr [ebp-8],edx
 00499AF5    mov         dword ptr [ebp-4],eax
 00499AF8    mov         eax,[0055B36C];^NewStyleControls:Boolean
 00499AFD    cmp         byte ptr [eax],0
>00499B00    je          00499B16
 00499B02    mov         eax,dword ptr [ebp-4]
 00499B05    cmp         byte ptr [eax+21C],1;TCustomPanel.FBorderStyle:TBorderStyle
>00499B0C    jne         00499B16
 00499B0E    mov         eax,dword ptr [ebp-4]
 00499B11    call        TWinControl.RecreateWnd
 00499B16    mov         edx,dword ptr [ebp-8]
 00499B19    mov         eax,dword ptr [ebp-4]
 00499B1C    call        TWinControl.CMCtl3DChanged
 00499B21    pop         ecx
 00499B22    pop         ecx
 00499B23    pop         ebp
 00499B24    ret
end;*}

//00499B28
{*procedure TCustomPanel.CMIsToolControl(?:?);
begin
 00499B28    push        ebp
 00499B29    mov         ebp,esp
 00499B2B    add         esp,0FFFFFFF8
 00499B2E    mov         dword ptr [ebp-8],edx
 00499B31    mov         dword ptr [ebp-4],eax
 00499B34    mov         eax,dword ptr [ebp-4]
 00499B37    cmp         byte ptr [eax+21E],0;TCustomPanel.FLocked:Boolean
>00499B3E    jne         00499B4A
 00499B40    mov         eax,dword ptr [ebp-8]
 00499B43    mov         dword ptr [eax+0C],1
 00499B4A    pop         ecx
 00499B4B    pop         ecx
 00499B4C    pop         ebp
 00499B4D    ret
end;*}

//00499B50
{*procedure TCustomPanel.WMWindowPosChangedMsg(?:?);
begin
 00499B50    push        ebp
 00499B51    mov         ebp,esp
 00499B53    add         esp,0FFFFFFE0
 00499B56    xor         ecx,ecx
 00499B58    mov         dword ptr [ebp-20],ecx
 00499B5B    mov         dword ptr [ebp-8],edx
 00499B5E    mov         dword ptr [ebp-4],eax
 00499B61    xor         eax,eax
 00499B63    push        ebp
 00499B64    push        499C70
 00499B69    push        dword ptr fs:[eax]
 00499B6C    mov         dword ptr fs:[eax],esp
 00499B6F    mov         eax,dword ptr [ebp-4]
 00499B72    cmp         byte ptr [eax+21D],0;TCustomPanel.FFullRepaint:Boolean
>00499B79    jne         00499B8C
 00499B7B    lea         edx,[ebp-20]
 00499B7E    mov         eax,dword ptr [ebp-4]
 00499B81    call        TControl.GetText
 00499B86    cmp         dword ptr [ebp-20],0
>00499B8A    je          00499B99
 00499B8C    mov         eax,dword ptr [ebp-4]
 00499B8F    mov         edx,dword ptr [eax]
 00499B91    call        dword ptr [edx+7C];TCustomPanel.sub_004D3648
>00499B94    jmp         00499C4F
 00499B99    mov         eax,dword ptr [ebp-4]
 00499B9C    mov         eax,dword ptr [eax+218];TCustomPanel.FBorderWidth:TBorderWidth
 00499BA2    mov         dword ptr [ebp-0C],eax
 00499BA5    mov         eax,dword ptr [ebp-4]
 00499BA8    cmp         byte ptr [eax+211],0;TCustomPanel.FBevelInner:TBevelCut
>00499BAF    je          00499BBD
 00499BB1    mov         eax,dword ptr [ebp-4]
 00499BB4    mov         eax,dword ptr [eax+214];TCustomPanel.FBevelWidth:TBevelWidth
 00499BBA    add         dword ptr [ebp-0C],eax
 00499BBD    mov         eax,dword ptr [ebp-4]
 00499BC0    cmp         byte ptr [eax+212],0;TCustomPanel.FBevelOuter:TBevelCut
>00499BC7    je          00499BD5
 00499BC9    mov         eax,dword ptr [ebp-4]
 00499BCC    mov         eax,dword ptr [eax+214];TCustomPanel.FBevelWidth:TBevelWidth
 00499BD2    add         dword ptr [ebp-0C],eax
 00499BD5    cmp         dword ptr [ebp-0C],0
>00499BD9    jle         00499C4F
 00499BDB    mov         eax,dword ptr [ebp-4]
 00499BDE    mov         eax,dword ptr [eax+48];TCustomPanel.Width:Integer
 00499BE1    mov         dword ptr [ebp-14],eax
 00499BE4    mov         eax,dword ptr [ebp-4]
 00499BE7    mov         eax,dword ptr [eax+4C];TCustomPanel.Height:Integer
 00499BEA    mov         dword ptr [ebp-10],eax
 00499BED    mov         eax,dword ptr [ebp-8]
 00499BF0    mov         eax,dword ptr [eax+8]
 00499BF3    mov         eax,dword ptr [eax+10]
 00499BF6    cmp         eax,dword ptr [ebp-14]
>00499BF9    je          00499C1E
 00499BFB    xor         eax,eax
 00499BFD    mov         dword ptr [ebp-18],eax
 00499C00    mov         eax,dword ptr [ebp-14]
 00499C03    sub         eax,dword ptr [ebp-0C]
 00499C06    dec         eax
 00499C07    mov         dword ptr [ebp-1C],eax
 00499C0A    push        0FF
 00499C0C    lea         eax,[ebp-1C]
 00499C0F    push        eax
 00499C10    mov         eax,dword ptr [ebp-4]
 00499C13    call        TWinControl.GetHandle
 00499C18    push        eax
 00499C19    call        user32.InvalidateRect
 00499C1E    mov         eax,dword ptr [ebp-8]
 00499C21    mov         eax,dword ptr [eax+8]
 00499C24    mov         eax,dword ptr [eax+14]
 00499C27    cmp         eax,dword ptr [ebp-10]
>00499C2A    je          00499C4F
 00499C2C    xor         eax,eax
 00499C2E    mov         dword ptr [ebp-1C],eax
 00499C31    mov         eax,dword ptr [ebp-10]
 00499C34    sub         eax,dword ptr [ebp-0C]
 00499C37    dec         eax
 00499C38    mov         dword ptr [ebp-18],eax
 00499C3B    push        0FF
 00499C3D    lea         eax,[ebp-1C]
 00499C40    push        eax
 00499C41    mov         eax,dword ptr [ebp-4]
 00499C44    call        TWinControl.GetHandle
 00499C49    push        eax
 00499C4A    call        user32.InvalidateRect
 00499C4F    mov         edx,dword ptr [ebp-8]
 00499C52    mov         eax,dword ptr [ebp-4]
 00499C55    call        TWinControl.WMWindowPosChangedMsg
 00499C5A    xor         eax,eax
 00499C5C    pop         edx
 00499C5D    pop         ecx
 00499C5E    pop         ecx
 00499C5F    mov         dword ptr fs:[eax],edx
 00499C62    push        499C77
 00499C67    lea         eax,[ebp-20]
 00499C6A    call        @LStrClr
 00499C6F    ret
>00499C70    jmp         @HandleFinally
>00499C75    jmp         00499C67
 00499C77    mov         esp,ebp
 00499C79    pop         ebp
 00499C7A    ret
end;*}

//00499C7C
{*procedure sub_00499C7C(?:?; ?:?);
begin
 00499C7C    push        ebp
 00499C7D    mov         ebp,esp
 00499C7F    push        ecx
 00499C80    mov         byte ptr [ebp-1],al
 00499C83    mov         eax,dword ptr [ebp+8]
 00499C86    mov         dword ptr [eax-4],0FF000014
 00499C8D    cmp         byte ptr [ebp-1],1
>00499C91    jne         00499C9D
 00499C93    mov         eax,dword ptr [ebp+8]
 00499C96    mov         dword ptr [eax-4],0FF000010
 00499C9D    mov         eax,dword ptr [ebp+8]
 00499CA0    mov         dword ptr [eax-8],0FF000010
 00499CA7    cmp         byte ptr [ebp-1],1
>00499CAB    jne         00499CB7
 00499CAD    mov         eax,dword ptr [ebp+8]
 00499CB0    mov         dword ptr [eax-8],0FF000014
 00499CB7    pop         ecx
 00499CB8    pop         ebp
 00499CB9    ret
end;*}

//00499CBC
procedure sub_00499CBC;
begin
{*
 00499CBC    push        ebp
 00499CBD    mov         ebp,esp
 00499CBF    add         esp,0FFFFFFD4
 00499CC2    xor         edx,edx
 00499CC4    mov         dword ptr [ebp-2C],edx
 00499CC7    mov         dword ptr [ebp-0C],eax
 00499CCA    xor         eax,eax
 00499CCC    push        ebp
 00499CCD    push        499E77
 00499CD2    push        dword ptr fs:[eax]
 00499CD5    mov         dword ptr fs:[eax],esp
 00499CD8    lea         edx,[ebp-28]
 00499CDB    mov         eax,dword ptr [ebp-0C]
 00499CDE    mov         ecx,dword ptr [eax]
 00499CE0    call        dword ptr [ecx+44];TCustomPanel.sub_004D3A1C
 00499CE3    mov         eax,dword ptr [ebp-0C]
 00499CE6    cmp         byte ptr [eax+212],0;TCustomPanel.FBevelOuter:TBevelCut
>00499CED    je          00499D21
 00499CEF    push        ebp
 00499CF0    mov         eax,dword ptr [ebp-0C]
 00499CF3    mov         al,byte ptr [eax+212];TCustomPanel.FBevelOuter:TBevelCut
 00499CF9    call        00499C7C
 00499CFE    pop         ecx
 00499CFF    mov         eax,dword ptr [ebp-8]
 00499D02    push        eax
 00499D03    mov         eax,dword ptr [ebp-0C]
 00499D06    mov         eax,dword ptr [eax+214];TCustomPanel.FBevelWidth:TBevelWidth
 00499D0C    push        eax
 00499D0D    lea         edx,[ebp-28]
 00499D10    mov         ecx,dword ptr [ebp-4]
 00499D13    mov         eax,dword ptr [ebp-0C]
 00499D16    mov         eax,dword ptr [eax+208];TCustomPanel..........................FCanvas:TCanvas
 00499D1C    call        0049887C
 00499D21    mov         eax,dword ptr [ebp-0C]
 00499D24    mov         eax,dword ptr [eax+70];TCustomPanel.FColor:TColor
 00499D27    push        eax
 00499D28    mov         eax,dword ptr [ebp-0C]
 00499D2B    mov         eax,dword ptr [eax+218];TCustomPanel.FBorderWidth:TBorderWidth
 00499D31    push        eax
 00499D32    lea         edx,[ebp-28]
 00499D35    mov         eax,dword ptr [ebp-0C]
 00499D38    mov         ecx,dword ptr [eax+70];TCustomPanel.FColor:TColor
 00499D3B    mov         eax,dword ptr [ebp-0C]
 00499D3E    mov         eax,dword ptr [eax+208];TCustomPanel...........................FCanvas:TCanvas
 00499D44    call        0049887C
 00499D49    mov         eax,dword ptr [ebp-0C]
 00499D4C    cmp         byte ptr [eax+211],0;TCustomPanel.FBevelInner:TBevelCut
>00499D53    je          00499D87
 00499D55    push        ebp
 00499D56    mov         eax,dword ptr [ebp-0C]
 00499D59    mov         al,byte ptr [eax+211];TCustomPanel.FBevelInner:TBevelCut
 00499D5F    call        00499C7C
 00499D64    pop         ecx
 00499D65    mov         eax,dword ptr [ebp-8]
 00499D68    push        eax
 00499D69    mov         eax,dword ptr [ebp-0C]
 00499D6C    mov         eax,dword ptr [eax+214];TCustomPanel.FBevelWidth:TBevelWidth
 00499D72    push        eax
 00499D73    lea         edx,[ebp-28]
 00499D76    mov         ecx,dword ptr [ebp-4]
 00499D79    mov         eax,dword ptr [ebp-0C]
 00499D7C    mov         eax,dword ptr [eax+208];TCustomPanel............................FCanvas:TCanvas
 00499D82    call        0049887C
 00499D87    mov         eax,dword ptr [ebp-0C]
 00499D8A    mov         eax,dword ptr [eax+208];TCustomPanel.............................FCanvas:TCanvas
 00499D90    mov         dword ptr [ebp-18],eax
 00499D93    call        ThemeServices
 00499D98    call        TThemeServices.GetThemesEnabled
 00499D9D    test        al,al
>00499D9F    je          00499DAD
 00499DA1    mov         eax,dword ptr [ebp-0C]
 00499DA4    call        TPanel.GetParentBackground
 00499DA9    test        al,al
>00499DAB    jne         00499DC9
 00499DAD    mov         eax,dword ptr [ebp-0C]
 00499DB0    mov         edx,dword ptr [eax+70];TCustomPanel.FColor:TColor
 00499DB3    mov         eax,dword ptr [ebp-18]
 00499DB6    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 00499DB9    call        TBrush.SetColor
 00499DBE    lea         edx,[ebp-28]
 00499DC1    mov         eax,dword ptr [ebp-18]
 00499DC4    call        TCanvas.FillRect
 00499DC9    mov         dl,1
 00499DCB    mov         eax,dword ptr [ebp-18]
 00499DCE    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 00499DD1    call        TBrush.SetStyle
 00499DD6    mov         eax,dword ptr [ebp-0C]
 00499DD9    mov         edx,dword ptr [eax+68];TCustomPanel.FFont:TFont
 00499DDC    mov         eax,dword ptr [ebp-18]
 00499DDF    call        TCanvas.SetFont
 00499DE4    mov         edx,499E8C;'W'
 00499DE9    mov         eax,dword ptr [ebp-18]
 00499DEC    call        TCanvas.TextHeight
 00499DF1    mov         dword ptr [ebp-10],eax
 00499DF4    mov         eax,dword ptr [ebp-1C]
 00499DF7    add         eax,dword ptr [ebp-24]
 00499DFA    sub         eax,dword ptr [ebp-10]
 00499DFD    sar         eax,1
>00499DFF    jns         00499E04
 00499E01    adc         eax,0
 00499E04    mov         dword ptr [ebp-24],eax
 00499E07    mov         eax,dword ptr [ebp-24]
 00499E0A    add         eax,dword ptr [ebp-10]
 00499E0D    mov         dword ptr [ebp-1C],eax
 00499E10    mov         eax,dword ptr [ebp-0C]
 00499E13    movzx       eax,byte ptr [eax+220];TCustomPanel.FAlignment:TAlignment
 00499E1A    mov         eax,dword ptr [eax*4+5411BC]
 00499E21    or          eax,44
 00499E24    mov         dword ptr [ebp-14],eax
 00499E27    mov         edx,dword ptr [ebp-14]
 00499E2A    mov         eax,dword ptr [ebp-0C]
 00499E2D    call        004CDF58
 00499E32    mov         dword ptr [ebp-14],eax
 00499E35    mov         eax,dword ptr [ebp-14]
 00499E38    push        eax
 00499E39    lea         eax,[ebp-28]
 00499E3C    push        eax
 00499E3D    push        0FF
 00499E3F    lea         edx,[ebp-2C]
 00499E42    mov         eax,dword ptr [ebp-0C]
 00499E45    call        TControl.GetText
 00499E4A    mov         eax,dword ptr [ebp-2C]
 00499E4D    call        @LStrToPChar
 00499E52    push        eax
 00499E53    mov         eax,dword ptr [ebp-18]
 00499E56    call        TCanvas.GetHandle
 00499E5B    push        eax
 00499E5C    call        user32.DrawTextA
 00499E61    xor         eax,eax
 00499E63    pop         edx
 00499E64    pop         ecx
 00499E65    pop         ecx
 00499E66    mov         dword ptr fs:[eax],edx
 00499E69    push        499E7E
 00499E6E    lea         eax,[ebp-2C]
 00499E71    call        @LStrClr
 00499E76    ret
>00499E77    jmp         @HandleFinally
>00499E7C    jmp         00499E6E
 00499E7E    mov         esp,ebp
 00499E80    pop         ebp
 00499E81    ret
*}
end;

//00499E90
procedure TPanel.SetAlignment(Value:TAlignment);
begin
{*
 00499E90    push        ebp
 00499E91    mov         ebp,esp
 00499E93    add         esp,0FFFFFFF8
 00499E96    mov         byte ptr [ebp-5],dl
 00499E99    mov         dword ptr [ebp-4],eax
 00499E9C    mov         al,byte ptr [ebp-5]
 00499E9F    mov         edx,dword ptr [ebp-4]
 00499EA2    mov         byte ptr [edx+220],al;TPanel.FAlignment:TAlignment
 00499EA8    mov         eax,dword ptr [ebp-4]
 00499EAB    mov         edx,dword ptr [eax]
 00499EAD    call        dword ptr [edx+7C];TPanel.sub_004D3648
 00499EB0    pop         ecx
 00499EB1    pop         ecx
 00499EB2    pop         ebp
 00499EB3    ret
*}
end;

//00499EB4
procedure TPanel.SetBevelInner(Value:TBevelCut);
begin
{*
 00499EB4    push        ebp
 00499EB5    mov         ebp,esp
 00499EB7    add         esp,0FFFFFFF8
 00499EBA    mov         byte ptr [ebp-5],dl
 00499EBD    mov         dword ptr [ebp-4],eax
 00499EC0    mov         al,byte ptr [ebp-5]
 00499EC3    mov         edx,dword ptr [ebp-4]
 00499EC6    mov         byte ptr [edx+211],al;TPanel.FBevelInner:TBevelCut
 00499ECC    mov         eax,dword ptr [ebp-4]
 00499ECF    call        004CF09C
 00499ED4    mov         eax,dword ptr [ebp-4]
 00499ED7    mov         edx,dword ptr [eax]
 00499ED9    call        dword ptr [edx+7C];TPanel.sub_004D3648
 00499EDC    pop         ecx
 00499EDD    pop         ecx
 00499EDE    pop         ebp
 00499EDF    ret
*}
end;

//00499EE0
procedure TPanel.SetBevelOuter(Value:TBevelCut);
begin
{*
 00499EE0    push        ebp
 00499EE1    mov         ebp,esp
 00499EE3    add         esp,0FFFFFFF8
 00499EE6    mov         byte ptr [ebp-5],dl
 00499EE9    mov         dword ptr [ebp-4],eax
 00499EEC    mov         al,byte ptr [ebp-5]
 00499EEF    mov         edx,dword ptr [ebp-4]
 00499EF2    mov         byte ptr [edx+212],al;TPanel.FBevelOuter:TBevelCut
 00499EF8    mov         eax,dword ptr [ebp-4]
 00499EFB    call        004CF09C
 00499F00    mov         eax,dword ptr [ebp-4]
 00499F03    mov         edx,dword ptr [eax]
 00499F05    call        dword ptr [edx+7C];TPanel.sub_004D3648
 00499F08    pop         ecx
 00499F09    pop         ecx
 00499F0A    pop         ebp
 00499F0B    ret
*}
end;

//00499F0C
procedure TPanel.SetBevelWidth(Value:TBevelWidth);
begin
{*
 00499F0C    push        ebp
 00499F0D    mov         ebp,esp
 00499F0F    add         esp,0FFFFFFF8
 00499F12    mov         dword ptr [ebp-8],edx
 00499F15    mov         dword ptr [ebp-4],eax
 00499F18    mov         eax,dword ptr [ebp-8]
 00499F1B    mov         edx,dword ptr [ebp-4]
 00499F1E    mov         dword ptr [edx+214],eax;TPanel.FBevelWidth:TBevelWidth
 00499F24    mov         eax,dword ptr [ebp-4]
 00499F27    call        004CF09C
 00499F2C    mov         eax,dword ptr [ebp-4]
 00499F2F    mov         edx,dword ptr [eax]
 00499F31    call        dword ptr [edx+7C];TPanel.sub_004D3648
 00499F34    pop         ecx
 00499F35    pop         ecx
 00499F36    pop         ebp
 00499F37    ret
*}
end;

//00499F38
procedure TPanel.SetBorderWidth(Value:TBorderWidth);
begin
{*
 00499F38    push        ebp
 00499F39    mov         ebp,esp
 00499F3B    add         esp,0FFFFFFF8
 00499F3E    mov         dword ptr [ebp-8],edx
 00499F41    mov         dword ptr [ebp-4],eax
 00499F44    mov         eax,dword ptr [ebp-8]
 00499F47    mov         edx,dword ptr [ebp-4]
 00499F4A    mov         dword ptr [edx+218],eax;TPanel.FBorderWidth:TBorderWidth
 00499F50    mov         eax,dword ptr [ebp-4]
 00499F53    call        004CF09C
 00499F58    mov         eax,dword ptr [ebp-4]
 00499F5B    mov         edx,dword ptr [eax]
 00499F5D    call        dword ptr [edx+7C];TPanel.sub_004D3648
 00499F60    pop         ecx
 00499F61    pop         ecx
 00499F62    pop         ebp
 00499F63    ret
*}
end;

//00499F64
procedure TPanel.SetBorderStyle(Value:TBorderStyle);
begin
{*
 00499F64    push        ebp
 00499F65    mov         ebp,esp
 00499F67    add         esp,0FFFFFFF8
 00499F6A    mov         byte ptr [ebp-5],dl
 00499F6D    mov         dword ptr [ebp-4],eax
 00499F70    mov         eax,dword ptr [ebp-4]
 00499F73    mov         al,byte ptr [eax+21C];TPanel.FBorderStyle:TBorderStyle
 00499F79    cmp         al,byte ptr [ebp-5]
>00499F7C    je          00499F92
 00499F7E    mov         al,byte ptr [ebp-5]
 00499F81    mov         edx,dword ptr [ebp-4]
 00499F84    mov         byte ptr [edx+21C],al;TPanel.FBorderStyle:TBorderStyle
 00499F8A    mov         eax,dword ptr [ebp-4]
 00499F8D    call        TWinControl.RecreateWnd
 00499F92    pop         ecx
 00499F93    pop         ecx
 00499F94    pop         ebp
 00499F95    ret
*}
end;

//00499F98
procedure TCustomPanel.sub_00499F98;
begin
{*
 00499F98    push        ebp
 00499F99    mov         ebp,esp
 00499F9B    add         esp,0FFFFFFF8
 00499F9E    mov         dword ptr [ebp-4],eax
 00499FA1    mov         eax,dword ptr [ebp-4]
 00499FA4    mov         al,byte ptr [eax+220];TCustomPanel.FAlignment:TAlignment
 00499FAA    mov         byte ptr [ebp-5],al
 00499FAD    mov         al,byte ptr [ebp-5]
 00499FB0    pop         ecx
 00499FB1    pop         ecx
 00499FB2    pop         ebp
 00499FB3    ret
*}
end;

//00499FB4
{*procedure sub_00499FB4(?:?);
begin
 00499FB4    push        ebp
 00499FB5    mov         ebp,esp
 00499FB7    add         esp,0FFFFFFF4
 00499FBA    mov         dword ptr [ebp-8],edx
 00499FBD    mov         dword ptr [ebp-4],eax
 00499FC0    mov         edx,dword ptr [ebp-8]
 00499FC3    mov         eax,dword ptr [ebp-4]
 00499FC6    call        004CE790
 00499FCB    mov         eax,dword ptr [ebp-4]
 00499FCE    mov         eax,dword ptr [eax+218];TCustomPanel.FBorderWidth:TBorderWidth
 00499FD4    neg         eax
 00499FD6    push        eax
 00499FD7    mov         eax,dword ptr [ebp-4]
 00499FDA    mov         eax,dword ptr [eax+218];TCustomPanel.FBorderWidth:TBorderWidth
 00499FE0    neg         eax
 00499FE2    push        eax
 00499FE3    mov         eax,dword ptr [ebp-8]
 00499FE6    push        eax
 00499FE7    call        user32.InflateRect
 00499FEC    xor         eax,eax
 00499FEE    mov         dword ptr [ebp-0C],eax
 00499FF1    mov         eax,dword ptr [ebp-4]
 00499FF4    cmp         byte ptr [eax+212],0;TCustomPanel.FBevelOuter:TBevelCut
>00499FFB    je          0049A009
 00499FFD    mov         eax,dword ptr [ebp-4]
 0049A000    mov         eax,dword ptr [eax+214];TCustomPanel.FBevelWidth:TBevelWidth
 0049A006    add         dword ptr [ebp-0C],eax
 0049A009    mov         eax,dword ptr [ebp-4]
 0049A00C    cmp         byte ptr [eax+211],0;TCustomPanel.FBevelInner:TBevelCut
>0049A013    je          0049A021
 0049A015    mov         eax,dword ptr [ebp-4]
 0049A018    mov         eax,dword ptr [eax+214];TCustomPanel.FBevelWidth:TBevelWidth
 0049A01E    add         dword ptr [ebp-0C],eax
 0049A021    mov         eax,dword ptr [ebp-0C]
 0049A024    neg         eax
 0049A026    push        eax
 0049A027    mov         eax,dword ptr [ebp-0C]
 0049A02A    neg         eax
 0049A02C    push        eax
 0049A02D    mov         eax,dword ptr [ebp-8]
 0049A030    push        eax
 0049A031    call        user32.InflateRect
 0049A036    mov         esp,ebp
 0049A038    pop         ebp
 0049A039    ret
end;*}

//0049A03C
{*procedure TCustomPanel.CMDockClient(?:?);
begin
 0049A03C    push        ebp
 0049A03D    mov         ebp,esp
 0049A03F    add         esp,0FFFFFFE4
 0049A042    push        ebx
 0049A043    push        esi
 0049A044    push        edi
 0049A045    mov         dword ptr [ebp-8],edx
 0049A048    mov         dword ptr [ebp-4],eax
 0049A04B    mov         eax,dword ptr [ebp-4]
 0049A04E    cmp         byte ptr [eax+5C],0;TCustomPanel.FAutoSize:Boolean
>0049A052    je          0049A17D
 0049A058    mov         eax,dword ptr [ebp-4]
 0049A05B    mov         byte ptr [eax+210],1;TCustomPanel.FAutoSizeDocking:Boolean
 0049A062    xor         eax,eax
 0049A064    push        ebp
 0049A065    push        49A176
 0049A06A    push        dword ptr fs:[eax]
 0049A06D    mov         dword ptr fs:[eax],esp
 0049A070    mov         eax,dword ptr [ebp-8]
 0049A073    mov         eax,dword ptr [eax+4]
 0049A076    lea         esi,[eax+44]
 0049A079    lea         edi,[ebp-1C]
 0049A07C    movs        dword ptr [edi],dword ptr [esi]
 0049A07D    movs        dword ptr [edi],dword ptr [esi]
 0049A07E    movs        dword ptr [edi],dword ptr [esi]
 0049A07F    movs        dword ptr [edi],dword ptr [esi]
 0049A080    mov         eax,dword ptr [ebp-4]
 0049A083    mov         al,byte ptr [eax+5B];TCustomPanel.FAlign:TAlign
 0049A086    dec         al
>0049A088    je          0049A0FC
 0049A08A    dec         al
>0049A08C    je          0049A115
 0049A092    dec         al
>0049A094    je          0049A09F
 0049A096    dec         al
>0049A098    je          0049A0BF
>0049A09A    jmp         0049A14C
 0049A09F    mov         eax,dword ptr [ebp-4]
 0049A0A2    cmp         dword ptr [eax+48],0;TCustomPanel.Width:Integer
>0049A0A6    jne         0049A14C
 0049A0AC    mov         edx,dword ptr [ebp-14]
 0049A0AF    sub         edx,dword ptr [ebp-1C]
 0049A0B2    mov         eax,dword ptr [ebp-4]
 0049A0B5    call        TControl.SetWidth
>0049A0BA    jmp         0049A14C
 0049A0BF    mov         eax,dword ptr [ebp-4]
 0049A0C2    cmp         dword ptr [eax+48],0;TCustomPanel.Width:Integer
>0049A0C6    jne         0049A14C
 0049A0CC    mov         eax,dword ptr [ebp-14]
 0049A0CF    sub         eax,dword ptr [ebp-1C]
 0049A0D2    mov         dword ptr [ebp-0C],eax
 0049A0D5    mov         eax,dword ptr [ebp-0C]
 0049A0D8    push        eax
 0049A0D9    mov         eax,dword ptr [ebp-4]
 0049A0DC    mov         eax,dword ptr [eax+4C];TCustomPanel.Height:Integer
 0049A0DF    push        eax
 0049A0E0    mov         eax,dword ptr [ebp-4]
 0049A0E3    mov         ecx,dword ptr [eax+44];TCustomPanel.Top:Integer
 0049A0E6    mov         eax,dword ptr [ebp-4]
 0049A0E9    mov         edx,dword ptr [eax+40];TCustomPanel.Left:Integer
 0049A0EC    sub         edx,dword ptr [ebp-0C]
 0049A0EF    mov         eax,dword ptr [ebp-4]
 0049A0F2    mov         ebx,dword ptr [eax]
 0049A0F4    call        dword ptr [ebx+84];TWinControl.SetBounds
>0049A0FA    jmp         0049A14C
 0049A0FC    mov         eax,dword ptr [ebp-4]
 0049A0FF    cmp         dword ptr [eax+4C],0;TCustomPanel.Height:Integer
>0049A103    jne         0049A14C
 0049A105    mov         edx,dword ptr [ebp-10]
 0049A108    sub         edx,dword ptr [ebp-18]
 0049A10B    mov         eax,dword ptr [ebp-4]
 0049A10E    call        TControl.SetHeight
>0049A113    jmp         0049A14C
 0049A115    mov         eax,dword ptr [ebp-4]
 0049A118    cmp         dword ptr [eax+4C],0;TCustomPanel.Height:Integer
>0049A11C    jne         0049A14C
 0049A11E    mov         eax,dword ptr [ebp-10]
 0049A121    sub         eax,dword ptr [ebp-18]
 0049A124    mov         dword ptr [ebp-0C],eax
 0049A127    mov         eax,dword ptr [ebp-4]
 0049A12A    mov         eax,dword ptr [eax+48];TCustomPanel.Width:Integer
 0049A12D    push        eax
 0049A12E    mov         eax,dword ptr [ebp-0C]
 0049A131    push        eax
 0049A132    mov         eax,dword ptr [ebp-4]
 0049A135    mov         ecx,dword ptr [eax+44];TCustomPanel.Top:Integer
 0049A138    sub         ecx,dword ptr [ebp-0C]
 0049A13B    mov         eax,dword ptr [ebp-4]
 0049A13E    mov         edx,dword ptr [eax+40];TCustomPanel.Left:Integer
 0049A141    mov         eax,dword ptr [ebp-4]
 0049A144    mov         ebx,dword ptr [eax]
 0049A146    call        dword ptr [ebx+84];TWinControl.SetBounds
 0049A14C    mov         edx,dword ptr [ebp-8]
 0049A14F    mov         eax,dword ptr [ebp-4]
 0049A152    call        TWinControl.CMDockClient
 0049A157    call        @TryFinallyExit
>0049A15C    jmp         0049A188
 0049A15E    xor         eax,eax
 0049A160    pop         edx
 0049A161    pop         ecx
 0049A162    pop         ecx
 0049A163    mov         dword ptr fs:[eax],edx
 0049A166    push        49A17D
 0049A16B    mov         eax,dword ptr [ebp-4]
 0049A16E    mov         byte ptr [eax+210],0;TCustomPanel.FAutoSizeDocking:Boolean
 0049A175    ret
>0049A176    jmp         @HandleFinally
>0049A17B    jmp         0049A16B
 0049A17D    mov         edx,dword ptr [ebp-8]
 0049A180    mov         eax,dword ptr [ebp-4]
 0049A183    call        TWinControl.CMDockClient
 0049A188    pop         edi
 0049A189    pop         esi
 0049A18A    pop         ebx
 0049A18B    mov         esp,ebp
 0049A18D    pop         ebp
 0049A18E    ret
end;*}

//0049A190
{*function sub_0049A190(?:?; ?:?):?;
begin
 0049A190    push        ebp
 0049A191    mov         ebp,esp
 0049A193    add         esp,0FFFFFFF0
 0049A196    mov         dword ptr [ebp-0C],ecx
 0049A199    mov         dword ptr [ebp-8],edx
 0049A19C    mov         dword ptr [ebp-4],eax
 0049A19F    mov         eax,dword ptr [ebp-4]
 0049A1A2    cmp         byte ptr [eax+210],0;TCustomPanel.FAutoSizeDocking:Boolean
>0049A1A9    jne         0049A1BD
 0049A1AB    mov         ecx,dword ptr [ebp-0C]
 0049A1AE    mov         edx,dword ptr [ebp-8]
 0049A1B1    mov         eax,dword ptr [ebp-4]
 0049A1B4    call        004D478C
 0049A1B9    test        al,al
>0049A1BB    jne         0049A1C1
 0049A1BD    xor         eax,eax
>0049A1BF    jmp         0049A1C3
 0049A1C1    mov         al,1
 0049A1C3    mov         byte ptr [ebp-0D],al
 0049A1C6    mov         al,byte ptr [ebp-0D]
 0049A1C9    mov         esp,ebp
 0049A1CB    pop         ebp
 0049A1CC    ret
end;*}

//0049A1D0
procedure TPanel.SetParentBackground(Value:Boolean);
begin
{*
 0049A1D0    push        ebp
 0049A1D1    mov         ebp,esp
 0049A1D3    add         esp,0FFFFFFF8
 0049A1D6    mov         byte ptr [ebp-5],dl
 0049A1D9    mov         dword ptr [ebp-4],eax
 0049A1DC    cmp         byte ptr [ebp-5],0
>0049A1E0    je          0049A1F7
 0049A1E2    mov         eax,[0049A224];0x40 gvar_0049A224
 0049A1E7    mov         edx,dword ptr [ebp-4]
 0049A1EA    not         eax
 0049A1EC    and         eax,dword ptr [edx+50];TPanel.FControlStyle:TControlStyle
 0049A1EF    mov         edx,dword ptr [ebp-4]
 0049A1F2    mov         dword ptr [edx+50],eax;TPanel.FControlStyle:TControlStyle
>0049A1F5    jmp         0049A208
 0049A1F7    mov         eax,[0049A224];0x40 gvar_0049A224
 0049A1FC    mov         edx,dword ptr [ebp-4]
 0049A1FF    or          eax,dword ptr [edx+50];TPanel.FControlStyle:TControlStyle
 0049A202    mov         edx,dword ptr [ebp-4]
 0049A205    mov         dword ptr [edx+50],eax;TPanel.FControlStyle:TControlStyle
 0049A208    mov         eax,dword ptr [ebp-4]
 0049A20B    mov         byte ptr [eax+21F],1;TPanel.FParentBackgroundSet:Boolean
 0049A212    mov         dl,byte ptr [ebp-5]
 0049A215    mov         eax,dword ptr [ebp-4]
 0049A218    call        TRadioGroup.SetParentBackground
 0049A21D    pop         ecx
 0049A21E    pop         ecx
 0049A21F    pop         ebp
 0049A220    ret
*}
end;

//0049A390
constructor TGroupButton.Create;
begin
{*
 0049A390    push        ebp
 0049A391    mov         ebp,esp
 0049A393    add         esp,0FFFFFFF4
 0049A396    test        dl,dl
>0049A398    je          0049A3A2
 0049A39A    add         esp,0FFFFFFF0
 0049A39D    call        @ClassCreate
 0049A3A2    mov         dword ptr [ebp-0C],ecx
 0049A3A5    mov         byte ptr [ebp-5],dl
 0049A3A8    mov         dword ptr [ebp-4],eax
 0049A3AB    mov         ecx,dword ptr [ebp-0C]
 0049A3AE    xor         edx,edx
 0049A3B0    mov         eax,dword ptr [ebp-4]
 0049A3B3    call        TRadioButton.Create
 0049A3B8    mov         edx,dword ptr [ebp-4]
 0049A3BB    mov         eax,dword ptr [ebp-0C]
 0049A3BE    mov         eax,dword ptr [eax+210]
 0049A3C4    call        TList.Add
 0049A3C9    xor         edx,edx
 0049A3CB    mov         eax,dword ptr [ebp-4]
 0049A3CE    call        TControl.SetVisible
 0049A3D3    mov         eax,dword ptr [ebp-0C]
 0049A3D6    mov         edx,dword ptr [eax]
 0049A3D8    call        dword ptr [edx+50]
 0049A3DB    mov         edx,eax
 0049A3DD    mov         eax,dword ptr [ebp-4]
 0049A3E0    mov         ecx,dword ptr [eax]
 0049A3E2    call        dword ptr [ecx+64]
 0049A3E5    xor         edx,edx
 0049A3E7    mov         eax,dword ptr [ebp-4]
 0049A3EA    call        TImage.SetParentShowHint
 0049A3EF    mov         eax,dword ptr [ebp-4]
 0049A3F2    mov         edx,dword ptr [ebp-0C]
 0049A3F5    mov         dword ptr [eax+124],edx
 0049A3FB    mov         dword ptr [eax+120],49A8B0;sub_0049A8B0
 0049A405    mov         edx,dword ptr [ebp-0C]
 0049A408    mov         eax,dword ptr [ebp-4]
 0049A40B    mov         ecx,dword ptr [eax]
 0049A40D    call        dword ptr [ecx+68]
 0049A410    mov         eax,dword ptr [ebp-4]
 0049A413    cmp         byte ptr [ebp-5],0
>0049A417    je          0049A428
 0049A419    call        @AfterConstruction
 0049A41E    pop         dword ptr fs:[0]
 0049A425    add         esp,0C
 0049A428    mov         eax,dword ptr [ebp-4]
 0049A42B    mov         esp,ebp
 0049A42D    pop         ebp
 0049A42E    ret
*}
end;

//0049A430
destructor TGroupButton.Destroy;
begin
{*
 0049A430    push        ebp
 0049A431    mov         ebp,esp
 0049A433    add         esp,0FFFFFFF8
 0049A436    call        @BeforeDestruction
 0049A43B    mov         byte ptr [ebp-5],dl
 0049A43E    mov         dword ptr [ebp-4],eax
 0049A441    mov         eax,dword ptr [ebp-4]
 0049A444    mov         eax,dword ptr [eax+4];TGroupButton.FOwner:TComponent
 0049A447    mov         eax,dword ptr [eax+210]
 0049A44D    mov         edx,dword ptr [ebp-4]
 0049A450    call        00478AC4
 0049A455    mov         dl,byte ptr [ebp-5]
 0049A458    and         dl,0FC
 0049A45B    mov         eax,dword ptr [ebp-4]
 0049A45E    call        TWinControl.Destroy
 0049A463    cmp         byte ptr [ebp-5],0
>0049A467    jle         0049A471
 0049A469    mov         eax,dword ptr [ebp-4]
 0049A46C    call        @ClassDestroy
 0049A471    pop         ecx
 0049A472    pop         ecx
 0049A473    pop         ebp
 0049A474    ret
*}
end;

//0049A478
{*procedure TGroupButton.sub_0049A478(?:?);
begin
 0049A478    push        ebp
 0049A479    mov         ebp,esp
 0049A47B    add         esp,0FFFFFFF8
 0049A47E    push        ebx
 0049A47F    push        esi
 0049A480    push        edi
 0049A481    mov         dword ptr [ebp-8],edx
 0049A484    mov         dword ptr [ebp-4],eax
 0049A487    mov         eax,dword ptr [ebp-4]
 0049A48A    cmp         byte ptr [eax+218],0;TGroupButton.....FInClick:Boolean
>0049A491    jne         0049A509
 0049A493    mov         eax,dword ptr [ebp-4]
 0049A496    mov         byte ptr [eax+218],1;TGroupButton......FInClick:Boolean
 0049A49D    xor         eax,eax
 0049A49F    push        ebp
 0049A4A0    push        49A4E6
 0049A4A5    push        dword ptr fs:[eax]
 0049A4A8    mov         dword ptr fs:[eax],esp
 0049A4AB    mov         eax,dword ptr [ebp-8]
 0049A4AE    cmp         word ptr [eax+6],0
>0049A4B3    je          0049A4BF
 0049A4B5    mov         eax,dword ptr [ebp-8]
 0049A4B8    cmp         word ptr [eax+6],5
>0049A4BD    jne         0049A4DC
 0049A4BF    mov         eax,dword ptr [ebp-4]
 0049A4C2    mov         eax,dword ptr [eax+30];TGroupButton.FParent:TWinControl
 0049A4C5    mov         edx,dword ptr [eax]
 0049A4C7    call        dword ptr [edx+0CC]
 0049A4CD    test        al,al
>0049A4CF    je          0049A4DC
 0049A4D1    mov         edx,dword ptr [ebp-8]
 0049A4D4    mov         eax,dword ptr [ebp-4]
 0049A4D7    call        TRadioButton.sub_004C0CA4
 0049A4DC    xor         eax,eax
 0049A4DE    pop         edx
 0049A4DF    pop         ecx
 0049A4E0    pop         ecx
 0049A4E1    mov         dword ptr fs:[eax],edx
>0049A4E4    jmp         0049A4FF
>0049A4E6    jmp         @HandleAnyException
 0049A4EB    mov         eax,[0055B4C8];^Application:TApplication
 0049A4F0    mov         eax,dword ptr [eax]
 0049A4F2    mov         edx,dword ptr [ebp-4]
 0049A4F5    call        TApplication.HandleException
 0049A4FA    call        @DoneExcept
 0049A4FF    mov         eax,dword ptr [ebp-4]
 0049A502    mov         byte ptr [eax+218],0;TGroupButton.......FInClick:Boolean
 0049A509    pop         edi
 0049A50A    pop         esi
 0049A50B    pop         ebx
 0049A50C    pop         ecx
 0049A50D    pop         ecx
 0049A50E    pop         ebp
 0049A50F    ret
end;*}

//0049A510
procedure TGroupButton.KeyPress(Key:Char);
begin
{*
 0049A510    push        ebp
 0049A511    mov         ebp,esp
 0049A513    add         esp,0FFFFFFF8
 0049A516    push        esi
 0049A517    mov         dword ptr [ebp-8],edx
 0049A51A    mov         dword ptr [ebp-4],eax
 0049A51D    mov         edx,dword ptr [ebp-8]
 0049A520    mov         eax,dword ptr [ebp-4]
 0049A523    call        TWinControl.KeyPress
 0049A528    mov         edx,dword ptr [ebp-8]
 0049A52B    mov         eax,dword ptr [ebp-4]
 0049A52E    mov         eax,dword ptr [eax+30];TGroupButton.FParent:TWinControl
 0049A531    mov         si,0FFBA
 0049A535    call        @CallDynaInst;TWinControl.KeyPress
 0049A53A    mov         eax,dword ptr [ebp-8]
 0049A53D    cmp         byte ptr [eax],8
>0049A540    je          0049A54A
 0049A542    mov         eax,dword ptr [ebp-8]
 0049A545    cmp         byte ptr [eax],20
>0049A548    jne         0049A562
 0049A54A    mov         eax,dword ptr [ebp-4]
 0049A54D    mov         eax,dword ptr [eax+30];TGroupButton.FParent:TWinControl
 0049A550    mov         edx,dword ptr [eax]
 0049A552    call        dword ptr [edx+0CC]
 0049A558    test        al,al
>0049A55A    jne         0049A562
 0049A55C    mov         eax,dword ptr [ebp-8]
 0049A55F    mov         byte ptr [eax],0
 0049A562    pop         esi
 0049A563    pop         ecx
 0049A564    pop         ecx
 0049A565    pop         ebp
 0049A566    ret
*}
end;

//0049A568
procedure TGroupButton.KeyDown(Key:Word; Shift:TShiftState);
begin
{*
 0049A568    push        ebp
 0049A569    mov         ebp,esp
 0049A56B    add         esp,0FFFFFFF4
 0049A56E    push        esi
 0049A56F    mov         byte ptr [ebp-9],cl
 0049A572    mov         dword ptr [ebp-8],edx
 0049A575    mov         dword ptr [ebp-4],eax
 0049A578    mov         edx,dword ptr [ebp-8]
 0049A57B    mov         cl,byte ptr [ebp-9]
 0049A57E    mov         eax,dword ptr [ebp-4]
 0049A581    call        TWinControl.KeyDown
 0049A586    mov         edx,dword ptr [ebp-8]
 0049A589    mov         cl,byte ptr [ebp-9]
 0049A58C    mov         eax,dword ptr [ebp-4]
 0049A58F    mov         eax,dword ptr [eax+30];TGroupButton.FParent:TWinControl
 0049A592    mov         si,0FFBC
 0049A596    call        @CallDynaInst;TWinControl.KeyDown
 0049A59B    pop         esi
 0049A59C    mov         esp,ebp
 0049A59E    pop         ebp
 0049A59F    ret
*}
end;

//0049A5A0
constructor TCustomRadioGroup.Create(AOwner:TComponent);
begin
{*
 0049A5A0    push        ebp
 0049A5A1    mov         ebp,esp
 0049A5A3    add         esp,0FFFFFFF4
 0049A5A6    test        dl,dl
>0049A5A8    je          0049A5B2
 0049A5AA    add         esp,0FFFFFFF0
 0049A5AD    call        @ClassCreate
 0049A5B2    mov         dword ptr [ebp-0C],ecx
 0049A5B5    mov         byte ptr [ebp-5],dl
 0049A5B8    mov         dword ptr [ebp-4],eax
 0049A5BB    mov         ecx,dword ptr [ebp-0C]
 0049A5BE    xor         edx,edx
 0049A5C0    mov         eax,dword ptr [ebp-4]
 0049A5C3    call        TCustomGroupBox.Create
 0049A5C8    mov         eax,dword ptr [ebp-4]
 0049A5CB    mov         edx,dword ptr ds:[49A650];0x400A0 gvar_0049A650
 0049A5D1    mov         dword ptr [eax+50],edx;TCustomRadioGroup.FControlStyle:TControlStyle
 0049A5D4    mov         dl,1
 0049A5D6    mov         eax,[004759C0];TList
 0049A5DB    call        TObject.Create;TList.Create
 0049A5E0    mov         edx,dword ptr [ebp-4]
 0049A5E3    mov         dword ptr [edx+210],eax;TCustomRadioGroup.FButtons:TList
 0049A5E9    mov         dl,1
 0049A5EB    mov         eax,[00476078];TStringList
 0049A5F0    call        TObject.Create;TStringList.Create
 0049A5F5    mov         edx,dword ptr [ebp-4]
 0049A5F8    mov         dword ptr [edx+214],eax;TCustomRadioGroup.FItems:TStrings
 0049A5FE    mov         eax,dword ptr [ebp-4]
 0049A601    mov         eax,dword ptr [eax+214];TCustomRadioGroup.FItems:TStrings
 0049A607    mov         edx,dword ptr [ebp-4]
 0049A60A    mov         dword ptr [eax+24],edx
 0049A60D    mov         dword ptr [eax+20],49A8FC;sub_0049A8FC
 0049A614    mov         eax,dword ptr [ebp-4]
 0049A617    mov         dword ptr [eax+218],0FFFFFFFF;TCustomRadioGroup.FItemIndex:Integer
 0049A621    mov         eax,dword ptr [ebp-4]
 0049A624    mov         dword ptr [eax+21C],1;TCustomRadioGroup.FColumns:Integer
 0049A62E    mov         eax,dword ptr [ebp-4]
 0049A631    cmp         byte ptr [ebp-5],0
>0049A635    je          0049A646
 0049A637    call        @AfterConstruction
 0049A63C    pop         dword ptr fs:[0]
 0049A643    add         esp,0C
 0049A646    mov         eax,dword ptr [ebp-4]
 0049A649    mov         esp,ebp
 0049A64B    pop         ebp
 0049A64C    ret
*}
end;

//0049A654
destructor TCustomRadioGroup.Destroy;
begin
{*
 0049A654    push        ebp
 0049A655    mov         ebp,esp
 0049A657    add         esp,0FFFFFFF8
 0049A65A    call        @BeforeDestruction
 0049A65F    mov         byte ptr [ebp-5],dl
 0049A662    mov         dword ptr [ebp-4],eax
 0049A665    xor         edx,edx
 0049A667    mov         eax,dword ptr [ebp-4]
 0049A66A    call        0049A9A8
 0049A66F    mov         eax,dword ptr [ebp-4]
 0049A672    mov         eax,dword ptr [eax+214];TCustomRadioGroup.FItems:TStrings
 0049A678    xor         edx,edx
 0049A67A    mov         dword ptr [eax+20],edx
 0049A67D    mov         dword ptr [eax+24],edx
 0049A680    mov         eax,dword ptr [ebp-4]
 0049A683    mov         eax,dword ptr [eax+214];TCustomRadioGroup.FItems:TStrings
 0049A689    call        TObject.Free
 0049A68E    mov         eax,dword ptr [ebp-4]
 0049A691    mov         eax,dword ptr [eax+210];TCustomRadioGroup.FButtons:TList
 0049A697    call        TObject.Free
 0049A69C    mov         dl,byte ptr [ebp-5]
 0049A69F    and         dl,0FC
 0049A6A2    mov         eax,dword ptr [ebp-4]
 0049A6A5    call        TCustomControl.Destroy
 0049A6AA    cmp         byte ptr [ebp-5],0
>0049A6AE    jle         0049A6B8
 0049A6B0    mov         eax,dword ptr [ebp-4]
 0049A6B3    call        @ClassDestroy
 0049A6B8    pop         ecx
 0049A6B9    pop         ecx
 0049A6BA    pop         ebp
 0049A6BB    ret
*}
end;

//0049A6BC
{*procedure TCustomRadioGroup.sub_0049A6BC(?:?);
begin
 0049A6BC    push        ebp
 0049A6BD    mov         ebp,esp
 0049A6BF    add         esp,0FFFFFFF8
 0049A6C2    mov         byte ptr [ebp-5],dl
 0049A6C5    mov         dword ptr [ebp-4],eax
 0049A6C8    pop         ecx
 0049A6C9    pop         ecx
 0049A6CA    pop         ebp
 0049A6CB    ret
end;*}

//0049A6CC
procedure sub_0049A6CC(?:TCustomRadioGroup);
begin
{*
 0049A6CC    push        ebp
 0049A6CD    mov         ebp,esp
 0049A6CF    add         esp,0FFFFFF98
 0049A6D2    push        esi
 0049A6D3    mov         dword ptr [ebp-4],eax
 0049A6D6    mov         eax,dword ptr [ebp-4]
 0049A6D9    mov         eax,dword ptr [eax+210]
 0049A6DF    cmp         dword ptr [eax+8],0
>0049A6E3    je          0049A8AB
 0049A6E9    mov         eax,dword ptr [ebp-4]
 0049A6EC    cmp         byte ptr [eax+220],0
>0049A6F3    jne         0049A8AB
 0049A6F9    push        0
 0049A6FB    call        user32.GetDC
 0049A700    mov         dword ptr [ebp-1C],eax
 0049A703    mov         eax,dword ptr [ebp-4]
 0049A706    mov         eax,dword ptr [eax+68]
 0049A709    call        TFont.GetHandle
 0049A70E    push        eax
 0049A70F    mov         eax,dword ptr [ebp-1C]
 0049A712    push        eax
 0049A713    call        gdi32.SelectObject
 0049A718    mov         dword ptr [ebp-20],eax
 0049A71B    lea         eax,[ebp-68]
 0049A71E    push        eax
 0049A71F    mov         eax,dword ptr [ebp-1C]
 0049A722    push        eax
 0049A723    call        gdi32.GetTextMetricsA
 0049A728    mov         eax,dword ptr [ebp-20]
 0049A72B    push        eax
 0049A72C    mov         eax,dword ptr [ebp-1C]
 0049A72F    push        eax
 0049A730    call        gdi32.SelectObject
 0049A735    mov         eax,dword ptr [ebp-1C]
 0049A738    push        eax
 0049A739    push        0
 0049A73B    call        user32.ReleaseDC
 0049A740    mov         eax,dword ptr [ebp-4]
 0049A743    mov         eax,dword ptr [eax+210]
 0049A749    mov         eax,dword ptr [eax+8]
 0049A74C    mov         edx,dword ptr [ebp-4]
 0049A74F    add         eax,dword ptr [edx+21C]
 0049A755    dec         eax
 0049A756    mov         edx,dword ptr [ebp-4]
 0049A759    mov         ecx,dword ptr [edx+21C]
 0049A75F    cdq
 0049A760    idiv        eax,ecx
 0049A762    mov         dword ptr [ebp-8],eax
 0049A765    mov         eax,dword ptr [ebp-4]
 0049A768    mov         eax,dword ptr [eax+48]
 0049A76B    sub         eax,0A
 0049A76E    mov         edx,dword ptr [ebp-4]
 0049A771    mov         ecx,dword ptr [edx+21C]
 0049A777    cdq
 0049A778    idiv        eax,ecx
 0049A77A    mov         dword ptr [ebp-0C],eax
 0049A77D    mov         eax,dword ptr [ebp-4]
 0049A780    mov         eax,dword ptr [eax+4C]
 0049A783    sub         eax,dword ptr [ebp-68]
 0049A786    sub         eax,5
 0049A789    mov         dword ptr [ebp-18],eax
 0049A78C    mov         eax,dword ptr [ebp-18]
 0049A78F    cdq
 0049A790    idiv        eax,dword ptr [ebp-8]
 0049A793    mov         dword ptr [ebp-10],eax
 0049A796    mov         eax,dword ptr [ebp-18]
 0049A799    cdq
 0049A79A    idiv        eax,dword ptr [ebp-8]
 0049A79D    sar         edx,1
>0049A79F    jns         0049A7A4
 0049A7A1    adc         edx,0
 0049A7A4    mov         eax,dword ptr [ebp-68]
 0049A7A7    inc         eax
 0049A7A8    add         edx,eax
 0049A7AA    mov         dword ptr [ebp-14],edx
 0049A7AD    mov         eax,dword ptr [ebp-4]
 0049A7B0    mov         eax,dword ptr [eax+210]
 0049A7B6    mov         eax,dword ptr [eax+8]
 0049A7B9    push        eax
 0049A7BA    call        user32.BeginDeferWindowPos
 0049A7BF    mov         dword ptr [ebp-24],eax
 0049A7C2    xor         eax,eax
 0049A7C4    push        ebp
 0049A7C5    push        49A8A4
 0049A7CA    push        dword ptr fs:[eax]
 0049A7CD    mov         dword ptr fs:[eax],esp
 0049A7D0    mov         eax,dword ptr [ebp-4]
 0049A7D3    mov         eax,dword ptr [eax+210]
 0049A7D9    mov         eax,dword ptr [eax+8]
 0049A7DC    dec         eax
 0049A7DD    test        eax,eax
>0049A7DF    jl          0049A88D
 0049A7E5    inc         eax
 0049A7E6    mov         dword ptr [ebp-2C],eax
 0049A7E9    mov         dword ptr [ebp-18],0
 0049A7F0    mov         eax,dword ptr [ebp-4]
 0049A7F3    mov         eax,dword ptr [eax+210]
 0049A7F9    mov         edx,dword ptr [ebp-18]
 0049A7FC    call        TList.Get
 0049A801    mov         dword ptr [ebp-30],eax
 0049A804    mov         eax,dword ptr [ebp-4]
 0049A807    mov         dl,byte ptr [eax+5F]
 0049A80A    mov         eax,dword ptr [ebp-30]
 0049A80D    mov         ecx,dword ptr [eax]
 0049A80F    call        dword ptr [ecx+70]
 0049A812    mov         eax,dword ptr [ebp-18]
 0049A815    cdq
 0049A816    idiv        eax,dword ptr [ebp-8]
 0049A819    imul        dword ptr [ebp-0C]
 0049A81C    add         eax,8
 0049A81F    mov         dword ptr [ebp-28],eax
 0049A822    mov         eax,dword ptr [ebp-30]
 0049A825    mov         si,0FFC8
 0049A829    call        @CallDynaInst
 0049A82E    test        al,al
>0049A830    je          0049A843
 0049A832    mov         eax,dword ptr [ebp-4]
 0049A835    call        TControl.GetClientWidth
 0049A83A    sub         eax,dword ptr [ebp-28]
 0049A83D    sub         eax,dword ptr [ebp-0C]
 0049A840    mov         dword ptr [ebp-28],eax
 0049A843    push        14
 0049A845    mov         eax,dword ptr [ebp-10]
 0049A848    push        eax
 0049A849    mov         eax,dword ptr [ebp-0C]
 0049A84C    push        eax
 0049A84D    mov         eax,dword ptr [ebp-18]
 0049A850    cdq
 0049A851    idiv        eax,dword ptr [ebp-8]
 0049A854    imul        edx,dword ptr [ebp-10]
 0049A858    add         edx,dword ptr [ebp-14]
 0049A85B    push        edx
 0049A85C    mov         eax,dword ptr [ebp-28]
 0049A85F    push        eax
 0049A860    push        0
 0049A862    mov         eax,dword ptr [ebp-30]
 0049A865    call        TWinControl.GetHandle
 0049A86A    push        eax
 0049A86B    mov         eax,dword ptr [ebp-24]
 0049A86E    push        eax
 0049A86F    call        user32.DeferWindowPos
 0049A874    mov         dword ptr [ebp-24],eax
 0049A877    mov         dl,1
 0049A879    mov         eax,dword ptr [ebp-30]
 0049A87C    call        TControl.SetVisible
 0049A881    inc         dword ptr [ebp-18]
 0049A884    dec         dword ptr [ebp-2C]
>0049A887    jne         0049A7F0
 0049A88D    xor         eax,eax
 0049A88F    pop         edx
 0049A890    pop         ecx
 0049A891    pop         ecx
 0049A892    mov         dword ptr fs:[eax],edx
 0049A895    push        49A8AB
 0049A89A    mov         eax,dword ptr [ebp-24]
 0049A89D    push        eax
 0049A89E    call        user32.EndDeferWindowPos
 0049A8A3    ret
>0049A8A4    jmp         @HandleFinally
>0049A8A9    jmp         0049A89A
 0049A8AB    pop         esi
 0049A8AC    mov         esp,ebp
 0049A8AE    pop         ebp
 0049A8AF    ret
*}
end;

//0049A8B0
{*procedure sub_0049A8B0(?:?; ?:?);
begin
 0049A8B0    push        ebp
 0049A8B1    mov         ebp,esp
 0049A8B3    add         esp,0FFFFFFF8
 0049A8B6    push        esi
 0049A8B7    mov         dword ptr [ebp-8],edx
 0049A8BA    mov         dword ptr [ebp-4],eax
 0049A8BD    mov         eax,dword ptr [ebp-4]
 0049A8C0    cmp         byte ptr [eax+221],0
>0049A8C7    jne         0049A8F7
 0049A8C9    mov         edx,dword ptr [ebp-8]
 0049A8CC    mov         eax,dword ptr [ebp-4]
 0049A8CF    mov         eax,dword ptr [eax+210]
 0049A8D5    call        00478890
 0049A8DA    mov         edx,dword ptr [ebp-4]
 0049A8DD    mov         dword ptr [edx+218],eax
 0049A8E3    mov         eax,dword ptr [ebp-4]
 0049A8E6    call        004CA9F8
 0049A8EB    mov         eax,dword ptr [ebp-4]
 0049A8EE    mov         si,0FFEB
 0049A8F2    call        @CallDynaInst
 0049A8F7    pop         esi
 0049A8F8    pop         ecx
 0049A8F9    pop         ecx
 0049A8FA    pop         ebp
 0049A8FB    ret
end;*}

//0049A8FC
{*procedure sub_0049A8FC(?:?; ?:?);
begin
 0049A8FC    push        ebp
 0049A8FD    mov         ebp,esp
 0049A8FF    add         esp,0FFFFFFF8
 0049A902    mov         dword ptr [ebp-8],edx
 0049A905    mov         dword ptr [ebp-4],eax
 0049A908    mov         eax,dword ptr [ebp-4]
 0049A90B    cmp         byte ptr [eax+220],0
>0049A912    jne         0049A94D
 0049A914    mov         eax,dword ptr [ebp-4]
 0049A917    mov         eax,dword ptr [eax+214]
 0049A91D    mov         edx,dword ptr [eax]
 0049A91F    call        dword ptr [edx+14]
 0049A922    mov         edx,dword ptr [ebp-4]
 0049A925    cmp         eax,dword ptr [edx+218]
>0049A92B    jg          0049A945
 0049A92D    mov         eax,dword ptr [ebp-4]
 0049A930    mov         eax,dword ptr [eax+214]
 0049A936    mov         edx,dword ptr [eax]
 0049A938    call        dword ptr [edx+14]
 0049A93B    dec         eax
 0049A93C    mov         edx,dword ptr [ebp-4]
 0049A93F    mov         dword ptr [edx+218],eax
 0049A945    mov         eax,dword ptr [ebp-4]
 0049A948    call        0049AB48
 0049A94D    pop         ecx
 0049A94E    pop         ecx
 0049A94F    pop         ebp
 0049A950    ret
end;*}

//0049A954
procedure TCustomRadioGroup.Loaded;
begin
{*
 0049A954    push        ebp
 0049A955    mov         ebp,esp
 0049A957    push        ecx
 0049A958    mov         dword ptr [ebp-4],eax
 0049A95B    mov         eax,dword ptr [ebp-4]
 0049A95E    call        TControl.Loaded
 0049A963    mov         eax,dword ptr [ebp-4]
 0049A966    call        0049A6CC
 0049A96B    pop         ecx
 0049A96C    pop         ebp
 0049A96D    ret
*}
end;

//0049A970
{*procedure sub_0049A970(?:?);
begin
 0049A970    push        ebp
 0049A971    mov         ebp,esp
 0049A973    add         esp,0FFFFFFF8
 0049A976    mov         dword ptr [ebp-8],edx
 0049A979    mov         dword ptr [ebp-4],eax
 0049A97C    mov         eax,dword ptr [ebp-4]
 0049A97F    mov         byte ptr [eax+220],1;TCustomRadioGroup.FReading:Boolean
 0049A986    mov         edx,dword ptr [ebp-8]
 0049A989    mov         eax,dword ptr [ebp-4]
 0049A98C    call        004CE718
 0049A991    mov         eax,dword ptr [ebp-4]
 0049A994    mov         byte ptr [eax+220],0;TCustomRadioGroup.FReading:Boolean
 0049A99B    mov         eax,dword ptr [ebp-4]
 0049A99E    call        0049AB48
 0049A9A3    pop         ecx
 0049A9A4    pop         ecx
 0049A9A5    pop         ebp
 0049A9A6    ret
end;*}

//0049A9A8
{*procedure sub_0049A9A8(?:TCustomRadioGroup; ?:?);
begin
 0049A9A8    push        ebp
 0049A9A9    mov         ebp,esp
 0049A9AB    add         esp,0FFFFFFF8
 0049A9AE    mov         dword ptr [ebp-8],edx
 0049A9B1    mov         dword ptr [ebp-4],eax
>0049A9B4    jmp         0049A9C5
 0049A9B6    mov         ecx,dword ptr [ebp-4]
 0049A9B9    mov         dl,1
 0049A9BB    mov         eax,[0049A228];TGroupButton
 0049A9C0    call        TGroupButton.Create;TGroupButton.Create
 0049A9C5    mov         eax,dword ptr [ebp-4]
 0049A9C8    mov         eax,dword ptr [eax+210];TCustomRadioGroup.FButtons:TList
 0049A9CE    mov         eax,dword ptr [eax+8];TList.FCount:Integer
 0049A9D1    cmp         eax,dword ptr [ebp-8]
>0049A9D4    jl          0049A9B6
>0049A9D6    jmp         0049A9EB
 0049A9D8    mov         eax,dword ptr [ebp-4]
 0049A9DB    mov         eax,dword ptr [eax+210];TCustomRadioGroup.FButtons:TList
 0049A9E1    call        0047898C
 0049A9E6    call        TObject.Free
 0049A9EB    mov         eax,dword ptr [ebp-4]
 0049A9EE    mov         eax,dword ptr [eax+210];TCustomRadioGroup.FButtons:TList
 0049A9F4    mov         eax,dword ptr [eax+8];TList.FCount:Integer
 0049A9F7    cmp         eax,dword ptr [ebp-8]
>0049A9FA    jg          0049A9D8
 0049A9FC    pop         ecx
 0049A9FD    pop         ecx
 0049A9FE    pop         ebp
 0049A9FF    ret
end;*}

//0049AA00
procedure TRadioGroup.SetColumns(Value:Integer);
begin
{*
 0049AA00    push        ebp
 0049AA01    mov         ebp,esp
 0049AA03    add         esp,0FFFFFFF8
 0049AA06    mov         dword ptr [ebp-8],edx
 0049AA09    mov         dword ptr [ebp-4],eax
 0049AA0C    cmp         dword ptr [ebp-8],1
>0049AA10    jge         0049AA19
 0049AA12    mov         dword ptr [ebp-8],1
 0049AA19    cmp         dword ptr [ebp-8],10
>0049AA1D    jle         0049AA26
 0049AA1F    mov         dword ptr [ebp-8],10
 0049AA26    mov         eax,dword ptr [ebp-4]
 0049AA29    mov         eax,dword ptr [eax+21C];TRadioGroup.FColumns:Integer
 0049AA2F    cmp         eax,dword ptr [ebp-8]
>0049AA32    je          0049AA50
 0049AA34    mov         eax,dword ptr [ebp-8]
 0049AA37    mov         edx,dword ptr [ebp-4]
 0049AA3A    mov         dword ptr [edx+21C],eax;TRadioGroup.FColumns:Integer
 0049AA40    mov         eax,dword ptr [ebp-4]
 0049AA43    call        0049A6CC
 0049AA48    mov         eax,dword ptr [ebp-4]
 0049AA4B    mov         edx,dword ptr [eax]
 0049AA4D    call        dword ptr [edx+7C];TRadioGroup.sub_004D3648
 0049AA50    pop         ecx
 0049AA51    pop         ecx
 0049AA52    pop         ebp
 0049AA53    ret
*}
end;

//0049AA54
procedure TRadioGroup.SetItemIndex(Value:Integer);
begin
{*
 0049AA54    push        ebp
 0049AA55    mov         ebp,esp
 0049AA57    add         esp,0FFFFFFF8
 0049AA5A    mov         dword ptr [ebp-8],edx
 0049AA5D    mov         dword ptr [ebp-4],eax
 0049AA60    mov         eax,dword ptr [ebp-4]
 0049AA63    cmp         byte ptr [eax+220],0;TRadioGroup.FReading:Boolean
>0049AA6A    je          0049AA7D
 0049AA6C    mov         eax,dword ptr [ebp-8]
 0049AA6F    mov         edx,dword ptr [ebp-4]
 0049AA72    mov         dword ptr [edx+218],eax;TRadioGroup.FItemIndex:Integer
>0049AA78    jmp         0049AB1F
 0049AA7D    cmp         dword ptr [ebp-8],0FFFFFFFF
>0049AA81    jge         0049AA8A
 0049AA83    mov         dword ptr [ebp-8],0FFFFFFFF
 0049AA8A    mov         eax,dword ptr [ebp-4]
 0049AA8D    mov         eax,dword ptr [eax+210];TRadioGroup.FButtons:TList
 0049AA93    mov         eax,dword ptr [eax+8];TList.FCount:Integer
 0049AA96    cmp         eax,dword ptr [ebp-8]
>0049AA99    jg          0049AAAB
 0049AA9B    mov         eax,dword ptr [ebp-4]
 0049AA9E    mov         eax,dword ptr [eax+210];TRadioGroup.FButtons:TList
 0049AAA4    mov         eax,dword ptr [eax+8];TList.FCount:Integer
 0049AAA7    dec         eax
 0049AAA8    mov         dword ptr [ebp-8],eax
 0049AAAB    mov         eax,dword ptr [ebp-4]
 0049AAAE    mov         eax,dword ptr [eax+218];TRadioGroup.FItemIndex:Integer
 0049AAB4    cmp         eax,dword ptr [ebp-8]
>0049AAB7    je          0049AB1F
 0049AAB9    mov         eax,dword ptr [ebp-4]
 0049AABC    cmp         dword ptr [eax+218],0;TRadioGroup.FItemIndex:Integer
>0049AAC3    jl          0049AAE6
 0049AAC5    mov         eax,dword ptr [ebp-4]
 0049AAC8    mov         edx,dword ptr [eax+218];TRadioGroup.FItemIndex:Integer
 0049AACE    mov         eax,dword ptr [ebp-4]
 0049AAD1    mov         eax,dword ptr [eax+210];TRadioGroup.FButtons:TList
 0049AAD7    call        TList.Get
 0049AADC    xor         edx,edx
 0049AADE    mov         ecx,dword ptr [eax]
 0049AAE0    call        dword ptr [ecx+0CC]
 0049AAE6    mov         eax,dword ptr [ebp-8]
 0049AAE9    mov         edx,dword ptr [ebp-4]
 0049AAEC    mov         dword ptr [edx+218],eax;TRadioGroup.FItemIndex:Integer
 0049AAF2    mov         eax,dword ptr [ebp-4]
 0049AAF5    cmp         dword ptr [eax+218],0;TRadioGroup.FItemIndex:Integer
>0049AAFC    jl          0049AB1F
 0049AAFE    mov         eax,dword ptr [ebp-4]
 0049AB01    mov         edx,dword ptr [eax+218];TRadioGroup.FItemIndex:Integer
 0049AB07    mov         eax,dword ptr [ebp-4]
 0049AB0A    mov         eax,dword ptr [eax+210];TRadioGroup.FButtons:TList
 0049AB10    call        TList.Get
 0049AB15    mov         dl,1
 0049AB17    mov         ecx,dword ptr [eax]
 0049AB19    call        dword ptr [ecx+0CC]
 0049AB1F    pop         ecx
 0049AB20    pop         ecx
 0049AB21    pop         ebp
 0049AB22    ret
*}
end;

//0049AB24
procedure TRadioGroup.SetItems(Value:TStrings);
begin
{*
 0049AB24    push        ebp
 0049AB25    mov         ebp,esp
 0049AB27    add         esp,0FFFFFFF8
 0049AB2A    mov         dword ptr [ebp-8],edx
 0049AB2D    mov         dword ptr [ebp-4],eax
 0049AB30    mov         edx,dword ptr [ebp-8]
 0049AB33    mov         eax,dword ptr [ebp-4]
 0049AB36    mov         eax,dword ptr [eax+214];TRadioGroup.FItems:TStrings
 0049AB3C    mov         ecx,dword ptr [eax]
 0049AB3E    call        dword ptr [ecx+8];TStrings.sub_0047A184
 0049AB41    pop         ecx
 0049AB42    pop         ecx
 0049AB43    pop         ebp
 0049AB44    ret
*}
end;

//0049AB48
procedure sub_0049AB48(?:TCustomRadioGroup);
begin
{*
 0049AB48    push        ebp
 0049AB49    mov         ebp,esp
 0049AB4B    add         esp,0FFFFFFF0
 0049AB4E    push        ebx
 0049AB4F    xor         edx,edx
 0049AB51    mov         dword ptr [ebp-10],edx
 0049AB54    mov         dword ptr [ebp-4],eax
 0049AB57    xor         eax,eax
 0049AB59    push        ebp
 0049AB5A    push        49AC37
 0049AB5F    push        dword ptr fs:[eax]
 0049AB62    mov         dword ptr fs:[eax],esp
 0049AB65    mov         eax,dword ptr [ebp-4]
 0049AB68    mov         eax,dword ptr [eax+214];TCustomRadioGroup.FItems:TStrings
 0049AB6E    mov         edx,dword ptr [eax]
 0049AB70    call        dword ptr [edx+14];@AbstractError
 0049AB73    mov         edx,eax
 0049AB75    mov         eax,dword ptr [ebp-4]
 0049AB78    call        0049A9A8
 0049AB7D    mov         eax,dword ptr [ebp-4]
 0049AB80    mov         eax,dword ptr [eax+210];TCustomRadioGroup.FButtons:TList
 0049AB86    mov         eax,dword ptr [eax+8];TList.FCount:Integer
 0049AB89    dec         eax
 0049AB8A    test        eax,eax
>0049AB8C    jl          0049ABD0
 0049AB8E    inc         eax
 0049AB8F    mov         dword ptr [ebp-0C],eax
 0049AB92    mov         dword ptr [ebp-8],0
 0049AB99    lea         ecx,[ebp-10]
 0049AB9C    mov         edx,dword ptr [ebp-8]
 0049AB9F    mov         eax,dword ptr [ebp-4]
 0049ABA2    mov         eax,dword ptr [eax+214];TCustomRadioGroup.FItems:TStrings
 0049ABA8    mov         ebx,dword ptr [eax]
 0049ABAA    call        dword ptr [ebx+0C];@AbstractError
 0049ABAD    mov         eax,dword ptr [ebp-10]
 0049ABB0    push        eax
 0049ABB1    mov         edx,dword ptr [ebp-8]
 0049ABB4    mov         eax,dword ptr [ebp-4]
 0049ABB7    mov         eax,dword ptr [eax+210];TCustomRadioGroup.FButtons:TList
 0049ABBD    call        TList.Get
 0049ABC2    pop         edx
 0049ABC3    call        TControl.SetText
 0049ABC8    inc         dword ptr [ebp-8]
 0049ABCB    dec         dword ptr [ebp-0C]
>0049ABCE    jne         0049AB99
 0049ABD0    mov         eax,dword ptr [ebp-4]
 0049ABD3    cmp         dword ptr [eax+218],0;TCustomRadioGroup.FItemIndex:Integer
>0049ABDA    jl          0049AC11
 0049ABDC    mov         eax,dword ptr [ebp-4]
 0049ABDF    mov         byte ptr [eax+221],1;TCustomRadioGroup.FUpdating:Boolean
 0049ABE6    mov         eax,dword ptr [ebp-4]
 0049ABE9    mov         edx,dword ptr [eax+218];TCustomRadioGroup.FItemIndex:Integer
 0049ABEF    mov         eax,dword ptr [ebp-4]
 0049ABF2    mov         eax,dword ptr [eax+210];TCustomRadioGroup.FButtons:TList
 0049ABF8    call        TList.Get
 0049ABFD    mov         dl,1
 0049ABFF    mov         ecx,dword ptr [eax]
 0049AC01    call        dword ptr [ecx+0CC]
 0049AC07    mov         eax,dword ptr [ebp-4]
 0049AC0A    mov         byte ptr [eax+221],0;TCustomRadioGroup.FUpdating:Boolean
 0049AC11    mov         eax,dword ptr [ebp-4]
 0049AC14    call        0049A6CC
 0049AC19    mov         eax,dword ptr [ebp-4]
 0049AC1C    mov         edx,dword ptr [eax]
 0049AC1E    call        dword ptr [edx+7C];TCustomRadioGroup.sub_004D3648
 0049AC21    xor         eax,eax
 0049AC23    pop         edx
 0049AC24    pop         ecx
 0049AC25    pop         ecx
 0049AC26    mov         dword ptr fs:[eax],edx
 0049AC29    push        49AC3E
 0049AC2E    lea         eax,[ebp-10]
 0049AC31    call        @LStrClr
 0049AC36    ret
>0049AC37    jmp         @HandleFinally
>0049AC3C    jmp         0049AC2E
 0049AC3E    pop         ebx
 0049AC3F    mov         esp,ebp
 0049AC41    pop         ebp
 0049AC42    ret
*}
end;

//0049AC44
{*procedure TCustomRadioGroup.CMEnabledChanged(?:?);
begin
 0049AC44    push        ebp
 0049AC45    mov         ebp,esp
 0049AC47    add         esp,0FFFFFFF0
 0049AC4A    mov         dword ptr [ebp-8],edx
 0049AC4D    mov         dword ptr [ebp-4],eax
 0049AC50    mov         edx,dword ptr [ebp-8]
 0049AC53    mov         eax,dword ptr [ebp-4]
 0049AC56    call        TWinControl.CMEnabledChanged
 0049AC5B    mov         eax,dword ptr [ebp-4]
 0049AC5E    mov         eax,dword ptr [eax+210];TCustomRadioGroup.FButtons:TList
 0049AC64    mov         eax,dword ptr [eax+8];TList.FCount:Integer
 0049AC67    dec         eax
 0049AC68    test        eax,eax
>0049AC6A    jl          0049AC9F
 0049AC6C    inc         eax
 0049AC6D    mov         dword ptr [ebp-10],eax
 0049AC70    mov         dword ptr [ebp-0C],0
 0049AC77    mov         eax,dword ptr [ebp-4]
 0049AC7A    mov         edx,dword ptr [eax]
 0049AC7C    call        dword ptr [edx+50];TImage.GetEnabled
 0049AC7F    push        eax
 0049AC80    mov         edx,dword ptr [ebp-0C]
 0049AC83    mov         eax,dword ptr [ebp-4]
 0049AC86    mov         eax,dword ptr [eax+210];TCustomRadioGroup.FButtons:TList
 0049AC8C    call        TList.Get
 0049AC91    pop         edx
 0049AC92    mov         ecx,dword ptr [eax]
 0049AC94    call        dword ptr [ecx+64]
 0049AC97    inc         dword ptr [ebp-0C]
 0049AC9A    dec         dword ptr [ebp-10]
>0049AC9D    jne         0049AC77
 0049AC9F    mov         esp,ebp
 0049ACA1    pop         ebp
 0049ACA2    ret
end;*}

//0049ACA4
{*procedure TCustomRadioGroup.CMFontChanged(?:?);
begin
 0049ACA4    push        ebp
 0049ACA5    mov         ebp,esp
 0049ACA7    add         esp,0FFFFFFF8
 0049ACAA    mov         dword ptr [ebp-8],edx
 0049ACAD    mov         dword ptr [ebp-4],eax
 0049ACB0    mov         edx,dword ptr [ebp-8]
 0049ACB3    mov         eax,dword ptr [ebp-4]
 0049ACB6    call        TWinControl.CMFontChanged
 0049ACBB    mov         eax,dword ptr [ebp-4]
 0049ACBE    call        0049A6CC
 0049ACC3    pop         ecx
 0049ACC4    pop         ecx
 0049ACC5    pop         ebp
 0049ACC6    ret
end;*}

//0049ACC8
procedure TCustomRadioGroup.WMSize(Message:TWMSize);
begin
{*
 0049ACC8    push        ebp
 0049ACC9    mov         ebp,esp
 0049ACCB    add         esp,0FFFFFFF8
 0049ACCE    mov         dword ptr [ebp-8],edx
 0049ACD1    mov         dword ptr [ebp-4],eax
 0049ACD4    mov         edx,dword ptr [ebp-8]
 0049ACD7    mov         eax,dword ptr [ebp-4]
 0049ACDA    call        TCustomGroupBox.WMSize
 0049ACDF    mov         eax,dword ptr [ebp-4]
 0049ACE2    call        0049A6CC
 0049ACE7    pop         ecx
 0049ACE8    pop         ecx
 0049ACE9    pop         ebp
 0049ACEA    ret
*}
end;

//0049ACEC
{*function sub_0049ACEC:?;
begin
 0049ACEC    push        ebp
 0049ACED    mov         ebp,esp
 0049ACEF    add         esp,0FFFFFFF8
 0049ACF2    mov         dword ptr [ebp-4],eax
 0049ACF5    mov         byte ptr [ebp-5],1
 0049ACF9    mov         al,byte ptr [ebp-5]
 0049ACFC    pop         ecx
 0049ACFD    pop         ecx
 0049ACFE    pop         ebp
 0049ACFF    ret
end;*}

//0049AD00
{*procedure TCustomRadioGroup.sub_004834DC(?:?; ?:?);
begin
 0049AD00    push        ebp
 0049AD01    mov         ebp,esp
 0049AD03    add         esp,0FFFFFFF8
 0049AD06    mov         dword ptr [ebp-8],edx
 0049AD09    mov         dword ptr [ebp-4],eax
 0049AD0C    pop         ecx
 0049AD0D    pop         ecx
 0049AD0E    pop         ebp
 0049AD0F    ret         8
end;*}

//0049AD14
constructor TSplitter.Create(AOwner:TComponent);
begin
{*
 0049AD14    push        ebp
 0049AD15    mov         ebp,esp
 0049AD17    add         esp,0FFFFFFF4
 0049AD1A    test        dl,dl
>0049AD1C    je          0049AD26
 0049AD1E    add         esp,0FFFFFFF0
 0049AD21    call        @ClassCreate
 0049AD26    mov         dword ptr [ebp-0C],ecx
 0049AD29    mov         byte ptr [ebp-5],dl
 0049AD2C    mov         dword ptr [ebp-4],eax
 0049AD2F    mov         ecx,dword ptr [ebp-0C]
 0049AD32    xor         edx,edx
 0049AD34    mov         eax,dword ptr [ebp-4]
 0049AD37    call        TGraphicControl.Create
 0049AD3C    mov         eax,dword ptr [ebp-4]
 0049AD3F    mov         byte ptr [eax+16C],1;TSplitter.AutoSnap:Boolean
 0049AD46    mov         dl,3
 0049AD48    mov         eax,dword ptr [ebp-4]
 0049AD4B    call        TImage.SetAlign
 0049AD50    mov         edx,3
 0049AD55    mov         eax,dword ptr [ebp-4]
 0049AD58    call        TControl.SetWidth
 0049AD5D    mov         dx,0FFF2
 0049AD61    mov         eax,dword ptr [ebp-4]
 0049AD64    call        TSplitter.SetCursor
 0049AD69    mov         eax,dword ptr [ebp-4]
 0049AD6C    mov         dword ptr [eax+188],1E;TSplitter.MinSize:NaturalNumber
 0049AD76    mov         eax,dword ptr [ebp-4]
 0049AD79    mov         byte ptr [eax+1A8],3;TSplitter.ResizeStyle:TResizeStyle
 0049AD80    mov         eax,dword ptr [ebp-4]
 0049AD83    mov         dword ptr [eax+1A0],0FFFFFFFF;TSplitter.FOldSize:Integer
 0049AD8D    mov         eax,dword ptr [ebp-4]
 0049AD90    cmp         byte ptr [ebp-5],0
>0049AD94    je          0049ADA5
 0049AD96    call        @AfterConstruction
 0049AD9B    pop         dword ptr fs:[0]
 0049ADA2    add         esp,0C
 0049ADA5    mov         eax,dword ptr [ebp-4]
 0049ADA8    mov         esp,ebp
 0049ADAA    pop         ebp
 0049ADAB    ret
*}
end;

//0049ADAC
destructor TSplitter.Destroy;
begin
{*
 0049ADAC    push        ebp
 0049ADAD    mov         ebp,esp
 0049ADAF    add         esp,0FFFFFFF8
 0049ADB2    call        @BeforeDestruction
 0049ADB7    mov         byte ptr [ebp-5],dl
 0049ADBA    mov         dword ptr [ebp-4],eax
 0049ADBD    mov         eax,dword ptr [ebp-4]
 0049ADC0    mov         eax,dword ptr [eax+170]
 0049ADC6    call        TObject.Free
 0049ADCB    mov         dl,byte ptr [ebp-5]
 0049ADCE    and         dl,0FC
 0049ADD1    mov         eax,dword ptr [ebp-4]
 0049ADD4    call        TGraphicControl.Destroy
 0049ADD9    cmp         byte ptr [ebp-5],0
>0049ADDD    jle         0049ADE7
 0049ADDF    mov         eax,dword ptr [ebp-4]
 0049ADE2    call        @ClassDestroy
 0049ADE7    pop         ecx
 0049ADE8    pop         ecx
 0049ADE9    pop         ebp
 0049ADEA    ret
*}
end;

//0049ADEC
procedure sub_0049ADEC(?:TSplitter);
begin
{*
 0049ADEC    push        ebp
 0049ADED    mov         ebp,esp
 0049ADEF    push        ecx
 0049ADF0    mov         dword ptr [ebp-4],eax
 0049ADF3    push        412
 0049ADF8    push        0
 0049ADFA    mov         eax,dword ptr [ebp-4]
 0049ADFD    mov         eax,dword ptr [eax+30]
 0049AE00    call        TWinControl.GetHandle
 0049AE05    push        eax
 0049AE06    call        user32.GetDCEx
 0049AE0B    mov         edx,dword ptr [ebp-4]
 0049AE0E    mov         dword ptr [edx+180],eax
 0049AE14    mov         eax,dword ptr [ebp-4]
 0049AE17    cmp         byte ptr [eax+1A8],3
>0049AE1E    jne         0049AE84
 0049AE20    mov         eax,dword ptr [ebp-4]
 0049AE23    cmp         dword ptr [eax+170],0
>0049AE2A    jne         0049AE5D
 0049AE2C    mov         dl,1
 0049AE2E    mov         eax,[00485498];TBrush
 0049AE33    call        TBrush.Create;TBrush.Create
 0049AE38    mov         edx,dword ptr [ebp-4]
 0049AE3B    mov         dword ptr [edx+170],eax
 0049AE41    mov         edx,0FFFFFF
 0049AE46    xor         eax,eax
 0049AE48    call        0048FA88
 0049AE4D    mov         edx,eax
 0049AE4F    mov         eax,dword ptr [ebp-4]
 0049AE52    mov         eax,dword ptr [eax+170]
 0049AE58    call        0048775C
 0049AE5D    mov         eax,dword ptr [ebp-4]
 0049AE60    mov         eax,dword ptr [eax+170]
 0049AE66    call        TBrush.GetHandle
 0049AE6B    push        eax
 0049AE6C    mov         eax,dword ptr [ebp-4]
 0049AE6F    mov         eax,dword ptr [eax+180]
 0049AE75    push        eax
 0049AE76    call        gdi32.SelectObject
 0049AE7B    mov         edx,dword ptr [ebp-4]
 0049AE7E    mov         dword ptr [edx+1A4],eax
 0049AE84    pop         ecx
 0049AE85    pop         ebp
 0049AE86    ret
*}
end;

//0049AE88
procedure sub_0049AE88(?:TSplitter);
begin
{*
 0049AE88    push        ebp
 0049AE89    mov         ebp,esp
 0049AE8B    add         esp,0FFFFFFF4
 0049AE8E    mov         dword ptr [ebp-4],eax
 0049AE91    mov         eax,dword ptr [ebp-4]
 0049AE94    mov         al,byte ptr [eax+184]
 0049AE9A    xor         al,1
 0049AE9C    mov         edx,dword ptr [ebp-4]
 0049AE9F    mov         byte ptr [edx+184],al
 0049AEA5    lea         ecx,[ebp-0C]
 0049AEA8    mov         eax,dword ptr [ebp-4]
 0049AEAB    mov         edx,dword ptr [eax+44]
 0049AEAE    mov         eax,dword ptr [ebp-4]
 0049AEB1    mov         eax,dword ptr [eax+40]
 0049AEB4    call        Point
 0049AEB9    mov         eax,dword ptr [ebp-4]
 0049AEBC    mov         al,byte ptr [eax+5B]
 0049AEBF    add         al,0FD
 0049AEC1    sub         al,2
>0049AEC3    jae         0049AED9
 0049AEC5    mov         eax,dword ptr [ebp-4]
 0049AEC8    mov         eax,dword ptr [eax+40]
 0049AECB    mov         edx,dword ptr [ebp-4]
 0049AECE    add         eax,dword ptr [edx+1AC]
 0049AED4    mov         dword ptr [ebp-0C],eax
>0049AED7    jmp         0049AEEB
 0049AED9    mov         eax,dword ptr [ebp-4]
 0049AEDC    mov         eax,dword ptr [eax+44]
 0049AEDF    mov         edx,dword ptr [ebp-4]
 0049AEE2    add         eax,dword ptr [edx+1AC]
 0049AEE8    mov         dword ptr [ebp-8],eax
 0049AEEB    push        5A0049;gvar_005A0049
 0049AEF0    mov         eax,dword ptr [ebp-4]
 0049AEF3    mov         eax,dword ptr [eax+4C]
 0049AEF6    push        eax
 0049AEF7    mov         eax,dword ptr [ebp-4]
 0049AEFA    mov         eax,dword ptr [eax+48]
 0049AEFD    push        eax
 0049AEFE    mov         eax,dword ptr [ebp-8]
 0049AF01    push        eax
 0049AF02    mov         eax,dword ptr [ebp-0C]
 0049AF05    push        eax
 0049AF06    mov         eax,dword ptr [ebp-4]
 0049AF09    mov         eax,dword ptr [eax+180]
 0049AF0F    push        eax
 0049AF10    call        gdi32.PatBlt
 0049AF15    mov         esp,ebp
 0049AF17    pop         ebp
 0049AF18    ret
*}
end;

//0049AF1C
procedure sub_0049AF1C(?:TSplitter);
begin
{*
 0049AF1C    push        ebp
 0049AF1D    mov         ebp,esp
 0049AF1F    push        ecx
 0049AF20    mov         dword ptr [ebp-4],eax
 0049AF23    mov         eax,dword ptr [ebp-4]
 0049AF26    cmp         dword ptr [eax+1A4],0
>0049AF2D    je          0049AF48
 0049AF2F    mov         eax,dword ptr [ebp-4]
 0049AF32    mov         eax,dword ptr [eax+1A4]
 0049AF38    push        eax
 0049AF39    mov         eax,dword ptr [ebp-4]
 0049AF3C    mov         eax,dword ptr [eax+180]
 0049AF42    push        eax
 0049AF43    call        gdi32.SelectObject
 0049AF48    mov         eax,dword ptr [ebp-4]
 0049AF4B    mov         eax,dword ptr [eax+180]
 0049AF51    push        eax
 0049AF52    mov         eax,dword ptr [ebp-4]
 0049AF55    mov         eax,dword ptr [eax+30]
 0049AF58    call        TWinControl.GetHandle
 0049AF5D    push        eax
 0049AF5E    call        user32.ReleaseDC
 0049AF63    mov         eax,dword ptr [ebp-4]
 0049AF66    cmp         dword ptr [eax+170],0
>0049AF6D    je          0049AF88
 0049AF6F    mov         eax,dword ptr [ebp-4]
 0049AF72    mov         eax,dword ptr [eax+170]
 0049AF78    call        TObject.Free
 0049AF7D    mov         eax,dword ptr [ebp-4]
 0049AF80    xor         edx,edx
 0049AF82    mov         dword ptr [eax+170],edx
 0049AF88    pop         ecx
 0049AF89    pop         ebp
 0049AF8A    ret
*}
end;

//0049AF8C
{*function sub_0049AF8C(?:TSplitter):?;
begin
 0049AF8C    push        ebp
 0049AF8D    mov         ebp,esp
 0049AF8F    add         esp,0FFFFFFD8
 0049AF92    mov         dword ptr [ebp-4],eax
 0049AF95    xor         eax,eax
 0049AF97    mov         dword ptr [ebp-8],eax
 0049AF9A    lea         ecx,[ebp-10]
 0049AF9D    mov         eax,dword ptr [ebp-4]
 0049AFA0    mov         edx,dword ptr [eax+44]
 0049AFA3    mov         eax,dword ptr [ebp-4]
 0049AFA6    mov         eax,dword ptr [eax+40]
 0049AFA9    call        Point
 0049AFAE    mov         eax,dword ptr [ebp-4]
 0049AFB1    mov         al,byte ptr [eax+5B]
 0049AFB4    dec         al
>0049AFB6    je          0049AFD9
 0049AFB8    dec         al
>0049AFBA    je          0049AFDE
 0049AFBC    dec         al
>0049AFBE    je          0049AFC9
 0049AFC0    dec         al
>0049AFC2    je          0049AFCE
>0049AFC4    jmp         0049B097
 0049AFC9    dec         dword ptr [ebp-10]
>0049AFCC    jmp         0049AFE7
 0049AFCE    mov         eax,dword ptr [ebp-4]
 0049AFD1    mov         eax,dword ptr [eax+48]
 0049AFD4    add         dword ptr [ebp-10],eax
>0049AFD7    jmp         0049AFE7
 0049AFD9    dec         dword ptr [ebp-0C]
>0049AFDC    jmp         0049AFE7
 0049AFDE    mov         eax,dword ptr [ebp-4]
 0049AFE1    mov         eax,dword ptr [eax+4C]
 0049AFE4    add         dword ptr [ebp-0C],eax
 0049AFE7    mov         eax,dword ptr [ebp-4]
 0049AFEA    mov         eax,dword ptr [eax+30]
 0049AFED    call        004CF618
 0049AFF2    dec         eax
 0049AFF3    test        eax,eax
>0049AFF5    jl          0049B092
 0049AFFB    inc         eax
 0049AFFC    mov         dword ptr [ebp-18],eax
 0049AFFF    mov         dword ptr [ebp-14],0
 0049B006    mov         edx,dword ptr [ebp-14]
 0049B009    mov         eax,dword ptr [ebp-4]
 0049B00C    mov         eax,dword ptr [eax+30]
 0049B00F    call        004CF5AC
 0049B014    mov         dword ptr [ebp-8],eax
 0049B017    mov         eax,dword ptr [ebp-8]
 0049B01A    cmp         byte ptr [eax+57],0
>0049B01E    je          0049B086
 0049B020    mov         eax,dword ptr [ebp-8]
 0049B023    mov         edx,dword ptr [eax]
 0049B025    call        dword ptr [edx+50]
 0049B028    test        al,al
>0049B02A    je          0049B086
 0049B02C    lea         edx,[ebp-28]
 0049B02F    mov         eax,dword ptr [ebp-8]
 0049B032    call        004CA6AC
 0049B037    mov         eax,dword ptr [ebp-20]
 0049B03A    sub         eax,dword ptr [ebp-28]
>0049B03D    jne         0049B055
 0049B03F    mov         eax,dword ptr [ebp-4]
 0049B042    mov         al,byte ptr [eax+5B]
 0049B045    sub         al,1
>0049B047    je          0049B04D
 0049B049    sub         al,2
>0049B04B    jne         0049B052
 0049B04D    dec         dword ptr [ebp-28]
>0049B050    jmp         0049B055
 0049B052    inc         dword ptr [ebp-20]
 0049B055    mov         eax,dword ptr [ebp-1C]
 0049B058    sub         eax,dword ptr [ebp-24]
>0049B05B    jne         0049B073
 0049B05D    mov         eax,dword ptr [ebp-4]
 0049B060    mov         al,byte ptr [eax+5B]
 0049B063    sub         al,1
>0049B065    je          0049B06B
 0049B067    sub         al,2
>0049B069    jne         0049B070
 0049B06B    dec         dword ptr [ebp-24]
>0049B06E    jmp         0049B073
 0049B070    inc         dword ptr [ebp-1C]
 0049B073    push        dword ptr [ebp-0C]
 0049B076    push        dword ptr [ebp-10]
 0049B079    lea         eax,[ebp-28]
 0049B07C    push        eax
 0049B07D    call        user32.PtInRect
 0049B082    test        eax,eax
>0049B084    jne         0049B097
 0049B086    inc         dword ptr [ebp-14]
 0049B089    dec         dword ptr [ebp-18]
>0049B08C    jne         0049B006
 0049B092    xor         eax,eax
 0049B094    mov         dword ptr [ebp-8],eax
 0049B097    mov         eax,dword ptr [ebp-8]
 0049B09A    mov         esp,ebp
 0049B09C    pop         ebp
 0049B09D    ret
end;*}

//0049B0A0
procedure TSplitter.sub_0049B0A0;
begin
{*
 0049B0A0    push        ebp
 0049B0A1    mov         ebp,esp
 0049B0A3    push        ecx
 0049B0A4    mov         dword ptr [ebp-4],eax
 0049B0A7    mov         eax,dword ptr [ebp-4]
 0049B0AA    call        TControl.sub_004C9ED8
 0049B0AF    mov         eax,dword ptr [ebp-4]
 0049B0B2    cmp         word ptr [eax+78],0FFFFFFF1;TSplitter.Cursor:TCursor
>0049B0B7    je          0049B0C3
 0049B0B9    mov         eax,dword ptr [ebp-4]
 0049B0BC    cmp         word ptr [eax+78],0FFFFFFF2;TSplitter.Cursor:TCursor
>0049B0C1    jne         0049B0E8
 0049B0C3    mov         eax,dword ptr [ebp-4]
 0049B0C6    mov         al,byte ptr [eax+5B];TSplitter.FAlign:TAlign
 0049B0C9    dec         eax
 0049B0CA    sub         al,2
>0049B0CC    jae         0049B0DC
 0049B0CE    mov         dx,0FFF1
 0049B0D2    mov         eax,dword ptr [ebp-4]
 0049B0D5    call        TSplitter.SetCursor
>0049B0DA    jmp         0049B0E8
 0049B0DC    mov         dx,0FFF2
 0049B0E0    mov         eax,dword ptr [ebp-4]
 0049B0E3    call        TSplitter.SetCursor
 0049B0E8    pop         ecx
 0049B0E9    pop         ebp
 0049B0EA    ret
*}
end;

//0049B0EC
procedure sub_0049B0EC;
begin
{*
 0049B0EC    push        ebp
 0049B0ED    mov         ebp,esp
 0049B0EF    add         esp,0FFFFFFD4
 0049B0F2    push        ebx
 0049B0F3    mov         dword ptr [ebp-4],eax
 0049B0F6    lea         edx,[ebp-1C]
 0049B0F9    mov         eax,dword ptr [ebp-4]
 0049B0FC    mov         ecx,dword ptr [eax]
 0049B0FE    call        dword ptr [ecx+44];TSplitter.sub_004CA73C
 0049B101    mov         eax,dword ptr [ebp-4]
 0049B104    mov         eax,dword ptr [eax+160];TSplitter..........................................................
 0049B10A    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 0049B10D    mov         edx,dword ptr [ebp-4]
 0049B110    mov         edx,dword ptr [edx+70];TSplitter.FColor:TColor
 0049B113    call        TBrush.SetColor
 0049B118    lea         edx,[ebp-2C]
 0049B11B    mov         eax,dword ptr [ebp-4]
 0049B11E    mov         ecx,dword ptr [eax]
 0049B120    call        dword ptr [ecx+44];TSplitter.sub_004CA73C
 0049B123    lea         edx,[ebp-2C]
 0049B126    mov         eax,dword ptr [ebp-4]
 0049B129    mov         eax,dword ptr [eax+160];TSplitter..........................................................
 0049B12F    call        TCanvas.FillRect
 0049B134    mov         eax,dword ptr [ebp-4]
 0049B137    cmp         byte ptr [eax+16D],0;TSplitter.Beveled:Boolean
>0049B13E    je          0049B1F6
 0049B144    mov         eax,dword ptr [ebp-4]
 0049B147    mov         al,byte ptr [eax+5B];TSplitter.FAlign:TAlign
 0049B14A    add         al,0FD
 0049B14C    sub         al,2
>0049B14E    jae         0049B15F
 0049B150    push        2
 0049B152    push        0FF
 0049B154    lea         eax,[ebp-1C]
 0049B157    push        eax
 0049B158    call        user32.InflateRect
>0049B15D    jmp         0049B16C
 0049B15F    push        0FF
 0049B161    push        2
 0049B163    lea         eax,[ebp-1C]
 0049B166    push        eax
 0049B167    call        user32.InflateRect
 0049B16C    push        1
 0049B16E    push        1
 0049B170    lea         eax,[ebp-1C]
 0049B173    push        eax
 0049B174    call        user32.OffsetRect
 0049B179    mov         eax,0FF000014
 0049B17E    call        00486830
 0049B183    push        eax
 0049B184    call        gdi32.CreateSolidBrush
 0049B189    mov         dword ptr [ebp-8],eax
 0049B18C    mov         eax,dword ptr [ebp-8]
 0049B18F    push        eax
 0049B190    lea         eax,[ebp-1C]
 0049B193    push        eax
 0049B194    mov         eax,dword ptr [ebp-4]
 0049B197    mov         eax,dword ptr [eax+160];TSplitter..........................................................
 0049B19D    call        TCanvas.GetHandle
 0049B1A2    push        eax
 0049B1A3    call        user32.FrameRect
 0049B1A8    mov         eax,dword ptr [ebp-8]
 0049B1AB    push        eax
 0049B1AC    call        gdi32.DeleteObject
 0049B1B1    push        0FE
 0049B1B3    push        0FE
 0049B1B5    lea         eax,[ebp-1C]
 0049B1B8    push        eax
 0049B1B9    call        user32.OffsetRect
 0049B1BE    mov         eax,0FF000010
 0049B1C3    call        00486830
 0049B1C8    push        eax
 0049B1C9    call        gdi32.CreateSolidBrush
 0049B1CE    mov         dword ptr [ebp-8],eax
 0049B1D1    mov         eax,dword ptr [ebp-8]
 0049B1D4    push        eax
 0049B1D5    lea         eax,[ebp-1C]
 0049B1D8    push        eax
 0049B1D9    mov         eax,dword ptr [ebp-4]
 0049B1DC    mov         eax,dword ptr [eax+160];TSplitter..........................................................
 0049B1E2    call        TCanvas.GetHandle
 0049B1E7    push        eax
 0049B1E8    call        user32.FrameRect
 0049B1ED    mov         eax,dword ptr [ebp-8]
 0049B1F0    push        eax
 0049B1F1    call        gdi32.DeleteObject
 0049B1F6    mov         eax,dword ptr [ebp-4]
 0049B1F9    test        byte ptr [eax+1C],10;TSplitter.FComponentState:TComponentState
>0049B1FD    je          0049B260
 0049B1FF    mov         eax,dword ptr [ebp-4]
 0049B202    mov         eax,dword ptr [eax+160];TSplitter..........................................................
 0049B208    mov         dword ptr [ebp-0C],eax
 0049B20B    mov         eax,dword ptr [ebp-0C]
 0049B20E    mov         eax,dword ptr [eax+10];TCanvas.Pen:TPen
 0049B211    mov         dl,2
 0049B213    call        TPen.SetStyle
 0049B218    mov         eax,dword ptr [ebp-0C]
 0049B21B    mov         eax,dword ptr [eax+10];TCanvas.Pen:TPen
 0049B21E    mov         dl,0E
 0049B220    call        TPen.SetMode
 0049B225    mov         eax,dword ptr [ebp-0C]
 0049B228    mov         eax,dword ptr [eax+10];TCanvas.Pen:TPen
 0049B22B    mov         edx,0FFD8CE
 0049B230    call        TPen.SetColor
 0049B235    mov         eax,dword ptr [ebp-0C]
 0049B238    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 0049B23B    mov         dl,1
 0049B23D    call        TBrush.SetStyle
 0049B242    mov         eax,dword ptr [ebp-4]
 0049B245    call        TControl.GetClientWidth
 0049B24A    push        eax
 0049B24B    mov         eax,dword ptr [ebp-4]
 0049B24E    call        TControl.GetClientHeight
 0049B253    push        eax
 0049B254    xor         ecx,ecx
 0049B256    xor         edx,edx
 0049B258    mov         eax,dword ptr [ebp-0C]
 0049B25B    call        00487F84
 0049B260    mov         eax,dword ptr [ebp-4]
 0049B263    cmp         word ptr [eax+1C2],0;TSplitter.?f1C2:word
>0049B26B    je          0049B27F
 0049B26D    mov         ebx,dword ptr [ebp-4]
 0049B270    mov         edx,dword ptr [ebp-4]
 0049B273    mov         eax,dword ptr [ebx+1C4];TSplitter.?f1C4:dword
 0049B279    call        dword ptr [ebx+1C0];TSplitter.OnPaint
 0049B27F    pop         ebx
 0049B280    mov         esp,ebp
 0049B282    pop         ebp
 0049B283    ret
*}
end;

//0049B284
{*function sub_0049B284(?:?):?;
begin
 0049B284    push        ebp
 0049B285    mov         ebp,esp
 0049B287    add         esp,0FFFFFFF4
 0049B28A    mov         dword ptr [ebp-8],edx
 0049B28D    mov         dword ptr [ebp-4],eax
 0049B290    mov         edx,dword ptr [ebp-8]
 0049B293    mov         eax,dword ptr [ebp-4]
 0049B296    mov         ecx,dword ptr [eax]
 0049B298    call        dword ptr [ecx+90];TSplitter.sub_0049B2D4
 0049B29E    mov         byte ptr [ebp-9],al
 0049B2A1    cmp         byte ptr [ebp-9],0
>0049B2A5    je          0049B2CA
 0049B2A7    mov         eax,dword ptr [ebp-8]
 0049B2AA    mov         eax,dword ptr [eax]
 0049B2AC    mov         edx,dword ptr [ebp-4]
 0049B2AF    cmp         eax,dword ptr [edx+188];TSplitter.MinSize:NaturalNumber
>0049B2B5    jg          0049B2CA
 0049B2B7    mov         eax,dword ptr [ebp-4]
 0049B2BA    cmp         byte ptr [eax+16C],0;TSplitter.AutoSnap:Boolean
>0049B2C1    je          0049B2CA
 0049B2C3    mov         eax,dword ptr [ebp-8]
 0049B2C6    xor         edx,edx
 0049B2C8    mov         dword ptr [eax],edx
 0049B2CA    mov         al,byte ptr [ebp-9]
 0049B2CD    mov         esp,ebp
 0049B2CF    pop         ebp
 0049B2D0    ret
end;*}

//0049B2D4
{*function sub_0049B2D4(?:?):?;
begin
 0049B2D4    push        ebp
 0049B2D5    mov         ebp,esp
 0049B2D7    add         esp,0FFFFFFF4
 0049B2DA    push        ebx
 0049B2DB    mov         dword ptr [ebp-8],edx
 0049B2DE    mov         dword ptr [ebp-4],eax
 0049B2E1    mov         byte ptr [ebp-9],1
 0049B2E5    mov         eax,dword ptr [ebp-4]
 0049B2E8    cmp         word ptr [eax+1B2],0;TSplitter.?f1B2:word
>0049B2F0    je          0049B30B
 0049B2F2    lea         eax,[ebp-9]
 0049B2F5    push        eax
 0049B2F6    mov         ecx,dword ptr [ebp-8]
 0049B2F9    mov         ebx,dword ptr [ebp-4]
 0049B2FC    mov         edx,dword ptr [ebp-4]
 0049B2FF    mov         eax,dword ptr [ebx+1B4];TSplitter.?f1B4:dword
 0049B305    call        dword ptr [ebx+1B0];TSplitter.OnCanResize
 0049B30B    mov         al,byte ptr [ebp-9]
 0049B30E    pop         ebx
 0049B30F    mov         esp,ebp
 0049B311    pop         ebp
 0049B312    ret
end;*}

//0049B314
{*procedure TSplitter.sub_0049B314(?:?; ?:?; ?:?; ?:?);
begin
 0049B314    push        ebp
 0049B315    mov         ebp,esp
 0049B317    add         esp,0FFFFFFDC
 0049B31A    mov         byte ptr [ebp-6],cl
 0049B31D    mov         byte ptr [ebp-5],dl
 0049B320    mov         dword ptr [ebp-4],eax
 0049B323    mov         eax,dword ptr [ebp+0C]
 0049B326    push        eax
 0049B327    mov         eax,dword ptr [ebp+8]
 0049B32A    push        eax
 0049B32B    mov         cl,byte ptr [ebp-6]
 0049B32E    mov         dl,byte ptr [ebp-5]
 0049B331    mov         eax,dword ptr [ebp-4]
 0049B334    call        TControl.sub_004CCD68
 0049B339    cmp         byte ptr [ebp-5],0
>0049B33D    jne         0049B53E
 0049B343    mov         eax,dword ptr [ebp-4]
 0049B346    call        0049AF8C
 0049B34B    mov         edx,dword ptr [ebp-4]
 0049B34E    mov         dword ptr [edx+174],eax;TSplitter.FControl:TControl
 0049B354    lea         ecx,[ebp-24]
 0049B357    mov         edx,dword ptr [ebp+8]
 0049B35A    mov         eax,dword ptr [ebp+0C]
 0049B35D    call        Point
 0049B362    mov         eax,dword ptr [ebp-4]
 0049B365    mov         edx,dword ptr [ebp-24]
 0049B368    mov         dword ptr [eax+178],edx;TSplitter.FDownPos:TPoint
 0049B36E    mov         edx,dword ptr [ebp-20]
 0049B371    mov         dword ptr [eax+17C],edx
 0049B377    mov         eax,dword ptr [ebp-4]
 0049B37A    cmp         dword ptr [eax+174],0;TSplitter.FControl:TControl
>0049B381    je          0049B53E
 0049B387    mov         eax,dword ptr [ebp-4]
 0049B38A    mov         al,byte ptr [eax+5B];TSplitter.FAlign:TAlign
 0049B38D    add         al,0FD
 0049B38F    sub         al,2
>0049B391    jae         0049B426
 0049B397    mov         eax,dword ptr [ebp-4]
 0049B39A    mov         eax,dword ptr [eax+30];TSplitter.FParent:TWinControl
 0049B39D    call        TControl.GetClientWidth
 0049B3A2    mov         edx,dword ptr [ebp-4]
 0049B3A5    sub         eax,dword ptr [edx+188]
 0049B3AB    mov         edx,dword ptr [ebp-4]
 0049B3AE    mov         dword ptr [edx+18C],eax;TSplitter.FMaxSize:Integer
 0049B3B4    mov         eax,dword ptr [ebp-4]
 0049B3B7    mov         eax,dword ptr [eax+30];TSplitter.FParent:TWinControl
 0049B3BA    call        004CF618
 0049B3BF    dec         eax
 0049B3C0    test        eax,eax
>0049B3C2    jl          0049B40C
 0049B3C4    inc         eax
 0049B3C5    mov         dword ptr [ebp-10],eax
 0049B3C8    mov         dword ptr [ebp-0C],0
 0049B3CF    mov         edx,dword ptr [ebp-0C]
 0049B3D2    mov         eax,dword ptr [ebp-4]
 0049B3D5    mov         eax,dword ptr [eax+30];TSplitter.FParent:TWinControl
 0049B3D8    call        004CF5AC
 0049B3DD    mov         dword ptr [ebp-14],eax
 0049B3E0    mov         eax,dword ptr [ebp-14]
 0049B3E3    cmp         byte ptr [eax+57],0
>0049B3E7    je          0049B404
 0049B3E9    mov         eax,dword ptr [ebp-14]
 0049B3EC    mov         al,byte ptr [eax+5B]
 0049B3EF    add         al,0FD
 0049B3F1    sub         al,2
>0049B3F3    jae         0049B404
 0049B3F5    mov         eax,dword ptr [ebp-14]
 0049B3F8    mov         eax,dword ptr [eax+48]
 0049B3FB    mov         edx,dword ptr [ebp-4]
 0049B3FE    sub         dword ptr [edx+18C],eax
 0049B404    inc         dword ptr [ebp-0C]
 0049B407    dec         dword ptr [ebp-10]
>0049B40A    jne         0049B3CF
 0049B40C    mov         eax,dword ptr [ebp-4]
 0049B40F    mov         eax,dword ptr [eax+174];TSplitter.FControl:TControl
 0049B415    mov         eax,dword ptr [eax+48];TControl.Width:Integer
 0049B418    mov         edx,dword ptr [ebp-4]
 0049B41B    add         dword ptr [edx+18C],eax;TSplitter.FMaxSize:Integer
>0049B421    jmp         0049B4A6
 0049B426    mov         eax,dword ptr [ebp-4]
 0049B429    mov         eax,dword ptr [eax+30];TSplitter.FParent:TWinControl
 0049B42C    call        TControl.GetClientHeight
 0049B431    mov         edx,dword ptr [ebp-4]
 0049B434    sub         eax,dword ptr [edx+188]
 0049B43A    mov         edx,dword ptr [ebp-4]
 0049B43D    mov         dword ptr [edx+18C],eax;TSplitter.FMaxSize:Integer
 0049B443    mov         eax,dword ptr [ebp-4]
 0049B446    mov         eax,dword ptr [eax+30];TSplitter.FParent:TWinControl
 0049B449    call        004CF618
 0049B44E    dec         eax
 0049B44F    test        eax,eax
>0049B451    jl          0049B491
 0049B453    inc         eax
 0049B454    mov         dword ptr [ebp-10],eax
 0049B457    mov         dword ptr [ebp-0C],0
 0049B45E    mov         edx,dword ptr [ebp-0C]
 0049B461    mov         eax,dword ptr [ebp-4]
 0049B464    mov         eax,dword ptr [eax+30];TSplitter.FParent:TWinControl
 0049B467    call        004CF5AC
 0049B46C    mov         dword ptr [ebp-18],eax
 0049B46F    mov         eax,dword ptr [ebp-18]
 0049B472    mov         al,byte ptr [eax+5B]
 0049B475    dec         eax
 0049B476    sub         al,2
>0049B478    jae         0049B489
 0049B47A    mov         eax,dword ptr [ebp-18]
 0049B47D    mov         eax,dword ptr [eax+4C]
 0049B480    mov         edx,dword ptr [ebp-4]
 0049B483    sub         dword ptr [edx+18C],eax
 0049B489    inc         dword ptr [ebp-0C]
 0049B48C    dec         dword ptr [ebp-10]
>0049B48F    jne         0049B45E
 0049B491    mov         eax,dword ptr [ebp-4]
 0049B494    mov         eax,dword ptr [eax+174];TSplitter.FControl:TControl
 0049B49A    mov         eax,dword ptr [eax+4C];TControl.Height:Integer
 0049B49D    mov         edx,dword ptr [ebp-4]
 0049B4A0    add         dword ptr [edx+18C],eax;TSplitter.FMaxSize:Integer
 0049B4A6    mov         ecx,dword ptr [ebp+8]
 0049B4A9    mov         edx,dword ptr [ebp+0C]
 0049B4AC    mov         eax,dword ptr [ebp-4]
 0049B4AF    call        0049B82C
 0049B4B4    mov         eax,dword ptr [ebp-4]
 0049B4B7    call        0049ADEC
 0049B4BC    mov         eax,dword ptr [ebp-4]
 0049B4BF    call        004E7F1C
 0049B4C4    mov         dword ptr [ebp-1C],eax
 0049B4C7    mov         eax,dword ptr [ebp-1C]
 0049B4CA    cmp         dword ptr [eax+220],0
>0049B4D1    je          0049B525
 0049B4D3    mov         eax,dword ptr [ebp-1C]
 0049B4D6    mov         eax,dword ptr [eax+220]
 0049B4DC    mov         edx,dword ptr [ebp-4]
 0049B4DF    mov         dword ptr [edx+168],eax;TSplitter.FActiveControl:TWinControl
 0049B4E5    mov         eax,dword ptr [ebp-4]
 0049B4E8    mov         eax,dword ptr [eax+168];TSplitter.FActiveControl:TWinControl
 0049B4EE    mov         edx,dword ptr [ebp-4]
 0049B4F1    mov         ecx,dword ptr [eax+1D8];TWinControl.FOnKeyDown:TKeyEvent
 0049B4F7    mov         dword ptr [edx+198],ecx;TSplitter.FOldKeyDown:TKeyEvent
 0049B4FD    mov         ecx,dword ptr [eax+1DC];TWinControl.?f1DC:TMessageForm
 0049B503    mov         dword ptr [edx+19C],ecx;TSplitter.?f19C:TMessageForm
 0049B509    mov         eax,dword ptr [ebp-4]
 0049B50C    mov         eax,dword ptr [eax+168];TSplitter.FActiveControl:TWinControl
 0049B512    mov         edx,dword ptr [ebp-4]
 0049B515    mov         dword ptr [eax+1DC],edx;TWinControl.?f1DC:TMessageForm
 0049B51B    mov         dword ptr [eax+1D8],49B990;TWinControl.FOnKeyDown:TKeyEvent sub_0049B990
 0049B525    mov         eax,dword ptr [ebp-4]
 0049B528    mov         al,byte ptr [eax+1A8];TSplitter.ResizeStyle:TResizeStyle
 0049B52E    sub         al,1
>0049B530    je          0049B536
 0049B532    sub         al,2
>0049B534    jne         0049B53E
 0049B536    mov         eax,dword ptr [ebp-4]
 0049B539    call        0049AE88
 0049B53E    mov         esp,ebp
 0049B540    pop         ebp
 0049B541    ret         8
end;*}

//0049B544
procedure sub_0049B544(?:TSplitter);
begin
{*
 0049B544    push        ebp
 0049B545    mov         ebp,esp
 0049B547    push        ecx
 0049B548    push        ebx
 0049B549    mov         dword ptr [ebp-4],eax
 0049B54C    mov         eax,dword ptr [ebp-4]
 0049B54F    mov         eax,dword ptr [eax+190]
 0049B555    mov         edx,dword ptr [ebp-4]
 0049B558    cmp         eax,dword ptr [edx+1A0]
>0049B55E    je          0049B6F5
 0049B564    mov         eax,dword ptr [ebp-4]
 0049B567    mov         al,byte ptr [eax+5B]
 0049B56A    dec         al
>0049B56C    je          0049B59F
 0049B56E    dec         al
>0049B570    je          0049B63A
 0049B576    dec         al
>0049B578    je          0049B583
 0049B57A    dec         al
>0049B57C    je          0049B5BB
>0049B57E    jmp         0049B6B9
 0049B583    mov         eax,dword ptr [ebp-4]
 0049B586    mov         edx,dword ptr [eax+190]
 0049B58C    mov         eax,dword ptr [ebp-4]
 0049B58F    mov         eax,dword ptr [eax+174]
 0049B595    call        TControl.SetWidth
>0049B59A    jmp         0049B6B9
 0049B59F    mov         eax,dword ptr [ebp-4]
 0049B5A2    mov         edx,dword ptr [eax+190]
 0049B5A8    mov         eax,dword ptr [ebp-4]
 0049B5AB    mov         eax,dword ptr [eax+174]
 0049B5B1    call        TControl.SetHeight
>0049B5B6    jmp         0049B6B9
 0049B5BB    mov         eax,dword ptr [ebp-4]
 0049B5BE    mov         eax,dword ptr [eax+30]
 0049B5C1    call        TWinControl.DisableAlign
 0049B5C6    xor         eax,eax
 0049B5C8    push        ebp
 0049B5C9    push        49B633
 0049B5CE    push        dword ptr fs:[eax]
 0049B5D1    mov         dword ptr fs:[eax],esp
 0049B5D4    mov         eax,dword ptr [ebp-4]
 0049B5D7    mov         eax,dword ptr [eax+174]
 0049B5DD    mov         edx,dword ptr [eax+48]
 0049B5E0    mov         eax,dword ptr [ebp-4]
 0049B5E3    sub         edx,dword ptr [eax+190]
 0049B5E9    mov         eax,dword ptr [ebp-4]
 0049B5EC    mov         eax,dword ptr [eax+174]
 0049B5F2    add         edx,dword ptr [eax+40]
 0049B5F5    mov         eax,dword ptr [ebp-4]
 0049B5F8    mov         eax,dword ptr [eax+174]
 0049B5FE    call        TTabSheet.SetLeft
 0049B603    mov         eax,dword ptr [ebp-4]
 0049B606    mov         edx,dword ptr [eax+190]
 0049B60C    mov         eax,dword ptr [ebp-4]
 0049B60F    mov         eax,dword ptr [eax+174]
 0049B615    call        TControl.SetWidth
 0049B61A    xor         eax,eax
 0049B61C    pop         edx
 0049B61D    pop         ecx
 0049B61E    pop         ecx
 0049B61F    mov         dword ptr fs:[eax],edx
 0049B622    push        49B6B9
 0049B627    mov         eax,dword ptr [ebp-4]
 0049B62A    mov         eax,dword ptr [eax+30]
 0049B62D    call        TWinControl.EnableAlign
 0049B632    ret
>0049B633    jmp         @HandleFinally
>0049B638    jmp         0049B627
 0049B63A    mov         eax,dword ptr [ebp-4]
 0049B63D    mov         eax,dword ptr [eax+30]
 0049B640    call        TWinControl.DisableAlign
 0049B645    xor         eax,eax
 0049B647    push        ebp
 0049B648    push        49B6B2
 0049B64D    push        dword ptr fs:[eax]
 0049B650    mov         dword ptr fs:[eax],esp
 0049B653    mov         eax,dword ptr [ebp-4]
 0049B656    mov         eax,dword ptr [eax+174]
 0049B65C    mov         edx,dword ptr [eax+4C]
 0049B65F    mov         eax,dword ptr [ebp-4]
 0049B662    sub         edx,dword ptr [eax+190]
 0049B668    mov         eax,dword ptr [ebp-4]
 0049B66B    mov         eax,dword ptr [eax+174]
 0049B671    add         edx,dword ptr [eax+44]
 0049B674    mov         eax,dword ptr [ebp-4]
 0049B677    mov         eax,dword ptr [eax+174]
 0049B67D    call        TTabSheet.SetTop
 0049B682    mov         eax,dword ptr [ebp-4]
 0049B685    mov         edx,dword ptr [eax+190]
 0049B68B    mov         eax,dword ptr [ebp-4]
 0049B68E    mov         eax,dword ptr [eax+174]
 0049B694    call        TControl.SetHeight
 0049B699    xor         eax,eax
 0049B69B    pop         edx
 0049B69C    pop         ecx
 0049B69D    pop         ecx
 0049B69E    mov         dword ptr fs:[eax],edx
 0049B6A1    push        49B6B9
 0049B6A6    mov         eax,dword ptr [ebp-4]
 0049B6A9    mov         eax,dword ptr [eax+30]
 0049B6AC    call        TWinControl.EnableAlign
 0049B6B1    ret
>0049B6B2    jmp         @HandleFinally
>0049B6B7    jmp         0049B6A6
 0049B6B9    mov         eax,dword ptr [ebp-4]
 0049B6BC    mov         edx,dword ptr [eax]
 0049B6BE    call        dword ptr [edx+88]
 0049B6C4    mov         eax,dword ptr [ebp-4]
 0049B6C7    cmp         word ptr [eax+1BA],0
>0049B6CF    je          0049B6E3
 0049B6D1    mov         ebx,dword ptr [ebp-4]
 0049B6D4    mov         edx,dword ptr [ebp-4]
 0049B6D7    mov         eax,dword ptr [ebx+1BC]
 0049B6DD    call        dword ptr [ebx+1B8]
 0049B6E3    mov         eax,dword ptr [ebp-4]
 0049B6E6    mov         eax,dword ptr [eax+190]
 0049B6EC    mov         edx,dword ptr [ebp-4]
 0049B6EF    mov         dword ptr [edx+1A0],eax
 0049B6F5    pop         ebx
 0049B6F6    pop         ecx
 0049B6F7    pop         ebp
 0049B6F8    ret
*}
end;

//0049B6FC
{*procedure sub_0049B6FC(?:TSplitter; ?:?; ?:?; ?:?; ?:?);
begin
 0049B6FC    push        ebp
 0049B6FD    mov         ebp,esp
 0049B6FF    add         esp,0FFFFFFF0
 0049B702    mov         dword ptr [ebp-0C],ecx
 0049B705    mov         dword ptr [ebp-8],edx
 0049B708    mov         dword ptr [ebp-4],eax
 0049B70B    mov         eax,dword ptr [ebp-4]
 0049B70E    mov         al,byte ptr [eax+5B]
 0049B711    add         al,0FD
 0049B713    sub         al,2
>0049B715    jae         0049B72A
 0049B717    mov         eax,dword ptr [ebp-8]
 0049B71A    mov         edx,dword ptr [ebp-4]
 0049B71D    sub         eax,dword ptr [edx+178]
 0049B723    mov         edx,dword ptr [ebp+8]
 0049B726    mov         dword ptr [edx],eax
>0049B728    jmp         0049B73B
 0049B72A    mov         eax,dword ptr [ebp-0C]
 0049B72D    mov         edx,dword ptr [ebp-4]
 0049B730    sub         eax,dword ptr [edx+17C]
 0049B736    mov         edx,dword ptr [ebp+8]
 0049B739    mov         dword ptr [edx],eax
 0049B73B    xor         eax,eax
 0049B73D    mov         dword ptr [ebp-10],eax
 0049B740    mov         eax,dword ptr [ebp-4]
 0049B743    mov         al,byte ptr [eax+5B]
 0049B746    dec         al
>0049B748    je          0049B784
 0049B74A    dec         al
>0049B74C    je          0049B79A
 0049B74E    dec         al
>0049B750    je          0049B758
 0049B752    dec         al
>0049B754    je          0049B76E
>0049B756    jmp         0049B7AE
 0049B758    mov         eax,dword ptr [ebp-4]
 0049B75B    mov         eax,dword ptr [eax+174]
 0049B761    mov         eax,dword ptr [eax+48]
 0049B764    mov         edx,dword ptr [ebp+8]
 0049B767    add         eax,dword ptr [edx]
 0049B769    mov         dword ptr [ebp-10],eax
>0049B76C    jmp         0049B7AE
 0049B76E    mov         eax,dword ptr [ebp-4]
 0049B771    mov         eax,dword ptr [eax+174]
 0049B777    mov         eax,dword ptr [eax+48]
 0049B77A    mov         edx,dword ptr [ebp+8]
 0049B77D    sub         eax,dword ptr [edx]
 0049B77F    mov         dword ptr [ebp-10],eax
>0049B782    jmp         0049B7AE
 0049B784    mov         eax,dword ptr [ebp-4]
 0049B787    mov         eax,dword ptr [eax+174]
 0049B78D    mov         eax,dword ptr [eax+4C]
 0049B790    mov         edx,dword ptr [ebp+8]
 0049B793    add         eax,dword ptr [edx]
 0049B795    mov         dword ptr [ebp-10],eax
>0049B798    jmp         0049B7AE
 0049B79A    mov         eax,dword ptr [ebp-4]
 0049B79D    mov         eax,dword ptr [eax+174]
 0049B7A3    mov         eax,dword ptr [eax+4C]
 0049B7A6    mov         edx,dword ptr [ebp+8]
 0049B7A9    sub         eax,dword ptr [edx]
 0049B7AB    mov         dword ptr [ebp-10],eax
 0049B7AE    mov         eax,dword ptr [ebp+0C]
 0049B7B1    mov         edx,dword ptr [ebp-10]
 0049B7B4    mov         dword ptr [eax],edx
 0049B7B6    mov         eax,dword ptr [ebp-10]
 0049B7B9    mov         edx,dword ptr [ebp-4]
 0049B7BC    cmp         eax,dword ptr [edx+188]
>0049B7C2    jge         0049B7D4
 0049B7C4    mov         eax,dword ptr [ebp+0C]
 0049B7C7    mov         edx,dword ptr [ebp-4]
 0049B7CA    mov         edx,dword ptr [edx+188]
 0049B7D0    mov         dword ptr [eax],edx
>0049B7D2    jmp         0049B7F0
 0049B7D4    mov         eax,dword ptr [ebp-10]
 0049B7D7    mov         edx,dword ptr [ebp-4]
 0049B7DA    cmp         eax,dword ptr [edx+18C]
>0049B7E0    jle         0049B7F0
 0049B7E2    mov         eax,dword ptr [ebp+0C]
 0049B7E5    mov         edx,dword ptr [ebp-4]
 0049B7E8    mov         edx,dword ptr [edx+18C]
 0049B7EE    mov         dword ptr [eax],edx
 0049B7F0    mov         eax,dword ptr [ebp+0C]
 0049B7F3    mov         eax,dword ptr [eax]
 0049B7F5    cmp         eax,dword ptr [ebp-10]
>0049B7F8    je          0049B825
 0049B7FA    mov         eax,dword ptr [ebp-4]
 0049B7FD    mov         al,byte ptr [eax+5B]
 0049B800    sub         al,2
>0049B802    je          0049B808
 0049B804    sub         al,2
>0049B806    jne         0049B812
 0049B808    mov         eax,dword ptr [ebp+0C]
 0049B80B    mov         eax,dword ptr [eax]
 0049B80D    sub         dword ptr [ebp-10],eax
>0049B810    jmp         0049B81D
 0049B812    mov         eax,dword ptr [ebp+0C]
 0049B815    mov         eax,dword ptr [eax]
 0049B817    sub         eax,dword ptr [ebp-10]
 0049B81A    mov         dword ptr [ebp-10],eax
 0049B81D    mov         eax,dword ptr [ebp+8]
 0049B820    mov         edx,dword ptr [ebp-10]
 0049B823    add         dword ptr [eax],edx
 0049B825    mov         esp,ebp
 0049B827    pop         ebp
 0049B828    ret         8
end;*}

//0049B82C
{*procedure sub_0049B82C(?:TSplitter; ?:?; ?:?);
begin
 0049B82C    push        ebp
 0049B82D    mov         ebp,esp
 0049B82F    add         esp,0FFFFFFF4
 0049B832    mov         dword ptr [ebp-0C],ecx
 0049B835    mov         dword ptr [ebp-8],edx
 0049B838    mov         dword ptr [ebp-4],eax
 0049B83B    mov         eax,dword ptr [ebp-4]
 0049B83E    add         eax,190;TSplitter.FNewSize:Integer
 0049B843    push        eax
 0049B844    mov         eax,dword ptr [ebp-4]
 0049B847    add         eax,1AC;TSplitter.FSplit:Integer
 0049B84C    push        eax
 0049B84D    mov         ecx,dword ptr [ebp-0C]
 0049B850    mov         edx,dword ptr [ebp-8]
 0049B853    mov         eax,dword ptr [ebp-4]
 0049B856    call        0049B6FC
 0049B85B    mov         esp,ebp
 0049B85D    pop         ebp
 0049B85E    ret
end;*}

//0049B860
{*procedure TSplitter.sub_0049B860(?:?; ?:?; ?:?);
begin
 0049B860    push        ebp
 0049B861    mov         ebp,esp
 0049B863    add         esp,0FFFFFFEC
 0049B866    mov         dword ptr [ebp-0C],ecx
 0049B869    mov         byte ptr [ebp-5],dl
 0049B86C    mov         dword ptr [ebp-4],eax
 0049B86F    mov         eax,dword ptr [ebp+8]
 0049B872    push        eax
 0049B873    mov         ecx,dword ptr [ebp-0C]
 0049B876    mov         dl,byte ptr [ebp-5]
 0049B879    mov         eax,dword ptr [ebp-4]
 0049B87C    call        TControl.sub_004CD0D4
 0049B881    test        byte ptr [ebp-5],8
>0049B885    je          0049B921
 0049B88B    mov         eax,dword ptr [ebp-4]
 0049B88E    cmp         dword ptr [eax+174],0;TSplitter.FControl:TControl
>0049B895    je          0049B921
 0049B89B    lea         eax,[ebp-10]
 0049B89E    push        eax
 0049B89F    lea         eax,[ebp-14]
 0049B8A2    push        eax
 0049B8A3    mov         ecx,dword ptr [ebp+8]
 0049B8A6    mov         edx,dword ptr [ebp-0C]
 0049B8A9    mov         eax,dword ptr [ebp-4]
 0049B8AC    call        0049B6FC
 0049B8B1    lea         edx,[ebp-10]
 0049B8B4    mov         eax,dword ptr [ebp-4]
 0049B8B7    mov         ecx,dword ptr [eax]
 0049B8B9    call        dword ptr [ecx+94];TSplitter.sub_0049B284
 0049B8BF    test        al,al
>0049B8C1    je          0049B921
 0049B8C3    mov         eax,dword ptr [ebp-4]
 0049B8C6    mov         al,byte ptr [eax+1A8];TSplitter.ResizeStyle:TResizeStyle
 0049B8CC    sub         al,1
>0049B8CE    je          0049B8D4
 0049B8D0    sub         al,2
>0049B8D2    jne         0049B8DC
 0049B8D4    mov         eax,dword ptr [ebp-4]
 0049B8D7    call        0049AE88
 0049B8DC    mov         eax,dword ptr [ebp-10]
 0049B8DF    mov         edx,dword ptr [ebp-4]
 0049B8E2    mov         dword ptr [edx+190],eax;TSplitter.FNewSize:Integer
 0049B8E8    mov         eax,dword ptr [ebp-14]
 0049B8EB    mov         edx,dword ptr [ebp-4]
 0049B8EE    mov         dword ptr [edx+1AC],eax;TSplitter.FSplit:Integer
 0049B8F4    mov         eax,dword ptr [ebp-4]
 0049B8F7    cmp         byte ptr [eax+1A8],2;TSplitter.ResizeStyle:TResizeStyle
>0049B8FE    jne         0049B908
 0049B900    mov         eax,dword ptr [ebp-4]
 0049B903    call        0049B544
 0049B908    mov         eax,dword ptr [ebp-4]
 0049B90B    mov         al,byte ptr [eax+1A8];TSplitter.ResizeStyle:TResizeStyle
 0049B911    sub         al,1
>0049B913    je          0049B919
 0049B915    sub         al,2
>0049B917    jne         0049B921
 0049B919    mov         eax,dword ptr [ebp-4]
 0049B91C    call        0049AE88
 0049B921    mov         esp,ebp
 0049B923    pop         ebp
 0049B924    ret         4
end;*}

//0049B928
{*procedure TSplitter.sub_0049B928(?:?; ?:?; ?:?; ?:?);
begin
 0049B928    push        ebp
 0049B929    mov         ebp,esp
 0049B92B    add         esp,0FFFFFFF8
 0049B92E    push        esi
 0049B92F    mov         byte ptr [ebp-6],cl
 0049B932    mov         byte ptr [ebp-5],dl
 0049B935    mov         dword ptr [ebp-4],eax
 0049B938    mov         eax,dword ptr [ebp+0C]
 0049B93B    push        eax
 0049B93C    mov         eax,dword ptr [ebp+8]
 0049B93F    push        eax
 0049B940    mov         cl,byte ptr [ebp-6]
 0049B943    mov         dl,byte ptr [ebp-5]
 0049B946    mov         eax,dword ptr [ebp-4]
 0049B949    call        TControl.sub_004CD1B0
 0049B94E    mov         eax,dword ptr [ebp-4]
 0049B951    cmp         dword ptr [eax+174],0;TSplitter.FControl:TControl
>0049B958    je          0049B987
 0049B95A    mov         eax,dword ptr [ebp-4]
 0049B95D    mov         al,byte ptr [eax+1A8];TSplitter.ResizeStyle:TResizeStyle
 0049B963    sub         al,1
>0049B965    je          0049B96B
 0049B967    sub         al,2
>0049B969    jne         0049B973
 0049B96B    mov         eax,dword ptr [ebp-4]
 0049B96E    call        0049AE88
 0049B973    mov         eax,dword ptr [ebp-4]
 0049B976    call        0049B544
 0049B97B    mov         eax,dword ptr [ebp-4]
 0049B97E    mov         si,0FFC7
 0049B982    call        @CallDynaInst;TSplitter.sub_0049BA10
 0049B987    pop         esi
 0049B988    pop         ecx
 0049B989    pop         ecx
 0049B98A    pop         ebp
 0049B98B    ret         8
end;*}

//0049B990
{*procedure sub_0049B990(?:?; ?:?; ?:?; ?:?);
begin
 0049B990    push        ebp
 0049B991    mov         ebp,esp
 0049B993    add         esp,0FFFFFFF4
 0049B996    push        ebx
 0049B997    push        esi
 0049B998    mov         dword ptr [ebp-0C],ecx
 0049B99B    mov         dword ptr [ebp-8],edx
 0049B99E    mov         dword ptr [ebp-4],eax
 0049B9A1    mov         eax,dword ptr [ebp-0C]
 0049B9A4    cmp         word ptr [eax],1B
>0049B9A8    jne         0049B9B8
 0049B9AA    mov         eax,dword ptr [ebp-4]
 0049B9AD    mov         si,0FFC7
 0049B9B1    call        @CallDynaInst
>0049B9B6    jmp         0049B9DE
 0049B9B8    mov         eax,dword ptr [ebp-4]
 0049B9BB    cmp         word ptr [eax+19A],0
>0049B9C3    je          0049B9DE
 0049B9C5    mov         al,byte ptr [ebp+8]
 0049B9C8    push        eax
 0049B9C9    mov         ecx,dword ptr [ebp-0C]
 0049B9CC    mov         ebx,dword ptr [ebp-4]
 0049B9CF    mov         edx,dword ptr [ebp-8]
 0049B9D2    mov         eax,dword ptr [ebx+19C]
 0049B9D8    call        dword ptr [ebx+198]
 0049B9DE    pop         esi
 0049B9DF    pop         ebx
 0049B9E0    mov         esp,ebp
 0049B9E2    pop         ebp
 0049B9E3    ret         4
end;*}

//0049B9E8
procedure TSplitter.SetBeveled(Value:Boolean);
begin
{*
 0049B9E8    push        ebp
 0049B9E9    mov         ebp,esp
 0049B9EB    add         esp,0FFFFFFF8
 0049B9EE    mov         byte ptr [ebp-5],dl
 0049B9F1    mov         dword ptr [ebp-4],eax
 0049B9F4    mov         al,byte ptr [ebp-5]
 0049B9F7    mov         edx,dword ptr [ebp-4]
 0049B9FA    mov         byte ptr [edx+16D],al;TSplitter.Beveled:Boolean
 0049BA00    mov         eax,dword ptr [ebp-4]
 0049BA03    mov         edx,dword ptr [eax]
 0049BA05    call        dword ptr [edx+80];TSplitter.sub_004CB7F8
 0049BA0B    pop         ecx
 0049BA0C    pop         ecx
 0049BA0D    pop         ebp
 0049BA0E    ret
*}
end;

//0049BA10
procedure TSplitter.sub_0049BA10;
begin
{*
 0049BA10    push        ebp
 0049BA11    mov         ebp,esp
 0049BA13    push        ecx
 0049BA14    push        ebx
 0049BA15    mov         dword ptr [ebp-4],eax
 0049BA18    mov         eax,dword ptr [ebp-4]
 0049BA1B    cmp         dword ptr [eax+174],0;TSplitter.FControl:TControl
>0049BA22    je          0049BA86
 0049BA24    mov         eax,dword ptr [ebp-4]
 0049BA27    cmp         byte ptr [eax+184],0;TSplitter.FLineVisible:Boolean
>0049BA2E    je          0049BA38
 0049BA30    mov         eax,dword ptr [ebp-4]
 0049BA33    call        0049AE88
 0049BA38    mov         eax,dword ptr [ebp-4]
 0049BA3B    xor         edx,edx
 0049BA3D    mov         dword ptr [eax+174],edx;TSplitter.FControl:TControl
 0049BA43    mov         eax,dword ptr [ebp-4]
 0049BA46    call        0049AF1C
 0049BA4B    mov         eax,dword ptr [ebp-4]
 0049BA4E    cmp         dword ptr [eax+168],0;TSplitter.FActiveControl:TWinControl
>0049BA55    je          0049BA86
 0049BA57    mov         eax,dword ptr [ebp-4]
 0049BA5A    mov         eax,dword ptr [eax+168];TSplitter.FActiveControl:TWinControl
 0049BA60    mov         edx,dword ptr [ebp-4]
 0049BA63    mov         ecx,dword ptr [edx+198];TSplitter.FOldKeyDown:TKeyEvent
 0049BA69    mov         dword ptr [eax+1D8],ecx;TWinControl.FOnKeyDown:TKeyEvent
 0049BA6F    mov         ecx,dword ptr [edx+19C];TSplitter.?f19C:TMessageForm
 0049BA75    mov         dword ptr [eax+1DC],ecx;TWinControl.?f1DC:TMessageForm
 0049BA7B    mov         eax,dword ptr [ebp-4]
 0049BA7E    xor         edx,edx
 0049BA80    mov         dword ptr [eax+168],edx;TSplitter.FActiveControl:TWinControl
 0049BA86    mov         eax,dword ptr [ebp-4]
 0049BA89    cmp         word ptr [eax+1BA],0;TSplitter.?f1BA:word
>0049BA91    je          0049BAA5
 0049BA93    mov         ebx,dword ptr [ebp-4]
 0049BA96    mov         edx,dword ptr [ebp-4]
 0049BA99    mov         eax,dword ptr [ebx+1BC];TSplitter.?f1BC:dword
 0049BA9F    call        dword ptr [ebx+1B8];TSplitter.OnMoved
 0049BAA5    pop         ebx
 0049BAA6    pop         ecx
 0049BAA7    pop         ebp
 0049BAA8    ret
*}
end;

//0049BAAC
constructor TBoundLabel.Create(AOwner:TComponent);
begin
{*
 0049BAAC    push        ebp
 0049BAAD    mov         ebp,esp
 0049BAAF    add         esp,0FFFFFFF4
 0049BAB2    test        dl,dl
>0049BAB4    je          0049BABE
 0049BAB6    add         esp,0FFFFFFF0
 0049BAB9    call        @ClassCreate
 0049BABE    mov         dword ptr [ebp-0C],ecx
 0049BAC1    mov         byte ptr [ebp-5],dl
 0049BAC4    mov         dword ptr [ebp-4],eax
 0049BAC7    mov         ecx,dword ptr [ebp-0C]
 0049BACA    xor         edx,edx
 0049BACC    mov         eax,dword ptr [ebp-4]
 0049BACF    call        TCustomLabel.Create
 0049BAD4    mov         edx,49BB28;'SubLabel'
 0049BAD9    mov         eax,dword ptr [ebp-4]
 0049BADC    mov         ecx,dword ptr [eax]
 0049BADE    call        dword ptr [ecx+18];TBoundLabel.sub_004CAC68
 0049BAE1    mov         dl,1
 0049BAE3    mov         eax,dword ptr [ebp-4]
 0049BAE6    call        00483A50
 0049BAEB    cmp         dword ptr [ebp-0C],0
>0049BAEF    je          0049BAFF
 0049BAF1    mov         eax,dword ptr [ebp-0C]
 0049BAF4    mov         edx,dword ptr [eax+8];TComponent.Name:TComponentName
 0049BAF7    mov         eax,dword ptr [ebp-4]
 0049BAFA    call        TControl.SetText
 0049BAFF    mov         eax,dword ptr [ebp-4]
 0049BB02    cmp         byte ptr [ebp-5],0
>0049BB06    je          0049BB17
 0049BB08    call        @AfterConstruction
 0049BB0D    pop         dword ptr fs:[0]
 0049BB14    add         esp,0C
 0049BB17    mov         eax,dword ptr [ebp-4]
 0049BB1A    mov         esp,ebp
 0049BB1C    pop         ebp
 0049BB1D    ret
*}
end;

//0049BB34
procedure TBoundLabel.sub_0049BB34;
begin
{*
 0049BB34    push        ebp
 0049BB35    mov         ebp,esp
 0049BB37    add         esp,0FFFFFFF8
 0049BB3A    mov         dword ptr [ebp-4],eax
 0049BB3D    mov         eax,dword ptr [ebp-4]
 0049BB40    call        TCustomLabel.sub_004BD014
 0049BB45    mov         eax,dword ptr [ebp-4]
 0049BB48    mov         eax,dword ptr [eax+4];TBoundLabel.FOwner:TComponent
 0049BB4B    mov         edx,dword ptr ds:[497C98];TCustomLabeledEdit
 0049BB51    call        @IsClass
 0049BB56    test        al,al
>0049BB58    je          0049BB7F
 0049BB5A    mov         eax,dword ptr [ebp-4]
 0049BB5D    mov         eax,dword ptr [eax+4];TBoundLabel.FOwner:TComponent
 0049BB60    mov         edx,dword ptr ds:[497C98];TCustomLabeledEdit
 0049BB66    call        @AsClass
 0049BB6B    mov         dword ptr [ebp-8],eax
 0049BB6E    mov         eax,dword ptr [ebp-8]
 0049BB71    mov         dl,byte ptr [eax+224];TCustomLabeledEdit.FLabelPosition:TLabelPosition
 0049BB77    mov         eax,dword ptr [ebp-8]
 0049BB7A    call        TLabeledEdit.SetLabelPosition
 0049BB7F    pop         ecx
 0049BB80    pop         ecx
 0049BB81    pop         ebp
 0049BB82    ret
*}
end;

//0049BB84
{*function TBoundLabel.GetHeight:?;
begin
 0049BB84    push        ebp
 0049BB85    mov         ebp,esp
 0049BB87    add         esp,0FFFFFFF8
 0049BB8A    mov         dword ptr [ebp-4],eax
 0049BB8D    mov         eax,dword ptr [ebp-4]
 0049BB90    mov         eax,dword ptr [eax+4C];TBoundLabel.Height:Integer
 0049BB93    mov         dword ptr [ebp-8],eax
 0049BB96    mov         eax,dword ptr [ebp-8]
 0049BB99    pop         ecx
 0049BB9A    pop         ecx
 0049BB9B    pop         ebp
 0049BB9C    ret
end;*}

//0049BBA0
{*function TBoundLabel.GetLeft:?;
begin
 0049BBA0    push        ebp
 0049BBA1    mov         ebp,esp
 0049BBA3    add         esp,0FFFFFFF8
 0049BBA6    mov         dword ptr [ebp-4],eax
 0049BBA9    mov         eax,dword ptr [ebp-4]
 0049BBAC    mov         eax,dword ptr [eax+40];TBoundLabel.Left:Integer
 0049BBAF    mov         dword ptr [ebp-8],eax
 0049BBB2    mov         eax,dword ptr [ebp-8]
 0049BBB5    pop         ecx
 0049BBB6    pop         ecx
 0049BBB7    pop         ebp
 0049BBB8    ret
end;*}

//0049BBBC
{*function TBoundLabel.GetTop:?;
begin
 0049BBBC    push        ebp
 0049BBBD    mov         ebp,esp
 0049BBBF    add         esp,0FFFFFFF8
 0049BBC2    mov         dword ptr [ebp-4],eax
 0049BBC5    mov         eax,dword ptr [ebp-4]
 0049BBC8    mov         eax,dword ptr [eax+44];TBoundLabel.Top:Integer
 0049BBCB    mov         dword ptr [ebp-8],eax
 0049BBCE    mov         eax,dword ptr [ebp-8]
 0049BBD1    pop         ecx
 0049BBD2    pop         ecx
 0049BBD3    pop         ebp
 0049BBD4    ret
end;*}

//0049BBD8
{*function TBoundLabel.GetWidth:?;
begin
 0049BBD8    push        ebp
 0049BBD9    mov         ebp,esp
 0049BBDB    add         esp,0FFFFFFF8
 0049BBDE    mov         dword ptr [ebp-4],eax
 0049BBE1    mov         eax,dword ptr [ebp-4]
 0049BBE4    mov         eax,dword ptr [eax+48];TBoundLabel.Width:Integer
 0049BBE7    mov         dword ptr [ebp-8],eax
 0049BBEA    mov         eax,dword ptr [ebp-8]
 0049BBED    pop         ecx
 0049BBEE    pop         ecx
 0049BBEF    pop         ebp
 0049BBF0    ret
end;*}

//0049BBF4
procedure TBoundLabel.SetHeight(Value:Integer);
begin
{*
 0049BBF4    push        ebp
 0049BBF5    mov         ebp,esp
 0049BBF7    add         esp,0FFFFFFF8
 0049BBFA    push        ebx
 0049BBFB    mov         dword ptr [ebp-8],edx
 0049BBFE    mov         dword ptr [ebp-4],eax
 0049BC01    mov         eax,dword ptr [ebp-4]
 0049BC04    call        TBoundLabel.GetWidth
 0049BC09    push        eax
 0049BC0A    mov         eax,dword ptr [ebp-8]
 0049BC0D    push        eax
 0049BC0E    mov         eax,dword ptr [ebp-4]
 0049BC11    call        TBoundLabel.GetTop
 0049BC16    push        eax
 0049BC17    mov         eax,dword ptr [ebp-4]
 0049BC1A    call        TBoundLabel.GetLeft
 0049BC1F    mov         edx,eax
 0049BC21    mov         eax,dword ptr [ebp-4]
 0049BC24    pop         ecx
 0049BC25    mov         ebx,dword ptr [eax]
 0049BC27    call        dword ptr [ebx+84];TBoundLabel.sub_004CA110
 0049BC2D    pop         ebx
 0049BC2E    pop         ecx
 0049BC2F    pop         ecx
 0049BC30    pop         ebp
 0049BC31    ret
*}
end;

//0049BC34
procedure TBoundLabel.SetWidth(Value:Integer);
begin
{*
 0049BC34    push        ebp
 0049BC35    mov         ebp,esp
 0049BC37    add         esp,0FFFFFFF8
 0049BC3A    push        ebx
 0049BC3B    mov         dword ptr [ebp-8],edx
 0049BC3E    mov         dword ptr [ebp-4],eax
 0049BC41    mov         eax,dword ptr [ebp-8]
 0049BC44    push        eax
 0049BC45    mov         eax,dword ptr [ebp-4]
 0049BC48    call        TBoundLabel.GetHeight
 0049BC4D    push        eax
 0049BC4E    mov         eax,dword ptr [ebp-4]
 0049BC51    call        TBoundLabel.GetTop
 0049BC56    push        eax
 0049BC57    mov         eax,dword ptr [ebp-4]
 0049BC5A    call        TBoundLabel.GetLeft
 0049BC5F    mov         edx,eax
 0049BC61    mov         eax,dword ptr [ebp-4]
 0049BC64    pop         ecx
 0049BC65    mov         ebx,dword ptr [eax]
 0049BC67    call        dword ptr [ebx+84];TBoundLabel.sub_004CA110
 0049BC6D    pop         ebx
 0049BC6E    pop         ecx
 0049BC6F    pop         ecx
 0049BC70    pop         ebp
 0049BC71    ret
*}
end;

//0049BC74
constructor TCustomLabeledEdit.Create(AOwner:TComponent);
begin
{*
 0049BC74    push        ebp
 0049BC75    mov         ebp,esp
 0049BC77    add         esp,0FFFFFFF4
 0049BC7A    test        dl,dl
>0049BC7C    je          0049BC86
 0049BC7E    add         esp,0FFFFFFF0
 0049BC81    call        @ClassCreate
 0049BC86    mov         dword ptr [ebp-0C],ecx
 0049BC89    mov         byte ptr [ebp-5],dl
 0049BC8C    mov         dword ptr [ebp-4],eax
 0049BC8F    mov         ecx,dword ptr [ebp-0C]
 0049BC92    xor         edx,edx
 0049BC94    mov         eax,dword ptr [ebp-4]
 0049BC97    call        TCustomEdit.Create
 0049BC9C    mov         eax,dword ptr [ebp-4]
 0049BC9F    mov         byte ptr [eax+224],0;TCustomLabeledEdit.FLabelPosition:TLabelPosition
 0049BCA6    mov         eax,dword ptr [ebp-4]
 0049BCA9    mov         dword ptr [eax+228],3;TCustomLabeledEdit.FLabelSpacing:Integer
 0049BCB3    mov         eax,dword ptr [ebp-4]
 0049BCB6    call        0049C07C
 0049BCBB    mov         eax,dword ptr [ebp-4]
 0049BCBE    cmp         byte ptr [ebp-5],0
>0049BCC2    je          0049BCD3
 0049BCC4    call        @AfterConstruction
 0049BCC9    pop         dword ptr fs:[0]
 0049BCD0    add         esp,0C
 0049BCD3    mov         eax,dword ptr [ebp-4]
 0049BCD6    mov         esp,ebp
 0049BCD8    pop         ebp
 0049BCD9    ret
*}
end;

//0049BCDC
procedure TCustomLabeledEdit.CMBiDiModeChanged(Message:TMessage);
begin
{*
 0049BCDC    push        ebp
 0049BCDD    mov         ebp,esp
 0049BCDF    add         esp,0FFFFFFF8
 0049BCE2    mov         dword ptr [ebp-8],edx
 0049BCE5    mov         dword ptr [ebp-4],eax
 0049BCE8    mov         edx,dword ptr [ebp-8]
 0049BCEB    mov         eax,dword ptr [ebp-4]
 0049BCEE    call        TWinControl.CMBiDiModeChanged
 0049BCF3    mov         eax,dword ptr [ebp-4]
 0049BCF6    mov         dl,byte ptr [eax+5F];TCustomLabeledEdit.FBiDiMode:TBiDiMode
 0049BCF9    mov         eax,dword ptr [ebp-4]
 0049BCFC    mov         eax,dword ptr [eax+220];TCustomLabeledEdit.FEditLabel:TBoundLabel
 0049BD02    mov         ecx,dword ptr [eax]
 0049BD04    call        dword ptr [ecx+70];TPanel.SetBiDiMode
 0049BD07    pop         ecx
 0049BD08    pop         ecx
 0049BD09    pop         ebp
 0049BD0A    ret
*}
end;

//0049BD0C
{*procedure TCustomLabeledEdit.CMEnabledChanged(?:?);
begin
 0049BD0C    push        ebp
 0049BD0D    mov         ebp,esp
 0049BD0F    add         esp,0FFFFFFF8
 0049BD12    mov         dword ptr [ebp-8],edx
 0049BD15    mov         dword ptr [ebp-4],eax
 0049BD18    mov         edx,dword ptr [ebp-8]
 0049BD1B    mov         eax,dword ptr [ebp-4]
 0049BD1E    call        TWinControl.CMEnabledChanged
 0049BD23    mov         eax,dword ptr [ebp-4]
 0049BD26    mov         edx,dword ptr [eax]
 0049BD28    call        dword ptr [edx+50];TImage.GetEnabled
 0049BD2B    mov         edx,eax
 0049BD2D    mov         eax,dword ptr [ebp-4]
 0049BD30    mov         eax,dword ptr [eax+220];TCustomLabeledEdit.FEditLabel:TBoundLabel
 0049BD36    mov         ecx,dword ptr [eax]
 0049BD38    call        dword ptr [ecx+64];TImage.SetEnabled
 0049BD3B    pop         ecx
 0049BD3C    pop         ecx
 0049BD3D    pop         ebp
 0049BD3E    ret
end;*}

//0049BD40
{*procedure TCustomLabeledEdit.CMVisibleChanged(?:?);
begin
 0049BD40    push        ebp
 0049BD41    mov         ebp,esp
 0049BD43    add         esp,0FFFFFFF8
 0049BD46    mov         dword ptr [ebp-8],edx
 0049BD49    mov         dword ptr [ebp-4],eax
 0049BD4C    mov         edx,dword ptr [ebp-8]
 0049BD4F    mov         eax,dword ptr [ebp-4]
 0049BD52    call        TWinControl.CMVisibleChanged
 0049BD57    mov         eax,dword ptr [ebp-4]
 0049BD5A    mov         dl,byte ptr [eax+57];TCustomLabeledEdit.FVisible:Boolean
 0049BD5D    mov         eax,dword ptr [ebp-4]
 0049BD60    mov         eax,dword ptr [eax+220];TCustomLabeledEdit.FEditLabel:TBoundLabel
 0049BD66    call        TControl.SetVisible
 0049BD6B    pop         ecx
 0049BD6C    pop         ecx
 0049BD6D    pop         ebp
 0049BD6E    ret
end;*}

//0049BD70
procedure TCustomLabeledEdit.Notification(AComponent:TComponent; Operation:TOperation);
begin
{*
 0049BD70    push        ebp
 0049BD71    mov         ebp,esp
 0049BD73    add         esp,0FFFFFFF4
 0049BD76    mov         byte ptr [ebp-9],cl
 0049BD79    mov         dword ptr [ebp-8],edx
 0049BD7C    mov         dword ptr [ebp-4],eax
 0049BD7F    mov         cl,byte ptr [ebp-9]
 0049BD82    mov         edx,dword ptr [ebp-8]
 0049BD85    mov         eax,dword ptr [ebp-4]
 0049BD88    call        TControl.Notification
 0049BD8D    mov         eax,dword ptr [ebp-8]
 0049BD90    mov         edx,dword ptr [ebp-4]
 0049BD93    cmp         eax,dword ptr [edx+220];TCustomLabeledEdit.FEditLabel:TBoundLabel
>0049BD99    jne         0049BDAC
 0049BD9B    cmp         byte ptr [ebp-9],1
>0049BD9F    jne         0049BDAC
 0049BDA1    mov         eax,dword ptr [ebp-4]
 0049BDA4    xor         edx,edx
 0049BDA6    mov         dword ptr [eax+220],edx;TCustomLabeledEdit.FEditLabel:TBoundLabel
 0049BDAC    mov         esp,ebp
 0049BDAE    pop         ebp
 0049BDAF    ret
*}
end;

//0049BDB0
procedure TCustomLabeledEdit.SetBounds(ALeft:Integer; ATop:Integer; AWidth:Integer; AHeight:Integer);
begin
{*
 0049BDB0    push        ebp
 0049BDB1    mov         ebp,esp
 0049BDB3    add         esp,0FFFFFFF4
 0049BDB6    mov         dword ptr [ebp-0C],ecx
 0049BDB9    mov         dword ptr [ebp-8],edx
 0049BDBC    mov         dword ptr [ebp-4],eax
 0049BDBF    mov         eax,dword ptr [ebp+0C]
 0049BDC2    push        eax
 0049BDC3    mov         eax,dword ptr [ebp+8]
 0049BDC6    push        eax
 0049BDC7    mov         ecx,dword ptr [ebp-0C]
 0049BDCA    mov         edx,dword ptr [ebp-8]
 0049BDCD    mov         eax,dword ptr [ebp-4]
 0049BDD0    call        TWinControl.SetBounds
 0049BDD5    mov         eax,dword ptr [ebp-4]
 0049BDD8    mov         dl,byte ptr [eax+224];TCustomLabeledEdit.FLabelPosition:TLabelPosition
 0049BDDE    mov         eax,dword ptr [ebp-4]
 0049BDE1    call        TLabeledEdit.SetLabelPosition
 0049BDE6    mov         esp,ebp
 0049BDE8    pop         ebp
 0049BDE9    ret         8
*}
end;

//0049BDEC
procedure TLabeledEdit.SetLabelPosition(Value:TLabelPosition);
begin
{*
 0049BDEC    push        ebp
 0049BDED    mov         ebp,esp
 0049BDEF    add         esp,0FFFFFFF0
 0049BDF2    push        ebx
 0049BDF3    mov         byte ptr [ebp-5],dl
 0049BDF6    mov         dword ptr [ebp-4],eax
 0049BDF9    mov         eax,dword ptr [ebp-4]
 0049BDFC    cmp         dword ptr [eax+220],0;TLabeledEdit.FEditLabel:TBoundLabel
>0049BE03    je          0049BF4E
 0049BE09    mov         al,byte ptr [ebp-5]
 0049BE0C    mov         edx,dword ptr [ebp-4]
 0049BE0F    mov         byte ptr [edx+224],al;TLabeledEdit.FLabelPosition:TLabelPosition
 0049BE15    mov         al,byte ptr [ebp-5]
 0049BE18    sub         al,1
>0049BE1A    jb          0049BE2F
>0049BE1C    je          0049BE61
 0049BE1E    dec         al
>0049BE20    je          0049BE89
 0049BE22    dec         al
>0049BE24    je          0049BED9
>0049BE2A    jmp         0049BF19
 0049BE2F    mov         eax,dword ptr [ebp-4]
 0049BE32    mov         eax,dword ptr [eax+220];TLabeledEdit.FEditLabel:TBoundLabel
 0049BE38    call        TBoundLabel.GetHeight
 0049BE3D    mov         edx,dword ptr [ebp-4]
 0049BE40    mov         edx,dword ptr [edx+44];TLabeledEdit.Top:Integer
 0049BE43    sub         edx,eax
 0049BE45    mov         eax,dword ptr [ebp-4]
 0049BE48    sub         edx,dword ptr [eax+228]
 0049BE4E    lea         ecx,[ebp-0D]
 0049BE51    mov         eax,dword ptr [ebp-4]
 0049BE54    mov         eax,dword ptr [eax+40];TLabeledEdit.Left:Integer
 0049BE57    call        Point
>0049BE5C    jmp         0049BF19
 0049BE61    lea         ecx,[ebp-0D]
 0049BE64    mov         eax,dword ptr [ebp-4]
 0049BE67    mov         edx,dword ptr [eax+44];TLabeledEdit.Top:Integer
 0049BE6A    mov         eax,dword ptr [ebp-4]
 0049BE6D    add         edx,dword ptr [eax+4C];TLabeledEdit.Height:Integer
 0049BE70    mov         eax,dword ptr [ebp-4]
 0049BE73    add         edx,dword ptr [eax+228];TLabeledEdit.FLabelSpacing:Integer
 0049BE79    mov         eax,dword ptr [ebp-4]
 0049BE7C    mov         eax,dword ptr [eax+40];TLabeledEdit.Left:Integer
 0049BE7F    call        Point
>0049BE84    jmp         0049BF19
 0049BE89    mov         eax,dword ptr [ebp-4]
 0049BE8C    mov         eax,dword ptr [eax+220];TLabeledEdit.FEditLabel:TBoundLabel
 0049BE92    call        TBoundLabel.GetHeight
 0049BE97    mov         edx,dword ptr [ebp-4]
 0049BE9A    mov         edx,dword ptr [edx+4C];TLabeledEdit.Height:Integer
 0049BE9D    sub         edx,eax
 0049BE9F    sar         edx,1
>0049BEA1    jns         0049BEA6
 0049BEA3    adc         edx,0
 0049BEA6    mov         eax,dword ptr [ebp-4]
 0049BEA9    add         edx,dword ptr [eax+44];TLabeledEdit.Top:Integer
 0049BEAC    push        edx
 0049BEAD    mov         eax,dword ptr [ebp-4]
 0049BEB0    mov         eax,dword ptr [eax+220];TLabeledEdit.FEditLabel:TBoundLabel
 0049BEB6    call        TBoundLabel.GetWidth
 0049BEBB    push        eax
 0049BEBC    mov         eax,dword ptr [ebp-4]
 0049BEBF    mov         eax,dword ptr [eax+40];TLabeledEdit.Left:Integer
 0049BEC2    pop         edx
 0049BEC3    sub         eax,edx
 0049BEC5    mov         edx,dword ptr [ebp-4]
 0049BEC8    sub         eax,dword ptr [edx+228]
 0049BECE    lea         ecx,[ebp-0D]
 0049BED1    pop         edx
 0049BED2    call        Point
>0049BED7    jmp         0049BF19
 0049BED9    mov         eax,dword ptr [ebp-4]
 0049BEDC    mov         eax,dword ptr [eax+220];TLabeledEdit.FEditLabel:TBoundLabel
 0049BEE2    call        TBoundLabel.GetHeight
 0049BEE7    mov         edx,dword ptr [ebp-4]
 0049BEEA    mov         edx,dword ptr [edx+4C];TLabeledEdit.Height:Integer
 0049BEED    sub         edx,eax
 0049BEEF    sar         edx,1
>0049BEF1    jns         0049BEF6
 0049BEF3    adc         edx,0
 0049BEF6    mov         eax,dword ptr [ebp-4]
 0049BEF9    add         edx,dword ptr [eax+44];TLabeledEdit.Top:Integer
 0049BEFC    lea         ecx,[ebp-0D]
 0049BEFF    mov         eax,dword ptr [ebp-4]
 0049BF02    mov         eax,dword ptr [eax+40];TLabeledEdit.Left:Integer
 0049BF05    mov         ebx,dword ptr [ebp-4]
 0049BF08    add         eax,dword ptr [ebx+48];TLabeledEdit.Width:Integer
 0049BF0B    mov         ebx,dword ptr [ebp-4]
 0049BF0E    add         eax,dword ptr [ebx+228];TLabeledEdit.FLabelSpacing:Integer
 0049BF14    call        Point
 0049BF19    mov         eax,dword ptr [ebp-4]
 0049BF1C    mov         eax,dword ptr [eax+220];TLabeledEdit.FEditLabel:TBoundLabel
 0049BF22    call        TBoundLabel.GetWidth
 0049BF27    push        eax
 0049BF28    mov         eax,dword ptr [ebp-4]
 0049BF2B    mov         eax,dword ptr [eax+220];TLabeledEdit.FEditLabel:TBoundLabel
 0049BF31    call        TBoundLabel.GetHeight
 0049BF36    push        eax
 0049BF37    mov         ecx,dword ptr [ebp-9]
 0049BF3A    mov         edx,dword ptr [ebp-0D]
 0049BF3D    mov         eax,dword ptr [ebp-4]
 0049BF40    mov         eax,dword ptr [eax+220];TLabeledEdit.FEditLabel:TBoundLabel
 0049BF46    mov         ebx,dword ptr [eax]
 0049BF48    call        dword ptr [ebx+84];TBoundLabel.sub_004CA110
 0049BF4E    pop         ebx
 0049BF4F    mov         esp,ebp
 0049BF51    pop         ebp
 0049BF52    ret
*}
end;

//0049BF54
procedure TLabeledEdit.SetLabelSpacing(Value:Integer);
begin
{*
 0049BF54    push        ebp
 0049BF55    mov         ebp,esp
 0049BF57    add         esp,0FFFFFFF8
 0049BF5A    mov         dword ptr [ebp-8],edx
 0049BF5D    mov         dword ptr [ebp-4],eax
 0049BF60    mov         eax,dword ptr [ebp-8]
 0049BF63    mov         edx,dword ptr [ebp-4]
 0049BF66    mov         dword ptr [edx+228],eax;TLabeledEdit.FLabelSpacing:Integer
 0049BF6C    mov         eax,dword ptr [ebp-4]
 0049BF6F    mov         dl,byte ptr [eax+224];TLabeledEdit.FLabelPosition:TLabelPosition
 0049BF75    mov         eax,dword ptr [ebp-4]
 0049BF78    call        TLabeledEdit.SetLabelPosition
 0049BF7D    pop         ecx
 0049BF7E    pop         ecx
 0049BF7F    pop         ebp
 0049BF80    ret
*}
end;

//0049BF84
{*procedure sub_0049BF84(?:?);
begin
 0049BF84    push        ebp
 0049BF85    mov         ebp,esp
 0049BF87    add         esp,0FFFFFFF4
 0049BF8A    xor         ecx,ecx
 0049BF8C    mov         dword ptr [ebp-0C],ecx
 0049BF8F    mov         dword ptr [ebp-8],edx
 0049BF92    mov         dword ptr [ebp-4],eax
 0049BF95    xor         eax,eax
 0049BF97    push        ebp
 0049BF98    push        49C026
 0049BF9D    push        dword ptr fs:[eax]
 0049BFA0    mov         dword ptr fs:[eax],esp
 0049BFA3    mov         eax,dword ptr [ebp-4]
 0049BFA6    test        byte ptr [eax+1C],10;TCustomLabeledEdit.FComponentState:TComponentState
>0049BFAA    je          0049BFF2
 0049BFAC    mov         eax,dword ptr [ebp-4]
 0049BFAF    mov         eax,dword ptr [eax+220];TCustomLabeledEdit.FEditLabel:TBoundLabel
 0049BFB5    call        004CAE74
 0049BFBA    test        eax,eax
>0049BFBC    je          0049BFE1
 0049BFBE    lea         edx,[ebp-0C]
 0049BFC1    mov         eax,dword ptr [ebp-4]
 0049BFC4    mov         eax,dword ptr [eax+220];TCustomLabeledEdit.FEditLabel:TBoundLabel
 0049BFCA    call        TControl.GetText
 0049BFCF    mov         eax,dword ptr [ebp-0C]
 0049BFD2    mov         edx,dword ptr [ebp-4]
 0049BFD5    mov         edx,dword ptr [edx+8];TCustomLabeledEdit.Name:TComponentName
 0049BFD8    call        CompareText
 0049BFDD    test        eax,eax
>0049BFDF    jne         0049BFF2
 0049BFE1    mov         edx,dword ptr [ebp-8]
 0049BFE4    mov         eax,dword ptr [ebp-4]
 0049BFE7    mov         eax,dword ptr [eax+220];TCustomLabeledEdit.FEditLabel:TBoundLabel
 0049BFED    call        TControl.SetText
 0049BFF2    mov         edx,dword ptr [ebp-8]
 0049BFF5    mov         eax,dword ptr [ebp-4]
 0049BFF8    call        004CAC68
 0049BFFD    mov         eax,dword ptr [ebp-4]
 0049C000    test        byte ptr [eax+1C],10;TCustomLabeledEdit.FComponentState:TComponentState
>0049C004    je          0049C010
 0049C006    xor         edx,edx
 0049C008    mov         eax,dword ptr [ebp-4]
 0049C00B    call        TControl.SetText
 0049C010    xor         eax,eax
 0049C012    pop         edx
 0049C013    pop         ecx
 0049C014    pop         ecx
 0049C015    mov         dword ptr fs:[eax],edx
 0049C018    push        49C02D
 0049C01D    lea         eax,[ebp-0C]
 0049C020    call        @LStrClr
 0049C025    ret
>0049C026    jmp         @HandleFinally
>0049C02B    jmp         0049C01D
 0049C02D    mov         esp,ebp
 0049C02F    pop         ebp
 0049C030    ret
end;*}

//0049C034
{*procedure sub_0049C034(?:?);
begin
 0049C034    push        ebp
 0049C035    mov         ebp,esp
 0049C037    add         esp,0FFFFFFF8
 0049C03A    mov         dword ptr [ebp-8],edx
 0049C03D    mov         dword ptr [ebp-4],eax
 0049C040    mov         edx,dword ptr [ebp-8]
 0049C043    mov         eax,dword ptr [ebp-4]
 0049C046    call        004CAD7C
 0049C04B    mov         eax,dword ptr [ebp-4]
 0049C04E    cmp         dword ptr [eax+220],0;TCustomLabeledEdit.FEditLabel:TBoundLabel
>0049C055    je          0049C078
 0049C057    mov         edx,dword ptr [ebp-8]
 0049C05A    mov         eax,dword ptr [ebp-4]
 0049C05D    mov         eax,dword ptr [eax+220];TCustomLabeledEdit.FEditLabel:TBoundLabel
 0049C063    mov         ecx,dword ptr [eax]
 0049C065    call        dword ptr [ecx+68];TBoundLabel.sub_004CAD7C
 0049C068    mov         dl,1
 0049C06A    mov         eax,dword ptr [ebp-4]
 0049C06D    mov         eax,dword ptr [eax+220];TCustomLabeledEdit.FEditLabel:TBoundLabel
 0049C073    call        TControl.SetVisible
 0049C078    pop         ecx
 0049C079    pop         ecx
 0049C07A    pop         ebp
 0049C07B    ret
end;*}

//0049C07C
procedure sub_0049C07C(?:TCustomLabeledEdit);
begin
{*
 0049C07C    push        ebp
 0049C07D    mov         ebp,esp
 0049C07F    push        ecx
 0049C080    mov         dword ptr [ebp-4],eax
 0049C083    mov         eax,dword ptr [ebp-4]
 0049C086    cmp         dword ptr [eax+220],0;TCustomLabeledEdit.FEditLabel:TBoundLabel
>0049C08D    jne         0049C0C9
 0049C08F    mov         ecx,dword ptr [ebp-4]
 0049C092    mov         dl,1
 0049C094    mov         eax,[00497690];TBoundLabel
 0049C099    call        TBoundLabel.Create;TBoundLabel.Create
 0049C09E    mov         edx,dword ptr [ebp-4]
 0049C0A1    mov         dword ptr [edx+220],eax;TCustomLabeledEdit.FEditLabel:TBoundLabel
 0049C0A7    mov         edx,dword ptr [ebp-4]
 0049C0AA    mov         eax,dword ptr [ebp-4]
 0049C0AD    mov         eax,dword ptr [eax+220];TCustomLabeledEdit.FEditLabel:TBoundLabel
 0049C0B3    call        00483020
 0049C0B8    mov         edx,dword ptr [ebp-4]
 0049C0BB    mov         eax,dword ptr [ebp-4]
 0049C0BE    mov         eax,dword ptr [eax+220];TCustomLabeledEdit.FEditLabel:TBoundLabel
 0049C0C4    call        TLabel.SetFocusControl
 0049C0C9    pop         ecx
 0049C0CA    pop         ebp
 0049C0CB    ret
*}
end;

//0049C244
procedure _NF__82C;
begin
{*
 0049C244    das
 0049C245    add         byte ptr [eax],al
 0049C247    add         byte ptr [ebx+edx],bh
 0049C24A    push        esp
 0049C24B    add         byte ptr [edx+eax*8],bh
 0049C24E    dec         ecx
 0049C24F    add         byte ptr [ebx+edx],dh
 0049C252    push        esp
 0049C253    add         byte ptr [edx+eax*8],dh
 0049C256    dec         ecx
 0049C257    add         byte ptr [ebx+edx],ch
 0049C25A    push        esp
 0049C25B    add         byte ptr [edx+eax*8],ch
 0049C25E    dec         ecx
 0049C25F    add         byte ptr [ebx+edx],ah
 0049C262    push        esp
 0049C263    add         byte ptr [edx+eax*8],ah
 0049C266    dec         ecx
 0049C267    add         byte ptr [ebx+edx],bl
 0049C26A    push        esp
 0049C26B    add         byte ptr [edx+eax*8],bl
 0049C26E    dec         ecx
 0049C26F    add         byte ptr [ebx+edx],dl
 0049C272    push        esp
 0049C273    add         byte ptr [edx+eax*8],dl
 0049C276    dec         ecx
 0049C277    add         byte ptr [ebx+edx],cl
 0049C27A    push        esp
 0049C27B    add         byte ptr [edx+eax*8],cl
 0049C27E    dec         ecx
 0049C27F    add         byte ptr [ebx+edx],al
 0049C282    push        esp
 0049C283    add         byte ptr [edx+eax*8],al
 0049C286    dec         ecx
 0049C287    add         ah,bh
 0049C289    adc         dl,byte ptr [eax+eax-4]
 0049C28D    ror         dword ptr [ecx],0F4
 0049C291    adc         dl,byte ptr [eax+eax-0C]
 0049C295    ror         dword ptr [ecx],0EC
 0049C299    adc         dl,byte ptr [eax+eax-14]
 0049C29D    ror         dword ptr [ecx],0E4
 0049C2A1    adc         dl,byte ptr [eax+eax-1C]
 0049C2A5    ror         dword ptr [ecx],0DC
 0049C2A9    adc         dl,byte ptr [eax+eax-24]
 0049C2AD    ror         dword ptr [ecx],0D4
 0049C2B1    adc         dl,byte ptr [eax+eax-2C]
 0049C2B5    ror         dword ptr [ecx],0CC
 0049C2B9    adc         dl,byte ptr [eax+eax-34]
 0049C2BD    ror         dword ptr [ecx],0C4
 0049C2C1    adc         dl,byte ptr [eax+eax-3C]
 0049C2C5    ror         dword ptr [ecx],0BC
 0049C2C9    adc         dl,byte ptr [eax+eax-44]
 0049C2CD    ror         dword ptr [ecx],0B4
 0049C2D1    adc         dl,byte ptr [eax+eax-4C]
 0049C2D5    ror         dword ptr [ecx],0AC
 0049C2D9    adc         dl,byte ptr [eax+eax-54]
 0049C2DD    ror         dword ptr [ecx],0A4
 0049C2E1    adc         dl,byte ptr [eax+eax-5C]
 0049C2E5    ror         dword ptr [ecx],9C
 0049C2E9    adc         dl,byte ptr [eax+eax-64]
 0049C2ED    ror         dword ptr [ecx],94
 0049C2F1    adc         dl,byte ptr [eax+eax-6C]
 0049C2F5    ror         dword ptr [ecx],8C
 0049C2F9    adc         dl,byte ptr [eax+eax-74]
 0049C2FD    ror         dword ptr [ecx],84
 0049C301    adc         dl,byte ptr [eax+eax-7C]
 0049C305    ror         dword ptr [ecx],7C
 0049C309    adc         dl,byte ptr [eax+eax+7C]
 0049C30D    ror         dword ptr [ecx],74
 0049C311    adc         dl,byte ptr [eax+eax+74]
 0049C315    ror         dword ptr [ecx],6C
 0049C319    adc         dl,byte ptr [eax+eax+6C]
 0049C31D    ror         dword ptr [ecx],64
 0049C321    adc         dl,byte ptr [eax+eax+64]
 0049C325    ror         dword ptr [ecx],5C
 0049C329    adc         dl,byte ptr [eax+eax+5C]
 0049C32D    ror         dword ptr [ecx],54
 0049C331    adc         dl,byte ptr [eax+eax+54]
 0049C335    ror         dword ptr [ecx],4C
 0049C339    adc         dl,byte ptr [eax+eax+4C]
 0049C33D    ror         dword ptr [ecx],44
 0049C341    adc         dl,byte ptr [eax+eax+44]
 0049C345    ror         dword ptr [ecx],3C
 0049C349    adc         dl,byte ptr [eax+eax+3C]
 0049C34D    ror         dword ptr [ecx],34
 0049C351    adc         dl,byte ptr [eax+eax+34]
 0049C355    ror         dword ptr [ecx],2C
 0049C359    adc         dl,byte ptr [eax+eax+2C]
 0049C35D    ror         dword ptr [ecx],24
 0049C361    adc         dl,byte ptr [eax+eax+24]
 0049C365    ror         dword ptr [ecx],1C
 0049C369    adc         dl,byte ptr [eax+eax+1C]
 0049C36D    ror         dword ptr [ecx],14
 0049C371    adc         dl,byte ptr [eax+eax+14]
 0049C375    ror         dword ptr [ecx],0C
 0049C379    adc         dl,byte ptr [eax+eax+0C]
 0049C37D    ror         dword ptr [ecx],4
 0049C381    adc         dl,byte ptr [eax+eax+4]
 0049C385    ror         dword ptr [ecx],0FC
 0049C389    adc         dword ptr [eax+eax-4],edx
 0049C38D    ror         byte ptr [ecx],0F4
 0049C391    adc         dword ptr [eax+eax-0C],edx
 0049C395    ror         byte ptr [ecx],0EC
 0049C399    adc         dword ptr [eax+eax-14],edx
 0049C39D    ror         byte ptr [ecx],0E4
 0049C3A1    adc         dword ptr [eax+eax-1C],edx
 0049C3A5    ror         byte ptr [ecx],0DC
 0049C3A9    adc         dword ptr [eax+eax-24],edx
 0049C3AD    ror         byte ptr [ecx],0D4
 0049C3B1    adc         dword ptr [eax+eax-2C],edx
 0049C3B5    ror         byte ptr [ecx],0CC
 0049C3B9    adc         dword ptr [eax+eax-34],edx
 0049C3BD    ror         byte ptr [ecx],55;{Finalization}
*}
end;

Initialization
//0049C408
{*
 0049C408    sub         dword ptr ds:[55DD08],1
>0049C40F    jae         0049C435
 0049C411    mov         eax,49C244;_NF__82C
 0049C416    call        @InitResStrings
 0049C41B    mov         eax,[004C5774];TControl
 0049C420    call        StartClassGroup
 0049C425    mov         edx,dword ptr ds:[4C5774];TControl
 0049C42B    mov         eax,[00495F38];TTimer
 0049C430    call        GroupDescendentsWith
 0049C435    ret
*}
Finalization
//0049C3C0
{*
 0049C3C0    push        ebp
 0049C3C1    mov         ebp,esp
 0049C3C3    xor         eax,eax
 0049C3C5    push        ebp
 0049C3C6    push        49C3FC
 0049C3CB    push        dword ptr fs:[eax]
 0049C3CE    mov         dword ptr fs:[eax],esp
 0049C3D1    inc         dword ptr ds:[55DD08]
>0049C3D7    jne         0049C3EE
 0049C3D9    mov         eax,5411C8
 0049C3DE    mov         ecx,2F
 0049C3E3    mov         edx,dword ptr ds:[476C40];TIdentMapEntry
 0049C3E9    call        @FinalizeArray
 0049C3EE    xor         eax,eax
 0049C3F0    pop         edx
 0049C3F1    pop         ecx
 0049C3F2    pop         ecx
 0049C3F3    mov         dword ptr fs:[eax],edx
 0049C3F6    push        49C403
 0049C3FB    ret
>0049C3FC    jmp         @HandleFinally
>0049C401    jmp         0049C3FB
 0049C403    pop         ebp
 0049C404    ret
*}
end.