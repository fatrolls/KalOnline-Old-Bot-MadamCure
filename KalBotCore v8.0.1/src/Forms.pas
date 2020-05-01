//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit Forms;

interface

uses
  SysUtils, Classes, Forms, Controls, Graphics, Menus, MainUnit;

type
  TScrollBarStyle = (ssRegular, ssFlat, ssHotTrack);
  TControlScrollBar = class(TPersistent)
  public
    FControl:TScrollingWinControl;//f4
    Increment:TScrollBarInc;//f8
    FPageIncrement:TScrollBarInc;//fA
    Position:Integer;//fC
    Range:Integer;//f10
    FCalcRange:Integer;//f14
    FKind:TScrollBarKind;//f18
    Margin:word;//f1A
    Visible:Boolean;//f1C
    Tracking:Boolean;//f1D
    FScaled:Boolean;//f1E
    Smooth:Boolean;//f1F
    FDelay:Integer;//f20
    ButtonSize:Integer;//f24
    Color:TColor;//f28
    ParentColor:Boolean;//f2C
    Size:Integer;//f30
    Style:TScrollBarStyle;//f34
    ThumbSize:Integer;//f38
    FPageDiv:Integer;//f3C
    FLineDiv:Integer;//f40
    FUpdateNeeded:Boolean;//f44
    //procedure v8(?:?); virtual;//v8//004E8078
    //constructor Create(?:?);//004E7FA4
    function IsStoredIncrement(Value:TScrollBarInc):Boolean;//004E805C
    procedure ChangeBiDiPosition;//004E80E0
    function NeedsScrollBarVisible:Boolean;//004E8488
    procedure SetButtonSize(Value:Integer);//004E884C
    procedure SetColor(Value:TColor);//004E88B8
    procedure SetParentColor(Value:Boolean);//004E88F8
    procedure SetPosition(Value:Integer);//004E8930
    procedure SetSize(Value:Integer);//004E8A60
    procedure SetStyle(Value:TScrollBarStyle);//004E8ACC
    procedure SetThumbSize(Value:Integer);//004E8B04
    procedure SetRange(Value:Integer);//004E8B74
    function IsStoredRange(Value:Integer):Boolean;//004E8BA4
    procedure SetVisible(Value:Boolean);//004E8BC8
    procedure Update(ControlSB:Boolean; AssumeSB:Boolean);//004E8D38
  end;
  TWindowState = (wsNormal, wsMinimized, wsMaximized);
  TScrollingWinControl = class(TWinControl)
  public
    HorzScrollBar:TControlScrollBar;//f208
    VertScrollBar:TControlScrollBar;//f20C
    FAutoScroll:Boolean;//f210
    FAutoRangeCount:Integer;//f214
    FUpdatingScrollBars:Boolean;//f218
    destructor Destroy; virtual;//004E8F0C
    constructor Create(AOwner:TComponent); virtual;//v2C//004E8E70
    //procedure v8C(?:?); virtual;//v8C//004E97C4
    procedure AlignControls(AControl:TControl; var Rect:TRect); virtual;//v90//004E8FC8
    //procedure v98(?:?); virtual;//v98//004E8F5C
    procedure CreateWnd; virtual;//vA0//004E8F80
    //function vC8:?; virtual;//vC8//004E8FF4
    //procedure vCC(?:?); virtual;//vCC//004E933C
    //procedure vD0(?:?); virtual;//vD0//004E9638
    procedure WMSize(Message:TWMSize); message WM_SIZE;//004E9648
    //procedure WMHScroll(?:?); message WM_HSCROLL;//004E9734
    //procedure WMVScroll(?:?); message WM_VSCROLL;//004E977C
    procedure CMBiDiModeChanged(var Message:TMessage); message CM_BIDIMODECHANGED;//004E984C
    procedure sub_004CF0B0; dynamic;//004E9030
    //procedure sub_004CAA18(?:?; ?:?); dynamic;//004E9608
    procedure SetHorzScrollBar(Value:TControlScrollBar);//004E91FC
    procedure SetVertScrollBar(Value:TControlScrollBar);//004E9220
    procedure UpdateScrollBars;//004E9244
  end;
  TFormBorderStyle = (bsNone, bsSingle, bsSizeable, bsDialog, bsToolWindow, bsSizeToolWin);
  TBorderStyle = (bsNone, bsSingle);
  TFormStyle = (fsNormal, fsMDIChild, fsMDIForm, fsStayOnTop);
  TBorderIcon = (biSystemMenu, biMinimize, biMaximize, biHelp);
  TBorderIcons = set of TBorderIcon;
  TPosition = (poDesigned, poDefault, poDefaultPosOnly, poDefaultSizeOnly, poScreenCenter, poDesktopCenter, poMainFormCenter, poOwnerFormCenter);
  TDefaultMonitor = (dmDesktop, dmPrimary, dmMainForm, dmActiveForm);
  TPrintScale = (poNone, poProportional, poPrintToFit);
  TCloseAction = (caNone, caHide, caFree, caMinimize);
  TCloseEvent = procedure(Sender:TObject; var Action:TCloseAction) of object;;
  TCloseQueryEvent = procedure(Sender:TObject; var CanClose:Boolean) of object;;
  TShortCutEvent = procedure(var Msg:TWMKey; var Handled:Boolean) of object;;
  THelpEvent = function(Command:Word; Data:Integer; var CallHelp:Boolean):Boolean of object;;
  TCustomForm = class(TScrollingWinControl)
  public
    FActiveControl:TWinControl;//f220
    FFocusedControl:TWinControl;//f224
    FBorderIcons:TBorderIcons;//f228
    FBorderStyle:TFormBorderStyle;//f229
    FSizeChanging:Boolean;//f22A
    FWindowState:TWindowState;//f22B
    FShowAction:TShowAction;//f22C
    FKeyPreview:Boolean;//f22D
    FActive:Boolean;//f22E
    FFormStyle:TFormStyle;//f22F
    FPosition:TPosition;//f230
    FDefaultMonitor:TDefaultMonitor;//f231
    FTileMode:TTileMode;//f232
    FDropTarget:Boolean;//f233
    FOldCreateOrder:Boolean;//f234
    FPrintScale:TPrintScale;//f235
    FCanvas:TControlCanvas;//f238
    FHelpFile:String;//f23C
    FIcon:TIcon;//f240
    FInCMParentBiDiModeChanged:Boolean;//f244
    FMenu:TMainMenu;//f248
    FModalResult:TModalResult;//f24C
    FDesigner:IDesignerHook;//f250
    FClientHandle:HWND;//f254
    FWindowMenu:TMenuItem;//f258
    FPixelsPerInch:Integer;//f25C
    FObjectMenuItem:TMenuItem;//f260
    FOleForm:IOleForm;//f264
    FClientWidth:Integer;//f268
    FClientHeight:Integer;//f26C
    FTextHeight:Integer;//f270
    FDefClientProc:TFarProc;//f274
    FClientInstance:TFarProc;//f278
    FActiveOleControl:TWinControl;//f27C
    FSavedBorderStyle:TFormBorderStyle;//f280
    FOnActivate:TNotifyEvent;//f288
    f28A:word;//f28A
    f28C:dword;//f28C
    FOnClose:TCloseEvent;//f290
    f292:word;//f292
    f294:dword;//f294
    FOnCloseQuery:TCloseQueryEvent;//f298
    f29A:word;//f29A
    f29C:dword;//f29C
    FOnDeactivate:TNotifyEvent;//f2A0
    f2A2:word;//f2A2
    f2A4:dword;//f2A4
    FOnHelp:THelpEvent;//f2A8
    FOnHide:TNotifyEvent;//f2B0
    f2B2:word;//f2B2
    f2B4:dword;//f2B4
    FOnPaint:TNotifyEvent;//f2B8
    f2BA:word;//f2BA
    f2BC:dword;//f2BC
    FOnShortCut:TShortCutEvent;//f2C0
    f2C2:word;//f2C2
    f2C4:dword;//f2C4
    FOnShow:TNotifyEvent;//f2C8
    f2CA:word;//f2CA
    f2CC:dword;//f2CC
    FOnCreate:TNotifyEvent;//f2D0
    FOnDestroy:TNotifyEvent;//f2D8
    FAlphaBlend:Boolean;//f2E0
    FAlphaBlendValue:byte;//f2E1
    FScreenSnap:Boolean;//f2E2
    FSnapBuffer:Integer;//f2E4
    FTransparentColor:Boolean;//f2E8
    FTransparentColorValue:TColor;//f2EC
    FActionLists:TList;//f2F0
    FFormState:TFormState;//f2F4
    procedure AfterConstruction; virtual;//004E9A6C
    procedure BeforeDestruction; virtual;//004E9C80
    procedure DefaultHandler(var Message:void ); virtual;//004EC988
    destructor Destroy; virtual;//004E9D00
    procedure DefineProperties(Filer:TFiler); virtual;//v4//004EA314
    procedure Loaded; virtual;//vC//004E9EC0
    procedure Notification(AComponent:TComponent; Operation:TOperation); virtual;//v10//004E9F18
    //procedure v14(?:?); virtual;//v14//004EA080
    //procedure v20(?:?; ?:?; ?:?); virtual;//v20//004EAB24
    //function v28(?:?; ?:?):?; virtual;//v28//004EF45C
    constructor Create(AOwner:TComponent); virtual;//v2C//004E98DC
    //procedure v44(?:?); virtual;//v44//004EA700
    //function v54:?; virtual;//v54//004EA828
    //procedure v68(?:?); virtual;//v68//004EAAD4
    procedure SetParentBiDiMode(Value:Boolean); virtual;//v6C//004EA904
    //procedure v74(?:?); virtual;//v74//004EAB74
    procedure AlignControls(AControl:TControl; var Rect:TRect); virtual;//v90//004EB280
    //procedure v98(?:?); virtual;//v98//004EC398
    //procedure v9C(?:?); virtual;//v9C//004EC7CC
    procedure CreateWnd; virtual;//vA0//004EC65C
    procedure DestroyWindowHandle; virtual;//vAC//004EC938
    //procedure vB8(?:?); virtual;//vB8//004ED250
    procedure vC4; virtual;//vC4//004EEBF4
    //procedure vD0(?:?); virtual;//vD0//004ED984
    procedure DoCreate; virtual;//vD4//004E9DE4
    procedure DoDestroy; virtual;//vD8//004E9E60
    procedure vDC; virtual;//vDC//004EF00C
    constructor vE0; virtual;//vE0//004E9AB4
    //function vE4:?; virtual;//vE4//004EEAAC
    //function vE8(?:?):?; virtual;//vE8//004ECB8C
    //function vEC:?; virtual;//vEC//004EECA0
    //function vF0(?:?; ?:?):?; virtual;//vF0//004EAAB8
    //procedure WMDestroy(?:?); message WM_DESTROY;//004ED72C
    //procedure WMActivate(?:?); message WM_ACTIVATE;//004ED94C
    procedure WMPaint(Message:TWMPaint); message WM_PAINT;//004ED3B8
    //procedure WMClose(?:?); message WM_CLOSE;//004ED9D8
    //procedure WMQueryEndSession(?:?); message WM_QUERYENDSESSION;//004ED9F0
    //procedure WMEraseBkgnd(?:?); message WM_ERASEBKGND;//004ED4C4
    //procedure WMShowWindow(?:?); message WM_SHOWWINDOW;//004EDB68
    //procedure WMSettingChange(?:?); message WM_SETTINGCHANGE;//004EF0CC
    //procedure WMGetMinMaxInfo(?:?); message WM_GETMINMAXINFO;//004EDF7C
    //procedure WMEraseBkgnd(?:?); message WM_ICONERASEBKGND;//004ED454
    //procedure WMNextDlgCtl(?:?); message WM_NEXTDLGCTL;//004EDC94
    //procedure WMQueryDragIcon(?:?); message WM_QUERYDRAGICON;//004ED508
    //procedure WMWindowPosChangingMsg(?:?); message WM_WINDOWPOSCHANGING;//004EE08C
    //procedure WMHelp(?:?); message WM_HELP;//004EDDF8
    //procedure WMNCCreate(?:?); message WM_NCCREATE;//004ED640
    //procedure WMNCLButtonDown(?:?); message WM_NCLBUTTONDOWN;//004ED67C
    //procedure WMCommand(?:?); message WM_COMMAND;//004ED7A0
    //procedure WMSysCommand(?:?); message WM_SYSCOMMAND;//004EDAA8
    //procedure WMInitMenuPopup(?:?); message WM_INITMENUPOPUP;//004ED7EC
    //procedure WMMenuSelect(?:?); message WM_MENUSELECT;//004ED86C
    //procedure WMMenuChar(?:?); message WM_MENUCHAR;//004ED81C
    //procedure WMEnterMenuLoop(?:?); message WM_ENTERMENULOOP;//004EDCDC
    //procedure WMMDIActivate(?:?); message WM_MDIACTIVATE;//004EDC24
    //procedure CMActivate(?:?); message CM_ACTIVATE;//004EE160
    //procedure CMDeactivate(?:?); message CM_DEACTIVATE;//004EE194
    //procedure CMDialogKey(?:?); message CM_DIALOGKEY;//004EE1C8
    //procedure CMParentFontChanged(?:?); message CM_PARENTFONTCHANGED;//004EE930
    //procedure CMColorChanged(?:?); message CM_COLORCHANGED;//004EBE40
    //procedure CMFontChanged(?:?); message CM_FONTCHANGED;//004EBF10
    //procedure CMCtl3DChanged(?:?); message CM_CTL3DCHANGED;//004EBEAC
    //procedure CMTextChanged(?:?); message CM_TEXTCHANGED;//004EE8B4
    //procedure CMMenuChanged(?:?); message CM_MENUCHANGED;//004EBF4C
    //procedure CMAppSysCommand(?:?); message CM_APPSYSCOMMAND;//004EDA28
    //procedure CMShowingChanged(?:?); message CM_SHOWINGCHANGED;//004EE294
    //procedure CMIconChanged(?:?); message CM_ICONCHANGED;//004EE870
    //procedure CMRelease(?:?); message CM_RELEASE;//004EE89C
    //procedure CMUIActivate(?:?); message CM_UIACTIVATE;//004EE914
    procedure CMBiDiModeChanged(Message:TMessage); message CM_BIDIMODECHANGED;//004EB31C
    //procedure CMParentBiDiModeChanged(?:?); message CM_PARENTBIDIMODECHANGED;//004EB3D0
    //procedure CMActionUpdate(?:?); message CM_ACTIONUPDATE;//004EF300
    //procedure CMActionExecute(?:?); message CM_ACTIONEXECUTE;//004EF1D0
    //procedure CMDockNotification(?:?); message CM_DOCKNOTIFICATION;//004EE9B0
    //procedure sub_004EF3D0(?:?); dynamic;//004EF3D0
    procedure sub_004ED1F0; dynamic;//004ED1F0
    procedure sub_004EF4FC; dynamic;//004EF4FC
    procedure sub_004EA6D4; dynamic;//004EA6D4
    procedure sub_004EA6A8; dynamic;//004EA6A8
    //procedure sub_004EA674(?:?); dynamic;//004EA674
    procedure sub_004ED1AC; dynamic;//004ED1AC
    procedure sub_004ECEAC; dynamic;//004ECEAC
    procedure sub_004ED168; dynamic;//004ED168
    //procedure sub_004CB70C(?:?); dynamic;//004EF4AC
    //procedure sub_004CA46C(?:?; ?:?); dynamic;//004EB4FC
    procedure sub_004CC91C; dynamic;//004EAA44
    procedure sub_004C9ED8; dynamic;//004EF0A0
    //procedure sub_004C9CFC(?:?); dynamic;//004ED310
    //procedure sub_004CA5A8(?:?; ?:?); dynamic;//004EB568
    //procedure sub_004CAA18(?:?; ?:?); dynamic;//004EA4B4
    procedure sub_004CB99C; dynamic;//004EA4A8
    //procedure sub_0048355C(?:?; ?:?); dynamic;//004EA868
    //procedure sub_004834DC(?:?; ?:?; ?:?); dynamic;//004EA7B4
    procedure SetVisible(Value:Boolean);//004EA9E4
    procedure ClientWndProc(var Message:TMessage);//004EB0A0
    function GetMDIChildCount:Integer;//004EB630
    procedure MergeMenu(MergeState:Boolean);//004ED020
    procedure CloseModal;//004EEB2C
    procedure Release;//004EEC7C
  end;
  TForm = class(TCustomForm)
    procedure SetAutoScroll(Value:Boolean);//004E91A0
    function IsStoredClientHeight(Value:Integer):Boolean;//004EA5C8
    function IsStoredHeight(Value:Integer):Boolean;//004EA5E8
    function IsStoredAutoScroll(Value:Boolean):Boolean;//004EA62C
    procedure SetClientWidth(Value:Integer);//004EA944
    procedure SetClientHeight(Value:Integer);//004EA994
    procedure SetBorderIcons(Value:TBorderIcons);//004EB464
    procedure SetBorderStyle(Value:TFormBorderStyle);//004EB4A0
    procedure SetIcon(Value:TIcon);//004EB898
    function IsStoredActiveControl(Value:TPersistent):Boolean;//004EB8BC
    function IsStoredIcon(Value:TIcon):Boolean;//004EB8D8
    procedure SetFormStyle(Value:TFormStyle);//004EB910
    procedure SetObjectMenuItem(Value:TMenuItem);//004EBA7C
    procedure SetWindowMenu(Value:TMenuItem);//004EBAB4
    procedure SetMenu(Value:TComponent);//004EBAF8
    //function GetPixelsPerInch:?;//004EBD28
    procedure SetPixelsPerInch(Value:Integer);//004EBD58
    procedure SetPosition(Value:TPosition);//004EBDA4
    //function GetScaled:?;//004EBDE0
    procedure SetScaled(Value:Boolean);//004EBE00
    procedure SetWindowState(Value:TWindowState);//004EBF78
    procedure SetActiveControl(Value:TWinControl);//004ECA18
    procedure SetAlphaBlend(Value:Boolean);//004EF61C
    procedure SetAlphaBlendValue(Value:Byte);//004EF650
    procedure SetTransparentColorValue(Value:TColor);//004EF684
    procedure SetTransparentColor(Value:Boolean);//004EF6B8
  end;
  TCustomDockForm = class(TCustomForm)
  public
    procedure Loaded; virtual;//vC//004EF8D0
    constructor Create(AOwner:TComponent); virtual;//v2C//004EF730
    //procedure WMNCHitTest(?:?); message WM_NCHITTEST;//004EF964
    //procedure WMNCLButtonDown(?:?); message WM_NCLBUTTONDOWN;//004EF99C
    //procedure CMVisibleChanged(?:?); message CM_VISIBLECHANGED;//004EFBEC
    //procedure CMControlLIstChange(?:?); message CM_CONTROLLISTCHANGE;//004EFA58
    //procedure CMUndockClient(?:?); message CM_UNDOCKCLIENT;//004EFBC4
    //procedure sub_004EFAC8(?:?); dynamic;//004EFAC8
    //procedure sub_004D1C58(?:?; ?:?; ?:?; ?:?); dynamic;//004EF930
    //procedure sub_004D19E8(?:?); dynamic;//004EF8A0
    //procedure sub_004D19C8(?:?; ?:?); dynamic;//004EF7A8
  end;
  TMonitor = class(TObject)
  public
    FHandle:HMONITOR;//f4
    FMonitorNum:Integer;//f8
  end;
  TScreen = class(TComponent)
  public
    FFonts:TStrings;//f30
    FImes:TStrings;//f34
    FDefaultIme:String;//f38
    FDefaultKbLayout:HKL;//f3C
    FPixelsPerInch:Integer;//f40
    FCursor:TCursor;//f44
    FCursorCount:Integer;//f48
    FForms:TList;//f4C
    FCustomForms:TList;//f50
    FDataModules:TList;//f54
    FMonitors:TList;//f58
    FCursorList:PCursorRec;//f5C
    FDefaultCursor:HCURSOR;//f60
    FActiveControl:TWinControl;//f64
    FActiveCustomForm:TCustomForm;//f68
    FActiveForm:TForm;//f6C
    FLastActiveControl:TWinControl;//f70
    FLastActiveCustomForm:TCustomForm;//f74
    FFocusedForm:TCustomForm;//f78
    FSaveFocusedList:TList;//f7C
    FHintFont:TFont;//f80
    FIconFont:TFont;//f84
    FMenuFont:TFont;//f88
    FAlignLevel:Word;//f8C
    FControlState:TControlState;//f8E
    FOnActiveControlChange:TNotifyEvent;//f90
    FOnActiveFormChange:TNotifyEvent;//f98
    destructor Destroy; virtual;//004EFEF4
    constructor v2C; virtual;//v2C//004EFD50
    procedure RemoveForm(AForm:TCustomForm);//004F0260
    procedure AlignForms(AForm:TCustomForm; var Rect:TRect);//004F0EF8
  end;
  THintInfo = THintInfo = record//size=40
f38:String;//f38
end;;
  TApplication = class(TComponent)
  public
    FHandle:HWND;//f30
    FBiDiMode:TBiDiMode;//f34
    FBiDiKeyboard:String;//f38
    FNonBiDiKeyboard:String;//f3C
    FObjectInstance:Pointer;//f40
    FMainForm:TForm;//f44
    FMouseControl:TControl;//f48
    FHelpSystem:IHelpSystem;//f4C
    FHelpFile:String;//f50
    FHint:String;//f54
    FHintActive:Boolean;//f58
    FUpdateFormatSettings:Boolean;//f59
    FUpdateMetricSettings:Boolean;//f5A
    FShowMainForm:Boolean;//f5B
    FHintColor:TColor;//f5C
    FHintControl:TControl;//f60
    FHintCursorRect:TRect;//f64
    FHintHidePause:Integer;//f74
    FHintPause:Integer;//f78
    FHintShortCuts:Boolean;//f7C
    FHintShortPause:Integer;//f80
    FHintWindow:THintWindow;//f84
    FShowHint:Boolean;//f88
    FTimerMode:TTimerMode;//f89
    FTimerHandle:Word;//f8A
    FTitle:String;//f8C
    FTopMostList:TList;//f90
    FTopMostLevel:Integer;//f94
    FIcon:TIcon;//f98
    FTerminate:Boolean;//f9C
    FActive:Boolean;//f9D
    FAllowTesting:Boolean;//f9E
    FTestLib:THandle;//fA0
    FHandleCreated:Boolean;//fA4
    FRunning:Boolean;//fA5
    FWindowHooks:TList;//fA8
    FWindowList:Pointer;//fAC
    FDialogHandle:HWND;//fB0
    FAutoDragDocking:Boolean;//fB4
    FModalLevel:Integer;//fB8
    FOnActionExecute:TActionEvent;//fC0
    fC2:word;//fC2
    fC4:dword;//fC4
    FOnActionUpdate:TActionEvent;//fC8
    fCA:word;//fCA
    fCC:dword;//fCC
    FOnException:TExceptionEvent;//fD0
    fD4:TMainForm;//fD4
    FOnMessage:TMessageEvent;//fD8
    FOnModalBegin:TNotifyEvent;//fE0
    FOnModalEnd:TNotifyEvent;//fE8
    FOnHelp:THelpEvent;//fF0
    FOnHint:TNotifyEvent;//fF8
    fFA:word;//fFA
    fFC:dword;//fFC
    FOnIdle:TIdleEvent;//f100
    f102:word;//f102
    f104:dword;//f104
    FOnDeactivate:TNotifyEvent;//f108
    FOnActivate:TNotifyEvent;//f110
    FOnMinimize:TNotifyEvent;//f118
    FOnRestore:TNotifyEvent;//f120
    FOnShortCut:TShortCutEvent;//f128
    FOnShowHint:TShowHintEvent;//f130
    f132:word;//f132
    f134:dword;//f134
    FOnSettingChange:TSettingChangeEvent;//f138
    destructor Destroy; virtual;//004F1614
    constructor v2C; virtual;//v2C//004F13C4
    procedure HandleException(Sender:TObject);//004F2F1C
    procedure HintTimerExpired;//004F3C2C
  end;
    //function sub_004E7898:?;//004E7898
    //procedure sub_004E78AC(?:?);//004E78AC
    procedure ShowMDIClientEdge(ClientHandle:THandle; ShowEdge:Boolean);//004E78C0
    procedure DoneApplication;//004E792C
    //function sub_004E79D8(?:?):?;//004E79D8
    //procedure sub_004E7A90(?:?);//004E7A90
    //function sub_004E7B5C(?:HWND):?;//004E7B5C
    //function sub_004E7BB0(?:HWND; ?:?):?;//004E7BB0
    //function sub_004E7C18:?;//004E7C18
    function FindGlobalComponent(const Name:AnsiString):TComponent;//004E7C4C
    //function sub_004E7CF4(?:?; ?:?):?;//004E7CF4
    procedure sub_004E7D10(?:Pointer);//004E7D10
    //function sub_004E7D24(?:?):?;//004E7D24
    //function sub_004E7D80(?:?):?;//004E7D80
    //function sub_004E7DC8(?:?):?;//004E7DC8
    //function sub_004E7E34:?;//004E7E34
    //function sub_004E7E60(?:?; ?:?):?;//004E7E60
    //function sub_004E7ED8(?:TControl):?;//004E7ED8
    //function sub_004E7F1C(?:TControl):?;//004E7F1C
    //procedure sub_004E8078(?:?);//004E8078
    //procedure sub_004E8128(?:?; ?:?);//004E8128
    //procedure sub_004E81AC(?:?; ?:?);//004E81AC
    procedure sub_004E8228(?:TControlScrollBar);//004E8228
    //function sub_004E82E0(?:TControlScrollBar):?;//004E82E0
    //function sub_004E8334(?:?; ?:?):?;//004E8334
    //function sub_004E8378(?:?; ?:?; ?:?):?;//004E8378
    //function sub_004E8404(?:?; ?:?; ?:?):?;//004E8404
    //function sub_004E84B0(?:?):?;//004E84B0
    //procedure sub_004E851C(?:TControlScrollBar; ?:?);//004E851C
    procedure sub_004E8B3C(?:TControlScrollBar; ?:Integer);//004E8B3C
    //procedure sub_004E8BEC(?:?; ?:?);//004E8BEC
    constructor Create(AOwner:TComponent);//004E8E70
    destructor Destroy;//004E8F0C
    //procedure sub_004E8F5C(?:?);//004E8F5C
    procedure CreateWnd;//004E8F80
    procedure AlignControls(AControl:TControl; var Rect:TRect);//004E8FC8
    //function sub_004E8FF4:?;//004E8FF4
    procedure sub_004CF0B0;//004E9030
    procedure sub_004E916C(?:TScrollingWinControl);//004E916C
    //procedure sub_004E933C(?:?);//004E933C
    //procedure sub_004E9370(?:TScrollingWinControl; ?:?);//004E9370
    //procedure sub_004E9518(?:TScrollingWinControl; ?:?; ?:Integer);//004E9518
    //procedure sub_004CAA18(?:?; ?:?);//004E9608
    //procedure sub_004E9638(?:?);//004E9638
    procedure WMSize(Message:TWMSize);//004E9648
    //procedure WMHScroll(?:?);//004E9734
    //procedure WMVScroll(?:?);//004E977C
    //procedure sub_004E97C4(?:?);//004E97C4
    procedure CMBiDiModeChanged(var Message:TMessage);//004E984C
    constructor Create(AOwner:TComponent);//004E98DC
    procedure AfterConstruction;//004E9A6C
    constructor sub_004E9AB4;//004E9AB4
    procedure BeforeDestruction;//004E9C80
    destructor Destroy;//004E9D00
    procedure DoCreate;//004E9DE4
    procedure DoDestroy;//004E9E60
    procedure Loaded;//004E9EC0
    procedure Notification(AComponent:TComponent; Operation:TOperation);//004E9F18
    //procedure sub_004EA080(?:?);//004EA080
    procedure DefineProperties(Filer:TFiler);//004EA314
    //function sub_004EA474(?:TCustomForm):?;//004EA474
    procedure sub_004CB99C;//004EA4A8
    //procedure sub_004CAA18(?:?; ?:?);//004EA4B4
    //procedure sub_004EA55C(?:TCustomForm; ?:?);//004EA55C
    //procedure sub_004EA674(?:?);//004EA674
    procedure sub_004EA6A8;//004EA6A8
    procedure sub_004EA6D4;//004EA6D4
    //procedure sub_004EA700(?:?);//004EA700
    //procedure sub_004834DC(?:?; ?:?; ?:?);//004EA7B4
    //function sub_004EA828:?;//004EA828
    //procedure sub_0048355C(?:?; ?:?);//004EA868
    procedure SetParentBiDiMode(Value:Boolean);//004EA904
    procedure sub_004CC91C;//004EAA44
    //function sub_004EAAB8(?:?; ?:?):?;//004EAAB8
    //procedure sub_004EAAD4(?:?);//004EAAD4
    //procedure sub_004EAB24(?:?; ?:?; ?:?);//004EAB24
    //procedure sub_004EAB74(?:?);//004EAB74
    procedure Default;//004EB000
    function MaximizedChildren:Boolean;//004EB04C
    procedure AlignControls(AControl:TControl; var Rect:TRect);//004EB280
    procedure CMBiDiModeChanged(Message:TMessage);//004EB31C
    //procedure CMParentBiDiModeChanged(?:?);//004EB3D0
    //procedure sub_004CA46C(?:?; ?:?);//004EB4FC
    //procedure sub_004CA5A8(?:?; ?:?);//004EB568
    //function sub_004EB5E0(?:TCustomForm):?;//004EB5E0
    //function sub_004EB698(?:TCustomForm; ?:?):?;//004EB698
    //function sub_004EB710(?:?; ?:?):?;//004EB710
    //function sub_004EB758(?:TCustomForm):?;//004EB758
    //function sub_004EB87C(?:TCustomForm):?;//004EB87C
    procedure sub_004EB9C4(?:TCustomForm);//004EB9C4
    //procedure CMColorChanged(?:?);//004EBE40
    //function sub_004EBE80(?:TCustomForm):?;//004EBE80
    //procedure CMCtl3DChanged(?:?);//004EBEAC
    //procedure CMFontChanged(?:?);//004EBF10
    //procedure CMMenuChanged(?:?);//004EBF4C
    procedure sub_004EBFD4(?:TCustomForm);//004EBFD4
    //procedure sub_004EC398(?:?);//004EC398
    procedure CreateWnd;//004EC65C
    //procedure sub_004EC7CC(?:?);//004EC7CC
    procedure DestroyWindowHandle;//004EC938
    procedure DefaultHandler(var Message:void );//004EC988
    //procedure sub_004ECAF8(?:?; ?:?; ?:?);//004ECAF8
    //procedure sub_004ECB54(?:?; ?:TWinControl);//004ECB54
    //function sub_004ECB8C(?:?):?;//004ECB8C
    procedure sub_004ECEAC;//004ECEAC
    procedure sub_004ECEB8(?:TCustomForm);//004ECEB8
    //procedure sub_004ECF28(?:TCustomForm; ?:?);//004ECF28
    //procedure sub_004ECFB4(?:TCustomForm; ?:?);//004ECFB4
    //procedure sub_004ED104(?:?; ?:TWinControl; ?:?);//004ED104
    procedure sub_004ED168;//004ED168
    procedure sub_004ED1AC;//004ED1AC
    procedure sub_004ED1F0;//004ED1F0
    //function sub_004ED21C(?:TCustomForm):?;//004ED21C
    //procedure sub_004ED250(?:?);//004ED250
    //procedure sub_004C9CFC(?:?);//004ED310
    procedure WMPaint(Message:TWMPaint);//004ED3B8
    //procedure WMEraseBkgnd(?:?);//004ED454
    //procedure WMEraseBkgnd(?:?);//004ED4C4
    //procedure WMQueryDragIcon(?:?);//004ED508
    //procedure sub_004ED528(?:?);//004ED528
    //procedure WMNCCreate(?:?);//004ED640
    //procedure WMNCLButtonDown(?:?);//004ED67C
    //procedure WMDestroy(?:?);//004ED72C
    //procedure WMCommand(?:?);//004ED7A0
    //procedure WMInitMenuPopup(?:?);//004ED7EC
    //procedure WMMenuChar(?:?);//004ED81C
    //procedure WMMenuSelect(?:?);//004ED86C
    //procedure WMActivate(?:?);//004ED94C
    //procedure sub_004ED984(?:?);//004ED984
    //procedure WMClose(?:?);//004ED9D8
    //procedure WMQueryEndSession(?:?);//004ED9F0
    //procedure CMAppSysCommand(?:?);//004EDA28
    //procedure WMSysCommand(?:?);//004EDAA8
    //procedure WMShowWindow(?:?);//004EDB68
    //procedure WMMDIActivate(?:?);//004EDC24
    //procedure WMNextDlgCtl(?:?);//004EDC94
    //procedure WMEnterMenuLoop(?:?);//004EDCDC
    //function sub_004EDD04(?:TMenu; ?:?):?;//004EDD04
    //function sub_004EDD58(?:?):?;//004EDD58
    //procedure sub_004EDDA8(?:?; ?:?; ?:?; ?:?);//004EDDA8
    //procedure WMHelp(?:?);//004EDDF8
    //procedure WMGetMinMaxInfo(?:?);//004EDF7C
    //procedure sub_004EE050(?:?; ?:?; ?:Integer; ?:?);//004EE050
    //procedure WMWindowPosChangingMsg(?:?);//004EE08C
    //procedure CMActivate(?:?);//004EE160
    //procedure CMDeactivate(?:?);//004EE194
    //procedure CMDialogKey(?:?);//004EE1C8
    //procedure CMShowingChanged(?:?);//004EE294
    //procedure CMIconChanged(?:?);//004EE870
    //procedure CMRelease(?:?);//004EE89C
    //procedure CMTextChanged(?:?);//004EE8B4
    //procedure CMUIActivate(?:?);//004EE914
    //procedure CMParentFontChanged(?:?);//004EE930
    //procedure CMDockNotification(?:?);//004EE9B0
    procedure sub_004EE9EC(?:TCustomForm);//004EE9EC
    //function sub_004EEAAC:?;//004EEAAC
    procedure sub_004EEBC4(?:TCustomForm);//004EEBC4
    procedure sub_004EEBD8(?:TCustomForm);//004EEBD8
    procedure sub_004EEBF4;//004EEBF4
    //function sub_004EECA0:?;//004EECA0
    //procedure sub_004EEF8C(?:TCustomForm; ?:?);//004EEF8C
    procedure sub_004EF00C;//004EF00C
    procedure sub_004C9ED8;//004EF0A0
    //procedure WMSettingChange(?:?);//004EF0CC
    //function sub_004EF100(?:TWinControl; ?:?):?;//004EF100
    //function sub_004EF13C(?:TCustomForm; ?:?):?;//004EF13C
    //procedure CMActionExecute(?:?);//004EF1D0
    //function sub_004EF230(?:TWinControl; ?:?):?;//004EF230
    //function sub_004EF26C(?:TCustomForm; ?:?):?;//004EF26C
    //procedure CMActionUpdate(?:?);//004EF300
    //function sub_004EF360(?:?):?;//004EF360
    //procedure sub_004EF3D0(?:?);//004EF3D0
    //function sub_004EF45C(?:?; ?:?):?;//004EF45C
    //procedure sub_004CB70C(?:?);//004EF4AC
    procedure sub_004EF4FC;//004EF4FC
    procedure sub_004EF520(?:TCustomForm);//004EF520
    //procedure sub_004EF6EC(?:TCustomForm; ?:?);//004EF6EC
    constructor Create(AOwner:TComponent);//004EF730
    //procedure sub_004D19C8(?:?; ?:?);//004EF7A8
    //procedure sub_004D19E8(?:?);//004EF8A0
    procedure Loaded;//004EF8D0
    //procedure sub_004D1C58(?:?; ?:?; ?:?; ?:?);//004EF930
    //procedure WMNCHitTest(?:?);//004EF964
    //procedure WMNCLButtonDown(?:?);//004EF99C
    //procedure CMControlLIstChange(?:?);//004EFA58
    //procedure sub_004EFAC8(?:?);//004EFAC8
    //procedure CMUndockClient(?:?);//004EFBC4
    //procedure CMVisibleChanged(?:?);//004EFBEC
    //function sub_004EFC48(?:?):?;//004EFC48
    //function sub_004EFC6C(?:?):?;//004EFC6C
    //function sub_004EFC90(?:?):?;//004EFC90
    //function sub_004EFCB4(?:?):?;//004EFCB4
    //procedure sub_004EFCD8(?:?; ?:?);//004EFCD8
    //procedure sub_004EFD14(?:?; ?:TPoint);//004EFD14
    constructor sub_004EFD50;//004EFD50
    destructor Destroy;//004EFEF4
    //function sub_004EFFFC(?:TScreen):?;//004EFFFC
    //function sub_004F001C(?:TScreen):?;//004F001C
    //function sub_004F003C(?:TScreen):?;//004F003C
    //function sub_004F005C(?:TScreen):?;//004F005C
    //function sub_004F007C(?:TScreen):?;//004F007C
    //function sub_004F009C(?:TScreen):?;//004F009C
    //function sub_004F00BC(?:?; ?:?):?;//004F00BC
    //function sub_004F00E0(?:?):?;//004F00E0
    //function sub_004F0118(?:?; ?:?):?;//004F0118
    //function sub_004F013C(?:?):?;//004F013C
    //function sub_004F0158(?:TScreen; ?:?):?;//004F0158
    //function sub_004F017C(?:TScreen):?;//004F017C
    //procedure sub_004F0198(?:?);//004F0198
    //procedure sub_004F0218(?:?; ?:TCustomForm);//004F0218
    //procedure sub_004F02C0(?:?; ?:?);//004F02C0
    //procedure sub_004F02E0(?:?; ?:?);//004F02E0
    procedure sub_004F0300(?:TScreen);//004F0300
    //procedure sub_004F0374(?:?);//004F0374
    //function sub_004F0408(?:?; ?:?):?;//004F0408
    //procedure sub_004F0464(?:TScreen; ?:?; ?:HICON);//004F0464
    //function sub_004F04AC(?:TScreen):?;//004F04AC
    //procedure sub_004F06CC(?:TScreen; ?:?);//004F06CC
    //procedure sub_004F06F4(?:?; ?:?);//004F06F4
    //function sub_004F0750(?:?; ?:?):?;//004F0750
    //function sub_004F0774(?:?):?;//004F0774
    //function sub_004F0790(?:TScreen; ?:TCursor):?;//004F0790
    //procedure sub_004F07EC(?:?; ?:?);//004F07EC
    procedure sub_004F08A8(?:TScreen);//004F08A8
    //procedure sub_004F0A10(?:?);//004F0A10
    //procedure sub_004F0A24(?:?);//004F0A24
    //procedure sub_004F0A5C(?:?);//004F0A5C
    //function sub_004F0A70(?:?; ?:Pointer; ?:?):?;//004F0A70
    //procedure sub_004F0B04(?:Pointer; ?:?; ?:?);//004F0B04
    //procedure sub_004F0D08(?:?; ?:?);//004F0D08
    //function sub_004F0E84(?:?):?;//004F0E84
    //procedure sub_004F0F80(?:?; ?:TCustomForm);//004F0F80
    //procedure sub_004F1008(?:?);//004F1008
    //procedure sub_004F1020(?:TControl; ?:?);//004F1020
    //function sub_004F1070(?:?):?;//004F1070
    procedure HintTimerProc(Wnd:HWND; Msg:Longint; TimerID:Longint; SysTime:Longint); stdcall;//004F10B8
    //function sub_004F116C(?:?; ?:?; ?:?):?;//004F116C
    procedure sub_004F11B0;//004F11B0
    procedure UnhookHintHooks;//004F122C
    //function sub_004F1288:?;//004F1288
    //procedure sub_004F12C0(?:?);//004F12C0
    //procedure sub_004F12F0(?:?; ?:?);//004F12F0
    //function sub_004F1330(?:TScreen; ?:?; ?:?):?;//004F1330
    //function sub_004F1374(?:TScreen; ?:TPoint; ?:?):?;//004F1374
    constructor _NF__A5A;//004F13B4
    constructor sub_004F13C4;//004F13C4
    destructor Destroy;//004F1614
    procedure sub_004F1774(?:TApplication);//004F1774
    //procedure sub_004F1950(?:TApplication; ?:?);//004F1950
    //procedure sub_004F1A74(?:?; ?:?);//004F1A74
    //procedure sub_004F1B44(?:?);//004F1B44
    //procedure sub_004F1B84(?:?);//004F1B84
    //procedure sub_004F1BC4(?:?);//004F1BC4
    //procedure sub_004F1BD8(?:?);//004F1BD8
    //procedure sub_004F1BEC(?:?);//004F1BEC
    //function sub_004F1C78(?:?):?;//004F1C78
    //function sub_004F1CA8(?:TApplication):?;//004F1CA8
    //function sub_004F1CD8(?:?; ?:?):?;//004F1CD8
    //procedure sub_004F1D48(?:?; ?:?);//004F1D48
    procedure Default;//004F1DC8
    //procedure sub_004F1E04(?:?);//004F1E04
    //procedure sub_004F1E50(?:?; ?:?);//004F1E50
    //function sub_004F2594(?:TApplication):?;//004F2594
    //procedure sub_004F25CC(?:?);//004F25CC
    //procedure sub_004F26B8(?:?);//004F26B8
    procedure sub_004F27FC(?:TApplication);//004F27FC
    //procedure sub_004F2858(?:TApplication; ?:?);//004F2858
    //function sub_004F28B4(?:?; ?:?):?;//004F28B4
    //function sub_004F28F4(?:TApplication; ?:?):?;//004F28F4
    //function sub_004F2960(?:TApplication; ?:?):?;//004F2960
    //function sub_004F2A74(?:TApplication; ?:?):?;//004F2A74
    //function sub_004F2AB8(?:?; ?:?):?;//004F2AB8
    //function sub_004F2B38(?:?; ?:?):?;//004F2B38
    //procedure sub_004F2C00(?:?);//004F2C00
    //procedure sub_004F2C28(?:TApplication; ?:?; ?:?);//004F2C28
    //procedure sub_004F2CA0(?:TApplication; ?:?; ?:?);//004F2CA0
    //procedure sub_004F2D50(?:?);//004F2D50
    //procedure sub_004F2D70(?:?; ?:?; ?:?);//004F2D70
    //procedure sub_004F2E04(?:?);//004F2E04
    procedure sub_004F2F00(?:TApplication);//004F2F00
    //function sub_004F2FBC(?:?; ?:PChar; ?:?; ?:?):?;//004F2FBC
    //procedure sub_004F3124(?:?; ?:?);//004F3124
    //function sub_004F3200(?:TApplication; ?:?; ?:THelpContext):?;//004F3200
    //function sub_004F33B4(?:?; ?:?):?;//004F33B4
    //function sub_004F342C(?:TApplication; ?:THelpContext):?;//004F342C
    //function sub_004F34A4(?:TApplication; ?:?; ?:THelpContext):?;//004F34A4
    //procedure sub_004F34CC(?:TApplication; ?:?);//004F34CC
    //procedure sub_004F34E8(?:?; ?:?);//004F34E8
    //procedure sub_004F3564(?:?);//004F3564
    //function sub_004F35E0(?:?):?;//004F35E0
    //procedure sub_004F368C(?:?; ?:?);//004F368C
    //procedure sub_004F37B0(?:?; ?:?);//004F37B0
    //procedure sub_004F3800(?:?; ?:?);//004F3800
    //procedure sub_004F387C(?:TApplication; ?:?);//004F387C
    //procedure sub_004F3928(?:?; ?:?);//004F3928
    //procedure sub_004F3988(?:?);//004F3988
    //function sub_004F3A28(?:TApplication):?;//004F3A28
    //procedure sub_004F3A64(?:TApplication; ?:Integer; ?:?);//004F3A64
    procedure sub_004F3ABC(?:TApplication);//004F3ABC
    //procedure sub_004F3AF4(?:TApplication; ?:TControl; ?:?);//004F3AF4
    procedure sub_004F3C70(?:TApplication);//004F3C70
    procedure sub_004F3CC8(?:TApplication);//004F3CC8
    //function sub_004F3D00(?:?; ?:Integer):?;//004F3D00
    //function sub_004F3D14:?;//004F3D14
    //procedure sub_004F3E98(?:?; ?:?);//004F3E98
    //function sub_004F3F00(?:AnsiString; ?:?):?;//004F3F00
    //procedure sub_004F3FD8(?:TApplication; ?:?);//004F3FD8
    //procedure sub_004F43AC(?:TApplication; ?:?);//004F43AC
    //function sub_004F43FC(?:?; ?:?; ?:?):?;//004F43FC
    //function sub_004F44A8(?:TApplication; ?:TContainedAction):?;//004F44A8
    //function sub_004F44E4(?:TApplication; ?:TContainedAction):?;//004F44E4
    procedure InitProcs;//004F4520
    //procedure sub_004F4578(?:?; ?:?);//004F4578
    procedure sub_004F459C(?:TApplication);//004F459C
    //procedure sub_004F45B8(?:?);//004F45B8
    procedure _NF__BA6;//004F45D0

implementation

//004E7898
{*function sub_004E7898:?;
begin
 004E7898    push        ebp
 004E7899    mov         ebp,esp
 004E789B    push        ecx
 004E789C    mov         eax,[005418CC];0x0 gvar_005418CC
 004E78A1    mov         dword ptr [ebp-4],eax
 004E78A4    mov         eax,dword ptr [ebp-4]
 004E78A7    pop         ecx
 004E78A8    pop         ebp
 004E78A9    ret
end;*}

//004E78AC
{*procedure sub_004E78AC(?:?);
begin
 004E78AC    push        ebp
 004E78AD    mov         ebp,esp
 004E78AF    push        ecx
 004E78B0    mov         dword ptr [ebp-4],eax
 004E78B3    mov         eax,dword ptr [ebp-4]
 004E78B6    mov         [005418CC],eax;gvar_005418CC
 004E78BB    pop         ecx
 004E78BC    pop         ebp
 004E78BD    ret
end;*}

//004E78C0
procedure ShowMDIClientEdge(ClientHandle:THandle; ShowEdge:Boolean);
begin
{*
 004E78C0    push        ebp
 004E78C1    mov         ebp,esp
 004E78C3    add         esp,0FFFFFFF4
 004E78C6    mov         byte ptr [ebp-5],dl
 004E78C9    mov         dword ptr [ebp-4],eax
 004E78CC    cmp         dword ptr [ebp-4],0
>004E78D0    je          004E7926
 004E78D2    push        0EC
 004E78D4    mov         eax,dword ptr [ebp-4]
 004E78D7    push        eax
 004E78D8    call        user32.GetWindowLongA
 004E78DD    mov         dword ptr [ebp-0C],eax
 004E78E0    cmp         byte ptr [ebp-5],0
>004E78E4    je          004E78F5
 004E78E6    test        byte ptr [ebp-0B],2
>004E78EA    jne         004E7926
 004E78EC    or          dword ptr [ebp-0C],200
>004E78F3    jmp         004E7902
 004E78F5    test        byte ptr [ebp-0B],2
>004E78F9    je          004E7926
 004E78FB    and         dword ptr [ebp-0C],0FFFFFDFF
 004E7902    mov         eax,dword ptr [ebp-0C]
 004E7905    push        eax
 004E7906    push        0EC
 004E7908    mov         eax,dword ptr [ebp-4]
 004E790B    push        eax
 004E790C    call        user32.SetWindowLongA
 004E7911    push        37
 004E7913    push        0
 004E7915    push        0
 004E7917    push        0
 004E7919    push        0
 004E791B    push        0
 004E791D    mov         eax,dword ptr [ebp-4]
 004E7920    push        eax
 004E7921    call        user32.SetWindowPos
 004E7926    mov         esp,ebp
 004E7928    pop         ebp
 004E7929    ret
*}
end;

//004E792C
procedure DoneApplication;
begin
{*
 004E792C    mov         eax,[0055DE4C];Application:TApplication
 004E7931    cmp         dword ptr [eax+30],0
>004E7935    je          004E7947
 004E7937    push        0
 004E7939    mov         eax,[0055DE4C];Application:TApplication
 004E793E    mov         eax,dword ptr [eax+30]
 004E7941    push        eax
 004E7942    call        user32.ShowOwnedPopups
 004E7947    xor         edx,edx
 004E7949    mov         eax,[0055DE4C];Application:TApplication
 004E794E    call        004F34E8
 004E7953    mov         eax,[0055DE4C];Application:TApplication
 004E7958    call        004832CC
 004E795D    mov         eax,[0055DE4C];Application:TApplication
 004E7962    call        0048325C
 004E7967    ret
*}
end;

//004E79D8
{*function sub_004E79D8(?:?):?;
begin
 004E79D8    push        ebp
 004E79D9    mov         ebp,esp
 004E79DB    add         esp,0FFFFFFF0
 004E79DE    push        ebx
 004E79DF    push        esi
 004E79E0    push        edi
 004E79E1    mov         dword ptr [ebp-4],eax
 004E79E4    xor         eax,eax
 004E79E6    mov         dword ptr [ebp-8],eax
 004E79E9    mov         eax,[005418D0];0x0 gvar_005418D0
 004E79EE    mov         dword ptr [ebp-0C],eax
 004E79F1    mov         eax,[005418DC];0x0 gvar_005418DC
 004E79F6    mov         dword ptr [ebp-10],eax
 004E79F9    mov         eax,dword ptr [ebp-4]
 004E79FC    mov         [005418D0],eax;gvar_005418D0
 004E7A01    xor         eax,eax
 004E7A03    mov         [005418DC],eax;gvar_005418DC
 004E7A08    xor         eax,eax
 004E7A0A    push        ebp
 004E7A0B    push        4E7A7F
 004E7A10    push        dword ptr fs:[eax]
 004E7A13    mov         dword ptr fs:[eax],esp
 004E7A16    xor         eax,eax
 004E7A18    push        ebp
 004E7A19    push        4E7A48
 004E7A1E    push        dword ptr fs:[eax]
 004E7A21    mov         dword ptr fs:[eax],esp
 004E7A24    push        0
 004E7A26    push        4E7968
 004E7A2B    call        kernel32.GetCurrentThreadId
 004E7A30    push        eax
 004E7A31    call        user32.EnumThreadWindows
 004E7A36    mov         eax,[005418DC];0x0 gvar_005418DC
 004E7A3B    mov         dword ptr [ebp-8],eax
 004E7A3E    xor         eax,eax
 004E7A40    pop         edx
 004E7A41    pop         ecx
 004E7A42    pop         ecx
 004E7A43    mov         dword ptr fs:[eax],edx
>004E7A46    jmp         004E7A61
>004E7A48    jmp         @HandleAnyException
 004E7A4D    mov         eax,[005418DC];0x0 gvar_005418DC
 004E7A52    call        004E7A90
 004E7A57    call        @RaiseAgain
 004E7A5C    call        @DoneExcept
 004E7A61    xor         eax,eax
 004E7A63    pop         edx
 004E7A64    pop         ecx
 004E7A65    pop         ecx
 004E7A66    mov         dword ptr fs:[eax],edx
 004E7A69    push        4E7A86
 004E7A6E    mov         eax,dword ptr [ebp-10]
 004E7A71    mov         [005418DC],eax;gvar_005418DC
 004E7A76    mov         eax,dword ptr [ebp-0C]
 004E7A79    mov         [005418D0],eax;gvar_005418D0
 004E7A7E    ret
>004E7A7F    jmp         @HandleFinally
>004E7A84    jmp         004E7A6E
 004E7A86    mov         eax,dword ptr [ebp-8]
 004E7A89    pop         edi
 004E7A8A    pop         esi
 004E7A8B    pop         ebx
 004E7A8C    mov         esp,ebp
 004E7A8E    pop         ebp
 004E7A8F    ret
end;*}

//004E7A90
{*procedure sub_004E7A90(?:?);
begin
 004E7A90    push        ebp
 004E7A91    mov         ebp,esp
 004E7A93    add         esp,0FFFFFFF8
 004E7A96    mov         dword ptr [ebp-4],eax
 004E7A99    cmp         dword ptr [ebp-4],0
>004E7A9D    je          004E7ADE
 004E7A9F    mov         eax,dword ptr [ebp-4]
 004E7AA2    mov         dword ptr [ebp-8],eax
 004E7AA5    mov         eax,dword ptr [ebp-8]
 004E7AA8    mov         eax,dword ptr [eax+4]
 004E7AAB    push        eax
 004E7AAC    call        user32.IsWindow
 004E7AB1    test        eax,eax
>004E7AB3    je          004E7AC3
 004E7AB5    push        0FF
 004E7AB7    mov         eax,dword ptr [ebp-8]
 004E7ABA    mov         eax,dword ptr [eax+4]
 004E7ABD    push        eax
 004E7ABE    call        user32.EnableWindow
 004E7AC3    mov         eax,dword ptr [ebp-8]
 004E7AC6    mov         eax,dword ptr [eax]
 004E7AC8    mov         dword ptr [ebp-4],eax
 004E7ACB    mov         edx,8
 004E7AD0    mov         eax,dword ptr [ebp-8]
 004E7AD3    call        @FreeMem
 004E7AD8    cmp         dword ptr [ebp-4],0
>004E7ADC    jne         004E7A9F
 004E7ADE    pop         ecx
 004E7ADF    pop         ecx
 004E7AE0    pop         ebp
 004E7AE1    ret
end;*}

//004E7B5C
{*function sub_004E7B5C(?:HWND):?;
begin
 004E7B5C    push        ebp
 004E7B5D    mov         ebp,esp
 004E7B5F    add         esp,0FFFFFFF8
 004E7B62    mov         dword ptr [ebp-4],eax
 004E7B65    mov         eax,dword ptr [ebp-4]
 004E7B68    mov         [005418D0],eax;gvar_005418D0
 004E7B6D    xor         eax,eax
 004E7B6F    mov         [005418D4],eax;gvar_005418D4
 004E7B74    xor         eax,eax
 004E7B76    mov         [005418D8],eax;gvar_005418D8
 004E7B7B    push        0
 004E7B7D    push        4E7AE4
 004E7B82    call        kernel32.GetCurrentThreadId
 004E7B87    push        eax
 004E7B88    call        user32.EnumThreadWindows
 004E7B8D    cmp         dword ptr ds:[5418D4],0;gvar_005418D4
>004E7B94    je          004E7BA0
 004E7B96    mov         eax,[005418D4];0x0 gvar_005418D4
 004E7B9B    mov         dword ptr [ebp-8],eax
>004E7B9E    jmp         004E7BA8
 004E7BA0    mov         eax,[005418D8];0x0 gvar_005418D8
 004E7BA5    mov         dword ptr [ebp-8],eax
 004E7BA8    mov         eax,dword ptr [ebp-8]
 004E7BAB    pop         ecx
 004E7BAC    pop         ecx
 004E7BAD    pop         ebp
 004E7BAE    ret
end;*}

//004E7BB0
{*function sub_004E7BB0(?:HWND; ?:?):?;
begin
 004E7BB0    push        ebp
 004E7BB1    mov         ebp,esp
 004E7BB3    add         esp,0FFFFFFF4
 004E7BB6    mov         word ptr [ebp-6],dx
 004E7BBA    mov         dword ptr [ebp-4],eax
 004E7BBD    mov         eax,[005418CC];0x0 gvar_005418CC
 004E7BC2    mov         dword ptr [ebp-0C],eax
 004E7BC5    push        0
 004E7BC7    push        0
 004E7BC9    movzx       eax,word ptr [ebp-6]
 004E7BCD    push        eax
 004E7BCE    mov         eax,dword ptr [ebp-4]
 004E7BD1    push        eax
 004E7BD2    call        user32.SendMessageA
 004E7BD7    mov         eax,[005418CC];0x0 gvar_005418CC
 004E7BDC    cmp         eax,dword ptr [ebp-0C]
 004E7BDF    sete        byte ptr [ebp-7]
 004E7BE3    mov         al,byte ptr [ebp-7]
 004E7BE6    mov         esp,ebp
 004E7BE8    pop         ebp
 004E7BE9    ret
end;*}

//004E7C18
{*function sub_004E7C18:?;
begin
 004E7C18    push        ebp
 004E7C19    mov         ebp,esp
 004E7C1B    add         esp,0FFFFFFF4
 004E7C1E    call        user32.GetActiveWindow
 004E7C23    mov         dword ptr [ebp-0C],eax
 004E7C26    mov         byte ptr [ebp-8],0
 004E7C2A    lea         eax,[ebp-0C]
 004E7C2D    push        eax
 004E7C2E    push        4E7BEC
 004E7C33    call        kernel32.GetCurrentThreadId
 004E7C38    push        eax
 004E7C39    call        user32.EnumThreadWindows
 004E7C3E    mov         al,byte ptr [ebp-8]
 004E7C41    mov         byte ptr [ebp-1],al
 004E7C44    mov         al,byte ptr [ebp-1]
 004E7C47    mov         esp,ebp
 004E7C49    pop         ebp
 004E7C4A    ret
end;*}

//004E7C4C
function FindGlobalComponent(const Name:AnsiString):TComponent;
begin
{*
 004E7C4C    push        ebp
 004E7C4D    mov         ebp,esp
 004E7C4F    add         esp,0FFFFFFF0
 004E7C52    mov         dword ptr [ebp-4],eax
 004E7C55    mov         eax,[0055DE50];Screen:TScreen
 004E7C5A    call        004F013C
 004E7C5F    dec         eax
 004E7C60    test        eax,eax
>004E7C62    jl          004E7CA2
 004E7C64    inc         eax
 004E7C65    mov         dword ptr [ebp-10],eax
 004E7C68    mov         dword ptr [ebp-0C],0
 004E7C6F    mov         edx,dword ptr [ebp-0C]
 004E7C72    mov         eax,[0055DE50];Screen:TScreen
 004E7C77    call        004F0118
 004E7C7C    mov         dword ptr [ebp-8],eax
 004E7C7F    mov         eax,dword ptr [ebp-8]
 004E7C82    test        byte ptr [eax+1D],2
>004E7C86    jne         004E7C9A
 004E7C88    mov         eax,dword ptr [ebp-8]
 004E7C8B    mov         edx,dword ptr [eax+8]
 004E7C8E    mov         eax,dword ptr [ebp-4]
 004E7C91    call        CompareText
 004E7C96    test        eax,eax
>004E7C98    je          004E7CEB
 004E7C9A    inc         dword ptr [ebp-0C]
 004E7C9D    dec         dword ptr [ebp-10]
>004E7CA0    jne         004E7C6F
 004E7CA2    mov         eax,[0055DE50];Screen:TScreen
 004E7CA7    call        004F0774
 004E7CAC    dec         eax
 004E7CAD    test        eax,eax
>004E7CAF    jl          004E7CE6
 004E7CB1    inc         eax
 004E7CB2    mov         dword ptr [ebp-10],eax
 004E7CB5    mov         dword ptr [ebp-0C],0
 004E7CBC    mov         edx,dword ptr [ebp-0C]
 004E7CBF    mov         eax,[0055DE50];Screen:TScreen
 004E7CC4    call        004F0750
 004E7CC9    mov         dword ptr [ebp-8],eax
 004E7CCC    mov         eax,dword ptr [ebp-8]
 004E7CCF    mov         edx,dword ptr [eax+8]
 004E7CD2    mov         eax,dword ptr [ebp-4]
 004E7CD5    call        CompareText
 004E7CDA    test        eax,eax
>004E7CDC    je          004E7CEB
 004E7CDE    inc         dword ptr [ebp-0C]
 004E7CE1    dec         dword ptr [ebp-10]
>004E7CE4    jne         004E7CBC
 004E7CE6    xor         eax,eax
 004E7CE8    mov         dword ptr [ebp-8],eax
 004E7CEB    mov         eax,dword ptr [ebp-8]
 004E7CEE    mov         esp,ebp
 004E7CF0    pop         ebp
 004E7CF1    ret
*}
end;

//004E7CF4
{*function sub_004E7CF4(?:?; ?:?):?;
begin
 004E7CF4    push        ebp
 004E7CF5    mov         ebp,esp
 004E7CF7    push        ecx
 004E7CF8    push        dword ptr [ebp+0C]
 004E7CFB    push        dword ptr [ebp+8]
 004E7CFE    call        00484700
 004E7D03    mov         dword ptr [ebp-4],eax
 004E7D06    mov         eax,dword ptr [ebp-4]
 004E7D09    pop         ecx
 004E7D0A    pop         ebp
 004E7D0B    ret         8
end;*}

//004E7D10
procedure sub_004E7D10(?:Pointer);
begin
{*
 004E7D10    push        ebp
 004E7D11    mov         ebp,esp
 004E7D13    push        ecx
 004E7D14    mov         dword ptr [ebp-4],eax
 004E7D17    mov         eax,dword ptr [ebp-4]
 004E7D1A    call        004847E0
 004E7D1F    pop         ecx
 004E7D20    pop         ebp
 004E7D21    ret
*}
end;

//004E7D24
{*function sub_004E7D24(?:?):?;
begin
 004E7D24    push        ebp
 004E7D25    mov         ebp,esp
 004E7D27    push        ecx
 004E7D28    mov         word ptr [ebp-2],ax
 004E7D2C    mov         al,[004E7D7C];0x0 gvar_004E7D7C
 004E7D31    mov         byte ptr [ebp-3],al
 004E7D34    test        byte ptr [ebp-2],4
>004E7D38    je          004E7D3E
 004E7D3A    or          byte ptr [ebp-3],1
 004E7D3E    test        byte ptr [ebp-2],8
>004E7D42    je          004E7D48
 004E7D44    or          byte ptr [ebp-3],4
 004E7D48    test        byte ptr [ebp-2],1
>004E7D4C    je          004E7D52
 004E7D4E    or          byte ptr [ebp-3],8
 004E7D52    test        byte ptr [ebp-2],2
>004E7D56    je          004E7D5C
 004E7D58    or          byte ptr [ebp-3],10
 004E7D5C    test        byte ptr [ebp-2],10
>004E7D60    je          004E7D66
 004E7D62    or          byte ptr [ebp-3],20
 004E7D66    push        12
 004E7D68    call        user32.GetKeyState
 004E7D6D    test        ax,ax
>004E7D70    jge         004E7D76
 004E7D72    or          byte ptr [ebp-3],2
 004E7D76    mov         al,byte ptr [ebp-3]
 004E7D79    pop         ecx
 004E7D7A    pop         ebp
 004E7D7B    ret
end;*}

//004E7D80
{*function sub_004E7D80(?:?):?;
begin
 004E7D80    push        ebp
 004E7D81    mov         ebp,esp
 004E7D83    add         esp,0FFFFFFF8
 004E7D86    mov         dword ptr [ebp-4],eax
 004E7D89    mov         al,[004E7DC4];0x0 gvar_004E7DC4
 004E7D8E    mov         byte ptr [ebp-5],al
 004E7D91    push        10
 004E7D93    call        user32.GetKeyState
 004E7D98    test        ax,ax
>004E7D9B    jge         004E7DA1
 004E7D9D    or          byte ptr [ebp-5],1
 004E7DA1    push        11
 004E7DA3    call        user32.GetKeyState
 004E7DA8    test        ax,ax
>004E7DAB    jge         004E7DB1
 004E7DAD    or          byte ptr [ebp-5],4
 004E7DB1    test        byte ptr [ebp-1],20
>004E7DB5    je          004E7DBB
 004E7DB7    or          byte ptr [ebp-5],2
 004E7DBB    mov         al,byte ptr [ebp-5]
 004E7DBE    pop         ecx
 004E7DBF    pop         ecx
 004E7DC0    pop         ebp
 004E7DC1    ret
end;*}

//004E7DC8
{*function sub_004E7DC8(?:?):?;
begin
 004E7DC8    push        ebp
 004E7DC9    mov         ebp,esp
 004E7DCB    add         esp,0FFFFFFF8
 004E7DCE    mov         dword ptr [ebp-4],eax
 004E7DD1    mov         al,[004E7E30];0x0 gvar_004E7E30
 004E7DD6    mov         byte ptr [ebp-5],al
 004E7DD9    mov         eax,dword ptr [ebp-4]
 004E7DDC    test        byte ptr [eax+10],80
>004E7DE0    je          004E7DE6
 004E7DE2    or          byte ptr [ebp-5],1
 004E7DE6    mov         eax,dword ptr [ebp-4]
 004E7DE9    test        byte ptr [eax+11],80
>004E7DED    je          004E7DF3
 004E7DEF    or          byte ptr [ebp-5],4
 004E7DF3    mov         eax,dword ptr [ebp-4]
 004E7DF6    test        byte ptr [eax+12],80
>004E7DFA    je          004E7E00
 004E7DFC    or          byte ptr [ebp-5],2
 004E7E00    mov         eax,dword ptr [ebp-4]
 004E7E03    test        byte ptr [eax+1],80
>004E7E07    je          004E7E0D
 004E7E09    or          byte ptr [ebp-5],8
 004E7E0D    mov         eax,dword ptr [ebp-4]
 004E7E10    test        byte ptr [eax+2],80
>004E7E14    je          004E7E1A
 004E7E16    or          byte ptr [ebp-5],10
 004E7E1A    mov         eax,dword ptr [ebp-4]
 004E7E1D    test        byte ptr [eax+4],80
>004E7E21    je          004E7E27
 004E7E23    or          byte ptr [ebp-5],20
 004E7E27    mov         al,byte ptr [ebp-5]
 004E7E2A    pop         ecx
 004E7E2B    pop         ecx
 004E7E2C    pop         ebp
 004E7E2D    ret
end;*}

//004E7E34
{*function sub_004E7E34:?;
begin
 004E7E34    push        ebp
 004E7E35    mov         ebp,esp
 004E7E37    add         esp,0FFFFFEFC
 004E7E3D    lea         eax,[ebp-101]
 004E7E43    push        eax
 004E7E44    call        user32.GetKeyboardState
 004E7E49    lea         eax,[ebp-101]
 004E7E4F    call        004E7DC8
 004E7E54    mov         byte ptr [ebp-1],al
 004E7E57    mov         al,byte ptr [ebp-1]
 004E7E5A    mov         esp,ebp
 004E7E5C    pop         ebp
 004E7E5D    ret
end;*}

//004E7E60
{*function sub_004E7E60(?:?; ?:?):?;
begin
 004E7E60    push        ebp
 004E7E61    mov         ebp,esp
 004E7E63    add         esp,0FFFFFFEC
 004E7E66    xor         ecx,ecx
 004E7E68    mov         dword ptr [ebp-10],ecx
 004E7E6B    mov         dword ptr [ebp-14],ecx
 004E7E6E    mov         dword ptr [ebp-8],edx
 004E7E71    mov         word ptr [ebp-2],ax
 004E7E75    xor         eax,eax
 004E7E77    push        ebp
 004E7E78    push        4E7EC7
 004E7E7D    push        dword ptr fs:[eax]
 004E7E80    mov         dword ptr fs:[eax],esp
 004E7E83    lea         edx,[ebp-10]
 004E7E86    mov         eax,dword ptr [ebp-8]
 004E7E89    call        004E5850
 004E7E8E    mov         eax,dword ptr [ebp-10]
 004E7E91    push        eax
 004E7E92    lea         eax,[ebp-14]
 004E7E95    mov         dl,byte ptr [ebp-2]
 004E7E98    call        @LStrFromChar
 004E7E9D    mov         eax,dword ptr [ebp-14]
 004E7EA0    pop         edx
 004E7EA1    call        CompareText
 004E7EA6    test        eax,eax
 004E7EA8    sete        byte ptr [ebp-9]
 004E7EAC    xor         eax,eax
 004E7EAE    pop         edx
 004E7EAF    pop         ecx
 004E7EB0    pop         ecx
 004E7EB1    mov         dword ptr fs:[eax],edx
 004E7EB4    push        4E7ECE
 004E7EB9    lea         eax,[ebp-14]
 004E7EBC    mov         edx,2
 004E7EC1    call        @LStrArrayClr
 004E7EC6    ret
>004E7EC7    jmp         @HandleFinally
>004E7ECC    jmp         004E7EB9
 004E7ECE    mov         al,byte ptr [ebp-9]
 004E7ED1    mov         esp,ebp
 004E7ED3    pop         ebp
 004E7ED4    ret
end;*}

//004E7ED8
{*function sub_004E7ED8(?:TControl):?;
begin
 004E7ED8    push        ebp
 004E7ED9    mov         ebp,esp
 004E7EDB    add         esp,0FFFFFFF8
 004E7EDE    mov         dword ptr [ebp-4],eax
>004E7EE1    jmp         004E7EEC
 004E7EE3    mov         eax,dword ptr [ebp-4]
 004E7EE6    mov         eax,dword ptr [eax+30];TControl.FParent:TWinControl
 004E7EE9    mov         dword ptr [ebp-4],eax
 004E7EEC    mov         eax,dword ptr [ebp-4]
 004E7EEF    cmp         dword ptr [eax+30],0;TWinControl.FParent:TWinControl
>004E7EF3    jne         004E7EE3
 004E7EF5    mov         eax,dword ptr [ebp-4]
 004E7EF8    mov         edx,dword ptr ds:[4E6404];TCustomForm
 004E7EFE    call        @IsClass
 004E7F03    test        al,al
>004E7F05    je          004E7F0F
 004E7F07    mov         eax,dword ptr [ebp-4]
 004E7F0A    mov         dword ptr [ebp-8],eax
>004E7F0D    jmp         004E7F14
 004E7F0F    xor         eax,eax
 004E7F11    mov         dword ptr [ebp-8],eax
 004E7F14    mov         eax,dword ptr [ebp-8]
 004E7F17    pop         ecx
 004E7F18    pop         ecx
 004E7F19    pop         ebp
 004E7F1A    ret
end;*}

//004E7F1C
{*function sub_004E7F1C(?:TControl):?;
begin
 004E7F1C    push        ebp
 004E7F1D    mov         ebp,esp
 004E7F1F    add         esp,0FFFFFFEC
 004E7F22    xor         edx,edx
 004E7F24    mov         dword ptr [ebp-14],edx
 004E7F27    mov         dword ptr [ebp-4],eax
 004E7F2A    xor         eax,eax
 004E7F2C    push        ebp
 004E7F2D    push        4E7F93
 004E7F32    push        dword ptr fs:[eax]
 004E7F35    mov         dword ptr fs:[eax],esp
 004E7F38    mov         eax,dword ptr [ebp-4]
 004E7F3B    call        004E7ED8
 004E7F40    mov         dword ptr [ebp-8],eax
 004E7F43    cmp         dword ptr [ebp-8],0
>004E7F47    jne         004E7F7D
 004E7F49    mov         eax,dword ptr [ebp-4]
 004E7F4C    mov         eax,dword ptr [eax+8];TControl.Name:TComponentName
 004E7F4F    mov         dword ptr [ebp-10],eax
 004E7F52    mov         byte ptr [ebp-0C],0B
 004E7F56    lea         eax,[ebp-10]
 004E7F59    push        eax
 004E7F5A    push        0
 004E7F5C    lea         edx,[ebp-14]
 004E7F5F    mov         eax,[0055B530];^SParentRequired:TResStringRec
 004E7F64    call        LoadResString
 004E7F69    mov         ecx,dword ptr [ebp-14]
 004E7F6C    mov         dl,1
 004E7F6E    mov         eax,[00475960];EInvalidOperation
 004E7F73    call        Exception.CreateFmt;EInvalidOperation.Create
 004E7F78    call        @RaiseExcept
 004E7F7D    xor         eax,eax
 004E7F7F    pop         edx
 004E7F80    pop         ecx
 004E7F81    pop         ecx
 004E7F82    mov         dword ptr fs:[eax],edx
 004E7F85    push        4E7F9A
 004E7F8A    lea         eax,[ebp-14]
 004E7F8D    call        @LStrClr
 004E7F92    ret
>004E7F93    jmp         @HandleFinally
>004E7F98    jmp         004E7F8A
 004E7F9A    mov         eax,dword ptr [ebp-8]
 004E7F9D    mov         esp,ebp
 004E7F9F    pop         ebp
 004E7FA0    ret
end;*}

//004E7FA4
{*constructor TControlScrollBar.Create(?:?);
begin
 004E7FA4    push        ebp
 004E7FA5    mov         ebp,esp
 004E7FA7    add         esp,0FFFFFFF4
 004E7FAA    test        dl,dl
>004E7FAC    je          004E7FB6
 004E7FAE    add         esp,0FFFFFFF0
 004E7FB1    call        @ClassCreate
 004E7FB6    mov         dword ptr [ebp-0C],ecx
 004E7FB9    mov         byte ptr [ebp-5],dl
 004E7FBC    mov         dword ptr [ebp-4],eax
 004E7FBF    xor         edx,edx
 004E7FC1    mov         eax,dword ptr [ebp-4]
 004E7FC4    call        TObject.Create
 004E7FC9    mov         eax,dword ptr [ebp-4]
 004E7FCC    mov         edx,dword ptr [ebp-0C]
 004E7FCF    mov         dword ptr [eax+4],edx
 004E7FD2    mov         eax,dword ptr [ebp-4]
 004E7FD5    mov         dl,byte ptr [ebp+8]
 004E7FD8    mov         byte ptr [eax+18],dl
 004E7FDB    mov         eax,dword ptr [ebp-4]
 004E7FDE    mov         word ptr [eax+0A],50
 004E7FE4    mov         eax,dword ptr [ebp-4]
 004E7FE7    movzx       eax,word ptr [eax+0A]
 004E7FEB    mov         ecx,0A
 004E7FF0    xor         edx,edx
 004E7FF2    div         eax,ecx
 004E7FF4    mov         edx,dword ptr [ebp-4]
 004E7FF7    mov         word ptr [edx+8],ax
 004E7FFB    mov         eax,dword ptr [ebp-4]
 004E7FFE    mov         byte ptr [eax+1C],1
 004E8002    mov         eax,dword ptr [ebp-4]
 004E8005    mov         dword ptr [eax+20],0A
 004E800C    mov         eax,dword ptr [ebp-4]
 004E800F    mov         dword ptr [eax+40],4
 004E8016    mov         eax,dword ptr [ebp-4]
 004E8019    mov         dword ptr [eax+3C],0C
 004E8020    mov         eax,dword ptr [ebp-4]
 004E8023    mov         dword ptr [eax+28],0FF000014
 004E802A    mov         eax,dword ptr [ebp-4]
 004E802D    mov         byte ptr [eax+2C],1
 004E8031    mov         eax,dword ptr [ebp-4]
 004E8034    mov         byte ptr [eax+44],1
 004E8038    mov         eax,dword ptr [ebp-4]
 004E803B    cmp         byte ptr [ebp-5],0
>004E803F    je          004E8050
 004E8041    call        @AfterConstruction
 004E8046    pop         dword ptr fs:[0]
 004E804D    add         esp,0C
 004E8050    mov         eax,dword ptr [ebp-4]
 004E8053    mov         esp,ebp
 004E8055    pop         ebp
 004E8056    ret         4
end;*}

//004E805C
function TControlScrollBar.IsStoredIncrement(Value:TScrollBarInc):Boolean;
begin
{*
 004E805C    push        ebp
 004E805D    mov         ebp,esp
 004E805F    add         esp,0FFFFFFF8
 004E8062    mov         dword ptr [ebp-4],eax
 004E8065    mov         eax,dword ptr [ebp-4]
 004E8068    mov         al,byte ptr [eax+1F];TControlScrollBar.Smooth:Boolean
 004E806B    xor         al,1
 004E806D    mov         byte ptr [ebp-5],al
 004E8070    mov         al,byte ptr [ebp-5]
 004E8073    pop         ecx
 004E8074    pop         ecx
 004E8075    pop         ebp
 004E8076    ret
*}
end;

//004E8078
{*procedure sub_004E8078(?:?);
begin
 004E8078    push        ebp
 004E8079    mov         ebp,esp
 004E807B    add         esp,0FFFFFFF8
 004E807E    mov         dword ptr [ebp-8],edx
 004E8081    mov         dword ptr [ebp-4],eax
 004E8084    mov         eax,dword ptr [ebp-8]
 004E8087    mov         edx,dword ptr ds:[4E5B44];TControlScrollBar
 004E808D    call        @IsClass
 004E8092    test        al,al
>004E8094    je          004E80D0
 004E8096    mov         eax,dword ptr [ebp-8]
 004E8099    mov         dl,byte ptr [eax+1C]
 004E809C    mov         eax,dword ptr [ebp-4]
 004E809F    call        TControlScrollBar.SetVisible
 004E80A4    mov         eax,dword ptr [ebp-8]
 004E80A7    mov         edx,dword ptr [eax+10]
 004E80AA    mov         eax,dword ptr [ebp-4]
 004E80AD    call        TControlScrollBar.SetRange
 004E80B2    mov         eax,dword ptr [ebp-8]
 004E80B5    mov         edx,dword ptr [eax+0C]
 004E80B8    mov         eax,dword ptr [ebp-4]
 004E80BB    call        TControlScrollBar.SetPosition
 004E80C0    mov         eax,dword ptr [ebp-8]
 004E80C3    mov         ax,word ptr [eax+8]
 004E80C7    mov         edx,dword ptr [ebp-4]
 004E80CA    mov         word ptr [edx+8],ax;TControlScrollBar.Increment:TScrollBarInc
>004E80CE    jmp         004E80DB
 004E80D0    mov         edx,dword ptr [ebp-8]
 004E80D3    mov         eax,dword ptr [ebp-4]
 004E80D6    call        004790A8
 004E80DB    pop         ecx
 004E80DC    pop         ecx
 004E80DD    pop         ebp
 004E80DE    ret
end;*}

//004E80E0
procedure TControlScrollBar.ChangeBiDiPosition;
begin
{*
 004E80E0    push        ebp
 004E80E1    mov         ebp,esp
 004E80E3    push        ecx
 004E80E4    mov         dword ptr [ebp-4],eax
 004E80E7    mov         eax,dword ptr [ebp-4]
 004E80EA    cmp         byte ptr [eax+18],0
>004E80EE    jne         004E8125
 004E80F0    mov         eax,dword ptr [ebp-4]
 004E80F3    call        004E82E0
 004E80F8    test        al,al
>004E80FA    je          004E8125
 004E80FC    mov         eax,dword ptr [ebp-4]
 004E80FF    mov         eax,dword ptr [eax+4]
 004E8102    call        004CB96C
 004E8107    test        al,al
>004E8109    jne         004E8117
 004E810B    xor         edx,edx
 004E810D    mov         eax,dword ptr [ebp-4]
 004E8110    call        TControlScrollBar.SetPosition
>004E8115    jmp         004E8125
 004E8117    mov         eax,dword ptr [ebp-4]
 004E811A    mov         edx,dword ptr [eax+10]
 004E811D    mov         eax,dword ptr [ebp-4]
 004E8120    call        TControlScrollBar.SetPosition
 004E8125    pop         ecx
 004E8126    pop         ebp
 004E8127    ret
*}
end;

//004E8128
{*procedure sub_004E8128(?:?; ?:?);
begin
 004E8128    push        ebp
 004E8129    mov         ebp,esp
 004E812B    push        ecx
 004E812C    mov         dword ptr [ebp-4],eax
 004E812F    mov         eax,dword ptr [ebp-4]
 004E8132    cmp         byte ptr [eax+57],0
>004E8136    je          004E819E
 004E8138    mov         eax,dword ptr [ebp-4]
 004E813B    mov         al,byte ptr [eax+5B]
 004E813E    sub         al,1
>004E8140    jb          004E814C
 004E8142    sub         al,2
>004E8144    je          004E814C
 004E8146    dec         al
>004E8148    je          004E8192
>004E814A    jmp         004E819E
 004E814C    mov         eax,dword ptr [ebp-4]
 004E814F    cmp         byte ptr [eax+5B],3
>004E8153    je          004E816A
 004E8155    mov         al,[004E81A4];0x5 gvar_004E81A4
 004E815A    mov         edx,dword ptr [ebp-4]
 004E815D    and         al,byte ptr [edx+61]
 004E8160    mov         dl,byte ptr ds:[4E81A8];0x1 gvar_004E81A8
 004E8166    cmp         dl,al
>004E8168    jne         004E819E
 004E816A    mov         eax,dword ptr [ebp+8]
 004E816D    mov         eax,dword ptr [eax-8]
 004E8170    mov         edx,dword ptr [eax+0C]
 004E8173    mov         eax,dword ptr [ebp-4]
 004E8176    add         edx,dword ptr [eax+40]
 004E8179    mov         eax,dword ptr [ebp-4]
 004E817C    add         edx,dword ptr [eax+48]
 004E817F    mov         eax,dword ptr [ebp+8]
 004E8182    mov         eax,dword ptr [eax-4]
 004E8185    call        0048FCCC
 004E818A    mov         edx,dword ptr [ebp+8]
 004E818D    mov         dword ptr [edx-4],eax
>004E8190    jmp         004E819E
 004E8192    mov         eax,dword ptr [ebp+8]
 004E8195    mov         edx,dword ptr [ebp-4]
 004E8198    mov         edx,dword ptr [edx+48]
 004E819B    add         dword ptr [eax-0C],edx
 004E819E    pop         ecx
 004E819F    pop         ebp
 004E81A0    ret
end;*}

//004E81AC
{*procedure sub_004E81AC(?:?; ?:?);
begin
 004E81AC    push        ebp
 004E81AD    mov         ebp,esp
 004E81AF    push        ecx
 004E81B0    mov         dword ptr [ebp-4],eax
 004E81B3    mov         eax,dword ptr [ebp-4]
 004E81B6    cmp         byte ptr [eax+57],0
>004E81BA    je          004E821C
 004E81BC    mov         eax,dword ptr [ebp-4]
 004E81BF    mov         al,byte ptr [eax+5B]
 004E81C2    sub         al,2
>004E81C4    jb          004E81CA
>004E81C6    je          004E8210
>004E81C8    jmp         004E821C
 004E81CA    mov         eax,dword ptr [ebp-4]
 004E81CD    cmp         byte ptr [eax+5B],1
>004E81D1    je          004E81E8
 004E81D3    mov         al,[004E8220];0xA gvar_004E8220
 004E81D8    mov         edx,dword ptr [ebp-4]
 004E81DB    and         al,byte ptr [edx+61]
 004E81DE    mov         dl,byte ptr ds:[4E8224];0x2 gvar_004E8224
 004E81E4    cmp         dl,al
>004E81E6    jne         004E821C
 004E81E8    mov         eax,dword ptr [ebp+8]
 004E81EB    mov         eax,dword ptr [eax-8]
 004E81EE    mov         edx,dword ptr [eax+0C]
 004E81F1    mov         eax,dword ptr [ebp-4]
 004E81F4    add         edx,dword ptr [eax+44]
 004E81F7    mov         eax,dword ptr [ebp-4]
 004E81FA    add         edx,dword ptr [eax+4C]
 004E81FD    mov         eax,dword ptr [ebp+8]
 004E8200    mov         eax,dword ptr [eax-4]
 004E8203    call        0048FCCC
 004E8208    mov         edx,dword ptr [ebp+8]
 004E820B    mov         dword ptr [edx-4],eax
>004E820E    jmp         004E821C
 004E8210    mov         eax,dword ptr [ebp+8]
 004E8213    mov         edx,dword ptr [ebp-4]
 004E8216    mov         edx,dword ptr [edx+4C]
 004E8219    add         dword ptr [eax-0C],edx
 004E821C    pop         ecx
 004E821D    pop         ebp
 004E821E    ret
end;*}

//004E8228
procedure sub_004E8228(?:TControlScrollBar);
begin
{*
 004E8228    push        ebp
 004E8229    mov         ebp,esp
 004E822B    add         esp,0FFFFFFEC
 004E822E    mov         dword ptr [ebp-8],eax
 004E8231    mov         eax,dword ptr [ebp-8]
 004E8234    mov         eax,dword ptr [eax+4]
 004E8237    cmp         byte ptr [eax+210],0
>004E823E    je          004E82DB
 004E8244    mov         eax,dword ptr [ebp-8]
 004E8247    mov         eax,dword ptr [eax+4]
 004E824A    mov         edx,dword ptr [eax]
 004E824C    call        dword ptr [edx+0C8]
 004E8252    test        al,al
>004E8254    je          004E82D1
 004E8256    xor         eax,eax
 004E8258    mov         dword ptr [ebp-4],eax
 004E825B    xor         eax,eax
 004E825D    mov         dword ptr [ebp-0C],eax
 004E8260    mov         eax,dword ptr [ebp-8]
 004E8263    mov         eax,dword ptr [eax+4]
 004E8266    call        004CF618
 004E826B    dec         eax
 004E826C    test        eax,eax
>004E826E    jl          004E82B8
 004E8270    inc         eax
 004E8271    mov         dword ptr [ebp-14],eax
 004E8274    mov         dword ptr [ebp-10],0
 004E827B    mov         eax,dword ptr [ebp-8]
 004E827E    cmp         byte ptr [eax+18],0
>004E8282    jne         004E829B
 004E8284    push        ebp
 004E8285    mov         eax,dword ptr [ebp-8]
 004E8288    mov         eax,dword ptr [eax+4]
 004E828B    mov         edx,dword ptr [ebp-10]
 004E828E    call        004CF5AC
 004E8293    call        004E8128
 004E8298    pop         ecx
>004E8299    jmp         004E82B0
 004E829B    push        ebp
 004E829C    mov         eax,dword ptr [ebp-8]
 004E829F    mov         eax,dword ptr [eax+4]
 004E82A2    mov         edx,dword ptr [ebp-10]
 004E82A5    call        004CF5AC
 004E82AA    call        004E81AC
 004E82AF    pop         ecx
 004E82B0    inc         dword ptr [ebp-10]
 004E82B3    dec         dword ptr [ebp-14]
>004E82B6    jne         004E827B
 004E82B8    mov         edx,dword ptr [ebp-4]
 004E82BB    add         edx,dword ptr [ebp-0C]
 004E82BE    mov         eax,dword ptr [ebp-8]
 004E82C1    movzx       eax,word ptr [eax+1A]
 004E82C5    add         edx,eax
 004E82C7    mov         eax,dword ptr [ebp-8]
 004E82CA    call        004E8B3C
>004E82CF    jmp         004E82DB
 004E82D1    xor         edx,edx
 004E82D3    mov         eax,dword ptr [ebp-8]
 004E82D6    call        004E8B3C
 004E82DB    mov         esp,ebp
 004E82DD    pop         ebp
 004E82DE    ret
*}
end;

//004E82E0
{*function sub_004E82E0(?:TControlScrollBar):?;
begin
 004E82E0    push        ebp
 004E82E1    mov         ebp,esp
 004E82E3    add         esp,0FFFFFFF4
 004E82E6    mov         dword ptr [ebp-4],eax
 004E82E9    mov         dword ptr [ebp-0C],100000
 004E82F0    mov         eax,dword ptr [ebp-4]
 004E82F3    cmp         byte ptr [eax+18],1
>004E82F7    jne         004E8300
 004E82F9    mov         dword ptr [ebp-0C],200000
 004E8300    mov         eax,dword ptr [ebp-4]
 004E8303    cmp         byte ptr [eax+1C],0
>004E8307    je          004E8321
 004E8309    push        0F0
 004E830B    mov         eax,dword ptr [ebp-4]
 004E830E    mov         eax,dword ptr [eax+4]
 004E8311    call        TWinControl.GetHandle
 004E8316    push        eax
 004E8317    call        user32.GetWindowLongA
 004E831C    and         eax,dword ptr [ebp-0C]
>004E831F    jne         004E8325
 004E8321    xor         eax,eax
>004E8323    jmp         004E8327
 004E8325    mov         al,1
 004E8327    mov         byte ptr [ebp-5],al
 004E832A    mov         al,byte ptr [ebp-5]
 004E832D    mov         esp,ebp
 004E832F    pop         ebp
 004E8330    ret
end;*}

//004E8334
{*function sub_004E8334(?:?; ?:?):?;
begin
 004E8334    push        ebp
 004E8335    mov         ebp,esp
 004E8337    add         esp,0FFFFFFF8
 004E833A    mov         word ptr [ebp-2],ax
 004E833E    mov         dword ptr [ebp-8],100000
 004E8345    cmp         word ptr [ebp-2],1
>004E834A    jne         004E8353
 004E834C    mov         dword ptr [ebp-8],200000
 004E8353    push        0F0
 004E8355    mov         eax,dword ptr [ebp+8]
 004E8358    mov         eax,dword ptr [eax-4]
 004E835B    mov         eax,dword ptr [eax+4]
 004E835E    call        TWinControl.GetHandle
 004E8363    push        eax
 004E8364    call        user32.GetWindowLongA
 004E8369    and         eax,dword ptr [ebp-8]
 004E836C    setne       byte ptr [ebp-3]
 004E8370    mov         al,byte ptr [ebp-3]
 004E8373    pop         ecx
 004E8374    pop         ecx
 004E8375    pop         ebp
 004E8376    ret
end;*}

//004E8378
{*function sub_004E8378(?:?; ?:?; ?:?):?;
begin
 004E8378    push        ebp
 004E8379    mov         ebp,esp
 004E837B    add         esp,0FFFFFFF8
 004E837E    mov         word ptr [ebp-4],dx
 004E8382    mov         word ptr [ebp-2],ax
 004E8386    xor         eax,eax
 004E8388    mov         dword ptr [ebp-8],eax
 004E838B    mov         eax,dword ptr [ebp+8]
 004E838E    cmp         byte ptr [eax-5],0
>004E8392    jne         004E83FC
 004E8394    mov         eax,dword ptr [ebp+8]
 004E8397    cmp         byte ptr [eax-6],0
>004E839B    je          004E83CA
 004E839D    mov         eax,dword ptr [ebp+8]
 004E83A0    push        eax
 004E83A1    mov         ax,word ptr [ebp-2]
 004E83A5    call        004E8334
 004E83AA    pop         ecx
 004E83AB    test        al,al
>004E83AD    jne         004E83CA
 004E83AF    movzx       eax,word ptr [ebp-4]
 004E83B3    push        eax
 004E83B4    mov         eax,[0055B2BC];^gvar_0055DB78
 004E83B9    mov         eax,dword ptr [eax]
 004E83BB    call        eax
 004E83BD    mov         edx,dword ptr [ebp+8]
 004E83C0    sub         eax,dword ptr [edx-0C]
 004E83C3    neg         eax
 004E83C5    mov         dword ptr [ebp-8],eax
>004E83C8    jmp         004E83FC
 004E83CA    mov         eax,dword ptr [ebp+8]
 004E83CD    cmp         byte ptr [eax-6],0
>004E83D1    jne         004E83FC
 004E83D3    mov         eax,dword ptr [ebp+8]
 004E83D6    push        eax
 004E83D7    mov         ax,word ptr [ebp-2]
 004E83DB    call        004E8334
 004E83E0    pop         ecx
 004E83E1    test        al,al
>004E83E3    je          004E83FC
 004E83E5    movzx       eax,word ptr [ebp-4]
 004E83E9    push        eax
 004E83EA    mov         eax,[0055B2BC];^gvar_0055DB78
 004E83EF    mov         eax,dword ptr [eax]
 004E83F1    call        eax
 004E83F3    mov         edx,dword ptr [ebp+8]
 004E83F6    sub         eax,dword ptr [edx-0C]
 004E83F9    mov         dword ptr [ebp-8],eax
 004E83FC    mov         eax,dword ptr [ebp-8]
 004E83FF    pop         ecx
 004E8400    pop         ecx
 004E8401    pop         ebp
 004E8402    ret
end;*}

//004E8404
{*function sub_004E8404(?:?; ?:?; ?:?):?;
begin
 004E8404    push        ebp
 004E8405    mov         ebp,esp
 004E8407    add         esp,0FFFFFFF0
 004E840A    push        ebx
 004E840B    mov         byte ptr [ebp-6],cl
 004E840E    mov         byte ptr [ebp-5],dl
 004E8411    mov         dword ptr [ebp-4],eax
 004E8414    push        0F0
 004E8416    mov         eax,dword ptr [ebp-4]
 004E8419    mov         eax,dword ptr [eax+4]
 004E841C    call        TWinControl.GetHandle
 004E8421    push        eax
 004E8422    call        user32.GetWindowLongA
 004E8427    test        eax,840000
 004E842C    setne       al
 004E842F    and         eax,7F
 004E8432    mov         dword ptr [ebp-0C],eax
 004E8435    mov         eax,dword ptr [ebp-4]
 004E8438    cmp         byte ptr [eax+18],1
>004E843C    jne         004E845F
 004E843E    push        ebp
 004E843F    mov         dx,15
 004E8443    xor         eax,eax
 004E8445    call        004E8378
 004E844A    pop         ecx
 004E844B    mov         ebx,eax
 004E844D    mov         eax,dword ptr [ebp-4]
 004E8450    mov         eax,dword ptr [eax+4]
 004E8453    call        TControl.GetClientHeight
 004E8458    add         ebx,eax
 004E845A    mov         dword ptr [ebp-10],ebx
>004E845D    jmp         004E8480
 004E845F    push        ebp
 004E8460    mov         dx,14
 004E8464    mov         ax,1
 004E8468    call        004E8378
 004E846D    pop         ecx
 004E846E    mov         ebx,eax
 004E8470    mov         eax,dword ptr [ebp-4]
 004E8473    mov         eax,dword ptr [eax+4]
 004E8476    call        TControl.GetClientWidth
 004E847B    add         ebx,eax
 004E847D    mov         dword ptr [ebp-10],ebx
 004E8480    mov         eax,dword ptr [ebp-10]
 004E8483    pop         ebx
 004E8484    mov         esp,ebp
 004E8486    pop         ebp
 004E8487    ret
end;*}

//004E8488
function TControlScrollBar.NeedsScrollBarVisible:Boolean;
begin
{*
 004E8488    push        ebp
 004E8489    mov         ebp,esp
 004E848B    add         esp,0FFFFFFF8
 004E848E    mov         dword ptr [ebp-4],eax
 004E8491    xor         ecx,ecx
 004E8493    xor         edx,edx
 004E8495    mov         eax,dword ptr [ebp-4]
 004E8498    call        004E8404
 004E849D    mov         edx,dword ptr [ebp-4]
 004E84A0    cmp         eax,dword ptr [edx+10]
 004E84A3    setl        byte ptr [ebp-5]
 004E84A7    mov         al,byte ptr [ebp-5]
 004E84AA    pop         ecx
 004E84AB    pop         ecx
 004E84AC    pop         ebp
 004E84AD    ret
*}
end;

//004E84B0
{*function sub_004E84B0(?:?):?;
begin
 004E84B0    push        ebp
 004E84B1    mov         ebp,esp
 004E84B3    add         esp,0FFFFFFDC
 004E84B6    mov         dword ptr [ebp-24],1C
 004E84BD    mov         dword ptr [ebp-20],10
 004E84C4    xor         eax,eax
 004E84C6    mov         dword ptr [ebp-8],eax
 004E84C9    mov         eax,dword ptr [ebp+8]
 004E84CC    mov         eax,dword ptr [eax-4]
 004E84CF    cmp         byte ptr [eax+18],1
>004E84D3    jne         004E84DC
 004E84D5    mov         dword ptr [ebp-8],1
 004E84DC    mov         eax,dword ptr [ebp+8]
 004E84DF    mov         eax,dword ptr [eax-8]
 004E84E2    movsx       eax,word ptr [eax+6]
 004E84E6    mov         dword ptr [ebp-4],eax
 004E84E9    lea         eax,[ebp-24]
 004E84EC    push        eax
 004E84ED    mov         eax,dword ptr [ebp-8]
 004E84F0    push        eax
 004E84F1    mov         eax,dword ptr [ebp+8]
 004E84F4    mov         eax,dword ptr [eax-4]
 004E84F7    mov         eax,dword ptr [eax+4]
 004E84FA    call        TWinControl.GetHandle
 004E84FF    push        eax
 004E8500    mov         eax,[0055B130];^gvar_0055DBCC:Pointer
 004E8505    mov         eax,dword ptr [eax]
 004E8507    call        eax
 004E8509    test        eax,eax
>004E850B    je          004E8513
 004E850D    mov         eax,dword ptr [ebp-0C]
 004E8510    mov         dword ptr [ebp-4],eax
 004E8513    mov         eax,dword ptr [ebp-4]
 004E8516    mov         esp,ebp
 004E8518    pop         ebp
 004E8519    ret
end;*}

//004E851C
{*procedure sub_004E851C(?:TControlScrollBar; ?:?);
begin
 004E851C    push        ebp
 004E851D    mov         ebp,esp
 004E851F    add         esp,0FFFFFFE0
 004E8522    mov         dword ptr [ebp-8],edx
 004E8525    mov         dword ptr [ebp-4],eax
 004E8528    mov         eax,dword ptr [ebp-4]
 004E852B    cmp         byte ptr [eax+1F],0
>004E852F    je          004E8714
 004E8535    mov         eax,dword ptr [ebp-8]
 004E8538    mov         ax,word ptr [eax+4]
 004E853C    sub         ax,4
>004E8540    jae         004E8714
 004E8546    mov         eax,dword ptr [ebp-8]
 004E8549    mov         ax,word ptr [eax+4]
 004E854D    sub         ax,2
>004E8551    jb          004E855B
 004E8553    sub         ax,2
>004E8557    jb          004E858C
>004E8559    jmp         004E85C5
 004E855B    mov         eax,dword ptr [ebp-4]
 004E855E    movzx       eax,word ptr [eax+8]
 004E8562    mov         edx,dword ptr [ebp-4]
 004E8565    mov         ecx,dword ptr [edx+40]
 004E8568    cdq
 004E8569    idiv        eax,ecx
 004E856B    mov         dword ptr [ebp-0C],eax
 004E856E    mov         eax,dword ptr [ebp-4]
 004E8571    movzx       eax,word ptr [eax+8]
 004E8575    mov         edx,dword ptr [ebp-4]
 004E8578    mov         ecx,dword ptr [edx+40]
 004E857B    cdq
 004E857C    idiv        eax,ecx
 004E857E    mov         dword ptr [ebp-10],edx
 004E8581    mov         eax,dword ptr [ebp-4]
 004E8584    mov         eax,dword ptr [eax+40]
 004E8587    mov         dword ptr [ebp-14],eax
>004E858A    jmp         004E85D4
 004E858C    mov         eax,dword ptr [ebp-4]
 004E858F    movzx       eax,word ptr [eax+0A]
 004E8593    mov         dword ptr [ebp-0C],eax
 004E8596    mov         eax,dword ptr [ebp-4]
 004E8599    push        dword ptr [eax+3C]
 004E859C    mov         eax,dword ptr [ebp-0C]
 004E859F    pop         edx
 004E85A0    mov         ecx,edx
 004E85A2    cdq
 004E85A3    idiv        eax,ecx
 004E85A5    mov         dword ptr [ebp-10],edx
 004E85A8    mov         eax,dword ptr [ebp-4]
 004E85AB    push        dword ptr [eax+3C]
 004E85AE    mov         eax,dword ptr [ebp-0C]
 004E85B1    pop         edx
 004E85B2    mov         ecx,edx
 004E85B4    cdq
 004E85B5    idiv        eax,ecx
 004E85B7    mov         dword ptr [ebp-0C],eax
 004E85BA    mov         eax,dword ptr [ebp-4]
 004E85BD    mov         eax,dword ptr [eax+3C]
 004E85C0    mov         dword ptr [ebp-14],eax
>004E85C3    jmp         004E85D4
 004E85C5    xor         eax,eax
 004E85C7    mov         dword ptr [ebp-14],eax
 004E85CA    xor         eax,eax
 004E85CC    mov         dword ptr [ebp-0C],eax
 004E85CF    xor         eax,eax
 004E85D1    mov         dword ptr [ebp-10],eax
 004E85D4    xor         eax,eax
 004E85D6    mov         dword ptr [ebp-18],eax
 004E85D9    cmp         dword ptr [ebp-14],0
>004E85DD    jle         004E8694
 004E85E3    call        004080F8
 004E85E8    mov         dword ptr [ebp-1C],eax
 004E85EB    mov         eax,dword ptr [ebp-1C]
 004E85EE    sub         eax,dword ptr [ebp-18]
 004E85F1    mov         dword ptr [ebp-20],eax
 004E85F4    mov         eax,dword ptr [ebp-4]
 004E85F7    mov         eax,dword ptr [eax+20]
 004E85FA    cmp         eax,dword ptr [ebp-20]
>004E85FD    jle         004E860E
 004E85FF    mov         eax,dword ptr [ebp-4]
 004E8602    mov         eax,dword ptr [eax+20]
 004E8605    sub         eax,dword ptr [ebp-20]
 004E8608    push        eax
 004E8609    call        kernel32.Sleep
 004E860E    mov         eax,dword ptr [ebp-1C]
 004E8611    mov         dword ptr [ebp-18],eax
 004E8614    mov         eax,dword ptr [ebp-8]
 004E8617    mov         ax,word ptr [eax+4]
 004E861B    sub         ax,1
>004E861F    jb          004E862F
>004E8621    je          004E8642
 004E8623    dec         ax
>004E8626    je          004E8655
 004E8628    dec         ax
>004E862B    je          004E8668
>004E862D    jmp         004E8679
 004E862F    mov         eax,dword ptr [ebp-4]
 004E8632    mov         edx,dword ptr [eax+0C]
 004E8635    sub         edx,dword ptr [ebp-0C]
 004E8638    mov         eax,dword ptr [ebp-4]
 004E863B    call        TControlScrollBar.SetPosition
>004E8640    jmp         004E8679
 004E8642    mov         eax,dword ptr [ebp-4]
 004E8645    mov         edx,dword ptr [eax+0C]
 004E8648    add         edx,dword ptr [ebp-0C]
 004E864B    mov         eax,dword ptr [ebp-4]
 004E864E    call        TControlScrollBar.SetPosition
>004E8653    jmp         004E8679
 004E8655    mov         eax,dword ptr [ebp-4]
 004E8658    mov         edx,dword ptr [eax+0C]
 004E865B    sub         edx,dword ptr [ebp-0C]
 004E865E    mov         eax,dword ptr [ebp-4]
 004E8661    call        TControlScrollBar.SetPosition
>004E8666    jmp         004E8679
 004E8668    mov         eax,dword ptr [ebp-4]
 004E866B    mov         edx,dword ptr [eax+0C]
 004E866E    add         edx,dword ptr [ebp-0C]
 004E8671    mov         eax,dword ptr [ebp-4]
 004E8674    call        TControlScrollBar.SetPosition
 004E8679    mov         eax,dword ptr [ebp-4]
 004E867C    mov         eax,dword ptr [eax+4]
 004E867F    mov         edx,dword ptr [eax]
 004E8681    call        dword ptr [edx+88]
 004E8687    dec         dword ptr [ebp-14]
 004E868A    cmp         dword ptr [ebp-14],0
>004E868E    jg          004E85E3
 004E8694    cmp         dword ptr [ebp-10],0
>004E8698    jle         004E8848
 004E869E    mov         eax,dword ptr [ebp-8]
 004E86A1    mov         ax,word ptr [eax+4]
 004E86A5    sub         ax,1
>004E86A9    jb          004E86BC
>004E86AB    je          004E86D2
 004E86AD    dec         ax
>004E86B0    je          004E86E8
 004E86B2    dec         ax
>004E86B5    je          004E86FE
>004E86B7    jmp         004E8848
 004E86BC    mov         eax,dword ptr [ebp-4]
 004E86BF    mov         edx,dword ptr [eax+0C]
 004E86C2    sub         edx,dword ptr [ebp-10]
 004E86C5    mov         eax,dword ptr [ebp-4]
 004E86C8    call        TControlScrollBar.SetPosition
>004E86CD    jmp         004E8848
 004E86D2    mov         eax,dword ptr [ebp-4]
 004E86D5    mov         edx,dword ptr [eax+0C]
 004E86D8    add         edx,dword ptr [ebp-10]
 004E86DB    mov         eax,dword ptr [ebp-4]
 004E86DE    call        TControlScrollBar.SetPosition
>004E86E3    jmp         004E8848
 004E86E8    mov         eax,dword ptr [ebp-4]
 004E86EB    mov         edx,dword ptr [eax+0C]
 004E86EE    sub         edx,dword ptr [ebp-10]
 004E86F1    mov         eax,dword ptr [ebp-4]
 004E86F4    call        TControlScrollBar.SetPosition
>004E86F9    jmp         004E8848
 004E86FE    mov         eax,dword ptr [ebp-4]
 004E8701    mov         edx,dword ptr [eax+0C]
 004E8704    add         edx,dword ptr [ebp-10]
 004E8707    mov         eax,dword ptr [ebp-4]
 004E870A    call        TControlScrollBar.SetPosition
>004E870F    jmp         004E8848
 004E8714    mov         eax,dword ptr [ebp-8]
 004E8717    movsx       eax,word ptr [eax+4]
 004E871B    cmp         eax,7
>004E871E    ja          004E8848
 004E8724    jmp         dword ptr [eax*4+4E872B]
 004E8724    dd          004E874B
 004E8724    dd          004E8767
 004E8724    dd          004E8783
 004E8724    dd          004E87A4
 004E8724    dd          004E87C5
 004E8724    dd          004E87F5
 004E8724    dd          004E882E
 004E8724    dd          004E883A
 004E874B    mov         eax,dword ptr [ebp-4]
 004E874E    mov         edx,dword ptr [eax+0C]
 004E8751    mov         eax,dword ptr [ebp-4]
 004E8754    movzx       eax,word ptr [eax+8]
 004E8758    sub         edx,eax
 004E875A    mov         eax,dword ptr [ebp-4]
 004E875D    call        TControlScrollBar.SetPosition
>004E8762    jmp         004E8848
 004E8767    mov         eax,dword ptr [ebp-4]
 004E876A    mov         edx,dword ptr [eax+0C]
 004E876D    mov         eax,dword ptr [ebp-4]
 004E8770    movzx       eax,word ptr [eax+8]
 004E8774    add         edx,eax
 004E8776    mov         eax,dword ptr [ebp-4]
 004E8779    call        TControlScrollBar.SetPosition
>004E877E    jmp         004E8848
 004E8783    xor         ecx,ecx
 004E8785    mov         dl,1
 004E8787    mov         eax,dword ptr [ebp-4]
 004E878A    call        004E8404
 004E878F    mov         edx,dword ptr [ebp-4]
 004E8792    mov         edx,dword ptr [edx+0C]
 004E8795    sub         edx,eax
 004E8797    mov         eax,dword ptr [ebp-4]
 004E879A    call        TControlScrollBar.SetPosition
>004E879F    jmp         004E8848
 004E87A4    xor         ecx,ecx
 004E87A6    mov         dl,1
 004E87A8    mov         eax,dword ptr [ebp-4]
 004E87AB    call        004E8404
 004E87B0    mov         edx,eax
 004E87B2    mov         eax,dword ptr [ebp-4]
 004E87B5    add         edx,dword ptr [eax+0C]
 004E87B8    mov         eax,dword ptr [ebp-4]
 004E87BB    call        TControlScrollBar.SetPosition
>004E87C0    jmp         004E8848
 004E87C5    mov         eax,dword ptr [ebp-4]
 004E87C8    cmp         dword ptr [eax+14],7FFF
>004E87CF    jle         004E87E4
 004E87D1    push        ebp
 004E87D2    call        004E84B0
 004E87D7    pop         ecx
 004E87D8    mov         edx,eax
 004E87DA    mov         eax,dword ptr [ebp-4]
 004E87DD    call        TControlScrollBar.SetPosition
>004E87E2    jmp         004E8848
 004E87E4    mov         edx,dword ptr [ebp-8]
 004E87E7    movsx       edx,word ptr [edx+6]
 004E87EB    mov         eax,dword ptr [ebp-4]
 004E87EE    call        TControlScrollBar.SetPosition
>004E87F3    jmp         004E8848
 004E87F5    mov         eax,dword ptr [ebp-4]
 004E87F8    cmp         byte ptr [eax+1D],0
>004E87FC    je          004E8848
 004E87FE    mov         eax,dword ptr [ebp-4]
 004E8801    cmp         dword ptr [eax+14],7FFF
>004E8808    jle         004E881D
 004E880A    push        ebp
 004E880B    call        004E84B0
 004E8810    pop         ecx
 004E8811    mov         edx,eax
 004E8813    mov         eax,dword ptr [ebp-4]
 004E8816    call        TControlScrollBar.SetPosition
>004E881B    jmp         004E8848
 004E881D    mov         edx,dword ptr [ebp-8]
 004E8820    movsx       edx,word ptr [edx+6]
 004E8824    mov         eax,dword ptr [ebp-4]
 004E8827    call        TControlScrollBar.SetPosition
>004E882C    jmp         004E8848
 004E882E    xor         edx,edx
 004E8830    mov         eax,dword ptr [ebp-4]
 004E8833    call        TControlScrollBar.SetPosition
>004E8838    jmp         004E8848
 004E883A    mov         eax,dword ptr [ebp-4]
 004E883D    mov         edx,dword ptr [eax+14]
 004E8840    mov         eax,dword ptr [ebp-4]
 004E8843    call        TControlScrollBar.SetPosition
 004E8848    mov         esp,ebp
 004E884A    pop         ebp
 004E884B    ret
end;*}

//004E884C
procedure TControlScrollBar.SetButtonSize(Value:Integer);
begin
{*
 004E884C    push        ebp
 004E884D    mov         ebp,esp
 004E884F    add         esp,0FFFFFFF4
 004E8852    mov         dword ptr [ebp-8],edx
 004E8855    mov         dword ptr [ebp-4],eax
 004E8858    mov         eax,dword ptr [ebp-8]
 004E885B    mov         edx,dword ptr [ebp-4]
 004E885E    cmp         eax,dword ptr [edx+24];TControlScrollBar.ButtonSize:Integer
>004E8861    je          004E88B3
 004E8863    mov         eax,dword ptr [ebp-8]
 004E8866    mov         dword ptr [ebp-0C],eax
 004E8869    cmp         dword ptr [ebp-0C],0
>004E886D    jne         004E888A
 004E886F    mov         eax,dword ptr [ebp-4]
 004E8872    movzx       eax,byte ptr [eax+18];TControlScrollBar.FKind:TScrollBarKind
 004E8876    mov         eax,dword ptr [eax*4+5418E0]
 004E887D    push        eax
 004E887E    mov         eax,[0055B2BC];^gvar_0055DB78
 004E8883    mov         eax,dword ptr [eax]
 004E8885    call        eax
 004E8887    mov         dword ptr [ebp-8],eax
 004E888A    mov         eax,dword ptr [ebp-8]
 004E888D    mov         edx,dword ptr [ebp-4]
 004E8890    mov         dword ptr [edx+24],eax;TControlScrollBar.ButtonSize:Integer
 004E8893    mov         eax,dword ptr [ebp-4]
 004E8896    mov         byte ptr [eax+44],1;TControlScrollBar.FUpdateNeeded:Boolean
 004E889A    mov         eax,dword ptr [ebp-4]
 004E889D    mov         eax,dword ptr [eax+4];TControlScrollBar.FControl:TScrollingWinControl
 004E88A0    call        TScrollingWinControl.UpdateScrollBars
 004E88A5    cmp         dword ptr [ebp-0C],0
>004E88A9    jne         004E88B3
 004E88AB    mov         eax,dword ptr [ebp-4]
 004E88AE    xor         edx,edx
 004E88B0    mov         dword ptr [eax+24],edx;TControlScrollBar.ButtonSize:Integer
 004E88B3    mov         esp,ebp
 004E88B5    pop         ebp
 004E88B6    ret
*}
end;

//004E88B8
procedure TControlScrollBar.SetColor(Value:TColor);
begin
{*
 004E88B8    push        ebp
 004E88B9    mov         ebp,esp
 004E88BB    add         esp,0FFFFFFF8
 004E88BE    mov         dword ptr [ebp-8],edx
 004E88C1    mov         dword ptr [ebp-4],eax
 004E88C4    mov         eax,dword ptr [ebp-8]
 004E88C7    mov         edx,dword ptr [ebp-4]
 004E88CA    cmp         eax,dword ptr [edx+28];TControlScrollBar.Color:TColor
>004E88CD    je          004E88F1
 004E88CF    mov         eax,dword ptr [ebp-8]
 004E88D2    mov         edx,dword ptr [ebp-4]
 004E88D5    mov         dword ptr [edx+28],eax;TControlScrollBar.Color:TColor
 004E88D8    mov         eax,dword ptr [ebp-4]
 004E88DB    mov         byte ptr [eax+2C],0;TControlScrollBar.ParentColor:Boolean
 004E88DF    mov         eax,dword ptr [ebp-4]
 004E88E2    mov         byte ptr [eax+44],1;TControlScrollBar.FUpdateNeeded:Boolean
 004E88E6    mov         eax,dword ptr [ebp-4]
 004E88E9    mov         eax,dword ptr [eax+4];TControlScrollBar.FControl:TScrollingWinControl
 004E88EC    call        TScrollingWinControl.UpdateScrollBars
 004E88F1    pop         ecx
 004E88F2    pop         ecx
 004E88F3    pop         ebp
 004E88F4    ret
*}
end;

//004E88F8
procedure TControlScrollBar.SetParentColor(Value:Boolean);
begin
{*
 004E88F8    push        ebp
 004E88F9    mov         ebp,esp
 004E88FB    add         esp,0FFFFFFF8
 004E88FE    mov         byte ptr [ebp-5],dl
 004E8901    mov         dword ptr [ebp-4],eax
 004E8904    mov         eax,dword ptr [ebp-4]
 004E8907    mov         al,byte ptr [eax+2C];TControlScrollBar.ParentColor:Boolean
 004E890A    cmp         al,byte ptr [ebp-5]
>004E890D    je          004E892B
 004E890F    mov         al,byte ptr [ebp-5]
 004E8912    mov         edx,dword ptr [ebp-4]
 004E8915    mov         byte ptr [edx+2C],al;TControlScrollBar.ParentColor:Boolean
 004E8918    cmp         byte ptr [ebp-5],0
>004E891C    je          004E892B
 004E891E    mov         edx,0FF000014
 004E8923    mov         eax,dword ptr [ebp-4]
 004E8926    call        TControlScrollBar.SetColor
 004E892B    pop         ecx
 004E892C    pop         ecx
 004E892D    pop         ebp
 004E892E    ret
*}
end;

//004E8930
procedure TControlScrollBar.SetPosition(Value:Integer);
begin
{*
 004E8930    push        ebp
 004E8931    mov         ebp,esp
 004E8933    add         esp,0FFFFFFEC
 004E8936    mov         dword ptr [ebp-8],edx
 004E8939    mov         dword ptr [ebp-4],eax
 004E893C    mov         eax,dword ptr [ebp-4]
 004E893F    mov         eax,dword ptr [eax+4];TControlScrollBar.FControl:TScrollingWinControl
 004E8942    test        byte ptr [eax+1C],2;TScrollingWinControl.FComponentState:TComponentState
>004E8946    je          004E8956
 004E8948    mov         eax,dword ptr [ebp-8]
 004E894B    mov         edx,dword ptr [ebp-4]
 004E894E    mov         dword ptr [edx+0C],eax;TControlScrollBar.Position:Integer
>004E8951    jmp         004E8A5B
 004E8956    mov         eax,dword ptr [ebp-8]
 004E8959    mov         edx,dword ptr [ebp-4]
 004E895C    cmp         eax,dword ptr [edx+14];TControlScrollBar.FCalcRange:Integer
>004E895F    jle         004E896C
 004E8961    mov         eax,dword ptr [ebp-4]
 004E8964    mov         eax,dword ptr [eax+14];TControlScrollBar.FCalcRange:Integer
 004E8967    mov         dword ptr [ebp-8],eax
>004E896A    jmp         004E8977
 004E896C    cmp         dword ptr [ebp-8],0
>004E8970    jge         004E8977
 004E8972    xor         eax,eax
 004E8974    mov         dword ptr [ebp-8],eax
 004E8977    mov         eax,dword ptr [ebp-4]
 004E897A    cmp         byte ptr [eax+18],0;TControlScrollBar.FKind:TScrollBarKind
>004E897E    jne         004E8988
 004E8980    mov         word ptr [ebp-0A],0
>004E8986    jmp         004E898E
 004E8988    mov         word ptr [ebp-0A],1
 004E898E    mov         eax,dword ptr [ebp-8]
 004E8991    mov         edx,dword ptr [ebp-4]
 004E8994    cmp         eax,dword ptr [edx+0C];TControlScrollBar.Position:Integer
>004E8997    je          004E8A16
 004E8999    mov         eax,dword ptr [ebp-4]
 004E899C    mov         eax,dword ptr [eax+0C];TControlScrollBar.Position:Integer
 004E899F    mov         dword ptr [ebp-14],eax
 004E89A2    mov         eax,dword ptr [ebp-8]
 004E89A5    mov         edx,dword ptr [ebp-4]
 004E89A8    mov         dword ptr [edx+0C],eax;TControlScrollBar.Position:Integer
 004E89AB    mov         eax,dword ptr [ebp-4]
 004E89AE    cmp         byte ptr [eax+18],0;TControlScrollBar.FKind:TScrollBarKind
>004E89B2    jne         004E89C9
 004E89B4    mov         edx,dword ptr [ebp-14]
 004E89B7    sub         edx,dword ptr [ebp-8]
 004E89BA    xor         ecx,ecx
 004E89BC    mov         eax,dword ptr [ebp-4]
 004E89BF    mov         eax,dword ptr [eax+4];TControlScrollBar.FControl:TScrollingWinControl
 004E89C2    call        004D32A0
>004E89C7    jmp         004E89DC
 004E89C9    mov         ecx,dword ptr [ebp-14]
 004E89CC    sub         ecx,dword ptr [ebp-8]
 004E89CF    xor         edx,edx
 004E89D1    mov         eax,dword ptr [ebp-4]
 004E89D4    mov         eax,dword ptr [eax+4];TControlScrollBar.FControl:TScrollingWinControl
 004E89D7    call        004D32A0
 004E89DC    mov         eax,dword ptr [ebp-4]
 004E89DF    mov         eax,dword ptr [eax+4];TControlScrollBar.FControl:TScrollingWinControl
 004E89E2    test        byte ptr [eax+1C],10;TScrollingWinControl.FComponentState:TComponentState
>004E89E6    je          004E8A16
 004E89E8    mov         eax,dword ptr [ebp-4]
 004E89EB    mov         eax,dword ptr [eax+4];TControlScrollBar.FControl:TScrollingWinControl
 004E89EE    call        004E7ED8
 004E89F3    mov         dword ptr [ebp-10],eax
 004E89F6    cmp         dword ptr [ebp-10],0
>004E89FA    je          004E8A16
 004E89FC    mov         eax,dword ptr [ebp-10]
 004E89FF    cmp         dword ptr [eax+250],0
>004E8A06    je          004E8A16
 004E8A08    mov         eax,dword ptr [ebp-10]
 004E8A0B    mov         eax,dword ptr [eax+250]
 004E8A11    mov         edx,dword ptr [eax]
 004E8A13    call        dword ptr [edx+0C]
 004E8A16    movzx       eax,word ptr [ebp-0A]
 004E8A1A    push        eax
 004E8A1B    mov         eax,dword ptr [ebp-4]
 004E8A1E    mov         eax,dword ptr [eax+4];TControlScrollBar.FControl:TScrollingWinControl
 004E8A21    call        TWinControl.GetHandle
 004E8A26    push        eax
 004E8A27    mov         eax,[0055B35C];^gvar_0055DBD0:Pointer
 004E8A2C    mov         eax,dword ptr [eax]
 004E8A2E    call        eax
 004E8A30    mov         edx,dword ptr [ebp-4]
 004E8A33    cmp         eax,dword ptr [edx+0C];TControlScrollBar.Position:Integer
>004E8A36    je          004E8A5B
 004E8A38    push        0FF
 004E8A3A    mov         eax,dword ptr [ebp-4]
 004E8A3D    mov         eax,dword ptr [eax+0C];TControlScrollBar.Position:Integer
 004E8A40    push        eax
 004E8A41    movzx       eax,word ptr [ebp-0A]
 004E8A45    push        eax
 004E8A46    mov         eax,dword ptr [ebp-4]
 004E8A49    mov         eax,dword ptr [eax+4];TControlScrollBar.FControl:TScrollingWinControl
 004E8A4C    call        TWinControl.GetHandle
 004E8A51    push        eax
 004E8A52    mov         eax,[0055B6BC];^gvar_0055DBD4:Pointer
 004E8A57    mov         eax,dword ptr [eax]
 004E8A59    call        eax
 004E8A5B    mov         esp,ebp
 004E8A5D    pop         ebp
 004E8A5E    ret
*}
end;

//004E8A60
procedure TControlScrollBar.SetSize(Value:Integer);
begin
{*
 004E8A60    push        ebp
 004E8A61    mov         ebp,esp
 004E8A63    add         esp,0FFFFFFF4
 004E8A66    mov         dword ptr [ebp-8],edx
 004E8A69    mov         dword ptr [ebp-4],eax
 004E8A6C    mov         eax,dword ptr [ebp-8]
 004E8A6F    mov         edx,dword ptr [ebp-4]
 004E8A72    cmp         eax,dword ptr [edx+30];TControlScrollBar.Size:Integer
>004E8A75    je          004E8AC7
 004E8A77    mov         eax,dword ptr [ebp-8]
 004E8A7A    mov         dword ptr [ebp-0C],eax
 004E8A7D    cmp         dword ptr [ebp-0C],0
>004E8A81    jne         004E8A9E
 004E8A83    mov         eax,dword ptr [ebp-4]
 004E8A86    movzx       eax,byte ptr [eax+18];TControlScrollBar.FKind:TScrollBarKind
 004E8A8A    mov         eax,dword ptr [eax*4+5418E8]
 004E8A91    push        eax
 004E8A92    mov         eax,[0055B2BC];^gvar_0055DB78
 004E8A97    mov         eax,dword ptr [eax]
 004E8A99    call        eax
 004E8A9B    mov         dword ptr [ebp-8],eax
 004E8A9E    mov         eax,dword ptr [ebp-8]
 004E8AA1    mov         edx,dword ptr [ebp-4]
 004E8AA4    mov         dword ptr [edx+30],eax;TControlScrollBar.Size:Integer
 004E8AA7    mov         eax,dword ptr [ebp-4]
 004E8AAA    mov         byte ptr [eax+44],1;TControlScrollBar.FUpdateNeeded:Boolean
 004E8AAE    mov         eax,dword ptr [ebp-4]
 004E8AB1    mov         eax,dword ptr [eax+4];TControlScrollBar.FControl:TScrollingWinControl
 004E8AB4    call        TScrollingWinControl.UpdateScrollBars
 004E8AB9    cmp         dword ptr [ebp-0C],0
>004E8ABD    jne         004E8AC7
 004E8ABF    mov         eax,dword ptr [ebp-4]
 004E8AC2    xor         edx,edx
 004E8AC4    mov         dword ptr [eax+30],edx;TControlScrollBar.Size:Integer
 004E8AC7    mov         esp,ebp
 004E8AC9    pop         ebp
 004E8ACA    ret
*}
end;

//004E8ACC
procedure TControlScrollBar.SetStyle(Value:TScrollBarStyle);
begin
{*
 004E8ACC    push        ebp
 004E8ACD    mov         ebp,esp
 004E8ACF    add         esp,0FFFFFFF8
 004E8AD2    mov         byte ptr [ebp-5],dl
 004E8AD5    mov         dword ptr [ebp-4],eax
 004E8AD8    mov         eax,dword ptr [ebp-4]
 004E8ADB    mov         al,byte ptr [eax+34];TControlScrollBar.Style:TScrollBarStyle
 004E8ADE    cmp         al,byte ptr [ebp-5]
>004E8AE1    je          004E8AFE
 004E8AE3    mov         al,byte ptr [ebp-5]
 004E8AE6    mov         edx,dword ptr [ebp-4]
 004E8AE9    mov         byte ptr [edx+34],al;TControlScrollBar.Style:TScrollBarStyle
 004E8AEC    mov         eax,dword ptr [ebp-4]
 004E8AEF    mov         byte ptr [eax+44],1;TControlScrollBar.FUpdateNeeded:Boolean
 004E8AF3    mov         eax,dword ptr [ebp-4]
 004E8AF6    mov         eax,dword ptr [eax+4];TControlScrollBar.FControl:TScrollingWinControl
 004E8AF9    call        TScrollingWinControl.UpdateScrollBars
 004E8AFE    pop         ecx
 004E8AFF    pop         ecx
 004E8B00    pop         ebp
 004E8B01    ret
*}
end;

//004E8B04
procedure TControlScrollBar.SetThumbSize(Value:Integer);
begin
{*
 004E8B04    push        ebp
 004E8B05    mov         ebp,esp
 004E8B07    add         esp,0FFFFFFF8
 004E8B0A    mov         dword ptr [ebp-8],edx
 004E8B0D    mov         dword ptr [ebp-4],eax
 004E8B10    mov         eax,dword ptr [ebp-8]
 004E8B13    mov         edx,dword ptr [ebp-4]
 004E8B16    cmp         eax,dword ptr [edx+38];TControlScrollBar.ThumbSize:Integer
>004E8B19    je          004E8B36
 004E8B1B    mov         eax,dword ptr [ebp-8]
 004E8B1E    mov         edx,dword ptr [ebp-4]
 004E8B21    mov         dword ptr [edx+38],eax;TControlScrollBar.ThumbSize:Integer
 004E8B24    mov         eax,dword ptr [ebp-4]
 004E8B27    mov         byte ptr [eax+44],1;TControlScrollBar.FUpdateNeeded:Boolean
 004E8B2B    mov         eax,dword ptr [ebp-4]
 004E8B2E    mov         eax,dword ptr [eax+4];TControlScrollBar.FControl:TScrollingWinControl
 004E8B31    call        TScrollingWinControl.UpdateScrollBars
 004E8B36    pop         ecx
 004E8B37    pop         ecx
 004E8B38    pop         ebp
 004E8B39    ret
*}
end;

//004E8B3C
procedure sub_004E8B3C(?:TControlScrollBar; ?:Integer);
begin
{*
 004E8B3C    push        ebp
 004E8B3D    mov         ebp,esp
 004E8B3F    add         esp,0FFFFFFF8
 004E8B42    mov         dword ptr [ebp-8],edx
 004E8B45    mov         dword ptr [ebp-4],eax
 004E8B48    mov         eax,dword ptr [ebp-8]
 004E8B4B    mov         edx,dword ptr [ebp-4]
 004E8B4E    mov         dword ptr [edx+10],eax
 004E8B51    mov         eax,dword ptr [ebp-4]
 004E8B54    cmp         dword ptr [eax+10],0
>004E8B58    jge         004E8B62
 004E8B5A    mov         eax,dword ptr [ebp-4]
 004E8B5D    xor         edx,edx
 004E8B5F    mov         dword ptr [eax+10],edx
 004E8B62    mov         eax,dword ptr [ebp-4]
 004E8B65    mov         eax,dword ptr [eax+4]
 004E8B68    call        TScrollingWinControl.UpdateScrollBars
 004E8B6D    pop         ecx
 004E8B6E    pop         ecx
 004E8B6F    pop         ebp
 004E8B70    ret
*}
end;

//004E8B74
procedure TControlScrollBar.SetRange(Value:Integer);
begin
{*
 004E8B74    push        ebp
 004E8B75    mov         ebp,esp
 004E8B77    add         esp,0FFFFFFF8
 004E8B7A    mov         dword ptr [ebp-8],edx
 004E8B7D    mov         dword ptr [ebp-4],eax
 004E8B80    mov         eax,dword ptr [ebp-4]
 004E8B83    mov         eax,dword ptr [eax+4];TControlScrollBar.FControl:TScrollingWinControl
 004E8B86    mov         byte ptr [eax+210],0;TScrollingWinControl.FAutoScroll:Boolean
 004E8B8D    mov         eax,dword ptr [ebp-4]
 004E8B90    mov         byte ptr [eax+1E],1;TControlScrollBar.FScaled:Boolean
 004E8B94    mov         edx,dword ptr [ebp-8]
 004E8B97    mov         eax,dword ptr [ebp-4]
 004E8B9A    call        004E8B3C
 004E8B9F    pop         ecx
 004E8BA0    pop         ecx
 004E8BA1    pop         ebp
 004E8BA2    ret
*}
end;

//004E8BA4
function TControlScrollBar.IsStoredRange(Value:Integer):Boolean;
begin
{*
 004E8BA4    push        ebp
 004E8BA5    mov         ebp,esp
 004E8BA7    add         esp,0FFFFFFF8
 004E8BAA    mov         dword ptr [ebp-4],eax
 004E8BAD    mov         eax,dword ptr [ebp-4]
 004E8BB0    mov         eax,dword ptr [eax+4];TControlScrollBar.FControl:TScrollingWinControl
 004E8BB3    mov         al,byte ptr [eax+210];TScrollingWinControl.FAutoScroll:Boolean
 004E8BB9    xor         al,1
 004E8BBB    mov         byte ptr [ebp-5],al
 004E8BBE    mov         al,byte ptr [ebp-5]
 004E8BC1    pop         ecx
 004E8BC2    pop         ecx
 004E8BC3    pop         ebp
 004E8BC4    ret
*}
end;

//004E8BC8
procedure TControlScrollBar.SetVisible(Value:Boolean);
begin
{*
 004E8BC8    push        ebp
 004E8BC9    mov         ebp,esp
 004E8BCB    add         esp,0FFFFFFF8
 004E8BCE    mov         byte ptr [ebp-5],dl
 004E8BD1    mov         dword ptr [ebp-4],eax
 004E8BD4    mov         al,byte ptr [ebp-5]
 004E8BD7    mov         edx,dword ptr [ebp-4]
 004E8BDA    mov         byte ptr [edx+1C],al;TControlScrollBar.Visible:Boolean
 004E8BDD    mov         eax,dword ptr [ebp-4]
 004E8BE0    mov         eax,dword ptr [eax+4];TControlScrollBar.FControl:TScrollingWinControl
 004E8BE3    call        TScrollingWinControl.UpdateScrollBars
 004E8BE8    pop         ecx
 004E8BE9    pop         ecx
 004E8BEA    pop         ebp
 004E8BEB    ret
*}
end;

//004E8BEC
{*procedure sub_004E8BEC(?:?; ?:?);
begin
 004E8BEC    push        ebp
 004E8BED    mov         ebp,esp
 004E8BEF    push        ecx
 004E8BF0    mov         byte ptr [ebp-1],al
 004E8BF3    cmp         byte ptr [ebp-1],1
 004E8BF7    cmc
 004E8BF8    sbb         eax,eax
 004E8BFA    push        eax
 004E8BFB    mov         eax,dword ptr [ebp+8]
 004E8BFE    mov         eax,dword ptr [eax-4]
 004E8C01    movzx       eax,byte ptr [eax+34]
 004E8C05    mov         eax,dword ptr [eax*4+541918]
 004E8C0C    push        eax
 004E8C0D    mov         eax,dword ptr [ebp+8]
 004E8C10    mov         eax,dword ptr [eax-4]
 004E8C13    movzx       eax,byte ptr [eax+18]
 004E8C17    lea         eax,[eax+eax*4]
 004E8C1A    mov         eax,dword ptr [eax*4+5418F0]
 004E8C21    push        eax
 004E8C22    mov         eax,dword ptr [ebp+8]
 004E8C25    mov         eax,dword ptr [eax-4]
 004E8C28    mov         eax,dword ptr [eax+4]
 004E8C2B    call        TWinControl.GetHandle
 004E8C30    push        eax
 004E8C31    call        00491C28
 004E8C36    mov         eax,dword ptr [ebp+8]
 004E8C39    mov         eax,dword ptr [eax-4]
 004E8C3C    cmp         dword ptr [eax+24],0
>004E8C40    jle         004E8C77
 004E8C42    push        0
 004E8C44    mov         eax,dword ptr [ebp+8]
 004E8C47    mov         eax,dword ptr [eax-4]
 004E8C4A    mov         eax,dword ptr [eax+24]
 004E8C4D    push        eax
 004E8C4E    mov         eax,dword ptr [ebp+8]
 004E8C51    mov         eax,dword ptr [eax-4]
 004E8C54    movzx       eax,byte ptr [eax+18]
 004E8C58    lea         eax,[eax+eax*4]
 004E8C5B    mov         eax,dword ptr [eax*4+5418F4]
 004E8C62    push        eax
 004E8C63    mov         eax,dword ptr [ebp+8]
 004E8C66    mov         eax,dword ptr [eax-4]
 004E8C69    mov         eax,dword ptr [eax+4]
 004E8C6C    call        TWinControl.GetHandle
 004E8C71    push        eax
 004E8C72    call        00491C28
 004E8C77    mov         eax,dword ptr [ebp+8]
 004E8C7A    mov         eax,dword ptr [eax-4]
 004E8C7D    cmp         dword ptr [eax+38],0
>004E8C81    jle         004E8CB8
 004E8C83    push        0
 004E8C85    mov         eax,dword ptr [ebp+8]
 004E8C88    mov         eax,dword ptr [eax-4]
 004E8C8B    mov         eax,dword ptr [eax+38]
 004E8C8E    push        eax
 004E8C8F    mov         eax,dword ptr [ebp+8]
 004E8C92    mov         eax,dword ptr [eax-4]
 004E8C95    movzx       eax,byte ptr [eax+18]
 004E8C99    lea         eax,[eax+eax*4]
 004E8C9C    mov         eax,dword ptr [eax*4+5418F8]
 004E8CA3    push        eax
 004E8CA4    mov         eax,dword ptr [ebp+8]
 004E8CA7    mov         eax,dword ptr [eax-4]
 004E8CAA    mov         eax,dword ptr [eax+4]
 004E8CAD    call        TWinControl.GetHandle
 004E8CB2    push        eax
 004E8CB3    call        00491C28
 004E8CB8    mov         eax,dword ptr [ebp+8]
 004E8CBB    mov         eax,dword ptr [eax-4]
 004E8CBE    cmp         dword ptr [eax+30],0
>004E8CC2    jle         004E8CF9
 004E8CC4    push        0
 004E8CC6    mov         eax,dword ptr [ebp+8]
 004E8CC9    mov         eax,dword ptr [eax-4]
 004E8CCC    mov         eax,dword ptr [eax+30]
 004E8CCF    push        eax
 004E8CD0    mov         eax,dword ptr [ebp+8]
 004E8CD3    mov         eax,dword ptr [eax-4]
 004E8CD6    movzx       eax,byte ptr [eax+18]
 004E8CDA    lea         eax,[eax+eax*4]
 004E8CDD    mov         eax,dword ptr [eax*4+5418FC]
 004E8CE4    push        eax
 004E8CE5    mov         eax,dword ptr [ebp+8]
 004E8CE8    mov         eax,dword ptr [eax-4]
 004E8CEB    mov         eax,dword ptr [eax+4]
 004E8CEE    call        TWinControl.GetHandle
 004E8CF3    push        eax
 004E8CF4    call        00491C28
 004E8CF9    push        0
 004E8CFB    mov         eax,dword ptr [ebp+8]
 004E8CFE    mov         eax,dword ptr [eax-4]
 004E8D01    mov         eax,dword ptr [eax+28]
 004E8D04    call        00486830
 004E8D09    push        eax
 004E8D0A    mov         eax,dword ptr [ebp+8]
 004E8D0D    mov         eax,dword ptr [eax-4]
 004E8D10    movzx       eax,byte ptr [eax+18]
 004E8D14    lea         eax,[eax+eax*4]
 004E8D17    mov         eax,dword ptr [eax*4+541900]
 004E8D1E    push        eax
 004E8D1F    mov         eax,dword ptr [ebp+8]
 004E8D22    mov         eax,dword ptr [eax-4]
 004E8D25    mov         eax,dword ptr [eax+4]
 004E8D28    call        TWinControl.GetHandle
 004E8D2D    push        eax
 004E8D2E    call        00491C28
 004E8D33    pop         ecx
 004E8D34    pop         ebp
 004E8D35    ret
end;*}

//004E8D38
procedure TControlScrollBar.Update(ControlSB:Boolean; AssumeSB:Boolean);
begin
{*
 004E8D38    push        ebp
 004E8D39    mov         ebp,esp
 004E8D3B    add         esp,0FFFFFFDC
 004E8D3E    mov         byte ptr [ebp-6],cl
 004E8D41    mov         byte ptr [ebp-5],dl
 004E8D44    mov         dword ptr [ebp-4],eax
 004E8D47    mov         eax,dword ptr [ebp-4]
 004E8D4A    xor         edx,edx
 004E8D4C    mov         dword ptr [eax+14],edx
 004E8D4F    mov         word ptr [ebp-8],0
 004E8D55    mov         eax,dword ptr [ebp-4]
 004E8D58    cmp         byte ptr [eax+18],1
>004E8D5C    jne         004E8D64
 004E8D5E    mov         word ptr [ebp-8],1
 004E8D64    mov         eax,dword ptr [ebp-4]
 004E8D67    cmp         byte ptr [eax+1C],0
>004E8D6B    je          004E8D9A
 004E8D6D    mov         cl,byte ptr [ebp-6]
 004E8D70    mov         dl,byte ptr [ebp-5]
 004E8D73    mov         eax,dword ptr [ebp-4]
 004E8D76    call        004E8404
 004E8D7B    mov         edx,dword ptr [ebp-4]
 004E8D7E    mov         edx,dword ptr [edx+10]
 004E8D81    sub         edx,eax
 004E8D83    mov         eax,dword ptr [ebp-4]
 004E8D86    mov         dword ptr [eax+14],edx
 004E8D89    mov         eax,dword ptr [ebp-4]
 004E8D8C    cmp         dword ptr [eax+14],0
>004E8D90    jge         004E8D9A
 004E8D92    mov         eax,dword ptr [ebp-4]
 004E8D95    xor         edx,edx
 004E8D97    mov         dword ptr [eax+14],edx
 004E8D9A    mov         dword ptr [ebp-24],1C
 004E8DA1    mov         dword ptr [ebp-20],17
 004E8DA8    xor         eax,eax
 004E8DAA    mov         dword ptr [ebp-1C],eax
 004E8DAD    mov         eax,dword ptr [ebp-4]
 004E8DB0    cmp         dword ptr [eax+14],0
>004E8DB4    jle         004E8DC1
 004E8DB6    mov         eax,dword ptr [ebp-4]
 004E8DB9    mov         eax,dword ptr [eax+10]
 004E8DBC    mov         dword ptr [ebp-18],eax
>004E8DBF    jmp         004E8DC6
 004E8DC1    xor         eax,eax
 004E8DC3    mov         dword ptr [ebp-18],eax
 004E8DC6    mov         cl,byte ptr [ebp-6]
 004E8DC9    mov         dl,byte ptr [ebp-5]
 004E8DCC    mov         eax,dword ptr [ebp-4]
 004E8DCF    call        004E8404
 004E8DD4    inc         eax
 004E8DD5    mov         dword ptr [ebp-14],eax
 004E8DD8    mov         eax,dword ptr [ebp-4]
 004E8DDB    mov         eax,dword ptr [eax+0C]
 004E8DDE    mov         dword ptr [ebp-10],eax
 004E8DE1    mov         eax,dword ptr [ebp-4]
 004E8DE4    mov         eax,dword ptr [eax+0C]
 004E8DE7    mov         dword ptr [ebp-0C],eax
 004E8DEA    push        ebp
 004E8DEB    mov         eax,dword ptr [ebp-4]
 004E8DEE    mov         al,byte ptr [eax+44]
 004E8DF1    call        004E8BEC
 004E8DF6    pop         ecx
 004E8DF7    mov         eax,dword ptr [ebp-4]
 004E8DFA    mov         byte ptr [eax+44],0
 004E8DFE    push        0FF
 004E8E00    lea         eax,[ebp-24]
 004E8E03    push        eax
 004E8E04    movzx       eax,word ptr [ebp-8]
 004E8E08    push        eax
 004E8E09    mov         eax,dword ptr [ebp-4]
 004E8E0C    mov         eax,dword ptr [eax+4]
 004E8E0F    call        TWinControl.GetHandle
 004E8E14    push        eax
 004E8E15    mov         eax,[0055B4A8];^gvar_0055DBD8:Pointer
 004E8E1A    mov         eax,dword ptr [eax]
 004E8E1C    call        eax
 004E8E1E    mov         eax,dword ptr [ebp-4]
 004E8E21    mov         edx,dword ptr [eax+0C]
 004E8E24    mov         eax,dword ptr [ebp-4]
 004E8E27    call        TControlScrollBar.SetPosition
 004E8E2C    xor         ecx,ecx
 004E8E2E    mov         dl,1
 004E8E30    mov         eax,dword ptr [ebp-4]
 004E8E33    call        004E8404
 004E8E38    lea         eax,[eax+eax*8]
 004E8E3B    mov         ecx,0A
 004E8E40    cdq
 004E8E41    idiv        eax,ecx
 004E8E43    mov         edx,dword ptr [ebp-4]
 004E8E46    mov         word ptr [edx+0A],ax
 004E8E4A    mov         eax,dword ptr [ebp-4]
 004E8E4D    cmp         byte ptr [eax+1F],0
>004E8E51    je          004E8E6A
 004E8E53    mov         eax,dword ptr [ebp-4]
 004E8E56    movzx       eax,word ptr [eax+0A]
 004E8E5A    mov         ecx,0A
 004E8E5F    xor         edx,edx
 004E8E61    div         eax,ecx
 004E8E63    mov         edx,dword ptr [ebp-4]
 004E8E66    mov         word ptr [edx+8],ax
 004E8E6A    mov         esp,ebp
 004E8E6C    pop         ebp
 004E8E6D    ret
*}
end;

//004E8E70
constructor TScrollingWinControl.Create(AOwner:TComponent);
begin
{*
 004E8E70    push        ebp
 004E8E71    mov         ebp,esp
 004E8E73    add         esp,0FFFFFFF4
 004E8E76    test        dl,dl
>004E8E78    je          004E8E82
 004E8E7A    add         esp,0FFFFFFF0
 004E8E7D    call        @ClassCreate
 004E8E82    mov         dword ptr [ebp-0C],ecx
 004E8E85    mov         byte ptr [ebp-5],dl
 004E8E88    mov         dword ptr [ebp-4],eax
 004E8E8B    mov         ecx,dword ptr [ebp-0C]
 004E8E8E    xor         edx,edx
 004E8E90    mov         eax,dword ptr [ebp-4]
 004E8E93    call        TWinControl.Create
 004E8E98    mov         eax,dword ptr [ebp-4]
 004E8E9B    mov         eax,dword ptr [eax+50];TScrollingWinControl.FControlStyle:TControlStyle
 004E8E9E    or          eax,dword ptr ds:[4E8F08];0x20000 gvar_004E8F08
 004E8EA4    mov         edx,dword ptr [ebp-4]
 004E8EA7    mov         dword ptr [edx+50],eax;TScrollingWinControl.FControlStyle:TControlStyle
 004E8EAA    push        0
 004E8EAC    mov         ecx,dword ptr [ebp-4]
 004E8EAF    mov         dl,1
 004E8EB1    mov         eax,[004E5B44];TControlScrollBar
 004E8EB6    call        TControlScrollBar.Create;TControlScrollBar.Create
 004E8EBB    mov         edx,dword ptr [ebp-4]
 004E8EBE    mov         dword ptr [edx+208],eax;TScrollingWinControl.HorzScrollBar:TControlScrollBar
 004E8EC4    push        1
 004E8EC6    mov         ecx,dword ptr [ebp-4]
 004E8EC9    mov         dl,1
 004E8ECB    mov         eax,[004E5B44];TControlScrollBar
 004E8ED0    call        TControlScrollBar.Create;TControlScrollBar.Create
 004E8ED5    mov         edx,dword ptr [ebp-4]
 004E8ED8    mov         dword ptr [edx+20C],eax;TScrollingWinControl.VertScrollBar:TControlScrollBar
 004E8EDE    mov         eax,dword ptr [ebp-4]
 004E8EE1    mov         byte ptr [eax+210],1;TScrollingWinControl.FAutoScroll:Boolean
 004E8EE8    mov         eax,dword ptr [ebp-4]
 004E8EEB    cmp         byte ptr [ebp-5],0
>004E8EEF    je          004E8F00
 004E8EF1    call        @AfterConstruction
 004E8EF6    pop         dword ptr fs:[0]
 004E8EFD    add         esp,0C
 004E8F00    mov         eax,dword ptr [ebp-4]
 004E8F03    mov         esp,ebp
 004E8F05    pop         ebp
 004E8F06    ret
*}
end;

//004E8F0C
destructor TScrollingWinControl.Destroy;
begin
{*
 004E8F0C    push        ebp
 004E8F0D    mov         ebp,esp
 004E8F0F    add         esp,0FFFFFFF8
 004E8F12    call        @BeforeDestruction
 004E8F17    mov         byte ptr [ebp-5],dl
 004E8F1A    mov         dword ptr [ebp-4],eax
 004E8F1D    mov         eax,dword ptr [ebp-4]
 004E8F20    mov         eax,dword ptr [eax+208]
 004E8F26    call        TObject.Free
 004E8F2B    mov         eax,dword ptr [ebp-4]
 004E8F2E    mov         eax,dword ptr [eax+20C]
 004E8F34    call        TObject.Free
 004E8F39    mov         dl,byte ptr [ebp-5]
 004E8F3C    and         dl,0FC
 004E8F3F    mov         eax,dword ptr [ebp-4]
 004E8F42    call        TWinControl.Destroy
 004E8F47    cmp         byte ptr [ebp-5],0
>004E8F4B    jle         004E8F55
 004E8F4D    mov         eax,dword ptr [ebp-4]
 004E8F50    call        @ClassDestroy
 004E8F55    pop         ecx
 004E8F56    pop         ecx
 004E8F57    pop         ebp
 004E8F58    ret
*}
end;

//004E8F5C
{*procedure sub_004E8F5C(?:?);
begin
 004E8F5C    push        ebp
 004E8F5D    mov         ebp,esp
 004E8F5F    add         esp,0FFFFFFF8
 004E8F62    mov         dword ptr [ebp-8],edx
 004E8F65    mov         dword ptr [ebp-4],eax
 004E8F68    mov         edx,dword ptr [ebp-8]
 004E8F6B    mov         eax,dword ptr [ebp-4]
 004E8F6E    call        004CF814
 004E8F73    mov         eax,dword ptr [ebp-8]
 004E8F76    and         dword ptr [eax+24],0FFFFFFFC
 004E8F7A    pop         ecx
 004E8F7B    pop         ecx
 004E8F7C    pop         ebp
 004E8F7D    ret
end;*}

//004E8F80
procedure TScrollingWinControl.CreateWnd;
begin
{*
 004E8F80    push        ebp
 004E8F81    mov         ebp,esp
 004E8F83    push        ecx
 004E8F84    mov         dword ptr [ebp-4],eax
 004E8F87    mov         eax,dword ptr [ebp-4]
 004E8F8A    call        TWinControl.CreateWnd
 004E8F8F    mov         eax,[0055B70C];^gvar_0055D9C4:Integer
 004E8F94    cmp         byte ptr [eax+0D],0
>004E8F98    jne         004E8FBB
 004E8F9A    mov         edx,1
 004E8F9F    mov         eax,5
 004E8FA4    call        0046B440
 004E8FA9    test        al,al
>004E8FAB    jne         004E8FBB
 004E8FAD    mov         eax,dword ptr [ebp-4]
 004E8FB0    call        TWinControl.GetHandle
 004E8FB5    push        eax
 004E8FB6    call        00491C64
 004E8FBB    mov         eax,dword ptr [ebp-4]
 004E8FBE    call        TScrollingWinControl.UpdateScrollBars
 004E8FC3    pop         ecx
 004E8FC4    pop         ebp
 004E8FC5    ret
*}
end;

//004E8FC8
procedure TScrollingWinControl.AlignControls(AControl:TControl; var Rect:TRect);
begin
{*
 004E8FC8    push        ebp
 004E8FC9    mov         ebp,esp
 004E8FCB    add         esp,0FFFFFFF4
 004E8FCE    mov         dword ptr [ebp-0C],ecx
 004E8FD1    mov         dword ptr [ebp-8],edx
 004E8FD4    mov         dword ptr [ebp-4],eax
 004E8FD7    mov         eax,dword ptr [ebp-4]
 004E8FDA    call        004E916C
 004E8FDF    mov         ecx,dword ptr [ebp-0C]
 004E8FE2    mov         edx,dword ptr [ebp-8]
 004E8FE5    mov         eax,dword ptr [ebp-4]
 004E8FE8    call        TWinControl.AlignControls
 004E8FED    mov         esp,ebp
 004E8FEF    pop         ebp
 004E8FF0    ret
*}
end;

//004E8FF4
{*function sub_004E8FF4:?;
begin
 004E8FF4    push        ebp
 004E8FF5    mov         ebp,esp
 004E8FF7    add         esp,0FFFFFFF8
 004E8FFA    mov         dword ptr [ebp-4],eax
 004E8FFD    mov         eax,dword ptr [ebp-4]
 004E9000    cmp         byte ptr [eax+5C],0;TScrollingWinControl.FAutoSize:Boolean
>004E9004    jne         004E901E
 004E9006    mov         eax,dword ptr [ebp-4]
 004E9009    cmp         byte ptr [eax+1A8],0;TScrollingWinControl.FDockSite:Boolean
>004E9010    je          004E9022
 004E9012    mov         eax,dword ptr [ebp-4]
 004E9015    cmp         byte ptr [eax+1A7],0;TScrollingWinControl.FUseDockManager:Boolean
>004E901C    je          004E9022
 004E901E    xor         eax,eax
>004E9020    jmp         004E9024
 004E9022    mov         al,1
 004E9024    mov         byte ptr [ebp-5],al
 004E9027    mov         al,byte ptr [ebp-5]
 004E902A    pop         ecx
 004E902B    pop         ecx
 004E902C    pop         ebp
 004E902D    ret
end;*}

//004E9030
procedure TScrollingWinControl.sub_004CF0B0;
begin
{*
 004E9030    push        ebp
 004E9031    mov         ebp,esp
 004E9033    add         esp,0FFFFFFE0
 004E9036    mov         dword ptr [ebp-4],eax
 004E9039    mov         dl,1
 004E903B    mov         eax,[004759C0];TList
 004E9040    call        TObject.Create;TList.Create
 004E9045    mov         dword ptr [ebp-14],eax
 004E9048    xor         eax,eax
 004E904A    push        ebp
 004E904B    push        4E9161
 004E9050    push        dword ptr fs:[eax]
 004E9053    mov         dword ptr fs:[eax],esp
 004E9056    mov         eax,dword ptr [ebp-4]
 004E9059    call        TControl.GetClientWidth
 004E905E    mov         dword ptr [ebp-0C],eax
 004E9061    mov         eax,dword ptr [ebp-4]
 004E9064    mov         eax,dword ptr [eax+208];TScrollingWinControl.HorzScrollBar:TControlScrollBar
 004E906A    mov         dword ptr [ebp-18],eax
 004E906D    mov         eax,dword ptr [ebp-18]
 004E9070    call        004E82E0
 004E9075    test        al,al
>004E9077    je          004E9084
 004E9079    mov         eax,dword ptr [ebp-18]
 004E907C    mov         eax,dword ptr [eax+10];TControlScrollBar.Range:Integer
 004E907F    cmp         eax,dword ptr [ebp-0C]
>004E9082    jg          004E9088
 004E9084    xor         eax,eax
>004E9086    jmp         004E908A
 004E9088    mov         al,1
 004E908A    mov         byte ptr [ebp-0D],al
 004E908D    cmp         byte ptr [ebp-0D],0
>004E9091    je          004E90A6
 004E9093    mov         eax,dword ptr [ebp-18]
 004E9096    mov         eax,dword ptr [eax+10];TControlScrollBar.Range:Integer
 004E9099    mov         dword ptr [ebp-0C],eax
 004E909C    xor         edx,edx
 004E909E    mov         eax,dword ptr [ebp-18]
 004E90A1    call        TControlScrollBar.SetPosition
 004E90A6    mov         eax,dword ptr [ebp-4]
 004E90A9    call        004CF618
 004E90AE    dec         eax
 004E90AF    test        eax,eax
>004E90B1    jl          004E9100
 004E90B3    inc         eax
 004E90B4    mov         dword ptr [ebp-1C],eax
 004E90B7    mov         dword ptr [ebp-8],0
 004E90BE    mov         edx,dword ptr [ebp-8]
 004E90C1    mov         eax,dword ptr [ebp-4]
 004E90C4    call        004CF5AC
 004E90C9    mov         dword ptr [ebp-20],eax
 004E90CC    mov         edx,dword ptr [ebp-8]
 004E90CF    mov         eax,dword ptr [ebp-4]
 004E90D2    call        004CF5AC
 004E90D7    mov         edx,eax
 004E90D9    mov         eax,dword ptr [ebp-14]
 004E90DC    call        TList.Add
 004E90E1    mov         eax,dword ptr [ebp-20]
 004E90E4    mov         edx,dword ptr [ebp-0C]
 004E90E7    sub         edx,dword ptr [eax+48]
 004E90EA    mov         eax,dword ptr [ebp-20]
 004E90ED    sub         edx,dword ptr [eax+40]
 004E90F0    mov         eax,dword ptr [ebp-20]
 004E90F3    call        TTabSheet.SetLeft
 004E90F8    inc         dword ptr [ebp-8]
 004E90FB    dec         dword ptr [ebp-1C]
>004E90FE    jne         004E90BE
 004E9100    mov         eax,dword ptr [ebp-14]
 004E9103    mov         eax,dword ptr [eax+8];TList.FCount:Integer
 004E9106    dec         eax
 004E9107    test        eax,eax
>004E9109    jl          004E9137
 004E910B    inc         eax
 004E910C    mov         dword ptr [ebp-1C],eax
 004E910F    mov         dword ptr [ebp-8],0
 004E9116    push        0
 004E9118    mov         edx,dword ptr [ebp-8]
 004E911B    mov         eax,dword ptr [ebp-14]
 004E911E    call        TList.Get
 004E9123    xor         ecx,ecx
 004E9125    mov         edx,0B03E
 004E912A    call        004CC7DC
 004E912F    inc         dword ptr [ebp-8]
 004E9132    dec         dword ptr [ebp-1C]
>004E9135    jne         004E9116
 004E9137    cmp         byte ptr [ebp-0D],0
>004E913B    je          004E914B
 004E913D    mov         eax,dword ptr [ebp-4]
 004E9140    mov         eax,dword ptr [eax+208];TScrollingWinControl.HorzScrollBar:TControlScrollBar
 004E9146    call        TControlScrollBar.ChangeBiDiPosition
 004E914B    xor         eax,eax
 004E914D    pop         edx
 004E914E    pop         ecx
 004E914F    pop         ecx
 004E9150    mov         dword ptr fs:[eax],edx
 004E9153    push        4E9168
 004E9158    mov         eax,dword ptr [ebp-14]
 004E915B    call        TObject.Free
 004E9160    ret
>004E9161    jmp         @HandleFinally
>004E9166    jmp         004E9158
 004E9168    mov         esp,ebp
 004E916A    pop         ebp
 004E916B    ret
*}
end;

//004E916C
procedure sub_004E916C(?:TScrollingWinControl);
begin
{*
 004E916C    push        ebp
 004E916D    mov         ebp,esp
 004E916F    push        ecx
 004E9170    mov         dword ptr [ebp-4],eax
 004E9173    mov         eax,dword ptr [ebp-4]
 004E9176    cmp         dword ptr [eax+214],0;TScrollingWinControl.FAutoRangeCount:Integer
>004E917D    jg          004E919B
 004E917F    mov         eax,dword ptr [ebp-4]
 004E9182    mov         eax,dword ptr [eax+208];TScrollingWinControl.HorzScrollBar:TControlScrollBar
 004E9188    call        004E8228
 004E918D    mov         eax,dword ptr [ebp-4]
 004E9190    mov         eax,dword ptr [eax+20C];TScrollingWinControl.VertScrollBar:TControlScrollBar
 004E9196    call        004E8228
 004E919B    pop         ecx
 004E919C    pop         ebp
 004E919D    ret
*}
end;

//004E91A0
procedure TForm.SetAutoScroll(Value:Boolean);
begin
{*
 004E91A0    push        ebp
 004E91A1    mov         ebp,esp
 004E91A3    add         esp,0FFFFFFF8
 004E91A6    mov         byte ptr [ebp-5],dl
 004E91A9    mov         dword ptr [ebp-4],eax
 004E91AC    mov         eax,dword ptr [ebp-4]
 004E91AF    mov         al,byte ptr [eax+210];TForm.FAutoScroll:Boolean
 004E91B5    cmp         al,byte ptr [ebp-5]
>004E91B8    je          004E91F6
 004E91BA    mov         al,byte ptr [ebp-5]
 004E91BD    mov         edx,dword ptr [ebp-4]
 004E91C0    mov         byte ptr [edx+210],al;TForm.FAutoScroll:Boolean
 004E91C6    cmp         byte ptr [ebp-5],0
>004E91CA    je          004E91D6
 004E91CC    mov         eax,dword ptr [ebp-4]
 004E91CF    call        004E916C
>004E91D4    jmp         004E91F6
 004E91D6    xor         edx,edx
 004E91D8    mov         eax,dword ptr [ebp-4]
 004E91DB    mov         eax,dword ptr [eax+208];TForm.HorzScrollBar:TControlScrollBar
 004E91E1    call        TControlScrollBar.SetRange
 004E91E6    xor         edx,edx
 004E91E8    mov         eax,dword ptr [ebp-4]
 004E91EB    mov         eax,dword ptr [eax+20C];TForm.VertScrollBar:TControlScrollBar
 004E91F1    call        TControlScrollBar.SetRange
 004E91F6    pop         ecx
 004E91F7    pop         ecx
 004E91F8    pop         ebp
 004E91F9    ret
*}
end;

//004E91FC
procedure TScrollingWinControl.SetHorzScrollBar(Value:TControlScrollBar);
begin
{*
 004E91FC    push        ebp
 004E91FD    mov         ebp,esp
 004E91FF    add         esp,0FFFFFFF8
 004E9202    mov         dword ptr [ebp-8],edx
 004E9205    mov         dword ptr [ebp-4],eax
 004E9208    mov         edx,dword ptr [ebp-8]
 004E920B    mov         eax,dword ptr [ebp-4]
 004E920E    mov         eax,dword ptr [eax+208];TScrollingWinControl.HorzScrollBar:TControlScrollBar
 004E9214    mov         ecx,dword ptr [eax]
 004E9216    call        dword ptr [ecx+8];TControlScrollBar.sub_004E8078
 004E9219    pop         ecx
 004E921A    pop         ecx
 004E921B    pop         ebp
 004E921C    ret
*}
end;

//004E9220
procedure TScrollingWinControl.SetVertScrollBar(Value:TControlScrollBar);
begin
{*
 004E9220    push        ebp
 004E9221    mov         ebp,esp
 004E9223    add         esp,0FFFFFFF8
 004E9226    mov         dword ptr [ebp-8],edx
 004E9229    mov         dword ptr [ebp-4],eax
 004E922C    mov         edx,dword ptr [ebp-8]
 004E922F    mov         eax,dword ptr [ebp-4]
 004E9232    mov         eax,dword ptr [eax+20C];TScrollingWinControl.VertScrollBar:TControlScrollBar
 004E9238    mov         ecx,dword ptr [eax]
 004E923A    call        dword ptr [ecx+8];TControlScrollBar.sub_004E8078
 004E923D    pop         ecx
 004E923E    pop         ecx
 004E923F    pop         ebp
 004E9240    ret
*}
end;

//004E9244
procedure TScrollingWinControl.UpdateScrollBars;
begin
{*
 004E9244    push        ebp
 004E9245    mov         ebp,esp
 004E9247    push        ecx
 004E9248    mov         dword ptr [ebp-4],eax
 004E924B    mov         eax,dword ptr [ebp-4]
 004E924E    cmp         byte ptr [eax+218],0
>004E9255    jne         004E9336
 004E925B    mov         eax,dword ptr [ebp-4]
 004E925E    call        TWinControl.HandleAllocated
 004E9263    test        al,al
>004E9265    je          004E9336
 004E926B    xor         eax,eax
 004E926D    push        ebp
 004E926E    push        4E932F
 004E9273    push        dword ptr fs:[eax]
 004E9276    mov         dword ptr fs:[eax],esp
 004E9279    mov         eax,dword ptr [ebp-4]
 004E927C    mov         byte ptr [eax+218],1
 004E9283    mov         eax,dword ptr [ebp-4]
 004E9286    mov         eax,dword ptr [eax+20C]
 004E928C    call        TControlScrollBar.NeedsScrollBarVisible
 004E9291    test        al,al
>004E9293    je          004E92BB
 004E9295    mov         eax,dword ptr [ebp-4]
 004E9298    mov         eax,dword ptr [eax+208]
 004E929E    mov         cl,1
 004E92A0    xor         edx,edx
 004E92A2    call        TControlScrollBar.Update
 004E92A7    mov         eax,dword ptr [ebp-4]
 004E92AA    mov         eax,dword ptr [eax+20C]
 004E92B0    xor         ecx,ecx
 004E92B2    mov         dl,1
 004E92B4    call        TControlScrollBar.Update
>004E92B9    jmp         004E9317
 004E92BB    mov         eax,dword ptr [ebp-4]
 004E92BE    mov         eax,dword ptr [eax+208]
 004E92C4    call        TControlScrollBar.NeedsScrollBarVisible
 004E92C9    test        al,al
>004E92CB    je          004E92F3
 004E92CD    mov         eax,dword ptr [ebp-4]
 004E92D0    mov         eax,dword ptr [eax+20C]
 004E92D6    mov         cl,1
 004E92D8    xor         edx,edx
 004E92DA    call        TControlScrollBar.Update
 004E92DF    mov         eax,dword ptr [ebp-4]
 004E92E2    mov         eax,dword ptr [eax+208]
 004E92E8    xor         ecx,ecx
 004E92EA    mov         dl,1
 004E92EC    call        TControlScrollBar.Update
>004E92F1    jmp         004E9317
 004E92F3    mov         eax,dword ptr [ebp-4]
 004E92F6    mov         eax,dword ptr [eax+20C]
 004E92FC    xor         ecx,ecx
 004E92FE    xor         edx,edx
 004E9300    call        TControlScrollBar.Update
 004E9305    mov         eax,dword ptr [ebp-4]
 004E9308    mov         eax,dword ptr [eax+208]
 004E930E    xor         ecx,ecx
 004E9310    mov         dl,1
 004E9312    call        TControlScrollBar.Update
 004E9317    xor         eax,eax
 004E9319    pop         edx
 004E931A    pop         ecx
 004E931B    pop         ecx
 004E931C    mov         dword ptr fs:[eax],edx
 004E931F    push        4E9336
 004E9324    mov         eax,dword ptr [ebp-4]
 004E9327    mov         byte ptr [eax+218],0
 004E932E    ret
>004E932F    jmp         @HandleFinally
>004E9334    jmp         004E9324
 004E9336    pop         ecx
 004E9337    pop         ebp
 004E9338    ret
*}
end;

//004E933C
{*procedure sub_004E933C(?:?);
begin
 004E933C    push        ebp
 004E933D    mov         ebp,esp
 004E933F    add         esp,0FFFFFFF8
 004E9342    mov         dword ptr [ebp-8],edx
 004E9345    mov         dword ptr [ebp-4],eax
 004E9348    cmp         dword ptr [ebp-8],0
>004E934C    je          004E936B
 004E934E    mov         eax,dword ptr [ebp-8]
 004E9351    test        byte ptr [eax+1C],1
>004E9355    jne         004E936B
 004E9357    mov         eax,dword ptr [ebp-4]
 004E935A    test        byte ptr [eax+1C],1;TScrollingWinControl.FComponentState:TComponentState
>004E935E    jne         004E936B
 004E9360    mov         edx,dword ptr [ebp-8]
 004E9363    mov         eax,dword ptr [ebp-4]
 004E9366    call        004E9370
 004E936B    pop         ecx
 004E936C    pop         ecx
 004E936D    pop         ebp
 004E936E    ret
end;*}

//004E9370
{*procedure sub_004E9370(?:TScrollingWinControl; ?:?);
begin
 004E9370    push        ebp
 004E9371    mov         ebp,esp
 004E9373    add         esp,0FFFFFFC8
 004E9376    mov         dword ptr [ebp-8],edx
 004E9379    mov         dword ptr [ebp-4],eax
 004E937C    cmp         dword ptr [ebp-8],0
>004E9380    je          004E9513
 004E9386    lea         edx,[ebp-28]
 004E9389    mov         eax,dword ptr [ebp-8]
 004E938C    mov         ecx,dword ptr [eax]
 004E938E    call        dword ptr [ecx+44]
 004E9391    mov         eax,dword ptr [ebp-4]
 004E9394    mov         eax,dword ptr [eax+208];TScrollingWinControl.HorzScrollBar:TControlScrollBar
 004E939A    movzx       eax,word ptr [eax+1A];TControlScrollBar.Margin:word
 004E939E    sub         dword ptr [ebp-28],eax
 004E93A1    mov         eax,dword ptr [ebp-4]
 004E93A4    mov         eax,dword ptr [eax+208];TScrollingWinControl.HorzScrollBar:TControlScrollBar
 004E93AA    movzx       eax,word ptr [eax+1A];TControlScrollBar.Margin:word
 004E93AE    add         dword ptr [ebp-20],eax
 004E93B1    mov         eax,dword ptr [ebp-4]
 004E93B4    mov         eax,dword ptr [eax+20C];TScrollingWinControl.VertScrollBar:TControlScrollBar
 004E93BA    movzx       eax,word ptr [eax+1A];TControlScrollBar.Margin:word
 004E93BE    sub         dword ptr [ebp-24],eax
 004E93C1    mov         eax,dword ptr [ebp-4]
 004E93C4    mov         eax,dword ptr [eax+20C];TScrollingWinControl.VertScrollBar:TControlScrollBar
 004E93CA    movzx       eax,word ptr [eax+1A];TControlScrollBar.Margin:word
 004E93CE    add         dword ptr [ebp-1C],eax
 004E93D1    lea         ecx,[ebp-38]
 004E93D4    lea         edx,[ebp-28]
 004E93D7    mov         eax,dword ptr [ebp-8]
 004E93DA    call        TControl.ClientToScreen
 004E93DF    lea         edx,[ebp-38]
 004E93E2    lea         ecx,[ebp-30]
 004E93E5    mov         eax,dword ptr [ebp-4]
 004E93E8    call        TControl.ScreenToClient
 004E93ED    mov         eax,dword ptr [ebp-30]
 004E93F0    mov         dword ptr [ebp-28],eax
 004E93F3    mov         eax,dword ptr [ebp-2C]
 004E93F6    mov         dword ptr [ebp-24],eax
 004E93F9    lea         ecx,[ebp-38]
 004E93FC    lea         edx,[ebp-20]
 004E93FF    mov         eax,dword ptr [ebp-8]
 004E9402    call        TControl.ClientToScreen
 004E9407    lea         edx,[ebp-38]
 004E940A    lea         ecx,[ebp-30]
 004E940D    mov         eax,dword ptr [ebp-4]
 004E9410    call        TControl.ScreenToClient
 004E9415    mov         eax,dword ptr [ebp-30]
 004E9418    mov         dword ptr [ebp-20],eax
 004E941B    mov         eax,dword ptr [ebp-2C]
 004E941E    mov         dword ptr [ebp-1C],eax
 004E9421    cmp         dword ptr [ebp-28],0
>004E9425    jge         004E9446
 004E9427    mov         eax,dword ptr [ebp-4]
 004E942A    mov         eax,dword ptr [eax+208];TScrollingWinControl.HorzScrollBar:TControlScrollBar
 004E9430    mov         dword ptr [ebp-0C],eax
 004E9433    mov         eax,dword ptr [ebp-0C]
 004E9436    mov         edx,dword ptr [eax+0C];TControlScrollBar.Position:Integer
 004E9439    add         edx,dword ptr [ebp-28]
 004E943C    mov         eax,dword ptr [ebp-0C]
 004E943F    call        TControlScrollBar.SetPosition
>004E9444    jmp         004E949A
 004E9446    mov         eax,dword ptr [ebp-4]
 004E9449    call        TControl.GetClientWidth
 004E944E    cmp         eax,dword ptr [ebp-20]
>004E9451    jge         004E949A
 004E9453    mov         eax,dword ptr [ebp-4]
 004E9456    call        TControl.GetClientWidth
 004E945B    mov         edx,dword ptr [ebp-20]
 004E945E    sub         edx,dword ptr [ebp-28]
 004E9461    cmp         eax,edx
>004E9463    jge         004E9473
 004E9465    mov         eax,dword ptr [ebp-4]
 004E9468    call        TControl.GetClientWidth
 004E946D    add         eax,dword ptr [ebp-28]
 004E9470    mov         dword ptr [ebp-20],eax
 004E9473    mov         eax,dword ptr [ebp-4]
 004E9476    mov         eax,dword ptr [eax+208];TScrollingWinControl.HorzScrollBar:TControlScrollBar
 004E947C    mov         dword ptr [ebp-10],eax
 004E947F    mov         eax,dword ptr [ebp-4]
 004E9482    call        TControl.GetClientWidth
 004E9487    mov         edx,dword ptr [ebp-10]
 004E948A    mov         edx,dword ptr [edx+0C];TControlScrollBar.Position:Integer
 004E948D    add         edx,dword ptr [ebp-20]
 004E9490    sub         edx,eax
 004E9492    mov         eax,dword ptr [ebp-10]
 004E9495    call        TControlScrollBar.SetPosition
 004E949A    cmp         dword ptr [ebp-24],0
>004E949E    jge         004E94BF
 004E94A0    mov         eax,dword ptr [ebp-4]
 004E94A3    mov         eax,dword ptr [eax+20C];TScrollingWinControl.VertScrollBar:TControlScrollBar
 004E94A9    mov         dword ptr [ebp-14],eax
 004E94AC    mov         eax,dword ptr [ebp-14]
 004E94AF    mov         edx,dword ptr [eax+0C];TControlScrollBar.Position:Integer
 004E94B2    add         edx,dword ptr [ebp-24]
 004E94B5    mov         eax,dword ptr [ebp-14]
 004E94B8    call        TControlScrollBar.SetPosition
>004E94BD    jmp         004E9513
 004E94BF    mov         eax,dword ptr [ebp-4]
 004E94C2    call        TControl.GetClientHeight
 004E94C7    cmp         eax,dword ptr [ebp-1C]
>004E94CA    jge         004E9513
 004E94CC    mov         eax,dword ptr [ebp-4]
 004E94CF    call        TControl.GetClientHeight
 004E94D4    mov         edx,dword ptr [ebp-1C]
 004E94D7    sub         edx,dword ptr [ebp-24]
 004E94DA    cmp         eax,edx
>004E94DC    jge         004E94EC
 004E94DE    mov         eax,dword ptr [ebp-4]
 004E94E1    call        TControl.GetClientHeight
 004E94E6    add         eax,dword ptr [ebp-24]
 004E94E9    mov         dword ptr [ebp-1C],eax
 004E94EC    mov         eax,dword ptr [ebp-4]
 004E94EF    mov         eax,dword ptr [eax+20C];TScrollingWinControl.VertScrollBar:TControlScrollBar
 004E94F5    mov         dword ptr [ebp-18],eax
 004E94F8    mov         eax,dword ptr [ebp-4]
 004E94FB    call        TControl.GetClientHeight
 004E9500    mov         edx,dword ptr [ebp-18]
 004E9503    mov         edx,dword ptr [edx+0C];TControlScrollBar.Position:Integer
 004E9506    add         edx,dword ptr [ebp-1C]
 004E9509    sub         edx,eax
 004E950B    mov         eax,dword ptr [ebp-18]
 004E950E    call        TControlScrollBar.SetPosition
 004E9513    mov         esp,ebp
 004E9515    pop         ebp
 004E9516    ret
end;*}

//004E9518
{*procedure sub_004E9518(?:TScrollingWinControl; ?:?; ?:Integer);
begin
 004E9518    push        ebp
 004E9519    mov         ebp,esp
 004E951B    add         esp,0FFFFFFEC
 004E951E    mov         dword ptr [ebp-0C],ecx
 004E9521    mov         dword ptr [ebp-8],edx
 004E9524    mov         dword ptr [ebp-4],eax
 004E9527    mov         eax,dword ptr [ebp-8]
 004E952A    cmp         eax,dword ptr [ebp-0C]
>004E952D    je          004E95E8
 004E9533    mov         eax,dword ptr [ebp-4]
 004E9536    test        byte ptr [eax+1C],1
>004E953A    jne         004E9556
 004E953C    mov         eax,dword ptr [ebp-4]
 004E953F    mov         eax,dword ptr [eax+208]
 004E9545    mov         byte ptr [eax+1E],1
 004E9549    mov         eax,dword ptr [ebp-4]
 004E954C    mov         eax,dword ptr [eax+20C]
 004E9552    mov         byte ptr [eax+1E],1
 004E9556    xor         edx,edx
 004E9558    mov         eax,dword ptr [ebp-4]
 004E955B    mov         eax,dword ptr [eax+208]
 004E9561    call        TControlScrollBar.SetPosition
 004E9566    xor         edx,edx
 004E9568    mov         eax,dword ptr [ebp-4]
 004E956B    mov         eax,dword ptr [eax+20C]
 004E9571    call        TControlScrollBar.SetPosition
 004E9576    mov         eax,dword ptr [ebp-4]
 004E9579    cmp         byte ptr [eax+210],0
>004E9580    jne         004E95E8
 004E9582    mov         eax,dword ptr [ebp-4]
 004E9585    mov         eax,dword ptr [eax+208]
 004E958B    mov         dword ptr [ebp-10],eax
 004E958E    mov         eax,dword ptr [ebp-10]
 004E9591    cmp         byte ptr [eax+1E],0
>004E9595    je          004E95B5
 004E9597    mov         eax,dword ptr [ebp-0C]
 004E959A    push        eax
 004E959B    mov         eax,dword ptr [ebp-8]
 004E959E    push        eax
 004E959F    mov         eax,dword ptr [ebp-10]
 004E95A2    mov         eax,dword ptr [eax+10]
 004E95A5    push        eax
 004E95A6    call        kernel32.MulDiv
 004E95AB    mov         edx,eax
 004E95AD    mov         eax,dword ptr [ebp-10]
 004E95B0    call        TControlScrollBar.SetRange
 004E95B5    mov         eax,dword ptr [ebp-4]
 004E95B8    mov         eax,dword ptr [eax+20C]
 004E95BE    mov         dword ptr [ebp-14],eax
 004E95C1    mov         eax,dword ptr [ebp-14]
 004E95C4    cmp         byte ptr [eax+1E],0
>004E95C8    je          004E95E8
 004E95CA    mov         eax,dword ptr [ebp-0C]
 004E95CD    push        eax
 004E95CE    mov         eax,dword ptr [ebp-8]
 004E95D1    push        eax
 004E95D2    mov         eax,dword ptr [ebp-14]
 004E95D5    mov         eax,dword ptr [eax+10]
 004E95D8    push        eax
 004E95D9    call        kernel32.MulDiv
 004E95DE    mov         edx,eax
 004E95E0    mov         eax,dword ptr [ebp-14]
 004E95E3    call        TControlScrollBar.SetRange
 004E95E8    mov         eax,dword ptr [ebp-4]
 004E95EB    mov         eax,dword ptr [eax+208]
 004E95F1    mov         byte ptr [eax+1E],0
 004E95F5    mov         eax,dword ptr [ebp-4]
 004E95F8    mov         eax,dword ptr [eax+20C]
 004E95FE    mov         byte ptr [eax+1E],0
 004E9602    mov         esp,ebp
 004E9604    pop         ebp
 004E9605    ret
end;*}

//004E9608
{*procedure TScrollingWinControl.sub_004CAA18(?:?; ?:?);
begin
 004E9608    push        ebp
 004E9609    mov         ebp,esp
 004E960B    add         esp,0FFFFFFF4
 004E960E    mov         dword ptr [ebp-0C],ecx
 004E9611    mov         dword ptr [ebp-8],edx
 004E9614    mov         dword ptr [ebp-4],eax
 004E9617    mov         ecx,dword ptr [ebp-0C]
 004E961A    mov         edx,dword ptr [ebp-8]
 004E961D    mov         eax,dword ptr [ebp-4]
 004E9620    call        004E9518
 004E9625    mov         ecx,dword ptr [ebp-0C]
 004E9628    mov         edx,dword ptr [ebp-8]
 004E962B    mov         eax,dword ptr [ebp-4]
 004E962E    call        TWinControl.sub_004CAA18
 004E9633    mov         esp,ebp
 004E9635    pop         ebp
 004E9636    ret
end;*}

//004E9638
{*procedure sub_004E9638(?:?);
begin
 004E9638    push        ebp
 004E9639    mov         ebp,esp
 004E963B    add         esp,0FFFFFFF8
 004E963E    mov         byte ptr [ebp-5],dl
 004E9641    mov         dword ptr [ebp-4],eax
 004E9644    pop         ecx
 004E9645    pop         ecx
 004E9646    pop         ebp
 004E9647    ret
end;*}

//004E9648
procedure TScrollingWinControl.WMSize(Message:TWMSize);
begin
{*
 004E9648    push        ebp
 004E9649    mov         ebp,esp
 004E964B    add         esp,0FFFFFFF4
 004E964E    mov         dword ptr [ebp-8],edx
 004E9651    mov         dword ptr [ebp-4],eax
 004E9654    mov         eax,dword ptr [ebp-4]
 004E9657    inc         dword ptr [eax+214];TScrollingWinControl.FAutoRangeCount:Integer
 004E965D    xor         eax,eax
 004E965F    push        ebp
 004E9660    push        4E96C1
 004E9665    push        dword ptr fs:[eax]
 004E9668    mov         dword ptr fs:[eax],esp
 004E966B    mov         edx,dword ptr [ebp-8]
 004E966E    mov         eax,dword ptr [ebp-4]
 004E9671    call        TWinControl.WMSize
 004E9676    mov         byte ptr [ebp-9],0
 004E967A    mov         eax,dword ptr [ebp-8]
 004E967D    mov         eax,dword ptr [eax+4]
 004E9680    sub         eax,1
>004E9683    jb          004E968C
>004E9685    je          004E9692
 004E9687    dec         eax
>004E9688    je          004E9698
>004E968A    jmp         004E969C
 004E968C    mov         byte ptr [ebp-9],0
>004E9690    jmp         004E969C
 004E9692    mov         byte ptr [ebp-9],1
>004E9696    jmp         004E969C
 004E9698    mov         byte ptr [ebp-9],2
 004E969C    mov         dl,byte ptr [ebp-9]
 004E969F    mov         eax,dword ptr [ebp-4]
 004E96A2    mov         ecx,dword ptr [eax]
 004E96A4    call        dword ptr [ecx+0D0];TScrollingWinControl.sub_004E9638
 004E96AA    xor         eax,eax
 004E96AC    pop         edx
 004E96AD    pop         ecx
 004E96AE    pop         ecx
 004E96AF    mov         dword ptr fs:[eax],edx
 004E96B2    push        4E96C8
 004E96B7    mov         eax,dword ptr [ebp-4]
 004E96BA    dec         dword ptr [eax+214];TScrollingWinControl.FAutoRangeCount:Integer
 004E96C0    ret
>004E96C1    jmp         @HandleFinally
>004E96C6    jmp         004E96B7
 004E96C8    mov         eax,dword ptr [ebp-4]
 004E96CB    mov         byte ptr [eax+218],1;TScrollingWinControl.FUpdatingScrollBars:Boolean
 004E96D2    xor         eax,eax
 004E96D4    push        ebp
 004E96D5    push        4E9700
 004E96DA    push        dword ptr fs:[eax]
 004E96DD    mov         dword ptr fs:[eax],esp
 004E96E0    mov         eax,dword ptr [ebp-4]
 004E96E3    call        004E916C
 004E96E8    xor         eax,eax
 004E96EA    pop         edx
 004E96EB    pop         ecx
 004E96EC    pop         ecx
 004E96ED    mov         dword ptr fs:[eax],edx
 004E96F0    push        4E9707
 004E96F5    mov         eax,dword ptr [ebp-4]
 004E96F8    mov         byte ptr [eax+218],0;TScrollingWinControl.FUpdatingScrollBars:Boolean
 004E96FF    ret
>004E9700    jmp         @HandleFinally
>004E9705    jmp         004E96F5
 004E9707    mov         eax,dword ptr [ebp-4]
 004E970A    mov         eax,dword ptr [eax+208];TScrollingWinControl.HorzScrollBar:TControlScrollBar
 004E9710    cmp         byte ptr [eax+1C],0;TControlScrollBar.Visible:Boolean
>004E9714    jne         004E9725
 004E9716    mov         eax,dword ptr [ebp-4]
 004E9719    mov         eax,dword ptr [eax+20C];TScrollingWinControl.VertScrollBar:TControlScrollBar
 004E971F    cmp         byte ptr [eax+1C],0;TControlScrollBar.Visible:Boolean
>004E9723    je          004E972D
 004E9725    mov         eax,dword ptr [ebp-4]
 004E9728    call        TScrollingWinControl.UpdateScrollBars
 004E972D    mov         esp,ebp
 004E972F    pop         ebp
 004E9730    ret
*}
end;

//004E9734
{*procedure TScrollingWinControl.WMHScroll(?:?);
begin
 004E9734    push        ebp
 004E9735    mov         ebp,esp
 004E9737    add         esp,0FFFFFFF8
 004E973A    mov         dword ptr [ebp-8],edx
 004E973D    mov         dword ptr [ebp-4],eax
 004E9740    mov         eax,dword ptr [ebp-8]
 004E9743    cmp         dword ptr [eax+8],0
>004E9747    jne         004E976B
 004E9749    mov         eax,dword ptr [ebp-4]
 004E974C    mov         eax,dword ptr [eax+208];TScrollingWinControl.HorzScrollBar:TControlScrollBar
 004E9752    cmp         byte ptr [eax+1C],0;TControlScrollBar.Visible:Boolean
>004E9756    je          004E976B
 004E9758    mov         edx,dword ptr [ebp-8]
 004E975B    mov         eax,dword ptr [ebp-4]
 004E975E    mov         eax,dword ptr [eax+208];TScrollingWinControl.HorzScrollBar:TControlScrollBar
 004E9764    call        004E851C
>004E9769    jmp         004E9776
 004E976B    mov         edx,dword ptr [ebp-8]
 004E976E    mov         eax,dword ptr [ebp-4]
 004E9771    call        TWinControl.WMHScroll
 004E9776    pop         ecx
 004E9777    pop         ecx
 004E9778    pop         ebp
 004E9779    ret
end;*}

//004E977C
{*procedure TScrollingWinControl.WMVScroll(?:?);
begin
 004E977C    push        ebp
 004E977D    mov         ebp,esp
 004E977F    add         esp,0FFFFFFF8
 004E9782    mov         dword ptr [ebp-8],edx
 004E9785    mov         dword ptr [ebp-4],eax
 004E9788    mov         eax,dword ptr [ebp-8]
 004E978B    cmp         dword ptr [eax+8],0
>004E978F    jne         004E97B3
 004E9791    mov         eax,dword ptr [ebp-4]
 004E9794    mov         eax,dword ptr [eax+20C];TScrollingWinControl.VertScrollBar:TControlScrollBar
 004E979A    cmp         byte ptr [eax+1C],0;TControlScrollBar.Visible:Boolean
>004E979E    je          004E97B3
 004E97A0    mov         edx,dword ptr [ebp-8]
 004E97A3    mov         eax,dword ptr [ebp-4]
 004E97A6    mov         eax,dword ptr [eax+20C];TScrollingWinControl.VertScrollBar:TControlScrollBar
 004E97AC    call        004E851C
>004E97B1    jmp         004E97BE
 004E97B3    mov         edx,dword ptr [ebp-8]
 004E97B6    mov         eax,dword ptr [ebp-4]
 004E97B9    call        TWinControl.WMVScroll
 004E97BE    pop         ecx
 004E97BF    pop         ecx
 004E97C0    pop         ebp
 004E97C1    ret
end;*}

//004E97C4
{*procedure sub_004E97C4(?:?);
begin
 004E97C4    push        ebp
 004E97C5    mov         ebp,esp
 004E97C7    add         esp,0FFFFFFE8
 004E97CA    push        esi
 004E97CB    push        edi
 004E97CC    mov         dword ptr [ebp-8],edx
 004E97CF    mov         dword ptr [ebp-4],eax
 004E97D2    mov         eax,dword ptr [ebp-4]
 004E97D5    call        TControl.GetClientHeight
 004E97DA    mov         edx,dword ptr [ebp-4]
 004E97DD    mov         edx,dword ptr [edx+20C];TScrollingWinControl.VertScrollBar:TControlScrollBar
 004E97E3    mov         edx,dword ptr [edx+10];TControlScrollBar.Range:Integer
 004E97E6    call        0048FCCC
 004E97EB    push        eax
 004E97EC    lea         eax,[ebp-18]
 004E97EF    push        eax
 004E97F0    mov         eax,dword ptr [ebp-4]
 004E97F3    call        TControl.GetClientWidth
 004E97F8    mov         edx,eax
 004E97FA    mov         eax,dword ptr [ebp-4]
 004E97FD    mov         eax,dword ptr [eax+208];TScrollingWinControl.HorzScrollBar:TControlScrollBar
 004E9803    mov         eax,dword ptr [eax+10];TControlScrollBar.Range:Integer
 004E9806    call        0048FCCC
 004E980B    mov         ecx,eax
 004E980D    mov         eax,dword ptr [ebp-4]
 004E9810    mov         eax,dword ptr [eax+20C];TScrollingWinControl.VertScrollBar:TControlScrollBar
 004E9816    mov         edx,dword ptr [eax+0C];TControlScrollBar.Position:Integer
 004E9819    neg         edx
 004E981B    mov         eax,dword ptr [ebp-4]
 004E981E    mov         eax,dword ptr [eax+208];TScrollingWinControl.HorzScrollBar:TControlScrollBar
 004E9824    mov         eax,dword ptr [eax+0C];TControlScrollBar.Position:Integer
 004E9827    neg         eax
 004E9829    call        Bounds
 004E982E    mov         eax,dword ptr [ebp-8]
 004E9831    lea         esi,[ebp-18]
 004E9834    mov         edi,eax
 004E9836    movs        dword ptr [edi],dword ptr [esi]
 004E9837    movs        dword ptr [edi],dword ptr [esi]
 004E9838    movs        dword ptr [edi],dword ptr [esi]
 004E9839    movs        dword ptr [edi],dword ptr [esi]
 004E983A    mov         edx,dword ptr [ebp-8]
 004E983D    mov         eax,dword ptr [ebp-4]
 004E9840    call        004CE790
 004E9845    pop         edi
 004E9846    pop         esi
 004E9847    mov         esp,ebp
 004E9849    pop         ebp
 004E984A    ret
end;*}

//004E984C
procedure TScrollingWinControl.CMBiDiModeChanged(var Message:TMessage);
begin
{*
 004E984C    push        ebp
 004E984D    mov         ebp,esp
 004E984F    add         esp,0FFFFFFF4
 004E9852    mov         dword ptr [ebp-8],edx
 004E9855    mov         dword ptr [ebp-4],eax
 004E9858    mov         eax,dword ptr [ebp-8]
 004E985B    mov         eax,dword ptr [eax+4]
 004E985E    mov         dword ptr [ebp-0C],eax
 004E9861    xor         eax,eax
 004E9863    push        ebp
 004E9864    push        4E98AD
 004E9869    push        dword ptr fs:[eax]
 004E986C    mov         dword ptr fs:[eax],esp
 004E986F    mov         eax,dword ptr [ebp-4]
 004E9872    mov         edx,dword ptr ds:[53D0A8]
 004E9878    call        @IsClass
 004E987D    test        al,al
>004E987F    jne         004E988B
 004E9881    mov         eax,dword ptr [ebp-8]
 004E9884    mov         dword ptr [eax+4],1
 004E988B    mov         edx,dword ptr [ebp-8]
 004E988E    mov         eax,dword ptr [ebp-4]
 004E9891    call        TWinControl.CMBiDiModeChanged
 004E9896    xor         eax,eax
 004E9898    pop         edx
 004E9899    pop         ecx
 004E989A    pop         ecx
 004E989B    mov         dword ptr fs:[eax],edx
 004E989E    push        4E98B4
 004E98A3    mov         eax,dword ptr [ebp-8]
 004E98A6    mov         edx,dword ptr [ebp-0C]
 004E98A9    mov         dword ptr [eax+4],edx
 004E98AC    ret
>004E98AD    jmp         @HandleFinally
>004E98B2    jmp         004E98A3
 004E98B4    mov         eax,dword ptr [ebp-4]
 004E98B7    call        TWinControl.HandleAllocated
 004E98BC    test        al,al
>004E98BE    je          004E98D6
 004E98C0    mov         eax,dword ptr [ebp-4]
 004E98C3    mov         eax,dword ptr [eax+208]
 004E98C9    call        TControlScrollBar.ChangeBiDiPosition
 004E98CE    mov         eax,dword ptr [ebp-4]
 004E98D1    call        TScrollingWinControl.UpdateScrollBars
 004E98D6    mov         esp,ebp
 004E98D8    pop         ebp
 004E98D9    ret
*}
end;

//004E98DC
constructor TCustomForm.Create(AOwner:TComponent);
begin
{*
 004E98DC    push        ebp
 004E98DD    mov         ebp,esp
 004E98DF    add         esp,0FFFFFEE8
 004E98E5    push        ebx
 004E98E6    xor         ebx,ebx
 004E98E8    mov         dword ptr [ebp-118],ebx
 004E98EE    test        dl,dl
>004E98F0    je          004E98FA
 004E98F2    add         esp,0FFFFFFF0
 004E98F5    call        @ClassCreate
 004E98FA    mov         dword ptr [ebp-0C],ecx
 004E98FD    mov         byte ptr [ebp-5],dl
 004E9900    mov         dword ptr [ebp-4],eax
 004E9903    xor         eax,eax
 004E9905    push        ebp
 004E9906    push        4E9A42
 004E990B    push        dword ptr fs:[eax]
 004E990E    mov         dword ptr fs:[eax],esp
 004E9911    mov         eax,[0055B6C4];^gvar_0055DAC8:IReadWriteSync
 004E9916    mov         eax,dword ptr [eax]
 004E9918    mov         edx,dword ptr [eax]
 004E991A    call        dword ptr [edx+14]
 004E991D    xor         eax,eax
 004E991F    push        ebp
 004E9920    push        4E9A22
 004E9925    push        dword ptr fs:[eax]
 004E9928    mov         dword ptr fs:[eax],esp
 004E992B    push        0
 004E992D    mov         ecx,dword ptr [ebp-0C]
 004E9930    xor         edx,edx
 004E9932    mov         eax,dword ptr [ebp-4]
 004E9935    mov         ebx,dword ptr [eax]
 004E9937    call        dword ptr [ebx+0E0];TCustomForm.sub_004E9AB4
 004E993D    mov         eax,dword ptr [ebp-4]
 004E9940    call        TObject.ClassType
 004E9945    cmp         eax,dword ptr ds:[4E6708];TForm
>004E994B    je          004E9A08
 004E9951    mov         eax,dword ptr [ebp-4]
 004E9954    test        byte ptr [eax+1C],10;TCustomForm.FComponentState:TComponentState
>004E9958    jne         004E9A08
 004E995E    mov         eax,dword ptr [ebp-4]
 004E9961    or          byte ptr [eax+2F4],1;TCustomForm.FFormState:TFormState
 004E9968    xor         eax,eax
 004E996A    push        ebp
 004E996B    push        4E99EA
 004E9970    push        dword ptr fs:[eax]
 004E9973    mov         dword ptr fs:[eax],esp
 004E9976    mov         edx,dword ptr ds:[4E6708];TForm
 004E997C    mov         eax,dword ptr [ebp-4]
 004E997F    call        InitInheritedComponent
 004E9984    test        al,al
>004E9986    jne         004E99D2
 004E9988    lea         edx,[ebp-114]
 004E998E    mov         eax,dword ptr [ebp-4]
 004E9991    mov         eax,dword ptr [eax]
 004E9993    call        TObject.ClassName
 004E9998    lea         eax,[ebp-114]
 004E999E    mov         dword ptr [ebp-14],eax
 004E99A1    mov         byte ptr [ebp-10],4
 004E99A5    lea         eax,[ebp-14]
 004E99A8    push        eax
 004E99A9    push        0
 004E99AB    lea         edx,[ebp-118]
 004E99B1    mov         eax,[0055B390];^SResNotFound:TResStringRec
 004E99B6    call        LoadResString
 004E99BB    mov         ecx,dword ptr [ebp-118]
 004E99C1    mov         dl,1
 004E99C3    mov         eax,[0047573C];EResNotFound
 004E99C8    call        Exception.CreateFmt;EResNotFound.Create
 004E99CD    call        @RaiseExcept
 004E99D2    xor         eax,eax
 004E99D4    pop         edx
 004E99D5    pop         ecx
 004E99D6    pop         ecx
 004E99D7    mov         dword ptr fs:[eax],edx
 004E99DA    push        4E99F1
 004E99DF    mov         eax,dword ptr [ebp-4]
 004E99E2    and         byte ptr [eax+2F4],0FE;TCustomForm.FFormState:TFormState
 004E99E9    ret
>004E99EA    jmp         @HandleFinally
>004E99EF    jmp         004E99DF
 004E99F1    mov         eax,dword ptr [ebp-4]
 004E99F4    cmp         byte ptr [eax+234],0;TCustomForm.FOldCreateOrder:Boolean
>004E99FB    je          004E9A08
 004E99FD    mov         eax,dword ptr [ebp-4]
 004E9A00    mov         edx,dword ptr [eax]
 004E9A02    call        dword ptr [edx+0D4];TCustomForm.DoCreate
 004E9A08    xor         eax,eax
 004E9A0A    pop         edx
 004E9A0B    pop         ecx
 004E9A0C    pop         ecx
 004E9A0D    mov         dword ptr fs:[eax],edx
 004E9A10    push        4E9A29
 004E9A15    mov         eax,[0055B6C4];^gvar_0055DAC8:IReadWriteSync
 004E9A1A    mov         eax,dword ptr [eax]
 004E9A1C    mov         edx,dword ptr [eax]
 004E9A1E    call        dword ptr [edx+18]
 004E9A21    ret
>004E9A22    jmp         @HandleFinally
>004E9A27    jmp         004E9A15
 004E9A29    xor         eax,eax
 004E9A2B    pop         edx
 004E9A2C    pop         ecx
 004E9A2D    pop         ecx
 004E9A2E    mov         dword ptr fs:[eax],edx
 004E9A31    push        4E9A49
 004E9A36    lea         eax,[ebp-118]
 004E9A3C    call        @LStrClr
 004E9A41    ret
>004E9A42    jmp         @HandleFinally
>004E9A47    jmp         004E9A36
 004E9A49    mov         eax,dword ptr [ebp-4]
 004E9A4C    cmp         byte ptr [ebp-5],0
>004E9A50    je          004E9A61
 004E9A52    call        @AfterConstruction
 004E9A57    pop         dword ptr fs:[0]
 004E9A5E    add         esp,0C
 004E9A61    mov         eax,dword ptr [ebp-4]
 004E9A64    pop         ebx
 004E9A65    mov         esp,ebp
 004E9A67    pop         ebp
 004E9A68    ret
*}
end;

//004E9A6C
procedure TCustomForm.AfterConstruction;
begin
{*
 004E9A6C    push        ebp
 004E9A6D    mov         ebp,esp
 004E9A6F    push        ecx
 004E9A70    push        esi
 004E9A71    mov         dword ptr [ebp-4],eax
 004E9A74    mov         eax,dword ptr [ebp-4]
 004E9A77    cmp         byte ptr [eax+234],0
>004E9A7E    jne         004E9A8B
 004E9A80    mov         eax,dword ptr [ebp-4]
 004E9A83    mov         edx,dword ptr [eax]
 004E9A85    call        dword ptr [edx+0D4]
 004E9A8B    mov         eax,dword ptr [ebp-4]
 004E9A8E    test        byte ptr [eax+2F4],20;{@CallDynaInst}
>004E9A95    je          004E9AAD
 004E9A97    mov         eax,dword ptr [ebp-4]
 004E9A9A    mov         si,0FFB3
 004E9A9E    call        @CallDynaInst
 004E9AA3    mov         eax,dword ptr [ebp-4]
 004E9AA6    and         byte ptr [eax+2F4],0DF
 004E9AAD    pop         esi
 004E9AAE    pop         ecx
 004E9AAF    pop         ebp
 004E9AB0    ret
*}
end;

//004E9AB4
constructor sub_004E9AB4;
begin
{*
 004E9AB4    push        ebp
 004E9AB5    mov         ebp,esp
 004E9AB7    add         esp,0FFFFFFF4
 004E9ABA    test        dl,dl
>004E9ABC    je          004E9AC6
 004E9ABE    add         esp,0FFFFFFF0
 004E9AC1    call        @ClassCreate
 004E9AC6    mov         dword ptr [ebp-0C],ecx
 004E9AC9    mov         byte ptr [ebp-5],dl
 004E9ACC    mov         dword ptr [ebp-4],eax
 004E9ACF    mov         ecx,dword ptr [ebp-0C]
 004E9AD2    xor         edx,edx
 004E9AD4    mov         eax,dword ptr [ebp-4]
 004E9AD7    call        TScrollingWinControl.Create
 004E9ADC    mov         eax,dword ptr [ebp-4]
 004E9ADF    mov         edx,dword ptr ds:[4E9C78];0xAB gvar_004E9C78
 004E9AE5    mov         dword ptr [eax+50],edx;TCustomForm.FControlStyle:TControlStyle
 004E9AE8    xor         edx,edx
 004E9AEA    mov         eax,dword ptr [ebp-4]
 004E9AED    call        TTabSheet.SetLeft
 004E9AF2    xor         edx,edx
 004E9AF4    mov         eax,dword ptr [ebp-4]
 004E9AF7    call        TTabSheet.SetTop
 004E9AFC    mov         edx,140
 004E9B01    mov         eax,dword ptr [ebp-4]
 004E9B04    call        TControl.SetWidth
 004E9B09    mov         edx,0F0
 004E9B0E    mov         eax,dword ptr [ebp-4]
 004E9B11    call        TControl.SetHeight
 004E9B16    mov         dl,1
 004E9B18    mov         eax,[00485DB0];TIcon
 004E9B1D    call        TIcon.Create;TIcon.Create
 004E9B22    mov         edx,dword ptr [ebp-4]
 004E9B25    mov         dword ptr [edx+240],eax;TCustomForm.FIcon:TIcon
 004E9B2B    push        31
 004E9B2D    mov         eax,[0055B2BC];^gvar_0055DB78
 004E9B32    mov         eax,dword ptr [eax]
 004E9B34    call        eax
 004E9B36    mov         edx,eax
 004E9B38    mov         eax,dword ptr [ebp-4]
 004E9B3B    mov         eax,dword ptr [eax+240];TCustomForm.FIcon:TIcon
 004E9B41    mov         ecx,dword ptr [eax]
 004E9B43    call        dword ptr [ecx+40];TIcon.sub_0048F550
 004E9B46    push        32
 004E9B48    mov         eax,[0055B2BC];^gvar_0055DB78
 004E9B4D    mov         eax,dword ptr [eax]
 004E9B4F    call        eax
 004E9B51    mov         edx,eax
 004E9B53    mov         eax,dword ptr [ebp-4]
 004E9B56    mov         eax,dword ptr [eax+240];TCustomForm.FIcon:TIcon
 004E9B5C    mov         ecx,dword ptr [eax]
 004E9B5E    call        dword ptr [ecx+34];TIcon.sub_0048F50C
 004E9B61    mov         eax,dword ptr [ebp-4]
 004E9B64    mov         eax,dword ptr [eax+240];TCustomForm.FIcon:TIcon
 004E9B6A    mov         edx,dword ptr [ebp-4]
 004E9B6D    mov         dword ptr [eax+14],edx;TIcon.?f14:TCustomForm
 004E9B70    mov         dword ptr [eax+10],4EA55C;TIcon.FOnChange:TNotifyEvent sub_004EA55C
 004E9B77    mov         dl,1
 004E9B79    mov         eax,[004C4BA4];TControlCanvas
 004E9B7E    call        TControlCanvas.Create;TControlCanvas.Create
 004E9B83    mov         edx,dword ptr [ebp-4]
 004E9B86    mov         dword ptr [edx+238],eax;TCustomForm.FCanvas:TControlCanvas
 004E9B8C    mov         eax,dword ptr [ebp-4]
 004E9B8F    mov         eax,dword ptr [eax+238];TCustomForm.FCanvas:TControlCanvas
 004E9B95    mov         edx,dword ptr [ebp-4]
 004E9B98    call        004C931C
 004E9B9D    mov         eax,dword ptr [ebp-4]
 004E9BA0    mov         dl,byte ptr ds:[4E9C7C];0x7 gvar_004E9C7C
 004E9BA6    mov         byte ptr [eax+228],dl;TCustomForm.FBorderIcons:TBorderIcons
 004E9BAC    mov         eax,dword ptr [ebp-4]
 004E9BAF    mov         byte ptr [eax+229],2;TCustomForm.FBorderStyle:TFormBorderStyle
 004E9BB6    mov         eax,dword ptr [ebp-4]
 004E9BB9    mov         byte ptr [eax+22B],0;TCustomForm.FWindowState:TWindowState
 004E9BC0    mov         eax,dword ptr [ebp-4]
 004E9BC3    mov         byte ptr [eax+231],3;TCustomForm.FDefaultMonitor:TDefaultMonitor
 004E9BCA    mov         eax,dword ptr [ebp-4]
 004E9BCD    mov         byte ptr [eax+244],0;TCustomForm.FInCMParentBiDiModeChanged:Boolean
 004E9BD4    mov         eax,[0055DE50];Screen:TScreen
 004E9BD9    mov         eax,dword ptr [eax+40]
 004E9BDC    mov         edx,dword ptr [ebp-4]
 004E9BDF    mov         dword ptr [edx+25C],eax;TCustomForm.FPixelsPerInch:Integer
 004E9BE5    mov         eax,dword ptr [ebp-4]
 004E9BE8    mov         byte ptr [eax+235],1;TCustomForm.FPrintScale:TPrintScale
 004E9BEF    mov         eax,dword ptr [ebp-4]
 004E9BF2    call        TObject.ClassType
 004E9BF7    mov         edx,dword ptr [ebp-4]
 004E9BFA    mov         dword ptr [edx+0B8],eax;TCustomForm.FFloatingDockSiteClass:TWinControlClass
 004E9C00    mov         eax,dword ptr [ebp-4]
 004E9C03    mov         byte ptr [eax+2E1],0FF;TCustomForm.FAlphaBlendValue:byte
 004E9C0A    mov         eax,dword ptr [ebp-4]
 004E9C0D    xor         edx,edx
 004E9C0F    mov         dword ptr [eax+2EC],edx;TCustomForm.FTransparentColorValue:TColor
 004E9C15    xor         edx,edx
 004E9C17    mov         eax,dword ptr [ebp-4]
 004E9C1A    call        TCustomForm.SetVisible
 004E9C1F    xor         edx,edx
 004E9C21    mov         eax,dword ptr [ebp-4]
 004E9C24    call        TPanel.SetParentColor
 004E9C29    xor         edx,edx
 004E9C2B    mov         eax,dword ptr [ebp-4]
 004E9C2E    call        TPanel.SetParentFont
 004E9C33    mov         dl,1
 004E9C35    mov         eax,dword ptr [ebp-4]
 004E9C38    call        TPanel.SetCtl3D
 004E9C3D    mov         edx,dword ptr [ebp-4]
 004E9C40    mov         eax,[0055DE50];Screen:TScreen
 004E9C45    call        004F0218
 004E9C4A    mov         eax,dword ptr [ebp-4]
 004E9C4D    mov         dword ptr [eax+2E4],0A;TCustomForm.FSnapBuffer:Integer
 004E9C57    mov         eax,dword ptr [ebp-4]
 004E9C5A    cmp         byte ptr [ebp-5],0
>004E9C5E    je          004E9C6F
 004E9C60    call        @AfterConstruction
 004E9C65    pop         dword ptr fs:[0]
 004E9C6C    add         esp,0C
 004E9C6F    mov         eax,dword ptr [ebp-4]
 004E9C72    mov         esp,ebp
 004E9C74    pop         ebp
 004E9C75    ret         4
*}
end;

//004E9C80
procedure TCustomForm.BeforeDestruction;
begin
{*
 004E9C80    push        ebp
 004E9C81    mov         ebp,esp
 004E9C83    push        ecx
 004E9C84    mov         dword ptr [ebp-4],eax
 004E9C87    mov         eax,[0055B6C4];^gvar_0055DAC8:IReadWriteSync
 004E9C8C    mov         eax,dword ptr [eax]
 004E9C8E    mov         edx,dword ptr [eax]
 004E9C90    call        dword ptr [edx+14]
 004E9C93    mov         eax,dword ptr [ebp-4]
 004E9C96    call        004832CC
 004E9C9B    mov         eax,[0055DE50];Screen:TScreen
 004E9CA0    mov         eax,dword ptr [eax+7C];{TList.Remove}
 004E9CA3    mov         edx,dword ptr [ebp-4]
 004E9CA6    call        00478AC4
 004E9CAB    xor         edx,edx
 004E9CAD    mov         eax,dword ptr [ebp-4]
 004E9CB0    call        RemoveFixupReferences
 004E9CB5    mov         eax,dword ptr [ebp-4]
 004E9CB8    cmp         dword ptr [eax+264],0
>004E9CBF    je          004E9CCF
 004E9CC1    mov         eax,dword ptr [ebp-4]
 004E9CC4    mov         eax,dword ptr [eax+264]
 004E9CCA    mov         edx,dword ptr [eax]
 004E9CCC    call        dword ptr [edx+0C]
 004E9CCF    mov         eax,dword ptr [ebp-4]
 004E9CD2    cmp         byte ptr [eax+22F],1
>004E9CD9    je          004E9CE3
 004E9CDB    mov         eax,dword ptr [ebp-4]
 004E9CDE    call        004EEBC4
 004E9CE3    mov         eax,dword ptr [ebp-4]
 004E9CE6    cmp         byte ptr [eax+234],0
>004E9CED    jne         004E9CFA
 004E9CEF    mov         eax,dword ptr [ebp-4]
 004E9CF2    mov         edx,dword ptr [eax]
 004E9CF4    call        dword ptr [edx+0D8]
 004E9CFA    pop         ecx
 004E9CFB    pop         ebp
 004E9CFC    ret
*}
end;

//004E9D00
destructor TCustomForm.Destroy;
begin
{*
 004E9D00    push        ebp
 004E9D01    mov         ebp,esp
 004E9D03    add         esp,0FFFFFFF8
 004E9D06    call        @BeforeDestruction
 004E9D0B    mov         byte ptr [ebp-5],dl
 004E9D0E    mov         dword ptr [ebp-4],eax
 004E9D11    mov         eax,dword ptr [ebp-4]
 004E9D14    test        byte ptr [eax+1C],8
>004E9D18    jne         004E9D26
 004E9D1A    mov         eax,[0055B6C4];^gvar_0055DAC8:IReadWriteSync
 004E9D1F    mov         eax,dword ptr [eax]
 004E9D21    mov         edx,dword ptr [eax]
 004E9D23    call        dword ptr [edx+14]
 004E9D26    xor         eax,eax
 004E9D28    push        ebp
 004E9D29    push        4E9DCA
 004E9D2E    push        dword ptr fs:[eax]
 004E9D31    mov         dword ptr fs:[eax],esp
 004E9D34    mov         eax,dword ptr [ebp-4]
 004E9D37    cmp         byte ptr [eax+234],0
>004E9D3E    je          004E9D4B
 004E9D40    mov         eax,dword ptr [ebp-4]
 004E9D43    mov         edx,dword ptr [eax]
 004E9D45    call        dword ptr [edx+0D8]
 004E9D4B    xor         edx,edx
 004E9D4D    mov         eax,dword ptr [ebp-4]
 004E9D50    call        TCustomForm.MergeMenu
 004E9D55    mov         eax,dword ptr [ebp-4]
 004E9D58    call        TWinControl.HandleAllocated
 004E9D5D    test        al,al
>004E9D5F    je          004E9D6C
 004E9D61    mov         eax,dword ptr [ebp-4]
 004E9D64    mov         edx,dword ptr [eax]
 004E9D66    call        dword ptr [edx+0AC]
 004E9D6C    mov         edx,dword ptr [ebp-4]
 004E9D6F    mov         eax,[0055DE50];Screen:TScreen
 004E9D74    call        TScreen.RemoveForm
 004E9D79    mov         eax,dword ptr [ebp-4]
 004E9D7C    mov         eax,dword ptr [eax+238]
 004E9D82    call        TObject.Free
 004E9D87    mov         eax,dword ptr [ebp-4]
 004E9D8A    mov         eax,dword ptr [eax+240]
 004E9D90    call        TObject.Free
 004E9D95    mov         eax,dword ptr [ebp-4]
 004E9D98    add         eax,2F0
 004E9D9D    call        FreeAndNil
 004E9DA2    mov         dl,byte ptr [ebp-5]
 004E9DA5    and         dl,0FC
 004E9DA8    mov         eax,dword ptr [ebp-4]
 004E9DAB    call        TScrollingWinControl.Destroy
 004E9DB0    xor         eax,eax
 004E9DB2    pop         edx
 004E9DB3    pop         ecx
 004E9DB4    pop         ecx
 004E9DB5    mov         dword ptr fs:[eax],edx
 004E9DB8    push        4E9DD1
 004E9DBD    mov         eax,[0055B6C4];^gvar_0055DAC8:IReadWriteSync
 004E9DC2    mov         eax,dword ptr [eax]
 004E9DC4    mov         edx,dword ptr [eax]
 004E9DC6    call        dword ptr [edx+18]
 004E9DC9    ret
>004E9DCA    jmp         @HandleFinally
>004E9DCF    jmp         004E9DBD
 004E9DD1    cmp         byte ptr [ebp-5],0
>004E9DD5    jle         004E9DDF
 004E9DD7    mov         eax,dword ptr [ebp-4]
 004E9DDA    call        @ClassDestroy
 004E9DDF    pop         ecx
 004E9DE0    pop         ecx
 004E9DE1    pop         ebp
 004E9DE2    ret
*}
end;

//004E9DE4
procedure TCustomForm.DoCreate;
begin
{*
 004E9DE4    push        ebp
 004E9DE5    mov         ebp,esp
 004E9DE7    push        ecx
 004E9DE8    push        ebx
 004E9DE9    push        esi
 004E9DEA    push        edi
 004E9DEB    mov         dword ptr [ebp-4],eax
 004E9DEE    mov         eax,dword ptr [ebp-4]
 004E9DF1    cmp         word ptr [eax+2D2],0
>004E9DF9    je          004E9E44
 004E9DFB    xor         eax,eax
 004E9DFD    push        ebp
 004E9DFE    push        4E9E25
 004E9E03    push        dword ptr fs:[eax]
 004E9E06    mov         dword ptr fs:[eax],esp
 004E9E09    mov         ebx,dword ptr [ebp-4]
 004E9E0C    mov         edx,dword ptr [ebp-4]
 004E9E0F    mov         eax,dword ptr [ebx+2D4]
 004E9E15    call        dword ptr [ebx+2D0]
 004E9E1B    xor         eax,eax
 004E9E1D    pop         edx
 004E9E1E    pop         ecx
 004E9E1F    pop         ecx
 004E9E20    mov         dword ptr fs:[eax],edx
>004E9E23    jmp         004E9E44
>004E9E25    jmp         @HandleAnyException
 004E9E2A    mov         eax,dword ptr [ebp-4]
 004E9E2D    mov         si,0FFAD
 004E9E31    call        @CallDynaInst
 004E9E36    test        al,al
>004E9E38    jne         004E9E3F
 004E9E3A    call        @RaiseAgain
 004E9E3F    call        @DoneExcept
 004E9E44    mov         eax,dword ptr [ebp-4]
 004E9E47    test        byte ptr [eax+2F4],2
>004E9E4E    je          004E9E5A
 004E9E50    mov         dl,1
 004E9E52    mov         eax,dword ptr [ebp-4]
 004E9E55    call        TCustomForm.SetVisible
 004E9E5A    pop         edi
 004E9E5B    pop         esi
 004E9E5C    pop         ebx
 004E9E5D    pop         ecx
 004E9E5E    pop         ebp
 004E9E5F    ret
*}
end;

//004E9E60
procedure TCustomForm.DoDestroy;
begin
{*
 004E9E60    push        ebp
 004E9E61    mov         ebp,esp
 004E9E63    push        ecx
 004E9E64    push        ebx
 004E9E65    push        esi
 004E9E66    push        edi
 004E9E67    mov         dword ptr [ebp-4],eax
 004E9E6A    mov         eax,dword ptr [ebp-4]
 004E9E6D    cmp         word ptr [eax+2DA],0
>004E9E75    je          004E9EB8
 004E9E77    xor         eax,eax
 004E9E79    push        ebp
 004E9E7A    push        4E9EA1
 004E9E7F    push        dword ptr fs:[eax]
 004E9E82    mov         dword ptr fs:[eax],esp
 004E9E85    mov         ebx,dword ptr [ebp-4]
 004E9E88    mov         edx,dword ptr [ebp-4]
 004E9E8B    mov         eax,dword ptr [ebx+2DC]
 004E9E91    call        dword ptr [ebx+2D8]
 004E9E97    xor         eax,eax
 004E9E99    pop         edx
 004E9E9A    pop         ecx
 004E9E9B    pop         ecx
 004E9E9C    mov         dword ptr fs:[eax],edx
>004E9E9F    jmp         004E9EB8
>004E9EA1    jmp         @HandleAnyException
 004E9EA6    mov         edx,dword ptr [ebp-4]
 004E9EA9    mov         eax,[0055DE4C];Application:TApplication
 004E9EAE    call        TApplication.HandleException
 004E9EB3    call        @DoneExcept
 004E9EB8    pop         edi
 004E9EB9    pop         esi
 004E9EBA    pop         ebx
 004E9EBB    pop         ecx
 004E9EBC    pop         ebp
 004E9EBD    ret
*}
end;

//004E9EC0
procedure TCustomForm.Loaded;
begin
{*
 004E9EC0    push        ebp
 004E9EC1    mov         ebp,esp
 004E9EC3    add         esp,0FFFFFFF8
 004E9EC6    push        esi
 004E9EC7    mov         dword ptr [ebp-4],eax
 004E9ECA    mov         eax,dword ptr [ebp-4]
 004E9ECD    call        TControl.Loaded
 004E9ED2    mov         eax,dword ptr [ebp-4]
 004E9ED5    cmp         dword ptr [eax+220],0;TCustomForm.FActiveControl:TWinControl
>004E9EDC    je          004E9F10
 004E9EDE    mov         eax,dword ptr [ebp-4]
 004E9EE1    mov         eax,dword ptr [eax+220];TCustomForm.FActiveControl:TWinControl
 004E9EE7    mov         dword ptr [ebp-8],eax
 004E9EEA    mov         eax,dword ptr [ebp-4]
 004E9EED    xor         edx,edx
 004E9EEF    mov         dword ptr [eax+220],edx;TCustomForm.FActiveControl:TWinControl
 004E9EF5    mov         eax,dword ptr [ebp-8]
 004E9EF8    mov         si,0FFB8
 004E9EFC    call        @CallDynaInst;TWinControl.sub_004D37A8
 004E9F01    test        al,al
>004E9F03    je          004E9F10
 004E9F05    mov         edx,dword ptr [ebp-8]
 004E9F08    mov         eax,dword ptr [ebp-4]
 004E9F0B    call        TForm.SetActiveControl
 004E9F10    pop         esi
 004E9F11    pop         ecx
 004E9F12    pop         ecx
 004E9F13    pop         ebp
 004E9F14    ret
*}
end;

//004E9F18
procedure TCustomForm.Notification(AComponent:TComponent; Operation:TOperation);
begin
{*
 004E9F18    push        ebp
 004E9F19    mov         ebp,esp
 004E9F1B    add         esp,0FFFFFFF4
 004E9F1E    push        ebx
 004E9F1F    mov         byte ptr [ebp-9],cl
 004E9F22    mov         dword ptr [ebp-8],edx
 004E9F25    mov         dword ptr [ebp-4],eax
 004E9F28    mov         cl,byte ptr [ebp-9]
 004E9F2B    mov         edx,dword ptr [ebp-8]
 004E9F2E    mov         eax,dword ptr [ebp-4]
 004E9F31    call        TControl.Notification
 004E9F36    mov         al,byte ptr [ebp-9]
 004E9F39    sub         al,1
>004E9F3B    jb          004E9F48
>004E9F3D    je          004E9FE0
>004E9F43    jmp         004EA059
 004E9F48    mov         eax,dword ptr [ebp-8]
 004E9F4B    mov         edx,dword ptr ds:[4DA048];TCustomActionList
 004E9F51    call        @IsClass
 004E9F56    test        al,al
>004E9F58    je          004E9F91
 004E9F5A    mov         eax,dword ptr [ebp-4]
 004E9F5D    cmp         dword ptr [eax+2F0],0;TCustomForm.FActionLists:TList
>004E9F64    jne         004E9F7B
 004E9F66    mov         dl,1
 004E9F68    mov         eax,[004759C0];TList
 004E9F6D    call        TObject.Create;TList.Create
 004E9F72    mov         edx,dword ptr [ebp-4]
 004E9F75    mov         dword ptr [edx+2F0],eax;TCustomForm.FActionLists:TList
 004E9F7B    mov         edx,dword ptr [ebp-8]
 004E9F7E    mov         eax,dword ptr [ebp-4]
 004E9F81    mov         eax,dword ptr [eax+2F0];TCustomForm.FActionLists:TList
 004E9F87    call        TList.Add
>004E9F8C    jmp         004EA059
 004E9F91    mov         eax,dword ptr [ebp-4]
 004E9F94    test        byte ptr [eax+1C],1;TCustomForm.FComponentState:TComponentState
>004E9F98    jne         004EA059
 004E9F9E    mov         eax,dword ptr [ebp-4]
 004E9FA1    cmp         dword ptr [eax+248],0;TCustomForm.FMenu:TMainMenu
>004E9FA8    jne         004EA059
 004E9FAE    mov         eax,dword ptr [ebp-8]
 004E9FB1    mov         eax,dword ptr [eax+4];TComponent.FOwner:TComponent
 004E9FB4    cmp         eax,dword ptr [ebp-4]
>004E9FB7    jne         004EA059
 004E9FBD    mov         eax,dword ptr [ebp-8]
 004E9FC0    mov         edx,dword ptr ds:[4DE988];TMainMenu
 004E9FC6    call        @IsClass
 004E9FCB    test        al,al
>004E9FCD    je          004EA059
 004E9FD3    mov         edx,dword ptr [ebp-8]
 004E9FD6    mov         eax,dword ptr [ebp-4]
 004E9FD9    call        TForm.SetMenu
>004E9FDE    jmp         004EA059
 004E9FE0    mov         eax,dword ptr [ebp-4]
 004E9FE3    cmp         dword ptr [eax+2F0],0;TCustomForm.FActionLists:TList
>004E9FEA    je          004EA011
 004E9FEC    mov         eax,dword ptr [ebp-8]
 004E9FEF    mov         edx,dword ptr ds:[4DA048];TCustomActionList
 004E9FF5    call        @IsClass
 004E9FFA    test        al,al
>004E9FFC    je          004EA011
 004E9FFE    mov         edx,dword ptr [ebp-8]
 004EA001    mov         eax,dword ptr [ebp-4]
 004EA004    mov         eax,dword ptr [eax+2F0];TCustomForm.FActionLists:TList
 004EA00A    call        00478AC4
>004EA00F    jmp         004EA059
 004EA011    mov         eax,dword ptr [ebp-4]
 004EA014    mov         eax,dword ptr [eax+248];TCustomForm.FMenu:TMainMenu
 004EA01A    cmp         eax,dword ptr [ebp-8]
>004EA01D    jne         004EA029
 004EA01F    xor         edx,edx
 004EA021    mov         eax,dword ptr [ebp-4]
 004EA024    call        TForm.SetMenu
 004EA029    mov         eax,dword ptr [ebp-4]
 004EA02C    mov         eax,dword ptr [eax+258];TCustomForm.FWindowMenu:TMenuItem
 004EA032    cmp         eax,dword ptr [ebp-8]
>004EA035    jne         004EA041
 004EA037    xor         edx,edx
 004EA039    mov         eax,dword ptr [ebp-4]
 004EA03C    call        TForm.SetWindowMenu
 004EA041    mov         eax,dword ptr [ebp-4]
 004EA044    mov         eax,dword ptr [eax+260];TCustomForm.FObjectMenuItem:TMenuItem
 004EA04A    cmp         eax,dword ptr [ebp-8]
>004EA04D    jne         004EA059
 004EA04F    xor         edx,edx
 004EA051    mov         eax,dword ptr [ebp-4]
 004EA054    call        TForm.SetObjectMenuItem
 004EA059    mov         eax,dword ptr [ebp-4]
 004EA05C    cmp         dword ptr [eax+250],0;TCustomForm.FDesigner:IDesignerHook
>004EA063    je          004EA079
 004EA065    mov         cl,byte ptr [ebp-9]
 004EA068    mov         edx,dword ptr [ebp-8]
 004EA06B    mov         eax,dword ptr [ebp-4]
 004EA06E    mov         eax,dword ptr [eax+250];TCustomForm.FDesigner:IDesignerHook
 004EA074    mov         ebx,dword ptr [eax]
 004EA076    call        dword ptr [ebx+10]
 004EA079    pop         ebx
 004EA07A    mov         esp,ebp
 004EA07C    pop         ebp
 004EA07D    ret
*}
end;

//004EA080
{*procedure sub_004EA080(?:?);
begin
 004EA080    push        ebp
 004EA081    mov         ebp,esp
 004EA083    add         esp,0FFFFFFF0
 004EA086    mov         dword ptr [ebp-8],edx
 004EA089    mov         dword ptr [ebp-4],eax
 004EA08C    mov         eax,dword ptr [ebp-4]
 004EA08F    call        TWinControl.DisableAlign
 004EA094    xor         eax,eax
 004EA096    push        ebp
 004EA097    push        4EA303
 004EA09C    push        dword ptr fs:[eax]
 004EA09F    mov         dword ptr fs:[eax],esp
 004EA0A2    mov         eax,dword ptr [ebp-4]
 004EA0A5    xor         edx,edx
 004EA0A7    mov         dword ptr [eax+268],edx;TCustomForm.FClientWidth:Integer
 004EA0AD    mov         eax,dword ptr [ebp-4]
 004EA0B0    xor         edx,edx
 004EA0B2    mov         dword ptr [eax+26C],edx;TCustomForm.FClientHeight:Integer
 004EA0B8    mov         eax,dword ptr [ebp-4]
 004EA0BB    xor         edx,edx
 004EA0BD    mov         dword ptr [eax+270],edx;TCustomForm.FTextHeight:Integer
 004EA0C3    mov         byte ptr [ebp-0D],0
 004EA0C7    mov         al,[0055C661];gvar_0055C661
 004EA0CC    xor         al,1
 004EA0CE    mov         edx,dword ptr [ebp-4]
 004EA0D1    mov         byte ptr [edx+234],al;TCustomForm.FOldCreateOrder:Boolean
 004EA0D7    mov         edx,dword ptr [ebp-8]
 004EA0DA    mov         eax,dword ptr [ebp-4]
 004EA0DD    call        004CE718
 004EA0E2    mov         eax,dword ptr [ebp-4]
 004EA0E5    cmp         dword ptr [eax+25C],0;TCustomForm.FPixelsPerInch:Integer
>004EA0EC    je          004EA269
 004EA0F2    mov         eax,dword ptr [ebp-4]
 004EA0F5    cmp         dword ptr [eax+270],0;TCustomForm.FTextHeight:Integer
>004EA0FC    jle         004EA269
 004EA102    mov         eax,dword ptr [ebp-4]
 004EA105    test        byte ptr [eax+98],10;TCustomForm.FScalingFlags:TScalingFlags
>004EA10C    je          004EA153
 004EA10E    mov         eax,dword ptr [ebp-4]
 004EA111    mov         eax,dword ptr [eax+25C];TCustomForm.FPixelsPerInch:Integer
 004EA117    mov         edx,dword ptr ds:[55DE50];Screen:TScreen
 004EA11D    cmp         eax,dword ptr [edx+40]
>004EA120    je          004EA153
 004EA122    mov         eax,dword ptr [ebp-4]
 004EA125    mov         eax,dword ptr [eax+25C];TCustomForm.FPixelsPerInch:Integer
 004EA12B    push        eax
 004EA12C    mov         eax,[0055DE50];Screen:TScreen
 004EA131    mov         eax,dword ptr [eax+40]
 004EA134    push        eax
 004EA135    mov         eax,dword ptr [ebp-4]
 004EA138    mov         eax,dword ptr [eax+68];TCustomForm.FFont:TFont
 004EA13B    call        TFont.GetHeight
 004EA140    push        eax
 004EA141    call        kernel32.MulDiv
 004EA146    mov         edx,eax
 004EA148    mov         eax,dword ptr [ebp-4]
 004EA14B    mov         eax,dword ptr [eax+68];TCustomForm.FFont:TFont
 004EA14E    call        TFont.SetHeight
 004EA153    mov         eax,[0055DE50];Screen:TScreen
 004EA158    mov         eax,dword ptr [eax+40]
 004EA15B    mov         edx,dword ptr [ebp-4]
 004EA15E    mov         dword ptr [edx+25C],eax;TCustomForm.FPixelsPerInch:Integer
 004EA164    mov         eax,dword ptr [ebp-4]
 004EA167    call        004EA474
 004EA16C    mov         dword ptr [ebp-0C],eax
 004EA16F    mov         eax,dword ptr [ebp-4]
 004EA172    mov         eax,dword ptr [eax+270];TCustomForm.FTextHeight:Integer
 004EA178    cmp         eax,dword ptr [ebp-0C]
>004EA17B    je          004EA269
 004EA181    mov         byte ptr [ebp-0D],1
 004EA185    mov         eax,dword ptr [ebp-4]
 004EA188    mov         ecx,dword ptr [eax+270];TCustomForm.FTextHeight:Integer
 004EA18E    mov         edx,dword ptr [ebp-0C]
 004EA191    mov         eax,dword ptr [ebp-4]
 004EA194    call        004E9518
 004EA199    mov         eax,dword ptr [ebp-4]
 004EA19C    mov         ecx,dword ptr [eax+270];TCustomForm.FTextHeight:Integer
 004EA1A2    mov         edx,dword ptr [ebp-0C]
 004EA1A5    mov         eax,dword ptr [ebp-4]
 004EA1A8    call        004D3190
 004EA1AD    mov         eax,dword ptr [ebp-4]
 004EA1B0    test        byte ptr [eax+98],4;TCustomForm.FScalingFlags:TScalingFlags
>004EA1B7    je          004EA1DF
 004EA1B9    mov         eax,dword ptr [ebp-4]
 004EA1BC    mov         eax,dword ptr [eax+270];TCustomForm.FTextHeight:Integer
 004EA1C2    push        eax
 004EA1C3    mov         eax,dword ptr [ebp-0C]
 004EA1C6    push        eax
 004EA1C7    mov         eax,dword ptr [ebp-4]
 004EA1CA    mov         eax,dword ptr [eax+268];TCustomForm.FClientWidth:Integer
 004EA1D0    push        eax
 004EA1D1    call        kernel32.MulDiv
 004EA1D6    mov         edx,dword ptr [ebp-4]
 004EA1D9    mov         dword ptr [edx+268],eax;TCustomForm.FClientWidth:Integer
 004EA1DF    mov         eax,dword ptr [ebp-4]
 004EA1E2    test        byte ptr [eax+98],8;TCustomForm.FScalingFlags:TScalingFlags
>004EA1E9    je          004EA211
 004EA1EB    mov         eax,dword ptr [ebp-4]
 004EA1EE    mov         eax,dword ptr [eax+270];TCustomForm.FTextHeight:Integer
 004EA1F4    push        eax
 004EA1F5    mov         eax,dword ptr [ebp-0C]
 004EA1F8    push        eax
 004EA1F9    mov         eax,dword ptr [ebp-4]
 004EA1FC    mov         eax,dword ptr [eax+26C];TCustomForm.FClientHeight:Integer
 004EA202    push        eax
 004EA203    call        kernel32.MulDiv
 004EA208    mov         edx,dword ptr [ebp-4]
 004EA20B    mov         dword ptr [edx+26C],eax;TCustomForm.FClientHeight:Integer
 004EA211    mov         eax,dword ptr [ebp-4]
 004EA214    test        byte ptr [eax+98],20;TCustomForm.FScalingFlags:TScalingFlags
>004EA21B    je          004EA269
 004EA21D    mov         eax,dword ptr [ebp-4]
 004EA220    mov         eax,dword ptr [eax+270];TCustomForm.FTextHeight:Integer
 004EA226    push        eax
 004EA227    mov         eax,dword ptr [ebp-0C]
 004EA22A    push        eax
 004EA22B    mov         eax,dword ptr [ebp-4]
 004EA22E    mov         eax,dword ptr [eax+1FA];TCustomForm.FDesignSize:TPoint
 004EA234    push        eax
 004EA235    call        kernel32.MulDiv
 004EA23A    mov         edx,dword ptr [ebp-4]
 004EA23D    mov         dword ptr [edx+1FA],eax;TCustomForm.FDesignSize:TPoint
 004EA243    mov         eax,dword ptr [ebp-4]
 004EA246    mov         eax,dword ptr [eax+270];TCustomForm.FTextHeight:Integer
 004EA24C    push        eax
 004EA24D    mov         eax,dword ptr [ebp-0C]
 004EA250    push        eax
 004EA251    mov         eax,dword ptr [ebp-4]
 004EA254    mov         eax,dword ptr [eax+1FE]
 004EA25A    push        eax
 004EA25B    call        kernel32.MulDiv
 004EA260    mov         edx,dword ptr [ebp-4]
 004EA263    mov         dword ptr [edx+1FE],eax
 004EA269    mov         eax,dword ptr [ebp-4]
 004EA26C    cmp         dword ptr [eax+268],0;TCustomForm.FClientWidth:Integer
>004EA273    jle         004EA286
 004EA275    mov         eax,dword ptr [ebp-4]
 004EA278    mov         edx,dword ptr [eax+268];TCustomForm.FClientWidth:Integer
 004EA27E    mov         eax,dword ptr [ebp-4]
 004EA281    call        004CA798
 004EA286    mov         eax,dword ptr [ebp-4]
 004EA289    cmp         dword ptr [eax+26C],0;TCustomForm.FClientHeight:Integer
>004EA290    jle         004EA2A3
 004EA292    mov         eax,dword ptr [ebp-4]
 004EA295    mov         edx,dword ptr [eax+26C];TCustomForm.FClientHeight:Integer
 004EA29B    mov         eax,dword ptr [ebp-4]
 004EA29E    call        004CA7EC
 004EA2A3    mov         eax,dword ptr [ebp-4]
 004EA2A6    mov         dl,byte ptr ds:[4EA310];0x0 gvar_004EA310
 004EA2AC    mov         byte ptr [eax+98],dl;TCustomForm.FScalingFlags:TScalingFlags
 004EA2B2    cmp         byte ptr [ebp-0D],0
>004EA2B6    jne         004EA2DC
 004EA2B8    mov         ecx,1
 004EA2BD    mov         edx,1
 004EA2C2    mov         eax,dword ptr [ebp-4]
 004EA2C5    call        004E9518
 004EA2CA    mov         ecx,1
 004EA2CF    mov         edx,1
 004EA2D4    mov         eax,dword ptr [ebp-4]
 004EA2D7    call        004D3190
 004EA2DC    push        0
 004EA2DE    xor         ecx,ecx
 004EA2E0    mov         edx,0B03D
 004EA2E5    mov         eax,dword ptr [ebp-4]
 004EA2E8    call        004CC7DC
 004EA2ED    xor         eax,eax
 004EA2EF    pop         edx
 004EA2F0    pop         ecx
 004EA2F1    pop         ecx
 004EA2F2    mov         dword ptr fs:[eax],edx
 004EA2F5    push        4EA30A
 004EA2FA    mov         eax,dword ptr [ebp-4]
 004EA2FD    call        TWinControl.EnableAlign
 004EA302    ret
>004EA303    jmp         @HandleFinally
>004EA308    jmp         004EA2FA
 004EA30A    mov         esp,ebp
 004EA30C    pop         ebp
 004EA30D    ret
end;*}

//004EA314
procedure TCustomForm.DefineProperties(Filer:TFiler);
begin
{*
 004EA314    push        ebp
 004EA315    mov         ebp,esp
 004EA317    add         esp,0FFFFFFF8
 004EA31A    push        ebx
 004EA31B    mov         dword ptr [ebp-8],edx
 004EA31E    mov         dword ptr [ebp-4],eax
 004EA321    mov         edx,dword ptr [ebp-8]
 004EA324    mov         eax,dword ptr [ebp-4]
 004EA327    call        TWinControl.DefineProperties
 004EA32C    push        0
 004EA32E    push        0
 004EA330    mov         eax,dword ptr [ebp-4]
 004EA333    push        eax
 004EA334    push        4EA450
 004EA339    mov         eax,dword ptr [ebp-4]
 004EA33C    mov         cl,byte ptr [eax+5E];TCustomForm.FIsControl:Boolean
 004EA33F    xor         cl,1
 004EA342    mov         edx,4EA3A0;'PixelsPerInch'
 004EA347    mov         eax,dword ptr [ebp-8]
 004EA34A    mov         ebx,dword ptr [eax]
 004EA34C    call        dword ptr [ebx+4];@AbstractError
 004EA34F    mov         eax,dword ptr [ebp-4]
 004EA352    push        eax
 004EA353    push        4EA408
 004EA358    mov         eax,dword ptr [ebp-4]
 004EA35B    push        eax
 004EA35C    push        4EA42C
 004EA361    mov         eax,dword ptr [ebp-4]
 004EA364    mov         cl,byte ptr [eax+5E];TCustomForm.FIsControl:Boolean
 004EA367    xor         cl,1
 004EA36A    mov         edx,4EA3B8;'TextHeight'
 004EA36F    mov         eax,dword ptr [ebp-8]
 004EA372    mov         ebx,dword ptr [eax]
 004EA374    call        dword ptr [ebx+4];@AbstractError
 004EA377    mov         eax,dword ptr [ebp-4]
 004EA37A    push        eax
 004EA37B    push        4EA3E0
 004EA380    push        0
 004EA382    push        0
 004EA384    xor         ecx,ecx
 004EA386    mov         edx,4EA3CC;'IgnoreFontProperty'
 004EA38B    mov         eax,dword ptr [ebp-8]
 004EA38E    mov         ebx,dword ptr [eax]
 004EA390    call        dword ptr [ebx+4];@AbstractError
 004EA393    pop         ebx
 004EA394    pop         ecx
 004EA395    pop         ecx
 004EA396    pop         ebp
 004EA397    ret
*}
end;

//004EA474
{*function sub_004EA474(?:TCustomForm):?;
begin
 004EA474    push        ebp
 004EA475    mov         ebp,esp
 004EA477    add         esp,0FFFFFFF8
 004EA47A    mov         dword ptr [ebp-4],eax
 004EA47D    mov         eax,dword ptr [ebp-4]
 004EA480    call        004EB87C
 004EA485    mov         edx,4EA4A4;'0'
 004EA48A    call        TCanvas.TextHeight
 004EA48F    mov         dword ptr [ebp-8],eax
 004EA492    mov         eax,dword ptr [ebp-8]
 004EA495    pop         ecx
 004EA496    pop         ecx
 004EA497    pop         ebp
 004EA498    ret
end;*}

//004EA4A8
procedure TCustomForm.sub_004CB99C;
begin
{*
 004EA4A8    push        ebp
 004EA4A9    mov         ebp,esp
 004EA4AB    push        ecx
 004EA4AC    mov         dword ptr [ebp-4],eax
 004EA4AF    pop         ecx
 004EA4B0    pop         ebp
 004EA4B1    ret
*}
end;

//004EA4B4
{*procedure TCustomForm.sub_004CAA18(?:?; ?:?);
begin
 004EA4B4    push        ebp
 004EA4B5    mov         ebp,esp
 004EA4B7    add         esp,0FFFFFFF0
 004EA4BA    mov         dword ptr [ebp-0C],ecx
 004EA4BD    mov         dword ptr [ebp-8],edx
 004EA4C0    mov         dword ptr [ebp-4],eax
 004EA4C3    mov         ecx,dword ptr [ebp-0C]
 004EA4C6    mov         edx,dword ptr [ebp-8]
 004EA4C9    mov         eax,dword ptr [ebp-4]
 004EA4CC    call        004E9518
 004EA4D1    mov         ecx,dword ptr [ebp-0C]
 004EA4D4    mov         edx,dword ptr [ebp-8]
 004EA4D7    mov         eax,dword ptr [ebp-4]
 004EA4DA    call        004D3190
 004EA4DF    mov         eax,dword ptr [ebp-4]
 004EA4E2    call        TForm.IsStoredClientHeight
 004EA4E7    test        al,al
>004EA4E9    je          004EA531
 004EA4EB    mov         eax,dword ptr [ebp-4]
 004EA4EE    call        TControl.GetClientHeight
 004EA4F3    mov         dword ptr [ebp-10],eax
 004EA4F6    mov         eax,dword ptr [ebp-0C]
 004EA4F9    push        eax
 004EA4FA    mov         eax,dword ptr [ebp-8]
 004EA4FD    push        eax
 004EA4FE    mov         eax,dword ptr [ebp-4]
 004EA501    call        TControl.GetClientWidth
 004EA506    push        eax
 004EA507    call        kernel32.MulDiv
 004EA50C    mov         edx,eax
 004EA50E    mov         eax,dword ptr [ebp-4]
 004EA511    call        TForm.SetClientWidth
 004EA516    mov         eax,dword ptr [ebp-0C]
 004EA519    push        eax
 004EA51A    mov         eax,dword ptr [ebp-8]
 004EA51D    push        eax
 004EA51E    mov         eax,dword ptr [ebp-10]
 004EA521    push        eax
 004EA522    call        kernel32.MulDiv
 004EA527    mov         edx,eax
 004EA529    mov         eax,dword ptr [ebp-4]
 004EA52C    call        TForm.SetClientHeight
 004EA531    mov         eax,dword ptr [ebp-0C]
 004EA534    push        eax
 004EA535    mov         eax,dword ptr [ebp-8]
 004EA538    push        eax
 004EA539    mov         eax,dword ptr [ebp-4]
 004EA53C    mov         eax,dword ptr [eax+68];TCustomForm.FFont:TFont
 004EA53F    call        TFont.GetSize
 004EA544    push        eax
 004EA545    call        kernel32.MulDiv
 004EA54A    mov         edx,eax
 004EA54C    mov         eax,dword ptr [ebp-4]
 004EA54F    mov         eax,dword ptr [eax+68];TCustomForm.FFont:TFont
 004EA552    call        TFont.SetSize
 004EA557    mov         esp,ebp
 004EA559    pop         ebp
 004EA55A    ret
end;*}

//004EA55C
{*procedure sub_004EA55C(?:TCustomForm; ?:?);
begin
 004EA55C    push        ebp
 004EA55D    mov         ebp,esp
 004EA55F    add         esp,0FFFFFFF8
 004EA562    mov         dword ptr [ebp-8],edx
 004EA565    mov         dword ptr [ebp-4],eax
 004EA568    mov         eax,[0055B36C];^NewStyleControls:Boolean
 004EA56D    cmp         byte ptr [eax],0
>004EA570    je          004EA5AA
 004EA572    mov         eax,dword ptr [ebp-4]
 004EA575    call        TWinControl.HandleAllocated
 004EA57A    test        al,al
>004EA57C    je          004EA5C4
 004EA57E    mov         eax,dword ptr [ebp-4]
 004EA581    cmp         byte ptr [eax+229],3
>004EA588    je          004EA5C4
 004EA58A    mov         eax,dword ptr [ebp-4]
 004EA58D    call        004ED21C
 004EA592    push        eax
 004EA593    push        1
 004EA595    push        80
 004EA59A    mov         eax,dword ptr [ebp-4]
 004EA59D    call        TWinControl.GetHandle
 004EA5A2    push        eax
 004EA5A3    call        user32.SendMessageA
>004EA5A8    jmp         004EA5C4
 004EA5AA    mov         eax,dword ptr [ebp-4]
 004EA5AD    call        TWinControl.GetHandle
 004EA5B2    push        eax
 004EA5B3    call        user32.IsIconic
 004EA5B8    test        eax,eax
>004EA5BA    je          004EA5C4
 004EA5BC    mov         eax,dword ptr [ebp-4]
 004EA5BF    mov         edx,dword ptr [eax]
 004EA5C1    call        dword ptr [edx+7C]
 004EA5C4    pop         ecx
 004EA5C5    pop         ecx
 004EA5C6    pop         ebp
 004EA5C7    ret
end;*}

//004EA5C8
function TForm.IsStoredClientHeight(Value:Integer):Boolean;
begin
{*
 004EA5C8    push        ebp
 004EA5C9    mov         ebp,esp
 004EA5CB    add         esp,0FFFFFFF8
 004EA5CE    mov         dword ptr [ebp-4],eax
 004EA5D1    mov         eax,dword ptr [ebp-4]
 004EA5D4    call        TForm.IsStoredHeight
 004EA5D9    xor         al,1
 004EA5DB    mov         byte ptr [ebp-5],al
 004EA5DE    mov         al,byte ptr [ebp-5]
 004EA5E1    pop         ecx
 004EA5E2    pop         ecx
 004EA5E3    pop         ebp
 004EA5E4    ret
*}
end;

//004EA5E8
function TForm.IsStoredHeight(Value:Integer):Boolean;
begin
{*
 004EA5E8    push        ebp
 004EA5E9    mov         ebp,esp
 004EA5EB    add         esp,0FFFFFFF8
 004EA5EE    mov         dword ptr [ebp-4],eax
 004EA5F1    mov         eax,dword ptr [ebp-4]
 004EA5F4    cmp         byte ptr [eax+210],0;TForm.FAutoScroll:Boolean
>004EA5FB    jne         004EA61F
 004EA5FD    mov         eax,dword ptr [ebp-4]
 004EA600    mov         eax,dword ptr [eax+208];TForm.HorzScrollBar:TControlScrollBar
 004EA606    cmp         dword ptr [eax+10],0;TControlScrollBar.Range:Integer
>004EA60A    jne         004EA61F
 004EA60C    mov         eax,dword ptr [ebp-4]
 004EA60F    mov         eax,dword ptr [eax+20C];TForm.VertScrollBar:TControlScrollBar
 004EA615    cmp         dword ptr [eax+10],0;TControlScrollBar.Range:Integer
>004EA619    jne         004EA61F
 004EA61B    xor         eax,eax
>004EA61D    jmp         004EA621
 004EA61F    mov         al,1
 004EA621    mov         byte ptr [ebp-5],al
 004EA624    mov         al,byte ptr [ebp-5]
 004EA627    pop         ecx
 004EA628    pop         ecx
 004EA629    pop         ebp
 004EA62A    ret
*}
end;

//004EA62C
function TForm.IsStoredAutoScroll(Value:Boolean):Boolean;
begin
{*
 004EA62C    push        ebp
 004EA62D    mov         ebp,esp
 004EA62F    add         esp,0FFFFFFF8
 004EA632    mov         dword ptr [ebp-4],eax
 004EA635    mov         eax,dword ptr [ebp-4]
 004EA638    call        TForm.IsStoredActiveControl
 004EA63D    test        al,al
>004EA63F    je          004EA663
 004EA641    mov         eax,dword ptr [ebp-4]
 004EA644    mov         al,byte ptr [eax+229];TForm.FBorderStyle:TFormBorderStyle
 004EA64A    sub         al,2
>004EA64C    je          004EA656
 004EA64E    sub         al,3
>004EA650    je          004EA656
 004EA652    xor         eax,eax
>004EA654    jmp         004EA658
 004EA656    mov         al,1
 004EA658    mov         edx,dword ptr [ebp-4]
 004EA65B    cmp         al,byte ptr [edx+210];TForm.FAutoScroll:Boolean
>004EA661    jne         004EA667
 004EA663    xor         eax,eax
>004EA665    jmp         004EA669
 004EA667    mov         al,1
 004EA669    mov         byte ptr [ebp-5],al
 004EA66C    mov         al,byte ptr [ebp-5]
 004EA66F    pop         ecx
 004EA670    pop         ecx
 004EA671    pop         ebp
 004EA672    ret
*}
end;

//004EA674
{*procedure TCustomForm.sub_004EA674(?:?);
begin
 004EA674    push        ebp
 004EA675    mov         ebp,esp
 004EA677    add         esp,0FFFFFFF8
 004EA67A    push        ebx
 004EA67B    mov         dword ptr [ebp-8],edx
 004EA67E    mov         dword ptr [ebp-4],eax
 004EA681    mov         eax,dword ptr [ebp-4]
 004EA684    cmp         word ptr [eax+292],0;TCustomForm.?f292:word
>004EA68C    je          004EA6A3
 004EA68E    mov         ecx,dword ptr [ebp-8]
 004EA691    mov         ebx,dword ptr [ebp-4]
 004EA694    mov         edx,dword ptr [ebp-4]
 004EA697    mov         eax,dword ptr [ebx+294];TCustomForm.?f294:dword
 004EA69D    call        dword ptr [ebx+290];TCustomForm.FOnClose
 004EA6A3    pop         ebx
 004EA6A4    pop         ecx
 004EA6A5    pop         ecx
 004EA6A6    pop         ebp
 004EA6A7    ret
end;*}

//004EA6A8
procedure TCustomForm.sub_004EA6A8;
begin
{*
 004EA6A8    push        ebp
 004EA6A9    mov         ebp,esp
 004EA6AB    push        ecx
 004EA6AC    push        ebx
 004EA6AD    mov         dword ptr [ebp-4],eax
 004EA6B0    mov         eax,dword ptr [ebp-4]
 004EA6B3    cmp         word ptr [eax+2B2],0;TCustomForm.?f2B2:word
>004EA6BB    je          004EA6CF
 004EA6BD    mov         ebx,dword ptr [ebp-4]
 004EA6C0    mov         edx,dword ptr [ebp-4]
 004EA6C3    mov         eax,dword ptr [ebx+2B4];TCustomForm.?f2B4:dword
 004EA6C9    call        dword ptr [ebx+2B0];TCustomForm.FOnHide
 004EA6CF    pop         ebx
 004EA6D0    pop         ecx
 004EA6D1    pop         ebp
 004EA6D2    ret
*}
end;

//004EA6D4
procedure TCustomForm.sub_004EA6D4;
begin
{*
 004EA6D4    push        ebp
 004EA6D5    mov         ebp,esp
 004EA6D7    push        ecx
 004EA6D8    push        ebx
 004EA6D9    mov         dword ptr [ebp-4],eax
 004EA6DC    mov         eax,dword ptr [ebp-4]
 004EA6DF    cmp         word ptr [eax+2CA],0;TCustomForm.?f2CA:word
>004EA6E7    je          004EA6FB
 004EA6E9    mov         ebx,dword ptr [ebp-4]
 004EA6EC    mov         edx,dword ptr [ebp-4]
 004EA6EF    mov         eax,dword ptr [ebx+2CC];TCustomForm.?f2CC:dword
 004EA6F5    call        dword ptr [ebx+2C8];TCustomForm.FOnShow
 004EA6FB    pop         ebx
 004EA6FC    pop         ecx
 004EA6FD    pop         ebp
 004EA6FE    ret
*}
end;

//004EA700
{*procedure sub_004EA700(?:?);
begin
 004EA700    push        ebp
 004EA701    mov         ebp,esp
 004EA703    add         esp,0FFFFFFF8
 004EA706    mov         dword ptr [ebp-8],edx
 004EA709    mov         dword ptr [ebp-4],eax
 004EA70C    mov         eax,dword ptr [ebp-4]
 004EA70F    call        TWinControl.GetHandle
 004EA714    push        eax
 004EA715    call        user32.IsIconic
 004EA71A    test        eax,eax
>004EA71C    je          004EA7A4
 004EA722    push        0
 004EA724    push        0
 004EA726    push        0
 004EA728    push        0
 004EA72A    mov         eax,dword ptr [ebp-8]
 004EA72D    push        eax
 004EA72E    call        user32.SetRect
 004EA733    push        0EC
 004EA735    mov         eax,dword ptr [ebp-4]
 004EA738    call        TWinControl.GetHandle
 004EA73D    push        eax
 004EA73E    call        user32.GetWindowLongA
 004EA743    push        eax
 004EA744    mov         eax,dword ptr [ebp-4]
 004EA747    cmp         dword ptr [eax+248],0;TCustomForm.FMenu:TMainMenu
 004EA74E    setne       al
 004EA751    neg         al
 004EA753    sbb         eax,eax
 004EA755    push        eax
 004EA756    push        0F0
 004EA758    mov         eax,dword ptr [ebp-4]
 004EA75B    call        TWinControl.GetHandle
 004EA760    push        eax
 004EA761    call        user32.GetWindowLongA
 004EA766    push        eax
 004EA767    mov         eax,dword ptr [ebp-8]
 004EA76A    push        eax
 004EA76B    call        user32.AdjustWindowRectEx
 004EA770    mov         eax,dword ptr [ebp-8]
 004EA773    mov         edx,dword ptr [ebp-4]
 004EA776    mov         edx,dword ptr [edx+4C];TCustomForm.Height:Integer
 004EA779    sub         edx,dword ptr [eax+0C]
 004EA77C    mov         eax,dword ptr [ebp-8]
 004EA77F    add         edx,dword ptr [eax+4]
 004EA782    push        edx
 004EA783    mov         eax,dword ptr [ebp-8]
 004EA786    mov         edx,dword ptr [ebp-4]
 004EA789    mov         edx,dword ptr [edx+48];TCustomForm.Width:Integer
 004EA78C    sub         edx,dword ptr [eax+8]
 004EA78F    mov         eax,dword ptr [ebp-8]
 004EA792    add         edx,dword ptr [eax]
 004EA794    push        edx
 004EA795    push        0
 004EA797    push        0
 004EA799    mov         eax,dword ptr [ebp-8]
 004EA79C    push        eax
 004EA79D    call        user32.SetRect
>004EA7A2    jmp         004EA7AF
 004EA7A4    mov         edx,dword ptr [ebp-8]
 004EA7A7    mov         eax,dword ptr [ebp-4]
 004EA7AA    call        004D3A1C
 004EA7AF    pop         ecx
 004EA7B0    pop         ecx
 004EA7B1    pop         ebp
 004EA7B2    ret
end;*}

//004EA7B4
{*procedure TCustomForm.sub_004834DC(?:?; ?:?; ?:?);
begin
 004EA7B4    push        ebp
 004EA7B5    mov         ebp,esp
 004EA7B7    add         esp,0FFFFFFEC
 004EA7BA    push        esi
 004EA7BB    mov         dword ptr [ebp-8],edx
 004EA7BE    mov         dword ptr [ebp-4],eax
 004EA7C1    push        dword ptr [ebp+0C]
 004EA7C4    push        dword ptr [ebp+8]
 004EA7C7    mov         edx,dword ptr [ebp-8]
 004EA7CA    mov         eax,dword ptr [ebp-4]
 004EA7CD    call        TWinControl.sub_004834DC
 004EA7D2    mov         eax,dword ptr [ebp-8]
 004EA7D5    cmp         eax,dword ptr [ebp-4]
>004EA7D8    jne         004EA821
 004EA7DA    mov         eax,dword ptr [ebp-4]
 004EA7DD    call        00483864
 004EA7E2    dec         eax
 004EA7E3    test        eax,eax
>004EA7E5    jl          004EA821
 004EA7E7    inc         eax
 004EA7E8    mov         dword ptr [ebp-14],eax
 004EA7EB    mov         dword ptr [ebp-0C],0
 004EA7F2    mov         edx,dword ptr [ebp-0C]
 004EA7F5    mov         eax,dword ptr [ebp-4]
 004EA7F8    call        00483824
 004EA7FD    mov         dword ptr [ebp-10],eax
 004EA800    mov         eax,dword ptr [ebp-10]
 004EA803    mov         si,0FFF1
 004EA807    call        @CallDynaInst
 004EA80C    test        al,al
>004EA80E    jne         004EA819
 004EA810    mov         edx,dword ptr [ebp-10]
 004EA813    mov         eax,dword ptr [ebp+0C]
 004EA816    call        dword ptr [ebp+8]
 004EA819    inc         dword ptr [ebp-0C]
 004EA81C    dec         dword ptr [ebp-14]
>004EA81F    jne         004EA7F2
 004EA821    pop         esi
 004EA822    mov         esp,ebp
 004EA824    pop         ebp
 004EA825    ret         8
end;*}

//004EA828
{*function sub_004EA828:?;
begin
 004EA828    push        ebp
 004EA829    mov         ebp,esp
 004EA82B    add         esp,0FFFFFFF8
 004EA82E    push        ebx
 004EA82F    mov         dword ptr [ebp-4],eax
 004EA832    mov         eax,dword ptr [ebp-4]
 004EA835    cmp         dword ptr [eax+0A0],0;TCustomForm.FHostDockSite:TWinControl
>004EA83C    jne         004EA854
 004EA83E    mov         eax,dword ptr [ebp-4]
 004EA841    mov         edx,dword ptr [eax]
 004EA843    call        dword ptr [edx+58];TCustomForm.sub_004CDF00
 004EA846    mov         ebx,eax
 004EA848    mov         eax,dword ptr [ebp-4]
 004EA84B    call        TObject.ClassType
 004EA850    cmp         ebx,eax
>004EA852    je          004EA858
 004EA854    xor         eax,eax
>004EA856    jmp         004EA85A
 004EA858    mov         al,1
 004EA85A    mov         byte ptr [ebp-5],al
 004EA85D    mov         al,byte ptr [ebp-5]
 004EA860    pop         ebx
 004EA861    pop         ecx
 004EA862    pop         ecx
 004EA863    pop         ebp
 004EA864    ret
end;*}

//004EA868
{*procedure TCustomForm.sub_0048355C(?:?; ?:?);
begin
 004EA868    push        ebp
 004EA869    mov         ebp,esp
 004EA86B    add         esp,0FFFFFFE8
 004EA86E    push        esi
 004EA86F    mov         dword ptr [ebp-0C],ecx
 004EA872    mov         dword ptr [ebp-8],edx
 004EA875    mov         dword ptr [ebp-4],eax
 004EA878    mov         eax,dword ptr [ebp-8]
 004EA87B    mov         edx,dword ptr ds:[4C5774];TControl
 004EA881    call        @IsClass
 004EA886    test        al,al
>004EA888    je          004EA89A
 004EA88A    mov         ecx,dword ptr [ebp-0C]
 004EA88D    mov         edx,dword ptr [ebp-8]
 004EA890    mov         eax,dword ptr [ebp-4]
 004EA893    call        TWinControl.sub_0048355C
>004EA898    jmp         004EA8FC
 004EA89A    mov         eax,dword ptr [ebp-4]
 004EA89D    call        004CF618
 004EA8A2    sub         dword ptr [ebp-0C],eax
 004EA8A5    mov         dword ptr [ebp-14],0FFFFFFFF
 004EA8AC    mov         eax,dword ptr [ebp-4]
 004EA8AF    call        00483864
 004EA8B4    dec         eax
 004EA8B5    test        eax,eax
>004EA8B7    jl          004EA8FC
 004EA8B9    inc         eax
 004EA8BA    mov         dword ptr [ebp-18],eax
 004EA8BD    mov         dword ptr [ebp-10],0
 004EA8C4    mov         edx,dword ptr [ebp-10]
 004EA8C7    mov         eax,dword ptr [ebp-4]
 004EA8CA    call        00483824
 004EA8CF    mov         si,0FFF1
 004EA8D3    call        @CallDynaInst
 004EA8D8    test        al,al
>004EA8DA    jne         004EA8F4
 004EA8DC    inc         dword ptr [ebp-14]
 004EA8DF    mov         eax,dword ptr [ebp-14]
 004EA8E2    cmp         eax,dword ptr [ebp-0C]
>004EA8E5    jne         004EA8F4
 004EA8E7    mov         edx,dword ptr [ebp-10]
 004EA8EA    mov         eax,dword ptr [ebp-8]
 004EA8ED    call        00483890
>004EA8F2    jmp         004EA8FC
 004EA8F4    inc         dword ptr [ebp-10]
 004EA8F7    dec         dword ptr [ebp-18]
>004EA8FA    jne         004EA8C4
 004EA8FC    pop         esi
 004EA8FD    mov         esp,ebp
 004EA8FF    pop         ebp
 004EA900    ret
end;*}

//004EA904
procedure TForm.SetParentBiDiMode(Value:Boolean);
begin
{*
 004EA904    push        ebp
 004EA905    mov         ebp,esp
 004EA907    add         esp,0FFFFFFF8
 004EA90A    mov         byte ptr [ebp-5],dl
 004EA90D    mov         dword ptr [ebp-4],eax
 004EA910    mov         eax,dword ptr [ebp-4]
 004EA913    mov         al,byte ptr [eax+60];TForm.FParentBiDiMode:Boolean
 004EA916    cmp         al,byte ptr [ebp-5]
>004EA919    je          004EA940
 004EA91B    mov         dl,byte ptr [ebp-5]
 004EA91E    mov         eax,dword ptr [ebp-4]
 004EA921    call        TPanel.SetParentBiDiMode
 004EA926    mov         eax,dword ptr [ebp-4]
 004EA929    cmp         dword ptr [eax+30],0;TForm.FParent:TWinControl
>004EA92D    jne         004EA940
 004EA92F    push        0
 004EA931    xor         ecx,ecx
 004EA933    mov         edx,0B03D
 004EA938    mov         eax,dword ptr [ebp-4]
 004EA93B    call        004CC7DC
 004EA940    pop         ecx
 004EA941    pop         ecx
 004EA942    pop         ebp
 004EA943    ret
*}
end;

//004EA944
procedure TForm.SetClientWidth(Value:Integer);
begin
{*
 004EA944    push        ebp
 004EA945    mov         ebp,esp
 004EA947    add         esp,0FFFFFFF8
 004EA94A    mov         dword ptr [ebp-8],edx
 004EA94D    mov         dword ptr [ebp-4],eax
 004EA950    mov         eax,dword ptr [ebp-4]
 004EA953    test        byte ptr [eax+54],8;TForm.FControlState:TControlState
>004EA957    je          004EA97E
 004EA959    mov         eax,dword ptr [ebp-8]
 004EA95C    mov         edx,dword ptr [ebp-4]
 004EA95F    mov         dword ptr [edx+268],eax;TForm.FClientWidth:Integer
 004EA965    mov         al,[004EA990];0x4 gvar_004EA990
 004EA96A    mov         edx,dword ptr [ebp-4]
 004EA96D    or          al,byte ptr [edx+98];TForm.FScalingFlags:TScalingFlags
 004EA973    mov         edx,dword ptr [ebp-4]
 004EA976    mov         byte ptr [edx+98],al;TForm.FScalingFlags:TScalingFlags
>004EA97C    jmp         004EA989
 004EA97E    mov         edx,dword ptr [ebp-8]
 004EA981    mov         eax,dword ptr [ebp-4]
 004EA984    call        004CA798
 004EA989    pop         ecx
 004EA98A    pop         ecx
 004EA98B    pop         ebp
 004EA98C    ret
*}
end;

//004EA994
procedure TForm.SetClientHeight(Value:Integer);
begin
{*
 004EA994    push        ebp
 004EA995    mov         ebp,esp
 004EA997    add         esp,0FFFFFFF8
 004EA99A    mov         dword ptr [ebp-8],edx
 004EA99D    mov         dword ptr [ebp-4],eax
 004EA9A0    mov         eax,dword ptr [ebp-4]
 004EA9A3    test        byte ptr [eax+54],8;TForm.FControlState:TControlState
>004EA9A7    je          004EA9CE
 004EA9A9    mov         eax,dword ptr [ebp-8]
 004EA9AC    mov         edx,dword ptr [ebp-4]
 004EA9AF    mov         dword ptr [edx+26C],eax;TForm.FClientHeight:Integer
 004EA9B5    mov         al,[004EA9E0];0x8 gvar_004EA9E0
 004EA9BA    mov         edx,dword ptr [ebp-4]
 004EA9BD    or          al,byte ptr [edx+98];TForm.FScalingFlags:TScalingFlags
 004EA9C3    mov         edx,dword ptr [ebp-4]
 004EA9C6    mov         byte ptr [edx+98],al;TForm.FScalingFlags:TScalingFlags
>004EA9CC    jmp         004EA9D9
 004EA9CE    mov         edx,dword ptr [ebp-8]
 004EA9D1    mov         eax,dword ptr [ebp-4]
 004EA9D4    call        004CA7EC
 004EA9D9    pop         ecx
 004EA9DA    pop         ecx
 004EA9DB    pop         ebp
 004EA9DC    ret
*}
end;

//004EA9E4
procedure TCustomForm.SetVisible(Value:Boolean);
begin
{*
 004EA9E4    push        ebp
 004EA9E5    mov         ebp,esp
 004EA9E7    add         esp,0FFFFFFF8
 004EA9EA    mov         byte ptr [ebp-5],dl
 004EA9ED    mov         dword ptr [ebp-4],eax
 004EA9F0    mov         eax,dword ptr [ebp-4]
 004EA9F3    test        byte ptr [eax+2F4],1
>004EA9FA    je          004EAA1A
 004EA9FC    cmp         byte ptr [ebp-5],0
>004EAA00    je          004EAA0E
 004EAA02    mov         eax,dword ptr [ebp-4]
 004EAA05    or          byte ptr [eax+2F4],2
>004EAA0C    jmp         004EAA3E
 004EAA0E    mov         eax,dword ptr [ebp-4]
 004EAA11    and         byte ptr [eax+2F4],0FD
>004EAA18    jmp         004EAA3E
 004EAA1A    cmp         byte ptr [ebp-5],0
>004EAA1E    je          004EAA33
 004EAA20    mov         eax,dword ptr [ebp-4]
 004EAA23    mov         al,byte ptr [eax+57]
 004EAA26    cmp         al,byte ptr [ebp-5]
>004EAA29    je          004EAA33
 004EAA2B    mov         eax,dword ptr [ebp-4]
 004EAA2E    call        004EBFD4
 004EAA33    mov         dl,byte ptr [ebp-5]
 004EAA36    mov         eax,dword ptr [ebp-4]
 004EAA39    call        TControl.SetVisible
 004EAA3E    pop         ecx
 004EAA3F    pop         ecx
 004EAA40    pop         ebp
 004EAA41    ret
*}
end;

//004EAA44
procedure TCustomForm.sub_004CC91C;
begin
{*
 004EAA44    push        ebp
 004EAA45    mov         ebp,esp
 004EAA47    add         esp,0FFFFFFF8
 004EAA4A    xor         edx,edx
 004EAA4C    mov         dword ptr [ebp-8],edx
 004EAA4F    mov         dword ptr [ebp-4],eax
 004EAA52    xor         eax,eax
 004EAA54    push        ebp
 004EAA55    push        4EAAAC
 004EAA5A    push        dword ptr fs:[eax]
 004EAA5D    mov         dword ptr fs:[eax],esp
 004EAA60    mov         eax,dword ptr [ebp-4]
 004EAA63    cmp         byte ptr [eax+22F],1;TCustomForm.FFormStyle:TFormStyle
>004EAA6A    jne         004EAA96
 004EAA6C    mov         eax,dword ptr [ebp-4]
 004EAA6F    cmp         byte ptr [eax+57],0;TCustomForm.FVisible:Boolean
>004EAA73    je          004EAA96
 004EAA75    lea         edx,[ebp-8]
 004EAA78    mov         eax,[0055B154];^SMDIChildNotVisible:TResStringRec
 004EAA7D    call        LoadResString
 004EAA82    mov         ecx,dword ptr [ebp-8]
 004EAA85    mov         dl,1
 004EAA87    mov         eax,[00475960];EInvalidOperation
 004EAA8C    call        Exception.Create;EInvalidOperation.Create
 004EAA91    call        @RaiseExcept
 004EAA96    xor         eax,eax
 004EAA98    pop         edx
 004EAA99    pop         ecx
 004EAA9A    pop         ecx
 004EAA9B    mov         dword ptr fs:[eax],edx
 004EAA9E    push        4EAAB3
 004EAAA3    lea         eax,[ebp-8]
 004EAAA6    call        @LStrClr
 004EAAAB    ret
>004EAAAC    jmp         @HandleFinally
>004EAAB1    jmp         004EAAA3
 004EAAB3    pop         ecx
 004EAAB4    pop         ecx
 004EAAB5    pop         ebp
 004EAAB6    ret
*}
end;

//004EAAB8
{*function sub_004EAAB8(?:?; ?:?):?;
begin
 004EAAB8    push        ebp
 004EAAB9    mov         ebp,esp
 004EAABB    add         esp,0FFFFFFF0
 004EAABE    mov         dword ptr [ebp-10],ecx
 004EAAC1    mov         dword ptr [ebp-0C],edx
 004EAAC4    mov         dword ptr [ebp-4],eax
 004EAAC7    mov         byte ptr [ebp-5],0
 004EAACB    mov         al,byte ptr [ebp-5]
 004EAACE    mov         esp,ebp
 004EAAD0    pop         ebp
 004EAAD1    ret
end;*}

//004EAAD4
{*procedure sub_004EAAD4(?:?);
begin
 004EAAD4    push        ebp
 004EAAD5    mov         ebp,esp
 004EAAD7    add         esp,0FFFFFFF8
 004EAADA    mov         dword ptr [ebp-8],edx
 004EAADD    mov         dword ptr [ebp-4],eax
 004EAAE0    mov         eax,dword ptr [ebp-4]
 004EAAE3    mov         eax,dword ptr [eax+30];TCustomForm.FParent:TWinControl
 004EAAE6    cmp         eax,dword ptr [ebp-8]
>004EAAE9    je          004EAB20
 004EAAEB    mov         eax,dword ptr [ebp-8]
 004EAAEE    cmp         eax,dword ptr [ebp-4]
>004EAAF1    je          004EAB20
 004EAAF3    mov         eax,dword ptr [ebp-4]
 004EAAF6    cmp         dword ptr [eax+30],0;TCustomForm.FParent:TWinControl
>004EAAFA    jne         004EAB04
 004EAAFC    mov         eax,dword ptr [ebp-4]
 004EAAFF    call        004D00C4
 004EAB04    mov         edx,dword ptr [ebp-8]
 004EAB07    mov         eax,dword ptr [ebp-4]
 004EAB0A    call        004CAD7C
 004EAB0F    mov         eax,dword ptr [ebp-4]
 004EAB12    cmp         dword ptr [eax+30],0;TCustomForm.FParent:TWinControl
>004EAB16    jne         004EAB20
 004EAB18    mov         eax,dword ptr [ebp-4]
 004EAB1B    call        004D02BC
 004EAB20    pop         ecx
 004EAB21    pop         ecx
 004EAB22    pop         ebp
 004EAB23    ret
end;*}

//004EAB24
{*procedure sub_004EAB24(?:?; ?:?; ?:?);
begin
 004EAB24    push        ebp
 004EAB25    mov         ebp,esp
 004EAB27    add         esp,0FFFFFFF4
 004EAB2A    push        ebx
 004EAB2B    mov         dword ptr [ebp-0C],ecx
 004EAB2E    mov         dword ptr [ebp-8],edx
 004EAB31    mov         dword ptr [ebp-4],eax
 004EAB34    mov         eax,dword ptr [ebp+8]
 004EAB37    push        eax
 004EAB38    mov         ecx,dword ptr [ebp-0C]
 004EAB3B    mov         edx,dword ptr [ebp-8]
 004EAB3E    mov         eax,dword ptr [ebp-4]
 004EAB41    call        00483618
 004EAB46    mov         eax,dword ptr [ebp-4]
 004EAB49    cmp         dword ptr [eax+250],0;TCustomForm.FDesigner:IDesignerHook
>004EAB50    je          004EAB6A
 004EAB52    mov         eax,dword ptr [ebp+8]
 004EAB55    push        eax
 004EAB56    mov         ecx,dword ptr [ebp-0C]
 004EAB59    mov         edx,dword ptr [ebp-8]
 004EAB5C    mov         eax,dword ptr [ebp-4]
 004EAB5F    mov         eax,dword ptr [eax+250];TCustomForm.FDesigner:IDesignerHook
 004EAB65    mov         ebx,dword ptr [eax]
 004EAB67    call        dword ptr [ebx+2C]
 004EAB6A    pop         ebx
 004EAB6B    mov         esp,ebp
 004EAB6D    pop         ebp
 004EAB6E    ret         4
end;*}

//004EAB74
{*procedure sub_004EAB74(?:?);
begin
 004EAB74    push        ebp
 004EAB75    mov         ebp,esp
 004EAB77    add         esp,0FFFFFFD4
 004EAB7A    push        ebx
 004EAB7B    push        esi
 004EAB7C    mov         dword ptr [ebp-8],edx
 004EAB7F    mov         dword ptr [ebp-4],eax
 004EAB82    mov         eax,dword ptr [ebp-8]
 004EAB85    mov         eax,dword ptr [eax]
 004EAB87    cmp         eax,46
>004EAB8A    jg          004EABAF
>004EAB8C    je          004EACA0
 004EAB92    add         eax,0FFFFFFFA
 004EAB95    sub         eax,3
>004EAB98    jb          004EABC6
 004EAB9A    sub         eax,22
>004EAB9D    je          004EAD27
 004EABA3    dec         eax
>004EABA4    je          004EAE2F
>004EABAA    jmp         004EAF73
 004EABAF    sub         eax,0B01A
>004EABB4    je          004EAC7F
 004EABBA    dec         eax
>004EABBB    je          004EAC5E
>004EABC1    jmp         004EAF73
 004EABC6    cmp         byte ptr ds:[5418C8],0;gvar_005418C8
>004EABCD    je          004EAFF1
 004EABD3    mov         eax,dword ptr [ebp-8]
 004EABD6    cmp         dword ptr [eax],7
>004EABD9    jne         004EAFE6
 004EABDF    mov         eax,dword ptr [ebp-4]
 004EABE2    test        byte ptr [eax+1C],10;TCustomForm.FComponentState:TComponentState
>004EABE6    jne         004EAFE6
 004EABEC    xor         eax,eax
 004EABEE    mov         dword ptr [ebp-0C],eax
 004EABF1    mov         eax,dword ptr [ebp-4]
 004EABF4    cmp         byte ptr [eax+22F],2;TCustomForm.FFormStyle:TFormStyle
>004EABFB    jne         004EAC1B
 004EABFD    mov         eax,dword ptr [ebp-4]
 004EAC00    call        004EB5E0
 004EAC05    test        eax,eax
>004EAC07    je          004EAC46
 004EAC09    mov         eax,dword ptr [ebp-4]
 004EAC0C    call        004EB5E0
 004EAC11    call        TWinControl.GetHandle
 004EAC16    mov         dword ptr [ebp-0C],eax
>004EAC19    jmp         004EAC46
 004EAC1B    mov         eax,dword ptr [ebp-4]
 004EAC1E    cmp         dword ptr [eax+220],0;TCustomForm.FActiveControl:TWinControl
>004EAC25    je          004EAC46
 004EAC27    mov         eax,dword ptr [ebp-4]
 004EAC2A    mov         eax,dword ptr [eax+220];TCustomForm.FActiveControl:TWinControl
 004EAC30    cmp         eax,dword ptr [ebp-4]
>004EAC33    je          004EAC46
 004EAC35    mov         eax,dword ptr [ebp-4]
 004EAC38    mov         eax,dword ptr [eax+220];TCustomForm.FActiveControl:TWinControl
 004EAC3E    call        TWinControl.GetHandle
 004EAC43    mov         dword ptr [ebp-0C],eax
 004EAC46    cmp         dword ptr [ebp-0C],0
>004EAC4A    je          004EAFE6
 004EAC50    mov         eax,dword ptr [ebp-0C]
 004EAC53    push        eax
 004EAC54    call        user32.SetFocus
>004EAC59    jmp         004EAFF1
 004EAC5E    mov         eax,dword ptr [ebp-4]
 004EAC61    cmp         dword ptr [eax+0A0],0;TCustomForm.FHostDockSite:TWinControl
>004EAC68    je          004EAFE6
 004EAC6E    mov         eax,dword ptr [ebp-4]
 004EAC71    mov         si,0FFB1
 004EAC75    call        @CallDynaInst;TCustomForm.sub_004ED1AC
>004EAC7A    jmp         004EAFE6
 004EAC7F    mov         eax,dword ptr [ebp-4]
 004EAC82    cmp         dword ptr [eax+0A0],0;TCustomForm.FHostDockSite:TWinControl
>004EAC89    je          004EAFE6
 004EAC8F    mov         eax,dword ptr [ebp-4]
 004EAC92    mov         si,0FFB3
 004EAC96    call        @CallDynaInst;TCustomForm.sub_004ED168
>004EAC9B    jmp         004EAFE6
 004EACA0    mov         eax,dword ptr [ebp-4]
 004EACA3    mov         ax,word ptr [eax+1C];TCustomForm.FComponentState:TComponentState
 004EACA7    and         ax,word ptr ds:[4EAFF8];0x11 gvar_004EAFF8
 004EACAE    mov         dx,word ptr ds:[4EAFFC];0x1 gvar_004EAFFC
 004EACB5    cmp         dx,ax
>004EACB8    jne         004EAFE6
 004EACBE    mov         eax,dword ptr [ebp-4]
 004EACC1    mov         al,byte ptr [eax+230];TCustomForm.FPosition:TPosition
 004EACC7    dec         eax
 004EACC8    sub         al,2
>004EACCA    jae         004EACE8
 004EACCC    mov         eax,dword ptr [ebp-4]
 004EACCF    cmp         byte ptr [eax+22B],2;TCustomForm.FWindowState:TWindowState
>004EACD6    je          004EACE8
 004EACD8    mov         eax,dword ptr [ebp-8]
 004EACDB    mov         eax,dword ptr [eax+8]
 004EACDE    mov         dword ptr [ebp-20],eax
 004EACE1    mov         eax,dword ptr [ebp-20]
 004EACE4    or          dword ptr [eax+18],2
 004EACE8    mov         eax,dword ptr [ebp-4]
 004EACEB    mov         al,byte ptr [eax+230];TCustomForm.FPosition:TPosition
 004EACF1    sub         al,1
>004EACF3    je          004EACFD
 004EACF5    sub         al,2
>004EACF7    jne         004EAFE6
 004EACFD    mov         eax,dword ptr [ebp-4]
 004EAD00    mov         al,byte ptr [eax+229];TCustomForm.FBorderStyle:TFormBorderStyle
 004EAD06    sub         al,2
>004EAD08    je          004EAD12
 004EAD0A    sub         al,3
>004EAD0C    jne         004EAFE6
 004EAD12    mov         eax,dword ptr [ebp-8]
 004EAD15    mov         eax,dword ptr [eax+8]
 004EAD18    mov         dword ptr [ebp-24],eax
 004EAD1B    mov         eax,dword ptr [ebp-24]
 004EAD1E    or          dword ptr [eax+18],1
>004EAD22    jmp         004EAFE6
 004EAD27    mov         eax,dword ptr [ebp-8]
 004EAD2A    mov         eax,dword ptr [eax+8]
 004EAD2D    mov         dword ptr [ebp-28],eax
 004EAD30    mov         eax,dword ptr [ebp-28]
 004EAD33    cmp         dword ptr [eax],1
>004EAD36    jne         004EAFE6
 004EAD3C    mov         eax,dword ptr [ebp-4]
 004EAD3F    cmp         dword ptr [eax+248],0;TCustomForm.FMenu:TMainMenu
>004EAD46    je          004EAFE6
 004EAD4C    mov         eax,dword ptr [ebp-28]
 004EAD4F    mov         edx,dword ptr [eax+8]
 004EAD52    mov         eax,dword ptr [ebp-4]
 004EAD55    mov         eax,dword ptr [eax+248];TCustomForm.FMenu:TMainMenu
 004EAD5B    xor         ecx,ecx
 004EAD5D    call        004E3B1C
 004EAD62    mov         dword ptr [ebp-14],eax
 004EAD65    cmp         dword ptr [ebp-14],0
>004EAD69    je          004EAFE6
 004EAD6F    mov         dl,1
 004EAD71    mov         eax,[004C4BA4];TControlCanvas
 004EAD76    call        TControlCanvas.Create;TControlCanvas.Create
 004EAD7B    mov         dword ptr [ebp-18],eax
 004EAD7E    xor         eax,eax
 004EAD80    push        ebp
 004EAD81    push        4EAE28
 004EAD86    push        dword ptr fs:[eax]
 004EAD89    mov         dword ptr fs:[eax],esp
 004EAD8C    mov         eax,dword ptr [ebp-28]
 004EAD8F    mov         eax,dword ptr [eax+18]
 004EAD92    push        eax
 004EAD93    call        gdi32.SaveDC
 004EAD98    mov         dword ptr [ebp-10],eax
 004EAD9B    xor         eax,eax
 004EAD9D    push        ebp
 004EAD9E    push        4EAE0B
 004EADA3    push        dword ptr fs:[eax]
 004EADA6    mov         dword ptr fs:[eax],esp
 004EADA9    mov         eax,dword ptr [ebp-28]
 004EADAC    mov         edx,dword ptr [eax+18]
 004EADAF    mov         eax,dword ptr [ebp-18]
 004EADB2    call        TCanvas.SetHandle
 004EADB7    mov         eax,[0055DE50];Screen:TScreen
 004EADBC    mov         edx,dword ptr [eax+88]
 004EADC2    mov         eax,dword ptr [ebp-18]
 004EADC5    call        TCanvas.SetFont
 004EADCA    mov         eax,dword ptr [ebp-28]
 004EADCD    mov         ax,word ptr [eax+10]
 004EADD1    push        eax
 004EADD2    mov         eax,dword ptr [ebp-28]
 004EADD5    lea         ecx,[eax+1C]
 004EADD8    mov         edx,dword ptr [ebp-18]
 004EADDB    mov         eax,dword ptr [ebp-14]
 004EADDE    call        004E5678
 004EADE3    xor         eax,eax
 004EADE5    pop         edx
 004EADE6    pop         ecx
 004EADE7    pop         ecx
 004EADE8    mov         dword ptr fs:[eax],edx
 004EADEB    push        4EAE12
 004EADF0    xor         edx,edx
 004EADF2    mov         eax,dword ptr [ebp-18]
 004EADF5    call        TCanvas.SetHandle
 004EADFA    mov         eax,dword ptr [ebp-10]
 004EADFD    push        eax
 004EADFE    mov         eax,dword ptr [ebp-28]
 004EAE01    mov         eax,dword ptr [eax+18]
 004EAE04    push        eax
 004EAE05    call        gdi32.RestoreDC
 004EAE0A    ret
>004EAE0B    jmp         @HandleFinally
>004EAE10    jmp         004EADF0
 004EAE12    xor         eax,eax
 004EAE14    pop         edx
 004EAE15    pop         ecx
 004EAE16    pop         ecx
 004EAE17    mov         dword ptr fs:[eax],edx
 004EAE1A    push        4EAFF1
 004EAE1F    mov         eax,dword ptr [ebp-18]
 004EAE22    call        TObject.Free
 004EAE27    ret
>004EAE28    jmp         @HandleFinally
>004EAE2D    jmp         004EAE1F
 004EAE2F    mov         eax,dword ptr [ebp-8]
 004EAE32    mov         eax,dword ptr [eax+8]
 004EAE35    mov         dword ptr [ebp-2C],eax
 004EAE38    mov         eax,dword ptr [ebp-2C]
 004EAE3B    cmp         dword ptr [eax],1
>004EAE3E    jne         004EAFE6
 004EAE44    mov         eax,dword ptr [ebp-4]
 004EAE47    cmp         dword ptr [eax+248],0;TCustomForm.FMenu:TMainMenu
>004EAE4E    je          004EAFE6
 004EAE54    mov         eax,dword ptr [ebp-2C]
 004EAE57    mov         edx,dword ptr [eax+8]
 004EAE5A    mov         eax,dword ptr [ebp-4]
 004EAE5D    mov         eax,dword ptr [eax+248];TCustomForm.FMenu:TMainMenu
 004EAE63    xor         ecx,ecx
 004EAE65    call        004E3B1C
 004EAE6A    mov         dword ptr [ebp-14],eax
 004EAE6D    cmp         dword ptr [ebp-14],0
>004EAE71    je          004EAFE6
 004EAE77    mov         eax,dword ptr [ebp-4]
 004EAE7A    call        TWinControl.GetHandle
 004EAE7F    push        eax
 004EAE80    call        user32.GetWindowDC
 004EAE85    mov         dword ptr [ebp-1C],eax
 004EAE88    xor         eax,eax
 004EAE8A    push        ebp
 004EAE8B    push        4EAF6C
 004EAE90    push        dword ptr fs:[eax]
 004EAE93    mov         dword ptr fs:[eax],esp
 004EAE96    mov         dl,1
 004EAE98    mov         eax,[004C4BA4];TControlCanvas
 004EAE9D    call        TControlCanvas.Create;TControlCanvas.Create
 004EAEA2    mov         dword ptr [ebp-18],eax
 004EAEA5    xor         eax,eax
 004EAEA7    push        ebp
 004EAEA8    push        4EAF45
 004EAEAD    push        dword ptr fs:[eax]
 004EAEB0    mov         dword ptr fs:[eax],esp
 004EAEB3    mov         eax,dword ptr [ebp-1C]
 004EAEB6    push        eax
 004EAEB7    call        gdi32.SaveDC
 004EAEBC    mov         dword ptr [ebp-10],eax
 004EAEBF    xor         eax,eax
 004EAEC1    push        ebp
 004EAEC2    push        4EAF28
 004EAEC7    push        dword ptr fs:[eax]
 004EAECA    mov         dword ptr fs:[eax],esp
 004EAECD    mov         edx,dword ptr [ebp-1C]
 004EAED0    mov         eax,dword ptr [ebp-18]
 004EAED3    call        TCanvas.SetHandle
 004EAED8    mov         eax,[0055DE50];Screen:TScreen
 004EAEDD    mov         edx,dword ptr [eax+88]
 004EAEE3    mov         eax,dword ptr [ebp-18]
 004EAEE6    call        TCanvas.SetFont
 004EAEEB    mov         eax,dword ptr [ebp-2C]
 004EAEEE    add         eax,10
 004EAEF1    push        eax
 004EAEF2    mov         eax,dword ptr [ebp-2C]
 004EAEF5    lea         ecx,[eax+0C]
 004EAEF8    mov         edx,dword ptr [ebp-18]
 004EAEFB    mov         eax,dword ptr [ebp-14]
 004EAEFE    mov         ebx,dword ptr [eax]
 004EAF00    call        dword ptr [ebx+38]
 004EAF03    xor         eax,eax
 004EAF05    pop         edx
 004EAF06    pop         ecx
 004EAF07    pop         ecx
 004EAF08    mov         dword ptr fs:[eax],edx
 004EAF0B    push        4EAF2F
 004EAF10    xor         edx,edx
 004EAF12    mov         eax,dword ptr [ebp-18]
 004EAF15    call        TCanvas.SetHandle
 004EAF1A    mov         eax,dword ptr [ebp-10]
 004EAF1D    push        eax
 004EAF1E    mov         eax,dword ptr [ebp-1C]
 004EAF21    push        eax
 004EAF22    call        gdi32.RestoreDC
 004EAF27    ret
>004EAF28    jmp         @HandleFinally
>004EAF2D    jmp         004EAF10
 004EAF2F    xor         eax,eax
 004EAF31    pop         edx
 004EAF32    pop         ecx
 004EAF33    pop         ecx
 004EAF34    mov         dword ptr fs:[eax],edx
 004EAF37    push        4EAF4C
 004EAF3C    mov         eax,dword ptr [ebp-18]
 004EAF3F    call        TObject.Free
 004EAF44    ret
>004EAF45    jmp         @HandleFinally
>004EAF4A    jmp         004EAF3C
 004EAF4C    xor         eax,eax
 004EAF4E    pop         edx
 004EAF4F    pop         ecx
 004EAF50    pop         ecx
 004EAF51    mov         dword ptr fs:[eax],edx
 004EAF54    push        4EAFF1
 004EAF59    mov         eax,dword ptr [ebp-1C]
 004EAF5C    push        eax
 004EAF5D    mov         eax,dword ptr [ebp-4]
 004EAF60    call        TWinControl.GetHandle
 004EAF65    push        eax
 004EAF66    call        user32.ReleaseDC
 004EAF6B    ret
>004EAF6C    jmp         @HandleFinally
>004EAF71    jmp         004EAF59
 004EAF73    mov         eax,dword ptr [ebp-8]
 004EAF76    mov         eax,dword ptr [eax]
 004EAF78    cmp         eax,dword ptr ds:[55DE58];gvar_0055DE58
>004EAF7E    jne         004EAFE6
 004EAF80    push        0
 004EAF82    xor         ecx,ecx
 004EAF84    mov         edx,0B025
 004EAF89    mov         eax,dword ptr [ebp-4]
 004EAF8C    call        004CC7DC
 004EAF91    push        0
 004EAF93    xor         ecx,ecx
 004EAF95    mov         edx,0B024
 004EAF9A    mov         eax,dword ptr [ebp-4]
 004EAF9D    call        004CC7DC
 004EAFA2    push        0
 004EAFA4    xor         ecx,ecx
 004EAFA6    mov         edx,0B035
 004EAFAB    mov         eax,dword ptr [ebp-4]
 004EAFAE    call        004CC7DC
 004EAFB3    push        0
 004EAFB5    xor         ecx,ecx
 004EAFB7    mov         edx,0B009
 004EAFBC    mov         eax,dword ptr [ebp-4]
 004EAFBF    call        004CC7DC
 004EAFC4    push        0
 004EAFC6    xor         ecx,ecx
 004EAFC8    mov         edx,0B008
 004EAFCD    mov         eax,dword ptr [ebp-4]
 004EAFD0    call        004CC7DC
 004EAFD5    push        0
 004EAFD7    xor         ecx,ecx
 004EAFD9    mov         edx,0B03D
 004EAFDE    mov         eax,dword ptr [ebp-4]
 004EAFE1    call        004CC7DC
 004EAFE6    mov         edx,dword ptr [ebp-8]
 004EAFE9    mov         eax,dword ptr [ebp-4]
 004EAFEC    call        004D06A8
 004EAFF1    pop         esi
 004EAFF2    pop         ebx
 004EAFF3    mov         esp,ebp
 004EAFF5    pop         ebp
 004EAFF6    ret
end;*}

//004EB000
procedure Default;
begin
{*
 004EB000    push        ebp
 004EB001    mov         ebp,esp
 004EB003    mov         eax,dword ptr [ebp+8]
 004EB006    mov         eax,dword ptr [eax-8]
 004EB009    mov         eax,dword ptr [eax+8]
 004EB00C    push        eax
 004EB00D    mov         eax,dword ptr [ebp+8]
 004EB010    mov         eax,dword ptr [eax-8]
 004EB013    mov         eax,dword ptr [eax+4]
 004EB016    push        eax
 004EB017    mov         eax,dword ptr [ebp+8]
 004EB01A    mov         eax,dword ptr [eax-8]
 004EB01D    mov         eax,dword ptr [eax]
 004EB01F    push        eax
 004EB020    mov         eax,dword ptr [ebp+8]
 004EB023    mov         eax,dword ptr [eax-4]
 004EB026    mov         eax,dword ptr [eax+254]
 004EB02C    push        eax
 004EB02D    mov         eax,dword ptr [ebp+8]
 004EB030    mov         eax,dword ptr [eax-4]
 004EB033    mov         eax,dword ptr [eax+274]
 004EB039    push        eax
 004EB03A    call        user32.CallWindowProcA
 004EB03F    mov         edx,dword ptr [ebp+8]
 004EB042    mov         edx,dword ptr [edx-8]
 004EB045    mov         dword ptr [edx+0C],eax
 004EB048    pop         ebp
 004EB049    ret
*}
end;

//004EB04C
function MaximizedChildren:Boolean;
begin
{*
 004EB04C    push        ebp
 004EB04D    mov         ebp,esp
 004EB04F    add         esp,0FFFFFFF4
 004EB052    mov         eax,dword ptr [ebp+8]
 004EB055    mov         eax,dword ptr [eax-4]
 004EB058    call        TCustomForm.GetMDIChildCount
 004EB05D    dec         eax
 004EB05E    test        eax,eax
>004EB060    jl          004EB092
 004EB062    inc         eax
 004EB063    mov         dword ptr [ebp-0C],eax
 004EB066    mov         dword ptr [ebp-8],0
 004EB06D    mov         eax,dword ptr [ebp+8]
 004EB070    mov         eax,dword ptr [eax-4]
 004EB073    mov         edx,dword ptr [ebp-8]
 004EB076    call        004EB698
 004EB07B    cmp         byte ptr [eax+22B],2
>004EB082    jne         004EB08A
 004EB084    mov         byte ptr [ebp-1],1
>004EB088    jmp         004EB096
 004EB08A    inc         dword ptr [ebp-8]
 004EB08D    dec         dword ptr [ebp-0C]
>004EB090    jne         004EB06D
 004EB092    mov         byte ptr [ebp-1],0
 004EB096    mov         al,byte ptr [ebp-1]
 004EB099    mov         esp,ebp
 004EB09B    pop         ebp
 004EB09C    ret
*}
end;

//004EB0A0
procedure TCustomForm.ClientWndProc(var Message:TMessage);
begin
{*
 004EB0A0    push        ebp
 004EB0A1    mov         ebp,esp
 004EB0A3    add         esp,0FFFFFF8C
 004EB0A6    mov         dword ptr [ebp-8],edx
 004EB0A9    mov         dword ptr [ebp-4],eax
 004EB0AC    mov         eax,dword ptr [ebp-8]
 004EB0AF    mov         eax,dword ptr [eax]
 004EB0B1    sub         eax,0F
>004EB0B4    je          004EB1BE
 004EB0BA    sub         eax,5
>004EB0BD    je          004EB0F4
 004EB0BF    sub         eax,2B
>004EB0C2    je          004EB177
 004EB0C8    sub         eax,45
>004EB0CB    jne         004EB275
 004EB0D1    push        ebp
 004EB0D2    call        Default
 004EB0D7    pop         ecx
 004EB0D8    mov         eax,dword ptr [ebp-8]
 004EB0DB    cmp         dword ptr [eax+0C],1
>004EB0DF    jne         004EB27C
 004EB0E5    mov         eax,dword ptr [ebp-8]
 004EB0E8    mov         dword ptr [eax+0C],0FFFFFFFF
>004EB0EF    jmp         004EB27C
 004EB0F4    mov         eax,dword ptr [ebp-4]
 004EB0F7    mov         eax,dword ptr [eax+170]
 004EB0FD    call        TBrush.GetHandle
 004EB102    push        eax
 004EB103    lea         edx,[ebp-6C]
 004EB106    mov         eax,dword ptr [ebp-4]
 004EB109    mov         ecx,dword ptr [eax]
 004EB10B    call        dword ptr [ecx+44]
 004EB10E    lea         eax,[ebp-6C]
 004EB111    push        eax
 004EB112    mov         eax,dword ptr [ebp-8]
 004EB115    mov         eax,dword ptr [eax+4]
 004EB118    push        eax
 004EB119    call        user32.FillRect
 004EB11E    mov         eax,dword ptr [ebp-4]
 004EB121    cmp         byte ptr [eax+22F],2
>004EB128    jne         004EB168
 004EB12A    mov         eax,dword ptr [ebp-4]
 004EB12D    cmp         dword ptr [eax+254],0
>004EB134    je          004EB168
 004EB136    lea         eax,[ebp-5C]
 004EB139    push        eax
 004EB13A    mov         eax,dword ptr [ebp-4]
 004EB13D    mov         eax,dword ptr [eax+254]
 004EB143    push        eax
 004EB144    call        user32.GetClientRect
 004EB149    mov         eax,dword ptr [ebp-4]
 004EB14C    mov         eax,dword ptr [eax+170]
 004EB152    call        TBrush.GetHandle
 004EB157    push        eax
 004EB158    lea         eax,[ebp-5C]
 004EB15B    push        eax
 004EB15C    mov         eax,dword ptr [ebp-8]
 004EB15F    mov         eax,dword ptr [eax+4]
 004EB162    push        eax
 004EB163    call        user32.FillRect
 004EB168    mov         eax,dword ptr [ebp-8]
 004EB16B    mov         dword ptr [eax+0C],1
>004EB172    jmp         004EB27C
 004EB177    push        ebp
 004EB178    call        Default
 004EB17D    pop         ecx
 004EB17E    mov         eax,dword ptr [ebp-4]
 004EB181    cmp         byte ptr [eax+22F],2
>004EB188    jne         004EB27C
 004EB18E    mov         eax,dword ptr [ebp-4]
 004EB191    call        TCustomForm.GetMDIChildCount
 004EB196    test        eax,eax
>004EB198    je          004EB1A9
 004EB19A    push        ebp
 004EB19B    call        MaximizedChildren
 004EB1A0    pop         ecx
 004EB1A1    test        al,al
>004EB1A3    je          004EB1A9
 004EB1A5    xor         edx,edx
>004EB1A7    jmp         004EB1AB
 004EB1A9    mov         dl,1
 004EB1AB    mov         eax,dword ptr [ebp-4]
 004EB1AE    mov         eax,dword ptr [eax+254]
 004EB1B4    call        ShowMDIClientEdge
>004EB1B9    jmp         004EB27C
 004EB1BE    mov         eax,dword ptr [ebp-8]
 004EB1C1    mov         eax,dword ptr [eax+4]
 004EB1C4    mov         dword ptr [ebp-0C],eax
 004EB1C7    cmp         dword ptr [ebp-0C],0
>004EB1CB    jne         004EB1E6
 004EB1CD    lea         eax,[ebp-4C]
 004EB1D0    push        eax
 004EB1D1    mov         eax,dword ptr [ebp-4]
 004EB1D4    mov         eax,dword ptr [eax+254]
 004EB1DA    push        eax
 004EB1DB    call        user32.BeginPaint
 004EB1E0    mov         edx,dword ptr [ebp-8]
 004EB1E3    mov         dword ptr [edx+4],eax
 004EB1E6    xor         eax,eax
 004EB1E8    push        ebp
 004EB1E9    push        4EB26E
 004EB1EE    push        dword ptr fs:[eax]
 004EB1F1    mov         dword ptr fs:[eax],esp
 004EB1F4    cmp         dword ptr [ebp-0C],0
>004EB1F8    jne         004EB23C
 004EB1FA    lea         eax,[ebp-5C]
 004EB1FD    push        eax
 004EB1FE    mov         eax,dword ptr [ebp-4]
 004EB201    mov         eax,dword ptr [eax+254]
 004EB207    push        eax
 004EB208    call        user32.GetWindowRect
 004EB20D    lea         ecx,[ebp-74]
 004EB210    lea         edx,[ebp-5C]
 004EB213    mov         eax,dword ptr [ebp-4]
 004EB216    call        TControl.ScreenToClient
 004EB21B    mov         eax,dword ptr [ebp-74]
 004EB21E    mov         dword ptr [ebp-5C],eax
 004EB221    mov         eax,dword ptr [ebp-70]
 004EB224    mov         dword ptr [ebp-58],eax
 004EB227    mov         ecx,dword ptr [ebp-58]
 004EB22A    neg         ecx
 004EB22C    mov         edx,dword ptr [ebp-5C]
 004EB22F    neg         edx
 004EB231    mov         eax,dword ptr [ebp-8]
 004EB234    mov         eax,dword ptr [eax+4]
 004EB237    call        MoveWindowOrg
 004EB23C    mov         edx,dword ptr [ebp-8]
 004EB23F    mov         eax,dword ptr [ebp-4]
 004EB242    call        TWinControl.PaintHandler
 004EB247    xor         eax,eax
 004EB249    pop         edx
 004EB24A    pop         ecx
 004EB24B    pop         ecx
 004EB24C    mov         dword ptr fs:[eax],edx
 004EB24F    push        4EB27C
 004EB254    cmp         dword ptr [ebp-0C],0
>004EB258    jne         004EB26D
 004EB25A    lea         eax,[ebp-4C]
 004EB25D    push        eax
 004EB25E    mov         eax,dword ptr [ebp-4]
 004EB261    mov         eax,dword ptr [eax+254]
 004EB267    push        eax
 004EB268    call        user32.EndPaint
 004EB26D    ret
>004EB26E    jmp         @HandleFinally
>004EB273    jmp         004EB254
 004EB275    push        ebp
 004EB276    call        Default
 004EB27B    pop         ecx
 004EB27C    mov         esp,ebp
 004EB27E    pop         ebp
 004EB27F    ret
*}
end;

//004EB280
procedure TCustomForm.AlignControls(AControl:TControl; var Rect:TRect);
begin
{*
 004EB280    push        ebp
 004EB281    mov         ebp,esp
 004EB283    add         esp,0FFFFFFE4
 004EB286    mov         dword ptr [ebp-0C],ecx
 004EB289    mov         dword ptr [ebp-8],edx
 004EB28C    mov         dword ptr [ebp-4],eax
 004EB28F    mov         ecx,dword ptr [ebp-0C]
 004EB292    mov         edx,dword ptr [ebp-8]
 004EB295    mov         eax,dword ptr [ebp-4]
 004EB298    call        TScrollingWinControl.AlignControls
 004EB29D    mov         eax,dword ptr [ebp-4]
 004EB2A0    cmp         dword ptr [eax+254],0;TCustomForm.FClientHandle:HWND
>004EB2A7    je          004EB318
 004EB2A9    push        14
 004EB2AB    mov         eax,dword ptr [ebp-0C]
 004EB2AE    mov         eax,dword ptr [eax+0C]
 004EB2B1    mov         edx,dword ptr [ebp-0C]
 004EB2B4    sub         eax,dword ptr [edx+4]
 004EB2B7    push        eax
 004EB2B8    mov         eax,dword ptr [ebp-0C]
 004EB2BB    mov         eax,dword ptr [eax+8];TRect.Right:Longint
 004EB2BE    mov         edx,dword ptr [ebp-0C]
 004EB2C1    sub         eax,dword ptr [edx]
 004EB2C3    push        eax
 004EB2C4    mov         eax,dword ptr [ebp-0C]
 004EB2C7    mov         eax,dword ptr [eax+4];TRect.Top:Longint
 004EB2CA    push        eax
 004EB2CB    mov         eax,dword ptr [ebp-0C]
 004EB2CE    mov         eax,dword ptr [eax]
 004EB2D0    push        eax
 004EB2D1    push        1
 004EB2D3    mov         eax,dword ptr [ebp-4]
 004EB2D6    mov         eax,dword ptr [eax+254];TCustomForm.FClientHandle:HWND
 004EB2DC    push        eax
 004EB2DD    call        user32.SetWindowPos
 004EB2E2    mov         eax,dword ptr [ebp-4]
 004EB2E5    cmp         byte ptr [eax+22F],2;TCustomForm.FFormStyle:TFormStyle
>004EB2EC    jne         004EB318
 004EB2EE    lea         eax,[ebp-1C]
 004EB2F1    push        eax
 004EB2F2    mov         eax,dword ptr [ebp-4]
 004EB2F5    mov         eax,dword ptr [eax+254];TCustomForm.FClientHandle:HWND
 004EB2FB    push        eax
 004EB2FC    call        user32.GetClientRect
 004EB301    test        eax,eax
>004EB303    je          004EB318
 004EB305    push        0FF
 004EB307    push        0
 004EB309    mov         eax,dword ptr [ebp-4]
 004EB30C    mov         eax,dword ptr [eax+254];TCustomForm.FClientHandle:HWND
 004EB312    push        eax
 004EB313    call        user32.InvalidateRect
 004EB318    mov         esp,ebp
 004EB31A    pop         ebp
 004EB31B    ret
*}
end;

//004EB31C
procedure TCustomForm.CMBiDiModeChanged(Message:TMessage);
begin
{*
 004EB31C    push        ebp
 004EB31D    mov         ebp,esp
 004EB31F    add         esp,0FFFFFFEC
 004EB322    mov         dword ptr [ebp-8],edx
 004EB325    mov         dword ptr [ebp-4],eax
 004EB328    mov         edx,dword ptr [ebp-8]
 004EB32B    mov         eax,dword ptr [ebp-4]
 004EB32E    call        TScrollingWinControl.CMBiDiModeChanged
 004EB333    mov         eax,dword ptr [ebp-4]
 004EB336    call        TWinControl.HandleAllocated
 004EB33B    test        al,al
>004EB33D    je          004EB380
 004EB33F    push        0EC
 004EB341    mov         eax,dword ptr [ebp-4]
 004EB344    call        TWinControl.GetHandle
 004EB349    push        eax
 004EB34A    call        user32.GetWindowLongA
 004EB34F    and         eax,0FFFFEFFF
 004EB354    and         eax,0FFFFDFFF
 004EB359    and         eax,0FFFFBFFF
 004EB35E    mov         dword ptr [ebp-0C],eax
 004EB361    lea         edx,[ebp-0C]
 004EB364    mov         eax,dword ptr [ebp-4]
 004EB367    call        004CF794
 004EB36C    mov         eax,dword ptr [ebp-0C]
 004EB36F    push        eax
 004EB370    push        0EC
 004EB372    mov         eax,dword ptr [ebp-4]
 004EB375    call        TWinControl.GetHandle
 004EB37A    push        eax
 004EB37B    call        user32.SetWindowLongA
 004EB380    mov         eax,dword ptr [ebp-4]
 004EB383    call        00483864
 004EB388    dec         eax
 004EB389    test        eax,eax
>004EB38B    jl          004EB3CA
 004EB38D    inc         eax
 004EB38E    mov         dword ptr [ebp-14],eax
 004EB391    mov         dword ptr [ebp-10],0
 004EB398    mov         edx,dword ptr [ebp-10]
 004EB39B    mov         eax,dword ptr [ebp-4]
 004EB39E    call        00483824
 004EB3A3    mov         edx,dword ptr ds:[4DE894];TMenu
 004EB3A9    call        @IsClass
 004EB3AE    test        al,al
>004EB3B0    je          004EB3C2
 004EB3B2    mov         edx,dword ptr [ebp-10]
 004EB3B5    mov         eax,dword ptr [ebp-4]
 004EB3B8    call        00483824
 004EB3BD    call        004E49F8
 004EB3C2    inc         dword ptr [ebp-10]
 004EB3C5    dec         dword ptr [ebp-14]
>004EB3C8    jne         004EB398
 004EB3CA    mov         esp,ebp
 004EB3CC    pop         ebp
 004EB3CD    ret
*}
end;

//004EB3D0
{*procedure TCustomForm.CMParentBiDiModeChanged(?:?);
begin
 004EB3D0    push        ebp
 004EB3D1    mov         ebp,esp
 004EB3D3    add         esp,0FFFFFFF8
 004EB3D6    mov         dword ptr [ebp-8],edx
 004EB3D9    mov         dword ptr [ebp-4],eax
 004EB3DC    mov         eax,dword ptr [ebp-4]
 004EB3DF    cmp         byte ptr [eax+244],0;TCustomForm.FInCMParentBiDiModeChanged:Boolean
>004EB3E6    jne         004EB45E
 004EB3E8    mov         eax,dword ptr [ebp-4]
 004EB3EB    mov         byte ptr [eax+244],1;TCustomForm.FInCMParentBiDiModeChanged:Boolean
 004EB3F2    xor         eax,eax
 004EB3F4    push        ebp
 004EB3F5    push        4EB457
 004EB3FA    push        dword ptr fs:[eax]
 004EB3FD    mov         dword ptr fs:[eax],esp
 004EB400    mov         eax,dword ptr [ebp-4]
 004EB403    cmp         byte ptr [eax+60],0;TCustomForm.FParentBiDiMode:Boolean
>004EB407    je          004EB43F
 004EB409    mov         eax,dword ptr [ebp-4]
 004EB40C    cmp         dword ptr [eax+30],0;TCustomForm.FParent:TWinControl
>004EB410    jne         004EB424
 004EB412    mov         eax,[0055DE4C];Application:TApplication
 004EB417    mov         dl,byte ptr [eax+34]
 004EB41A    mov         eax,dword ptr [ebp-4]
 004EB41D    mov         ecx,dword ptr [eax]
 004EB41F    call        dword ptr [ecx+70];TPanel.SetBiDiMode
>004EB422    jmp         004EB435
 004EB424    mov         eax,dword ptr [ebp-4]
 004EB427    mov         eax,dword ptr [eax+30];TCustomForm.FParent:TWinControl
 004EB42A    mov         dl,byte ptr [eax+5F];TWinControl.FBiDiMode:TBiDiMode
 004EB42D    mov         eax,dword ptr [ebp-4]
 004EB430    mov         ecx,dword ptr [eax]
 004EB432    call        dword ptr [ecx+70];TPanel.SetBiDiMode
 004EB435    mov         dl,1
 004EB437    mov         eax,dword ptr [ebp-4]
 004EB43A    mov         ecx,dword ptr [eax]
 004EB43C    call        dword ptr [ecx+6C];TForm.SetParentBiDiMode
 004EB43F    xor         eax,eax
 004EB441    pop         edx
 004EB442    pop         ecx
 004EB443    pop         ecx
 004EB444    mov         dword ptr fs:[eax],edx
 004EB447    push        4EB45E
 004EB44C    mov         eax,dword ptr [ebp-4]
 004EB44F    mov         byte ptr [eax+244],0;TCustomForm.FInCMParentBiDiModeChanged:Boolean
 004EB456    ret
>004EB457    jmp         @HandleFinally
>004EB45C    jmp         004EB44C
 004EB45E    pop         ecx
 004EB45F    pop         ecx
 004EB460    pop         ebp
 004EB461    ret
end;*}

//004EB464
procedure TForm.SetBorderIcons(Value:TBorderIcons);
begin
{*
 004EB464    push        ebp
 004EB465    mov         ebp,esp
 004EB467    add         esp,0FFFFFFF8
 004EB46A    mov         byte ptr [ebp-5],dl
 004EB46D    mov         dword ptr [ebp-4],eax
 004EB470    mov         al,byte ptr [ebp-5]
 004EB473    mov         edx,dword ptr [ebp-4]
 004EB476    cmp         al,byte ptr [edx+228];TForm.FBorderIcons:TBorderIcons
>004EB47C    je          004EB49B
 004EB47E    mov         al,byte ptr [ebp-5]
 004EB481    mov         edx,dword ptr [ebp-4]
 004EB484    mov         byte ptr [edx+228],al;TForm.FBorderIcons:TBorderIcons
 004EB48A    mov         eax,dword ptr [ebp-4]
 004EB48D    test        byte ptr [eax+1C],10;TForm.FComponentState:TComponentState
>004EB491    jne         004EB49B
 004EB493    mov         eax,dword ptr [ebp-4]
 004EB496    call        TWinControl.RecreateWnd
 004EB49B    pop         ecx
 004EB49C    pop         ecx
 004EB49D    pop         ebp
 004EB49E    ret
*}
end;

//004EB4A0
procedure TForm.SetBorderStyle(Value:TFormBorderStyle);
begin
{*
 004EB4A0    push        ebp
 004EB4A1    mov         ebp,esp
 004EB4A3    add         esp,0FFFFFFF8
 004EB4A6    mov         byte ptr [ebp-5],dl
 004EB4A9    mov         dword ptr [ebp-4],eax
 004EB4AC    mov         eax,dword ptr [ebp-4]
 004EB4AF    mov         al,byte ptr [eax+229];TForm.FBorderStyle:TFormBorderStyle
 004EB4B5    cmp         al,byte ptr [ebp-5]
>004EB4B8    je          004EB4F6
 004EB4BA    mov         al,byte ptr [ebp-5]
 004EB4BD    mov         edx,dword ptr [ebp-4]
 004EB4C0    mov         byte ptr [edx+229],al;TForm.FBorderStyle:TFormBorderStyle
 004EB4C6    mov         eax,dword ptr [ebp-4]
 004EB4C9    mov         al,byte ptr [eax+229];TForm.FBorderStyle:TFormBorderStyle
 004EB4CF    sub         al,2
>004EB4D1    je          004EB4DB
 004EB4D3    sub         al,3
>004EB4D5    je          004EB4DB
 004EB4D7    xor         edx,edx
>004EB4D9    jmp         004EB4DD
 004EB4DB    mov         dl,1
 004EB4DD    mov         eax,dword ptr [ebp-4]
 004EB4E0    call        TForm.SetAutoScroll
 004EB4E5    mov         eax,dword ptr [ebp-4]
 004EB4E8    test        byte ptr [eax+1C],10;TForm.FComponentState:TComponentState
>004EB4EC    jne         004EB4F6
 004EB4EE    mov         eax,dword ptr [ebp-4]
 004EB4F1    call        TWinControl.RecreateWnd
 004EB4F6    pop         ecx
 004EB4F7    pop         ecx
 004EB4F8    pop         ebp
 004EB4F9    ret
*}
end;

//004EB4FC
{*procedure TCustomForm.sub_004CA46C(?:?; ?:?);
begin
 004EB4FC    push        ebp
 004EB4FD    mov         ebp,esp
 004EB4FF    add         esp,0FFFFFFE0
 004EB502    push        esi
 004EB503    push        edi
 004EB504    mov         esi,ecx
 004EB506    lea         edi,[ebp-20]
 004EB509    movs        dword ptr [edi],dword ptr [esi]
 004EB50A    movs        dword ptr [edi],dword ptr [esi]
 004EB50B    movs        dword ptr [edi],dword ptr [esi]
 004EB50C    movs        dword ptr [edi],dword ptr [esi]
 004EB50D    mov         dword ptr [ebp-8],edx
 004EB510    mov         dword ptr [ebp-4],eax
 004EB513    mov         eax,dword ptr [ebp-4]
 004EB516    mov         eax,dword ptr [eax+30];TCustomForm.FParent:TWinControl
 004EB519    mov         dword ptr [ebp-10],eax
 004EB51C    mov         eax,dword ptr [ebp-4]
 004EB51F    mov         eax,dword ptr [eax+0A0];TCustomForm.FHostDockSite:TWinControl
 004EB525    mov         dword ptr [ebp-0C],eax
 004EB528    lea         ecx,[ebp-20]
 004EB52B    mov         edx,dword ptr [ebp-8]
 004EB52E    mov         eax,dword ptr [ebp-4]
 004EB531    call        TControl.sub_004CA46C
 004EB536    mov         eax,dword ptr [ebp-4]
 004EB539    cmp         dword ptr [eax+30],0;TCustomForm.FParent:TWinControl
>004EB53D    je          004EB560
 004EB53F    mov         eax,dword ptr [ebp-4]
 004EB542    mov         eax,dword ptr [eax+30];TCustomForm.FParent:TWinControl
 004EB545    cmp         eax,dword ptr [ebp-10]
>004EB548    jne         004EB560
 004EB54A    mov         eax,dword ptr [ebp-0C]
 004EB54D    mov         edx,dword ptr [ebp-4]
 004EB550    cmp         eax,dword ptr [edx+0A0];TCustomForm.FHostDockSite:TWinControl
>004EB556    je          004EB560
 004EB558    mov         eax,dword ptr [ebp-4]
 004EB55B    call        TWinControl.RecreateWnd
 004EB560    pop         edi
 004EB561    pop         esi
 004EB562    mov         esp,ebp
 004EB564    pop         ebp
 004EB565    ret
end;*}

//004EB568
{*procedure TCustomForm.sub_004CA5A8(?:?; ?:?);
begin
 004EB568    push        ebp
 004EB569    mov         ebp,esp
 004EB56B    add         esp,0FFFFFFF4
 004EB56E    mov         dword ptr [ebp-0C],ecx
 004EB571    mov         dword ptr [ebp-8],edx
 004EB574    mov         dword ptr [ebp-4],eax
 004EB577    mov         eax,dword ptr [ebp-8]
 004EB57A    mov         edx,dword ptr [ebp-4]
 004EB57D    cmp         eax,dword ptr [edx+0A0];TCustomForm.FHostDockSite:TWinControl
>004EB583    je          004EB5CD
 004EB585    cmp         dword ptr [ebp-8],0
>004EB589    je          004EB597
 004EB58B    mov         eax,dword ptr [ebp-4]
 004EB58E    mov         edx,dword ptr [eax]
 004EB590    call        dword ptr [edx+54];TCustomForm.sub_004EA828
 004EB593    test        al,al
>004EB595    je          004EB5CD
 004EB597    cmp         dword ptr [ebp-8],0
>004EB59B    jne         004EB5B1
 004EB59D    mov         eax,dword ptr [ebp-4]
 004EB5A0    mov         al,byte ptr [eax+280];TCustomForm.FSavedBorderStyle:TFormBorderStyle
 004EB5A6    mov         edx,dword ptr [ebp-4]
 004EB5A9    mov         byte ptr [edx+229],al;TCustomForm.FBorderStyle:TFormBorderStyle
>004EB5AF    jmp         004EB5CD
 004EB5B1    mov         eax,dword ptr [ebp-4]
 004EB5B4    mov         al,byte ptr [eax+229];TCustomForm.FBorderStyle:TFormBorderStyle
 004EB5BA    mov         edx,dword ptr [ebp-4]
 004EB5BD    mov         byte ptr [edx+280],al;TCustomForm.FSavedBorderStyle:TFormBorderStyle
 004EB5C3    mov         eax,dword ptr [ebp-4]
 004EB5C6    mov         byte ptr [eax+229],0;TCustomForm.FBorderStyle:TFormBorderStyle
 004EB5CD    mov         ecx,dword ptr [ebp-0C]
 004EB5D0    mov         edx,dword ptr [ebp-8]
 004EB5D3    mov         eax,dword ptr [ebp-4]
 004EB5D6    call        TControl.sub_004CA5A8
 004EB5DB    mov         esp,ebp
 004EB5DD    pop         ebp
 004EB5DE    ret
end;*}

//004EB5E0
{*function sub_004EB5E0(?:TCustomForm):?;
begin
 004EB5E0    push        ebp
 004EB5E1    mov         ebp,esp
 004EB5E3    add         esp,0FFFFFFF8
 004EB5E6    mov         dword ptr [ebp-4],eax
 004EB5E9    xor         eax,eax
 004EB5EB    mov         dword ptr [ebp-8],eax
 004EB5EE    mov         eax,dword ptr [ebp-4]
 004EB5F1    cmp         byte ptr [eax+22F],2;TCustomForm.FFormStyle:TFormStyle
>004EB5F8    jne         004EB626
 004EB5FA    mov         eax,dword ptr [ebp-4]
 004EB5FD    cmp         dword ptr [eax+254],0;TCustomForm.FClientHandle:HWND
>004EB604    je          004EB626
 004EB606    push        0
 004EB608    push        0
 004EB60A    push        229
 004EB60F    mov         eax,dword ptr [ebp-4]
 004EB612    mov         eax,dword ptr [eax+254];TCustomForm.FClientHandle:HWND
 004EB618    push        eax
 004EB619    call        user32.SendMessageA
 004EB61E    call        004C6F7C
 004EB623    mov         dword ptr [ebp-8],eax
 004EB626    mov         eax,dword ptr [ebp-8]
 004EB629    pop         ecx
 004EB62A    pop         ecx
 004EB62B    pop         ebp
 004EB62C    ret
end;*}

//004EB630
function TCustomForm.GetMDIChildCount:Integer;
begin
{*
 004EB630    push        ebp
 004EB631    mov         ebp,esp
 004EB633    add         esp,0FFFFFFF0
 004EB636    mov         dword ptr [ebp-4],eax
 004EB639    xor         eax,eax
 004EB63B    mov         dword ptr [ebp-8],eax
 004EB63E    mov         eax,dword ptr [ebp-4]
 004EB641    cmp         byte ptr [eax+22F],2
>004EB648    jne         004EB691
 004EB64A    mov         eax,dword ptr [ebp-4]
 004EB64D    cmp         dword ptr [eax+254],0
>004EB654    je          004EB691
 004EB656    mov         eax,[0055DE50];Screen:TScreen
 004EB65B    call        004F013C
 004EB660    dec         eax
 004EB661    test        eax,eax
>004EB663    jl          004EB691
 004EB665    inc         eax
 004EB666    mov         dword ptr [ebp-10],eax
 004EB669    mov         dword ptr [ebp-0C],0
 004EB670    mov         edx,dword ptr [ebp-0C]
 004EB673    mov         eax,[0055DE50];Screen:TScreen
 004EB678    call        004F0118
 004EB67D    cmp         byte ptr [eax+22F],1
>004EB684    jne         004EB689
 004EB686    inc         dword ptr [ebp-8]
 004EB689    inc         dword ptr [ebp-0C]
 004EB68C    dec         dword ptr [ebp-10]
>004EB68F    jne         004EB670
 004EB691    mov         eax,dword ptr [ebp-8]
 004EB694    mov         esp,ebp
 004EB696    pop         ebp
 004EB697    ret
*}
end;

//004EB698
{*function sub_004EB698(?:TCustomForm; ?:?):?;
begin
 004EB698    push        ebp
 004EB699    mov         ebp,esp
 004EB69B    add         esp,0FFFFFFEC
 004EB69E    mov         dword ptr [ebp-8],edx
 004EB6A1    mov         dword ptr [ebp-4],eax
 004EB6A4    mov         eax,dword ptr [ebp-4]
 004EB6A7    cmp         byte ptr [eax+22F],2
>004EB6AE    jne         004EB703
 004EB6B0    mov         eax,dword ptr [ebp-4]
 004EB6B3    cmp         dword ptr [eax+254],0
>004EB6BA    je          004EB703
 004EB6BC    mov         eax,[0055DE50];Screen:TScreen
 004EB6C1    call        004F013C
 004EB6C6    dec         eax
 004EB6C7    test        eax,eax
>004EB6C9    jl          004EB703
 004EB6CB    inc         eax
 004EB6CC    mov         dword ptr [ebp-14],eax
 004EB6CF    mov         dword ptr [ebp-10],0
 004EB6D6    mov         edx,dword ptr [ebp-10]
 004EB6D9    mov         eax,[0055DE50];Screen:TScreen
 004EB6DE    call        004F0118
 004EB6E3    mov         dword ptr [ebp-0C],eax
 004EB6E6    mov         eax,dword ptr [ebp-0C]
 004EB6E9    cmp         byte ptr [eax+22F],1
>004EB6F0    jne         004EB6FB
 004EB6F2    dec         dword ptr [ebp-8]
 004EB6F5    cmp         dword ptr [ebp-8],0
>004EB6F9    jl          004EB708
 004EB6FB    inc         dword ptr [ebp-10]
 004EB6FE    dec         dword ptr [ebp-14]
>004EB701    jne         004EB6D6
 004EB703    xor         eax,eax
 004EB705    mov         dword ptr [ebp-0C],eax
 004EB708    mov         eax,dword ptr [ebp-0C]
 004EB70B    mov         esp,ebp
 004EB70D    pop         ebp
 004EB70E    ret
end;*}

//004EB710
{*function sub_004EB710(?:?; ?:?):?;
begin
 004EB710    push        ebp
 004EB711    mov         ebp,esp
 004EB713    add         esp,0FFFFFFF4
 004EB716    mov         eax,dword ptr [ebp+14]
 004EB719    mov         dword ptr [ebp-8],eax
 004EB71C    mov         dl,1
 004EB71E    mov         eax,[004E7680];TMonitor
 004EB723    call        TObject.Create;TMonitor.Create
 004EB728    mov         dword ptr [ebp-0C],eax
 004EB72B    mov         eax,dword ptr [ebp+8]
 004EB72E    mov         edx,dword ptr [ebp-0C]
 004EB731    mov         dword ptr [edx+4],eax;TMonitor.FHandle:HMONITOR
 004EB734    mov         eax,dword ptr [ebp-8]
 004EB737    mov         eax,dword ptr [eax+8]
 004EB73A    mov         edx,dword ptr [ebp-0C]
 004EB73D    mov         dword ptr [edx+8],eax;TMonitor.FMonitorNum:Integer
 004EB740    mov         edx,dword ptr [ebp-0C]
 004EB743    mov         eax,dword ptr [ebp-8]
 004EB746    call        TList.Add
 004EB74B    mov         byte ptr [ebp-1],1
 004EB74F    mov         al,byte ptr [ebp-1]
 004EB752    mov         esp,ebp
 004EB754    pop         ebp
 004EB755    ret         10
end;*}

//004EB758
{*function sub_004EB758(?:TCustomForm):?;
begin
 004EB758    push        ebp
 004EB759    mov         ebp,esp
 004EB75B    add         esp,0FFFFFFEC
 004EB75E    mov         dword ptr [ebp-4],eax
 004EB761    xor         eax,eax
 004EB763    mov         dword ptr [ebp-8],eax
 004EB766    push        2
 004EB768    mov         eax,dword ptr [ebp-4]
 004EB76B    call        TWinControl.GetHandle
 004EB770    push        eax
 004EB771    mov         eax,[0055B38C];^gvar_0055DB7C
 004EB776    mov         eax,dword ptr [eax]
 004EB778    call        eax
 004EB77A    mov         dword ptr [ebp-0C],eax
 004EB77D    mov         eax,[0055DE50];Screen:TScreen
 004EB782    call        004F00E0
 004EB787    dec         eax
 004EB788    test        eax,eax
>004EB78A    jl          004EB7C9
 004EB78C    inc         eax
 004EB78D    mov         dword ptr [ebp-14],eax
 004EB790    mov         dword ptr [ebp-10],0
 004EB797    mov         edx,dword ptr [ebp-10]
 004EB79A    mov         eax,[0055DE50];Screen:TScreen
 004EB79F    call        004F00BC
 004EB7A4    mov         eax,dword ptr [eax+4]
 004EB7A7    cmp         eax,dword ptr [ebp-0C]
>004EB7AA    jne         004EB7C1
 004EB7AC    mov         edx,dword ptr [ebp-10]
 004EB7AF    mov         eax,[0055DE50];Screen:TScreen
 004EB7B4    call        004F00BC
 004EB7B9    mov         dword ptr [ebp-8],eax
>004EB7BC    jmp         004EB872
 004EB7C1    inc         dword ptr [ebp-10]
 004EB7C4    dec         dword ptr [ebp-14]
>004EB7C7    jne         004EB797
 004EB7C9    mov         eax,[0055DE50];Screen:TScreen
 004EB7CE    call        004F00E0
 004EB7D3    dec         eax
 004EB7D4    test        eax,eax
>004EB7D6    jl          004EB800
 004EB7D8    inc         eax
 004EB7D9    mov         dword ptr [ebp-14],eax
 004EB7DC    mov         dword ptr [ebp-10],0
 004EB7E3    mov         eax,[0055DE50];Screen:TScreen
 004EB7E8    mov         eax,dword ptr [eax+58]
 004EB7EB    mov         edx,dword ptr [ebp-10]
 004EB7EE    call        TList.Get
 004EB7F3    call        TObject.Free
 004EB7F8    inc         dword ptr [ebp-10]
 004EB7FB    dec         dword ptr [ebp-14]
>004EB7FE    jne         004EB7E3
 004EB800    mov         eax,[0055DE50];Screen:TScreen
 004EB805    mov         eax,dword ptr [eax+58]
 004EB808    mov         edx,dword ptr [eax]
 004EB80A    call        dword ptr [edx+8]
 004EB80D    mov         eax,[0055DE50];Screen:TScreen
 004EB812    mov         eax,dword ptr [eax+58]
 004EB815    push        eax
 004EB816    mov         eax,4EB710;sub_004EB710
 004EB81B    push        eax
 004EB81C    push        0
 004EB81E    push        0
 004EB820    mov         eax,[0055B404];^gvar_0055DB94
 004EB825    mov         eax,dword ptr [eax]
 004EB827    call        eax
 004EB829    mov         eax,[0055DE50];Screen:TScreen
 004EB82E    call        004F00E0
 004EB833    dec         eax
 004EB834    test        eax,eax
>004EB836    jl          004EB872
 004EB838    inc         eax
 004EB839    mov         dword ptr [ebp-14],eax
 004EB83C    mov         dword ptr [ebp-10],0
 004EB843    mov         edx,dword ptr [ebp-10]
 004EB846    mov         eax,[0055DE50];Screen:TScreen
 004EB84B    call        004F00BC
 004EB850    mov         eax,dword ptr [eax+4]
 004EB853    cmp         eax,dword ptr [ebp-0C]
>004EB856    jne         004EB86A
 004EB858    mov         edx,dword ptr [ebp-10]
 004EB85B    mov         eax,[0055DE50];Screen:TScreen
 004EB860    call        004F00BC
 004EB865    mov         dword ptr [ebp-8],eax
>004EB868    jmp         004EB872
 004EB86A    inc         dword ptr [ebp-10]
 004EB86D    dec         dword ptr [ebp-14]
>004EB870    jne         004EB843
 004EB872    mov         eax,dword ptr [ebp-8]
 004EB875    mov         esp,ebp
 004EB877    pop         ebp
 004EB878    ret
end;*}

//004EB87C
{*function sub_004EB87C(?:TCustomForm):?;
begin
 004EB87C    push        ebp
 004EB87D    mov         ebp,esp
 004EB87F    add         esp,0FFFFFFF8
 004EB882    mov         dword ptr [ebp-4],eax
 004EB885    mov         eax,dword ptr [ebp-4]
 004EB888    mov         eax,dword ptr [eax+238];TCustomForm.FCanvas:TControlCanvas
 004EB88E    mov         dword ptr [ebp-8],eax
 004EB891    mov         eax,dword ptr [ebp-8]
 004EB894    pop         ecx
 004EB895    pop         ecx
 004EB896    pop         ebp
 004EB897    ret
end;*}

//004EB898
procedure TForm.SetIcon(Value:TIcon);
begin
{*
 004EB898    push        ebp
 004EB899    mov         ebp,esp
 004EB89B    add         esp,0FFFFFFF8
 004EB89E    mov         dword ptr [ebp-8],edx
 004EB8A1    mov         dword ptr [ebp-4],eax
 004EB8A4    mov         edx,dword ptr [ebp-8]
 004EB8A7    mov         eax,dword ptr [ebp-4]
 004EB8AA    mov         eax,dword ptr [eax+240];TForm.FIcon:TIcon
 004EB8B0    mov         ecx,dword ptr [eax]
 004EB8B2    call        dword ptr [ecx+8];TIcon.sub_0048F0C8
 004EB8B5    pop         ecx
 004EB8B6    pop         ecx
 004EB8B7    pop         ebp
 004EB8B8    ret
*}
end;

//004EB8BC
function TForm.IsStoredActiveControl(Value:TPersistent):Boolean;
begin
{*
 004EB8BC    push        ebp
 004EB8BD    mov         ebp,esp
 004EB8BF    add         esp,0FFFFFFF8
 004EB8C2    mov         dword ptr [ebp-4],eax
 004EB8C5    mov         eax,dword ptr [ebp-4]
 004EB8C8    mov         al,byte ptr [eax+5E];TForm.FIsControl:Boolean
 004EB8CB    xor         al,1
 004EB8CD    mov         byte ptr [ebp-5],al
 004EB8D0    mov         al,byte ptr [ebp-5]
 004EB8D3    pop         ecx
 004EB8D4    pop         ecx
 004EB8D5    pop         ebp
 004EB8D6    ret
*}
end;

//004EB8D8
function TForm.IsStoredIcon(Value:TIcon):Boolean;
begin
{*
 004EB8D8    push        ebp
 004EB8D9    mov         ebp,esp
 004EB8DB    add         esp,0FFFFFFF8
 004EB8DE    mov         dword ptr [ebp-4],eax
 004EB8E1    mov         eax,dword ptr [ebp-4]
 004EB8E4    call        TForm.IsStoredActiveControl
 004EB8E9    test        al,al
>004EB8EB    je          004EB8FF
 004EB8ED    mov         eax,dword ptr [ebp-4]
 004EB8F0    mov         eax,dword ptr [eax+240];TForm.FIcon:TIcon
 004EB8F6    call        0048F1C8
 004EB8FB    test        eax,eax
>004EB8FD    jne         004EB903
 004EB8FF    xor         eax,eax
>004EB901    jmp         004EB905
 004EB903    mov         al,1
 004EB905    mov         byte ptr [ebp-5],al
 004EB908    mov         al,byte ptr [ebp-5]
 004EB90B    pop         ecx
 004EB90C    pop         ecx
 004EB90D    pop         ebp
 004EB90E    ret
*}
end;

//004EB910
procedure TForm.SetFormStyle(Value:TFormStyle);
begin
{*
 004EB910    push        ebp
 004EB911    mov         ebp,esp
 004EB913    add         esp,0FFFFFFF8
 004EB916    mov         byte ptr [ebp-5],dl
 004EB919    mov         dword ptr [ebp-4],eax
 004EB91C    mov         eax,dword ptr [ebp-4]
 004EB91F    mov         al,byte ptr [eax+22F];TForm.FFormStyle:TFormStyle
 004EB925    cmp         al,byte ptr [ebp-5]
>004EB928    je          004EB9BE
 004EB92E    cmp         byte ptr [ebp-5],1
>004EB932    jne         004EB94A
 004EB934    mov         eax,dword ptr [ebp-4]
 004EB937    cmp         byte ptr [eax+230],0;TForm.FPosition:TPosition
>004EB93E    jne         004EB94A
 004EB940    mov         dl,1
 004EB942    mov         eax,dword ptr [ebp-4]
 004EB945    call        TForm.SetPosition
 004EB94A    mov         eax,dword ptr [ebp-4]
 004EB94D    test        byte ptr [eax+1C],10;TForm.FComponentState:TComponentState
>004EB951    jne         004EB95B
 004EB953    mov         eax,dword ptr [ebp-4]
 004EB956    call        004D00C4
 004EB95B    mov         eax,dword ptr [ebp-4]
 004EB95E    mov         al,byte ptr [eax+22F];TForm.FFormStyle:TFormStyle
 004EB964    mov         byte ptr [ebp-6],al
 004EB967    mov         al,byte ptr [ebp-5]
 004EB96A    mov         edx,dword ptr [ebp-4]
 004EB96D    mov         byte ptr [edx+22F],al;TForm.FFormStyle:TFormStyle
 004EB973    cmp         byte ptr [ebp-5],2
>004EB977    je          004EB97F
 004EB979    cmp         byte ptr [ebp-6],2
>004EB97D    jne         004EB99D
 004EB97F    mov         eax,dword ptr [ebp-4]
 004EB982    cmp         byte ptr [eax+1A5],0;TForm.FCtl3D:Boolean
>004EB989    jne         004EB99D
 004EB98B    mov         eax,dword ptr [ebp-4]
 004EB98E    call        004EBE80
 004EB993    mov         edx,eax
 004EB995    mov         eax,dword ptr [ebp-4]
 004EB998    call        TPanel.SetColor
 004EB99D    mov         eax,dword ptr [ebp-4]
 004EB9A0    test        byte ptr [eax+1C],10;TForm.FComponentState:TComponentState
>004EB9A4    jne         004EB9AE
 004EB9A6    mov         eax,dword ptr [ebp-4]
 004EB9A9    call        004D02BC
 004EB9AE    cmp         byte ptr [ebp-5],1
>004EB9B2    jne         004EB9BE
 004EB9B4    mov         dl,1
 004EB9B6    mov         eax,dword ptr [ebp-4]
 004EB9B9    call        TCustomForm.SetVisible
 004EB9BE    pop         ecx
 004EB9BF    pop         ecx
 004EB9C0    pop         ebp
 004EB9C1    ret
*}
end;

//004EB9C4
procedure sub_004EB9C4(?:TCustomForm);
begin
{*
 004EB9C4    push        ebp
 004EB9C5    mov         ebp,esp
 004EB9C7    add         esp,0FFFFFFF0
 004EB9CA    mov         dword ptr [ebp-4],eax
 004EB9CD    mov         eax,dword ptr [ebp-4]
 004EB9D0    cmp         byte ptr [eax+22F],2
>004EB9D7    jne         004EBA76
 004EB9DD    mov         eax,dword ptr [ebp-4]
 004EB9E0    cmp         dword ptr [eax+254],0
>004EB9E7    je          004EBA76
 004EB9ED    xor         eax,eax
 004EB9EF    mov         dword ptr [ebp-8],eax
 004EB9F2    mov         eax,dword ptr [ebp-4]
 004EB9F5    cmp         dword ptr [eax+248],0
>004EB9FC    je          004EBA0F
 004EB9FE    mov         eax,dword ptr [ebp-4]
 004EBA01    mov         eax,dword ptr [eax+248]
 004EBA07    mov         edx,dword ptr [eax]
 004EBA09    call        dword ptr [edx+34]
 004EBA0C    mov         dword ptr [ebp-8],eax
 004EBA0F    xor         eax,eax
 004EBA11    mov         dword ptr [ebp-0C],eax
 004EBA14    mov         eax,dword ptr [ebp-4]
 004EBA17    cmp         dword ptr [eax+258],0
>004EBA1E    je          004EBA31
 004EBA20    mov         eax,dword ptr [ebp-4]
 004EBA23    mov         eax,dword ptr [eax+258]
 004EBA29    call        004E0340
 004EBA2E    mov         dword ptr [ebp-0C],eax
 004EBA31    mov         eax,dword ptr [ebp-4]
 004EBA34    call        TWinControl.GetHandle
 004EBA39    push        eax
 004EBA3A    call        user32.GetMenu
 004EBA3F    cmp         eax,dword ptr [ebp-8]
 004EBA42    setne       byte ptr [ebp-0D]
 004EBA46    mov         eax,dword ptr [ebp-0C]
 004EBA49    push        eax
 004EBA4A    mov         eax,dword ptr [ebp-8]
 004EBA4D    push        eax
 004EBA4E    push        230
 004EBA53    mov         eax,dword ptr [ebp-4]
 004EBA56    mov         eax,dword ptr [eax+254]
 004EBA5C    push        eax
 004EBA5D    call        user32.SendMessageA
 004EBA62    cmp         byte ptr [ebp-0D],0
>004EBA66    je          004EBA76
 004EBA68    mov         eax,dword ptr [ebp-4]
 004EBA6B    call        TWinControl.GetHandle
 004EBA70    push        eax
 004EBA71    call        user32.DrawMenuBar
 004EBA76    mov         esp,ebp
 004EBA78    pop         ebp
 004EBA79    ret
*}
end;

//004EBA7C
procedure TForm.SetObjectMenuItem(Value:TMenuItem);
begin
{*
 004EBA7C    push        ebp
 004EBA7D    mov         ebp,esp
 004EBA7F    add         esp,0FFFFFFF8
 004EBA82    mov         dword ptr [ebp-8],edx
 004EBA85    mov         dword ptr [ebp-4],eax
 004EBA88    mov         eax,dword ptr [ebp-8]
 004EBA8B    mov         edx,dword ptr [ebp-4]
 004EBA8E    mov         dword ptr [edx+260],eax;TForm.FObjectMenuItem:TMenuItem
 004EBA94    cmp         dword ptr [ebp-8],0
>004EBA98    je          004EBAAF
 004EBA9A    mov         edx,dword ptr [ebp-4]
 004EBA9D    mov         eax,dword ptr [ebp-8]
 004EBAA0    call        00483020
 004EBAA5    xor         edx,edx
 004EBAA7    mov         eax,dword ptr [ebp-8]
 004EBAAA    call        TMenuItem.SetEnabled
 004EBAAF    pop         ecx
 004EBAB0    pop         ecx
 004EBAB1    pop         ebp
 004EBAB2    ret
*}
end;

//004EBAB4
procedure TForm.SetWindowMenu(Value:TMenuItem);
begin
{*
 004EBAB4    push        ebp
 004EBAB5    mov         ebp,esp
 004EBAB7    add         esp,0FFFFFFF8
 004EBABA    mov         dword ptr [ebp-8],edx
 004EBABD    mov         dword ptr [ebp-4],eax
 004EBAC0    mov         eax,dword ptr [ebp-4]
 004EBAC3    mov         eax,dword ptr [eax+258];TForm.FWindowMenu:TMenuItem
 004EBAC9    cmp         eax,dword ptr [ebp-8]
>004EBACC    je          004EBAF3
 004EBACE    mov         eax,dword ptr [ebp-8]
 004EBAD1    mov         edx,dword ptr [ebp-4]
 004EBAD4    mov         dword ptr [edx+258],eax;TForm.FWindowMenu:TMenuItem
 004EBADA    cmp         dword ptr [ebp-8],0
>004EBADE    je          004EBAEB
 004EBAE0    mov         edx,dword ptr [ebp-4]
 004EBAE3    mov         eax,dword ptr [ebp-8]
 004EBAE6    call        00483020
 004EBAEB    mov         eax,dword ptr [ebp-4]
 004EBAEE    call        004EB9C4
 004EBAF3    pop         ecx
 004EBAF4    pop         ecx
 004EBAF5    pop         ebp
 004EBAF6    ret
*}
end;

//004EBAF8
procedure TForm.SetMenu(Value:TComponent);
begin
{*
 004EBAF8    push        ebp
 004EBAF9    mov         ebp,esp
 004EBAFB    add         esp,0FFFFFFE4
 004EBAFE    push        ebx
 004EBAFF    xor         ecx,ecx
 004EBB01    mov         dword ptr [ebp-1C],ecx
 004EBB04    mov         dword ptr [ebp-8],edx
 004EBB07    mov         dword ptr [ebp-4],eax
 004EBB0A    xor         eax,eax
 004EBB0C    push        ebp
 004EBB0D    push        4EBD1C
 004EBB12    push        dword ptr fs:[eax]
 004EBB15    mov         dword ptr fs:[eax],esp
 004EBB18    cmp         dword ptr [ebp-8],0
>004EBB1C    je          004EBBA2
 004EBB22    mov         eax,[0055DE50];Screen:TScreen
 004EBB27    call        004F013C
 004EBB2C    dec         eax
 004EBB2D    test        eax,eax
>004EBB2F    jl          004EBBA2
 004EBB31    inc         eax
 004EBB32    mov         dword ptr [ebp-10],eax
 004EBB35    mov         dword ptr [ebp-0C],0
 004EBB3C    mov         edx,dword ptr [ebp-0C]
 004EBB3F    mov         eax,[0055DE50];Screen:TScreen
 004EBB44    call        004F0118
 004EBB49    mov         eax,dword ptr [eax+248]
 004EBB4F    cmp         eax,dword ptr [ebp-8]
>004EBB52    jne         004EBB9A
 004EBB54    mov         edx,dword ptr [ebp-0C]
 004EBB57    mov         eax,[0055DE50];Screen:TScreen
 004EBB5C    call        004F0118
 004EBB61    cmp         eax,dword ptr [ebp-4]
>004EBB64    je          004EBB9A
 004EBB66    mov         eax,dword ptr [ebp-8]
 004EBB69    mov         eax,dword ptr [eax+8];TComponent.Name:TComponentName
 004EBB6C    mov         dword ptr [ebp-18],eax
 004EBB6F    mov         byte ptr [ebp-14],0B
 004EBB73    lea         eax,[ebp-18]
 004EBB76    push        eax
 004EBB77    push        0
 004EBB79    lea         edx,[ebp-1C]
 004EBB7C    mov         eax,[0055B230];^SDuplicateMenus:TResStringRec
 004EBB81    call        LoadResString
 004EBB86    mov         ecx,dword ptr [ebp-1C]
 004EBB89    mov         dl,1
 004EBB8B    mov         eax,[00475960];EInvalidOperation
 004EBB90    call        Exception.CreateFmt;EInvalidOperation.Create
 004EBB95    call        @RaiseExcept
 004EBB9A    inc         dword ptr [ebp-0C]
 004EBB9D    dec         dword ptr [ebp-10]
>004EBBA0    jne         004EBB3C
 004EBBA2    mov         eax,dword ptr [ebp-4]
 004EBBA5    cmp         dword ptr [eax+248],0;TForm.FMenu:TMainMenu
>004EBBAC    je          004EBBBE
 004EBBAE    xor         edx,edx
 004EBBB0    mov         eax,dword ptr [ebp-4]
 004EBBB3    mov         eax,dword ptr [eax+248];TForm.FMenu:TMainMenu
 004EBBB9    call        004E4338
 004EBBBE    mov         eax,dword ptr [ebp-4]
 004EBBC1    test        byte ptr [eax+1C],8;TForm.FComponentState:TComponentState
>004EBBC5    jne         004EBBD6
 004EBBC7    cmp         dword ptr [ebp-8],0
>004EBBCB    je          004EBBDB
 004EBBCD    mov         eax,dword ptr [ebp-8]
 004EBBD0    test        byte ptr [eax+1C],8;TComponent.FComponentState:TComponentState
>004EBBD4    je          004EBBDB
 004EBBD6    xor         eax,eax
 004EBBD8    mov         dword ptr [ebp-8],eax
 004EBBDB    mov         eax,dword ptr [ebp-8]
 004EBBDE    mov         edx,dword ptr [ebp-4]
 004EBBE1    mov         dword ptr [edx+248],eax;TForm.FMenu:TMainMenu
 004EBBE7    cmp         dword ptr [ebp-8],0
>004EBBEB    je          004EBBF8
 004EBBED    mov         edx,dword ptr [ebp-4]
 004EBBF0    mov         eax,dword ptr [ebp-8]
 004EBBF3    call        00483020
 004EBBF8    cmp         dword ptr [ebp-8],0
>004EBBFC    je          004EBCCC
 004EBC02    mov         eax,dword ptr [ebp-4]
 004EBC05    test        byte ptr [eax+1C],10;TForm.FComponentState:TComponentState
>004EBC09    jne         004EBC1B
 004EBC0B    mov         eax,dword ptr [ebp-4]
 004EBC0E    cmp         byte ptr [eax+229],3;TForm.FBorderStyle:TFormBorderStyle
>004EBC15    je          004EBCCC
 004EBC1B    mov         eax,dword ptr [ebp-4]
 004EBC1E    mov         eax,dword ptr [eax+248];TForm.FMenu:TMainMenu
 004EBC24    cmp         byte ptr [eax+5C],0;TMainMenu.AutoMerge:Boolean
>004EBC28    jne         004EBC36
 004EBC2A    mov         eax,dword ptr [ebp-4]
 004EBC2D    cmp         byte ptr [eax+22F],1;TForm.FFormStyle:TFormStyle
>004EBC34    jne         004EBC3F
 004EBC36    mov         eax,dword ptr [ebp-4]
 004EBC39    test        byte ptr [eax+1C],10;TForm.FComponentState:TComponentState
>004EBC3D    je          004EBCA2
 004EBC3F    mov         eax,dword ptr [ebp-4]
 004EBC42    call        TWinControl.HandleAllocated
 004EBC47    test        al,al
>004EBC49    je          004EBCE8
 004EBC4F    mov         eax,dword ptr [ebp-4]
 004EBC52    mov         eax,dword ptr [eax+248];TForm.FMenu:TMainMenu
 004EBC58    mov         edx,dword ptr [eax]
 004EBC5A    call        dword ptr [edx+34];TMainMenu.sub_004E4C54
 004EBC5D    mov         ebx,eax
 004EBC5F    mov         eax,dword ptr [ebp-4]
 004EBC62    call        TWinControl.GetHandle
 004EBC67    push        eax
 004EBC68    call        user32.GetMenu
 004EBC6D    cmp         ebx,eax
>004EBC6F    je          004EBC8E
 004EBC71    mov         eax,dword ptr [ebp-4]
 004EBC74    mov         eax,dword ptr [eax+248];TForm.FMenu:TMainMenu
 004EBC7A    mov         edx,dword ptr [eax]
 004EBC7C    call        dword ptr [edx+34];TMainMenu.sub_004E4C54
 004EBC7F    push        eax
 004EBC80    mov         eax,dword ptr [ebp-4]
 004EBC83    call        TWinControl.GetHandle
 004EBC88    push        eax
 004EBC89    call        user32.SetMenu
 004EBC8E    mov         eax,dword ptr [ebp-4]
 004EBC91    call        TWinControl.GetHandle
 004EBC96    mov         edx,eax
 004EBC98    mov         eax,dword ptr [ebp-8]
 004EBC9B    call        004E4338
>004EBCA0    jmp         004EBCE8
 004EBCA2    mov         eax,dword ptr [ebp-4]
 004EBCA5    cmp         byte ptr [eax+22F],1;TForm.FFormStyle:TFormStyle
>004EBCAC    je          004EBCE8
 004EBCAE    mov         eax,dword ptr [ebp-4]
 004EBCB1    call        TWinControl.HandleAllocated
 004EBCB6    test        al,al
>004EBCB8    je          004EBCE8
 004EBCBA    push        0
 004EBCBC    mov         eax,dword ptr [ebp-4]
 004EBCBF    call        TWinControl.GetHandle
 004EBCC4    push        eax
 004EBCC5    call        user32.SetMenu
>004EBCCA    jmp         004EBCE8
 004EBCCC    mov         eax,dword ptr [ebp-4]
 004EBCCF    call        TWinControl.HandleAllocated
 004EBCD4    test        al,al
>004EBCD6    je          004EBCE8
 004EBCD8    push        0
 004EBCDA    mov         eax,dword ptr [ebp-4]
 004EBCDD    call        TWinControl.GetHandle
 004EBCE2    push        eax
 004EBCE3    call        user32.SetMenu
 004EBCE8    mov         eax,dword ptr [ebp-4]
 004EBCEB    cmp         byte ptr [eax+22E],0;TForm.FActive:Boolean
>004EBCF2    je          004EBCFE
 004EBCF4    mov         dl,1
 004EBCF6    mov         eax,dword ptr [ebp-4]
 004EBCF9    call        TCustomForm.MergeMenu
 004EBCFE    mov         eax,dword ptr [ebp-4]
 004EBD01    call        004EB9C4
 004EBD06    xor         eax,eax
 004EBD08    pop         edx
 004EBD09    pop         ecx
 004EBD0A    pop         ecx
 004EBD0B    mov         dword ptr fs:[eax],edx
 004EBD0E    push        4EBD23
 004EBD13    lea         eax,[ebp-1C]
 004EBD16    call        @LStrClr
 004EBD1B    ret
>004EBD1C    jmp         @HandleFinally
>004EBD21    jmp         004EBD13
 004EBD23    pop         ebx
 004EBD24    mov         esp,ebp
 004EBD26    pop         ebp
 004EBD27    ret
*}
end;

//004EBD28
{*function TForm.GetPixelsPerInch:?;
begin
 004EBD28    push        ebp
 004EBD29    mov         ebp,esp
 004EBD2B    add         esp,0FFFFFFF8
 004EBD2E    mov         dword ptr [ebp-4],eax
 004EBD31    mov         eax,dword ptr [ebp-4]
 004EBD34    mov         eax,dword ptr [eax+25C];TForm.FPixelsPerInch:Integer
 004EBD3A    mov         dword ptr [ebp-8],eax
 004EBD3D    cmp         dword ptr [ebp-8],0
>004EBD41    jne         004EBD4E
 004EBD43    mov         eax,[0055DE50];Screen:TScreen
 004EBD48    mov         eax,dword ptr [eax+40]
 004EBD4B    mov         dword ptr [ebp-8],eax
 004EBD4E    mov         eax,dword ptr [ebp-8]
 004EBD51    pop         ecx
 004EBD52    pop         ecx
 004EBD53    pop         ebp
 004EBD54    ret
end;*}

//004EBD58
procedure TForm.SetPixelsPerInch(Value:Integer);
begin
{*
 004EBD58    push        ebp
 004EBD59    mov         ebp,esp
 004EBD5B    add         esp,0FFFFFFF8
 004EBD5E    mov         dword ptr [ebp-8],edx
 004EBD61    mov         dword ptr [ebp-4],eax
 004EBD64    mov         eax,dword ptr [ebp-4]
 004EBD67    call        TForm.GetPixelsPerInch
 004EBD6C    cmp         eax,dword ptr [ebp-8]
>004EBD6F    je          004EBD9E
 004EBD71    cmp         dword ptr [ebp-8],0
>004EBD75    je          004EBD7D
 004EBD77    cmp         dword ptr [ebp-8],24
>004EBD7B    jl          004EBD9E
 004EBD7D    mov         eax,dword ptr [ebp-4]
 004EBD80    test        byte ptr [eax+1C],1;TForm.FComponentState:TComponentState
>004EBD84    je          004EBD92
 004EBD86    mov         eax,dword ptr [ebp-4]
 004EBD89    cmp         dword ptr [eax+25C],0;TForm.FPixelsPerInch:Integer
>004EBD90    je          004EBD9E
 004EBD92    mov         eax,dword ptr [ebp-8]
 004EBD95    mov         edx,dword ptr [ebp-4]
 004EBD98    mov         dword ptr [edx+25C],eax;TForm.FPixelsPerInch:Integer
 004EBD9E    pop         ecx
 004EBD9F    pop         ecx
 004EBDA0    pop         ebp
 004EBDA1    ret
*}
end;

//004EBDA4
procedure TForm.SetPosition(Value:TPosition);
begin
{*
 004EBDA4    push        ebp
 004EBDA5    mov         ebp,esp
 004EBDA7    add         esp,0FFFFFFF8
 004EBDAA    mov         byte ptr [ebp-5],dl
 004EBDAD    mov         dword ptr [ebp-4],eax
 004EBDB0    mov         eax,dword ptr [ebp-4]
 004EBDB3    mov         al,byte ptr [eax+230];TForm.FPosition:TPosition
 004EBDB9    cmp         al,byte ptr [ebp-5]
>004EBDBC    je          004EBDDB
 004EBDBE    mov         al,byte ptr [ebp-5]
 004EBDC1    mov         edx,dword ptr [ebp-4]
 004EBDC4    mov         byte ptr [edx+230],al;TForm.FPosition:TPosition
 004EBDCA    mov         eax,dword ptr [ebp-4]
 004EBDCD    test        byte ptr [eax+1C],10;TForm.FComponentState:TComponentState
>004EBDD1    jne         004EBDDB
 004EBDD3    mov         eax,dword ptr [ebp-4]
 004EBDD6    call        TWinControl.RecreateWnd
 004EBDDB    pop         ecx
 004EBDDC    pop         ecx
 004EBDDD    pop         ebp
 004EBDDE    ret
*}
end;

//004EBDE0
{*function TForm.GetScaled:?;
begin
 004EBDE0    push        ebp
 004EBDE1    mov         ebp,esp
 004EBDE3    add         esp,0FFFFFFF8
 004EBDE6    mov         dword ptr [ebp-4],eax
 004EBDE9    mov         eax,dword ptr [ebp-4]
 004EBDEC    cmp         dword ptr [eax+25C],0;TForm.FPixelsPerInch:Integer
 004EBDF3    setne       byte ptr [ebp-5]
 004EBDF7    mov         al,byte ptr [ebp-5]
 004EBDFA    pop         ecx
 004EBDFB    pop         ecx
 004EBDFC    pop         ebp
 004EBDFD    ret
end;*}

//004EBE00
procedure TForm.SetScaled(Value:Boolean);
begin
{*
 004EBE00    push        ebp
 004EBE01    mov         ebp,esp
 004EBE03    add         esp,0FFFFFFF8
 004EBE06    mov         byte ptr [ebp-5],dl
 004EBE09    mov         dword ptr [ebp-4],eax
 004EBE0C    mov         eax,dword ptr [ebp-4]
 004EBE0F    call        TForm.GetScaled
 004EBE14    cmp         al,byte ptr [ebp-5]
>004EBE17    je          004EBE3B
 004EBE19    mov         eax,dword ptr [ebp-4]
 004EBE1C    xor         edx,edx
 004EBE1E    mov         dword ptr [eax+25C],edx;TForm.FPixelsPerInch:Integer
 004EBE24    cmp         byte ptr [ebp-5],0
>004EBE28    je          004EBE3B
 004EBE2A    mov         eax,[0055DE50];Screen:TScreen
 004EBE2F    mov         eax,dword ptr [eax+40]
 004EBE32    mov         edx,dword ptr [ebp-4]
 004EBE35    mov         dword ptr [edx+25C],eax;TForm.FPixelsPerInch:Integer
 004EBE3B    pop         ecx
 004EBE3C    pop         ecx
 004EBE3D    pop         ebp
 004EBE3E    ret
*}
end;

//004EBE40
{*procedure TCustomForm.CMColorChanged(?:?);
begin
 004EBE40    push        ebp
 004EBE41    mov         ebp,esp
 004EBE43    add         esp,0FFFFFFF8
 004EBE46    mov         dword ptr [ebp-8],edx
 004EBE49    mov         dword ptr [ebp-4],eax
 004EBE4C    mov         edx,dword ptr [ebp-8]
 004EBE4F    mov         eax,dword ptr [ebp-4]
 004EBE52    call        TWinControl.CMColorChanged
 004EBE57    mov         eax,dword ptr [ebp-4]
 004EBE5A    cmp         dword ptr [eax+238],0;TCustomForm.FCanvas:TControlCanvas
>004EBE61    je          004EBE7A
 004EBE63    mov         eax,dword ptr [ebp-4]
 004EBE66    mov         eax,dword ptr [eax+238];TCustomForm.FCanvas:TControlCanvas
 004EBE6C    mov         eax,dword ptr [eax+14];TControlCanvas.Brush:TBrush
 004EBE6F    mov         edx,dword ptr [ebp-4]
 004EBE72    mov         edx,dword ptr [edx+70];TCustomForm.FColor:TColor
 004EBE75    call        TBrush.SetColor
 004EBE7A    pop         ecx
 004EBE7B    pop         ecx
 004EBE7C    pop         ebp
 004EBE7D    ret
end;*}

//004EBE80
{*function sub_004EBE80(?:TCustomForm):?;
begin
 004EBE80    push        ebp
 004EBE81    mov         ebp,esp
 004EBE83    add         esp,0FFFFFFF8
 004EBE86    mov         dword ptr [ebp-4],eax
 004EBE89    mov         dword ptr [ebp-8],0FF000005
 004EBE90    mov         eax,dword ptr [ebp-4]
 004EBE93    cmp         byte ptr [eax+22F],2;TForm.FFormStyle:TFormStyle
>004EBE9A    jne         004EBEA3
 004EBE9C    mov         dword ptr [ebp-8],0FF00000C
 004EBEA3    mov         eax,dword ptr [ebp-8]
 004EBEA6    pop         ecx
 004EBEA7    pop         ecx
 004EBEA8    pop         ebp
 004EBEA9    ret
end;*}

//004EBEAC
{*procedure TCustomForm.CMCtl3DChanged(?:?);
begin
 004EBEAC    push        ebp
 004EBEAD    mov         ebp,esp
 004EBEAF    add         esp,0FFFFFFF8
 004EBEB2    mov         dword ptr [ebp-8],edx
 004EBEB5    mov         dword ptr [ebp-4],eax
 004EBEB8    mov         edx,dword ptr [ebp-8]
 004EBEBB    mov         eax,dword ptr [ebp-4]
 004EBEBE    call        TWinControl.CMCtl3DChanged
 004EBEC3    mov         eax,dword ptr [ebp-4]
 004EBEC6    cmp         byte ptr [eax+1A5],0;TCustomForm.FCtl3D:Boolean
>004EBECD    je          004EBEEE
 004EBECF    mov         eax,dword ptr [ebp-4]
 004EBED2    call        004EBE80
 004EBED7    mov         edx,dword ptr [ebp-4]
 004EBEDA    cmp         eax,dword ptr [edx+70];TCustomForm.FColor:TColor
>004EBEDD    jne         004EBF0C
 004EBEDF    mov         edx,0FF00000F
 004EBEE4    mov         eax,dword ptr [ebp-4]
 004EBEE7    call        TPanel.SetColor
>004EBEEC    jmp         004EBF0C
 004EBEEE    mov         eax,dword ptr [ebp-4]
 004EBEF1    cmp         dword ptr [eax+70],0FF00000F;TCustomForm.FColor:TColor
>004EBEF8    jne         004EBF0C
 004EBEFA    mov         eax,dword ptr [ebp-4]
 004EBEFD    call        004EBE80
 004EBF02    mov         edx,eax
 004EBF04    mov         eax,dword ptr [ebp-4]
 004EBF07    call        TPanel.SetColor
 004EBF0C    pop         ecx
 004EBF0D    pop         ecx
 004EBF0E    pop         ebp
 004EBF0F    ret
end;*}

//004EBF10
{*procedure TCustomForm.CMFontChanged(?:?);
begin
 004EBF10    push        ebp
 004EBF11    mov         ebp,esp
 004EBF13    add         esp,0FFFFFFF8
 004EBF16    mov         dword ptr [ebp-8],edx
 004EBF19    mov         dword ptr [ebp-4],eax
 004EBF1C    mov         edx,dword ptr [ebp-8]
 004EBF1F    mov         eax,dword ptr [ebp-4]
 004EBF22    call        TWinControl.CMFontChanged
 004EBF27    mov         eax,dword ptr [ebp-4]
 004EBF2A    cmp         dword ptr [eax+238],0;TCustomForm.FCanvas:TControlCanvas
>004EBF31    je          004EBF47
 004EBF33    mov         eax,dword ptr [ebp-4]
 004EBF36    mov         edx,dword ptr [eax+68];TCustomForm.FFont:TFont
 004EBF39    mov         eax,dword ptr [ebp-4]
 004EBF3C    mov         eax,dword ptr [eax+238];TCustomForm.FCanvas:TControlCanvas
 004EBF42    call        TCanvas.SetFont
 004EBF47    pop         ecx
 004EBF48    pop         ecx
 004EBF49    pop         ebp
 004EBF4A    ret
end;*}

//004EBF4C
{*procedure TCustomForm.CMMenuChanged(?:?);
begin
 004EBF4C    push        ebp
 004EBF4D    mov         ebp,esp
 004EBF4F    add         esp,0FFFFFFF8
 004EBF52    mov         dword ptr [ebp-8],edx
 004EBF55    mov         dword ptr [ebp-4],eax
 004EBF58    mov         eax,dword ptr [ebp-4]
 004EBF5B    call        004EB9C4
 004EBF60    mov         eax,dword ptr [ebp-4]
 004EBF63    mov         edx,dword ptr [eax+248];TCustomForm.FMenu:TMainMenu
 004EBF69    mov         eax,dword ptr [ebp-4]
 004EBF6C    call        TForm.SetMenu
 004EBF71    pop         ecx
 004EBF72    pop         ecx
 004EBF73    pop         ebp
 004EBF74    ret
end;*}

//004EBF78
procedure TForm.SetWindowState(Value:TWindowState);
begin
{*
 004EBF78    push        ebp
 004EBF79    mov         ebp,esp
 004EBF7B    add         esp,0FFFFFFF8
 004EBF7E    mov         byte ptr [ebp-5],dl
 004EBF81    mov         dword ptr [ebp-4],eax
 004EBF84    mov         eax,dword ptr [ebp-4]
 004EBF87    mov         al,byte ptr [eax+22B];TForm.FWindowState:TWindowState
 004EBF8D    cmp         al,byte ptr [ebp-5]
>004EBF90    je          004EBFCE
 004EBF92    mov         al,byte ptr [ebp-5]
 004EBF95    mov         edx,dword ptr [ebp-4]
 004EBF98    mov         byte ptr [edx+22B],al;TForm.FWindowState:TWindowState
 004EBF9E    mov         eax,dword ptr [ebp-4]
 004EBFA1    test        byte ptr [eax+1C],10;TForm.FComponentState:TComponentState
>004EBFA5    jne         004EBFCE
 004EBFA7    mov         eax,dword ptr [ebp-4]
 004EBFAA    cmp         byte ptr [eax+1A6],0;TForm.FShowing:Boolean
>004EBFB1    je          004EBFCE
 004EBFB3    xor         eax,eax
 004EBFB5    mov         al,byte ptr [ebp-5]
 004EBFB8    mov         eax,dword ptr [eax*4+541924]
 004EBFBF    push        eax
 004EBFC0    mov         eax,dword ptr [ebp-4]
 004EBFC3    call        TWinControl.GetHandle
 004EBFC8    push        eax
 004EBFC9    call        user32.ShowWindow
 004EBFCE    pop         ecx
 004EBFCF    pop         ecx
 004EBFD0    pop         ebp
 004EBFD1    ret
*}
end;

//004EBFD4
procedure sub_004EBFD4(?:TCustomForm);
begin
{*
 004EBFD4    push        ebp
 004EBFD5    mov         ebp,esp
 004EBFD7    add         esp,0FFFFFFDC
 004EBFDA    push        ebx
 004EBFDB    mov         dword ptr [ebp-4],eax
 004EBFDE    mov         eax,dword ptr [ebp-4]
 004EBFE1    cmp         byte ptr [eax+231],0
>004EBFE8    je          004EC392
 004EBFEE    mov         eax,[0055DE4C];Application:TApplication
 004EBFF3    cmp         dword ptr [eax+44],0
>004EBFF7    je          004EC392
 004EBFFD    xor         eax,eax
 004EBFFF    mov         dword ptr [ebp-8],eax
 004EC002    mov         eax,dword ptr [ebp-4]
 004EC005    cmp         byte ptr [eax+231],2
>004EC00C    jne         004EC023
 004EC00E    mov         eax,[0055DE4C];Application:TApplication
 004EC013    mov         eax,dword ptr [eax+44]
 004EC016    call        004EB758
 004EC01B    mov         eax,dword ptr [eax+4]
 004EC01E    mov         dword ptr [ebp-8],eax
>004EC021    jmp         004EC06D
 004EC023    mov         eax,dword ptr [ebp-4]
 004EC026    cmp         byte ptr [eax+231],3
>004EC02D    jne         004EC04F
 004EC02F    mov         eax,[0055DE50];Screen:TScreen
 004EC034    cmp         dword ptr [eax+68],0
>004EC038    je          004EC04F
 004EC03A    mov         eax,[0055DE50];Screen:TScreen
 004EC03F    mov         eax,dword ptr [eax+68]
 004EC042    call        004EB758
 004EC047    mov         eax,dword ptr [eax+4]
 004EC04A    mov         dword ptr [ebp-8],eax
>004EC04D    jmp         004EC06D
 004EC04F    mov         eax,dword ptr [ebp-4]
 004EC052    cmp         byte ptr [eax+231],1
>004EC059    jne         004EC06D
 004EC05B    xor         edx,edx
 004EC05D    mov         eax,[0055DE50];Screen:TScreen
 004EC062    call        004F00BC
 004EC067    mov         eax,dword ptr [eax+4]
 004EC06A    mov         dword ptr [ebp-8],eax
 004EC06D    mov         eax,dword ptr [ebp-4]
 004EC070    call        004EB758
 004EC075    mov         eax,dword ptr [eax+4]
 004EC078    mov         dword ptr [ebp-0C],eax
 004EC07B    mov         eax,[0055DE50];Screen:TScreen
 004EC080    call        004F00E0
 004EC085    dec         eax
 004EC086    test        eax,eax
>004EC088    jl          004EC392
 004EC08E    inc         eax
 004EC08F    mov         dword ptr [ebp-20],eax
 004EC092    mov         dword ptr [ebp-10],0
 004EC099    mov         edx,dword ptr [ebp-10]
 004EC09C    mov         eax,[0055DE50];Screen:TScreen
 004EC0A1    call        004F00BC
 004EC0A6    mov         eax,dword ptr [eax+4]
 004EC0A9    cmp         eax,dword ptr [ebp-8]
>004EC0AC    jne         004EC386
 004EC0B2    mov         eax,dword ptr [ebp-8]
 004EC0B5    cmp         eax,dword ptr [ebp-0C]
>004EC0B8    je          004EC386
 004EC0BE    mov         eax,[0055DE50];Screen:TScreen
 004EC0C3    call        004F00E0
 004EC0C8    dec         eax
 004EC0C9    test        eax,eax
>004EC0CB    jl          004EC386
 004EC0D1    inc         eax
 004EC0D2    mov         dword ptr [ebp-24],eax
 004EC0D5    mov         dword ptr [ebp-14],0
 004EC0DC    mov         edx,dword ptr [ebp-14]
 004EC0DF    mov         eax,[0055DE50];Screen:TScreen
 004EC0E4    call        004F00BC
 004EC0E9    mov         eax,dword ptr [eax+4]
 004EC0EC    cmp         eax,dword ptr [ebp-0C]
>004EC0EF    jne         004EC37A
 004EC0F5    mov         eax,dword ptr [ebp-4]
 004EC0F8    cmp         byte ptr [eax+230],4
>004EC0FF    jne         004EC191
 004EC105    mov         eax,dword ptr [ebp-4]
 004EC108    mov         eax,dword ptr [eax+48]
 004EC10B    push        eax
 004EC10C    mov         eax,dword ptr [ebp-4]
 004EC10F    mov         eax,dword ptr [eax+4C]
 004EC112    push        eax
 004EC113    mov         edx,dword ptr [ebp-10]
 004EC116    mov         eax,[0055DE50];Screen:TScreen
 004EC11B    call        004F00BC
 004EC120    call        004EFC90
 004EC125    mov         ebx,eax
 004EC127    mov         edx,dword ptr [ebp-10]
 004EC12A    mov         eax,[0055DE50];Screen:TScreen
 004EC12F    call        004F00BC
 004EC134    call        004EFC6C
 004EC139    mov         edx,dword ptr [ebp-4]
 004EC13C    sub         eax,dword ptr [edx+4C]
 004EC13F    sar         eax,1
>004EC141    jns         004EC146
 004EC143    adc         eax,0
 004EC146    add         ebx,eax
 004EC148    push        ebx
 004EC149    mov         edx,dword ptr [ebp-10]
 004EC14C    mov         eax,[0055DE50];Screen:TScreen
 004EC151    call        004F00BC
 004EC156    call        004EFC48
 004EC15B    mov         ebx,eax
 004EC15D    mov         edx,dword ptr [ebp-10]
 004EC160    mov         eax,[0055DE50];Screen:TScreen
 004EC165    call        004F00BC
 004EC16A    call        004EFCB4
 004EC16F    mov         edx,dword ptr [ebp-4]
 004EC172    sub         eax,dword ptr [edx+48]
 004EC175    sar         eax,1
>004EC177    jns         004EC17C
 004EC179    adc         eax,0
 004EC17C    add         ebx,eax
 004EC17E    mov         edx,ebx
 004EC180    mov         eax,dword ptr [ebp-4]
 004EC183    pop         ecx
 004EC184    mov         ebx,dword ptr [eax]
 004EC186    call        dword ptr [ebx+84]
>004EC18C    jmp         004EC37A
 004EC191    mov         eax,dword ptr [ebp-4]
 004EC194    cmp         byte ptr [eax+230],6
>004EC19B    jne         004EC22D
 004EC1A1    mov         eax,dword ptr [ebp-4]
 004EC1A4    mov         eax,dword ptr [eax+48]
 004EC1A7    push        eax
 004EC1A8    mov         eax,dword ptr [ebp-4]
 004EC1AB    mov         eax,dword ptr [eax+4C]
 004EC1AE    push        eax
 004EC1AF    mov         edx,dword ptr [ebp-10]
 004EC1B2    mov         eax,[0055DE50];Screen:TScreen
 004EC1B7    call        004F00BC
 004EC1BC    call        004EFC90
 004EC1C1    mov         ebx,eax
 004EC1C3    mov         edx,dword ptr [ebp-10]
 004EC1C6    mov         eax,[0055DE50];Screen:TScreen
 004EC1CB    call        004F00BC
 004EC1D0    call        004EFC6C
 004EC1D5    mov         edx,dword ptr [ebp-4]
 004EC1D8    sub         eax,dword ptr [edx+4C]
 004EC1DB    sar         eax,1
>004EC1DD    jns         004EC1E2
 004EC1DF    adc         eax,0
 004EC1E2    add         ebx,eax
 004EC1E4    push        ebx
 004EC1E5    mov         edx,dword ptr [ebp-10]
 004EC1E8    mov         eax,[0055DE50];Screen:TScreen
 004EC1ED    call        004F00BC
 004EC1F2    call        004EFC48
 004EC1F7    mov         ebx,eax
 004EC1F9    mov         edx,dword ptr [ebp-10]
 004EC1FC    mov         eax,[0055DE50];Screen:TScreen
 004EC201    call        004F00BC
 004EC206    call        004EFCB4
 004EC20B    mov         edx,dword ptr [ebp-4]
 004EC20E    sub         eax,dword ptr [edx+48]
 004EC211    sar         eax,1
>004EC213    jns         004EC218
 004EC215    adc         eax,0
 004EC218    add         ebx,eax
 004EC21A    mov         edx,ebx
 004EC21C    mov         eax,dword ptr [ebp-4]
 004EC21F    pop         ecx
 004EC220    mov         ebx,dword ptr [eax]
 004EC222    call        dword ptr [ebx+84]
>004EC228    jmp         004EC37A
 004EC22D    mov         edx,dword ptr [ebp-10]
 004EC230    mov         eax,[0055DE50];Screen:TScreen
 004EC235    call        004F00BC
 004EC23A    call        004EFC48
 004EC23F    mov         ebx,eax
 004EC241    mov         eax,dword ptr [ebp-4]
 004EC244    add         ebx,dword ptr [eax+40]
 004EC247    mov         edx,dword ptr [ebp-14]
 004EC24A    mov         eax,[0055DE50];Screen:TScreen
 004EC24F    call        004F00BC
 004EC254    call        004EFC48
 004EC259    sub         ebx,eax
 004EC25B    mov         dword ptr [ebp-18],ebx
 004EC25E    mov         edx,dword ptr [ebp-10]
 004EC261    mov         eax,[0055DE50];Screen:TScreen
 004EC266    call        004F00BC
 004EC26B    call        004EFC48
 004EC270    mov         ebx,eax
 004EC272    mov         edx,dword ptr [ebp-10]
 004EC275    mov         eax,[0055DE50];Screen:TScreen
 004EC27A    call        004F00BC
 004EC27F    call        004EFCB4
 004EC284    add         ebx,eax
 004EC286    mov         eax,dword ptr [ebp-18]
 004EC289    mov         edx,dword ptr [ebp-4]
 004EC28C    add         eax,dword ptr [edx+48]
 004EC28F    cmp         ebx,eax
>004EC291    jge         004EC2C4
 004EC293    mov         edx,dword ptr [ebp-10]
 004EC296    mov         eax,[0055DE50];Screen:TScreen
 004EC29B    call        004F00BC
 004EC2A0    call        004EFC48
 004EC2A5    mov         ebx,eax
 004EC2A7    mov         edx,dword ptr [ebp-10]
 004EC2AA    mov         eax,[0055DE50];Screen:TScreen
 004EC2AF    call        004F00BC
 004EC2B4    call        004EFCB4
 004EC2B9    add         ebx,eax
 004EC2BB    mov         eax,dword ptr [ebp-4]
 004EC2BE    sub         ebx,dword ptr [eax+48]
 004EC2C1    mov         dword ptr [ebp-18],ebx
 004EC2C4    mov         edx,dword ptr [ebp-10]
 004EC2C7    mov         eax,[0055DE50];Screen:TScreen
 004EC2CC    call        004F00BC
 004EC2D1    call        004EFC90
 004EC2D6    mov         ebx,eax
 004EC2D8    mov         eax,dword ptr [ebp-4]
 004EC2DB    add         ebx,dword ptr [eax+44]
 004EC2DE    mov         edx,dword ptr [ebp-14]
 004EC2E1    mov         eax,[0055DE50];Screen:TScreen
 004EC2E6    call        004F00BC
 004EC2EB    call        004EFC90
 004EC2F0    sub         ebx,eax
 004EC2F2    mov         dword ptr [ebp-1C],ebx
 004EC2F5    mov         edx,dword ptr [ebp-10]
 004EC2F8    mov         eax,[0055DE50];Screen:TScreen
 004EC2FD    call        004F00BC
 004EC302    call        004EFC90
 004EC307    mov         ebx,eax
 004EC309    mov         edx,dword ptr [ebp-10]
 004EC30C    mov         eax,[0055DE50];Screen:TScreen
 004EC311    call        004F00BC
 004EC316    call        004EFC6C
 004EC31B    add         ebx,eax
 004EC31D    mov         eax,dword ptr [ebp-1C]
 004EC320    mov         edx,dword ptr [ebp-4]
 004EC323    add         eax,dword ptr [edx+4C]
 004EC326    cmp         ebx,eax
>004EC328    jge         004EC35B
 004EC32A    mov         edx,dword ptr [ebp-10]
 004EC32D    mov         eax,[0055DE50];Screen:TScreen
 004EC332    call        004F00BC
 004EC337    call        004EFC90
 004EC33C    mov         ebx,eax
 004EC33E    mov         edx,dword ptr [ebp-10]
 004EC341    mov         eax,[0055DE50];Screen:TScreen
 004EC346    call        004F00BC
 004EC34B    call        004EFC6C
 004EC350    add         ebx,eax
 004EC352    mov         eax,dword ptr [ebp-4]
 004EC355    sub         ebx,dword ptr [eax+4C]
 004EC358    mov         dword ptr [ebp-1C],ebx
 004EC35B    mov         eax,dword ptr [ebp-4]
 004EC35E    mov         eax,dword ptr [eax+48]
 004EC361    push        eax
 004EC362    mov         eax,dword ptr [ebp-4]
 004EC365    mov         eax,dword ptr [eax+4C]
 004EC368    push        eax
 004EC369    mov         ecx,dword ptr [ebp-1C]
 004EC36C    mov         edx,dword ptr [ebp-18]
 004EC36F    mov         eax,dword ptr [ebp-4]
 004EC372    mov         ebx,dword ptr [eax]
 004EC374    call        dword ptr [ebx+84]
 004EC37A    inc         dword ptr [ebp-14]
 004EC37D    dec         dword ptr [ebp-24]
>004EC380    jne         004EC0DC
 004EC386    inc         dword ptr [ebp-10]
 004EC389    dec         dword ptr [ebp-20]
>004EC38C    jne         004EC099
 004EC392    pop         ebx
 004EC393    mov         esp,ebp
 004EC395    pop         ebp
 004EC396    ret
*}
end;

//004EC398
{*procedure sub_004EC398(?:?);
begin
 004EC398    push        ebp
 004EC399    mov         ebp,esp
 004EC39B    add         esp,0FFFFFFF4
 004EC39E    mov         dword ptr [ebp-8],edx
 004EC3A1    mov         dword ptr [ebp-4],eax
 004EC3A4    mov         edx,dword ptr [ebp-8]
 004EC3A7    mov         eax,dword ptr [ebp-4]
 004EC3AA    call        004E8F5C
 004EC3AF    mov         edx,dword ptr [ebp-8]
 004EC3B2    mov         eax,dword ptr [ebp-4]
 004EC3B5    call        004EF6EC
 004EC3BA    mov         eax,dword ptr [ebp-4]
 004EC3BD    cmp         dword ptr [eax+30],0;TCustomForm.FParent:TWinControl
>004EC3C1    jne         004EC3E7
 004EC3C3    mov         eax,dword ptr [ebp-4]
 004EC3C6    cmp         dword ptr [eax+190],0;TCustomForm.FParentWindow:HWND
>004EC3CD    jne         004EC3E7
 004EC3CF    mov         eax,[0055DE4C];Application:TApplication
 004EC3D4    mov         eax,dword ptr [eax+30]
 004EC3D7    mov         edx,dword ptr [ebp-8]
 004EC3DA    mov         dword ptr [edx+1C],eax
 004EC3DD    mov         eax,dword ptr [ebp-8]
 004EC3E0    and         dword ptr [eax+4],0BFFCFFFF
 004EC3E7    mov         eax,dword ptr [ebp-8]
 004EC3EA    mov         dword ptr [eax+24],8
 004EC3F1    mov         eax,dword ptr [ebp-4]
 004EC3F4    test        byte ptr [eax+1C],10;TCustomForm.FComponentState:TComponentState
>004EC3F8    je          004EC412
 004EC3FA    mov         eax,dword ptr [ebp-4]
 004EC3FD    cmp         dword ptr [eax+30],0;TCustomForm.FParent:TWinControl
>004EC401    jne         004EC412
 004EC403    mov         eax,dword ptr [ebp-8]
 004EC406    or          dword ptr [eax+4],0CF0000
>004EC40D    jmp         004EC64C
 004EC412    mov         eax,dword ptr [ebp-4]
 004EC415    mov         al,byte ptr [eax+230];TCustomForm.FPosition:TPosition
 004EC41B    dec         eax
 004EC41C    sub         al,2
>004EC41E    jae         004EC434
 004EC420    mov         eax,dword ptr [ebp-8]
 004EC423    mov         dword ptr [eax+0C],80000000
 004EC42A    mov         eax,dword ptr [ebp-8]
 004EC42D    mov         dword ptr [eax+10],80000000
 004EC434    mov         eax,dword ptr [ebp-4]
 004EC437    mov         al,byte ptr [eax+228];TCustomForm.FBorderIcons:TBorderIcons
 004EC43D    mov         byte ptr [ebp-9],al
 004EC440    mov         eax,dword ptr [ebp-4]
 004EC443    mov         al,byte ptr [eax+229];TCustomForm.FBorderStyle:TFormBorderStyle
 004EC449    mov         byte ptr [ebp-0A],al
 004EC44C    mov         eax,dword ptr [ebp-4]
 004EC44F    cmp         byte ptr [eax+22F],1;TCustomForm.FFormStyle:TFormStyle
>004EC456    jne         004EC467
 004EC458    mov         al,byte ptr [ebp-0A]
 004EC45B    test        al,al
>004EC45D    je          004EC463
 004EC45F    sub         al,3
>004EC461    jne         004EC467
 004EC463    mov         byte ptr [ebp-0A],2
 004EC467    xor         eax,eax
 004EC469    mov         al,byte ptr [ebp-0A]
 004EC46C    cmp         eax,5
>004EC46F    ja          004EC563
 004EC475    jmp         dword ptr [eax*4+4EC47C]
 004EC475    dd          004EC494
 004EC475    dd          004EC4C0
 004EC475    dd          004EC4CF
 004EC475    dd          004EC500
 004EC475    dd          004EC4C0
 004EC475    dd          004EC4CF
 004EC494    mov         eax,dword ptr [ebp-4]
 004EC497    cmp         dword ptr [eax+30],0;TCustomForm.FParent:TWinControl
>004EC49B    jne         004EC4B3
 004EC49D    mov         eax,dword ptr [ebp-4]
 004EC4A0    cmp         dword ptr [eax+190],0;TCustomForm.FParentWindow:HWND
>004EC4A7    jne         004EC4B3
 004EC4A9    mov         eax,dword ptr [ebp-8]
 004EC4AC    or          dword ptr [eax+4],80000000
 004EC4B3    mov         al,[004EC650];0x0 gvar_004EC650
 004EC4B8    mov         byte ptr [ebp-9],al
>004EC4BB    jmp         004EC563
 004EC4C0    mov         eax,dword ptr [ebp-8]
 004EC4C3    or          dword ptr [eax+4],0C00000
>004EC4CA    jmp         004EC563
 004EC4CF    mov         eax,dword ptr [ebp-8]
 004EC4D2    or          dword ptr [eax+4],0C40000
 004EC4D9    mov         eax,dword ptr [ebp-4]
 004EC4DC    mov         al,byte ptr [eax+230];TCustomForm.FPosition:TPosition
 004EC4E2    sub         al,1
>004EC4E4    je          004EC4EA
 004EC4E6    sub         al,2
>004EC4E8    jne         004EC563
 004EC4EA    mov         eax,dword ptr [ebp-8]
 004EC4ED    mov         dword ptr [eax+14],80000000
 004EC4F4    mov         eax,dword ptr [ebp-8]
 004EC4F7    mov         dword ptr [eax+18],80000000
>004EC4FE    jmp         004EC563
 004EC500    mov         eax,dword ptr [ebp-8]
 004EC503    mov         eax,dword ptr [eax+4]
 004EC506    or          eax,80000000
 004EC50B    or          eax,0C00000
 004EC510    mov         edx,dword ptr [ebp-8]
 004EC513    mov         dword ptr [edx+4],eax
 004EC516    mov         eax,dword ptr [ebp-8]
 004EC519    mov         dword ptr [eax+8],101
 004EC520    mov         edx,dword ptr [ebp-8]
 004EC523    add         edx,8
 004EC526    mov         eax,dword ptr [ebp-4]
 004EC529    call        004CF794
 004EC52E    mov         eax,[0055B36C];^NewStyleControls:Boolean
 004EC533    cmp         byte ptr [eax],0
>004EC536    jne         004EC54E
 004EC538    mov         eax,dword ptr [ebp-8]
 004EC53B    mov         eax,dword ptr [eax+4]
 004EC53E    or          eax,400000
 004EC543    or          eax,80
 004EC548    mov         edx,dword ptr [ebp-8]
 004EC54B    mov         dword ptr [edx+4],eax
 004EC54E    mov         al,[004EC654];0x9 gvar_004EC654
 004EC553    and         al,byte ptr [ebp-9]
 004EC556    mov         byte ptr [ebp-9],al
 004EC559    mov         eax,dword ptr [ebp-8]
 004EC55C    mov         dword ptr [eax+24],2808
 004EC563    mov         al,byte ptr [ebp-0A]
 004EC566    add         al,0FC
 004EC568    sub         al,2
>004EC56A    jae         004EC58F
 004EC56C    mov         eax,dword ptr [ebp-8]
 004EC56F    mov         dword ptr [eax+8],80
 004EC576    mov         edx,dword ptr [ebp-8]
 004EC579    add         edx,8
 004EC57C    mov         eax,dword ptr [ebp-4]
 004EC57F    call        004CF794
 004EC584    mov         al,[004EC658];0x1 gvar_004EC658
 004EC589    and         al,byte ptr [ebp-9]
 004EC58C    mov         byte ptr [ebp-9],al
 004EC58F    mov         al,byte ptr [ebp-0A]
 004EC592    sub         al,3
>004EC594    jae         004EC5F8
 004EC596    mov         eax,dword ptr [ebp-4]
 004EC599    cmp         byte ptr [eax+22F],1;TCustomForm.FFormStyle:TFormStyle
>004EC5A0    jne         004EC5A8
 004EC5A2    test        byte ptr [ebp-9],1
>004EC5A6    je          004EC5C8
 004EC5A8    test        byte ptr [ebp-9],2
>004EC5AC    je          004EC5B8
 004EC5AE    mov         eax,dword ptr [ebp-8]
 004EC5B1    or          dword ptr [eax+4],20000
 004EC5B8    test        byte ptr [ebp-9],4
>004EC5BC    je          004EC5C8
 004EC5BE    mov         eax,dword ptr [ebp-8]
 004EC5C1    or          dword ptr [eax+4],10000
 004EC5C8    mov         eax,dword ptr [ebp-4]
 004EC5CB    cmp         byte ptr [eax+22B],1;TCustomForm.FWindowState:TWindowState
>004EC5D2    jne         004EC5E0
 004EC5D4    mov         eax,dword ptr [ebp-8]
 004EC5D7    or          dword ptr [eax+4],20000000
>004EC5DE    jmp         004EC602
 004EC5E0    mov         eax,dword ptr [ebp-4]
 004EC5E3    cmp         byte ptr [eax+22B],2;TCustomForm.FWindowState:TWindowState
>004EC5EA    jne         004EC602
 004EC5EC    mov         eax,dword ptr [ebp-8]
 004EC5EF    or          dword ptr [eax+4],1000000
>004EC5F6    jmp         004EC602
 004EC5F8    mov         eax,dword ptr [ebp-4]
 004EC5FB    mov         byte ptr [eax+22B],0;TCustomForm.FWindowState:TWindowState
 004EC602    test        byte ptr [ebp-9],1
>004EC606    je          004EC612
 004EC608    mov         eax,dword ptr [ebp-8]
 004EC60B    or          dword ptr [eax+4],80000
 004EC612    test        byte ptr [ebp-9],8
>004EC616    je          004EC622
 004EC618    mov         eax,dword ptr [ebp-8]
 004EC61B    or          dword ptr [eax+8],400
 004EC622    mov         eax,dword ptr [ebp-4]
 004EC625    test        byte ptr [eax+1D],2;TCustomForm.?f1D:byte
>004EC629    je          004EC635
 004EC62B    mov         eax,dword ptr [ebp-8]
 004EC62E    and         dword ptr [eax+4],0FF3FFFFF
 004EC635    mov         eax,dword ptr [ebp-4]
 004EC638    cmp         byte ptr [eax+22F],1;TCustomForm.FFormStyle:TFormStyle
>004EC63F    jne         004EC64C
 004EC641    mov         eax,407ADC;user32.DefMDIChildProcA:Longint
 004EC646    mov         edx,dword ptr [ebp-8]
 004EC649    mov         dword ptr [edx+28],eax
 004EC64C    mov         esp,ebp
 004EC64E    pop         ebp
 004EC64F    ret
end;*}

//004EC65C
procedure TCustomForm.CreateWnd;
begin
{*
 004EC65C    push        ebp
 004EC65D    mov         ebp,esp
 004EC65F    add         esp,0FFFFFFF4
 004EC662    mov         dword ptr [ebp-4],eax
 004EC665    mov         eax,dword ptr [ebp-4]
 004EC668    call        TScrollingWinControl.CreateWnd
 004EC66D    mov         eax,[0055B36C];^NewStyleControls:Boolean
 004EC672    cmp         byte ptr [eax],0
>004EC675    je          004EC6BA
 004EC677    mov         eax,dword ptr [ebp-4]
 004EC67A    cmp         byte ptr [eax+229],3;TCustomForm.FBorderStyle:TFormBorderStyle
>004EC681    je          004EC6A3
 004EC683    mov         eax,dword ptr [ebp-4]
 004EC686    call        004ED21C
 004EC68B    push        eax
 004EC68C    push        1
 004EC68E    push        80
 004EC693    mov         eax,dword ptr [ebp-4]
 004EC696    call        TWinControl.GetHandle
 004EC69B    push        eax
 004EC69C    call        user32.SendMessageA
>004EC6A1    jmp         004EC6BA
 004EC6A3    push        0
 004EC6A5    push        1
 004EC6A7    push        80
 004EC6AC    mov         eax,dword ptr [ebp-4]
 004EC6AF    call        TWinControl.GetHandle
 004EC6B4    push        eax
 004EC6B5    call        user32.SendMessageA
 004EC6BA    mov         eax,dword ptr [ebp-4]
 004EC6BD    test        byte ptr [eax+1C],10;TCustomForm.FComponentState:TComponentState
>004EC6C1    jne         004EC7BC
 004EC6C7    mov         eax,dword ptr [ebp-4]
 004EC6CA    mov         al,byte ptr [eax+22F];TCustomForm.FFormStyle:TFormStyle
 004EC6D0    sub         al,2
>004EC6D2    je          004EC6E1
 004EC6D4    dec         al
>004EC6D6    je          004EC7A2
>004EC6DC    jmp         004EC7BC
 004EC6E1    mov         dword ptr [ebp-8],0FF00
 004EC6E8    xor         eax,eax
 004EC6EA    mov         dword ptr [ebp-0C],eax
 004EC6ED    mov         eax,dword ptr [ebp-4]
 004EC6F0    cmp         dword ptr [eax+258],0;TCustomForm.FWindowMenu:TMenuItem
>004EC6F7    je          004EC70A
 004EC6F9    mov         eax,dword ptr [ebp-4]
 004EC6FC    mov         eax,dword ptr [eax+258];TCustomForm.FWindowMenu:TMenuItem
 004EC702    call        004E0340
 004EC707    mov         dword ptr [ebp-0C],eax
 004EC70A    push        56330001
 004EC70F    push        0
 004EC711    push        0
 004EC713    mov         eax,dword ptr [ebp-4]
 004EC716    call        TControl.GetClientWidth
 004EC71B    push        eax
 004EC71C    mov         eax,dword ptr [ebp-4]
 004EC71F    call        TControl.GetClientHeight
 004EC724    push        eax
 004EC725    mov         eax,dword ptr [ebp-4]
 004EC728    call        TWinControl.GetHandle
 004EC72D    push        eax
 004EC72E    push        0
 004EC730    mov         eax,[0055C664];gvar_0055C664
 004EC735    push        eax
 004EC736    lea         eax,[ebp-0C]
 004EC739    push        eax
 004EC73A    mov         edx,4EC7C0
 004EC73F    xor         ecx,ecx
 004EC741    mov         eax,200
 004EC746    call        00408304
 004EC74B    mov         edx,dword ptr [ebp-4]
 004EC74E    mov         dword ptr [edx+254],eax;TCustomForm.FClientHandle:HWND
 004EC754    mov         eax,dword ptr [ebp-4]
 004EC757    push        eax
 004EC758    push        4EB0A0;TCustomForm.ClientWndProc
 004EC75D    call        00484700
 004EC762    mov         edx,dword ptr [ebp-4]
 004EC765    mov         dword ptr [edx+278],eax;TCustomForm.FClientInstance:TFarProc
 004EC76B    push        0FC
 004EC76D    mov         eax,dword ptr [ebp-4]
 004EC770    mov         eax,dword ptr [eax+254];TCustomForm.FClientHandle:HWND
 004EC776    push        eax
 004EC777    call        user32.GetWindowLongA
 004EC77C    mov         edx,dword ptr [ebp-4]
 004EC77F    mov         dword ptr [edx+274],eax;TCustomForm.FDefClientProc:TFarProc
 004EC785    mov         eax,dword ptr [ebp-4]
 004EC788    mov         eax,dword ptr [eax+278];TCustomForm.FClientInstance:TFarProc
 004EC78E    push        eax
 004EC78F    push        0FC
 004EC791    mov         eax,dword ptr [ebp-4]
 004EC794    mov         eax,dword ptr [eax+254];TCustomForm.FClientHandle:HWND
 004EC79A    push        eax
 004EC79B    call        user32.SetWindowLongA
>004EC7A0    jmp         004EC7BC
 004EC7A2    push        13
 004EC7A4    push        0
 004EC7A6    push        0
 004EC7A8    push        0
 004EC7AA    push        0
 004EC7AC    push        0FF
 004EC7AE    mov         eax,dword ptr [ebp-4]
 004EC7B1    call        TWinControl.GetHandle
 004EC7B6    push        eax
 004EC7B7    call        user32.SetWindowPos
 004EC7BC    mov         esp,ebp
 004EC7BE    pop         ebp
 004EC7BF    ret
*}
end;

//004EC7CC
{*procedure sub_004EC7CC(?:?);
begin
 004EC7CC    push        ebp
 004EC7CD    mov         ebp,esp
 004EC7CF    add         esp,0FFFFFF44
 004EC7D5    push        esi
 004EC7D6    push        edi
 004EC7D7    xor         ecx,ecx
 004EC7D9    mov         dword ptr [ebp-0BC],ecx
 004EC7DF    mov         dword ptr [ebp-8],edx
 004EC7E2    mov         dword ptr [ebp-4],eax
 004EC7E5    xor         eax,eax
 004EC7E7    push        ebp
 004EC7E8    push        4EC92B
 004EC7ED    push        dword ptr fs:[eax]
 004EC7F0    mov         dword ptr fs:[eax],esp
 004EC7F3    mov         eax,dword ptr [ebp-4]
 004EC7F6    cmp         byte ptr [eax+22F],1;TCustomForm.FFormStyle:TFormStyle
>004EC7FD    jne         004EC8D6
 004EC803    mov         eax,dword ptr [ebp-4]
 004EC806    test        byte ptr [eax+1C],10;TCustomForm.FComponentState:TComponentState
>004EC80A    jne         004EC8D6
 004EC810    mov         eax,[0055DE4C];Application:TApplication
 004EC815    cmp         dword ptr [eax+44],0
>004EC819    je          004EC82C
 004EC81B    mov         eax,[0055DE4C];Application:TApplication
 004EC820    mov         eax,dword ptr [eax+44]
 004EC823    cmp         dword ptr [eax+254],0
>004EC82A    jne         004EC853
 004EC82C    lea         edx,[ebp-0BC]
 004EC832    mov         eax,[0055B5E4];^SNoMDIForm:TResStringRec
 004EC837    call        LoadResString
 004EC83C    mov         ecx,dword ptr [ebp-0BC]
 004EC842    mov         dl,1
 004EC844    mov         eax,[00475960];EInvalidOperation
 004EC849    call        Exception.Create;EInvalidOperation.Create
 004EC84E    call        @RaiseExcept
 004EC853    mov         eax,dword ptr [ebp-8]
 004EC856    add         eax,4C
 004EC859    mov         dword ptr [ebp-2C],eax
 004EC85C    mov         eax,dword ptr [ebp-8]
 004EC85F    mov         eax,dword ptr [eax]
 004EC861    mov         dword ptr [ebp-28],eax
 004EC864    mov         eax,[0055C664];gvar_0055C664
 004EC869    mov         dword ptr [ebp-24],eax
 004EC86C    mov         eax,dword ptr [ebp-8]
 004EC86F    mov         eax,dword ptr [eax+0C]
 004EC872    mov         dword ptr [ebp-20],eax
 004EC875    mov         eax,dword ptr [ebp-8]
 004EC878    mov         eax,dword ptr [eax+10]
 004EC87B    mov         dword ptr [ebp-1C],eax
 004EC87E    mov         eax,dword ptr [ebp-8]
 004EC881    mov         eax,dword ptr [eax+14]
 004EC884    mov         dword ptr [ebp-18],eax
 004EC887    mov         eax,dword ptr [ebp-8]
 004EC88A    mov         eax,dword ptr [eax+18]
 004EC88D    mov         dword ptr [ebp-14],eax
 004EC890    mov         eax,dword ptr [ebp-8]
 004EC893    mov         eax,dword ptr [eax+4]
 004EC896    mov         dword ptr [ebp-10],eax
 004EC899    mov         eax,dword ptr [ebp-8]
 004EC89C    mov         eax,dword ptr [eax+20]
 004EC89F    mov         dword ptr [ebp-0C],eax
 004EC8A2    lea         eax,[ebp-2C]
 004EC8A5    push        eax
 004EC8A6    push        0
 004EC8A8    push        220
 004EC8AD    mov         eax,[0055DE4C];Application:TApplication
 004EC8B2    mov         eax,dword ptr [eax+44]
 004EC8B5    mov         eax,dword ptr [eax+254]
 004EC8BB    push        eax
 004EC8BC    call        user32.SendMessageA
 004EC8C1    mov         edx,dword ptr [ebp-4]
 004EC8C4    mov         dword ptr [edx+180],eax;TCustomForm.FHandle:HWND
 004EC8CA    mov         eax,dword ptr [ebp-4]
 004EC8CD    or          byte ptr [eax+2F4],10;TCustomForm.FFormState:TFormState
>004EC8D4    jmp         004EC90A
 004EC8D6    mov         eax,dword ptr [ebp-8]
 004EC8D9    mov         esi,eax
 004EC8DB    lea         edi,[ebp-0B8]
 004EC8E1    mov         ecx,23
 004EC8E6    rep movs    dword ptr [edi],dword ptr [esi]
 004EC8E8    and         dword ptr [ebp-0B0],0FFF7FFFF
 004EC8F2    lea         edx,[ebp-0B8]
 004EC8F8    mov         eax,dword ptr [ebp-4]
 004EC8FB    call        004CFBB8
 004EC900    mov         eax,dword ptr [ebp-4]
 004EC903    and         byte ptr [eax+2F4],0EF;TCustomForm.FFormState:TFormState
 004EC90A    mov         eax,dword ptr [ebp-4]
 004EC90D    call        004EF520
 004EC912    xor         eax,eax
 004EC914    pop         edx
 004EC915    pop         ecx
 004EC916    pop         ecx
 004EC917    mov         dword ptr fs:[eax],edx
 004EC91A    push        4EC932
 004EC91F    lea         eax,[ebp-0BC]
 004EC925    call        @LStrClr
 004EC92A    ret
>004EC92B    jmp         @HandleFinally
>004EC930    jmp         004EC91F
 004EC932    pop         edi
 004EC933    pop         esi
 004EC934    mov         esp,ebp
 004EC936    pop         ebp
 004EC937    ret
end;*}

//004EC938
procedure TCustomForm.DestroyWindowHandle;
begin
{*
 004EC938    push        ebp
 004EC939    mov         ebp,esp
 004EC93B    push        ecx
 004EC93C    mov         dword ptr [ebp-4],eax
 004EC93F    mov         eax,dword ptr [ebp-4]
 004EC942    test        byte ptr [eax+2F4],10;TCustomForm.FFormState:TFormState
>004EC949    je          004EC971
 004EC94B    push        0
 004EC94D    mov         eax,dword ptr [ebp-4]
 004EC950    call        TWinControl.GetHandle
 004EC955    push        eax
 004EC956    push        221
 004EC95B    mov         eax,[0055DE4C];Application:TApplication
 004EC960    mov         eax,dword ptr [eax+44]
 004EC963    mov         eax,dword ptr [eax+254]
 004EC969    push        eax
 004EC96A    call        user32.SendMessageA
>004EC96F    jmp         004EC979
 004EC971    mov         eax,dword ptr [ebp-4]
 004EC974    call        TWinControl.DestroyWindowHandle
 004EC979    mov         eax,dword ptr [ebp-4]
 004EC97C    xor         edx,edx
 004EC97E    mov         dword ptr [eax+254],edx;TCustomForm.FClientHandle:HWND
 004EC984    pop         ecx
 004EC985    pop         ebp
 004EC986    ret
*}
end;

//004EC988
procedure TCustomForm.DefaultHandler(var Message:void );
begin
{*
 004EC988    push        ebp
 004EC989    mov         ebp,esp
 004EC98B    add         esp,0FFFFFFF8
 004EC98E    mov         dword ptr [ebp-8],edx
 004EC991    mov         dword ptr [ebp-4],eax
 004EC994    mov         eax,dword ptr [ebp-4]
 004EC997    cmp         dword ptr [eax+254],0
>004EC99E    je          004ECA06
 004EC9A0    mov         eax,dword ptr [ebp-8]
 004EC9A3    cmp         dword ptr [eax],5
>004EC9A6    jne         004EC9D2
 004EC9A8    mov         eax,dword ptr [ebp-8];{TWinControl.GetHandle}
 004EC9AB    mov         eax,dword ptr [eax+8]
 004EC9AE    push        eax
 004EC9AF    mov         eax,dword ptr [ebp-8];{DefWindowProc}
 004EC9B2    mov         eax,dword ptr [eax+4]
 004EC9B5    push        eax
 004EC9B6    mov         eax,dword ptr [ebp-8]
 004EC9B9    mov         eax,dword ptr [eax]
 004EC9BB    push        eax
 004EC9BC    mov         eax,dword ptr [ebp-4]
 004EC9BF    call        TWinControl.GetHandle
 004EC9C4    push        eax
 004EC9C5    call        user32.DefWindowProcA
 004EC9CA    mov         edx,dword ptr [ebp-8]
 004EC9CD    mov         dword ptr [edx+0C],eax;{TWinControl.GetHandle}
>004EC9D0    jmp         004ECA11
 004EC9D2    mov         eax,dword ptr [ebp-8];{DefFrameProc}
 004EC9D5    mov         eax,dword ptr [eax+8]
 004EC9D8    push        eax
 004EC9D9    mov         eax,dword ptr [ebp-8]
 004EC9DC    mov         eax,dword ptr [eax+4]
 004EC9DF    push        eax
 004EC9E0    mov         eax,dword ptr [ebp-8]
 004EC9E3    mov         eax,dword ptr [eax]
 004EC9E5    push        eax
 004EC9E6    mov         eax,dword ptr [ebp-4]
 004EC9E9    mov         eax,dword ptr [eax+254]
 004EC9EF    push        eax
 004EC9F0    mov         eax,dword ptr [ebp-4]
 004EC9F3    call        TWinControl.GetHandle
 004EC9F8    push        eax
 004EC9F9    call        user32.DefFrameProcA
 004EC9FE    mov         edx,dword ptr [ebp-8]
 004ECA01    mov         dword ptr [edx+0C],eax
>004ECA04    jmp         004ECA11
 004ECA06    mov         edx,dword ptr [ebp-8]
 004ECA09    mov         eax,dword ptr [ebp-4]
 004ECA0C    call        TWinControl.DefaultHandler
 004ECA11    pop         ecx
 004ECA12    pop         ecx
 004ECA13    pop         ebp
 004ECA14    ret
*}
end;

//004ECA18
procedure TForm.SetActiveControl(Value:TWinControl);
begin
{*
 004ECA18    push        ebp
 004ECA19    mov         ebp,esp
 004ECA1B    add         esp,0FFFFFFF4
 004ECA1E    push        esi
 004ECA1F    xor         ecx,ecx
 004ECA21    mov         dword ptr [ebp-0C],ecx
 004ECA24    mov         dword ptr [ebp-8],edx
 004ECA27    mov         dword ptr [ebp-4],eax
 004ECA2A    xor         eax,eax
 004ECA2C    push        ebp
 004ECA2D    push        4ECAEA
 004ECA32    push        dword ptr fs:[eax]
 004ECA35    mov         dword ptr fs:[eax],esp
 004ECA38    mov         eax,dword ptr [ebp-4]
 004ECA3B    mov         eax,dword ptr [eax+220];TForm.FActiveControl:TWinControl
 004ECA41    cmp         eax,dword ptr [ebp-8]
>004ECA44    je          004ECAD4
 004ECA4A    cmp         dword ptr [ebp-8],0
>004ECA4E    je          004ECA9F
 004ECA50    mov         eax,dword ptr [ebp-8]
 004ECA53    cmp         eax,dword ptr [ebp-4]
>004ECA56    je          004ECA7E
 004ECA58    mov         eax,dword ptr [ebp-8]
 004ECA5B    call        004E7ED8
 004ECA60    cmp         eax,dword ptr [ebp-4]
>004ECA63    jne         004ECA7E
 004ECA65    mov         eax,dword ptr [ebp-4]
 004ECA68    test        byte ptr [eax+1C],1;TForm.FComponentState:TComponentState
>004ECA6C    jne         004ECA9F
 004ECA6E    mov         eax,dword ptr [ebp-8]
 004ECA71    mov         si,0FFB8
 004ECA75    call        @CallDynaInst;TWinControl.sub_004D37A8
 004ECA7A    test        al,al
>004ECA7C    jne         004ECA9F
 004ECA7E    lea         edx,[ebp-0C]
 004ECA81    mov         eax,[0055B60C];^SCannotFocus:TResStringRec
 004ECA86    call        LoadResString
 004ECA8B    mov         ecx,dword ptr [ebp-0C]
 004ECA8E    mov         dl,1
 004ECA90    mov         eax,[00475960];EInvalidOperation
 004ECA95    call        Exception.Create;EInvalidOperation.Create
 004ECA9A    call        @RaiseExcept
 004ECA9F    mov         eax,dword ptr [ebp-8]
 004ECAA2    mov         edx,dword ptr [ebp-4]
 004ECAA5    mov         dword ptr [edx+220],eax;TForm.FActiveControl:TWinControl
 004ECAAB    mov         eax,dword ptr [ebp-4]
 004ECAAE    test        byte ptr [eax+1C],1;TForm.FComponentState:TComponentState
>004ECAB2    jne         004ECAD4
 004ECAB4    mov         eax,dword ptr [ebp-4]
 004ECAB7    cmp         byte ptr [eax+22E],0;TForm.FActive:Boolean
>004ECABE    je          004ECAC8
 004ECAC0    mov         eax,dword ptr [ebp-4]
 004ECAC3    call        004ECEB8
 004ECAC8    mov         eax,dword ptr [ebp-4]
 004ECACB    mov         si,0FFB2
 004ECACF    call        @CallDynaInst;TCustomForm.sub_004ECEAC
 004ECAD4    xor         eax,eax
 004ECAD6    pop         edx
 004ECAD7    pop         ecx
 004ECAD8    pop         ecx
 004ECAD9    mov         dword ptr fs:[eax],edx
 004ECADC    push        4ECAF1
 004ECAE1    lea         eax,[ebp-0C]
 004ECAE4    call        @LStrClr
 004ECAE9    ret
>004ECAEA    jmp         @HandleFinally
>004ECAEF    jmp         004ECAE1
 004ECAF1    pop         esi
 004ECAF2    mov         esp,ebp
 004ECAF4    pop         ebp
 004ECAF5    ret
*}
end;

//004ECAF8
{*procedure sub_004ECAF8(?:?; ?:?; ?:?);
begin
 004ECAF8    push        ebp
 004ECAF9    mov         ebp,esp
 004ECAFB    add         esp,0FFFFFFF4
 004ECAFE    mov         byte ptr [ebp-9],cl
 004ECB01    mov         dword ptr [ebp-8],edx
 004ECB04    mov         dword ptr [ebp-4],eax
 004ECB07    cmp         byte ptr [ebp-9],0
>004ECB0B    je          004ECB31
 004ECB0D    mov         eax,dword ptr [ebp-4]
 004ECB10    mov         edx,dword ptr [eax+224]
 004ECB16    mov         eax,dword ptr [ebp-8]
 004ECB19    call        004CF30C
 004ECB1E    test        al,al
>004ECB20    je          004ECB31
 004ECB22    mov         eax,dword ptr [ebp-8]
 004ECB25    mov         eax,dword ptr [eax+30]
 004ECB28    mov         edx,dword ptr [ebp-4]
 004ECB2B    mov         dword ptr [edx+224],eax
 004ECB31    mov         eax,dword ptr [ebp-4]
 004ECB34    mov         edx,dword ptr [eax+220]
 004ECB3A    mov         eax,dword ptr [ebp-8]
 004ECB3D    call        004CF30C
 004ECB42    test        al,al
>004ECB44    je          004ECB50
 004ECB46    xor         edx,edx
 004ECB48    mov         eax,dword ptr [ebp-4]
 004ECB4B    call        TForm.SetActiveControl
 004ECB50    mov         esp,ebp
 004ECB52    pop         ebp
 004ECB53    ret
end;*}

//004ECB54
{*procedure sub_004ECB54(?:?; ?:TWinControl);
begin
 004ECB54    push        ebp
 004ECB55    mov         ebp,esp
 004ECB57    add         esp,0FFFFFFF4
 004ECB5A    mov         dword ptr [ebp-8],edx
 004ECB5D    mov         dword ptr [ebp-4],eax
 004ECB60    mov         eax,dword ptr [ebp-4]
 004ECB63    mov         al,byte ptr [eax+22E]
 004ECB69    mov         byte ptr [ebp-9],al
 004ECB6C    mov         edx,dword ptr [ebp-8]
 004ECB6F    mov         eax,dword ptr [ebp-4]
 004ECB72    call        TForm.SetActiveControl
 004ECB77    cmp         byte ptr [ebp-9],0
>004ECB7B    jne         004ECB88
 004ECB7D    mov         eax,dword ptr [ebp-4]
 004ECB80    mov         edx,dword ptr [eax]
 004ECB82    call        dword ptr [edx+0C4]
 004ECB88    mov         esp,ebp
 004ECB8A    pop         ebp
 004ECB8B    ret
end;*}

//004ECB8C
{*function sub_004ECB8C(?:?):?;
begin
 004ECB8C    push        ebp
 004ECB8D    mov         ebp,esp
 004ECB8F    add         esp,0FFFFFFEC
 004ECB92    mov         dword ptr [ebp-8],edx
 004ECB95    mov         dword ptr [ebp-4],eax
 004ECB98    mov         byte ptr [ebp-9],0
 004ECB9C    inc         dword ptr ds:[5418CC];gvar_005418CC
 004ECBA2    mov         eax,dword ptr [ebp-4]
 004ECBA5    cmp         dword ptr [eax+250],0;TCustomForm.FDesigner:IDesignerHook
>004ECBAC    jne         004ECBCF
 004ECBAE    mov         eax,dword ptr [ebp-8]
 004ECBB1    cmp         eax,dword ptr [ebp-4]
>004ECBB4    je          004ECBC4
 004ECBB6    mov         eax,dword ptr [ebp-4]
 004ECBB9    mov         edx,dword ptr [ebp-8]
 004ECBBC    mov         dword ptr [eax+220],edx;TCustomForm.FActiveControl:TWinControl
>004ECBC2    jmp         004ECBCF
 004ECBC4    mov         eax,dword ptr [ebp-4]
 004ECBC7    xor         edx,edx
 004ECBC9    mov         dword ptr [eax+220],edx;TCustomForm.FActiveControl:TWinControl
 004ECBCF    mov         eax,[0055DE50];Screen:TScreen
 004ECBD4    mov         edx,dword ptr [ebp-8]
 004ECBD7    mov         dword ptr [eax+64],edx
 004ECBDA    mov         eax,[0055DE50];Screen:TScreen
 004ECBDF    mov         edx,dword ptr [ebp-4]
 004ECBE2    mov         dword ptr [eax+68],edx
 004ECBE5    mov         eax,[0055DE50];Screen:TScreen
 004ECBEA    mov         eax,dword ptr [eax+50]
 004ECBED    mov         edx,dword ptr [ebp-4]
 004ECBF0    call        00478AC4
 004ECBF5    mov         eax,[0055DE50];Screen:TScreen
 004ECBFA    mov         eax,dword ptr [eax+50]
 004ECBFD    mov         ecx,dword ptr [ebp-4]
 004ECC00    xor         edx,edx
 004ECC02    call        004788DC
 004ECC07    mov         eax,dword ptr [ebp-4]
 004ECC0A    mov         edx,dword ptr ds:[4E6708];TForm
 004ECC10    call        @IsClass
 004ECC15    test        al,al
>004ECC17    je          004ECC48
 004ECC19    mov         eax,[0055DE50];Screen:TScreen
 004ECC1E    mov         edx,dword ptr [ebp-4]
 004ECC21    mov         dword ptr [eax+6C],edx
 004ECC24    mov         eax,[0055DE50];Screen:TScreen
 004ECC29    mov         eax,dword ptr [eax+4C]
 004ECC2C    mov         edx,dword ptr [ebp-4]
 004ECC2F    call        00478AC4
 004ECC34    mov         eax,[0055DE50];Screen:TScreen
 004ECC39    mov         eax,dword ptr [eax+4C]
 004ECC3C    mov         ecx,dword ptr [ebp-4]
 004ECC3F    xor         edx,edx
 004ECC41    call        004788DC
>004ECC46    jmp         004ECC52
 004ECC48    mov         eax,[0055DE50];Screen:TScreen
 004ECC4D    xor         edx,edx
 004ECC4F    mov         dword ptr [eax+6C],edx
 004ECC52    mov         eax,dword ptr [ebp-8]
 004ECC55    test        byte ptr [eax+54],20
>004ECC59    jne         004ECE9E
 004ECC5F    mov         eax,dword ptr [ebp-8]
 004ECC62    mov         ax,word ptr [eax+54]
 004ECC66    or          ax,word ptr ds:[4ECEA8];0x20 gvar_004ECEA8
 004ECC6D    mov         edx,dword ptr [ebp-8]
 004ECC70    mov         word ptr [edx+54],ax
 004ECC74    xor         eax,eax
 004ECC76    push        ebp
 004ECC77    push        4ECE89
 004ECC7C    push        dword ptr fs:[eax]
 004ECC7F    mov         dword ptr fs:[eax],esp
 004ECC82    mov         eax,[0055DE50];Screen:TScreen
 004ECC87    mov         eax,dword ptr [eax+78]
 004ECC8A    cmp         eax,dword ptr [ebp-4]
>004ECC8D    je          004ECCF8
 004ECC8F    mov         eax,[0055DE50];Screen:TScreen
 004ECC94    cmp         dword ptr [eax+78],0
>004ECC98    je          004ECCCE
 004ECC9A    mov         eax,[0055DE50];Screen:TScreen
 004ECC9F    mov         eax,dword ptr [eax+78]
 004ECCA2    call        TWinControl.GetHandle
 004ECCA7    mov         dword ptr [ebp-10],eax
 004ECCAA    mov         eax,[0055DE50];Screen:TScreen
 004ECCAF    xor         edx,edx
 004ECCB1    mov         dword ptr [eax+78],edx
 004ECCB4    mov         dx,0B001
 004ECCB8    mov         eax,dword ptr [ebp-10]
 004ECCBB    call        004E7BB0
 004ECCC0    test        al,al
>004ECCC2    jne         004ECCCE
 004ECCC4    call        @TryFinallyExit
>004ECCC9    jmp         004ECE9E
 004ECCCE    mov         eax,[0055DE50];Screen:TScreen
 004ECCD3    mov         edx,dword ptr [ebp-4]
 004ECCD6    mov         dword ptr [eax+78],edx
 004ECCD9    mov         eax,dword ptr [ebp-4]
 004ECCDC    call        TWinControl.GetHandle
 004ECCE1    mov         dx,0B000
 004ECCE5    call        004E7BB0
 004ECCEA    test        al,al
>004ECCEC    jne         004ECCF8
 004ECCEE    call        @TryFinallyExit
>004ECCF3    jmp         004ECE9E
 004ECCF8    mov         eax,dword ptr [ebp-4]
 004ECCFB    cmp         dword ptr [eax+224],0;TCustomForm.FFocusedControl:TWinControl
>004ECD02    jne         004ECD10
 004ECD04    mov         eax,dword ptr [ebp-4]
 004ECD07    mov         edx,dword ptr [ebp-4]
 004ECD0A    mov         dword ptr [eax+224],edx;TCustomForm.FFocusedControl:TWinControl
 004ECD10    mov         eax,dword ptr [ebp-4]
 004ECD13    mov         eax,dword ptr [eax+224];TCustomForm.FFocusedControl:TWinControl
 004ECD19    cmp         eax,dword ptr [ebp-8]
>004ECD1C    je          004ECE64
>004ECD22    jmp         004ECD64
 004ECD24    mov         eax,dword ptr [ebp-4]
 004ECD27    mov         eax,dword ptr [eax+224];TCustomForm.FFocusedControl:TWinControl
 004ECD2D    call        TWinControl.GetHandle
 004ECD32    mov         dword ptr [ebp-10],eax
 004ECD35    mov         eax,dword ptr [ebp-4]
 004ECD38    mov         eax,dword ptr [eax+224];TCustomForm.FFocusedControl:TWinControl
 004ECD3E    mov         eax,dword ptr [eax+30];TWinControl.FParent:TWinControl
 004ECD41    mov         edx,dword ptr [ebp-4]
 004ECD44    mov         dword ptr [edx+224],eax;TCustomForm.FFocusedControl:TWinControl
 004ECD4A    mov         dx,0B01B
 004ECD4E    mov         eax,dword ptr [ebp-10]
 004ECD51    call        004E7BB0
 004ECD56    test        al,al
>004ECD58    jne         004ECD64
 004ECD5A    call        @TryFinallyExit
>004ECD5F    jmp         004ECE9E
 004ECD64    mov         eax,dword ptr [ebp-4]
 004ECD67    cmp         dword ptr [eax+224],0;TCustomForm.FFocusedControl:TWinControl
>004ECD6E    je          004ECDD4
 004ECD70    mov         eax,dword ptr [ebp-4]
 004ECD73    mov         eax,dword ptr [eax+224];TCustomForm.FFocusedControl:TWinControl
 004ECD79    mov         edx,dword ptr [ebp-8]
 004ECD7C    call        004CF30C
 004ECD81    test        al,al
>004ECD83    je          004ECD24
>004ECD85    jmp         004ECDD4
 004ECD87    mov         eax,dword ptr [ebp-8]
 004ECD8A    mov         dword ptr [ebp-14],eax
>004ECD8D    jmp         004ECD98
 004ECD8F    mov         eax,dword ptr [ebp-14]
 004ECD92    mov         eax,dword ptr [eax+30]
 004ECD95    mov         dword ptr [ebp-14],eax
 004ECD98    mov         eax,dword ptr [ebp-14]
 004ECD9B    mov         eax,dword ptr [eax+30]
 004ECD9E    mov         edx,dword ptr [ebp-4]
 004ECDA1    cmp         eax,dword ptr [edx+224];TCustomForm.FFocusedControl:TWinControl
>004ECDA7    jne         004ECD8F
 004ECDA9    mov         eax,dword ptr [ebp-4]
 004ECDAC    mov         edx,dword ptr [ebp-14]
 004ECDAF    mov         dword ptr [eax+224],edx;TCustomForm.FFocusedControl:TWinControl
 004ECDB5    mov         eax,dword ptr [ebp-14]
 004ECDB8    call        TWinControl.GetHandle
 004ECDBD    mov         dx,0B01A
 004ECDC1    call        004E7BB0
 004ECDC6    test        al,al
>004ECDC8    jne         004ECDD4
 004ECDCA    call        @TryFinallyExit
>004ECDCF    jmp         004ECE9E
 004ECDD4    mov         eax,dword ptr [ebp-4]
 004ECDD7    mov         eax,dword ptr [eax+224];TCustomForm.FFocusedControl:TWinControl
 004ECDDD    cmp         eax,dword ptr [ebp-8]
>004ECDE0    jne         004ECD87
 004ECDE2    mov         eax,dword ptr [ebp-8]
 004ECDE5    mov         eax,dword ptr [eax+30]
 004ECDE8    mov         dword ptr [ebp-14],eax
 004ECDEB    cmp         dword ptr [ebp-14],0
>004ECDEF    je          004ECE20
 004ECDF1    mov         eax,dword ptr [ebp-14]
 004ECDF4    mov         edx,dword ptr ds:[4E5DE0];TScrollingWinControl
 004ECDFA    call        @IsClass
 004ECDFF    test        al,al
>004ECE01    je          004ECE11
 004ECE03    mov         edx,dword ptr [ebp-8]
 004ECE06    mov         eax,dword ptr [ebp-14]
 004ECE09    mov         ecx,dword ptr [eax]
 004ECE0B    call        dword ptr [ecx+0CC]
 004ECE11    mov         eax,dword ptr [ebp-14]
 004ECE14    mov         eax,dword ptr [eax+30]
 004ECE17    mov         dword ptr [ebp-14],eax
 004ECE1A    cmp         dword ptr [ebp-14],0
>004ECE1E    jne         004ECDF1
 004ECE20    mov         eax,dword ptr [ebp-8]
 004ECE23    push        eax
 004ECE24    xor         ecx,ecx
 004ECE26    mov         edx,0B007
 004ECE2B    mov         eax,dword ptr [ebp-4]
 004ECE2E    call        004CC7DC
 004ECE33    mov         eax,dword ptr [ebp-4]
 004ECE36    cmp         dword ptr [eax+27C],0;TCustomForm.FActiveOleControl:TWinControl
>004ECE3D    je          004ECE64
 004ECE3F    mov         eax,dword ptr [ebp-4]
 004ECE42    mov         eax,dword ptr [eax+27C];TCustomForm.FActiveOleControl:TWinControl
 004ECE48    cmp         eax,dword ptr [ebp-8]
>004ECE4B    je          004ECE64
 004ECE4D    push        0
 004ECE4F    mov         eax,dword ptr [ebp-4]
 004ECE52    mov         eax,dword ptr [eax+27C];TCustomForm.FActiveOleControl:TWinControl
 004ECE58    xor         ecx,ecx
 004ECE5A    mov         edx,0B02A
 004ECE5F    call        004CC7DC
 004ECE64    xor         eax,eax
 004ECE66    pop         edx
 004ECE67    pop         ecx
 004ECE68    pop         ecx
 004ECE69    mov         dword ptr fs:[eax],edx
 004ECE6C    push        4ECE90
 004ECE71    mov         eax,dword ptr [ebp-8]
 004ECE74    mov         dx,word ptr ds:[4ECEA8];0x20 gvar_004ECEA8
 004ECE7B    not         edx
 004ECE7D    and         dx,word ptr [eax+54]
 004ECE81    mov         eax,dword ptr [ebp-8]
 004ECE84    mov         word ptr [eax+54],dx
 004ECE88    ret
>004ECE89    jmp         @HandleFinally
>004ECE8E    jmp         004ECE71
 004ECE90    mov         eax,[0055DE50];Screen:TScreen
 004ECE95    call        004F0198
 004ECE9A    mov         byte ptr [ebp-9],1
 004ECE9E    mov         al,byte ptr [ebp-9]
 004ECEA1    mov         esp,ebp
 004ECEA3    pop         ebp
 004ECEA4    ret
end;*}

//004ECEAC
procedure TCustomForm.sub_004ECEAC;
begin
{*
 004ECEAC    push        ebp
 004ECEAD    mov         ebp,esp
 004ECEAF    push        ecx
 004ECEB0    mov         dword ptr [ebp-4],eax
 004ECEB3    pop         ecx
 004ECEB4    pop         ebp
 004ECEB5    ret
*}
end;

//004ECEB8
procedure sub_004ECEB8(?:TCustomForm);
begin
{*
 004ECEB8    push        ebp
 004ECEB9    mov         ebp,esp
 004ECEBB    add         esp,0FFFFFFF8
 004ECEBE    push        ebx
 004ECEBF    mov         dword ptr [ebp-4],eax
 004ECEC2    mov         eax,dword ptr [ebp-4]
 004ECEC5    cmp         dword ptr [eax+220],0;TForm.FActiveControl:TWinControl
>004ECECC    je          004ECEE8
 004ECECE    mov         eax,dword ptr [ebp-4]
 004ECED1    cmp         dword ptr [eax+250],0;TForm.FDesigner:IDesignerHook
>004ECED8    jne         004ECEE8
 004ECEDA    mov         eax,dword ptr [ebp-4]
 004ECEDD    mov         eax,dword ptr [eax+220];TForm.FActiveControl:TWinControl
 004ECEE3    mov         dword ptr [ebp-8],eax
>004ECEE6    jmp         004ECEEE
 004ECEE8    mov         eax,dword ptr [ebp-4]
 004ECEEB    mov         dword ptr [ebp-8],eax
 004ECEEE    mov         eax,dword ptr [ebp-8]
 004ECEF1    call        TWinControl.GetHandle
 004ECEF6    push        eax
 004ECEF7    call        user32.SetFocus
 004ECEFC    mov         eax,dword ptr [ebp-8]
 004ECEFF    call        TWinControl.GetHandle
 004ECF04    mov         ebx,eax
 004ECF06    call        user32.GetFocus
 004ECF0B    cmp         ebx,eax
>004ECF0D    jne         004ECF20
 004ECF0F    push        0
 004ECF11    xor         ecx,ecx
 004ECF13    mov         edx,0B029
 004ECF18    mov         eax,dword ptr [ebp-8]
 004ECF1B    call        004CC7DC
 004ECF20    pop         ebx
 004ECF21    pop         ecx
 004ECF22    pop         ecx
 004ECF23    pop         ebp
 004ECF24    ret
*}
end;

//004ECF28
{*procedure sub_004ECF28(?:TCustomForm; ?:?);
begin
 004ECF28    push        ebp
 004ECF29    mov         ebp,esp
 004ECF2B    add         esp,0FFFFFFF8
 004ECF2E    mov         byte ptr [ebp-5],dl
 004ECF31    mov         dword ptr [ebp-4],eax
 004ECF34    mov         al,byte ptr [ebp-5]
 004ECF37    mov         edx,dword ptr [ebp-4]
 004ECF3A    mov         byte ptr [edx+22E],al
 004ECF40    mov         eax,dword ptr [ebp-4]
 004ECF43    cmp         dword ptr [eax+27C],0
>004ECF4A    je          004ECF66
 004ECF4C    push        0
 004ECF4E    xor         ecx,ecx
 004ECF50    mov         cl,byte ptr [ebp-5]
 004ECF53    mov         edx,0B02B
 004ECF58    mov         eax,dword ptr [ebp-4]
 004ECF5B    mov         eax,dword ptr [eax+27C]
 004ECF61    call        004CC7DC
 004ECF66    cmp         byte ptr [ebp-5],0
>004ECF6A    je          004ECFAD
 004ECF6C    mov         eax,dword ptr [ebp-4]
 004ECF6F    cmp         dword ptr [eax+220],0
>004ECF76    jne         004ECF9B
 004ECF78    mov         eax,dword ptr [ebp-4]
 004ECF7B    test        byte ptr [eax+1C],10
>004ECF7F    jne         004ECF9B
 004ECF81    push        1
 004ECF83    push        0
 004ECF85    mov         cl,1
 004ECF87    xor         edx,edx
 004ECF89    mov         eax,dword ptr [ebp-4]
 004ECF8C    call        004D3F04
 004ECF91    mov         edx,eax
 004ECF93    mov         eax,dword ptr [ebp-4]
 004ECF96    call        TForm.SetActiveControl
 004ECF9B    mov         dl,1
 004ECF9D    mov         eax,dword ptr [ebp-4]
 004ECFA0    call        TCustomForm.MergeMenu
 004ECFA5    mov         eax,dword ptr [ebp-4]
 004ECFA8    call        004ECEB8
 004ECFAD    pop         ecx
 004ECFAE    pop         ecx
 004ECFAF    pop         ebp
 004ECFB0    ret
end;*}

//004ECFB4
{*procedure sub_004ECFB4(?:TCustomForm; ?:?);
begin
 004ECFB4    push        ebp
 004ECFB5    mov         ebp,esp
 004ECFB7    add         esp,0FFFFFFF8
 004ECFBA    mov         dword ptr [ebp-8],edx
 004ECFBD    mov         dword ptr [ebp-4],eax
 004ECFC0    mov         eax,dword ptr [ebp-4]
 004ECFC3    cmp         byte ptr [eax+22E],0
>004ECFCA    je          004ECFF1
 004ECFCC    mov         eax,dword ptr [ebp-4]
 004ECFCF    cmp         dword ptr [eax+220],0
>004ECFD6    je          004ECFF1
 004ECFD8    mov         eax,dword ptr [ebp-8]
 004ECFDB    push        eax
 004ECFDC    xor         ecx,ecx
 004ECFDE    mov         edx,0B004
 004ECFE3    mov         eax,dword ptr [ebp-4]
 004ECFE6    mov         eax,dword ptr [eax+220]
 004ECFEC    call        004CC7DC
 004ECFF1    mov         eax,dword ptr [ebp-4]
 004ECFF4    cmp         byte ptr [eax+22F],2
>004ECFFB    jne         004ED019
 004ECFFD    mov         eax,dword ptr [ebp-4]
 004ED000    call        004EB5E0
 004ED005    test        eax,eax
>004ED007    je          004ED019
 004ED009    mov         eax,dword ptr [ebp-4]
 004ED00C    call        004EB5E0
 004ED011    mov         edx,dword ptr [ebp-8]
 004ED014    call        004ECFB4
 004ED019    pop         ecx
 004ED01A    pop         ecx
 004ED01B    pop         ebp
 004ED01C    ret
end;*}

//004ED020
procedure TCustomForm.MergeMenu(MergeState:Boolean);
begin
{*
 004ED020    push        ebp
 004ED021    mov         ebp,esp
 004ED023    add         esp,0FFFFFFF0
 004ED026    mov         byte ptr [ebp-5],dl
 004ED029    mov         dword ptr [ebp-4],eax
 004ED02C    mov         eax,dword ptr [ebp-4]
 004ED02F    test        byte ptr [eax+2F4],8
>004ED036    jne         004ED0FE
 004ED03C    mov         eax,[0055DE4C];Application:TApplication
 004ED041    cmp         dword ptr [eax+44],0
>004ED045    je          004ED0FE
 004ED04B    mov         eax,[0055DE4C];Application:TApplication
 004ED050    mov         eax,dword ptr [eax+44]
 004ED053    cmp         dword ptr [eax+248],0
>004ED05A    je          004ED0FE
 004ED060    mov         eax,[0055DE4C];Application:TApplication
 004ED065    mov         eax,dword ptr [eax+44]
 004ED068    cmp         eax,dword ptr [ebp-4]
>004ED06B    je          004ED0FE
 004ED071    mov         eax,dword ptr [ebp-4]
 004ED074    cmp         byte ptr [eax+22F],1
>004ED07B    je          004ED08E
 004ED07D    mov         eax,[0055DE4C];Application:TApplication
 004ED082    mov         eax,dword ptr [eax+44]
 004ED085    cmp         byte ptr [eax+22F],2
>004ED08C    je          004ED0FE
 004ED08E    xor         eax,eax
 004ED090    mov         dword ptr [ebp-0C],eax
 004ED093    mov         eax,dword ptr [ebp-4]
 004ED096    test        byte ptr [eax+1C],10
>004ED09A    jne         004ED0CF
 004ED09C    mov         eax,dword ptr [ebp-4]
 004ED09F    cmp         dword ptr [eax+248],0
>004ED0A6    je          004ED0CF
 004ED0A8    mov         eax,dword ptr [ebp-4]
 004ED0AB    mov         eax,dword ptr [eax+248]
 004ED0B1    cmp         byte ptr [eax+5C],0
>004ED0B5    jne         004ED0C3
 004ED0B7    mov         eax,dword ptr [ebp-4]
 004ED0BA    cmp         byte ptr [eax+22F],1
>004ED0C1    jne         004ED0CF
 004ED0C3    mov         eax,dword ptr [ebp-4]
 004ED0C6    mov         eax,dword ptr [eax+248]
 004ED0CC    mov         dword ptr [ebp-0C],eax
 004ED0CF    mov         eax,[0055DE4C];Application:TApplication
 004ED0D4    mov         eax,dword ptr [eax+44]
 004ED0D7    mov         eax,dword ptr [eax+248]
 004ED0DD    mov         dword ptr [ebp-10],eax
 004ED0E0    cmp         byte ptr [ebp-5],0
>004ED0E4    je          004ED0F3
 004ED0E6    mov         edx,dword ptr [ebp-0C]
 004ED0E9    mov         eax,dword ptr [ebp-10]
 004ED0EC    call        004E4BB0
>004ED0F1    jmp         004ED0FE
 004ED0F3    mov         edx,dword ptr [ebp-0C]
 004ED0F6    mov         eax,dword ptr [ebp-10]
 004ED0F9    call        004E4BE8
 004ED0FE    mov         esp,ebp
 004ED100    pop         ebp
 004ED101    ret
*}
end;

//004ED104
{*procedure sub_004ED104(?:?; ?:TWinControl; ?:?);
begin
 004ED104    push        ebp
 004ED105    mov         ebp,esp
 004ED107    add         esp,0FFFFFFF4
 004ED10A    mov         dword ptr [ebp-0C],ecx
 004ED10D    mov         dword ptr [ebp-8],edx
 004ED110    mov         dword ptr [ebp-4],eax
 004ED113    cmp         dword ptr [ebp-8],0
>004ED117    je          004ED163
>004ED119    jmp         004ED124
 004ED11B    mov         eax,dword ptr [ebp-8]
 004ED11E    mov         eax,dword ptr [eax+30]
 004ED121    mov         dword ptr [ebp-8],eax
 004ED124    mov         eax,dword ptr [ebp-8]
 004ED127    cmp         dword ptr [eax+30],0
>004ED12B    je          004ED13F
 004ED12D    mov         eax,dword ptr [ebp-8]
 004ED130    mov         edx,dword ptr ds:[4E6404];TCustomForm
 004ED136    call        @IsClass
 004ED13B    test        al,al
>004ED13D    je          004ED11B
 004ED13F    cmp         dword ptr [ebp-8],0
>004ED143    je          004ED163
 004ED145    mov         eax,dword ptr [ebp-8]
 004ED148    cmp         eax,dword ptr [ebp-0C]
>004ED14B    je          004ED163
 004ED14D    push        0
 004ED14F    push        0
 004ED151    mov         eax,dword ptr [ebp-4]
 004ED154    push        eax
 004ED155    mov         eax,dword ptr [ebp-8]
 004ED158    call        TWinControl.GetHandle
 004ED15D    push        eax
 004ED15E    call        user32.SendMessageA
 004ED163    mov         esp,ebp
 004ED165    pop         ebp
 004ED166    ret
end;*}

//004ED168
procedure TCustomForm.sub_004ED168;
begin
{*
 004ED168    push        ebp
 004ED169    mov         ebp,esp
 004ED16B    push        ecx
 004ED16C    push        ebx
 004ED16D    mov         dword ptr [ebp-4],eax
 004ED170    mov         ecx,dword ptr [ebp-4]
 004ED173    mov         eax,dword ptr [ebp-4]
 004ED176    mov         edx,dword ptr [eax+220];TCustomForm.FActiveControl:TWinControl
 004ED17C    mov         eax,0B000
 004ED181    call        004ED104
 004ED186    mov         eax,dword ptr [ebp-4]
 004ED189    cmp         word ptr [eax+28A],0;TCustomForm.?f28A:word
>004ED191    je          004ED1A5
 004ED193    mov         ebx,dword ptr [ebp-4]
 004ED196    mov         edx,dword ptr [ebp-4]
 004ED199    mov         eax,dword ptr [ebx+28C];TCustomForm.?f28C:dword
 004ED19F    call        dword ptr [ebx+288];TCustomForm.FOnActivate
 004ED1A5    pop         ebx
 004ED1A6    pop         ecx
 004ED1A7    pop         ebp
 004ED1A8    ret
*}
end;

//004ED1AC
procedure TCustomForm.sub_004ED1AC;
begin
{*
 004ED1AC    push        ebp
 004ED1AD    mov         ebp,esp
 004ED1AF    push        ecx
 004ED1B0    push        ebx
 004ED1B1    mov         dword ptr [ebp-4],eax
 004ED1B4    mov         ecx,dword ptr [ebp-4]
 004ED1B7    mov         eax,dword ptr [ebp-4]
 004ED1BA    mov         edx,dword ptr [eax+220];TCustomForm.FActiveControl:TWinControl
 004ED1C0    mov         eax,0B001
 004ED1C5    call        004ED104
 004ED1CA    mov         eax,dword ptr [ebp-4]
 004ED1CD    cmp         word ptr [eax+2A2],0;TCustomForm.?f2A2:word
>004ED1D5    je          004ED1E9
 004ED1D7    mov         ebx,dword ptr [ebp-4]
 004ED1DA    mov         edx,dword ptr [ebp-4]
 004ED1DD    mov         eax,dword ptr [ebx+2A4];TCustomForm.?f2A4:dword
 004ED1E3    call        dword ptr [ebx+2A0];TCustomForm.FOnDeactivate
 004ED1E9    pop         ebx
 004ED1EA    pop         ecx
 004ED1EB    pop         ebp
 004ED1EC    ret
*}
end;

//004ED1F0
procedure TCustomForm.sub_004ED1F0;
begin
{*
 004ED1F0    push        ebp
 004ED1F1    mov         ebp,esp
 004ED1F3    push        ecx
 004ED1F4    push        ebx
 004ED1F5    mov         dword ptr [ebp-4],eax
 004ED1F8    mov         eax,dword ptr [ebp-4]
 004ED1FB    cmp         word ptr [eax+2BA],0;TCustomForm.?f2BA:word
>004ED203    je          004ED217
 004ED205    mov         ebx,dword ptr [ebp-4]
 004ED208    mov         edx,dword ptr [ebp-4]
 004ED20B    mov         eax,dword ptr [ebx+2BC];TCustomForm.?f2BC:dword
 004ED211    call        dword ptr [ebx+2B8];TCustomForm.FOnPaint
 004ED217    pop         ebx
 004ED218    pop         ecx
 004ED219    pop         ebp
 004ED21A    ret
*}
end;

//004ED21C
{*function sub_004ED21C(?:TCustomForm):?;
begin
 004ED21C    push        ebp
 004ED21D    mov         ebp,esp
 004ED21F    add         esp,0FFFFFFF8
 004ED222    mov         dword ptr [ebp-4],eax
 004ED225    mov         eax,dword ptr [ebp-4]
 004ED228    mov         eax,dword ptr [eax+240];TCustomForm.FIcon:TIcon
 004ED22E    call        0048F1C8
 004ED233    mov         dword ptr [ebp-8],eax
 004ED236    cmp         dword ptr [ebp-8],0
>004ED23A    jne         004ED249
 004ED23C    mov         eax,[0055DE4C];Application:TApplication
 004ED241    call        004F2594
 004ED246    mov         dword ptr [ebp-8],eax
 004ED249    mov         eax,dword ptr [ebp-8]
 004ED24C    pop         ecx
 004ED24D    pop         ecx
 004ED24E    pop         ebp
 004ED24F    ret
end;*}

//004ED250
{*procedure sub_004ED250(?:?);
begin
 004ED250    push        ebp
 004ED251    mov         ebp,esp
 004ED253    add         esp,0FFFFFFF8
 004ED256    push        esi
 004ED257    mov         dword ptr [ebp-8],edx
 004ED25A    mov         dword ptr [ebp-4],eax
 004ED25D    mov         eax,dword ptr [ebp-4]
 004ED260    mov         eax,dword ptr [eax+238];TCustomForm.FCanvas:TControlCanvas
 004ED266    call        TCanvas.Lock
 004ED26B    xor         eax,eax
 004ED26D    push        ebp
 004ED26E    push        4ED301
 004ED273    push        dword ptr fs:[eax]
 004ED276    mov         dword ptr fs:[eax],esp
 004ED279    mov         eax,dword ptr [ebp-4]
 004ED27C    mov         eax,dword ptr [eax+238];TCustomForm.FCanvas:TControlCanvas
 004ED282    mov         edx,dword ptr [ebp-8]
 004ED285    call        TCanvas.SetHandle
 004ED28A    xor         eax,eax
 004ED28C    push        ebp
 004ED28D    push        4ED2DE
 004ED292    push        dword ptr fs:[eax]
 004ED295    mov         dword ptr fs:[eax],esp
 004ED298    mov         eax,dword ptr [ebp-4]
 004ED29B    cmp         dword ptr [eax+250],0;TCustomForm.FDesigner:IDesignerHook
>004ED2A2    je          004ED2B4
 004ED2A4    mov         eax,dword ptr [ebp-4]
 004ED2A7    mov         eax,dword ptr [eax+250];TCustomForm.FDesigner:IDesignerHook
 004ED2AD    mov         edx,dword ptr [eax]
 004ED2AF    call        dword ptr [edx+28]
>004ED2B2    jmp         004ED2C0
 004ED2B4    mov         eax,dword ptr [ebp-4]
 004ED2B7    mov         si,0FFAC
 004ED2BB    call        @CallDynaInst;TCustomForm.sub_004ED1F0
 004ED2C0    xor         eax,eax
 004ED2C2    pop         edx
 004ED2C3    pop         ecx
 004ED2C4    pop         ecx
 004ED2C5    mov         dword ptr fs:[eax],edx
 004ED2C8    push        4ED2E5
 004ED2CD    mov         eax,dword ptr [ebp-4]
 004ED2D0    mov         eax,dword ptr [eax+238];TCustomForm.FCanvas:TControlCanvas
 004ED2D6    xor         edx,edx
 004ED2D8    call        TCanvas.SetHandle
 004ED2DD    ret
>004ED2DE    jmp         @HandleFinally
>004ED2E3    jmp         004ED2CD
 004ED2E5    xor         eax,eax
 004ED2E7    pop         edx
 004ED2E8    pop         ecx
 004ED2E9    pop         ecx
 004ED2EA    mov         dword ptr fs:[eax],edx
 004ED2ED    push        4ED308
 004ED2F2    mov         eax,dword ptr [ebp-4]
 004ED2F5    mov         eax,dword ptr [eax+238];TCustomForm.FCanvas:TControlCanvas
 004ED2FB    call        TCanvas.Unlock
 004ED300    ret
>004ED301    jmp         @HandleFinally
>004ED306    jmp         004ED2F2
 004ED308    pop         esi
 004ED309    pop         ecx
 004ED30A    pop         ecx
 004ED30B    pop         ebp
 004ED30C    ret
end;*}

//004ED310
{*procedure TCustomForm.sub_004C9CFC(?:?);
begin
 004ED310    push        ebp
 004ED311    mov         ebp,esp
 004ED313    add         esp,0FFFFFFE8
 004ED316    push        esi
 004ED317    mov         byte ptr [ebp-5],dl
 004ED31A    mov         dword ptr [ebp-4],eax
 004ED31D    mov         byte ptr [ebp-6],0
 004ED321    mov         eax,dword ptr [ebp-4]
 004ED324    call        004EB5E0
 004ED329    mov         dword ptr [ebp-10],eax
 004ED32C    cmp         dword ptr [ebp-10],0
>004ED330    je          004ED344
 004ED332    mov         dl,byte ptr [ebp-5]
 004ED335    mov         eax,dword ptr [ebp-10]
 004ED338    mov         si,0FFD1
 004ED33C    call        @CallDynaInst
 004ED341    mov         byte ptr [ebp-6],al
 004ED344    mov         eax,dword ptr [ebp-4]
 004ED347    call        TCustomForm.GetMDIChildCount
 004ED34C    dec         eax
 004ED34D    test        eax,eax
>004ED34F    jl          004ED397
 004ED351    inc         eax
 004ED352    mov         dword ptr [ebp-18],eax
 004ED355    mov         dword ptr [ebp-0C],0
 004ED35C    mov         al,byte ptr [ebp-5]
 004ED35F    and         al,byte ptr [ebp-6]
>004ED362    jne         004ED3AD
 004ED364    mov         edx,dword ptr [ebp-0C]
 004ED367    mov         eax,dword ptr [ebp-4]
 004ED36A    call        004EB698
 004ED36F    mov         dword ptr [ebp-14],eax
 004ED372    mov         eax,dword ptr [ebp-10]
 004ED375    cmp         eax,dword ptr [ebp-14]
>004ED378    je          004ED38F
 004ED37A    mov         dl,byte ptr [ebp-5]
 004ED37D    mov         eax,dword ptr [ebp-14]
 004ED380    mov         si,0FFD1
 004ED384    call        @CallDynaInst
 004ED389    or          al,byte ptr [ebp-6]
 004ED38C    mov         byte ptr [ebp-6],al
 004ED38F    inc         dword ptr [ebp-0C]
 004ED392    dec         dword ptr [ebp-18]
>004ED395    jne         004ED35C
 004ED397    mov         al,byte ptr [ebp-5]
 004ED39A    and         al,byte ptr [ebp-6]
>004ED39D    jne         004ED3AD
 004ED39F    mov         dl,byte ptr [ebp-5]
 004ED3A2    mov         eax,dword ptr [ebp-4]
 004ED3A5    call        TWinControl.sub_004C9CFC
 004ED3AA    mov         byte ptr [ebp-6],al
 004ED3AD    mov         al,byte ptr [ebp-6]
 004ED3B0    pop         esi
 004ED3B1    mov         esp,ebp
 004ED3B3    pop         ebp
 004ED3B4    ret
end;*}

//004ED3B8
procedure TCustomForm.WMPaint(Message:TWMPaint);
begin
{*
 004ED3B8    push        ebp
 004ED3B9    mov         ebp,esp
 004ED3BB    add         esp,0FFFFFFB4
 004ED3BE    mov         dword ptr [ebp-8],edx
 004ED3C1    mov         dword ptr [ebp-4],eax
 004ED3C4    mov         eax,dword ptr [ebp-4]
 004ED3C7    call        TWinControl.GetHandle
 004ED3CC    push        eax
 004ED3CD    call        user32.IsIconic
 004ED3D2    test        eax,eax
>004ED3D4    jne         004ED40D
 004ED3D6    mov         ax,[004ED450];0x100 gvar_004ED450
 004ED3DC    mov         edx,dword ptr [ebp-4]
 004ED3DF    or          ax,word ptr [edx+54];TCustomForm.FControlState:TControlState
 004ED3E3    mov         edx,dword ptr [ebp-4]
 004ED3E6    mov         word ptr [edx+54],ax;TCustomForm.FControlState:TControlState
 004ED3EA    mov         edx,dword ptr [ebp-8]
 004ED3ED    mov         eax,dword ptr [ebp-4]
 004ED3F0    call        TWinControl.WMPaint
 004ED3F5    mov         ax,[004ED450];0x100 gvar_004ED450
 004ED3FB    mov         edx,dword ptr [ebp-4]
 004ED3FE    not         eax
 004ED400    and         ax,word ptr [edx+54];TCustomForm.FControlState:TControlState
 004ED404    mov         edx,dword ptr [ebp-4]
 004ED407    mov         word ptr [edx+54],ax;TCustomForm.FControlState:TControlState
>004ED40B    jmp         004ED44A
 004ED40D    lea         eax,[ebp-4C]
 004ED410    push        eax
 004ED411    mov         eax,dword ptr [ebp-4]
 004ED414    call        TWinControl.GetHandle
 004ED419    push        eax
 004ED41A    call        user32.BeginPaint
 004ED41F    mov         dword ptr [ebp-0C],eax
 004ED422    mov         eax,dword ptr [ebp-4]
 004ED425    call        004ED21C
 004ED42A    push        eax
 004ED42B    push        0
 004ED42D    push        0
 004ED42F    mov         eax,dword ptr [ebp-0C]
 004ED432    push        eax
 004ED433    call        user32.DrawIcon
 004ED438    lea         eax,[ebp-4C]
 004ED43B    push        eax
 004ED43C    mov         eax,dword ptr [ebp-4]
 004ED43F    call        TWinControl.GetHandle
 004ED444    push        eax
 004ED445    call        user32.EndPaint
 004ED44A    mov         esp,ebp
 004ED44C    pop         ebp
 004ED44D    ret
*}
end;

//004ED454
{*procedure TCustomForm.WMEraseBkgnd(?:?);
begin
 004ED454    push        ebp
 004ED455    mov         ebp,esp
 004ED457    add         esp,0FFFFFFE8
 004ED45A    mov         dword ptr [ebp-8],edx
 004ED45D    mov         dword ptr [ebp-4],eax
 004ED460    mov         eax,dword ptr [ebp-4]
 004ED463    cmp         byte ptr [eax+22F],1;TCustomForm.FFormStyle:TFormStyle
>004ED46A    jne         004ED4BD
 004ED46C    mov         eax,dword ptr [ebp-4]
 004ED46F    cmp         byte ptr [eax+22F],1;TCustomForm.FFormStyle:TFormStyle
>004ED476    jne         004ED4B2
 004ED478    mov         eax,dword ptr [ebp-4]
 004ED47B    test        byte ptr [eax+1C],10;TCustomForm.FComponentState:TComponentState
>004ED47F    jne         004ED4B2
 004ED481    mov         eax,[0055DE4C];Application:TApplication
 004ED486    mov         eax,dword ptr [eax+44]
 004ED489    mov         eax,dword ptr [eax+170]
 004ED48F    call        TBrush.GetHandle
 004ED494    push        eax
 004ED495    lea         edx,[ebp-18]
 004ED498    mov         eax,dword ptr [ebp-4]
 004ED49B    mov         ecx,dword ptr [eax]
 004ED49D    call        dword ptr [ecx+44];TCustomForm.sub_004EA700
 004ED4A0    lea         eax,[ebp-18]
 004ED4A3    push        eax
 004ED4A4    mov         eax,dword ptr [ebp-8]
 004ED4A7    mov         eax,dword ptr [eax+4]
 004ED4AA    push        eax
 004ED4AB    call        user32.FillRect
>004ED4B0    jmp         004ED4BD
 004ED4B2    mov         edx,dword ptr [ebp-8]
 004ED4B5    mov         eax,dword ptr [ebp-4]
 004ED4B8    mov         ecx,dword ptr [eax]
 004ED4BA    call        dword ptr [ecx-10];TCustomForm.DefaultHandler
 004ED4BD    mov         esp,ebp
 004ED4BF    pop         ebp
 004ED4C0    ret
end;*}

//004ED4C4
{*procedure TCustomForm.WMEraseBkgnd(?:?);
begin
 004ED4C4    push        ebp
 004ED4C5    mov         ebp,esp
 004ED4C7    add         esp,0FFFFFFF8
 004ED4CA    mov         dword ptr [ebp-8],edx
 004ED4CD    mov         dword ptr [ebp-4],eax
 004ED4D0    mov         eax,dword ptr [ebp-4]
 004ED4D3    call        TWinControl.GetHandle
 004ED4D8    push        eax
 004ED4D9    call        user32.IsIconic
 004ED4DE    test        eax,eax
>004ED4E0    jne         004ED4EF
 004ED4E2    mov         edx,dword ptr [ebp-8]
 004ED4E5    mov         eax,dword ptr [ebp-4]
 004ED4E8    call        TWinControl.WMEraseBkgnd
>004ED4ED    jmp         004ED503
 004ED4EF    mov         eax,dword ptr [ebp-8]
 004ED4F2    mov         dword ptr [eax],27
 004ED4F8    mov         edx,dword ptr [ebp-8]
 004ED4FB    mov         eax,dword ptr [ebp-4]
 004ED4FE    mov         ecx,dword ptr [eax]
 004ED500    call        dword ptr [ecx-10];TCustomForm.DefaultHandler
 004ED503    pop         ecx
 004ED504    pop         ecx
 004ED505    pop         ebp
 004ED506    ret
end;*}

//004ED508
{*procedure TCustomForm.WMQueryDragIcon(?:?);
begin
 004ED508    push        ebp
 004ED509    mov         ebp,esp
 004ED50B    add         esp,0FFFFFFF8
 004ED50E    mov         dword ptr [ebp-8],edx
 004ED511    mov         dword ptr [ebp-4],eax
 004ED514    mov         eax,dword ptr [ebp-4]
 004ED517    call        004ED21C
 004ED51C    mov         edx,dword ptr [ebp-8]
 004ED51F    mov         dword ptr [edx+0C],eax
 004ED522    pop         ecx
 004ED523    pop         ecx
 004ED524    pop         ebp
 004ED525    ret
end;*}

//004ED528
{*procedure sub_004ED528(?:?);
begin
 004ED528    push        ebp
 004ED529    mov         ebp,esp
 004ED52B    push        ecx
 004ED52C    mov         eax,dword ptr [ebp+8]
 004ED52F    mov         eax,dword ptr [eax-4]
 004ED532    cmp         byte ptr [eax+229],0
>004ED539    je          004ED63A
 004ED53F    mov         eax,dword ptr [ebp+8]
 004ED542    mov         eax,dword ptr [eax-4]
 004ED545    test        byte ptr [eax+228],1
>004ED54C    je          004ED63A
 004ED552    mov         eax,dword ptr [ebp+8]
 004ED555    mov         eax,dword ptr [eax-4]
 004ED558    cmp         byte ptr [eax+22F],1
>004ED55F    je          004ED63A
 004ED565    push        0
 004ED567    mov         eax,dword ptr [ebp+8]
 004ED56A    mov         eax,dword ptr [eax-4]
 004ED56D    call        TWinControl.GetHandle
 004ED572    push        eax
 004ED573    call        user32.GetSystemMenu
 004ED578    mov         dword ptr [ebp-4],eax
 004ED57B    mov         eax,dword ptr [ebp+8]
 004ED57E    mov         eax,dword ptr [eax-4]
 004ED581    cmp         byte ptr [eax+229],3
>004ED588    jne         004ED5FC
 004ED58A    push        0
 004ED58C    push        0F130
 004ED591    mov         eax,dword ptr [ebp-4]
 004ED594    push        eax
 004ED595    call        user32.DeleteMenu
 004ED59A    push        400
 004ED59F    push        7
 004ED5A1    mov         eax,dword ptr [ebp-4]
 004ED5A4    push        eax
 004ED5A5    call        user32.DeleteMenu
 004ED5AA    push        400
 004ED5AF    push        5
 004ED5B1    mov         eax,dword ptr [ebp-4]
 004ED5B4    push        eax
 004ED5B5    call        user32.DeleteMenu
 004ED5BA    push        0
 004ED5BC    push        0F030
 004ED5C1    mov         eax,dword ptr [ebp-4]
 004ED5C4    push        eax
 004ED5C5    call        user32.DeleteMenu
 004ED5CA    push        0
 004ED5CC    push        0F020
 004ED5D1    mov         eax,dword ptr [ebp-4]
 004ED5D4    push        eax
 004ED5D5    call        user32.DeleteMenu
 004ED5DA    push        0
 004ED5DC    push        0F000
 004ED5E1    mov         eax,dword ptr [ebp-4]
 004ED5E4    push        eax
 004ED5E5    call        user32.DeleteMenu
 004ED5EA    push        0
 004ED5EC    push        0F120
 004ED5F1    mov         eax,dword ptr [ebp-4]
 004ED5F4    push        eax
 004ED5F5    call        user32.DeleteMenu
>004ED5FA    jmp         004ED63A
 004ED5FC    mov         eax,dword ptr [ebp+8]
 004ED5FF    mov         eax,dword ptr [eax-4]
 004ED602    test        byte ptr [eax+228],2
>004ED609    jne         004ED61B
 004ED60B    push        1
 004ED60D    push        0F020
 004ED612    mov         eax,dword ptr [ebp-4]
 004ED615    push        eax
 004ED616    call        user32.EnableMenuItem
 004ED61B    mov         eax,dword ptr [ebp+8]
 004ED61E    mov         eax,dword ptr [eax-4]
 004ED621    test        byte ptr [eax+228],4
>004ED628    jne         004ED63A
 004ED62A    push        1
 004ED62C    push        0F030
 004ED631    mov         eax,dword ptr [ebp-4]
 004ED634    push        eax
 004ED635    call        user32.EnableMenuItem
 004ED63A    pop         ecx
 004ED63B    pop         ebp
 004ED63C    ret
end;*}

//004ED640
{*procedure TCustomForm.WMNCCreate(?:?);
begin
 004ED640    push        ebp
 004ED641    mov         ebp,esp
 004ED643    add         esp,0FFFFFFF8
 004ED646    mov         dword ptr [ebp-8],edx
 004ED649    mov         dword ptr [ebp-4],eax
 004ED64C    mov         edx,dword ptr [ebp-8]
 004ED64F    mov         eax,dword ptr [ebp-4]
 004ED652    mov         ecx,dword ptr [eax]
 004ED654    call        dword ptr [ecx-10];TCustomForm.DefaultHandler
 004ED657    mov         eax,dword ptr [ebp-4]
 004ED65A    mov         edx,dword ptr [eax+248];TCustomForm.FMenu:TMainMenu
 004ED660    mov         eax,dword ptr [ebp-4]
 004ED663    call        TForm.SetMenu
 004ED668    mov         eax,dword ptr [ebp-4]
 004ED66B    test        byte ptr [eax+1C],10;TCustomForm.FComponentState:TComponentState
>004ED66F    jne         004ED678
 004ED671    push        ebp
 004ED672    call        004ED528
 004ED677    pop         ecx
 004ED678    pop         ecx
 004ED679    pop         ecx
 004ED67A    pop         ebp
 004ED67B    ret
end;*}

//004ED67C
{*procedure TCustomForm.WMNCLButtonDown(?:?);
begin
 004ED67C    push        ebp
 004ED67D    mov         ebp,esp
 004ED67F    add         esp,0FFFFFFF8
 004ED682    mov         dword ptr [ebp-8],edx
 004ED685    mov         dword ptr [ebp-4],eax
 004ED688    mov         eax,dword ptr [ebp-8]
 004ED68B    cmp         dword ptr [eax+4],2
>004ED68F    jne         004ED71D
 004ED695    mov         eax,dword ptr [ebp-4]
 004ED698    cmp         byte ptr [eax+9B],1;TCustomForm.FDragKind:TDragKind
>004ED69F    jne         004ED71D
 004ED6A1    mov         eax,dword ptr [ebp-4]
 004ED6A4    test        byte ptr [eax+1C],10;TCustomForm.FComponentState:TComponentState
>004ED6A8    jne         004ED71D
 004ED6AA    mov         eax,dword ptr [ebp-4]
 004ED6AD    call        TWinControl.GetHandle
 004ED6B2    push        eax
 004ED6B3    call        user32.IsIconic
 004ED6B8    test        eax,eax
>004ED6BA    jne         004ED71D
 004ED6BC    push        7
 004ED6BE    push        0
 004ED6C0    push        0
 004ED6C2    push        0
 004ED6C4    push        0
 004ED6C6    push        0
 004ED6C8    mov         eax,dword ptr [ebp-4]
 004ED6CB    call        TWinControl.GetHandle
 004ED6D0    push        eax
 004ED6D1    call        user32.SetWindowPos
 004ED6D6    mov         eax,dword ptr [ebp-8]
 004ED6D9    mov         eax,dword ptr [eax+8]
 004ED6DC    push        eax
 004ED6DD    mov         eax,dword ptr [ebp-8]
 004ED6E0    mov         eax,dword ptr [eax+4]
 004ED6E3    push        eax
 004ED6E4    push        0A2
 004ED6E9    mov         eax,dword ptr [ebp-4]
 004ED6EC    call        TWinControl.GetHandle
 004ED6F1    push        eax
 004ED6F2    call        user32.PostMessageA
 004ED6F7    mov         eax,dword ptr [ebp-4]
 004ED6FA    cmp         byte ptr [eax+22E],0;TCustomForm.FActive:Boolean
>004ED701    je          004ED728
 004ED703    mov         eax,dword ptr [ebp-4]
 004ED706    mov         edx,dword ptr [eax]
 004ED708    call        dword ptr [edx+54];TCustomForm.sub_004EA828
 004ED70B    mov         edx,eax
 004ED70D    xor         dl,1
 004ED710    or          ecx,0FFFFFFFF
 004ED713    mov         eax,dword ptr [ebp-4]
 004ED716    call        004CB9C0
>004ED71B    jmp         004ED728
 004ED71D    mov         edx,dword ptr [ebp-8]
 004ED720    mov         eax,dword ptr [ebp-4]
 004ED723    call        TControl.WMNCLButtonDown
 004ED728    pop         ecx
 004ED729    pop         ecx
 004ED72A    pop         ebp
 004ED72B    ret
end;*}

//004ED72C
{*procedure TCustomForm.WMDestroy(?:?);
begin
 004ED72C    push        ebp
 004ED72D    mov         ebp,esp
 004ED72F    add         esp,0FFFFFFF8
 004ED732    mov         dword ptr [ebp-8],edx
 004ED735    mov         dword ptr [ebp-4],eax
 004ED738    mov         eax,[0055B36C];^NewStyleControls:Boolean
 004ED73D    cmp         byte ptr [eax],0
>004ED740    je          004ED759
 004ED742    push        0
 004ED744    push        1
 004ED746    push        80
 004ED74B    mov         eax,dword ptr [ebp-4]
 004ED74E    call        TWinControl.GetHandle
 004ED753    push        eax
 004ED754    call        user32.SendMessageA
 004ED759    mov         eax,dword ptr [ebp-4]
 004ED75C    cmp         dword ptr [eax+248],0;TCustomForm.FMenu:TMainMenu
>004ED763    je          004ED791
 004ED765    mov         eax,dword ptr [ebp-4]
 004ED768    cmp         byte ptr [eax+22F],1;TCustomForm.FFormStyle:TFormStyle
>004ED76F    je          004ED791
 004ED771    push        0
 004ED773    mov         eax,dword ptr [ebp-4]
 004ED776    call        TWinControl.GetHandle
 004ED77B    push        eax
 004ED77C    call        user32.SetMenu
 004ED781    xor         edx,edx
 004ED783    mov         eax,dword ptr [ebp-4]
 004ED786    mov         eax,dword ptr [eax+248];TCustomForm.FMenu:TMainMenu
 004ED78C    call        004E4338
 004ED791    mov         edx,dword ptr [ebp-8]
 004ED794    mov         eax,dword ptr [ebp-4]
 004ED797    call        TWinControl.WMDestroy
 004ED79C    pop         ecx
 004ED79D    pop         ecx
 004ED79E    pop         ebp
 004ED79F    ret
end;*}

//004ED7A0
{*procedure TCustomForm.WMCommand(?:?);
begin
 004ED7A0    push        ebp
 004ED7A1    mov         ebp,esp
 004ED7A3    add         esp,0FFFFFFF8
 004ED7A6    mov         dword ptr [ebp-8],edx
 004ED7A9    mov         dword ptr [ebp-4],eax
 004ED7AC    mov         eax,dword ptr [ebp-8]
 004ED7AF    cmp         dword ptr [eax+8],0
>004ED7B3    jne         004ED7DA
 004ED7B5    mov         eax,dword ptr [ebp-4]
 004ED7B8    cmp         dword ptr [eax+248],0;TCustomForm.FMenu:TMainMenu
>004ED7BF    je          004ED7DA
 004ED7C1    mov         edx,dword ptr [ebp-8]
 004ED7C4    mov         dx,word ptr [edx+4]
 004ED7C8    mov         eax,dword ptr [ebp-4]
 004ED7CB    mov         eax,dword ptr [eax+248];TCustomForm.FMenu:TMainMenu
 004ED7D1    call        004E3BF0
 004ED7D6    test        al,al
>004ED7D8    jne         004ED7E5
 004ED7DA    mov         edx,dword ptr [ebp-8]
 004ED7DD    mov         eax,dword ptr [ebp-4]
 004ED7E0    call        TWinControl.WMCommand
 004ED7E5    pop         ecx
 004ED7E6    pop         ecx
 004ED7E7    pop         ebp
 004ED7E8    ret
end;*}

//004ED7EC
{*procedure TCustomForm.WMInitMenuPopup(?:?);
begin
 004ED7EC    push        ebp
 004ED7ED    mov         ebp,esp
 004ED7EF    add         esp,0FFFFFFF8
 004ED7F2    mov         dword ptr [ebp-8],edx
 004ED7F5    mov         dword ptr [ebp-4],eax
 004ED7F8    mov         eax,dword ptr [ebp-4]
 004ED7FB    cmp         dword ptr [eax+248],0;TCustomForm.FMenu:TMainMenu
>004ED802    je          004ED818
 004ED804    mov         edx,dword ptr [ebp-8]
 004ED807    mov         edx,dword ptr [edx+4]
 004ED80A    mov         eax,dword ptr [ebp-4]
 004ED80D    mov         eax,dword ptr [eax+248];TCustomForm.FMenu:TMainMenu
 004ED813    call        004E3C2C
 004ED818    pop         ecx
 004ED819    pop         ecx
 004ED81A    pop         ebp
 004ED81B    ret
end;*}

//004ED81C
{*procedure TCustomForm.WMMenuChar(?:?);
begin
 004ED81C    push        ebp
 004ED81D    mov         ebp,esp
 004ED81F    add         esp,0FFFFFFF8
 004ED822    mov         dword ptr [ebp-8],edx
 004ED825    mov         dword ptr [ebp-4],eax
 004ED828    mov         eax,dword ptr [ebp-4]
 004ED82B    cmp         dword ptr [eax+248],0;TCustomForm.FMenu:TMainMenu
>004ED832    je          004ED85B
 004ED834    mov         edx,dword ptr [ebp-8]
 004ED837    mov         eax,dword ptr [ebp-4]
 004ED83A    mov         eax,dword ptr [eax+248];TCustomForm.FMenu:TMainMenu
 004ED840    call        004E46C0
 004ED845    mov         eax,dword ptr [ebp-8]
 004ED848    cmp         dword ptr [eax+0C],0
>004ED84C    jne         004ED866
 004ED84E    mov         edx,dword ptr [ebp-8]
 004ED851    mov         eax,dword ptr [ebp-4]
 004ED854    mov         ecx,dword ptr [eax]
 004ED856    call        dword ptr [ecx-10];TCustomForm.DefaultHandler
>004ED859    jmp         004ED866
 004ED85B    mov         edx,dword ptr [ebp-8]
 004ED85E    mov         eax,dword ptr [ebp-4]
 004ED861    mov         ecx,dword ptr [eax]
 004ED863    call        dword ptr [ecx-10];TCustomForm.DefaultHandler
 004ED866    pop         ecx
 004ED867    pop         ecx
 004ED868    pop         ebp
 004ED869    ret
end;*}

//004ED86C
{*procedure TCustomForm.WMMenuSelect(?:?);
begin
 004ED86C    push        ebp
 004ED86D    mov         ebp,esp
 004ED86F    add         esp,0FFFFFFE8
 004ED872    xor         ecx,ecx
 004ED874    mov         dword ptr [ebp-18],ecx
 004ED877    mov         dword ptr [ebp-8],edx
 004ED87A    mov         dword ptr [ebp-4],eax
 004ED87D    xor         eax,eax
 004ED87F    push        ebp
 004ED880    push        4ED93F
 004ED885    push        dword ptr fs:[eax]
 004ED888    mov         dword ptr fs:[eax],esp
 004ED88B    mov         eax,dword ptr [ebp-4]
 004ED88E    cmp         dword ptr [eax+248],0;TCustomForm.FMenu:TMainMenu
>004ED895    je          004ED929
 004ED89B    xor         eax,eax
 004ED89D    mov         dword ptr [ebp-0C],eax
 004ED8A0    mov         eax,dword ptr [ebp-8]
 004ED8A3    cmp         word ptr [eax+6],0FFFF
>004ED8A9    jne         004ED8B5
 004ED8AB    mov         eax,dword ptr [ebp-8]
 004ED8AE    cmp         word ptr [eax+4],0
>004ED8B3    je          004ED8FA
 004ED8B5    mov         byte ptr [ebp-11],0
 004ED8B9    mov         eax,dword ptr [ebp-8]
 004ED8BC    movzx       eax,word ptr [eax+4]
 004ED8C0    mov         dword ptr [ebp-10],eax
 004ED8C3    mov         eax,dword ptr [ebp-8]
 004ED8C6    test        byte ptr [eax+6],10
>004ED8CA    je          004ED8E3
 004ED8CC    mov         byte ptr [ebp-11],1
 004ED8D0    mov         eax,dword ptr [ebp-10]
 004ED8D3    push        eax
 004ED8D4    mov         eax,dword ptr [ebp-8]
 004ED8D7    mov         eax,dword ptr [eax+8]
 004ED8DA    push        eax
 004ED8DB    call        user32.GetSubMenu
 004ED8E0    mov         dword ptr [ebp-10],eax
 004ED8E3    mov         cl,byte ptr [ebp-11]
 004ED8E6    mov         edx,dword ptr [ebp-10]
 004ED8E9    mov         eax,dword ptr [ebp-4]
 004ED8EC    mov         eax,dword ptr [eax+248];TCustomForm.FMenu:TMainMenu
 004ED8F2    call        004E3B1C
 004ED8F7    mov         dword ptr [ebp-0C],eax
 004ED8FA    cmp         dword ptr [ebp-0C],0
>004ED8FE    je          004ED91D
 004ED900    lea         edx,[ebp-18]
 004ED903    mov         eax,dword ptr [ebp-0C]
 004ED906    mov         eax,dword ptr [eax+58]
 004ED909    call        004C7278
 004ED90E    mov         edx,dword ptr [ebp-18]
 004ED911    mov         eax,[0055DE4C];Application:TApplication
 004ED916    call        004F387C
>004ED91B    jmp         004ED929
 004ED91D    xor         edx,edx
 004ED91F    mov         eax,[0055DE4C];Application:TApplication
 004ED924    call        004F387C
 004ED929    xor         eax,eax
 004ED92B    pop         edx
 004ED92C    pop         ecx
 004ED92D    pop         ecx
 004ED92E    mov         dword ptr fs:[eax],edx
 004ED931    push        4ED946
 004ED936    lea         eax,[ebp-18]
 004ED939    call        @LStrClr
 004ED93E    ret
>004ED93F    jmp         @HandleFinally
>004ED944    jmp         004ED936
 004ED946    mov         esp,ebp
 004ED948    pop         ebp
 004ED949    ret
end;*}

//004ED94C
{*procedure TCustomForm.WMActivate(?:?);
begin
 004ED94C    push        ebp
 004ED94D    mov         ebp,esp
 004ED94F    add         esp,0FFFFFFF8
 004ED952    mov         dword ptr [ebp-8],edx
 004ED955    mov         dword ptr [ebp-4],eax
 004ED958    mov         eax,dword ptr [ebp-4]
 004ED95B    cmp         byte ptr [eax+22F],2;TCustomForm.FFormStyle:TFormStyle
>004ED962    jne         004ED96D
 004ED964    mov         eax,dword ptr [ebp-4]
 004ED967    test        byte ptr [eax+1C],10;TCustomForm.FComponentState:TComponentState
>004ED96B    je          004ED980
 004ED96D    mov         eax,dword ptr [ebp-8]
 004ED970    cmp         word ptr [eax+4],0
 004ED975    setne       dl
 004ED978    mov         eax,dword ptr [ebp-4]
 004ED97B    call        004ECF28
 004ED980    pop         ecx
 004ED981    pop         ecx
 004ED982    pop         ebp
 004ED983    ret
end;*}

//004ED984
{*procedure sub_004ED984(?:?);
begin
 004ED984    push        ebp
 004ED985    mov         ebp,esp
 004ED987    add         esp,0FFFFFFF8
 004ED98A    push        esi
 004ED98B    mov         byte ptr [ebp-5],dl
 004ED98E    mov         dword ptr [ebp-4],eax
 004ED991    mov         eax,dword ptr [ebp-4]
 004ED994    test        byte ptr [eax+1C],10;TCustomForm.FComponentState:TComponentState
>004ED998    jne         004ED9A6
 004ED99A    mov         al,byte ptr [ebp-5]
 004ED99D    mov         edx,dword ptr [ebp-4]
 004ED9A0    mov         byte ptr [edx+22B],al;TCustomForm.FWindowState:TWindowState
 004ED9A6    cmp         byte ptr [ebp-5],1
>004ED9AA    je          004ED9B8
 004ED9AC    mov         eax,dword ptr [ebp-4]
 004ED9AF    mov         si,0FFD0
 004ED9B3    call        @CallDynaInst;TCustomForm.sub_004C9ED8
 004ED9B8    mov         eax,dword ptr [ebp-4]
 004ED9BB    cmp         dword ptr [eax+264],0;TCustomForm.FOleForm:IOleForm
>004ED9C2    je          004ED9D2
 004ED9C4    mov         eax,dword ptr [ebp-4]
 004ED9C7    mov         eax,dword ptr [eax+264];TCustomForm.FOleForm:IOleForm
 004ED9CD    mov         edx,dword ptr [eax]
 004ED9CF    call        dword ptr [edx+10]
 004ED9D2    pop         esi
 004ED9D3    pop         ecx
 004ED9D4    pop         ecx
 004ED9D5    pop         ebp
 004ED9D6    ret
end;*}

//004ED9D8
{*procedure TCustomForm.WMClose(?:?);
begin
 004ED9D8    push        ebp
 004ED9D9    mov         ebp,esp
 004ED9DB    add         esp,0FFFFFFF8
 004ED9DE    mov         dword ptr [ebp-8],edx
 004ED9E1    mov         dword ptr [ebp-4],eax
 004ED9E4    mov         eax,dword ptr [ebp-4]
 004ED9E7    call        004EE9EC
 004ED9EC    pop         ecx
 004ED9ED    pop         ecx
 004ED9EE    pop         ebp
 004ED9EF    ret
end;*}

//004ED9F0
{*procedure TCustomForm.WMQueryEndSession(?:?);
begin
 004ED9F0    push        ebp
 004ED9F1    mov         ebp,esp
 004ED9F3    add         esp,0FFFFFFF8
 004ED9F6    mov         dword ptr [ebp-8],edx
 004ED9F9    mov         dword ptr [ebp-4],eax
 004ED9FC    mov         eax,dword ptr [ebp-4]
 004ED9FF    mov         edx,dword ptr [eax]
 004EDA01    call        dword ptr [edx+0E4];TCustomForm.sub_004EEAAC
 004EDA07    test        al,al
>004EDA09    je          004EDA14
 004EDA0B    call        0046C510
 004EDA10    test        al,al
>004EDA12    jne         004EDA18
 004EDA14    xor         eax,eax
>004EDA16    jmp         004EDA1A
 004EDA18    mov         al,1
 004EDA1A    and         eax,7F
 004EDA1D    mov         edx,dword ptr [ebp-8]
 004EDA20    mov         dword ptr [edx+0C],eax
 004EDA23    pop         ecx
 004EDA24    pop         ecx
 004EDA25    pop         ebp
 004EDA26    ret
end;*}

//004EDA28
{*procedure TCustomForm.CMAppSysCommand(?:?);
begin
 004EDA28    push        ebp
 004EDA29    mov         ebp,esp
 004EDA2B    add         esp,0FFFFFFF4
 004EDA2E    mov         dword ptr [ebp-8],edx
 004EDA31    mov         dword ptr [ebp-4],eax
 004EDA34    mov         eax,dword ptr [ebp-8]
 004EDA37    xor         edx,edx
 004EDA39    mov         dword ptr [eax+0C],edx
 004EDA3C    mov         eax,dword ptr [ebp-4]
 004EDA3F    test        byte ptr [eax+1C],10;TCustomForm.FComponentState:TComponentState
>004EDA43    jne         004EDA6C
 004EDA45    mov         eax,dword ptr [ebp-4]
 004EDA48    cmp         byte ptr [eax+22F],1;TCustomForm.FFormStyle:TFormStyle
>004EDA4F    je          004EDA6C
 004EDA51    mov         eax,dword ptr [ebp-4]
 004EDA54    cmp         dword ptr [eax+248],0;TCustomForm.FMenu:TMainMenu
>004EDA5B    je          004EDA6C
 004EDA5D    mov         eax,dword ptr [ebp-4]
 004EDA60    mov         eax,dword ptr [eax+248];TCustomForm.FMenu:TMainMenu
 004EDA66    cmp         byte ptr [eax+5C],0;TMainMenu.AutoMerge:Boolean
>004EDA6A    je          004EDAA4
 004EDA6C    mov         eax,dword ptr [ebp-8]
 004EDA6F    mov         eax,dword ptr [eax+8]
 004EDA72    mov         dword ptr [ebp-0C],eax
 004EDA75    xor         edx,edx
 004EDA77    mov         eax,dword ptr [ebp-4]
 004EDA7A    call        004ECFB4
 004EDA7F    mov         eax,dword ptr [ebp-0C]
 004EDA82    movzx       ecx,word ptr [eax+8]
 004EDA86    mov         eax,dword ptr [ebp-0C]
 004EDA89    mov         edx,dword ptr [eax+4]
 004EDA8C    mov         eax,0B017
 004EDA91    call        004C6FEC
 004EDA96    test        eax,eax
>004EDA98    je          004EDAA4
 004EDA9A    mov         eax,dword ptr [ebp-8]
 004EDA9D    mov         dword ptr [eax+0C],1
 004EDAA4    mov         esp,ebp
 004EDAA6    pop         ebp
 004EDAA7    ret
end;*}

//004EDAA8
{*procedure TCustomForm.WMSysCommand(?:?);
begin
 004EDAA8    push        ebp
 004EDAA9    mov         ebp,esp
 004EDAAB    add         esp,0FFFFFFF8
 004EDAAE    push        esi
 004EDAAF    mov         dword ptr [ebp-8],edx
 004EDAB2    mov         dword ptr [ebp-4],eax
 004EDAB5    mov         eax,dword ptr [ebp-8]
 004EDAB8    mov         eax,dword ptr [eax+4]
 004EDABB    and         eax,0FFF0
 004EDAC0    cmp         eax,0F020
>004EDAC5    jne         004EDAE3
 004EDAC7    mov         eax,[0055DE4C];Application:TApplication
 004EDACC    mov         eax,dword ptr [eax+44]
 004EDACF    cmp         eax,dword ptr [ebp-4]
>004EDAD2    jne         004EDAE3
 004EDAD4    mov         edx,dword ptr [ebp-8]
 004EDAD7    mov         eax,[0055DE4C];Application:TApplication
 004EDADC    call        004F1E50
>004EDAE1    jmp         004EDB1E
 004EDAE3    mov         eax,dword ptr [ebp-8]
 004EDAE6    mov         eax,dword ptr [eax+4]
 004EDAE9    and         eax,0FFF0
 004EDAEE    cmp         eax,0F010
>004EDAF3    jne         004EDB13
 004EDAF5    mov         eax,dword ptr [ebp-4]
 004EDAF8    test        byte ptr [eax+1C],10;TCustomForm.FComponentState:TComponentState
>004EDAFC    jne         004EDB13
 004EDAFE    mov         eax,dword ptr [ebp-4]
 004EDB01    cmp         byte ptr [eax+5B],0;TCustomForm.FAlign:TAlign
>004EDB05    je          004EDB13
 004EDB07    mov         eax,dword ptr [ebp-4]
 004EDB0A    cmp         byte ptr [eax+22B],1;TCustomForm.FWindowState:TWindowState
>004EDB11    jne         004EDB1E
 004EDB13    mov         edx,dword ptr [ebp-8]
 004EDB16    mov         eax,dword ptr [ebp-4]
 004EDB19    call        TWinControl.WMSysCommand
 004EDB1E    mov         eax,dword ptr [ebp-8]
 004EDB21    mov         eax,dword ptr [eax+4]
 004EDB24    and         eax,0FFF0
 004EDB29    cmp         eax,0F020
>004EDB2E    je          004EDB42
 004EDB30    mov         eax,dword ptr [ebp-8]
 004EDB33    mov         eax,dword ptr [eax+4]
 004EDB36    and         eax,0FFF0
 004EDB3B    cmp         eax,0F120
>004EDB40    jne         004EDB60
 004EDB42    mov         eax,dword ptr [ebp-4]
 004EDB45    test        byte ptr [eax+1C],10;TCustomForm.FComponentState:TComponentState
>004EDB49    jne         004EDB60
 004EDB4B    mov         eax,dword ptr [ebp-4]
 004EDB4E    cmp         byte ptr [eax+5B],0;TCustomForm.FAlign:TAlign
>004EDB52    je          004EDB60
 004EDB54    mov         eax,dword ptr [ebp-4]
 004EDB57    mov         si,0FFD0
 004EDB5B    call        @CallDynaInst;TCustomForm.sub_004C9ED8
 004EDB60    pop         esi
 004EDB61    pop         ecx
 004EDB62    pop         ecx
 004EDB63    pop         ebp
 004EDB64    ret
end;*}

//004EDB68
{*procedure TCustomForm.WMShowWindow(?:?);
begin
 004EDB68    push        ebp
 004EDB69    mov         ebp,esp
 004EDB6B    add         esp,0FFFFFFF8
 004EDB6E    mov         dword ptr [ebp-8],edx
 004EDB71    mov         dword ptr [ebp-4],eax
 004EDB74    mov         eax,dword ptr [ebp-8]
 004EDB77    mov         eax,dword ptr [eax+8]
 004EDB7A    dec         eax
>004EDB7B    je          004EDB87
 004EDB7D    sub         eax,2
>004EDB80    je          004EDBDA
>004EDB82    jmp         004EDC12
 004EDB87    mov         eax,dword ptr [ebp-4]
 004EDB8A    call        TWinControl.GetHandle
 004EDB8F    push        eax
 004EDB90    call        user32.IsIconic
 004EDB95    test        eax,eax
>004EDB97    je          004EDBA5
 004EDB99    mov         eax,dword ptr [ebp-4]
 004EDB9C    mov         byte ptr [eax+22C],2;TCustomForm.FShowAction:TShowAction
>004EDBA3    jmp         004EDBCD
 004EDBA5    mov         eax,dword ptr [ebp-4]
 004EDBA8    call        TWinControl.GetHandle
 004EDBAD    push        eax
 004EDBAE    call        user32.IsZoomed
 004EDBB3    test        eax,eax
>004EDBB5    je          004EDBC3
 004EDBB7    mov         eax,dword ptr [ebp-4]
 004EDBBA    mov         byte ptr [eax+22C],3;TCustomForm.FShowAction:TShowAction
>004EDBC1    jmp         004EDBCD
 004EDBC3    mov         eax,dword ptr [ebp-4]
 004EDBC6    mov         byte ptr [eax+22C],1;TCustomForm.FShowAction:TShowAction
 004EDBCD    mov         edx,dword ptr [ebp-8]
 004EDBD0    mov         eax,dword ptr [ebp-4]
 004EDBD3    mov         ecx,dword ptr [eax]
 004EDBD5    call        dword ptr [ecx-10];TCustomForm.DefaultHandler
>004EDBD8    jmp         004EDC1D
 004EDBDA    mov         eax,dword ptr [ebp-4]
 004EDBDD    cmp         byte ptr [eax+22C],0;TCustomForm.FShowAction:TShowAction
>004EDBE4    je          004EDC1D
 004EDBE6    mov         eax,dword ptr [ebp-4]
 004EDBE9    movzx       eax,byte ptr [eax+22C];TCustomForm.FShowAction:TShowAction
 004EDBF0    mov         eax,dword ptr [eax*4+54192C]
 004EDBF7    push        eax
 004EDBF8    mov         eax,dword ptr [ebp-4]
 004EDBFB    call        TWinControl.GetHandle
 004EDC00    push        eax
 004EDC01    call        user32.ShowWindow
 004EDC06    mov         eax,dword ptr [ebp-4]
 004EDC09    mov         byte ptr [eax+22C],0;TCustomForm.FShowAction:TShowAction
>004EDC10    jmp         004EDC1D
 004EDC12    mov         edx,dword ptr [ebp-8]
 004EDC15    mov         eax,dword ptr [ebp-4]
 004EDC18    mov         ecx,dword ptr [eax]
 004EDC1A    call        dword ptr [ecx-10];TCustomForm.DefaultHandler
 004EDC1D    pop         ecx
 004EDC1E    pop         ecx
 004EDC1F    pop         ebp
 004EDC20    ret
end;*}

//004EDC24
{*procedure TCustomForm.WMMDIActivate(?:?);
begin
 004EDC24    push        ebp
 004EDC25    mov         ebp,esp
 004EDC27    add         esp,0FFFFFFF4
 004EDC2A    push        esi
 004EDC2B    mov         dword ptr [ebp-8],edx
 004EDC2E    mov         dword ptr [ebp-4],eax
 004EDC31    mov         edx,dword ptr [ebp-8]
 004EDC34    mov         eax,dword ptr [ebp-4]
 004EDC37    mov         ecx,dword ptr [eax]
 004EDC39    call        dword ptr [ecx-10];TCustomForm.DefaultHandler
 004EDC3C    mov         eax,dword ptr [ebp-4]
 004EDC3F    cmp         byte ptr [eax+22F],1;TCustomForm.FFormStyle:TFormStyle
>004EDC46    jne         004EDC8C
 004EDC48    mov         eax,dword ptr [ebp-4]
 004EDC4B    call        TWinControl.GetHandle
 004EDC50    mov         edx,dword ptr [ebp-8]
 004EDC53    cmp         eax,dword ptr [edx+8]
 004EDC56    sete        byte ptr [ebp-9]
 004EDC5A    mov         dl,byte ptr [ebp-9]
 004EDC5D    mov         eax,dword ptr [ebp-4]
 004EDC60    call        004ECF28
 004EDC65    cmp         byte ptr [ebp-9],0
>004EDC69    je          004EDC8C
 004EDC6B    mov         eax,[0055DE4C];Application:TApplication
 004EDC70    mov         eax,dword ptr [eax+44]
 004EDC73    test        byte ptr [eax+54],4
>004EDC77    je          004EDC8C
 004EDC79    mov         eax,[0055DE4C];Application:TApplication
 004EDC7E    mov         eax,dword ptr [eax+44]
 004EDC81    mov         dl,1
 004EDC83    mov         si,0FFD1
 004EDC87    call        @CallDynaInst
 004EDC8C    pop         esi
 004EDC8D    mov         esp,ebp
 004EDC8F    pop         ebp
 004EDC90    ret
end;*}

//004EDC94
{*procedure TCustomForm.WMNextDlgCtl(?:?);
begin
 004EDC94    push        ebp
 004EDC95    mov         ebp,esp
 004EDC97    add         esp,0FFFFFFF8
 004EDC9A    mov         dword ptr [ebp-8],edx
 004EDC9D    mov         dword ptr [ebp-4],eax
 004EDCA0    mov         eax,dword ptr [ebp-8]
 004EDCA3    cmp         word ptr [eax+8],0
>004EDCA8    je          004EDCB8
 004EDCAA    mov         eax,dword ptr [ebp-8]
 004EDCAD    mov         eax,dword ptr [eax+4]
 004EDCB0    push        eax
 004EDCB1    call        user32.SetFocus
>004EDCB6    jmp         004EDCD8
 004EDCB8    push        1
 004EDCBA    mov         ecx,dword ptr [ebp-8]
 004EDCBD    mov         ecx,dword ptr [ecx+4]
 004EDCC0    cmp         ecx,1
 004EDCC3    sbb         ecx,ecx
 004EDCC5    neg         ecx
 004EDCC7    mov         eax,dword ptr [ebp-4]
 004EDCCA    mov         edx,dword ptr [eax+220];TCustomForm.FActiveControl:TWinControl
 004EDCD0    mov         eax,dword ptr [ebp-4]
 004EDCD3    call        004D4030
 004EDCD8    pop         ecx
 004EDCD9    pop         ecx
 004EDCDA    pop         ebp
 004EDCDB    ret
end;*}

//004EDCDC
{*procedure TCustomForm.WMEnterMenuLoop(?:?);
begin
 004EDCDC    push        ebp
 004EDCDD    mov         ebp,esp
 004EDCDF    add         esp,0FFFFFFF8
 004EDCE2    mov         dword ptr [ebp-8],edx
 004EDCE5    mov         dword ptr [ebp-4],eax
 004EDCE8    xor         edx,edx
 004EDCEA    mov         eax,dword ptr [ebp-4]
 004EDCED    call        004ECFB4
 004EDCF2    mov         edx,dword ptr [ebp-8]
 004EDCF5    mov         eax,dword ptr [ebp-4]
 004EDCF8    mov         ecx,dword ptr [eax]
 004EDCFA    call        dword ptr [ecx-10];TCustomForm.DefaultHandler
 004EDCFD    pop         ecx
 004EDCFE    pop         ecx
 004EDCFF    pop         ebp
 004EDD00    ret
end;*}

//004EDD04
{*function sub_004EDD04(?:TMenu; ?:?):?;
begin
 004EDD04    push        ebp
 004EDD05    mov         ebp,esp
 004EDD07    add         esp,0FFFFFFF8
 004EDD0A    mov         dword ptr [ebp-4],eax
 004EDD0D    xor         eax,eax
 004EDD0F    mov         dword ptr [ebp-8],eax
 004EDD12    cmp         dword ptr [ebp-4],0
>004EDD16    je          004EDD50
 004EDD18    mov         eax,dword ptr [ebp+8]
 004EDD1B    mov         eax,dword ptr [eax-4]
 004EDD1E    mov         eax,dword ptr [eax+8]
 004EDD21    mov         edx,dword ptr [eax+8]
 004EDD24    mov         cl,1
 004EDD26    mov         eax,dword ptr [ebp-4]
 004EDD29    call        004E3B58
 004EDD2E    mov         dword ptr [ebp-8],eax
 004EDD31    cmp         dword ptr [ebp-8],0
>004EDD35    jne         004EDD50
 004EDD37    mov         eax,dword ptr [ebp+8]
 004EDD3A    mov         eax,dword ptr [eax-4]
 004EDD3D    mov         eax,dword ptr [eax+8]
 004EDD40    mov         edx,dword ptr [eax+0C]
 004EDD43    xor         ecx,ecx
 004EDD45    mov         eax,dword ptr [ebp-4]
 004EDD48    call        004E3B58
 004EDD4D    mov         dword ptr [ebp-8],eax
 004EDD50    mov         eax,dword ptr [ebp-8]
 004EDD53    pop         ecx
 004EDD54    pop         ecx
 004EDD55    pop         ebp
 004EDD56    ret
end;*}

//004EDD58
{*function sub_004EDD58(?:?):?;
begin
 004EDD58    push        ebp
 004EDD59    mov         ebp,esp
 004EDD5B    add         esp,0FFFFFFF8
 004EDD5E    mov         dword ptr [ebp-4],eax
 004EDD61    mov         byte ptr [ebp-5],0
 004EDD65    mov         eax,dword ptr [ebp-4]
 004EDD68    cmp         byte ptr [eax+150],1
>004EDD6F    jne         004EDD83
 004EDD71    mov         eax,dword ptr [ebp-4]
 004EDD74    cmp         dword ptr [eax+158],0
>004EDD7B    je          004EDD83
 004EDD7D    mov         byte ptr [ebp-5],1
>004EDD81    jmp         004EDD9F
 004EDD83    mov         eax,dword ptr [ebp-4]
 004EDD86    cmp         byte ptr [eax+150],0
>004EDD8D    jne         004EDD9F
 004EDD8F    mov         eax,dword ptr [ebp-4]
 004EDD92    cmp         dword ptr [eax+154],0
>004EDD99    je          004EDD9F
 004EDD9B    mov         byte ptr [ebp-5],1
 004EDD9F    mov         al,byte ptr [ebp-5]
 004EDDA2    pop         ecx
 004EDDA3    pop         ecx
 004EDDA4    pop         ebp
 004EDDA5    ret
end;*}

//004EDDA8
{*procedure sub_004EDDA8(?:?; ?:?; ?:?; ?:?);
begin
 004EDDA8    push        ebp
 004EDDA9    mov         ebp,esp
 004EDDAB    add         esp,0FFFFFFF4
 004EDDAE    mov         dword ptr [ebp-0C],ecx
 004EDDB1    mov         dword ptr [ebp-8],edx
 004EDDB4    mov         dword ptr [ebp-4],eax
 004EDDB7    mov         eax,dword ptr [ebp-4]
 004EDDBA    cmp         byte ptr [eax+150],1
>004EDDC1    jne         004EDDD9
 004EDDC3    mov         eax,dword ptr [ebp-8]
 004EDDC6    mov         byte ptr [eax],1
 004EDDC9    mov         eax,dword ptr [ebp-0C]
 004EDDCC    mov         edx,dword ptr [ebp-4]
 004EDDCF    mov         edx,dword ptr [edx+158]
 004EDDD5    mov         dword ptr [eax],edx
>004EDDD7    jmp         004EDDF0
 004EDDD9    mov         eax,dword ptr [ebp-8]
 004EDDDC    mov         byte ptr [eax],0
 004EDDDF    mov         eax,dword ptr [ebp+8]
 004EDDE2    mov         edx,dword ptr [ebp-4]
 004EDDE5    mov         edx,dword ptr [edx+154]
 004EDDEB    call        @LStrAsg
 004EDDF0    mov         esp,ebp
 004EDDF2    pop         ebp
 004EDDF3    ret         4
end;*}

//004EDDF8
{*procedure TCustomForm.WMHelp(?:?);
begin
 004EDDF8    push        ebp
 004EDDF9    mov         ebp,esp
 004EDDFB    add         esp,0FFFFFFD0
 004EDDFE    xor         ecx,ecx
 004EDE00    mov         dword ptr [ebp-18],ecx
 004EDE03    mov         dword ptr [ebp-4],edx
 004EDE06    mov         dword ptr [ebp-8],eax
 004EDE09    xor         eax,eax
 004EDE0B    push        ebp
 004EDE0C    push        4EDF70
 004EDE11    push        dword ptr fs:[eax]
 004EDE14    mov         dword ptr fs:[eax],esp
 004EDE17    mov         eax,dword ptr [ebp-8]
 004EDE1A    test        byte ptr [eax+1C],10;TCustomForm.FComponentState:TComponentState
>004EDE1E    jne         004EDF5A
 004EDE24    mov         eax,dword ptr [ebp-4]
 004EDE27    mov         eax,dword ptr [eax+8]
 004EDE2A    mov         dword ptr [ebp-20],eax
 004EDE2D    mov         eax,dword ptr [ebp-20]
 004EDE30    cmp         dword ptr [eax+4],1
>004EDE34    jne         004EDEA8
 004EDE36    mov         eax,dword ptr [ebp-20]
 004EDE39    mov         eax,dword ptr [eax+0C]
 004EDE3C    call        004C6F7C
 004EDE41    mov         dword ptr [ebp-0C],eax
>004EDE44    jmp         004EDE4F
 004EDE46    mov         eax,dword ptr [ebp-0C]
 004EDE49    mov         eax,dword ptr [eax+30]
 004EDE4C    mov         dword ptr [ebp-0C],eax
 004EDE4F    cmp         dword ptr [ebp-0C],0
>004EDE53    je          004EDE63
 004EDE55    push        ebp
 004EDE56    mov         eax,dword ptr [ebp-0C]
 004EDE59    call        004EDD58
 004EDE5E    pop         ecx
 004EDE5F    test        al,al
>004EDE61    je          004EDE46
 004EDE63    cmp         dword ptr [ebp-0C],0
>004EDE67    je          004EDF5A
 004EDE6D    push        ebp
 004EDE6E    lea         eax,[ebp-18]
 004EDE71    push        eax
 004EDE72    lea         ecx,[ebp-10]
 004EDE75    lea         edx,[ebp-11]
 004EDE78    mov         eax,dword ptr [ebp-0C]
 004EDE7B    call        004EDDA8
 004EDE80    pop         ecx
 004EDE81    lea         ecx,[ebp-30]
 004EDE84    xor         edx,edx
 004EDE86    xor         eax,eax
 004EDE88    call        Point
 004EDE8D    lea         edx,[ebp-30]
 004EDE90    lea         ecx,[ebp-28]
 004EDE93    mov         eax,dword ptr [ebp-0C]
 004EDE96    call        TControl.ClientToScreen
 004EDE9B    lea         eax,[ebp-28]
 004EDE9E    call        00408274
 004EDEA3    mov         dword ptr [ebp-1C],eax
>004EDEA6    jmp         004EDEFA
 004EDEA8    mov         byte ptr [ebp-11],1
 004EDEAC    push        ebp
 004EDEAD    mov         eax,dword ptr [ebp-8]
 004EDEB0    mov         eax,dword ptr [eax+248];TCustomForm.FMenu:TMainMenu
 004EDEB6    call        004EDD04
 004EDEBB    pop         ecx
 004EDEBC    mov         dword ptr [ebp-10],eax
 004EDEBF    cmp         dword ptr [ebp-10],0
>004EDEC3    jne         004EDED5
 004EDEC5    push        ebp
 004EDEC6    mov         eax,dword ptr [ebp-8]
 004EDEC9    mov         eax,dword ptr [eax+7C];TCustomForm.FPopupMenu:TPopupMenu
 004EDECC    call        004EDD04
 004EDED1    pop         ecx
 004EDED2    mov         dword ptr [ebp-10],eax
 004EDED5    lea         ecx,[ebp-30]
 004EDED8    xor         edx,edx
 004EDEDA    xor         eax,eax
 004EDEDC    call        Point
 004EDEE1    lea         edx,[ebp-30]
 004EDEE4    lea         ecx,[ebp-28]
 004EDEE7    mov         eax,dword ptr [ebp-8]
 004EDEEA    call        TControl.ClientToScreen
 004EDEEF    lea         eax,[ebp-28]
 004EDEF2    call        00408274
 004EDEF7    mov         dword ptr [ebp-1C],eax
 004EDEFA    mov         eax,dword ptr [ebp-8]
 004EDEFD    test        byte ptr [eax+228],8;TCustomForm.FBorderIcons:TBorderIcons
>004EDF04    je          004EDF32
 004EDF06    cmp         byte ptr [ebp-11],1
>004EDF0A    jne         004EDF32
 004EDF0C    mov         ecx,dword ptr [ebp-1C]
 004EDF0F    mov         edx,0D
 004EDF14    mov         eax,[0055DE4C];Application:TApplication
 004EDF19    call        004F34A4
 004EDF1E    mov         ecx,dword ptr [ebp-10]
 004EDF21    mov         edx,8
 004EDF26    mov         eax,[0055DE4C];Application:TApplication
 004EDF2B    call        004F34A4
>004EDF30    jmp         004EDF5A
 004EDF32    cmp         byte ptr [ebp-11],1
>004EDF36    jne         004EDF47
 004EDF38    mov         edx,dword ptr [ebp-10]
 004EDF3B    mov         eax,[0055DE4C];Application:TApplication
 004EDF40    call        004F342C
>004EDF45    jmp         004EDF5A
 004EDF47    cmp         byte ptr [ebp-11],0
>004EDF4B    jne         004EDF5A
 004EDF4D    mov         edx,dword ptr [ebp-18]
 004EDF50    mov         eax,[0055DE4C];Application:TApplication
 004EDF55    call        004F33B4
 004EDF5A    xor         eax,eax
 004EDF5C    pop         edx
 004EDF5D    pop         ecx
 004EDF5E    pop         ecx
 004EDF5F    mov         dword ptr fs:[eax],edx
 004EDF62    push        4EDF77
 004EDF67    lea         eax,[ebp-18]
 004EDF6A    call        @LStrClr
 004EDF6F    ret
>004EDF70    jmp         @HandleFinally
>004EDF75    jmp         004EDF67
 004EDF77    mov         esp,ebp
 004EDF79    pop         ebp
 004EDF7A    ret
end;*}

//004EDF7C
{*procedure TCustomForm.WMGetMinMaxInfo(?:?);
begin
 004EDF7C    push        ebp
 004EDF7D    mov         ebp,esp
 004EDF7F    add         esp,0FFFFFFE8
 004EDF82    push        ebx
 004EDF83    mov         dword ptr [ebp-8],edx
 004EDF86    mov         dword ptr [ebp-4],eax
 004EDF89    mov         eax,dword ptr [ebp-4]
 004EDF8C    test        byte ptr [eax+1C],2;TCustomForm.FComponentState:TComponentState
>004EDF90    jne         004EE03E
 004EDF96    mov         eax,dword ptr [ebp-4]
 004EDF99    cmp         byte ptr [eax+22A],0;TCustomForm.FSizeChanging:Boolean
>004EDFA0    je          004EE03E
 004EDFA6    mov         eax,dword ptr [ebp-8]
 004EDFA9    mov         eax,dword ptr [eax+8]
 004EDFAC    mov         dword ptr [ebp-0C],eax
 004EDFAF    mov         eax,dword ptr [ebp-4]
 004EDFB2    mov         eax,dword ptr [eax+74];TCustomForm.FConstraints:TSizeConstraints
 004EDFB5    mov         dword ptr [ebp-10],eax
 004EDFB8    mov         eax,dword ptr [ebp-0C]
 004EDFBB    add         eax,18
 004EDFBE    mov         dword ptr [ebp-14],eax
 004EDFC1    mov         eax,dword ptr [ebp-10]
 004EDFC4    cmp         dword ptr [eax+14],0;TSizeConstraints.MinWidth:TConstraintSize
>004EDFC8    jbe         004EDFD5
 004EDFCA    mov         eax,dword ptr [ebp-14]
 004EDFCD    mov         edx,dword ptr [ebp-10]
 004EDFD0    mov         edx,dword ptr [edx+14];TSizeConstraints.MinWidth:TConstraintSize
 004EDFD3    mov         dword ptr [eax],edx
 004EDFD5    mov         eax,dword ptr [ebp-10]
 004EDFD8    cmp         dword ptr [eax+10],0;TSizeConstraints.MinHeight:TConstraintSize
>004EDFDC    jbe         004EDFEA
 004EDFDE    mov         eax,dword ptr [ebp-14]
 004EDFE1    mov         edx,dword ptr [ebp-10]
 004EDFE4    mov         edx,dword ptr [edx+10];TSizeConstraints.MinHeight:TConstraintSize
 004EDFE7    mov         dword ptr [eax+4],edx
 004EDFEA    mov         eax,dword ptr [ebp-0C]
 004EDFED    add         eax,20
 004EDFF0    mov         dword ptr [ebp-18],eax
 004EDFF3    mov         eax,dword ptr [ebp-10]
 004EDFF6    cmp         dword ptr [eax+0C],0;TSizeConstraints.MaxWidth:TConstraintSize
>004EDFFA    jbe         004EE007
 004EDFFC    mov         eax,dword ptr [ebp-18]
 004EDFFF    mov         edx,dword ptr [ebp-10]
 004EE002    mov         edx,dword ptr [edx+0C];TSizeConstraints.MaxWidth:TConstraintSize
 004EE005    mov         dword ptr [eax],edx
 004EE007    mov         eax,dword ptr [ebp-10]
 004EE00A    cmp         dword ptr [eax+8],0;TSizeConstraints.MaxHeight:TConstraintSize
>004EE00E    jbe         004EE01C
 004EE010    mov         eax,dword ptr [ebp-18]
 004EE013    mov         edx,dword ptr [ebp-10]
 004EE016    mov         edx,dword ptr [edx+8];TSizeConstraints.MaxHeight:TConstraintSize
 004EE019    mov         dword ptr [eax+4],edx
 004EE01C    mov         eax,dword ptr [ebp-0C]
 004EE01F    add         eax,20
 004EE022    push        eax
 004EE023    mov         eax,dword ptr [ebp-0C]
 004EE026    add         eax,24
 004EE029    push        eax
 004EE02A    mov         eax,dword ptr [ebp-0C]
 004EE02D    lea         ecx,[eax+1C]
 004EE030    mov         eax,dword ptr [ebp-0C]
 004EE033    lea         edx,[eax+18]
 004EE036    mov         eax,dword ptr [ebp-4]
 004EE039    mov         ebx,dword ptr [eax]
 004EE03B    call        dword ptr [ebx+38];TCustomForm.sub_004D469C
 004EE03E    mov         edx,dword ptr [ebp-8]
 004EE041    mov         eax,dword ptr [ebp-4]
 004EE044    mov         ecx,dword ptr [eax]
 004EE046    call        dword ptr [ecx-10];TCustomForm.DefaultHandler
 004EE049    pop         ebx
 004EE04A    mov         esp,ebp
 004EE04C    pop         ebp
 004EE04D    ret
end;*}

//004EE050
{*procedure sub_004EE050(?:?; ?:?; ?:Integer; ?:?);
begin
 004EE050    push        ebp
 004EE051    mov         ebp,esp
 004EE053    add         esp,0FFFFFFF4
 004EE056    mov         dword ptr [ebp-0C],ecx
 004EE059    mov         dword ptr [ebp-8],edx
 004EE05C    mov         dword ptr [ebp-4],eax
 004EE05F    mov         eax,dword ptr [ebp-4]
 004EE062    mov         eax,dword ptr [eax]
 004EE064    add         eax,dword ptr [ebp-0C]
 004EE067    sub         eax,dword ptr [ebp-8]
 004EE06A    cdq
 004EE06B    xor         eax,edx
 004EE06D    sub         eax,edx
 004EE06F    mov         edx,dword ptr [ebp+8]
 004EE072    mov         edx,dword ptr [edx-4]
 004EE075    cmp         eax,dword ptr [edx+2E4]
>004EE07B    jge         004EE088
 004EE07D    mov         eax,dword ptr [ebp-8]
 004EE080    sub         eax,dword ptr [ebp-0C]
 004EE083    mov         edx,dword ptr [ebp-4]
 004EE086    mov         dword ptr [edx],eax
 004EE088    mov         esp,ebp
 004EE08A    pop         ebp
 004EE08B    ret
end;*}

//004EE08C
{*procedure TCustomForm.WMWindowPosChangingMsg(?:?);
begin
 004EE08C    push        ebp
 004EE08D    mov         ebp,esp
 004EE08F    add         esp,0FFFFFFD4
 004EE092    mov         dword ptr [ebp-8],edx
 004EE095    mov         dword ptr [ebp-4],eax
 004EE098    mov         eax,dword ptr [ebp-4]
 004EE09B    cmp         byte ptr [eax+2E2],0;TCustomForm.FScreenSnap:Boolean
>004EE0A2    je          004EE14F
 004EE0A8    mov         eax,dword ptr [ebp-8]
 004EE0AB    mov         eax,dword ptr [eax+8]
 004EE0AE    cmp         dword ptr [eax+8],0
>004EE0B2    jne         004EE0C4
 004EE0B4    mov         eax,dword ptr [ebp-8]
 004EE0B7    mov         eax,dword ptr [eax+8]
 004EE0BA    cmp         dword ptr [eax+0C],0
>004EE0BE    je          004EE14F
 004EE0C4    mov         eax,dword ptr [ebp-8]
 004EE0C7    mov         eax,dword ptr [eax+8]
 004EE0CA    mov         dword ptr [ebp-0C],eax
 004EE0CD    mov         eax,dword ptr [ebp-4]
 004EE0D0    call        004EB758
 004EE0D5    lea         edx,[ebp-1C]
 004EE0D8    call        004EFD14
 004EE0DD    push        ebp
 004EE0DE    mov         eax,dword ptr [ebp-4]
 004EE0E1    call        004EB758
 004EE0E6    lea         edx,[ebp-2C]
 004EE0E9    call        004EFD14
 004EE0EE    mov         ecx,dword ptr [ebp-2C]
 004EE0F1    mov         eax,dword ptr [ebp-0C]
 004EE0F4    add         eax,8
 004EE0F7    mov         edx,dword ptr [ebp-1C]
 004EE0FA    call        004EE050
 004EE0FF    pop         ecx
 004EE100    push        ebp
 004EE101    mov         eax,dword ptr [ebp-4]
 004EE104    call        004EB758
 004EE109    lea         edx,[ebp-2C]
 004EE10C    call        004EFD14
 004EE111    mov         ecx,dword ptr [ebp-28]
 004EE114    mov         eax,dword ptr [ebp-0C]
 004EE117    add         eax,0C
 004EE11A    mov         edx,dword ptr [ebp-18]
 004EE11D    call        004EE050
 004EE122    pop         ecx
 004EE123    push        ebp
 004EE124    mov         eax,dword ptr [ebp-4]
 004EE127    mov         ecx,dword ptr [eax+48];TCustomForm.Width:Integer
 004EE12A    mov         eax,dword ptr [ebp-0C]
 004EE12D    add         eax,8
 004EE130    mov         edx,dword ptr [ebp-14]
 004EE133    call        004EE050
 004EE138    pop         ecx
 004EE139    push        ebp
 004EE13A    mov         eax,dword ptr [ebp-4]
 004EE13D    mov         ecx,dword ptr [eax+4C];TCustomForm.Height:Integer
 004EE140    mov         eax,dword ptr [ebp-0C]
 004EE143    add         eax,0C
 004EE146    mov         edx,dword ptr [ebp-10]
 004EE149    call        004EE050
 004EE14E    pop         ecx
 004EE14F    mov         edx,dword ptr [ebp-8]
 004EE152    mov         eax,dword ptr [ebp-4]
 004EE155    call        TWinControl.WMWindowPosChangingMsg
 004EE15A    mov         esp,ebp
 004EE15C    pop         ebp
 004EE15D    ret
end;*}

//004EE160
{*procedure TCustomForm.CMActivate(?:?);
begin
 004EE160    push        ebp
 004EE161    mov         ebp,esp
 004EE163    add         esp,0FFFFFFF8
 004EE166    push        esi
 004EE167    mov         dword ptr [ebp-8],edx
 004EE16A    mov         dword ptr [ebp-4],eax
 004EE16D    mov         eax,dword ptr [ebp-4]
 004EE170    test        byte ptr [eax+1C],2;TCustomForm.FComponentState:TComponentState
>004EE174    jne         004EE184
 004EE176    mov         eax,dword ptr [ebp-4]
 004EE179    mov         si,0FFB3
 004EE17D    call        @CallDynaInst;TCustomForm.sub_004ED168
>004EE182    jmp         004EE18E
 004EE184    mov         eax,dword ptr [ebp-4]
 004EE187    or          byte ptr [eax+2F4],20;TCustomForm.FFormState:TFormState
 004EE18E    pop         esi
 004EE18F    pop         ecx
 004EE190    pop         ecx
 004EE191    pop         ebp
 004EE192    ret
end;*}

//004EE194
{*procedure TCustomForm.CMDeactivate(?:?);
begin
 004EE194    push        ebp
 004EE195    mov         ebp,esp
 004EE197    add         esp,0FFFFFFF8
 004EE19A    push        esi
 004EE19B    mov         dword ptr [ebp-8],edx
 004EE19E    mov         dword ptr [ebp-4],eax
 004EE1A1    mov         eax,dword ptr [ebp-4]
 004EE1A4    test        byte ptr [eax+1C],2;TCustomForm.FComponentState:TComponentState
>004EE1A8    jne         004EE1B8
 004EE1AA    mov         eax,dword ptr [ebp-4]
 004EE1AD    mov         si,0FFB1
 004EE1B1    call        @CallDynaInst;TCustomForm.sub_004ED1AC
>004EE1B6    jmp         004EE1C2
 004EE1B8    mov         eax,dword ptr [ebp-4]
 004EE1BB    and         byte ptr [eax+2F4],0DF;TCustomForm.FFormState:TFormState
 004EE1C2    pop         esi
 004EE1C3    pop         ecx
 004EE1C4    pop         ecx
 004EE1C5    pop         ebp
 004EE1C6    ret
end;*}

//004EE1C8
{*procedure TCustomForm.CMDialogKey(?:?);
begin
 004EE1C8    push        ebp
 004EE1C9    mov         ebp,esp
 004EE1CB    add         esp,0FFFFFFF8
 004EE1CE    mov         dword ptr [ebp-8],edx
 004EE1D1    mov         dword ptr [ebp-4],eax
 004EE1D4    push        12
 004EE1D6    call        user32.GetKeyState
 004EE1DB    test        ax,ax
>004EE1DE    jl          004EE285
 004EE1E4    mov         eax,dword ptr [ebp-8]
 004EE1E7    mov         ax,word ptr [eax+4]
 004EE1EB    sub         ax,9
>004EE1EF    je          004EE1FF
 004EE1F1    add         eax,0FFFFFFE4
 004EE1F4    sub         ax,4
>004EE1F8    jb          004EE237
>004EE1FA    jmp         004EE285
 004EE1FF    push        11
 004EE201    call        user32.GetKeyState
 004EE206    test        ax,ax
>004EE209    jl          004EE285
 004EE20B    push        1
 004EE20D    push        10
 004EE20F    call        user32.GetKeyState
 004EE214    test        ax,ax
 004EE217    setge       cl
 004EE21A    mov         eax,dword ptr [ebp-4]
 004EE21D    mov         edx,dword ptr [eax+220];TCustomForm.FActiveControl:TWinControl
 004EE223    mov         eax,dword ptr [ebp-4]
 004EE226    call        004D4030
 004EE22B    mov         eax,dword ptr [ebp-8]
 004EE22E    mov         dword ptr [eax+0C],1
>004EE235    jmp         004EE290
 004EE237    mov         eax,dword ptr [ebp-4]
 004EE23A    cmp         dword ptr [eax+220],0;TCustomForm.FActiveControl:TWinControl
>004EE241    je          004EE290
 004EE243    push        0
 004EE245    mov         eax,dword ptr [ebp-8]
 004EE248    cmp         word ptr [eax+4],27
>004EE24D    je          004EE25D
 004EE24F    mov         eax,dword ptr [ebp-8]
 004EE252    cmp         word ptr [eax+4],28
>004EE257    je          004EE25D
 004EE259    xor         ecx,ecx
>004EE25B    jmp         004EE25F
 004EE25D    mov         cl,1
 004EE25F    mov         eax,dword ptr [ebp-4]
 004EE262    mov         eax,dword ptr [eax+220];TCustomForm.FActiveControl:TWinControl
 004EE268    mov         eax,dword ptr [eax+30];TWinControl.FParent:TWinControl
 004EE26B    mov         edx,dword ptr [ebp-4]
 004EE26E    mov         edx,dword ptr [edx+220];TCustomForm.FActiveControl:TWinControl
 004EE274    call        004D4030
 004EE279    mov         eax,dword ptr [ebp-8]
 004EE27C    mov         dword ptr [eax+0C],1
>004EE283    jmp         004EE290
 004EE285    mov         edx,dword ptr [ebp-8]
 004EE288    mov         eax,dword ptr [ebp-4]
 004EE28B    call        TWinControl.CMDialogKey
 004EE290    pop         ecx
 004EE291    pop         ecx
 004EE292    pop         ebp
 004EE293    ret
end;*}

//004EE294
{*procedure TCustomForm.CMShowingChanged(?:?);
begin
 004EE294    push        ebp
 004EE295    mov         ebp,esp
 004EE297    add         esp,0FFFFFFE4
 004EE29A    push        ebx
 004EE29B    push        esi
 004EE29C    push        edi
 004EE29D    xor         ecx,ecx
 004EE29F    mov         dword ptr [ebp-1C],ecx
 004EE2A2    mov         dword ptr [ebp-18],edx
 004EE2A5    mov         dword ptr [ebp-4],eax
 004EE2A8    xor         eax,eax
 004EE2AA    push        ebp
 004EE2AB    push        4EE860
 004EE2B0    push        dword ptr fs:[eax]
 004EE2B3    mov         dword ptr fs:[eax],esp
 004EE2B6    mov         eax,dword ptr [ebp-4]
 004EE2B9    test        byte ptr [eax+1C],10;TCustomForm.FComponentState:TComponentState
>004EE2BD    jne         004EE2EC
 004EE2BF    mov         eax,dword ptr [ebp-4]
 004EE2C2    test        byte ptr [eax+2F4],4;TCustomForm.FFormState:TFormState
>004EE2C9    je          004EE2EC
 004EE2CB    lea         edx,[ebp-1C]
 004EE2CE    mov         eax,[0055B6F8];^SVisibleChanged:TResStringRec
 004EE2D3    call        LoadResString
 004EE2D8    mov         ecx,dword ptr [ebp-1C]
 004EE2DB    mov         dl,1
 004EE2DD    mov         eax,[00475960];EInvalidOperation
 004EE2E2    call        Exception.Create;EInvalidOperation.Create
 004EE2E7    call        @RaiseExcept
 004EE2EC    mov         eax,[0055DE4C];Application:TApplication
 004EE2F1    call        004F3988
 004EE2F6    mov         eax,dword ptr [ebp-4]
 004EE2F9    or          byte ptr [eax+2F4],4;TCustomForm.FFormState:TFormState
 004EE300    xor         eax,eax
 004EE302    push        ebp
 004EE303    push        4EE843
 004EE308    push        dword ptr fs:[eax]
 004EE30B    mov         dword ptr fs:[eax],esp
 004EE30E    mov         eax,dword ptr [ebp-4]
 004EE311    test        byte ptr [eax+1C],10;TCustomForm.FComponentState:TComponentState
>004EE315    jne         004EE82B
 004EE31B    mov         eax,dword ptr [ebp-4]
 004EE31E    cmp         byte ptr [eax+1A6],0;TCustomForm.FShowing:Boolean
>004EE325    je          004EE71D
 004EE32B    xor         eax,eax
 004EE32D    push        ebp
 004EE32E    push        4EE34F
 004EE333    push        dword ptr fs:[eax]
 004EE336    mov         dword ptr fs:[eax],esp
 004EE339    mov         eax,dword ptr [ebp-4]
 004EE33C    mov         si,0FFAE
 004EE340    call        @CallDynaInst;TCustomForm.sub_004EA6D4
 004EE345    xor         eax,eax
 004EE347    pop         edx
 004EE348    pop         ecx
 004EE349    pop         ecx
 004EE34A    mov         dword ptr fs:[eax],edx
>004EE34D    jmp         004EE366
>004EE34F    jmp         @HandleAnyException
 004EE354    mov         edx,dword ptr [ebp-4]
 004EE357    mov         eax,[0055DE4C];Application:TApplication
 004EE35C    call        TApplication.HandleException
 004EE361    call        @DoneExcept
 004EE366    mov         eax,dword ptr [ebp-4]
 004EE369    cmp         byte ptr [eax+230],4;TCustomForm.FPosition:TPosition
>004EE370    je          004EE392
 004EE372    mov         eax,dword ptr [ebp-4]
 004EE375    cmp         byte ptr [eax+230],6;TCustomForm.FPosition:TPosition
>004EE37C    jne         004EE45D
 004EE382    mov         eax,dword ptr [ebp-4]
 004EE385    cmp         byte ptr [eax+22F],1;TCustomForm.FFormStyle:TFormStyle
>004EE38C    jne         004EE45D
 004EE392    mov         eax,dword ptr [ebp-4]
 004EE395    cmp         byte ptr [eax+22F],1;TCustomForm.FFormStyle:TFormStyle
>004EE39C    jne         004EE3DA
 004EE39E    mov         eax,[0055DE4C];Application:TApplication
 004EE3A3    mov         eax,dword ptr [eax+44]
 004EE3A6    call        TControl.GetClientWidth
 004EE3AB    mov         edx,dword ptr [ebp-4]
 004EE3AE    sub         eax,dword ptr [edx+48]
 004EE3B1    sar         eax,1
>004EE3B3    jns         004EE3B8
 004EE3B5    adc         eax,0
 004EE3B8    mov         dword ptr [ebp-8],eax
 004EE3BB    mov         eax,[0055DE4C];Application:TApplication
 004EE3C0    mov         eax,dword ptr [eax+44]
 004EE3C3    call        TControl.GetClientHeight
 004EE3C8    mov         edx,dword ptr [ebp-4]
 004EE3CB    sub         eax,dword ptr [edx+4C]
 004EE3CE    sar         eax,1
>004EE3D0    jns         004EE3D5
 004EE3D2    adc         eax,0
 004EE3D5    mov         dword ptr [ebp-0C],eax
>004EE3D8    jmp         004EE40E
 004EE3DA    mov         eax,[0055DE50];Screen:TScreen
 004EE3DF    call        004F001C
 004EE3E4    mov         edx,dword ptr [ebp-4]
 004EE3E7    sub         eax,dword ptr [edx+48]
 004EE3EA    sar         eax,1
>004EE3EC    jns         004EE3F1
 004EE3EE    adc         eax,0
 004EE3F1    mov         dword ptr [ebp-8],eax
 004EE3F4    mov         eax,[0055DE50];Screen:TScreen
 004EE3F9    call        004EFFFC
 004EE3FE    mov         edx,dword ptr [ebp-4]
 004EE401    sub         eax,dword ptr [edx+4C]
 004EE404    sar         eax,1
>004EE406    jns         004EE40B
 004EE408    adc         eax,0
 004EE40B    mov         dword ptr [ebp-0C],eax
 004EE40E    cmp         dword ptr [ebp-8],0
>004EE412    jge         004EE419
 004EE414    xor         eax,eax
 004EE416    mov         dword ptr [ebp-8],eax
 004EE419    cmp         dword ptr [ebp-0C],0
>004EE41D    jge         004EE424
 004EE41F    xor         eax,eax
 004EE421    mov         dword ptr [ebp-0C],eax
 004EE424    mov         eax,dword ptr [ebp-4]
 004EE427    mov         eax,dword ptr [eax+48];TCustomForm.Width:Integer
 004EE42A    push        eax
 004EE42B    mov         eax,dword ptr [ebp-4]
 004EE42E    mov         eax,dword ptr [eax+4C];TCustomForm.Height:Integer
 004EE431    push        eax
 004EE432    mov         ecx,dword ptr [ebp-0C]
 004EE435    mov         edx,dword ptr [ebp-8]
 004EE438    mov         eax,dword ptr [ebp-4]
 004EE43B    mov         ebx,dword ptr [eax]
 004EE43D    call        dword ptr [ebx+84];TWinControl.SetBounds
 004EE443    mov         eax,dword ptr [ebp-4]
 004EE446    cmp         byte ptr [eax+57],0;TCustomForm.FVisible:Boolean
>004EE44A    je          004EE629
 004EE450    mov         eax,dword ptr [ebp-4]
 004EE453    call        004EBFD4
>004EE458    jmp         004EE629
 004EE45D    mov         eax,dword ptr [ebp-4]
 004EE460    mov         al,byte ptr [eax+230];TCustomForm.FPosition:TPosition
 004EE466    add         al,0FA
 004EE468    sub         al,2
>004EE46A    jae         004EE568
 004EE470    mov         eax,[0055DE4C];Application:TApplication
 004EE475    mov         eax,dword ptr [eax+44]
 004EE478    mov         dword ptr [ebp-14],eax
 004EE47B    mov         eax,dword ptr [ebp-4]
 004EE47E    cmp         byte ptr [eax+230],7;TCustomForm.FPosition:TPosition
>004EE485    jne         004EE4A5
 004EE487    mov         eax,dword ptr [ebp-4]
 004EE48A    mov         eax,dword ptr [eax+4];TCustomForm.FOwner:TComponent
 004EE48D    mov         edx,dword ptr ds:[4E6404];TCustomForm
 004EE493    call        @IsClass
 004EE498    test        al,al
>004EE49A    je          004EE4A5
 004EE49C    mov         eax,dword ptr [ebp-4]
 004EE49F    mov         eax,dword ptr [eax+4];TCustomForm.FOwner:TComponent
 004EE4A2    mov         dword ptr [ebp-14],eax
 004EE4A5    cmp         dword ptr [ebp-14],0
>004EE4A9    je          004EE4E5
 004EE4AB    mov         eax,dword ptr [ebp-14]
 004EE4AE    mov         eax,dword ptr [eax+48]
 004EE4B1    mov         edx,dword ptr [ebp-4]
 004EE4B4    sub         eax,dword ptr [edx+48]
 004EE4B7    sar         eax,1
>004EE4B9    jns         004EE4BE
 004EE4BB    adc         eax,0
 004EE4BE    mov         edx,dword ptr [ebp-14]
 004EE4C1    add         eax,dword ptr [edx+40]
 004EE4C4    mov         dword ptr [ebp-8],eax
 004EE4C7    mov         eax,dword ptr [ebp-14]
 004EE4CA    mov         eax,dword ptr [eax+4C]
 004EE4CD    mov         edx,dword ptr [ebp-4]
 004EE4D0    sub         eax,dword ptr [edx+4C]
 004EE4D3    sar         eax,1
>004EE4D5    jns         004EE4DA
 004EE4D7    adc         eax,0
 004EE4DA    mov         edx,dword ptr [ebp-14]
 004EE4DD    add         eax,dword ptr [edx+44]
 004EE4E0    mov         dword ptr [ebp-0C],eax
>004EE4E3    jmp         004EE519
 004EE4E5    mov         eax,[0055DE50];Screen:TScreen
 004EE4EA    call        004F001C
 004EE4EF    mov         edx,dword ptr [ebp-4]
 004EE4F2    sub         eax,dword ptr [edx+48]
 004EE4F5    sar         eax,1
>004EE4F7    jns         004EE4FC
 004EE4F9    adc         eax,0
 004EE4FC    mov         dword ptr [ebp-8],eax
 004EE4FF    mov         eax,[0055DE50];Screen:TScreen
 004EE504    call        004EFFFC
 004EE509    mov         edx,dword ptr [ebp-4]
 004EE50C    sub         eax,dword ptr [edx+4C]
 004EE50F    sar         eax,1
>004EE511    jns         004EE516
 004EE513    adc         eax,0
 004EE516    mov         dword ptr [ebp-0C],eax
 004EE519    cmp         dword ptr [ebp-8],0
>004EE51D    jge         004EE524
 004EE51F    xor         eax,eax
 004EE521    mov         dword ptr [ebp-8],eax
 004EE524    cmp         dword ptr [ebp-0C],0
>004EE528    jge         004EE52F
 004EE52A    xor         eax,eax
 004EE52C    mov         dword ptr [ebp-0C],eax
 004EE52F    mov         eax,dword ptr [ebp-4]
 004EE532    mov         eax,dword ptr [eax+48];TCustomForm.Width:Integer
 004EE535    push        eax
 004EE536    mov         eax,dword ptr [ebp-4]
 004EE539    mov         eax,dword ptr [eax+4C];TCustomForm.Height:Integer
 004EE53C    push        eax
 004EE53D    mov         ecx,dword ptr [ebp-0C]
 004EE540    mov         edx,dword ptr [ebp-8]
 004EE543    mov         eax,dword ptr [ebp-4]
 004EE546    mov         ebx,dword ptr [eax]
 004EE548    call        dword ptr [ebx+84];TWinControl.SetBounds
 004EE54E    mov         eax,dword ptr [ebp-4]
 004EE551    cmp         byte ptr [eax+57],0;TCustomForm.FVisible:Boolean
>004EE555    je          004EE629
 004EE55B    mov         eax,dword ptr [ebp-4]
 004EE55E    call        004EBFD4
>004EE563    jmp         004EE629
 004EE568    mov         eax,dword ptr [ebp-4]
 004EE56B    cmp         byte ptr [eax+230],5;TCustomForm.FPosition:TPosition
>004EE572    jne         004EE629
 004EE578    mov         eax,dword ptr [ebp-4]
 004EE57B    cmp         byte ptr [eax+22F],1;TCustomForm.FFormStyle:TFormStyle
>004EE582    jne         004EE5C0
 004EE584    mov         eax,[0055DE4C];Application:TApplication
 004EE589    mov         eax,dword ptr [eax+44]
 004EE58C    call        TControl.GetClientWidth
 004EE591    mov         edx,dword ptr [ebp-4]
 004EE594    sub         eax,dword ptr [edx+48]
 004EE597    sar         eax,1
>004EE599    jns         004EE59E
 004EE59B    adc         eax,0
 004EE59E    mov         dword ptr [ebp-8],eax
 004EE5A1    mov         eax,[0055DE4C];Application:TApplication
 004EE5A6    mov         eax,dword ptr [eax+44]
 004EE5A9    call        TControl.GetClientHeight
 004EE5AE    mov         edx,dword ptr [ebp-4]
 004EE5B1    sub         eax,dword ptr [edx+4C]
 004EE5B4    sar         eax,1
>004EE5B6    jns         004EE5BB
 004EE5B8    adc         eax,0
 004EE5BB    mov         dword ptr [ebp-0C],eax
>004EE5BE    jmp         004EE5F4
 004EE5C0    mov         eax,[0055DE50];Screen:TScreen
 004EE5C5    call        004F009C
 004EE5CA    mov         edx,dword ptr [ebp-4]
 004EE5CD    sub         eax,dword ptr [edx+48]
 004EE5D0    sar         eax,1
>004EE5D2    jns         004EE5D7
 004EE5D4    adc         eax,0
 004EE5D7    mov         dword ptr [ebp-8],eax
 004EE5DA    mov         eax,[0055DE50];Screen:TScreen
 004EE5DF    call        004F007C
 004EE5E4    mov         edx,dword ptr [ebp-4]
 004EE5E7    sub         eax,dword ptr [edx+4C]
 004EE5EA    sar         eax,1
>004EE5EC    jns         004EE5F1
 004EE5EE    adc         eax,0
 004EE5F1    mov         dword ptr [ebp-0C],eax
 004EE5F4    cmp         dword ptr [ebp-8],0
>004EE5F8    jge         004EE5FF
 004EE5FA    xor         eax,eax
 004EE5FC    mov         dword ptr [ebp-8],eax
 004EE5FF    cmp         dword ptr [ebp-0C],0
>004EE603    jge         004EE60A
 004EE605    xor         eax,eax
 004EE607    mov         dword ptr [ebp-0C],eax
 004EE60A    mov         eax,dword ptr [ebp-4]
 004EE60D    mov         eax,dword ptr [eax+48];TCustomForm.Width:Integer
 004EE610    push        eax
 004EE611    mov         eax,dword ptr [ebp-4]
 004EE614    mov         eax,dword ptr [eax+4C];TCustomForm.Height:Integer
 004EE617    push        eax
 004EE618    mov         ecx,dword ptr [ebp-0C]
 004EE61B    mov         edx,dword ptr [ebp-8]
 004EE61E    mov         eax,dword ptr [ebp-4]
 004EE621    mov         ebx,dword ptr [eax]
 004EE623    call        dword ptr [ebx+84];TWinControl.SetBounds
 004EE629    mov         eax,dword ptr [ebp-4]
 004EE62C    mov         byte ptr [eax+230],0;TCustomForm.FPosition:TPosition
 004EE633    mov         eax,dword ptr [ebp-4]
 004EE636    cmp         byte ptr [eax+22F],1;TCustomForm.FFormStyle:TFormStyle
>004EE63D    jne         004EE6F8
 004EE643    mov         eax,dword ptr [ebp-4]
 004EE646    cmp         byte ptr [eax+22B],2;TCustomForm.FWindowState:TWindowState
>004EE64D    jne         004EE685
 004EE64F    push        0
 004EE651    mov         eax,dword ptr [ebp-4]
 004EE654    call        TWinControl.GetHandle
 004EE659    push        eax
 004EE65A    push        223
 004EE65F    mov         eax,[0055DE4C];Application:TApplication
 004EE664    mov         eax,dword ptr [eax+44]
 004EE667    mov         eax,dword ptr [eax+254]
 004EE66D    push        eax
 004EE66E    call        user32.SendMessageA
 004EE673    push        3
 004EE675    mov         eax,dword ptr [ebp-4]
 004EE678    call        TWinControl.GetHandle
 004EE67D    push        eax
 004EE67E    call        user32.ShowWindow
>004EE683    jmp         004EE6D6
 004EE685    mov         eax,dword ptr [ebp-4]
 004EE688    movzx       eax,byte ptr [eax+22B];TCustomForm.FWindowState:TWindowState
 004EE68F    mov         eax,dword ptr [eax*4+54193C]
 004EE696    push        eax
 004EE697    mov         eax,dword ptr [ebp-4]
 004EE69A    call        TWinControl.GetHandle
 004EE69F    push        eax
 004EE6A0    call        user32.ShowWindow
 004EE6A5    mov         eax,dword ptr [ebp-4]
 004EE6A8    mov         eax,dword ptr [eax+48];TCustomForm.Width:Integer
 004EE6AB    mov         edx,dword ptr [ebp-4]
 004EE6AE    mov         edx,dword ptr [edx+4C];TCustomForm.Height:Integer
 004EE6B1    shl         edx,10
 004EE6B4    or          eax,edx
 004EE6B6    push        eax
 004EE6B7    push        0
 004EE6B9    push        5
 004EE6BB    mov         eax,dword ptr [ebp-4]
 004EE6BE    call        TWinControl.GetHandle
 004EE6C3    push        eax
 004EE6C4    push        407ADC;user32.DefMDIChildProcA:Longint
 004EE6C9    call        user32.CallWindowProcA
 004EE6CE    mov         eax,dword ptr [ebp-4]
 004EE6D1    call        004CB3C4
 004EE6D6    push        0
 004EE6D8    push        0
 004EE6DA    push        234
 004EE6DF    mov         eax,[0055DE4C];Application:TApplication
 004EE6E4    mov         eax,dword ptr [eax+44]
 004EE6E7    mov         eax,dword ptr [eax+254]
 004EE6ED    push        eax
 004EE6EE    call        user32.SendMessageA
>004EE6F3    jmp         004EE82B
 004EE6F8    mov         eax,dword ptr [ebp-4]
 004EE6FB    movzx       eax,byte ptr [eax+22B];TCustomForm.FWindowState:TWindowState
 004EE702    mov         eax,dword ptr [eax*4+54193C]
 004EE709    push        eax
 004EE70A    mov         eax,dword ptr [ebp-4]
 004EE70D    call        TWinControl.GetHandle
 004EE712    push        eax
 004EE713    call        user32.ShowWindow
>004EE718    jmp         004EE82B
 004EE71D    xor         eax,eax
 004EE71F    push        ebp
 004EE720    push        4EE741
 004EE725    push        dword ptr fs:[eax]
 004EE728    mov         dword ptr fs:[eax],esp
 004EE72B    mov         eax,dword ptr [ebp-4]
 004EE72E    mov         si,0FFAF
 004EE732    call        @CallDynaInst;TCustomForm.sub_004EA6A8
 004EE737    xor         eax,eax
 004EE739    pop         edx
 004EE73A    pop         ecx
 004EE73B    pop         ecx
 004EE73C    mov         dword ptr fs:[eax],edx
>004EE73F    jmp         004EE758
>004EE741    jmp         @HandleAnyException
 004EE746    mov         edx,dword ptr [ebp-4]
 004EE749    mov         eax,[0055DE4C];Application:TApplication
 004EE74E    call        TApplication.HandleException
 004EE753    call        @DoneExcept
 004EE758    mov         eax,[0055DE50];Screen:TScreen
 004EE75D    mov         eax,dword ptr [eax+6C]
 004EE760    cmp         eax,dword ptr [ebp-4]
>004EE763    jne         004EE76F
 004EE765    xor         edx,edx
 004EE767    mov         eax,dword ptr [ebp-4]
 004EE76A    call        TCustomForm.MergeMenu
 004EE76F    mov         eax,dword ptr [ebp-4]
 004EE772    cmp         byte ptr [eax+22F],1;TCustomForm.FFormStyle:TFormStyle
>004EE779    jne         004EE788
 004EE77B    mov         eax,dword ptr [ebp-4]
 004EE77E    call        004D00C4
>004EE783    jmp         004EE82B
 004EE788    mov         eax,dword ptr [ebp-4]
 004EE78B    test        byte ptr [eax+2F4],8;TCustomForm.FFormState:TFormState
>004EE792    je          004EE7B3
 004EE794    push        97
 004EE799    push        0
 004EE79B    push        0
 004EE79D    push        0
 004EE79F    push        0
 004EE7A1    push        0
 004EE7A3    mov         eax,dword ptr [ebp-4]
 004EE7A6    call        TWinControl.GetHandle
 004EE7AB    push        eax
 004EE7AC    call        user32.SetWindowPos
>004EE7B1    jmp         004EE82B
 004EE7B3    xor         eax,eax
 004EE7B5    mov         dword ptr [ebp-10],eax
 004EE7B8    mov         eax,dword ptr [ebp-4]
 004EE7BB    call        TWinControl.GetHandle
 004EE7C0    mov         ebx,eax
 004EE7C2    call        user32.GetActiveWindow
 004EE7C7    cmp         ebx,eax
>004EE7C9    jne         004EE7ED
 004EE7CB    mov         eax,dword ptr [ebp-4]
 004EE7CE    call        TWinControl.GetHandle
 004EE7D3    push        eax
 004EE7D4    call        user32.IsIconic
 004EE7D9    test        eax,eax
>004EE7DB    jne         004EE7ED
 004EE7DD    mov         eax,dword ptr [ebp-4]
 004EE7E0    call        TWinControl.GetHandle
 004EE7E5    call        004E7B5C
 004EE7EA    mov         dword ptr [ebp-10],eax
 004EE7ED    cmp         dword ptr [ebp-10],0
>004EE7F1    je          004EE81B
 004EE7F3    push        97
 004EE7F8    push        0
 004EE7FA    push        0
 004EE7FC    push        0
 004EE7FE    push        0
 004EE800    push        0
 004EE802    mov         eax,dword ptr [ebp-4]
 004EE805    call        TWinControl.GetHandle
 004EE80A    push        eax
 004EE80B    call        user32.SetWindowPos
 004EE810    mov         eax,dword ptr [ebp-10]
 004EE813    push        eax
 004EE814    call        user32.SetActiveWindow
>004EE819    jmp         004EE82B
 004EE81B    push        0
 004EE81D    mov         eax,dword ptr [ebp-4]
 004EE820    call        TWinControl.GetHandle
 004EE825    push        eax
 004EE826    call        user32.ShowWindow
 004EE82B    xor         eax,eax
 004EE82D    pop         edx
 004EE82E    pop         ecx
 004EE82F    pop         ecx
 004EE830    mov         dword ptr fs:[eax],edx
 004EE833    push        4EE84A
 004EE838    mov         eax,dword ptr [ebp-4]
 004EE83B    and         byte ptr [eax+2F4],0FB;TCustomForm.FFormState:TFormState
 004EE842    ret
>004EE843    jmp         @HandleFinally
>004EE848    jmp         004EE838
 004EE84A    xor         eax,eax
 004EE84C    pop         edx
 004EE84D    pop         ecx
 004EE84E    pop         ecx
 004EE84F    mov         dword ptr fs:[eax],edx
 004EE852    push        4EE867
 004EE857    lea         eax,[ebp-1C]
 004EE85A    call        @LStrClr
 004EE85F    ret
>004EE860    jmp         @HandleFinally
>004EE865    jmp         004EE857
 004EE867    pop         edi
 004EE868    pop         esi
 004EE869    pop         ebx
 004EE86A    mov         esp,ebp
 004EE86C    pop         ebp
 004EE86D    ret
end;*}

//004EE870
{*procedure TCustomForm.CMIconChanged(?:?);
begin
 004EE870    push        ebp
 004EE871    mov         ebp,esp
 004EE873    add         esp,0FFFFFFF8
 004EE876    mov         dword ptr [ebp-8],edx
 004EE879    mov         dword ptr [ebp-4],eax
 004EE87C    mov         eax,dword ptr [ebp-4]
 004EE87F    mov         eax,dword ptr [eax+240];TCustomForm.FIcon:TIcon
 004EE885    call        0048F1C8
 004EE88A    test        eax,eax
>004EE88C    jne         004EE898
 004EE88E    xor         edx,edx
 004EE890    mov         eax,dword ptr [ebp-4]
 004EE893    call        004EA55C
 004EE898    pop         ecx
 004EE899    pop         ecx
 004EE89A    pop         ebp
 004EE89B    ret
end;*}

//004EE89C
{*procedure TCustomForm.CMRelease(?:?);
begin
 004EE89C    push        ebp
 004EE89D    mov         ebp,esp
 004EE89F    add         esp,0FFFFFFF8
 004EE8A2    mov         dword ptr [ebp-8],edx
 004EE8A5    mov         dword ptr [ebp-4],eax
 004EE8A8    mov         eax,dword ptr [ebp-4]
 004EE8AB    call        TObject.Free
 004EE8B0    pop         ecx
 004EE8B1    pop         ecx
 004EE8B2    pop         ebp
 004EE8B3    ret
end;*}

//004EE8B4
{*procedure TCustomForm.CMTextChanged(?:?);
begin
 004EE8B4    push        ebp
 004EE8B5    mov         ebp,esp
 004EE8B7    add         esp,0FFFFFFF8
 004EE8BA    mov         dword ptr [ebp-8],edx
 004EE8BD    mov         dword ptr [ebp-4],eax
 004EE8C0    mov         edx,dword ptr [ebp-8]
 004EE8C3    mov         eax,dword ptr [ebp-4]
 004EE8C6    mov         ecx,dword ptr [eax]
 004EE8C8    call        dword ptr [ecx-10];TCustomForm.DefaultHandler
 004EE8CB    mov         eax,dword ptr [ebp-4]
 004EE8CE    cmp         byte ptr [eax+22F],1;TCustomForm.FFormStyle:TFormStyle
>004EE8D5    jne         004EE910
 004EE8D7    mov         eax,[0055DE4C];Application:TApplication
 004EE8DC    cmp         dword ptr [eax+44],0
>004EE8E0    je          004EE910
 004EE8E2    mov         eax,[0055DE4C];Application:TApplication
 004EE8E7    mov         eax,dword ptr [eax+44]
 004EE8EA    cmp         dword ptr [eax+254],0
>004EE8F1    je          004EE910
 004EE8F3    push        0
 004EE8F5    push        0
 004EE8F7    push        234
 004EE8FC    mov         eax,[0055DE4C];Application:TApplication
 004EE901    mov         eax,dword ptr [eax+44]
 004EE904    mov         eax,dword ptr [eax+254]
 004EE90A    push        eax
 004EE90B    call        user32.SendMessageA
 004EE910    pop         ecx
 004EE911    pop         ecx
 004EE912    pop         ebp
 004EE913    ret
end;*}

//004EE914
{*procedure TCustomForm.CMUIActivate(?:?);
begin
 004EE914    push        ebp
 004EE915    mov         ebp,esp
 004EE917    add         esp,0FFFFFFF8
 004EE91A    mov         dword ptr [ebp-8],edx
 004EE91D    mov         dword ptr [ebp-4],eax
 004EE920    mov         edx,dword ptr [ebp-8]
 004EE923    mov         eax,dword ptr [ebp-4]
 004EE926    mov         ecx,dword ptr [eax]
 004EE928    call        dword ptr [ecx-10];TCustomForm.DefaultHandler
 004EE92B    pop         ecx
 004EE92C    pop         ecx
 004EE92D    pop         ebp
 004EE92E    ret
end;*}

//004EE930
{*procedure TCustomForm.CMParentFontChanged(?:?);
begin
 004EE930    push        ebp
 004EE931    mov         ebp,esp
 004EE933    add         esp,0FFFFFFF4
 004EE936    mov         dword ptr [ebp-8],edx
 004EE939    mov         dword ptr [ebp-4],eax
 004EE93C    mov         eax,dword ptr [ebp-4]
 004EE93F    cmp         byte ptr [eax+59],0;TCustomForm.FParentFont:Boolean
>004EE943    je          004EE9A9
 004EE945    mov         eax,dword ptr [ebp-8]
 004EE948    cmp         dword ptr [eax+4],0
>004EE94C    je          004EE961
 004EE94E    mov         edx,dword ptr [ebp-8]
 004EE951    mov         edx,dword ptr [edx+8]
 004EE954    mov         eax,dword ptr [ebp-4]
 004EE957    mov         eax,dword ptr [eax+68];TCustomForm.FFont:TFont
 004EE95A    mov         ecx,dword ptr [eax]
 004EE95C    call        dword ptr [ecx+8];TFont.sub_00486CC0
>004EE95F    jmp         004EE9A9
 004EE961    mov         dl,1
 004EE963    mov         eax,[0048521C];TFont
 004EE968    call        TFont.Create;TFont.Create
 004EE96D    mov         dword ptr [ebp-0C],eax
 004EE970    xor         eax,eax
 004EE972    push        ebp
 004EE973    push        4EE9A2
 004EE978    push        dword ptr fs:[eax]
 004EE97B    mov         dword ptr fs:[eax],esp
 004EE97E    mov         eax,dword ptr [ebp-4]
 004EE981    mov         eax,dword ptr [eax+68];TCustomForm.FFont:TFont
 004EE984    mov         edx,dword ptr [ebp-0C]
 004EE987    mov         ecx,dword ptr [eax]
 004EE989    call        dword ptr [ecx+8];TFont.sub_00486CC0
 004EE98C    xor         eax,eax
 004EE98E    pop         edx
 004EE98F    pop         ecx
 004EE990    pop         ecx
 004EE991    mov         dword ptr fs:[eax],edx
 004EE994    push        4EE9A9
 004EE999    mov         eax,dword ptr [ebp-0C]
 004EE99C    call        TObject.Free
 004EE9A1    ret
>004EE9A2    jmp         @HandleFinally
>004EE9A7    jmp         004EE999
 004EE9A9    mov         esp,ebp
 004EE9AB    pop         ebp
 004EE9AC    ret
end;*}

//004EE9B0
{*procedure TCustomForm.CMDockNotification(?:?);
begin
 004EE9B0    push        ebp
 004EE9B1    mov         ebp,esp
 004EE9B3    add         esp,0FFFFFFF8
 004EE9B6    push        esi
 004EE9B7    mov         dword ptr [ebp-8],edx
 004EE9BA    mov         dword ptr [ebp-4],eax
 004EE9BD    mov         edx,dword ptr [ebp-8]
 004EE9C0    mov         eax,dword ptr [ebp-4]
 004EE9C3    mov         si,0FFAB
 004EE9C7    call        @CallDynaInst;TCustomForm.sub_004EF3D0
 004EE9CC    test        al,al
>004EE9CE    je          004EE9DC
 004EE9D0    mov         eax,dword ptr [ebp-8]
 004EE9D3    mov         dword ptr [eax+0C],1
>004EE9DA    jmp         004EE9E4
 004EE9DC    mov         eax,dword ptr [ebp-8]
 004EE9DF    xor         edx,edx
 004EE9E1    mov         dword ptr [eax+0C],edx
 004EE9E4    pop         esi
 004EE9E5    pop         ecx
 004EE9E6    pop         ecx
 004EE9E7    pop         ebp
 004EE9E8    ret
end;*}

//004EE9EC
procedure sub_004EE9EC(?:TCustomForm);
begin
{*
 004EE9EC    push        ebp
 004EE9ED    mov         ebp,esp
 004EE9EF    add         esp,0FFFFFFF8
 004EE9F2    push        esi
 004EE9F3    mov         dword ptr [ebp-4],eax
 004EE9F6    mov         eax,dword ptr [ebp-4]
 004EE9F9    test        byte ptr [eax+2F4],8;TCustomForm.FFormState:TFormState
>004EEA00    je          004EEA14
 004EEA02    mov         eax,dword ptr [ebp-4]
 004EEA05    mov         dword ptr [eax+24C],2;TCustomForm.FModalResult:TModalResult
>004EEA0F    jmp         004EEAA7
 004EEA14    mov         eax,dword ptr [ebp-4]
 004EEA17    mov         edx,dword ptr [eax]
 004EEA19    call        dword ptr [edx+0E4];TCustomForm.sub_004EEAAC
 004EEA1F    test        al,al
>004EEA21    je          004EEAA7
 004EEA27    mov         eax,dword ptr [ebp-4]
 004EEA2A    cmp         byte ptr [eax+22F],1;TCustomForm.FFormStyle:TFormStyle
>004EEA31    jne         004EEA4B
 004EEA33    mov         eax,dword ptr [ebp-4]
 004EEA36    test        byte ptr [eax+228],2;TCustomForm.FBorderIcons:TBorderIcons
>004EEA3D    je          004EEA45
 004EEA3F    mov         byte ptr [ebp-5],3
>004EEA43    jmp         004EEA4F
 004EEA45    mov         byte ptr [ebp-5],0
>004EEA49    jmp         004EEA4F
 004EEA4B    mov         byte ptr [ebp-5],1
 004EEA4F    lea         edx,[ebp-5]
 004EEA52    mov         eax,dword ptr [ebp-4]
 004EEA55    mov         si,0FFB0
 004EEA59    call        @CallDynaInst;TCustomForm.sub_004EA674
 004EEA5E    cmp         byte ptr [ebp-5],0
>004EEA62    je          004EEAA7
 004EEA64    mov         eax,[0055DE4C];Application:TApplication
 004EEA69    mov         eax,dword ptr [eax+44]
 004EEA6C    cmp         eax,dword ptr [ebp-4]
>004EEA6F    jne         004EEA7D
 004EEA71    mov         eax,[0055DE4C];Application:TApplication
 004EEA76    call        004F2F00
>004EEA7B    jmp         004EEAA7
 004EEA7D    cmp         byte ptr [ebp-5],1
>004EEA81    jne         004EEA8D
 004EEA83    mov         eax,dword ptr [ebp-4]
 004EEA86    call        004EEBC4
>004EEA8B    jmp         004EEAA7
 004EEA8D    cmp         byte ptr [ebp-5],3
>004EEA91    jne         004EEA9F
 004EEA93    mov         dl,1
 004EEA95    mov         eax,dword ptr [ebp-4]
 004EEA98    call        TForm.SetWindowState
>004EEA9D    jmp         004EEAA7
 004EEA9F    mov         eax,dword ptr [ebp-4]
 004EEAA2    call        TCustomForm.Release
 004EEAA7    pop         esi
 004EEAA8    pop         ecx
 004EEAA9    pop         ecx
 004EEAAA    pop         ebp
 004EEAAB    ret
*}
end;

//004EEAAC
{*function sub_004EEAAC:?;
begin
 004EEAAC    push        ebp
 004EEAAD    mov         ebp,esp
 004EEAAF    add         esp,0FFFFFFF0
 004EEAB2    push        ebx
 004EEAB3    mov         dword ptr [ebp-4],eax
 004EEAB6    mov         eax,dword ptr [ebp-4]
 004EEAB9    cmp         byte ptr [eax+22F],2;TCustomForm.FFormStyle:TFormStyle
>004EEAC0    jne         004EEAFD
 004EEAC2    mov         byte ptr [ebp-5],0
 004EEAC6    mov         eax,dword ptr [ebp-4]
 004EEAC9    call        TCustomForm.GetMDIChildCount
 004EEACE    dec         eax
 004EEACF    test        eax,eax
>004EEAD1    jl          004EEAFD
 004EEAD3    inc         eax
 004EEAD4    mov         dword ptr [ebp-10],eax
 004EEAD7    mov         dword ptr [ebp-0C],0
 004EEADE    mov         edx,dword ptr [ebp-0C]
 004EEAE1    mov         eax,dword ptr [ebp-4]
 004EEAE4    call        004EB698
 004EEAE9    mov         edx,dword ptr [eax]
 004EEAEB    call        dword ptr [edx+0E4]
 004EEAF1    test        al,al
>004EEAF3    je          004EEB23
 004EEAF5    inc         dword ptr [ebp-0C]
 004EEAF8    dec         dword ptr [ebp-10]
>004EEAFB    jne         004EEADE
 004EEAFD    mov         byte ptr [ebp-5],1
 004EEB01    mov         eax,dword ptr [ebp-4]
 004EEB04    cmp         word ptr [eax+29A],0;TCustomForm.?f29A:word
>004EEB0C    je          004EEB23
 004EEB0E    lea         ecx,[ebp-5]
 004EEB11    mov         ebx,dword ptr [ebp-4]
 004EEB14    mov         edx,dword ptr [ebp-4]
 004EEB17    mov         eax,dword ptr [ebx+29C];TCustomForm.?f29C:dword
 004EEB1D    call        dword ptr [ebx+298];TCustomForm.FOnCloseQuery
 004EEB23    mov         al,byte ptr [ebp-5]
 004EEB26    pop         ebx
 004EEB27    mov         esp,ebp
 004EEB29    pop         ebp
 004EEB2A    ret
end;*}

//004EEB2C
procedure TCustomForm.CloseModal;
begin
{*
 004EEB2C    push        ebp
 004EEB2D    mov         ebp,esp
 004EEB2F    add         esp,0FFFFFFF8
 004EEB32    push        ebx
 004EEB33    push        esi
 004EEB34    push        edi
 004EEB35    mov         dword ptr [ebp-4],eax
 004EEB38    xor         eax,eax
 004EEB3A    push        ebp
 004EEB3B    push        4EEB98
 004EEB40    push        dword ptr fs:[eax]
 004EEB43    mov         dword ptr fs:[eax],esp
 004EEB46    mov         byte ptr [ebp-5],0
 004EEB4A    mov         eax,dword ptr [ebp-4]
 004EEB4D    mov         edx,dword ptr [eax]
 004EEB4F    call        dword ptr [edx+0E4]
 004EEB55    test        al,al
>004EEB57    je          004EEB6C
 004EEB59    mov         byte ptr [ebp-5],1
 004EEB5D    lea         edx,[ebp-5]
 004EEB60    mov         eax,dword ptr [ebp-4]
 004EEB63    mov         si,0FFB0
 004EEB67    call        @CallDynaInst
 004EEB6C    mov         al,byte ptr [ebp-5]
 004EEB6F    sub         al,1
>004EEB71    jb          004EEB79
 004EEB73    dec         al
>004EEB75    je          004EEB86
>004EEB77    jmp         004EEB8E
 004EEB79    mov         eax,dword ptr [ebp-4]
 004EEB7C    xor         edx,edx
 004EEB7E    mov         dword ptr [eax+24C],edx
>004EEB84    jmp         004EEB8E
 004EEB86    mov         eax,dword ptr [ebp-4]
 004EEB89    call        TCustomForm.Release
 004EEB8E    xor         eax,eax
 004EEB90    pop         edx
 004EEB91    pop         ecx
 004EEB92    pop         ecx
 004EEB93    mov         dword ptr fs:[eax],edx
>004EEB96    jmp         004EEBBA
>004EEB98    jmp         @HandleAnyException
 004EEB9D    mov         eax,dword ptr [ebp-4]
 004EEBA0    xor         edx,edx
 004EEBA2    mov         dword ptr [eax+24C],edx
 004EEBA8    mov         edx,dword ptr [ebp-4]
 004EEBAB    mov         eax,[0055DE4C];Application:TApplication
 004EEBB0    call        TApplication.HandleException
 004EEBB5    call        @DoneExcept
 004EEBBA    pop         edi
 004EEBBB    pop         esi
 004EEBBC    pop         ebx
 004EEBBD    pop         ecx
 004EEBBE    pop         ecx
 004EEBBF    pop         ebp
 004EEBC0    ret
*}
end;

//004EEBC4
procedure sub_004EEBC4(?:TCustomForm);
begin
{*
 004EEBC4    push        ebp
 004EEBC5    mov         ebp,esp
 004EEBC7    push        ecx
 004EEBC8    mov         dword ptr [ebp-4],eax
 004EEBCB    xor         edx,edx
 004EEBCD    mov         eax,dword ptr [ebp-4]
 004EEBD0    call        TCustomForm.SetVisible
 004EEBD5    pop         ecx
 004EEBD6    pop         ebp
 004EEBD7    ret
*}
end;

//004EEBD8
procedure sub_004EEBD8(?:TCustomForm);
begin
{*
 004EEBD8    push        ebp
 004EEBD9    mov         ebp,esp
 004EEBDB    push        ecx
 004EEBDC    mov         dword ptr [ebp-4],eax
 004EEBDF    mov         dl,1
 004EEBE1    mov         eax,dword ptr [ebp-4]
 004EEBE4    call        TCustomForm.SetVisible
 004EEBE9    mov         eax,dword ptr [ebp-4]
 004EEBEC    call        004CB3C4
 004EEBF1    pop         ecx
 004EEBF2    pop         ebp
 004EEBF3    ret
*}
end;

//004EEBF4
procedure sub_004EEBF4;
begin
{*
 004EEBF4    push        ebp
 004EEBF5    mov         ebp,esp
 004EEBF7    add         esp,0FFFFFFF8
 004EEBFA    xor         edx,edx
 004EEBFC    mov         dword ptr [ebp-8],edx
 004EEBFF    mov         dword ptr [ebp-4],eax
 004EEC02    xor         eax,eax
 004EEC04    push        ebp
 004EEC05    push        4EEC70
 004EEC0A    push        dword ptr fs:[eax]
 004EEC0D    mov         dword ptr fs:[eax],esp
 004EEC10    mov         eax,dword ptr [ebp-4]
 004EEC13    cmp         byte ptr [eax+22E],0;TCustomForm.FActive:Boolean
>004EEC1A    jne         004EEC5A
 004EEC1C    mov         eax,dword ptr [ebp-4]
 004EEC1F    cmp         byte ptr [eax+57],0;TCustomForm.FVisible:Boolean
>004EEC23    je          004EEC31
 004EEC25    mov         eax,dword ptr [ebp-4]
 004EEC28    mov         edx,dword ptr [eax]
 004EEC2A    call        dword ptr [edx+50];TImage.GetEnabled
 004EEC2D    test        al,al
>004EEC2F    jne         004EEC52
 004EEC31    lea         edx,[ebp-8]
 004EEC34    mov         eax,[0055B60C];^SCannotFocus:TResStringRec
 004EEC39    call        LoadResString
 004EEC3E    mov         ecx,dword ptr [ebp-8]
 004EEC41    mov         dl,1
 004EEC43    mov         eax,[00475960];EInvalidOperation
 004EEC48    call        Exception.Create;EInvalidOperation.Create
 004EEC4D    call        @RaiseExcept
 004EEC52    mov         eax,dword ptr [ebp-4]
 004EEC55    call        004ECEB8
 004EEC5A    xor         eax,eax
 004EEC5C    pop         edx
 004EEC5D    pop         ecx
 004EEC5E    pop         ecx
 004EEC5F    mov         dword ptr fs:[eax],edx
 004EEC62    push        4EEC77
 004EEC67    lea         eax,[ebp-8]
 004EEC6A    call        @LStrClr
 004EEC6F    ret
>004EEC70    jmp         @HandleFinally
>004EEC75    jmp         004EEC67
 004EEC77    pop         ecx
 004EEC78    pop         ecx
 004EEC79    pop         ebp
 004EEC7A    ret
*}
end;

//004EEC7C
procedure TCustomForm.Release;
begin
{*
 004EEC7C    push        ebp
 004EEC7D    mov         ebp,esp
 004EEC7F    push        ecx
 004EEC80    mov         dword ptr [ebp-4],eax
 004EEC83    push        0
 004EEC85    push        0
 004EEC87    push        0B021
 004EEC8C    mov         eax,dword ptr [ebp-4]
 004EEC8F    call        TWinControl.GetHandle
 004EEC94    push        eax
 004EEC95    call        user32.PostMessageA
 004EEC9A    pop         ecx
 004EEC9B    pop         ebp
 004EEC9C    ret
*}
end;

//004EECA0
{*function sub_004EECA0:?;
begin
 004EECA0    push        ebp
 004EECA1    mov         ebp,esp
 004EECA3    add         esp,0FFFFFFE0
 004EECA6    push        ebx
 004EECA7    xor         edx,edx
 004EECA9    mov         dword ptr [ebp-20],edx
 004EECAC    mov         dword ptr [ebp-4],eax
 004EECAF    xor         eax,eax
 004EECB1    push        ebp
 004EECB2    push        4EEF7A
 004EECB7    push        dword ptr fs:[eax]
 004EECBA    mov         dword ptr fs:[eax],esp
 004EECBD    call        CancelDrag
 004EECC2    mov         eax,dword ptr [ebp-4]
 004EECC5    cmp         byte ptr [eax+57],0;TCustomForm.FVisible:Boolean
>004EECC9    jne         004EECEF
 004EECCB    mov         eax,dword ptr [ebp-4]
 004EECCE    mov         edx,dword ptr [eax]
 004EECD0    call        dword ptr [edx+50];TImage.GetEnabled
 004EECD3    test        al,al
>004EECD5    je          004EECEF
 004EECD7    mov         eax,dword ptr [ebp-4]
 004EECDA    test        byte ptr [eax+2F4],8;TCustomForm.FFormState:TFormState
>004EECE1    jne         004EECEF
 004EECE3    mov         eax,dword ptr [ebp-4]
 004EECE6    cmp         byte ptr [eax+22F],1;TCustomForm.FFormStyle:TFormStyle
>004EECED    jne         004EED10
 004EECEF    lea         edx,[ebp-20]
 004EECF2    mov         eax,[0055B394];^SCannotShowModal:TResStringRec
 004EECF7    call        LoadResString
 004EECFC    mov         ecx,dword ptr [ebp-20]
 004EECFF    mov         dl,1
 004EED01    mov         eax,[00475960];EInvalidOperation
 004EED06    call        Exception.Create;EInvalidOperation.Create
 004EED0B    call        @RaiseExcept
 004EED10    call        user32.GetCapture
 004EED15    test        eax,eax
>004EED17    je          004EED2A
 004EED19    push        0
 004EED1B    push        0
 004EED1D    push        1F
 004EED1F    call        user32.GetCapture
 004EED24    push        eax
 004EED25    call        user32.SendMessageA
 004EED2A    call        user32.ReleaseCapture
 004EED2F    mov         eax,[0055DE4C];Application:TApplication
 004EED34    call        004F1B44
 004EED39    xor         eax,eax
 004EED3B    push        ebp
 004EED3C    push        4EEF5D
 004EED41    push        dword ptr fs:[eax]
 004EED44    mov         dword ptr fs:[eax],esp
 004EED47    mov         eax,dword ptr [ebp-4]
 004EED4A    or          byte ptr [eax+2F4],8;TCustomForm.FFormState:TFormState
 004EED51    call        user32.GetActiveWindow
 004EED56    mov         dword ptr [ebp-1C],eax
 004EED59    mov         eax,[005418CC];0x0 gvar_005418CC
 004EED5E    mov         dword ptr [ebp-10],eax
 004EED61    mov         eax,[0055DE50];Screen:TScreen
 004EED66    mov         ecx,dword ptr [eax+78]
 004EED69    mov         eax,[0055DE50];Screen:TScreen
 004EED6E    mov         eax,dword ptr [eax+7C]
 004EED71    xor         edx,edx
 004EED73    call        004788DC
 004EED78    mov         eax,[0055DE50];Screen:TScreen
 004EED7D    mov         edx,dword ptr [ebp-4]
 004EED80    mov         dword ptr [eax+78],edx
 004EED83    mov         eax,[0055DE50];Screen:TScreen
 004EED88    mov         ax,word ptr [eax+44]
 004EED8C    mov         word ptr [ebp-12],ax
 004EED90    xor         edx,edx
 004EED92    mov         eax,[0055DE50];Screen:TScreen
 004EED97    call        004F07EC
 004EED9C    mov         eax,[0055DE50];Screen:TScreen
 004EEDA1    mov         eax,dword ptr [eax+48]
 004EEDA4    mov         dword ptr [ebp-18],eax
 004EEDA7    xor         eax,eax
 004EEDA9    call        004E79D8
 004EEDAE    mov         dword ptr [ebp-0C],eax
 004EEDB1    xor         eax,eax
 004EEDB3    push        ebp
 004EEDB4    push        4EEF3B
 004EEDB9    push        dword ptr fs:[eax]
 004EEDBC    mov         dword ptr fs:[eax],esp
 004EEDBF    mov         eax,dword ptr [ebp-4]
 004EEDC2    call        004EEBD8
 004EEDC7    xor         eax,eax
 004EEDC9    push        ebp
 004EEDCA    push        4EEE8F
 004EEDCF    push        dword ptr fs:[eax]
 004EEDD2    mov         dword ptr fs:[eax],esp
 004EEDD5    push        0
 004EEDD7    push        0
 004EEDD9    push        0B000
 004EEDDE    mov         eax,dword ptr [ebp-4]
 004EEDE1    call        TWinControl.GetHandle
 004EEDE6    push        eax
 004EEDE7    call        user32.SendMessageA
 004EEDEC    mov         eax,dword ptr [ebp-4]
 004EEDEF    xor         edx,edx
 004EEDF1    mov         dword ptr [eax+24C],edx;TCustomForm.FModalResult:TModalResult
 004EEDF7    mov         eax,[0055DE4C];Application:TApplication
 004EEDFC    call        004F2C00
 004EEE01    mov         eax,[0055DE4C];Application:TApplication
 004EEE06    cmp         byte ptr [eax+9C],0
>004EEE0D    je          004EEE1E
 004EEE0F    mov         eax,dword ptr [ebp-4]
 004EEE12    mov         dword ptr [eax+24C],2;TCustomForm.FModalResult:TModalResult
>004EEE1C    jmp         004EEE32
 004EEE1E    mov         eax,dword ptr [ebp-4]
 004EEE21    cmp         dword ptr [eax+24C],0;TCustomForm.FModalResult:TModalResult
>004EEE28    je          004EEE32
 004EEE2A    mov         eax,dword ptr [ebp-4]
 004EEE2D    call        TCustomForm.CloseModal
 004EEE32    mov         eax,dword ptr [ebp-4]
 004EEE35    cmp         dword ptr [eax+24C],0;TCustomForm.FModalResult:TModalResult
>004EEE3C    je          004EEDF7
 004EEE3E    mov         eax,dword ptr [ebp-4]
 004EEE41    mov         eax,dword ptr [eax+24C];TCustomForm.FModalResult:TModalResult
 004EEE47    mov         dword ptr [ebp-8],eax
 004EEE4A    push        0
 004EEE4C    push        0
 004EEE4E    push        0B001
 004EEE53    mov         eax,dword ptr [ebp-4]
 004EEE56    call        TWinControl.GetHandle
 004EEE5B    push        eax
 004EEE5C    call        user32.SendMessageA
 004EEE61    mov         eax,dword ptr [ebp-4]
 004EEE64    call        TWinControl.GetHandle
 004EEE69    mov         ebx,eax
 004EEE6B    call        user32.GetActiveWindow
 004EEE70    cmp         ebx,eax
>004EEE72    je          004EEE79
 004EEE74    xor         eax,eax
 004EEE76    mov         dword ptr [ebp-1C],eax
 004EEE79    xor         eax,eax
 004EEE7B    pop         edx
 004EEE7C    pop         ecx
 004EEE7D    pop         ecx
 004EEE7E    mov         dword ptr fs:[eax],edx
 004EEE81    push        4EEE96
 004EEE86    mov         eax,dword ptr [ebp-4]
 004EEE89    call        004EEBC4
 004EEE8E    ret
>004EEE8F    jmp         @HandleFinally
>004EEE94    jmp         004EEE86
 004EEE96    xor         eax,eax
 004EEE98    pop         edx
 004EEE99    pop         ecx
 004EEE9A    pop         ecx
 004EEE9B    mov         dword ptr fs:[eax],edx
 004EEE9E    push        4EEF45
 004EEEA3    mov         eax,[0055DE50];Screen:TScreen
 004EEEA8    mov         eax,dword ptr [eax+48]
 004EEEAB    cmp         eax,dword ptr [ebp-18]
>004EEEAE    jne         004EEEC0
 004EEEB0    mov         dx,word ptr [ebp-12]
 004EEEB4    mov         eax,[0055DE50];Screen:TScreen
 004EEEB9    call        004F07EC
>004EEEBE    jmp         004EEECC
 004EEEC0    xor         edx,edx
 004EEEC2    mov         eax,[0055DE50];Screen:TScreen
 004EEEC7    call        004F07EC
 004EEECC    mov         eax,dword ptr [ebp-0C]
 004EEECF    call        004E7A90
 004EEED4    mov         eax,[0055DE50];Screen:TScreen
 004EEED9    mov         eax,dword ptr [eax+7C]
 004EEEDC    cmp         dword ptr [eax+8],0
>004EEEE0    jle         004EEF0F
 004EEEE2    mov         eax,[0055DE50];Screen:TScreen
 004EEEE7    mov         eax,dword ptr [eax+7C]
 004EEEEA    call        004787D0
 004EEEEF    mov         edx,dword ptr ds:[55DE50];Screen:TScreen
 004EEEF5    mov         dword ptr [edx+78],eax
 004EEEF8    mov         eax,[0055DE50];Screen:TScreen
 004EEEFD    mov         edx,dword ptr [eax+78]
 004EEF00    mov         eax,[0055DE50];Screen:TScreen
 004EEF05    mov         eax,dword ptr [eax+7C]
 004EEF08    call        00478AC4
>004EEF0D    jmp         004EEF19
 004EEF0F    mov         eax,[0055DE50];Screen:TScreen
 004EEF14    xor         edx,edx
 004EEF16    mov         dword ptr [eax+78],edx
 004EEF19    cmp         dword ptr [ebp-1C],0
>004EEF1D    je          004EEF28
 004EEF1F    mov         eax,dword ptr [ebp-1C]
 004EEF22    push        eax
 004EEF23    call        user32.SetActiveWindow
 004EEF28    mov         eax,dword ptr [ebp-10]
 004EEF2B    mov         [005418CC],eax;gvar_005418CC
 004EEF30    mov         eax,dword ptr [ebp-4]
 004EEF33    and         byte ptr [eax+2F4],0F7;TCustomForm.FFormState:TFormState
 004EEF3A    ret
>004EEF3B    jmp         @HandleFinally
>004EEF40    jmp         004EEEA3
 004EEF45    xor         eax,eax
 004EEF47    pop         edx
 004EEF48    pop         ecx
 004EEF49    pop         ecx
 004EEF4A    mov         dword ptr fs:[eax],edx
 004EEF4D    push        4EEF64
 004EEF52    mov         eax,[0055DE4C];Application:TApplication
 004EEF57    call        004F1B84
 004EEF5C    ret
>004EEF5D    jmp         @HandleFinally
>004EEF62    jmp         004EEF52
 004EEF64    xor         eax,eax
 004EEF66    pop         edx
 004EEF67    pop         ecx
 004EEF68    pop         ecx
 004EEF69    mov         dword ptr fs:[eax],edx
 004EEF6C    push        4EEF81
 004EEF71    lea         eax,[ebp-20]
 004EEF74    call        @LStrClr
 004EEF79    ret
>004EEF7A    jmp         @HandleFinally
>004EEF7F    jmp         004EEF71
 004EEF81    mov         eax,dword ptr [ebp-8]
 004EEF84    pop         ebx
 004EEF85    mov         esp,ebp
 004EEF87    pop         ebp
 004EEF88    ret
end;*}

//004EEF8C
{*procedure sub_004EEF8C(?:TCustomForm; ?:?);
begin
 004EEF8C    push        ebp
 004EEF8D    mov         ebp,esp
 004EEF8F    add         esp,0FFFFFFF0
 004EEF92    mov         dword ptr [ebp-4],eax
 004EEF95    mov         eax,dword ptr [ebp-4]
 004EEF98    cmp         byte ptr [eax+1A6],0
>004EEF9F    je          004EF008
 004EEFA1    mov         eax,dword ptr [ebp-4]
 004EEFA4    call        004CF618
 004EEFA9    dec         eax
 004EEFAA    test        eax,eax
>004EEFAC    jl          004EF008
 004EEFAE    inc         eax
 004EEFAF    mov         dword ptr [ebp-10],eax
 004EEFB2    mov         dword ptr [ebp-8],0
 004EEFB9    mov         edx,dword ptr [ebp-8]
 004EEFBC    mov         eax,dword ptr [ebp-4]
 004EEFBF    call        004CF5AC
 004EEFC4    mov         dword ptr [ebp-0C],eax
 004EEFC7    mov         eax,dword ptr [ebp-0C]
 004EEFCA    test        byte ptr [eax+51],80
>004EEFCE    je          004EEFE1
 004EEFD0    mov         eax,dword ptr [ebp-0C]
 004EEFD3    cmp         byte ptr [eax+57],0
>004EEFD7    je          004EEFE1
 004EEFD9    mov         eax,dword ptr [ebp-0C]
 004EEFDC    mov         edx,dword ptr [eax]
 004EEFDE    call        dword ptr [edx+78]
 004EEFE1    mov         eax,dword ptr [ebp-0C]
 004EEFE4    mov         edx,dword ptr ds:[4C5E58];TWinControl
 004EEFEA    call        @IsClass
 004EEFEF    test        al,al
>004EEFF1    je          004EF000
 004EEFF3    mov         eax,dword ptr [ebp+8]
 004EEFF6    push        eax
 004EEFF7    mov         eax,dword ptr [ebp-0C]
 004EEFFA    call        004EEF8C
 004EEFFF    pop         ecx
 004EF000    inc         dword ptr [ebp-8]
 004EF003    dec         dword ptr [ebp-10]
>004EF006    jne         004EEFB9
 004EF008    mov         esp,ebp
 004EF00A    pop         ebp
 004EF00B    ret
end;*}

//004EF00C
procedure sub_004EF00C;
begin
{*
 004EF00C    push        ebp
 004EF00D    mov         ebp,esp
 004EF00F    add         esp,0FFFFFFF0
 004EF012    mov         dword ptr [ebp-4],eax
 004EF015    mov         eax,dword ptr [ebp-4]
 004EF018    test        byte ptr [eax+1C],10;TCustomForm.FComponentState:TComponentState
>004EF01C    jne         004EF099
 004EF01E    mov         eax,dword ptr [ebp-4]
 004EF021    cmp         byte ptr [eax+1A6],0;TCustomForm.FShowing:Boolean
>004EF028    je          004EF099
 004EF02A    mov         eax,dword ptr [ebp-4]
 004EF02D    mov         edx,dword ptr [eax]
 004EF02F    call        dword ptr [edx+78];TCustomForm.sub_004CDFD8
 004EF032    mov         eax,dword ptr [ebp-4]
 004EF035    cmp         dword ptr [eax+248],0;TCustomForm.FMenu:TMainMenu
>004EF03C    je          004EF08F
 004EF03E    mov         eax,dword ptr [ebp-4]
 004EF041    mov         eax,dword ptr [eax+248];TCustomForm.FMenu:TMainMenu
 004EF047    mov         eax,dword ptr [eax+34];TMainMenu.Items:TMenuItem
 004EF04A    call        004E1FAC
 004EF04F    dec         eax
 004EF050    test        eax,eax
>004EF052    jl          004EF08F
 004EF054    inc         eax
 004EF055    mov         dword ptr [ebp-0C],eax
 004EF058    mov         dword ptr [ebp-8],0
 004EF05F    mov         eax,dword ptr [ebp-4]
 004EF062    mov         eax,dword ptr [eax+248];TCustomForm.FMenu:TMainMenu
 004EF068    mov         eax,dword ptr [eax+34];TMainMenu.Items:TMenuItem
 004EF06B    mov         edx,dword ptr [ebp-8]
 004EF06E    call        004E1FD8
 004EF073    mov         dword ptr [ebp-10],eax
 004EF076    mov         eax,dword ptr [ebp-10]
 004EF079    cmp         byte ptr [eax+3E],0
>004EF07D    je          004EF087
 004EF07F    mov         eax,dword ptr [ebp-10]
 004EF082    mov         edx,dword ptr [eax]
 004EF084    call        dword ptr [edx+40]
 004EF087    inc         dword ptr [ebp-8]
 004EF08A    dec         dword ptr [ebp-0C]
>004EF08D    jne         004EF05F
 004EF08F    push        ebp
 004EF090    mov         eax,dword ptr [ebp-4]
 004EF093    call        004EEF8C
 004EF098    pop         ecx
 004EF099    mov         esp,ebp
 004EF09B    pop         ebp
 004EF09C    ret
*}
end;

//004EF0A0
procedure TCustomForm.sub_004C9ED8;
begin
{*
 004EF0A0    push        ebp
 004EF0A1    mov         ebp,esp
 004EF0A3    push        ecx
 004EF0A4    mov         dword ptr [ebp-4],eax
 004EF0A7    mov         eax,dword ptr [ebp-4]
 004EF0AA    cmp         dword ptr [eax+30],0;TCustomForm.FParent:TWinControl
>004EF0AE    jne         004EF0C0
 004EF0B0    mov         edx,dword ptr [ebp-4]
 004EF0B3    mov         eax,[0055DE50];Screen:TScreen
 004EF0B8    call        004F0F80
 004EF0BD    pop         ecx
 004EF0BE    pop         ebp
 004EF0BF    ret
 004EF0C0    mov         eax,dword ptr [ebp-4]
 004EF0C3    call        TControl.sub_004C9ED8
 004EF0C8    pop         ecx
 004EF0C9    pop         ebp
 004EF0CA    ret
*}
end;

//004EF0CC
{*procedure TCustomForm.WMSettingChange(?:?);
begin
 004EF0CC    push        ebp
 004EF0CD    mov         ebp,esp
 004EF0CF    add         esp,0FFFFFFF8
 004EF0D2    push        esi
 004EF0D3    mov         dword ptr [ebp-8],edx
 004EF0D6    mov         dword ptr [ebp-4],eax
 004EF0D9    mov         edx,dword ptr [ebp-8]
 004EF0DC    mov         eax,dword ptr [ebp-4]
 004EF0DF    call        TWinControl.WMSettingChange
 004EF0E4    mov         eax,dword ptr [ebp-8]
 004EF0E7    cmp         dword ptr [eax+4],2F
>004EF0EB    jne         004EF0F9
 004EF0ED    mov         eax,dword ptr [ebp-4]
 004EF0F0    mov         si,0FFD0
 004EF0F4    call        @CallDynaInst;TCustomForm.sub_004C9ED8
 004EF0F9    pop         esi
 004EF0FA    pop         ecx
 004EF0FB    pop         ecx
 004EF0FC    pop         ebp
 004EF0FD    ret
end;*}

//004EF100
{*function sub_004EF100(?:TWinControl; ?:?):?;
begin
 004EF100    push        ebp
 004EF101    mov         ebp,esp
 004EF103    add         esp,0FFFFFFF8
 004EF106    push        esi
 004EF107    mov         dword ptr [ebp-4],eax
 004EF10A    cmp         dword ptr [ebp-4],0
>004EF10E    je          004EF129
 004EF110    mov         eax,dword ptr [ebp+8]
 004EF113    mov         edx,dword ptr [eax-4]
 004EF116    mov         edx,dword ptr [edx+8]
 004EF119    mov         eax,dword ptr [ebp-4]
 004EF11C    mov         si,0FFF3
 004EF120    call        @CallDynaInst
 004EF125    test        al,al
>004EF127    jne         004EF12D
 004EF129    xor         eax,eax
>004EF12B    jmp         004EF12F
 004EF12D    mov         al,1
 004EF12F    mov         byte ptr [ebp-5],al
 004EF132    mov         al,byte ptr [ebp-5]
 004EF135    pop         esi
 004EF136    pop         ecx
 004EF137    pop         ecx
 004EF138    pop         ebp
 004EF139    ret
end;*}

//004EF13C
{*function sub_004EF13C(?:TCustomForm; ?:?):?;
begin
 004EF13C    push        ebp
 004EF13D    mov         ebp,esp
 004EF13F    add         esp,0FFFFFFEC
 004EF142    mov         dword ptr [ebp-4],eax
 004EF145    mov         eax,dword ptr [ebp-4]
 004EF148    cmp         byte ptr [eax+1A6],0
>004EF14F    je          004EF1C2
 004EF151    mov         eax,dword ptr [ebp-4]
 004EF154    call        004CF618
 004EF159    dec         eax
 004EF15A    test        eax,eax
>004EF15C    jl          004EF1C2
 004EF15E    inc         eax
 004EF15F    mov         dword ptr [ebp-14],eax
 004EF162    mov         dword ptr [ebp-0C],0
 004EF169    mov         edx,dword ptr [ebp-0C]
 004EF16C    mov         eax,dword ptr [ebp-4]
 004EF16F    call        004CF5AC
 004EF174    mov         dword ptr [ebp-10],eax
 004EF177    mov         eax,dword ptr [ebp-10]
 004EF17A    cmp         byte ptr [eax+57],0
>004EF17E    je          004EF191
 004EF180    mov         eax,dword ptr [ebp+8]
 004EF183    push        eax
 004EF184    mov         eax,dword ptr [ebp-10]
 004EF187    call        004EF100
 004EF18C    pop         ecx
 004EF18D    test        al,al
>004EF18F    jne         004EF1B4
 004EF191    mov         eax,dword ptr [ebp-10]
 004EF194    mov         edx,dword ptr ds:[4C5E58];TWinControl
 004EF19A    call        @IsClass
 004EF19F    test        al,al
>004EF1A1    je          004EF1BA
 004EF1A3    mov         eax,dword ptr [ebp+8]
 004EF1A6    push        eax
 004EF1A7    mov         eax,dword ptr [ebp-10]
 004EF1AA    call        004EF13C
 004EF1AF    pop         ecx
 004EF1B0    test        al,al
>004EF1B2    je          004EF1BA
 004EF1B4    mov         byte ptr [ebp-5],1
>004EF1B8    jmp         004EF1C6
 004EF1BA    inc         dword ptr [ebp-0C]
 004EF1BD    dec         dword ptr [ebp-14]
>004EF1C0    jne         004EF169
 004EF1C2    mov         byte ptr [ebp-5],0
 004EF1C6    mov         al,byte ptr [ebp-5]
 004EF1C9    mov         esp,ebp
 004EF1CB    pop         ebp
 004EF1CC    ret
end;*}

//004EF1D0
{*procedure TCustomForm.CMActionExecute(?:?);
begin
 004EF1D0    push        ebp
 004EF1D1    mov         ebp,esp
 004EF1D3    add         esp,0FFFFFFF8
 004EF1D6    mov         dword ptr [ebp-4],edx
 004EF1D9    mov         dword ptr [ebp-8],eax
 004EF1DC    mov         eax,dword ptr [ebp-8]
 004EF1DF    test        byte ptr [eax+1C],10;TCustomForm.FComponentState:TComponentState
>004EF1E3    jne         004EF22B
 004EF1E5    mov         eax,dword ptr [ebp-8]
 004EF1E8    cmp         byte ptr [eax+1A6],0;TCustomForm.FShowing:Boolean
>004EF1EF    je          004EF22B
 004EF1F1    push        ebp
 004EF1F2    mov         eax,dword ptr [ebp-8]
 004EF1F5    mov         eax,dword ptr [eax+220];TCustomForm.FActiveControl:TWinControl
 004EF1FB    call        004EF100
 004EF200    pop         ecx
 004EF201    test        al,al
>004EF203    jne         004EF221
 004EF205    push        ebp
 004EF206    mov         eax,dword ptr [ebp-8]
 004EF209    call        004EF100
 004EF20E    pop         ecx
 004EF20F    test        al,al
>004EF211    jne         004EF221
 004EF213    push        ebp
 004EF214    mov         eax,dword ptr [ebp-8]
 004EF217    call        004EF13C
 004EF21C    pop         ecx
 004EF21D    test        al,al
>004EF21F    je          004EF22B
 004EF221    mov         eax,dword ptr [ebp-4]
 004EF224    mov         dword ptr [eax+0C],1
 004EF22B    pop         ecx
 004EF22C    pop         ecx
 004EF22D    pop         ebp
 004EF22E    ret
end;*}

//004EF230
{*function sub_004EF230(?:TWinControl; ?:?):?;
begin
 004EF230    push        ebp
 004EF231    mov         ebp,esp
 004EF233    add         esp,0FFFFFFF8
 004EF236    push        esi
 004EF237    mov         dword ptr [ebp-4],eax
 004EF23A    cmp         dword ptr [ebp-4],0
>004EF23E    je          004EF259
 004EF240    mov         eax,dword ptr [ebp+8]
 004EF243    mov         edx,dword ptr [eax-4]
 004EF246    mov         edx,dword ptr [edx+8]
 004EF249    mov         eax,dword ptr [ebp-4]
 004EF24C    mov         si,0FFF0
 004EF250    call        @CallDynaInst
 004EF255    test        al,al
>004EF257    jne         004EF25D
 004EF259    xor         eax,eax
>004EF25B    jmp         004EF25F
 004EF25D    mov         al,1
 004EF25F    mov         byte ptr [ebp-5],al
 004EF262    mov         al,byte ptr [ebp-5]
 004EF265    pop         esi
 004EF266    pop         ecx
 004EF267    pop         ecx
 004EF268    pop         ebp
 004EF269    ret
end;*}

//004EF26C
{*function sub_004EF26C(?:TCustomForm; ?:?):?;
begin
 004EF26C    push        ebp
 004EF26D    mov         ebp,esp
 004EF26F    add         esp,0FFFFFFEC
 004EF272    mov         dword ptr [ebp-4],eax
 004EF275    mov         eax,dword ptr [ebp-4]
 004EF278    cmp         byte ptr [eax+1A6],0
>004EF27F    je          004EF2F2
 004EF281    mov         eax,dword ptr [ebp-4]
 004EF284    call        004CF618
 004EF289    dec         eax
 004EF28A    test        eax,eax
>004EF28C    jl          004EF2F2
 004EF28E    inc         eax
 004EF28F    mov         dword ptr [ebp-14],eax
 004EF292    mov         dword ptr [ebp-0C],0
 004EF299    mov         edx,dword ptr [ebp-0C]
 004EF29C    mov         eax,dword ptr [ebp-4]
 004EF29F    call        004CF5AC
 004EF2A4    mov         dword ptr [ebp-10],eax
 004EF2A7    mov         eax,dword ptr [ebp-10]
 004EF2AA    cmp         byte ptr [eax+57],0
>004EF2AE    je          004EF2C1
 004EF2B0    mov         eax,dword ptr [ebp+8]
 004EF2B3    push        eax
 004EF2B4    mov         eax,dword ptr [ebp-10]
 004EF2B7    call        004EF230
 004EF2BC    pop         ecx
 004EF2BD    test        al,al
>004EF2BF    jne         004EF2E4
 004EF2C1    mov         eax,dword ptr [ebp-10]
 004EF2C4    mov         edx,dword ptr ds:[4C5E58];TWinControl
 004EF2CA    call        @IsClass
 004EF2CF    test        al,al
>004EF2D1    je          004EF2EA
 004EF2D3    mov         eax,dword ptr [ebp+8]
 004EF2D6    push        eax
 004EF2D7    mov         eax,dword ptr [ebp-10]
 004EF2DA    call        004EF26C
 004EF2DF    pop         ecx
 004EF2E0    test        al,al
>004EF2E2    je          004EF2EA
 004EF2E4    mov         byte ptr [ebp-5],1
>004EF2E8    jmp         004EF2F6
 004EF2EA    inc         dword ptr [ebp-0C]
 004EF2ED    dec         dword ptr [ebp-14]
>004EF2F0    jne         004EF299
 004EF2F2    mov         byte ptr [ebp-5],0
 004EF2F6    mov         al,byte ptr [ebp-5]
 004EF2F9    mov         esp,ebp
 004EF2FB    pop         ebp
 004EF2FC    ret
end;*}

//004EF300
{*procedure TCustomForm.CMActionUpdate(?:?);
begin
 004EF300    push        ebp
 004EF301    mov         ebp,esp
 004EF303    add         esp,0FFFFFFF8
 004EF306    mov         dword ptr [ebp-4],edx
 004EF309    mov         dword ptr [ebp-8],eax
 004EF30C    mov         eax,dword ptr [ebp-8]
 004EF30F    test        byte ptr [eax+1C],10;TCustomForm.FComponentState:TComponentState
>004EF313    jne         004EF35B
 004EF315    mov         eax,dword ptr [ebp-8]
 004EF318    cmp         byte ptr [eax+1A6],0;TCustomForm.FShowing:Boolean
>004EF31F    je          004EF35B
 004EF321    push        ebp
 004EF322    mov         eax,dword ptr [ebp-8]
 004EF325    mov         eax,dword ptr [eax+220];TCustomForm.FActiveControl:TWinControl
 004EF32B    call        004EF230
 004EF330    pop         ecx
 004EF331    test        al,al
>004EF333    jne         004EF351
 004EF335    push        ebp
 004EF336    mov         eax,dword ptr [ebp-8]
 004EF339    call        004EF230
 004EF33E    pop         ecx
 004EF33F    test        al,al
>004EF341    jne         004EF351
 004EF343    push        ebp
 004EF344    mov         eax,dword ptr [ebp-8]
 004EF347    call        004EF26C
 004EF34C    pop         ecx
 004EF34D    test        al,al
>004EF34F    je          004EF35B
 004EF351    mov         eax,dword ptr [ebp-4]
 004EF354    mov         dword ptr [eax+0C],1
 004EF35B    pop         ecx
 004EF35C    pop         ecx
 004EF35D    pop         ebp
 004EF35E    ret
end;*}

//004EF360
{*function sub_004EF360(?:?):?;
begin
 004EF360    push        ebp
 004EF361    mov         ebp,esp
 004EF363    add         esp,0FFFFFFF4
 004EF366    mov         eax,dword ptr [ebp+8]
 004EF369    mov         eax,dword ptr [eax-4]
 004EF36C    cmp         dword ptr [eax+2F0],0
>004EF373    je          004EF3C5
 004EF375    mov         eax,dword ptr [ebp+8]
 004EF378    mov         eax,dword ptr [eax-4]
 004EF37B    mov         eax,dword ptr [eax+2F0]
 004EF381    mov         eax,dword ptr [eax+8]
 004EF384    dec         eax
 004EF385    test        eax,eax
>004EF387    jl          004EF3C5
 004EF389    inc         eax
 004EF38A    mov         dword ptr [ebp-0C],eax
 004EF38D    mov         dword ptr [ebp-8],0
 004EF394    mov         eax,dword ptr [ebp+8]
 004EF397    mov         eax,dword ptr [eax-4]
 004EF39A    mov         eax,dword ptr [eax+2F0]
 004EF3A0    mov         edx,dword ptr [ebp-8]
 004EF3A3    call        TList.Get
 004EF3A8    mov         edx,dword ptr [ebp+8]
 004EF3AB    mov         edx,dword ptr [edx-8]
 004EF3AE    call        004DAFC4
 004EF3B3    test        al,al
>004EF3B5    je          004EF3BD
 004EF3B7    mov         byte ptr [ebp-1],1
>004EF3BB    jmp         004EF3C9
 004EF3BD    inc         dword ptr [ebp-8]
 004EF3C0    dec         dword ptr [ebp-0C]
>004EF3C3    jne         004EF394
 004EF3C5    mov         byte ptr [ebp-1],0
 004EF3C9    mov         al,byte ptr [ebp-1]
 004EF3CC    mov         esp,ebp
 004EF3CE    pop         ebp
 004EF3CF    ret
end;*}

//004EF3D0
{*procedure TCustomForm.sub_004EF3D0(?:?);
begin
 004EF3D0    push        ebp
 004EF3D1    mov         ebp,esp
 004EF3D3    add         esp,0FFFFFFF4
 004EF3D6    push        ebx
 004EF3D7    push        esi
 004EF3D8    mov         dword ptr [ebp-8],edx
 004EF3DB    mov         dword ptr [ebp-4],eax
 004EF3DE    mov         byte ptr [ebp-9],0
 004EF3E2    mov         eax,dword ptr [ebp-4]
 004EF3E5    cmp         word ptr [eax+2C2],0;TCustomForm.?f2C2:word
>004EF3ED    je          004EF404
 004EF3EF    lea         ecx,[ebp-9]
 004EF3F2    mov         edx,dword ptr [ebp-8]
 004EF3F5    mov         ebx,dword ptr [ebp-4]
 004EF3F8    mov         eax,dword ptr [ebx+2C4];TCustomForm.?f2C4:dword
 004EF3FE    call        dword ptr [ebx+2C0];TCustomForm.FOnShortCut
 004EF404    cmp         byte ptr [ebp-9],0
>004EF408    jne         004EF44D
 004EF40A    mov         eax,dword ptr [ebp-4]
 004EF40D    cmp         dword ptr [eax+248],0;TCustomForm.FMenu:TMainMenu
>004EF414    je          004EF43E
 004EF416    mov         eax,dword ptr [ebp-4]
 004EF419    mov         eax,dword ptr [eax+248];TCustomForm.FMenu:TMainMenu
 004EF41F    cmp         dword ptr [eax+38],0;TMainMenu.FWindowHandle:HWND
>004EF423    je          004EF43E
 004EF425    mov         edx,dword ptr [ebp-8]
 004EF428    mov         eax,dword ptr [ebp-4]
 004EF42B    mov         eax,dword ptr [eax+248];TCustomForm.FMenu:TMainMenu
 004EF431    mov         si,0FFEF
 004EF435    call        @CallDynaInst;TMenu.sub_004E3F08
 004EF43A    test        al,al
>004EF43C    jne         004EF44D
 004EF43E    push        ebp
 004EF43F    call        004EF360
 004EF444    pop         ecx
 004EF445    test        al,al
>004EF447    jne         004EF44D
 004EF449    xor         eax,eax
>004EF44B    jmp         004EF44F
 004EF44D    mov         al,1
 004EF44F    mov         byte ptr [ebp-9],al
 004EF452    mov         al,byte ptr [ebp-9]
 004EF455    pop         esi
 004EF456    pop         ebx
 004EF457    mov         esp,ebp
 004EF459    pop         ebp
 004EF45A    ret
end;*}

//004EF45C
{*function sub_004EF45C(?:?; ?:?):?;
begin
 004EF45C    push        ebp
 004EF45D    mov         ebp,esp
 004EF45F    push        ecx
 004EF460    mov         eax,dword ptr [ebp+8]
 004EF463    cmp         dword ptr [eax+250],0
>004EF46A    je          004EF486
 004EF46C    mov         eax,dword ptr [ebp+10]
 004EF46F    push        eax
 004EF470    mov         eax,dword ptr [ebp+0C]
 004EF473    push        eax
 004EF474    mov         eax,dword ptr [ebp+8]
 004EF477    mov         eax,dword ptr [eax+250]
 004EF47D    push        eax
 004EF47E    mov         eax,dword ptr [eax]
 004EF480    call        dword ptr [eax]
 004EF482    test        eax,eax
>004EF484    je          004EF49C
 004EF486    mov         eax,dword ptr [ebp+10]
 004EF489    push        eax
 004EF48A    mov         eax,dword ptr [ebp+0C]
 004EF48D    push        eax
 004EF48E    mov         eax,dword ptr [ebp+8]
 004EF491    push        eax
 004EF492    call        00483AD8
 004EF497    mov         dword ptr [ebp-4],eax
>004EF49A    jmp         004EF4A1
 004EF49C    xor         eax,eax
 004EF49E    mov         dword ptr [ebp-4],eax
 004EF4A1    mov         eax,dword ptr [ebp-4]
 004EF4A4    pop         ecx
 004EF4A5    pop         ebp
 004EF4A6    ret         0C
end;*}

//004EF4AC
{*procedure TCustomForm.sub_004CB70C(?:?);
begin
 004EF4AC    push        ebp
 004EF4AD    mov         ebp,esp
 004EF4AF    add         esp,0FFFFFFF8
 004EF4B2    mov         dword ptr [ebp-8],edx
 004EF4B5    mov         dword ptr [ebp-4],eax
 004EF4B8    mov         eax,dword ptr [ebp-4]
 004EF4BB    cmp         dword ptr [eax+224],0;TCustomForm.FFocusedControl:TWinControl
>004EF4C2    je          004EF4EC
 004EF4C4    mov         eax,dword ptr [ebp-8]
 004EF4C7    mov         eax,dword ptr [eax+8]
 004EF4CA    push        eax
 004EF4CB    mov         ecx,dword ptr [ebp-8]
 004EF4CE    mov         ecx,dword ptr [ecx+4]
 004EF4D1    mov         edx,0B043
 004EF4D6    mov         eax,dword ptr [ebp-4]
 004EF4D9    mov         eax,dword ptr [eax+224];TCustomForm.FFocusedControl:TWinControl
 004EF4DF    call        004CC7DC
 004EF4E4    mov         edx,dword ptr [ebp-8]
 004EF4E7    mov         dword ptr [edx+0C],eax
>004EF4EA    jmp         004EF4F7
 004EF4EC    mov         edx,dword ptr [ebp-8]
 004EF4EF    mov         eax,dword ptr [ebp-4]
 004EF4F2    call        TControl.sub_004CB70C
 004EF4F7    pop         ecx
 004EF4F8    pop         ecx
 004EF4F9    pop         ebp
 004EF4FA    ret
end;*}

//004EF4FC
procedure TCustomForm.sub_004EF4FC;
begin
{*
 004EF4FC    push        ebp
 004EF4FD    mov         ebp,esp
 004EF4FF    add         esp,0FFFFFFF8
 004EF502    mov         dword ptr [ebp-4],eax
 004EF505    mov         edx,dword ptr [ebp-4]
 004EF508    mov         eax,[0055DE4C];Application:TApplication
 004EF50D    call        TApplication.HandleException
 004EF512    mov         byte ptr [ebp-5],1
 004EF516    mov         al,byte ptr [ebp-5]
 004EF519    pop         ecx
 004EF51A    pop         ecx
 004EF51B    pop         ebp
 004EF51C    ret
*}
end;

//004EF520
procedure sub_004EF520(?:TCustomForm);
begin
{*
 004EF520    push        ebp
 004EF521    mov         ebp,esp
 004EF523    add         esp,0FFFFFFF8
 004EF526    mov         dword ptr [ebp-4],eax
 004EF529    mov         eax,dword ptr [ebp-4]
 004EF52C    test        byte ptr [eax+1C],10;TCustomForm.FComponentState:TComponentState
>004EF530    jne         004EF615
 004EF536    cmp         dword ptr ds:[5418C4],0;gvar_005418C4
>004EF53D    je          004EF615
 004EF543    mov         eax,dword ptr [ebp-4]
 004EF546    call        TWinControl.HandleAllocated
 004EF54B    test        al,al
>004EF54D    je          004EF615
 004EF553    push        0EC
 004EF555    mov         eax,dword ptr [ebp-4]
 004EF558    call        TWinControl.GetHandle
 004EF55D    push        eax
 004EF55E    call        user32.GetWindowLongA
 004EF563    mov         dword ptr [ebp-8],eax
 004EF566    mov         eax,dword ptr [ebp-4]
 004EF569    cmp         byte ptr [eax+2E0],0;TCustomForm.FAlphaBlend:Boolean
>004EF570    jne         004EF57E
 004EF572    mov         eax,dword ptr [ebp-4]
 004EF575    cmp         byte ptr [eax+2E8],0;TCustomForm.FTransparentColor:Boolean
>004EF57C    je          004EF5E5
 004EF57E    test        byte ptr [ebp-6],8
>004EF582    jne         004EF59D
 004EF584    mov         eax,dword ptr [ebp-8]
 004EF587    or          eax,80000
 004EF58C    push        eax
 004EF58D    push        0EC
 004EF58F    mov         eax,dword ptr [ebp-4]
 004EF592    call        TWinControl.GetHandle
 004EF597    push        eax
 004EF598    call        user32.SetWindowLongA
 004EF59D    mov         eax,dword ptr [ebp-4]
 004EF5A0    movzx       eax,byte ptr [eax+2E0];TCustomForm.FAlphaBlend:Boolean
 004EF5A7    mov         eax,dword ptr [eax*4+541948]
 004EF5AE    mov         edx,dword ptr [ebp-4]
 004EF5B1    movzx       edx,byte ptr [edx+2E8];TCustomForm.FTransparentColor:Boolean
 004EF5B8    or          eax,dword ptr [edx*4+541950]
 004EF5BF    push        eax
 004EF5C0    mov         eax,dword ptr [ebp-4]
 004EF5C3    mov         al,byte ptr [eax+2E1];TCustomForm.FAlphaBlendValue:byte
 004EF5C9    push        eax
 004EF5CA    mov         eax,dword ptr [ebp-4]
 004EF5CD    mov         eax,dword ptr [eax+2EC];TCustomForm.FTransparentColorValue:TColor
 004EF5D3    push        eax
 004EF5D4    mov         eax,dword ptr [ebp-4]
 004EF5D7    call        TWinControl.GetHandle
 004EF5DC    push        eax
 004EF5DD    call        dword ptr ds:[5418C4]
>004EF5E3    jmp         004EF615
 004EF5E5    mov         eax,dword ptr [ebp-8]
 004EF5E8    and         eax,0FFF7FFFF
 004EF5ED    push        eax
 004EF5EE    push        0EC
 004EF5F0    mov         eax,dword ptr [ebp-4]
 004EF5F3    call        TWinControl.GetHandle
 004EF5F8    push        eax
 004EF5F9    call        user32.SetWindowLongA
 004EF5FE    push        485
 004EF603    push        0
 004EF605    push        0
 004EF607    mov         eax,dword ptr [ebp-4]
 004EF60A    call        TWinControl.GetHandle
 004EF60F    push        eax
 004EF610    call        user32.RedrawWindow
 004EF615    pop         ecx
 004EF616    pop         ecx
 004EF617    pop         ebp
 004EF618    ret
*}
end;

//004EF61C
procedure TForm.SetAlphaBlend(Value:Boolean);
begin
{*
 004EF61C    push        ebp
 004EF61D    mov         ebp,esp
 004EF61F    add         esp,0FFFFFFF8
 004EF622    mov         byte ptr [ebp-5],dl
 004EF625    mov         dword ptr [ebp-4],eax
 004EF628    mov         eax,dword ptr [ebp-4]
 004EF62B    mov         al,byte ptr [eax+2E0];TForm.FAlphaBlend:Boolean
 004EF631    cmp         al,byte ptr [ebp-5]
>004EF634    je          004EF64A
 004EF636    mov         al,byte ptr [ebp-5]
 004EF639    mov         edx,dword ptr [ebp-4]
 004EF63C    mov         byte ptr [edx+2E0],al;TForm.FAlphaBlend:Boolean
 004EF642    mov         eax,dword ptr [ebp-4]
 004EF645    call        004EF520
 004EF64A    pop         ecx
 004EF64B    pop         ecx
 004EF64C    pop         ebp
 004EF64D    ret
*}
end;

//004EF650
procedure TForm.SetAlphaBlendValue(Value:Byte);
begin
{*
 004EF650    push        ebp
 004EF651    mov         ebp,esp
 004EF653    add         esp,0FFFFFFF8
 004EF656    mov         byte ptr [ebp-5],dl
 004EF659    mov         dword ptr [ebp-4],eax
 004EF65C    mov         eax,dword ptr [ebp-4]
 004EF65F    mov         al,byte ptr [eax+2E1];TForm.FAlphaBlendValue:byte
 004EF665    cmp         al,byte ptr [ebp-5]
>004EF668    je          004EF67E
 004EF66A    mov         al,byte ptr [ebp-5]
 004EF66D    mov         edx,dword ptr [ebp-4]
 004EF670    mov         byte ptr [edx+2E1],al;TForm.FAlphaBlendValue:byte
 004EF676    mov         eax,dword ptr [ebp-4]
 004EF679    call        004EF520
 004EF67E    pop         ecx
 004EF67F    pop         ecx
 004EF680    pop         ebp
 004EF681    ret
*}
end;

//004EF684
procedure TForm.SetTransparentColorValue(Value:TColor);
begin
{*
 004EF684    push        ebp
 004EF685    mov         ebp,esp
 004EF687    add         esp,0FFFFFFF8
 004EF68A    mov         dword ptr [ebp-8],edx
 004EF68D    mov         dword ptr [ebp-4],eax
 004EF690    mov         eax,dword ptr [ebp-4]
 004EF693    mov         eax,dword ptr [eax+2EC];TForm.FTransparentColorValue:TColor
 004EF699    cmp         eax,dword ptr [ebp-8]
>004EF69C    je          004EF6B2
 004EF69E    mov         eax,dword ptr [ebp-8]
 004EF6A1    mov         edx,dword ptr [ebp-4]
 004EF6A4    mov         dword ptr [edx+2EC],eax;TForm.FTransparentColorValue:TColor
 004EF6AA    mov         eax,dword ptr [ebp-4]
 004EF6AD    call        004EF520
 004EF6B2    pop         ecx
 004EF6B3    pop         ecx
 004EF6B4    pop         ebp
 004EF6B5    ret
*}
end;

//004EF6B8
procedure TForm.SetTransparentColor(Value:Boolean);
begin
{*
 004EF6B8    push        ebp
 004EF6B9    mov         ebp,esp
 004EF6BB    add         esp,0FFFFFFF8
 004EF6BE    mov         byte ptr [ebp-5],dl
 004EF6C1    mov         dword ptr [ebp-4],eax
 004EF6C4    mov         eax,dword ptr [ebp-4]
 004EF6C7    mov         al,byte ptr [eax+2E8];TForm.FTransparentColor:Boolean
 004EF6CD    cmp         al,byte ptr [ebp-5]
>004EF6D0    je          004EF6E6
 004EF6D2    mov         al,byte ptr [ebp-5]
 004EF6D5    mov         edx,dword ptr [ebp-4]
 004EF6D8    mov         byte ptr [edx+2E8],al;TForm.FTransparentColor:Boolean
 004EF6DE    mov         eax,dword ptr [ebp-4]
 004EF6E1    call        004EF520
 004EF6E6    pop         ecx
 004EF6E7    pop         ecx
 004EF6E8    pop         ebp
 004EF6E9    ret
*}
end;

//004EF6EC
{*procedure sub_004EF6EC(?:TCustomForm; ?:?);
begin
 004EF6EC    push        ebp
 004EF6ED    mov         ebp,esp
 004EF6EF    add         esp,0FFFFFFF8
 004EF6F2    mov         dword ptr [ebp-8],edx
 004EF6F5    mov         dword ptr [ebp-4],eax
 004EF6F8    mov         eax,dword ptr [ebp-4]
 004EF6FB    test        byte ptr [eax+1C],10;TCustomForm.FComponentState:TComponentState
>004EF6FF    jne         004EF72C
 004EF701    cmp         dword ptr ds:[5418C4],0;gvar_005418C4
>004EF708    je          004EF72C
 004EF70A    mov         eax,dword ptr [ebp-4]
 004EF70D    cmp         byte ptr [eax+2E0],0;TCustomForm.FAlphaBlend:Boolean
>004EF714    jne         004EF722
 004EF716    mov         eax,dword ptr [ebp-4]
 004EF719    cmp         byte ptr [eax+2E8],0;TCustomForm.FTransparentColor:Boolean
>004EF720    je          004EF72C
 004EF722    mov         eax,dword ptr [ebp-8]
 004EF725    or          dword ptr [eax+8],80000
 004EF72C    pop         ecx
 004EF72D    pop         ecx
 004EF72E    pop         ebp
 004EF72F    ret
end;*}

//004EF730
constructor TCustomDockForm.Create(AOwner:TComponent);
begin
{*
 004EF730    push        ebp
 004EF731    mov         ebp,esp
 004EF733    add         esp,0FFFFFFF4
 004EF736    push        ebx
 004EF737    test        dl,dl
>004EF739    je          004EF743
 004EF73B    add         esp,0FFFFFFF0
 004EF73E    call        @ClassCreate
 004EF743    mov         dword ptr [ebp-0C],ecx
 004EF746    mov         byte ptr [ebp-5],dl
 004EF749    mov         dword ptr [ebp-4],eax
 004EF74C    push        0
 004EF74E    mov         ecx,dword ptr [ebp-0C]
 004EF751    xor         edx,edx
 004EF753    mov         eax,dword ptr [ebp-4]
 004EF756    mov         ebx,dword ptr [eax]
 004EF758    call        dword ptr [ebx+0E0];TCustomDockForm.sub_004E9AB4
 004EF75E    xor         edx,edx
 004EF760    mov         eax,dword ptr [ebp-4]
 004EF763    call        TForm.SetAutoScroll
 004EF768    mov         dl,5
 004EF76A    mov         eax,dword ptr [ebp-4]
 004EF76D    call        TForm.SetBorderStyle
 004EF772    mov         dl,1
 004EF774    mov         eax,dword ptr [ebp-4]
 004EF777    call        TPanel.SetDockSite
 004EF77C    mov         dl,3
 004EF77E    mov         eax,dword ptr [ebp-4]
 004EF781    call        TForm.SetFormStyle
 004EF786    mov         eax,dword ptr [ebp-4]
 004EF789    cmp         byte ptr [ebp-5],0
>004EF78D    je          004EF79E
 004EF78F    call        @AfterConstruction
 004EF794    pop         dword ptr fs:[0]
 004EF79B    add         esp,0C
 004EF79E    mov         eax,dword ptr [ebp-4]
 004EF7A1    pop         ebx
 004EF7A2    mov         esp,ebp
 004EF7A4    pop         ebp
 004EF7A5    ret
*}
end;

//004EF7A8
{*procedure TCustomDockForm.sub_004D19C8(?:?; ?:?);
begin
 004EF7A8    push        ebp
 004EF7A9    mov         ebp,esp
 004EF7AB    add         esp,0FFFFFFE8
 004EF7AE    push        ebx
 004EF7AF    xor         ebx,ebx
 004EF7B1    mov         dword ptr [ebp-10],ebx
 004EF7B4    mov         dword ptr [ebp-0C],ecx
 004EF7B7    mov         dword ptr [ebp-8],edx
 004EF7BA    mov         dword ptr [ebp-4],eax
 004EF7BD    xor         eax,eax
 004EF7BF    push        ebp
 004EF7C0    push        4EF891
 004EF7C5    push        dword ptr fs:[eax]
 004EF7C8    mov         dword ptr fs:[eax],esp
 004EF7CB    mov         eax,dword ptr [ebp-4]
 004EF7CE    call        004D1BE8
 004EF7D3    dec         eax
>004EF7D4    jne         004EF850
 004EF7D6    mov         eax,dword ptr [ebp-8]
 004EF7D9    call        004CAE74
 004EF7DE    mov         ecx,eax
 004EF7E0    inc         ecx
 004EF7E1    lea         eax,[ebp-10]
 004EF7E4    xor         edx,edx
 004EF7E6    call        @LStrFromPCharLen
 004EF7EB    mov         eax,dword ptr [ebp-10]
 004EF7EE    call        @DynArrayLength
 004EF7F3    push        eax
 004EF7F4    mov         eax,dword ptr [ebp-10]
 004EF7F7    call        @LStrToPChar
 004EF7FC    mov         edx,eax
 004EF7FE    mov         eax,dword ptr [ebp-8]
 004EF801    pop         ecx
 004EF802    call        004CAE98
 004EF807    mov         eax,dword ptr [ebp-10]
 004EF80A    call        @DynArrayLength
 004EF80F    test        eax,eax
>004EF811    jle         004EF845
 004EF813    mov         dword ptr [ebp-18],eax
 004EF816    mov         dword ptr [ebp-14],1
 004EF81D    mov         eax,dword ptr [ebp-10]
 004EF820    mov         edx,dword ptr [ebp-14]
 004EF823    mov         al,byte ptr [eax+edx-1]
 004EF827    sub         al,0A
>004EF829    je          004EF82F
 004EF82B    sub         al,3
>004EF82D    jne         004EF83D
 004EF82F    mov         edx,dword ptr [ebp-14]
 004EF832    dec         edx
 004EF833    lea         eax,[ebp-10]
 004EF836    call        @LStrSetLength
>004EF83B    jmp         004EF845
 004EF83D    inc         dword ptr [ebp-14]
 004EF840    dec         dword ptr [ebp-18]
>004EF843    jne         004EF81D
 004EF845    mov         edx,dword ptr [ebp-10]
 004EF848    mov         eax,dword ptr [ebp-4]
 004EF84B    call        TControl.SetText
 004EF850    mov         ecx,dword ptr [ebp-0C]
 004EF853    mov         edx,dword ptr [ebp-8]
 004EF856    mov         eax,dword ptr [ebp-4]
 004EF859    call        TWinControl.sub_004D19C8
 004EF85E    mov         dl,5
 004EF860    mov         eax,dword ptr [ebp-8]
 004EF863    call        TImage.SetAlign
 004EF868    mov         eax,dword ptr [ebp-4]
 004EF86B    test        byte ptr [eax+1C],1;TCustomDockForm.FComponentState:TComponentState
>004EF86F    jne         004EF87B
 004EF871    mov         dl,1
 004EF873    mov         eax,dword ptr [ebp-4]
 004EF876    call        TCustomForm.SetVisible
 004EF87B    xor         eax,eax
 004EF87D    pop         edx
 004EF87E    pop         ecx
 004EF87F    pop         ecx
 004EF880    mov         dword ptr fs:[eax],edx
 004EF883    push        4EF898
 004EF888    lea         eax,[ebp-10]
 004EF88B    call        @LStrClr
 004EF890    ret
>004EF891    jmp         @HandleFinally
>004EF896    jmp         004EF888
 004EF898    pop         ebx
 004EF899    mov         esp,ebp
 004EF89B    pop         ebp
 004EF89C    ret
end;*}

//004EF8A0
{*procedure TCustomDockForm.sub_004D19E8(?:?);
begin
 004EF8A0    push        ebp
 004EF8A1    mov         ebp,esp
 004EF8A3    add         esp,0FFFFFFF8
 004EF8A6    mov         dword ptr [ebp-8],edx
 004EF8A9    mov         dword ptr [ebp-4],eax
 004EF8AC    mov         edx,dword ptr [ebp-8]
 004EF8AF    mov         eax,dword ptr [ebp-4]
 004EF8B2    call        TWinControl.sub_004D19E8
 004EF8B7    mov         eax,dword ptr [ebp-4]
 004EF8BA    call        004D1BE8
 004EF8BF    test        eax,eax
>004EF8C1    jne         004EF8CB
 004EF8C3    mov         eax,dword ptr [ebp-4]
 004EF8C6    call        TCustomForm.Release
 004EF8CB    pop         ecx
 004EF8CC    pop         ecx
 004EF8CD    pop         ebp
 004EF8CE    ret
end;*}

//004EF8D0
procedure TCustomDockForm.Loaded;
begin
{*
 004EF8D0    push        ebp
 004EF8D1    mov         ebp,esp
 004EF8D3    add         esp,0FFFFFFE4
 004EF8D6    push        esi
 004EF8D7    mov         dword ptr [ebp-4],eax
 004EF8DA    mov         eax,dword ptr [ebp-4]
 004EF8DD    call        004CF618
 004EF8E2    dec         eax
 004EF8E3    test        eax,eax
>004EF8E5    jl          004EF921
 004EF8E7    inc         eax
 004EF8E8    mov         dword ptr [ebp-0C],eax
 004EF8EB    mov         dword ptr [ebp-8],0
 004EF8F2    lea         edx,[ebp-1C]
 004EF8F5    mov         eax,dword ptr [ebp-4]
 004EF8F8    mov         ecx,dword ptr [eax]
 004EF8FA    call        dword ptr [ecx+44];TCustomDockForm.sub_004EA700
 004EF8FD    lea         eax,[ebp-1C]
 004EF900    push        eax
 004EF901    mov         edx,dword ptr [ebp-8]
 004EF904    mov         eax,dword ptr [ebp-4]
 004EF907    call        004CF5AC
 004EF90C    mov         edx,dword ptr [ebp-4]
 004EF90F    pop         ecx
 004EF910    mov         si,0FFCC
 004EF914    call        @CallDynaInst
 004EF919    inc         dword ptr [ebp-8]
 004EF91C    dec         dword ptr [ebp-0C]
>004EF91F    jne         004EF8F2
 004EF921    mov         eax,dword ptr [ebp-4]
 004EF924    call        TCustomForm.Loaded
 004EF929    pop         esi
 004EF92A    mov         esp,ebp
 004EF92C    pop         ebp
 004EF92D    ret
*}
end;

//004EF930
{*procedure TCustomDockForm.sub_004D1C58(?:?; ?:?; ?:?; ?:?);
begin
 004EF930    push        ebp
 004EF931    mov         ebp,esp
 004EF933    add         esp,0FFFFFFEC
 004EF936    push        esi
 004EF937    push        edi
 004EF938    mov         esi,dword ptr [ebp+0C]
 004EF93B    lea         edi,[ebp-14]
 004EF93E    movs        dword ptr [edi],dword ptr [esi]
 004EF93F    movs        dword ptr [edi],dword ptr [esi]
 004EF940    mov         dword ptr [ebp-0C],ecx
 004EF943    mov         dword ptr [ebp-8],edx
 004EF946    mov         dword ptr [ebp-4],eax
 004EF949    mov         eax,dword ptr [ebp-4]
 004EF94C    call        004D1BE8
 004EF951    test        eax,eax
 004EF953    mov         eax,dword ptr [ebp+8]
 004EF956    sete        byte ptr [eax]
 004EF959    pop         edi
 004EF95A    pop         esi
 004EF95B    mov         esp,ebp
 004EF95D    pop         ebp
 004EF95E    ret         8
end;*}

//004EF964
{*procedure TCustomDockForm.WMNCHitTest(?:?);
begin
 004EF964    push        ebp
 004EF965    mov         ebp,esp
 004EF967    add         esp,0FFFFFFF8
 004EF96A    mov         dword ptr [ebp-8],edx
 004EF96D    mov         dword ptr [ebp-4],eax
 004EF970    mov         edx,dword ptr [ebp-8]
 004EF973    mov         eax,dword ptr [ebp-4]
 004EF976    call        TWinControl.WMNCHitTest
 004EF97B    mov         eax,dword ptr [ebp-4]
 004EF97E    test        byte ptr [eax+1C],10;TCustomDockForm.FComponentState:TComponentState
>004EF982    jne         004EF997
 004EF984    mov         eax,dword ptr [ebp-8]
 004EF987    cmp         dword ptr [eax+0C],1
>004EF98B    jne         004EF997
 004EF98D    mov         eax,dword ptr [ebp-8]
 004EF990    mov         dword ptr [eax+0C],2
 004EF997    pop         ecx
 004EF998    pop         ecx
 004EF999    pop         ebp
 004EF99A    ret
end;*}

//004EF99C
{*procedure TCustomDockForm.WMNCLButtonDown(?:?);
begin
 004EF99C    push        ebp
 004EF99D    mov         ebp,esp
 004EF99F    add         esp,0FFFFFFF8
 004EF9A2    mov         dword ptr [ebp-8],edx
 004EF9A5    mov         dword ptr [ebp-4],eax
 004EF9A8    mov         eax,dword ptr [ebp-8]
 004EF9AB    cmp         dword ptr [eax+4],2
>004EF9AF    jne         004EFA49
 004EF9B5    mov         eax,dword ptr [ebp-4]
 004EF9B8    cmp         byte ptr [eax+9B],1;TCustomDockForm.FDragKind:TDragKind
>004EF9BF    je          004EFA49
 004EF9C5    mov         eax,dword ptr [ebp-4]
 004EF9C8    test        byte ptr [eax+1C],10;TCustomDockForm.FComponentState:TComponentState
>004EF9CC    jne         004EFA49
 004EF9CE    mov         eax,dword ptr [ebp-4]
 004EF9D1    call        TWinControl.GetHandle
 004EF9D6    push        eax
 004EF9D7    call        user32.IsIconic
 004EF9DC    test        eax,eax
>004EF9DE    jne         004EFA49
 004EF9E0    mov         eax,dword ptr [ebp-4]
 004EF9E3    call        004D1BE8
 004EF9E8    test        eax,eax
>004EF9EA    jle         004EFA49
 004EF9EC    push        7
 004EF9EE    push        0
 004EF9F0    push        0
 004EF9F2    push        0
 004EF9F4    push        0
 004EF9F6    push        0
 004EF9F8    mov         eax,dword ptr [ebp-4]
 004EF9FB    call        TWinControl.GetHandle
 004EFA00    push        eax
 004EFA01    call        user32.SetWindowPos
 004EFA06    mov         eax,dword ptr [ebp-8]
 004EFA09    mov         eax,dword ptr [eax+8]
 004EFA0C    push        eax
 004EFA0D    mov         eax,dword ptr [ebp-8]
 004EFA10    mov         eax,dword ptr [eax+4]
 004EFA13    push        eax
 004EFA14    push        0A2
 004EFA19    mov         eax,dword ptr [ebp-4]
 004EFA1C    call        TWinControl.GetHandle
 004EFA21    push        eax
 004EFA22    call        user32.PostMessageA
 004EFA27    mov         eax,dword ptr [ebp-4]
 004EFA2A    cmp         byte ptr [eax+22E],0;TCustomDockForm.FActive:Boolean
>004EFA31    je          004EFA54
 004EFA33    xor         edx,edx
 004EFA35    mov         eax,dword ptr [ebp-4]
 004EFA38    call        004D1C1C
 004EFA3D    or          ecx,0FFFFFFFF
 004EFA40    mov         dl,1
 004EFA42    call        004CB9C0
>004EFA47    jmp         004EFA54
 004EFA49    mov         edx,dword ptr [ebp-8]
 004EFA4C    mov         eax,dword ptr [ebp-4]
 004EFA4F    call        TCustomForm.WMNCLButtonDown
 004EFA54    pop         ecx
 004EFA55    pop         ecx
 004EFA56    pop         ebp
 004EFA57    ret
end;*}

//004EFA58
{*procedure TCustomDockForm.CMControlLIstChange(?:?);
begin
 004EFA58    push        ebp
 004EFA59    mov         ebp,esp
 004EFA5B    add         esp,0FFFFFFE8
 004EFA5E    push        esi
 004EFA5F    mov         dword ptr [ebp-8],edx
 004EFA62    mov         dword ptr [ebp-4],eax
 004EFA65    mov         edx,dword ptr [ebp-8]
 004EFA68    mov         eax,dword ptr [ebp-4]
 004EFA6B    call        TWinControl.CMControlLIstChange
 004EFA70    mov         eax,dword ptr [ebp-8]
 004EFA73    cmp         dword ptr [eax+8],0
>004EFA77    jne         004EFAC3
 004EFA79    mov         eax,dword ptr [ebp-8]
 004EFA7C    mov         eax,dword ptr [eax+4]
 004EFA7F    push        eax
 004EFA80    xor         ecx,ecx
 004EFA82    mov         edx,0B039
 004EFA87    mov         eax,dword ptr [ebp-4]
 004EFA8A    call        004CC7DC
 004EFA8F    mov         eax,dword ptr [ebp-8]
 004EFA92    mov         eax,dword ptr [eax+4]
 004EFA95    mov         eax,dword ptr [eax+0A0]
 004EFA9B    cmp         eax,dword ptr [ebp-4]
>004EFA9E    jne         004EFAC3
 004EFAA0    lea         edx,[ebp-18]
 004EFAA3    mov         eax,dword ptr [ebp-8]
 004EFAA6    mov         eax,dword ptr [eax+4]
 004EFAA9    call        004CA6AC
 004EFAAE    lea         ecx,[ebp-18]
 004EFAB1    mov         eax,dword ptr [ebp-8]
 004EFAB4    mov         eax,dword ptr [eax+4]
 004EFAB7    or          edx,0FFFFFFFF
 004EFABA    mov         si,0FFCC
 004EFABE    call        @CallDynaInst
 004EFAC3    pop         esi
 004EFAC4    mov         esp,ebp
 004EFAC6    pop         ebp
 004EFAC7    ret
end;*}

//004EFAC8
{*procedure TCustomDockForm.sub_004EFAC8(?:?);
begin
 004EFAC8    push        ebp
 004EFAC9    mov         ebp,esp
 004EFACB    add         esp,0FFFFFFEC
 004EFACE    xor         ecx,ecx
 004EFAD0    mov         dword ptr [ebp-0C],ecx
 004EFAD3    mov         dword ptr [ebp-8],edx
 004EFAD6    mov         dword ptr [ebp-4],eax
 004EFAD9    xor         eax,eax
 004EFADB    push        ebp
 004EFADC    push        4EFBB6
 004EFAE1    push        dword ptr fs:[eax]
 004EFAE4    mov         dword ptr fs:[eax],esp
 004EFAE7    mov         edx,dword ptr [ebp-8]
 004EFAEA    mov         eax,dword ptr [ebp-4]
 004EFAED    mov         ecx,dword ptr [eax]
 004EFAEF    call        dword ptr [ecx-10];TCustomForm.DefaultHandler
 004EFAF2    mov         eax,dword ptr [ebp-8]
 004EFAF5    mov         eax,dword ptr [eax+8]
 004EFAF8    mov         eax,dword ptr [eax]
 004EFAFA    sub         eax,0C
>004EFAFD    je          004EFB20
 004EFAFF    sub         eax,0AFFF
>004EFB04    jne         004EFBA0
 004EFB0A    mov         eax,dword ptr [ebp-8]
 004EFB0D    mov         eax,dword ptr [eax+4]
 004EFB10    mov         dl,byte ptr [eax+57]
 004EFB13    mov         eax,dword ptr [ebp-4]
 004EFB16    call        TCustomForm.SetVisible
>004EFB1B    jmp         004EFBA0
 004EFB20    mov         eax,dword ptr [ebp-8]
 004EFB23    mov         eax,dword ptr [eax+4]
 004EFB26    call        004CAE74
 004EFB2B    mov         ecx,eax
 004EFB2D    inc         ecx
 004EFB2E    lea         eax,[ebp-0C]
 004EFB31    xor         edx,edx
 004EFB33    call        @LStrFromPCharLen
 004EFB38    mov         eax,dword ptr [ebp-0C]
 004EFB3B    call        @DynArrayLength
 004EFB40    push        eax
 004EFB41    mov         eax,dword ptr [ebp-0C]
 004EFB44    call        @LStrToPChar
 004EFB49    mov         edx,eax
 004EFB4B    mov         eax,dword ptr [ebp-8]
 004EFB4E    mov         eax,dword ptr [eax+4]
 004EFB51    pop         ecx
 004EFB52    call        004CAE98
 004EFB57    mov         eax,dword ptr [ebp-0C]
 004EFB5A    call        @DynArrayLength
 004EFB5F    test        eax,eax
>004EFB61    jle         004EFB95
 004EFB63    mov         dword ptr [ebp-14],eax
 004EFB66    mov         dword ptr [ebp-10],1
 004EFB6D    mov         eax,dword ptr [ebp-0C]
 004EFB70    mov         edx,dword ptr [ebp-10]
 004EFB73    mov         al,byte ptr [eax+edx-1]
 004EFB77    sub         al,0A
>004EFB79    je          004EFB7F
 004EFB7B    sub         al,3
>004EFB7D    jne         004EFB8D
 004EFB7F    mov         edx,dword ptr [ebp-10]
 004EFB82    dec         edx
 004EFB83    lea         eax,[ebp-0C]
 004EFB86    call        @LStrSetLength
>004EFB8B    jmp         004EFB95
 004EFB8D    inc         dword ptr [ebp-10]
 004EFB90    dec         dword ptr [ebp-14]
>004EFB93    jne         004EFB6D
 004EFB95    mov         edx,dword ptr [ebp-0C]
 004EFB98    mov         eax,dword ptr [ebp-4]
 004EFB9B    call        TControl.SetText
 004EFBA0    xor         eax,eax
 004EFBA2    pop         edx
 004EFBA3    pop         ecx
 004EFBA4    pop         ecx
 004EFBA5    mov         dword ptr fs:[eax],edx
 004EFBA8    push        4EFBBD
 004EFBAD    lea         eax,[ebp-0C]
 004EFBB0    call        @LStrClr
 004EFBB5    ret
>004EFBB6    jmp         @HandleFinally
>004EFBBB    jmp         004EFBAD
 004EFBBD    mov         esp,ebp
 004EFBBF    pop         ebp
 004EFBC0    ret
end;*}

//004EFBC4
{*procedure TCustomDockForm.CMUndockClient(?:?);
begin
 004EFBC4    push        ebp
 004EFBC5    mov         ebp,esp
 004EFBC7    add         esp,0FFFFFFF8
 004EFBCA    mov         dword ptr [ebp-8],edx
 004EFBCD    mov         dword ptr [ebp-4],eax
 004EFBD0    mov         edx,dword ptr [ebp-8]
 004EFBD3    mov         eax,dword ptr [ebp-4]
 004EFBD6    call        TWinControl.CMUndockClient
 004EFBDB    mov         eax,dword ptr [ebp-8]
 004EFBDE    mov         eax,dword ptr [eax+8]
 004EFBE1    xor         edx,edx
 004EFBE3    call        TImage.SetAlign
 004EFBE8    pop         ecx
 004EFBE9    pop         ecx
 004EFBEA    pop         ebp
 004EFBEB    ret
end;*}

//004EFBEC
{*procedure TCustomDockForm.CMVisibleChanged(?:?);
begin
 004EFBEC    push        ebp
 004EFBED    mov         ebp,esp
 004EFBEF    add         esp,0FFFFFFF0
 004EFBF2    mov         dword ptr [ebp-8],edx
 004EFBF5    mov         dword ptr [ebp-4],eax
 004EFBF8    mov         edx,dword ptr [ebp-8]
 004EFBFB    mov         eax,dword ptr [ebp-4]
 004EFBFE    call        TWinControl.CMVisibleChanged
 004EFC03    mov         eax,dword ptr [ebp-4]
 004EFC06    test        byte ptr [eax+1C],8;TCustomDockForm.FComponentState:TComponentState
>004EFC0A    jne         004EFC42
 004EFC0C    mov         eax,dword ptr [ebp-4]
 004EFC0F    call        004D1BE8
 004EFC14    dec         eax
 004EFC15    test        eax,eax
>004EFC17    jl          004EFC42
 004EFC19    inc         eax
 004EFC1A    mov         dword ptr [ebp-10],eax
 004EFC1D    mov         dword ptr [ebp-0C],0
 004EFC24    mov         edx,dword ptr [ebp-0C]
 004EFC27    mov         eax,dword ptr [ebp-4]
 004EFC2A    call        004D1C1C
 004EFC2F    mov         edx,dword ptr [ebp-4]
 004EFC32    mov         dl,byte ptr [edx+57];TCustomDockForm.FVisible:Boolean
 004EFC35    call        TControl.SetVisible
 004EFC3A    inc         dword ptr [ebp-0C]
 004EFC3D    dec         dword ptr [ebp-10]
>004EFC40    jne         004EFC24
 004EFC42    mov         esp,ebp
 004EFC44    pop         ebp
 004EFC45    ret
end;*}

//004EFC48
{*function sub_004EFC48(?:?):?;
begin
 004EFC48    push        ebp
 004EFC49    mov         ebp,esp
 004EFC4B    add         esp,0FFFFFFE8
 004EFC4E    mov         dword ptr [ebp-4],eax
 004EFC51    lea         edx,[ebp-18]
 004EFC54    mov         eax,dword ptr [ebp-4]
 004EFC57    call        004EFCD8
 004EFC5C    mov         eax,dword ptr [ebp-18]
 004EFC5F    mov         dword ptr [ebp-8],eax
 004EFC62    mov         eax,dword ptr [ebp-8]
 004EFC65    mov         esp,ebp
 004EFC67    pop         ebp
 004EFC68    ret
end;*}

//004EFC6C
{*function sub_004EFC6C(?:?):?;
begin
 004EFC6C    push        ebp
 004EFC6D    mov         ebp,esp
 004EFC6F    add         esp,0FFFFFFE8
 004EFC72    mov         dword ptr [ebp-4],eax
 004EFC75    lea         edx,[ebp-18]
 004EFC78    mov         eax,dword ptr [ebp-4]
 004EFC7B    call        004EFCD8
 004EFC80    mov         eax,dword ptr [ebp-0C]
 004EFC83    sub         eax,dword ptr [ebp-14]
 004EFC86    mov         dword ptr [ebp-8],eax
 004EFC89    mov         eax,dword ptr [ebp-8]
 004EFC8C    mov         esp,ebp
 004EFC8E    pop         ebp
 004EFC8F    ret
end;*}

//004EFC90
{*function sub_004EFC90(?:?):?;
begin
 004EFC90    push        ebp
 004EFC91    mov         ebp,esp
 004EFC93    add         esp,0FFFFFFE8
 004EFC96    mov         dword ptr [ebp-4],eax
 004EFC99    lea         edx,[ebp-18]
 004EFC9C    mov         eax,dword ptr [ebp-4]
 004EFC9F    call        004EFCD8
 004EFCA4    mov         eax,dword ptr [ebp-14]
 004EFCA7    mov         dword ptr [ebp-8],eax
 004EFCAA    mov         eax,dword ptr [ebp-8]
 004EFCAD    mov         esp,ebp
 004EFCAF    pop         ebp
 004EFCB0    ret
end;*}

//004EFCB4
{*function sub_004EFCB4(?:?):?;
begin
 004EFCB4    push        ebp
 004EFCB5    mov         ebp,esp
 004EFCB7    add         esp,0FFFFFFE8
 004EFCBA    mov         dword ptr [ebp-4],eax
 004EFCBD    lea         edx,[ebp-18]
 004EFCC0    mov         eax,dword ptr [ebp-4]
 004EFCC3    call        004EFCD8
 004EFCC8    mov         eax,dword ptr [ebp-10]
 004EFCCB    sub         eax,dword ptr [ebp-18]
 004EFCCE    mov         dword ptr [ebp-8],eax
 004EFCD1    mov         eax,dword ptr [ebp-8]
 004EFCD4    mov         esp,ebp
 004EFCD6    pop         ebp
 004EFCD7    ret
end;*}

//004EFCD8
{*procedure sub_004EFCD8(?:?; ?:?);
begin
 004EFCD8    push        ebp
 004EFCD9    mov         ebp,esp
 004EFCDB    add         esp,0FFFFFFD0
 004EFCDE    push        esi
 004EFCDF    push        edi
 004EFCE0    mov         dword ptr [ebp-8],edx
 004EFCE3    mov         dword ptr [ebp-4],eax
 004EFCE6    mov         dword ptr [ebp-30],28
 004EFCED    lea         eax,[ebp-30]
 004EFCF0    push        eax
 004EFCF1    mov         eax,dword ptr [ebp-4]
 004EFCF4    mov         eax,dword ptr [eax+4]
 004EFCF7    push        eax
 004EFCF8    mov         eax,[0055B294];^gvar_0055DB88
 004EFCFD    mov         eax,dword ptr [eax]
 004EFCFF    call        eax
 004EFD01    mov         eax,dword ptr [ebp-8]
 004EFD04    mov         edi,eax
 004EFD06    lea         esi,[ebp-2C]
 004EFD09    movs        dword ptr [edi],dword ptr [esi]
 004EFD0A    movs        dword ptr [edi],dword ptr [esi]
 004EFD0B    movs        dword ptr [edi],dword ptr [esi]
 004EFD0C    movs        dword ptr [edi],dword ptr [esi]
 004EFD0D    pop         edi
 004EFD0E    pop         esi
 004EFD0F    mov         esp,ebp
 004EFD11    pop         ebp
 004EFD12    ret
end;*}

//004EFD14
{*procedure sub_004EFD14(?:?; ?:TPoint);
begin
 004EFD14    push        ebp
 004EFD15    mov         ebp,esp
 004EFD17    add         esp,0FFFFFFD0
 004EFD1A    push        esi
 004EFD1B    push        edi
 004EFD1C    mov         dword ptr [ebp-8],edx
 004EFD1F    mov         dword ptr [ebp-4],eax
 004EFD22    mov         dword ptr [ebp-30],28
 004EFD29    lea         eax,[ebp-30]
 004EFD2C    push        eax
 004EFD2D    mov         eax,dword ptr [ebp-4]
 004EFD30    mov         eax,dword ptr [eax+4]
 004EFD33    push        eax
 004EFD34    mov         eax,[0055B294];^gvar_0055DB88
 004EFD39    mov         eax,dword ptr [eax]
 004EFD3B    call        eax
 004EFD3D    mov         eax,dword ptr [ebp-8]
 004EFD40    mov         edi,eax
 004EFD42    lea         esi,[ebp-1C]
 004EFD45    movs        dword ptr [edi],dword ptr [esi]
 004EFD46    movs        dword ptr [edi],dword ptr [esi]
 004EFD47    movs        dword ptr [edi],dword ptr [esi]
 004EFD48    movs        dword ptr [edi],dword ptr [esi]
 004EFD49    pop         edi
 004EFD4A    pop         esi
 004EFD4B    mov         esp,ebp
 004EFD4D    pop         ebp
 004EFD4E    ret
end;*}

//004EFD50
constructor sub_004EFD50;
begin
{*
 004EFD50    push        ebp
 004EFD51    mov         ebp,esp
 004EFD53    add         esp,0FFFFFFF0
 004EFD56    test        dl,dl
>004EFD58    je          004EFD62
 004EFD5A    add         esp,0FFFFFFF0
 004EFD5D    call        @ClassCreate
 004EFD62    mov         dword ptr [ebp-0C],ecx
 004EFD65    mov         byte ptr [ebp-5],dl
 004EFD68    mov         dword ptr [ebp-4],eax
 004EFD6B    mov         ecx,dword ptr [ebp-0C]
 004EFD6E    xor         edx,edx
 004EFD70    mov         eax,dword ptr [ebp-4]
 004EFD73    call        00482F04
 004EFD78    mov         eax,[0055B204];^gvar_00540CD0
 004EFD7D    mov         edx,dword ptr [ebp-4]
 004EFD80    mov         dword ptr [eax+4],edx
 004EFD83    mov         dword ptr [eax],4F02C0;sub_004F02C0
 004EFD89    mov         eax,[0055B214];^gvar_00540CD8
 004EFD8E    mov         edx,dword ptr [ebp-4]
 004EFD91    mov         dword ptr [eax+4],edx
 004EFD94    mov         dword ptr [eax],4F02E0;sub_004F02E0
 004EFD9A    mov         eax,dword ptr [ebp-4]
 004EFD9D    call        004F0300
 004EFDA2    push        0
 004EFDA4    call        user32.GetKeyboardLayout
 004EFDA9    mov         edx,dword ptr [ebp-4]
 004EFDAC    mov         dword ptr [edx+3C],eax;TScreen.FDefaultKbLayout:HKL
 004EFDAF    mov         dl,1
 004EFDB1    mov         eax,[004759C0];TList
 004EFDB6    call        TObject.Create;TList.Create
 004EFDBB    mov         edx,dword ptr [ebp-4]
 004EFDBE    mov         dword ptr [edx+4C],eax;TScreen.FForms:TList
 004EFDC1    mov         dl,1
 004EFDC3    mov         eax,[004759C0];TList
 004EFDC8    call        TObject.Create;TList.Create
 004EFDCD    mov         edx,dword ptr [ebp-4]
 004EFDD0    mov         dword ptr [edx+50],eax;TScreen.FCustomForms:TList
 004EFDD3    mov         dl,1
 004EFDD5    mov         eax,[004759C0];TList
 004EFDDA    call        TObject.Create;TList.Create
 004EFDDF    mov         edx,dword ptr [ebp-4]
 004EFDE2    mov         dword ptr [edx+54],eax;TScreen.FDataModules:TList
 004EFDE5    mov         dl,1
 004EFDE7    mov         eax,[004759C0];TList
 004EFDEC    call        TObject.Create;TList.Create
 004EFDF1    mov         edx,dword ptr [ebp-4]
 004EFDF4    mov         dword ptr [edx+58],eax;TScreen.FMonitors:TList
 004EFDF7    mov         dl,1
 004EFDF9    mov         eax,[004759C0];TList
 004EFDFE    call        TObject.Create;TList.Create
 004EFE03    mov         edx,dword ptr [ebp-4]
 004EFE06    mov         dword ptr [edx+7C],eax;TScreen.FSaveFocusedList:TList
 004EFE09    push        0
 004EFE0B    call        user32.GetDC
 004EFE10    mov         dword ptr [ebp-10],eax
 004EFE13    push        5A
 004EFE15    mov         eax,dword ptr [ebp-10]
 004EFE18    push        eax
 004EFE19    call        gdi32.GetDeviceCaps
 004EFE1E    mov         edx,dword ptr [ebp-4]
 004EFE21    mov         dword ptr [edx+40],eax;TScreen.FPixelsPerInch:Integer
 004EFE24    mov         eax,dword ptr [ebp-10]
 004EFE27    push        eax
 004EFE28    push        0
 004EFE2A    call        user32.ReleaseDC
 004EFE2F    mov         eax,dword ptr [ebp-4]
 004EFE32    mov         eax,dword ptr [eax+58];TScreen.FMonitors:TList
 004EFE35    push        eax
 004EFE36    mov         eax,4EB710;sub_004EB710
 004EFE3B    push        eax
 004EFE3C    push        0
 004EFE3E    push        0
 004EFE40    mov         eax,[0055B404];^gvar_0055DB94
 004EFE45    mov         eax,dword ptr [eax]
 004EFE47    call        eax
 004EFE49    mov         dl,1
 004EFE4B    mov         eax,[0048521C];TFont
 004EFE50    call        TFont.Create;TFont.Create
 004EFE55    mov         edx,dword ptr [ebp-4]
 004EFE58    mov         dword ptr [edx+84],eax;TScreen.FIconFont:TFont
 004EFE5E    mov         dl,1
 004EFE60    mov         eax,[0048521C];TFont
 004EFE65    call        TFont.Create;TFont.Create
 004EFE6A    mov         edx,dword ptr [ebp-4]
 004EFE6D    mov         dword ptr [edx+88],eax;TScreen.FMenuFont:TFont
 004EFE73    mov         dl,1
 004EFE75    mov         eax,[0048521C];TFont
 004EFE7A    call        TFont.Create;TFont.Create
 004EFE7F    mov         edx,dword ptr [ebp-4]
 004EFE82    mov         dword ptr [edx+80],eax;TScreen.FHintFont:TFont
 004EFE88    mov         eax,dword ptr [ebp-4]
 004EFE8B    call        004F08A8
 004EFE90    mov         eax,dword ptr [ebp-4]
 004EFE93    mov         eax,dword ptr [eax+84];TScreen.FIconFont:TFont
 004EFE99    mov         edx,dword ptr [ebp-4]
 004EFE9C    mov         dword ptr [eax+0C],edx;TFont.?fC:TCustomListView
 004EFE9F    mov         dword ptr [eax+8],4F06F4;TFont.FOnChange:TNotifyEvent sub_004F06F4
 004EFEA6    mov         eax,dword ptr [ebp-4]
 004EFEA9    mov         eax,dword ptr [eax+88];TScreen.FMenuFont:TFont
 004EFEAF    mov         edx,dword ptr [ebp-4]
 004EFEB2    mov         dword ptr [eax+0C],edx;TFont.?fC:TCustomListView
 004EFEB5    mov         dword ptr [eax+8],4F06F4;TFont.FOnChange:TNotifyEvent sub_004F06F4
 004EFEBC    mov         eax,dword ptr [ebp-4]
 004EFEBF    mov         eax,dword ptr [eax+80];TScreen.FHintFont:TFont
 004EFEC5    mov         edx,dword ptr [ebp-4]
 004EFEC8    mov         dword ptr [eax+0C],edx;TFont.?fC:TCustomListView
 004EFECB    mov         dword ptr [eax+8],4F06F4;TFont.FOnChange:TNotifyEvent sub_004F06F4
 004EFED2    mov         eax,dword ptr [ebp-4]
 004EFED5    cmp         byte ptr [ebp-5],0
>004EFED9    je          004EFEEA
 004EFEDB    call        @AfterConstruction
 004EFEE0    pop         dword ptr fs:[0]
 004EFEE7    add         esp,0C
 004EFEEA    mov         eax,dword ptr [ebp-4]
 004EFEED    mov         esp,ebp
 004EFEEF    pop         ebp
 004EFEF0    ret
*}
end;

//004EFEF4
destructor TScreen.Destroy;
begin
{*
 004EFEF4    push        ebp
 004EFEF5    mov         ebp,esp
 004EFEF7    add         esp,0FFFFFFF0
 004EFEFA    call        @BeforeDestruction
 004EFEFF    mov         byte ptr [ebp-5],dl
 004EFF02    mov         dword ptr [ebp-4],eax
 004EFF05    mov         eax,dword ptr [ebp-4]
 004EFF08    mov         eax,dword ptr [eax+80]
 004EFF0E    call        TObject.Free
 004EFF13    mov         eax,dword ptr [ebp-4]
 004EFF16    mov         eax,dword ptr [eax+88]
 004EFF1C    call        TObject.Free
 004EFF21    mov         eax,dword ptr [ebp-4]
 004EFF24    mov         eax,dword ptr [eax+84]
 004EFF2A    call        TObject.Free
 004EFF2F    mov         eax,dword ptr [ebp-4]
 004EFF32    mov         eax,dword ptr [eax+54]
 004EFF35    call        TObject.Free
 004EFF3A    mov         eax,dword ptr [ebp-4]
 004EFF3D    mov         eax,dword ptr [eax+50]
 004EFF40    call        TObject.Free
 004EFF45    mov         eax,dword ptr [ebp-4]
 004EFF48    mov         eax,dword ptr [eax+4C]
 004EFF4B    call        TObject.Free
 004EFF50    mov         eax,dword ptr [ebp-4]
 004EFF53    mov         eax,dword ptr [eax+30]
 004EFF56    call        TObject.Free
 004EFF5B    mov         eax,dword ptr [ebp-4]
 004EFF5E    mov         eax,dword ptr [eax+34]
 004EFF61    call        TObject.Free
 004EFF66    mov         eax,dword ptr [ebp-4]
 004EFF69    mov         eax,dword ptr [eax+7C]
 004EFF6C    call        TObject.Free
 004EFF71    mov         eax,dword ptr [ebp-4]
 004EFF74    cmp         dword ptr [eax+58],0
>004EFF78    je          004EFFAE
 004EFF7A    mov         eax,dword ptr [ebp-4]
 004EFF7D    mov         eax,dword ptr [eax+58]
 004EFF80    mov         eax,dword ptr [eax+8]
 004EFF83    dec         eax
 004EFF84    test        eax,eax
>004EFF86    jl          004EFFAE
 004EFF88    inc         eax
 004EFF89    mov         dword ptr [ebp-10],eax
 004EFF8C    mov         dword ptr [ebp-0C],0
 004EFF93    mov         eax,dword ptr [ebp-4]
 004EFF96    mov         eax,dword ptr [eax+58]
 004EFF99    mov         edx,dword ptr [ebp-0C]
 004EFF9C    call        TList.Get
 004EFFA1    call        TObject.Free
 004EFFA6    inc         dword ptr [ebp-0C]
 004EFFA9    dec         dword ptr [ebp-10]
>004EFFAC    jne         004EFF93
 004EFFAE    mov         eax,dword ptr [ebp-4]
 004EFFB1    mov         eax,dword ptr [eax+58]
 004EFFB4    call        TObject.Free
 004EFFB9    mov         eax,dword ptr [ebp-4]
 004EFFBC    call        004F0374
 004EFFC1    mov         eax,[0055B204];^gvar_00540CD0
 004EFFC6    xor         edx,edx
 004EFFC8    mov         dword ptr [eax],edx
 004EFFCA    mov         dword ptr [eax+4],edx
 004EFFCD    mov         eax,[0055B214];^gvar_00540CD8
 004EFFD2    xor         edx,edx
 004EFFD4    mov         dword ptr [eax],edx
 004EFFD6    mov         dword ptr [eax+4],edx
 004EFFD9    mov         dl,byte ptr [ebp-5]
 004EFFDC    and         dl,0FC
 004EFFDF    mov         eax,dword ptr [ebp-4]
 004EFFE2    call        TComponent.Destroy
 004EFFE7    cmp         byte ptr [ebp-5],0
>004EFFEB    jle         004EFFF5
 004EFFED    mov         eax,dword ptr [ebp-4]
 004EFFF0    call        @ClassDestroy
 004EFFF5    mov         esp,ebp
 004EFFF7    pop         ebp
 004EFFF8    ret
*}
end;

//004EFFFC
{*function sub_004EFFFC(?:TScreen):?;
begin
 004EFFFC    push        ebp
 004EFFFD    mov         ebp,esp
 004EFFFF    add         esp,0FFFFFFF8
 004F0002    mov         dword ptr [ebp-4],eax
 004F0005    push        1
 004F0007    mov         eax,[0055B2BC];^gvar_0055DB78
 004F000C    mov         eax,dword ptr [eax]
 004F000E    call        eax
 004F0010    mov         dword ptr [ebp-8],eax
 004F0013    mov         eax,dword ptr [ebp-8]
 004F0016    pop         ecx
 004F0017    pop         ecx
 004F0018    pop         ebp
 004F0019    ret
end;*}

//004F001C
{*function sub_004F001C(?:TScreen):?;
begin
 004F001C    push        ebp
 004F001D    mov         ebp,esp
 004F001F    add         esp,0FFFFFFF8
 004F0022    mov         dword ptr [ebp-4],eax
 004F0025    push        0
 004F0027    mov         eax,[0055B2BC];^gvar_0055DB78
 004F002C    mov         eax,dword ptr [eax]
 004F002E    call        eax
 004F0030    mov         dword ptr [ebp-8],eax
 004F0033    mov         eax,dword ptr [ebp-8]
 004F0036    pop         ecx
 004F0037    pop         ecx
 004F0038    pop         ebp
 004F0039    ret
end;*}

//004F003C
{*function sub_004F003C(?:TScreen):?;
begin
 004F003C    push        ebp
 004F003D    mov         ebp,esp
 004F003F    add         esp,0FFFFFFF8
 004F0042    mov         dword ptr [ebp-4],eax
 004F0045    push        4D
 004F0047    mov         eax,[0055B2BC];^gvar_0055DB78
 004F004C    mov         eax,dword ptr [eax]
 004F004E    call        eax
 004F0050    mov         dword ptr [ebp-8],eax
 004F0053    mov         eax,dword ptr [ebp-8]
 004F0056    pop         ecx
 004F0057    pop         ecx
 004F0058    pop         ebp
 004F0059    ret
end;*}

//004F005C
{*function sub_004F005C(?:TScreen):?;
begin
 004F005C    push        ebp
 004F005D    mov         ebp,esp
 004F005F    add         esp,0FFFFFFF8
 004F0062    mov         dword ptr [ebp-4],eax
 004F0065    push        4C
 004F0067    mov         eax,[0055B2BC];^gvar_0055DB78
 004F006C    mov         eax,dword ptr [eax]
 004F006E    call        eax
 004F0070    mov         dword ptr [ebp-8],eax
 004F0073    mov         eax,dword ptr [ebp-8]
 004F0076    pop         ecx
 004F0077    pop         ecx
 004F0078    pop         ebp
 004F0079    ret
end;*}

//004F007C
{*function sub_004F007C(?:TScreen):?;
begin
 004F007C    push        ebp
 004F007D    mov         ebp,esp
 004F007F    add         esp,0FFFFFFF8
 004F0082    mov         dword ptr [ebp-4],eax
 004F0085    push        4F
 004F0087    mov         eax,[0055B2BC];^gvar_0055DB78
 004F008C    mov         eax,dword ptr [eax]
 004F008E    call        eax
 004F0090    mov         dword ptr [ebp-8],eax
 004F0093    mov         eax,dword ptr [ebp-8]
 004F0096    pop         ecx
 004F0097    pop         ecx
 004F0098    pop         ebp
 004F0099    ret
end;*}

//004F009C
{*function sub_004F009C(?:TScreen):?;
begin
 004F009C    push        ebp
 004F009D    mov         ebp,esp
 004F009F    add         esp,0FFFFFFF8
 004F00A2    mov         dword ptr [ebp-4],eax
 004F00A5    push        4E
 004F00A7    mov         eax,[0055B2BC];^gvar_0055DB78
 004F00AC    mov         eax,dword ptr [eax]
 004F00AE    call        eax
 004F00B0    mov         dword ptr [ebp-8],eax
 004F00B3    mov         eax,dword ptr [ebp-8]
 004F00B6    pop         ecx
 004F00B7    pop         ecx
 004F00B8    pop         ebp
 004F00B9    ret
end;*}

//004F00BC
{*function sub_004F00BC(?:?; ?:?):?;
begin
 004F00BC    push        ebp
 004F00BD    mov         ebp,esp
 004F00BF    add         esp,0FFFFFFF4
 004F00C2    mov         dword ptr [ebp-8],edx
 004F00C5    mov         dword ptr [ebp-4],eax
 004F00C8    mov         edx,dword ptr [ebp-8]
 004F00CB    mov         eax,dword ptr [ebp-4]
 004F00CE    mov         eax,dword ptr [eax+58]
 004F00D1    call        TList.Get
 004F00D6    mov         dword ptr [ebp-0C],eax
 004F00D9    mov         eax,dword ptr [ebp-0C]
 004F00DC    mov         esp,ebp
 004F00DE    pop         ebp
 004F00DF    ret
end;*}

//004F00E0
{*function sub_004F00E0(?:?):?;
begin
 004F00E0    push        ebp
 004F00E1    mov         ebp,esp
 004F00E3    add         esp,0FFFFFFF8
 004F00E6    mov         dword ptr [ebp-4],eax
 004F00E9    mov         eax,dword ptr [ebp-4]
 004F00EC    mov         eax,dword ptr [eax+58]
 004F00EF    cmp         dword ptr [eax+8],0
>004F00F3    jne         004F0105
 004F00F5    push        50
 004F00F7    mov         eax,[0055B2BC];^gvar_0055DB78
 004F00FC    mov         eax,dword ptr [eax]
 004F00FE    call        eax
 004F0100    mov         dword ptr [ebp-8],eax
>004F0103    jmp         004F0111
 004F0105    mov         eax,dword ptr [ebp-4]
 004F0108    mov         eax,dword ptr [eax+58]
 004F010B    mov         eax,dword ptr [eax+8]
 004F010E    mov         dword ptr [ebp-8],eax
 004F0111    mov         eax,dword ptr [ebp-8]
 004F0114    pop         ecx
 004F0115    pop         ecx
 004F0116    pop         ebp
 004F0117    ret
end;*}

//004F0118
{*function sub_004F0118(?:?; ?:?):?;
begin
 004F0118    push        ebp
 004F0119    mov         ebp,esp
 004F011B    add         esp,0FFFFFFF4
 004F011E    mov         dword ptr [ebp-8],edx
 004F0121    mov         dword ptr [ebp-4],eax
 004F0124    mov         edx,dword ptr [ebp-8]
 004F0127    mov         eax,dword ptr [ebp-4]
 004F012A    mov         eax,dword ptr [eax+4C]
 004F012D    call        TList.Get
 004F0132    mov         dword ptr [ebp-0C],eax
 004F0135    mov         eax,dword ptr [ebp-0C]
 004F0138    mov         esp,ebp
 004F013A    pop         ebp
 004F013B    ret
end;*}

//004F013C
{*function sub_004F013C(?:?):?;
begin
 004F013C    push        ebp
 004F013D    mov         ebp,esp
 004F013F    add         esp,0FFFFFFF8
 004F0142    mov         dword ptr [ebp-4],eax
 004F0145    mov         eax,dword ptr [ebp-4]
 004F0148    mov         eax,dword ptr [eax+4C]
 004F014B    mov         eax,dword ptr [eax+8]
 004F014E    mov         dword ptr [ebp-8],eax
 004F0151    mov         eax,dword ptr [ebp-8]
 004F0154    pop         ecx
 004F0155    pop         ecx
 004F0156    pop         ebp
 004F0157    ret
end;*}

//004F0158
{*function sub_004F0158(?:TScreen; ?:?):?;
begin
 004F0158    push        ebp
 004F0159    mov         ebp,esp
 004F015B    add         esp,0FFFFFFF4
 004F015E    mov         dword ptr [ebp-8],edx
 004F0161    mov         dword ptr [ebp-4],eax
 004F0164    mov         edx,dword ptr [ebp-8]
 004F0167    mov         eax,dword ptr [ebp-4]
 004F016A    mov         eax,dword ptr [eax+50]
 004F016D    call        TList.Get
 004F0172    mov         dword ptr [ebp-0C],eax
 004F0175    mov         eax,dword ptr [ebp-0C]
 004F0178    mov         esp,ebp
 004F017A    pop         ebp
 004F017B    ret
end;*}

//004F017C
{*function sub_004F017C(?:TScreen):?;
begin
 004F017C    push        ebp
 004F017D    mov         ebp,esp
 004F017F    add         esp,0FFFFFFF8
 004F0182    mov         dword ptr [ebp-4],eax
 004F0185    mov         eax,dword ptr [ebp-4]
 004F0188    mov         eax,dword ptr [eax+50]
 004F018B    mov         eax,dword ptr [eax+8]
 004F018E    mov         dword ptr [ebp-8],eax
 004F0191    mov         eax,dword ptr [ebp-8]
 004F0194    pop         ecx
 004F0195    pop         ecx
 004F0196    pop         ebp
 004F0197    ret
end;*}

//004F0198
{*procedure sub_004F0198(?:?);
begin
 004F0198    push        ebp
 004F0199    mov         ebp,esp
 004F019B    push        ecx
 004F019C    push        ebx
 004F019D    mov         dword ptr [ebp-4],eax
 004F01A0    mov         eax,dword ptr [ebp-4]
 004F01A3    mov         eax,dword ptr [eax+74]
 004F01A6    mov         edx,dword ptr [ebp-4]
 004F01A9    cmp         eax,dword ptr [edx+68]
>004F01AC    je          004F01D9
 004F01AE    mov         eax,dword ptr [ebp-4]
 004F01B1    mov         eax,dword ptr [eax+68]
 004F01B4    mov         edx,dword ptr [ebp-4]
 004F01B7    mov         dword ptr [edx+74],eax
 004F01BA    mov         eax,dword ptr [ebp-4]
 004F01BD    cmp         word ptr [eax+9A],0
>004F01C5    je          004F01D9
 004F01C7    mov         ebx,dword ptr [ebp-4]
 004F01CA    mov         edx,dword ptr [ebp-4]
 004F01CD    mov         eax,dword ptr [ebx+9C]
 004F01D3    call        dword ptr [ebx+98]
 004F01D9    mov         eax,dword ptr [ebp-4]
 004F01DC    mov         eax,dword ptr [eax+70]
 004F01DF    mov         edx,dword ptr [ebp-4]
 004F01E2    cmp         eax,dword ptr [edx+64]
>004F01E5    je          004F0212
 004F01E7    mov         eax,dword ptr [ebp-4]
 004F01EA    mov         eax,dword ptr [eax+64]
 004F01ED    mov         edx,dword ptr [ebp-4]
 004F01F0    mov         dword ptr [edx+70],eax
 004F01F3    mov         eax,dword ptr [ebp-4]
 004F01F6    cmp         word ptr [eax+92],0
>004F01FE    je          004F0212
 004F0200    mov         ebx,dword ptr [ebp-4]
 004F0203    mov         edx,dword ptr [ebp-4]
 004F0206    mov         eax,dword ptr [ebx+94]
 004F020C    call        dword ptr [ebx+90]
 004F0212    pop         ebx
 004F0213    pop         ecx
 004F0214    pop         ebp
 004F0215    ret
end;*}

//004F0218
{*procedure sub_004F0218(?:?; ?:TCustomForm);
begin
 004F0218    push        ebp
 004F0219    mov         ebp,esp
 004F021B    add         esp,0FFFFFFF8
 004F021E    mov         dword ptr [ebp-8],edx
 004F0221    mov         dword ptr [ebp-4],eax
 004F0224    mov         edx,dword ptr [ebp-8]
 004F0227    mov         eax,dword ptr [ebp-4]
 004F022A    mov         eax,dword ptr [eax+50]
 004F022D    call        TList.Add
 004F0232    mov         eax,dword ptr [ebp-8]
 004F0235    mov         edx,dword ptr ds:[4E6708];TForm
 004F023B    call        @IsClass
 004F0240    test        al,al
>004F0242    je          004F025C
 004F0244    mov         edx,dword ptr [ebp-8]
 004F0247    mov         eax,dword ptr [ebp-4]
 004F024A    mov         eax,dword ptr [eax+4C]
 004F024D    call        TList.Add
 004F0252    mov         eax,[0055DE4C];Application:TApplication
 004F0257    call        004F3988
 004F025C    pop         ecx
 004F025D    pop         ecx
 004F025E    pop         ebp
 004F025F    ret
end;*}

//004F0260
procedure TScreen.RemoveForm(AForm:TCustomForm);
begin
{*
 004F0260    push        ebp
 004F0261    mov         ebp,esp
 004F0263    add         esp,0FFFFFFF8
 004F0266    mov         dword ptr [ebp-8],edx
 004F0269    mov         dword ptr [ebp-4],eax
 004F026C    mov         edx,dword ptr [ebp-8]
 004F026F    mov         eax,dword ptr [ebp-4]
 004F0272    mov         eax,dword ptr [eax+50]
 004F0275    call        00478AC4
 004F027A    mov         edx,dword ptr [ebp-8]
 004F027D    mov         eax,dword ptr [ebp-4]
 004F0280    mov         eax,dword ptr [eax+4C]
 004F0283    call        00478AC4
 004F0288    mov         eax,[0055DE4C];Application:TApplication
 004F028D    call        004F3988
 004F0292    mov         eax,dword ptr [ebp-4]
 004F0295    mov         eax,dword ptr [eax+50]
 004F0298    cmp         dword ptr [eax+8],0
>004F029C    jne         004F02BC
 004F029E    mov         eax,[0055DE4C];Application:TApplication
 004F02A3    cmp         dword ptr [eax+84],0
>004F02AA    je          004F02BC
 004F02AC    mov         eax,[0055DE4C];Application:TApplication
 004F02B1    mov         eax,dword ptr [eax+84]
 004F02B7    call        004D546C
 004F02BC    pop         ecx
 004F02BD    pop         ecx
 004F02BE    pop         ebp
 004F02BF    ret
*}
end;

//004F02C0
{*procedure sub_004F02C0(?:?; ?:?);
begin
 004F02C0    push        ebp
 004F02C1    mov         ebp,esp
 004F02C3    add         esp,0FFFFFFF8
 004F02C6    mov         dword ptr [ebp-8],edx
 004F02C9    mov         dword ptr [ebp-4],eax
 004F02CC    mov         edx,dword ptr [ebp-8]
 004F02CF    mov         eax,dword ptr [ebp-4]
 004F02D2    mov         eax,dword ptr [eax+54]
 004F02D5    call        TList.Add
 004F02DA    pop         ecx
 004F02DB    pop         ecx
 004F02DC    pop         ebp
 004F02DD    ret
end;*}

//004F02E0
{*procedure sub_004F02E0(?:?; ?:?);
begin
 004F02E0    push        ebp
 004F02E1    mov         ebp,esp
 004F02E3    add         esp,0FFFFFFF8
 004F02E6    mov         dword ptr [ebp-8],edx
 004F02E9    mov         dword ptr [ebp-4],eax
 004F02EC    mov         edx,dword ptr [ebp-8]
 004F02EF    mov         eax,dword ptr [ebp-4]
 004F02F2    mov         eax,dword ptr [eax+54]
 004F02F5    call        00478AC4
 004F02FA    pop         ecx
 004F02FB    pop         ecx
 004F02FC    pop         ebp
 004F02FD    ret
end;*}

//004F0300
procedure sub_004F0300(?:TScreen);
begin
{*
 004F0300    push        ebp
 004F0301    mov         ebp,esp
 004F0303    add         esp,0FFFFFFF4
 004F0306    mov         dword ptr [ebp-4],eax
 004F0309    push        7F00
 004F030E    push        0
 004F0310    call        user32.LoadCursorA
 004F0315    mov         edx,dword ptr [ebp-4]
 004F0318    mov         dword ptr [edx+60],eax;TScreen.FDefaultCursor:HCURSOR
 004F031B    mov         dword ptr [ebp-8],0FFFFFFEA
 004F0322    cmp         dword ptr [ebp-8],0FFFFFFEF
>004F0326    jl          004F032E
 004F0328    cmp         dword ptr [ebp-8],0FFFFFFF4
>004F032C    jle         004F0334
 004F032E    cmp         dword ptr [ebp-8],0FFFFFFEB
>004F0332    jne         004F033E
 004F0334    mov         eax,[0055C664];gvar_0055C664
 004F0339    mov         dword ptr [ebp-0C],eax
>004F033C    jmp         004F0343
 004F033E    xor         eax,eax
 004F0340    mov         dword ptr [ebp-0C],eax
 004F0343    mov         eax,dword ptr [ebp-8]
 004F0346    mov         eax,dword ptr [eax*4+5419B0]
 004F034D    push        eax
 004F034E    mov         eax,dword ptr [ebp-0C]
 004F0351    push        eax
 004F0352    call        user32.LoadCursorA
 004F0357    mov         ecx,eax
 004F0359    mov         edx,dword ptr [ebp-8]
 004F035C    mov         eax,dword ptr [ebp-4]
 004F035F    call        004F0464
 004F0364    inc         dword ptr [ebp-8]
 004F0367    cmp         dword ptr [ebp-8],0FFFFFFFF
>004F036B    jne         004F0322
 004F036D    mov         esp,ebp
 004F036F    pop         ebp
 004F0370    ret
*}
end;

//004F0374
{*procedure sub_004F0374(?:?);
begin
 004F0374    push        ebp
 004F0375    mov         ebp,esp
 004F0377    add         esp,0FFFFFFF0
 004F037A    mov         dword ptr [ebp-4],eax
 004F037D    mov         eax,dword ptr [ebp-4]
 004F0380    mov         eax,dword ptr [eax+5C]
 004F0383    mov         dword ptr [ebp-8],eax
 004F0386    cmp         dword ptr [ebp-8],0
>004F038A    je          004F03DD
 004F038C    mov         eax,dword ptr [ebp-8]
 004F038F    cmp         dword ptr [eax+4],0FFFFFFEF
>004F0393    jl          004F039E
 004F0395    mov         eax,dword ptr [ebp-8]
 004F0398    cmp         dword ptr [eax+4],0FFFFFFF4
>004F039C    jle         004F03B0
 004F039E    mov         eax,dword ptr [ebp-8]
 004F03A1    cmp         dword ptr [eax+4],0FFFFFFEB
>004F03A5    je          004F03B0
 004F03A7    mov         eax,dword ptr [ebp-8]
 004F03AA    cmp         dword ptr [eax+4],0
>004F03AE    jle         004F03BC
 004F03B0    mov         eax,dword ptr [ebp-8]
 004F03B3    mov         eax,dword ptr [eax+8]
 004F03B6    push        eax
 004F03B7    call        user32.DestroyCursor
 004F03BC    mov         eax,dword ptr [ebp-8]
 004F03BF    mov         eax,dword ptr [eax]
 004F03C1    mov         dword ptr [ebp-0C],eax
 004F03C4    mov         edx,0C
 004F03C9    mov         eax,dword ptr [ebp-8]
 004F03CC    call        @FreeMem
 004F03D1    mov         eax,dword ptr [ebp-0C]
 004F03D4    mov         dword ptr [ebp-8],eax
 004F03D7    cmp         dword ptr [ebp-8],0
>004F03DB    jne         004F038C
 004F03DD    push        7F00
 004F03E2    push        0
 004F03E4    call        user32.LoadCursorA
 004F03E9    mov         dword ptr [ebp-10],eax
 004F03EC    mov         eax,dword ptr [ebp-4]
 004F03EF    mov         eax,dword ptr [eax+60]
 004F03F2    cmp         eax,dword ptr [ebp-10]
>004F03F5    je          004F0403
 004F03F7    mov         eax,dword ptr [ebp-4]
 004F03FA    mov         eax,dword ptr [eax+60]
 004F03FD    push        eax
 004F03FE    call        user32.DestroyCursor
 004F0403    mov         esp,ebp
 004F0405    pop         ebp
 004F0406    ret
end;*}

//004F0408
{*function sub_004F0408(?:?; ?:?):?;
begin
 004F0408    push        ebp
 004F0409    mov         ebp,esp
 004F040B    add         esp,0FFFFFFEC
 004F040E    mov         dword ptr [ebp-8],edx
 004F0411    mov         dword ptr [ebp-4],eax
 004F0414    xor         eax,eax
 004F0416    mov         dword ptr [ebp-0C],eax
 004F0419    mov         eax,dword ptr [ebp-4]
 004F041C    call        004F00E0
 004F0421    dec         eax
 004F0422    test        eax,eax
>004F0424    jl          004F045C
 004F0426    inc         eax
 004F0427    mov         dword ptr [ebp-14],eax
 004F042A    mov         dword ptr [ebp-10],0
 004F0431    mov         edx,dword ptr [ebp-10]
 004F0434    mov         eax,dword ptr [ebp-4]
 004F0437    call        004F00BC
 004F043C    mov         eax,dword ptr [eax+4]
 004F043F    cmp         eax,dword ptr [ebp-8]
>004F0442    jne         004F0454
 004F0444    mov         edx,dword ptr [ebp-10]
 004F0447    mov         eax,dword ptr [ebp-4]
 004F044A    call        004F00BC
 004F044F    mov         dword ptr [ebp-0C],eax
>004F0452    jmp         004F045C
 004F0454    inc         dword ptr [ebp-10]
 004F0457    dec         dword ptr [ebp-14]
>004F045A    jne         004F0431
 004F045C    mov         eax,dword ptr [ebp-0C]
 004F045F    mov         esp,ebp
 004F0461    pop         ebp
 004F0462    ret
end;*}

//004F0464
{*procedure sub_004F0464(?:TScreen; ?:?; ?:HICON);
begin
 004F0464    push        ebp
 004F0465    mov         ebp,esp
 004F0467    add         esp,0FFFFFFF0
 004F046A    mov         dword ptr [ebp-0C],ecx
 004F046D    mov         dword ptr [ebp-8],edx
 004F0470    mov         dword ptr [ebp-4],eax
 004F0473    mov         eax,0C
 004F0478    call        @GetMem
 004F047D    mov         dword ptr [ebp-10],eax
 004F0480    mov         eax,dword ptr [ebp-4]
 004F0483    mov         eax,dword ptr [eax+5C];TScreen.FCursorList:PCursorRec
 004F0486    mov         edx,dword ptr [ebp-10]
 004F0489    mov         dword ptr [edx],eax
 004F048B    mov         eax,dword ptr [ebp-8]
 004F048E    mov         edx,dword ptr [ebp-10]
 004F0491    mov         dword ptr [edx+4],eax
 004F0494    mov         eax,dword ptr [ebp-0C]
 004F0497    mov         edx,dword ptr [ebp-10]
 004F049A    mov         dword ptr [edx+8],eax
 004F049D    mov         eax,dword ptr [ebp-10]
 004F04A0    mov         edx,dword ptr [ebp-4]
 004F04A3    mov         dword ptr [edx+5C],eax;TScreen.FCursorList:PCursorRec
 004F04A6    mov         esp,ebp
 004F04A8    pop         ebp
 004F04A9    ret
end;*}

//004F04AC
{*function sub_004F04AC(?:TScreen):?;
begin
 004F04AC    push        ebp
 004F04AD    mov         ebp,esp
 004F04AF    add         esp,0FFFFFD98
 004F04B5    push        ebx
 004F04B6    xor         edx,edx
 004F04B8    mov         dword ptr [ebp-268],edx
 004F04BE    mov         dword ptr [ebp-4],eax
 004F04C1    xor         eax,eax
 004F04C3    push        ebp
 004F04C4    push        4F0677
 004F04C9    push        dword ptr fs:[eax]
 004F04CC    mov         dword ptr fs:[eax],esp
 004F04CF    mov         eax,dword ptr [ebp-4]
 004F04D2    cmp         dword ptr [eax+34],0;TScreen.FImes:TStrings
>004F04D6    jne         004F0655
 004F04DC    mov         dl,1
 004F04DE    mov         eax,[00476078];TStringList
 004F04E3    call        TObject.Create;TStringList.Create
 004F04E8    mov         edx,dword ptr [ebp-4]
 004F04EB    mov         dword ptr [edx+34],eax;TScreen.FImes:TStrings
 004F04EE    mov         eax,dword ptr [ebp-4]
 004F04F1    add         eax,38;TScreen.FDefaultIme:String
 004F04F4    call        @LStrClr
 004F04F9    lea         eax,[ebp-11C]
 004F04FF    push        eax
 004F0500    push        40
 004F0502    call        user32.GetKeyboardLayoutList
 004F0507    mov         dword ptr [ebp-0C],eax
 004F050A    mov         eax,dword ptr [ebp-0C]
 004F050D    dec         eax
 004F050E    test        eax,eax
>004F0510    jl          004F063E
 004F0516    inc         eax
 004F0517    mov         dword ptr [ebp-1C],eax
 004F051A    mov         dword ptr [ebp-10],0
 004F0521    mov         eax,dword ptr [ebp-10]
 004F0524    mov         eax,dword ptr [ebp+eax*4-11C]
 004F052B    call        004D9AE4
 004F0530    test        al,al
>004F0532    je          004F0632
 004F0538    lea         eax,[ebp-18]
 004F053B    push        eax
 004F053C    push        20019
 004F0541    push        0
 004F0543    push        0
 004F0545    mov         eax,dword ptr [ebp-10]
 004F0548    mov         eax,dword ptr [ebp+eax*4-11C]
 004F054F    mov         dword ptr [ebp-264],eax
 004F0555    mov         byte ptr [ebp-260],0
 004F055C    lea         ecx,[ebp-264]
 004F0562    mov         edx,4F0688
 004F0567    lea         eax,[ebp-25C]
 004F056D    call        00467970
 004F0572    push        eax
 004F0573    push        80000002
 004F0578    call        advapi32.RegOpenKeyExA
 004F057D    test        eax,eax
>004F057F    jne         004F0632
 004F0585    xor         eax,eax
 004F0587    push        ebp
 004F0588    push        4F062B
 004F058D    push        dword ptr fs:[eax]
 004F0590    mov         dword ptr fs:[eax],esp
 004F0593    mov         dword ptr [ebp-14],100
 004F059A    lea         eax,[ebp-14]
 004F059D    push        eax
 004F059E    lea         eax,[ebp-21C]
 004F05A4    push        eax
 004F05A5    push        0
 004F05A7    push        0
 004F05A9    push        4F06C0;'layout text'
 004F05AE    mov         eax,dword ptr [ebp-18]
 004F05B1    push        eax
 004F05B2    call        advapi32.RegQueryValueExA
 004F05B7    test        eax,eax
>004F05B9    jne         004F0614
 004F05BB    lea         eax,[ebp-268]
 004F05C1    lea         edx,[ebp-21C]
 004F05C7    mov         ecx,100
 004F05CC    call        @LStrFromArray
 004F05D1    mov         edx,dword ptr [ebp-268]
 004F05D7    mov         eax,dword ptr [ebp-10]
 004F05DA    mov         ecx,dword ptr [ebp+eax*4-11C]
 004F05E1    mov         eax,dword ptr [ebp-4]
 004F05E4    mov         eax,dword ptr [eax+34];TScreen.FImes:TStrings
 004F05E7    mov         ebx,dword ptr [eax]
 004F05E9    call        dword ptr [ebx+3C];TStrings.sub_0047A090
 004F05EC    mov         eax,dword ptr [ebp-10]
 004F05EF    mov         eax,dword ptr [ebp+eax*4-11C]
 004F05F6    mov         edx,dword ptr [ebp-4]
 004F05F9    cmp         eax,dword ptr [edx+3C];TScreen.FDefaultKbLayout:HKL
>004F05FC    jne         004F0614
 004F05FE    mov         eax,dword ptr [ebp-4]
 004F0601    add         eax,38;TScreen.FDefaultIme:String
 004F0604    lea         edx,[ebp-21C]
 004F060A    mov         ecx,100
 004F060F    call        @LStrFromArray
 004F0614    xor         eax,eax
 004F0616    pop         edx
 004F0617    pop         ecx
 004F0618    pop         ecx
 004F0619    mov         dword ptr fs:[eax],edx
 004F061C    push        4F0632
 004F0621    mov         eax,dword ptr [ebp-18]
 004F0624    push        eax
 004F0625    call        advapi32.RegCloseKey
 004F062A    ret
>004F062B    jmp         @HandleFinally
>004F0630    jmp         004F0621
 004F0632    inc         dword ptr [ebp-10]
 004F0635    dec         dword ptr [ebp-1C]
>004F0638    jne         004F0521
 004F063E    mov         eax,dword ptr [ebp-4]
 004F0641    mov         eax,dword ptr [eax+34];TScreen.FImes:TStrings
 004F0644    mov         byte ptr [eax+1D],0
 004F0648    mov         eax,dword ptr [ebp-4]
 004F064B    mov         eax,dword ptr [eax+34];TScreen.FImes:TStrings
 004F064E    mov         dl,1
 004F0650    call        0047BB7C
 004F0655    mov         eax,dword ptr [ebp-4]
 004F0658    mov         eax,dword ptr [eax+34];TScreen.FImes:TStrings
 004F065B    mov         dword ptr [ebp-8],eax
 004F065E    xor         eax,eax
 004F0660    pop         edx
 004F0661    pop         ecx
 004F0662    pop         ecx
 004F0663    mov         dword ptr fs:[eax],edx
 004F0666    push        4F067E
 004F066B    lea         eax,[ebp-268]
 004F0671    call        @LStrClr
 004F0676    ret
>004F0677    jmp         @HandleFinally
>004F067C    jmp         004F066B
 004F067E    mov         eax,dword ptr [ebp-8]
 004F0681    pop         ebx
 004F0682    mov         esp,ebp
 004F0684    pop         ebp
 004F0685    ret
end;*}

//004F06CC
{*procedure sub_004F06CC(?:TScreen; ?:?);
begin
 004F06CC    push        ebp
 004F06CD    mov         ebp,esp
 004F06CF    add         esp,0FFFFFFF8
 004F06D2    mov         dword ptr [ebp-8],edx
 004F06D5    mov         dword ptr [ebp-4],eax
 004F06D8    mov         eax,dword ptr [ebp-4]
 004F06DB    call        004F04AC
 004F06E0    mov         eax,dword ptr [ebp-8]
 004F06E3    mov         edx,dword ptr [ebp-4]
 004F06E6    mov         edx,dword ptr [edx+38];TScreen.FDefaultIme:String
 004F06E9    call        @LStrAsg
 004F06EE    pop         ecx
 004F06EF    pop         ecx
 004F06F0    pop         ebp
 004F06F1    ret
end;*}

//004F06F4
{*procedure sub_004F06F4(?:?; ?:?);
begin
 004F06F4    push        ebp
 004F06F5    mov         ebp,esp
 004F06F7    add         esp,0FFFFFFF8
 004F06FA    mov         dword ptr [ebp-8],edx
 004F06FD    mov         dword ptr [ebp-4],eax
 004F0700    mov         dx,0B035
 004F0704    mov         eax,[0055DE4C];Application:TApplication
 004F0709    call        004F37B0
 004F070E    mov         eax,dword ptr [ebp-8]
 004F0711    mov         edx,dword ptr [ebp-4]
 004F0714    cmp         eax,dword ptr [edx+80]
>004F071A    jne         004F074B
 004F071C    cmp         dword ptr ds:[55DE4C],0;Application:TApplication
>004F0723    je          004F074B
 004F0725    mov         eax,[0055DE4C];Application:TApplication
 004F072A    cmp         byte ptr [eax+88],0
>004F0731    je          004F074B
 004F0733    xor         edx,edx
 004F0735    mov         eax,[0055DE4C];Application:TApplication
 004F073A    call        004F34E8
 004F073F    mov         dl,1
 004F0741    mov         eax,[0055DE4C];Application:TApplication
 004F0746    call        004F34E8
 004F074B    pop         ecx
 004F074C    pop         ecx
 004F074D    pop         ebp
 004F074E    ret
end;*}

//004F0750
{*function sub_004F0750(?:?; ?:?):?;
begin
 004F0750    push        ebp
 004F0751    mov         ebp,esp
 004F0753    add         esp,0FFFFFFF4
 004F0756    mov         dword ptr [ebp-8],edx
 004F0759    mov         dword ptr [ebp-4],eax
 004F075C    mov         edx,dword ptr [ebp-8]
 004F075F    mov         eax,dword ptr [ebp-4]
 004F0762    mov         eax,dword ptr [eax+54]
 004F0765    call        TList.Get
 004F076A    mov         dword ptr [ebp-0C],eax
 004F076D    mov         eax,dword ptr [ebp-0C]
 004F0770    mov         esp,ebp
 004F0772    pop         ebp
 004F0773    ret
end;*}

//004F0774
{*function sub_004F0774(?:?):?;
begin
 004F0774    push        ebp
 004F0775    mov         ebp,esp
 004F0777    add         esp,0FFFFFFF8
 004F077A    mov         dword ptr [ebp-4],eax
 004F077D    mov         eax,dword ptr [ebp-4]
 004F0780    mov         eax,dword ptr [eax+54]
 004F0783    mov         eax,dword ptr [eax+8]
 004F0786    mov         dword ptr [ebp-8],eax
 004F0789    mov         eax,dword ptr [ebp-8]
 004F078C    pop         ecx
 004F078D    pop         ecx
 004F078E    pop         ebp
 004F078F    ret
end;*}

//004F0790
{*function sub_004F0790(?:TScreen; ?:TCursor):?;
begin
 004F0790    push        ebp
 004F0791    mov         ebp,esp
 004F0793    add         esp,0FFFFFFF0
 004F0796    mov         dword ptr [ebp-8],edx
 004F0799    mov         dword ptr [ebp-4],eax
 004F079C    xor         eax,eax
 004F079E    mov         dword ptr [ebp-0C],eax
 004F07A1    cmp         dword ptr [ebp-8],0FFFFFFFF
>004F07A5    je          004F07E5
 004F07A7    mov         eax,dword ptr [ebp-4]
 004F07AA    mov         eax,dword ptr [eax+5C];TScreen.FCursorList:PCursorRec
 004F07AD    mov         dword ptr [ebp-10],eax
>004F07B0    jmp         004F07BA
 004F07B2    mov         eax,dword ptr [ebp-10]
 004F07B5    mov         eax,dword ptr [eax]
 004F07B7    mov         dword ptr [ebp-10],eax
 004F07BA    cmp         dword ptr [ebp-10],0
>004F07BE    je          004F07CB
 004F07C0    mov         eax,dword ptr [ebp-10]
 004F07C3    mov         eax,dword ptr [eax+4]
 004F07C6    cmp         eax,dword ptr [ebp-8]
>004F07C9    jne         004F07B2
 004F07CB    cmp         dword ptr [ebp-10],0
>004F07CF    jne         004F07DC
 004F07D1    mov         eax,dword ptr [ebp-4]
 004F07D4    mov         eax,dword ptr [eax+60];TScreen.FDefaultCursor:HCURSOR
 004F07D7    mov         dword ptr [ebp-0C],eax
>004F07DA    jmp         004F07E5
 004F07DC    mov         eax,dword ptr [ebp-10]
 004F07DF    mov         eax,dword ptr [eax+8]
 004F07E2    mov         dword ptr [ebp-0C],eax
 004F07E5    mov         eax,dword ptr [ebp-0C]
 004F07E8    mov         esp,ebp
 004F07EA    pop         ebp
 004F07EB    ret
end;*}

//004F07EC
{*procedure sub_004F07EC(?:?; ?:?);
begin
 004F07EC    push        ebp
 004F07ED    mov         ebp,esp
 004F07EF    add         esp,0FFFFFFE8
 004F07F2    push        ebx
 004F07F3    mov         word ptr [ebp-6],dx
 004F07F7    mov         dword ptr [ebp-4],eax
 004F07FA    mov         ax,word ptr [ebp-6]
 004F07FE    mov         edx,dword ptr [ebp-4]
 004F0801    cmp         ax,word ptr [edx+44]
>004F0805    je          004F089D
 004F080B    mov         ax,word ptr [ebp-6]
 004F080F    mov         edx,dword ptr [ebp-4]
 004F0812    mov         word ptr [edx+44],ax
 004F0816    cmp         word ptr [ebp-6],0
>004F081B    jne         004F088B
 004F081D    lea         eax,[ebp-0E]
 004F0820    push        eax
 004F0821    call        user32.GetCursorPos
 004F0826    push        dword ptr [ebp-0A]
 004F0829    push        dword ptr [ebp-0E]
 004F082C    call        user32.WindowFromPoint
 004F0831    mov         dword ptr [ebp-14],eax
 004F0834    cmp         dword ptr [ebp-14],0
>004F0838    je          004F088B
 004F083A    push        0
 004F083C    mov         eax,dword ptr [ebp-14]
 004F083F    push        eax
 004F0840    call        user32.GetWindowThreadProcessId
 004F0845    mov         ebx,eax
 004F0847    call        kernel32.GetCurrentThreadId
 004F084C    cmp         ebx,eax
>004F084E    jne         004F088B
 004F0850    lea         eax,[ebp-0E]
 004F0853    call        00408274
 004F0858    push        eax
 004F0859    push        0
 004F085B    push        84
 004F0860    mov         eax,dword ptr [ebp-14]
 004F0863    push        eax
 004F0864    call        user32.SendMessageA
 004F0869    mov         dword ptr [ebp-18],eax
 004F086C    mov         dx,200
 004F0870    mov         ax,word ptr [ebp-18]
 004F0874    call        004080B4
 004F0879    push        eax
 004F087A    mov         eax,dword ptr [ebp-14]
 004F087D    push        eax
 004F087E    push        20
 004F0880    mov         eax,dword ptr [ebp-14]
 004F0883    push        eax
 004F0884    call        user32.SendMessageA
>004F0889    jmp         004F08A3
 004F088B    movsx       edx,word ptr [ebp-6]
 004F088F    mov         eax,dword ptr [ebp-4]
 004F0892    call        004F0790
 004F0897    push        eax
 004F0898    call        user32.SetCursor
 004F089D    mov         eax,dword ptr [ebp-4]
 004F08A0    inc         dword ptr [eax+48]
 004F08A3    pop         ebx
 004F08A4    mov         esp,ebp
 004F08A6    pop         ebp
 004F08A7    ret
end;*}

//004F08A8
procedure sub_004F08A8(?:TScreen);
begin
{*
 004F08A8    push        ebp
 004F08A9    mov         ebp,esp
 004F08AB    add         esp,0FFFFFE68
 004F08B1    mov         dword ptr [ebp-4],eax
 004F08B4    mov         byte ptr [ebp-5],0
 004F08B8    cmp         dword ptr ds:[55DE4C],0;Application:TApplication
>004F08BF    je          004F08CF
 004F08C1    mov         eax,[0055DE4C];Application:TApplication
 004F08C6    mov         al,byte ptr [eax+88]
 004F08CC    mov         byte ptr [ebp-5],al
 004F08CF    xor         eax,eax
 004F08D1    push        ebp
 004F08D2    push        4F0A05
 004F08D7    push        dword ptr fs:[eax]
 004F08DA    mov         dword ptr fs:[eax],esp
 004F08DD    cmp         dword ptr ds:[55DE4C],0;Application:TApplication
>004F08E4    je          004F08F2
 004F08E6    xor         edx,edx
 004F08E8    mov         eax,[0055DE4C];Application:TApplication
 004F08ED    call        004F34E8
 004F08F2    push        0
 004F08F4    lea         eax,[ebp-41]
 004F08F7    push        eax
 004F08F8    push        3C
 004F08FA    push        1F
 004F08FC    call        user32.SystemParametersInfoA
 004F0901    test        eax,eax
>004F0903    je          004F0920
 004F0905    lea         eax,[ebp-41]
 004F0908    push        eax
 004F0909    call        gdi32.CreateFontIndirectA
 004F090E    mov         edx,eax
 004F0910    mov         eax,dword ptr [ebp-4]
 004F0913    mov         eax,dword ptr [eax+84];TScreen.FIconFont:TFont
 004F0919    call        00487000
>004F091E    jmp         004F0937
 004F0920    push        0D
 004F0922    call        gdi32.GetStockObject
 004F0927    mov         edx,eax
 004F0929    mov         eax,dword ptr [ebp-4]
 004F092C    mov         eax,dword ptr [eax+84];TScreen.FIconFont:TFont
 004F0932    call        00487000
 004F0937    mov         dword ptr [ebp-195],154
 004F0941    push        0
 004F0943    lea         eax,[ebp-195]
 004F0949    push        eax
 004F094A    push        0
 004F094C    push        29
 004F094E    call        user32.SystemParametersInfoA
 004F0953    test        eax,eax
>004F0955    je          004F0991
 004F0957    lea         eax,[ebp-0B9]
 004F095D    push        eax
 004F095E    call        gdi32.CreateFontIndirectA
 004F0963    mov         edx,eax
 004F0965    mov         eax,dword ptr [ebp-4]
 004F0968    mov         eax,dword ptr [eax+80];TScreen.FHintFont:TFont
 004F096E    call        00487000
 004F0973    lea         eax,[ebp-0F5]
 004F0979    push        eax
 004F097A    call        gdi32.CreateFontIndirectA
 004F097F    mov         edx,eax
 004F0981    mov         eax,dword ptr [ebp-4]
 004F0984    mov         eax,dword ptr [eax+88];TScreen.FMenuFont:TFont
 004F098A    call        00487000
>004F098F    jmp         004F09BB
 004F0991    mov         eax,dword ptr [ebp-4]
 004F0994    mov         eax,dword ptr [eax+80];TScreen.FHintFont:TFont
 004F099A    mov         edx,8
 004F099F    call        TFont.SetSize
 004F09A4    push        0D
 004F09A6    call        gdi32.GetStockObject
 004F09AB    mov         edx,eax
 004F09AD    mov         eax,dword ptr [ebp-4]
 004F09B0    mov         eax,dword ptr [eax+88];TScreen.FMenuFont:TFont
 004F09B6    call        00487000
 004F09BB    mov         eax,dword ptr [ebp-4]
 004F09BE    mov         eax,dword ptr [eax+80];TScreen.FHintFont:TFont
 004F09C4    mov         edx,0FF000017
 004F09C9    call        TFont.SetColor
 004F09CE    mov         eax,dword ptr [ebp-4]
 004F09D1    mov         eax,dword ptr [eax+88];TScreen.FMenuFont:TFont
 004F09D7    mov         edx,0FF000007
 004F09DC    call        TFont.SetColor
 004F09E1    xor         eax,eax
 004F09E3    pop         edx
 004F09E4    pop         ecx
 004F09E5    pop         ecx
 004F09E6    mov         dword ptr fs:[eax],edx
 004F09E9    push        4F0A0C
 004F09EE    cmp         dword ptr ds:[55DE4C],0;Application:TApplication
>004F09F5    je          004F0A04
 004F09F7    mov         dl,byte ptr [ebp-5]
 004F09FA    mov         eax,[0055DE4C];Application:TApplication
 004F09FF    call        004F34E8
 004F0A04    ret
>004F0A05    jmp         @HandleFinally
>004F0A0A    jmp         004F09EE
 004F0A0C    mov         esp,ebp
 004F0A0E    pop         ebp
 004F0A0F    ret
*}
end;

//004F0A10
{*procedure sub_004F0A10(?:?);
begin
 004F0A10    push        ebp
 004F0A11    mov         ebp,esp
 004F0A13    push        ecx
 004F0A14    mov         dword ptr [ebp-4],eax
 004F0A17    mov         eax,dword ptr [ebp-4]
 004F0A1A    inc         word ptr [eax+8C]
 004F0A21    pop         ecx
 004F0A22    pop         ebp
 004F0A23    ret
end;*}

//004F0A24
{*procedure sub_004F0A24(?:?);
begin
 004F0A24    push        ebp
 004F0A25    mov         ebp,esp
 004F0A27    push        ecx
 004F0A28    mov         dword ptr [ebp-4],eax
 004F0A2B    mov         eax,dword ptr [ebp-4]
 004F0A2E    dec         word ptr [eax+8C]
 004F0A35    mov         eax,dword ptr [ebp-4]
 004F0A38    cmp         word ptr [eax+8C],0
>004F0A40    jne         004F0A56
 004F0A42    mov         eax,dword ptr [ebp-4]
 004F0A45    test        byte ptr [eax+8E],10
>004F0A4C    je          004F0A56
 004F0A4E    mov         eax,dword ptr [ebp-4]
 004F0A51    call        004F0A5C
 004F0A56    pop         ecx
 004F0A57    pop         ebp
 004F0A58    ret
end;*}

//004F0A5C
{*procedure sub_004F0A5C(?:?);
begin
 004F0A5C    push        ebp
 004F0A5D    mov         ebp,esp
 004F0A5F    push        ecx
 004F0A60    mov         dword ptr [ebp-4],eax
 004F0A63    xor         edx,edx
 004F0A65    mov         eax,dword ptr [ebp-4]
 004F0A68    call        004F0F80
 004F0A6D    pop         ecx
 004F0A6E    pop         ebp
 004F0A6F    ret
end;*}

//004F0A70
{*function sub_004F0A70(?:?; ?:Pointer; ?:?):?;
begin
 004F0A70    push        ebp
 004F0A71    mov         ebp,esp
 004F0A73    add         esp,0FFFFFFF4
 004F0A76    mov         byte ptr [ebp-9],cl
 004F0A79    mov         dword ptr [ebp-8],edx
 004F0A7C    mov         dword ptr [ebp-4],eax
 004F0A7F    mov         byte ptr [ebp-0A],0
 004F0A83    mov         al,byte ptr [ebp-9]
 004F0A86    dec         al
>004F0A88    je          004F0A98
 004F0A8A    dec         al
>004F0A8C    je          004F0AAA
 004F0A8E    dec         al
>004F0A90    je          004F0ACA
 004F0A92    dec         al
>004F0A94    je          004F0ADC
>004F0A96    jmp         004F0AFA
 004F0A98    mov         eax,dword ptr [ebp-8]
 004F0A9B    mov         eax,dword ptr [eax+44]
 004F0A9E    mov         edx,dword ptr [ebp-4]
 004F0AA1    cmp         eax,dword ptr [edx+44]
 004F0AA4    setg        byte ptr [ebp-0A]
>004F0AA8    jmp         004F0AFA
 004F0AAA    mov         eax,dword ptr [ebp-8]
 004F0AAD    mov         eax,dword ptr [eax+44]
 004F0AB0    mov         edx,dword ptr [ebp-8]
 004F0AB3    add         eax,dword ptr [edx+4C]
 004F0AB6    mov         edx,dword ptr [ebp-4]
 004F0AB9    mov         edx,dword ptr [edx+44]
 004F0ABC    mov         ecx,dword ptr [ebp-4]
 004F0ABF    add         edx,dword ptr [ecx+4C]
 004F0AC2    cmp         eax,edx
 004F0AC4    setl        byte ptr [ebp-0A]
>004F0AC8    jmp         004F0AFA
 004F0ACA    mov         eax,dword ptr [ebp-8]
 004F0ACD    mov         eax,dword ptr [eax+40]
 004F0AD0    mov         edx,dword ptr [ebp-4]
 004F0AD3    cmp         eax,dword ptr [edx+40]
 004F0AD6    setg        byte ptr [ebp-0A]
>004F0ADA    jmp         004F0AFA
 004F0ADC    mov         eax,dword ptr [ebp-8]
 004F0ADF    mov         eax,dword ptr [eax+40]
 004F0AE2    mov         edx,dword ptr [ebp-8]
 004F0AE5    add         eax,dword ptr [edx+48]
 004F0AE8    mov         edx,dword ptr [ebp-4]
 004F0AEB    mov         edx,dword ptr [edx+40]
 004F0AEE    mov         ecx,dword ptr [ebp-4]
 004F0AF1    add         edx,dword ptr [ecx+48]
 004F0AF4    cmp         eax,edx
 004F0AF6    setl        byte ptr [ebp-0A]
 004F0AFA    mov         al,byte ptr [ebp-0A]
 004F0AFD    mov         esp,ebp
 004F0AFF    pop         ebp
 004F0B00    ret
end;*}

//004F0B04
{*procedure sub_004F0B04(?:Pointer; ?:?; ?:?);
begin
 004F0B04    push        ebp
 004F0B05    mov         ebp,esp
 004F0B07    add         esp,0FFFFFFE8
 004F0B0A    push        ebx
 004F0B0B    mov         byte ptr [ebp-5],dl
 004F0B0E    mov         dword ptr [ebp-4],eax
 004F0B11    mov         eax,dword ptr [ebp+8]
 004F0B14    mov         eax,dword ptr [eax-4]
 004F0B17    mov         eax,dword ptr [eax+8]
 004F0B1A    mov         edx,dword ptr [ebp+8]
 004F0B1D    mov         edx,dword ptr [edx-4]
 004F0B20    sub         eax,dword ptr [edx]
 004F0B22    mov         dword ptr [ebp-14],eax
 004F0B25    cmp         dword ptr [ebp-14],0
>004F0B29    jl          004F0B34
 004F0B2B    mov         al,byte ptr [ebp-5]
 004F0B2E    add         al,0FD
 004F0B30    sub         al,2
>004F0B32    jae         004F0B3D
 004F0B34    mov         eax,dword ptr [ebp-4]
 004F0B37    mov         eax,dword ptr [eax+48]
 004F0B3A    mov         dword ptr [ebp-14],eax
 004F0B3D    mov         eax,dword ptr [ebp+8]
 004F0B40    mov         eax,dword ptr [eax-4]
 004F0B43    mov         eax,dword ptr [eax+0C]
 004F0B46    mov         edx,dword ptr [ebp+8]
 004F0B49    mov         edx,dword ptr [edx-4]
 004F0B4C    sub         eax,dword ptr [edx+4]
 004F0B4F    mov         dword ptr [ebp-18],eax
 004F0B52    cmp         dword ptr [ebp-18],0
>004F0B56    jl          004F0B60
 004F0B58    mov         al,byte ptr [ebp-5]
 004F0B5B    dec         eax
 004F0B5C    sub         al,2
>004F0B5E    jae         004F0B69
 004F0B60    mov         eax,dword ptr [ebp-4]
 004F0B63    mov         eax,dword ptr [eax+4C]
 004F0B66    mov         dword ptr [ebp-18],eax
 004F0B69    cmp         byte ptr [ebp-5],1
>004F0B6D    jne         004F0B9D
 004F0B6F    mov         eax,dword ptr [ebp-4]
 004F0B72    cmp         byte ptr [eax+22B],2
>004F0B79    jne         004F0B9D
 004F0B7B    mov         eax,dword ptr [ebp-4]
 004F0B7E    mov         eax,dword ptr [eax+40]
 004F0B81    mov         dword ptr [ebp-0C],eax
 004F0B84    mov         eax,dword ptr [ebp-4]
 004F0B87    mov         eax,dword ptr [eax+44]
 004F0B8A    mov         dword ptr [ebp-10],eax
 004F0B8D    push        3D
 004F0B8F    mov         eax,[0055B2BC];^gvar_0055DB78
 004F0B94    mov         eax,dword ptr [eax]
 004F0B96    call        eax
 004F0B98    mov         dword ptr [ebp-14],eax
>004F0B9B    jmp         004F0BB4
 004F0B9D    mov         eax,dword ptr [ebp+8]
 004F0BA0    mov         eax,dword ptr [eax-4]
 004F0BA3    mov         eax,dword ptr [eax]
 004F0BA5    mov         dword ptr [ebp-0C],eax
 004F0BA8    mov         eax,dword ptr [ebp+8]
 004F0BAB    mov         eax,dword ptr [eax-4]
 004F0BAE    mov         eax,dword ptr [eax+4]
 004F0BB1    mov         dword ptr [ebp-10],eax
 004F0BB4    mov         al,byte ptr [ebp-5]
 004F0BB7    dec         al
>004F0BB9    je          004F0BC9
 004F0BBB    dec         al
>004F0BBD    je          004F0BD7
 004F0BBF    dec         al
>004F0BC1    je          004F0BF1
 004F0BC3    dec         al
>004F0BC5    je          004F0BFE
>004F0BC7    jmp         004F0C16
 004F0BC9    mov         eax,dword ptr [ebp+8]
 004F0BCC    mov         eax,dword ptr [eax-4]
 004F0BCF    mov         edx,dword ptr [ebp-18]
 004F0BD2    add         dword ptr [eax+4],edx
>004F0BD5    jmp         004F0C16
 004F0BD7    mov         eax,dword ptr [ebp+8]
 004F0BDA    mov         eax,dword ptr [eax-4]
 004F0BDD    mov         edx,dword ptr [ebp-18]
 004F0BE0    sub         dword ptr [eax+0C],edx
 004F0BE3    mov         eax,dword ptr [ebp+8]
 004F0BE6    mov         eax,dword ptr [eax-4]
 004F0BE9    mov         eax,dword ptr [eax+0C]
 004F0BEC    mov         dword ptr [ebp-10],eax
>004F0BEF    jmp         004F0C16
 004F0BF1    mov         eax,dword ptr [ebp+8]
 004F0BF4    mov         eax,dword ptr [eax-4]
 004F0BF7    mov         edx,dword ptr [ebp-14]
 004F0BFA    add         dword ptr [eax],edx
>004F0BFC    jmp         004F0C16
 004F0BFE    mov         eax,dword ptr [ebp+8]
 004F0C01    mov         eax,dword ptr [eax-4]
 004F0C04    mov         edx,dword ptr [ebp-14]
 004F0C07    sub         dword ptr [eax+8],edx
 004F0C0A    mov         eax,dword ptr [ebp+8]
 004F0C0D    mov         eax,dword ptr [eax-4]
 004F0C10    mov         eax,dword ptr [eax+8]
 004F0C13    mov         dword ptr [ebp-0C],eax
 004F0C16    mov         eax,dword ptr [ebp-14]
 004F0C19    push        eax
 004F0C1A    mov         eax,dword ptr [ebp-18]
 004F0C1D    push        eax
 004F0C1E    mov         ecx,dword ptr [ebp-10]
 004F0C21    mov         edx,dword ptr [ebp-0C]
 004F0C24    mov         eax,dword ptr [ebp-4]
 004F0C27    mov         ebx,dword ptr [eax]
 004F0C29    call        dword ptr [ebx+84]
 004F0C2F    mov         eax,dword ptr [ebp-4]
 004F0C32    cmp         byte ptr [eax+22B],2
>004F0C39    jne         004F0C47
 004F0C3B    mov         eax,dword ptr [ebp-0C]
 004F0C3E    sub         dword ptr [ebp-14],eax
 004F0C41    mov         eax,dword ptr [ebp-10]
 004F0C44    sub         dword ptr [ebp-18],eax
 004F0C47    mov         eax,dword ptr [ebp-4]
 004F0C4A    mov         eax,dword ptr [eax+48]
 004F0C4D    cmp         eax,dword ptr [ebp-14]
>004F0C50    jne         004F0C61
 004F0C52    mov         eax,dword ptr [ebp-4]
 004F0C55    mov         eax,dword ptr [eax+4C]
 004F0C58    cmp         eax,dword ptr [ebp-18]
>004F0C5B    je          004F0D01
 004F0C61    xor         eax,eax
 004F0C63    mov         al,byte ptr [ebp-5]
 004F0C66    cmp         eax,5
>004F0C69    ja          004F0D01
 004F0C6F    jmp         dword ptr [eax*4+4F0C76]
 004F0C6F    dd          004F0D01
 004F0C6F    dd          004F0C8E
 004F0C6F    dd          004F0CA2
 004F0C6F    dd          004F0CB6
 004F0C6F    dd          004F0CC9
 004F0C6F    dd          004F0CDD
 004F0C8E    mov         eax,dword ptr [ebp-18]
 004F0C91    mov         edx,dword ptr [ebp-4]
 004F0C94    sub         eax,dword ptr [edx+4C]
 004F0C97    mov         edx,dword ptr [ebp+8]
 004F0C9A    mov         edx,dword ptr [edx-4]
 004F0C9D    sub         dword ptr [edx+4],eax
>004F0CA0    jmp         004F0D01
 004F0CA2    mov         eax,dword ptr [ebp-18]
 004F0CA5    mov         edx,dword ptr [ebp-4]
 004F0CA8    sub         eax,dword ptr [edx+4C]
 004F0CAB    mov         edx,dword ptr [ebp+8]
 004F0CAE    mov         edx,dword ptr [edx-4]
 004F0CB1    add         dword ptr [edx+0C],eax
>004F0CB4    jmp         004F0D01
 004F0CB6    mov         eax,dword ptr [ebp-14]
 004F0CB9    mov         edx,dword ptr [ebp-4]
 004F0CBC    sub         eax,dword ptr [edx+48]
 004F0CBF    mov         edx,dword ptr [ebp+8]
 004F0CC2    mov         edx,dword ptr [edx-4]
 004F0CC5    sub         dword ptr [edx],eax
>004F0CC7    jmp         004F0D01
 004F0CC9    mov         eax,dword ptr [ebp-14]
 004F0CCC    mov         edx,dword ptr [ebp-4]
 004F0CCF    sub         eax,dword ptr [edx+48]
 004F0CD2    mov         edx,dword ptr [ebp+8]
 004F0CD5    mov         edx,dword ptr [edx-4]
 004F0CD8    add         dword ptr [edx+8],eax
>004F0CDB    jmp         004F0D01
 004F0CDD    mov         eax,dword ptr [ebp-14]
 004F0CE0    mov         edx,dword ptr [ebp-4]
 004F0CE3    sub         eax,dword ptr [edx+48]
 004F0CE6    mov         edx,dword ptr [ebp+8]
 004F0CE9    mov         edx,dword ptr [edx-4]
 004F0CEC    add         dword ptr [edx+8],eax
 004F0CEF    mov         eax,dword ptr [ebp-18]
 004F0CF2    mov         edx,dword ptr [ebp-4]
 004F0CF5    sub         eax,dword ptr [edx+4C]
 004F0CF8    mov         edx,dword ptr [ebp+8]
 004F0CFB    mov         edx,dword ptr [edx-4]
 004F0CFE    add         dword ptr [edx+0C],eax
 004F0D01    pop         ebx
 004F0D02    mov         esp,ebp
 004F0D04    pop         ebp
 004F0D05    ret
end;*}

//004F0D08
{*procedure sub_004F0D08(?:?; ?:?);
begin
 004F0D08    push        ebp
 004F0D09    mov         ebp,esp
 004F0D0B    add         esp,0FFFFFFEC
 004F0D0E    mov         byte ptr [ebp-1],al
 004F0D11    mov         eax,dword ptr [ebp+8]
 004F0D14    mov         eax,dword ptr [eax-8]
 004F0D17    mov         edx,dword ptr [eax]
 004F0D19    call        dword ptr [edx+8]
 004F0D1C    mov         eax,dword ptr [ebp+8]
 004F0D1F    cmp         dword ptr [eax-0C],0
>004F0D23    je          004F0D77
 004F0D25    mov         eax,dword ptr [ebp+8]
 004F0D28    mov         eax,dword ptr [eax-0C]
 004F0D2B    cmp         dword ptr [eax+30],0
>004F0D2F    jne         004F0D77
 004F0D31    mov         eax,dword ptr [ebp+8]
 004F0D34    mov         eax,dword ptr [eax-0C]
 004F0D37    test        byte ptr [eax+1C],10
>004F0D3B    jne         004F0D77
 004F0D3D    mov         eax,dword ptr [ebp+8]
 004F0D40    mov         eax,dword ptr [eax-0C]
 004F0D43    cmp         byte ptr [eax+57],0
>004F0D47    je          004F0D77
 004F0D49    mov         eax,dword ptr [ebp+8]
 004F0D4C    mov         eax,dword ptr [eax-0C]
 004F0D4F    mov         al,byte ptr [eax+5B]
 004F0D52    cmp         al,byte ptr [ebp-1]
>004F0D55    jne         004F0D77
 004F0D57    mov         eax,dword ptr [ebp+8]
 004F0D5A    mov         eax,dword ptr [eax-0C]
 004F0D5D    cmp         byte ptr [eax+22B],1
>004F0D64    je          004F0D77
 004F0D66    mov         eax,dword ptr [ebp+8]
 004F0D69    mov         edx,dword ptr [eax-0C]
 004F0D6C    mov         eax,dword ptr [ebp+8]
 004F0D6F    mov         eax,dword ptr [eax-8]
 004F0D72    call        TList.Add
 004F0D77    mov         eax,dword ptr [ebp+8]
 004F0D7A    mov         eax,dword ptr [eax-10]
 004F0D7D    call        004F017C
 004F0D82    dec         eax
 004F0D83    test        eax,eax
>004F0D85    jl          004F0E41
 004F0D8B    inc         eax
 004F0D8C    mov         dword ptr [ebp-14],eax
 004F0D8F    mov         dword ptr [ebp-8],0
 004F0D96    mov         eax,dword ptr [ebp+8]
 004F0D99    mov         eax,dword ptr [eax-10]
 004F0D9C    mov         edx,dword ptr [ebp-8]
 004F0D9F    call        004F0158
 004F0DA4    mov         dword ptr [ebp-10],eax
 004F0DA7    mov         eax,dword ptr [ebp-10]
 004F0DAA    cmp         dword ptr [eax+30],0
>004F0DAE    jne         004F0E35
 004F0DB4    mov         eax,dword ptr [ebp-10]
 004F0DB7    mov         al,byte ptr [eax+5B]
 004F0DBA    cmp         al,byte ptr [ebp-1]
>004F0DBD    jne         004F0E35
 004F0DBF    mov         eax,dword ptr [ebp-10]
 004F0DC2    test        byte ptr [eax+1C],10
>004F0DC6    jne         004F0E35
 004F0DC8    mov         eax,dword ptr [ebp-10]
 004F0DCB    cmp         byte ptr [eax+57],0
>004F0DCF    je          004F0E35
 004F0DD1    mov         eax,dword ptr [ebp-10]
 004F0DD4    cmp         byte ptr [eax+22B],1
>004F0DDB    je          004F0E35
 004F0DDD    mov         eax,dword ptr [ebp+8]
 004F0DE0    mov         eax,dword ptr [eax-0C]
 004F0DE3    cmp         eax,dword ptr [ebp-10]
>004F0DE6    je          004F0E35
 004F0DE8    xor         eax,eax
 004F0DEA    mov         dword ptr [ebp-0C],eax
>004F0DED    jmp         004F0DF2
 004F0DEF    inc         dword ptr [ebp-0C]
 004F0DF2    mov         eax,dword ptr [ebp+8]
 004F0DF5    mov         eax,dword ptr [eax-8]
 004F0DF8    mov         eax,dword ptr [eax+8]
 004F0DFB    cmp         eax,dword ptr [ebp-0C]
>004F0DFE    jle         004F0E24
 004F0E00    mov         eax,dword ptr [ebp+8]
 004F0E03    push        eax
 004F0E04    mov         eax,dword ptr [ebp+8]
 004F0E07    mov         eax,dword ptr [eax-8]
 004F0E0A    mov         edx,dword ptr [ebp-0C]
 004F0E0D    call        TList.Get
 004F0E12    mov         edx,eax
 004F0E14    mov         cl,byte ptr [ebp-1]
 004F0E17    mov         eax,dword ptr [ebp-10]
 004F0E1A    call        004F0A70
 004F0E1F    pop         ecx
 004F0E20    test        al,al
>004F0E22    je          004F0DEF
 004F0E24    mov         eax,dword ptr [ebp+8]
 004F0E27    mov         eax,dword ptr [eax-8]
 004F0E2A    mov         ecx,dword ptr [ebp-10]
 004F0E2D    mov         edx,dword ptr [ebp-0C]
 004F0E30    call        004788DC
 004F0E35    inc         dword ptr [ebp-8]
 004F0E38    dec         dword ptr [ebp-14]
>004F0E3B    jne         004F0D96
 004F0E41    mov         eax,dword ptr [ebp+8]
 004F0E44    mov         eax,dword ptr [eax-8]
 004F0E47    mov         eax,dword ptr [eax+8]
 004F0E4A    dec         eax
 004F0E4B    test        eax,eax
>004F0E4D    jl          004F0E7D
 004F0E4F    inc         eax
 004F0E50    mov         dword ptr [ebp-14],eax
 004F0E53    mov         dword ptr [ebp-8],0
 004F0E5A    mov         eax,dword ptr [ebp+8]
 004F0E5D    push        eax
 004F0E5E    mov         eax,dword ptr [ebp+8]
 004F0E61    mov         eax,dword ptr [eax-8]
 004F0E64    mov         edx,dword ptr [ebp-8]
 004F0E67    call        TList.Get
 004F0E6C    mov         dl,byte ptr [ebp-1]
 004F0E6F    call        004F0B04
 004F0E74    pop         ecx
 004F0E75    inc         dword ptr [ebp-8]
 004F0E78    dec         dword ptr [ebp-14]
>004F0E7B    jne         004F0E5A
 004F0E7D    mov         esp,ebp
 004F0E7F    pop         ebp
 004F0E80    ret
end;*}

//004F0E84
{*function sub_004F0E84(?:?):?;
begin
 004F0E84    push        ebp
 004F0E85    mov         ebp,esp
 004F0E87    add         esp,0FFFFFFF4
 004F0E8A    mov         byte ptr [ebp-1],1
 004F0E8E    mov         eax,dword ptr [ebp+8]
 004F0E91    mov         eax,dword ptr [eax-10]
 004F0E94    call        004F017C
 004F0E99    dec         eax
 004F0E9A    cmp         eax,0
>004F0E9D    jl          004F0EEC
 004F0E9F    mov         dword ptr [ebp-8],eax
 004F0EA2    mov         eax,dword ptr [ebp+8]
 004F0EA5    mov         eax,dword ptr [eax-10]
 004F0EA8    mov         edx,dword ptr [ebp-8]
 004F0EAB    call        004F0158
 004F0EB0    mov         dword ptr [ebp-0C],eax
 004F0EB3    mov         eax,dword ptr [ebp-0C]
 004F0EB6    cmp         dword ptr [eax+30],0
>004F0EBA    jne         004F0EE3
 004F0EBC    mov         eax,dword ptr [ebp-0C]
 004F0EBF    test        byte ptr [eax+1C],10
>004F0EC3    jne         004F0EE3
 004F0EC5    mov         eax,dword ptr [ebp-0C]
 004F0EC8    cmp         byte ptr [eax+5B],0
>004F0ECC    je          004F0EE3
 004F0ECE    mov         eax,dword ptr [ebp-0C]
 004F0ED1    cmp         byte ptr [eax+57],0
>004F0ED5    je          004F0EE3
 004F0ED7    mov         eax,dword ptr [ebp-0C]
 004F0EDA    cmp         byte ptr [eax+22B],1
>004F0EE1    jne         004F0EF0
 004F0EE3    dec         dword ptr [ebp-8]
 004F0EE6    cmp         dword ptr [ebp-8],0FFFFFFFF
>004F0EEA    jne         004F0EA2
 004F0EEC    mov         byte ptr [ebp-1],0
 004F0EF0    mov         al,byte ptr [ebp-1]
 004F0EF3    mov         esp,ebp
 004F0EF5    pop         ebp
 004F0EF6    ret
end;*}

//004F0EF8
procedure TScreen.AlignForms(AForm:TCustomForm; var Rect:TRect);
begin
{*
 004F0EF8    push        ebp
 004F0EF9    mov         ebp,esp
 004F0EFB    add         esp,0FFFFFFF0
 004F0EFE    mov         dword ptr [ebp-4],ecx
 004F0F01    mov         dword ptr [ebp-0C],edx
 004F0F04    mov         dword ptr [ebp-10],eax
 004F0F07    push        ebp
 004F0F08    call        004F0E84
 004F0F0D    pop         ecx
 004F0F0E    test        al,al
>004F0F10    je          004F0F79
 004F0F12    mov         dl,1
 004F0F14    mov         eax,[004759C0];TList
 004F0F19    call        TObject.Create
 004F0F1E    mov         dword ptr [ebp-8],eax
 004F0F21    xor         eax,eax
 004F0F23    push        ebp
 004F0F24    push        4F0F72
 004F0F29    push        dword ptr fs:[eax]
 004F0F2C    mov         dword ptr fs:[eax],esp
 004F0F2F    push        ebp
 004F0F30    mov         al,1
 004F0F32    call        004F0D08
 004F0F37    pop         ecx
 004F0F38    push        ebp
 004F0F39    mov         al,2
 004F0F3B    call        004F0D08
 004F0F40    pop         ecx
 004F0F41    push        ebp
 004F0F42    mov         al,3
 004F0F44    call        004F0D08
 004F0F49    pop         ecx
 004F0F4A    push        ebp
 004F0F4B    mov         al,4
 004F0F4D    call        004F0D08
 004F0F52    pop         ecx
 004F0F53    push        ebp
 004F0F54    mov         al,5
 004F0F56    call        004F0D08
 004F0F5B    pop         ecx
 004F0F5C    xor         eax,eax
 004F0F5E    pop         edx
 004F0F5F    pop         ecx
 004F0F60    pop         ecx
 004F0F61    mov         dword ptr fs:[eax],edx
 004F0F64    push        4F0F79
 004F0F69    mov         eax,dword ptr [ebp-8]
 004F0F6C    call        TObject.Free
 004F0F71    ret
>004F0F72    jmp         @HandleFinally
>004F0F77    jmp         004F0F69
 004F0F79    mov         esp,ebp
 004F0F7B    pop         ebp
 004F0F7C    ret
*}
end;

//004F0F80
{*procedure sub_004F0F80(?:?; ?:TCustomForm);
begin
 004F0F80    push        ebp
 004F0F81    mov         ebp,esp
 004F0F83    add         esp,0FFFFFFE8
 004F0F86    mov         dword ptr [ebp-8],edx
 004F0F89    mov         dword ptr [ebp-4],eax
 004F0F8C    mov         eax,dword ptr [ebp-4]
 004F0F8F    cmp         word ptr [eax+8C],0
>004F0F97    je          004F0FA6
 004F0F99    mov         eax,dword ptr [ebp-4]
 004F0F9C    or          word ptr [eax+8E],10
>004F0FA4    jmp         004F1001
 004F0FA6    mov         eax,dword ptr [ebp-4]
 004F0FA9    call        004F0A10
 004F0FAE    xor         eax,eax
 004F0FB0    push        ebp
 004F0FB1    push        4F0FFA
 004F0FB6    push        dword ptr fs:[eax]
 004F0FB9    mov         dword ptr fs:[eax],esp
 004F0FBC    push        0
 004F0FBE    lea         eax,[ebp-18]
 004F0FC1    push        eax
 004F0FC2    push        0
 004F0FC4    push        30
 004F0FC6    call        user32.SystemParametersInfoA
 004F0FCB    lea         ecx,[ebp-18]
 004F0FCE    mov         edx,dword ptr [ebp-8]
 004F0FD1    mov         eax,dword ptr [ebp-4]
 004F0FD4    call        TScreen.AlignForms
 004F0FD9    xor         eax,eax
 004F0FDB    pop         edx
 004F0FDC    pop         ecx
 004F0FDD    pop         ecx
 004F0FDE    mov         dword ptr fs:[eax],edx
 004F0FE1    push        4F1001
 004F0FE6    mov         eax,dword ptr [ebp-4]
 004F0FE9    and         word ptr [eax+8E],0FFFFFFEF
 004F0FF1    mov         eax,dword ptr [ebp-4]
 004F0FF4    call        004F0A24
 004F0FF9    ret
>004F0FFA    jmp         @HandleFinally
>004F0FFF    jmp         004F0FE6
 004F1001    mov         esp,ebp
 004F1003    pop         ebp
 004F1004    ret
end;*}

//004F1008
{*procedure sub_004F1008(?:?);
begin
 004F1008    push        ebp
 004F1009    mov         ebp,esp
 004F100B    push        ecx
 004F100C    mov         dword ptr [ebp-4],eax
 004F100F    mov         eax,dword ptr [ebp-4]
 004F1012    add         eax,30
 004F1015    call        FreeAndNil
 004F101A    pop         ecx
 004F101B    pop         ebp
 004F101C    ret
end;*}

//004F1020
{*procedure sub_004F1020(?:TControl; ?:?);
begin
 004F1020    push        ebp
 004F1021    mov         ebp,esp
 004F1023    add         esp,0FFFFFFF8
 004F1026    mov         dword ptr [ebp-8],edx
 004F1029    mov         dword ptr [ebp-4],eax
 004F102C    cmp         dword ptr [ebp-4],0
>004F1030    je          004F1062
 004F1032    mov         eax,dword ptr [ebp-4]
 004F1035    cmp         dword ptr [eax+80],0
>004F103C    jne         004F1049
 004F103E    mov         eax,dword ptr [ebp-4]
 004F1041    mov         eax,dword ptr [eax+30]
 004F1044    mov         dword ptr [ebp-4],eax
>004F1047    jmp         004F105C
 004F1049    mov         eax,dword ptr [ebp-8]
 004F104C    mov         edx,dword ptr [ebp-4]
 004F104F    mov         edx,dword ptr [edx+80]
 004F1055    call        @LStrAsg
>004F105A    jmp         004F106A
 004F105C    cmp         dword ptr [ebp-4],0
>004F1060    jne         004F1032
 004F1062    mov         eax,dword ptr [ebp-8]
 004F1065    call        @LStrClr
 004F106A    pop         ecx
 004F106B    pop         ecx
 004F106C    pop         ebp
 004F106D    ret
end;*}

//004F1070
{*function sub_004F1070(?:?):?;
begin
 004F1070    push        ebp
 004F1071    mov         ebp,esp
 004F1073    add         esp,0FFFFFFF8
 004F1076    mov         dword ptr [ebp-4],eax
 004F1079    mov         eax,dword ptr [ebp-4]
 004F107C    mov         dword ptr [ebp-8],eax
>004F107F    jmp         004F108A
 004F1081    mov         eax,dword ptr [ebp-8]
 004F1084    mov         eax,dword ptr [eax+30]
 004F1087    mov         dword ptr [ebp-8],eax
 004F108A    cmp         dword ptr [ebp-8],0
>004F108E    je          004F109C
 004F1090    mov         eax,dword ptr [ebp-8]
 004F1093    cmp         byte ptr [eax+99],0
>004F109A    je          004F1081
 004F109C    cmp         dword ptr [ebp-8],0
>004F10A0    je          004F10B0
 004F10A2    mov         eax,dword ptr [ebp-8]
 004F10A5    test        byte ptr [eax+1C],10
>004F10A9    je          004F10B0
 004F10AB    xor         eax,eax
 004F10AD    mov         dword ptr [ebp-8],eax
 004F10B0    mov         eax,dword ptr [ebp-8]
 004F10B3    pop         ecx
 004F10B4    pop         ecx
 004F10B5    pop         ebp
 004F10B6    ret
end;*}

//004F10B8
procedure HintTimerProc(Wnd:HWND; Msg:Longint; TimerID:Longint; SysTime:Longint); stdcall;
begin
{*
 004F10B8    push        ebp
 004F10B9    mov         ebp,esp
 004F10BB    push        ebx
 004F10BC    push        esi
 004F10BD    push        edi
 004F10BE    cmp         dword ptr ds:[55DE4C],0;Application:TApplication
>004F10C5    je          004F1103
 004F10C7    xor         eax,eax
 004F10C9    push        ebp
 004F10CA    push        4F10E9
 004F10CF    push        dword ptr fs:[eax]
 004F10D2    mov         dword ptr fs:[eax],esp
 004F10D5    mov         eax,[0055DE4C];Application:TApplication
 004F10DA    call        TApplication.HintTimerExpired
 004F10DF    xor         eax,eax
 004F10E1    pop         edx
 004F10E2    pop         ecx
 004F10E3    pop         ecx
 004F10E4    mov         dword ptr fs:[eax],edx
>004F10E7    jmp         004F1103
>004F10E9    jmp         @HandleAnyException
 004F10EE    mov         edx,dword ptr ds:[55DE4C];Application:TApplication
 004F10F4    mov         eax,[0055DE4C];Application:TApplication
 004F10F9    call        TApplication.HandleException
 004F10FE    call        @DoneExcept
 004F1103    pop         edi
 004F1104    pop         esi
 004F1105    pop         ebx
 004F1106    pop         ebp
 004F1107    ret         10
*}
end;

//004F116C
{*function sub_004F116C(?:?; ?:?; ?:?):?;
begin
 004F116C    push        ebp
 004F116D    mov         ebp,esp
 004F116F    push        ecx
 004F1170    mov         eax,dword ptr [ebp+10]
 004F1173    push        eax
 004F1174    mov         eax,dword ptr [ebp+0C]
 004F1177    push        eax
 004F1178    mov         eax,dword ptr [ebp+8]
 004F117B    push        eax
 004F117C    mov         eax,[0055DE64];gvar_0055DE64:HHOOK
 004F1181    push        eax
 004F1182    call        user32.CallNextHookEx
 004F1187    mov         dword ptr [ebp-4],eax
 004F118A    cmp         dword ptr [ebp+8],0
>004F118E    jl          004F11A6
 004F1190    cmp         dword ptr ds:[55DE4C],0;Application:TApplication
>004F1197    je          004F11A6
 004F1199    mov         edx,dword ptr [ebp+10]
 004F119C    mov         eax,[0055DE4C];Application:TApplication
 004F11A1    call        004F2A74
 004F11A6    mov         eax,dword ptr [ebp-4]
 004F11A9    pop         ecx
 004F11AA    pop         ebp
 004F11AB    ret         0C
end;*}

//004F11B0
procedure sub_004F11B0;
begin
{*
 004F11B0    push        ebp
 004F11B1    mov         ebp,esp
 004F11B3    push        ecx
 004F11B4    mov         eax,[0055DE4C];Application:TApplication
 004F11B9    cmp         byte ptr [eax+0A5],0
>004F11C0    jne         004F1227
 004F11C2    cmp         dword ptr ds:[55DE64],0;gvar_0055DE64:HHOOK
>004F11C9    jne         004F11E5
 004F11CB    call        kernel32.GetCurrentThreadId
 004F11D0    push        eax
 004F11D1    push        0
 004F11D3    mov         eax,4F116C;sub_004F116C
 004F11D8    push        eax
 004F11D9    push        3
 004F11DB    call        user32.SetWindowsHookExA
 004F11E0    mov         [0055DE64],eax;gvar_0055DE64:HHOOK
 004F11E5    cmp         dword ptr ds:[55DE60],0;gvar_0055DE60:THandle
>004F11EC    jne         004F1200
 004F11EE    push        0
 004F11F0    push        0
 004F11F2    push        0
 004F11F4    push        0
 004F11F6    call        kernel32.CreateEventA
 004F11FB    mov         [0055DE60],eax;gvar_0055DE60:THandle
 004F1200    cmp         dword ptr ds:[55DE68],0;gvar_0055DE68:THandle
>004F1207    jne         004F1227
 004F1209    lea         eax,[ebp-4]
 004F120C    push        eax
 004F120D    push        0
 004F120F    push        0
 004F1211    push        4F110C
 004F1216    push        3E8
 004F121B    push        0
 004F121D    call        kernel32.CreateThread
 004F1222    mov         [0055DE68],eax;gvar_0055DE68:THandle
 004F1227    pop         ecx
 004F1228    pop         ebp
 004F1229    ret
*}
end;

//004F122C
procedure UnhookHintHooks;
begin
{*
 004F122C    cmp         dword ptr ds:[55DE64],0;gvar_0055DE64:HHOOK
>004F1233    je          004F1240
 004F1235    mov         eax,[0055DE64];gvar_0055DE64:HHOOK
 004F123A    push        eax
 004F123B    call        user32.UnhookWindowsHookEx
 004F1240    xor         eax,eax
 004F1242    mov         [0055DE64],eax;gvar_0055DE64:HHOOK
 004F1247    cmp         dword ptr ds:[55DE68],0;gvar_0055DE68:THandle
>004F124E    je          004F1287
 004F1250    mov         eax,[0055DE60];gvar_0055DE60:THandle
 004F1255    push        eax
 004F1256    call        kernel32.SetEvent
 004F125B    call        kernel32.GetCurrentThreadId
 004F1260    cmp         eax,dword ptr ds:[55DE5C]
>004F1266    je          004F1275
 004F1268    push        0FF
 004F126A    mov         eax,[0055DE68];gvar_0055DE68:THandle
 004F126F    push        eax
 004F1270    call        kernel32.WaitForSingleObject
 004F1275    mov         eax,[0055DE68];gvar_0055DE68:THandle
 004F127A    push        eax
 004F127B    call        kernel32.CloseHandle
 004F1280    xor         eax,eax
 004F1282    mov         [0055DE68],eax;gvar_0055DE68:THandle
 004F1287    ret
*}
end;

//004F1288
{*function sub_004F1288:?;
begin
 004F1288    push        ebp
 004F1289    mov         ebp,esp
 004F128B    add         esp,0FFFFFFF4
 004F128E    mov         dword ptr [ebp-9],8
 004F1295    push        0
 004F1297    lea         eax,[ebp-9]
 004F129A    push        eax
 004F129B    push        8
 004F129D    push        48
 004F129F    call        user32.SystemParametersInfoA
 004F12A4    test        eax,eax
>004F12A6    je          004F12B2
 004F12A8    cmp         dword ptr [ebp-5],0
 004F12AC    setne       byte ptr [ebp-1]
>004F12B0    jmp         004F12B6
 004F12B2    mov         byte ptr [ebp-1],0
 004F12B6    mov         al,byte ptr [ebp-1]
 004F12B9    mov         esp,ebp
 004F12BB    pop         ebp
 004F12BC    ret
end;*}

//004F12C0
{*procedure sub_004F12C0(?:?);
begin
 004F12C0    push        ebp
 004F12C1    mov         ebp,esp
 004F12C3    add         esp,0FFFFFFF4
 004F12C6    mov         byte ptr [ebp-1],al
 004F12C9    mov         dword ptr [ebp-9],8
 004F12D0    cmp         byte ptr [ebp-1],1
 004F12D4    cmc
 004F12D5    sbb         eax,eax
 004F12D7    mov         dword ptr [ebp-5],eax
 004F12DA    push        0
 004F12DC    lea         eax,[ebp-9]
 004F12DF    push        eax
 004F12E0    push        8
 004F12E2    push        49
 004F12E4    call        user32.SystemParametersInfoA
 004F12E9    mov         esp,ebp
 004F12EB    pop         ebp
 004F12EC    ret
end;*}

//004F12F0
{*procedure sub_004F12F0(?:?; ?:?);
begin
 004F12F0    push        ebp
 004F12F1    mov         ebp,esp
 004F12F3    add         esp,0FFFFFFF4
 004F12F6    mov         dword ptr [ebp-8],edx
 004F12F9    mov         dword ptr [ebp-4],eax
 004F12FC    call        004F1288
 004F1301    mov         byte ptr [ebp-9],al
 004F1304    cmp         byte ptr [ebp-9],0
>004F1308    je          004F1311
 004F130A    xor         eax,eax
 004F130C    call        004F12C0
 004F1311    mov         eax,dword ptr [ebp-8]
 004F1314    push        eax
 004F1315    mov         eax,dword ptr [ebp-4]
 004F1318    push        eax
 004F1319    call        user32.ShowWindow
 004F131E    cmp         byte ptr [ebp-9],0
>004F1322    je          004F132B
 004F1324    mov         al,1
 004F1326    call        004F12C0
 004F132B    mov         esp,ebp
 004F132D    pop         ebp
 004F132E    ret
end;*}

//004F1330
{*function sub_004F1330(?:TScreen; ?:?; ?:?):?;
begin
 004F1330    push        ebp
 004F1331    mov         ebp,esp
 004F1333    add         esp,0FFFFFFF0
 004F1336    mov         byte ptr [ebp-9],cl
 004F1339    mov         dword ptr [ebp-8],edx
 004F133C    mov         dword ptr [ebp-4],eax
 004F133F    xor         eax,eax
 004F1341    mov         al,byte ptr [ebp-9]
 004F1344    mov         eax,dword ptr [eax*4+5419AC]
 004F134B    push        eax
 004F134C    mov         eax,dword ptr [ebp-8]
 004F134F    push        dword ptr [eax+4]
 004F1352    push        dword ptr [eax]
 004F1354    mov         eax,[0055B5B8];^gvar_0055DB84
 004F1359    mov         eax,dword ptr [eax]
 004F135B    call        eax
 004F135D    mov         edx,eax
 004F135F    mov         eax,dword ptr [ebp-4]
 004F1362    call        004F0408
 004F1367    mov         dword ptr [ebp-10],eax
 004F136A    mov         eax,dword ptr [ebp-10]
 004F136D    mov         esp,ebp
 004F136F    pop         ebp
 004F1370    ret
end;*}

//004F1374
{*function sub_004F1374(?:TScreen; ?:TPoint; ?:?):?;
begin
 004F1374    push        ebp
 004F1375    mov         ebp,esp
 004F1377    add         esp,0FFFFFFF0
 004F137A    mov         byte ptr [ebp-9],cl
 004F137D    mov         dword ptr [ebp-8],edx
 004F1380    mov         dword ptr [ebp-4],eax
 004F1383    xor         eax,eax
 004F1385    mov         al,byte ptr [ebp-9]
 004F1388    mov         eax,dword ptr [eax*4+5419AC]
 004F138F    push        eax
 004F1390    mov         eax,dword ptr [ebp-8]
 004F1393    push        eax
 004F1394    mov         eax,[0055B0E8];^gvar_0055DB80
 004F1399    mov         eax,dword ptr [eax]
 004F139B    call        eax
 004F139D    mov         edx,eax
 004F139F    mov         eax,dword ptr [ebp-4]
 004F13A2    call        004F0408
 004F13A7    mov         dword ptr [ebp-10],eax
 004F13AA    mov         eax,dword ptr [ebp-10]
 004F13AD    mov         esp,ebp
 004F13AF    pop         ebp
 004F13B0    ret
end;*}

//004F13B4
constructor _NF__A5A;
begin
{*
 004F13B4    push        esp
 004F13B5    inc         ecx
>004F13B6    jo          004F1428
 004F13B8    ins         byte ptr [edi],dl
 004F13B9    imul        esp,dword ptr [ebx+61],6E6F6974
 004F13C0    add         byte ptr [eax],al
 004F13C2    add         byte ptr [eax],al
 004F13C4    push        ebp
 004F13C5    mov         ebp,esp
 004F13C7    add         esp,0FFFFFEF0
 004F13CD    test        dl,dl
>004F13CF    je          004F13D9
 004F13D1    add         esp,0FFFFFFF0
 004F13D4    call        @ClassCreate
 004F13D9    mov         dword ptr [ebp-0C],ecx
 004F13DC    mov         byte ptr [ebp-5],dl
 004F13DF    mov         dword ptr [ebp-4],eax
 004F13E2    mov         ecx,dword ptr [ebp-0C]
 004F13E5    xor         edx,edx
 004F13E7    mov         eax,dword ptr [ebp-4]
 004F13EA    call        00482F04
 004F13EF    mov         eax,[0055B3E0];^gvar_00540CE0
 004F13F4    cmp         word ptr [eax+2],0
>004F13F9    jne         004F140C
 004F13FB    mov         eax,[0055B3E0];^gvar_00540CE0
 004F1400    mov         edx,dword ptr [ebp-4]
 004F1403    mov         dword ptr [eax+4],edx
 004F1406    mov         dword ptr [eax],4F2F1C;TApplication.HandleException
 004F140C    mov         eax,[0055B4F8];^gvar_00540CE8
 004F1411    cmp         word ptr [eax+2],0
>004F1416    jne         004F1429
 004F1418    mov         eax,[0055B4F8];^gvar_00540CE8
 004F141D    mov         edx,dword ptr [ebp-4]
 004F1420    mov         dword ptr [eax+4],edx
 004F1423    mov         dword ptr [eax],4F3124;sub_004F3124
 004F1429    mov         eax,dword ptr [ebp-4]
 004F142C    mov         byte ptr [eax+34],0;TApplication.FBiDiMode:TBiDiMode
 004F1430    mov         dl,1
 004F1432    mov         eax,[004759C0];TList
 004F1437    call        TObject.Create;TList.Create
 004F143C    mov         edx,dword ptr [ebp-4]
 004F143F    mov         dword ptr [edx+90],eax;TApplication.FTopMostList:TList
 004F1445    mov         dl,1
 004F1447    mov         eax,[004759C0];TList
 004F144C    call        TObject.Create;TList.Create
 004F1451    mov         edx,dword ptr [ebp-4]
 004F1454    mov         dword ptr [edx+0A8],eax;TApplication.FWindowHooks:TList
 004F145A    mov         eax,dword ptr [ebp-4]
 004F145D    xor         edx,edx
 004F145F    mov         dword ptr [eax+60],edx;TApplication.FHintControl:TControl
 004F1462    mov         eax,dword ptr [ebp-4]
 004F1465    xor         edx,edx
 004F1467    mov         dword ptr [eax+84],edx;TApplication.FHintWindow:THintWindow
 004F146D    mov         eax,dword ptr [ebp-4]
 004F1470    mov         dword ptr [eax+5C],0FF000018;TApplication.FHintColor:TColor
 004F1477    mov         eax,dword ptr [ebp-4]
 004F147A    mov         dword ptr [eax+78],1F4;TApplication.FHintPause:Integer
 004F1481    mov         eax,dword ptr [ebp-4]
 004F1484    mov         byte ptr [eax+7C],1;TApplication.FHintShortCuts:Boolean
 004F1488    mov         eax,dword ptr [ebp-4]
 004F148B    xor         edx,edx
 004F148D    mov         dword ptr [eax+80],edx;TApplication.FHintShortPause:Integer
 004F1493    mov         eax,dword ptr [ebp-4]
 004F1496    mov         dword ptr [eax+74],9C4;TApplication.FHintHidePause:Integer
 004F149D    mov         eax,dword ptr [ebp-4]
 004F14A0    mov         byte ptr [eax+88],0;TApplication.FShowHint:Boolean
 004F14A7    mov         eax,dword ptr [ebp-4]
 004F14AA    mov         byte ptr [eax+9D],1;TApplication.FActive:Boolean
 004F14B1    mov         eax,dword ptr [ebp-4]
 004F14B4    mov         byte ptr [eax+0B4],1;TApplication.FAutoDragDocking:Boolean
 004F14BB    mov         dl,1
 004F14BD    mov         eax,[00485DB0];TIcon
 004F14C2    call        TIcon.Create;TIcon.Create
 004F14C7    mov         edx,dword ptr [ebp-4]
 004F14CA    mov         dword ptr [edx+98],eax;TApplication.FIcon:TIcon
 004F14D0    push        4F1608;'MAINICON'
 004F14D5    mov         eax,[0055B29C];^gvar_0055C02C
 004F14DA    mov         eax,dword ptr [eax]
 004F14DC    push        eax
 004F14DD    call        user32.LoadIconA
 004F14E2    mov         edx,eax
 004F14E4    mov         eax,dword ptr [ebp-4]
 004F14E7    mov         eax,dword ptr [eax+98];TApplication.FIcon:TIcon
 004F14ED    call        0048F4E4
 004F14F2    mov         eax,dword ptr [ebp-4]
 004F14F5    mov         eax,dword ptr [eax+98];TApplication.FIcon:TIcon
 004F14FB    mov         edx,dword ptr [ebp-4]
 004F14FE    mov         dword ptr [eax+14],edx;TIcon.?f14:TCustomForm
 004F1501    mov         dword ptr [eax+10],4F3800;TIcon.FOnChange:TNotifyEvent sub_004F3800
 004F1508    push        100
 004F150D    lea         eax,[ebp-110]
 004F1513    push        eax
 004F1514    mov         eax,[0055B29C];^gvar_0055C02C
 004F1519    mov         eax,dword ptr [eax]
 004F151B    push        eax
 004F151C    call        kernel32.GetModuleFileNameA
 004F1521    lea         eax,[ebp-110]
 004F1527    push        eax
 004F1528    lea         eax,[ebp-110]
 004F152E    push        eax
 004F152F    call        user32.OemToCharA
 004F1534    lea         eax,[ebp-110]
 004F153A    mov         dl,5C
 004F153C    call        0046BBD8
 004F1541    mov         dword ptr [ebp-10],eax
 004F1544    cmp         dword ptr [ebp-10],0
>004F1548    je          004F1559
 004F154A    mov         edx,dword ptr [ebp-10]
 004F154D    inc         edx
 004F154E    lea         eax,[ebp-110]
 004F1554    call        StrCopy
 004F1559    lea         eax,[ebp-110]
 004F155F    mov         dl,2E
 004F1561    call        0046BC28
 004F1566    mov         dword ptr [ebp-10],eax
 004F1569    cmp         dword ptr [ebp-10],0
>004F156D    je          004F1575
 004F156F    mov         eax,dword ptr [ebp-10]
 004F1572    mov         byte ptr [eax],0
 004F1575    lea         eax,[ebp-110]
 004F157B    inc         eax
 004F157C    push        eax
 004F157D    call        user32.CharLowerA
 004F1582    mov         eax,dword ptr [ebp-4]
 004F1585    add         eax,8C;TApplication.FTitle:String
 004F158A    lea         edx,[ebp-110]
 004F1590    mov         ecx,100
 004F1595    call        @LStrFromArray
 004F159A    mov         eax,[0055B0D8];^gvar_0055C034
 004F159F    cmp         byte ptr [eax],0
>004F15A2    jne         004F15AC
 004F15A4    mov         eax,dword ptr [ebp-4]
 004F15A7    call        004F1774
 004F15AC    mov         eax,dword ptr [ebp-4]
 004F15AF    mov         byte ptr [eax+59],1;TApplication.FUpdateFormatSettings:Boolean
 004F15B3    mov         eax,dword ptr [ebp-4]
 004F15B6    mov         byte ptr [eax+5A],1;TApplication.FUpdateMetricSettings:Boolean
 004F15BA    mov         eax,dword ptr [ebp-4]
 004F15BD    mov         byte ptr [eax+5B],1;TApplication.FShowMainForm:Boolean
 004F15C1    mov         eax,dword ptr [ebp-4]
 004F15C4    mov         byte ptr [eax+9E],1;TApplication.FAllowTesting:Boolean
 004F15CB    mov         eax,dword ptr [ebp-4]
 004F15CE    xor         edx,edx
 004F15D0    mov         dword ptr [eax+0A0],edx;TApplication.FTestLib:THandle
 004F15D6    mov         eax,dword ptr [ebp-4]
 004F15D9    call        004F3A28
 004F15DE    mov         eax,dword ptr [ebp-4]
 004F15E1    call        004F459C
 004F15E6    mov         eax,dword ptr [ebp-4]
 004F15E9    cmp         byte ptr [ebp-5],0
>004F15ED    je          004F15FE
 004F15EF    call        @AfterConstruction
 004F15F4    pop         dword ptr fs:[0]
 004F15FB    add         esp,0C
 004F15FE    mov         eax,dword ptr [ebp-4]
 004F1601    mov         esp,ebp
 004F1603    pop         ebp
 004F1604    ret
*}
end;

//004F13C4
constructor sub_004F13C4;
begin
{*
 004F13C4    push        ebp
 004F13C5    mov         ebp,esp
 004F13C7    add         esp,0FFFFFEF0
 004F13CD    test        dl,dl
>004F13CF    je          004F13D9
 004F13D1    add         esp,0FFFFFFF0
 004F13D4    call        @ClassCreate
 004F13D9    mov         dword ptr [ebp-0C],ecx
 004F13DC    mov         byte ptr [ebp-5],dl
 004F13DF    mov         dword ptr [ebp-4],eax
 004F13E2    mov         ecx,dword ptr [ebp-0C]
 004F13E5    xor         edx,edx
 004F13E7    mov         eax,dword ptr [ebp-4]
 004F13EA    call        00482F04
 004F13EF    mov         eax,[0055B3E0];^gvar_00540CE0
 004F13F4    cmp         word ptr [eax+2],0
>004F13F9    jne         004F140C
 004F13FB    mov         eax,[0055B3E0];^gvar_00540CE0
 004F1400    mov         edx,dword ptr [ebp-4]
 004F1403    mov         dword ptr [eax+4],edx
 004F1406    mov         dword ptr [eax],4F2F1C;TApplication.HandleException
 004F140C    mov         eax,[0055B4F8];^gvar_00540CE8
 004F1411    cmp         word ptr [eax+2],0
>004F1416    jne         004F1429
 004F1418    mov         eax,[0055B4F8];^gvar_00540CE8
 004F141D    mov         edx,dword ptr [ebp-4]
 004F1420    mov         dword ptr [eax+4],edx
 004F1423    mov         dword ptr [eax],4F3124;sub_004F3124
 004F1429    mov         eax,dword ptr [ebp-4]
 004F142C    mov         byte ptr [eax+34],0;TApplication.FBiDiMode:TBiDiMode
 004F1430    mov         dl,1
 004F1432    mov         eax,[004759C0];TList
 004F1437    call        TObject.Create;TList.Create
 004F143C    mov         edx,dword ptr [ebp-4]
 004F143F    mov         dword ptr [edx+90],eax;TApplication.FTopMostList:TList
 004F1445    mov         dl,1
 004F1447    mov         eax,[004759C0];TList
 004F144C    call        TObject.Create;TList.Create
 004F1451    mov         edx,dword ptr [ebp-4]
 004F1454    mov         dword ptr [edx+0A8],eax;TApplication.FWindowHooks:TList
 004F145A    mov         eax,dword ptr [ebp-4]
 004F145D    xor         edx,edx
 004F145F    mov         dword ptr [eax+60],edx;TApplication.FHintControl:TControl
 004F1462    mov         eax,dword ptr [ebp-4]
 004F1465    xor         edx,edx
 004F1467    mov         dword ptr [eax+84],edx;TApplication.FHintWindow:THintWindow
 004F146D    mov         eax,dword ptr [ebp-4]
 004F1470    mov         dword ptr [eax+5C],0FF000018;TApplication.FHintColor:TColor
 004F1477    mov         eax,dword ptr [ebp-4]
 004F147A    mov         dword ptr [eax+78],1F4;TApplication.FHintPause:Integer
 004F1481    mov         eax,dword ptr [ebp-4]
 004F1484    mov         byte ptr [eax+7C],1;TApplication.FHintShortCuts:Boolean
 004F1488    mov         eax,dword ptr [ebp-4]
 004F148B    xor         edx,edx
 004F148D    mov         dword ptr [eax+80],edx;TApplication.FHintShortPause:Integer
 004F1493    mov         eax,dword ptr [ebp-4]
 004F1496    mov         dword ptr [eax+74],9C4;TApplication.FHintHidePause:Integer
 004F149D    mov         eax,dword ptr [ebp-4]
 004F14A0    mov         byte ptr [eax+88],0;TApplication.FShowHint:Boolean
 004F14A7    mov         eax,dword ptr [ebp-4]
 004F14AA    mov         byte ptr [eax+9D],1;TApplication.FActive:Boolean
 004F14B1    mov         eax,dword ptr [ebp-4]
 004F14B4    mov         byte ptr [eax+0B4],1;TApplication.FAutoDragDocking:Boolean
 004F14BB    mov         dl,1
 004F14BD    mov         eax,[00485DB0];TIcon
 004F14C2    call        TIcon.Create;TIcon.Create
 004F14C7    mov         edx,dword ptr [ebp-4]
 004F14CA    mov         dword ptr [edx+98],eax;TApplication.FIcon:TIcon
 004F14D0    push        4F1608;'MAINICON'
 004F14D5    mov         eax,[0055B29C];^gvar_0055C02C
 004F14DA    mov         eax,dword ptr [eax]
 004F14DC    push        eax
 004F14DD    call        user32.LoadIconA
 004F14E2    mov         edx,eax
 004F14E4    mov         eax,dword ptr [ebp-4]
 004F14E7    mov         eax,dword ptr [eax+98];TApplication.FIcon:TIcon
 004F14ED    call        0048F4E4
 004F14F2    mov         eax,dword ptr [ebp-4]
 004F14F5    mov         eax,dword ptr [eax+98];TApplication.FIcon:TIcon
 004F14FB    mov         edx,dword ptr [ebp-4]
 004F14FE    mov         dword ptr [eax+14],edx;TIcon.?f14:TCustomForm
 004F1501    mov         dword ptr [eax+10],4F3800;TIcon.FOnChange:TNotifyEvent sub_004F3800
 004F1508    push        100
 004F150D    lea         eax,[ebp-110]
 004F1513    push        eax
 004F1514    mov         eax,[0055B29C];^gvar_0055C02C
 004F1519    mov         eax,dword ptr [eax]
 004F151B    push        eax
 004F151C    call        kernel32.GetModuleFileNameA
 004F1521    lea         eax,[ebp-110]
 004F1527    push        eax
 004F1528    lea         eax,[ebp-110]
 004F152E    push        eax
 004F152F    call        user32.OemToCharA
 004F1534    lea         eax,[ebp-110]
 004F153A    mov         dl,5C
 004F153C    call        0046BBD8
 004F1541    mov         dword ptr [ebp-10],eax
 004F1544    cmp         dword ptr [ebp-10],0
>004F1548    je          004F1559
 004F154A    mov         edx,dword ptr [ebp-10]
 004F154D    inc         edx
 004F154E    lea         eax,[ebp-110]
 004F1554    call        StrCopy
 004F1559    lea         eax,[ebp-110]
 004F155F    mov         dl,2E
 004F1561    call        0046BC28
 004F1566    mov         dword ptr [ebp-10],eax
 004F1569    cmp         dword ptr [ebp-10],0
>004F156D    je          004F1575
 004F156F    mov         eax,dword ptr [ebp-10]
 004F1572    mov         byte ptr [eax],0
 004F1575    lea         eax,[ebp-110]
 004F157B    inc         eax
 004F157C    push        eax
 004F157D    call        user32.CharLowerA
 004F1582    mov         eax,dword ptr [ebp-4]
 004F1585    add         eax,8C;TApplication.FTitle:String
 004F158A    lea         edx,[ebp-110]
 004F1590    mov         ecx,100
 004F1595    call        @LStrFromArray
 004F159A    mov         eax,[0055B0D8];^gvar_0055C034
 004F159F    cmp         byte ptr [eax],0
>004F15A2    jne         004F15AC
 004F15A4    mov         eax,dword ptr [ebp-4]
 004F15A7    call        004F1774
 004F15AC    mov         eax,dword ptr [ebp-4]
 004F15AF    mov         byte ptr [eax+59],1;TApplication.FUpdateFormatSettings:Boolean
 004F15B3    mov         eax,dword ptr [ebp-4]
 004F15B6    mov         byte ptr [eax+5A],1;TApplication.FUpdateMetricSettings:Boolean
 004F15BA    mov         eax,dword ptr [ebp-4]
 004F15BD    mov         byte ptr [eax+5B],1;TApplication.FShowMainForm:Boolean
 004F15C1    mov         eax,dword ptr [ebp-4]
 004F15C4    mov         byte ptr [eax+9E],1;TApplication.FAllowTesting:Boolean
 004F15CB    mov         eax,dword ptr [ebp-4]
 004F15CE    xor         edx,edx
 004F15D0    mov         dword ptr [eax+0A0],edx;TApplication.FTestLib:THandle
 004F15D6    mov         eax,dword ptr [ebp-4]
 004F15D9    call        004F3A28
 004F15DE    mov         eax,dword ptr [ebp-4]
 004F15E1    call        004F459C
 004F15E6    mov         eax,dword ptr [ebp-4]
 004F15E9    cmp         byte ptr [ebp-5],0
>004F15ED    je          004F15FE
 004F15EF    call        @AfterConstruction
 004F15F4    pop         dword ptr fs:[0]
 004F15FB    add         esp,0C
 004F15FE    mov         eax,dword ptr [ebp-4]
 004F1601    mov         esp,ebp
 004F1603    pop         ebp
 004F1604    ret
*}
end;

//004F1614
destructor TApplication.Destroy;
begin
{*
 004F1614    push        ebp
 004F1615    mov         ebp,esp
 004F1617    add         esp,0FFFFFFE8
 004F161A    call        @BeforeDestruction
 004F161F    mov         byte ptr [ebp-5],dl
 004F1622    mov         dword ptr [ebp-4],eax
 004F1625    mov         eax,dword ptr [ebp-4]
 004F1628    call        004F45B8
 004F162D    mov         eax,dword ptr [ebp-4]
 004F1630    mov         dword ptr [ebp-0C],eax
 004F1633    mov         dword ptr [ebp-10],4F2F1C;TApplication.HandleException
 004F163A    mov         eax,[0055B3E0];^gvar_00540CE0
 004F163F    mov         eax,dword ptr [eax]
 004F1641    cmp         eax,dword ptr [ebp-10]
>004F1644    jne         004F1652
 004F1646    mov         eax,[0055B3E0];^gvar_00540CE0
 004F164B    xor         edx,edx
 004F164D    mov         dword ptr [eax],edx
 004F164F    mov         dword ptr [eax+4],edx
 004F1652    mov         eax,dword ptr [ebp-4]
 004F1655    mov         dword ptr [ebp-14],eax
 004F1658    mov         dword ptr [ebp-18],4F3124;sub_004F3124
 004F165F    mov         eax,[0055B4F8];^gvar_00540CE8
 004F1664    mov         eax,dword ptr [eax]
 004F1666    cmp         eax,dword ptr [ebp-18]
>004F1669    jne         004F1677
 004F166B    mov         eax,[0055B4F8];^gvar_00540CE8
 004F1670    xor         edx,edx
 004F1672    mov         dword ptr [eax],edx
 004F1674    mov         dword ptr [eax+4],edx
 004F1677    mov         eax,dword ptr [ebp-4]
 004F167A    cmp         dword ptr [eax+0A0],0
>004F1681    je          004F1692
 004F1683    mov         eax,dword ptr [ebp-4]
 004F1686    mov         eax,dword ptr [eax+0A0]
 004F168C    push        eax
 004F168D    call        kernel32.FreeLibrary
 004F1692    mov         eax,dword ptr [ebp-4]
 004F1695    mov         byte ptr [eax+9D],0
 004F169C    mov         eax,dword ptr [ebp-4]
 004F169F    call        004F3CC8
 004F16A4    xor         edx,edx
 004F16A6    mov         eax,dword ptr [ebp-4]
 004F16A9    call        004F34E8
 004F16AE    mov         dl,byte ptr [ebp-5]
 004F16B1    and         dl,0FC
 004F16B4    mov         eax,dword ptr [ebp-4]
 004F16B7    call        TComponent.Destroy
 004F16BC    mov         eax,dword ptr [ebp-4]
 004F16BF    push        eax
 004F16C0    push        4F1CD8;sub_004F1CD8
 004F16C5    mov         eax,dword ptr [ebp-4]
 004F16C8    call        004F2CA0
 004F16CD    mov         eax,dword ptr [ebp-4]
 004F16D0    cmp         dword ptr [eax+30],0
>004F16D4    je          004F170D
 004F16D6    mov         eax,dword ptr [ebp-4]
 004F16D9    cmp         byte ptr [eax+0A4],0
>004F16E0    je          004F170D
 004F16E2    mov         eax,[0055B36C];^NewStyleControls:Boolean
 004F16E7    cmp         byte ptr [eax],0
>004F16EA    je          004F1701
 004F16EC    push        0
 004F16EE    push        1
 004F16F0    push        80
 004F16F5    mov         eax,dword ptr [ebp-4]
 004F16F8    mov         eax,dword ptr [eax+30]
 004F16FB    push        eax
 004F16FC    call        user32.SendMessageA
 004F1701    mov         eax,dword ptr [ebp-4]
 004F1704    mov         eax,dword ptr [eax+30]
 004F1707    push        eax
 004F1708    call        user32.DestroyWindow
 004F170D    mov         eax,dword ptr [ebp-4]
 004F1710    cmp         dword ptr [eax+4C],0
>004F1714    je          004F1721
 004F1716    mov         eax,dword ptr [ebp-4]
 004F1719    add         eax,4C
 004F171C    call        @IntfClear
 004F1721    mov         eax,dword ptr [ebp-4]
 004F1724    cmp         dword ptr [eax+40],0
>004F1728    je          004F1735
 004F172A    mov         eax,dword ptr [ebp-4]
 004F172D    mov         eax,dword ptr [eax+40]
 004F1730    call        004847E0
 004F1735    mov         eax,dword ptr [ebp-4]
 004F1738    mov         eax,dword ptr [eax+0A8]
 004F173E    call        TObject.Free
 004F1743    mov         eax,dword ptr [ebp-4]
 004F1746    mov         eax,dword ptr [eax+90]
 004F174C    call        TObject.Free
 004F1751    mov         eax,dword ptr [ebp-4]
 004F1754    mov         eax,dword ptr [eax+98]
 004F175A    call        TObject.Free
 004F175F    cmp         byte ptr [ebp-5],0
>004F1763    jle         004F176D
 004F1765    mov         eax,dword ptr [ebp-4]
 004F1768    call        @ClassDestroy
 004F176D    mov         esp,ebp
 004F176F    pop         ebp
 004F1770    ret
*}
end;

//004F1774
procedure sub_004F1774(?:TApplication);
begin
{*
 004F1774    push        ebp
 004F1775    mov         ebp,esp
 004F1777    add         esp,0FFFFFFCC
 004F177A    xor         edx,edx
 004F177C    mov         dword ptr [ebp-34],edx
 004F177F    mov         dword ptr [ebp-4],eax
 004F1782    xor         eax,eax
 004F1784    push        ebp
 004F1785    push        4F1944
 004F178A    push        dword ptr fs:[eax]
 004F178D    mov         dword ptr fs:[eax],esp
 004F1790    mov         eax,dword ptr [ebp-4]
 004F1793    cmp         byte ptr [eax+0A4],0;TApplication.FHandleCreated:Boolean
>004F179A    jne         004F192E
 004F17A0    mov         eax,[0055B570];^gvar_0055C048
 004F17A5    cmp         byte ptr [eax],0
>004F17A8    jne         004F192E
 004F17AE    mov         eax,dword ptr [ebp-4]
 004F17B1    push        eax
 004F17B2    push        4F1E50;sub_004F1E50
 004F17B7    call        00484700
 004F17BC    mov         edx,dword ptr [ebp-4]
 004F17BF    mov         dword ptr [edx+40],eax;TApplication.FObjectInstance:Pointer
 004F17C2    mov         eax,407AE4;user32.DefWindowProcA:Longint
 004F17C7    mov         [005419BC],eax;^user32.DefWindowProcA:Longint
 004F17CC    lea         eax,[ebp-30]
 004F17CF    push        eax
 004F17D0    mov         eax,[005419DC];^_NF__A5A
 004F17D5    push        eax
 004F17D6    mov         eax,[0055C664];gvar_0055C664
 004F17DB    push        eax
 004F17DC    call        user32.GetClassInfoA
 004F17E1    test        eax,eax
>004F17E3    jne         004F181F
 004F17E5    mov         eax,[0055C664];gvar_0055C664
 004F17EA    mov         [005419C8],eax;gvar_005419C8
 004F17EF    push        5419B8
 004F17F4    call        user32.RegisterClassA
 004F17F9    test        ax,ax
>004F17FC    jne         004F181F
 004F17FE    lea         edx,[ebp-34]
 004F1801    mov         eax,[0055B1A4];^SWindowClass:TResStringRec
 004F1806    call        LoadResString
 004F180B    mov         ecx,dword ptr [ebp-34]
 004F180E    mov         dl,1
 004F1810    mov         eax,[00475904];EOutOfResources
 004F1815    call        Exception.Create;EOutOfResources.Create
 004F181A    call        @RaiseExcept
 004F181F    push        0
 004F1821    mov         eax,[0055B2BC];^gvar_0055DB78
 004F1826    mov         eax,dword ptr [eax]
 004F1828    call        eax
 004F182A    sar         eax,1
>004F182C    jns         004F1831
 004F182E    adc         eax,0
 004F1831    push        eax
 004F1832    push        1
 004F1834    mov         eax,[0055B2BC];^gvar_0055DB78
 004F1839    mov         eax,dword ptr [eax]
 004F183B    call        eax
 004F183D    sar         eax,1
>004F183F    jns         004F1844
 004F1841    adc         eax,0
 004F1844    push        eax
 004F1845    push        0
 004F1847    push        0
 004F1849    push        0
 004F184B    push        0
 004F184D    mov         eax,[0055C664];gvar_0055C664
 004F1852    push        eax
 004F1853    push        0
 004F1855    mov         eax,dword ptr [ebp-4]
 004F1858    mov         eax,dword ptr [eax+8C];TApplication.FTitle:String
 004F185E    call        @LStrToPChar
 004F1863    mov         edx,eax
 004F1865    mov         ecx,84CA0000
 004F186A    mov         eax,[005419DC];^_NF__A5A
 004F186F    call        00408430
 004F1874    mov         edx,dword ptr [ebp-4]
 004F1877    mov         dword ptr [edx+30],eax;TApplication.FHandle:HWND
 004F187A    mov         eax,dword ptr [ebp-4]
 004F187D    add         eax,8C;TApplication.FTitle:String
 004F1882    call        @LStrClr
 004F1887    mov         eax,dword ptr [ebp-4]
 004F188A    mov         byte ptr [eax+0A4],1;TApplication.FHandleCreated:Boolean
 004F1891    mov         eax,dword ptr [ebp-4]
 004F1894    mov         eax,dword ptr [eax+40];TApplication.FObjectInstance:Pointer
 004F1897    push        eax
 004F1898    push        0FC
 004F189A    mov         eax,dword ptr [ebp-4]
 004F189D    mov         eax,dword ptr [eax+30];TApplication.FHandle:HWND
 004F18A0    push        eax
 004F18A1    call        user32.SetWindowLongA
 004F18A6    mov         eax,[0055B36C];^NewStyleControls:Boolean
 004F18AB    cmp         byte ptr [eax],0
>004F18AE    je          004F18E3
 004F18B0    mov         eax,dword ptr [ebp-4]
 004F18B3    call        004F2594
 004F18B8    push        eax
 004F18B9    push        1
 004F18BB    push        80
 004F18C0    mov         eax,dword ptr [ebp-4]
 004F18C3    mov         eax,dword ptr [eax+30];TApplication.FHandle:HWND
 004F18C6    push        eax
 004F18C7    call        user32.SendMessageA
 004F18CC    mov         eax,dword ptr [ebp-4]
 004F18CF    call        004F2594
 004F18D4    push        eax
 004F18D5    push        0F2
 004F18D7    mov         eax,dword ptr [ebp-4]
 004F18DA    mov         eax,dword ptr [eax+30];TApplication.FHandle:HWND
 004F18DD    push        eax
 004F18DE    call        user32.SetClassLongA
 004F18E3    push        0
 004F18E5    mov         eax,dword ptr [ebp-4]
 004F18E8    mov         eax,dword ptr [eax+30];TApplication.FHandle:HWND
 004F18EB    push        eax
 004F18EC    call        user32.GetSystemMenu
 004F18F1    mov         dword ptr [ebp-8],eax
 004F18F4    push        0
 004F18F6    push        0F030
 004F18FB    mov         eax,dword ptr [ebp-8]
 004F18FE    push        eax
 004F18FF    call        user32.DeleteMenu
 004F1904    push        0
 004F1906    push        0F000
 004F190B    mov         eax,dword ptr [ebp-8]
 004F190E    push        eax
 004F190F    call        user32.DeleteMenu
 004F1914    mov         eax,[0055B36C];^NewStyleControls:Boolean
 004F1919    cmp         byte ptr [eax],0
>004F191C    je          004F192E
 004F191E    push        0
 004F1920    push        0F010
 004F1925    mov         eax,dword ptr [ebp-8]
 004F1928    push        eax
 004F1929    call        user32.DeleteMenu
 004F192E    xor         eax,eax
 004F1930    pop         edx
 004F1931    pop         ecx
 004F1932    pop         ecx
 004F1933    mov         dword ptr fs:[eax],edx
 004F1936    push        4F194B
 004F193B    lea         eax,[ebp-34]
 004F193E    call        @LStrClr
 004F1943    ret
>004F1944    jmp         @HandleFinally
>004F1949    jmp         004F193B
 004F194B    mov         esp,ebp
 004F194D    pop         ebp
 004F194E    ret
*}
end;

//004F1950
{*procedure sub_004F1950(?:TApplication; ?:?);
begin
 004F1950    push        ebp
 004F1951    mov         ebp,esp
 004F1953    add         esp,0FFFFFFF8
 004F1956    mov         dword ptr [ebp-8],edx
 004F1959    mov         dword ptr [ebp-4],eax
 004F195C    mov         eax,dword ptr [ebp-4]
 004F195F    mov         eax,dword ptr [eax+44];TApplication.FMainForm:TForm
 004F1962    cmp         eax,dword ptr [ebp-8]
>004F1965    jne         004F196F
 004F1967    mov         eax,dword ptr [ebp-4]
 004F196A    xor         edx,edx
 004F196C    mov         dword ptr [eax+44],edx;TApplication.FMainForm:TForm
 004F196F    mov         eax,dword ptr [ebp-4]
 004F1972    mov         eax,dword ptr [eax+48];TApplication.FMouseControl:TControl
 004F1975    cmp         eax,dword ptr [ebp-8]
>004F1978    jne         004F1982
 004F197A    mov         eax,dword ptr [ebp-4]
 004F197D    xor         edx,edx
 004F197F    mov         dword ptr [eax+48],edx;TApplication.FMouseControl:TControl
 004F1982    mov         eax,[0055DE50];Screen:TScreen
 004F1987    mov         eax,dword ptr [eax+64]
 004F198A    cmp         eax,dword ptr [ebp-8]
>004F198D    jne         004F1999
 004F198F    mov         eax,[0055DE50];Screen:TScreen
 004F1994    xor         edx,edx
 004F1996    mov         dword ptr [eax+64],edx
 004F1999    mov         eax,[0055DE50];Screen:TScreen
 004F199E    mov         eax,dword ptr [eax+68]
 004F19A1    cmp         eax,dword ptr [ebp-8]
>004F19A4    jne         004F19BA
 004F19A6    mov         eax,[0055DE50];Screen:TScreen
 004F19AB    xor         edx,edx
 004F19AD    mov         dword ptr [eax+68],edx
 004F19B0    mov         eax,[0055DE50];Screen:TScreen
 004F19B5    xor         edx,edx
 004F19B7    mov         dword ptr [eax+6C],edx
 004F19BA    mov         eax,[0055DE50];Screen:TScreen
 004F19BF    mov         eax,dword ptr [eax+78]
 004F19C2    cmp         eax,dword ptr [ebp-8]
>004F19C5    jne         004F19D1
 004F19C7    mov         eax,[0055DE50];Screen:TScreen
 004F19CC    xor         edx,edx
 004F19CE    mov         dword ptr [eax+78],edx
 004F19D1    mov         eax,dword ptr [ebp-4]
 004F19D4    mov         eax,dword ptr [eax+60];TApplication.FHintControl:TControl
 004F19D7    cmp         eax,dword ptr [ebp-8]
>004F19DA    jne         004F19E4
 004F19DC    mov         eax,dword ptr [ebp-4]
 004F19DF    xor         edx,edx
 004F19E1    mov         dword ptr [eax+60],edx;TApplication.FHintControl:TControl
 004F19E4    mov         eax,[0055DE50];Screen:TScreen
 004F19E9    call        004F0198
 004F19EE    pop         ecx
 004F19EF    pop         ecx
 004F19F0    pop         ebp
 004F19F1    ret
end;*}

//004F1A74
{*procedure sub_004F1A74(?:?; ?:?);
begin
 004F1A74    push        ebp
 004F1A75    mov         ebp,esp
 004F1A77    add         esp,0FFFFFFEC
 004F1A7A    mov         byte ptr [ebp-5],dl
 004F1A7D    mov         dword ptr [ebp-4],eax
 004F1A80    mov         eax,[0055DE4C];Application:TApplication
 004F1A85    cmp         dword ptr [eax+30],0
>004F1A89    je          004F1B3E
 004F1A8F    mov         eax,dword ptr [ebp-4]
 004F1A92    cmp         dword ptr [eax+94],0
>004F1A99    jne         004F1B35
 004F1A9F    mov         eax,dword ptr [ebp-4]
 004F1AA2    mov         eax,dword ptr [eax+30]
 004F1AA5    mov         dword ptr [ebp-14],eax
 004F1AA8    mov         al,byte ptr [ebp-5]
 004F1AAB    mov         byte ptr [ebp-10],al
 004F1AAE    lea         eax,[ebp-14]
 004F1AB1    push        eax
 004F1AB2    push        4F19F4
 004F1AB7    call        user32.EnumWindows
 004F1ABC    mov         eax,dword ptr [ebp-4]
 004F1ABF    mov         eax,dword ptr [eax+90]
 004F1AC5    cmp         dword ptr [eax+8],0
>004F1AC9    je          004F1B35
 004F1ACB    push        3
 004F1ACD    mov         eax,dword ptr [ebp-14]
 004F1AD0    push        eax
 004F1AD1    call        user32.GetWindow
 004F1AD6    mov         dword ptr [ebp-14],eax
 004F1AD9    push        0EC
 004F1ADB    mov         eax,dword ptr [ebp-14]
 004F1ADE    push        eax
 004F1ADF    call        user32.GetWindowLongA
 004F1AE4    test        al,8
>004F1AE6    je          004F1AEF
 004F1AE8    mov         dword ptr [ebp-14],0FFFFFFFE
 004F1AEF    mov         eax,dword ptr [ebp-4]
 004F1AF2    mov         eax,dword ptr [eax+90]
 004F1AF8    mov         eax,dword ptr [eax+8]
 004F1AFB    dec         eax
 004F1AFC    cmp         eax,0
>004F1AFF    jl          004F1B35
 004F1B01    mov         dword ptr [ebp-0C],eax
 004F1B04    push        213
 004F1B09    push        0
 004F1B0B    push        0
 004F1B0D    push        0
 004F1B0F    push        0
 004F1B11    mov         eax,dword ptr [ebp-14]
 004F1B14    push        eax
 004F1B15    mov         edx,dword ptr [ebp-0C]
 004F1B18    mov         eax,dword ptr [ebp-4]
 004F1B1B    mov         eax,dword ptr [eax+90]
 004F1B21    call        TList.Get
 004F1B26    push        eax
 004F1B27    call        user32.SetWindowPos
 004F1B2C    dec         dword ptr [ebp-0C]
 004F1B2F    cmp         dword ptr [ebp-0C],0FFFFFFFF
>004F1B33    jne         004F1B04
 004F1B35    mov         eax,dword ptr [ebp-4]
 004F1B38    inc         dword ptr [eax+94]
 004F1B3E    mov         esp,ebp
 004F1B40    pop         ebp
 004F1B41    ret
end;*}

//004F1B44
{*procedure sub_004F1B44(?:?);
begin
 004F1B44    push        ebp
 004F1B45    mov         ebp,esp
 004F1B47    push        ecx
 004F1B48    push        ebx
 004F1B49    mov         dword ptr [ebp-4],eax
 004F1B4C    mov         eax,dword ptr [ebp-4]
 004F1B4F    inc         dword ptr [eax+0B8]
 004F1B55    mov         eax,dword ptr [ebp-4]
 004F1B58    cmp         dword ptr [eax+0B8],1
>004F1B5F    jne         004F1B80
 004F1B61    mov         eax,dword ptr [ebp-4]
 004F1B64    cmp         word ptr [eax+0E2],0
>004F1B6C    je          004F1B80
 004F1B6E    mov         ebx,dword ptr [ebp-4]
 004F1B71    mov         edx,dword ptr [ebp-4]
 004F1B74    mov         eax,dword ptr [ebx+0E4]
 004F1B7A    call        dword ptr [ebx+0E0]
 004F1B80    pop         ebx
 004F1B81    pop         ecx
 004F1B82    pop         ebp
 004F1B83    ret
end;*}

//004F1B84
{*procedure sub_004F1B84(?:?);
begin
 004F1B84    push        ebp
 004F1B85    mov         ebp,esp
 004F1B87    push        ecx
 004F1B88    push        ebx
 004F1B89    mov         dword ptr [ebp-4],eax
 004F1B8C    mov         eax,dword ptr [ebp-4]
 004F1B8F    dec         dword ptr [eax+0B8]
 004F1B95    mov         eax,dword ptr [ebp-4]
 004F1B98    cmp         dword ptr [eax+0B8],0
>004F1B9F    jne         004F1BC0
 004F1BA1    mov         eax,dword ptr [ebp-4]
 004F1BA4    cmp         word ptr [eax+0EA],0
>004F1BAC    je          004F1BC0
 004F1BAE    mov         ebx,dword ptr [ebp-4]
 004F1BB1    mov         edx,dword ptr [ebp-4]
 004F1BB4    mov         eax,dword ptr [ebx+0EC]
 004F1BBA    call        dword ptr [ebx+0E8]
 004F1BC0    pop         ebx
 004F1BC1    pop         ecx
 004F1BC2    pop         ebp
 004F1BC3    ret
end;*}

//004F1BC4
{*procedure sub_004F1BC4(?:?);
begin
 004F1BC4    push        ebp
 004F1BC5    mov         ebp,esp
 004F1BC7    push        ecx
 004F1BC8    mov         dword ptr [ebp-4],eax
 004F1BCB    xor         edx,edx
 004F1BCD    mov         eax,dword ptr [ebp-4]
 004F1BD0    call        004F1A74
 004F1BD5    pop         ecx
 004F1BD6    pop         ebp
 004F1BD7    ret
end;*}

//004F1BD8
{*procedure sub_004F1BD8(?:?);
begin
 004F1BD8    push        ebp
 004F1BD9    mov         ebp,esp
 004F1BDB    push        ecx
 004F1BDC    mov         dword ptr [ebp-4],eax
 004F1BDF    mov         dl,1
 004F1BE1    mov         eax,dword ptr [ebp-4]
 004F1BE4    call        004F1A74
 004F1BE9    pop         ecx
 004F1BEA    pop         ebp
 004F1BEB    ret
end;*}

//004F1BEC
{*procedure sub_004F1BEC(?:?);
begin
 004F1BEC    push        ebp
 004F1BED    mov         ebp,esp
 004F1BEF    add         esp,0FFFFFFF8
 004F1BF2    mov         dword ptr [ebp-4],eax
 004F1BF5    mov         eax,[0055DE4C];Application:TApplication
 004F1BFA    cmp         dword ptr [eax+30],0
>004F1BFE    je          004F1C73
 004F1C00    mov         eax,dword ptr [ebp-4]
 004F1C03    cmp         dword ptr [eax+94],0
>004F1C0A    jle         004F1C73
 004F1C0C    mov         eax,dword ptr [ebp-4]
 004F1C0F    dec         dword ptr [eax+94]
 004F1C15    mov         eax,dword ptr [ebp-4]
 004F1C18    cmp         dword ptr [eax+94],0
>004F1C1F    jne         004F1C73
 004F1C21    mov         eax,dword ptr [ebp-4]
 004F1C24    mov         eax,dword ptr [eax+90]
 004F1C2A    mov         eax,dword ptr [eax+8]
 004F1C2D    dec         eax
 004F1C2E    cmp         eax,0
>004F1C31    jl          004F1C65
 004F1C33    mov         dword ptr [ebp-8],eax
 004F1C36    push        213
 004F1C3B    push        0
 004F1C3D    push        0
 004F1C3F    push        0
 004F1C41    push        0
 004F1C43    push        0FF
 004F1C45    mov         edx,dword ptr [ebp-8]
 004F1C48    mov         eax,dword ptr [ebp-4]
 004F1C4B    mov         eax,dword ptr [eax+90]
 004F1C51    call        TList.Get
 004F1C56    push        eax
 004F1C57    call        user32.SetWindowPos
 004F1C5C    dec         dword ptr [ebp-8]
 004F1C5F    cmp         dword ptr [ebp-8],0FFFFFFFF
>004F1C63    jne         004F1C36
 004F1C65    mov         eax,dword ptr [ebp-4]
 004F1C68    mov         eax,dword ptr [eax+90]
 004F1C6E    mov         edx,dword ptr [eax]
 004F1C70    call        dword ptr [edx+8]
 004F1C73    pop         ecx
 004F1C74    pop         ecx
 004F1C75    pop         ebp
 004F1C76    ret
end;*}

//004F1C78
{*function sub_004F1C78(?:?):?;
begin
 004F1C78    push        ebp
 004F1C79    mov         ebp,esp
 004F1C7B    add         esp,0FFFFFFF8
 004F1C7E    mov         dword ptr [ebp-4],eax
 004F1C81    mov         eax,[0055B70C];^gvar_0055D9C4:Integer
 004F1C86    cmp         byte ptr [eax+0D],0
>004F1C8A    je          004F1C95
 004F1C8C    mov         eax,dword ptr [ebp-4]
 004F1C8F    cmp         byte ptr [eax+34],0
>004F1C93    jne         004F1C99
 004F1C95    xor         eax,eax
>004F1C97    jmp         004F1C9B
 004F1C99    mov         al,1
 004F1C9B    mov         byte ptr [ebp-5],al
 004F1C9E    mov         al,byte ptr [ebp-5]
 004F1CA1    pop         ecx
 004F1CA2    pop         ecx
 004F1CA3    pop         ebp
 004F1CA4    ret
end;*}

//004F1CA8
{*function sub_004F1CA8(?:TApplication):?;
begin
 004F1CA8    push        ebp
 004F1CA9    mov         ebp,esp
 004F1CAB    add         esp,0FFFFFFF8
 004F1CAE    mov         dword ptr [ebp-4],eax
 004F1CB1    mov         eax,[0055B70C];^gvar_0055D9C4:Integer
 004F1CB6    cmp         byte ptr [eax+0D],0
>004F1CBA    je          004F1CC5
 004F1CBC    mov         eax,dword ptr [ebp-4]
 004F1CBF    cmp         byte ptr [eax+34],1;TApplication.FBiDiMode:TBiDiMode
>004F1CC3    je          004F1CC9
 004F1CC5    xor         eax,eax
>004F1CC7    jmp         004F1CCB
 004F1CC9    mov         al,1
 004F1CCB    mov         byte ptr [ebp-5],al
 004F1CCE    mov         al,byte ptr [ebp-5]
 004F1CD1    pop         ecx
 004F1CD2    pop         ecx
 004F1CD3    pop         ebp
 004F1CD4    ret
end;*}

//004F1CD8
{*function sub_004F1CD8(?:?; ?:?):?;
begin
 004F1CD8    push        ebp
 004F1CD9    mov         ebp,esp
 004F1CDB    add         esp,0FFFFFFF4
 004F1CDE    mov         dword ptr [ebp-8],edx
 004F1CE1    mov         dword ptr [ebp-4],eax
 004F1CE4    mov         byte ptr [ebp-9],0
 004F1CE8    mov         eax,dword ptr [ebp-8]
 004F1CEB    mov         eax,dword ptr [eax]
 004F1CED    cmp         eax,dword ptr ds:[55DE58];gvar_0055DE58
>004F1CF3    je          004F1CFD
 004F1CF5    mov         eax,dword ptr [ebp-8]
 004F1CF8    cmp         dword ptr [eax],1A
>004F1CFB    jne         004F1D3F
 004F1CFD    mov         eax,dword ptr [ebp-4]
 004F1D00    cmp         byte ptr [eax+59],0
>004F1D04    je          004F1D15
 004F1D06    push        400
 004F1D0B    call        kernel32.SetThreadLocale
 004F1D10    call        0046BF48
 004F1D15    mov         eax,dword ptr [ebp-4]
 004F1D18    cmp         byte ptr [eax+5A],0
>004F1D1C    je          004F1D28
 004F1D1E    mov         eax,[0055DE50];Screen:TScreen
 004F1D23    call        004F08A8
 004F1D28    mov         eax,dword ptr [ebp-8]
 004F1D2B    mov         eax,dword ptr [eax]
 004F1D2D    cmp         eax,dword ptr ds:[55DE58];gvar_0055DE58
>004F1D33    jne         004F1D3F
 004F1D35    mov         eax,[0055DE50];Screen:TScreen
 004F1D3A    call        004F1008
 004F1D3F    mov         al,byte ptr [ebp-9]
 004F1D42    mov         esp,ebp
 004F1D44    pop         ebp
 004F1D45    ret
end;*}

//004F1D48
{*procedure sub_004F1D48(?:?; ?:?);
begin
 004F1D48    push        ebp
 004F1D49    mov         ebp,esp
 004F1D4B    add         esp,0FFFFFFF4
 004F1D4E    push        ebx
 004F1D4F    xor         ecx,ecx
 004F1D51    mov         dword ptr [ebp-0C],ecx
 004F1D54    mov         dword ptr [ebp-8],edx
 004F1D57    mov         dword ptr [ebp-4],eax
 004F1D5A    xor         eax,eax
 004F1D5C    push        ebp
 004F1D5D    push        4F1DBC
 004F1D62    push        dword ptr fs:[eax]
 004F1D65    mov         dword ptr fs:[eax],esp
 004F1D68    mov         eax,dword ptr [ebp-4]
 004F1D6B    cmp         word ptr [eax+13A],0
>004F1D73    je          004F1DA6
 004F1D75    lea         eax,[ebp-0C]
 004F1D78    mov         edx,dword ptr [ebp-8]
 004F1D7B    mov         edx,dword ptr [edx+8]
 004F1D7E    call        @LStrFromPChar
 004F1D83    mov         eax,dword ptr [ebp-0C]
 004F1D86    push        eax
 004F1D87    mov         eax,dword ptr [ebp-8]
 004F1D8A    add         eax,0C
 004F1D8D    push        eax
 004F1D8E    mov         ecx,dword ptr [ebp-8]
 004F1D91    mov         ecx,dword ptr [ecx+4]
 004F1D94    mov         ebx,dword ptr [ebp-4]
 004F1D97    mov         edx,dword ptr [ebp-4]
 004F1D9A    mov         eax,dword ptr [ebx+13C]
 004F1DA0    call        dword ptr [ebx+138]
 004F1DA6    xor         eax,eax
 004F1DA8    pop         edx
 004F1DA9    pop         ecx
 004F1DAA    pop         ecx
 004F1DAB    mov         dword ptr fs:[eax],edx
 004F1DAE    push        4F1DC3
 004F1DB3    lea         eax,[ebp-0C]
 004F1DB6    call        @LStrClr
 004F1DBB    ret
>004F1DBC    jmp         @HandleFinally
>004F1DC1    jmp         004F1DB3
 004F1DC3    pop         ebx
 004F1DC4    mov         esp,ebp
 004F1DC6    pop         ebp
 004F1DC7    ret
end;*}

//004F1DC8
procedure Default;
begin
{*
 004F1DC8    push        ebp
 004F1DC9    mov         ebp,esp
 004F1DCB    mov         eax,dword ptr [ebp+8]
 004F1DCE    mov         eax,dword ptr [eax-8]
 004F1DD1    mov         eax,dword ptr [eax+8]
 004F1DD4    push        eax
 004F1DD5    mov         eax,dword ptr [ebp+8]
 004F1DD8    mov         eax,dword ptr [eax-8]
 004F1DDB    mov         eax,dword ptr [eax+4]
 004F1DDE    push        eax
 004F1DDF    mov         eax,dword ptr [ebp+8]
 004F1DE2    mov         eax,dword ptr [eax-8]
 004F1DE5    mov         eax,dword ptr [eax]
 004F1DE7    push        eax
 004F1DE8    mov         eax,dword ptr [ebp+8]
 004F1DEB    mov         eax,dword ptr [eax-4]
 004F1DEE    mov         eax,dword ptr [eax+30]
 004F1DF1    push        eax
 004F1DF2    call        user32.DefWindowProcA
 004F1DF7    mov         edx,dword ptr [ebp+8]
 004F1DFA    mov         edx,dword ptr [edx-8]
 004F1DFD    mov         dword ptr [edx+0C],eax
 004F1E00    pop         ebp
 004F1E01    ret
*}
end;

//004F1E04
{*procedure sub_004F1E04(?:?);
begin
 004F1E04    push        ebp
 004F1E05    mov         ebp,esp
 004F1E07    add         esp,0FFFFFFBC
 004F1E0A    lea         eax,[ebp-44]
 004F1E0D    push        eax
 004F1E0E    mov         eax,dword ptr [ebp+8]
 004F1E11    mov         eax,dword ptr [eax-4]
 004F1E14    mov         eax,dword ptr [eax+30]
 004F1E17    push        eax
 004F1E18    call        user32.BeginPaint
 004F1E1D    mov         dword ptr [ebp-4],eax
 004F1E20    mov         eax,dword ptr [ebp+8]
 004F1E23    mov         eax,dword ptr [eax-4]
 004F1E26    call        004F2594
 004F1E2B    push        eax
 004F1E2C    push        0
 004F1E2E    push        0
 004F1E30    mov         eax,dword ptr [ebp-4]
 004F1E33    push        eax
 004F1E34    call        user32.DrawIcon
 004F1E39    lea         eax,[ebp-44]
 004F1E3C    push        eax
 004F1E3D    mov         eax,dword ptr [ebp+8]
 004F1E40    mov         eax,dword ptr [eax-4]
 004F1E43    mov         eax,dword ptr [eax+30]
 004F1E46    push        eax
 004F1E47    call        user32.EndPaint
 004F1E4C    mov         esp,ebp
 004F1E4E    pop         ebp
 004F1E4F    ret
end;*}

//004F1E50
{*procedure sub_004F1E50(?:?; ?:?);
begin
 004F1E50    push        ebp
 004F1E51    mov         ebp,esp
 004F1E53    add         esp,0FFFFFFE0
 004F1E56    push        ebx
 004F1E57    push        esi
 004F1E58    push        edi
 004F1E59    mov         dword ptr [ebp-8],edx
 004F1E5C    mov         dword ptr [ebp-4],eax
 004F1E5F    xor         eax,eax
 004F1E61    push        ebp
 004F1E62    push        4F254C
 004F1E67    push        dword ptr fs:[eax]
 004F1E6A    mov         dword ptr fs:[eax],esp
 004F1E6D    mov         eax,dword ptr [ebp-8]
 004F1E70    xor         edx,edx
 004F1E72    mov         dword ptr [eax+0C],edx
 004F1E75    mov         eax,dword ptr [ebp-4]
 004F1E78    mov         eax,dword ptr [eax+0A8]
 004F1E7E    mov         eax,dword ptr [eax+8]
 004F1E81    dec         eax
 004F1E82    test        eax,eax
>004F1E84    jl          004F1EC5
 004F1E86    inc         eax
 004F1E87    mov         dword ptr [ebp-1C],eax
 004F1E8A    mov         dword ptr [ebp-0C],0
 004F1E91    mov         eax,dword ptr [ebp-4]
 004F1E94    mov         eax,dword ptr [eax+0A8]
 004F1E9A    mov         edx,dword ptr [ebp-0C]
 004F1E9D    call        TList.Get
 004F1EA2    mov         ebx,eax
 004F1EA4    mov         edx,dword ptr [ebp-8]
 004F1EA7    mov         eax,dword ptr [ebx+4]
 004F1EAA    call        dword ptr [ebx]
 004F1EAC    test        al,al
>004F1EAE    je          004F1EBD
 004F1EB0    xor         eax,eax
 004F1EB2    pop         edx
 004F1EB3    pop         ecx
 004F1EB4    pop         ecx
 004F1EB5    mov         dword ptr fs:[eax],edx
>004F1EB8    jmp         004F2561
 004F1EBD    inc         dword ptr [ebp-0C]
 004F1EC0    dec         dword ptr [ebp-1C]
>004F1EC3    jne         004F1E91
 004F1EC5    mov         edx,dword ptr [ebp-8]
 004F1EC8    mov         eax,dword ptr [ebp-4]
 004F1ECB    call        004F1CD8
 004F1ED0    mov         eax,dword ptr [ebp-8]
 004F1ED3    mov         eax,dword ptr [eax]
 004F1ED5    cmp         eax,53
>004F1ED8    jg          004F1F8C
>004F1EDE    je          004F2461
 004F1EE4    cmp         eax,16
>004F1EE7    jg          004F1F53
>004F1EE9    je          004F2200
 004F1EEF    cmp         eax,14
>004F1EF2    ja          004F253B
 004F1EF8    jmp         dword ptr [eax*4+4F1EFF]
 004F1EF8    dd          004F2532
 004F1EF8    dd          004F253B
 004F1EF8    dd          004F253B
 004F1EF8    dd          004F253B
 004F1EF8    dd          004F253B
 004F1EF8    dd          004F253B
 004F1EF8    dd          004F253B
 004F1EF8    dd          004F20D2
 004F1EF8    dd          004F253B
 004F1EF8    dd          004F253B
 004F1EF8    dd          004F215A
 004F1EF8    dd          004F253B
 004F1EF8    dd          004F253B
 004F1EF8    dd          004F253B
 004F1EF8    dd          004F253B
 004F1EF8    dd          004F2082
 004F1EF8    dd          004F2065
 004F1EF8    dd          004F253B
 004F1EF8    dd          004F253B
 004F1EF8    dd          004F253B
 004F1EF8    dd          004F20AA
 004F1F53    cmp         eax,1D
>004F1F56    jg          004F1F75
>004F1F58    je          004F2505
 004F1F5E    sub         eax,1A
>004F1F61    je          004F24DF
 004F1F67    sub         eax,2
>004F1F6A    je          004F20F3
>004F1F70    jmp         004F253B
 004F1F75    sub         eax,37
>004F1F78    je          004F20BF
 004F1F7E    sub         eax,13
>004F1F81    je          004F221C
>004F1F87    jmp         004F253B
 004F1F8C    cmp         eax,0B017
>004F1F91    jg          004F1FE2
>004F1F93    je          004F2322
 004F1F99    cmp         eax,0B000
>004F1F9E    jg          004F1FC9
>004F1FA0    je          004F23CA
 004F1FA6    sub         eax,112
>004F1FAB    je          004F2024
 004F1FAD    add         eax,0FFFFFFE0
 004F1FB0    sub         eax,7
>004F1FB3    jb          004F21D0
 004F1FB9    sub         eax,1E1
>004F1FBE    je          004F2518
>004F1FC4    jmp         004F253B
 004F1FC9    sub         eax,0B001
>004F1FCE    je          004F23F2
 004F1FD4    sub         eax,15
>004F1FD7    je          004F2300
>004F1FDD    jmp         004F253B
 004F1FE2    cmp         eax,0B020
>004F1FE7    jg          004F2008
>004F1FE9    je          004F247B
 004F1FEF    sub         eax,0B01A
>004F1FF4    je          004F241A
 004F1FFA    sub         eax,5
>004F1FFD    je          004F2461
>004F2003    jmp         004F253B
 004F2008    sub         eax,0B031
>004F200D    je          004F24B4
 004F2013    add         eax,0FFFFFFF2
 004F2016    sub         eax,2
>004F2019    jb          004F22DF
>004F201F    jmp         004F253B
 004F2024    mov         eax,dword ptr [ebp-8]
 004F2027    mov         eax,dword ptr [eax+4]
 004F202A    and         eax,0FFF0
 004F202F    sub         eax,0F020
>004F2034    je          004F203F
 004F2036    sub         eax,100
>004F203B    je          004F204C
>004F203D    jmp         004F2059
 004F203F    mov         eax,dword ptr [ebp-4]
 004F2042    call        004F25CC
>004F2047    jmp         004F2542
 004F204C    mov         eax,dword ptr [ebp-4]
 004F204F    call        004F26B8
>004F2054    jmp         004F2542
 004F2059    push        ebp
 004F205A    call        Default
 004F205F    pop         ecx
>004F2060    jmp         004F2542
 004F2065    mov         eax,dword ptr [ebp-4]
 004F2068    cmp         dword ptr [eax+44],0
>004F206C    je          004F2542
 004F2072    mov         eax,dword ptr [ebp-4]
 004F2075    mov         eax,dword ptr [eax+44]
 004F2078    call        004EE9EC
>004F207D    jmp         004F2542
 004F2082    mov         eax,dword ptr [ebp-4]
 004F2085    mov         eax,dword ptr [eax+30]
 004F2088    push        eax
 004F2089    call        user32.IsIconic
 004F208E    test        eax,eax
>004F2090    je          004F209E
 004F2092    push        ebp
 004F2093    call        004F1E04
 004F2098    pop         ecx
>004F2099    jmp         004F2542
 004F209E    push        ebp
 004F209F    call        Default
 004F20A4    pop         ecx
>004F20A5    jmp         004F2542
 004F20AA    mov         eax,dword ptr [ebp-8]
 004F20AD    mov         dword ptr [eax],27
 004F20B3    push        ebp
 004F20B4    call        Default
 004F20B9    pop         ecx
>004F20BA    jmp         004F2542
 004F20BF    mov         eax,dword ptr [ebp-4]
 004F20C2    call        004F2594
 004F20C7    mov         edx,dword ptr [ebp-8]
 004F20CA    mov         dword ptr [edx+0C],eax
>004F20CD    jmp         004F2542
 004F20D2    push        0
 004F20D4    push        0
 004F20D6    push        0B01A
 004F20DB    mov         eax,dword ptr [ebp-4]
 004F20DE    mov         eax,dword ptr [eax+30]
 004F20E1    push        eax
 004F20E2    call        user32.PostMessageA
 004F20E7    push        ebp
 004F20E8    call        Default
 004F20ED    pop         ecx
>004F20EE    jmp         004F2542
 004F20F3    push        ebp
 004F20F4    call        Default
 004F20F9    pop         ecx
 004F20FA    mov         eax,dword ptr [ebp-8]
 004F20FD    cmp         dword ptr [eax+4],1
 004F2101    sbb         eax,eax
 004F2103    inc         eax
 004F2104    mov         edx,dword ptr [ebp-4]
 004F2107    mov         byte ptr [edx+9D],al
 004F210D    mov         eax,dword ptr [ebp-8]
 004F2110    cmp         dword ptr [eax+4],0
>004F2114    je          004F2138
 004F2116    mov         eax,dword ptr [ebp-4]
 004F2119    call        004F1BEC
 004F211E    push        0
 004F2120    push        0
 004F2122    push        0B000
 004F2127    mov         eax,dword ptr [ebp-4]
 004F212A    mov         eax,dword ptr [eax+30]
 004F212D    push        eax
 004F212E    call        user32.PostMessageA
>004F2133    jmp         004F2542
 004F2138    mov         eax,dword ptr [ebp-4]
 004F213B    call        004F1BC4
 004F2140    push        0
 004F2142    push        0
 004F2144    push        0B001
 004F2149    mov         eax,dword ptr [ebp-4]
 004F214C    mov         eax,dword ptr [eax+30]
 004F214F    push        eax
 004F2150    call        user32.PostMessageA
>004F2155    jmp         004F2542
 004F215A    mov         eax,dword ptr [ebp-8]
 004F215D    cmp         dword ptr [eax+4],0
>004F2161    je          004F219C
 004F2163    mov         eax,dword ptr [ebp-4]
 004F2166    call        004F1BEC
 004F216B    mov         eax,dword ptr [ebp-4]
 004F216E    cmp         dword ptr [eax+0AC],0
>004F2175    je          004F2190
 004F2177    mov         eax,dword ptr [ebp-4]
 004F217A    mov         eax,dword ptr [eax+0AC]
 004F2180    call        004E7A90
 004F2185    mov         eax,dword ptr [ebp-4]
 004F2188    xor         edx,edx
 004F218A    mov         dword ptr [eax+0AC],edx
 004F2190    push        ebp
 004F2191    call        Default
 004F2196    pop         ecx
>004F2197    jmp         004F2542
 004F219C    push        ebp
 004F219D    call        Default
 004F21A2    pop         ecx
 004F21A3    mov         eax,dword ptr [ebp-4]
 004F21A6    cmp         dword ptr [eax+0AC],0
>004F21AD    jne         004F21C3
 004F21AF    mov         eax,dword ptr [ebp-4]
 004F21B2    mov         eax,dword ptr [eax+30]
 004F21B5    call        004E79D8
 004F21BA    mov         edx,dword ptr [ebp-4]
 004F21BD    mov         dword ptr [edx+0AC],eax
 004F21C3    mov         eax,dword ptr [ebp-4]
 004F21C6    call        004F1BD8
>004F21CB    jmp         004F2542
 004F21D0    mov         eax,dword ptr [ebp-8]
 004F21D3    mov         eax,dword ptr [eax+8]
 004F21D6    push        eax
 004F21D7    mov         eax,dword ptr [ebp-8]
 004F21DA    mov         eax,dword ptr [eax+4]
 004F21DD    push        eax
 004F21DE    mov         eax,dword ptr [ebp-8]
 004F21E1    mov         eax,dword ptr [eax]
 004F21E3    add         eax,0BC00
 004F21E8    push        eax
 004F21E9    mov         eax,dword ptr [ebp-8]
 004F21EC    mov         eax,dword ptr [eax+8]
 004F21EF    push        eax
 004F21F0    call        user32.SendMessageA
 004F21F5    mov         edx,dword ptr [ebp-8]
 004F21F8    mov         dword ptr [edx+0C],eax
>004F21FB    jmp         004F2542
 004F2200    mov         eax,dword ptr [ebp-8]
 004F2203    cmp         dword ptr [eax+4],0
>004F2207    je          004F2542
 004F220D    mov         eax,dword ptr [ebp-4]
 004F2210    mov         byte ptr [eax+9C],1
>004F2217    jmp         004F2542
 004F221C    mov         eax,dword ptr [ebp-8]
 004F221F    mov         eax,dword ptr [eax+8]
 004F2222    cmp         dword ptr [eax],0DE534454
>004F2228    jne         004F2542
 004F222E    mov         eax,dword ptr [ebp-4]
 004F2231    cmp         byte ptr [eax+9E],0
>004F2238    je          004F2542
 004F223E    mov         eax,dword ptr [ebp-4]
 004F2241    cmp         dword ptr [eax+0A0],0
>004F2248    jne         004F22D2
 004F224E    mov         edx,8000
 004F2253    mov         eax,4F2570;'vcltest3.dll'
 004F2258    call        0046CCB4
 004F225D    mov         edx,dword ptr [ebp-4]
 004F2260    mov         dword ptr [edx+0A0],eax
 004F2266    mov         eax,dword ptr [ebp-4]
 004F2269    cmp         dword ptr [eax+0A0],0
>004F2270    je          004F22B7
 004F2272    mov         eax,dword ptr [ebp-8]
 004F2275    xor         edx,edx
 004F2277    mov         dword ptr [eax+0C],edx
 004F227A    push        4F2580;'RegisterAutomation'
 004F227F    mov         eax,dword ptr [ebp-4]
 004F2282    mov         eax,dword ptr [eax+0A0]
 004F2288    push        eax
 004F2289    call        kernel32.GetProcAddress
 004F228E    mov         dword ptr [ebp-18],eax
 004F2291    cmp         dword ptr [ebp-18],0
>004F2295    je          004F2542
 004F229B    mov         eax,dword ptr [ebp-8]
 004F229E    mov         eax,dword ptr [eax+8]
 004F22A1    mov         eax,dword ptr [eax+8]
 004F22A4    push        eax
 004F22A5    mov         eax,dword ptr [ebp-8]
 004F22A8    mov         eax,dword ptr [eax+8]
 004F22AB    mov         eax,dword ptr [eax+4]
 004F22AE    push        eax
 004F22AF    call        dword ptr [ebp-18]
>004F22B2    jmp         004F2542
 004F22B7    call        kernel32.GetLastError
 004F22BC    mov         edx,dword ptr [ebp-8]
 004F22BF    mov         dword ptr [edx+0C],eax
 004F22C2    mov         eax,dword ptr [ebp-4]
 004F22C5    xor         edx,edx
 004F22C7    mov         dword ptr [eax+0A0],edx
>004F22CD    jmp         004F2542
 004F22D2    mov         eax,dword ptr [ebp-8]
 004F22D5    xor         edx,edx
 004F22D7    mov         dword ptr [eax+0C],edx
>004F22DA    jmp         004F2542
 004F22DF    mov         ecx,dword ptr [ebp-8]
 004F22E2    mov         ecx,dword ptr [ecx+8]
 004F22E5    mov         edx,dword ptr [ebp-8]
 004F22E8    mov         edx,dword ptr [edx]
 004F22EA    mov         eax,dword ptr [ebp-4]
 004F22ED    call        004F43FC
 004F22F2    and         eax,7F
 004F22F5    mov         edx,dword ptr [ebp-8]
 004F22F8    mov         dword ptr [edx+0C],eax
>004F22FB    jmp         004F2542
 004F2300    mov         edx,dword ptr [ebp-8]
 004F2303    mov         eax,dword ptr [ebp-4]
 004F2306    call        004F2AB8
 004F230B    test        al,al
>004F230D    je          004F2542
 004F2313    mov         eax,dword ptr [ebp-8]
 004F2316    mov         dword ptr [eax+0C],1
>004F231D    jmp         004F2542
 004F2322    mov         eax,dword ptr [ebp-4]
 004F2325    cmp         dword ptr [eax+44],0
>004F2329    je          004F2542
 004F232F    mov         eax,dword ptr [ebp-4]
 004F2332    mov         eax,dword ptr [eax+44]
 004F2335    mov         dword ptr [ebp-20],eax
 004F2338    mov         eax,dword ptr [ebp-20]
 004F233B    call        TWinControl.GetHandle
 004F2340    test        eax,eax
>004F2342    je          004F2542
 004F2348    mov         eax,dword ptr [ebp-20]
 004F234B    call        TWinControl.GetHandle
 004F2350    push        eax
 004F2351    call        user32.IsWindowEnabled
 004F2356    test        eax,eax
>004F2358    je          004F2542
 004F235E    mov         eax,dword ptr [ebp-20]
 004F2361    call        TWinControl.GetHandle
 004F2366    push        eax
 004F2367    call        user32.IsWindowVisible
 004F236C    test        eax,eax
>004F236E    je          004F2542
 004F2374    mov         byte ptr ds:[5418C8],0;gvar_005418C8
 004F237B    call        user32.GetFocus
 004F2380    mov         dword ptr [ebp-10],eax
 004F2383    mov         eax,dword ptr [ebp-20]
 004F2386    call        TWinControl.GetHandle
 004F238B    push        eax
 004F238C    call        user32.SetFocus
 004F2391    mov         eax,dword ptr [ebp-8]
 004F2394    mov         eax,dword ptr [eax+8]
 004F2397    push        eax
 004F2398    mov         ecx,dword ptr [ebp-8]
 004F239B    mov         ecx,dword ptr [ecx+4]
 004F239E    mov         edx,112
 004F23A3    mov         eax,dword ptr [ebp-20]
 004F23A6    call        004CC7DC
 004F23AB    mov         eax,dword ptr [ebp-10]
 004F23AE    push        eax
 004F23AF    call        user32.SetFocus
 004F23B4    mov         byte ptr ds:[5418C8],1;gvar_005418C8
 004F23BB    mov         eax,dword ptr [ebp-8]
 004F23BE    mov         dword ptr [eax+0C],1
>004F23C5    jmp         004F2542
 004F23CA    mov         eax,dword ptr [ebp-4]
 004F23CD    cmp         word ptr [eax+112],0
>004F23D5    je          004F2542
 004F23DB    mov         ebx,dword ptr [ebp-4]
 004F23DE    mov         edx,dword ptr [ebp-4]
 004F23E1    mov         eax,dword ptr [ebx+114]
 004F23E7    call        dword ptr [ebx+110]
>004F23ED    jmp         004F2542
 004F23F2    mov         eax,dword ptr [ebp-4]
 004F23F5    cmp         word ptr [eax+10A],0
>004F23FD    je          004F2542
 004F2403    mov         ebx,dword ptr [ebp-4]
 004F2406    mov         edx,dword ptr [ebp-4]
 004F2409    mov         eax,dword ptr [ebx+10C]
 004F240F    call        dword ptr [ebx+108]
>004F2415    jmp         004F2542
 004F241A    mov         eax,dword ptr [ebp-4]
 004F241D    mov         eax,dword ptr [eax+30]
 004F2420    push        eax
 004F2421    call        user32.IsIconic
 004F2426    test        eax,eax
>004F2428    jne         004F2542
 004F242E    call        user32.GetFocus
 004F2433    mov         edx,dword ptr [ebp-4]
 004F2436    cmp         eax,dword ptr [edx+30]
>004F2439    jne         004F2542
 004F243F    xor         eax,eax
 004F2441    call        004E7B5C
 004F2446    mov         dword ptr [ebp-14],eax
 004F2449    cmp         dword ptr [ebp-14],0
>004F244D    je          004F2542
 004F2453    mov         eax,dword ptr [ebp-14]
 004F2456    push        eax
 004F2457    call        user32.SetFocus
>004F245C    jmp         004F2542
 004F2461    mov         ecx,dword ptr [ebp-8]
 004F2464    mov         ecx,dword ptr [ecx+8]
 004F2467    mov         edx,dword ptr [ebp-8]
 004F246A    mov         dx,word ptr [edx+4]
 004F246E    mov         eax,dword ptr [ebp-4]
 004F2471    call        004F3200
>004F2476    jmp         004F2542
 004F247B    mov         eax,dword ptr [ebp-8]
 004F247E    cmp         dword ptr [eax+4],0
>004F2482    jne         004F249C
 004F2484    mov         eax,dword ptr [ebp-8]
 004F2487    mov         eax,dword ptr [eax+8]
 004F248A    push        dword ptr [eax+4]
 004F248D    push        dword ptr [eax]
 004F248F    mov         eax,dword ptr [ebp-4]
 004F2492    call        004F2C28
>004F2497    jmp         004F2542
 004F249C    mov         eax,dword ptr [ebp-8]
 004F249F    mov         eax,dword ptr [eax+8]
 004F24A2    push        dword ptr [eax+4]
 004F24A5    push        dword ptr [eax]
 004F24A7    mov         eax,dword ptr [ebp-4]
 004F24AA    call        004F2CA0
>004F24AF    jmp         004F2542
 004F24B4    mov         eax,dword ptr [ebp-8]
 004F24B7    cmp         dword ptr [eax+4],1
>004F24BB    jne         004F24CE
 004F24BD    mov         eax,dword ptr [ebp-4]
 004F24C0    mov         eax,dword ptr [eax+0B0]
 004F24C6    mov         edx,dword ptr [ebp-8]
 004F24C9    mov         dword ptr [edx+0C],eax
>004F24CC    jmp         004F2542
 004F24CE    mov         eax,dword ptr [ebp-8]
 004F24D1    mov         eax,dword ptr [eax+8]
 004F24D4    mov         edx,dword ptr [ebp-4]
 004F24D7    mov         dword ptr [edx+0B0],eax
>004F24DD    jmp         004F2542
 004F24DF    mov         edx,dword ptr [ebp-8]
 004F24E2    mov         edx,dword ptr [edx+4]
 004F24E5    mov         eax,[0055B688];^gvar_0055DDAC
 004F24EA    mov         eax,dword ptr [eax]
 004F24EC    call        004D96BC
 004F24F1    mov         edx,dword ptr [ebp-8]
 004F24F4    mov         eax,dword ptr [ebp-4]
 004F24F7    call        004F1D48
 004F24FC    push        ebp
 004F24FD    call        Default
 004F2502    pop         ecx
>004F2503    jmp         004F2542
 004F2505    mov         eax,[0055DE50];Screen:TScreen
 004F250A    call        004F1008
 004F250F    push        ebp
 004F2510    call        Default
 004F2515    pop         ecx
>004F2516    jmp         004F2542
 004F2518    call        ThemeServices
 004F251D    call        TThemeServices.GetThemesEnabled
 004F2522    test        al,al
>004F2524    je          004F2542
 004F2526    call        ThemeServices
 004F252B    call        004B63CC
>004F2530    jmp         004F2542
 004F2532    xor         eax,eax
 004F2534    call        0048271C
>004F2539    jmp         004F2542
 004F253B    push        ebp
 004F253C    call        Default
 004F2541    pop         ecx
 004F2542    xor         eax,eax
 004F2544    pop         edx
 004F2545    pop         ecx
 004F2546    pop         ecx
 004F2547    mov         dword ptr fs:[eax],edx
>004F254A    jmp         004F2561
>004F254C    jmp         @HandleAnyException
 004F2551    mov         edx,dword ptr [ebp-4]
 004F2554    mov         eax,dword ptr [ebp-4]
 004F2557    call        TApplication.HandleException
 004F255C    call        @DoneExcept
 004F2561    pop         edi
 004F2562    pop         esi
 004F2563    pop         ebx
 004F2564    mov         esp,ebp
 004F2566    pop         ebp
 004F2567    ret
end;*}

//004F2594
{*function sub_004F2594(?:TApplication):?;
begin
 004F2594    push        ebp
 004F2595    mov         ebp,esp
 004F2597    add         esp,0FFFFFFF8
 004F259A    mov         dword ptr [ebp-4],eax
 004F259D    mov         eax,dword ptr [ebp-4]
 004F25A0    mov         eax,dword ptr [eax+98];TApplication.FIcon:TIcon
 004F25A6    call        0048F1C8
 004F25AB    mov         dword ptr [ebp-8],eax
 004F25AE    cmp         dword ptr [ebp-8],0
>004F25B2    jne         004F25C3
 004F25B4    push        7F00
 004F25B9    push        0
 004F25BB    call        user32.LoadIconA
 004F25C0    mov         dword ptr [ebp-8],eax
 004F25C3    mov         eax,dword ptr [ebp-8]
 004F25C6    pop         ecx
 004F25C7    pop         ecx
 004F25C8    pop         ebp
 004F25C9    ret
end;*}

//004F25CC
{*procedure sub_004F25CC(?:?);
begin
 004F25CC    push        ebp
 004F25CD    mov         ebp,esp
 004F25CF    push        ecx
 004F25D0    push        ebx
 004F25D1    mov         dword ptr [ebp-4],eax
 004F25D4    mov         eax,dword ptr [ebp-4]
 004F25D7    mov         eax,dword ptr [eax+30]
 004F25DA    push        eax
 004F25DB    call        user32.IsIconic
 004F25E0    test        eax,eax
>004F25E2    jne         004F26B2
 004F25E8    mov         eax,dword ptr [ebp-4]
 004F25EB    call        004F1BC4
 004F25F0    mov         eax,dword ptr [ebp-4]
 004F25F3    mov         eax,dword ptr [eax+30]
 004F25F6    push        eax
 004F25F7    call        user32.SetActiveWindow
 004F25FC    mov         eax,dword ptr [ebp-4]
 004F25FF    cmp         dword ptr [eax+44],0
>004F2603    je          004F2683
 004F2605    mov         eax,dword ptr [ebp-4]
 004F2608    cmp         byte ptr [eax+5B],0
>004F260C    jne         004F261A
 004F260E    mov         eax,dword ptr [ebp-4]
 004F2611    mov         eax,dword ptr [eax+44]
 004F2614    cmp         byte ptr [eax+57],0
>004F2618    je          004F2683
 004F261A    mov         eax,dword ptr [ebp-4]
 004F261D    mov         eax,dword ptr [eax+44]
 004F2620    call        TWinControl.GetHandle
 004F2625    push        eax
 004F2626    call        user32.IsWindowEnabled
 004F262B    test        eax,eax
>004F262D    je          004F2683
 004F262F    push        40
 004F2631    push        0
 004F2633    mov         eax,dword ptr [ebp-4]
 004F2636    mov         eax,dword ptr [eax+44]
 004F2639    mov         eax,dword ptr [eax+48]
 004F263C    push        eax
 004F263D    mov         eax,dword ptr [ebp-4]
 004F2640    mov         eax,dword ptr [eax+44]
 004F2643    mov         eax,dword ptr [eax+44]
 004F2646    push        eax
 004F2647    mov         eax,dword ptr [ebp-4]
 004F264A    mov         eax,dword ptr [eax+44]
 004F264D    mov         eax,dword ptr [eax+40]
 004F2650    push        eax
 004F2651    mov         eax,dword ptr [ebp-4]
 004F2654    mov         eax,dword ptr [eax+44]
 004F2657    call        TWinControl.GetHandle
 004F265C    push        eax
 004F265D    mov         eax,dword ptr [ebp-4]
 004F2660    mov         eax,dword ptr [eax+30]
 004F2663    push        eax
 004F2664    call        user32.SetWindowPos
 004F2669    push        0
 004F266B    push        0F020
 004F2670    push        112
 004F2675    mov         eax,dword ptr [ebp-4]
 004F2678    mov         eax,dword ptr [eax+30]
 004F267B    push        eax
 004F267C    call        user32.DefWindowProcA
>004F2681    jmp         004F2693
 004F2683    mov         edx,6
 004F2688    mov         eax,dword ptr [ebp-4]
 004F268B    mov         eax,dword ptr [eax+30]
 004F268E    call        004F12F0
 004F2693    mov         eax,dword ptr [ebp-4]
 004F2696    cmp         word ptr [eax+11A],0
>004F269E    je          004F26B2
 004F26A0    mov         ebx,dword ptr [ebp-4]
 004F26A3    mov         edx,dword ptr [ebp-4]
 004F26A6    mov         eax,dword ptr [ebx+11C]
 004F26AC    call        dword ptr [ebx+118]
 004F26B2    pop         ebx
 004F26B3    pop         ecx
 004F26B4    pop         ebp
 004F26B5    ret
end;*}

//004F26B8
{*procedure sub_004F26B8(?:?);
begin
 004F26B8    push        ebp
 004F26B9    mov         ebp,esp
 004F26BB    push        ecx
 004F26BC    push        ebx
 004F26BD    mov         dword ptr [ebp-4],eax
 004F26C0    mov         eax,dword ptr [ebp-4]
 004F26C3    mov         eax,dword ptr [eax+30]
 004F26C6    push        eax
 004F26C7    call        user32.IsIconic
 004F26CC    test        eax,eax
>004F26CE    je          004F27F8
 004F26D4    mov         eax,dword ptr [ebp-4]
 004F26D7    mov         eax,dword ptr [eax+30]
 004F26DA    push        eax
 004F26DB    call        user32.SetActiveWindow
 004F26E0    mov         eax,dword ptr [ebp-4]
 004F26E3    cmp         dword ptr [eax+44],0
>004F26E7    je          004F272D
 004F26E9    mov         eax,dword ptr [ebp-4]
 004F26EC    cmp         byte ptr [eax+5B],0
>004F26F0    jne         004F26FE
 004F26F2    mov         eax,dword ptr [ebp-4]
 004F26F5    mov         eax,dword ptr [eax+44]
 004F26F8    cmp         byte ptr [eax+57],0
>004F26FC    je          004F272D
 004F26FE    mov         eax,dword ptr [ebp-4]
 004F2701    mov         eax,dword ptr [eax+44]
 004F2704    call        TWinControl.GetHandle
 004F2709    push        eax
 004F270A    call        user32.IsWindowEnabled
 004F270F    test        eax,eax
>004F2711    je          004F272D
 004F2713    push        0
 004F2715    push        0F120
 004F271A    push        112
 004F271F    mov         eax,dword ptr [ebp-4]
 004F2722    mov         eax,dword ptr [eax+30]
 004F2725    push        eax
 004F2726    call        user32.DefWindowProcA
>004F272B    jmp         004F273D
 004F272D    mov         edx,9
 004F2732    mov         eax,dword ptr [ebp-4]
 004F2735    mov         eax,dword ptr [eax+30]
 004F2738    call        004F12F0
 004F273D    push        40
 004F273F    push        0
 004F2741    push        0
 004F2743    push        1
 004F2745    mov         eax,[0055B2BC];^gvar_0055DB78
 004F274A    mov         eax,dword ptr [eax]
 004F274C    call        eax
 004F274E    sar         eax,1
>004F2750    jns         004F2755
 004F2752    adc         eax,0
 004F2755    push        eax
 004F2756    push        0
 004F2758    mov         eax,[0055B2BC];^gvar_0055DB78
 004F275D    mov         eax,dword ptr [eax]
 004F275F    call        eax
 004F2761    sar         eax,1
>004F2763    jns         004F2768
 004F2765    adc         eax,0
 004F2768    push        eax
 004F2769    push        0
 004F276B    mov         eax,dword ptr [ebp-4]
 004F276E    mov         eax,dword ptr [eax+30]
 004F2771    push        eax
 004F2772    call        user32.SetWindowPos
 004F2777    mov         eax,dword ptr [ebp-4]
 004F277A    cmp         dword ptr [eax+44],0
>004F277E    je          004F27B3
 004F2780    mov         eax,dword ptr [ebp-4]
 004F2783    mov         eax,dword ptr [eax+44]
 004F2786    cmp         byte ptr [eax+22B],1
>004F278D    jne         004F27B3
 004F278F    mov         eax,dword ptr [ebp-4]
 004F2792    mov         eax,dword ptr [eax+44]
 004F2795    cmp         byte ptr [eax+57],0
>004F2799    jne         004F27B3
 004F279B    xor         edx,edx
 004F279D    mov         eax,dword ptr [ebp-4]
 004F27A0    mov         eax,dword ptr [eax+44]
 004F27A3    call        TForm.SetWindowState
 004F27A8    mov         eax,dword ptr [ebp-4]
 004F27AB    mov         eax,dword ptr [eax+44]
 004F27AE    call        004EEBD8
 004F27B3    mov         eax,dword ptr [ebp-4]
 004F27B6    call        004F1BEC
 004F27BB    mov         eax,[0055DE50];Screen:TScreen
 004F27C0    cmp         dword ptr [eax+64],0
>004F27C4    je          004F27D9
 004F27C6    mov         eax,[0055DE50];Screen:TScreen
 004F27CB    mov         eax,dword ptr [eax+64]
 004F27CE    call        TWinControl.GetHandle
 004F27D3    push        eax
 004F27D4    call        user32.SetFocus
 004F27D9    mov         eax,dword ptr [ebp-4]
 004F27DC    cmp         word ptr [eax+122],0
>004F27E4    je          004F27F8
 004F27E6    mov         ebx,dword ptr [ebp-4]
 004F27E9    mov         edx,dword ptr [ebp-4]
 004F27EC    mov         eax,dword ptr [ebx+124]
 004F27F2    call        dword ptr [ebx+120]
 004F27F8    pop         ebx
 004F27F9    pop         ecx
 004F27FA    pop         ebp
 004F27FB    ret
end;*}

//004F27FC
procedure sub_004F27FC(?:TApplication);
begin
{*
 004F27FC    push        ebp
 004F27FD    mov         ebp,esp
 004F27FF    add         esp,0FFFFFFF8
 004F2802    mov         dword ptr [ebp-4],eax
 004F2805    mov         eax,dword ptr [ebp-4]
 004F2808    cmp         dword ptr [eax+30],0;TApplication.FHandle:HWND
>004F280C    je          004F2851
 004F280E    mov         eax,dword ptr [ebp-4]
 004F2811    mov         eax,dword ptr [eax+30];TApplication.FHandle:HWND
 004F2814    push        eax
 004F2815    call        user32.GetLastActivePopup
 004F281A    mov         dword ptr [ebp-8],eax
 004F281D    cmp         dword ptr [ebp-8],0
>004F2821    je          004F2851
 004F2823    mov         eax,dword ptr [ebp-8]
 004F2826    mov         edx,dword ptr [ebp-4]
 004F2829    cmp         eax,dword ptr [edx+30];TApplication.FHandle:HWND
>004F282C    je          004F2851
 004F282E    mov         eax,dword ptr [ebp-8]
 004F2831    push        eax
 004F2832    call        user32.IsWindowVisible
 004F2837    test        eax,eax
>004F2839    je          004F2851
 004F283B    mov         eax,dword ptr [ebp-8]
 004F283E    push        eax
 004F283F    call        user32.IsWindowEnabled
 004F2844    test        eax,eax
>004F2846    je          004F2851
 004F2848    mov         eax,dword ptr [ebp-8]
 004F284B    push        eax
 004F284C    call        user32.SetForegroundWindow
 004F2851    pop         ecx
 004F2852    pop         ecx
 004F2853    pop         ebp
 004F2854    ret
*}
end;

//004F2858
{*procedure sub_004F2858(?:TApplication; ?:?);
begin
 004F2858    push        ebp
 004F2859    mov         ebp,esp
 004F285B    add         esp,0FFFFFEF8
 004F2861    mov         dword ptr [ebp-8],edx
 004F2864    mov         dword ptr [ebp-4],eax
 004F2867    mov         eax,dword ptr [ebp-4]
 004F286A    cmp         byte ptr [eax+0A4],0;TApplication.FHandleCreated:Boolean
>004F2871    je          004F289D
 004F2873    push        100
 004F2878    lea         eax,[ebp-108]
 004F287E    push        eax
 004F287F    mov         eax,dword ptr [ebp-4]
 004F2882    mov         eax,dword ptr [eax+30];TApplication.FHandle:HWND
 004F2885    push        eax
 004F2886    call        user32.GetWindowTextA
 004F288B    mov         ecx,eax
 004F288D    lea         edx,[ebp-108]
 004F2893    mov         eax,dword ptr [ebp-8]
 004F2896    call        @LStrFromPCharLen
>004F289B    jmp         004F28AE
 004F289D    mov         eax,dword ptr [ebp-8]
 004F28A0    mov         edx,dword ptr [ebp-4]
 004F28A3    mov         edx,dword ptr [edx+8C];TApplication.FTitle:String
 004F28A9    call        @LStrAsg
 004F28AE    mov         esp,ebp
 004F28B0    pop         ebp
 004F28B1    ret
end;*}

//004F28B4
{*function sub_004F28B4(?:?; ?:?):?;
begin
 004F28B4    push        ebp
 004F28B5    mov         ebp,esp
 004F28B7    add         esp,0FFFFFFF4
 004F28BA    mov         dword ptr [ebp-8],edx
 004F28BD    mov         dword ptr [ebp-4],eax
 004F28C0    mov         byte ptr [ebp-9],0
 004F28C4    mov         eax,dword ptr [ebp-4]
 004F28C7    cmp         dword ptr [eax+0B0],0
>004F28CE    je          004F28EC
 004F28D0    mov         eax,dword ptr [ebp-8]
 004F28D3    push        eax
 004F28D4    mov         eax,dword ptr [ebp-4]
 004F28D7    mov         eax,dword ptr [eax+0B0]
 004F28DD    push        eax
 004F28DE    call        user32.IsDialogMessageA
 004F28E3    cmp         eax,1
 004F28E6    sbb         eax,eax
 004F28E8    inc         eax
 004F28E9    mov         byte ptr [ebp-9],al
 004F28EC    mov         al,byte ptr [ebp-9]
 004F28EF    mov         esp,ebp
 004F28F1    pop         ebp
 004F28F2    ret
end;*}

//004F28F4
{*function sub_004F28F4(?:TApplication; ?:?):?;
begin
 004F28F4    push        ebp
 004F28F5    mov         ebp,esp
 004F28F7    add         esp,0FFFFFFF4
 004F28FA    mov         dword ptr [ebp-8],edx
 004F28FD    mov         dword ptr [ebp-4],eax
 004F2900    mov         byte ptr [ebp-9],0
 004F2904    mov         eax,dword ptr [ebp-4]
 004F2907    cmp         dword ptr [eax+44],0
>004F290B    je          004F2957
 004F290D    mov         eax,dword ptr [ebp-4]
 004F2910    mov         eax,dword ptr [eax+44]
 004F2913    cmp         byte ptr [eax+22F],2
>004F291A    jne         004F2957
 004F291C    mov         eax,[0055DE50];Screen:TScreen
 004F2921    cmp         dword ptr [eax+6C],0
>004F2925    je          004F2957
 004F2927    mov         eax,[0055DE50];Screen:TScreen
 004F292C    mov         eax,dword ptr [eax+6C]
 004F292F    cmp         byte ptr [eax+22F],1
>004F2936    jne         004F2957
 004F2938    mov         eax,dword ptr [ebp-8]
 004F293B    push        eax
 004F293C    mov         eax,dword ptr [ebp-4]
 004F293F    mov         eax,dword ptr [eax+44]
 004F2942    mov         eax,dword ptr [eax+254]
 004F2948    push        eax
 004F2949    call        user32.TranslateMDISysAccel
 004F294E    cmp         eax,1
 004F2951    sbb         eax,eax
 004F2953    inc         eax
 004F2954    mov         byte ptr [ebp-9],al
 004F2957    mov         al,byte ptr [ebp-9]
 004F295A    mov         esp,ebp
 004F295C    pop         ebp
 004F295D    ret
end;*}

//004F2960
{*function sub_004F2960(?:TApplication; ?:?):?;
begin
 004F2960    push        ebp
 004F2961    mov         ebp,esp
 004F2963    add         esp,0FFFFFFF0
 004F2966    mov         dword ptr [ebp-8],edx
 004F2969    mov         dword ptr [ebp-4],eax
 004F296C    mov         byte ptr [ebp-9],0
 004F2970    mov         eax,dword ptr [ebp-8]
 004F2973    cmp         dword ptr [eax+4],100
>004F297A    jb          004F2A6B
 004F2980    mov         eax,dword ptr [ebp-8]
 004F2983    cmp         dword ptr [eax+4],108
>004F298A    ja          004F2A6B
 004F2990    call        user32.GetCapture
 004F2995    mov         dword ptr [ebp-10],eax
 004F2998    cmp         dword ptr [ebp-10],0
>004F299C    jne         004F2A2D
 004F29A2    mov         eax,dword ptr [ebp-8]
 004F29A5    mov         eax,dword ptr [eax]
 004F29A7    mov         dword ptr [ebp-10],eax
 004F29AA    mov         eax,dword ptr [ebp-4]
 004F29AD    cmp         dword ptr [eax+44],0
>004F29B1    je          004F29E0
 004F29B3    mov         eax,dword ptr [ebp-4]
 004F29B6    mov         eax,dword ptr [eax+44]
 004F29B9    mov         eax,dword ptr [eax+254]
 004F29BF    cmp         eax,dword ptr [ebp-10]
>004F29C2    jne         004F29E0
 004F29C4    mov         eax,dword ptr [ebp-4]
 004F29C7    mov         eax,dword ptr [eax+44]
 004F29CA    call        TWinControl.GetHandle
 004F29CF    mov         dword ptr [ebp-10],eax
>004F29D2    jmp         004F2A00
 004F29D4    mov         eax,dword ptr [ebp-10]
 004F29D7    push        eax
 004F29D8    call        user32.GetParent
 004F29DD    mov         dword ptr [ebp-10],eax
 004F29E0    mov         eax,dword ptr [ebp-10]
 004F29E3    call        004C6F7C
 004F29E8    test        eax,eax
>004F29EA    jne         004F29F2
 004F29EC    cmp         dword ptr [ebp-10],0
>004F29F0    jne         004F29D4
 004F29F2    cmp         dword ptr [ebp-10],0
>004F29F6    jne         004F2A00
 004F29F8    mov         eax,dword ptr [ebp-8]
 004F29FB    mov         eax,dword ptr [eax]
 004F29FD    mov         dword ptr [ebp-10],eax
 004F2A00    mov         eax,dword ptr [ebp-8]
 004F2A03    mov         eax,dword ptr [eax+0C]
 004F2A06    push        eax
 004F2A07    mov         eax,dword ptr [ebp-8]
 004F2A0A    mov         eax,dword ptr [eax+8]
 004F2A0D    push        eax
 004F2A0E    mov         eax,dword ptr [ebp-8]
 004F2A11    mov         eax,dword ptr [eax+4]
 004F2A14    add         eax,0BC00
 004F2A19    push        eax
 004F2A1A    mov         eax,dword ptr [ebp-10]
 004F2A1D    push        eax
 004F2A1E    call        user32.SendMessageA
 004F2A23    test        eax,eax
>004F2A25    je          004F2A6B
 004F2A27    mov         byte ptr [ebp-9],1
>004F2A2B    jmp         004F2A6B
 004F2A2D    push        0FA
 004F2A2F    mov         eax,dword ptr [ebp-10]
 004F2A32    push        eax
 004F2A33    call        user32.GetWindowLongA
 004F2A38    cmp         eax,dword ptr ds:[55C664];gvar_0055C664
>004F2A3E    jne         004F2A6B
 004F2A40    mov         eax,dword ptr [ebp-8]
 004F2A43    mov         eax,dword ptr [eax+0C]
 004F2A46    push        eax
 004F2A47    mov         eax,dword ptr [ebp-8]
 004F2A4A    mov         eax,dword ptr [eax+8]
 004F2A4D    push        eax
 004F2A4E    mov         eax,dword ptr [ebp-8]
 004F2A51    mov         eax,dword ptr [eax+4]
 004F2A54    add         eax,0BC00
 004F2A59    push        eax
 004F2A5A    mov         eax,dword ptr [ebp-10]
 004F2A5D    push        eax
 004F2A5E    call        user32.SendMessageA
 004F2A63    test        eax,eax
>004F2A65    je          004F2A6B
 004F2A67    mov         byte ptr [ebp-9],1
 004F2A6B    mov         al,byte ptr [ebp-9]
 004F2A6E    mov         esp,ebp
 004F2A70    pop         ebp
 004F2A71    ret
end;*}

//004F2A74
{*function sub_004F2A74(?:TApplication; ?:?):?;
begin
 004F2A74    push        ebp
 004F2A75    mov         ebp,esp
 004F2A77    add         esp,0FFFFFFF4
 004F2A7A    mov         dword ptr [ebp-8],edx
 004F2A7D    mov         dword ptr [ebp-4],eax
 004F2A80    mov         byte ptr [ebp-9],0
 004F2A84    mov         eax,dword ptr [ebp-4]
 004F2A87    cmp         dword ptr [eax+84],0
>004F2A8E    je          004F2AB0
 004F2A90    mov         edx,dword ptr [ebp-8]
 004F2A93    mov         eax,dword ptr [ebp-4]
 004F2A96    mov         eax,dword ptr [eax+84]
 004F2A9C    mov         ecx,dword ptr [eax]
 004F2A9E    call        dword ptr [ecx+0DC]
 004F2AA4    test        al,al
>004F2AA6    je          004F2AB0
 004F2AA8    mov         eax,dword ptr [ebp-4]
 004F2AAB    call        004F3CC8
 004F2AB0    mov         al,byte ptr [ebp-9]
 004F2AB3    mov         esp,ebp
 004F2AB5    pop         ebp
 004F2AB6    ret
end;*}

//004F2AB8
{*function sub_004F2AB8(?:?; ?:?):?;
begin
 004F2AB8    push        ebp
 004F2AB9    mov         ebp,esp
 004F2ABB    add         esp,0FFFFFFF4
 004F2ABE    push        ebx
 004F2ABF    push        esi
 004F2AC0    mov         dword ptr [ebp-8],edx
 004F2AC3    mov         dword ptr [ebp-4],eax
 004F2AC6    mov         byte ptr [ebp-9],0
 004F2ACA    mov         eax,dword ptr [ebp-4]
 004F2ACD    cmp         word ptr [eax+12A],0
>004F2AD5    je          004F2AEC
 004F2AD7    lea         ecx,[ebp-9]
 004F2ADA    mov         edx,dword ptr [ebp-8]
 004F2ADD    mov         ebx,dword ptr [ebp-4]
 004F2AE0    mov         eax,dword ptr [ebx+12C]
 004F2AE6    call        dword ptr [ebx+128]
 004F2AEC    cmp         byte ptr [ebp-9],0
>004F2AF0    jne         004F2B2A
 004F2AF2    mov         eax,dword ptr [ebp-4]
 004F2AF5    cmp         dword ptr [eax+44],0
>004F2AF9    je          004F2B26
 004F2AFB    mov         eax,dword ptr [ebp-4]
 004F2AFE    mov         eax,dword ptr [eax+44]
 004F2B01    call        TWinControl.GetHandle
 004F2B06    push        eax
 004F2B07    call        user32.IsWindowEnabled
 004F2B0C    test        eax,eax
>004F2B0E    je          004F2B26
 004F2B10    mov         edx,dword ptr [ebp-8]
 004F2B13    mov         eax,dword ptr [ebp-4]
 004F2B16    mov         eax,dword ptr [eax+44]
 004F2B19    mov         si,0FFAB
 004F2B1D    call        @CallDynaInst
 004F2B22    test        al,al
>004F2B24    jne         004F2B2A
 004F2B26    xor         eax,eax
>004F2B28    jmp         004F2B2C
 004F2B2A    mov         al,1
 004F2B2C    mov         byte ptr [ebp-9],al
 004F2B2F    mov         al,byte ptr [ebp-9]
 004F2B32    pop         esi
 004F2B33    pop         ebx
 004F2B34    mov         esp,ebp
 004F2B36    pop         ebp
 004F2B37    ret
end;*}

//004F2B38
{*function sub_004F2B38(?:?; ?:?):?;
begin
 004F2B38    push        ebp
 004F2B39    mov         ebp,esp
 004F2B3B    add         esp,0FFFFFFF4
 004F2B3E    push        ebx
 004F2B3F    mov         dword ptr [ebp-8],edx
 004F2B42    mov         dword ptr [ebp-4],eax
 004F2B45    mov         byte ptr [ebp-9],0
 004F2B49    push        1
 004F2B4B    push        0
 004F2B4D    push        0
 004F2B4F    push        0
 004F2B51    mov         eax,dword ptr [ebp-8]
 004F2B54    push        eax
 004F2B55    call        user32.PeekMessageA
 004F2B5A    test        eax,eax
>004F2B5C    je          004F2BF5
 004F2B62    mov         byte ptr [ebp-9],1
 004F2B66    mov         eax,dword ptr [ebp-8]
 004F2B69    cmp         dword ptr [eax+4],12
>004F2B6D    je          004F2BEB
 004F2B6F    mov         byte ptr [ebp-0A],0
 004F2B73    mov         eax,dword ptr [ebp-4]
 004F2B76    cmp         word ptr [eax+0DA],0
>004F2B7E    je          004F2B95
 004F2B80    lea         ecx,[ebp-0A]
 004F2B83    mov         edx,dword ptr [ebp-8]
 004F2B86    mov         ebx,dword ptr [ebp-4]
 004F2B89    mov         eax,dword ptr [ebx+0DC]
 004F2B8F    call        dword ptr [ebx+0D8]
 004F2B95    mov         edx,dword ptr [ebp-8]
 004F2B98    mov         eax,dword ptr [ebp-4]
 004F2B9B    call        004F2A74
 004F2BA0    test        al,al
>004F2BA2    jne         004F2BF5
 004F2BA4    cmp         byte ptr [ebp-0A],0
>004F2BA8    jne         004F2BF5
 004F2BAA    mov         edx,dword ptr [ebp-8]
 004F2BAD    mov         eax,dword ptr [ebp-4]
 004F2BB0    call        004F28F4
 004F2BB5    test        al,al
>004F2BB7    jne         004F2BF5
 004F2BB9    mov         edx,dword ptr [ebp-8]
 004F2BBC    mov         eax,dword ptr [ebp-4]
 004F2BBF    call        004F2960
 004F2BC4    test        al,al
>004F2BC6    jne         004F2BF5
 004F2BC8    mov         edx,dword ptr [ebp-8]
 004F2BCB    mov         eax,dword ptr [ebp-4]
 004F2BCE    call        004F28B4
 004F2BD3    test        al,al
>004F2BD5    jne         004F2BF5
 004F2BD7    mov         eax,dword ptr [ebp-8]
 004F2BDA    push        eax
 004F2BDB    call        user32.TranslateMessage
 004F2BE0    mov         eax,dword ptr [ebp-8]
 004F2BE3    push        eax
 004F2BE4    call        user32.DispatchMessageA
>004F2BE9    jmp         004F2BF5
 004F2BEB    mov         eax,dword ptr [ebp-4]
 004F2BEE    mov         byte ptr [eax+9C],1
 004F2BF5    mov         al,byte ptr [ebp-9]
 004F2BF8    pop         ebx
 004F2BF9    mov         esp,ebp
 004F2BFB    pop         ebp
 004F2BFC    ret
end;*}

//004F2C00
{*procedure sub_004F2C00(?:?);
begin
 004F2C00    push        ebp
 004F2C01    mov         ebp,esp
 004F2C03    add         esp,0FFFFFFE0
 004F2C06    mov         dword ptr [ebp-4],eax
 004F2C09    lea         edx,[ebp-20]
 004F2C0C    mov         eax,dword ptr [ebp-4]
 004F2C0F    call        004F2B38
 004F2C14    test        al,al
>004F2C16    jne         004F2C23
 004F2C18    lea         edx,[ebp-20]
 004F2C1B    mov         eax,dword ptr [ebp-4]
 004F2C1E    call        004F368C
 004F2C23    mov         esp,ebp
 004F2C25    pop         ebp
 004F2C26    ret
end;*}

//004F2C28
{*procedure sub_004F2C28(?:TApplication; ?:?; ?:?);
begin
 004F2C28    push        ebp
 004F2C29    mov         ebp,esp
 004F2C2B    add         esp,0FFFFFFF8
 004F2C2E    mov         dword ptr [ebp-4],eax
 004F2C31    mov         eax,dword ptr [ebp-4]
 004F2C34    cmp         byte ptr [eax+0A4],0;TApplication.FHandleCreated:Boolean
>004F2C3B    jne         004F2C5F
 004F2C3D    mov         eax,dword ptr [ebp-4]
 004F2C40    cmp         dword ptr [eax+30],0;TApplication.FHandle:HWND
>004F2C44    je          004F2C99
 004F2C46    lea         eax,[ebp+8]
 004F2C49    push        eax
 004F2C4A    push        0
 004F2C4C    push        0B020
 004F2C51    mov         eax,dword ptr [ebp-4]
 004F2C54    mov         eax,dword ptr [eax+30];TApplication.FHandle:HWND
 004F2C57    push        eax
 004F2C58    call        user32.SendMessageA
>004F2C5D    jmp         004F2C99
 004F2C5F    mov         eax,dword ptr [ebp-4]
 004F2C62    mov         eax,dword ptr [eax+0A8];TApplication.FWindowHooks:TList
 004F2C68    call        004787A4
 004F2C6D    mov         eax,8
 004F2C72    call        @GetMem
 004F2C77    mov         dword ptr [ebp-8],eax
 004F2C7A    mov         eax,dword ptr [ebp-8]
 004F2C7D    mov         edx,dword ptr [ebp+8]
 004F2C80    mov         dword ptr [eax],edx
 004F2C82    mov         edx,dword ptr [ebp+0C]
 004F2C85    mov         dword ptr [eax+4],edx
 004F2C88    mov         edx,dword ptr [ebp-8]
 004F2C8B    mov         eax,dword ptr [ebp-4]
 004F2C8E    mov         eax,dword ptr [eax+0A8];TApplication.FWindowHooks:TList
 004F2C94    call        TList.Add
 004F2C99    pop         ecx
 004F2C9A    pop         ecx
 004F2C9B    pop         ebp
 004F2C9C    ret         8
end;*}

//004F2CA0
{*procedure sub_004F2CA0(?:TApplication; ?:?; ?:?);
begin
 004F2CA0    push        ebp
 004F2CA1    mov         ebp,esp
 004F2CA3    add         esp,0FFFFFFF0
 004F2CA6    mov         dword ptr [ebp-4],eax
 004F2CA9    mov         eax,dword ptr [ebp-4]
 004F2CAC    cmp         byte ptr [eax+0A4],0;TApplication.FHandleCreated:Boolean
>004F2CB3    jne         004F2CDB
 004F2CB5    mov         eax,dword ptr [ebp-4]
 004F2CB8    cmp         dword ptr [eax+30],0;TApplication.FHandle:HWND
>004F2CBC    je          004F2D48
 004F2CC2    lea         eax,[ebp+8]
 004F2CC5    push        eax
 004F2CC6    push        1
 004F2CC8    push        0B020
 004F2CCD    mov         eax,dword ptr [ebp-4]
 004F2CD0    mov         eax,dword ptr [eax+30];TApplication.FHandle:HWND
 004F2CD3    push        eax
 004F2CD4    call        user32.SendMessageA
>004F2CD9    jmp         004F2D48
 004F2CDB    mov         eax,dword ptr [ebp-4]
 004F2CDE    mov         eax,dword ptr [eax+0A8];TApplication.FWindowHooks:TList
 004F2CE4    mov         eax,dword ptr [eax+8];TList.FCount:Integer
 004F2CE7    dec         eax
 004F2CE8    test        eax,eax
>004F2CEA    jl          004F2D48
 004F2CEC    inc         eax
 004F2CED    mov         dword ptr [ebp-10],eax
 004F2CF0    mov         dword ptr [ebp-8],0
 004F2CF7    mov         edx,dword ptr [ebp-8]
 004F2CFA    mov         eax,dword ptr [ebp-4]
 004F2CFD    mov         eax,dword ptr [eax+0A8];TApplication.FWindowHooks:TList
 004F2D03    call        TList.Get
 004F2D08    mov         dword ptr [ebp-0C],eax
 004F2D0B    mov         eax,dword ptr [ebp-0C]
 004F2D0E    mov         eax,dword ptr [eax]
 004F2D10    cmp         eax,dword ptr [ebp+8]
>004F2D13    jne         004F2D40
 004F2D15    mov         eax,dword ptr [ebp+0C]
 004F2D18    mov         edx,dword ptr [ebp-0C]
 004F2D1B    cmp         eax,dword ptr [edx+4]
>004F2D1E    jne         004F2D40
 004F2D20    mov         edx,8
 004F2D25    mov         eax,dword ptr [ebp-0C]
 004F2D28    call        @FreeMem
 004F2D2D    mov         edx,dword ptr [ebp-8]
 004F2D30    mov         eax,dword ptr [ebp-4]
 004F2D33    mov         eax,dword ptr [eax+0A8];TApplication.FWindowHooks:TList
 004F2D39    call        00478668
>004F2D3E    jmp         004F2D48
 004F2D40    inc         dword ptr [ebp-8]
 004F2D43    dec         dword ptr [ebp-10]
>004F2D46    jne         004F2CF7
 004F2D48    mov         esp,ebp
 004F2D4A    pop         ebp
 004F2D4B    ret         8
end;*}

//004F2D50
{*procedure sub_004F2D50(?:?);
begin
 004F2D50    push        ebp
 004F2D51    mov         ebp,esp
 004F2D53    push        ecx
 004F2D54    push        ebx
 004F2D55    mov         dword ptr [ebp-4],eax
 004F2D58    mov         eax,[0055B3B4];^gvar_0055C040
 004F2D5D    cmp         dword ptr [eax],0
>004F2D60    je          004F2D6C
 004F2D62    mov         ebx,dword ptr ds:[55B3B4];^gvar_0055C040
 004F2D68    mov         ebx,dword ptr [ebx]
 004F2D6A    call        ebx
 004F2D6C    pop         ebx
 004F2D6D    pop         ecx
 004F2D6E    pop         ebp
 004F2D6F    ret
end;*}

//004F2D70
{*procedure sub_004F2D70(?:?; ?:?; ?:?);
begin
 004F2D70    push        ebp
 004F2D71    mov         ebp,esp
 004F2D73    add         esp,0FFFFFFF0
 004F2D76    push        ebx
 004F2D77    push        esi
 004F2D78    push        edi
 004F2D79    mov         dword ptr [ebp-0C],ecx
 004F2D7C    mov         dword ptr [ebp-8],edx
 004F2D7F    mov         dword ptr [ebp-4],eax
 004F2D82    mov         eax,dword ptr [ebp-8]
 004F2D85    call        dword ptr [eax-0C]
 004F2D88    mov         dword ptr [ebp-10],eax
 004F2D8B    mov         eax,dword ptr [ebp-0C]
 004F2D8E    mov         edx,dword ptr [ebp-10]
 004F2D91    mov         dword ptr [eax],edx
 004F2D93    xor         eax,eax
 004F2D95    push        ebp
 004F2D96    push        4F2DB9
 004F2D9B    push        dword ptr fs:[eax]
 004F2D9E    mov         dword ptr fs:[eax],esp
 004F2DA1    mov         ecx,dword ptr [ebp-4]
 004F2DA4    or          edx,0FFFFFFFF
 004F2DA7    mov         eax,dword ptr [ebp-10]
 004F2DAA    mov         ebx,dword ptr [eax]
 004F2DAC    call        dword ptr [ebx+2C]
 004F2DAF    xor         eax,eax
 004F2DB1    pop         edx
 004F2DB2    pop         ecx
 004F2DB3    pop         ecx
 004F2DB4    mov         dword ptr fs:[eax],edx
>004F2DB7    jmp         004F2DCF
>004F2DB9    jmp         @HandleAnyException
 004F2DBE    mov         eax,dword ptr [ebp-0C]
 004F2DC1    xor         edx,edx
 004F2DC3    mov         dword ptr [eax],edx
 004F2DC5    call        @RaiseAgain
 004F2DCA    call        @DoneExcept
 004F2DCF    mov         eax,dword ptr [ebp-4]
 004F2DD2    cmp         dword ptr [eax+44],0
>004F2DD6    jne         004F2DFB
 004F2DD8    mov         eax,dword ptr [ebp-10]
 004F2DDB    mov         edx,dword ptr ds:[4E6708];TForm
 004F2DE1    call        @IsClass
 004F2DE6    test        al,al
>004F2DE8    je          004F2DFB
 004F2DEA    mov         eax,dword ptr [ebp-10]
 004F2DED    call        004D3890
 004F2DF2    mov         eax,dword ptr [ebp-4]
 004F2DF5    mov         edx,dword ptr [ebp-10]
 004F2DF8    mov         dword ptr [eax+44],edx
 004F2DFB    pop         edi
 004F2DFC    pop         esi
 004F2DFD    pop         ebx
 004F2DFE    mov         esp,ebp
 004F2E00    pop         ebp
 004F2E01    ret
end;*}

//004F2E04
{*procedure sub_004F2E04(?:?);
begin
 004F2E04    push        ebp
 004F2E05    mov         ebp,esp
 004F2E07    push        ecx
 004F2E08    push        ebx
 004F2E09    push        esi
 004F2E0A    push        edi
 004F2E0B    mov         dword ptr [ebp-4],eax
 004F2E0E    mov         eax,dword ptr [ebp-4]
 004F2E11    mov         byte ptr [eax+0A5],1
 004F2E18    xor         eax,eax
 004F2E1A    push        ebp
 004F2E1B    push        4F2EF2
 004F2E20    push        dword ptr fs:[eax]
 004F2E23    mov         dword ptr fs:[eax],esp
 004F2E26    mov         eax,4E792C;DoneApplication
 004F2E2B    call        00466154
 004F2E30    mov         eax,dword ptr [ebp-4]
 004F2E33    cmp         dword ptr [eax+44],0
>004F2E37    je          004F2EDA
 004F2E3D    mov         eax,[0055B45C];^gvar_0055C038
 004F2E42    mov         eax,dword ptr [eax]
 004F2E44    sub         eax,3
>004F2E47    je          004F2E5D
 004F2E49    sub         eax,4
>004F2E4C    jne         004F2E6A
 004F2E4E    mov         eax,dword ptr [ebp-4]
 004F2E51    mov         eax,dword ptr [eax+44]
 004F2E54    mov         byte ptr [eax+22B],1
>004F2E5B    jmp         004F2E6A
 004F2E5D    mov         eax,dword ptr [ebp-4]
 004F2E60    mov         eax,dword ptr [eax+44]
 004F2E63    mov         dl,2
 004F2E65    call        TForm.SetWindowState
 004F2E6A    mov         eax,dword ptr [ebp-4]
 004F2E6D    cmp         byte ptr [eax+5B],0
>004F2E71    je          004F2E99
 004F2E73    mov         eax,dword ptr [ebp-4]
 004F2E76    mov         eax,dword ptr [eax+44]
 004F2E79    cmp         byte ptr [eax+22B],1
>004F2E80    jne         004F2E8C
 004F2E82    mov         eax,dword ptr [ebp-4]
 004F2E85    call        004F25CC
>004F2E8A    jmp         004F2E99
 004F2E8C    mov         eax,dword ptr [ebp-4]
 004F2E8F    mov         eax,dword ptr [eax+44]
 004F2E92    mov         dl,1
 004F2E94    call        TCustomForm.SetVisible
 004F2E99    xor         eax,eax
 004F2E9B    push        ebp
 004F2E9C    push        4F2EB9
 004F2EA1    push        dword ptr fs:[eax]
 004F2EA4    mov         dword ptr fs:[eax],esp
 004F2EA7    mov         eax,dword ptr [ebp-4]
 004F2EAA    call        004F2C00
 004F2EAF    xor         eax,eax
 004F2EB1    pop         edx
 004F2EB2    pop         ecx
 004F2EB3    pop         ecx
 004F2EB4    mov         dword ptr fs:[eax],edx
>004F2EB7    jmp         004F2ECE
>004F2EB9    jmp         @HandleAnyException
 004F2EBE    mov         edx,dword ptr [ebp-4]
 004F2EC1    mov         eax,dword ptr [ebp-4]
 004F2EC4    call        TApplication.HandleException
 004F2EC9    call        @DoneExcept
 004F2ECE    mov         eax,dword ptr [ebp-4]
 004F2ED1    cmp         byte ptr [eax+9C],0
>004F2ED8    je          004F2E99
 004F2EDA    xor         eax,eax
 004F2EDC    pop         edx
 004F2EDD    pop         ecx
 004F2EDE    pop         ecx
 004F2EDF    mov         dword ptr fs:[eax],edx
 004F2EE2    push        4F2EF9
 004F2EE7    mov         eax,dword ptr [ebp-4]
 004F2EEA    mov         byte ptr [eax+0A5],0
 004F2EF1    ret
>004F2EF2    jmp         @HandleFinally
>004F2EF7    jmp         004F2EE7
 004F2EF9    pop         edi
 004F2EFA    pop         esi
 004F2EFB    pop         ebx
 004F2EFC    pop         ecx
 004F2EFD    pop         ebp
 004F2EFE    ret
end;*}

//004F2F00
procedure sub_004F2F00(?:TApplication);
begin
{*
 004F2F00    push        ebp
 004F2F01    mov         ebp,esp
 004F2F03    push        ecx
 004F2F04    mov         dword ptr [ebp-4],eax
 004F2F07    call        0046C510
 004F2F0C    test        al,al
>004F2F0E    je          004F2F17
 004F2F10    push        0
 004F2F12    call        user32.PostQuitMessage
 004F2F17    pop         ecx
 004F2F18    pop         ebp
 004F2F19    ret
*}
end;

//004F2F1C
procedure TApplication.HandleException(Sender:TObject);
begin
{*
 004F2F1C    push        ebp
 004F2F1D    mov         ebp,esp
 004F2F1F    add         esp,0FFFFFFF8
 004F2F22    push        ebx
 004F2F23    mov         dword ptr [ebp-8],edx
 004F2F26    mov         dword ptr [ebp-4],eax
 004F2F29    call        user32.GetCapture
 004F2F2E    test        eax,eax
>004F2F30    je          004F2F43
 004F2F32    push        0
 004F2F34    push        0
 004F2F36    push        1F
 004F2F38    call        user32.GetCapture
 004F2F3D    push        eax
 004F2F3E    call        user32.SendMessageA
 004F2F43    call        ExceptObject
 004F2F48    mov         edx,dword ptr ds:[4653B4];Exception
 004F2F4E    call        @IsClass
 004F2F53    test        al,al
>004F2F55    je          004F2FA4
 004F2F57    call        ExceptObject
 004F2F5C    mov         edx,dword ptr ds:[46541C];EAbort
 004F2F62    call        @IsClass
 004F2F67    test        al,al
>004F2F69    jne         004F2FB5
 004F2F6B    mov         eax,dword ptr [ebp-4]
 004F2F6E    cmp         word ptr [eax+0D2],0
>004F2F76    je          004F2F93
 004F2F78    call        ExceptObject
 004F2F7D    mov         ecx,eax
 004F2F7F    mov         ebx,dword ptr [ebp-4]
 004F2F82    mov         edx,dword ptr [ebp-8]
 004F2F85    mov         eax,dword ptr [ebx+0D4]
 004F2F8B    call        dword ptr [ebx+0D0]
>004F2F91    jmp         004F2FB5
 004F2F93    call        ExceptObject
 004F2F98    mov         edx,eax
 004F2F9A    mov         eax,dword ptr [ebp-4]
 004F2F9D    call        004F3124
>004F2FA2    jmp         004F2FB5
 004F2FA4    call        ExceptAddr
 004F2FA9    push        eax
 004F2FAA    call        ExceptObject
 004F2FAF    pop         edx
 004F2FB0    call        0046A9B0
 004F2FB5    pop         ebx
 004F2FB6    pop         ecx
 004F2FB7    pop         ecx
 004F2FB8    pop         ebp
 004F2FB9    ret
*}
end;

//004F2FBC
{*function sub_004F2FBC(?:?; ?:PChar; ?:?; ?:?):?;
begin
 004F2FBC    push        ebp
 004F2FBD    mov         ebp,esp
 004F2FBF    add         esp,0FFFFFFA4
 004F2FC2    mov         dword ptr [ebp-0C],ecx
 004F2FC5    mov         dword ptr [ebp-8],edx
 004F2FC8    mov         dword ptr [ebp-4],eax
 004F2FCB    call        user32.GetActiveWindow
 004F2FD0    mov         dword ptr [ebp-14],eax
 004F2FD3    push        2
 004F2FD5    mov         eax,dword ptr [ebp-14]
 004F2FD8    push        eax
 004F2FD9    mov         eax,[0055B38C];^gvar_0055DB7C
 004F2FDE    mov         eax,dword ptr [eax]
 004F2FE0    call        eax
 004F2FE2    mov         dword ptr [ebp-1C],eax
 004F2FE5    push        2
 004F2FE7    mov         eax,dword ptr [ebp-4]
 004F2FEA    mov         eax,dword ptr [eax+30]
 004F2FED    push        eax
 004F2FEE    mov         eax,[0055B38C];^gvar_0055DB7C
 004F2FF3    mov         eax,dword ptr [eax]
 004F2FF5    call        eax
 004F2FF7    mov         dword ptr [ebp-20],eax
 004F2FFA    mov         eax,dword ptr [ebp-1C]
 004F2FFD    cmp         eax,dword ptr [ebp-20]
>004F3000    je          004F3060
 004F3002    mov         dword ptr [ebp-4C],28
 004F3009    lea         eax,[ebp-4C]
 004F300C    push        eax
 004F300D    mov         eax,dword ptr [ebp-1C]
 004F3010    push        eax
 004F3011    mov         eax,[0055B294];^gvar_0055DB88
 004F3016    mov         eax,dword ptr [eax]
 004F3018    call        eax
 004F301A    lea         eax,[ebp-5C]
 004F301D    push        eax
 004F301E    mov         eax,dword ptr [ebp-4]
 004F3021    mov         eax,dword ptr [eax+30]
 004F3024    push        eax
 004F3025    call        user32.GetWindowRect
 004F302A    push        1D
 004F302C    push        0
 004F302E    push        0
 004F3030    mov         eax,dword ptr [ebp-3C]
 004F3033    sub         eax,dword ptr [ebp-44]
 004F3036    sar         eax,1
>004F3038    jns         004F303D
 004F303A    adc         eax,0
 004F303D    add         eax,dword ptr [ebp-44]
 004F3040    push        eax
 004F3041    mov         eax,dword ptr [ebp-40]
 004F3044    sub         eax,dword ptr [ebp-48]
 004F3047    sar         eax,1
>004F3049    jns         004F304E
 004F304B    adc         eax,0
 004F304E    add         eax,dword ptr [ebp-48]
 004F3051    push        eax
 004F3052    push        0
 004F3054    mov         eax,dword ptr [ebp-4]
 004F3057    mov         eax,dword ptr [eax+30]
 004F305A    push        eax
 004F305B    call        user32.SetWindowPos
 004F3060    xor         eax,eax
 004F3062    call        004E79D8
 004F3067    mov         dword ptr [ebp-18],eax
 004F306A    call        004E7898
 004F306F    mov         dword ptr [ebp-24],eax
 004F3072    mov         eax,dword ptr [ebp-4]
 004F3075    call        004F1C78
 004F307A    test        al,al
>004F307C    je          004F3085
 004F307E    or          dword ptr [ebp+8],100000
 004F3085    xor         eax,eax
 004F3087    push        ebp
 004F3088    push        4F3113
 004F308D    push        dword ptr fs:[eax]
 004F3090    mov         dword ptr fs:[eax],esp
 004F3093    mov         eax,dword ptr [ebp+8]
 004F3096    push        eax
 004F3097    mov         eax,dword ptr [ebp-0C]
 004F309A    push        eax
 004F309B    mov         eax,dword ptr [ebp-8]
 004F309E    push        eax
 004F309F    mov         eax,dword ptr [ebp-4]
 004F30A2    mov         eax,dword ptr [eax+30]
 004F30A5    push        eax
 004F30A6    call        user32.MessageBoxA
 004F30AB    mov         dword ptr [ebp-10],eax
 004F30AE    xor         eax,eax
 004F30B0    pop         edx
 004F30B1    pop         ecx
 004F30B2    pop         ecx
 004F30B3    mov         dword ptr fs:[eax],edx
 004F30B6    push        4F311A
 004F30BB    mov         eax,dword ptr [ebp-1C]
 004F30BE    cmp         eax,dword ptr [ebp-20]
>004F30C1    je          004F30F9
 004F30C3    push        1D
 004F30C5    push        0
 004F30C7    push        0
 004F30C9    mov         eax,dword ptr [ebp-50]
 004F30CC    sub         eax,dword ptr [ebp-58]
 004F30CF    sar         eax,1
>004F30D1    jns         004F30D6
 004F30D3    adc         eax,0
 004F30D6    add         eax,dword ptr [ebp-58]
 004F30D9    push        eax
 004F30DA    mov         eax,dword ptr [ebp-54]
 004F30DD    sub         eax,dword ptr [ebp-5C]
 004F30E0    sar         eax,1
>004F30E2    jns         004F30E7
 004F30E4    adc         eax,0
 004F30E7    add         eax,dword ptr [ebp-5C]
 004F30EA    push        eax
 004F30EB    push        0
 004F30ED    mov         eax,dword ptr [ebp-4]
 004F30F0    mov         eax,dword ptr [eax+30]
 004F30F3    push        eax
 004F30F4    call        user32.SetWindowPos
 004F30F9    mov         eax,dword ptr [ebp-18]
 004F30FC    call        004E7A90
 004F3101    mov         eax,dword ptr [ebp-14]
 004F3104    push        eax
 004F3105    call        user32.SetActiveWindow
 004F310A    mov         eax,dword ptr [ebp-24]
 004F310D    call        004E78AC
 004F3112    ret
>004F3113    jmp         @HandleFinally
>004F3118    jmp         004F30BB
 004F311A    mov         eax,dword ptr [ebp-10]
 004F311D    mov         esp,ebp
 004F311F    pop         ebp
 004F3120    ret         4
end;*}

//004F3124
{*procedure sub_004F3124(?:?; ?:?);
begin
 004F3124    push        ebp
 004F3125    mov         ebp,esp
 004F3127    add         esp,0FFFFFEF0
 004F312D    xor         ecx,ecx
 004F312F    mov         dword ptr [ebp-110],ecx
 004F3135    mov         dword ptr [ebp-0C],ecx
 004F3138    mov         dword ptr [ebp-8],edx
 004F313B    mov         dword ptr [ebp-4],eax
 004F313E    xor         eax,eax
 004F3140    push        ebp
 004F3141    push        4F31E4
 004F3146    push        dword ptr fs:[eax]
 004F3149    mov         dword ptr fs:[eax],esp
 004F314C    lea         eax,[ebp-0C]
 004F314F    mov         edx,dword ptr [ebp-8]
 004F3152    mov         edx,dword ptr [edx+4]
 004F3155    call        @LStrLAsg
 004F315A    cmp         dword ptr [ebp-0C],0
>004F315E    je          004F3194
 004F3160    mov         eax,dword ptr [ebp-0C]
 004F3163    call        00466FC0
 004F3168    mov         edx,eax
 004F316A    lea         eax,[ebp-10C]
 004F3170    call        @_CToPasStr
 004F3175    lea         eax,[ebp-10C]
 004F317B    mov         edx,4F31F0;'.'
 004F3180    call        @PStrCmp
>004F3185    jbe         004F3194
 004F3187    lea         eax,[ebp-0C]
 004F318A    mov         edx,4F31FC;'.'
 004F318F    call        @LStrCat
 004F3194    push        10
 004F3196    lea         edx,[ebp-110]
 004F319C    mov         eax,dword ptr [ebp-4]
 004F319F    call        004F2858
 004F31A4    mov         eax,dword ptr [ebp-110]
 004F31AA    call        @LStrToPChar
 004F31AF    push        eax
 004F31B0    mov         eax,dword ptr [ebp-0C]
 004F31B3    call        @LStrToPChar
 004F31B8    mov         edx,eax
 004F31BA    mov         eax,dword ptr [ebp-4]
 004F31BD    pop         ecx
 004F31BE    call        004F2FBC
 004F31C3    xor         eax,eax
 004F31C5    pop         edx
 004F31C6    pop         ecx
 004F31C7    pop         ecx
 004F31C8    mov         dword ptr fs:[eax],edx
 004F31CB    push        4F31EB
 004F31D0    lea         eax,[ebp-110]
 004F31D6    call        @LStrClr
 004F31DB    lea         eax,[ebp-0C]
 004F31DE    call        @LStrClr
 004F31E3    ret
>004F31E4    jmp         @HandleFinally
>004F31E9    jmp         004F31D0
 004F31EB    mov         esp,ebp
 004F31ED    pop         ebp
 004F31EE    ret
end;*}

//004F3200
{*function sub_004F3200(?:TApplication; ?:?; ?:THelpContext):?;
begin
 004F3200    push        ebp
 004F3201    mov         ebp,esp
 004F3203    add         esp,0FFFFFFE8
 004F3206    push        ebx
 004F3207    mov         dword ptr [ebp-0C],ecx
 004F320A    mov         word ptr [ebp-6],dx
 004F320E    mov         dword ptr [ebp-4],eax
 004F3211    mov         byte ptr [ebp-0D],0
 004F3215    mov         byte ptr [ebp-0E],1
 004F3219    mov         eax,[0055DE50];Screen:TScreen
 004F321E    mov         eax,dword ptr [eax+68]
 004F3221    mov         dword ptr [ebp-18],eax
 004F3224    cmp         dword ptr [ebp-18],0
>004F3228    je          004F3256
 004F322A    mov         eax,dword ptr [ebp-18]
 004F322D    cmp         word ptr [eax+2AA],0
>004F3235    je          004F3256
 004F3237    lea         eax,[ebp-0E]
 004F323A    push        eax
 004F323B    mov         ebx,dword ptr [ebp-18]
 004F323E    mov         ecx,dword ptr [ebp-0C]
 004F3241    mov         dx,word ptr [ebp-6]
 004F3245    mov         eax,dword ptr [ebx+2AC]
 004F324B    call        dword ptr [ebx+2A8]
 004F3251    mov         byte ptr [ebp-0D],al
>004F3254    jmp         004F3280
 004F3256    mov         eax,dword ptr [ebp-4]
 004F3259    cmp         word ptr [eax+0F2],0
>004F3261    je          004F3280
 004F3263    lea         eax,[ebp-0E]
 004F3266    push        eax
 004F3267    mov         ebx,dword ptr [ebp-4]
 004F326A    mov         ecx,dword ptr [ebp-0C]
 004F326D    mov         dx,word ptr [ebp-6]
 004F3271    mov         eax,dword ptr [ebx+0F4]
 004F3277    call        dword ptr [ebx+0F0]
 004F327D    mov         byte ptr [ebp-0D],al
 004F3280    cmp         dword ptr [ebp-18],0
>004F3284    je          004F32BA
 004F3286    mov         eax,dword ptr [ebp-18]
 004F3289    test        byte ptr [eax+1C],10
>004F328D    je          004F3293
 004F328F    mov         byte ptr [ebp-0E],0
 004F3293    mov         eax,dword ptr [ebp-18]
 004F3296    call        TPanel.GetTabOrder
 004F329B    cmp         ax,0FFFFFFFF
>004F329F    jne         004F32BA
 004F32A1    mov         eax,dword ptr [ebp-18]
 004F32A4    cmp         byte ptr [eax+57],0
>004F32A8    jne         004F32BA
 004F32AA    mov         eax,dword ptr [ebp-18]
 004F32AD    cmp         dword ptr [eax+220],0
>004F32B4    jne         004F32BA
 004F32B6    mov         byte ptr [ebp-0E],0
 004F32BA    cmp         byte ptr [ebp-0E],0
>004F32BE    je          004F33A9
 004F32C4    cmp         byte ptr [ebp-0D],0
>004F32C8    jne         004F33A9
 004F32CE    cmp         dword ptr [ebp-18],0
>004F32D2    je          004F332C
 004F32D4    mov         eax,dword ptr [ebp-18]
 004F32D7    call        TWinControl.HandleAllocated
 004F32DC    test        al,al
>004F32DE    je          004F332C
 004F32E0    mov         eax,dword ptr [ebp-18]
 004F32E3    cmp         dword ptr [eax+23C],0
>004F32EA    je          004F332C
 004F32EC    mov         eax,dword ptr [ebp-18]
 004F32EF    call        TWinControl.GetHandle
 004F32F4    mov         dword ptr [ebp-14],eax
 004F32F7    mov         eax,dword ptr [ebp-4]
 004F32FA    call        004F3A28
 004F32FF    test        al,al
>004F3301    je          004F33A9
 004F3307    mov         ax,word ptr [ebp-6]
 004F330B    push        eax
 004F330C    mov         eax,dword ptr [ebp-0C]
 004F330F    push        eax
 004F3310    mov         eax,dword ptr [ebp-18]
 004F3313    mov         ecx,dword ptr [eax+23C]
 004F3319    mov         edx,dword ptr [ebp-14]
 004F331C    mov         eax,dword ptr [ebp-4]
 004F331F    mov         eax,dword ptr [eax+4C]
 004F3322    mov         ebx,dword ptr [eax]
 004F3324    call        dword ptr [ebx+20]
 004F3327    mov         byte ptr [ebp-0D],al
>004F332A    jmp         004F33A9
 004F332C    mov         eax,dword ptr [ebp-4]
 004F332F    cmp         dword ptr [eax+50],0
>004F3333    je          004F3383
 004F3335    mov         eax,dword ptr [ebp-4]
 004F3338    mov         eax,dword ptr [eax+30]
 004F333B    mov         dword ptr [ebp-14],eax
 004F333E    mov         eax,dword ptr [ebp-4]
 004F3341    cmp         dword ptr [eax+44],0
>004F3345    je          004F3355
 004F3347    mov         eax,dword ptr [ebp-4]
 004F334A    mov         eax,dword ptr [eax+44]
 004F334D    call        TWinControl.GetHandle
 004F3352    mov         dword ptr [ebp-14],eax
 004F3355    mov         eax,dword ptr [ebp-4]
 004F3358    call        004F3A28
 004F335D    test        al,al
>004F335F    je          004F33A9
 004F3361    mov         ax,word ptr [ebp-6]
 004F3365    push        eax
 004F3366    mov         eax,dword ptr [ebp-0C]
 004F3369    push        eax
 004F336A    mov         eax,dword ptr [ebp-4]
 004F336D    mov         ecx,dword ptr [eax+50]
 004F3370    mov         edx,dword ptr [ebp-14]
 004F3373    mov         eax,dword ptr [ebp-4]
 004F3376    mov         eax,dword ptr [eax+4C]
 004F3379    mov         ebx,dword ptr [eax]
 004F337B    call        dword ptr [ebx+20]
 004F337E    mov         byte ptr [ebp-0D],al
>004F3381    jmp         004F33A9
 004F3383    mov         eax,dword ptr [ebp-4]
 004F3386    cmp         byte ptr [eax+0A4],0
>004F338D    jne         004F33A9
 004F338F    mov         eax,dword ptr [ebp-0C]
 004F3392    push        eax
 004F3393    movzx       eax,word ptr [ebp-6]
 004F3397    push        eax
 004F3398    push        0B01F
 004F339D    mov         eax,dword ptr [ebp-4]
 004F33A0    mov         eax,dword ptr [eax+30]
 004F33A3    push        eax
 004F33A4    call        user32.PostMessageA
 004F33A9    mov         al,byte ptr [ebp-0D]
 004F33AC    pop         ebx
 004F33AD    mov         esp,ebp
 004F33AF    pop         ebp
 004F33B0    ret
end;*}

//004F33B4
{*function sub_004F33B4(?:?; ?:?):?;
begin
 004F33B4    push        ebp
 004F33B5    mov         ebp,esp
 004F33B7    add         esp,0FFFFFFF0
 004F33BA    push        ebx
 004F33BB    xor         ecx,ecx
 004F33BD    mov         dword ptr [ebp-10],ecx
 004F33C0    mov         dword ptr [ebp-8],edx
 004F33C3    mov         dword ptr [ebp-4],eax
 004F33C6    xor         eax,eax
 004F33C8    push        ebp
 004F33C9    push        4F341C
 004F33CE    push        dword ptr fs:[eax]
 004F33D1    mov         dword ptr fs:[eax],esp
 004F33D4    mov         byte ptr [ebp-9],1
 004F33D8    mov         eax,dword ptr [ebp-4]
 004F33DB    call        004F3A28
 004F33E0    test        al,al
>004F33E2    je          004F3402
 004F33E4    lea         edx,[ebp-10]
 004F33E7    mov         eax,dword ptr [ebp-4]
 004F33EA    call        004F43AC
 004F33EF    mov         ecx,dword ptr [ebp-10]
 004F33F2    mov         edx,dword ptr [ebp-8]
 004F33F5    mov         eax,dword ptr [ebp-4]
 004F33F8    mov         eax,dword ptr [eax+4C]
 004F33FB    mov         ebx,dword ptr [eax]
 004F33FD    call        dword ptr [ebx+0C]
>004F3400    jmp         004F3406
 004F3402    mov         byte ptr [ebp-9],0
 004F3406    xor         eax,eax
 004F3408    pop         edx
 004F3409    pop         ecx
 004F340A    pop         ecx
 004F340B    mov         dword ptr fs:[eax],edx
 004F340E    push        4F3423
 004F3413    lea         eax,[ebp-10]
 004F3416    call        @LStrClr
 004F341B    ret
>004F341C    jmp         @HandleFinally
>004F3421    jmp         004F3413
 004F3423    mov         al,byte ptr [ebp-9]
 004F3426    pop         ebx
 004F3427    mov         esp,ebp
 004F3429    pop         ebp
 004F342A    ret
end;*}

//004F342C
{*function sub_004F342C(?:TApplication; ?:THelpContext):?;
begin
 004F342C    push        ebp
 004F342D    mov         ebp,esp
 004F342F    add         esp,0FFFFFFF0
 004F3432    push        ebx
 004F3433    xor         ecx,ecx
 004F3435    mov         dword ptr [ebp-10],ecx
 004F3438    mov         dword ptr [ebp-8],edx
 004F343B    mov         dword ptr [ebp-4],eax
 004F343E    xor         eax,eax
 004F3440    push        ebp
 004F3441    push        4F3494
 004F3446    push        dword ptr fs:[eax]
 004F3449    mov         dword ptr fs:[eax],esp
 004F344C    mov         byte ptr [ebp-9],1
 004F3450    mov         eax,dword ptr [ebp-4]
 004F3453    call        004F3A28
 004F3458    test        al,al
>004F345A    je          004F347A
 004F345C    lea         edx,[ebp-10]
 004F345F    mov         eax,dword ptr [ebp-4]
 004F3462    call        004F43AC
 004F3467    mov         ecx,dword ptr [ebp-10]
 004F346A    mov         edx,dword ptr [ebp-8]
 004F346D    mov         eax,dword ptr [ebp-4]
 004F3470    mov         eax,dword ptr [eax+4C];TApplication.FHelpSystem:IHelpSystem
 004F3473    mov         ebx,dword ptr [eax]
 004F3475    call        dword ptr [ebx+10]
>004F3478    jmp         004F347E
 004F347A    mov         byte ptr [ebp-9],0
 004F347E    xor         eax,eax
 004F3480    pop         edx
 004F3481    pop         ecx
 004F3482    pop         ecx
 004F3483    mov         dword ptr fs:[eax],edx
 004F3486    push        4F349B
 004F348B    lea         eax,[ebp-10]
 004F348E    call        @LStrClr
 004F3493    ret
>004F3494    jmp         @HandleFinally
>004F3499    jmp         004F348B
 004F349B    mov         al,byte ptr [ebp-9]
 004F349E    pop         ebx
 004F349F    mov         esp,ebp
 004F34A1    pop         ebp
 004F34A2    ret
end;*}

//004F34A4
{*function sub_004F34A4(?:TApplication; ?:?; ?:THelpContext):?;
begin
 004F34A4    push        ebp
 004F34A5    mov         ebp,esp
 004F34A7    add         esp,0FFFFFFF0
 004F34AA    mov         dword ptr [ebp-0C],ecx
 004F34AD    mov         dword ptr [ebp-8],edx
 004F34B0    mov         dword ptr [ebp-4],eax
 004F34B3    mov         ecx,dword ptr [ebp-0C]
 004F34B6    mov         dx,word ptr [ebp-8]
 004F34BA    mov         eax,dword ptr [ebp-4]
 004F34BD    call        004F3200
 004F34C2    mov         byte ptr [ebp-0D],al
 004F34C5    mov         al,byte ptr [ebp-0D]
 004F34C8    mov         esp,ebp
 004F34CA    pop         ebp
 004F34CB    ret
end;*}

//004F34CC
{*procedure sub_004F34CC(?:TApplication; ?:?);
begin
 004F34CC    push        ebp
 004F34CD    mov         ebp,esp
 004F34CF    add         esp,0FFFFFFF8
 004F34D2    mov         dword ptr [ebp-8],edx
 004F34D5    mov         dword ptr [ebp-4],eax
 004F34D8    mov         edx,dword ptr [ebp-8]
 004F34DB    xor         eax,eax
 004F34DD    call        ParamStr
 004F34E2    pop         ecx
 004F34E3    pop         ecx
 004F34E4    pop         ebp
 004F34E5    ret
end;*}

//004F34E8
{*procedure sub_004F34E8(?:?; ?:?);
begin
 004F34E8    push        ebp
 004F34E9    mov         ebp,esp
 004F34EB    add         esp,0FFFFFFF8
 004F34EE    mov         byte ptr [ebp-5],dl
 004F34F1    mov         dword ptr [ebp-4],eax
 004F34F4    mov         eax,dword ptr [ebp-4]
 004F34F7    mov         al,byte ptr [eax+88]
 004F34FD    cmp         al,byte ptr [ebp-5]
>004F3500    je          004F355F
 004F3502    mov         al,byte ptr [ebp-5]
 004F3505    mov         edx,dword ptr [ebp-4]
 004F3508    mov         byte ptr [edx+88],al
 004F350E    mov         eax,dword ptr [ebp-4]
 004F3511    cmp         byte ptr [eax+88],0
>004F3518    je          004F3546
 004F351A    mov         ecx,dword ptr [ebp-4]
 004F351D    mov         dl,1
 004F351F    mov         eax,[005418C0];^gvar_004C64FC
 004F3524    call        dword ptr [eax+2C]
 004F3527    mov         edx,dword ptr [ebp-4]
 004F352A    mov         dword ptr [edx+84],eax
 004F3530    mov         eax,dword ptr [ebp-4]
 004F3533    mov         edx,dword ptr [eax+5C]
 004F3536    mov         eax,dword ptr [ebp-4]
 004F3539    mov         eax,dword ptr [eax+84]
 004F353F    call        TPanel.SetColor
>004F3544    jmp         004F355F
 004F3546    mov         eax,dword ptr [ebp-4]
 004F3549    mov         eax,dword ptr [eax+84]
 004F354F    call        TObject.Free
 004F3554    mov         eax,dword ptr [ebp-4]
 004F3557    xor         edx,edx
 004F3559    mov         dword ptr [eax+84],edx
 004F355F    pop         ecx
 004F3560    pop         ecx
 004F3561    pop         ebp
 004F3562    ret
end;*}

//004F3564
{*procedure sub_004F3564(?:?);
begin
 004F3564    push        ebp
 004F3565    mov         ebp,esp
 004F3567    add         esp,0FFFFFFF0
 004F356A    mov         dword ptr [ebp-4],eax
 004F356D    mov         eax,[0055DE50];Screen:TScreen
 004F3572    call        004F017C
 004F3577    dec         eax
 004F3578    test        eax,eax
>004F357A    jl          004F35DA
 004F357C    inc         eax
 004F357D    mov         dword ptr [ebp-0C],eax
 004F3580    mov         dword ptr [ebp-8],0
 004F3587    mov         edx,dword ptr [ebp-8]
 004F358A    mov         eax,[0055DE50];Screen:TScreen
 004F358F    call        004F0158
 004F3594    mov         dword ptr [ebp-10],eax
 004F3597    mov         eax,dword ptr [ebp-10]
 004F359A    call        TWinControl.HandleAllocated
 004F359F    test        al,al
>004F35A1    je          004F35D2
 004F35A3    mov         eax,dword ptr [ebp-10]
 004F35A6    call        TWinControl.GetHandle
 004F35AB    push        eax
 004F35AC    call        user32.IsWindowVisible
 004F35B1    test        eax,eax
>004F35B3    je          004F35D2
 004F35B5    mov         eax,dword ptr [ebp-10]
 004F35B8    call        TWinControl.GetHandle
 004F35BD    push        eax
 004F35BE    call        user32.IsWindowEnabled
 004F35C3    test        eax,eax
>004F35C5    je          004F35D2
 004F35C7    mov         eax,dword ptr [ebp-10]
 004F35CA    mov         edx,dword ptr [eax]
 004F35CC    call        dword ptr [edx+0DC]
 004F35D2    inc         dword ptr [ebp-8]
 004F35D5    dec         dword ptr [ebp-0C]
>004F35D8    jne         004F3587
 004F35DA    mov         esp,ebp
 004F35DC    pop         ebp
 004F35DD    ret
end;*}

//004F35E0
{*function sub_004F35E0(?:?):?;
begin
 004F35E0    push        ebp
 004F35E1    mov         ebp,esp
 004F35E3    add         esp,0FFFFFFEC
 004F35E6    mov         dword ptr [ebp-4],eax
 004F35E9    lea         eax,[ebp-14]
 004F35EC    push        eax
 004F35ED    call        user32.GetCursorPos
 004F35F2    lea         eax,[ebp-14]
 004F35F5    mov         dl,1
 004F35F7    call        004C8F78
 004F35FC    mov         dword ptr [ebp-8],eax
 004F35FF    call        004C7334
 004F3604    mov         dword ptr [ebp-0C],eax
 004F3607    mov         eax,dword ptr [ebp-4]
 004F360A    mov         eax,dword ptr [eax+48]
 004F360D    cmp         eax,dword ptr [ebp-8]
>004F3610    je          004F3683
 004F3612    mov         eax,dword ptr [ebp-4]
 004F3615    cmp         dword ptr [eax+48],0
>004F3619    je          004F3621
 004F361B    cmp         dword ptr [ebp-0C],0
>004F361F    je          004F3632
 004F3621    cmp         dword ptr [ebp-0C],0
>004F3625    je          004F3646
 004F3627    mov         eax,dword ptr [ebp-4]
 004F362A    mov         eax,dword ptr [eax+48]
 004F362D    cmp         eax,dword ptr [ebp-0C]
>004F3630    jne         004F3646
 004F3632    push        0
 004F3634    xor         ecx,ecx
 004F3636    mov         edx,0B014
 004F363B    mov         eax,dword ptr [ebp-4]
 004F363E    mov         eax,dword ptr [eax+48]
 004F3641    call        004CC7DC
 004F3646    mov         eax,dword ptr [ebp-8]
 004F3649    mov         edx,dword ptr [ebp-4]
 004F364C    mov         dword ptr [edx+48],eax
 004F364F    mov         eax,dword ptr [ebp-4]
 004F3652    cmp         dword ptr [eax+48],0
>004F3656    je          004F365E
 004F3658    cmp         dword ptr [ebp-0C],0
>004F365C    je          004F366F
 004F365E    cmp         dword ptr [ebp-0C],0
>004F3662    je          004F3683
 004F3664    mov         eax,dword ptr [ebp-4]
 004F3667    mov         eax,dword ptr [eax+48]
 004F366A    cmp         eax,dword ptr [ebp-0C]
>004F366D    jne         004F3683
 004F366F    push        0
 004F3671    xor         ecx,ecx
 004F3673    mov         edx,0B013
 004F3678    mov         eax,dword ptr [ebp-4]
 004F367B    mov         eax,dword ptr [eax+48]
 004F367E    call        004CC7DC
 004F3683    mov         eax,dword ptr [ebp-8]
 004F3686    mov         esp,ebp
 004F3688    pop         ebp
 004F3689    ret
end;*}

//004F368C
{*procedure sub_004F368C(?:?; ?:?);
begin
 004F368C    push        ebp
 004F368D    mov         ebp,esp
 004F368F    add         esp,0FFFFFFE8
 004F3692    push        ebx
 004F3693    push        esi
 004F3694    push        edi
 004F3695    xor         ecx,ecx
 004F3697    mov         dword ptr [ebp-14],ecx
 004F369A    mov         dword ptr [ebp-18],ecx
 004F369D    mov         dword ptr [ebp-10],edx
 004F36A0    mov         dword ptr [ebp-4],eax
 004F36A3    xor         eax,eax
 004F36A5    push        ebp
 004F36A6    push        4F37A1
 004F36AB    push        dword ptr fs:[eax]
 004F36AE    mov         dword ptr fs:[eax],esp
 004F36B1    mov         eax,dword ptr [ebp-4]
 004F36B4    call        004F35E0
 004F36B9    mov         dword ptr [ebp-8],eax
 004F36BC    mov         eax,dword ptr [ebp-4]
 004F36BF    cmp         byte ptr [eax+88],0
>004F36C6    je          004F36D9
 004F36C8    mov         eax,dword ptr [ebp-4]
 004F36CB    cmp         dword ptr [eax+48],0
>004F36CF    jne         004F36D9
 004F36D1    mov         eax,dword ptr [ebp-4]
 004F36D4    call        004F3CC8
 004F36D9    lea         edx,[ebp-18]
 004F36DC    mov         eax,dword ptr [ebp-8]
 004F36DF    call        004F1020
 004F36E4    mov         eax,dword ptr [ebp-18]
 004F36E7    lea         edx,[ebp-14]
 004F36EA    call        004C7278
 004F36EF    mov         edx,dword ptr [ebp-14]
 004F36F2    mov         eax,[0055DE4C];Application:TApplication
 004F36F7    call        004F387C
 004F36FC    mov         byte ptr [ebp-9],1
 004F3700    xor         eax,eax
 004F3702    push        ebp
 004F3703    push        4F3748
 004F3708    push        dword ptr fs:[eax]
 004F370B    mov         dword ptr fs:[eax],esp
 004F370E    mov         eax,dword ptr [ebp-4]
 004F3711    cmp         word ptr [eax+102],0
>004F3719    je          004F3730
 004F371B    lea         ecx,[ebp-9]
 004F371E    mov         ebx,dword ptr [ebp-4]
 004F3721    mov         edx,dword ptr [ebp-4]
 004F3724    mov         eax,dword ptr [ebx+104]
 004F372A    call        dword ptr [ebx+100]
 004F3730    cmp         byte ptr [ebp-9],0
>004F3734    je          004F373E
 004F3736    mov         eax,dword ptr [ebp-4]
 004F3739    call        004F3564
 004F373E    xor         eax,eax
 004F3740    pop         edx
 004F3741    pop         ecx
 004F3742    pop         ecx
 004F3743    mov         dword ptr fs:[eax],edx
>004F3746    jmp         004F375D
>004F3748    jmp         @HandleAnyException
 004F374D    mov         edx,dword ptr [ebp-4]
 004F3750    mov         eax,dword ptr [ebp-4]
 004F3753    call        TApplication.HandleException
 004F3758    call        @DoneExcept
 004F375D    call        kernel32.GetCurrentThreadId
 004F3762    mov         edx,dword ptr ds:[55B718];^gvar_0055B718
 004F3768    cmp         eax,dword ptr [edx]
>004F376A    jne         004F377B
 004F376C    xor         eax,eax
 004F376E    call        0048271C
 004F3773    test        al,al
>004F3775    je          004F377B
 004F3777    mov         byte ptr [ebp-9],0
 004F377B    cmp         byte ptr [ebp-9],0
>004F377F    je          004F3786
 004F3781    call        user32.WaitMessage
 004F3786    xor         eax,eax
 004F3788    pop         edx
 004F3789    pop         ecx
 004F378A    pop         ecx
 004F378B    mov         dword ptr fs:[eax],edx
 004F378E    push        4F37A8
 004F3793    lea         eax,[ebp-18]
 004F3796    mov         edx,2
 004F379B    call        @LStrArrayClr
 004F37A0    ret
>004F37A1    jmp         @HandleFinally
>004F37A6    jmp         004F3793
 004F37A8    pop         edi
 004F37A9    pop         esi
 004F37AA    pop         ebx
 004F37AB    mov         esp,ebp
 004F37AD    pop         ebp
 004F37AE    ret
end;*}

//004F37B0
{*procedure sub_004F37B0(?:?; ?:?);
begin
 004F37B0    push        ebp
 004F37B1    mov         ebp,esp
 004F37B3    add         esp,0FFFFFFF0
 004F37B6    mov         word ptr [ebp-6],dx
 004F37BA    mov         dword ptr [ebp-4],eax
 004F37BD    mov         eax,[0055DE50];Screen:TScreen
 004F37C2    call        004F013C
 004F37C7    dec         eax
 004F37C8    test        eax,eax
>004F37CA    jl          004F37F9
 004F37CC    inc         eax
 004F37CD    mov         dword ptr [ebp-10],eax
 004F37D0    mov         dword ptr [ebp-0C],0
 004F37D7    push        0
 004F37D9    mov         edx,dword ptr [ebp-0C]
 004F37DC    mov         eax,[0055DE50];Screen:TScreen
 004F37E1    call        004F0118
 004F37E6    movzx       edx,word ptr [ebp-6]
 004F37EA    xor         ecx,ecx
 004F37EC    call        004CC7DC
 004F37F1    inc         dword ptr [ebp-0C]
 004F37F4    dec         dword ptr [ebp-10]
>004F37F7    jne         004F37D7
 004F37F9    mov         esp,ebp
 004F37FB    pop         ebp
 004F37FC    ret
end;*}

//004F3800
{*procedure sub_004F3800(?:?; ?:?);
begin
 004F3800    push        ebp
 004F3801    mov         ebp,esp
 004F3803    add         esp,0FFFFFFF8
 004F3806    mov         dword ptr [ebp-8],edx
 004F3809    mov         dword ptr [ebp-4],eax
 004F380C    mov         eax,[0055B36C];^NewStyleControls:Boolean
 004F3811    cmp         byte ptr [eax],0
>004F3814    je          004F384B
 004F3816    mov         eax,dword ptr [ebp-4]
 004F3819    call        004F2594
 004F381E    push        eax
 004F381F    push        1
 004F3821    push        80
 004F3826    mov         eax,dword ptr [ebp-4]
 004F3829    mov         eax,dword ptr [eax+30]
 004F382C    push        eax
 004F382D    call        user32.SendMessageA
 004F3832    mov         eax,dword ptr [ebp-4]
 004F3835    call        004F2594
 004F383A    push        eax
 004F383B    push        0F2
 004F383D    mov         eax,dword ptr [ebp-4]
 004F3840    mov         eax,dword ptr [eax+30]
 004F3843    push        eax
 004F3844    call        user32.SetClassLongA
>004F3849    jmp         004F386B
 004F384B    mov         eax,dword ptr [ebp-4]
 004F384E    mov         eax,dword ptr [eax+30]
 004F3851    push        eax
 004F3852    call        user32.IsIconic
 004F3857    test        eax,eax
>004F3859    je          004F386B
 004F385B    push        0FF
 004F385D    push        0
 004F385F    mov         eax,dword ptr [ebp-4]
 004F3862    mov         eax,dword ptr [eax+30]
 004F3865    push        eax
 004F3866    call        user32.InvalidateRect
 004F386B    mov         dx,0B01D
 004F386F    mov         eax,dword ptr [ebp-4]
 004F3872    call        004F37B0
 004F3877    pop         ecx
 004F3878    pop         ecx
 004F3879    pop         ebp
 004F387A    ret
end;*}

//004F387C
{*procedure sub_004F387C(?:TApplication; ?:?);
begin
 004F387C    push        ebp
 004F387D    mov         ebp,esp
 004F387F    add         esp,0FFFFFFF4
 004F3882    push        ebx
 004F3883    push        esi
 004F3884    mov         dword ptr [ebp-8],edx
 004F3887    mov         dword ptr [ebp-4],eax
 004F388A    mov         eax,dword ptr [ebp-4]
 004F388D    mov         eax,dword ptr [eax+54];TApplication.FHint:String
 004F3890    mov         edx,dword ptr [ebp-8]
 004F3893    call        @LStrCmp
>004F3898    je          004F3921
 004F389E    mov         eax,dword ptr [ebp-4]
 004F38A1    add         eax,54;TApplication.FHint:String
 004F38A4    mov         edx,dword ptr [ebp-8]
 004F38A7    call        @LStrAsg
 004F38AC    mov         eax,dword ptr [ebp-4]
 004F38AF    cmp         word ptr [eax+0FA],0;TApplication.?fFA:word
>004F38B7    je          004F38CD
 004F38B9    mov         ebx,dword ptr [ebp-4]
 004F38BC    mov         edx,dword ptr [ebp-4]
 004F38BF    mov         eax,dword ptr [ebx+0FC];TApplication.?fFC:dword
 004F38C5    call        dword ptr [ebx+0F8];TApplication.FOnHint
>004F38CB    jmp         004F3921
 004F38CD    mov         ecx,dword ptr [ebp-4]
 004F38D0    mov         dl,1
 004F38D2    mov         eax,[004C3164];THintAction
 004F38D7    call        THintAction.Create;THintAction.Create
 004F38DC    mov         dword ptr [ebp-0C],eax
 004F38DF    mov         edx,dword ptr [ebp-8]
 004F38E2    mov         eax,dword ptr [ebp-0C]
 004F38E5    call        TVirtualListAction.SetHint
 004F38EA    xor         eax,eax
 004F38EC    push        ebp
 004F38ED    push        4F391A
 004F38F2    push        dword ptr fs:[eax]
 004F38F5    mov         dword ptr fs:[eax],esp
 004F38F8    mov         eax,dword ptr [ebp-0C]
 004F38FB    mov         si,0FFEF
 004F38FF    call        @CallDynaInst;TCustomAction.sub_00483E7C
 004F3904    xor         eax,eax
 004F3906    pop         edx
 004F3907    pop         ecx
 004F3908    pop         ecx
 004F3909    mov         dword ptr fs:[eax],edx
 004F390C    push        4F3921
 004F3911    mov         eax,dword ptr [ebp-0C]
 004F3914    call        TObject.Free
 004F3919    ret
>004F391A    jmp         @HandleFinally
>004F391F    jmp         004F3911
 004F3921    pop         esi
 004F3922    pop         ebx
 004F3923    mov         esp,ebp
 004F3925    pop         ebp
 004F3926    ret
end;*}

//004F3928
{*procedure sub_004F3928(?:?; ?:?);
begin
 004F3928    push        ebp
 004F3929    mov         ebp,esp
 004F392B    push        ecx
 004F392C    mov         byte ptr [ebp-1],al
 004F392F    mov         eax,dword ptr [ebp+8]
 004F3932    mov         eax,dword ptr [eax-4]
 004F3935    mov         eax,dword ptr [eax+30]
 004F3938    push        eax
 004F3939    call        user32.IsWindowVisible
 004F393E    cmp         eax,1
 004F3941    sbb         eax,eax
 004F3943    inc         eax
 004F3944    cmp         al,byte ptr ds:[5419E0];0x0 gvar_005419E0
>004F394A    jne         004F3985
 004F394C    mov         al,[005419E0];0x0 gvar_005419E0
 004F3951    cmp         al,byte ptr [ebp-1]
>004F3954    je          004F3985
 004F3956    xor         eax,eax
 004F3958    mov         al,byte ptr [ebp-1]
 004F395B    movzx       eax,word ptr [eax*2+5419E4]
 004F3963    push        eax
 004F3964    push        0
 004F3966    push        0
 004F3968    push        0
 004F396A    push        0
 004F396C    push        0
 004F396E    mov         eax,dword ptr [ebp+8]
 004F3971    mov         eax,dword ptr [eax-4]
 004F3974    mov         eax,dword ptr [eax+30]
 004F3977    push        eax
 004F3978    call        user32.SetWindowPos
 004F397D    mov         al,byte ptr [ebp-1]
 004F3980    mov         [005419E0],al;gvar_005419E0
 004F3985    pop         ecx
 004F3986    pop         ebp
 004F3987    ret
end;*}

//004F3988
{*procedure sub_004F3988(?:?);
begin
 004F3988    push        ebp
 004F3989    mov         ebp,esp
 004F398B    add         esp,0FFFFFFF0
 004F398E    mov         dword ptr [ebp-4],eax
 004F3991    mov         eax,dword ptr [ebp-4]
 004F3994    cmp         dword ptr [eax+30],0
>004F3998    je          004F3A21
 004F399E    mov         eax,[0055DE50];Screen:TScreen
 004F39A3    call        004F013C
 004F39A8    dec         eax
 004F39A9    test        eax,eax
>004F39AB    jl          004F3A18
 004F39AD    inc         eax
 004F39AE    mov         dword ptr [ebp-10],eax
 004F39B1    mov         dword ptr [ebp-8],0
 004F39B8    mov         edx,dword ptr [ebp-8]
 004F39BB    mov         eax,[0055DE50];Screen:TScreen
 004F39C0    call        004F0118
 004F39C5    mov         dword ptr [ebp-0C],eax
 004F39C8    mov         eax,dword ptr [ebp-0C]
 004F39CB    cmp         byte ptr [eax+57],0
>004F39CF    je          004F3A10
 004F39D1    mov         eax,dword ptr [ebp-0C]
 004F39D4    cmp         dword ptr [eax+190],0
>004F39DB    je          004F3A05
 004F39DD    mov         eax,dword ptr [ebp-0C]
 004F39E0    call        TWinControl.HandleAllocated
 004F39E5    test        al,al
>004F39E7    jne         004F3A05
 004F39E9    mov         eax,dword ptr [ebp-0C]
 004F39EC    mov         eax,dword ptr [eax+190]
 004F39F2    push        eax
 004F39F3    mov         eax,dword ptr [ebp-0C]
 004F39F6    call        TWinControl.GetHandle
 004F39FB    push        eax
 004F39FC    call        user32.IsChild
 004F3A01    test        eax,eax
>004F3A03    jne         004F3A10
 004F3A05    push        ebp
 004F3A06    mov         al,1
 004F3A08    call        004F3928
 004F3A0D    pop         ecx
>004F3A0E    jmp         004F3A21
 004F3A10    inc         dword ptr [ebp-8]
 004F3A13    dec         dword ptr [ebp-10]
>004F3A16    jne         004F39B8
 004F3A18    push        ebp
 004F3A19    xor         eax,eax
 004F3A1B    call        004F3928
 004F3A20    pop         ecx
 004F3A21    mov         esp,ebp
 004F3A23    pop         ebp
 004F3A24    ret
end;*}

//004F3A28
{*function sub_004F3A28(?:TApplication):?;
begin
 004F3A28    push        ebp
 004F3A29    mov         ebp,esp
 004F3A2B    add         esp,0FFFFFFF8
 004F3A2E    mov         dword ptr [ebp-4],eax
 004F3A31    mov         byte ptr [ebp-5],0
 004F3A35    mov         eax,dword ptr [ebp-4]
 004F3A38    cmp         dword ptr [eax+4C],0;TApplication.FHelpSystem:IHelpSystem
>004F3A3C    jne         004F3A4E
 004F3A3E    mov         eax,dword ptr [ebp-4]
 004F3A41    add         eax,4C;TApplication.FHelpSystem:IHelpSystem
 004F3A44    call        @IntfClear
 004F3A49    call        00490DE4
 004F3A4E    mov         eax,dword ptr [ebp-4]
 004F3A51    cmp         dword ptr [eax+4C],0;TApplication.FHelpSystem:IHelpSystem
>004F3A55    je          004F3A5B
 004F3A57    mov         byte ptr [ebp-5],1
 004F3A5B    mov         al,byte ptr [ebp-5]
 004F3A5E    pop         ecx
 004F3A5F    pop         ecx
 004F3A60    pop         ebp
 004F3A61    ret
end;*}

//004F3A64
{*procedure sub_004F3A64(?:TApplication; ?:Integer; ?:?);
begin
 004F3A64    push        ebp
 004F3A65    mov         ebp,esp
 004F3A67    add         esp,0FFFFFFF4
 004F3A6A    mov         byte ptr [ebp-9],cl
 004F3A6D    mov         dword ptr [ebp-8],edx
 004F3A70    mov         dword ptr [ebp-4],eax
 004F3A73    mov         eax,dword ptr [ebp-4]
 004F3A76    call        004F3ABC
 004F3A7B    push        4F10B8;HintTimerProc
 004F3A80    mov         eax,dword ptr [ebp-8]
 004F3A83    push        eax
 004F3A84    push        0
 004F3A86    push        0
 004F3A88    call        user32.SetTimer
 004F3A8D    mov         edx,dword ptr [ebp-4]
 004F3A90    mov         word ptr [edx+8A],ax
 004F3A97    mov         al,byte ptr [ebp-9]
 004F3A9A    mov         edx,dword ptr [ebp-4]
 004F3A9D    mov         byte ptr [edx+89],al
 004F3AA3    mov         eax,dword ptr [ebp-4]
 004F3AA6    cmp         word ptr [eax+8A],0
>004F3AAE    jne         004F3AB8
 004F3AB0    mov         eax,dword ptr [ebp-4]
 004F3AB3    call        004F3CC8
 004F3AB8    mov         esp,ebp
 004F3ABA    pop         ebp
 004F3ABB    ret
end;*}

//004F3ABC
procedure sub_004F3ABC(?:TApplication);
begin
{*
 004F3ABC    push        ebp
 004F3ABD    mov         ebp,esp
 004F3ABF    push        ecx
 004F3AC0    mov         dword ptr [ebp-4],eax
 004F3AC3    mov         eax,dword ptr [ebp-4]
 004F3AC6    cmp         word ptr [eax+8A],0
>004F3ACE    je          004F3AEE
 004F3AD0    mov         eax,dword ptr [ebp-4]
 004F3AD3    movzx       eax,word ptr [eax+8A]
 004F3ADA    push        eax
 004F3ADB    push        0
 004F3ADD    call        user32.KillTimer
 004F3AE2    mov         eax,dword ptr [ebp-4]
 004F3AE5    mov         word ptr [eax+8A],0
 004F3AEE    pop         ecx
 004F3AEF    pop         ebp
 004F3AF0    ret
*}
end;

//004F3AF4
{*procedure sub_004F3AF4(?:TApplication; ?:TControl; ?:?);
begin
 004F3AF4    push        ebp
 004F3AF5    mov         ebp,esp
 004F3AF7    add         esp,0FFFFFFD0
 004F3AFA    mov         dword ptr [ebp-0C],ecx
 004F3AFD    mov         dword ptr [ebp-8],edx
 004F3B00    mov         dword ptr [ebp-4],eax
 004F3B03    lea         edx,[ebp-30]
 004F3B06    mov         eax,dword ptr [ebp-0C]
 004F3B09    mov         eax,dword ptr [eax+8]
 004F3B0C    call        00408250
 004F3B11    lea         edx,[ebp-30]
 004F3B14    lea         ecx,[ebp-28]
 004F3B17    mov         eax,dword ptr [ebp-8]
 004F3B1A    call        TControl.ClientToScreen
 004F3B1F    lea         eax,[ebp-28]
 004F3B22    mov         dl,1
 004F3B24    call        004C8F78
 004F3B29    call        004F1070
 004F3B2E    mov         dword ptr [ebp-10],eax
 004F3B31    cmp         dword ptr [ebp-10],0
>004F3B35    je          004F3B43
 004F3B37    mov         eax,dword ptr [ebp-10]
 004F3B3A    cmp         byte ptr [eax+99],0
>004F3B41    jne         004F3B50
 004F3B43    mov         eax,dword ptr [ebp-4]
 004F3B46    call        004F3CC8
>004F3B4B    jmp         004F3C28
 004F3B50    mov         eax,dword ptr [ebp-10]
 004F3B53    mov         edx,dword ptr [ebp-4]
 004F3B56    cmp         eax,dword ptr [edx+60];TApplication.FHintControl:TControl
>004F3B59    jne         004F3B91
 004F3B5B    lea         edx,[ebp-30]
 004F3B5E    mov         eax,dword ptr [ebp-0C]
 004F3B61    mov         eax,dword ptr [eax+8]
 004F3B64    call        00408250
 004F3B69    lea         edx,[ebp-30]
 004F3B6C    lea         ecx,[ebp-28]
 004F3B6F    mov         eax,dword ptr [ebp-8]
 004F3B72    call        TControl.ClientToScreen
 004F3B77    push        dword ptr [ebp-24]
 004F3B7A    push        dword ptr [ebp-28]
 004F3B7D    mov         eax,dword ptr [ebp-4]
 004F3B80    add         eax,64;TApplication.FHintCursorRect:TRect
 004F3B83    push        eax
 004F3B84    call        user32.PtInRect
 004F3B89    test        eax,eax
>004F3B8B    jne         004F3C28
 004F3B91    mov         eax,dword ptr [ebp-4]
 004F3B94    mov         al,byte ptr [eax+58];TApplication.FHintActive:Boolean
 004F3B97    mov         byte ptr [ebp-15],al
 004F3B9A    cmp         byte ptr [ebp-15],0
>004F3B9E    je          004F3BAE
 004F3BA0    mov         eax,dword ptr [ebp-4]
 004F3BA3    mov         eax,dword ptr [eax+80];TApplication.FHintShortPause:Integer
 004F3BA9    mov         dword ptr [ebp-14],eax
>004F3BAC    jmp         004F3BB7
 004F3BAE    mov         eax,dword ptr [ebp-4]
 004F3BB1    mov         eax,dword ptr [eax+78];TApplication.FHintPause:Integer
 004F3BB4    mov         dword ptr [ebp-14],eax
 004F3BB7    lea         eax,[ebp-14]
 004F3BBA    push        eax
 004F3BBB    xor         ecx,ecx
 004F3BBD    mov         cl,byte ptr [ebp-15]
 004F3BC0    mov         edx,0B041
 004F3BC5    mov         eax,dword ptr [ebp-10]
 004F3BC8    call        004CC7DC
 004F3BCD    cmp         byte ptr [ebp-15],0
>004F3BD1    je          004F3C01
 004F3BD3    cmp         dword ptr [ebp-14],0
>004F3BD7    jne         004F3C01
 004F3BD9    mov         al,byte ptr [ebp-15]
 004F3BDC    mov         edx,dword ptr [ebp-4]
 004F3BDF    mov         byte ptr [edx+58],al;TApplication.FHintActive:Boolean
 004F3BE2    mov         eax,dword ptr [ebp-10]
 004F3BE5    mov         edx,dword ptr [ebp-4]
 004F3BE8    mov         dword ptr [edx+60],eax;TApplication.FHintControl:TControl
 004F3BEB    lea         eax,[ebp-1D]
 004F3BEE    push        eax
 004F3BEF    call        user32.GetCursorPos
 004F3BF4    lea         edx,[ebp-1D]
 004F3BF7    mov         eax,dword ptr [ebp-4]
 004F3BFA    call        004F3FD8
>004F3BFF    jmp         004F3C28
 004F3C01    mov         eax,dword ptr [ebp-4]
 004F3C04    call        004F3CC8
 004F3C09    mov         al,byte ptr [ebp-15]
 004F3C0C    mov         edx,dword ptr [ebp-4]
 004F3C0F    mov         byte ptr [edx+58],al;TApplication.FHintActive:Boolean
 004F3C12    mov         eax,dword ptr [ebp-10]
 004F3C15    mov         edx,dword ptr [ebp-4]
 004F3C18    mov         dword ptr [edx+60],eax;TApplication.FHintControl:TControl
 004F3C1B    xor         ecx,ecx
 004F3C1D    mov         edx,dword ptr [ebp-14]
 004F3C20    mov         eax,dword ptr [ebp-4]
 004F3C23    call        004F3A64
 004F3C28    mov         esp,ebp
 004F3C2A    pop         ebp
 004F3C2B    ret
end;*}

//004F3C2C
procedure TApplication.HintTimerExpired;
begin
{*
 004F3C2C    push        ebp
 004F3C2D    mov         ebp,esp
 004F3C2F    add         esp,0FFFFFFF4
 004F3C32    mov         dword ptr [ebp-4],eax
 004F3C35    mov         eax,dword ptr [ebp-4]
 004F3C38    call        004F3ABC
 004F3C3D    mov         eax,dword ptr [ebp-4]
 004F3C40    mov         al,byte ptr [eax+89]
 004F3C46    sub         al,1
>004F3C48    jb          004F3C56
>004F3C4A    jne         004F3C6A
 004F3C4C    mov         eax,dword ptr [ebp-4]
 004F3C4F    call        004F3C70
>004F3C54    jmp         004F3C6A
 004F3C56    lea         eax,[ebp-0C]
 004F3C59    push        eax
 004F3C5A    call        user32.GetCursorPos
 004F3C5F    lea         edx,[ebp-0C]
 004F3C62    mov         eax,dword ptr [ebp-4]
 004F3C65    call        004F3FD8
 004F3C6A    mov         esp,ebp
 004F3C6C    pop         ebp
 004F3C6D    ret
*}
end;

//004F3C70
procedure sub_004F3C70(?:TApplication);
begin
{*
 004F3C70    push        ebp
 004F3C71    mov         ebp,esp
 004F3C73    push        ecx
 004F3C74    mov         dword ptr [ebp-4],eax
 004F3C77    mov         eax,dword ptr [ebp-4]
 004F3C7A    cmp         dword ptr [eax+84],0
>004F3C81    je          004F3CC3
 004F3C83    mov         eax,dword ptr [ebp-4]
 004F3C86    mov         eax,dword ptr [eax+84]
 004F3C8C    call        TWinControl.HandleAllocated
 004F3C91    test        al,al
>004F3C93    je          004F3CC3
 004F3C95    mov         eax,dword ptr [ebp-4]
 004F3C98    mov         eax,dword ptr [eax+84]
 004F3C9E    call        TWinControl.GetHandle
 004F3CA3    push        eax
 004F3CA4    call        user32.IsWindowVisible
 004F3CA9    test        eax,eax
>004F3CAB    je          004F3CC3
 004F3CAD    push        0
 004F3CAF    mov         eax,dword ptr [ebp-4]
 004F3CB2    mov         eax,dword ptr [eax+84]
 004F3CB8    call        TWinControl.GetHandle
 004F3CBD    push        eax
 004F3CBE    call        user32.ShowWindow
 004F3CC3    pop         ecx
 004F3CC4    pop         ebp
 004F3CC5    ret
*}
end;

//004F3CC8
procedure sub_004F3CC8(?:TApplication);
begin
{*
 004F3CC8    push        ebp
 004F3CC9    mov         ebp,esp
 004F3CCB    push        ecx
 004F3CCC    mov         dword ptr [ebp-4],eax
 004F3CCF    mov         eax,dword ptr [ebp-4]
 004F3CD2    cmp         dword ptr [eax+60],0;TApplication.FHintControl:TControl
>004F3CD6    je          004F3CFC
 004F3CD8    mov         eax,dword ptr [ebp-4]
 004F3CDB    call        004F3C70
 004F3CE0    mov         eax,dword ptr [ebp-4]
 004F3CE3    xor         edx,edx
 004F3CE5    mov         dword ptr [eax+60],edx;TApplication.FHintControl:TControl
 004F3CE8    mov         eax,dword ptr [ebp-4]
 004F3CEB    mov         byte ptr [eax+58],0;TApplication.FHintActive:Boolean
 004F3CEF    call        UnhookHintHooks
 004F3CF4    mov         eax,dword ptr [ebp-4]
 004F3CF7    call        004F3ABC
 004F3CFC    pop         ecx
 004F3CFD    pop         ebp
 004F3CFE    ret
*}
end;

//004F3D00
{*function sub_004F3D00(?:?; ?:Integer):?;
begin
 004F3D00    push        ebp
 004F3D01    mov         ebp,esp
 004F3D03    push        ecx
 004F3D04    mov         ecx,edx
 004F3D06    mov         edx,edi
 004F3D08    mov         edi,eax
 004F3D0A    pop         eax
 004F3D0B    repe scas   byte ptr [edi]
 004F3D0D    mov         eax,ecx
 004F3D0F    mov         edi,edx
 004F3D11    pop         ebp
 004F3D12    ret
end;*}

//004F3D14
{*function sub_004F3D14:?;
begin
 004F3D14    push        ebp
 004F3D15    mov         ebp,esp
 004F3D17    add         esp,0FFFFFFCC
 004F3D1A    push        0E
 004F3D1C    mov         eax,[0055B2BC];^gvar_0055DB78
 004F3D21    mov         eax,dword ptr [eax]
 004F3D23    call        eax
 004F3D25    mov         dword ptr [ebp-4],eax
 004F3D28    lea         eax,[ebp-34]
 004F3D2B    push        eax
 004F3D2C    call        user32.GetCursor
 004F3D31    push        eax
 004F3D32    call        user32.GetIconInfo
 004F3D37    test        eax,eax
>004F3D39    je          004F3E8F
 004F3D3F    xor         eax,eax
 004F3D41    push        ebp
 004F3D42    push        4F3E88
 004F3D47    push        dword ptr fs:[eax]
 004F3D4A    mov         dword ptr fs:[eax],esp
 004F3D4D    lea         ecx,[ebp-0C]
 004F3D50    lea         edx,[ebp-8]
 004F3D53    mov         eax,dword ptr [ebp-28]
 004F3D56    call        00489B14
 004F3D5B    mov         eax,dword ptr [ebp-8]
 004F3D5E    add         eax,dword ptr [ebp-0C]
 004F3D61    call        004660E8
 004F3D66    mov         dword ptr [ebp-14],eax
 004F3D69    xor         eax,eax
 004F3D6B    push        ebp
 004F3D6C    push        4F3E55
 004F3D71    push        dword ptr fs:[eax]
 004F3D74    mov         dword ptr fs:[eax],esp
 004F3D77    mov         eax,dword ptr [ebp-14]
 004F3D7A    add         eax,dword ptr [ebp-8]
 004F3D7D    mov         dword ptr [ebp-18],eax
 004F3D80    mov         eax,dword ptr [ebp-18]
 004F3D83    push        eax
 004F3D84    mov         ecx,dword ptr [ebp-14]
 004F3D87    xor         edx,edx
 004F3D89    mov         eax,dword ptr [ebp-28]
 004F3D8C    call        00489BF8
 004F3D91    test        al,al
>004F3D93    je          004F3E39
 004F3D99    mov         eax,dword ptr [ebp-14]
 004F3D9C    cmp         word ptr [eax+0E],1
>004F3DA1    jne         004F3E39
 004F3DA7    mov         eax,dword ptr [ebp-14]
 004F3DAA    mov         dword ptr [ebp-20],eax
 004F3DAD    mov         eax,dword ptr [ebp-20]
 004F3DB0    mov         eax,dword ptr [eax+4]
 004F3DB3    mov         edx,dword ptr [ebp-20]
 004F3DB6    movzx       edx,word ptr [edx+0E]
 004F3DBA    imul        edx
 004F3DBC    add         eax,1F
 004F3DBF    and         eax,0FFFFFFE0
 004F3DC2    test        eax,eax
>004F3DC4    jns         004F3DC9
 004F3DC6    add         eax,7
 004F3DC9    sar         eax,3
 004F3DCC    mov         dword ptr [ebp-1C],eax
 004F3DCF    mov         eax,dword ptr [ebp-20]
 004F3DD2    mov         eax,dword ptr [eax+4]
 004F3DD5    imul        dword ptr [ebp-1C]
 004F3DD8    mov         dword ptr [ebp-10],eax
 004F3DDB    mov         eax,dword ptr [ebp-18]
 004F3DDE    add         eax,dword ptr [ebp-0C]
 004F3DE1    sub         eax,dword ptr [ebp-10]
 004F3DE4    mov         dword ptr [ebp-18],eax
 004F3DE7    push        ebp
 004F3DE8    mov         ecx,0FF
 004F3DED    mov         edx,dword ptr [ebp-10]
 004F3DF0    mov         eax,dword ptr [ebp-18]
 004F3DF3    call        004F3D00
 004F3DF8    pop         ecx
 004F3DF9    mov         dword ptr [ebp-4],eax
 004F3DFC    cmp         dword ptr [ebp-4],0
>004F3E00    jne         004F3E29
 004F3E02    mov         eax,dword ptr [ebp-20]
 004F3E05    mov         eax,dword ptr [eax+8]
 004F3E08    mov         edx,dword ptr [ebp-20]
 004F3E0B    mov         edx,dword ptr [edx+4]
 004F3E0E    add         edx,edx
 004F3E10    cmp         eax,edx
>004F3E12    jl          004F3E29
 004F3E14    push        ebp
 004F3E15    mov         eax,dword ptr [ebp-18]
 004F3E18    sub         eax,dword ptr [ebp-10]
 004F3E1B    xor         ecx,ecx
 004F3E1D    mov         edx,dword ptr [ebp-10]
 004F3E20    call        004F3D00
 004F3E25    pop         ecx
 004F3E26    mov         dword ptr [ebp-4],eax
 004F3E29    mov         eax,dword ptr [ebp-4]
 004F3E2C    cdq
 004F3E2D    idiv        eax,dword ptr [ebp-1C]
 004F3E30    mov         dword ptr [ebp-4],eax
 004F3E33    mov         eax,dword ptr [ebp-2C]
 004F3E36    sub         dword ptr [ebp-4],eax
 004F3E39    xor         eax,eax
 004F3E3B    pop         edx
 004F3E3C    pop         ecx
 004F3E3D    pop         ecx
 004F3E3E    mov         dword ptr fs:[eax],edx
 004F3E41    push        4F3E5C
 004F3E46    mov         edx,dword ptr [ebp-8]
 004F3E49    add         edx,dword ptr [ebp-0C]
 004F3E4C    mov         eax,dword ptr [ebp-14]
 004F3E4F    call        @FreeMem
 004F3E54    ret
>004F3E55    jmp         @HandleFinally
>004F3E5A    jmp         004F3E46
 004F3E5C    xor         eax,eax
 004F3E5E    pop         edx
 004F3E5F    pop         ecx
 004F3E60    pop         ecx
 004F3E61    mov         dword ptr fs:[eax],edx
 004F3E64    push        4F3E8F
 004F3E69    cmp         dword ptr [ebp-24],0
>004F3E6D    je          004F3E78
 004F3E6F    mov         eax,dword ptr [ebp-24]
 004F3E72    push        eax
 004F3E73    call        gdi32.DeleteObject
 004F3E78    cmp         dword ptr [ebp-28],0
>004F3E7C    je          004F3E87
 004F3E7E    mov         eax,dword ptr [ebp-28]
 004F3E81    push        eax
 004F3E82    call        gdi32.DeleteObject
 004F3E87    ret
>004F3E88    jmp         @HandleFinally
>004F3E8D    jmp         004F3E69
 004F3E8F    mov         eax,dword ptr [ebp-4]
 004F3E92    mov         esp,ebp
 004F3E94    pop         ebp
 004F3E95    ret
end;*}

//004F3E98
{*procedure sub_004F3E98(?:?; ?:?);
begin
 004F3E98    push        ebp
 004F3E99    mov         ebp,esp
 004F3E9B    push        ecx
 004F3E9C    mov         dword ptr [ebp-4],eax
 004F3E9F    cmp         dword ptr [ebp-4],0
>004F3EA3    jne         004F3EAD
 004F3EA5    mov         eax,[005418C0];^gvar_004C64FC
 004F3EAA    mov         dword ptr [ebp-4],eax
 004F3EAD    mov         eax,dword ptr [ebp+8]
 004F3EB0    mov         eax,dword ptr [eax-4]
 004F3EB3    cmp         dword ptr [eax+84],0
>004F3EBA    je          004F3ED2
 004F3EBC    mov         eax,dword ptr [ebp+8]
 004F3EBF    mov         eax,dword ptr [eax-4]
 004F3EC2    mov         eax,dword ptr [eax+84]
 004F3EC8    call        TObject.ClassType
 004F3ECD    cmp         eax,dword ptr [ebp-4]
>004F3ED0    je          004F3EFD
 004F3ED2    mov         eax,dword ptr [ebp+8]
 004F3ED5    mov         eax,dword ptr [eax-4]
 004F3ED8    mov         eax,dword ptr [eax+84]
 004F3EDE    call        TObject.Free
 004F3EE3    mov         eax,dword ptr [ebp+8]
 004F3EE6    mov         ecx,dword ptr [eax-4]
 004F3EE9    mov         dl,1
 004F3EEB    mov         eax,dword ptr [ebp-4]
 004F3EEE    call        dword ptr [eax+2C]
 004F3EF1    mov         edx,dword ptr [ebp+8]
 004F3EF4    mov         edx,dword ptr [edx-4]
 004F3EF7    mov         dword ptr [edx+84],eax
 004F3EFD    pop         ecx
 004F3EFE    pop         ebp
 004F3EFF    ret
end;*}

//004F3F00
{*function sub_004F3F00(?:AnsiString; ?:?):?;
begin
 004F3F00    push        ebp
 004F3F01    mov         ebp,esp
 004F3F03    add         esp,0FFFFFFE8
 004F3F06    xor         edx,edx
 004F3F08    mov         dword ptr [ebp-18],edx
 004F3F0B    mov         dword ptr [ebp-4],eax
 004F3F0E    xor         eax,eax
 004F3F10    push        ebp
 004F3F11    push        4F3FC7
 004F3F16    push        dword ptr fs:[eax]
 004F3F19    mov         dword ptr fs:[eax],esp
 004F3F1C    xor         eax,eax
 004F3F1E    mov         dword ptr [ebp-8],eax
 004F3F21    mov         eax,dword ptr [ebp-4]
 004F3F24    mov         dword ptr [ebp-10],eax
 004F3F27    cmp         dword ptr [ebp-10],0
>004F3F2B    je          004F3FB1
>004F3F31    jmp         004F3FA9
 004F3F33    mov         eax,dword ptr [ebp-10]
 004F3F36    mov         dword ptr [ebp-14],eax
>004F3F39    jmp         004F3F46
 004F3F3B    mov         eax,dword ptr [ebp-10]
 004F3F3E    call        0046B920
 004F3F43    mov         dword ptr [ebp-10],eax
 004F3F46    mov         eax,dword ptr [ebp-10]
 004F3F49    mov         al,byte ptr [eax]
 004F3F4B    test        al,al
>004F3F4D    je          004F3F57
 004F3F4F    sub         al,0A
>004F3F51    je          004F3F57
 004F3F53    sub         al,3
>004F3F55    jne         004F3F3B
 004F3F57    mov         ecx,dword ptr [ebp-10]
 004F3F5A    sub         ecx,dword ptr [ebp-14]
 004F3F5D    lea         eax,[ebp-18]
 004F3F60    mov         edx,dword ptr [ebp-14]
 004F3F63    call        @LStrFromPCharLen
 004F3F68    mov         eax,dword ptr [ebp+8]
 004F3F6B    mov         eax,dword ptr [eax-4]
 004F3F6E    mov         eax,dword ptr [eax+84]
 004F3F74    mov         eax,dword ptr [eax+208]
 004F3F7A    mov         edx,dword ptr [ebp-18]
 004F3F7D    call        TCanvas.TextWidth
 004F3F82    mov         dword ptr [ebp-0C],eax
 004F3F85    mov         eax,dword ptr [ebp-0C]
 004F3F88    cmp         eax,dword ptr [ebp-8]
>004F3F8B    jle         004F3F93
 004F3F8D    mov         eax,dword ptr [ebp-0C]
 004F3F90    mov         dword ptr [ebp-8],eax
 004F3F93    mov         eax,dword ptr [ebp-10]
 004F3F96    cmp         byte ptr [eax],0D
>004F3F99    jne         004F3F9E
 004F3F9B    inc         dword ptr [ebp-10]
 004F3F9E    mov         eax,dword ptr [ebp-10]
 004F3FA1    cmp         byte ptr [eax],0A
>004F3FA4    jne         004F3FA9
 004F3FA6    inc         dword ptr [ebp-10]
 004F3FA9    mov         eax,dword ptr [ebp-10]
 004F3FAC    cmp         byte ptr [eax],0
>004F3FAF    jne         004F3F33
 004F3FB1    xor         eax,eax
 004F3FB3    pop         edx
 004F3FB4    pop         ecx
 004F3FB5    pop         ecx
 004F3FB6    mov         dword ptr fs:[eax],edx
 004F3FB9    push        4F3FCE
 004F3FBE    lea         eax,[ebp-18]
 004F3FC1    call        @LStrClr
 004F3FC6    ret
>004F3FC7    jmp         @HandleFinally
>004F3FCC    jmp         004F3FBE
 004F3FCE    mov         eax,dword ptr [ebp-8]
 004F3FD1    mov         esp,ebp
 004F3FD3    pop         ebp
 004F3FD4    ret
end;*}

//004F3FD8
{*procedure sub_004F3FD8(?:TApplication; ?:?);
begin
 004F3FD8    push        ebp
 004F3FD9    mov         ebp,esp
 004F3FDB    add         esp,0FFFFFF6C
 004F3FE1    push        ebx
 004F3FE2    push        esi
 004F3FE3    push        edi
 004F3FE4    xor         ecx,ecx
 004F3FE6    mov         dword ptr [ebp-90],ecx
 004F3FEC    mov         dword ptr [ebp-94],ecx
 004F3FF2    mov         esi,edx
 004F3FF4    lea         edi,[ebp-0C]
 004F3FF7    movs        dword ptr [edi],dword ptr [esi]
 004F3FF8    movs        dword ptr [edi],dword ptr [esi]
 004F3FF9    mov         dword ptr [ebp-4],eax
 004F3FFC    lea         eax,[ebp-64]
 004F3FFF    mov         edx,dword ptr ds:[4E7790];THintInfo
 004F4005    call        @AddRefRecord
 004F400A    xor         eax,eax
 004F400C    push        ebp
 004F400D    push        4F439D
 004F4012    push        dword ptr fs:[eax]
 004F4015    mov         dword ptr fs:[eax],esp
 004F4018    mov         eax,dword ptr [ebp-4]
 004F401B    mov         byte ptr [eax+58],0;TApplication.FHintActive:Boolean
 004F401F    mov         eax,dword ptr [ebp-4]
 004F4022    cmp         byte ptr [eax+88],0;TApplication.FShowHint:Boolean
>004F4029    je          004F4354
 004F402F    mov         eax,dword ptr [ebp-4]
 004F4032    cmp         dword ptr [eax+60],0;TApplication.FHintControl:TControl
>004F4036    je          004F4354
 004F403C    call        004E7C18
 004F4041    test        al,al
>004F4043    je          004F4354
 004F4049    lea         eax,[ebp-0C]
 004F404C    mov         dl,1
 004F404E    call        004C8F78
 004F4053    call        004F1070
 004F4058    mov         edx,dword ptr [ebp-4]
 004F405B    cmp         eax,dword ptr [edx+60];TApplication.FHintControl:TControl
>004F405E    jne         004F4354
 004F4064    mov         eax,dword ptr [ebp-4]
 004F4067    mov         eax,dword ptr [eax+60];TApplication.FHintControl:TControl
 004F406A    mov         dword ptr [ebp-64],eax
 004F406D    mov         eax,dword ptr [ebp-0C]
 004F4070    mov         dword ptr [ebp-5C],eax
 004F4073    mov         eax,dword ptr [ebp-8]
 004F4076    mov         dword ptr [ebp-58],eax
 004F4079    push        ebp
 004F407A    call        004F3D14
 004F407F    pop         ecx
 004F4080    add         dword ptr [ebp-58],eax
 004F4083    mov         eax,[0055DE50];Screen:TScreen
 004F4088    call        004F001C
 004F408D    mov         dword ptr [ebp-54],eax
 004F4090    mov         eax,dword ptr [ebp-4]
 004F4093    mov         eax,dword ptr [eax+5C];TApplication.FHintColor:TColor
 004F4096    mov         dword ptr [ebp-50],eax
 004F4099    lea         edx,[ebp-84]
 004F409F    mov         eax,dword ptr [ebp-4]
 004F40A2    mov         eax,dword ptr [eax+60];TApplication.FHintControl:TControl
 004F40A5    call        004CA6AC
 004F40AA    lea         esi,[ebp-84]
 004F40B0    lea         edi,[ebp-4C]
 004F40B3    movs        dword ptr [edi],dword ptr [esi]
 004F40B4    movs        dword ptr [edi],dword ptr [esi]
 004F40B5    movs        dword ptr [edi],dword ptr [esi]
 004F40B6    movs        dword ptr [edi],dword ptr [esi]
 004F40B7    lea         edx,[ebp-14]
 004F40BA    mov         eax,dword ptr [ebp-4]
 004F40BD    mov         eax,dword ptr [eax+60];TApplication.FHintControl:TControl
 004F40C0    mov         ecx,dword ptr [eax]
 004F40C2    call        dword ptr [ecx+40];TControl.sub_004CA81C
 004F40C5    xor         eax,eax
 004F40C7    mov         dword ptr [ebp-1C],eax
 004F40CA    xor         eax,eax
 004F40CC    mov         dword ptr [ebp-18],eax
 004F40CF    mov         eax,dword ptr [ebp-4]
 004F40D2    mov         eax,dword ptr [eax+60];TApplication.FHintControl:TControl
 004F40D5    cmp         dword ptr [eax+30],0;TControl.FParent:TWinControl
>004F40D9    je          004F40EE
 004F40DB    lea         edx,[ebp-1C]
 004F40DE    mov         eax,dword ptr [ebp-4]
 004F40E1    mov         eax,dword ptr [eax+60];TApplication.FHintControl:TControl
 004F40E4    mov         eax,dword ptr [eax+30];TControl.FParent:TWinControl
 004F40E7    mov         ecx,dword ptr [eax]
 004F40E9    call        dword ptr [ecx+40];TWinControl.sub_004D39E8
>004F40EC    jmp         004F4128
 004F40EE    mov         eax,dword ptr [ebp-4]
 004F40F1    mov         eax,dword ptr [eax+60];TApplication.FHintControl:TControl
 004F40F4    mov         edx,dword ptr ds:[4C5E58];TWinControl
 004F40FA    call        @IsClass
 004F40FF    test        al,al
>004F4101    je          004F4128
 004F4103    mov         eax,dword ptr [ebp-4]
 004F4106    mov         eax,dword ptr [eax+60];TApplication.FHintControl:TControl
 004F4109    cmp         dword ptr [eax+190],0
>004F4110    je          004F4128
 004F4112    lea         eax,[ebp-1C]
 004F4115    push        eax
 004F4116    mov         eax,dword ptr [ebp-4]
 004F4119    mov         eax,dword ptr [eax+60];TApplication.FHintControl:TControl
 004F411C    mov         eax,dword ptr [eax+190]
 004F4122    push        eax
 004F4123    call        user32.ClientToScreen
 004F4128    mov         eax,dword ptr [ebp-18]
 004F412B    sub         eax,dword ptr [ebp-10]
 004F412E    push        eax
 004F412F    mov         eax,dword ptr [ebp-1C]
 004F4132    sub         eax,dword ptr [ebp-14]
 004F4135    push        eax
 004F4136    lea         eax,[ebp-4C]
 004F4139    push        eax
 004F413A    call        user32.OffsetRect
 004F413F    lea         ecx,[ebp-8C]
 004F4145    lea         edx,[ebp-0C]
 004F4148    mov         eax,dword ptr [ebp-4]
 004F414B    mov         eax,dword ptr [eax+60];TApplication.FHintControl:TControl
 004F414E    call        TControl.ScreenToClient
 004F4153    mov         eax,dword ptr [ebp-8C]
 004F4159    mov         dword ptr [ebp-3C],eax
 004F415C    mov         eax,dword ptr [ebp-88]
 004F4162    mov         dword ptr [ebp-38],eax
 004F4165    lea         edx,[ebp-94]
 004F416B    mov         eax,dword ptr [ebp-4]
 004F416E    mov         eax,dword ptr [eax+60];TApplication.FHintControl:TControl
 004F4171    call        004F1020
 004F4176    mov         eax,dword ptr [ebp-94]
 004F417C    lea         edx,[ebp-90]
 004F4182    call        004C7224
 004F4187    mov         edx,dword ptr [ebp-90]
 004F418D    lea         eax,[ebp-2C]
 004F4190    call        @LStrLAsg
 004F4195    xor         eax,eax
 004F4197    mov         dword ptr [ebp-34],eax
 004F419A    mov         eax,dword ptr [ebp-4]
 004F419D    mov         eax,dword ptr [eax+74];TApplication.FHintHidePause:Integer
 004F41A0    mov         dword ptr [ebp-30],eax
 004F41A3    mov         eax,[005418C0];^gvar_004C64FC
 004F41A8    mov         dword ptr [ebp-60],eax
 004F41AB    xor         eax,eax
 004F41AD    mov         dword ptr [ebp-28],eax
 004F41B0    lea         eax,[ebp-64]
 004F41B3    push        eax
 004F41B4    mov         eax,dword ptr [ebp-4]
 004F41B7    mov         eax,dword ptr [eax+60];TApplication.FHintControl:TControl
 004F41BA    xor         ecx,ecx
 004F41BC    mov         edx,0B030
 004F41C1    call        004CC7DC
 004F41C6    test        eax,eax
 004F41C8    sete        byte ptr [ebp-1D]
 004F41CC    cmp         byte ptr [ebp-1D],0
>004F41D0    je          004F41F8
 004F41D2    mov         eax,dword ptr [ebp-4]
 004F41D5    cmp         word ptr [eax+132],0;TApplication.?f132:word
>004F41DD    je          004F41F8
 004F41DF    lea         eax,[ebp-64]
 004F41E2    push        eax
 004F41E3    lea         ecx,[ebp-1D]
 004F41E6    lea         edx,[ebp-2C]
 004F41E9    mov         ebx,dword ptr [ebp-4]
 004F41EC    mov         eax,dword ptr [ebx+134];TApplication.?f134:dword
 004F41F2    call        dword ptr [ebx+130];TApplication.FOnShowHint
 004F41F8    cmp         byte ptr [ebp-1D],0
>004F41FC    je          004F4207
 004F41FE    mov         eax,dword ptr [ebp-4]
 004F4201    cmp         dword ptr [eax+60],0;TApplication.FHintControl:TControl
>004F4205    jne         004F420B
 004F4207    xor         eax,eax
>004F4209    jmp         004F420D
 004F420B    mov         al,1
 004F420D    mov         edx,dword ptr [ebp-4]
 004F4210    mov         byte ptr [edx+58],al;TApplication.FHintActive:Boolean
 004F4213    mov         eax,dword ptr [ebp-4]
 004F4216    cmp         byte ptr [eax+58],0;TApplication.FHintActive:Boolean
>004F421A    je          004F4354
 004F4220    cmp         dword ptr [ebp-2C],0
>004F4224    je          004F4354
 004F422A    push        ebp
 004F422B    mov         eax,dword ptr [ebp-60]
 004F422E    call        004F3E98
 004F4233    pop         ecx
 004F4234    mov         eax,dword ptr [ebp-4]
 004F4237    mov         eax,dword ptr [eax+60];TApplication.FHintControl:TControl
 004F423A    mov         dl,byte ptr [eax+5F];TControl.FBiDiMode:TBiDiMode
 004F423D    mov         eax,dword ptr [ebp-4]
 004F4240    mov         eax,dword ptr [eax+84];TApplication.FHintWindow:THintWindow
 004F4246    mov         ecx,dword ptr [eax]
 004F4248    call        dword ptr [ecx+70];TPanel.SetBiDiMode
 004F424B    mov         eax,dword ptr [ebp-28]
 004F424E    push        eax
 004F424F    lea         eax,[ebp-74]
 004F4252    push        eax
 004F4253    mov         eax,dword ptr [ebp-4]
 004F4256    mov         eax,dword ptr [eax+84];TApplication.FHintWindow:THintWindow
 004F425C    mov         ecx,dword ptr [ebp-2C]
 004F425F    mov         edx,dword ptr [ebp-54]
 004F4262    mov         ebx,dword ptr [eax]
 004F4264    call        dword ptr [ebx+0D8];THintWindow.sub_004D5780
 004F426A    mov         eax,dword ptr [ebp-58]
 004F426D    push        eax
 004F426E    mov         eax,dword ptr [ebp-5C]
 004F4271    push        eax
 004F4272    lea         eax,[ebp-74]
 004F4275    push        eax
 004F4276    call        user32.OffsetRect
 004F427B    mov         eax,dword ptr [ebp-4]
 004F427E    mov         eax,dword ptr [eax+84];TApplication.FHintWindow:THintWindow
 004F4284    mov         si,0FFC8
 004F4288    call        @CallDynaInst;TControl.sub_004CB93C
 004F428D    test        al,al
>004F428F    je          004F42AD
 004F4291    push        ebp
 004F4292    mov         eax,dword ptr [ebp-2C]
 004F4295    call        004F3F00
 004F429A    pop         ecx
 004F429B    add         eax,5
 004F429E    mov         dword ptr [ebp-24],eax
 004F42A1    mov         eax,dword ptr [ebp-24]
 004F42A4    sub         dword ptr [ebp-74],eax
 004F42A7    mov         eax,dword ptr [ebp-24]
 004F42AA    sub         dword ptr [ebp-6C],eax
 004F42AD    lea         ecx,[ebp-8C]
 004F42B3    lea         edx,[ebp-4C]
 004F42B6    mov         eax,dword ptr [ebp-4]
 004F42B9    mov         eax,dword ptr [eax+60];TApplication.FHintControl:TControl
 004F42BC    call        TControl.ClientToScreen
 004F42C1    mov         eax,dword ptr [ebp-4]
 004F42C4    mov         edx,dword ptr [ebp-8C]
 004F42CA    mov         dword ptr [eax+64],edx;TApplication.FHintCursorRect:TRect
 004F42CD    mov         edx,dword ptr [ebp-88]
 004F42D3    mov         dword ptr [eax+68],edx;TApplication.FHintCursorRect.Top:Longint
 004F42D6    lea         ecx,[ebp-8C]
 004F42DC    lea         edx,[ebp-44]
 004F42DF    mov         eax,dword ptr [ebp-4]
 004F42E2    mov         eax,dword ptr [eax+60];TApplication.FHintControl:TControl
 004F42E5    call        TControl.ClientToScreen
 004F42EA    mov         eax,dword ptr [ebp-4]
 004F42ED    mov         edx,dword ptr [ebp-8C]
 004F42F3    mov         dword ptr [eax+6C],edx;TApplication.FHintCursorRect.Right:Longint
 004F42F6    mov         edx,dword ptr [ebp-88]
 004F42FC    mov         dword ptr [eax+70],edx
 004F42FF    mov         eax,dword ptr [ebp-4]
 004F4302    mov         eax,dword ptr [eax+84];TApplication.FHintWindow:THintWindow
 004F4308    mov         edx,dword ptr [ebp-50]
 004F430B    call        TPanel.SetColor
 004F4310    mov         eax,dword ptr [ebp-28]
 004F4313    push        eax
 004F4314    mov         eax,dword ptr [ebp-4]
 004F4317    mov         eax,dword ptr [eax+84];TApplication.FHintWindow:THintWindow
 004F431D    mov         ecx,dword ptr [ebp-2C]
 004F4320    lea         edx,[ebp-74]
 004F4323    mov         ebx,dword ptr [eax]
 004F4325    call        dword ptr [ebx+0D4];THintWindow.sub_004D574C
 004F432B    call        004F11B0
 004F4330    cmp         dword ptr [ebp-34],0
>004F4334    jle         004F4345
 004F4336    xor         ecx,ecx
 004F4338    mov         edx,dword ptr [ebp-34]
 004F433B    mov         eax,dword ptr [ebp-4]
 004F433E    call        004F3A64
>004F4343    jmp         004F4371
 004F4345    mov         cl,1
 004F4347    mov         edx,dword ptr [ebp-30]
 004F434A    mov         eax,dword ptr [ebp-4]
 004F434D    call        004F3A64
>004F4352    jmp         004F4371
 004F4354    cmp         dword ptr [ebp-34],0
>004F4358    jle         004F4369
 004F435A    xor         ecx,ecx
 004F435C    mov         edx,dword ptr [ebp-34]
 004F435F    mov         eax,dword ptr [ebp-4]
 004F4362    call        004F3A64
>004F4367    jmp         004F4371
 004F4369    mov         eax,dword ptr [ebp-4]
 004F436C    call        004F3CC8
 004F4371    xor         eax,eax
 004F4373    pop         edx
 004F4374    pop         ecx
 004F4375    pop         ecx
 004F4376    mov         dword ptr fs:[eax],edx
 004F4379    push        4F43A4
 004F437E    lea         eax,[ebp-94]
 004F4384    mov         edx,2
 004F4389    call        @LStrArrayClr
 004F438E    lea         eax,[ebp-64]
 004F4391    mov         edx,dword ptr ds:[4E7790];THintInfo
 004F4397    call        @FinalizeRecord
 004F439C    ret
>004F439D    jmp         @HandleFinally
>004F43A2    jmp         004F437E
 004F43A4    pop         edi
 004F43A5    pop         esi
 004F43A6    pop         ebx
 004F43A7    mov         esp,ebp
 004F43A9    pop         ebp
 004F43AA    ret
end;*}

//004F43AC
{*procedure sub_004F43AC(?:TApplication; ?:?);
begin
 004F43AC    push        ebp
 004F43AD    mov         ebp,esp
 004F43AF    add         esp,0FFFFFFF4
 004F43B2    mov         dword ptr [ebp-8],edx
 004F43B5    mov         dword ptr [ebp-4],eax
 004F43B8    mov         eax,[0055DE50];Screen:TScreen
 004F43BD    mov         eax,dword ptr [eax+68]
 004F43C0    mov         dword ptr [ebp-0C],eax
 004F43C3    cmp         dword ptr [ebp-0C],0
>004F43C7    je          004F43E8
 004F43C9    mov         eax,dword ptr [ebp-0C]
 004F43CC    cmp         dword ptr [eax+23C],0
>004F43D3    je          004F43E8
 004F43D5    mov         eax,dword ptr [ebp-8]
 004F43D8    mov         edx,dword ptr [ebp-0C]
 004F43DB    mov         edx,dword ptr [edx+23C]
 004F43E1    call        @LStrAsg
>004F43E6    jmp         004F43F6
 004F43E8    mov         eax,dword ptr [ebp-8]
 004F43EB    mov         edx,dword ptr [ebp-4]
 004F43EE    mov         edx,dword ptr [edx+50];TApplication.FHelpFile:String
 004F43F1    call        @LStrAsg
 004F43F6    mov         esp,ebp
 004F43F8    pop         ebp
 004F43F9    ret
end;*}

//004F43FC
{*function sub_004F43FC(?:?; ?:?; ?:?):?;
begin
 004F43FC    push        ebp
 004F43FD    mov         ebp,esp
 004F43FF    add         esp,0FFFFFFEC
 004F4402    mov         dword ptr [ebp-0C],ecx
 004F4405    mov         dword ptr [ebp-8],edx
 004F4408    mov         dword ptr [ebp-4],eax
 004F440B    mov         eax,[0055DE50];Screen:TScreen
 004F4410    mov         eax,dword ptr [eax+6C]
 004F4413    mov         dword ptr [ebp-14],eax
 004F4416    cmp         dword ptr [ebp-14],0
>004F441A    je          004F4430
 004F441C    mov         eax,dword ptr [ebp-0C]
 004F441F    push        eax
 004F4420    xor         ecx,ecx
 004F4422    mov         edx,dword ptr [ebp-8]
 004F4425    mov         eax,dword ptr [ebp-14]
 004F4428    call        004CC7DC
 004F442D    dec         eax
>004F442E    je          004F445F
 004F4430    mov         eax,dword ptr [ebp-4]
 004F4433    mov         eax,dword ptr [eax+44]
 004F4436    cmp         eax,dword ptr [ebp-14]
>004F4439    je          004F445B
 004F443B    mov         eax,dword ptr [ebp-4]
 004F443E    cmp         dword ptr [eax+44],0
>004F4442    je          004F445B
 004F4444    mov         eax,dword ptr [ebp-0C]
 004F4447    push        eax
 004F4448    xor         ecx,ecx
 004F444A    mov         edx,dword ptr [ebp-8]
 004F444D    mov         eax,dword ptr [ebp-4]
 004F4450    mov         eax,dword ptr [eax+44]
 004F4453    call        004CC7DC
 004F4458    dec         eax
>004F4459    je          004F445F
 004F445B    xor         eax,eax
>004F445D    jmp         004F4461
 004F445F    mov         al,1
 004F4461    mov         byte ptr [ebp-0D],al
 004F4464    cmp         byte ptr [ebp-0D],0
>004F4468    jne         004F44A1
 004F446A    mov         eax,dword ptr [ebp-0C]
 004F446D    mov         edx,dword ptr ds:[4DA408];TCustomAction
 004F4473    call        @IsClass
 004F4478    test        al,al
>004F447A    je          004F44A1
 004F447C    mov         eax,dword ptr [ebp-0C]
 004F447F    cmp         byte ptr [eax+6A],0
>004F4483    je          004F44A1
 004F4485    mov         eax,dword ptr [ebp-0C]
 004F4488    cmp         byte ptr [eax+60],0
>004F448C    je          004F44A1
 004F448E    mov         eax,dword ptr [ebp-0C]
 004F4491    cmp         word ptr [eax+42],0
 004F4496    setne       dl
 004F4499    mov         eax,dword ptr [ebp-0C]
 004F449C    call        TVirtualListAction.SetEnabled
 004F44A1    mov         al,byte ptr [ebp-0D]
 004F44A4    mov         esp,ebp
 004F44A6    pop         ebp
 004F44A7    ret
end;*}

//004F44A8
{*function sub_004F44A8(?:TApplication; ?:TContainedAction):?;
begin
 004F44A8    push        ebp
 004F44A9    mov         ebp,esp
 004F44AB    add         esp,0FFFFFFF4
 004F44AE    push        ebx
 004F44AF    mov         dword ptr [ebp-8],edx
 004F44B2    mov         dword ptr [ebp-4],eax
 004F44B5    mov         byte ptr [ebp-9],0
 004F44B9    mov         eax,dword ptr [ebp-4]
 004F44BC    cmp         word ptr [eax+0C2],0;TApplication.?fC2:word
>004F44C4    je          004F44DB
 004F44C6    lea         ecx,[ebp-9]
 004F44C9    mov         ebx,dword ptr [ebp-4]
 004F44CC    mov         edx,dword ptr [ebp-8]
 004F44CF    mov         eax,dword ptr [ebx+0C4];TApplication.?fC4:dword
 004F44D5    call        dword ptr [ebx+0C0];TApplication.FOnActionExecute
 004F44DB    mov         al,byte ptr [ebp-9]
 004F44DE    pop         ebx
 004F44DF    mov         esp,ebp
 004F44E1    pop         ebp
 004F44E2    ret
end;*}

//004F44E4
{*function sub_004F44E4(?:TApplication; ?:TContainedAction):?;
begin
 004F44E4    push        ebp
 004F44E5    mov         ebp,esp
 004F44E7    add         esp,0FFFFFFF4
 004F44EA    push        ebx
 004F44EB    mov         dword ptr [ebp-8],edx
 004F44EE    mov         dword ptr [ebp-4],eax
 004F44F1    mov         byte ptr [ebp-9],0
 004F44F5    mov         eax,dword ptr [ebp-4]
 004F44F8    cmp         word ptr [eax+0CA],0;TApplication.?fCA:word
>004F4500    je          004F4517
 004F4502    lea         ecx,[ebp-9]
 004F4505    mov         ebx,dword ptr [ebp-4]
 004F4508    mov         edx,dword ptr [ebp-8]
 004F450B    mov         eax,dword ptr [ebx+0CC];TApplication.?fCC:dword
 004F4511    call        dword ptr [ebx+0C8];TApplication.FOnActionUpdate
 004F4517    mov         al,byte ptr [ebp-9]
 004F451A    pop         ebx
 004F451B    mov         esp,ebp
 004F451D    pop         ebp
 004F451E    ret
end;*}

//004F4520
procedure InitProcs;
begin
{*
 004F4520    push        ebp
 004F4521    mov         ebp,esp
 004F4523    push        ecx
 004F4524    push        4F4550
 004F4529    call        kernel32.GetModuleHandleA
 004F452E    mov         dword ptr [ebp-4],eax
 004F4531    cmp         dword ptr [ebp-4],0
>004F4535    je          004F454A
 004F4537    push        4F455C
 004F453C    mov         eax,dword ptr [ebp-4]
 004F453F    push        eax
 004F4540    call        kernel32.GetProcAddress
 004F4545    mov         [005418C4],eax;gvar_005418C4
 004F454A    pop         ecx
 004F454B    pop         ebp
 004F454C    ret
*}
end;

//004F4578
{*procedure sub_004F4578(?:?; ?:?);
begin
 004F4578    push        ebp
 004F4579    mov         ebp,esp
 004F457B    add         esp,0FFFFFFF8
 004F457E    mov         dword ptr [ebp-8],edx
 004F4581    mov         dword ptr [ebp-4],eax
 004F4584    push        0
 004F4586    push        0
 004F4588    push        0
 004F458A    mov         eax,dword ptr [ebp-4]
 004F458D    mov         eax,dword ptr [eax+30]
 004F4590    push        eax
 004F4591    call        user32.PostMessageA
 004F4596    pop         ecx
 004F4597    pop         ecx
 004F4598    pop         ebp
 004F4599    ret
end;*}

//004F459C
procedure sub_004F459C(?:TApplication);
begin
{*
 004F459C    push        ebp
 004F459D    mov         ebp,esp
 004F459F    push        ecx
 004F45A0    mov         dword ptr [ebp-4],eax
 004F45A3    mov         eax,[0055B684];^gvar_00540CF0
 004F45A8    mov         edx,dword ptr [ebp-4]
 004F45AB    mov         dword ptr [eax+4],edx
 004F45AE    mov         dword ptr [eax],4F4578;sub_004F4578
 004F45B4    pop         ecx
 004F45B5    pop         ebp
 004F45B6    ret
*}
end;

//004F45B8
{*procedure sub_004F45B8(?:?);
begin
 004F45B8    push        ebp
 004F45B9    mov         ebp,esp
 004F45BB    push        ecx
 004F45BC    mov         dword ptr [ebp-4],eax
 004F45BF    mov         eax,[0055B684];^gvar_00540CF0
 004F45C4    xor         edx,edx
 004F45C6    mov         dword ptr [eax],edx
 004F45C8    mov         dword ptr [eax+4],edx
 004F45CB    pop         ecx
 004F45CC    pop         ebp
 004F45CD    ret
end;*}

//004F45D0
procedure _NF__BA6;
begin
{*
 004F45D0    add         dword ptr [eax],eax
 004F45D2    add         byte ptr [eax],al
 004F45D4    rcr         byte ptr [eax],54
 004F45D7    add         byte ptr [eax+4C64],dh
 004F45DD    add         byte ptr [eax],al
 004F45DF    add         byte ptr [ebp-75],dl;{Finalization}
*}
end;

Initialization
//004F463C
{*
 004F463C    sub         dword ptr ds:[55DE54],1
>004F4643    jae         004F466D
 004F4645    mov         eax,4F45D0;_NF__BA6
 004F464A    call        @InitImports
 004F464F    call        InitProcs
 004F4654    push        4F4670
 004F4659    call        user32.RegisterWindowMessageA
 004F465E    mov         [0055DE58],eax;gvar_0055DE58
 004F4663    mov         eax,4E7C4C;FindGlobalComponent:TComponent
 004F4668    call        RegisterFindGlobalComponentProc
 004F466D    ret
*}
Finalization
//004F45E0
{*
 004F45E0    push        ebp
 004F45E1    mov         ebp,esp
 004F45E3    xor         eax,eax
 004F45E5    push        ebp
 004F45E6    push        4F4633
 004F45EB    push        dword ptr fs:[eax]
 004F45EE    mov         dword ptr fs:[eax],esp
 004F45F1    inc         dword ptr ds:[55DE54]
>004F45F7    jne         004F4625
 004F45F9    cmp         dword ptr ds:[55DE4C],0;Application:TApplication
>004F4600    je          004F4607
 004F4602    call        DoneApplication
 004F4607    cmp         dword ptr ds:[55DE60],0;gvar_0055DE60:THandle
>004F460E    je          004F461B
 004F4610    mov         eax,[0055DE60];gvar_0055DE60:THandle
 004F4615    push        eax
 004F4616    call        kernel32.CloseHandle
 004F461B    mov         eax,4E7C4C;FindGlobalComponent:TComponent
 004F4620    call        UnregisterFindGlobalComponentProc
 004F4625    xor         eax,eax
 004F4627    pop         edx
 004F4628    pop         ecx
 004F4629    pop         ecx
 004F462A    mov         dword ptr fs:[eax],edx
 004F462D    push        4F463A
 004F4632    ret
>004F4633    jmp         @HandleFinally
>004F4638    jmp         004F4632
 004F463A    pop         ebp
 004F463B    ret
*}
end.