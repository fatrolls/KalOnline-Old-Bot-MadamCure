//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit ActnMan;

interface

uses
  SysUtils, Classes, ActnList, ActnMan, Graphics;

type
  TGetBarsClassEvent = procedure(Sender:TCustomActionManager; BarsClass:TActionBarsClass) of object;;
  TGetBarItemClassEvent = procedure(Sender:TCustomActionManager; var BarItemClass:TActionBarItemClass) of object;;
  TGetClientsClassEvent = procedure(Sender:TCustomActionManager; var ClientsClass:TActionClientsClass) of object;;
  TGetClientItemClassEvent = procedure(Sender:TCustomActionManager; var ClientItemClass:TActionClientItemClass) of object;;
  TStyleChanged = procedure(Sender:TCustomActionManager) of object;;
  TActionBarStyle = class(TObject)
  public
    procedure v0; virtual; abstract;//v0//00402C24
    procedure v4; virtual; abstract;//v4//00402C24
    procedure v8; virtual; abstract;//v8//00402C24
  end;
  TCustomActionManager = class(TCustomActionList)
  public
    FAction:TCustomAction;//f68
    FActionBars:TActionBars;//f6C
    FCompareCaption:String;//f70
    FCompareProc:TActionProc;//f78
    FFoundClient:TActionClientItem;//f80
    FLinkedActionLists:TActionListCollection;//f84
    FDefaultActionBars:TActionBars;//f88
    FFileName:TFileName;//f8C
    FLoading:Boolean;//f90
    FPrioritySchedule:TStringList;//f94
    FSaved:Boolean;//f98
    FOnGetBarItemClass:TGetBarItemClassEvent;//fA0
    fA2:word;//fA2
    fA4:dword;//fA4
    FOnGetBarsClass:TGetBarsClassEvent;//fA8
    fAA:word;//fAA
    fAC:dword;//fAC
    FOnGetClientItemClass:TGetClientItemClassEvent;//fB0
    fB2:word;//fB2
    fB4:dword;//fB4
    FOnGetClientsClass:TGetClientsClassEvent;//fB8
    fBA:word;//fBA
    fBC:dword;//fBC
    FOnStyleChanged:TStyleChanged;//fC0
    fC2:word;//fC2
    fC4:dword;//fC4
    FStyle:TActionBarStyle;//fC8
    procedure AfterConstruction; virtual;//0050BA30
    destructor Destroy; virtual;//0050A6AC
    procedure DefineProperties(Filer:TFiler); virtual;//v4//0050A848
    //procedure v8(?:?); virtual;//v8//0050A720
    procedure vC; virtual;//vC//0050AC24
    //procedure v10(?:?; ?:?); virtual;//v10//0050AD1C
    constructor v2C; virtual;//v2C//0050A588
    procedure v30; virtual;//v30//0050B6C8
    procedure SetImages(Value:TCustomImageList); virtual;//v34//0050B1C0
    //function v38(?:?):?; virtual;//v38//0050B4A0
    procedure sub_0050B744; dynamic;//0050B744
    procedure sub_0050B6F8; dynamic;//0050B6F8
    procedure sub_0050B7DC; dynamic;//0050B7DC
    procedure sub_0050B790; dynamic;//0050B790
    procedure ResetActionBar(Index:Integer);//0050B5F8
    procedure ReadStyleProp(Reader:TReader);//0050B8CC
    procedure WriteStyleProp(Writer:TWriter);//0050B9B0
  end;
  TActionManager = class(TCustomActionManager)
    procedure SetActionBars(Value:TActionBars);//0050B1A0
    procedure SetPrioritySchedule(Value:TStringList);//0050B31C
    function IsStoredPrioritySchedule(Value:TStringList):Boolean;//0050B594
    procedure SetLinkedActionLists(Value:TActionListCollection);//0050B67C
    function IsStoredLinkedActionLists(Value:TActionListCollection):Boolean;//0050B828
    function IsStoredActionBars(Value:TActionBars):Boolean;//0050B860
    //function GetLinkedActionLists:?;//0050B884
    procedure SetStyle(Value:TActionBarStyle);//0050BA7C
  end;
  TActionListItem = class(TCollectionItem)
  public
    ActionList:TCustomActionList;//fC
    Caption:String;//f10
    //procedure v8(?:?); virtual;//v8//0050BB98
    //procedure vC(?:?); virtual;//vC//0050BCC0
    //procedure GetCaption(?:?);//0050BC68
    procedure SetActionList(Value:TCustomActionList);//0050BD10
  end;
  TActionListCollection = class(TOwnedCollection)
  end;
  TActionClientsCollection = class(TOwnedCollection)
  public
    FAutoHotKeys:Boolean;//f1C
    FParentItem:TActionClient;//f20
    FCustomizable:Boolean;//f24
    procedure AfterConstruction; virtual;//0050C5F8
  end;
  TBackgroundLayout = (blNormal, blStretch, blTile, blLeftBanner, blRightBanner);
  TChangesAllowed = (caModify, caMove, caDelete);
  TChangesAllowedSet = set of TChangesAllowed;
  TActionClient = class(TCollectionItem)
  public
    FActionBar:TCustomActionBar;//fC
    FBackground:TPicture;//f10
    BackgroundLayout:TBackgroundLayout;//f14
    FChildActionBar:TCustomActionBar;//f18
    FContextItems:TActionClients;//f1C
    FCaption:String;//f20
    Color:TColor;//f24
    FSmallIcons:Boolean;//f28
    FItems:TActionClients;//f2C
    Visible:Boolean;//f30
    ChangesAllowed:TChangesAllowedSet;//f31
    Tag:Integer;//f34
    destructor Destroy; virtual;//0050C86C
    //procedure v8(?:?); virtual;//v8//0050C964
    constructor v1C; virtual;//v1C//0050C7E4
    procedure v20; virtual;//v20//0050CA88
    procedure SetChangesAllowed(Value:TChangesAllowedSet); virtual;//v24//0050D1A4
    procedure SetColor(Value:TColor); virtual;//v28//0050D1C8
    procedure SetVisible(Value:Boolean); virtual;//v2C//0050D210
    procedure v30; virtual;//v30//0050CED4
    function IsStoredContextItems(Value:TActionClients):Boolean;//0050C8F4
    //function GetBackground:?;//0050CB18
    //function GetContextItems:?;//0050CB4C
    //function GetItems:?;//0050CC00
    function IsStoredBackground(Value:TPicture):Boolean;//0050CDAC
    function IsStoredItems(Value:TActionClients):Boolean;//0050CE64
    procedure SetItems(Value:TActionClients);//0050D000
    procedure SetBackground(Value:TPicture);//0050D034
    procedure SetBackgroundLayout(Value:TBackgroundLayout);//0050D0DC
    procedure SetContextItems(Value:TActionClients);//0050D1F4
  end;
  TActionBarItem = class(TActionClient)
  public
    AutoSize:Boolean;//f38
    GlyphLayout:TButtonLayout;//f39
    //procedure vC(?:?); virtual;//vC//0050D2CC
    constructor v1C; virtual;//v1C//0050D27C
    procedure v20; virtual;//v20//0050D23C
    //procedure v2C(?:?); virtual;//v2C//0050D4C0
    procedure v30; virtual;//v30//0050D320
    procedure SetActionBar(Value:TCustomActionBar);//0050CEE0
    procedure SetAutoSize(Value:Boolean);//0050D350
    procedure SetGlyphLayout(Value:TButtonLayout);//0050D38C
  end;
  TActionBars = class(TActionClientsCollection)
  public
    SessionCount:Integer;//f28
    ShowHints:Boolean;//f2C
    //procedure v14(?:?; ?:?); virtual;//v14//0050D620
    //function GetHintShortCuts:?;//0050D5F4
    procedure SetShowHints(Value:Boolean);//0050D684
    procedure SetHintShortCuts(Value:Boolean);//0050D6BC
  end;
  TCaptionOptions = (coNone, coSelective, coAll);
  TActionClients = class(TActionClientsCollection)
  public
    CaptionOptions:TCaptionOptions;//f28
    SmallIcons:Boolean;//f29
    HideUnused:Boolean;//f2A
    //procedure v8(?:?); virtual;//v8//0050D76C
    //procedure v14(?:?; ?:?); virtual;//v14//0050D8A8
    procedure SetAutoHotKeys(Value:Boolean);//0050C7B4
    //constructor Create(?:?);//0050D6E4
    procedure SetCaptionOptions(Value:TCaptionOptions);//0050DA84
    procedure SetHideUnused(Value:Boolean);//0050DB28
    procedure SetSmallIcons(Value:Boolean);//0050DB70
  end;
  TActionClientLink = class(TActionLink)
  public
    .............................FClient:TActionClientItem;//f18
    //procedure v0(?:?); virtual;//v0//0050DD1C
    //function v8:?; virtual;//v8//0050E074
    //procedure v10(?:?; ?:?); virtual;//v10//0050E27C
    //function v20:?; virtual;//v20//0050DE44
    //function v28:?; virtual;//v28//0050DF1C
    //function v30:?; virtual;//v30//0050DF78
    //function v38:?; virtual;//v38//0050DFBC
    //function v3C:?; virtual;//v3C//0050E018
    //function v40:?; virtual;//v40//0050E0C0
    //function v44:?; virtual;//v44//0050E10C
    //procedure v4C(?:?); virtual;//v4C//0050E154
    //procedure v50(?:?); virtual;//v50//0050E180
    //procedure v54(?:?); virtual;//v54//0050E1C4
    //procedure v5C(?:?); virtual;//v5C//0050E1F4
    //procedure v68(?:?); virtual;//v68//0050E21C
    //procedure v6C(?:?); virtual;//v6C//0050E250
    //procedure v70(?:?); virtual;//v70//0050E2B0
    //procedure v74(?:?); virtual;//v74//0050E2DC
    //function v78(?:?):?; virtual;//v78//0050DD40
  end;
  TActionClientItem = class(TActionClient)
  public
    FActionLink:TActionClientLink;//f38
    FCheckUnused:Boolean;//f3C
    FControl:TCustomActionControl;//f40
    UsageCount:Integer;//f44
    ShortCut:TShortCut;//f48
    MergeIndex:TMergeRange;//f4C
    FSeparator:Boolean;//f50
    ShowCaption:Boolean;//f51
    ShowShortCut:Boolean;//f52
    FShortCutText:String;//f54
    ImageIndex:TImageIndex;//f58
    LastSession:Integer;//f5C
    FUnused:Boolean;//f60
    ShowGlyph:Boolean;//f61
    HelpContext:THelpContext;//f64
    destructor Destroy; virtual;//0050E398
    //procedure v8(?:?); virtual;//v8//0050E56C
    //procedure vC(?:?); virtual;//vC//0050E844
    //procedure v10(?:?); virtual;//v10//0050F240
    //procedure v14(?:?); virtual;//v14//0050EE20
    constructor v1C; virtual;//v1C//0050E308
    procedure v20; virtual;//v20//0050E6DC
    //procedure v24(?:?); virtual;//v24//0050F1A8
    //procedure v2C(?:?); virtual;//v2C//0050F0D4
    procedure v30; virtual;//v30//0050EA64
    procedure v34; virtual;//v34//0050E9B4
    procedure sub_0050E77C; dynamic;//0050E77C
    //procedure sub_0050E3E0(?:?; ?:?); dynamic;//0050E3E0
    //function GetAction:?;//0050E794
    //procedure GetCaption(?:?);//0050E7C0
    function IsStoredCaption(Value:String):Boolean;//0050E9D4
    procedure SetAction(Value:TContainedAction);//0050EB7C
    procedure SetCaption(Value:AnsiString);//0050ECC4
    procedure SetImageIndex(Value:TImageIndex);//0050EDD8
    procedure SetLastSession(Value:Integer);//0050EE60
    procedure SetMergeIndex(Value:TMergeRange);//0050EE8C
    procedure SetShortCut(Value:TShortCut);//0050EF4C
    procedure SetShowCaption(Value:Boolean);//0050EFC8
    procedure SetShowShortCut(Value:Boolean);//0050F040
    procedure SetUsageCount(Value:Integer);//0050F08C
    procedure SetShowGlyph(Value:Boolean);//0050F204
    function IsStoredHelpContext(Value:THelpContext):Boolean;//0050F438
  end;
  TActionDragBaseClass = class(TDragObjectEx)
  public
    ..FActionManager:TCustomActionManager;//f38
  end;
  TActionDragObject = class(TActionDragBaseClass)
  public
    FActions:TList;//f40
    FActionClasses:Boolean;//f44
    destructor Destroy; virtual;//0050F46C
  end;
  TCategoryDragObject = class(TActionDragObject)
  public
    ..FCategory:String;//f48
  end;
  TActionItemDragObject = class(TActionDragBaseClass)
  public
    .....................FClientItem:TActionClientItem;//f40
    //procedure v0(?:?; ?:?; ?:?; ?:?); virtual;//v0//0050F510
  end;
  TCustomActionBarColorMap = class(TComponent)
  public
    FActionBars:TList;//f30
    FBtnSelectedColor:TColor;//f34
    FBtnFrameColor:TColor;//f38
    FBtnSelectedFont:TColor;//f3C
    FColor:TColor;//f40
    FDisabledColor:TColor;//f44
    FDisabledFontColor:TColor;//f48
    FDisabledFontShadow:TColor;//f4C
    FFontColor:TColor;//f50
    FHotColor:TColor;//f54
    FShadowColor:TColor;//f58
    FHotFontColor:TColor;//f5C
    FUnusedColor:TColor;//f60
    FSelectedFontColor:TColor;//f64
    FSelectedColor:TColor;//f68
    FHighlightColor:TColor;//f6C
    FDesignFocus:TColor;//f70
    FMenuColor:TColor;//f74
    FFrameTopLeftInner:TColor;//f78
    FFrameTopLeftOuter:TColor;//f7C
    FFrameBottomRightInner:TColor;//f80
    FFrameBottomRightOuter:TColor;//f84
    FOnColorChange:TNotifyEvent;//f88
    f8A:word;//f8A
    f8C:dword;//f8C
    destructor Destroy; virtual;//0050F70C
    //procedure v8(?:?); virtual;//v8//0050F9D4
    //procedure v10(?:?; ?:?); virtual;//v10//0050F7BC
    constructor v2C; virtual;//v2C//0050F6A8
    procedure SetColor(Value:TColor); virtual;//v30//0050F864
    procedure SetFontColor(Value:TColor); virtual;//v34//0050F900
    procedure v38; virtual;//v38//0050F978
  end;
  TBarOrientation = (boLeftToRight, boRightToLeft, boTopToBottom, boBottomToTop);
  TControlCreatedEvent = procedure(Sender:TObject; var Control:TCustomActionControl) of object;;
  TGetControlClassEvent = procedure(Sender:TCustomActionBar; AnItem:TActionClient; var ControlClass:TCustomActionControlClass) of object;;
  TCustomActionBar = class(TToolWindow)
  public
    FActionClient:TActionClient;//f210
    FActionManager:TCustomActionManager;//f214
    FAllowHiding:Boolean;//f218
    FCanvas:TCanvas;//f21C
    FColorMap:TCustomActionBarColorMap;//f220
    FDesignable:Boolean;//f224
    FDesignMode:Boolean;//f225
    FEnabledState:Boolean;//f226
    FOrientation:TBarOrientation;//f227
    FSpacing:Integer;//f228
    FOnControlCreated:TControlCreatedEvent;//f230
    f232:word;//f232
    f234:dword;//f234
    FOnGetControlClass:TGetControlClassEvent;//f238
    f23A:word;//f23A
    f23C:dword;//f23C
    FOnPaint:TNotifyEvent;//f240
    f242:word;//f242
    f244:dword;//f244
    FPersistentHotKeys:Boolean;//f248
    FHRowCount:Integer;//f24C
    FVRowCount:Integer;//f250
    FVertMargin:Integer;//f254
    FHorzMargin:Integer;//f258
    FHorzSeparator:Boolean;//f25C
    FSavedSize:TPoint;//f25D
    FVertSeparator:Boolean;//f265
    FTallest:Integer;//f268
    FWidest:Integer;//f26C
    FContextBar:Boolean;//f270
    FDefaultColorMap:TCustomActionBarColorMap;//f274
    FSavedWrapState:Boolean;//f278
    destructor Destroy; virtual;//0050FC28
    procedure Loaded; virtual;//vC//00511768
    procedure Notification(AComponent:TComponent; Operation:TOperation); virtual;//v10//005117C4
    constructor Create(AOwner:TComponent); virtual;//v2C//0050FB28
    procedure SetBiDiMode(Value:TBiDiMode); virtual;//v70//00512098
    procedure SetBounds(ALeft:Integer; ATop:Integer; AWidth:Integer; AHeight:Integer); virtual;//v84//00512858
    procedure AlignControls(AControl:TControl; var Rect:TRect); virtual;//v90//0050FC80
    //function vA4(?:?; ?:?):?; virtual;//vA4//005100DC
    //procedure vA8(?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?); virtual;//vA8//0051028C
    //procedure vB8(?:?); virtual;//vB8//00511870
    //procedure vC8(?:?); virtual;//vC8//00512AF4
    procedure vCC; virtual;//vCC//0050FCD4
    procedure vD0; virtual;//vD0//0050FDF4
    //function vD4(?:?):?; virtual;//vD4//0050FEB4
    procedure vD8; virtual;//vD8//0050FFC0
    //procedure vDC(?:?); virtual;//vDC//00510C68
    //procedure vE0(?:?; ?:?; ?:?); virtual;//vE0//00511EE8
    //procedure vE4(?:?; ?:?; ?:?); virtual;//vE4//00511E2C
    //procedure vE8(?:?; ?:?; ?:?); virtual;//vE8//005126AC
    //function vEC:?; virtual;//vEC//00510E5C
    //function vF0(?:?; ?:?):?; virtual;//vF0//005113F8
    //function vF4(?:?; ?:?):?; virtual;//vF4//0051149C
    //function vF8(?:?):?; virtual;//vF8//00511578
    //function vFC:?; virtual;//vFC//005120EC
    //function v100:?; virtual;//v100//005121EC
    //function v104:?; virtual;//v104//00512304
    //function v108(?:?):?; virtual;//v108//00511530
    //function v10C:?; virtual;//v10C//00512A38
    //function v110(?:?):?; virtual;//v110//00511638
    //function v114:?; virtual;//v114//00511728
    procedure v118; virtual;//v118//00510888
    procedure v11C; virtual;//v11C//00511838
    procedure Reset; virtual;//v120//00512460
    //procedure v124(?:?); virtual;//v124//0051191C
    //procedure v128(?:?); virtual;//v128//00512664
    procedure SetColorMap(Value:TCustomActionBarColorMap); virtual;//v12C//00512980
    //procedure v130(?:?); virtual;//v130//005119CC
    //procedure v134(?:?); virtual;//v134//00511CA8
    procedure SetPersistentHotKeys(Value:Boolean); virtual;//v138//00511DF8
    procedure SetSpacing(Value:Integer); virtual;//v13C//00511D54
    //function v140:?; virtual;//v140//00510D68
    procedure v144; virtual;//v144//005127E8
    //function v148:?; virtual;//v148//0051331C
    procedure WMPaint(Message:TWMPaint); message WM_PAINT;//00512934
    //procedure WMContextMenu(?:?); message WM_CONTEXTMENU;//00512568
    //procedure CMEnabledChanged(?:?); message CM_ENABLEDCHANGED;//0050FE8C
    //procedure CMMouseLeave(?:?); message CM_MOUSELEAVE;//0051328C
    //procedure CMWinIniChange(?:?); message CM_WININICHANGE;//00513200
    //procedure sub_00512444(?:?); dynamic;//00512444
    //procedure sub_00510C18(?:?); dynamic;//00510C18
    //procedure sub_004CBB18(?:?; ?:?; ?:?); dynamic;//00510AA0
    procedure sub_004CC91C; dynamic;//005124E0
    //procedure sub_004CBAC0(?:?; ?:?; ?:?; ?:?; ?:?); dynamic;//00510A34
    //procedure sub_004CC67C(?:?); dynamic;//005132D8
  end;
  TCustomActionControl = class(TGraphicControl)
  public
    FActionBar:TCustomActionBar;//f168
    FActionClient:TActionClientItem;//f16C
    FDropPoint:Boolean;//f170
    FGlyphLayout:TButtonLayout;//f171
    FGlyphPos:TPoint;//f172
    FMargins:TRect;//f17A
    FSelected:Boolean;//f18A
    FSmallIcon:Boolean;//f18B
    FSpacing:Integer;//f18C
    FTextBounds:TRect;//f190
    FTransparent:Boolean;//f1A0
    destructor Destroy; virtual;//00513434
    constructor Create(AOwner:TComponent); virtual;//v2C//00513370
    //function v3C:?; virtual;//v3C//005153C4
    procedure v78; virtual;//v78//005153F8
    procedure v8C; virtual;//v8C//005143A8
    procedure v90; virtual;//v90//005135CC
    //procedure v94(?:?; ?:?); virtual;//v94//005156D8
    //function v98:?; virtual;//v98//005152D0
    //function v9C:?; virtual;//v9C//00515328
    //procedure vA0(?:?); virtual;//vA0//00514D70
    //procedure vA4(?:?); virtual;//vA4//00513B5C
    //procedure vA8(?:?); virtual;//vA8//00513C20
    //procedure vAC(?:?); virtual;//vAC//00513A2C
    //procedure vB0(?:TRect; ?:?; ?:?); virtual;//vB0//00514200
    //procedure vB4(?:TRect; ?:?; ?:?; ?:?; ?:?); virtual;//vB4//00514278
    //procedure vB8(?:?); virtual;//vB8//00513F84
    //procedure vBC(?:?); virtual;//vBC//00514858
    //function vC0:?; virtual;//vC0//00515370
    //function vC4:?; virtual;//vC4//00514368
    //function vC8:?; virtual;//vC8//005152A0
    procedure vCC; virtual;//vCC//005147DC
    //procedure vD0(?:?); virtual;//vD0//0051497C
    //procedure vD4(?:?); virtual;//vD4//00514C58
    //procedure vD8(?:?); virtual;//vD8//00514AB8
    procedure vDC; virtual;//vDC//00515568
    procedure vE0; virtual;//vE0//00514CC8
    //procedure WMSetText(?:?); message WM_SETTEXT;//00515264
    //procedure WMContextMenu(?:?); message WM_CONTEXTMENU;//005159C8
    //procedure CMFontChanged(?:?); message CM_FONTCHANGED;//005138C8
    //procedure CMTextChanged(?:?); message CM_TEXTCHANGED;//00515440
    //procedure CMDesignHitTest(?:?); message CM_DESIGNHITTEST;//00514D00
    //procedure CMHintShow(?:?); message CM_HINTSHOW;//00514D1C
    //procedure sub_00514B34(?:?); dynamic;//00514B34
    //procedure sub_00515AE4(?:?); dynamic;//00515AE4
    //procedure sub_004CBB18(?:?; ?:?; ?:?); dynamic;//00514E0C
    //procedure sub_004CBB5C(?:?); dynamic;//005151C0
    //procedure sub_004CBAC0(?:?; ?:?; ?:?; ?:?; ?:?); dynamic;//00514E4C
    //procedure sub_004CC67C(?:?); dynamic;//00513968
    procedure sub_004CCCAC; dynamic;//005138FC
    procedure sub_004CB99C; dynamic;//00513490
  end;
  TXToolDockForm = class(TToolDockForm)
  public
    //procedure CMDialogChar(?:?); message CM_DIALOGCHAR;//0050A50C
  end;
  TActionBarStyleList = class(TStringList)
  end;
    //procedure CMDialogChar(?:?);//0050A50C
    procedure sub_0050A550(?:TCustomActionBar);//0050A550
    constructor sub_0050A588;//0050A588
    destructor Destroy;//0050A6AC
    //procedure sub_0050A720(?:?);//0050A720
    //function sub_0050A7C8(?:TCustomActionManager):?;//0050A7C8
    function StyleNameStored:Boolean;//0050A800
    procedure DefineProperties(Filer:TFiler);//0050A848
    //function sub_0050A8A4(?:TCustomActionManager; ?:?; ?:?):?;//0050A8A4
    //function sub_0050A970(?:TCustomActionManager; ?:?; ?:TActionBars):?;//0050A970
    procedure sub_0050AA18(?:TCustomActionManager; ?:TFileName);//0050AA18
    //procedure sub_0050AB28(?:?; ?:TFileStream);//0050AB28
    procedure sub_0050AC24;//0050AC24
    //procedure sub_0050AD1C(?:?; ?:?);//0050AD1C
    procedure sub_0050AF6C(?:TCustomActionManager; ?:TFileName);//0050AF6C
    procedure sub_0050B078(?:TCustomActionManager; ?:TFileStream);//0050B078
    procedure sub_0050B0F0(?:TCustomActionManager; ?:TActionBars);//0050B0F0
    procedure SetImages(Value:TCustomImageList);//0050B1C0
    //function sub_0050B4A0(?:?):?;//0050B4A0
    procedure sub_0050B6C8;//0050B6C8
    procedure sub_0050B6F8;//0050B6F8
    procedure sub_0050B744;//0050B744
    procedure sub_0050B790;//0050B790
    procedure sub_0050B7DC;//0050B7DC
    procedure AfterConstruction;//0050BA30
    //procedure sub_0050BB98(?:?);//0050BB98
    //procedure sub_0050BCC0(?:?);//0050BCC0
    //function sub_0050BCF4(?:TActionListItem):?;//0050BCF4
    //function sub_0050BDB4(?:?):?;//0050BDB4
    //function sub_0050BDD0(?:TActionListCollection; ?:?):?;//0050BDD0
    //function sub_0050BDF4(?:TActionBars; ?:?):?;//0050BDF4
    //function sub_0050BE18(?:TCollection):?;//0050BE18
    //function sub_0050BE40(?:?; ?:?):?;//0050BE40
    //procedure sub_0050BE84(?:?);//0050BE84
    //procedure sub_0050BF14(?:AnsiString; ?:?; ?:?);//0050BF14
    //function sub_0050C09C(?:TActionClientsCollection; ?:?):?;//0050C09C
    procedure AfterConstruction;//0050C5F8
    //procedure sub_0050C614(?:?);//0050C614
    //procedure sub_0050C668(?:TActionClientsCollection; ?:TActionClientsCollection; ?:?; ?:?; ?:?);//0050C668
    constructor sub_0050C7E4;//0050C7E4
    destructor Destroy;//0050C86C
    //procedure sub_0050C964(?:?);//0050C964
    procedure sub_0050CA74(?:TActionClient);//0050CA74
    procedure sub_0050CA88;//0050CA88
    //procedure sub_0050CA94(?:?);//0050CA94
    //function sub_0050CB98(?:TActionClient):?;//0050CB98
    //function sub_0050CBCC(?:TActionClientItem):?;//0050CBCC
    //function sub_0050CCC4(?:TActionClient):?;//0050CCC4
    //function sub_0050CCE0(?:TActionClient):?;//0050CCE0
    //function sub_0050CD20(?:?):?;//0050CD20
    //function sub_0050CDEC(?:TActionClientItem; ?:TActionClientItem):?;//0050CDEC
    procedure sub_0050CED4;//0050CED4
    procedure SetChangesAllowed(Value:TChangesAllowedSet);//0050D1A4
    procedure SetColor(Value:TColor);//0050D1C8
    procedure SetVisible(Value:Boolean);//0050D210
    procedure sub_0050D23C;//0050D23C
    constructor sub_0050D27C;//0050D27C
    //procedure sub_0050D2CC(?:?);//0050D2CC
    procedure sub_0050D320;//0050D320
    //procedure sub_0050D4C0(?:?);//0050D4C0
    //constructor sub_0050D4F8(?:?);//0050D4F8
    //function sub_0050D564(?:TActionBars):?;//0050D564
    //function sub_0050D5D0(?:TActionBars; ?:?):?;//0050D5D0
    //procedure sub_0050D620(?:?; ?:?);//0050D620
    //function sub_0050D750(?:?):?;//0050D750
    //procedure sub_0050D76C(?:?);//0050D76C
    //function sub_0050D884(?:TActionClients; ?:?):?;//0050D884
    //procedure sub_0050D8A8(?:?; ?:?);//0050D8A8
    //procedure sub_0050DC1C(?:TActionClients; ?:TActionClients; ?:?);//0050DC1C
    //function sub_0050DCD0(?:?):?;//0050DCD0
    //procedure sub_0050DD1C(?:?);//0050DD1C
    //function sub_0050DD40(?:?):?;//0050DD40
    //function sub_0050DE44:?;//0050DE44
    //function sub_0050DF1C:?;//0050DF1C
    //function sub_0050DF78:?;//0050DF78
    //function sub_0050DFBC:?;//0050DFBC
    //function sub_0050E018:?;//0050E018
    //function sub_0050E074:?;//0050E074
    //function sub_0050E0C0:?;//0050E0C0
    //function sub_0050E10C:?;//0050E10C
    //procedure sub_0050E154(?:?);//0050E154
    //procedure sub_0050E180(?:?);//0050E180
    //procedure sub_0050E1C4(?:?);//0050E1C4
    //procedure sub_0050E1F4(?:?);//0050E1F4
    //procedure sub_0050E21C(?:?);//0050E21C
    //procedure sub_0050E250(?:?);//0050E250
    //procedure sub_0050E27C(?:?; ?:?);//0050E27C
    //procedure sub_0050E2B0(?:?);//0050E2B0
    //procedure sub_0050E2DC(?:?);//0050E2DC
    constructor sub_0050E308;//0050E308
    destructor Destroy;//0050E398
    //procedure sub_0050E3E0(?:?; ?:?);//0050E3E0
    //procedure sub_0050E56C(?:?);//0050E56C
    procedure sub_0050E6DC;//0050E6DC
    //procedure sub_0050E730(?:?; ?:?);//0050E730
    //function sub_0050E760(?:TActionClientItem):?;//0050E760
    procedure sub_0050E77C;//0050E77C
    //procedure sub_0050E844(?:?);//0050E844
    //function sub_0050E900(?:?; ?:?):?;//0050E900
    //function sub_0050E94C(?:TActionClientItem):?;//0050E94C
    procedure sub_0050E9B4;//0050E9B4
    procedure sub_0050EA64;//0050EA64
    procedure sub_0050EA88(?:TActionClientItem);//0050EA88
    //procedure sub_0050ED74(?:?; ?:?);//0050ED74
    //procedure sub_0050EE20(?:?);//0050EE20
    //procedure sub_0050F0D4(?:?);//0050F0D4
    //procedure sub_0050F1A8(?:?);//0050F1A8
    //procedure sub_0050F240(?:?);//0050F240
    //function sub_0050F28C(?:TActionClientItem):?;//0050F28C
    destructor Destroy;//0050F46C
    //function sub_0050F4A8(?:TActionDragObject; ?:?):?;//0050F4A8
    //function sub_0050F4F4(?:TActionDragObject):?;//0050F4F4
    //procedure sub_0050F510(?:?; ?:?; ?:?; ?:?);//0050F510
    //procedure sub_0050F5BC(?:?; ?:?);//0050F5BC
    //procedure sub_0050F618(?:?; ?:?);//0050F618
    procedure sub_0050F650(?:TCustomActionBarColorMap; ?:TCustomActionBar);//0050F650
    constructor sub_0050F6A8;//0050F6A8
    destructor Destroy;//0050F70C
    //function GetDisabledColor:?;//0050F748
    //function GetUnusedColor:?;//0050F780
    //procedure sub_0050F7BC(?:?; ?:?);//0050F7BC
    procedure sub_0050F81C(?:TCustomActionBarColorMap; ?:TActionToolBar);//0050F81C
    procedure SetColor(Value:TColor);//0050F864
    procedure SetFontColor(Value:TColor);//0050F900
    procedure sub_0050F978;//0050F978
    //procedure sub_0050F98C(?:TXPColorMap; ?:?; ?:TColor);//0050F98C
    //procedure sub_0050F9D4(?:?);//0050F9D4
    constructor Create(AOwner:TComponent);//0050FB28
    destructor Destroy;//0050FC28
    procedure AlignControls(AControl:TControl; var Rect:TRect);//0050FC80
    procedure sub_0050FCD4;//0050FCD4
    //function sub_0050FCE0(?:TCustomActionBar; ?:?; ?:?; ?:?):?;//0050FCE0
    procedure sub_0050FDF4;//0050FDF4
    //procedure CMEnabledChanged(?:?);//0050FE8C
    //function sub_0050FEB4(?:?):?;//0050FEB4
    procedure sub_0050FFC0;//0050FFC0
    //function sub_005100DC(?:?; ?:?):?;//005100DC
    //procedure sub_0051028C(?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?);//0051028C
    procedure sub_00510888;//00510888
    //procedure sub_004CBAC0(?:?; ?:?; ?:?; ?:?; ?:?);//00510A34
    //procedure sub_004CBB18(?:?; ?:?; ?:?);//00510AA0
    //procedure sub_00510C18(?:?);//00510C18
    //procedure sub_00510C68(?:?);//00510C68
    //function sub_00510C9C(?:TCustomActionMainMenuBar; ?:?):?;//00510C9C
    //function sub_00510D68:?;//00510D68
    //function sub_00510DB8(?:?; ?:?):?;//00510DB8
    //function sub_00510E5C:?;//00510E5C
    //function sub_00510EAC(?:?; ?:?):?;//00510EAC
    //function sub_00511000(?:TCustomActionMenuBar):?;//00511000
    //function sub_0051105C(?:TCustomActionDockBar):?;//0051105C
    //function sub_005110AC(?:TPoint; ?:?):?;//005110AC
    //function sub_00511158(?:TCustomActionBar; ?:?):?;//00511158
    //function sub_005113A0(?:TCustomActionDockBar; ?:TActionClientItem):?;//005113A0
    //function sub_005113F8(?:?; ?:?):?;//005113F8
    //function sub_0051149C(?:?; ?:?):?;//0051149C
    //function sub_00511530(?:?):?;//00511530
    //function sub_00511578(?:?):?;//00511578
    //function sub_00511638(?:?):?;//00511638
    //function sub_00511668(?:TCustomActionBar):?;//00511668
    //function sub_005116BC(?:TCustomActionBar):?;//005116BC
    //function sub_00511728:?;//00511728
    procedure Loaded;//00511768
    procedure Notification(AComponent:TComponent; Operation:TOperation);//005117C4
    procedure sub_00511838;//00511838
    //procedure sub_00511870(?:?);//00511870
    //procedure sub_0051191C(?:?);//0051191C
    //procedure sub_005119CC(?:?);//005119CC
    //procedure sub_00511CA8(?:?);//00511CA8
    procedure SetSpacing(Value:Integer);//00511D54
    procedure SetActionManager(Value:TCustomActionManager);//00511D88
    procedure SetPersistentHotKeys(Value:Boolean);//00511DF8
    //procedure sub_00511E2C(?:?; ?:?; ?:?);//00511E2C
    //procedure sub_00511EE8(?:?; ?:?; ?:?);//00511EE8
    //function sub_0051204C(?:TCustomActionPopupMenu; ?:TActionClientItem):?;//0051204C
    procedure SetBiDiMode(Value:TBiDiMode);//00512098
    //function sub_005120EC:?;//005120EC
    //function sub_005121EC:?;//005121EC
    //function sub_00512304:?;//00512304
    procedure SetHorzMargin(Value:Integer);//00512344
    procedure SetVertMargin(Value:Integer);//00512384
    procedure SetHorzSeparator(Value:Boolean);//005123C4
    //procedure sub_00512404(?:TCustomActionToolBar; ?:?);//00512404
    //procedure sub_00512444(?:?);//00512444
    procedure Reset;//00512460
    procedure sub_004CC91C;//005124E0
    //procedure WMContextMenu(?:?);//00512568
    //function sub_00512624(?:TCustomActionBar):?;//00512624
    //procedure sub_00512664(?:?);//00512664
    //procedure sub_005126AC(?:?; ?:?; ?:?);//005126AC
    procedure sub_005127E8;//005127E8
    procedure SetBounds(ALeft:Integer; ATop:Integer; AWidth:Integer; AHeight:Integer);//00512858
    procedure WMPaint(Message:TWMPaint);//00512934
    procedure SetColorMap(Value:TCustomActionBarColorMap);//00512980
    //function sub_00512A38:?;//00512A38
    //function sub_00512A60(?:TCustomActionBar):?;//00512A60
    //procedure sub_00512AF4(?:?);//00512AF4
    //procedure CMWinIniChange(?:?);//00513200
    //function sub_00513228(?:TCustomActionBar):?;//00513228
    //function GetColorMap:?;//00513240
    //procedure CMMouseLeave(?:?);//0051328C
    //procedure sub_004CC67C(?:?);//005132D8
    //function sub_0051331C:?;//0051331C
    constructor Create(AOwner:TComponent);//00513370
    destructor Destroy;//00513434
    procedure sub_004CB99C;//00513490
    //function sub_005134BC(?:TCustomActionControl):?;//005134BC
    //function sub_00513524(?:TCustomActionControl):?;//00513524
    //function sub_0051358C(?:TCustomActionControl; ?:?):?;//0051358C
    procedure sub_005135CC;//005135CC
    //procedure CMFontChanged(?:?);//005138C8
    procedure sub_004CCCAC;//005138FC
    //procedure sub_004CC67C(?:?);//00513968
    //procedure sub_00513A2C(?:?);//00513A2C
    //procedure sub_00513B5C(?:?);//00513B5C
    //procedure sub_00513C20(?:?);//00513C20
    //procedure sub_00513F84(?:?);//00513F84
    //procedure sub_00514200(?:TRect; ?:?; ?:?);//00514200
    //procedure sub_00514278(?:TRect; ?:?; ?:?; ?:?; ?:?);//00514278
    //function sub_00514368:?;//00514368
    procedure sub_005143A8;//005143A8
    procedure sub_005147DC;//005147DC
    //procedure sub_005147F4(?:TCustomActionControl; ?:?);//005147F4
    //procedure sub_00514858(?:?);//00514858
    //procedure sub_0051497C(?:?);//0051497C
    //procedure sub_00514AB8(?:?);//00514AB8
    procedure sub_00514AF8(?:TCustomActionControl);//00514AF8
    //procedure sub_00514B34(?:?);//00514B34
    //procedure sub_00514B94(?:TCustomMenuItem; ?:?);//00514B94
    //procedure sub_00514C04(?:TCustomActionControl; ?:?);//00514C04
    //procedure sub_00514C58(?:?);//00514C58
    procedure sub_00514CC8;//00514CC8
    //procedure CMDesignHitTest(?:?);//00514D00
    //procedure CMHintShow(?:?);//00514D1C
    //procedure sub_00514D70(?:?);//00514D70
    procedure sub_00514D94(?:TCustomActionControl);//00514D94
    //procedure sub_004CBB18(?:?; ?:?; ?:?);//00514E0C
    //procedure sub_004CBAC0(?:?; ?:?; ?:?; ?:?; ?:?);//00514E4C
    procedure sub_00515068(?:TCustomActionControl);//00515068
    //procedure sub_004CBB5C(?:?);//005151C0
    //function sub_00515218(?:TCustomActionControl):?;//00515218
    //procedure WMSetText(?:?);//00515264
    //function sub_005152A0:?;//005152A0
    //function sub_005152D0:?;//005152D0
    //function sub_00515328:?;//00515328
    //function sub_00515370:?;//00515370
    //function sub_005153C4:?;//005153C4
    procedure sub_005153F8;//005153F8
    //function sub_0051541C(?:TCustomActionControl):?;//0051541C
    //procedure CMTextChanged(?:?);//00515440
    procedure sub_00515474(?:TCustomActionControl);//00515474
    procedure sub_00515568;//00515568
    //procedure sub_005156D8(?:?; ?:?);//005156D8
    //procedure sub_00515984(?:?; ?:?);//00515984
    //procedure WMContextMenu(?:?);//005159C8
    //procedure sub_00515A7C(?:TCustomActionControl; ?:?);//00515A7C
    //procedure sub_00515AE4(?:?);//00515AE4
    //function sub_00515B18(?:?; ?:?):?;//00515B18

implementation

//0050A50C
{*procedure TXToolDockForm.CMDialogChar(?:?);
begin
 0050A50C    push        ebp
 0050A50D    mov         ebp,esp
 0050A50F    add         esp,0FFFFFFF8
 0050A512    mov         dword ptr [ebp-8],edx
 0050A515    mov         dword ptr [ebp-4],eax
 0050A518    mov         eax,[0055B4C8];^Application:TApplication
 0050A51D    mov         eax,dword ptr [eax]
 0050A51F    cmp         dword ptr [eax+44],0;TApplication.FMainForm:TForm
>0050A523    je          0050A537
 0050A525    mov         edx,dword ptr [ebp-8]
 0050A528    mov         eax,[0055B4C8];^Application:TApplication
 0050A52D    mov         eax,dword ptr [eax]
 0050A52F    mov         eax,dword ptr [eax+44];TApplication.FMainForm:TForm
 0050A532    mov         ecx,dword ptr [eax]
 0050A534    call        dword ptr [ecx-14];TObject.Dispatch
 0050A537    mov         eax,dword ptr [ebp-8]
 0050A53A    cmp         dword ptr [eax+0C],0
>0050A53E    jne         0050A54B
 0050A540    mov         edx,dword ptr [ebp-8]
 0050A543    mov         eax,dword ptr [ebp-4]
 0050A546    call        TWinControl.CMDialogChar
 0050A54B    pop         ecx
 0050A54C    pop         ecx
 0050A54D    pop         ebp
 0050A54E    ret
end;*}

//0050A550
procedure sub_0050A550(?:TCustomActionBar);
begin
{*
 0050A550    push        ebp
 0050A551    mov         ebp,esp
 0050A553    push        ecx
 0050A554    mov         dword ptr [ebp-4],eax
 0050A557    cmp         dword ptr ds:[541A9C],0;gvar_00541A9C
>0050A55E    je          0050A585
 0050A560    cmp         dword ptr [ebp-4],0
>0050A564    je          0050A578
 0050A566    cmp         dword ptr [ebp-4],0
>0050A56A    je          0050A585
 0050A56C    mov         eax,dword ptr [ebp-4]
 0050A56F    cmp         byte ptr [eax+224],0;TCustomActionMenuBar.FDesignable:Boolean
>0050A576    je          0050A585
 0050A578    mov         edx,dword ptr [ebp-4]
 0050A57B    mov         eax,[00541A9C];0x0 gvar_00541A9C
 0050A580    mov         ecx,dword ptr [eax]
 0050A582    call        dword ptr [ecx+14]
 0050A585    pop         ecx
 0050A586    pop         ebp
 0050A587    ret
*}
end;

//0050A588
constructor sub_0050A588;
begin
{*
 0050A588    push        ebp
 0050A589    mov         ebp,esp
 0050A58B    add         esp,0FFFFFFE0
 0050A58E    push        ebx
 0050A58F    xor         ebx,ebx
 0050A591    mov         dword ptr [ebp-1C],ebx
 0050A594    mov         dword ptr [ebp-20],ebx
 0050A597    test        dl,dl
>0050A599    je          0050A5A3
 0050A59B    add         esp,0FFFFFFF0
 0050A59E    call        @ClassCreate
 0050A5A3    mov         dword ptr [ebp-0C],ecx
 0050A5A6    mov         byte ptr [ebp-5],dl
 0050A5A9    mov         dword ptr [ebp-4],eax
 0050A5AC    xor         eax,eax
 0050A5AE    push        ebp
 0050A5AF    push        50A683
 0050A5B4    push        dword ptr fs:[eax]
 0050A5B7    mov         dword ptr fs:[eax],esp
 0050A5BA    mov         ecx,dword ptr [ebp-0C]
 0050A5BD    xor         edx,edx
 0050A5BF    mov         eax,dword ptr [ebp-4]
 0050A5C2    call        004DAC28
 0050A5C7    mov         eax,dword ptr [ebp-4]
 0050A5CA    and         byte ptr [eax+24],0FE;TCustomActionManager.FComponentStyle:TComponentStyle
 0050A5CE    mov         eax,dword ptr [ebp-4]
 0050A5D1    call        0050A7C8
 0050A5D6    mov         edx,dword ptr [ebp-4]
 0050A5D9    mov         dword ptr [edx+6C],eax;TCustomActionManager.FActionBars:TActionBars
 0050A5DC    mov         dl,1
 0050A5DE    mov         eax,[00476078];TStringList
 0050A5E3    call        TObject.Create;TStringList.Create
 0050A5E8    mov         edx,dword ptr [ebp-4]
 0050A5EB    mov         dword ptr [edx+94],eax;TCustomActionManager.FPrioritySchedule:TStringList
 0050A5F1    mov         eax,dword ptr [ebp-4]
 0050A5F4    mov         eax,dword ptr [eax+94];TCustomActionManager.FPrioritySchedule:TStringList
 0050A5FA    mov         edx,dword ptr ds:[541A98];^gvar_0050A338
 0050A600    mov         ecx,dword ptr [eax]
 0050A602    call        dword ptr [ecx+2C];TStringList.sub_0047AEF0
 0050A605    mov         eax,dword ptr [ebp-4]
 0050A608    mov         eax,dword ptr [eax+94];TCustomActionManager.FPrioritySchedule:TStringList
 0050A60E    mov         edx,dword ptr [eax]
 0050A610    call        dword ptr [edx+14];TStringList.sub_0047B778
 0050A613    dec         eax
 0050A614    test        eax,eax
>0050A616    jl          0050A668
 0050A618    inc         eax
 0050A619    mov         dword ptr [ebp-14],eax
 0050A61C    mov         dword ptr [ebp-10],0
 0050A623    mov         eax,dword ptr [ebp-4]
 0050A626    mov         eax,dword ptr [eax+94];TCustomActionManager.FPrioritySchedule:TStringList
 0050A62C    mov         dword ptr [ebp-18],eax
 0050A62F    lea         ecx,[ebp-20]
 0050A632    mov         edx,dword ptr [ebp-10]
 0050A635    mov         eax,dword ptr [ebp-18]
 0050A638    call        0047A610
 0050A63D    mov         edx,dword ptr [ebp-20]
 0050A640    lea         ecx,[ebp-1C]
 0050A643    mov         eax,dword ptr [ebp-18]
 0050A646    call        0047A830
 0050A64B    mov         eax,dword ptr [ebp-1C]
 0050A64E    call        StrToInt
 0050A653    mov         ecx,eax
 0050A655    mov         edx,dword ptr [ebp-10]
 0050A658    mov         eax,dword ptr [ebp-18]
 0050A65B    mov         ebx,dword ptr [eax]
 0050A65D    call        dword ptr [ebx+24];TStringList.sub_0047BA30
 0050A660    inc         dword ptr [ebp-10]
 0050A663    dec         dword ptr [ebp-14]
>0050A666    jne         0050A623
 0050A668    xor         eax,eax
 0050A66A    pop         edx
 0050A66B    pop         ecx
 0050A66C    pop         ecx
 0050A66D    mov         dword ptr fs:[eax],edx
 0050A670    push        50A68A
 0050A675    lea         eax,[ebp-20]
 0050A678    mov         edx,2
 0050A67D    call        @LStrArrayClr
 0050A682    ret
>0050A683    jmp         @HandleFinally
>0050A688    jmp         0050A675
 0050A68A    mov         eax,dword ptr [ebp-4]
 0050A68D    cmp         byte ptr [ebp-5],0
>0050A691    je          0050A6A2
 0050A693    call        @AfterConstruction
 0050A698    pop         dword ptr fs:[0]
 0050A69F    add         esp,0C
 0050A6A2    mov         eax,dword ptr [ebp-4]
 0050A6A5    pop         ebx
 0050A6A6    mov         esp,ebp
 0050A6A8    pop         ebp
 0050A6A9    ret
*}
end;

//0050A6AC
destructor TCustomActionManager.Destroy;
begin
{*
 0050A6AC    push        ebp
 0050A6AD    mov         ebp,esp
 0050A6AF    add         esp,0FFFFFFF8
 0050A6B2    call        @BeforeDestruction
 0050A6B7    mov         byte ptr [ebp-5],dl
 0050A6BA    mov         dword ptr [ebp-4],eax
 0050A6BD    mov         eax,dword ptr [ebp-4]
 0050A6C0    mov         eax,dword ptr [eax+94]
 0050A6C6    call        TObject.Free
 0050A6CB    mov         eax,dword ptr [ebp-4]
 0050A6CE    mov         eax,dword ptr [eax+6C]
 0050A6D1    call        TObject.Free
 0050A6D6    mov         eax,dword ptr [ebp-4]
 0050A6D9    mov         eax,dword ptr [eax+88]
 0050A6DF    call        TObject.Free
 0050A6E4    mov         eax,dword ptr [ebp-4]
 0050A6E7    cmp         dword ptr [eax+84],0
>0050A6EE    je          0050A6FE
 0050A6F0    mov         eax,dword ptr [ebp-4]
 0050A6F3    mov         eax,dword ptr [eax+84]
 0050A6F9    call        TObject.Free
 0050A6FE    mov         dl,byte ptr [ebp-5]
 0050A701    and         dl,0FC
 0050A704    mov         eax,dword ptr [ebp-4]
 0050A707    call        TCustomActionList.Destroy
 0050A70C    cmp         byte ptr [ebp-5],0
>0050A710    jle         0050A71A
 0050A712    mov         eax,dword ptr [ebp-4]
 0050A715    call        @ClassDestroy
 0050A71A    pop         ecx
 0050A71B    pop         ecx
 0050A71C    pop         ebp
 0050A71D    ret
*}
end;

//0050A720
{*procedure sub_0050A720(?:?);
begin
 0050A720    push        ebp
 0050A721    mov         ebp,esp
 0050A723    add         esp,0FFFFFFF8
 0050A726    mov         dword ptr [ebp-8],edx
 0050A729    mov         dword ptr [ebp-4],eax
 0050A72C    mov         edx,dword ptr [ebp-8]
 0050A72F    mov         eax,dword ptr [ebp-4]
 0050A732    call        004790A8
 0050A737    mov         eax,dword ptr [ebp-8]
 0050A73A    mov         edx,dword ptr ds:[5088A0];TCustomActionManager
 0050A740    call        @IsClass
 0050A745    test        al,al
>0050A747    je          0050A7C4
 0050A749    mov         eax,dword ptr [ebp-8]
 0050A74C    mov         edx,dword ptr [eax+6C]
 0050A74F    mov         eax,dword ptr [ebp-4]
 0050A752    mov         eax,dword ptr [eax+6C];TCustomActionManager.FActionBars:TActionBars
 0050A755    mov         ecx,dword ptr [eax]
 0050A757    call        dword ptr [ecx+8];TActionBars.sub_00479958
 0050A75A    mov         eax,dword ptr [ebp-4]
 0050A75D    add         eax,8C;TCustomActionManager.FFileName:TFileName
 0050A762    mov         edx,dword ptr [ebp-8]
 0050A765    mov         edx,dword ptr [edx+8C]
 0050A76B    call        @LStrAsg
 0050A770    mov         eax,dword ptr [ebp-4]
 0050A773    cmp         dword ptr [eax+38],0;TCustomActionManager.FImages:TCustomImageList
>0050A777    je          0050A78A
 0050A779    mov         eax,dword ptr [ebp-8]
 0050A77C    mov         edx,dword ptr [eax+38]
 0050A77F    mov         eax,dword ptr [ebp-4]
 0050A782    mov         eax,dword ptr [eax+38];TCustomActionManager.FImages:TCustomImageList
 0050A785    mov         ecx,dword ptr [eax]
 0050A787    call        dword ptr [ecx+8];TCustomImageList.sub_004DD3BC
 0050A78A    mov         eax,dword ptr [ebp-8]
 0050A78D    mov         edx,dword ptr [eax+94]
 0050A793    mov         eax,dword ptr [ebp-4]
 0050A796    mov         eax,dword ptr [eax+94];TCustomActionManager.FPrioritySchedule:TStringList
 0050A79C    mov         ecx,dword ptr [eax]
 0050A79E    call        dword ptr [ecx+8];TStringList.sub_0047A184
 0050A7A1    mov         eax,dword ptr [ebp-8]
 0050A7A4    cmp         dword ptr [eax+84],0
>0050A7AB    je          0050A7C4
 0050A7AD    mov         eax,dword ptr [ebp-8]
 0050A7B0    call        TActionManager.GetLinkedActionLists
 0050A7B5    push        eax
 0050A7B6    mov         eax,dword ptr [ebp-4]
 0050A7B9    call        TActionManager.GetLinkedActionLists
 0050A7BE    pop         edx
 0050A7BF    mov         ecx,dword ptr [eax]
 0050A7C1    call        dword ptr [ecx+8]
 0050A7C4    pop         ecx
 0050A7C5    pop         ecx
 0050A7C6    pop         ebp
 0050A7C7    ret
end;*}

//0050A7C8
{*function sub_0050A7C8(?:TCustomActionManager):?;
begin
 0050A7C8    push        ebp
 0050A7C9    mov         ebp,esp
 0050A7CB    add         esp,0FFFFFFF8
 0050A7CE    push        esi
 0050A7CF    mov         dword ptr [ebp-4],eax
 0050A7D2    mov         eax,dword ptr [ebp-4]
 0050A7D5    mov         si,0FFEE
 0050A7D9    call        @CallDynaInst;TCustomActionManager.sub_0050B7DC
 0050A7DE    push        eax
 0050A7DF    mov         eax,dword ptr [ebp-4]
 0050A7E2    mov         si,0FFEF
 0050A7E6    call        @CallDynaInst;TCustomActionManager.sub_0050B790
 0050A7EB    mov         ecx,dword ptr [ebp-4]
 0050A7EE    mov         dl,1
 0050A7F0    call        0050D4F8
 0050A7F5    mov         dword ptr [ebp-8],eax
 0050A7F8    mov         eax,dword ptr [ebp-8]
 0050A7FB    pop         esi
 0050A7FC    pop         ecx
 0050A7FD    pop         ecx
 0050A7FE    pop         ebp
 0050A7FF    ret
end;*}

//0050A800
function StyleNameStored:Boolean;
begin
{*
 0050A800    push        ebp
 0050A801    mov         ebp,esp
 0050A803    push        ecx
 0050A804    mov         eax,dword ptr [ebp+8]
 0050A807    mov         eax,dword ptr [eax-4]
 0050A80A    cmp         dword ptr [eax+20],0
>0050A80E    je          0050A831
 0050A810    mov         eax,dword ptr [ebp+8]
 0050A813    mov         eax,dword ptr [eax-8]
 0050A816    mov         eax,dword ptr [eax+0C8]
 0050A81C    mov         edx,dword ptr [ebp+8]
 0050A81F    mov         edx,dword ptr [edx-4]
 0050A822    mov         edx,dword ptr [edx+20]
 0050A825    cmp         eax,dword ptr [edx+0C8]
 0050A82B    setne       byte ptr [ebp-1]
>0050A82F    jmp         0050A842
 0050A831    mov         eax,dword ptr [ebp+8]
 0050A834    mov         eax,dword ptr [eax-8]
 0050A837    cmp         dword ptr [eax+0C8],0
 0050A83E    setne       byte ptr [ebp-1]
 0050A842    mov         al,byte ptr [ebp-1]
 0050A845    pop         ecx
 0050A846    pop         ebp
 0050A847    ret
*}
end;

//0050A848
procedure TCustomActionManager.DefineProperties(Filer:TFiler);
begin
{*
 0050A848    push        ebp
 0050A849    mov         ebp,esp
 0050A84B    add         esp,0FFFFFFF8
 0050A84E    push        ebx
 0050A84F    mov         dword ptr [ebp-4],edx
 0050A852    mov         dword ptr [ebp-8],eax
 0050A855    mov         edx,dword ptr [ebp-4]
 0050A858    mov         eax,dword ptr [ebp-8]
 0050A85B    call        TComponent.DefineProperties
 0050A860    mov         eax,dword ptr [ebp-8]
 0050A863    push        eax
 0050A864    push        50B8CC;TCustomActionManager.ReadStyleProp
 0050A869    mov         eax,dword ptr [ebp-8]
 0050A86C    push        eax
 0050A86D    push        50B9B0;TCustomActionManager.WriteStyleProp
 0050A872    push        ebp
 0050A873    call        StyleNameStored
 0050A878    pop         ecx
 0050A879    mov         ecx,eax
 0050A87B    mov         edx,50A898;'StyleName'
 0050A880    mov         eax,dword ptr [ebp-4]
 0050A883    mov         ebx,dword ptr [eax]
 0050A885    call        dword ptr [ebx+4]
 0050A888    pop         ebx
 0050A889    pop         ecx
 0050A88A    pop         ecx
 0050A88B    pop         ebp
 0050A88C    ret
*}
end;

//0050A8A4
{*function sub_0050A8A4(?:TCustomActionManager; ?:?; ?:?):?;
begin
 0050A8A4    push        ebp
 0050A8A5    mov         ebp,esp
 0050A8A7    add         esp,0FFFFFFE8
 0050A8AA    mov         dword ptr [ebp-0C],ecx
 0050A8AD    mov         dword ptr [ebp-8],edx
 0050A8B0    mov         dword ptr [ebp-4],eax
 0050A8B3    xor         eax,eax
 0050A8B5    mov         dword ptr [ebp-10],eax
 0050A8B8    cmp         dword ptr [ebp-0C],0
>0050A8BC    jne         0050A8C7
 0050A8BE    mov         eax,dword ptr [ebp-4]
 0050A8C1    mov         eax,dword ptr [eax+6C]
 0050A8C4    mov         dword ptr [ebp-0C],eax
 0050A8C7    mov         eax,dword ptr [ebp-0C]
 0050A8CA    call        00479B60
 0050A8CF    dec         eax
 0050A8D0    test        eax,eax
>0050A8D2    jl          0050A968
 0050A8D8    inc         eax
 0050A8D9    mov         dword ptr [ebp-18],eax
 0050A8DC    mov         dword ptr [ebp-14],0
 0050A8E3    mov         edx,dword ptr [ebp-14]
 0050A8E6    mov         eax,dword ptr [ebp-0C]
 0050A8E9    call        0050BDF4
 0050A8EE    mov         edx,dword ptr ds:[509710];TActionClientItem
 0050A8F4    call        @IsClass
 0050A8F9    test        al,al
>0050A8FB    je          0050A922
 0050A8FD    mov         edx,dword ptr [ebp-14]
 0050A900    mov         eax,dword ptr [ebp-0C]
 0050A903    call        0050BDF4
 0050A908    call        TActionClientItem.GetAction
 0050A90D    cmp         eax,dword ptr [ebp-8]
>0050A910    jne         0050A922
 0050A912    mov         edx,dword ptr [ebp-14]
 0050A915    mov         eax,dword ptr [ebp-0C]
 0050A918    call        0050BDF4
 0050A91D    mov         dword ptr [ebp-10],eax
>0050A920    jmp         0050A968
 0050A922    mov         edx,dword ptr [ebp-14]
 0050A925    mov         eax,dword ptr [ebp-0C]
 0050A928    call        0050BDF4
 0050A92D    call        0050CB98
 0050A932    test        al,al
>0050A934    je          0050A95C
 0050A936    mov         edx,dword ptr [ebp-14]
 0050A939    mov         eax,dword ptr [ebp-0C]
 0050A93C    call        0050BDF4
 0050A941    call        TActionClient.GetItems
 0050A946    mov         ecx,eax
 0050A948    mov         edx,dword ptr [ebp-8]
 0050A94B    mov         eax,dword ptr [ebp-4]
 0050A94E    call        0050A8A4
 0050A953    mov         dword ptr [ebp-10],eax
 0050A956    cmp         dword ptr [ebp-10],0
>0050A95A    jne         0050A968
 0050A95C    inc         dword ptr [ebp-14]
 0050A95F    dec         dword ptr [ebp-18]
>0050A962    jne         0050A8E3
 0050A968    mov         eax,dword ptr [ebp-10]
 0050A96B    mov         esp,ebp
 0050A96D    pop         ebp
 0050A96E    ret
end;*}

//0050A970
{*function sub_0050A970(?:TCustomActionManager; ?:?; ?:TActionBars):?;
begin
 0050A970    push        ebp
 0050A971    mov         ebp,esp
 0050A973    add         esp,0FFFFFFE8
 0050A976    mov         dword ptr [ebp-0C],ecx
 0050A979    mov         dword ptr [ebp-8],edx
 0050A97C    mov         dword ptr [ebp-4],eax
 0050A97F    xor         eax,eax
 0050A981    mov         dword ptr [ebp-10],eax
 0050A984    cmp         dword ptr [ebp-0C],0
>0050A988    jne         0050A993
 0050A98A    mov         eax,dword ptr [ebp-4]
 0050A98D    mov         eax,dword ptr [eax+6C]
 0050A990    mov         dword ptr [ebp-0C],eax
 0050A993    mov         eax,dword ptr [ebp-0C]
 0050A996    call        00479B60
 0050A99B    dec         eax
 0050A99C    test        eax,eax
>0050A99E    jl          0050AA10
 0050A9A0    inc         eax
 0050A9A1    mov         dword ptr [ebp-18],eax
 0050A9A4    mov         dword ptr [ebp-14],0
 0050A9AB    mov         edx,dword ptr [ebp-14]
 0050A9AE    mov         eax,dword ptr [ebp-0C]
 0050A9B1    call        0050BDF4
 0050A9B6    mov         eax,dword ptr [eax+0C]
 0050A9B9    cmp         eax,dword ptr [ebp-8]
>0050A9BC    jne         0050A9CE
 0050A9BE    mov         edx,dword ptr [ebp-14]
 0050A9C1    mov         eax,dword ptr [ebp-0C]
 0050A9C4    call        0050BDF4
 0050A9C9    mov         dword ptr [ebp-10],eax
>0050A9CC    jmp         0050AA10
 0050A9CE    mov         edx,dword ptr [ebp-14]
 0050A9D1    mov         eax,dword ptr [ebp-0C]
 0050A9D4    call        0050BDF4
 0050A9D9    call        0050CB98
 0050A9DE    test        al,al
>0050A9E0    je          0050AA08
 0050A9E2    mov         edx,dword ptr [ebp-14]
 0050A9E5    mov         eax,dword ptr [ebp-0C]
 0050A9E8    call        0050BDF4
 0050A9ED    call        TActionClient.GetItems
 0050A9F2    mov         ecx,eax
 0050A9F4    mov         edx,dword ptr [ebp-8]
 0050A9F7    mov         eax,dword ptr [ebp-4]
 0050A9FA    call        0050A970
 0050A9FF    mov         dword ptr [ebp-10],eax
 0050AA02    cmp         dword ptr [ebp-10],0
>0050AA06    jne         0050AA10
 0050AA08    inc         dword ptr [ebp-14]
 0050AA0B    dec         dword ptr [ebp-18]
>0050AA0E    jne         0050A9AB
 0050AA10    mov         eax,dword ptr [ebp-10]
 0050AA13    mov         esp,ebp
 0050AA15    pop         ebp
 0050AA16    ret
end;*}

//0050AA18
procedure sub_0050AA18(?:TCustomActionManager; ?:TFileName);
begin
{*
 0050AA18    push        ebp
 0050AA19    mov         ebp,esp
 0050AA1B    add         esp,0FFFFFFE4
 0050AA1E    push        ebx
 0050AA1F    push        esi
 0050AA20    push        edi
 0050AA21    xor         ecx,ecx
 0050AA23    mov         dword ptr [ebp-10],ecx
 0050AA26    mov         dword ptr [ebp-14],ecx
 0050AA29    mov         dword ptr [ebp-8],edx
 0050AA2C    mov         dword ptr [ebp-4],eax
 0050AA2F    xor         eax,eax
 0050AA31    push        ebp
 0050AA32    push        50AB16
 0050AA37    push        dword ptr fs:[eax]
 0050AA3A    mov         dword ptr fs:[eax],esp
 0050AA3D    push        20
 0050AA3F    mov         ecx,dword ptr [ebp-8]
 0050AA42    mov         dl,1
 0050AA44    mov         eax,[00476278];TFileStream
 0050AA49    call        TFileStream.Create;TFileStream.Create
 0050AA4E    mov         dword ptr [ebp-0C],eax
 0050AA51    xor         eax,eax
 0050AA53    push        ebp
 0050AA54    push        50AAF4
 0050AA59    push        dword ptr fs:[eax]
 0050AA5C    mov         dword ptr fs:[eax],esp
 0050AA5F    xor         eax,eax
 0050AA61    push        ebp
 0050AA62    push        50AA82
 0050AA67    push        dword ptr fs:[eax]
 0050AA6A    mov         dword ptr fs:[eax],esp
 0050AA6D    mov         edx,dword ptr [ebp-0C]
 0050AA70    mov         eax,dword ptr [ebp-4]
 0050AA73    call        0050AB28
 0050AA78    xor         eax,eax
 0050AA7A    pop         edx
 0050AA7B    pop         ecx
 0050AA7C    pop         ecx
 0050AA7D    mov         dword ptr fs:[eax],edx
>0050AA80    jmp         0050AADE
>0050AA82    jmp         @HandleAnyException
 0050AA87    lea         eax,[ebp-0C]
 0050AA8A    call        FreeAndNil
 0050AA8F    push        0
 0050AA91    lea         eax,[ebp-10]
 0050AA94    push        eax
 0050AA95    lea         edx,[ebp-14]
 0050AA98    mov         eax,[0055B0E0];^SResString3:TResStringRec
 0050AA9D    call        LoadResString
 0050AAA2    mov         eax,dword ptr [ebp-14]
 0050AAA5    push        eax
 0050AAA6    mov         eax,dword ptr [ebp-8]
 0050AAA9    mov         dword ptr [ebp-1C],eax
 0050AAAC    mov         byte ptr [ebp-18],0B
 0050AAB0    lea         edx,[ebp-1C]
 0050AAB3    xor         ecx,ecx
 0050AAB5    pop         eax
 0050AAB6    call        Format
 0050AABB    mov         eax,dword ptr [ebp-10]
 0050AABE    mov         cx,word ptr ds:[50AB24];0x3 gvar_0050AB24
 0050AAC5    mov         dl,1
 0050AAC7    call        00494FFC
 0050AACC    cmp         eax,6
>0050AACF    jne         0050AAD9
 0050AAD1    mov         eax,dword ptr [ebp-8]
 0050AAD4    call        00466F98
 0050AAD9    call        @DoneExcept
 0050AADE    xor         eax,eax
 0050AAE0    pop         edx
 0050AAE1    pop         ecx
 0050AAE2    pop         ecx
 0050AAE3    mov         dword ptr fs:[eax],edx
 0050AAE6    push        50AAFB
 0050AAEB    lea         eax,[ebp-0C]
 0050AAEE    call        FreeAndNil
 0050AAF3    ret
>0050AAF4    jmp         @HandleFinally
>0050AAF9    jmp         0050AAEB
 0050AAFB    xor         eax,eax
 0050AAFD    pop         edx
 0050AAFE    pop         ecx
 0050AAFF    pop         ecx
 0050AB00    mov         dword ptr fs:[eax],edx
 0050AB03    push        50AB1D
 0050AB08    lea         eax,[ebp-14]
 0050AB0B    mov         edx,2
 0050AB10    call        @LStrArrayClr
 0050AB15    ret
>0050AB16    jmp         @HandleFinally
>0050AB1B    jmp         0050AB08
 0050AB1D    pop         edi
 0050AB1E    pop         esi
 0050AB1F    pop         ebx
 0050AB20    mov         esp,ebp
 0050AB22    pop         ebp
 0050AB23    ret
*}
end;

//0050AB28
{*procedure sub_0050AB28(?:?; ?:TFileStream);
begin
 0050AB28    push        ebp
 0050AB29    mov         ebp,esp
 0050AB2B    add         esp,0FFFFFFF4
 0050AB2E    push        ebx
 0050AB2F    push        esi
 0050AB30    push        edi
 0050AB31    mov         dword ptr [ebp-8],edx
 0050AB34    mov         dword ptr [ebp-4],eax
 0050AB37    mov         dl,1
 0050AB39    mov         eax,[00476368];TMemoryStream
 0050AB3E    call        TObject.Create;TMemoryStream.Create
 0050AB43    mov         dword ptr [ebp-0C],eax
 0050AB46    mov         eax,dword ptr [ebp-4]
 0050AB49    mov         byte ptr [eax+90],1
 0050AB50    xor         eax,eax
 0050AB52    push        ebp
 0050AB53    push        50AC16
 0050AB58    push        dword ptr fs:[eax]
 0050AB5B    mov         dword ptr fs:[eax],esp
 0050AB5E    mov         eax,dword ptr [ebp-4]
 0050AB61    call        0050A7C8
 0050AB66    mov         edx,dword ptr [ebp-4]
 0050AB69    mov         dword ptr [edx+88],eax
 0050AB6F    mov         eax,dword ptr [ebp-4]
 0050AB72    mov         edx,dword ptr [eax+6C]
 0050AB75    mov         eax,dword ptr [ebp-4]
 0050AB78    mov         eax,dword ptr [eax+88]
 0050AB7E    mov         ecx,dword ptr [eax]
 0050AB80    call        dword ptr [ecx+8]
 0050AB83    xor         eax,eax
 0050AB85    push        ebp
 0050AB86    push        50ABD3
 0050AB8B    push        dword ptr fs:[eax]
 0050AB8E    mov         dword ptr fs:[eax],esp
 0050AB91    mov         edx,dword ptr [ebp-8]
 0050AB94    mov         eax,dword ptr [ebp-0C]
 0050AB97    call        0047C624
 0050AB9C    push        0
 0050AB9E    push        0
 0050ABA0    mov         eax,dword ptr [ebp-0C]
 0050ABA3    call        0047BCF4
 0050ABA8    mov         edx,dword ptr [ebp-4]
 0050ABAB    mov         eax,dword ptr [ebp-0C]
 0050ABAE    call        0047C0B0
 0050ABB3    mov         eax,dword ptr [ebp-4]
 0050ABB6    call        004835C0
 0050ABBB    mov         eax,dword ptr [ebp-4]
 0050ABBE    mov         edx,dword ptr [eax+6C]
 0050ABC1    mov         eax,dword ptr [ebp-4]
 0050ABC4    call        0050B0F0
 0050ABC9    xor         eax,eax
 0050ABCB    pop         edx
 0050ABCC    pop         ecx
 0050ABCD    pop         ecx
 0050ABCE    mov         dword ptr fs:[eax],edx
>0050ABD1    jmp         0050ABF6
>0050ABD3    jmp         @HandleAnyException
 0050ABD8    mov         eax,dword ptr [ebp-4]
 0050ABDB    mov         edx,dword ptr [eax+88]
 0050ABE1    mov         eax,dword ptr [ebp-4]
 0050ABE4    mov         eax,dword ptr [eax+6C]
 0050ABE7    mov         ecx,dword ptr [eax]
 0050ABE9    call        dword ptr [ecx+8]
 0050ABEC    call        @RaiseAgain
 0050ABF1    call        @DoneExcept
 0050ABF6    xor         eax,eax
 0050ABF8    pop         edx
 0050ABF9    pop         ecx
 0050ABFA    pop         ecx
 0050ABFB    mov         dword ptr fs:[eax],edx
 0050ABFE    push        50AC1D
 0050AC03    mov         eax,dword ptr [ebp-4]
 0050AC06    mov         byte ptr [eax+90],0
 0050AC0D    mov         eax,dword ptr [ebp-0C]
 0050AC10    call        TObject.Free
 0050AC15    ret
>0050AC16    jmp         @HandleFinally
>0050AC1B    jmp         0050AC03
 0050AC1D    pop         edi
 0050AC1E    pop         esi
 0050AC1F    pop         ebx
 0050AC20    mov         esp,ebp
 0050AC22    pop         ebp
 0050AC23    ret
end;*}

//0050AC24
procedure sub_0050AC24;
begin
{*
 0050AC24    push        ebp
 0050AC25    mov         ebp,esp
 0050AC27    add         esp,0FFFFFFF4
 0050AC2A    push        ebx
 0050AC2B    mov         dword ptr [ebp-4],eax
 0050AC2E    mov         eax,dword ptr [ebp-4]
 0050AC31    call        004835C0
 0050AC36    mov         eax,dword ptr [ebp-4]
 0050AC39    cmp         byte ptr [eax+90],0;TCustomActionManager.FLoading:Boolean
>0050AC40    jne         0050AD17
 0050AC46    mov         eax,dword ptr [ebp-4]
 0050AC49    test        byte ptr [eax+1C],10;TCustomActionManager.FComponentState:TComponentState
>0050AC4D    jne         0050AC74
 0050AC4F    mov         eax,dword ptr [ebp-4]
 0050AC52    mov         eax,dword ptr [eax+8C];TCustomActionManager.FFileName:TFileName
 0050AC58    call        00466F78
 0050AC5D    test        al,al
>0050AC5F    je          0050AC74
 0050AC61    mov         eax,dword ptr [ebp-4]
 0050AC64    mov         edx,dword ptr [eax+8C];TCustomActionManager.FFileName:TFileName
 0050AC6A    mov         eax,dword ptr [ebp-4]
 0050AC6D    call        0050AA18
>0050AC72    jmp         0050AC82
 0050AC74    mov         eax,dword ptr [ebp-4]
 0050AC77    mov         edx,dword ptr [eax+6C];TCustomActionManager.FActionBars:TActionBars
 0050AC7A    mov         eax,dword ptr [ebp-4]
 0050AC7D    call        0050B0F0
 0050AC82    mov         eax,dword ptr [ebp-4]
 0050AC85    test        byte ptr [eax+1C],10;TCustomActionManager.FComponentState:TComponentState
>0050AC89    jne         0050AC94
 0050AC8B    mov         eax,dword ptr [ebp-4]
 0050AC8E    mov         eax,dword ptr [eax+6C];TCustomActionManager.FActionBars:TActionBars
 0050AC91    inc         dword ptr [eax+28];TActionBars.SessionCount:Integer
 0050AC94    mov         eax,dword ptr [ebp-4]
 0050AC97    mov         eax,dword ptr [eax+6C];TCustomActionManager.FActionBars:TActionBars
 0050AC9A    call        00479B60
 0050AC9F    dec         eax
 0050ACA0    test        eax,eax
>0050ACA2    jl          0050AD17
 0050ACA4    inc         eax
 0050ACA5    mov         dword ptr [ebp-0C],eax
 0050ACA8    mov         dword ptr [ebp-8],0
 0050ACAF    mov         edx,dword ptr [ebp-8]
 0050ACB2    mov         eax,dword ptr [ebp-4]
 0050ACB5    mov         eax,dword ptr [eax+6C];TCustomActionManager.FActionBars:TActionBars
 0050ACB8    call        0050D5D0
 0050ACBD    cmp         dword ptr [eax+0C],0
>0050ACC1    je          0050AD0F
 0050ACC3    mov         edx,dword ptr [ebp-8]
 0050ACC6    mov         eax,dword ptr [ebp-4]
 0050ACC9    mov         eax,dword ptr [eax+6C];TCustomActionManager.FActionBars:TActionBars
 0050ACCC    call        0050D5D0
 0050ACD1    mov         eax,dword ptr [eax+0C]
 0050ACD4    call        TActionToolBar.GetColorMap
 0050ACD9    mov         ebx,eax
 0050ACDB    mov         edx,dword ptr [ebp-8]
 0050ACDE    mov         eax,dword ptr [ebp-4]
 0050ACE1    mov         eax,dword ptr [eax+6C];TCustomActionManager.FActionBars:TActionBars
 0050ACE4    call        0050D5D0
 0050ACE9    mov         eax,dword ptr [eax+0C]
 0050ACEC    cmp         ebx,dword ptr [eax+274]
>0050ACF2    jne         0050AD0F
 0050ACF4    mov         edx,dword ptr [ebp-8]
 0050ACF7    mov         eax,dword ptr [ebp-4]
 0050ACFA    mov         eax,dword ptr [eax+6C];TCustomActionManager.FActionBars:TActionBars
 0050ACFD    call        0050D5D0
 0050AD02    mov         eax,dword ptr [eax+0C]
 0050AD05    xor         edx,edx
 0050AD07    mov         ecx,dword ptr [eax]
 0050AD09    call        dword ptr [ecx+12C]
 0050AD0F    inc         dword ptr [ebp-8]
 0050AD12    dec         dword ptr [ebp-0C]
>0050AD15    jne         0050ACAF
 0050AD17    pop         ebx
 0050AD18    mov         esp,ebp
 0050AD1A    pop         ebp
 0050AD1B    ret
*}
end;

//0050AD1C
{*procedure sub_0050AD1C(?:?; ?:?);
begin
 0050AD1C    push        ebp
 0050AD1D    mov         ebp,esp
 0050AD1F    add         esp,0FFFFFFE0
 0050AD22    mov         byte ptr [ebp-9],cl
 0050AD25    mov         dword ptr [ebp-8],edx
 0050AD28    mov         dword ptr [ebp-4],eax
 0050AD2B    mov         cl,byte ptr [ebp-9]
 0050AD2E    mov         edx,dword ptr [ebp-8]
 0050AD31    mov         eax,dword ptr [ebp-4]
 0050AD34    call        004DAE70
 0050AD39    mov         eax,[0055B4C8];^Application:TApplication
 0050AD3E    mov         eax,dword ptr [eax]
 0050AD40    cmp         byte ptr [eax+9C],0;TApplication.FTerminate:Boolean
>0050AD47    je          0050AD82
 0050AD49    mov         eax,dword ptr [ebp-4]
 0050AD4C    mov         eax,dword ptr [eax+8C];TCustomActionManager.FFileName:TFileName
 0050AD52    call        @DynArrayLength
 0050AD57    test        eax,eax
>0050AD59    jle         0050AD82
 0050AD5B    mov         eax,dword ptr [ebp-4]
 0050AD5E    cmp         byte ptr [eax+98],0;TCustomActionManager.FSaved:Boolean
>0050AD65    jne         0050AD82
 0050AD67    mov         eax,dword ptr [ebp-4]
 0050AD6A    mov         edx,dword ptr [eax+8C];TCustomActionManager.FFileName:TFileName
 0050AD70    mov         eax,dword ptr [ebp-4]
 0050AD73    call        0050AF6C
 0050AD78    mov         eax,dword ptr [ebp-4]
 0050AD7B    mov         byte ptr [eax+98],1;TCustomActionManager.FSaved:Boolean
 0050AD82    cmp         byte ptr [ebp-9],1
>0050AD86    jne         0050AF68
 0050AD8C    mov         eax,dword ptr [ebp-4]
 0050AD8F    test        byte ptr [eax+1C],8;TCustomActionManager.FComponentState:TComponentState
>0050AD93    jne         0050AF68
 0050AD99    mov         eax,dword ptr [ebp-8]
 0050AD9C    mov         edx,dword ptr ds:[4D9E8C];TContainedAction
 0050ADA2    call        @IsClass
 0050ADA7    test        al,al
>0050ADA9    je          0050AEA3
 0050ADAF    xor         ecx,ecx
 0050ADB1    mov         edx,dword ptr [ebp-8]
 0050ADB4    mov         eax,dword ptr [ebp-4]
 0050ADB7    call        0050A8A4
 0050ADBC    mov         dword ptr [ebp-10],eax
 0050ADBF    mov         dl,1
 0050ADC1    mov         eax,[004759C0];TList
 0050ADC6    call        TObject.Create;TList.Create
 0050ADCB    mov         dword ptr [ebp-1C],eax
 0050ADCE    xor         eax,eax
 0050ADD0    push        ebp
 0050ADD1    push        50AE9C
 0050ADD6    push        dword ptr fs:[eax]
 0050ADD9    mov         dword ptr fs:[eax],esp
 0050ADDC    cmp         dword ptr [ebp-10],0
>0050ADE0    je          0050AE49
 0050ADE2    mov         eax,dword ptr [ebp-10]
 0050ADE5    call        0050E760
 0050ADEA    mov         eax,dword ptr [eax+20]
 0050ADED    cmp         dword ptr [eax+0C],0
>0050ADF1    je          0050AE1C
 0050ADF3    mov         eax,dword ptr [ebp-10]
 0050ADF6    call        0050E760
 0050ADFB    mov         eax,dword ptr [eax+20]
 0050ADFE    mov         eax,dword ptr [eax+0C]
 0050AE01    call        TWinControl.DisableAlign
 0050AE06    mov         eax,dword ptr [ebp-10]
 0050AE09    call        0050E760
 0050AE0E    mov         eax,dword ptr [eax+20]
 0050AE11    mov         edx,dword ptr [eax+0C]
 0050AE14    mov         eax,dword ptr [ebp-1C]
 0050AE17    call        TList.Add
 0050AE1C    mov         eax,dword ptr [ebp-10]
 0050AE1F    call        TCollectionItem.GetIndex
 0050AE24    push        eax
 0050AE25    mov         eax,dword ptr [ebp-10]
 0050AE28    call        0050E760
 0050AE2D    pop         edx
 0050AE2E    call        00479EF8
 0050AE33    xor         ecx,ecx
 0050AE35    mov         edx,dword ptr [ebp-8]
 0050AE38    mov         eax,dword ptr [ebp-4]
 0050AE3B    call        0050A8A4
 0050AE40    mov         dword ptr [ebp-10],eax
 0050AE43    cmp         dword ptr [ebp-10],0
>0050AE47    jne         0050ADE2
 0050AE49    xor         eax,eax
 0050AE4B    pop         edx
 0050AE4C    pop         ecx
 0050AE4D    pop         ecx
 0050AE4E    mov         dword ptr fs:[eax],edx
 0050AE51    push        50AF68
 0050AE56    mov         eax,dword ptr [ebp-1C]
 0050AE59    mov         eax,dword ptr [eax+8];TList.FCount:Integer
 0050AE5C    dec         eax
 0050AE5D    test        eax,eax
>0050AE5F    jl          0050AE93
 0050AE61    inc         eax
 0050AE62    mov         dword ptr [ebp-20],eax
 0050AE65    mov         dword ptr [ebp-18],0
 0050AE6C    mov         edx,dword ptr [ebp-18]
 0050AE6F    mov         eax,dword ptr [ebp-1C]
 0050AE72    call        TList.Get
 0050AE77    test        eax,eax
>0050AE79    je          0050AE8B
 0050AE7B    mov         edx,dword ptr [ebp-18]
 0050AE7E    mov         eax,dword ptr [ebp-1C]
 0050AE81    call        TList.Get
 0050AE86    call        TWinControl.EnableAlign
 0050AE8B    inc         dword ptr [ebp-18]
 0050AE8E    dec         dword ptr [ebp-20]
>0050AE91    jne         0050AE6C
 0050AE93    mov         eax,dword ptr [ebp-1C]
 0050AE96    call        TObject.Free
 0050AE9B    ret
>0050AE9C    jmp         @HandleFinally
>0050AEA1    jmp         0050AE56
 0050AEA3    mov         eax,dword ptr [ebp-8]
 0050AEA6    mov         edx,dword ptr ds:[509DC8];TCustomActionBar
 0050AEAC    call        @IsClass
 0050AEB1    test        al,al
>0050AEB3    je          0050AEFE
 0050AEB5    mov         eax,dword ptr [ebp-4]
 0050AEB8    mov         ecx,dword ptr [eax+6C];TCustomActionManager.FActionBars:TActionBars
 0050AEBB    mov         edx,dword ptr [ebp-8]
 0050AEBE    mov         eax,dword ptr [ebp-4]
 0050AEC1    call        0050A970
 0050AEC6    mov         dword ptr [ebp-14],eax
 0050AEC9    cmp         dword ptr [ebp-14],0
>0050AECD    je          0050AED7
 0050AECF    mov         eax,dword ptr [ebp-14]
 0050AED2    xor         edx,edx
 0050AED4    mov         dword ptr [eax+0C],edx
 0050AED7    mov         eax,dword ptr [ebp-4]
 0050AEDA    mov         ecx,dword ptr [eax+88];TCustomActionManager.FDefaultActionBars:TActionBars
 0050AEE0    mov         edx,dword ptr [ebp-8]
 0050AEE3    mov         eax,dword ptr [ebp-4]
 0050AEE6    call        0050A970
 0050AEEB    mov         dword ptr [ebp-14],eax
 0050AEEE    cmp         dword ptr [ebp-14],0
>0050AEF2    je          0050AF68
 0050AEF4    mov         eax,dword ptr [ebp-14]
 0050AEF7    xor         edx,edx
 0050AEF9    mov         dword ptr [eax+0C],edx
>0050AEFC    jmp         0050AF68
 0050AEFE    mov         eax,dword ptr [ebp-8]
 0050AF01    mov         edx,dword ptr ds:[4DA048];TCustomActionList
 0050AF07    call        @IsClass
 0050AF0C    test        al,al
>0050AF0E    je          0050AF68
 0050AF10    mov         eax,dword ptr [ebp-4]
 0050AF13    cmp         dword ptr [eax+84],0;TCustomActionManager.FLinkedActionLists:TActionListCollection
>0050AF1A    je          0050AF68
 0050AF1C    mov         eax,dword ptr [ebp-4]
 0050AF1F    mov         eax,dword ptr [eax+84];TCustomActionManager.FLinkedActionLists:TActionListCollection
 0050AF25    call        00479B60
 0050AF2A    dec         eax
 0050AF2B    cmp         eax,0
>0050AF2E    jl          0050AF68
 0050AF30    mov         dword ptr [ebp-18],eax
 0050AF33    mov         eax,dword ptr [ebp-4]
 0050AF36    mov         eax,dword ptr [eax+84];TCustomActionManager.FLinkedActionLists:TActionListCollection
 0050AF3C    mov         edx,dword ptr [ebp-18]
 0050AF3F    call        0050BDD0
 0050AF44    mov         eax,dword ptr [eax+0C]
 0050AF47    cmp         eax,dword ptr [ebp-8]
>0050AF4A    jne         0050AF5F
 0050AF4C    mov         eax,dword ptr [ebp-4]
 0050AF4F    mov         eax,dword ptr [eax+84];TCustomActionManager.FLinkedActionLists:TActionListCollection
 0050AF55    mov         edx,dword ptr [ebp-18]
 0050AF58    call        00479EF8
>0050AF5D    jmp         0050AF68
 0050AF5F    dec         dword ptr [ebp-18]
 0050AF62    cmp         dword ptr [ebp-18],0FFFFFFFF
>0050AF66    jne         0050AF33
 0050AF68    mov         esp,ebp
 0050AF6A    pop         ebp
 0050AF6B    ret
end;*}

//0050AF6C
procedure sub_0050AF6C(?:TCustomActionManager; ?:TFileName);
begin
{*
 0050AF6C    push        ebp
 0050AF6D    mov         ebp,esp
 0050AF6F    add         esp,0FFFFFFEC
 0050AF72    push        ebx
 0050AF73    push        esi
 0050AF74    push        edi
 0050AF75    xor         ecx,ecx
 0050AF77    mov         dword ptr [ebp-14],ecx
 0050AF7A    mov         dword ptr [ebp-10],ecx
 0050AF7D    mov         dword ptr [ebp-8],edx
 0050AF80    mov         dword ptr [ebp-4],eax
 0050AF83    xor         eax,eax
 0050AF85    push        ebp
 0050AF86    push        50B067
 0050AF8B    push        dword ptr fs:[eax]
 0050AF8E    mov         dword ptr fs:[eax],esp
 0050AF91    xor         edx,edx
 0050AF93    mov         eax,dword ptr [ebp-4]
 0050AF96    call        TActionList.SetState
 0050AF9B    xor         eax,eax
 0050AF9D    push        ebp
 0050AF9E    push        50B02D
 0050AFA3    push        dword ptr fs:[eax]
 0050AFA6    mov         dword ptr fs:[eax],esp
 0050AFA9    push        0FFFF
 0050AFAE    lea         edx,[ebp-10]
 0050AFB1    mov         eax,dword ptr [ebp-8]
 0050AFB4    call        00467160
 0050AFB9    mov         ecx,dword ptr [ebp-10]
 0050AFBC    mov         dl,1
 0050AFBE    mov         eax,[00476278];TFileStream
 0050AFC3    call        TFileStream.Create;TFileStream.Create
 0050AFC8    mov         dword ptr [ebp-0C],eax
 0050AFCB    xor         eax,eax
 0050AFCD    push        ebp
 0050AFCE    push        50B01C
 0050AFD3    push        dword ptr fs:[eax]
 0050AFD6    mov         dword ptr fs:[eax],esp
 0050AFD9    xor         eax,eax
 0050AFDB    push        ebp
 0050AFDC    push        50AFFC
 0050AFE1    push        dword ptr fs:[eax]
 0050AFE4    mov         dword ptr fs:[eax],esp
 0050AFE7    mov         edx,dword ptr [ebp-0C]
 0050AFEA    mov         eax,dword ptr [ebp-4]
 0050AFED    call        0050B078
 0050AFF2    xor         eax,eax
 0050AFF4    pop         edx
 0050AFF5    pop         ecx
 0050AFF6    pop         ecx
 0050AFF7    mov         dword ptr fs:[eax],edx
>0050AFFA    jmp         0050B006
>0050AFFC    jmp         @HandleAnyException
 0050B001    call        @DoneExcept
 0050B006    xor         eax,eax
 0050B008    pop         edx
 0050B009    pop         ecx
 0050B00A    pop         ecx
 0050B00B    mov         dword ptr fs:[eax],edx
 0050B00E    push        50B023
 0050B013    mov         eax,dword ptr [ebp-0C]
 0050B016    call        TObject.Free
 0050B01B    ret
>0050B01C    jmp         @HandleFinally
>0050B021    jmp         0050B013
 0050B023    xor         eax,eax
 0050B025    pop         edx
 0050B026    pop         ecx
 0050B027    pop         ecx
 0050B028    mov         dword ptr fs:[eax],edx
>0050B02B    jmp         0050B04C
>0050B02D    jmp         @HandleAnyException
 0050B032    lea         edx,[ebp-14]
 0050B035    mov         eax,[0055B1B8];^SUnableToSaveSettings:TResStringRec
 0050B03A    call        LoadResString
 0050B03F    mov         eax,dword ptr [ebp-14]
 0050B042    call        00495128
 0050B047    call        @DoneExcept
 0050B04C    xor         eax,eax
 0050B04E    pop         edx
 0050B04F    pop         ecx
 0050B050    pop         ecx
 0050B051    mov         dword ptr fs:[eax],edx
 0050B054    push        50B06E
 0050B059    lea         eax,[ebp-14]
 0050B05C    mov         edx,2
 0050B061    call        @LStrArrayClr
 0050B066    ret
>0050B067    jmp         @HandleFinally
>0050B06C    jmp         0050B059
 0050B06E    pop         edi
 0050B06F    pop         esi
 0050B070    pop         ebx
 0050B071    mov         esp,ebp
 0050B073    pop         ebp
 0050B074    ret
*}
end;

//0050B078
procedure sub_0050B078(?:TCustomActionManager; ?:TFileStream);
begin
{*
 0050B078    push        ebp
 0050B079    mov         ebp,esp
 0050B07B    add         esp,0FFFFFFF4
 0050B07E    mov         dword ptr [ebp-8],edx
 0050B081    mov         dword ptr [ebp-4],eax
 0050B084    mov         dl,1
 0050B086    mov         eax,[00476368];TMemoryStream
 0050B08B    call        TObject.Create;TMemoryStream.Create
 0050B090    mov         dword ptr [ebp-0C],eax
 0050B093    xor         eax,eax
 0050B095    push        ebp
 0050B096    push        50B0E2
 0050B09B    push        dword ptr fs:[eax]
 0050B09E    mov         dword ptr fs:[eax],esp
 0050B0A1    mov         edx,dword ptr [ebp-4]
 0050B0A4    mov         eax,dword ptr [ebp-0C]
 0050B0A7    call        0047C114
 0050B0AC    push        0
 0050B0AE    push        0
 0050B0B0    mov         eax,dword ptr [ebp-0C]
 0050B0B3    call        0047BCF4
 0050B0B8    mov         eax,dword ptr [ebp-0C]
 0050B0BB    mov         edx,dword ptr [eax]
 0050B0BD    call        dword ptr [edx];TMemoryStream.sub_0047BD10
 0050B0BF    push        edx
 0050B0C0    push        eax
 0050B0C1    mov         edx,dword ptr [ebp-0C]
 0050B0C4    mov         eax,dword ptr [ebp-8]
 0050B0C7    call        0047BFB8
 0050B0CC    xor         eax,eax
 0050B0CE    pop         edx
 0050B0CF    pop         ecx
 0050B0D0    pop         ecx
 0050B0D1    mov         dword ptr fs:[eax],edx
 0050B0D4    push        50B0E9
 0050B0D9    mov         eax,dword ptr [ebp-0C]
 0050B0DC    call        TObject.Free
 0050B0E1    ret
>0050B0E2    jmp         @HandleFinally
>0050B0E7    jmp         0050B0D9
 0050B0E9    mov         esp,ebp
 0050B0EB    pop         ebp
 0050B0EC    ret
*}
end;

//0050B0F0
procedure sub_0050B0F0(?:TCustomActionManager; ?:TActionBars);
begin
{*
 0050B0F0    push        ebp
 0050B0F1    mov         ebp,esp
 0050B0F3    add         esp,0FFFFFFF0
 0050B0F6    push        esi
 0050B0F7    mov         dword ptr [ebp-8],edx
 0050B0FA    mov         dword ptr [ebp-4],eax
 0050B0FD    mov         eax,dword ptr [ebp-8]
 0050B100    call        00479B60
 0050B105    test        eax,eax
>0050B107    je          0050B199
 0050B10D    mov         eax,dword ptr [ebp-8]
 0050B110    call        00479B60
 0050B115    dec         eax
 0050B116    test        eax,eax
>0050B118    jl          0050B199
 0050B11A    inc         eax
 0050B11B    mov         dword ptr [ebp-10],eax
 0050B11E    mov         dword ptr [ebp-0C],0
 0050B125    mov         edx,dword ptr [ebp-0C]
 0050B128    mov         eax,dword ptr [ebp-8]
 0050B12B    call        0050BDF4
 0050B130    cmp         dword ptr [eax+0C],0
>0050B134    je          0050B191
 0050B136    mov         dl,1
 0050B138    mov         eax,dword ptr [ebp-8]
 0050B13B    call        0050C09C
 0050B140    mov         edx,dword ptr [ebp-0C]
 0050B143    mov         eax,dword ptr [ebp-8]
 0050B146    call        0050BDF4
 0050B14B    push        eax
 0050B14C    mov         edx,dword ptr [ebp-0C]
 0050B14F    mov         eax,dword ptr [ebp-8]
 0050B152    call        0050BDF4
 0050B157    mov         eax,dword ptr [eax+0C]
 0050B15A    pop         edx
 0050B15B    mov         ecx,dword ptr [eax]
 0050B15D    call        dword ptr [ecx+124]
 0050B163    mov         edx,dword ptr [ebp-0C]
 0050B166    mov         eax,dword ptr [ebp-8]
 0050B169    call        0050BDF4
 0050B16E    mov         eax,dword ptr [eax+0C]
 0050B171    mov         si,0FFCF
 0050B175    call        @CallDynaInst
 0050B17A    mov         edx,dword ptr [ebp-0C]
 0050B17D    mov         eax,dword ptr [ebp-8]
 0050B180    call        0050BDF4
 0050B185    mov         eax,dword ptr [eax+0C]
 0050B188    mov         si,0FFD0
 0050B18C    call        @CallDynaInst
 0050B191    inc         dword ptr [ebp-0C]
 0050B194    dec         dword ptr [ebp-10]
>0050B197    jne         0050B125
 0050B199    pop         esi
 0050B19A    mov         esp,ebp
 0050B19C    pop         ebp
 0050B19D    ret
*}
end;

//0050B1A0
procedure TActionManager.SetActionBars(Value:TActionBars);
begin
{*
 0050B1A0    push        ebp
 0050B1A1    mov         ebp,esp
 0050B1A3    add         esp,0FFFFFFF8
 0050B1A6    mov         dword ptr [ebp-8],edx
 0050B1A9    mov         dword ptr [ebp-4],eax
 0050B1AC    mov         edx,dword ptr [ebp-8]
 0050B1AF    mov         eax,dword ptr [ebp-4]
 0050B1B2    mov         eax,dword ptr [eax+6C];TActionManager.FActionBars:TActionBars
 0050B1B5    mov         ecx,dword ptr [eax]
 0050B1B7    call        dword ptr [ecx+8];TActionBars.sub_00479958
 0050B1BA    pop         ecx
 0050B1BB    pop         ecx
 0050B1BC    pop         ebp
 0050B1BD    ret
*}
end;

//0050B1C0
procedure TActionManager.SetImages(Value:TCustomImageList);
begin
{*
 0050B1C0    push        ebp
 0050B1C1    mov         ebp,esp
 0050B1C3    add         esp,0FFFFFFE4
 0050B1C6    mov         dword ptr [ebp-8],edx
 0050B1C9    mov         dword ptr [ebp-4],eax
 0050B1CC    mov         eax,dword ptr [ebp-4]
 0050B1CF    mov         eax,dword ptr [eax+38];TActionManager.FImages:TCustomImageList
 0050B1D2    cmp         eax,dword ptr [ebp-8]
>0050B1D5    je          0050B1E0
 0050B1D7    mov         eax,dword ptr [ebp-4]
 0050B1DA    test        byte ptr [eax+1C],8;TActionManager.FComponentState:TComponentState
>0050B1DE    je          0050B1E4
 0050B1E0    xor         eax,eax
>0050B1E2    jmp         0050B1E6
 0050B1E4    mov         al,1
 0050B1E6    mov         byte ptr [ebp-11],al
 0050B1E9    mov         edx,dword ptr [ebp-8]
 0050B1EC    mov         eax,dword ptr [ebp-4]
 0050B1EF    call        TActionList.SetImages
 0050B1F4    cmp         byte ptr [ebp-11],0
>0050B1F8    je          0050B29C
 0050B1FE    mov         eax,dword ptr [ebp-4]
 0050B201    mov         eax,dword ptr [eax+6C];TActionManager.FActionBars:TActionBars
 0050B204    call        00479B60
 0050B209    dec         eax
 0050B20A    test        eax,eax
>0050B20C    jl          0050B29C
 0050B212    inc         eax
 0050B213    mov         dword ptr [ebp-18],eax
 0050B216    mov         dword ptr [ebp-0C],0
 0050B21D    mov         eax,dword ptr [ebp-4]
 0050B220    mov         eax,dword ptr [eax+6C];TActionManager.FActionBars:TActionBars
 0050B223    mov         edx,dword ptr [ebp-0C]
 0050B226    call        0050D5D0
 0050B22B    call        TActionClient.GetItems
 0050B230    call        00479B60
 0050B235    dec         eax
 0050B236    test        eax,eax
>0050B238    jl          0050B294
 0050B23A    inc         eax
 0050B23B    mov         dword ptr [ebp-1C],eax
 0050B23E    mov         dword ptr [ebp-10],0
 0050B245    mov         eax,dword ptr [ebp-4]
 0050B248    mov         eax,dword ptr [eax+6C];TActionManager.FActionBars:TActionBars
 0050B24B    mov         edx,dword ptr [ebp-0C]
 0050B24E    call        0050D5D0
 0050B253    call        TActionClient.GetItems
 0050B258    mov         edx,dword ptr [ebp-10]
 0050B25B    call        0050D884
 0050B260    cmp         dword ptr [eax+40],0
>0050B264    je          0050B28C
 0050B266    mov         eax,dword ptr [ebp-4]
 0050B269    mov         eax,dword ptr [eax+6C];TActionManager.FActionBars:TActionBars
 0050B26C    mov         edx,dword ptr [ebp-0C]
 0050B26F    call        0050D5D0
 0050B274    call        TActionClient.GetItems
 0050B279    mov         edx,dword ptr [ebp-10]
 0050B27C    call        0050D884
 0050B281    mov         eax,dword ptr [eax+40]
 0050B284    mov         edx,dword ptr [eax]
 0050B286    call        dword ptr [edx+0DC]
 0050B28C    inc         dword ptr [ebp-10]
 0050B28F    dec         dword ptr [ebp-1C]
>0050B292    jne         0050B245
 0050B294    inc         dword ptr [ebp-0C]
 0050B297    dec         dword ptr [ebp-18]
>0050B29A    jne         0050B21D
 0050B29C    mov         esp,ebp
 0050B29E    pop         ebp
 0050B29F    ret
*}
end;

//0050B31C
procedure TActionManager.SetPrioritySchedule(Value:TStringList);
begin
{*
 0050B31C    push        ebp
 0050B31D    mov         ebp,esp
 0050B31F    mov         ecx,6
 0050B324    push        0
 0050B326    push        0
 0050B328    dec         ecx
>0050B329    jne         0050B324
 0050B32B    push        ecx
 0050B32C    push        ebx
 0050B32D    mov         dword ptr [ebp-8],edx
 0050B330    mov         dword ptr [ebp-4],eax
 0050B333    xor         eax,eax
 0050B335    push        ebp
 0050B336    push        50B48F
 0050B33B    push        dword ptr fs:[eax]
 0050B33E    mov         dword ptr fs:[eax],esp
 0050B341    lea         edx,[ebp-1C]
 0050B344    mov         eax,dword ptr [ebp-4]
 0050B347    mov         eax,dword ptr [eax+94];TActionManager.FPrioritySchedule:TStringList
 0050B34D    mov         ecx,dword ptr [eax]
 0050B34F    call        dword ptr [ecx+1C];TStringList.sub_0047A6E8
 0050B352    mov         eax,dword ptr [ebp-1C]
 0050B355    lea         edx,[ebp-18]
 0050B358    call        004664C8
 0050B35D    mov         eax,dword ptr [ebp-18]
 0050B360    call        @DynArrayLength
 0050B365    test        eax,eax
>0050B367    jne         0050B3B2
 0050B369    push        0
 0050B36B    lea         edx,[ebp-20]
 0050B36E    mov         eax,[0055B264];^SRestoreDefaultSchedule:TResStringRec
 0050B373    call        LoadResString
 0050B378    mov         eax,dword ptr [ebp-20]
 0050B37B    mov         cx,word ptr ds:[50B49C];0xC gvar_0050B49C
 0050B382    mov         dl,3
 0050B384    call        00494FFC
 0050B389    dec         eax
>0050B38A    jne         0050B3A2
 0050B38C    mov         eax,dword ptr [ebp-4]
 0050B38F    mov         eax,dword ptr [eax+94];TActionManager.FPrioritySchedule:TStringList
 0050B395    mov         edx,dword ptr ds:[541A98];^gvar_0050A338
 0050B39B    mov         ecx,dword ptr [eax]
 0050B39D    call        dword ptr [ecx+2C];TStringList.sub_0047AEF0
>0050B3A0    jmp         0050B3FB
 0050B3A2    mov         eax,dword ptr [ebp-4]
 0050B3A5    mov         eax,dword ptr [eax+94];TActionManager.FPrioritySchedule:TStringList
 0050B3AB    mov         edx,dword ptr [eax]
 0050B3AD    call        dword ptr [edx+44];TStringList.Clear
>0050B3B0    jmp         0050B3FB
 0050B3B2    lea         ecx,[ebp-24]
 0050B3B5    xor         edx,edx
 0050B3B7    mov         eax,dword ptr [ebp-8]
 0050B3BA    call        0047A610
 0050B3BF    mov         eax,dword ptr [ebp-24]
 0050B3C2    call        StrToInt
 0050B3C7    lea         ecx,[ebp-2C]
 0050B3CA    xor         edx,edx
 0050B3CC    mov         eax,dword ptr [ebp-8]
 0050B3CF    call        0047A610
 0050B3D4    mov         edx,dword ptr [ebp-2C]
 0050B3D7    lea         ecx,[ebp-28]
 0050B3DA    mov         eax,dword ptr [ebp-8]
 0050B3DD    call        0047A830
 0050B3E2    mov         eax,dword ptr [ebp-28]
 0050B3E5    call        StrToInt
 0050B3EA    mov         eax,dword ptr [ebp-4]
 0050B3ED    mov         eax,dword ptr [eax+94];TActionManager.FPrioritySchedule:TStringList
 0050B3F3    mov         edx,dword ptr [ebp-8]
 0050B3F6    mov         ecx,dword ptr [eax]
 0050B3F8    call        dword ptr [ecx+8];TStringList.sub_0047A184
 0050B3FB    mov         edx,50B2A0
 0050B400    mov         eax,dword ptr [ebp-4]
 0050B403    mov         eax,dword ptr [eax+94];TActionManager.FPrioritySchedule:TStringList
 0050B409    mov         ecx,dword ptr [eax]
 0050B40B    call        dword ptr [ecx+94];TStringList.sub_0047BC3C
 0050B411    mov         eax,dword ptr [ebp-4]
 0050B414    mov         eax,dword ptr [eax+94];TActionManager.FPrioritySchedule:TStringList
 0050B41A    mov         edx,dword ptr [eax]
 0050B41C    call        dword ptr [edx+14];TStringList.sub_0047B778
 0050B41F    dec         eax
 0050B420    test        eax,eax
>0050B422    jl          0050B474
 0050B424    inc         eax
 0050B425    mov         dword ptr [ebp-10],eax
 0050B428    mov         dword ptr [ebp-0C],0
 0050B42F    mov         eax,dword ptr [ebp-4]
 0050B432    mov         eax,dword ptr [eax+94];TActionManager.FPrioritySchedule:TStringList
 0050B438    mov         dword ptr [ebp-14],eax
 0050B43B    lea         ecx,[ebp-34]
 0050B43E    mov         edx,dword ptr [ebp-0C]
 0050B441    mov         eax,dword ptr [ebp-14]
 0050B444    call        0047A610
 0050B449    mov         edx,dword ptr [ebp-34]
 0050B44C    lea         ecx,[ebp-30]
 0050B44F    mov         eax,dword ptr [ebp-14]
 0050B452    call        0047A830
 0050B457    mov         eax,dword ptr [ebp-30]
 0050B45A    call        StrToInt
 0050B45F    mov         ecx,eax
 0050B461    mov         edx,dword ptr [ebp-0C]
 0050B464    mov         eax,dword ptr [ebp-14]
 0050B467    mov         ebx,dword ptr [eax]
 0050B469    call        dword ptr [ebx+24];TStringList.sub_0047BA30
 0050B46C    inc         dword ptr [ebp-0C]
 0050B46F    dec         dword ptr [ebp-10]
>0050B472    jne         0050B42F
 0050B474    xor         eax,eax
 0050B476    pop         edx
 0050B477    pop         ecx
 0050B478    pop         ecx
 0050B479    mov         dword ptr fs:[eax],edx
 0050B47C    push        50B496
 0050B481    lea         eax,[ebp-34]
 0050B484    mov         edx,8
 0050B489    call        @LStrArrayClr
 0050B48E    ret
>0050B48F    jmp         @HandleFinally
>0050B494    jmp         0050B481
 0050B496    pop         ebx
 0050B497    mov         esp,ebp
 0050B499    pop         ebp
 0050B49A    ret
*}
end;

//0050B4A0
{*function sub_0050B4A0(?:?):?;
begin
 0050B4A0    push        ebp
 0050B4A1    mov         ebp,esp
 0050B4A3    add         esp,0FFFFFFE8
 0050B4A6    xor         ecx,ecx
 0050B4A8    mov         dword ptr [ebp-18],ecx
 0050B4AB    mov         dword ptr [ebp-8],edx
 0050B4AE    mov         dword ptr [ebp-4],eax
 0050B4B1    xor         eax,eax
 0050B4B3    push        ebp
 0050B4B4    push        50B584
 0050B4B9    push        dword ptr fs:[eax]
 0050B4BC    mov         dword ptr fs:[eax],esp
 0050B4BF    mov         eax,dword ptr [ebp-8]
 0050B4C2    cmp         dword ptr [eax+44],0FFFFFFFF
>0050B4C6    je          0050B4DE
 0050B4C8    mov         eax,dword ptr [ebp-4]
 0050B4CB    mov         eax,dword ptr [eax+94];TCustomActionManager.FPrioritySchedule:TStringList
 0050B4D1    mov         edx,dword ptr [eax]
 0050B4D3    call        dword ptr [edx+14];TStringList.sub_0047B778
 0050B4D6    test        eax,eax
>0050B4D8    je          0050B4DE
 0050B4DA    xor         eax,eax
>0050B4DC    jmp         0050B4E0
 0050B4DE    mov         al,1
 0050B4E0    mov         byte ptr [ebp-9],al
 0050B4E3    cmp         byte ptr [ebp-9],0
>0050B4E7    jne         0050B56E
 0050B4ED    mov         eax,dword ptr [ebp-4]
 0050B4F0    mov         eax,dword ptr [eax+6C];TCustomActionManager.FActionBars:TActionBars
 0050B4F3    mov         eax,dword ptr [eax+28];TActionBars.SessionCount:Integer
 0050B4F6    mov         edx,dword ptr [ebp-8]
 0050B4F9    sub         eax,dword ptr [edx+5C]
 0050B4FC    mov         dword ptr [ebp-10],eax
 0050B4FF    xor         eax,eax
 0050B501    mov         dword ptr [ebp-14],eax
>0050B504    jmp         0050B509
 0050B506    inc         dword ptr [ebp-14]
 0050B509    mov         eax,dword ptr [ebp-4]
 0050B50C    mov         eax,dword ptr [eax+94];TCustomActionManager.FPrioritySchedule:TStringList
 0050B512    mov         edx,dword ptr [eax]
 0050B514    call        dword ptr [edx+14];TStringList.sub_0047B778
 0050B517    cmp         eax,dword ptr [ebp-14]
>0050B51A    jle         0050B540
 0050B51C    lea         ecx,[ebp-18]
 0050B51F    mov         edx,dword ptr [ebp-14]
 0050B522    mov         eax,dword ptr [ebp-4]
 0050B525    mov         eax,dword ptr [eax+94];TCustomActionManager.FPrioritySchedule:TStringList
 0050B52B    call        0047A610
 0050B530    mov         eax,dword ptr [ebp-18]
 0050B533    call        StrToInt
 0050B538    mov         edx,dword ptr [ebp-8]
 0050B53B    cmp         eax,dword ptr [edx+44]
>0050B53E    jl          0050B506
 0050B540    mov         eax,dword ptr [ebp-4]
 0050B543    mov         eax,dword ptr [eax+94];TCustomActionManager.FPrioritySchedule:TStringList
 0050B549    mov         edx,dword ptr [eax]
 0050B54B    call        dword ptr [edx+14];TStringList.sub_0047B778
 0050B54E    cmp         eax,dword ptr [ebp-14]
>0050B551    jne         0050B556
 0050B553    dec         dword ptr [ebp-14]
 0050B556    mov         edx,dword ptr [ebp-14]
 0050B559    mov         eax,dword ptr [ebp-4]
 0050B55C    mov         eax,dword ptr [eax+94];TCustomActionManager.FPrioritySchedule:TStringList
 0050B562    mov         ecx,dword ptr [eax]
 0050B564    call        dword ptr [ecx+18];TStringList.sub_0047B794
 0050B567    cmp         eax,dword ptr [ebp-10]
 0050B56A    setg        byte ptr [ebp-9]
 0050B56E    xor         eax,eax
 0050B570    pop         edx
 0050B571    pop         ecx
 0050B572    pop         ecx
 0050B573    mov         dword ptr fs:[eax],edx
 0050B576    push        50B58B
 0050B57B    lea         eax,[ebp-18]
 0050B57E    call        @LStrClr
 0050B583    ret
>0050B584    jmp         @HandleFinally
>0050B589    jmp         0050B57B
 0050B58B    mov         al,byte ptr [ebp-9]
 0050B58E    mov         esp,ebp
 0050B590    pop         ebp
 0050B591    ret
end;*}

//0050B594
function TActionManager.IsStoredPrioritySchedule(Value:TStringList):Boolean;
begin
{*
 0050B594    push        ebp
 0050B595    mov         ebp,esp
 0050B597    add         esp,0FFFFFFF4
 0050B59A    xor         edx,edx
 0050B59C    mov         dword ptr [ebp-0C],edx
 0050B59F    mov         dword ptr [ebp-4],eax
 0050B5A2    xor         eax,eax
 0050B5A4    push        ebp
 0050B5A5    push        50B5EA
 0050B5AA    push        dword ptr fs:[eax]
 0050B5AD    mov         dword ptr fs:[eax],esp
 0050B5B0    lea         edx,[ebp-0C]
 0050B5B3    mov         eax,dword ptr [ebp-4]
 0050B5B6    mov         eax,dword ptr [eax+94];TActionManager.FPrioritySchedule:TStringList
 0050B5BC    mov         ecx,dword ptr [eax]
 0050B5BE    call        dword ptr [ecx+1C];TStringList.sub_0047A6E8
 0050B5C1    mov         edx,dword ptr [ebp-0C]
 0050B5C4    mov         eax,[00541A98];^gvar_0050A338
 0050B5C9    call        00466420
 0050B5CE    test        eax,eax
 0050B5D0    setne       byte ptr [ebp-5]
 0050B5D4    xor         eax,eax
 0050B5D6    pop         edx
 0050B5D7    pop         ecx
 0050B5D8    pop         ecx
 0050B5D9    mov         dword ptr fs:[eax],edx
 0050B5DC    push        50B5F1
 0050B5E1    lea         eax,[ebp-0C]
 0050B5E4    call        @LStrClr
 0050B5E9    ret
>0050B5EA    jmp         @HandleFinally
>0050B5EF    jmp         0050B5E1
 0050B5F1    mov         al,byte ptr [ebp-5]
 0050B5F4    mov         esp,ebp
 0050B5F6    pop         ebp
 0050B5F7    ret
*}
end;

//0050B5F8
procedure TCustomActionManager.ResetActionBar(Index:Integer);
begin
{*
 0050B5F8    push        ebp
 0050B5F9    mov         ebp,esp
 0050B5FB    add         esp,0FFFFFFF4
 0050B5FE    mov         dword ptr [ebp-8],edx
 0050B601    mov         dword ptr [ebp-4],eax
 0050B604    mov         eax,dword ptr [ebp-4]
 0050B607    cmp         dword ptr [eax+88],0
>0050B60E    je          0050B675
 0050B610    mov         edx,dword ptr [ebp-8]
 0050B613    mov         eax,dword ptr [ebp-4]
 0050B616    mov         eax,dword ptr [eax+6C]
 0050B619    call        0050D5D0
 0050B61E    mov         eax,dword ptr [eax+0C]
 0050B621    mov         dword ptr [ebp-0C],eax
 0050B624    mov         edx,dword ptr [ebp-8]
 0050B627    mov         eax,dword ptr [ebp-4]
 0050B62A    mov         eax,dword ptr [eax+6C]
 0050B62D    call        0050D5D0
 0050B632    xor         edx,edx
 0050B634    call        TActionBarItem.SetActionBar
 0050B639    mov         edx,dword ptr [ebp-8]
 0050B63C    mov         eax,dword ptr [ebp-4]
 0050B63F    mov         eax,dword ptr [eax+88]
 0050B645    call        00479B7C
 0050B64A    push        eax
 0050B64B    mov         edx,dword ptr [ebp-8]
 0050B64E    mov         eax,dword ptr [ebp-4]
 0050B651    mov         eax,dword ptr [eax+6C]
 0050B654    call        00479B7C
 0050B659    pop         edx
 0050B65A    mov         ecx,dword ptr [eax]
 0050B65C    call        dword ptr [ecx+8]
 0050B65F    mov         edx,dword ptr [ebp-8]
 0050B662    mov         eax,dword ptr [ebp-4]
 0050B665    mov         eax,dword ptr [eax+6C]
 0050B668    call        0050D5D0
 0050B66D    mov         edx,dword ptr [ebp-0C]
 0050B670    call        TActionBarItem.SetActionBar
 0050B675    mov         esp,ebp
 0050B677    pop         ebp
 0050B678    ret
*}
end;

//0050B67C
procedure TActionManager.SetLinkedActionLists(Value:TActionListCollection);
begin
{*
 0050B67C    push        ebp
 0050B67D    mov         ebp,esp
 0050B67F    add         esp,0FFFFFFF8
 0050B682    mov         dword ptr [ebp-8],edx
 0050B685    mov         dword ptr [ebp-4],eax
 0050B688    mov         eax,dword ptr [ebp-4]
 0050B68B    cmp         dword ptr [eax+84],0;TActionManager.FLinkedActionLists:TActionListCollection
>0050B692    jne         0050B6B2
 0050B694    mov         eax,[00508CD0];TActionListItem
 0050B699    push        eax
 0050B69A    mov         ecx,dword ptr [ebp-4]
 0050B69D    mov         dl,1
 0050B69F    mov         eax,[00508DD0];TActionListCollection
 0050B6A4    call        TWorkAreas.Create;TActionListCollection.Create
 0050B6A9    mov         edx,dword ptr [ebp-4]
 0050B6AC    mov         dword ptr [edx+84],eax;TActionManager.FLinkedActionLists:TActionListCollection
 0050B6B2    mov         edx,dword ptr [ebp-8]
 0050B6B5    mov         eax,dword ptr [ebp-4]
 0050B6B8    mov         eax,dword ptr [eax+84];TActionManager.FLinkedActionLists:TActionListCollection
 0050B6BE    mov         ecx,dword ptr [eax]
 0050B6C0    call        dword ptr [ecx+8];TActionListCollection.sub_00479958
 0050B6C3    pop         ecx
 0050B6C4    pop         ecx
 0050B6C5    pop         ebp
 0050B6C6    ret
*}
end;

//0050B6C8
procedure sub_0050B6C8;
begin
{*
 0050B6C8    push        ebp
 0050B6C9    mov         ebp,esp
 0050B6CB    push        ecx
 0050B6CC    mov         dword ptr [ebp-4],eax
 0050B6CF    mov         eax,dword ptr [ebp-4]
 0050B6D2    call        004DAF2C
 0050B6D7    mov         eax,dword ptr [ebp-4]
 0050B6DA    cmp         dword ptr [eax+6C],0;TCustomActionManager.FActionBars:TActionBars
>0050B6DE    je          0050B6F5
 0050B6E0    push        0
 0050B6E2    push        0
 0050B6E4    mov         eax,dword ptr [ebp-4]
 0050B6E7    mov         edx,dword ptr [eax+6C];TCustomActionManager.FActionBars:TActionBars
 0050B6EA    mov         eax,dword ptr [ebp-4]
 0050B6ED    mov         eax,dword ptr [eax+6C];TCustomActionManager.FActionBars:TActionBars
 0050B6F0    call        0050C668
 0050B6F5    pop         ecx
 0050B6F6    pop         ebp
 0050B6F7    ret
*}
end;

//0050B6F8
procedure TCustomActionManager.sub_0050B6F8;
begin
{*
 0050B6F8    push        ebp
 0050B6F9    mov         ebp,esp
 0050B6FB    add         esp,0FFFFFFF8
 0050B6FE    push        ebx
 0050B6FF    mov         dword ptr [ebp-4],eax
 0050B702    mov         eax,[005094AC];TActionClients
 0050B707    mov         dword ptr [ebp-8],eax
 0050B70A    mov         eax,dword ptr [ebp-4]
 0050B70D    cmp         word ptr [eax+0BA],0;TCustomActionManager.?fBA:word
>0050B715    je          0050B72C
 0050B717    lea         ecx,[ebp-8]
 0050B71A    mov         ebx,dword ptr [ebp-4]
 0050B71D    mov         edx,dword ptr [ebp-4]
 0050B720    mov         eax,dword ptr [ebx+0BC];TCustomActionManager.?fBC:dword
 0050B726    call        dword ptr [ebx+0B8];TCustomActionManager.FOnGetClientsClass
 0050B72C    cmp         dword ptr [ebp-8],0
>0050B730    jne         0050B73A
 0050B732    mov         eax,[005094AC];TActionClients
 0050B737    mov         dword ptr [ebp-8],eax
 0050B73A    mov         eax,dword ptr [ebp-8]
 0050B73D    pop         ebx
 0050B73E    pop         ecx
 0050B73F    pop         ecx
 0050B740    pop         ebp
 0050B741    ret
*}
end;

//0050B744
procedure TCustomActionManager.sub_0050B744;
begin
{*
 0050B744    push        ebp
 0050B745    mov         ebp,esp
 0050B747    add         esp,0FFFFFFF8
 0050B74A    push        ebx
 0050B74B    mov         dword ptr [ebp-4],eax
 0050B74E    mov         eax,[00509710];TActionClientItem
 0050B753    mov         dword ptr [ebp-8],eax
 0050B756    mov         eax,dword ptr [ebp-4]
 0050B759    cmp         word ptr [eax+0B2],0;TCustomActionManager.?fB2:word
>0050B761    je          0050B778
 0050B763    lea         ecx,[ebp-8]
 0050B766    mov         ebx,dword ptr [ebp-4]
 0050B769    mov         edx,dword ptr [ebp-4]
 0050B76C    mov         eax,dword ptr [ebx+0B4];TCustomActionManager.?fB4:dword
 0050B772    call        dword ptr [ebx+0B0];TCustomActionManager.FOnGetClientItemClass
 0050B778    cmp         dword ptr [ebp-8],0
>0050B77C    jne         0050B786
 0050B77E    mov         eax,[00509710];TActionClientItem
 0050B783    mov         dword ptr [ebp-8],eax
 0050B786    mov         eax,dword ptr [ebp-8]
 0050B789    pop         ebx
 0050B78A    pop         ecx
 0050B78B    pop         ecx
 0050B78C    pop         ebp
 0050B78D    ret
*}
end;

//0050B790
procedure TCustomActionManager.sub_0050B790;
begin
{*
 0050B790    push        ebp
 0050B791    mov         ebp,esp
 0050B793    add         esp,0FFFFFFF8
 0050B796    push        ebx
 0050B797    mov         dword ptr [ebp-4],eax
 0050B79A    mov         eax,[00509328];TActionBars
 0050B79F    mov         dword ptr [ebp-8],eax
 0050B7A2    mov         eax,dword ptr [ebp-4]
 0050B7A5    cmp         word ptr [eax+0AA],0;TCustomActionManager.?fAA:word
>0050B7AD    je          0050B7C4
 0050B7AF    mov         ebx,dword ptr [ebp-4]
 0050B7B2    mov         ecx,dword ptr [ebp-8]
 0050B7B5    mov         edx,dword ptr [ebp-4]
 0050B7B8    mov         eax,dword ptr [ebx+0AC];TCustomActionManager.?fAC:dword
 0050B7BE    call        dword ptr [ebx+0A8];TCustomActionManager.FOnGetBarsClass
 0050B7C4    cmp         dword ptr [ebp-8],0
>0050B7C8    jne         0050B7D2
 0050B7CA    mov         eax,[00509328];TActionBars
 0050B7CF    mov         dword ptr [ebp-8],eax
 0050B7D2    mov         eax,dword ptr [ebp-8]
 0050B7D5    pop         ebx
 0050B7D6    pop         ecx
 0050B7D7    pop         ecx
 0050B7D8    pop         ebp
 0050B7D9    ret
*}
end;

//0050B7DC
procedure TCustomActionManager.sub_0050B7DC;
begin
{*
 0050B7DC    push        ebp
 0050B7DD    mov         ebp,esp
 0050B7DF    add         esp,0FFFFFFF8
 0050B7E2    push        ebx
 0050B7E3    mov         dword ptr [ebp-4],eax
 0050B7E6    mov         eax,[00509200];TActionBarItem
 0050B7EB    mov         dword ptr [ebp-8],eax
 0050B7EE    mov         eax,dword ptr [ebp-4]
 0050B7F1    cmp         word ptr [eax+0A2],0;TCustomActionManager.?fA2:word
>0050B7F9    je          0050B810
 0050B7FB    lea         ecx,[ebp-8]
 0050B7FE    mov         ebx,dword ptr [ebp-4]
 0050B801    mov         edx,dword ptr [ebp-4]
 0050B804    mov         eax,dword ptr [ebx+0A4];TCustomActionManager.?fA4:dword
 0050B80A    call        dword ptr [ebx+0A0];TCustomActionManager.FOnGetBarItemClass
 0050B810    cmp         dword ptr [ebp-8],0
>0050B814    jne         0050B81E
 0050B816    mov         eax,[00509200];TActionBarItem
 0050B81B    mov         dword ptr [ebp-8],eax
 0050B81E    mov         eax,dword ptr [ebp-8]
 0050B821    pop         ebx
 0050B822    pop         ecx
 0050B823    pop         ecx
 0050B824    pop         ebp
 0050B825    ret
*}
end;

//0050B828
function TActionManager.IsStoredLinkedActionLists(Value:TActionListCollection):Boolean;
begin
{*
 0050B828    push        ebp
 0050B829    mov         ebp,esp
 0050B82B    add         esp,0FFFFFFF8
 0050B82E    mov         dword ptr [ebp-4],eax
 0050B831    mov         eax,dword ptr [ebp-4]
 0050B834    cmp         dword ptr [eax+84],0;TActionManager.FLinkedActionLists:TActionListCollection
>0050B83B    je          0050B84E
 0050B83D    mov         eax,dword ptr [ebp-4]
 0050B840    call        TActionManager.GetLinkedActionLists
 0050B845    call        00479B60
 0050B84A    test        eax,eax
>0050B84C    jg          0050B852
 0050B84E    xor         eax,eax
>0050B850    jmp         0050B854
 0050B852    mov         al,1
 0050B854    mov         byte ptr [ebp-5],al
 0050B857    mov         al,byte ptr [ebp-5]
 0050B85A    pop         ecx
 0050B85B    pop         ecx
 0050B85C    pop         ebp
 0050B85D    ret
*}
end;

//0050B860
function TActionManager.IsStoredActionBars(Value:TActionBars):Boolean;
begin
{*
 0050B860    push        ebp
 0050B861    mov         ebp,esp
 0050B863    add         esp,0FFFFFFF8
 0050B866    mov         dword ptr [ebp-4],eax
 0050B869    mov         eax,dword ptr [ebp-4]
 0050B86C    mov         eax,dword ptr [eax+6C];TActionManager.FActionBars:TActionBars
 0050B86F    call        00479B60
 0050B874    test        eax,eax
 0050B876    setg        byte ptr [ebp-5]
 0050B87A    mov         al,byte ptr [ebp-5]
 0050B87D    pop         ecx
 0050B87E    pop         ecx
 0050B87F    pop         ebp
 0050B880    ret
*}
end;

//0050B884
{*function TActionManager.GetLinkedActionLists:?;
begin
 0050B884    push        ebp
 0050B885    mov         ebp,esp
 0050B887    add         esp,0FFFFFFF8
 0050B88A    mov         dword ptr [ebp-4],eax
 0050B88D    mov         eax,dword ptr [ebp-4]
 0050B890    cmp         dword ptr [eax+84],0;TActionManager.FLinkedActionLists:TActionListCollection
>0050B897    jne         0050B8B7
 0050B899    mov         eax,[00508CD0];TActionListItem
 0050B89E    push        eax
 0050B89F    mov         ecx,dword ptr [ebp-4]
 0050B8A2    mov         dl,1
 0050B8A4    mov         eax,[00508DD0];TActionListCollection
 0050B8A9    call        TWorkAreas.Create;TActionListCollection.Create
 0050B8AE    mov         edx,dword ptr [ebp-4]
 0050B8B1    mov         dword ptr [edx+84],eax;TActionManager.FLinkedActionLists:TActionListCollection
 0050B8B7    mov         eax,dword ptr [ebp-4]
 0050B8BA    mov         eax,dword ptr [eax+84];TActionManager.FLinkedActionLists:TActionListCollection
 0050B8C0    mov         dword ptr [ebp-8],eax
 0050B8C3    mov         eax,dword ptr [ebp-8]
 0050B8C6    pop         ecx
 0050B8C7    pop         ecx
 0050B8C8    pop         ebp
 0050B8C9    ret
end;*}

//0050B8CC
procedure TCustomActionManager.ReadStyleProp(Reader:TReader);
begin
{*
 0050B8CC    push        ebp
 0050B8CD    mov         ebp,esp
 0050B8CF    add         esp,0FFFFFFF4
 0050B8D2    push        ebx
 0050B8D3    push        esi
 0050B8D4    push        edi
 0050B8D5    xor         ecx,ecx
 0050B8D7    mov         dword ptr [ebp-0C],ecx
 0050B8DA    mov         dword ptr [ebp-8],edx
 0050B8DD    mov         dword ptr [ebp-4],eax
 0050B8E0    xor         eax,eax
 0050B8E2    push        ebp
 0050B8E3    push        50B99F
 0050B8E8    push        dword ptr fs:[eax]
 0050B8EB    mov         dword ptr fs:[eax],esp
 0050B8EE    lea         edx,[ebp-0C]
 0050B8F1    mov         eax,dword ptr [ebp-8]
 0050B8F4    call        TReader.ReadString
 0050B8F9    cmp         dword ptr [ebp-0C],0
>0050B8FD    je          0050B989
 0050B903    xor         eax,eax
 0050B905    push        ebp
 0050B906    push        50B93E
 0050B90B    push        dword ptr fs:[eax]
 0050B90E    mov         dword ptr fs:[eax],esp
 0050B911    mov         edx,dword ptr [ebp-0C]
 0050B914    mov         eax,[0055E028];gvar_0055E028
 0050B919    mov         ecx,dword ptr [eax]
 0050B91B    call        dword ptr [ecx+54]
 0050B91E    mov         edx,eax
 0050B920    mov         eax,[0055E028];gvar_0055E028
 0050B925    call        00515B18
 0050B92A    mov         edx,eax
 0050B92C    mov         eax,dword ptr [ebp-4]
 0050B92F    call        TActionManager.SetStyle
 0050B934    xor         eax,eax
 0050B936    pop         edx
 0050B937    pop         ecx
 0050B938    pop         ecx
 0050B939    mov         dword ptr fs:[eax],edx
>0050B93C    jmp         0050B989
>0050B93E    jmp         @HandleAnyException
 0050B943    mov         eax,dword ptr [ebp-4]
 0050B946    test        byte ptr [eax+1C],10
>0050B94A    je          0050B97F
 0050B94C    mov         eax,[0055B3E0];^gvar_00540CE0
 0050B951    cmp         word ptr [eax+2],0
>0050B956    je          0050B96C
 0050B958    call        ExceptObject
 0050B95D    mov         edx,eax
 0050B95F    mov         ebx,dword ptr ds:[55B3E0];^gvar_00540CE0
 0050B965    mov         eax,dword ptr [ebx+4]
 0050B968    call        dword ptr [ebx]
>0050B96A    jmp         0050B984
 0050B96C    call        ExceptAddr
 0050B971    push        eax
 0050B972    call        ExceptObject
 0050B977    pop         edx
 0050B978    call        0046A9B0
>0050B97D    jmp         0050B984
 0050B97F    call        @RaiseAgain
 0050B984    call        @DoneExcept
 0050B989    xor         eax,eax
 0050B98B    pop         edx
 0050B98C    pop         ecx
 0050B98D    pop         ecx
 0050B98E    mov         dword ptr fs:[eax],edx
 0050B991    push        50B9A6
 0050B996    lea         eax,[ebp-0C]
 0050B999    call        @LStrClr
 0050B99E    ret
>0050B99F    jmp         @HandleFinally
>0050B9A4    jmp         0050B996
 0050B9A6    pop         edi
 0050B9A7    pop         esi
 0050B9A8    pop         ebx
 0050B9A9    mov         esp,ebp
 0050B9AB    pop         ebp
 0050B9AC    ret
*}
end;

//0050B9B0
procedure TCustomActionManager.WriteStyleProp(Writer:TWriter);
begin
{*
 0050B9B0    push        ebp
 0050B9B1    mov         ebp,esp
 0050B9B3    add         esp,0FFFFFFF0
 0050B9B6    xor         ecx,ecx
 0050B9B8    mov         dword ptr [ebp-10],ecx
 0050B9BB    mov         dword ptr [ebp-8],edx
 0050B9BE    mov         dword ptr [ebp-4],eax
 0050B9C1    xor         eax,eax
 0050B9C3    push        ebp
 0050B9C4    push        50BA24
 0050B9C9    push        dword ptr fs:[eax]
 0050B9CC    mov         dword ptr fs:[eax],esp
 0050B9CF    mov         eax,dword ptr [ebp-4]
 0050B9D2    cmp         dword ptr [eax+0C8],0
>0050B9D9    je          0050B9E9
 0050B9DB    mov         eax,dword ptr [ebp-4]
 0050B9DE    mov         eax,dword ptr [eax+0C8]
 0050B9E4    mov         dword ptr [ebp-0C],eax
>0050B9E7    jmp         0050B9F8
 0050B9E9    xor         edx,edx
 0050B9EB    mov         eax,[0055E028];gvar_0055E028
 0050B9F0    call        00515B18
 0050B9F5    mov         dword ptr [ebp-0C],eax
 0050B9F8    lea         edx,[ebp-10]
 0050B9FB    mov         eax,dword ptr [ebp-0C]
 0050B9FE    mov         ecx,dword ptr [eax]
 0050BA00    call        dword ptr [ecx+8]
 0050BA03    mov         edx,dword ptr [ebp-10]
 0050BA06    mov         eax,dword ptr [ebp-8]
 0050BA09    call        00482400
 0050BA0E    xor         eax,eax
 0050BA10    pop         edx
 0050BA11    pop         ecx
 0050BA12    pop         ecx
 0050BA13    mov         dword ptr fs:[eax],edx
 0050BA16    push        50BA2B
 0050BA1B    lea         eax,[ebp-10]
 0050BA1E    call        @LStrClr
 0050BA23    ret
>0050BA24    jmp         @HandleFinally
>0050BA29    jmp         0050BA1B
 0050BA2B    mov         esp,ebp
 0050BA2D    pop         ebp
 0050BA2E    ret
*}
end;

//0050BA30
procedure TCustomActionManager.AfterConstruction;
begin
{*
 0050BA30    push        ebp
 0050BA31    mov         ebp,esp
 0050BA33    push        ecx
 0050BA34    mov         dword ptr [ebp-4],eax;{TObject.AfterConstruction}
 0050BA37    mov         eax,dword ptr [ebp-4]
 0050BA3A    call        TCustomVariantType.AfterConstruction
 0050BA3F    mov         eax,dword ptr [ebp-4]
 0050BA42    test        byte ptr [eax+1C],10
>0050BA46    je          0050BA76
 0050BA48    mov         eax,dword ptr [ebp-4]
 0050BA4B    test        byte ptr [eax+1C],1;{ActionBarStyles:TActionBarStyleList}
>0050BA4F    jne         0050BA76
 0050BA51    mov         edx,dword ptr ds:[55E02C]
 0050BA57    mov         eax,[0055E028];gvar_0055E028{ActionBarStyles:TActionBarStyleList}
 0050BA5C    mov         ecx,dword ptr [eax]
 0050BA5E    call        dword ptr [ecx+54]
 0050BA61    mov         edx,eax
 0050BA63    mov         eax,[0055E028];gvar_0055E028
 0050BA68    call        00515B18
 0050BA6D    mov         edx,dword ptr [ebp-4]
 0050BA70    mov         dword ptr [edx+0C8],eax
 0050BA76    pop         ecx
 0050BA77    pop         ebp
 0050BA78    ret
*}
end;

//0050BA7C
procedure TActionManager.SetStyle(Value:TActionBarStyle);
begin
{*
 0050BA7C    push        ebp
 0050BA7D    mov         ebp,esp
 0050BA7F    add         esp,0FFFFFFF0
 0050BA82    push        ebx
 0050BA83    mov         dword ptr [ebp-8],edx
 0050BA86    mov         dword ptr [ebp-4],eax
 0050BA89    mov         eax,dword ptr [ebp-4]
 0050BA8C    mov         eax,dword ptr [eax+0C8];TActionManager.FStyle:TActionBarStyle
 0050BA92    cmp         eax,dword ptr [ebp-8]
>0050BA95    je          0050BB90
 0050BA9B    mov         eax,dword ptr [ebp-8]
 0050BA9E    mov         edx,dword ptr [ebp-4]
 0050BAA1    mov         dword ptr [edx+0C8],eax;TActionManager.FStyle:TActionBarStyle
 0050BAA7    mov         eax,dword ptr [ebp-4]
 0050BAAA    mov         eax,dword ptr [eax+6C];TActionManager.FActionBars:TActionBars
 0050BAAD    call        00479B60
 0050BAB2    dec         eax
 0050BAB3    test        eax,eax
>0050BAB5    jl          0050BB61
 0050BABB    inc         eax
 0050BABC    mov         dword ptr [ebp-10],eax
 0050BABF    mov         dword ptr [ebp-0C],0
 0050BAC6    mov         edx,dword ptr [ebp-0C]
 0050BAC9    mov         eax,dword ptr [ebp-4]
 0050BACC    mov         eax,dword ptr [eax+6C];TActionManager.FActionBars:TActionBars
 0050BACF    call        0050D5D0
 0050BAD4    cmp         dword ptr [eax+0C],0
>0050BAD8    je          0050BB55
 0050BADA    mov         edx,dword ptr [ebp-0C]
 0050BADD    mov         eax,dword ptr [ebp-4]
 0050BAE0    mov         eax,dword ptr [eax+6C];TActionManager.FActionBars:TActionBars
 0050BAE3    call        0050D5D0
 0050BAE8    mov         eax,dword ptr [eax+0C]
 0050BAEB    mov         edx,dword ptr [eax]
 0050BAED    call        dword ptr [edx+144]
 0050BAF3    mov         edx,dword ptr [ebp-0C]
 0050BAF6    mov         eax,dword ptr [ebp-4]
 0050BAF9    mov         eax,dword ptr [eax+6C];TActionManager.FActionBars:TActionBars
 0050BAFC    call        0050D5D0
 0050BB01    mov         eax,dword ptr [eax+0C]
 0050BB04    call        TActionToolBar.GetColorMap
 0050BB09    mov         ebx,eax
 0050BB0B    mov         edx,dword ptr [ebp-0C]
 0050BB0E    mov         eax,dword ptr [ebp-4]
 0050BB11    mov         eax,dword ptr [eax+6C];TActionManager.FActionBars:TActionBars
 0050BB14    call        0050D5D0
 0050BB19    mov         eax,dword ptr [eax+0C]
 0050BB1C    cmp         ebx,dword ptr [eax+274]
>0050BB22    jne         0050BB3F
 0050BB24    mov         edx,dword ptr [ebp-0C]
 0050BB27    mov         eax,dword ptr [ebp-4]
 0050BB2A    mov         eax,dword ptr [eax+6C];TActionManager.FActionBars:TActionBars
 0050BB2D    call        0050D5D0
 0050BB32    mov         eax,dword ptr [eax+0C]
 0050BB35    xor         edx,edx
 0050BB37    mov         ecx,dword ptr [eax]
 0050BB39    call        dword ptr [ecx+12C]
 0050BB3F    mov         edx,dword ptr [ebp-0C]
 0050BB42    mov         eax,dword ptr [ebp-4]
 0050BB45    mov         eax,dword ptr [eax+6C];TActionManager.FActionBars:TActionBars
 0050BB48    call        0050D5D0
 0050BB4D    mov         eax,dword ptr [eax+0C]
 0050BB50    mov         edx,dword ptr [eax]
 0050BB52    call        dword ptr [edx+7C]
 0050BB55    inc         dword ptr [ebp-0C]
 0050BB58    dec         dword ptr [ebp-10]
>0050BB5B    jne         0050BAC6
 0050BB61    mov         eax,dword ptr [ebp-4]
 0050BB64    cmp         word ptr [eax+0C2],0;TActionManager.?fC2:word
>0050BB6C    je          0050BB80
 0050BB6E    mov         ebx,dword ptr [ebp-4]
 0050BB71    mov         edx,dword ptr [ebp-4]
 0050BB74    mov         eax,dword ptr [ebx+0C4];TActionManager.?fC4:dword
 0050BB7A    call        dword ptr [ebx+0C0];TActionManager.FOnStyleChanged
 0050BB80    mov         eax,dword ptr [ebp-4]
 0050BB83    test        byte ptr [eax+1C],10;TActionManager.FComponentState:TComponentState
>0050BB87    je          0050BB90
 0050BB89    xor         eax,eax
 0050BB8B    call        0050A550
 0050BB90    pop         ebx
 0050BB91    mov         esp,ebp
 0050BB93    pop         ebp
 0050BB94    ret
*}
end;

//0050BB98
{*procedure sub_0050BB98(?:?);
begin
 0050BB98    push        ebp
 0050BB99    mov         ebp,esp
 0050BB9B    add         esp,0FFFFFFF4
 0050BB9E    xor         ecx,ecx
 0050BBA0    mov         dword ptr [ebp-0C],ecx
 0050BBA3    mov         dword ptr [ebp-8],edx
 0050BBA6    mov         dword ptr [ebp-4],eax
 0050BBA9    xor         eax,eax
 0050BBAB    push        ebp
 0050BBAC    push        50BC5C
 0050BBB1    push        dword ptr fs:[eax]
 0050BBB4    mov         dword ptr fs:[eax],esp
 0050BBB7    mov         edx,dword ptr [ebp-8]
 0050BBBA    mov         eax,dword ptr [ebp-4]
 0050BBBD    call        004790A8
 0050BBC2    mov         eax,dword ptr [ebp-8]
 0050BBC5    mov         edx,dword ptr ds:[508CD0];TActionListItem
 0050BBCB    call        @IsClass
 0050BBD0    test        al,al
>0050BBD2    je          0050BC46
 0050BBD4    mov         eax,dword ptr [ebp-4]
 0050BBD7    cmp         dword ptr [eax+4],0;TActionListItem.FCollection:TCollection
>0050BBDB    je          0050BBE8
 0050BBDD    mov         eax,dword ptr [ebp-4]
 0050BBE0    mov         eax,dword ptr [eax+4];TActionListItem.FCollection:TCollection
 0050BBE3    mov         edx,dword ptr [eax]
 0050BBE5    call        dword ptr [edx+20];TCollection.sub_004799FC
 0050BBE8    xor         eax,eax
 0050BBEA    push        ebp
 0050BBEB    push        50BC3F
 0050BBF0    push        dword ptr fs:[eax]
 0050BBF3    mov         dword ptr fs:[eax],esp
 0050BBF6    mov         eax,dword ptr [ebp-8]
 0050BBF9    mov         edx,dword ptr [eax+0C]
 0050BBFC    mov         eax,dword ptr [ebp-4]
 0050BBFF    call        TActionListItem.SetActionList
 0050BC04    lea         edx,[ebp-0C]
 0050BC07    mov         eax,dword ptr [ebp-8]
 0050BC0A    call        TActionListItem.GetCaption
 0050BC0F    mov         edx,dword ptr [ebp-0C]
 0050BC12    mov         eax,dword ptr [ebp-4]
 0050BC15    add         eax,10;TActionListItem.Caption:String
 0050BC18    call        @LStrAsg
 0050BC1D    xor         eax,eax
 0050BC1F    pop         edx
 0050BC20    pop         ecx
 0050BC21    pop         ecx
 0050BC22    mov         dword ptr fs:[eax],edx
 0050BC25    push        50BC46
 0050BC2A    mov         eax,dword ptr [ebp-4]
 0050BC2D    cmp         dword ptr [eax+4],0;TActionListItem.FCollection:TCollection
>0050BC31    je          0050BC3E
 0050BC33    mov         eax,dword ptr [ebp-4]
 0050BC36    mov         eax,dword ptr [eax+4];TActionListItem.FCollection:TCollection
 0050BC39    mov         edx,dword ptr [eax]
 0050BC3B    call        dword ptr [edx+24];TCollection.sub_00479A94
 0050BC3E    ret
>0050BC3F    jmp         @HandleFinally
>0050BC44    jmp         0050BC2A
 0050BC46    xor         eax,eax
 0050BC48    pop         edx
 0050BC49    pop         ecx
 0050BC4A    pop         ecx
 0050BC4B    mov         dword ptr fs:[eax],edx
 0050BC4E    push        50BC63
 0050BC53    lea         eax,[ebp-0C]
 0050BC56    call        @LStrClr
 0050BC5B    ret
>0050BC5C    jmp         @HandleFinally
>0050BC61    jmp         0050BC53
 0050BC63    mov         esp,ebp
 0050BC65    pop         ebp
 0050BC66    ret
end;*}

//0050BC68
{*procedure TActionListItem.GetCaption(?:?);
begin
 0050BC68    push        ebp
 0050BC69    mov         ebp,esp
 0050BC6B    add         esp,0FFFFFFF8
 0050BC6E    mov         dword ptr [ebp-8],edx
 0050BC71    mov         dword ptr [ebp-4],eax
 0050BC74    mov         eax,dword ptr [ebp-8]
 0050BC77    mov         edx,dword ptr [ebp-4]
 0050BC7A    mov         edx,dword ptr [edx+10];TActionListItem.Caption:String
 0050BC7D    call        @LStrAsg
 0050BC82    mov         eax,dword ptr [ebp-8]
 0050BC85    mov         eax,dword ptr [eax]
 0050BC87    call        @DynArrayLength
 0050BC8C    test        eax,eax
>0050BC8E    jne         0050BCB9
 0050BC90    mov         eax,dword ptr [ebp-4]
 0050BC93    cmp         dword ptr [eax+0C],0;TActionListItem.ActionList:TCustomActionList
>0050BC97    je          0050BCAC
 0050BC99    mov         eax,dword ptr [ebp-8]
 0050BC9C    mov         edx,dword ptr [ebp-4]
 0050BC9F    mov         edx,dword ptr [edx+0C];TActionListItem.ActionList:TCustomActionList
 0050BCA2    mov         edx,dword ptr [edx+8];TCustomActionList.Name:TComponentName
 0050BCA5    call        @LStrAsg
>0050BCAA    jmp         0050BCB9
 0050BCAC    mov         edx,dword ptr [ebp-8]
 0050BCAF    mov         eax,[0055B454];^SNoName:TResStringRec
 0050BCB4    call        LoadResString
 0050BCB9    pop         ecx
 0050BCBA    pop         ecx
 0050BCBB    pop         ebp
 0050BCBC    ret
end;*}

//0050BCC0
{*procedure sub_0050BCC0(?:?);
begin
 0050BCC0    push        ebp
 0050BCC1    mov         ebp,esp
 0050BCC3    add         esp,0FFFFFFF8
 0050BCC6    mov         dword ptr [ebp-8],edx
 0050BCC9    mov         dword ptr [ebp-4],eax
 0050BCCC    mov         eax,dword ptr [ebp-4]
 0050BCCF    cmp         dword ptr [eax+0C],0;TActionListItem.ActionList:TCustomActionList
>0050BCD3    je          0050BCE2
 0050BCD5    mov         edx,dword ptr [ebp-8]
 0050BCD8    mov         eax,dword ptr [ebp-4]
 0050BCDB    call        TActionListItem.GetCaption
>0050BCE0    jmp         0050BCED
 0050BCE2    mov         edx,dword ptr [ebp-8]
 0050BCE5    mov         eax,dword ptr [ebp-4]
 0050BCE8    call        004796AC
 0050BCED    pop         ecx
 0050BCEE    pop         ecx
 0050BCEF    pop         ebp
 0050BCF0    ret
end;*}

//0050BCF4
{*function sub_0050BCF4(?:TActionListItem):?;
begin
 0050BCF4    push        ebp
 0050BCF5    mov         ebp,esp
 0050BCF7    add         esp,0FFFFFFF8
 0050BCFA    mov         dword ptr [ebp-4],eax
 0050BCFD    mov         eax,dword ptr [ebp-4]
 0050BD00    mov         eax,dword ptr [eax+4]
 0050BD03    mov         dword ptr [ebp-8],eax
 0050BD06    mov         eax,dword ptr [ebp-8]
 0050BD09    pop         ecx
 0050BD0A    pop         ecx
 0050BD0B    pop         ebp
 0050BD0C    ret
end;*}

//0050BD10
procedure TActionListItem.SetActionList(Value:TCustomActionList);
begin
{*
 0050BD10    push        ebp
 0050BD11    mov         ebp,esp
 0050BD13    add         esp,0FFFFFFF4
 0050BD16    xor         ecx,ecx
 0050BD18    mov         dword ptr [ebp-0C],ecx
 0050BD1B    mov         dword ptr [ebp-8],edx
 0050BD1E    mov         dword ptr [ebp-4],eax
 0050BD21    xor         eax,eax
 0050BD23    push        ebp
 0050BD24    push        50BDA6
 0050BD29    push        dword ptr fs:[eax]
 0050BD2C    mov         dword ptr fs:[eax],esp
 0050BD2F    mov         eax,dword ptr [ebp-4]
 0050BD32    call        0050BCF4
 0050BD37    call        0050BDB4
 0050BD3C    cmp         eax,dword ptr [ebp-8]
>0050BD3F    jne         0050BD62
 0050BD41    lea         edx,[ebp-0C]
 0050BD44    mov         eax,[0055B518];^SCirularReferencesNotAllowed:TResStringRec
 0050BD49    call        LoadResString
 0050BD4E    mov         ecx,dword ptr [ebp-0C]
 0050BD51    mov         dl,1
 0050BD53    mov         eax,[004653B4];Exception
 0050BD58    call        Exception.Create;Exception.Create
 0050BD5D    call        @RaiseExcept
 0050BD62    mov         eax,dword ptr [ebp-4]
 0050BD65    mov         eax,dword ptr [eax+0C];TActionListItem.ActionList:TCustomActionList
 0050BD68    cmp         eax,dword ptr [ebp-8]
>0050BD6B    je          0050BD90
 0050BD6D    mov         eax,dword ptr [ebp-8]
 0050BD70    mov         edx,dword ptr [ebp-4]
 0050BD73    mov         dword ptr [edx+0C],eax;TActionListItem.ActionList:TCustomActionList
 0050BD76    mov         eax,dword ptr [ebp-4]
 0050BD79    call        0050BCF4
 0050BD7E    call        0050BDB4
 0050BD83    mov         edx,eax
 0050BD85    mov         eax,dword ptr [ebp-4]
 0050BD88    mov         eax,dword ptr [eax+0C];TActionListItem.ActionList:TCustomActionList
 0050BD8B    call        00483020
 0050BD90    xor         eax,eax
 0050BD92    pop         edx
 0050BD93    pop         ecx
 0050BD94    pop         ecx
 0050BD95    mov         dword ptr fs:[eax],edx
 0050BD98    push        50BDAD
 0050BD9D    lea         eax,[ebp-0C]
 0050BDA0    call        @LStrClr
 0050BDA5    ret
>0050BDA6    jmp         @HandleFinally
>0050BDAB    jmp         0050BD9D
 0050BDAD    mov         esp,ebp
 0050BDAF    pop         ebp
 0050BDB0    ret
*}
end;

//0050BDB4
{*function sub_0050BDB4(?:?):?;
begin
 0050BDB4    push        ebp
 0050BDB5    mov         ebp,esp
 0050BDB7    add         esp,0FFFFFFF8
 0050BDBA    mov         dword ptr [ebp-4],eax
 0050BDBD    mov         eax,dword ptr [ebp-4]
 0050BDC0    call        00479F38
 0050BDC5    mov         dword ptr [ebp-8],eax
 0050BDC8    mov         eax,dword ptr [ebp-8]
 0050BDCB    pop         ecx
 0050BDCC    pop         ecx
 0050BDCD    pop         ebp
 0050BDCE    ret
end;*}

//0050BDD0
{*function sub_0050BDD0(?:TActionListCollection; ?:?):?;
begin
 0050BDD0    push        ebp
 0050BDD1    mov         ebp,esp
 0050BDD3    add         esp,0FFFFFFF4
 0050BDD6    mov         dword ptr [ebp-8],edx
 0050BDD9    mov         dword ptr [ebp-4],eax
 0050BDDC    mov         edx,dword ptr [ebp-8]
 0050BDDF    mov         eax,dword ptr [ebp-4]
 0050BDE2    call        00479B7C
 0050BDE7    mov         dword ptr [ebp-0C],eax
 0050BDEA    mov         eax,dword ptr [ebp-0C]
 0050BDED    mov         esp,ebp
 0050BDEF    pop         ebp
 0050BDF0    ret
end;*}

//0050BDF4
{*function sub_0050BDF4(?:TActionBars; ?:?):?;
begin
 0050BDF4    push        ebp
 0050BDF5    mov         ebp,esp
 0050BDF7    add         esp,0FFFFFFF4
 0050BDFA    mov         dword ptr [ebp-8],edx
 0050BDFD    mov         dword ptr [ebp-4],eax
 0050BE00    mov         edx,dword ptr [ebp-8]
 0050BE03    mov         eax,dword ptr [ebp-4]
 0050BE06    call        00479B7C
 0050BE0B    mov         dword ptr [ebp-0C],eax
 0050BE0E    mov         eax,dword ptr [ebp-0C]
 0050BE11    mov         esp,ebp
 0050BE13    pop         ebp
 0050BE14    ret
end;*}

//0050BE18
{*function sub_0050BE18(?:TCollection):?;
begin
 0050BE18    push        ebp
 0050BE19    mov         ebp,esp
 0050BE1B    add         esp,0FFFFFFF8
 0050BE1E    mov         dword ptr [ebp-4],eax
 0050BE21    mov         eax,dword ptr [ebp-4]
 0050BE24    call        00479F38
 0050BE29    mov         edx,dword ptr ds:[5089A4];TActionManager
 0050BE2F    call        @AsClass
 0050BE34    mov         dword ptr [ebp-8],eax
 0050BE37    mov         eax,dword ptr [ebp-8]
 0050BE3A    pop         ecx
 0050BE3B    pop         ecx
 0050BE3C    pop         ebp
 0050BE3D    ret
end;*}

//0050BE40
{*function sub_0050BE40(?:?; ?:?):?;
begin
 0050BE40    push        ebp
 0050BE41    mov         ebp,esp
 0050BE43    add         esp,0FFFFFFF4
 0050BE46    mov         dword ptr [ebp-4],eax
 0050BE49    mov         eax,dword ptr [ebp+8]
 0050BE4C    mov         edx,dword ptr [eax-4]
 0050BE4F    mov         eax,dword ptr [ebp-4]
 0050BE52    call        0046B9E0
 0050BE57    mov         dword ptr [ebp-0C],eax
 0050BE5A    cmp         dword ptr [ebp-0C],0
 0050BE5E    setne       byte ptr [ebp-5]
 0050BE62    cmp         byte ptr [ebp-5],0
>0050BE66    je          0050BE7B
 0050BE68    mov         eax,dword ptr [ebp+8]
 0050BE6B    add         eax,0FFFFFFFC
 0050BE6E    mov         ecx,1
 0050BE73    mov         edx,dword ptr [ebp-0C]
 0050BE76    call        @LStrDelete
 0050BE7B    mov         al,byte ptr [ebp-5]
 0050BE7E    mov         esp,ebp
 0050BE80    pop         ebp
 0050BE81    ret
end;*}

//0050BE84
{*procedure sub_0050BE84(?:?);
begin
 0050BE84    push        ebp
 0050BE85    mov         ebp,esp
 0050BE87    add         esp,0FFFFFFF8
 0050BE8A    push        ebx
 0050BE8B    mov         eax,dword ptr [ebp+8]
 0050BE8E    mov         edx,dword ptr [eax-0C]
 0050BE91    mov         eax,dword ptr [ebp+8]
 0050BE94    mov         eax,dword ptr [eax-8]
 0050BE97    mov         ecx,dword ptr [eax]
 0050BE99    call        dword ptr [ecx+8]
 0050BE9C    mov         eax,dword ptr [ebp+8]
 0050BE9F    mov         eax,dword ptr [eax-0C]
 0050BEA2    mov         edx,dword ptr [eax]
 0050BEA4    call        dword ptr [edx+14]
 0050BEA7    mov         edx,dword ptr [ebp+8]
 0050BEAA    mov         dword ptr [edx-10],eax
 0050BEAD    mov         eax,dword ptr [ebp+8]
 0050BEB0    mov         eax,dword ptr [eax-14]
 0050BEB3    mov         edx,dword ptr [eax]
 0050BEB5    call        dword ptr [edx+14]
 0050BEB8    dec         eax
 0050BEB9    test        eax,eax
>0050BEBB    jl          0050BEFC
 0050BEBD    inc         eax
 0050BEBE    mov         dword ptr [ebp-8],eax
 0050BEC1    mov         dword ptr [ebp-4],0
 0050BEC8    mov         eax,dword ptr [ebp+8]
 0050BECB    mov         eax,dword ptr [eax-14]
 0050BECE    mov         edx,dword ptr [ebp-4]
 0050BED1    mov         ecx,dword ptr [eax]
 0050BED3    call        dword ptr [ecx+18]
 0050BED6    push        eax
 0050BED7    mov         eax,dword ptr [ebp+8]
 0050BEDA    mov         eax,dword ptr [eax-14]
 0050BEDD    mov         edx,dword ptr [ebp-4]
 0050BEE0    mov         ecx,dword ptr [eax]
 0050BEE2    call        dword ptr [ecx+18]
 0050BEE5    mov         edx,dword ptr [eax+20]
 0050BEE8    mov         eax,dword ptr [ebp+8]
 0050BEEB    mov         eax,dword ptr [eax-8]
 0050BEEE    pop         ecx
 0050BEEF    mov         ebx,dword ptr [eax]
 0050BEF1    call        dword ptr [ebx+3C]
 0050BEF4    inc         dword ptr [ebp-4]
 0050BEF7    dec         dword ptr [ebp-8]
>0050BEFA    jne         0050BEC8
 0050BEFC    mov         eax,dword ptr [ebp+8]
 0050BEFF    add         eax,0FFFFFFE8
 0050BF02    mov         edx,dword ptr [ebp+8]
 0050BF05    mov         edx,dword ptr [edx-4]
 0050BF08    call        @LStrLAsg
 0050BF0D    pop         ebx
 0050BF0E    pop         ecx
 0050BF0F    pop         ecx
 0050BF10    pop         ebp
 0050BF11    ret
end;*}

//0050BF14
{*procedure sub_0050BF14(?:AnsiString; ?:?; ?:?);
begin
 0050BF14    push        ebp
 0050BF15    mov         ebp,esp
 0050BF17    add         esp,0FFFFFFE0
 0050BF1A    push        ebx
 0050BF1B    xor         ebx,ebx
 0050BF1D    mov         dword ptr [ebp-20],ebx
 0050BF20    mov         dword ptr [ebp-1C],ebx
 0050BF23    mov         dword ptr [ebp-0C],ecx
 0050BF26    mov         dword ptr [ebp-8],edx
 0050BF29    mov         dword ptr [ebp-4],eax
 0050BF2C    xor         eax,eax
 0050BF2E    push        ebp
 0050BF2F    push        50C05E
 0050BF34    push        dword ptr fs:[eax]
 0050BF37    mov         dword ptr fs:[eax],esp
 0050BF3A    mov         byte ptr [ebp-11],0
 0050BF3E    mov         eax,dword ptr [ebp-4]
 0050BF41    mov         eax,dword ptr [eax]
 0050BF43    call        @DynArrayLength
 0050BF48    test        eax,eax
>0050BF4A    jle         0050BF80
 0050BF4C    mov         dword ptr [ebp-18],eax
 0050BF4F    mov         dword ptr [ebp-10],1
 0050BF56    mov         eax,dword ptr [ebp-4]
 0050BF59    mov         eax,dword ptr [eax]
 0050BF5B    mov         edx,dword ptr [ebp-10]
 0050BF5E    mov         al,byte ptr [eax+edx-1]
 0050BF62    mov         edx,dword ptr ds:[55B6F4];^gvar_0054097C
 0050BF68    and         eax,0FF
 0050BF6D    bt          dword ptr [edx],eax
>0050BF70    jae         0050BF78
 0050BF72    mov         byte ptr [ebp-11],1
>0050BF76    jmp         0050BF80
 0050BF78    inc         dword ptr [ebp-10]
 0050BF7B    dec         dword ptr [ebp-18]
>0050BF7E    jne         0050BF56
 0050BF80    cmp         byte ptr [ebp-11],0
>0050BF84    je          0050C02D
 0050BF8A    lea         eax,[ebp-1C]
 0050BF8D    push        eax
 0050BF8E    mov         eax,dword ptr [ebp-4]
 0050BF91    mov         eax,dword ptr [eax]
 0050BF93    call        @DynArrayLength
 0050BF98    mov         edx,eax
 0050BF9A    sub         edx,3
 0050BF9D    inc         edx
 0050BF9E    mov         eax,dword ptr [ebp-4]
 0050BFA1    mov         eax,dword ptr [eax]
 0050BFA3    mov         ecx,3
 0050BFA8    call        @LStrCopy
 0050BFAD    mov         eax,dword ptr [ebp-1C]
 0050BFB0    mov         edx,50C074;'...'
 0050BFB5    call        @LStrCmp
>0050BFBA    jne         0050C007
 0050BFBC    lea         eax,[ebp-20]
 0050BFBF    push        eax
 0050BFC0    mov         eax,dword ptr [ebp-4]
 0050BFC3    mov         eax,dword ptr [eax]
 0050BFC5    call        @DynArrayLength
 0050BFCA    mov         ecx,eax
 0050BFCC    sub         ecx,3
 0050BFCF    mov         eax,dword ptr [ebp-4]
 0050BFD2    mov         eax,dword ptr [eax]
 0050BFD4    mov         edx,1
 0050BFD9    call        @LStrCopy
 0050BFDE    push        dword ptr [ebp-20]
 0050BFE1    push        50C080;'('
 0050BFE6    push        50C08C;'&'
 0050BFEB    push        dword ptr [ebp-8]
 0050BFEE    push        50C098;')'
 0050BFF3    push        50C074;'...'
 0050BFF8    mov         eax,dword ptr [ebp-4]
 0050BFFB    mov         edx,6
 0050C000    call        @LStrCatN
>0050C005    jmp         0050C043
 0050C007    mov         eax,dword ptr [ebp-4]
 0050C00A    push        dword ptr [eax]
 0050C00C    push        50C080;'('
 0050C011    push        50C08C;'&'
 0050C016    push        dword ptr [ebp-8]
 0050C019    push        50C098;')'
 0050C01E    mov         eax,dword ptr [ebp-4]
 0050C021    mov         edx,5
 0050C026    call        @LStrCatN
>0050C02B    jmp         0050C043
 0050C02D    cmp         dword ptr [ebp-0C],0
>0050C031    je          0050C043
 0050C033    mov         edx,dword ptr [ebp-4]
 0050C036    mov         ecx,dword ptr [ebp-0C]
 0050C039    mov         eax,50C08C;'&'
 0050C03E    call        @LStrInsert
 0050C043    xor         eax,eax
 0050C045    pop         edx
 0050C046    pop         ecx
 0050C047    pop         ecx
 0050C048    mov         dword ptr fs:[eax],edx
 0050C04B    push        50C065
 0050C050    lea         eax,[ebp-20]
 0050C053    mov         edx,2
 0050C058    call        @LStrArrayClr
 0050C05D    ret
>0050C05E    jmp         @HandleFinally
>0050C063    jmp         0050C050
 0050C065    pop         ebx
 0050C066    mov         esp,ebp
 0050C068    pop         ebp
 0050C069    ret
end;*}

//0050C09C
{*function sub_0050C09C(?:TActionClientsCollection; ?:?):?;
begin
 0050C09C    push        ebp
 0050C09D    mov         ebp,esp
 0050C09F    add         esp,0FFFFFFA8
 0050C0A2    push        ebx
 0050C0A3    xor         ecx,ecx
 0050C0A5    mov         dword ptr [ebp-58],ecx
 0050C0A8    mov         dword ptr [ebp-54],ecx
 0050C0AB    mov         dword ptr [ebp-50],ecx
 0050C0AE    mov         dword ptr [ebp-4C],ecx
 0050C0B1    mov         dword ptr [ebp-38],ecx
 0050C0B4    mov         dword ptr [ebp-3C],ecx
 0050C0B7    mov         dword ptr [ebp-40],ecx
 0050C0BA    mov         dword ptr [ebp-4],ecx
 0050C0BD    mov         dword ptr [ebp-18],ecx
 0050C0C0    mov         byte ptr [ebp-1D],dl
 0050C0C3    mov         dword ptr [ebp-1C],eax
 0050C0C6    xor         eax,eax
 0050C0C8    push        ebp
 0050C0C9    push        50C5CE
 0050C0CE    push        dword ptr fs:[eax]
 0050C0D1    mov         dword ptr fs:[eax],esp
 0050C0D4    mov         byte ptr [ebp-1E],0
 0050C0D8    mov         eax,dword ptr [ebp-1C]
 0050C0DB    cmp         byte ptr [eax+1C],0;TActionBars.FAutoHotKeys:Boolean
>0050C0DF    je          0050C596
 0050C0E5    cmp         byte ptr [ebp-1D],0
>0050C0E9    je          0050C53C
 0050C0EF    lea         eax,[ebp-4]
 0050C0F2    mov         edx,dword ptr ds:[55B698];^^gvar_004DEFEC
 0050C0F8    mov         edx,dword ptr [edx]
 0050C0FA    call        @LStrLAsg
 0050C0FF    mov         dl,1
 0050C101    mov         eax,[00476078];TStringList
 0050C106    call        TObject.Create;TStringList.Create
 0050C10B    mov         dword ptr [ebp-0C],eax
 0050C10E    mov         dl,1
 0050C110    mov         eax,[00476078];TStringList
 0050C115    call        TObject.Create;TStringList.Create
 0050C11A    mov         dword ptr [ebp-14],eax
 0050C11D    mov         dl,1
 0050C11F    mov         eax,[00476078];TStringList
 0050C124    call        TObject.Create;TStringList.Create
 0050C129    mov         dword ptr [ebp-24],eax
 0050C12C    mov         dl,1
 0050C12E    mov         eax,[00476078];TStringList
 0050C133    call        TObject.Create;TStringList.Create
 0050C138    mov         dword ptr [ebp-8],eax
 0050C13B    xor         eax,eax
 0050C13D    mov         dword ptr [ebp-10],eax
 0050C140    xor         eax,eax
 0050C142    push        ebp
 0050C143    push        50C535
 0050C148    push        dword ptr fs:[eax]
 0050C14B    mov         dword ptr fs:[eax],esp
 0050C14E    mov         eax,dword ptr [ebp-1C]
 0050C151    call        00479B60
 0050C156    dec         eax
 0050C157    test        eax,eax
>0050C159    jl          0050C27F
 0050C15F    inc         eax
 0050C160    mov         dword ptr [ebp-44],eax
 0050C163    mov         dword ptr [ebp-28],0
 0050C16A    mov         edx,dword ptr [ebp-28]
 0050C16D    mov         eax,dword ptr [ebp-1C]
 0050C170    call        0050BDF4
 0050C175    cmp         byte ptr [eax+30],0
>0050C179    je          0050C273
 0050C17F    mov         edx,dword ptr [ebp-28]
 0050C182    mov         eax,dword ptr [ebp-1C]
 0050C185    call        0050BDF4
 0050C18A    mov         eax,dword ptr [eax+20]
 0050C18D    mov         edx,50C5E8;'-'
 0050C192    call        @LStrCmp
>0050C197    je          0050C273
 0050C19D    mov         edx,dword ptr [ebp-28]
 0050C1A0    mov         eax,dword ptr [ebp-1C]
 0050C1A3    call        0050BDF4
 0050C1A8    cmp         dword ptr [eax+20],0
>0050C1AC    je          0050C273
 0050C1B2    mov         edx,dword ptr [ebp-28]
 0050C1B5    mov         eax,dword ptr [ebp-1C]
 0050C1B8    call        0050BDF4
 0050C1BD    mov         eax,dword ptr [eax+20]
 0050C1C0    lea         edx,[ebp-4C]
 0050C1C3    call        004E5850
 0050C1C8    mov         eax,dword ptr [ebp-4C]
 0050C1CB    lea         edx,[ebp-38]
 0050C1CE    call        004661A4
 0050C1D3    cmp         dword ptr [ebp-38],0
>0050C1D7    jne         0050C1FF
 0050C1D9    mov         edx,dword ptr [ebp-28]
 0050C1DC    mov         eax,dword ptr [ebp-1C]
 0050C1DF    call        00479B7C
 0050C1E4    push        eax
 0050C1E5    mov         edx,dword ptr [ebp-28]
 0050C1E8    mov         eax,dword ptr [ebp-1C]
 0050C1EB    call        0050BDF4
 0050C1F0    mov         ecx,dword ptr [eax+20]
 0050C1F3    xor         edx,edx
 0050C1F5    mov         eax,dword ptr [ebp-24]
 0050C1F8    mov         ebx,dword ptr [eax]
 0050C1FA    call        dword ptr [ebx+64];TStringList.sub_0047B8A8
>0050C1FD    jmp         0050C273
 0050C1FF    mov         edx,dword ptr ds:[55B698];^^gvar_004DEFEC
 0050C205    mov         edx,dword ptr [edx]
 0050C207    mov         eax,dword ptr [ebp-38]
 0050C20A    call        0046B9E0
 0050C20F    test        eax,eax
>0050C211    je          0050C273
 0050C213    push        ebp
 0050C214    mov         eax,dword ptr [ebp-38]
 0050C217    call        0050BE40
 0050C21C    pop         ecx
 0050C21D    test        al,al
>0050C21F    jne         0050C273
 0050C221    mov         edx,dword ptr [ebp-28]
 0050C224    mov         eax,dword ptr [ebp-1C]
 0050C227    call        0050BDF4
 0050C22C    add         eax,20
 0050C22F    push        eax
 0050C230    mov         edx,dword ptr [ebp-28]
 0050C233    mov         eax,dword ptr [ebp-1C]
 0050C236    call        0050BDF4
 0050C23B    mov         eax,dword ptr [eax+20]
 0050C23E    lea         edx,[ebp-50]
 0050C241    call        004E577C
 0050C246    mov         edx,dword ptr [ebp-50]
 0050C249    pop         eax
 0050C24A    call        @LStrAsg
 0050C24F    mov         edx,dword ptr [ebp-28]
 0050C252    mov         eax,dword ptr [ebp-1C]
 0050C255    call        00479B7C
 0050C25A    push        eax
 0050C25B    mov         edx,dword ptr [ebp-28]
 0050C25E    mov         eax,dword ptr [ebp-1C]
 0050C261    call        0050BDF4
 0050C266    mov         ecx,dword ptr [eax+20]
 0050C269    xor         edx,edx
 0050C26B    mov         eax,dword ptr [ebp-24]
 0050C26E    mov         ebx,dword ptr [eax]
 0050C270    call        dword ptr [ebx+64];TStringList.sub_0047B8A8
 0050C273    inc         dword ptr [ebp-28]
 0050C276    dec         dword ptr [ebp-44]
>0050C279    jne         0050C16A
 0050C27F    lea         eax,[ebp-40]
 0050C282    mov         edx,dword ptr [ebp-4]
 0050C285    call        @LStrLAsg
 0050C28A    mov         eax,dword ptr [ebp-24]
 0050C28D    mov         edx,dword ptr [eax]
 0050C28F    call        dword ptr [edx+14];TStringList.sub_0047B778
 0050C292    dec         eax
 0050C293    test        eax,eax
>0050C295    jl          0050C42C
 0050C29B    inc         eax
 0050C29C    mov         dword ptr [ebp-44],eax
 0050C29F    mov         dword ptr [ebp-2C],0
 0050C2A6    lea         eax,[ebp-4]
 0050C2A9    mov         edx,dword ptr [ebp-40]
 0050C2AC    call        @LStrLAsg
 0050C2B1    mov         edx,dword ptr [ebp-24]
 0050C2B4    mov         eax,dword ptr [ebp-14]
 0050C2B7    mov         ecx,dword ptr [eax]
 0050C2B9    call        dword ptr [ecx+8];TStringList.sub_0047A184
 0050C2BC    mov         eax,dword ptr [ebp-0C]
 0050C2BF    mov         edx,dword ptr [eax]
 0050C2C1    call        dword ptr [edx+44];TStringList.Clear
 0050C2C4    mov         eax,dword ptr [ebp-14]
 0050C2C7    mov         edx,dword ptr [eax]
 0050C2C9    call        dword ptr [edx+14];TStringList.sub_0047B778
 0050C2CC    dec         eax
 0050C2CD    cmp         eax,0
>0050C2D0    jl          0050C3B2
 0050C2D6    mov         dword ptr [ebp-28],eax
 0050C2D9    lea         ecx,[ebp-3C]
 0050C2DC    mov         edx,dword ptr [ebp-28]
 0050C2DF    mov         eax,dword ptr [ebp-14]
 0050C2E2    mov         ebx,dword ptr [eax]
 0050C2E4    call        dword ptr [ebx+0C];TStringList.sub_0047B710
 0050C2E7    mov         dword ptr [ebp-30],1
>0050C2EE    jmp         0050C394
 0050C2F3    mov         eax,dword ptr [ebp-3C]
 0050C2F6    mov         edx,dword ptr [ebp-30]
 0050C2F9    mov         al,byte ptr [eax+edx-1]
 0050C2FD    mov         edx,dword ptr ds:[55B6F4];^gvar_0054097C
 0050C303    and         eax,0FF
 0050C308    bt          dword ptr [edx],eax
>0050C30B    jae         0050C312
 0050C30D    inc         dword ptr [ebp-30]
>0050C310    jmp         0050C391
 0050C312    lea         eax,[ebp-54]
 0050C315    push        eax
 0050C316    mov         ecx,1
 0050C31B    mov         edx,dword ptr [ebp-30]
 0050C31E    mov         eax,dword ptr [ebp-3C]
 0050C321    call        @LStrCopy
 0050C326    mov         eax,dword ptr [ebp-54]
 0050C329    lea         edx,[ebp-38]
 0050C32C    call        004661A4
 0050C331    push        ebp
 0050C332    mov         eax,dword ptr [ebp-38]
 0050C335    call        0050BE40
 0050C33A    pop         ecx
 0050C33B    test        al,al
>0050C33D    je          0050C391
 0050C33F    mov         eax,[0055B70C];^gvar_0055D9C4:Integer
 0050C344    cmp         byte ptr [eax+0C],0
>0050C348    je          0050C35C
 0050C34A    push        ebp
 0050C34B    lea         eax,[ebp-3C]
 0050C34E    mov         ecx,dword ptr [ebp-30]
 0050C351    mov         edx,dword ptr [ebp-38]
 0050C354    call        0050BF14
 0050C359    pop         ecx
>0050C35A    jmp         0050C36C
 0050C35C    lea         edx,[ebp-3C]
 0050C35F    mov         ecx,dword ptr [ebp-30]
 0050C362    mov         eax,50C5F4;'&'
 0050C367    call        @LStrInsert
 0050C36C    mov         edx,dword ptr [ebp-28]
 0050C36F    mov         eax,dword ptr [ebp-14]
 0050C372    mov         ecx,dword ptr [eax]
 0050C374    call        dword ptr [ecx+18];TStringList.sub_0047B794
 0050C377    mov         ecx,eax
 0050C379    mov         edx,dword ptr [ebp-3C]
 0050C37C    mov         eax,dword ptr [ebp-0C]
 0050C37F    mov         ebx,dword ptr [eax]
 0050C381    call        dword ptr [ebx+3C];TStringList.sub_0047B3CC
 0050C384    mov         edx,dword ptr [ebp-28]
 0050C387    mov         eax,dword ptr [ebp-14]
 0050C38A    mov         ecx,dword ptr [eax]
 0050C38C    call        dword ptr [ecx+48];TStringList.sub_0047B4F0
>0050C38F    jmp         0050C3A5
 0050C391    inc         dword ptr [ebp-30]
 0050C394    mov         eax,dword ptr [ebp-3C]
 0050C397    call        @DynArrayLength
 0050C39C    cmp         eax,dword ptr [ebp-30]
>0050C39F    jge         0050C2F3
 0050C3A5    dec         dword ptr [ebp-28]
 0050C3A8    cmp         dword ptr [ebp-28],0FFFFFFFF
>0050C3AC    jne         0050C2D9
 0050C3B2    mov         eax,dword ptr [ebp-0C]
 0050C3B5    mov         edx,dword ptr [eax]
 0050C3B7    call        dword ptr [edx+14];TStringList.sub_0047B778
 0050C3BA    cmp         eax,dword ptr [ebp-10]
>0050C3BD    jle         0050C3C6
 0050C3BF    push        ebp
 0050C3C0    call        0050BE84
 0050C3C5    pop         ecx
 0050C3C6    mov         eax,dword ptr [ebp-14]
 0050C3C9    mov         edx,dword ptr [eax]
 0050C3CB    call        dword ptr [edx+14];TStringList.sub_0047B778
 0050C3CE    test        eax,eax
>0050C3D0    jle         0050C42C
 0050C3D2    mov         eax,dword ptr [ebp-14]
 0050C3D5    mov         edx,dword ptr [eax]
 0050C3D7    call        dword ptr [edx+14];TStringList.sub_0047B778
 0050C3DA    dec         eax
 0050C3DB    test        eax,eax
>0050C3DD    jl          0050C420
 0050C3DF    inc         eax
 0050C3E0    mov         dword ptr [ebp-48],eax
 0050C3E3    mov         dword ptr [ebp-28],0
 0050C3EA    mov         edx,dword ptr [ebp-28]
 0050C3ED    mov         eax,dword ptr [ebp-14]
 0050C3F0    mov         ecx,dword ptr [eax]
 0050C3F2    call        dword ptr [ecx+18];TStringList.sub_0047B794
 0050C3F5    mov         edx,eax
 0050C3F7    mov         eax,dword ptr [ebp-24]
 0050C3FA    mov         ecx,dword ptr [eax]
 0050C3FC    call        dword ptr [ecx+5C];TStringList.sub_0047AA2C
 0050C3FF    mov         dword ptr [ebp-34],eax
 0050C402    mov         eax,dword ptr [ebp-24]
 0050C405    mov         edx,dword ptr [eax]
 0050C407    call        dword ptr [edx+14];TStringList.sub_0047B778
 0050C40A    mov         ecx,eax
 0050C40C    dec         ecx
 0050C40D    mov         edx,dword ptr [ebp-34]
 0050C410    mov         eax,dword ptr [ebp-24]
 0050C413    mov         ebx,dword ptr [eax]
 0050C415    call        dword ptr [ebx+70];TStringList.sub_0047ABBC
 0050C418    inc         dword ptr [ebp-28]
 0050C41B    dec         dword ptr [ebp-48]
>0050C41E    jne         0050C3EA
 0050C420    inc         dword ptr [ebp-2C]
 0050C423    dec         dword ptr [ebp-44]
>0050C426    jne         0050C2A6
 0050C42C    cmp         dword ptr [ebp-10],0
>0050C430    jne         0050C439
 0050C432    push        ebp
 0050C433    call        0050BE84
 0050C438    pop         ecx
 0050C439    mov         eax,dword ptr [ebp-8]
 0050C43C    mov         edx,dword ptr [eax]
 0050C43E    call        dword ptr [edx+14];TStringList.sub_0047B778
 0050C441    test        eax,eax
 0050C443    setg        byte ptr [ebp-1E]
 0050C447    mov         eax,dword ptr [ebp-8]
 0050C44A    mov         edx,dword ptr [eax]
 0050C44C    call        dword ptr [edx+14];TStringList.sub_0047B778
 0050C44F    dec         eax
 0050C450    test        eax,eax
>0050C452    jl          0050C507
 0050C458    inc         eax
 0050C459    mov         dword ptr [ebp-44],eax
 0050C45C    mov         dword ptr [ebp-28],0
 0050C463    lea         ecx,[ebp-3C]
 0050C466    mov         edx,dword ptr [ebp-28]
 0050C469    mov         eax,dword ptr [ebp-8]
 0050C46C    mov         ebx,dword ptr [eax]
 0050C46E    call        dword ptr [ebx+0C];TStringList.sub_0047B710
 0050C471    mov         eax,[0055B70C];^gvar_0055D9C4:Integer
 0050C476    cmp         byte ptr [eax+0C],0
>0050C47A    je          0050C4E5
 0050C47C    mov         edx,dword ptr [ebp-3C]
 0050C47F    mov         eax,50C5F4;'&'
 0050C484    call        0046B9E0
 0050C489    test        eax,eax
>0050C48B    jne         0050C4E5
 0050C48D    cmp         dword ptr [ebp-18],0
>0050C491    je          0050C4E5
 0050C493    mov         edx,dword ptr [ebp-3C]
 0050C496    mov         eax,50C5F4;'&'
 0050C49B    call        0046B9E0
 0050C4A0    test        eax,eax
>0050C4A2    jne         0050C4E5
 0050C4A4    push        ebp
 0050C4A5    lea         eax,[ebp-58]
 0050C4A8    push        eax
 0050C4A9    mov         eax,dword ptr [ebp-18]
 0050C4AC    call        @DynArrayLength
 0050C4B1    mov         edx,eax
 0050C4B3    mov         ecx,1
 0050C4B8    mov         eax,dword ptr [ebp-18]
 0050C4BB    call        @LStrCopy
 0050C4C0    mov         edx,dword ptr [ebp-58]
 0050C4C3    lea         eax,[ebp-3C]
 0050C4C6    xor         ecx,ecx
 0050C4C8    call        0050BF14
 0050C4CD    pop         ecx
 0050C4CE    mov         eax,dword ptr [ebp-18]
 0050C4D1    call        @DynArrayLength
 0050C4D6    mov         edx,eax
 0050C4D8    lea         eax,[ebp-18]
 0050C4DB    mov         ecx,1
 0050C4E0    call        @LStrDelete
 0050C4E5    mov         edx,dword ptr [ebp-28]
 0050C4E8    mov         eax,dword ptr [ebp-8]
 0050C4EB    mov         ecx,dword ptr [eax]
 0050C4ED    call        dword ptr [ecx+18];TStringList.sub_0047B794
 0050C4F0    add         eax,20
 0050C4F3    mov         edx,dword ptr [ebp-3C]
 0050C4F6    call        @LStrAsg
 0050C4FB    inc         dword ptr [ebp-28]
 0050C4FE    dec         dword ptr [ebp-44]
>0050C501    jne         0050C463
 0050C507    xor         eax,eax
 0050C509    pop         edx
 0050C50A    pop         ecx
 0050C50B    pop         ecx
 0050C50C    mov         dword ptr fs:[eax],edx
 0050C50F    push        50C53C
 0050C514    mov         eax,dword ptr [ebp-8]
 0050C517    call        TObject.Free
 0050C51C    mov         eax,dword ptr [ebp-24]
 0050C51F    call        TObject.Free
 0050C524    mov         eax,dword ptr [ebp-14]
 0050C527    call        TObject.Free
 0050C52C    mov         eax,dword ptr [ebp-0C]
 0050C52F    call        TObject.Free
 0050C534    ret
>0050C535    jmp         @HandleFinally
>0050C53A    jmp         0050C514
 0050C53C    mov         eax,dword ptr [ebp-1C]
 0050C53F    call        00479B60
 0050C544    dec         eax
 0050C545    test        eax,eax
>0050C547    jl          0050C596
 0050C549    inc         eax
 0050C54A    mov         dword ptr [ebp-44],eax
 0050C54D    mov         dword ptr [ebp-28],0
 0050C554    mov         edx,dword ptr [ebp-28]
 0050C557    mov         eax,dword ptr [ebp-1C]
 0050C55A    call        0050BDF4
 0050C55F    cmp         dword ptr [eax+2C],0
>0050C563    je          0050C58E
 0050C565    mov         edx,dword ptr [ebp-28]
 0050C568    mov         eax,dword ptr [ebp-1C]
 0050C56B    call        0050BDF4
 0050C570    mov         eax,dword ptr [eax+2C]
 0050C573    cmp         byte ptr [eax+1C],0
>0050C577    je          0050C58E
 0050C579    mov         edx,dword ptr [ebp-28]
 0050C57C    mov         eax,dword ptr [ebp-1C]
 0050C57F    call        0050BDF4
 0050C584    mov         eax,dword ptr [eax+2C]
 0050C587    mov         dl,1
 0050C589    call        0050C09C
 0050C58E    inc         dword ptr [ebp-28]
 0050C591    dec         dword ptr [ebp-44]
>0050C594    jne         0050C554
 0050C596    xor         eax,eax
 0050C598    pop         edx
 0050C599    pop         ecx
 0050C59A    pop         ecx
 0050C59B    mov         dword ptr fs:[eax],edx
 0050C59E    push        50C5D5
 0050C5A3    lea         eax,[ebp-58]
 0050C5A6    mov         edx,4
 0050C5AB    call        @LStrArrayClr
 0050C5B0    lea         eax,[ebp-40]
 0050C5B3    mov         edx,3
 0050C5B8    call        @LStrArrayClr
 0050C5BD    lea         eax,[ebp-18]
 0050C5C0    call        @LStrClr
 0050C5C5    lea         eax,[ebp-4]
 0050C5C8    call        @LStrClr
 0050C5CD    ret
>0050C5CE    jmp         @HandleFinally
>0050C5D3    jmp         0050C5A3
 0050C5D5    mov         al,byte ptr [ebp-1E]
 0050C5D8    pop         ebx
 0050C5D9    mov         esp,ebp
 0050C5DB    pop         ebp
 0050C5DC    ret
end;*}

//0050C5F8
procedure TActionClientsCollection.AfterConstruction;
begin
{*
 0050C5F8    push        ebp
 0050C5F9    mov         ebp,esp
 0050C5FB    push        ecx
 0050C5FC    mov         dword ptr [ebp-4],eax;{TObject.AfterConstruction}
 0050C5FF    mov         eax,dword ptr [ebp-4]
 0050C602    call        TCustomVariantType.AfterConstruction
 0050C607    mov         eax,dword ptr [ebp-4]
 0050C60A    mov         byte ptr [eax+24],1
 0050C60E    pop         ecx
 0050C60F    pop         ebp
 0050C610    ret
*}
end;

//0050C614
{*procedure sub_0050C614(?:?);
begin
 0050C614    push        ebp
 0050C615    mov         ebp,esp
 0050C617    add         esp,0FFFFFFF8
 0050C61A    push        esi
 0050C61B    mov         dword ptr [ebp-4],eax
 0050C61E    mov         eax,dword ptr [ebp-4]
 0050C621    call        TActionClient.GetItems
 0050C626    call        00479B60
 0050C62B    test        eax,eax
>0050C62D    je          0050C661
 0050C62F    mov         eax,dword ptr [ebp-4]
 0050C632    call        TActionClient.GetItems
 0050C637    mov         dword ptr [ebp-8],eax
 0050C63A    mov         eax,dword ptr [ebp-8]
 0050C63D    cmp         dword ptr [eax+20],0
>0050C641    je          0050C661
 0050C643    mov         eax,dword ptr [ebp-8]
 0050C646    mov         eax,dword ptr [eax+20]
 0050C649    cmp         dword ptr [eax+0C],0
>0050C64D    je          0050C661
 0050C64F    mov         eax,dword ptr [ebp-8]
 0050C652    mov         eax,dword ptr [eax+20]
 0050C655    mov         eax,dword ptr [eax+0C]
 0050C658    mov         si,0FFCF
 0050C65C    call        @CallDynaInst
 0050C661    pop         esi
 0050C662    pop         ecx
 0050C663    pop         ecx
 0050C664    pop         ebp
 0050C665    ret
end;*}

//0050C668
{*procedure sub_0050C668(?:TActionClientsCollection; ?:TActionClientsCollection; ?:?; ?:?; ?:?);
begin
 0050C668    push        ebp
 0050C669    mov         ebp,esp
 0050C66B    add         esp,0FFFFFFF0
 0050C66E    mov         dword ptr [ebp-8],edx
 0050C671    mov         dword ptr [ebp-4],eax
 0050C674    cmp         dword ptr [ebp-8],0
>0050C678    je          0050C7AC
 0050C67E    mov         eax,dword ptr [ebp-8]
 0050C681    call        00479B60
 0050C686    dec         eax
 0050C687    test        eax,eax
>0050C689    jl          0050C7AC
 0050C68F    inc         eax
 0050C690    mov         dword ptr [ebp-10],eax
 0050C693    mov         dword ptr [ebp-0C],0
 0050C69A    mov         edx,dword ptr [ebp-0C]
 0050C69D    mov         eax,dword ptr [ebp-8]
 0050C6A0    call        0050BDF4
 0050C6A5    call        0050CB98
 0050C6AA    test        al,al
>0050C6AC    je          0050C711
 0050C6AE    cmp         word ptr [ebp+0A],0
>0050C6B3    je          0050C6CA
 0050C6B5    mov         edx,dword ptr [ebp-0C]
 0050C6B8    mov         eax,dword ptr [ebp-8]
 0050C6BB    call        0050BDF4
 0050C6C0    mov         edx,eax
 0050C6C2    mov         eax,dword ptr [ebp+0C]
 0050C6C5    call        dword ptr [ebp+8]
>0050C6C8    jmp         0050C6DA
 0050C6CA    mov         edx,dword ptr [ebp-0C]
 0050C6CD    mov         eax,dword ptr [ebp-8]
 0050C6D0    call        0050BDF4
 0050C6D5    mov         edx,dword ptr [eax]
 0050C6D7    call        dword ptr [edx+30]
 0050C6DA    push        dword ptr [ebp+0C]
 0050C6DD    push        dword ptr [ebp+8]
 0050C6E0    mov         edx,dword ptr [ebp-0C]
 0050C6E3    mov         eax,dword ptr [ebp-8]
 0050C6E6    call        0050BDF4
 0050C6EB    call        TActionClient.GetItems
 0050C6F0    mov         edx,eax
 0050C6F2    mov         eax,dword ptr [ebp-4]
 0050C6F5    call        0050C668
 0050C6FA    push        ebp
 0050C6FB    mov         edx,dword ptr [ebp-0C]
 0050C6FE    mov         eax,dword ptr [ebp-8]
 0050C701    call        0050BDF4
 0050C706    call        0050C614
 0050C70B    pop         ecx
>0050C70C    jmp         0050C7A0
 0050C711    mov         edx,dword ptr [ebp-0C]
 0050C714    mov         eax,dword ptr [ebp-8]
 0050C717    call        0050BDF4
 0050C71C    cmp         dword ptr [eax+0C],0
>0050C720    je          0050C762
 0050C722    cmp         word ptr [ebp+0A],0
>0050C727    je          0050C73E
 0050C729    mov         edx,dword ptr [ebp-0C]
 0050C72C    mov         eax,dword ptr [ebp-8]
 0050C72F    call        0050BDF4
 0050C734    mov         edx,eax
 0050C736    mov         eax,dword ptr [ebp+0C]
 0050C739    call        dword ptr [ebp+8]
>0050C73C    jmp         0050C74E
 0050C73E    mov         edx,dword ptr [ebp-0C]
 0050C741    mov         eax,dword ptr [ebp-8]
 0050C744    call        0050BDF4
 0050C749    mov         edx,dword ptr [eax]
 0050C74B    call        dword ptr [edx+30]
 0050C74E    push        ebp
 0050C74F    mov         edx,dword ptr [ebp-0C]
 0050C752    mov         eax,dword ptr [ebp-8]
 0050C755    call        0050BDF4
 0050C75A    call        0050C614
 0050C75F    pop         ecx
>0050C760    jmp         0050C7A0
 0050C762    cmp         word ptr [ebp+0A],0
>0050C767    je          0050C77E
 0050C769    mov         edx,dword ptr [ebp-0C]
 0050C76C    mov         eax,dword ptr [ebp-8]
 0050C76F    call        0050BDF4
 0050C774    mov         edx,eax
 0050C776    mov         eax,dword ptr [ebp+0C]
 0050C779    call        dword ptr [ebp+8]
>0050C77C    jmp         0050C78E
 0050C77E    mov         edx,dword ptr [ebp-0C]
 0050C781    mov         eax,dword ptr [ebp-8]
 0050C784    call        0050BDF4
 0050C789    mov         edx,dword ptr [eax]
 0050C78B    call        dword ptr [edx+30]
 0050C78E    push        ebp
 0050C78F    mov         edx,dword ptr [ebp-0C]
 0050C792    mov         eax,dword ptr [ebp-8]
 0050C795    call        0050BDF4
 0050C79A    call        0050C614
 0050C79F    pop         ecx
 0050C7A0    inc         dword ptr [ebp-0C]
 0050C7A3    dec         dword ptr [ebp-10]
>0050C7A6    jne         0050C69A
 0050C7AC    mov         esp,ebp
 0050C7AE    pop         ebp
 0050C7AF    ret         8
end;*}

//0050C7B4
procedure TActionClients.SetAutoHotKeys(Value:Boolean);
begin
{*
 0050C7B4    push        ebp
 0050C7B5    mov         ebp,esp
 0050C7B7    add         esp,0FFFFFFF8
 0050C7BA    mov         byte ptr [ebp-5],dl
 0050C7BD    mov         dword ptr [ebp-4],eax
 0050C7C0    mov         eax,dword ptr [ebp-4]
 0050C7C3    mov         al,byte ptr [eax+1C];TActionClients.FAutoHotKeys:Boolean
 0050C7C6    cmp         al,byte ptr [ebp-5]
>0050C7C9    je          0050C7DE
 0050C7CB    mov         al,byte ptr [ebp-5]
 0050C7CE    mov         edx,dword ptr [ebp-4]
 0050C7D1    mov         byte ptr [edx+1C],al;TActionClients.FAutoHotKeys:Boolean
 0050C7D4    mov         dl,1
 0050C7D6    mov         eax,dword ptr [ebp-4]
 0050C7D9    call        0050C09C
 0050C7DE    pop         ecx
 0050C7DF    pop         ecx
 0050C7E0    pop         ebp
 0050C7E1    ret
*}
end;

//0050C7E4
constructor sub_0050C7E4;
begin
{*
 0050C7E4    push        ebp
 0050C7E5    mov         ebp,esp
 0050C7E7    add         esp,0FFFFFFF4
 0050C7EA    test        dl,dl
>0050C7EC    je          0050C7F6
 0050C7EE    add         esp,0FFFFFFF0
 0050C7F1    call        @ClassCreate
 0050C7F6    mov         dword ptr [ebp-0C],ecx
 0050C7F9    mov         byte ptr [ebp-5],dl
 0050C7FC    mov         dword ptr [ebp-4],eax
 0050C7FF    mov         ecx,dword ptr [ebp-0C]
 0050C802    xor         edx,edx
 0050C804    mov         eax,dword ptr [ebp-4]
 0050C807    call        004795A8
 0050C80C    mov         eax,dword ptr [ebp-4]
 0050C80F    xor         edx,edx
 0050C811    mov         dword ptr [eax+34],edx;TActionClient.Tag:Integer
 0050C814    mov         eax,dword ptr [ebp-4]
 0050C817    mov         byte ptr [eax+14],0;TActionClient.BackgroundLayout:TBackgroundLayout
 0050C81B    mov         eax,dword ptr [ebp-4]
 0050C81E    mov         byte ptr [eax+30],1;TActionClient.Visible:Boolean
 0050C822    mov         eax,dword ptr [ebp-4]
 0050C825    mov         byte ptr [eax+28],1;TActionClient.FSmallIcons:Boolean
 0050C829    mov         eax,dword ptr [ebp-4]
 0050C82C    mov         dword ptr [eax+24],20000000;TActionClient.Color:TColor
 0050C833    mov         eax,dword ptr [ebp-4]
 0050C836    mov         byte ptr [eax+14],0;TActionClient.BackgroundLayout:TBackgroundLayout
 0050C83A    mov         eax,dword ptr [ebp-4]
 0050C83D    mov         dl,byte ptr ds:[50C868];0x7 gvar_0050C868
 0050C843    mov         byte ptr [eax+31],dl;TActionClient.ChangesAllowed:TChangesAllowedSet
 0050C846    mov         eax,dword ptr [ebp-4]
 0050C849    cmp         byte ptr [ebp-5],0
>0050C84D    je          0050C85E
 0050C84F    call        @AfterConstruction
 0050C854    pop         dword ptr fs:[0]
 0050C85B    add         esp,0C
 0050C85E    mov         eax,dword ptr [ebp-4]
 0050C861    mov         esp,ebp
 0050C863    pop         ebp
 0050C864    ret
*}
end;

//0050C86C
destructor TActionClient.Destroy;
begin
{*
 0050C86C    push        ebp
 0050C86D    mov         ebp,esp
 0050C86F    add         esp,0FFFFFFF8
 0050C872    call        @BeforeDestruction
 0050C877    mov         byte ptr [ebp-5],dl
 0050C87A    mov         dword ptr [ebp-4],eax
 0050C87D    mov         eax,dword ptr [ebp-4]
 0050C880    add         eax,1C
 0050C883    call        FreeAndNil
 0050C888    mov         eax,dword ptr [ebp-4]
 0050C88B    cmp         dword ptr [eax+0C],0
>0050C88F    je          0050C8AD
 0050C891    mov         eax,dword ptr [ebp-4]
 0050C894    mov         eax,dword ptr [eax+0C]
 0050C897    test        byte ptr [eax+1C],8
>0050C89B    jne         0050C8AD
 0050C89D    mov         eax,dword ptr [ebp-4]
 0050C8A0    mov         eax,dword ptr [eax+0C]
 0050C8A3    xor         edx,edx
 0050C8A5    mov         ecx,dword ptr [eax]
 0050C8A7    call        dword ptr [ecx+124]
 0050C8AD    mov         eax,dword ptr [ebp-4]
 0050C8B0    call        0050CA74
 0050C8B5    mov         eax,dword ptr [ebp-4]
 0050C8B8    cmp         dword ptr [eax+10],0
>0050C8BC    je          0050C8C9
 0050C8BE    mov         eax,dword ptr [ebp-4]
 0050C8C1    add         eax,10
 0050C8C4    call        FreeAndNil
 0050C8C9    mov         eax,dword ptr [ebp-4]
 0050C8CC    call        0050CA94
 0050C8D1    mov         dl,byte ptr [ebp-5]
 0050C8D4    and         dl,0FC
 0050C8D7    mov         eax,dword ptr [ebp-4]
 0050C8DA    call        TCollectionItem.Destroy
 0050C8DF    cmp         byte ptr [ebp-5],0
>0050C8E3    jle         0050C8ED
 0050C8E5    mov         eax,dword ptr [ebp-4]
 0050C8E8    call        @ClassDestroy
 0050C8ED    pop         ecx
 0050C8EE    pop         ecx
 0050C8EF    pop         ebp
 0050C8F0    ret
*}
end;

//0050C8F4
function TActionClient.IsStoredContextItems(Value:TActionClients):Boolean;
begin
{*
 0050C8F4    push        ebp
 0050C8F5    mov         ebp,esp
 0050C8F7    add         esp,0FFFFFFF8
 0050C8FA    mov         dword ptr [ebp-4],eax
 0050C8FD    mov         eax,dword ptr [ebp-4]
 0050C900    cmp         dword ptr [eax+1C],0;TActionClient.FContextItems:TActionClients
>0050C904    je          0050C951
 0050C906    mov         eax,dword ptr [ebp-4]
 0050C909    mov         eax,dword ptr [eax+1C];TActionClient.FContextItems:TActionClients
 0050C90C    call        00479B60
 0050C911    test        eax,eax
>0050C913    jg          0050C955
 0050C915    mov         eax,dword ptr [ebp-4]
 0050C918    mov         eax,dword ptr [eax+1C];TActionClient.FContextItems:TActionClients
 0050C91B    cmp         byte ptr [eax+1C],0;TActionClients.FAutoHotKeys:Boolean
>0050C91F    je          0050C955
 0050C921    mov         eax,dword ptr [ebp-4]
 0050C924    mov         eax,dword ptr [eax+1C];TActionClient.FContextItems:TActionClients
 0050C927    cmp         byte ptr [eax+28],1;TActionClients.CaptionOptions:TCaptionOptions
>0050C92B    jne         0050C955
 0050C92D    mov         eax,dword ptr [ebp-4]
 0050C930    mov         eax,dword ptr [eax+1C];TActionClient.FContextItems:TActionClients
 0050C933    cmp         byte ptr [eax+24],0;TActionClients.FCustomizable:Boolean
>0050C937    je          0050C955
 0050C939    mov         eax,dword ptr [ebp-4]
 0050C93C    mov         eax,dword ptr [eax+1C];TActionClient.FContextItems:TActionClients
 0050C93F    cmp         byte ptr [eax+2A],0;TActionClients.HideUnused:Boolean
>0050C943    je          0050C955
 0050C945    mov         eax,dword ptr [ebp-4]
 0050C948    mov         eax,dword ptr [eax+1C];TActionClient.FContextItems:TActionClients
 0050C94B    cmp         byte ptr [eax+29],0;TActionClients.SmallIcons:Boolean
>0050C94F    je          0050C955
 0050C951    xor         eax,eax
>0050C953    jmp         0050C957
 0050C955    mov         al,1
 0050C957    mov         byte ptr [ebp-5],al
 0050C95A    mov         al,byte ptr [ebp-5]
 0050C95D    pop         ecx
 0050C95E    pop         ecx
 0050C95F    pop         ebp
 0050C960    ret
*}
end;

//0050C964
{*procedure sub_0050C964(?:?);
begin
 0050C964    push        ebp
 0050C965    mov         ebp,esp
 0050C967    add         esp,0FFFFFFF8
 0050C96A    mov         dword ptr [ebp-8],edx
 0050C96D    mov         dword ptr [ebp-4],eax
 0050C970    mov         eax,dword ptr [ebp-8]
 0050C973    mov         edx,dword ptr ds:[509018];TActionClient
 0050C979    call        @IsClass
 0050C97E    test        al,al
>0050C980    je          0050CA64
 0050C986    mov         eax,dword ptr [ebp-4]
 0050C989    cmp         dword ptr [eax+4],0;TActionClient.FCollection:TCollection
>0050C98D    je          0050C99A
 0050C98F    mov         eax,dword ptr [ebp-4]
 0050C992    mov         eax,dword ptr [eax+4];TActionClient.FCollection:TCollection
 0050C995    mov         edx,dword ptr [eax]
 0050C997    call        dword ptr [edx+20];TCollection.sub_004799FC
 0050C99A    xor         eax,eax
 0050C99C    push        ebp
 0050C99D    push        50CA5D
 0050C9A2    push        dword ptr fs:[eax]
 0050C9A5    mov         dword ptr fs:[eax],esp
 0050C9A8    mov         eax,dword ptr [ebp-8]
 0050C9AB    mov         edx,dword ptr [eax+24]
 0050C9AE    mov         eax,dword ptr [ebp-4]
 0050C9B1    mov         ecx,dword ptr [eax]
 0050C9B3    call        dword ptr [ecx+28];TActionClient.SetColor
 0050C9B6    mov         eax,dword ptr [ebp-8]
 0050C9B9    cmp         dword ptr [eax+1C],0
>0050C9BD    je          0050C9D2
 0050C9BF    mov         eax,dword ptr [ebp-4]
 0050C9C2    call        TActionClient.GetContextItems
 0050C9C7    mov         edx,dword ptr [ebp-8]
 0050C9CA    mov         edx,dword ptr [edx+1C]
 0050C9CD    mov         ecx,dword ptr [eax]
 0050C9CF    call        dword ptr [ecx+8]
 0050C9D2    mov         eax,dword ptr [ebp-8]
 0050C9D5    call        0050CCE0
 0050C9DA    test        al,al
>0050C9DC    je          0050C9F5
 0050C9DE    mov         eax,dword ptr [ebp-8]
 0050C9E1    call        TActionClient.GetBackground
 0050C9E6    push        eax
 0050C9E7    mov         eax,dword ptr [ebp-4]
 0050C9EA    call        TActionClient.GetBackground
 0050C9EF    pop         edx
 0050C9F0    mov         ecx,dword ptr [eax]
 0050C9F2    call        dword ptr [ecx+8]
 0050C9F5    mov         eax,dword ptr [ebp-8]
 0050C9F8    mov         dl,byte ptr [eax+14]
 0050C9FB    mov         eax,dword ptr [ebp-4]
 0050C9FE    call        TActionClient.SetBackgroundLayout
 0050CA03    mov         eax,dword ptr [ebp-8]
 0050CA06    mov         dl,byte ptr [eax+30]
 0050CA09    mov         eax,dword ptr [ebp-4]
 0050CA0C    mov         ecx,dword ptr [eax]
 0050CA0E    call        dword ptr [ecx+2C];TActionClient.SetVisible
 0050CA11    mov         eax,dword ptr [ebp-8]
 0050CA14    cmp         dword ptr [eax+2C],0
>0050CA18    je          0050CA2D
 0050CA1A    mov         eax,dword ptr [ebp-4]
 0050CA1D    call        TActionClient.GetItems
 0050CA22    mov         edx,dword ptr [ebp-8]
 0050CA25    mov         edx,dword ptr [edx+2C]
 0050CA28    mov         ecx,dword ptr [eax]
 0050CA2A    call        dword ptr [ecx+8]
 0050CA2D    mov         eax,dword ptr [ebp-8]
 0050CA30    mov         edx,dword ptr [eax+0C]
 0050CA33    mov         eax,dword ptr [ebp-4]
 0050CA36    call        TActionBarItem.SetActionBar
 0050CA3B    xor         eax,eax
 0050CA3D    pop         edx
 0050CA3E    pop         ecx
 0050CA3F    pop         ecx
 0050CA40    mov         dword ptr fs:[eax],edx
 0050CA43    push        50CA6F
 0050CA48    mov         eax,dword ptr [ebp-4]
 0050CA4B    cmp         dword ptr [eax+4],0;TActionClient.FCollection:TCollection
>0050CA4F    je          0050CA5C
 0050CA51    mov         eax,dword ptr [ebp-4]
 0050CA54    mov         eax,dword ptr [eax+4];TActionClient.FCollection:TCollection
 0050CA57    mov         edx,dword ptr [eax]
 0050CA59    call        dword ptr [edx+24];TCollection.sub_00479A94
 0050CA5C    ret
>0050CA5D    jmp         @HandleFinally
>0050CA62    jmp         0050CA48
 0050CA64    mov         edx,dword ptr [ebp-8]
 0050CA67    mov         eax,dword ptr [ebp-4]
 0050CA6A    call        004790A8
 0050CA6F    pop         ecx
 0050CA70    pop         ecx
 0050CA71    pop         ebp
 0050CA72    ret
end;*}

//0050CA74
procedure sub_0050CA74(?:TActionClient);
begin
{*
 0050CA74    push        ebp
 0050CA75    mov         ebp,esp
 0050CA77    push        ecx
 0050CA78    mov         dword ptr [ebp-4],eax
 0050CA7B    mov         eax,dword ptr [ebp-4]
 0050CA7E    xor         edx,edx
 0050CA80    mov         dword ptr [eax+0C],edx
 0050CA83    pop         ecx
 0050CA84    pop         ebp
 0050CA85    ret
*}
end;

//0050CA88
procedure sub_0050CA88;
begin
{*
 0050CA88    push        ebp
 0050CA89    mov         ebp,esp
 0050CA8B    push        ecx
 0050CA8C    mov         dword ptr [ebp-4],eax
 0050CA8F    pop         ecx
 0050CA90    pop         ebp
 0050CA91    ret
*}
end;

//0050CA94
{*procedure sub_0050CA94(?:?);
begin
 0050CA94    push        ebp
 0050CA95    mov         ebp,esp
 0050CA97    add         esp,0FFFFFFF4
 0050CA9A    mov         dword ptr [ebp-4],eax
 0050CA9D    mov         eax,dword ptr [ebp-4]
 0050CAA0    cmp         dword ptr [eax+2C],0
>0050CAA4    je          0050CB12
 0050CAA6    mov         eax,dword ptr [ebp-4]
 0050CAA9    mov         eax,dword ptr [eax+2C]
 0050CAAC    call        00479B60
 0050CAB1    test        eax,eax
>0050CAB3    jle         0050CAFF
 0050CAB5    mov         eax,dword ptr [ebp-4]
 0050CAB8    mov         eax,dword ptr [eax+2C]
 0050CABB    call        00479B60
 0050CAC0    dec         eax
 0050CAC1    test        eax,eax
>0050CAC3    jl          0050CAFF
 0050CAC5    inc         eax
 0050CAC6    mov         dword ptr [ebp-0C],eax
 0050CAC9    mov         dword ptr [ebp-8],0
 0050CAD0    mov         edx,dword ptr [ebp-8]
 0050CAD3    mov         eax,dword ptr [ebp-4]
 0050CAD6    mov         eax,dword ptr [eax+2C]
 0050CAD9    call        0050D884
 0050CADE    cmp         dword ptr [eax+2C],0
>0050CAE2    je          0050CAF7
 0050CAE4    mov         edx,dword ptr [ebp-8]
 0050CAE7    mov         eax,dword ptr [ebp-4]
 0050CAEA    mov         eax,dword ptr [eax+2C]
 0050CAED    call        0050D884
 0050CAF2    call        0050CA94
 0050CAF7    inc         dword ptr [ebp-8]
 0050CAFA    dec         dword ptr [ebp-0C]
>0050CAFD    jne         0050CAD0
 0050CAFF    mov         eax,dword ptr [ebp-4]
 0050CB02    mov         eax,dword ptr [eax+2C]
 0050CB05    call        TObject.Free
 0050CB0A    mov         eax,dword ptr [ebp-4]
 0050CB0D    xor         edx,edx
 0050CB0F    mov         dword ptr [eax+2C],edx
 0050CB12    mov         esp,ebp
 0050CB14    pop         ebp
 0050CB15    ret
end;*}

//0050CB18
{*function TActionClient.GetBackground:?;
begin
 0050CB18    push        ebp
 0050CB19    mov         ebp,esp
 0050CB1B    add         esp,0FFFFFFF8
 0050CB1E    mov         dword ptr [ebp-4],eax
 0050CB21    mov         eax,dword ptr [ebp-4]
 0050CB24    cmp         dword ptr [eax+10],0;TActionClient.FBackground:TPicture
>0050CB28    jne         0050CB3C
 0050CB2A    mov         dl,1
 0050CB2C    mov         eax,[004859C0];TPicture
 0050CB31    call        TPicture.Create;TPicture.Create
 0050CB36    mov         edx,dword ptr [ebp-4]
 0050CB39    mov         dword ptr [edx+10],eax;TActionClient.FBackground:TPicture
 0050CB3C    mov         eax,dword ptr [ebp-4]
 0050CB3F    mov         eax,dword ptr [eax+10];TActionClient.FBackground:TPicture
 0050CB42    mov         dword ptr [ebp-8],eax
 0050CB45    mov         eax,dword ptr [ebp-8]
 0050CB48    pop         ecx
 0050CB49    pop         ecx
 0050CB4A    pop         ebp
 0050CB4B    ret
end;*}

//0050CB4C
{*function TActionClient.GetContextItems:?;
begin
 0050CB4C    push        ebp
 0050CB4D    mov         ebp,esp
 0050CB4F    add         esp,0FFFFFFF8
 0050CB52    mov         dword ptr [ebp-4],eax
 0050CB55    mov         eax,dword ptr [ebp-4]
 0050CB58    cmp         dword ptr [eax+1C],0;TActionClient.FContextItems:TActionClients
>0050CB5C    jne         0050CB85
 0050CB5E    mov         eax,[00509710];TActionClientItem
 0050CB63    push        eax
 0050CB64    mov         eax,dword ptr [ebp-4]
 0050CB67    call        0050CCC4
 0050CB6C    call        0050BE18
 0050CB71    mov         ecx,eax
 0050CB73    mov         dl,1
 0050CB75    mov         eax,[005094AC];TActionClients
 0050CB7A    call        TActionClients.Create;TActionClients.Create
 0050CB7F    mov         edx,dword ptr [ebp-4]
 0050CB82    mov         dword ptr [edx+1C],eax;TActionClient.FContextItems:TActionClients
 0050CB85    mov         eax,dword ptr [ebp-4]
 0050CB88    mov         eax,dword ptr [eax+1C];TActionClient.FContextItems:TActionClients
 0050CB8B    mov         dword ptr [ebp-8],eax
 0050CB8E    mov         eax,dword ptr [ebp-8]
 0050CB91    pop         ecx
 0050CB92    pop         ecx
 0050CB93    pop         ebp
 0050CB94    ret
end;*}

//0050CB98
{*function sub_0050CB98(?:TActionClient):?;
begin
 0050CB98    push        ebp
 0050CB99    mov         ebp,esp
 0050CB9B    add         esp,0FFFFFFF8
 0050CB9E    mov         dword ptr [ebp-4],eax
 0050CBA1    mov         eax,dword ptr [ebp-4]
 0050CBA4    cmp         dword ptr [eax+2C],0;TActionClientItem.FItems:TActionClients
>0050CBA8    je          0050CBB9
 0050CBAA    mov         eax,dword ptr [ebp-4]
 0050CBAD    mov         eax,dword ptr [eax+2C];TActionClientItem.FItems:TActionClients
 0050CBB0    call        00479B60
 0050CBB5    test        eax,eax
>0050CBB7    jg          0050CBBD
 0050CBB9    xor         eax,eax
>0050CBBB    jmp         0050CBBF
 0050CBBD    mov         al,1
 0050CBBF    mov         byte ptr [ebp-5],al
 0050CBC2    mov         al,byte ptr [ebp-5]
 0050CBC5    pop         ecx
 0050CBC6    pop         ecx
 0050CBC7    pop         ebp
 0050CBC8    ret
end;*}

//0050CBCC
{*function sub_0050CBCC(?:TActionClientItem):?;
begin
 0050CBCC    push        ebp
 0050CBCD    mov         ebp,esp
 0050CBCF    add         esp,0FFFFFFF8
 0050CBD2    mov         dword ptr [ebp-4],eax
 0050CBD5    mov         eax,dword ptr [ebp-4]
 0050CBD8    call        0050E760
 0050CBDD    test        eax,eax
>0050CBDF    je          0050CBF1
 0050CBE1    mov         eax,dword ptr [ebp-4]
 0050CBE4    call        0050E760
 0050CBE9    mov         eax,dword ptr [eax+20]
 0050CBEC    mov         dword ptr [ebp-8],eax
>0050CBEF    jmp         0050CBF6
 0050CBF1    xor         eax,eax
 0050CBF3    mov         dword ptr [ebp-8],eax
 0050CBF6    mov         eax,dword ptr [ebp-8]
 0050CBF9    pop         ecx
 0050CBFA    pop         ecx
 0050CBFB    pop         ebp
 0050CBFC    ret
end;*}

//0050CC00
{*function TActionClient.GetItems:?;
begin
 0050CC00    push        ebp
 0050CC01    mov         ebp,esp
 0050CC03    add         esp,0FFFFFFF4
 0050CC06    push        esi
 0050CC07    mov         dword ptr [ebp-4],eax
 0050CC0A    mov         eax,dword ptr [ebp-4]
 0050CC0D    cmp         dword ptr [eax+2C],0;TActionClient.FItems:TActionClients
>0050CC11    jne         0050CCB0
 0050CC17    mov         eax,dword ptr [ebp-4]
 0050CC1A    call        0050CCC4
 0050CC1F    test        eax,eax
>0050CC21    je          0050CC7D
 0050CC23    mov         eax,dword ptr [ebp-4]
 0050CC26    call        0050CCC4
 0050CC2B    call        0050BE18
 0050CC30    test        eax,eax
>0050CC32    je          0050CC7D
 0050CC34    mov         eax,dword ptr [ebp-4]
 0050CC37    call        0050CCC4
 0050CC3C    call        0050BE18
 0050CC41    mov         dword ptr [ebp-0C],eax
 0050CC44    mov         eax,dword ptr [ebp-0C]
 0050CC47    mov         si,0FFEC
 0050CC4B    call        @CallDynaInst
 0050CC50    push        eax
 0050CC51    mov         eax,dword ptr [ebp-0C]
 0050CC54    mov         si,0FFED
 0050CC58    call        @CallDynaInst
 0050CC5D    push        eax
 0050CC5E    mov         eax,dword ptr [ebp-4]
 0050CC61    call        0050CCC4
 0050CC66    call        0050BE18
 0050CC6B    mov         ecx,eax
 0050CC6D    mov         dl,1
 0050CC6F    pop         eax
 0050CC70    call        TActionClients.Create
 0050CC75    mov         edx,dword ptr [ebp-4]
 0050CC78    mov         dword ptr [edx+2C],eax;TActionClient.FItems:TActionClients
>0050CC7B    jmp         0050CCA4
 0050CC7D    mov         eax,[00509710];TActionClientItem
 0050CC82    push        eax
 0050CC83    mov         eax,dword ptr [ebp-4]
 0050CC86    call        0050CCC4
 0050CC8B    call        0050BE18
 0050CC90    mov         ecx,eax
 0050CC92    mov         dl,1
 0050CC94    mov         eax,[005094AC];TActionClients
 0050CC99    call        TActionClients.Create;TActionClients.Create
 0050CC9E    mov         edx,dword ptr [ebp-4]
 0050CCA1    mov         dword ptr [edx+2C],eax;TActionClient.FItems:TActionClients
 0050CCA4    mov         eax,dword ptr [ebp-4]
 0050CCA7    mov         eax,dword ptr [eax+2C];TActionClient.FItems:TActionClients
 0050CCAA    mov         edx,dword ptr [ebp-4]
 0050CCAD    mov         dword ptr [eax+20],edx;TActionClients.FParentItem:TActionClient
 0050CCB0    mov         eax,dword ptr [ebp-4]
 0050CCB3    mov         eax,dword ptr [eax+2C];TActionClient.FItems:TActionClients
 0050CCB6    mov         dword ptr [ebp-8],eax
 0050CCB9    mov         eax,dword ptr [ebp-8]
 0050CCBC    pop         esi
 0050CCBD    mov         esp,ebp
 0050CCBF    pop         ebp
 0050CCC0    ret
end;*}

//0050CCC4
{*function sub_0050CCC4(?:TActionClient):?;
begin
 0050CCC4    push        ebp
 0050CCC5    mov         ebp,esp
 0050CCC7    add         esp,0FFFFFFF8
 0050CCCA    mov         dword ptr [ebp-4],eax
 0050CCCD    mov         eax,dword ptr [ebp-4]
 0050CCD0    mov         eax,dword ptr [eax+4];TActionClient.FCollection:TCollection
 0050CCD3    mov         dword ptr [ebp-8],eax
 0050CCD6    mov         eax,dword ptr [ebp-8]
 0050CCD9    pop         ecx
 0050CCDA    pop         ecx
 0050CCDB    pop         ebp
 0050CCDC    ret
end;*}

//0050CCE0
{*function sub_0050CCE0(?:TActionClient):?;
begin
 0050CCE0    push        ebp
 0050CCE1    mov         ebp,esp
 0050CCE3    add         esp,0FFFFFFF8
 0050CCE6    mov         dword ptr [ebp-4],eax
 0050CCE9    mov         eax,dword ptr [ebp-4]
 0050CCEC    cmp         dword ptr [eax+10],0;TActionClient.FBackground:TPicture
>0050CCF0    je          0050CD10
 0050CCF2    mov         eax,dword ptr [ebp-4]
 0050CCF5    mov         eax,dword ptr [eax+10];TActionClient.FBackground:TPicture
 0050CCF8    cmp         dword ptr [eax+0C],0;TPicture.FGraphic:TGraphic
>0050CCFC    je          0050CD10
 0050CCFE    mov         eax,dword ptr [ebp-4]
 0050CD01    mov         eax,dword ptr [eax+10];TActionClient.FBackground:TPicture
 0050CD04    mov         eax,dword ptr [eax+0C];TPicture.FGraphic:TGraphic
 0050CD07    mov         edx,dword ptr [eax]
 0050CD09    call        dword ptr [edx+1C];@AbstractError
 0050CD0C    test        al,al
>0050CD0E    je          0050CD14
 0050CD10    xor         eax,eax
>0050CD12    jmp         0050CD16
 0050CD14    mov         al,1
 0050CD16    mov         byte ptr [ebp-5],al
 0050CD19    mov         al,byte ptr [ebp-5]
 0050CD1C    pop         ecx
 0050CD1D    pop         ecx
 0050CD1E    pop         ebp
 0050CD1F    ret
end;*}

//0050CD20
{*function sub_0050CD20(?:?):?;
begin
 0050CD20    push        ebp
 0050CD21    mov         ebp,esp
 0050CD23    add         esp,0FFFFFFF0
 0050CD26    mov         dword ptr [ebp-4],eax
 0050CD29    mov         byte ptr [ebp-5],0
 0050CD2D    mov         eax,dword ptr [ebp-4]
 0050CD30    call        TActionClient.GetItems
 0050CD35    call        00479B60
 0050CD3A    dec         eax
 0050CD3B    test        eax,eax
>0050CD3D    jl          0050CDA4
 0050CD3F    inc         eax
 0050CD40    mov         dword ptr [ebp-10],eax
 0050CD43    mov         dword ptr [ebp-0C],0
 0050CD4A    mov         eax,dword ptr [ebp-4]
 0050CD4D    call        TActionClient.GetItems
 0050CD52    mov         edx,dword ptr [ebp-0C]
 0050CD55    call        0050D884
 0050CD5A    call        0050F28C
 0050CD5F    test        al,al
>0050CD61    jne         0050CD7F
 0050CD63    mov         eax,dword ptr [ebp-4]
 0050CD66    call        TActionClient.GetItems
 0050CD6B    mov         edx,dword ptr [ebp-0C]
 0050CD6E    call        0050D884
 0050CD73    cmp         byte ptr [eax+30],0
>0050CD77    je          0050CD7F
 0050CD79    mov         byte ptr [ebp-5],1
>0050CD7D    jmp         0050CD9C
 0050CD7F    mov         eax,dword ptr [ebp-4]
 0050CD82    call        TActionClient.GetItems
 0050CD87    mov         edx,dword ptr [ebp-0C]
 0050CD8A    call        0050D884
 0050CD8F    call        0050CD20
 0050CD94    test        al,al
>0050CD96    je          0050CD9C
 0050CD98    mov         byte ptr [ebp-5],1
 0050CD9C    inc         dword ptr [ebp-0C]
 0050CD9F    dec         dword ptr [ebp-10]
>0050CDA2    jne         0050CD4A
 0050CDA4    mov         al,byte ptr [ebp-5]
 0050CDA7    mov         esp,ebp
 0050CDA9    pop         ebp
 0050CDAA    ret
end;*}

//0050CDAC
function TActionClient.IsStoredBackground(Value:TPicture):Boolean;
begin
{*
 0050CDAC    push        ebp
 0050CDAD    mov         ebp,esp
 0050CDAF    add         esp,0FFFFFFF8
 0050CDB2    mov         dword ptr [ebp-4],eax
 0050CDB5    mov         eax,dword ptr [ebp-4]
 0050CDB8    cmp         dword ptr [eax+10],0;TActionClient.FBackground:TPicture
>0050CDBC    je          0050CDDC
 0050CDBE    mov         eax,dword ptr [ebp-4]
 0050CDC1    mov         eax,dword ptr [eax+10];TActionClient.FBackground:TPicture
 0050CDC4    cmp         dword ptr [eax+0C],0;TPicture.FGraphic:TGraphic
>0050CDC8    je          0050CDDC
 0050CDCA    mov         eax,dword ptr [ebp-4]
 0050CDCD    mov         eax,dword ptr [eax+10];TActionClient.FBackground:TPicture
 0050CDD0    mov         eax,dword ptr [eax+0C];TPicture.FGraphic:TGraphic
 0050CDD3    mov         edx,dword ptr [eax]
 0050CDD5    call        dword ptr [edx+1C];@AbstractError
 0050CDD8    test        al,al
>0050CDDA    je          0050CDE0
 0050CDDC    xor         eax,eax
>0050CDDE    jmp         0050CDE2
 0050CDE0    mov         al,1
 0050CDE2    mov         byte ptr [ebp-5],al
 0050CDE5    mov         al,byte ptr [ebp-5]
 0050CDE8    pop         ecx
 0050CDE9    pop         ecx
 0050CDEA    pop         ebp
 0050CDEB    ret
*}
end;

//0050CDEC
{*function sub_0050CDEC(?:TActionClientItem; ?:TActionClientItem):?;
begin
 0050CDEC    push        ebp
 0050CDED    mov         ebp,esp
 0050CDEF    add         esp,0FFFFFFF0
 0050CDF2    mov         dword ptr [ebp-8],edx
 0050CDF5    mov         dword ptr [ebp-4],eax
 0050CDF8    mov         byte ptr [ebp-9],0
 0050CDFC    cmp         dword ptr [ebp-8],0
>0050CE00    je          0050CE18
 0050CE02    cmp         dword ptr [ebp-8],0
>0050CE06    je          0050CE1E
 0050CE08    mov         eax,dword ptr [ebp-8]
 0050CE0B    call        TActionClient.GetItems
 0050CE10    mov         edx,dword ptr [ebp-4]
 0050CE13    cmp         eax,dword ptr [edx+4]
>0050CE16    jne         0050CE1E
 0050CE18    mov         byte ptr [ebp-9],1
>0050CE1C    jmp         0050CE5C
 0050CE1E    mov         eax,dword ptr [ebp-4]
 0050CE21    call        0050CCC4
 0050CE26    mov         eax,dword ptr [eax+20]
 0050CE29    mov         dword ptr [ebp-10],eax
 0050CE2C    cmp         dword ptr [ebp-10],0
>0050CE30    je          0050CE5C
 0050CE32    mov         eax,dword ptr [ebp-8]
 0050CE35    call        TActionClient.GetItems
 0050CE3A    mov         edx,dword ptr [ebp-10]
 0050CE3D    cmp         eax,dword ptr [edx+4]
>0050CE40    jne         0050CE48
 0050CE42    mov         byte ptr [ebp-9],1
>0050CE46    jmp         0050CE5C
 0050CE48    mov         eax,dword ptr [ebp-10]
 0050CE4B    call        0050CCC4
 0050CE50    mov         eax,dword ptr [eax+20]
 0050CE53    mov         dword ptr [ebp-10],eax
 0050CE56    cmp         dword ptr [ebp-10],0
>0050CE5A    jne         0050CE32
 0050CE5C    mov         al,byte ptr [ebp-9]
 0050CE5F    mov         esp,ebp
 0050CE61    pop         ebp
 0050CE62    ret
end;*}

//0050CE64
function TActionClient.IsStoredItems(Value:TActionClients):Boolean;
begin
{*
 0050CE64    push        ebp
 0050CE65    mov         ebp,esp
 0050CE67    add         esp,0FFFFFFF8
 0050CE6A    mov         dword ptr [ebp-4],eax
 0050CE6D    mov         eax,dword ptr [ebp-4]
 0050CE70    cmp         dword ptr [eax+2C],0;TActionClient.FItems:TActionClients
>0050CE74    je          0050CEC1
 0050CE76    mov         eax,dword ptr [ebp-4]
 0050CE79    mov         eax,dword ptr [eax+2C];TActionClient.FItems:TActionClients
 0050CE7C    call        00479B60
 0050CE81    test        eax,eax
>0050CE83    jg          0050CEC5
 0050CE85    mov         eax,dword ptr [ebp-4]
 0050CE88    mov         eax,dword ptr [eax+2C];TActionClient.FItems:TActionClients
 0050CE8B    cmp         byte ptr [eax+1C],0;TActionClients.FAutoHotKeys:Boolean
>0050CE8F    je          0050CEC5
 0050CE91    mov         eax,dword ptr [ebp-4]
 0050CE94    mov         eax,dword ptr [eax+2C];TActionClient.FItems:TActionClients
 0050CE97    cmp         byte ptr [eax+28],1;TActionClients.CaptionOptions:TCaptionOptions
>0050CE9B    jne         0050CEC5
 0050CE9D    mov         eax,dword ptr [ebp-4]
 0050CEA0    mov         eax,dword ptr [eax+2C];TActionClient.FItems:TActionClients
 0050CEA3    cmp         byte ptr [eax+24],0;TActionClients.FCustomizable:Boolean
>0050CEA7    je          0050CEC5
 0050CEA9    mov         eax,dword ptr [ebp-4]
 0050CEAC    mov         eax,dword ptr [eax+2C];TActionClient.FItems:TActionClients
 0050CEAF    cmp         byte ptr [eax+2A],0;TActionClients.HideUnused:Boolean
>0050CEB3    je          0050CEC5
 0050CEB5    mov         eax,dword ptr [ebp-4]
 0050CEB8    mov         eax,dword ptr [eax+2C];TActionClient.FItems:TActionClients
 0050CEBB    cmp         byte ptr [eax+29],0;TActionClients.SmallIcons:Boolean
>0050CEBF    je          0050CEC5
 0050CEC1    xor         eax,eax
>0050CEC3    jmp         0050CEC7
 0050CEC5    mov         al,1
 0050CEC7    mov         byte ptr [ebp-5],al
 0050CECA    mov         al,byte ptr [ebp-5]
 0050CECD    pop         ecx
 0050CECE    pop         ecx
 0050CECF    pop         ebp
 0050CED0    ret
*}
end;

//0050CED4
procedure sub_0050CED4;
begin
{*
 0050CED4    push        ebp
 0050CED5    mov         ebp,esp
 0050CED7    push        ecx
 0050CED8    mov         dword ptr [ebp-4],eax
 0050CEDB    pop         ecx
 0050CEDC    pop         ebp
 0050CEDD    ret
*}
end;

//0050CEE0
procedure TActionBarItem.SetActionBar(Value:TCustomActionBar);
begin
{*
 0050CEE0    push        ebp
 0050CEE1    mov         ebp,esp
 0050CEE3    add         esp,0FFFFFFF0
 0050CEE6    xor         ecx,ecx
 0050CEE8    mov         dword ptr [ebp-10],ecx
 0050CEEB    mov         dword ptr [ebp-8],edx
 0050CEEE    mov         dword ptr [ebp-4],eax
 0050CEF1    xor         eax,eax
 0050CEF3    push        ebp
 0050CEF4    push        50CFF4
 0050CEF9    push        dword ptr fs:[eax]
 0050CEFC    mov         dword ptr fs:[eax],esp
 0050CEFF    mov         eax,dword ptr [ebp-4]
 0050CF02    mov         eax,dword ptr [eax+0C];TActionBarItem.FActionBar:TCustomActionBar
 0050CF05    cmp         eax,dword ptr [ebp-8]
>0050CF08    je          0050CFDE
 0050CF0E    mov         eax,dword ptr [ebp-4]
 0050CF11    call        0050CCC4
 0050CF16    mov         dword ptr [ebp-0C],eax
 0050CF19    cmp         dword ptr [ebp-0C],0
>0050CF1D    je          0050CF72
 0050CF1F    mov         eax,dword ptr [ebp-0C]
 0050CF22    cmp         dword ptr [eax+20],0
>0050CF26    je          0050CF67
 0050CF28    mov         eax,dword ptr [ebp-0C]
 0050CF2B    mov         eax,dword ptr [eax+20]
 0050CF2E    cmp         dword ptr [eax+0C],0
>0050CF32    je          0050CF57
 0050CF34    lea         edx,[ebp-10]
 0050CF37    mov         eax,[0055B1EC];^SAssignSubItemError:TResStringRec
 0050CF3C    call        LoadResString
 0050CF41    mov         ecx,dword ptr [ebp-10]
 0050CF44    mov         dl,1
 0050CF46    mov         eax,[004653B4];Exception
 0050CF4B    call        Exception.Create;Exception.Create
 0050CF50    call        @RaiseExcept
>0050CF55    jmp         0050CF6C
 0050CF57    mov         eax,dword ptr [ebp-0C]
 0050CF5A    mov         eax,dword ptr [eax+20]
 0050CF5D    call        0050CCC4
 0050CF62    mov         dword ptr [ebp-0C],eax
>0050CF65    jmp         0050CF6C
 0050CF67    xor         eax,eax
 0050CF69    mov         dword ptr [ebp-0C],eax
 0050CF6C    cmp         dword ptr [ebp-0C],0
>0050CF70    jne         0050CF1F
 0050CF72    mov         eax,dword ptr [ebp-4]
 0050CF75    cmp         dword ptr [eax+0C],0;TActionBarItem.FActionBar:TCustomActionBar
>0050CF79    je          0050CF98
 0050CF7B    mov         eax,dword ptr [ebp-4]
 0050CF7E    mov         eax,dword ptr [eax+0C];TActionBarItem.FActionBar:TCustomActionBar
 0050CF81    cmp         dword ptr [eax+210],0;TCustomActionBar.FActionClient:TActionClient
>0050CF88    je          0050CF98
 0050CF8A    mov         eax,dword ptr [ebp-4]
 0050CF8D    mov         eax,dword ptr [eax+0C];TActionBarItem.FActionBar:TCustomActionBar
 0050CF90    mov         edx,dword ptr [eax]
 0050CF92    call        dword ptr [edx+0D0];TCustomActionBar.sub_0050FDF4
 0050CF98    cmp         dword ptr [ebp-8],0
>0050CF9C    je          0050CFD5
 0050CF9E    mov         eax,dword ptr [ebp-4]
 0050CFA1    call        0050CCC4
 0050CFA6    call        0050BE18
 0050CFAB    test        byte ptr [eax+1C],1
>0050CFAF    jne         0050CFD5
 0050CFB1    mov         eax,dword ptr [ebp-4]
 0050CFB4    call        0050CCC4
 0050CFB9    call        0050BE18
 0050CFBE    cmp         byte ptr [eax+90],0
>0050CFC5    jne         0050CFD5
 0050CFC7    mov         edx,dword ptr [ebp-4]
 0050CFCA    mov         eax,dword ptr [ebp-8]
 0050CFCD    mov         ecx,dword ptr [eax]
 0050CFCF    call        dword ptr [ecx+124];TCustomActionBar.sub_0051191C
 0050CFD5    mov         eax,dword ptr [ebp-8]
 0050CFD8    mov         edx,dword ptr [ebp-4]
 0050CFDB    mov         dword ptr [edx+0C],eax;TActionBarItem.FActionBar:TCustomActionBar
 0050CFDE    xor         eax,eax
 0050CFE0    pop         edx
 0050CFE1    pop         ecx
 0050CFE2    pop         ecx
 0050CFE3    mov         dword ptr fs:[eax],edx
 0050CFE6    push        50CFFB
 0050CFEB    lea         eax,[ebp-10]
 0050CFEE    call        @LStrClr
 0050CFF3    ret
>0050CFF4    jmp         @HandleFinally
>0050CFF9    jmp         0050CFEB
 0050CFFB    mov         esp,ebp
 0050CFFD    pop         ebp
 0050CFFE    ret
*}
end;

//0050D000
procedure TActionClient.SetItems(Value:TActionClients);
begin
{*
 0050D000    push        ebp
 0050D001    mov         ebp,esp
 0050D003    add         esp,0FFFFFFF8
 0050D006    mov         dword ptr [ebp-8],edx
 0050D009    mov         dword ptr [ebp-4],eax
 0050D00C    cmp         dword ptr [ebp-8],0
>0050D010    jne         0050D01F
 0050D012    mov         eax,dword ptr [ebp-4]
 0050D015    add         eax,2C;TActionClient.FItems:TActionClients
 0050D018    call        FreeAndNil
>0050D01D    jmp         0050D02D
 0050D01F    mov         edx,dword ptr [ebp-8]
 0050D022    mov         eax,dword ptr [ebp-4]
 0050D025    mov         eax,dword ptr [eax+2C];TActionClient.FItems:TActionClients
 0050D028    mov         ecx,dword ptr [eax]
 0050D02A    call        dword ptr [ecx+8];TActionClients.sub_0050D76C
 0050D02D    pop         ecx
 0050D02E    pop         ecx
 0050D02F    pop         ebp
 0050D030    ret
*}
end;

//0050D034
procedure TActionClient.SetBackground(Value:TPicture);
begin
{*
 0050D034    push        ebp
 0050D035    mov         ebp,esp
 0050D037    add         esp,0FFFFFFF0
 0050D03A    mov         dword ptr [ebp-8],edx
 0050D03D    mov         dword ptr [ebp-4],eax
 0050D040    mov         edx,dword ptr [ebp-8]
 0050D043    mov         eax,dword ptr [ebp-4]
 0050D046    mov         eax,dword ptr [eax+10];TActionClient.FBackground:TPicture
 0050D049    mov         ecx,dword ptr [eax]
 0050D04B    call        dword ptr [ecx+8];TPicture.sub_0048AAA4
 0050D04E    cmp         dword ptr [ebp-8],0
>0050D052    je          0050D0D8
 0050D058    mov         eax,dword ptr [ebp-4]
 0050D05B    call        0050CB98
 0050D060    test        al,al
>0050D062    je          0050D0D8
 0050D064    mov         eax,dword ptr [ebp-4]
 0050D067    cmp         dword ptr [eax+0C],0;TActionClient.FActionBar:TCustomActionBar
>0050D06B    je          0050D0D8
 0050D06D    mov         eax,dword ptr [ebp-4]
 0050D070    mov         eax,dword ptr [eax+0C];TActionClient.FActionBar:TCustomActionBar
 0050D073    call        00511668
 0050D078    call        00479B60
 0050D07D    dec         eax
 0050D07E    test        eax,eax
>0050D080    jl          0050D0C2
 0050D082    inc         eax
 0050D083    mov         dword ptr [ebp-10],eax
 0050D086    mov         dword ptr [ebp-0C],0
 0050D08D    mov         eax,dword ptr [ebp-4]
 0050D090    mov         eax,dword ptr [eax+0C];TActionClient.FActionBar:TCustomActionBar
 0050D093    call        00511668
 0050D098    mov         edx,dword ptr [ebp-0C]
 0050D09B    call        0050D884
 0050D0A0    mov         eax,dword ptr [eax+40]
 0050D0A3    mov         edx,dword ptr [ebp-4]
 0050D0A6    mov         dl,byte ptr [edx+14];TActionClient.BackgroundLayout:TBackgroundLayout
 0050D0A9    add         dl,0FD
 0050D0AC    sub         dl,2
 0050D0AF    setb        dl
 0050D0B2    xor         dl,1
 0050D0B5    call        005147F4
 0050D0BA    inc         dword ptr [ebp-0C]
 0050D0BD    dec         dword ptr [ebp-10]
>0050D0C0    jne         0050D08D
 0050D0C2    mov         eax,dword ptr [ebp-4]
 0050D0C5    mov         eax,dword ptr [eax+0C];TActionClient.FActionBar:TCustomActionBar
 0050D0C8    call        004CF09C
 0050D0CD    mov         eax,dword ptr [ebp-4]
 0050D0D0    mov         eax,dword ptr [eax+0C];TActionClient.FActionBar:TCustomActionBar
 0050D0D3    mov         edx,dword ptr [eax]
 0050D0D5    call        dword ptr [edx+7C];TCustomActionBar.sub_004D3648
 0050D0D8    mov         esp,ebp
 0050D0DA    pop         ebp
 0050D0DB    ret
*}
end;

//0050D0DC
procedure TActionClient.SetBackgroundLayout(Value:TBackgroundLayout);
begin
{*
 0050D0DC    push        ebp
 0050D0DD    mov         ebp,esp
 0050D0DF    add         esp,0FFFFFFF0
 0050D0E2    push        esi
 0050D0E3    mov         byte ptr [ebp-5],dl
 0050D0E6    mov         dword ptr [ebp-4],eax
 0050D0E9    mov         eax,dword ptr [ebp-4]
 0050D0EC    mov         al,byte ptr [eax+14];TActionClient.BackgroundLayout:TBackgroundLayout
 0050D0EF    cmp         al,byte ptr [ebp-5]
>0050D0F2    je          0050D19E
 0050D0F8    mov         al,byte ptr [ebp-5]
 0050D0FB    mov         edx,dword ptr [ebp-4]
 0050D0FE    mov         byte ptr [edx+14],al;TActionClient.BackgroundLayout:TBackgroundLayout
 0050D101    mov         eax,dword ptr [ebp-4]
 0050D104    call        0050CCE0
 0050D109    test        al,al
>0050D10B    je          0050D17B
 0050D10D    mov         eax,dword ptr [ebp-4]
 0050D110    call        0050CB98
 0050D115    test        al,al
>0050D117    je          0050D17B
 0050D119    mov         eax,dword ptr [ebp-4]
 0050D11C    call        TActionClient.GetItems
 0050D121    call        00479B60
 0050D126    dec         eax
 0050D127    test        eax,eax
>0050D129    jl          0050D17B
 0050D12B    inc         eax
 0050D12C    mov         dword ptr [ebp-10],eax
 0050D12F    mov         dword ptr [ebp-0C],0
 0050D136    mov         eax,dword ptr [ebp-4]
 0050D139    call        TActionClient.GetItems
 0050D13E    mov         edx,dword ptr [ebp-0C]
 0050D141    call        0050D884
 0050D146    cmp         dword ptr [eax+40],0
>0050D14A    je          0050D173
 0050D14C    mov         eax,dword ptr [ebp-4]
 0050D14F    call        TActionClient.GetItems
 0050D154    mov         edx,dword ptr [ebp-0C]
 0050D157    call        0050D884
 0050D15C    mov         eax,dword ptr [eax+40]
 0050D15F    mov         dl,byte ptr [ebp-5]
 0050D162    add         dl,0FD
 0050D165    sub         dl,2
 0050D168    setb        dl
 0050D16B    xor         dl,1
 0050D16E    call        005147F4
 0050D173    inc         dword ptr [ebp-0C]
 0050D176    dec         dword ptr [ebp-10]
>0050D179    jne         0050D136
 0050D17B    mov         eax,dword ptr [ebp-4]
 0050D17E    cmp         dword ptr [eax+0C],0;TActionClient.FActionBar:TCustomActionBar
>0050D182    je          0050D19E
 0050D184    mov         eax,dword ptr [ebp-4]
 0050D187    mov         eax,dword ptr [eax+0C];TActionClient.FActionBar:TCustomActionBar
 0050D18A    mov         si,0FFD0
 0050D18E    call        @CallDynaInst;TControl.sub_004C9ED8
 0050D193    mov         eax,dword ptr [ebp-4]
 0050D196    mov         eax,dword ptr [eax+0C];TActionClient.FActionBar:TCustomActionBar
 0050D199    mov         edx,dword ptr [eax]
 0050D19B    call        dword ptr [edx+7C];TCustomActionBar.sub_004D3648
 0050D19E    pop         esi
 0050D19F    mov         esp,ebp
 0050D1A1    pop         ebp
 0050D1A2    ret
*}
end;

//0050D1A4
procedure TActionClient.SetChangesAllowed(Value:TChangesAllowedSet);
begin
{*
 0050D1A4    push        ebp
 0050D1A5    mov         ebp,esp
 0050D1A7    add         esp,0FFFFFFF8
 0050D1AA    mov         byte ptr [ebp-5],dl
 0050D1AD    mov         dword ptr [ebp-4],eax
 0050D1B0    mov         al,byte ptr [ebp-5]
 0050D1B3    mov         edx,dword ptr [ebp-4]
 0050D1B6    cmp         al,byte ptr [edx+31];TActionClient.ChangesAllowed:TChangesAllowedSet
>0050D1B9    je          0050D1C4
 0050D1BB    mov         al,byte ptr [ebp-5]
 0050D1BE    mov         edx,dword ptr [ebp-4]
 0050D1C1    mov         byte ptr [edx+31],al;TActionClient.ChangesAllowed:TChangesAllowedSet
 0050D1C4    pop         ecx
 0050D1C5    pop         ecx
 0050D1C6    pop         ebp
 0050D1C7    ret
*}
end;

//0050D1C8
procedure TActionClient.SetColor(Value:TColor);
begin
{*
 0050D1C8    push        ebp
 0050D1C9    mov         ebp,esp
 0050D1CB    add         esp,0FFFFFFF8
 0050D1CE    mov         dword ptr [ebp-8],edx
 0050D1D1    mov         dword ptr [ebp-4],eax
 0050D1D4    mov         eax,dword ptr [ebp-4]
 0050D1D7    mov         eax,dword ptr [eax+24];TActionClient.Color:TColor
 0050D1DA    cmp         eax,dword ptr [ebp-8]
>0050D1DD    je          0050D1F0
 0050D1DF    mov         eax,dword ptr [ebp-8]
 0050D1E2    mov         edx,dword ptr [ebp-4]
 0050D1E5    mov         dword ptr [edx+24],eax;TActionClient.Color:TColor
 0050D1E8    mov         eax,dword ptr [ebp-4]
 0050D1EB    mov         edx,dword ptr [eax]
 0050D1ED    call        dword ptr [edx+20];TActionClient.sub_0050CA88
 0050D1F0    pop         ecx
 0050D1F1    pop         ecx
 0050D1F2    pop         ebp
 0050D1F3    ret
*}
end;

//0050D1F4
procedure TActionClient.SetContextItems(Value:TActionClients);
begin
{*
 0050D1F4    push        ebp
 0050D1F5    mov         ebp,esp
 0050D1F7    add         esp,0FFFFFFF8
 0050D1FA    mov         dword ptr [ebp-8],edx
 0050D1FD    mov         dword ptr [ebp-4],eax
 0050D200    mov         eax,dword ptr [ebp-8]
 0050D203    mov         edx,dword ptr [ebp-4]
 0050D206    mov         dword ptr [edx+1C],eax;TActionClient.FContextItems:TActionClients
 0050D209    pop         ecx
 0050D20A    pop         ecx
 0050D20B    pop         ebp
 0050D20C    ret
*}
end;

//0050D210
procedure TActionClient.SetVisible(Value:Boolean);
begin
{*
 0050D210    push        ebp
 0050D211    mov         ebp,esp
 0050D213    add         esp,0FFFFFFF8
 0050D216    mov         byte ptr [ebp-5],dl
 0050D219    mov         dword ptr [ebp-4],eax
 0050D21C    mov         eax,dword ptr [ebp-4]
 0050D21F    mov         al,byte ptr [eax+30];TActionClient.Visible:Boolean
 0050D222    cmp         al,byte ptr [ebp-5]
>0050D225    je          0050D237
 0050D227    mov         al,byte ptr [ebp-5]
 0050D22A    mov         edx,dword ptr [ebp-4]
 0050D22D    mov         byte ptr [edx+30],al;TActionClient.Visible:Boolean
 0050D230    xor         eax,eax
 0050D232    call        0050A550
 0050D237    pop         ecx
 0050D238    pop         ecx
 0050D239    pop         ebp
 0050D23A    ret
*}
end;

//0050D23C
procedure sub_0050D23C;
begin
{*
 0050D23C    push        ebp
 0050D23D    mov         ebp,esp
 0050D23F    push        ecx
 0050D240    mov         dword ptr [ebp-4],eax
 0050D243    mov         eax,dword ptr [ebp-4]
 0050D246    cmp         dword ptr [eax+0C],0;TActionBarItem.FActionBar:TCustomActionBar
>0050D24A    je          0050D278
 0050D24C    mov         eax,dword ptr [ebp-4]
 0050D24F    cmp         dword ptr [eax+24],20000000;TActionBarItem.Color:TColor
>0050D256    jne         0050D267
 0050D258    mov         dl,1
 0050D25A    mov         eax,dword ptr [ebp-4]
 0050D25D    mov         eax,dword ptr [eax+0C];TActionBarItem.FActionBar:TCustomActionBar
 0050D260    call        TPanel.SetParentColor
>0050D265    jmp         0050D278
 0050D267    mov         eax,dword ptr [ebp-4]
 0050D26A    mov         edx,dword ptr [eax+24];TActionBarItem.Color:TColor
 0050D26D    mov         eax,dword ptr [ebp-4]
 0050D270    mov         eax,dword ptr [eax+0C];TActionBarItem.FActionBar:TCustomActionBar
 0050D273    call        TPanel.SetColor
 0050D278    pop         ecx
 0050D279    pop         ebp
 0050D27A    ret
*}
end;

//0050D27C
constructor sub_0050D27C;
begin
{*
 0050D27C    push        ebp
 0050D27D    mov         ebp,esp
 0050D27F    add         esp,0FFFFFFF4
 0050D282    test        dl,dl
>0050D284    je          0050D28E
 0050D286    add         esp,0FFFFFFF0
 0050D289    call        @ClassCreate
 0050D28E    mov         dword ptr [ebp-0C],ecx
 0050D291    mov         byte ptr [ebp-5],dl
 0050D294    mov         dword ptr [ebp-4],eax
 0050D297    mov         ecx,dword ptr [ebp-0C]
 0050D29A    xor         edx,edx
 0050D29C    mov         eax,dword ptr [ebp-4]
 0050D29F    call        0050C7E4
 0050D2A4    mov         eax,dword ptr [ebp-4]
 0050D2A7    mov         byte ptr [eax+38],1;TActionBarItem.AutoSize:Boolean
 0050D2AB    mov         eax,dword ptr [ebp-4]
 0050D2AE    cmp         byte ptr [ebp-5],0
>0050D2B2    je          0050D2C3
 0050D2B4    call        @AfterConstruction
 0050D2B9    pop         dword ptr fs:[0]
 0050D2C0    add         esp,0C
 0050D2C3    mov         eax,dword ptr [ebp-4]
 0050D2C6    mov         esp,ebp
 0050D2C8    pop         ebp
 0050D2C9    ret
*}
end;

//0050D2CC
{*procedure sub_0050D2CC(?:?);
begin
 0050D2CC    push        ebp
 0050D2CD    mov         ebp,esp
 0050D2CF    add         esp,0FFFFFFF8
 0050D2D2    mov         dword ptr [ebp-8],edx
 0050D2D5    mov         dword ptr [ebp-4],eax
 0050D2D8    mov         eax,dword ptr [ebp-4]
 0050D2DB    cmp         dword ptr [eax+0C],0;TActionBarItem.FActionBar:TCustomActionBar
>0050D2DF    je          0050D2F9
 0050D2E1    mov         eax,dword ptr [ebp-4]
 0050D2E4    mov         eax,dword ptr [eax+0C];TActionBarItem.FActionBar:TCustomActionBar
 0050D2E7    mov         ecx,dword ptr [eax+8];TCustomActionBar.Name:TComponentName
 0050D2EA    mov         eax,dword ptr [ebp-8]
 0050D2ED    mov         edx,50D310;'ActionBar ->'
 0050D2F2    call        @LStrCat3
>0050D2F7    jmp         0050D304
 0050D2F9    mov         edx,dword ptr [ebp-8]
 0050D2FC    mov         eax,dword ptr [ebp-4]
 0050D2FF    call        004796AC
 0050D304    pop         ecx
 0050D305    pop         ecx
 0050D306    pop         ebp
 0050D307    ret
end;*}

//0050D320
procedure sub_0050D320;
begin
{*
 0050D320    push        ebp
 0050D321    mov         ebp,esp
 0050D323    push        ecx
 0050D324    push        esi
 0050D325    mov         dword ptr [ebp-4],eax
 0050D328    mov         eax,dword ptr [ebp-4]
 0050D32B    cmp         dword ptr [eax+0C],0;TActionBarItem.FActionBar:TCustomActionBar
>0050D32F    je          0050D34C
 0050D331    mov         eax,dword ptr [ebp-4]
 0050D334    mov         eax,dword ptr [eax+0C];TActionBarItem.FActionBar:TCustomActionBar
 0050D337    test        byte ptr [eax+1C],1;TCustomActionBar.FComponentState:TComponentState
>0050D33B    jne         0050D34C
 0050D33D    mov         eax,dword ptr [ebp-4]
 0050D340    mov         eax,dword ptr [eax+0C];TActionBarItem.FActionBar:TCustomActionBar
 0050D343    mov         si,0FFD0
 0050D347    call        @CallDynaInst;TControl.sub_004C9ED8
 0050D34C    pop         esi
 0050D34D    pop         ecx
 0050D34E    pop         ebp
 0050D34F    ret
*}
end;

//0050D350
procedure TActionBarItem.SetAutoSize(Value:Boolean);
begin
{*
 0050D350    push        ebp
 0050D351    mov         ebp,esp
 0050D353    add         esp,0FFFFFFF8
 0050D356    mov         byte ptr [ebp-5],dl
 0050D359    mov         dword ptr [ebp-4],eax
 0050D35C    mov         eax,dword ptr [ebp-4]
 0050D35F    mov         al,byte ptr [eax+38];TActionBarItem.AutoSize:Boolean
 0050D362    cmp         al,byte ptr [ebp-5]
>0050D365    je          0050D387
 0050D367    mov         al,byte ptr [ebp-5]
 0050D36A    mov         edx,dword ptr [ebp-4]
 0050D36D    mov         byte ptr [edx+38],al;TActionBarItem.AutoSize:Boolean
 0050D370    mov         eax,dword ptr [ebp-4]
 0050D373    cmp         dword ptr [eax+0C],0;TActionBarItem.FActionBar:TCustomActionBar
>0050D377    je          0050D387
 0050D379    mov         eax,dword ptr [ebp-4]
 0050D37C    mov         eax,dword ptr [eax+0C];TActionBarItem.FActionBar:TCustomActionBar
 0050D37F    mov         edx,dword ptr [eax]
 0050D381    call        dword ptr [edx+0CC];TCustomActionBar.sub_0050FCD4
 0050D387    pop         ecx
 0050D388    pop         ecx
 0050D389    pop         ebp
 0050D38A    ret
*}
end;

//0050D38C
procedure TActionBarItem.SetGlyphLayout(Value:TButtonLayout);
begin
{*
 0050D38C    push        ebp
 0050D38D    mov         ebp,esp
 0050D38F    add         esp,0FFFFFFF0
 0050D392    push        esi
 0050D393    mov         byte ptr [ebp-5],dl
 0050D396    mov         dword ptr [ebp-4],eax
 0050D399    mov         eax,dword ptr [ebp-4]
 0050D39C    mov         al,byte ptr [eax+39];TActionBarItem.GlyphLayout:TButtonLayout
 0050D39F    cmp         al,byte ptr [ebp-5]
>0050D3A2    je          0050D4B8
 0050D3A8    mov         eax,dword ptr [ebp-4]
 0050D3AB    mov         dl,byte ptr [ebp-5]
 0050D3AE    mov         byte ptr [eax+39],dl;TActionBarItem.GlyphLayout:TButtonLayout
 0050D3B1    mov         eax,dword ptr [ebp-4]
 0050D3B4    cmp         dword ptr [eax+0C],0;TActionBarItem.FActionBar:TCustomActionBar
>0050D3B8    je          0050D45F
 0050D3BE    mov         eax,dword ptr [ebp-4]
 0050D3C1    mov         eax,dword ptr [eax+0C];TActionBarItem.FActionBar:TCustomActionBar
 0050D3C4    call        TWinControl.DisableAlign
 0050D3C9    xor         eax,eax
 0050D3CB    push        ebp
 0050D3CC    push        50D458
 0050D3D1    push        dword ptr fs:[eax]
 0050D3D4    mov         dword ptr fs:[eax],esp
 0050D3D7    mov         eax,dword ptr [ebp-4]
 0050D3DA    call        TActionClient.GetItems
 0050D3DF    call        00479B60
 0050D3E4    dec         eax
 0050D3E5    test        eax,eax
>0050D3E7    jl          0050D430
 0050D3E9    inc         eax
 0050D3EA    mov         dword ptr [ebp-10],eax
 0050D3ED    mov         dword ptr [ebp-0C],0
 0050D3F4    mov         eax,dword ptr [ebp-4]
 0050D3F7    call        TActionClient.GetItems
 0050D3FC    mov         edx,dword ptr [ebp-0C]
 0050D3FF    call        0050D884
 0050D404    cmp         dword ptr [eax+40],0
>0050D408    je          0050D428
 0050D40A    mov         eax,dword ptr [ebp-4]
 0050D40D    call        TActionClient.GetItems
 0050D412    mov         edx,dword ptr [ebp-0C]
 0050D415    call        0050D884
 0050D41A    mov         eax,dword ptr [eax+40]
 0050D41D    mov         dl,byte ptr [ebp-5]
 0050D420    mov         ecx,dword ptr [eax]
 0050D422    call        dword ptr [ecx+0D4]
 0050D428    inc         dword ptr [ebp-0C]
 0050D42B    dec         dword ptr [ebp-10]
>0050D42E    jne         0050D3F4
 0050D430    xor         eax,eax
 0050D432    pop         edx
 0050D433    pop         ecx
 0050D434    pop         ecx
 0050D435    mov         dword ptr fs:[eax],edx
 0050D438    push        50D4B8
 0050D43D    mov         eax,dword ptr [ebp-4]
 0050D440    mov         eax,dword ptr [eax+0C];TActionBarItem.FActionBar:TCustomActionBar
 0050D443    call        TWinControl.EnableAlign
 0050D448    mov         eax,dword ptr [ebp-4]
 0050D44B    mov         eax,dword ptr [eax+0C];TActionBarItem.FActionBar:TCustomActionBar
 0050D44E    mov         si,0FFCF
 0050D452    call        @CallDynaInst;TControl.sub_004C9EFC
 0050D457    ret
>0050D458    jmp         @HandleFinally
>0050D45D    jmp         0050D43D
 0050D45F    mov         eax,dword ptr [ebp-4]
 0050D462    call        TActionClient.GetItems
 0050D467    call        00479B60
 0050D46C    dec         eax
 0050D46D    test        eax,eax
>0050D46F    jl          0050D4B8
 0050D471    inc         eax
 0050D472    mov         dword ptr [ebp-10],eax
 0050D475    mov         dword ptr [ebp-0C],0
 0050D47C    mov         eax,dword ptr [ebp-4]
 0050D47F    call        TActionClient.GetItems
 0050D484    mov         edx,dword ptr [ebp-0C]
 0050D487    call        0050D884
 0050D48C    cmp         dword ptr [eax+40],0
>0050D490    je          0050D4B0
 0050D492    mov         eax,dword ptr [ebp-4]
 0050D495    call        TActionClient.GetItems
 0050D49A    mov         edx,dword ptr [ebp-0C]
 0050D49D    call        0050D884
 0050D4A2    mov         eax,dword ptr [eax+40]
 0050D4A5    mov         dl,byte ptr [ebp-5]
 0050D4A8    mov         ecx,dword ptr [eax]
 0050D4AA    call        dword ptr [ecx+0D4]
 0050D4B0    inc         dword ptr [ebp-0C]
 0050D4B3    dec         dword ptr [ebp-10]
>0050D4B6    jne         0050D47C
 0050D4B8    pop         esi
 0050D4B9    mov         esp,ebp
 0050D4BB    pop         ebp
 0050D4BC    ret
*}
end;

//0050D4C0
{*procedure sub_0050D4C0(?:?);
begin
 0050D4C0    push        ebp
 0050D4C1    mov         ebp,esp
 0050D4C3    add         esp,0FFFFFFF8
 0050D4C6    mov         byte ptr [ebp-5],dl
 0050D4C9    mov         dword ptr [ebp-4],eax
 0050D4CC    mov         dl,byte ptr [ebp-5]
 0050D4CF    mov         eax,dword ptr [ebp-4]
 0050D4D2    call        TActionClient.SetVisible
 0050D4D7    mov         eax,dword ptr [ebp-4]
 0050D4DA    cmp         dword ptr [eax+0C],0;TActionBarItem.FActionBar:TCustomActionBar
>0050D4DE    je          0050D4F1
 0050D4E0    mov         eax,dword ptr [ebp-4]
 0050D4E3    mov         dl,byte ptr [eax+30];TActionBarItem.Visible:Boolean
 0050D4E6    mov         eax,dword ptr [ebp-4]
 0050D4E9    mov         eax,dword ptr [eax+0C];TActionBarItem.FActionBar:TCustomActionBar
 0050D4EC    call        TControl.SetVisible
 0050D4F1    pop         ecx
 0050D4F2    pop         ecx
 0050D4F3    pop         ebp
 0050D4F4    ret
end;*}

//0050D4F8
{*constructor sub_0050D4F8(?:?);
begin
 0050D4F8    push        ebp
 0050D4F9    mov         ebp,esp
 0050D4FB    add         esp,0FFFFFFF4
 0050D4FE    test        dl,dl
>0050D500    je          0050D50A
 0050D502    add         esp,0FFFFFFF0
 0050D505    call        @ClassCreate
 0050D50A    mov         dword ptr [ebp-0C],ecx
 0050D50D    mov         byte ptr [ebp-5],dl
 0050D510    mov         dword ptr [ebp-4],eax
 0050D513    mov         eax,dword ptr [ebp+8]
 0050D516    push        eax
 0050D517    mov         ecx,dword ptr [ebp-0C]
 0050D51A    xor         edx,edx
 0050D51C    mov         eax,dword ptr [ebp-4]
 0050D51F    call        TWorkAreas.Create
 0050D524    mov         eax,dword ptr [ebp-4]
 0050D527    xor         edx,edx
 0050D529    mov         dword ptr [eax+28],edx
 0050D52C    mov         dl,1
 0050D52E    mov         eax,dword ptr [ebp-4]
 0050D531    call        TActionBars.SetShowHints
 0050D536    mov         dl,1
 0050D538    mov         eax,dword ptr [ebp-4]
 0050D53B    call        TActionBars.SetHintShortCuts
 0050D540    mov         eax,dword ptr [ebp-4]
 0050D543    cmp         byte ptr [ebp-5],0
>0050D547    je          0050D558
 0050D549    call        @AfterConstruction
 0050D54E    pop         dword ptr fs:[0]
 0050D555    add         esp,0C
 0050D558    mov         eax,dword ptr [ebp-4]
 0050D55B    mov         esp,ebp
 0050D55D    pop         ebp
 0050D55E    ret         4
end;*}

//0050D564
{*function sub_0050D564(?:TActionBars):?;
begin
 0050D564    push        ebp
 0050D565    mov         ebp,esp
 0050D567    add         esp,0FFFFFFF8
 0050D56A    mov         dword ptr [ebp-4],eax
 0050D56D    mov         eax,dword ptr [ebp-4]
 0050D570    call        0047992C
 0050D575    mov         dword ptr [ebp-8],eax
 0050D578    mov         eax,dword ptr [ebp-8]
 0050D57B    pop         ecx
 0050D57C    pop         ecx
 0050D57D    pop         ebp
 0050D57E    ret
end;*}

//0050D5D0
{*function sub_0050D5D0(?:TActionBars; ?:?):?;
begin
 0050D5D0    push        ebp
 0050D5D1    mov         ebp,esp
 0050D5D3    add         esp,0FFFFFFF4
 0050D5D6    mov         dword ptr [ebp-8],edx
 0050D5D9    mov         dword ptr [ebp-4],eax
 0050D5DC    mov         edx,dword ptr [ebp-8]
 0050D5DF    mov         eax,dword ptr [ebp-4]
 0050D5E2    call        00479B7C
 0050D5E7    mov         dword ptr [ebp-0C],eax
 0050D5EA    mov         eax,dword ptr [ebp-0C]
 0050D5ED    mov         esp,ebp
 0050D5EF    pop         ebp
 0050D5F0    ret
end;*}

//0050D5F4
{*function TActionBars.GetHintShortCuts:?;
begin
 0050D5F4    push        ebp
 0050D5F5    mov         ebp,esp
 0050D5F7    add         esp,0FFFFFFF8
 0050D5FA    mov         dword ptr [ebp-4],eax
 0050D5FD    mov         byte ptr [ebp-5],0
 0050D601    mov         eax,[0055B4C8];^Application:TApplication
 0050D606    cmp         dword ptr [eax],0
>0050D609    je          0050D618
 0050D60B    mov         eax,[0055B4C8];^Application:TApplication
 0050D610    mov         eax,dword ptr [eax]
 0050D612    mov         al,byte ptr [eax+7C];TApplication.FHintShortCuts:Boolean
 0050D615    mov         byte ptr [ebp-5],al
 0050D618    mov         al,byte ptr [ebp-5]
 0050D61B    pop         ecx
 0050D61C    pop         ecx
 0050D61D    pop         ebp
 0050D61E    ret
end;*}

//0050D620
{*procedure sub_0050D620(?:?; ?:?);
begin
 0050D620    push        ebp
 0050D621    mov         ebp,esp
 0050D623    add         esp,0FFFFFFF0
 0050D626    mov         byte ptr [ebp-9],cl
 0050D629    mov         dword ptr [ebp-8],edx
 0050D62C    mov         dword ptr [ebp-4],eax
 0050D62F    mov         cl,byte ptr [ebp-9]
 0050D632    mov         edx,dword ptr [ebp-8]
 0050D635    mov         eax,dword ptr [ebp-4]
 0050D638    call        00479F7C
 0050D63D    cmp         byte ptr [ebp-9],2
>0050D641    jne         0050D67D
 0050D643    mov         eax,dword ptr [ebp-8]
 0050D646    mov         edx,dword ptr ds:[509200];TActionBarItem
 0050D64C    call        @IsClass
 0050D651    test        al,al
>0050D653    je          0050D67D
 0050D655    mov         eax,dword ptr [ebp-8]
 0050D658    mov         edx,dword ptr ds:[509200];TActionBarItem
 0050D65E    call        @AsClass
 0050D663    mov         dword ptr [ebp-10],eax
 0050D666    mov         eax,dword ptr [ebp-10]
 0050D669    cmp         dword ptr [eax+0C],0;TActionBarItem.FActionBar:TCustomActionBar
>0050D66D    je          0050D67D
 0050D66F    mov         eax,dword ptr [ebp-10]
 0050D672    mov         eax,dword ptr [eax+0C];TActionBarItem.FActionBar:TCustomActionBar
 0050D675    xor         edx,edx
 0050D677    mov         dword ptr [eax+210],edx;TCustomActionBar.FActionClient:TActionClient
 0050D67D    mov         esp,ebp
 0050D67F    pop         ebp
 0050D680    ret
end;*}

//0050D684
procedure TActionBars.SetShowHints(Value:Boolean);
begin
{*
 0050D684    push        ebp
 0050D685    mov         ebp,esp
 0050D687    add         esp,0FFFFFFF8
 0050D68A    mov         byte ptr [ebp-5],dl
 0050D68D    mov         dword ptr [ebp-4],eax
 0050D690    mov         al,byte ptr [ebp-5]
 0050D693    mov         edx,dword ptr [ebp-4]
 0050D696    cmp         al,byte ptr [edx+2C];TActionBars.ShowHints:Boolean
>0050D699    je          0050D6B8
 0050D69B    mov         al,byte ptr [ebp-5]
 0050D69E    mov         edx,dword ptr [ebp-4]
 0050D6A1    mov         byte ptr [edx+2C],al;TActionBars.ShowHints:Boolean
 0050D6A4    mov         eax,dword ptr [ebp-4]
 0050D6A7    push        eax
 0050D6A8    push        50D580
 0050D6AD    mov         edx,dword ptr [ebp-4]
 0050D6B0    mov         eax,dword ptr [ebp-4]
 0050D6B3    call        0050C668
 0050D6B8    pop         ecx
 0050D6B9    pop         ecx
 0050D6BA    pop         ebp
 0050D6BB    ret
*}
end;

//0050D6BC
procedure TActionBars.SetHintShortCuts(Value:Boolean);
begin
{*
 0050D6BC    push        ebp
 0050D6BD    mov         ebp,esp
 0050D6BF    add         esp,0FFFFFFF8
 0050D6C2    mov         byte ptr [ebp-5],dl
 0050D6C5    mov         dword ptr [ebp-4],eax
 0050D6C8    mov         eax,[0055B4C8];^Application:TApplication
 0050D6CD    cmp         dword ptr [eax],0
>0050D6D0    je          0050D6DF
 0050D6D2    mov         eax,[0055B4C8];^Application:TApplication
 0050D6D7    mov         eax,dword ptr [eax]
 0050D6D9    mov         dl,byte ptr [ebp-5]
 0050D6DC    mov         byte ptr [eax+7C],dl;TApplication.FHintShortCuts:Boolean
 0050D6DF    pop         ecx
 0050D6E0    pop         ecx
 0050D6E1    pop         ebp
 0050D6E2    ret
*}
end;

//0050D6E4
{*constructor TActionClients.Create(?:?);
begin
 0050D6E4    push        ebp
 0050D6E5    mov         ebp,esp
 0050D6E7    add         esp,0FFFFFFF4
 0050D6EA    test        dl,dl
>0050D6EC    je          0050D6F6
 0050D6EE    add         esp,0FFFFFFF0
 0050D6F1    call        @ClassCreate
 0050D6F6    mov         dword ptr [ebp-0C],ecx
 0050D6F9    mov         byte ptr [ebp-5],dl
 0050D6FC    mov         dword ptr [ebp-4],eax
 0050D6FF    mov         eax,dword ptr [ebp+8]
 0050D702    push        eax
 0050D703    mov         ecx,dword ptr [ebp-0C]
 0050D706    xor         edx,edx
 0050D708    mov         eax,dword ptr [ebp-4]
 0050D70B    call        TWorkAreas.Create
 0050D710    mov         eax,dword ptr [ebp-4]
 0050D713    mov         byte ptr [eax+28],1;TActionClients.CaptionOptions:TCaptionOptions
 0050D717    mov         eax,dword ptr [ebp-4]
 0050D71A    mov         byte ptr [eax+29],1;TActionClients.SmallIcons:Boolean
 0050D71E    mov         eax,dword ptr [ebp-4]
 0050D721    mov         byte ptr [eax+2A],1;TActionClients.HideUnused:Boolean
 0050D725    mov         eax,dword ptr [ebp-4]
 0050D728    mov         byte ptr [eax+1C],1;TActionClients.FAutoHotKeys:Boolean
 0050D72C    mov         eax,dword ptr [ebp-4]
 0050D72F    cmp         byte ptr [ebp-5],0
>0050D733    je          0050D744
 0050D735    call        @AfterConstruction
 0050D73A    pop         dword ptr fs:[0]
 0050D741    add         esp,0C
 0050D744    mov         eax,dword ptr [ebp-4]
 0050D747    mov         esp,ebp
 0050D749    pop         ebp
 0050D74A    ret         4
end;*}

//0050D750
{*function sub_0050D750(?:?):?;
begin
 0050D750    push        ebp
 0050D751    mov         ebp,esp
 0050D753    add         esp,0FFFFFFF8
 0050D756    mov         dword ptr [ebp-4],eax
 0050D759    mov         eax,dword ptr [ebp-4]
 0050D75C    call        0047992C
 0050D761    mov         dword ptr [ebp-8],eax
 0050D764    mov         eax,dword ptr [ebp-8]
 0050D767    pop         ecx
 0050D768    pop         ecx
 0050D769    pop         ebp
 0050D76A    ret
end;*}

//0050D76C
{*procedure sub_0050D76C(?:?);
begin
 0050D76C    push        ebp
 0050D76D    mov         ebp,esp
 0050D76F    add         esp,0FFFFFFF8
 0050D772    mov         dword ptr [ebp-8],edx
 0050D775    mov         dword ptr [ebp-4],eax
 0050D778    mov         edx,dword ptr [ebp-8]
 0050D77B    mov         eax,dword ptr [ebp-4]
 0050D77E    call        00479958
 0050D783    mov         eax,dword ptr [ebp-8]
 0050D786    mov         edx,dword ptr ds:[5094AC];TActionClients
 0050D78C    call        @IsClass
 0050D791    test        al,al
>0050D793    je          0050D7D9
 0050D795    mov         eax,dword ptr [ebp-8]
 0050D798    mov         dl,byte ptr [eax+1C]
 0050D79B    mov         eax,dword ptr [ebp-4]
 0050D79E    call        TActionClients.SetAutoHotKeys
 0050D7A3    mov         eax,dword ptr [ebp-8]
 0050D7A6    mov         al,byte ptr [eax+24]
 0050D7A9    mov         edx,dword ptr [ebp-4]
 0050D7AC    mov         byte ptr [edx+24],al;TActionClients.FCustomizable:Boolean
 0050D7AF    mov         eax,dword ptr [ebp-8]
 0050D7B2    mov         dl,byte ptr [eax+2A]
 0050D7B5    mov         eax,dword ptr [ebp-4]
 0050D7B8    call        TActionClients.SetHideUnused
 0050D7BD    mov         eax,dword ptr [ebp-8]
 0050D7C0    mov         dl,byte ptr [eax+28]
 0050D7C3    mov         eax,dword ptr [ebp-4]
 0050D7C6    call        TActionClients.SetCaptionOptions
 0050D7CB    mov         eax,dword ptr [ebp-8]
 0050D7CE    mov         dl,byte ptr [eax+29]
 0050D7D1    mov         eax,dword ptr [ebp-4]
 0050D7D4    call        TActionClients.SetSmallIcons
 0050D7D9    pop         ecx
 0050D7DA    pop         ecx
 0050D7DB    pop         ebp
 0050D7DC    ret
end;*}

//0050D884
{*function sub_0050D884(?:TActionClients; ?:?):?;
begin
 0050D884    push        ebp
 0050D885    mov         ebp,esp
 0050D887    add         esp,0FFFFFFF4
 0050D88A    mov         dword ptr [ebp-8],edx
 0050D88D    mov         dword ptr [ebp-4],eax
 0050D890    mov         edx,dword ptr [ebp-8]
 0050D893    mov         eax,dword ptr [ebp-4]
 0050D896    call        00479B7C
 0050D89B    mov         dword ptr [ebp-0C],eax
 0050D89E    mov         eax,dword ptr [ebp-0C]
 0050D8A1    mov         esp,ebp
 0050D8A3    pop         ebp
 0050D8A4    ret
end;*}

//0050D8A8
{*procedure sub_0050D8A8(?:?; ?:?);
begin
 0050D8A8    push        ebp
 0050D8A9    mov         ebp,esp
 0050D8AB    add         esp,0FFFFFFE4
 0050D8AE    mov         byte ptr [ebp-9],cl
 0050D8B1    mov         dword ptr [ebp-8],edx
 0050D8B4    mov         dword ptr [ebp-4],eax
 0050D8B7    mov         cl,byte ptr [ebp-9]
 0050D8BA    mov         edx,dword ptr [ebp-8]
 0050D8BD    mov         eax,dword ptr [ebp-4]
 0050D8C0    call        00479F7C
 0050D8C5    mov         al,byte ptr [ebp-9]
 0050D8C8    sub         al,1
>0050D8CA    jb          0050D8DF
>0050D8CC    je          0050D989
 0050D8D2    dec         al
>0050D8D4    je          0050DA08
>0050D8DA    jmp         0050DA7D
 0050D8DF    mov         eax,dword ptr [ebp-8]
 0050D8E2    mov         edx,dword ptr ds:[509018];TActionClient
 0050D8E8    call        @AsClass
 0050D8ED    mov         dword ptr [ebp-14],eax
 0050D8F0    mov         eax,dword ptr [ebp-4]
 0050D8F3    cmp         dword ptr [eax+20],0;TActionClients.FParentItem:TActionClient
>0050D8F7    je          0050DA7D
 0050D8FD    mov         eax,dword ptr [ebp-4]
 0050D900    cmp         dword ptr [eax+20],0;TActionClients.FParentItem:TActionClient
>0050D904    je          0050D918
 0050D906    mov         eax,dword ptr [ebp-4]
 0050D909    mov         eax,dword ptr [eax+20];TActionClients.FParentItem:TActionClient
 0050D90C    call        0050CCC4
 0050D911    mov         dl,1
 0050D913    call        0050C09C
 0050D918    xor         eax,eax
 0050D91A    mov         dword ptr [ebp-10],eax
 0050D91D    mov         eax,dword ptr [ebp-4]
 0050D920    mov         eax,dword ptr [eax+20];TActionClients.FParentItem:TActionClient
 0050D923    cmp         dword ptr [eax+0C],0;TActionClient.FActionBar:TCustomActionBar
>0050D927    je          0050D937
 0050D929    mov         eax,dword ptr [ebp-4]
 0050D92C    mov         eax,dword ptr [eax+20];TActionClients.FParentItem:TActionClient
 0050D92F    mov         eax,dword ptr [eax+0C];TActionClient.FActionBar:TCustomActionBar
 0050D932    mov         dword ptr [ebp-10],eax
>0050D935    jmp         0050D94F
 0050D937    mov         eax,dword ptr [ebp-4]
 0050D93A    mov         eax,dword ptr [eax+20];TActionClients.FParentItem:TActionClient
 0050D93D    cmp         dword ptr [eax+18],0;TActionClient.FChildActionBar:TCustomActionBar
>0050D941    je          0050D94F
 0050D943    mov         eax,dword ptr [ebp-4]
 0050D946    mov         eax,dword ptr [eax+20];TActionClients.FParentItem:TActionClient
 0050D949    mov         eax,dword ptr [eax+18];TActionClient.FChildActionBar:TCustomActionBar
 0050D94C    mov         dword ptr [ebp-10],eax
 0050D94F    mov         eax,dword ptr [ebp-4]
 0050D952    cmp         dword ptr [eax+0C],0;TActionClients.FUpdateCount:Integer
>0050D956    jne         0050DA7D
 0050D95C    cmp         dword ptr [ebp-10],0
>0050D960    je          0050DA7D
 0050D966    mov         eax,dword ptr [ebp-10]
 0050D969    call        TWinControl.HandleAllocated
 0050D96E    test        al,al
>0050D970    je          0050DA7D
 0050D976    mov         edx,dword ptr [ebp-8]
 0050D979    mov         eax,dword ptr [ebp-10]
 0050D97C    mov         ecx,dword ptr [eax]
 0050D97E    call        dword ptr [ecx+0D4];TCustomActionBar.sub_0050FEB4
>0050D984    jmp         0050DA7D
 0050D989    mov         eax,dword ptr [ebp-8]
 0050D98C    mov         edx,dword ptr ds:[509710];TActionClientItem
 0050D992    call        @IsClass
 0050D997    test        al,al
>0050D999    je          0050DA7D
 0050D99F    mov         eax,dword ptr [ebp-8]
 0050D9A2    mov         edx,dword ptr ds:[509710];TActionClientItem
 0050D9A8    call        @AsClass
 0050D9AD    mov         dword ptr [ebp-18],eax
 0050D9B0    mov         eax,dword ptr [ebp-18]
 0050D9B3    call        0050CBCC
 0050D9B8    test        eax,eax
>0050D9BA    je          0050DA7D
 0050D9C0    mov         eax,dword ptr [ebp-18]
 0050D9C3    call        0050CBCC
 0050D9C8    cmp         dword ptr [eax+18],0
>0050D9CC    je          0050DA7D
 0050D9D2    mov         eax,dword ptr [ebp-18]
 0050D9D5    call        0050CBCC
 0050D9DA    mov         eax,dword ptr [eax+18]
 0050D9DD    call        TWinControl.HandleAllocated
 0050D9E2    test        al,al
>0050D9E4    je          0050DA7D
 0050D9EA    push        0
 0050D9EC    push        0
 0050D9EE    push        5
 0050D9F0    mov         eax,dword ptr [ebp-18]
 0050D9F3    call        0050CBCC
 0050D9F8    mov         eax,dword ptr [eax+18]
 0050D9FB    call        TWinControl.GetHandle
 0050DA00    push        eax
 0050DA01    call        user32.PostMessageA
>0050DA06    jmp         0050DA7D
 0050DA08    mov         eax,dword ptr [ebp-8]
 0050DA0B    call        0050CA94
 0050DA10    mov         eax,dword ptr [ebp-8]
 0050DA13    mov         edx,dword ptr ds:[509710];TActionClientItem
 0050DA19    call        @IsClass
 0050DA1E    test        al,al
>0050DA20    je          0050DA7D
 0050DA22    mov         eax,dword ptr [ebp-8]
 0050DA25    mov         edx,dword ptr ds:[509710];TActionClientItem
 0050DA2B    call        @AsClass
 0050DA30    mov         dword ptr [ebp-1C],eax
 0050DA33    mov         eax,dword ptr [ebp-1C]
 0050DA36    call        0050CBCC
 0050DA3B    test        eax,eax
>0050DA3D    je          0050DA7D
 0050DA3F    mov         eax,dword ptr [ebp-1C]
 0050DA42    call        0050CBCC
 0050DA47    cmp         dword ptr [eax+18],0
>0050DA4B    je          0050DA7D
 0050DA4D    mov         eax,dword ptr [ebp-1C]
 0050DA50    call        0050CBCC
 0050DA55    mov         eax,dword ptr [eax+18]
 0050DA58    call        TWinControl.HandleAllocated
 0050DA5D    test        al,al
>0050DA5F    je          0050DA7D
 0050DA61    push        0
 0050DA63    push        0
 0050DA65    push        5
 0050DA67    mov         eax,dword ptr [ebp-1C]
 0050DA6A    call        0050CBCC
 0050DA6F    mov         eax,dword ptr [eax+18]
 0050DA72    call        TWinControl.GetHandle
 0050DA77    push        eax
 0050DA78    call        user32.PostMessageA
 0050DA7D    mov         esp,ebp
 0050DA7F    pop         ebp
 0050DA80    ret
end;*}

//0050DA84
procedure TActionClients.SetCaptionOptions(Value:TCaptionOptions);
begin
{*
 0050DA84    push        ebp
 0050DA85    mov         ebp,esp
 0050DA87    add         esp,0FFFFFFF8
 0050DA8A    mov         byte ptr [ebp-5],dl
 0050DA8D    mov         dword ptr [ebp-4],eax
 0050DA90    mov         eax,dword ptr [ebp-4]
 0050DA93    mov         al,byte ptr [eax+28];TActionClients.CaptionOptions:TCaptionOptions
 0050DA96    cmp         al,byte ptr [ebp-5]
>0050DA99    je          0050DB24
 0050DA9F    mov         eax,dword ptr [ebp-4]
 0050DAA2    mov         dl,byte ptr [ebp-5]
 0050DAA5    mov         byte ptr [eax+28],dl;TActionClients.CaptionOptions:TCaptionOptions
 0050DAA8    mov         eax,dword ptr [ebp-4]
 0050DAAB    cmp         dword ptr [eax+20],0;TActionClients.FParentItem:TActionClient
>0050DAAF    je          0050DB10
 0050DAB1    mov         eax,dword ptr [ebp-4]
 0050DAB4    mov         eax,dword ptr [eax+20];TActionClients.FParentItem:TActionClient
 0050DAB7    cmp         dword ptr [eax+0C],0;TActionClient.FActionBar:TCustomActionBar
>0050DABB    je          0050DB10
 0050DABD    mov         eax,dword ptr [ebp-4]
 0050DAC0    mov         eax,dword ptr [eax+20];TActionClients.FParentItem:TActionClient
 0050DAC3    mov         eax,dword ptr [eax+0C];TActionClient.FActionBar:TCustomActionBar
 0050DAC6    call        TWinControl.DisableAlign
 0050DACB    xor         eax,eax
 0050DACD    push        ebp
 0050DACE    push        50DB09
 0050DAD3    push        dword ptr fs:[eax]
 0050DAD6    mov         dword ptr fs:[eax],esp
 0050DAD9    mov         eax,dword ptr [ebp-4]
 0050DADC    push        eax
 0050DADD    push        50D838
 0050DAE2    mov         edx,dword ptr [ebp-4]
 0050DAE5    mov         eax,dword ptr [ebp-4]
 0050DAE8    call        0050C668
 0050DAED    xor         eax,eax
 0050DAEF    pop         edx
 0050DAF0    pop         ecx
 0050DAF1    pop         ecx
 0050DAF2    mov         dword ptr fs:[eax],edx
 0050DAF5    push        50DB24
 0050DAFA    mov         eax,dword ptr [ebp-4]
 0050DAFD    mov         eax,dword ptr [eax+20];TActionClients.FParentItem:TActionClient
 0050DB00    mov         eax,dword ptr [eax+0C];TActionClient.FActionBar:TCustomActionBar
 0050DB03    call        TWinControl.EnableAlign
 0050DB08    ret
>0050DB09    jmp         @HandleFinally
>0050DB0E    jmp         0050DAFA
 0050DB10    mov         eax,dword ptr [ebp-4]
 0050DB13    push        eax
 0050DB14    push        50D838
 0050DB19    mov         edx,dword ptr [ebp-4]
 0050DB1C    mov         eax,dword ptr [ebp-4]
 0050DB1F    call        0050C668
 0050DB24    pop         ecx
 0050DB25    pop         ecx
 0050DB26    pop         ebp
 0050DB27    ret
*}
end;

//0050DB28
procedure TActionClients.SetHideUnused(Value:Boolean);
begin
{*
 0050DB28    push        ebp
 0050DB29    mov         ebp,esp
 0050DB2B    add         esp,0FFFFFFF8
 0050DB2E    mov         byte ptr [ebp-5],dl
 0050DB31    mov         dword ptr [ebp-4],eax
 0050DB34    mov         eax,dword ptr [ebp-4]
 0050DB37    mov         al,byte ptr [eax+2A];TActionClients.HideUnused:Boolean
 0050DB3A    cmp         al,byte ptr [ebp-5]
>0050DB3D    je          0050DB6A
 0050DB3F    mov         al,byte ptr [ebp-5]
 0050DB42    mov         edx,dword ptr [ebp-4]
 0050DB45    mov         byte ptr [edx+2A],al;TActionClients.HideUnused:Boolean
 0050DB48    mov         eax,dword ptr [ebp-4]
 0050DB4B    call        0050BE18
 0050DB50    test        byte ptr [eax+1C],1
>0050DB54    jne         0050DB6A
 0050DB56    mov         eax,dword ptr [ebp-4]
 0050DB59    push        eax
 0050DB5A    push        50D7E0
 0050DB5F    mov         edx,dword ptr [ebp-4]
 0050DB62    mov         eax,dword ptr [ebp-4]
 0050DB65    call        0050C668
 0050DB6A    pop         ecx
 0050DB6B    pop         ecx
 0050DB6C    pop         ebp
 0050DB6D    ret
*}
end;

//0050DB70
procedure TActionClients.SetSmallIcons(Value:Boolean);
begin
{*
 0050DB70    push        ebp
 0050DB71    mov         ebp,esp
 0050DB73    add         esp,0FFFFFFF8
 0050DB76    push        esi
 0050DB77    mov         byte ptr [ebp-5],dl
 0050DB7A    mov         dword ptr [ebp-4],eax
 0050DB7D    mov         eax,dword ptr [ebp-4]
 0050DB80    mov         al,byte ptr [eax+29];TActionClients.SmallIcons:Boolean
 0050DB83    cmp         al,byte ptr [ebp-5]
>0050DB86    je          0050DC17
 0050DB8C    mov         eax,dword ptr [ebp-4]
 0050DB8F    mov         dl,byte ptr [ebp-5]
 0050DB92    mov         byte ptr [eax+29],dl;TActionClients.SmallIcons:Boolean
 0050DB95    mov         eax,dword ptr [ebp-4]
 0050DB98    cmp         dword ptr [eax+20],0;TActionClients.FParentItem:TActionClient
>0050DB9C    je          0050DC09
 0050DB9E    mov         eax,dword ptr [ebp-4]
 0050DBA1    mov         eax,dword ptr [eax+20];TActionClients.FParentItem:TActionClient
 0050DBA4    cmp         dword ptr [eax+0C],0;TActionClient.FActionBar:TCustomActionBar
>0050DBA8    je          0050DC09
 0050DBAA    mov         eax,dword ptr [ebp-4]
 0050DBAD    mov         eax,dword ptr [eax+20];TActionClients.FParentItem:TActionClient
 0050DBB0    mov         eax,dword ptr [eax+0C];TActionClient.FActionBar:TCustomActionBar
 0050DBB3    call        TWinControl.DisableAlign
 0050DBB8    xor         eax,eax
 0050DBBA    push        ebp
 0050DBBB    push        50DC02
 0050DBC0    push        dword ptr fs:[eax]
 0050DBC3    mov         dword ptr fs:[eax],esp
 0050DBC6    mov         cl,byte ptr [ebp-5]
 0050DBC9    mov         edx,dword ptr [ebp-4]
 0050DBCC    mov         eax,dword ptr [ebp-4]
 0050DBCF    call        0050DC1C
 0050DBD4    mov         eax,dword ptr [ebp-4]
 0050DBD7    mov         eax,dword ptr [eax+20];TActionClients.FParentItem:TActionClient
 0050DBDA    mov         eax,dword ptr [eax+0C];TActionClient.FActionBar:TCustomActionBar
 0050DBDD    mov         si,0FFD0
 0050DBE1    call        @CallDynaInst;TControl.sub_004C9ED8
 0050DBE6    xor         eax,eax
 0050DBE8    pop         edx
 0050DBE9    pop         ecx
 0050DBEA    pop         ecx
 0050DBEB    mov         dword ptr fs:[eax],edx
 0050DBEE    push        50DC17
 0050DBF3    mov         eax,dword ptr [ebp-4]
 0050DBF6    mov         eax,dword ptr [eax+20];TActionClients.FParentItem:TActionClient
 0050DBF9    mov         eax,dword ptr [eax+0C];TActionClient.FActionBar:TCustomActionBar
 0050DBFC    call        TWinControl.EnableAlign
 0050DC01    ret
>0050DC02    jmp         @HandleFinally
>0050DC07    jmp         0050DBF3
 0050DC09    mov         cl,byte ptr [ebp-5]
 0050DC0C    mov         edx,dword ptr [ebp-4]
 0050DC0F    mov         eax,dword ptr [ebp-4]
 0050DC12    call        0050DC1C
 0050DC17    pop         esi
 0050DC18    pop         ecx
 0050DC19    pop         ecx
 0050DC1A    pop         ebp
 0050DC1B    ret
*}
end;

//0050DC1C
{*procedure sub_0050DC1C(?:TActionClients; ?:TActionClients; ?:?);
begin
 0050DC1C    push        ebp
 0050DC1D    mov         ebp,esp
 0050DC1F    add         esp,0FFFFFFEC
 0050DC22    mov         byte ptr [ebp-9],cl
 0050DC25    mov         dword ptr [ebp-8],edx
 0050DC28    mov         dword ptr [ebp-4],eax
 0050DC2B    cmp         dword ptr [ebp-8],0
>0050DC2F    je          0050DCC9
 0050DC35    mov         eax,dword ptr [ebp-8]
 0050DC38    call        00479B60
 0050DC3D    dec         eax
 0050DC3E    test        eax,eax
>0050DC40    jl          0050DCC9
 0050DC46    inc         eax
 0050DC47    mov         dword ptr [ebp-14],eax
 0050DC4A    mov         dword ptr [ebp-10],0
 0050DC51    mov         edx,dword ptr [ebp-10]
 0050DC54    mov         eax,dword ptr [ebp-8]
 0050DC57    call        0050D884
 0050DC5C    cmp         dword ptr [eax+40],0
>0050DC60    je          0050DC78
 0050DC62    mov         edx,dword ptr [ebp-10]
 0050DC65    mov         eax,dword ptr [ebp-8]
 0050DC68    call        0050D884
 0050DC6D    mov         eax,dword ptr [eax+40]
 0050DC70    mov         dl,byte ptr [ebp-9]
 0050DC73    call        00515984
 0050DC78    mov         edx,dword ptr [ebp-10]
 0050DC7B    mov         eax,dword ptr [ebp-8]
 0050DC7E    call        0050D884
 0050DC83    call        0050CB98
 0050DC88    test        al,al
>0050DC8A    je          0050DCC1
 0050DC8C    mov         edx,dword ptr [ebp-10]
 0050DC8F    mov         eax,dword ptr [ebp-8]
 0050DC92    call        0050D884
 0050DC97    call        TActionClient.GetItems
 0050DC9C    mov         dl,byte ptr [ebp-9]
 0050DC9F    call        TActionClients.SetSmallIcons
 0050DCA4    mov         edx,dword ptr [ebp-10]
 0050DCA7    mov         eax,dword ptr [ebp-8]
 0050DCAA    call        0050D884
 0050DCAF    call        TActionClient.GetItems
 0050DCB4    mov         edx,eax
 0050DCB6    mov         cl,byte ptr [ebp-9]
 0050DCB9    mov         eax,dword ptr [ebp-4]
 0050DCBC    call        0050DC1C
 0050DCC1    inc         dword ptr [ebp-10]
 0050DCC4    dec         dword ptr [ebp-14]
>0050DCC7    jne         0050DC51
 0050DCC9    mov         esp,ebp
 0050DCCB    pop         ebp
 0050DCCC    ret
end;*}

//0050DCD0
{*function sub_0050DCD0(?:?):?;
begin
 0050DCD0    push        ebp
 0050DCD1    mov         ebp,esp
 0050DCD3    add         esp,0FFFFFFF0
 0050DCD6    mov         dword ptr [ebp-4],eax
 0050DCD9    xor         eax,eax
 0050DCDB    mov         dword ptr [ebp-8],eax
 0050DCDE    mov         eax,dword ptr [ebp-4]
 0050DCE1    call        00479B60
 0050DCE6    dec         eax
 0050DCE7    test        eax,eax
>0050DCE9    jl          0050DD12
 0050DCEB    inc         eax
 0050DCEC    mov         dword ptr [ebp-10],eax
 0050DCEF    mov         dword ptr [ebp-0C],0
 0050DCF6    mov         edx,dword ptr [ebp-0C]
 0050DCF9    mov         eax,dword ptr [ebp-4]
 0050DCFC    call        0050D884
 0050DD01    cmp         byte ptr [eax+30],0
>0050DD05    je          0050DD0A
 0050DD07    inc         dword ptr [ebp-8]
 0050DD0A    inc         dword ptr [ebp-0C]
 0050DD0D    dec         dword ptr [ebp-10]
>0050DD10    jne         0050DCF6
 0050DD12    mov         eax,dword ptr [ebp-8]
 0050DD15    mov         esp,ebp
 0050DD17    pop         ebp
 0050DD18    ret
end;*}

//0050DD1C
{*procedure sub_0050DD1C(?:?);
begin
 0050DD1C    push        ebp
 0050DD1D    mov         ebp,esp
 0050DD1F    add         esp,0FFFFFFF8
 0050DD22    mov         dword ptr [ebp-8],edx
 0050DD25    mov         dword ptr [ebp-4],eax
 0050DD28    mov         eax,dword ptr [ebp-8]
 0050DD2B    mov         edx,dword ptr ds:[509710];TActionClientItem
 0050DD31    call        @AsClass
 0050DD36    mov         edx,dword ptr [ebp-4]
 0050DD39    mov         dword ptr [edx+18],eax;TActionClientLink...............................FClient:TActionCl...
 0050DD3C    pop         ecx
 0050DD3D    pop         ecx
 0050DD3E    pop         ebp
 0050DD3F    ret
end;*}

//0050DD40
{*function sub_0050DD40(?:?):?;
begin
 0050DD40    push        ebp
 0050DD41    mov         ebp,esp
 0050DD43    add         esp,0FFFFFFDC
 0050DD46    push        esi
 0050DD47    xor         ecx,ecx
 0050DD49    mov         dword ptr [ebp-10],ecx
 0050DD4C    mov         dword ptr [ebp-24],ecx
 0050DD4F    mov         dword ptr [ebp-8],edx
 0050DD52    mov         dword ptr [ebp-4],eax
 0050DD55    xor         eax,eax
 0050DD57    push        ebp
 0050DD58    push        50DE25
 0050DD5D    push        dword ptr fs:[eax]
 0050DD60    mov         dword ptr fs:[eax],esp
 0050DD63    mov         byte ptr [ebp-9],1
 0050DD67    mov         eax,dword ptr [ebp-4]
 0050DD6A    mov         eax,dword ptr [eax+10];TActionClientLink.FAction:TBasicAction
 0050DD6D    mov         edx,dword ptr ds:[4DA408];TCustomAction
 0050DD73    call        @IsClass
 0050DD78    test        al,al
>0050DD7A    je          0050DE07
 0050DD80    mov         edx,dword ptr [ebp-8]
 0050DD83    mov         eax,dword ptr [ebp-4]
 0050DD86    mov         eax,dword ptr [eax+10];TActionClientLink.FAction:TBasicAction
 0050DD89    mov         si,0FFEE
 0050DD8D    call        @CallDynaInst
 0050DD92    test        al,al
>0050DD94    je          0050DE07
 0050DD96    mov         eax,[0055B4C8];^Application:TApplication
 0050DD9B    mov         eax,dword ptr [eax]
 0050DD9D    cmp         byte ptr [eax+7C],0;TApplication.FHintShortCuts:Boolean
>0050DDA1    je          0050DE07
 0050DDA3    mov         eax,dword ptr [ebp-4]
 0050DDA6    mov         eax,dword ptr [eax+10];TActionClientLink.FAction:TBasicAction
 0050DDA9    cmp         word ptr [eax+84],0
>0050DDB1    je          0050DE07
 0050DDB3    mov         eax,dword ptr [ebp-8]
 0050DDB6    cmp         dword ptr [eax],0
>0050DDB9    je          0050DE07
 0050DDBB    lea         eax,[ebp-10]
 0050DDBE    push        eax
 0050DDBF    mov         eax,dword ptr [ebp-8]
 0050DDC2    mov         eax,dword ptr [eax]
 0050DDC4    mov         dword ptr [ebp-20],eax
 0050DDC7    mov         byte ptr [ebp-1C],0B
 0050DDCB    lea         edx,[ebp-24]
 0050DDCE    mov         eax,dword ptr [ebp-4]
 0050DDD1    mov         eax,dword ptr [eax+10];TActionClientLink.FAction:TBasicAction
 0050DDD4    mov         ax,word ptr [eax+84]
 0050DDDB    call        004DF13C
 0050DDE0    mov         eax,dword ptr [ebp-24]
 0050DDE3    mov         dword ptr [ebp-18],eax
 0050DDE6    mov         byte ptr [ebp-14],0B
 0050DDEA    lea         edx,[ebp-20]
 0050DDED    mov         ecx,1
 0050DDF2    mov         eax,50DE3C;'%s (%s)'
 0050DDF7    call        Format
 0050DDFC    mov         edx,dword ptr [ebp-10]
 0050DDFF    mov         eax,dword ptr [ebp-8]
 0050DE02    call        @LStrAsg
 0050DE07    xor         eax,eax
 0050DE09    pop         edx
 0050DE0A    pop         ecx
 0050DE0B    pop         ecx
 0050DE0C    mov         dword ptr fs:[eax],edx
 0050DE0F    push        50DE2C
 0050DE14    lea         eax,[ebp-24]
 0050DE17    call        @LStrClr
 0050DE1C    lea         eax,[ebp-10]
 0050DE1F    call        @LStrClr
 0050DE24    ret
>0050DE25    jmp         @HandleFinally
>0050DE2A    jmp         0050DE14
 0050DE2C    mov         al,byte ptr [ebp-9]
 0050DE2F    pop         esi
 0050DE30    mov         esp,ebp
 0050DE32    pop         ebp
 0050DE33    ret
end;*}

//0050DE44
{*function sub_0050DE44:?;
begin
 0050DE44    push        ebp
 0050DE45    mov         ebp,esp
 0050DE47    xor         ecx,ecx
 0050DE49    push        ecx
 0050DE4A    push        ecx
 0050DE4B    push        ecx
 0050DE4C    push        ecx
 0050DE4D    push        ecx
 0050DE4E    mov         dword ptr [ebp-4],eax
 0050DE51    xor         eax,eax
 0050DE53    push        ebp
 0050DE54    push        50DF0D
 0050DE59    push        dword ptr fs:[eax]
 0050DE5C    mov         dword ptr fs:[eax],esp
 0050DE5F    mov         eax,dword ptr [ebp-4]
 0050DE62    call        004DB1D8
 0050DE67    test        al,al
>0050DE69    je          0050DE99
 0050DE6B    lea         edx,[ebp-0C]
 0050DE6E    mov         eax,dword ptr [ebp-4]
 0050DE71    mov         eax,dword ptr [eax+18];TActionClientLink................................FClient:TActionC...
 0050DE74    call        TActionClientItem.GetCaption
 0050DE79    mov         eax,dword ptr [ebp-0C]
 0050DE7C    push        eax
 0050DE7D    mov         eax,dword ptr [ebp-4]
 0050DE80    mov         eax,dword ptr [eax+10];TActionClientLink.FAction:TBasicAction
 0050DE83    mov         edx,dword ptr ds:[4DA408];TCustomAction
 0050DE89    call        @AsClass
 0050DE8E    mov         edx,dword ptr [eax+64];TCustomAction.FCaption:String
 0050DE91    pop         eax
 0050DE92    call        @LStrCmp
>0050DE97    je          0050DE9D
 0050DE99    xor         eax,eax
>0050DE9B    jmp         0050DE9F
 0050DE9D    mov         al,1
 0050DE9F    mov         byte ptr [ebp-5],al
 0050DEA2    cmp         byte ptr [ebp-5],0
>0050DEA6    jne         0050DEF2
 0050DEA8    mov         eax,dword ptr [ebp-4]
 0050DEAB    mov         eax,dword ptr [eax+18];TActionClientLink.................................FClient:TAction...
 0050DEAE    mov         eax,dword ptr [eax+4];TActionClientItem.FCollection:TCollection
 0050DEB1    cmp         byte ptr [eax+1C],0
>0050DEB5    je          0050DEF2
 0050DEB7    lea         edx,[ebp-14]
 0050DEBA    mov         eax,dword ptr [ebp-4]
 0050DEBD    mov         eax,dword ptr [eax+18];TActionClientLink..................................FClient:TActio...
 0050DEC0    call        TActionClientItem.GetCaption
 0050DEC5    mov         eax,dword ptr [ebp-14]
 0050DEC8    lea         edx,[ebp-10]
 0050DECB    call        004E577C
 0050DED0    mov         eax,dword ptr [ebp-10]
 0050DED3    push        eax
 0050DED4    mov         eax,dword ptr [ebp-4]
 0050DED7    mov         eax,dword ptr [eax+10];TActionClientLink.FAction:TBasicAction
 0050DEDA    mov         edx,dword ptr ds:[4DA408];TCustomAction
 0050DEE0    call        @AsClass
 0050DEE5    mov         edx,dword ptr [eax+64];TCustomAction.FCaption:String
 0050DEE8    pop         eax
 0050DEE9    call        @LStrCmp
 0050DEEE    sete        byte ptr [ebp-5]
 0050DEF2    xor         eax,eax
 0050DEF4    pop         edx
 0050DEF5    pop         ecx
 0050DEF6    pop         ecx
 0050DEF7    mov         dword ptr fs:[eax],edx
 0050DEFA    push        50DF14
 0050DEFF    lea         eax,[ebp-14]
 0050DF02    mov         edx,3
 0050DF07    call        @LStrArrayClr
 0050DF0C    ret
>0050DF0D    jmp         @HandleFinally
>0050DF12    jmp         0050DEFF
 0050DF14    mov         al,byte ptr [ebp-5]
 0050DF17    mov         esp,ebp
 0050DF19    pop         ebp
 0050DF1A    ret
end;*}

//0050DF1C
{*function sub_0050DF1C:?;
begin
 0050DF1C    push        ebp
 0050DF1D    mov         ebp,esp
 0050DF1F    add         esp,0FFFFFFF8
 0050DF22    push        ebx
 0050DF23    mov         dword ptr [ebp-4],eax
 0050DF26    mov         eax,dword ptr [ebp-4]
 0050DF29    call        004DB220
 0050DF2E    test        al,al
>0050DF30    je          0050DF64
 0050DF32    mov         eax,dword ptr [ebp-4]
 0050DF35    mov         eax,dword ptr [eax+18];TActionClientLink...................................FClient:TActi...
 0050DF38    cmp         dword ptr [eax+40],0;TActionClientItem.FControl:TCustomActionControl
>0050DF3C    je          0050DF64
 0050DF3E    mov         eax,dword ptr [ebp-4]
 0050DF41    mov         eax,dword ptr [eax+18];TActionClientLink....................................FClient:TAct...
 0050DF44    mov         eax,dword ptr [eax+40];TActionClientItem.FControl:TCustomActionControl
 0050DF47    mov         edx,dword ptr [eax]
 0050DF49    call        dword ptr [edx+50];TImage.GetEnabled
 0050DF4C    mov         ebx,eax
 0050DF4E    mov         eax,dword ptr [ebp-4]
 0050DF51    mov         eax,dword ptr [eax+10];TActionClientLink.FAction:TBasicAction
 0050DF54    mov         edx,dword ptr ds:[4DA408];TCustomAction
 0050DF5A    call        @AsClass
 0050DF5F    cmp         bl,byte ptr [eax+6A];TCustomAction.FEnabled:Boolean
>0050DF62    je          0050DF68
 0050DF64    xor         eax,eax
>0050DF66    jmp         0050DF6A
 0050DF68    mov         al,1
 0050DF6A    mov         byte ptr [ebp-5],al
 0050DF6D    mov         al,byte ptr [ebp-5]
 0050DF70    pop         ebx
 0050DF71    pop         ecx
 0050DF72    pop         ecx
 0050DF73    pop         ebp
 0050DF74    ret
end;*}

//0050DF78
{*function sub_0050DF78:?;
begin
 0050DF78    push        ebp
 0050DF79    mov         ebp,esp
 0050DF7B    add         esp,0FFFFFFF8
 0050DF7E    mov         dword ptr [ebp-4],eax
 0050DF81    mov         eax,dword ptr [ebp-4]
 0050DF84    call        004DB268
 0050DF89    test        al,al
>0050DF8B    je          0050DFAC
 0050DF8D    mov         eax,dword ptr [ebp-4]
 0050DF90    mov         eax,dword ptr [eax+10];TActionClientLink.FAction:TBasicAction
 0050DF93    mov         edx,dword ptr ds:[4DA408];TCustomAction
 0050DF99    call        @AsClass
 0050DF9E    mov         eax,dword ptr [eax+74];TCustomAction.FHelpContext:THelpContext
 0050DFA1    mov         edx,dword ptr [ebp-4]
 0050DFA4    mov         edx,dword ptr [edx+18];TActionClientLink.....................................FClient:TAc...
 0050DFA7    cmp         eax,dword ptr [edx+64];TActionClientItem.HelpContext:THelpContext
>0050DFAA    je          0050DFB0
 0050DFAC    xor         eax,eax
>0050DFAE    jmp         0050DFB2
 0050DFB0    mov         al,1
 0050DFB2    mov         byte ptr [ebp-5],al
 0050DFB5    mov         al,byte ptr [ebp-5]
 0050DFB8    pop         ecx
 0050DFB9    pop         ecx
 0050DFBA    pop         ebp
 0050DFBB    ret
end;*}

//0050DFBC
{*function sub_0050DFBC:?;
begin
 0050DFBC    push        ebp
 0050DFBD    mov         ebp,esp
 0050DFBF    add         esp,0FFFFFFF8
 0050DFC2    mov         dword ptr [ebp-4],eax
 0050DFC5    mov         eax,dword ptr [ebp-4]
 0050DFC8    call        004DB2B0
 0050DFCD    test        al,al
>0050DFCF    je          0050E007
 0050DFD1    mov         eax,dword ptr [ebp-4]
 0050DFD4    mov         eax,dword ptr [eax+18];TActionClientLink......................................FClient:TA...
 0050DFD7    cmp         dword ptr [eax+40],0;TActionClientItem.FControl:TCustomActionControl
>0050DFDB    je          0050E007
 0050DFDD    mov         eax,dword ptr [ebp-4]
 0050DFE0    mov         eax,dword ptr [eax+10];TActionClientLink.FAction:TBasicAction
 0050DFE3    mov         edx,dword ptr ds:[4DA408];TCustomAction
 0050DFE9    call        @AsClass
 0050DFEE    mov         edx,dword ptr [eax+7C];TCustomAction.FHint:String
 0050DFF1    mov         eax,dword ptr [ebp-4]
 0050DFF4    mov         eax,dword ptr [eax+18];TActionClientLink.......................................FClient:T...
 0050DFF7    mov         eax,dword ptr [eax+40];TActionClientItem.FControl:TCustomActionControl
 0050DFFA    mov         eax,dword ptr [eax+80];TCustomActionControl.Hint:String
 0050E000    call        @LStrCmp
>0050E005    je          0050E00B
 0050E007    xor         eax,eax
>0050E009    jmp         0050E00D
 0050E00B    mov         al,1
 0050E00D    mov         byte ptr [ebp-5],al
 0050E010    mov         al,byte ptr [ebp-5]
 0050E013    pop         ecx
 0050E014    pop         ecx
 0050E015    pop         ebp
 0050E016    ret
end;*}

//0050E018
{*function sub_0050E018:?;
begin
 0050E018    push        ebp
 0050E019    mov         ebp,esp
 0050E01B    add         esp,0FFFFFFF8
 0050E01E    mov         dword ptr [ebp-4],eax
 0050E021    mov         eax,dword ptr [ebp-4]
 0050E024    call        004DB2D4
 0050E029    test        al,al
>0050E02B    je          0050E063
 0050E02D    mov         eax,dword ptr [ebp-4]
 0050E030    mov         eax,dword ptr [eax+18];TActionClientLink........................................FClient:...
 0050E033    cmp         dword ptr [eax+40],0;TActionClientItem.FControl:TCustomActionControl
>0050E037    je          0050E063
 0050E039    mov         eax,dword ptr [ebp-4]
 0050E03C    mov         eax,dword ptr [eax+10];TActionClientLink.FAction:TBasicAction
 0050E03F    mov         edx,dword ptr ds:[4DA408];TCustomAction
 0050E045    call        @AsClass
 0050E04A    mov         edx,dword ptr [eax+7C];TCustomAction.FHint:String
 0050E04D    mov         eax,dword ptr [ebp-4]
 0050E050    mov         eax,dword ptr [eax+18];TActionClientLink.........................................FClient...
 0050E053    mov         eax,dword ptr [eax+40];TActionClientItem.FControl:TCustomActionControl
 0050E056    mov         eax,dword ptr [eax+80];TCustomActionControl.Hint:String
 0050E05C    call        @LStrCmp
>0050E061    je          0050E067
 0050E063    xor         eax,eax
>0050E065    jmp         0050E069
 0050E067    mov         al,1
 0050E069    mov         byte ptr [ebp-5],al
 0050E06C    mov         al,byte ptr [ebp-5]
 0050E06F    pop         ecx
 0050E070    pop         ecx
 0050E071    pop         ebp
 0050E072    ret
end;*}

//0050E074
{*function sub_0050E074:?;
begin
 0050E074    push        ebp
 0050E075    mov         ebp,esp
 0050E077    add         esp,0FFFFFFF8
 0050E07A    mov         dword ptr [ebp-4],eax
 0050E07D    mov         eax,dword ptr [ebp-4]
 0050E080    call        00483CF4
 0050E085    test        al,al
>0050E087    je          0050E0AF
 0050E089    mov         eax,dword ptr [ebp-4]
 0050E08C    mov         eax,dword ptr [eax+18];TActionClientLink..........................................FClien...
 0050E08F    cmp         dword ptr [eax+40],0;TActionClientItem.FControl:TCustomActionControl
>0050E093    je          0050E0AF
 0050E095    mov         eax,dword ptr [ebp-4]
 0050E098    mov         eax,dword ptr [eax+18];TActionClientLink...........................................FClie...
 0050E09B    mov         eax,dword ptr [eax+40];TActionClientItem.FControl:TCustomActionControl
 0050E09E    mov         eax,dword ptr [eax+120];TCustomActionControl.FOnClick:TNotifyEvent
 0050E0A4    mov         edx,dword ptr [ebp-4]
 0050E0A7    mov         edx,dword ptr [edx+10];TActionClientLink.FAction:TBasicAction
 0050E0AA    cmp         eax,dword ptr [edx+40];TBasicAction.FOnExecute:TNotifyEvent
>0050E0AD    je          0050E0B3
 0050E0AF    xor         eax,eax
>0050E0B1    jmp         0050E0B5
 0050E0B3    mov         al,1
 0050E0B5    mov         byte ptr [ebp-5],al
 0050E0B8    mov         al,byte ptr [ebp-5]
 0050E0BB    pop         ecx
 0050E0BC    pop         ecx
 0050E0BD    pop         ebp
 0050E0BE    ret
end;*}

//0050E0C0
{*function sub_0050E0C0:?;
begin
 0050E0C0    push        ebp
 0050E0C1    mov         ebp,esp
 0050E0C3    add         esp,0FFFFFFF8
 0050E0C6    mov         dword ptr [ebp-4],eax
 0050E0C9    mov         eax,dword ptr [ebp-4]
 0050E0CC    call        004DB2F8
 0050E0D1    test        al,al
>0050E0D3    je          0050E0F9
 0050E0D5    mov         eax,dword ptr [ebp-4]
 0050E0D8    mov         eax,dword ptr [eax+10];TActionClientLink.FAction:TBasicAction
 0050E0DB    mov         edx,dword ptr ds:[4DA408];TCustomAction
 0050E0E1    call        @AsClass
 0050E0E6    mov         ax,word ptr [eax+84];TCustomAction.FShortCut:TShortCut
 0050E0ED    mov         edx,dword ptr [ebp-4]
 0050E0F0    mov         edx,dword ptr [edx+18];TActionClientLink............................................FCli...
 0050E0F3    cmp         ax,word ptr [edx+48];TActionClientItem.ShortCut:TShortCut
>0050E0F7    je          0050E0FD
 0050E0F9    xor         eax,eax
>0050E0FB    jmp         0050E0FF
 0050E0FD    mov         al,1
 0050E0FF    mov         byte ptr [ebp-5],al
 0050E102    mov         al,byte ptr [ebp-5]
 0050E105    pop         ecx
 0050E106    pop         ecx
 0050E107    pop         ebp
 0050E108    ret
end;*}

//0050E10C
{*function sub_0050E10C:?;
begin
 0050E10C    push        ebp
 0050E10D    mov         ebp,esp
 0050E10F    add         esp,0FFFFFFF8
 0050E112    mov         dword ptr [ebp-4],eax
 0050E115    mov         eax,dword ptr [ebp-4]
 0050E118    call        004DB31C
 0050E11D    test        al,al
>0050E11F    je          0050E143
 0050E121    mov         eax,dword ptr [ebp-4]
 0050E124    mov         eax,dword ptr [eax+10];TActionClientLink.FAction:TBasicAction
 0050E127    mov         edx,dword ptr ds:[4DA408];TCustomAction
 0050E12D    call        @AsClass
 0050E132    mov         al,byte ptr [eax+86];TCustomAction.FVisible:Boolean
 0050E138    mov         edx,dword ptr [ebp-4]
 0050E13B    mov         edx,dword ptr [edx+18];TActionClientLink.............................................FCl...
 0050E13E    cmp         al,byte ptr [edx+30];TActionClientItem.Visible:Boolean
>0050E141    je          0050E147
 0050E143    xor         eax,eax
>0050E145    jmp         0050E149
 0050E147    mov         al,1
 0050E149    mov         byte ptr [ebp-5],al
 0050E14C    mov         al,byte ptr [ebp-5]
 0050E14F    pop         ecx
 0050E150    pop         ecx
 0050E151    pop         ebp
 0050E152    ret
end;*}

//0050E154
{*procedure sub_0050E154(?:?);
begin
 0050E154    push        ebp
 0050E155    mov         ebp,esp
 0050E157    add         esp,0FFFFFFF8
 0050E15A    mov         dword ptr [ebp-8],edx
 0050E15D    mov         dword ptr [ebp-4],eax
 0050E160    mov         eax,dword ptr [ebp-4]
 0050E163    mov         edx,dword ptr [eax]
 0050E165    call        dword ptr [edx+20];TActionClientLink.sub_0050DE44
 0050E168    test        al,al
>0050E16A    je          0050E17A
 0050E16C    mov         edx,dword ptr [ebp-8]
 0050E16F    mov         eax,dword ptr [ebp-4]
 0050E172    mov         eax,dword ptr [eax+18];TActionClientLink..............................................FC...
 0050E175    call        TActionClientItem.SetCaption
 0050E17A    pop         ecx
 0050E17B    pop         ecx
 0050E17C    pop         ebp
 0050E17D    ret
end;*}

//0050E180
{*procedure sub_0050E180(?:?);
begin
 0050E180    push        ebp
 0050E181    mov         ebp,esp
 0050E183    add         esp,0FFFFFFF8
 0050E186    mov         byte ptr [ebp-5],dl
 0050E189    mov         dword ptr [ebp-4],eax
 0050E18C    mov         dl,byte ptr [ebp-5]
 0050E18F    mov         eax,dword ptr [ebp-4]
 0050E192    call        004DB360
 0050E197    mov         eax,dword ptr [ebp-4]
 0050E19A    mov         edx,dword ptr [eax]
 0050E19C    call        dword ptr [edx+24];TActionClientLink.sub_004DB1FC
 0050E19F    test        al,al
>0050E1A1    je          0050E1BD
 0050E1A3    mov         eax,dword ptr [ebp-4]
 0050E1A6    mov         eax,dword ptr [eax+18];TActionClientLink...............................................F...
 0050E1A9    cmp         dword ptr [eax+40],0;TActionClientItem.FControl:TCustomActionControl
>0050E1AD    je          0050E1BD
 0050E1AF    mov         eax,dword ptr [ebp-4]
 0050E1B2    mov         eax,dword ptr [eax+18];TActionClientLink...................................................
 0050E1B5    mov         eax,dword ptr [eax+40];TActionClientItem.FControl:TCustomActionControl
 0050E1B8    mov         edx,dword ptr [eax]
 0050E1BA    call        dword ptr [edx+7C];TCustomActionControl.sub_004CB6E8
 0050E1BD    pop         ecx
 0050E1BE    pop         ecx
 0050E1BF    pop         ebp
 0050E1C0    ret
end;*}

//0050E1C4
{*procedure sub_0050E1C4(?:?);
begin
 0050E1C4    push        ebp
 0050E1C5    mov         ebp,esp
 0050E1C7    add         esp,0FFFFFFF8
 0050E1CA    mov         byte ptr [ebp-5],dl
 0050E1CD    mov         dword ptr [ebp-4],eax
 0050E1D0    mov         eax,dword ptr [ebp-4]
 0050E1D3    mov         edx,dword ptr [eax]
 0050E1D5    call        dword ptr [edx+28];TActionClientLink.sub_0050DF1C
 0050E1D8    test        al,al
>0050E1DA    je          0050E1ED
 0050E1DC    mov         eax,dword ptr [ebp-4]
 0050E1DF    mov         eax,dword ptr [eax+18];TActionClientLink...................................................
 0050E1E2    mov         eax,dword ptr [eax+40];TActionClientItem.FControl:TCustomActionControl
 0050E1E5    mov         dl,byte ptr [ebp-5]
 0050E1E8    mov         ecx,dword ptr [eax]
 0050E1EA    call        dword ptr [ecx+64];TImage.SetEnabled
 0050E1ED    pop         ecx
 0050E1EE    pop         ecx
 0050E1EF    pop         ebp
 0050E1F0    ret
end;*}

//0050E1F4
{*procedure sub_0050E1F4(?:?);
begin
 0050E1F4    push        ebp
 0050E1F5    mov         ebp,esp
 0050E1F7    add         esp,0FFFFFFF8
 0050E1FA    mov         dword ptr [ebp-8],edx
 0050E1FD    mov         dword ptr [ebp-4],eax
 0050E200    mov         eax,dword ptr [ebp-4]
 0050E203    mov         edx,dword ptr [eax]
 0050E205    call        dword ptr [edx+30];TActionClientLink.sub_0050DF78
 0050E208    test        al,al
>0050E20A    je          0050E218
 0050E20C    mov         eax,dword ptr [ebp-4]
 0050E20F    mov         eax,dword ptr [eax+18];TActionClientLink...................................................
 0050E212    mov         edx,dword ptr [ebp-8]
 0050E215    mov         dword ptr [eax+64],edx;TActionClientItem.HelpContext:THelpContext
 0050E218    pop         ecx
 0050E219    pop         ecx
 0050E21A    pop         ebp
 0050E21B    ret
end;*}

//0050E21C
{*procedure sub_0050E21C(?:?);
begin
 0050E21C    push        ebp
 0050E21D    mov         ebp,esp
 0050E21F    add         esp,0FFFFFFF8
 0050E222    mov         dword ptr [ebp-8],edx
 0050E225    mov         dword ptr [ebp-4],eax
 0050E228    mov         eax,dword ptr [ebp-4]
 0050E22B    mov         edx,dword ptr [eax]
 0050E22D    call        dword ptr [edx+38];TActionClientLink.sub_0050DFBC
 0050E230    test        al,al
>0050E232    je          0050E24A
 0050E234    mov         eax,dword ptr [ebp-4]
 0050E237    mov         eax,dword ptr [eax+18];TActionClientLink...................................................
 0050E23A    mov         eax,dword ptr [eax+40];TActionClientItem.FControl:TCustomActionControl
 0050E23D    add         eax,80;TCustomActionControl.Hint:String
 0050E242    mov         edx,dword ptr [ebp-8]
 0050E245    call        @LStrAsg
 0050E24A    pop         ecx
 0050E24B    pop         ecx
 0050E24C    pop         ebp
 0050E24D    ret
end;*}

//0050E250
{*procedure sub_0050E250(?:?);
begin
 0050E250    push        ebp
 0050E251    mov         ebp,esp
 0050E253    add         esp,0FFFFFFF8
 0050E256    mov         dword ptr [ebp-8],edx
 0050E259    mov         dword ptr [ebp-4],eax
 0050E25C    mov         eax,dword ptr [ebp-4]
 0050E25F    mov         edx,dword ptr [eax]
 0050E261    call        dword ptr [edx+3C];TActionClientLink.sub_0050E018
 0050E264    test        al,al
>0050E266    je          0050E276
 0050E268    mov         edx,dword ptr [ebp-8]
 0050E26B    mov         eax,dword ptr [ebp-4]
 0050E26E    mov         eax,dword ptr [eax+18];TActionClientLink...................................................
 0050E271    call        TActionClientItem.SetImageIndex
 0050E276    pop         ecx
 0050E277    pop         ecx
 0050E278    pop         ebp
 0050E279    ret
end;*}

//0050E27C
{*procedure sub_0050E27C(?:?; ?:?);
begin
 0050E27C    push        ebp
 0050E27D    mov         ebp,esp
 0050E27F    push        ecx
 0050E280    mov         dword ptr [ebp-4],eax
 0050E283    mov         eax,dword ptr [ebp-4]
 0050E286    mov         edx,dword ptr [eax]
 0050E288    call        dword ptr [edx+8];TActionClientLink.sub_0050E074
 0050E28B    test        al,al
>0050E28D    je          0050E2AA
 0050E28F    mov         eax,dword ptr [ebp-4]
 0050E292    mov         eax,dword ptr [eax+18];TActionClientLink...................................................
 0050E295    mov         eax,dword ptr [eax+40];TActionClientItem.FControl:TCustomActionControl
 0050E298    mov         edx,dword ptr [ebp+8]
 0050E29B    mov         dword ptr [eax+120],edx;TCustomActionControl.FOnClick:TNotifyEvent
 0050E2A1    mov         edx,dword ptr [ebp+0C]
 0050E2A4    mov         dword ptr [eax+124],edx;TCustomActionControl.?f124:TMessageForm
 0050E2AA    pop         ecx
 0050E2AB    pop         ebp
 0050E2AC    ret         8
end;*}

//0050E2B0
{*procedure sub_0050E2B0(?:?);
begin
 0050E2B0    push        ebp
 0050E2B1    mov         ebp,esp
 0050E2B3    add         esp,0FFFFFFF8
 0050E2B6    mov         word ptr [ebp-6],dx
 0050E2BA    mov         dword ptr [ebp-4],eax
 0050E2BD    mov         eax,dword ptr [ebp-4]
 0050E2C0    mov         edx,dword ptr [eax]
 0050E2C2    call        dword ptr [edx+40];TActionClientLink.sub_0050E0C0
 0050E2C5    test        al,al
>0050E2C7    je          0050E2D8
 0050E2C9    mov         dx,word ptr [ebp-6]
 0050E2CD    mov         eax,dword ptr [ebp-4]
 0050E2D0    mov         eax,dword ptr [eax+18];TActionClientLink...................................................
 0050E2D3    call        TActionClientItem.SetShortCut
 0050E2D8    pop         ecx
 0050E2D9    pop         ecx
 0050E2DA    pop         ebp
 0050E2DB    ret
end;*}

//0050E2DC
{*procedure sub_0050E2DC(?:?);
begin
 0050E2DC    push        ebp
 0050E2DD    mov         ebp,esp
 0050E2DF    add         esp,0FFFFFFF8
 0050E2E2    mov         byte ptr [ebp-5],dl
 0050E2E5    mov         dword ptr [ebp-4],eax
 0050E2E8    mov         eax,dword ptr [ebp-4]
 0050E2EB    mov         edx,dword ptr [eax]
 0050E2ED    call        dword ptr [edx+44];TActionClientLink.sub_0050E10C
 0050E2F0    test        al,al
>0050E2F2    je          0050E302
 0050E2F4    mov         dl,byte ptr [ebp-5]
 0050E2F7    mov         eax,dword ptr [ebp-4]
 0050E2FA    mov         eax,dword ptr [eax+18];TActionClientLink...................................................
 0050E2FD    mov         ecx,dword ptr [eax]
 0050E2FF    call        dword ptr [ecx+2C];TActionClientItem.sub_0050F0D4
 0050E302    pop         ecx
 0050E303    pop         ecx
 0050E304    pop         ebp
 0050E305    ret
end;*}

//0050E308
constructor sub_0050E308;
begin
{*
 0050E308    push        ebp
 0050E309    mov         ebp,esp
 0050E30B    add         esp,0FFFFFFF4
 0050E30E    test        dl,dl
>0050E310    je          0050E31A
 0050E312    add         esp,0FFFFFFF0
 0050E315    call        @ClassCreate
 0050E31A    mov         dword ptr [ebp-0C],ecx
 0050E31D    mov         byte ptr [ebp-5],dl
 0050E320    mov         dword ptr [ebp-4],eax
 0050E323    mov         eax,dword ptr [ebp-4]
 0050E326    mov         dword ptr [eax+24],20000000;TActionClientItem.Color:TColor
 0050E32D    mov         ecx,dword ptr [ebp-0C]
 0050E330    xor         edx,edx
 0050E332    mov         eax,dword ptr [ebp-4]
 0050E335    call        0050C7E4
 0050E33A    mov         eax,dword ptr [ebp-4]
 0050E33D    mov         dword ptr [eax+58],0FFFFFFFF;TActionClientItem.ImageIndex:TImageIndex
 0050E344    mov         eax,dword ptr [ebp-4]
 0050E347    xor         edx,edx
 0050E349    mov         dword ptr [eax+4C],edx;TActionClientItem.MergeIndex:TMergeRange
 0050E34C    mov         eax,dword ptr [ebp-4]
 0050E34F    mov         byte ptr [eax+51],1;TActionClientItem.ShowCaption:Boolean
 0050E353    mov         eax,dword ptr [ebp-4]
 0050E356    mov         byte ptr [eax+61],1;TActionClientItem.ShowGlyph:Boolean
 0050E35A    mov         eax,dword ptr [ebp-4]
 0050E35D    mov         byte ptr [eax+52],1;TActionClientItem.ShowShortCut:Boolean
 0050E361    mov         eax,dword ptr [ebp-4]
 0050E364    mov         byte ptr [eax+3C],1;TActionClientItem.FCheckUnused:Boolean
 0050E368    mov         eax,dword ptr [ebp-4]
 0050E36B    xor         edx,edx
 0050E36D    mov         dword ptr [eax+44],edx;TActionClientItem.UsageCount:Integer
 0050E370    mov         eax,dword ptr [ebp-4]
 0050E373    xor         edx,edx
 0050E375    mov         dword ptr [eax+5C],edx;TActionClientItem.LastSession:Integer
 0050E378    mov         eax,dword ptr [ebp-4]
 0050E37B    cmp         byte ptr [ebp-5],0
>0050E37F    je          0050E390
 0050E381    call        @AfterConstruction
 0050E386    pop         dword ptr fs:[0]
 0050E38D    add         esp,0C
 0050E390    mov         eax,dword ptr [ebp-4]
 0050E393    mov         esp,ebp
 0050E395    pop         ebp
 0050E396    ret
*}
end;

//0050E398
destructor TActionClientItem.Destroy;
begin
{*
 0050E398    push        ebp
 0050E399    mov         ebp,esp
 0050E39B    add         esp,0FFFFFFF8
 0050E39E    call        @BeforeDestruction
 0050E3A3    mov         byte ptr [ebp-5],dl
 0050E3A6    mov         dword ptr [ebp-4],eax
 0050E3A9    mov         eax,dword ptr [ebp-4]
 0050E3AC    add         eax,38
 0050E3AF    call        FreeAndNil
 0050E3B4    mov         eax,dword ptr [ebp-4]
 0050E3B7    add         eax,40
 0050E3BA    call        FreeAndNil
 0050E3BF    mov         dl,byte ptr [ebp-5]
 0050E3C2    and         dl,0FC
 0050E3C5    mov         eax,dword ptr [ebp-4]
 0050E3C8    call        TActionClient.Destroy
 0050E3CD    cmp         byte ptr [ebp-5],0
>0050E3D1    jle         0050E3DB
 0050E3D3    mov         eax,dword ptr [ebp-4]
 0050E3D6    call        @ClassDestroy
 0050E3DB    pop         ecx
 0050E3DC    pop         ecx
 0050E3DD    pop         ebp
 0050E3DE    ret
*}
end;

//0050E3E0
{*procedure TActionClientItem.sub_0050E3E0(?:?; ?:?);
begin
 0050E3E0    push        ebp
 0050E3E1    mov         ebp,esp
 0050E3E3    add         esp,0FFFFFFF0
 0050E3E6    push        ebx
 0050E3E7    xor         ebx,ebx
 0050E3E9    mov         dword ptr [ebp-10],ebx
 0050E3EC    mov         byte ptr [ebp-9],cl
 0050E3EF    mov         dword ptr [ebp-8],edx
 0050E3F2    mov         dword ptr [ebp-4],eax
 0050E3F5    xor         eax,eax
 0050E3F7    push        ebp
 0050E3F8    push        50E560
 0050E3FD    push        dword ptr fs:[eax]
 0050E400    mov         dword ptr fs:[eax],esp
 0050E403    mov         eax,dword ptr [ebp-8]
 0050E406    mov         edx,dword ptr ds:[4DA408];TCustomAction
 0050E40C    call        @IsClass
 0050E411    test        al,al
>0050E413    je          0050E54A
 0050E419    mov         eax,dword ptr [ebp-4]
 0050E41C    cmp         dword ptr [eax+40],0;TActionClientItem.FControl:TCustomActionControl
>0050E420    je          0050E4A8
 0050E426    cmp         byte ptr [ebp-9],0
>0050E42A    je          0050E43B
 0050E42C    mov         eax,dword ptr [ebp-4]
 0050E42F    mov         eax,dword ptr [eax+40];TActionClientItem.FControl:TCustomActionControl
 0050E432    mov         edx,dword ptr [eax]
 0050E434    call        dword ptr [edx+50];TImage.GetEnabled
 0050E437    cmp         al,1
>0050E439    jne         0050E44C
 0050E43B    mov         eax,dword ptr [ebp-8]
 0050E43E    mov         dl,byte ptr [eax+6A]
 0050E441    mov         eax,dword ptr [ebp-4]
 0050E444    mov         eax,dword ptr [eax+40];TActionClientItem.FControl:TCustomActionControl
 0050E447    mov         ecx,dword ptr [eax]
 0050E449    call        dword ptr [ecx+64];TImage.SetEnabled
 0050E44C    cmp         byte ptr [ebp-9],0
>0050E450    je          0050E461
 0050E452    mov         eax,dword ptr [ebp-4]
 0050E455    mov         eax,dword ptr [eax+40];TActionClientItem.FControl:TCustomActionControl
 0050E458    cmp         dword ptr [eax+80],0;TCustomActionControl.Hint:String
>0050E45F    jne         0050E477
 0050E461    mov         eax,dword ptr [ebp-4]
 0050E464    mov         eax,dword ptr [eax+40];TActionClientItem.FControl:TCustomActionControl
 0050E467    add         eax,80;TCustomActionControl.Hint:String
 0050E46C    mov         edx,dword ptr [ebp-8]
 0050E46F    mov         edx,dword ptr [edx+7C]
 0050E472    call        @LStrAsg
 0050E477    cmp         byte ptr [ebp-9],0
>0050E47B    je          0050E48D
 0050E47D    mov         eax,dword ptr [ebp-4]
 0050E480    mov         eax,dword ptr [eax+40];TActionClientItem.FControl:TCustomActionControl
 0050E483    cmp         word ptr [eax+122],0;TCustomActionControl.?f122:word
>0050E48B    jne         0050E4A8
 0050E48D    mov         eax,dword ptr [ebp-4]
 0050E490    mov         eax,dword ptr [eax+40];TActionClientItem.FControl:TCustomActionControl
 0050E493    mov         edx,dword ptr [ebp-8]
 0050E496    mov         ecx,dword ptr [edx+40]
 0050E499    mov         dword ptr [eax+120],ecx;TCustomActionControl.FOnClick:TNotifyEvent
 0050E49F    mov         ecx,dword ptr [edx+44]
 0050E4A2    mov         dword ptr [eax+124],ecx;TCustomActionControl.?f124:TMessageForm
 0050E4A8    cmp         byte ptr [ebp-9],0
>0050E4AC    je          0050E4BF
 0050E4AE    lea         edx,[ebp-10]
 0050E4B1    mov         eax,dword ptr [ebp-4]
 0050E4B4    call        TActionClientItem.GetCaption
 0050E4B9    cmp         dword ptr [ebp-10],0
>0050E4BD    jne         0050E4CD
 0050E4BF    mov         eax,dword ptr [ebp-8]
 0050E4C2    mov         edx,dword ptr [eax+64]
 0050E4C5    mov         eax,dword ptr [ebp-4]
 0050E4C8    call        TActionClientItem.SetCaption
 0050E4CD    cmp         byte ptr [ebp-9],0
>0050E4D1    je          0050E4DC
 0050E4D3    mov         eax,dword ptr [ebp-4]
 0050E4D6    cmp         dword ptr [eax+58],0;TActionClientItem.ImageIndex:TImageIndex
>0050E4DA    jne         0050E4ED
 0050E4DC    mov         eax,dword ptr [ebp-8]
 0050E4DF    mov         edx,dword ptr [eax+80]
 0050E4E5    mov         eax,dword ptr [ebp-4]
 0050E4E8    call        TActionClientItem.SetImageIndex
 0050E4ED    cmp         byte ptr [ebp-9],0
>0050E4F1    je          0050E4FD
 0050E4F3    mov         eax,dword ptr [ebp-4]
 0050E4F6    cmp         word ptr [eax+48],0;TActionClientItem.ShortCut:TShortCut
>0050E4FB    jne         0050E50F
 0050E4FD    mov         eax,dword ptr [ebp-8]
 0050E500    mov         dx,word ptr [eax+84]
 0050E507    mov         eax,dword ptr [ebp-4]
 0050E50A    call        TActionClientItem.SetShortCut
 0050E50F    cmp         byte ptr [ebp-9],0
>0050E513    je          0050E51E
 0050E515    mov         eax,dword ptr [ebp-4]
 0050E518    cmp         byte ptr [eax+30],1;TActionClientItem.Visible:Boolean
>0050E51C    jne         0050E52F
 0050E51E    mov         eax,dword ptr [ebp-8]
 0050E521    mov         dl,byte ptr [eax+86]
 0050E527    mov         eax,dword ptr [ebp-4]
 0050E52A    mov         ecx,dword ptr [eax]
 0050E52C    call        dword ptr [ecx+2C];TActionClientItem.sub_0050F0D4
 0050E52F    cmp         byte ptr [ebp-9],0
>0050E533    je          0050E53E
 0050E535    mov         eax,dword ptr [ebp-4]
 0050E538    cmp         dword ptr [eax+64],0;TActionClientItem.HelpContext:THelpContext
>0050E53C    jne         0050E54A
 0050E53E    mov         eax,dword ptr [ebp-8]
 0050E541    mov         eax,dword ptr [eax+74]
 0050E544    mov         edx,dword ptr [ebp-4]
 0050E547    mov         dword ptr [edx+64],eax;TActionClientItem.HelpContext:THelpContext
 0050E54A    xor         eax,eax
 0050E54C    pop         edx
 0050E54D    pop         ecx
 0050E54E    pop         ecx
 0050E54F    mov         dword ptr fs:[eax],edx
 0050E552    push        50E567
 0050E557    lea         eax,[ebp-10]
 0050E55A    call        @LStrClr
 0050E55F    ret
>0050E560    jmp         @HandleFinally
>0050E565    jmp         0050E557
 0050E567    pop         ebx
 0050E568    mov         esp,ebp
 0050E56A    pop         ebp
 0050E56B    ret
end;*}

//0050E56C
{*procedure sub_0050E56C(?:?);
begin
 0050E56C    push        ebp
 0050E56D    mov         ebp,esp
 0050E56F    add         esp,0FFFFFFF4
 0050E572    xor         ecx,ecx
 0050E574    mov         dword ptr [ebp-0C],ecx
 0050E577    mov         dword ptr [ebp-8],edx
 0050E57A    mov         dword ptr [ebp-4],eax
 0050E57D    xor         eax,eax
 0050E57F    push        ebp
 0050E580    push        50E6CE
 0050E585    push        dword ptr fs:[eax]
 0050E588    mov         dword ptr fs:[eax],esp
 0050E58B    mov         edx,dword ptr [ebp-8]
 0050E58E    mov         eax,dword ptr [ebp-4]
 0050E591    call        0050C964
 0050E596    mov         eax,dword ptr [ebp-8]
 0050E599    mov         edx,dword ptr ds:[509710];TActionClientItem
 0050E59F    call        @IsClass
 0050E5A4    test        al,al
>0050E5A6    je          0050E5BC
 0050E5A8    mov         eax,dword ptr [ebp-4]
 0050E5AB    cmp         dword ptr [eax+4],0;TActionClientItem.FCollection:TCollection
>0050E5AF    je          0050E5BC
 0050E5B1    mov         eax,dword ptr [ebp-4]
 0050E5B4    mov         eax,dword ptr [eax+4];TActionClientItem.FCollection:TCollection
 0050E5B7    mov         edx,dword ptr [eax]
 0050E5B9    call        dword ptr [edx+20];TCollection.sub_004799FC
 0050E5BC    xor         eax,eax
 0050E5BE    push        ebp
 0050E5BF    push        50E6B1
 0050E5C4    push        dword ptr fs:[eax]
 0050E5C7    mov         dword ptr fs:[eax],esp
 0050E5CA    mov         eax,dword ptr [ebp-8]
 0050E5CD    call        TActionClientItem.GetAction
 0050E5D2    mov         edx,eax
 0050E5D4    mov         eax,dword ptr [ebp-4]
 0050E5D7    call        TActionClientItem.SetAction
 0050E5DC    lea         edx,[ebp-0C]
 0050E5DF    mov         eax,dword ptr [ebp-8]
 0050E5E2    call        TActionClientItem.GetCaption
 0050E5E7    mov         edx,dword ptr [ebp-0C]
 0050E5EA    mov         eax,dword ptr [ebp-4]
 0050E5ED    call        TActionClientItem.SetCaption
 0050E5F2    mov         eax,dword ptr [ebp-8]
 0050E5F5    mov         eax,dword ptr [eax+64]
 0050E5F8    mov         edx,dword ptr [ebp-4]
 0050E5FB    mov         dword ptr [edx+64],eax;TActionClientItem.HelpContext:THelpContext
 0050E5FE    mov         eax,dword ptr [ebp-8]
 0050E601    mov         edx,dword ptr [eax+58]
 0050E604    mov         eax,dword ptr [ebp-4]
 0050E607    call        TActionClientItem.SetImageIndex
 0050E60C    mov         eax,dword ptr [ebp-8]
 0050E60F    mov         edx,dword ptr [eax+4C]
 0050E612    mov         eax,dword ptr [ebp-4]
 0050E615    call        TActionClientItem.SetMergeIndex
 0050E61A    mov         eax,dword ptr [ebp-8]
 0050E61D    mov         edx,dword ptr [eax+5C]
 0050E620    mov         eax,dword ptr [ebp-4]
 0050E623    call        TActionClientItem.SetLastSession
 0050E628    mov         eax,dword ptr [ebp-8]
 0050E62B    mov         dl,byte ptr [eax+51]
 0050E62E    mov         eax,dword ptr [ebp-4]
 0050E631    call        TActionClientItem.SetShowCaption
 0050E636    mov         eax,dword ptr [ebp-8]
 0050E639    mov         dl,byte ptr [eax+61]
 0050E63C    mov         eax,dword ptr [ebp-4]
 0050E63F    call        TActionClientItem.SetShowGlyph
 0050E644    mov         eax,dword ptr [ebp-8]
 0050E647    mov         dl,byte ptr [eax+52]
 0050E64A    mov         eax,dword ptr [ebp-4]
 0050E64D    call        TActionClientItem.SetShowShortCut
 0050E652    mov         eax,dword ptr [ebp-8]
 0050E655    mov         dx,word ptr [eax+48]
 0050E659    mov         eax,dword ptr [ebp-4]
 0050E65C    call        TActionClientItem.SetShortCut
 0050E661    mov         eax,dword ptr [ebp-8]
 0050E664    mov         edx,dword ptr [eax+44]
 0050E667    mov         eax,dword ptr [ebp-4]
 0050E66A    call        TActionClientItem.SetUsageCount
 0050E66F    mov         eax,dword ptr [ebp-8]
 0050E672    cmp         dword ptr [eax+2C],0
>0050E676    je          0050E68F
 0050E678    mov         eax,dword ptr [ebp-8]
 0050E67B    call        TActionClient.GetItems
 0050E680    push        eax
 0050E681    mov         eax,dword ptr [ebp-4]
 0050E684    call        TActionClient.GetItems
 0050E689    pop         edx
 0050E68A    mov         ecx,dword ptr [eax]
 0050E68C    call        dword ptr [ecx+8]
 0050E68F    xor         eax,eax
 0050E691    pop         edx
 0050E692    pop         ecx
 0050E693    pop         ecx
 0050E694    mov         dword ptr fs:[eax],edx
 0050E697    push        50E6B8
 0050E69C    mov         eax,dword ptr [ebp-4]
 0050E69F    cmp         dword ptr [eax+4],0;TActionClientItem.FCollection:TCollection
>0050E6A3    je          0050E6B0
 0050E6A5    mov         eax,dword ptr [ebp-4]
 0050E6A8    mov         eax,dword ptr [eax+4];TActionClientItem.FCollection:TCollection
 0050E6AB    mov         edx,dword ptr [eax]
 0050E6AD    call        dword ptr [edx+24];TCollection.sub_00479A94
 0050E6B0    ret
>0050E6B1    jmp         @HandleFinally
>0050E6B6    jmp         0050E69C
 0050E6B8    xor         eax,eax
 0050E6BA    pop         edx
 0050E6BB    pop         ecx
 0050E6BC    pop         ecx
 0050E6BD    mov         dword ptr fs:[eax],edx
 0050E6C0    push        50E6D5
 0050E6C5    lea         eax,[ebp-0C]
 0050E6C8    call        @LStrClr
 0050E6CD    ret
>0050E6CE    jmp         @HandleFinally
>0050E6D3    jmp         0050E6C5
 0050E6D5    mov         esp,ebp
 0050E6D7    pop         ebp
 0050E6D8    ret
end;*}

//0050E6DC
procedure sub_0050E6DC;
begin
{*
 0050E6DC    push        ebp
 0050E6DD    mov         ebp,esp
 0050E6DF    push        ecx
 0050E6E0    mov         dword ptr [ebp-4],eax
 0050E6E3    mov         eax,dword ptr [ebp-4]
 0050E6E6    cmp         dword ptr [eax+40],0;TActionClientItem.FControl:TCustomActionControl
>0050E6EA    je          0050E72B
 0050E6EC    mov         eax,dword ptr [ebp-4]
 0050E6EF    mov         eax,dword ptr [eax+24];TActionClientItem.Color:TColor
 0050E6F2    sub         eax,1FFFFFFF
>0050E6F7    je          0050E70B
 0050E6F9    dec         eax
>0050E6FA    jne         0050E71A
 0050E6FC    mov         dl,1
 0050E6FE    mov         eax,dword ptr [ebp-4]
 0050E701    mov         eax,dword ptr [eax+40];TActionClientItem.FControl:TCustomActionControl
 0050E704    call        TPanel.SetParentColor
>0050E709    jmp         0050E72B
 0050E70B    mov         dl,1
 0050E70D    mov         eax,dword ptr [ebp-4]
 0050E710    mov         eax,dword ptr [eax+40];TActionClientItem.FControl:TCustomActionControl
 0050E713    call        005147F4
>0050E718    jmp         0050E72B
 0050E71A    mov         eax,dword ptr [ebp-4]
 0050E71D    mov         edx,dword ptr [eax+24];TActionClientItem.Color:TColor
 0050E720    mov         eax,dword ptr [ebp-4]
 0050E723    mov         eax,dword ptr [eax+40];TActionClientItem.FControl:TCustomActionControl
 0050E726    call        TPanel.SetColor
 0050E72B    pop         ecx
 0050E72C    pop         ebp
 0050E72D    ret
*}
end;

//0050E730
{*procedure sub_0050E730(?:?; ?:?);
begin
 0050E730    push        ebp
 0050E731    mov         ebp,esp
 0050E733    add         esp,0FFFFFFF8
 0050E736    push        esi
 0050E737    mov         dword ptr [ebp-8],edx
 0050E73A    mov         dword ptr [ebp-4],eax
 0050E73D    mov         eax,dword ptr [ebp-4]
 0050E740    call        TActionClientItem.GetAction
 0050E745    cmp         eax,dword ptr [ebp-8]
>0050E748    jne         0050E75B
 0050E74A    mov         cl,1
 0050E74C    mov         edx,dword ptr [ebp-8]
 0050E74F    mov         eax,dword ptr [ebp-4]
 0050E752    mov         si,0FFFD
 0050E756    call        @CallDynaInst
 0050E75B    pop         esi
 0050E75C    pop         ecx
 0050E75D    pop         ecx
 0050E75E    pop         ebp
 0050E75F    ret
end;*}

//0050E760
{*function sub_0050E760(?:TActionClientItem):?;
begin
 0050E760    push        ebp
 0050E761    mov         ebp,esp
 0050E763    add         esp,0FFFFFFF8
 0050E766    mov         dword ptr [ebp-4],eax
 0050E769    mov         eax,dword ptr [ebp-4]
 0050E76C    mov         eax,dword ptr [eax+4];TActionClientItem.FCollection:TCollection
 0050E76F    mov         dword ptr [ebp-8],eax
 0050E772    mov         eax,dword ptr [ebp-8]
 0050E775    pop         ecx
 0050E776    pop         ecx
 0050E777    pop         ebp
 0050E778    ret
end;*}

//0050E77C
procedure TActionClientItem.sub_0050E77C;
begin
{*
 0050E77C    push        ebp
 0050E77D    mov         ebp,esp
 0050E77F    add         esp,0FFFFFFF8
 0050E782    mov         dword ptr [ebp-4],eax
 0050E785    mov         eax,[00509618];TActionClientLink
 0050E78A    mov         dword ptr [ebp-8],eax
 0050E78D    mov         eax,dword ptr [ebp-8]
 0050E790    pop         ecx
 0050E791    pop         ecx
 0050E792    pop         ebp
 0050E793    ret
*}
end;

//0050E794
{*function TActionClientItem.GetAction:?;
begin
 0050E794    push        ebp
 0050E795    mov         ebp,esp
 0050E797    add         esp,0FFFFFFF8
 0050E79A    mov         dword ptr [ebp-4],eax
 0050E79D    xor         eax,eax
 0050E79F    mov         dword ptr [ebp-8],eax
 0050E7A2    mov         eax,dword ptr [ebp-4]
 0050E7A5    cmp         dword ptr [eax+38],0;TActionClientItem.FActionLink:TActionClientLink
>0050E7A9    je          0050E7B7
 0050E7AB    mov         eax,dword ptr [ebp-4]
 0050E7AE    mov         eax,dword ptr [eax+38];TActionClientItem.FActionLink:TActionClientLink
 0050E7B1    mov         eax,dword ptr [eax+10];TActionClientLink.FAction:TBasicAction
 0050E7B4    mov         dword ptr [ebp-8],eax
 0050E7B7    mov         eax,dword ptr [ebp-8]
 0050E7BA    pop         ecx
 0050E7BB    pop         ecx
 0050E7BC    pop         ebp
 0050E7BD    ret
end;*}

//0050E7C0
{*procedure TActionClientItem.GetCaption(?:?);
begin
 0050E7C0    push        ebp
 0050E7C1    mov         ebp,esp
 0050E7C3    add         esp,0FFFFFFF0
 0050E7C6    mov         dword ptr [ebp-8],edx
 0050E7C9    mov         dword ptr [ebp-4],eax
 0050E7CC    cmp         dword ptr ds:[541A9C],0;gvar_00541A9C
>0050E7D3    je          0050E814
 0050E7D5    mov         eax,dword ptr [ebp-4]
 0050E7D8    mov         eax,dword ptr [eax+20];TActionClientItem.FCaption:String
 0050E7DB    call        @DynArrayLength
 0050E7E0    test        eax,eax
>0050E7E2    jne         0050E814
 0050E7E4    mov         eax,dword ptr [ebp-4]
 0050E7E7    call        TActionClientItem.GetAction
 0050E7EC    test        eax,eax
>0050E7EE    jne         0050E814
 0050E7F0    mov         eax,dword ptr [ebp-8]
 0050E7F3    push        eax
 0050E7F4    mov         eax,dword ptr [ebp-4]
 0050E7F7    call        TCollectionItem.GetIndex
 0050E7FC    mov         dword ptr [ebp-10],eax
 0050E7FF    mov         byte ptr [ebp-0C],0
 0050E803    lea         edx,[ebp-10]
 0050E806    xor         ecx,ecx
 0050E808    mov         eax,50E830;'ActionClientItem%d'
 0050E80D    call        Format
>0050E812    jmp         0050E822
 0050E814    mov         eax,dword ptr [ebp-8]
 0050E817    mov         edx,dword ptr [ebp-4]
 0050E81A    mov         edx,dword ptr [edx+20];TActionClientItem.FCaption:String
 0050E81D    call        @LStrAsg
 0050E822    mov         esp,ebp
 0050E824    pop         ebp
 0050E825    ret
end;*}

//0050E844
{*procedure sub_0050E844(?:?);
begin
 0050E844    push        ebp
 0050E845    mov         ebp,esp
 0050E847    add         esp,0FFFFFFF0
 0050E84A    xor         ecx,ecx
 0050E84C    mov         dword ptr [ebp-10],ecx
 0050E84F    mov         dword ptr [ebp-8],edx
 0050E852    mov         dword ptr [ebp-4],eax
 0050E855    xor         eax,eax
 0050E857    push        ebp
 0050E858    push        50E8F2
 0050E85D    push        dword ptr fs:[eax]
 0050E860    mov         dword ptr fs:[eax],esp
 0050E863    mov         edx,dword ptr [ebp-8]
 0050E866    mov         eax,dword ptr [ebp-4]
 0050E869    call        004796AC
 0050E86E    lea         edx,[ebp-10]
 0050E871    mov         eax,dword ptr [ebp-4]
 0050E874    call        TActionClientItem.GetCaption
 0050E879    mov         eax,dword ptr [ebp-10]
 0050E87C    call        @DynArrayLength
 0050E881    test        eax,eax
>0050E883    jle         0050E892
 0050E885    mov         edx,dword ptr [ebp-8]
 0050E888    mov         eax,dword ptr [ebp-4]
 0050E88B    call        TActionClientItem.GetCaption
>0050E890    jmp         0050E8DC
 0050E892    mov         eax,dword ptr [ebp-4]
 0050E895    call        TActionClientItem.GetAction
 0050E89A    mov         edx,dword ptr ds:[4DA408];TCustomAction
 0050E8A0    call        @IsClass
 0050E8A5    test        al,al
>0050E8A7    je          0050E8DC
 0050E8A9    mov         eax,dword ptr [ebp-4]
 0050E8AC    call        TActionClientItem.GetAction
 0050E8B1    mov         edx,dword ptr ds:[4DA408];TCustomAction
 0050E8B7    call        @AsClass
 0050E8BC    mov         dword ptr [ebp-0C],eax
 0050E8BF    mov         eax,dword ptr [ebp-0C]
 0050E8C2    mov         eax,dword ptr [eax+64];TCustomAction.FCaption:String
 0050E8C5    call        @DynArrayLength
 0050E8CA    test        eax,eax
>0050E8CC    jle         0050E8DC
 0050E8CE    mov         eax,dword ptr [ebp-8]
 0050E8D1    mov         edx,dword ptr [ebp-0C]
 0050E8D4    mov         edx,dword ptr [edx+64];TCustomAction.FCaption:String
 0050E8D7    call        @LStrAsg
 0050E8DC    xor         eax,eax
 0050E8DE    pop         edx
 0050E8DF    pop         ecx
 0050E8E0    pop         ecx
 0050E8E1    mov         dword ptr fs:[eax],edx
 0050E8E4    push        50E8F9
 0050E8E9    lea         eax,[ebp-10]
 0050E8EC    call        @LStrClr
 0050E8F1    ret
>0050E8F2    jmp         @HandleFinally
>0050E8F7    jmp         0050E8E9
 0050E8F9    mov         esp,ebp
 0050E8FB    pop         ebp
 0050E8FC    ret
end;*}

//0050E900
{*function sub_0050E900(?:?; ?:?):?;
begin
 0050E900    push        ebp
 0050E901    mov         ebp,esp
 0050E903    add         esp,0FFFFFFF8
 0050E906    mov         dword ptr [ebp-4],eax
 0050E909    cmp         dword ptr [ebp-4],0
>0050E90D    je          0050E93A
 0050E90F    mov         eax,dword ptr [ebp-4]
 0050E912    cmp         dword ptr [eax+38],0
>0050E916    je          0050E93A
 0050E918    mov         eax,dword ptr [ebp+8]
 0050E91B    mov         eax,dword ptr [eax-4]
 0050E91E    cmp         dword ptr [eax+58],0FFFFFFFF
>0050E922    jle         0050E93A
 0050E924    mov         eax,dword ptr [ebp-4]
 0050E927    mov         eax,dword ptr [eax+38]
 0050E92A    call        004DCB64
 0050E92F    mov         edx,dword ptr [ebp+8]
 0050E932    mov         edx,dword ptr [edx-4]
 0050E935    cmp         eax,dword ptr [edx+58]
>0050E938    jg          0050E93E
 0050E93A    xor         eax,eax
>0050E93C    jmp         0050E940
 0050E93E    mov         al,1
 0050E940    mov         byte ptr [ebp-5],al
 0050E943    mov         al,byte ptr [ebp-5]
 0050E946    pop         ecx
 0050E947    pop         ecx
 0050E948    pop         ebp
 0050E949    ret
end;*}

//0050E94C
{*function sub_0050E94C(?:TActionClientItem):?;
begin
 0050E94C    push        ebp
 0050E94D    mov         ebp,esp
 0050E94F    add         esp,0FFFFFFF8
 0050E952    mov         dword ptr [ebp-4],eax
 0050E955    mov         eax,dword ptr [ebp-4]
 0050E958    cmp         byte ptr [eax+61],0
>0050E95C    je          0050E982
 0050E95E    mov         eax,dword ptr [ebp-4]
 0050E961    call        0050CCC4
 0050E966    test        eax,eax
>0050E968    je          0050E982
 0050E96A    push        ebp
 0050E96B    mov         eax,dword ptr [ebp-4]
 0050E96E    call        0050CCC4
 0050E973    call        0050BE18
 0050E978    call        0050E900
 0050E97D    pop         ecx
 0050E97E    test        al,al
>0050E980    jne         0050E9A8
 0050E982    mov         eax,dword ptr [ebp-4]
 0050E985    call        TActionClientItem.GetAction
 0050E98A    test        eax,eax
>0050E98C    je          0050E9A4
 0050E98E    push        ebp
 0050E98F    mov         eax,dword ptr [ebp-4]
 0050E992    call        TActionClientItem.GetAction
 0050E997    mov         eax,dword ptr [eax+5C]
 0050E99A    call        0050E900
 0050E99F    pop         ecx
 0050E9A0    test        al,al
>0050E9A2    jne         0050E9A8
 0050E9A4    xor         eax,eax
>0050E9A6    jmp         0050E9AA
 0050E9A8    mov         al,1
 0050E9AA    mov         byte ptr [ebp-5],al
 0050E9AD    mov         al,byte ptr [ebp-5]
 0050E9B0    pop         ecx
 0050E9B1    pop         ecx
 0050E9B2    pop         ebp
 0050E9B3    ret
end;*}

//0050E9B4
procedure sub_0050E9B4;
begin
{*
 0050E9B4    push        ebp
 0050E9B5    mov         ebp,esp
 0050E9B7    push        ecx
 0050E9B8    mov         dword ptr [ebp-4],eax
 0050E9BB    mov         eax,dword ptr [ebp-4]
 0050E9BE    cmp         dword ptr [eax+38],0;TActionClientItem.FActionLink:TActionClientLink
>0050E9C2    je          0050E9CF
 0050E9C4    mov         eax,dword ptr [ebp-4]
 0050E9C7    mov         eax,dword ptr [eax+38];TActionClientItem.FActionLink:TActionClientLink
 0050E9CA    mov         edx,dword ptr [eax]
 0050E9CC    call        dword ptr [edx+1C];TActionClientLink.sub_00483D14
 0050E9CF    pop         ecx
 0050E9D0    pop         ebp
 0050E9D1    ret
*}
end;

//0050E9D4
function TActionClientItem.IsStoredCaption(Value:String):Boolean;
begin
{*
 0050E9D4    push        ebp
 0050E9D5    mov         ebp,esp
 0050E9D7    add         esp,0FFFFFFF4
 0050E9DA    xor         edx,edx
 0050E9DC    mov         dword ptr [ebp-0C],edx
 0050E9DF    mov         dword ptr [ebp-4],eax
 0050E9E2    xor         eax,eax
 0050E9E4    push        ebp
 0050E9E5    push        50EA55
 0050E9EA    push        dword ptr fs:[eax]
 0050E9ED    mov         dword ptr fs:[eax],esp
 0050E9F0    mov         eax,dword ptr [ebp-4]
 0050E9F3    call        TActionClientItem.GetAction
 0050E9F8    test        eax,eax
>0050E9FA    je          0050EA3B
 0050E9FC    mov         eax,dword ptr [ebp-4]
 0050E9FF    call        TActionClientItem.GetAction
 0050EA04    mov         edx,dword ptr ds:[4DA408];TCustomAction
 0050EA0A    call        @IsClass
 0050EA0F    test        al,al
>0050EA11    je          0050EA3B
 0050EA13    lea         edx,[ebp-0C]
 0050EA16    mov         eax,dword ptr [ebp-4]
 0050EA19    call        TActionClientItem.GetCaption
 0050EA1E    mov         eax,dword ptr [ebp-0C]
 0050EA21    push        eax
 0050EA22    mov         eax,dword ptr [ebp-4]
 0050EA25    call        TActionClientItem.GetAction
 0050EA2A    mov         edx,dword ptr [eax+64]
 0050EA2D    pop         eax
 0050EA2E    call        00466420
 0050EA33    test        eax,eax
 0050EA35    setne       byte ptr [ebp-5]
>0050EA39    jmp         0050EA3F
 0050EA3B    mov         byte ptr [ebp-5],1
 0050EA3F    xor         eax,eax
 0050EA41    pop         edx
 0050EA42    pop         ecx
 0050EA43    pop         ecx
 0050EA44    mov         dword ptr fs:[eax],edx
 0050EA47    push        50EA5C
 0050EA4C    lea         eax,[ebp-0C]
 0050EA4F    call        @LStrClr
 0050EA54    ret
>0050EA55    jmp         @HandleFinally
>0050EA5A    jmp         0050EA4C
 0050EA5C    mov         al,byte ptr [ebp-5]
 0050EA5F    mov         esp,ebp
 0050EA61    pop         ebp
 0050EA62    ret
*}
end;

//0050EA64
procedure sub_0050EA64;
begin
{*
 0050EA64    push        ebp
 0050EA65    mov         ebp,esp
 0050EA67    push        ecx
 0050EA68    mov         dword ptr [ebp-4],eax
 0050EA6B    mov         eax,dword ptr [ebp-4]
 0050EA6E    cmp         dword ptr [eax+40],0;TActionClientItem.FControl:TCustomActionControl
>0050EA72    je          0050EA82
 0050EA74    mov         eax,dword ptr [ebp-4]
 0050EA77    mov         eax,dword ptr [eax+40];TActionClientItem.FControl:TCustomActionControl
 0050EA7A    mov         edx,dword ptr [eax]
 0050EA7C    call        dword ptr [edx+0DC];TCustomActionControl.sub_00515568
 0050EA82    pop         ecx
 0050EA83    pop         ebp
 0050EA84    ret
*}
end;

//0050EA88
procedure sub_0050EA88(?:TActionClientItem);
begin
{*
 0050EA88    push        ebp
 0050EA89    mov         ebp,esp
 0050EA8B    add         esp,0FFFFFFF4
 0050EA8E    mov         dword ptr [ebp-4],eax
 0050EA91    mov         eax,dword ptr [ebp-4]
 0050EA94    cmp         dword ptr [eax+44],0FFFFFFFF
>0050EA98    je          0050EAA7
 0050EA9A    mov         eax,dword ptr [ebp-4]
 0050EA9D    inc         dword ptr [eax+44]
 0050EAA0    mov         eax,dword ptr [ebp-4]
 0050EAA3    mov         byte ptr [eax+3C],1
 0050EAA7    mov         eax,dword ptr [ebp-4]
 0050EAAA    call        0050E760
 0050EAAF    call        0050BE18
 0050EAB4    mov         eax,dword ptr [eax+6C]
 0050EAB7    mov         eax,dword ptr [eax+28]
 0050EABA    mov         edx,dword ptr [ebp-4]
 0050EABD    mov         dword ptr [edx+5C],eax
 0050EAC0    mov         eax,dword ptr [ebp-4]
 0050EAC3    call        0050E760
 0050EAC8    mov         eax,dword ptr [eax+20]
 0050EACB    mov         dword ptr [ebp-0C],eax
 0050EACE    cmp         dword ptr [ebp-0C],0
>0050EAD2    je          0050EB75
 0050EAD8    mov         eax,dword ptr [ebp-4]
 0050EADB    call        0050E760
 0050EAE0    mov         eax,dword ptr [eax+20]
 0050EAE3    call        0050CCC4
 0050EAE8    mov         dword ptr [ebp-8],eax
>0050EAEB    jmp         0050EAFB
 0050EAED    mov         eax,dword ptr [ebp-8]
 0050EAF0    mov         eax,dword ptr [eax+20]
 0050EAF3    call        0050CCC4
 0050EAF8    mov         dword ptr [ebp-8],eax
 0050EAFB    cmp         dword ptr [ebp-8],0
>0050EAFF    je          0050EB13
 0050EB01    mov         eax,dword ptr [ebp-8]
 0050EB04    mov         edx,dword ptr ds:[509328];TActionBars
 0050EB0A    call        @IsClass
 0050EB0F    test        al,al
>0050EB11    je          0050EAED
 0050EB13    cmp         dword ptr [ebp-8],0
>0050EB17    je          0050EB25
 0050EB19    mov         eax,dword ptr [ebp-8]
 0050EB1C    mov         eax,dword ptr [eax+28]
 0050EB1F    mov         edx,dword ptr [ebp-4]
 0050EB22    mov         dword ptr [edx+5C],eax
 0050EB25    cmp         dword ptr [ebp-0C],0
>0050EB29    je          0050EB75
 0050EB2B    mov         eax,dword ptr [ebp-0C]
 0050EB2E    mov         edx,dword ptr ds:[509710];TActionClientItem
 0050EB34    call        @IsClass
 0050EB39    test        al,al
>0050EB3B    je          0050EB61
 0050EB3D    mov         eax,dword ptr [ebp-0C]
 0050EB40    mov         byte ptr [eax+3C],1
 0050EB44    mov         eax,dword ptr [ebp-0C]
 0050EB47    cmp         dword ptr [eax+44],0FFFFFFFF
>0050EB4B    je          0050EB53
 0050EB4D    mov         eax,dword ptr [ebp-0C]
 0050EB50    inc         dword ptr [eax+44]
 0050EB53    mov         eax,dword ptr [ebp-4]
 0050EB56    mov         edx,dword ptr [eax+5C]
 0050EB59    mov         eax,dword ptr [ebp-0C]
 0050EB5C    call        TActionClientItem.SetLastSession
 0050EB61    mov         eax,dword ptr [ebp-0C]
 0050EB64    call        0050CCC4
 0050EB69    mov         eax,dword ptr [eax+20]
 0050EB6C    mov         dword ptr [ebp-0C],eax
 0050EB6F    cmp         dword ptr [ebp-0C],0
>0050EB73    jne         0050EB2B
 0050EB75    mov         esp,ebp
 0050EB77    pop         ebp
 0050EB78    ret
*}
end;

//0050EB7C
procedure TActionClientItem.SetAction(Value:TContainedAction);
begin
{*
 0050EB7C    push        ebp
 0050EB7D    mov         ebp,esp
 0050EB7F    add         esp,0FFFFFFF8
 0050EB82    push        esi
 0050EB83    mov         dword ptr [ebp-8],edx
 0050EB86    mov         dword ptr [ebp-4],eax
 0050EB89    cmp         dword ptr [ebp-8],0
>0050EB8D    jne         0050EBA7
 0050EB8F    mov         eax,dword ptr [ebp-4]
 0050EB92    mov         eax,dword ptr [eax+38];TActionClientItem.FActionLink:TActionClientLink
 0050EB95    call        TObject.Free
 0050EB9A    mov         eax,dword ptr [ebp-4]
 0050EB9D    xor         edx,edx
 0050EB9F    mov         dword ptr [eax+38],edx;TActionClientItem.FActionLink:TActionClientLink
>0050EBA2    jmp         0050ECBD
 0050EBA7    mov         eax,dword ptr [ebp-4]
 0050EBAA    call        TActionClientItem.GetAction
 0050EBAF    cmp         eax,dword ptr [ebp-8]
>0050EBB2    je          0050ECBD
 0050EBB8    mov         eax,dword ptr [ebp-4]
 0050EBBB    cmp         dword ptr [eax+40],0;TActionClientItem.FControl:TCustomActionControl
>0050EBBF    je          0050EBCC
 0050EBC1    mov         eax,dword ptr [ebp-4]
 0050EBC4    add         eax,40;TActionClientItem.FControl:TCustomActionControl
 0050EBC7    call        FreeAndNil
 0050EBCC    mov         eax,dword ptr [ebp-4]
 0050EBCF    cmp         dword ptr [eax+38],0;TActionClientItem.FActionLink:TActionClientLink
>0050EBD3    jne         0050EBEF
 0050EBD5    mov         eax,dword ptr [ebp-4]
 0050EBD8    mov         si,0FFFC
 0050EBDC    call        @CallDynaInst;TActionClientItem.sub_0050E77C
 0050EBE1    mov         ecx,dword ptr [ebp-4]
 0050EBE4    mov         dl,1
 0050EBE6    call        dword ptr [eax+14]
 0050EBE9    mov         edx,dword ptr [ebp-4]
 0050EBEC    mov         dword ptr [edx+38],eax;TActionClientItem.FActionLink:TActionClientLink
 0050EBEF    mov         edx,dword ptr [ebp-8]
 0050EBF2    mov         eax,dword ptr [ebp-4]
 0050EBF5    mov         eax,dword ptr [eax+38];TActionClientItem.FActionLink:TActionClientLink
 0050EBF8    mov         ecx,dword ptr [eax]
 0050EBFA    call        dword ptr [ecx+0C];TActionClientLink.sub_00483CA8
 0050EBFD    mov         eax,dword ptr [ebp-4]
 0050EC00    mov         eax,dword ptr [eax+38];TActionClientItem.FActionLink:TActionClientLink
 0050EC03    mov         edx,dword ptr [ebp-4]
 0050EC06    mov         dword ptr [eax+0C],edx;TActionClientLink.?fC:TSpeedButton
 0050EC09    mov         dword ptr [eax+8],50E730;TActionClientLink.FOnChange:TNotifyEvent sub_0050E730
 0050EC10    mov         eax,dword ptr [ebp-8]
 0050EC13    test        byte ptr [eax+1C],1;TContainedAction.FComponentState:TComponentState
>0050EC17    jne         0050EC33
 0050EC19    mov         eax,dword ptr [ebp-4]
 0050EC1C    call        0050E760
 0050EC21    call        0050BE18
 0050EC26    cmp         byte ptr [eax+90],0
>0050EC2D    jne         0050EC33
 0050EC2F    xor         ecx,ecx
>0050EC31    jmp         0050EC35
 0050EC33    mov         cl,1
 0050EC35    mov         edx,dword ptr [ebp-8]
 0050EC38    mov         eax,dword ptr [ebp-4]
 0050EC3B    mov         si,0FFFD
 0050EC3F    call        @CallDynaInst;TActionClientItem.sub_0050E3E0
 0050EC44    mov         eax,dword ptr [ebp-4]
 0050EC47    mov         eax,dword ptr [eax+4];TActionClientItem.FCollection:TCollection
 0050EC4A    call        0050BE18
 0050EC4F    mov         edx,eax
 0050EC51    mov         eax,dword ptr [ebp-8]
 0050EC54    call        00483020
 0050EC59    mov         eax,dword ptr [ebp-4]
 0050EC5C    call        0050E760
 0050EC61    cmp         dword ptr [eax+20],0
>0050EC65    je          0050ECBD
 0050EC67    mov         eax,dword ptr [ebp-4]
 0050EC6A    call        0050E760
 0050EC6F    mov         eax,dword ptr [eax+20]
 0050EC72    cmp         dword ptr [eax+0C],0
>0050EC76    je          0050EC93
 0050EC78    mov         eax,dword ptr [ebp-4]
 0050EC7B    call        0050E760
 0050EC80    mov         eax,dword ptr [eax+20]
 0050EC83    mov         eax,dword ptr [eax+0C]
 0050EC86    mov         edx,dword ptr [ebp-4]
 0050EC89    mov         ecx,dword ptr [eax]
 0050EC8B    call        dword ptr [ecx+0D4]
>0050EC91    jmp         0050ECBD
 0050EC93    mov         eax,dword ptr [ebp-4]
 0050EC96    call        0050E760
 0050EC9B    mov         eax,dword ptr [eax+20]
 0050EC9E    cmp         dword ptr [eax+18],0
>0050ECA2    je          0050ECBD
 0050ECA4    mov         eax,dword ptr [ebp-4]
 0050ECA7    call        0050E760
 0050ECAC    mov         eax,dword ptr [eax+20]
 0050ECAF    mov         eax,dword ptr [eax+18]
 0050ECB2    mov         edx,dword ptr [ebp-4]
 0050ECB5    mov         ecx,dword ptr [eax]
 0050ECB7    call        dword ptr [ecx+0D4]
 0050ECBD    pop         esi
 0050ECBE    pop         ecx
 0050ECBF    pop         ecx
 0050ECC0    pop         ebp
 0050ECC1    ret
*}
end;

//0050ECC4
procedure TActionClientItem.SetCaption(Value:AnsiString);
begin
{*
 0050ECC4    push        ebp
 0050ECC5    mov         ebp,esp
 0050ECC7    add         esp,0FFFFFFF8
 0050ECCA    mov         dword ptr [ebp-8],edx
 0050ECCD    mov         dword ptr [ebp-4],eax
 0050ECD0    mov         eax,dword ptr [ebp-4]
 0050ECD3    mov         eax,dword ptr [eax+20];TActionClientItem.FCaption:String
 0050ECD6    mov         edx,dword ptr [ebp-8]
 0050ECD9    call        @LStrCmp
>0050ECDE    je          0050ED58
 0050ECE0    mov         eax,dword ptr [ebp-4]
 0050ECE3    add         eax,20;TActionClientItem.FCaption:String
 0050ECE6    mov         edx,dword ptr [ebp-8]
 0050ECE9    call        @LStrAsg
 0050ECEE    mov         eax,dword ptr [ebp-4]
 0050ECF1    call        TActionClientItem.GetAction
 0050ECF6    test        eax,eax
>0050ECF8    jne         0050ED18
 0050ECFA    mov         eax,dword ptr [ebp-8]
 0050ECFD    mov         edx,50ED64;'-'
 0050ED02    call        @LStrCmp
>0050ED07    je          0050ED1C
 0050ED09    mov         eax,dword ptr [ebp-8]
 0050ED0C    mov         edx,50ED70;'|'
 0050ED11    call        @LStrCmp
>0050ED16    je          0050ED1C
 0050ED18    xor         eax,eax
>0050ED1A    jmp         0050ED1E
 0050ED1C    mov         al,1
 0050ED1E    mov         edx,dword ptr [ebp-4]
 0050ED21    mov         byte ptr [edx+50],al;TActionClientItem.FSeparator:Boolean
 0050ED24    mov         eax,dword ptr [ebp-4]
 0050ED27    cmp         byte ptr [eax+50],0;TActionClientItem.FSeparator:Boolean
>0050ED2B    je          0050ED41
 0050ED2D    xor         edx,edx
 0050ED2F    mov         eax,dword ptr [ebp-4]
 0050ED32    call        TActionClientItem.SetAction
 0050ED37    xor         edx,edx
 0050ED39    mov         eax,dword ptr [ebp-4]
 0050ED3C    call        TActionClientItem.SetShortCut
 0050ED41    mov         eax,dword ptr [ebp-4]
 0050ED44    cmp         dword ptr [eax+40],0;TActionClientItem.FControl:TCustomActionControl
>0050ED48    je          0050ED58
 0050ED4A    mov         edx,dword ptr [ebp-8]
 0050ED4D    mov         eax,dword ptr [ebp-4]
 0050ED50    mov         eax,dword ptr [eax+40];TActionClientItem.FControl:TCustomActionControl
 0050ED53    call        TControl.SetText
 0050ED58    pop         ecx
 0050ED59    pop         ecx
 0050ED5A    pop         ebp
 0050ED5B    ret
*}
end;

//0050ED74
{*procedure sub_0050ED74(?:?; ?:?);
begin
 0050ED74    push        ebp
 0050ED75    mov         ebp,esp
 0050ED77    add         esp,0FFFFFFF8
 0050ED7A    push        esi
 0050ED7B    mov         dword ptr [ebp-8],edx
 0050ED7E    mov         dword ptr [ebp-4],eax
 0050ED81    mov         eax,dword ptr [ebp-4]
 0050ED84    mov         eax,dword ptr [eax+40]
 0050ED87    cmp         eax,dword ptr [ebp-8]
>0050ED8A    je          0050EDD2
 0050ED8C    mov         eax,dword ptr [ebp-4]
 0050ED8F    add         eax,40
 0050ED92    call        FreeAndNil
 0050ED97    mov         eax,dword ptr [ebp-8]
 0050ED9A    mov         edx,dword ptr [ebp-4]
 0050ED9D    mov         dword ptr [edx+40],eax
 0050EDA0    mov         eax,dword ptr [ebp-4]
 0050EDA3    cmp         dword ptr [eax+40],0
>0050EDA7    je          0050EDD2
 0050EDA9    mov         eax,dword ptr [ebp-4]
 0050EDAC    call        TActionClientItem.GetAction
 0050EDB1    mov         edx,eax
 0050EDB3    mov         cl,1
 0050EDB5    mov         eax,dword ptr [ebp-4]
 0050EDB8    mov         si,0FFFD
 0050EDBC    call        @CallDynaInst
 0050EDC1    mov         edx,dword ptr [ebp-4]
 0050EDC4    mov         eax,dword ptr [ebp-4]
 0050EDC7    mov         eax,dword ptr [eax+40]
 0050EDCA    mov         ecx,dword ptr [eax]
 0050EDCC    call        dword ptr [ecx+0D0]
 0050EDD2    pop         esi
 0050EDD3    pop         ecx
 0050EDD4    pop         ecx
 0050EDD5    pop         ebp
 0050EDD6    ret
end;*}

//0050EDD8
procedure TActionClientItem.SetImageIndex(Value:TImageIndex);
begin
{*
 0050EDD8    push        ebp
 0050EDD9    mov         ebp,esp
 0050EDDB    add         esp,0FFFFFFF8
 0050EDDE    mov         dword ptr [ebp-8],edx
 0050EDE1    mov         dword ptr [ebp-4],eax
 0050EDE4    mov         eax,dword ptr [ebp-4]
 0050EDE7    mov         eax,dword ptr [eax+58];TActionClientItem.ImageIndex:TImageIndex
 0050EDEA    cmp         eax,dword ptr [ebp-8]
>0050EDED    je          0050EE1A
 0050EDEF    mov         eax,dword ptr [ebp-8]
 0050EDF2    mov         edx,dword ptr [ebp-4]
 0050EDF5    mov         dword ptr [edx+58],eax;TActionClientItem.ImageIndex:TImageIndex
 0050EDF8    mov         eax,dword ptr [ebp-4]
 0050EDFB    cmp         dword ptr [eax+40],0;TActionClientItem.FControl:TCustomActionControl
>0050EDFF    je          0050EE1A
 0050EE01    mov         eax,dword ptr [ebp-4]
 0050EE04    mov         eax,dword ptr [eax+40];TActionClientItem.FControl:TCustomActionControl
 0050EE07    mov         edx,dword ptr [eax]
 0050EE09    call        dword ptr [edx+0DC];TCustomActionControl.sub_00515568
 0050EE0F    mov         eax,dword ptr [ebp-4]
 0050EE12    mov         eax,dword ptr [eax+40];TActionClientItem.FControl:TCustomActionControl
 0050EE15    mov         edx,dword ptr [eax]
 0050EE17    call        dword ptr [edx+7C];TCustomActionControl.sub_004CB6E8
 0050EE1A    pop         ecx
 0050EE1B    pop         ecx
 0050EE1C    pop         ebp
 0050EE1D    ret
*}
end;

//0050EE20
{*procedure sub_0050EE20(?:?);
begin
 0050EE20    push        ebp
 0050EE21    mov         ebp,esp
 0050EE23    add         esp,0FFFFFFF8
 0050EE26    mov         dword ptr [ebp-8],edx
 0050EE29    mov         dword ptr [ebp-4],eax
 0050EE2C    mov         edx,dword ptr [ebp-8]
 0050EE2F    mov         eax,dword ptr [ebp-4]
 0050EE32    call        0047981C
 0050EE37    mov         eax,dword ptr [ebp-4]
 0050EE3A    cmp         dword ptr [eax+40],0;TActionClientItem.FControl:TCustomActionControl
>0050EE3E    je          0050EE4E
 0050EE40    mov         eax,dword ptr [ebp-4]
 0050EE43    mov         eax,dword ptr [eax+40];TActionClientItem.FControl:TCustomActionControl
 0050EE46    mov         edx,dword ptr [eax]
 0050EE48    call        dword ptr [edx+0CC];TCustomActionControl.sub_005147DC
 0050EE4E    mov         eax,dword ptr [ebp-4]
 0050EE51    mov         eax,dword ptr [eax+0C];TActionClientItem.FActionBar:TCustomActionBar
 0050EE54    call        0050A550
 0050EE59    pop         ecx
 0050EE5A    pop         ecx
 0050EE5B    pop         ebp
 0050EE5C    ret
end;*}

//0050EE60
procedure TActionClientItem.SetLastSession(Value:Integer);
begin
{*
 0050EE60    push        ebp
 0050EE61    mov         ebp,esp
 0050EE63    add         esp,0FFFFFFF8
 0050EE66    mov         dword ptr [ebp-8],edx
 0050EE69    mov         dword ptr [ebp-4],eax
 0050EE6C    mov         eax,dword ptr [ebp-4]
 0050EE6F    mov         eax,dword ptr [eax+5C];TActionClientItem.LastSession:Integer
 0050EE72    cmp         eax,dword ptr [ebp-8]
>0050EE75    je          0050EE87
 0050EE77    mov         eax,dword ptr [ebp-8]
 0050EE7A    mov         edx,dword ptr [ebp-4]
 0050EE7D    mov         dword ptr [edx+5C],eax;TActionClientItem.LastSession:Integer
 0050EE80    mov         eax,dword ptr [ebp-4]
 0050EE83    mov         byte ptr [eax+3C],1;TActionClientItem.FCheckUnused:Boolean
 0050EE87    pop         ecx
 0050EE88    pop         ecx
 0050EE89    pop         ebp
 0050EE8A    ret
*}
end;

//0050EE8C
procedure TActionClientItem.SetMergeIndex(Value:TMergeRange);
begin
{*
 0050EE8C    push        ebp
 0050EE8D    mov         ebp,esp
 0050EE8F    add         esp,0FFFFFFEC
 0050EE92    mov         dword ptr [ebp-8],edx
 0050EE95    mov         dword ptr [ebp-4],eax
 0050EE98    mov         eax,dword ptr [ebp-8]
 0050EE9B    mov         edx,dword ptr [ebp-4]
 0050EE9E    cmp         eax,dword ptr [edx+4C];TActionClientItem.MergeIndex:TMergeRange
>0050EEA1    ja          0050EECD
 0050EEA3    mov         eax,dword ptr [ebp-4]
 0050EEA6    call        TCollectionItem.GetIndex
 0050EEAB    test        eax,eax
>0050EEAD    je          0050EECD
 0050EEAF    mov         eax,dword ptr [ebp-4]
 0050EEB2    call        TCollectionItem.GetIndex
 0050EEB7    dec         eax
 0050EEB8    push        eax
 0050EEB9    mov         eax,dword ptr [ebp-4]
 0050EEBC    call        0050E760
 0050EEC1    pop         edx
 0050EEC2    call        0050D884
 0050EEC7    cmp         dword ptr [eax+4C],0
>0050EECB    jne         0050EF48
 0050EECD    mov         eax,dword ptr [ebp-4]
 0050EED0    call        TCollectionItem.GetIndex
 0050EED5    inc         eax
 0050EED6    push        eax
 0050EED7    mov         eax,dword ptr [ebp-4]
 0050EEDA    call        0050E760
 0050EEDF    call        00479B60
 0050EEE4    dec         eax
 0050EEE5    pop         edx
 0050EEE6    sub         eax,edx
>0050EEE8    jl          0050EF3F
 0050EEEA    inc         eax
 0050EEEB    mov         dword ptr [ebp-10],eax
 0050EEEE    mov         dword ptr [ebp-0C],edx
 0050EEF1    mov         eax,dword ptr [ebp-4]
 0050EEF4    call        0050E760
 0050EEF9    mov         edx,dword ptr [ebp-0C]
 0050EEFC    call        0050D884
 0050EF01    mov         dword ptr [ebp-14],eax
 0050EF04    mov         eax,dword ptr [ebp-4]
 0050EF07    mov         eax,dword ptr [eax+4C];TActionClientItem.MergeIndex:TMergeRange
 0050EF0A    mov         edx,dword ptr [ebp-14]
 0050EF0D    cmp         eax,dword ptr [edx+4C]
>0050EF10    jne         0050EF1D
 0050EF12    mov         eax,dword ptr [ebp-8]
 0050EF15    mov         edx,dword ptr [ebp-14]
 0050EF18    mov         dword ptr [edx+4C],eax
>0050EF1B    jmp         0050EF37
 0050EF1D    mov         eax,dword ptr [ebp-4]
 0050EF20    mov         eax,dword ptr [eax+4C];TActionClientItem.MergeIndex:TMergeRange
 0050EF23    mov         edx,dword ptr [ebp-14]
 0050EF26    sub         eax,dword ptr [edx+4C]
 0050EF29    cdq
 0050EF2A    xor         eax,edx
 0050EF2C    sub         eax,edx
 0050EF2E    add         eax,dword ptr [ebp-8]
 0050EF31    mov         edx,dword ptr [ebp-14]
 0050EF34    mov         dword ptr [edx+4C],eax
 0050EF37    inc         dword ptr [ebp-0C]
 0050EF3A    dec         dword ptr [ebp-10]
>0050EF3D    jne         0050EEF1
 0050EF3F    mov         eax,dword ptr [ebp-8]
 0050EF42    mov         edx,dword ptr [ebp-4]
 0050EF45    mov         dword ptr [edx+4C],eax;TActionClientItem.MergeIndex:TMergeRange
 0050EF48    mov         esp,ebp
 0050EF4A    pop         ebp
 0050EF4B    ret
*}
end;

//0050EF4C
procedure TActionClientItem.SetShortCut(Value:TShortCut);
begin
{*
 0050EF4C    push        ebp
 0050EF4D    mov         ebp,esp
 0050EF4F    add         esp,0FFFFFFF4
 0050EF52    xor         ecx,ecx
 0050EF54    mov         dword ptr [ebp-0C],ecx
 0050EF57    mov         word ptr [ebp-6],dx
 0050EF5B    mov         dword ptr [ebp-4],eax
 0050EF5E    xor         eax,eax
 0050EF60    push        ebp
 0050EF61    push        50EFBC
 0050EF66    push        dword ptr fs:[eax]
 0050EF69    mov         dword ptr fs:[eax],esp
 0050EF6C    mov         eax,dword ptr [ebp-4]
 0050EF6F    mov         ax,word ptr [eax+48];TActionClientItem.ShortCut:TShortCut
 0050EF73    cmp         ax,word ptr [ebp-6]
>0050EF77    je          0050EFA6
 0050EF79    mov         ax,word ptr [ebp-6]
 0050EF7D    mov         edx,dword ptr [ebp-4]
 0050EF80    mov         word ptr [edx+48],ax;TActionClientItem.ShortCut:TShortCut
 0050EF84    lea         edx,[ebp-0C]
 0050EF87    mov         ax,word ptr [ebp-6]
 0050EF8B    call        004DF13C
 0050EF90    mov         edx,dword ptr [ebp-0C]
 0050EF93    mov         eax,dword ptr [ebp-4]
 0050EF96    add         eax,54;TActionClientItem.FShortCutText:String
 0050EF99    call        @LStrAsg
 0050EF9E    mov         eax,dword ptr [ebp-4]
 0050EFA1    mov         edx,dword ptr [eax]
 0050EFA3    call        dword ptr [edx+30];TActionClientItem.sub_0050EA64
 0050EFA6    xor         eax,eax
 0050EFA8    pop         edx
 0050EFA9    pop         ecx
 0050EFAA    pop         ecx
 0050EFAB    mov         dword ptr fs:[eax],edx
 0050EFAE    push        50EFC3
 0050EFB3    lea         eax,[ebp-0C]
 0050EFB6    call        @LStrClr
 0050EFBB    ret
>0050EFBC    jmp         @HandleFinally
>0050EFC1    jmp         0050EFB3
 0050EFC3    mov         esp,ebp
 0050EFC5    pop         ebp
 0050EFC6    ret
*}
end;

//0050EFC8
procedure TActionClientItem.SetShowCaption(Value:Boolean);
begin
{*
 0050EFC8    push        ebp
 0050EFC9    mov         ebp,esp
 0050EFCB    add         esp,0FFFFFFF8
 0050EFCE    mov         byte ptr [ebp-5],dl
 0050EFD1    mov         dword ptr [ebp-4],eax
 0050EFD4    mov         eax,dword ptr [ebp-4]
 0050EFD7    mov         al,byte ptr [eax+51];TActionClientItem.ShowCaption:Boolean
 0050EFDA    cmp         al,byte ptr [ebp-5]
>0050EFDD    je          0050F03B
 0050EFDF    mov         eax,dword ptr [ebp-4]
 0050EFE2    call        0050E760
 0050EFE7    call        0050BE18
 0050EFEC    test        byte ptr [eax+1C],1
>0050EFF0    jne         0050F02A
 0050EFF2    mov         eax,dword ptr [ebp-4]
 0050EFF5    call        0050E94C
 0050EFFA    test        al,al
>0050EFFC    jne         0050F02A
 0050EFFE    cmp         byte ptr [ebp-5],0
>0050F002    jne         0050F020
 0050F004    mov         eax,dword ptr [ebp-4]
 0050F007    cmp         dword ptr [eax+40],0;TActionClientItem.FControl:TCustomActionControl
>0050F00B    je          0050F01C
 0050F00D    mov         eax,dword ptr [ebp-4]
 0050F010    mov         eax,dword ptr [eax+40];TActionClientItem.FControl:TCustomActionControl
 0050F013    call        00483864
 0050F018    test        eax,eax
>0050F01A    je          0050F020
 0050F01C    xor         eax,eax
>0050F01E    jmp         0050F022
 0050F020    mov         al,1
 0050F022    mov         edx,dword ptr [ebp-4]
 0050F025    mov         byte ptr [edx+51],al;TActionClientItem.ShowCaption:Boolean
>0050F028    jmp         0050F033
 0050F02A    mov         al,byte ptr [ebp-5]
 0050F02D    mov         edx,dword ptr [ebp-4]
 0050F030    mov         byte ptr [edx+51],al;TActionClientItem.ShowCaption:Boolean
 0050F033    mov         eax,dword ptr [ebp-4]
 0050F036    mov         edx,dword ptr [eax]
 0050F038    call        dword ptr [edx+30];TActionClientItem.sub_0050EA64
 0050F03B    pop         ecx
 0050F03C    pop         ecx
 0050F03D    pop         ebp
 0050F03E    ret
*}
end;

//0050F040
procedure TActionClientItem.SetShowShortCut(Value:Boolean);
begin
{*
 0050F040    push        ebp
 0050F041    mov         ebp,esp
 0050F043    add         esp,0FFFFFFF8
 0050F046    mov         byte ptr [ebp-5],dl
 0050F049    mov         dword ptr [ebp-4],eax
 0050F04C    mov         eax,dword ptr [ebp-4]
 0050F04F    mov         al,byte ptr [eax+52];TActionClientItem.ShowShortCut:Boolean
 0050F052    cmp         al,byte ptr [ebp-5]
>0050F055    je          0050F085
 0050F057    mov         al,byte ptr [ebp-5]
 0050F05A    mov         edx,dword ptr [ebp-4]
 0050F05D    mov         byte ptr [edx+52],al;TActionClientItem.ShowShortCut:Boolean
 0050F060    mov         eax,dword ptr [ebp-4]
 0050F063    cmp         dword ptr [eax+40],0;TActionClientItem.FControl:TCustomActionControl
>0050F067    je          0050F085
 0050F069    mov         eax,dword ptr [ebp-4]
 0050F06C    mov         eax,dword ptr [eax+40];TActionClientItem.FControl:TCustomActionControl
 0050F06F    mov         edx,dword ptr [eax]
 0050F071    call        dword ptr [edx+0DC];TCustomActionControl.sub_00515568
 0050F077    mov         eax,dword ptr [ebp-4]
 0050F07A    mov         eax,dword ptr [eax+40];TActionClientItem.FControl:TCustomActionControl
 0050F07D    mov         eax,dword ptr [eax+30];TCustomActionControl.FParent:TWinControl
 0050F080    call        004CF09C
 0050F085    pop         ecx
 0050F086    pop         ecx
 0050F087    pop         ebp
 0050F088    ret
*}
end;

//0050F08C
procedure TActionClientItem.SetUsageCount(Value:Integer);
begin
{*
 0050F08C    push        ebp
 0050F08D    mov         ebp,esp
 0050F08F    add         esp,0FFFFFFF8
 0050F092    mov         dword ptr [ebp-8],edx
 0050F095    mov         dword ptr [ebp-4],eax
 0050F098    cmp         dword ptr [ebp-8],7FFFFFFF
>0050F09F    jne         0050F0AB
 0050F0A1    mov         eax,dword ptr [ebp-4]
 0050F0A4    xor         edx,edx
 0050F0A6    mov         dword ptr [eax+44],edx;TActionClientItem.UsageCount:Integer
>0050F0A9    jmp         0050F0B4
 0050F0AB    mov         eax,dword ptr [ebp-8]
 0050F0AE    mov         edx,dword ptr [ebp-4]
 0050F0B1    mov         dword ptr [edx+44],eax;TActionClientItem.UsageCount:Integer
 0050F0B4    mov         eax,dword ptr [ebp-4]
 0050F0B7    mov         byte ptr [eax+3C],1;TActionClientItem.FCheckUnused:Boolean
 0050F0BB    mov         eax,dword ptr [ebp-4]
 0050F0BE    cmp         dword ptr [eax+40],0;TActionClientItem.FControl:TCustomActionControl
>0050F0C2    je          0050F0CF
 0050F0C4    mov         eax,dword ptr [ebp-4]
 0050F0C7    mov         eax,dword ptr [eax+40];TActionClientItem.FControl:TCustomActionControl
 0050F0CA    mov         edx,dword ptr [eax]
 0050F0CC    call        dword ptr [edx+7C];TCustomActionControl.sub_004CB6E8
 0050F0CF    pop         ecx
 0050F0D0    pop         ecx
 0050F0D1    pop         ebp
 0050F0D2    ret
*}
end;

//0050F0D4
{*procedure sub_0050F0D4(?:?);
begin
 0050F0D4    push        ebp
 0050F0D5    mov         ebp,esp
 0050F0D7    add         esp,0FFFFFFF8
 0050F0DA    mov         byte ptr [ebp-5],dl
 0050F0DD    mov         dword ptr [ebp-4],eax
 0050F0E0    mov         eax,dword ptr [ebp-4]
 0050F0E3    mov         al,byte ptr [eax+30];TActionClientItem.Visible:Boolean
 0050F0E6    cmp         al,byte ptr [ebp-5]
>0050F0E9    jne         0050F10A
 0050F0EB    mov         eax,dword ptr [ebp-4]
 0050F0EE    cmp         dword ptr [eax+40],0;TActionClientItem.FControl:TCustomActionControl
>0050F0F2    je          0050F1A1
 0050F0F8    mov         eax,dword ptr [ebp-4]
 0050F0FB    mov         eax,dword ptr [eax+40];TActionClientItem.FControl:TCustomActionControl
 0050F0FE    mov         al,byte ptr [eax+57];TCustomActionControl.FVisible:Boolean
 0050F101    cmp         al,byte ptr [ebp-5]
>0050F104    je          0050F1A1
 0050F10A    mov         al,byte ptr [ebp-5]
 0050F10D    mov         edx,dword ptr [ebp-4]
 0050F110    mov         byte ptr [edx+30],al;TActionClientItem.Visible:Boolean
 0050F113    mov         eax,dword ptr [ebp-4]
 0050F116    cmp         dword ptr [eax+40],0;TActionClientItem.FControl:TCustomActionControl
>0050F11A    je          0050F13B
 0050F11C    mov         eax,dword ptr [ebp-4]
 0050F11F    mov         eax,dword ptr [eax+40];TActionClientItem.FControl:TCustomActionControl
 0050F122    mov         al,byte ptr [eax+57];TCustomActionControl.FVisible:Boolean
 0050F125    cmp         al,byte ptr [ebp-5]
>0050F128    je          0050F13B
 0050F12A    mov         eax,dword ptr [ebp-4]
 0050F12D    mov         dl,byte ptr [eax+30];TActionClientItem.Visible:Boolean
 0050F130    mov         eax,dword ptr [ebp-4]
 0050F133    mov         eax,dword ptr [eax+40];TActionClientItem.FControl:TCustomActionControl
 0050F136    call        TControl.SetVisible
 0050F13B    mov         eax,dword ptr [ebp-4]
 0050F13E    cmp         dword ptr [eax+0C],0;TActionClientItem.FActionBar:TCustomActionBar
>0050F142    je          0050F1A1
 0050F144    mov         eax,dword ptr [ebp-4]
 0050F147    mov         eax,dword ptr [eax+0C];TActionClientItem.FActionBar:TCustomActionBar
 0050F14A    mov         al,byte ptr [eax+57];TCustomActionBar.FVisible:Boolean
 0050F14D    cmp         al,byte ptr [ebp-5]
>0050F150    je          0050F18D
 0050F152    mov         eax,dword ptr [ebp-4]
 0050F155    mov         eax,dword ptr [eax+0C];TActionClientItem.FActionBar:TCustomActionBar
 0050F158    mov         eax,dword ptr [eax+30];TCustomActionBar.FParent:TWinControl
 0050F15B    mov         edx,dword ptr ds:[50A1B0];TXToolDockForm
 0050F161    call        @IsClass
 0050F166    test        al,al
>0050F168    je          0050F17C
 0050F16A    mov         eax,dword ptr [ebp-4]
 0050F16D    mov         eax,dword ptr [eax+0C];TActionClientItem.FActionBar:TCustomActionBar
 0050F170    mov         eax,dword ptr [eax+30];TCustomActionBar.FParent:TWinControl
 0050F173    xor         edx,edx
 0050F175    call        TControl.SetVisible
>0050F17A    jmp         0050F18D
 0050F17C    mov         eax,dword ptr [ebp-4]
 0050F17F    mov         dl,byte ptr [eax+30];TActionClientItem.Visible:Boolean
 0050F182    mov         eax,dword ptr [ebp-4]
 0050F185    mov         eax,dword ptr [eax+0C];TActionClientItem.FActionBar:TCustomActionBar
 0050F188    call        TControl.SetVisible
 0050F18D    mov         eax,dword ptr [ebp-4]
 0050F190    mov         eax,dword ptr [eax+0C];TActionClientItem.FActionBar:TCustomActionBar
 0050F193    test        byte ptr [eax+1C],10;TCustomActionBar.FComponentState:TComponentState
>0050F197    jne         0050F1A1
 0050F199    mov         eax,dword ptr [ebp-4]
 0050F19C    mov         edx,dword ptr [eax]
 0050F19E    call        dword ptr [edx+30];TActionClientItem.sub_0050EA64
 0050F1A1    pop         ecx
 0050F1A2    pop         ecx
 0050F1A3    pop         ebp
 0050F1A4    ret
end;*}

//0050F1A8
{*procedure sub_0050F1A8(?:?);
begin
 0050F1A8    push        ebp
 0050F1A9    mov         ebp,esp
 0050F1AB    add         esp,0FFFFFFF8
 0050F1AE    mov         byte ptr [ebp-5],dl
 0050F1B1    mov         dword ptr [ebp-4],eax
 0050F1B4    mov         dl,byte ptr [ebp-5]
 0050F1B7    mov         eax,dword ptr [ebp-4]
 0050F1BA    call        TActionClient.SetChangesAllowed
 0050F1BF    mov         eax,dword ptr [ebp-4]
 0050F1C2    call        0050CBCC
 0050F1C7    mov         edx,dword ptr ds:[509710];TActionClientItem
 0050F1CD    call        @IsClass
 0050F1D2    test        al,al
>0050F1D4    je          0050F1FD
 0050F1D6    mov         eax,dword ptr [ebp-4]
 0050F1D9    call        0050E760
 0050F1DE    mov         eax,dword ptr [eax+20]
 0050F1E1    mov         al,byte ptr [eax+31]
 0050F1E4    mov         edx,dword ptr [ebp-4]
 0050F1E7    cmp         al,byte ptr [edx+31];TActionClientItem.ChangesAllowed:TChangesAllowedSet
>0050F1EA    jbe         0050F1FD
 0050F1EC    mov         eax,dword ptr [ebp-4]
 0050F1EF    call        0050CBCC
 0050F1F4    mov         edx,dword ptr [ebp-4]
 0050F1F7    mov         dl,byte ptr [edx+31];TActionClientItem.ChangesAllowed:TChangesAllowedSet
 0050F1FA    mov         byte ptr [eax+31],dl
 0050F1FD    pop         ecx
 0050F1FE    pop         ecx
 0050F1FF    pop         ebp
 0050F200    ret
end;*}

//0050F204
procedure TActionClientItem.SetShowGlyph(Value:Boolean);
begin
{*
 0050F204    push        ebp
 0050F205    mov         ebp,esp
 0050F207    add         esp,0FFFFFFF8
 0050F20A    mov         byte ptr [ebp-5],dl
 0050F20D    mov         dword ptr [ebp-4],eax
 0050F210    mov         eax,dword ptr [ebp-4]
 0050F213    mov         al,byte ptr [eax+61];TActionClientItem.ShowGlyph:Boolean
 0050F216    cmp         al,byte ptr [ebp-5]
>0050F219    je          0050F23B
 0050F21B    mov         al,byte ptr [ebp-5]
 0050F21E    mov         edx,dword ptr [ebp-4]
 0050F221    mov         byte ptr [edx+61],al;TActionClientItem.ShowGlyph:Boolean
 0050F224    mov         eax,dword ptr [ebp-4]
 0050F227    cmp         dword ptr [eax+40],0;TActionClientItem.FControl:TCustomActionControl
>0050F22B    je          0050F23B
 0050F22D    mov         eax,dword ptr [ebp-4]
 0050F230    mov         eax,dword ptr [eax+40];TActionClientItem.FControl:TCustomActionControl
 0050F233    mov         edx,dword ptr [eax]
 0050F235    call        dword ptr [edx+0DC];TCustomActionControl.sub_00515568
 0050F23B    pop         ecx
 0050F23C    pop         ecx
 0050F23D    pop         ebp
 0050F23E    ret
*}
end;

//0050F240
{*procedure sub_0050F240(?:?);
begin
 0050F240    push        ebp
 0050F241    mov         ebp,esp
 0050F243    add         esp,0FFFFFFF8
 0050F246    push        esi
 0050F247    mov         dword ptr [ebp-8],edx
 0050F24A    mov         dword ptr [ebp-4],eax
 0050F24D    mov         eax,dword ptr [ebp-4]
 0050F250    cmp         dword ptr [eax+40],0;TActionClientItem.FControl:TCustomActionControl
>0050F254    je          0050F279
 0050F256    mov         eax,dword ptr [ebp-4]
 0050F259    add         eax,40;TActionClientItem.FControl:TCustomActionControl
 0050F25C    call        FreeAndNil
 0050F261    mov         eax,dword ptr [ebp-4]
 0050F264    cmp         dword ptr [eax+0C],0;TActionClientItem.FActionBar:TCustomActionBar
>0050F268    je          0050F279
 0050F26A    mov         eax,dword ptr [ebp-4]
 0050F26D    mov         eax,dword ptr [eax+0C];TActionClientItem.FActionBar:TCustomActionBar
 0050F270    mov         si,0FFCF
 0050F274    call        @CallDynaInst;TControl.sub_004C9EFC
 0050F279    mov         edx,dword ptr [ebp-8]
 0050F27C    mov         eax,dword ptr [ebp-4]
 0050F27F    call        004797BC
 0050F284    pop         esi
 0050F285    pop         ecx
 0050F286    pop         ecx
 0050F287    pop         ebp
 0050F288    ret
end;*}

//0050F28C
{*function sub_0050F28C(?:TActionClientItem):?;
begin
 0050F28C    push        ebp
 0050F28D    mov         ebp,esp
 0050F28F    add         esp,0FFFFFFEC
 0050F292    push        ebx
 0050F293    mov         dword ptr [ebp-4],eax
 0050F296    mov         eax,dword ptr [ebp-4]
 0050F299    mov         al,byte ptr [eax+60]
 0050F29C    mov         byte ptr [ebp-5],al
 0050F29F    mov         eax,dword ptr [ebp-4]
 0050F2A2    cmp         byte ptr [eax+3C],0
>0050F2A6    je          0050F42D
 0050F2AC    mov         eax,dword ptr [ebp-4]
 0050F2AF    call        0050E760
 0050F2B4    cmp         byte ptr [eax+2A],0
>0050F2B8    jne         0050F2C3
 0050F2BA    mov         byte ptr [ebp-5],0
>0050F2BE    jmp         0050F42D
 0050F2C3    mov         eax,dword ptr [ebp-4]
 0050F2C6    call        0050E760
 0050F2CB    call        0050BE18
 0050F2D0    mov         dword ptr [ebp-10],eax
 0050F2D3    mov         eax,dword ptr [ebp-4]
 0050F2D6    cmp         byte ptr [eax+50],0
>0050F2DA    je          0050F3E9
 0050F2E0    mov         eax,dword ptr [ebp-4]
 0050F2E3    call        TCollectionItem.GetIndex
 0050F2E8    dec         eax
 0050F2E9    cmp         eax,0
>0050F2EC    jl          0050F351
 0050F2EE    mov         dword ptr [ebp-0C],eax
 0050F2F1    mov         eax,dword ptr [ebp-4]
 0050F2F4    call        TCollectionItem.GetIndex
 0050F2F9    test        eax,eax
>0050F2FB    jle         0050F348
 0050F2FD    mov         eax,dword ptr [ebp-4]
 0050F300    call        TCollectionItem.GetIndex
 0050F305    dec         eax
 0050F306    push        eax
 0050F307    mov         eax,dword ptr [ebp-4]
 0050F30A    call        0050E760
 0050F30F    pop         edx
 0050F310    call        0050D884
 0050F315    cmp         byte ptr [eax+50],0
>0050F319    jne         0050F351
 0050F31B    mov         eax,dword ptr [ebp-4]
 0050F31E    call        TCollectionItem.GetIndex
 0050F323    dec         eax
 0050F324    push        eax
 0050F325    mov         eax,dword ptr [ebp-4]
 0050F328    call        0050E760
 0050F32D    pop         edx
 0050F32E    call        0050D884
 0050F333    mov         edx,eax
 0050F335    mov         eax,dword ptr [ebp-10]
 0050F338    mov         ecx,dword ptr [eax]
 0050F33A    call        dword ptr [ecx+38]
 0050F33D    xor         al,1
 0050F33F    mov         byte ptr [ebp-5],al
 0050F342    cmp         byte ptr [ebp-5],0
>0050F346    jne         0050F351
 0050F348    dec         dword ptr [ebp-0C]
 0050F34B    cmp         dword ptr [ebp-0C],0FFFFFFFF
>0050F34F    jne         0050F2F1
 0050F351    cmp         byte ptr [ebp-5],0
>0050F355    je          0050F424
 0050F35B    mov         eax,dword ptr [ebp-4]
 0050F35E    mov         eax,dword ptr [eax+4]
 0050F361    call        00479B60
 0050F366    dec         eax
 0050F367    test        eax,eax
>0050F369    jl          0050F424
 0050F36F    inc         eax
 0050F370    mov         dword ptr [ebp-14],eax
 0050F373    mov         dword ptr [ebp-0C],0
 0050F37A    mov         eax,dword ptr [ebp-4]
 0050F37D    call        TCollectionItem.GetIndex
 0050F382    mov         ebx,eax
 0050F384    mov         eax,dword ptr [ebp-4]
 0050F387    mov         eax,dword ptr [eax+4]
 0050F38A    call        00479B60
 0050F38F    dec         eax
 0050F390    cmp         ebx,eax
>0050F392    jge         0050F3DF
 0050F394    mov         eax,dword ptr [ebp-4]
 0050F397    call        TCollectionItem.GetIndex
 0050F39C    inc         eax
 0050F39D    push        eax
 0050F39E    mov         eax,dword ptr [ebp-4]
 0050F3A1    call        0050E760
 0050F3A6    pop         edx
 0050F3A7    call        0050D884
 0050F3AC    cmp         byte ptr [eax+50],0
>0050F3B0    jne         0050F424
 0050F3B2    mov         eax,dword ptr [ebp-4]
 0050F3B5    call        TCollectionItem.GetIndex
 0050F3BA    inc         eax
 0050F3BB    push        eax
 0050F3BC    mov         eax,dword ptr [ebp-4]
 0050F3BF    call        0050E760
 0050F3C4    pop         edx
 0050F3C5    call        0050D884
 0050F3CA    mov         edx,eax
 0050F3CC    mov         eax,dword ptr [ebp-10]
 0050F3CF    mov         ecx,dword ptr [eax]
 0050F3D1    call        dword ptr [ecx+38]
 0050F3D4    xor         al,1
 0050F3D6    mov         byte ptr [ebp-5],al
 0050F3D9    cmp         byte ptr [ebp-5],0
>0050F3DD    jne         0050F424
 0050F3DF    inc         dword ptr [ebp-0C]
 0050F3E2    dec         dword ptr [ebp-14]
>0050F3E5    jne         0050F37A
>0050F3E7    jmp         0050F424
 0050F3E9    mov         edx,dword ptr [ebp-4]
 0050F3EC    mov         eax,dword ptr [ebp-10]
 0050F3EF    mov         ecx,dword ptr [eax]
 0050F3F1    call        dword ptr [ecx+38]
 0050F3F4    xor         al,1
 0050F3F6    mov         byte ptr [ebp-5],al
 0050F3F9    cmp         byte ptr [ebp-5],0
>0050F3FD    je          0050F41D
 0050F3FF    mov         eax,dword ptr [ebp-4]
 0050F402    call        TActionClient.GetItems
 0050F407    call        00479B60
 0050F40C    test        eax,eax
>0050F40E    jle         0050F41D
 0050F410    mov         eax,dword ptr [ebp-4]
 0050F413    call        0050CD20
 0050F418    xor         al,1
 0050F41A    mov         byte ptr [ebp-5],al
 0050F41D    mov         eax,dword ptr [ebp-4]
 0050F420    mov         byte ptr [eax+3C],0
 0050F424    mov         al,byte ptr [ebp-5]
 0050F427    mov         edx,dword ptr [ebp-4]
 0050F42A    mov         byte ptr [edx+60],al
 0050F42D    mov         al,byte ptr [ebp-5]
 0050F430    pop         ebx
 0050F431    mov         esp,ebp
 0050F433    pop         ebp
 0050F434    ret
end;*}

//0050F438
function TActionClientItem.IsStoredHelpContext(Value:THelpContext):Boolean;
begin
{*
 0050F438    push        ebp
 0050F439    mov         ebp,esp
 0050F43B    add         esp,0FFFFFFF8
 0050F43E    mov         dword ptr [ebp-4],eax
 0050F441    mov         eax,dword ptr [ebp-4]
 0050F444    cmp         dword ptr [eax+38],0;TActionClientItem.FActionLink:TActionClientLink
>0050F448    je          0050F45D
 0050F44A    mov         eax,dword ptr [ebp-4]
 0050F44D    mov         eax,dword ptr [eax+38];TActionClientItem.FActionLink:TActionClientLink
 0050F450    mov         edx,dword ptr [eax]
 0050F452    call        dword ptr [edx+30];TActionClientLink.sub_0050DF78
 0050F455    test        al,al
>0050F457    je          0050F45D
 0050F459    xor         eax,eax
>0050F45B    jmp         0050F45F
 0050F45D    mov         al,1
 0050F45F    mov         byte ptr [ebp-5],al
 0050F462    mov         al,byte ptr [ebp-5]
 0050F465    pop         ecx
 0050F466    pop         ecx
 0050F467    pop         ebp
 0050F468    ret
*}
end;

//0050F46C
destructor TActionDragObject.Destroy;
begin
{*
 0050F46C    push        ebp
 0050F46D    mov         ebp,esp
 0050F46F    add         esp,0FFFFFFF8
 0050F472    call        @BeforeDestruction
 0050F477    mov         byte ptr [ebp-5],dl
 0050F47A    mov         dword ptr [ebp-4],eax
 0050F47D    mov         eax,dword ptr [ebp-4]
 0050F480    mov         eax,dword ptr [eax+40];TActionDragObject.FActions:TList
 0050F483    call        TObject.Free
 0050F488    mov         dl,byte ptr [ebp-5]
 0050F48B    and         dl,0FC
 0050F48E    mov         eax,dword ptr [ebp-4]
 0050F491    call        TObject.Destroy
 0050F496    cmp         byte ptr [ebp-5],0
>0050F49A    jle         0050F4A4
 0050F49C    mov         eax,dword ptr [ebp-4]
 0050F49F    call        @ClassDestroy
 0050F4A4    pop         ecx
 0050F4A5    pop         ecx
 0050F4A6    pop         ebp
 0050F4A7    ret
*}
end;

//0050F4A8
{*function sub_0050F4A8(?:TActionDragObject; ?:?):?;
begin
 0050F4A8    push        ebp
 0050F4A9    mov         ebp,esp
 0050F4AB    add         esp,0FFFFFFF4
 0050F4AE    mov         dword ptr [ebp-8],edx
 0050F4B1    mov         dword ptr [ebp-4],eax
 0050F4B4    mov         eax,dword ptr [ebp-4]
 0050F4B7    cmp         byte ptr [eax+44],0;TCategoryDragObject.FActionClasses:Boolean
>0050F4BB    je          0050F4DC
 0050F4BD    mov         edx,dword ptr [ebp-8]
 0050F4C0    mov         eax,dword ptr [ebp-4]
 0050F4C3    mov         eax,dword ptr [eax+40];TCategoryDragObject.FActions:TList
 0050F4C6    call        TList.Get
 0050F4CB    mov         edx,eax
 0050F4CD    mov         eax,[00541A9C];0x0 gvar_00541A9C
 0050F4D2    mov         ecx,dword ptr [eax]
 0050F4D4    call        dword ptr [ecx+0C]
 0050F4D7    mov         dword ptr [ebp-0C],eax
>0050F4DA    jmp         0050F4ED
 0050F4DC    mov         edx,dword ptr [ebp-8]
 0050F4DF    mov         eax,dword ptr [ebp-4]
 0050F4E2    mov         eax,dword ptr [eax+40];TCategoryDragObject.FActions:TList
 0050F4E5    call        TList.Get
 0050F4EA    mov         dword ptr [ebp-0C],eax
 0050F4ED    mov         eax,dword ptr [ebp-0C]
 0050F4F0    mov         esp,ebp
 0050F4F2    pop         ebp
 0050F4F3    ret
end;*}

//0050F4F4
{*function sub_0050F4F4(?:TActionDragObject):?;
begin
 0050F4F4    push        ebp
 0050F4F5    mov         ebp,esp
 0050F4F7    add         esp,0FFFFFFF8
 0050F4FA    mov         dword ptr [ebp-4],eax
 0050F4FD    mov         eax,dword ptr [ebp-4]
 0050F500    mov         eax,dword ptr [eax+40];TCategoryDragObject.FActions:TList
 0050F503    mov         eax,dword ptr [eax+8];TList.FCount:Integer
 0050F506    mov         dword ptr [ebp-8],eax
 0050F509    mov         eax,dword ptr [ebp-8]
 0050F50C    pop         ecx
 0050F50D    pop         ecx
 0050F50E    pop         ebp
 0050F50F    ret
end;*}

//0050F510
{*procedure sub_0050F510(?:?; ?:?; ?:?; ?:?);
begin
 0050F510    push        ebp
 0050F511    mov         ebp,esp
 0050F513    add         esp,0FFFFFFD4
 0050F516    mov         dword ptr [ebp-0C],ecx
 0050F519    mov         dword ptr [ebp-8],edx
 0050F51C    mov         dword ptr [ebp-4],eax
 0050F51F    mov         eax,dword ptr [ebp+0C]
 0050F522    push        eax
 0050F523    mov         al,byte ptr [ebp+8]
 0050F526    push        eax
 0050F527    mov         ecx,dword ptr [ebp-0C]
 0050F52A    mov         edx,dword ptr [ebp-8]
 0050F52D    mov         eax,dword ptr [ebp-4]
 0050F530    call        004C769C
 0050F535    mov         eax,dword ptr [ebp-4]
 0050F538    mov         eax,dword ptr [eax+40];TActionItemDragObject.......................FClientItem:TActionCl...
 0050F53B    cmp         dword ptr [eax+40],0;TActionClientItem.FControl:TCustomActionControl
>0050F53F    je          0050F5B6
 0050F541    mov         eax,dword ptr [ebp-4]
 0050F544    mov         eax,dword ptr [eax+40];TActionItemDragObject........................FClientItem:TActionC...
 0050F547    mov         eax,dword ptr [eax+40];TActionClientItem.FControl:TCustomActionControl
 0050F54A    cmp         eax,dword ptr [ebp-8]
>0050F54D    je          0050F5B6
 0050F54F    lea         ecx,[ebp-1C]
 0050F552    mov         edx,dword ptr [ebp+0C]
 0050F555    mov         eax,dword ptr [ebp-0C]
 0050F558    call        Point
 0050F55D    lea         edx,[ebp-1C]
 0050F560    lea         ecx,[ebp-14]
 0050F563    mov         eax,dword ptr [ebp-4]
 0050F566    mov         eax,dword ptr [eax+40];TActionItemDragObject.........................FClientItem:TAction...
 0050F569    mov         eax,dword ptr [eax+40];TActionClientItem.FControl:TCustomActionControl
 0050F56C    call        TControl.ScreenToClient
 0050F571    mov         eax,dword ptr [ebp-4]
 0050F574    cmp         byte ptr [eax+1C],0;TActionItemDragObject.FDropped:Boolean
>0050F578    je          0050F5AF
 0050F57A    cmp         byte ptr [ebp+8],0
>0050F57E    jne         0050F5AF
 0050F580    push        dword ptr [ebp-10]
 0050F583    push        dword ptr [ebp-14]
 0050F586    lea         edx,[ebp-2C]
 0050F589    mov         eax,dword ptr [ebp-4]
 0050F58C    mov         eax,dword ptr [eax+40];TActionItemDragObject..........................FClientItem:TActio...
 0050F58F    mov         eax,dword ptr [eax+40];TActionClientItem.FControl:TCustomActionControl
 0050F592    mov         ecx,dword ptr [eax]
 0050F594    call        dword ptr [ecx+44];TCustomActionControl.sub_004CA73C
 0050F597    lea         eax,[ebp-2C]
 0050F59A    push        eax
 0050F59B    call        user32.PtInRect
 0050F5A0    test        eax,eax
>0050F5A2    jne         0050F5AF
 0050F5A4    mov         eax,dword ptr [ebp-4]
 0050F5A7    mov         eax,dword ptr [eax+40];TActionItemDragObject...........................FClientItem:TActi...
 0050F5AA    call        TObject.Free
 0050F5AF    xor         eax,eax
 0050F5B1    call        0050A550
 0050F5B6    mov         esp,ebp
 0050F5B8    pop         ebp
 0050F5B9    ret         8
end;*}

//0050F5BC
{*procedure sub_0050F5BC(?:?; ?:?);
begin
 0050F5BC    push        ebp
 0050F5BD    mov         ebp,esp
 0050F5BF    add         esp,0FFFFFFF8
 0050F5C2    mov         dword ptr [ebp-8],edx
 0050F5C5    mov         dword ptr [ebp-4],eax
 0050F5C8    cmp         dword ptr [ebp-4],0
>0050F5CC    je          0050F612
 0050F5CE    mov         eax,dword ptr [ebp-4]
 0050F5D1    mov         edx,dword ptr ds:[4FF100];TCustomActionPopupMenu
 0050F5D7    call        @IsClass
 0050F5DC    test        al,al
>0050F5DE    je          0050F5F0
 0050F5E0    mov         eax,dword ptr [ebp-8]
 0050F5E3    mov         edx,dword ptr [eax+74]
 0050F5E6    mov         eax,dword ptr [ebp-4]
 0050F5E9    call        TPanel.SetColor
>0050F5EE    jmp         0050F5FE
 0050F5F0    mov         eax,dword ptr [ebp-8]
 0050F5F3    mov         edx,dword ptr [eax+40]
 0050F5F6    mov         eax,dword ptr [ebp-4]
 0050F5F9    call        TPanel.SetColor
 0050F5FE    mov         eax,dword ptr [ebp-4]
 0050F601    call        TWinControl.HandleAllocated
 0050F606    test        al,al
>0050F608    je          0050F612
 0050F60A    mov         eax,dword ptr [ebp-4]
 0050F60D    mov         edx,dword ptr [eax]
 0050F60F    call        dword ptr [edx+7C]
 0050F612    pop         ecx
 0050F613    pop         ecx
 0050F614    pop         ebp
 0050F615    ret
end;*}

//0050F618
{*procedure sub_0050F618(?:?; ?:?);
begin
 0050F618    push        ebp
 0050F619    mov         ebp,esp
 0050F61B    add         esp,0FFFFFFF8
 0050F61E    mov         dword ptr [ebp-8],edx
 0050F621    mov         dword ptr [ebp-4],eax
 0050F624    cmp         dword ptr [ebp-4],0
>0050F628    je          0050F64C
 0050F62A    mov         eax,dword ptr [ebp-4]
 0050F62D    mov         eax,dword ptr [eax+68]
 0050F630    mov         eax,dword ptr [eax+18]
 0050F633    mov         edx,dword ptr [ebp-8]
 0050F636    cmp         eax,dword ptr [edx+50]
>0050F639    je          0050F64C
 0050F63B    mov         eax,dword ptr [ebp-8]
 0050F63E    mov         edx,dword ptr [eax+50]
 0050F641    mov         eax,dword ptr [ebp-4]
 0050F644    mov         eax,dword ptr [eax+68]
 0050F647    call        TFont.SetColor
 0050F64C    pop         ecx
 0050F64D    pop         ecx
 0050F64E    pop         ebp
 0050F64F    ret
end;*}

//0050F650
procedure sub_0050F650(?:TCustomActionBarColorMap; ?:TCustomActionBar);
begin
{*
 0050F650    push        ebp
 0050F651    mov         ebp,esp
 0050F653    add         esp,0FFFFFFF8
 0050F656    mov         dword ptr [ebp-8],edx
 0050F659    mov         dword ptr [ebp-4],eax
 0050F65C    cmp         dword ptr [ebp-8],0
>0050F660    je          0050F6A2
 0050F662    mov         edx,dword ptr [ebp-8]
 0050F665    mov         eax,dword ptr [ebp-4]
 0050F668    mov         eax,dword ptr [eax+30]
 0050F66B    call        00478890
 0050F670    inc         eax
>0050F671    jne         0050F6A2
 0050F673    mov         edx,dword ptr [ebp-8]
 0050F676    mov         eax,dword ptr [ebp-4]
 0050F679    mov         eax,dword ptr [eax+30]
 0050F67C    call        TList.Add
 0050F681    mov         edx,dword ptr [ebp-8]
 0050F684    mov         eax,dword ptr [ebp-4]
 0050F687    call        00483020
 0050F68C    mov         edx,dword ptr [ebp-4]
 0050F68F    mov         eax,dword ptr [ebp-8]
 0050F692    call        0050F5BC
 0050F697    mov         edx,dword ptr [ebp-4]
 0050F69A    mov         eax,dword ptr [ebp-8]
 0050F69D    call        0050F618
 0050F6A2    pop         ecx
 0050F6A3    pop         ecx
 0050F6A4    pop         ebp
 0050F6A5    ret
*}
end;

//0050F6A8
constructor sub_0050F6A8;
begin
{*
 0050F6A8    push        ebp
 0050F6A9    mov         ebp,esp
 0050F6AB    add         esp,0FFFFFFF4
 0050F6AE    test        dl,dl
>0050F6B0    je          0050F6BA
 0050F6B2    add         esp,0FFFFFFF0
 0050F6B5    call        @ClassCreate
 0050F6BA    mov         dword ptr [ebp-0C],ecx
 0050F6BD    mov         byte ptr [ebp-5],dl
 0050F6C0    mov         dword ptr [ebp-4],eax
 0050F6C3    mov         ecx,dword ptr [ebp-0C]
 0050F6C6    xor         edx,edx
 0050F6C8    mov         eax,dword ptr [ebp-4]
 0050F6CB    call        00482F04
 0050F6D0    mov         dl,1
 0050F6D2    mov         eax,[004759C0];TList
 0050F6D7    call        TObject.Create;TList.Create
 0050F6DC    mov         edx,dword ptr [ebp-4]
 0050F6DF    mov         dword ptr [edx+30],eax;TCustomActionBarColorMap.FActionBars:TList
 0050F6E2    mov         eax,dword ptr [ebp-4]
 0050F6E5    mov         edx,dword ptr [eax]
 0050F6E7    call        dword ptr [edx+38];TCustomActionBarColorMap.sub_0050F978
 0050F6EA    mov         eax,dword ptr [ebp-4]
 0050F6ED    cmp         byte ptr [ebp-5],0
>0050F6F1    je          0050F702
 0050F6F3    call        @AfterConstruction
 0050F6F8    pop         dword ptr fs:[0]
 0050F6FF    add         esp,0C
 0050F702    mov         eax,dword ptr [ebp-4]
 0050F705    mov         esp,ebp
 0050F707    pop         ebp
 0050F708    ret
*}
end;

//0050F70C
destructor TCustomActionBarColorMap.Destroy;
begin
{*
 0050F70C    push        ebp
 0050F70D    mov         ebp,esp
 0050F70F    add         esp,0FFFFFFF8
 0050F712    call        @BeforeDestruction
 0050F717    mov         byte ptr [ebp-5],dl
 0050F71A    mov         dword ptr [ebp-4],eax
 0050F71D    mov         eax,dword ptr [ebp-4]
 0050F720    mov         eax,dword ptr [eax+30]
 0050F723    call        TObject.Free
 0050F728    mov         dl,byte ptr [ebp-5]
 0050F72B    and         dl,0FC
 0050F72E    mov         eax,dword ptr [ebp-4]
 0050F731    call        TComponent.Destroy
 0050F736    cmp         byte ptr [ebp-5],0
>0050F73A    jle         0050F744
 0050F73C    mov         eax,dword ptr [ebp-4]
 0050F73F    call        @ClassDestroy
 0050F744    pop         ecx
 0050F745    pop         ecx
 0050F746    pop         ebp
 0050F747    ret
*}
end;

//0050F748
{*function TXPColorMap.GetDisabledColor:?;
begin
 0050F748    push        ebp
 0050F749    mov         ebp,esp
 0050F74B    add         esp,0FFFFFFF8
 0050F74E    mov         dword ptr [ebp-4],eax
 0050F751    mov         eax,dword ptr [ebp-4]
 0050F754    mov         eax,dword ptr [eax+44];TXPColorMap.FDisabledColor:TColor
 0050F757    mov         dword ptr [ebp-8],eax
 0050F75A    mov         eax,dword ptr [ebp-4]
 0050F75D    test        byte ptr [eax+1C],10;TXPColorMap.FComponentState:TComponentState
>0050F761    jne         0050F778
 0050F763    mov         eax,dword ptr [ebp-4]
 0050F766    cmp         dword ptr [eax+44],1FFFFFFF;TXPColorMap.FDisabledColor:TColor
>0050F76D    jne         0050F778
 0050F76F    mov         eax,dword ptr [ebp-4]
 0050F772    mov         eax,dword ptr [eax+40];TXPColorMap.FColor:TColor
 0050F775    mov         dword ptr [ebp-8],eax
 0050F778    mov         eax,dword ptr [ebp-8]
 0050F77B    pop         ecx
 0050F77C    pop         ecx
 0050F77D    pop         ebp
 0050F77E    ret
end;*}

//0050F780
{*function TXPColorMap.GetUnusedColor:?;
begin
 0050F780    push        ebp
 0050F781    mov         ebp,esp
 0050F783    add         esp,0FFFFFFF8
 0050F786    mov         dword ptr [ebp-4],eax
 0050F789    mov         eax,dword ptr [ebp-4]
 0050F78C    cmp         dword ptr [eax+60],20000000;TXPColorMap.FUnusedColor:TColor
>0050F793    jne         0050F7AA
 0050F795    mov         edx,13
 0050F79A    mov         eax,dword ptr [ebp-4]
 0050F79D    mov         eax,dword ptr [eax+40];TXPColorMap.FColor:TColor
 0050F7A0    call        004F8F98
 0050F7A5    mov         dword ptr [ebp-8],eax
>0050F7A8    jmp         0050F7B3
 0050F7AA    mov         eax,dword ptr [ebp-4]
 0050F7AD    mov         eax,dword ptr [eax+60];TXPColorMap.FUnusedColor:TColor
 0050F7B0    mov         dword ptr [ebp-8],eax
 0050F7B3    mov         eax,dword ptr [ebp-8]
 0050F7B6    pop         ecx
 0050F7B7    pop         ecx
 0050F7B8    pop         ebp
 0050F7B9    ret
end;*}

//0050F7BC
{*procedure sub_0050F7BC(?:?; ?:?);
begin
 0050F7BC    push        ebp
 0050F7BD    mov         ebp,esp
 0050F7BF    add         esp,0FFFFFFF0
 0050F7C2    mov         byte ptr [ebp-9],cl
 0050F7C5    mov         dword ptr [ebp-8],edx
 0050F7C8    mov         dword ptr [ebp-4],eax
 0050F7CB    mov         cl,byte ptr [ebp-9]
 0050F7CE    mov         edx,dword ptr [ebp-8]
 0050F7D1    mov         eax,dword ptr [ebp-4]
 0050F7D4    call        00483398
 0050F7D9    mov         al,byte ptr [ebp-9]
 0050F7DC    dec         al
>0050F7DE    jne         0050F817
 0050F7E0    mov         eax,dword ptr [ebp-8]
 0050F7E3    mov         edx,dword ptr ds:[509DC8];TCustomActionBar
 0050F7E9    call        @IsClass
 0050F7EE    test        al,al
>0050F7F0    je          0050F817
 0050F7F2    mov         edx,dword ptr [ebp-8]
 0050F7F5    mov         eax,dword ptr [ebp-4]
 0050F7F8    mov         eax,dword ptr [eax+30];TCustomActionBarColorMap.FActionBars:TList
 0050F7FB    call        00478890
 0050F800    mov         dword ptr [ebp-10],eax
 0050F803    cmp         dword ptr [ebp-10],0FFFFFFFF
>0050F807    je          0050F817
 0050F809    mov         edx,dword ptr [ebp-10]
 0050F80C    mov         eax,dword ptr [ebp-4]
 0050F80F    mov         eax,dword ptr [eax+30];TCustomActionBarColorMap.FActionBars:TList
 0050F812    call        00478668
 0050F817    mov         esp,ebp
 0050F819    pop         ebp
 0050F81A    ret
end;*}

//0050F81C
procedure sub_0050F81C(?:TCustomActionBarColorMap; ?:TActionToolBar);
begin
{*
 0050F81C    push        ebp
 0050F81D    mov         ebp,esp
 0050F81F    add         esp,0FFFFFFF4
 0050F822    mov         dword ptr [ebp-8],edx
 0050F825    mov         dword ptr [ebp-4],eax
 0050F828    cmp         dword ptr [ebp-8],0
>0050F82C    je          0050F85E
 0050F82E    mov         edx,dword ptr [ebp-8]
 0050F831    mov         eax,dword ptr [ebp-4]
 0050F834    mov         eax,dword ptr [eax+30]
 0050F837    call        00478890
 0050F83C    mov         dword ptr [ebp-0C],eax
 0050F83F    cmp         dword ptr [ebp-0C],0FFFFFFFF
>0050F843    je          0050F85E
 0050F845    mov         edx,dword ptr [ebp-0C]
 0050F848    mov         eax,dword ptr [ebp-4]
 0050F84B    mov         eax,dword ptr [eax+30]
 0050F84E    call        00478668
 0050F853    mov         edx,dword ptr [ebp-8]
 0050F856    mov         eax,dword ptr [ebp-4]
 0050F859    call        00483370
 0050F85E    mov         esp,ebp
 0050F860    pop         ebp
 0050F861    ret
*}
end;

//0050F864
procedure TXPColorMap.SetColor(Value:TColor);
begin
{*
 0050F864    push        ebp
 0050F865    mov         ebp,esp
 0050F867    add         esp,0FFFFFFF8
 0050F86A    push        ebx
 0050F86B    mov         dword ptr [ebp-8],edx
 0050F86E    mov         dword ptr [ebp-4],eax
 0050F871    mov         eax,dword ptr [ebp-4]
 0050F874    mov         eax,dword ptr [eax+40];TXPColorMap.FColor:TColor
 0050F877    cmp         eax,dword ptr [ebp-8]
>0050F87A    je          0050F8F8
 0050F87C    mov         eax,dword ptr [ebp-8]
 0050F87F    mov         edx,dword ptr [ebp-4]
 0050F882    mov         dword ptr [edx+40],eax;TXPColorMap.FColor:TColor
 0050F885    mov         edx,50F5BC;sub_0050F5BC
 0050F88A    mov         ecx,dword ptr [ebp-8]
 0050F88D    mov         eax,dword ptr [ebp-4]
 0050F890    call        0050F98C
 0050F895    mov         eax,dword ptr [ebp-4]
 0050F898    cmp         dword ptr [eax+60],20000000;TXPColorMap.FUnusedColor:TColor
>0050F89F    jne         0050F8B7
 0050F8A1    mov         edx,13
 0050F8A6    mov         eax,dword ptr [ebp-4]
 0050F8A9    mov         eax,dword ptr [eax+40];TXPColorMap.FColor:TColor
 0050F8AC    call        004F8F98
 0050F8B1    mov         edx,dword ptr [ebp-4]
 0050F8B4    mov         dword ptr [edx+60],eax;TXPColorMap.FUnusedColor:TColor
 0050F8B7    mov         eax,dword ptr [ebp-4]
 0050F8BA    cmp         dword ptr [eax+48],20000000;TXPColorMap.FDisabledFontColor:TColor
>0050F8C1    jne         0050F8D9
 0050F8C3    mov         edx,0FFFFFFCE
 0050F8C8    mov         eax,dword ptr [ebp-4]
 0050F8CB    mov         eax,dword ptr [eax+40];TXPColorMap.FColor:TColor
 0050F8CE    call        004F9070
 0050F8D3    mov         edx,dword ptr [ebp-4]
 0050F8D6    mov         dword ptr [edx+48],eax;TXPColorMap.FDisabledFontColor:TColor
 0050F8D9    mov         eax,dword ptr [ebp-4]
 0050F8DC    cmp         word ptr [eax+8A],0;TXPColorMap.?f8A:word
>0050F8E4    je          0050F8F8
 0050F8E6    mov         ebx,dword ptr [ebp-4]
 0050F8E9    mov         edx,dword ptr [ebp-4]
 0050F8EC    mov         eax,dword ptr [ebx+8C];TXPColorMap.?f8C:dword
 0050F8F2    call        dword ptr [ebx+88];TXPColorMap.FOnColorChange
 0050F8F8    pop         ebx
 0050F8F9    pop         ecx
 0050F8FA    pop         ecx
 0050F8FB    pop         ebp
 0050F8FC    ret
*}
end;

//0050F900
procedure TXPColorMap.SetFontColor(Value:TColor);
begin
{*
 0050F900    push        ebp
 0050F901    mov         ebp,esp
 0050F903    add         esp,0FFFFFFF8
 0050F906    mov         dword ptr [ebp-8],edx
 0050F909    mov         dword ptr [ebp-4],eax
 0050F90C    mov         eax,dword ptr [ebp-4]
 0050F90F    mov         eax,dword ptr [eax+50];TXPColorMap.FFontColor:TColor
 0050F912    cmp         eax,dword ptr [ebp-8]
>0050F915    je          0050F974
 0050F917    mov         eax,dword ptr [ebp-8]
 0050F91A    mov         edx,dword ptr [ebp-4]
 0050F91D    mov         dword ptr [edx+50],eax;TXPColorMap.FFontColor:TColor
 0050F920    mov         eax,dword ptr [ebp-4]
 0050F923    cmp         dword ptr [eax+48],20000000;TXPColorMap.FDisabledFontColor:TColor
>0050F92A    jne         0050F942
 0050F92C    mov         edx,0FFFFFFCE
 0050F931    mov         eax,dword ptr [ebp-4]
 0050F934    mov         eax,dword ptr [eax+40];TXPColorMap.FColor:TColor
 0050F937    call        004F9070
 0050F93C    mov         edx,dword ptr [ebp-4]
 0050F93F    mov         dword ptr [edx+48],eax;TXPColorMap.FDisabledFontColor:TColor
 0050F942    mov         eax,dword ptr [ebp-4]
 0050F945    cmp         dword ptr [eax+4C],20000000;TXPColorMap.FDisabledFontShadow:TColor
>0050F94C    jne         0050F964
 0050F94E    mov         edx,13
 0050F953    mov         eax,dword ptr [ebp-4]
 0050F956    mov         eax,dword ptr [eax+40];TXPColorMap.FColor:TColor
 0050F959    call        004F8F98
 0050F95E    mov         edx,dword ptr [ebp-4]
 0050F961    mov         dword ptr [edx+4C],eax;TXPColorMap.FDisabledFontShadow:TColor
 0050F964    mov         edx,50F618;sub_0050F618
 0050F969    mov         ecx,dword ptr [ebp-8]
 0050F96C    mov         eax,dword ptr [ebp-4]
 0050F96F    call        0050F98C
 0050F974    pop         ecx
 0050F975    pop         ecx
 0050F976    pop         ebp
 0050F977    ret
*}
end;

//0050F978
procedure sub_0050F978;
begin
{*
 0050F978    push        ebp
 0050F979    mov         ebp,esp
 0050F97B    push        ecx
 0050F97C    mov         dword ptr [ebp-4],eax
 0050F97F    mov         eax,dword ptr [ebp-4]
 0050F982    xor         edx,edx
 0050F984    mov         dword ptr [eax+70],edx;TCustomActionBarColorMap.FDesignFocus:TColor
 0050F987    pop         ecx
 0050F988    pop         ebp
 0050F989    ret
*}
end;

//0050F98C
{*procedure sub_0050F98C(?:TXPColorMap; ?:?; ?:TColor);
begin
 0050F98C    push        ebp
 0050F98D    mov         ebp,esp
 0050F98F    add         esp,0FFFFFFEC
 0050F992    mov         dword ptr [ebp-14],ecx
 0050F995    mov         dword ptr [ebp-8],edx
 0050F998    mov         dword ptr [ebp-4],eax
 0050F99B    mov         eax,dword ptr [ebp-4]
 0050F99E    mov         eax,dword ptr [eax+30];TXPColorMap.FActionBars:TList
 0050F9A1    mov         eax,dword ptr [eax+8];TList.FCount:Integer
 0050F9A4    dec         eax
 0050F9A5    test        eax,eax
>0050F9A7    jl          0050F9D0
 0050F9A9    inc         eax
 0050F9AA    mov         dword ptr [ebp-10],eax
 0050F9AD    mov         dword ptr [ebp-0C],0
 0050F9B4    mov         edx,dword ptr [ebp-0C]
 0050F9B7    mov         eax,dword ptr [ebp-4]
 0050F9BA    mov         eax,dword ptr [eax+30];TXPColorMap.FActionBars:TList
 0050F9BD    call        TList.Get
 0050F9C2    mov         edx,dword ptr [ebp-4]
 0050F9C5    call        dword ptr [ebp-8]
 0050F9C8    inc         dword ptr [ebp-0C]
 0050F9CB    dec         dword ptr [ebp-10]
>0050F9CE    jne         0050F9B4
 0050F9D0    mov         esp,ebp
 0050F9D2    pop         ebp
 0050F9D3    ret
end;*}

//0050F9D4
{*procedure sub_0050F9D4(?:?);
begin
 0050F9D4    push        ebp
 0050F9D5    mov         ebp,esp
 0050F9D7    add         esp,0FFFFFFF8
 0050F9DA    mov         dword ptr [ebp-8],edx
 0050F9DD    mov         dword ptr [ebp-4],eax
 0050F9E0    mov         eax,dword ptr [ebp-8]
 0050F9E3    mov         edx,dword ptr ds:[509BB4];TCustomActionBarColorMap
 0050F9E9    call        @IsClass
 0050F9EE    test        al,al
>0050F9F0    je          0050FB24
 0050F9F6    mov         eax,dword ptr [ebp-8]
 0050F9F9    mov         eax,dword ptr [eax+34]
 0050F9FC    mov         edx,dword ptr [ebp-4]
 0050F9FF    mov         dword ptr [edx+34],eax;TCustomActionBarColorMap.FBtnSelectedColor:TColor
 0050FA02    mov         eax,dword ptr [ebp-8]
 0050FA05    mov         eax,dword ptr [eax+38]
 0050FA08    mov         edx,dword ptr [ebp-4]
 0050FA0B    mov         dword ptr [edx+38],eax;TCustomActionBarColorMap.FBtnFrameColor:TColor
 0050FA0E    mov         eax,dword ptr [ebp-8]
 0050FA11    mov         eax,dword ptr [eax+3C]
 0050FA14    mov         edx,dword ptr [ebp-4]
 0050FA17    mov         dword ptr [edx+3C],eax;TCustomActionBarColorMap.FBtnSelectedFont:TColor
 0050FA1A    mov         eax,dword ptr [ebp-8]
 0050FA1D    mov         edx,dword ptr [eax+40]
 0050FA20    mov         eax,dword ptr [ebp-4]
 0050FA23    mov         ecx,dword ptr [eax]
 0050FA25    call        dword ptr [ecx+30];TXPColorMap.SetColor
 0050FA28    mov         eax,dword ptr [ebp-8]
 0050FA2B    mov         eax,dword ptr [eax+70]
 0050FA2E    mov         edx,dword ptr [ebp-4]
 0050FA31    mov         dword ptr [edx+70],eax;TCustomActionBarColorMap.FDesignFocus:TColor
 0050FA34    mov         eax,dword ptr [ebp-8]
 0050FA37    call        TXPColorMap.GetDisabledColor
 0050FA3C    mov         edx,dword ptr [ebp-4]
 0050FA3F    mov         dword ptr [edx+44],eax;TCustomActionBarColorMap.FDisabledColor:TColor
 0050FA42    mov         eax,dword ptr [ebp-8]
 0050FA45    mov         eax,dword ptr [eax+48]
 0050FA48    mov         edx,dword ptr [ebp-4]
 0050FA4B    mov         dword ptr [edx+48],eax;TCustomActionBarColorMap.FDisabledFontColor:TColor
 0050FA4E    mov         eax,dword ptr [ebp-8]
 0050FA51    mov         eax,dword ptr [eax+4C]
 0050FA54    mov         edx,dword ptr [ebp-4]
 0050FA57    mov         dword ptr [edx+4C],eax;TCustomActionBarColorMap.FDisabledFontShadow:TColor
 0050FA5A    mov         eax,dword ptr [ebp-8]
 0050FA5D    mov         edx,dword ptr [eax+50]
 0050FA60    mov         eax,dword ptr [ebp-4]
 0050FA63    mov         ecx,dword ptr [eax]
 0050FA65    call        dword ptr [ecx+34];TXPColorMap.SetFontColor
 0050FA68    mov         eax,dword ptr [ebp-8]
 0050FA6B    mov         eax,dword ptr [eax+78]
 0050FA6E    mov         edx,dword ptr [ebp-4]
 0050FA71    mov         dword ptr [edx+78],eax;TCustomActionBarColorMap.FFrameTopLeftInner:TColor
 0050FA74    mov         eax,dword ptr [ebp-8]
 0050FA77    mov         eax,dword ptr [eax+7C]
 0050FA7A    mov         edx,dword ptr [ebp-4]
 0050FA7D    mov         dword ptr [edx+7C],eax;TCustomActionBarColorMap.FFrameTopLeftOuter:TColor
 0050FA80    mov         eax,dword ptr [ebp-8]
 0050FA83    mov         eax,dword ptr [eax+80]
 0050FA89    mov         edx,dword ptr [ebp-4]
 0050FA8C    mov         dword ptr [edx+80],eax;TCustomActionBarColorMap.FFrameBottomRightInner:TColor
 0050FA92    mov         eax,dword ptr [ebp-8]
 0050FA95    mov         eax,dword ptr [eax+84]
 0050FA9B    mov         edx,dword ptr [ebp-4]
 0050FA9E    mov         dword ptr [edx+84],eax;TCustomActionBarColorMap.FFrameBottomRightOuter:TColor
 0050FAA4    mov         eax,dword ptr [ebp-8]
 0050FAA7    mov         eax,dword ptr [eax+6C]
 0050FAAA    mov         edx,dword ptr [ebp-4]
 0050FAAD    mov         dword ptr [edx+6C],eax;TCustomActionBarColorMap.FHighlightColor:TColor
 0050FAB0    mov         eax,dword ptr [ebp-8]
 0050FAB3    mov         eax,dword ptr [eax+54]
 0050FAB6    mov         edx,dword ptr [ebp-4]
 0050FAB9    mov         dword ptr [edx+54],eax;TCustomActionBarColorMap.FHotColor:TColor
 0050FABC    mov         eax,dword ptr [ebp-8]
 0050FABF    mov         eax,dword ptr [eax+5C]
 0050FAC2    mov         edx,dword ptr [ebp-4]
 0050FAC5    mov         dword ptr [edx+5C],eax;TCustomActionBarColorMap.FHotFontColor:TColor
 0050FAC8    mov         eax,dword ptr [ebp-8]
 0050FACB    mov         eax,dword ptr [eax+74]
 0050FACE    mov         edx,dword ptr [ebp-4]
 0050FAD1    mov         dword ptr [edx+74],eax;TCustomActionBarColorMap.FMenuColor:TColor
 0050FAD4    mov         eax,dword ptr [ebp-8]
 0050FAD7    mov         eax,dword ptr [eax+68]
 0050FADA    mov         edx,dword ptr [ebp-4]
 0050FADD    mov         dword ptr [edx+68],eax;TCustomActionBarColorMap.FSelectedColor:TColor
 0050FAE0    mov         eax,dword ptr [ebp-8]
 0050FAE3    mov         eax,dword ptr [eax+64]
 0050FAE6    mov         edx,dword ptr [ebp-4]
 0050FAE9    mov         dword ptr [edx+64],eax;TCustomActionBarColorMap.FSelectedFontColor:TColor
 0050FAEC    mov         eax,dword ptr [ebp-8]
 0050FAEF    mov         eax,dword ptr [eax+58]
 0050FAF2    mov         edx,dword ptr [ebp-4]
 0050FAF5    mov         dword ptr [edx+58],eax;TCustomActionBarColorMap.FShadowColor:TColor
 0050FAF8    mov         eax,dword ptr [ebp-8]
 0050FAFB    call        TXPColorMap.GetUnusedColor
 0050FB00    mov         edx,dword ptr [ebp-4]
 0050FB03    mov         dword ptr [edx+60],eax;TCustomActionBarColorMap.FUnusedColor:TColor
 0050FB06    mov         eax,dword ptr [ebp-8]
 0050FB09    mov         edx,dword ptr [ebp-4]
 0050FB0C    mov         ecx,dword ptr [eax+88]
 0050FB12    mov         dword ptr [edx+88],ecx;TCustomActionBarColorMap.FOnColorChange:TNotifyEvent
 0050FB18    mov         ecx,dword ptr [eax+8C]
 0050FB1E    mov         dword ptr [edx+8C],ecx;TCustomActionBarColorMap.?f8C:dword
 0050FB24    pop         ecx
 0050FB25    pop         ecx
 0050FB26    pop         ebp
 0050FB27    ret
end;*}

//0050FB28
constructor TCustomActionBar.Create(AOwner:TComponent);
begin
{*
 0050FB28    push        ebp
 0050FB29    mov         ebp,esp
 0050FB2B    add         esp,0FFFFFFF4
 0050FB2E    test        dl,dl
>0050FB30    je          0050FB3A
 0050FB32    add         esp,0FFFFFFF0
 0050FB35    call        @ClassCreate
 0050FB3A    mov         dword ptr [ebp-0C],ecx
 0050FB3D    mov         byte ptr [ebp-5],dl
 0050FB40    mov         dword ptr [ebp-4],eax
 0050FB43    mov         ecx,dword ptr [ebp-0C]
 0050FB46    xor         edx,edx
 0050FB48    mov         eax,dword ptr [ebp-4]
 0050FB4B    call        TToolWindow.Create
 0050FB50    mov         eax,dword ptr [ebp-4]
 0050FB53    mov         byte ptr [eax+224],1;TCustomActionBar.FDesignable:Boolean
 0050FB5A    mov         eax,dword ptr [ebp-4]
 0050FB5D    call        00512A60
 0050FB62    mov         edx,eax
 0050FB64    mov         eax,dword ptr [ebp-4]
 0050FB67    mov         ecx,dword ptr [eax]
 0050FB69    call        dword ptr [ecx+12C];TActionToolBar.SetColorMap
 0050FB6F    mov         eax,dword ptr [ebp-4]
 0050FB72    xor         edx,edx
 0050FB74    mov         dword ptr [eax+214],edx;TCustomActionBar.FActionManager:TCustomActionManager
 0050FB7A    mov         eax,dword ptr [ebp-4]
 0050FB7D    xor         edx,edx
 0050FB7F    mov         dword ptr [eax+210],edx;TCustomActionBar.FActionClient:TActionClient
 0050FB85    mov         dl,1
 0050FB87    mov         eax,[004C4BA4];TControlCanvas
 0050FB8C    call        TControlCanvas.Create;TControlCanvas.Create
 0050FB91    mov         edx,dword ptr [ebp-4]
 0050FB94    mov         dword ptr [edx+21C],eax;TCustomActionBar.FCanvas:TCanvas
 0050FB9A    mov         eax,dword ptr [ebp-4]
 0050FB9D    mov         eax,dword ptr [eax+21C];TCustomActionBar.FCanvas:TCanvas
 0050FBA3    mov         edx,dword ptr [ebp-4]
 0050FBA6    call        004C931C
 0050FBAB    mov         eax,dword ptr [ebp-4]
 0050FBAE    mov         eax,dword ptr [eax+50];TCustomActionBar.FControlStyle:TControlStyle
 0050FBB1    or          eax,dword ptr ds:[50FC24];0xE8 gvar_0050FC24
 0050FBB7    mov         edx,dword ptr [ebp-4]
 0050FBBA    mov         dword ptr [edx+50],eax;TCustomActionBar.FControlStyle:TControlStyle
 0050FBBD    mov         edx,32
 0050FBC2    mov         eax,dword ptr [ebp-4]
 0050FBC5    call        TControl.SetHeight
 0050FBCA    mov         edx,96
 0050FBCF    mov         eax,dword ptr [ebp-4]
 0050FBD2    call        TControl.SetWidth
 0050FBD7    mov         eax,dword ptr [ebp-4]
 0050FBDA    mov         byte ptr [eax+1F8],1;TCustomActionBar.FDoubleBuffered:Boolean
 0050FBE1    mov         eax,dword ptr [ebp-4]
 0050FBE4    mov         dword ptr [eax+254],1;TCustomActionBar.FVertMargin:Integer
 0050FBEE    mov         eax,dword ptr [ebp-4]
 0050FBF1    xor         edx,edx
 0050FBF3    mov         dword ptr [eax+258],edx;TCustomActionBar.FHorzMargin:Integer
 0050FBF9    mov         eax,dword ptr [ebp-4]
 0050FBFC    mov         byte ptr [eax+218],1;TCustomActionBar.FAllowHiding:Boolean
 0050FC03    mov         eax,dword ptr [ebp-4]
 0050FC06    cmp         byte ptr [ebp-5],0
>0050FC0A    je          0050FC1B
 0050FC0C    call        @AfterConstruction
 0050FC11    pop         dword ptr fs:[0]
 0050FC18    add         esp,0C
 0050FC1B    mov         eax,dword ptr [ebp-4]
 0050FC1E    mov         esp,ebp
 0050FC20    pop         ebp
 0050FC21    ret
*}
end;

//0050FC28
destructor TCustomActionBar.Destroy;
begin
{*
 0050FC28    push        ebp
 0050FC29    mov         ebp,esp
 0050FC2B    add         esp,0FFFFFFF8
 0050FC2E    call        @BeforeDestruction
 0050FC33    mov         byte ptr [ebp-5],dl
 0050FC36    mov         dword ptr [ebp-4],eax
 0050FC39    xor         edx,edx
 0050FC3B    mov         eax,dword ptr [ebp-4]
 0050FC3E    call        TActionToolBar.SetActionManager
 0050FC43    mov         eax,dword ptr [ebp-4]
 0050FC46    mov         eax,dword ptr [eax+21C];TCustomActionBar.FCanvas:TCanvas
 0050FC4C    call        TObject.Free
 0050FC51    mov         eax,dword ptr [ebp-4]
 0050FC54    add         eax,274;TCustomActionBar.FDefaultColorMap:TCustomActionBarColorMap
 0050FC59    call        FreeAndNil
 0050FC5E    mov         dl,byte ptr [ebp-5]
 0050FC61    and         dl,0FC
 0050FC64    mov         eax,dword ptr [ebp-4]
 0050FC67    call        TWinControl.Destroy
 0050FC6C    cmp         byte ptr [ebp-5],0
>0050FC70    jle         0050FC7A
 0050FC72    mov         eax,dword ptr [ebp-4]
 0050FC75    call        @ClassDestroy
 0050FC7A    pop         ecx
 0050FC7B    pop         ecx
 0050FC7C    pop         ebp
 0050FC7D    ret
*}
end;

//0050FC80
procedure TCustomActionBar.AlignControls(AControl:TControl; var Rect:TRect);
begin
{*
 0050FC80    push        ebp
 0050FC81    mov         ebp,esp
 0050FC83    add         esp,0FFFFFFF4
 0050FC86    mov         dword ptr [ebp-0C],ecx
 0050FC89    mov         dword ptr [ebp-8],edx
 0050FC8C    mov         dword ptr [ebp-4],eax
 0050FC8F    mov         eax,dword ptr [ebp-4]
 0050FC92    mov         dword ptr [eax+24C],1;TCustomActionBar.FHRowCount:Integer
 0050FC9C    mov         eax,dword ptr [ebp-4]
 0050FC9F    mov         dword ptr [eax+250],1;TCustomActionBar.FVRowCount:Integer
 0050FCA9    mov         eax,dword ptr [ebp-4]
 0050FCAC    xor         edx,edx
 0050FCAE    mov         dword ptr [eax+26C],edx;TCustomActionBar.FWidest:Integer
 0050FCB4    mov         eax,dword ptr [ebp-4]
 0050FCB7    xor         edx,edx
 0050FCB9    mov         dword ptr [eax+268],edx;TCustomActionBar.FTallest:Integer
 0050FCBF    mov         ecx,dword ptr [ebp-0C]
 0050FCC2    mov         edx,dword ptr [ebp-8]
 0050FCC5    mov         eax,dword ptr [ebp-4]
 0050FCC8    call        TWinControl.AlignControls
 0050FCCD    mov         esp,ebp
 0050FCCF    pop         ebp
 0050FCD0    ret
*}
end;

//0050FCD4
procedure sub_0050FCD4;
begin
{*
 0050FCD4    push        ebp
 0050FCD5    mov         ebp,esp
 0050FCD7    push        ecx
 0050FCD8    mov         dword ptr [ebp-4],eax
 0050FCDB    pop         ecx
 0050FCDC    pop         ebp
 0050FCDD    ret
*}
end;

//0050FCE0
{*function sub_0050FCE0(?:TCustomActionBar; ?:?; ?:?; ?:?):?;
begin
 0050FCE0    push        ebp
 0050FCE1    mov         ebp,esp
 0050FCE3    add         esp,0FFFFFFE0
 0050FCE6    mov         dword ptr [ebp-0C],ecx
 0050FCE9    mov         dword ptr [ebp-8],edx
 0050FCEC    mov         dword ptr [ebp-4],eax
 0050FCEF    cmp         dword ptr [ebp-8],0
>0050FCF3    je          0050FDC5
 0050FCF9    mov         eax,dword ptr [ebp-8]
 0050FCFC    cmp         dword ptr [eax+16C],0
>0050FD03    je          0050FDC5
 0050FD09    mov         eax,dword ptr [ebp-8]
 0050FD0C    mov         eax,dword ptr [eax+16C]
 0050FD12    call        TCollectionItem.GetIndex
 0050FD17    mov         dword ptr [ebp-10],eax
 0050FD1A    mov         eax,dword ptr [ebp-0C]
 0050FD1D    mov         edx,dword ptr [ebp-8]
 0050FD20    cmp         eax,dword ptr [edx+40]
>0050FD23    jge         0050FD35
 0050FD25    mov         eax,dword ptr [ebp-4]
 0050FD28    mov         al,byte ptr [eax+227]
 0050FD2E    test        al,al
>0050FD30    jne         0050FD35
 0050FD32    dec         dword ptr [ebp-10]
 0050FD35    mov         eax,dword ptr [ebp+8]
 0050FD38    mov         edx,dword ptr [ebp-8]
 0050FD3B    cmp         eax,dword ptr [edx+44]
>0050FD3E    jge         0050FD50
 0050FD40    mov         eax,dword ptr [ebp-4]
 0050FD43    mov         al,byte ptr [eax+227]
 0050FD49    sub         al,2
>0050FD4B    jne         0050FD50
 0050FD4D    dec         dword ptr [ebp-10]
 0050FD50    lea         edx,[ebp-20]
 0050FD53    mov         eax,dword ptr [ebp-8]
 0050FD56    call        004CA6AC
 0050FD5B    mov         eax,dword ptr [ebp-18]
 0050FD5E    cmp         eax,dword ptr [ebp-0C]
>0050FD61    jge         0050FD73
 0050FD63    mov         eax,dword ptr [ebp-4]
 0050FD66    mov         al,byte ptr [eax+227]
 0050FD6C    test        al,al
>0050FD6E    jne         0050FD73
 0050FD70    inc         dword ptr [ebp-10]
 0050FD73    lea         edx,[ebp-20]
 0050FD76    mov         eax,dword ptr [ebp-8]
 0050FD79    call        004CA6AC
 0050FD7E    mov         eax,dword ptr [ebp-14]
 0050FD81    cmp         eax,dword ptr [ebp+8]
>0050FD84    jge         0050FD96
 0050FD86    mov         eax,dword ptr [ebp-4]
 0050FD89    mov         al,byte ptr [eax+227]
 0050FD8F    sub         al,2
>0050FD91    jne         0050FD96
 0050FD93    inc         dword ptr [ebp-10]
 0050FD96    mov         eax,dword ptr [ebp-4]
 0050FD99    call        00511668
 0050FD9E    call        00479B60
 0050FDA3    cmp         eax,dword ptr [ebp-10]
>0050FDA6    jge         0050FDB8
 0050FDA8    mov         eax,dword ptr [ebp-4]
 0050FDAB    call        00511668
 0050FDB0    call        00479B60
 0050FDB5    mov         dword ptr [ebp-10],eax
 0050FDB8    cmp         dword ptr [ebp-10],0
>0050FDBC    jge         0050FDE8
 0050FDBE    xor         eax,eax
 0050FDC0    mov         dword ptr [ebp-10],eax
>0050FDC3    jmp         0050FDE8
 0050FDC5    mov         eax,dword ptr [ebp-4]
 0050FDC8    call        005116BC
 0050FDCD    test        al,al
>0050FDCF    je          0050FDE3
 0050FDD1    mov         eax,dword ptr [ebp-4]
 0050FDD4    call        00511668
 0050FDD9    call        00479B60
 0050FDDE    mov         dword ptr [ebp-10],eax
>0050FDE1    jmp         0050FDE8
 0050FDE3    xor         eax,eax
 0050FDE5    mov         dword ptr [ebp-10],eax
 0050FDE8    mov         eax,dword ptr [ebp-10]
 0050FDEB    mov         esp,ebp
 0050FDED    pop         ebp
 0050FDEE    ret         4
end;*}

//0050FDF4
procedure sub_0050FDF4;
begin
{*
 0050FDF4    push        ebp
 0050FDF5    mov         ebp,esp
 0050FDF7    add         esp,0FFFFFFF8
 0050FDFA    mov         dword ptr [ebp-4],eax
 0050FDFD    mov         eax,dword ptr [ebp-4]
 0050FE00    cmp         dword ptr [eax+210],0;TCustomActionBar.FActionClient:TActionClient
>0050FE07    je          0050FE85
 0050FE09    mov         eax,dword ptr [ebp-4]
 0050FE0C    call        TWinControl.DisableAlign
 0050FE11    xor         eax,eax
 0050FE13    push        ebp
 0050FE14    push        50FE7E
 0050FE19    push        dword ptr fs:[eax]
 0050FE1C    mov         dword ptr fs:[eax],esp
 0050FE1F    mov         eax,dword ptr [ebp-4]
 0050FE22    mov         edx,dword ptr [eax]
 0050FE24    call        dword ptr [edx+114];TCustomActionBar.sub_00511728
 0050FE2A    dec         eax
 0050FE2B    cmp         eax,0
>0050FE2E    jl          0050FE4F
 0050FE30    mov         dword ptr [ebp-8],eax
 0050FE33    mov         edx,dword ptr [ebp-8]
 0050FE36    mov         eax,dword ptr [ebp-4]
 0050FE39    mov         ecx,dword ptr [eax]
 0050FE3B    call        dword ptr [ecx+108];TCustomActionBar.sub_00511530
 0050FE41    call        TObject.Free
 0050FE46    dec         dword ptr [ebp-8]
 0050FE49    cmp         dword ptr [ebp-8],0FFFFFFFF
>0050FE4D    jne         0050FE33
 0050FE4F    mov         eax,dword ptr [ebp-4]
 0050FE52    mov         eax,dword ptr [eax+210];TCustomActionBar.FActionClient:TActionClient
 0050FE58    call        0050CA74
 0050FE5D    mov         eax,dword ptr [ebp-4]
 0050FE60    xor         edx,edx
 0050FE62    mov         dword ptr [eax+210],edx;TCustomActionBar.FActionClient:TActionClient
 0050FE68    xor         eax,eax
 0050FE6A    pop         edx
 0050FE6B    pop         ecx
 0050FE6C    pop         ecx
 0050FE6D    mov         dword ptr fs:[eax],edx
 0050FE70    push        50FE85
 0050FE75    mov         eax,dword ptr [ebp-4]
 0050FE78    call        TWinControl.EnableAlign
 0050FE7D    ret
>0050FE7E    jmp         @HandleFinally
>0050FE83    jmp         0050FE75
 0050FE85    pop         ecx
 0050FE86    pop         ecx
 0050FE87    pop         ebp
 0050FE88    ret
*}
end;

//0050FE8C
{*procedure TCustomActionBar.CMEnabledChanged(?:?);
begin
 0050FE8C    push        ebp
 0050FE8D    mov         ebp,esp
 0050FE8F    add         esp,0FFFFFFF8
 0050FE92    mov         dword ptr [ebp-8],edx
 0050FE95    mov         dword ptr [ebp-4],eax
 0050FE98    mov         edx,dword ptr [ebp-8]
 0050FE9B    mov         eax,dword ptr [ebp-4]
 0050FE9E    call        TWinControl.CMEnabledChanged
 0050FEA3    mov         edx,dword ptr [ebp-8]
 0050FEA6    mov         eax,dword ptr [ebp-4]
 0050FEA9    call        004CF664
 0050FEAE    pop         ecx
 0050FEAF    pop         ecx
 0050FEB0    pop         ebp
 0050FEB1    ret
end;*}

//0050FEB4
{*function sub_0050FEB4(?:?):?;
begin
 0050FEB4    push        ebp
 0050FEB5    mov         ebp,esp
 0050FEB7    add         esp,0FFFFFFF0
 0050FEBA    push        esi
 0050FEBB    mov         dword ptr [ebp-8],edx
 0050FEBE    mov         dword ptr [ebp-4],eax
 0050FEC1    mov         eax,dword ptr [ebp-8]
 0050FEC4    cmp         dword ptr [eax+40],0
>0050FEC8    je          0050FEDF
 0050FECA    mov         eax,dword ptr [ebp-8]
 0050FECD    mov         eax,dword ptr [eax+40]
 0050FED0    call        TObject.Free
 0050FED5    xor         edx,edx
 0050FED7    mov         eax,dword ptr [ebp-8]
 0050FEDA    call        0050ED74
 0050FEDF    xor         eax,eax
 0050FEE1    mov         dword ptr [ebp-0C],eax
 0050FEE4    mov         edx,dword ptr [ebp-8]
 0050FEE7    mov         eax,dword ptr [ebp-4]
 0050FEEA    mov         si,0FFB3
 0050FEEE    call        @CallDynaInst;TCustomActionBar.sub_00510C18
 0050FEF3    mov         dword ptr [ebp-10],eax
 0050FEF6    cmp         dword ptr [ebp-10],0
>0050FEFA    je          0050FFB7
 0050FF00    mov         eax,dword ptr [ebp-4]
 0050FF03    call        TWinControl.DisableAlign
 0050FF08    xor         eax,eax
 0050FF0A    push        ebp
 0050FF0B    push        50FFB0
 0050FF10    push        dword ptr fs:[eax]
 0050FF13    mov         dword ptr fs:[eax],esp
 0050FF16    mov         ecx,dword ptr [ebp-4]
 0050FF19    mov         dl,1
 0050FF1B    mov         eax,dword ptr [ebp-10]
 0050FF1E    call        dword ptr [eax+2C]
 0050FF21    mov         dword ptr [ebp-0C],eax
 0050FF24    mov         eax,dword ptr [ebp-4]
 0050FF27    mov         edx,dword ptr [eax]
 0050FF29    call        dword ptr [edx+104];TCustomActionBar.sub_00512304
 0050FF2F    and         eax,7F
 0050FF32    mov         dl,byte ptr [eax+541A94]
 0050FF38    mov         eax,dword ptr [ebp-0C]
 0050FF3B    mov         ecx,dword ptr [eax]
 0050FF3D    call        dword ptr [ecx+60]
 0050FF40    mov         dl,6
 0050FF42    mov         eax,dword ptr [ebp-0C]
 0050FF45    call        TImage.SetAlign
 0050FF4A    mov         eax,dword ptr [ebp-0C]
 0050FF4D    mov         edx,dword ptr [ebp-4]
 0050FF50    mov         dword ptr [eax+168],edx
 0050FF56    mov         edx,dword ptr [ebp-4]
 0050FF59    mov         eax,dword ptr [ebp-0C]
 0050FF5C    mov         ecx,dword ptr [eax]
 0050FF5E    call        dword ptr [ecx+68]
 0050FF61    mov         eax,dword ptr [ebp-4]
 0050FF64    mov         dl,byte ptr [eax+5F];TCustomActionBar.FBiDiMode:TBiDiMode
 0050FF67    mov         eax,dword ptr [ebp-0C]
 0050FF6A    mov         ecx,dword ptr [eax]
 0050FF6C    call        dword ptr [ecx+70]
 0050FF6F    mov         edx,dword ptr [ebp-8]
 0050FF72    mov         eax,dword ptr [ebp-0C]
 0050FF75    mov         ecx,dword ptr [eax]
 0050FF77    call        dword ptr [ecx+0D0]
 0050FF7D    mov         eax,dword ptr [ebp-0C]
 0050FF80    mov         eax,dword ptr [eax+16C]
 0050FF86    mov         edx,dword ptr [ebp-0C]
 0050FF89    call        0050ED74
 0050FF8E    mov         eax,dword ptr [ebp-0C]
 0050FF91    mov         si,0FFD0
 0050FF95    call        @CallDynaInst
 0050FF9A    xor         eax,eax
 0050FF9C    pop         edx
 0050FF9D    pop         ecx
 0050FF9E    pop         ecx
 0050FF9F    mov         dword ptr fs:[eax],edx
 0050FFA2    push        50FFB7
 0050FFA7    mov         eax,dword ptr [ebp-4]
 0050FFAA    call        TWinControl.EnableAlign
 0050FFAF    ret
>0050FFB0    jmp         @HandleFinally
>0050FFB5    jmp         0050FFA7
 0050FFB7    mov         eax,dword ptr [ebp-0C]
 0050FFBA    pop         esi
 0050FFBB    mov         esp,ebp
 0050FFBD    pop         ebp
 0050FFBE    ret
end;*}

//0050FFC0
procedure sub_0050FFC0;
begin
{*
 0050FFC0    push        ebp
 0050FFC1    mov         ebp,esp
 0050FFC3    add         esp,0FFFFFFEC
 0050FFC6    mov         dword ptr [ebp-4],eax
 0050FFC9    mov         eax,dword ptr [ebp-4]
 0050FFCC    cmp         dword ptr [eax+210],0;TCustomActionBar.FActionClient:TActionClient
>0050FFD3    je          005100D5
 0050FFD9    mov         eax,dword ptr [ebp-4]
 0050FFDC    call        TWinControl.DisableAlign
 0050FFE1    xor         eax,eax
 0050FFE3    push        ebp
 0050FFE4    push        5100CE
 0050FFE9    push        dword ptr fs:[eax]
 0050FFEC    mov         dword ptr fs:[eax],esp
 0050FFEF    mov         eax,dword ptr [ebp-4]
 0050FFF2    cmp         byte ptr [eax+270],0;TCustomActionBar.FContextBar:Boolean
>0050FFF9    je          0051000E
 0050FFFB    mov         eax,dword ptr [ebp-4]
 0050FFFE    mov         eax,dword ptr [eax+210];TCustomActionBar.FActionClient:TActionClient
 00510004    call        TActionClient.GetContextItems
 00510009    mov         dword ptr [ebp-10],eax
>0051000C    jmp         0051001F
 0051000E    mov         eax,dword ptr [ebp-4]
 00510011    mov         eax,dword ptr [eax+210];TCustomActionBar.FActionClient:TActionClient
 00510017    call        TActionClient.GetItems
 0051001C    mov         dword ptr [ebp-10],eax
 0051001F    mov         eax,dword ptr [ebp-10]
 00510022    call        00479B60
 00510027    not         eax
 00510029    test        eax,eax
>0051002B    jne         00510037
 0051002D    call        @TryFinallyExit
>00510032    jmp         005100D5
 00510037    mov         eax,dword ptr [ebp-10]
 0051003A    call        00479B60
 0051003F    dec         eax
 00510040    test        eax,eax
>00510042    jl          005100B8
 00510044    inc         eax
 00510045    mov         dword ptr [ebp-14],eax
 00510048    mov         dword ptr [ebp-8],0
 0051004F    mov         edx,dword ptr [ebp-8]
 00510052    mov         eax,dword ptr [ebp-10]
 00510055    call        0050D884
 0051005A    mov         edx,eax
 0051005C    mov         eax,dword ptr [ebp-4]
 0051005F    mov         ecx,dword ptr [eax]
 00510061    call        dword ptr [ecx+0D4];TCustomActionBar.sub_0050FEB4
 00510067    mov         dword ptr [ebp-0C],eax
 0051006A    cmp         dword ptr [ebp-0C],0
>0051006E    je          005100B0
 00510070    mov         eax,dword ptr [ebp-4]
 00510073    mov         eax,dword ptr [eax+210];TCustomActionBar.FActionClient:TActionClient
 00510079    call        0050CCE0
 0051007E    test        al,al
>00510080    je          00510094
 00510082    mov         eax,dword ptr [ebp-4]
 00510085    mov         eax,dword ptr [eax+210];TCustomActionBar.FActionClient:TActionClient
 0051008B    mov         al,byte ptr [eax+14];TActionClient.BackgroundLayout:TBackgroundLayout
 0051008E    add         al,0FD
 00510090    sub         al,2
>00510092    jae         00510098
 00510094    xor         edx,edx
>00510096    jmp         0051009A
 00510098    mov         dl,1
 0051009A    mov         eax,dword ptr [ebp-0C]
 0051009D    call        005147F4
 005100A2    mov         edx,dword ptr [ebp-0C]
 005100A5    mov         eax,dword ptr [ebp-4]
 005100A8    mov         ecx,dword ptr [eax]
 005100AA    call        dword ptr [ecx+0DC];TCustomActionBar.sub_00510C68
 005100B0    inc         dword ptr [ebp-8]
 005100B3    dec         dword ptr [ebp-14]
>005100B6    jne         0051004F
 005100B8    xor         eax,eax
 005100BA    pop         edx
 005100BB    pop         ecx
 005100BC    pop         ecx
 005100BD    mov         dword ptr fs:[eax],edx
 005100C0    push        5100D5
 005100C5    mov         eax,dword ptr [ebp-4]
 005100C8    call        TWinControl.EnableAlign
 005100CD    ret
>005100CE    jmp         @HandleFinally
>005100D3    jmp         005100C5
 005100D5    mov         esp,ebp
 005100D7    pop         ebp
 005100D8    ret
*}
end;

//005100DC
{*function sub_005100DC(?:?; ?:?):?;
begin
 005100DC    push        ebp
 005100DD    mov         ebp,esp
 005100DF    add         esp,0FFFFFFF0
 005100E2    push        ebx
 005100E3    mov         dword ptr [ebp-0C],ecx
 005100E6    mov         dword ptr [ebp-8],edx
 005100E9    mov         dword ptr [ebp-4],eax
 005100EC    mov         eax,dword ptr [ebp-8]
 005100EF    mov         edx,dword ptr ds:[509FE4];TCustomActionControl
 005100F5    call        @IsClass
 005100FA    test        al,al
>005100FC    je          00510110
 005100FE    mov         eax,dword ptr [ebp-0C]
 00510101    mov         edx,dword ptr ds:[509FE4];TCustomActionControl
 00510107    call        @IsClass
 0051010C    test        al,al
>0051010E    jne         00510114
 00510110    xor         eax,eax
>00510112    jmp         00510116
 00510114    mov         al,1
 00510116    mov         byte ptr [ebp-0D],al
 00510119    cmp         byte ptr [ebp-0D],0
>0051011D    je          00510281
 00510123    mov         eax,dword ptr [ebp-8]
 00510126    cmp         dword ptr [eax+16C],0
>0051012D    je          00510161
 0051012F    mov         eax,dword ptr [ebp-0C]
 00510132    cmp         dword ptr [eax+16C],0
>00510139    je          00510161
 0051013B    mov         eax,dword ptr [ebp-8]
 0051013E    mov         eax,dword ptr [eax+16C]
 00510144    call        TCollectionItem.GetIndex
 00510149    mov         ebx,eax
 0051014B    mov         eax,dword ptr [ebp-0C]
 0051014E    mov         eax,dword ptr [eax+16C]
 00510154    call        TCollectionItem.GetIndex
 00510159    cmp         ebx,eax
 0051015B    setl        byte ptr [ebp-0D]
>0051015F    jmp         00510165
 00510161    mov         byte ptr [ebp-0D],0
 00510165    mov         eax,dword ptr [ebp-8]
 00510168    cmp         byte ptr [eax+57],0
>0051016C    je          0051018E
 0051016E    mov         eax,dword ptr [ebp-8]
 00510171    mov         eax,dword ptr [eax+4C]
 00510174    mov         edx,dword ptr [ebp-4]
 00510177    cmp         eax,dword ptr [edx+268];TCustomActionBar.FTallest:Integer
>0051017D    jle         0051018E
 0051017F    mov         eax,dword ptr [ebp-8]
 00510182    mov         eax,dword ptr [eax+4C]
 00510185    mov         edx,dword ptr [ebp-4]
 00510188    mov         dword ptr [edx+268],eax;TCustomActionBar.FTallest:Integer
 0051018E    mov         eax,dword ptr [ebp-8]
 00510191    cmp         byte ptr [eax+57],0
>00510195    je          005101B7
 00510197    mov         eax,dword ptr [ebp-8]
 0051019A    mov         eax,dword ptr [eax+48]
 0051019D    mov         edx,dword ptr [ebp-4]
 005101A0    cmp         eax,dword ptr [edx+26C];TCustomActionBar.FWidest:Integer
>005101A6    jle         005101B7
 005101A8    mov         eax,dword ptr [ebp-8]
 005101AB    mov         eax,dword ptr [eax+48]
 005101AE    mov         edx,dword ptr [ebp-4]
 005101B1    mov         dword ptr [edx+26C],eax;TCustomActionBar.FWidest:Integer
 005101B7    mov         eax,dword ptr [ebp-0C]
 005101BA    cmp         byte ptr [eax+57],0
>005101BE    je          005101E0
 005101C0    mov         eax,dword ptr [ebp-0C]
 005101C3    mov         eax,dword ptr [eax+4C]
 005101C6    mov         edx,dword ptr [ebp-4]
 005101C9    cmp         eax,dword ptr [edx+268];TCustomActionBar.FTallest:Integer
>005101CF    jle         005101E0
 005101D1    mov         eax,dword ptr [ebp-0C]
 005101D4    mov         eax,dword ptr [eax+4C]
 005101D7    mov         edx,dword ptr [ebp-4]
 005101DA    mov         dword ptr [edx+268],eax;TCustomActionBar.FTallest:Integer
 005101E0    mov         eax,dword ptr [ebp-0C]
 005101E3    cmp         byte ptr [eax+57],0
>005101E7    je          00510209
 005101E9    mov         eax,dword ptr [ebp-0C]
 005101EC    mov         eax,dword ptr [eax+48]
 005101EF    mov         edx,dword ptr [ebp-4]
 005101F2    cmp         eax,dword ptr [edx+26C];TCustomActionBar.FWidest:Integer
>005101F8    jle         00510209
 005101FA    mov         eax,dword ptr [ebp-0C]
 005101FD    mov         eax,dword ptr [eax+48]
 00510200    mov         edx,dword ptr [ebp-4]
 00510203    mov         dword ptr [edx+26C],eax;TCustomActionBar.FWidest:Integer
 00510209    mov         eax,dword ptr [ebp-4]
 0051020C    mov         edx,dword ptr [eax]
 0051020E    call        dword ptr [edx+54];TCustomActionBar.sub_004CDEBC
 00510211    test        al,al
>00510213    je          00510281
 00510215    mov         eax,dword ptr [ebp-4]
 00510218    mov         al,byte ptr [eax+227];TCustomActionBar.FOrientation:TBarOrientation
 0051021E    sub         al,2
>00510220    jb          0051024C
 00510222    sub         al,2
>00510224    jae         00510281
 00510226    mov         eax,dword ptr [ebp-4]
 00510229    mov         ecx,dword ptr [eax+254];TCustomActionBar.FVertMargin:Integer
 0051022F    add         ecx,ecx
 00510231    mov         eax,dword ptr [ebp-4]
 00510234    add         ecx,dword ptr [eax+268];TCustomActionBar.FTallest:Integer
 0051023A    mov         edx,2
 0051023F    mov         eax,dword ptr [ebp-4]
 00510242    mov         eax,dword ptr [eax+74];TCustomActionBar.FConstraints:TSizeConstraints
 00510245    call        TSizeConstraints.SetMaxHeight
>0051024A    jmp         00510281
 0051024C    mov         dl,2
 0051024E    mov         eax,dword ptr [ebp-4]
 00510251    mov         ecx,dword ptr [eax]
 00510253    call        dword ptr [ecx+0F8];TCustomActionBar.sub_00511578
 00510259    mov         ecx,eax
 0051025B    mov         eax,dword ptr [ebp-4]
 0051025E    mov         eax,dword ptr [eax+258];TCustomActionBar.FHorzMargin:Integer
 00510264    add         eax,eax
 00510266    mov         edx,dword ptr [ebp-4]
 00510269    add         eax,dword ptr [edx+26C];TCustomActionBar.FWidest:Integer
 0051026F    add         ecx,eax
 00510271    mov         edx,3
 00510276    mov         eax,dword ptr [ebp-4]
 00510279    mov         eax,dword ptr [eax+74];TCustomActionBar.FConstraints:TSizeConstraints
 0051027C    call        TSizeConstraints.SetMaxHeight
 00510281    mov         al,byte ptr [ebp-0D]
 00510284    pop         ebx
 00510285    mov         esp,ebp
 00510287    pop         ebp
 00510288    ret
end;*}

//0051028C
{*procedure sub_0051028C(?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?);
begin
 0051028C    push        ebp
 0051028D    mov         ebp,esp
 0051028F    add         esp,0FFFFFFD0
 00510292    push        ebx
 00510293    push        esi
 00510294    push        edi
 00510295    mov         esi,dword ptr [ebp+8]
 00510298    lea         edi,[ebp-20]
 0051029B    movs        dword ptr [edi],dword ptr [esi]
 0051029C    movs        dword ptr [edi],dword ptr [esi]
 0051029D    movs        dword ptr [edi],dword ptr [esi]
 0051029E    movs        dword ptr [edi],dword ptr [esi]
 0051029F    mov         dword ptr [ebp-0C],ecx
 005102A2    mov         dword ptr [ebp-8],edx
 005102A5    mov         dword ptr [ebp-4],eax
 005102A8    mov         eax,dword ptr [ebp-8]
 005102AB    mov         edx,dword ptr ds:[509FE4];TCustomActionControl
 005102B1    call        @IsClass
 005102B6    test        al,al
>005102B8    je          0051087D
 005102BE    mov         eax,dword ptr [ebp-8]
 005102C1    mov         dword ptr [ebp-10],eax
 005102C4    mov         eax,dword ptr [ebp-20]
 005102C7    cmp         dword ptr [eax+8],1
>005102CB    jne         005102EB
 005102CD    mov         eax,dword ptr [ebp-8]
 005102D0    mov         eax,dword ptr [eax+48]
 005102D3    mov         edx,dword ptr [ebp-4]
 005102D6    mov         dword ptr [edx+26C],eax;TCustomActionBar.FWidest:Integer
 005102DC    mov         eax,dword ptr [ebp-8]
 005102DF    mov         eax,dword ptr [eax+4C]
 005102E2    mov         edx,dword ptr [ebp-4]
 005102E5    mov         dword ptr [edx+268],eax;TCustomActionBar.FTallest:Integer
 005102EB    cmp         dword ptr [ebp-1C],0
>005102EF    jne         0051035B
 005102F1    mov         eax,dword ptr [ebp-4]
 005102F4    call        TControl.GetClientHeight
 005102F9    mov         edx,dword ptr [ebp-4]
 005102FC    sub         eax,dword ptr [edx+254]
 00510302    push        eax
 00510303    lea         eax,[ebp-30]
 00510306    push        eax
 00510307    mov         dl,1
 00510309    mov         eax,dword ptr [ebp-4]
 0051030C    mov         ecx,dword ptr [eax]
 0051030E    call        dword ptr [ecx+0F8];TCustomActionBar.sub_00511578
 00510314    push        eax
 00510315    mov         eax,dword ptr [ebp-4]
 00510318    call        TControl.GetClientWidth
 0051031D    mov         edx,dword ptr [ebp-4]
 00510320    sub         eax,dword ptr [edx+254]
 00510326    pop         edx
 00510327    sub         eax,edx
 00510329    push        eax
 0051032A    xor         edx,edx
 0051032C    mov         eax,dword ptr [ebp-4]
 0051032F    mov         ecx,dword ptr [eax]
 00510331    call        dword ptr [ecx+0F8];TCustomActionBar.sub_00511578
 00510337    mov         edx,dword ptr [ebp-4]
 0051033A    add         eax,dword ptr [edx+258];TCustomActionBar.FHorzMargin:Integer
 00510340    mov         edx,dword ptr [ebp-4]
 00510343    mov         edx,dword ptr [edx+254];TCustomActionBar.FVertMargin:Integer
 00510349    pop         ecx
 0051034A    call        Rect
 0051034F    mov         eax,dword ptr [ebp+0C]
 00510352    lea         esi,[ebp-30]
 00510355    mov         edi,eax
 00510357    movs        dword ptr [edi],dword ptr [esi]
 00510358    movs        dword ptr [edi],dword ptr [esi]
 00510359    movs        dword ptr [edi],dword ptr [esi]
 0051035A    movs        dword ptr [edi],dword ptr [esi]
 0051035B    mov         eax,dword ptr [ebp-4]
 0051035E    mov         al,byte ptr [eax+227];TCustomActionBar.FOrientation:TBarOrientation
 00510364    sub         al,1
>00510366    jb          00510383
>00510368    je          005104A4
 0051036E    dec         al
>00510370    je          0051061C
 00510376    dec         al
>00510378    je          00510752
>0051037E    jmp         0051087D
 00510383    mov         eax,dword ptr [ebp-4]
 00510386    mov         edx,dword ptr [eax]
 00510388    call        dword ptr [edx+54];TCustomActionBar.sub_004CDEBC
 0051038B    test        al,al
>0051038D    jne         0051039F
 0051038F    mov         eax,dword ptr [ebp-4]
 00510392    call        00512624
 00510397    test        al,al
>00510399    je          00510468
 0051039F    cmp         dword ptr [ebp-1C],0
>005103A3    je          00510468
 005103A9    mov         eax,dword ptr [ebp+0C]
 005103AC    mov         eax,dword ptr [eax+8]
 005103AF    mov         edx,dword ptr [ebp+0C]
 005103B2    sub         eax,dword ptr [edx]
 005103B4    mov         edx,dword ptr [ebp-10]
 005103B7    mov         edx,dword ptr [edx+48]
 005103BA    mov         ecx,dword ptr [ebp-4]
 005103BD    add         edx,dword ptr [ecx+258]
 005103C3    cmp         eax,edx
>005103C5    jge         00510468
 005103CB    mov         eax,dword ptr [ebp-4]
 005103CE    call        TControl.GetClientHeight
 005103D3    mov         edx,dword ptr [ebp+0C]
 005103D6    sub         eax,dword ptr [edx+4]
 005103D9    mov         edx,dword ptr [ebp-4]
 005103DC    sub         eax,dword ptr [edx+254]
 005103E2    push        eax
 005103E3    lea         eax,[ebp-30]
 005103E6    push        eax
 005103E7    mov         dl,1
 005103E9    mov         eax,dword ptr [ebp-4]
 005103EC    mov         ecx,dword ptr [eax]
 005103EE    call        dword ptr [ecx+0F8];TCustomActionBar.sub_00511578
 005103F4    push        eax
 005103F5    mov         eax,dword ptr [ebp-4]
 005103F8    call        TControl.GetClientWidth
 005103FD    mov         edx,dword ptr [ebp-4]
 00510400    sub         eax,dword ptr [edx+258]
 00510406    pop         edx
 00510407    sub         eax,edx
 00510409    push        eax
 0051040A    xor         edx,edx
 0051040C    mov         eax,dword ptr [ebp-4]
 0051040F    mov         ecx,dword ptr [eax]
 00510411    call        dword ptr [ecx+0F8];TCustomActionBar.sub_00511578
 00510417    mov         edx,dword ptr [ebp-4]
 0051041A    add         eax,dword ptr [edx+258];TCustomActionBar.FHorzMargin:Integer
 00510420    mov         edx,dword ptr [ebp-4]
 00510423    mov         edx,dword ptr [edx+254];TCustomActionBar.FVertMargin:Integer
 00510429    add         edx,edx
 0051042B    mov         ecx,dword ptr [ebp-4]
 0051042E    movzx       ecx,byte ptr [ecx+25C]
 00510435    add         edx,dword ptr [ecx*4+541AA0]
 0051043C    mov         ecx,dword ptr [ebp+0C]
 0051043F    mov         ecx,dword ptr [ecx+4]
 00510442    mov         ebx,dword ptr [ebp-4]
 00510445    add         ecx,dword ptr [ebx+268];TCustomActionBar.FTallest:Integer
 0051044B    add         edx,ecx
 0051044D    pop         ecx
 0051044E    call        Rect
 00510453    mov         eax,dword ptr [ebp+0C]
 00510456    lea         esi,[ebp-30]
 00510459    mov         edi,eax
 0051045B    movs        dword ptr [edi],dword ptr [esi]
 0051045C    movs        dword ptr [edi],dword ptr [esi]
 0051045D    movs        dword ptr [edi],dword ptr [esi]
 0051045E    movs        dword ptr [edi],dword ptr [esi]
 0051045F    mov         eax,dword ptr [ebp-4]
 00510462    inc         dword ptr [eax+250];TCustomActionBar.FVRowCount:Integer
 00510468    mov         eax,dword ptr [ebp+0C]
 0051046B    mov         eax,dword ptr [eax+4]
 0051046E    mov         edx,dword ptr [ebp+18]
 00510471    mov         dword ptr [edx],eax
 00510473    mov         eax,dword ptr [ebp+0C]
 00510476    mov         eax,dword ptr [eax]
 00510478    mov         edx,dword ptr [ebp-0C]
 0051047B    mov         dword ptr [edx],eax
 0051047D    mov         eax,dword ptr [ebp+10]
 00510480    mov         edx,dword ptr [ebp-4]
 00510483    mov         edx,dword ptr [edx+268];TCustomActionBar.FTallest:Integer
 00510489    mov         dword ptr [eax],edx
 0051048B    mov         eax,dword ptr [ebp-10]
 0051048E    mov         eax,dword ptr [eax+48]
 00510491    mov         edx,dword ptr [ebp-4]
 00510494    add         eax,dword ptr [edx+228];TCustomActionBar.FSpacing:Integer
 0051049A    mov         edx,dword ptr [ebp+0C]
 0051049D    add         dword ptr [edx],eax
>0051049F    jmp         0051087D
 005104A4    mov         eax,dword ptr [ebp-4]
 005104A7    mov         edx,dword ptr [eax]
 005104A9    call        dword ptr [edx+54];TCustomActionBar.sub_004CDEBC
 005104AC    test        al,al
>005104AE    jne         005104C0
 005104B0    mov         eax,dword ptr [ebp-4]
 005104B3    call        00512624
 005104B8    test        al,al
>005104BA    je          0051057E
 005104C0    cmp         dword ptr [ebp-1C],0
>005104C4    je          0051057E
 005104CA    mov         eax,dword ptr [ebp+0C]
 005104CD    mov         eax,dword ptr [eax+8]
 005104D0    mov         edx,dword ptr [ebp+0C]
 005104D3    sub         eax,dword ptr [edx]
 005104D5    mov         edx,dword ptr [ebp-10]
 005104D8    cmp         eax,dword ptr [edx+48]
>005104DB    jge         0051057E
 005104E1    mov         eax,dword ptr [ebp-4]
 005104E4    call        TControl.GetClientHeight
 005104E9    mov         edx,dword ptr [ebp+0C]
 005104EC    sub         eax,dword ptr [edx+4]
 005104EF    mov         edx,dword ptr [ebp-4]
 005104F2    sub         eax,dword ptr [edx+254]
 005104F8    push        eax
 005104F9    lea         eax,[ebp-30]
 005104FC    push        eax
 005104FD    mov         dl,1
 005104FF    mov         eax,dword ptr [ebp-4]
 00510502    mov         ecx,dword ptr [eax]
 00510504    call        dword ptr [ecx+0F8];TCustomActionBar.sub_00511578
 0051050A    push        eax
 0051050B    mov         eax,dword ptr [ebp-4]
 0051050E    call        TControl.GetClientWidth
 00510513    mov         edx,dword ptr [ebp-4]
 00510516    sub         eax,dword ptr [edx+258]
 0051051C    pop         edx
 0051051D    sub         eax,edx
 0051051F    push        eax
 00510520    xor         edx,edx
 00510522    mov         eax,dword ptr [ebp-4]
 00510525    mov         ecx,dword ptr [eax]
 00510527    call        dword ptr [ecx+0F8];TCustomActionBar.sub_00511578
 0051052D    mov         edx,dword ptr [ebp-4]
 00510530    add         eax,dword ptr [edx+258];TCustomActionBar.FHorzMargin:Integer
 00510536    mov         edx,dword ptr [ebp-4]
 00510539    mov         edx,dword ptr [edx+254];TCustomActionBar.FVertMargin:Integer
 0051053F    add         edx,edx
 00510541    mov         ecx,dword ptr [ebp-4]
 00510544    movzx       ecx,byte ptr [ecx+25C]
 0051054B    add         edx,dword ptr [ecx*4+541AA0]
 00510552    mov         ecx,dword ptr [ebp+0C]
 00510555    mov         ecx,dword ptr [ecx+4]
 00510558    mov         ebx,dword ptr [ebp-4]
 0051055B    add         ecx,dword ptr [ebx+268];TCustomActionBar.FTallest:Integer
 00510561    add         edx,ecx
 00510563    pop         ecx
 00510564    call        Rect
 00510569    mov         eax,dword ptr [ebp+0C]
 0051056C    lea         esi,[ebp-30]
 0051056F    mov         edi,eax
 00510571    movs        dword ptr [edi],dword ptr [esi]
 00510572    movs        dword ptr [edi],dword ptr [esi]
 00510573    movs        dword ptr [edi],dword ptr [esi]
 00510574    movs        dword ptr [edi],dword ptr [esi]
 00510575    mov         eax,dword ptr [ebp-4]
 00510578    inc         dword ptr [eax+250];TCustomActionBar.FVRowCount:Integer
 0051057E    mov         eax,dword ptr [ebp+0C]
 00510581    mov         eax,dword ptr [eax+4]
 00510584    mov         edx,dword ptr [ebp+18]
 00510587    mov         dword ptr [edx],eax
 00510589    cmp         dword ptr [ebp-1C],0
>0051058D    jne         005105C9
 0051058F    mov         eax,dword ptr [ebp+0C]
 00510592    mov         eax,dword ptr [eax+8]
 00510595    mov         edx,dword ptr [ebp-10]
 00510598    sub         eax,dword ptr [edx+48]
 0051059B    mov         edx,dword ptr [ebp-4]
 0051059E    sub         eax,dword ptr [edx+258]
 005105A4    mov         edx,dword ptr [ebp-0C]
 005105A7    mov         dword ptr [edx],eax
 005105A9    mov         eax,dword ptr [ebp-10]
 005105AC    mov         eax,dword ptr [eax+48]
 005105AF    mov         edx,dword ptr [ebp-4]
 005105B2    add         eax,dword ptr [edx+254];TCustomActionBar.FVertMargin:Integer
 005105B8    mov         edx,dword ptr [ebp-4]
 005105BB    add         eax,dword ptr [edx+228];TCustomActionBar.FSpacing:Integer
 005105C1    mov         edx,dword ptr [ebp+0C]
 005105C4    sub         dword ptr [edx+8],eax
>005105C7    jmp         00510609
 005105C9    mov         eax,dword ptr [ebp+0C]
 005105CC    mov         eax,dword ptr [eax+8]
 005105CF    mov         edx,dword ptr [ebp-10]
 005105D2    sub         eax,dword ptr [edx+48]
 005105D5    mov         edx,dword ptr [ebp-0C]
 005105D8    mov         dword ptr [edx],eax
 005105DA    mov         eax,dword ptr [ebp-20]
 005105DD    mov         eax,dword ptr [eax+8]
 005105E0    dec         eax
 005105E1    cmp         eax,dword ptr [ebp-1C]
>005105E4    jne         005105F4
 005105E6    mov         eax,dword ptr [ebp-10]
 005105E9    mov         eax,dword ptr [eax+48]
 005105EC    mov         edx,dword ptr [ebp+0C]
 005105EF    sub         dword ptr [edx+8],eax
>005105F2    jmp         00510609
 005105F4    mov         eax,dword ptr [ebp-10]
 005105F7    mov         eax,dword ptr [eax+48]
 005105FA    mov         edx,dword ptr [ebp-4]
 005105FD    add         eax,dword ptr [edx+228];TCustomActionBar.FSpacing:Integer
 00510603    mov         edx,dword ptr [ebp+0C]
 00510606    sub         dword ptr [edx+8],eax
 00510609    mov         eax,dword ptr [ebp+10]
 0051060C    mov         edx,dword ptr [ebp-4]
 0051060F    mov         edx,dword ptr [edx+268];TCustomActionBar.FTallest:Integer
 00510615    mov         dword ptr [eax],edx
>00510617    jmp         0051087D
 0051061C    mov         eax,dword ptr [ebp-4]
 0051061F    mov         edx,dword ptr [eax]
 00510621    call        dword ptr [edx+54];TCustomActionBar.sub_004CDEBC
 00510624    test        al,al
>00510626    jne         00510638
 00510628    mov         eax,dword ptr [ebp-4]
 0051062B    call        00512624
 00510630    test        al,al
>00510632    je          005106E3
 00510638    cmp         dword ptr [ebp-1C],0
>0051063C    je          005106E3
 00510642    mov         eax,dword ptr [ebp+0C]
 00510645    mov         eax,dword ptr [eax+0C]
 00510648    mov         edx,dword ptr [ebp+0C]
 0051064B    sub         eax,dword ptr [edx+4]
 0051064E    mov         edx,dword ptr [ebp-10]
 00510651    cmp         eax,dword ptr [edx+4C]
>00510654    jge         005106E3
 0051065A    mov         eax,dword ptr [ebp-4]
 0051065D    call        TControl.GetClientHeight
 00510662    mov         edx,dword ptr [ebp-4]
 00510665    sub         eax,dword ptr [edx+254]
 0051066B    push        eax
 0051066C    lea         eax,[ebp-30]
 0051066F    push        eax
 00510670    mov         dl,1
 00510672    mov         eax,dword ptr [ebp-4]
 00510675    mov         ecx,dword ptr [eax]
 00510677    call        dword ptr [ecx+0F8];TCustomActionBar.sub_00511578
 0051067D    push        eax
 0051067E    mov         eax,dword ptr [ebp-4]
 00510681    call        TControl.GetClientWidth
 00510686    mov         ecx,eax
 00510688    mov         eax,dword ptr [ebp-4]
 0051068B    sub         ecx,dword ptr [eax+258]
 00510691    pop         eax
 00510692    sub         ecx,eax
 00510694    mov         eax,dword ptr [ebp+0C]
 00510697    mov         eax,dword ptr [eax]
 00510699    mov         edx,dword ptr [ebp-4]
 0051069C    add         eax,dword ptr [edx+26C];TCustomActionBar.FWidest:Integer
 005106A2    mov         edx,dword ptr [ebp-4]
 005106A5    mov         edx,dword ptr [edx+258];TCustomActionBar.FHorzMargin:Integer
 005106AB    add         edx,edx
 005106AD    add         eax,edx
 005106AF    mov         edx,dword ptr [ebp-4]
 005106B2    movzx       edx,byte ptr [edx+25C];TCustomActionBar.FHorzSeparator:Boolean
 005106B9    add         eax,dword ptr [edx*4+541AA0]
 005106C0    mov         edx,dword ptr [ebp-4]
 005106C3    mov         edx,dword ptr [edx+254];TCustomActionBar.FVertMargin:Integer
 005106C9    call        Rect
 005106CE    mov         eax,dword ptr [ebp+0C]
 005106D1    lea         esi,[ebp-30]
 005106D4    mov         edi,eax
 005106D6    movs        dword ptr [edi],dword ptr [esi]
 005106D7    movs        dword ptr [edi],dword ptr [esi]
 005106D8    movs        dword ptr [edi],dword ptr [esi]
 005106D9    movs        dword ptr [edi],dword ptr [esi]
 005106DA    mov         eax,dword ptr [ebp-4]
 005106DD    inc         dword ptr [eax+24C];TCustomActionBar.FHRowCount:Integer
 005106E3    cmp         dword ptr [ebp-1C],0
>005106E7    jne         005106F9
 005106E9    mov         eax,dword ptr [ebp+18]
 005106EC    mov         edx,dword ptr [ebp-4]
 005106EF    mov         edx,dword ptr [edx+254];TCustomActionBar.FVertMargin:Integer
 005106F5    mov         dword ptr [eax],edx
>005106F7    jmp         00510704
 005106F9    mov         eax,dword ptr [ebp+0C]
 005106FC    mov         eax,dword ptr [eax+4]
 005106FF    mov         edx,dword ptr [ebp+18]
 00510702    mov         dword ptr [edx],eax
 00510704    mov         dl,2
 00510706    mov         eax,dword ptr [ebp-4]
 00510709    mov         ecx,dword ptr [eax]
 0051070B    call        dword ptr [ecx+0F8];TCustomActionBar.sub_00511578
 00510711    mov         edx,dword ptr [ebp-4]
 00510714    add         eax,dword ptr [edx+26C];TCustomActionBar.FWidest:Integer
 0051071A    mov         edx,dword ptr [ebp+0C]
 0051071D    mov         dword ptr [edx+8],eax
 00510720    mov         eax,dword ptr [ebp+0C]
 00510723    mov         eax,dword ptr [eax]
 00510725    mov         edx,dword ptr [ebp-0C]
 00510728    mov         dword ptr [edx],eax
 0051072A    mov         eax,dword ptr [ebp+14]
 0051072D    mov         edx,dword ptr [ebp-4]
 00510730    mov         edx,dword ptr [edx+26C];TCustomActionBar.FWidest:Integer
 00510736    mov         dword ptr [eax],edx
 00510738    mov         eax,dword ptr [ebp-10]
 0051073B    mov         eax,dword ptr [eax+4C]
 0051073E    mov         edx,dword ptr [ebp-4]
 00510741    add         eax,dword ptr [edx+228];TCustomActionBar.FSpacing:Integer
 00510747    mov         edx,dword ptr [ebp+0C]
 0051074A    add         dword ptr [edx+4],eax
>0051074D    jmp         0051087D
 00510752    mov         eax,dword ptr [ebp-4]
 00510755    mov         edx,dword ptr [eax]
 00510757    call        dword ptr [edx+54];TCustomActionBar.sub_004CDEBC
 0051075A    test        al,al
>0051075C    jne         0051076E
 0051075E    mov         eax,dword ptr [ebp-4]
 00510761    call        00512624
 00510766    test        al,al
>00510768    je          00510808
 0051076E    cmp         dword ptr [ebp-1C],0
>00510772    je          00510808
 00510778    mov         eax,dword ptr [ebp+0C]
 0051077B    mov         eax,dword ptr [eax+0C]
 0051077E    mov         edx,dword ptr [ebp+0C]
 00510781    sub         eax,dword ptr [edx+4]
 00510784    mov         edx,dword ptr [ebp-10]
 00510787    cmp         eax,dword ptr [edx+4C]
>0051078A    jge         00510808
 0051078C    mov         eax,dword ptr [ebp-4]
 0051078F    call        TControl.GetClientHeight
 00510794    mov         edx,dword ptr [ebp-4]
 00510797    sub         eax,dword ptr [edx+254]
 0051079D    push        eax
 0051079E    lea         eax,[ebp-30]
 005107A1    push        eax
 005107A2    xor         edx,edx
 005107A4    mov         eax,dword ptr [ebp-4]
 005107A7    mov         ecx,dword ptr [eax]
 005107A9    call        dword ptr [ecx+0F8];TCustomActionBar.sub_00511578
 005107AF    mov         edx,dword ptr [ebp-4]
 005107B2    add         eax,dword ptr [edx+258];TCustomActionBar.FHorzMargin:Integer
 005107B8    mov         ecx,dword ptr [ebp+0C]
 005107BB    mov         ecx,dword ptr [ecx+8]
 005107BE    mov         edx,dword ptr [ebp-4]
 005107C1    sub         ecx,dword ptr [edx+26C]
 005107C7    mov         edx,dword ptr [ebp-4]
 005107CA    mov         edx,dword ptr [edx+258];TCustomActionBar.FHorzMargin:Integer
 005107D0    add         edx,edx
 005107D2    sub         ecx,edx
 005107D4    mov         edx,dword ptr [ebp-4]
 005107D7    movzx       edx,byte ptr [edx+25C];TCustomActionBar.FHorzSeparator:Boolean
 005107DE    sub         ecx,dword ptr [edx*4+541AA0]
 005107E5    mov         edx,dword ptr [ebp-4]
 005107E8    mov         edx,dword ptr [edx+254];TCustomActionBar.FVertMargin:Integer
 005107EE    call        Rect
 005107F3    mov         eax,dword ptr [ebp+0C]
 005107F6    lea         esi,[ebp-30]
 005107F9    mov         edi,eax
 005107FB    movs        dword ptr [edi],dword ptr [esi]
 005107FC    movs        dword ptr [edi],dword ptr [esi]
 005107FD    movs        dword ptr [edi],dword ptr [esi]
 005107FE    movs        dword ptr [edi],dword ptr [esi]
 005107FF    mov         eax,dword ptr [ebp-4]
 00510802    inc         dword ptr [eax+24C];TCustomActionBar.FHRowCount:Integer
 00510808    cmp         dword ptr [ebp-1C],0
>0051080C    jne         0051082C
 0051080E    mov         eax,dword ptr [ebp-4]
 00510811    call        TControl.GetClientHeight
 00510816    mov         edx,dword ptr [ebp-8]
 00510819    sub         eax,dword ptr [edx+4C]
 0051081C    mov         edx,dword ptr [ebp-4]
 0051081F    sub         eax,dword ptr [edx+258]
 00510825    mov         edx,dword ptr [ebp+18]
 00510828    mov         dword ptr [edx],eax
>0051082A    jmp         00510846
 0051082C    mov         eax,dword ptr [ebp+0C]
 0051082F    mov         eax,dword ptr [eax+0C]
 00510832    mov         edx,dword ptr [ebp-8]
 00510835    sub         eax,dword ptr [edx+4C]
 00510838    mov         edx,dword ptr [ebp-4]
 0051083B    sub         eax,dword ptr [edx+228]
 00510841    mov         edx,dword ptr [ebp+18]
 00510844    mov         dword ptr [edx],eax
 00510846    mov         eax,dword ptr [ebp+0C]
 00510849    mov         eax,dword ptr [eax+8]
 0051084C    mov         edx,dword ptr [ebp-4]
 0051084F    sub         eax,dword ptr [edx+26C]
 00510855    mov         edx,dword ptr [ebp-0C]
 00510858    mov         dword ptr [edx],eax
 0051085A    mov         eax,dword ptr [ebp+14]
 0051085D    mov         edx,dword ptr [ebp-4]
 00510860    mov         edx,dword ptr [edx+26C];TCustomActionBar.FWidest:Integer
 00510866    mov         dword ptr [eax],edx
 00510868    mov         eax,dword ptr [ebp-10]
 0051086B    mov         eax,dword ptr [eax+4C]
 0051086E    mov         edx,dword ptr [ebp-4]
 00510871    add         eax,dword ptr [edx+228];TCustomActionBar.FSpacing:Integer
 00510877    mov         edx,dword ptr [ebp+0C]
 0051087A    sub         dword ptr [edx+0C],eax
 0051087D    pop         edi
 0051087E    pop         esi
 0051087F    pop         ebx
 00510880    mov         esp,ebp
 00510882    pop         ebp
 00510883    ret         14
end;*}

//00510888
procedure sub_00510888;
begin
{*
 00510888    push        ebp
 00510889    mov         ebp,esp
 0051088B    add         esp,0FFFFFFD4
 0051088E    mov         dword ptr [ebp-4],eax
 00510891    mov         eax,dword ptr [ebp-4]
 00510894    cmp         dword ptr [eax+210],0;TCustomActionBar.FActionClient:TActionClient
>0051089B    je          00510A30
 005108A1    mov         eax,dword ptr [ebp-4]
 005108A4    mov         eax,dword ptr [eax+210];TCustomActionBar.FActionClient:TActionClient
 005108AA    call        0050CCE0
 005108AF    test        al,al
>005108B1    je          00510A30
 005108B7    mov         eax,dword ptr [ebp-4]
 005108BA    mov         eax,dword ptr [eax+210];TCustomActionBar.FActionClient:TActionClient
 005108C0    movzx       eax,byte ptr [eax+14];TActionClient.BackgroundLayout:TBackgroundLayout
 005108C4    cmp         eax,4
>005108C7    ja          00510A30
 005108CD    jmp         dword ptr [eax*4+5108D4]
 005108CD    dd          0051092D
 005108CD    dd          00510956
 005108CD    dd          0051098A
 005108CD    dd          0051092D
 005108CD    dd          005108E8
 005108E8    mov         eax,dword ptr [ebp-4]
 005108EB    mov         eax,dword ptr [eax+210];TCustomActionBar.FActionClient:TActionClient
 005108F1    call        TActionClient.GetBackground
 005108F6    mov         eax,dword ptr [eax+0C]
 005108F9    push        eax
 005108FA    mov         eax,dword ptr [ebp-4]
 005108FD    mov         eax,dword ptr [eax+210];TCustomActionBar.FActionClient:TActionClient
 00510903    call        TActionClient.GetBackground
 00510908    mov         eax,dword ptr [eax+0C]
 0051090B    mov         edx,dword ptr [eax]
 0051090D    call        dword ptr [edx+2C]
 00510910    mov         edx,dword ptr [ebp-4]
 00510913    mov         edx,dword ptr [edx+48];TCustomActionBar.Width:Integer
 00510916    sub         edx,eax
 00510918    xor         ecx,ecx
 0051091A    mov         eax,dword ptr [ebp-4]
 0051091D    mov         eax,dword ptr [eax+21C];TCustomActionBar.FCanvas:TCanvas
 00510923    call        TCanvas.Draw
>00510928    jmp         00510A30
 0051092D    mov         eax,dword ptr [ebp-4]
 00510930    mov         eax,dword ptr [eax+210];TCustomActionBar.FActionClient:TActionClient
 00510936    call        TActionClient.GetBackground
 0051093B    mov         eax,dword ptr [eax+0C]
 0051093E    push        eax
 0051093F    xor         ecx,ecx
 00510941    xor         edx,edx
 00510943    mov         eax,dword ptr [ebp-4]
 00510946    mov         eax,dword ptr [eax+21C];TCustomActionBar.FCanvas:TCanvas
 0051094C    call        TCanvas.Draw
>00510951    jmp         00510A30
 00510956    lea         edx,[ebp-2C]
 00510959    mov         eax,dword ptr [ebp-4]
 0051095C    mov         ecx,dword ptr [eax]
 0051095E    call        dword ptr [ecx+44];TCustomActionBar.sub_004D3A1C
 00510961    lea         eax,[ebp-2C]
 00510964    push        eax
 00510965    mov         eax,dword ptr [ebp-4]
 00510968    mov         eax,dword ptr [eax+210];TCustomActionBar.FActionClient:TActionClient
 0051096E    call        TActionClient.GetBackground
 00510973    mov         ecx,dword ptr [eax+0C]
 00510976    mov         eax,dword ptr [ebp-4]
 00510979    mov         eax,dword ptr [eax+21C];TCustomActionBar.FCanvas:TCanvas
 0051097F    pop         edx
 00510980    call        0048800C
>00510985    jmp         00510A30
 0051098A    mov         eax,dword ptr [ebp-4]
 0051098D    mov         eax,dword ptr [eax+210];TCustomActionBar.FActionClient:TActionClient
 00510993    call        TActionClient.GetBackground
 00510998    mov         eax,dword ptr [eax+0C]
 0051099B    mov         edx,dword ptr [eax]
 0051099D    call        dword ptr [edx+2C]
 005109A0    mov         dword ptr [ebp-10],eax
 005109A3    mov         eax,dword ptr [ebp-4]
 005109A6    mov         eax,dword ptr [eax+210];TCustomActionBar.FActionClient:TActionClient
 005109AC    call        TActionClient.GetBackground
 005109B1    mov         eax,dword ptr [eax+0C]
 005109B4    mov         edx,dword ptr [eax]
 005109B6    call        dword ptr [edx+20]
 005109B9    mov         dword ptr [ebp-14],eax
 005109BC    mov         eax,dword ptr [ebp-4]
 005109BF    call        TControl.GetClientWidth
 005109C4    cdq
 005109C5    idiv        eax,dword ptr [ebp-10]
 005109C8    test        eax,eax
>005109CA    jl          00510A30
 005109CC    inc         eax
 005109CD    mov         dword ptr [ebp-18],eax
 005109D0    mov         dword ptr [ebp-8],0
 005109D7    mov         eax,dword ptr [ebp-4]
 005109DA    call        TControl.GetClientHeight
 005109DF    cdq
 005109E0    idiv        eax,dword ptr [ebp-14]
 005109E3    test        eax,eax
>005109E5    jl          00510A28
 005109E7    inc         eax
 005109E8    mov         dword ptr [ebp-1C],eax
 005109EB    mov         dword ptr [ebp-0C],0
 005109F2    mov         eax,dword ptr [ebp-4]
 005109F5    mov         eax,dword ptr [eax+210];TCustomActionBar.FActionClient:TActionClient
 005109FB    call        TActionClient.GetBackground
 00510A00    mov         eax,dword ptr [eax+0C]
 00510A03    push        eax
 00510A04    mov         ecx,dword ptr [ebp-14]
 00510A07    imul        ecx,dword ptr [ebp-0C]
 00510A0B    mov         edx,dword ptr [ebp-10]
 00510A0E    imul        edx,dword ptr [ebp-8]
 00510A12    mov         eax,dword ptr [ebp-4]
 00510A15    mov         eax,dword ptr [eax+21C];TCustomActionBar.FCanvas:TCanvas
 00510A1B    call        TCanvas.Draw
 00510A20    inc         dword ptr [ebp-0C]
 00510A23    dec         dword ptr [ebp-1C]
>00510A26    jne         005109F2
 00510A28    inc         dword ptr [ebp-8]
 00510A2B    dec         dword ptr [ebp-18]
>00510A2E    jne         005109D7
 00510A30    mov         esp,ebp
 00510A32    pop         ebp
 00510A33    ret
*}
end;

//00510A34
{*procedure TCustomActionBar.sub_004CBAC0(?:?; ?:?; ?:?; ?:?; ?:?);
begin
 00510A34    push        ebp
 00510A35    mov         ebp,esp
 00510A37    add         esp,0FFFFFFF4
 00510A3A    mov         dword ptr [ebp-0C],ecx
 00510A3D    mov         dword ptr [ebp-8],edx
 00510A40    mov         dword ptr [ebp-4],eax
 00510A43    mov         eax,dword ptr [ebp+10]
 00510A46    push        eax
 00510A47    mov         al,byte ptr [ebp+0C]
 00510A4A    push        eax
 00510A4B    mov         eax,dword ptr [ebp+8]
 00510A4E    push        eax
 00510A4F    mov         ecx,dword ptr [ebp-0C]
 00510A52    mov         edx,dword ptr [ebp-8]
 00510A55    mov         eax,dword ptr [ebp-4]
 00510A58    call        TControl.sub_004CBAC0
 00510A5D    mov         eax,dword ptr [ebp-4]
 00510A60    cmp         byte ptr [eax+224],0;TCustomActionBar.FDesignable:Boolean
>00510A67    je          00510A8D
 00510A69    mov         eax,dword ptr [ebp-8]
 00510A6C    mov         edx,dword ptr ds:[509A10];TActionDragObject
 00510A72    call        @IsClass
 00510A77    test        al,al
>00510A79    jne         00510A91
 00510A7B    mov         eax,dword ptr [ebp-8]
 00510A7E    mov         edx,dword ptr ds:[509B2C];TActionItemDragObject
 00510A84    call        @IsClass
 00510A89    test        al,al
>00510A8B    jne         00510A91
 00510A8D    xor         eax,eax
>00510A8F    jmp         00510A93
 00510A91    mov         al,1
 00510A93    mov         edx,dword ptr [ebp+8]
 00510A96    mov         byte ptr [edx],al
 00510A98    mov         esp,ebp
 00510A9A    pop         ebp
 00510A9B    ret         0C
end;*}

//00510AA0
{*procedure TCustomActionBar.sub_004CBB18(?:?; ?:?; ?:?);
begin
 00510AA0    push        ebp
 00510AA1    mov         ebp,esp
 00510AA3    add         esp,0FFFFFFF0
 00510AA6    push        ebx
 00510AA7    mov         dword ptr [ebp-0C],ecx
 00510AAA    mov         dword ptr [ebp-8],edx
 00510AAD    mov         dword ptr [ebp-4],eax
 00510AB0    mov         eax,dword ptr [ebp+8]
 00510AB3    push        eax
 00510AB4    mov         ecx,dword ptr [ebp-0C]
 00510AB7    mov         edx,dword ptr [ebp-8]
 00510ABA    mov         eax,dword ptr [ebp-4]
 00510ABD    call        TControl.sub_004CBB18
 00510AC2    mov         eax,dword ptr [ebp-4]
 00510AC5    cmp         dword ptr [eax+210],0;TCustomActionBar.FActionClient:TActionClient
>00510ACC    jne         00510B13
 00510ACE    mov         eax,dword ptr [ebp-8]
 00510AD1    mov         edx,dword ptr ds:[509988];TActionDragBaseClass
 00510AD7    call        @AsClass
 00510ADC    mov         dword ptr [ebp-10],eax
 00510ADF    mov         eax,dword ptr [ebp-10]
 00510AE2    mov         edx,dword ptr [eax+38];TActionDragBaseClass....FActionManager:TCustomActionManager
 00510AE5    mov         eax,dword ptr [ebp-4]
 00510AE8    call        TActionToolBar.SetActionManager
 00510AED    mov         eax,dword ptr [ebp-10]
 00510AF0    mov         eax,dword ptr [eax+38];TActionDragBaseClass.....FActionManager:TCustomActionManager
 00510AF3    mov         eax,dword ptr [eax+6C];TCustomActionManager.FActionBars:TActionBars
 00510AF6    call        0050D564
 00510AFB    mov         edx,dword ptr [ebp-4]
 00510AFE    mov         dword ptr [edx+210],eax;TCustomActionBar.FActionClient:TActionClient
 00510B04    mov         eax,dword ptr [ebp-4]
 00510B07    mov         eax,dword ptr [eax+210];TCustomActionBar.FActionClient:TActionClient
 00510B0D    mov         edx,dword ptr [ebp-4]
 00510B10    mov         dword ptr [eax+0C],edx;TActionClient.FActionBar:TCustomActionBar
 00510B13    mov         eax,dword ptr [ebp-4]
 00510B16    call        TWinControl.DisableAlign
 00510B1B    xor         eax,eax
 00510B1D    push        ebp
 00510B1E    push        510C0A
 00510B23    push        dword ptr fs:[eax]
 00510B26    mov         dword ptr fs:[eax],esp
 00510B29    mov         eax,dword ptr [ebp-8]
 00510B2C    mov         edx,dword ptr ds:[509A94];TCategoryDragObject
 00510B32    call        @IsClass
 00510B37    test        al,al
>00510B39    je          00510B5F
 00510B3B    mov         eax,dword ptr [ebp+8]
 00510B3E    push        eax
 00510B3F    mov         eax,dword ptr [ebp-8]
 00510B42    mov         edx,dword ptr ds:[509A94];TCategoryDragObject
 00510B48    call        @AsClass
 00510B4D    mov         edx,eax
 00510B4F    mov         ecx,dword ptr [ebp-0C]
 00510B52    mov         eax,dword ptr [ebp-4]
 00510B55    mov         ebx,dword ptr [eax]
 00510B57    call        dword ptr [ebx+0E0];TCustomActionBar.sub_00511EE8
>00510B5D    jmp         00510BC9
 00510B5F    mov         eax,dword ptr [ebp-8]
 00510B62    mov         edx,dword ptr ds:[509A10];TActionDragObject
 00510B68    call        @IsClass
 00510B6D    test        al,al
>00510B6F    je          00510B95
 00510B71    mov         eax,dword ptr [ebp+8]
 00510B74    push        eax
 00510B75    mov         eax,dword ptr [ebp-8]
 00510B78    mov         edx,dword ptr ds:[509A10];TActionDragObject
 00510B7E    call        @AsClass
 00510B83    mov         edx,eax
 00510B85    mov         ecx,dword ptr [ebp-0C]
 00510B88    mov         eax,dword ptr [ebp-4]
 00510B8B    mov         ebx,dword ptr [eax]
 00510B8D    call        dword ptr [ebx+0E4];TCustomActionBar.sub_00511E2C
>00510B93    jmp         00510BC9
 00510B95    mov         eax,dword ptr [ebp-8]
 00510B98    mov         edx,dword ptr ds:[509B2C];TActionItemDragObject
 00510B9E    call        @IsClass
 00510BA3    test        al,al
>00510BA5    je          00510BC9
 00510BA7    mov         eax,dword ptr [ebp+8]
 00510BAA    push        eax
 00510BAB    mov         eax,dword ptr [ebp-8]
 00510BAE    mov         edx,dword ptr ds:[509B2C];TActionItemDragObject
 00510BB4    call        @AsClass
 00510BB9    mov         edx,eax
 00510BBB    mov         ecx,dword ptr [ebp-0C]
 00510BBE    mov         eax,dword ptr [ebp-4]
 00510BC1    mov         ebx,dword ptr [eax]
 00510BC3    call        dword ptr [ebx+0E8];TCustomActionBar.sub_005126AC
 00510BC9    xor         eax,eax
 00510BCB    pop         edx
 00510BCC    pop         ecx
 00510BCD    pop         ecx
 00510BCE    mov         dword ptr fs:[eax],edx
 00510BD1    push        510C11
 00510BD6    mov         eax,dword ptr [ebp-4]
 00510BD9    mov         eax,dword ptr [eax+210];TCustomActionBar.FActionClient:TActionClient
 00510BDF    call        TActionClient.GetItems
 00510BE4    mov         dl,1
 00510BE6    call        0050C09C
 00510BEB    mov         eax,dword ptr [ebp-4]
 00510BEE    mov         eax,dword ptr [eax+210];TCustomActionBar.FActionClient:TActionClient
 00510BF4    mov         edx,dword ptr [eax]
 00510BF6    call        dword ptr [edx+30];TActionClient.sub_0050CED4
 00510BF9    mov         eax,dword ptr [ebp-4]
 00510BFC    call        TWinControl.EnableAlign
 00510C01    mov         eax,dword ptr [ebp-4]
 00510C04    call        004CF09C
 00510C09    ret
>00510C0A    jmp         @HandleFinally
>00510C0F    jmp         00510BD6
 00510C11    pop         ebx
 00510C12    mov         esp,ebp
 00510C14    pop         ebp
 00510C15    ret         4
end;*}

//00510C18
{*procedure TCustomActionBar.sub_00510C18(?:?);
begin
 00510C18    push        ebp
 00510C19    mov         ebp,esp
 00510C1B    add         esp,0FFFFFFF4
 00510C1E    push        ebx
 00510C1F    mov         dword ptr [ebp-8],edx
 00510C22    mov         dword ptr [ebp-4],eax
 00510C25    mov         eax,dword ptr [ebp-4]
 00510C28    cmp         word ptr [eax+23A],0;TCustomActionBar.?f23A:word
>00510C30    je          00510C4D
 00510C32    lea         eax,[ebp-0C]
 00510C35    push        eax
 00510C36    mov         ebx,dword ptr [ebp-4]
 00510C39    mov         ecx,dword ptr [ebp-8]
 00510C3C    mov         edx,dword ptr [ebp-4]
 00510C3F    mov         eax,dword ptr [ebx+23C];TCustomActionBar.?f23C:dword
 00510C45    call        dword ptr [ebx+238];TCustomActionBar.FOnGetControlClass
>00510C4B    jmp         00510C5E
 00510C4D    mov         edx,dword ptr [ebp-8]
 00510C50    mov         eax,dword ptr [ebp-4]
 00510C53    mov         ecx,dword ptr [eax]
 00510C55    call        dword ptr [ecx+110];TCustomActionBar.sub_00511638
 00510C5B    mov         dword ptr [ebp-0C],eax
 00510C5E    mov         eax,dword ptr [ebp-0C]
 00510C61    pop         ebx
 00510C62    mov         esp,ebp
 00510C64    pop         ebp
 00510C65    ret
end;*}

//00510C68
{*procedure sub_00510C68(?:?);
begin
 00510C68    push        ebp
 00510C69    mov         ebp,esp
 00510C6B    add         esp,0FFFFFFF8
 00510C6E    push        ebx
 00510C6F    mov         dword ptr [ebp-8],edx
 00510C72    mov         dword ptr [ebp-4],eax
 00510C75    mov         eax,dword ptr [ebp-4]
 00510C78    cmp         word ptr [eax+232],0;TCustomActionBar.?f232:word
>00510C80    je          00510C97
 00510C82    lea         ecx,[ebp-8]
 00510C85    mov         ebx,dword ptr [ebp-4]
 00510C88    mov         edx,dword ptr [ebp-4]
 00510C8B    mov         eax,dword ptr [ebx+234];TCustomActionBar.?f234:dword
 00510C91    call        dword ptr [ebx+230];TCustomActionBar.FOnControlCreated
 00510C97    pop         ebx
 00510C98    pop         ecx
 00510C99    pop         ecx
 00510C9A    pop         ebp
 00510C9B    ret
end;*}

//00510C9C
{*function sub_00510C9C(?:TCustomActionMainMenuBar; ?:?):?;
begin
 00510C9C    push        ebp
 00510C9D    mov         ebp,esp
 00510C9F    add         esp,0FFFFFFE8
 00510CA2    xor         ecx,ecx
 00510CA4    mov         dword ptr [ebp-18],ecx
 00510CA7    mov         word ptr [ebp-6],dx
 00510CAB    mov         dword ptr [ebp-4],eax
 00510CAE    xor         eax,eax
 00510CB0    push        ebp
 00510CB1    push        510D5A
 00510CB6    push        dword ptr fs:[eax]
 00510CB9    mov         dword ptr fs:[eax],esp
 00510CBC    mov         eax,dword ptr [ebp-4]
 00510CBF    mov         edx,dword ptr [eax]
 00510CC1    call        dword ptr [edx+114];TCustomActionMainMenuBar.sub_00511728
 00510CC7    dec         eax
 00510CC8    test        eax,eax
>00510CCA    jl          00510D3F
 00510CCC    inc         eax
 00510CCD    mov         dword ptr [ebp-14],eax
 00510CD0    mov         dword ptr [ebp-10],0
 00510CD7    mov         eax,dword ptr [ebp-4]
 00510CDA    call        00511668
 00510CDF    mov         edx,dword ptr [ebp-10]
 00510CE2    call        0050D884
 00510CE7    mov         dword ptr [ebp-0C],eax
 00510CEA    mov         eax,dword ptr [ebp-4]
 00510CED    call        00511668
 00510CF2    cmp         byte ptr [eax+28],0
>00510CF6    je          00510D37
 00510CF8    mov         eax,dword ptr [ebp-0C]
 00510CFB    mov         eax,dword ptr [eax+40]
 00510CFE    mov         eax,dword ptr [eax+30]
 00510D01    cmp         byte ptr [eax+1A6],0
>00510D08    je          00510D37
 00510D0A    mov         eax,dword ptr [ebp-0C]
 00510D0D    cmp         byte ptr [eax+30],0
>00510D11    je          00510D37
 00510D13    mov         eax,dword ptr [ebp-0C]
 00510D16    cmp         byte ptr [eax+51],0
>00510D1A    je          00510D37
 00510D1C    lea         edx,[ebp-18]
 00510D1F    mov         eax,dword ptr [ebp-0C]
 00510D22    call        TActionClientItem.GetCaption
 00510D27    mov         edx,dword ptr [ebp-18]
 00510D2A    mov         ax,word ptr [ebp-6]
 00510D2E    call        004E7E60
 00510D33    test        al,al
>00510D35    jne         00510D44
 00510D37    inc         dword ptr [ebp-10]
 00510D3A    dec         dword ptr [ebp-14]
>00510D3D    jne         00510CD7
 00510D3F    xor         eax,eax
 00510D41    mov         dword ptr [ebp-0C],eax
 00510D44    xor         eax,eax
 00510D46    pop         edx
 00510D47    pop         ecx
 00510D48    pop         ecx
 00510D49    mov         dword ptr fs:[eax],edx
 00510D4C    push        510D61
 00510D51    lea         eax,[ebp-18]
 00510D54    call        @LStrClr
 00510D59    ret
>00510D5A    jmp         @HandleFinally
>00510D5F    jmp         00510D51
 00510D61    mov         eax,dword ptr [ebp-0C]
 00510D64    mov         esp,ebp
 00510D66    pop         ebp
 00510D67    ret
end;*}

//00510D68
{*function sub_00510D68:?;
begin
 00510D68    push        ebp
 00510D69    mov         ebp,esp
 00510D6B    add         esp,0FFFFFFF8
 00510D6E    mov         dword ptr [ebp-4],eax
 00510D71    mov         eax,dword ptr [ebp-4]
 00510D74    cmp         dword ptr [eax+210],0;TCustomActionBar.FActionClient:TActionClient
>00510D7B    je          00510DA9
 00510D7D    mov         eax,dword ptr [ebp-4]
 00510D80    call        005116BC
 00510D85    test        al,al
>00510D87    je          00510DA9
 00510D89    mov         eax,dword ptr [ebp-4]
 00510D8C    call        004CF618
 00510D91    test        eax,eax
>00510D93    jle         00510DA9
 00510D95    mov         eax,dword ptr [ebp-4]
 00510D98    call        00511668
 00510D9D    xor         edx,edx
 00510D9F    call        0050D884
 00510DA4    mov         dword ptr [ebp-8],eax
>00510DA7    jmp         00510DAE
 00510DA9    xor         eax,eax
 00510DAB    mov         dword ptr [ebp-8],eax
 00510DAE    mov         eax,dword ptr [ebp-8]
 00510DB1    pop         ecx
 00510DB2    pop         ecx
 00510DB3    pop         ebp
 00510DB4    ret
end;*}

//00510DB8
{*function sub_00510DB8(?:?; ?:?):?;
begin
 00510DB8    push        ebp
 00510DB9    mov         ebp,esp
 00510DBB    add         esp,0FFFFFFE8
 00510DBE    xor         ecx,ecx
 00510DC0    mov         dword ptr [ebp-18],ecx
 00510DC3    mov         dword ptr [ebp-8],edx
 00510DC6    mov         dword ptr [ebp-4],eax
 00510DC9    xor         eax,eax
 00510DCB    push        ebp
 00510DCC    push        510E4D
 00510DD1    push        dword ptr fs:[eax]
 00510DD4    mov         dword ptr fs:[eax],esp
 00510DD7    xor         eax,eax
 00510DD9    mov         dword ptr [ebp-0C],eax
 00510DDC    mov         eax,dword ptr [ebp-4]
 00510DDF    mov         edx,dword ptr [eax]
 00510DE1    call        dword ptr [edx+114]
 00510DE7    dec         eax
 00510DE8    test        eax,eax
>00510DEA    jl          00510E37
 00510DEC    inc         eax
 00510DED    mov         dword ptr [ebp-14],eax
 00510DF0    mov         dword ptr [ebp-10],0
 00510DF7    mov         edx,dword ptr [ebp-10]
 00510DFA    mov         eax,dword ptr [ebp-4]
 00510DFD    mov         ecx,dword ptr [eax]
 00510DFF    call        dword ptr [ecx+108]
 00510E05    lea         edx,[ebp-18]
 00510E08    call        TControl.GetText
 00510E0D    mov         eax,dword ptr [ebp-18]
 00510E10    mov         edx,dword ptr [ebp-8]
 00510E13    call        00466420
 00510E18    test        eax,eax
>00510E1A    jne         00510E2F
 00510E1C    mov         edx,dword ptr [ebp-10]
 00510E1F    mov         eax,dword ptr [ebp-4]
 00510E22    mov         ecx,dword ptr [eax]
 00510E24    call        dword ptr [ecx+108]
 00510E2A    mov         dword ptr [ebp-0C],eax
>00510E2D    jmp         00510E37
 00510E2F    inc         dword ptr [ebp-10]
 00510E32    dec         dword ptr [ebp-14]
>00510E35    jne         00510DF7
 00510E37    xor         eax,eax
 00510E39    pop         edx
 00510E3A    pop         ecx
 00510E3B    pop         ecx
 00510E3C    mov         dword ptr fs:[eax],edx
 00510E3F    push        510E54
 00510E44    lea         eax,[ebp-18]
 00510E47    call        @LStrClr
 00510E4C    ret
>00510E4D    jmp         @HandleFinally
>00510E52    jmp         00510E44
 00510E54    mov         eax,dword ptr [ebp-0C]
 00510E57    mov         esp,ebp
 00510E59    pop         ebp
 00510E5A    ret
end;*}

//00510E5C
{*function sub_00510E5C:?;
begin
 00510E5C    push        ebp
 00510E5D    mov         ebp,esp
 00510E5F    add         esp,0FFFFFFF8
 00510E62    mov         dword ptr [ebp-4],eax
 00510E65    mov         eax,dword ptr [ebp-4]
 00510E68    cmp         dword ptr [eax+210],0;TCustomActionBar.FActionClient:TActionClient
>00510E6F    je          00510E9F
 00510E71    mov         eax,dword ptr [ebp-4]
 00510E74    call        005116BC
 00510E79    test        al,al
>00510E7B    je          00510E9F
 00510E7D    mov         eax,dword ptr [ebp-4]
 00510E80    call        00511668
 00510E85    call        00479B60
 00510E8A    dec         eax
 00510E8B    push        eax
 00510E8C    mov         eax,dword ptr [ebp-4]
 00510E8F    call        00511668
 00510E94    pop         edx
 00510E95    call        0050D884
 00510E9A    mov         dword ptr [ebp-8],eax
>00510E9D    jmp         00510EA4
 00510E9F    xor         eax,eax
 00510EA1    mov         dword ptr [ebp-8],eax
 00510EA4    mov         eax,dword ptr [ebp-8]
 00510EA7    pop         ecx
 00510EA8    pop         ecx
 00510EA9    pop         ebp
 00510EAA    ret
end;*}

//00510EAC
{*function sub_00510EAC(?:?; ?:?):?;
begin
 00510EAC    push        ebp
 00510EAD    mov         ebp,esp
 00510EAF    add         esp,0FFFFFFE8
 00510EB2    push        ebx
 00510EB3    mov         byte ptr [ebp-5],dl
 00510EB6    mov         dword ptr [ebp-4],eax
 00510EB9    mov         eax,dword ptr [ebp-4]
 00510EBC    mov         edx,dword ptr [eax]
 00510EBE    call        dword ptr [edx+140]
 00510EC4    mov         dword ptr [ebp-0C],eax
 00510EC7    cmp         dword ptr [ebp-0C],0
>00510ECB    je          00510FF6
>00510ED1    jmp         00510EE6
 00510ED3    xor         ecx,ecx
 00510ED5    mov         edx,dword ptr [ebp-0C]
 00510ED8    mov         eax,dword ptr [ebp-4]
 00510EDB    mov         ebx,dword ptr [eax]
 00510EDD    call        dword ptr [ebx+0F4]
 00510EE3    mov         dword ptr [ebp-0C],eax
 00510EE6    cmp         dword ptr [ebp-0C],0
>00510EEA    je          00510EF8
 00510EEC    mov         eax,dword ptr [ebp-0C]
 00510EEF    mov         eax,dword ptr [eax+40]
 00510EF2    cmp         byte ptr [eax+57],0
>00510EF6    je          00510ED3
 00510EF8    xor         eax,eax
 00510EFA    mov         dword ptr [ebp-14],eax
 00510EFD    mov         eax,dword ptr [ebp-4]
 00510F00    mov         edx,dword ptr [eax]
 00510F02    call        dword ptr [edx+114]
 00510F08    dec         eax
 00510F09    test        eax,eax
>00510F0B    jle         00510FE5
 00510F11    mov         dword ptr [ebp-18],eax
 00510F14    mov         dword ptr [ebp-10],1
 00510F1B    mov         eax,dword ptr [ebp-4]
 00510F1E    call        00511668
 00510F23    mov         edx,dword ptr [ebp-10]
 00510F26    call        0050D884
 00510F2B    cmp         dword ptr [eax+40],0
>00510F2F    je          00510F50
 00510F31    mov         eax,dword ptr [ebp-4]
 00510F34    call        00511668
 00510F39    mov         edx,dword ptr [ebp-10]
 00510F3C    call        0050D884
 00510F41    mov         eax,dword ptr [eax+40]
 00510F44    mov         al,byte ptr [eax+57]
 00510F47    cmp         al,byte ptr [ebp-5]
>00510F4A    jne         00510FD9
 00510F50    mov         eax,dword ptr [ebp-4]
 00510F53    call        00511668
 00510F58    mov         edx,dword ptr [ebp-10]
 00510F5B    call        0050D884
 00510F60    test        eax,eax
>00510F62    je          00510FD9
 00510F64    mov         edx,dword ptr [ebp-10]
 00510F67    mov         eax,dword ptr [ebp-4]
 00510F6A    mov         ecx,dword ptr [eax]
 00510F6C    call        dword ptr [ecx+108]
 00510F72    test        eax,eax
>00510F74    je          00510FD9
 00510F76    mov         eax,dword ptr [ebp-4]
 00510F79    call        00511668
 00510F7E    mov         edx,dword ptr [ebp-10]
 00510F81    call        0050D884
 00510F86    mov         edx,dword ptr [ebp-4]
 00510F89    mov         edx,dword ptr [edx+214]
 00510F8F    mov         edx,dword ptr [edx+6C]
 00510F92    mov         edx,dword ptr [edx+28]
 00510F95    sub         edx,dword ptr [eax+5C]
 00510F98    cmp         edx,dword ptr [ebp-14]
>00510F9B    jl          00510FD9
 00510F9D    mov         eax,dword ptr [ebp-4]
 00510FA0    call        00511668
 00510FA5    mov         edx,dword ptr [ebp-10]
 00510FA8    call        0050D884
 00510FAD    mov         dword ptr [ebp-0C],eax
 00510FB0    mov         edx,dword ptr [ebp-10]
 00510FB3    mov         eax,dword ptr [ebp-4]
 00510FB6    mov         ecx,dword ptr [eax]
 00510FB8    call        dword ptr [ecx+108]
 00510FBE    mov         eax,dword ptr [eax+16C]
 00510FC4    mov         edx,dword ptr [ebp-4]
 00510FC7    mov         edx,dword ptr [edx+214]
 00510FCD    mov         edx,dword ptr [edx+6C]
 00510FD0    mov         edx,dword ptr [edx+28]
 00510FD3    sub         edx,dword ptr [eax+5C]
 00510FD6    mov         dword ptr [ebp-14],edx
 00510FD9    inc         dword ptr [ebp-10]
 00510FDC    dec         dword ptr [ebp-18]
>00510FDF    jne         00510F1B
 00510FE5    cmp         dword ptr [ebp-0C],0
>00510FE9    jne         00510FF6
 00510FEB    mov         eax,dword ptr [ebp-4]
 00510FEE    call        00511000
 00510FF3    mov         dword ptr [ebp-0C],eax
 00510FF6    mov         eax,dword ptr [ebp-0C]
 00510FF9    pop         ebx
 00510FFA    mov         esp,ebp
 00510FFC    pop         ebp
 00510FFD    ret
end;*}

//00511000
{*function sub_00511000(?:TCustomActionMenuBar):?;
begin
 00511000    push        ebp
 00511001    mov         ebp,esp
 00511003    add         esp,0FFFFFFF8
 00511006    push        ebx
 00511007    mov         dword ptr [ebp-4],eax
 0051100A    mov         eax,dword ptr [ebp-4]
 0051100D    mov         edx,dword ptr [eax]
 0051100F    call        dword ptr [edx+0EC];TCustomActionMenuBar.sub_00510E5C
 00511015    mov         dword ptr [ebp-8],eax
>00511018    jmp         0051102D
 0051101A    xor         ecx,ecx
 0051101C    mov         edx,dword ptr [ebp-8]
 0051101F    mov         eax,dword ptr [ebp-4]
 00511022    mov         ebx,dword ptr [eax]
 00511024    call        dword ptr [ebx+0F4];TCustomActionMenuBar.sub_0051149C
 0051102A    mov         dword ptr [ebp-8],eax
 0051102D    cmp         dword ptr [ebp-8],0
>00511031    je          00511051
 00511033    mov         eax,dword ptr [ebp-8]
 00511036    cmp         dword ptr [eax+40],0
>0051103A    je          0051101A
 0051103C    mov         eax,dword ptr [ebp-8]
 0051103F    cmp         dword ptr [eax+40],0
>00511043    je          00511051
 00511045    mov         eax,dword ptr [ebp-8]
 00511048    mov         eax,dword ptr [eax+40]
 0051104B    cmp         byte ptr [eax+57],0
>0051104F    je          0051101A
 00511051    mov         eax,dword ptr [ebp-8]
 00511054    pop         ebx
 00511055    pop         ecx
 00511056    pop         ecx
 00511057    pop         ebp
 00511058    ret
end;*}

//0051105C
{*function sub_0051105C(?:TCustomActionDockBar):?;
begin
 0051105C    push        ebp
 0051105D    mov         ebp,esp
 0051105F    add         esp,0FFFFFFF8
 00511062    push        ebx
 00511063    mov         dword ptr [ebp-4],eax
 00511066    mov         eax,dword ptr [ebp-4]
 00511069    mov         edx,dword ptr [eax]
 0051106B    call        dword ptr [edx+140];TCustomActionDockBar.sub_00510D68
 00511071    mov         dword ptr [ebp-8],eax
>00511074    jmp         00511089
 00511076    xor         ecx,ecx
 00511078    mov         edx,dword ptr [ebp-8]
 0051107B    mov         eax,dword ptr [ebp-4]
 0051107E    mov         ebx,dword ptr [eax]
 00511080    call        dword ptr [ebx+0F0];TCustomActionDockBar.sub_005113F8
 00511086    mov         dword ptr [ebp-8],eax
 00511089    cmp         dword ptr [ebp-8],0
>0051108D    je          005110A4
 0051108F    mov         eax,dword ptr [ebp-8]
 00511092    cmp         dword ptr [eax+40],0
>00511096    je          005110A4
 00511098    mov         eax,dword ptr [ebp-8]
 0051109B    mov         eax,dword ptr [eax+40]
 0051109E    cmp         byte ptr [eax+57],0
>005110A2    je          00511076
 005110A4    mov         eax,dword ptr [ebp-8]
 005110A7    pop         ebx
 005110A8    pop         ecx
 005110A9    pop         ecx
 005110AA    pop         ebp
 005110AB    ret
end;*}

//005110AC
{*function sub_005110AC(?:TPoint; ?:?):?;
begin
 005110AC    push        ebp
 005110AD    mov         ebp,esp
 005110AF    add         esp,0FFFFFFF0
 005110B2    push        esi
 005110B3    push        edi
 005110B4    mov         esi,eax
 005110B6    lea         edi,[ebp-8]
 005110B9    movs        dword ptr [edi],dword ptr [esi]
 005110BA    movs        dword ptr [edi],dword ptr [esi]
 005110BB    mov         dword ptr [ebp-0C],1
 005110C2    mov         eax,dword ptr [ebp+8]
 005110C5    mov         eax,dword ptr [eax-4]
 005110C8    cmp         dword ptr [eax+250],1
>005110CF    jle         00511108
 005110D1    mov         eax,dword ptr [ebp+8]
 005110D4    mov         eax,dword ptr [eax-4]
 005110D7    mov         edx,dword ptr [eax]
 005110D9    call        dword ptr [edx+0FC]
 005110DF    mov         edx,dword ptr [ebp+8]
 005110E2    mov         edx,dword ptr [edx-4]
 005110E5    mov         ecx,dword ptr [edx+250]
 005110EB    cdq
 005110EC    idiv        eax,ecx
 005110EE    mov         dword ptr [ebp-10],eax
 005110F1    mov         dword ptr [ebp-0C],1
>005110F8    jmp         005110FD
 005110FA    inc         dword ptr [ebp-0C]
 005110FD    mov         eax,dword ptr [ebp-10]
 00511100    imul        dword ptr [ebp-0C]
 00511103    cmp         eax,dword ptr [ebp-4]
>00511106    jl          005110FA
 00511108    mov         eax,dword ptr [ebp+8]
 0051110B    mov         eax,dword ptr [eax-4]
 0051110E    cmp         dword ptr [eax+24C],1
>00511115    jle         0051114E
 00511117    mov         eax,dword ptr [ebp+8]
 0051111A    mov         eax,dword ptr [eax-4]
 0051111D    mov         edx,dword ptr [eax]
 0051111F    call        dword ptr [edx+100]
 00511125    mov         edx,dword ptr [ebp+8]
 00511128    mov         edx,dword ptr [edx-4]
 0051112B    mov         ecx,dword ptr [edx+24C]
 00511131    cdq
 00511132    idiv        eax,ecx
 00511134    mov         dword ptr [ebp-10],eax
 00511137    mov         dword ptr [ebp-0C],1
>0051113E    jmp         00511143
 00511140    inc         dword ptr [ebp-0C]
 00511143    mov         eax,dword ptr [ebp-10]
 00511146    imul        dword ptr [ebp-0C]
 00511149    cmp         eax,dword ptr [ebp-8]
>0051114C    jl          00511140
 0051114E    mov         eax,dword ptr [ebp-0C]
 00511151    pop         edi
 00511152    pop         esi
 00511153    mov         esp,ebp
 00511155    pop         ebp
 00511156    ret
end;*}

//00511158
{*function sub_00511158(?:TCustomActionBar; ?:?):?;
begin
 00511158    push        ebp
 00511159    mov         ebp,esp
 0051115B    add         esp,0FFFFFFC4
 0051115E    mov         dword ptr [ebp-8],edx
 00511161    mov         dword ptr [ebp-4],eax
 00511164    push        0
 00511166    mov         edx,dword ptr [ebp-8]
 00511169    mov         cl,1
 0051116B    mov         eax,dword ptr [ebp-4]
 0051116E    call        004D052C
 00511173    mov         dword ptr [ebp-28],eax
 00511176    mov         eax,dword ptr [ebp-28]
 00511179    mov         edx,dword ptr ds:[509FE4];TCustomActionControl
 0051117F    call        @IsClass
 00511184    test        al,al
>00511186    je          00511193
 00511188    mov         eax,dword ptr [ebp-28]
 0051118B    mov         dword ptr [ebp-0C],eax
>0051118E    jmp         00511397
 00511193    xor         eax,eax
 00511195    mov         dword ptr [ebp-0C],eax
 00511198    mov         dword ptr [ebp-14],7FFFFFFF
 0051119F    push        ebp
 005111A0    mov         eax,dword ptr [ebp-8]
 005111A3    call        005110AC
 005111A8    pop         ecx
 005111A9    mov         dword ptr [ebp-24],eax
 005111AC    mov         eax,dword ptr [ebp-4]
 005111AF    mov         edx,dword ptr [eax]
 005111B1    call        dword ptr [edx+114];TCustomActionToolBar.sub_00511728
 005111B7    dec         eax
 005111B8    test        eax,eax
>005111BA    jl          00511397
 005111C0    inc         eax
 005111C1    mov         dword ptr [ebp-2C],eax
 005111C4    mov         dword ptr [ebp-10],0
 005111CB    mov         eax,dword ptr [ebp-4]
 005111CE    call        00511668
 005111D3    mov         edx,dword ptr [ebp-10]
 005111D6    call        0050D884
 005111DB    cmp         dword ptr [eax+40],0
>005111DF    je          0051138B
 005111E5    mov         eax,dword ptr [ebp-4]
 005111E8    call        00511668
 005111ED    mov         edx,dword ptr [ebp-10]
 005111F0    call        0050D884
 005111F5    mov         eax,dword ptr [eax+40]
 005111F8    cmp         byte ptr [eax+57],0
>005111FC    je          0051138B
 00511202    push        ebp
 00511203    mov         eax,dword ptr [ebp-4]
 00511206    call        00511668
 0051120B    mov         edx,dword ptr [ebp-10]
 0051120E    call        0050D884
 00511213    mov         eax,dword ptr [eax+40]
 00511216    lea         edx,[ebp-3C]
 00511219    call        004CA6AC
 0051121E    lea         eax,[ebp-3C]
 00511221    call        005110AC
 00511226    pop         ecx
 00511227    cmp         eax,dword ptr [ebp-24]
>0051122A    jne         0051138B
 00511230    mov         eax,dword ptr [ebp-8]
 00511233    mov         eax,dword ptr [eax]
 00511235    mov         dword ptr [ebp-1C],eax
 00511238    mov         eax,dword ptr [ebp-8]
 0051123B    mov         eax,dword ptr [eax+4]
 0051123E    mov         dword ptr [ebp-20],eax
 00511241    mov         eax,dword ptr [ebp-4]
 00511244    call        00511668
 00511249    mov         edx,dword ptr [ebp-10]
 0051124C    call        0050D884
 00511251    mov         eax,dword ptr [eax+40]
 00511254    mov         eax,dword ptr [eax+40]
 00511257    mov         edx,dword ptr [ebp-8]
 0051125A    cmp         eax,dword ptr [edx]
>0051125C    jle         00511277
 0051125E    mov         eax,dword ptr [ebp-4]
 00511261    call        00511668
 00511266    mov         edx,dword ptr [ebp-10]
 00511269    call        0050D884
 0051126E    mov         eax,dword ptr [eax+40]
 00511271    mov         eax,dword ptr [eax+40]
 00511274    mov         dword ptr [ebp-1C],eax
 00511277    mov         eax,dword ptr [ebp-4]
 0051127A    call        00511668
 0051127F    mov         edx,dword ptr [ebp-10]
 00511282    call        0050D884
 00511287    mov         eax,dword ptr [eax+40]
 0051128A    mov         eax,dword ptr [eax+44]
 0051128D    mov         edx,dword ptr [ebp-8]
 00511290    cmp         eax,dword ptr [edx+4]
>00511293    jle         005112AE
 00511295    mov         eax,dword ptr [ebp-4]
 00511298    call        00511668
 0051129D    mov         edx,dword ptr [ebp-10]
 005112A0    call        0050D884
 005112A5    mov         eax,dword ptr [eax+40]
 005112A8    mov         eax,dword ptr [eax+44]
 005112AB    mov         dword ptr [ebp-20],eax
 005112AE    mov         eax,dword ptr [ebp-4]
 005112B1    call        00511668
 005112B6    mov         edx,dword ptr [ebp-10]
 005112B9    call        0050D884
 005112BE    mov         eax,dword ptr [eax+40]
 005112C1    lea         edx,[ebp-3C]
 005112C4    call        004CA6AC
 005112C9    mov         eax,dword ptr [ebp-34]
 005112CC    mov         edx,dword ptr [ebp-8]
 005112CF    cmp         eax,dword ptr [edx]
>005112D1    jge         005112F4
 005112D3    mov         eax,dword ptr [ebp-4]
 005112D6    call        00511668
 005112DB    mov         edx,dword ptr [ebp-10]
 005112DE    call        0050D884
 005112E3    mov         eax,dword ptr [eax+40]
 005112E6    lea         edx,[ebp-3C]
 005112E9    call        004CA6AC
 005112EE    mov         eax,dword ptr [ebp-34]
 005112F1    mov         dword ptr [ebp-1C],eax
 005112F4    mov         eax,dword ptr [ebp-4]
 005112F7    call        00511668
 005112FC    mov         edx,dword ptr [ebp-10]
 005112FF    call        0050D884
 00511304    mov         eax,dword ptr [eax+40]
 00511307    lea         edx,[ebp-3C]
 0051130A    call        004CA6AC
 0051130F    mov         eax,dword ptr [ebp-30]
 00511312    mov         edx,dword ptr [ebp-8]
 00511315    cmp         eax,dword ptr [edx+4]
>00511318    jge         0051133B
 0051131A    mov         eax,dword ptr [ebp-4]
 0051131D    call        00511668
 00511322    mov         edx,dword ptr [ebp-10]
 00511325    call        0050D884
 0051132A    mov         eax,dword ptr [eax+40]
 0051132D    lea         edx,[ebp-3C]
 00511330    call        004CA6AC
 00511335    mov         eax,dword ptr [ebp-30]
 00511338    mov         dword ptr [ebp-20],eax
 0051133B    mov         eax,dword ptr [ebp-8]
 0051133E    mov         eax,dword ptr [eax]
 00511340    sub         eax,dword ptr [ebp-1C]
 00511343    mov         edx,dword ptr [ebp-8]
 00511346    mov         edx,dword ptr [edx]
 00511348    sub         edx,dword ptr [ebp-1C]
 0051134B    imul        edx
 0051134D    mov         edx,dword ptr [ebp-8]
 00511350    mov         edx,dword ptr [edx+4]
 00511353    sub         edx,dword ptr [ebp-20]
 00511356    mov         ecx,dword ptr [ebp-8]
 00511359    mov         ecx,dword ptr [ecx+4]
 0051135C    sub         ecx,dword ptr [ebp-20]
 0051135F    imul        edx,ecx
 00511362    add         eax,edx
 00511364    mov         dword ptr [ebp-18],eax
 00511367    mov         eax,dword ptr [ebp-18]
 0051136A    cmp         eax,dword ptr [ebp-14]
>0051136D    jge         0051138B
 0051136F    mov         eax,dword ptr [ebp-18]
 00511372    mov         dword ptr [ebp-14],eax
 00511375    mov         eax,dword ptr [ebp-4]
 00511378    call        00511668
 0051137D    mov         edx,dword ptr [ebp-10]
 00511380    call        0050D884
 00511385    mov         eax,dword ptr [eax+40]
 00511388    mov         dword ptr [ebp-0C],eax
 0051138B    inc         dword ptr [ebp-10]
 0051138E    dec         dword ptr [ebp-2C]
>00511391    jne         005111CB
 00511397    mov         eax,dword ptr [ebp-0C]
 0051139A    mov         esp,ebp
 0051139C    pop         ebp
 0051139D    ret
end;*}

//005113A0
{*function sub_005113A0(?:TCustomActionDockBar; ?:TActionClientItem):?;
begin
 005113A0    push        ebp
 005113A1    mov         ebp,esp
 005113A3    add         esp,0FFFFFFF4
 005113A6    push        ebx
 005113A7    mov         dword ptr [ebp-8],edx
 005113AA    mov         dword ptr [ebp-4],eax
 005113AD    xor         ecx,ecx
 005113AF    mov         edx,dword ptr [ebp-8]
 005113B2    mov         eax,dword ptr [ebp-4]
 005113B5    mov         ebx,dword ptr [eax]
 005113B7    call        dword ptr [ebx+0F0];TCustomActionDockBar.sub_005113F8
 005113BD    mov         dword ptr [ebp-0C],eax
>005113C0    jmp         005113D5
 005113C2    xor         ecx,ecx
 005113C4    mov         edx,dword ptr [ebp-0C]
 005113C7    mov         eax,dword ptr [ebp-4]
 005113CA    mov         ebx,dword ptr [eax]
 005113CC    call        dword ptr [ebx+0F0];TCustomActionDockBar.sub_005113F8
 005113D2    mov         dword ptr [ebp-0C],eax
 005113D5    cmp         dword ptr [ebp-0C],0
>005113D9    je          005113F0
 005113DB    mov         eax,dword ptr [ebp-0C]
 005113DE    cmp         dword ptr [eax+40],0
>005113E2    je          005113F0
 005113E4    mov         eax,dword ptr [ebp-0C]
 005113E7    mov         eax,dword ptr [eax+40]
 005113EA    cmp         byte ptr [eax+57],0
>005113EE    je          005113C2
 005113F0    mov         eax,dword ptr [ebp-0C]
 005113F3    pop         ebx
 005113F4    mov         esp,ebp
 005113F6    pop         ebp
 005113F7    ret
end;*}

//005113F8
{*function sub_005113F8(?:?; ?:?):?;
begin
 005113F8    push        ebp
 005113F9    mov         ebp,esp
 005113FB    add         esp,0FFFFFFF0
 005113FE    push        ebx
 005113FF    mov         byte ptr [ebp-9],cl
 00511402    mov         dword ptr [ebp-8],edx
 00511405    mov         dword ptr [ebp-4],eax
 00511408    xor         eax,eax
 0051140A    mov         dword ptr [ebp-10],eax
 0051140D    cmp         dword ptr [ebp-8],0
>00511411    je          00511480
 00511413    mov         eax,dword ptr [ebp-4]
 00511416    call        005116BC
 0051141B    test        al,al
>0051141D    je          00511458
 0051141F    mov         eax,dword ptr [ebp-8]
 00511422    call        TCollectionItem.GetIndex
 00511427    mov         ebx,eax
 00511429    mov         eax,dword ptr [ebp-4]
 0051142C    call        00511668
 00511431    call        00479B60
 00511436    dec         eax
 00511437    cmp         ebx,eax
>00511439    jge         00511458
 0051143B    mov         eax,dword ptr [ebp-8]
 0051143E    call        TCollectionItem.GetIndex
 00511443    inc         eax
 00511444    push        eax
 00511445    mov         eax,dword ptr [ebp-4]
 00511448    call        00511668
 0051144D    pop         edx
 0051144E    call        0050D884
 00511453    mov         dword ptr [ebp-10],eax
>00511456    jmp         00511494
 00511458    cmp         byte ptr [ebp-9],0
>0051145C    je          00511494
 0051145E    mov         eax,dword ptr [ebp-4]
 00511461    mov         edx,dword ptr [eax]
 00511463    call        dword ptr [edx+114];TCustomActionBar.sub_00511728
 00511469    dec         eax
>0051146A    jle         00511494
 0051146C    mov         eax,dword ptr [ebp-4]
 0051146F    call        00511668
 00511474    xor         edx,edx
 00511476    call        0050D884
 0051147B    mov         dword ptr [ebp-10],eax
>0051147E    jmp         00511494
 00511480    cmp         byte ptr [ebp-9],0
>00511484    je          00511494
 00511486    mov         eax,dword ptr [ebp-4]
 00511489    mov         edx,dword ptr [eax]
 0051148B    call        dword ptr [edx+140];TCustomActionBar.sub_00510D68
 00511491    mov         dword ptr [ebp-10],eax
 00511494    mov         eax,dword ptr [ebp-10]
 00511497    pop         ebx
 00511498    mov         esp,ebp
 0051149A    pop         ebp
 0051149B    ret
end;*}

//0051149C
{*function sub_0051149C(?:?; ?:?):?;
begin
 0051149C    push        ebp
 0051149D    mov         ebp,esp
 0051149F    add         esp,0FFFFFFF0
 005114A2    mov         byte ptr [ebp-9],cl
 005114A5    mov         dword ptr [ebp-8],edx
 005114A8    mov         dword ptr [ebp-4],eax
 005114AB    xor         eax,eax
 005114AD    mov         dword ptr [ebp-10],eax
 005114B0    cmp         dword ptr [ebp-8],0
>005114B4    je          00511515
 005114B6    mov         eax,dword ptr [ebp-8]
 005114B9    call        TCollectionItem.GetIndex
 005114BE    test        eax,eax
>005114C0    jle         005114DF
 005114C2    mov         eax,dword ptr [ebp-8]
 005114C5    call        TCollectionItem.GetIndex
 005114CA    dec         eax
 005114CB    push        eax
 005114CC    mov         eax,dword ptr [ebp-4]
 005114CF    call        00511668
 005114D4    pop         edx
 005114D5    call        0050D884
 005114DA    mov         dword ptr [ebp-10],eax
>005114DD    jmp         00511529
 005114DF    cmp         byte ptr [ebp-9],0
>005114E3    je          00511529
 005114E5    mov         eax,dword ptr [ebp-4]
 005114E8    mov         edx,dword ptr [eax]
 005114EA    call        dword ptr [edx+114];TCustomActionBar.sub_00511728
 005114F0    dec         eax
>005114F1    jle         00511529
 005114F3    mov         eax,dword ptr [ebp-4]
 005114F6    call        00511668
 005114FB    call        00479B60
 00511500    dec         eax
 00511501    push        eax
 00511502    mov         eax,dword ptr [ebp-4]
 00511505    call        00511668
 0051150A    pop         edx
 0051150B    call        0050D884
 00511510    mov         dword ptr [ebp-10],eax
>00511513    jmp         00511529
 00511515    cmp         byte ptr [ebp-9],0
>00511519    je          00511529
 0051151B    mov         eax,dword ptr [ebp-4]
 0051151E    mov         edx,dword ptr [eax]
 00511520    call        dword ptr [edx+0EC];TCustomActionBar.sub_00510E5C
 00511526    mov         dword ptr [ebp-10],eax
 00511529    mov         eax,dword ptr [ebp-10]
 0051152C    mov         esp,ebp
 0051152E    pop         ebp
 0051152F    ret
end;*}

//00511530
{*function sub_00511530(?:?):?;
begin
 00511530    push        ebp
 00511531    mov         ebp,esp
 00511533    add         esp,0FFFFFFF4
 00511536    mov         dword ptr [ebp-8],edx
 00511539    mov         dword ptr [ebp-4],eax
 0051153C    cmp         dword ptr [ebp-8],0
>00511540    jl          0051156A
 00511542    mov         eax,dword ptr [ebp-4]
 00511545    mov         edx,dword ptr [eax]
 00511547    call        dword ptr [edx+114];TCustomActionBar.sub_00511728
 0051154D    cmp         eax,dword ptr [ebp-8]
>00511550    jle         0051156A
 00511552    mov         eax,dword ptr [ebp-4]
 00511555    call        00511668
 0051155A    mov         edx,dword ptr [ebp-8]
 0051155D    call        0050D884
 00511562    mov         eax,dword ptr [eax+40]
 00511565    mov         dword ptr [ebp-0C],eax
>00511568    jmp         0051156F
 0051156A    xor         eax,eax
 0051156C    mov         dword ptr [ebp-0C],eax
 0051156F    mov         eax,dword ptr [ebp-0C]
 00511572    mov         esp,ebp
 00511574    pop         ebp
 00511575    ret
end;*}

//00511578
{*function sub_00511578(?:?):?;
begin
 00511578    push        ebp
 00511579    mov         ebp,esp
 0051157B    add         esp,0FFFFFFF4
 0051157E    mov         byte ptr [ebp-5],dl
 00511581    mov         dword ptr [ebp-4],eax
 00511584    xor         eax,eax
 00511586    mov         dword ptr [ebp-0C],eax
 00511589    mov         eax,dword ptr [ebp-4]
 0051158C    cmp         dword ptr [eax+210],0;TCustomActionBar.FActionClient:TActionClient
>00511593    je          00511630
 00511599    mov         al,byte ptr [ebp-5]
 0051159C    sub         al,1
>0051159E    jb          005115AB
>005115A0    je          005115D7
 005115A2    dec         al
>005115A4    je          00511603
>005115A6    jmp         00511630
 005115AB    mov         eax,dword ptr [ebp-4]
 005115AE    mov         eax,dword ptr [eax+210];TCustomActionBar.FActionClient:TActionClient
 005115B4    cmp         byte ptr [eax+14],3;TActionClient.BackgroundLayout:TBackgroundLayout
>005115B8    jne         00511630
 005115BA    mov         eax,dword ptr [ebp-4]
 005115BD    mov         eax,dword ptr [eax+210];TCustomActionBar.FActionClient:TActionClient
 005115C3    call        TActionClient.GetBackground
 005115C8    call        0048A950
 005115CD    mov         edx,dword ptr [eax]
 005115CF    call        dword ptr [edx+2C]
 005115D2    mov         dword ptr [ebp-0C],eax
>005115D5    jmp         00511630
 005115D7    mov         eax,dword ptr [ebp-4]
 005115DA    mov         eax,dword ptr [eax+210];TCustomActionBar.FActionClient:TActionClient
 005115E0    cmp         byte ptr [eax+14],4;TActionClient.BackgroundLayout:TBackgroundLayout
>005115E4    jne         00511630
 005115E6    mov         eax,dword ptr [ebp-4]
 005115E9    mov         eax,dword ptr [eax+210];TCustomActionBar.FActionClient:TActionClient
 005115EF    call        TActionClient.GetBackground
 005115F4    call        0048A950
 005115F9    mov         edx,dword ptr [eax]
 005115FB    call        dword ptr [edx+2C]
 005115FE    mov         dword ptr [ebp-0C],eax
>00511601    jmp         00511630
 00511603    mov         eax,dword ptr [ebp-4]
 00511606    mov         eax,dword ptr [eax+210];TCustomActionBar.FActionClient:TActionClient
 0051160C    mov         al,byte ptr [eax+14];TActionClient.BackgroundLayout:TBackgroundLayout
 0051160F    add         al,0FD
 00511611    sub         al,2
>00511613    jae         00511630
 00511615    mov         eax,dword ptr [ebp-4]
 00511618    mov         eax,dword ptr [eax+210];TCustomActionBar.FActionClient:TActionClient
 0051161E    call        TActionClient.GetBackground
 00511623    call        0048A950
 00511628    mov         edx,dword ptr [eax]
 0051162A    call        dword ptr [edx+2C]
 0051162D    mov         dword ptr [ebp-0C],eax
 00511630    mov         eax,dword ptr [ebp-0C]
 00511633    mov         esp,ebp
 00511635    pop         ebp
 00511636    ret
end;*}

//00511638
{*function sub_00511638(?:?):?;
begin
 00511638    push        ebp
 00511639    mov         ebp,esp
 0051163B    add         esp,0FFFFFFF4
 0051163E    push        ebx
 0051163F    mov         dword ptr [ebp-8],edx
 00511642    mov         dword ptr [ebp-4],eax
 00511645    mov         eax,dword ptr [ebp-4]
 00511648    mov         edx,dword ptr [eax]
 0051164A    call        dword ptr [edx+148];TCustomActionBar.sub_0051331C
 00511650    mov         ecx,dword ptr [ebp-8]
 00511653    mov         edx,dword ptr [ebp-4]
 00511656    mov         ebx,dword ptr [eax]
 00511658    call        dword ptr [ebx]
 0051165A    mov         dword ptr [ebp-0C],eax
 0051165D    mov         eax,dword ptr [ebp-0C]
 00511660    pop         ebx
 00511661    mov         esp,ebp
 00511663    pop         ebp
 00511664    ret
end;*}

//00511668
{*function sub_00511668(?:TCustomActionBar):?;
begin
 00511668    push        ebp
 00511669    mov         ebp,esp
 0051166B    add         esp,0FFFFFFF8
 0051166E    mov         dword ptr [ebp-4],eax
 00511671    xor         eax,eax
 00511673    mov         dword ptr [ebp-8],eax
 00511676    mov         eax,dword ptr [ebp-4]
 00511679    cmp         dword ptr [eax+210],0;TCustomActionBar.FActionClient:TActionClient
>00511680    je          005116B2
 00511682    mov         eax,dword ptr [ebp-4]
 00511685    cmp         byte ptr [eax+270],0;TCustomActionBar.FContextBar:Boolean
>0051168C    je          005116A1
 0051168E    mov         eax,dword ptr [ebp-4]
 00511691    mov         eax,dword ptr [eax+210];TCustomActionBar.FActionClient:TActionClient
 00511697    call        TActionClient.GetContextItems
 0051169C    mov         dword ptr [ebp-8],eax
>0051169F    jmp         005116B2
 005116A1    mov         eax,dword ptr [ebp-4]
 005116A4    mov         eax,dword ptr [eax+210];TCustomActionBar.FActionClient:TActionClient
 005116AA    call        TActionClient.GetItems
 005116AF    mov         dword ptr [ebp-8],eax
 005116B2    mov         eax,dword ptr [ebp-8]
 005116B5    pop         ecx
 005116B6    pop         ecx
 005116B7    pop         ebp
 005116B8    ret
end;*}

//005116BC
{*function sub_005116BC(?:TCustomActionBar):?;
begin
 005116BC    push        ebp
 005116BD    mov         ebp,esp
 005116BF    add         esp,0FFFFFFF8
 005116C2    mov         dword ptr [ebp-4],eax
 005116C5    mov         byte ptr [ebp-5],0
 005116C9    mov         eax,dword ptr [ebp-4]
 005116CC    cmp         dword ptr [eax+210],0;TCustomActionBar.FActionClient:TActionClient
>005116D3    je          00511721
 005116D5    mov         eax,dword ptr [ebp-4]
 005116D8    cmp         byte ptr [eax+270],0;TCustomActionBar.FContextBar:Boolean
>005116DF    je          00511710
 005116E1    mov         eax,dword ptr [ebp-4]
 005116E4    mov         eax,dword ptr [eax+210];TCustomActionBar.FActionClient:TActionClient
 005116EA    cmp         dword ptr [eax+1C],0;TActionClient.FContextItems:TActionClients
>005116EE    je          00511705
 005116F0    mov         eax,dword ptr [ebp-4]
 005116F3    mov         eax,dword ptr [eax+210];TCustomActionBar.FActionClient:TActionClient
 005116F9    mov         eax,dword ptr [eax+1C];TActionClient.FContextItems:TActionClients
 005116FC    call        00479B60
 00511701    test        eax,eax
>00511703    jg          00511709
 00511705    xor         eax,eax
>00511707    jmp         0051170B
 00511709    mov         al,1
 0051170B    mov         byte ptr [ebp-5],al
>0051170E    jmp         00511721
 00511710    mov         eax,dword ptr [ebp-4]
 00511713    mov         eax,dword ptr [eax+210];TCustomActionBar.FActionClient:TActionClient
 00511719    call        0050CB98
 0051171E    mov         byte ptr [ebp-5],al
 00511721    mov         al,byte ptr [ebp-5]
 00511724    pop         ecx
 00511725    pop         ecx
 00511726    pop         ebp
 00511727    ret
end;*}

//00511728
{*function sub_00511728:?;
begin
 00511728    push        ebp
 00511729    mov         ebp,esp
 0051172B    add         esp,0FFFFFFF8
 0051172E    mov         dword ptr [ebp-4],eax
 00511731    mov         eax,dword ptr [ebp-4]
 00511734    cmp         dword ptr [eax+210],0;TCustomActionBar.FActionClient:TActionClient
>0051173B    je          0051175B
 0051173D    mov         eax,dword ptr [ebp-4]
 00511740    call        005116BC
 00511745    test        al,al
>00511747    je          0051175B
 00511749    mov         eax,dword ptr [ebp-4]
 0051174C    call        00511668
 00511751    call        00479B60
 00511756    mov         dword ptr [ebp-8],eax
>00511759    jmp         00511760
 0051175B    xor         eax,eax
 0051175D    mov         dword ptr [ebp-8],eax
 00511760    mov         eax,dword ptr [ebp-8]
 00511763    pop         ecx
 00511764    pop         ecx
 00511765    pop         ebp
 00511766    ret
end;*}

//00511768
procedure TCustomActionBar.Loaded;
begin
{*
 00511768    push        ebp
 00511769    mov         ebp,esp
 0051176B    add         esp,0FFFFFFF8
 0051176E    mov         dword ptr [ebp-4],eax
 00511771    mov         eax,dword ptr [ebp-4]
 00511774    call        TControl.Loaded
 00511779    mov         eax,dword ptr [ebp-4]
 0051177C    cmp         dword ptr [eax+214],0;TCustomActionBar.FActionManager:TCustomActionManager
>00511783    je          0051179C
 00511785    mov         eax,dword ptr [ebp-4]
 00511788    mov         eax,dword ptr [eax+214];TCustomActionBar.FActionManager:TCustomActionManager
 0051178E    mov         dword ptr [ebp-8],eax
 00511791    mov         edx,dword ptr [ebp-8]
 00511794    mov         eax,dword ptr [ebp-4]
 00511797    call        TActionToolBar.SetActionManager
 0051179C    mov         eax,dword ptr [ebp-4]
 0051179F    cmp         dword ptr [eax+220],0;TCustomActionBar.FColorMap:TCustomActionBarColorMap
>005117A6    jne         005117BD
 005117A8    mov         eax,dword ptr [ebp-4]
 005117AB    call        00512A60
 005117B0    mov         edx,eax
 005117B2    mov         eax,dword ptr [ebp-4]
 005117B5    mov         ecx,dword ptr [eax]
 005117B7    call        dword ptr [ecx+12C];TActionToolBar.SetColorMap
 005117BD    pop         ecx
 005117BE    pop         ecx
 005117BF    pop         ebp
 005117C0    ret
*}
end;

//005117C4
procedure TCustomActionBar.Notification(AComponent:TComponent; Operation:TOperation);
begin
{*
 005117C4    push        ebp
 005117C5    mov         ebp,esp
 005117C7    add         esp,0FFFFFFF4
 005117CA    mov         byte ptr [ebp-9],cl
 005117CD    mov         dword ptr [ebp-8],edx
 005117D0    mov         dword ptr [ebp-4],eax
 005117D3    mov         cl,byte ptr [ebp-9]
 005117D6    mov         edx,dword ptr [ebp-8]
 005117D9    mov         eax,dword ptr [ebp-4]
 005117DC    call        TControl.Notification
 005117E1    mov         al,byte ptr [ebp-9]
 005117E4    dec         al
>005117E6    jne         00511832
 005117E8    mov         eax,dword ptr [ebp-8]
 005117EB    mov         edx,dword ptr [ebp-4]
 005117EE    cmp         eax,dword ptr [edx+214];TCustomActionBar.FActionManager:TCustomActionManager
>005117F4    jne         0051180E
 005117F6    mov         eax,dword ptr [ebp-4]
 005117F9    mov         edx,dword ptr [eax]
 005117FB    call        dword ptr [edx+0D0];TCustomActionBar.sub_0050FDF4
 00511801    mov         eax,dword ptr [ebp-4]
 00511804    xor         edx,edx
 00511806    mov         dword ptr [eax+214],edx;TCustomActionBar.FActionManager:TCustomActionManager
>0051180C    jmp         00511832
 0051180E    mov         eax,dword ptr [ebp-8]
 00511811    mov         edx,dword ptr [ebp-4]
 00511814    cmp         eax,dword ptr [edx+220];TCustomActionBar.FColorMap:TCustomActionBarColorMap
>0051181A    jne         00511832
 0051181C    mov         eax,dword ptr [ebp-4]
 0051181F    test        byte ptr [eax+1C],8;TCustomActionBar.FComponentState:TComponentState
>00511823    jne         00511832
 00511825    xor         edx,edx
 00511827    mov         eax,dword ptr [ebp-4]
 0051182A    mov         ecx,dword ptr [eax]
 0051182C    call        dword ptr [ecx+12C];TActionToolBar.SetColorMap
 00511832    mov         esp,ebp
 00511834    pop         ebp
 00511835    ret
*}
end;

//00511838
procedure sub_00511838;
begin
{*
 00511838    push        ebp
 00511839    mov         ebp,esp
 0051183B    push        ecx
 0051183C    push        ebx
 0051183D    mov         dword ptr [ebp-4],eax
 00511840    mov         eax,dword ptr [ebp-4]
 00511843    mov         edx,dword ptr [eax]
 00511845    call        dword ptr [edx+118];TCustomActionBar.sub_00510888
 0051184B    mov         eax,dword ptr [ebp-4]
 0051184E    cmp         word ptr [eax+242],0;TCustomActionBar.?f242:word
>00511856    je          0051186A
 00511858    mov         ebx,dword ptr [ebp-4]
 0051185B    mov         edx,dword ptr [ebp-4]
 0051185E    mov         eax,dword ptr [ebx+244];TCustomActionBar.?f244:dword
 00511864    call        dword ptr [ebx+240];TCustomActionBar.FOnPaint
 0051186A    pop         ebx
 0051186B    pop         ecx
 0051186C    pop         ebp
 0051186D    ret
*}
end;

//00511870
{*procedure sub_00511870(?:?);
begin
 00511870    push        ebp
 00511871    mov         ebp,esp
 00511873    add         esp,0FFFFFFF8
 00511876    mov         dword ptr [ebp-8],edx
 00511879    mov         dword ptr [ebp-4],eax
 0051187C    mov         eax,dword ptr [ebp-4]
 0051187F    mov         eax,dword ptr [eax+21C];TCustomActionBar.FCanvas:TCanvas
 00511885    call        TCanvas.Lock
 0051188A    xor         eax,eax
 0051188C    push        ebp
 0051188D    push        511911
 00511892    push        dword ptr fs:[eax]
 00511895    mov         dword ptr fs:[eax],esp
 00511898    mov         eax,dword ptr [ebp-4]
 0051189B    mov         eax,dword ptr [eax+21C];TCustomActionBar.FCanvas:TCanvas
 005118A1    mov         edx,dword ptr [ebp-8]
 005118A4    call        TCanvas.SetHandle
 005118A9    xor         eax,eax
 005118AB    push        ebp
 005118AC    push        5118EE
 005118B1    push        dword ptr fs:[eax]
 005118B4    mov         dword ptr fs:[eax],esp
 005118B7    mov         eax,dword ptr [ebp-4]
 005118BA    mov         eax,dword ptr [eax+21C];TCustomActionBar.FCanvas:TCanvas
 005118C0    call        004C9348
 005118C5    mov         eax,dword ptr [ebp-4]
 005118C8    mov         edx,dword ptr [eax]
 005118CA    call        dword ptr [edx+11C];TCustomActionBar.sub_00511838
 005118D0    xor         eax,eax
 005118D2    pop         edx
 005118D3    pop         ecx
 005118D4    pop         ecx
 005118D5    mov         dword ptr fs:[eax],edx
 005118D8    push        5118F5
 005118DD    mov         eax,dword ptr [ebp-4]
 005118E0    mov         eax,dword ptr [eax+21C];TCustomActionBar.FCanvas:TCanvas
 005118E6    xor         edx,edx
 005118E8    call        TCanvas.SetHandle
 005118ED    ret
>005118EE    jmp         @HandleFinally
>005118F3    jmp         005118DD
 005118F5    xor         eax,eax
 005118F7    pop         edx
 005118F8    pop         ecx
 005118F9    pop         ecx
 005118FA    mov         dword ptr fs:[eax],edx
 005118FD    push        511918
 00511902    mov         eax,dword ptr [ebp-4]
 00511905    mov         eax,dword ptr [eax+21C];TCustomActionBar.FCanvas:TCanvas
 0051190B    call        TCanvas.Unlock
 00511910    ret
>00511911    jmp         @HandleFinally
>00511916    jmp         00511902
 00511918    pop         ecx
 00511919    pop         ecx
 0051191A    pop         ebp
 0051191B    ret
end;*}

//0051191C
{*procedure sub_0051191C(?:?);
begin
 0051191C    push        ebp
 0051191D    mov         ebp,esp
 0051191F    add         esp,0FFFFFFF8
 00511922    mov         dword ptr [ebp-8],edx
 00511925    mov         dword ptr [ebp-4],eax
 00511928    mov         eax,dword ptr [ebp-4]
 0051192B    mov         eax,dword ptr [eax+210];TCustomActionBar.FActionClient:TActionClient
 00511931    cmp         eax,dword ptr [ebp-8]
>00511934    je          005119C6
 0051193A    mov         eax,dword ptr [ebp-4]
 0051193D    mov         edx,dword ptr [eax]
 0051193F    call        dword ptr [edx+0D0];TCustomActionBar.sub_0050FDF4
 00511945    mov         eax,dword ptr [ebp-8]
 00511948    mov         edx,dword ptr [ebp-4]
 0051194B    mov         dword ptr [edx+210],eax;TCustomActionBar.FActionClient:TActionClient
 00511951    mov         eax,dword ptr [ebp-4]
 00511954    cmp         dword ptr [eax+210],0;TCustomActionBar.FActionClient:TActionClient
>0051195B    jne         00511967
 0051195D    mov         eax,dword ptr [ebp-4]
 00511960    mov         edx,dword ptr [eax]
 00511962    call        dword ptr [edx+7C];TCustomActionBar.sub_004D3648
>00511965    jmp         005119C6
 00511967    mov         eax,dword ptr [ebp-4]
 0051196A    mov         eax,dword ptr [eax+210];TCustomActionBar.FActionClient:TActionClient
 00511970    cmp         dword ptr [eax+24],20000000;TActionClient.Color:TColor
>00511977    je          0051198D
 00511979    mov         eax,dword ptr [ebp-4]
 0051197C    mov         eax,dword ptr [eax+210];TCustomActionBar.FActionClient:TActionClient
 00511982    mov         edx,dword ptr [eax+24];TActionClient.Color:TColor
 00511985    mov         eax,dword ptr [ebp-4]
 00511988    call        TPanel.SetColor
 0051198D    mov         eax,dword ptr [ebp-8]
 00511990    call        0050CCC4
 00511995    call        0050BE18
 0051199A    mov         edx,eax
 0051199C    mov         eax,dword ptr [ebp-4]
 0051199F    call        TActionToolBar.SetActionManager
 005119A4    mov         eax,dword ptr [ebp-8]
 005119A7    mov         edx,dword ptr [ebp-4]
 005119AA    mov         dword ptr [edx+210],eax;TCustomActionBar.FActionClient:TActionClient
 005119B0    mov         eax,dword ptr [ebp-4]
 005119B3    mov         edx,dword ptr [eax]
 005119B5    call        dword ptr [edx+0CC];TCustomActionBar.sub_0050FCD4
 005119BB    mov         eax,dword ptr [ebp-4]
 005119BE    mov         edx,dword ptr [eax]
 005119C0    call        dword ptr [edx+0D8];TCustomActionBar.sub_0050FFC0
 005119C6    pop         ecx
 005119C7    pop         ecx
 005119C8    pop         ebp
 005119C9    ret
end;*}

//005119CC
{*procedure sub_005119CC(?:?);
begin
 005119CC    push        ebp
 005119CD    mov         ebp,esp
 005119CF    add         esp,0FFFFFFE4
 005119D2    mov         byte ptr [ebp-5],dl
 005119D5    mov         dword ptr [ebp-4],eax
 005119D8    mov         eax,dword ptr [ebp-4]
 005119DB    mov         al,byte ptr [eax+225];TCustomActionBar.FDesignMode:Boolean
 005119E1    cmp         al,byte ptr [ebp-5]
>005119E4    je          00511C9E
 005119EA    mov         al,byte ptr [ebp-5]
 005119ED    mov         edx,dword ptr [ebp-4]
 005119F0    mov         byte ptr [edx+225],al;TCustomActionBar.FDesignMode:Boolean
 005119F6    mov         eax,dword ptr [ebp-4]
 005119F9    test        byte ptr [eax+1C],10;TCustomActionBar.FComponentState:TComponentState
>005119FD    jne         00511C9E
 00511A03    mov         eax,dword ptr [ebp-4]
 00511A06    cmp         dword ptr [eax+210],0;TCustomActionBar.FActionClient:TActionClient
>00511A0D    je          00511A1D
 00511A0F    mov         eax,dword ptr [ebp-4]
 00511A12    call        00511668
 00511A17    cmp         byte ptr [eax+24],0
>00511A1B    je          00511A31
 00511A1D    mov         eax,dword ptr [ebp-4]
 00511A20    mov         eax,dword ptr [eax+210];TCustomActionBar.FActionClient:TActionClient
 00511A26    mov         dl,byte ptr ds:[511CA4];0x0 gvar_00511CA4
 00511A2C    cmp         dl,byte ptr [eax+31];TActionClient.ChangesAllowed:TChangesAllowedSet
>00511A2F    jne         00511A6B
 00511A31    mov         eax,dword ptr [ebp-4]
 00511A34    cmp         byte ptr [eax+225],0;TCustomActionBar.FDesignMode:Boolean
>00511A3B    je          00511A5A
 00511A3D    mov         eax,dword ptr [ebp-4]
 00511A40    mov         edx,dword ptr [eax]
 00511A42    call        dword ptr [edx+50];TImage.GetEnabled
 00511A45    mov         edx,dword ptr [ebp-4]
 00511A48    mov         byte ptr [edx+226],al;TCustomActionBar.FEnabledState:Boolean
 00511A4E    xor         edx,edx
 00511A50    mov         eax,dword ptr [ebp-4]
 00511A53    mov         ecx,dword ptr [eax]
 00511A55    call        dword ptr [ecx+64];TImage.SetEnabled
>00511A58    jmp         00511A6B
 00511A5A    mov         eax,dword ptr [ebp-4]
 00511A5D    mov         dl,byte ptr [eax+226];TCustomActionBar.FEnabledState:Boolean
 00511A63    mov         eax,dword ptr [ebp-4]
 00511A66    mov         ecx,dword ptr [eax]
 00511A68    call        dword ptr [ecx+64];TImage.SetEnabled
 00511A6B    mov         eax,dword ptr [ebp-4]
 00511A6E    mov         edx,dword ptr [eax]
 00511A70    call        dword ptr [edx+104];TCustomActionBar.sub_00512304
 00511A76    test        al,al
>00511A78    je          00511ACD
 00511A7A    mov         eax,dword ptr [ebp-4]
 00511A7D    mov         edx,dword ptr [eax]
 00511A7F    call        dword ptr [edx+104];TCustomActionBar.sub_00512304
 00511A85    test        al,al
>00511A87    je          00511A95
 00511A89    mov         eax,dword ptr [ebp-4]
 00511A8C    call        00512624
 00511A91    test        al,al
>00511A93    jne         00511A99
 00511A95    xor         eax,eax
>00511A97    jmp         00511A9B
 00511A99    mov         al,1
 00511A9B    mov         edx,dword ptr [ebp-4]
 00511A9E    mov         byte ptr [edx+278],al;TCustomActionBar.FSavedWrapState:Boolean
 00511AA4    lea         ecx,[ebp-1C]
 00511AA7    mov         eax,dword ptr [ebp-4]
 00511AAA    mov         edx,dword ptr [eax+4C];TCustomActionBar.Height:Integer
 00511AAD    mov         eax,dword ptr [ebp-4]
 00511AB0    mov         eax,dword ptr [eax+48];TCustomActionBar.Width:Integer
 00511AB3    call        Point
 00511AB8    mov         eax,dword ptr [ebp-4]
 00511ABB    mov         edx,dword ptr [ebp-1C]
 00511ABE    mov         dword ptr [eax+25D],edx;TCustomActionBar.FSavedSize:TPoint
 00511AC4    mov         edx,dword ptr [ebp-18]
 00511AC7    mov         dword ptr [eax+261],edx
 00511ACD    mov         eax,dword ptr [ebp-4]
 00511AD0    mov         edx,dword ptr [eax]
 00511AD2    call        dword ptr [edx+104];TCustomActionBar.sub_00512304
 00511AD8    test        al,al
>00511ADA    jne         00511AE8
 00511ADC    mov         eax,dword ptr [ebp-4]
 00511ADF    cmp         byte ptr [eax+278],0;TCustomActionBar.FSavedWrapState:Boolean
>00511AE6    je          00511AF7
 00511AE8    mov         eax,dword ptr [ebp-4]
 00511AEB    mov         edx,dword ptr [eax]
 00511AED    call        dword ptr [edx+114];TCustomActionBar.sub_00511728
 00511AF3    test        eax,eax
>00511AF5    jg          00511AFB
 00511AF7    xor         edx,edx
>00511AF9    jmp         00511AFD
 00511AFB    mov         dl,1
 00511AFD    mov         eax,dword ptr [ebp-4]
 00511B00    mov         ecx,dword ptr [eax]
 00511B02    call        dword ptr [ecx+128];TCustomActionBar.sub_00512664
 00511B08    mov         eax,dword ptr [ebp-4]
 00511B0B    mov         edx,dword ptr [eax]
 00511B0D    call        dword ptr [edx+104];TCustomActionBar.sub_00512304
 00511B13    test        al,al
>00511B15    jne         00511B4E
 00511B17    mov         eax,dword ptr [ebp-4]
 00511B1A    mov         al,byte ptr [eax+227];TCustomActionBar.FOrientation:TBarOrientation
 00511B20    sub         al,2
>00511B22    jb          00511B2A
 00511B24    sub         al,2
>00511B26    jb          00511B3D
>00511B28    jmp         00511B4E
 00511B2A    mov         eax,dword ptr [ebp-4]
 00511B2D    mov         edx,dword ptr [eax+261]
 00511B33    mov         eax,dword ptr [ebp-4]
 00511B36    call        TControl.SetHeight
>00511B3B    jmp         00511B4E
 00511B3D    mov         eax,dword ptr [ebp-4]
 00511B40    mov         edx,dword ptr [eax+25D];TCustomActionBar.FSavedSize:TPoint
 00511B46    mov         eax,dword ptr [ebp-4]
 00511B49    call        TControl.SetWidth
 00511B4E    mov         eax,dword ptr [ebp-4]
 00511B51    call        00511668
 00511B56    call        00479B60
 00511B5B    dec         eax
 00511B5C    test        eax,eax
>00511B5E    jl          00511C9E
 00511B64    inc         eax
 00511B65    mov         dword ptr [ebp-10],eax
 00511B68    mov         dword ptr [ebp-0C],0
 00511B6F    mov         eax,dword ptr [ebp-4]
 00511B72    call        00511668
 00511B77    mov         edx,dword ptr [ebp-0C]
 00511B7A    call        0050D884
 00511B7F    mov         dword ptr [ebp-14],eax
 00511B82    mov         eax,dword ptr [ebp-14]
 00511B85    cmp         dword ptr [eax+40],0
>00511B89    je          00511C92
 00511B8F    mov         eax,dword ptr [ebp-4]
 00511B92    cmp         byte ptr [eax+225],0;TCustomActionBar.FDesignMode:Boolean
>00511B99    je          00511C33
 00511B9F    mov         eax,dword ptr [ebp-14]
 00511BA2    mov         eax,dword ptr [eax+40]
 00511BA5    cmp         byte ptr [eax+57],0
>00511BA9    jne         00511BB8
 00511BAB    mov         dl,1
 00511BAD    mov         eax,dword ptr [ebp-14]
 00511BB0    mov         eax,dword ptr [eax+40]
 00511BB3    call        TControl.SetVisible
 00511BB8    mov         al,[00511CA4];0x0 gvar_00511CA4
 00511BBD    mov         edx,dword ptr [ebp-14]
 00511BC0    cmp         al,byte ptr [edx+31]
>00511BC3    je          00511BD9
 00511BC5    mov         eax,dword ptr [ebp-4]
 00511BC8    mov         eax,dword ptr [eax+210];TCustomActionBar.FActionClient:TActionClient
 00511BCE    mov         dl,byte ptr ds:[511CA4];0x0 gvar_00511CA4
 00511BD4    cmp         dl,byte ptr [eax+31];TActionClient.ChangesAllowed:TChangesAllowedSet
>00511BD7    jne         00511BDD
 00511BD9    xor         edx,edx
>00511BDB    jmp         00511BDF
 00511BDD    mov         dl,1
 00511BDF    mov         eax,dword ptr [ebp-14]
 00511BE2    mov         eax,dword ptr [eax+40]
 00511BE5    mov         ecx,dword ptr [eax]
 00511BE7    call        dword ptr [ecx+64]
 00511BEA    mov         eax,dword ptr [ebp-4]
 00511BED    mov         edx,dword ptr [eax]
 00511BEF    call        dword ptr [edx+104];TCustomActionBar.sub_00512304
 00511BF5    test        al,al
>00511BF7    je          00511C08
 00511BF9    mov         eax,dword ptr [ebp-4]
 00511BFC    mov         eax,dword ptr [eax+210];TCustomActionBar.FActionClient:TActionClient
 00511C02    test        byte ptr [eax+31],2;TActionClient.ChangesAllowed:TChangesAllowedSet
>00511C06    jne         00511C1B
 00511C08    mov         eax,dword ptr [ebp-4]
 00511C0B    mov         eax,dword ptr [eax+210];TCustomActionBar.FActionClient:TActionClient
 00511C11    test        byte ptr [eax+31],4;TActionClient.ChangesAllowed:TChangesAllowedSet
>00511C15    jne         00511C1B
 00511C17    xor         eax,eax
>00511C19    jmp         00511C1D
 00511C1B    mov         al,1
 00511C1D    and         eax,7F
 00511C20    mov         dl,byte ptr [eax+541A94]
 00511C26    mov         eax,dword ptr [ebp-14]
 00511C29    mov         eax,dword ptr [eax+40]
 00511C2C    mov         ecx,dword ptr [eax]
 00511C2E    call        dword ptr [ecx+60]
>00511C31    jmp         00511C92
 00511C33    xor         edx,edx
 00511C35    mov         eax,dword ptr [ebp-14]
 00511C38    mov         eax,dword ptr [eax+40]
 00511C3B    mov         ecx,dword ptr [eax]
 00511C3D    call        dword ptr [ecx+60]
 00511C40    mov         eax,dword ptr [ebp-14]
 00511C43    cmp         byte ptr [eax+30],0
>00511C47    jne         00511C5A
 00511C49    mov         eax,dword ptr [ebp-14]
 00511C4C    mov         dl,byte ptr [eax+30]
 00511C4F    mov         eax,dword ptr [ebp-14]
 00511C52    mov         eax,dword ptr [eax+40]
 00511C55    call        TControl.SetVisible
 00511C5A    mov         eax,dword ptr [ebp-14]
 00511C5D    call        TActionClientItem.GetAction
 00511C62    test        eax,eax
>00511C64    je          00511C75
 00511C66    mov         eax,dword ptr [ebp-14]
 00511C69    call        TActionClientItem.GetAction
 00511C6E    mov         edx,dword ptr [eax]
 00511C70    call        dword ptr [edx+44]
>00511C73    jmp         00511C82
 00511C75    mov         dl,1
 00511C77    mov         eax,dword ptr [ebp-14]
 00511C7A    mov         eax,dword ptr [eax+40]
 00511C7D    mov         ecx,dword ptr [eax]
 00511C7F    call        dword ptr [ecx+64]
 00511C82    xor         edx,edx
 00511C84    mov         eax,dword ptr [ebp-14]
 00511C87    mov         eax,dword ptr [eax+40]
 00511C8A    mov         ecx,dword ptr [eax]
 00511C8C    call        dword ptr [ecx+0D8]
 00511C92    inc         dword ptr [ebp-0C]
 00511C95    dec         dword ptr [ebp-10]
>00511C98    jne         00511B6F
 00511C9E    mov         esp,ebp
 00511CA0    pop         ebp
 00511CA1    ret
end;*}

//00511CA8
{*procedure sub_00511CA8(?:?);
begin
 00511CA8    push        ebp
 00511CA9    mov         ebp,esp
 00511CAB    add         esp,0FFFFFFF0
 00511CAE    mov         byte ptr [ebp-5],dl
 00511CB1    mov         dword ptr [ebp-4],eax
 00511CB4    mov         eax,dword ptr [ebp-4]
 00511CB7    mov         al,byte ptr [eax+227];TCustomActionBar.FOrientation:TBarOrientation
 00511CBD    cmp         al,byte ptr [ebp-5]
>00511CC0    je          00511D4D
 00511CC6    mov         eax,dword ptr [ebp-4]
 00511CC9    mov         dl,byte ptr [ebp-5]
 00511CCC    mov         byte ptr [eax+227],dl;TCustomActionBar.FOrientation:TBarOrientation
 00511CD2    mov         eax,dword ptr [ebp-4]
 00511CD5    mov         edx,dword ptr [eax]
 00511CD7    call        dword ptr [edx+114];TCustomActionBar.sub_00511728
 00511CDD    test        eax,eax
>00511CDF    jle         00511D4D
 00511CE1    mov         eax,dword ptr [ebp-4]
 00511CE4    call        TWinControl.DisableAlign
 00511CE9    xor         eax,eax
 00511CEB    push        ebp
 00511CEC    push        511D46
 00511CF1    push        dword ptr fs:[eax]
 00511CF4    mov         dword ptr fs:[eax],esp
 00511CF7    mov         eax,dword ptr [ebp-4]
 00511CFA    mov         edx,dword ptr [eax]
 00511CFC    call        dword ptr [edx+114];TCustomActionBar.sub_00511728
 00511D02    dec         eax
 00511D03    test        eax,eax
>00511D05    jl          00511D30
 00511D07    inc         eax
 00511D08    mov         dword ptr [ebp-10],eax
 00511D0B    mov         dword ptr [ebp-0C],0
 00511D12    mov         edx,dword ptr [ebp-0C]
 00511D15    mov         eax,dword ptr [ebp-4]
 00511D18    mov         ecx,dword ptr [eax]
 00511D1A    call        dword ptr [ecx+108];TCustomActionBar.sub_00511530
 00511D20    mov         edx,dword ptr [eax]
 00511D22    call        dword ptr [edx+0DC]
 00511D28    inc         dword ptr [ebp-0C]
 00511D2B    dec         dword ptr [ebp-10]
>00511D2E    jne         00511D12
 00511D30    xor         eax,eax
 00511D32    pop         edx
 00511D33    pop         ecx
 00511D34    pop         ecx
 00511D35    mov         dword ptr fs:[eax],edx
 00511D38    push        511D4D
 00511D3D    mov         eax,dword ptr [ebp-4]
 00511D40    call        TWinControl.EnableAlign
 00511D45    ret
>00511D46    jmp         @HandleFinally
>00511D4B    jmp         00511D3D
 00511D4D    mov         esp,ebp
 00511D4F    pop         ebp
 00511D50    ret
end;*}

//00511D54
procedure TActionToolBar.SetSpacing(Value:Integer);
begin
{*
 00511D54    push        ebp
 00511D55    mov         ebp,esp
 00511D57    add         esp,0FFFFFFF8
 00511D5A    mov         dword ptr [ebp-8],edx
 00511D5D    mov         dword ptr [ebp-4],eax
 00511D60    mov         eax,dword ptr [ebp-4]
 00511D63    mov         eax,dword ptr [eax+228];TActionToolBar.FSpacing:Integer
 00511D69    cmp         eax,dword ptr [ebp-8]
>00511D6C    je          00511D82
 00511D6E    mov         eax,dword ptr [ebp-8]
 00511D71    mov         edx,dword ptr [ebp-4]
 00511D74    mov         dword ptr [edx+228],eax;TActionToolBar.FSpacing:Integer
 00511D7A    mov         eax,dword ptr [ebp-4]
 00511D7D    call        004CF09C
 00511D82    pop         ecx
 00511D83    pop         ecx
 00511D84    pop         ebp
 00511D85    ret
*}
end;

//00511D88
procedure TActionToolBar.SetActionManager(Value:TCustomActionManager);
begin
{*
 00511D88    push        ebp
 00511D89    mov         ebp,esp
 00511D8B    add         esp,0FFFFFFF8
 00511D8E    mov         dword ptr [ebp-8],edx
 00511D91    mov         dword ptr [ebp-4],eax
 00511D94    mov         eax,dword ptr [ebp-4]
 00511D97    mov         eax,dword ptr [eax+214];TActionToolBar.FActionManager:TCustomActionManager
 00511D9D    cmp         eax,dword ptr [ebp-8]
>00511DA0    je          00511DF3
 00511DA2    mov         eax,dword ptr [ebp-4]
 00511DA5    cmp         dword ptr [eax+214],0;TActionToolBar.FActionManager:TCustomActionManager
>00511DAC    je          00511DCA
 00511DAE    mov         edx,dword ptr [ebp-4]
 00511DB1    mov         eax,dword ptr [ebp-4]
 00511DB4    mov         eax,dword ptr [eax+214];TActionToolBar.FActionManager:TCustomActionManager
 00511DBA    call        00483370
 00511DBF    mov         eax,dword ptr [ebp-4]
 00511DC2    mov         edx,dword ptr [eax]
 00511DC4    call        dword ptr [edx+0D0];TActionToolBar.sub_0050FDF4
 00511DCA    mov         eax,dword ptr [ebp-8]
 00511DCD    mov         edx,dword ptr [ebp-4]
 00511DD0    mov         dword ptr [edx+214],eax;TActionToolBar.FActionManager:TCustomActionManager
 00511DD6    mov         eax,dword ptr [ebp-4]
 00511DD9    cmp         dword ptr [eax+214],0;TActionToolBar.FActionManager:TCustomActionManager
>00511DE0    je          00511DF3
 00511DE2    mov         edx,dword ptr [ebp-4]
 00511DE5    mov         eax,dword ptr [ebp-4]
 00511DE8    mov         eax,dword ptr [eax+214];TActionToolBar.FActionManager:TCustomActionManager
 00511DEE    call        00483020
 00511DF3    pop         ecx
 00511DF4    pop         ecx
 00511DF5    pop         ebp
 00511DF6    ret
*}
end;

//00511DF8
procedure TActionToolBar.SetPersistentHotKeys(Value:Boolean);
begin
{*
 00511DF8    push        ebp
 00511DF9    mov         ebp,esp
 00511DFB    add         esp,0FFFFFFF8
 00511DFE    mov         byte ptr [ebp-5],dl
 00511E01    mov         dword ptr [ebp-4],eax
 00511E04    mov         eax,dword ptr [ebp-4]
 00511E07    mov         al,byte ptr [eax+248];TActionToolBar.FPersistentHotKeys:Boolean
 00511E0D    cmp         al,byte ptr [ebp-5]
>00511E10    je          00511E26
 00511E12    mov         al,byte ptr [ebp-5]
 00511E15    mov         edx,dword ptr [ebp-4]
 00511E18    mov         byte ptr [edx+248],al;TActionToolBar.FPersistentHotKeys:Boolean
 00511E1E    mov         eax,dword ptr [ebp-4]
 00511E21    call        TControl.Refresh
 00511E26    pop         ecx
 00511E27    pop         ecx
 00511E28    pop         ebp
 00511E29    ret
*}
end;

//00511E2C
{*procedure sub_00511E2C(?:?; ?:?; ?:?);
begin
 00511E2C    push        ebp
 00511E2D    mov         ebp,esp
 00511E2F    add         esp,0FFFFFFDC
 00511E32    mov         dword ptr [ebp-0C],ecx
 00511E35    mov         dword ptr [ebp-8],edx
 00511E38    mov         dword ptr [ebp-4],eax
 00511E3B    mov         eax,dword ptr [ebp+8]
 00511E3E    push        eax
 00511E3F    lea         ecx,[ebp-24]
 00511E42    mov         edx,dword ptr [ebp+8]
 00511E45    mov         eax,dword ptr [ebp-0C]
 00511E48    call        Point
 00511E4D    lea         edx,[ebp-24]
 00511E50    mov         eax,dword ptr [ebp-4]
 00511E53    call        00511158
 00511E58    mov         edx,eax
 00511E5A    mov         ecx,dword ptr [ebp-0C]
 00511E5D    mov         eax,dword ptr [ebp-4]
 00511E60    call        0050FCE0
 00511E65    mov         dword ptr [ebp-10],eax
 00511E68    mov         eax,dword ptr [ebp-8]
 00511E6B    call        0050F4F4
 00511E70    test        eax,eax
>00511E72    je          00511EE1
 00511E74    mov         eax,dword ptr [ebp-8]
 00511E77    call        0050F4F4
 00511E7C    dec         eax
 00511E7D    test        eax,eax
>00511E7F    jl          00511EE1
 00511E81    inc         eax
 00511E82    mov         dword ptr [ebp-1C],eax
 00511E85    mov         dword ptr [ebp-14],0
 00511E8C    mov         eax,dword ptr [ebp-4]
 00511E8F    mov         eax,dword ptr [eax+210];TCustomActionBar.FActionClient:TActionClient
 00511E95    call        TActionClient.GetItems
 00511E9A    mov         edx,dword ptr [ebp-10]
 00511E9D    call        00479DAC
 00511EA2    mov         dword ptr [ebp-18],eax
 00511EA5    mov         edx,dword ptr [ebp-14]
 00511EA8    mov         eax,dword ptr [ebp-8]
 00511EAB    call        0050F4A8
 00511EB0    push        eax
 00511EB1    mov         eax,dword ptr [ebp-4]
 00511EB4    mov         eax,dword ptr [eax+210];TCustomActionBar.FActionClient:TActionClient
 00511EBA    call        TActionClient.GetItems
 00511EBF    mov         edx,dword ptr [ebp-10]
 00511EC2    call        0050D884
 00511EC7    pop         edx
 00511EC8    call        TActionClientItem.SetAction
 00511ECD    mov         eax,dword ptr [ebp-18]
 00511ED0    call        TCollectionItem.GetIndex
 00511ED5    inc         eax
 00511ED6    mov         dword ptr [ebp-10],eax
 00511ED9    inc         dword ptr [ebp-14]
 00511EDC    dec         dword ptr [ebp-1C]
>00511EDF    jne         00511E8C
 00511EE1    mov         esp,ebp
 00511EE3    pop         ebp
 00511EE4    ret         4
end;*}

//00511EE8
{*procedure sub_00511EE8(?:?; ?:?; ?:?);
begin
 00511EE8    push        ebp
 00511EE9    mov         ebp,esp
 00511EEB    add         esp,0FFFFFFDC
 00511EEE    mov         dword ptr [ebp-0C],ecx
 00511EF1    mov         dword ptr [ebp-8],edx
 00511EF4    mov         dword ptr [ebp-4],eax
 00511EF7    mov         eax,dword ptr [ebp+8]
 00511EFA    push        eax
 00511EFB    lea         ecx,[ebp-24]
 00511EFE    mov         edx,dword ptr [ebp+8]
 00511F01    mov         eax,dword ptr [ebp-0C]
 00511F04    call        Point
 00511F09    lea         edx,[ebp-24]
 00511F0C    mov         eax,dword ptr [ebp-4]
 00511F0F    call        00511158
 00511F14    mov         edx,eax
 00511F16    mov         ecx,dword ptr [ebp-0C]
 00511F19    mov         eax,dword ptr [ebp-4]
 00511F1C    call        0050FCE0
 00511F21    mov         dword ptr [ebp-10],eax
 00511F24    mov         eax,dword ptr [ebp-4]
 00511F27    call        00511668
 00511F2C    mov         edx,dword ptr [ebp-10]
 00511F2F    call        00479DAC
 00511F34    mov         dword ptr [ebp-14],eax
 00511F37    mov         eax,dword ptr [ebp-8]
 00511F3A    mov         edx,dword ptr [eax+48]
 00511F3D    mov         eax,dword ptr [ebp-14]
 00511F40    call        TActionClientItem.SetCaption
 00511F45    mov         eax,dword ptr [ebp-8]
 00511F48    call        0050F4F4
 00511F4D    test        eax,eax
>00511F4F    je          00512044
 00511F55    mov         eax,dword ptr [ebp-14]
 00511F58    call        TCollectionItem.GetIndex
 00511F5D    push        eax
 00511F5E    mov         eax,dword ptr [ebp-4]
 00511F61    call        00511668
 00511F66    pop         edx
 00511F67    call        0050D884
 00511F6C    mov         edx,dword ptr [ebp-8]
 00511F6F    mov         edx,dword ptr [edx+48]
 00511F72    call        TActionClientItem.SetCaption
 00511F77    mov         eax,dword ptr [ebp-8]
 00511F7A    call        0050F4F4
 00511F7F    dec         eax
 00511F80    test        eax,eax
>00511F82    jl          00511FF2
 00511F84    inc         eax
 00511F85    mov         dword ptr [ebp-18],eax
 00511F88    mov         dword ptr [ebp-10],0
 00511F8F    mov         eax,dword ptr [ebp-14]
 00511F92    call        TCollectionItem.GetIndex
 00511F97    push        eax
 00511F98    mov         eax,dword ptr [ebp-4]
 00511F9B    call        00511668
 00511FA0    pop         edx
 00511FA1    call        0050D884
 00511FA6    call        TActionClient.GetItems
 00511FAB    mov         edx,dword ptr [ebp-10]
 00511FAE    call        00479DAC
 00511FB3    mov         edx,dword ptr ds:[509710];TActionClientItem
 00511FB9    call        @AsClass
 00511FBE    mov         dword ptr [ebp-1C],eax
 00511FC1    mov         edx,dword ptr [ebp-10]
 00511FC4    mov         eax,dword ptr [ebp-8]
 00511FC7    call        0050F4A8
 00511FCC    mov         edx,eax
 00511FCE    mov         eax,dword ptr [ebp-1C]
 00511FD1    call        TActionClientItem.SetAction
 00511FD6    mov         eax,dword ptr [ebp-8]
 00511FD9    mov         eax,dword ptr [eax+38]
 00511FDC    mov         eax,dword ptr [eax+6C]
 00511FDF    mov         edx,dword ptr [eax+28]
 00511FE2    mov         eax,dword ptr [ebp-1C]
 00511FE5    call        TActionClientItem.SetLastSession
 00511FEA    inc         dword ptr [ebp-10]
 00511FED    dec         dword ptr [ebp-18]
>00511FF0    jne         00511F8F
 00511FF2    mov         eax,dword ptr [ebp-14]
 00511FF5    mov         eax,dword ptr [eax+40]
 00511FF8    mov         edx,dword ptr [eax]
 00511FFA    call        dword ptr [edx+0DC]
 00512000    mov         dl,1
 00512002    mov         eax,dword ptr [ebp-14]
 00512005    mov         ecx,dword ptr [eax]
 00512007    call        dword ptr [ecx+2C]
 0051200A    mov         eax,dword ptr [ebp-14]
 0051200D    call        TActionClientItem.GetAction
 00512012    test        eax,eax
>00512014    jne         00512037
 00512016    mov         eax,dword ptr [ebp-14]
 00512019    call        0050CB98
 0051201E    test        al,al
>00512020    je          00512033
 00512022    mov         eax,dword ptr [ebp-14]
 00512025    call        TActionClient.GetItems
 0051202A    call        0050DCD0
 0051202F    test        eax,eax
>00512031    jg          00512037
 00512033    xor         edx,edx
>00512035    jmp         00512039
 00512037    mov         dl,1
 00512039    mov         eax,dword ptr [ebp-14]
 0051203C    mov         eax,dword ptr [eax+40]
 0051203F    mov         ecx,dword ptr [eax]
 00512041    call        dword ptr [ecx+64]
 00512044    mov         esp,ebp
 00512046    pop         ebp
 00512047    ret         4
end;*}

//0051204C
{*function sub_0051204C(?:TCustomActionPopupMenu; ?:TActionClientItem):?;
begin
 0051204C    push        ebp
 0051204D    mov         ebp,esp
 0051204F    add         esp,0FFFFFFF4
 00512052    push        ebx
 00512053    mov         dword ptr [ebp-8],edx
 00512056    mov         dword ptr [ebp-4],eax
 00512059    xor         ecx,ecx
 0051205B    mov         edx,dword ptr [ebp-8]
 0051205E    mov         eax,dword ptr [ebp-4]
 00512061    mov         ebx,dword ptr [eax]
 00512063    call        dword ptr [ebx+0F4];TCustomActionPopupMenu.sub_0051149C
 00512069    mov         dword ptr [ebp-0C],eax
>0051206C    jmp         00512081
 0051206E    xor         ecx,ecx
 00512070    mov         edx,dword ptr [ebp-0C]
 00512073    mov         eax,dword ptr [ebp-4]
 00512076    mov         ebx,dword ptr [eax]
 00512078    call        dword ptr [ebx+0F4];TCustomActionPopupMenu.sub_0051149C
 0051207E    mov         dword ptr [ebp-0C],eax
 00512081    cmp         dword ptr [ebp-0C],0
>00512085    je          00512090
 00512087    mov         eax,dword ptr [ebp-0C]
 0051208A    cmp         byte ptr [eax+30],0
>0051208E    je          0051206E
 00512090    mov         eax,dword ptr [ebp-0C]
 00512093    pop         ebx
 00512094    mov         esp,ebp
 00512096    pop         ebp
 00512097    ret
end;*}

//00512098
procedure TActionToolBar.SetBiDiMode(Value:TBiDiMode);
begin
{*
 00512098    push        ebp
 00512099    mov         ebp,esp
 0051209B    add         esp,0FFFFFFF8
 0051209E    mov         byte ptr [ebp-5],dl
 005120A1    mov         dword ptr [ebp-4],eax
 005120A4    mov         dl,byte ptr [ebp-5]
 005120A7    mov         eax,dword ptr [ebp-4]
 005120AA    call        TPanel.SetBiDiMode
 005120AF    mov         eax,dword ptr [ebp-4]
 005120B2    mov         al,byte ptr [eax+227];TActionToolBar.FOrientation:TBarOrientation
 005120B8    add         al,0FE
 005120BA    sub         al,2
>005120BC    jb          005120E7
 005120BE    mov         al,byte ptr [ebp-5]
 005120C1    sub         al,1
>005120C3    jb          005120CB
 005120C5    sub         al,3
>005120C7    jb          005120DA
>005120C9    jmp         005120E7
 005120CB    xor         edx,edx
 005120CD    mov         eax,dword ptr [ebp-4]
 005120D0    mov         ecx,dword ptr [eax]
 005120D2    call        dword ptr [ecx+134];TActionToolBar.SetOrientation
>005120D8    jmp         005120E7
 005120DA    mov         dl,1
 005120DC    mov         eax,dword ptr [ebp-4]
 005120DF    mov         ecx,dword ptr [eax]
 005120E1    call        dword ptr [ecx+134];TActionToolBar.SetOrientation
 005120E7    pop         ecx
 005120E8    pop         ecx
 005120E9    pop         ebp
 005120EA    ret
*}
end;

//005120EC
{*function sub_005120EC:?;
begin
 005120EC    push        ebp
 005120ED    mov         ebp,esp
 005120EF    add         esp,0FFFFFFF8
 005120F2    mov         dword ptr [ebp-4],eax
 005120F5    mov         eax,dword ptr [ebp-4]
 005120F8    mov         eax,dword ptr [eax+4C];TCustomActionBar.Height:Integer
 005120FB    mov         dword ptr [ebp-8],eax
 005120FE    mov         eax,dword ptr [ebp-4]
 00512101    mov         edx,dword ptr [eax]
 00512103    call        dword ptr [edx+114];TCustomActionBar.sub_00511728
 00512109    test        eax,eax
>0051210B    je          005121E5
 00512111    mov         eax,dword ptr [ebp-4]
 00512114    mov         al,byte ptr [eax+5B];TCustomActionBar.FAlign:TAlign
 00512117    add         al,0FD
 00512119    sub         al,3
>0051211B    jb          005121E5
 00512121    mov         eax,dword ptr [ebp-4]
 00512124    mov         eax,dword ptr [eax+254];TCustomActionBar.FVertMargin:Integer
 0051212A    add         eax,eax
 0051212C    mov         edx,dword ptr [ebp-4]
 0051212F    mov         edx,dword ptr [edx+250];TCustomActionBar.FVRowCount:Integer
 00512135    dec         edx
 00512136    imul        edx
 00512138    mov         edx,dword ptr [ebp-4]
 0051213B    mov         edx,dword ptr [edx+268];TCustomActionBar.FTallest:Integer
 00512141    mov         ecx,dword ptr [ebp-4]
 00512144    imul        edx,dword ptr [ecx+250]
 0051214B    mov         ecx,dword ptr [ebp-4]
 0051214E    add         edx,dword ptr [ecx+254]
 00512154    add         eax,edx
 00512156    mov         edx,dword ptr [ebp-4]
 00512159    add         eax,dword ptr [edx+254];TCustomActionBar.FVertMargin:Integer
 0051215F    mov         dword ptr [ebp-8],eax
 00512162    mov         eax,dword ptr [ebp-4]
 00512165    cmp         byte ptr [eax+25C],0;TCustomActionBar.FHorzSeparator:Boolean
>0051216C    je          00512189
 0051216E    mov         eax,dword ptr [ebp-4]
 00512171    cmp         dword ptr [eax+250],1;TCustomActionBar.FVRowCount:Integer
>00512178    jle         00512189
 0051217A    mov         eax,dword ptr [ebp-4]
 0051217D    mov         eax,dword ptr [eax+250];TCustomActionBar.FVRowCount:Integer
 00512183    dec         eax
 00512184    add         eax,eax
 00512186    add         dword ptr [ebp-8],eax
 00512189    mov         eax,dword ptr [ebp-4]
 0051218C    test        byte ptr [eax+208],2;TCustomActionBar.FEdgeBorders:TEdgeBorders
>00512193    je          005121B7
 00512195    mov         eax,dword ptr [ebp-4]
 00512198    mov         al,byte ptr [eax+209];TCustomActionBar.FEdgeInner:TEdgeStyle
 0051219E    dec         eax
 0051219F    sub         al,2
>005121A1    jae         005121A6
 005121A3    inc         dword ptr [ebp-8]
 005121A6    mov         eax,dword ptr [ebp-4]
 005121A9    mov         al,byte ptr [eax+20A];TCustomActionBar.FEdgeOuter:TEdgeStyle
 005121AF    dec         eax
 005121B0    sub         al,2
>005121B2    jae         005121B7
 005121B4    inc         dword ptr [ebp-8]
 005121B7    mov         eax,dword ptr [ebp-4]
 005121BA    test        byte ptr [eax+208],8;TCustomActionBar.FEdgeBorders:TEdgeBorders
>005121C1    je          005121D4
 005121C3    mov         eax,dword ptr [ebp-4]
 005121C6    mov         al,byte ptr [eax+209];TCustomActionBar.FEdgeInner:TEdgeStyle
 005121CC    dec         eax
 005121CD    sub         al,2
>005121CF    jae         005121D4
 005121D1    inc         dword ptr [ebp-8]
 005121D4    mov         eax,dword ptr [ebp-4]
 005121D7    mov         al,byte ptr [eax+20A];TCustomActionBar.FEdgeOuter:TEdgeStyle
 005121DD    dec         eax
 005121DE    sub         al,2
>005121E0    jae         005121E5
 005121E2    inc         dword ptr [ebp-8]
 005121E5    mov         eax,dword ptr [ebp-8]
 005121E8    pop         ecx
 005121E9    pop         ecx
 005121EA    pop         ebp
 005121EB    ret
end;*}

//005121EC
{*function sub_005121EC:?;
begin
 005121EC    push        ebp
 005121ED    mov         ebp,esp
 005121EF    add         esp,0FFFFFFF8
 005121F2    mov         dword ptr [ebp-4],eax
 005121F5    mov         eax,dword ptr [ebp-4]
 005121F8    mov         eax,dword ptr [eax+48];TCustomActionBar.Width:Integer
 005121FB    mov         dword ptr [ebp-8],eax
 005121FE    mov         eax,dword ptr [ebp-4]
 00512201    mov         edx,dword ptr [eax]
 00512203    call        dword ptr [edx+114];TCustomActionBar.sub_00511728
 00512209    test        eax,eax
>0051220B    je          005122FB
 00512211    mov         eax,dword ptr [ebp-4]
 00512214    call        00512624
 00512219    test        al,al
>0051221B    je          005122FB
 00512221    mov         eax,dword ptr [ebp-4]
 00512224    mov         al,byte ptr [eax+5B];TCustomActionBar.FAlign:TAlign
 00512227    dec         eax
 00512228    sub         al,2
>0051222A    jb          005122FB
 00512230    sub         al,2
>00512232    je          005122FB
 00512238    mov         eax,dword ptr [ebp-4]
 0051223B    mov         eax,dword ptr [eax+258];TCustomActionBar.FHorzMargin:Integer
 00512241    add         eax,eax
 00512243    mov         edx,dword ptr [ebp-4]
 00512246    mov         edx,dword ptr [edx+24C];TCustomActionBar.FHRowCount:Integer
 0051224C    dec         edx
 0051224D    imul        edx
 0051224F    mov         edx,dword ptr [ebp-4]
 00512252    mov         edx,dword ptr [edx+26C];TCustomActionBar.FWidest:Integer
 00512258    mov         ecx,dword ptr [ebp-4]
 0051225B    imul        edx,dword ptr [ecx+24C]
 00512262    mov         ecx,dword ptr [ebp-4]
 00512265    add         edx,dword ptr [ecx+258]
 0051226B    add         eax,edx
 0051226D    mov         edx,dword ptr [ebp-4]
 00512270    add         eax,dword ptr [edx+258];TCustomActionBar.FHorzMargin:Integer
 00512276    mov         dword ptr [ebp-8],eax
 00512279    mov         eax,dword ptr [ebp-4]
 0051227C    cmp         byte ptr [eax+265],0;TCustomActionBar.FVertSeparator:Boolean
>00512283    je          0051229F
 00512285    mov         eax,dword ptr [ebp-4]
 00512288    cmp         dword ptr [eax+24C],1;TCustomActionBar.FHRowCount:Integer
>0051228F    jle         0051229F
 00512291    mov         eax,dword ptr [ebp-4]
 00512294    mov         eax,dword ptr [eax+24C];TCustomActionBar.FHRowCount:Integer
 0051229A    add         eax,eax
 0051229C    add         dword ptr [ebp-8],eax
 0051229F    mov         eax,dword ptr [ebp-4]
 005122A2    test        byte ptr [eax+208],1;TCustomActionBar.FEdgeBorders:TEdgeBorders
>005122A9    je          005122CD
 005122AB    mov         eax,dword ptr [ebp-4]
 005122AE    mov         al,byte ptr [eax+209];TCustomActionBar.FEdgeInner:TEdgeStyle
 005122B4    dec         eax
 005122B5    sub         al,2
>005122B7    jae         005122BC
 005122B9    inc         dword ptr [ebp-8]
 005122BC    mov         eax,dword ptr [ebp-4]
 005122BF    mov         al,byte ptr [eax+20A];TCustomActionBar.FEdgeOuter:TEdgeStyle
 005122C5    dec         eax
 005122C6    sub         al,2
>005122C8    jae         005122CD
 005122CA    inc         dword ptr [ebp-8]
 005122CD    mov         eax,dword ptr [ebp-4]
 005122D0    test        byte ptr [eax+208],4;TCustomActionBar.FEdgeBorders:TEdgeBorders
>005122D7    je          005122EA
 005122D9    mov         eax,dword ptr [ebp-4]
 005122DC    mov         al,byte ptr [eax+209];TCustomActionBar.FEdgeInner:TEdgeStyle
 005122E2    dec         eax
 005122E3    sub         al,2
>005122E5    jae         005122EA
 005122E7    inc         dword ptr [ebp-8]
 005122EA    mov         eax,dword ptr [ebp-4]
 005122ED    mov         al,byte ptr [eax+20A];TCustomActionBar.FEdgeOuter:TEdgeStyle
 005122F3    dec         eax
 005122F4    sub         al,2
>005122F6    jae         005122FB
 005122F8    inc         dword ptr [ebp-8]
 005122FB    mov         eax,dword ptr [ebp-8]
 005122FE    pop         ecx
 005122FF    pop         ecx
 00512300    pop         ebp
 00512301    ret
end;*}

//00512304
{*function sub_00512304:?;
begin
 00512304    push        ebp
 00512305    mov         ebp,esp
 00512307    add         esp,0FFFFFFF8
 0051230A    mov         dword ptr [ebp-4],eax
 0051230D    mov         eax,dword ptr [ebp-4]
 00512310    cmp         byte ptr [eax+224],0;TCustomActionBar.FDesignable:Boolean
>00512317    jne         0051231F
 00512319    mov         byte ptr [ebp-5],0
>0051231D    jmp         0051233D
 0051231F    mov         eax,dword ptr [ebp-4]
 00512322    test        byte ptr [eax+1C],10;TCustomActionBar.FComponentState:TComponentState
>00512326    jne         00512338
 00512328    mov         eax,dword ptr [ebp-4]
 0051232B    cmp         byte ptr [eax+225],0;TCustomActionBar.FDesignMode:Boolean
>00512332    jne         00512338
 00512334    xor         eax,eax
>00512336    jmp         0051233A
 00512338    mov         al,1
 0051233A    mov         byte ptr [ebp-5],al
 0051233D    mov         al,byte ptr [ebp-5]
 00512340    pop         ecx
 00512341    pop         ecx
 00512342    pop         ebp
 00512343    ret
end;*}

//00512344
procedure TActionToolBar.SetHorzMargin(Value:Integer);
begin
{*
 00512344    push        ebp
 00512345    mov         ebp,esp
 00512347    add         esp,0FFFFFFF8
 0051234A    push        esi
 0051234B    mov         dword ptr [ebp-8],edx
 0051234E    mov         dword ptr [ebp-4],eax
 00512351    mov         eax,dword ptr [ebp-4]
 00512354    mov         eax,dword ptr [eax+258];TActionToolBar.FHorzMargin:Integer
 0051235A    cmp         eax,dword ptr [ebp-8]
>0051235D    je          0051237F
 0051235F    mov         eax,dword ptr [ebp-8]
 00512362    mov         edx,dword ptr [ebp-4]
 00512365    mov         dword ptr [edx+258],eax;TActionToolBar.FHorzMargin:Integer
 0051236B    mov         eax,dword ptr [ebp-4]
 0051236E    call        004CF09C
 00512373    mov         eax,dword ptr [ebp-4]
 00512376    mov         si,0FFEE
 0051237A    call        @CallDynaInst;TWinControl.sub_004CDF1C
 0051237F    pop         esi
 00512380    pop         ecx
 00512381    pop         ecx
 00512382    pop         ebp
 00512383    ret
*}
end;

//00512384
procedure TActionToolBar.SetVertMargin(Value:Integer);
begin
{*
 00512384    push        ebp
 00512385    mov         ebp,esp
 00512387    add         esp,0FFFFFFF8
 0051238A    push        esi
 0051238B    mov         dword ptr [ebp-8],edx
 0051238E    mov         dword ptr [ebp-4],eax
 00512391    mov         eax,dword ptr [ebp-4]
 00512394    mov         eax,dword ptr [eax+254];TActionToolBar.FVertMargin:Integer
 0051239A    cmp         eax,dword ptr [ebp-8]
>0051239D    je          005123BF
 0051239F    mov         eax,dword ptr [ebp-8]
 005123A2    mov         edx,dword ptr [ebp-4]
 005123A5    mov         dword ptr [edx+254],eax;TActionToolBar.FVertMargin:Integer
 005123AB    mov         eax,dword ptr [ebp-4]
 005123AE    call        004CF09C
 005123B3    mov         eax,dword ptr [ebp-4]
 005123B6    mov         si,0FFEE
 005123BA    call        @CallDynaInst;TWinControl.sub_004CDF1C
 005123BF    pop         esi
 005123C0    pop         ecx
 005123C1    pop         ecx
 005123C2    pop         ebp
 005123C3    ret
*}
end;

//005123C4
procedure TActionToolBar.SetHorzSeparator(Value:Boolean);
begin
{*
 005123C4    push        ebp
 005123C5    mov         ebp,esp
 005123C7    add         esp,0FFFFFFF8
 005123CA    push        esi
 005123CB    mov         byte ptr [ebp-5],dl
 005123CE    mov         dword ptr [ebp-4],eax
 005123D1    mov         eax,dword ptr [ebp-4]
 005123D4    mov         al,byte ptr [eax+25C];TActionToolBar.FHorzSeparator:Boolean
 005123DA    cmp         al,byte ptr [ebp-5]
>005123DD    je          005123FF
 005123DF    mov         al,byte ptr [ebp-5]
 005123E2    mov         edx,dword ptr [ebp-4]
 005123E5    mov         byte ptr [edx+25C],al;TActionToolBar.FHorzSeparator:Boolean
 005123EB    mov         eax,dword ptr [ebp-4]
 005123EE    call        004CF09C
 005123F3    mov         eax,dword ptr [ebp-4]
 005123F6    mov         si,0FFEE
 005123FA    call        @CallDynaInst;TWinControl.sub_004CDF1C
 005123FF    pop         esi
 00512400    pop         ecx
 00512401    pop         ecx
 00512402    pop         ebp
 00512403    ret
*}
end;

//00512404
{*procedure sub_00512404(?:TCustomActionToolBar; ?:?);
begin
 00512404    push        ebp
 00512405    mov         ebp,esp
 00512407    add         esp,0FFFFFFF8
 0051240A    push        esi
 0051240B    mov         byte ptr [ebp-5],dl
 0051240E    mov         dword ptr [ebp-4],eax
 00512411    mov         eax,dword ptr [ebp-4]
 00512414    mov         al,byte ptr [eax+25C];TCustomActionToolBar.FHorzSeparator:Boolean
 0051241A    cmp         al,byte ptr [ebp-5]
>0051241D    je          0051243F
 0051241F    mov         al,byte ptr [ebp-5]
 00512422    mov         edx,dword ptr [ebp-4]
 00512425    mov         byte ptr [edx+25C],al;TCustomActionToolBar.FHorzSeparator:Boolean
 0051242B    mov         eax,dword ptr [ebp-4]
 0051242E    call        004CF09C
 00512433    mov         eax,dword ptr [ebp-4]
 00512436    mov         si,0FFEE
 0051243A    call        @CallDynaInst;TWinControl.sub_004CDF1C
 0051243F    pop         esi
 00512440    pop         ecx
 00512441    pop         ecx
 00512442    pop         ebp
 00512443    ret
end;*}

//00512444
{*procedure TCustomActionBar.sub_00512444(?:?);
begin
 00512444    push        ebp
 00512445    mov         ebp,esp
 00512447    add         esp,0FFFFFFF8
 0051244A    mov         dword ptr [ebp-8],edx
 0051244D    mov         dword ptr [ebp-4],eax
 00512450    mov         eax,dword ptr [ebp-4]
 00512453    mov         edx,dword ptr [eax]
 00512455    call        dword ptr [edx+120];TCustomActionBar.Reset
 0051245B    pop         ecx
 0051245C    pop         ecx
 0051245D    pop         ebp
 0051245E    ret
end;*}

//00512460
procedure TCustomActionBar.Reset;
begin
{*
 00512460    push        ebp
 00512461    mov         ebp,esp
 00512463    add         esp,0FFFFFFF8
 00512466    mov         dword ptr [ebp-4],eax
 00512469    mov         eax,dword ptr [ebp-4]
 0051246C    cmp         dword ptr [eax+214],0
>00512473    je          005124DA
 00512475    mov         eax,dword ptr [ebp-4]
 00512478    call        TWinControl.DisableAlign
 0051247D    mov         eax,dword ptr [ebp-4]
 00512480    mov         eax,dword ptr [eax+210]
 00512486    mov         dword ptr [ebp-8],eax
 00512489    xor         eax,eax
 0051248B    push        ebp
 0051248C    push        5124D3
 00512491    push        dword ptr fs:[eax]
 00512494    mov         dword ptr fs:[eax],esp
 00512497    mov         eax,dword ptr [ebp-8]
 0051249A    call        TCollectionItem.GetIndex
 0051249F    mov         edx,eax
 005124A1    mov         eax,dword ptr [ebp-4]
 005124A4    mov         eax,dword ptr [eax+214]
 005124AA    call        TCustomActionManager.ResetActionBar
 005124AF    xor         eax,eax
 005124B1    pop         edx
 005124B2    pop         ecx
 005124B3    pop         ecx
 005124B4    mov         dword ptr fs:[eax],edx
 005124B7    push        5124DA
 005124BC    mov         edx,dword ptr [ebp-8]
 005124BF    mov         eax,dword ptr [ebp-4]
 005124C2    mov         ecx,dword ptr [eax]
 005124C4    call        dword ptr [ecx+124]
 005124CA    mov         eax,dword ptr [ebp-4]
 005124CD    call        TWinControl.EnableAlign
 005124D2    ret
>005124D3    jmp         @HandleFinally
>005124D8    jmp         005124BC
 005124DA    pop         ecx
 005124DB    pop         ecx
 005124DC    pop         ebp
 005124DD    ret
*}
end;

//005124E0
procedure TCustomActionBar.sub_004CC91C;
begin
{*
 005124E0    push        ebp
 005124E1    mov         ebp,esp
 005124E3    add         esp,0FFFFFFF0
 005124E6    xor         edx,edx
 005124E8    mov         dword ptr [ebp-10],edx
 005124EB    mov         dword ptr [ebp-4],eax
 005124EE    xor         eax,eax
 005124F0    push        ebp
 005124F1    push        51255A
 005124F6    push        dword ptr fs:[eax]
 005124F9    mov         dword ptr fs:[eax],esp
 005124FC    mov         eax,dword ptr [ebp-4]
 005124FF    call        TControl.sub_004CC91C
 00512504    mov         eax,dword ptr [ebp-4]
 00512507    cmp         byte ptr [eax+218],0;TCustomActionBar.FAllowHiding:Boolean
>0051250E    jne         00512544
 00512510    mov         eax,dword ptr [ebp-4]
 00512513    mov         eax,dword ptr [eax+8];TCustomActionBar.Name:TComponentName
 00512516    mov         dword ptr [ebp-0C],eax
 00512519    mov         byte ptr [ebp-8],0B
 0051251D    lea         eax,[ebp-0C]
 00512520    push        eax
 00512521    push        0
 00512523    lea         edx,[ebp-10]
 00512526    mov         eax,[0055B1DC];^SCannotHideActionBand:TResStringRec
 0051252B    call        LoadResString
 00512530    mov         ecx,dword ptr [ebp-10]
 00512533    mov         dl,1
 00512535    mov         eax,[004653B4];Exception
 0051253A    call        Exception.CreateFmt;Exception.Create
 0051253F    call        @RaiseExcept
 00512544    xor         eax,eax
 00512546    pop         edx
 00512547    pop         ecx
 00512548    pop         ecx
 00512549    mov         dword ptr fs:[eax],edx
 0051254C    push        512561
 00512551    lea         eax,[ebp-10]
 00512554    call        @LStrClr
 00512559    ret
>0051255A    jmp         @HandleFinally
>0051255F    jmp         00512551
 00512561    mov         esp,ebp
 00512563    pop         ebp
 00512564    ret
*}
end;

//00512568
{*procedure TCustomActionBar.WMContextMenu(?:?);
begin
 00512568    push        ebp
 00512569    mov         ebp,esp
 0051256B    add         esp,0FFFFFFF4
 0051256E    mov         dword ptr [ebp-8],edx
 00512571    mov         dword ptr [ebp-4],eax
 00512574    mov         edx,dword ptr [ebp-8]
 00512577    mov         eax,dword ptr [ebp-4]
 0051257A    call        TWinControl.WMContextMenu
 0051257F    mov         eax,dword ptr [ebp-4]
 00512582    cmp         dword ptr [eax+210],0;TCustomActionBar.FActionClient:TActionClient
>00512589    je          00512620
 0051258F    mov         eax,dword ptr [ebp-4]
 00512592    mov         eax,dword ptr [eax+210];TCustomActionBar.FActionClient:TActionClient
 00512598    call        TActionClient.GetContextItems
 0051259D    call        00479B60
 005125A2    test        eax,eax
>005125A4    jle         00512620
 005125A6    mov         eax,dword ptr [ebp-4]
 005125A9    call        00513228
 005125AE    mov         edx,dword ptr [ebp-4]
 005125B1    mov         ecx,dword ptr [edx+4];TCustomActionBar.FOwner:TComponent
 005125B4    mov         dl,1
 005125B6    call        dword ptr [eax+2C]
 005125B9    mov         edx,dword ptr ds:[4FF100];TCustomActionPopupMenu
 005125BF    call        @AsClass
 005125C4    mov         dword ptr [ebp-0C],eax
 005125C7    mov         eax,dword ptr [ebp-0C]
 005125CA    mov         byte ptr [eax+270],1;TCustomActionPopupMenu.FContextBar:Boolean
 005125D1    mov         eax,[0055B4C8];^Application:TApplication
 005125D6    mov         eax,dword ptr [eax]
 005125D8    mov         edx,dword ptr [eax+30];TApplication.FHandle:HWND
 005125DB    mov         eax,dword ptr [ebp-0C]
 005125DE    call        004D0318
 005125E3    mov         edx,dword ptr [ebp-4]
 005125E6    mov         eax,dword ptr [ebp-0C]
 005125E9    mov         ecx,dword ptr [eax]
 005125EB    call        dword ptr [ecx+68];TCustomActionPopupMenu.sub_00502F58
 005125EE    mov         eax,dword ptr [ebp-4]
 005125F1    mov         edx,dword ptr [eax+210];TCustomActionBar.FActionClient:TActionClient
 005125F7    mov         eax,dword ptr [ebp-0C]
 005125FA    mov         ecx,dword ptr [eax]
 005125FC    call        dword ptr [ecx+124];TCustomActionPopupMenu.sub_0051191C
 00512602    mov         ecx,dword ptr [ebp-8]
 00512605    movsx       ecx,word ptr [ecx+0A]
 00512609    mov         edx,dword ptr [ebp-8]
 0051260C    movsx       edx,word ptr [edx+8]
 00512610    mov         eax,dword ptr [ebp-0C]
 00512613    call        TCustomActionPopupMenu.Popup
 00512618    mov         eax,dword ptr [ebp-0C]
 0051261B    call        TObject.Free
 00512620    mov         esp,ebp
 00512622    pop         ebp
 00512623    ret
end;*}

//00512624
{*function sub_00512624(?:TCustomActionBar):?;
begin
 00512624    push        ebp
 00512625    mov         ebp,esp
 00512627    add         esp,0FFFFFFF8
 0051262A    mov         dword ptr [ebp-4],eax
 0051262D    mov         eax,dword ptr [ebp-4]
 00512630    mov         eax,dword ptr [eax+210];TCustomActionBar.FActionClient:TActionClient
 00512636    mov         edx,dword ptr ds:[509200];TActionBarItem
 0051263C    call        @IsClass
 00512641    test        al,al
>00512643    je          00512654
 00512645    mov         eax,dword ptr [ebp-4]
 00512648    mov         eax,dword ptr [eax+210];TCustomActionBar.FActionClient:TActionClient
 0051264E    cmp         byte ptr [eax+38],0
>00512652    jne         00512658
 00512654    xor         eax,eax
>00512656    jmp         0051265A
 00512658    mov         al,1
 0051265A    mov         byte ptr [ebp-5],al
 0051265D    mov         al,byte ptr [ebp-5]
 00512660    pop         ecx
 00512661    pop         ecx
 00512662    pop         ebp
 00512663    ret
end;*}

//00512664
{*procedure sub_00512664(?:?);
begin
 00512664    push        ebp
 00512665    mov         ebp,esp
 00512667    add         esp,0FFFFFFF8
 0051266A    push        esi
 0051266B    mov         byte ptr [ebp-5],dl
 0051266E    mov         dword ptr [ebp-4],eax
 00512671    mov         eax,dword ptr [ebp-4]
 00512674    mov         eax,dword ptr [eax+210];TCustomActionBar.FActionClient:TActionClient
 0051267A    mov         edx,dword ptr ds:[509200];TActionBarItem
 00512680    call        @IsClass
 00512685    test        al,al
>00512687    je          0051269A
 00512689    mov         dl,byte ptr [ebp-5]
 0051268C    mov         eax,dword ptr [ebp-4]
 0051268F    mov         eax,dword ptr [eax+210];TCustomActionBar.FActionClient:TActionClient
 00512695    call        TActionBarItem.SetAutoSize
 0051269A    mov         eax,dword ptr [ebp-4]
 0051269D    mov         si,0FFEE
 005126A1    call        @CallDynaInst;TWinControl.sub_004CDF1C
 005126A6    pop         esi
 005126A7    pop         ecx
 005126A8    pop         ecx
 005126A9    pop         ebp
 005126AA    ret
end;*}

//005126AC
{*procedure sub_005126AC(?:?; ?:?; ?:?);
begin
 005126AC    push        ebp
 005126AD    mov         ebp,esp
 005126AF    add         esp,0FFFFFFC4
 005126B2    push        ebx
 005126B3    mov         dword ptr [ebp-0C],ecx
 005126B6    mov         dword ptr [ebp-8],edx
 005126B9    mov         dword ptr [ebp-4],eax
 005126BC    lea         ecx,[ebp-1C]
 005126BF    mov         edx,dword ptr [ebp+8]
 005126C2    mov         eax,dword ptr [ebp-0C]
 005126C5    call        Point
 005126CA    lea         edx,[ebp-1C]
 005126CD    mov         eax,dword ptr [ebp-4]
 005126D0    call        00511158
 005126D5    mov         dword ptr [ebp-10],eax
 005126D8    mov         eax,dword ptr [ebp-8]
 005126DB    mov         eax,dword ptr [eax+40]
 005126DE    cmp         dword ptr [eax+40],0
>005126E2    je          005126F6
 005126E4    mov         eax,dword ptr [ebp-8]
 005126E7    mov         eax,dword ptr [eax+40]
 005126EA    mov         eax,dword ptr [eax+40]
 005126ED    cmp         eax,dword ptr [ebp-10]
>005126F0    je          005127DF
 005126F6    cmp         dword ptr [ebp-10],0
>005126FA    jne         00512716
 005126FC    mov         eax,dword ptr [ebp-4]
 005126FF    call        00511668
 00512704    mov         edx,eax
 00512706    mov         eax,dword ptr [ebp-8]
 00512709    mov         eax,dword ptr [eax+40]
 0051270C    mov         ecx,dword ptr [eax]
 0051270E    call        dword ptr [ecx+10]
>00512711    jmp         005127CE
 00512716    xor         eax,eax
 00512718    mov         dword ptr [ebp-14],eax
 0051271B    lea         edx,[ebp-2C]
 0051271E    mov         eax,dword ptr [ebp-10]
 00512721    call        004CA6AC
 00512726    mov         eax,dword ptr [ebp-24]
 00512729    cmp         eax,dword ptr [ebp-0C]
>0051272C    jl          00512741
 0051272E    lea         edx,[ebp-3C]
 00512731    mov         eax,dword ptr [ebp-10]
 00512734    call        004CA6AC
 00512739    mov         eax,dword ptr [ebp-30]
 0051273C    cmp         eax,dword ptr [ebp+8]
>0051273F    jge         00512770
 00512741    mov         eax,dword ptr [ebp-10]
 00512744    mov         eax,dword ptr [eax+16C]
 0051274A    call        TCollectionItem.GetIndex
 0051274F    mov         ebx,eax
 00512751    mov         eax,dword ptr [ebp-10]
 00512754    mov         eax,dword ptr [eax+16C]
 0051275A    call        0050E760
 0051275F    call        00479B60
 00512764    dec         eax
 00512765    cmp         ebx,eax
>00512767    jge         00512770
 00512769    mov         dword ptr [ebp-14],1
 00512770    lea         edx,[ebp-2C]
 00512773    mov         eax,dword ptr [ebp-10]
 00512776    call        004CA6AC
 0051277B    mov         eax,dword ptr [ebp-2C]
 0051277E    cmp         eax,dword ptr [ebp-0C]
>00512781    jg          00512796
 00512783    lea         edx,[ebp-3C]
 00512786    mov         eax,dword ptr [ebp-10]
 00512789    call        004CA6AC
 0051278E    mov         eax,dword ptr [ebp-38]
 00512791    cmp         eax,dword ptr [ebp+8]
>00512794    jle         0051279B
 00512796    xor         eax,eax
 00512798    mov         dword ptr [ebp-14],eax
 0051279B    mov         eax,dword ptr [ebp-4]
 0051279E    call        00511668
 005127A3    mov         edx,eax
 005127A5    mov         eax,dword ptr [ebp-8]
 005127A8    mov         eax,dword ptr [eax+40]
 005127AB    mov         ecx,dword ptr [eax]
 005127AD    call        dword ptr [ecx+10]
 005127B0    mov         eax,dword ptr [ebp-10]
 005127B3    mov         eax,dword ptr [eax+16C]
 005127B9    call        TCollectionItem.GetIndex
 005127BE    mov         edx,eax
 005127C0    add         edx,dword ptr [ebp-14]
 005127C3    mov         eax,dword ptr [ebp-8]
 005127C6    mov         eax,dword ptr [eax+40]
 005127C9    mov         ecx,dword ptr [eax]
 005127CB    call        dword ptr [ecx+14]
 005127CE    mov         eax,dword ptr [ebp-8]
 005127D1    mov         edx,dword ptr [eax+40]
 005127D4    mov         eax,dword ptr [ebp-4]
 005127D7    mov         ecx,dword ptr [eax]
 005127D9    call        dword ptr [ecx+0D4];TCustomActionBar.sub_0050FEB4
 005127DF    pop         ebx
 005127E0    mov         esp,ebp
 005127E2    pop         ebp
 005127E3    ret         4
end;*}

//005127E8
procedure sub_005127E8;
begin
{*
 005127E8    push        ebp
 005127E9    mov         ebp,esp
 005127EB    add         esp,0FFFFFFF4
 005127EE    mov         dword ptr [ebp-4],eax
 005127F1    mov         eax,dword ptr [ebp-4]
 005127F4    cmp         dword ptr [eax+210],0;TCustomActionBar.FActionClient:TActionClient
>005127FB    je          00512851
 005127FD    mov         eax,dword ptr [ebp-4]
 00512800    mov         eax,dword ptr [eax+210];TCustomActionBar.FActionClient:TActionClient
 00512806    call        TActionClient.GetItems
 0051280B    call        00479B60
 00512810    dec         eax
 00512811    test        eax,eax
>00512813    jl          00512846
 00512815    inc         eax
 00512816    mov         dword ptr [ebp-0C],eax
 00512819    mov         dword ptr [ebp-8],0
 00512820    mov         eax,dword ptr [ebp-4]
 00512823    mov         eax,dword ptr [eax+210];TCustomActionBar.FActionClient:TActionClient
 00512829    call        TActionClient.GetItems
 0051282E    mov         edx,dword ptr [ebp-8]
 00512831    call        0050D884
 00512836    add         eax,40
 00512839    call        FreeAndNil
 0051283E    inc         dword ptr [ebp-8]
 00512841    dec         dword ptr [ebp-0C]
>00512844    jne         00512820
 00512846    mov         eax,dword ptr [ebp-4]
 00512849    mov         edx,dword ptr [eax]
 0051284B    call        dword ptr [edx+0D8];TCustomActionBar.sub_0050FFC0
 00512851    mov         esp,ebp
 00512853    pop         ebp
 00512854    ret
*}
end;

//00512858
procedure TCustomActionBar.SetBounds(ALeft:Integer; ATop:Integer; AWidth:Integer; AHeight:Integer);
begin
{*
 00512858    push        ebp
 00512859    mov         ebp,esp
 0051285B    add         esp,0FFFFFFF0
 0051285E    mov         dword ptr [ebp-0C],ecx
 00512861    mov         dword ptr [ebp-8],edx
 00512864    mov         dword ptr [ebp-4],eax
 00512867    mov         eax,dword ptr [ebp-4]
 0051286A    call        004CE4E8
 0051286F    test        al,al
>00512871    jne         00512915
 00512877    mov         eax,dword ptr [ebp-4]
 0051287A    mov         eax,dword ptr [eax+210];TCustomActionBar.FActionClient:TActionClient
 00512880    mov         edx,dword ptr ds:[509200];TActionBarItem
 00512886    call        @IsClass
 0051288B    test        al,al
>0051288D    je          00512915
 00512893    mov         eax,dword ptr [ebp-4]
 00512896    mov         al,byte ptr [eax+5B];TCustomActionBar.FAlign:TAlign
 00512899    dec         eax
 0051289A    sub         al,2
>0051289C    jb          005128B3
 0051289E    mov         eax,dword ptr [ebp-4]
 005128A1    mov         edx,dword ptr [eax]
 005128A3    call        dword ptr [edx+54];TCustomActionBar.sub_004CDEBC
 005128A6    test        al,al
>005128A8    je          005128C1
 005128AA    mov         eax,dword ptr [ebp-4]
 005128AD    cmp         byte ptr [eax+5B],0;TCustomActionBar.FAlign:TAlign
>005128B1    jne         005128C1
 005128B3    mov         eax,dword ptr [ebp-4]
 005128B6    mov         edx,dword ptr [eax]
 005128B8    call        dword ptr [edx+0FC];TCustomActionBar.sub_005120EC
 005128BE    mov         dword ptr [ebp+8],eax
 005128C1    mov         eax,dword ptr [ebp-4]
 005128C4    mov         al,byte ptr [eax+5B];TCustomActionBar.FAlign:TAlign
 005128C7    add         al,0FD
 005128C9    sub         al,2
>005128CB    jb          005128E2
 005128CD    mov         eax,dword ptr [ebp-4]
 005128D0    mov         edx,dword ptr [eax]
 005128D2    call        dword ptr [edx+54];TCustomActionBar.sub_004CDEBC
 005128D5    test        al,al
>005128D7    je          005128F2
 005128D9    mov         eax,dword ptr [ebp-4]
 005128DC    cmp         byte ptr [eax+5B],0;TCustomActionBar.FAlign:TAlign
>005128E0    jne         005128F2
 005128E2    mov         eax,dword ptr [ebp-4]
 005128E5    mov         edx,dword ptr [eax]
 005128E7    call        dword ptr [edx+100];TCustomActionBar.sub_005121EC
 005128ED    mov         dword ptr [ebp-10],eax
>005128F0    jmp         005128F8
 005128F2    mov         eax,dword ptr [ebp+0C]
 005128F5    mov         dword ptr [ebp-10],eax
 005128F8    mov         eax,dword ptr [ebp-4]
 005128FB    mov         edx,dword ptr [eax]
 005128FD    call        dword ptr [edx+54];TCustomActionBar.sub_004CDEBC
 00512900    test        al,al
>00512902    jne         00512915
 00512904    mov         eax,dword ptr [ebp-10]
 00512907    mov         edx,dword ptr [ebp-4]
 0051290A    cmp         eax,dword ptr [edx+48];TCustomActionBar.Width:Integer
>0051290D    je          00512915
 0051290F    mov         eax,dword ptr [ebp-10]
 00512912    mov         dword ptr [ebp+0C],eax
 00512915    mov         eax,dword ptr [ebp+0C]
 00512918    push        eax
 00512919    mov         eax,dword ptr [ebp+8]
 0051291C    push        eax
 0051291D    mov         ecx,dword ptr [ebp-0C]
 00512920    mov         edx,dword ptr [ebp-8]
 00512923    mov         eax,dword ptr [ebp-4]
 00512926    call        TWinControl.SetBounds
 0051292B    mov         esp,ebp
 0051292D    pop         ebp
 0051292E    ret         8
*}
end;

//00512934
procedure TCustomActionBar.WMPaint(Message:TWMPaint);
begin
{*
 00512934    push        ebp
 00512935    mov         ebp,esp
 00512937    add         esp,0FFFFFFF8
 0051293A    mov         dword ptr [ebp-8],edx
 0051293D    mov         dword ptr [ebp-4],eax
 00512940    mov         ax,[0051297C];0x100 gvar_0051297C
 00512946    mov         edx,dword ptr [ebp-4]
 00512949    or          ax,word ptr [edx+54];TCustomActionBar.FControlState:TControlState
 0051294D    mov         edx,dword ptr [ebp-4]
 00512950    mov         word ptr [edx+54],ax;TCustomActionBar.FControlState:TControlState
 00512954    mov         edx,dword ptr [ebp-8]
 00512957    mov         eax,dword ptr [ebp-4]
 0051295A    call        TWinControl.WMPaint
 0051295F    mov         ax,[0051297C];0x100 gvar_0051297C
 00512965    mov         edx,dword ptr [ebp-4]
 00512968    not         eax
 0051296A    and         ax,word ptr [edx+54];TCustomActionBar.FControlState:TControlState
 0051296E    mov         edx,dword ptr [ebp-4]
 00512971    mov         word ptr [edx+54],ax;TCustomActionBar.FControlState:TControlState
 00512975    pop         ecx
 00512976    pop         ecx
 00512977    pop         ebp
 00512978    ret
*}
end;

//00512980
procedure TActionToolBar.SetColorMap(Value:TCustomActionBarColorMap);
begin
{*
 00512980    push        ebp
 00512981    mov         ebp,esp
 00512983    add         esp,0FFFFFFF8
 00512986    mov         dword ptr [ebp-8],edx
 00512989    mov         dword ptr [ebp-4],eax
 0051298C    mov         eax,dword ptr [ebp-4]
 0051298F    mov         eax,dword ptr [eax+220];TActionToolBar.FColorMap:TCustomActionBarColorMap
 00512995    cmp         eax,dword ptr [ebp-8]
>00512998    je          00512A34
 0051299E    mov         eax,dword ptr [ebp-4]
 005129A1    cmp         dword ptr [eax+220],0;TActionToolBar.FColorMap:TCustomActionBarColorMap
>005129A8    je          005129BB
 005129AA    mov         edx,dword ptr [ebp-4]
 005129AD    mov         eax,dword ptr [ebp-4]
 005129B0    mov         eax,dword ptr [eax+220];TActionToolBar.FColorMap:TCustomActionBarColorMap
 005129B6    call        0050F81C
 005129BB    mov         eax,dword ptr [ebp-8]
 005129BE    mov         edx,dword ptr [ebp-4]
 005129C1    mov         dword ptr [edx+220],eax;TActionToolBar.FColorMap:TCustomActionBarColorMap
 005129C7    mov         eax,dword ptr [ebp-4]
 005129CA    cmp         dword ptr [eax+220],0;TActionToolBar.FColorMap:TCustomActionBarColorMap
>005129D1    jne         005129E4
 005129D3    mov         eax,dword ptr [ebp-4]
 005129D6    call        00512A60
 005129DB    mov         edx,dword ptr [ebp-4]
 005129DE    mov         dword ptr [edx+220],eax;TActionToolBar.FColorMap:TCustomActionBarColorMap
 005129E4    mov         edx,dword ptr [ebp-4]
 005129E7    mov         eax,dword ptr [ebp-4]
 005129EA    mov         eax,dword ptr [eax+220];TActionToolBar.FColorMap:TCustomActionBarColorMap
 005129F0    call        0050F650
 005129F5    mov         eax,dword ptr [ebp-4]
 005129F8    mov         eax,dword ptr [eax+220];TActionToolBar.FColorMap:TCustomActionBarColorMap
 005129FE    mov         edx,dword ptr [eax+40];TCustomActionBarColorMap.FColor:TColor
 00512A01    mov         eax,dword ptr [ebp-4]
 00512A04    call        TPanel.SetColor
 00512A09    mov         eax,dword ptr [ebp-4]
 00512A0C    mov         edx,dword ptr [eax]
 00512A0E    call        dword ptr [edx+7C];TActionToolBar.sub_004D3648
 00512A11    mov         eax,dword ptr [ebp-4]
 00512A14    call        TWinControl.HandleAllocated
 00512A19    test        al,al
>00512A1B    je          00512A34
 00512A1D    push        0
 00512A1F    push        1
 00512A21    push        85
 00512A26    mov         eax,dword ptr [ebp-4]
 00512A29    call        TWinControl.GetHandle
 00512A2E    push        eax
 00512A2F    call        user32.SendMessageA
 00512A34    pop         ecx
 00512A35    pop         ecx
 00512A36    pop         ebp
 00512A37    ret
*}
end;

//00512A38
{*function sub_00512A38:?;
begin
 00512A38    push        ebp
 00512A39    mov         ebp,esp
 00512A3B    add         esp,0FFFFFFF8
 00512A3E    mov         dword ptr [ebp-4],eax
 00512A41    mov         eax,dword ptr [ebp-4]
 00512A44    mov         edx,dword ptr [eax]
 00512A46    call        dword ptr [edx+148];TCustomActionBar.sub_0051331C
 00512A4C    mov         edx,dword ptr [ebp-4]
 00512A4F    mov         ecx,dword ptr [eax]
 00512A51    call        dword ptr [ecx+4]
 00512A54    mov         dword ptr [ebp-8],eax
 00512A57    mov         eax,dword ptr [ebp-8]
 00512A5A    pop         ecx
 00512A5B    pop         ecx
 00512A5C    pop         ebp
 00512A5D    ret
end;*}

//00512A60
{*function sub_00512A60(?:TCustomActionBar):?;
begin
 00512A60    push        ebp
 00512A61    mov         ebp,esp
 00512A63    add         esp,0FFFFFFF8
 00512A66    mov         dword ptr [ebp-4],eax
 00512A69    mov         eax,dword ptr [ebp-4]
 00512A6C    add         eax,274;TCustomActionBar.FDefaultColorMap:TCustomActionBarColorMap
 00512A71    call        FreeAndNil
 00512A76    mov         eax,dword ptr [ebp-4]
 00512A79    mov         edx,dword ptr [eax]
 00512A7B    call        dword ptr [edx+10C];TCustomActionBar.sub_00512A38
 00512A81    mov         ecx,dword ptr [ebp-4]
 00512A84    mov         dl,1
 00512A86    call        dword ptr [eax+2C]
 00512A89    mov         edx,dword ptr [ebp-4]
 00512A8C    mov         dword ptr [edx+274],eax;TCustomActionBar.FDefaultColorMap:TCustomActionBarColorMap
 00512A92    mov         edx,512AE4;'DefaultColorMap'
 00512A97    mov         eax,dword ptr [ebp-4]
 00512A9A    mov         eax,dword ptr [eax+274];TCustomActionBar.FDefaultColorMap:TCustomActionBarColorMap
 00512AA0    mov         ecx,dword ptr [eax]
 00512AA2    call        dword ptr [ecx+18];TComponent.SetName
 00512AA5    mov         dl,1
 00512AA7    mov         eax,dword ptr [ebp-4]
 00512AAA    mov         eax,dword ptr [eax+274];TCustomActionBar.FDefaultColorMap:TCustomActionBarColorMap
 00512AB0    call        00483A50
 00512AB5    mov         edx,dword ptr [ebp-4]
 00512AB8    mov         eax,dword ptr [ebp-4]
 00512ABB    mov         eax,dword ptr [eax+274];TCustomActionBar.FDefaultColorMap:TCustomActionBarColorMap
 00512AC1    call        0050F650
 00512AC6    mov         eax,dword ptr [ebp-4]
 00512AC9    mov         eax,dword ptr [eax+274];TCustomActionBar.FDefaultColorMap:TCustomActionBarColorMap
 00512ACF    mov         dword ptr [ebp-8],eax
 00512AD2    mov         eax,dword ptr [ebp-8]
 00512AD5    pop         ecx
 00512AD6    pop         ecx
 00512AD7    pop         ebp
 00512AD8    ret
end;*}

//00512AF4
{*procedure sub_00512AF4(?:?);
begin
 00512AF4    push        ebp
 00512AF5    mov         ebp,esp
 00512AF7    add         esp,0FFFFFFC0
 00512AFA    mov         dword ptr [ebp-8],edx
 00512AFD    mov         dword ptr [ebp-4],eax
 00512B00    mov         eax,dword ptr [ebp-4]
 00512B03    mov         dl,byte ptr ds:[5131FC];0x0 gvar_005131FC
 00512B09    cmp         dl,byte ptr [eax+208];TCustomActionBar.FEdgeBorders:TEdgeBorders
>00512B0F    je          005131F7
 00512B15    mov         eax,dword ptr [ebp-4]
 00512B18    mov         al,byte ptr [eax+20A];TCustomActionBar.FEdgeOuter:TEdgeStyle
 00512B1E    mov         edx,dword ptr [ebp-4]
 00512B21    add         al,byte ptr [edx+209];TCustomActionBar.FEdgeInner:TEdgeStyle
 00512B27    mov         edx,dword ptr [ebp-4]
 00512B2A    mov         dl,byte ptr [edx+20A];TCustomActionBar.FEdgeOuter:TEdgeStyle
 00512B30    add         edx,edx
 00512B32    add         al,dl
 00512B34    mov         edx,dword ptr [ebp-4]
 00512B37    mov         dl,byte ptr [edx+209];TCustomActionBar.FEdgeInner:TEdgeStyle
 00512B3D    lea         edx,[edx+edx*2]
 00512B40    add         al,dl
 00512B42    sub         al,3
 00512B44    mov         byte ptr [ebp-1D],al
 00512B47    mov         eax,dword ptr [ebp-4]
 00512B4A    call        TActionToolBar.GetColorMap
 00512B4F    mov         eax,dword ptr [eax+40]
 00512B52    mov         dword ptr [ebp-18],eax
 00512B55    mov         eax,dword ptr [ebp-4]
 00512B58    call        TActionToolBar.GetColorMap
 00512B5D    mov         eax,dword ptr [eax+40]
 00512B60    mov         dword ptr [ebp-1C],eax
 00512B63    xor         eax,eax
 00512B65    mov         al,byte ptr [ebp-1D]
 00512B68    cmp         eax,0B
>00512B6B    ja          00512DAD
 00512B71    jmp         dword ptr [eax*4+512B78]
 00512B71    dd          00512BA8
 00512B71    dd          00512BA8
 00512B71    dd          00512DAD
 00512B71    dd          00512BDD
 00512B71    dd          00512C12
 00512B71    dd          00512BDD
 00512B71    dd          00512DAD
 00512B71    dd          00512C81
 00512B71    dd          00512CE6
 00512B71    dd          00512DAD
 00512B71    dd          00512DAD
 00512B71    dd          00512D4B
 00512BA8    mov         eax,dword ptr [ebp-4]
 00512BAB    call        TActionToolBar.GetColorMap
 00512BB0    mov         eax,dword ptr [eax+40]
 00512BB3    mov         edx,13
 00512BB8    call        004F8F98
 00512BBD    mov         dword ptr [ebp-10],eax
 00512BC0    mov         eax,dword ptr [ebp-4]
 00512BC3    call        TActionToolBar.GetColorMap
 00512BC8    mov         eax,dword ptr [eax+40]
 00512BCB    mov         edx,0FFFFFFCE
 00512BD0    call        004F9070
 00512BD5    mov         dword ptr [ebp-14],eax
>00512BD8    jmp         00512DE5
 00512BDD    mov         eax,dword ptr [ebp-4]
 00512BE0    call        TActionToolBar.GetColorMap
 00512BE5    mov         eax,dword ptr [eax+40]
 00512BE8    mov         edx,0FFFFFFCE
 00512BED    call        004F9070
 00512BF2    mov         dword ptr [ebp-10],eax
 00512BF5    mov         eax,dword ptr [ebp-4]
 00512BF8    call        TActionToolBar.GetColorMap
 00512BFD    mov         eax,dword ptr [eax+40]
 00512C00    mov         edx,13
 00512C05    call        004F8F98
 00512C0A    mov         dword ptr [ebp-14],eax
>00512C0D    jmp         00512DE5
 00512C12    mov         eax,dword ptr [ebp-4]
 00512C15    call        TActionToolBar.GetColorMap
 00512C1A    mov         eax,dword ptr [eax+40]
 00512C1D    mov         edx,13
 00512C22    call        004F8F98
 00512C27    mov         edx,0FFFFFFE2
 00512C2C    call        004F9070
 00512C31    mov         dword ptr [ebp-18],eax
 00512C34    mov         eax,dword ptr [ebp-4]
 00512C37    call        TActionToolBar.GetColorMap
 00512C3C    mov         eax,dword ptr [eax+40]
 00512C3F    mov         edx,0FFFFFFCE
 00512C44    call        004F9070
 00512C49    mov         dword ptr [ebp-1C],eax
 00512C4C    mov         eax,dword ptr [ebp-4]
 00512C4F    call        TActionToolBar.GetColorMap
 00512C54    mov         eax,dword ptr [eax+40]
 00512C57    mov         edx,13
 00512C5C    call        004F8F98
 00512C61    mov         dword ptr [ebp-10],eax
 00512C64    mov         eax,dword ptr [ebp-4]
 00512C67    call        TActionToolBar.GetColorMap
 00512C6C    mov         eax,dword ptr [eax+40]
 00512C6F    mov         edx,0FFFFFFE7
 00512C74    call        004F9070
 00512C79    mov         dword ptr [ebp-14],eax
>00512C7C    jmp         00512DE5
 00512C81    mov         eax,dword ptr [ebp-4]
 00512C84    call        TActionToolBar.GetColorMap
 00512C89    mov         eax,dword ptr [eax+40]
 00512C8C    mov         edx,13
 00512C91    call        004F8F98
 00512C96    mov         dword ptr [ebp-18],eax
 00512C99    mov         eax,dword ptr [ebp-4]
 00512C9C    call        TActionToolBar.GetColorMap
 00512CA1    mov         eax,dword ptr [eax+40]
 00512CA4    mov         edx,0FFFFFFCE
 00512CA9    call        004F9070
 00512CAE    mov         dword ptr [ebp-1C],eax
 00512CB1    mov         eax,dword ptr [ebp-4]
 00512CB4    call        TActionToolBar.GetColorMap
 00512CB9    mov         eax,dword ptr [eax+40]
 00512CBC    mov         edx,0FFFFFFCE
 00512CC1    call        004F9070
 00512CC6    mov         dword ptr [ebp-10],eax
 00512CC9    mov         eax,dword ptr [ebp-4]
 00512CCC    call        TActionToolBar.GetColorMap
 00512CD1    mov         eax,dword ptr [eax+40]
 00512CD4    mov         edx,13
 00512CD9    call        004F8F98
 00512CDE    mov         dword ptr [ebp-14],eax
>00512CE1    jmp         00512DE5
 00512CE6    mov         eax,dword ptr [ebp-4]
 00512CE9    call        TActionToolBar.GetColorMap
 00512CEE    mov         eax,dword ptr [eax+40]
 00512CF1    mov         edx,0FFFFFFCE
 00512CF6    call        004F9070
 00512CFB    mov         dword ptr [ebp-18],eax
 00512CFE    mov         eax,dword ptr [ebp-4]
 00512D01    call        TActionToolBar.GetColorMap
 00512D06    mov         eax,dword ptr [eax+40]
 00512D09    mov         edx,13
 00512D0E    call        004F8F98
 00512D13    mov         dword ptr [ebp-1C],eax
 00512D16    mov         eax,dword ptr [ebp-4]
 00512D19    call        TActionToolBar.GetColorMap
 00512D1E    mov         eax,dword ptr [eax+40]
 00512D21    mov         edx,13
 00512D26    call        004F8F98
 00512D2B    mov         dword ptr [ebp-10],eax
 00512D2E    mov         eax,dword ptr [ebp-4]
 00512D31    call        TActionToolBar.GetColorMap
 00512D36    mov         eax,dword ptr [eax+40]
 00512D39    mov         edx,0FFFFFFCE
 00512D3E    call        004F9070
 00512D43    mov         dword ptr [ebp-14],eax
>00512D46    jmp         00512DE5
 00512D4B    mov         eax,dword ptr [ebp-4]
 00512D4E    call        TActionToolBar.GetColorMap
 00512D53    mov         eax,dword ptr [eax+40]
 00512D56    mov         edx,0FFFFFFCE
 00512D5B    call        004F9070
 00512D60    mov         dword ptr [ebp-18],eax
 00512D63    mov         eax,dword ptr [ebp-4]
 00512D66    call        TActionToolBar.GetColorMap
 00512D6B    mov         eax,dword ptr [eax+40]
 00512D6E    mov         edx,13
 00512D73    call        004F8F98
 00512D78    mov         dword ptr [ebp-1C],eax
 00512D7B    mov         eax,dword ptr [ebp-4]
 00512D7E    call        TActionToolBar.GetColorMap
 00512D83    mov         eax,dword ptr [eax+40]
 00512D86    mov         edx,0FFFFFFCE
 00512D8B    call        004F9070
 00512D90    mov         dword ptr [ebp-10],eax
 00512D93    mov         eax,dword ptr [ebp-4]
 00512D96    call        TActionToolBar.GetColorMap
 00512D9B    mov         eax,dword ptr [eax+40]
 00512D9E    mov         edx,13
 00512DA3    call        004F8F98
 00512DA8    mov         dword ptr [ebp-14],eax
>00512DAB    jmp         00512DE5
 00512DAD    mov         eax,dword ptr [ebp-4]
 00512DB0    call        TActionToolBar.GetColorMap
 00512DB5    mov         eax,dword ptr [eax+40]
 00512DB8    mov         dword ptr [ebp-10],eax
 00512DBB    mov         eax,dword ptr [ebp-4]
 00512DBE    call        TActionToolBar.GetColorMap
 00512DC3    mov         eax,dword ptr [eax+40]
 00512DC6    mov         dword ptr [ebp-14],eax
 00512DC9    mov         eax,dword ptr [ebp-4]
 00512DCC    call        TActionToolBar.GetColorMap
 00512DD1    mov         eax,dword ptr [eax+40]
 00512DD4    mov         dword ptr [ebp-18],eax
 00512DD7    mov         eax,dword ptr [ebp-4]
 00512DDA    call        TActionToolBar.GetColorMap
 00512DDF    mov         eax,dword ptr [eax+40]
 00512DE2    mov         dword ptr [ebp-1C],eax
 00512DE5    lea         eax,[ebp-2D]
 00512DE8    push        eax
 00512DE9    mov         eax,dword ptr [ebp-4]
 00512DEC    call        TWinControl.GetHandle
 00512DF1    push        eax
 00512DF2    call        user32.GetClientRect
 00512DF7    lea         eax,[ebp-3D]
 00512DFA    push        eax
 00512DFB    mov         eax,dword ptr [ebp-4]
 00512DFE    call        TWinControl.GetHandle
 00512E03    push        eax
 00512E04    call        user32.GetWindowRect
 00512E09    push        2
 00512E0B    lea         eax,[ebp-3D]
 00512E0E    push        eax
 00512E0F    mov         eax,dword ptr [ebp-4]
 00512E12    call        TWinControl.GetHandle
 00512E17    push        eax
 00512E18    push        0
 00512E1A    call        user32.MapWindowPoints
 00512E1F    mov         eax,dword ptr [ebp-39]
 00512E22    neg         eax
 00512E24    push        eax
 00512E25    mov         eax,dword ptr [ebp-3D]
 00512E28    neg         eax
 00512E2A    push        eax
 00512E2B    lea         eax,[ebp-2D]
 00512E2E    push        eax
 00512E2F    call        user32.OffsetRect
 00512E34    mov         eax,dword ptr [ebp-21]
 00512E37    push        eax
 00512E38    mov         eax,dword ptr [ebp-25]
 00512E3B    push        eax
 00512E3C    mov         eax,dword ptr [ebp-29]
 00512E3F    push        eax
 00512E40    mov         eax,dword ptr [ebp-2D]
 00512E43    push        eax
 00512E44    mov         eax,dword ptr [ebp-8]
 00512E47    push        eax
 00512E48    call        gdi32.ExcludeClipRect
 00512E4D    mov         eax,dword ptr [ebp-39]
 00512E50    neg         eax
 00512E52    push        eax
 00512E53    mov         eax,dword ptr [ebp-3D]
 00512E56    neg         eax
 00512E58    push        eax
 00512E59    lea         eax,[ebp-3D]
 00512E5C    push        eax
 00512E5D    call        user32.OffsetRect
 00512E62    mov         eax,dword ptr [ebp-4]
 00512E65    mov         eax,dword ptr [eax+21C];TCustomActionBar.FCanvas:TCanvas
 00512E6B    call        TCanvas.GetHandle
 00512E70    mov         dword ptr [ebp-0C],eax
 00512E73    xor         eax,eax
 00512E75    push        ebp
 00512E76    push        5131F0
 00512E7B    push        dword ptr fs:[eax]
 00512E7E    mov         dword ptr fs:[eax],esp
 00512E81    mov         eax,dword ptr [ebp-4]
 00512E84    mov         eax,dword ptr [eax+21C];TCustomActionBar.FCanvas:TCanvas
 00512E8A    mov         edx,dword ptr [ebp-8]
 00512E8D    call        TCanvas.SetHandle
 00512E92    mov         eax,dword ptr [ebp-4]
 00512E95    mov         eax,dword ptr [eax+21C];TCustomActionBar.FCanvas:TCanvas
 00512E9B    mov         eax,dword ptr [eax+10];TCanvas.Pen:TPen
 00512E9E    mov         edx,1
 00512EA3    call        TPen.SetWidth
 00512EA8    mov         eax,dword ptr [ebp-4]
 00512EAB    test        byte ptr [eax+208],2;TCustomActionBar.FEdgeBorders:TEdgeBorders
>00512EB2    jne         00512EF0
 00512EB4    mov         eax,dword ptr [ebp-4]
 00512EB7    test        byte ptr [eax+208],1;TCustomActionBar.FEdgeBorders:TEdgeBorders
>00512EBE    je          00512F6D
 00512EC4    mov         eax,dword ptr [ebp-4]
 00512EC7    mov         al,byte ptr [eax+20A];TCustomActionBar.FEdgeOuter:TEdgeStyle
 00512ECD    dec         eax
 00512ECE    sub         al,2
>00512ED0    jb          00512EF0
 00512ED2    mov         eax,dword ptr [ebp-4]
 00512ED5    cmp         byte ptr [eax+20A],0;TCustomActionBar.FEdgeOuter:TEdgeStyle
>00512EDC    jne         00512F6D
 00512EE2    mov         eax,dword ptr [ebp-4]
 00512EE5    mov         al,byte ptr [eax+209];TCustomActionBar.FEdgeInner:TEdgeStyle
 00512EEB    dec         eax
 00512EEC    sub         al,2
>00512EEE    jae         00512F6D
 00512EF0    mov         eax,dword ptr [ebp-4]
 00512EF3    mov         eax,dword ptr [eax+21C];TCustomActionBar.FCanvas:TCanvas
 00512EF9    mov         eax,dword ptr [eax+10];TCanvas.Pen:TPen
 00512EFC    mov         edx,dword ptr [ebp-10]
 00512EFF    call        TPen.SetColor
 00512F04    mov         eax,dword ptr [ebp-4]
 00512F07    test        byte ptr [eax+208],2;TCustomActionBar.FEdgeBorders:TEdgeBorders
>00512F0E    je          00512F39
 00512F10    mov         eax,dword ptr [ebp-4]
 00512F13    mov         eax,dword ptr [eax+21C];TCustomActionBar.FCanvas:TCanvas
 00512F19    mov         ecx,dword ptr [ebp-39]
 00512F1C    mov         edx,dword ptr [ebp-35]
 00512F1F    call        TCanvas.MoveTo
 00512F24    mov         edx,dword ptr [ebp-3D]
 00512F27    dec         edx
 00512F28    mov         eax,dword ptr [ebp-4]
 00512F2B    mov         eax,dword ptr [eax+21C];TCustomActionBar.FCanvas:TCanvas
 00512F31    mov         ecx,dword ptr [ebp-39]
 00512F34    call        TCanvas.LineTo
 00512F39    mov         eax,dword ptr [ebp-4]
 00512F3C    test        byte ptr [eax+208],1;TCustomActionBar.FEdgeBorders:TEdgeBorders
>00512F43    je          00512F6D
 00512F45    mov         eax,dword ptr [ebp-4]
 00512F48    mov         eax,dword ptr [eax+21C];TCustomActionBar.FCanvas:TCanvas
 00512F4E    mov         ecx,dword ptr [ebp-39]
 00512F51    mov         edx,dword ptr [ebp-3D]
 00512F54    call        TCanvas.MoveTo
 00512F59    mov         eax,dword ptr [ebp-4]
 00512F5C    mov         eax,dword ptr [eax+21C];TCustomActionBar.FCanvas:TCanvas
 00512F62    mov         ecx,dword ptr [ebp-31]
 00512F65    mov         edx,dword ptr [ebp-3D]
 00512F68    call        TCanvas.LineTo
 00512F6D    mov         eax,dword ptr [ebp-4]
 00512F70    test        byte ptr [eax+208],2;TCustomActionBar.FEdgeBorders:TEdgeBorders
>00512F77    jne         00512FAD
 00512F79    mov         eax,dword ptr [ebp-4]
 00512F7C    test        byte ptr [eax+208],1;TCustomActionBar.FEdgeBorders:TEdgeBorders
>00512F83    je          00513033
 00512F89    mov         eax,dword ptr [ebp-4]
 00512F8C    mov         al,byte ptr [eax+20A];TCustomActionBar.FEdgeOuter:TEdgeStyle
 00512F92    dec         eax
 00512F93    sub         al,2
>00512F95    jae         00513033
 00512F9B    mov         eax,dword ptr [ebp-4]
 00512F9E    mov         al,byte ptr [eax+209];TCustomActionBar.FEdgeInner:TEdgeStyle
 00512FA4    dec         eax
 00512FA5    sub         al,2
>00512FA7    jae         00513033
 00512FAD    mov         eax,dword ptr [ebp-4]
 00512FB0    mov         eax,dword ptr [eax+21C];TCustomActionBar.FCanvas:TCanvas
 00512FB6    mov         eax,dword ptr [eax+10];TCanvas.Pen:TPen
 00512FB9    mov         edx,dword ptr [ebp-18]
 00512FBC    call        TPen.SetColor
 00512FC1    mov         eax,dword ptr [ebp-4]
 00512FC4    test        byte ptr [eax+208],2;TCustomActionBar.FEdgeBorders:TEdgeBorders
>00512FCB    je          00512FF9
 00512FCD    mov         ecx,dword ptr [ebp-39]
 00512FD0    inc         ecx
 00512FD1    mov         edx,dword ptr [ebp-35]
 00512FD4    dec         edx
 00512FD5    mov         eax,dword ptr [ebp-4]
 00512FD8    mov         eax,dword ptr [eax+21C];TCustomActionBar.FCanvas:TCanvas
 00512FDE    call        TCanvas.MoveTo
 00512FE3    mov         ecx,dword ptr [ebp-39]
 00512FE6    inc         ecx
 00512FE7    mov         edx,dword ptr [ebp-3D]
 00512FEA    inc         edx
 00512FEB    mov         eax,dword ptr [ebp-4]
 00512FEE    mov         eax,dword ptr [eax+21C];TCustomActionBar.FCanvas:TCanvas
 00512FF4    call        TCanvas.LineTo
 00512FF9    mov         eax,dword ptr [ebp-4]
 00512FFC    test        byte ptr [eax+208],1;TCustomActionBar.FEdgeBorders:TEdgeBorders
>00513003    je          00513033
 00513005    mov         ecx,dword ptr [ebp-39]
 00513008    inc         ecx
 00513009    mov         edx,dword ptr [ebp-3D]
 0051300C    inc         edx
 0051300D    mov         eax,dword ptr [ebp-4]
 00513010    mov         eax,dword ptr [eax+21C];TCustomActionBar.FCanvas:TCanvas
 00513016    call        TCanvas.MoveTo
 0051301B    mov         ecx,dword ptr [ebp-31]
 0051301E    sub         ecx,2
 00513021    mov         edx,dword ptr [ebp-3D]
 00513024    inc         edx
 00513025    mov         eax,dword ptr [ebp-4]
 00513028    mov         eax,dword ptr [eax+21C];TCustomActionBar.FCanvas:TCanvas
 0051302E    call        TCanvas.LineTo
 00513033    mov         eax,dword ptr [ebp-4]
 00513036    test        byte ptr [eax+208],8;TCustomActionBar.FEdgeBorders:TEdgeBorders
>0051303D    jne         0051307F
 0051303F    mov         eax,dword ptr [ebp-4]
 00513042    test        byte ptr [eax+208],4;TCustomActionBar.FEdgeBorders:TEdgeBorders
>00513049    je          00513102
 0051304F    mov         eax,dword ptr [ebp-4]
 00513052    mov         al,byte ptr [eax+20A];TCustomActionBar.FEdgeOuter:TEdgeStyle
 00513058    dec         eax
 00513059    sub         al,2
>0051305B    jb          0051307F
 0051305D    mov         eax,dword ptr [ebp-4]
 00513060    cmp         byte ptr [eax+20A],0;TCustomActionBar.FEdgeOuter:TEdgeStyle
>00513067    jne         00513102
 0051306D    mov         eax,dword ptr [ebp-4]
 00513070    mov         al,byte ptr [eax+209];TCustomActionBar.FEdgeInner:TEdgeStyle
 00513076    dec         eax
 00513077    sub         al,2
>00513079    jae         00513102
 0051307F    mov         eax,dword ptr [ebp-4]
 00513082    mov         eax,dword ptr [eax+21C];TCustomActionBar.FCanvas:TCanvas
 00513088    mov         eax,dword ptr [eax+10];TCanvas.Pen:TPen
 0051308B    mov         edx,dword ptr [ebp-14]
 0051308E    call        TPen.SetColor
 00513093    mov         eax,dword ptr [ebp-4]
 00513096    test        byte ptr [eax+208],4;TCustomActionBar.FEdgeBorders:TEdgeBorders
>0051309D    je          005130CA
 0051309F    mov         edx,dword ptr [ebp-35]
 005130A2    dec         edx
 005130A3    mov         eax,dword ptr [ebp-4]
 005130A6    mov         eax,dword ptr [eax+21C];TCustomActionBar.FCanvas:TCanvas
 005130AC    mov         ecx,dword ptr [ebp-39]
 005130AF    call        TCanvas.MoveTo
 005130B4    mov         ecx,dword ptr [ebp-31]
 005130B7    dec         ecx
 005130B8    mov         edx,dword ptr [ebp-35]
 005130BB    dec         edx
 005130BC    mov         eax,dword ptr [ebp-4]
 005130BF    mov         eax,dword ptr [eax+21C];TCustomActionBar.FCanvas:TCanvas
 005130C5    call        TCanvas.LineTo
 005130CA    mov         eax,dword ptr [ebp-4]
 005130CD    test        byte ptr [eax+208],8;TCustomActionBar.FEdgeBorders:TEdgeBorders
>005130D4    je          00513102
 005130D6    mov         ecx,dword ptr [ebp-31]
 005130D9    dec         ecx
 005130DA    mov         edx,dword ptr [ebp-35]
 005130DD    dec         edx
 005130DE    mov         eax,dword ptr [ebp-4]
 005130E1    mov         eax,dword ptr [eax+21C];TCustomActionBar.FCanvas:TCanvas
 005130E7    call        TCanvas.MoveTo
 005130EC    mov         ecx,dword ptr [ebp-31]
 005130EF    dec         ecx
 005130F0    mov         edx,dword ptr [ebp-3D]
 005130F3    dec         edx
 005130F4    mov         eax,dword ptr [ebp-4]
 005130F7    mov         eax,dword ptr [eax+21C];TCustomActionBar.FCanvas:TCanvas
 005130FD    call        TCanvas.LineTo
 00513102    mov         eax,dword ptr [ebp-4]
 00513105    test        byte ptr [eax+208],8;TCustomActionBar.FEdgeBorders:TEdgeBorders
>0051310C    jne         00513142
 0051310E    mov         eax,dword ptr [ebp-4]
 00513111    test        byte ptr [eax+208],4;TCustomActionBar.FEdgeBorders:TEdgeBorders
>00513118    je          005131D1
 0051311E    mov         eax,dword ptr [ebp-4]
 00513121    mov         al,byte ptr [eax+20A];TCustomActionBar.FEdgeOuter:TEdgeStyle
 00513127    dec         eax
 00513128    sub         al,2
>0051312A    jae         005131D1
 00513130    mov         eax,dword ptr [ebp-4]
 00513133    mov         al,byte ptr [eax+209];TCustomActionBar.FEdgeInner:TEdgeStyle
 00513139    dec         eax
 0051313A    sub         al,2
>0051313C    jae         005131D1
 00513142    mov         eax,dword ptr [ebp-4]
 00513145    mov         eax,dword ptr [eax+21C];TCustomActionBar.FCanvas:TCanvas
 0051314B    mov         eax,dword ptr [eax+10];TCanvas.Pen:TPen
 0051314E    mov         edx,dword ptr [ebp-1C]
 00513151    call        TPen.SetColor
 00513156    mov         eax,dword ptr [ebp-4]
 00513159    test        byte ptr [eax+208],4;TCustomActionBar.FEdgeBorders:TEdgeBorders
>00513160    je          00513194
 00513162    mov         ecx,dword ptr [ebp-39]
 00513165    inc         ecx
 00513166    mov         edx,dword ptr [ebp-35]
 00513169    sub         edx,2
 0051316C    mov         eax,dword ptr [ebp-4]
 0051316F    mov         eax,dword ptr [eax+21C];TCustomActionBar.FCanvas:TCanvas
 00513175    call        TCanvas.MoveTo
 0051317A    mov         ecx,dword ptr [ebp-31]
 0051317D    sub         ecx,2
 00513180    mov         edx,dword ptr [ebp-35]
 00513183    sub         edx,2
 00513186    mov         eax,dword ptr [ebp-4]
 00513189    mov         eax,dword ptr [eax+21C];TCustomActionBar.FCanvas:TCanvas
 0051318F    call        TCanvas.LineTo
 00513194    mov         eax,dword ptr [ebp-4]
 00513197    test        byte ptr [eax+208],8;TCustomActionBar.FEdgeBorders:TEdgeBorders
>0051319E    je          005131D1
 005131A0    mov         ecx,dword ptr [ebp-31]
 005131A3    sub         ecx,2
 005131A6    mov         edx,dword ptr [ebp-35]
 005131A9    sub         edx,2
 005131AC    mov         eax,dword ptr [ebp-4]
 005131AF    mov         eax,dword ptr [eax+21C];TCustomActionBar.FCanvas:TCanvas
 005131B5    call        TCanvas.MoveTo
 005131BA    mov         ecx,dword ptr [ebp-31]
 005131BD    sub         ecx,2
 005131C0    mov         eax,dword ptr [ebp-4]
 005131C3    mov         eax,dword ptr [eax+21C];TCustomActionBar.FCanvas:TCanvas
 005131C9    mov         edx,dword ptr [ebp-3D]
 005131CC    call        TCanvas.LineTo
 005131D1    xor         eax,eax
 005131D3    pop         edx
 005131D4    pop         ecx
 005131D5    pop         ecx
 005131D6    mov         dword ptr fs:[eax],edx
 005131D9    push        5131F7
 005131DE    mov         eax,dword ptr [ebp-4]
 005131E1    mov         eax,dword ptr [eax+21C];TCustomActionBar.FCanvas:TCanvas
 005131E7    mov         edx,dword ptr [ebp-0C]
 005131EA    call        TCanvas.SetHandle
 005131EF    ret
>005131F0    jmp         @HandleFinally
>005131F5    jmp         005131DE
 005131F7    mov         esp,ebp
 005131F9    pop         ebp
 005131FA    ret
end;*}

//00513200
{*procedure TCustomActionBar.CMWinIniChange(?:?);
begin
 00513200    push        ebp
 00513201    mov         ebp,esp
 00513203    add         esp,0FFFFFFF8
 00513206    mov         dword ptr [ebp-8],edx
 00513209    mov         dword ptr [ebp-4],eax
 0051320C    mov         edx,dword ptr [ebp-8]
 0051320F    mov         eax,dword ptr [ebp-4]
 00513212    call        TWinControl.CMWinIniChange
 00513217    mov         eax,dword ptr [ebp-4]
 0051321A    call        TActionToolBar.GetColorMap
 0051321F    mov         edx,dword ptr [eax]
 00513221    call        dword ptr [edx+38]
 00513224    pop         ecx
 00513225    pop         ecx
 00513226    pop         ebp
 00513227    ret
end;*}

//00513228
{*function sub_00513228(?:TCustomActionBar):?;
begin
 00513228    push        ebp
 00513229    mov         ebp,esp
 0051322B    add         esp,0FFFFFFF8
 0051322E    mov         dword ptr [ebp-4],eax
 00513231    mov         eax,[004FF100];TCustomActionPopupMenu
 00513236    mov         dword ptr [ebp-8],eax
 00513239    mov         eax,dword ptr [ebp-8]
 0051323C    pop         ecx
 0051323D    pop         ecx
 0051323E    pop         ebp
 0051323F    ret
end;*}

//00513240
{*function TActionToolBar.GetColorMap:?;
begin
 00513240    push        ebp
 00513241    mov         ebp,esp
 00513243    add         esp,0FFFFFFF8
 00513246    mov         dword ptr [ebp-4],eax
 00513249    mov         eax,dword ptr [ebp-4]
 0051324C    mov         eax,dword ptr [eax+220];TActionToolBar.FColorMap:TCustomActionBarColorMap
 00513252    mov         dword ptr [ebp-8],eax
 00513255    mov         eax,dword ptr [ebp-4]
 00513258    mov         eax,dword ptr [eax+220];TActionToolBar.FColorMap:TCustomActionBarColorMap
 0051325E    mov         edx,dword ptr [eax+40];TCustomActionBarColorMap.FColor:TColor
 00513261    mov         eax,dword ptr [ebp-4]
 00513264    call        TPanel.SetColor
 00513269    cmp         dword ptr [ebp-8],0
>0051326D    jne         00513283
 0051326F    mov         eax,dword ptr [ebp-4]
 00513272    call        00512A60
 00513277    mov         eax,dword ptr [ebp-4]
 0051327A    mov         eax,dword ptr [eax+274];TActionToolBar.FDefaultColorMap:TCustomActionBarColorMap
 00513280    mov         dword ptr [ebp-8],eax
 00513283    mov         eax,dword ptr [ebp-8]
 00513286    pop         ecx
 00513287    pop         ecx
 00513288    pop         ebp
 00513289    ret
end;*}

//0051328C
{*procedure TCustomActionBar.CMMouseLeave(?:?);
begin
 0051328C    push        ebp
 0051328D    mov         ebp,esp
 0051328F    add         esp,0FFFFFFE8
 00513292    mov         dword ptr [ebp-8],edx
 00513295    mov         dword ptr [ebp-4],eax
 00513298    mov         edx,dword ptr [ebp-8]
 0051329B    mov         eax,dword ptr [ebp-4]
 0051329E    call        TControl.CMMouseLeave
 005132A3    mov         eax,dword ptr [ebp-4]
 005132A6    mov         edx,dword ptr [eax]
 005132A8    call        dword ptr [edx+104];TCustomActionBar.sub_00512304
 005132AE    test        al,al
>005132B0    je          005132D3
 005132B2    mov         dword ptr [ebp-18],0B411
 005132B9    xor         eax,eax
 005132BB    mov         dword ptr [ebp-14],eax
 005132BE    xor         eax,eax
 005132C0    mov         dword ptr [ebp-10],eax
 005132C3    xor         eax,eax
 005132C5    mov         dword ptr [ebp-0C],eax
 005132C8    lea         edx,[ebp-18]
 005132CB    mov         eax,dword ptr [ebp-4]
 005132CE    call        004CF664
 005132D3    mov         esp,ebp
 005132D5    pop         ebp
 005132D6    ret
end;*}

//005132D8
{*procedure TCustomActionBar.sub_004CC67C(?:?);
begin
 005132D8    push        ebp
 005132D9    mov         ebp,esp
 005132DB    add         esp,0FFFFFFF4
 005132DE    mov         dword ptr [ebp-8],edx
 005132E1    mov         dword ptr [ebp-4],eax
 005132E4    mov         byte ptr [ebp-9],0
 005132E8    mov         eax,dword ptr [ebp-8]
 005132EB    mov         eax,dword ptr [eax]
 005132ED    sub         eax,0B014
>005132F2    jne         00513313
 005132F4    mov         eax,[0055B688];^gvar_0055DDAC
 005132F9    mov         eax,dword ptr [eax]
 005132FB    call        004D95C4
 00513300    test        al,al
>00513302    je          00513313
 00513304    mov         edx,dword ptr [ebp-8]
 00513307    mov         eax,dword ptr [ebp-4]
 0051330A    mov         ecx,dword ptr [eax]
 0051330C    call        dword ptr [ecx-14];TObject.Dispatch
 0051330F    mov         byte ptr [ebp-9],1
 00513313    mov         al,byte ptr [ebp-9]
 00513316    mov         esp,ebp
 00513318    pop         ebp
 00513319    ret
end;*}

//0051331C
{*function sub_0051331C:?;
begin
 0051331C    push        ebp
 0051331D    mov         ebp,esp
 0051331F    add         esp,0FFFFFFF8
 00513322    mov         dword ptr [ebp-4],eax
 00513325    mov         eax,dword ptr [ebp-4]
 00513328    cmp         dword ptr [eax+214],0;TCustomActionBar.FActionManager:TCustomActionManager
>0051332F    je          00513357
 00513331    mov         eax,dword ptr [ebp-4]
 00513334    mov         eax,dword ptr [eax+214];TCustomActionBar.FActionManager:TCustomActionManager
 0051333A    cmp         dword ptr [eax+0C8],0;TCustomActionManager.FStyle:TActionBarStyle
>00513341    je          00513357
 00513343    mov         eax,dword ptr [ebp-4]
 00513346    mov         eax,dword ptr [eax+214];TCustomActionBar.FActionManager:TCustomActionManager
 0051334C    mov         eax,dword ptr [eax+0C8];TCustomActionManager.FStyle:TActionBarStyle
 00513352    mov         dword ptr [ebp-8],eax
>00513355    jmp         00513366
 00513357    xor         edx,edx
 00513359    mov         eax,[0055E028];gvar_0055E028
 0051335E    call        00515B18
 00513363    mov         dword ptr [ebp-8],eax
 00513366    mov         eax,dword ptr [ebp-8]
 00513369    pop         ecx
 0051336A    pop         ecx
 0051336B    pop         ebp
 0051336C    ret
end;*}

//00513370
constructor TCustomActionControl.Create(AOwner:TComponent);
begin
{*
 00513370    push        ebp
 00513371    mov         ebp,esp
 00513373    add         esp,0FFFFFFE4
 00513376    push        esi
 00513377    push        edi
 00513378    test        dl,dl
>0051337A    je          00513384
 0051337C    add         esp,0FFFFFFF0
 0051337F    call        @ClassCreate
 00513384    mov         dword ptr [ebp-0C],ecx
 00513387    mov         byte ptr [ebp-5],dl
 0051338A    mov         dword ptr [ebp-4],eax
 0051338D    mov         ecx,dword ptr [ebp-0C]
 00513390    xor         edx,edx
 00513392    mov         eax,dword ptr [ebp-4]
 00513395    call        TGraphicControl.Create
 0051339A    mov         eax,dword ptr [ebp-4]
 0051339D    mov         eax,dword ptr [eax+50];TCustomActionControl.FControlStyle:TControlStyle
 005133A0    or          eax,dword ptr ds:[513430];0x4 gvar_00513430
 005133A6    mov         edx,dword ptr [ebp-4]
 005133A9    mov         dword ptr [edx+50],eax;TCustomActionControl.FControlStyle:TControlStyle
 005133AC    mov         edx,16
 005133B1    mov         eax,dword ptr [ebp-4]
 005133B4    call        TControl.SetHeight
 005133B9    mov         edx,16
 005133BE    mov         eax,dword ptr [ebp-4]
 005133C1    call        TControl.SetWidth
 005133C6    mov         eax,dword ptr [ebp-4]
 005133C9    mov         byte ptr [eax+171],0;TCustomActionControl.FGlyphLayout:TButtonLayout
 005133D0    mov         dl,1
 005133D2    mov         eax,dword ptr [ebp-4]
 005133D5    call        TImage.SetParentShowHint
 005133DA    push        4
 005133DC    lea         eax,[ebp-1C]
 005133DF    push        eax
 005133E0    mov         ecx,4
 005133E5    mov         edx,4
 005133EA    mov         eax,4
 005133EF    call        Rect
 005133F4    mov         eax,dword ptr [ebp-4]
 005133F7    lea         esi,[ebp-1C]
 005133FA    lea         edi,[eax+17A];TCustomActionControl.FMargins:TRect
 00513400    movs        dword ptr [edi],dword ptr [esi]
 00513401    movs        dword ptr [edi],dword ptr [esi]
 00513402    movs        dword ptr [edi],dword ptr [esi]
 00513403    movs        dword ptr [edi],dword ptr [esi]
 00513404    mov         eax,dword ptr [ebp-4]
 00513407    mov         byte ptr [eax+1A0],1;TCustomActionControl.FTransparent:Boolean
 0051340E    mov         eax,dword ptr [ebp-4]
 00513411    cmp         byte ptr [ebp-5],0
>00513415    je          00513426
 00513417    call        @AfterConstruction
 0051341C    pop         dword ptr fs:[0]
 00513423    add         esp,0C
 00513426    mov         eax,dword ptr [ebp-4]
 00513429    pop         edi
 0051342A    pop         esi
 0051342B    mov         esp,ebp
 0051342D    pop         ebp
 0051342E    ret
*}
end;

//00513434
destructor TCustomActionControl.Destroy;
begin
{*
 00513434    push        ebp
 00513435    mov         ebp,esp
 00513437    add         esp,0FFFFFFF8
 0051343A    call        @BeforeDestruction
 0051343F    mov         byte ptr [ebp-5],dl
 00513442    mov         dword ptr [ebp-4],eax
 00513445    mov         eax,dword ptr [ebp-4]
 00513448    cmp         dword ptr [eax+16C],0
>0051344F    je          00513470
 00513451    mov         eax,dword ptr [ebp-4]
 00513454    mov         eax,dword ptr [eax+16C]
 0051345A    mov         eax,dword ptr [eax+40]
 0051345D    cmp         eax,dword ptr [ebp-4]
>00513460    jne         00513470
 00513462    mov         eax,dword ptr [ebp-4]
 00513465    mov         eax,dword ptr [eax+16C]
 0051346B    xor         edx,edx
 0051346D    mov         dword ptr [eax+40],edx
 00513470    mov         dl,byte ptr [ebp-5]
 00513473    and         dl,0FC
 00513476    mov         eax,dword ptr [ebp-4]
 00513479    call        TGraphicControl.Destroy
 0051347E    cmp         byte ptr [ebp-5],0
>00513482    jle         0051348C
 00513484    mov         eax,dword ptr [ebp-4]
 00513487    call        @ClassDestroy
 0051348C    pop         ecx
 0051348D    pop         ecx
 0051348E    pop         ebp
 0051348F    ret
*}
end;

//00513490
procedure TCustomActionControl.sub_004CB99C;
begin
{*
 00513490    push        ebp
 00513491    mov         ebp,esp
 00513493    push        ecx
 00513494    mov         dword ptr [ebp-4],eax
 00513497    mov         dl,1
 00513499    mov         eax,dword ptr [ebp-4]
 0051349C    mov         ecx,dword ptr [eax]
 0051349E    call        dword ptr [ecx+0D8];TCustomActionControl.sub_00514AB8
 005134A4    mov         eax,[0055B688];^gvar_0055DDAC
 005134A9    mov         eax,dword ptr [eax]
 005134AB    mov         ecx,dword ptr [eax+8]
 005134AE    xor         edx,edx
 005134B0    mov         eax,dword ptr [ebp-4]
 005134B3    call        004CB9C0
 005134B8    pop         ecx
 005134B9    pop         ebp
 005134BA    ret
*}
end;

//005134BC
{*function sub_005134BC(?:TCustomActionControl):?;
begin
 005134BC    push        ebp
 005134BD    mov         ebp,esp
 005134BF    add         esp,0FFFFFFF8
 005134C2    mov         dword ptr [ebp-4],eax
 005134C5    mov         eax,dword ptr [ebp-4]
 005134C8    cmp         dword ptr [eax+16C],0
>005134CF    je          005134E0
 005134D1    mov         eax,dword ptr [ebp-4]
 005134D4    mov         edx,dword ptr [eax]
 005134D6    call        dword ptr [edx+98]
 005134DC    test        al,al
>005134DE    jne         00513500
 005134E0    mov         eax,dword ptr [ebp-4]
 005134E3    call        00515218
 005134E8    test        al,al
>005134EA    je          00513500
 005134EC    mov         eax,dword ptr [ebp-4]
 005134EF    mov         eax,dword ptr [eax+16C]
 005134F5    call        0050E760
 005134FA    cmp         byte ptr [eax+28],2
>005134FE    jne         00513517
 00513500    mov         eax,dword ptr [ebp-4]
 00513503    mov         eax,dword ptr [eax+198]
 00513509    mov         edx,dword ptr [ebp-4]
 0051350C    sub         eax,dword ptr [edx+190]
 00513512    mov         dword ptr [ebp-8],eax
>00513515    jmp         0051351C
 00513517    xor         eax,eax
 00513519    mov         dword ptr [ebp-8],eax
 0051351C    mov         eax,dword ptr [ebp-8]
 0051351F    pop         ecx
 00513520    pop         ecx
 00513521    pop         ebp
 00513522    ret
end;*}

//00513524
{*function sub_00513524(?:TCustomActionControl):?;
begin
 00513524    push        ebp
 00513525    mov         ebp,esp
 00513527    add         esp,0FFFFFFF8
 0051352A    mov         dword ptr [ebp-4],eax
 0051352D    mov         eax,dword ptr [ebp-4]
 00513530    cmp         dword ptr [eax+16C],0
>00513537    je          00513548
 00513539    mov         eax,dword ptr [ebp-4]
 0051353C    mov         edx,dword ptr [eax]
 0051353E    call        dword ptr [edx+98]
 00513544    test        al,al
>00513546    jne         00513568
 00513548    mov         eax,dword ptr [ebp-4]
 0051354B    call        00515218
 00513550    test        al,al
>00513552    je          00513568
 00513554    mov         eax,dword ptr [ebp-4]
 00513557    mov         eax,dword ptr [eax+16C]
 0051355D    call        0050E760
 00513562    cmp         byte ptr [eax+28],2
>00513566    jne         0051357F
 00513568    mov         eax,dword ptr [ebp-4]
 0051356B    mov         eax,dword ptr [eax+19C]
 00513571    mov         edx,dword ptr [ebp-4]
 00513574    sub         eax,dword ptr [edx+194]
 0051357A    mov         dword ptr [ebp-8],eax
>0051357D    jmp         00513584
 0051357F    xor         eax,eax
 00513581    mov         dword ptr [ebp-8],eax
 00513584    mov         eax,dword ptr [ebp-8]
 00513587    pop         ecx
 00513588    pop         ecx
 00513589    pop         ebp
 0051358A    ret
end;*}

//0051358C
{*function sub_0051358C(?:TCustomActionControl; ?:?):?;
begin
 0051358C    push        ebp
 0051358D    mov         ebp,esp
 0051358F    add         esp,0FFFFFFF0
 00513592    push        esi
 00513593    push        edi
 00513594    mov         esi,edx
 00513596    lea         edi,[ebp-0C]
 00513599    movs        dword ptr [edi],dword ptr [esi]
 0051359A    movs        dword ptr [edi],dword ptr [esi]
 0051359B    mov         dword ptr [ebp-4],eax
 0051359E    cmp         dword ptr [ebp-0C],0
>005135A2    je          005135B0
 005135A4    mov         eax,dword ptr [ebp-4]
 005135A7    call        005134BC
 005135AC    test        eax,eax
>005135AE    jne         005135B7
 005135B0    xor         eax,eax
 005135B2    mov         dword ptr [ebp-10],eax
>005135B5    jmp         005135C3
 005135B7    mov         eax,dword ptr [ebp-4]
 005135BA    mov         eax,dword ptr [eax+18C]
 005135C0    mov         dword ptr [ebp-10],eax
 005135C3    mov         eax,dword ptr [ebp-10]
 005135C6    pop         edi
 005135C7    pop         esi
 005135C8    mov         esp,ebp
 005135CA    pop         ebp
 005135CB    ret
end;*}

//005135CC
procedure sub_005135CC;
begin
{*
 005135CC    push        ebp
 005135CD    mov         ebp,esp
 005135CF    add         esp,0FFFFFFE4
 005135D2    push        ebx
 005135D3    mov         dword ptr [ebp-4],eax
 005135D6    mov         eax,dword ptr [ebp-4]
 005135D9    cmp         dword ptr [eax+16C],0;TCustomActionControl.FActionClient:TActionClientItem
>005135E0    je          005138C3
 005135E6    lea         edx,[ebp-14]
 005135E9    mov         eax,dword ptr [ebp-4]
 005135EC    mov         ecx,dword ptr [eax]
 005135EE    call        dword ptr [ecx+0BC];TCustomActionControl.sub_00514858
 005135F4    mov         eax,dword ptr [ebp-4]
 005135F7    mov         eax,dword ptr [eax+160];TCustomActionControl...............................................
 005135FD    mov         eax,dword ptr [eax+0C];TCanvas.Font:TFont
 00513600    mov         edx,dword ptr [ebp-4]
 00513603    mov         edx,dword ptr [edx+68];TCustomActionControl.FFont:TFont
 00513606    mov         ecx,dword ptr [eax]
 00513608    call        dword ptr [ecx+8];TFont.sub_00486CC0
 0051360B    mov         eax,dword ptr [ebp-4]
 0051360E    call        00515474
 00513613    mov         eax,dword ptr [ebp-4]
 00513616    mov         eax,dword ptr [eax+48];TCustomActionControl.Width:Integer
 00513619    mov         dword ptr [ebp-8],eax
 0051361C    mov         eax,dword ptr [ebp-4]
 0051361F    mov         eax,dword ptr [eax+4C];TCustomActionControl.Height:Integer
 00513622    mov         dword ptr [ebp-0C],eax
 00513625    mov         eax,dword ptr [ebp-4]
 00513628    mov         al,byte ptr [eax+171];TCustomActionControl.FGlyphLayout:TButtonLayout
 0051362E    sub         al,2
>00513630    jb          0051363F
 00513632    sub         al,2
>00513634    jb          0051374F
>0051363A    jmp         005138C3
 0051363F    mov         eax,dword ptr [ebp-4]
 00513642    cmp         byte ptr [eax+171],0;TCustomActionControl.FGlyphLayout:TButtonLayout
>00513649    jne         005136D4
 0051364F    mov         edx,dword ptr [ebp-0C]
 00513652    sar         edx,1
>00513654    jns         00513659
 00513656    adc         edx,0
 00513659    mov         eax,dword ptr [ebp-10]
 0051365C    sar         eax,1
>0051365E    jns         00513663
 00513660    adc         eax,0
 00513663    sub         edx,eax
 00513665    lea         ecx,[ebp-1C]
 00513668    mov         eax,dword ptr [ebp-4]
 0051366B    mov         eax,dword ptr [eax+17A];TCustomActionControl.FMargins:TRect
 00513671    call        Point
 00513676    mov         eax,dword ptr [ebp-4]
 00513679    mov         edx,dword ptr [ebp-1C]
 0051367C    mov         dword ptr [eax+172],edx;TCustomActionControl.FGlyphPos:TPoint
 00513682    mov         edx,dword ptr [ebp-18]
 00513685    mov         dword ptr [eax+176],edx
 0051368B    mov         eax,dword ptr [ebp-4]
 0051368E    call        00513524
 00513693    sar         eax,1
>00513695    jns         0051369A
 00513697    adc         eax,0
 0051369A    mov         edx,dword ptr [ebp-0C]
 0051369D    sar         edx,1
>0051369F    jns         005136A4
 005136A1    adc         edx,0
 005136A4    sub         edx,eax
 005136A6    push        edx
 005136A7    lea         edx,[ebp-14]
 005136AA    mov         eax,dword ptr [ebp-4]
 005136AD    call        0051358C
 005136B2    mov         edx,dword ptr [ebp-4]
 005136B5    mov         edx,dword ptr [edx+17A];TCustomActionControl.FMargins:TRect
 005136BB    add         edx,dword ptr [ebp-14]
 005136BE    add         eax,edx
 005136C0    push        eax
 005136C1    mov         eax,dword ptr [ebp-4]
 005136C4    add         eax,190;TCustomActionControl.FTextBounds:TRect
 005136C9    push        eax
 005136CA    call        user32.OffsetRect
>005136CF    jmp         005138C3
 005136D4    mov         edx,dword ptr [ebp-0C]
 005136D7    sar         edx,1
>005136D9    jns         005136DE
 005136DB    adc         edx,0
 005136DE    mov         eax,dword ptr [ebp-10]
 005136E1    sar         eax,1
>005136E3    jns         005136E8
 005136E5    adc         eax,0
 005136E8    sub         edx,eax
 005136EA    lea         ecx,[ebp-1C]
 005136ED    mov         eax,dword ptr [ebp-8]
 005136F0    mov         ebx,dword ptr [ebp-4]
 005136F3    sub         eax,dword ptr [ebx+182]
 005136F9    sub         eax,dword ptr [ebp-14]
 005136FC    call        Point
 00513701    mov         eax,dword ptr [ebp-4]
 00513704    mov         edx,dword ptr [ebp-1C]
 00513707    mov         dword ptr [eax+172],edx;TCustomActionControl.FGlyphPos:TPoint
 0051370D    mov         edx,dword ptr [ebp-18]
 00513710    mov         dword ptr [eax+176],edx
 00513716    mov         eax,dword ptr [ebp-4]
 00513719    call        00513524
 0051371E    sar         eax,1
>00513720    jns         00513725
 00513722    adc         eax,0
 00513725    mov         edx,dword ptr [ebp-0C]
 00513728    sar         edx,1
>0051372A    jns         0051372F
 0051372C    adc         edx,0
 0051372F    sub         edx,eax
 00513731    push        edx
 00513732    mov         eax,dword ptr [ebp-4]
 00513735    mov         eax,dword ptr [eax+17A];TCustomActionControl.FMargins:TRect
 0051373B    push        eax
 0051373C    mov         eax,dword ptr [ebp-4]
 0051373F    add         eax,190;TCustomActionControl.FTextBounds:TRect
 00513744    push        eax
 00513745    call        user32.OffsetRect
>0051374A    jmp         005138C3
 0051374F    mov         eax,dword ptr [ebp-4]
 00513752    cmp         byte ptr [eax+171],2;TCustomActionControl.FGlyphLayout:TButtonLayout
>00513759    jne         0051383A
 0051375F    mov         eax,dword ptr [ebp-4]
 00513762    mov         edx,dword ptr [eax]
 00513764    call        dword ptr [edx+98];TCustomActionControl.sub_005152D0
 0051376A    test        al,al
>0051376C    je          005137AC
 0051376E    mov         eax,dword ptr [ebp-8]
 00513771    sar         eax,1
>00513773    jns         00513778
 00513775    adc         eax,0
 00513778    mov         edx,dword ptr [ebp-14]
 0051377B    sar         edx,1
>0051377D    jns         00513782
 0051377F    adc         edx,0
 00513782    sub         eax,edx
 00513784    lea         ecx,[ebp-1C]
 00513787    mov         edx,dword ptr [ebp-4]
 0051378A    mov         edx,dword ptr [edx+17E];TCustomActionControl.FMargins.Top:Longint
 00513790    call        Point
 00513795    mov         eax,dword ptr [ebp-4]
 00513798    mov         edx,dword ptr [ebp-1C]
 0051379B    mov         dword ptr [eax+172],edx;TCustomActionControl.FGlyphPos:TPoint
 005137A1    mov         edx,dword ptr [ebp-18]
 005137A4    mov         dword ptr [eax+176],edx
>005137AA    jmp         005137F5
 005137AC    mov         edx,dword ptr [ebp-0C]
 005137AF    sar         edx,1
>005137B1    jns         005137B6
 005137B3    adc         edx,0
 005137B6    mov         eax,dword ptr [ebp-10]
 005137B9    sar         eax,1
>005137BB    jns         005137C0
 005137BD    adc         eax,0
 005137C0    sub         edx,eax
 005137C2    mov         eax,dword ptr [ebp-8]
 005137C5    sar         eax,1
>005137C7    jns         005137CC
 005137C9    adc         eax,0
 005137CC    mov         ecx,dword ptr [ebp-14]
 005137CF    sar         ecx,1
>005137D1    jns         005137D6
 005137D3    adc         ecx,0
 005137D6    sub         eax,ecx
 005137D8    lea         ecx,[ebp-1C]
 005137DB    call        Point
 005137E0    mov         eax,dword ptr [ebp-4]
 005137E3    mov         edx,dword ptr [ebp-1C]
 005137E6    mov         dword ptr [eax+172],edx;TCustomActionControl.FGlyphPos:TPoint
 005137EC    mov         edx,dword ptr [ebp-18]
 005137EF    mov         dword ptr [eax+176],edx
 005137F5    mov         eax,dword ptr [ebp-4]
 005137F8    mov         eax,dword ptr [eax+176]
 005137FE    add         eax,dword ptr [ebp-10]
 00513801    mov         edx,dword ptr [ebp-4]
 00513804    add         eax,dword ptr [edx+18C];TCustomActionControl.FSpacing:Integer
 0051380A    push        eax
 0051380B    mov         eax,dword ptr [ebp-4]
 0051380E    call        005134BC
 00513813    sar         eax,1
>00513815    jns         0051381A
 00513817    adc         eax,0
 0051381A    mov         edx,dword ptr [ebp-8]
 0051381D    sar         edx,1
>0051381F    jns         00513824
 00513821    adc         edx,0
 00513824    sub         edx,eax
 00513826    push        edx
 00513827    mov         eax,dword ptr [ebp-4]
 0051382A    add         eax,190;TCustomActionControl.FTextBounds:TRect
 0051382F    push        eax
 00513830    call        user32.OffsetRect
>00513835    jmp         005138C3
 0051383A    mov         eax,dword ptr [ebp-4]
 0051383D    mov         eax,dword ptr [eax+17E];TCustomActionControl.FMargins.Top:Longint
 00513843    push        eax
 00513844    mov         eax,dword ptr [ebp-4]
 00513847    call        005134BC
 0051384C    sar         eax,1
>0051384E    jns         00513853
 00513850    adc         eax,0
 00513853    mov         edx,dword ptr [ebp-8]
 00513856    sar         edx,1
>00513858    jns         0051385D
 0051385A    adc         edx,0
 0051385D    sub         edx,eax
 0051385F    push        edx
 00513860    mov         eax,dword ptr [ebp-4]
 00513863    add         eax,190;TCustomActionControl.FTextBounds:TRect
 00513868    push        eax
 00513869    call        user32.OffsetRect
 0051386E    lea         edx,[ebp-14]
 00513871    mov         eax,dword ptr [ebp-4]
 00513874    call        0051358C
 00513879    mov         ebx,eax
 0051387B    mov         eax,dword ptr [ebp-4]
 0051387E    call        00513524
 00513883    mov         edx,dword ptr [ebp-4]
 00513886    add         eax,dword ptr [edx+194];TCustomActionControl.FTextBounds.Top:Longint
 0051388C    add         ebx,eax
 0051388E    mov         edx,ebx
 00513890    mov         eax,dword ptr [ebp-8]
 00513893    sar         eax,1
>00513895    jns         0051389A
 00513897    adc         eax,0
 0051389A    mov         ecx,dword ptr [ebp-14]
 0051389D    sar         ecx,1
>0051389F    jns         005138A4
 005138A1    adc         ecx,0
 005138A4    sub         eax,ecx
 005138A6    lea         ecx,[ebp-1C]
 005138A9    call        Point
 005138AE    mov         eax,dword ptr [ebp-4]
 005138B1    mov         edx,dword ptr [ebp-1C]
 005138B4    mov         dword ptr [eax+172],edx;TCustomActionControl.FGlyphPos:TPoint
 005138BA    mov         edx,dword ptr [ebp-18]
 005138BD    mov         dword ptr [eax+176],edx
 005138C3    pop         ebx
 005138C4    mov         esp,ebp
 005138C6    pop         ebp
 005138C7    ret
*}
end;

//005138C8
{*procedure TCustomActionControl.CMFontChanged(?:?);
begin
 005138C8    push        ebp
 005138C9    mov         ebp,esp
 005138CB    add         esp,0FFFFFFF8
 005138CE    mov         dword ptr [ebp-8],edx
 005138D1    mov         dword ptr [ebp-4],eax
 005138D4    mov         edx,dword ptr [ebp-8]
 005138D7    mov         eax,dword ptr [ebp-4]
 005138DA    call        TControl.CMFontChanged
 005138DF    mov         eax,dword ptr [ebp-4]
 005138E2    cmp         dword ptr [eax+16C],0;TCustomActionControl.FActionClient:TActionClientItem
>005138E9    je          005138F6
 005138EB    mov         eax,dword ptr [ebp-4]
 005138EE    mov         edx,dword ptr [eax]
 005138F0    call        dword ptr [edx+0DC];TCustomActionControl.sub_00515568
 005138F6    pop         ecx
 005138F7    pop         ecx
 005138F8    pop         ebp
 005138F9    ret
end;*}

//005138FC
procedure TCustomActionControl.sub_004CCCAC;
begin
{*
 005138FC    push        ebp
 005138FD    mov         ebp,esp
 005138FF    push        ecx
 00513900    mov         dword ptr [ebp-4],eax
 00513903    mov         eax,dword ptr [ebp-4]
 00513906    cmp         dword ptr [eax+16C],0;TCustomActionControl.FActionClient:TActionClientItem
>0051390D    je          00513962
 0051390F    mov         eax,dword ptr [ebp-4]
 00513912    mov         eax,dword ptr [eax+16C];TCustomActionControl.FActionClient:TActionClientItem
 00513918    cmp         dword ptr [eax+38],0;TActionClientItem.FActionLink:TActionClientLink
>0051391C    je          00513962
 0051391E    mov         eax,dword ptr [ebp-4]
 00513921    call        0051541C
 00513926    mov         edx,dword ptr [eax]
 00513928    call        dword ptr [edx+104]
 0051392E    test        al,al
>00513930    jne         0051393A
 00513932    mov         eax,dword ptr [ebp-4]
 00513935    call        00514D94
 0051393A    mov         eax,dword ptr [ebp-4]
 0051393D    call        0051541C
 00513942    mov         edx,dword ptr [eax]
 00513944    call        dword ptr [edx+104]
 0051394A    test        al,al
>0051394C    jne         00513962
 0051394E    mov         eax,dword ptr [ebp-4]
 00513951    mov         eax,dword ptr [eax+16C];TCustomActionControl.FActionClient:TActionClientItem
 00513957    mov         eax,dword ptr [eax+38];TActionClientItem.FActionLink:TActionClientLink
 0051395A    mov         edx,dword ptr [ebp-4]
 0051395D    mov         ecx,dword ptr [eax]
 0051395F    call        dword ptr [ecx+18];TActionClientLink.sub_00483C70
 00513962    pop         ecx
 00513963    pop         ebp
 00513964    ret
*}
end;

//00513968
{*procedure TCustomActionControl.sub_004CC67C(?:?);
begin
 00513968    push        ebp
 00513969    mov         ebp,esp
 0051396B    add         esp,0FFFFFFF4
 0051396E    mov         dword ptr [ebp-8],edx
 00513971    mov         dword ptr [ebp-4],eax
 00513974    mov         byte ptr [ebp-9],0
 00513978    mov         eax,dword ptr [ebp-8]
 0051397B    mov         eax,dword ptr [eax]
 0051397D    cmp         eax,204
>00513982    jge         0051399A
 00513984    sub         eax,7B
>00513987    je          005139B5
 00513989    add         eax,0FFFFFE7B
 0051398E    sub         eax,3
>00513991    jb          005139D6
>00513993    je          005139E7
>00513995    jmp         00513A23
 0051399A    add         eax,0FFFFFDFC
 0051399F    sub         eax,2
>005139A2    jb          005139B5
 005139A4    add         eax,0FFFF51F3
 005139A9    sub         eax,2
>005139AC    jb          005139D6
 005139AE    sub         eax,1A
>005139B1    je          005139D6
>005139B3    jmp         00513A23
 005139B5    mov         eax,dword ptr [ebp-4]
 005139B8    cmp         dword ptr [eax+16C],0;TCustomActionControl.FActionClient:TActionClientItem
>005139BF    je          00513A23
 005139C1    mov         eax,dword ptr [ebp-4]
 005139C4    mov         eax,dword ptr [eax+16C];TCustomActionControl.FActionClient:TActionClientItem
 005139CA    cmp         dword ptr [eax+1C],0;TActionClientItem.FContextItems:TActionClients
>005139CE    je          00513A23
 005139D0    mov         byte ptr [ebp-9],1
>005139D4    jmp         00513A23
 005139D6    mov         edx,dword ptr [ebp-8]
 005139D9    mov         eax,dword ptr [ebp-4]
 005139DC    mov         ecx,dword ptr [eax]
 005139DE    call        dword ptr [ecx-14];TObject.Dispatch
 005139E1    mov         byte ptr [ebp-9],1
>005139E5    jmp         00513A23
 005139E7    mov         eax,dword ptr [ebp-4]
 005139EA    cmp         dword ptr [eax+16C],0;TCustomActionControl.FActionClient:TActionClientItem
>005139F1    je          00513A1F
 005139F3    mov         eax,dword ptr [ebp-4]
 005139F6    mov         eax,dword ptr [eax+16C];TCustomActionControl.FActionClient:TActionClientItem
 005139FC    call        TActionClientItem.GetAction
 00513A01    test        eax,eax
>00513A03    je          00513A1F
 00513A05    mov         eax,dword ptr [ebp-4]
 00513A08    mov         eax,dword ptr [eax+16C];TCustomActionControl.FActionClient:TActionClientItem
 00513A0E    call        TActionClientItem.GetAction
 00513A13    mov         edx,eax
 00513A15    mov         eax,[00541A9C];0x0 gvar_00541A9C
 00513A1A    mov         ecx,dword ptr [eax]
 00513A1C    call        dword ptr [ecx+10]
 00513A1F    mov         byte ptr [ebp-9],1
 00513A23    mov         al,byte ptr [ebp-9]
 00513A26    mov         esp,ebp
 00513A28    pop         ebp
 00513A29    ret
end;*}

//00513A2C
{*procedure sub_00513A2C(?:?);
begin
 00513A2C    push        ebp
 00513A2D    mov         ebp,esp
 00513A2F    add         esp,0FFFFFFE8
 00513A32    push        ebx
 00513A33    mov         dword ptr [ebp-8],edx
 00513A36    mov         dword ptr [ebp-4],eax
 00513A39    mov         eax,dword ptr [ebp-4]
 00513A3C    call        0051541C
 00513A41    test        eax,eax
>00513A43    je          00513B45
 00513A49    mov         eax,dword ptr [ebp-4]
 00513A4C    cmp         dword ptr [eax+16C],0;TCustomActionControl.FActionClient:TActionClientItem
>00513A53    je          00513B45
 00513A59    mov         eax,dword ptr [ebp-4]
 00513A5C    call        0051541C
 00513A61    mov         eax,dword ptr [eax+210]
 00513A67    call        0050CCE0
 00513A6C    test        al,al
>00513A6E    je          00513AA6
 00513A70    mov         eax,dword ptr [ebp-4]
 00513A73    call        0051541C
 00513A78    mov         eax,dword ptr [eax+210]
 00513A7E    call        0050CCE0
 00513A83    test        al,al
>00513A85    je          00513B45
 00513A8B    mov         eax,dword ptr [ebp-4]
 00513A8E    call        0051541C
 00513A93    mov         eax,dword ptr [eax+210]
 00513A99    mov         al,byte ptr [eax+14]
 00513A9C    add         al,0FD
 00513A9E    sub         al,2
>00513AA0    jae         00513B45
 00513AA6    call        ThemeServices
 00513AAB    call        TThemeServices.GetThemesEnabled
 00513AB0    test        al,al
>00513AB2    je          00513B45
 00513AB8    mov         eax,dword ptr [ebp-4]
 00513ABB    mov         eax,dword ptr [eax+160];TCustomActionControl...............................................
 00513AC1    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 00513AC4    call        TBrush.GetColor
 00513AC9    mov         ebx,eax
 00513ACB    mov         eax,dword ptr [ebp-4]
 00513ACE    call        0051541C
 00513AD3    call        TActionToolBar.GetColorMap
 00513AD8    cmp         ebx,dword ptr [eax+40]
>00513ADB    jne         00513B45
 00513ADD    lea         edx,[ebp-18]
 00513AE0    mov         eax,dword ptr [ebp-4]
 00513AE3    call        004CA6AC
 00513AE8    push        0
 00513AEA    push        0
 00513AEC    lea         eax,[ebp-18]
 00513AEF    push        eax
 00513AF0    mov         eax,dword ptr [ebp-4]
 00513AF3    mov         eax,dword ptr [eax+160];TCustomActionControl...............................................
 00513AF9    call        TCanvas.GetHandle
 00513AFE    push        eax
 00513AFF    mov         eax,dword ptr [ebp-4]
 00513B02    call        0051541C
 00513B07    call        TWinControl.GetHandle
 00513B0C    push        eax
 00513B0D    call        ThemeServices
 00513B12    pop         edx
 00513B13    pop         ecx
 00513B14    call        004B6520
 00513B19    mov         eax,dword ptr [ebp-4]
 00513B1C    mov         eax,dword ptr [eax+160];TCustomActionControl...............................................
 00513B22    mov         eax,dword ptr [eax+0C];TCanvas.Font:TFont
 00513B25    xor         edx,edx
 00513B27    call        00487000
 00513B2C    mov         eax,dword ptr [ebp-4]
 00513B2F    mov         eax,dword ptr [eax+160];TCustomActionControl...............................................
 00513B35    mov         eax,dword ptr [eax+0C];TCanvas.Font:TFont
 00513B38    mov         edx,dword ptr [ebp-4]
 00513B3B    mov         edx,dword ptr [edx+68];TCustomActionControl.FFont:TFont
 00513B3E    mov         ecx,dword ptr [eax]
 00513B40    call        dword ptr [ecx+8];TFont.sub_00486CC0
>00513B43    jmp         00513B56
 00513B45    mov         edx,dword ptr [ebp-8]
 00513B48    mov         eax,dword ptr [ebp-4]
 00513B4B    mov         eax,dword ptr [eax+160];TCustomActionControl...............................................
 00513B51    call        TCanvas.FillRect
 00513B56    pop         ebx
 00513B57    mov         esp,ebp
 00513B59    pop         ebp
 00513B5A    ret
end;*}

//00513B5C
{*procedure sub_00513B5C(?:?);
begin
 00513B5C    push        ebp
 00513B5D    mov         ebp,esp
 00513B5F    add         esp,0FFFFFFF0
 00513B62    mov         dword ptr [ebp-8],edx
 00513B65    mov         dword ptr [ebp-4],eax
 00513B68    mov         eax,dword ptr [ebp-4]
 00513B6B    call        00515218
 00513B70    test        al,al
>00513B72    je          00513C1B
 00513B78    mov         eax,dword ptr [ebp-4]
 00513B7B    mov         edx,dword ptr [eax]
 00513B7D    call        dword ptr [edx+3C];TCustomActionControl.sub_005153C4
 00513B80    test        eax,eax
>00513B82    je          00513B9D
 00513B84    mov         eax,dword ptr [ebp-4]
 00513B87    mov         eax,dword ptr [eax+16C];TCustomActionControl.FActionClient:TActionClientItem
 00513B8D    call        TActionClientItem.GetAction
 00513B92    mov         eax,dword ptr [eax+5C]
 00513B95    mov         eax,dword ptr [eax+38]
 00513B98    mov         dword ptr [ebp-0C],eax
>00513B9B    jmp         00513BB6
 00513B9D    mov         eax,dword ptr [ebp-4]
 00513BA0    mov         eax,dword ptr [eax+16C];TCustomActionControl.FActionClient:TActionClientItem
 00513BA6    call        0050CCC4
 00513BAB    call        0050BE18
 00513BB0    mov         eax,dword ptr [eax+38]
 00513BB3    mov         dword ptr [ebp-0C],eax
 00513BB6    cmp         dword ptr [ebp-0C],0
>00513BBA    je          00513C1B
 00513BBC    mov         eax,dword ptr [ebp-4]
 00513BBF    mov         edx,dword ptr [eax]
 00513BC1    call        dword ptr [edx+50];TImage.GetEnabled
 00513BC4    test        al,al
>00513BC6    je          00513BD7
 00513BC8    mov         eax,dword ptr [ebp-4]
 00513BCB    mov         eax,dword ptr [eax+16C];TCustomActionControl.FActionClient:TActionClientItem
 00513BD1    cmp         dword ptr [eax+58],0FFFFFFFF;TActionClientItem.ImageIndex:TImageIndex
>00513BD5    jne         00513BE4
 00513BD7    mov         eax,dword ptr [ebp-4]
 00513BDA    test        byte ptr [eax+1C],10;TCustomActionControl.FComponentState:TComponentState
>00513BDE    jne         00513BE4
 00513BE0    xor         eax,eax
>00513BE2    jmp         00513BE6
 00513BE4    mov         al,1
 00513BE6    mov         byte ptr [ebp-0D],al
 00513BE9    mov         eax,dword ptr [ebp-8]
 00513BEC    mov         eax,dword ptr [eax+4]
 00513BEF    push        eax
 00513BF0    mov         eax,dword ptr [ebp-4]
 00513BF3    mov         eax,dword ptr [eax+16C];TCustomActionControl.FActionClient:TActionClientItem
 00513BF9    mov         eax,dword ptr [eax+58];TActionClientItem.ImageIndex:TImageIndex
 00513BFC    push        eax
 00513BFD    push        3
 00513BFF    push        0
 00513C01    mov         al,byte ptr [ebp-0D]
 00513C04    push        eax
 00513C05    mov         ecx,dword ptr [ebp-8]
 00513C08    mov         ecx,dword ptr [ecx]
 00513C0A    mov         eax,dword ptr [ebp-4]
 00513C0D    mov         edx,dword ptr [eax+160];TCustomActionControl...............................................
 00513C13    mov         eax,dword ptr [ebp-0C]
 00513C16    call        004DD178
 00513C1B    mov         esp,ebp
 00513C1D    pop         ebp
 00513C1E    ret
end;*}

//00513C20
{*procedure sub_00513C20(?:?);
begin
 00513C20    push        ebp
 00513C21    mov         ebp,esp
 00513C23    add         esp,0FFFFFFC0
 00513C26    push        esi
 00513C27    push        edi
 00513C28    mov         esi,edx
 00513C2A    lea         edi,[ebp-0C]
 00513C2D    movs        dword ptr [edi],dword ptr [esi]
 00513C2E    movs        dword ptr [edi],dword ptr [esi]
 00513C2F    mov         dword ptr [ebp-4],eax
 00513C32    mov         eax,dword ptr [ebp-4]
 00513C35    call        00515218
 00513C3A    test        al,al
>00513C3C    je          00513F7C
 00513C42    mov         eax,dword ptr [ebp-4]
 00513C45    mov         edx,dword ptr [eax]
 00513C47    call        dword ptr [edx+3C];TCustomActionControl.sub_005153C4
 00513C4A    mov         edx,dword ptr ds:[4DA408];TCustomAction
 00513C50    call        @IsClass
 00513C55    test        al,al
>00513C57    je          00513F7C
 00513C5D    mov         eax,dword ptr [ebp-4]
 00513C60    mov         eax,dword ptr [eax+16C];TCustomActionControl.FActionClient:TActionClientItem
 00513C66    call        0050CCC4
 00513C6B    call        0050BE18
 00513C70    mov         eax,dword ptr [eax+38]
 00513C73    mov         dword ptr [ebp-20],eax
 00513C76    lea         ecx,[ebp-1C]
 00513C79    mov         edx,20
 00513C7E    mov         eax,20
 00513C83    call        Point
 00513C88    mov         dl,1
 00513C8A    mov         eax,[00485C6C];TBitmap
 00513C8F    call        TBitmap.Create;TBitmap.Create
 00513C94    mov         dword ptr [ebp-14],eax
 00513C97    xor         eax,eax
 00513C99    push        ebp
 00513C9A    push        513F75
 00513C9F    push        dword ptr fs:[eax]
 00513CA2    mov         dword ptr fs:[eax],esp
 00513CA5    mov         dl,1
 00513CA7    mov         eax,[00485C6C];TBitmap
 00513CAC    call        TBitmap.Create;TBitmap.Create
 00513CB1    mov         dword ptr [ebp-10],eax
 00513CB4    xor         eax,eax
 00513CB6    push        ebp
 00513CB7    push        513F58
 00513CBC    push        dword ptr fs:[eax]
 00513CBF    mov         dword ptr fs:[eax],esp
 00513CC2    mov         eax,dword ptr [ebp-20]
 00513CC5    mov         edx,dword ptr [eax+34]
 00513CC8    mov         eax,dword ptr [ebp-14]
 00513CCB    mov         ecx,dword ptr [eax]
 00513CCD    call        dword ptr [ecx+40];TBitmap.sub_0048EB14
 00513CD0    mov         eax,dword ptr [ebp-20]
 00513CD3    mov         edx,dword ptr [eax+30]
 00513CD6    mov         eax,dword ptr [ebp-14]
 00513CD9    mov         ecx,dword ptr [eax]
 00513CDB    call        dword ptr [ecx+34];TBitmap.sub_0048E6F4
 00513CDE    mov         eax,dword ptr [ebp-14]
 00513CE1    call        TBitmap.GetCanvas
 00513CE6    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 00513CE9    mov         edx,0FFFFFF
 00513CEE    call        TBrush.SetColor
 00513CF3    mov         eax,dword ptr [ebp-4]
 00513CF6    mov         edx,dword ptr [eax]
 00513CF8    call        dword ptr [edx+50];TImage.GetEnabled
 00513CFB    test        al,al
>00513CFD    je          00513D50
 00513CFF    mov         eax,dword ptr [ebp-14]
 00513D02    call        TBitmap.GetCanvas
 00513D07    lea         edx,[ebp-30]
 00513D0A    call        00488470
 00513D0F    lea         eax,[ebp-30]
 00513D12    push        eax
 00513D13    mov         eax,dword ptr [ebp-14]
 00513D16    mov         edx,dword ptr [eax]
 00513D18    call        dword ptr [edx+20];TBitmap.sub_0048D614
 00513D1B    push        eax
 00513D1C    lea         eax,[ebp-40]
 00513D1F    push        eax
 00513D20    mov         eax,dword ptr [ebp-14]
 00513D23    mov         edx,dword ptr [eax]
 00513D25    call        dword ptr [edx+2C];TBitmap.sub_0048D878
 00513D28    mov         ecx,eax
 00513D2A    xor         edx,edx
 00513D2C    xor         eax,eax
 00513D2E    call        Rect
 00513D33    lea         eax,[ebp-40]
 00513D36    push        eax
 00513D37    mov         eax,dword ptr [ebp-14]
 00513D3A    call        TBitmap.GetCanvas
 00513D3F    mov         edx,dword ptr [ebp-4]
 00513D42    mov         ecx,dword ptr [edx+160];TCustomActionControl...............................................
 00513D48    pop         edx
 00513D49    call        TCanvas.CopyRect
>00513D4E    jmp         00513D72
 00513D50    mov         eax,dword ptr [ebp-10]
 00513D53    call        TBitmap.GetCanvas
 00513D58    lea         edx,[ebp-30]
 00513D5B    call        00488470
 00513D60    lea         eax,[ebp-30]
 00513D63    push        eax
 00513D64    mov         eax,dword ptr [ebp-14]
 00513D67    call        TBitmap.GetCanvas
 00513D6C    pop         edx
 00513D6D    call        TCanvas.FillRect
 00513D72    push        1
 00513D74    push        0FF
 00513D76    push        0FF
 00513D78    push        0
 00513D7A    push        0
 00513D7C    push        0
 00513D7E    push        0
 00513D80    mov         eax,dword ptr [ebp-14]
 00513D83    call        TBitmap.GetCanvas
 00513D88    call        TCanvas.GetHandle
 00513D8D    push        eax
 00513D8E    mov         eax,dword ptr [ebp-4]
 00513D91    mov         edx,dword ptr [eax]
 00513D93    call        dword ptr [edx+3C];TCustomActionControl.sub_005153C4
 00513D96    mov         eax,dword ptr [eax+80]
 00513D9C    push        eax
 00513D9D    mov         eax,dword ptr [ebp-20]
 00513DA0    call        004DC758
 00513DA5    push        eax
 00513DA6    call        comctl32.ImageList_DrawEx
 00513DAB    mov         edx,dword ptr [ebp-1C]
 00513DAE    mov         eax,dword ptr [ebp-10]
 00513DB1    mov         ecx,dword ptr [eax]
 00513DB3    call        dword ptr [ecx+40];TBitmap.sub_0048EB14
 00513DB6    mov         edx,dword ptr [ebp-18]
 00513DB9    mov         eax,dword ptr [ebp-10]
 00513DBC    mov         ecx,dword ptr [eax]
 00513DBE    call        dword ptr [ecx+34];TBitmap.sub_0048E6F4
 00513DC1    mov         eax,dword ptr [ebp-18]
 00513DC4    push        eax
 00513DC5    lea         eax,[ebp-30]
 00513DC8    push        eax
 00513DC9    mov         ecx,dword ptr [ebp-1C]
 00513DCC    xor         edx,edx
 00513DCE    xor         eax,eax
 00513DD0    call        Rect
 00513DD5    lea         eax,[ebp-30]
 00513DD8    push        eax
 00513DD9    mov         eax,dword ptr [ebp-10]
 00513DDC    call        TBitmap.GetCanvas
 00513DE1    mov         ecx,dword ptr [ebp-14]
 00513DE4    pop         edx
 00513DE5    call        0048800C
 00513DEA    mov         edx,0FFFFFF
 00513DEF    mov         eax,dword ptr [ebp-10]
 00513DF2    call        0048EA94
 00513DF7    mov         dl,1
 00513DF9    mov         eax,dword ptr [ebp-10]
 00513DFC    mov         ecx,dword ptr [eax]
 00513DFE    call        dword ptr [ecx+3C];TBitmap.sub_0048A230
 00513E01    mov         edx,dword ptr [ebp-1C]
 00513E04    mov         eax,dword ptr [ebp-14]
 00513E07    mov         ecx,dword ptr [eax]
 00513E09    call        dword ptr [ecx+40];TBitmap.sub_0048EB14
 00513E0C    mov         edx,dword ptr [ebp-18]
 00513E0F    mov         eax,dword ptr [ebp-14]
 00513E12    mov         ecx,dword ptr [eax]
 00513E14    call        dword ptr [ecx+34];TBitmap.sub_0048E6F4
 00513E17    mov         eax,dword ptr [ebp-4]
 00513E1A    mov         eax,dword ptr [eax+160];TCustomActionControl...............................................
 00513E20    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 00513E23    call        TBrush.GetColor
 00513E28    push        eax
 00513E29    mov         eax,dword ptr [ebp-14]
 00513E2C    call        TBitmap.GetCanvas
 00513E31    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 00513E34    pop         edx
 00513E35    call        TBrush.SetColor
 00513E3A    mov         eax,dword ptr [ebp-14]
 00513E3D    call        TBitmap.GetCanvas
 00513E42    lea         edx,[ebp-30]
 00513E45    call        00488470
 00513E4A    lea         eax,[ebp-30]
 00513E4D    push        eax
 00513E4E    mov         eax,dword ptr [ebp-14]
 00513E51    call        TBitmap.GetCanvas
 00513E56    pop         edx
 00513E57    call        TCanvas.FillRect
 00513E5C    mov         eax,dword ptr [ebp-10]
 00513E5F    push        eax
 00513E60    mov         eax,dword ptr [ebp-14]
 00513E63    call        TBitmap.GetCanvas
 00513E68    xor         ecx,ecx
 00513E6A    xor         edx,edx
 00513E6C    call        TCanvas.Draw
 00513E71    mov         eax,dword ptr [ebp-4]
 00513E74    mov         edx,dword ptr [eax]
 00513E76    call        dword ptr [edx+50];TImage.GetEnabled
 00513E79    test        al,al
>00513E7B    jne         00513E86
 00513E7D    mov         eax,dword ptr [ebp-4]
 00513E80    test        byte ptr [eax+1C],10;TCustomActionControl.FComponentState:TComponentState
>00513E84    je          00513F01
 00513E86    mov         eax,dword ptr [ebp-4]
 00513E89    mov         eax,dword ptr [eax+16C];TCustomActionControl.FActionClient:TActionClientItem
 00513E8F    call        0050CBCC
 00513E94    call        0050CCE0
 00513E99    test        al,al
>00513E9B    je          00513ECF
 00513E9D    mov         eax,dword ptr [ebp-8]
 00513EA0    add         eax,dword ptr [ebp-18]
 00513EA3    push        eax
 00513EA4    lea         eax,[ebp-30]
 00513EA7    push        eax
 00513EA8    mov         ecx,dword ptr [ebp-0C]
 00513EAB    add         ecx,dword ptr [ebp-1C]
 00513EAE    mov         edx,dword ptr [ebp-8]
 00513EB1    mov         eax,dword ptr [ebp-0C]
 00513EB4    call        Rect
 00513EB9    lea         edx,[ebp-30]
 00513EBC    mov         eax,dword ptr [ebp-4]
 00513EBF    mov         eax,dword ptr [eax+160];TCustomActionControl...............................................
 00513EC5    mov         ecx,dword ptr [ebp-10]
 00513EC8    call        0048800C
>00513ECD    jmp         00513F42
 00513ECF    mov         eax,dword ptr [ebp-8]
 00513ED2    add         eax,dword ptr [ebp-18]
 00513ED5    push        eax
 00513ED6    lea         eax,[ebp-30]
 00513ED9    push        eax
 00513EDA    mov         ecx,dword ptr [ebp-0C]
 00513EDD    add         ecx,dword ptr [ebp-1C]
 00513EE0    mov         edx,dword ptr [ebp-8]
 00513EE3    mov         eax,dword ptr [ebp-0C]
 00513EE6    call        Rect
 00513EEB    lea         edx,[ebp-30]
 00513EEE    mov         eax,dword ptr [ebp-4]
 00513EF1    mov         eax,dword ptr [eax+160];TCustomActionControl...............................................
 00513EF7    mov         ecx,dword ptr [ebp-14]
 00513EFA    call        0048800C
>00513EFF    jmp         00513F42
 00513F01    push        24
 00513F03    push        0
 00513F05    push        0
 00513F07    mov         eax,dword ptr [ebp-8]
 00513F0A    push        eax
 00513F0B    mov         eax,dword ptr [ebp-0C]
 00513F0E    push        eax
 00513F0F    push        0
 00513F11    mov         eax,dword ptr [ebp-10]
 00513F14    mov         edx,dword ptr [eax]
 00513F16    call        dword ptr [edx+64];TBitmap.sub_0048D584
 00513F19    push        eax
 00513F1A    push        0
 00513F1C    mov         eax,dword ptr [ebp-4]
 00513F1F    mov         eax,dword ptr [eax+160];TCustomActionControl...............................................
 00513F25    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 00513F28    call        TBrush.GetHandle
 00513F2D    push        eax
 00513F2E    mov         eax,dword ptr [ebp-4]
 00513F31    mov         eax,dword ptr [eax+160];TCustomActionControl...............................................
 00513F37    call        TCanvas.GetHandle
 00513F3C    push        eax
 00513F3D    call        user32.DrawStateA
 00513F42    xor         eax,eax
 00513F44    pop         edx
 00513F45    pop         ecx
 00513F46    pop         ecx
 00513F47    mov         dword ptr fs:[eax],edx
 00513F4A    push        513F5F
 00513F4F    mov         eax,dword ptr [ebp-10]
 00513F52    call        TObject.Free
 00513F57    ret
>00513F58    jmp         @HandleFinally
>00513F5D    jmp         00513F4F
 00513F5F    xor         eax,eax
 00513F61    pop         edx
 00513F62    pop         ecx
 00513F63    pop         ecx
 00513F64    mov         dword ptr fs:[eax],edx
 00513F67    push        513F7C
 00513F6C    mov         eax,dword ptr [ebp-14]
 00513F6F    call        TObject.Free
 00513F74    ret
>00513F75    jmp         @HandleFinally
>00513F7A    jmp         00513F6C
 00513F7C    pop         edi
 00513F7D    pop         esi
 00513F7E    mov         esp,ebp
 00513F80    pop         ebp
 00513F81    ret
end;*}

//00513F84
{*procedure sub_00513F84(?:?);
begin
 00513F84    push        ebp
 00513F85    mov         ebp,esp
 00513F87    add         esp,0FFFFFFD4
 00513F8A    mov         dword ptr [ebp-8],edx
 00513F8D    mov         dword ptr [ebp-4],eax
 00513F90    mov         eax,dword ptr [ebp-4]
 00513F93    call        0051541C
 00513F98    test        eax,eax
>00513F9A    je          005141FB
 00513FA0    mov         eax,dword ptr [ebp-4]
 00513FA3    call        0051541C
 00513FA8    mov         al,byte ptr [eax+227]
 00513FAE    sub         al,2
>00513FB0    jae         00513FF4
 00513FB2    mov         eax,dword ptr [ebp-4]
 00513FB5    call        TControl.GetClientWidth
 00513FBA    sar         eax,1
>00513FBC    jns         00513FC1
 00513FBE    adc         eax,0
 00513FC1    lea         ecx,[ebp-10]
 00513FC4    mov         edx,dword ptr [ebp-8]
 00513FC7    dec         edx
 00513FC8    call        Point
 00513FCD    mov         eax,dword ptr [ebp-4]
 00513FD0    call        TControl.GetClientHeight
 00513FD5    sub         eax,dword ptr [ebp-8]
 00513FD8    inc         eax
 00513FD9    push        eax
 00513FDA    mov         eax,dword ptr [ebp-4]
 00513FDD    call        TControl.GetClientWidth
 00513FE2    sar         eax,1
>00513FE4    jns         00513FE9
 00513FE6    adc         eax,0
 00513FE9    lea         ecx,[ebp-18]
 00513FEC    pop         edx
 00513FED    call        Point
>00513FF2    jmp         00514032
 00513FF4    mov         eax,dword ptr [ebp-4]
 00513FF7    call        TControl.GetClientHeight
 00513FFC    mov         edx,eax
 00513FFE    sar         edx,1
>00514000    jns         00514005
 00514002    adc         edx,0
 00514005    lea         ecx,[ebp-10]
 00514008    mov         eax,dword ptr [ebp-8]
 0051400B    call        Point
 00514010    mov         eax,dword ptr [ebp-4]
 00514013    call        TControl.GetClientHeight
 00514018    mov         edx,eax
 0051401A    sar         edx,1
>0051401C    jns         00514021
 0051401E    adc         edx,0
 00514021    lea         ecx,[ebp-18]
 00514024    mov         eax,dword ptr [ebp-4]
 00514027    mov         eax,dword ptr [eax+48];TCustomActionControl.Width:Integer
 0051402A    sub         eax,dword ptr [ebp-8]
 0051402D    call        Point
 00514032    mov         eax,dword ptr [ebp-4]
 00514035    mov         eax,dword ptr [eax+160];TCustomActionControl...............................................
 0051403B    mov         dword ptr [ebp-1C],eax
 0051403E    mov         edx,1
 00514043    mov         eax,dword ptr [ebp-1C]
 00514046    mov         eax,dword ptr [eax+10];TCanvas.Pen:TPen
 00514049    call        TPen.SetWidth
 0051404E    mov         eax,dword ptr [ebp-4]
 00514051    cmp         byte ptr [eax+18A],0;TCustomActionControl.FSelected:Boolean
>00514058    je          00514079
 0051405A    mov         eax,dword ptr [ebp-4]
 0051405D    test        byte ptr [eax+1C],10;TCustomActionControl.FComponentState:TComponentState
>00514061    je          00514079
 00514063    lea         edx,[ebp-2C]
 00514066    mov         eax,dword ptr [ebp-4]
 00514069    mov         ecx,dword ptr [eax]
 0051406B    call        dword ptr [ecx+44];TCustomActionControl.sub_004CA73C
 0051406E    lea         edx,[ebp-2C]
 00514071    mov         eax,dword ptr [ebp-1C]
 00514074    call        TCanvas.FillRect
 00514079    mov         eax,dword ptr [ebp-4]
 0051407C    cmp         dword ptr [eax+16C],0;TCustomActionControl.FActionClient:TActionClientItem
>00514083    je          005140C0
 00514085    mov         eax,dword ptr [ebp-4]
 00514088    mov         eax,dword ptr [eax+16C];TCustomActionControl.FActionClient:TActionClientItem
 0051408E    call        0050F28C
 00514093    test        al,al
>00514095    je          005140C0
 00514097    mov         eax,dword ptr [ebp-4]
 0051409A    call        0051541C
 0051409F    call        TActionToolBar.GetColorMap
 005140A4    mov         eax,dword ptr [eax+6C]
 005140A7    mov         edx,0FFFFFFCE
 005140AC    call        004F9070
 005140B1    mov         edx,eax
 005140B3    mov         eax,dword ptr [ebp-1C]
 005140B6    mov         eax,dword ptr [eax+10];TCanvas.Pen:TPen
 005140B9    call        TPen.SetColor
>005140BE    jmp         005140FB
 005140C0    mov         eax,dword ptr [ebp-4]
 005140C3    cmp         dword ptr [eax+70],0FF00000F;TCustomActionControl.FColor:TColor
>005140CA    jne         005140DE
 005140CC    mov         edx,0FF000010
 005140D1    mov         eax,dword ptr [ebp-1C]
 005140D4    mov         eax,dword ptr [eax+10];TCanvas.Pen:TPen
 005140D7    call        TPen.SetColor
>005140DC    jmp         005140FB
 005140DE    mov         edx,0FFFFFFCE
 005140E3    mov         eax,dword ptr [ebp-4]
 005140E6    mov         eax,dword ptr [eax+70];TCustomActionControl.FColor:TColor
 005140E9    call        004F9070
 005140EE    mov         edx,eax
 005140F0    mov         eax,dword ptr [ebp-1C]
 005140F3    mov         eax,dword ptr [eax+10];TCanvas.Pen:TPen
 005140F6    call        TPen.SetColor
 005140FB    mov         ecx,dword ptr [ebp-0C]
 005140FE    mov         edx,dword ptr [ebp-10]
 00514101    mov         eax,dword ptr [ebp-1C]
 00514104    call        TCanvas.MoveTo
 00514109    mov         ecx,dword ptr [ebp-14]
 0051410C    mov         edx,dword ptr [ebp-18]
 0051410F    mov         eax,dword ptr [ebp-1C]
 00514112    call        TCanvas.LineTo
 00514117    mov         eax,dword ptr [ebp-4]
 0051411A    cmp         dword ptr [eax+16C],0;TCustomActionControl.FActionClient:TActionClientItem
>00514121    je          0051417C
 00514123    mov         eax,dword ptr [ebp-4]
 00514126    mov         eax,dword ptr [eax+16C];TCustomActionControl.FActionClient:TActionClientItem
 0051412C    call        0050F28C
 00514131    test        al,al
>00514133    je          0051417C
 00514135    mov         eax,dword ptr [ebp-4]
 00514138    cmp         dword ptr [eax+70],0FF00000F;TCustomActionControl.FColor:TColor
>0051413F    jne         00514153
 00514141    mov         edx,0FF000014
 00514146    mov         eax,dword ptr [ebp-1C]
 00514149    mov         eax,dword ptr [eax+10];TCanvas.Pen:TPen
 0051414C    call        TPen.SetColor
>00514151    jmp         005141B5
 00514153    mov         eax,dword ptr [ebp-4]
 00514156    call        0051541C
 0051415B    call        TActionToolBar.GetColorMap
 00514160    mov         eax,dword ptr [eax+6C]
 00514163    mov         edx,13
 00514168    call        004F8F98
 0051416D    mov         edx,eax
 0051416F    mov         eax,dword ptr [ebp-1C]
 00514172    mov         eax,dword ptr [eax+10];TCanvas.Pen:TPen
 00514175    call        TPen.SetColor
>0051417A    jmp         005141B5
 0051417C    mov         eax,dword ptr [ebp-4]
 0051417F    cmp         dword ptr [eax+70],0FF00000F;TCustomActionControl.FColor:TColor
>00514186    jne         0051419A
 00514188    mov         edx,0FF000014
 0051418D    mov         eax,dword ptr [ebp-1C]
 00514190    mov         eax,dword ptr [eax+10];TCanvas.Pen:TPen
 00514193    call        TPen.SetColor
>00514198    jmp         005141B5
 0051419A    mov         eax,dword ptr [ebp-4]
 0051419D    call        0051541C
 005141A2    call        TActionToolBar.GetColorMap
 005141A7    mov         edx,dword ptr [eax+6C]
 005141AA    mov         eax,dword ptr [ebp-1C]
 005141AD    mov         eax,dword ptr [eax+10];TCanvas.Pen:TPen
 005141B0    call        TPen.SetColor
 005141B5    mov         eax,dword ptr [ebp-10]
 005141B8    cmp         eax,dword ptr [ebp-18]
>005141BB    jne         005141DD
 005141BD    mov         edx,dword ptr [ebp-10]
 005141C0    inc         edx
 005141C1    mov         ecx,dword ptr [ebp-0C]
 005141C4    mov         eax,dword ptr [ebp-1C]
 005141C7    call        TCanvas.MoveTo
 005141CC    mov         edx,dword ptr [ebp-10]
 005141CF    inc         edx
 005141D0    mov         ecx,dword ptr [ebp-14]
 005141D3    mov         eax,dword ptr [ebp-1C]
 005141D6    call        TCanvas.LineTo
>005141DB    jmp         005141FB
 005141DD    mov         ecx,dword ptr [ebp-0C]
 005141E0    inc         ecx
 005141E1    mov         edx,dword ptr [ebp-10]
 005141E4    mov         eax,dword ptr [ebp-1C]
 005141E7    call        TCanvas.MoveTo
 005141EC    mov         ecx,dword ptr [ebp-14]
 005141EF    inc         ecx
 005141F0    mov         edx,dword ptr [ebp-18]
 005141F3    mov         eax,dword ptr [ebp-1C]
 005141F6    call        TCanvas.LineTo
 005141FB    mov         esp,ebp
 005141FD    pop         ebp
 005141FE    ret
end;*}

//00514200
{*procedure sub_00514200(?:TRect; ?:?; ?:?);
begin
 00514200    push        ebp
 00514201    mov         ebp,esp
 00514203    add         esp,0FFFFFFF4
 00514206    mov         dword ptr [ebp-0C],ecx
 00514209    mov         dword ptr [ebp-8],edx
 0051420C    mov         dword ptr [ebp-4],eax
 0051420F    mov         eax,dword ptr [ebp+8]
 00514212    call        @LStrAddRef
 00514217    xor         eax,eax
 00514219    push        ebp
 0051421A    push        51426B
 0051421F    push        dword ptr fs:[eax]
 00514222    mov         dword ptr fs:[eax],esp
 00514225    mov         eax,dword ptr [ebp-0C]
 00514228    mov         eax,dword ptr [eax]
 0051422A    push        eax
 0051422B    mov         eax,dword ptr [ebp-8]
 0051422E    push        eax
 0051422F    mov         eax,dword ptr [ebp+8]
 00514232    call        @DynArrayLength
 00514237    push        eax
 00514238    mov         eax,dword ptr [ebp+8]
 0051423B    call        @LStrToPChar
 00514240    push        eax
 00514241    mov         eax,dword ptr [ebp-4]
 00514244    mov         eax,dword ptr [eax+160];TCustomActionControl...............................................
 0051424A    call        TCanvas.GetHandle
 0051424F    push        eax
 00514250    call        user32.DrawTextA
 00514255    xor         eax,eax
 00514257    pop         edx
 00514258    pop         ecx
 00514259    pop         ecx
 0051425A    mov         dword ptr fs:[eax],edx
 0051425D    push        514272
 00514262    lea         eax,[ebp+8]
 00514265    call        @LStrClr
 0051426A    ret
>0051426B    jmp         @HandleFinally
>00514270    jmp         00514262
 00514272    mov         esp,ebp
 00514274    pop         ebp
 00514275    ret         4
end;*}

//00514278
{*procedure sub_00514278(?:TRect; ?:?; ?:?; ?:?; ?:?);
begin
 00514278    push        ebp
 00514279    mov         ebp,esp
 0051427B    add         esp,0FFFFFFE8
 0051427E    push        esi
 0051427F    push        edi
 00514280    mov         esi,edx
 00514282    lea         edi,[ebp-18]
 00514285    movs        dword ptr [edi],dword ptr [esi]
 00514286    movs        dword ptr [edi],dword ptr [esi]
 00514287    movs        dword ptr [edi],dword ptr [esi]
 00514288    movs        dword ptr [edi],dword ptr [esi]
 00514289    mov         dword ptr [ebp-8],ecx
 0051428C    mov         dword ptr [ebp-4],eax
 0051428F    mov         eax,dword ptr [ebp+10]
 00514292    call        @LStrAddRef
 00514297    xor         eax,eax
 00514299    push        ebp
 0051429A    push        514359
 0051429F    push        dword ptr fs:[eax]
 005142A2    mov         dword ptr fs:[eax],esp
 005142A5    push        1
 005142A7    push        1
 005142A9    lea         eax,[ebp-18]
 005142AC    push        eax
 005142AD    call        user32.OffsetRect
 005142B2    mov         eax,dword ptr [ebp-4]
 005142B5    mov         eax,dword ptr [eax+160];TCustomActionControl...............................................
 005142BB    mov         eax,dword ptr [eax+0C];TCanvas.Font:TFont
 005142BE    mov         edx,dword ptr [ebp+8]
 005142C1    call        TFont.SetColor
 005142C6    mov         eax,dword ptr [ebp-8]
 005142C9    push        eax
 005142CA    lea         eax,[ebp-18]
 005142CD    push        eax
 005142CE    mov         eax,dword ptr [ebp+10]
 005142D1    call        @DynArrayLength
 005142D6    push        eax
 005142D7    mov         eax,dword ptr [ebp+10]
 005142DA    call        @LStrToPChar
 005142DF    push        eax
 005142E0    mov         eax,dword ptr [ebp-4]
 005142E3    mov         eax,dword ptr [eax+160];TCustomActionControl...............................................
 005142E9    call        TCanvas.GetHandle
 005142EE    push        eax
 005142EF    call        user32.DrawTextA
 005142F4    push        0FF
 005142F6    push        0FF
 005142F8    lea         eax,[ebp-18]
 005142FB    push        eax
 005142FC    call        user32.OffsetRect
 00514301    mov         eax,dword ptr [ebp-4]
 00514304    mov         eax,dword ptr [eax+160];TCustomActionControl...............................................
 0051430A    mov         eax,dword ptr [eax+0C];TCanvas.Font:TFont
 0051430D    mov         edx,dword ptr [ebp+0C]
 00514310    call        TFont.SetColor
 00514315    mov         eax,dword ptr [ebp-8]
 00514318    push        eax
 00514319    lea         eax,[ebp-18]
 0051431C    push        eax
 0051431D    mov         eax,dword ptr [ebp+10]
 00514320    call        @DynArrayLength
 00514325    push        eax
 00514326    mov         eax,dword ptr [ebp+10]
 00514329    call        @LStrToPChar
 0051432E    push        eax
 0051432F    mov         eax,dword ptr [ebp-4]
 00514332    mov         eax,dword ptr [eax+160];TCustomActionControl...............................................
 00514338    call        TCanvas.GetHandle
 0051433D    push        eax
 0051433E    call        user32.DrawTextA
 00514343    xor         eax,eax
 00514345    pop         edx
 00514346    pop         ecx
 00514347    pop         ecx
 00514348    mov         dword ptr fs:[eax],edx
 0051434B    push        514360
 00514350    lea         eax,[ebp+10]
 00514353    call        @LStrClr
 00514358    ret
>00514359    jmp         @HandleFinally
>0051435E    jmp         00514350
 00514360    pop         edi
 00514361    pop         esi
 00514362    mov         esp,ebp
 00514364    pop         ebp
 00514365    ret         0C
end;*}

//00514368
{*function sub_00514368:?;
begin
 00514368    push        ebp
 00514369    mov         ebp,esp
 0051436B    add         esp,0FFFFFFF8
 0051436E    mov         dword ptr [ebp-4],eax
 00514371    mov         eax,dword ptr [ebp-4]
 00514374    mov         edx,dword ptr [eax]
 00514376    call        dword ptr [edx+3C];TCustomActionControl.sub_005153C4
 00514379    mov         edx,dword ptr ds:[4DA408];TCustomAction
 0051437F    call        @IsClass
 00514384    test        al,al
>00514386    je          00514396
 00514388    mov         eax,dword ptr [ebp-4]
 0051438B    mov         edx,dword ptr [eax]
 0051438D    call        dword ptr [edx+3C];TCustomActionControl.sub_005153C4
 00514390    cmp         dword ptr [eax+6C],0
>00514394    jg          0051439A
 00514396    xor         eax,eax
>00514398    jmp         0051439C
 0051439A    mov         al,1
 0051439C    mov         byte ptr [ebp-5],al
 0051439F    mov         al,byte ptr [ebp-5]
 005143A2    pop         ecx
 005143A3    pop         ecx
 005143A4    pop         ebp
 005143A5    ret
end;*}

//005143A8
procedure sub_005143A8;
begin
{*
 005143A8    push        ebp
 005143A9    mov         ebp,esp
 005143AB    add         esp,0FFFFFFD0
 005143AE    push        ebx
 005143AF    push        esi
 005143B0    push        edi
 005143B1    xor         edx,edx
 005143B3    mov         dword ptr [ebp-30],edx
 005143B6    mov         dword ptr [ebp-2C],edx
 005143B9    mov         dword ptr [ebp-4],eax
 005143BC    xor         eax,eax
 005143BE    push        ebp
 005143BF    push        5147CC
 005143C4    push        dword ptr fs:[eax]
 005143C7    mov         dword ptr fs:[eax],esp
 005143CA    lea         edx,[ebp-18]
 005143CD    mov         eax,dword ptr [ebp-4]
 005143D0    mov         ecx,dword ptr [eax]
 005143D2    call        dword ptr [ecx+44];TCustomActionControl.sub_004CA73C
 005143D5    mov         eax,dword ptr [ebp-4]
 005143D8    test        byte ptr [eax+1C],10;TCustomActionControl.FComponentState:TComponentState
>005143DC    je          00514401
 005143DE    mov         eax,dword ptr [ebp-4]
 005143E1    movzx       eax,byte ptr [eax+1A0];TCustomActionControl.FTransparent:Boolean
 005143E8    mov         dl,byte ptr [eax+541AA8]
 005143EE    mov         eax,dword ptr [ebp-4]
 005143F1    mov         eax,dword ptr [eax+160];TCustomActionControl...............................................
 005143F7    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 005143FA    call        TBrush.SetStyle
>005143FF    jmp         00514439
 00514401    mov         eax,dword ptr [ebp-4]
 00514404    cmp         byte ptr [eax+1A0],0;TCustomActionControl.FTransparent:Boolean
>0051440B    je          00514419
 0051440D    mov         eax,dword ptr [ebp-4]
 00514410    cmp         byte ptr [eax+18A],0;TCustomActionControl.FSelected:Boolean
>00514417    je          0051441D
 00514419    xor         eax,eax
>0051441B    jmp         0051441F
 0051441D    mov         al,1
 0051441F    and         eax,7F
 00514422    mov         dl,byte ptr [eax+541AA8]
 00514428    mov         eax,dword ptr [ebp-4]
 0051442B    mov         eax,dword ptr [eax+160];TCustomActionControl...............................................
 00514431    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 00514434    call        TBrush.SetStyle
 00514439    mov         eax,dword ptr [ebp-4]
 0051443C    cmp         dword ptr [eax+16C],0;TCustomActionControl.FActionClient:TActionClientItem
>00514443    je          00514476
 00514445    mov         eax,dword ptr [ebp-4]
 00514448    mov         eax,dword ptr [eax+16C];TCustomActionControl.FActionClient:TActionClientItem
 0051444E    cmp         dword ptr [eax+24],20000000;TActionClientItem.Color:TColor
>00514455    je          00514476
 00514457    mov         eax,dword ptr [ebp-4]
 0051445A    mov         eax,dword ptr [eax+16C];TCustomActionControl.FActionClient:TActionClientItem
 00514460    mov         edx,dword ptr [eax+24];TActionClientItem.Color:TColor
 00514463    mov         eax,dword ptr [ebp-4]
 00514466    mov         eax,dword ptr [eax+160];TCustomActionControl...............................................
 0051446C    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 0051446F    call        TBrush.SetColor
>00514474    jmp         00514497
 00514476    mov         eax,dword ptr [ebp-4]
 00514479    call        0051541C
 0051447E    call        TActionToolBar.GetColorMap
 00514483    mov         edx,dword ptr [eax+40]
 00514486    mov         eax,dword ptr [ebp-4]
 00514489    mov         eax,dword ptr [eax+160];TCustomActionControl...............................................
 0051448F    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 00514492    call        TBrush.SetColor
 00514497    lea         edx,[ebp-18]
 0051449A    mov         eax,dword ptr [ebp-4]
 0051449D    mov         ecx,dword ptr [eax]
 0051449F    call        dword ptr [ecx+0AC];TCustomActionControl.sub_00513A2C
 005144A5    mov         eax,dword ptr [ebp-4]
 005144A8    mov         edx,dword ptr [eax]
 005144AA    call        dword ptr [edx+0C8];TCustomActionControl.sub_005152A0
 005144B0    test        al,al
>005144B2    je          005144C9
 005144B4    mov         edx,2
 005144B9    mov         eax,dword ptr [ebp-4]
 005144BC    mov         ecx,dword ptr [eax]
 005144BE    call        dword ptr [ecx+0B8];TCustomActionControl.sub_00513F84
>005144C4    jmp         005146DF
 005144C9    mov         eax,dword ptr [ebp-4]
 005144CC    call        0051541C
 005144D1    call        005116BC
 005144D6    test        al,al
>005144D8    je          00514517
 005144DA    mov         eax,dword ptr [ebp-4]
 005144DD    call        0051541C
 005144E2    call        00511668
 005144E7    cmp         byte ptr [eax+29],0
>005144EB    je          00514503
 005144ED    mov         eax,dword ptr [ebp-4]
 005144F0    lea         edx,[eax+172];TCustomActionControl.FGlyphPos:TPoint
 005144F6    mov         eax,dword ptr [ebp-4]
 005144F9    mov         ecx,dword ptr [eax]
 005144FB    call        dword ptr [ecx+0A4];TCustomActionControl.sub_00513B5C
>00514501    jmp         00514517
 00514503    mov         eax,dword ptr [ebp-4]
 00514506    lea         edx,[eax+172];TCustomActionControl.FGlyphPos:TPoint
 0051450C    mov         eax,dword ptr [ebp-4]
 0051450F    mov         ecx,dword ptr [eax]
 00514511    call        dword ptr [ecx+0A8];TCustomActionControl.sub_00513C20
 00514517    mov         eax,dword ptr [ebp-4]
 0051451A    mov         edx,dword ptr [eax]
 0051451C    call        dword ptr [edx+98];TCustomActionControl.sub_005152D0
 00514522    test        al,al
>00514524    jne         00514536
 00514526    mov         eax,dword ptr [ebp-4]
 00514529    call        00515218
 0051452E    test        al,al
>00514530    jne         005146DF
 00514536    xor         edx,edx
 00514538    mov         eax,dword ptr [ebp-4]
 0051453B    call        004CDF58
 00514540    or          eax,100
 00514545    mov         dword ptr [ebp-8],eax
 00514548    mov         eax,dword ptr [ebp-4]
 0051454B    lea         esi,[eax+190];TCustomActionControl.FTextBounds:TRect
 00514551    lea         edi,[ebp-28]
 00514554    movs        dword ptr [edi],dword ptr [esi]
 00514555    movs        dword ptr [edi],dword ptr [esi]
 00514556    movs        dword ptr [edi],dword ptr [esi]
 00514557    movs        dword ptr [edi],dword ptr [esi]
 00514558    mov         eax,dword ptr [ebp-4]
 0051455B    mov         eax,dword ptr [eax+160];TCustomActionControl...............................................
 00514561    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 00514564    mov         dl,1
 00514566    call        TBrush.SetStyle
 0051456B    mov         eax,dword ptr [ebp-4]
 0051456E    call        0051541C
 00514573    call        TActionToolBar.GetColorMap
 00514578    mov         edx,dword ptr [eax+50]
 0051457B    mov         eax,dword ptr [ebp-4]
 0051457E    mov         eax,dword ptr [eax+160];TCustomActionControl...............................................
 00514584    mov         eax,dword ptr [eax+0C];TCanvas.Font:TFont
 00514587    call        TFont.SetColor
 0051458C    call        ThemeServices
 00514591    call        TThemeServices.GetThemesEnabled
 00514596    test        al,al
>00514598    je          005145B1
 0051459A    mov         eax,dword ptr [ebp-4]
 0051459D    mov         eax,dword ptr [eax+160];TCustomActionControl...............................................
 005145A3    mov         eax,dword ptr [eax+0C];TCanvas.Font:TFont
 005145A6    mov         edx,dword ptr [ebp-4]
 005145A9    mov         edx,dword ptr [edx+68];TCustomActionControl.FFont:TFont
 005145AC    mov         ecx,dword ptr [eax]
 005145AE    call        dword ptr [ecx+8];TFont.sub_00486CC0
 005145B1    mov         eax,dword ptr [ebp-4]
 005145B4    call        0051541C
 005145B9    mov         edx,dword ptr [eax]
 005145BB    call        dword ptr [edx+104]
 005145C1    test        al,al
>005145C3    jne         00514643
 005145C5    mov         eax,dword ptr [ebp-4]
 005145C8    mov         edx,dword ptr [eax]
 005145CA    call        dword ptr [edx+50];TImage.GetEnabled
 005145CD    test        al,al
>005145CF    jne         005145E9
 005145D1    mov         eax,dword ptr [ebp-4]
 005145D4    mov         edx,dword ptr [eax]
 005145D6    call        dword ptr [edx+50];TImage.GetEnabled
 005145D9    test        al,al
>005145DB    jne         00514643
 005145DD    mov         eax,dword ptr [ebp-4]
 005145E0    cmp         byte ptr [eax+18A],0;TCustomActionControl.FSelected:Boolean
>005145E7    je          00514643
 005145E9    mov         eax,dword ptr [ebp-4]
 005145EC    cmp         byte ptr [eax+18A],0;TCustomActionControl.FSelected:Boolean
>005145F3    je          00514616
 005145F5    mov         eax,dword ptr [ebp-4]
 005145F8    call        0051541C
 005145FD    call        TActionToolBar.GetColorMap
 00514602    mov         edx,dword ptr [eax+64]
 00514605    mov         eax,dword ptr [ebp-4]
 00514608    mov         eax,dword ptr [eax+160];TCustomActionControl...............................................
 0051460E    mov         eax,dword ptr [eax+0C];TCanvas.Font:TFont
 00514611    call        TFont.SetColor
 00514616    mov         eax,dword ptr [ebp-4]
 00514619    mov         edx,dword ptr [eax]
 0051461B    call        dword ptr [edx+50];TImage.GetEnabled
 0051461E    test        al,al
>00514620    jne         00514643
 00514622    mov         eax,dword ptr [ebp-4]
 00514625    call        0051541C
 0051462A    call        TActionToolBar.GetColorMap
 0051462F    mov         edx,dword ptr [eax+48]
 00514632    mov         eax,dword ptr [ebp-4]
 00514635    mov         eax,dword ptr [eax+160];TCustomActionControl...............................................
 0051463B    mov         eax,dword ptr [eax+0C];TCanvas.Font:TFont
 0051463E    call        TFont.SetColor
 00514643    mov         eax,dword ptr [ebp-4]
 00514646    call        0051541C
 0051464B    mov         edx,dword ptr [eax]
 0051464D    call        dword ptr [edx+104]
 00514653    test        al,al
>00514655    jne         0051467B
 00514657    mov         eax,dword ptr [ebp-4]
 0051465A    mov         edx,dword ptr [eax]
 0051465C    call        dword ptr [edx+50];TImage.GetEnabled
 0051465F    test        al,al
>00514661    jne         0051467B
 00514663    mov         eax,dword ptr [ebp-4]
 00514666    mov         edx,dword ptr [eax]
 00514668    call        dword ptr [edx+50];TImage.GetEnabled
 0051466B    test        al,al
>0051466D    jne         0051469D
 0051466F    mov         eax,dword ptr [ebp-4]
 00514672    cmp         byte ptr [eax+18A],0;TCustomActionControl.FSelected:Boolean
>00514679    je          0051469D
 0051467B    lea         edx,[ebp-2C]
 0051467E    mov         eax,dword ptr [ebp-4]
 00514681    call        TControl.GetText
 00514686    mov         eax,dword ptr [ebp-2C]
 00514689    push        eax
 0051468A    lea         ecx,[ebp-8]
 0051468D    lea         edx,[ebp-28]
 00514690    mov         eax,dword ptr [ebp-4]
 00514693    mov         ebx,dword ptr [eax]
 00514695    call        dword ptr [ebx+0B0];TCustomActionControl.sub_00514200
>0051469B    jmp         005146DF
 0051469D    lea         edx,[ebp-30]
 005146A0    mov         eax,dword ptr [ebp-4]
 005146A3    call        TControl.GetText
 005146A8    mov         eax,dword ptr [ebp-30]
 005146AB    push        eax
 005146AC    mov         eax,dword ptr [ebp-4]
 005146AF    call        0051541C
 005146B4    call        TActionToolBar.GetColorMap
 005146B9    mov         eax,dword ptr [eax+48]
 005146BC    push        eax
 005146BD    mov         eax,dword ptr [ebp-4]
 005146C0    call        0051541C
 005146C5    call        TActionToolBar.GetColorMap
 005146CA    mov         eax,dword ptr [eax+4C]
 005146CD    push        eax
 005146CE    mov         ecx,dword ptr [ebp-8]
 005146D1    lea         edx,[ebp-28]
 005146D4    mov         eax,dword ptr [ebp-4]
 005146D7    mov         ebx,dword ptr [eax]
 005146D9    call        dword ptr [ebx+0B4];TCustomActionControl.sub_00514278
 005146DF    mov         eax,dword ptr [ebp-4]
 005146E2    cmp         byte ptr [eax+18A],0;TCustomActionControl.FSelected:Boolean
>005146E9    je          0051479D
 005146EF    mov         eax,dword ptr [ebp-4]
 005146F2    call        0051541C
 005146F7    test        eax,eax
>005146F9    je          0051479D
 005146FF    mov         eax,dword ptr [ebp-4]
 00514702    call        0051541C
 00514707    mov         edx,dword ptr [eax]
 00514709    call        dword ptr [edx+104]
 0051470F    test        al,al
>00514711    je          0051479D
 00514717    lea         edx,[ebp-18]
 0051471A    mov         eax,dword ptr [ebp-4]
 0051471D    mov         ecx,dword ptr [eax]
 0051471F    call        dword ptr [ecx+44];TCustomActionControl.sub_004CA73C
 00514722    push        1
 00514724    push        1
 00514726    lea         eax,[ebp-18]
 00514729    push        eax
 0051472A    call        user32.OffsetRect
 0051472F    dec         dword ptr [ebp-10]
 00514732    dec         dword ptr [ebp-0C]
 00514735    mov         eax,dword ptr [ebp-4]
 00514738    mov         eax,dword ptr [eax+160];TCustomActionControl...............................................
 0051473E    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 00514741    mov         dl,1
 00514743    call        TBrush.SetStyle
 00514748    mov         eax,dword ptr [ebp-4]
 0051474B    call        0051541C
 00514750    call        TActionToolBar.GetColorMap
 00514755    mov         edx,dword ptr [eax+70]
 00514758    mov         eax,dword ptr [ebp-4]
 0051475B    mov         eax,dword ptr [eax+160];TCustomActionControl...............................................
 00514761    mov         eax,dword ptr [eax+10];TCanvas.Pen:TPen
 00514764    call        TPen.SetColor
 00514769    mov         eax,dword ptr [ebp-4]
 0051476C    mov         eax,dword ptr [eax+160];TCustomActionControl...............................................
 00514772    mov         eax,dword ptr [eax+10];TCanvas.Pen:TPen
 00514775    mov         edx,2
 0051477A    call        TPen.SetWidth
 0051477F    mov         eax,[0055B688];^gvar_0055DDAC
 00514784    mov         eax,dword ptr [eax]
 00514786    call        004D95C4
 0051478B    test        al,al
>0051478D    jne         0051479D
 0051478F    lea         edx,[ebp-18]
 00514792    mov         eax,dword ptr [ebp-4]
 00514795    mov         ecx,dword ptr [eax]
 00514797    call        dword ptr [ecx+0A0];TCustomActionControl.sub_00514D70
 0051479D    mov         eax,dword ptr [ebp-4]
 005147A0    cmp         byte ptr [eax+170],0;TCustomActionControl.FDropPoint:Boolean
>005147A7    je          005147B1
 005147A9    mov         eax,dword ptr [ebp-4]
 005147AC    call        00515068
 005147B1    xor         eax,eax
 005147B3    pop         edx
 005147B4    pop         ecx
 005147B5    pop         ecx
 005147B6    mov         dword ptr fs:[eax],edx
 005147B9    push        5147D3
 005147BE    lea         eax,[ebp-30]
 005147C1    mov         edx,2
 005147C6    call        @LStrArrayClr
 005147CB    ret
>005147CC    jmp         @HandleFinally
>005147D1    jmp         005147BE
 005147D3    pop         edi
 005147D4    pop         esi
 005147D5    pop         ebx
 005147D6    mov         esp,ebp
 005147D8    pop         ebp
 005147D9    ret
*}
end;

//005147DC
procedure sub_005147DC;
begin
{*
 005147DC    push        ebp
 005147DD    mov         ebp,esp
 005147DF    push        ecx
 005147E0    push        esi
 005147E1    mov         dword ptr [ebp-4],eax
 005147E4    mov         eax,dword ptr [ebp-4]
 005147E7    mov         si,0FFD0
 005147EB    call        @CallDynaInst;TControl.sub_004C9ED8
 005147F0    pop         esi
 005147F1    pop         ecx
 005147F2    pop         ebp
 005147F3    ret
*}
end;

//005147F4
{*procedure sub_005147F4(?:TCustomActionControl; ?:?);
begin
 005147F4    push        ebp
 005147F5    mov         ebp,esp
 005147F7    add         esp,0FFFFFFF8
 005147FA    mov         byte ptr [ebp-5],dl
 005147FD    mov         dword ptr [ebp-4],eax
 00514800    mov         al,byte ptr [ebp-5]
 00514803    mov         edx,dword ptr [ebp-4]
 00514806    cmp         al,byte ptr [edx+1A0];TCustomActionControl.FTransparent:Boolean
>0051480C    je          0051484E
 0051480E    mov         al,byte ptr [ebp-5]
 00514811    mov         edx,dword ptr [ebp-4]
 00514814    mov         byte ptr [edx+1A0],al;TCustomActionControl.FTransparent:Boolean
 0051481A    cmp         byte ptr [ebp-5],0
>0051481E    je          00514835
 00514820    mov         eax,[00514854];0x40 gvar_00514854
 00514825    mov         edx,dword ptr [ebp-4]
 00514828    not         eax
 0051482A    and         eax,dword ptr [edx+50];TCustomActionControl.FControlStyle:TControlStyle
 0051482D    mov         edx,dword ptr [ebp-4]
 00514830    mov         dword ptr [edx+50],eax;TCustomActionControl.FControlStyle:TControlStyle
>00514833    jmp         00514846
 00514835    mov         eax,[00514854];0x40 gvar_00514854
 0051483A    mov         edx,dword ptr [ebp-4]
 0051483D    or          eax,dword ptr [edx+50];TCustomActionControl.FControlStyle:TControlStyle
 00514840    mov         edx,dword ptr [ebp-4]
 00514843    mov         dword ptr [edx+50],eax;TCustomActionControl.FControlStyle:TControlStyle
 00514846    mov         eax,dword ptr [ebp-4]
 00514849    mov         edx,dword ptr [eax]
 0051484B    call        dword ptr [edx+7C];TCustomActionControl.sub_004CB6E8
 0051484E    pop         ecx
 0051484F    pop         ecx
 00514850    pop         ebp
 00514851    ret
end;*}

//00514858
{*procedure sub_00514858(?:?);
begin
 00514858    push        ebp
 00514859    mov         ebp,esp
 0051485B    add         esp,0FFFFFFF0
 0051485E    mov         dword ptr [ebp-8],edx
 00514861    mov         dword ptr [ebp-4],eax
 00514864    mov         ecx,dword ptr [ebp-8]
 00514867    xor         edx,edx
 00514869    xor         eax,eax
 0051486B    call        Point
 00514870    mov         eax,dword ptr [ebp-4]
 00514873    call        00515218
 00514878    test        al,al
>0051487A    je          00514977
 00514880    mov         eax,dword ptr [ebp-4]
 00514883    mov         eax,dword ptr [eax+16C];TCustomActionControl.FActionClient:TActionClientItem
 00514889    cmp         byte ptr [eax+61],0;TActionClientItem.ShowGlyph:Boolean
>0051488D    je          00514977
 00514893    mov         eax,dword ptr [ebp-4]
 00514896    mov         eax,dword ptr [eax+16C];TCustomActionControl.FActionClient:TActionClientItem
 0051489C    call        0050E760
 005148A1    cmp         byte ptr [eax+29],0
>005148A5    je          00514965
 005148AB    mov         eax,dword ptr [ebp-4]
 005148AE    mov         eax,dword ptr [eax+16C];TCustomActionControl.FActionClient:TActionClientItem
 005148B4    call        TActionClientItem.GetAction
 005148B9    test        eax,eax
>005148BB    je          0051491D
 005148BD    mov         eax,dword ptr [ebp-4]
 005148C0    mov         eax,dword ptr [eax+16C];TCustomActionControl.FActionClient:TActionClientItem
 005148C6    call        TActionClientItem.GetAction
 005148CB    cmp         dword ptr [eax+5C],0
>005148CF    je          00514977
 005148D5    mov         eax,dword ptr [ebp-4]
 005148D8    mov         eax,dword ptr [eax+16C];TCustomActionControl.FActionClient:TActionClientItem
 005148DE    call        TActionClientItem.GetAction
 005148E3    mov         eax,dword ptr [eax+5C]
 005148E6    cmp         dword ptr [eax+38],0
>005148EA    je          00514977
 005148F0    mov         eax,dword ptr [ebp-4]
 005148F3    mov         eax,dword ptr [eax+16C];TCustomActionControl.FActionClient:TActionClientItem
 005148F9    call        TActionClientItem.GetAction
 005148FE    mov         eax,dword ptr [eax+5C]
 00514901    mov         eax,dword ptr [eax+38]
 00514904    mov         dword ptr [ebp-0C],eax
 00514907    mov         ecx,dword ptr [ebp-8]
 0051490A    mov         eax,dword ptr [ebp-0C]
 0051490D    mov         edx,dword ptr [eax+30]
 00514910    mov         eax,dword ptr [ebp-0C]
 00514913    mov         eax,dword ptr [eax+34]
 00514916    call        Point
>0051491B    jmp         00514977
 0051491D    mov         eax,dword ptr [ebp-4]
 00514920    mov         eax,dword ptr [eax+16C];TCustomActionControl.FActionClient:TActionClientItem
 00514926    call        0050CCC4
 0051492B    call        0050BE18
 00514930    cmp         dword ptr [eax+38],0
>00514934    je          00514977
 00514936    mov         eax,dword ptr [ebp-4]
 00514939    mov         eax,dword ptr [eax+16C];TCustomActionControl.FActionClient:TActionClientItem
 0051493F    call        0050CCC4
 00514944    call        0050BE18
 00514949    mov         eax,dword ptr [eax+38]
 0051494C    mov         dword ptr [ebp-10],eax
 0051494F    mov         ecx,dword ptr [ebp-8]
 00514952    mov         eax,dword ptr [ebp-10]
 00514955    mov         edx,dword ptr [eax+30]
 00514958    mov         eax,dword ptr [ebp-10]
 0051495B    mov         eax,dword ptr [eax+34]
 0051495E    call        Point
>00514963    jmp         00514977
 00514965    mov         ecx,dword ptr [ebp-8]
 00514968    mov         edx,20
 0051496D    mov         eax,20
 00514972    call        Point
 00514977    mov         esp,ebp
 00514979    pop         ebp
 0051497A    ret
end;*}

//0051497C
{*procedure sub_0051497C(?:?);
begin
 0051497C    push        ebp
 0051497D    mov         ebp,esp
 0051497F    add         esp,0FFFFFFF4
 00514982    xor         ecx,ecx
 00514984    mov         dword ptr [ebp-0C],ecx
 00514987    mov         dword ptr [ebp-8],edx
 0051498A    mov         dword ptr [ebp-4],eax
 0051498D    xor         eax,eax
 0051498F    push        ebp
 00514990    push        514AA8
 00514995    push        dword ptr fs:[eax]
 00514998    mov         dword ptr fs:[eax],esp
 0051499B    mov         eax,dword ptr [ebp-4]
 0051499E    mov         eax,dword ptr [eax+16C];TCustomActionControl.FActionClient:TActionClientItem
 005149A4    cmp         eax,dword ptr [ebp-8]
>005149A7    je          00514A92
 005149AD    mov         eax,dword ptr [ebp-4]
 005149B0    cmp         dword ptr [eax+16C],0;TCustomActionControl.FActionClient:TActionClientItem
>005149B7    je          005149C9
 005149B9    xor         edx,edx
 005149BB    mov         eax,dword ptr [ebp-4]
 005149BE    mov         eax,dword ptr [eax+16C];TCustomActionControl.FActionClient:TActionClientItem
 005149C4    call        TActionBarItem.SetActionBar
 005149C9    mov         eax,dword ptr [ebp-8]
 005149CC    mov         edx,dword ptr [ebp-4]
 005149CF    mov         dword ptr [edx+16C],eax;TCustomActionControl.FActionClient:TActionClientItem
 005149D5    mov         eax,dword ptr [ebp-4]
 005149D8    mov         edx,dword ptr [eax]
 005149DA    call        dword ptr [edx+3C];TCustomActionControl.sub_005153C4
 005149DD    test        eax,eax
>005149DF    je          005149F2
 005149E1    mov         eax,[00514AB4];0x8000 gvar_00514AB4
 005149E6    mov         edx,dword ptr [ebp-4]
 005149E9    or          eax,dword ptr [edx+50];TCustomActionControl.FControlStyle:TControlStyle
 005149EC    mov         edx,dword ptr [ebp-4]
 005149EF    mov         dword ptr [edx+50],eax;TCustomActionControl.FControlStyle:TControlStyle
 005149F2    cmp         dword ptr [ebp-8],0
>005149F6    je          00514A92
 005149FC    mov         eax,dword ptr [ebp-4]
 005149FF    mov         eax,dword ptr [eax+16C];TCustomActionControl.FActionClient:TActionClientItem
 00514A05    mov         eax,dword ptr [eax+24];TActionClientItem.Color:TColor
 00514A08    sub         eax,1FFFFFFF
>00514A0D    je          00514A14
 00514A0F    dec         eax
>00514A10    je          00514A2A
>00514A12    jmp         00514A36
 00514A14    mov         eax,dword ptr [ebp-4]
 00514A17    mov         byte ptr [eax+1A0],1;TCustomActionControl.FTransparent:Boolean
 00514A1E    mov         dl,1
 00514A20    mov         eax,dword ptr [ebp-4]
 00514A23    call        TPanel.SetParentColor
>00514A28    jmp         00514A68
 00514A2A    mov         dl,1
 00514A2C    mov         eax,dword ptr [ebp-4]
 00514A2F    call        TPanel.SetParentColor
>00514A34    jmp         00514A68
 00514A36    mov         eax,dword ptr [ebp-4]
 00514A39    mov         eax,dword ptr [eax+16C];TCustomActionControl.FActionClient:TActionClientItem
 00514A3F    cmp         dword ptr [eax+24],20000000;TActionClientItem.Color:TColor
>00514A46    jne         00514A54
 00514A48    mov         dl,1
 00514A4A    mov         eax,dword ptr [ebp-4]
 00514A4D    call        TPanel.SetParentColor
>00514A52    jmp         00514A68
 00514A54    mov         eax,dword ptr [ebp-4]
 00514A57    mov         eax,dword ptr [eax+16C];TCustomActionControl.FActionClient:TActionClientItem
 00514A5D    mov         edx,dword ptr [eax+24];TActionClientItem.Color:TColor
 00514A60    mov         eax,dword ptr [ebp-4]
 00514A63    call        TPanel.SetColor
 00514A68    mov         eax,dword ptr [ebp-8]
 00514A6B    mov         dl,byte ptr [eax+30]
 00514A6E    mov         eax,dword ptr [ebp-4]
 00514A71    call        TControl.SetVisible
 00514A76    lea         edx,[ebp-0C]
 00514A79    mov         eax,dword ptr [ebp-4]
 00514A7C    mov         eax,dword ptr [eax+16C];TCustomActionControl.FActionClient:TActionClientItem
 00514A82    call        TActionClientItem.GetCaption
 00514A87    mov         edx,dword ptr [ebp-0C]
 00514A8A    mov         eax,dword ptr [ebp-4]
 00514A8D    call        TControl.SetText
 00514A92    xor         eax,eax
 00514A94    pop         edx
 00514A95    pop         ecx
 00514A96    pop         ecx
 00514A97    mov         dword ptr fs:[eax],edx
 00514A9A    push        514AAF
 00514A9F    lea         eax,[ebp-0C]
 00514AA2    call        @LStrClr
 00514AA7    ret
>00514AA8    jmp         @HandleFinally
>00514AAD    jmp         00514A9F
 00514AAF    mov         esp,ebp
 00514AB1    pop         ebp
 00514AB2    ret
end;*}

//00514AB8
{*procedure sub_00514AB8(?:?);
begin
 00514AB8    push        ebp
 00514AB9    mov         ebp,esp
 00514ABB    add         esp,0FFFFFFF8
 00514ABE    mov         byte ptr [ebp-5],dl
 00514AC1    mov         dword ptr [ebp-4],eax
 00514AC4    mov         al,byte ptr [ebp-5]
 00514AC7    mov         edx,dword ptr [ebp-4]
 00514ACA    cmp         al,byte ptr [edx+18A];TCustomActionControl.FSelected:Boolean
>00514AD0    je          00514AF4
 00514AD2    mov         al,byte ptr [ebp-5]
 00514AD5    mov         edx,dword ptr [ebp-4]
 00514AD8    mov         byte ptr [edx+18A],al;TCustomActionControl.FSelected:Boolean
 00514ADE    cmp         byte ptr [ebp-5],0
>00514AE2    je          00514AEC
 00514AE4    mov         eax,dword ptr [ebp-4]
 00514AE7    call        00514AF8
 00514AEC    mov         eax,dword ptr [ebp-4]
 00514AEF    mov         edx,dword ptr [eax]
 00514AF1    call        dword ptr [edx+7C];TCustomActionControl.sub_004CB6E8
 00514AF4    pop         ecx
 00514AF5    pop         ecx
 00514AF6    pop         ebp
 00514AF7    ret
end;*}

//00514AF8
procedure sub_00514AF8(?:TCustomActionControl);
begin
{*
 00514AF8    push        ebp
 00514AF9    mov         ebp,esp
 00514AFB    add         esp,0FFFFFFEC
 00514AFE    mov         dword ptr [ebp-4],eax
 00514B01    mov         eax,dword ptr [ebp-4]
 00514B04    cmp         dword ptr [eax+30],0;TCustomActionControl.FParent:TWinControl
>00514B08    je          00514B2F
 00514B0A    mov         dword ptr [ebp-14],0B402
 00514B11    xor         eax,eax
 00514B13    mov         dword ptr [ebp-10],eax
 00514B16    mov         eax,dword ptr [ebp-4]
 00514B19    mov         dword ptr [ebp-0C],eax
 00514B1C    xor         eax,eax
 00514B1E    mov         dword ptr [ebp-8],eax
 00514B21    lea         edx,[ebp-14]
 00514B24    mov         eax,dword ptr [ebp-4]
 00514B27    mov         eax,dword ptr [eax+30];TCustomActionControl.FParent:TWinControl
 00514B2A    call        004CF664
 00514B2F    mov         esp,ebp
 00514B31    pop         ebp
 00514B32    ret
*}
end;

//00514B34
{*procedure TCustomActionControl.sub_00514B34(?:?);
begin
 00514B34    push        ebp
 00514B35    mov         ebp,esp
 00514B37    add         esp,0FFFFFFF8
 00514B3A    mov         dword ptr [ebp-8],edx
 00514B3D    mov         dword ptr [ebp-4],eax
 00514B40    mov         eax,dword ptr [ebp-8]
 00514B43    mov         eax,dword ptr [eax+8]
 00514B46    cmp         eax,dword ptr [ebp-4]
 00514B49    sete        dl
 00514B4C    mov         eax,dword ptr [ebp-4]
 00514B4F    mov         ecx,dword ptr [eax]
 00514B51    call        dword ptr [ecx+0D8];TCustomActionControl.sub_00514AB8
 00514B57    mov         eax,dword ptr [ebp-4]
 00514B5A    cmp         byte ptr [eax+18A],0;TCustomActionControl.FSelected:Boolean
>00514B61    je          00514B90
 00514B63    mov         eax,dword ptr [ebp-4]
 00514B66    call        0051541C
 00514B6B    cmp         byte ptr [eax+224],0
>00514B72    je          00514B90
 00514B74    cmp         dword ptr ds:[541A9C],0;gvar_00541A9C
>00514B7B    je          00514B90
 00514B7D    mov         eax,dword ptr [ebp-4]
 00514B80    mov         edx,dword ptr [eax+16C];TCustomActionControl.FActionClient:TActionClientItem
 00514B86    mov         eax,[00541A9C];0x0 gvar_00541A9C
 00514B8B    mov         ecx,dword ptr [eax]
 00514B8D    call        dword ptr [ecx+20]
 00514B90    pop         ecx
 00514B91    pop         ecx
 00514B92    pop         ebp
 00514B93    ret
end;*}

//00514B94
{*procedure sub_00514B94(?:TCustomMenuItem; ?:?);
begin
 00514B94    push        ebp
 00514B95    mov         ebp,esp
 00514B97    add         esp,0FFFFFFEC
 00514B9A    push        esi
 00514B9B    push        edi
 00514B9C    mov         esi,edx
 00514B9E    lea         edi,[ebp-14]
 00514BA1    movs        dword ptr [edi],dword ptr [esi]
 00514BA2    movs        dword ptr [edi],dword ptr [esi]
 00514BA3    movs        dword ptr [edi],dword ptr [esi]
 00514BA4    movs        dword ptr [edi],dword ptr [esi]
 00514BA5    mov         dword ptr [ebp-4],eax
 00514BA8    mov         eax,dword ptr [ebp-14]
 00514BAB    mov         edx,dword ptr [ebp-4]
 00514BAE    cmp         eax,dword ptr [edx+17A];TCustomMenuItem.FMargins:TRect
>00514BB4    jne         00514BE0
 00514BB6    mov         eax,dword ptr [ebp-10]
 00514BB9    mov         edx,dword ptr [ebp-4]
 00514BBC    cmp         eax,dword ptr [edx+186]
>00514BC2    jne         00514BE0
 00514BC4    mov         eax,dword ptr [ebp-0C]
 00514BC7    mov         edx,dword ptr [ebp-4]
 00514BCA    cmp         eax,dword ptr [edx+182];TCustomMenuItem.FMargins.Right:Longint
>00514BD0    jne         00514BE0
 00514BD2    mov         eax,dword ptr [ebp-8]
 00514BD5    mov         edx,dword ptr [ebp-4]
 00514BD8    cmp         eax,dword ptr [edx+186]
>00514BDE    je          00514BFB
 00514BE0    mov         eax,dword ptr [ebp-4]
 00514BE3    lea         esi,[ebp-14]
 00514BE6    lea         edi,[eax+17A];TCustomMenuItem.FMargins:TRect
 00514BEC    movs        dword ptr [edi],dword ptr [esi]
 00514BED    movs        dword ptr [edi],dword ptr [esi]
 00514BEE    movs        dword ptr [edi],dword ptr [esi]
 00514BEF    movs        dword ptr [edi],dword ptr [esi]
 00514BF0    mov         eax,dword ptr [ebp-4]
 00514BF3    mov         edx,dword ptr [eax]
 00514BF5    call        dword ptr [edx+0DC];TCustomMenuItem.sub_00507658
 00514BFB    pop         edi
 00514BFC    pop         esi
 00514BFD    mov         esp,ebp
 00514BFF    pop         ebp
 00514C00    ret
end;*}

//00514C04
{*procedure sub_00514C04(?:TCustomActionControl; ?:?);
begin
 00514C04    push        ebp
 00514C05    mov         ebp,esp
 00514C07    add         esp,0FFFFFFF8
 00514C0A    mov         dword ptr [ebp-8],edx
 00514C0D    mov         dword ptr [ebp-4],eax
 00514C10    mov         eax,dword ptr [ebp-8]
 00514C13    mov         edx,dword ptr [ebp-4]
 00514C16    cmp         eax,dword ptr [edx+18C];TCustomActionControl.FSpacing:Integer
>00514C1C    je          00514C52
 00514C1E    mov         eax,dword ptr [ebp-8]
 00514C21    mov         edx,dword ptr [ebp-4]
 00514C24    mov         dword ptr [edx+18C],eax;TCustomActionControl.FSpacing:Integer
 00514C2A    mov         eax,dword ptr [ebp-4]
 00514C2D    call        0051541C
 00514C32    test        eax,eax
>00514C34    je          00514C52
 00514C36    mov         eax,dword ptr [ebp-4]
 00514C39    call        0051541C
 00514C3E    call        004CE4E8
 00514C43    test        al,al
>00514C45    je          00514C52
 00514C47    mov         eax,dword ptr [ebp-4]
 00514C4A    mov         edx,dword ptr [eax]
 00514C4C    call        dword ptr [edx+0DC];TCustomActionControl.sub_00515568
 00514C52    pop         ecx
 00514C53    pop         ecx
 00514C54    pop         ebp
 00514C55    ret
end;*}

//00514C58
{*procedure sub_00514C58(?:?);
begin
 00514C58    push        ebp
 00514C59    mov         ebp,esp
 00514C5B    add         esp,0FFFFFFE0
 00514C5E    push        esi
 00514C5F    mov         byte ptr [ebp-5],dl
 00514C62    mov         dword ptr [ebp-4],eax
 00514C65    mov         eax,dword ptr [ebp-4]
 00514C68    mov         al,byte ptr [eax+171];TCustomActionControl.FGlyphLayout:TButtonLayout
 00514C6E    cmp         al,byte ptr [ebp-5]
>00514C71    je          00514CC2
 00514C73    mov         eax,dword ptr [ebp-4]
 00514C76    mov         eax,dword ptr [eax+4C];TCustomActionControl.Height:Integer
 00514C79    push        eax
 00514C7A    lea         eax,[ebp-1D]
 00514C7D    push        eax
 00514C7E    mov         eax,dword ptr [ebp-4]
 00514C81    mov         ecx,dword ptr [eax+48];TCustomActionControl.Width:Integer
 00514C84    xor         edx,edx
 00514C86    xor         eax,eax
 00514C88    call        Rect
 00514C8D    xor         eax,eax
 00514C8F    mov         dword ptr [ebp-0D],eax
 00514C92    xor         eax,eax
 00514C94    mov         dword ptr [ebp-9],eax
 00514C97    mov         al,byte ptr [ebp-5]
 00514C9A    mov         edx,dword ptr [ebp-4]
 00514C9D    mov         byte ptr [edx+171],al;TCustomActionControl.FGlyphLayout:TButtonLayout
 00514CA3    mov         eax,dword ptr [ebp-4]
 00514CA6    mov         edx,dword ptr [eax]
 00514CA8    call        dword ptr [edx+0DC];TCustomActionControl.sub_00515568
 00514CAE    mov         eax,dword ptr [ebp-4]
 00514CB1    mov         si,0FFD0
 00514CB5    call        @CallDynaInst;TControl.sub_004C9ED8
 00514CBA    mov         eax,dword ptr [ebp-4]
 00514CBD    mov         edx,dword ptr [eax]
 00514CBF    call        dword ptr [edx+7C];TCustomActionControl.sub_004CB6E8
 00514CC2    pop         esi
 00514CC3    mov         esp,ebp
 00514CC5    pop         ebp
 00514CC6    ret
end;*}

//00514CC8
procedure sub_00514CC8;
begin
{*
 00514CC8    push        ebp
 00514CC9    mov         ebp,esp
 00514CCB    push        ecx
 00514CCC    mov         dword ptr [ebp-4],eax
 00514CCF    mov         eax,dword ptr [ebp-4]
 00514CD2    call        00514D94
 00514CD7    mov         eax,dword ptr [ebp-4]
 00514CDA    cmp         dword ptr [eax+30],0;TCustomActionControl.FParent:TWinControl
>00514CDE    je          00514CFC
 00514CE0    mov         eax,dword ptr [ebp-4]
 00514CE3    push        eax
 00514CE4    push        0
 00514CE6    push        0B404
 00514CEB    mov         eax,dword ptr [ebp-4]
 00514CEE    mov         eax,dword ptr [eax+30];TCustomActionControl.FParent:TWinControl
 00514CF1    call        TWinControl.GetHandle
 00514CF6    push        eax
 00514CF7    call        user32.PostMessageA
 00514CFC    pop         ecx
 00514CFD    pop         ebp
 00514CFE    ret
*}
end;

//00514D00
{*procedure TCustomActionControl.CMDesignHitTest(?:?);
begin
 00514D00    push        ebp
 00514D01    mov         ebp,esp
 00514D03    add         esp,0FFFFFFF8
 00514D06    mov         dword ptr [ebp-8],edx
 00514D09    mov         dword ptr [ebp-4],eax
 00514D0C    mov         eax,dword ptr [ebp-8]
 00514D0F    mov         dword ptr [eax+0C],1
 00514D16    pop         ecx
 00514D17    pop         ecx
 00514D18    pop         ebp
 00514D19    ret
end;*}

//00514D1C
{*procedure TCustomActionControl.CMHintShow(?:?);
begin
 00514D1C    push        ebp
 00514D1D    mov         ebp,esp
 00514D1F    add         esp,0FFFFFFF8
 00514D22    mov         dword ptr [ebp-8],edx
 00514D25    mov         dword ptr [ebp-4],eax
 00514D28    mov         eax,dword ptr [ebp-4]
 00514D2B    cmp         dword ptr [eax+16C],0;TCustomActionControl.FActionClient:TActionClientItem
>00514D32    je          00514D6B
 00514D34    mov         eax,dword ptr [ebp-4]
 00514D37    mov         eax,dword ptr [eax+16C];TCustomActionControl.FActionClient:TActionClientItem
 00514D3D    cmp         dword ptr [eax+38],0;TActionClientItem.FActionLink:TActionClientLink
>00514D41    je          00514D6B
 00514D43    mov         eax,dword ptr [ebp-8]
 00514D46    mov         eax,dword ptr [eax+8]
 00514D49    lea         edx,[eax+38]
 00514D4C    mov         eax,dword ptr [ebp-4]
 00514D4F    mov         eax,dword ptr [eax+16C];TCustomActionControl.FActionClient:TActionClientItem
 00514D55    mov         eax,dword ptr [eax+38];TActionClientItem.FActionLink:TActionClientLink
 00514D58    mov         ecx,dword ptr [eax]
 00514D5A    call        dword ptr [ecx+78];TActionClientLink.sub_0050DD40
 00514D5D    test        al,al
>00514D5F    jne         00514D6B
 00514D61    mov         eax,dword ptr [ebp-8]
 00514D64    mov         dword ptr [eax+0C],1
 00514D6B    pop         ecx
 00514D6C    pop         ecx
 00514D6D    pop         ebp
 00514D6E    ret
end;*}

//00514D70
{*procedure sub_00514D70(?:?);
begin
 00514D70    push        ebp
 00514D71    mov         ebp,esp
 00514D73    add         esp,0FFFFFFF8
 00514D76    mov         dword ptr [ebp-8],edx
 00514D79    mov         dword ptr [ebp-4],eax
 00514D7C    mov         edx,dword ptr [ebp-8]
 00514D7F    mov         eax,dword ptr [ebp-4]
 00514D82    mov         eax,dword ptr [eax+160];TCustomActionControl...............................................
 00514D88    call        00487FD8
 00514D8D    pop         ecx
 00514D8E    pop         ecx
 00514D8F    pop         ebp
 00514D90    ret
end;*}

//00514D94
procedure sub_00514D94(?:TCustomActionControl);
begin
{*
 00514D94    push        ebp
 00514D95    mov         ebp,esp
 00514D97    push        ecx
 00514D98    mov         dword ptr [ebp-4],eax
 00514D9B    mov         eax,dword ptr [ebp-4]
 00514D9E    test        byte ptr [eax+1C],10;TCustomActionControl.FComponentState:TComponentState
>00514DA2    jne         00514E08
 00514DA4    mov         eax,dword ptr [ebp-4]
 00514DA7    call        0051541C
 00514DAC    test        eax,eax
>00514DAE    je          00514DC4
 00514DB0    mov         eax,dword ptr [ebp-4]
 00514DB3    call        0051541C
 00514DB8    mov         edx,dword ptr [eax]
 00514DBA    call        dword ptr [edx+104]
 00514DC0    test        al,al
>00514DC2    jne         00514E08
 00514DC4    mov         eax,dword ptr [ebp-4]
 00514DC7    cmp         dword ptr [eax+16C],0;TCustomActionControl.FActionClient:TActionClientItem
>00514DCE    je          00514E08
 00514DD0    mov         eax,dword ptr [ebp-4]
 00514DD3    mov         eax,dword ptr [eax+16C];TCustomActionControl.FActionClient:TActionClientItem
 00514DD9    call        0050CB98
 00514DDE    test        al,al
>00514DE0    jne         00514E08
 00514DE2    mov         eax,dword ptr [ebp-4]
 00514DE5    mov         edx,dword ptr [eax]
 00514DE7    call        dword ptr [edx+50];TImage.GetEnabled
 00514DEA    test        al,al
>00514DEC    je          00514E08
 00514DEE    mov         eax,dword ptr [ebp-4]
 00514DF1    cmp         dword ptr [eax+16C],0;TCustomActionControl.FActionClient:TActionClientItem
>00514DF8    je          00514E08
 00514DFA    mov         eax,dword ptr [ebp-4]
 00514DFD    mov         eax,dword ptr [eax+16C];TCustomActionControl.FActionClient:TActionClientItem
 00514E03    call        0050EA88
 00514E08    pop         ecx
 00514E09    pop         ebp
 00514E0A    ret
*}
end;

//00514E0C
{*procedure TCustomActionControl.sub_004CBB18(?:?; ?:?; ?:?);
begin
 00514E0C    push        ebp
 00514E0D    mov         ebp,esp
 00514E0F    add         esp,0FFFFFFF4
 00514E12    push        ebx
 00514E13    mov         dword ptr [ebp-0C],ecx
 00514E16    mov         dword ptr [ebp-8],edx
 00514E19    mov         dword ptr [ebp-4],eax
 00514E1C    mov         eax,dword ptr [ebp+8]
 00514E1F    push        eax
 00514E20    mov         ecx,dword ptr [ebp-0C]
 00514E23    mov         edx,dword ptr [ebp-8]
 00514E26    mov         eax,dword ptr [ebp-4]
 00514E29    call        TControl.sub_004CBB18
 00514E2E    mov         eax,dword ptr [ebp+8]
 00514E31    push        eax
 00514E32    mov         ecx,dword ptr [ebp-0C]
 00514E35    mov         edx,dword ptr [ebp-8]
 00514E38    mov         eax,dword ptr [ebp-4]
 00514E3B    mov         ebx,dword ptr [eax]
 00514E3D    call        dword ptr [ebx+94];TCustomActionControl.sub_005156D8
 00514E43    pop         ebx
 00514E44    mov         esp,ebp
 00514E46    pop         ebp
 00514E47    ret         4
end;*}

//00514E4C
{*procedure TCustomActionControl.sub_004CBAC0(?:?; ?:?; ?:?; ?:?; ?:?);
begin
 00514E4C    push        ebp
 00514E4D    mov         ebp,esp
 00514E4F    add         esp,0FFFFFFEC
 00514E52    mov         dword ptr [ebp-0C],ecx
 00514E55    mov         dword ptr [ebp-8],edx
 00514E58    mov         dword ptr [ebp-4],eax
 00514E5B    mov         eax,dword ptr [ebp+10]
 00514E5E    push        eax
 00514E5F    mov         al,byte ptr [ebp+0C]
 00514E62    push        eax
 00514E63    mov         eax,dword ptr [ebp+8]
 00514E66    push        eax
 00514E67    mov         ecx,dword ptr [ebp-0C]
 00514E6A    mov         edx,dword ptr [ebp-8]
 00514E6D    mov         eax,dword ptr [ebp-4]
 00514E70    call        TControl.sub_004CBAC0
 00514E75    mov         eax,dword ptr [ebp-4]
 00514E78    cmp         dword ptr [eax+16C],0;TCustomActionControl.FActionClient:TActionClientItem
>00514E7F    je          00514EC8
 00514E81    mov         eax,dword ptr [ebp-4]
 00514E84    call        0051541C
 00514E89    cmp         byte ptr [eax+224],0
>00514E90    je          00514EC8
 00514E92    mov         eax,dword ptr [ebp-8]
 00514E95    mov         edx,dword ptr ds:[509A10];TActionDragObject
 00514E9B    call        @IsClass
 00514EA0    test        al,al
>00514EA2    jne         00514ECC
 00514EA4    mov         eax,dword ptr [ebp-8]
 00514EA7    mov         edx,dword ptr ds:[509B2C];TActionItemDragObject
 00514EAD    call        @IsClass
 00514EB2    test        al,al
>00514EB4    jne         00514ECC
 00514EB6    mov         eax,dword ptr [ebp-8]
 00514EB9    mov         edx,dword ptr ds:[509A94];TCategoryDragObject
 00514EBF    call        @IsClass
 00514EC4    test        al,al
>00514EC6    jne         00514ECC
 00514EC8    xor         eax,eax
>00514ECA    jmp         00514ECE
 00514ECC    mov         al,1
 00514ECE    mov         edx,dword ptr [ebp+8]
 00514ED1    mov         byte ptr [edx],al
 00514ED3    mov         eax,dword ptr [ebp+8]
 00514ED6    cmp         byte ptr [eax],0
>00514ED9    je          00514F43
 00514EDB    mov         eax,dword ptr [ebp-8]
 00514EDE    mov         edx,dword ptr ds:[509B2C];TActionItemDragObject
 00514EE4    call        @IsClass
 00514EE9    test        al,al
>00514EEB    je          00514F43
 00514EED    mov         eax,dword ptr [ebp-8]
 00514EF0    mov         edx,dword ptr ds:[509B2C];TActionItemDragObject
 00514EF6    call        @AsClass
 00514EFB    mov         dword ptr [ebp-14],eax
 00514EFE    mov         eax,dword ptr [ebp-14]
 00514F01    cmp         dword ptr [eax+40],0;TActionItemDragObject............................FClientItem:TActio...
 00514F05    setne       al
 00514F08    xor         al,1
 00514F0A    mov         edx,dword ptr [ebp+8]
 00514F0D    mov         byte ptr [edx],al
 00514F0F    mov         eax,dword ptr [ebp+8]
 00514F12    cmp         byte ptr [eax],0
>00514F15    jne         00514F43
 00514F17    mov         eax,dword ptr [ebp-14]
 00514F1A    mov         eax,dword ptr [eax+40];TActionItemDragObject.............................FClientItem:TAc...
 00514F1D    mov         edx,dword ptr [ebp-4]
 00514F20    cmp         eax,dword ptr [edx+16C];TCustomActionControl.FActionClient:TActionClientItem
>00514F26    je          00514F43
 00514F28    mov         eax,dword ptr [ebp-14]
 00514F2B    mov         edx,dword ptr [eax+40];TActionItemDragObject..............................FClientItem:TA...
 00514F2E    mov         eax,dword ptr [ebp-4]
 00514F31    mov         eax,dword ptr [eax+16C];TCustomActionControl.FActionClient:TActionClientItem
 00514F37    call        0050CDEC
 00514F3C    xor         al,1
 00514F3E    mov         edx,dword ptr [ebp+8]
 00514F41    mov         byte ptr [edx],al
 00514F43    mov         eax,dword ptr [ebp+8]
 00514F46    cmp         byte ptr [eax],0
>00514F49    je          00515060
 00514F4F    mov         al,byte ptr [ebp+0C]
 00514F52    test        al,al
>00514F54    je          00514F5E
 00514F56    sub         al,2
>00514F58    jne         00515060
 00514F5E    xor         eax,eax
 00514F60    mov         dword ptr [ebp-10],eax
 00514F63    mov         eax,dword ptr [ebp-4]
 00514F66    call        0051541C
 00514F6B    mov         al,byte ptr [eax+227]
 00514F71    sub         al,1
>00514F73    jb          00514F88
>00514F75    je          00514FBC
 00514F77    dec         al
>00514F79    je          00514FE9
 00514F7B    dec         al
>00514F7D    je          00515016
>00514F83    jmp         00515041
 00514F88    mov         eax,dword ptr [ebp-4]
 00514F8B    mov         eax,dword ptr [eax+48];TCustomActionControl.Width:Integer
 00514F8E    sar         eax,1
>00514F90    jns         00514F95
 00514F92    adc         eax,0
 00514F95    cmp         eax,dword ptr [ebp-0C]
>00514F98    jge         00515041
 00514F9E    mov         eax,dword ptr [ebp-4]
 00514FA1    call        0051541C
 00514FA6    mov         edx,dword ptr [ebp-4]
 00514FA9    mov         edx,dword ptr [edx+16C];TCustomActionControl.FActionClient:TActionClientItem
 00514FAF    call        005113A0
 00514FB4    mov         dword ptr [ebp-10],eax
>00514FB7    jmp         00515041
 00514FBC    mov         eax,dword ptr [ebp-4]
 00514FBF    mov         eax,dword ptr [eax+48];TCustomActionControl.Width:Integer
 00514FC2    sar         eax,1
>00514FC4    jns         00514FC9
 00514FC6    adc         eax,0
 00514FC9    cmp         eax,dword ptr [ebp-0C]
>00514FCC    jle         00515041
 00514FCE    mov         eax,dword ptr [ebp-4]
 00514FD1    call        0051541C
 00514FD6    mov         edx,dword ptr [ebp-4]
 00514FD9    mov         edx,dword ptr [edx+16C];TCustomActionControl.FActionClient:TActionClientItem
 00514FDF    call        0051204C
 00514FE4    mov         dword ptr [ebp-10],eax
>00514FE7    jmp         00515041
 00514FE9    mov         eax,dword ptr [ebp-4]
 00514FEC    mov         eax,dword ptr [eax+4C];TCustomActionControl.Height:Integer
 00514FEF    sar         eax,1
>00514FF1    jns         00514FF6
 00514FF3    adc         eax,0
 00514FF6    cmp         eax,dword ptr [ebp+10]
>00514FF9    jge         00515041
 00514FFB    mov         eax,dword ptr [ebp-4]
 00514FFE    call        0051541C
 00515003    mov         edx,dword ptr [ebp-4]
 00515006    mov         edx,dword ptr [edx+16C];TCustomActionControl.FActionClient:TActionClientItem
 0051500C    call        005113A0
 00515011    mov         dword ptr [ebp-10],eax
>00515014    jmp         00515041
 00515016    mov         eax,dword ptr [ebp-4]
 00515019    mov         eax,dword ptr [eax+4C];TCustomActionControl.Height:Integer
 0051501C    sar         eax,1
>0051501E    jns         00515023
 00515020    adc         eax,0
 00515023    cmp         eax,dword ptr [ebp+10]
>00515026    jle         00515041
 00515028    mov         eax,dword ptr [ebp-4]
 0051502B    call        0051541C
 00515030    mov         edx,dword ptr [ebp-4]
 00515033    mov         edx,dword ptr [edx+16C];TCustomActionControl.FActionClient:TActionClientItem
 00515039    call        0051204C
 0051503E    mov         dword ptr [ebp-10],eax
 00515041    cmp         dword ptr [ebp-10],0
>00515045    jne         00515053
 00515047    mov         eax,dword ptr [ebp-4]
 0051504A    mov         eax,dword ptr [eax+16C];TCustomActionControl.FActionClient:TActionClientItem
 00515050    mov         dword ptr [ebp-10],eax
 00515053    mov         eax,dword ptr [ebp-10]
 00515056    mov         eax,dword ptr [eax+40];TActionClientItem.FControl:TCustomActionControl
 00515059    mov         dl,1
 0051505B    call        00515A7C
 00515060    mov         esp,ebp
 00515062    pop         ebp
 00515063    ret         0C
end;*}

//00515068
procedure sub_00515068(?:TCustomActionControl);
begin
{*
 00515068    push        ebp
 00515069    mov         ebp,esp
 0051506B    push        ecx
 0051506C    mov         dword ptr [ebp-4],eax
 0051506F    mov         eax,dword ptr [ebp-4]
 00515072    mov         eax,dword ptr [eax+160];TCustomActionControl...............................................
 00515078    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 0051507B    xor         edx,edx
 0051507D    call        TBrush.SetStyle
 00515082    mov         eax,dword ptr [ebp-4]
 00515085    call        0051541C
 0051508A    call        TActionToolBar.GetColorMap
 0051508F    mov         edx,dword ptr [eax+70]
 00515092    mov         eax,dword ptr [ebp-4]
 00515095    mov         eax,dword ptr [eax+160];TCustomActionControl...............................................
 0051509B    mov         eax,dword ptr [eax+10];TCanvas.Pen:TPen
 0051509E    call        TPen.SetColor
 005150A3    mov         eax,dword ptr [ebp-4]
 005150A6    call        0051541C
 005150AB    mov         al,byte ptr [eax+227]
 005150B1    sub         al,2
>005150B3    jb          005150C2
 005150B5    sub         al,2
>005150B7    jb          00515143
>005150BD    jmp         005151BA
 005150C2    push        5A0049;gvar_005A0049
 005150C7    push        2
 005150C9    push        6
 005150CB    push        0
 005150CD    push        0
 005150CF    mov         eax,dword ptr [ebp-4]
 005150D2    mov         eax,dword ptr [eax+160];TCustomActionControl...............................................
 005150D8    call        TCanvas.GetHandle
 005150DD    push        eax
 005150DE    call        gdi32.PatBlt
 005150E3    push        5A0049;gvar_005A0049
 005150E8    mov         eax,dword ptr [ebp-4]
 005150EB    call        TControl.GetClientHeight
 005150F0    sub         eax,4
 005150F3    push        eax
 005150F4    push        2
 005150F6    push        2
 005150F8    push        2
 005150FA    mov         eax,dword ptr [ebp-4]
 005150FD    mov         eax,dword ptr [eax+160];TCustomActionControl...............................................
 00515103    call        TCanvas.GetHandle
 00515108    push        eax
 00515109    call        gdi32.PatBlt
 0051510E    push        5A0049;gvar_005A0049
 00515113    mov         eax,dword ptr [ebp-4]
 00515116    call        TControl.GetClientHeight
 0051511B    push        eax
 0051511C    push        6
 0051511E    mov         eax,dword ptr [ebp-4]
 00515121    call        TControl.GetClientHeight
 00515126    sub         eax,2
 00515129    push        eax
 0051512A    push        0
 0051512C    mov         eax,dword ptr [ebp-4]
 0051512F    mov         eax,dword ptr [eax+160];TCustomActionControl...............................................
 00515135    call        TCanvas.GetHandle
 0051513A    push        eax
 0051513B    call        gdi32.PatBlt
 00515140    pop         ecx
 00515141    pop         ebp
 00515142    ret
 00515143    push        5A0049;gvar_005A0049
 00515148    push        6
 0051514A    push        2
 0051514C    push        0
 0051514E    push        0
 00515150    mov         eax,dword ptr [ebp-4]
 00515153    mov         eax,dword ptr [eax+160];TCustomActionControl...............................................
 00515159    call        TCanvas.GetHandle
 0051515E    push        eax
 0051515F    call        gdi32.PatBlt
 00515164    push        5A0049;gvar_005A0049
 00515169    push        2
 0051516B    mov         eax,dword ptr [ebp-4]
 0051516E    call        TControl.GetClientWidth
 00515173    sub         eax,6
 00515176    push        eax
 00515177    push        2
 00515179    push        2
 0051517B    mov         eax,dword ptr [ebp-4]
 0051517E    mov         eax,dword ptr [eax+160];TCustomActionControl...............................................
 00515184    call        TCanvas.GetHandle
 00515189    push        eax
 0051518A    call        gdi32.PatBlt
 0051518F    push        5A0049;gvar_005A0049
 00515194    push        6
 00515196    push        2
 00515198    push        0
 0051519A    mov         eax,dword ptr [ebp-4]
 0051519D    call        TControl.GetClientWidth
 005151A2    sub         eax,4
 005151A5    push        eax
 005151A6    mov         eax,dword ptr [ebp-4]
 005151A9    mov         eax,dword ptr [eax+160];TCustomActionControl...............................................
 005151AF    call        TCanvas.GetHandle
 005151B4    push        eax
 005151B5    call        gdi32.PatBlt
 005151BA    pop         ecx
 005151BB    pop         ebp
 005151BC    ret
*}
end;

//005151C0
{*procedure TCustomActionControl.sub_004CBB5C(?:?);
begin
 005151C0    push        ebp
 005151C1    mov         ebp,esp
 005151C3    add         esp,0FFFFFFF8
 005151C6    mov         dword ptr [ebp-8],edx
 005151C9    mov         dword ptr [ebp-4],eax
 005151CC    mov         dl,1
 005151CE    mov         eax,[00509B2C];TActionItemDragObject
 005151D3    call        TObject.Create;TActionItemDragObject.Create
 005151D8    mov         edx,dword ptr [ebp-8]
 005151DB    mov         dword ptr [edx],eax
 005151DD    mov         eax,dword ptr [ebp-8]
 005151E0    mov         eax,dword ptr [eax]
 005151E2    mov         edx,dword ptr [ebp-4]
 005151E5    mov         edx,dword ptr [edx+16C];TCustomActionControl.FActionClient:TActionClientItem
 005151EB    mov         dword ptr [eax+40],edx
 005151EE    mov         eax,dword ptr [ebp-4]
 005151F1    mov         eax,dword ptr [eax+16C];TCustomActionControl.FActionClient:TActionClientItem
 005151F7    call        0050E760
 005151FC    call        0050BE18
 00515201    mov         edx,dword ptr [ebp-8]
 00515204    mov         edx,dword ptr [edx]
 00515206    mov         dword ptr [edx+38],eax
 00515209    mov         edx,dword ptr [ebp-8]
 0051520C    mov         eax,dword ptr [ebp-4]
 0051520F    call        TControl.sub_004CBB5C
 00515214    pop         ecx
 00515215    pop         ecx
 00515216    pop         ebp
 00515217    ret
end;*}

//00515218
{*function sub_00515218(?:TCustomActionControl):?;
begin
 00515218    push        ebp
 00515219    mov         ebp,esp
 0051521B    add         esp,0FFFFFFF8
 0051521E    mov         dword ptr [ebp-4],eax
 00515221    mov         byte ptr [ebp-5],0
 00515225    mov         eax,dword ptr [ebp-4]
 00515228    cmp         dword ptr [eax+16C],0;TCustomActionControl.FActionClient:TActionClientItem
>0051522F    je          0051525B
 00515231    mov         eax,dword ptr [ebp-4]
 00515234    mov         eax,dword ptr [eax+16C];TCustomActionControl.FActionClient:TActionClientItem
 0051523A    call        0050E94C
 0051523F    test        al,al
>00515241    je          00515252
 00515243    mov         eax,dword ptr [ebp-4]
 00515246    mov         eax,dword ptr [eax+16C];TCustomActionControl.FActionClient:TActionClientItem
 0051524C    cmp         byte ptr [eax+61],0;TActionClientItem.ShowGlyph:Boolean
>00515250    jne         00515256
 00515252    xor         eax,eax
>00515254    jmp         00515258
 00515256    mov         al,1
 00515258    mov         byte ptr [ebp-5],al
 0051525B    mov         al,byte ptr [ebp-5]
 0051525E    pop         ecx
 0051525F    pop         ecx
 00515260    pop         ebp
 00515261    ret
end;*}

//00515264
{*procedure TCustomActionControl.WMSetText(?:?);
begin
 00515264    push        ebp
 00515265    mov         ebp,esp
 00515267    add         esp,0FFFFFFF8
 0051526A    push        esi
 0051526B    mov         dword ptr [ebp-8],edx
 0051526E    mov         dword ptr [ebp-4],eax
 00515271    mov         edx,dword ptr [ebp-8]
 00515274    mov         eax,dword ptr [ebp-4]
 00515277    mov         ecx,dword ptr [eax]
 00515279    call        dword ptr [ecx-10];TControl.DefaultHandler
 0051527C    mov         eax,dword ptr [ebp-4]
 0051527F    cmp         dword ptr [eax+168],0;TCustomActionControl.FActionBar:TCustomActionBar
>00515286    je          0051529A
 00515288    mov         eax,dword ptr [ebp-4]
 0051528B    mov         eax,dword ptr [eax+168];TCustomActionControl.FActionBar:TCustomActionBar
 00515291    mov         si,0FFCF
 00515295    call        @CallDynaInst;TControl.sub_004C9EFC
 0051529A    pop         esi
 0051529B    pop         ecx
 0051529C    pop         ecx
 0051529D    pop         ebp
 0051529E    ret
end;*}

//005152A0
{*function sub_005152A0:?;
begin
 005152A0    push        ebp
 005152A1    mov         ebp,esp
 005152A3    add         esp,0FFFFFFF8
 005152A6    mov         dword ptr [ebp-4],eax
 005152A9    mov         byte ptr [ebp-5],0
 005152AD    mov         eax,dword ptr [ebp-4]
 005152B0    cmp         dword ptr [eax+16C],0;TCustomActionControl.FActionClient:TActionClientItem
>005152B7    je          005152C8
 005152B9    mov         eax,dword ptr [ebp-4]
 005152BC    mov         eax,dword ptr [eax+16C];TCustomActionControl.FActionClient:TActionClientItem
 005152C2    mov         al,byte ptr [eax+50];TActionClientItem.FSeparator:Boolean
 005152C5    mov         byte ptr [ebp-5],al
 005152C8    mov         al,byte ptr [ebp-5]
 005152CB    pop         ecx
 005152CC    pop         ecx
 005152CD    pop         ebp
 005152CE    ret
end;*}

//005152D0
{*function sub_005152D0:?;
begin
 005152D0    push        ebp
 005152D1    mov         ebp,esp
 005152D3    add         esp,0FFFFFFF8
 005152D6    mov         dword ptr [ebp-4],eax
 005152D9    mov         byte ptr [ebp-5],1
 005152DD    mov         eax,dword ptr [ebp-4]
 005152E0    cmp         dword ptr [eax+16C],0;TCustomActionControl.FActionClient:TActionClientItem
>005152E7    je          00515321
 005152E9    mov         eax,dword ptr [ebp-4]
 005152EC    mov         eax,dword ptr [eax+16C];TCustomActionControl.FActionClient:TActionClientItem
 005152F2    call        0050E760
 005152F7    mov         al,byte ptr [eax+28]
 005152FA    sub         al,1
>005152FC    jb          00515306
>005152FE    je          0051530C
 00515300    dec         al
>00515302    je          0051531D
>00515304    jmp         00515321
 00515306    mov         byte ptr [ebp-5],0
>0051530A    jmp         00515321
 0051530C    mov         eax,dword ptr [ebp-4]
 0051530F    mov         eax,dword ptr [eax+16C];TCustomActionControl.FActionClient:TActionClientItem
 00515315    mov         al,byte ptr [eax+51];TActionClientItem.ShowCaption:Boolean
 00515318    mov         byte ptr [ebp-5],al
>0051531B    jmp         00515321
 0051531D    mov         byte ptr [ebp-5],1
 00515321    mov         al,byte ptr [ebp-5]
 00515324    pop         ecx
 00515325    pop         ecx
 00515326    pop         ebp
 00515327    ret
end;*}

//00515328
{*function sub_00515328:?;
begin
 00515328    push        ebp
 00515329    mov         ebp,esp
 0051532B    add         esp,0FFFFFFF8
 0051532E    mov         dword ptr [ebp-4],eax
 00515331    mov         byte ptr [ebp-5],0
 00515335    mov         eax,dword ptr [ebp-4]
 00515338    cmp         dword ptr [eax+16C],0;TCustomActionControl.FActionClient:TActionClientItem
>0051533F    je          00515369
 00515341    mov         eax,dword ptr [ebp-4]
 00515344    mov         eax,dword ptr [eax+16C];TCustomActionControl.FActionClient:TActionClientItem
 0051534A    cmp         byte ptr [eax+52],0;TActionClientItem.ShowShortCut:Boolean
>0051534E    je          00515360
 00515350    mov         eax,dword ptr [ebp-4]
 00515353    mov         eax,dword ptr [eax+16C];TCustomActionControl.FActionClient:TActionClientItem
 00515359    cmp         word ptr [eax+48],0;TActionClientItem.ShortCut:TShortCut
>0051535E    jne         00515364
 00515360    xor         eax,eax
>00515362    jmp         00515366
 00515364    mov         al,1
 00515366    mov         byte ptr [ebp-5],al
 00515369    mov         al,byte ptr [ebp-5]
 0051536C    pop         ecx
 0051536D    pop         ecx
 0051536E    pop         ebp
 0051536F    ret
end;*}

//00515370
{*function sub_00515370:?;
begin
 00515370    push        ebp
 00515371    mov         ebp,esp
 00515373    add         esp,0FFFFFFF8
 00515376    mov         dword ptr [ebp-4],eax
 00515379    mov         byte ptr [ebp-5],0
 0051537D    mov         eax,dword ptr [ebp-4]
 00515380    cmp         dword ptr [eax+16C],0;TCustomActionControl.FActionClient:TActionClientItem
>00515387    je          005153BA
 00515389    mov         eax,dword ptr [ebp-4]
 0051538C    mov         eax,dword ptr [eax+16C];TCustomActionControl.FActionClient:TActionClientItem
 00515392    call        TActionClientItem.GetAction
 00515397    mov         edx,dword ptr ds:[4DA408];TCustomAction
 0051539D    call        @IsClass
 005153A2    test        al,al
>005153A4    je          005153BA
 005153A6    mov         eax,dword ptr [ebp-4]
 005153A9    mov         eax,dword ptr [eax+16C];TCustomActionControl.FActionClient:TActionClientItem
 005153AF    call        TActionClientItem.GetAction
 005153B4    mov         al,byte ptr [eax+69]
 005153B7    mov         byte ptr [ebp-5],al
 005153BA    mov         al,byte ptr [ebp-5]
 005153BD    pop         ecx
 005153BE    pop         ecx
 005153BF    pop         ebp
 005153C0    ret
end;*}

//005153C4
{*function sub_005153C4:?;
begin
 005153C4    push        ebp
 005153C5    mov         ebp,esp
 005153C7    add         esp,0FFFFFFF8
 005153CA    mov         dword ptr [ebp-4],eax
 005153CD    mov         eax,dword ptr [ebp-4]
 005153D0    cmp         dword ptr [eax+16C],0;TCustomActionControl.FActionClient:TActionClientItem
>005153D7    je          005153EC
 005153D9    mov         eax,dword ptr [ebp-4]
 005153DC    mov         eax,dword ptr [eax+16C];TCustomActionControl.FActionClient:TActionClientItem
 005153E2    call        TActionClientItem.GetAction
 005153E7    mov         dword ptr [ebp-8],eax
>005153EA    jmp         005153F1
 005153EC    xor         eax,eax
 005153EE    mov         dword ptr [ebp-8],eax
 005153F1    mov         eax,dword ptr [ebp-8]
 005153F4    pop         ecx
 005153F5    pop         ecx
 005153F6    pop         ebp
 005153F7    ret
end;*}

//005153F8
procedure sub_005153F8;
begin
{*
 005153F8    push        ebp
 005153F9    mov         ebp,esp
 005153FB    push        ecx
 005153FC    mov         dword ptr [ebp-4],eax
 005153FF    mov         eax,dword ptr [ebp-4]
 00515402    cmp         dword ptr [eax+16C],0;TCustomActionControl.FActionClient:TActionClientItem
>00515409    je          00515419
 0051540B    mov         eax,dword ptr [ebp-4]
 0051540E    mov         eax,dword ptr [eax+16C];TCustomActionControl.FActionClient:TActionClientItem
 00515414    mov         edx,dword ptr [eax]
 00515416    call        dword ptr [edx+34];TActionClientItem.sub_0050E9B4
 00515419    pop         ecx
 0051541A    pop         ebp
 0051541B    ret
*}
end;

//0051541C
{*function sub_0051541C(?:TCustomActionControl):?;
begin
 0051541C    push        ebp
 0051541D    mov         ebp,esp
 0051541F    add         esp,0FFFFFFF8
 00515422    mov         dword ptr [ebp-4],eax
 00515425    mov         eax,dword ptr [ebp-4]
 00515428    mov         eax,dword ptr [eax+30];TCustomActionControl.FParent:TWinControl
 0051542B    mov         edx,dword ptr ds:[509DC8];TCustomActionBar
 00515431    call        @AsClass
 00515436    mov         dword ptr [ebp-8],eax
 00515439    mov         eax,dword ptr [ebp-8]
 0051543C    pop         ecx
 0051543D    pop         ecx
 0051543E    pop         ebp
 0051543F    ret
end;*}

//00515440
{*procedure TCustomActionControl.CMTextChanged(?:?);
begin
 00515440    push        ebp
 00515441    mov         ebp,esp
 00515443    add         esp,0FFFFFFF8
 00515446    mov         dword ptr [ebp-8],edx
 00515449    mov         dword ptr [ebp-4],eax
 0051544C    mov         edx,dword ptr [ebp-8]
 0051544F    mov         eax,dword ptr [ebp-4]
 00515452    mov         ecx,dword ptr [eax]
 00515454    call        dword ptr [ecx-10];TControl.DefaultHandler
 00515457    mov         eax,dword ptr [ebp-4]
 0051545A    call        0051541C
 0051545F    test        eax,eax
>00515461    je          0051546E
 00515463    mov         eax,dword ptr [ebp-4]
 00515466    mov         edx,dword ptr [eax]
 00515468    call        dword ptr [edx+0DC];TCustomActionControl.sub_00515568
 0051546E    pop         ecx
 0051546F    pop         ecx
 00515470    pop         ebp
 00515471    ret
end;*}

//00515474
procedure sub_00515474(?:TCustomActionControl);
begin
{*
 00515474    push        ebp
 00515475    mov         ebp,esp
 00515477    add         esp,0FFFFFFE4
 0051547A    push        esi
 0051547B    push        edi
 0051547C    xor         edx,edx
 0051547E    mov         dword ptr [ebp-1C],edx
 00515481    mov         dword ptr [ebp-18],edx
 00515484    mov         dword ptr [ebp-4],eax
 00515487    xor         eax,eax
 00515489    push        ebp
 0051548A    push        515558
 0051548F    push        dword ptr fs:[eax]
 00515492    mov         dword ptr fs:[eax],esp
 00515495    push        0
 00515497    lea         eax,[ebp-14]
 0051549A    push        eax
 0051549B    xor         ecx,ecx
 0051549D    xor         edx,edx
 0051549F    xor         eax,eax
 005154A1    call        Rect
 005154A6    mov         eax,dword ptr [ebp-4]
 005154A9    lea         esi,[ebp-14]
 005154AC    lea         edi,[eax+190];TCustomActionControl.FTextBounds:TRect
 005154B2    movs        dword ptr [edi],dword ptr [esi]
 005154B3    movs        dword ptr [edi],dword ptr [esi]
 005154B4    movs        dword ptr [edi],dword ptr [esi]
 005154B5    movs        dword ptr [edi],dword ptr [esi]
 005154B6    mov         eax,dword ptr [ebp-4]
 005154B9    cmp         dword ptr [eax+16C],0;TCustomActionControl.FActionClient:TActionClientItem
>005154C0    je          00515502
 005154C2    push        400
 005154C7    mov         eax,dword ptr [ebp-4]
 005154CA    add         eax,190;TCustomActionControl.FTextBounds:TRect
 005154CF    push        eax
 005154D0    push        0FF
 005154D2    lea         edx,[ebp-18]
 005154D5    mov         eax,dword ptr [ebp-4]
 005154D8    mov         eax,dword ptr [eax+16C];TCustomActionControl.FActionClient:TActionClientItem
 005154DE    call        TActionClientItem.GetCaption
 005154E3    mov         eax,dword ptr [ebp-18]
 005154E6    call        @LStrToPChar
 005154EB    push        eax
 005154EC    mov         eax,dword ptr [ebp-4]
 005154EF    mov         eax,dword ptr [eax+160];TCustomActionControl...............................................
 005154F5    call        TCanvas.GetHandle
 005154FA    push        eax
 005154FB    call        user32.DrawTextA
>00515500    jmp         0051553A
 00515502    push        400
 00515507    mov         eax,dword ptr [ebp-4]
 0051550A    add         eax,190;TCustomActionControl.FTextBounds:TRect
 0051550F    push        eax
 00515510    push        0FF
 00515512    lea         edx,[ebp-1C]
 00515515    mov         eax,dword ptr [ebp-4]
 00515518    call        TControl.GetText
 0051551D    mov         eax,dword ptr [ebp-1C]
 00515520    call        @LStrToPChar
 00515525    push        eax
 00515526    mov         eax,dword ptr [ebp-4]
 00515529    mov         eax,dword ptr [eax+160];TCustomActionControl...............................................
 0051552F    call        TCanvas.GetHandle
 00515534    push        eax
 00515535    call        user32.DrawTextA
 0051553A    xor         eax,eax
 0051553C    pop         edx
 0051553D    pop         ecx
 0051553E    pop         ecx
 0051553F    mov         dword ptr fs:[eax],edx
 00515542    push        51555F
 00515547    lea         eax,[ebp-1C]
 0051554A    call        @LStrClr
 0051554F    lea         eax,[ebp-18]
 00515552    call        @LStrClr
 00515557    ret
>00515558    jmp         @HandleFinally
>0051555D    jmp         00515547
 0051555F    pop         edi
 00515560    pop         esi
 00515561    mov         esp,ebp
 00515563    pop         ebp
 00515564    ret
*}
end;

//00515568
procedure sub_00515568;
begin
{*
 00515568    push        ebp
 00515569    mov         ebp,esp
 0051556B    add         esp,0FFFFFFEC
 0051556E    push        ebx
 0051556F    push        esi
 00515570    mov         dword ptr [ebp-4],eax
 00515573    mov         eax,dword ptr [ebp-4]
 00515576    cmp         dword ptr [eax+16C],0;TCustomActionControl.FActionClient:TActionClientItem
>0051557D    je          005156D1
 00515583    lea         edx,[ebp-14]
 00515586    mov         eax,dword ptr [ebp-4]
 00515589    mov         ecx,dword ptr [eax]
 0051558B    call        dword ptr [ecx+0BC];TCustomActionControl.sub_00514858
 00515591    mov         eax,dword ptr [ebp-4]
 00515594    mov         eax,dword ptr [eax+160];TCustomActionControl...............................................
 0051559A    mov         eax,dword ptr [eax+0C];TCanvas.Font:TFont
 0051559D    mov         edx,dword ptr [ebp-4]
 005155A0    mov         edx,dword ptr [edx+68];TCustomActionControl.FFont:TFont
 005155A3    mov         ecx,dword ptr [eax]
 005155A5    call        dword ptr [ecx+8];TFont.sub_00486CC0
 005155A8    mov         eax,dword ptr [ebp-4]
 005155AB    call        00515474
 005155B0    mov         eax,dword ptr [ebp-4]
 005155B3    mov         eax,dword ptr [eax+48];TCustomActionControl.Width:Integer
 005155B6    mov         dword ptr [ebp-8],eax
 005155B9    mov         eax,dword ptr [ebp-4]
 005155BC    mov         eax,dword ptr [eax+4C];TCustomActionControl.Height:Integer
 005155BF    mov         dword ptr [ebp-0C],eax
 005155C2    mov         eax,dword ptr [ebp-4]
 005155C5    mov         al,byte ptr [eax+171];TCustomActionControl.FGlyphLayout:TButtonLayout
 005155CB    sub         al,2
>005155CD    jb          005155D8
 005155CF    sub         al,2
>005155D1    jb          00515632
>005155D3    jmp         00515685
 005155D8    lea         edx,[ebp-14]
 005155DB    mov         eax,dword ptr [ebp-4]
 005155DE    call        0051358C
 005155E3    mov         ebx,eax
 005155E5    mov         eax,dword ptr [ebp-4]
 005155E8    mov         eax,dword ptr [eax+17A];TCustomActionControl.FMargins:TRect
 005155EE    add         eax,dword ptr [ebp-14]
 005155F1    add         ebx,eax
 005155F3    mov         eax,dword ptr [ebp-4]
 005155F6    call        005134BC
 005155FB    add         ebx,eax
 005155FD    mov         eax,dword ptr [ebp-4]
 00515600    add         ebx,dword ptr [eax+182];TCustomActionControl.FMargins.Right:Longint
 00515606    mov         dword ptr [ebp-8],ebx
 00515609    mov         eax,dword ptr [ebp-4]
 0051560C    call        00513524
 00515611    mov         edx,eax
 00515613    mov         eax,dword ptr [ebp-10]
 00515616    call        0048FCCC
 0051561B    mov         edx,dword ptr [ebp-4]
 0051561E    add         eax,dword ptr [edx+17E];TCustomActionControl.FMargins.Top:Longint
 00515624    mov         edx,dword ptr [ebp-4]
 00515627    add         eax,dword ptr [edx+186]
 0051562D    mov         dword ptr [ebp-0C],eax
>00515630    jmp         00515685
 00515632    mov         eax,dword ptr [ebp-4]
 00515635    call        005134BC
 0051563A    mov         edx,dword ptr [ebp-4]
 0051563D    mov         edx,dword ptr [edx+17A];TCustomActionControl.FMargins:TRect
 00515643    add         edx,dword ptr [ebp-14]
 00515646    add         eax,edx
 00515648    mov         edx,dword ptr [ebp-4]
 0051564B    add         eax,dword ptr [edx+182];TCustomActionControl.FMargins.Right:Longint
 00515651    mov         dword ptr [ebp-8],eax
 00515654    lea         edx,[ebp-14]
 00515657    mov         eax,dword ptr [ebp-4]
 0051565A    call        0051358C
 0051565F    mov         ebx,eax
 00515661    mov         eax,dword ptr [ebp-4]
 00515664    mov         eax,dword ptr [eax+17E];TCustomActionControl.FMargins.Top:Longint
 0051566A    add         eax,dword ptr [ebp-10]
 0051566D    add         ebx,eax
 0051566F    mov         eax,dword ptr [ebp-4]
 00515672    call        00513524
 00515677    add         ebx,eax
 00515679    mov         eax,dword ptr [ebp-4]
 0051567C    add         ebx,dword ptr [eax+186]
 00515682    mov         dword ptr [ebp-0C],ebx
 00515685    mov         eax,dword ptr [ebp-8]
 00515688    mov         edx,dword ptr [ebp-4]
 0051568B    cmp         eax,dword ptr [edx+48];TCustomActionControl.Width:Integer
>0051568E    jne         0051569B
 00515690    mov         eax,dword ptr [ebp-0C]
 00515693    mov         edx,dword ptr [ebp-4]
 00515696    cmp         eax,dword ptr [edx+4C];TCustomActionControl.Height:Integer
>00515699    je          005156D1
 0051569B    mov         eax,dword ptr [ebp-8]
 0051569E    push        eax
 0051569F    mov         eax,dword ptr [ebp-0C]
 005156A2    push        eax
 005156A3    mov         eax,dword ptr [ebp-4]
 005156A6    mov         ecx,dword ptr [eax+44];TCustomActionControl.Top:Integer
 005156A9    mov         eax,dword ptr [ebp-4]
 005156AC    mov         edx,dword ptr [eax+40];TCustomActionControl.Left:Integer
 005156AF    mov         eax,dword ptr [ebp-4]
 005156B2    mov         ebx,dword ptr [eax]
 005156B4    call        dword ptr [ebx+84];TCustomActionControl.sub_004CA110
 005156BA    mov         eax,dword ptr [ebp-4]
 005156BD    mov         edx,dword ptr [eax]
 005156BF    call        dword ptr [edx+90];TCustomActionControl.sub_005135CC
 005156C5    mov         eax,dword ptr [ebp-4]
 005156C8    mov         si,0FFD0
 005156CC    call        @CallDynaInst;TControl.sub_004C9ED8
 005156D1    pop         esi
 005156D2    pop         ebx
 005156D3    mov         esp,ebp
 005156D5    pop         ebp
 005156D6    ret
*}
end;

//005156D8
{*procedure sub_005156D8(?:?; ?:?);
begin
 005156D8    push        ebp
 005156D9    mov         ebp,esp
 005156DB    add         esp,0FFFFFFCC
 005156DE    push        ebx
 005156DF    mov         dword ptr [ebp-24],ecx
 005156E2    mov         dword ptr [ebp-8],edx
 005156E5    mov         dword ptr [ebp-4],eax
 005156E8    xor         eax,eax
 005156EA    mov         dword ptr [ebp-0C],eax
 005156ED    mov         eax,dword ptr [ebp-4]
 005156F0    cmp         dword ptr [eax+16C],0;TCustomActionControl.FActionClient:TActionClientItem
>005156F7    je          0051576A
 005156F9    mov         eax,dword ptr [ebp-4]
 005156FC    mov         eax,dword ptr [eax+16C];TCustomActionControl.FActionClient:TActionClientItem
 00515702    call        0050E760
 00515707    call        00479B60
 0051570C    dec         eax
 0051570D    test        eax,eax
>0051570F    jl          0051576A
 00515711    inc         eax
 00515712    mov         dword ptr [ebp-18],eax
 00515715    mov         dword ptr [ebp-10],0
 0051571C    mov         eax,dword ptr [ebp-4]
 0051571F    mov         eax,dword ptr [eax+16C];TCustomActionControl.FActionClient:TActionClientItem
 00515725    call        0050E760
 0051572A    mov         edx,dword ptr [ebp-10]
 0051572D    call        0050D884
 00515732    cmp         dword ptr [eax+40],0
>00515736    je          00515762
 00515738    mov         eax,dword ptr [ebp-4]
 0051573B    mov         eax,dword ptr [eax+16C];TCustomActionControl.FActionClient:TActionClientItem
 00515741    call        0050E760
 00515746    mov         edx,dword ptr [ebp-10]
 00515749    call        0050D884
 0051574E    mov         eax,dword ptr [eax+40]
 00515751    cmp         byte ptr [eax+170],0
>00515758    je          00515762
 0051575A    mov         eax,dword ptr [ebp-10]
 0051575D    mov         dword ptr [ebp-0C],eax
>00515760    jmp         0051576A
 00515762    inc         dword ptr [ebp-10]
 00515765    dec         dword ptr [ebp-18]
>00515768    jne         0051571C
 0051576A    mov         eax,dword ptr [ebp-8]
 0051576D    mov         edx,dword ptr ds:[509A10];TActionDragObject
 00515773    call        @IsClass
 00515778    test        al,al
>0051577A    je          00515866
 00515780    mov         eax,dword ptr [ebp-4]
 00515783    call        0051541C
 00515788    call        TWinControl.DisableAlign
 0051578D    mov         eax,dword ptr [ebp-4]
 00515790    call        0051541C
 00515795    call        00511668
 0051579A    mov         edx,dword ptr [eax]
 0051579C    call        dword ptr [edx+20]
 0051579F    xor         eax,eax
 005157A1    push        ebp
 005157A2    push        51585F
 005157A7    push        dword ptr fs:[eax]
 005157AA    mov         dword ptr fs:[eax],esp
 005157AD    mov         eax,dword ptr [ebp-8]
 005157B0    mov         edx,dword ptr ds:[509A10];TActionDragObject
 005157B6    call        @AsClass
 005157BB    mov         dword ptr [ebp-1C],eax
 005157BE    mov         eax,dword ptr [ebp-1C]
 005157C1    call        0050F4F4
 005157C6    dec         eax
 005157C7    test        eax,eax
>005157C9    jl          00515832
 005157CB    inc         eax
 005157CC    mov         dword ptr [ebp-18],eax
 005157CF    mov         dword ptr [ebp-10],0
 005157D6    mov         eax,dword ptr [ebp-4]
 005157D9    call        0051541C
 005157DE    call        00511668
 005157E3    mov         edx,dword ptr [ebp-0C]
 005157E6    call        00479DAC
 005157EB    mov         dword ptr [ebp-14],eax
 005157EE    mov         eax,dword ptr [ebp-4]
 005157F1    call        0051541C
 005157F6    mov         eax,dword ptr [eax+214]
 005157FC    mov         eax,dword ptr [eax+6C]
 005157FF    mov         edx,dword ptr [eax+28]
 00515802    mov         eax,dword ptr [ebp-14]
 00515805    call        TActionClientItem.SetLastSession
 0051580A    mov         edx,dword ptr [ebp-10]
 0051580D    mov         eax,dword ptr [ebp-1C]
 00515810    call        0050F4A8
 00515815    mov         edx,eax
 00515817    mov         eax,dword ptr [ebp-14]
 0051581A    call        TActionClientItem.SetAction
 0051581F    mov         edx,dword ptr [ebp-0C]
 00515822    mov         eax,dword ptr [ebp-14]
 00515825    mov         ecx,dword ptr [eax]
 00515827    call        dword ptr [ecx+14]
 0051582A    inc         dword ptr [ebp-10]
 0051582D    dec         dword ptr [ebp-18]
>00515830    jne         005157D6
 00515832    xor         eax,eax
 00515834    pop         edx
 00515835    pop         ecx
 00515836    pop         ecx
 00515837    mov         dword ptr fs:[eax],edx
 0051583A    push        51594A
 0051583F    mov         eax,dword ptr [ebp-4]
 00515842    call        0051541C
 00515847    call        00511668
 0051584C    mov         edx,dword ptr [eax]
 0051584E    call        dword ptr [edx+24]
 00515851    mov         eax,dword ptr [ebp-4]
 00515854    call        0051541C
 00515859    call        TWinControl.EnableAlign
 0051585E    ret
>0051585F    jmp         @HandleFinally
>00515864    jmp         0051583F
 00515866    mov         eax,dword ptr [ebp-8]
 00515869    mov         edx,dword ptr ds:[509B2C];TActionItemDragObject
 0051586F    call        @IsClass
 00515874    test        al,al
>00515876    je          0051594A
 0051587C    mov         eax,dword ptr [ebp-8]
 0051587F    mov         edx,dword ptr ds:[509B2C];TActionItemDragObject
 00515885    call        @AsClass
 0051588A    mov         dword ptr [ebp-20],eax
 0051588D    mov         eax,dword ptr [ebp-4]
 00515890    mov         eax,dword ptr [eax+16C];TCustomActionControl.FActionClient:TActionClientItem
 00515896    call        0050E760
 0051589B    mov         edx,dword ptr [ebp-20]
 0051589E    mov         edx,dword ptr [edx+40];TActionItemDragObject...............................FClientItem:T...
 005158A1    cmp         eax,dword ptr [edx+4];TActionClientItem.FCollection:TCollection
>005158A4    je          005158F0
 005158A6    mov         eax,dword ptr [ebp-4]
 005158A9    mov         eax,dword ptr [eax+16C];TCustomActionControl.FActionClient:TActionClientItem
 005158AF    call        0050E760
 005158B4    mov         edx,eax
 005158B6    mov         eax,dword ptr [ebp-20]
 005158B9    mov         eax,dword ptr [eax+40];TActionItemDragObject................................FClientItem:...
 005158BC    mov         ecx,dword ptr [eax]
 005158BE    call        dword ptr [ecx+10];TActionClientItem.sub_0050F240
 005158C1    mov         eax,dword ptr [ebp-20]
 005158C4    mov         eax,dword ptr [eax+40];TActionItemDragObject.................................FClientItem...
 005158C7    mov         edx,dword ptr [ebp-0C]
 005158CA    mov         ecx,dword ptr [eax]
 005158CC    call        dword ptr [ecx+14];TActionClientItem.sub_0050EE20
 005158CF    mov         eax,dword ptr [ebp-4]
 005158D2    call        0051541C
 005158D7    mov         eax,dword ptr [eax+214]
 005158DD    mov         eax,dword ptr [eax+6C]
 005158E0    mov         edx,dword ptr [eax+28]
 005158E3    mov         eax,dword ptr [ebp-20]
 005158E6    mov         eax,dword ptr [eax+40];TActionItemDragObject..................................FClientIte...
 005158E9    call        TActionClientItem.SetLastSession
>005158EE    jmp         0051594A
 005158F0    mov         eax,dword ptr [ebp-20]
 005158F3    mov         eax,dword ptr [eax+40];TActionItemDragObject...................................FClientIt...
 005158F6    call        TCollectionItem.GetIndex
 005158FB    mov         ebx,eax
 005158FD    mov         eax,dword ptr [ebp-4]
 00515900    mov         eax,dword ptr [eax+16C];TCustomActionControl.FActionClient:TActionClientItem
 00515906    call        TCollectionItem.GetIndex
 0051590B    cmp         ebx,eax
>0051590D    jge         00515912
 0051590F    dec         dword ptr [ebp-0C]
 00515912    mov         eax,dword ptr [ebp-20]
 00515915    mov         eax,dword ptr [eax+40];TActionItemDragObject....................................FClientI...
 00515918    mov         edx,dword ptr [ebp-0C]
 0051591B    mov         ecx,dword ptr [eax]
 0051591D    call        dword ptr [ecx+14];TActionClientItem.sub_0050EE20
 00515920    mov         eax,dword ptr [ebp-4]
 00515923    call        0051541C
 00515928    cmp         byte ptr [eax+224],0
>0051592F    je          0051594A
 00515931    cmp         dword ptr ds:[541A9C],0;gvar_00541A9C
>00515938    je          0051594A
 0051593A    mov         eax,dword ptr [ebp-20]
 0051593D    mov         edx,dword ptr [eax+40];TActionItemDragObject.....................................FClient...
 00515940    mov         eax,[00541A9C];0x0 gvar_00541A9C
 00515945    mov         ecx,dword ptr [eax]
 00515947    call        dword ptr [ecx+20]
 0051594A    mov         eax,dword ptr [ebp-4]
 0051594D    call        0051541C
 00515952    call        0050A550
 00515957    mov         dword ptr [ebp-34],0B411
 0051595E    xor         eax,eax
 00515960    mov         dword ptr [ebp-30],eax
 00515963    xor         eax,eax
 00515965    mov         dword ptr [ebp-2C],eax
 00515968    xor         eax,eax
 0051596A    mov         dword ptr [ebp-28],eax
 0051596D    lea         edx,[ebp-34]
 00515970    mov         eax,dword ptr [ebp-4]
 00515973    mov         eax,dword ptr [eax+30];TCustomActionControl.FParent:TWinControl
 00515976    call        004CF664
 0051597B    pop         ebx
 0051597C    mov         esp,ebp
 0051597E    pop         ebp
 0051597F    ret         4
end;*}

//00515984
{*procedure sub_00515984(?:?; ?:?);
begin
 00515984    push        ebp
 00515985    mov         ebp,esp
 00515987    add         esp,0FFFFFFF8
 0051598A    push        esi
 0051598B    mov         byte ptr [ebp-5],dl
 0051598E    mov         dword ptr [ebp-4],eax
 00515991    mov         eax,dword ptr [ebp-4]
 00515994    mov         al,byte ptr [eax+18B]
 0051599A    cmp         al,byte ptr [ebp-5]
>0051599D    je          005159C2
 0051599F    mov         al,byte ptr [ebp-5]
 005159A2    mov         edx,dword ptr [ebp-4]
 005159A5    mov         byte ptr [edx+18B],al
 005159AB    mov         eax,dword ptr [ebp-4]
 005159AE    mov         edx,dword ptr [eax]
 005159B0    call        dword ptr [edx+0DC]
 005159B6    mov         eax,dword ptr [ebp-4]
 005159B9    mov         si,0FFD0
 005159BD    call        @CallDynaInst
 005159C2    pop         esi
 005159C3    pop         ecx
 005159C4    pop         ecx
 005159C5    pop         ebp
 005159C6    ret
end;*}

//005159C8
{*procedure TCustomActionControl.WMContextMenu(?:?);
begin
 005159C8    push        ebp
 005159C9    mov         ebp,esp
 005159CB    add         esp,0FFFFFFF4
 005159CE    mov         dword ptr [ebp-8],edx
 005159D1    mov         dword ptr [ebp-4],eax
 005159D4    mov         edx,dword ptr [ebp-8]
 005159D7    mov         eax,dword ptr [ebp-4]
 005159DA    call        TControl.WMContextMenu
 005159DF    mov         eax,dword ptr [ebp-4]
 005159E2    cmp         dword ptr [eax+16C],0;TCustomActionControl.FActionClient:TActionClientItem
>005159E9    je          00515A76
 005159EF    mov         eax,dword ptr [ebp-4]
 005159F2    mov         eax,dword ptr [eax+16C];TCustomActionControl.FActionClient:TActionClientItem
 005159F8    call        TActionClient.GetContextItems
 005159FD    call        00479B60
 00515A02    test        eax,eax
>00515A04    jle         00515A76
 00515A06    mov         eax,dword ptr [ebp-4]
 00515A09    call        0051541C
 00515A0E    call        00513228
 00515A13    mov         edx,dword ptr [ebp-4]
 00515A16    mov         ecx,dword ptr [edx+4];TCustomActionControl.FOwner:TComponent
 00515A19    mov         dl,1
 00515A1B    call        dword ptr [eax+2C]
 00515A1E    mov         edx,dword ptr ds:[4FF100];TCustomActionPopupMenu
 00515A24    call        @AsClass
 00515A29    mov         dword ptr [ebp-0C],eax
 00515A2C    mov         eax,dword ptr [ebp-0C]
 00515A2F    mov         byte ptr [eax+270],1;TCustomActionPopupMenu.FContextBar:Boolean
 00515A36    mov         eax,dword ptr [ebp-4]
 00515A39    mov         edx,dword ptr [eax+30];TCustomActionControl.FParent:TWinControl
 00515A3C    mov         eax,dword ptr [ebp-0C]
 00515A3F    mov         ecx,dword ptr [eax]
 00515A41    call        dword ptr [ecx+68];TCustomActionPopupMenu.sub_00502F58
 00515A44    mov         eax,dword ptr [ebp-4]
 00515A47    mov         edx,dword ptr [eax+16C];TCustomActionControl.FActionClient:TActionClientItem
 00515A4D    mov         eax,dword ptr [ebp-0C]
 00515A50    mov         ecx,dword ptr [eax]
 00515A52    call        dword ptr [ecx+124];TCustomActionPopupMenu.sub_0051191C
 00515A58    mov         ecx,dword ptr [ebp-8]
 00515A5B    movsx       ecx,word ptr [ecx+0A]
 00515A5F    mov         edx,dword ptr [ebp-8]
 00515A62    movsx       edx,word ptr [edx+8]
 00515A66    mov         eax,dword ptr [ebp-0C]
 00515A69    call        TCustomActionPopupMenu.Popup
 00515A6E    mov         eax,dword ptr [ebp-0C]
 00515A71    call        TObject.Free
 00515A76    mov         esp,ebp
 00515A78    pop         ebp
 00515A79    ret
end;*}

//00515A7C
{*procedure sub_00515A7C(?:TCustomActionControl; ?:?);
begin
 00515A7C    push        ebp
 00515A7D    mov         ebp,esp
 00515A7F    add         esp,0FFFFFFE8
 00515A82    mov         byte ptr [ebp-5],dl
 00515A85    mov         dword ptr [ebp-4],eax
 00515A88    mov         al,byte ptr [ebp-5]
 00515A8B    mov         edx,dword ptr [ebp-4]
 00515A8E    cmp         al,byte ptr [edx+170];TCustomActionControl.FDropPoint:Boolean
>00515A94    je          00515ADE
 00515A96    mov         al,byte ptr [ebp-5]
 00515A99    mov         edx,dword ptr [ebp-4]
 00515A9C    mov         byte ptr [edx+170],al;TCustomActionControl.FDropPoint:Boolean
 00515AA2    cmp         byte ptr [ebp-5],0
>00515AA6    je          00515AD6
 00515AA8    mov         eax,dword ptr [ebp-4]
 00515AAB    cmp         dword ptr [eax+30],0;TCustomActionControl.FParent:TWinControl
>00515AAF    je          00515AD6
 00515AB1    mov         dword ptr [ebp-15],0B411
 00515AB8    xor         eax,eax
 00515ABA    mov         dword ptr [ebp-11],eax
 00515ABD    mov         eax,dword ptr [ebp-4]
 00515AC0    mov         dword ptr [ebp-0D],eax
 00515AC3    xor         eax,eax
 00515AC5    mov         dword ptr [ebp-9],eax
 00515AC8    lea         edx,[ebp-15]
 00515ACB    mov         eax,dword ptr [ebp-4]
 00515ACE    mov         eax,dword ptr [eax+30];TCustomActionControl.FParent:TWinControl
 00515AD1    call        004CF664
 00515AD6    mov         eax,dword ptr [ebp-4]
 00515AD9    mov         edx,dword ptr [eax]
 00515ADB    call        dword ptr [edx+7C];TCustomActionControl.sub_004CB6E8
 00515ADE    mov         esp,ebp
 00515AE0    pop         ebp
 00515AE1    ret
end;*}

//00515AE4
{*procedure TCustomActionControl.sub_00515AE4(?:?);
begin
 00515AE4    push        ebp
 00515AE5    mov         ebp,esp
 00515AE7    add         esp,0FFFFFFF8
 00515AEA    mov         dword ptr [ebp-8],edx
 00515AED    mov         dword ptr [ebp-4],eax
 00515AF0    mov         eax,dword ptr [ebp-8]
 00515AF3    mov         eax,dword ptr [eax+8]
 00515AF6    cmp         eax,dword ptr [ebp-4]
>00515AF9    je          00515B11
 00515AFB    mov         eax,dword ptr [ebp-4]
 00515AFE    cmp         byte ptr [eax+170],0;TCustomActionControl.FDropPoint:Boolean
>00515B05    je          00515B11
 00515B07    xor         edx,edx
 00515B09    mov         eax,dword ptr [ebp-4]
 00515B0C    call        00515A7C
 00515B11    pop         ecx
 00515B12    pop         ecx
 00515B13    pop         ebp
 00515B14    ret
end;*}

//00515B18
{*function sub_00515B18(?:?; ?:?):?;
begin
 00515B18    push        ebp
 00515B19    mov         ebp,esp
 00515B1B    add         esp,0FFFFFFF0
 00515B1E    xor         ecx,ecx
 00515B20    mov         dword ptr [ebp-10],ecx
 00515B23    mov         dword ptr [ebp-8],edx
 00515B26    mov         dword ptr [ebp-4],eax
 00515B29    xor         eax,eax
 00515B2B    push        ebp
 00515B2C    push        515B92
 00515B31    push        dword ptr fs:[eax]
 00515B34    mov         dword ptr fs:[eax],esp
 00515B37    cmp         dword ptr ds:[55E028],0;gvar_0055E028
>00515B3E    jne         00515B61
 00515B40    lea         edx,[ebp-10]
 00515B43    mov         eax,[0055B568];^SResString4:TResStringRec
 00515B48    call        LoadResString
 00515B4D    mov         ecx,dword ptr [ebp-10]
 00515B50    mov         dl,1
 00515B52    mov         eax,[004653B4];Exception
 00515B57    call        Exception.Create;Exception.Create
 00515B5C    call        @RaiseExcept
 00515B61    mov         edx,dword ptr [ebp-8]
 00515B64    mov         eax,[0055E028];gvar_0055E028
 00515B69    mov         ecx,dword ptr [eax]
 00515B6B    call        dword ptr [ecx+18]
 00515B6E    mov         edx,dword ptr ds:[50880C];TActionBarStyle
 00515B74    call        @AsClass
 00515B79    mov         dword ptr [ebp-0C],eax
 00515B7C    xor         eax,eax
 00515B7E    pop         edx
 00515B7F    pop         ecx
 00515B80    pop         ecx
 00515B81    mov         dword ptr fs:[eax],edx
 00515B84    push        515B99
 00515B89    lea         eax,[ebp-10]
 00515B8C    call        @LStrClr
 00515B91    ret
>00515B92    jmp         @HandleFinally
>00515B97    jmp         00515B89
 00515B99    mov         eax,dword ptr [ebp-0C]
 00515B9C    mov         esp,ebp
 00515B9E    pop         ebp
 00515B9F    ret
end;*}

Initialization
//00515BF0
{*
 00515BF0    push        ebp
 00515BF1    mov         ebp,esp
 00515BF3    xor         eax,eax
 00515BF5    push        ebp
 00515BF6    push        515C2F
 00515BFB    push        dword ptr fs:[eax]
 00515BFE    mov         dword ptr fs:[eax],esp
 00515C01    sub         dword ptr ds:[55E030],1
>00515C08    jae         00515C21
 00515C0A    xor         eax,eax
 00515C0C    mov         [0055E028],eax;gvar_0055E028
 00515C11    mov         edx,dword ptr ds:[4C5774];TControl
 00515C17    mov         eax,[00509BB4];TCustomActionBarColorMap
 00515C1C    call        GroupDescendentsWith
 00515C21    xor         eax,eax
 00515C23    pop         edx
 00515C24    pop         ecx
 00515C25    pop         ecx
 00515C26    mov         dword ptr fs:[eax],edx
 00515C29    push        515C36
 00515C2E    ret
>00515C2F    jmp         @HandleFinally
>00515C34    jmp         00515C2E
 00515C36    pop         ebp
 00515C37    ret
*}
Finalization
//00515BA0
{*
 00515BA0    push        ebp
 00515BA1    mov         ebp,esp
 00515BA3    xor         eax,eax
 00515BA5    push        ebp
 00515BA6    push        515BE5
 00515BAB    push        dword ptr fs:[eax]
 00515BAE    mov         dword ptr fs:[eax],esp
 00515BB1    inc         dword ptr ds:[55E030]
>00515BB7    jne         00515BD7
 00515BB9    mov         eax,55E02C
 00515BBE    call        @LStrClr
 00515BC3    mov         eax,541A9C;gvar_00541A9C
 00515BC8    call        @IntfClear
 00515BCD    mov         eax,541A98;^gvar_0050A338
 00515BD2    call        @LStrClr
 00515BD7    xor         eax,eax
 00515BD9    pop         edx
 00515BDA    pop         ecx
 00515BDB    pop         ecx
 00515BDC    mov         dword ptr fs:[eax],edx
 00515BDF    push        515BEC
 00515BE4    ret
>00515BE5    jmp         @HandleFinally
>00515BEA    jmp         00515BE4
 00515BEC    pop         ebp
 00515BED    ret
*}
end.