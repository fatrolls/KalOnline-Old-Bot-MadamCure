//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit StdCtrls;

interface

uses
  SysUtils, Classes, Controls, StdCtrls, Graphics;

type
  TCustomGroupBox = class(TCustomControl)
  public
    constructor Create(AOwner:TComponent); virtual;//v2C//004BC618
    //procedure v8C(?:?); virtual;//v8C//004BC68C
    //procedure v98(?:?); virtual;//v98//004BC708
    procedure vC8; virtual;//vC8//004BC72C
    procedure WMSize(Message:TWMSize); message WM_SIZE;//004BCC1C
    //procedure CMDialogChar(?:?); message CM_DIALOGCHAR;//004BCB40
    //procedure CMCtl3DChanged(?:?); message CM_CTL3DCHANGED;//004BCBF0
    //procedure CMTextChanged(?:?); message CM_TEXTCHANGED;//004BCBD0
  end;
  TGroupBox = class(TCustomGroupBox)
  end;
  TTextLayout = (tlTop, tlCenter, tlBottom);
  TCustomLabel = class(TGraphicControl)
  public
    FFocusControl:TWinControl;//f168
    FAlignment:TAlignment;//f16C
    FAutoSize:Boolean;//f16D
    FLayout:TTextLayout;//f16E
    FWordWrap:Boolean;//f16F
    FShowAccelChar:Boolean;//f170
    FOnMouseLeave:TNotifyEvent;//f178
    f17A:word;//f17A
    f17C:dword;//f17C
    FOnMouseEnter:TNotifyEvent;//f180
    f182:word;//f182
    f184:dword;//f184
    FTransparentSet:Boolean;//f188
    procedure Loaded; virtual;//vC//004BCFF4
    procedure Notification(AComponent:TComponent; Operation:TOperation); virtual;//v10//004BD2CC
    constructor Create(AOwner:TComponent); virtual;//v2C//004BCC40
    procedure SetAutoSize(Value:Boolean); virtual;//v5C//004BD13C
    procedure v8C; virtual;//v8C//004BCED0
    //procedure v90(?:?); virtual;//v90//004BCD08
    //procedure CMDialogChar(?:?); message CM_DIALOGCHAR;//004BD360
    //procedure CMFontChanged(?:?); message CM_FONTCHANGED;//004BD334
    //procedure CMTextChanged(?:?); message CM_TEXTCHANGED;//004BD30C
    //procedure CMMouseEnter(?:?); message CM_MOUSEENTER;//004BD418
    //procedure CMMouseLeave(?:?); message CM_MOUSELEAVE;//004BD454
    //procedure sub_004BCD24(?:?; ?:?); dynamic;//004BCD24
    procedure sub_004BD014; dynamic;//004BD014
  end;
  TLabel = class(TCustomLabel)
    procedure SetAlignment(Value:TAlignment);//004BD108
    procedure SetFocusControl(Value:TWinControl);//004BD194
  end;
  TEditCharCase = (ecNormal, ecUpperCase, ecLowerCase);
  TCustomEdit = class(TWinControl)
  public
    FMaxLength:Integer;//f208
    FBorderStyle:TBorderStyle;//f20C
    FPasswordChar:Char;//f20D
    FReadOnly:Boolean;//f20E
    FAutoSize:Boolean;//f20F
    FAutoSelect:Boolean;//f210
    FHideSelection:Boolean;//f211
    FOEMConvert:Boolean;//f212
    FCharCase:TEditCharCase;//f213
    FCreating:Boolean;//f214
    FModified:Boolean;//f215
    FOnChange:TNotifyEvent;//f218
    f21A:word;//f21A
    f21C:dword;//f21C
    procedure DefaultHandler(var Message:void ); virtual;//004BDE90
    constructor Create(AOwner:TComponent); virtual;//v2C//004BD490
    procedure SetAutoSize(Value:Boolean); virtual;//v5C//004BD590
    procedure CreateParams(var Params:TCreateParams); virtual;//v98//004BDAF0
    //procedure v9C(?:?); virtual;//v9C//004BDBD8
    procedure CreateWnd; virtual;//vA0//004BDC68
    procedure vB0; virtual;//vB0//004BDD0C
    //procedure vC8(?:?); virtual;//vC8//004BD564
    //function vCC:?; virtual;//vCC//004BD8C0
    //function vD0:?; virtual;//vD0//004BD868
    //procedure vD4(?:?); virtual;//vD4//004BDA48
    //procedure vD8(?:?); virtual;//vD8//004BD8F4
    //procedure vDC(?:?); virtual;//vDC//004BD894
    procedure vE0; virtual;//vE0//004BD95C
    //function vE4(?:?; ?:?):?; virtual;//vE4//004BD9A4
    //procedure WMSetFont(?:?); message WM_SETFONT;//004BDED8
    //procedure WMContextMenu(?:?); message WM_CONTEXTMENU;//004BE07C
    //procedure CMFontChanged(?:?); message CM_FONTCHANGED;//004BDF6C
    //procedure CMCtl3DChanged(?:?); message CM_CTL3DCHANGED;//004BDF28
    //procedure CMTextChanged(?:?); message CM_TEXTCHANGED;//004BE030
    procedure CMEnter(var Message:TCMGotFocus); message CM_ENTER;//004BDFE4
    //procedure sub_004BDFAC(?:?); dynamic;//004BDFAC
    procedure sub_004BDE5C; dynamic;//004BDE5C
    procedure SetModified(Value:Boolean);//004BD728
    procedure SelectAll;//004BD980
    procedure UpdateHeight;//004BDD30
  end;
  TEdit = class(TCustomEdit)
  end;
  TScrollStyle = (ssNone, ssHorizontal, ssVertical, ssBoth);
  TCustomMemo = class(TCustomEdit)
  public
    FLines:TStrings;//f220
    FAlignment:TAlignment;//f224
    FScrollBars:TScrollStyle;//f225
    FWordWrap:Boolean;//f226
    FWantReturns:Boolean;//f227
    FWantTabs:Boolean;//f228
    destructor Destroy; virtual;//004BE644
    procedure Loaded; virtual;//vC//004BE910
    constructor Create(AOwner:TComponent); virtual;//v2C//004BE594
    procedure CreateParams(var Params:TCreateParams); virtual;//v98//004BE684
    //procedure v9C(?:?); virtual;//v9C//004BE700
    //procedure vE8(?:?); virtual;//vE8//004BE834
    //procedure vEC(?:?); virtual;//vEC//004BE8A4
    //procedure WMNCDestroy(?:?); message WM_NCDESTROY;//004BEA38
    //procedure WMGetDlgCode(?:?); message WM_GETDLGCODE;//004BE9EC
    procedure KeyPress(Key:Char); dynamic;//004BEA54
    procedure sub_004BE8F4; dynamic;//004BE8F4
  end;
  TMemo = class(TCustomMemo)
    procedure SetAlignment(Value:TAlignment);//004BE92C
    procedure SetLines(Value:TStrings);//004BE960
    procedure SetScrollBars(Value:TScrollStyle);//004BE984
    procedure SetWordWrap(Value:Boolean);//004BE9B8
  end;
  TDrawItemEvent = procedure(Control:TWinControl; Index:Integer; Rect:TRect; State:TOwnerDrawState) of object;;
  TMeasureItemEvent = procedure(Control:TWinControl; Index:Integer; var Height:Integer) of object;;
  TCustomComboBoxStrings = class(TStrings)
  public
    ...................FComboBox:TCustomCombo;//f10
    //procedure vC(?:?; ?:?); virtual;//vC//004BEB74
    //function v14:?; virtual;//v14//004BEA8C
    //function v18(?:?):?; virtual;//v18//004BEABC
    //procedure v24(?:?; ?:?); virtual;//v24//004BEB40
    //procedure v30(?:?); virtual;//v30//004BECD0
    procedure Clear; virtual;//v44//004BEBE8
    //procedure v48(?:?); virtual;//v48//004BEC6C
    //function v54(?:?):?; virtual;//v54//004BEC98
  end;
  TCustomCombo = class(TCustomListControl)
  public
    FCanvas:TCanvas;//f208
    FMaxLength:Integer;//f20C
    FDropDownCount:Integer;//f210
    FItemIndex:Integer;//f214
    FOnChange:TNotifyEvent;//f218
    f21A:word;//f21A
    f21C:dword;//f21C
    FOnSelect:TNotifyEvent;//f220
    f222:word;//f222
    f224:dword;//f224
    FOnDropDown:TNotifyEvent;//f228
    f22A:word;//f22A
    f22C:dword;//f22C
    FOnCloseUp:TNotifyEvent;//f230
    f232:word;//f232
    f234:dword;//f234
    FItemHeight:Integer;//f238
    FItems:TStrings;//f23C
    FEditHandle:HWND;//f240
    FListHandle:HWND;//f244
    FDropHandle:HWND;//f248
    FEditInstance:Pointer;//f24C
    FDefEditProc:Pointer;//f250
    FListInstance:Pointer;//f254
    FDefListProc:Pointer;//f258
    FDroppingDown:Boolean;//f25C
    FFocusChanged:Boolean;//f25D
    FIsFocused:Boolean;//f25E
    FSaveIndex:Integer;//f260
    destructor Destroy; virtual;//004BEE3C
    procedure Loaded; virtual;//vC//004BF958
    constructor Create(AOwner:TComponent); virtual;//v2C//004BED10
    //procedure v74(?:?); virtual;//v74//004BF604
    procedure CreateWnd; virtual;//vA0//004BFA44
    procedure DestroyWindowHandle; virtual;//vAC//004BEEE8
    //function vC8:?; virtual;//vC8//004BFC80
    //function vCC:?; virtual;//vCC//004BEFBC
    //procedure vD0(?:?); virtual;//vD0//004BF000
    //procedure vD4(?:?; ?:?); virtual;//vD4//004BFCBC
    procedure Clear; virtual;//vD8//004BEEB0
    //procedure vDC(?:?); virtual;//vDC//004BFB98
    //procedure vE0(?:?); virtual;//vE0//004BFBB0
    procedure vE4; virtual;//vE4//004BFC4C
    procedure vEC; virtual;//vEC//004BEF1C
    procedure vF0; virtual;//vF0//004BFA8C
    //procedure vF4(?:?; ?:?; ?:?); virtual;//vF4//004BF2EC
    //procedure v100(?:?); virtual;//v100//004BF050
    //procedure v108(?:?); virtual;//v108//004BFCA0
    //procedure v10C(?:?); virtual;//v10C//004BFB5C
    //procedure WMCreate(?:?); message WM_CREATE;//004BF07C
    //procedure WMDrawItem(?:?); message WM_DRAWITEM;//004BF0B8
    //procedure WMMeasureItem(?:?); message WM_MEASUREITEM;//004BF0D4
    //procedure WMDeleteItem(?:?); message WM_DELETEITEM;//004BF0F0
    //procedure WMGetDlgCode(?:?); message WM_GETDLGCODE;//004BF10C
    //procedure CMCancelMode(?:?); message CM_CANCELMODE;//004BF13C
    //procedure CMCtl3DChanged(?:?); message CM_CTL3DCHANGED;//004BF168
    //procedure sub_004BF758(?:?); dynamic;//004BF758
    procedure sub_004BF9DC; dynamic;//004BF9DC
    procedure sub_004BF92C; dynamic;//004BF92C
    procedure sub_004BFA08; dynamic;//004BFA08
    procedure sub_004BF8F8; dynamic;//004BF8F8
    procedure sub_004BF98C; dynamic;//004BF98C
  end;
  TButtonActionLink = class(TWinControlActionLink)
  public
    .....FClient:TButtonControl;//f28
    //procedure v0(?:?); virtual;//v0//004BFD18
    //function v24:?; virtual;//v24//004BFD48
    //procedure v50(?:?); virtual;//v50//004BFD98
  end;
  TButtonControl = class(TWinControl)
  public
    FClicksDisabled:Boolean;//f208
    FWordWrap:Boolean;//f209
    constructor Create(AOwner:TComponent); virtual;//v2C//004BFE04
    //procedure v74(?:?); virtual;//v74//004BFF38
    //procedure v98(?:?); virtual;//v98//004C005C
    //function vC8:?; virtual;//vC8//004BFEE0
    //procedure vCC(?:?); virtual;//vCC//004BFF28
    //procedure WMEraseBkgnd(?:?); message WM_ERASEBKGND;//004C0024
    //procedure sub_004BFFC8(?:?); dynamic;//004BFFC8
    procedure sub_004BFEC8; dynamic;//004BFEC8
    //procedure sub_004BFE6C(?:?; ?:?); dynamic;//004BFE6C
  end;
  TButton = class(TButtonControl)
  public
    Default:Boolean;//f210
    Cancel:Boolean;//f211
    FActive:Boolean;//f212
    ModalResult:TModalResult;//f214
    constructor Create(AOwner:TComponent); virtual;//v2C//004C00C4
    //procedure v98(?:?); virtual;//v98//004C0248
    procedure CreateWnd; virtual;//vA0//004C0294
    //procedure vD0(?:?); virtual;//vD0//004C018C
    //procedure WMEraseBkgnd(?:?); message WM_ERASEBKGND;//004C0470
    //procedure CMDialogKey(?:?); message CM_DIALOGKEY;//004C02E0
    //procedure CMDialogChar(?:?); message CM_DIALOGCHAR;//004C036C
    //procedure CMFocusChenged(?:?); message CM_FOCUSCHANGED;//004C0400
    //procedure sub_004C02B8(?:?); dynamic;//004C02B8
    //procedure sub_004C04A8(?:?); dynamic;//004C04A8
    procedure sub_004C0178; dynamic;//004C0178
    procedure sub_004C0140; dynamic;//004C0140
    procedure SetWordWrap(Value:Boolean);//004C0090
    procedure SetDefault(Value:Boolean);//004C01F4
  end;
  TCheckBoxState = (cbUnchecked, cbChecked, cbGrayed);
  TCustomCheckBox = class(TButtonControl)
  public
    FAlignment:TLeftRight;//f210
    FAllowGrayed:Boolean;//f211
    FState:TCheckBoxState;//f212
    constructor Create(AOwner:TComponent); virtual;//v2C//004C0504
    //procedure v98(?:?); virtual;//v98//004C0734
    procedure CreateWnd; virtual;//vA0//004C07A4
    function GetChecked:Boolean; virtual;//vC8//004C0644
    procedure SetChecked(Value:Boolean); virtual;//vCC//004C0698
    procedure vD0; virtual;//vD0//004C05CC
    procedure WMSize(Message:TWMSize); message WM_SIZE;//004C07D8
    //procedure CMDialogChar(?:?); message CM_DIALOGCHAR;//004C0814
    //procedure CMCtl3DChanged(?:?); message CM_CTL3DCHANGED;//004C07FC
    //procedure sub_004C08C4(?:?); dynamic;//004C08C4
    procedure sub_004C058C; dynamic;//004C058C
    procedure sub_004C0628; dynamic;//004C0628
  end;
  TCheckBox = class(TCustomCheckBox)
    function IsStoredChecked(Value:Boolean):Boolean;//004BFEF4
    procedure SetAlignment(Value:TLeftRight);//004C0664
    procedure SetState(Value:TCheckBoxState);//004C06C4
  end;
  TRadioButton = class(TButtonControl)
  public
    Alignment:TLeftRight;//f210
    FChecked:Boolean;//f211
    constructor Create(AOwner:TComponent); virtual;//v2C//004C08EC
    //procedure v98(?:?); virtual;//v98//004C0B58
    procedure CreateWnd; virtual;//vA0//004C0BC4
    function GetChecked:Boolean; virtual;//vC8//004C0968
    procedure SetChecked(Value:Boolean); virtual;//vCC//004C0AC4
    //procedure CMDialogChar(?:?); message CM_DIALOGCHAR;//004C0C10
    //procedure CMCtl3DChanged(?:?); message CM_CTL3DCHANGED;//004C0BF8
    //procedure sub_004C0CA4(?:?); dynamic;//004C0CA4
    procedure sub_004C0984; dynamic;//004C0984
    procedure SetAlignment(Value:TLeftRight);//004C09C4
  end;
  TListBoxStyle = (lbStandard, lbOwnerDrawFixed, lbOwnerDrawVariable, lbVirtual, lbVirtualOwnerDraw);
  TLBGetDataEvent = procedure(Control:TWinControl; Index:Integer; var Data:String) of object;;
  TLBGetDataObjectEvent = procedure(Control:TWinControl; Index:Integer; var DataObject:TObject) of object;;
  TLBFindDataEvent = function(Control:TWinControl; FindString:String):Integer of object;;
  TCustomListBox = class(TCustomMultiSelectListControl)
  public
    FAutoComplete:Boolean;//f210
    FCount:Integer;//f214
    FItems:TStrings;//f218
    FFilter:String;//f21C
    FLastTime:Cardinal;//f220
    FBorderStyle:TBorderStyle;//f224
    FCanvas:TCanvas;//f228
    FColumns:Integer;//f22C
    FItemHeight:Integer;//f230
    FOldCount:Integer;//f234
    FStyle:TListBoxStyle;//f238
    FIntegralHeight:Boolean;//f239
    FSorted:Boolean;//f23A
    FExtendedSelect:Boolean;//f23B
    FTabWidth:Integer;//f23C
    FSaveItems:TStringList;//f240
    FSaveTopIndex:Integer;//f244
    FSaveItemIndex:Integer;//f248
    FOnDrawItem:TDrawItemEvent;//f250
    f252:word;//f252
    f254:dword;//f254
    FOnMeasureItem:TMeasureItemEvent;//f258
    f25A:word;//f25A
    f25C:dword;//f25C
    FOnData:TLBGetDataEvent;//f260
    f262:word;//f262
    f264:dword;//f264
    FOnDataFind:TLBFindDataEvent;//f268
    f26A:word;//f26A
    f26C:dword;//f26C
    FOnDataObject:TLBGetDataObjectEvent;//f270
    f272:word;//f272
    f274:dword;//f274
    FMoving:Boolean;//f278
    destructor Destroy; virtual;//004C1550
    constructor Create(AOwner:TComponent); virtual;//v2C//004C142C
    //procedure v74(?:?); virtual;//v74//004C2510
    //procedure v98(?:?); virtual;//v98//004C21F8
    procedure CreateWnd; virtual;//vA0//004C2350
    procedure vB0; virtual;//vB0//004C2470
    //function vC8:?; virtual;//vC8//004C1AB4
    //function vCC:?; virtual;//vCC//004C1A60
    //procedure vD0(?:?); virtual;//vD0//004C1B20
    //procedure vD4(?:?; ?:?); virtual;//vD4//004C15AC
    procedure Clear; virtual;//vD8//004C1744
    procedure vDC; virtual;//vDC//004C175C
    //procedure vE0(?:?); virtual;//vE0//004C17B8
    procedure vE4; virtual;//vE4//004C1908
    procedure vEC; virtual;//vEC//004C2BFC
    //function vF0:?; virtual;//vF0//004C1AF4
    procedure SetMultiSelect(Value:Boolean); virtual;//vF4//004C1CBC
    //procedure vF8(?:?; ?:?; ?:?); virtual;//vF8//004C28F4
    //procedure vFC(?:?; ?:?); virtual;//vFC//004C2A30
    procedure WMSize(Message:TWMSize); message WM_SIZE;//004C2870
    procedure WMPaint(var Message:TWMPaint); message WM_PAINT;//004C2840
    //procedure sub_004C1EEC(?:?); dynamic;//004C1EEC
    //procedure sub_004C1FC8(?:?); dynamic;//004C1FC8
    //procedure WMLButtonDown(?:?); message WM_LBUTTONDOWN;//004C2594
    //procedure CMCtl3DChanged(?:?); message CM_CTL3DCHANGED;//004C2BC0
    //procedure sub_004C2A6C(?:?); dynamic;//004C2A6C
    //procedure sub_004C2B70(?:?); dynamic;//004C2B70
    //procedure sub_004C2650(?:?); dynamic;//004C2650
    //procedure sub_004C16E8(?:?); dynamic;//004C16E8
    procedure sub_004C1714; dynamic;//004C1714
    //procedure sub_004C1668(?:?; ?:?); dynamic;//004C1668
    //procedure sub_004C1638(?:?); dynamic;//004C1638
    //procedure sub_004C16C0(?:?; ?:?); dynamic;//004C16C0
    //procedure sub_004C1698(?:?); dynamic;//004C1698
    procedure KeyPress(Key:Char); dynamic;//004C2D34
    procedure sub_004C2894; dynamic;//004C2894
  end;
  TListBox = class(TCustomListBox)
    procedure SetColumns(Value:Integer);//004C19F8
    procedure SetExtendedSelect(Value:Boolean);//004C1B80
    procedure SetIntegralHeight(Value:Boolean);//004C1BB4
    //function GetItemHeight:?;//004C1BF4
    procedure SetItemHeight(Value:Integer);//004C1C44
    procedure SetTabWidth(Value:Integer);//004C1C7C
    procedure SetSorted(Value:Boolean);//004C1E28
    procedure SetStyle(Value:TListBoxStyle);//004C1E6C
    procedure SetBorderStyle(Value:TBorderStyle);//004C2090
    procedure SetItems(Value:TStrings);//004C20FC
    //function GetScrollWidth:?;//004C30C8
    procedure SetScrollWidth(Value:Integer);//004C30F4
  end;
  TMemoStrings = class(TStrings)
  public
    ..............................Memo:TCustomMemo;//f10
    //procedure vC(?:?; ?:?); virtual;//vC//004BE130
    //function v14:?; virtual;//v14//004BE0A4
    //procedure v1C(?:?); virtual;//v1C//004BE490
    //procedure v20(?:?; ?:?); virtual;//v20//004BE188
    //procedure v2C(?:?); virtual;//v2C//004BE4B0
    //procedure v30(?:?); virtual;//v30//004BE42C
    procedure Clear; virtual;//v44//004BE414
    //procedure v48(?:?); virtual;//v48//004BE354
    //procedure v60(?:?; ?:?); virtual;//v60//004BE21C
  end;
  TListBoxStrings = class(TStrings)
  public
    .........................................ListBox:TCustomListBox;//f10
    //procedure vC(?:?; ?:?); virtual;//vC//004C0D18
    //function v14:?; virtual;//v14//004C0CE8
    //function v18(?:?):?; virtual;//v18//004C0E0C
    //procedure v20(?:?; ?:?); virtual;//v20//004C0EAC
    //procedure v24(?:?; ?:?); virtual;//v24//004C0F40
    //procedure v30(?:?); virtual;//v30//004C1278
    //function v38(?:?):?; virtual;//v38//004C0F84
    procedure Clear; virtual;//v44//004C125C
    //procedure v48(?:?); virtual;//v48//004C10CC
    //procedure v4C(?:?; ?:?); virtual;//v4C//004C10F0
    //function v54(?:?):?; virtual;//v54//004C12B8
    //procedure v60(?:?; ?:?); virtual;//v60//004C102C
    //procedure v70(?:?; ?:?); virtual;//v70//004C1314
  end;
    //function sub_004BC3D4(?:TCustomCombo):?;//004BC3D4
    constructor Create(AOwner:TComponent);//004BC618
    //procedure sub_004BC68C(?:?);//004BC68C
    //procedure sub_004BC708(?:?);//004BC708
    procedure sub_004BC72C;//004BC72C
    //procedure CMDialogChar(?:?);//004BCB40
    //procedure CMTextChanged(?:?);//004BCBD0
    //procedure CMCtl3DChanged(?:?);//004BCBF0
    procedure WMSize(Message:TWMSize);//004BCC1C
    constructor Create(AOwner:TComponent);//004BCC40
    //procedure sub_004BCD08(?:?);//004BCD08
    //procedure sub_004BCD24(?:?; ?:?);//004BCD24
    procedure sub_004BCED0;//004BCED0
    procedure Loaded;//004BCFF4
    procedure sub_004BD014;//004BD014
    procedure SetAutoSize(Value:Boolean);//004BD13C
    //function GetTransparent:?;//004BD174
    procedure SetShowAccelChar(Value:Boolean);//004BD1C4
    procedure SetTransparent(Value:Boolean);//004BD1F8
    procedure SetLayout(Value:TTextLayout);//004BD258
    procedure SetWordWrap(Value:Boolean);//004BD28C
    procedure Notification(AComponent:TComponent; Operation:TOperation);//004BD2CC
    //procedure CMTextChanged(?:?);//004BD30C
    //procedure CMFontChanged(?:?);//004BD334
    //procedure CMDialogChar(?:?);//004BD360
    //procedure CMMouseEnter(?:?);//004BD418
    //procedure CMMouseLeave(?:?);//004BD454
    constructor Create(AOwner:TComponent);//004BD490
    //procedure sub_004BD564(?:?);//004BD564
    procedure SetAutoSize(Value:Boolean);//004BD590
    procedure SetBorderStyle(Value:TBorderStyle);//004BD5C4
    procedure SetCharCase(Value:TEditCharCase);//004BD600
    procedure SetHideSelection(Value:Boolean);//004BD634
    procedure SetMaxLength(Value:Integer);//004BD668
    procedure SetOEMConvert(Value:Boolean);//004BD6AC
    //function sub_004BD6E0(?:TCustomEdit):?;//004BD6E0
    procedure SetPasswordChar(Value:Char);//004BD770
    procedure SetReadOnly(Value:Boolean);//004BD814
    //function sub_004BD868:?;//004BD868
    //procedure sub_004BD894(?:?);//004BD894
    //function sub_004BD8C0:?;//004BD8C0
    //procedure sub_004BD8F4(?:?);//004BD8F4
    procedure sub_004BD95C;//004BD95C
    //function sub_004BD9A4(?:?; ?:?):?;//004BD9A4
    //procedure sub_004BDA48(?:?);//004BDA48
    procedure CreateParams(var Params:TCreateParams);//004BDAF0
    //procedure sub_004BDBD8(?:?);//004BDBD8
    procedure CreateWnd;//004BDC68
    procedure sub_004BDD0C;//004BDD0C
    procedure sub_004BDD88(?:TCustomEdit);//004BDD88
    procedure sub_004BDE5C;//004BDE5C
    procedure DefaultHandler(var Message:void );//004BDE90
    //procedure WMSetFont(?:?);//004BDED8
    //procedure CMCtl3DChanged(?:?);//004BDF28
    //procedure CMFontChanged(?:?);//004BDF6C
    //procedure sub_004BDFAC(?:?);//004BDFAC
    procedure CMEnter(var Message:TCMGotFocus);//004BDFE4
    //procedure CMTextChanged(?:?);//004BE030
    //procedure WMContextMenu(?:?);//004BE07C
    //function sub_004BE0A4:?;//004BE0A4
    //procedure sub_004BE130(?:?; ?:?);//004BE130
    //procedure sub_004BE188(?:?; ?:?);//004BE188
    //procedure sub_004BE21C(?:?; ?:?);//004BE21C
    //procedure sub_004BE354(?:?);//004BE354
    procedure Clear;//004BE414
    //procedure sub_004BE42C(?:?);//004BE42C
    //procedure sub_004BE490(?:?);//004BE490
    //procedure sub_004BE4B0(?:?);//004BE4B0
    constructor Create(AOwner:TComponent);//004BE594
    destructor Destroy;//004BE644
    procedure CreateParams(var Params:TCreateParams);//004BE684
    //procedure sub_004BE700(?:?);//004BE700
    //procedure sub_004BE834(?:?);//004BE834
    //procedure sub_004BE8A4(?:?);//004BE8A4
    procedure sub_004BE8F4;//004BE8F4
    procedure Loaded;//004BE910
    //procedure WMGetDlgCode(?:?);//004BE9EC
    //procedure WMNCDestroy(?:?);//004BEA38
    procedure KeyPress(Key:Char);//004BEA54
    //function sub_004BEA8C:?;//004BEA8C
    //function sub_004BEABC(?:?):?;//004BEABC
    //procedure sub_004BEB40(?:?; ?:?);//004BEB40
    //procedure sub_004BEB74(?:?; ?:?);//004BEB74
    procedure Clear;//004BEBE8
    //procedure sub_004BEC6C(?:?);//004BEC6C
    //function sub_004BEC98(?:?):?;//004BEC98
    //procedure sub_004BECD0(?:?);//004BECD0
    constructor Create(AOwner:TComponent);//004BED10
    destructor Destroy;//004BEE3C
    procedure Clear;//004BEEB0
    procedure DestroyWindowHandle;//004BEEE8
    procedure sub_004BEF1C;//004BEF1C
    //function sub_004BEF40(?:TCustomCombo):?;//004BEF40
    //procedure sub_004BEF70(?:TCustomCombo; ?:?);//004BEF70
    //function sub_004BEFBC:?;//004BEFBC
    //procedure sub_004BF000(?:?);//004BF000
    //procedure sub_004BF050(?:?);//004BF050
    //procedure WMCreate(?:?);//004BF07C
    //procedure WMDrawItem(?:?);//004BF0B8
    //procedure WMMeasureItem(?:?);//004BF0D4
    //procedure WMDeleteItem(?:?);//004BF0F0
    //procedure WMGetDlgCode(?:?);//004BF10C
    //procedure CMCancelMode(?:?);//004BF13C
    //procedure CMCtl3DChanged(?:?);//004BF168
    //procedure sub_004BF2EC(?:?; ?:?; ?:?);//004BF2EC
    //procedure sub_004BF604(?:?);//004BF604
    //procedure sub_004BF758(?:?);//004BF758
    procedure sub_004BF8F8;//004BF8F8
    procedure sub_004BF92C;//004BF92C
    procedure Loaded;//004BF958
    procedure sub_004BF98C;//004BF98C
    procedure sub_004BF9DC;//004BF9DC
    procedure sub_004BFA08;//004BFA08
    procedure CreateWnd;//004BFA44
    procedure sub_004BFA8C;//004BFA8C
    //procedure sub_004BFB5C(?:?);//004BFB5C
    //procedure sub_004BFB98(?:?);//004BFB98
    //procedure sub_004BFBB0(?:?);//004BFBB0
    procedure sub_004BFC4C;//004BFC4C
    //function sub_004BFC80:?;//004BFC80
    //procedure sub_004BFCA0(?:?);//004BFCA0
    //procedure sub_004BFCBC(?:?; ?:?);//004BFCBC
    //procedure sub_004BFD18(?:?);//004BFD18
    //function sub_004BFD48:?;//004BFD48
    //procedure sub_004BFD98(?:?);//004BFD98
    constructor Create(AOwner:TComponent);//004BFE04
    //procedure sub_004BFE6C(?:?; ?:?);//004BFE6C
    procedure sub_004BFEC8;//004BFEC8
    //function sub_004BFEE0:?;//004BFEE0
    //procedure sub_004BFF28(?:?);//004BFF28
    //procedure sub_004BFF38(?:?);//004BFF38
    //procedure sub_004BFFC8(?:?);//004BFFC8
    //procedure WMEraseBkgnd(?:?);//004C0024
    //procedure sub_004C005C(?:?);//004C005C
    constructor Create(AOwner:TComponent);//004C00C4
    procedure sub_004C0140;//004C0140
    procedure sub_004C0178;//004C0178
    //procedure sub_004C018C(?:?);//004C018C
    //procedure sub_004C0248(?:?);//004C0248
    procedure CreateWnd;//004C0294
    //procedure sub_004C02B8(?:?);//004C02B8
    //procedure CMDialogKey(?:?);//004C02E0
    //procedure CMDialogChar(?:?);//004C036C
    //procedure CMFocusChenged(?:?);//004C0400
    //procedure WMEraseBkgnd(?:?);//004C0470
    //procedure sub_004C04A8(?:?);//004C04A8
    constructor Create(AOwner:TComponent);//004C0504
    procedure sub_004C058C;//004C058C
    procedure sub_004C05CC;//004C05CC
    procedure sub_004C0628;//004C0628
    function GetChecked:Boolean;//004C0644
    procedure SetChecked(Value:Boolean);//004C0698
    //procedure sub_004C0734(?:?);//004C0734
    procedure CreateWnd;//004C07A4
    procedure WMSize(Message:TWMSize);//004C07D8
    //procedure CMCtl3DChanged(?:?);//004C07FC
    //procedure CMDialogChar(?:?);//004C0814
    //procedure sub_004C08C4(?:?);//004C08C4
    constructor Create(AOwner:TComponent);//004C08EC
    function GetChecked:Boolean;//004C0968
    procedure sub_004C0984;//004C0984
    //procedure sub_004C09F8(?:?);//004C09F8
    procedure SetChecked(Value:Boolean);//004C0AC4
    //procedure sub_004C0B58(?:?);//004C0B58
    procedure CreateWnd;//004C0BC4
    //procedure CMCtl3DChanged(?:?);//004C0BF8
    //procedure CMDialogChar(?:?);//004C0C10
    //procedure sub_004C0CA4(?:?);//004C0CA4
    //function sub_004C0CE8:?;//004C0CE8
    //procedure sub_004C0D18(?:?; ?:?);//004C0D18
    //function sub_004C0E0C(?:?):?;//004C0E0C
    //procedure sub_004C0EAC(?:?; ?:?);//004C0EAC
    //procedure sub_004C0F40(?:?; ?:?);//004C0F40
    //function sub_004C0F84(?:?):?;//004C0F84
    //procedure sub_004C102C(?:?; ?:?);//004C102C
    //procedure sub_004C10CC(?:?);//004C10CC
    //procedure sub_004C10F0(?:?; ?:?);//004C10F0
    procedure Clear;//004C125C
    //procedure sub_004C1278(?:?);//004C1278
    //function sub_004C12B8(?:?):?;//004C12B8
    //procedure sub_004C1314(?:?; ?:?);//004C1314
    constructor Create(AOwner:TComponent);//004C142C
    destructor Destroy;//004C1550
    //procedure sub_004C15AC(?:?; ?:?);//004C15AC
    //procedure sub_004C1638(?:?);//004C1638
    //procedure sub_004C1668(?:?; ?:?);//004C1668
    //procedure sub_004C1698(?:?);//004C1698
    //procedure sub_004C16C0(?:?; ?:?);//004C16C0
    //procedure sub_004C16E8(?:?);//004C16E8
    procedure sub_004C1714;//004C1714
    procedure Clear;//004C1744
    procedure sub_004C175C;//004C175C
    //procedure sub_004C17B8(?:?);//004C17B8
    procedure sub_004C1908;//004C1908
    procedure sub_004C198C(?:TCustomListBox);//004C198C
    //function sub_004C1A60:?;//004C1A60
    //function sub_004C1AB4:?;//004C1AB4
    //function sub_004C1AF4:?;//004C1AF4
    //procedure sub_004C1B20(?:?);//004C1B20
    procedure SetMultiSelect(Value:Boolean);//004C1CBC
    //function sub_004C1CF0(?:TCustomListBox; ?:?):?;//004C1CF0
    //procedure sub_004C1D58(?:TCustomListBox; ?:?; ?:?);//004C1D58
    //function sub_004C1EC0(?:TCustomListBox):?;//004C1EC0
    //procedure sub_004C1EEC(?:?);//004C1EEC
    //procedure sub_004C1FC8(?:?);//004C1FC8
    procedure sub_004C20C4(?:TCustomListBox; ?:Integer);//004C20C4
    //function sub_004C2158(?:TCustomListBox; ?:?; ?:?):?;//004C2158
    //procedure sub_004C21F8(?:?);//004C21F8
    procedure CreateWnd;//004C2350
    procedure sub_004C2470;//004C2470
    //procedure sub_004C2510(?:?);//004C2510
    //procedure WMLButtonDown(?:?);//004C2594
    //procedure sub_004C2650(?:?);//004C2650
    procedure PaintListBox;//004C2698
    procedure WMPaint(var Message:TWMPaint);//004C2840
    procedure WMSize(Message:TWMSize);//004C2870
    procedure sub_004C2894;//004C2894
    //procedure sub_004C28F4(?:?; ?:?; ?:?);//004C28F4
    //procedure sub_004C2A30(?:?; ?:?);//004C2A30
    //procedure sub_004C2A6C(?:?);//004C2A6C
    //procedure sub_004C2B70(?:?);//004C2B70
    //procedure CMCtl3DChanged(?:?);//004C2BC0
    procedure sub_004C2BFC;//004C2BFC
    //procedure sub_004C2C48(?:?);//004C2C48
    procedure KeyPress(Key:Char);//004C2D34
    procedure sub_004C2F14(?:TCustomListBox; ?:Integer);//004C2F14
    //procedure sub_004C300C(?:TCustomListBox; ?:?; ?:AnsiString);//004C300C
    //function sub_004C3048(?:TCustomListBox; ?:?):?;//004C3048
    //function sub_004C3084(?:TCustomListBox; ?:?):?;//004C3084

implementation

//004BC3D4
{*function sub_004BC3D4(?:TCustomCombo):?;
begin
 004BC3D4    push        ebp
 004BC3D5    mov         ebp,esp
 004BC3D7    add         esp,0FFFFFFF8
 004BC3DA    mov         dword ptr [ebp-4],eax
 004BC3DD    mov         byte ptr [ebp-5],1
 004BC3E1    cmp         dword ptr [ebp-4],0
>004BC3E5    je          004BC3FF
 004BC3E7    mov         eax,dword ptr [ebp-4]
 004BC3EA    cmp         dword ptr [eax+7C],0
>004BC3EE    jne         004BC403
 004BC3F0    mov         eax,dword ptr [ebp-4]
 004BC3F3    mov         eax,dword ptr [eax+30]
 004BC3F6    mov         dword ptr [ebp-4],eax
 004BC3F9    cmp         dword ptr [ebp-4],0
>004BC3FD    jne         004BC3E7
 004BC3FF    mov         byte ptr [ebp-5],0
 004BC403    mov         al,byte ptr [ebp-5]
 004BC406    pop         ecx
 004BC407    pop         ecx
 004BC408    pop         ebp
 004BC409    ret
end;*}

//004BC618
constructor TCustomGroupBox.Create(AOwner:TComponent);
begin
{*
 004BC618    push        ebp
 004BC619    mov         ebp,esp
 004BC61B    add         esp,0FFFFFFF4
 004BC61E    test        dl,dl
>004BC620    je          004BC62A
 004BC622    add         esp,0FFFFFFF0
 004BC625    call        @ClassCreate
 004BC62A    mov         dword ptr [ebp-0C],ecx
 004BC62D    mov         byte ptr [ebp-5],dl
 004BC630    mov         dword ptr [ebp-4],eax
 004BC633    mov         ecx,dword ptr [ebp-0C]
 004BC636    xor         edx,edx
 004BC638    mov         eax,dword ptr [ebp-4]
 004BC63B    call        TCustomControl.Create
 004BC640    mov         eax,dword ptr [ebp-4]
 004BC643    mov         edx,dword ptr ds:[4BC688];0x408AB gvar_004BC688
 004BC649    mov         dword ptr [eax+50],edx;TCustomGroupBox.FControlStyle:TControlStyle
 004BC64C    mov         edx,0B9
 004BC651    mov         eax,dword ptr [ebp-4]
 004BC654    call        TControl.SetWidth
 004BC659    mov         edx,69
 004BC65E    mov         eax,dword ptr [ebp-4]
 004BC661    call        TControl.SetHeight
 004BC666    mov         eax,dword ptr [ebp-4]
 004BC669    cmp         byte ptr [ebp-5],0
>004BC66D    je          004BC67E
 004BC66F    call        @AfterConstruction
 004BC674    pop         dword ptr fs:[0]
 004BC67B    add         esp,0C
 004BC67E    mov         eax,dword ptr [ebp-4]
 004BC681    mov         esp,ebp
 004BC683    pop         ebp
 004BC684    ret
*}
end;

//004BC68C
{*procedure sub_004BC68C(?:?);
begin
 004BC68C    push        ebp
 004BC68D    mov         ebp,esp
 004BC68F    add         esp,0FFFFFFF8
 004BC692    mov         dword ptr [ebp-8],edx
 004BC695    mov         dword ptr [ebp-4],eax
 004BC698    mov         edx,dword ptr [ebp-8]
 004BC69B    mov         eax,dword ptr [ebp-4]
 004BC69E    call        004CE790
 004BC6A3    mov         eax,dword ptr [ebp-4]
 004BC6A6    mov         edx,dword ptr [eax+68];TCustomGroupBox.FFont:TFont
 004BC6A9    mov         eax,dword ptr [ebp-4]
 004BC6AC    mov         eax,dword ptr [eax+208];TCustomGroupBox..............................FCanvas:TCanvas
 004BC6B2    call        TCanvas.SetFont
 004BC6B7    mov         edx,4BC704;'0'
 004BC6BC    mov         eax,dword ptr [ebp-4]
 004BC6BF    mov         eax,dword ptr [eax+208];TCustomGroupBox...............................FCanvas:TCanvas
 004BC6C5    call        TCanvas.TextHeight
 004BC6CA    mov         edx,dword ptr [ebp-8]
 004BC6CD    add         dword ptr [edx+4],eax
 004BC6D0    push        0FF
 004BC6D2    push        0FF
 004BC6D4    mov         eax,dword ptr [ebp-8]
 004BC6D7    push        eax
 004BC6D8    call        user32.InflateRect
 004BC6DD    mov         eax,dword ptr [ebp-4]
 004BC6E0    cmp         byte ptr [eax+1A5],0;TCustomGroupBox.FCtl3D:Boolean
>004BC6E7    je          004BC6F6
 004BC6E9    push        0FF
 004BC6EB    push        0FF
 004BC6ED    mov         eax,dword ptr [ebp-8]
 004BC6F0    push        eax
 004BC6F1    call        user32.InflateRect
 004BC6F6    pop         ecx
 004BC6F7    pop         ecx
 004BC6F8    pop         ebp
 004BC6F9    ret
end;*}

//004BC708
{*procedure sub_004BC708(?:?);
begin
 004BC708    push        ebp
 004BC709    mov         ebp,esp
 004BC70B    add         esp,0FFFFFFF8
 004BC70E    mov         dword ptr [ebp-8],edx
 004BC711    mov         dword ptr [ebp-4],eax
 004BC714    mov         edx,dword ptr [ebp-8]
 004BC717    mov         eax,dword ptr [ebp-4]
 004BC71A    call        004CF814
 004BC71F    mov         eax,dword ptr [ebp-8]
 004BC722    and         dword ptr [eax+24],0FFFFFFFC
 004BC726    pop         ecx
 004BC727    pop         ecx
 004BC728    pop         ebp
 004BC729    ret
end;*}

//004BC72C
procedure sub_004BC72C;
begin
{*
 004BC72C    push        ebp
 004BC72D    mov         ebp,esp
 004BC72F    mov         ecx,13
 004BC734    push        0
 004BC736    push        0
 004BC738    dec         ecx
>004BC739    jne         004BC734
 004BC73B    push        esi
 004BC73C    push        edi
 004BC73D    mov         dword ptr [ebp-4],eax
 004BC740    xor         eax,eax
 004BC742    push        ebp
 004BC743    push        4BCB24
 004BC748    push        dword ptr fs:[eax]
 004BC74B    mov         dword ptr fs:[eax],esp
 004BC74E    mov         eax,dword ptr [ebp-4]
 004BC751    mov         eax,dword ptr [eax+208];TCustomGroupBox................................FCanvas:TCanvas
 004BC757    mov         dword ptr [ebp-1C],eax
 004BC75A    mov         eax,dword ptr [ebp-4]
 004BC75D    mov         edx,dword ptr [eax+68];TCustomGroupBox.FFont:TFont
 004BC760    mov         eax,dword ptr [ebp-1C]
 004BC763    call        TCanvas.SetFont
 004BC768    call        ThemeServices
 004BC76D    call        TThemeServices.GetThemesEnabled
 004BC772    test        al,al
>004BC774    je          004BC906
 004BC77A    lea         edx,[ebp-5C]
 004BC77D    mov         eax,dword ptr [ebp-4]
 004BC780    call        TControl.GetText
 004BC785    cmp         dword ptr [ebp-5C],0
>004BC789    je          004BC816
 004BC78F    lea         eax,[ebp-14]
 004BC792    push        eax
 004BC793    lea         edx,[ebp-60]
 004BC796    mov         eax,dword ptr [ebp-4]
 004BC799    call        TControl.GetText
 004BC79E    mov         eax,dword ptr [ebp-60]
 004BC7A1    call        @DynArrayLength
 004BC7A6    push        eax
 004BC7A7    lea         edx,[ebp-64]
 004BC7AA    mov         eax,dword ptr [ebp-4]
 004BC7AD    call        TControl.GetText
 004BC7B2    mov         eax,dword ptr [ebp-64]
 004BC7B5    call        @LStrToPChar
 004BC7BA    push        eax
 004BC7BB    mov         eax,dword ptr [ebp-1C]
 004BC7BE    call        TCanvas.GetHandle
 004BC7C3    push        eax
 004BC7C4    call        gdi32.GetTextExtentPoint32A
 004BC7C9    mov         eax,dword ptr [ebp-10]
 004BC7CC    push        eax
 004BC7CD    lea         eax,[ebp-3C]
 004BC7D0    push        eax
 004BC7D1    mov         ecx,dword ptr [ebp-14]
 004BC7D4    xor         edx,edx
 004BC7D6    xor         eax,eax
 004BC7D8    call        Rect
 004BC7DD    mov         eax,dword ptr [ebp-4]
 004BC7E0    mov         si,0FFC8
 004BC7E4    call        @CallDynaInst;TControl.sub_004CB93C
 004BC7E9    test        al,al
>004BC7EB    jne         004BC7FC
 004BC7ED    push        0
 004BC7EF    push        8
 004BC7F1    lea         eax,[ebp-3C]
 004BC7F4    push        eax
 004BC7F5    call        user32.OffsetRect
>004BC7FA    jmp         004BC827
 004BC7FC    push        0
 004BC7FE    mov         eax,dword ptr [ebp-4]
 004BC801    mov         eax,dword ptr [eax+48];TCustomGroupBox.Width:Integer
 004BC804    sub         eax,8
 004BC807    sub         eax,dword ptr [ebp-34]
 004BC80A    push        eax
 004BC80B    lea         eax,[ebp-3C]
 004BC80E    push        eax
 004BC80F    call        user32.OffsetRect
>004BC814    jmp         004BC827
 004BC816    push        0
 004BC818    lea         eax,[ebp-3C]
 004BC81B    push        eax
 004BC81C    xor         ecx,ecx
 004BC81E    xor         edx,edx
 004BC820    xor         eax,eax
 004BC822    call        Rect
 004BC827    lea         edx,[ebp-4C]
 004BC82A    mov         eax,dword ptr [ebp-4]
 004BC82D    mov         ecx,dword ptr [eax]
 004BC82F    call        dword ptr [ecx+44];TCustomGroupBox.sub_004D3A1C
 004BC832    mov         eax,dword ptr [ebp-30]
 004BC835    sub         eax,dword ptr [ebp-38]
 004BC838    sar         eax,1
>004BC83A    jns         004BC83F
 004BC83C    adc         eax,0
 004BC83F    mov         dword ptr [ebp-48],eax
 004BC842    mov         eax,dword ptr [ebp-30]
 004BC845    push        eax
 004BC846    mov         eax,dword ptr [ebp-34]
 004BC849    push        eax
 004BC84A    mov         eax,dword ptr [ebp-38]
 004BC84D    push        eax
 004BC84E    mov         eax,dword ptr [ebp-3C]
 004BC851    push        eax
 004BC852    mov         eax,dword ptr [ebp-1C]
 004BC855    call        TCanvas.GetHandle
 004BC85A    push        eax
 004BC85B    call        gdi32.ExcludeClipRect
 004BC860    mov         eax,dword ptr [ebp-4]
 004BC863    mov         edx,dword ptr [eax]
 004BC865    call        dword ptr [edx+50];TImage.GetEnabled
 004BC868    test        al,al
>004BC86A    je          004BC872
 004BC86C    mov         byte ptr [ebp-15],1B
>004BC870    jmp         004BC876
 004BC872    mov         byte ptr [ebp-15],1C
 004BC876    call        ThemeServices
 004BC87B    lea         ecx,[ebp-58]
 004BC87E    mov         dl,byte ptr [ebp-15]
 004BC881    call        004B6600
 004BC886    lea         eax,[ebp-4C]
 004BC889    push        eax
 004BC88A    push        0
 004BC88C    mov         eax,dword ptr [ebp-1C]
 004BC88F    call        TCanvas.GetHandle
 004BC894    push        eax
 004BC895    call        ThemeServices
 004BC89A    lea         ecx,[ebp-58]
 004BC89D    pop         edx
 004BC89E    call        004B648C
 004BC8A3    push        0
 004BC8A5    mov         eax,dword ptr [ebp-1C]
 004BC8A8    call        TCanvas.GetHandle
 004BC8AD    push        eax
 004BC8AE    call        gdi32.SelectClipRgn
 004BC8B3    lea         edx,[ebp-68]
 004BC8B6    mov         eax,dword ptr [ebp-4]
 004BC8B9    call        TControl.GetText
 004BC8BE    cmp         dword ptr [ebp-68],0
>004BC8C2    je          004BCAE4
 004BC8C8    lea         edx,[ebp-70]
 004BC8CB    mov         eax,dword ptr [ebp-4]
 004BC8CE    call        TControl.GetText
 004BC8D3    mov         edx,dword ptr [ebp-70]
 004BC8D6    lea         eax,[ebp-6C]
 004BC8D9    call        @WStrFromLStr
 004BC8DE    mov         eax,dword ptr [ebp-6C]
 004BC8E1    push        eax
 004BC8E2    lea         eax,[ebp-3C]
 004BC8E5    push        eax
 004BC8E6    push        0
 004BC8E8    push        0
 004BC8EA    mov         eax,dword ptr [ebp-1C]
 004BC8ED    call        TCanvas.GetHandle
 004BC8F2    push        eax
 004BC8F3    call        ThemeServices
 004BC8F8    lea         ecx,[ebp-58]
 004BC8FB    pop         edx
 004BC8FC    call        004B6598
>004BC901    jmp         004BCAE4
 004BC906    mov         edx,4BCB3C;'0'
 004BC90B    mov         eax,dword ptr [ebp-1C]
 004BC90E    call        TCanvas.TextHeight
 004BC913    mov         dword ptr [ebp-8],eax
 004BC916    mov         eax,dword ptr [ebp-4]
 004BC919    mov         eax,dword ptr [eax+4C];TCustomGroupBox.Height:Integer
 004BC91C    push        eax
 004BC91D    lea         eax,[ebp-2C]
 004BC920    push        eax
 004BC921    mov         edx,dword ptr [ebp-8]
 004BC924    sar         edx,1
>004BC926    jns         004BC92B
 004BC928    adc         edx,0
 004BC92B    dec         edx
 004BC92C    mov         eax,dword ptr [ebp-4]
 004BC92F    mov         ecx,dword ptr [eax+48];TCustomGroupBox.Width:Integer
 004BC932    xor         eax,eax
 004BC934    call        Rect
 004BC939    mov         eax,dword ptr [ebp-4]
 004BC93C    cmp         byte ptr [eax+1A5],0;TCustomGroupBox.FCtl3D:Boolean
>004BC943    je          004BC985
 004BC945    inc         dword ptr [ebp-2C]
 004BC948    inc         dword ptr [ebp-28]
 004BC94B    mov         edx,0FF000014
 004BC950    mov         eax,dword ptr [ebp-1C]
 004BC953    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 004BC956    call        TBrush.SetColor
 004BC95B    lea         edx,[ebp-2C]
 004BC95E    mov         eax,dword ptr [ebp-1C]
 004BC961    call        00487D80
 004BC966    push        0FF
 004BC968    push        0FF
 004BC96A    lea         eax,[ebp-2C]
 004BC96D    push        eax
 004BC96E    call        user32.OffsetRect
 004BC973    mov         edx,0FF000010
 004BC978    mov         eax,dword ptr [ebp-1C]
 004BC97B    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 004BC97E    call        TBrush.SetColor
>004BC983    jmp         004BC995
 004BC985    mov         edx,0FF000006
 004BC98A    mov         eax,dword ptr [ebp-1C]
 004BC98D    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 004BC990    call        TBrush.SetColor
 004BC995    lea         edx,[ebp-2C]
 004BC998    mov         eax,dword ptr [ebp-1C]
 004BC99B    call        00487D80
 004BC9A0    lea         edx,[ebp-74]
 004BC9A3    mov         eax,dword ptr [ebp-4]
 004BC9A6    call        TControl.GetText
 004BC9AB    cmp         dword ptr [ebp-74],0
>004BC9AF    je          004BCAE4
 004BC9B5    mov         eax,dword ptr [ebp-4]
 004BC9B8    mov         si,0FFC8
 004BC9BC    call        @CallDynaInst;TControl.sub_004CB93C
 004BC9C1    test        al,al
>004BC9C3    jne         004BC9DD
 004BC9C5    mov         eax,dword ptr [ebp-8]
 004BC9C8    push        eax
 004BC9C9    lea         eax,[ebp-2C]
 004BC9CC    push        eax
 004BC9CD    xor         ecx,ecx
 004BC9CF    xor         edx,edx
 004BC9D1    mov         eax,8
 004BC9D6    call        Rect
>004BC9DB    jmp         004BCA2A
 004BC9DD    mov         eax,dword ptr [ebp-8]
 004BC9E0    push        eax
 004BC9E1    lea         eax,[ebp-84]
 004BC9E7    push        eax
 004BC9E8    lea         edx,[ebp-88]
 004BC9EE    mov         eax,dword ptr [ebp-4]
 004BC9F1    call        TControl.GetText
 004BC9F6    mov         edx,dword ptr [ebp-88]
 004BC9FC    mov         eax,dword ptr [ebp-4]
 004BC9FF    mov         eax,dword ptr [eax+208];TCustomGroupBox.................................FCanvas:TCanvas
 004BCA05    call        TCanvas.TextWidth
 004BCA0A    push        eax
 004BCA0B    mov         eax,dword ptr [ebp-24]
 004BCA0E    pop         edx
 004BCA0F    sub         eax,edx
 004BCA11    sub         eax,8
 004BCA14    xor         ecx,ecx
 004BCA16    xor         edx,edx
 004BCA18    call        Rect
 004BCA1D    lea         esi,[ebp-84]
 004BCA23    lea         edi,[ebp-2C]
 004BCA26    movs        dword ptr [edi],dword ptr [esi]
 004BCA27    movs        dword ptr [edi],dword ptr [esi]
 004BCA28    movs        dword ptr [edi],dword ptr [esi]
 004BCA29    movs        dword ptr [edi],dword ptr [esi]
 004BCA2A    mov         edx,20
 004BCA2F    mov         eax,dword ptr [ebp-4]
 004BCA32    call        004CDF58
 004BCA37    mov         dword ptr [ebp-0C],eax
 004BCA3A    mov         eax,dword ptr [ebp-0C]
 004BCA3D    or          eax,400
 004BCA42    push        eax
 004BCA43    lea         eax,[ebp-2C]
 004BCA46    push        eax
 004BCA47    lea         edx,[ebp-8C]
 004BCA4D    mov         eax,dword ptr [ebp-4]
 004BCA50    call        TControl.GetText
 004BCA55    mov         eax,dword ptr [ebp-8C]
 004BCA5B    call        @DynArrayLength
 004BCA60    push        eax
 004BCA61    lea         edx,[ebp-90]
 004BCA67    mov         eax,dword ptr [ebp-4]
 004BCA6A    call        TControl.GetText
 004BCA6F    mov         eax,dword ptr [ebp-90]
 004BCA75    call        @LStrToPChar
 004BCA7A    push        eax
 004BCA7B    mov         eax,dword ptr [ebp-1C]
 004BCA7E    call        TCanvas.GetHandle
 004BCA83    push        eax
 004BCA84    call        user32.DrawTextA
 004BCA89    mov         eax,dword ptr [ebp-4]
 004BCA8C    mov         edx,dword ptr [eax+70];TCustomGroupBox.FColor:TColor
 004BCA8F    mov         eax,dword ptr [ebp-1C]
 004BCA92    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 004BCA95    call        TBrush.SetColor
 004BCA9A    mov         eax,dword ptr [ebp-0C]
 004BCA9D    push        eax
 004BCA9E    lea         eax,[ebp-2C]
 004BCAA1    push        eax
 004BCAA2    lea         edx,[ebp-94]
 004BCAA8    mov         eax,dword ptr [ebp-4]
 004BCAAB    call        TControl.GetText
 004BCAB0    mov         eax,dword ptr [ebp-94]
 004BCAB6    call        @DynArrayLength
 004BCABB    push        eax
 004BCABC    lea         edx,[ebp-98]
 004BCAC2    mov         eax,dword ptr [ebp-4]
 004BCAC5    call        TControl.GetText
 004BCACA    mov         eax,dword ptr [ebp-98]
 004BCAD0    call        @LStrToPChar
 004BCAD5    push        eax
 004BCAD6    mov         eax,dword ptr [ebp-1C]
 004BCAD9    call        TCanvas.GetHandle
 004BCADE    push        eax
 004BCADF    call        user32.DrawTextA
 004BCAE4    xor         eax,eax
 004BCAE6    pop         edx
 004BCAE7    pop         ecx
 004BCAE8    pop         ecx
 004BCAE9    mov         dword ptr fs:[eax],edx
 004BCAEC    push        4BCB2B
 004BCAF1    lea         eax,[ebp-98]
 004BCAF7    mov         edx,5
 004BCAFC    call        @LStrArrayClr
 004BCB01    lea         eax,[ebp-74]
 004BCB04    mov         edx,2
 004BCB09    call        @LStrArrayClr
 004BCB0E    lea         eax,[ebp-6C]
 004BCB11    call        @WStrClr
 004BCB16    lea         eax,[ebp-68]
 004BCB19    mov         edx,4
 004BCB1E    call        @LStrArrayClr
 004BCB23    ret
>004BCB24    jmp         @HandleFinally
>004BCB29    jmp         004BCAF1
 004BCB2B    pop         edi
 004BCB2C    pop         esi
 004BCB2D    mov         esp,ebp
 004BCB2F    pop         ebp
 004BCB30    ret
*}
end;

//004BCB40
{*procedure TCustomGroupBox.CMDialogChar(?:?);
begin
 004BCB40    push        ebp
 004BCB41    mov         ebp,esp
 004BCB43    add         esp,0FFFFFFF4
 004BCB46    push        esi
 004BCB47    xor         ecx,ecx
 004BCB49    mov         dword ptr [ebp-0C],ecx
 004BCB4C    mov         dword ptr [ebp-8],edx
 004BCB4F    mov         dword ptr [ebp-4],eax
 004BCB52    xor         eax,eax
 004BCB54    push        ebp
 004BCB55    push        4BCBC3
 004BCB5A    push        dword ptr fs:[eax]
 004BCB5D    mov         dword ptr fs:[eax],esp
 004BCB60    lea         edx,[ebp-0C]
 004BCB63    mov         eax,dword ptr [ebp-4]
 004BCB66    call        TControl.GetText
 004BCB6B    mov         edx,dword ptr [ebp-0C]
 004BCB6E    mov         eax,dword ptr [ebp-8]
 004BCB71    mov         ax,word ptr [eax+4]
 004BCB75    call        004E7E60
 004BCB7A    test        al,al
>004BCB7C    je          004BCBA2
 004BCB7E    mov         eax,dword ptr [ebp-4]
 004BCB81    mov         si,0FFB8
 004BCB85    call        @CallDynaInst;TWinControl.sub_004D37A8
 004BCB8A    test        al,al
>004BCB8C    je          004BCBA2
 004BCB8E    mov         eax,dword ptr [ebp-4]
 004BCB91    call        004D4074
 004BCB96    mov         eax,dword ptr [ebp-8]
 004BCB99    mov         dword ptr [eax+0C],1
>004BCBA0    jmp         004BCBAD
 004BCBA2    mov         edx,dword ptr [ebp-8]
 004BCBA5    mov         eax,dword ptr [ebp-4]
 004BCBA8    call        TWinControl.CMDialogChar
 004BCBAD    xor         eax,eax
 004BCBAF    pop         edx
 004BCBB0    pop         ecx
 004BCBB1    pop         ecx
 004BCBB2    mov         dword ptr fs:[eax],edx
 004BCBB5    push        4BCBCA
 004BCBBA    lea         eax,[ebp-0C]
 004BCBBD    call        @LStrClr
 004BCBC2    ret
>004BCBC3    jmp         @HandleFinally
>004BCBC8    jmp         004BCBBA
 004BCBCA    pop         esi
 004BCBCB    mov         esp,ebp
 004BCBCD    pop         ebp
 004BCBCE    ret
end;*}

//004BCBD0
{*procedure TCustomGroupBox.CMTextChanged(?:?);
begin
 004BCBD0    push        ebp
 004BCBD1    mov         ebp,esp
 004BCBD3    add         esp,0FFFFFFF8
 004BCBD6    mov         dword ptr [ebp-8],edx
 004BCBD9    mov         dword ptr [ebp-4],eax
 004BCBDC    mov         eax,dword ptr [ebp-4]
 004BCBDF    mov         edx,dword ptr [eax]
 004BCBE1    call        dword ptr [edx+7C];TCustomGroupBox.sub_004D3648
 004BCBE4    mov         eax,dword ptr [ebp-4]
 004BCBE7    call        004CF09C
 004BCBEC    pop         ecx
 004BCBED    pop         ecx
 004BCBEE    pop         ebp
 004BCBEF    ret
end;*}

//004BCBF0
{*procedure TCustomGroupBox.CMCtl3DChanged(?:?);
begin
 004BCBF0    push        ebp
 004BCBF1    mov         ebp,esp
 004BCBF3    add         esp,0FFFFFFF8
 004BCBF6    mov         dword ptr [ebp-8],edx
 004BCBF9    mov         dword ptr [ebp-4],eax
 004BCBFC    mov         edx,dword ptr [ebp-8]
 004BCBFF    mov         eax,dword ptr [ebp-4]
 004BCC02    call        TWinControl.CMCtl3DChanged
 004BCC07    mov         eax,dword ptr [ebp-4]
 004BCC0A    mov         edx,dword ptr [eax]
 004BCC0C    call        dword ptr [edx+7C];TCustomGroupBox.sub_004D3648
 004BCC0F    mov         eax,dword ptr [ebp-4]
 004BCC12    call        004CF09C
 004BCC17    pop         ecx
 004BCC18    pop         ecx
 004BCC19    pop         ebp
 004BCC1A    ret
end;*}

//004BCC1C
procedure TCustomGroupBox.WMSize(Message:TWMSize);
begin
{*
 004BCC1C    push        ebp
 004BCC1D    mov         ebp,esp
 004BCC1F    add         esp,0FFFFFFF8
 004BCC22    mov         dword ptr [ebp-8],edx
 004BCC25    mov         dword ptr [ebp-4],eax
 004BCC28    mov         edx,dword ptr [ebp-8]
 004BCC2B    mov         eax,dword ptr [ebp-4]
 004BCC2E    call        TWinControl.WMSize
 004BCC33    mov         eax,dword ptr [ebp-4]
 004BCC36    mov         edx,dword ptr [eax]
 004BCC38    call        dword ptr [edx+7C];TCustomGroupBox.sub_004D3648
 004BCC3B    pop         ecx
 004BCC3C    pop         ecx
 004BCC3D    pop         ebp
 004BCC3E    ret
*}
end;

//004BCC40
constructor TCustomLabel.Create(AOwner:TComponent);
begin
{*
 004BCC40    push        ebp
 004BCC41    mov         ebp,esp
 004BCC43    add         esp,0FFFFFFF4
 004BCC46    test        dl,dl
>004BCC48    je          004BCC52
 004BCC4A    add         esp,0FFFFFFF0
 004BCC4D    call        @ClassCreate
 004BCC52    mov         dword ptr [ebp-0C],ecx
 004BCC55    mov         byte ptr [ebp-5],dl
 004BCC58    mov         dword ptr [ebp-4],eax
 004BCC5B    mov         ecx,dword ptr [ebp-0C]
 004BCC5E    xor         edx,edx
 004BCC60    mov         eax,dword ptr [ebp-4]
 004BCC63    call        TGraphicControl.Create
 004BCC68    mov         eax,dword ptr [ebp-4]
 004BCC6B    mov         eax,dword ptr [eax+50];TCustomLabel.FControlStyle:TControlStyle
 004BCC6E    or          eax,dword ptr ds:[4BCD00];0x800 gvar_004BCD00
 004BCC74    mov         edx,dword ptr [ebp-4]
 004BCC77    mov         dword ptr [edx+50],eax;TCustomLabel.FControlStyle:TControlStyle
 004BCC7A    mov         edx,41
 004BCC7F    mov         eax,dword ptr [ebp-4]
 004BCC82    call        TControl.SetWidth
 004BCC87    mov         edx,11
 004BCC8C    mov         eax,dword ptr [ebp-4]
 004BCC8F    call        TControl.SetHeight
 004BCC94    mov         eax,dword ptr [ebp-4]
 004BCC97    mov         byte ptr [eax+16D],1;TCustomLabel.FAutoSize:Boolean
 004BCC9E    mov         eax,dword ptr [ebp-4]
 004BCCA1    mov         byte ptr [eax+170],1;TCustomLabel.FShowAccelChar:Boolean
 004BCCA8    call        ThemeServices
 004BCCAD    call        TThemeServices.GetThemesEnabled
 004BCCB2    test        al,al
>004BCCB4    je          004BCCCC
 004BCCB6    mov         eax,dword ptr [ebp-4]
 004BCCB9    mov         edx,dword ptr ds:[4BCD04];0x40 gvar_004BCD04
 004BCCBF    not         edx
 004BCCC1    and         edx,dword ptr [eax+50];TCustomLabel.FControlStyle:TControlStyle
 004BCCC4    mov         eax,dword ptr [ebp-4]
 004BCCC7    mov         dword ptr [eax+50],edx;TCustomLabel.FControlStyle:TControlStyle
>004BCCCA    jmp         004BCCDE
 004BCCCC    mov         eax,dword ptr [ebp-4]
 004BCCCF    mov         eax,dword ptr [eax+50];TCustomLabel.FControlStyle:TControlStyle
 004BCCD2    or          eax,dword ptr ds:[4BCD04];0x40 gvar_004BCD04
 004BCCD8    mov         edx,dword ptr [ebp-4]
 004BCCDB    mov         dword ptr [edx+50],eax;TCustomLabel.FControlStyle:TControlStyle
 004BCCDE    mov         eax,dword ptr [ebp-4]
 004BCCE1    cmp         byte ptr [ebp-5],0
>004BCCE5    je          004BCCF6
 004BCCE7    call        @AfterConstruction
 004BCCEC    pop         dword ptr fs:[0]
 004BCCF3    add         esp,0C
 004BCCF6    mov         eax,dword ptr [ebp-4]
 004BCCF9    mov         esp,ebp
 004BCCFB    pop         ebp
 004BCCFC    ret
*}
end;

//004BCD08
{*procedure sub_004BCD08(?:?);
begin
 004BCD08    push        ebp
 004BCD09    mov         ebp,esp
 004BCD0B    add         esp,0FFFFFFF8
 004BCD0E    mov         dword ptr [ebp-8],edx
 004BCD11    mov         dword ptr [ebp-4],eax
 004BCD14    mov         edx,dword ptr [ebp-8]
 004BCD17    mov         eax,dword ptr [ebp-4]
 004BCD1A    call        TControl.GetText
 004BCD1F    pop         ecx
 004BCD20    pop         ecx
 004BCD21    pop         ebp
 004BCD22    ret
end;*}

//004BCD24
{*procedure TCustomLabel.sub_004BCD24(?:?; ?:?);
begin
 004BCD24    push        ebp
 004BCD25    mov         ebp,esp
 004BCD27    add         esp,0FFFFFFF0
 004BCD2A    push        ebx
 004BCD2B    xor         ebx,ebx
 004BCD2D    mov         dword ptr [ebp-10],ebx
 004BCD30    mov         dword ptr [ebp-0C],ecx
 004BCD33    mov         dword ptr [ebp-8],edx
 004BCD36    mov         dword ptr [ebp-4],eax
 004BCD39    xor         eax,eax
 004BCD3B    push        ebp
 004BCD3C    push        4BCEB8
 004BCD41    push        dword ptr fs:[eax]
 004BCD44    mov         dword ptr fs:[eax],esp
 004BCD47    lea         edx,[ebp-10]
 004BCD4A    mov         eax,dword ptr [ebp-4]
 004BCD4D    mov         ecx,dword ptr [eax]
 004BCD4F    call        dword ptr [ecx+90];TCustomLabel.sub_004BCD08
 004BCD55    test        byte ptr [ebp-0B],4
>004BCD59    je          004BCD8B
 004BCD5B    cmp         dword ptr [ebp-10],0
>004BCD5F    je          004BCD7E
 004BCD61    mov         eax,dword ptr [ebp-4]
 004BCD64    cmp         byte ptr [eax+170],0;TCustomLabel.FShowAccelChar:Boolean
>004BCD6B    je          004BCD8B
 004BCD6D    mov         eax,dword ptr [ebp-10]
 004BCD70    cmp         byte ptr [eax],26
>004BCD73    jne         004BCD8B
 004BCD75    mov         eax,dword ptr [ebp-10]
 004BCD78    cmp         byte ptr [eax+1],0
>004BCD7C    jne         004BCD8B
 004BCD7E    lea         eax,[ebp-10]
 004BCD81    mov         edx,4BCECC;' '
 004BCD86    call        @LStrCat
 004BCD8B    mov         eax,dword ptr [ebp-4]
 004BCD8E    cmp         byte ptr [eax+170],0;TCustomLabel.FShowAccelChar:Boolean
>004BCD95    jne         004BCD9E
 004BCD97    or          dword ptr [ebp-0C],800
 004BCD9E    mov         edx,dword ptr [ebp-0C]
 004BCDA1    mov         eax,dword ptr [ebp-4]
 004BCDA4    call        004CDF58
 004BCDA9    mov         dword ptr [ebp-0C],eax
 004BCDAC    mov         eax,dword ptr [ebp-4]
 004BCDAF    mov         edx,dword ptr [eax+68];TCustomLabel.FFont:TFont
 004BCDB2    mov         eax,dword ptr [ebp-4]
 004BCDB5    mov         eax,dword ptr [eax+160];TCustomLabel.......................................................
 004BCDBB    call        TCanvas.SetFont
 004BCDC0    mov         eax,dword ptr [ebp-4]
 004BCDC3    mov         edx,dword ptr [eax]
 004BCDC5    call        dword ptr [edx+50];TImage.GetEnabled
 004BCDC8    test        al,al
>004BCDCA    jne         004BCE74
 004BCDD0    push        1
 004BCDD2    push        1
 004BCDD4    mov         eax,dword ptr [ebp-8]
 004BCDD7    push        eax
 004BCDD8    call        user32.OffsetRect
 004BCDDD    mov         eax,dword ptr [ebp-4]
 004BCDE0    mov         eax,dword ptr [eax+160];TCustomLabel.......................................................
 004BCDE6    mov         eax,dword ptr [eax+0C];TCanvas.Font:TFont
 004BCDE9    mov         edx,0FF000014
 004BCDEE    call        TFont.SetColor
 004BCDF3    mov         eax,dword ptr [ebp-0C]
 004BCDF6    push        eax
 004BCDF7    mov         eax,dword ptr [ebp-8]
 004BCDFA    push        eax
 004BCDFB    mov         eax,dword ptr [ebp-10]
 004BCDFE    call        @DynArrayLength
 004BCE03    push        eax
 004BCE04    mov         eax,dword ptr [ebp-10]
 004BCE07    call        @LStrToPChar
 004BCE0C    push        eax
 004BCE0D    mov         eax,dword ptr [ebp-4]
 004BCE10    mov         eax,dword ptr [eax+160];TCustomLabel.......................................................
 004BCE16    call        TCanvas.GetHandle
 004BCE1B    push        eax
 004BCE1C    call        user32.DrawTextA
 004BCE21    push        0FF
 004BCE23    push        0FF
 004BCE25    mov         eax,dword ptr [ebp-8]
 004BCE28    push        eax
 004BCE29    call        user32.OffsetRect
 004BCE2E    mov         eax,dword ptr [ebp-4]
 004BCE31    mov         eax,dword ptr [eax+160];TCustomLabel.......................................................
 004BCE37    mov         eax,dword ptr [eax+0C];TCanvas.Font:TFont
 004BCE3A    mov         edx,0FF000010
 004BCE3F    call        TFont.SetColor
 004BCE44    mov         eax,dword ptr [ebp-0C]
 004BCE47    push        eax
 004BCE48    mov         eax,dword ptr [ebp-8]
 004BCE4B    push        eax
 004BCE4C    mov         eax,dword ptr [ebp-10]
 004BCE4F    call        @DynArrayLength
 004BCE54    push        eax
 004BCE55    mov         eax,dword ptr [ebp-10]
 004BCE58    call        @LStrToPChar
 004BCE5D    push        eax
 004BCE5E    mov         eax,dword ptr [ebp-4]
 004BCE61    mov         eax,dword ptr [eax+160];TCustomLabel.......................................................
 004BCE67    call        TCanvas.GetHandle
 004BCE6C    push        eax
 004BCE6D    call        user32.DrawTextA
>004BCE72    jmp         004BCEA2
 004BCE74    mov         eax,dword ptr [ebp-0C]
 004BCE77    push        eax
 004BCE78    mov         eax,dword ptr [ebp-8]
 004BCE7B    push        eax
 004BCE7C    mov         eax,dword ptr [ebp-10]
 004BCE7F    call        @DynArrayLength
 004BCE84    push        eax
 004BCE85    mov         eax,dword ptr [ebp-10]
 004BCE88    call        @LStrToPChar
 004BCE8D    push        eax
 004BCE8E    mov         eax,dword ptr [ebp-4]
 004BCE91    mov         eax,dword ptr [eax+160];TCustomLabel.......................................................
 004BCE97    call        TCanvas.GetHandle
 004BCE9C    push        eax
 004BCE9D    call        user32.DrawTextA
 004BCEA2    xor         eax,eax
 004BCEA4    pop         edx
 004BCEA5    pop         ecx
 004BCEA6    pop         ecx
 004BCEA7    mov         dword ptr fs:[eax],edx
 004BCEAA    push        4BCEBF
 004BCEAF    lea         eax,[ebp-10]
 004BCEB2    call        @LStrClr
 004BCEB7    ret
>004BCEB8    jmp         @HandleFinally
>004BCEBD    jmp         004BCEAF
 004BCEBF    pop         ebx
 004BCEC0    mov         esp,ebp
 004BCEC2    pop         ebp
 004BCEC3    ret
end;*}

//004BCED0
procedure sub_004BCED0;
begin
{*
 004BCED0    push        ebp
 004BCED1    mov         ebp,esp
 004BCED3    add         esp,0FFFFFFC4
 004BCED6    push        esi
 004BCED7    push        edi
 004BCED8    mov         dword ptr [ebp-4],eax
 004BCEDB    mov         eax,dword ptr [ebp-4]
 004BCEDE    mov         eax,dword ptr [eax+160];TCustomLabel.......................................................
 004BCEE4    mov         dword ptr [ebp-0C],eax
 004BCEE7    mov         eax,dword ptr [ebp-4]
 004BCEEA    call        TBoundLabel.GetTransparent
 004BCEEF    test        al,al
>004BCEF1    jne         004BCF27
 004BCEF3    mov         eax,dword ptr [ebp-4]
 004BCEF6    mov         edx,dword ptr [eax+70];TCustomLabel.FColor:TColor
 004BCEF9    mov         eax,dword ptr [ebp-0C]
 004BCEFC    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 004BCEFF    call        TBrush.SetColor
 004BCF04    xor         edx,edx
 004BCF06    mov         eax,dword ptr [ebp-0C]
 004BCF09    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 004BCF0C    call        TBrush.SetStyle
 004BCF11    lea         edx,[ebp-3C]
 004BCF14    mov         eax,dword ptr [ebp-4]
 004BCF17    mov         ecx,dword ptr [eax]
 004BCF19    call        dword ptr [ecx+44];TCustomLabel.sub_004CA73C
 004BCF1C    lea         edx,[ebp-3C]
 004BCF1F    mov         eax,dword ptr [ebp-0C]
 004BCF22    call        TCanvas.FillRect
 004BCF27    mov         dl,1
 004BCF29    mov         eax,dword ptr [ebp-0C]
 004BCF2C    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 004BCF2F    call        TBrush.SetStyle
 004BCF34    lea         edx,[ebp-1C]
 004BCF37    mov         eax,dword ptr [ebp-4]
 004BCF3A    mov         ecx,dword ptr [eax]
 004BCF3C    call        dword ptr [ecx+44];TCustomLabel.sub_004CA73C
 004BCF3F    mov         eax,dword ptr [ebp-4]
 004BCF42    movzx       eax,byte ptr [eax+16F];TCustomLabel.FWordWrap:Boolean
 004BCF49    mov         ax,word ptr [eax*2+541594]
 004BCF51    or          ax,40
 004BCF55    mov         edx,dword ptr [ebp-4]
 004BCF58    movzx       edx,byte ptr [edx+16C];TCustomLabel.FAlignment:TAlignment
 004BCF5F    or          ax,word ptr [edx*2+54158C]
 004BCF67    movzx       eax,ax
 004BCF6A    mov         dword ptr [ebp-8],eax
 004BCF6D    mov         eax,dword ptr [ebp-4]
 004BCF70    cmp         byte ptr [eax+16E],0;TCustomLabel.FLayout:TTextLayout
>004BCF77    je          004BCFDA
 004BCF79    lea         esi,[ebp-1C]
 004BCF7C    lea         edi,[ebp-2C]
 004BCF7F    movs        dword ptr [edi],dword ptr [esi]
 004BCF80    movs        dword ptr [edi],dword ptr [esi]
 004BCF81    movs        dword ptr [edi],dword ptr [esi]
 004BCF82    movs        dword ptr [edi],dword ptr [esi]
 004BCF83    mov         ecx,dword ptr [ebp-8]
 004BCF86    or          ecx,400
 004BCF8C    lea         edx,[ebp-2C]
 004BCF8F    mov         eax,dword ptr [ebp-4]
 004BCF92    mov         si,0FFC6
 004BCF96    call        @CallDynaInst;TCustomLabel.sub_004BCD24
 004BCF9B    mov         eax,dword ptr [ebp-4]
 004BCF9E    cmp         byte ptr [eax+16E],2;TCustomLabel.FLayout:TTextLayout
>004BCFA5    jne         004BCFBE
 004BCFA7    mov         eax,dword ptr [ebp-4]
 004BCFAA    mov         eax,dword ptr [eax+4C];TCustomLabel.Height:Integer
 004BCFAD    sub         eax,dword ptr [ebp-20]
 004BCFB0    push        eax
 004BCFB1    push        0
 004BCFB3    lea         eax,[ebp-1C]
 004BCFB6    push        eax
 004BCFB7    call        user32.OffsetRect
>004BCFBC    jmp         004BCFDA
 004BCFBE    mov         eax,dword ptr [ebp-4]
 004BCFC1    mov         eax,dword ptr [eax+4C];TCustomLabel.Height:Integer
 004BCFC4    sub         eax,dword ptr [ebp-20]
 004BCFC7    sar         eax,1
>004BCFC9    jns         004BCFCE
 004BCFCB    adc         eax,0
 004BCFCE    push        eax
 004BCFCF    push        0
 004BCFD1    lea         eax,[ebp-1C]
 004BCFD4    push        eax
 004BCFD5    call        user32.OffsetRect
 004BCFDA    lea         edx,[ebp-1C]
 004BCFDD    mov         ecx,dword ptr [ebp-8]
 004BCFE0    mov         eax,dword ptr [ebp-4]
 004BCFE3    mov         si,0FFC6
 004BCFE7    call        @CallDynaInst;TCustomLabel.sub_004BCD24
 004BCFEC    pop         edi
 004BCFED    pop         esi
 004BCFEE    mov         esp,ebp
 004BCFF0    pop         ebp
 004BCFF1    ret
*}
end;

//004BCFF4
procedure TCustomLabel.Loaded;
begin
{*
 004BCFF4    push        ebp
 004BCFF5    mov         ebp,esp
 004BCFF7    push        ecx
 004BCFF8    push        esi
 004BCFF9    mov         dword ptr [ebp-4],eax
 004BCFFC    mov         eax,dword ptr [ebp-4]
 004BCFFF    call        TControl.Loaded
 004BD004    mov         eax,dword ptr [ebp-4]
 004BD007    mov         si,0FFC7
 004BD00B    call        @CallDynaInst;TCustomLabel.sub_004BD014
 004BD010    pop         esi
 004BD011    pop         ecx
 004BD012    pop         ebp
 004BD013    ret
*}
end;

//004BD014
procedure TCustomLabel.sub_004BD014;
begin
{*
 004BD014    push        ebp
 004BD015    mov         ebp,esp
 004BD017    add         esp,0FFFFFFE0
 004BD01A    push        ebx
 004BD01B    push        esi
 004BD01C    mov         dword ptr [ebp-4],eax
 004BD01F    mov         eax,dword ptr [ebp-4]
 004BD022    test        byte ptr [eax+1C],2;TCustomLabel.FComponentState:TComponentState
>004BD026    jne         004BD101
 004BD02C    mov         eax,dword ptr [ebp-4]
 004BD02F    cmp         byte ptr [eax+16D],0;TCustomLabel.FAutoSize:Boolean
>004BD036    je          004BD101
 004BD03C    lea         edx,[ebp-1D]
 004BD03F    mov         eax,dword ptr [ebp-4]
 004BD042    mov         ecx,dword ptr [eax]
 004BD044    call        dword ptr [ecx+44];TCustomLabel.sub_004CA73C
 004BD047    push        0
 004BD049    call        user32.GetDC
 004BD04E    mov         dword ptr [ebp-8],eax
 004BD051    mov         edx,dword ptr [ebp-8]
 004BD054    mov         eax,dword ptr [ebp-4]
 004BD057    mov         eax,dword ptr [eax+160];TCustomLabel.......................................................
 004BD05D    call        TCanvas.SetHandle
 004BD062    mov         eax,dword ptr [ebp-4]
 004BD065    movzx       eax,byte ptr [eax+16F];TCustomLabel.FWordWrap:Boolean
 004BD06C    mov         cx,word ptr [eax*2+541598]
 004BD074    or          cx,440
 004BD079    movzx       ecx,cx
 004BD07C    lea         edx,[ebp-1D]
 004BD07F    mov         eax,dword ptr [ebp-4]
 004BD082    mov         si,0FFC6
 004BD086    call        @CallDynaInst;TCustomLabel.sub_004BCD24
 004BD08B    xor         edx,edx
 004BD08D    mov         eax,dword ptr [ebp-4]
 004BD090    mov         eax,dword ptr [eax+160];TCustomLabel.......................................................
 004BD096    call        TCanvas.SetHandle
 004BD09B    mov         eax,dword ptr [ebp-8]
 004BD09E    push        eax
 004BD09F    push        0
 004BD0A1    call        user32.ReleaseDC
 004BD0A6    mov         eax,dword ptr [ebp-4]
 004BD0A9    mov         eax,dword ptr [eax+40];TCustomLabel.Left:Integer
 004BD0AC    mov         dword ptr [ebp-0C],eax
 004BD0AF    mov         eax,dword ptr [ebp-4]
 004BD0B2    mov         al,byte ptr [eax+16C];TCustomLabel.FAlignment:TAlignment
 004BD0B8    mov         byte ptr [ebp-0D],al
 004BD0BB    mov         eax,dword ptr [ebp-4]
 004BD0BE    mov         si,0FFC8
 004BD0C2    call        @CallDynaInst;TControl.sub_004CB93C
 004BD0C7    test        al,al
>004BD0C9    je          004BD0D3
 004BD0CB    lea         eax,[ebp-0D]
 004BD0CE    call        004C6E58
 004BD0D3    cmp         byte ptr [ebp-0D],1
>004BD0D7    jne         004BD0E5
 004BD0D9    mov         eax,dword ptr [ebp-4]
 004BD0DC    mov         eax,dword ptr [eax+48];TCustomLabel.Width:Integer
 004BD0DF    sub         eax,dword ptr [ebp-15]
 004BD0E2    add         dword ptr [ebp-0C],eax
 004BD0E5    mov         eax,dword ptr [ebp-15]
 004BD0E8    push        eax
 004BD0E9    mov         eax,dword ptr [ebp-11]
 004BD0EC    push        eax
 004BD0ED    mov         eax,dword ptr [ebp-4]
 004BD0F0    mov         ecx,dword ptr [eax+44];TCustomLabel.Top:Integer
 004BD0F3    mov         edx,dword ptr [ebp-0C]
 004BD0F6    mov         eax,dword ptr [ebp-4]
 004BD0F9    mov         ebx,dword ptr [eax]
 004BD0FB    call        dword ptr [ebx+84];TCustomLabel.sub_004CA110
 004BD101    pop         esi
 004BD102    pop         ebx
 004BD103    mov         esp,ebp
 004BD105    pop         ebp
 004BD106    ret
*}
end;

//004BD108
procedure TLabel.SetAlignment(Value:TAlignment);
begin
{*
 004BD108    push        ebp
 004BD109    mov         ebp,esp
 004BD10B    add         esp,0FFFFFFF8
 004BD10E    mov         byte ptr [ebp-5],dl
 004BD111    mov         dword ptr [ebp-4],eax
 004BD114    mov         eax,dword ptr [ebp-4]
 004BD117    mov         al,byte ptr [eax+16C];TLabel.FAlignment:TAlignment
 004BD11D    cmp         al,byte ptr [ebp-5]
>004BD120    je          004BD136
 004BD122    mov         al,byte ptr [ebp-5]
 004BD125    mov         edx,dword ptr [ebp-4]
 004BD128    mov         byte ptr [edx+16C],al;TLabel.FAlignment:TAlignment
 004BD12E    mov         eax,dword ptr [ebp-4]
 004BD131    mov         edx,dword ptr [eax]
 004BD133    call        dword ptr [edx+7C];TLabel.sub_004CB6E8
 004BD136    pop         ecx
 004BD137    pop         ecx
 004BD138    pop         ebp
 004BD139    ret
*}
end;

//004BD13C
procedure TLabel.SetAutoSize(Value:Boolean);
begin
{*
 004BD13C    push        ebp
 004BD13D    mov         ebp,esp
 004BD13F    add         esp,0FFFFFFF8
 004BD142    push        esi
 004BD143    mov         byte ptr [ebp-5],dl
 004BD146    mov         dword ptr [ebp-4],eax
 004BD149    mov         eax,dword ptr [ebp-4]
 004BD14C    mov         al,byte ptr [eax+16D];TLabel.FAutoSize:Boolean
 004BD152    cmp         al,byte ptr [ebp-5]
>004BD155    je          004BD16F
 004BD157    mov         al,byte ptr [ebp-5]
 004BD15A    mov         edx,dword ptr [ebp-4]
 004BD15D    mov         byte ptr [edx+16D],al;TLabel.FAutoSize:Boolean
 004BD163    mov         eax,dword ptr [ebp-4]
 004BD166    mov         si,0FFC7
 004BD16A    call        @CallDynaInst;TCustomLabel.sub_004BD014
 004BD16F    pop         esi
 004BD170    pop         ecx
 004BD171    pop         ecx
 004BD172    pop         ebp
 004BD173    ret
*}
end;

//004BD174
{*function TBoundLabel.GetTransparent:?;
begin
 004BD174    push        ebp
 004BD175    mov         ebp,esp
 004BD177    add         esp,0FFFFFFF8
 004BD17A    mov         dword ptr [ebp-4],eax
 004BD17D    mov         eax,dword ptr [ebp-4]
 004BD180    test        byte ptr [eax+50],40;TBoundLabel.FControlStyle:TControlStyle
 004BD184    setne       al
 004BD187    xor         al,1
 004BD189    mov         byte ptr [ebp-5],al
 004BD18C    mov         al,byte ptr [ebp-5]
 004BD18F    pop         ecx
 004BD190    pop         ecx
 004BD191    pop         ebp
 004BD192    ret
end;*}

//004BD194
procedure TLabel.SetFocusControl(Value:TWinControl);
begin
{*
 004BD194    push        ebp
 004BD195    mov         ebp,esp
 004BD197    add         esp,0FFFFFFF8
 004BD19A    mov         dword ptr [ebp-8],edx
 004BD19D    mov         dword ptr [ebp-4],eax
 004BD1A0    mov         eax,dword ptr [ebp-8]
 004BD1A3    mov         edx,dword ptr [ebp-4]
 004BD1A6    mov         dword ptr [edx+168],eax;TLabel.FFocusControl:TWinControl
 004BD1AC    cmp         dword ptr [ebp-8],0
>004BD1B0    je          004BD1BD
 004BD1B2    mov         edx,dword ptr [ebp-4]
 004BD1B5    mov         eax,dword ptr [ebp-8]
 004BD1B8    call        00483020
 004BD1BD    pop         ecx
 004BD1BE    pop         ecx
 004BD1BF    pop         ebp
 004BD1C0    ret
*}
end;

//004BD1C4
procedure TBoundLabel.SetShowAccelChar(Value:Boolean);
begin
{*
 004BD1C4    push        ebp
 004BD1C5    mov         ebp,esp
 004BD1C7    add         esp,0FFFFFFF8
 004BD1CA    mov         byte ptr [ebp-5],dl
 004BD1CD    mov         dword ptr [ebp-4],eax
 004BD1D0    mov         eax,dword ptr [ebp-4]
 004BD1D3    mov         al,byte ptr [eax+170];TBoundLabel.FShowAccelChar:Boolean
 004BD1D9    cmp         al,byte ptr [ebp-5]
>004BD1DC    je          004BD1F2
 004BD1DE    mov         al,byte ptr [ebp-5]
 004BD1E1    mov         edx,dword ptr [ebp-4]
 004BD1E4    mov         byte ptr [edx+170],al;TBoundLabel.FShowAccelChar:Boolean
 004BD1EA    mov         eax,dword ptr [ebp-4]
 004BD1ED    mov         edx,dword ptr [eax]
 004BD1EF    call        dword ptr [edx+7C];TBoundLabel.sub_004CB6E8
 004BD1F2    pop         ecx
 004BD1F3    pop         ecx
 004BD1F4    pop         ebp
 004BD1F5    ret
*}
end;

//004BD1F8
procedure TBoundLabel.SetTransparent(Value:Boolean);
begin
{*
 004BD1F8    push        ebp
 004BD1F9    mov         ebp,esp
 004BD1FB    add         esp,0FFFFFFF8
 004BD1FE    mov         byte ptr [ebp-5],dl
 004BD201    mov         dword ptr [ebp-4],eax
 004BD204    mov         eax,dword ptr [ebp-4]
 004BD207    call        TBoundLabel.GetTransparent
 004BD20C    cmp         al,byte ptr [ebp-5]
>004BD20F    je          004BD245
 004BD211    cmp         byte ptr [ebp-5],0
>004BD215    je          004BD22C
 004BD217    mov         eax,[004BD254];0x40 gvar_004BD254
 004BD21C    mov         edx,dword ptr [ebp-4]
 004BD21F    not         eax
 004BD221    and         eax,dword ptr [edx+50];TBoundLabel.FControlStyle:TControlStyle
 004BD224    mov         edx,dword ptr [ebp-4]
 004BD227    mov         dword ptr [edx+50],eax;TBoundLabel.FControlStyle:TControlStyle
>004BD22A    jmp         004BD23D
 004BD22C    mov         eax,[004BD254];0x40 gvar_004BD254
 004BD231    mov         edx,dword ptr [ebp-4]
 004BD234    or          eax,dword ptr [edx+50];TBoundLabel.FControlStyle:TControlStyle
 004BD237    mov         edx,dword ptr [ebp-4]
 004BD23A    mov         dword ptr [edx+50],eax;TBoundLabel.FControlStyle:TControlStyle
 004BD23D    mov         eax,dword ptr [ebp-4]
 004BD240    mov         edx,dword ptr [eax]
 004BD242    call        dword ptr [edx+7C];TBoundLabel.sub_004CB6E8
 004BD245    mov         eax,dword ptr [ebp-4]
 004BD248    mov         byte ptr [eax+188],1;TBoundLabel.FTransparentSet:Boolean
 004BD24F    pop         ecx
 004BD250    pop         ecx
 004BD251    pop         ebp
 004BD252    ret
*}
end;

//004BD258
procedure TBoundLabel.SetLayout(Value:TTextLayout);
begin
{*
 004BD258    push        ebp
 004BD259    mov         ebp,esp
 004BD25B    add         esp,0FFFFFFF8
 004BD25E    mov         byte ptr [ebp-5],dl
 004BD261    mov         dword ptr [ebp-4],eax
 004BD264    mov         eax,dword ptr [ebp-4]
 004BD267    mov         al,byte ptr [eax+16E];TBoundLabel.FLayout:TTextLayout
 004BD26D    cmp         al,byte ptr [ebp-5]
>004BD270    je          004BD286
 004BD272    mov         al,byte ptr [ebp-5]
 004BD275    mov         edx,dword ptr [ebp-4]
 004BD278    mov         byte ptr [edx+16E],al;TBoundLabel.FLayout:TTextLayout
 004BD27E    mov         eax,dword ptr [ebp-4]
 004BD281    mov         edx,dword ptr [eax]
 004BD283    call        dword ptr [edx+7C];TBoundLabel.sub_004CB6E8
 004BD286    pop         ecx
 004BD287    pop         ecx
 004BD288    pop         ebp
 004BD289    ret
*}
end;

//004BD28C
procedure TBoundLabel.SetWordWrap(Value:Boolean);
begin
{*
 004BD28C    push        ebp
 004BD28D    mov         ebp,esp
 004BD28F    add         esp,0FFFFFFF8
 004BD292    push        esi
 004BD293    mov         byte ptr [ebp-5],dl
 004BD296    mov         dword ptr [ebp-4],eax
 004BD299    mov         eax,dword ptr [ebp-4]
 004BD29C    mov         al,byte ptr [eax+16F];TBoundLabel.FWordWrap:Boolean
 004BD2A2    cmp         al,byte ptr [ebp-5]
>004BD2A5    je          004BD2C7
 004BD2A7    mov         al,byte ptr [ebp-5]
 004BD2AA    mov         edx,dword ptr [ebp-4]
 004BD2AD    mov         byte ptr [edx+16F],al;TBoundLabel.FWordWrap:Boolean
 004BD2B3    mov         eax,dword ptr [ebp-4]
 004BD2B6    mov         si,0FFC7
 004BD2BA    call        @CallDynaInst;TBoundLabel.sub_0049BB34
 004BD2BF    mov         eax,dword ptr [ebp-4]
 004BD2C2    mov         edx,dword ptr [eax]
 004BD2C4    call        dword ptr [edx+7C];TBoundLabel.sub_004CB6E8
 004BD2C7    pop         esi
 004BD2C8    pop         ecx
 004BD2C9    pop         ecx
 004BD2CA    pop         ebp
 004BD2CB    ret
*}
end;

//004BD2CC
procedure TCustomLabel.Notification(AComponent:TComponent; Operation:TOperation);
begin
{*
 004BD2CC    push        ebp
 004BD2CD    mov         ebp,esp
 004BD2CF    add         esp,0FFFFFFF4
 004BD2D2    mov         byte ptr [ebp-9],cl
 004BD2D5    mov         dword ptr [ebp-8],edx
 004BD2D8    mov         dword ptr [ebp-4],eax
 004BD2DB    mov         cl,byte ptr [ebp-9]
 004BD2DE    mov         edx,dword ptr [ebp-8]
 004BD2E1    mov         eax,dword ptr [ebp-4]
 004BD2E4    call        TControl.Notification
 004BD2E9    cmp         byte ptr [ebp-9],1
>004BD2ED    jne         004BD308
 004BD2EF    mov         eax,dword ptr [ebp-8]
 004BD2F2    mov         edx,dword ptr [ebp-4]
 004BD2F5    cmp         eax,dword ptr [edx+168];TCustomLabel.FFocusControl:TWinControl
>004BD2FB    jne         004BD308
 004BD2FD    mov         eax,dword ptr [ebp-4]
 004BD300    xor         edx,edx
 004BD302    mov         dword ptr [eax+168],edx;TCustomLabel.FFocusControl:TWinControl
 004BD308    mov         esp,ebp
 004BD30A    pop         ebp
 004BD30B    ret
*}
end;

//004BD30C
{*procedure TCustomLabel.CMTextChanged(?:?);
begin
 004BD30C    push        ebp
 004BD30D    mov         ebp,esp
 004BD30F    add         esp,0FFFFFFF8
 004BD312    push        esi
 004BD313    mov         dword ptr [ebp-8],edx
 004BD316    mov         dword ptr [ebp-4],eax
 004BD319    mov         eax,dword ptr [ebp-4]
 004BD31C    mov         edx,dword ptr [eax]
 004BD31E    call        dword ptr [edx+7C];TCustomLabel.sub_004CB6E8
 004BD321    mov         eax,dword ptr [ebp-4]
 004BD324    mov         si,0FFC7
 004BD328    call        @CallDynaInst;TCustomLabel.sub_004BD014
 004BD32D    pop         esi
 004BD32E    pop         ecx
 004BD32F    pop         ecx
 004BD330    pop         ebp
 004BD331    ret
end;*}

//004BD334
{*procedure TCustomLabel.CMFontChanged(?:?);
begin
 004BD334    push        ebp
 004BD335    mov         ebp,esp
 004BD337    add         esp,0FFFFFFF8
 004BD33A    push        esi
 004BD33B    mov         dword ptr [ebp-8],edx
 004BD33E    mov         dword ptr [ebp-4],eax
 004BD341    mov         edx,dword ptr [ebp-8]
 004BD344    mov         eax,dword ptr [ebp-4]
 004BD347    call        TControl.CMFontChanged
 004BD34C    mov         eax,dword ptr [ebp-4]
 004BD34F    mov         si,0FFC7
 004BD353    call        @CallDynaInst;TCustomLabel.sub_004BD014
 004BD358    pop         esi
 004BD359    pop         ecx
 004BD35A    pop         ecx
 004BD35B    pop         ebp
 004BD35C    ret
end;*}

//004BD360
{*procedure TCustomLabel.CMDialogChar(?:?);
begin
 004BD360    push        ebp
 004BD361    mov         ebp,esp
 004BD363    add         esp,0FFFFFFF0
 004BD366    push        esi
 004BD367    xor         ecx,ecx
 004BD369    mov         dword ptr [ebp-10],ecx
 004BD36C    mov         dword ptr [ebp-8],edx
 004BD36F    mov         dword ptr [ebp-4],eax
 004BD372    xor         eax,eax
 004BD374    push        ebp
 004BD375    push        4BD409
 004BD37A    push        dword ptr fs:[eax]
 004BD37D    mov         dword ptr fs:[eax],esp
 004BD380    mov         eax,dword ptr [ebp-4]
 004BD383    cmp         dword ptr [eax+168],0;TCustomLabel.FFocusControl:TWinControl
>004BD38A    je          004BD3F3
 004BD38C    mov         eax,dword ptr [ebp-4]
 004BD38F    mov         edx,dword ptr [eax]
 004BD391    call        dword ptr [edx+50];TImage.GetEnabled
 004BD394    test        al,al
>004BD396    je          004BD3F3
 004BD398    mov         eax,dword ptr [ebp-4]
 004BD39B    cmp         byte ptr [eax+170],0;TCustomLabel.FShowAccelChar:Boolean
>004BD3A2    je          004BD3F3
 004BD3A4    lea         edx,[ebp-10]
 004BD3A7    mov         eax,dword ptr [ebp-4]
 004BD3AA    call        TControl.GetText
 004BD3AF    mov         edx,dword ptr [ebp-10]
 004BD3B2    mov         eax,dword ptr [ebp-8]
 004BD3B5    mov         ax,word ptr [eax+4]
 004BD3B9    call        004E7E60
 004BD3BE    test        al,al
>004BD3C0    je          004BD3F3
 004BD3C2    mov         eax,dword ptr [ebp-4]
 004BD3C5    mov         eax,dword ptr [eax+168];TCustomLabel.FFocusControl:TWinControl
 004BD3CB    mov         dword ptr [ebp-0C],eax
 004BD3CE    mov         eax,dword ptr [ebp-0C]
 004BD3D1    mov         si,0FFB8
 004BD3D5    call        @CallDynaInst;TWinControl.sub_004D37A8
 004BD3DA    test        al,al
>004BD3DC    je          004BD3F3
 004BD3DE    mov         eax,dword ptr [ebp-0C]
 004BD3E1    mov         edx,dword ptr [eax]
 004BD3E3    call        dword ptr [edx+0C4];TWinControl.sub_004D3808
 004BD3E9    mov         eax,dword ptr [ebp-8]
 004BD3EC    mov         dword ptr [eax+0C],1
 004BD3F3    xor         eax,eax
 004BD3F5    pop         edx
 004BD3F6    pop         ecx
 004BD3F7    pop         ecx
 004BD3F8    mov         dword ptr fs:[eax],edx
 004BD3FB    push        4BD410
 004BD400    lea         eax,[ebp-10]
 004BD403    call        @LStrClr
 004BD408    ret
>004BD409    jmp         @HandleFinally
>004BD40E    jmp         004BD400
 004BD410    pop         esi
 004BD411    mov         esp,ebp
 004BD413    pop         ebp
 004BD414    ret
end;*}

//004BD418
{*procedure TCustomLabel.CMMouseEnter(?:?);
begin
 004BD418    push        ebp
 004BD419    mov         ebp,esp
 004BD41B    add         esp,0FFFFFFF8
 004BD41E    push        ebx
 004BD41F    mov         dword ptr [ebp-8],edx
 004BD422    mov         dword ptr [ebp-4],eax
 004BD425    mov         edx,dword ptr [ebp-8]
 004BD428    mov         eax,dword ptr [ebp-4]
 004BD42B    call        TControl.CMMouseEnter
 004BD430    mov         eax,dword ptr [ebp-4]
 004BD433    cmp         word ptr [eax+182],0;TCustomLabel.?f182:word
>004BD43B    je          004BD44F
 004BD43D    mov         ebx,dword ptr [ebp-4]
 004BD440    mov         edx,dword ptr [ebp-4]
 004BD443    mov         eax,dword ptr [ebx+184];TCustomLabel.?f184:dword
 004BD449    call        dword ptr [ebx+180];TCustomLabel.FOnMouseEnter
 004BD44F    pop         ebx
 004BD450    pop         ecx
 004BD451    pop         ecx
 004BD452    pop         ebp
 004BD453    ret
end;*}

//004BD454
{*procedure TCustomLabel.CMMouseLeave(?:?);
begin
 004BD454    push        ebp
 004BD455    mov         ebp,esp
 004BD457    add         esp,0FFFFFFF8
 004BD45A    push        ebx
 004BD45B    mov         dword ptr [ebp-8],edx
 004BD45E    mov         dword ptr [ebp-4],eax
 004BD461    mov         edx,dword ptr [ebp-8]
 004BD464    mov         eax,dword ptr [ebp-4]
 004BD467    call        TControl.CMMouseLeave
 004BD46C    mov         eax,dword ptr [ebp-4]
 004BD46F    cmp         word ptr [eax+17A],0;TCustomLabel.?f17A:word
>004BD477    je          004BD48B
 004BD479    mov         ebx,dword ptr [ebp-4]
 004BD47C    mov         edx,dword ptr [ebp-4]
 004BD47F    mov         eax,dword ptr [ebx+17C];TCustomLabel.?f17C:dword
 004BD485    call        dword ptr [ebx+178];TCustomLabel.FOnMouseLeave
 004BD48B    pop         ebx
 004BD48C    pop         ecx
 004BD48D    pop         ecx
 004BD48E    pop         ebp
 004BD48F    ret
end;*}

//004BD490
constructor TCustomEdit.Create(AOwner:TComponent);
begin
{*
 004BD490    push        ebp
 004BD491    mov         ebp,esp
 004BD493    add         esp,0FFFFFFF4
 004BD496    test        dl,dl
>004BD498    je          004BD4A2
 004BD49A    add         esp,0FFFFFFF0
 004BD49D    call        @ClassCreate
 004BD4A2    mov         dword ptr [ebp-0C],ecx
 004BD4A5    mov         byte ptr [ebp-5],dl
 004BD4A8    mov         dword ptr [ebp-4],eax
 004BD4AB    mov         ecx,dword ptr [ebp-0C]
 004BD4AE    xor         edx,edx
 004BD4B0    mov         eax,dword ptr [ebp-4]
 004BD4B3    call        TWinControl.Create
 004BD4B8    mov         eax,[0055B36C];^NewStyleControls:Boolean
 004BD4BD    cmp         byte ptr [eax],0
>004BD4C0    je          004BD4D0
 004BD4C2    mov         eax,dword ptr [ebp-4]
 004BD4C5    mov         edx,dword ptr ds:[4BD55C]
 004BD4CB    mov         dword ptr [eax+50],edx
>004BD4CE    jmp         004BD4DC
 004BD4D0    mov         eax,dword ptr [ebp-4]
 004BD4D3    mov         edx,dword ptr ds:[4BD560]
 004BD4D9    mov         dword ptr [eax+50],edx
 004BD4DC    mov         edx,79
 004BD4E1    mov         eax,dword ptr [ebp-4]
 004BD4E4    call        TControl.SetWidth
 004BD4E9    mov         edx,19
 004BD4EE    mov         eax,dword ptr [ebp-4]
 004BD4F1    call        TControl.SetHeight
 004BD4F6    mov         dl,1
 004BD4F8    mov         eax,dword ptr [ebp-4]
 004BD4FB    call        TPanel.SetTabStop
 004BD500    xor         edx,edx
 004BD502    mov         eax,dword ptr [ebp-4]
 004BD505    call        TPanel.SetParentColor
 004BD50A    mov         eax,dword ptr [ebp-4]
 004BD50D    mov         byte ptr [eax+20C],1
 004BD514    mov         eax,dword ptr [ebp-4]
 004BD517    mov         byte ptr [eax+20F],1
 004BD51E    mov         eax,dword ptr [ebp-4]
 004BD521    mov         byte ptr [eax+210],1
 004BD528    mov         eax,dword ptr [ebp-4]
 004BD52B    mov         byte ptr [eax+211],1
 004BD532    mov         eax,dword ptr [ebp-4]
 004BD535    call        004BDD88
 004BD53A    mov         eax,dword ptr [ebp-4]
 004BD53D    cmp         byte ptr [ebp-5],0
>004BD541    je          004BD552
 004BD543    call        @AfterConstruction
 004BD548    pop         dword ptr fs:[0]
 004BD54F    add         esp,0C
 004BD552    mov         eax,dword ptr [ebp-4]
 004BD555    mov         esp,ebp
 004BD557    pop         ebp
 004BD558    ret
*}
end;

//004BD564
{*procedure sub_004BD564(?:?);
begin
 004BD564    push        ebp
 004BD565    mov         ebp,esp
 004BD567    add         esp,0FFFFFFF8
 004BD56A    mov         dword ptr [ebp-8],edx
 004BD56D    mov         dword ptr [ebp-4],eax
 004BD570    push        0
 004BD572    mov         eax,dword ptr [ebp-8]
 004BD575    push        eax
 004BD576    push        0C5
 004BD57B    mov         eax,dword ptr [ebp-4]
 004BD57E    call        TWinControl.GetHandle
 004BD583    push        eax
 004BD584    call        user32.SendMessageA
 004BD589    pop         ecx
 004BD58A    pop         ecx
 004BD58B    pop         ebp
 004BD58C    ret
end;*}

//004BD590
procedure TLabeledEdit.SetAutoSize(Value:Boolean);
begin
{*
 004BD590    push        ebp
 004BD591    mov         ebp,esp
 004BD593    add         esp,0FFFFFFF8
 004BD596    mov         byte ptr [ebp-5],dl
 004BD599    mov         dword ptr [ebp-4],eax
 004BD59C    mov         eax,dword ptr [ebp-4]
 004BD59F    mov         al,byte ptr [eax+20F];TLabeledEdit.FAutoSize:Boolean
 004BD5A5    cmp         al,byte ptr [ebp-5]
>004BD5A8    je          004BD5BE
 004BD5AA    mov         al,byte ptr [ebp-5]
 004BD5AD    mov         edx,dword ptr [ebp-4]
 004BD5B0    mov         byte ptr [edx+20F],al;TLabeledEdit.FAutoSize:Boolean
 004BD5B6    mov         eax,dword ptr [ebp-4]
 004BD5B9    call        TCustomEdit.UpdateHeight
 004BD5BE    pop         ecx
 004BD5BF    pop         ecx
 004BD5C0    pop         ebp
 004BD5C1    ret
*}
end;

//004BD5C4
procedure TLabeledEdit.SetBorderStyle(Value:TBorderStyle);
begin
{*
 004BD5C4    push        ebp
 004BD5C5    mov         ebp,esp
 004BD5C7    add         esp,0FFFFFFF8
 004BD5CA    mov         byte ptr [ebp-5],dl
 004BD5CD    mov         dword ptr [ebp-4],eax
 004BD5D0    mov         eax,dword ptr [ebp-4]
 004BD5D3    mov         al,byte ptr [eax+20C];TLabeledEdit.FBorderStyle:TBorderStyle
 004BD5D9    cmp         al,byte ptr [ebp-5]
>004BD5DC    je          004BD5FA
 004BD5DE    mov         al,byte ptr [ebp-5]
 004BD5E1    mov         edx,dword ptr [ebp-4]
 004BD5E4    mov         byte ptr [edx+20C],al;TLabeledEdit.FBorderStyle:TBorderStyle
 004BD5EA    mov         eax,dword ptr [ebp-4]
 004BD5ED    call        TCustomEdit.UpdateHeight
 004BD5F2    mov         eax,dword ptr [ebp-4]
 004BD5F5    call        TWinControl.RecreateWnd
 004BD5FA    pop         ecx
 004BD5FB    pop         ecx
 004BD5FC    pop         ebp
 004BD5FD    ret
*}
end;

//004BD600
procedure TLabeledEdit.SetCharCase(Value:TEditCharCase);
begin
{*
 004BD600    push        ebp
 004BD601    mov         ebp,esp
 004BD603    add         esp,0FFFFFFF8
 004BD606    mov         byte ptr [ebp-5],dl
 004BD609    mov         dword ptr [ebp-4],eax
 004BD60C    mov         eax,dword ptr [ebp-4]
 004BD60F    mov         al,byte ptr [eax+213];TLabeledEdit.FCharCase:TEditCharCase
 004BD615    cmp         al,byte ptr [ebp-5]
>004BD618    je          004BD62E
 004BD61A    mov         al,byte ptr [ebp-5]
 004BD61D    mov         edx,dword ptr [ebp-4]
 004BD620    mov         byte ptr [edx+213],al;TLabeledEdit.FCharCase:TEditCharCase
 004BD626    mov         eax,dword ptr [ebp-4]
 004BD629    call        TWinControl.RecreateWnd
 004BD62E    pop         ecx
 004BD62F    pop         ecx
 004BD630    pop         ebp
 004BD631    ret
*}
end;

//004BD634
procedure TLabeledEdit.SetHideSelection(Value:Boolean);
begin
{*
 004BD634    push        ebp
 004BD635    mov         ebp,esp
 004BD637    add         esp,0FFFFFFF8
 004BD63A    mov         byte ptr [ebp-5],dl
 004BD63D    mov         dword ptr [ebp-4],eax
 004BD640    mov         eax,dword ptr [ebp-4]
 004BD643    mov         al,byte ptr [eax+211];TLabeledEdit.FHideSelection:Boolean
 004BD649    cmp         al,byte ptr [ebp-5]
>004BD64C    je          004BD662
 004BD64E    mov         al,byte ptr [ebp-5]
 004BD651    mov         edx,dword ptr [ebp-4]
 004BD654    mov         byte ptr [edx+211],al;TLabeledEdit.FHideSelection:Boolean
 004BD65A    mov         eax,dword ptr [ebp-4]
 004BD65D    call        TWinControl.RecreateWnd
 004BD662    pop         ecx
 004BD663    pop         ecx
 004BD664    pop         ebp
 004BD665    ret
*}
end;

//004BD668
procedure TLabeledEdit.SetMaxLength(Value:Integer);
begin
{*
 004BD668    push        ebp
 004BD669    mov         ebp,esp
 004BD66B    add         esp,0FFFFFFF8
 004BD66E    mov         dword ptr [ebp-8],edx
 004BD671    mov         dword ptr [ebp-4],eax
 004BD674    mov         eax,dword ptr [ebp-4]
 004BD677    mov         eax,dword ptr [eax+208];TLabeledEdit.FMaxLength:Integer
 004BD67D    cmp         eax,dword ptr [ebp-8]
>004BD680    je          004BD6A8
 004BD682    mov         eax,dword ptr [ebp-8]
 004BD685    mov         edx,dword ptr [ebp-4]
 004BD688    mov         dword ptr [edx+208],eax;TLabeledEdit.FMaxLength:Integer
 004BD68E    mov         eax,dword ptr [ebp-4]
 004BD691    call        TWinControl.HandleAllocated
 004BD696    test        al,al
>004BD698    je          004BD6A8
 004BD69A    mov         edx,dword ptr [ebp-8]
 004BD69D    mov         eax,dword ptr [ebp-4]
 004BD6A0    mov         ecx,dword ptr [eax]
 004BD6A2    call        dword ptr [ecx+0C8];TLabeledEdit.sub_004BD564
 004BD6A8    pop         ecx
 004BD6A9    pop         ecx
 004BD6AA    pop         ebp
 004BD6AB    ret
*}
end;

//004BD6AC
procedure TLabeledEdit.SetOEMConvert(Value:Boolean);
begin
{*
 004BD6AC    push        ebp
 004BD6AD    mov         ebp,esp
 004BD6AF    add         esp,0FFFFFFF8
 004BD6B2    mov         byte ptr [ebp-5],dl
 004BD6B5    mov         dword ptr [ebp-4],eax
 004BD6B8    mov         eax,dword ptr [ebp-4]
 004BD6BB    mov         al,byte ptr [eax+212];TLabeledEdit.FOEMConvert:Boolean
 004BD6C1    cmp         al,byte ptr [ebp-5]
>004BD6C4    je          004BD6DA
 004BD6C6    mov         al,byte ptr [ebp-5]
 004BD6C9    mov         edx,dword ptr [ebp-4]
 004BD6CC    mov         byte ptr [edx+212],al;TLabeledEdit.FOEMConvert:Boolean
 004BD6D2    mov         eax,dword ptr [ebp-4]
 004BD6D5    call        TWinControl.RecreateWnd
 004BD6DA    pop         ecx
 004BD6DB    pop         ecx
 004BD6DC    pop         ebp
 004BD6DD    ret
*}
end;

//004BD6E0
{*function sub_004BD6E0(?:TCustomEdit):?;
begin
 004BD6E0    push        ebp
 004BD6E1    mov         ebp,esp
 004BD6E3    add         esp,0FFFFFFF8
 004BD6E6    mov         dword ptr [ebp-4],eax
 004BD6E9    mov         eax,dword ptr [ebp-4]
 004BD6EC    mov         al,byte ptr [eax+215]
 004BD6F2    mov         byte ptr [ebp-5],al
 004BD6F5    mov         eax,dword ptr [ebp-4]
 004BD6F8    call        TWinControl.HandleAllocated
 004BD6FD    test        al,al
>004BD6FF    je          004BD71E
 004BD701    push        0
 004BD703    push        0
 004BD705    push        0B8
 004BD70A    mov         eax,dword ptr [ebp-4]
 004BD70D    call        TWinControl.GetHandle
 004BD712    push        eax
 004BD713    call        user32.SendMessageA
 004BD718    test        eax,eax
 004BD71A    setne       byte ptr [ebp-5]
 004BD71E    mov         al,byte ptr [ebp-5]
 004BD721    pop         ecx
 004BD722    pop         ecx
 004BD723    pop         ebp
 004BD724    ret
end;*}

//004BD728
procedure TCustomEdit.SetModified(Value:Boolean);
begin
{*
 004BD728    push        ebp
 004BD729    mov         ebp,esp
 004BD72B    add         esp,0FFFFFFF8
 004BD72E    mov         byte ptr [ebp-5],dl
 004BD731    mov         dword ptr [ebp-4],eax
 004BD734    mov         eax,dword ptr [ebp-4]
 004BD737    call        TWinControl.HandleAllocated
 004BD73C    test        al,al
>004BD73E    je          004BD75D
 004BD740    push        0
 004BD742    xor         eax,eax
 004BD744    mov         al,byte ptr [ebp-5]
 004BD747    push        eax
 004BD748    push        0B9
 004BD74D    mov         eax,dword ptr [ebp-4]
 004BD750    call        TWinControl.GetHandle
 004BD755    push        eax
 004BD756    call        user32.SendMessageA
>004BD75B    jmp         004BD769
 004BD75D    mov         al,byte ptr [ebp-5]
 004BD760    mov         edx,dword ptr [ebp-4]
 004BD763    mov         byte ptr [edx+215],al
 004BD769    pop         ecx
 004BD76A    pop         ecx
 004BD76B    pop         ebp
 004BD76C    ret
*}
end;

//004BD770
procedure TLabeledEdit.SetPasswordChar(Value:Char);
begin
{*
 004BD770    push        ebp
 004BD771    mov         ebp,esp
 004BD773    add         esp,0FFFFFFF4
 004BD776    xor         ecx,ecx
 004BD778    mov         dword ptr [ebp-0C],ecx
 004BD77B    mov         byte ptr [ebp-5],dl
 004BD77E    mov         dword ptr [ebp-4],eax
 004BD781    xor         eax,eax
 004BD783    push        ebp
 004BD784    push        4BD808
 004BD789    push        dword ptr fs:[eax]
 004BD78C    mov         dword ptr fs:[eax],esp
 004BD78F    mov         eax,dword ptr [ebp-4]
 004BD792    mov         al,byte ptr [eax+20D];TLabeledEdit.FPasswordChar:Char
 004BD798    cmp         al,byte ptr [ebp-5]
>004BD79B    je          004BD7F2
 004BD79D    mov         al,byte ptr [ebp-5]
 004BD7A0    mov         edx,dword ptr [ebp-4]
 004BD7A3    mov         byte ptr [edx+20D],al;TLabeledEdit.FPasswordChar:Char
 004BD7A9    mov         eax,dword ptr [ebp-4]
 004BD7AC    call        TWinControl.HandleAllocated
 004BD7B1    test        al,al
>004BD7B3    je          004BD7F2
 004BD7B5    push        0
 004BD7B7    mov         eax,dword ptr [ebp-4]
 004BD7BA    movzx       eax,byte ptr [eax+20D];TLabeledEdit.FPasswordChar:Char
 004BD7C1    push        eax
 004BD7C2    push        0CC
 004BD7C7    mov         eax,dword ptr [ebp-4]
 004BD7CA    call        TWinControl.GetHandle
 004BD7CF    push        eax
 004BD7D0    call        user32.SendMessageA
 004BD7D5    lea         edx,[ebp-0C]
 004BD7D8    mov         eax,dword ptr [ebp-4]
 004BD7DB    call        TControl.GetText
 004BD7E0    mov         eax,dword ptr [ebp-0C]
 004BD7E3    call        @LStrToPChar
 004BD7E8    mov         edx,eax
 004BD7EA    mov         eax,dword ptr [ebp-4]
 004BD7ED    call        004CAF68
 004BD7F2    xor         eax,eax
 004BD7F4    pop         edx
 004BD7F5    pop         ecx
 004BD7F6    pop         ecx
 004BD7F7    mov         dword ptr fs:[eax],edx
 004BD7FA    push        4BD80F
 004BD7FF    lea         eax,[ebp-0C]
 004BD802    call        @LStrClr
 004BD807    ret
>004BD808    jmp         @HandleFinally
>004BD80D    jmp         004BD7FF
 004BD80F    mov         esp,ebp
 004BD811    pop         ebp
 004BD812    ret
*}
end;

//004BD814
procedure TLabeledEdit.SetReadOnly(Value:Boolean);
begin
{*
 004BD814    push        ebp
 004BD815    mov         ebp,esp
 004BD817    add         esp,0FFFFFFF8
 004BD81A    mov         byte ptr [ebp-5],dl
 004BD81D    mov         dword ptr [ebp-4],eax
 004BD820    mov         eax,dword ptr [ebp-4]
 004BD823    mov         al,byte ptr [eax+20E];TLabeledEdit.FReadOnly:Boolean
 004BD829    cmp         al,byte ptr [ebp-5]
>004BD82C    je          004BD861
 004BD82E    mov         al,byte ptr [ebp-5]
 004BD831    mov         edx,dword ptr [ebp-4]
 004BD834    mov         byte ptr [edx+20E],al;TLabeledEdit.FReadOnly:Boolean
 004BD83A    mov         eax,dword ptr [ebp-4]
 004BD83D    call        TWinControl.HandleAllocated
 004BD842    test        al,al
>004BD844    je          004BD861
 004BD846    push        0
 004BD848    xor         eax,eax
 004BD84A    mov         al,byte ptr [ebp-5]
 004BD84D    push        eax
 004BD84E    push        0CF
 004BD853    mov         eax,dword ptr [ebp-4]
 004BD856    call        TWinControl.GetHandle
 004BD85B    push        eax
 004BD85C    call        user32.SendMessageA
 004BD861    pop         ecx
 004BD862    pop         ecx
 004BD863    pop         ebp
 004BD864    ret
*}
end;

//004BD868
{*function sub_004BD868:?;
begin
 004BD868    push        ebp
 004BD869    mov         ebp,esp
 004BD86B    add         esp,0FFFFFFF8
 004BD86E    mov         dword ptr [ebp-4],eax
 004BD871    push        0
 004BD873    lea         eax,[ebp-8]
 004BD876    push        eax
 004BD877    push        0B0
 004BD87C    mov         eax,dword ptr [ebp-4]
 004BD87F    call        TWinControl.GetHandle
 004BD884    push        eax
 004BD885    call        user32.SendMessageA
 004BD88A    mov         eax,dword ptr [ebp-8]
 004BD88D    pop         ecx
 004BD88E    pop         ecx
 004BD88F    pop         ebp
 004BD890    ret
end;*}

//004BD894
{*procedure sub_004BD894(?:?);
begin
 004BD894    push        ebp
 004BD895    mov         ebp,esp
 004BD897    add         esp,0FFFFFFF8
 004BD89A    mov         dword ptr [ebp-8],edx
 004BD89D    mov         dword ptr [ebp-4],eax
 004BD8A0    mov         eax,dword ptr [ebp-8]
 004BD8A3    push        eax
 004BD8A4    mov         eax,dword ptr [ebp-8]
 004BD8A7    push        eax
 004BD8A8    push        0B1
 004BD8AD    mov         eax,dword ptr [ebp-4]
 004BD8B0    call        TWinControl.GetHandle
 004BD8B5    push        eax
 004BD8B6    call        user32.SendMessageA
 004BD8BB    pop         ecx
 004BD8BC    pop         ecx
 004BD8BD    pop         ebp
 004BD8BE    ret
end;*}

//004BD8C0
{*function sub_004BD8C0:?;
begin
 004BD8C0    push        ebp
 004BD8C1    mov         ebp,esp
 004BD8C3    add         esp,0FFFFFFF0
 004BD8C6    mov         dword ptr [ebp-4],eax
 004BD8C9    lea         eax,[ebp-0C]
 004BD8CC    push        eax
 004BD8CD    lea         eax,[ebp-10]
 004BD8D0    push        eax
 004BD8D1    push        0B0
 004BD8D6    mov         eax,dword ptr [ebp-4]
 004BD8D9    call        TWinControl.GetHandle
 004BD8DE    push        eax
 004BD8DF    call        user32.SendMessageA
 004BD8E4    mov         eax,dword ptr [ebp-0C]
 004BD8E7    sub         eax,dword ptr [ebp-10]
 004BD8EA    mov         dword ptr [ebp-8],eax
 004BD8ED    mov         eax,dword ptr [ebp-8]
 004BD8F0    mov         esp,ebp
 004BD8F2    pop         ebp
 004BD8F3    ret
end;*}

//004BD8F4
{*procedure sub_004BD8F4(?:?);
begin
 004BD8F4    push        ebp
 004BD8F5    mov         ebp,esp
 004BD8F7    add         esp,0FFFFFFF0
 004BD8FA    mov         dword ptr [ebp-8],edx
 004BD8FD    mov         dword ptr [ebp-4],eax
 004BD900    lea         eax,[ebp-0C]
 004BD903    push        eax
 004BD904    lea         eax,[ebp-10]
 004BD907    push        eax
 004BD908    push        0B0
 004BD90D    mov         eax,dword ptr [ebp-4]
 004BD910    call        TWinControl.GetHandle
 004BD915    push        eax
 004BD916    call        user32.SendMessageA
 004BD91B    mov         eax,dword ptr [ebp-10]
 004BD91E    add         eax,dword ptr [ebp-8]
 004BD921    mov         dword ptr [ebp-0C],eax
 004BD924    mov         eax,dword ptr [ebp-0C]
 004BD927    push        eax
 004BD928    mov         eax,dword ptr [ebp-10]
 004BD92B    push        eax
 004BD92C    push        0B1
 004BD931    mov         eax,dword ptr [ebp-4]
 004BD934    call        TWinControl.GetHandle
 004BD939    push        eax
 004BD93A    call        user32.SendMessageA
 004BD93F    push        0
 004BD941    push        0
 004BD943    push        0B7
 004BD948    mov         eax,dword ptr [ebp-4]
 004BD94B    call        TWinControl.GetHandle
 004BD950    push        eax
 004BD951    call        user32.SendMessageA
 004BD956    mov         esp,ebp
 004BD958    pop         ebp
 004BD959    ret
end;*}

//004BD95C
procedure sub_004BD95C;
begin
{*
 004BD95C    push        ebp
 004BD95D    mov         ebp,esp
 004BD95F    push        ecx
 004BD960    mov         dword ptr [ebp-4],eax
 004BD963    push        4BD97C
 004BD968    mov         eax,dword ptr [ebp-4]
 004BD96B    call        TWinControl.GetHandle
 004BD970    push        eax
 004BD971    call        user32.SetWindowTextA
 004BD976    pop         ecx
 004BD977    pop         ebp
 004BD978    ret
*}
end;

//004BD980
procedure TCustomEdit.SelectAll;
begin
{*
 004BD980    push        ebp
 004BD981    mov         ebp,esp
 004BD983    push        ecx
 004BD984    mov         dword ptr [ebp-4],eax
 004BD987    push        0FF
 004BD989    push        0
 004BD98B    push        0B1
 004BD990    mov         eax,dword ptr [ebp-4]
 004BD993    call        TWinControl.GetHandle
 004BD998    push        eax
 004BD999    call        user32.SendMessageA
 004BD99E    pop         ecx
 004BD99F    pop         ebp
 004BD9A0    ret
*}
end;

//004BD9A4
{*function sub_004BD9A4(?:?; ?:?):?;
begin
 004BD9A4    push        ebp
 004BD9A5    mov         ebp,esp
 004BD9A7    add         esp,0FFFFFFE8
 004BD9AA    mov         dword ptr [ebp-0C],ecx
 004BD9AD    mov         dword ptr [ebp-8],edx
 004BD9B0    mov         dword ptr [ebp-4],eax
 004BD9B3    mov         eax,dword ptr [ebp-4]
 004BD9B6    mov         edx,dword ptr [eax]
 004BD9B8    call        dword ptr [edx+0D0];TCustomEdit.sub_004BD868
 004BD9BE    mov         dword ptr [ebp-18],eax
 004BD9C1    mov         eax,dword ptr [ebp-4]
 004BD9C4    mov         edx,dword ptr [eax]
 004BD9C6    call        dword ptr [edx+0CC];TCustomEdit.sub_004BD8C0
 004BD9CC    mov         dword ptr [ebp-10],eax
 004BD9CF    mov         eax,dword ptr [ebp-4]
 004BD9D2    call        004CAE74
 004BD9D7    inc         eax
 004BD9D8    call        0046748C
 004BD9DD    mov         dword ptr [ebp-14],eax
 004BD9E0    xor         eax,eax
 004BD9E2    push        ebp
 004BD9E3    push        4BDA39
 004BD9E8    push        dword ptr fs:[eax]
 004BD9EB    mov         dword ptr fs:[eax],esp
 004BD9EE    mov         eax,dword ptr [ebp-14]
 004BD9F1    call        004674B8
 004BD9F6    mov         ecx,eax
 004BD9F8    mov         edx,dword ptr [ebp-14]
 004BD9FB    mov         eax,dword ptr [ebp-4]
 004BD9FE    call        004CAE98
 004BDA03    mov         eax,dword ptr [ebp-10]
 004BDA06    cmp         eax,dword ptr [ebp-0C]
>004BDA09    jl          004BDA12
 004BDA0B    mov         eax,dword ptr [ebp-0C]
 004BDA0E    dec         eax
 004BDA0F    mov         dword ptr [ebp-10],eax
 004BDA12    mov         edx,dword ptr [ebp-14]
 004BDA15    add         edx,dword ptr [ebp-18]
 004BDA18    mov         ecx,dword ptr [ebp-10]
 004BDA1B    mov         eax,dword ptr [ebp-8]
 004BDA1E    call        StrLCopy
 004BDA23    xor         eax,eax
 004BDA25    pop         edx
 004BDA26    pop         ecx
 004BDA27    pop         ecx
 004BDA28    mov         dword ptr fs:[eax],edx
 004BDA2B    push        4BDA40
 004BDA30    mov         eax,dword ptr [ebp-14]
 004BDA33    call        00467520
 004BDA38    ret
>004BDA39    jmp         @HandleFinally
>004BDA3E    jmp         004BDA30
 004BDA40    mov         eax,dword ptr [ebp-10]
 004BDA43    mov         esp,ebp
 004BDA45    pop         ebp
 004BDA46    ret
end;*}

//004BDA48
{*procedure sub_004BDA48(?:?);
begin
 004BDA48    push        ebp
 004BDA49    mov         ebp,esp
 004BDA4B    add         esp,0FFFFFFEC
 004BDA4E    mov         dword ptr [ebp-8],edx
 004BDA51    mov         dword ptr [ebp-4],eax
 004BDA54    mov         eax,dword ptr [ebp-4]
 004BDA57    mov         edx,dword ptr [eax]
 004BDA59    call        dword ptr [edx+0D0];TCustomEdit.sub_004BD868
 004BDA5F    mov         dword ptr [ebp-10],eax
 004BDA62    mov         eax,dword ptr [ebp-4]
 004BDA65    mov         edx,dword ptr [eax]
 004BDA67    call        dword ptr [edx+0CC];TCustomEdit.sub_004BD8C0
 004BDA6D    mov         dword ptr [ebp-14],eax
 004BDA70    mov         eax,dword ptr [ebp-8]
 004BDA73    mov         ecx,dword ptr [ebp-14]
 004BDA76    xor         edx,edx
 004BDA78    call        @LStrFromPCharLen
 004BDA7D    cmp         dword ptr [ebp-14],0
>004BDA81    je          004BDAE9
 004BDA83    mov         eax,dword ptr [ebp-4]
 004BDA86    call        004CAE74
 004BDA8B    inc         eax
 004BDA8C    call        0046748C
 004BDA91    mov         dword ptr [ebp-0C],eax
 004BDA94    xor         eax,eax
 004BDA96    push        ebp
 004BDA97    push        4BDAE2
 004BDA9C    push        dword ptr fs:[eax]
 004BDA9F    mov         dword ptr fs:[eax],esp
 004BDAA2    mov         eax,dword ptr [ebp-0C]
 004BDAA5    call        004674B8
 004BDAAA    mov         ecx,eax
 004BDAAC    mov         edx,dword ptr [ebp-0C]
 004BDAAF    mov         eax,dword ptr [ebp-4]
 004BDAB2    call        004CAE98
 004BDAB7    mov         eax,dword ptr [ebp-0C]
 004BDABA    mov         edx,dword ptr [ebp-10]
 004BDABD    add         eax,edx
 004BDABF    mov         edx,dword ptr [ebp-8]
 004BDAC2    mov         edx,dword ptr [edx]
 004BDAC4    mov         ecx,dword ptr [ebp-14]
 004BDAC7    call        Move
 004BDACC    xor         eax,eax
 004BDACE    pop         edx
 004BDACF    pop         ecx
 004BDAD0    pop         ecx
 004BDAD1    mov         dword ptr fs:[eax],edx
 004BDAD4    push        4BDAE9
 004BDAD9    mov         eax,dword ptr [ebp-0C]
 004BDADC    call        00467520
 004BDAE1    ret
>004BDAE2    jmp         @HandleFinally
>004BDAE7    jmp         004BDAD9
 004BDAE9    mov         esp,ebp
 004BDAEB    pop         ebp
 004BDAEC    ret
end;*}

//004BDAF0
procedure TCustomEdit.CreateParams(var Params:TCreateParams);
begin
{*
 004BDAF0    push        ebp
 004BDAF1    mov         ebp,esp
 004BDAF3    add         esp,0FFFFFFF8
 004BDAF6    mov         dword ptr [ebp-8],edx
 004BDAF9    mov         dword ptr [ebp-4],eax
 004BDAFC    mov         edx,dword ptr [ebp-8]
 004BDAFF    mov         eax,dword ptr [ebp-4]
 004BDB02    call        004CF814
 004BDB07    mov         ecx,4BDBD0
 004BDB0C    mov         edx,dword ptr [ebp-8]
 004BDB0F    mov         eax,dword ptr [ebp-4]
 004BDB12    call        004CF6EC
 004BDB17    mov         eax,dword ptr [ebp-8]
 004BDB1A    mov         eax,dword ptr [eax+4]
 004BDB1D    or          eax,0C0
 004BDB22    mov         edx,dword ptr [ebp-4]
 004BDB25    movzx       edx,byte ptr [edx+20C]
 004BDB2C    or          eax,dword ptr [edx*4+541584]
 004BDB33    mov         edx,dword ptr [ebp-4]
 004BDB36    cmp         byte ptr [edx+20D],0
 004BDB3D    setne       dl
 004BDB40    and         edx,7F
 004BDB43    or          eax,dword ptr [edx*4+54159C]
 004BDB4A    mov         edx,dword ptr [ebp-4]
 004BDB4D    movzx       edx,byte ptr [edx+20E]
 004BDB54    or          eax,dword ptr [edx*4+5415A4]
 004BDB5B    mov         edx,dword ptr [ebp-4]
 004BDB5E    movzx       edx,byte ptr [edx+213]
 004BDB65    or          eax,dword ptr [edx*4+5415AC]
 004BDB6C    mov         edx,dword ptr [ebp-4]
 004BDB6F    movzx       edx,byte ptr [edx+211]
 004BDB76    or          eax,dword ptr [edx*4+5415B8]
 004BDB7D    mov         edx,dword ptr [ebp-4]
 004BDB80    movzx       edx,byte ptr [edx+212]
 004BDB87    or          eax,dword ptr [edx*4+5415C0]
 004BDB8E    mov         edx,dword ptr [ebp-8]
 004BDB91    mov         dword ptr [edx+4],eax
 004BDB94    mov         eax,[0055B36C];^NewStyleControls:Boolean
 004BDB99    cmp         byte ptr [eax],0
>004BDB9C    je          004BDBCA
 004BDB9E    mov         eax,dword ptr [ebp-4]
 004BDBA1    cmp         byte ptr [eax+1A5],0
>004BDBA8    je          004BDBCA
 004BDBAA    mov         eax,dword ptr [ebp-4]
 004BDBAD    cmp         byte ptr [eax+20C],1
>004BDBB4    jne         004BDBCA
 004BDBB6    mov         eax,dword ptr [ebp-8]
 004BDBB9    and         dword ptr [eax+4],0FF7FFFFF
 004BDBC0    mov         eax,dword ptr [ebp-8]
 004BDBC3    or          dword ptr [eax+8],200
 004BDBCA    pop         ecx
 004BDBCB    pop         ecx
 004BDBCC    pop         ebp
 004BDBCD    ret
*}
end;

//004BDBD8
{*procedure sub_004BDBD8(?:?);
begin
 004BDBD8    push        ebp
 004BDBD9    mov         ebp,esp
 004BDBDB    add         esp,0FFFFFF6C
 004BDBE1    push        esi
 004BDBE2    push        edi
 004BDBE3    mov         dword ptr [ebp-8],edx
 004BDBE6    mov         dword ptr [ebp-4],eax
 004BDBE9    mov         eax,[0055B70C];^gvar_0055D9C4:Integer
 004BDBEE    cmp         byte ptr [eax+0C],0
>004BDBF2    je          004BDC57
 004BDBF4    mov         eax,[0055B700];^gvar_00540934
 004BDBF9    cmp         dword ptr [eax],2
>004BDBFC    je          004BDC57
 004BDBFE    mov         eax,dword ptr [ebp-8]
 004BDC01    test        byte ptr [eax+5],8
>004BDC05    je          004BDC57
 004BDC07    mov         eax,dword ptr [ebp-8]
 004BDC0A    mov         esi,eax
 004BDC0C    lea         edi,[ebp-94]
 004BDC12    mov         ecx,23
 004BDC17    rep movs    dword ptr [edi],dword ptr [esi]
 004BDC19    and         dword ptr [ebp-90],0FFFFF7FF
 004BDC23    lea         edx,[ebp-94]
 004BDC29    mov         eax,dword ptr [ebp-4]
 004BDC2C    call        004CFBB8
 004BDC31    mov         eax,dword ptr [ebp-4]
 004BDC34    cmp         dword ptr [eax+180],0;TCustomEdit.FHandle:HWND
>004BDC3B    je          004BDC62
 004BDC3D    push        0
 004BDC3F    push        1
 004BDC41    push        0CF
 004BDC46    mov         eax,dword ptr [ebp-4]
 004BDC49    mov         eax,dword ptr [eax+180];TCustomEdit.FHandle:HWND
 004BDC4F    push        eax
 004BDC50    call        user32.SendMessageA
>004BDC55    jmp         004BDC62
 004BDC57    mov         edx,dword ptr [ebp-8]
 004BDC5A    mov         eax,dword ptr [ebp-4]
 004BDC5D    call        004CFBB8
 004BDC62    pop         edi
 004BDC63    pop         esi
 004BDC64    mov         esp,ebp
 004BDC66    pop         ebp
 004BDC67    ret
end;*}

//004BDC68
procedure TCustomEdit.CreateWnd;
begin
{*
 004BDC68    push        ebp
 004BDC69    mov         ebp,esp
 004BDC6B    push        ecx
 004BDC6C    mov         dword ptr [ebp-4],eax
 004BDC6F    mov         eax,dword ptr [ebp-4]
 004BDC72    mov         byte ptr [eax+214],1
 004BDC79    xor         eax,eax
 004BDC7B    push        ebp
 004BDC7C    push        4BDCA7
 004BDC81    push        dword ptr fs:[eax]
 004BDC84    mov         dword ptr fs:[eax],esp
 004BDC87    mov         eax,dword ptr [ebp-4]
 004BDC8A    call        TWinControl.CreateWnd
 004BDC8F    xor         eax,eax
 004BDC91    pop         edx
 004BDC92    pop         ecx
 004BDC93    pop         ecx
 004BDC94    mov         dword ptr fs:[eax],edx
 004BDC97    push        4BDCAE
 004BDC9C    mov         eax,dword ptr [ebp-4]
 004BDC9F    mov         byte ptr [eax+214],0
 004BDCA6    ret
>004BDCA7    jmp         @HandleFinally
>004BDCAC    jmp         004BDC9C
 004BDCAE    mov         eax,dword ptr [ebp-4]
 004BDCB1    mov         edx,dword ptr [eax+208]
 004BDCB7    mov         eax,dword ptr [ebp-4]
 004BDCBA    mov         ecx,dword ptr [eax]
 004BDCBC    call        dword ptr [ecx+0C8]
 004BDCC2    mov         eax,dword ptr [ebp-4]
 004BDCC5    mov         dl,byte ptr [eax+215]
 004BDCCB    mov         eax,dword ptr [ebp-4]
 004BDCCE    call        TCustomEdit.SetModified
 004BDCD3    mov         eax,dword ptr [ebp-4]
 004BDCD6    cmp         byte ptr [eax+20D],0
>004BDCDD    je          004BDCFF
 004BDCDF    push        0
 004BDCE1    mov         eax,dword ptr [ebp-4]
 004BDCE4    movzx       eax,byte ptr [eax+20D]
 004BDCEB    push        eax
 004BDCEC    push        0CC
 004BDCF1    mov         eax,dword ptr [ebp-4]
 004BDCF4    call        TWinControl.GetHandle
 004BDCF9    push        eax
 004BDCFA    call        user32.SendMessageA
 004BDCFF    mov         eax,dword ptr [ebp-4]
 004BDD02    call        TCustomEdit.UpdateHeight
 004BDD07    pop         ecx
 004BDD08    pop         ebp
 004BDD09    ret
*}
end;

//004BDD0C
procedure sub_004BDD0C;
begin
{*
 004BDD0C    push        ebp
 004BDD0D    mov         ebp,esp
 004BDD0F    push        ecx
 004BDD10    mov         dword ptr [ebp-4],eax
 004BDD13    mov         eax,dword ptr [ebp-4]
 004BDD16    call        004BD6E0
 004BDD1B    mov         edx,dword ptr [ebp-4]
 004BDD1E    mov         byte ptr [edx+215],al;TCustomEdit.FModified:Boolean
 004BDD24    mov         eax,dword ptr [ebp-4]
 004BDD27    call        004CFE84
 004BDD2C    pop         ecx
 004BDD2D    pop         ebp
 004BDD2E    ret
*}
end;

//004BDD30
procedure TCustomEdit.UpdateHeight;
begin
{*
 004BDD30    push        ebp
 004BDD31    mov         ebp,esp
 004BDD33    push        ecx
 004BDD34    mov         dword ptr [ebp-4],eax
 004BDD37    mov         eax,dword ptr [ebp-4]
 004BDD3A    cmp         byte ptr [eax+20F],0
>004BDD41    je          004BDD6B
 004BDD43    mov         eax,dword ptr [ebp-4]
 004BDD46    cmp         byte ptr [eax+20C],1
>004BDD4D    jne         004BDD6B
 004BDD4F    mov         eax,[004BDD84]
 004BDD54    mov         edx,dword ptr [ebp-4]
 004BDD57    or          eax,dword ptr [edx+50]
 004BDD5A    mov         edx,dword ptr [ebp-4]
 004BDD5D    mov         dword ptr [edx+50],eax
 004BDD60    mov         eax,dword ptr [ebp-4]
 004BDD63    call        004BDD88
 004BDD68    pop         ecx
 004BDD69    pop         ebp
 004BDD6A    ret
 004BDD6B    mov         eax,[004BDD84]
 004BDD70    mov         edx,dword ptr [ebp-4]
 004BDD73    not         eax
 004BDD75    and         eax,dword ptr [edx+50]
 004BDD78    mov         edx,dword ptr [ebp-4]
 004BDD7B    mov         dword ptr [edx+50],eax
 004BDD7E    pop         ecx
 004BDD7F    pop         ebp
 004BDD80    ret
*}
end;

//004BDD88
procedure sub_004BDD88(?:TCustomEdit);
begin
{*
 004BDD88    push        ebp
 004BDD89    mov         ebp,esp
 004BDD8B    add         esp,0FFFFFF80
 004BDD8E    mov         dword ptr [ebp-4],eax
 004BDD91    push        0
 004BDD93    call        user32.GetDC
 004BDD98    mov         dword ptr [ebp-8],eax
 004BDD9B    lea         eax,[ebp-48]
 004BDD9E    push        eax
 004BDD9F    mov         eax,dword ptr [ebp-8]
 004BDDA2    push        eax
 004BDDA3    call        gdi32.GetTextMetricsA
 004BDDA8    mov         eax,dword ptr [ebp-4]
 004BDDAB    mov         eax,dword ptr [eax+68]
 004BDDAE    call        TFont.GetHandle
 004BDDB3    push        eax
 004BDDB4    mov         eax,dword ptr [ebp-8]
 004BDDB7    push        eax
 004BDDB8    call        gdi32.SelectObject
 004BDDBD    mov         dword ptr [ebp-0C],eax
 004BDDC0    lea         eax,[ebp-80]
 004BDDC3    push        eax
 004BDDC4    mov         eax,dword ptr [ebp-8]
 004BDDC7    push        eax
 004BDDC8    call        gdi32.GetTextMetricsA
 004BDDCD    mov         eax,dword ptr [ebp-0C]
 004BDDD0    push        eax
 004BDDD1    mov         eax,dword ptr [ebp-8]
 004BDDD4    push        eax
 004BDDD5    call        gdi32.SelectObject
 004BDDDA    mov         eax,dword ptr [ebp-8]
 004BDDDD    push        eax
 004BDDDE    push        0
 004BDDE0    call        user32.ReleaseDC
 004BDDE5    mov         eax,[0055B36C];^NewStyleControls:Boolean
 004BDDEA    cmp         byte ptr [eax],0
>004BDDED    je          004BDE1A
 004BDDEF    mov         eax,dword ptr [ebp-4]
 004BDDF2    cmp         byte ptr [eax+1A5],0
>004BDDF9    je          004BDE04
 004BDDFB    mov         dword ptr [ebp-10],8
>004BDE02    jmp         004BDE0B
 004BDE04    mov         dword ptr [ebp-10],6
 004BDE0B    push        6
 004BDE0D    call        user32.GetSystemMetrics
 004BDE12    imul        dword ptr [ebp-10]
 004BDE15    mov         dword ptr [ebp-10],eax
>004BDE18    jmp         004BDE4A
 004BDE1A    mov         eax,dword ptr [ebp-48]
 004BDE1D    mov         dword ptr [ebp-10],eax
 004BDE20    mov         eax,dword ptr [ebp-10]
 004BDE23    cmp         eax,dword ptr [ebp-80]
>004BDE26    jle         004BDE2E
 004BDE28    mov         eax,dword ptr [ebp-80]
 004BDE2B    mov         dword ptr [ebp-10],eax
 004BDE2E    push        6
 004BDE30    call        user32.GetSystemMetrics
 004BDE35    shl         eax,2
 004BDE38    mov         edx,dword ptr [ebp-10]
 004BDE3B    test        edx,edx
>004BDE3D    jns         004BDE42
 004BDE3F    add         edx,3
 004BDE42    sar         edx,2
 004BDE45    add         eax,edx
 004BDE47    mov         dword ptr [ebp-10],eax
 004BDE4A    mov         edx,dword ptr [ebp-80]
 004BDE4D    add         edx,dword ptr [ebp-10]
 004BDE50    mov         eax,dword ptr [ebp-4]
 004BDE53    call        TControl.SetHeight
 004BDE58    mov         esp,ebp
 004BDE5A    pop         ebp
 004BDE5B    ret
*}
end;

//004BDE5C
procedure TCustomEdit.sub_004BDE5C;
begin
{*
 004BDE5C    push        ebp
 004BDE5D    mov         ebp,esp
 004BDE5F    push        ecx
 004BDE60    push        ebx
 004BDE61    mov         dword ptr [ebp-4],eax
 004BDE64    mov         eax,dword ptr [ebp-4]
 004BDE67    call        004CA9F8
 004BDE6C    mov         eax,dword ptr [ebp-4]
 004BDE6F    cmp         word ptr [eax+21A],0;TCustomEdit.?f21A:word
>004BDE77    je          004BDE8B
 004BDE79    mov         ebx,dword ptr [ebp-4]
 004BDE7C    mov         edx,dword ptr [ebp-4]
 004BDE7F    mov         eax,dword ptr [ebx+21C];TCustomEdit.?f21C:dword
 004BDE85    call        dword ptr [ebx+218];TCustomEdit.FOnChange
 004BDE8B    pop         ebx
 004BDE8C    pop         ecx
 004BDE8D    pop         ebp
 004BDE8E    ret
*}
end;

//004BDE90
procedure TCustomEdit.DefaultHandler(var Message:void );
begin
{*
 004BDE90    push        ebp
 004BDE91    mov         ebp,esp
 004BDE93    add         esp,0FFFFFFF8
 004BDE96    mov         dword ptr [ebp-8],edx
 004BDE99    mov         dword ptr [ebp-4],eax
 004BDE9C    mov         eax,dword ptr [ebp-8];{Win32Platform}
 004BDE9F    mov         eax,dword ptr [eax]
 004BDEA1    sub         eax,7
>004BDEA4    jne         004BDEC8
 004BDEA6    mov         eax,[0055B700];^gvar_00540934
 004BDEAB    cmp         dword ptr [eax],1;{IsWindow}
>004BDEAE    jne         004BDEC8
 004BDEB0    mov         eax,dword ptr [ebp-8]
 004BDEB3    mov         eax,dword ptr [eax+4]
 004BDEB6    push        eax
 004BDEB7    call        user32.IsWindow
 004BDEBC    test        eax,eax
>004BDEBE    jne         004BDEC8
 004BDEC0    mov         eax,dword ptr [ebp-8]
 004BDEC3    xor         edx,edx
 004BDEC5    mov         dword ptr [eax+4],edx
 004BDEC8    mov         edx,dword ptr [ebp-8]
 004BDECB    mov         eax,dword ptr [ebp-4]
 004BDECE    call        TWinControl.DefaultHandler
 004BDED3    pop         ecx
 004BDED4    pop         ecx
 004BDED5    pop         ebp
 004BDED6    ret
*}
end;

//004BDED8
{*procedure TCustomEdit.WMSetFont(?:?);
begin
 004BDED8    push        ebp
 004BDED9    mov         ebp,esp
 004BDEDB    add         esp,0FFFFFFF8
 004BDEDE    mov         dword ptr [ebp-8],edx
 004BDEE1    mov         dword ptr [ebp-4],eax
 004BDEE4    mov         edx,dword ptr [ebp-8]
 004BDEE7    mov         eax,dword ptr [ebp-4]
 004BDEEA    mov         ecx,dword ptr [eax]
 004BDEEC    call        dword ptr [ecx-10];TCustomEdit.DefaultHandler
 004BDEEF    mov         eax,[0055B36C];^NewStyleControls:Boolean
 004BDEF4    cmp         byte ptr [eax],0
>004BDEF7    je          004BDF24
 004BDEF9    push        0F0
 004BDEFB    mov         eax,dword ptr [ebp-4]
 004BDEFE    call        TWinControl.GetHandle
 004BDF03    push        eax
 004BDF04    call        user32.GetWindowLongA
 004BDF09    test        al,4
>004BDF0B    jne         004BDF24
 004BDF0D    push        0
 004BDF0F    push        3
 004BDF11    push        0D3
 004BDF16    mov         eax,dword ptr [ebp-4]
 004BDF19    call        TWinControl.GetHandle
 004BDF1E    push        eax
 004BDF1F    call        user32.SendMessageA
 004BDF24    pop         ecx
 004BDF25    pop         ecx
 004BDF26    pop         ebp
 004BDF27    ret
end;*}

//004BDF28
{*procedure TCustomEdit.CMCtl3DChanged(?:?);
begin
 004BDF28    push        ebp
 004BDF29    mov         ebp,esp
 004BDF2B    add         esp,0FFFFFFF8
 004BDF2E    mov         dword ptr [ebp-8],edx
 004BDF31    mov         dword ptr [ebp-4],eax
 004BDF34    mov         eax,[0055B36C];^NewStyleControls:Boolean
 004BDF39    cmp         byte ptr [eax],0
>004BDF3C    je          004BDF5A
 004BDF3E    mov         eax,dword ptr [ebp-4]
 004BDF41    cmp         byte ptr [eax+20C],1;TCustomEdit.FBorderStyle:TBorderStyle
>004BDF48    jne         004BDF5A
 004BDF4A    mov         eax,dword ptr [ebp-4]
 004BDF4D    call        TCustomEdit.UpdateHeight
 004BDF52    mov         eax,dword ptr [ebp-4]
 004BDF55    call        TWinControl.RecreateWnd
 004BDF5A    mov         edx,dword ptr [ebp-8]
 004BDF5D    mov         eax,dword ptr [ebp-4]
 004BDF60    call        TWinControl.CMCtl3DChanged
 004BDF65    pop         ecx
 004BDF66    pop         ecx
 004BDF67    pop         ebp
 004BDF68    ret
end;*}

//004BDF6C
{*procedure TCustomEdit.CMFontChanged(?:?);
begin
 004BDF6C    push        ebp
 004BDF6D    mov         ebp,esp
 004BDF6F    add         esp,0FFFFFFF8
 004BDF72    mov         dword ptr [ebp-8],edx
 004BDF75    mov         dword ptr [ebp-4],eax
 004BDF78    mov         edx,dword ptr [ebp-8]
 004BDF7B    mov         eax,dword ptr [ebp-4]
 004BDF7E    call        TWinControl.CMFontChanged
 004BDF83    mov         eax,dword ptr [ebp-4]
 004BDF86    test        byte ptr [eax+51],2;TCustomEdit.?f51:byte
>004BDF8A    je          004BDFA6
 004BDF8C    mov         eax,dword ptr [ebp-4]
 004BDF8F    test        byte ptr [eax+1C],10;TCustomEdit.FComponentState:TComponentState
>004BDF93    je          004BDF9E
 004BDF95    mov         eax,dword ptr [ebp-4]
 004BDF98    test        byte ptr [eax+1C],1;TCustomEdit.FComponentState:TComponentState
>004BDF9C    jne         004BDFA6
 004BDF9E    mov         eax,dword ptr [ebp-4]
 004BDFA1    call        004BDD88
 004BDFA6    pop         ecx
 004BDFA7    pop         ecx
 004BDFA8    pop         ebp
 004BDFA9    ret
end;*}

//004BDFAC
{*procedure TCustomEdit.sub_004BDFAC(?:?);
begin
 004BDFAC    push        ebp
 004BDFAD    mov         ebp,esp
 004BDFAF    add         esp,0FFFFFFF8
 004BDFB2    push        esi
 004BDFB3    mov         dword ptr [ebp-8],edx
 004BDFB6    mov         dword ptr [ebp-4],eax
 004BDFB9    mov         eax,dword ptr [ebp-8]
 004BDFBC    cmp         word ptr [eax+6],300
>004BDFC2    jne         004BDFDC
 004BDFC4    mov         eax,dword ptr [ebp-4]
 004BDFC7    cmp         byte ptr [eax+214],0;TCustomEdit.FCreating:Boolean
>004BDFCE    jne         004BDFDC
 004BDFD0    mov         eax,dword ptr [ebp-4]
 004BDFD3    mov         si,0FFB3
 004BDFD7    call        @CallDynaInst;TCustomEdit.sub_004BDE5C
 004BDFDC    pop         esi
 004BDFDD    pop         ecx
 004BDFDE    pop         ecx
 004BDFDF    pop         ebp
 004BDFE0    ret
end;*}

//004BDFE4
procedure TCustomEdit.CMEnter(var Message:TCMGotFocus);
begin
{*
 004BDFE4    push        ebp
 004BDFE5    mov         ebp,esp
 004BDFE7    add         esp,0FFFFFFF8
 004BDFEA    mov         dword ptr [ebp-8],edx
 004BDFED    mov         dword ptr [ebp-4],eax
 004BDFF0    mov         eax,dword ptr [ebp-4]
 004BDFF3    cmp         byte ptr [eax+210],0
>004BDFFA    je          004BE021
 004BDFFC    mov         eax,dword ptr [ebp-4]
 004BDFFF    test        byte ptr [eax+54],1
>004BE003    jne         004BE021
 004BE005    push        0F0
 004BE007    mov         eax,dword ptr [ebp-4]
 004BE00A    call        TWinControl.GetHandle
 004BE00F    push        eax
 004BE010    call        user32.GetWindowLongA
 004BE015    test        al,4
>004BE017    jne         004BE021
 004BE019    mov         eax,dword ptr [ebp-4]
 004BE01C    call        TCustomEdit.SelectAll
 004BE021    mov         edx,dword ptr [ebp-8]
 004BE024    mov         eax,dword ptr [ebp-4]
 004BE027    call        TWinControl.CMEnter
 004BE02C    pop         ecx
 004BE02D    pop         ecx
 004BE02E    pop         ebp
 004BE02F    ret
*}
end;

//004BE030
{*procedure TCustomEdit.CMTextChanged(?:?);
begin
 004BE030    push        ebp
 004BE031    mov         ebp,esp
 004BE033    add         esp,0FFFFFFF8
 004BE036    push        esi
 004BE037    mov         dword ptr [ebp-8],edx
 004BE03A    mov         dword ptr [ebp-4],eax
 004BE03D    mov         edx,dword ptr [ebp-8]
 004BE040    mov         eax,dword ptr [ebp-4]
 004BE043    mov         ecx,dword ptr [eax]
 004BE045    call        dword ptr [ecx-10];TCustomEdit.DefaultHandler
 004BE048    mov         eax,dword ptr [ebp-4]
 004BE04B    call        TWinControl.HandleAllocated
 004BE050    test        al,al
>004BE052    je          004BE068
 004BE054    push        0F0
 004BE056    mov         eax,dword ptr [ebp-4]
 004BE059    call        TWinControl.GetHandle
 004BE05E    push        eax
 004BE05F    call        user32.GetWindowLongA
 004BE064    test        al,4
>004BE066    je          004BE074
 004BE068    mov         eax,dword ptr [ebp-4]
 004BE06B    mov         si,0FFB3
 004BE06F    call        @CallDynaInst;TCustomEdit.sub_004BDE5C
 004BE074    pop         esi
 004BE075    pop         ecx
 004BE076    pop         ecx
 004BE077    pop         ebp
 004BE078    ret
end;*}

//004BE07C
{*procedure TCustomEdit.WMContextMenu(?:?);
begin
 004BE07C    push        ebp
 004BE07D    mov         ebp,esp
 004BE07F    add         esp,0FFFFFFF8
 004BE082    mov         dword ptr [ebp-8],edx
 004BE085    mov         dword ptr [ebp-4],eax
 004BE088    mov         eax,dword ptr [ebp-4]
 004BE08B    mov         edx,dword ptr [eax]
 004BE08D    call        dword ptr [edx+0C4];TCustomEdit.sub_004D3808
 004BE093    mov         edx,dword ptr [ebp-8]
 004BE096    mov         eax,dword ptr [ebp-4]
 004BE099    call        TWinControl.WMContextMenu
 004BE09E    pop         ecx
 004BE09F    pop         ecx
 004BE0A0    pop         ebp
 004BE0A1    ret
end;*}

//004BE0A4
{*function sub_004BE0A4:?;
begin
 004BE0A4    push        ebp
 004BE0A5    mov         ebp,esp
 004BE0A7    add         esp,0FFFFFFF8
 004BE0AA    mov         dword ptr [ebp-4],eax
 004BE0AD    xor         eax,eax
 004BE0AF    mov         dword ptr [ebp-8],eax
 004BE0B2    mov         eax,dword ptr [ebp-4]
 004BE0B5    mov         eax,dword ptr [eax+10];TMemoStrings................................Memo:TCustomMemo
 004BE0B8    call        TWinControl.HandleAllocated
 004BE0BD    test        al,al
>004BE0BF    jne         004BE0CD
 004BE0C1    mov         eax,dword ptr [ebp-4]
 004BE0C4    mov         eax,dword ptr [eax+10];TMemoStrings.................................Memo:TCustomMemo
 004BE0C7    cmp         dword ptr [eax+64],0;TCustomMemo.FText:PChar
>004BE0CB    je          004BE127
 004BE0CD    push        0
 004BE0CF    push        0
 004BE0D1    push        0BA
 004BE0D6    mov         eax,dword ptr [ebp-4]
 004BE0D9    mov         eax,dword ptr [eax+10];TMemoStrings..................................Memo:TCustomMemo
 004BE0DC    call        TWinControl.GetHandle
 004BE0E1    push        eax
 004BE0E2    call        user32.SendMessageA
 004BE0E7    mov         dword ptr [ebp-8],eax
 004BE0EA    push        0
 004BE0EC    push        0
 004BE0EE    mov         eax,dword ptr [ebp-8]
 004BE0F1    dec         eax
 004BE0F2    push        eax
 004BE0F3    push        0BB
 004BE0F8    mov         eax,dword ptr [ebp-4]
 004BE0FB    mov         eax,dword ptr [eax+10];TMemoStrings...................................Memo:TCustomMemo
 004BE0FE    call        TWinControl.GetHandle
 004BE103    push        eax
 004BE104    call        user32.SendMessageA
 004BE109    push        eax
 004BE10A    push        0C1
 004BE10F    mov         eax,dword ptr [ebp-4]
 004BE112    mov         eax,dword ptr [eax+10];TMemoStrings....................................Memo:TCustomMemo
 004BE115    call        TWinControl.GetHandle
 004BE11A    push        eax
 004BE11B    call        user32.SendMessageA
 004BE120    test        eax,eax
>004BE122    jne         004BE127
 004BE124    dec         dword ptr [ebp-8]
 004BE127    mov         eax,dword ptr [ebp-8]
 004BE12A    pop         ecx
 004BE12B    pop         ecx
 004BE12C    pop         ebp
 004BE12D    ret
end;*}

//004BE130
{*procedure sub_004BE130(?:?; ?:?);
begin
 004BE130    push        ebp
 004BE131    mov         ebp,esp
 004BE133    add         esp,0FFFFF004
 004BE139    push        eax
 004BE13A    add         esp,0FFFFFFF4
 004BE13D    mov         dword ptr [ebp-0C],ecx
 004BE140    mov         dword ptr [ebp-8],edx
 004BE143    mov         dword ptr [ebp-4],eax
 004BE146    lea         eax,[ebp-100C]
 004BE14C    mov         word ptr [eax],1000
 004BE151    lea         eax,[ebp-100C]
 004BE157    push        eax
 004BE158    mov         eax,dword ptr [ebp-8]
 004BE15B    push        eax
 004BE15C    push        0C4
 004BE161    mov         eax,dword ptr [ebp-4]
 004BE164    mov         eax,dword ptr [eax+10];TMemoStrings.....................................Memo:TCustomMemo
 004BE167    call        TWinControl.GetHandle
 004BE16C    push        eax
 004BE16D    call        user32.SendMessageA
 004BE172    mov         ecx,eax
 004BE174    lea         edx,[ebp-100C]
 004BE17A    mov         eax,dword ptr [ebp-0C]
 004BE17D    call        @LStrFromPCharLen
 004BE182    mov         esp,ebp
 004BE184    pop         ebp
 004BE185    ret
end;*}

//004BE188
{*procedure sub_004BE188(?:?; ?:?);
begin
 004BE188    push        ebp
 004BE189    mov         ebp,esp
 004BE18B    add         esp,0FFFFFFF0
 004BE18E    mov         dword ptr [ebp-0C],ecx
 004BE191    mov         dword ptr [ebp-8],edx
 004BE194    mov         dword ptr [ebp-4],eax
 004BE197    push        0
 004BE199    mov         eax,dword ptr [ebp-8]
 004BE19C    push        eax
 004BE19D    push        0BB
 004BE1A2    mov         eax,dword ptr [ebp-4]
 004BE1A5    mov         eax,dword ptr [eax+10];TMemoStrings......................................Memo:TCustomMem...
 004BE1A8    call        TWinControl.GetHandle
 004BE1AD    push        eax
 004BE1AE    call        user32.SendMessageA
 004BE1B3    mov         dword ptr [ebp-10],eax
 004BE1B6    cmp         dword ptr [ebp-10],0
>004BE1BA    jl          004BE217
 004BE1BC    push        0
 004BE1BE    mov         eax,dword ptr [ebp-10]
 004BE1C1    push        eax
 004BE1C2    push        0C1
 004BE1C7    mov         eax,dword ptr [ebp-4]
 004BE1CA    mov         eax,dword ptr [eax+10];TMemoStrings.......................................Memo:TCustomMe...
 004BE1CD    call        TWinControl.GetHandle
 004BE1D2    push        eax
 004BE1D3    call        user32.SendMessageA
 004BE1D8    add         eax,dword ptr [ebp-10]
 004BE1DB    push        eax
 004BE1DC    mov         eax,dword ptr [ebp-10]
 004BE1DF    push        eax
 004BE1E0    push        0B1
 004BE1E5    mov         eax,dword ptr [ebp-4]
 004BE1E8    mov         eax,dword ptr [eax+10];TMemoStrings........................................Memo:TCustomM...
 004BE1EB    call        TWinControl.GetHandle
 004BE1F0    push        eax
 004BE1F1    call        user32.SendMessageA
 004BE1F6    mov         eax,dword ptr [ebp-0C]
 004BE1F9    call        @LStrToPChar
 004BE1FE    push        eax
 004BE1FF    push        0
 004BE201    push        0C2
 004BE206    mov         eax,dword ptr [ebp-4]
 004BE209    mov         eax,dword ptr [eax+10];TMemoStrings.........................................Memo:TCustom...
 004BE20C    call        TWinControl.GetHandle
 004BE211    push        eax
 004BE212    call        user32.SendMessageA
 004BE217    mov         esp,ebp
 004BE219    pop         ebp
 004BE21A    ret
end;*}

//004BE21C
{*procedure sub_004BE21C(?:?; ?:?);
begin
 004BE21C    push        ebp
 004BE21D    mov         ebp,esp
 004BE21F    add         esp,0FFFFFFE8
 004BE222    push        ebx
 004BE223    xor         ebx,ebx
 004BE225    mov         dword ptr [ebp-18],ebx
 004BE228    mov         dword ptr [ebp-0C],ecx
 004BE22B    mov         dword ptr [ebp-8],edx
 004BE22E    mov         dword ptr [ebp-4],eax
 004BE231    xor         eax,eax
 004BE233    push        ebp
 004BE234    push        4BE336
 004BE239    push        dword ptr fs:[eax]
 004BE23C    mov         dword ptr fs:[eax],esp
 004BE23F    cmp         dword ptr [ebp-8],0
>004BE243    jl          004BE320
 004BE249    push        0
 004BE24B    mov         eax,dword ptr [ebp-8]
 004BE24E    push        eax
 004BE24F    push        0BB
 004BE254    mov         eax,dword ptr [ebp-4]
 004BE257    mov         eax,dword ptr [eax+10];TMemoStrings..........................................Memo:TCusto...
 004BE25A    call        TWinControl.GetHandle
 004BE25F    push        eax
 004BE260    call        user32.SendMessageA
 004BE265    mov         dword ptr [ebp-10],eax
 004BE268    cmp         dword ptr [ebp-10],0
>004BE26C    jl          004BE280
 004BE26E    lea         eax,[ebp-18]
 004BE271    mov         ecx,4BE34C;#13+#10
 004BE276    mov         edx,dword ptr [ebp-0C]
 004BE279    call        @LStrCat3
>004BE27E    jmp         004BE2E1
 004BE280    push        0
 004BE282    mov         eax,dword ptr [ebp-8]
 004BE285    dec         eax
 004BE286    push        eax
 004BE287    push        0BB
 004BE28C    mov         eax,dword ptr [ebp-4]
 004BE28F    mov         eax,dword ptr [eax+10];TMemoStrings...........................................Memo:TCust...
 004BE292    call        TWinControl.GetHandle
 004BE297    push        eax
 004BE298    call        user32.SendMessageA
 004BE29D    mov         dword ptr [ebp-10],eax
 004BE2A0    cmp         dword ptr [ebp-10],0
>004BE2A4    jl          004BE320
 004BE2A6    push        0
 004BE2A8    mov         eax,dword ptr [ebp-10]
 004BE2AB    push        eax
 004BE2AC    push        0C1
 004BE2B1    mov         eax,dword ptr [ebp-4]
 004BE2B4    mov         eax,dword ptr [eax+10];TMemoStrings............................................Memo:TCus...
 004BE2B7    call        TWinControl.GetHandle
 004BE2BC    push        eax
 004BE2BD    call        user32.SendMessageA
 004BE2C2    mov         dword ptr [ebp-14],eax
 004BE2C5    cmp         dword ptr [ebp-14],0
>004BE2C9    je          004BE320
 004BE2CB    mov         eax,dword ptr [ebp-14]
 004BE2CE    add         dword ptr [ebp-10],eax
 004BE2D1    lea         eax,[ebp-18]
 004BE2D4    mov         ecx,dword ptr [ebp-0C]
 004BE2D7    mov         edx,4BE34C;#13+#10
 004BE2DC    call        @LStrCat3
 004BE2E1    mov         eax,dword ptr [ebp-10]
 004BE2E4    push        eax
 004BE2E5    mov         eax,dword ptr [ebp-10]
 004BE2E8    push        eax
 004BE2E9    push        0B1
 004BE2EE    mov         eax,dword ptr [ebp-4]
 004BE2F1    mov         eax,dword ptr [eax+10];TMemoStrings.............................................Memo:TCu...
 004BE2F4    call        TWinControl.GetHandle
 004BE2F9    push        eax
 004BE2FA    call        user32.SendMessageA
 004BE2FF    mov         eax,dword ptr [ebp-18]
 004BE302    call        @LStrToPChar
 004BE307    push        eax
 004BE308    push        0
 004BE30A    push        0C2
 004BE30F    mov         eax,dword ptr [ebp-4]
 004BE312    mov         eax,dword ptr [eax+10];TMemoStrings..............................................Memo:TC...
 004BE315    call        TWinControl.GetHandle
 004BE31A    push        eax
 004BE31B    call        user32.SendMessageA
 004BE320    xor         eax,eax
 004BE322    pop         edx
 004BE323    pop         ecx
 004BE324    pop         ecx
 004BE325    mov         dword ptr fs:[eax],edx
 004BE328    push        4BE33D
 004BE32D    lea         eax,[ebp-18]
 004BE330    call        @LStrClr
 004BE335    ret
>004BE336    jmp         @HandleFinally
>004BE33B    jmp         004BE32D
 004BE33D    pop         ebx
 004BE33E    mov         esp,ebp
 004BE340    pop         ebp
 004BE341    ret
end;*}

//004BE354
{*procedure sub_004BE354(?:?);
begin
 004BE354    push        ebp
 004BE355    mov         ebp,esp
 004BE357    add         esp,0FFFFFFF0
 004BE35A    mov         dword ptr [ebp-8],edx
 004BE35D    mov         dword ptr [ebp-4],eax
 004BE360    push        0
 004BE362    mov         eax,dword ptr [ebp-8]
 004BE365    push        eax
 004BE366    push        0BB
 004BE36B    mov         eax,dword ptr [ebp-4]
 004BE36E    mov         eax,dword ptr [eax+10];TMemoStrings...............................................Memo:T...
 004BE371    call        TWinControl.GetHandle
 004BE376    push        eax
 004BE377    call        user32.SendMessageA
 004BE37C    mov         dword ptr [ebp-0C],eax
 004BE37F    cmp         dword ptr [ebp-0C],0
>004BE383    jl          004BE40D
 004BE389    push        0
 004BE38B    mov         eax,dword ptr [ebp-8]
 004BE38E    inc         eax
 004BE38F    push        eax
 004BE390    push        0BB
 004BE395    mov         eax,dword ptr [ebp-4]
 004BE398    mov         eax,dword ptr [eax+10];TMemoStrings................................................Memo:...
 004BE39B    call        TWinControl.GetHandle
 004BE3A0    push        eax
 004BE3A1    call        user32.SendMessageA
 004BE3A6    mov         dword ptr [ebp-10],eax
 004BE3A9    cmp         dword ptr [ebp-10],0
>004BE3AD    jge         004BE3D1
 004BE3AF    push        0
 004BE3B1    mov         eax,dword ptr [ebp-0C]
 004BE3B4    push        eax
 004BE3B5    push        0C1
 004BE3BA    mov         eax,dword ptr [ebp-4]
 004BE3BD    mov         eax,dword ptr [eax+10];TMemoStrings.................................................Memo...
 004BE3C0    call        TWinControl.GetHandle
 004BE3C5    push        eax
 004BE3C6    call        user32.SendMessageA
 004BE3CB    add         eax,dword ptr [ebp-0C]
 004BE3CE    mov         dword ptr [ebp-10],eax
 004BE3D1    mov         eax,dword ptr [ebp-10]
 004BE3D4    push        eax
 004BE3D5    mov         eax,dword ptr [ebp-0C]
 004BE3D8    push        eax
 004BE3D9    push        0B1
 004BE3DE    mov         eax,dword ptr [ebp-4]
 004BE3E1    mov         eax,dword ptr [eax+10];TMemoStrings..................................................Mem...
 004BE3E4    call        TWinControl.GetHandle
 004BE3E9    push        eax
 004BE3EA    call        user32.SendMessageA
 004BE3EF    mov         eax,[005415C8];^gvar_004BE350
 004BE3F4    push        eax
 004BE3F5    push        0
 004BE3F7    push        0C2
 004BE3FC    mov         eax,dword ptr [ebp-4]
 004BE3FF    mov         eax,dword ptr [eax+10];TMemoStrings...................................................Me...
 004BE402    call        TWinControl.GetHandle
 004BE407    push        eax
 004BE408    call        user32.SendMessageA
 004BE40D    mov         esp,ebp
 004BE40F    pop         ebp
 004BE410    ret
end;*}

//004BE414
procedure TMemoStrings.Clear;
begin
{*
 004BE414    push        ebp
 004BE415    mov         ebp,esp
 004BE417    push        ecx
 004BE418    mov         dword ptr [ebp-4],eax
 004BE41B    mov         eax,dword ptr [ebp-4]
 004BE41E    mov         eax,dword ptr [eax+10];TMemoStrings....................................................M...
 004BE421    mov         edx,dword ptr [eax]
 004BE423    call        dword ptr [edx+0E0];TCustomMemo.sub_004BD95C
 004BE429    pop         ecx
 004BE42A    pop         ebp
 004BE42B    ret
*}
end;

//004BE42C
{*procedure sub_004BE42C(?:?);
begin
 004BE42C    push        ebp
 004BE42D    mov         ebp,esp
 004BE42F    add         esp,0FFFFFFF8
 004BE432    mov         byte ptr [ebp-5],dl
 004BE435    mov         dword ptr [ebp-4],eax
 004BE438    mov         eax,dword ptr [ebp-4]
 004BE43B    mov         eax,dword ptr [eax+10];TMemoStrings........................................................
 004BE43E    call        TWinControl.HandleAllocated
 004BE443    test        al,al
>004BE445    je          004BE48A
 004BE447    push        0
 004BE449    mov         al,byte ptr [ebp-5]
 004BE44C    xor         al,1
 004BE44E    and         eax,7F
 004BE451    push        eax
 004BE452    push        0B
 004BE454    mov         eax,dword ptr [ebp-4]
 004BE457    mov         eax,dword ptr [eax+10];TMemoStrings........................................................
 004BE45A    call        TWinControl.GetHandle
 004BE45F    push        eax
 004BE460    call        user32.SendMessageA
 004BE465    cmp         byte ptr [ebp-5],0
>004BE469    jne         004BE48A
 004BE46B    push        0
 004BE46D    xor         ecx,ecx
 004BE46F    mov         edx,0B019
 004BE474    mov         eax,dword ptr [ebp-4]
 004BE477    mov         eax,dword ptr [eax+10];TMemoStrings........................................................
 004BE47A    call        004CC7DC
 004BE47F    mov         eax,dword ptr [ebp-4]
 004BE482    mov         eax,dword ptr [eax+10];TMemoStrings........................................................
 004BE485    call        TControl.Refresh
 004BE48A    pop         ecx
 004BE48B    pop         ecx
 004BE48C    pop         ebp
 004BE48D    ret
end;*}

//004BE490
{*procedure sub_004BE490(?:?);
begin
 004BE490    push        ebp
 004BE491    mov         ebp,esp
 004BE493    add         esp,0FFFFFFF8
 004BE496    mov         dword ptr [ebp-8],edx
 004BE499    mov         dword ptr [ebp-4],eax
 004BE49C    mov         edx,dword ptr [ebp-8]
 004BE49F    mov         eax,dword ptr [ebp-4]
 004BE4A2    mov         eax,dword ptr [eax+10];TMemoStrings........................................................
 004BE4A5    call        TControl.GetText
 004BE4AA    pop         ecx
 004BE4AB    pop         ecx
 004BE4AC    pop         ebp
 004BE4AD    ret
end;*}

//004BE4B0
{*procedure sub_004BE4B0(?:?);
begin
 004BE4B0    push        ebp
 004BE4B1    mov         ebp,esp
 004BE4B3    xor         ecx,ecx
 004BE4B5    push        ecx
 004BE4B6    push        ecx
 004BE4B7    push        ecx
 004BE4B8    push        ecx
 004BE4B9    push        ecx
 004BE4BA    push        ebx
 004BE4BB    mov         dword ptr [ebp-8],edx
 004BE4BE    mov         dword ptr [ebp-4],eax
 004BE4C1    xor         eax,eax
 004BE4C3    push        ebp
 004BE4C4    push        4BE588
 004BE4C9    push        dword ptr fs:[eax]
 004BE4CC    mov         dword ptr fs:[eax],esp
 004BE4CF    lea         ecx,[ebp-0C]
 004BE4D2    mov         dl,1
 004BE4D4    mov         eax,dword ptr [ebp-8]
 004BE4D7    call        004666C4
 004BE4DC    mov         eax,dword ptr [ebp-0C]
 004BE4DF    call        @DynArrayLength
 004BE4E4    mov         ebx,eax
 004BE4E6    mov         eax,dword ptr [ebp-4]
 004BE4E9    mov         eax,dword ptr [eax+10];TMemoStrings........................................................
 004BE4EC    call        004CAE74
 004BE4F1    cmp         ebx,eax
>004BE4F3    jne         004BE510
 004BE4F5    lea         edx,[ebp-10]
 004BE4F8    mov         eax,dword ptr [ebp-4]
 004BE4FB    mov         eax,dword ptr [eax+10];TMemoStrings........................................................
 004BE4FE    call        TControl.GetText
 004BE503    mov         edx,dword ptr [ebp-10]
 004BE506    mov         eax,dword ptr [ebp-0C]
 004BE509    call        @LStrCmp
>004BE50E    je          004BE562
 004BE510    mov         eax,dword ptr [ebp-0C]
 004BE513    push        eax
 004BE514    push        0
 004BE516    push        0C
 004BE518    mov         eax,dword ptr [ebp-4]
 004BE51B    mov         eax,dword ptr [eax+10];TMemoStrings........................................................
 004BE51E    call        TWinControl.GetHandle
 004BE523    push        eax
 004BE524    call        user32.SendMessageA
 004BE529    test        eax,eax
>004BE52B    jne         004BE54E
 004BE52D    lea         edx,[ebp-14]
 004BE530    mov         eax,[0055B564];^SInvalidMemoSize:TResStringRec
 004BE535    call        LoadResString
 004BE53A    mov         ecx,dword ptr [ebp-14]
 004BE53D    mov         dl,1
 004BE53F    mov         eax,[00475960];EInvalidOperation
 004BE544    call        Exception.Create;EInvalidOperation.Create
 004BE549    call        @RaiseExcept
 004BE54E    push        0
 004BE550    xor         ecx,ecx
 004BE552    mov         edx,0B012
 004BE557    mov         eax,dword ptr [ebp-4]
 004BE55A    mov         eax,dword ptr [eax+10];TMemoStrings........................................................
 004BE55D    call        004CC7DC
 004BE562    xor         eax,eax
 004BE564    pop         edx
 004BE565    pop         ecx
 004BE566    pop         ecx
 004BE567    mov         dword ptr fs:[eax],edx
 004BE56A    push        4BE58F
 004BE56F    lea         eax,[ebp-14]
 004BE572    call        @LStrClr
 004BE577    lea         eax,[ebp-10]
 004BE57A    call        @LStrClr
 004BE57F    lea         eax,[ebp-0C]
 004BE582    call        @LStrClr
 004BE587    ret
>004BE588    jmp         @HandleFinally
>004BE58D    jmp         004BE56F
 004BE58F    pop         ebx
 004BE590    mov         esp,ebp
 004BE592    pop         ebp
 004BE593    ret
end;*}

//004BE594
constructor TCustomMemo.Create(AOwner:TComponent);
begin
{*
 004BE594    push        ebp
 004BE595    mov         ebp,esp
 004BE597    add         esp,0FFFFFFF4
 004BE59A    test        dl,dl
>004BE59C    je          004BE5A6
 004BE59E    add         esp,0FFFFFFF0
 004BE5A1    call        @ClassCreate
 004BE5A6    mov         dword ptr [ebp-0C],ecx
 004BE5A9    mov         byte ptr [ebp-5],dl
 004BE5AC    mov         dword ptr [ebp-4],eax
 004BE5AF    mov         ecx,dword ptr [ebp-0C]
 004BE5B2    xor         edx,edx
 004BE5B4    mov         eax,dword ptr [ebp-4]
 004BE5B7    call        TCustomEdit.Create
 004BE5BC    mov         edx,0B9
 004BE5C1    mov         eax,dword ptr [ebp-4]
 004BE5C4    call        TControl.SetWidth
 004BE5C9    mov         edx,59
 004BE5CE    mov         eax,dword ptr [ebp-4]
 004BE5D1    call        TControl.SetHeight
 004BE5D6    xor         edx,edx
 004BE5D8    mov         eax,dword ptr [ebp-4]
 004BE5DB    mov         ecx,dword ptr [eax]
 004BE5DD    call        dword ptr [ecx+5C];TLabeledEdit.SetAutoSize
 004BE5E0    mov         eax,dword ptr [ebp-4]
 004BE5E3    mov         byte ptr [eax+226],1;TCustomMemo.FWordWrap:Boolean
 004BE5EA    mov         eax,dword ptr [ebp-4]
 004BE5ED    mov         byte ptr [eax+227],1;TCustomMemo.FWantReturns:Boolean
 004BE5F4    mov         dl,1
 004BE5F6    mov         eax,[004BC40C];TMemoStrings
 004BE5FB    call        TObject.Create;TMemoStrings.Create
 004BE600    mov         edx,dword ptr [ebp-4]
 004BE603    mov         dword ptr [edx+220],eax;TCustomMemo.FLines:TStrings
 004BE609    mov         eax,dword ptr [ebp-4]
 004BE60C    mov         eax,dword ptr [eax+220];TCustomMemo.FLines:TStrings
 004BE612    mov         edx,dword ptr [ebp-4]
 004BE615    mov         dword ptr [eax+10],edx
 004BE618    xor         edx,edx
 004BE61A    mov         eax,dword ptr [ebp-4]
 004BE61D    mov         ecx,dword ptr [eax]
 004BE61F    call        dword ptr [ecx+0BC];TRadioGroup.SetParentBackground
 004BE625    mov         eax,dword ptr [ebp-4]
 004BE628    cmp         byte ptr [ebp-5],0
>004BE62C    je          004BE63D
 004BE62E    call        @AfterConstruction
 004BE633    pop         dword ptr fs:[0]
 004BE63A    add         esp,0C
 004BE63D    mov         eax,dword ptr [ebp-4]
 004BE640    mov         esp,ebp
 004BE642    pop         ebp
 004BE643    ret
*}
end;

//004BE644
destructor TCustomMemo.Destroy;
begin
{*
 004BE644    push        ebp
 004BE645    mov         ebp,esp
 004BE647    add         esp,0FFFFFFF8
 004BE64A    call        @BeforeDestruction
 004BE64F    mov         byte ptr [ebp-5],dl
 004BE652    mov         dword ptr [ebp-4],eax
 004BE655    mov         eax,dword ptr [ebp-4]
 004BE658    mov         eax,dword ptr [eax+220];TCustomMemo.FLines:TStrings
 004BE65E    call        TObject.Free
 004BE663    mov         dl,byte ptr [ebp-5]
 004BE666    and         dl,0FC
 004BE669    mov         eax,dword ptr [ebp-4]
 004BE66C    call        TWinControl.Destroy
 004BE671    cmp         byte ptr [ebp-5],0
>004BE675    jle         004BE67F
 004BE677    mov         eax,dword ptr [ebp-4]
 004BE67A    call        @ClassDestroy
 004BE67F    pop         ecx
 004BE680    pop         ecx
 004BE681    pop         ebp
 004BE682    ret
*}
end;

//004BE684
procedure TCustomMemo.CreateParams(var Params:TCreateParams);
begin
{*
 004BE684    push        ebp
 004BE685    mov         ebp,esp
 004BE687    add         esp,0FFFFFFF8
 004BE68A    push        esi
 004BE68B    mov         dword ptr [ebp-8],edx
 004BE68E    mov         dword ptr [ebp-4],eax
 004BE691    mov         edx,dword ptr [ebp-8]
 004BE694    mov         eax,dword ptr [ebp-4]
 004BE697    call        TCustomEdit.CreateParams
 004BE69C    mov         eax,dword ptr [ebp-4]
 004BE69F    mov         si,0FFC8
 004BE6A3    call        @CallDynaInst;TControl.sub_004CB93C
 004BE6A8    and         eax,7F
 004BE6AB    lea         eax,[eax+eax*2]
 004BE6AE    lea         eax,[eax*4+5415CC]
 004BE6B5    mov         edx,dword ptr [ebp-4]
 004BE6B8    movzx       edx,byte ptr [edx+224];TCustomMemo.FAlignment:TAlignment
 004BE6BF    mov         eax,dword ptr [eax+edx*4]
 004BE6C2    mov         edx,dword ptr [ebp-8]
 004BE6C5    mov         edx,dword ptr [edx+4];TCreateParams.Style:DWORD
 004BE6C8    mov         ecx,dword ptr [ebp-4]
 004BE6CB    movzx       ecx,byte ptr [ecx+226]
 004BE6D2    mov         ecx,dword ptr [ecx*4+5415F4]
 004BE6D9    not         ecx
 004BE6DB    and         edx,ecx
 004BE6DD    or          edx,4
 004BE6E0    or          eax,edx
 004BE6E2    mov         edx,dword ptr [ebp-4]
 004BE6E5    movzx       edx,byte ptr [edx+225];TCustomMemo.FScrollBars:TScrollStyle
 004BE6EC    or          eax,dword ptr [edx*4+5415E4]
 004BE6F3    mov         edx,dword ptr [ebp-8]
 004BE6F6    mov         dword ptr [edx+4],eax;TCreateParams.Style:DWORD
 004BE6F9    pop         esi
 004BE6FA    pop         ecx
 004BE6FB    pop         ecx
 004BE6FC    pop         ebp
 004BE6FD    ret
*}
end;

//004BE700
{*procedure sub_004BE700(?:?);
begin
 004BE700    push        ebp
 004BE701    mov         ebp,esp
 004BE703    add         esp,0FFFFFFF8
 004BE706    mov         dword ptr [ebp-8],edx
 004BE709    mov         dword ptr [ebp-4],eax
 004BE70C    mov         eax,[0055B70C];^gvar_0055D9C4:Integer
 004BE711    cmp         byte ptr [eax+0C],0
>004BE715    je          004BE7B9
 004BE71B    mov         eax,[0055B700];^gvar_00540934
 004BE720    cmp         dword ptr [eax],2
>004BE723    je          004BE7B9
 004BE729    mov         eax,dword ptr [ebp-8]
 004BE72C    test        byte ptr [eax+5],8
>004BE730    je          004BE7B9
 004BE736    mov         eax,dword ptr [ebp-8]
 004BE739    mov         eax,dword ptr [eax+4]
 004BE73C    and         eax,0FFFFF7FF
 004BE741    push        eax
 004BE742    mov         eax,dword ptr [ebp-8]
 004BE745    mov         eax,dword ptr [eax+0C]
 004BE748    push        eax
 004BE749    mov         eax,dword ptr [ebp-8]
 004BE74C    mov         eax,dword ptr [eax+10]
 004BE74F    push        eax
 004BE750    mov         eax,dword ptr [ebp-8]
 004BE753    mov         eax,dword ptr [eax+14]
 004BE756    push        eax
 004BE757    mov         eax,dword ptr [ebp-8]
 004BE75A    mov         eax,dword ptr [eax+18]
 004BE75D    push        eax
 004BE75E    mov         eax,dword ptr [ebp-8]
 004BE761    mov         eax,dword ptr [eax+1C]
 004BE764    push        eax
 004BE765    push        0
 004BE767    mov         eax,[0055C664];gvar_0055C664
 004BE76C    push        eax
 004BE76D    mov         eax,dword ptr [ebp-8]
 004BE770    mov         eax,dword ptr [eax+20]
 004BE773    push        eax
 004BE774    mov         ecx,4BE830
 004BE779    mov         edx,dword ptr [ebp-8]
 004BE77C    add         edx,4C
 004BE77F    mov         eax,dword ptr [ebp-8]
 004BE782    mov         eax,dword ptr [eax+8]
 004BE785    call        00408304
 004BE78A    mov         edx,dword ptr [ebp-4]
 004BE78D    mov         dword ptr [edx+180],eax;TCustomMemo.FHandle:HWND
 004BE793    mov         eax,dword ptr [ebp-4]
 004BE796    cmp         dword ptr [eax+180],0;TCustomMemo.FHandle:HWND
>004BE79D    je          004BE811
 004BE79F    push        0
 004BE7A1    push        1
 004BE7A3    push        0CF
 004BE7A8    mov         eax,dword ptr [ebp-4]
 004BE7AB    mov         eax,dword ptr [eax+180];TCustomMemo.FHandle:HWND
 004BE7B1    push        eax
 004BE7B2    call        user32.SendMessageA
>004BE7B7    jmp         004BE811
 004BE7B9    mov         eax,dword ptr [ebp-8]
 004BE7BC    mov         eax,dword ptr [eax+4]
 004BE7BF    push        eax
 004BE7C0    mov         eax,dword ptr [ebp-8]
 004BE7C3    mov         eax,dword ptr [eax+0C]
 004BE7C6    push        eax
 004BE7C7    mov         eax,dword ptr [ebp-8]
 004BE7CA    mov         eax,dword ptr [eax+10]
 004BE7CD    push        eax
 004BE7CE    mov         eax,dword ptr [ebp-8]
 004BE7D1    mov         eax,dword ptr [eax+14]
 004BE7D4    push        eax
 004BE7D5    mov         eax,dword ptr [ebp-8]
 004BE7D8    mov         eax,dword ptr [eax+18]
 004BE7DB    push        eax
 004BE7DC    mov         eax,dword ptr [ebp-8]
 004BE7DF    mov         eax,dword ptr [eax+1C]
 004BE7E2    push        eax
 004BE7E3    push        0
 004BE7E5    mov         eax,[0055C664];gvar_0055C664
 004BE7EA    push        eax
 004BE7EB    mov         eax,dword ptr [ebp-8]
 004BE7EE    mov         eax,dword ptr [eax+20]
 004BE7F1    push        eax
 004BE7F2    mov         ecx,4BE830
 004BE7F7    mov         edx,dword ptr [ebp-8]
 004BE7FA    add         edx,4C
 004BE7FD    mov         eax,dword ptr [ebp-8]
 004BE800    mov         eax,dword ptr [eax+8]
 004BE803    call        00408304
 004BE808    mov         edx,dword ptr [ebp-4]
 004BE80B    mov         dword ptr [edx+180],eax;TCustomMemo.FHandle:HWND
 004BE811    mov         eax,dword ptr [ebp-8]
 004BE814    mov         eax,dword ptr [eax]
 004BE816    push        eax
 004BE817    push        0
 004BE819    push        0C
 004BE81B    mov         eax,dword ptr [ebp-4]
 004BE81E    mov         eax,dword ptr [eax+180];TCustomMemo.FHandle:HWND
 004BE824    push        eax
 004BE825    call        user32.SendMessageA
 004BE82A    pop         ecx
 004BE82B    pop         ecx
 004BE82C    pop         ebp
 004BE82D    ret
end;*}

//004BE834
{*procedure sub_004BE834(?:?);
begin
 004BE834    push        ebp
 004BE835    mov         ebp,esp
 004BE837    add         esp,0FFFFFFF8
 004BE83A    mov         dword ptr [ebp-8],edx
 004BE83D    mov         dword ptr [ebp-4],eax
 004BE840    push        0
 004BE842    push        0
 004BE844    push        0B0
 004BE849    mov         eax,dword ptr [ebp-4]
 004BE84C    call        TWinControl.GetHandle
 004BE851    push        eax
 004BE852    call        user32.SendMessageA
 004BE857    shr         eax,10
 004BE85A    movzx       eax,ax
 004BE85D    mov         edx,dword ptr [ebp-8]
 004BE860    mov         dword ptr [edx],eax
 004BE862    push        0
 004BE864    mov         eax,dword ptr [ebp-8]
 004BE867    mov         eax,dword ptr [eax]
 004BE869    push        eax
 004BE86A    push        0C9
 004BE86F    mov         eax,dword ptr [ebp-4]
 004BE872    call        TWinControl.GetHandle
 004BE877    push        eax
 004BE878    call        user32.SendMessageA
 004BE87D    mov         edx,dword ptr [ebp-8]
 004BE880    mov         dword ptr [edx+4],eax
 004BE883    push        0
 004BE885    push        0FF
 004BE887    push        0BB
 004BE88C    mov         eax,dword ptr [ebp-4]
 004BE88F    call        TWinControl.GetHandle
 004BE894    push        eax
 004BE895    call        user32.SendMessageA
 004BE89A    mov         edx,dword ptr [ebp-8]
 004BE89D    sub         dword ptr [edx],eax
 004BE89F    pop         ecx
 004BE8A0    pop         ecx
 004BE8A1    pop         ebp
 004BE8A2    ret
end;*}

//004BE8A4
{*procedure sub_004BE8A4(?:?);
begin
 004BE8A4    push        ebp
 004BE8A5    mov         ebp,esp
 004BE8A7    add         esp,0FFFFFFF4
 004BE8AA    mov         dword ptr [ebp-8],edx
 004BE8AD    mov         dword ptr [ebp-4],eax
 004BE8B0    push        0
 004BE8B2    mov         eax,dword ptr [ebp-8]
 004BE8B5    mov         eax,dword ptr [eax+4]
 004BE8B8    push        eax
 004BE8B9    push        0BB
 004BE8BE    mov         eax,dword ptr [ebp-4]
 004BE8C1    call        TWinControl.GetHandle
 004BE8C6    push        eax
 004BE8C7    call        user32.SendMessageA
 004BE8CC    mov         edx,dword ptr [ebp-8]
 004BE8CF    add         eax,dword ptr [edx]
 004BE8D1    mov         dword ptr [ebp-0C],eax
 004BE8D4    mov         eax,dword ptr [ebp-0C]
 004BE8D7    push        eax
 004BE8D8    mov         eax,dword ptr [ebp-0C]
 004BE8DB    push        eax
 004BE8DC    push        0B1
 004BE8E1    mov         eax,dword ptr [ebp-4]
 004BE8E4    call        TWinControl.GetHandle
 004BE8E9    push        eax
 004BE8EA    call        user32.SendMessageA
 004BE8EF    mov         esp,ebp
 004BE8F1    pop         ebp
 004BE8F2    ret
end;*}

//004BE8F4
procedure TCustomMemo.sub_004BE8F4;
begin
{*
 004BE8F4    push        ebp
 004BE8F5    mov         ebp,esp
 004BE8F7    add         esp,0FFFFFFF8
 004BE8FA    mov         dword ptr [ebp-4],eax
 004BE8FD    mov         eax,dword ptr [ebp-4]
 004BE900    mov         al,byte ptr [eax+224];TCustomMemo.FAlignment:TAlignment
 004BE906    mov         byte ptr [ebp-5],al
 004BE909    mov         al,byte ptr [ebp-5]
 004BE90C    pop         ecx
 004BE90D    pop         ecx
 004BE90E    pop         ebp
 004BE90F    ret
*}
end;

//004BE910
procedure TCustomMemo.Loaded;
begin
{*
 004BE910    push        ebp
 004BE911    mov         ebp,esp
 004BE913    push        ecx
 004BE914    mov         dword ptr [ebp-4],eax
 004BE917    mov         eax,dword ptr [ebp-4]
 004BE91A    call        TControl.Loaded
 004BE91F    xor         edx,edx
 004BE921    mov         eax,dword ptr [ebp-4]
 004BE924    call        TCustomEdit.SetModified
 004BE929    pop         ecx
 004BE92A    pop         ebp
 004BE92B    ret
*}
end;

//004BE92C
procedure TMemo.SetAlignment(Value:TAlignment);
begin
{*
 004BE92C    push        ebp
 004BE92D    mov         ebp,esp
 004BE92F    add         esp,0FFFFFFF8
 004BE932    mov         byte ptr [ebp-5],dl
 004BE935    mov         dword ptr [ebp-4],eax
 004BE938    mov         eax,dword ptr [ebp-4]
 004BE93B    mov         al,byte ptr [eax+224];TMemo.FAlignment:TAlignment
 004BE941    cmp         al,byte ptr [ebp-5]
>004BE944    je          004BE95A
 004BE946    mov         al,byte ptr [ebp-5]
 004BE949    mov         edx,dword ptr [ebp-4]
 004BE94C    mov         byte ptr [edx+224],al;TMemo.FAlignment:TAlignment
 004BE952    mov         eax,dword ptr [ebp-4]
 004BE955    call        TWinControl.RecreateWnd
 004BE95A    pop         ecx
 004BE95B    pop         ecx
 004BE95C    pop         ebp
 004BE95D    ret
*}
end;

//004BE960
procedure TMemo.SetLines(Value:TStrings);
begin
{*
 004BE960    push        ebp
 004BE961    mov         ebp,esp
 004BE963    add         esp,0FFFFFFF8
 004BE966    mov         dword ptr [ebp-8],edx
 004BE969    mov         dword ptr [ebp-4],eax
 004BE96C    mov         edx,dword ptr [ebp-8]
 004BE96F    mov         eax,dword ptr [ebp-4]
 004BE972    mov         eax,dword ptr [eax+220];TMemo.FLines:TStrings
 004BE978    mov         ecx,dword ptr [eax]
 004BE97A    call        dword ptr [ecx+8];TStrings.sub_0047A184
 004BE97D    pop         ecx
 004BE97E    pop         ecx
 004BE97F    pop         ebp
 004BE980    ret
*}
end;

//004BE984
procedure TMemo.SetScrollBars(Value:TScrollStyle);
begin
{*
 004BE984    push        ebp
 004BE985    mov         ebp,esp
 004BE987    add         esp,0FFFFFFF8
 004BE98A    mov         byte ptr [ebp-5],dl
 004BE98D    mov         dword ptr [ebp-4],eax
 004BE990    mov         eax,dword ptr [ebp-4]
 004BE993    mov         al,byte ptr [eax+225];TMemo.FScrollBars:TScrollStyle
 004BE999    cmp         al,byte ptr [ebp-5]
>004BE99C    je          004BE9B2
 004BE99E    mov         al,byte ptr [ebp-5]
 004BE9A1    mov         edx,dword ptr [ebp-4]
 004BE9A4    mov         byte ptr [edx+225],al;TMemo.FScrollBars:TScrollStyle
 004BE9AA    mov         eax,dword ptr [ebp-4]
 004BE9AD    call        TWinControl.RecreateWnd
 004BE9B2    pop         ecx
 004BE9B3    pop         ecx
 004BE9B4    pop         ebp
 004BE9B5    ret
*}
end;

//004BE9B8
procedure TMemo.SetWordWrap(Value:Boolean);
begin
{*
 004BE9B8    push        ebp
 004BE9B9    mov         ebp,esp
 004BE9BB    add         esp,0FFFFFFF8
 004BE9BE    mov         byte ptr [ebp-5],dl
 004BE9C1    mov         dword ptr [ebp-4],eax
 004BE9C4    mov         al,byte ptr [ebp-5]
 004BE9C7    mov         edx,dword ptr [ebp-4]
 004BE9CA    cmp         al,byte ptr [edx+226];TMemo.FWordWrap:Boolean
>004BE9D0    je          004BE9E6
 004BE9D2    mov         al,byte ptr [ebp-5]
 004BE9D5    mov         edx,dword ptr [ebp-4]
 004BE9D8    mov         byte ptr [edx+226],al;TMemo.FWordWrap:Boolean
 004BE9DE    mov         eax,dword ptr [ebp-4]
 004BE9E1    call        TWinControl.RecreateWnd
 004BE9E6    pop         ecx
 004BE9E7    pop         ecx
 004BE9E8    pop         ebp
 004BE9E9    ret
*}
end;

//004BE9EC
{*procedure TCustomMemo.WMGetDlgCode(?:?);
begin
 004BE9EC    push        ebp
 004BE9ED    mov         ebp,esp
 004BE9EF    add         esp,0FFFFFFF8
 004BE9F2    mov         dword ptr [ebp-8],edx
 004BE9F5    mov         dword ptr [ebp-4],eax
 004BE9F8    mov         edx,dword ptr [ebp-8]
 004BE9FB    mov         eax,dword ptr [ebp-4]
 004BE9FE    mov         ecx,dword ptr [eax]
 004BEA00    call        dword ptr [ecx-10];TCustomEdit.DefaultHandler
 004BEA03    mov         eax,dword ptr [ebp-4]
 004BEA06    cmp         byte ptr [eax+228],0;TCustomMemo.FWantTabs:Boolean
>004BEA0D    je          004BEA18
 004BEA0F    mov         eax,dword ptr [ebp-8]
 004BEA12    or          dword ptr [eax+0C],2
>004BEA16    jmp         004BEA1F
 004BEA18    mov         eax,dword ptr [ebp-8]
 004BEA1B    and         dword ptr [eax+0C],0FFFFFFFD
 004BEA1F    mov         eax,dword ptr [ebp-4]
 004BEA22    cmp         byte ptr [eax+227],0;TCustomMemo.FWantReturns:Boolean
>004BEA29    jne         004BEA32
 004BEA2B    mov         eax,dword ptr [ebp-8]
 004BEA2E    and         dword ptr [eax+0C],0FFFFFFFB
 004BEA32    pop         ecx
 004BEA33    pop         ecx
 004BEA34    pop         ebp
 004BEA35    ret
end;*}

//004BEA38
{*procedure TCustomMemo.WMNCDestroy(?:?);
begin
 004BEA38    push        ebp
 004BEA39    mov         ebp,esp
 004BEA3B    add         esp,0FFFFFFF8
 004BEA3E    mov         dword ptr [ebp-8],edx
 004BEA41    mov         dword ptr [ebp-4],eax
 004BEA44    mov         edx,dword ptr [ebp-8]
 004BEA47    mov         eax,dword ptr [ebp-4]
 004BEA4A    call        TWinControl.WMNCDestroy
 004BEA4F    pop         ecx
 004BEA50    pop         ecx
 004BEA51    pop         ebp
 004BEA52    ret
end;*}

//004BEA54
procedure TCustomMemo.KeyPress(Key:Char);
begin
{*
 004BEA54    push        ebp
 004BEA55    mov         ebp,esp
 004BEA57    add         esp,0FFFFFFF8
 004BEA5A    mov         dword ptr [ebp-8],edx
 004BEA5D    mov         dword ptr [ebp-4],eax
 004BEA60    mov         edx,dword ptr [ebp-8]
 004BEA63    mov         eax,dword ptr [ebp-4]
 004BEA66    call        TWinControl.KeyPress
 004BEA6B    mov         eax,dword ptr [ebp-8]
 004BEA6E    cmp         byte ptr [eax],0D
>004BEA71    jne         004BEA85
 004BEA73    mov         eax,dword ptr [ebp-4]
 004BEA76    cmp         byte ptr [eax+227],0;TCustomMemo.FWantReturns:Boolean
>004BEA7D    jne         004BEA85
 004BEA7F    mov         eax,dword ptr [ebp-8]
 004BEA82    mov         byte ptr [eax],0
 004BEA85    pop         ecx
 004BEA86    pop         ecx
 004BEA87    pop         ebp
 004BEA88    ret
*}
end;

//004BEA8C
{*function sub_004BEA8C:?;
begin
 004BEA8C    push        ebp
 004BEA8D    mov         ebp,esp
 004BEA8F    add         esp,0FFFFFFF8
 004BEA92    mov         dword ptr [ebp-4],eax
 004BEA95    push        0
 004BEA97    push        0
 004BEA99    push        146
 004BEA9E    mov         eax,dword ptr [ebp-4]
 004BEAA1    mov         eax,dword ptr [eax+10];TCustomComboBoxStrings.....................FComboBox:TCustomCombo
 004BEAA4    call        TWinControl.GetHandle
 004BEAA9    push        eax
 004BEAAA    call        user32.SendMessageA
 004BEAAF    mov         dword ptr [ebp-8],eax
 004BEAB2    mov         eax,dword ptr [ebp-8]
 004BEAB5    pop         ecx
 004BEAB6    pop         ecx
 004BEAB7    pop         ebp
 004BEAB8    ret
end;*}

//004BEABC
{*function sub_004BEABC(?:?):?;
begin
 004BEABC    push        ebp
 004BEABD    mov         ebp,esp
 004BEABF    add         esp,0FFFFFFF0
 004BEAC2    xor         ecx,ecx
 004BEAC4    mov         dword ptr [ebp-10],ecx
 004BEAC7    mov         dword ptr [ebp-8],edx
 004BEACA    mov         dword ptr [ebp-4],eax
 004BEACD    xor         eax,eax
 004BEACF    push        ebp
 004BEAD0    push        4BEB31
 004BEAD5    push        dword ptr fs:[eax]
 004BEAD8    mov         dword ptr fs:[eax],esp
 004BEADB    push        0
 004BEADD    mov         eax,dword ptr [ebp-8]
 004BEAE0    push        eax
 004BEAE1    push        150
 004BEAE6    mov         eax,dword ptr [ebp-4]
 004BEAE9    mov         eax,dword ptr [eax+10];TCustomComboBoxStrings......................FComboBox:TCustomComb...
 004BEAEC    call        TWinControl.GetHandle
 004BEAF1    push        eax
 004BEAF2    call        user32.SendMessageA
 004BEAF7    mov         dword ptr [ebp-0C],eax
 004BEAFA    cmp         dword ptr [ebp-0C],0FFFFFFFF
>004BEAFE    jne         004BEB1B
 004BEB00    lea         edx,[ebp-10]
 004BEB03    mov         eax,[0055B590];^SListIndexError:TResStringRec
 004BEB08    call        LoadResString
 004BEB0D    mov         edx,dword ptr [ebp-10]
 004BEB10    mov         ecx,dword ptr [ebp-8]
 004BEB13    mov         eax,dword ptr [ebp-4]
 004BEB16    call        0047A3D8
 004BEB1B    xor         eax,eax
 004BEB1D    pop         edx
 004BEB1E    pop         ecx
 004BEB1F    pop         ecx
 004BEB20    mov         dword ptr fs:[eax],edx
 004BEB23    push        4BEB38
 004BEB28    lea         eax,[ebp-10]
 004BEB2B    call        @LStrClr
 004BEB30    ret
>004BEB31    jmp         @HandleFinally
>004BEB36    jmp         004BEB28
 004BEB38    mov         eax,dword ptr [ebp-0C]
 004BEB3B    mov         esp,ebp
 004BEB3D    pop         ebp
 004BEB3E    ret
end;*}

//004BEB40
{*procedure sub_004BEB40(?:?; ?:?);
begin
 004BEB40    push        ebp
 004BEB41    mov         ebp,esp
 004BEB43    add         esp,0FFFFFFF4
 004BEB46    mov         dword ptr [ebp-0C],ecx
 004BEB49    mov         dword ptr [ebp-8],edx
 004BEB4C    mov         dword ptr [ebp-4],eax
 004BEB4F    mov         eax,dword ptr [ebp-0C]
 004BEB52    push        eax
 004BEB53    mov         eax,dword ptr [ebp-8]
 004BEB56    push        eax
 004BEB57    push        151
 004BEB5C    mov         eax,dword ptr [ebp-4]
 004BEB5F    mov         eax,dword ptr [eax+10];TCustomComboBoxStrings.......................FComboBox:TCustomCom...
 004BEB62    call        TWinControl.GetHandle
 004BEB67    push        eax
 004BEB68    call        user32.SendMessageA
 004BEB6D    mov         esp,ebp
 004BEB6F    pop         ebp
 004BEB70    ret
end;*}

//004BEB74
{*procedure sub_004BEB74(?:?; ?:?);
begin
 004BEB74    push        ebp
 004BEB75    mov         ebp,esp
 004BEB77    add         esp,0FFFFFFF0
 004BEB7A    mov         dword ptr [ebp-0C],ecx
 004BEB7D    mov         dword ptr [ebp-8],edx
 004BEB80    mov         dword ptr [ebp-4],eax
 004BEB83    push        0
 004BEB85    mov         eax,dword ptr [ebp-8]
 004BEB88    push        eax
 004BEB89    push        149
 004BEB8E    mov         eax,dword ptr [ebp-4]
 004BEB91    mov         eax,dword ptr [eax+10];TCustomComboBoxStrings........................FComboBox:TCustomCo...
 004BEB94    call        TWinControl.GetHandle
 004BEB99    push        eax
 004BEB9A    call        user32.SendMessageA
 004BEB9F    mov         dword ptr [ebp-10],eax
 004BEBA2    cmp         dword ptr [ebp-10],0FFFFFFFF
>004BEBA6    je          004BEBDA
 004BEBA8    mov         eax,dword ptr [ebp-0C]
 004BEBAB    mov         edx,dword ptr [ebp-10]
 004BEBAE    call        @LStrSetLength
 004BEBB3    mov         eax,dword ptr [ebp-0C]
 004BEBB6    mov         eax,dword ptr [eax]
 004BEBB8    call        @LStrToPChar
 004BEBBD    push        eax
 004BEBBE    mov         eax,dword ptr [ebp-8]
 004BEBC1    push        eax
 004BEBC2    push        148
 004BEBC7    mov         eax,dword ptr [ebp-4]
 004BEBCA    mov         eax,dword ptr [eax+10];TCustomComboBoxStrings.........................FComboBox:TCustomC...
 004BEBCD    call        TWinControl.GetHandle
 004BEBD2    push        eax
 004BEBD3    call        user32.SendMessageA
>004BEBD8    jmp         004BEBE4
 004BEBDA    mov         eax,dword ptr [ebp-0C]
 004BEBDD    xor         edx,edx
 004BEBDF    call        @LStrSetLength
 004BEBE4    mov         esp,ebp
 004BEBE6    pop         ebp
 004BEBE7    ret
end;*}

//004BEBE8
procedure TCustomComboBoxStrings.Clear;
begin
{*
 004BEBE8    push        ebp
 004BEBE9    mov         ebp,esp
 004BEBEB    add         esp,0FFFFFFF8
 004BEBEE    xor         edx,edx
 004BEBF0    mov         dword ptr [ebp-8],edx
 004BEBF3    mov         dword ptr [ebp-4],eax
 004BEBF6    xor         eax,eax
 004BEBF8    push        ebp
 004BEBF9    push        4BEC5E
 004BEBFE    push        dword ptr fs:[eax]
 004BEC01    mov         dword ptr fs:[eax],esp
 004BEC04    lea         edx,[ebp-8]
 004BEC07    mov         eax,dword ptr [ebp-4]
 004BEC0A    mov         eax,dword ptr [eax+10];TCustomComboBoxStrings..........................FComboBox:TCustom...
 004BEC0D    call        TControl.GetText
 004BEC12    push        0
 004BEC14    push        0
 004BEC16    push        14B
 004BEC1B    mov         eax,dword ptr [ebp-4]
 004BEC1E    mov         eax,dword ptr [eax+10];TCustomComboBoxStrings...........................FComboBox:TCusto...
 004BEC21    call        TWinControl.GetHandle
 004BEC26    push        eax
 004BEC27    call        user32.SendMessageA
 004BEC2C    mov         edx,dword ptr [ebp-8]
 004BEC2F    mov         eax,dword ptr [ebp-4]
 004BEC32    mov         eax,dword ptr [eax+10];TCustomComboBoxStrings............................FComboBox:TCust...
 004BEC35    call        TControl.SetText
 004BEC3A    mov         eax,dword ptr [ebp-4]
 004BEC3D    mov         eax,dword ptr [eax+10];TCustomComboBoxStrings.............................FComboBox:TCus...
 004BEC40    mov         edx,dword ptr [eax]
 004BEC42    call        dword ptr [edx+88];TCustomCombo.sub_004D3720
 004BEC48    xor         eax,eax
 004BEC4A    pop         edx
 004BEC4B    pop         ecx
 004BEC4C    pop         ecx
 004BEC4D    mov         dword ptr fs:[eax],edx
 004BEC50    push        4BEC65
 004BEC55    lea         eax,[ebp-8]
 004BEC58    call        @LStrClr
 004BEC5D    ret
>004BEC5E    jmp         @HandleFinally
>004BEC63    jmp         004BEC55
 004BEC65    pop         ecx
 004BEC66    pop         ecx
 004BEC67    pop         ebp
 004BEC68    ret
*}
end;

//004BEC6C
{*procedure sub_004BEC6C(?:?);
begin
 004BEC6C    push        ebp
 004BEC6D    mov         ebp,esp
 004BEC6F    add         esp,0FFFFFFF8
 004BEC72    mov         dword ptr [ebp-8],edx
 004BEC75    mov         dword ptr [ebp-4],eax
 004BEC78    push        0
 004BEC7A    mov         eax,dword ptr [ebp-8]
 004BEC7D    push        eax
 004BEC7E    push        144
 004BEC83    mov         eax,dword ptr [ebp-4]
 004BEC86    mov         eax,dword ptr [eax+10];TCustomComboBoxStrings..............................FComboBox:TCu...
 004BEC89    call        TWinControl.GetHandle
 004BEC8E    push        eax
 004BEC8F    call        user32.SendMessageA
 004BEC94    pop         ecx
 004BEC95    pop         ecx
 004BEC96    pop         ebp
 004BEC97    ret
end;*}

//004BEC98
{*function sub_004BEC98(?:?):?;
begin
 004BEC98    push        ebp
 004BEC99    mov         ebp,esp
 004BEC9B    add         esp,0FFFFFFF4
 004BEC9E    mov         dword ptr [ebp-8],edx
 004BECA1    mov         dword ptr [ebp-4],eax
 004BECA4    mov         eax,dword ptr [ebp-8]
 004BECA7    call        @LStrToPChar
 004BECAC    push        eax
 004BECAD    push        0FF
 004BECAF    push        158
 004BECB4    mov         eax,dword ptr [ebp-4]
 004BECB7    mov         eax,dword ptr [eax+10];TCustomComboBoxStrings...............................FComboBox:TC...
 004BECBA    call        TWinControl.GetHandle
 004BECBF    push        eax
 004BECC0    call        user32.SendMessageA
 004BECC5    mov         dword ptr [ebp-0C],eax
 004BECC8    mov         eax,dword ptr [ebp-0C]
 004BECCB    mov         esp,ebp
 004BECCD    pop         ebp
 004BECCE    ret
end;*}

//004BECD0
{*procedure sub_004BECD0(?:?);
begin
 004BECD0    push        ebp
 004BECD1    mov         ebp,esp
 004BECD3    add         esp,0FFFFFFF8
 004BECD6    mov         byte ptr [ebp-5],dl
 004BECD9    mov         dword ptr [ebp-4],eax
 004BECDC    push        0
 004BECDE    mov         al,byte ptr [ebp-5]
 004BECE1    xor         al,1
 004BECE3    and         eax,7F
 004BECE6    push        eax
 004BECE7    push        0B
 004BECE9    mov         eax,dword ptr [ebp-4]
 004BECEC    mov         eax,dword ptr [eax+10];TCustomComboBoxStrings................................FComboBox:T...
 004BECEF    call        TWinControl.GetHandle
 004BECF4    push        eax
 004BECF5    call        user32.SendMessageA
 004BECFA    cmp         byte ptr [ebp-5],0
>004BECFE    jne         004BED0B
 004BED00    mov         eax,dword ptr [ebp-4]
 004BED03    mov         eax,dword ptr [eax+10];TCustomComboBoxStrings.................................FComboBox:...
 004BED06    call        TControl.Refresh
 004BED0B    pop         ecx
 004BED0C    pop         ecx
 004BED0D    pop         ebp
 004BED0E    ret
end;*}

//004BED10
constructor TCustomCombo.Create(AOwner:TComponent);
begin
{*
 004BED10    push        ebp
 004BED11    mov         ebp,esp
 004BED13    add         esp,0FFFFFFF4
 004BED16    test        dl,dl
>004BED18    je          004BED22
 004BED1A    add         esp,0FFFFFFF0
 004BED1D    call        @ClassCreate
 004BED22    mov         dword ptr [ebp-0C],ecx
 004BED25    mov         byte ptr [ebp-5],dl
 004BED28    mov         dword ptr [ebp-4],eax
 004BED2B    mov         ecx,dword ptr [ebp-0C]
 004BED2E    xor         edx,edx
 004BED30    mov         eax,dword ptr [ebp-4]
 004BED33    call        TWinControl.Create
 004BED38    mov         eax,[0055B36C];^NewStyleControls:Boolean
 004BED3D    cmp         byte ptr [eax],0
>004BED40    je          004BED50
 004BED42    mov         eax,dword ptr [ebp-4]
 004BED45    mov         edx,dword ptr ds:[4BEE34];0x42A2 gvar_004BEE34
 004BED4B    mov         dword ptr [eax+50],edx;TCustomCombo.FControlStyle:TControlStyle
>004BED4E    jmp         004BED5C
 004BED50    mov         eax,dword ptr [ebp-4]
 004BED53    mov         edx,dword ptr ds:[4BEE38];0x42B2 gvar_004BEE38
 004BED59    mov         dword ptr [eax+50],edx;TCustomCombo.FControlStyle:TControlStyle
 004BED5C    mov         edx,91
 004BED61    mov         eax,dword ptr [ebp-4]
 004BED64    call        TControl.SetWidth
 004BED69    mov         edx,19
 004BED6E    mov         eax,dword ptr [ebp-4]
 004BED71    call        TControl.SetHeight
 004BED76    mov         dl,1
 004BED78    mov         eax,dword ptr [ebp-4]
 004BED7B    call        TPanel.SetTabStop
 004BED80    xor         edx,edx
 004BED82    mov         eax,dword ptr [ebp-4]
 004BED85    call        TPanel.SetParentColor
 004BED8A    mov         dl,1
 004BED8C    mov         eax,[004C4BA4];TControlCanvas
 004BED91    call        TControlCanvas.Create;TControlCanvas.Create
 004BED96    mov         edx,dword ptr [ebp-4]
 004BED99    mov         dword ptr [edx+208],eax;TCustomCombo.FCanvas:TCanvas
 004BED9F    mov         eax,dword ptr [ebp-4]
 004BEDA2    mov         eax,dword ptr [eax+208];TCustomCombo.FCanvas:TCanvas
 004BEDA8    mov         edx,dword ptr [ebp-4]
 004BEDAB    call        004C931C
 004BEDB0    mov         eax,dword ptr [ebp-4]
 004BEDB3    mov         dword ptr [eax+238],10;TCustomCombo.FItemHeight:Integer
 004BEDBD    mov         eax,dword ptr [ebp-4]
 004BEDC0    push        eax
 004BEDC1    push        4BF198
 004BEDC6    call        00484700
 004BEDCB    mov         edx,dword ptr [ebp-4]
 004BEDCE    mov         dword ptr [edx+24C],eax;TCustomCombo.FEditInstance:Pointer
 004BEDD4    mov         eax,dword ptr [ebp-4]
 004BEDD7    push        eax
 004BEDD8    push        4BF2B8
 004BEDDD    call        00484700
 004BEDE2    mov         edx,dword ptr [ebp-4]
 004BEDE5    mov         dword ptr [edx+254],eax;TCustomCombo.FListInstance:Pointer
 004BEDEB    mov         eax,dword ptr [ebp-4]
 004BEDEE    mov         dword ptr [eax+210],8;TCustomCombo.FDropDownCount:Integer
 004BEDF8    mov         eax,dword ptr [ebp-4]
 004BEDFB    mov         dword ptr [eax+214],0FFFFFFFF;TCustomCombo.FItemIndex:Integer
 004BEE05    mov         eax,dword ptr [ebp-4]
 004BEE08    mov         dword ptr [eax+260],0FFFFFFFF;TCustomCombo.FSaveIndex:Integer
 004BEE12    mov         eax,dword ptr [ebp-4]
 004BEE15    cmp         byte ptr [ebp-5],0
>004BEE19    je          004BEE2A
 004BEE1B    call        @AfterConstruction
 004BEE20    pop         dword ptr fs:[0]
 004BEE27    add         esp,0C
 004BEE2A    mov         eax,dword ptr [ebp-4]
 004BEE2D    mov         esp,ebp
 004BEE2F    pop         ebp
 004BEE30    ret
*}
end;

//004BEE3C
destructor TCustomCombo.Destroy;
begin
{*
 004BEE3C    push        ebp
 004BEE3D    mov         ebp,esp
 004BEE3F    add         esp,0FFFFFFF8
 004BEE42    call        @BeforeDestruction
 004BEE47    mov         byte ptr [ebp-5],dl
 004BEE4A    mov         dword ptr [ebp-4],eax
 004BEE4D    mov         eax,dword ptr [ebp-4]
 004BEE50    call        TWinControl.HandleAllocated
 004BEE55    test        al,al
>004BEE57    je          004BEE64
 004BEE59    mov         eax,dword ptr [ebp-4]
 004BEE5C    mov         edx,dword ptr [eax]
 004BEE5E    call        dword ptr [edx+0AC];TCustomCombo.DestroyWindowHandle
 004BEE64    mov         eax,dword ptr [ebp-4]
 004BEE67    mov         eax,dword ptr [eax+254];TCustomCombo.FListInstance:Pointer
 004BEE6D    call        004E7D10
 004BEE72    mov         eax,dword ptr [ebp-4]
 004BEE75    mov         eax,dword ptr [eax+24C];TCustomCombo.FEditInstance:Pointer
 004BEE7B    call        004E7D10
 004BEE80    mov         eax,dword ptr [ebp-4]
 004BEE83    mov         eax,dword ptr [eax+208];TCustomCombo.FCanvas:TCanvas
 004BEE89    call        TObject.Free
 004BEE8E    mov         dl,byte ptr [ebp-5]
 004BEE91    and         dl,0FC
 004BEE94    mov         eax,dword ptr [ebp-4]
 004BEE97    call        TWinControl.Destroy
 004BEE9C    cmp         byte ptr [ebp-5],0
>004BEEA0    jle         004BEEAA
 004BEEA2    mov         eax,dword ptr [ebp-4]
 004BEEA5    call        @ClassDestroy
 004BEEAA    pop         ecx
 004BEEAB    pop         ecx
 004BEEAC    pop         ebp
 004BEEAD    ret
*}
end;

//004BEEB0
procedure TCustomCombo.Clear;
begin
{*
 004BEEB0    push        ebp
 004BEEB1    mov         ebp,esp
 004BEEB3    push        ecx
 004BEEB4    mov         dword ptr [ebp-4],eax
 004BEEB7    mov         edx,4BEEE4;'
 004BEEBC    mov         eax,dword ptr [ebp-4]
 004BEEBF    call        004CAF68
 004BEEC4    mov         eax,dword ptr [ebp-4]
 004BEEC7    mov         eax,dword ptr [eax+23C];TCustomCombo.FItems:TStrings
 004BEECD    mov         edx,dword ptr [eax]
 004BEECF    call        dword ptr [edx+44];TStrings.Clear
 004BEED2    mov         eax,dword ptr [ebp-4]
 004BEED5    mov         dword ptr [eax+260],0FFFFFFFF;TCustomCombo.FSaveIndex:Integer
 004BEEDF    pop         ecx
 004BEEE0    pop         ebp
 004BEEE1    ret
*}
end;

//004BEEE8
procedure TCustomCombo.DestroyWindowHandle;
begin
{*
 004BEEE8    push        ebp
 004BEEE9    mov         ebp,esp
 004BEEEB    push        ecx
 004BEEEC    mov         dword ptr [ebp-4],eax
 004BEEEF    mov         eax,dword ptr [ebp-4]
 004BEEF2    call        TWinControl.DestroyWindowHandle
 004BEEF7    mov         eax,dword ptr [ebp-4]
 004BEEFA    xor         edx,edx
 004BEEFC    mov         dword ptr [eax+240],edx;TCustomCombo.FEditHandle:HWND
 004BEF02    mov         eax,dword ptr [ebp-4]
 004BEF05    xor         edx,edx
 004BEF07    mov         dword ptr [eax+244],edx;TCustomCombo.FListHandle:HWND
 004BEF0D    mov         eax,dword ptr [ebp-4]
 004BEF10    xor         edx,edx
 004BEF12    mov         dword ptr [eax+248],edx;TCustomCombo.FDropHandle:HWND
 004BEF18    pop         ecx
 004BEF19    pop         ebp
 004BEF1A    ret
*}
end;

//004BEF1C
procedure sub_004BEF1C;
begin
{*
 004BEF1C    push        ebp
 004BEF1D    mov         ebp,esp
 004BEF1F    push        ecx
 004BEF20    mov         dword ptr [ebp-4],eax
 004BEF23    push        0FFFF0000
 004BEF28    push        0
 004BEF2A    push        142
 004BEF2F    mov         eax,dword ptr [ebp-4]
 004BEF32    call        TWinControl.GetHandle
 004BEF37    push        eax
 004BEF38    call        user32.SendMessageA
 004BEF3D    pop         ecx
 004BEF3E    pop         ebp
 004BEF3F    ret
*}
end;

//004BEF40
{*function sub_004BEF40(?:TCustomCombo):?;
begin
 004BEF40    push        ebp
 004BEF41    mov         ebp,esp
 004BEF43    add         esp,0FFFFFFF8
 004BEF46    mov         dword ptr [ebp-4],eax
 004BEF49    push        0
 004BEF4B    push        0
 004BEF4D    push        157
 004BEF52    mov         eax,dword ptr [ebp-4]
 004BEF55    call        TWinControl.GetHandle
 004BEF5A    push        eax
 004BEF5B    call        user32.SendMessageA
 004BEF60    cmp         eax,1
 004BEF63    sbb         eax,eax
 004BEF65    inc         eax
 004BEF66    mov         byte ptr [ebp-5],al
 004BEF69    mov         al,byte ptr [ebp-5]
 004BEF6C    pop         ecx
 004BEF6D    pop         ecx
 004BEF6E    pop         ebp
 004BEF6F    ret
end;*}

//004BEF70
{*procedure sub_004BEF70(?:TCustomCombo; ?:?);
begin
 004BEF70    push        ebp
 004BEF71    mov         ebp,esp
 004BEF73    add         esp,0FFFFFFE8
 004BEF76    mov         byte ptr [ebp-5],dl
 004BEF79    mov         dword ptr [ebp-4],eax
 004BEF7C    push        0
 004BEF7E    xor         eax,eax
 004BEF80    mov         al,byte ptr [ebp-5]
 004BEF83    push        eax
 004BEF84    push        14F
 004BEF89    mov         eax,dword ptr [ebp-4]
 004BEF8C    call        TWinControl.GetHandle
 004BEF91    push        eax
 004BEF92    call        user32.SendMessageA
 004BEF97    lea         edx,[ebp-15]
 004BEF9A    mov         eax,dword ptr [ebp-4]
 004BEF9D    mov         ecx,dword ptr [eax]
 004BEF9F    call        dword ptr [ecx+44]
 004BEFA2    push        0FF
 004BEFA4    lea         eax,[ebp-15]
 004BEFA7    push        eax
 004BEFA8    mov         eax,dword ptr [ebp-4]
 004BEFAB    call        TWinControl.GetHandle
 004BEFB0    push        eax
 004BEFB1    call        user32.InvalidateRect
 004BEFB6    mov         esp,ebp
 004BEFB8    pop         ebp
 004BEFB9    ret
end;*}

//004BEFBC
{*function sub_004BEFBC:?;
begin
 004BEFBC    push        ebp
 004BEFBD    mov         ebp,esp
 004BEFBF    add         esp,0FFFFFFF8
 004BEFC2    mov         dword ptr [ebp-4],eax
 004BEFC5    mov         eax,dword ptr [ebp-4]
 004BEFC8    test        byte ptr [eax+1C],1;TCustomCombo.FComponentState:TComponentState
>004BEFCC    je          004BEFDC
 004BEFCE    mov         eax,dword ptr [ebp-4]
 004BEFD1    mov         eax,dword ptr [eax+214];TCustomCombo.FItemIndex:Integer
 004BEFD7    mov         dword ptr [ebp-8],eax
>004BEFDA    jmp         004BEFF6
 004BEFDC    push        0
 004BEFDE    push        0
 004BEFE0    push        147
 004BEFE5    mov         eax,dword ptr [ebp-4]
 004BEFE8    call        TWinControl.GetHandle
 004BEFED    push        eax
 004BEFEE    call        user32.SendMessageA
 004BEFF3    mov         dword ptr [ebp-8],eax
 004BEFF6    mov         eax,dword ptr [ebp-8]
 004BEFF9    pop         ecx
 004BEFFA    pop         ecx
 004BEFFB    pop         ebp
 004BEFFC    ret
end;*}

//004BF000
{*procedure sub_004BF000(?:?);
begin
 004BF000    push        ebp
 004BF001    mov         ebp,esp
 004BF003    add         esp,0FFFFFFF8
 004BF006    mov         dword ptr [ebp-8],edx
 004BF009    mov         dword ptr [ebp-4],eax
 004BF00C    mov         eax,dword ptr [ebp-4]
 004BF00F    test        byte ptr [eax+1C],1;TCustomCombo.FComponentState:TComponentState
>004BF013    je          004BF023
 004BF015    mov         eax,dword ptr [ebp-8]
 004BF018    mov         edx,dword ptr [ebp-4]
 004BF01B    mov         dword ptr [edx+214],eax;TCustomCombo.FItemIndex:Integer
>004BF021    jmp         004BF04C
 004BF023    mov         eax,dword ptr [ebp-4]
 004BF026    mov         edx,dword ptr [eax]
 004BF028    call        dword ptr [edx+0CC];TCustomCombo.sub_004BEFBC
 004BF02E    cmp         eax,dword ptr [ebp-8]
>004BF031    je          004BF04C
 004BF033    push        0
 004BF035    mov         eax,dword ptr [ebp-8]
 004BF038    push        eax
 004BF039    push        14E
 004BF03E    mov         eax,dword ptr [ebp-4]
 004BF041    call        TWinControl.GetHandle
 004BF046    push        eax
 004BF047    call        user32.SendMessageA
 004BF04C    pop         ecx
 004BF04D    pop         ecx
 004BF04E    pop         ebp
 004BF04F    ret
end;*}

//004BF050
{*procedure sub_004BF050(?:?);
begin
 004BF050    push        ebp
 004BF051    mov         ebp,esp
 004BF053    add         esp,0FFFFFFF8
 004BF056    mov         dword ptr [ebp-8],edx
 004BF059    mov         dword ptr [ebp-4],eax
 004BF05C    cmp         dword ptr [ebp-8],0
>004BF060    jle         004BF076
 004BF062    mov         eax,dword ptr [ebp-8]
 004BF065    mov         edx,dword ptr [ebp-4]
 004BF068    mov         dword ptr [edx+238],eax;TCustomCombo.FItemHeight:Integer
 004BF06E    mov         eax,dword ptr [ebp-4]
 004BF071    call        TWinControl.RecreateWnd
 004BF076    pop         ecx
 004BF077    pop         ecx
 004BF078    pop         ebp
 004BF079    ret
end;*}

//004BF07C
{*procedure TCustomCombo.WMCreate(?:?);
begin
 004BF07C    push        ebp
 004BF07D    mov         ebp,esp
 004BF07F    add         esp,0FFFFFFF8
 004BF082    mov         dword ptr [ebp-8],edx
 004BF085    mov         dword ptr [ebp-4],eax
 004BF088    mov         edx,dword ptr [ebp-8]
 004BF08B    mov         eax,dword ptr [ebp-4]
 004BF08E    mov         ecx,dword ptr [eax]
 004BF090    call        dword ptr [ecx-10];TCustomCombo.DefaultHandler
 004BF093    mov         eax,dword ptr [ebp-4]
 004BF096    cmp         dword ptr [eax+64],0;TCustomCombo.FText:PChar
>004BF09A    je          004BF0B1
 004BF09C    mov         eax,dword ptr [ebp-4]
 004BF09F    mov         eax,dword ptr [eax+64];TCustomCombo.FText:PChar
 004BF0A2    push        eax
 004BF0A3    mov         eax,dword ptr [ebp-4]
 004BF0A6    call        TWinControl.GetHandle
 004BF0AB    push        eax
 004BF0AC    call        user32.SetWindowTextA
 004BF0B1    pop         ecx
 004BF0B2    pop         ecx
 004BF0B3    pop         ebp
 004BF0B4    ret
end;*}

//004BF0B8
{*procedure TCustomCombo.WMDrawItem(?:?);
begin
 004BF0B8    push        ebp
 004BF0B9    mov         ebp,esp
 004BF0BB    add         esp,0FFFFFFF8
 004BF0BE    mov         dword ptr [ebp-8],edx
 004BF0C1    mov         dword ptr [ebp-4],eax
 004BF0C4    mov         edx,dword ptr [ebp-8]
 004BF0C7    mov         eax,dword ptr [ebp-4]
 004BF0CA    mov         ecx,dword ptr [eax]
 004BF0CC    call        dword ptr [ecx-10];TCustomCombo.DefaultHandler
 004BF0CF    pop         ecx
 004BF0D0    pop         ecx
 004BF0D1    pop         ebp
 004BF0D2    ret
end;*}

//004BF0D4
{*procedure TCustomCombo.WMMeasureItem(?:?);
begin
 004BF0D4    push        ebp
 004BF0D5    mov         ebp,esp
 004BF0D7    add         esp,0FFFFFFF8
 004BF0DA    mov         dword ptr [ebp-8],edx
 004BF0DD    mov         dword ptr [ebp-4],eax
 004BF0E0    mov         edx,dword ptr [ebp-8]
 004BF0E3    mov         eax,dword ptr [ebp-4]
 004BF0E6    mov         ecx,dword ptr [eax]
 004BF0E8    call        dword ptr [ecx-10];TCustomCombo.DefaultHandler
 004BF0EB    pop         ecx
 004BF0EC    pop         ecx
 004BF0ED    pop         ebp
 004BF0EE    ret
end;*}

//004BF0F0
{*procedure TCustomCombo.WMDeleteItem(?:?);
begin
 004BF0F0    push        ebp
 004BF0F1    mov         ebp,esp
 004BF0F3    add         esp,0FFFFFFF8
 004BF0F6    mov         dword ptr [ebp-8],edx
 004BF0F9    mov         dword ptr [ebp-4],eax
 004BF0FC    mov         edx,dword ptr [ebp-8]
 004BF0FF    mov         eax,dword ptr [ebp-4]
 004BF102    mov         ecx,dword ptr [eax]
 004BF104    call        dword ptr [ecx-10];TCustomCombo.DefaultHandler
 004BF107    pop         ecx
 004BF108    pop         ecx
 004BF109    pop         ebp
 004BF10A    ret
end;*}

//004BF10C
{*procedure TCustomCombo.WMGetDlgCode(?:?);
begin
 004BF10C    push        ebp
 004BF10D    mov         ebp,esp
 004BF10F    add         esp,0FFFFFFF8
 004BF112    mov         dword ptr [ebp-8],edx
 004BF115    mov         dword ptr [ebp-4],eax
 004BF118    mov         edx,dword ptr [ebp-8]
 004BF11B    mov         eax,dword ptr [ebp-4]
 004BF11E    mov         ecx,dword ptr [eax]
 004BF120    call        dword ptr [ecx-10];TCustomCombo.DefaultHandler
 004BF123    mov         eax,dword ptr [ebp-4]
 004BF126    call        004BEF40
 004BF12B    test        al,al
>004BF12D    je          004BF136
 004BF12F    mov         eax,dword ptr [ebp-8]
 004BF132    or          dword ptr [eax+0C],4
 004BF136    pop         ecx
 004BF137    pop         ecx
 004BF138    pop         ebp
 004BF139    ret
end;*}

//004BF13C
{*procedure TCustomCombo.CMCancelMode(?:?);
begin
 004BF13C    push        ebp
 004BF13D    mov         ebp,esp
 004BF13F    add         esp,0FFFFFFF8
 004BF142    mov         dword ptr [ebp-8],edx
 004BF145    mov         dword ptr [ebp-4],eax
 004BF148    mov         eax,dword ptr [ebp-8]
 004BF14B    mov         eax,dword ptr [eax+8]
 004BF14E    cmp         eax,dword ptr [ebp-4]
>004BF151    je          004BF164
 004BF153    push        0
 004BF155    xor         ecx,ecx
 004BF157    mov         edx,14F
 004BF15C    mov         eax,dword ptr [ebp-4]
 004BF15F    call        004CC7DC
 004BF164    pop         ecx
 004BF165    pop         ecx
 004BF166    pop         ebp
 004BF167    ret
end;*}

//004BF168
{*procedure TCustomCombo.CMCtl3DChanged(?:?);
begin
 004BF168    push        ebp
 004BF169    mov         ebp,esp
 004BF16B    add         esp,0FFFFFFF8
 004BF16E    mov         dword ptr [ebp-8],edx
 004BF171    mov         dword ptr [ebp-4],eax
 004BF174    mov         eax,[0055B36C];^NewStyleControls:Boolean
 004BF179    cmp         byte ptr [eax],0
>004BF17C    je          004BF186
 004BF17E    mov         eax,dword ptr [ebp-4]
 004BF181    call        TWinControl.RecreateWnd
 004BF186    mov         edx,dword ptr [ebp-8]
 004BF189    mov         eax,dword ptr [ebp-4]
 004BF18C    call        TWinControl.CMCtl3DChanged
 004BF191    pop         ecx
 004BF192    pop         ecx
 004BF193    pop         ebp
 004BF194    ret
end;*}

//004BF2EC
{*procedure sub_004BF2EC(?:?; ?:?; ?:?);
begin
 004BF2EC    push        ebp
 004BF2ED    mov         ebp,esp
 004BF2EF    add         esp,0FFFFFFE8
 004BF2F2    push        ebx
 004BF2F3    push        esi
 004BF2F4    push        edi
 004BF2F5    mov         dword ptr [ebp-0C],ecx
 004BF2F8    mov         dword ptr [ebp-8],edx
 004BF2FB    mov         dword ptr [ebp-4],eax
 004BF2FE    xor         eax,eax
 004BF300    push        ebp
 004BF301    push        4BF5E0
 004BF306    push        dword ptr fs:[eax]
 004BF309    mov         dword ptr fs:[eax],esp
 004BF30C    mov         eax,dword ptr [ebp-8]
 004BF30F    mov         eax,dword ptr [eax]
 004BF311    cmp         eax,104
>004BF316    jg          004BF367
>004BF318    je          004BF40C
 004BF31E    cmp         eax,87
>004BF323    jg          004BF349
>004BF325    je          004BF53A
 004BF32B    sub         eax,7
>004BF32E    je          004BF3BA
 004BF334    dec         eax
>004BF335    je          004BF3F2
 004BF33B    sub         eax,7C
>004BF33E    je          004BF55D
>004BF344    jmp         004BF58F
 004BF349    sub         eax,100
>004BF34E    je          004BF40C
 004BF354    dec         eax
>004BF355    je          004BF499
 004BF35B    dec         eax
>004BF35C    je          004BF43E
>004BF362    jmp         004BF58F
 004BF367    cmp         eax,0BD00
>004BF36C    jg          004BF398
>004BF36E    je          004BF57A
 004BF374    sub         eax,105
>004BF379    je          004BF499
 004BF37F    sub         eax,0FB
>004BF384    je          004BF4B9
 004BF38A    sub         eax,5
>004BF38D    je          004BF4D0
>004BF393    jmp         004BF58F
 004BF398    sub         eax,0BD02
>004BF39D    je          004BF57A
 004BF3A3    sub         eax,2
>004BF3A6    je          004BF57A
 004BF3AC    sub         eax,2
>004BF3AF    je          004BF57A
>004BF3B5    jmp         004BF58F
 004BF3BA    mov         eax,dword ptr [ebp-4]
 004BF3BD    call        004E7ED8
 004BF3C2    mov         dword ptr [ebp-18],eax
 004BF3C5    cmp         dword ptr [ebp-18],0
>004BF3C9    je          004BF58F
 004BF3CF    mov         edx,dword ptr [ebp-4]
 004BF3D2    mov         eax,dword ptr [ebp-18]
 004BF3D5    mov         ecx,dword ptr [eax]
 004BF3D7    call        dword ptr [ecx+0E8]
 004BF3DD    test        al,al
>004BF3DF    jne         004BF58F
 004BF3E5    xor         eax,eax
 004BF3E7    pop         edx
 004BF3E8    pop         ecx
 004BF3E9    pop         ecx
 004BF3EA    mov         dword ptr fs:[eax],edx
>004BF3ED    jmp         004BF5F9
 004BF3F2    mov         eax,dword ptr [ebp-4]
 004BF3F5    test        byte ptr [eax+54],20;TCustomCombo.FControlState:TControlState
>004BF3F9    je          004BF58F
 004BF3FF    xor         eax,eax
 004BF401    pop         edx
 004BF402    pop         ecx
 004BF403    pop         ecx
 004BF404    mov         dword ptr fs:[eax],edx
>004BF407    jmp         004BF5F9
 004BF40C    mov         eax,dword ptr [ebp-4]
 004BF40F    mov         eax,dword ptr [eax+244];TCustomCombo.FListHandle:HWND
 004BF415    cmp         eax,dword ptr [ebp-0C]
>004BF418    je          004BF58F
 004BF41E    mov         edx,dword ptr [ebp-8]
 004BF421    mov         eax,dword ptr [ebp-4]
 004BF424    call        004D2094
 004BF429    test        al,al
>004BF42B    je          004BF58F
 004BF431    xor         eax,eax
 004BF433    pop         edx
 004BF434    pop         ecx
 004BF435    pop         ecx
 004BF436    mov         dword ptr fs:[eax],edx
>004BF439    jmp         004BF5F9
 004BF43E    mov         edx,dword ptr [ebp-8]
 004BF441    mov         eax,dword ptr [ebp-4]
 004BF444    call        004D22E4
 004BF449    test        al,al
>004BF44B    je          004BF45A
 004BF44D    xor         eax,eax
 004BF44F    pop         edx
 004BF450    pop         ecx
 004BF451    pop         ecx
 004BF452    mov         dword ptr fs:[eax],edx
>004BF455    jmp         004BF5F9
 004BF45A    mov         eax,dword ptr [ebp-8]
 004BF45D    cmp         word ptr [eax+4],0D
>004BF462    je          004BF472
 004BF464    mov         eax,dword ptr [ebp-8]
 004BF467    cmp         word ptr [eax+4],1B
>004BF46C    jne         004BF58F
 004BF472    mov         eax,dword ptr [ebp-4]
 004BF475    call        004BEF40
 004BF47A    test        al,al
>004BF47C    je          004BF58F
 004BF482    xor         edx,edx
 004BF484    mov         eax,dword ptr [ebp-4]
 004BF487    call        004BEF70
 004BF48C    xor         eax,eax
 004BF48E    pop         edx
 004BF48F    pop         ecx
 004BF490    pop         ecx
 004BF491    mov         dword ptr fs:[eax],edx
>004BF494    jmp         004BF5F9
 004BF499    mov         edx,dword ptr [ebp-8]
 004BF49C    mov         eax,dword ptr [ebp-4]
 004BF49F    call        004D21D0
 004BF4A4    test        al,al
>004BF4A6    je          004BF58F
 004BF4AC    xor         eax,eax
 004BF4AE    pop         edx
 004BF4AF    pop         ecx
 004BF4B0    pop         ecx
 004BF4B1    mov         dword ptr fs:[eax],edx
>004BF4B4    jmp         004BF5F9
 004BF4B9    mov         ecx,dword ptr [ebp-8]
 004BF4BC    mov         eax,[0055B4C8];^Application:TApplication
 004BF4C1    mov         eax,dword ptr [eax]
 004BF4C3    mov         edx,dword ptr [ebp-4]
 004BF4C6    call        004F3AF4
>004BF4CB    jmp         004BF58F
 004BF4D0    mov         eax,dword ptr [ebp-4]
 004BF4D3    call        004BC3D4
 004BF4D8    test        al,al
>004BF4DA    je          004BF58F
 004BF4E0    mov         eax,dword ptr [ebp-8]
 004BF4E3    movsx       eax,word ptr [eax+8]
 004BF4E7    mov         dword ptr [ebp-14],eax
 004BF4EA    mov         eax,dword ptr [ebp-8]
 004BF4ED    movsx       eax,word ptr [eax+0A]
 004BF4F1    mov         dword ptr [ebp-10],eax
 004BF4F4    push        1
 004BF4F6    lea         eax,[ebp-14]
 004BF4F9    push        eax
 004BF4FA    mov         eax,dword ptr [ebp-4]
 004BF4FD    call        TWinControl.GetHandle
 004BF502    push        eax
 004BF503    mov         eax,dword ptr [ebp-0C]
 004BF506    push        eax
 004BF507    call        user32.MapWindowPoints
 004BF50C    mov         eax,dword ptr [ebp-8]
 004BF50F    mov         dx,word ptr [ebp-14]
 004BF513    mov         word ptr [eax+8],dx
 004BF517    mov         eax,dword ptr [ebp-8]
 004BF51A    mov         dx,word ptr [ebp-10]
 004BF51E    mov         word ptr [eax+0A],dx
 004BF522    mov         edx,dword ptr [ebp-8]
 004BF525    mov         eax,dword ptr [ebp-4]
 004BF528    mov         ecx,dword ptr [eax]
 004BF52A    call        dword ptr [ecx+74];TCustomCombo.sub_004BF604
 004BF52D    xor         eax,eax
 004BF52F    pop         edx
 004BF530    pop         ecx
 004BF531    pop         ecx
 004BF532    mov         dword ptr fs:[eax],edx
>004BF535    jmp         004BF5F9
 004BF53A    mov         eax,dword ptr [ebp-4]
 004BF53D    call        004BEF40
 004BF542    test        al,al
>004BF544    je          004BF58F
 004BF546    mov         eax,dword ptr [ebp-8]
 004BF549    mov         dword ptr [eax+0C],4
 004BF550    xor         eax,eax
 004BF552    pop         edx
 004BF553    pop         ecx
 004BF554    pop         ecx
 004BF555    mov         dword ptr fs:[eax],edx
>004BF558    jmp         004BF5F9
 004BF55D    mov         eax,dword ptr [ebp-4]
 004BF560    test        byte ptr [eax+1C],10;TCustomCombo.FComponentState:TComponentState
>004BF564    je          004BF58F
 004BF566    mov         eax,dword ptr [ebp-8]
 004BF569    mov         dword ptr [eax+0C],0FFFFFFFF
 004BF570    xor         eax,eax
 004BF572    pop         edx
 004BF573    pop         ecx
 004BF574    pop         ecx
 004BF575    mov         dword ptr fs:[eax],edx
>004BF578    jmp         004BF5F9
 004BF57A    mov         edx,dword ptr [ebp-8]
 004BF57D    mov         eax,dword ptr [ebp-4]
 004BF580    mov         ecx,dword ptr [eax]
 004BF582    call        dword ptr [ecx+74];TCustomCombo.sub_004BF604
 004BF585    xor         eax,eax
 004BF587    pop         edx
 004BF588    pop         ecx
 004BF589    pop         ecx
 004BF58A    mov         dword ptr fs:[eax],edx
>004BF58D    jmp         004BF5F9
 004BF58F    mov         eax,dword ptr [ebp-8]
 004BF592    mov         eax,dword ptr [eax+8]
 004BF595    push        eax
 004BF596    mov         eax,dword ptr [ebp-8]
 004BF599    mov         eax,dword ptr [eax+4]
 004BF59C    push        eax
 004BF59D    mov         eax,dword ptr [ebp-8]
 004BF5A0    mov         eax,dword ptr [eax]
 004BF5A2    push        eax
 004BF5A3    mov         eax,dword ptr [ebp-0C]
 004BF5A6    push        eax
 004BF5A7    mov         eax,dword ptr [ebp+8]
 004BF5AA    push        eax
 004BF5AB    call        user32.CallWindowProcA
 004BF5B0    mov         edx,dword ptr [ebp-8]
 004BF5B3    mov         dword ptr [edx+0C],eax
 004BF5B6    mov         eax,dword ptr [ebp-8]
 004BF5B9    cmp         dword ptr [eax],203
>004BF5BF    jne         004BF5D6
 004BF5C1    mov         eax,dword ptr [ebp-4]
 004BF5C4    test        byte ptr [eax+50],80;TCustomCombo.FControlStyle:TControlStyle
>004BF5C8    je          004BF5D6
 004BF5CA    mov         eax,dword ptr [ebp-4]
 004BF5CD    mov         si,0FFE9
 004BF5D1    call        @CallDynaInst;TControl.sub_004CCD3C
 004BF5D6    xor         eax,eax
 004BF5D8    pop         edx
 004BF5D9    pop         ecx
 004BF5DA    pop         ecx
 004BF5DB    mov         dword ptr fs:[eax],edx
>004BF5DE    jmp         004BF5F9
>004BF5E0    jmp         @HandleAnyException
 004BF5E5    mov         eax,[0055B4C8];^Application:TApplication
 004BF5EA    mov         eax,dword ptr [eax]
 004BF5EC    mov         edx,dword ptr [ebp-4]
 004BF5EF    call        TApplication.HandleException
 004BF5F4    call        @DoneExcept
 004BF5F9    pop         edi
 004BF5FA    pop         esi
 004BF5FB    pop         ebx
 004BF5FC    mov         esp,ebp
 004BF5FE    pop         ebp
 004BF5FF    ret         4
end;*}

//004BF604
{*procedure sub_004BF604(?:?);
begin
 004BF604    push        ebp
 004BF605    mov         ebp,esp
 004BF607    add         esp,0FFFFFFF8
 004BF60A    mov         dword ptr [ebp-8],edx
 004BF60D    mov         dword ptr [ebp-4],eax
 004BF610    mov         eax,dword ptr [ebp-4]
 004BF613    test        byte ptr [eax+1C],10;TCustomCombo.FComponentState:TComponentState
>004BF617    jne         004BF67B
 004BF619    mov         eax,dword ptr [ebp-8]
 004BF61C    cmp         dword ptr [eax],201
>004BF622    je          004BF62F
 004BF624    mov         eax,dword ptr [ebp-8]
 004BF627    cmp         dword ptr [eax],203
>004BF62D    jne         004BF67B
 004BF62F    mov         eax,dword ptr [ebp-4]
 004BF632    call        004CBAA4
 004BF637    test        al,al
>004BF639    jne         004BF67B
 004BF63B    mov         eax,dword ptr [ebp-4]
 004BF63E    cmp         byte ptr [eax+5D],1;TCustomCombo.FDragMode:TDragMode
>004BF642    jne         004BF67B
 004BF644    mov         edx,dword ptr [ebp-8]
 004BF647    mov         eax,dword ptr [ebp-4]
 004BF64A    call        004D05E8
 004BF64F    test        al,al
>004BF651    jne         004BF750
 004BF657    mov         ax,[004BF754];0x1 gvar_004BF754
 004BF65D    mov         edx,dword ptr [ebp-4]
 004BF660    or          ax,word ptr [edx+54];TCustomCombo.FControlState:TControlState
 004BF664    mov         edx,dword ptr [ebp-4]
 004BF667    mov         word ptr [edx+54],ax;TCustomCombo.FControlState:TControlState
 004BF66B    mov         edx,dword ptr [ebp-8]
 004BF66E    mov         eax,dword ptr [ebp-4]
 004BF671    mov         ecx,dword ptr [eax]
 004BF673    call        dword ptr [ecx-14];TObject.Dispatch
>004BF676    jmp         004BF750
 004BF67B    mov         eax,dword ptr [ebp-8]
 004BF67E    mov         eax,dword ptr [eax]
 004BF680    sub         eax,5
>004BF683    je          004BF699
 004BF685    sub         eax,0FD
>004BF68A    je          004BF70A
 004BF68C    add         eax,0FFFFFFD0
 004BF68F    sub         eax,7
>004BF692    jb          004BF6B9
>004BF694    jmp         004BF745
 004BF699    mov         eax,dword ptr [ebp-4]
 004BF69C    cmp         byte ptr [eax+25C],0;TCustomCombo.FDroppingDown:Boolean
>004BF6A3    je          004BF745
 004BF6A9    mov         edx,dword ptr [ebp-8]
 004BF6AC    mov         eax,dword ptr [ebp-4]
 004BF6AF    mov         ecx,dword ptr [eax]
 004BF6B1    call        dword ptr [ecx-10];TCustomCombo.DefaultHandler
>004BF6B4    jmp         004BF750
 004BF6B9    mov         eax,dword ptr [ebp-4]
 004BF6BC    mov         eax,dword ptr [eax+68];TCustomCombo.FFont:TFont
 004BF6BF    mov         eax,dword ptr [eax+18];TFont.Color:TColor
 004BF6C2    call        00486830
 004BF6C7    push        eax
 004BF6C8    mov         eax,dword ptr [ebp-8]
 004BF6CB    mov         eax,dword ptr [eax+4]
 004BF6CE    push        eax
 004BF6CF    call        gdi32.SetTextColor
 004BF6D4    mov         eax,dword ptr [ebp-4]
 004BF6D7    mov         eax,dword ptr [eax+170];TCustomCombo.FBrush:TBrush
 004BF6DD    call        TBrush.GetColor
 004BF6E2    call        00486830
 004BF6E7    push        eax
 004BF6E8    mov         eax,dword ptr [ebp-8]
 004BF6EB    mov         eax,dword ptr [eax+4]
 004BF6EE    push        eax
 004BF6EF    call        gdi32.SetBkColor
 004BF6F4    mov         eax,dword ptr [ebp-4]
 004BF6F7    mov         eax,dword ptr [eax+170];TCustomCombo.FBrush:TBrush
 004BF6FD    call        TBrush.GetHandle
 004BF702    mov         edx,dword ptr [ebp-8]
 004BF705    mov         dword ptr [edx+0C],eax
>004BF708    jmp         004BF750
 004BF70A    mov         edx,dword ptr [ebp-8]
 004BF70D    mov         eax,dword ptr [ebp-4]
 004BF710    call        004D22E4
 004BF715    test        al,al
>004BF717    jne         004BF750
 004BF719    mov         eax,dword ptr [ebp-8]
 004BF71C    cmp         word ptr [eax+4],0D
>004BF721    je          004BF72D
 004BF723    mov         eax,dword ptr [ebp-8]
 004BF726    cmp         word ptr [eax+4],1B
>004BF72B    jne         004BF745
 004BF72D    mov         eax,dword ptr [ebp-4]
 004BF730    call        004BEF40
 004BF735    test        al,al
>004BF737    je          004BF745
 004BF739    xor         edx,edx
 004BF73B    mov         eax,dword ptr [ebp-4]
 004BF73E    call        004BEF70
>004BF743    jmp         004BF750
 004BF745    mov         edx,dword ptr [ebp-8]
 004BF748    mov         eax,dword ptr [ebp-4]
 004BF74B    call        004D06A8
 004BF750    pop         ecx
 004BF751    pop         ecx
 004BF752    pop         ebp
 004BF753    ret
end;*}

//004BF758
{*procedure TCustomCombo.sub_004BF758(?:?);
begin
 004BF758    push        ebp
 004BF759    mov         ebp,esp
 004BF75B    add         esp,0FFFFFFF4
 004BF75E    push        ebx
 004BF75F    push        esi
 004BF760    xor         ecx,ecx
 004BF762    mov         dword ptr [ebp-0C],ecx
 004BF765    mov         dword ptr [ebp-8],edx
 004BF768    mov         dword ptr [ebp-4],eax
 004BF76B    xor         eax,eax
 004BF76D    push        ebp
 004BF76E    push        4BF8E8
 004BF773    push        dword ptr fs:[eax]
 004BF776    mov         dword ptr fs:[eax],esp
 004BF779    mov         eax,dword ptr [ebp-8]
 004BF77C    movzx       eax,word ptr [eax+6]
 004BF780    cmp         eax,8
>004BF783    ja          004BF8D2
 004BF789    jmp         dword ptr [eax*4+4BF790]
 004BF789    dd          004BF8D2
 004BF789    dd          004BF847
 004BF789    dd          004BF7B4
 004BF789    dd          004BF898
 004BF789    dd          004BF8B6
 004BF789    dd          004BF7C5
 004BF789    dd          004BF8D2
 004BF789    dd          004BF7D6
 004BF789    dd          004BF88A
 004BF7B4    mov         eax,dword ptr [ebp-4]
 004BF7B7    mov         si,0FFE9
 004BF7BB    call        @CallDynaInst;TControl.sub_004CCD3C
>004BF7C0    jmp         004BF8D2
 004BF7C5    mov         eax,dword ptr [ebp-4]
 004BF7C8    mov         si,0FFB3
 004BF7CC    call        @CallDynaInst;TCustomCombo.sub_004BF8F8
>004BF7D1    jmp         004BF8D2
 004BF7D6    mov         eax,dword ptr [ebp-4]
 004BF7D9    mov         byte ptr [eax+25D],0;TCustomCombo.FFocusChanged:Boolean
 004BF7E0    mov         eax,dword ptr [ebp-4]
 004BF7E3    mov         si,0FFB1
 004BF7E7    call        @CallDynaInst;TCustomCombo.sub_004BF92C
 004BF7EC    mov         eax,dword ptr [ebp-4]
 004BF7EF    mov         edx,dword ptr [eax]
 004BF7F1    call        dword ptr [edx+0F0];TCustomCombo.sub_004BFA8C
 004BF7F7    mov         eax,dword ptr [ebp-4]
 004BF7FA    cmp         byte ptr [eax+25D],0;TCustomCombo.FFocusChanged:Boolean
>004BF801    je          004BF8D2
 004BF807    push        0
 004BF809    push        0
 004BF80B    push        1F
 004BF80D    mov         eax,dword ptr [ebp-4]
 004BF810    call        TWinControl.GetHandle
 004BF815    push        eax
 004BF816    call        user32.PostMessageA
 004BF81B    mov         eax,dword ptr [ebp-4]
 004BF81E    cmp         byte ptr [eax+25E],0;TCustomCombo.FIsFocused:Boolean
>004BF825    jne         004BF8D2
 004BF82B    push        0
 004BF82D    push        0
 004BF82F    push        14F
 004BF834    mov         eax,dword ptr [ebp-4]
 004BF837    call        TWinControl.GetHandle
 004BF83C    push        eax
 004BF83D    call        user32.PostMessageA
>004BF842    jmp         004BF8D2
 004BF847    mov         eax,dword ptr [ebp-4]
 004BF84A    mov         edx,dword ptr [eax]
 004BF84C    call        dword ptr [edx+0CC];TCustomCombo.sub_004BEFBC
 004BF852    mov         edx,eax
 004BF854    lea         ecx,[ebp-0C]
 004BF857    mov         eax,dword ptr [ebp-4]
 004BF85A    mov         eax,dword ptr [eax+23C];TCustomCombo.FItems:TStrings
 004BF860    mov         ebx,dword ptr [eax]
 004BF862    call        dword ptr [ebx+0C];@AbstractError
 004BF865    mov         edx,dword ptr [ebp-0C]
 004BF868    mov         eax,dword ptr [ebp-4]
 004BF86B    call        TControl.SetText
 004BF870    mov         eax,dword ptr [ebp-4]
 004BF873    mov         si,0FFEB
 004BF877    call        @CallDynaInst;TControl.sub_004CCCAC
 004BF87C    mov         eax,dword ptr [ebp-4]
 004BF87F    mov         si,0FFB2
 004BF883    call        @CallDynaInst;TCustomCombo.sub_004BFA08
>004BF888    jmp         004BF8D2
 004BF88A    mov         eax,dword ptr [ebp-4]
 004BF88D    mov         si,0FFB0
 004BF891    call        @CallDynaInst;TCustomCombo.sub_004BF9DC
>004BF896    jmp         004BF8D2
 004BF898    mov         eax,dword ptr [ebp-4]
 004BF89B    mov         byte ptr [eax+25E],1;TCustomCombo.FIsFocused:Boolean
 004BF8A2    mov         eax,dword ptr [ebp-4]
 004BF8A5    mov         byte ptr [eax+25D],1;TCustomCombo.FFocusChanged:Boolean
 004BF8AC    mov         eax,dword ptr [ebp-4]
 004BF8AF    call        004D1814
>004BF8B4    jmp         004BF8D2
 004BF8B6    mov         eax,dword ptr [ebp-4]
 004BF8B9    mov         byte ptr [eax+25E],0;TCustomCombo.FIsFocused:Boolean
 004BF8C0    mov         eax,dword ptr [ebp-4]
 004BF8C3    mov         byte ptr [eax+25D],1;TCustomCombo.FFocusChanged:Boolean
 004BF8CA    mov         eax,dword ptr [ebp-4]
 004BF8CD    call        004D1920
 004BF8D2    xor         eax,eax
 004BF8D4    pop         edx
 004BF8D5    pop         ecx
 004BF8D6    pop         ecx
 004BF8D7    mov         dword ptr fs:[eax],edx
 004BF8DA    push        4BF8EF
 004BF8DF    lea         eax,[ebp-0C]
 004BF8E2    call        @LStrClr
 004BF8E7    ret
>004BF8E8    jmp         @HandleFinally
>004BF8ED    jmp         004BF8DF
 004BF8EF    pop         esi
 004BF8F0    pop         ebx
 004BF8F1    mov         esp,ebp
 004BF8F3    pop         ebp
 004BF8F4    ret
end;*}

//004BF8F8
procedure TCustomCombo.sub_004BF8F8;
begin
{*
 004BF8F8    push        ebp
 004BF8F9    mov         ebp,esp
 004BF8FB    push        ecx
 004BF8FC    push        ebx
 004BF8FD    mov         dword ptr [ebp-4],eax
 004BF900    mov         eax,dword ptr [ebp-4]
 004BF903    call        004CA9F8
 004BF908    mov         eax,dword ptr [ebp-4]
 004BF90B    cmp         word ptr [eax+21A],0;TCustomCombo.?f21A:word
>004BF913    je          004BF927
 004BF915    mov         ebx,dword ptr [ebp-4]
 004BF918    mov         edx,dword ptr [ebp-4]
 004BF91B    mov         eax,dword ptr [ebx+21C];TCustomCombo.?f21C:dword
 004BF921    call        dword ptr [ebx+218];TCustomCombo.FOnChange
 004BF927    pop         ebx
 004BF928    pop         ecx
 004BF929    pop         ebp
 004BF92A    ret
*}
end;

//004BF92C
procedure TCustomCombo.sub_004BF92C;
begin
{*
 004BF92C    push        ebp
 004BF92D    mov         ebp,esp
 004BF92F    push        ecx
 004BF930    push        ebx
 004BF931    mov         dword ptr [ebp-4],eax
 004BF934    mov         eax,dword ptr [ebp-4]
 004BF937    cmp         word ptr [eax+22A],0;TCustomCombo.?f22A:word
>004BF93F    je          004BF953
 004BF941    mov         ebx,dword ptr [ebp-4]
 004BF944    mov         edx,dword ptr [ebp-4]
 004BF947    mov         eax,dword ptr [ebx+22C];TCustomCombo.?f22C:dword
 004BF94D    call        dword ptr [ebx+228];TCustomCombo.FOnDropDown
 004BF953    pop         ebx
 004BF954    pop         ecx
 004BF955    pop         ebp
 004BF956    ret
*}
end;

//004BF958
procedure TCustomCombo.Loaded;
begin
{*
 004BF958    push        ebp
 004BF959    mov         ebp,esp
 004BF95B    push        ecx
 004BF95C    mov         dword ptr [ebp-4],eax
 004BF95F    mov         eax,dword ptr [ebp-4]
 004BF962    call        TControl.Loaded
 004BF967    mov         eax,dword ptr [ebp-4]
 004BF96A    cmp         dword ptr [eax+214],0FFFFFFFF;TCustomCombo.FItemIndex:Integer
>004BF971    je          004BF987
 004BF973    mov         eax,dword ptr [ebp-4]
 004BF976    mov         edx,dword ptr [eax+214];TCustomCombo.FItemIndex:Integer
 004BF97C    mov         eax,dword ptr [ebp-4]
 004BF97F    mov         ecx,dword ptr [eax]
 004BF981    call        dword ptr [ecx+0D0];TCustomCombo.sub_004BF000
 004BF987    pop         ecx
 004BF988    pop         ebp
 004BF989    ret
*}
end;

//004BF98C
procedure TCustomCombo.sub_004BF98C;
begin
{*
 004BF98C    push        ebp
 004BF98D    mov         ebp,esp
 004BF98F    add         esp,0FFFFFFF4
 004BF992    mov         dword ptr [ebp-4],eax
 004BF995    mov         byte ptr [ebp-5],0
 004BF999    mov         eax,dword ptr [ebp-4]
 004BF99C    call        TWinControl.HandleAllocated
 004BF9A1    test        al,al
>004BF9A3    je          004BF9D2
 004BF9A5    call        user32.GetFocus
 004BF9AA    mov         dword ptr [ebp-0C],eax
 004BF9AD    mov         eax,dword ptr [ebp-0C]
 004BF9B0    mov         edx,dword ptr [ebp-4]
 004BF9B3    cmp         eax,dword ptr [edx+240];TCustomCombo.FEditHandle:HWND
>004BF9B9    je          004BF9CD
 004BF9BB    mov         eax,dword ptr [ebp-0C]
 004BF9BE    mov         edx,dword ptr [ebp-4]
 004BF9C1    cmp         eax,dword ptr [edx+244];TCustomCombo.FListHandle:HWND
>004BF9C7    je          004BF9CD
 004BF9C9    xor         eax,eax
>004BF9CB    jmp         004BF9CF
 004BF9CD    mov         al,1
 004BF9CF    mov         byte ptr [ebp-5],al
 004BF9D2    mov         al,byte ptr [ebp-5]
 004BF9D5    mov         esp,ebp
 004BF9D7    pop         ebp
 004BF9D8    ret
*}
end;

//004BF9DC
procedure TCustomCombo.sub_004BF9DC;
begin
{*
 004BF9DC    push        ebp
 004BF9DD    mov         ebp,esp
 004BF9DF    push        ecx
 004BF9E0    push        ebx
 004BF9E1    mov         dword ptr [ebp-4],eax
 004BF9E4    mov         eax,dword ptr [ebp-4]
 004BF9E7    cmp         word ptr [eax+232],0;TCustomCombo.?f232:word
>004BF9EF    je          004BFA03
 004BF9F1    mov         ebx,dword ptr [ebp-4]
 004BF9F4    mov         edx,dword ptr [ebp-4]
 004BF9F7    mov         eax,dword ptr [ebx+234];TCustomCombo.?f234:dword
 004BF9FD    call        dword ptr [ebx+230];TCustomCombo.FOnCloseUp
 004BFA03    pop         ebx
 004BFA04    pop         ecx
 004BFA05    pop         ebp
 004BFA06    ret
*}
end;

//004BFA08
procedure TCustomCombo.sub_004BFA08;
begin
{*
 004BFA08    push        ebp
 004BFA09    mov         ebp,esp
 004BFA0B    push        ecx
 004BFA0C    push        ebx
 004BFA0D    push        esi
 004BFA0E    mov         dword ptr [ebp-4],eax
 004BFA11    mov         eax,dword ptr [ebp-4]
 004BFA14    cmp         word ptr [eax+222],0;TCustomCombo.?f222:word
>004BFA1C    je          004BFA32
 004BFA1E    mov         ebx,dword ptr [ebp-4]
 004BFA21    mov         edx,dword ptr [ebp-4]
 004BFA24    mov         eax,dword ptr [ebx+224];TCustomCombo.?f224:dword
 004BFA2A    call        dword ptr [ebx+220];TCustomCombo.FOnSelect
>004BFA30    jmp         004BFA3E
 004BFA32    mov         eax,dword ptr [ebp-4]
 004BFA35    mov         si,0FFB3
 004BFA39    call        @CallDynaInst;TCustomCombo.sub_004BF8F8
 004BFA3E    pop         esi
 004BFA3F    pop         ebx
 004BFA40    pop         ecx
 004BFA41    pop         ebp
 004BFA42    ret
*}
end;

//004BFA44
procedure TCustomCombo.CreateWnd;
begin
{*
 004BFA44    push        ebp
 004BFA45    mov         ebp,esp
 004BFA47    push        ecx
 004BFA48    mov         dword ptr [ebp-4],eax
 004BFA4B    mov         eax,dword ptr [ebp-4]
 004BFA4E    call        TWinControl.CreateWnd
 004BFA53    push        0
 004BFA55    mov         eax,dword ptr [ebp-4]
 004BFA58    mov         eax,dword ptr [eax+20C];TCustomCombo.FMaxLength:Integer
 004BFA5E    push        eax
 004BFA5F    push        141
 004BFA64    mov         eax,dword ptr [ebp-4]
 004BFA67    call        TWinControl.GetHandle
 004BFA6C    push        eax
 004BFA6D    call        user32.SendMessageA
 004BFA72    mov         eax,dword ptr [ebp-4]
 004BFA75    xor         edx,edx
 004BFA77    mov         dword ptr [eax+240],edx;TCustomCombo.FEditHandle:HWND
 004BFA7D    mov         eax,dword ptr [ebp-4]
 004BFA80    xor         edx,edx
 004BFA82    mov         dword ptr [eax+244],edx;TCustomCombo.FListHandle:HWND
 004BFA88    pop         ecx
 004BFA89    pop         ebp
 004BFA8A    ret
*}
end;

//004BFA8C
procedure sub_004BFA8C;
begin
{*
 004BFA8C    push        ebp
 004BFA8D    mov         ebp,esp
 004BFA8F    add         esp,0FFFFFFF8
 004BFA92    mov         dword ptr [ebp-4],eax
 004BFA95    mov         eax,dword ptr [ebp-4]
 004BFA98    mov         edx,dword ptr [eax]
 004BFA9A    call        dword ptr [edx+104];@AbstractError
 004BFAA0    mov         dword ptr [ebp-8],eax
 004BFAA3    mov         eax,dword ptr [ebp-4]
 004BFAA6    mov         eax,dword ptr [eax+210];TCustomCombo.FDropDownCount:Integer
 004BFAAC    cmp         eax,dword ptr [ebp-8]
>004BFAAF    jge         004BFABD
 004BFAB1    mov         eax,dword ptr [ebp-4]
 004BFAB4    mov         eax,dword ptr [eax+210];TCustomCombo.FDropDownCount:Integer
 004BFABA    mov         dword ptr [ebp-8],eax
 004BFABD    cmp         dword ptr [ebp-8],1
>004BFAC1    jge         004BFACA
 004BFAC3    mov         dword ptr [ebp-8],1
 004BFACA    mov         eax,dword ptr [ebp-4]
 004BFACD    mov         byte ptr [eax+25C],1;TCustomCombo.FDroppingDown:Boolean
 004BFAD4    xor         eax,eax
 004BFAD6    push        ebp
 004BFAD7    push        4BFB33
 004BFADC    push        dword ptr fs:[eax]
 004BFADF    mov         dword ptr fs:[eax],esp
 004BFAE2    push        9E
 004BFAE7    mov         eax,dword ptr [ebp-4]
 004BFAEA    mov         edx,dword ptr [eax]
 004BFAEC    call        dword ptr [edx+0FC];@AbstractError
 004BFAF2    imul        dword ptr [ebp-8]
 004BFAF5    mov         edx,dword ptr [ebp-4]
 004BFAF8    add         eax,dword ptr [edx+4C];TCustomCombo.Height:Integer
 004BFAFB    add         eax,2
 004BFAFE    push        eax
 004BFAFF    mov         eax,dword ptr [ebp-4]
 004BFB02    mov         eax,dword ptr [eax+48];TCustomCombo.Width:Integer
 004BFB05    push        eax
 004BFB06    push        0
 004BFB08    push        0
 004BFB0A    push        0
 004BFB0C    mov         eax,dword ptr [ebp-4]
 004BFB0F    mov         eax,dword ptr [eax+248];TCustomCombo.FDropHandle:HWND
 004BFB15    push        eax
 004BFB16    call        user32.SetWindowPos
 004BFB1B    xor         eax,eax
 004BFB1D    pop         edx
 004BFB1E    pop         ecx
 004BFB1F    pop         ecx
 004BFB20    mov         dword ptr fs:[eax],edx
 004BFB23    push        4BFB3A
 004BFB28    mov         eax,dword ptr [ebp-4]
 004BFB2B    mov         byte ptr [eax+25C],0;TCustomCombo.FDroppingDown:Boolean
 004BFB32    ret
>004BFB33    jmp         @HandleFinally
>004BFB38    jmp         004BFB28
 004BFB3A    push        5F
 004BFB3C    push        0
 004BFB3E    push        0
 004BFB40    push        0
 004BFB42    push        0
 004BFB44    push        0
 004BFB46    mov         eax,dword ptr [ebp-4]
 004BFB49    mov         eax,dword ptr [eax+248];TCustomCombo.FDropHandle:HWND
 004BFB4F    push        eax
 004BFB50    call        user32.SetWindowPos
 004BFB55    pop         ecx
 004BFB56    pop         ecx
 004BFB57    pop         ebp
 004BFB58    ret
*}
end;

//004BFB5C
{*procedure sub_004BFB5C(?:?);
begin
 004BFB5C    push        ebp
 004BFB5D    mov         ebp,esp
 004BFB5F    add         esp,0FFFFFFF8
 004BFB62    mov         dword ptr [ebp-8],edx
 004BFB65    mov         dword ptr [ebp-4],eax
 004BFB68    mov         eax,dword ptr [ebp-4]
 004BFB6B    cmp         dword ptr [eax+23C],0;TCustomCombo.FItems:TStrings
>004BFB72    je          004BFB87
 004BFB74    mov         edx,dword ptr [ebp-8]
 004BFB77    mov         eax,dword ptr [ebp-4]
 004BFB7A    mov         eax,dword ptr [eax+23C];TCustomCombo.FItems:TStrings
 004BFB80    mov         ecx,dword ptr [eax]
 004BFB82    call        dword ptr [ecx+8];TStrings.sub_0047A184
>004BFB85    jmp         004BFB93
 004BFB87    mov         eax,dword ptr [ebp-8]
 004BFB8A    mov         edx,dword ptr [ebp-4]
 004BFB8D    mov         dword ptr [edx+23C],eax;TCustomCombo.FItems:TStrings
 004BFB93    pop         ecx
 004BFB94    pop         ecx
 004BFB95    pop         ebp
 004BFB96    ret
end;*}

//004BFB98
{*procedure sub_004BFB98(?:?);
begin
 004BFB98    push        ebp
 004BFB99    mov         ebp,esp
 004BFB9B    push        ecx
 004BFB9C    mov         dword ptr [ebp-4],eax
 004BFB9F    or          edx,0FFFFFFFF
 004BFBA2    mov         eax,dword ptr [ebp-4]
 004BFBA5    mov         ecx,dword ptr [eax]
 004BFBA7    call        dword ptr [ecx+0D0];TCustomCombo.sub_004BF000
 004BFBAD    pop         ecx
 004BFBAE    pop         ebp
 004BFBAF    ret
end;*}

//004BFBB0
{*procedure sub_004BFBB0(?:?);
begin
 004BFBB0    push        ebp
 004BFBB1    mov         ebp,esp
 004BFBB3    add         esp,0FFFFFFF4
 004BFBB6    push        ebx
 004BFBB7    xor         ecx,ecx
 004BFBB9    mov         dword ptr [ebp-0C],ecx
 004BFBBC    mov         dword ptr [ebp-8],edx
 004BFBBF    mov         dword ptr [ebp-4],eax
 004BFBC2    xor         eax,eax
 004BFBC4    push        ebp
 004BFBC5    push        4BFC3F
 004BFBCA    push        dword ptr fs:[eax]
 004BFBCD    mov         dword ptr fs:[eax],esp
 004BFBD0    mov         eax,dword ptr [ebp-4]
 004BFBD3    mov         edx,dword ptr [eax]
 004BFBD5    call        dword ptr [edx+0CC];TCustomCombo.sub_004BEFBC
 004BFBDB    inc         eax
>004BFBDC    je          004BFC29
 004BFBDE    mov         eax,dword ptr [ebp-4]
 004BFBE1    mov         edx,dword ptr [eax]
 004BFBE3    call        dword ptr [edx+0CC];TCustomCombo.sub_004BEFBC
 004BFBE9    mov         edx,eax
 004BFBEB    lea         ecx,[ebp-0C]
 004BFBEE    mov         eax,dword ptr [ebp-4]
 004BFBF1    mov         eax,dword ptr [eax+23C];TCustomCombo.FItems:TStrings
 004BFBF7    mov         ebx,dword ptr [eax]
 004BFBF9    call        dword ptr [ebx+0C];@AbstractError
 004BFBFC    mov         eax,dword ptr [ebp-0C]
 004BFBFF    push        eax
 004BFC00    mov         eax,dword ptr [ebp-4]
 004BFC03    mov         edx,dword ptr [eax]
 004BFC05    call        dword ptr [edx+0CC];TCustomCombo.sub_004BEFBC
 004BFC0B    mov         edx,eax
 004BFC0D    mov         eax,dword ptr [ebp-4]
 004BFC10    mov         eax,dword ptr [eax+23C];TCustomCombo.FItems:TStrings
 004BFC16    mov         ecx,dword ptr [eax]
 004BFC18    call        dword ptr [ecx+18];TStrings.sub_0047A674
 004BFC1B    mov         ecx,eax
 004BFC1D    mov         eax,dword ptr [ebp-8]
 004BFC20    pop         edx
 004BFC21    mov         ebx,dword ptr [eax]
 004BFC23    call        dword ptr [ebx+0D4]
 004BFC29    xor         eax,eax
 004BFC2B    pop         edx
 004BFC2C    pop         ecx
 004BFC2D    pop         ecx
 004BFC2E    mov         dword ptr fs:[eax],edx
 004BFC31    push        4BFC46
 004BFC36    lea         eax,[ebp-0C]
 004BFC39    call        @LStrClr
 004BFC3E    ret
>004BFC3F    jmp         @HandleFinally
>004BFC44    jmp         004BFC36
 004BFC46    pop         ebx
 004BFC47    mov         esp,ebp
 004BFC49    pop         ebp
 004BFC4A    ret
end;*}

//004BFC4C
procedure sub_004BFC4C;
begin
{*
 004BFC4C    push        ebp
 004BFC4D    mov         ebp,esp
 004BFC4F    push        ecx
 004BFC50    mov         dword ptr [ebp-4],eax
 004BFC53    mov         eax,dword ptr [ebp-4]
 004BFC56    mov         edx,dword ptr [eax]
 004BFC58    call        dword ptr [edx+0CC];TCustomCombo.sub_004BEFBC
 004BFC5E    inc         eax
>004BFC5F    je          004BFC7C
 004BFC61    mov         eax,dword ptr [ebp-4]
 004BFC64    mov         edx,dword ptr [eax]
 004BFC66    call        dword ptr [edx+0CC];TCustomCombo.sub_004BEFBC
 004BFC6C    mov         edx,eax
 004BFC6E    mov         eax,dword ptr [ebp-4]
 004BFC71    mov         eax,dword ptr [eax+23C];TCustomCombo.FItems:TStrings
 004BFC77    mov         ecx,dword ptr [eax]
 004BFC79    call        dword ptr [ecx+48];@AbstractError
 004BFC7C    pop         ecx
 004BFC7D    pop         ebp
 004BFC7E    ret
*}
end;

//004BFC80
{*function sub_004BFC80:?;
begin
 004BFC80    push        ebp
 004BFC81    mov         ebp,esp
 004BFC83    add         esp,0FFFFFFF8
 004BFC86    mov         dword ptr [ebp-4],eax
 004BFC89    mov         eax,dword ptr [ebp-4]
 004BFC8C    mov         edx,dword ptr [eax]
 004BFC8E    call        dword ptr [edx+104];@AbstractError
 004BFC94    mov         dword ptr [ebp-8],eax
 004BFC97    mov         eax,dword ptr [ebp-8]
 004BFC9A    pop         ecx
 004BFC9B    pop         ecx
 004BFC9C    pop         ebp
 004BFC9D    ret
end;*}

//004BFCA0
{*procedure sub_004BFCA0(?:?);
begin
 004BFCA0    push        ebp
 004BFCA1    mov         ebp,esp
 004BFCA3    add         esp,0FFFFFFF8
 004BFCA6    mov         dword ptr [ebp-8],edx
 004BFCA9    mov         dword ptr [ebp-4],eax
 004BFCAC    mov         eax,dword ptr [ebp-8]
 004BFCAF    mov         edx,dword ptr [ebp-4]
 004BFCB2    mov         dword ptr [edx+210],eax;TCustomCombo.FDropDownCount:Integer
 004BFCB8    pop         ecx
 004BFCB9    pop         ecx
 004BFCBA    pop         ebp
 004BFCBB    ret
end;*}

//004BFCBC
{*procedure sub_004BFCBC(?:?; ?:?);
begin
 004BFCBC    push        ebp
 004BFCBD    mov         ebp,esp
 004BFCBF    add         esp,0FFFFFFF4
 004BFCC2    push        ebx
 004BFCC3    mov         dword ptr [ebp-0C],ecx
 004BFCC6    mov         dword ptr [ebp-8],edx
 004BFCC9    mov         dword ptr [ebp-4],eax
 004BFCCC    mov         eax,dword ptr [ebp-8]
 004BFCCF    call        @LStrAddRef
 004BFCD4    xor         eax,eax
 004BFCD6    push        ebp
 004BFCD7    push        4BFD0C
 004BFCDC    push        dword ptr fs:[eax]
 004BFCDF    mov         dword ptr fs:[eax],esp
 004BFCE2    mov         ecx,dword ptr [ebp-0C]
 004BFCE5    mov         edx,dword ptr [ebp-8]
 004BFCE8    mov         eax,dword ptr [ebp-4]
 004BFCEB    mov         eax,dword ptr [eax+23C];TCustomCombo.FItems:TStrings
 004BFCF1    mov         ebx,dword ptr [eax]
 004BFCF3    call        dword ptr [ebx+3C];TStrings.sub_0047A090
 004BFCF6    xor         eax,eax
 004BFCF8    pop         edx
 004BFCF9    pop         ecx
 004BFCFA    pop         ecx
 004BFCFB    mov         dword ptr fs:[eax],edx
 004BFCFE    push        4BFD13
 004BFD03    lea         eax,[ebp-8]
 004BFD06    call        @LStrClr
 004BFD0B    ret
>004BFD0C    jmp         @HandleFinally
>004BFD11    jmp         004BFD03
 004BFD13    pop         ebx
 004BFD14    mov         esp,ebp
 004BFD16    pop         ebp
 004BFD17    ret
end;*}

//004BFD18
{*procedure sub_004BFD18(?:?);
begin
 004BFD18    push        ebp
 004BFD19    mov         ebp,esp
 004BFD1B    add         esp,0FFFFFFF8
 004BFD1E    mov         dword ptr [ebp-8],edx
 004BFD21    mov         dword ptr [ebp-4],eax
 004BFD24    mov         edx,dword ptr [ebp-8]
 004BFD27    mov         eax,dword ptr [ebp-4]
 004BFD2A    call        004CE324
 004BFD2F    mov         eax,dword ptr [ebp-8]
 004BFD32    mov         edx,dword ptr ds:[4B9D38];TButtonControl
 004BFD38    call        @AsClass
 004BFD3D    mov         edx,dword ptr [ebp-4]
 004BFD40    mov         dword ptr [edx+28],eax;TButtonActionLink.......FClient:TButtonControl
 004BFD43    pop         ecx
 004BFD44    pop         ecx
 004BFD45    pop         ebp
 004BFD46    ret
end;*}

//004BFD48
{*function sub_004BFD48:?;
begin
 004BFD48    push        ebp
 004BFD49    mov         ebp,esp
 004BFD4B    add         esp,0FFFFFFF8
 004BFD4E    push        ebx
 004BFD4F    mov         dword ptr [ebp-4],eax
 004BFD52    mov         eax,dword ptr [ebp-4]
 004BFD55    call        004DB1FC
 004BFD5A    test        al,al
>004BFD5C    je          004BFD84
 004BFD5E    mov         eax,dword ptr [ebp-4]
 004BFD61    mov         eax,dword ptr [eax+28];TButtonActionLink........FClient:TButtonControl
 004BFD64    mov         edx,dword ptr [eax]
 004BFD66    call        dword ptr [edx+0C8];TButtonControl.sub_004BFEE0
 004BFD6C    mov         ebx,eax
 004BFD6E    mov         eax,dword ptr [ebp-4]
 004BFD71    mov         eax,dword ptr [eax+10];TButtonActionLink.FAction:TBasicAction
 004BFD74    mov         edx,dword ptr ds:[4DA408];TCustomAction
 004BFD7A    call        @AsClass
 004BFD7F    cmp         bl,byte ptr [eax+69];TCustomAction.FChecked:Boolean
>004BFD82    je          004BFD88
 004BFD84    xor         eax,eax
>004BFD86    jmp         004BFD8A
 004BFD88    mov         al,1
 004BFD8A    mov         byte ptr [ebp-5],al
 004BFD8D    mov         al,byte ptr [ebp-5]
 004BFD90    pop         ebx
 004BFD91    pop         ecx
 004BFD92    pop         ecx
 004BFD93    pop         ebp
 004BFD94    ret
end;*}

//004BFD98
{*procedure sub_004BFD98(?:?);
begin
 004BFD98    push        ebp
 004BFD99    mov         ebp,esp
 004BFD9B    add         esp,0FFFFFFF8
 004BFD9E    mov         byte ptr [ebp-5],dl
 004BFDA1    mov         dword ptr [ebp-4],eax
 004BFDA4    mov         eax,dword ptr [ebp-4]
 004BFDA7    mov         edx,dword ptr [eax]
 004BFDA9    call        dword ptr [edx+24];TButtonActionLink.sub_004BFD48
 004BFDAC    test        al,al
>004BFDAE    je          004BFDFE
 004BFDB0    mov         eax,dword ptr [ebp-4]
 004BFDB3    mov         eax,dword ptr [eax+28];TButtonActionLink.........FClient:TButtonControl
 004BFDB6    mov         byte ptr [eax+208],1;TButtonControl.FClicksDisabled:Boolean
 004BFDBD    xor         eax,eax
 004BFDBF    push        ebp
 004BFDC0    push        4BFDF7
 004BFDC5    push        dword ptr fs:[eax]
 004BFDC8    mov         dword ptr fs:[eax],esp
 004BFDCB    mov         eax,dword ptr [ebp-4]
 004BFDCE    mov         eax,dword ptr [eax+28];TButtonActionLink..........FClient:TButtonControl
 004BFDD1    mov         dl,byte ptr [ebp-5]
 004BFDD4    mov         ecx,dword ptr [eax]
 004BFDD6    call        dword ptr [ecx+0CC];TButtonControl.sub_004BFF28
 004BFDDC    xor         eax,eax
 004BFDDE    pop         edx
 004BFDDF    pop         ecx
 004BFDE0    pop         ecx
 004BFDE1    mov         dword ptr fs:[eax],edx
 004BFDE4    push        4BFDFE
 004BFDE9    mov         eax,dword ptr [ebp-4]
 004BFDEC    mov         eax,dword ptr [eax+28];TButtonActionLink...........FClient:TButtonControl
 004BFDEF    mov         byte ptr [eax+208],0;TButtonControl.FClicksDisabled:Boolean
 004BFDF6    ret
>004BFDF7    jmp         @HandleFinally
>004BFDFC    jmp         004BFDE9
 004BFDFE    pop         ecx
 004BFDFF    pop         ecx
 004BFE00    pop         ebp
 004BFE01    ret
end;*}

//004BFE04
constructor TButtonControl.Create(AOwner:TComponent);
begin
{*
 004BFE04    push        ebp
 004BFE05    mov         ebp,esp
 004BFE07    add         esp,0FFFFFFF4
 004BFE0A    test        dl,dl
>004BFE0C    je          004BFE16
 004BFE0E    add         esp,0FFFFFFF0
 004BFE11    call        @ClassCreate
 004BFE16    mov         dword ptr [ebp-0C],ecx
 004BFE19    mov         byte ptr [ebp-5],dl
 004BFE1C    mov         dword ptr [ebp-4],eax
 004BFE1F    mov         ecx,dword ptr [ebp-0C]
 004BFE22    xor         edx,edx
 004BFE24    mov         eax,dword ptr [ebp-4]
 004BFE27    call        TWinControl.Create
 004BFE2C    mov         eax,[0055B70C];^gvar_0055D9C4:Integer
 004BFE31    cmp         byte ptr [eax+0C],0
>004BFE35    je          004BFE4B
 004BFE37    mov         eax,[0055B700];^gvar_00540934
 004BFE3C    cmp         dword ptr [eax],2
>004BFE3F    jne         004BFE4B
 004BFE41    mov         eax,dword ptr [ebp-4]
 004BFE44    mov         byte ptr [eax+184],0;TButtonControl.FImeMode:TImeMode
 004BFE4B    mov         eax,dword ptr [ebp-4]
 004BFE4E    cmp         byte ptr [ebp-5],0
>004BFE52    je          004BFE63
 004BFE54    call        @AfterConstruction
 004BFE59    pop         dword ptr fs:[0]
 004BFE60    add         esp,0C
 004BFE63    mov         eax,dword ptr [ebp-4]
 004BFE66    mov         esp,ebp
 004BFE68    pop         ebp
 004BFE69    ret
*}
end;

//004BFE6C
{*procedure TButtonControl.sub_004BFE6C(?:?; ?:?);
begin
 004BFE6C    push        ebp
 004BFE6D    mov         ebp,esp
 004BFE6F    add         esp,0FFFFFFF4
 004BFE72    mov         byte ptr [ebp-9],cl
 004BFE75    mov         dword ptr [ebp-8],edx
 004BFE78    mov         dword ptr [ebp-4],eax
 004BFE7B    mov         cl,byte ptr [ebp-9]
 004BFE7E    mov         edx,dword ptr [ebp-8]
 004BFE81    mov         eax,dword ptr [ebp-4]
 004BFE84    call        TWinControl.sub_004CD9E4
 004BFE89    mov         eax,dword ptr [ebp-8]
 004BFE8C    mov         edx,dword ptr ds:[4DA408];TCustomAction
 004BFE92    call        @IsClass
 004BFE97    test        al,al
>004BFE99    je          004BFEC1
 004BFE9B    cmp         byte ptr [ebp-9],0
>004BFE9F    je          004BFEB0
 004BFEA1    mov         eax,dword ptr [ebp-4]
 004BFEA4    mov         edx,dword ptr [eax]
 004BFEA6    call        dword ptr [edx+0C8];TButtonControl.sub_004BFEE0
 004BFEAC    test        al,al
>004BFEAE    jne         004BFEC1
 004BFEB0    mov         eax,dword ptr [ebp-8]
 004BFEB3    mov         dl,byte ptr [eax+69]
 004BFEB6    mov         eax,dword ptr [ebp-4]
 004BFEB9    mov         ecx,dword ptr [eax]
 004BFEBB    call        dword ptr [ecx+0CC];TButtonControl.sub_004BFF28
 004BFEC1    mov         esp,ebp
 004BFEC3    pop         ebp
 004BFEC4    ret
end;*}

//004BFEC8
procedure TButtonControl.sub_004BFEC8;
begin
{*
 004BFEC8    push        ebp
 004BFEC9    mov         ebp,esp
 004BFECB    add         esp,0FFFFFFF8
 004BFECE    mov         dword ptr [ebp-4],eax
 004BFED1    mov         eax,[004B9C5C];TButtonActionLink
 004BFED6    mov         dword ptr [ebp-8],eax
 004BFED9    mov         eax,dword ptr [ebp-8]
 004BFEDC    pop         ecx
 004BFEDD    pop         ecx
 004BFEDE    pop         ebp
 004BFEDF    ret
*}
end;

//004BFEE0
{*function sub_004BFEE0:?;
begin
 004BFEE0    push        ebp
 004BFEE1    mov         ebp,esp
 004BFEE3    add         esp,0FFFFFFF8
 004BFEE6    mov         dword ptr [ebp-4],eax
 004BFEE9    mov         byte ptr [ebp-5],0
 004BFEED    mov         al,byte ptr [ebp-5]
 004BFEF0    pop         ecx
 004BFEF1    pop         ecx
 004BFEF2    pop         ebp
 004BFEF3    ret
end;*}

//004BFEF4
function TCheckBox.IsStoredChecked(Value:Boolean):Boolean;
begin
{*
 004BFEF4    push        ebp
 004BFEF5    mov         ebp,esp
 004BFEF7    add         esp,0FFFFFFF8
 004BFEFA    mov         dword ptr [ebp-4],eax
 004BFEFD    mov         eax,dword ptr [ebp-4]
 004BFF00    cmp         dword ptr [eax+6C],0;TCheckBox.FActionLink:TControlActionLink
>004BFF04    je          004BFF19
 004BFF06    mov         eax,dword ptr [ebp-4]
 004BFF09    mov         eax,dword ptr [eax+6C];TCheckBox.FActionLink:TControlActionLink
 004BFF0C    mov         edx,dword ptr [eax]
 004BFF0E    call        dword ptr [edx+24];TControlActionLink.sub_004DB1FC
 004BFF11    test        al,al
>004BFF13    je          004BFF19
 004BFF15    xor         eax,eax
>004BFF17    jmp         004BFF1B
 004BFF19    mov         al,1
 004BFF1B    mov         byte ptr [ebp-5],al
 004BFF1E    mov         al,byte ptr [ebp-5]
 004BFF21    pop         ecx
 004BFF22    pop         ecx
 004BFF23    pop         ebp
 004BFF24    ret
*}
end;

//004BFF28
{*procedure sub_004BFF28(?:?);
begin
 004BFF28    push        ebp
 004BFF29    mov         ebp,esp
 004BFF2B    add         esp,0FFFFFFF8
 004BFF2E    mov         byte ptr [ebp-5],dl
 004BFF31    mov         dword ptr [ebp-4],eax
 004BFF34    pop         ecx
 004BFF35    pop         ecx
 004BFF36    pop         ebp
 004BFF37    ret
end;*}

//004BFF38
{*procedure sub_004BFF38(?:?);
begin
 004BFF38    push        ebp
 004BFF39    mov         ebp,esp
 004BFF3B    add         esp,0FFFFFFF8
 004BFF3E    push        esi
 004BFF3F    mov         dword ptr [ebp-8],edx
 004BFF42    mov         dword ptr [ebp-4],eax
 004BFF45    mov         eax,dword ptr [ebp-8]
 004BFF48    mov         eax,dword ptr [eax]
 004BFF4A    sub         eax,201
>004BFF4F    je          004BFF5F
 004BFF51    sub         eax,2
>004BFF54    je          004BFF5F
 004BFF56    sub         eax,0BB0E
>004BFF5B    je          004BFFAC
>004BFF5D    jmp         004BFFB8
 004BFF5F    mov         eax,dword ptr [ebp-4]
 004BFF62    test        byte ptr [eax+1C],10;TButtonControl.FComponentState:TComponentState
>004BFF66    jne         004BFFB8
 004BFF68    mov         eax,dword ptr [ebp-4]
 004BFF6B    mov         si,0FFB5
 004BFF6F    call        @CallDynaInst;TWinControl.sub_004D3858
 004BFF74    test        al,al
>004BFF76    jne         004BFFB8
 004BFF78    mov         eax,dword ptr [ebp-4]
 004BFF7B    mov         byte ptr [eax+208],1;TButtonControl.FClicksDisabled:Boolean
 004BFF82    mov         eax,dword ptr [ebp-4]
 004BFF85    call        TWinControl.GetHandle
 004BFF8A    push        eax
 004BFF8B    call        user32.SetFocus
 004BFF90    mov         eax,dword ptr [ebp-4]
 004BFF93    mov         byte ptr [eax+208],0;TButtonControl.FClicksDisabled:Boolean
 004BFF9A    mov         eax,dword ptr [ebp-4]
 004BFF9D    mov         si,0FFB5
 004BFFA1    call        @CallDynaInst;TWinControl.sub_004D3858
 004BFFA6    test        al,al
>004BFFA8    je          004BFFC3
>004BFFAA    jmp         004BFFB8
 004BFFAC    mov         eax,dword ptr [ebp-4]
 004BFFAF    cmp         byte ptr [eax+208],0;TButtonControl.FClicksDisabled:Boolean
>004BFFB6    jne         004BFFC3
 004BFFB8    mov         edx,dword ptr [ebp-8]
 004BFFBB    mov         eax,dword ptr [ebp-4]
 004BFFBE    call        004D06A8
 004BFFC3    pop         esi
 004BFFC4    pop         ecx
 004BFFC5    pop         ecx
 004BFFC6    pop         ebp
 004BFFC7    ret
end;*}

//004BFFC8
{*procedure TButtonControl.sub_004BFFC8(?:?);
begin
 004BFFC8    push        ebp
 004BFFC9    mov         ebp,esp
 004BFFCB    add         esp,0FFFFFFF4
 004BFFCE    mov         dword ptr [ebp-8],edx
 004BFFD1    mov         dword ptr [ebp-4],eax
 004BFFD4    call        ThemeServices
 004BFFD9    mov         dword ptr [ebp-0C],eax
 004BFFDC    mov         eax,dword ptr [ebp-0C]
 004BFFDF    call        TThemeServices.GetThemesEnabled
 004BFFE4    test        al,al
>004BFFE6    je          004C0015
 004BFFE8    push        0
 004BFFEA    push        0
 004BFFEC    push        0
 004BFFEE    mov         eax,dword ptr [ebp-4]
 004BFFF1    call        TWinControl.GetHandle
 004BFFF6    mov         edx,eax
 004BFFF8    mov         ecx,dword ptr [ebp-8]
 004BFFFB    mov         ecx,dword ptr [ecx+4]
 004BFFFE    mov         eax,dword ptr [ebp-0C]
 004C0001    call        004B6520
 004C0006    push        5
 004C0008    call        gdi32.GetStockObject
 004C000D    mov         edx,dword ptr [ebp-8]
 004C0010    mov         dword ptr [edx+0C],eax
>004C0013    jmp         004C0020
 004C0015    mov         edx,dword ptr [ebp-8]
 004C0018    mov         eax,dword ptr [ebp-4]
 004C001B    mov         ecx,dword ptr [eax]
 004C001D    call        dword ptr [ecx-10];TButtonControl.DefaultHandler
 004C0020    mov         esp,ebp
 004C0022    pop         ebp
 004C0023    ret
end;*}

//004C0024
{*procedure TButtonControl.WMEraseBkgnd(?:?);
begin
 004C0024    push        ebp
 004C0025    mov         ebp,esp
 004C0027    add         esp,0FFFFFFF8
 004C002A    mov         dword ptr [ebp-8],edx
 004C002D    mov         dword ptr [ebp-4],eax
 004C0030    call        ThemeServices
 004C0035    call        TThemeServices.GetThemesEnabled
 004C003A    test        al,al
>004C003C    je          004C004A
 004C003E    mov         eax,dword ptr [ebp-8]
 004C0041    mov         dword ptr [eax+0C],1
>004C0048    jmp         004C0055
 004C004A    mov         edx,dword ptr [ebp-8]
 004C004D    mov         eax,dword ptr [ebp-4]
 004C0050    call        TWinControl.WMEraseBkgnd
 004C0055    pop         ecx
 004C0056    pop         ecx
 004C0057    pop         ebp
 004C0058    ret
end;*}

//004C005C
{*procedure sub_004C005C(?:?);
begin
 004C005C    push        ebp
 004C005D    mov         ebp,esp
 004C005F    add         esp,0FFFFFFF8
 004C0062    mov         dword ptr [ebp-8],edx
 004C0065    mov         dword ptr [ebp-4],eax
 004C0068    mov         edx,dword ptr [ebp-8]
 004C006B    mov         eax,dword ptr [ebp-4]
 004C006E    call        004CF814
 004C0073    mov         eax,dword ptr [ebp-4]
 004C0076    cmp         byte ptr [eax+209],0;TButtonControl.FWordWrap:Boolean
>004C007D    je          004C0089
 004C007F    mov         eax,dword ptr [ebp-8]
 004C0082    or          dword ptr [eax+4],2000
 004C0089    pop         ecx
 004C008A    pop         ecx
 004C008B    pop         ebp
 004C008C    ret
end;*}

//004C0090
procedure TButton.SetWordWrap(Value:Boolean);
begin
{*
 004C0090    push        ebp
 004C0091    mov         ebp,esp
 004C0093    add         esp,0FFFFFFF8
 004C0096    mov         byte ptr [ebp-5],dl
 004C0099    mov         dword ptr [ebp-4],eax
 004C009C    mov         eax,dword ptr [ebp-4]
 004C009F    mov         al,byte ptr [eax+209];TButton.FWordWrap:Boolean
 004C00A5    cmp         al,byte ptr [ebp-5]
>004C00A8    je          004C00BE
 004C00AA    mov         al,byte ptr [ebp-5]
 004C00AD    mov         edx,dword ptr [ebp-4]
 004C00B0    mov         byte ptr [edx+209],al;TButton.FWordWrap:Boolean
 004C00B6    mov         eax,dword ptr [ebp-4]
 004C00B9    call        TWinControl.RecreateWnd
 004C00BE    pop         ecx
 004C00BF    pop         ecx
 004C00C0    pop         ebp
 004C00C1    ret
*}
end;

//004C00C4
constructor TButton.Create(AOwner:TComponent);
begin
{*
 004C00C4    push        ebp
 004C00C5    mov         ebp,esp
 004C00C7    add         esp,0FFFFFFF4
 004C00CA    test        dl,dl
>004C00CC    je          004C00D6
 004C00CE    add         esp,0FFFFFFF0
 004C00D1    call        @ClassCreate
 004C00D6    mov         dword ptr [ebp-0C],ecx
 004C00D9    mov         byte ptr [ebp-5],dl
 004C00DC    mov         dword ptr [ebp-4],eax
 004C00DF    mov         ecx,dword ptr [ebp-0C]
 004C00E2    xor         edx,edx
 004C00E4    mov         eax,dword ptr [ebp-4]
 004C00E7    call        TButtonControl.Create
 004C00EC    mov         eax,dword ptr [ebp-4]
 004C00EF    mov         edx,dword ptr ds:[4C013C];0xA0 gvar_004C013C
 004C00F5    mov         dword ptr [eax+50],edx;TButton.FControlStyle:TControlStyle
 004C00F8    mov         edx,4B
 004C00FD    mov         eax,dword ptr [ebp-4]
 004C0100    call        TControl.SetWidth
 004C0105    mov         edx,19
 004C010A    mov         eax,dword ptr [ebp-4]
 004C010D    call        TControl.SetHeight
 004C0112    mov         dl,1
 004C0114    mov         eax,dword ptr [ebp-4]
 004C0117    call        TPanel.SetTabStop
 004C011C    mov         eax,dword ptr [ebp-4]
 004C011F    cmp         byte ptr [ebp-5],0
>004C0123    je          004C0134
 004C0125    call        @AfterConstruction
 004C012A    pop         dword ptr fs:[0]
 004C0131    add         esp,0C
 004C0134    mov         eax,dword ptr [ebp-4]
 004C0137    mov         esp,ebp
 004C0139    pop         ebp
 004C013A    ret
*}
end;

//004C0140
procedure TButton.sub_004C0140;
begin
{*
 004C0140    push        ebp
 004C0141    mov         ebp,esp
 004C0143    add         esp,0FFFFFFF8
 004C0146    mov         dword ptr [ebp-4],eax
 004C0149    mov         eax,dword ptr [ebp-4]
 004C014C    call        004E7ED8
 004C0151    mov         dword ptr [ebp-8],eax
 004C0154    cmp         dword ptr [ebp-8],0
>004C0158    je          004C016C
 004C015A    mov         eax,dword ptr [ebp-4]
 004C015D    mov         eax,dword ptr [eax+214];TButton.ModalResult:TModalResult
 004C0163    mov         edx,dword ptr [ebp-8]
 004C0166    mov         dword ptr [edx+24C],eax
 004C016C    mov         eax,dword ptr [ebp-4]
 004C016F    call        TControl.sub_004CCCAC
 004C0174    pop         ecx
 004C0175    pop         ecx
 004C0176    pop         ebp
 004C0177    ret
*}
end;

//004C0178
procedure TButton.sub_004C0178;
begin
{*
 004C0178    push        ebp
 004C0179    mov         ebp,esp
 004C017B    add         esp,0FFFFFFF8
 004C017E    mov         dword ptr [ebp-4],eax
 004C0181    mov         byte ptr [ebp-5],0
 004C0185    mov         al,byte ptr [ebp-5]
 004C0188    pop         ecx
 004C0189    pop         ecx
 004C018A    pop         ebp
 004C018B    ret
*}
end;

//004C018C
{*procedure sub_004C018C(?:?);
begin
 004C018C    push        ebp
 004C018D    mov         ebp,esp
 004C018F    add         esp,0FFFFFFF8
 004C0192    mov         byte ptr [ebp-5],dl
 004C0195    mov         dword ptr [ebp-4],eax
 004C0198    mov         eax,dword ptr [ebp-4]
 004C019B    call        TWinControl.HandleAllocated
 004C01A0    test        al,al
>004C01A2    je          004C01ED
 004C01A4    cmp         byte ptr [ebp-5],0
>004C01A8    je          004C01B2
 004C01AA    mov         word ptr [ebp-8],1
>004C01B0    jmp         004C01B8
 004C01B2    mov         word ptr [ebp-8],0
 004C01B8    push        0F0
 004C01BA    mov         eax,dword ptr [ebp-4]
 004C01BD    call        TWinControl.GetHandle
 004C01C2    push        eax
 004C01C3    call        user32.GetWindowLongA
 004C01C8    and         eax,0F
 004C01CB    movzx       edx,word ptr [ebp-8]
 004C01CF    cmp         eax,edx
>004C01D1    je          004C01ED
 004C01D3    push        1
 004C01D5    movzx       eax,word ptr [ebp-8]
 004C01D9    push        eax
 004C01DA    push        0F4
 004C01DF    mov         eax,dword ptr [ebp-4]
 004C01E2    call        TWinControl.GetHandle
 004C01E7    push        eax
 004C01E8    call        user32.SendMessageA
 004C01ED    pop         ecx
 004C01EE    pop         ecx
 004C01EF    pop         ebp
 004C01F0    ret
end;*}

//004C01F4
procedure TButton.SetDefault(Value:Boolean);
begin
{*
 004C01F4    push        ebp
 004C01F5    mov         ebp,esp
 004C01F7    add         esp,0FFFFFFF4
 004C01FA    mov         byte ptr [ebp-5],dl
 004C01FD    mov         dword ptr [ebp-4],eax
 004C0200    mov         al,byte ptr [ebp-5]
 004C0203    mov         edx,dword ptr [ebp-4]
 004C0206    mov         byte ptr [edx+210],al;TButton.Default:Boolean
 004C020C    mov         eax,dword ptr [ebp-4]
 004C020F    call        TWinControl.HandleAllocated
 004C0214    test        al,al
>004C0216    je          004C0242
 004C0218    mov         eax,dword ptr [ebp-4]
 004C021B    call        004E7ED8
 004C0220    mov         dword ptr [ebp-0C],eax
 004C0223    cmp         dword ptr [ebp-0C],0
>004C0227    je          004C0242
 004C0229    mov         eax,dword ptr [ebp-0C]
 004C022C    mov         eax,dword ptr [eax+220]
 004C0232    push        eax
 004C0233    xor         ecx,ecx
 004C0235    mov         edx,0B007
 004C023A    mov         eax,dword ptr [ebp-0C]
 004C023D    call        004CC7DC
 004C0242    mov         esp,ebp
 004C0244    pop         ebp
 004C0245    ret
*}
end;

//004C0248
{*procedure sub_004C0248(?:?);
begin
 004C0248    push        ebp
 004C0249    mov         ebp,esp
 004C024B    add         esp,0FFFFFFF8
 004C024E    mov         dword ptr [ebp-8],edx
 004C0251    mov         dword ptr [ebp-4],eax
 004C0254    mov         edx,dword ptr [ebp-8]
 004C0257    mov         eax,dword ptr [ebp-4]
 004C025A    call        004C005C
 004C025F    mov         ecx,4C028C
 004C0264    mov         edx,dword ptr [ebp-8]
 004C0267    mov         eax,dword ptr [ebp-4]
 004C026A    call        004CF6EC
 004C026F    mov         eax,dword ptr [ebp-4]
 004C0272    movzx       eax,byte ptr [eax+210];TButton.Default:Boolean
 004C0279    mov         eax,dword ptr [eax*4+5415FC]
 004C0280    mov         edx,dword ptr [ebp-8]
 004C0283    or          dword ptr [edx+4],eax
 004C0286    pop         ecx
 004C0287    pop         ecx
 004C0288    pop         ebp
 004C0289    ret
end;*}

//004C0294
procedure TButton.CreateWnd;
begin
{*
 004C0294    push        ebp
 004C0295    mov         ebp,esp
 004C0297    push        ecx
 004C0298    mov         dword ptr [ebp-4],eax
 004C029B    mov         eax,dword ptr [ebp-4]
 004C029E    call        TWinControl.CreateWnd
 004C02A3    mov         eax,dword ptr [ebp-4]
 004C02A6    mov         al,byte ptr [eax+210];TButton.Default:Boolean
 004C02AC    mov         edx,dword ptr [ebp-4]
 004C02AF    mov         byte ptr [edx+212],al;TButton.FActive:Boolean
 004C02B5    pop         ecx
 004C02B6    pop         ebp
 004C02B7    ret
*}
end;

//004C02B8
{*procedure TButton.sub_004C02B8(?:?);
begin
 004C02B8    push        ebp
 004C02B9    mov         ebp,esp
 004C02BB    add         esp,0FFFFFFF8
 004C02BE    push        esi
 004C02BF    mov         dword ptr [ebp-8],edx
 004C02C2    mov         dword ptr [ebp-4],eax
 004C02C5    mov         eax,dword ptr [ebp-8]
 004C02C8    cmp         word ptr [eax+6],0
>004C02CD    jne         004C02DB
 004C02CF    mov         eax,dword ptr [ebp-4]
 004C02D2    mov         si,0FFEB
 004C02D6    call        @CallDynaInst;TButton.sub_004C0140
 004C02DB    pop         esi
 004C02DC    pop         ecx
 004C02DD    pop         ecx
 004C02DE    pop         ebp
 004C02DF    ret
end;*}

//004C02E0
{*procedure TButton.CMDialogKey(?:?);
begin
 004C02E0    push        ebp
 004C02E1    mov         ebp,esp
 004C02E3    add         esp,0FFFFFFF8
 004C02E6    push        esi
 004C02E7    mov         dword ptr [ebp-8],edx
 004C02EA    mov         dword ptr [ebp-4],eax
 004C02ED    mov         eax,dword ptr [ebp-8]
 004C02F0    cmp         word ptr [eax+4],0D
>004C02F5    jne         004C0303
 004C02F7    mov         eax,dword ptr [ebp-4]
 004C02FA    cmp         byte ptr [eax+212],0;TButton.FActive:Boolean
>004C0301    jne         004C0319
 004C0303    mov         eax,dword ptr [ebp-8]
 004C0306    cmp         word ptr [eax+4],1B
>004C030B    jne         004C0356
 004C030D    mov         eax,dword ptr [ebp-4]
 004C0310    cmp         byte ptr [eax+211],0;TButton.Cancel:Boolean
>004C0317    je          004C0356
 004C0319    mov         eax,dword ptr [ebp-8]
 004C031C    mov         eax,dword ptr [eax+8]
 004C031F    call        004E7D80
 004C0324    mov         dl,byte ptr ds:[4C0368];0x0 gvar_004C0368
 004C032A    cmp         dl,al
>004C032C    jne         004C0356
 004C032E    mov         eax,dword ptr [ebp-4]
 004C0331    mov         si,0FFB8
 004C0335    call        @CallDynaInst;TWinControl.sub_004D37A8
 004C033A    test        al,al
>004C033C    je          004C0356
 004C033E    mov         eax,dword ptr [ebp-4]
 004C0341    mov         si,0FFEB
 004C0345    call        @CallDynaInst;TButton.sub_004C0140
 004C034A    mov         eax,dword ptr [ebp-8]
 004C034D    mov         dword ptr [eax+0C],1
>004C0354    jmp         004C0361
 004C0356    mov         edx,dword ptr [ebp-8]
 004C0359    mov         eax,dword ptr [ebp-4]
 004C035C    call        TWinControl.CMDialogKey
 004C0361    pop         esi
 004C0362    pop         ecx
 004C0363    pop         ecx
 004C0364    pop         ebp
 004C0365    ret
end;*}

//004C036C
{*procedure TButton.CMDialogChar(?:?);
begin
 004C036C    push        ebp
 004C036D    mov         ebp,esp
 004C036F    add         esp,0FFFFFFF4
 004C0372    push        esi
 004C0373    xor         ecx,ecx
 004C0375    mov         dword ptr [ebp-0C],ecx
 004C0378    mov         dword ptr [ebp-8],edx
 004C037B    mov         dword ptr [ebp-4],eax
 004C037E    xor         eax,eax
 004C0380    push        ebp
 004C0381    push        4C03F3
 004C0386    push        dword ptr fs:[eax]
 004C0389    mov         dword ptr fs:[eax],esp
 004C038C    lea         edx,[ebp-0C]
 004C038F    mov         eax,dword ptr [ebp-4]
 004C0392    call        TControl.GetText
 004C0397    mov         edx,dword ptr [ebp-0C]
 004C039A    mov         eax,dword ptr [ebp-8]
 004C039D    mov         ax,word ptr [eax+4]
 004C03A1    call        004E7E60
 004C03A6    test        al,al
>004C03A8    je          004C03D2
 004C03AA    mov         eax,dword ptr [ebp-4]
 004C03AD    mov         si,0FFB8
 004C03B1    call        @CallDynaInst;TWinControl.sub_004D37A8
 004C03B6    test        al,al
>004C03B8    je          004C03D2
 004C03BA    mov         eax,dword ptr [ebp-4]
 004C03BD    mov         si,0FFEB
 004C03C1    call        @CallDynaInst;TButton.sub_004C0140
 004C03C6    mov         eax,dword ptr [ebp-8]
 004C03C9    mov         dword ptr [eax+0C],1
>004C03D0    jmp         004C03DD
 004C03D2    mov         edx,dword ptr [ebp-8]
 004C03D5    mov         eax,dword ptr [ebp-4]
 004C03D8    call        TWinControl.CMDialogChar
 004C03DD    xor         eax,eax
 004C03DF    pop         edx
 004C03E0    pop         ecx
 004C03E1    pop         ecx
 004C03E2    mov         dword ptr fs:[eax],edx
 004C03E5    push        4C03FA
 004C03EA    lea         eax,[ebp-0C]
 004C03ED    call        @LStrClr
 004C03F2    ret
>004C03F3    jmp         @HandleFinally
>004C03F8    jmp         004C03EA
 004C03FA    pop         esi
 004C03FB    mov         esp,ebp
 004C03FD    pop         ebp
 004C03FE    ret
end;*}

//004C0400
{*procedure TButton.CMFocusChenged(?:?);
begin
 004C0400    push        ebp
 004C0401    mov         ebp,esp
 004C0403    add         esp,0FFFFFFF8
 004C0406    mov         dword ptr [ebp-8],edx
 004C0409    mov         dword ptr [ebp-4],eax
 004C040C    mov         eax,dword ptr [ebp-8]
 004C040F    mov         eax,dword ptr [eax+8]
 004C0412    mov         edx,dword ptr ds:[4B9EAC];TButton
 004C0418    call        @IsClass
 004C041D    test        al,al
>004C041F    je          004C0438
 004C0421    mov         eax,dword ptr [ebp-8]
 004C0424    mov         eax,dword ptr [eax+8]
 004C0427    cmp         eax,dword ptr [ebp-4]
 004C042A    sete        al
 004C042D    mov         edx,dword ptr [ebp-4]
 004C0430    mov         byte ptr [edx+212],al;TButton.FActive:Boolean
>004C0436    jmp         004C044A
 004C0438    mov         eax,dword ptr [ebp-4]
 004C043B    mov         al,byte ptr [eax+210];TButton.Default:Boolean
 004C0441    mov         edx,dword ptr [ebp-4]
 004C0444    mov         byte ptr [edx+212],al;TButton.FActive:Boolean
 004C044A    mov         eax,dword ptr [ebp-4]
 004C044D    mov         dl,byte ptr [eax+212];TButton.FActive:Boolean
 004C0453    mov         eax,dword ptr [ebp-4]
 004C0456    mov         ecx,dword ptr [eax]
 004C0458    call        dword ptr [ecx+0D0];TButton.sub_004C018C
 004C045E    mov         edx,dword ptr [ebp-8]
 004C0461    mov         eax,dword ptr [ebp-4]
 004C0464    call        TWinControl.CMFocusChenged
 004C0469    pop         ecx
 004C046A    pop         ecx
 004C046B    pop         ebp
 004C046C    ret
end;*}

//004C0470
{*procedure TButton.WMEraseBkgnd(?:?);
begin
 004C0470    push        ebp
 004C0471    mov         ebp,esp
 004C0473    add         esp,0FFFFFFF8
 004C0476    mov         dword ptr [ebp-8],edx
 004C0479    mov         dword ptr [ebp-4],eax
 004C047C    call        ThemeServices
 004C0481    call        TThemeServices.GetThemesEnabled
 004C0486    test        al,al
>004C0488    je          004C0496
 004C048A    mov         eax,dword ptr [ebp-8]
 004C048D    mov         dword ptr [eax+0C],1
>004C0494    jmp         004C04A1
 004C0496    mov         edx,dword ptr [ebp-8]
 004C0499    mov         eax,dword ptr [ebp-4]
 004C049C    mov         ecx,dword ptr [eax]
 004C049E    call        dword ptr [ecx-10];TButton.DefaultHandler
 004C04A1    pop         ecx
 004C04A2    pop         ecx
 004C04A3    pop         ebp
 004C04A4    ret
end;*}

//004C04A8
{*procedure TButton.sub_004C04A8(?:?);
begin
 004C04A8    push        ebp
 004C04A9    mov         ebp,esp
 004C04AB    add         esp,0FFFFFFF4
 004C04AE    mov         dword ptr [ebp-8],edx
 004C04B1    mov         dword ptr [ebp-4],eax
 004C04B4    call        ThemeServices
 004C04B9    mov         dword ptr [ebp-0C],eax
 004C04BC    mov         eax,dword ptr [ebp-0C]
 004C04BF    call        TThemeServices.GetThemesEnabled
 004C04C4    test        al,al
>004C04C6    je          004C04F5
 004C04C8    push        0
 004C04CA    push        0
 004C04CC    push        0
 004C04CE    mov         eax,dword ptr [ebp-4]
 004C04D1    call        TWinControl.GetHandle
 004C04D6    mov         edx,eax
 004C04D8    mov         ecx,dword ptr [ebp-8]
 004C04DB    mov         ecx,dword ptr [ecx+4]
 004C04DE    mov         eax,dword ptr [ebp-0C]
 004C04E1    call        004B6520
 004C04E6    push        5
 004C04E8    call        gdi32.GetStockObject
 004C04ED    mov         edx,dword ptr [ebp-8]
 004C04F0    mov         dword ptr [edx+0C],eax
>004C04F3    jmp         004C0500
 004C04F5    mov         edx,dword ptr [ebp-8]
 004C04F8    mov         eax,dword ptr [ebp-4]
 004C04FB    mov         ecx,dword ptr [eax]
 004C04FD    call        dword ptr [ecx-10];TButton.DefaultHandler
 004C0500    mov         esp,ebp
 004C0502    pop         ebp
 004C0503    ret
end;*}

//004C0504
constructor TCustomCheckBox.Create(AOwner:TComponent);
begin
{*
 004C0504    push        ebp
 004C0505    mov         ebp,esp
 004C0507    add         esp,0FFFFFFF4
 004C050A    test        dl,dl
>004C050C    je          004C0516
 004C050E    add         esp,0FFFFFFF0
 004C0511    call        @ClassCreate
 004C0516    mov         dword ptr [ebp-0C],ecx
 004C0519    mov         byte ptr [ebp-5],dl
 004C051C    mov         dword ptr [ebp-4],eax
 004C051F    mov         ecx,dword ptr [ebp-0C]
 004C0522    xor         edx,edx
 004C0524    mov         eax,dword ptr [ebp-4]
 004C0527    call        TButtonControl.Create
 004C052C    mov         edx,61
 004C0531    mov         eax,dword ptr [ebp-4]
 004C0534    call        TControl.SetWidth
 004C0539    mov         edx,11
 004C053E    mov         eax,dword ptr [ebp-4]
 004C0541    call        TControl.SetHeight
 004C0546    mov         dl,1
 004C0548    mov         eax,dword ptr [ebp-4]
 004C054B    call        TPanel.SetTabStop
 004C0550    mov         eax,dword ptr [ebp-4]
 004C0553    mov         edx,dword ptr ds:[4C0588];0xA0 gvar_004C0588
 004C0559    mov         dword ptr [eax+50],edx;TCustomCheckBox.FControlStyle:TControlStyle
 004C055C    mov         eax,dword ptr [ebp-4]
 004C055F    mov         byte ptr [eax+210],1;TCustomCheckBox.FAlignment:TLeftRight
 004C0566    mov         eax,dword ptr [ebp-4]
 004C0569    cmp         byte ptr [ebp-5],0
>004C056D    je          004C057E
 004C056F    call        @AfterConstruction
 004C0574    pop         dword ptr fs:[0]
 004C057B    add         esp,0C
 004C057E    mov         eax,dword ptr [ebp-4]
 004C0581    mov         esp,ebp
 004C0583    pop         ebp
 004C0584    ret
*}
end;

//004C058C
procedure TCustomCheckBox.sub_004C058C;
begin
{*
 004C058C    push        ebp
 004C058D    mov         ebp,esp
 004C058F    add         esp,0FFFFFFF8
 004C0592    push        esi
 004C0593    mov         dword ptr [ebp-4],eax
 004C0596    mov         eax,dword ptr [ebp-4]
 004C0599    mov         si,0FFC8
 004C059D    call        @CallDynaInst;TControl.sub_004CB93C
 004C05A2    test        al,al
>004C05A4    jne         004C05AC
 004C05A6    mov         byte ptr [ebp-5],1
>004C05AA    jmp         004C05C2
 004C05AC    mov         eax,dword ptr [ebp-4]
 004C05AF    cmp         byte ptr [eax+210],1;TCustomCheckBox.FAlignment:TLeftRight
>004C05B6    jne         004C05BE
 004C05B8    mov         byte ptr [ebp-5],0
>004C05BC    jmp         004C05C2
 004C05BE    mov         byte ptr [ebp-5],1
 004C05C2    mov         al,byte ptr [ebp-5]
 004C05C5    pop         esi
 004C05C6    pop         ecx
 004C05C7    pop         ecx
 004C05C8    pop         ebp
 004C05C9    ret
*}
end;

//004C05CC
procedure sub_004C05CC;
begin
{*
 004C05CC    push        ebp
 004C05CD    mov         ebp,esp
 004C05CF    push        ecx
 004C05D0    mov         dword ptr [ebp-4],eax
 004C05D3    mov         eax,dword ptr [ebp-4]
 004C05D6    mov         al,byte ptr [eax+212];TCustomCheckBox.FState:TCheckBoxState
 004C05DC    sub         al,1
>004C05DE    jb          004C05E8
>004C05E0    je          004C060D
 004C05E2    dec         al
>004C05E4    je          004C061A
>004C05E6    jmp         004C0624
 004C05E8    mov         eax,dword ptr [ebp-4]
 004C05EB    cmp         byte ptr [eax+211],0;TCustomCheckBox.FAllowGrayed:Boolean
>004C05F2    je          004C0600
 004C05F4    mov         dl,2
 004C05F6    mov         eax,dword ptr [ebp-4]
 004C05F9    call        TCheckBox.SetState
>004C05FE    jmp         004C0624
 004C0600    mov         dl,1
 004C0602    mov         eax,dword ptr [ebp-4]
 004C0605    call        TCheckBox.SetState
 004C060A    pop         ecx
 004C060B    pop         ebp
 004C060C    ret
 004C060D    xor         edx,edx
 004C060F    mov         eax,dword ptr [ebp-4]
 004C0612    call        TCheckBox.SetState
 004C0617    pop         ecx
 004C0618    pop         ebp
 004C0619    ret
 004C061A    mov         dl,1
 004C061C    mov         eax,dword ptr [ebp-4]
 004C061F    call        TCheckBox.SetState
 004C0624    pop         ecx
 004C0625    pop         ebp
 004C0626    ret
*}
end;

//004C0628
procedure TCustomCheckBox.sub_004C0628;
begin
{*
 004C0628    push        ebp
 004C0629    mov         ebp,esp
 004C062B    push        ecx
 004C062C    mov         dword ptr [ebp-4],eax
 004C062F    mov         eax,dword ptr [ebp-4]
 004C0632    call        004CA9F8
 004C0637    mov         eax,dword ptr [ebp-4]
 004C063A    call        TControl.sub_004CCCAC
 004C063F    pop         ecx
 004C0640    pop         ebp
 004C0641    ret
*}
end;

//004C0644
function TCheckBox.GetChecked:Boolean;
begin
{*
 004C0644    push        ebp
 004C0645    mov         ebp,esp
 004C0647    add         esp,0FFFFFFF8
 004C064A    mov         dword ptr [ebp-4],eax
 004C064D    mov         eax,dword ptr [ebp-4]
 004C0650    cmp         byte ptr [eax+212],1;TCheckBox.FState:TCheckBoxState
 004C0657    sete        byte ptr [ebp-5]
 004C065B    mov         al,byte ptr [ebp-5]
 004C065E    pop         ecx
 004C065F    pop         ecx
 004C0660    pop         ebp
 004C0661    ret
*}
end;

//004C0664
procedure TCheckBox.SetAlignment(Value:TLeftRight);
begin
{*
 004C0664    push        ebp
 004C0665    mov         ebp,esp
 004C0667    add         esp,0FFFFFFF8
 004C066A    mov         byte ptr [ebp-5],dl
 004C066D    mov         dword ptr [ebp-4],eax
 004C0670    mov         eax,dword ptr [ebp-4]
 004C0673    mov         al,byte ptr [eax+210];TCheckBox.FAlignment:TLeftRight
 004C0679    cmp         al,byte ptr [ebp-5]
>004C067C    je          004C0692
 004C067E    mov         al,byte ptr [ebp-5]
 004C0681    mov         edx,dword ptr [ebp-4]
 004C0684    mov         byte ptr [edx+210],al;TCheckBox.FAlignment:TLeftRight
 004C068A    mov         eax,dword ptr [ebp-4]
 004C068D    call        TWinControl.RecreateWnd
 004C0692    pop         ecx
 004C0693    pop         ecx
 004C0694    pop         ebp
 004C0695    ret
*}
end;

//004C0698
procedure TCheckBox.SetChecked(Value:Boolean);
begin
{*
 004C0698    push        ebp
 004C0699    mov         ebp,esp
 004C069B    add         esp,0FFFFFFF8
 004C069E    mov         byte ptr [ebp-5],dl
 004C06A1    mov         dword ptr [ebp-4],eax
 004C06A4    cmp         byte ptr [ebp-5],0
>004C06A8    je          004C06B6
 004C06AA    mov         dl,1
 004C06AC    mov         eax,dword ptr [ebp-4]
 004C06AF    call        TCheckBox.SetState
>004C06B4    jmp         004C06C0
 004C06B6    xor         edx,edx
 004C06B8    mov         eax,dword ptr [ebp-4]
 004C06BB    call        TCheckBox.SetState
 004C06C0    pop         ecx
 004C06C1    pop         ecx
 004C06C2    pop         ebp
 004C06C3    ret
*}
end;

//004C06C4
procedure TCheckBox.SetState(Value:TCheckBoxState);
begin
{*
 004C06C4    push        ebp
 004C06C5    mov         ebp,esp
 004C06C7    add         esp,0FFFFFFF8
 004C06CA    push        esi
 004C06CB    mov         byte ptr [ebp-5],dl
 004C06CE    mov         dword ptr [ebp-4],eax
 004C06D1    mov         eax,dword ptr [ebp-4]
 004C06D4    mov         al,byte ptr [eax+212];TCheckBox.FState:TCheckBoxState
 004C06DA    cmp         al,byte ptr [ebp-5]
>004C06DD    je          004C072F
 004C06DF    mov         al,byte ptr [ebp-5]
 004C06E2    mov         edx,dword ptr [ebp-4]
 004C06E5    mov         byte ptr [edx+212],al;TCheckBox.FState:TCheckBoxState
 004C06EB    mov         eax,dword ptr [ebp-4]
 004C06EE    call        TWinControl.HandleAllocated
 004C06F3    test        al,al
>004C06F5    je          004C0717
 004C06F7    push        0
 004C06F9    mov         eax,dword ptr [ebp-4]
 004C06FC    movzx       eax,byte ptr [eax+212];TCheckBox.FState:TCheckBoxState
 004C0703    push        eax
 004C0704    push        0F1
 004C0709    mov         eax,dword ptr [ebp-4]
 004C070C    call        TWinControl.GetHandle
 004C0711    push        eax
 004C0712    call        user32.SendMessageA
 004C0717    mov         eax,dword ptr [ebp-4]
 004C071A    cmp         byte ptr [eax+208],0;TCheckBox.FClicksDisabled:Boolean
>004C0721    jne         004C072F
 004C0723    mov         eax,dword ptr [ebp-4]
 004C0726    mov         si,0FFEB
 004C072A    call        @CallDynaInst;TCustomCheckBox.sub_004C0628
 004C072F    pop         esi
 004C0730    pop         ecx
 004C0731    pop         ecx
 004C0732    pop         ebp
 004C0733    ret
*}
end;

//004C0734
{*procedure sub_004C0734(?:?);
begin
 004C0734    push        ebp
 004C0735    mov         ebp,esp
 004C0737    add         esp,0FFFFFFF8
 004C073A    push        esi
 004C073B    mov         dword ptr [ebp-8],edx
 004C073E    mov         dword ptr [ebp-4],eax
 004C0741    mov         edx,dword ptr [ebp-8]
 004C0744    mov         eax,dword ptr [ebp-4]
 004C0747    call        004C005C
 004C074C    mov         ecx,4C079C
 004C0751    mov         edx,dword ptr [ebp-8]
 004C0754    mov         eax,dword ptr [ebp-4]
 004C0757    call        004CF6EC
 004C075C    mov         eax,dword ptr [ebp-4]
 004C075F    mov         si,0FFC8
 004C0763    call        @CallDynaInst;TControl.sub_004CB93C
 004C0768    and         eax,7F
 004C076B    lea         eax,[eax*8+541604]
 004C0772    mov         edx,dword ptr [ebp-4]
 004C0775    movzx       edx,byte ptr [edx+210];TCustomCheckBox.FAlignment:TLeftRight
 004C077C    mov         eax,dword ptr [eax+edx*4]
 004C077F    mov         edx,dword ptr [ebp-8]
 004C0782    mov         edx,dword ptr [edx+4]
 004C0785    or          edx,5
 004C0788    or          eax,edx
 004C078A    mov         edx,dword ptr [ebp-8]
 004C078D    mov         dword ptr [edx+4],eax
 004C0790    mov         eax,dword ptr [ebp-8]
 004C0793    and         dword ptr [eax+24],0FFFFFFFC
 004C0797    pop         esi
 004C0798    pop         ecx
 004C0799    pop         ecx
 004C079A    pop         ebp
 004C079B    ret
end;*}

//004C07A4
procedure TCustomCheckBox.CreateWnd;
begin
{*
 004C07A4    push        ebp
 004C07A5    mov         ebp,esp
 004C07A7    push        ecx
 004C07A8    mov         dword ptr [ebp-4],eax
 004C07AB    mov         eax,dword ptr [ebp-4]
 004C07AE    call        TWinControl.CreateWnd
 004C07B3    push        0
 004C07B5    mov         eax,dword ptr [ebp-4]
 004C07B8    movzx       eax,byte ptr [eax+212];TCustomCheckBox.FState:TCheckBoxState
 004C07BF    push        eax
 004C07C0    push        0F1
 004C07C5    mov         eax,dword ptr [ebp-4]
 004C07C8    call        TWinControl.GetHandle
 004C07CD    push        eax
 004C07CE    call        user32.SendMessageA
 004C07D3    pop         ecx
 004C07D4    pop         ebp
 004C07D5    ret
*}
end;

//004C07D8
procedure TCustomCheckBox.WMSize(Message:TWMSize);
begin
{*
 004C07D8    push        ebp
 004C07D9    mov         ebp,esp
 004C07DB    add         esp,0FFFFFFF8
 004C07DE    mov         dword ptr [ebp-8],edx
 004C07E1    mov         dword ptr [ebp-4],eax
 004C07E4    mov         edx,dword ptr [ebp-8]
 004C07E7    mov         eax,dword ptr [ebp-4]
 004C07EA    call        TWinControl.WMSize
 004C07EF    mov         eax,dword ptr [ebp-4]
 004C07F2    mov         edx,dword ptr [eax]
 004C07F4    call        dword ptr [edx+7C];TCustomCheckBox.sub_004D3648
 004C07F7    pop         ecx
 004C07F8    pop         ecx
 004C07F9    pop         ebp
 004C07FA    ret
*}
end;

//004C07FC
{*procedure TCustomCheckBox.CMCtl3DChanged(?:?);
begin
 004C07FC    push        ebp
 004C07FD    mov         ebp,esp
 004C07FF    add         esp,0FFFFFFF8
 004C0802    mov         dword ptr [ebp-8],edx
 004C0805    mov         dword ptr [ebp-4],eax
 004C0808    mov         eax,dword ptr [ebp-4]
 004C080B    call        TWinControl.RecreateWnd
 004C0810    pop         ecx
 004C0811    pop         ecx
 004C0812    pop         ebp
 004C0813    ret
end;*}

//004C0814
{*procedure TCustomCheckBox.CMDialogChar(?:?);
begin
 004C0814    push        ebp
 004C0815    mov         ebp,esp
 004C0817    add         esp,0FFFFFFF4
 004C081A    push        esi
 004C081B    xor         ecx,ecx
 004C081D    mov         dword ptr [ebp-0C],ecx
 004C0820    mov         dword ptr [ebp-8],edx
 004C0823    mov         dword ptr [ebp-4],eax
 004C0826    xor         eax,eax
 004C0828    push        ebp
 004C0829    push        4C08B5
 004C082E    push        dword ptr fs:[eax]
 004C0831    mov         dword ptr fs:[eax],esp
 004C0834    lea         edx,[ebp-0C]
 004C0837    mov         eax,dword ptr [ebp-4]
 004C083A    call        TControl.GetText
 004C083F    mov         edx,dword ptr [ebp-0C]
 004C0842    mov         eax,dword ptr [ebp-8]
 004C0845    mov         ax,word ptr [eax+4]
 004C0849    call        004E7E60
 004C084E    test        al,al
>004C0850    je          004C0894
 004C0852    mov         eax,dword ptr [ebp-4]
 004C0855    mov         si,0FFB8
 004C0859    call        @CallDynaInst;TWinControl.sub_004D37A8
 004C085E    test        al,al
>004C0860    je          004C0894
 004C0862    mov         eax,dword ptr [ebp-4]
 004C0865    mov         edx,dword ptr [eax]
 004C0867    call        dword ptr [edx+0C4];TCustomCheckBox.sub_004D3808
 004C086D    mov         eax,dword ptr [ebp-4]
 004C0870    mov         si,0FFB5
 004C0874    call        @CallDynaInst;TWinControl.sub_004D3858
 004C0879    test        al,al
>004C087B    je          004C0888
 004C087D    mov         eax,dword ptr [ebp-4]
 004C0880    mov         edx,dword ptr [eax]
 004C0882    call        dword ptr [edx+0D0];TCustomCheckBox.sub_004C05CC
 004C0888    mov         eax,dword ptr [ebp-8]
 004C088B    mov         dword ptr [eax+0C],1
>004C0892    jmp         004C089F
 004C0894    mov         edx,dword ptr [ebp-8]
 004C0897    mov         eax,dword ptr [ebp-4]
 004C089A    call        TWinControl.CMDialogChar
 004C089F    xor         eax,eax
 004C08A1    pop         edx
 004C08A2    pop         ecx
 004C08A3    pop         ecx
 004C08A4    mov         dword ptr fs:[eax],edx
 004C08A7    push        4C08BC
 004C08AC    lea         eax,[ebp-0C]
 004C08AF    call        @LStrClr
 004C08B4    ret
>004C08B5    jmp         @HandleFinally
>004C08BA    jmp         004C08AC
 004C08BC    pop         esi
 004C08BD    mov         esp,ebp
 004C08BF    pop         ebp
 004C08C0    ret
end;*}

//004C08C4
{*procedure TCustomCheckBox.sub_004C08C4(?:?);
begin
 004C08C4    push        ebp
 004C08C5    mov         ebp,esp
 004C08C7    add         esp,0FFFFFFF8
 004C08CA    mov         dword ptr [ebp-8],edx
 004C08CD    mov         dword ptr [ebp-4],eax
 004C08D0    mov         eax,dword ptr [ebp-8]
 004C08D3    cmp         word ptr [eax+6],0
>004C08D8    jne         004C08E5
 004C08DA    mov         eax,dword ptr [ebp-4]
 004C08DD    mov         edx,dword ptr [eax]
 004C08DF    call        dword ptr [edx+0D0];TCustomCheckBox.sub_004C05CC
 004C08E5    pop         ecx
 004C08E6    pop         ecx
 004C08E7    pop         ebp
 004C08E8    ret
end;*}

//004C08EC
constructor TRadioButton.Create(AOwner:TComponent);
begin
{*
 004C08EC    push        ebp
 004C08ED    mov         ebp,esp
 004C08EF    add         esp,0FFFFFFF4
 004C08F2    test        dl,dl
>004C08F4    je          004C08FE
 004C08F6    add         esp,0FFFFFFF0
 004C08F9    call        @ClassCreate
 004C08FE    mov         dword ptr [ebp-0C],ecx
 004C0901    mov         byte ptr [ebp-5],dl
 004C0904    mov         dword ptr [ebp-4],eax
 004C0907    mov         ecx,dword ptr [ebp-0C]
 004C090A    xor         edx,edx
 004C090C    mov         eax,dword ptr [ebp-4]
 004C090F    call        TButtonControl.Create
 004C0914    mov         edx,71
 004C0919    mov         eax,dword ptr [ebp-4]
 004C091C    call        TControl.SetWidth
 004C0921    mov         edx,11
 004C0926    mov         eax,dword ptr [ebp-4]
 004C0929    call        TControl.SetHeight
 004C092E    mov         eax,dword ptr [ebp-4]
 004C0931    mov         edx,dword ptr ds:[4C0964];0xA0 gvar_004C0964
 004C0937    mov         dword ptr [eax+50],edx;TRadioButton.FControlStyle:TControlStyle
 004C093A    mov         eax,dword ptr [ebp-4]
 004C093D    mov         byte ptr [eax+210],1;TRadioButton.Alignment:TLeftRight
 004C0944    mov         eax,dword ptr [ebp-4]
 004C0947    cmp         byte ptr [ebp-5],0
>004C094B    je          004C095C
 004C094D    call        @AfterConstruction
 004C0952    pop         dword ptr fs:[0]
 004C0959    add         esp,0C
 004C095C    mov         eax,dword ptr [ebp-4]
 004C095F    mov         esp,ebp
 004C0961    pop         ebp
 004C0962    ret
*}
end;

//004C0968
function TRadioButton.GetChecked:Boolean;
begin
{*
 004C0968    push        ebp
 004C0969    mov         ebp,esp
 004C096B    add         esp,0FFFFFFF8
 004C096E    mov         dword ptr [ebp-4],eax
 004C0971    mov         eax,dword ptr [ebp-4]
 004C0974    mov         al,byte ptr [eax+211];TRadioButton.FChecked:Boolean
 004C097A    mov         byte ptr [ebp-5],al
 004C097D    mov         al,byte ptr [ebp-5]
 004C0980    pop         ecx
 004C0981    pop         ecx
 004C0982    pop         ebp
 004C0983    ret
*}
end;

//004C0984
procedure TRadioButton.sub_004C0984;
begin
{*
 004C0984    push        ebp
 004C0985    mov         ebp,esp
 004C0987    add         esp,0FFFFFFF8
 004C098A    push        esi
 004C098B    mov         dword ptr [ebp-4],eax
 004C098E    mov         eax,dword ptr [ebp-4]
 004C0991    mov         si,0FFC8
 004C0995    call        @CallDynaInst;TControl.sub_004CB93C
 004C099A    test        al,al
>004C099C    jne         004C09A4
 004C099E    mov         byte ptr [ebp-5],1
>004C09A2    jmp         004C09BA
 004C09A4    mov         eax,dword ptr [ebp-4]
 004C09A7    cmp         byte ptr [eax+210],1;TRadioButton.Alignment:TLeftRight
>004C09AE    jne         004C09B6
 004C09B0    mov         byte ptr [ebp-5],0
>004C09B4    jmp         004C09BA
 004C09B6    mov         byte ptr [ebp-5],1
 004C09BA    mov         al,byte ptr [ebp-5]
 004C09BD    pop         esi
 004C09BE    pop         ecx
 004C09BF    pop         ecx
 004C09C0    pop         ebp
 004C09C1    ret
*}
end;

//004C09C4
procedure TRadioButton.SetAlignment(Value:TLeftRight);
begin
{*
 004C09C4    push        ebp
 004C09C5    mov         ebp,esp
 004C09C7    add         esp,0FFFFFFF8
 004C09CA    mov         byte ptr [ebp-5],dl
 004C09CD    mov         dword ptr [ebp-4],eax
 004C09D0    mov         eax,dword ptr [ebp-4]
 004C09D3    mov         al,byte ptr [eax+210];TRadioButton.Alignment:TLeftRight
 004C09D9    cmp         al,byte ptr [ebp-5]
>004C09DC    je          004C09F2
 004C09DE    mov         al,byte ptr [ebp-5]
 004C09E1    mov         edx,dword ptr [ebp-4]
 004C09E4    mov         byte ptr [edx+210],al;TRadioButton.Alignment:TLeftRight
 004C09EA    mov         eax,dword ptr [ebp-4]
 004C09ED    call        TWinControl.RecreateWnd
 004C09F2    pop         ecx
 004C09F3    pop         ecx
 004C09F4    pop         ebp
 004C09F5    ret
*}
end;

//004C09F8
{*procedure sub_004C09F8(?:?);
begin
 004C09F8    push        ebp
 004C09F9    mov         ebp,esp
 004C09FB    add         esp,0FFFFFFF0
 004C09FE    mov         eax,dword ptr [ebp+8]
 004C0A01    mov         eax,dword ptr [eax-4]
 004C0A04    cmp         dword ptr [eax+30],0
>004C0A08    je          004C0ABD
 004C0A0E    mov         eax,dword ptr [ebp+8]
 004C0A11    mov         eax,dword ptr [eax-4]
 004C0A14    mov         eax,dword ptr [eax+30]
 004C0A17    mov         dword ptr [ebp-0C],eax
 004C0A1A    mov         eax,dword ptr [ebp-0C]
 004C0A1D    call        004CF618
 004C0A22    dec         eax
 004C0A23    test        eax,eax
>004C0A25    jl          004C0ABD
 004C0A2B    inc         eax
 004C0A2C    mov         dword ptr [ebp-10],eax
 004C0A2F    mov         dword ptr [ebp-4],0
 004C0A36    mov         edx,dword ptr [ebp-4]
 004C0A39    mov         eax,dword ptr [ebp-0C]
 004C0A3C    call        004CF5AC
 004C0A41    mov         dword ptr [ebp-8],eax
 004C0A44    mov         eax,dword ptr [ebp+8]
 004C0A47    mov         eax,dword ptr [eax-4]
 004C0A4A    cmp         eax,dword ptr [ebp-8]
>004C0A4D    je          004C0AB1
 004C0A4F    mov         eax,dword ptr [ebp-8]
 004C0A52    mov         edx,dword ptr ds:[4BAEC0];TRadioButton
 004C0A58    call        @IsClass
 004C0A5D    test        al,al
>004C0A5F    je          004C0AB1
 004C0A61    mov         eax,dword ptr [ebp-8]
 004C0A64    mov         edx,dword ptr [eax]
 004C0A66    call        dword ptr [edx+3C]
 004C0A69    test        eax,eax
>004C0A6B    je          004C0AA4
 004C0A6D    mov         eax,dword ptr [ebp-8]
 004C0A70    mov         edx,dword ptr [eax]
 004C0A72    call        dword ptr [edx+3C]
 004C0A75    mov         edx,dword ptr ds:[4DA408];TCustomAction
 004C0A7B    call        @IsClass
 004C0A80    test        al,al
>004C0A82    je          004C0AA4
 004C0A84    mov         eax,dword ptr [ebp-8]
 004C0A87    mov         edx,dword ptr [eax]
 004C0A89    call        dword ptr [edx+3C]
 004C0A8C    cmp         byte ptr [eax+95],0
>004C0A93    je          004C0AA4
 004C0A95    mov         eax,dword ptr [ebp-8]
 004C0A98    mov         edx,dword ptr [eax]
 004C0A9A    call        dword ptr [edx+3C]
 004C0A9D    xor         edx,edx
 004C0A9F    call        TAction.SetChecked
 004C0AA4    xor         edx,edx
 004C0AA6    mov         eax,dword ptr [ebp-8]
 004C0AA9    mov         ecx,dword ptr [eax]
 004C0AAB    call        dword ptr [ecx+0CC]
 004C0AB1    inc         dword ptr [ebp-4]
 004C0AB4    dec         dword ptr [ebp-10]
>004C0AB7    jne         004C0A36
 004C0ABD    mov         esp,ebp
 004C0ABF    pop         ebp
 004C0AC0    ret
end;*}

//004C0AC4
procedure TRadioButton.SetChecked(Value:Boolean);
begin
{*
 004C0AC4    push        ebp
 004C0AC5    mov         ebp,esp
 004C0AC7    add         esp,0FFFFFFF8
 004C0ACA    push        esi
 004C0ACB    mov         byte ptr [ebp-5],dl
 004C0ACE    mov         dword ptr [ebp-4],eax
 004C0AD1    mov         eax,dword ptr [ebp-4]
 004C0AD4    mov         al,byte ptr [eax+211];TRadioButton.FChecked:Boolean
 004C0ADA    cmp         al,byte ptr [ebp-5]
>004C0ADD    je          004C0B53
 004C0ADF    mov         eax,dword ptr [ebp-4]
 004C0AE2    mov         dl,byte ptr [ebp-5]
 004C0AE5    mov         byte ptr [eax+211],dl;TRadioButton.FChecked:Boolean
 004C0AEB    mov         dl,byte ptr [ebp-5]
 004C0AEE    mov         eax,dword ptr [ebp-4]
 004C0AF1    call        TPanel.SetTabStop
 004C0AF6    mov         eax,dword ptr [ebp-4]
 004C0AF9    call        TWinControl.HandleAllocated
 004C0AFE    test        al,al
>004C0B00    je          004C0B26
 004C0B02    push        0
 004C0B04    mov         eax,dword ptr [ebp-4]
 004C0B07    mov         edx,dword ptr [eax]
 004C0B09    call        dword ptr [edx+0C8];TRadioButton.GetChecked
 004C0B0F    and         eax,7F
 004C0B12    push        eax
 004C0B13    push        0F1
 004C0B18    mov         eax,dword ptr [ebp-4]
 004C0B1B    call        TWinControl.GetHandle
 004C0B20    push        eax
 004C0B21    call        user32.SendMessageA
 004C0B26    cmp         byte ptr [ebp-5],0
>004C0B2A    je          004C0B53
 004C0B2C    push        ebp
 004C0B2D    call        004C09F8
 004C0B32    pop         ecx
 004C0B33    mov         eax,dword ptr [ebp-4]
 004C0B36    call        004CA9F8
 004C0B3B    mov         eax,dword ptr [ebp-4]
 004C0B3E    cmp         byte ptr [eax+208],0;TRadioButton.FClicksDisabled:Boolean
>004C0B45    jne         004C0B53
 004C0B47    mov         eax,dword ptr [ebp-4]
 004C0B4A    mov         si,0FFEB
 004C0B4E    call        @CallDynaInst;TControl.sub_004CCCAC
 004C0B53    pop         esi
 004C0B54    pop         ecx
 004C0B55    pop         ecx
 004C0B56    pop         ebp
 004C0B57    ret
*}
end;

//004C0B58
{*procedure sub_004C0B58(?:?);
begin
 004C0B58    push        ebp
 004C0B59    mov         ebp,esp
 004C0B5B    add         esp,0FFFFFFF8
 004C0B5E    push        esi
 004C0B5F    mov         dword ptr [ebp-8],edx
 004C0B62    mov         dword ptr [ebp-4],eax
 004C0B65    mov         edx,dword ptr [ebp-8]
 004C0B68    mov         eax,dword ptr [ebp-4]
 004C0B6B    call        004C005C
 004C0B70    mov         ecx,4C0BBC
 004C0B75    mov         edx,dword ptr [ebp-8]
 004C0B78    mov         eax,dword ptr [ebp-4]
 004C0B7B    call        004CF6EC
 004C0B80    mov         eax,dword ptr [ebp-4]
 004C0B83    mov         si,0FFC8
 004C0B87    call        @CallDynaInst;TControl.sub_004CB93C
 004C0B8C    and         eax,7F
 004C0B8F    lea         eax,[eax*8+541614]
 004C0B96    mov         edx,dword ptr [ebp-4]
 004C0B99    movzx       edx,byte ptr [edx+210];TRadioButton.Alignment:TLeftRight
 004C0BA0    mov         eax,dword ptr [eax+edx*4]
 004C0BA3    mov         edx,dword ptr [ebp-8]
 004C0BA6    mov         edx,dword ptr [edx+4]
 004C0BA9    or          edx,4
 004C0BAC    or          eax,edx
 004C0BAE    mov         edx,dword ptr [ebp-8]
 004C0BB1    mov         dword ptr [edx+4],eax
 004C0BB4    pop         esi
 004C0BB5    pop         ecx
 004C0BB6    pop         ecx
 004C0BB7    pop         ebp
 004C0BB8    ret
end;*}

//004C0BC4
procedure TRadioButton.CreateWnd;
begin
{*
 004C0BC4    push        ebp
 004C0BC5    mov         ebp,esp
 004C0BC7    push        ecx
 004C0BC8    mov         dword ptr [ebp-4],eax
 004C0BCB    mov         eax,dword ptr [ebp-4]
 004C0BCE    call        TWinControl.CreateWnd
 004C0BD3    push        0
 004C0BD5    mov         eax,dword ptr [ebp-4]
 004C0BD8    movzx       eax,byte ptr [eax+211];TRadioButton.FChecked:Boolean
 004C0BDF    push        eax
 004C0BE0    push        0F1
 004C0BE5    mov         eax,dword ptr [ebp-4]
 004C0BE8    call        TWinControl.GetHandle
 004C0BED    push        eax
 004C0BEE    call        user32.SendMessageA
 004C0BF3    pop         ecx
 004C0BF4    pop         ebp
 004C0BF5    ret
*}
end;

//004C0BF8
{*procedure TRadioButton.CMCtl3DChanged(?:?);
begin
 004C0BF8    push        ebp
 004C0BF9    mov         ebp,esp
 004C0BFB    add         esp,0FFFFFFF8
 004C0BFE    mov         dword ptr [ebp-8],edx
 004C0C01    mov         dword ptr [ebp-4],eax
 004C0C04    mov         eax,dword ptr [ebp-4]
 004C0C07    call        TWinControl.RecreateWnd
 004C0C0C    pop         ecx
 004C0C0D    pop         ecx
 004C0C0E    pop         ebp
 004C0C0F    ret
end;*}

//004C0C10
{*procedure TRadioButton.CMDialogChar(?:?);
begin
 004C0C10    push        ebp
 004C0C11    mov         ebp,esp
 004C0C13    add         esp,0FFFFFFF4
 004C0C16    push        esi
 004C0C17    xor         ecx,ecx
 004C0C19    mov         dword ptr [ebp-0C],ecx
 004C0C1C    mov         dword ptr [ebp-8],edx
 004C0C1F    mov         dword ptr [ebp-4],eax
 004C0C22    xor         eax,eax
 004C0C24    push        ebp
 004C0C25    push        4C0C96
 004C0C2A    push        dword ptr fs:[eax]
 004C0C2D    mov         dword ptr fs:[eax],esp
 004C0C30    lea         edx,[ebp-0C]
 004C0C33    mov         eax,dword ptr [ebp-4]
 004C0C36    call        TControl.GetText
 004C0C3B    mov         edx,dword ptr [ebp-0C]
 004C0C3E    mov         eax,dword ptr [ebp-8]
 004C0C41    mov         ax,word ptr [eax+4]
 004C0C45    call        004E7E60
 004C0C4A    test        al,al
>004C0C4C    je          004C0C75
 004C0C4E    mov         eax,dword ptr [ebp-4]
 004C0C51    mov         si,0FFB8
 004C0C55    call        @CallDynaInst;TWinControl.sub_004D37A8
 004C0C5A    test        al,al
>004C0C5C    je          004C0C75
 004C0C5E    mov         eax,dword ptr [ebp-4]
 004C0C61    mov         edx,dword ptr [eax]
 004C0C63    call        dword ptr [edx+0C4];TRadioButton.sub_004D3808
 004C0C69    mov         eax,dword ptr [ebp-8]
 004C0C6C    mov         dword ptr [eax+0C],1
>004C0C73    jmp         004C0C80
 004C0C75    mov         edx,dword ptr [ebp-8]
 004C0C78    mov         eax,dword ptr [ebp-4]
 004C0C7B    call        TWinControl.CMDialogChar
 004C0C80    xor         eax,eax
 004C0C82    pop         edx
 004C0C83    pop         ecx
 004C0C84    pop         ecx
 004C0C85    mov         dword ptr fs:[eax],edx
 004C0C88    push        4C0C9D
 004C0C8D    lea         eax,[ebp-0C]
 004C0C90    call        @LStrClr
 004C0C95    ret
>004C0C96    jmp         @HandleFinally
>004C0C9B    jmp         004C0C8D
 004C0C9D    pop         esi
 004C0C9E    mov         esp,ebp
 004C0CA0    pop         ebp
 004C0CA1    ret
end;*}

//004C0CA4
{*procedure TRadioButton.sub_004C0CA4(?:?);
begin
 004C0CA4    push        ebp
 004C0CA5    mov         ebp,esp
 004C0CA7    add         esp,0FFFFFFF8
 004C0CAA    push        esi
 004C0CAB    mov         dword ptr [ebp-8],edx
 004C0CAE    mov         dword ptr [ebp-4],eax
 004C0CB1    mov         eax,dword ptr [ebp-8]
 004C0CB4    mov         ax,word ptr [eax+6]
 004C0CB8    sub         ax,1
>004C0CBC    jb          004C0CC6
 004C0CBE    sub         ax,4
>004C0CC2    je          004C0CD5
>004C0CC4    jmp         004C0CE1
 004C0CC6    mov         dl,1
 004C0CC8    mov         eax,dword ptr [ebp-4]
 004C0CCB    mov         ecx,dword ptr [eax]
 004C0CCD    call        dword ptr [ecx+0CC];TRadioButton.SetChecked
>004C0CD3    jmp         004C0CE1
 004C0CD5    mov         eax,dword ptr [ebp-4]
 004C0CD8    mov         si,0FFE9
 004C0CDC    call        @CallDynaInst;TControl.sub_004CCD3C
 004C0CE1    pop         esi
 004C0CE2    pop         ecx
 004C0CE3    pop         ecx
 004C0CE4    pop         ebp
 004C0CE5    ret
end;*}

//004C0CE8
{*function sub_004C0CE8:?;
begin
 004C0CE8    push        ebp
 004C0CE9    mov         ebp,esp
 004C0CEB    add         esp,0FFFFFFF8
 004C0CEE    mov         dword ptr [ebp-4],eax
 004C0CF1    push        0
 004C0CF3    push        0
 004C0CF5    push        18B
 004C0CFA    mov         eax,dword ptr [ebp-4]
 004C0CFD    mov         eax,dword ptr [eax+10];TListBoxStrings...........................................ListBox...
 004C0D00    call        TWinControl.GetHandle
 004C0D05    push        eax
 004C0D06    call        user32.SendMessageA
 004C0D0B    mov         dword ptr [ebp-8],eax
 004C0D0E    mov         eax,dword ptr [ebp-8]
 004C0D11    pop         ecx
 004C0D12    pop         ecx
 004C0D13    pop         ebp
 004C0D14    ret
end;*}

//004C0D18
{*procedure sub_004C0D18(?:?; ?:?);
begin
 004C0D18    push        ebp
 004C0D19    mov         ebp,esp
 004C0D1B    add         esp,0FFFFFFEC
 004C0D1E    push        ebx
 004C0D1F    xor         ebx,ebx
 004C0D21    mov         dword ptr [ebp-14],ebx
 004C0D24    mov         dword ptr [ebp-0C],ecx
 004C0D27    mov         dword ptr [ebp-8],edx
 004C0D2A    mov         dword ptr [ebp-4],eax
 004C0D2D    xor         eax,eax
 004C0D2F    push        ebp
 004C0D30    push        4C0DFD
 004C0D35    push        dword ptr fs:[eax]
 004C0D38    mov         dword ptr fs:[eax],esp
 004C0D3B    mov         eax,dword ptr [ebp-4]
 004C0D3E    mov         eax,dword ptr [eax+10];TListBoxStrings............................................ListBo...
 004C0D41    mov         al,byte ptr [eax+238];TCustomListBox.FStyle:TListBoxStyle
 004C0D47    add         al,0FD
 004C0D49    sub         al,2
>004C0D4B    jae         004C0D63
 004C0D4D    mov         ecx,dword ptr [ebp-0C]
 004C0D50    mov         edx,dword ptr [ebp-8]
 004C0D53    mov         eax,dword ptr [ebp-4]
 004C0D56    mov         eax,dword ptr [eax+10];TListBoxStrings.............................................ListB...
 004C0D59    call        004C300C
>004C0D5E    jmp         004C0DE7
 004C0D63    push        0
 004C0D65    mov         eax,dword ptr [ebp-8]
 004C0D68    push        eax
 004C0D69    push        18A
 004C0D6E    mov         eax,dword ptr [ebp-4]
 004C0D71    mov         eax,dword ptr [eax+10];TListBoxStrings..............................................List...
 004C0D74    call        TWinControl.GetHandle
 004C0D79    push        eax
 004C0D7A    call        user32.SendMessageA
 004C0D7F    mov         dword ptr [ebp-10],eax
 004C0D82    cmp         dword ptr [ebp-10],0FFFFFFFF
>004C0D86    jne         004C0DA3
 004C0D88    lea         edx,[ebp-14]
 004C0D8B    mov         eax,[0055B590];^SListIndexError:TResStringRec
 004C0D90    call        LoadResString
 004C0D95    mov         edx,dword ptr [ebp-14]
 004C0D98    mov         ecx,dword ptr [ebp-8]
 004C0D9B    mov         eax,dword ptr [ebp-4]
 004C0D9E    call        0047A3D8
 004C0DA3    mov         eax,dword ptr [ebp-0C]
 004C0DA6    mov         edx,dword ptr [ebp-10]
 004C0DA9    call        @LStrSetLength
 004C0DAE    cmp         dword ptr [ebp-10],0
>004C0DB2    je          004C0DE7
 004C0DB4    mov         eax,dword ptr [ebp-0C]
 004C0DB7    mov         eax,dword ptr [eax]
 004C0DB9    call        @LStrToPChar
 004C0DBE    push        eax
 004C0DBF    mov         eax,dword ptr [ebp-8]
 004C0DC2    push        eax
 004C0DC3    push        189
 004C0DC8    mov         eax,dword ptr [ebp-4]
 004C0DCB    mov         eax,dword ptr [eax+10];TListBoxStrings...............................................Lis...
 004C0DCE    call        TWinControl.GetHandle
 004C0DD3    push        eax
 004C0DD4    call        user32.SendMessageA
 004C0DD9    mov         dword ptr [ebp-10],eax
 004C0DDC    mov         eax,dword ptr [ebp-0C]
 004C0DDF    mov         edx,dword ptr [ebp-10]
 004C0DE2    call        @LStrSetLength
 004C0DE7    xor         eax,eax
 004C0DE9    pop         edx
 004C0DEA    pop         ecx
 004C0DEB    pop         ecx
 004C0DEC    mov         dword ptr fs:[eax],edx
 004C0DEF    push        4C0E04
 004C0DF4    lea         eax,[ebp-14]
 004C0DF7    call        @LStrClr
 004C0DFC    ret
>004C0DFD    jmp         @HandleFinally
>004C0E02    jmp         004C0DF4
 004C0E04    pop         ebx
 004C0E05    mov         esp,ebp
 004C0E07    pop         ebp
 004C0E08    ret
end;*}

//004C0E0C
{*function sub_004C0E0C(?:?):?;
begin
 004C0E0C    push        ebp
 004C0E0D    mov         ebp,esp
 004C0E0F    add         esp,0FFFFFFF0
 004C0E12    push        esi
 004C0E13    xor         ecx,ecx
 004C0E15    mov         dword ptr [ebp-10],ecx
 004C0E18    mov         dword ptr [ebp-8],edx
 004C0E1B    mov         dword ptr [ebp-4],eax
 004C0E1E    xor         eax,eax
 004C0E20    push        ebp
 004C0E21    push        4C0E9D
 004C0E26    push        dword ptr fs:[eax]
 004C0E29    mov         dword ptr fs:[eax],esp
 004C0E2C    mov         eax,dword ptr [ebp-4]
 004C0E2F    mov         eax,dword ptr [eax+10];TListBoxStrings................................................Li...
 004C0E32    mov         al,byte ptr [eax+238];TCustomListBox.FStyle:TListBoxStyle
 004C0E38    add         al,0FD
 004C0E3A    sub         al,2
>004C0E3C    jae         004C0E51
 004C0E3E    mov         edx,dword ptr [ebp-8]
 004C0E41    mov         eax,dword ptr [ebp-4]
 004C0E44    mov         eax,dword ptr [eax+10];TListBoxStrings.................................................L...
 004C0E47    call        004C3048
 004C0E4C    mov         dword ptr [ebp-0C],eax
>004C0E4F    jmp         004C0E87
 004C0E51    mov         edx,dword ptr [ebp-8]
 004C0E54    mov         eax,dword ptr [ebp-4]
 004C0E57    mov         eax,dword ptr [eax+10];TListBoxStrings.....................................................
 004C0E5A    mov         si,0FFB1
 004C0E5E    call        @CallDynaInst;TCustomListBox.sub_004C1638
 004C0E63    mov         dword ptr [ebp-0C],eax
 004C0E66    cmp         dword ptr [ebp-0C],0FFFFFFFF
>004C0E6A    jne         004C0E87
 004C0E6C    lea         edx,[ebp-10]
 004C0E6F    mov         eax,[0055B590];^SListIndexError:TResStringRec
 004C0E74    call        LoadResString
 004C0E79    mov         edx,dword ptr [ebp-10]
 004C0E7C    mov         ecx,dword ptr [ebp-8]
 004C0E7F    mov         eax,dword ptr [ebp-4]
 004C0E82    call        0047A3D8
 004C0E87    xor         eax,eax
 004C0E89    pop         edx
 004C0E8A    pop         ecx
 004C0E8B    pop         ecx
 004C0E8C    mov         dword ptr fs:[eax],edx
 004C0E8F    push        4C0EA4
 004C0E94    lea         eax,[ebp-10]
 004C0E97    call        @LStrClr
 004C0E9C    ret
>004C0E9D    jmp         @HandleFinally
>004C0EA2    jmp         004C0E94
 004C0EA4    mov         eax,dword ptr [ebp-0C]
 004C0EA7    pop         esi
 004C0EA8    mov         esp,ebp
 004C0EAA    pop         ebp
 004C0EAB    ret
end;*}

//004C0EAC
{*procedure sub_004C0EAC(?:?; ?:?);
begin
 004C0EAC    push        ebp
 004C0EAD    mov         ebp,esp
 004C0EAF    add         esp,0FFFFFFEC
 004C0EB2    push        ebx
 004C0EB3    push        esi
 004C0EB4    mov         dword ptr [ebp-0C],ecx
 004C0EB7    mov         dword ptr [ebp-8],edx
 004C0EBA    mov         dword ptr [ebp-4],eax
 004C0EBD    mov         eax,dword ptr [ebp-4]
 004C0EC0    mov         eax,dword ptr [eax+10];TListBoxStrings.....................................................
 004C0EC3    mov         edx,dword ptr [eax]
 004C0EC5    call        dword ptr [edx+0CC];TCustomListBox.sub_004C1A60
 004C0ECB    mov         dword ptr [ebp-10],eax
 004C0ECE    mov         edx,dword ptr [ebp-8]
 004C0ED1    mov         eax,dword ptr [ebp-4]
 004C0ED4    mov         eax,dword ptr [eax+10];TListBoxStrings.....................................................
 004C0ED7    mov         si,0FFB3
 004C0EDB    call        @CallDynaInst;TCustomListBox.sub_004C1698
 004C0EE0    mov         dword ptr [ebp-14],eax
 004C0EE3    xor         ecx,ecx
 004C0EE5    mov         edx,dword ptr [ebp-8]
 004C0EE8    mov         eax,dword ptr [ebp-4]
 004C0EEB    mov         eax,dword ptr [eax+10];TListBoxStrings.....................................................
 004C0EEE    mov         si,0FFB2
 004C0EF2    call        @CallDynaInst;TCustomListBox.sub_004C16C0
 004C0EF7    mov         edx,dword ptr [ebp-8]
 004C0EFA    mov         eax,dword ptr [ebp-4]
 004C0EFD    mov         ecx,dword ptr [eax]
 004C0EFF    call        dword ptr [ecx+48];TListBoxStrings.sub_004C10CC
 004C0F02    push        0
 004C0F04    mov         ecx,dword ptr [ebp-0C]
 004C0F07    mov         edx,dword ptr [ebp-8]
 004C0F0A    mov         eax,dword ptr [ebp-4]
 004C0F0D    mov         ebx,dword ptr [eax]
 004C0F0F    call        dword ptr [ebx+64];TListBoxStrings.sub_0047AA78
 004C0F12    mov         ecx,dword ptr [ebp-14]
 004C0F15    mov         edx,dword ptr [ebp-8]
 004C0F18    mov         eax,dword ptr [ebp-4]
 004C0F1B    mov         eax,dword ptr [eax+10];TListBoxStrings.....................................................
 004C0F1E    mov         si,0FFB2
 004C0F22    call        @CallDynaInst;TCustomListBox.sub_004C16C0
 004C0F27    mov         edx,dword ptr [ebp-10]
 004C0F2A    mov         eax,dword ptr [ebp-4]
 004C0F2D    mov         eax,dword ptr [eax+10];TListBoxStrings.....................................................
 004C0F30    mov         ecx,dword ptr [eax]
 004C0F32    call        dword ptr [ecx+0D0];TCustomListBox.sub_004C1B20
 004C0F38    pop         esi
 004C0F39    pop         ebx
 004C0F3A    mov         esp,ebp
 004C0F3C    pop         ebp
 004C0F3D    ret
end;*}

//004C0F40
{*procedure sub_004C0F40(?:?; ?:?);
begin
 004C0F40    push        ebp
 004C0F41    mov         ebp,esp
 004C0F43    add         esp,0FFFFFFF4
 004C0F46    push        esi
 004C0F47    mov         dword ptr [ebp-0C],ecx
 004C0F4A    mov         dword ptr [ebp-8],edx
 004C0F4D    mov         dword ptr [ebp-4],eax
 004C0F50    cmp         dword ptr [ebp-8],0FFFFFFFF
>004C0F54    je          004C0F7D
 004C0F56    mov         eax,dword ptr [ebp-4]
 004C0F59    mov         eax,dword ptr [eax+10];TListBoxStrings.....................................................
 004C0F5C    mov         al,byte ptr [eax+238];TCustomListBox.FStyle:TListBoxStyle
 004C0F62    add         al,0FD
 004C0F64    sub         al,2
>004C0F66    jb          004C0F7D
 004C0F68    mov         ecx,dword ptr [ebp-0C]
 004C0F6B    mov         edx,dword ptr [ebp-8]
 004C0F6E    mov         eax,dword ptr [ebp-4]
 004C0F71    mov         eax,dword ptr [eax+10];TListBoxStrings.....................................................
 004C0F74    mov         si,0FFB0
 004C0F78    call        @CallDynaInst;TCustomListBox.sub_004C1668
 004C0F7D    pop         esi
 004C0F7E    mov         esp,ebp
 004C0F80    pop         ebp
 004C0F81    ret
end;*}

//004C0F84
{*function sub_004C0F84(?:?):?;
begin
 004C0F84    push        ebp
 004C0F85    mov         ebp,esp
 004C0F87    add         esp,0FFFFFFF0
 004C0F8A    xor         ecx,ecx
 004C0F8C    mov         dword ptr [ebp-10],ecx
 004C0F8F    mov         dword ptr [ebp-8],edx
 004C0F92    mov         dword ptr [ebp-4],eax
 004C0F95    xor         eax,eax
 004C0F97    push        ebp
 004C0F98    push        4C101D
 004C0F9D    push        dword ptr fs:[eax]
 004C0FA0    mov         dword ptr fs:[eax],esp
 004C0FA3    mov         dword ptr [ebp-0C],0FFFFFFFF
 004C0FAA    mov         eax,dword ptr [ebp-4]
 004C0FAD    mov         eax,dword ptr [eax+10];TListBoxStrings.....................................................
 004C0FB0    mov         al,byte ptr [eax+238];TCustomListBox.FStyle:TListBoxStyle
 004C0FB6    add         al,0FD
 004C0FB8    sub         al,2
>004C0FBA    jb          004C1007
 004C0FBC    mov         eax,dword ptr [ebp-8]
 004C0FBF    call        @LStrToPChar
 004C0FC4    push        eax
 004C0FC5    push        0
 004C0FC7    push        180
 004C0FCC    mov         eax,dword ptr [ebp-4]
 004C0FCF    mov         eax,dword ptr [eax+10];TListBoxStrings.....................................................
 004C0FD2    call        TWinControl.GetHandle
 004C0FD7    push        eax
 004C0FD8    call        user32.SendMessageA
 004C0FDD    mov         dword ptr [ebp-0C],eax
 004C0FE0    cmp         dword ptr [ebp-0C],0
>004C0FE4    jge         004C1007
 004C0FE6    lea         edx,[ebp-10]
 004C0FE9    mov         eax,[0055B238];^SInsertLineError:TResStringRec
 004C0FEE    call        LoadResString
 004C0FF3    mov         ecx,dword ptr [ebp-10]
 004C0FF6    mov         dl,1
 004C0FF8    mov         eax,[00475904];EOutOfResources
 004C0FFD    call        Exception.Create;EOutOfResources.Create
 004C1002    call        @RaiseExcept
 004C1007    xor         eax,eax
 004C1009    pop         edx
 004C100A    pop         ecx
 004C100B    pop         ecx
 004C100C    mov         dword ptr fs:[eax],edx
 004C100F    push        4C1024
 004C1014    lea         eax,[ebp-10]
 004C1017    call        @LStrClr
 004C101C    ret
>004C101D    jmp         @HandleFinally
>004C1022    jmp         004C1014
 004C1024    mov         eax,dword ptr [ebp-0C]
 004C1027    mov         esp,ebp
 004C1029    pop         ebp
 004C102A    ret
end;*}

//004C102C
{*procedure sub_004C102C(?:?; ?:?);
begin
 004C102C    push        ebp
 004C102D    mov         ebp,esp
 004C102F    add         esp,0FFFFFFF0
 004C1032    push        ebx
 004C1033    xor         ebx,ebx
 004C1035    mov         dword ptr [ebp-10],ebx
 004C1038    mov         dword ptr [ebp-0C],ecx
 004C103B    mov         dword ptr [ebp-8],edx
 004C103E    mov         dword ptr [ebp-4],eax
 004C1041    xor         eax,eax
 004C1043    push        ebp
 004C1044    push        4C10BF
 004C1049    push        dword ptr fs:[eax]
 004C104C    mov         dword ptr fs:[eax],esp
 004C104F    mov         eax,dword ptr [ebp-4]
 004C1052    mov         eax,dword ptr [eax+10];TListBoxStrings.....................................................
 004C1055    mov         al,byte ptr [eax+238];TCustomListBox.FStyle:TListBoxStyle
 004C105B    add         al,0FD
 004C105D    sub         al,2
>004C105F    jb          004C10A9
 004C1061    mov         eax,dword ptr [ebp-0C]
 004C1064    call        @LStrToPChar
 004C1069    push        eax
 004C106A    mov         eax,dword ptr [ebp-8]
 004C106D    push        eax
 004C106E    push        181
 004C1073    mov         eax,dword ptr [ebp-4]
 004C1076    mov         eax,dword ptr [eax+10];TListBoxStrings.....................................................
 004C1079    call        TWinControl.GetHandle
 004C107E    push        eax
 004C107F    call        user32.SendMessageA
 004C1084    test        eax,eax
>004C1086    jge         004C10A9
 004C1088    lea         edx,[ebp-10]
 004C108B    mov         eax,[0055B238];^SInsertLineError:TResStringRec
 004C1090    call        LoadResString
 004C1095    mov         ecx,dword ptr [ebp-10]
 004C1098    mov         dl,1
 004C109A    mov         eax,[00475904];EOutOfResources
 004C109F    call        Exception.Create;EOutOfResources.Create
 004C10A4    call        @RaiseExcept
 004C10A9    xor         eax,eax
 004C10AB    pop         edx
 004C10AC    pop         ecx
 004C10AD    pop         ecx
 004C10AE    mov         dword ptr fs:[eax],edx
 004C10B1    push        4C10C6
 004C10B6    lea         eax,[ebp-10]
 004C10B9    call        @LStrClr
 004C10BE    ret
>004C10BF    jmp         @HandleFinally
>004C10C4    jmp         004C10B6
 004C10C6    pop         ebx
 004C10C7    mov         esp,ebp
 004C10C9    pop         ebp
 004C10CA    ret
end;*}

//004C10CC
{*procedure sub_004C10CC(?:?);
begin
 004C10CC    push        ebp
 004C10CD    mov         ebp,esp
 004C10CF    add         esp,0FFFFFFF8
 004C10D2    push        esi
 004C10D3    mov         dword ptr [ebp-8],edx
 004C10D6    mov         dword ptr [ebp-4],eax
 004C10D9    mov         edx,dword ptr [ebp-8]
 004C10DC    mov         eax,dword ptr [ebp-4]
 004C10DF    mov         eax,dword ptr [eax+10];TListBoxStrings.....................................................
 004C10E2    mov         si,0FFAE
 004C10E6    call        @CallDynaInst;TCustomListBox.sub_004C16E8
 004C10EB    pop         esi
 004C10EC    pop         ecx
 004C10ED    pop         ecx
 004C10EE    pop         ebp
 004C10EF    ret
end;*}

//004C10F0
{*procedure sub_004C10F0(?:?; ?:?);
begin
 004C10F0    push        ebp
 004C10F1    mov         ebp,esp
 004C10F3    add         esp,0FFFFFFE8
 004C10F6    push        ebx
 004C10F7    push        esi
 004C10F8    xor         ebx,ebx
 004C10FA    mov         dword ptr [ebp-18],ebx
 004C10FD    mov         dword ptr [ebp-14],ebx
 004C1100    mov         dword ptr [ebp-0C],ecx
 004C1103    mov         dword ptr [ebp-8],edx
 004C1106    mov         dword ptr [ebp-4],eax
 004C1109    xor         eax,eax
 004C110B    push        ebp
 004C110C    push        4C124D
 004C1111    push        dword ptr fs:[eax]
 004C1114    mov         dword ptr fs:[eax],esp
 004C1117    mov         eax,dword ptr [ebp-4]
 004C111A    mov         eax,dword ptr [eax+10];TListBoxStrings.....................................................
 004C111D    mov         al,byte ptr [eax+238];TCustomListBox.FStyle:TListBoxStyle
 004C1123    add         al,0FD
 004C1125    sub         al,2
>004C1127    jb          004C1232
 004C112D    mov         eax,dword ptr [ebp-4]
 004C1130    call        TStrings.BeginUpdate
 004C1135    xor         eax,eax
 004C1137    push        ebp
 004C1138    push        4C122B
 004C113D    push        dword ptr fs:[eax]
 004C1140    mov         dword ptr fs:[eax],esp
 004C1143    lea         ecx,[ebp-14]
 004C1146    mov         edx,dword ptr [ebp-8]
 004C1149    mov         eax,dword ptr [ebp-4]
 004C114C    mov         ebx,dword ptr [eax]
 004C114E    call        dword ptr [ebx+0C];TListBoxStrings.sub_004C0D18
 004C1151    mov         eax,dword ptr [ebp-4]
 004C1154    mov         eax,dword ptr [eax+10];TListBoxStrings.....................................................
 004C1157    mov         edx,dword ptr [ebp-8]
 004C115A    mov         si,0FFB3
 004C115E    call        @CallDynaInst;TCustomListBox.sub_004C1698
 004C1163    mov         dword ptr [ebp-10],eax
 004C1166    lea         ecx,[ebp-18]
 004C1169    mov         edx,dword ptr [ebp-0C]
 004C116C    mov         eax,dword ptr [ebp-4]
 004C116F    mov         ebx,dword ptr [eax]
 004C1171    call        dword ptr [ebx+0C];TListBoxStrings.sub_004C0D18
 004C1174    mov         ecx,dword ptr [ebp-18]
 004C1177    mov         edx,dword ptr [ebp-8]
 004C117A    mov         eax,dword ptr [ebp-4]
 004C117D    mov         ebx,dword ptr [eax]
 004C117F    call        dword ptr [ebx+20];TListBoxStrings.sub_004C0EAC
 004C1182    mov         eax,dword ptr [ebp-4]
 004C1185    mov         eax,dword ptr [eax+10];TListBoxStrings.....................................................
 004C1188    mov         edx,dword ptr [ebp-0C]
 004C118B    mov         si,0FFB3
 004C118F    call        @CallDynaInst;TCustomListBox.sub_004C1698
 004C1194    mov         ecx,eax
 004C1196    mov         eax,dword ptr [ebp-4]
 004C1199    mov         eax,dword ptr [eax+10];TListBoxStrings.....................................................
 004C119C    mov         edx,dword ptr [ebp-8]
 004C119F    mov         si,0FFB2
 004C11A3    call        @CallDynaInst;TCustomListBox.sub_004C16C0
 004C11A8    mov         ecx,dword ptr [ebp-14]
 004C11AB    mov         edx,dword ptr [ebp-0C]
 004C11AE    mov         eax,dword ptr [ebp-4]
 004C11B1    mov         ebx,dword ptr [eax]
 004C11B3    call        dword ptr [ebx+20];TListBoxStrings.sub_004C0EAC
 004C11B6    mov         eax,dword ptr [ebp-4]
 004C11B9    mov         eax,dword ptr [eax+10];TListBoxStrings.....................................................
 004C11BC    mov         ecx,dword ptr [ebp-10]
 004C11BF    mov         edx,dword ptr [ebp-0C]
 004C11C2    mov         si,0FFB2
 004C11C6    call        @CallDynaInst;TCustomListBox.sub_004C16C0
 004C11CB    mov         eax,dword ptr [ebp-4]
 004C11CE    mov         eax,dword ptr [eax+10];TListBoxStrings.....................................................
 004C11D1    mov         edx,dword ptr [eax]
 004C11D3    call        dword ptr [edx+0CC];TCustomListBox.sub_004C1A60
 004C11D9    cmp         eax,dword ptr [ebp-8]
>004C11DC    jne         004C11F1
 004C11DE    mov         eax,dword ptr [ebp-4]
 004C11E1    mov         eax,dword ptr [eax+10];TListBoxStrings.....................................................
 004C11E4    mov         edx,dword ptr [ebp-0C]
 004C11E7    mov         ecx,dword ptr [eax]
 004C11E9    call        dword ptr [ecx+0D0];TCustomListBox.sub_004C1B20
>004C11EF    jmp         004C1215
 004C11F1    mov         eax,dword ptr [ebp-4]
 004C11F4    mov         eax,dword ptr [eax+10];TListBoxStrings.....................................................
 004C11F7    mov         edx,dword ptr [eax]
 004C11F9    call        dword ptr [edx+0CC];TCustomListBox.sub_004C1A60
 004C11FF    cmp         eax,dword ptr [ebp-0C]
>004C1202    jne         004C1215
 004C1204    mov         eax,dword ptr [ebp-4]
 004C1207    mov         eax,dword ptr [eax+10];TListBoxStrings.....................................................
 004C120A    mov         edx,dword ptr [ebp-8]
 004C120D    mov         ecx,dword ptr [eax]
 004C120F    call        dword ptr [ecx+0D0];TCustomListBox.sub_004C1B20
 004C1215    xor         eax,eax
 004C1217    pop         edx
 004C1218    pop         ecx
 004C1219    pop         ecx
 004C121A    mov         dword ptr fs:[eax],edx
 004C121D    push        4C1232
 004C1222    mov         eax,dword ptr [ebp-4]
 004C1225    call        TStrings.EndUpdate
 004C122A    ret
>004C122B    jmp         @HandleFinally
>004C1230    jmp         004C1222
 004C1232    xor         eax,eax
 004C1234    pop         edx
 004C1235    pop         ecx
 004C1236    pop         ecx
 004C1237    mov         dword ptr fs:[eax],edx
 004C123A    push        4C1254
 004C123F    lea         eax,[ebp-18]
 004C1242    mov         edx,2
 004C1247    call        @LStrArrayClr
 004C124C    ret
>004C124D    jmp         @HandleFinally
>004C1252    jmp         004C123F
 004C1254    pop         esi
 004C1255    pop         ebx
 004C1256    mov         esp,ebp
 004C1258    pop         ebp
 004C1259    ret
end;*}

//004C125C
procedure TListBoxStrings.Clear;
begin
{*
 004C125C    push        ebp
 004C125D    mov         ebp,esp
 004C125F    push        ecx
 004C1260    push        esi
 004C1261    mov         dword ptr [ebp-4],eax
 004C1264    mov         eax,dword ptr [ebp-4]
 004C1267    mov         eax,dword ptr [eax+10];TListBoxStrings.....................................................
 004C126A    mov         si,0FFAF
 004C126E    call        @CallDynaInst;TCustomListBox.sub_004C1714
 004C1273    pop         esi
 004C1274    pop         ecx
 004C1275    pop         ebp
 004C1276    ret
*}
end;

//004C1278
{*procedure sub_004C1278(?:?);
begin
 004C1278    push        ebp
 004C1279    mov         ebp,esp
 004C127B    add         esp,0FFFFFFF8
 004C127E    mov         byte ptr [ebp-5],dl
 004C1281    mov         dword ptr [ebp-4],eax
 004C1284    push        0
 004C1286    mov         al,byte ptr [ebp-5]
 004C1289    xor         al,1
 004C128B    and         eax,7F
 004C128E    push        eax
 004C128F    push        0B
 004C1291    mov         eax,dword ptr [ebp-4]
 004C1294    mov         eax,dword ptr [eax+10];TListBoxStrings.....................................................
 004C1297    call        TWinControl.GetHandle
 004C129C    push        eax
 004C129D    call        user32.SendMessageA
 004C12A2    cmp         byte ptr [ebp-5],0
>004C12A6    jne         004C12B3
 004C12A8    mov         eax,dword ptr [ebp-4]
 004C12AB    mov         eax,dword ptr [eax+10];TListBoxStrings.....................................................
 004C12AE    call        TControl.Refresh
 004C12B3    pop         ecx
 004C12B4    pop         ecx
 004C12B5    pop         ebp
 004C12B6    ret
end;*}

//004C12B8
{*function sub_004C12B8(?:?):?;
begin
 004C12B8    push        ebp
 004C12B9    mov         ebp,esp
 004C12BB    add         esp,0FFFFFFF4
 004C12BE    mov         dword ptr [ebp-8],edx
 004C12C1    mov         dword ptr [ebp-4],eax
 004C12C4    mov         eax,dword ptr [ebp-4]
 004C12C7    mov         eax,dword ptr [eax+10];TListBoxStrings.....................................................
 004C12CA    mov         al,byte ptr [eax+238];TCustomListBox.FStyle:TListBoxStyle
 004C12D0    add         al,0FD
 004C12D2    sub         al,2
>004C12D4    jae         004C12E9
 004C12D6    mov         edx,dword ptr [ebp-8]
 004C12D9    mov         eax,dword ptr [ebp-4]
 004C12DC    mov         eax,dword ptr [eax+10];TListBoxStrings.....................................................
 004C12DF    call        004C3084
 004C12E4    mov         dword ptr [ebp-0C],eax
>004C12E7    jmp         004C130D
 004C12E9    mov         eax,dword ptr [ebp-8]
 004C12EC    call        @LStrToPChar
 004C12F1    push        eax
 004C12F2    push        0FF
 004C12F4    push        1A2
 004C12F9    mov         eax,dword ptr [ebp-4]
 004C12FC    mov         eax,dword ptr [eax+10];TListBoxStrings.....................................................
 004C12FF    call        TWinControl.GetHandle
 004C1304    push        eax
 004C1305    call        user32.SendMessageA
 004C130A    mov         dword ptr [ebp-0C],eax
 004C130D    mov         eax,dword ptr [ebp-0C]
 004C1310    mov         esp,ebp
 004C1312    pop         ebp
 004C1313    ret
end;*}

//004C1314
{*procedure sub_004C1314(?:?; ?:?);
begin
 004C1314    push        ebp
 004C1315    mov         ebp,esp
 004C1317    add         esp,0FFFFFFEC
 004C131A    push        ebx
 004C131B    push        esi
 004C131C    xor         ebx,ebx
 004C131E    mov         dword ptr [ebp-14],ebx
 004C1321    mov         dword ptr [ebp-0C],ecx
 004C1324    mov         dword ptr [ebp-8],edx
 004C1327    mov         dword ptr [ebp-4],eax
 004C132A    xor         eax,eax
 004C132C    push        ebp
 004C132D    push        4C141E
 004C1332    push        dword ptr fs:[eax]
 004C1335    mov         dword ptr fs:[eax],esp
 004C1338    mov         eax,dword ptr [ebp-4]
 004C133B    mov         eax,dword ptr [eax+10];TListBoxStrings.....................................................
 004C133E    mov         al,byte ptr [eax+238];TCustomListBox.FStyle:TListBoxStyle
 004C1344    add         al,0FD
 004C1346    sub         al,2
>004C1348    jb          004C1408
 004C134E    mov         eax,dword ptr [ebp-4]
 004C1351    call        TStrings.BeginUpdate
 004C1356    mov         eax,dword ptr [ebp-4]
 004C1359    mov         eax,dword ptr [eax+10];TListBoxStrings.....................................................
 004C135C    mov         byte ptr [eax+278],1;TCustomListBox.FMoving:Boolean
 004C1363    xor         eax,eax
 004C1365    push        ebp
 004C1366    push        4C1401
 004C136B    push        dword ptr fs:[eax]
 004C136E    mov         dword ptr fs:[eax],esp
 004C1371    mov         eax,dword ptr [ebp-8]
 004C1374    cmp         eax,dword ptr [ebp-0C]
>004C1377    je          004C13DE
 004C1379    lea         ecx,[ebp-14]
 004C137C    mov         edx,dword ptr [ebp-8]
 004C137F    mov         eax,dword ptr [ebp-4]
 004C1382    mov         ebx,dword ptr [eax]
 004C1384    call        dword ptr [ebx+0C];TListBoxStrings.sub_004C0D18
 004C1387    mov         eax,dword ptr [ebp-4]
 004C138A    mov         eax,dword ptr [eax+10];TListBoxStrings.....................................................
 004C138D    mov         edx,dword ptr [ebp-8]
 004C1390    mov         si,0FFB3
 004C1394    call        @CallDynaInst;TCustomListBox.sub_004C1698
 004C1399    mov         dword ptr [ebp-10],eax
 004C139C    mov         eax,dword ptr [ebp-4]
 004C139F    mov         eax,dword ptr [eax+10];TListBoxStrings.....................................................
 004C13A2    xor         ecx,ecx
 004C13A4    mov         edx,dword ptr [ebp-8]
 004C13A7    mov         si,0FFB2
 004C13AB    call        @CallDynaInst;TCustomListBox.sub_004C16C0
 004C13B0    mov         edx,dword ptr [ebp-8]
 004C13B3    mov         eax,dword ptr [ebp-4]
 004C13B6    mov         ecx,dword ptr [eax]
 004C13B8    call        dword ptr [ecx+48];TListBoxStrings.sub_004C10CC
 004C13BB    mov         ecx,dword ptr [ebp-14]
 004C13BE    mov         edx,dword ptr [ebp-0C]
 004C13C1    mov         eax,dword ptr [ebp-4]
 004C13C4    mov         ebx,dword ptr [eax]
 004C13C6    call        dword ptr [ebx+60];TListBoxStrings.sub_004C102C
 004C13C9    mov         eax,dword ptr [ebp-4]
 004C13CC    mov         eax,dword ptr [eax+10];TListBoxStrings.....................................................
 004C13CF    mov         ecx,dword ptr [ebp-10]
 004C13D2    mov         edx,dword ptr [ebp-0C]
 004C13D5    mov         si,0FFB2
 004C13D9    call        @CallDynaInst;TCustomListBox.sub_004C16C0
 004C13DE    xor         eax,eax
 004C13E0    pop         edx
 004C13E1    pop         ecx
 004C13E2    pop         ecx
 004C13E3    mov         dword ptr fs:[eax],edx
 004C13E6    push        4C1408
 004C13EB    mov         eax,dword ptr [ebp-4]
 004C13EE    mov         eax,dword ptr [eax+10];TListBoxStrings.....................................................
 004C13F1    mov         byte ptr [eax+278],0;TCustomListBox.FMoving:Boolean
 004C13F8    mov         eax,dword ptr [ebp-4]
 004C13FB    call        TStrings.EndUpdate
 004C1400    ret
>004C1401    jmp         @HandleFinally
>004C1406    jmp         004C13EB
 004C1408    xor         eax,eax
 004C140A    pop         edx
 004C140B    pop         ecx
 004C140C    pop         ecx
 004C140D    mov         dword ptr fs:[eax],edx
 004C1410    push        4C1425
 004C1415    lea         eax,[ebp-14]
 004C1418    call        @LStrClr
 004C141D    ret
>004C141E    jmp         @HandleFinally
>004C1423    jmp         004C1415
 004C1425    pop         esi
 004C1426    pop         ebx
 004C1427    mov         esp,ebp
 004C1429    pop         ebp
 004C142A    ret
end;*}

//004C142C
constructor TCustomListBox.Create(AOwner:TComponent);
begin
{*
 004C142C    push        ebp
 004C142D    mov         ebp,esp
 004C142F    add         esp,0FFFFFFF4
 004C1432    test        dl,dl
>004C1434    je          004C143E
 004C1436    add         esp,0FFFFFFF0
 004C1439    call        @ClassCreate
 004C143E    mov         dword ptr [ebp-0C],ecx
 004C1441    mov         byte ptr [ebp-5],dl
 004C1444    mov         dword ptr [ebp-4],eax
 004C1447    mov         ecx,dword ptr [ebp-0C]
 004C144A    xor         edx,edx
 004C144C    mov         eax,dword ptr [ebp-4]
 004C144F    call        TWinControl.Create
 004C1454    mov         eax,[0055B36C];^NewStyleControls:Boolean
 004C1459    cmp         byte ptr [eax],0
>004C145C    je          004C146C
 004C145E    mov         eax,dword ptr [ebp-4]
 004C1461    mov         edx,dword ptr ds:[4C1548];0xE0 gvar_004C1548
 004C1467    mov         dword ptr [eax+50],edx;TCustomListBox.FControlStyle:TControlStyle
>004C146A    jmp         004C1478
 004C146C    mov         eax,dword ptr [ebp-4]
 004C146F    mov         edx,dword ptr ds:[4C154C];0xF0 gvar_004C154C
 004C1475    mov         dword ptr [eax+50],edx;TCustomListBox.FControlStyle:TControlStyle
 004C1478    mov         edx,79
 004C147D    mov         eax,dword ptr [ebp-4]
 004C1480    call        TControl.SetWidth
 004C1485    mov         edx,61
 004C148A    mov         eax,dword ptr [ebp-4]
 004C148D    call        TControl.SetHeight
 004C1492    mov         dl,1
 004C1494    mov         eax,dword ptr [ebp-4]
 004C1497    call        TPanel.SetTabStop
 004C149C    xor         edx,edx
 004C149E    mov         eax,dword ptr [ebp-4]
 004C14A1    call        TPanel.SetParentColor
 004C14A6    mov         eax,dword ptr [ebp-4]
 004C14A9    mov         byte ptr [eax+210],1;TCustomListBox.FAutoComplete:Boolean
 004C14B0    mov         dl,1
 004C14B2    mov         eax,[004BC510];TListBoxStrings
 004C14B7    call        TObject.Create;TListBoxStrings.Create
 004C14BC    mov         edx,dword ptr [ebp-4]
 004C14BF    mov         dword ptr [edx+218],eax;TCustomListBox.FItems:TStrings
 004C14C5    mov         eax,dword ptr [ebp-4]
 004C14C8    mov         eax,dword ptr [eax+218];TCustomListBox.FItems:TStrings
 004C14CE    mov         edx,dword ptr [ebp-4]
 004C14D1    mov         dword ptr [eax+10],edx
 004C14D4    mov         dl,1
 004C14D6    mov         eax,[004C4BA4];TControlCanvas
 004C14DB    call        TControlCanvas.Create;TControlCanvas.Create
 004C14E0    mov         edx,dword ptr [ebp-4]
 004C14E3    mov         dword ptr [edx+228],eax;TCustomListBox.FCanvas:TCanvas
 004C14E9    mov         eax,dword ptr [ebp-4]
 004C14EC    mov         eax,dword ptr [eax+228];TCustomListBox.FCanvas:TCanvas
 004C14F2    mov         edx,dword ptr [ebp-4]
 004C14F5    call        004C931C
 004C14FA    mov         eax,dword ptr [ebp-4]
 004C14FD    mov         dword ptr [eax+230],10;TCustomListBox.FItemHeight:Integer
 004C1507    mov         eax,dword ptr [ebp-4]
 004C150A    mov         byte ptr [eax+224],1;TCustomListBox.FBorderStyle:TBorderStyle
 004C1511    mov         eax,dword ptr [ebp-4]
 004C1514    mov         byte ptr [eax+23B],1;TCustomListBox.FExtendedSelect:Boolean
 004C151B    mov         eax,dword ptr [ebp-4]
 004C151E    mov         dword ptr [eax+234],0FFFFFFFF;TCustomListBox.FOldCount:Integer
 004C1528    mov         eax,dword ptr [ebp-4]
 004C152B    cmp         byte ptr [ebp-5],0
>004C152F    je          004C1540
 004C1531    call        @AfterConstruction
 004C1536    pop         dword ptr fs:[0]
 004C153D    add         esp,0C
 004C1540    mov         eax,dword ptr [ebp-4]
 004C1543    mov         esp,ebp
 004C1545    pop         ebp
 004C1546    ret
*}
end;

//004C1550
destructor TCustomListBox.Destroy;
begin
{*
 004C1550    push        ebp
 004C1551    mov         ebp,esp
 004C1553    add         esp,0FFFFFFF8
 004C1556    call        @BeforeDestruction
 004C155B    mov         byte ptr [ebp-5],dl
 004C155E    mov         dword ptr [ebp-4],eax
 004C1561    mov         dl,byte ptr [ebp-5]
 004C1564    and         dl,0FC
 004C1567    mov         eax,dword ptr [ebp-4]
 004C156A    call        TWinControl.Destroy
 004C156F    mov         eax,dword ptr [ebp-4]
 004C1572    mov         eax,dword ptr [eax+228];TCustomListBox.FCanvas:TCanvas
 004C1578    call        TObject.Free
 004C157D    mov         eax,dword ptr [ebp-4]
 004C1580    mov         eax,dword ptr [eax+218];TCustomListBox.FItems:TStrings
 004C1586    call        TObject.Free
 004C158B    mov         eax,dword ptr [ebp-4]
 004C158E    mov         eax,dword ptr [eax+240];TCustomListBox.FSaveItems:TStringList
 004C1594    call        TObject.Free
 004C1599    cmp         byte ptr [ebp-5],0
>004C159D    jle         004C15A7
 004C159F    mov         eax,dword ptr [ebp-4]
 004C15A2    call        @ClassDestroy
 004C15A7    pop         ecx
 004C15A8    pop         ecx
 004C15A9    pop         ebp
 004C15AA    ret
*}
end;

//004C15AC
{*procedure sub_004C15AC(?:?; ?:?);
begin
 004C15AC    push        ebp
 004C15AD    mov         ebp,esp
 004C15AF    add         esp,0FFFFFFF0
 004C15B2    push        ebx
 004C15B3    xor         ebx,ebx
 004C15B5    mov         dword ptr [ebp-10],ebx
 004C15B8    mov         dword ptr [ebp-0C],ecx
 004C15BB    mov         dword ptr [ebp-8],edx
 004C15BE    mov         dword ptr [ebp-4],eax
 004C15C1    mov         eax,dword ptr [ebp-8]
 004C15C4    call        @LStrAddRef
 004C15C9    xor         eax,eax
 004C15CB    push        ebp
 004C15CC    push        4C162A
 004C15D1    push        dword ptr fs:[eax]
 004C15D4    mov         dword ptr fs:[eax],esp
 004C15D7    mov         eax,dword ptr [ebp-8]
 004C15DA    call        @LStrToPChar
 004C15DF    call        StrLen
 004C15E4    push        eax
 004C15E5    mov         eax,dword ptr [ebp-8]
 004C15E8    call        @LStrToPChar
 004C15ED    mov         edx,eax
 004C15EF    lea         eax,[ebp-10]
 004C15F2    pop         ecx
 004C15F3    call        @LStrFromPCharLen
 004C15F8    mov         ecx,dword ptr [ebp-0C]
 004C15FB    mov         edx,dword ptr [ebp-10]
 004C15FE    mov         eax,dword ptr [ebp-4]
 004C1601    mov         eax,dword ptr [eax+218];TCustomListBox.FItems:TStrings
 004C1607    mov         ebx,dword ptr [eax]
 004C1609    call        dword ptr [ebx+3C];TStrings.sub_0047A090
 004C160C    xor         eax,eax
 004C160E    pop         edx
 004C160F    pop         ecx
 004C1610    pop         ecx
 004C1611    mov         dword ptr fs:[eax],edx
 004C1614    push        4C1631
 004C1619    lea         eax,[ebp-10]
 004C161C    call        @LStrClr
 004C1621    lea         eax,[ebp-8]
 004C1624    call        @LStrClr
 004C1629    ret
>004C162A    jmp         @HandleFinally
>004C162F    jmp         004C1619
 004C1631    pop         ebx
 004C1632    mov         esp,ebp
 004C1634    pop         ebp
 004C1635    ret
end;*}

//004C1638
{*procedure TCustomListBox.sub_004C1638(?:?);
begin
 004C1638    push        ebp
 004C1639    mov         ebp,esp
 004C163B    add         esp,0FFFFFFF4
 004C163E    mov         dword ptr [ebp-8],edx
 004C1641    mov         dword ptr [ebp-4],eax
 004C1644    push        0
 004C1646    mov         eax,dword ptr [ebp-8]
 004C1649    push        eax
 004C164A    push        199
 004C164F    mov         eax,dword ptr [ebp-4]
 004C1652    call        TWinControl.GetHandle
 004C1657    push        eax
 004C1658    call        user32.SendMessageA
 004C165D    mov         dword ptr [ebp-0C],eax
 004C1660    mov         eax,dword ptr [ebp-0C]
 004C1663    mov         esp,ebp
 004C1665    pop         ebp
 004C1666    ret
end;*}

//004C1668
{*procedure TCustomListBox.sub_004C1668(?:?; ?:?);
begin
 004C1668    push        ebp
 004C1669    mov         ebp,esp
 004C166B    add         esp,0FFFFFFF4
 004C166E    mov         dword ptr [ebp-0C],ecx
 004C1671    mov         dword ptr [ebp-8],edx
 004C1674    mov         dword ptr [ebp-4],eax
 004C1677    mov         eax,dword ptr [ebp-0C]
 004C167A    push        eax
 004C167B    mov         eax,dword ptr [ebp-8]
 004C167E    push        eax
 004C167F    push        19A
 004C1684    mov         eax,dword ptr [ebp-4]
 004C1687    call        TWinControl.GetHandle
 004C168C    push        eax
 004C168D    call        user32.SendMessageA
 004C1692    mov         esp,ebp
 004C1694    pop         ebp
 004C1695    ret
end;*}

//004C1698
{*procedure TCustomListBox.sub_004C1698(?:?);
begin
 004C1698    push        ebp
 004C1699    mov         ebp,esp
 004C169B    add         esp,0FFFFFFF4
 004C169E    push        esi
 004C169F    mov         dword ptr [ebp-8],edx
 004C16A2    mov         dword ptr [ebp-4],eax
 004C16A5    mov         edx,dword ptr [ebp-8]
 004C16A8    mov         eax,dword ptr [ebp-4]
 004C16AB    mov         si,0FFB1
 004C16AF    call        @CallDynaInst;TCustomListBox.sub_004C1638
 004C16B4    mov         dword ptr [ebp-0C],eax
 004C16B7    mov         eax,dword ptr [ebp-0C]
 004C16BA    pop         esi
 004C16BB    mov         esp,ebp
 004C16BD    pop         ebp
 004C16BE    ret
end;*}

//004C16C0
{*procedure TCustomListBox.sub_004C16C0(?:?; ?:?);
begin
 004C16C0    push        ebp
 004C16C1    mov         ebp,esp
 004C16C3    add         esp,0FFFFFFF4
 004C16C6    push        esi
 004C16C7    mov         dword ptr [ebp-0C],ecx
 004C16CA    mov         dword ptr [ebp-8],edx
 004C16CD    mov         dword ptr [ebp-4],eax
 004C16D0    mov         ecx,dword ptr [ebp-0C]
 004C16D3    mov         edx,dword ptr [ebp-8]
 004C16D6    mov         eax,dword ptr [ebp-4]
 004C16D9    mov         si,0FFB0
 004C16DD    call        @CallDynaInst;TCustomListBox.sub_004C1668
 004C16E2    pop         esi
 004C16E3    mov         esp,ebp
 004C16E5    pop         ebp
 004C16E6    ret
end;*}

//004C16E8
{*procedure TCustomListBox.sub_004C16E8(?:?);
begin
 004C16E8    push        ebp
 004C16E9    mov         ebp,esp
 004C16EB    add         esp,0FFFFFFF8
 004C16EE    mov         dword ptr [ebp-8],edx
 004C16F1    mov         dword ptr [ebp-4],eax
 004C16F4    push        0
 004C16F6    mov         eax,dword ptr [ebp-8]
 004C16F9    push        eax
 004C16FA    push        182
 004C16FF    mov         eax,dword ptr [ebp-4]
 004C1702    call        TWinControl.GetHandle
 004C1707    push        eax
 004C1708    call        user32.SendMessageA
 004C170D    pop         ecx
 004C170E    pop         ecx
 004C170F    pop         ebp
 004C1710    ret
end;*}

//004C1714
procedure TCustomListBox.sub_004C1714;
begin
{*
 004C1714    push        ebp
 004C1715    mov         ebp,esp
 004C1717    push        ecx
 004C1718    mov         dword ptr [ebp-4],eax
 004C171B    mov         eax,dword ptr [ebp-4]
 004C171E    mov         al,byte ptr [eax+238];TCustomListBox.FStyle:TListBoxStyle
 004C1724    add         al,0FD
 004C1726    sub         al,2
>004C1728    jb          004C1741
 004C172A    push        0
 004C172C    push        0
 004C172E    push        184
 004C1733    mov         eax,dword ptr [ebp-4]
 004C1736    call        TWinControl.GetHandle
 004C173B    push        eax
 004C173C    call        user32.SendMessageA
 004C1741    pop         ecx
 004C1742    pop         ebp
 004C1743    ret
*}
end;

//004C1744
procedure TCustomListBox.Clear;
begin
{*
 004C1744    push        ebp
 004C1745    mov         ebp,esp
 004C1747    push        ecx
 004C1748    mov         dword ptr [ebp-4],eax
 004C174B    mov         eax,dword ptr [ebp-4]
 004C174E    mov         eax,dword ptr [eax+218];TCustomListBox.FItems:TStrings
 004C1754    mov         edx,dword ptr [eax]
 004C1756    call        dword ptr [edx+44];TStrings.Clear
 004C1759    pop         ecx
 004C175A    pop         ebp
 004C175B    ret
*}
end;

//004C175C
procedure sub_004C175C;
begin
{*
 004C175C    push        ebp
 004C175D    mov         ebp,esp
 004C175F    add         esp,0FFFFFFF4
 004C1762    mov         dword ptr [ebp-4],eax
 004C1765    mov         eax,dword ptr [ebp-4]
 004C1768    cmp         byte ptr [eax+208],0;TCustomListBox..............FMultiSelect:Boolean
>004C176F    je          004C17A6
 004C1771    mov         eax,dword ptr [ebp-4]
 004C1774    mov         eax,dword ptr [eax+218];TCustomListBox.FItems:TStrings
 004C177A    mov         edx,dword ptr [eax]
 004C177C    call        dword ptr [edx+14];@AbstractError
 004C177F    dec         eax
 004C1780    test        eax,eax
>004C1782    jl          004C17B4
 004C1784    inc         eax
 004C1785    mov         dword ptr [ebp-0C],eax
 004C1788    mov         dword ptr [ebp-8],0
 004C178F    xor         ecx,ecx
 004C1791    mov         edx,dword ptr [ebp-8]
 004C1794    mov         eax,dword ptr [ebp-4]
 004C1797    call        004C1D58
 004C179C    inc         dword ptr [ebp-8]
 004C179F    dec         dword ptr [ebp-0C]
>004C17A2    jne         004C178F
>004C17A4    jmp         004C17B4
 004C17A6    or          edx,0FFFFFFFF
 004C17A9    mov         eax,dword ptr [ebp-4]
 004C17AC    mov         ecx,dword ptr [eax]
 004C17AE    call        dword ptr [ecx+0D0];TCustomListBox.sub_004C1B20
 004C17B4    mov         esp,ebp
 004C17B6    pop         ebp
 004C17B7    ret
*}
end;

//004C17B8
{*procedure sub_004C17B8(?:?);
begin
 004C17B8    push        ebp
 004C17B9    mov         ebp,esp
 004C17BB    add         esp,0FFFFFFE0
 004C17BE    push        ebx
 004C17BF    xor         ecx,ecx
 004C17C1    mov         dword ptr [ebp-1C],ecx
 004C17C4    mov         dword ptr [ebp-20],ecx
 004C17C7    mov         dword ptr [ebp-14],ecx
 004C17CA    mov         dword ptr [ebp-18],ecx
 004C17CD    mov         dword ptr [ebp-8],edx
 004C17D0    mov         dword ptr [ebp-4],eax
 004C17D3    xor         eax,eax
 004C17D5    push        ebp
 004C17D6    push        4C18FB
 004C17DB    push        dword ptr fs:[eax]
 004C17DE    mov         dword ptr fs:[eax],esp
 004C17E1    mov         eax,dword ptr [ebp-4]
 004C17E4    cmp         byte ptr [eax+208],0;TCustomListBox...............FMultiSelect:Boolean
>004C17EB    je          004C1875
 004C17F1    mov         eax,dword ptr [ebp-4]
 004C17F4    mov         eax,dword ptr [eax+218];TCustomListBox.FItems:TStrings
 004C17FA    mov         edx,dword ptr [eax]
 004C17FC    call        dword ptr [edx+14];@AbstractError
 004C17FF    dec         eax
 004C1800    test        eax,eax
>004C1802    jl          004C18E0
 004C1808    inc         eax
 004C1809    mov         dword ptr [ebp-10],eax
 004C180C    mov         dword ptr [ebp-0C],0
 004C1813    mov         edx,dword ptr [ebp-0C]
 004C1816    mov         eax,dword ptr [ebp-4]
 004C1819    call        004C1CF0
 004C181E    test        al,al
>004C1820    je          004C186B
 004C1822    lea         ecx,[ebp-18]
 004C1825    mov         edx,dword ptr [ebp-0C]
 004C1828    mov         eax,dword ptr [ebp-4]
 004C182B    mov         eax,dword ptr [eax+218];TCustomListBox.FItems:TStrings
 004C1831    mov         ebx,dword ptr [eax]
 004C1833    call        dword ptr [ebx+0C];@AbstractError
 004C1836    mov         eax,dword ptr [ebp-18]
 004C1839    call        @LStrToPChar
 004C183E    mov         edx,eax
 004C1840    lea         eax,[ebp-14]
 004C1843    call        @LStrFromPChar
 004C1848    mov         eax,dword ptr [ebp-14]
 004C184B    push        eax
 004C184C    mov         edx,dword ptr [ebp-0C]
 004C184F    mov         eax,dword ptr [ebp-4]
 004C1852    mov         eax,dword ptr [eax+218];TCustomListBox.FItems:TStrings
 004C1858    mov         ecx,dword ptr [eax]
 004C185A    call        dword ptr [ecx+18];TStrings.sub_0047A674
 004C185D    mov         ecx,eax
 004C185F    mov         eax,dword ptr [ebp-8]
 004C1862    pop         edx
 004C1863    mov         ebx,dword ptr [eax]
 004C1865    call        dword ptr [ebx+0D4]
 004C186B    inc         dword ptr [ebp-0C]
 004C186E    dec         dword ptr [ebp-10]
>004C1871    jne         004C1813
>004C1873    jmp         004C18E0
 004C1875    mov         eax,dword ptr [ebp-4]
 004C1878    mov         edx,dword ptr [eax]
 004C187A    call        dword ptr [edx+0CC];TCustomListBox.sub_004C1A60
 004C1880    inc         eax
>004C1881    je          004C18E0
 004C1883    mov         eax,dword ptr [ebp-4]
 004C1886    mov         edx,dword ptr [eax]
 004C1888    call        dword ptr [edx+0CC];TCustomListBox.sub_004C1A60
 004C188E    mov         edx,eax
 004C1890    lea         ecx,[ebp-20]
 004C1893    mov         eax,dword ptr [ebp-4]
 004C1896    mov         eax,dword ptr [eax+218];TCustomListBox.FItems:TStrings
 004C189C    mov         ebx,dword ptr [eax]
 004C189E    call        dword ptr [ebx+0C];@AbstractError
 004C18A1    mov         eax,dword ptr [ebp-20]
 004C18A4    call        @LStrToPChar
 004C18A9    mov         edx,eax
 004C18AB    lea         eax,[ebp-1C]
 004C18AE    call        @LStrFromPChar
 004C18B3    mov         eax,dword ptr [ebp-1C]
 004C18B6    push        eax
 004C18B7    mov         eax,dword ptr [ebp-4]
 004C18BA    mov         edx,dword ptr [eax]
 004C18BC    call        dword ptr [edx+0CC];TCustomListBox.sub_004C1A60
 004C18C2    mov         edx,eax
 004C18C4    mov         eax,dword ptr [ebp-4]
 004C18C7    mov         eax,dword ptr [eax+218];TCustomListBox.FItems:TStrings
 004C18CD    mov         ecx,dword ptr [eax]
 004C18CF    call        dword ptr [ecx+18];TStrings.sub_0047A674
 004C18D2    mov         ecx,eax
 004C18D4    mov         eax,dword ptr [ebp-8]
 004C18D7    pop         edx
 004C18D8    mov         ebx,dword ptr [eax]
 004C18DA    call        dword ptr [ebx+0D4]
 004C18E0    xor         eax,eax
 004C18E2    pop         edx
 004C18E3    pop         ecx
 004C18E4    pop         ecx
 004C18E5    mov         dword ptr fs:[eax],edx
 004C18E8    push        4C1902
 004C18ED    lea         eax,[ebp-20]
 004C18F0    mov         edx,4
 004C18F5    call        @LStrArrayClr
 004C18FA    ret
>004C18FB    jmp         @HandleFinally
>004C1900    jmp         004C18ED
 004C1902    pop         ebx
 004C1903    mov         esp,ebp
 004C1905    pop         ebp
 004C1906    ret
end;*}

//004C1908
procedure sub_004C1908;
begin
{*
 004C1908    push        ebp
 004C1909    mov         ebp,esp
 004C190B    add         esp,0FFFFFFF8
 004C190E    mov         dword ptr [ebp-4],eax
 004C1911    mov         eax,dword ptr [ebp-4]
 004C1914    cmp         byte ptr [eax+208],0;TCustomListBox................FMultiSelect:Boolean
>004C191B    je          004C195F
 004C191D    mov         eax,dword ptr [ebp-4]
 004C1920    mov         eax,dword ptr [eax+218];TCustomListBox.FItems:TStrings
 004C1926    mov         edx,dword ptr [eax]
 004C1928    call        dword ptr [edx+14];@AbstractError
 004C192B    dec         eax
 004C192C    cmp         eax,0
>004C192F    jl          004C1988
 004C1931    mov         dword ptr [ebp-8],eax
 004C1934    mov         edx,dword ptr [ebp-8]
 004C1937    mov         eax,dword ptr [ebp-4]
 004C193A    call        004C1CF0
 004C193F    test        al,al
>004C1941    je          004C1954
 004C1943    mov         edx,dword ptr [ebp-8]
 004C1946    mov         eax,dword ptr [ebp-4]
 004C1949    mov         eax,dword ptr [eax+218];TCustomListBox.FItems:TStrings
 004C194F    mov         ecx,dword ptr [eax]
 004C1951    call        dword ptr [ecx+48];@AbstractError
 004C1954    dec         dword ptr [ebp-8]
 004C1957    cmp         dword ptr [ebp-8],0FFFFFFFF
>004C195B    jne         004C1934
>004C195D    jmp         004C1988
 004C195F    mov         eax,dword ptr [ebp-4]
 004C1962    mov         edx,dword ptr [eax]
 004C1964    call        dword ptr [edx+0CC];TCustomListBox.sub_004C1A60
 004C196A    inc         eax
>004C196B    je          004C1988
 004C196D    mov         eax,dword ptr [ebp-4]
 004C1970    mov         edx,dword ptr [eax]
 004C1972    call        dword ptr [edx+0CC];TCustomListBox.sub_004C1A60
 004C1978    mov         edx,eax
 004C197A    mov         eax,dword ptr [ebp-4]
 004C197D    mov         eax,dword ptr [eax+218];TCustomListBox.FItems:TStrings
 004C1983    mov         ecx,dword ptr [eax]
 004C1985    call        dword ptr [ecx+48];@AbstractError
 004C1988    pop         ecx
 004C1989    pop         ecx
 004C198A    pop         ebp
 004C198B    ret
*}
end;

//004C198C
procedure sub_004C198C(?:TCustomListBox);
begin
{*
 004C198C    push        ebp
 004C198D    mov         ebp,esp
 004C198F    add         esp,0FFFFFFF4
 004C1992    mov         dword ptr [ebp-4],eax
 004C1995    mov         eax,dword ptr [ebp-4]
 004C1998    cmp         dword ptr [eax+22C],0
>004C199F    jle         004C19F1
 004C19A1    mov         eax,dword ptr [ebp-4]
 004C19A4    cmp         dword ptr [eax+48],0
>004C19A8    jle         004C19F1
 004C19AA    mov         eax,dword ptr [ebp-4]
 004C19AD    call        TControl.GetClientWidth
 004C19B2    mov         dword ptr [ebp-0C],eax
 004C19B5    fild        dword ptr [ebp-0C]
 004C19B8    mov         eax,dword ptr [ebp-4]
 004C19BB    fild        dword ptr [eax+22C]
 004C19C1    fdivp       st(1),st
 004C19C3    call        @TRUNC
 004C19C8    mov         dword ptr [ebp-8],eax
 004C19CB    cmp         dword ptr [ebp-8],1
>004C19CF    jge         004C19D8
 004C19D1    mov         dword ptr [ebp-8],1
 004C19D8    push        0
 004C19DA    mov         eax,dword ptr [ebp-8]
 004C19DD    push        eax
 004C19DE    push        195
 004C19E3    mov         eax,dword ptr [ebp-4]
 004C19E6    call        TWinControl.GetHandle
 004C19EB    push        eax
 004C19EC    call        user32.SendMessageA
 004C19F1    mov         esp,ebp
 004C19F3    pop         ebp
 004C19F4    ret
*}
end;

//004C19F8
procedure TListBox.SetColumns(Value:Integer);
begin
{*
 004C19F8    push        ebp
 004C19F9    mov         ebp,esp
 004C19FB    add         esp,0FFFFFFF8
 004C19FE    mov         dword ptr [ebp-8],edx
 004C1A01    mov         dword ptr [ebp-4],eax
 004C1A04    mov         eax,dword ptr [ebp-4]
 004C1A07    mov         eax,dword ptr [eax+22C];TListBox.FColumns:Integer
 004C1A0D    cmp         eax,dword ptr [ebp-8]
>004C1A10    je          004C1A5A
 004C1A12    mov         eax,dword ptr [ebp-4]
 004C1A15    cmp         dword ptr [eax+22C],0;TListBox.FColumns:Integer
>004C1A1C    je          004C1A24
 004C1A1E    cmp         dword ptr [ebp-8],0
>004C1A22    jne         004C1A3A
 004C1A24    mov         eax,dword ptr [ebp-8]
 004C1A27    mov         edx,dword ptr [ebp-4]
 004C1A2A    mov         dword ptr [edx+22C],eax;TListBox.FColumns:Integer
 004C1A30    mov         eax,dword ptr [ebp-4]
 004C1A33    call        TWinControl.RecreateWnd
>004C1A38    jmp         004C1A5A
 004C1A3A    mov         eax,dword ptr [ebp-8]
 004C1A3D    mov         edx,dword ptr [ebp-4]
 004C1A40    mov         dword ptr [edx+22C],eax;TListBox.FColumns:Integer
 004C1A46    mov         eax,dword ptr [ebp-4]
 004C1A49    call        TWinControl.HandleAllocated
 004C1A4E    test        al,al
>004C1A50    je          004C1A5A
 004C1A52    mov         eax,dword ptr [ebp-4]
 004C1A55    call        004C198C
 004C1A5A    pop         ecx
 004C1A5B    pop         ecx
 004C1A5C    pop         ebp
 004C1A5D    ret
*}
end;

//004C1A60
{*function sub_004C1A60:?;
begin
 004C1A60    push        ebp
 004C1A61    mov         ebp,esp
 004C1A63    add         esp,0FFFFFFF8
 004C1A66    mov         dword ptr [ebp-4],eax
 004C1A69    mov         eax,dword ptr [ebp-4]
 004C1A6C    cmp         byte ptr [eax+208],0;TCustomListBox.................FMultiSelect:Boolean
>004C1A73    je          004C1A91
 004C1A75    push        0
 004C1A77    push        0
 004C1A79    push        19F
 004C1A7E    mov         eax,dword ptr [ebp-4]
 004C1A81    call        TWinControl.GetHandle
 004C1A86    push        eax
 004C1A87    call        user32.SendMessageA
 004C1A8C    mov         dword ptr [ebp-8],eax
>004C1A8F    jmp         004C1AAB
 004C1A91    push        0
 004C1A93    push        0
 004C1A95    push        188
 004C1A9A    mov         eax,dword ptr [ebp-4]
 004C1A9D    call        TWinControl.GetHandle
 004C1AA2    push        eax
 004C1AA3    call        user32.SendMessageA
 004C1AA8    mov         dword ptr [ebp-8],eax
 004C1AAB    mov         eax,dword ptr [ebp-8]
 004C1AAE    pop         ecx
 004C1AAF    pop         ecx
 004C1AB0    pop         ebp
 004C1AB1    ret
end;*}

//004C1AB4
{*function sub_004C1AB4:?;
begin
 004C1AB4    push        ebp
 004C1AB5    mov         ebp,esp
 004C1AB7    add         esp,0FFFFFFF8
 004C1ABA    mov         dword ptr [ebp-4],eax
 004C1ABD    mov         eax,dword ptr [ebp-4]
 004C1AC0    mov         al,byte ptr [eax+238];TCustomListBox.FStyle:TListBoxStyle
 004C1AC6    add         al,0FD
 004C1AC8    sub         al,2
>004C1ACA    jae         004C1ADA
 004C1ACC    mov         eax,dword ptr [ebp-4]
 004C1ACF    mov         eax,dword ptr [eax+214];TCustomListBox.FCount:Integer
 004C1AD5    mov         dword ptr [ebp-8],eax
>004C1AD8    jmp         004C1AEB
 004C1ADA    mov         eax,dword ptr [ebp-4]
 004C1ADD    mov         eax,dword ptr [eax+218];TCustomListBox.FItems:TStrings
 004C1AE3    mov         edx,dword ptr [eax]
 004C1AE5    call        dword ptr [edx+14];@AbstractError
 004C1AE8    mov         dword ptr [ebp-8],eax
 004C1AEB    mov         eax,dword ptr [ebp-8]
 004C1AEE    pop         ecx
 004C1AEF    pop         ecx
 004C1AF0    pop         ebp
 004C1AF1    ret
end;*}

//004C1AF4
{*function sub_004C1AF4:?;
begin
 004C1AF4    push        ebp
 004C1AF5    mov         ebp,esp
 004C1AF7    add         esp,0FFFFFFF8
 004C1AFA    mov         dword ptr [ebp-4],eax
 004C1AFD    push        0
 004C1AFF    push        0
 004C1B01    push        190
 004C1B06    mov         eax,dword ptr [ebp-4]
 004C1B09    call        TWinControl.GetHandle
 004C1B0E    push        eax
 004C1B0F    call        user32.SendMessageA
 004C1B14    mov         dword ptr [ebp-8],eax
 004C1B17    mov         eax,dword ptr [ebp-8]
 004C1B1A    pop         ecx
 004C1B1B    pop         ecx
 004C1B1C    pop         ebp
 004C1B1D    ret
end;*}

//004C1B20
{*procedure sub_004C1B20(?:?);
begin
 004C1B20    push        ebp
 004C1B21    mov         ebp,esp
 004C1B23    add         esp,0FFFFFFF8
 004C1B26    mov         dword ptr [ebp-8],edx
 004C1B29    mov         dword ptr [ebp-4],eax
 004C1B2C    mov         eax,dword ptr [ebp-4]
 004C1B2F    mov         edx,dword ptr [eax]
 004C1B31    call        dword ptr [edx+0CC];TCustomListBox.sub_004C1A60
 004C1B37    cmp         eax,dword ptr [ebp-8]
>004C1B3A    je          004C1B7C
 004C1B3C    mov         eax,dword ptr [ebp-4]
 004C1B3F    cmp         byte ptr [eax+208],0;TCustomListBox..................FMultiSelect:Boolean
>004C1B46    je          004C1B63
 004C1B48    push        0
 004C1B4A    mov         eax,dword ptr [ebp-8]
 004C1B4D    push        eax
 004C1B4E    push        19E
 004C1B53    mov         eax,dword ptr [ebp-4]
 004C1B56    call        TWinControl.GetHandle
 004C1B5B    push        eax
 004C1B5C    call        user32.SendMessageA
>004C1B61    jmp         004C1B7C
 004C1B63    push        0
 004C1B65    mov         eax,dword ptr [ebp-8]
 004C1B68    push        eax
 004C1B69    push        186
 004C1B6E    mov         eax,dword ptr [ebp-4]
 004C1B71    call        TWinControl.GetHandle
 004C1B76    push        eax
 004C1B77    call        user32.SendMessageA
 004C1B7C    pop         ecx
 004C1B7D    pop         ecx
 004C1B7E    pop         ebp
 004C1B7F    ret
end;*}

//004C1B80
procedure TListBox.SetExtendedSelect(Value:Boolean);
begin
{*
 004C1B80    push        ebp
 004C1B81    mov         ebp,esp
 004C1B83    add         esp,0FFFFFFF8
 004C1B86    mov         byte ptr [ebp-5],dl
 004C1B89    mov         dword ptr [ebp-4],eax
 004C1B8C    mov         al,byte ptr [ebp-5]
 004C1B8F    mov         edx,dword ptr [ebp-4]
 004C1B92    cmp         al,byte ptr [edx+23B];TListBox.FExtendedSelect:Boolean
>004C1B98    je          004C1BAE
 004C1B9A    mov         al,byte ptr [ebp-5]
 004C1B9D    mov         edx,dword ptr [ebp-4]
 004C1BA0    mov         byte ptr [edx+23B],al;TListBox.FExtendedSelect:Boolean
 004C1BA6    mov         eax,dword ptr [ebp-4]
 004C1BA9    call        TWinControl.RecreateWnd
 004C1BAE    pop         ecx
 004C1BAF    pop         ecx
 004C1BB0    pop         ebp
 004C1BB1    ret
*}
end;

//004C1BB4
procedure TListBox.SetIntegralHeight(Value:Boolean);
begin
{*
 004C1BB4    push        ebp
 004C1BB5    mov         ebp,esp
 004C1BB7    add         esp,0FFFFFFF8
 004C1BBA    push        esi
 004C1BBB    mov         byte ptr [ebp-5],dl
 004C1BBE    mov         dword ptr [ebp-4],eax
 004C1BC1    mov         al,byte ptr [ebp-5]
 004C1BC4    mov         edx,dword ptr [ebp-4]
 004C1BC7    cmp         al,byte ptr [edx+239];TListBox.FIntegralHeight:Boolean
>004C1BCD    je          004C1BEF
 004C1BCF    mov         al,byte ptr [ebp-5]
 004C1BD2    mov         edx,dword ptr [ebp-4]
 004C1BD5    mov         byte ptr [edx+239],al;TListBox.FIntegralHeight:Boolean
 004C1BDB    mov         eax,dword ptr [ebp-4]
 004C1BDE    call        TWinControl.RecreateWnd
 004C1BE3    mov         eax,dword ptr [ebp-4]
 004C1BE6    mov         si,0FFD0
 004C1BEA    call        @CallDynaInst;TControl.sub_004C9ED8
 004C1BEF    pop         esi
 004C1BF0    pop         ecx
 004C1BF1    pop         ecx
 004C1BF2    pop         ebp
 004C1BF3    ret
*}
end;

//004C1BF4
{*function TListBox.GetItemHeight:?;
begin
 004C1BF4    push        ebp
 004C1BF5    mov         ebp,esp
 004C1BF7    add         esp,0FFFFFFE8
 004C1BFA    mov         dword ptr [ebp-4],eax
 004C1BFD    mov         eax,dword ptr [ebp-4]
 004C1C00    mov         eax,dword ptr [eax+230];TListBox.FItemHeight:Integer
 004C1C06    mov         dword ptr [ebp-8],eax
 004C1C09    mov         eax,dword ptr [ebp-4]
 004C1C0C    call        TWinControl.HandleAllocated
 004C1C11    test        al,al
>004C1C13    je          004C1C3D
 004C1C15    mov         eax,dword ptr [ebp-4]
 004C1C18    cmp         byte ptr [eax+238],0;TListBox.FStyle:TListBoxStyle
>004C1C1F    jne         004C1C3D
 004C1C21    lea         eax,[ebp-18]
 004C1C24    push        eax
 004C1C25    xor         ecx,ecx
 004C1C27    mov         edx,198
 004C1C2C    mov         eax,dword ptr [ebp-4]
 004C1C2F    call        004CC7DC
 004C1C34    mov         eax,dword ptr [ebp-0C]
 004C1C37    sub         eax,dword ptr [ebp-14]
 004C1C3A    mov         dword ptr [ebp-8],eax
 004C1C3D    mov         eax,dword ptr [ebp-8]
 004C1C40    mov         esp,ebp
 004C1C42    pop         ebp
 004C1C43    ret
end;*}

//004C1C44
procedure TListBox.SetItemHeight(Value:Integer);
begin
{*
 004C1C44    push        ebp
 004C1C45    mov         ebp,esp
 004C1C47    add         esp,0FFFFFFF8
 004C1C4A    mov         dword ptr [ebp-8],edx
 004C1C4D    mov         dword ptr [ebp-4],eax
 004C1C50    mov         eax,dword ptr [ebp-4]
 004C1C53    mov         eax,dword ptr [eax+230];TListBox.FItemHeight:Integer
 004C1C59    cmp         eax,dword ptr [ebp-8]
>004C1C5C    je          004C1C78
 004C1C5E    cmp         dword ptr [ebp-8],0
>004C1C62    jle         004C1C78
 004C1C64    mov         eax,dword ptr [ebp-8]
 004C1C67    mov         edx,dword ptr [ebp-4]
 004C1C6A    mov         dword ptr [edx+230],eax;TListBox.FItemHeight:Integer
 004C1C70    mov         eax,dword ptr [ebp-4]
 004C1C73    call        TWinControl.RecreateWnd
 004C1C78    pop         ecx
 004C1C79    pop         ecx
 004C1C7A    pop         ebp
 004C1C7B    ret
*}
end;

//004C1C7C
procedure TListBox.SetTabWidth(Value:Integer);
begin
{*
 004C1C7C    push        ebp
 004C1C7D    mov         ebp,esp
 004C1C7F    add         esp,0FFFFFFF8
 004C1C82    mov         dword ptr [ebp-8],edx
 004C1C85    mov         dword ptr [ebp-4],eax
 004C1C88    cmp         dword ptr [ebp-8],0
>004C1C8C    jge         004C1C93
 004C1C8E    xor         eax,eax
 004C1C90    mov         dword ptr [ebp-8],eax
 004C1C93    mov         eax,dword ptr [ebp-4]
 004C1C96    mov         eax,dword ptr [eax+23C];TListBox.FTabWidth:Integer
 004C1C9C    cmp         eax,dword ptr [ebp-8]
>004C1C9F    je          004C1CB5
 004C1CA1    mov         eax,dword ptr [ebp-8]
 004C1CA4    mov         edx,dword ptr [ebp-4]
 004C1CA7    mov         dword ptr [edx+23C],eax;TListBox.FTabWidth:Integer
 004C1CAD    mov         eax,dword ptr [ebp-4]
 004C1CB0    call        TWinControl.RecreateWnd
 004C1CB5    pop         ecx
 004C1CB6    pop         ecx
 004C1CB7    pop         ebp
 004C1CB8    ret
*}
end;

//004C1CBC
procedure TListBox.SetMultiSelect(Value:Boolean);
begin
{*
 004C1CBC    push        ebp
 004C1CBD    mov         ebp,esp
 004C1CBF    add         esp,0FFFFFFF8
 004C1CC2    mov         byte ptr [ebp-5],dl
 004C1CC5    mov         dword ptr [ebp-4],eax
 004C1CC8    mov         eax,dword ptr [ebp-4]
 004C1CCB    mov         al,byte ptr [eax+208];TListBox...................FMultiSelect:Boolean
 004C1CD1    cmp         al,byte ptr [ebp-5]
>004C1CD4    je          004C1CEA
 004C1CD6    mov         al,byte ptr [ebp-5]
 004C1CD9    mov         edx,dword ptr [ebp-4]
 004C1CDC    mov         byte ptr [edx+208],al;TListBox....................FMultiSelect:Boolean
 004C1CE2    mov         eax,dword ptr [ebp-4]
 004C1CE5    call        TWinControl.RecreateWnd
 004C1CEA    pop         ecx
 004C1CEB    pop         ecx
 004C1CEC    pop         ebp
 004C1CED    ret
*}
end;

//004C1CF0
{*function sub_004C1CF0(?:TCustomListBox; ?:?):?;
begin
 004C1CF0    push        ebp
 004C1CF1    mov         ebp,esp
 004C1CF3    add         esp,0FFFFFFE8
 004C1CF6    mov         dword ptr [ebp-8],edx
 004C1CF9    mov         dword ptr [ebp-4],eax
 004C1CFC    push        0
 004C1CFE    mov         eax,dword ptr [ebp-8]
 004C1D01    push        eax
 004C1D02    push        187
 004C1D07    mov         eax,dword ptr [ebp-4]
 004C1D0A    call        TWinControl.GetHandle
 004C1D0F    push        eax
 004C1D10    call        user32.SendMessageA
 004C1D15    mov         dword ptr [ebp-10],eax
 004C1D18    cmp         dword ptr [ebp-10],0FFFFFFFF
>004C1D1C    jne         004C1D45
 004C1D1E    mov         eax,dword ptr [ebp-8]
 004C1D21    mov         dword ptr [ebp-18],eax
 004C1D24    mov         byte ptr [ebp-14],0
 004C1D28    lea         eax,[ebp-18]
 004C1D2B    push        eax
 004C1D2C    push        0
 004C1D2E    mov         ecx,dword ptr ds:[55B590];^SListIndexError:TResStringRec
 004C1D34    mov         dl,1
 004C1D36    mov         eax,[00475798];EListError
 004C1D3B    call        Exception.CreateResFmt;EListError.Create
 004C1D40    call        @RaiseExcept
 004C1D45    cmp         dword ptr [ebp-10],1
 004C1D49    sbb         eax,eax
 004C1D4B    inc         eax
 004C1D4C    mov         byte ptr [ebp-9],al
 004C1D4F    mov         al,byte ptr [ebp-9]
 004C1D52    mov         esp,ebp
 004C1D54    pop         ebp
 004C1D55    ret
end;*}

//004C1D58
{*procedure sub_004C1D58(?:TCustomListBox; ?:?; ?:?);
begin
 004C1D58    push        ebp
 004C1D59    mov         ebp,esp
 004C1D5B    add         esp,0FFFFFFEC
 004C1D5E    mov         byte ptr [ebp-9],cl
 004C1D61    mov         dword ptr [ebp-8],edx
 004C1D64    mov         dword ptr [ebp-4],eax
 004C1D67    mov         eax,dword ptr [ebp-4]
 004C1D6A    cmp         byte ptr [eax+208],0;TCustomListBox.....................FMultiSelect:Boolean
>004C1D71    je          004C1DC0
 004C1D73    mov         eax,dword ptr [ebp-8]
 004C1D76    push        eax
 004C1D77    xor         eax,eax
 004C1D79    mov         al,byte ptr [ebp-9]
 004C1D7C    push        eax
 004C1D7D    push        185
 004C1D82    mov         eax,dword ptr [ebp-4]
 004C1D85    call        TWinControl.GetHandle
 004C1D8A    push        eax
 004C1D8B    call        user32.SendMessageA
 004C1D90    inc         eax
>004C1D91    jne         004C1E22
 004C1D97    mov         eax,dword ptr [ebp-8]
 004C1D9A    mov         dword ptr [ebp-14],eax
 004C1D9D    mov         byte ptr [ebp-10],0
 004C1DA1    lea         eax,[ebp-14]
 004C1DA4    push        eax
 004C1DA5    push        0
 004C1DA7    mov         ecx,dword ptr ds:[55B590];^SListIndexError:TResStringRec
 004C1DAD    mov         dl,1
 004C1DAF    mov         eax,[00475798];EListError
 004C1DB4    call        Exception.CreateResFmt;EListError.Create
 004C1DB9    call        @RaiseExcept
>004C1DBE    jmp         004C1E22
 004C1DC0    cmp         byte ptr [ebp-9],0
>004C1DC4    je          004C1E0B
 004C1DC6    push        0
 004C1DC8    mov         eax,dword ptr [ebp-8]
 004C1DCB    push        eax
 004C1DCC    push        186
 004C1DD1    mov         eax,dword ptr [ebp-4]
 004C1DD4    call        TWinControl.GetHandle
 004C1DD9    push        eax
 004C1DDA    call        user32.SendMessageA
 004C1DDF    inc         eax
>004C1DE0    jne         004C1E22
 004C1DE2    mov         eax,dword ptr [ebp-8]
 004C1DE5    mov         dword ptr [ebp-14],eax
 004C1DE8    mov         byte ptr [ebp-10],0
 004C1DEC    lea         eax,[ebp-14]
 004C1DEF    push        eax
 004C1DF0    push        0
 004C1DF2    mov         ecx,dword ptr ds:[55B590];^SListIndexError:TResStringRec
 004C1DF8    mov         dl,1
 004C1DFA    mov         eax,[00475798];EListError
 004C1DFF    call        Exception.CreateResFmt;EListError.Create
 004C1E04    call        @RaiseExcept
>004C1E09    jmp         004C1E22
 004C1E0B    push        0
 004C1E0D    push        0FF
 004C1E0F    push        186
 004C1E14    mov         eax,dword ptr [ebp-4]
 004C1E17    call        TWinControl.GetHandle
 004C1E1C    push        eax
 004C1E1D    call        user32.SendMessageA
 004C1E22    mov         esp,ebp
 004C1E24    pop         ebp
 004C1E25    ret
end;*}

//004C1E28
procedure TListBox.SetSorted(Value:Boolean);
begin
{*
 004C1E28    push        ebp
 004C1E29    mov         ebp,esp
 004C1E2B    add         esp,0FFFFFFF8
 004C1E2E    mov         byte ptr [ebp-5],dl
 004C1E31    mov         dword ptr [ebp-4],eax
 004C1E34    mov         eax,dword ptr [ebp-4]
 004C1E37    mov         al,byte ptr [eax+238];TListBox.FStyle:TListBoxStyle
 004C1E3D    add         al,0FD
 004C1E3F    sub         al,2
>004C1E41    jb          004C1E65
 004C1E43    mov         eax,dword ptr [ebp-4]
 004C1E46    mov         al,byte ptr [eax+23A];TListBox.FSorted:Boolean
 004C1E4C    cmp         al,byte ptr [ebp-5]
>004C1E4F    je          004C1E65
 004C1E51    mov         al,byte ptr [ebp-5]
 004C1E54    mov         edx,dword ptr [ebp-4]
 004C1E57    mov         byte ptr [edx+23A],al;TListBox.FSorted:Boolean
 004C1E5D    mov         eax,dword ptr [ebp-4]
 004C1E60    call        TWinControl.RecreateWnd
 004C1E65    pop         ecx
 004C1E66    pop         ecx
 004C1E67    pop         ebp
 004C1E68    ret
*}
end;

//004C1E6C
procedure TListBox.SetStyle(Value:TListBoxStyle);
begin
{*
 004C1E6C    push        ebp
 004C1E6D    mov         ebp,esp
 004C1E6F    add         esp,0FFFFFFF8
 004C1E72    mov         byte ptr [ebp-5],dl
 004C1E75    mov         dword ptr [ebp-4],eax
 004C1E78    mov         eax,dword ptr [ebp-4]
 004C1E7B    mov         al,byte ptr [eax+238];TListBox.FStyle:TListBoxStyle
 004C1E81    cmp         al,byte ptr [ebp-5]
>004C1E84    je          004C1EBB
 004C1E86    mov         al,byte ptr [ebp-5]
 004C1E89    add         al,0FD
 004C1E8B    sub         al,2
>004C1E8D    jae         004C1EA7
 004C1E8F    mov         eax,dword ptr [ebp-4]
 004C1E92    mov         eax,dword ptr [eax+218];TListBox.FItems:TStrings
 004C1E98    mov         edx,dword ptr [eax]
 004C1E9A    call        dword ptr [edx+44];TStrings.Clear
 004C1E9D    xor         edx,edx
 004C1E9F    mov         eax,dword ptr [ebp-4]
 004C1EA2    call        TListBox.SetSorted
 004C1EA7    mov         al,byte ptr [ebp-5]
 004C1EAA    mov         edx,dword ptr [ebp-4]
 004C1EAD    mov         byte ptr [edx+238],al;TListBox.FStyle:TListBoxStyle
 004C1EB3    mov         eax,dword ptr [ebp-4]
 004C1EB6    call        TWinControl.RecreateWnd
 004C1EBB    pop         ecx
 004C1EBC    pop         ecx
 004C1EBD    pop         ebp
 004C1EBE    ret
*}
end;

//004C1EC0
{*function sub_004C1EC0(?:TCustomListBox):?;
begin
 004C1EC0    push        ebp
 004C1EC1    mov         ebp,esp
 004C1EC3    add         esp,0FFFFFFF8
 004C1EC6    mov         dword ptr [ebp-4],eax
 004C1EC9    push        0
 004C1ECB    push        0
 004C1ECD    push        18E
 004C1ED2    mov         eax,dword ptr [ebp-4]
 004C1ED5    call        TWinControl.GetHandle
 004C1EDA    push        eax
 004C1EDB    call        user32.SendMessageA
 004C1EE0    mov         dword ptr [ebp-8],eax
 004C1EE3    mov         eax,dword ptr [ebp-8]
 004C1EE6    pop         ecx
 004C1EE7    pop         ecx
 004C1EE8    pop         ebp
 004C1EE9    ret
end;*}

//004C1EEC
{*procedure TCustomListBox.sub_004C1EEC(?:?);
begin
 004C1EEC    push        ebp
 004C1EED    mov         ebp,esp
 004C1EEF    add         esp,0FFFFFFF4
 004C1EF2    push        ebx
 004C1EF3    xor         ecx,ecx
 004C1EF5    mov         dword ptr [ebp-0C],ecx
 004C1EF8    mov         dword ptr [ebp-8],edx
 004C1EFB    mov         dword ptr [ebp-4],eax
 004C1EFE    xor         eax,eax
 004C1F00    push        ebp
 004C1F01    push        4C1FBA
 004C1F06    push        dword ptr fs:[eax]
 004C1F09    mov         dword ptr fs:[eax],esp
 004C1F0C    mov         eax,dword ptr [ebp-4]
 004C1F0F    mov         al,byte ptr [eax+238];TCustomListBox.FStyle:TListBoxStyle
 004C1F15    add         al,0FD
 004C1F17    sub         al,2
>004C1F19    jae         004C1F99
 004C1F1B    mov         eax,dword ptr [ebp-4]
 004C1F1E    cmp         word ptr [eax+262],0;TCustomListBox.?f262:word
>004C1F26    je          004C1F8D
 004C1F28    mov         eax,dword ptr [ebp-8]
 004C1F2B    cmp         dword ptr [eax+4],0FFFFFFFF
>004C1F2F    jle         004C1F8D
 004C1F31    mov         eax,dword ptr [ebp-4]
 004C1F34    mov         edx,dword ptr [eax]
 004C1F36    call        dword ptr [edx+0C8];TCustomListBox.sub_004C1AB4
 004C1F3C    mov         edx,dword ptr [ebp-8]
 004C1F3F    cmp         eax,dword ptr [edx+4]
>004C1F42    jle         004C1F8D
 004C1F44    lea         eax,[ebp-0C]
 004C1F47    call        @LStrClr
 004C1F4C    lea         eax,[ebp-0C]
 004C1F4F    push        eax
 004C1F50    mov         ecx,dword ptr [ebp-8]
 004C1F53    mov         ecx,dword ptr [ecx+4]
 004C1F56    mov         ebx,dword ptr [ebp-4]
 004C1F59    mov         edx,dword ptr [ebp-4]
 004C1F5C    mov         eax,dword ptr [ebx+264];TCustomListBox.?f264:dword
 004C1F62    call        dword ptr [ebx+260];TCustomListBox.FOnData
 004C1F68    mov         eax,dword ptr [ebp-0C]
 004C1F6B    call        @LStrToPChar
 004C1F70    mov         edx,eax
 004C1F72    mov         eax,dword ptr [ebp-8]
 004C1F75    mov         eax,dword ptr [eax+8]
 004C1F78    call        StrCopy
 004C1F7D    mov         eax,dword ptr [ebp-0C]
 004C1F80    call        @DynArrayLength
 004C1F85    mov         edx,dword ptr [ebp-8]
 004C1F88    mov         dword ptr [edx+0C],eax
>004C1F8B    jmp         004C1FA4
 004C1F8D    mov         eax,dword ptr [ebp-8]
 004C1F90    mov         dword ptr [eax+0C],0FFFFFFFF
>004C1F97    jmp         004C1FA4
 004C1F99    mov         edx,dword ptr [ebp-8]
 004C1F9C    mov         eax,dword ptr [ebp-4]
 004C1F9F    mov         ecx,dword ptr [eax]
 004C1FA1    call        dword ptr [ecx-10];TCustomListBox.DefaultHandler
 004C1FA4    xor         eax,eax
 004C1FA6    pop         edx
 004C1FA7    pop         ecx
 004C1FA8    pop         ecx
 004C1FA9    mov         dword ptr fs:[eax],edx
 004C1FAC    push        4C1FC1
 004C1FB1    lea         eax,[ebp-0C]
 004C1FB4    call        @LStrClr
 004C1FB9    ret
>004C1FBA    jmp         @HandleFinally
>004C1FBF    jmp         004C1FB1
 004C1FC1    pop         ebx
 004C1FC2    mov         esp,ebp
 004C1FC4    pop         ebp
 004C1FC5    ret
end;*}

//004C1FC8
{*procedure TCustomListBox.sub_004C1FC8(?:?);
begin
 004C1FC8    push        ebp
 004C1FC9    mov         ebp,esp
 004C1FCB    add         esp,0FFFFFFF4
 004C1FCE    push        ebx
 004C1FCF    xor         ecx,ecx
 004C1FD1    mov         dword ptr [ebp-0C],ecx
 004C1FD4    mov         dword ptr [ebp-8],edx
 004C1FD7    mov         dword ptr [ebp-4],eax
 004C1FDA    xor         eax,eax
 004C1FDC    push        ebp
 004C1FDD    push        4C2081
 004C1FE2    push        dword ptr fs:[eax]
 004C1FE5    mov         dword ptr fs:[eax],esp
 004C1FE8    mov         eax,dword ptr [ebp-4]
 004C1FEB    mov         al,byte ptr [eax+238];TCustomListBox.FStyle:TListBoxStyle
 004C1FF1    add         al,0FD
 004C1FF3    sub         al,2
>004C1FF5    jae         004C2060
 004C1FF7    mov         eax,dword ptr [ebp-4]
 004C1FFA    cmp         word ptr [eax+262],0;TCustomListBox.?f262:word
>004C2002    je          004C2054
 004C2004    mov         eax,dword ptr [ebp-8]
 004C2007    cmp         dword ptr [eax+4],0FFFFFFFF
>004C200B    jle         004C2054
 004C200D    mov         eax,dword ptr [ebp-4]
 004C2010    mov         edx,dword ptr [eax]
 004C2012    call        dword ptr [edx+0C8];TCustomListBox.sub_004C1AB4
 004C2018    mov         edx,dword ptr [ebp-8]
 004C201B    cmp         eax,dword ptr [edx+4]
>004C201E    jle         004C2054
 004C2020    lea         eax,[ebp-0C]
 004C2023    call        @LStrClr
 004C2028    lea         eax,[ebp-0C]
 004C202B    push        eax
 004C202C    mov         ecx,dword ptr [ebp-8]
 004C202F    mov         ecx,dword ptr [ecx+4]
 004C2032    mov         ebx,dword ptr [ebp-4]
 004C2035    mov         edx,dword ptr [ebp-4]
 004C2038    mov         eax,dword ptr [ebx+264];TCustomListBox.?f264:dword
 004C203E    call        dword ptr [ebx+260];TCustomListBox.FOnData
 004C2044    mov         eax,dword ptr [ebp-0C]
 004C2047    call        @DynArrayLength
 004C204C    mov         edx,dword ptr [ebp-8]
 004C204F    mov         dword ptr [edx+0C],eax
>004C2052    jmp         004C206B
 004C2054    mov         eax,dword ptr [ebp-8]
 004C2057    mov         dword ptr [eax+0C],0FFFFFFFF
>004C205E    jmp         004C206B
 004C2060    mov         edx,dword ptr [ebp-8]
 004C2063    mov         eax,dword ptr [ebp-4]
 004C2066    mov         ecx,dword ptr [eax]
 004C2068    call        dword ptr [ecx-10];TCustomListBox.DefaultHandler
 004C206B    xor         eax,eax
 004C206D    pop         edx
 004C206E    pop         ecx
 004C206F    pop         ecx
 004C2070    mov         dword ptr fs:[eax],edx
 004C2073    push        4C2088
 004C2078    lea         eax,[ebp-0C]
 004C207B    call        @LStrClr
 004C2080    ret
>004C2081    jmp         @HandleFinally
>004C2086    jmp         004C2078
 004C2088    pop         ebx
 004C2089    mov         esp,ebp
 004C208B    pop         ebp
 004C208C    ret
end;*}

//004C2090
procedure TListBox.SetBorderStyle(Value:TBorderStyle);
begin
{*
 004C2090    push        ebp
 004C2091    mov         ebp,esp
 004C2093    add         esp,0FFFFFFF8
 004C2096    mov         byte ptr [ebp-5],dl
 004C2099    mov         dword ptr [ebp-4],eax
 004C209C    mov         eax,dword ptr [ebp-4]
 004C209F    mov         al,byte ptr [eax+224];TListBox.FBorderStyle:TBorderStyle
 004C20A5    cmp         al,byte ptr [ebp-5]
>004C20A8    je          004C20BE
 004C20AA    mov         al,byte ptr [ebp-5]
 004C20AD    mov         edx,dword ptr [ebp-4]
 004C20B0    mov         byte ptr [edx+224],al;TListBox.FBorderStyle:TBorderStyle
 004C20B6    mov         eax,dword ptr [ebp-4]
 004C20B9    call        TWinControl.RecreateWnd
 004C20BE    pop         ecx
 004C20BF    pop         ecx
 004C20C0    pop         ebp
 004C20C1    ret
*}
end;

//004C20C4
procedure sub_004C20C4(?:TCustomListBox; ?:Integer);
begin
{*
 004C20C4    push        ebp
 004C20C5    mov         ebp,esp
 004C20C7    add         esp,0FFFFFFF8
 004C20CA    mov         dword ptr [ebp-8],edx
 004C20CD    mov         dword ptr [ebp-4],eax
 004C20D0    mov         eax,dword ptr [ebp-4]
 004C20D3    call        004C1EC0
 004C20D8    cmp         eax,dword ptr [ebp-8]
>004C20DB    je          004C20F6
 004C20DD    push        0
 004C20DF    mov         eax,dword ptr [ebp-8]
 004C20E2    push        eax
 004C20E3    push        197
 004C20E8    mov         eax,dword ptr [ebp-4]
 004C20EB    call        TWinControl.GetHandle
 004C20F0    push        eax
 004C20F1    call        user32.SendMessageA
 004C20F6    pop         ecx
 004C20F7    pop         ecx
 004C20F8    pop         ebp
 004C20F9    ret
*}
end;

//004C20FC
procedure TListBox.SetItems(Value:TStrings);
begin
{*
 004C20FC    push        ebp
 004C20FD    mov         ebp,esp
 004C20FF    add         esp,0FFFFFFF8
 004C2102    mov         dword ptr [ebp-8],edx
 004C2105    mov         dword ptr [ebp-4],eax
 004C2108    mov         eax,dword ptr [ebp-4]
 004C210B    mov         al,byte ptr [eax+238];TListBox.FStyle:TListBoxStyle
 004C2111    add         al,0FD
 004C2113    sub         al,2
>004C2115    jae         004C2140
 004C2117    mov         eax,dword ptr [ebp-4]
 004C211A    mov         al,byte ptr [eax+238];TListBox.FStyle:TListBoxStyle
 004C2120    sub         al,3
>004C2122    je          004C212A
 004C2124    dec         al
>004C2126    je          004C2136
>004C2128    jmp         004C2140
 004C212A    xor         edx,edx
 004C212C    mov         eax,dword ptr [ebp-4]
 004C212F    call        TListBox.SetStyle
>004C2134    jmp         004C2140
 004C2136    mov         dl,1
 004C2138    mov         eax,dword ptr [ebp-4]
 004C213B    call        TListBox.SetStyle
 004C2140    mov         edx,dword ptr [ebp-8]
 004C2143    mov         eax,dword ptr [ebp-4]
 004C2146    mov         eax,dword ptr [eax+218];TListBox.FItems:TStrings
 004C214C    mov         ecx,dword ptr [eax]
 004C214E    call        dword ptr [ecx+8];TStrings.sub_0047A184
 004C2151    pop         ecx
 004C2152    pop         ecx
 004C2153    pop         ebp
 004C2154    ret
*}
end;

//004C2158
{*function sub_004C2158(?:TCustomListBox; ?:?; ?:?):?;
begin
 004C2158    push        ebp
 004C2159    mov         ebp,esp
 004C215B    add         esp,0FFFFFFC8
 004C215E    push        esi
 004C215F    push        edi
 004C2160    mov         esi,edx
 004C2162    lea         edi,[ebp-0C]
 004C2165    movs        dword ptr [edi],dword ptr [esi]
 004C2166    movs        dword ptr [edi],dword ptr [esi]
 004C2167    mov         byte ptr [ebp-0D],cl
 004C216A    mov         dword ptr [ebp-4],eax
 004C216D    push        dword ptr [ebp-8]
 004C2170    push        dword ptr [ebp-0C]
 004C2173    lea         edx,[ebp-38]
 004C2176    mov         eax,dword ptr [ebp-4]
 004C2179    mov         ecx,dword ptr [eax]
 004C217B    call        dword ptr [ecx+44]
 004C217E    lea         eax,[ebp-38]
 004C2181    push        eax
 004C2182    call        user32.PtInRect
 004C2187    test        eax,eax
>004C2189    je          004C21E7
 004C218B    mov         eax,dword ptr [ebp-4]
 004C218E    call        004C1EC0
 004C2193    mov         dword ptr [ebp-14],eax
 004C2196    mov         eax,dword ptr [ebp-4]
 004C2199    mov         eax,dword ptr [eax+218]
 004C219F    mov         edx,dword ptr [eax]
 004C21A1    call        dword ptr [edx+14]
 004C21A4    mov         dword ptr [ebp-18],eax
 004C21A7    mov         eax,dword ptr [ebp-14]
 004C21AA    cmp         eax,dword ptr [ebp-18]
>004C21AD    jge         004C21E1
 004C21AF    lea         eax,[ebp-28]
 004C21B2    push        eax
 004C21B3    mov         ecx,dword ptr [ebp-14]
 004C21B6    mov         edx,198
 004C21BB    mov         eax,dword ptr [ebp-4]
 004C21BE    call        004CC7DC
 004C21C3    push        dword ptr [ebp-8]
 004C21C6    push        dword ptr [ebp-0C]
 004C21C9    lea         eax,[ebp-28]
 004C21CC    push        eax
 004C21CD    call        user32.PtInRect
 004C21D2    test        eax,eax
>004C21D4    jne         004C21EE
 004C21D6    inc         dword ptr [ebp-14]
 004C21D9    mov         eax,dword ptr [ebp-14]
 004C21DC    cmp         eax,dword ptr [ebp-18]
>004C21DF    jl          004C21AF
 004C21E1    cmp         byte ptr [ebp-0D],0
>004C21E5    je          004C21EE
 004C21E7    mov         dword ptr [ebp-14],0FFFFFFFF
 004C21EE    mov         eax,dword ptr [ebp-14]
 004C21F1    pop         edi
 004C21F2    pop         esi
 004C21F3    mov         esp,ebp
 004C21F5    pop         ebp
 004C21F6    ret
end;*}

//004C21F8
{*procedure sub_004C21F8(?:?);
begin
 004C21F8    push        ebp
 004C21F9    mov         ebp,esp
 004C21FB    add         esp,0FFFFFFF4
 004C21FE    push        esi
 004C21FF    mov         dword ptr [ebp-8],edx
 004C2202    mov         dword ptr [ebp-4],eax
 004C2205    mov         edx,dword ptr [ebp-8]
 004C2208    mov         eax,dword ptr [ebp-4]
 004C220B    call        004CF814
 004C2210    mov         ecx,4C2348
 004C2215    mov         edx,dword ptr [ebp-8]
 004C2218    mov         eax,dword ptr [ebp-4]
 004C221B    call        004CF6EC
 004C2220    mov         eax,541640
 004C2225    mov         dword ptr [ebp-0C],eax
 004C2228    mov         eax,dword ptr [ebp-4]
 004C222B    cmp         byte ptr [eax+23B],0;TCustomListBox.FExtendedSelect:Boolean
>004C2232    je          004C223C
 004C2234    mov         eax,541648
 004C2239    mov         dword ptr [ebp-0C],eax
 004C223C    mov         eax,dword ptr [ebp-4]
 004C223F    mov         al,byte ptr [eax+238];TCustomListBox.FStyle:TListBoxStyle
 004C2245    add         al,0FD
 004C2247    sub         al,2
 004C2249    setb        al
 004C224C    and         eax,7F
 004C224F    mov         eax,dword ptr [eax*4+541670]
 004C2256    or          eax,300000
 004C225B    or          eax,1
 004C225E    mov         edx,dword ptr [ebp-8]
 004C2261    or          eax,dword ptr [edx+4]
 004C2264    mov         edx,dword ptr [ebp-4]
 004C2267    movzx       edx,byte ptr [edx+238];TCustomListBox.FStyle:TListBoxStyle
 004C226E    or          eax,dword ptr [edx*4+541624]
 004C2275    mov         edx,dword ptr [ebp-4]
 004C2278    movzx       edx,byte ptr [edx+23A];TCustomListBox.FSorted:Boolean
 004C227F    or          eax,dword ptr [edx*4+541638]
 004C2286    mov         edx,dword ptr [ebp-4]
 004C2289    movzx       edx,byte ptr [edx+208];TCustomListBox......................FMultiSelect:Boolean
 004C2290    mov         ecx,dword ptr [ebp-0C]
 004C2293    or          eax,dword ptr [ecx+edx*4]
 004C2296    mov         edx,dword ptr [ebp-4]
 004C2299    movzx       edx,byte ptr [edx+239];TCustomListBox.FIntegralHeight:Boolean
 004C22A0    or          eax,dword ptr [edx*4+541650]
 004C22A7    mov         edx,dword ptr [ebp-4]
 004C22AA    cmp         dword ptr [edx+22C],0;TCustomListBox.FColumns:Integer
 004C22B1    setne       dl
 004C22B4    and         edx,7F
 004C22B7    or          eax,dword ptr [edx*4+541658]
 004C22BE    mov         edx,dword ptr [ebp-4]
 004C22C1    movzx       edx,byte ptr [edx+224];TCustomListBox.FBorderStyle:TBorderStyle
 004C22C8    or          eax,dword ptr [edx*4+541584]
 004C22CF    mov         edx,dword ptr [ebp-4]
 004C22D2    cmp         dword ptr [edx+23C],0;TCustomListBox.FTabWidth:Integer
 004C22D9    setne       dl
 004C22DC    and         edx,7F
 004C22DF    or          eax,dword ptr [edx*4+541660]
 004C22E6    mov         edx,dword ptr [ebp-8]
 004C22E9    mov         dword ptr [edx+4],eax
 004C22EC    mov         eax,[0055B36C];^NewStyleControls:Boolean
 004C22F1    cmp         byte ptr [eax],0
>004C22F4    je          004C2322
 004C22F6    mov         eax,dword ptr [ebp-4]
 004C22F9    cmp         byte ptr [eax+1A5],0;TCustomListBox.FCtl3D:Boolean
>004C2300    je          004C2322
 004C2302    mov         eax,dword ptr [ebp-4]
 004C2305    cmp         byte ptr [eax+224],1;TCustomListBox.FBorderStyle:TBorderStyle
>004C230C    jne         004C2322
 004C230E    mov         eax,dword ptr [ebp-8]
 004C2311    and         dword ptr [eax+4],0FF7FFFFF
 004C2318    mov         eax,dword ptr [ebp-8]
 004C231B    or          dword ptr [eax+8],200
 004C2322    mov         eax,dword ptr [ebp-4]
 004C2325    mov         si,0FFC8
 004C2329    call        @CallDynaInst;TControl.sub_004CB93C
 004C232E    and         eax,7F
 004C2331    mov         eax,dword ptr [eax*4+541668]
 004C2338    or          eax,1
 004C233B    not         eax
 004C233D    mov         edx,dword ptr [ebp-8]
 004C2340    and         dword ptr [edx+24],eax
 004C2343    pop         esi
 004C2344    mov         esp,ebp
 004C2346    pop         ebp
 004C2347    ret
end;*}

//004C2350
procedure TCustomListBox.CreateWnd;
begin
{*
 004C2350    push        ebp
 004C2351    mov         ebp,esp
 004C2353    add         esp,0FFFFFFF4
 004C2356    mov         dword ptr [ebp-4],eax
 004C2359    mov         eax,dword ptr [ebp-4]
 004C235C    mov         eax,dword ptr [eax+48];TCustomListBox.Width:Integer
 004C235F    mov         dword ptr [ebp-8],eax
 004C2362    mov         eax,dword ptr [ebp-4]
 004C2365    mov         eax,dword ptr [eax+4C];TCustomListBox.Height:Integer
 004C2368    mov         dword ptr [ebp-0C],eax
 004C236B    mov         eax,dword ptr [ebp-4]
 004C236E    call        TWinControl.CreateWnd
 004C2373    push        14
 004C2375    mov         eax,dword ptr [ebp-0C]
 004C2378    push        eax
 004C2379    mov         eax,dword ptr [ebp-8]
 004C237C    push        eax
 004C237D    mov         eax,dword ptr [ebp-4]
 004C2380    mov         eax,dword ptr [eax+44];TCustomListBox.Top:Integer
 004C2383    push        eax
 004C2384    mov         eax,dword ptr [ebp-4]
 004C2387    mov         eax,dword ptr [eax+40];TCustomListBox.Left:Integer
 004C238A    push        eax
 004C238B    push        0
 004C238D    mov         eax,dword ptr [ebp-4]
 004C2390    call        TWinControl.GetHandle
 004C2395    push        eax
 004C2396    call        user32.SetWindowPos
 004C239B    mov         eax,dword ptr [ebp-4]
 004C239E    cmp         dword ptr [eax+23C],0;TCustomListBox.FTabWidth:Integer
>004C23A5    je          004C23C5
 004C23A7    mov         eax,dword ptr [ebp-4]
 004C23AA    add         eax,23C;TCustomListBox.FTabWidth:Integer
 004C23AF    push        eax
 004C23B0    push        1
 004C23B2    push        192
 004C23B7    mov         eax,dword ptr [ebp-4]
 004C23BA    call        TWinControl.GetHandle
 004C23BF    push        eax
 004C23C0    call        user32.SendMessageA
 004C23C5    mov         eax,dword ptr [ebp-4]
 004C23C8    call        004C198C
 004C23CD    mov         eax,dword ptr [ebp-4]
 004C23D0    cmp         dword ptr [eax+234],0FFFFFFFF;TCustomListBox.FOldCount:Integer
>004C23D7    jne         004C23E9
 004C23D9    mov         eax,dword ptr [ebp-4]
 004C23DC    cmp         dword ptr [eax+240],0;TCustomListBox.FSaveItems:TStringList
>004C23E3    je          004C246B
 004C23E9    mov         eax,dword ptr [ebp-4]
 004C23EC    mov         al,byte ptr [eax+238];TCustomListBox.FStyle:TListBoxStyle
 004C23F2    add         al,0FD
 004C23F4    sub         al,2
>004C23F6    jae         004C2409
 004C23F8    mov         eax,dword ptr [ebp-4]
 004C23FB    mov         edx,dword ptr [eax+234];TCustomListBox.FOldCount:Integer
 004C2401    mov         eax,dword ptr [ebp-4]
 004C2404    call        004C2F14
 004C2409    mov         eax,dword ptr [ebp-4]
 004C240C    cmp         dword ptr [eax+240],0;TCustomListBox.FSaveItems:TStringList
>004C2413    je          004C2439
 004C2415    mov         eax,dword ptr [ebp-4]
 004C2418    mov         edx,dword ptr [eax+240];TCustomListBox.FSaveItems:TStringList
 004C241E    mov         eax,dword ptr [ebp-4]
 004C2421    mov         eax,dword ptr [eax+218];TCustomListBox.FItems:TStrings
 004C2427    mov         ecx,dword ptr [eax]
 004C2429    call        dword ptr [ecx+8];TStrings.sub_0047A184
 004C242C    mov         eax,dword ptr [ebp-4]
 004C242F    add         eax,240;TCustomListBox.FSaveItems:TStringList
 004C2434    call        FreeAndNil
 004C2439    mov         eax,dword ptr [ebp-4]
 004C243C    mov         edx,dword ptr [eax+244];TCustomListBox.FSaveTopIndex:Integer
 004C2442    mov         eax,dword ptr [ebp-4]
 004C2445    call        004C20C4
 004C244A    mov         eax,dword ptr [ebp-4]
 004C244D    mov         edx,dword ptr [eax+248];TCustomListBox.FSaveItemIndex:Integer
 004C2453    mov         eax,dword ptr [ebp-4]
 004C2456    mov         ecx,dword ptr [eax]
 004C2458    call        dword ptr [ecx+0D0];TCustomListBox.sub_004C1B20
 004C245E    mov         eax,dword ptr [ebp-4]
 004C2461    mov         dword ptr [eax+234],0FFFFFFFF;TCustomListBox.FOldCount:Integer
 004C246B    mov         esp,ebp
 004C246D    pop         ebp
 004C246E    ret
*}
end;

//004C2470
procedure sub_004C2470;
begin
{*
 004C2470    push        ebp
 004C2471    mov         ebp,esp
 004C2473    push        ecx
 004C2474    mov         dword ptr [ebp-4],eax
 004C2477    mov         eax,dword ptr [ebp-4]
 004C247A    mov         eax,dword ptr [eax+218];TCustomListBox.FItems:TStrings
 004C2480    mov         edx,dword ptr [eax]
 004C2482    call        dword ptr [edx+14];@AbstractError
 004C2485    test        eax,eax
>004C2487    jle         004C2502
 004C2489    mov         eax,dword ptr [ebp-4]
 004C248C    mov         al,byte ptr [eax+238];TCustomListBox.FStyle:TListBoxStyle
 004C2492    add         al,0FD
 004C2494    sub         al,2
>004C2496    jae         004C24B1
 004C2498    mov         eax,dword ptr [ebp-4]
 004C249B    mov         eax,dword ptr [eax+218];TCustomListBox.FItems:TStrings
 004C24A1    mov         edx,dword ptr [eax]
 004C24A3    call        dword ptr [edx+14];@AbstractError
 004C24A6    mov         edx,dword ptr [ebp-4]
 004C24A9    mov         dword ptr [edx+234],eax;TCustomListBox.FOldCount:Integer
>004C24AF    jmp         004C24DD
 004C24B1    mov         dl,1
 004C24B3    mov         eax,[00476078];TStringList
 004C24B8    call        TObject.Create;TStringList.Create
 004C24BD    mov         edx,dword ptr [ebp-4]
 004C24C0    mov         dword ptr [edx+240],eax;TCustomListBox.FSaveItems:TStringList
 004C24C6    mov         eax,dword ptr [ebp-4]
 004C24C9    mov         edx,dword ptr [eax+218];TCustomListBox.FItems:TStrings
 004C24CF    mov         eax,dword ptr [ebp-4]
 004C24D2    mov         eax,dword ptr [eax+240];TCustomListBox.FSaveItems:TStringList
 004C24D8    mov         ecx,dword ptr [eax]
 004C24DA    call        dword ptr [ecx+8];TStringList.sub_0047A184
 004C24DD    mov         eax,dword ptr [ebp-4]
 004C24E0    call        004C1EC0
 004C24E5    mov         edx,dword ptr [ebp-4]
 004C24E8    mov         dword ptr [edx+244],eax;TCustomListBox.FSaveTopIndex:Integer
 004C24EE    mov         eax,dword ptr [ebp-4]
 004C24F1    mov         edx,dword ptr [eax]
 004C24F3    call        dword ptr [edx+0CC];TCustomListBox.sub_004C1A60
 004C24F9    mov         edx,dword ptr [ebp-4]
 004C24FC    mov         dword ptr [edx+248],eax;TCustomListBox.FSaveItemIndex:Integer
 004C2502    mov         eax,dword ptr [ebp-4]
 004C2505    call        004CFE84
 004C250A    pop         ecx
 004C250B    pop         ebp
 004C250C    ret
*}
end;

//004C2510
{*procedure sub_004C2510(?:?);
begin
 004C2510    push        ebp
 004C2511    mov         ebp,esp
 004C2513    add         esp,0FFFFFFF8
 004C2516    mov         dword ptr [ebp-8],edx
 004C2519    mov         dword ptr [ebp-4],eax
 004C251C    mov         eax,dword ptr [ebp-4]
 004C251F    test        byte ptr [eax+1C],10;TCustomListBox.FComponentState:TComponentState
>004C2523    jne         004C2580
 004C2525    mov         eax,dword ptr [ebp-8]
 004C2528    cmp         dword ptr [eax],201
>004C252E    je          004C253B
 004C2530    mov         eax,dword ptr [ebp-8]
 004C2533    cmp         dword ptr [eax],203
>004C2539    jne         004C2580
 004C253B    mov         eax,dword ptr [ebp-4]
 004C253E    call        004CBAA4
 004C2543    test        al,al
>004C2545    jne         004C2580
 004C2547    mov         eax,dword ptr [ebp-4]
 004C254A    cmp         byte ptr [eax+5D],1;TCustomListBox.FDragMode:TDragMode
>004C254E    jne         004C2580
 004C2550    mov         edx,dword ptr [ebp-8]
 004C2553    mov         eax,dword ptr [ebp-4]
 004C2556    call        004D05E8
 004C255B    test        al,al
>004C255D    jne         004C258B
 004C255F    mov         ax,[004C2590];0x1 gvar_004C2590
 004C2565    mov         edx,dword ptr [ebp-4]
 004C2568    or          ax,word ptr [edx+54];TCustomListBox.FControlState:TControlState
 004C256C    mov         edx,dword ptr [ebp-4]
 004C256F    mov         word ptr [edx+54],ax;TCustomListBox.FControlState:TControlState
 004C2573    mov         edx,dword ptr [ebp-8]
 004C2576    mov         eax,dword ptr [ebp-4]
 004C2579    mov         ecx,dword ptr [eax]
 004C257B    call        dword ptr [ecx-14];TObject.Dispatch
>004C257E    jmp         004C258B
 004C2580    mov         edx,dword ptr [ebp-8]
 004C2583    mov         eax,dword ptr [ebp-4]
 004C2586    call        004D06A8
 004C258B    pop         ecx
 004C258C    pop         ecx
 004C258D    pop         ebp
 004C258E    ret
end;*}

//004C2594
{*procedure TCustomListBox.WMLButtonDown(?:?);
begin
 004C2594    push        ebp
 004C2595    mov         ebp,esp
 004C2597    add         esp,0FFFFFFE8
 004C259A    mov         dword ptr [ebp-8],edx
 004C259D    mov         dword ptr [ebp-4],eax
 004C25A0    mov         eax,dword ptr [ebp-8]
 004C25A3    mov         ax,word ptr [eax+4]
 004C25A7    call        004E7D24
 004C25AC    mov         byte ptr [ebp-0D],al
 004C25AF    mov         eax,dword ptr [ebp-4]
 004C25B2    cmp         byte ptr [eax+5D],1;TCustomListBox.FDragMode:TDragMode
>004C25B6    jne         004C2612
 004C25B8    mov         eax,dword ptr [ebp-4]
 004C25BB    cmp         byte ptr [eax+208],0;TCustomListBox.......................FMultiSelect:Boolean
>004C25C2    je          004C2612
 004C25C4    test        byte ptr [ebp-0D],1
>004C25C8    je          004C25D0
 004C25CA    test        byte ptr [ebp-0D],4
>004C25CE    je          004C2612
 004C25D0    lea         edx,[ebp-18]
 004C25D3    mov         eax,dword ptr [ebp-8]
 004C25D6    mov         eax,dword ptr [eax+8]
 004C25D9    call        00408250
 004C25DE    lea         edx,[ebp-18]
 004C25E1    mov         cl,1
 004C25E3    mov         eax,dword ptr [ebp-4]
 004C25E6    call        004C2158
 004C25EB    mov         dword ptr [ebp-0C],eax
 004C25EE    cmp         dword ptr [ebp-0C],0
>004C25F2    jl          004C2612
 004C25F4    mov         edx,dword ptr [ebp-0C]
 004C25F7    mov         eax,dword ptr [ebp-4]
 004C25FA    call        004C1CF0
 004C25FF    test        al,al
>004C2601    je          004C2612
 004C2603    or          ecx,0FFFFFFFF
 004C2606    xor         edx,edx
 004C2608    mov         eax,dword ptr [ebp-4]
 004C260B    call        004CB9C0
>004C2610    jmp         004C264B
 004C2612    mov         edx,dword ptr [ebp-8]
 004C2615    mov         eax,dword ptr [ebp-4]
 004C2618    call        TControl.WMLButtonDown
 004C261D    mov         eax,dword ptr [ebp-4]
 004C2620    cmp         byte ptr [eax+5D],1;TCustomListBox.FDragMode:TDragMode
>004C2624    jne         004C264B
 004C2626    mov         eax,dword ptr [ebp-4]
 004C2629    cmp         byte ptr [eax+208],0;TCustomListBox........................FMultiSelect:Boolean
>004C2630    je          004C263E
 004C2632    test        byte ptr [ebp-0D],4
>004C2636    jne         004C264B
 004C2638    test        byte ptr [ebp-0D],1
>004C263C    jne         004C264B
 004C263E    or          ecx,0FFFFFFFF
 004C2641    xor         edx,edx
 004C2643    mov         eax,dword ptr [ebp-4]
 004C2646    call        004CB9C0
 004C264B    mov         esp,ebp
 004C264D    pop         ebp
 004C264E    ret
end;*}

//004C2650
{*procedure TCustomListBox.sub_004C2650(?:?);
begin
 004C2650    push        ebp
 004C2651    mov         ebp,esp
 004C2653    add         esp,0FFFFFFF8
 004C2656    push        esi
 004C2657    mov         dword ptr [ebp-8],edx
 004C265A    mov         dword ptr [ebp-4],eax
 004C265D    mov         eax,dword ptr [ebp-8]
 004C2660    mov         ax,word ptr [eax+6]
 004C2664    dec         ax
>004C2667    je          004C2670
 004C2669    dec         ax
>004C266C    je          004C2686
>004C266E    jmp         004C2692
 004C2670    mov         eax,dword ptr [ebp-4]
 004C2673    call        004CA9F8
 004C2678    mov         eax,dword ptr [ebp-4]
 004C267B    mov         si,0FFEB
 004C267F    call        @CallDynaInst;TControl.sub_004CCCAC
>004C2684    jmp         004C2692
 004C2686    mov         eax,dword ptr [ebp-4]
 004C2689    mov         si,0FFE9
 004C268D    call        @CallDynaInst;TControl.sub_004CCD3C
 004C2692    pop         esi
 004C2693    pop         ecx
 004C2694    pop         ecx
 004C2695    pop         ebp
 004C2696    ret
end;*}

//004C2698
procedure PaintListBox;
begin
{*
 004C2698    push        ebp
 004C2699    mov         ebp,esp
 004C269B    add         esp,0FFFFFF68
 004C26A1    push        esi
 004C26A2    push        edi
 004C26A3    mov         dword ptr [ebp-20],0BC2B
 004C26AA    lea         eax,[ebp-60]
 004C26AD    mov         dword ptr [ebp-18],eax
 004C26B0    mov         eax,dword ptr [ebp+8]
 004C26B3    mov         eax,dword ptr [eax-4]
 004C26B6    call        TWinControl.GetHandle
 004C26BB    mov         dword ptr [ebp-1C],eax
 004C26BE    mov         dword ptr [ebp-60],2
 004C26C5    mov         dword ptr [ebp-54],1
 004C26CC    xor         eax,eax
 004C26CE    mov         dword ptr [ebp-50],eax
 004C26D1    mov         eax,dword ptr [ebp+8]
 004C26D4    mov         eax,dword ptr [eax-8]
 004C26D7    mov         eax,dword ptr [eax+4]
 004C26DA    mov         dword ptr [ebp-48],eax
 004C26DD    mov         eax,dword ptr [ebp+8]
 004C26E0    mov         eax,dword ptr [eax-4]
 004C26E3    call        TWinControl.GetHandle
 004C26E8    mov         dword ptr [ebp-5C],eax
 004C26EB    mov         eax,dword ptr [ebp+8]
 004C26EE    mov         eax,dword ptr [eax-4]
 004C26F1    call        TWinControl.GetHandle
 004C26F6    mov         dword ptr [ebp-4C],eax
 004C26F9    mov         dword ptr [ebp-30],0BC2C
 004C2700    mov         eax,dword ptr [ebp+8]
 004C2703    mov         eax,dword ptr [eax-4]
 004C2706    call        TWinControl.GetHandle
 004C270B    mov         dword ptr [ebp-2C],eax
 004C270E    lea         eax,[ebp-78]
 004C2711    mov         dword ptr [ebp-28],eax
 004C2714    mov         dword ptr [ebp-78],2
 004C271B    mov         eax,dword ptr [ebp+8]
 004C271E    mov         eax,dword ptr [eax-4]
 004C2721    call        TWinControl.GetHandle
 004C2726    mov         dword ptr [ebp-74],eax
 004C2729    xor         eax,eax
 004C272B    mov         dword ptr [ebp-4],eax
 004C272E    mov         eax,dword ptr [ebp+8]
 004C2731    mov         eax,dword ptr [eax-4]
 004C2734    call        004C1EC0
 004C2739    mov         dword ptr [ebp-8],eax
 004C273C    lea         eax,[ebp-88]
 004C2742    push        eax
 004C2743    mov         eax,dword ptr [ebp+8]
 004C2746    mov         eax,dword ptr [eax-8]
 004C2749    mov         eax,dword ptr [eax+4]
 004C274C    push        eax
 004C274D    call        gdi32.GetClipBox
 004C2752    mov         eax,dword ptr [ebp+8]
 004C2755    mov         eax,dword ptr [eax-4]
 004C2758    mov         eax,dword ptr [eax+4C]
 004C275B    mov         dword ptr [ebp-0C],eax
 004C275E    mov         eax,dword ptr [ebp+8]
 004C2761    mov         eax,dword ptr [eax-4]
 004C2764    mov         eax,dword ptr [eax+48]
 004C2767    mov         dword ptr [ebp-10],eax
 004C276A    mov         eax,dword ptr [ebp-4]
 004C276D    cmp         eax,dword ptr [ebp-0C]
>004C2770    jge         004C2839
 004C2776    mov         eax,dword ptr [ebp-8]
 004C2779    mov         dword ptr [ebp-70],eax
 004C277C    mov         eax,dword ptr [ebp+8]
 004C277F    mov         eax,dword ptr [eax-4]
 004C2782    mov         eax,dword ptr [eax+218]
 004C2788    mov         edx,dword ptr [eax]
 004C278A    call        dword ptr [edx+14]
 004C278D    cmp         eax,dword ptr [ebp-8]
>004C2790    jle         004C27A9
 004C2792    mov         eax,dword ptr [ebp+8]
 004C2795    mov         eax,dword ptr [eax-4]
 004C2798    mov         eax,dword ptr [eax+218]
 004C279E    mov         edx,dword ptr [ebp-8]
 004C27A1    mov         ecx,dword ptr [eax]
 004C27A3    call        dword ptr [ecx+18]
 004C27A6    mov         dword ptr [ebp-64],eax
 004C27A9    mov         eax,dword ptr [ebp-10]
 004C27AC    mov         dword ptr [ebp-6C],eax
 004C27AF    mov         eax,dword ptr [ebp+8]
 004C27B2    mov         eax,dword ptr [eax-4]
 004C27B5    mov         eax,dword ptr [eax+230]
 004C27BB    mov         dword ptr [ebp-68],eax
 004C27BE    mov         eax,dword ptr [ebp-64]
 004C27C1    mov         dword ptr [ebp-34],eax
 004C27C4    mov         eax,dword ptr [ebp-8]
 004C27C7    mov         dword ptr [ebp-58],eax
 004C27CA    lea         edx,[ebp-30]
 004C27CD    mov         eax,dword ptr [ebp+8]
 004C27D0    mov         eax,dword ptr [eax-4]
 004C27D3    mov         ecx,dword ptr [eax]
 004C27D5    call        dword ptr [ecx-14]
 004C27D8    mov         eax,dword ptr [ebp-4]
 004C27DB    add         eax,dword ptr [ebp-68]
 004C27DE    push        eax
 004C27DF    lea         eax,[ebp-98]
 004C27E5    push        eax
 004C27E6    mov         ecx,dword ptr [ebp-6C]
 004C27E9    mov         edx,dword ptr [ebp-4]
 004C27EC    xor         eax,eax
 004C27EE    call        Rect
 004C27F3    lea         esi,[ebp-98]
 004C27F9    lea         edi,[ebp-44]
 004C27FC    movs        dword ptr [edi],dword ptr [esi]
 004C27FD    movs        dword ptr [edi],dword ptr [esi]
 004C27FE    movs        dword ptr [edi],dword ptr [esi]
 004C27FF    movs        dword ptr [edi],dword ptr [esi]
 004C2800    lea         edx,[ebp-20]
 004C2803    mov         eax,dword ptr [ebp+8]
 004C2806    mov         eax,dword ptr [eax-4]
 004C2809    mov         ecx,dword ptr [eax]
 004C280B    call        dword ptr [ecx-14]
 004C280E    mov         eax,dword ptr [ebp-68]
 004C2811    add         dword ptr [ebp-4],eax
 004C2814    inc         dword ptr [ebp-8]
 004C2817    mov         eax,dword ptr [ebp+8]
 004C281A    mov         eax,dword ptr [eax-4]
 004C281D    mov         eax,dword ptr [eax+218]
 004C2823    mov         edx,dword ptr [eax]
 004C2825    call        dword ptr [edx+14]
 004C2828    cmp         eax,dword ptr [ebp-8]
>004C282B    jle         004C2839
 004C282D    mov         eax,dword ptr [ebp-4]
 004C2830    cmp         eax,dword ptr [ebp-0C]
>004C2833    jl          004C2776
 004C2839    pop         edi
 004C283A    pop         esi
 004C283B    mov         esp,ebp
 004C283D    pop         ebp
 004C283E    ret
*}
end;

//004C2840
procedure TCustomListBox.WMPaint(var Message:TWMPaint);
begin
{*
 004C2840    push        ebp
 004C2841    mov         ebp,esp
 004C2843    add         esp,0FFFFFFF8
 004C2846    mov         dword ptr [ebp-8],edx
 004C2849    mov         dword ptr [ebp-4],eax
 004C284C    mov         eax,dword ptr [ebp-8]
 004C284F    cmp         dword ptr [eax+4],0
>004C2853    je          004C285E
 004C2855    push        ebp
 004C2856    call        PaintListBox
 004C285B    pop         ecx
>004C285C    jmp         004C2869
 004C285E    mov         edx,dword ptr [ebp-8]
 004C2861    mov         eax,dword ptr [ebp-4]
 004C2864    call        TWinControl.WMPaint
 004C2869    pop         ecx
 004C286A    pop         ecx
 004C286B    pop         ebp
 004C286C    ret
*}
end;

//004C2870
procedure TCustomListBox.WMSize(Message:TWMSize);
begin
{*
 004C2870    push        ebp
 004C2871    mov         ebp,esp
 004C2873    add         esp,0FFFFFFF8
 004C2876    mov         dword ptr [ebp-8],edx
 004C2879    mov         dword ptr [ebp-4],eax
 004C287C    mov         edx,dword ptr [ebp-8]
 004C287F    mov         eax,dword ptr [ebp-4]
 004C2882    call        TWinControl.WMSize
 004C2887    mov         eax,dword ptr [ebp-4]
 004C288A    call        004C198C
 004C288F    pop         ecx
 004C2890    pop         ecx
 004C2891    pop         ebp
 004C2892    ret
*}
end;

//004C2894
procedure TCustomListBox.sub_004C2894;
begin
{*
 004C2894    push        ebp
 004C2895    mov         ebp,esp
 004C2897    add         esp,0FFFFFFDC
 004C289A    mov         dword ptr [ebp-4],eax
 004C289D    mov         dword ptr [ebp-1C],201
 004C28A4    lea         eax,[ebp-0C]
 004C28A7    push        eax
 004C28A8    call        user32.GetCursorPos
 004C28AD    lea         ecx,[ebp-24]
 004C28B0    lea         edx,[ebp-0C]
 004C28B3    mov         eax,dword ptr [ebp-4]
 004C28B6    call        TControl.ScreenToClient
 004C28BB    lea         eax,[ebp-24]
 004C28BE    call        00408274
 004C28C3    mov         dword ptr [ebp-14],eax
 004C28C6    xor         eax,eax
 004C28C8    mov         dword ptr [ebp-18],eax
 004C28CB    xor         eax,eax
 004C28CD    mov         dword ptr [ebp-10],eax
 004C28D0    lea         edx,[ebp-1C]
 004C28D3    mov         eax,dword ptr [ebp-4]
 004C28D6    mov         ecx,dword ptr [eax]
 004C28D8    call        dword ptr [ecx-10];TCustomListBox.DefaultHandler
 004C28DB    mov         dword ptr [ebp-1C],202
 004C28E2    lea         edx,[ebp-1C]
 004C28E5    mov         eax,dword ptr [ebp-4]
 004C28E8    mov         ecx,dword ptr [eax]
 004C28EA    call        dword ptr [ecx-10];TCustomListBox.DefaultHandler
 004C28ED    mov         esp,ebp
 004C28EF    pop         ebp
 004C28F0    ret
*}
end;

//004C28F4
{*procedure sub_004C28F4(?:?; ?:?; ?:?);
begin
 004C28F4    push        ebp
 004C28F5    mov         ebp,esp
 004C28F7    add         esp,0FFFFFFE0
 004C28FA    push        ebx
 004C28FB    push        esi
 004C28FC    push        edi
 004C28FD    xor         ebx,ebx
 004C28FF    mov         dword ptr [ebp-10],ebx
 004C2902    mov         esi,ecx
 004C2904    lea         edi,[ebp-20]
 004C2907    movs        dword ptr [edi],dword ptr [esi]
 004C2908    movs        dword ptr [edi],dword ptr [esi]
 004C2909    movs        dword ptr [edi],dword ptr [esi]
 004C290A    movs        dword ptr [edi],dword ptr [esi]
 004C290B    mov         dword ptr [ebp-8],edx
 004C290E    mov         dword ptr [ebp-4],eax
 004C2911    xor         eax,eax
 004C2913    push        ebp
 004C2914    push        4C2A1D
 004C2919    push        dword ptr fs:[eax]
 004C291C    mov         dword ptr fs:[eax],esp
 004C291F    mov         eax,dword ptr [ebp-4]
 004C2922    cmp         word ptr [eax+252],0;TCustomListBox.?f252:word
>004C292A    je          004C294F
 004C292C    lea         eax,[ebp-20]
 004C292F    push        eax
 004C2930    mov         ax,word ptr [ebp+8]
 004C2934    push        eax
 004C2935    mov         ebx,dword ptr [ebp-4]
 004C2938    mov         ecx,dword ptr [ebp-8]
 004C293B    mov         edx,dword ptr [ebp-4]
 004C293E    mov         eax,dword ptr [ebx+254];TCustomListBox.?f254:dword
 004C2944    call        dword ptr [ebx+250];TCustomListBox.FOnDrawItem
>004C294A    jmp         004C2A07
 004C294F    lea         edx,[ebp-20]
 004C2952    mov         eax,dword ptr [ebp-4]
 004C2955    mov         eax,dword ptr [eax+228];TCustomListBox.FCanvas:TCanvas
 004C295B    call        TCanvas.FillRect
 004C2960    mov         eax,dword ptr [ebp-4]
 004C2963    mov         edx,dword ptr [eax]
 004C2965    call        dword ptr [edx+0C8];TCustomListBox.sub_004C1AB4
 004C296B    cmp         eax,dword ptr [ebp-8]
>004C296E    jle         004C2A07
 004C2974    mov         edx,824
 004C2979    mov         eax,dword ptr [ebp-4]
 004C297C    call        004CDF58
 004C2981    mov         dword ptr [ebp-0C],eax
 004C2984    mov         eax,dword ptr [ebp-4]
 004C2987    mov         si,0FFC8
 004C298B    call        @CallDynaInst;TControl.sub_004CB93C
 004C2990    test        al,al
>004C2992    jne         004C299A
 004C2994    add         dword ptr [ebp-20],2
>004C2998    jmp         004C299E
 004C299A    sub         dword ptr [ebp-18],2
 004C299E    lea         eax,[ebp-10]
 004C29A1    call        @LStrClr
 004C29A6    mov         eax,dword ptr [ebp-4]
 004C29A9    mov         al,byte ptr [eax+238];TCustomListBox.FStyle:TListBoxStyle
 004C29AF    add         al,0FD
 004C29B1    sub         al,2
>004C29B3    jae         004C29C5
 004C29B5    lea         ecx,[ebp-10]
 004C29B8    mov         edx,dword ptr [ebp-8]
 004C29BB    mov         eax,dword ptr [ebp-4]
 004C29BE    call        004C300C
>004C29C3    jmp         004C29D9
 004C29C5    lea         ecx,[ebp-10]
 004C29C8    mov         edx,dword ptr [ebp-8]
 004C29CB    mov         eax,dword ptr [ebp-4]
 004C29CE    mov         eax,dword ptr [eax+218];TCustomListBox.FItems:TStrings
 004C29D4    mov         ebx,dword ptr [eax]
 004C29D6    call        dword ptr [ebx+0C];@AbstractError
 004C29D9    mov         eax,dword ptr [ebp-0C]
 004C29DC    push        eax
 004C29DD    lea         eax,[ebp-20]
 004C29E0    push        eax
 004C29E1    mov         eax,dword ptr [ebp-10]
 004C29E4    call        @DynArrayLength
 004C29E9    push        eax
 004C29EA    mov         eax,dword ptr [ebp-10]
 004C29ED    call        @LStrToPChar
 004C29F2    push        eax
 004C29F3    mov         eax,dword ptr [ebp-4]
 004C29F6    mov         eax,dword ptr [eax+228];TCustomListBox.FCanvas:TCanvas
 004C29FC    call        TCanvas.GetHandle
 004C2A01    push        eax
 004C2A02    call        user32.DrawTextA
 004C2A07    xor         eax,eax
 004C2A09    pop         edx
 004C2A0A    pop         ecx
 004C2A0B    pop         ecx
 004C2A0C    mov         dword ptr fs:[eax],edx
 004C2A0F    push        4C2A24
 004C2A14    lea         eax,[ebp-10]
 004C2A17    call        @LStrClr
 004C2A1C    ret
>004C2A1D    jmp         @HandleFinally
>004C2A22    jmp         004C2A14
 004C2A24    pop         edi
 004C2A25    pop         esi
 004C2A26    pop         ebx
 004C2A27    mov         esp,ebp
 004C2A29    pop         ebp
 004C2A2A    ret         4
end;*}

//004C2A30
{*procedure sub_004C2A30(?:?; ?:?);
begin
 004C2A30    push        ebp
 004C2A31    mov         ebp,esp
 004C2A33    add         esp,0FFFFFFF4
 004C2A36    push        ebx
 004C2A37    mov         dword ptr [ebp-0C],ecx
 004C2A3A    mov         dword ptr [ebp-8],edx
 004C2A3D    mov         dword ptr [ebp-4],eax
 004C2A40    mov         eax,dword ptr [ebp-4]
 004C2A43    cmp         word ptr [eax+25A],0;TCustomListBox.?f25A:word
>004C2A4B    je          004C2A66
 004C2A4D    mov         eax,dword ptr [ebp-0C]
 004C2A50    push        eax
 004C2A51    mov         ebx,dword ptr [ebp-4]
 004C2A54    mov         ecx,dword ptr [ebp-8]
 004C2A57    mov         edx,dword ptr [ebp-4]
 004C2A5A    mov         eax,dword ptr [ebx+25C];TCustomListBox.?f25C:dword
 004C2A60    call        dword ptr [ebx+258];TCustomListBox.FOnMeasureItem
 004C2A66    pop         ebx
 004C2A67    mov         esp,ebp
 004C2A69    pop         ebp
 004C2A6A    ret
end;*}

//004C2A6C
{*procedure TCustomListBox.sub_004C2A6C(?:?);
begin
 004C2A6C    push        ebp
 004C2A6D    mov         ebp,esp
 004C2A6F    add         esp,0FFFFFFF0
 004C2A72    push        ebx
 004C2A73    mov         dword ptr [ebp-8],edx
 004C2A76    mov         dword ptr [ebp-4],eax
 004C2A79    mov         eax,dword ptr [ebp-8]
 004C2A7C    mov         eax,dword ptr [eax+8]
 004C2A7F    mov         dword ptr [ebp-10],eax
 004C2A82    mov         eax,dword ptr [ebp-10]
 004C2A85    mov         ax,word ptr [eax+10]
 004C2A89    mov         word ptr [ebp-0A],ax
 004C2A8D    mov         eax,dword ptr [ebp-10]
 004C2A90    mov         edx,dword ptr [eax+18]
 004C2A93    mov         eax,dword ptr [ebp-4]
 004C2A96    mov         eax,dword ptr [eax+228];TCustomListBox.FCanvas:TCanvas
 004C2A9C    call        TCanvas.SetHandle
 004C2AA1    mov         eax,dword ptr [ebp-4]
 004C2AA4    mov         edx,dword ptr [eax+68];TCustomListBox.FFont:TFont
 004C2AA7    mov         eax,dword ptr [ebp-4]
 004C2AAA    mov         eax,dword ptr [eax+228];TCustomListBox.FCanvas:TCanvas
 004C2AB0    call        TCanvas.SetFont
 004C2AB5    mov         eax,dword ptr [ebp-4]
 004C2AB8    mov         edx,dword ptr [eax+170];TCustomListBox.FBrush:TBrush
 004C2ABE    mov         eax,dword ptr [ebp-4]
 004C2AC1    mov         eax,dword ptr [eax+228];TCustomListBox.FCanvas:TCanvas
 004C2AC7    call        TCanvas.SetBrush
 004C2ACC    mov         eax,dword ptr [ebp-10]
 004C2ACF    cmp         dword ptr [eax+8],0
>004C2AD3    jl          004C2B07
 004C2AD5    test        byte ptr [ebp-0A],1
>004C2AD9    je          004C2B07
 004C2ADB    mov         eax,dword ptr [ebp-4]
 004C2ADE    mov         eax,dword ptr [eax+228];TCustomListBox.FCanvas:TCanvas
 004C2AE4    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 004C2AE7    mov         edx,0FF00000D
 004C2AEC    call        TBrush.SetColor
 004C2AF1    mov         eax,dword ptr [ebp-4]
 004C2AF4    mov         eax,dword ptr [eax+228];TCustomListBox.FCanvas:TCanvas
 004C2AFA    mov         eax,dword ptr [eax+0C];TCanvas.Font:TFont
 004C2AFD    mov         edx,0FF00000E
 004C2B02    call        TFont.SetColor
 004C2B07    mov         eax,dword ptr [ebp-10]
 004C2B0A    cmp         dword ptr [eax+8],0
>004C2B0E    jl          004C2B2E
 004C2B10    mov         ax,word ptr [ebp-0A]
 004C2B14    push        eax
 004C2B15    mov         eax,dword ptr [ebp-10]
 004C2B18    lea         ecx,[eax+1C]
 004C2B1B    mov         eax,dword ptr [ebp-10]
 004C2B1E    mov         edx,dword ptr [eax+8]
 004C2B21    mov         eax,dword ptr [ebp-4]
 004C2B24    mov         ebx,dword ptr [eax]
 004C2B26    call        dword ptr [ebx+0F8];TCustomListBox.sub_004C28F4
>004C2B2C    jmp         004C2B42
 004C2B2E    mov         eax,dword ptr [ebp-10]
 004C2B31    lea         edx,[eax+1C]
 004C2B34    mov         eax,dword ptr [ebp-4]
 004C2B37    mov         eax,dword ptr [eax+228];TCustomListBox.FCanvas:TCanvas
 004C2B3D    call        TCanvas.FillRect
 004C2B42    test        byte ptr [ebp-0A],10
>004C2B46    je          004C2B5B
 004C2B48    mov         eax,dword ptr [ebp-10]
 004C2B4B    add         eax,1C
 004C2B4E    push        eax
 004C2B4F    mov         eax,dword ptr [ebp-10]
 004C2B52    mov         eax,dword ptr [eax+18]
 004C2B55    push        eax
 004C2B56    call        user32.DrawFocusRect
 004C2B5B    xor         edx,edx
 004C2B5D    mov         eax,dword ptr [ebp-4]
 004C2B60    mov         eax,dword ptr [eax+228];TCustomListBox.FCanvas:TCanvas
 004C2B66    call        TCanvas.SetHandle
 004C2B6B    pop         ebx
 004C2B6C    mov         esp,ebp
 004C2B6E    pop         ebp
 004C2B6F    ret
end;*}

//004C2B70
{*procedure TCustomListBox.sub_004C2B70(?:?);
begin
 004C2B70    push        ebp
 004C2B71    mov         ebp,esp
 004C2B73    add         esp,0FFFFFFF4
 004C2B76    push        ebx
 004C2B77    mov         dword ptr [ebp-8],edx
 004C2B7A    mov         dword ptr [ebp-4],eax
 004C2B7D    mov         eax,dword ptr [ebp-8]
 004C2B80    mov         eax,dword ptr [eax+8]
 004C2B83    mov         dword ptr [ebp-0C],eax
 004C2B86    mov         eax,dword ptr [ebp-4]
 004C2B89    mov         eax,dword ptr [eax+230];TCustomListBox.FItemHeight:Integer
 004C2B8F    mov         edx,dword ptr [ebp-0C]
 004C2B92    mov         dword ptr [edx+10],eax
 004C2B95    mov         eax,dword ptr [ebp-4]
 004C2B98    cmp         byte ptr [eax+238],2;TCustomListBox.FStyle:TListBoxStyle
>004C2B9F    jne         004C2BB8
 004C2BA1    mov         eax,dword ptr [ebp-0C]
 004C2BA4    lea         ecx,[eax+10]
 004C2BA7    mov         eax,dword ptr [ebp-0C]
 004C2BAA    mov         edx,dword ptr [eax+8]
 004C2BAD    mov         eax,dword ptr [ebp-4]
 004C2BB0    mov         ebx,dword ptr [eax]
 004C2BB2    call        dword ptr [ebx+0FC];TCustomListBox.sub_004C2A30
 004C2BB8    pop         ebx
 004C2BB9    mov         esp,ebp
 004C2BBB    pop         ebp
 004C2BBC    ret
end;*}

//004C2BC0
{*procedure TCustomListBox.CMCtl3DChanged(?:?);
begin
 004C2BC0    push        ebp
 004C2BC1    mov         ebp,esp
 004C2BC3    add         esp,0FFFFFFF8
 004C2BC6    mov         dword ptr [ebp-8],edx
 004C2BC9    mov         dword ptr [ebp-4],eax
 004C2BCC    mov         eax,[0055B36C];^NewStyleControls:Boolean
 004C2BD1    cmp         byte ptr [eax],0
>004C2BD4    je          004C2BEA
 004C2BD6    mov         eax,dword ptr [ebp-4]
 004C2BD9    cmp         byte ptr [eax+224],1;TCustomListBox.FBorderStyle:TBorderStyle
>004C2BE0    jne         004C2BEA
 004C2BE2    mov         eax,dword ptr [ebp-4]
 004C2BE5    call        TWinControl.RecreateWnd
 004C2BEA    mov         edx,dword ptr [ebp-8]
 004C2BED    mov         eax,dword ptr [ebp-4]
 004C2BF0    call        TWinControl.CMCtl3DChanged
 004C2BF5    pop         ecx
 004C2BF6    pop         ecx
 004C2BF7    pop         ebp
 004C2BF8    ret
end;*}

//004C2BFC
procedure sub_004C2BFC;
begin
{*
 004C2BFC    push        ebp
 004C2BFD    mov         ebp,esp
 004C2BFF    add         esp,0FFFFFFF4
 004C2C02    mov         dword ptr [ebp-4],eax
 004C2C05    mov         eax,dword ptr [ebp-4]
 004C2C08    cmp         byte ptr [eax+208],0;TCustomListBox.........................FMultiSelect:Boolean
>004C2C0F    je          004C2C44
 004C2C11    mov         eax,dword ptr [ebp-4]
 004C2C14    mov         eax,dword ptr [eax+218];TCustomListBox.FItems:TStrings
 004C2C1A    mov         edx,dword ptr [eax]
 004C2C1C    call        dword ptr [edx+14];@AbstractError
 004C2C1F    dec         eax
 004C2C20    test        eax,eax
>004C2C22    jl          004C2C44
 004C2C24    inc         eax
 004C2C25    mov         dword ptr [ebp-0C],eax
 004C2C28    mov         dword ptr [ebp-8],0
 004C2C2F    mov         cl,1
 004C2C31    mov         edx,dword ptr [ebp-8]
 004C2C34    mov         eax,dword ptr [ebp-4]
 004C2C37    call        004C1D58
 004C2C3C    inc         dword ptr [ebp-8]
 004C2C3F    dec         dword ptr [ebp-0C]
>004C2C42    jne         004C2C2F
 004C2C44    mov         esp,ebp
 004C2C46    pop         ebp
 004C2C47    ret
*}
end;

//004C2C48
{*procedure sub_004C2C48(?:?);
begin
 004C2C48    push        ebp
 004C2C49    mov         ebp,esp
 004C2C4B    push        ecx
 004C2C4C    push        esi
 004C2C4D    mov         eax,dword ptr [ebp+8]
 004C2C50    mov         eax,dword ptr [eax-4]
 004C2C53    mov         al,byte ptr [eax+238]
 004C2C59    add         al,0FD
 004C2C5B    sub         al,2
>004C2C5D    jae         004C2C7B
 004C2C5F    mov         eax,dword ptr [ebp+8]
 004C2C62    mov         eax,dword ptr [eax-4]
 004C2C65    mov         edx,dword ptr [eax+21C]
 004C2C6B    mov         eax,dword ptr [ebp+8]
 004C2C6E    mov         eax,dword ptr [eax-4]
 004C2C71    call        004C3084
 004C2C76    mov         dword ptr [ebp-4],eax
>004C2C79    jmp         004C2CA8
 004C2C7B    mov         eax,dword ptr [ebp+8]
 004C2C7E    mov         eax,dword ptr [eax-4]
 004C2C81    mov         eax,dword ptr [eax+21C]
 004C2C87    call        @LStrToPChar
 004C2C8C    push        eax
 004C2C8D    push        0FF
 004C2C8F    push        18F
 004C2C94    mov         eax,dword ptr [ebp+8]
 004C2C97    mov         eax,dword ptr [eax-4]
 004C2C9A    call        TWinControl.GetHandle
 004C2C9F    push        eax
 004C2CA0    call        user32.SendMessageA
 004C2CA5    mov         dword ptr [ebp-4],eax
 004C2CA8    cmp         dword ptr [ebp-4],0FFFFFFFF
>004C2CAC    je          004C2D11
 004C2CAE    mov         eax,dword ptr [ebp+8]
 004C2CB1    mov         eax,dword ptr [eax-4]
 004C2CB4    cmp         byte ptr [eax+208],0
>004C2CBB    je          004C2CF1
 004C2CBD    mov         eax,dword ptr [ebp+8]
 004C2CC0    mov         eax,dword ptr [eax-4]
 004C2CC3    mov         edx,dword ptr [eax]
 004C2CC5    call        dword ptr [edx+0DC]
 004C2CCB    mov         dx,word ptr [ebp-4]
 004C2CCF    mov         ax,word ptr [ebp-4]
 004C2CD3    call        004082C4
 004C2CD8    push        eax
 004C2CD9    push        1
 004C2CDB    push        19B
 004C2CE0    mov         eax,dword ptr [ebp+8]
 004C2CE3    mov         eax,dword ptr [eax-4]
 004C2CE6    call        TWinControl.GetHandle
 004C2CEB    push        eax
 004C2CEC    call        user32.SendMessageA
 004C2CF1    mov         eax,dword ptr [ebp+8]
 004C2CF4    mov         eax,dword ptr [eax-4]
 004C2CF7    mov         edx,dword ptr [ebp-4]
 004C2CFA    mov         ecx,dword ptr [eax]
 004C2CFC    call        dword ptr [ecx+0D0]
 004C2D02    mov         eax,dword ptr [ebp+8]
 004C2D05    mov         eax,dword ptr [eax-4]
 004C2D08    mov         si,0FFEB
 004C2D0C    call        @CallDynaInst
 004C2D11    mov         eax,dword ptr [ebp+8]
 004C2D14    mov         eax,dword ptr [eax-8]
 004C2D17    mov         al,byte ptr [eax]
 004C2D19    sub         al,8
>004C2D1B    je          004C2D2E
 004C2D1D    sub         al,5
>004C2D1F    je          004C2D2E
 004C2D21    sub         al,0E
>004C2D23    je          004C2D2E
 004C2D25    mov         eax,dword ptr [ebp+8]
 004C2D28    mov         eax,dword ptr [eax-8]
 004C2D2B    mov         byte ptr [eax],0
 004C2D2E    pop         esi
 004C2D2F    pop         ecx
 004C2D30    pop         ebp
 004C2D31    ret
end;*}

//004C2D34
procedure TCustomListBox.KeyPress(Key:Char);
begin
{*
 004C2D34    push        ebp
 004C2D35    mov         ebp,esp
 004C2D37    add         esp,0FFFFFFD0
 004C2D3A    push        esi
 004C2D3B    xor         ecx,ecx
 004C2D3D    mov         dword ptr [ebp-30],ecx
 004C2D40    mov         dword ptr [ebp-28],ecx
 004C2D43    mov         dword ptr [ebp-2C],ecx
 004C2D46    mov         dword ptr [ebp-8],edx
 004C2D49    mov         dword ptr [ebp-4],eax
 004C2D4C    xor         eax,eax
 004C2D4E    push        ebp
 004C2D4F    push        4C2F05
 004C2D54    push        dword ptr fs:[eax]
 004C2D57    mov         dword ptr fs:[eax],esp
 004C2D5A    mov         edx,dword ptr [ebp-8]
 004C2D5D    mov         eax,dword ptr [ebp-4]
 004C2D60    call        TWinControl.KeyPress
 004C2D65    mov         eax,dword ptr [ebp-4]
 004C2D68    cmp         byte ptr [eax+210],0;TCustomListBox.FAutoComplete:Boolean
>004C2D6F    je          004C2EEA
 004C2D75    call        kernel32.GetTickCount
 004C2D7A    mov         edx,dword ptr [ebp-4]
 004C2D7D    sub         eax,dword ptr [edx+220]
 004C2D83    cmp         eax,1F4
>004C2D88    jb          004C2D97
 004C2D8A    mov         eax,dword ptr [ebp-4]
 004C2D8D    add         eax,21C;TCustomListBox.FFilter:String
 004C2D92    call        @LStrClr
 004C2D97    call        kernel32.GetTickCount
 004C2D9C    mov         edx,dword ptr [ebp-4]
 004C2D9F    mov         dword ptr [edx+220],eax;TCustomListBox.FLastTime:Cardinal
 004C2DA5    mov         eax,dword ptr [ebp-8]
 004C2DA8    mov         al,byte ptr [eax]
 004C2DAA    cmp         al,8
>004C2DAC    je          004C2E72
 004C2DB2    mov         eax,dword ptr [ebp-8]
 004C2DB5    mov         al,byte ptr [eax]
 004C2DB7    mov         edx,dword ptr ds:[55B6F4];^gvar_0054097C
 004C2DBD    and         eax,0FF
 004C2DC2    bt          dword ptr [edx],eax
>004C2DC5    jae         004C2E31
 004C2DC7    push        1
 004C2DC9    push        102
 004C2DCE    push        102
 004C2DD3    mov         eax,dword ptr [ebp-4]
 004C2DD6    call        TWinControl.GetHandle
 004C2DDB    push        eax
 004C2DDC    lea         eax,[ebp-24]
 004C2DDF    push        eax
 004C2DE0    call        user32.PeekMessageA
 004C2DE5    test        eax,eax
>004C2DE7    je          004C2EB6
 004C2DED    mov         eax,dword ptr [ebp-4]
 004C2DF0    push        dword ptr [eax+21C];TCustomListBox.FFilter:String
 004C2DF6    lea         eax,[ebp-28]
 004C2DF9    mov         edx,dword ptr [ebp-8]
 004C2DFC    mov         dl,byte ptr [edx]
 004C2DFE    call        @LStrFromChar
 004C2E03    push        dword ptr [ebp-28]
 004C2E06    lea         eax,[ebp-2C]
 004C2E09    mov         edx,dword ptr [ebp-1C]
 004C2E0C    call        @LStrFromChar
 004C2E11    push        dword ptr [ebp-2C]
 004C2E14    mov         eax,dword ptr [ebp-4]
 004C2E17    add         eax,21C;TCustomListBox.FFilter:String
 004C2E1C    mov         edx,3
 004C2E21    call        @LStrCatN
 004C2E26    mov         eax,dword ptr [ebp-8]
 004C2E29    mov         byte ptr [eax],0
>004C2E2C    jmp         004C2EB6
 004C2E31    lea         eax,[ebp-30]
 004C2E34    mov         edx,dword ptr [ebp-8]
 004C2E37    mov         dl,byte ptr [edx]
 004C2E39    call        @LStrFromChar
 004C2E3E    mov         edx,dword ptr [ebp-30]
 004C2E41    mov         eax,dword ptr [ebp-4]
 004C2E44    add         eax,21C;TCustomListBox.FFilter:String
 004C2E49    call        @LStrCat
>004C2E4E    jmp         004C2EB6
 004C2E50    mov         eax,dword ptr [ebp-4]
 004C2E53    mov         eax,dword ptr [eax+21C];TCustomListBox.FFilter:String
 004C2E59    call        @DynArrayLength
 004C2E5E    mov         edx,eax
 004C2E60    mov         eax,dword ptr [ebp-4]
 004C2E63    add         eax,21C;TCustomListBox.FFilter:String
 004C2E68    mov         ecx,1
 004C2E6D    call        @LStrDelete
 004C2E72    mov         eax,dword ptr [ebp-4]
 004C2E75    mov         eax,dword ptr [eax+21C];TCustomListBox.FFilter:String
 004C2E7B    call        @DynArrayLength
 004C2E80    mov         edx,eax
 004C2E82    mov         eax,dword ptr [ebp-4]
 004C2E85    mov         eax,dword ptr [eax+21C];TCustomListBox.FFilter:String
 004C2E8B    call        0046B624
 004C2E90    cmp         al,2
>004C2E92    je          004C2E50
 004C2E94    mov         eax,dword ptr [ebp-4]
 004C2E97    mov         eax,dword ptr [eax+21C];TCustomListBox.FFilter:String
 004C2E9D    call        @DynArrayLength
 004C2EA2    mov         edx,eax
 004C2EA4    mov         eax,dword ptr [ebp-4]
 004C2EA7    add         eax,21C;TCustomListBox.FFilter:String
 004C2EAC    mov         ecx,1
 004C2EB1    call        @LStrDelete
 004C2EB6    mov         eax,dword ptr [ebp-4]
 004C2EB9    mov         eax,dword ptr [eax+21C];TCustomListBox.FFilter:String
 004C2EBF    call        @DynArrayLength
 004C2EC4    test        eax,eax
>004C2EC6    jle         004C2ED1
 004C2EC8    push        ebp
 004C2EC9    call        004C2C48
 004C2ECE    pop         ecx
>004C2ECF    jmp         004C2EEA
 004C2ED1    xor         edx,edx
 004C2ED3    mov         eax,dword ptr [ebp-4]
 004C2ED6    mov         ecx,dword ptr [eax]
 004C2ED8    call        dword ptr [ecx+0D0];TCustomListBox.sub_004C1B20
 004C2EDE    mov         eax,dword ptr [ebp-4]
 004C2EE1    mov         si,0FFEB
 004C2EE5    call        @CallDynaInst;TControl.sub_004CCCAC
 004C2EEA    xor         eax,eax
 004C2EEC    pop         edx
 004C2EED    pop         ecx
 004C2EEE    pop         ecx
 004C2EEF    mov         dword ptr fs:[eax],edx
 004C2EF2    push        4C2F0C
 004C2EF7    lea         eax,[ebp-30]
 004C2EFA    mov         edx,3
 004C2EFF    call        @LStrArrayClr
 004C2F04    ret
>004C2F05    jmp         @HandleFinally
>004C2F0A    jmp         004C2EF7
 004C2F0C    pop         esi
 004C2F0D    mov         esp,ebp
 004C2F0F    pop         ebp
 004C2F10    ret
*}
end;

//004C2F14
procedure sub_004C2F14(?:TCustomListBox; ?:Integer);
begin
{*
 004C2F14    push        ebp
 004C2F15    mov         ebp,esp
 004C2F17    add         esp,0FFFFFFE4
 004C2F1A    xor         ecx,ecx
 004C2F1C    mov         dword ptr [ebp-1C],ecx
 004C2F1F    mov         dword ptr [ebp-18],ecx
 004C2F22    mov         dword ptr [ebp-8],edx
 004C2F25    mov         dword ptr [ebp-4],eax
 004C2F28    xor         eax,eax
 004C2F2A    push        ebp
 004C2F2B    push        4C3000
 004C2F30    push        dword ptr fs:[eax]
 004C2F33    mov         dword ptr fs:[eax],esp
 004C2F36    mov         eax,dword ptr [ebp-4]
 004C2F39    mov         al,byte ptr [eax+238];TCustomListBox.FStyle:TListBoxStyle
 004C2F3F    add         al,0FD
 004C2F41    sub         al,2
>004C2F43    jae         004C2FB1
 004C2F45    push        0
 004C2F47    mov         eax,dword ptr [ebp-8]
 004C2F4A    push        eax
 004C2F4B    push        1A7
 004C2F50    mov         eax,dword ptr [ebp-4]
 004C2F53    call        TWinControl.GetHandle
 004C2F58    push        eax
 004C2F59    call        user32.SendMessageA
 004C2F5E    mov         dword ptr [ebp-0C],eax
 004C2F61    cmp         dword ptr [ebp-0C],0FFFFFFFF
>004C2F65    je          004C2F7B
 004C2F67    cmp         dword ptr [ebp-0C],0FFFFFFFE
>004C2F6B    je          004C2F7B
 004C2F6D    mov         eax,dword ptr [ebp-8]
 004C2F70    mov         edx,dword ptr [ebp-4]
 004C2F73    mov         dword ptr [edx+214],eax;TCustomListBox.FCount:Integer
>004C2F79    jmp         004C2FE5
 004C2F7B    mov         eax,dword ptr [ebp-4]
 004C2F7E    mov         eax,dword ptr [eax+8];TCustomListBox.Name:TComponentName
 004C2F81    mov         dword ptr [ebp-14],eax
 004C2F84    mov         byte ptr [ebp-10],0B
 004C2F88    lea         eax,[ebp-14]
 004C2F8B    push        eax
 004C2F8C    push        0
 004C2F8E    lea         edx,[ebp-18]
 004C2F91    mov         eax,[0055B588];^SErrorSettingCount:TResStringRec
 004C2F96    call        LoadResString
 004C2F9B    mov         ecx,dword ptr [ebp-18]
 004C2F9E    mov         dl,1
 004C2FA0    mov         eax,[004653B4];Exception
 004C2FA5    call        Exception.CreateFmt;Exception.Create
 004C2FAA    call        @RaiseExcept
>004C2FAF    jmp         004C2FE5
 004C2FB1    mov         eax,dword ptr [ebp-4]
 004C2FB4    mov         eax,dword ptr [eax+8];TCustomListBox.Name:TComponentName
 004C2FB7    mov         dword ptr [ebp-14],eax
 004C2FBA    mov         byte ptr [ebp-10],0B
 004C2FBE    lea         eax,[ebp-14]
 004C2FC1    push        eax
 004C2FC2    push        0
 004C2FC4    lea         edx,[ebp-1C]
 004C2FC7    mov         eax,[0055B270];^SListBoxMustBeVirtual:TResStringRec
 004C2FCC    call        LoadResString
 004C2FD1    mov         ecx,dword ptr [ebp-1C]
 004C2FD4    mov         dl,1
 004C2FD6    mov         eax,[004653B4];Exception
 004C2FDB    call        Exception.CreateFmt;Exception.Create
 004C2FE0    call        @RaiseExcept
 004C2FE5    xor         eax,eax
 004C2FE7    pop         edx
 004C2FE8    pop         ecx
 004C2FE9    pop         ecx
 004C2FEA    mov         dword ptr fs:[eax],edx
 004C2FED    push        4C3007
 004C2FF2    lea         eax,[ebp-1C]
 004C2FF5    mov         edx,2
 004C2FFA    call        @LStrArrayClr
 004C2FFF    ret
>004C3000    jmp         @HandleFinally
>004C3005    jmp         004C2FF2
 004C3007    mov         esp,ebp
 004C3009    pop         ebp
 004C300A    ret
*}
end;

//004C300C
{*procedure sub_004C300C(?:TCustomListBox; ?:?; ?:AnsiString);
begin
 004C300C    push        ebp
 004C300D    mov         ebp,esp
 004C300F    add         esp,0FFFFFFF4
 004C3012    push        ebx
 004C3013    mov         dword ptr [ebp-0C],ecx
 004C3016    mov         dword ptr [ebp-8],edx
 004C3019    mov         dword ptr [ebp-4],eax
 004C301C    mov         eax,dword ptr [ebp-4]
 004C301F    cmp         word ptr [eax+262],0;TCustomListBox.?f262:word
>004C3027    je          004C3042
 004C3029    mov         eax,dword ptr [ebp-0C]
 004C302C    push        eax
 004C302D    mov         ebx,dword ptr [ebp-4]
 004C3030    mov         ecx,dword ptr [ebp-8]
 004C3033    mov         edx,dword ptr [ebp-4]
 004C3036    mov         eax,dword ptr [ebx+264];TCustomListBox.?f264:dword
 004C303C    call        dword ptr [ebx+260];TCustomListBox.FOnData
 004C3042    pop         ebx
 004C3043    mov         esp,ebp
 004C3045    pop         ebp
 004C3046    ret
end;*}

//004C3048
{*function sub_004C3048(?:TCustomListBox; ?:?):?;
begin
 004C3048    push        ebp
 004C3049    mov         ebp,esp
 004C304B    add         esp,0FFFFFFF4
 004C304E    push        ebx
 004C304F    mov         dword ptr [ebp-8],edx
 004C3052    mov         dword ptr [ebp-4],eax
 004C3055    mov         eax,dword ptr [ebp-4]
 004C3058    cmp         word ptr [eax+272],0;TCustomListBox.?f272:word
>004C3060    je          004C307B
 004C3062    lea         eax,[ebp-0C]
 004C3065    push        eax
 004C3066    mov         ebx,dword ptr [ebp-4]
 004C3069    mov         ecx,dword ptr [ebp-8]
 004C306C    mov         edx,dword ptr [ebp-4]
 004C306F    mov         eax,dword ptr [ebx+274];TCustomListBox.?f274:dword
 004C3075    call        dword ptr [ebx+270];TCustomListBox.FOnDataObject
 004C307B    mov         eax,dword ptr [ebp-0C]
 004C307E    pop         ebx
 004C307F    mov         esp,ebp
 004C3081    pop         ebp
 004C3082    ret
end;*}

//004C3084
{*function sub_004C3084(?:TCustomListBox; ?:?):?;
begin
 004C3084    push        ebp
 004C3085    mov         ebp,esp
 004C3087    add         esp,0FFFFFFF4
 004C308A    push        ebx
 004C308B    mov         dword ptr [ebp-8],edx
 004C308E    mov         dword ptr [ebp-4],eax
 004C3091    mov         eax,dword ptr [ebp-4]
 004C3094    cmp         word ptr [eax+26A],0;TCustomListBox.?f26A:word
>004C309C    je          004C30B8
 004C309E    mov         ebx,dword ptr [ebp-4]
 004C30A1    mov         ecx,dword ptr [ebp-8]
 004C30A4    mov         edx,dword ptr [ebp-4]
 004C30A7    mov         eax,dword ptr [ebx+26C];TCustomListBox.?f26C:dword
 004C30AD    call        dword ptr [ebx+268];TCustomListBox.FOnDataFind
 004C30B3    mov         dword ptr [ebp-0C],eax
>004C30B6    jmp         004C30BF
 004C30B8    mov         dword ptr [ebp-0C],0FFFFFFFF
 004C30BF    mov         eax,dword ptr [ebp-0C]
 004C30C2    pop         ebx
 004C30C3    mov         esp,ebp
 004C30C5    pop         ebp
 004C30C6    ret
end;*}

//004C30C8
{*function TListBox.GetScrollWidth:?;
begin
 004C30C8    push        ebp
 004C30C9    mov         ebp,esp
 004C30CB    add         esp,0FFFFFFF8
 004C30CE    mov         dword ptr [ebp-4],eax
 004C30D1    push        0
 004C30D3    push        0
 004C30D5    push        193
 004C30DA    mov         eax,dword ptr [ebp-4]
 004C30DD    call        TWinControl.GetHandle
 004C30E2    push        eax
 004C30E3    call        user32.SendMessageA
 004C30E8    mov         dword ptr [ebp-8],eax
 004C30EB    mov         eax,dword ptr [ebp-8]
 004C30EE    pop         ecx
 004C30EF    pop         ecx
 004C30F0    pop         ebp
 004C30F1    ret
end;*}

//004C30F4
procedure TListBox.SetScrollWidth(Value:Integer);
begin
{*
 004C30F4    push        ebp
 004C30F5    mov         ebp,esp
 004C30F7    add         esp,0FFFFFFF8
 004C30FA    mov         dword ptr [ebp-8],edx
 004C30FD    mov         dword ptr [ebp-4],eax
 004C3100    mov         eax,dword ptr [ebp-4]
 004C3103    call        TListBox.GetScrollWidth
 004C3108    cmp         eax,dword ptr [ebp-8]
>004C310B    je          004C3126
 004C310D    push        0
 004C310F    mov         eax,dword ptr [ebp-8]
 004C3112    push        eax
 004C3113    push        194
 004C3118    mov         eax,dword ptr [ebp-4]
 004C311B    call        TWinControl.GetHandle
 004C3120    push        eax
 004C3121    call        user32.SendMessageA
 004C3126    pop         ecx
 004C3127    pop         ecx
 004C3128    pop         ebp
 004C3129    ret
*}
end;

end.