//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit ComCtrls;

interface

uses
  SysUtils, Classes, Graphics, ImgList, ComCtrls, Controls;

type
  TTabChangingEvent = procedure(Sender:TObject; var AllowChange:Boolean) of object;;
  TTabPosition = (tpTop, tpBottom, tpLeft, tpRight);
  TTabStyle = (tsTabs, tsButtons, tsFlatButtons);
  TDrawTabEvent = procedure(Control:TCustomTabControl; TabIndex:Integer; const Rect:TRect; Active:Boolean) of object;;
  TTabGetImageEvent = procedure(Sender:TObject; TabIndex:Integer; var ImageIndex:Integer) of object;;
  TCustomTabControl = class(TWinControl)
  public
    FCanvas:TCanvas;//f208
    FHotTrack:Boolean;//f20C
    FImageChangeLink:TChangeLink;//f210
    FImages:TCustomImageList;//f214
    FMultiLine:Boolean;//f218
    FMultiSelect:Boolean;//f219
    FOwnerDraw:Boolean;//f21A
    FRaggedRight:Boolean;//f21B
    FSaveTabIndex:Integer;//f21C
    FSaveTabs:TStringList;//f220
    FScrollOpposite:Boolean;//f224
    FStyle:TTabStyle;//f225
    FTabPosition:TTabPosition;//f226
    FTabs:TStrings;//f228
    FTabSize:TSmallPoint;//f22C
    FTabSize:Smallint;//f22E
    FUpdating:Boolean;//f230
    FSavedAdjustRect:TRect;//f231
    FOnChange:TNotifyEvent;//f248
    f24A:word;//f24A
    f24C:dword;//f24C
    FOnChanging:TTabChangingEvent;//f250
    f252:word;//f252
    f254:dword;//f254
    FOnDrawTab:TDrawTabEvent;//f258
    f25A:word;//f25A
    f25C:dword;//f25C
    FOnGetImageIndex:TTabGetImageEvent;//f260
    f262:word;//f262
    f264:dword;//f264
    destructor Destroy; virtual;//004A8444
    procedure Loaded; virtual;//vC//004A8838
    procedure Notification(AComponent:TComponent; Operation:TOperation); virtual;//v10//004A8894
    constructor Create(AOwner:TComponent); virtual;//v2C//004A8354
    //procedure v8C(?:?); virtual;//v8C//004A93F8
    //procedure v98(?:?); virtual;//v98//004A8528
    procedure CreateWnd; virtual;//vA0//004A8678
    //function vC8(?:?):?; virtual;//vC8//004A84E4
    //procedure vCC(?:?; ?:?; ?:?); virtual;//vCC//004A872C
    //function vD0(?:?):?; virtual;//vD0//004A87C8
    procedure vD4(?:Integer); virtual;//vD4//004A8C90
    //procedure WMDestroy(?:?); message WM_DESTROY;//004A90EC
    procedure WMSize(Message:TWMSize); message WM_SIZE;//004A91E0
    //procedure WMNotifyFormat(?:?); message WM_NOTIFYFORMAT;//004A91A8
    procedure TCMAdjustRect(var Message:TMessage); dynamic;//004A9430
    //procedure CMDialogChar(?:?); message CM_DIALOGCHAR;//004A92FC
    //procedure CMFontChanged(?:?); message CM_FONTCHANGED;//004A9210
    //procedure CMSysColorChange(?:?); message CM_SYSCOLORCHANGE;//004A9248
    //procedure CMTabStopChanged(?:?); message CM_TABSTOPCHANGED;//004A9280
    procedure CNDrawItem(var Message:TWMDrawItem); dynamic;//004A8FF8
    //procedure sub_004A92A4(?:?); dynamic;//004A92A4
    procedure sub_004A84FC; dynamic;//004A84FC
    procedure sub_004A84AC; dynamic;//004A84AC
  end;
  TTabSheet = class(TWinControl)
  public
    ImageIndex:TImageIndex;//f208
    FPageControl:TPageControl;//f20C
    TabVisible:Boolean;//f210
    FTabShowing:Boolean;//f211
    Highlighted:Boolean;//f212
    OnHide:TNotifyEvent;//f218
    f21A:word;//f21A
    f21C:dword;//f21C
    OnShow:TNotifyEvent;//f220
    f222:word;//f222
    f224:dword;//f224
    destructor Destroy; virtual;//004A953C
    //procedure v14(?:?); virtual;//v14//004A96E4
    constructor Create(AOwner:TComponent); virtual;//v2C//004A94B4
    //procedure v98(?:?); virtual;//v98//004A96B4
    //procedure WMNCPaint(?:?); message WM_NCPAINT;//004A9A8C
    //procedure sub_004A9BAC(?:?); dynamic;//004A9BAC
    //procedure CMTextChanged(?:?); message CM_TEXTCHANGED;//004A9950
    //procedure CMShowingChanged(?:?); message CM_SHOWINGCHANGED;//004A9980
    procedure sub_004A95DC; dynamic;//004A95DC
    procedure sub_004A95B0; dynamic;//004A95B0
    //function GetPageIndex:?;//004A9608
    procedure SetImageIndex(Value:TImageIndex);//004A9724
    procedure SetPageIndex(Value:Integer);//004A97C4
    procedure SetTabVisible(Value:Boolean);//004A98EC
    procedure SetHighlighted(Value:Boolean);//004A9A38
  end;
  TPageControl = class(TCustomTabControl)
  public
    FPages:TList;//f268
    ActivePage:TTabSheet;//f26C
    FNewDockSheet:TTabSheet;//f270
    FUndockingPage:TTabSheet;//f274
    FInSetActivePage:Boolean;//f278
    destructor Destroy; virtual;//004A9C74
    procedure Loaded; virtual;//vC//004A9D40
    constructor Create(AOwner:TComponent); virtual;//v2C//004A9C08
    //procedure vC0(?:?); virtual;//vC0//004AA5D0
    //function vC8(?:?):?; virtual;//vC8//004A9D5C
    //function vD0(?:?):?; virtual;//vD0//004AA1BC
    procedure SetTabIndex(Value:Integer); virtual;//vD4//004AABB4
    procedure vD8; virtual;//vD8//004AA684
    //procedure WMEraseBkgnd(?:?); message WM_ERASEBKGND;//004AAC1C
    //procedure WMLButtonDown(?:?); message WM_LBUTTONDOWN;//004AAB10
    //procedure WMLButtonDblClk(?:?); message WM_LBUTTONDBLCLK;//004AAB68
    //procedure CMDialogKey(?:?); message CM_DIALOGKEY;//004AA730
    //procedure CMDesignHitTest(?:?); message CM_DESIGNHITTEST;//004AA6CC
    //procedure CMDockClient(?:?); message CM_DOCKCLIENT;//004AA7B0
    //procedure CMUndockClient(?:?); message CM_UNDOCKCLIENT;//004AAA04
    //procedure sub_004AA918(?:?); dynamic;//004AA918
    procedure sub_004A84FC; dynamic;//004A9D88
    //procedure sub_004AA30C(?:?; ?:?; ?:?; ?:?); dynamic;//004AA30C
    //procedure sub_004AA04C(?:?); dynamic;//004AA04C
    //procedure sub_004A9FF4(?:?; ?:?; ?:?; ?:?; ?:?); dynamic;//004A9FF4
    //procedure sub_004A9FC4(?:?; ?:?); dynamic;//004A9FC4
    //procedure sub_0048355C(?:?; ?:?); dynamic;//004AA5B0
    //procedure sub_004834DC(?:?; ?:?); dynamic;//004AA16C
    //function GetTabIndex:?;//004A880C
    procedure SetHotTrack(Value:Boolean);//004A8860
    procedure SetImages(Value:TCustomImageList);//004A88D4
    procedure SetMultiLine(Value:Boolean);//004A8A48
    procedure SetOwnerDraw(Value:Boolean);//004A8A70
    procedure SetRaggedRight(Value:Boolean);//004A8AA4
    procedure SetScrollOpposite(Value:Boolean);//004A8AE0
    procedure SetStyle(Value:TTabStyle);//004A8B24
    procedure SetTabHeight(Value:Smallint);//004A8BCC
    procedure SetTabPosition(Value:TTabPosition);//004A8CBC
    procedure SetTabWidth(Value:Smallint);//004A8D74
    procedure SetActivePage(Value:TTabSheet);//004AA510
  end;
  TStatusPanelStyle = (psText, psOwnerDraw);
  TStatusPanelBevel = (pbNone, pbLowered, pbRaised);
  TStatusPanel = class(TCollectionItem)
  public
    Text:String;//fC
    Width:Integer;//f10
    Alignment:TAlignment;//f14
    Bevel:TStatusPanelBevel;//f15
    BiDiMode:TBiDiMode;//f16
    ParentBiDiMode:Boolean;//f17
    Style:TStatusPanelStyle;//f18
    FUpdateNeeded:Boolean;//f19
    //procedure v8(?:?); virtual;//v8//004AACC8
    //procedure vC(?:?); virtual;//vC//004AAE68
    constructor v1C; virtual;//v1C//004AAC60
    procedure SetBiDiMode(Value:TBiDiMode);//004AAD40
    function IsStoredBiDiMode(Value:TBiDiMode):Boolean;//004AAD78
    procedure SetParentBiDiMode(Value:Boolean);//004AAD94
    procedure SetAlignment(Value:TAlignment);//004AAE9C
    procedure SetBevel(Value:TStatusPanelBevel);//004AAECC
    procedure SetStyle(Value:TStatusPanelStyle);//004AAEFC
    procedure SetText(Value:String);//004AAF2C
    procedure SetWidth(Value:Integer);//004AAF64
  end;
  TStatusPanels = class(TCollection)
  public
    ...FStatusBar:TCustomStatusBar;//f18
    //procedure v1C(?:?); virtual;//v1C//004AB064
    procedure sub_00479290; dynamic;//004AB048
    constructor Create;//004AAF94
    function GetItem(Index:Integer):TStatusPanel;//004AB024
  end;
  TSBCreatePanelClassEvent = procedure(Sender:TCustomStatusBar; var PanelClass:TStatusPanelClass) of object;;
  TCustomStatusBar = class(TWinControl)
  public
    FPanels:TStatusPanels;//f208
    FCanvas:TCanvas;//f20C
    FSimpleText:String;//f210
    FSimplePanel:Boolean;//f214
    FSizeGrip:Boolean;//f215
    FSizeGripValid:Boolean;//f216
    FUseSystemFont:Boolean;//f217
    FAutoHint:Boolean;//f218
    FOnDrawPanel:TCustomDrawPanelEvent;//f220
    f222:word;//f222
    f224:dword;//f224
    FOnHint:TNotifyEvent;//f228
    f22A:word;//f22A
    f22C:dword;//f22C
    FOnCreatePanelClass:TSBCreatePanelClassEvent;//f230
    f232:word;//f232
    f234:dword;//f234
    destructor Destroy; virtual;//004AB180
    constructor Create(AOwner:TComponent); virtual;//v2C//004AB0A4
    //procedure v68(?:?); virtual;//v68//004ABF20
    procedure SetBounds(ALeft:Integer; ATop:Integer; AWidth:Integer; AHeight:Integer); virtual;//v84//004ABEE8
    //procedure v98(?:?); virtual;//v98//004AB1D0
    procedure CreateWnd; virtual;//vA0//004AB270
    //function vC8:?; virtual;//vC8//004ABFE4
    //function vCC:?; virtual;//vCC//004AC03C
    //function vD0:?; virtual;//vD0//004AB310
    //function vD4:?; virtual;//vD4//004AC060
    procedure WMSize(Message:TWMSize); message WM_SIZE;//004ABCA8
    //procedure WMGetTextLength(?:?); message WM_GETTEXTLENGTH;//004ABC5C
    procedure WMPaint(Message:TWMPaint); message WM_PAINT;//004ABC80
    //procedure WMEraseBkgnd(?:?); message WM_ERASEBKGND;//004AC078
    //procedure CMParentFontChanged(?:?); message CM_PARENTFONTCHANGED;//004ABD84
    //procedure CMColorChanged(?:?); message CM_COLORCHANGED;//004ABD60
    //procedure CMSysColorChange(?:?); message CM_SYSCOLORCHANGE;//004ABE60
    //procedure CMWinIniChange(?:?); message CM_WININICHANGE;//004ABB18
    //procedure CMSysFontChanged(?:?); message CM_SYSFONTCHANGED;//004ABE84
    procedure CMBiDiModeChanged(Message:TMessage); message CM_BIDIMODECHANGED;//004AB534
    procedure CNDrawItem(var Message:TWMDrawItem); dynamic;//004ABB50
    //procedure sub_004AB34C(?:?; ?:?); dynamic;//004AB34C
    //procedure sub_004AB5D0(?:?); dynamic;//004AB5D0
    //procedure sub_004ABEA8(?:?; ?:?); dynamic;//004ABEA8
    //procedure sub_004839E8(?:?); dynamic;//004ABDC0
  end;
  TDrawPanelEvent = procedure(StatusBar:TStatusBar; Panel:TStatusPanel; const Rect:TRect) of object;;
  TStatusBar = class(TCustomStatusBar)
    procedure SetPanels(Value:TStatusPanels);//004AB39C
    procedure SetSimplePanel(Value:Boolean);//004AB3C0
    procedure SetSimpleText(Value:String);//004AB4F8
    procedure SetSizeGrip(Value:Boolean);//004AB7B8
    function IsStoredFont(Value:TFont):Boolean;//004ABCDC
    procedure SetUseSystemFont(Value:Boolean);//004ABD14
    //procedure GetOnDrawPanel(?:?);//004B5540
    //procedure SetOnDrawPanel(Value:TDrawPanelEvent; ?:?; ?:?);//004B5568
  end;
  TCustomDrawStage = (cdPrePaint, cdPostPaint, cdPreErase, cdPostErase);
  _Enum_68_9 = (cdsSelected, cdsGrayed, cdsDisabled, cdsChecked, cdsFocused, cdsDefault, cdsHot, cdsMarked, cdsIndeterminate);
  TCustomDrawState = set of _Enum_68_9;
  TSortType = (stNone, stData, stText, stBoth);
  TTrackBarOrientation = (trHorizontal, trVertical);
  TTickMark = (tmBottomRight, tmTopLeft, tmBoth);
  TTickStyle = (tsNone, tsAuto, tsManual);
  TTrackBar = class(TWinControl)
  public
    Orientation:TTrackBarOrientation;//f208
    TickMarks:TTickMark;//f209
    TickStyle:TTickStyle;//f20A
    LineSize:Integer;//f20C
    PageSize:Integer;//f210
    FThumbLength:Integer;//f214
    SliderVisible:Boolean;//f218
    Min:Integer;//f21C
    Max:Integer;//f220
    Frequency:Integer;//f224
    Position:Integer;//f228
    SelStart:Integer;//f22C
    SelEnd:Integer;//f230
    OnChange:TNotifyEvent;//f238
    f23A:word;//f23A
    f23C:dword;//f23C
    constructor Create(AOwner:TComponent); virtual;//v2C//004AC0E0
    //procedure v98(?:?); virtual;//v98//004AC1F8
    procedure CreateWnd; virtual;//vA0//004AC2D4
    procedure vB0; virtual;//vB0//004AC3D8
    //procedure WMEraseBkgnd(?:?); message WM_ERASEBKGND;//004ACCCC
    //procedure sub_004ACAD4(?:?); dynamic;//004ACAD4
    //procedure sub_004AC3EC(?:?); dynamic;//004AC3EC
    //procedure sub_004AC440(?:?); dynamic;//004AC440
    procedure sub_004ACAA8; dynamic;//004ACAA8
    //function GetThumbLength:?;//004AC494
    procedure SetOrientation(Value:TTrackBarOrientation);//004AC4D8
    procedure SetPosition(Value:Integer);//004AC72C
    procedure SetMin(Value:Integer);//004AC75C
    procedure SetMax(Value:Integer);//004AC798
    procedure SetFrequency(Value:Integer);//004AC7D4
    procedure SetTickStyle(Value:TTickStyle);//004AC82C
    procedure SetTickMarks(Value:TTickMark);//004AC860
    procedure SetLineSize(Value:Integer);//004AC894
    procedure SetPageSize(Value:Integer);//004AC8EC
    procedure SetThumbLength(Value:Integer);//004AC944
    procedure SetSliderVisible(Value:Boolean);//004AC994
    procedure SetSelStart(Value:Integer);//004ACA40
    procedure SetSelEnd(Value:Integer);//004ACA74
  end;
  TConversion = class(TObject)
  public
    //function v0(?:?; ?:?; ?:?):?; virtual;//v0//004ACD64
    //function v4(?:?; ?:?; ?:?):?; virtual;//v4//004ACD90
  end;
  TConversionFormat = TConversionFormat = record//size=C
f4:String;//f4
end;;
  TListColumn = class(TCollectionItem)
  public
    Alignment:TAlignment;//fC
    AutoSize:Boolean;//fD
    Caption:String;//f10
    MaxWidth:TWidth;//f14
    MinWidth:TWidth;//f18
    ImageIndex:TImageIndex;//f1C
    FPrivateWidth:TWidth;//f20
    FWidth:TWidth;//f24
    FOrderTag:Integer;//f28
    Tag:Integer;//f2C
    destructor Destroy; virtual;//004ACE7C
    procedure DefineProperties(Filer:TFiler); virtual;//v4//004ACEF4
    //procedure v8(?:?); virtual;//v8//004AD44C
    //procedure vC(?:?); virtual;//vC//004AD4E8
    //procedure v14(?:?); virtual;//v14//004AD140
    constructor v1C; virtual;//v1C//004ACDBC
    procedure SetCaption(Value:String);//004AD218
    //function GetWidth:?;//004AD250
    function IsStoredWidth(Value:TWidth):Boolean;//004AD298
    procedure SetWidth(Value:TWidth);//004AD2B4
    procedure SetAlignment(Value:TAlignment);//004AD31C
    procedure SetAutoSize(Value:Boolean);//004AD36C
    procedure SetImageIndex(Value:TImageIndex);//004AD3C0
    procedure SetMaxWidth(Value:TWidth);//004AD3EC
    procedure SetMinWidth(Value:TWidth);//004AD41C
  end;
  TListColumns = class(TCollection)
  public
    .FOwner:TCustomListView;//f18
    //procedure v1C(?:?); virtual;//v1C//004AD5CC
    procedure sub_00479290; dynamic;//004AD5B0
    constructor Create;//004AD51C
  end;
  TListItem = class(TPersistent)
  public
    FOwner:TListItems;//f4
    FSubItems:TStrings;//f8
    FData:Pointer;//fC
    FImageIndex:TImageIndex;//f10
    FIndent:Integer;//f14
    FIndex:Integer;//f18
    FOverlayIndex:TImageIndex;//f1C
    FStateIndex:TImageIndex;//f20
    FCaption:String;//f24
    FDeleting:Boolean;//f28
    FProcessedDeleting:Boolean;//f29
    FChecked:Boolean;//f2A
    destructor Destroy; virtual;//004ADD6C
    //procedure v8(?:?); virtual;//v8//004AE3A4
    constructor Create;//004ADD00
  end;
  TListItems = class(TPersistent)
  public
    FOwner:TCustomListView;//f4
    FUpdateCount:Integer;//f8
    FNoRedraw:Boolean;//fC
    destructor Destroy; virtual;//004AE638
    procedure DefineProperties(Filer:TFiler); virtual;//v4//004AEBE8
    //procedure v8(?:?); virtual;//v8//004AEAC8
    constructor Create;//004AE5E8
    procedure Clear;//004AE84C
    procedure BeginUpdate;//004AE874
    procedure EndUpdate;//004AEAA4
    procedure ReadData(Stream:TStream);//004AEC40
    procedure WriteData(Stream:TStream);//004AEEA4
  end;
  TWorkArea = class(TCollectionItem)
  public
    FRect:TRect;//fC
    FDisplayName:String;//f1C
    FColor:TColor;//f20
    //procedure vC(?:?); virtual;//vC//004AD75C
    //procedure v18(?:?); virtual;//v18//004AD77C
    constructor v1C; virtual;//v1C//004AD700
  end;
  TWorkAreas = class(TOwnedCollection)
  public
    //procedure v1C(?:?); virtual;//v1C//004AD7C8
  end;
  TIconArrangement = (iaTop, iaLeft);
  TIconOptions = class(TPersistent)
  public
    FListView:TCustomListView;//f4
    Arrangement:TIconArrangement;//f8
    AutoArrange:Boolean;//f9
    WrapText:Boolean;//fA
    constructor Create;//004AF1DC
    procedure SetArrangement(Value:TIconArrangement);//004AF264
    procedure SetAutoArrange(Value:Boolean);//004AF294
    procedure SetWrapText(Value:Boolean);//004AF2C4
  end;
  TViewStyle = (vsIcon, vsSmallIcon, vsList, vsReport);
  TItemState = (isNone, isCut, isDropHilited, isFocused, isSelected, isActivating);
  TItemStates = set of TItemState;
  TItemChange = (ctText, ctImage, ctState);
  TItemFind = (ifData, ifPartialString, ifExactString, ifNearest);
  TSearchDirection = (sdLeft, sdRight, sdAbove, sdBelow, sdAll);
  TListHotTrackStyle = (htHandPoint, htUnderlineCold, htUnderlineHot);
  TListHotTrackStyles = set of TListHotTrackStyle;
  TLVDeletedEvent = procedure(Sender:TObject; Item:TListItem) of object;;
  TLVEditingEvent = procedure(Sender:TObject; Item:TListItem; var AllowEdit:Boolean) of object;;
  TLVEditedEvent = procedure(Sender:TObject; Item:TListItem; var S:String) of object;;
  TLVChangeEvent = procedure(Sender:TObject; Item:TListItem; Change:TItemChange) of object;;
  TLVChangingEvent = procedure(Sender:TObject; Item:TListItem; Change:TItemChange; var AllowChange:Boolean) of object;;
  TLVColumnClickEvent = procedure(Sender:TObject; Column:TListColumn) of object;;
  TLVColumnRClickEvent = procedure(Sender:TObject; Column:TListColumn; Point:TPoint) of object;;
  TLVCompareEvent = procedure(Sender:TObject; Item1:TListItem; Item2:TListItem; Data:Integer; var Compare:Integer) of object;;
  TLVNotifyEvent = procedure(Sender:TObject; Item:TListItem) of object;;
  TLVSelectItemEvent = procedure(Sender:TObject; Item:TListItem; Selected:Boolean) of object;;
  TLVDrawItemEvent = procedure(Sender:TCustomListView; Item:TListItem; Rect:TRect; State:TOwnerDrawState) of object;;
  TLVCustomDrawEvent = procedure(Sender:TCustomListView; const ARect:TRect; var DefaultDraw:Boolean) of object;;
  TLVCustomDrawItemEvent = procedure(Sender:TCustomListView; Item:TListItem; State:TCustomDrawState; var DefaultDraw:Boolean) of object;;
  TLVCustomDrawSubItemEvent = procedure(Sender:TCustomListView; Item:TListItem; SubItem:Integer; State:TCustomDrawState; var DefaultDraw:Boolean) of object;;
  TLVAdvancedCustomDrawEvent = procedure(Sender:TCustomListView; const ARect:TRect; Stage:TCustomDrawStage; var DefaultDraw:Boolean) of object;;
  TLVAdvancedCustomDrawItemEvent = procedure(Sender:TCustomListView; Item:TListItem; State:TCustomDrawState; Stage:TCustomDrawStage; var DefaultDraw:Boolean) of object;;
  TLVAdvancedCustomDrawSubItemEvent = procedure(Sender:TCustomListView; Item:TListItem; SubItem:Integer; State:TCustomDrawState; Stage:TCustomDrawStage; var DefaultDraw:Boolean) of object;;
  TLVOwnerDataEvent = procedure(Sender:TObject; Item:TListItem) of object;;
  TLVOwnerDataFindEvent = procedure(Sender:TObject; Find:TItemFind; const FindString:String; const FindPosition:TPoint; FindData:Pointer; StartIndex:Integer; Direction:TSearchDirection; Wrap:Boolean; var Index:Integer) of object;;
  TLVOwnerDataHintEvent = procedure(Sender:TObject; StartIndex:Integer; EndIndex:Integer) of object;;
  TLVOwnerDataStateChangeEvent = procedure(Sender:TObject; StartIndex:Integer; EndIndex:Integer; OldState:TItemStates; NewState:TItemStates) of object;;
  TLVSubItemImageEvent = procedure(Sender:TObject; Item:TListItem; SubItem:Integer; var ImageIndex:Integer) of object;;
  TLVInfoTipEvent = procedure(Sender:TObject; Item:TListItem; var InfoTip:String) of object;;
  TCustomListView = class(TCustomMultiSelectListControl)
  public
    FCanvas:TCanvas;//f210
    FBorderStyle:TBorderStyle;//f214
    FViewStyle:TViewStyle;//f215
    FReadOnly:Boolean;//f216
    FLargeImages:TCustomImageList;//f218
    FSmallImages:TCustomImageList;//f21C
    FStateImages:TCustomImageList;//f220
    FDragImage:TDragImageList;//f224
    FMultiSelect:Boolean;//f228
    FSortType:TSortType;//f229
    FColumnClick:Boolean;//f22A
    FShowColumnHeaders:Boolean;//f22B
    FListItems:TListItems;//f22C
    FClicked:Boolean;//f230
    FRClicked:Boolean;//f231
    FIconOptions:TIconOptions;//f234
    FHideSelection:Boolean;//f238
    FListColumns:TListColumns;//f23C
    FMemStream:TMemoryStream;//f240
    FOwnerData:Boolean;//f244
    FOwnerDraw:Boolean;//f245
    FColStream:TMemoryStream;//f248
    FCheckStream:TMemoryStream;//f24C
    FEditInstance:Pointer;//f250
    FDefEditProc:Pointer;//f254
    FEditHandle:HWND;//f258
    FHeaderInstance:Pointer;//f25C
    FDefHeaderProc:Pointer;//f260
    FHeaderHandle:HWND;//f264
    FAllocBy:Integer;//f268
    FDragIndex:Integer;//f26C
    FLastDropTarget:TListItem;//f270
    FCheckboxes:Boolean;//f274
    FFlatScrollBars:Boolean;//f275
    FFullDrag:Boolean;//f276
    FGridLines:Boolean;//f277
    FHotTrack:Boolean;//f278
    FHotTrackStyles:TListHotTrackStyles;//f279
    FRowSelect:Boolean;//f27A
    FLargeChangeLink:TChangeLink;//f27C
    FSmallChangeLink:TChangeLink;//f280
    FStateChangeLink:TChangeLink;//f284
    FSavedSort:TSortType;//f288
    FReading:Boolean;//f289
    FCanvasChanged:Boolean;//f28A
    FTempItem:TListItem;//f28C
    FWorkAreas:TWorkAreas;//f290
    FShowWorkAreas:Boolean;//f294
    FUpdatingColumnOrder:Boolean;//f295
    FOurFont:Integer;//f298
    FStockFont:Integer;//f29C
    FOwnerDataCount:Integer;//f2A0
    FOnAdvancedCustomDraw:TLVAdvancedCustomDrawEvent;//f2A8
    f2AA:word;//f2AA
    f2AC:dword;//f2AC
    FOnAdvancedCustomDrawItem:TLVAdvancedCustomDrawItemEvent;//f2B0
    f2B2:word;//f2B2
    f2B4:dword;//f2B4
    FOnAdvancedCustomDrawSubItem:TLVAdvancedCustomDrawSubItemEvent;//f2B8
    f2BA:word;//f2BA
    f2BC:dword;//f2BC
    FOnChange:TLVChangeEvent;//f2C0
    f2C2:word;//f2C2
    f2C4:dword;//f2C4
    FOnChanging:TLVChangingEvent;//f2C8
    f2CA:word;//f2CA
    f2CC:dword;//f2CC
    FOnColumnClick:TLVColumnClickEvent;//f2D0
    f2D2:word;//f2D2
    f2D4:dword;//f2D4
    FOnColumnDragged:TNotifyEvent;//f2D8
    FOnColumnRightClick:TLVColumnRClickEvent;//f2E0
    f2E2:word;//f2E2
    f2E4:dword;//f2E4
    FOnCompare:TLVCompareEvent;//f2E8
    f2EA:word;//f2EA
    FOnCustomDraw:TLVCustomDrawEvent;//f2F0
    f2F2:word;//f2F2
    f2F4:dword;//f2F4
    FOnCustomDrawItem:TLVCustomDrawItemEvent;//f2F8
    f2FA:word;//f2FA
    f2FC:dword;//f2FC
    FOnCustomDrawSubItem:TLVCustomDrawSubItemEvent;//f300
    f302:word;//f302
    f304:dword;//f304
    FOnData:TLVOwnerDataEvent;//f308
    f30A:word;//f30A
    f30C:dword;//f30C
    FOnDataFind:TLVOwnerDataFindEvent;//f310
    f312:word;//f312
    f314:dword;//f314
    FOnDataHint:TLVOwnerDataHintEvent;//f318
    f31A:word;//f31A
    f31C:dword;//f31C
    FOnDataStateChange:TLVOwnerDataStateChangeEvent;//f320
    f322:word;//f322
    f324:dword;//f324
    FOnDeletion:TLVDeletedEvent;//f328
    f32A:word;//f32A
    f32C:dword;//f32C
    FOnDrawItem:TLVDrawItemEvent;//f330
    f332:word;//f332
    f334:dword;//f334
    FOnEdited:TLVEditedEvent;//f338
    f33A:word;//f33A
    f33C:dword;//f33C
    FOnEditing:TLVEditingEvent;//f340
    f342:word;//f342
    f344:dword;//f344
    FOnGetImageIndex:TLVNotifyEvent;//f348
    f34A:word;//f34A
    f34C:dword;//f34C
    FOnGetSubItemImage:TLVSubItemImageEvent;//f350
    f352:word;//f352
    f354:dword;//f354
    FOnInfoTip:TLVInfoTipEvent;//f358
    f35A:word;//f35A
    f35C:dword;//f35C
    FOnInsert:TLVDeletedEvent;//f360
    f362:word;//f362
    f364:dword;//f364
    FOnSelectItem:TLVSelectItemEvent;//f368
    f36A:word;//f36A
    f36C:dword;//f36C
    FOnCreateItemClass:TLVCreateItemClassEvent;//f370
    f372:word;//f372
    f374:dword;//f374
    destructor Destroy; virtual;//004AF5C8
    procedure Notification(AComponent:TComponent; Operation:TOperation); virtual;//v10//004AFCA8
    constructor Create(AOwner:TComponent); virtual;//v2C//004AF368
    //function v4C:?; virtual;//v4C//004B23C4
    //procedure v74(?:?); virtual;//v74//004B23F8
    //procedure v98(?:?); virtual;//v98//004AF714
    procedure CreateWnd; virtual;//vA0//004AF940
    procedure vB0; virtual;//vB0//004AFB38
    //function vC8:?; virtual;//vC8//004B405C
    //function vCC:?; virtual;//vCC//004B0D54
    //procedure vD0(?:?); virtual;//vD0//004B0660
    //procedure vD4(?:?; ?:?); virtual;//vD4//004B2164
    procedure Clear; virtual;//vD8//004B40D0
    procedure vDC; virtual;//vDC//004B3ED4
    //procedure vE0(?:?); virtual;//vE0//004B3F24
    procedure vE4; virtual;//vE4//004B3FB0
    procedure vEC; virtual;//vEC//004B4080
    //function vF0:?; virtual;//vF0//004B1100
    procedure SetMultiSelect(Value:Boolean); virtual;//vF4//004B06B8
    //function vF8:?; virtual;//vF8//004B0EC8
    //function vFC:?; virtual;//vFC//004B0F1C
    //function v100(?:?; ?:?):?; virtual;//v100//004B371C
    //function v104(?:?; ?:?; ?:?):?; virtual;//v104//004B3790
    //function v108(?:?; ?:?; ?:?; ?:?):?; virtual;//v108//004B3810
    //procedure v10C(?:?; ?:?); virtual;//v10C//004B3CC8
    //procedure v110(?:?; ?:?; ?:?); virtual;//v110//004B3898
    //function v114(?:?; ?:?):?; virtual;//v114//004B0D88
    //function v118(?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?):?; virtual;//v118//004B0DCC
    //function v11C(?:?; ?:?):?; virtual;//v11C//004B0E2C
    //function v120(?:?; ?:?; ?:?; ?:?):?; virtual;//v120//004B0E74
    //function v124(?:?; ?:?):?; virtual;//v124//004B35B8
    procedure SetViewStyle(Value:TViewStyle); virtual;//v128//004B0C28
    procedure WMPaint(Message:TWMPaint); message WM_PAINT;//004B3B14
    //procedure WMWindowPosChangedMsg(?:?); message WM_WINDOWPOSCHANGED;//004B3420
    //procedure WMNotify(?:?); message WM_NOTIFY;//004B0844
    //procedure WMContextMenu(?:?); message WM_CONTEXTMENU;//004B3E50
    //procedure WMVScroll(?:?); message WM_VSCROLL;//004B41C0
    //procedure WMLButtonDown(?:?); message WM_LBUTTONDOWN;//004B30B8
    //procedure WMParentNotify(?:?); message WM_PARENTNOTIFY;//004B0CDC
    //procedure CMColorChanged(?:?); message CM_COLORCHANGED;//004B07DC
    //procedure CMFontChanged(?:?); message CM_FONTCHANGED;//004B0B20
    //procedure CMCtl3DChanged(?:?); message CM_CTL3DCHANGED;//004B0814
    //procedure CMDrag(?:?); message CM_DRAG;//004B25DC
    //procedure CMHintShow(?:?); message CM_HINTSHOW;//004B3B74
    //procedure sub_004B3464(?:?); dynamic;//004B3464
    //procedure sub_004B11B4(?:?); dynamic;//004B11B4
    //procedure sub_004B2130(?:?); dynamic;//004B2130
    //procedure sub_004B232C(?:?); dynamic;//004B232C
    //procedure sub_004B2298(?:?); dynamic;//004B2298
    //procedure sub_004B20EC(?:?; ?:?); dynamic;//004B20EC
    //procedure sub_004B20B8(?:?); dynamic;//004B20B8
    //procedure sub_004B223C(?:?; ?:?); dynamic;//004B223C
    //procedure sub_004B22EC(?:?); dynamic;//004B22EC
    //procedure sub_004B21D4(?:?; ?:?); dynamic;//004B21D4
    //procedure sub_004B3DA4(?:?; ?:?; ?:?; ?:?); dynamic;//004B3DA4
    procedure sub_004B4128; dynamic;//004B4128
    //procedure sub_004B249C(?:?); dynamic;//004B249C
    //procedure sub_004B259C(?:?; ?:?; ?:?); dynamic;//004B259C
    //procedure sub_004B2028(?:?; ?:?); dynamic;//004B2028
    //procedure sub_004B4140(?:?; ?:?); dynamic;//004B4140
  end;
  TListView = class(TCustomListView)
    procedure SetCheckboxes(Value:Boolean);//004B0398
    procedure SetGridLines(Value:Boolean);//004B044C
    procedure SetHotTrack(Value:Boolean);//004B0480
    procedure SetHotTrackStyles(Value:TListHotTrackStyles);//004B04B4
    procedure SetOwnerData(Value:Boolean);//004B04E8
    procedure SetOwnerDraw(Value:Boolean);//004B0528
    procedure SetRowSelect(Value:Boolean);//004B055C
    procedure SetFlatScrollBars(Value:Boolean);//004B0590
    procedure SetFullDrag(Value:Boolean);//004B05C4
    procedure SetBorderStyle(Value:TBorderStyle);//004B05F8
    procedure SetColumnClick(Value:Boolean);//004B062C
    procedure SetShowColumnHeaders(Value:Boolean);//004B06EC
    procedure SetAllocBy(Value:Integer);//004B0794
    procedure SetHideSelection(Value:Boolean);//004B0B78
    procedure SetReadOnly(Value:Boolean);//004B0BAC
    procedure SetIconOptions(Value:TIconOptions);//004B0BE0
    procedure SetItems(Value:TListItems);//004B27F4
    procedure SetColumns(Value:TListColumns);//004B2818
    procedure SetSortType(Value:TSortType);//004B287C
    procedure SetLargeImages(Value:TCustomImageList);//004B2948
    procedure SetSmallImages(Value:TCustomImageList);//004B2A00
    procedure SetStateImages(Value:TCustomImageList);//004B2ABC
    procedure SetShowWorkAreas(Value:Boolean);//004B3B50
    procedure SetHoverTime(Value:Integer);//004B3D04
    //function GetHoverTime:?;//004B3D34
    function IsStoredItems(Value:TListItems):Boolean;//004B3D54
  end;
  TListViewActionLink = class(TListActionLink)
  public
    //procedure v88(?:?); virtual;//v88//004B5BE4
    //procedure v90(?:?); virtual;//v90//004B5B94
    //procedure v94(?:?; ?:?; ?:?); virtual;//v94//004B5B14
  end;
  TComboExItem = class(TListControlItem)
  public
    SelectedImageIndex:TImageIndex;//f1C
    OverlayImageIndex:TImageIndex;//f20
    Indent:Integer;//f24
    //procedure v8(?:?); virtual;//v8//004B4238
    //procedure v14(?:?); virtual;//v14//004B43D0
    //procedure v18(?:?); virtual;//v18//004B4350
    //procedure v20(?:?); virtual;//v20//004B42A8
    //procedure v24(?:?); virtual;//v24//004B42FC
    //procedure v28(?:?); virtual;//v28//004B4380
    procedure SetOverlayImageIndex(Value:TImageIndex); virtual;//v2C//004B43FC
    procedure SetSelectedImageIndex(Value:TImageIndex); virtual;//v30//004B442C
  end;
  TComboExItems = class(TListControlItems)
  public
    //procedure v14(?:?; ?:?); virtual;//v14//004B4564
    //procedure v2C(?:?); virtual;//v2C//004B45F4
  end;
  TComboBoxExStrings = class(TCustomComboBoxStrings)
  public
    .............................FItems:TComboExItems;//f14
    destructor Destroy; virtual;//004B56E0
    //procedure vC(?:?; ?:?); virtual;//vC//004B58C8
    //function v10:?; virtual;//v10//004B58F4
    //function v14:?; virtual;//v14//004B5914
    //function v18(?:?):?; virtual;//v18//004B5934
    //procedure v20(?:?; ?:?); virtual;//v20//004B5A40
    //procedure v24(?:?; ?:?); virtual;//v24//004B5A64
    //procedure v30(?:?); virtual;//v30//004B5A94
    //function v38(?:?):?; virtual;//v38//004B558C
    //function v3C(?:?; ?:?):?; virtual;//v3C//004B55C4
    procedure Clear; virtual;//v44//004B560C
    //procedure v48(?:?); virtual;//v48//004B571C
    //procedure v4C(?:?; ?:?); virtual;//v4C//004B573C
    //function v54(?:?):?; virtual;//v54//004B595C
    //function v58(?:?):?; virtual;//v58//004B59C0
    //procedure v60(?:?; ?:?); virtual;//v60//004B59E4
    //procedure v70(?:?; ?:?); virtual;//v70//004B5A14
    //function v80:?; virtual;//v80//004B5AE4
    //function v84:?; virtual;//v84//004B5AFC
    constructor Create;//004B5674
  end;
  TCustomComboBoxEx = class(TCustomCombo)
  public
    FAutoCompleteIntf:IAutoComplete;//f268
    FAutoCompleteOptions:TAutoCompleteOptions;//f26C
    FComboBoxExHandle:HWND;//f270
    FComboBoxExDefProc:Pointer;//f274
    FComboBoxExInstance:Pointer;//f278
    FImageChangeLink:TChangeLink;//f27C
    FImages:TCustomImageList;//f280
    FMemStream:TCollection;//f284
    FReading:Boolean;//f288
    FStyle:TComboBoxExStyle;//f289
    FStyleEx:TComboBoxExStyles;//f28A
    FItemsEx:TComboExItems;//f28C
    FOnBeginEdit:TNotifyEvent;//f290
    f292:word;//f292
    f294:dword;//f294
    FOnEndEdit:TNotifyEvent;//f298
    f29A:word;//f29A
    f29C:dword;//f29C
    destructor Destroy; virtual;//004B4948
    procedure Notification(AComponent:TComponent; Operation:TOperation); virtual;//v10//004B4C3C
    constructor Create(AOwner:TComponent); virtual;//v2C//004B47E8
    //procedure v74(?:?); virtual;//v74//004B4BE0
    //procedure v98(?:?); virtual;//v98//004B4A4C
    procedure CreateWnd; virtual;//vA0//004B4E08
    procedure vB0; virtual;//vB0//004B5324
    //function vF8:?; virtual;//vF8//004B5194
    //function vFC:?; virtual;//vFC//004B530C
    //function v104:?; virtual;//v104//004B5170
    //procedure v108(?:?); virtual;//v108//004B52BC
    //procedure WMLButtonDown(?:?); message WM_LBUTTONDOWN;//004B4D38
    //procedure CMParentColorChanged(?:?); message CM_PARENTCOLORCHANGED;//004B4C7C
    //procedure CMColorChanged(?:?); message CM_COLORCHANGED;//004B4CB8
    //procedure sub_004B49D8(?:?); dynamic;//004B49D8
    procedure sub_004B5388; dynamic;//004B5388
    procedure sub_004B51AC; dynamic;//004B51AC
    //procedure sub_004B523C(?:?; ?:?); dynamic;//004B523C
  end;
  TComboBoxExActionLink = class(TListActionLink)
  public
    //procedure v90(?:?); virtual;//v90//004B5CA4
    //procedure v94(?:?; ?:?; ?:?); virtual;//v94//004B5C28
  end;
  TTabStrings = class(TStrings)
  public
    .....................FTabControl:TCustomTabControl;//f10
    //procedure vC(?:?; ?:?); virtual;//vC//004A7E7C
    //function v14:?; virtual;//v14//004A7F80
    //function v18(?:?):?; virtual;//v18//004A7FB0
    //procedure v20(?:?; ?:?); virtual;//v20//004A805C
    //procedure v24(?:?; ?:?); virtual;//v24//004A8154
    //procedure v30(?:?); virtual;//v30//004A82F8
    procedure Clear; virtual;//v44//004A7D5C
    //procedure v48(?:?); virtual;//v48//004A7DD8
    //procedure v60(?:?; ?:?); virtual;//v60//004A8200
  end;
  _DynArr_68_86 = array of ?;
//elSize = 4
//varType equivalent: varInteger;
  _DynArr_68_96 = array of ?;
//elSize = 10;
  TSubItems = class(TStringList)
  public
    FOwner:TListItem;//f30
    FImageIndices:TList;//f34
    destructor Destroy; virtual;//004ADA38
    //procedure v20(?:?; ?:?); virtual;//v20//004ADC28
    //procedure v30(?:?); virtual;//v30//004ADC94
    //function v38(?:?):?; virtual;//v38//004ADA74
    //function v3C(?:?; ?:?):?; virtual;//v3C//004ADAB0
    procedure Clear; virtual;//v44//004ADAF4
    //procedure v48(?:?); virtual;//v48//004ADB14
    //procedure v60(?:?; ?:?); virtual;//v60//004ADBC8
    constructor Create;//004AD9D8
  end;
  _DynArr_68_27 = array of ?;
//elSize = 4
//varType equivalent: varInteger;
  TComboBoxExEnumerator = class(TInterfacedObject)
  public
    FItems:TComboExItems;//fC
    FCurrentIndex:Integer;//f10
    constructor Create;//004B5D48
  end;
    //function sub_004A7B30(?:?):?;//004A7B30
    //procedure sub_004A7B6C(?:?);//004A7B6C
    //function sub_004A7B9C:?;//004A7B9C
    //procedure sub_004A7BE0(?:TPageControl; ?:?; ?:?);//004A7BE0
    //procedure sub_004A7D3C(?:?);//004A7D3C
    procedure Clear;//004A7D5C
    //procedure sub_004A7DD8(?:?);//004A7DD8
    //procedure sub_004A7E7C(?:?; ?:?);//004A7E7C
    //function sub_004A7F80:?;//004A7F80
    //function sub_004A7FB0(?:?):?;//004A7FB0
    //procedure sub_004A805C(?:?; ?:?);//004A805C
    //procedure sub_004A8154(?:?; ?:?);//004A8154
    //procedure sub_004A8200(?:?; ?:?);//004A8200
    //procedure sub_004A82F8(?:?);//004A82F8
    constructor Create(AOwner:TComponent);//004A8354
    destructor Destroy;//004A8444
    procedure sub_004A84AC;//004A84AC
    //function sub_004A84E4(?:?):?;//004A84E4
    procedure sub_004A84FC;//004A84FC
    //procedure sub_004A8528(?:?);//004A8528
    procedure CreateWnd;//004A8678
    //procedure sub_004A872C(?:?; ?:?; ?:?);//004A872C
    //procedure sub_004A8780(?:TCustomTabControl; ?:?);//004A8780
    //function sub_004A87C8(?:?):?;//004A87C8
    procedure Loaded;//004A8838
    procedure Notification(AComponent:TComponent; Operation:TOperation);//004A8894
    //procedure sub_004A8978(?:?; ?:?);//004A8978
    //function sub_004A89A0(?:TPageControl; ?:?):?;//004A89A0
    procedure sub_004A8C90(?:Integer);//004A8C90
    procedure sub_004A8E60(?:TCustomTabControl);//004A8E60
    procedure sub_004A8EB0(?:TCustomTabControl);//004A8EB0
    procedure sub_004A8EE4(?:TCustomTabControl);//004A8EE4
    procedure CNDrawItem(var Message:TWMDrawItem);//004A8FF8
    //procedure WMDestroy(?:?);//004A90EC
    //procedure WMNotifyFormat(?:?);//004A91A8
    procedure WMSize(Message:TWMSize);//004A91E0
    //procedure CMFontChanged(?:?);//004A9210
    //procedure CMSysColorChange(?:?);//004A9248
    //procedure CMTabStopChanged(?:?);//004A9280
    //procedure sub_004A92A4(?:?);//004A92A4
    //procedure CMDialogChar(?:?);//004A92FC
    //procedure sub_004A93F8(?:?);//004A93F8
    procedure TCMAdjustRect(var Message:TMessage);//004A9430
    constructor Create(AOwner:TComponent);//004A94B4
    destructor Destroy;//004A953C
    procedure sub_004A95B0;//004A95B0
    procedure sub_004A95DC;//004A95DC
    //function sub_004A9648(?:TTabSheet):?;//004A9648
    //procedure sub_004A96B4(?:?);//004A96B4
    //procedure sub_004A96E4(?:?);//004A96E4
    procedure sub_004A976C(?:TTabSheet; ?:TPageControl);//004A976C
    //procedure sub_004A9880(?:TTabSheet; ?:?);//004A9880
    procedure sub_004A9920(?:TTabSheet);//004A9920
    //procedure CMTextChanged(?:?);//004A9950
    //procedure CMShowingChanged(?:?);//004A9980
    //procedure WMNCPaint(?:?);//004A9A8C
    //procedure sub_004A9BAC(?:?);//004A9BAC
    constructor Create(AOwner:TComponent);//004A9C08
    destructor Destroy;//004A9C74
    procedure sub_004A9CF0(?:TPageControl);//004A9CF0
    procedure Loaded;//004A9D40
    //function sub_004A9D5C(?:?):?;//004A9D5C
    procedure sub_004A84FC;//004A9D88
    procedure sub_004A9DE8(?:TPageControl; ?:TTabSheet);//004A9DE8
    //procedure sub_004A9F4C(?:?; ?:?; ?:?);//004A9F4C
    //procedure sub_004A9FC4(?:?; ?:?);//004A9FC4
    //procedure sub_004A9FF4(?:?; ?:?; ?:?; ?:?; ?:?);//004A9FF4
    //procedure sub_004AA04C(?:?);//004AA04C
    //function sub_004AA098(?:TPageControl; ?:TTabSheet; ?:?; ?:?):?;//004AA098
    //procedure sub_004834DC(?:?; ?:?);//004AA16C
    //function sub_004AA1BC(?:?):?;//004AA1BC
    //function sub_004AA258(?:TPageControl; ?:?):?;//004AA258
    //function sub_004AA2C4(?:TPageControl; ?:Integer):?;//004AA2C4
    //function sub_004AA2EC(?:?):?;//004AA2EC
    //procedure sub_004AA30C(?:?; ?:?; ?:?; ?:?);//004AA30C
    //procedure sub_004AA358(?:?; ?:TTabSheet);//004AA358
    //procedure sub_004AA390(?:?; ?:?);//004AA390
    //procedure sub_004AA40C(?:TPageControl; ?:?; ?:?);//004AA40C
    procedure sub_004AA438(?:TPageControl; ?:TTabSheet);//004AA438
    //procedure sub_004AA4A4(?:TPageControl; ?:?; ?:?);//004AA4A4
    //procedure sub_0048355C(?:?; ?:?);//004AA5B0
    //procedure sub_004AA5D0(?:?);//004AA5D0
    procedure sub_004AA618(?:TPageControl; ?:TTabSheet);//004AA618
    procedure sub_004AA684;//004AA684
    //procedure CMDesignHitTest(?:?);//004AA6CC
    //procedure CMDialogKey(?:?);//004AA730
    //procedure CMDockClient(?:?);//004AA7B0
    //procedure sub_004AA918(?:?);//004AA918
    //procedure CMUndockClient(?:?);//004AAA04
    //function sub_004AAA4C(?:TPageControl; ?:?):?;//004AAA4C
    //procedure WMLButtonDown(?:?);//004AAB10
    //procedure WMLButtonDblClk(?:?);//004AAB68
    procedure SetTabIndex(Value:Integer);//004AABB4
    //procedure WMEraseBkgnd(?:?);//004AAC1C
    constructor sub_004AAC60;//004AAC60
    //procedure sub_004AACC8(?:?);//004AACC8
    procedure sub_004AADC0(?:TStatusPanel);//004AADC0
    //function sub_004AAE08(?:TStatusPanel):?;//004AAE08
    //function sub_004AAE38(?:TStatusPanel):?;//004AAE38
    //procedure sub_004AAE68(?:?);//004AAE68
    //function sub_004AB008(?:TStatusPanels):?;//004AB008
    procedure sub_00479290;//004AB048
    //procedure sub_004AB064(?:?);//004AB064
    constructor Create(AOwner:TComponent);//004AB0A4
    destructor Destroy;//004AB180
    //procedure sub_004AB1D0(?:?);//004AB1D0
    procedure CreateWnd;//004AB270
    //function sub_004AB310:?;//004AB310
    //procedure sub_004AB34C(?:?; ?:?);//004AB34C
    //procedure sub_004AB418(?:TCustomStatusBar; ?:AnsiString; ?:?; ?:?);//004AB418
    procedure sub_004AB484(?:TCustomStatusBar);//004AB484
    procedure CMBiDiModeChanged(Message:TMessage);//004AB534
    //procedure sub_004AB5D0(?:?);//004AB5D0
    procedure sub_004AB7EC(?:TCustomStatusBar);//004AB7EC
    //procedure sub_004AB828(?:TCustomStatusBar; ?:Integer; ?:?);//004AB828
    //procedure sub_004AB9E0(?:TCustomStatusBar; ?:?; ?:?);//004AB9E0
    //procedure CMWinIniChange(?:?);//004ABB18
    procedure CNDrawItem(var Message:TWMDrawItem);//004ABB50
    //procedure WMGetTextLength(?:?);//004ABC5C
    procedure WMPaint(Message:TWMPaint);//004ABC80
    procedure WMSize(Message:TWMSize);//004ABCA8
    //procedure CMColorChanged(?:?);//004ABD60
    //procedure CMParentFontChanged(?:?);//004ABD84
    //procedure sub_004839E8(?:?);//004ABDC0
    //procedure CMSysColorChange(?:?);//004ABE60
    //procedure CMSysFontChanged(?:?);//004ABE84
    //procedure sub_004ABEA8(?:?; ?:?);//004ABEA8
    procedure SetBounds(ALeft:Integer; ATop:Integer; AWidth:Integer; AHeight:Integer);//004ABEE8
    //procedure sub_004ABF20(?:?);//004ABF20
    //procedure sub_004ABF3C(?:TCustomStatusBar; ?:?);//004ABF3C
    //function sub_004ABFE4:?;//004ABFE4
    //function sub_004AC03C:?;//004AC03C
    //function sub_004AC060:?;//004AC060
    //procedure WMEraseBkgnd(?:?);//004AC078
    constructor Create(AOwner:TComponent);//004AC0E0
    //procedure sub_004AC1F8(?:?);//004AC1F8
    procedure CreateWnd;//004AC2D4
    procedure sub_004AC3D8;//004AC3D8
    //procedure sub_004AC3EC(?:?);//004AC3EC
    //procedure sub_004AC440(?:?);//004AC440
    //procedure sub_004AC554(?:TTrackBar; ?:Integer; ?:Integer; ?:?);//004AC554
    procedure sub_004AC9C8(?:TTrackBar);//004AC9C8
    procedure sub_004ACAA8;//004ACAA8
    //procedure sub_004ACAD4(?:?);//004ACAD4
    //procedure WMEraseBkgnd(?:?);//004ACCCC
    //function sub_004ACD64(?:?; ?:?; ?:?):?;//004ACD64
    //function sub_004ACD90(?:?; ?:?; ?:?):?;//004ACD90
    constructor sub_004ACDBC;//004ACDBC
    destructor Destroy;//004ACE7C
    procedure DefineProperties(Filer:TFiler);//004ACEF4
    //procedure sub_004ACFB4(?:?);//004ACFB4
    procedure sub_004AD0B8(?:TListColumn);//004AD0B8
    //procedure sub_004AD140(?:?);//004AD140
    //procedure sub_004AD44C(?:?);//004AD44C
    //procedure sub_004AD4E8(?:?);//004AD4E8
    //function sub_004AD570(?:TListColumns; ?:?):?;//004AD570
    //function sub_004AD594(?:TCollection):?;//004AD594
    procedure sub_00479290;//004AD5B0
    //procedure sub_004AD5CC(?:?);//004AD5CC
    procedure sub_004AD608(?:TListColumns);//004AD608
    constructor sub_004AD700;//004AD700
    //procedure sub_004AD75C(?:?);//004AD75C
    //procedure sub_004AD77C(?:?);//004AD77C
    //procedure sub_004AD7C8(?:?);//004AD7C8
    //function sub_004AD8A0(?:TWorkAreas; ?:?):?;//004AD8A0
    destructor Destroy;//004ADA38
    //function sub_004ADA74(?:?):?;//004ADA74
    //function sub_004ADAB0(?:?; ?:?):?;//004ADAB0
    procedure Clear;//004ADAF4
    //procedure sub_004ADB14(?:?);//004ADB14
    //function sub_004ADB48(?:TSubItems):?;//004ADB48
    //procedure sub_004ADB6C(?:TSubItems; ?:?);//004ADB6C
    //procedure sub_004ADBC8(?:?; ?:?);//004ADBC8
    //procedure sub_004ADC28(?:?; ?:?);//004ADC28
    //procedure sub_004ADC58(?:TSubItems; ?:?);//004ADC58
    //procedure sub_004ADC94(?:?);//004ADC94
    //function sub_004ADCB8(?:?; ?:?):?;//004ADCB8
    //procedure sub_004ADCDC(?:?; ?:?; ?:?);//004ADCDC
    destructor Destroy;//004ADD6C
    //function sub_004ADDFC(?:?):?;//004ADDFC
    //procedure sub_004ADE18(?:?);//004ADE18
    //function sub_004ADE48(?:TListItem):?;//004ADE48
    //function sub_004ADE68(?:TListItem):?;//004ADE68
    //procedure sub_004ADEC4(?:TListItem; ?:?);//004ADEC4
    procedure sub_004ADF28(?:TListItem);//004ADF28
    procedure sub_004ADF4C(?:TListItem; ?:AnsiString);//004ADF4C
    procedure sub_004AE018(?:TListItem; ?:Pointer);//004AE018
    //function sub_004AE060(?:?; ?:?):?;//004AE060
    //procedure sub_004AE0EC(?:?; ?:?; ?:?);//004AE0EC
    //procedure sub_004AE188(?:TListItem; ?:?; ?:TImageIndex);//004AE188
    procedure sub_004AE320(?:TListItem; ?:Integer);//004AE320
    //procedure sub_004AE3A4(?:?);//004AE3A4
    //function sub_004AE468(?:?; ?:?):?;//004AE468
    procedure sub_004AE4A8(?:TListItem; ?:TStrings);//004AE4A8
    //function sub_004AE4CC(?:TListItem):?;//004AE4CC
    //procedure sub_004AE50C(?:?; ?:?; ?:?);//004AE50C
    //function sub_004AE548(?:?; ?:?):?;//004AE548
    //procedure sub_004AE56C(?:?; ?:?; ?:?);//004AE56C
    destructor Destroy;//004AE638
    //function sub_004AE674(?:TListItems; ?:TCustomListView; ?:?):?;//004AE674
    //function sub_004AE694(?:?; ?:?; ?:?):?;//004AE694
    //function sub_004AE700(?:TListItems):?;//004AE700
    //function sub_004AE738(?:TListItems):?;//004AE738
    //function sub_004AE758(?:TListItems; ?:Integer):?;//004AE758
    //function sub_004AE7EC(?:TListItems; ?:TListItem):?;//004AE7EC
    procedure sub_004AE824(?:TListItems; ?:Integer);//004AE824
    //procedure sub_004AE898(?:TListItems; ?:?);//004AE898
    //procedure sub_004AEAC8(?:?);//004AEAC8
    function WriteItems:Boolean;//004AEB40
    procedure DefineProperties(Filer:TFiler);//004AEBE8
    //function sub_004AEE78(?:?):?;//004AEE78
    //procedure sub_004AF178(?:?; ?:Integer);//004AF178
    //procedure sub_004AF198(?:?; ?:?; ?:?; ?:?);//004AF198
    //function sub_004AF2F4(?:?; ?:?; ?:?):?;//004AF2F4
    constructor Create(AOwner:TComponent);//004AF368
    destructor Destroy;//004AF5C8
    //procedure sub_004AF714(?:?);//004AF714
    procedure ReadCols;//004AF88C
    procedure CreateWnd;//004AF940
    procedure sub_004AFB38;//004AFB38
    //procedure sub_004AFBDC(?:TCustomListView; ?:?; ?:?);//004AFBDC
    //procedure sub_004AFC10(?:?; ?:?);//004AFC10
    procedure Notification(AComponent:TComponent; Operation:TOperation);//004AFCA8
    //procedure sub_004B00C8(?:?; ?:?; ?:?);//004B00C8
    procedure sub_004B00F0(?:TCustomListView);//004B00F0
    procedure sub_004B0234(?:TCustomListView);//004B0234
    procedure sub_004B02EC(?:TCustomListView);//004B02EC
    //procedure sub_004B0660(?:?);//004B0660
    procedure SetMultiSelect(Value:Boolean);//004B06B8
    procedure sub_004B0720(?:TCustomListView; ?:TColor);//004B0720
    procedure sub_004B0750(?:TCustomListView; ?:TColor);//004B0750
    //procedure CMColorChanged(?:?);//004B07DC
    //procedure CMCtl3DChanged(?:?);//004B0814
    //procedure WMNotify(?:?);//004B0844
    //function sub_004B0AE0(?:TCustomListView):?;//004B0AE0
    //function sub_004B0B00(?:TCustomListView):?;//004B0B00
    //procedure CMFontChanged(?:?);//004B0B20
    procedure SetViewStyle(Value:TViewStyle);//004B0C28
    //procedure WMParentNotify(?:?);//004B0CDC
    //function sub_004B0D54:?;//004B0D54
    //function sub_004B0D88(?:?; ?:?):?;//004B0D88
    //function sub_004B0DCC(?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?):?;//004B0DCC
    //function sub_004B0E2C(?:?; ?:?):?;//004B0E2C
    //function sub_004B0E74(?:?; ?:?; ?:?; ?:?):?;//004B0E74
    //function sub_004B0EC8:?;//004B0EC8
    //function sub_004B0F1C:?;//004B0F1C
    //function sub_004B0F40(?:?):?;//004B0F40
    //function sub_004B0F90(?:TCustomListView; ?:Byte):?;//004B0F90
    //function sub_004B1100:?;//004B1100
    //function sub_004B1120(?:?):?;//004B1120
    //function sub_004B1164(?:?):?;//004B1164
    //procedure sub_004B11B4(?:?);//004B11B4
    //procedure sub_004B2028(?:?; ?:?);//004B2028
    //procedure sub_004B20B8(?:?);//004B20B8
    //procedure sub_004B20EC(?:?; ?:?);//004B20EC
    //procedure sub_004B2130(?:?);//004B2130
    //procedure sub_004B2164(?:?; ?:?);//004B2164
    //procedure sub_004B21D4(?:?; ?:?);//004B21D4
    //procedure sub_004B223C(?:?; ?:?);//004B223C
    //procedure sub_004B2298(?:?);//004B2298
    //procedure sub_004B22EC(?:?);//004B22EC
    //procedure sub_004B232C(?:?);//004B232C
    //function sub_004B23C4:?;//004B23C4
    //procedure sub_004B23F8(?:?);//004B23F8
    //procedure sub_004B249C(?:?);//004B249C
    //procedure sub_004B259C(?:?; ?:?; ?:?);//004B259C
    //procedure CMDrag(?:?);//004B25DC
    //procedure sub_004B2750(?:TCustomListView; ?:?; ?:?; ?:?; ?:?);//004B2750
    //function sub_004B283C(?:TCustomListView):?;//004B283C
    //procedure sub_004B28DC(?:?; ?:?);//004B28DC
    //function sub_004B28FC(?:TCustomListView):?;//004B28FC
    //function sub_004B2BC0(?:TCustomListView; ?:?):?;//004B2BC0
    //function sub_004B2BE8(?:TCustomListView):?;//004B2BE8
    //function sub_004B2C14(?:TCustomListView):?;//004B2C14
    //procedure sub_004B2C50(?:TCustomListView; ?:?);//004B2C50
    //procedure sub_004B2CA4(?:TCustomListView; ?:?);//004B2CA4
    //function sub_004B2CD8(?:TCustomListView; ?:?; ?:?; ?:?):?;//004B2CD8
    //function sub_004B2DCC(?:TCustomListView; ?:?; ?:?):?;//004B2DCC
    //function sub_004B2E44(?:TCustomListView; ?:TPoint; ?:?):?;//004B2E44
    //procedure sub_004B2EB4(?:TListView; ?:?);//004B2EB4
    procedure sub_004B2EE0(?:TListView);//004B2EE0
    //procedure sub_004B2F38(?:TListView; ?:?);//004B2F38
    //procedure WMLButtonDown(?:?);//004B30B8
    procedure sub_004B325C(?:TCustomListView);//004B325C
    //procedure WMWindowPosChangedMsg(?:?);//004B3420
    //procedure sub_004B3464(?:?);//004B3464
    //procedure sub_004B359C(?:?; ?:?);//004B359C
    //function sub_004B35B8(?:?; ?:?):?;//004B35B8
    //function sub_004B371C(?:?; ?:?):?;//004B371C
    //function sub_004B3790(?:?; ?:?; ?:?):?;//004B3790
    //function sub_004B3810(?:?; ?:?; ?:?; ?:?):?;//004B3810
    //procedure sub_004B3898(?:?; ?:?; ?:?);//004B3898
    //procedure sub_004B3924(?:TCustomListView; ?:?; ?:?; ?:?);//004B3924
    procedure sub_004B397C(?:TCustomListView);//004B397C
    procedure WMPaint(Message:TWMPaint);//004B3B14
    //procedure CMHintShow(?:?);//004B3B74
    //procedure sub_004B3CC8(?:?; ?:?);//004B3CC8
    //procedure sub_004B3DA4(?:?; ?:?; ?:?; ?:?);//004B3DA4
    //function sub_004B3DF0(?:TCustomListView; ?:?):?;//004B3DF0
    //procedure WMContextMenu(?:?);//004B3E50
    procedure sub_004B3ED4;//004B3ED4
    //procedure sub_004B3F24(?:?);//004B3F24
    procedure sub_004B3FB0;//004B3FB0
    //function sub_004B405C:?;//004B405C
    procedure sub_004B4080;//004B4080
    procedure Clear;//004B40D0
    procedure sub_004B4128;//004B4128
    //procedure sub_004B4140(?:?; ?:?);//004B4140
    //procedure WMVScroll(?:?);//004B41C0
    //procedure sub_004B4238(?:?);//004B4238
    //procedure sub_004B42A8(?:?);//004B42A8
    //procedure sub_004B42FC(?:?);//004B42FC
    //procedure sub_004B4350(?:?);//004B4350
    //procedure sub_004B4380(?:?);//004B4380
    //procedure sub_004B43D0(?:?);//004B43D0
    procedure SetOverlayImageIndex(Value:TImageIndex);//004B43FC
    procedure SetSelectedImageIndex(Value:TImageIndex);//004B442C
    //function sub_004B445C(?:TComboExItems):?;//004B445C
    //function sub_004B4478(?:TComboExItems; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?):?;//004B4478
    //function sub_004B44F0(?:TComboExItems; ?:?):?;//004B44F0
    //function sub_004B4514(?:TComboExItems; ?:?):?;//004B4514
    //procedure sub_004B4564(?:?; ?:?);//004B4564
    //procedure sub_004B45F4(?:?);//004B45F4
    constructor Create(AOwner:TComponent);//004B47E8
    destructor Destroy;//004B4948
    //procedure sub_004B49D8(?:?);//004B49D8
    //procedure sub_004B4A4C(?:?);//004B4A4C
    //procedure sub_004B4AE0(?:TCustomComboBoxEx; ?:?);//004B4AE0
    //procedure sub_004B4BAC(?:?; ?:?);//004B4BAC
    //procedure sub_004B4BE0(?:?);//004B4BE0
    procedure Notification(AComponent:TComponent; Operation:TOperation);//004B4C3C
    //procedure CMParentColorChanged(?:?);//004B4C7C
    //procedure CMColorChanged(?:?);//004B4CB8
    //procedure WMLButtonDown(?:?);//004B4D38
    procedure CreateWnd;//004B4E08
    //function sub_004B5170:?;//004B5170
    //function sub_004B5194:?;//004B5194
    procedure sub_004B51AC;//004B51AC
    //procedure sub_004B51C4(?:TCustomComboBoxEx; ?:?);//004B51C4
    //procedure sub_004B523C(?:?; ?:?);//004B523C
    //procedure sub_004B52BC(?:?);//004B52BC
    //function sub_004B530C:?;//004B530C
    procedure sub_004B5324;//004B5324
    procedure sub_004B5388;//004B5388
    procedure sub_004B53E4(?:TCustomComboBoxEx);//004B53E4
    //function sub_004B558C(?:?):?;//004B558C
    //function sub_004B55C4(?:?; ?:?):?;//004B55C4
    procedure Clear;//004B560C
    destructor Destroy;//004B56E0
    //procedure sub_004B571C(?:?);//004B571C
    //procedure sub_004B573C(?:?; ?:?);//004B573C
    //procedure sub_004B58C8(?:?; ?:?);//004B58C8
    //function sub_004B58F4:?;//004B58F4
    //function sub_004B5914:?;//004B5914
    //function sub_004B5934(?:?):?;//004B5934
    //function sub_004B595C(?:?):?;//004B595C
    //function sub_004B59C0(?:?):?;//004B59C0
    //procedure sub_004B59E4(?:?; ?:?);//004B59E4
    //procedure sub_004B5A14(?:?; ?:?);//004B5A14
    //procedure sub_004B5A40(?:?; ?:?);//004B5A40
    //procedure sub_004B5A64(?:?; ?:?);//004B5A64
    //procedure sub_004B5A94(?:?);//004B5A94
    //function sub_004B5AE4:?;//004B5AE4
    //function sub_004B5AFC:?;//004B5AFC
    //procedure sub_004B5B14(?:?; ?:?; ?:?);//004B5B14
    //procedure sub_004B5B94(?:?);//004B5B94
    //procedure sub_004B5BE4(?:?);//004B5BE4
    //procedure sub_004B5C28(?:?; ?:?; ?:?);//004B5C28
    //procedure sub_004B5CA4(?:?);//004B5CA4
    //function sub_004B5CF4(?:?; ?:?):?;//004B5CF4
    //function sub_004B5D98(?:?):?;//004B5D98
    //procedure sub_004B5DB8(?:?; ?:?; ?:?);//004B5DB8
    //function sub_004B5DE4(?:?; ?:?; ?:?; ?:?):?;//004B5DE4
    //function sub_004B5EEC(?:?):?;//004B5EEC
    //function sub_004B5F08(?:?; ?:?):?;//004B5F08

implementation

//004A7B30
{*function sub_004A7B30(?:?):?;
begin
 004A7B30    push        ebp
 004A7B31    mov         ebp,esp
 004A7B33    add         esp,0FFFFFFF0
 004A7B36    mov         dword ptr [ebp-4],eax
 004A7B39    mov         dword ptr [ebp-0D],8
 004A7B40    mov         eax,dword ptr [ebp-4]
 004A7B43    mov         dword ptr [ebp-9],eax
 004A7B46    lea         eax,[ebp-0D]
 004A7B49    call        0042F2D8
 004A7B4E    cmp         eax,1
 004A7B51    sbb         eax,eax
 004A7B53    inc         eax
 004A7B54    mov         byte ptr [ebp-5],al
 004A7B57    cmp         byte ptr [ebp-5],0
>004A7B5B    jne         004A7B62
 004A7B5D    call        comctl32.InitCommonControls
 004A7B62    mov         al,byte ptr [ebp-5]
 004A7B65    mov         esp,ebp
 004A7B67    pop         ebp
 004A7B68    ret
end;*}

//004A7B6C
{*procedure sub_004A7B6C(?:?);
begin
 004A7B6C    push        ebp
 004A7B6D    mov         ebp,esp
 004A7B6F    push        ecx
 004A7B70    mov         dword ptr [ebp-4],eax
 004A7B73    mov         eax,dword ptr [ebp-4]
 004A7B76    call        004A7B30
 004A7B7B    test        al,al
>004A7B7D    jne         004A7B96
 004A7B7F    mov         ecx,dword ptr ds:[55B5D8];^sInvalidComCtl32:TResStringRec
 004A7B85    mov         dl,1
 004A7B87    mov         eax,[004758A8];EComponentError
 004A7B8C    call        Exception.Create;EComponentError.Create
 004A7B91    call        @RaiseExcept
 004A7B96    pop         ecx
 004A7B97    pop         ebp
 004A7B98    ret
end;*}

//004A7B9C
{*function sub_004A7B9C:?;
begin
 004A7B9C    push        ebp
 004A7B9D    mov         ebp,esp
 004A7B9F    push        ecx
 004A7BA0    cmp         dword ptr ds:[55DD7C],0;gvar_0055DD7C
>004A7BA7    jne         004A7BB8
 004A7BA9    mov         eax,4A7BD0;'comctl32.dll'
 004A7BAE    call        0046B47C
 004A7BB3    mov         [0055DD7C],eax;gvar_0055DD7C
 004A7BB8    mov         eax,[0055DD7C];gvar_0055DD7C
 004A7BBD    mov         dword ptr [ebp-4],eax
 004A7BC0    mov         eax,dword ptr [ebp-4]
 004A7BC3    pop         ecx
 004A7BC4    pop         ebp
 004A7BC5    ret
end;*}

//004A7BE0
{*procedure sub_004A7BE0(?:TPageControl; ?:?; ?:?);
begin
 004A7BE0    push        ebp
 004A7BE1    mov         ebp,esp
 004A7BE3    add         esp,0FFFFFFF0
 004A7BE6    mov         byte ptr [ebp-9],cl
 004A7BE9    mov         dword ptr [ebp-8],edx
 004A7BEC    mov         dword ptr [ebp-4],eax
 004A7BEF    mov         eax,dword ptr [ebp-4]
 004A7BF2    call        TWinControl.HandleAllocated
 004A7BF7    test        al,al
>004A7BF9    je          004A7C38
 004A7BFB    push        0F0
 004A7BFD    mov         eax,dword ptr [ebp-4]
 004A7C00    call        TWinControl.GetHandle
 004A7C05    push        eax
 004A7C06    call        user32.GetWindowLongA
 004A7C0B    mov         dword ptr [ebp-10],eax
 004A7C0E    cmp         byte ptr [ebp-9],0
>004A7C12    jne         004A7C1E
 004A7C14    mov         eax,dword ptr [ebp-8]
 004A7C17    not         eax
 004A7C19    and         dword ptr [ebp-10],eax
>004A7C1C    jmp         004A7C24
 004A7C1E    mov         eax,dword ptr [ebp-8]
 004A7C21    or          dword ptr [ebp-10],eax
 004A7C24    mov         eax,dword ptr [ebp-10]
 004A7C27    push        eax
 004A7C28    push        0F0
 004A7C2A    mov         eax,dword ptr [ebp-4]
 004A7C2D    call        TWinControl.GetHandle
 004A7C32    push        eax
 004A7C33    call        user32.SetWindowLongA
 004A7C38    mov         esp,ebp
 004A7C3A    pop         ebp
 004A7C3B    ret
end;*}

//004A7D3C
{*procedure sub_004A7D3C(?:?);
begin
 004A7D3C    push        ebp
 004A7D3D    mov         ebp,esp
 004A7D3F    push        ecx
 004A7D40    mov         dword ptr [ebp-4],eax
 004A7D43    mov         ecx,dword ptr [ebp-4]
 004A7D46    mov         dl,1
 004A7D48    mov         eax,[00475798];EListError
 004A7D4D    call        Exception.Create;EListError.Create
 004A7D52    call        @RaiseExcept
 004A7D57    pop         ecx
 004A7D58    pop         ebp
 004A7D59    ret
end;*}

//004A7D5C
procedure TTabStrings.Clear;
begin
{*
 004A7D5C    push        ebp
 004A7D5D    mov         ebp,esp
 004A7D5F    add         esp,0FFFFFFF8
 004A7D62    xor         edx,edx
 004A7D64    mov         dword ptr [ebp-8],edx
 004A7D67    mov         dword ptr [ebp-4],eax
 004A7D6A    xor         eax,eax
 004A7D6C    push        ebp
 004A7D6D    push        4A7DCC
 004A7D72    push        dword ptr fs:[eax]
 004A7D75    mov         dword ptr fs:[eax],esp
 004A7D78    push        0
 004A7D7A    push        0
 004A7D7C    push        1309
 004A7D81    mov         eax,dword ptr [ebp-4]
 004A7D84    mov         eax,dword ptr [eax+10];TTabStrings.......................FTabControl:TCustomTabControl
 004A7D87    call        TWinControl.GetHandle
 004A7D8C    push        eax
 004A7D8D    call        user32.SendMessageA
 004A7D92    test        eax,eax
>004A7D94    jne         004A7DAB
 004A7D96    lea         edx,[ebp-8]
 004A7D99    mov         eax,[0055B4D0];^sTabFailClear:TResStringRec
 004A7D9E    call        LoadResString
 004A7DA3    mov         eax,dword ptr [ebp-8]
 004A7DA6    call        004A7D3C
 004A7DAB    mov         eax,dword ptr [ebp-4]
 004A7DAE    mov         eax,dword ptr [eax+10];TTabStrings........................FTabControl:TCustomTabControl
 004A7DB1    call        004A8E60
 004A7DB6    xor         eax,eax
 004A7DB8    pop         edx
 004A7DB9    pop         ecx
 004A7DBA    pop         ecx
 004A7DBB    mov         dword ptr fs:[eax],edx
 004A7DBE    push        4A7DD3
 004A7DC3    lea         eax,[ebp-8]
 004A7DC6    call        @LStrClr
 004A7DCB    ret
>004A7DCC    jmp         @HandleFinally
>004A7DD1    jmp         004A7DC3
 004A7DD3    pop         ecx
 004A7DD4    pop         ecx
 004A7DD5    pop         ebp
 004A7DD6    ret
*}
end;

//004A7DD8
{*procedure sub_004A7DD8(?:?);
begin
 004A7DD8    push        ebp
 004A7DD9    mov         ebp,esp
 004A7DDB    add         esp,0FFFFFFE8
 004A7DDE    xor         ecx,ecx
 004A7DE0    mov         dword ptr [ebp-0C],ecx
 004A7DE3    mov         dword ptr [ebp-10],ecx
 004A7DE6    mov         dword ptr [ebp-8],edx
 004A7DE9    mov         dword ptr [ebp-4],eax
 004A7DEC    xor         eax,eax
 004A7DEE    push        ebp
 004A7DEF    push        4A7E70
 004A7DF4    push        dword ptr fs:[eax]
 004A7DF7    mov         dword ptr fs:[eax],esp
 004A7DFA    push        0
 004A7DFC    mov         eax,dword ptr [ebp-8]
 004A7DFF    push        eax
 004A7E00    push        1308
 004A7E05    mov         eax,dword ptr [ebp-4]
 004A7E08    mov         eax,dword ptr [eax+10];TTabStrings.........................FTabControl:TCustomTabControl
 004A7E0B    call        TWinControl.GetHandle
 004A7E10    push        eax
 004A7E11    call        user32.SendMessageA
 004A7E16    test        eax,eax
>004A7E18    jne         004A7E4A
 004A7E1A    lea         eax,[ebp-0C]
 004A7E1D    push        eax
 004A7E1E    lea         edx,[ebp-10]
 004A7E21    mov         eax,[0055B478];^sTabFailDelete:TResStringRec
 004A7E26    call        LoadResString
 004A7E2B    mov         eax,dword ptr [ebp-10]
 004A7E2E    mov         edx,dword ptr [ebp-8]
 004A7E31    mov         dword ptr [ebp-18],edx
 004A7E34    mov         byte ptr [ebp-14],0
 004A7E38    lea         edx,[ebp-18]
 004A7E3B    xor         ecx,ecx
 004A7E3D    call        Format
 004A7E42    mov         eax,dword ptr [ebp-0C]
 004A7E45    call        004A7D3C
 004A7E4A    mov         eax,dword ptr [ebp-4]
 004A7E4D    mov         eax,dword ptr [eax+10];TTabStrings..........................FTabControl:TCustomTabContro...
 004A7E50    call        004A8E60
 004A7E55    xor         eax,eax
 004A7E57    pop         edx
 004A7E58    pop         ecx
 004A7E59    pop         ecx
 004A7E5A    mov         dword ptr fs:[eax],edx
 004A7E5D    push        4A7E77
 004A7E62    lea         eax,[ebp-10]
 004A7E65    mov         edx,2
 004A7E6A    call        @LStrArrayClr
 004A7E6F    ret
>004A7E70    jmp         @HandleFinally
>004A7E75    jmp         004A7E62
 004A7E77    mov         esp,ebp
 004A7E79    pop         ebp
 004A7E7A    ret
end;*}

//004A7E7C
{*procedure sub_004A7E7C(?:?; ?:?);
begin
 004A7E7C    push        ebp
 004A7E7D    mov         ebp,esp
 004A7E7F    add         esp,0FFFFF004
 004A7E85    push        eax
 004A7E86    add         esp,0FFFFFFC8
 004A7E89    push        ebx
 004A7E8A    xor         ebx,ebx
 004A7E8C    mov         dword ptr [ebp-102C],ebx
 004A7E92    mov         dword ptr [ebp-1030],ebx
 004A7E98    mov         dword ptr [ebp-0C],ecx
 004A7E9B    mov         dword ptr [ebp-8],edx
 004A7E9E    mov         dword ptr [ebp-4],eax
 004A7EA1    xor         eax,eax
 004A7EA3    push        ebp
 004A7EA4    push        4A7F72
 004A7EA9    push        dword ptr fs:[eax]
 004A7EAC    mov         dword ptr fs:[eax],esp
 004A7EAF    mov         eax,dword ptr [ebp-4]
 004A7EB2    mov         eax,dword ptr [eax+10];TTabStrings...........................FTabControl:TCustomTabContr...
 004A7EB5    call        004CB90C
 004A7EBA    and         eax,7F
 004A7EBD    mov         eax,dword ptr [eax*4+5413B8]
 004A7EC4    or          eax,1
 004A7EC7    mov         dword ptr [ebp-28],eax
 004A7ECA    lea         eax,[ebp-1028]
 004A7ED0    mov         dword ptr [ebp-1C],eax
 004A7ED3    mov         dword ptr [ebp-18],1000
 004A7EDA    lea         eax,[ebp-28]
 004A7EDD    push        eax
 004A7EDE    mov         eax,dword ptr [ebp-8]
 004A7EE1    push        eax
 004A7EE2    push        1305
 004A7EE7    mov         eax,dword ptr [ebp-4]
 004A7EEA    mov         eax,dword ptr [eax+10];TTabStrings............................FTabControl:TCustomTabCont...
 004A7EED    call        TWinControl.GetHandle
 004A7EF2    push        eax
 004A7EF3    call        user32.SendMessageA
 004A7EF8    test        eax,eax
>004A7EFA    jne         004A7F41
 004A7EFC    lea         eax,[ebp-102C]
 004A7F02    push        eax
 004A7F03    lea         edx,[ebp-1030]
 004A7F09    mov         eax,[0055B3FC];^sTabFailRetrieve:TResStringRec
 004A7F0E    call        LoadResString
 004A7F13    mov         eax,dword ptr [ebp-1030]
 004A7F19    mov         edx,dword ptr [ebp-8]
 004A7F1C    mov         dword ptr [ebp-1038],edx
 004A7F22    mov         byte ptr [ebp-1034],0
 004A7F29    lea         edx,[ebp-1038]
 004A7F2F    xor         ecx,ecx
 004A7F31    call        Format
 004A7F36    mov         eax,dword ptr [ebp-102C]
 004A7F3C    call        004A7D3C
 004A7F41    mov         eax,dword ptr [ebp-0C]
 004A7F44    lea         edx,[ebp-1028]
 004A7F4A    mov         ecx,1000
 004A7F4F    call        @LStrFromArray
 004A7F54    xor         eax,eax
 004A7F56    pop         edx
 004A7F57    pop         ecx
 004A7F58    pop         ecx
 004A7F59    mov         dword ptr fs:[eax],edx
 004A7F5C    push        4A7F79
 004A7F61    lea         eax,[ebp-1030]
 004A7F67    mov         edx,2
 004A7F6C    call        @LStrArrayClr
 004A7F71    ret
>004A7F72    jmp         @HandleFinally
>004A7F77    jmp         004A7F61
 004A7F79    pop         ebx
 004A7F7A    mov         esp,ebp
 004A7F7C    pop         ebp
 004A7F7D    ret
end;*}

//004A7F80
{*function sub_004A7F80:?;
begin
 004A7F80    push        ebp
 004A7F81    mov         ebp,esp
 004A7F83    add         esp,0FFFFFFF8
 004A7F86    mov         dword ptr [ebp-4],eax
 004A7F89    push        0
 004A7F8B    push        0
 004A7F8D    push        1304
 004A7F92    mov         eax,dword ptr [ebp-4]
 004A7F95    mov         eax,dword ptr [eax+10];TTabStrings.............................FTabControl:TCustomTabCon...
 004A7F98    call        TWinControl.GetHandle
 004A7F9D    push        eax
 004A7F9E    call        user32.SendMessageA
 004A7FA3    mov         dword ptr [ebp-8],eax
 004A7FA6    mov         eax,dword ptr [ebp-8]
 004A7FA9    pop         ecx
 004A7FAA    pop         ecx
 004A7FAB    pop         ebp
 004A7FAC    ret
end;*}

//004A7FB0
{*function sub_004A7FB0(?:?):?;
begin
 004A7FB0    push        ebp
 004A7FB1    mov         ebp,esp
 004A7FB3    add         esp,0FFFFFFC8
 004A7FB6    xor         ecx,ecx
 004A7FB8    mov         dword ptr [ebp-2C],ecx
 004A7FBB    mov         dword ptr [ebp-30],ecx
 004A7FBE    mov         dword ptr [ebp-8],edx
 004A7FC1    mov         dword ptr [ebp-4],eax
 004A7FC4    xor         eax,eax
 004A7FC6    push        ebp
 004A7FC7    push        4A804C
 004A7FCC    push        dword ptr fs:[eax]
 004A7FCF    mov         dword ptr fs:[eax],esp
 004A7FD2    mov         dword ptr [ebp-28],8
 004A7FD9    lea         eax,[ebp-28]
 004A7FDC    push        eax
 004A7FDD    mov         eax,dword ptr [ebp-8]
 004A7FE0    push        eax
 004A7FE1    push        1305
 004A7FE6    mov         eax,dword ptr [ebp-4]
 004A7FE9    mov         eax,dword ptr [eax+10];TTabStrings..............................FTabControl:TCustomTabCo...
 004A7FEC    call        TWinControl.GetHandle
 004A7FF1    push        eax
 004A7FF2    call        user32.SendMessageA
 004A7FF7    test        eax,eax
>004A7FF9    jne         004A802B
 004A7FFB    lea         eax,[ebp-2C]
 004A7FFE    push        eax
 004A7FFF    lea         edx,[ebp-30]
 004A8002    mov         eax,[0055B43C];^sTabFailGetObject:TResStringRec
 004A8007    call        LoadResString
 004A800C    mov         eax,dword ptr [ebp-30]
 004A800F    mov         edx,dword ptr [ebp-8]
 004A8012    mov         dword ptr [ebp-38],edx
 004A8015    mov         byte ptr [ebp-34],0
 004A8019    lea         edx,[ebp-38]
 004A801C    xor         ecx,ecx
 004A801E    call        Format
 004A8023    mov         eax,dword ptr [ebp-2C]
 004A8026    call        004A7D3C
 004A802B    mov         eax,dword ptr [ebp-10]
 004A802E    mov         dword ptr [ebp-0C],eax
 004A8031    xor         eax,eax
 004A8033    pop         edx
 004A8034    pop         ecx
 004A8035    pop         ecx
 004A8036    mov         dword ptr fs:[eax],edx
 004A8039    push        4A8053
 004A803E    lea         eax,[ebp-30]
 004A8041    mov         edx,2
 004A8046    call        @LStrArrayClr
 004A804B    ret
>004A804C    jmp         @HandleFinally
>004A8051    jmp         004A803E
 004A8053    mov         eax,dword ptr [ebp-0C]
 004A8056    mov         esp,ebp
 004A8058    pop         ebp
 004A8059    ret
end;*}

//004A805C
{*procedure sub_004A805C(?:?; ?:?);
begin
 004A805C    push        ebp
 004A805D    mov         ebp,esp
 004A805F    add         esp,0FFFFFFC0
 004A8062    push        ebx
 004A8063    xor         ebx,ebx
 004A8065    mov         dword ptr [ebp-2C],ebx
 004A8068    mov         dword ptr [ebp-30],ebx
 004A806B    mov         dword ptr [ebp-0C],ecx
 004A806E    mov         dword ptr [ebp-8],edx
 004A8071    mov         dword ptr [ebp-4],eax
 004A8074    xor         eax,eax
 004A8076    push        ebp
 004A8077    push        4A8146
 004A807C    push        dword ptr fs:[eax]
 004A807F    mov         dword ptr fs:[eax],esp
 004A8082    mov         eax,dword ptr [ebp-4]
 004A8085    mov         eax,dword ptr [eax+10];TTabStrings...............................FTabControl:TCustomTabC...
 004A8088    call        004CB90C
 004A808D    and         eax,7F
 004A8090    mov         eax,dword ptr [eax*4+5413C0]
 004A8097    or          eax,1
 004A809A    or          eax,2
 004A809D    mov         dword ptr [ebp-28],eax
 004A80A0    mov         eax,dword ptr [ebp-0C]
 004A80A3    call        @LStrToPChar
 004A80A8    mov         dword ptr [ebp-1C],eax
 004A80AB    mov         edx,dword ptr [ebp-8]
 004A80AE    mov         eax,dword ptr [ebp-4]
 004A80B1    mov         eax,dword ptr [eax+10];TTabStrings................................FTabControl:TCustomTab...
 004A80B4    mov         ecx,dword ptr [eax]
 004A80B6    call        dword ptr [ecx+0D0];TCustomTabControl.sub_004A87C8
 004A80BC    mov         dword ptr [ebp-14],eax
 004A80BF    lea         eax,[ebp-28]
 004A80C2    push        eax
 004A80C3    mov         eax,dword ptr [ebp-8]
 004A80C6    push        eax
 004A80C7    push        1306
 004A80CC    mov         eax,dword ptr [ebp-4]
 004A80CF    mov         eax,dword ptr [eax+10];TTabStrings.................................FTabControl:TCustomTa...
 004A80D2    call        TWinControl.GetHandle
 004A80D7    push        eax
 004A80D8    call        user32.SendMessageA
 004A80DD    test        eax,eax
>004A80DF    jne         004A8120
 004A80E1    lea         eax,[ebp-2C]
 004A80E4    push        eax
 004A80E5    lea         edx,[ebp-30]
 004A80E8    mov         eax,[0055B5AC];^sTabFailSet:TResStringRec
 004A80ED    call        LoadResString
 004A80F2    mov         eax,dword ptr [ebp-30]
 004A80F5    push        eax
 004A80F6    mov         eax,dword ptr [ebp-0C]
 004A80F9    mov         dword ptr [ebp-40],eax
 004A80FC    mov         byte ptr [ebp-3C],0B
 004A8100    mov         eax,dword ptr [ebp-8]
 004A8103    mov         dword ptr [ebp-38],eax
 004A8106    mov         byte ptr [ebp-34],0
 004A810A    lea         edx,[ebp-40]
 004A810D    mov         ecx,1
 004A8112    pop         eax
 004A8113    call        Format
 004A8118    mov         eax,dword ptr [ebp-2C]
 004A811B    call        004A7D3C
 004A8120    mov         eax,dword ptr [ebp-4]
 004A8123    mov         eax,dword ptr [eax+10];TTabStrings..................................FTabControl:TCustomT...
 004A8126    call        004A8E60
 004A812B    xor         eax,eax
 004A812D    pop         edx
 004A812E    pop         ecx
 004A812F    pop         ecx
 004A8130    mov         dword ptr fs:[eax],edx
 004A8133    push        4A814D
 004A8138    lea         eax,[ebp-30]
 004A813B    mov         edx,2
 004A8140    call        @LStrArrayClr
 004A8145    ret
>004A8146    jmp         @HandleFinally
>004A814B    jmp         004A8138
 004A814D    pop         ebx
 004A814E    mov         esp,ebp
 004A8150    pop         ebp
 004A8151    ret
end;*}

//004A8154
{*procedure sub_004A8154(?:?; ?:?);
begin
 004A8154    push        ebp
 004A8155    mov         ebp,esp
 004A8157    add         esp,0FFFFFFC8
 004A815A    push        ebx
 004A815B    xor         ebx,ebx
 004A815D    mov         dword ptr [ebp-2C],ebx
 004A8160    mov         dword ptr [ebp-30],ebx
 004A8163    mov         dword ptr [ebp-0C],ecx
 004A8166    mov         dword ptr [ebp-8],edx
 004A8169    mov         dword ptr [ebp-4],eax
 004A816C    xor         eax,eax
 004A816E    push        ebp
 004A816F    push        4A81F4
 004A8174    push        dword ptr fs:[eax]
 004A8177    mov         dword ptr fs:[eax],esp
 004A817A    mov         dword ptr [ebp-28],8
 004A8181    mov         eax,dword ptr [ebp-0C]
 004A8184    mov         dword ptr [ebp-10],eax
 004A8187    lea         eax,[ebp-28]
 004A818A    push        eax
 004A818B    mov         eax,dword ptr [ebp-8]
 004A818E    push        eax
 004A818F    push        1306
 004A8194    mov         eax,dword ptr [ebp-4]
 004A8197    mov         eax,dword ptr [eax+10];TTabStrings...................................FTabControl:TCustom...
 004A819A    call        TWinControl.GetHandle
 004A819F    push        eax
 004A81A0    call        user32.SendMessageA
 004A81A5    test        eax,eax
>004A81A7    jne         004A81D9
 004A81A9    lea         eax,[ebp-2C]
 004A81AC    push        eax
 004A81AD    lea         edx,[ebp-30]
 004A81B0    mov         eax,[0055B144];^sTabFailSetObject:TResStringRec
 004A81B5    call        LoadResString
 004A81BA    mov         eax,dword ptr [ebp-30]
 004A81BD    mov         edx,dword ptr [ebp-8]
 004A81C0    mov         dword ptr [ebp-38],edx
 004A81C3    mov         byte ptr [ebp-34],0
 004A81C7    lea         edx,[ebp-38]
 004A81CA    xor         ecx,ecx
 004A81CC    call        Format
 004A81D1    mov         eax,dword ptr [ebp-2C]
 004A81D4    call        004A7D3C
 004A81D9    xor         eax,eax
 004A81DB    pop         edx
 004A81DC    pop         ecx
 004A81DD    pop         ecx
 004A81DE    mov         dword ptr fs:[eax],edx
 004A81E1    push        4A81FB
 004A81E6    lea         eax,[ebp-30]
 004A81E9    mov         edx,2
 004A81EE    call        @LStrArrayClr
 004A81F3    ret
>004A81F4    jmp         @HandleFinally
>004A81F9    jmp         004A81E6
 004A81FB    pop         ebx
 004A81FC    mov         esp,ebp
 004A81FE    pop         ebp
 004A81FF    ret
end;*}

//004A8200
{*procedure sub_004A8200(?:?; ?:?);
begin
 004A8200    push        ebp
 004A8201    mov         ebp,esp
 004A8203    add         esp,0FFFFFFC0
 004A8206    push        ebx
 004A8207    xor         ebx,ebx
 004A8209    mov         dword ptr [ebp-2C],ebx
 004A820C    mov         dword ptr [ebp-30],ebx
 004A820F    mov         dword ptr [ebp-0C],ecx
 004A8212    mov         dword ptr [ebp-8],edx
 004A8215    mov         dword ptr [ebp-4],eax
 004A8218    xor         eax,eax
 004A821A    push        ebp
 004A821B    push        4A82EA
 004A8220    push        dword ptr fs:[eax]
 004A8223    mov         dword ptr fs:[eax],esp
 004A8226    mov         eax,dword ptr [ebp-4]
 004A8229    mov         eax,dword ptr [eax+10];TTabStrings....................................FTabControl:TCusto...
 004A822C    call        004CB90C
 004A8231    and         eax,7F
 004A8234    mov         eax,dword ptr [eax*4+5413C8]
 004A823B    or          eax,1
 004A823E    or          eax,2
 004A8241    mov         dword ptr [ebp-28],eax
 004A8244    mov         eax,dword ptr [ebp-0C]
 004A8247    call        @LStrToPChar
 004A824C    mov         dword ptr [ebp-1C],eax
 004A824F    mov         edx,dword ptr [ebp-8]
 004A8252    mov         eax,dword ptr [ebp-4]
 004A8255    mov         eax,dword ptr [eax+10];TTabStrings.....................................FTabControl:TCust...
 004A8258    mov         ecx,dword ptr [eax]
 004A825A    call        dword ptr [ecx+0D0];TCustomTabControl.sub_004A87C8
 004A8260    mov         dword ptr [ebp-14],eax
 004A8263    lea         eax,[ebp-28]
 004A8266    push        eax
 004A8267    mov         eax,dword ptr [ebp-8]
 004A826A    push        eax
 004A826B    push        1307
 004A8270    mov         eax,dword ptr [ebp-4]
 004A8273    mov         eax,dword ptr [eax+10];TTabStrings......................................FTabControl:TCus...
 004A8276    call        TWinControl.GetHandle
 004A827B    push        eax
 004A827C    call        user32.SendMessageA
 004A8281    test        eax,eax
>004A8283    jge         004A82C4
 004A8285    lea         eax,[ebp-2C]
 004A8288    push        eax
 004A8289    lea         edx,[ebp-30]
 004A828C    mov         eax,[0055B5AC];^sTabFailSet:TResStringRec
 004A8291    call        LoadResString
 004A8296    mov         eax,dword ptr [ebp-30]
 004A8299    push        eax
 004A829A    mov         eax,dword ptr [ebp-0C]
 004A829D    mov         dword ptr [ebp-40],eax
 004A82A0    mov         byte ptr [ebp-3C],0B
 004A82A4    mov         eax,dword ptr [ebp-8]
 004A82A7    mov         dword ptr [ebp-38],eax
 004A82AA    mov         byte ptr [ebp-34],0
 004A82AE    lea         edx,[ebp-40]
 004A82B1    mov         ecx,1
 004A82B6    pop         eax
 004A82B7    call        Format
 004A82BC    mov         eax,dword ptr [ebp-2C]
 004A82BF    call        004A7D3C
 004A82C4    mov         eax,dword ptr [ebp-4]
 004A82C7    mov         eax,dword ptr [eax+10];TTabStrings.......................................FTabControl:TCu...
 004A82CA    call        004A8E60
 004A82CF    xor         eax,eax
 004A82D1    pop         edx
 004A82D2    pop         ecx
 004A82D3    pop         ecx
 004A82D4    mov         dword ptr fs:[eax],edx
 004A82D7    push        4A82F1
 004A82DC    lea         eax,[ebp-30]
 004A82DF    mov         edx,2
 004A82E4    call        @LStrArrayClr
 004A82E9    ret
>004A82EA    jmp         @HandleFinally
>004A82EF    jmp         004A82DC
 004A82F1    pop         ebx
 004A82F2    mov         esp,ebp
 004A82F4    pop         ebp
 004A82F5    ret
end;*}

//004A82F8
{*procedure sub_004A82F8(?:?);
begin
 004A82F8    push        ebp
 004A82F9    mov         ebp,esp
 004A82FB    add         esp,0FFFFFFF8
 004A82FE    mov         byte ptr [ebp-5],dl
 004A8301    mov         dword ptr [ebp-4],eax
 004A8304    mov         eax,dword ptr [ebp-4]
 004A8307    mov         eax,dword ptr [eax+10];TTabStrings........................................FTabControl:TC...
 004A830A    mov         dl,byte ptr [ebp-5]
 004A830D    mov         byte ptr [eax+230],dl;TCustomTabControl.FUpdating:Boolean
 004A8313    push        0
 004A8315    mov         al,byte ptr [ebp-5]
 004A8318    xor         al,1
 004A831A    and         eax,7F
 004A831D    push        eax
 004A831E    push        0B
 004A8320    mov         eax,dword ptr [ebp-4]
 004A8323    mov         eax,dword ptr [eax+10];TTabStrings.........................................FTabControl:T...
 004A8326    call        TWinControl.GetHandle
 004A832B    push        eax
 004A832C    call        user32.SendMessageA
 004A8331    cmp         byte ptr [ebp-5],0
>004A8335    jne         004A834D
 004A8337    mov         eax,dword ptr [ebp-4]
 004A833A    mov         eax,dword ptr [eax+10];TTabStrings..........................................FTabControl:...
 004A833D    mov         edx,dword ptr [eax]
 004A833F    call        dword ptr [edx+7C];TCustomTabControl.sub_004D3648
 004A8342    mov         eax,dword ptr [ebp-4]
 004A8345    mov         eax,dword ptr [eax+10];TTabStrings...........................................FTabControl...
 004A8348    call        004A8E60
 004A834D    pop         ecx
 004A834E    pop         ecx
 004A834F    pop         ebp
 004A8350    ret
end;*}

//004A8354
constructor TCustomTabControl.Create(AOwner:TComponent);
begin
{*
 004A8354    push        ebp
 004A8355    mov         ebp,esp
 004A8357    add         esp,0FFFFFFF4
 004A835A    test        dl,dl
>004A835C    je          004A8366
 004A835E    add         esp,0FFFFFFF0
 004A8361    call        @ClassCreate
 004A8366    mov         dword ptr [ebp-0C],ecx
 004A8369    mov         byte ptr [ebp-5],dl
 004A836C    mov         dword ptr [ebp-4],eax
 004A836F    mov         ecx,dword ptr [ebp-0C]
 004A8372    xor         edx,edx
 004A8374    mov         eax,dword ptr [ebp-4]
 004A8377    call        TWinControl.Create
 004A837C    mov         edx,121
 004A8381    mov         eax,dword ptr [ebp-4]
 004A8384    call        TControl.SetWidth
 004A8389    mov         edx,0C1
 004A838E    mov         eax,dword ptr [ebp-4]
 004A8391    call        TControl.SetHeight
 004A8396    mov         dl,1
 004A8398    mov         eax,dword ptr [ebp-4]
 004A839B    call        TPanel.SetTabStop
 004A83A0    mov         eax,dword ptr [ebp-4]
 004A83A3    mov         edx,dword ptr ds:[4A8440];0x81 gvar_004A8440
 004A83A9    mov         dword ptr [eax+50],edx;TCustomTabControl.FControlStyle:TControlStyle
 004A83AC    mov         dl,1
 004A83AE    mov         eax,[004A7C3C];TTabStrings
 004A83B3    call        TObject.Create;TTabStrings.Create
 004A83B8    mov         edx,dword ptr [ebp-4]
 004A83BB    mov         dword ptr [edx+228],eax;TCustomTabControl.FTabs:TStrings
 004A83C1    mov         eax,dword ptr [ebp-4]
 004A83C4    mov         eax,dword ptr [eax+228];TCustomTabControl.FTabs:TStrings
 004A83CA    mov         edx,dword ptr [ebp-4]
 004A83CD    mov         dword ptr [eax+10],edx
 004A83D0    mov         dl,1
 004A83D2    mov         eax,[004C4BA4];TControlCanvas
 004A83D7    call        TControlCanvas.Create;TControlCanvas.Create
 004A83DC    mov         edx,dword ptr [ebp-4]
 004A83DF    mov         dword ptr [edx+208],eax;TCustomTabControl.FCanvas:TCanvas
 004A83E5    mov         eax,dword ptr [ebp-4]
 004A83E8    mov         eax,dword ptr [eax+208];TCustomTabControl.FCanvas:TCanvas
 004A83EE    mov         edx,dword ptr [ebp-4]
 004A83F1    call        004C931C
 004A83F6    mov         dl,1
 004A83F8    mov         eax,[004DC034];TChangeLink
 004A83FD    call        TObject.Create;TChangeLink.Create
 004A8402    mov         edx,dword ptr [ebp-4]
 004A8405    mov         dword ptr [edx+210],eax;TCustomTabControl.FImageChangeLink:TChangeLink
 004A840B    mov         eax,dword ptr [ebp-4]
 004A840E    mov         eax,dword ptr [eax+210];TCustomTabControl.FImageChangeLink:TChangeLink
 004A8414    mov         edx,dword ptr [ebp-4]
 004A8417    mov         dword ptr [eax+0C],edx;TChangeLink.?fC:TCustomTabControl
 004A841A    mov         dword ptr [eax+8],4A8978;TChangeLink.FOnChange:TNotifyEvent sub_004A8978
 004A8421    mov         eax,dword ptr [ebp-4]
 004A8424    cmp         byte ptr [ebp-5],0
>004A8428    je          004A8439
 004A842A    call        @AfterConstruction
 004A842F    pop         dword ptr fs:[0]
 004A8436    add         esp,0C
 004A8439    mov         eax,dword ptr [ebp-4]
 004A843C    mov         esp,ebp
 004A843E    pop         ebp
 004A843F    ret
*}
end;

//004A8444
destructor TCustomTabControl.Destroy;
begin
{*
 004A8444    push        ebp
 004A8445    mov         ebp,esp
 004A8447    add         esp,0FFFFFFF8
 004A844A    call        @BeforeDestruction
 004A844F    mov         byte ptr [ebp-5],dl
 004A8452    mov         dword ptr [ebp-4],eax
 004A8455    mov         eax,dword ptr [ebp-4]
 004A8458    add         eax,208;TCustomTabControl.FCanvas:TCanvas
 004A845D    call        FreeAndNil
 004A8462    mov         eax,dword ptr [ebp-4]
 004A8465    add         eax,228;TCustomTabControl.FTabs:TStrings
 004A846A    call        FreeAndNil
 004A846F    mov         eax,dword ptr [ebp-4]
 004A8472    add         eax,220;TCustomTabControl.FSaveTabs:TStringList
 004A8477    call        FreeAndNil
 004A847C    mov         eax,dword ptr [ebp-4]
 004A847F    add         eax,210;TCustomTabControl.FImageChangeLink:TChangeLink
 004A8484    call        FreeAndNil
 004A8489    mov         dl,byte ptr [ebp-5]
 004A848C    and         dl,0FC
 004A848F    mov         eax,dword ptr [ebp-4]
 004A8492    call        TWinControl.Destroy
 004A8497    cmp         byte ptr [ebp-5],0
>004A849B    jle         004A84A5
 004A849D    mov         eax,dword ptr [ebp-4]
 004A84A0    call        @ClassDestroy
 004A84A5    pop         ecx
 004A84A6    pop         ecx
 004A84A7    pop         ebp
 004A84A8    ret
*}
end;

//004A84AC
procedure TCustomTabControl.sub_004A84AC;
begin
{*
 004A84AC    push        ebp
 004A84AD    mov         ebp,esp
 004A84AF    add         esp,0FFFFFFF8
 004A84B2    push        ebx
 004A84B3    mov         dword ptr [ebp-4],eax
 004A84B6    mov         byte ptr [ebp-5],1
 004A84BA    mov         eax,dword ptr [ebp-4]
 004A84BD    cmp         word ptr [eax+252],0;TCustomTabControl.?f252:word
>004A84C5    je          004A84DC
 004A84C7    lea         ecx,[ebp-5]
 004A84CA    mov         ebx,dword ptr [ebp-4]
 004A84CD    mov         edx,dword ptr [ebp-4]
 004A84D0    mov         eax,dword ptr [ebx+254];TCustomTabControl.?f254:dword
 004A84D6    call        dword ptr [ebx+250];TCustomTabControl.FOnChanging
 004A84DC    mov         al,byte ptr [ebp-5]
 004A84DF    pop         ebx
 004A84E0    pop         ecx
 004A84E1    pop         ecx
 004A84E2    pop         ebp
 004A84E3    ret
*}
end;

//004A84E4
{*function sub_004A84E4(?:?):?;
begin
 004A84E4    push        ebp
 004A84E5    mov         ebp,esp
 004A84E7    add         esp,0FFFFFFF4
 004A84EA    mov         dword ptr [ebp-0C],edx
 004A84ED    mov         dword ptr [ebp-4],eax
 004A84F0    mov         byte ptr [ebp-5],1
 004A84F4    mov         al,byte ptr [ebp-5]
 004A84F7    mov         esp,ebp
 004A84F9    pop         ebp
 004A84FA    ret
end;*}

//004A84FC
procedure TCustomTabControl.sub_004A84FC;
begin
{*
 004A84FC    push        ebp
 004A84FD    mov         ebp,esp
 004A84FF    push        ecx
 004A8500    push        ebx
 004A8501    mov         dword ptr [ebp-4],eax
 004A8504    mov         eax,dword ptr [ebp-4]
 004A8507    cmp         word ptr [eax+24A],0;TCustomTabControl.?f24A:word
>004A850F    je          004A8523
 004A8511    mov         ebx,dword ptr [ebp-4]
 004A8514    mov         edx,dword ptr [ebp-4]
 004A8517    mov         eax,dword ptr [ebx+24C];TCustomTabControl.?f24C:dword
 004A851D    call        dword ptr [ebx+248];TCustomTabControl.FOnChange
 004A8523    pop         ebx
 004A8524    pop         ecx
 004A8525    pop         ebp
 004A8526    ret
*}
end;

//004A8528
{*procedure sub_004A8528(?:?);
begin
 004A8528    push        ebp
 004A8529    mov         ebp,esp
 004A852B    add         esp,0FFFFFFF8
 004A852E    push        esi
 004A852F    mov         dword ptr [ebp-8],edx
 004A8532    mov         dword ptr [ebp-4],eax
 004A8535    mov         eax,8
 004A853A    call        004A7B30
 004A853F    mov         edx,dword ptr [ebp-8]
 004A8542    mov         eax,dword ptr [ebp-4]
 004A8545    call        004CF814
 004A854A    mov         ecx,4A8668
 004A854F    mov         edx,dword ptr [ebp-8]
 004A8552    mov         eax,dword ptr [ebp-4]
 004A8555    call        004CF6EC
 004A855A    mov         eax,dword ptr [ebp-4]
 004A855D    mov         si,0FFC8
 004A8561    call        @CallDynaInst;TControl.sub_004CB93C
 004A8566    and         eax,7F
 004A8569    add         eax,eax
 004A856B    lea         eax,[eax*8+5413D0]
 004A8572    mov         edx,dword ptr [ebp-4]
 004A8575    movzx       edx,byte ptr [edx+226];TCustomTabControl.FTabPosition:TTabPosition
 004A857C    mov         eax,dword ptr [eax+edx*4]
 004A857F    mov         edx,dword ptr [ebp-8]
 004A8582    mov         edx,dword ptr [edx+4]
 004A8585    or          edx,2000000
 004A858B    or          eax,edx
 004A858D    mov         edx,dword ptr [ebp-4]
 004A8590    movzx       edx,byte ptr [edx+225];TCustomTabControl.FStyle:TTabStyle
 004A8597    or          eax,dword ptr [edx*4+5413F0]
 004A859E    mov         edx,dword ptr [ebp-4]
 004A85A1    movzx       edx,byte ptr [edx+21B];TCustomTabControl.FRaggedRight:Boolean
 004A85A8    or          eax,dword ptr [edx*4+5413FC]
 004A85AF    mov         edx,dword ptr [ebp-8]
 004A85B2    mov         dword ptr [edx+4],eax
 004A85B5    mov         eax,dword ptr [ebp-4]
 004A85B8    cmp         byte ptr [eax+1A4],0;TCustomTabControl.FTabStop:Boolean
>004A85BF    jne         004A85CB
 004A85C1    mov         eax,dword ptr [ebp-8]
 004A85C4    or          dword ptr [eax+4],8000
 004A85CB    mov         eax,dword ptr [ebp-4]
 004A85CE    cmp         byte ptr [eax+218],0;TCustomTabControl.FMultiLine:Boolean
>004A85D5    je          004A85E1
 004A85D7    mov         eax,dword ptr [ebp-8]
 004A85DA    or          dword ptr [eax+4],200
 004A85E1    mov         eax,dword ptr [ebp-4]
 004A85E4    cmp         byte ptr [eax+219],0;TCustomTabControl.FMultiSelect:Boolean
>004A85EB    je          004A85F4
 004A85ED    mov         eax,dword ptr [ebp-8]
 004A85F0    or          dword ptr [eax+4],4
 004A85F4    mov         eax,dword ptr [ebp-4]
 004A85F7    cmp         byte ptr [eax+21A],0;TCustomTabControl.FOwnerDraw:Boolean
>004A85FE    je          004A860A
 004A8600    mov         eax,dword ptr [ebp-8]
 004A8603    or          dword ptr [eax+4],2000
 004A860A    mov         eax,dword ptr [ebp-4]
 004A860D    cmp         word ptr [eax+22C],0;TCustomTabControl.FTabSize:TSmallPoint
>004A8615    je          004A8621
 004A8617    mov         eax,dword ptr [ebp-8]
 004A861A    or          dword ptr [eax+4],400
 004A8621    mov         eax,dword ptr [ebp-4]
 004A8624    cmp         byte ptr [eax+20C],0;TCustomTabControl.FHotTrack:Boolean
>004A862B    je          004A863D
 004A862D    mov         eax,dword ptr [ebp-4]
 004A8630    test        byte ptr [eax+1C],10;TCustomTabControl.FComponentState:TComponentState
>004A8634    jne         004A863D
 004A8636    mov         eax,dword ptr [ebp-8]
 004A8639    or          dword ptr [eax+4],40
 004A863D    mov         eax,dword ptr [ebp-4]
 004A8640    cmp         byte ptr [eax+224],0;TCustomTabControl.FScrollOpposite:Boolean
>004A8647    je          004A8650
 004A8649    mov         eax,dword ptr [ebp-8]
 004A864C    or          dword ptr [eax+4],1
 004A8650    mov         eax,dword ptr [ebp-8]
 004A8653    mov         eax,dword ptr [eax+24]
 004A8656    and         eax,0FFFFFFFC
 004A8659    or          eax,8
 004A865C    mov         edx,dword ptr [ebp-8]
 004A865F    mov         dword ptr [edx+24],eax
 004A8662    pop         esi
 004A8663    pop         ecx
 004A8664    pop         ecx
 004A8665    pop         ebp
 004A8666    ret
end;*}

//004A8678
procedure TCustomTabControl.CreateWnd;
begin
{*
 004A8678    push        ebp
 004A8679    mov         ebp,esp
 004A867B    push        ecx
 004A867C    mov         dword ptr [ebp-4],eax
 004A867F    mov         eax,dword ptr [ebp-4]
 004A8682    call        TWinControl.CreateWnd
 004A8687    mov         eax,dword ptr [ebp-4]
 004A868A    cmp         dword ptr [eax+214],0;TCustomTabControl.FImages:TCustomImageList
>004A8691    je          004A86C3
 004A8693    mov         eax,dword ptr [ebp-4]
 004A8696    mov         eax,dword ptr [eax+214];TCustomTabControl.FImages:TCustomImageList
 004A869C    call        004DC4C0
 004A86A1    test        al,al
>004A86A3    je          004A86C3
 004A86A5    mov         eax,dword ptr [ebp-4]
 004A86A8    mov         eax,dword ptr [eax+214];TCustomTabControl.FImages:TCustomImageList
 004A86AE    call        004DC758
 004A86B3    push        eax
 004A86B4    xor         ecx,ecx
 004A86B6    mov         edx,1303
 004A86BB    mov         eax,dword ptr [ebp-4]
 004A86BE    call        004CC7DC
 004A86C3    mov         eax,dword ptr [ebp-4]
 004A86C6    cmp         dword ptr [eax+22C],0;TCustomTabControl.FTabSize:TSmallPoint
>004A86CD    je          004A86D7
 004A86CF    mov         eax,dword ptr [ebp-4]
 004A86D2    call        004A8EB0
 004A86D7    mov         eax,dword ptr [ebp-4]
 004A86DA    cmp         dword ptr [eax+220],0;TCustomTabControl.FSaveTabs:TStringList
>004A86E1    je          004A8727
 004A86E3    mov         eax,dword ptr [ebp-4]
 004A86E6    mov         edx,dword ptr [eax+220];TCustomTabControl.FSaveTabs:TStringList
 004A86EC    mov         eax,dword ptr [ebp-4]
 004A86EF    mov         eax,dword ptr [eax+228];TCustomTabControl.FTabs:TStrings
 004A86F5    mov         ecx,dword ptr [eax]
 004A86F7    call        dword ptr [ecx+8];TStrings.sub_0047A184
 004A86FA    mov         eax,dword ptr [ebp-4]
 004A86FD    mov         edx,dword ptr [eax+21C];TCustomTabControl.FSaveTabIndex:Integer
 004A8703    mov         eax,dword ptr [ebp-4]
 004A8706    mov         ecx,dword ptr [eax]
 004A8708    call        dword ptr [ecx+0D4];TCustomTabControl.sub_004A8C90
 004A870E    mov         eax,dword ptr [ebp-4]
 004A8711    mov         eax,dword ptr [eax+220];TCustomTabControl.FSaveTabs:TStringList
 004A8717    call        TObject.Free
 004A871C    mov         eax,dword ptr [ebp-4]
 004A871F    xor         edx,edx
 004A8721    mov         dword ptr [eax+220],edx;TCustomTabControl.FSaveTabs:TStringList
 004A8727    pop         ecx
 004A8728    pop         ebp
 004A8729    ret
*}
end;

//004A872C
{*procedure sub_004A872C(?:?; ?:?; ?:?);
begin
 004A872C    push        ebp
 004A872D    mov         ebp,esp
 004A872F    add         esp,0FFFFFFF4
 004A8732    push        ebx
 004A8733    mov         dword ptr [ebp-0C],ecx
 004A8736    mov         dword ptr [ebp-8],edx
 004A8739    mov         dword ptr [ebp-4],eax
 004A873C    mov         eax,dword ptr [ebp-4]
 004A873F    cmp         word ptr [eax+25A],0;TCustomTabControl.?f25A:word
>004A8747    je          004A8768
 004A8749    mov         eax,dword ptr [ebp-0C]
 004A874C    push        eax
 004A874D    mov         al,byte ptr [ebp+8]
 004A8750    push        eax
 004A8751    mov         ebx,dword ptr [ebp-4]
 004A8754    mov         ecx,dword ptr [ebp-8]
 004A8757    mov         edx,dword ptr [ebp-4]
 004A875A    mov         eax,dword ptr [ebx+25C];TCustomTabControl.?f25C:dword
 004A8760    call        dword ptr [ebx+258];TCustomTabControl.FOnDrawTab
>004A8766    jmp         004A8779
 004A8768    mov         edx,dword ptr [ebp-0C]
 004A876B    mov         eax,dword ptr [ebp-4]
 004A876E    mov         eax,dword ptr [eax+208];TCustomTabControl.FCanvas:TCanvas
 004A8774    call        TCanvas.FillRect
 004A8779    pop         ebx
 004A877A    mov         esp,ebp
 004A877C    pop         ebp
 004A877D    ret         4
end;*}

//004A8780
{*procedure sub_004A8780(?:TCustomTabControl; ?:?);
begin
 004A8780    push        ebp
 004A8781    mov         ebp,esp
 004A8783    add         esp,0FFFFFFF8
 004A8786    mov         dword ptr [ebp-8],edx
 004A8789    mov         dword ptr [ebp-4],eax
 004A878C    mov         edx,dword ptr [ebp-8]
 004A878F    mov         eax,dword ptr [ebp-4]
 004A8792    mov         ecx,dword ptr [eax]
 004A8794    call        dword ptr [ecx+44]
 004A8797    mov         eax,dword ptr [ebp-8]
 004A879A    push        eax
 004A879B    push        0
 004A879D    push        1328
 004A87A2    mov         eax,dword ptr [ebp-4]
 004A87A5    call        TWinControl.GetHandle
 004A87AA    push        eax
 004A87AB    call        user32.SendMessageA
 004A87B0    mov         eax,dword ptr [ebp-4]
 004A87B3    cmp         byte ptr [eax+226],0
>004A87BA    jne         004A87C3
 004A87BC    mov         eax,dword ptr [ebp-8]
 004A87BF    add         dword ptr [eax+4],2
 004A87C3    pop         ecx
 004A87C4    pop         ecx
 004A87C5    pop         ebp
 004A87C6    ret
end;*}

//004A87C8
{*function sub_004A87C8(?:?):?;
begin
 004A87C8    push        ebp
 004A87C9    mov         ebp,esp
 004A87CB    add         esp,0FFFFFFF4
 004A87CE    push        ebx
 004A87CF    mov         dword ptr [ebp-8],edx
 004A87D2    mov         dword ptr [ebp-4],eax
 004A87D5    mov         eax,dword ptr [ebp-8]
 004A87D8    mov         dword ptr [ebp-0C],eax
 004A87DB    mov         eax,dword ptr [ebp-4]
 004A87DE    cmp         word ptr [eax+262],0;TCustomTabControl.?f262:word
>004A87E6    je          004A8801
 004A87E8    lea         eax,[ebp-0C]
 004A87EB    push        eax
 004A87EC    mov         ebx,dword ptr [ebp-4]
 004A87EF    mov         ecx,dword ptr [ebp-8]
 004A87F2    mov         edx,dword ptr [ebp-4]
 004A87F5    mov         eax,dword ptr [ebx+264];TCustomTabControl.?f264:dword
 004A87FB    call        dword ptr [ebx+260];TCustomTabControl.FOnGetImageIndex
 004A8801    mov         eax,dword ptr [ebp-0C]
 004A8804    pop         ebx
 004A8805    mov         esp,ebp
 004A8807    pop         ebp
 004A8808    ret
end;*}

//004A880C
{*function TPageControl.GetTabIndex:?;
begin
 004A880C    push        ebp
 004A880D    mov         ebp,esp
 004A880F    add         esp,0FFFFFFF8
 004A8812    mov         dword ptr [ebp-4],eax
 004A8815    push        0
 004A8817    push        0
 004A8819    push        130B
 004A881E    mov         eax,dword ptr [ebp-4]
 004A8821    call        TWinControl.GetHandle
 004A8826    push        eax
 004A8827    call        user32.SendMessageA
 004A882C    mov         dword ptr [ebp-8],eax
 004A882F    mov         eax,dword ptr [ebp-8]
 004A8832    pop         ecx
 004A8833    pop         ecx
 004A8834    pop         ebp
 004A8835    ret
end;*}

//004A8838
procedure TCustomTabControl.Loaded;
begin
{*
 004A8838    push        ebp
 004A8839    mov         ebp,esp
 004A883B    push        ecx
 004A883C    mov         dword ptr [ebp-4],eax
 004A883F    mov         eax,dword ptr [ebp-4]
 004A8842    call        TControl.Loaded
 004A8847    mov         eax,dword ptr [ebp-4]
 004A884A    cmp         dword ptr [eax+214],0;TCustomTabControl.FImages:TCustomImageList
>004A8851    je          004A885B
 004A8853    mov         eax,dword ptr [ebp-4]
 004A8856    call        004A8EE4
 004A885B    pop         ecx
 004A885C    pop         ebp
 004A885D    ret
*}
end;

//004A8860
procedure TPageControl.SetHotTrack(Value:Boolean);
begin
{*
 004A8860    push        ebp
 004A8861    mov         ebp,esp
 004A8863    add         esp,0FFFFFFF8
 004A8866    mov         byte ptr [ebp-5],dl
 004A8869    mov         dword ptr [ebp-4],eax
 004A886C    mov         eax,dword ptr [ebp-4]
 004A886F    mov         al,byte ptr [eax+20C];TPageControl.FHotTrack:Boolean
 004A8875    cmp         al,byte ptr [ebp-5]
>004A8878    je          004A888E
 004A887A    mov         al,byte ptr [ebp-5]
 004A887D    mov         edx,dword ptr [ebp-4]
 004A8880    mov         byte ptr [edx+20C],al;TPageControl.FHotTrack:Boolean
 004A8886    mov         eax,dword ptr [ebp-4]
 004A8889    call        TWinControl.RecreateWnd
 004A888E    pop         ecx
 004A888F    pop         ecx
 004A8890    pop         ebp
 004A8891    ret
*}
end;

//004A8894
procedure TCustomTabControl.Notification(AComponent:TComponent; Operation:TOperation);
begin
{*
 004A8894    push        ebp
 004A8895    mov         ebp,esp
 004A8897    add         esp,0FFFFFFF4
 004A889A    mov         byte ptr [ebp-9],cl
 004A889D    mov         dword ptr [ebp-8],edx
 004A88A0    mov         dword ptr [ebp-4],eax
 004A88A3    mov         cl,byte ptr [ebp-9]
 004A88A6    mov         edx,dword ptr [ebp-8]
 004A88A9    mov         eax,dword ptr [ebp-4]
 004A88AC    call        TControl.Notification
 004A88B1    cmp         byte ptr [ebp-9],1
>004A88B5    jne         004A88CF
 004A88B7    mov         eax,dword ptr [ebp-8]
 004A88BA    mov         edx,dword ptr [ebp-4]
 004A88BD    cmp         eax,dword ptr [edx+214];TCustomTabControl.FImages:TCustomImageList
>004A88C3    jne         004A88CF
 004A88C5    xor         edx,edx
 004A88C7    mov         eax,dword ptr [ebp-4]
 004A88CA    call        TPageControl.SetImages
 004A88CF    mov         esp,ebp
 004A88D1    pop         ebp
 004A88D2    ret
*}
end;

//004A88D4
procedure TPageControl.SetImages(Value:TCustomImageList);
begin
{*
 004A88D4    push        ebp
 004A88D5    mov         ebp,esp
 004A88D7    add         esp,0FFFFFFF8
 004A88DA    mov         dword ptr [ebp-8],edx
 004A88DD    mov         dword ptr [ebp-4],eax
 004A88E0    mov         eax,dword ptr [ebp-4]
 004A88E3    cmp         dword ptr [eax+214],0;TPageControl.FImages:TCustomImageList
>004A88EA    je          004A8903
 004A88EC    mov         eax,dword ptr [ebp-4]
 004A88EF    mov         edx,dword ptr [eax+210];TPageControl.FImageChangeLink:TChangeLink
 004A88F5    mov         eax,dword ptr [ebp-4]
 004A88F8    mov         eax,dword ptr [eax+214];TPageControl.FImages:TCustomImageList
 004A88FE    call        004DD6F8
 004A8903    mov         eax,dword ptr [ebp-8]
 004A8906    mov         edx,dword ptr [ebp-4]
 004A8909    mov         dword ptr [edx+214],eax;TPageControl.FImages:TCustomImageList
 004A890F    mov         eax,dword ptr [ebp-4]
 004A8912    cmp         dword ptr [eax+214],0;TPageControl.FImages:TCustomImageList
>004A8919    je          004A8963
 004A891B    mov         eax,dword ptr [ebp-4]
 004A891E    mov         edx,dword ptr [eax+210];TPageControl.FImageChangeLink:TChangeLink
 004A8924    mov         eax,dword ptr [ebp-4]
 004A8927    mov         eax,dword ptr [eax+214];TPageControl.FImages:TCustomImageList
 004A892D    call        004DD760
 004A8932    mov         edx,dword ptr [ebp-4]
 004A8935    mov         eax,dword ptr [ebp-4]
 004A8938    mov         eax,dword ptr [eax+214];TPageControl.FImages:TCustomImageList
 004A893E    call        00483020
 004A8943    mov         eax,dword ptr [ebp-4]
 004A8946    mov         eax,dword ptr [eax+214];TPageControl.FImages:TCustomImageList
 004A894C    call        004DC758
 004A8951    push        eax
 004A8952    xor         ecx,ecx
 004A8954    mov         edx,1303
 004A8959    mov         eax,dword ptr [ebp-4]
 004A895C    call        004CC7DC
>004A8961    jmp         004A8974
 004A8963    push        0
 004A8965    xor         ecx,ecx
 004A8967    mov         edx,1303
 004A896C    mov         eax,dword ptr [ebp-4]
 004A896F    call        004CC7DC
 004A8974    pop         ecx
 004A8975    pop         ecx
 004A8976    pop         ebp
 004A8977    ret
*}
end;

//004A8978
{*procedure sub_004A8978(?:?; ?:?);
begin
 004A8978    push        ebp
 004A8979    mov         ebp,esp
 004A897B    add         esp,0FFFFFFF8
 004A897E    mov         dword ptr [ebp-8],edx
 004A8981    mov         dword ptr [ebp-4],eax
 004A8984    mov         eax,dword ptr [ebp-8]
 004A8987    call        004DC758
 004A898C    push        eax
 004A898D    xor         ecx,ecx
 004A898F    mov         edx,1303
 004A8994    mov         eax,dword ptr [ebp-4]
 004A8997    call        004CC7DC
 004A899C    pop         ecx
 004A899D    pop         ecx
 004A899E    pop         ebp
 004A899F    ret
end;*}

//004A89A0
{*function sub_004A89A0(?:TPageControl; ?:?):?;
begin
 004A89A0    push        ebp
 004A89A1    mov         ebp,esp
 004A89A3    add         esp,0FFFFFFF4
 004A89A6    xor         ecx,ecx
 004A89A8    mov         dword ptr [ebp-0C],ecx
 004A89AB    mov         byte ptr [ebp-5],dl
 004A89AE    mov         dword ptr [ebp-4],eax
 004A89B1    xor         eax,eax
 004A89B3    push        ebp
 004A89B4    push        4A8A3A
 004A89B9    push        dword ptr fs:[eax]
 004A89BC    mov         dword ptr fs:[eax],esp
 004A89BF    mov         eax,dword ptr [ebp-4]
 004A89C2    mov         al,byte ptr [eax+218]
 004A89C8    cmp         al,byte ptr [ebp-5]
 004A89CB    setne       byte ptr [ebp-6]
 004A89CF    cmp         byte ptr [ebp-6],0
>004A89D3    je          004A8A24
 004A89D5    cmp         byte ptr [ebp-5],0
>004A89D9    jne         004A8A08
 004A89DB    mov         eax,dword ptr [ebp-4]
 004A89DE    cmp         byte ptr [eax+226],2
>004A89E5    je          004A89F3
 004A89E7    mov         eax,dword ptr [ebp-4]
 004A89EA    cmp         byte ptr [eax+226],3
>004A89F1    jne         004A8A08
 004A89F3    lea         edx,[ebp-0C]
 004A89F6    mov         eax,[0055B5A8];^sTabMustBeMultiLine:TResStringRec
 004A89FB    call        LoadResString
 004A8A00    mov         eax,dword ptr [ebp-0C]
 004A8A03    call        004A7D3C
 004A8A08    mov         al,byte ptr [ebp-5]
 004A8A0B    mov         edx,dword ptr [ebp-4]
 004A8A0E    mov         byte ptr [edx+218],al
 004A8A14    cmp         byte ptr [ebp-5],0
>004A8A18    jne         004A8A24
 004A8A1A    mov         eax,dword ptr [ebp-4]
 004A8A1D    mov         byte ptr [eax+224],0
 004A8A24    xor         eax,eax
 004A8A26    pop         edx
 004A8A27    pop         ecx
 004A8A28    pop         ecx
 004A8A29    mov         dword ptr fs:[eax],edx
 004A8A2C    push        4A8A41
 004A8A31    lea         eax,[ebp-0C]
 004A8A34    call        @LStrClr
 004A8A39    ret
>004A8A3A    jmp         @HandleFinally
>004A8A3F    jmp         004A8A31
 004A8A41    mov         al,byte ptr [ebp-6]
 004A8A44    mov         esp,ebp
 004A8A46    pop         ebp
 004A8A47    ret
end;*}

//004A8A48
procedure TPageControl.SetMultiLine(Value:Boolean);
begin
{*
 004A8A48    push        ebp
 004A8A49    mov         ebp,esp
 004A8A4B    add         esp,0FFFFFFF8
 004A8A4E    mov         byte ptr [ebp-5],dl
 004A8A51    mov         dword ptr [ebp-4],eax
 004A8A54    mov         dl,byte ptr [ebp-5]
 004A8A57    mov         eax,dword ptr [ebp-4]
 004A8A5A    call        004A89A0
 004A8A5F    test        al,al
>004A8A61    je          004A8A6B
 004A8A63    mov         eax,dword ptr [ebp-4]
 004A8A66    call        TWinControl.RecreateWnd
 004A8A6B    pop         ecx
 004A8A6C    pop         ecx
 004A8A6D    pop         ebp
 004A8A6E    ret
*}
end;

//004A8A70
procedure TPageControl.SetOwnerDraw(Value:Boolean);
begin
{*
 004A8A70    push        ebp
 004A8A71    mov         ebp,esp
 004A8A73    add         esp,0FFFFFFF8
 004A8A76    mov         byte ptr [ebp-5],dl
 004A8A79    mov         dword ptr [ebp-4],eax
 004A8A7C    mov         eax,dword ptr [ebp-4]
 004A8A7F    mov         al,byte ptr [eax+21A];TPageControl.FOwnerDraw:Boolean
 004A8A85    cmp         al,byte ptr [ebp-5]
>004A8A88    je          004A8A9E
 004A8A8A    mov         al,byte ptr [ebp-5]
 004A8A8D    mov         edx,dword ptr [ebp-4]
 004A8A90    mov         byte ptr [edx+21A],al;TPageControl.FOwnerDraw:Boolean
 004A8A96    mov         eax,dword ptr [ebp-4]
 004A8A99    call        TWinControl.RecreateWnd
 004A8A9E    pop         ecx
 004A8A9F    pop         ecx
 004A8AA0    pop         ebp
 004A8AA1    ret
*}
end;

//004A8AA4
procedure TPageControl.SetRaggedRight(Value:Boolean);
begin
{*
 004A8AA4    push        ebp
 004A8AA5    mov         ebp,esp
 004A8AA7    add         esp,0FFFFFFF8
 004A8AAA    mov         byte ptr [ebp-5],dl
 004A8AAD    mov         dword ptr [ebp-4],eax
 004A8AB0    mov         eax,dword ptr [ebp-4]
 004A8AB3    mov         al,byte ptr [eax+21B];TPageControl.FRaggedRight:Boolean
 004A8AB9    cmp         al,byte ptr [ebp-5]
>004A8ABC    je          004A8ADA
 004A8ABE    mov         al,byte ptr [ebp-5]
 004A8AC1    mov         edx,dword ptr [ebp-4]
 004A8AC4    mov         byte ptr [edx+21B],al;TPageControl.FRaggedRight:Boolean
 004A8ACA    mov         cl,byte ptr [ebp-5]
 004A8ACD    mov         edx,800
 004A8AD2    mov         eax,dword ptr [ebp-4]
 004A8AD5    call        004A7BE0
 004A8ADA    pop         ecx
 004A8ADB    pop         ecx
 004A8ADC    pop         ebp
 004A8ADD    ret
*}
end;

//004A8AE0
procedure TPageControl.SetScrollOpposite(Value:Boolean);
begin
{*
 004A8AE0    push        ebp
 004A8AE1    mov         ebp,esp
 004A8AE3    add         esp,0FFFFFFF8
 004A8AE6    mov         byte ptr [ebp-5],dl
 004A8AE9    mov         dword ptr [ebp-4],eax
 004A8AEC    mov         eax,dword ptr [ebp-4]
 004A8AEF    mov         al,byte ptr [eax+224];TPageControl.FScrollOpposite:Boolean
 004A8AF5    cmp         al,byte ptr [ebp-5]
>004A8AF8    je          004A8B20
 004A8AFA    mov         al,byte ptr [ebp-5]
 004A8AFD    mov         edx,dword ptr [ebp-4]
 004A8B00    mov         byte ptr [edx+224],al;TPageControl.FScrollOpposite:Boolean
 004A8B06    cmp         byte ptr [ebp-5],0
>004A8B0A    je          004A8B18
 004A8B0C    mov         al,byte ptr [ebp-5]
 004A8B0F    mov         edx,dword ptr [ebp-4]
 004A8B12    mov         byte ptr [edx+218],al;TPageControl.FMultiLine:Boolean
 004A8B18    mov         eax,dword ptr [ebp-4]
 004A8B1B    call        TWinControl.RecreateWnd
 004A8B20    pop         ecx
 004A8B21    pop         ecx
 004A8B22    pop         ebp
 004A8B23    ret
*}
end;

//004A8B24
procedure TPageControl.SetStyle(Value:TTabStyle);
begin
{*
 004A8B24    push        ebp
 004A8B25    mov         ebp,esp
 004A8B27    add         esp,0FFFFFFF4
 004A8B2A    xor         ecx,ecx
 004A8B2C    mov         dword ptr [ebp-0C],ecx
 004A8B2F    mov         byte ptr [ebp-5],dl
 004A8B32    mov         dword ptr [ebp-4],eax
 004A8B35    xor         eax,eax
 004A8B37    push        ebp
 004A8B38    push        4A8BC0
 004A8B3D    push        dword ptr fs:[eax]
 004A8B40    mov         dword ptr fs:[eax],esp
 004A8B43    mov         eax,dword ptr [ebp-4]
 004A8B46    mov         al,byte ptr [eax+225];TPageControl.FStyle:TTabStyle
 004A8B4C    cmp         al,byte ptr [ebp-5]
>004A8B4F    je          004A8BAA
 004A8B51    cmp         byte ptr [ebp-5],0
>004A8B55    je          004A8B84
 004A8B57    mov         eax,dword ptr [ebp-4]
 004A8B5A    cmp         byte ptr [eax+226],0;TPageControl.FTabPosition:TTabPosition
>004A8B61    je          004A8B84
 004A8B63    lea         edx,[ebp-0C]
 004A8B66    mov         eax,[0055B3F4];^SInvalidTabStyle:TResStringRec
 004A8B6B    call        LoadResString
 004A8B70    mov         ecx,dword ptr [ebp-0C]
 004A8B73    mov         dl,1
 004A8B75    mov         eax,[00475960];EInvalidOperation
 004A8B7A    call        Exception.Create;EInvalidOperation.Create
 004A8B7F    call        @RaiseExcept
 004A8B84    cmp         byte ptr [ebp-5],0
 004A8B88    sete        dl
 004A8B8B    mov         eax,dword ptr [ebp-4]
 004A8B8E    mov         ecx,dword ptr [eax]
 004A8B90    call        dword ptr [ecx+0BC];TRadioGroup.SetParentBackground
 004A8B96    mov         al,byte ptr [ebp-5]
 004A8B99    mov         edx,dword ptr [ebp-4]
 004A8B9C    mov         byte ptr [edx+225],al;TPageControl.FStyle:TTabStyle
 004A8BA2    mov         eax,dword ptr [ebp-4]
 004A8BA5    call        TWinControl.RecreateWnd
 004A8BAA    xor         eax,eax
 004A8BAC    pop         edx
 004A8BAD    pop         ecx
 004A8BAE    pop         ecx
 004A8BAF    mov         dword ptr fs:[eax],edx
 004A8BB2    push        4A8BC7
 004A8BB7    lea         eax,[ebp-0C]
 004A8BBA    call        @LStrClr
 004A8BBF    ret
>004A8BC0    jmp         @HandleFinally
>004A8BC5    jmp         004A8BB7
 004A8BC7    mov         esp,ebp
 004A8BC9    pop         ebp
 004A8BCA    ret
*}
end;

//004A8BCC
procedure TPageControl.SetTabHeight(Value:Smallint);
begin
{*
 004A8BCC    push        ebp
 004A8BCD    mov         ebp,esp
 004A8BCF    add         esp,0FFFFFEEC
 004A8BD5    xor         ecx,ecx
 004A8BD7    mov         dword ptr [ebp-114],ecx
 004A8BDD    mov         word ptr [ebp-6],dx
 004A8BE1    mov         dword ptr [ebp-4],eax
 004A8BE4    xor         eax,eax
 004A8BE6    push        ebp
 004A8BE7    push        4A8C82
 004A8BEC    push        dword ptr fs:[eax]
 004A8BEF    mov         dword ptr fs:[eax],esp
 004A8BF2    mov         eax,dword ptr [ebp-4]
 004A8BF5    mov         ax,word ptr [eax+22E];TPageControl.FTabSize:Smallint
 004A8BFC    cmp         ax,word ptr [ebp-6]
>004A8C00    je          004A8C69
 004A8C02    cmp         word ptr [ebp-6],0
>004A8C07    jge         004A8C53
 004A8C09    lea         edx,[ebp-110]
 004A8C0F    mov         eax,dword ptr [ebp-4]
 004A8C12    mov         eax,dword ptr [eax]
 004A8C14    call        TObject.ClassName
 004A8C19    lea         eax,[ebp-110]
 004A8C1F    mov         dword ptr [ebp-10],eax
 004A8C22    mov         byte ptr [ebp-0C],4
 004A8C26    lea         eax,[ebp-10]
 004A8C29    push        eax
 004A8C2A    push        0
 004A8C2C    lea         edx,[ebp-114]
 004A8C32    mov         eax,[0055B2B4];^SPropertyOutOfRange:TResStringRec
 004A8C37    call        LoadResString
 004A8C3C    mov         ecx,dword ptr [ebp-114]
 004A8C42    mov         dl,1
 004A8C44    mov         eax,[00475960];EInvalidOperation
 004A8C49    call        Exception.CreateFmt;EInvalidOperation.Create
 004A8C4E    call        @RaiseExcept
 004A8C53    mov         ax,word ptr [ebp-6]
 004A8C57    mov         edx,dword ptr [ebp-4]
 004A8C5A    mov         word ptr [edx+22E],ax;TPageControl.FTabSize:Smallint
 004A8C61    mov         eax,dword ptr [ebp-4]
 004A8C64    call        004A8EB0
 004A8C69    xor         eax,eax
 004A8C6B    pop         edx
 004A8C6C    pop         ecx
 004A8C6D    pop         ecx
 004A8C6E    mov         dword ptr fs:[eax],edx
 004A8C71    push        4A8C89
 004A8C76    lea         eax,[ebp-114]
 004A8C7C    call        @LStrClr
 004A8C81    ret
>004A8C82    jmp         @HandleFinally
>004A8C87    jmp         004A8C76
 004A8C89    mov         esp,ebp
 004A8C8B    pop         ebp
 004A8C8C    ret
*}
end;

//004A8C90
procedure sub_004A8C90(?:Integer);
begin
{*
 004A8C90    push        ebp
 004A8C91    mov         ebp,esp
 004A8C93    add         esp,0FFFFFFF8
 004A8C96    mov         dword ptr [ebp-8],edx
 004A8C99    mov         dword ptr [ebp-4],eax
 004A8C9C    push        0
 004A8C9E    mov         eax,dword ptr [ebp-8]
 004A8CA1    push        eax
 004A8CA2    push        130C
 004A8CA7    mov         eax,dword ptr [ebp-4]
 004A8CAA    call        TWinControl.GetHandle
 004A8CAF    push        eax
 004A8CB0    call        user32.SendMessageA
 004A8CB5    pop         ecx
 004A8CB6    pop         ecx
 004A8CB7    pop         ebp
 004A8CB8    ret
*}
end;

//004A8CBC
procedure TPageControl.SetTabPosition(Value:TTabPosition);
begin
{*
 004A8CBC    push        ebp
 004A8CBD    mov         ebp,esp
 004A8CBF    add         esp,0FFFFFFF4
 004A8CC2    xor         ecx,ecx
 004A8CC4    mov         dword ptr [ebp-0C],ecx
 004A8CC7    mov         byte ptr [ebp-5],dl
 004A8CCA    mov         dword ptr [ebp-4],eax
 004A8CCD    xor         eax,eax
 004A8CCF    push        ebp
 004A8CD0    push        4A8D68
 004A8CD5    push        dword ptr fs:[eax]
 004A8CD8    mov         dword ptr fs:[eax],esp
 004A8CDB    mov         eax,dword ptr [ebp-4]
 004A8CDE    mov         al,byte ptr [eax+226];TPageControl.FTabPosition:TTabPosition
 004A8CE4    cmp         al,byte ptr [ebp-5]
>004A8CE7    je          004A8D52
 004A8CE9    cmp         byte ptr [ebp-5],0
>004A8CED    je          004A8D1C
 004A8CEF    mov         eax,dword ptr [ebp-4]
 004A8CF2    cmp         byte ptr [eax+225],0;TPageControl.FStyle:TTabStyle
>004A8CF9    je          004A8D1C
 004A8CFB    lea         edx,[ebp-0C]
 004A8CFE    mov         eax,[0055B148];^SInvalidTabPosition:TResStringRec
 004A8D03    call        LoadResString
 004A8D08    mov         ecx,dword ptr [ebp-0C]
 004A8D0B    mov         dl,1
 004A8D0D    mov         eax,[00475960];EInvalidOperation
 004A8D12    call        Exception.Create;EInvalidOperation.Create
 004A8D17    call        @RaiseExcept
 004A8D1C    mov         al,byte ptr [ebp-5]
 004A8D1F    mov         edx,dword ptr [ebp-4]
 004A8D22    mov         byte ptr [edx+226],al;TPageControl.FTabPosition:TTabPosition
 004A8D28    mov         eax,dword ptr [ebp-4]
 004A8D2B    cmp         byte ptr [eax+218],0;TPageControl.FMultiLine:Boolean
>004A8D32    jne         004A8D4A
 004A8D34    cmp         byte ptr [ebp-5],2
>004A8D38    je          004A8D40
 004A8D3A    cmp         byte ptr [ebp-5],3
>004A8D3E    jne         004A8D4A
 004A8D40    mov         dl,1
 004A8D42    mov         eax,dword ptr [ebp-4]
 004A8D45    call        004A89A0
 004A8D4A    mov         eax,dword ptr [ebp-4]
 004A8D4D    call        TWinControl.RecreateWnd
 004A8D52    xor         eax,eax
 004A8D54    pop         edx
 004A8D55    pop         ecx
 004A8D56    pop         ecx
 004A8D57    mov         dword ptr fs:[eax],edx
 004A8D5A    push        4A8D6F
 004A8D5F    lea         eax,[ebp-0C]
 004A8D62    call        @LStrClr
 004A8D67    ret
>004A8D68    jmp         @HandleFinally
>004A8D6D    jmp         004A8D5F
 004A8D6F    mov         esp,ebp
 004A8D71    pop         ebp
 004A8D72    ret
*}
end;

//004A8D74
procedure TPageControl.SetTabWidth(Value:Smallint);
begin
{*
 004A8D74    push        ebp
 004A8D75    mov         ebp,esp
 004A8D77    add         esp,0FFFFFEEC
 004A8D7D    xor         ecx,ecx
 004A8D7F    mov         dword ptr [ebp-114],ecx
 004A8D85    mov         word ptr [ebp-6],dx
 004A8D89    mov         dword ptr [ebp-4],eax
 004A8D8C    xor         eax,eax
 004A8D8E    push        ebp
 004A8D8F    push        4A8E54
 004A8D94    push        dword ptr fs:[eax]
 004A8D97    mov         dword ptr fs:[eax],esp
 004A8D9A    mov         eax,dword ptr [ebp-4]
 004A8D9D    mov         ax,word ptr [eax+22C];TPageControl.FTabSize:TSmallPoint
 004A8DA4    cmp         ax,word ptr [ebp-6]
>004A8DA8    je          004A8E3B
 004A8DAE    cmp         word ptr [ebp-6],0
>004A8DB3    jge         004A8DFF
 004A8DB5    lea         edx,[ebp-110]
 004A8DBB    mov         eax,dword ptr [ebp-4]
 004A8DBE    mov         eax,dword ptr [eax]
 004A8DC0    call        TObject.ClassName
 004A8DC5    lea         eax,[ebp-110]
 004A8DCB    mov         dword ptr [ebp-10],eax
 004A8DCE    mov         byte ptr [ebp-0C],4
 004A8DD2    lea         eax,[ebp-10]
 004A8DD5    push        eax
 004A8DD6    push        0
 004A8DD8    lea         edx,[ebp-114]
 004A8DDE    mov         eax,[0055B2B4];^SPropertyOutOfRange:TResStringRec
 004A8DE3    call        LoadResString
 004A8DE8    mov         ecx,dword ptr [ebp-114]
 004A8DEE    mov         dl,1
 004A8DF0    mov         eax,[00475960];EInvalidOperation
 004A8DF5    call        Exception.CreateFmt;EInvalidOperation.Create
 004A8DFA    call        @RaiseExcept
 004A8DFF    mov         eax,dword ptr [ebp-4]
 004A8E02    mov         ax,word ptr [eax+22C];TPageControl.FTabSize:TSmallPoint
 004A8E09    mov         word ptr [ebp-8],ax
 004A8E0D    mov         ax,word ptr [ebp-6]
 004A8E11    mov         edx,dword ptr [ebp-4]
 004A8E14    mov         word ptr [edx+22C],ax;TPageControl.FTabSize:TSmallPoint
 004A8E1B    cmp         word ptr [ebp-8],0
>004A8E20    je          004A8E29
 004A8E22    cmp         word ptr [ebp-6],0
>004A8E27    jne         004A8E33
 004A8E29    mov         eax,dword ptr [ebp-4]
 004A8E2C    call        TWinControl.RecreateWnd
>004A8E31    jmp         004A8E3B
 004A8E33    mov         eax,dword ptr [ebp-4]
 004A8E36    call        004A8EB0
 004A8E3B    xor         eax,eax
 004A8E3D    pop         edx
 004A8E3E    pop         ecx
 004A8E3F    pop         ecx
 004A8E40    mov         dword ptr fs:[eax],edx
 004A8E43    push        4A8E5B
 004A8E48    lea         eax,[ebp-114]
 004A8E4E    call        @LStrClr
 004A8E53    ret
>004A8E54    jmp         @HandleFinally
>004A8E59    jmp         004A8E48
 004A8E5B    mov         esp,ebp
 004A8E5D    pop         ebp
 004A8E5E    ret
*}
end;

//004A8E60
procedure sub_004A8E60(?:TCustomTabControl);
begin
{*
 004A8E60    push        ebp
 004A8E61    mov         ebp,esp
 004A8E63    push        ecx
 004A8E64    mov         dword ptr [ebp-4],eax
 004A8E67    mov         eax,dword ptr [ebp-4]
 004A8E6A    cmp         byte ptr [eax+230],0;TCustomTabControl.FUpdating:Boolean
>004A8E71    jne         004A8EAD
 004A8E73    mov         eax,dword ptr [ebp-4]
 004A8E76    call        TWinControl.HandleAllocated
 004A8E7B    test        al,al
>004A8E7D    je          004A8EA5
 004A8E7F    mov         eax,dword ptr [ebp-4]
 004A8E82    movzx       eax,word ptr [eax+48];TCustomTabControl.Width:Integer
 004A8E86    mov         edx,dword ptr [ebp-4]
 004A8E89    movzx       edx,word ptr [edx+4C];TCustomTabControl.Height:Integer
 004A8E8D    shl         edx,10
 004A8E90    or          eax,edx
 004A8E92    push        eax
 004A8E93    push        0
 004A8E95    push        5
 004A8E97    mov         eax,dword ptr [ebp-4]
 004A8E9A    call        TWinControl.GetHandle
 004A8E9F    push        eax
 004A8EA0    call        user32.SendMessageA
 004A8EA5    mov         eax,dword ptr [ebp-4]
 004A8EA8    call        004CF09C
 004A8EAD    pop         ecx
 004A8EAE    pop         ebp
 004A8EAF    ret
*}
end;

//004A8EB0
procedure sub_004A8EB0(?:TCustomTabControl);
begin
{*
 004A8EB0    push        ebp
 004A8EB1    mov         ebp,esp
 004A8EB3    push        ecx
 004A8EB4    mov         dword ptr [ebp-4],eax
 004A8EB7    mov         eax,dword ptr [ebp-4]
 004A8EBA    mov         eax,dword ptr [eax+22C];TCustomTabControl.FTabSize:TSmallPoint
 004A8EC0    push        eax
 004A8EC1    push        0
 004A8EC3    push        1329
 004A8EC8    mov         eax,dword ptr [ebp-4]
 004A8ECB    call        TWinControl.GetHandle
 004A8ED0    push        eax
 004A8ED1    call        user32.SendMessageA
 004A8ED6    mov         eax,dword ptr [ebp-4]
 004A8ED9    call        004A8E60
 004A8EDE    pop         ecx
 004A8EDF    pop         ebp
 004A8EE0    ret
*}
end;

//004A8EE4
procedure sub_004A8EE4(?:TCustomTabControl);
begin
{*
 004A8EE4    push        ebp
 004A8EE5    mov         ebp,esp
 004A8EE7    add         esp,0FFFFFFBC
 004A8EEA    push        ebx
 004A8EEB    xor         edx,edx
 004A8EED    mov         dword ptr [ebp-2C],edx
 004A8EF0    mov         dword ptr [ebp-40],edx
 004A8EF3    mov         dword ptr [ebp-44],edx
 004A8EF6    mov         dword ptr [ebp-4],eax
 004A8EF9    xor         eax,eax
 004A8EFB    push        ebp
 004A8EFC    push        4A8FEA
 004A8F01    push        dword ptr fs:[eax]
 004A8F04    mov         dword ptr fs:[eax],esp
 004A8F07    mov         dword ptr [ebp-28],2
 004A8F0E    mov         eax,dword ptr [ebp-4]
 004A8F11    mov         eax,dword ptr [eax+228];TCustomTabControl.FTabs:TStrings
 004A8F17    mov         edx,dword ptr [eax]
 004A8F19    call        dword ptr [edx+14];@AbstractError
 004A8F1C    dec         eax
 004A8F1D    test        eax,eax
>004A8F1F    jl          004A8FBF
 004A8F25    inc         eax
 004A8F26    mov         dword ptr [ebp-0C],eax
 004A8F29    mov         dword ptr [ebp-8],0
 004A8F30    mov         edx,dword ptr [ebp-8]
 004A8F33    mov         eax,dword ptr [ebp-4]
 004A8F36    mov         ecx,dword ptr [eax]
 004A8F38    call        dword ptr [ecx+0D0];TCustomTabControl.sub_004A87C8
 004A8F3E    mov         dword ptr [ebp-14],eax
 004A8F41    lea         eax,[ebp-28]
 004A8F44    push        eax
 004A8F45    mov         eax,dword ptr [ebp-8]
 004A8F48    push        eax
 004A8F49    push        1306
 004A8F4E    mov         eax,dword ptr [ebp-4]
 004A8F51    call        TWinControl.GetHandle
 004A8F56    push        eax
 004A8F57    call        user32.SendMessageA
 004A8F5C    test        eax,eax
>004A8F5E    jne         004A8FB3
 004A8F60    lea         eax,[ebp-2C]
 004A8F63    push        eax
 004A8F64    lea         ecx,[ebp-40]
 004A8F67    mov         edx,dword ptr [ebp-8]
 004A8F6A    mov         eax,dword ptr [ebp-4]
 004A8F6D    mov         eax,dword ptr [eax+228];TCustomTabControl.FTabs:TStrings
 004A8F73    mov         ebx,dword ptr [eax]
 004A8F75    call        dword ptr [ebx+0C];@AbstractError
 004A8F78    mov         eax,dword ptr [ebp-40]
 004A8F7B    mov         dword ptr [ebp-3C],eax
 004A8F7E    mov         byte ptr [ebp-38],0B
 004A8F82    mov         eax,dword ptr [ebp-8]
 004A8F85    mov         dword ptr [ebp-34],eax
 004A8F88    mov         byte ptr [ebp-30],0
 004A8F8C    lea         eax,[ebp-3C]
 004A8F8F    push        eax
 004A8F90    lea         edx,[ebp-44]
 004A8F93    mov         eax,[0055B5AC];^sTabFailSet:TResStringRec
 004A8F98    call        LoadResString
 004A8F9D    mov         eax,dword ptr [ebp-44]
 004A8FA0    mov         ecx,1
 004A8FA5    pop         edx
 004A8FA6    call        Format
 004A8FAB    mov         eax,dword ptr [ebp-2C]
 004A8FAE    call        004A7D3C
 004A8FB3    inc         dword ptr [ebp-8]
 004A8FB6    dec         dword ptr [ebp-0C]
>004A8FB9    jne         004A8F30
 004A8FBF    mov         eax,dword ptr [ebp-4]
 004A8FC2    call        004A8E60
 004A8FC7    xor         eax,eax
 004A8FC9    pop         edx
 004A8FCA    pop         ecx
 004A8FCB    pop         ecx
 004A8FCC    mov         dword ptr fs:[eax],edx
 004A8FCF    push        4A8FF1
 004A8FD4    lea         eax,[ebp-44]
 004A8FD7    mov         edx,2
 004A8FDC    call        @LStrArrayClr
 004A8FE1    lea         eax,[ebp-2C]
 004A8FE4    call        @LStrClr
 004A8FE9    ret
>004A8FEA    jmp         @HandleFinally
>004A8FEF    jmp         004A8FD4
 004A8FF1    pop         ebx
 004A8FF2    mov         esp,ebp
 004A8FF4    pop         ebp
 004A8FF5    ret
*}
end;

//004A8FF8
procedure TCustomTabControl.CNDrawItem(var Message:TWMDrawItem);
begin
{*
 004A8FF8    push        ebp
 004A8FF9    mov         ebp,esp
 004A8FFB    add         esp,0FFFFFFF0
 004A8FFE    push        ebx
 004A8FFF    mov         dword ptr [ebp-8],edx
 004A9002    mov         dword ptr [ebp-4],eax
 004A9005    mov         eax,dword ptr [ebp-8]
 004A9008    mov         eax,dword ptr [eax+8]
 004A900B    mov         dword ptr [ebp-10],eax
 004A900E    mov         eax,dword ptr [ebp-10]
 004A9011    mov         eax,dword ptr [eax+18]
 004A9014    push        eax
 004A9015    call        gdi32.SaveDC
 004A901A    mov         dword ptr [ebp-0C],eax
 004A901D    mov         eax,dword ptr [ebp-4]
 004A9020    mov         eax,dword ptr [eax+208]
 004A9026    call        TCanvas.Lock
 004A902B    xor         eax,eax
 004A902D    push        ebp
 004A902E    push        4A90D6
 004A9033    push        dword ptr fs:[eax]
 004A9036    mov         dword ptr fs:[eax],esp
 004A9039    mov         eax,dword ptr [ebp-10]
 004A903C    mov         edx,dword ptr [eax+18]
 004A903F    mov         eax,dword ptr [ebp-4]
 004A9042    mov         eax,dword ptr [eax+208]
 004A9048    call        TCanvas.SetHandle
 004A904D    mov         eax,dword ptr [ebp-4]
 004A9050    mov         edx,dword ptr [eax+68]
 004A9053    mov         eax,dword ptr [ebp-4]
 004A9056    mov         eax,dword ptr [eax+208]
 004A905C    call        TCanvas.SetFont
 004A9061    mov         eax,dword ptr [ebp-4]
 004A9064    mov         edx,dword ptr [eax+170]
 004A906A    mov         eax,dword ptr [ebp-4]
 004A906D    mov         eax,dword ptr [eax+208]
 004A9073    call        TCanvas.SetBrush
 004A9078    mov         eax,dword ptr [ebp-10]
 004A907B    test        byte ptr [eax+10],1
 004A907F    setne       al
 004A9082    push        eax
 004A9083    mov         eax,dword ptr [ebp-10]
 004A9086    lea         ecx,[eax+1C]
 004A9089    mov         eax,dword ptr [ebp-10]
 004A908C    mov         edx,dword ptr [eax+8]
 004A908F    mov         eax,dword ptr [ebp-4]
 004A9092    mov         ebx,dword ptr [eax]
 004A9094    call        dword ptr [ebx+0CC]
 004A909A    xor         eax,eax
 004A909C    pop         edx
 004A909D    pop         ecx
 004A909E    pop         ecx
 004A909F    mov         dword ptr fs:[eax],edx
 004A90A2    push        4A90DD
 004A90A7    mov         eax,dword ptr [ebp-4]
 004A90AA    mov         eax,dword ptr [eax+208]
 004A90B0    xor         edx,edx
 004A90B2    call        TCanvas.SetHandle
 004A90B7    mov         eax,dword ptr [ebp-4]
 004A90BA    mov         eax,dword ptr [eax+208]
 004A90C0    call        TCanvas.Unlock
 004A90C5    mov         eax,dword ptr [ebp-0C]
 004A90C8    push        eax
 004A90C9    mov         eax,dword ptr [ebp-10]
 004A90CC    mov         eax,dword ptr [eax+18]
 004A90CF    push        eax
 004A90D0    call        gdi32.RestoreDC
 004A90D5    ret
>004A90D6    jmp         @HandleFinally
>004A90DB    jmp         004A90A7
 004A90DD    mov         eax,dword ptr [ebp-8]
 004A90E0    mov         dword ptr [eax+0C],1
 004A90E7    pop         ebx
 004A90E8    mov         esp,ebp
 004A90EA    pop         ebp
 004A90EB    ret
*}
end;

//004A90EC
{*procedure TCustomTabControl.WMDestroy(?:?);
begin
 004A90EC    push        ebp
 004A90ED    mov         ebp,esp
 004A90EF    add         esp,0FFFFFFF4
 004A90F2    mov         dword ptr [ebp-8],edx
 004A90F5    mov         dword ptr [ebp-4],eax
 004A90F8    mov         eax,dword ptr [ebp-4]
 004A90FB    cmp         dword ptr [eax+228],0;TCustomTabControl.FTabs:TStrings
>004A9102    je          004A9153
 004A9104    mov         eax,dword ptr [ebp-4]
 004A9107    mov         eax,dword ptr [eax+228];TCustomTabControl.FTabs:TStrings
 004A910D    mov         edx,dword ptr [eax]
 004A910F    call        dword ptr [edx+14];@AbstractError
 004A9112    test        eax,eax
>004A9114    jle         004A9153
 004A9116    mov         dl,1
 004A9118    mov         eax,[00476078];TStringList
 004A911D    call        TObject.Create;TStringList.Create
 004A9122    mov         edx,dword ptr [ebp-4]
 004A9125    mov         dword ptr [edx+220],eax;TCustomTabControl.FSaveTabs:TStringList
 004A912B    mov         eax,dword ptr [ebp-4]
 004A912E    mov         edx,dword ptr [eax+228];TCustomTabControl.FTabs:TStrings
 004A9134    mov         eax,dword ptr [ebp-4]
 004A9137    mov         eax,dword ptr [eax+220];TCustomTabControl.FSaveTabs:TStringList
 004A913D    mov         ecx,dword ptr [eax]
 004A913F    call        dword ptr [ecx+8];TStringList.sub_0047A184
 004A9142    mov         eax,dword ptr [ebp-4]
 004A9145    call        TPageControl.GetTabIndex
 004A914A    mov         edx,dword ptr [ebp-4]
 004A914D    mov         dword ptr [edx+21C],eax;TCustomTabControl.FSaveTabIndex:Integer
 004A9153    call        user32.GetFocus
 004A9158    mov         dword ptr [ebp-0C],eax
 004A915B    cmp         dword ptr [ebp-0C],0
>004A915F    je          004A918B
 004A9161    mov         eax,dword ptr [ebp-4]
 004A9164    call        TWinControl.GetHandle
 004A9169    cmp         eax,dword ptr [ebp-0C]
>004A916C    je          004A9184
 004A916E    mov         eax,dword ptr [ebp-0C]
 004A9171    push        eax
 004A9172    mov         eax,dword ptr [ebp-4]
 004A9175    call        TWinControl.GetHandle
 004A917A    push        eax
 004A917B    call        user32.IsChild
 004A9180    test        eax,eax
>004A9182    je          004A918B
 004A9184    push        0
 004A9186    call        user32.SetFocus
 004A918B    mov         edx,dword ptr [ebp-8]
 004A918E    mov         eax,dword ptr [ebp-4]
 004A9191    call        TWinControl.WMDestroy
 004A9196    mov         eax,dword ptr [ebp-4]
 004A9199    xor         edx,edx
 004A919B    mov         dword ptr [eax+180],edx;TCustomTabControl.FHandle:HWND
 004A91A1    mov         esp,ebp
 004A91A3    pop         ebp
 004A91A4    ret
end;*}

//004A91A8
{*procedure TCustomTabControl.WMNotifyFormat(?:?);
begin
 004A91A8    push        ebp
 004A91A9    mov         ebp,esp
 004A91AB    add         esp,0FFFFFFF8
 004A91AE    mov         dword ptr [ebp-8],edx
 004A91B1    mov         dword ptr [ebp-4],eax
 004A91B4    mov         eax,dword ptr [ebp-8]
 004A91B7    mov         eax,dword ptr [eax+8]
 004A91BA    push        eax
 004A91BB    mov         eax,dword ptr [ebp-8]
 004A91BE    mov         eax,dword ptr [eax+4]
 004A91C1    push        eax
 004A91C2    mov         eax,dword ptr [ebp-8]
 004A91C5    mov         eax,dword ptr [eax]
 004A91C7    push        eax
 004A91C8    mov         eax,dword ptr [ebp-4]
 004A91CB    call        TWinControl.GetHandle
 004A91D0    push        eax
 004A91D1    call        user32.DefWindowProcA
 004A91D6    mov         edx,dword ptr [ebp-8]
 004A91D9    mov         dword ptr [edx+0C],eax
 004A91DC    pop         ecx
 004A91DD    pop         ecx
 004A91DE    pop         ebp
 004A91DF    ret
end;*}

//004A91E0
procedure TCustomTabControl.WMSize(Message:TWMSize);
begin
{*
 004A91E0    push        ebp
 004A91E1    mov         ebp,esp
 004A91E3    add         esp,0FFFFFFF8
 004A91E6    mov         dword ptr [ebp-8],edx
 004A91E9    mov         dword ptr [ebp-4],eax
 004A91EC    mov         edx,dword ptr [ebp-8]
 004A91EF    mov         eax,dword ptr [ebp-4]
 004A91F2    call        TWinControl.WMSize
 004A91F7    push        5
 004A91F9    push        0
 004A91FB    push        0
 004A91FD    mov         eax,dword ptr [ebp-4]
 004A9200    call        TWinControl.GetHandle
 004A9205    push        eax
 004A9206    call        user32.RedrawWindow
 004A920B    pop         ecx
 004A920C    pop         ecx
 004A920D    pop         ebp
 004A920E    ret
*}
end;

//004A9210
{*procedure TCustomTabControl.CMFontChanged(?:?);
begin
 004A9210    push        ebp
 004A9211    mov         ebp,esp
 004A9213    add         esp,0FFFFFFF8
 004A9216    mov         dword ptr [ebp-8],edx
 004A9219    mov         dword ptr [ebp-4],eax
 004A921C    mov         edx,dword ptr [ebp-8]
 004A921F    mov         eax,dword ptr [ebp-4]
 004A9222    call        TWinControl.CMFontChanged
 004A9227    mov         eax,dword ptr [ebp-4]
 004A922A    call        TWinControl.HandleAllocated
 004A922F    test        al,al
>004A9231    je          004A9244
 004A9233    push        0
 004A9235    xor         ecx,ecx
 004A9237    mov         edx,5
 004A923C    mov         eax,dword ptr [ebp-4]
 004A923F    call        004CC7DC
 004A9244    pop         ecx
 004A9245    pop         ecx
 004A9246    pop         ebp
 004A9247    ret
end;*}

//004A9248
{*procedure TCustomTabControl.CMSysColorChange(?:?);
begin
 004A9248    push        ebp
 004A9249    mov         ebp,esp
 004A924B    add         esp,0FFFFFFF8
 004A924E    mov         dword ptr [ebp-8],edx
 004A9251    mov         dword ptr [ebp-4],eax
 004A9254    mov         edx,dword ptr [ebp-8]
 004A9257    mov         eax,dword ptr [ebp-4]
 004A925A    call        TWinControl.CMSysColorChange
 004A925F    mov         eax,dword ptr [ebp-4]
 004A9262    test        byte ptr [eax+1C],1;TCustomTabControl.FComponentState:TComponentState
>004A9266    jne         004A927C
 004A9268    mov         eax,dword ptr [ebp-8]
 004A926B    mov         dword ptr [eax],15
 004A9271    mov         edx,dword ptr [ebp-8]
 004A9274    mov         eax,dword ptr [ebp-4]
 004A9277    mov         ecx,dword ptr [eax]
 004A9279    call        dword ptr [ecx-10];TCustomTabControl.DefaultHandler
 004A927C    pop         ecx
 004A927D    pop         ecx
 004A927E    pop         ebp
 004A927F    ret
end;*}

//004A9280
{*procedure TCustomTabControl.CMTabStopChanged(?:?);
begin
 004A9280    push        ebp
 004A9281    mov         ebp,esp
 004A9283    add         esp,0FFFFFFF8
 004A9286    mov         dword ptr [ebp-8],edx
 004A9289    mov         dword ptr [ebp-4],eax
 004A928C    mov         eax,dword ptr [ebp-4]
 004A928F    test        byte ptr [eax+1C],10;TCustomTabControl.FComponentState:TComponentState
>004A9293    jne         004A929D
 004A9295    mov         eax,dword ptr [ebp-4]
 004A9298    call        TWinControl.RecreateWnd
 004A929D    pop         ecx
 004A929E    pop         ecx
 004A929F    pop         ebp
 004A92A0    ret
end;*}

//004A92A4
{*procedure TCustomTabControl.sub_004A92A4(?:?);
begin
 004A92A4    push        ebp
 004A92A5    mov         ebp,esp
 004A92A7    add         esp,0FFFFFFF8
 004A92AA    push        esi
 004A92AB    mov         dword ptr [ebp-8],edx
 004A92AE    mov         dword ptr [ebp-4],eax
 004A92B1    mov         eax,dword ptr [ebp-8]
 004A92B4    mov         eax,dword ptr [eax+8]
 004A92B7    mov         eax,dword ptr [eax+8]
 004A92BA    sub         eax,0FFFFFDD8
>004A92BF    je          004A92D2
 004A92C1    dec         eax
>004A92C2    jne         004A92F4
 004A92C4    mov         eax,dword ptr [ebp-4]
 004A92C7    mov         si,0FFB2
 004A92CB    call        @CallDynaInst;TCustomTabControl.sub_004A84FC
>004A92D0    jmp         004A92F4
 004A92D2    mov         eax,dword ptr [ebp-8]
 004A92D5    mov         dword ptr [eax+0C],1
 004A92DC    mov         eax,dword ptr [ebp-4]
 004A92DF    mov         si,0FFB3
 004A92E3    call        @CallDynaInst;TCustomTabControl.sub_004A84AC
 004A92E8    test        al,al
>004A92EA    je          004A92F4
 004A92EC    mov         eax,dword ptr [ebp-8]
 004A92EF    xor         edx,edx
 004A92F1    mov         dword ptr [eax+0C],edx
 004A92F4    pop         esi
 004A92F5    pop         ecx
 004A92F6    pop         ecx
 004A92F7    pop         ebp
 004A92F8    ret
end;*}

//004A92FC
{*procedure TCustomTabControl.CMDialogChar(?:?);
begin
 004A92FC    push        ebp
 004A92FD    mov         ebp,esp
 004A92FF    add         esp,0FFFFFFEC
 004A9302    push        ebx
 004A9303    push        esi
 004A9304    xor         ecx,ecx
 004A9306    mov         dword ptr [ebp-14],ecx
 004A9309    mov         dword ptr [ebp-8],edx
 004A930C    mov         dword ptr [ebp-4],eax
 004A930F    xor         eax,eax
 004A9311    push        ebp
 004A9312    push        4A93EB
 004A9317    push        dword ptr fs:[eax]
 004A931A    mov         dword ptr fs:[eax],esp
 004A931D    mov         eax,dword ptr [ebp-4]
 004A9320    mov         eax,dword ptr [eax+228];TCustomTabControl.FTabs:TStrings
 004A9326    mov         edx,dword ptr [eax]
 004A9328    call        dword ptr [edx+14];@AbstractError
 004A932B    dec         eax
 004A932C    test        eax,eax
>004A932E    jl          004A93CA
 004A9334    inc         eax
 004A9335    mov         dword ptr [ebp-10],eax
 004A9338    mov         dword ptr [ebp-0C],0
 004A933F    lea         ecx,[ebp-14]
 004A9342    mov         edx,dword ptr [ebp-0C]
 004A9345    mov         eax,dword ptr [ebp-4]
 004A9348    mov         eax,dword ptr [eax+228];TCustomTabControl.FTabs:TStrings
 004A934E    mov         ebx,dword ptr [eax]
 004A9350    call        dword ptr [ebx+0C];@AbstractError
 004A9353    mov         edx,dword ptr [ebp-14]
 004A9356    mov         eax,dword ptr [ebp-8]
 004A9359    mov         ax,word ptr [eax+4]
 004A935D    call        004E7E60
 004A9362    test        al,al
>004A9364    je          004A93BE
 004A9366    mov         edx,dword ptr [ebp-0C]
 004A9369    mov         eax,dword ptr [ebp-4]
 004A936C    mov         ecx,dword ptr [eax]
 004A936E    call        dword ptr [ecx+0C8];TCustomTabControl.sub_004A84E4
 004A9374    test        al,al
>004A9376    je          004A93BE
 004A9378    mov         eax,dword ptr [ebp-4]
 004A937B    mov         si,0FFB8
 004A937F    call        @CallDynaInst;TWinControl.sub_004D37A8
 004A9384    test        al,al
>004A9386    je          004A93BE
 004A9388    mov         eax,dword ptr [ebp-8]
 004A938B    mov         dword ptr [eax+0C],1
 004A9392    mov         eax,dword ptr [ebp-4]
 004A9395    mov         si,0FFB3
 004A9399    call        @CallDynaInst;TCustomTabControl.sub_004A84AC
 004A939E    test        al,al
>004A93A0    je          004A93D5
 004A93A2    mov         edx,dword ptr [ebp-0C]
 004A93A5    mov         eax,dword ptr [ebp-4]
 004A93A8    mov         ecx,dword ptr [eax]
 004A93AA    call        dword ptr [ecx+0D4];TCustomTabControl.sub_004A8C90
 004A93B0    mov         eax,dword ptr [ebp-4]
 004A93B3    mov         si,0FFB2
 004A93B7    call        @CallDynaInst;TCustomTabControl.sub_004A84FC
>004A93BC    jmp         004A93D5
 004A93BE    inc         dword ptr [ebp-0C]
 004A93C1    dec         dword ptr [ebp-10]
>004A93C4    jne         004A933F
 004A93CA    mov         edx,dword ptr [ebp-8]
 004A93CD    mov         eax,dword ptr [ebp-4]
 004A93D0    call        TWinControl.CMDialogChar
 004A93D5    xor         eax,eax
 004A93D7    pop         edx
 004A93D8    pop         ecx
 004A93D9    pop         ecx
 004A93DA    mov         dword ptr fs:[eax],edx
 004A93DD    push        4A93F2
 004A93E2    lea         eax,[ebp-14]
 004A93E5    call        @LStrClr
 004A93EA    ret
>004A93EB    jmp         @HandleFinally
>004A93F0    jmp         004A93E2
 004A93F2    pop         esi
 004A93F3    pop         ebx
 004A93F4    mov         esp,ebp
 004A93F6    pop         ebp
 004A93F7    ret
end;*}

//004A93F8
{*procedure sub_004A93F8(?:?);
begin
 004A93F8    push        ebp
 004A93F9    mov         ebp,esp
 004A93FB    add         esp,0FFFFFFE8
 004A93FE    push        esi
 004A93FF    push        edi
 004A9400    mov         dword ptr [ebp-8],edx
 004A9403    mov         dword ptr [ebp-4],eax
 004A9406    lea         edx,[ebp-18]
 004A9409    mov         eax,dword ptr [ebp-4]
 004A940C    call        004A8780
 004A9411    mov         eax,dword ptr [ebp-8]
 004A9414    lea         esi,[ebp-18]
 004A9417    mov         edi,eax
 004A9419    movs        dword ptr [edi],dword ptr [esi]
 004A941A    movs        dword ptr [edi],dword ptr [esi]
 004A941B    movs        dword ptr [edi],dword ptr [esi]
 004A941C    movs        dword ptr [edi],dword ptr [esi]
 004A941D    mov         edx,dword ptr [ebp-8]
 004A9420    mov         eax,dword ptr [ebp-4]
 004A9423    call        004CE790
 004A9428    pop         edi
 004A9429    pop         esi
 004A942A    mov         esp,ebp
 004A942C    pop         ebp
 004A942D    ret
end;*}

//004A9430
procedure TCustomTabControl.TCMAdjustRect(var Message:TMessage);
begin
{*
 004A9430    push        ebp
 004A9431    mov         ebp,esp
 004A9433    add         esp,0FFFFFFF8
 004A9436    push        ebx
 004A9437    push        esi
 004A9438    push        edi
 004A9439    mov         dword ptr [ebp-8],edx
 004A943C    mov         dword ptr [ebp-4],eax
 004A943F    xor         eax,eax
 004A9441    push        ebp
 004A9442    push        4A948C
 004A9447    push        dword ptr fs:[eax]
 004A944A    mov         dword ptr fs:[eax],esp
 004A944D    mov         edx,dword ptr [ebp-8]
 004A9450    mov         eax,dword ptr [ebp-4]
 004A9453    mov         ecx,dword ptr [eax]
 004A9455    call        dword ptr [ecx-10]
 004A9458    mov         eax,dword ptr [ebp-4]
 004A945B    cmp         byte ptr [eax+226],0
>004A9462    je          004A9482
 004A9464    mov         eax,dword ptr [ebp-8]
 004A9467    cmp         dword ptr [eax+4],0
>004A946B    jne         004A9482
 004A946D    mov         eax,dword ptr [ebp-8]
 004A9470    mov         eax,dword ptr [eax+8]
 004A9473    mov         edx,dword ptr [ebp-4]
 004A9476    mov         esi,eax
 004A9478    lea         edi,[edx+231]
 004A947E    movs        dword ptr [edi],dword ptr [esi]
 004A947F    movs        dword ptr [edi],dword ptr [esi]
 004A9480    movs        dword ptr [edi],dword ptr [esi]
 004A9481    movs        dword ptr [edi],dword ptr [esi]
 004A9482    xor         eax,eax
 004A9484    pop         edx
 004A9485    pop         ecx
 004A9486    pop         ecx
 004A9487    mov         dword ptr fs:[eax],edx
>004A948A    jmp         004A94AB
>004A948C    jmp         @HandleAnyException
 004A9491    mov         eax,dword ptr [ebp-4]
 004A9494    mov         edx,dword ptr [ebp-8]
 004A9497    mov         edx,dword ptr [edx+8]
 004A949A    lea         esi,[eax+231]
 004A94A0    mov         edi,edx
 004A94A2    movs        dword ptr [edi],dword ptr [esi]
 004A94A3    movs        dword ptr [edi],dword ptr [esi]
 004A94A4    movs        dword ptr [edi],dword ptr [esi]
 004A94A5    movs        dword ptr [edi],dword ptr [esi]
 004A94A6    call        @DoneExcept
 004A94AB    pop         edi
 004A94AC    pop         esi
 004A94AD    pop         ebx
 004A94AE    pop         ecx
 004A94AF    pop         ecx
 004A94B0    pop         ebp
 004A94B1    ret
*}
end;

//004A94B4
constructor TTabSheet.Create(AOwner:TComponent);
begin
{*
 004A94B4    push        ebp
 004A94B5    mov         ebp,esp
 004A94B7    add         esp,0FFFFFFF4
 004A94BA    test        dl,dl
>004A94BC    je          004A94C6
 004A94BE    add         esp,0FFFFFFF0
 004A94C1    call        @ClassCreate
 004A94C6    mov         dword ptr [ebp-0C],ecx
 004A94C9    mov         byte ptr [ebp-5],dl
 004A94CC    mov         dword ptr [ebp-4],eax
 004A94CF    mov         ecx,dword ptr [ebp-0C]
 004A94D2    xor         edx,edx
 004A94D4    mov         eax,dword ptr [ebp-4]
 004A94D7    call        TWinControl.Create
 004A94DC    mov         dl,5
 004A94DE    mov         eax,dword ptr [ebp-4]
 004A94E1    call        TImage.SetAlign
 004A94E6    mov         eax,dword ptr [ebp-4]
 004A94E9    mov         eax,dword ptr [eax+50];TTabSheet.FControlStyle:TControlStyle
 004A94EC    or          eax,dword ptr ds:[4A9538];0x40401 gvar_004A9538
 004A94F2    mov         edx,dword ptr [ebp-4]
 004A94F5    mov         dword ptr [edx+50],eax;TTabSheet.FControlStyle:TControlStyle
 004A94F8    xor         edx,edx
 004A94FA    mov         eax,dword ptr [ebp-4]
 004A94FD    call        TControl.SetVisible
 004A9502    mov         eax,dword ptr [ebp-4]
 004A9505    mov         byte ptr [eax+210],1;TTabSheet.TabVisible:Boolean
 004A950C    mov         eax,dword ptr [ebp-4]
 004A950F    mov         byte ptr [eax+212],0;TTabSheet.Highlighted:Boolean
 004A9516    mov         eax,dword ptr [ebp-4]
 004A9519    cmp         byte ptr [ebp-5],0
>004A951D    je          004A952E
 004A951F    call        @AfterConstruction
 004A9524    pop         dword ptr fs:[0]
 004A952B    add         esp,0C
 004A952E    mov         eax,dword ptr [ebp-4]
 004A9531    mov         esp,ebp
 004A9533    pop         ebp
 004A9534    ret
*}
end;

//004A953C
destructor TTabSheet.Destroy;
begin
{*
 004A953C    push        ebp
 004A953D    mov         ebp,esp
 004A953F    add         esp,0FFFFFFF8
 004A9542    call        @BeforeDestruction
 004A9547    mov         byte ptr [ebp-5],dl
 004A954A    mov         dword ptr [ebp-4],eax
 004A954D    mov         eax,dword ptr [ebp-4]
 004A9550    cmp         dword ptr [eax+20C],0;TTabSheet.FPageControl:TPageControl
>004A9557    je          004A958F
 004A9559    mov         eax,dword ptr [ebp-4]
 004A955C    mov         eax,dword ptr [eax+20C];TTabSheet.FPageControl:TPageControl
 004A9562    mov         eax,dword ptr [eax+274];TPageControl.FUndockingPage:TTabSheet
 004A9568    cmp         eax,dword ptr [ebp-4]
>004A956B    jne         004A957E
 004A956D    mov         eax,dword ptr [ebp-4]
 004A9570    mov         eax,dword ptr [eax+20C];TTabSheet.FPageControl:TPageControl
 004A9576    xor         edx,edx
 004A9578    mov         dword ptr [eax+274],edx;TPageControl.FUndockingPage:TTabSheet
 004A957E    mov         eax,dword ptr [ebp-4]
 004A9581    mov         eax,dword ptr [eax+20C];TTabSheet.FPageControl:TPageControl
 004A9587    mov         edx,dword ptr [ebp-4]
 004A958A    call        004AA438
 004A958F    mov         dl,byte ptr [ebp-5]
 004A9592    and         dl,0FC
 004A9595    mov         eax,dword ptr [ebp-4]
 004A9598    call        TWinControl.Destroy
 004A959D    cmp         byte ptr [ebp-5],0
>004A95A1    jle         004A95AB
 004A95A3    mov         eax,dword ptr [ebp-4]
 004A95A6    call        @ClassDestroy
 004A95AB    pop         ecx
 004A95AC    pop         ecx
 004A95AD    pop         ebp
 004A95AE    ret
*}
end;

//004A95B0
procedure TTabSheet.sub_004A95B0;
begin
{*
 004A95B0    push        ebp
 004A95B1    mov         ebp,esp
 004A95B3    push        ecx
 004A95B4    push        ebx
 004A95B5    mov         dword ptr [ebp-4],eax
 004A95B8    mov         eax,dword ptr [ebp-4]
 004A95BB    cmp         word ptr [eax+21A],0;TTabSheet.?f21A:word
>004A95C3    je          004A95D7
 004A95C5    mov         ebx,dword ptr [ebp-4]
 004A95C8    mov         edx,dword ptr [ebp-4]
 004A95CB    mov         eax,dword ptr [ebx+21C];TTabSheet.?f21C:dword
 004A95D1    call        dword ptr [ebx+218];TTabSheet.OnHide
 004A95D7    pop         ebx
 004A95D8    pop         ecx
 004A95D9    pop         ebp
 004A95DA    ret
*}
end;

//004A95DC
procedure TTabSheet.sub_004A95DC;
begin
{*
 004A95DC    push        ebp
 004A95DD    mov         ebp,esp
 004A95DF    push        ecx
 004A95E0    push        ebx
 004A95E1    mov         dword ptr [ebp-4],eax
 004A95E4    mov         eax,dword ptr [ebp-4]
 004A95E7    cmp         word ptr [eax+222],0;TTabSheet.?f222:word
>004A95EF    je          004A9603
 004A95F1    mov         ebx,dword ptr [ebp-4]
 004A95F4    mov         edx,dword ptr [ebp-4]
 004A95F7    mov         eax,dword ptr [ebx+224];TTabSheet.?f224:dword
 004A95FD    call        dword ptr [ebx+220];TTabSheet.OnShow
 004A9603    pop         ebx
 004A9604    pop         ecx
 004A9605    pop         ebp
 004A9606    ret
*}
end;

//004A9608
{*function TTabSheet.GetPageIndex:?;
begin
 004A9608    push        ebp
 004A9609    mov         ebp,esp
 004A960B    add         esp,0FFFFFFF8
 004A960E    mov         dword ptr [ebp-4],eax
 004A9611    mov         eax,dword ptr [ebp-4]
 004A9614    cmp         dword ptr [eax+20C],0;TTabSheet.FPageControl:TPageControl
>004A961B    je          004A9639
 004A961D    mov         eax,dword ptr [ebp-4]
 004A9620    mov         eax,dword ptr [eax+20C];TTabSheet.FPageControl:TPageControl
 004A9626    mov         eax,dword ptr [eax+268];TPageControl.FPages:TList
 004A962C    mov         edx,dword ptr [ebp-4]
 004A962F    call        00478890
 004A9634    mov         dword ptr [ebp-8],eax
>004A9637    jmp         004A9640
 004A9639    mov         dword ptr [ebp-8],0FFFFFFFF
 004A9640    mov         eax,dword ptr [ebp-8]
 004A9643    pop         ecx
 004A9644    pop         ecx
 004A9645    pop         ebp
 004A9646    ret
end;*}

//004A9648
{*function sub_004A9648(?:TTabSheet):?;
begin
 004A9648    push        ebp
 004A9649    mov         ebp,esp
 004A964B    add         esp,0FFFFFFF0
 004A964E    mov         dword ptr [ebp-4],eax
 004A9651    xor         eax,eax
 004A9653    mov         dword ptr [ebp-8],eax
 004A9656    mov         eax,dword ptr [ebp-4]
 004A9659    cmp         byte ptr [eax+211],0
>004A9660    jne         004A9667
 004A9662    dec         dword ptr [ebp-8]
>004A9665    jmp         004A96AA
 004A9667    mov         eax,dword ptr [ebp-4]
 004A966A    call        TTabSheet.GetPageIndex
 004A966F    dec         eax
 004A9670    test        eax,eax
>004A9672    jl          004A96AA
 004A9674    inc         eax
 004A9675    mov         dword ptr [ebp-10],eax
 004A9678    mov         dword ptr [ebp-0C],0
 004A967F    mov         eax,dword ptr [ebp-4]
 004A9682    mov         eax,dword ptr [eax+20C]
 004A9688    mov         eax,dword ptr [eax+268]
 004A968E    mov         edx,dword ptr [ebp-0C]
 004A9691    call        TList.Get
 004A9696    cmp         byte ptr [eax+211],0
>004A969D    je          004A96A2
 004A969F    inc         dword ptr [ebp-8]
 004A96A2    inc         dword ptr [ebp-0C]
 004A96A5    dec         dword ptr [ebp-10]
>004A96A8    jne         004A967F
 004A96AA    mov         eax,dword ptr [ebp-8]
 004A96AD    mov         esp,ebp
 004A96AF    pop         ebp
 004A96B0    ret
end;*}

//004A96B4
{*procedure sub_004A96B4(?:?);
begin
 004A96B4    push        ebp
 004A96B5    mov         ebp,esp
 004A96B7    add         esp,0FFFFFFF8
 004A96BA    mov         dword ptr [ebp-8],edx
 004A96BD    mov         dword ptr [ebp-4],eax
 004A96C0    mov         edx,dword ptr [ebp-8]
 004A96C3    mov         eax,dword ptr [ebp-4]
 004A96C6    call        004CF814
 004A96CB    call        ThemeServices
 004A96D0    cmp         byte ptr [eax+5],0;TThemeServices.FThemesAvailable:Boolean
>004A96D4    jne         004A96DD
 004A96D6    mov         eax,dword ptr [ebp-8]
 004A96D9    and         dword ptr [eax+24],0FFFFFFFC
 004A96DD    pop         ecx
 004A96DE    pop         ecx
 004A96DF    pop         ebp
 004A96E0    ret
end;*}

//004A96E4
{*procedure sub_004A96E4(?:?);
begin
 004A96E4    push        ebp
 004A96E5    mov         ebp,esp
 004A96E7    add         esp,0FFFFFFF8
 004A96EA    mov         dword ptr [ebp-8],edx
 004A96ED    mov         dword ptr [ebp-4],eax
 004A96F0    mov         edx,dword ptr [ebp-8]
 004A96F3    mov         eax,dword ptr [ebp-4]
 004A96F6    call        004CE718
 004A96FB    mov         eax,dword ptr [ebp-8]
 004A96FE    mov         eax,dword ptr [eax+2C]
 004A9701    mov         edx,dword ptr ds:[4A3024];TPageControl
 004A9707    call        @IsClass
 004A970C    test        al,al
>004A970E    je          004A971E
 004A9710    mov         eax,dword ptr [ebp-8]
 004A9713    mov         edx,dword ptr [eax+2C]
 004A9716    mov         eax,dword ptr [ebp-4]
 004A9719    call        004A976C
 004A971E    pop         ecx
 004A971F    pop         ecx
 004A9720    pop         ebp
 004A9721    ret
end;*}

//004A9724
procedure TTabSheet.SetImageIndex(Value:TImageIndex);
begin
{*
 004A9724    push        ebp
 004A9725    mov         ebp,esp
 004A9727    add         esp,0FFFFFFF8
 004A972A    mov         dword ptr [ebp-8],edx
 004A972D    mov         dword ptr [ebp-4],eax
 004A9730    mov         eax,dword ptr [ebp-4]
 004A9733    mov         eax,dword ptr [eax+208];TTabSheet.ImageIndex:TImageIndex
 004A9739    cmp         eax,dword ptr [ebp-8]
>004A973C    je          004A9767
 004A973E    mov         eax,dword ptr [ebp-8]
 004A9741    mov         edx,dword ptr [ebp-4]
 004A9744    mov         dword ptr [edx+208],eax;TTabSheet.ImageIndex:TImageIndex
 004A974A    mov         eax,dword ptr [ebp-4]
 004A974D    cmp         byte ptr [eax+211],0;TTabSheet.FTabShowing:Boolean
>004A9754    je          004A9767
 004A9756    mov         edx,dword ptr [ebp-4]
 004A9759    mov         eax,dword ptr [ebp-4]
 004A975C    mov         eax,dword ptr [eax+20C];TTabSheet.FPageControl:TPageControl
 004A9762    call        004AA618
 004A9767    pop         ecx
 004A9768    pop         ecx
 004A9769    pop         ebp
 004A976A    ret
*}
end;

//004A976C
procedure sub_004A976C(?:TTabSheet; ?:TPageControl);
begin
{*
 004A976C    push        ebp
 004A976D    mov         ebp,esp
 004A976F    add         esp,0FFFFFFF8
 004A9772    mov         dword ptr [ebp-8],edx
 004A9775    mov         dword ptr [ebp-4],eax
 004A9778    mov         eax,dword ptr [ebp-4]
 004A977B    mov         eax,dword ptr [eax+20C];TTabSheet.FPageControl:TPageControl
 004A9781    cmp         eax,dword ptr [ebp-8]
>004A9784    je          004A97BF
 004A9786    mov         eax,dword ptr [ebp-4]
 004A9789    cmp         dword ptr [eax+20C],0;TTabSheet.FPageControl:TPageControl
>004A9790    je          004A97A3
 004A9792    mov         edx,dword ptr [ebp-4]
 004A9795    mov         eax,dword ptr [ebp-4]
 004A9798    mov         eax,dword ptr [eax+20C];TTabSheet.FPageControl:TPageControl
 004A979E    call        004AA438
 004A97A3    mov         edx,dword ptr [ebp-8]
 004A97A6    mov         eax,dword ptr [ebp-4]
 004A97A9    mov         ecx,dword ptr [eax]
 004A97AB    call        dword ptr [ecx+68];TTabSheet.sub_004CAD7C
 004A97AE    cmp         dword ptr [ebp-8],0
>004A97B2    je          004A97BF
 004A97B4    mov         edx,dword ptr [ebp-4]
 004A97B7    mov         eax,dword ptr [ebp-8]
 004A97BA    call        004AA358
 004A97BF    pop         ecx
 004A97C0    pop         ecx
 004A97C1    pop         ebp
 004A97C2    ret
*}
end;

//004A97C4
procedure TTabSheet.SetPageIndex(Value:Integer);
begin
{*
 004A97C4    push        ebp
 004A97C5    mov         ebp,esp
 004A97C7    add         esp,0FFFFFFE0
 004A97CA    mov         dword ptr [ebp-8],edx
 004A97CD    mov         dword ptr [ebp-4],eax
 004A97D0    mov         eax,dword ptr [ebp-4]
 004A97D3    cmp         dword ptr [eax+20C],0;TTabSheet.FPageControl:TPageControl
>004A97DA    je          004A987C
 004A97E0    mov         eax,dword ptr [ebp-4]
 004A97E3    mov         eax,dword ptr [eax+20C];TTabSheet.FPageControl:TPageControl
 004A97E9    mov         eax,dword ptr [eax+268];TPageControl.FPages:TList
 004A97EF    mov         eax,dword ptr [eax+8];TList.FCount:Integer
 004A97F2    dec         eax
 004A97F3    mov         dword ptr [ebp-10],eax
 004A97F6    mov         eax,dword ptr [ebp-8]
 004A97F9    cmp         eax,dword ptr [ebp-10]
>004A97FC    jle         004A982F
 004A97FE    mov         eax,dword ptr [ebp-8]
 004A9801    mov         dword ptr [ebp-20],eax
 004A9804    mov         byte ptr [ebp-1C],0
 004A9808    mov         eax,dword ptr [ebp-10]
 004A980B    mov         dword ptr [ebp-18],eax
 004A980E    mov         byte ptr [ebp-14],0
 004A9812    lea         eax,[ebp-20]
 004A9815    push        eax
 004A9816    push        1
 004A9818    mov         ecx,dword ptr ds:[55B1B4];^sPageIndexError:TResStringRec
 004A981E    mov         dl,1
 004A9820    mov         eax,[00475798];EListError
 004A9825    call        Exception.CreateResFmt;EListError.Create
 004A982A    call        @RaiseExcept
 004A982F    mov         eax,dword ptr [ebp-4]
 004A9832    call        004A9648
 004A9837    mov         dword ptr [ebp-0C],eax
 004A983A    mov         eax,dword ptr [ebp-4]
 004A983D    call        TTabSheet.GetPageIndex
 004A9842    mov         edx,eax
 004A9844    mov         eax,dword ptr [ebp-4]
 004A9847    mov         eax,dword ptr [eax+20C];TTabSheet.FPageControl:TPageControl
 004A984D    mov         eax,dword ptr [eax+268];TPageControl.FPages:TList
 004A9853    mov         ecx,dword ptr [ebp-8]
 004A9856    call        004789B0
 004A985B    cmp         dword ptr [ebp-0C],0
>004A985F    jl          004A987C
 004A9861    mov         eax,dword ptr [ebp-4]
 004A9864    call        004A9648
 004A9869    mov         ecx,eax
 004A986B    mov         edx,dword ptr [ebp-0C]
 004A986E    mov         eax,dword ptr [ebp-4]
 004A9871    mov         eax,dword ptr [eax+20C];TTabSheet.FPageControl:TPageControl
 004A9877    call        004AA40C
 004A987C    mov         esp,ebp
 004A987E    pop         ebp
 004A987F    ret
*}
end;

//004A9880
{*procedure sub_004A9880(?:TTabSheet; ?:?);
begin
 004A9880    push        ebp
 004A9881    mov         ebp,esp
 004A9883    add         esp,0FFFFFFF4
 004A9886    mov         byte ptr [ebp-5],dl
 004A9889    mov         dword ptr [ebp-4],eax
 004A988C    mov         eax,dword ptr [ebp-4]
 004A988F    mov         al,byte ptr [eax+211]
 004A9895    cmp         al,byte ptr [ebp-5]
>004A9898    je          004A98E6
 004A989A    cmp         byte ptr [ebp-5],0
>004A989E    je          004A98BD
 004A98A0    mov         eax,dword ptr [ebp-4]
 004A98A3    mov         byte ptr [eax+211],1
 004A98AA    mov         edx,dword ptr [ebp-4]
 004A98AD    mov         eax,dword ptr [ebp-4]
 004A98B0    mov         eax,dword ptr [eax+20C]
 004A98B6    call        004AA390
>004A98BB    jmp         004A98E6
 004A98BD    mov         eax,dword ptr [ebp-4]
 004A98C0    call        004A9648
 004A98C5    mov         dword ptr [ebp-0C],eax
 004A98C8    mov         eax,dword ptr [ebp-4]
 004A98CB    mov         byte ptr [eax+211],0
 004A98D2    mov         ecx,dword ptr [ebp-0C]
 004A98D5    mov         edx,dword ptr [ebp-4]
 004A98D8    mov         eax,dword ptr [ebp-4]
 004A98DB    mov         eax,dword ptr [eax+20C]
 004A98E1    call        004A9F4C
 004A98E6    mov         esp,ebp
 004A98E8    pop         ebp
 004A98E9    ret
end;*}

//004A98EC
procedure TTabSheet.SetTabVisible(Value:Boolean);
begin
{*
 004A98EC    push        ebp
 004A98ED    mov         ebp,esp
 004A98EF    add         esp,0FFFFFFF8
 004A98F2    mov         byte ptr [ebp-5],dl
 004A98F5    mov         dword ptr [ebp-4],eax
 004A98F8    mov         eax,dword ptr [ebp-4]
 004A98FB    mov         al,byte ptr [eax+210];TTabSheet.TabVisible:Boolean
 004A9901    cmp         al,byte ptr [ebp-5]
>004A9904    je          004A991A
 004A9906    mov         al,byte ptr [ebp-5]
 004A9909    mov         edx,dword ptr [ebp-4]
 004A990C    mov         byte ptr [edx+210],al;TTabSheet.TabVisible:Boolean
 004A9912    mov         eax,dword ptr [ebp-4]
 004A9915    call        004A9920
 004A991A    pop         ecx
 004A991B    pop         ecx
 004A991C    pop         ebp
 004A991D    ret
*}
end;

//004A9920
procedure sub_004A9920(?:TTabSheet);
begin
{*
 004A9920    push        ebp
 004A9921    mov         ebp,esp
 004A9923    push        ecx
 004A9924    mov         dword ptr [ebp-4],eax
 004A9927    mov         eax,dword ptr [ebp-4]
 004A992A    cmp         dword ptr [eax+20C],0;TTabSheet.FPageControl:TPageControl
>004A9931    je          004A993F
 004A9933    mov         eax,dword ptr [ebp-4]
 004A9936    cmp         byte ptr [eax+210],0;TTabSheet.TabVisible:Boolean
>004A993D    jne         004A9943
 004A993F    xor         edx,edx
>004A9941    jmp         004A9945
 004A9943    mov         dl,1
 004A9945    mov         eax,dword ptr [ebp-4]
 004A9948    call        004A9880
 004A994D    pop         ecx
 004A994E    pop         ebp
 004A994F    ret
*}
end;

//004A9950
{*procedure TTabSheet.CMTextChanged(?:?);
begin
 004A9950    push        ebp
 004A9951    mov         ebp,esp
 004A9953    add         esp,0FFFFFFF8
 004A9956    mov         dword ptr [ebp-8],edx
 004A9959    mov         dword ptr [ebp-4],eax
 004A995C    mov         eax,dword ptr [ebp-4]
 004A995F    cmp         byte ptr [eax+211],0;TTabSheet.FTabShowing:Boolean
>004A9966    je          004A9979
 004A9968    mov         edx,dword ptr [ebp-4]
 004A996B    mov         eax,dword ptr [ebp-4]
 004A996E    mov         eax,dword ptr [eax+20C];TTabSheet.FPageControl:TPageControl
 004A9974    call        004AA618
 004A9979    pop         ecx
 004A997A    pop         ecx
 004A997B    pop         ebp
 004A997C    ret
end;*}

//004A9980
{*procedure TTabSheet.CMShowingChanged(?:?);
begin
 004A9980    push        ebp
 004A9981    mov         ebp,esp
 004A9983    add         esp,0FFFFFFF8
 004A9986    push        ebx
 004A9987    push        esi
 004A9988    push        edi
 004A9989    mov         dword ptr [ebp-8],edx
 004A998C    mov         dword ptr [ebp-4],eax
 004A998F    mov         edx,dword ptr [ebp-8]
 004A9992    mov         eax,dword ptr [ebp-4]
 004A9995    call        TWinControl.CMShowingChanged
 004A999A    mov         eax,dword ptr [ebp-4]
 004A999D    cmp         byte ptr [eax+1A6],0;TTabSheet.FShowing:Boolean
>004A99A4    je          004A99E5
 004A99A6    xor         eax,eax
 004A99A8    push        ebp
 004A99A9    push        4A99CA
 004A99AE    push        dword ptr fs:[eax]
 004A99B1    mov         dword ptr fs:[eax],esp
 004A99B4    mov         eax,dword ptr [ebp-4]
 004A99B7    mov         si,0FFB2
 004A99BB    call        @CallDynaInst;TTabSheet.sub_004A95DC
 004A99C0    xor         eax,eax
 004A99C2    pop         edx
 004A99C3    pop         ecx
 004A99C4    pop         ecx
 004A99C5    mov         dword ptr fs:[eax],edx
>004A99C8    jmp         004A9A2E
>004A99CA    jmp         @HandleAnyException
 004A99CF    mov         eax,[0055B4C8];^Application:TApplication
 004A99D4    mov         eax,dword ptr [eax]
 004A99D6    mov         edx,dword ptr [ebp-4]
 004A99D9    call        TApplication.HandleException
 004A99DE    call        @DoneExcept
>004A99E3    jmp         004A9A2E
 004A99E5    mov         eax,dword ptr [ebp-4]
 004A99E8    cmp         byte ptr [eax+1A6],0;TTabSheet.FShowing:Boolean
>004A99EF    jne         004A9A2E
 004A99F1    xor         eax,eax
 004A99F3    push        ebp
 004A99F4    push        4A9A15
 004A99F9    push        dword ptr fs:[eax]
 004A99FC    mov         dword ptr fs:[eax],esp
 004A99FF    mov         eax,dword ptr [ebp-4]
 004A9A02    mov         si,0FFB3
 004A9A06    call        @CallDynaInst;TTabSheet.sub_004A95B0
 004A9A0B    xor         eax,eax
 004A9A0D    pop         edx
 004A9A0E    pop         ecx
 004A9A0F    pop         ecx
 004A9A10    mov         dword ptr fs:[eax],edx
>004A9A13    jmp         004A9A2E
>004A9A15    jmp         @HandleAnyException
 004A9A1A    mov         eax,[0055B4C8];^Application:TApplication
 004A9A1F    mov         eax,dword ptr [eax]
 004A9A21    mov         edx,dword ptr [ebp-4]
 004A9A24    call        TApplication.HandleException
 004A9A29    call        @DoneExcept
 004A9A2E    pop         edi
 004A9A2F    pop         esi
 004A9A30    pop         ebx
 004A9A31    pop         ecx
 004A9A32    pop         ecx
 004A9A33    pop         ebp
 004A9A34    ret
end;*}

//004A9A38
procedure TTabSheet.SetHighlighted(Value:Boolean);
begin
{*
 004A9A38    push        ebp
 004A9A39    mov         ebp,esp
 004A9A3B    add         esp,0FFFFFFF8
 004A9A3E    mov         byte ptr [ebp-5],dl
 004A9A41    mov         dword ptr [ebp-4],eax
 004A9A44    mov         eax,dword ptr [ebp-4]
 004A9A47    test        byte ptr [eax+1C],2;TTabSheet.FComponentState:TComponentState
>004A9A4B    jne         004A9A7C
 004A9A4D    xor         eax,eax
 004A9A4F    mov         al,byte ptr [ebp-5]
 004A9A52    xor         edx,edx
 004A9A54    call        004080B4
 004A9A59    push        eax
 004A9A5A    mov         eax,dword ptr [ebp-4]
 004A9A5D    call        004A9648
 004A9A62    push        eax
 004A9A63    push        1333
 004A9A68    mov         eax,dword ptr [ebp-4]
 004A9A6B    mov         eax,dword ptr [eax+20C];TTabSheet.FPageControl:TPageControl
 004A9A71    call        TWinControl.GetHandle
 004A9A76    push        eax
 004A9A77    call        user32.SendMessageA
 004A9A7C    mov         al,byte ptr [ebp-5]
 004A9A7F    mov         edx,dword ptr [ebp-4]
 004A9A82    mov         byte ptr [edx+212],al;TTabSheet.Highlighted:Boolean
 004A9A88    pop         ecx
 004A9A89    pop         ecx
 004A9A8A    pop         ebp
 004A9A8B    ret
*}
end;

//004A9A8C
{*procedure TTabSheet.WMNCPaint(?:?);
begin
 004A9A8C    push        ebp
 004A9A8D    mov         ebp,esp
 004A9A8F    add         esp,0FFFFFFD4
 004A9A92    mov         dword ptr [ebp-8],edx
 004A9A95    mov         dword ptr [ebp-4],eax
 004A9A98    call        ThemeServices
 004A9A9D    mov         dword ptr [ebp-10],eax
 004A9AA0    mov         eax,dword ptr [ebp-10]
 004A9AA3    call        TThemeServices.GetThemesEnabled
 004A9AA8    test        al,al
>004A9AAA    je          004A9B9B
 004A9AB0    mov         eax,dword ptr [ebp-4]
 004A9AB3    cmp         dword ptr [eax+16C],0;TTabSheet.FBorderWidth:TBorderWidth
>004A9ABA    jbe         004A9B9B
 004A9AC0    mov         eax,dword ptr [ebp-4]
 004A9AC3    call        TWinControl.GetHandle
 004A9AC8    push        eax
 004A9AC9    call        user32.GetWindowDC
 004A9ACE    mov         dword ptr [ebp-0C],eax
 004A9AD1    xor         eax,eax
 004A9AD3    push        ebp
 004A9AD4    push        4A9B8A
 004A9AD9    push        dword ptr fs:[eax]
 004A9ADC    mov         dword ptr fs:[eax],esp
 004A9ADF    lea         edx,[ebp-20]
 004A9AE2    mov         eax,dword ptr [ebp-4]
 004A9AE5    mov         ecx,dword ptr [eax]
 004A9AE7    call        dword ptr [ecx+44];TTabSheet.sub_004D3A1C
 004A9AEA    mov         eax,dword ptr [ebp-4]
 004A9AED    mov         ecx,dword ptr [eax+16C];TTabSheet.FBorderWidth:TBorderWidth
 004A9AF3    mov         eax,dword ptr [ebp-4]
 004A9AF6    mov         edx,dword ptr [eax+16C];TTabSheet.FBorderWidth:TBorderWidth
 004A9AFC    lea         eax,[ebp-20]
 004A9AFF    call        00406EE0
 004A9B04    mov         eax,dword ptr [ebp-14]
 004A9B07    push        eax
 004A9B08    mov         eax,dword ptr [ebp-18]
 004A9B0B    push        eax
 004A9B0C    mov         eax,dword ptr [ebp-1C]
 004A9B0F    push        eax
 004A9B10    mov         eax,dword ptr [ebp-20]
 004A9B13    push        eax
 004A9B14    mov         eax,dword ptr [ebp-0C]
 004A9B17    push        eax
 004A9B18    call        gdi32.ExcludeClipRect
 004A9B1D    push        0
 004A9B1F    mov         eax,dword ptr [ebp-4]
 004A9B22    mov         eax,dword ptr [eax+16C];TTabSheet.FBorderWidth:TBorderWidth
 004A9B28    neg         eax
 004A9B2A    push        eax
 004A9B2B    mov         eax,dword ptr [ebp-4]
 004A9B2E    mov         eax,dword ptr [eax+16C];TTabSheet.FBorderWidth:TBorderWidth
 004A9B34    neg         eax
 004A9B36    push        eax
 004A9B37    mov         eax,dword ptr [ebp-0C]
 004A9B3A    push        eax
 004A9B3B    call        gdi32.SetWindowOrgEx
 004A9B40    lea         ecx,[ebp-2C]
 004A9B43    mov         dl,2B
 004A9B45    mov         eax,dword ptr [ebp-10]
 004A9B48    call        004B67A8
 004A9B4D    lea         eax,[ebp-2C]
 004A9B50    push        eax
 004A9B51    push        0
 004A9B53    push        0
 004A9B55    mov         eax,dword ptr [ebp-4]
 004A9B58    call        TWinControl.GetHandle
 004A9B5D    mov         edx,eax
 004A9B5F    mov         ecx,dword ptr [ebp-0C]
 004A9B62    mov         eax,dword ptr [ebp-10]
 004A9B65    call        004B6520
 004A9B6A    xor         eax,eax
 004A9B6C    pop         edx
 004A9B6D    pop         ecx
 004A9B6E    pop         ecx
 004A9B6F    mov         dword ptr fs:[eax],edx
 004A9B72    push        4A9B91
 004A9B77    mov         eax,dword ptr [ebp-0C]
 004A9B7A    push        eax
 004A9B7B    mov         eax,dword ptr [ebp-4]
 004A9B7E    call        TWinControl.GetHandle
 004A9B83    push        eax
 004A9B84    call        user32.ReleaseDC
 004A9B89    ret
>004A9B8A    jmp         @HandleFinally
>004A9B8F    jmp         004A9B77
 004A9B91    mov         eax,dword ptr [ebp-8]
 004A9B94    xor         edx,edx
 004A9B96    mov         dword ptr [eax+0C],edx
>004A9B99    jmp         004A9BA6
 004A9B9B    mov         edx,dword ptr [ebp-8]
 004A9B9E    mov         eax,dword ptr [ebp-4]
 004A9BA1    call        TWinControl.WMNCPaint
 004A9BA6    mov         esp,ebp
 004A9BA8    pop         ebp
 004A9BA9    ret
end;*}

//004A9BAC
{*procedure TTabSheet.sub_004A9BAC(?:?);
begin
 004A9BAC    push        ebp
 004A9BAD    mov         ebp,esp
 004A9BAF    add         esp,0FFFFFFF4
 004A9BB2    mov         dword ptr [ebp-8],edx
 004A9BB5    mov         dword ptr [ebp-4],eax
 004A9BB8    call        ThemeServices
 004A9BBD    mov         dword ptr [ebp-0C],eax
 004A9BC0    mov         eax,dword ptr [ebp-0C]
 004A9BC3    call        TThemeServices.GetThemesEnabled
 004A9BC8    test        al,al
>004A9BCA    je          004A9BF6
 004A9BCC    push        0
 004A9BCE    push        0
 004A9BD0    push        0
 004A9BD2    mov         eax,dword ptr [ebp-4]
 004A9BD5    call        TWinControl.GetHandle
 004A9BDA    mov         edx,eax
 004A9BDC    mov         ecx,dword ptr [ebp-8]
 004A9BDF    mov         ecx,dword ptr [ecx+4]
 004A9BE2    mov         eax,dword ptr [ebp-0C]
 004A9BE5    call        004B6520
 004A9BEA    mov         eax,dword ptr [ebp-8]
 004A9BED    mov         dword ptr [eax+0C],1
>004A9BF4    jmp         004A9C01
 004A9BF6    mov         edx,dword ptr [ebp-8]
 004A9BF9    mov         eax,dword ptr [ebp-4]
 004A9BFC    call        TWinControl.sub_004D4F60
 004A9C01    mov         esp,ebp
 004A9C03    pop         ebp
 004A9C04    ret
end;*}

//004A9C08
constructor TPageControl.Create(AOwner:TComponent);
begin
{*
 004A9C08    push        ebp
 004A9C09    mov         ebp,esp
 004A9C0B    add         esp,0FFFFFFF4
 004A9C0E    test        dl,dl
>004A9C10    je          004A9C1A
 004A9C12    add         esp,0FFFFFFF0
 004A9C15    call        @ClassCreate
 004A9C1A    mov         dword ptr [ebp-0C],ecx
 004A9C1D    mov         byte ptr [ebp-5],dl
 004A9C20    mov         dword ptr [ebp-4],eax
 004A9C23    mov         ecx,dword ptr [ebp-0C]
 004A9C26    xor         edx,edx
 004A9C28    mov         eax,dword ptr [ebp-4]
 004A9C2B    call        TCustomTabControl.Create
 004A9C30    mov         eax,dword ptr [ebp-4]
 004A9C33    mov         edx,dword ptr ds:[4A9C70];0xC0 gvar_004A9C70
 004A9C39    mov         dword ptr [eax+50],edx;TPageControl.FControlStyle:TControlStyle
 004A9C3C    mov         dl,1
 004A9C3E    mov         eax,[004759C0];TList
 004A9C43    call        TObject.Create;TList.Create
 004A9C48    mov         edx,dword ptr [ebp-4]
 004A9C4B    mov         dword ptr [edx+268],eax;TPageControl.FPages:TList
 004A9C51    mov         eax,dword ptr [ebp-4]
 004A9C54    cmp         byte ptr [ebp-5],0
>004A9C58    je          004A9C69
 004A9C5A    call        @AfterConstruction
 004A9C5F    pop         dword ptr fs:[0]
 004A9C66    add         esp,0C
 004A9C69    mov         eax,dword ptr [ebp-4]
 004A9C6C    mov         esp,ebp
 004A9C6E    pop         ebp
 004A9C6F    ret
*}
end;

//004A9C74
destructor TPageControl.Destroy;
begin
{*
 004A9C74    push        ebp
 004A9C75    mov         ebp,esp
 004A9C77    add         esp,0FFFFFFF0
 004A9C7A    call        @BeforeDestruction
 004A9C7F    mov         byte ptr [ebp-5],dl
 004A9C82    mov         dword ptr [ebp-4],eax
 004A9C85    mov         eax,dword ptr [ebp-4]
 004A9C88    mov         eax,dword ptr [eax+268];TPageControl.FPages:TList
 004A9C8E    mov         eax,dword ptr [eax+8];TList.FCount:Integer
 004A9C91    dec         eax
 004A9C92    test        eax,eax
>004A9C94    jl          004A9CC2
 004A9C96    inc         eax
 004A9C97    mov         dword ptr [ebp-10],eax
 004A9C9A    mov         dword ptr [ebp-0C],0
 004A9CA1    mov         eax,dword ptr [ebp-4]
 004A9CA4    mov         eax,dword ptr [eax+268];TPageControl.FPages:TList
 004A9CAA    mov         edx,dword ptr [ebp-0C]
 004A9CAD    call        TList.Get
 004A9CB2    xor         edx,edx
 004A9CB4    mov         dword ptr [eax+20C],edx
 004A9CBA    inc         dword ptr [ebp-0C]
 004A9CBD    dec         dword ptr [ebp-10]
>004A9CC0    jne         004A9CA1
 004A9CC2    mov         eax,dword ptr [ebp-4]
 004A9CC5    mov         eax,dword ptr [eax+268];TPageControl.FPages:TList
 004A9CCB    call        TObject.Free
 004A9CD0    mov         dl,byte ptr [ebp-5]
 004A9CD3    and         dl,0FC
 004A9CD6    mov         eax,dword ptr [ebp-4]
 004A9CD9    call        TCustomTabControl.Destroy
 004A9CDE    cmp         byte ptr [ebp-5],0
>004A9CE2    jle         004A9CEC
 004A9CE4    mov         eax,dword ptr [ebp-4]
 004A9CE7    call        @ClassDestroy
 004A9CEC    mov         esp,ebp
 004A9CEE    pop         ebp
 004A9CEF    ret
*}
end;

//004A9CF0
procedure sub_004A9CF0(?:TPageControl);
begin
{*
 004A9CF0    push        ebp
 004A9CF1    mov         ebp,esp
 004A9CF3    add         esp,0FFFFFFF4
 004A9CF6    mov         dword ptr [ebp-4],eax
 004A9CF9    mov         eax,dword ptr [ebp-4]
 004A9CFC    call        004AA2EC
 004A9D01    dec         eax
 004A9D02    test        eax,eax
>004A9D04    jl          004A9D3C
 004A9D06    inc         eax
 004A9D07    mov         dword ptr [ebp-0C],eax
 004A9D0A    mov         dword ptr [ebp-8],0
 004A9D11    mov         edx,dword ptr [ebp-8]
 004A9D14    mov         eax,dword ptr [ebp-4]
 004A9D17    call        004AA2C4
 004A9D1C    mov         al,byte ptr [eax+212]
 004A9D22    push        eax
 004A9D23    mov         edx,dword ptr [ebp-8]
 004A9D26    mov         eax,dword ptr [ebp-4]
 004A9D29    call        004AA2C4
 004A9D2E    pop         edx
 004A9D2F    call        TTabSheet.SetHighlighted
 004A9D34    inc         dword ptr [ebp-8]
 004A9D37    dec         dword ptr [ebp-0C]
>004A9D3A    jne         004A9D11
 004A9D3C    mov         esp,ebp
 004A9D3E    pop         ebp
 004A9D3F    ret
*}
end;

//004A9D40
procedure TPageControl.Loaded;
begin
{*
 004A9D40    push        ebp
 004A9D41    mov         ebp,esp
 004A9D43    push        ecx
 004A9D44    mov         dword ptr [ebp-4],eax
 004A9D47    mov         eax,dword ptr [ebp-4]
 004A9D4A    call        TCustomTabControl.Loaded
 004A9D4F    mov         eax,dword ptr [ebp-4]
 004A9D52    call        004A9CF0
 004A9D57    pop         ecx
 004A9D58    pop         ebp
 004A9D59    ret
*}
end;

//004A9D5C
{*function sub_004A9D5C(?:?):?;
begin
 004A9D5C    push        ebp
 004A9D5D    mov         ebp,esp
 004A9D5F    add         esp,0FFFFFFF4
 004A9D62    mov         dword ptr [ebp-8],edx
 004A9D65    mov         dword ptr [ebp-4],eax
 004A9D68    mov         edx,dword ptr [ebp-8]
 004A9D6B    mov         eax,dword ptr [ebp-4]
 004A9D6E    mov         eax,dword ptr [eax+268];TPageControl.FPages:TList
 004A9D74    call        TList.Get
 004A9D79    mov         edx,dword ptr [eax]
 004A9D7B    call        dword ptr [edx+50]
 004A9D7E    mov         byte ptr [ebp-9],al
 004A9D81    mov         al,byte ptr [ebp-9]
 004A9D84    mov         esp,ebp
 004A9D86    pop         ebp
 004A9D87    ret
end;*}

//004A9D88
procedure TPageControl.sub_004A84FC;
begin
{*
 004A9D88    push        ebp
 004A9D89    mov         ebp,esp
 004A9D8B    add         esp,0FFFFFFF8
 004A9D8E    mov         dword ptr [ebp-4],eax
 004A9D91    mov         eax,dword ptr [ebp-4]
 004A9D94    call        TPageControl.GetTabIndex
 004A9D99    test        eax,eax
>004A9D9B    jl          004A9DA8
 004A9D9D    mov         eax,dword ptr [ebp-4]
 004A9DA0    mov         edx,dword ptr [eax]
 004A9DA2    call        dword ptr [edx+0D8];TPageControl.sub_004AA684
 004A9DA8    mov         eax,dword ptr [ebp-4]
 004A9DAB    test        byte ptr [eax+1C],10;TPageControl.FComponentState:TComponentState
>004A9DAF    je          004A9DDC
 004A9DB1    mov         eax,dword ptr [ebp-4]
 004A9DB4    call        004E7ED8
 004A9DB9    mov         dword ptr [ebp-8],eax
 004A9DBC    cmp         dword ptr [ebp-8],0
>004A9DC0    je          004A9DDC
 004A9DC2    mov         eax,dword ptr [ebp-8]
 004A9DC5    cmp         dword ptr [eax+250],0
>004A9DCC    je          004A9DDC
 004A9DCE    mov         eax,dword ptr [ebp-8]
 004A9DD1    mov         eax,dword ptr [eax+250]
 004A9DD7    mov         edx,dword ptr [eax]
 004A9DD9    call        dword ptr [edx+0C]
 004A9DDC    mov         eax,dword ptr [ebp-4]
 004A9DDF    call        TCustomTabControl.sub_004A84FC
 004A9DE4    pop         ecx
 004A9DE5    pop         ecx
 004A9DE6    pop         ebp
 004A9DE7    ret
*}
end;

//004A9DE8
procedure sub_004A9DE8(?:TPageControl; ?:TTabSheet);
begin
{*
 004A9DE8    push        ebp
 004A9DE9    mov         ebp,esp
 004A9DEB    add         esp,0FFFFFFF4
 004A9DEE    push        esi
 004A9DEF    mov         dword ptr [ebp-8],edx
 004A9DF2    mov         dword ptr [ebp-4],eax
 004A9DF5    mov         eax,dword ptr [ebp-4]
 004A9DF8    mov         eax,dword ptr [eax+26C]
 004A9DFE    cmp         eax,dword ptr [ebp-8]
>004A9E01    je          004A9F46
 004A9E07    mov         eax,dword ptr [ebp-4]
 004A9E0A    call        004E7ED8
 004A9E0F    mov         dword ptr [ebp-0C],eax
 004A9E12    cmp         dword ptr [ebp-0C],0
>004A9E16    je          004A9E84
 004A9E18    mov         eax,dword ptr [ebp-4]
 004A9E1B    cmp         dword ptr [eax+26C],0
>004A9E22    je          004A9E84
 004A9E24    mov         eax,dword ptr [ebp-0C]
 004A9E27    mov         edx,dword ptr [eax+220]
 004A9E2D    mov         eax,dword ptr [ebp-4]
 004A9E30    mov         eax,dword ptr [eax+26C]
 004A9E36    call        004CF30C
 004A9E3B    test        al,al
>004A9E3D    je          004A9E84
 004A9E3F    mov         eax,dword ptr [ebp-4]
 004A9E42    mov         edx,dword ptr [eax+26C]
 004A9E48    mov         eax,dword ptr [ebp-0C]
 004A9E4B    call        TForm.SetActiveControl
 004A9E50    mov         eax,dword ptr [ebp-0C]
 004A9E53    mov         eax,dword ptr [eax+220]
 004A9E59    mov         edx,dword ptr [ebp-4]
 004A9E5C    cmp         eax,dword ptr [edx+26C]
>004A9E62    je          004A9E84
 004A9E64    mov         eax,dword ptr [ebp-4]
 004A9E67    mov         eax,dword ptr [eax+26C]
 004A9E6D    call        004A9648
 004A9E72    mov         edx,eax
 004A9E74    mov         eax,dword ptr [ebp-4]
 004A9E77    mov         ecx,dword ptr [eax]
 004A9E79    call        dword ptr [ecx+0D4]
>004A9E7F    jmp         004A9F46
 004A9E84    cmp         dword ptr [ebp-8],0
>004A9E88    je          004A9EEA
 004A9E8A    mov         eax,dword ptr [ebp-8]
 004A9E8D    call        004CB3C4
 004A9E92    mov         dl,1
 004A9E94    mov         eax,dword ptr [ebp-8]
 004A9E97    call        TControl.SetVisible
 004A9E9C    cmp         dword ptr [ebp-0C],0
>004A9EA0    je          004A9EEA
 004A9EA2    mov         eax,dword ptr [ebp-4]
 004A9EA5    cmp         dword ptr [eax+26C],0
>004A9EAC    je          004A9EEA
 004A9EAE    mov         eax,dword ptr [ebp-0C]
 004A9EB1    mov         eax,dword ptr [eax+220]
 004A9EB7    mov         edx,dword ptr [ebp-4]
 004A9EBA    cmp         eax,dword ptr [edx+26C]
>004A9EC0    jne         004A9EEA
 004A9EC2    mov         eax,dword ptr [ebp-8]
 004A9EC5    mov         si,0FFB8
 004A9EC9    call        @CallDynaInst
 004A9ECE    test        al,al
>004A9ED0    je          004A9EDF
 004A9ED2    mov         edx,dword ptr [ebp-8]
 004A9ED5    mov         eax,dword ptr [ebp-0C]
 004A9ED8    call        TForm.SetActiveControl
>004A9EDD    jmp         004A9EEA
 004A9EDF    mov         edx,dword ptr [ebp-4]
 004A9EE2    mov         eax,dword ptr [ebp-0C]
 004A9EE5    call        TForm.SetActiveControl
 004A9EEA    mov         eax,dword ptr [ebp-4]
 004A9EED    cmp         dword ptr [eax+26C],0
>004A9EF4    je          004A9F06
 004A9EF6    xor         edx,edx
 004A9EF8    mov         eax,dword ptr [ebp-4]
 004A9EFB    mov         eax,dword ptr [eax+26C]
 004A9F01    call        TControl.SetVisible
 004A9F06    mov         eax,dword ptr [ebp-8]
 004A9F09    mov         edx,dword ptr [ebp-4]
 004A9F0C    mov         dword ptr [edx+26C],eax
 004A9F12    cmp         dword ptr [ebp-0C],0
>004A9F16    je          004A9F46
 004A9F18    mov         eax,dword ptr [ebp-4]
 004A9F1B    cmp         dword ptr [eax+26C],0
>004A9F22    je          004A9F46
 004A9F24    mov         eax,dword ptr [ebp-0C]
 004A9F27    mov         eax,dword ptr [eax+220]
 004A9F2D    mov         edx,dword ptr [ebp-4]
 004A9F30    cmp         eax,dword ptr [edx+26C]
>004A9F36    jne         004A9F46
 004A9F38    mov         eax,dword ptr [ebp-4]
 004A9F3B    mov         eax,dword ptr [eax+26C]
 004A9F41    call        004D4074
 004A9F46    pop         esi
 004A9F47    mov         esp,ebp
 004A9F49    pop         ebp
 004A9F4A    ret
*}
end;

//004A9F4C
{*procedure sub_004A9F4C(?:?; ?:?; ?:?);
begin
 004A9F4C    push        ebp
 004A9F4D    mov         ebp,esp
 004A9F4F    add         esp,0FFFFFFF0
 004A9F52    mov         dword ptr [ebp-0C],ecx
 004A9F55    mov         dword ptr [ebp-8],edx
 004A9F58    mov         dword ptr [ebp-4],eax
 004A9F5B    mov         eax,dword ptr [ebp-8]
 004A9F5E    mov         edx,dword ptr [ebp-4]
 004A9F61    cmp         eax,dword ptr [edx+26C]
 004A9F67    sete        byte ptr [ebp-0D]
 004A9F6B    mov         edx,dword ptr [ebp-0C]
 004A9F6E    mov         eax,dword ptr [ebp-4]
 004A9F71    mov         eax,dword ptr [eax+228]
 004A9F77    mov         ecx,dword ptr [eax]
 004A9F79    call        dword ptr [ecx+48]
 004A9F7C    cmp         byte ptr [ebp-0D],0
>004A9F80    je          004A9FB5
 004A9F82    mov         eax,dword ptr [ebp-4]
 004A9F85    mov         eax,dword ptr [eax+228]
 004A9F8B    mov         edx,dword ptr [eax]
 004A9F8D    call        dword ptr [edx+14]
 004A9F90    cmp         eax,dword ptr [ebp-0C]
>004A9F93    jg          004A9FA7
 004A9F95    mov         eax,dword ptr [ebp-4]
 004A9F98    mov         eax,dword ptr [eax+228]
 004A9F9E    mov         edx,dword ptr [eax]
 004A9FA0    call        dword ptr [edx+14]
 004A9FA3    dec         eax
 004A9FA4    mov         dword ptr [ebp-0C],eax
 004A9FA7    mov         edx,dword ptr [ebp-0C]
 004A9FAA    mov         eax,dword ptr [ebp-4]
 004A9FAD    mov         ecx,dword ptr [eax]
 004A9FAF    call        dword ptr [ecx+0D4]
 004A9FB5    mov         eax,dword ptr [ebp-4]
 004A9FB8    mov         edx,dword ptr [eax]
 004A9FBA    call        dword ptr [edx+0D8]
 004A9FC0    mov         esp,ebp
 004A9FC2    pop         ebp
 004A9FC3    ret
end;*}

//004A9FC4
{*procedure TPageControl.sub_004A9FC4(?:?; ?:?);
begin
 004A9FC4    push        ebp
 004A9FC5    mov         ebp,esp
 004A9FC7    add         esp,0FFFFFFF4
 004A9FCA    mov         dword ptr [ebp-0C],ecx
 004A9FCD    mov         dword ptr [ebp-8],edx
 004A9FD0    mov         dword ptr [ebp-4],eax
 004A9FD3    mov         eax,dword ptr [ebp-4]
 004A9FD6    cmp         dword ptr [eax+270],0;TPageControl.FNewDockSheet:TTabSheet
>004A9FDD    je          004A9FF0
 004A9FDF    mov         eax,dword ptr [ebp-4]
 004A9FE2    mov         edx,dword ptr [eax+270];TPageControl.FNewDockSheet:TTabSheet
 004A9FE8    mov         eax,dword ptr [ebp-8]
 004A9FEB    mov         ecx,dword ptr [eax]
 004A9FED    call        dword ptr [ecx+68]
 004A9FF0    mov         esp,ebp
 004A9FF2    pop         ebp
 004A9FF3    ret
end;*}

//004A9FF4
{*procedure TPageControl.sub_004A9FF4(?:?; ?:?; ?:?; ?:?; ?:?);
begin
 004A9FF4    push        ebp
 004A9FF5    mov         ebp,esp
 004A9FF7    add         esp,0FFFFFFE4
 004A9FFA    push        esi
 004A9FFB    push        edi
 004A9FFC    mov         dword ptr [ebp-0C],ecx
 004A9FFF    mov         dword ptr [ebp-8],edx
 004AA002    mov         dword ptr [ebp-4],eax
 004AA005    lea         eax,[ebp-1C]
 004AA008    push        eax
 004AA009    mov         eax,dword ptr [ebp-4]
 004AA00C    call        TWinControl.GetHandle
 004AA011    push        eax
 004AA012    call        user32.GetWindowRect
 004AA017    mov         eax,dword ptr [ebp-8]
 004AA01A    lea         esi,[ebp-1C]
 004AA01D    lea         edi,[eax+44]
 004AA020    movs        dword ptr [edi],dword ptr [esi]
 004AA021    movs        dword ptr [edi],dword ptr [esi]
 004AA022    movs        dword ptr [edi],dword ptr [esi]
 004AA023    movs        dword ptr [edi],dword ptr [esi]
 004AA024    mov         eax,dword ptr [ebp+10]
 004AA027    push        eax
 004AA028    mov         al,byte ptr [ebp+0C]
 004AA02B    push        eax
 004AA02C    mov         eax,dword ptr [ebp+8]
 004AA02F    push        eax
 004AA030    mov         ecx,dword ptr [ebp-0C]
 004AA033    mov         edx,dword ptr [ebp-8]
 004AA036    mov         eax,dword ptr [ebp-4]
 004AA039    mov         si,0FFC3
 004AA03D    call        @CallDynaInst;TWinControl.sub_004D1AB4
 004AA042    pop         edi
 004AA043    pop         esi
 004AA044    mov         esp,ebp
 004AA046    pop         ebp
 004AA047    ret         0C
end;*}

//004AA04C
{*procedure TPageControl.sub_004AA04C(?:?);
begin
 004AA04C    push        ebp
 004AA04D    mov         ebp,esp
 004AA04F    add         esp,0FFFFFFF8
 004AA052    mov         dword ptr [ebp-8],edx
 004AA055    mov         dword ptr [ebp-4],eax
 004AA058    mov         eax,dword ptr [ebp-4]
 004AA05B    cmp         dword ptr [eax+274],0;TPageControl.FUndockingPage:TTabSheet
>004AA062    je          004AA092
 004AA064    mov         eax,dword ptr [ebp-4]
 004AA067    test        byte ptr [eax+1C],8;TPageControl.FComponentState:TComponentState
>004AA06B    jne         004AA092
 004AA06D    mov         cl,1
 004AA06F    mov         dl,1
 004AA071    mov         eax,dword ptr [ebp-4]
 004AA074    call        004AA4A4
 004AA079    mov         eax,dword ptr [ebp-4]
 004AA07C    mov         eax,dword ptr [eax+274];TPageControl.FUndockingPage:TTabSheet
 004AA082    call        TObject.Free
 004AA087    mov         eax,dword ptr [ebp-4]
 004AA08A    xor         edx,edx
 004AA08C    mov         dword ptr [eax+274],edx;TPageControl.FUndockingPage:TTabSheet
 004AA092    pop         ecx
 004AA093    pop         ecx
 004AA094    pop         ebp
 004AA095    ret
end;*}

//004AA098
{*function sub_004AA098(?:TPageControl; ?:TTabSheet; ?:?; ?:?):?;
begin
 004AA098    push        ebp
 004AA099    mov         ebp,esp
 004AA09B    add         esp,0FFFFFFE8
 004AA09E    mov         byte ptr [ebp-9],cl
 004AA0A1    mov         dword ptr [ebp-8],edx
 004AA0A4    mov         dword ptr [ebp-4],eax
 004AA0A7    mov         eax,dword ptr [ebp-4]
 004AA0AA    mov         eax,dword ptr [eax+268]
 004AA0B0    cmp         dword ptr [eax+8],0
>004AA0B4    je          004AA15E
 004AA0BA    mov         edx,dword ptr [ebp-8]
 004AA0BD    mov         eax,dword ptr [ebp-4]
 004AA0C0    mov         eax,dword ptr [eax+268]
 004AA0C6    call        00478890
 004AA0CB    mov         dword ptr [ebp-18],eax
 004AA0CE    cmp         dword ptr [ebp-18],0FFFFFFFF
>004AA0D2    jne         004AA0F1
 004AA0D4    cmp         byte ptr [ebp-9],0
>004AA0D8    je          004AA0EC
 004AA0DA    mov         eax,dword ptr [ebp-4]
 004AA0DD    mov         eax,dword ptr [eax+268]
 004AA0E3    mov         eax,dword ptr [eax+8]
 004AA0E6    dec         eax
 004AA0E7    mov         dword ptr [ebp-18],eax
>004AA0EA    jmp         004AA0F1
 004AA0EC    xor         eax,eax
 004AA0EE    mov         dword ptr [ebp-18],eax
 004AA0F1    mov         eax,dword ptr [ebp-18]
 004AA0F4    mov         dword ptr [ebp-14],eax
 004AA0F7    cmp         byte ptr [ebp-9],0
>004AA0FB    je          004AA118
 004AA0FD    inc         dword ptr [ebp-14]
 004AA100    mov         eax,dword ptr [ebp-4]
 004AA103    mov         eax,dword ptr [eax+268]
 004AA109    mov         eax,dword ptr [eax+8]
 004AA10C    cmp         eax,dword ptr [ebp-14]
>004AA10F    jne         004AA130
 004AA111    xor         eax,eax
 004AA113    mov         dword ptr [ebp-14],eax
>004AA116    jmp         004AA130
 004AA118    cmp         dword ptr [ebp-14],0
>004AA11C    jne         004AA12D
 004AA11E    mov         eax,dword ptr [ebp-4]
 004AA121    mov         eax,dword ptr [eax+268]
 004AA127    mov         eax,dword ptr [eax+8]
 004AA12A    mov         dword ptr [ebp-14],eax
 004AA12D    dec         dword ptr [ebp-14]
 004AA130    mov         edx,dword ptr [ebp-14]
 004AA133    mov         eax,dword ptr [ebp-4]
 004AA136    mov         eax,dword ptr [eax+268]
 004AA13C    call        TList.Get
 004AA141    mov         dword ptr [ebp-10],eax
 004AA144    cmp         byte ptr [ebp+8],0
>004AA148    je          004AA163
 004AA14A    mov         eax,dword ptr [ebp-10]
 004AA14D    cmp         byte ptr [eax+210],0
>004AA154    jne         004AA163
 004AA156    mov         eax,dword ptr [ebp-14]
 004AA159    cmp         eax,dword ptr [ebp-18]
>004AA15C    jne         004AA0F7
 004AA15E    xor         eax,eax
 004AA160    mov         dword ptr [ebp-10],eax
 004AA163    mov         eax,dword ptr [ebp-10]
 004AA166    mov         esp,ebp
 004AA168    pop         ebp
 004AA169    ret         4
end;*}

//004AA16C
{*procedure TPageControl.sub_004834DC(?:?; ?:?);
begin
 004AA16C    push        ebp
 004AA16D    mov         ebp,esp
 004AA16F    add         esp,0FFFFFFF0
 004AA172    mov         dword ptr [ebp-10],edx
 004AA175    mov         dword ptr [ebp-4],eax
 004AA178    mov         eax,dword ptr [ebp-4]
 004AA17B    mov         eax,dword ptr [eax+268];TPageControl.FPages:TList
 004AA181    mov         eax,dword ptr [eax+8];TList.FCount:Integer
 004AA184    dec         eax
 004AA185    test        eax,eax
>004AA187    jl          004AA1B5
 004AA189    inc         eax
 004AA18A    mov         dword ptr [ebp-0C],eax
 004AA18D    mov         dword ptr [ebp-8],0
 004AA194    mov         eax,dword ptr [ebp-4]
 004AA197    mov         eax,dword ptr [eax+268];TPageControl.FPages:TList
 004AA19D    mov         edx,dword ptr [ebp-8]
 004AA1A0    call        TList.Get
 004AA1A5    mov         edx,eax
 004AA1A7    mov         eax,dword ptr [ebp+0C]
 004AA1AA    call        dword ptr [ebp+8]
 004AA1AD    inc         dword ptr [ebp-8]
 004AA1B0    dec         dword ptr [ebp-0C]
>004AA1B3    jne         004AA194
 004AA1B5    mov         esp,ebp
 004AA1B7    pop         ebp
 004AA1B8    ret         8
end;*}

//004AA1BC
{*function sub_004AA1BC(?:?):?;
begin
 004AA1BC    push        ebp
 004AA1BD    mov         ebp,esp
 004AA1BF    add         esp,0FFFFFFE4
 004AA1C2    mov         dword ptr [ebp-8],edx
 004AA1C5    mov         dword ptr [ebp-4],eax
 004AA1C8    mov         eax,dword ptr [ebp-4]
 004AA1CB    cmp         word ptr [eax+262],0;TPageControl.?f262:word
>004AA1D3    je          004AA1E5
 004AA1D5    mov         edx,dword ptr [ebp-8]
 004AA1D8    mov         eax,dword ptr [ebp-4]
 004AA1DB    call        004A87C8
 004AA1E0    mov         dword ptr [ebp-0C],eax
>004AA1E3    jmp         004AA24F
 004AA1E5    xor         eax,eax
 004AA1E7    mov         dword ptr [ebp-14],eax
 004AA1EA    xor         eax,eax
 004AA1EC    mov         dword ptr [ebp-18],eax
 004AA1EF    mov         eax,dword ptr [ebp-4]
 004AA1F2    mov         eax,dword ptr [eax+268];TPageControl.FPages:TList
 004AA1F8    mov         eax,dword ptr [eax+8];TList.FCount:Integer
 004AA1FB    dec         eax
 004AA1FC    test        eax,eax
>004AA1FE    jl          004AA238
 004AA200    inc         eax
 004AA201    mov         dword ptr [ebp-1C],eax
 004AA204    mov         dword ptr [ebp-10],0
 004AA20B    mov         edx,dword ptr [ebp-10]
 004AA20E    mov         eax,dword ptr [ebp-4]
 004AA211    call        004AA2C4
 004AA216    cmp         byte ptr [eax+210],0
>004AA21D    jne         004AA224
 004AA21F    inc         dword ptr [ebp-18]
>004AA222    jmp         004AA227
 004AA224    inc         dword ptr [ebp-14]
 004AA227    mov         eax,dword ptr [ebp-8]
 004AA22A    inc         eax
 004AA22B    cmp         eax,dword ptr [ebp-14]
>004AA22E    je          004AA238
 004AA230    inc         dword ptr [ebp-10]
 004AA233    dec         dword ptr [ebp-1C]
>004AA236    jne         004AA20B
 004AA238    mov         edx,dword ptr [ebp-8]
 004AA23B    add         edx,dword ptr [ebp-18]
 004AA23E    mov         eax,dword ptr [ebp-4]
 004AA241    call        004AA2C4
 004AA246    mov         eax,dword ptr [eax+208]
 004AA24C    mov         dword ptr [ebp-0C],eax
 004AA24F    mov         eax,dword ptr [ebp-0C]
 004AA252    mov         esp,ebp
 004AA254    pop         ebp
 004AA255    ret
end;*}

//004AA258
{*function sub_004AA258(?:TPageControl; ?:?):?;
begin
 004AA258    push        ebp
 004AA259    mov         ebp,esp
 004AA25B    add         esp,0FFFFFFEC
 004AA25E    mov         dword ptr [ebp-8],edx
 004AA261    mov         dword ptr [ebp-4],eax
 004AA264    xor         eax,eax
 004AA266    mov         dword ptr [ebp-0C],eax
 004AA269    mov         eax,dword ptr [ebp-4]
 004AA26C    call        004AA2EC
 004AA271    dec         eax
 004AA272    test        eax,eax
>004AA274    jl          004AA2BA
 004AA276    inc         eax
 004AA277    mov         dword ptr [ebp-14],eax
 004AA27A    mov         dword ptr [ebp-10],0
 004AA281    mov         edx,dword ptr [ebp-10]
 004AA284    mov         eax,dword ptr [ebp-4]
 004AA287    call        004AA2C4
 004AA28C    mov         edx,dword ptr [ebp-8]
 004AA28F    cmp         eax,dword ptr [edx+30]
>004AA292    jne         004AA2B2
 004AA294    mov         eax,dword ptr [ebp-8]
 004AA297    mov         eax,dword ptr [eax+0A0]
 004AA29D    cmp         eax,dword ptr [ebp-4]
>004AA2A0    jne         004AA2B2
 004AA2A2    mov         edx,dword ptr [ebp-10]
 004AA2A5    mov         eax,dword ptr [ebp-4]
 004AA2A8    call        004AA2C4
 004AA2AD    mov         dword ptr [ebp-0C],eax
>004AA2B0    jmp         004AA2BA
 004AA2B2    inc         dword ptr [ebp-10]
 004AA2B5    dec         dword ptr [ebp-14]
>004AA2B8    jne         004AA281
 004AA2BA    mov         eax,dword ptr [ebp-0C]
 004AA2BD    mov         esp,ebp
 004AA2BF    pop         ebp
 004AA2C0    ret
end;*}

//004AA2C4
{*function sub_004AA2C4(?:TPageControl; ?:Integer):?;
begin
 004AA2C4    push        ebp
 004AA2C5    mov         ebp,esp
 004AA2C7    add         esp,0FFFFFFF4
 004AA2CA    mov         dword ptr [ebp-8],edx
 004AA2CD    mov         dword ptr [ebp-4],eax
 004AA2D0    mov         edx,dword ptr [ebp-8]
 004AA2D3    mov         eax,dword ptr [ebp-4]
 004AA2D6    mov         eax,dword ptr [eax+268];TPageControl.FPages:TList
 004AA2DC    call        TList.Get
 004AA2E1    mov         dword ptr [ebp-0C],eax
 004AA2E4    mov         eax,dword ptr [ebp-0C]
 004AA2E7    mov         esp,ebp
 004AA2E9    pop         ebp
 004AA2EA    ret
end;*}

//004AA2EC
{*function sub_004AA2EC(?:?):?;
begin
 004AA2EC    push        ebp
 004AA2ED    mov         ebp,esp
 004AA2EF    add         esp,0FFFFFFF8
 004AA2F2    mov         dword ptr [ebp-4],eax
 004AA2F5    mov         eax,dword ptr [ebp-4]
 004AA2F8    mov         eax,dword ptr [eax+268]
 004AA2FE    mov         eax,dword ptr [eax+8]
 004AA301    mov         dword ptr [ebp-8],eax
 004AA304    mov         eax,dword ptr [ebp-8]
 004AA307    pop         ecx
 004AA308    pop         ecx
 004AA309    pop         ebp
 004AA30A    ret
end;*}

//004AA30C
{*procedure TPageControl.sub_004AA30C(?:?; ?:?; ?:?; ?:?);
begin
 004AA30C    push        ebp
 004AA30D    mov         ebp,esp
 004AA30F    add         esp,0FFFFFFEC
 004AA312    push        esi
 004AA313    push        edi
 004AA314    mov         esi,dword ptr [ebp+0C]
 004AA317    lea         edi,[ebp-14]
 004AA31A    movs        dword ptr [edi],dword ptr [esi]
 004AA31B    movs        dword ptr [edi],dword ptr [esi]
 004AA31C    mov         dword ptr [ebp-0C],ecx
 004AA31F    mov         dword ptr [ebp-8],edx
 004AA322    mov         dword ptr [ebp-4],eax
 004AA325    mov         edx,dword ptr [ebp-8]
 004AA328    mov         eax,dword ptr [ebp-4]
 004AA32B    call        004AA258
 004AA330    test        eax,eax
 004AA332    mov         eax,dword ptr [ebp+8]
 004AA335    sete        byte ptr [eax]
 004AA338    lea         eax,[ebp-14]
 004AA33B    push        eax
 004AA33C    mov         eax,dword ptr [ebp+8]
 004AA33F    push        eax
 004AA340    mov         ecx,dword ptr [ebp-0C]
 004AA343    mov         edx,dword ptr [ebp-8]
 004AA346    mov         eax,dword ptr [ebp-4]
 004AA349    call        TWinControl.sub_004D1C58
 004AA34E    pop         edi
 004AA34F    pop         esi
 004AA350    mov         esp,ebp
 004AA352    pop         ebp
 004AA353    ret         8
end;*}

//004AA358
{*procedure sub_004AA358(?:?; ?:TTabSheet);
begin
 004AA358    push        ebp
 004AA359    mov         ebp,esp
 004AA35B    add         esp,0FFFFFFF8
 004AA35E    mov         dword ptr [ebp-8],edx
 004AA361    mov         dword ptr [ebp-4],eax
 004AA364    mov         edx,dword ptr [ebp-8]
 004AA367    mov         eax,dword ptr [ebp-4]
 004AA36A    mov         eax,dword ptr [eax+268]
 004AA370    call        TList.Add
 004AA375    mov         eax,dword ptr [ebp-4]
 004AA378    mov         edx,dword ptr [ebp-8]
 004AA37B    mov         dword ptr [edx+20C],eax;TTabSheet.FPageControl:TPageControl
 004AA381    mov         eax,dword ptr [ebp-8]
 004AA384    call        004A9920
 004AA389    pop         ecx
 004AA38A    pop         ecx
 004AA38B    pop         ebp
 004AA38C    ret
end;*}

//004AA390
{*procedure sub_004AA390(?:?; ?:?);
begin
 004AA390    push        ebp
 004AA391    mov         ebp,esp
 004AA393    add         esp,0FFFFFFF4
 004AA396    push        ebx
 004AA397    xor         ecx,ecx
 004AA399    mov         dword ptr [ebp-0C],ecx
 004AA39C    mov         dword ptr [ebp-8],edx
 004AA39F    mov         dword ptr [ebp-4],eax
 004AA3A2    xor         eax,eax
 004AA3A4    push        ebp
 004AA3A5    push        4AA3FD
 004AA3AA    push        dword ptr fs:[eax]
 004AA3AD    mov         dword ptr fs:[eax],esp
 004AA3B0    mov         eax,dword ptr [ebp-8]
 004AA3B3    push        eax
 004AA3B4    lea         edx,[ebp-0C]
 004AA3B7    mov         eax,dword ptr [ebp-8]
 004AA3BA    call        TControl.GetText
 004AA3BF    mov         eax,dword ptr [ebp-0C]
 004AA3C2    push        eax
 004AA3C3    mov         eax,dword ptr [ebp-8]
 004AA3C6    call        004A9648
 004AA3CB    mov         edx,eax
 004AA3CD    mov         eax,dword ptr [ebp-4]
 004AA3D0    mov         eax,dword ptr [eax+228]
 004AA3D6    pop         ecx
 004AA3D7    mov         ebx,dword ptr [eax]
 004AA3D9    call        dword ptr [ebx+64]
 004AA3DC    mov         eax,dword ptr [ebp-4]
 004AA3DF    mov         edx,dword ptr [eax]
 004AA3E1    call        dword ptr [edx+0D8]
 004AA3E7    xor         eax,eax
 004AA3E9    pop         edx
 004AA3EA    pop         ecx
 004AA3EB    pop         ecx
 004AA3EC    mov         dword ptr fs:[eax],edx
 004AA3EF    push        4AA404
 004AA3F4    lea         eax,[ebp-0C]
 004AA3F7    call        @LStrClr
 004AA3FC    ret
>004AA3FD    jmp         @HandleFinally
>004AA402    jmp         004AA3F4
 004AA404    pop         ebx
 004AA405    mov         esp,ebp
 004AA407    pop         ebp
 004AA408    ret
end;*}

//004AA40C
{*procedure sub_004AA40C(?:TPageControl; ?:?; ?:?);
begin
 004AA40C    push        ebp
 004AA40D    mov         ebp,esp
 004AA40F    add         esp,0FFFFFFF4
 004AA412    push        ebx
 004AA413    mov         dword ptr [ebp-0C],ecx
 004AA416    mov         dword ptr [ebp-8],edx
 004AA419    mov         dword ptr [ebp-4],eax
 004AA41C    mov         ecx,dword ptr [ebp-0C]
 004AA41F    mov         edx,dword ptr [ebp-8]
 004AA422    mov         eax,dword ptr [ebp-4]
 004AA425    mov         eax,dword ptr [eax+228];TPageControl.FTabs:TStrings
 004AA42B    mov         ebx,dword ptr [eax]
 004AA42D    call        dword ptr [ebx+70];TStrings.sub_0047ABBC
 004AA430    pop         ebx
 004AA431    mov         esp,ebp
 004AA433    pop         ebp
 004AA434    ret
end;*}

//004AA438
procedure sub_004AA438(?:TPageControl; ?:TTabSheet);
begin
{*
 004AA438    push        ebp
 004AA439    mov         ebp,esp
 004AA43B    add         esp,0FFFFFFF4
 004AA43E    mov         dword ptr [ebp-8],edx
 004AA441    mov         dword ptr [ebp-4],eax
 004AA444    mov         eax,dword ptr [ebp-4]
 004AA447    test        byte ptr [eax+1C],10;TPageControl.FComponentState:TComponentState
 004AA44B    setne       al
 004AA44E    xor         al,1
 004AA450    push        eax
 004AA451    mov         cl,1
 004AA453    mov         edx,dword ptr [ebp-8]
 004AA456    mov         eax,dword ptr [ebp-4]
 004AA459    call        004AA098
 004AA45E    mov         dword ptr [ebp-0C],eax
 004AA461    mov         eax,dword ptr [ebp-0C]
 004AA464    cmp         eax,dword ptr [ebp-8]
>004AA467    jne         004AA46E
 004AA469    xor         eax,eax
 004AA46B    mov         dword ptr [ebp-0C],eax
 004AA46E    xor         edx,edx
 004AA470    mov         eax,dword ptr [ebp-8]
 004AA473    call        004A9880
 004AA478    mov         eax,dword ptr [ebp-8]
 004AA47B    xor         edx,edx
 004AA47D    mov         dword ptr [eax+20C],edx;TTabSheet.FPageControl:TPageControl
 004AA483    mov         edx,dword ptr [ebp-8]
 004AA486    mov         eax,dword ptr [ebp-4]
 004AA489    mov         eax,dword ptr [eax+268];TPageControl.FPages:TList
 004AA48F    call        00478AC4
 004AA494    mov         edx,dword ptr [ebp-0C]
 004AA497    mov         eax,dword ptr [ebp-4]
 004AA49A    call        TPageControl.SetActivePage
 004AA49F    mov         esp,ebp
 004AA4A1    pop         ebp
 004AA4A2    ret
*}
end;

//004AA4A4
{*procedure sub_004AA4A4(?:TPageControl; ?:?; ?:?);
begin
 004AA4A4    push        ebp
 004AA4A5    mov         ebp,esp
 004AA4A7    add         esp,0FFFFFFF4
 004AA4AA    push        esi
 004AA4AB    mov         byte ptr [ebp-6],cl
 004AA4AE    mov         byte ptr [ebp-5],dl
 004AA4B1    mov         dword ptr [ebp-4],eax
 004AA4B4    mov         al,byte ptr [ebp-6]
 004AA4B7    push        eax
 004AA4B8    mov         cl,byte ptr [ebp-5]
 004AA4BB    mov         eax,dword ptr [ebp-4]
 004AA4BE    mov         edx,dword ptr [eax+26C];TPageControl.ActivePage:TTabSheet
 004AA4C4    mov         eax,dword ptr [ebp-4]
 004AA4C7    call        004AA098
 004AA4CC    mov         dword ptr [ebp-0C],eax
 004AA4CF    cmp         dword ptr [ebp-0C],0
>004AA4D3    je          004AA50A
 004AA4D5    mov         eax,dword ptr [ebp-0C]
 004AA4D8    mov         edx,dword ptr [ebp-4]
 004AA4DB    cmp         eax,dword ptr [edx+26C];TPageControl.ActivePage:TTabSheet
>004AA4E1    je          004AA50A
 004AA4E3    mov         eax,dword ptr [ebp-4]
 004AA4E6    mov         si,0FFB3
 004AA4EA    call        @CallDynaInst;TCustomTabControl.sub_004A84AC
 004AA4EF    test        al,al
>004AA4F1    je          004AA50A
 004AA4F3    mov         edx,dword ptr [ebp-0C]
 004AA4F6    mov         eax,dword ptr [ebp-4]
 004AA4F9    call        TPageControl.SetActivePage
 004AA4FE    mov         eax,dword ptr [ebp-4]
 004AA501    mov         si,0FFB2
 004AA505    call        @CallDynaInst;TPageControl.sub_004A84FC
 004AA50A    pop         esi
 004AA50B    mov         esp,ebp
 004AA50D    pop         ebp
 004AA50E    ret
end;*}

//004AA510
procedure TPageControl.SetActivePage(Value:TTabSheet);
begin
{*
 004AA510    push        ebp
 004AA511    mov         ebp,esp
 004AA513    add         esp,0FFFFFFF8
 004AA516    mov         dword ptr [ebp-8],edx
 004AA519    mov         dword ptr [ebp-4],eax
 004AA51C    cmp         dword ptr [ebp-8],0
>004AA520    je          004AA530
 004AA522    mov         eax,dword ptr [ebp-8]
 004AA525    mov         eax,dword ptr [eax+20C];TTabSheet.FPageControl:TPageControl
 004AA52B    cmp         eax,dword ptr [ebp-4]
>004AA52E    jne         004AA5AB
 004AA530    mov         eax,dword ptr [ebp-4]
 004AA533    mov         byte ptr [eax+278],1;TPageControl.FInSetActivePage:Boolean
 004AA53A    xor         eax,eax
 004AA53C    push        ebp
 004AA53D    push        4AA5A4
 004AA542    push        dword ptr fs:[eax]
 004AA545    mov         dword ptr fs:[eax],esp
 004AA548    mov         edx,dword ptr [ebp-8]
 004AA54B    mov         eax,dword ptr [ebp-4]
 004AA54E    call        004A9DE8
 004AA553    cmp         dword ptr [ebp-8],0
>004AA557    jne         004AA569
 004AA559    or          edx,0FFFFFFFF
 004AA55C    mov         eax,dword ptr [ebp-4]
 004AA55F    mov         ecx,dword ptr [eax]
 004AA561    call        dword ptr [ecx+0D4];TPageControl.SetTabIndex
>004AA567    jmp         004AA58C
 004AA569    mov         eax,dword ptr [ebp-4]
 004AA56C    mov         eax,dword ptr [eax+26C];TPageControl.ActivePage:TTabSheet
 004AA572    cmp         eax,dword ptr [ebp-8]
>004AA575    jne         004AA58C
 004AA577    mov         eax,dword ptr [ebp-8]
 004AA57A    call        004A9648
 004AA57F    mov         edx,eax
 004AA581    mov         eax,dword ptr [ebp-4]
 004AA584    mov         ecx,dword ptr [eax]
 004AA586    call        dword ptr [ecx+0D4];TPageControl.SetTabIndex
 004AA58C    xor         eax,eax
 004AA58E    pop         edx
 004AA58F    pop         ecx
 004AA590    pop         ecx
 004AA591    mov         dword ptr fs:[eax],edx
 004AA594    push        4AA5AB
 004AA599    mov         eax,dword ptr [ebp-4]
 004AA59C    mov         byte ptr [eax+278],0;TPageControl.FInSetActivePage:Boolean
 004AA5A3    ret
>004AA5A4    jmp         @HandleFinally
>004AA5A9    jmp         004AA599
 004AA5AB    pop         ecx
 004AA5AC    pop         ecx
 004AA5AD    pop         ebp
 004AA5AE    ret
*}
end;

//004AA5B0
{*procedure TPageControl.sub_0048355C(?:?; ?:?);
begin
 004AA5B0    push        ebp
 004AA5B1    mov         ebp,esp
 004AA5B3    add         esp,0FFFFFFF4
 004AA5B6    mov         dword ptr [ebp-0C],ecx
 004AA5B9    mov         dword ptr [ebp-8],edx
 004AA5BC    mov         dword ptr [ebp-4],eax
 004AA5BF    mov         edx,dword ptr [ebp-0C]
 004AA5C2    mov         eax,dword ptr [ebp-8]
 004AA5C5    call        TTabSheet.SetPageIndex
 004AA5CA    mov         esp,ebp
 004AA5CC    pop         ebp
 004AA5CD    ret
end;*}

//004AA5D0
{*procedure sub_004AA5D0(?:?);
begin
 004AA5D0    push        ebp
 004AA5D1    mov         ebp,esp
 004AA5D3    add         esp,0FFFFFFF8
 004AA5D6    mov         dword ptr [ebp-8],edx
 004AA5D9    mov         dword ptr [ebp-4],eax
 004AA5DC    mov         eax,dword ptr [ebp-8]
 004AA5DF    mov         edx,dword ptr ds:[4A2A4C];TTabSheet
 004AA5E5    call        @IsClass
 004AA5EA    test        al,al
>004AA5EC    je          004AA607
 004AA5EE    mov         eax,dword ptr [ebp-8]
 004AA5F1    mov         eax,dword ptr [eax+20C]
 004AA5F7    cmp         eax,dword ptr [ebp-4]
>004AA5FA    jne         004AA607
 004AA5FC    mov         edx,dword ptr [ebp-8]
 004AA5FF    mov         eax,dword ptr [ebp-4]
 004AA602    call        TPageControl.SetActivePage
 004AA607    mov         edx,dword ptr [ebp-8]
 004AA60A    mov         eax,dword ptr [ebp-4]
 004AA60D    call        004D33A8
 004AA612    pop         ecx
 004AA613    pop         ecx
 004AA614    pop         ebp
 004AA615    ret
end;*}

//004AA618
procedure sub_004AA618(?:TPageControl; ?:TTabSheet);
begin
{*
 004AA618    push        ebp
 004AA619    mov         ebp,esp
 004AA61B    add         esp,0FFFFFFF4
 004AA61E    push        ebx
 004AA61F    xor         ecx,ecx
 004AA621    mov         dword ptr [ebp-0C],ecx
 004AA624    mov         dword ptr [ebp-8],edx
 004AA627    mov         dword ptr [ebp-4],eax
 004AA62A    xor         eax,eax
 004AA62C    push        ebp
 004AA62D    push        4AA676
 004AA632    push        dword ptr fs:[eax]
 004AA635    mov         dword ptr fs:[eax],esp
 004AA638    lea         edx,[ebp-0C]
 004AA63B    mov         eax,dword ptr [ebp-8]
 004AA63E    call        TControl.GetText
 004AA643    mov         eax,dword ptr [ebp-0C]
 004AA646    push        eax
 004AA647    mov         eax,dword ptr [ebp-8]
 004AA64A    call        004A9648
 004AA64F    mov         edx,eax
 004AA651    mov         eax,dword ptr [ebp-4]
 004AA654    mov         eax,dword ptr [eax+228];TPageControl.FTabs:TStrings
 004AA65A    pop         ecx
 004AA65B    mov         ebx,dword ptr [eax]
 004AA65D    call        dword ptr [ebx+20];TStrings.sub_0047AC78
 004AA660    xor         eax,eax
 004AA662    pop         edx
 004AA663    pop         ecx
 004AA664    pop         ecx
 004AA665    mov         dword ptr fs:[eax],edx
 004AA668    push        4AA67D
 004AA66D    lea         eax,[ebp-0C]
 004AA670    call        @LStrClr
 004AA675    ret
>004AA676    jmp         @HandleFinally
>004AA67B    jmp         004AA66D
 004AA67D    pop         ebx
 004AA67E    mov         esp,ebp
 004AA680    pop         ebp
 004AA681    ret
*}
end;

//004AA684
procedure sub_004AA684;
begin
{*
 004AA684    push        ebp
 004AA685    mov         ebp,esp
 004AA687    push        ecx
 004AA688    mov         dword ptr [ebp-4],eax
 004AA68B    mov         eax,dword ptr [ebp-4]
 004AA68E    call        TPageControl.GetTabIndex
 004AA693    test        eax,eax
>004AA695    jl          004AA6BC
 004AA697    mov         eax,dword ptr [ebp-4]
 004AA69A    call        TPageControl.GetTabIndex
 004AA69F    mov         edx,eax
 004AA6A1    mov         eax,dword ptr [ebp-4]
 004AA6A4    mov         eax,dword ptr [eax+228];TPageControl.FTabs:TStrings
 004AA6AA    mov         ecx,dword ptr [eax]
 004AA6AC    call        dword ptr [ecx+18];TStrings.sub_0047A674
 004AA6AF    mov         edx,eax
 004AA6B1    mov         eax,dword ptr [ebp-4]
 004AA6B4    call        TPageControl.SetActivePage
 004AA6B9    pop         ecx
 004AA6BA    pop         ebp
 004AA6BB    ret
 004AA6BC    xor         edx,edx
 004AA6BE    mov         eax,dword ptr [ebp-4]
 004AA6C1    call        TPageControl.SetActivePage
 004AA6C6    pop         ecx
 004AA6C7    pop         ebp
 004AA6C8    ret
*}
end;

//004AA6CC
{*procedure TPageControl.CMDesignHitTest(?:?);
begin
 004AA6CC    push        ebp
 004AA6CD    mov         ebp,esp
 004AA6CF    add         esp,0FFFFFFE0
 004AA6D2    mov         dword ptr [ebp-8],edx
 004AA6D5    mov         dword ptr [ebp-4],eax
 004AA6D8    lea         edx,[ebp-20]
 004AA6DB    mov         eax,dword ptr [ebp-8]
 004AA6DE    mov         eax,dword ptr [eax+8]
 004AA6E1    call        00408250
 004AA6E6    mov         eax,dword ptr [ebp-20]
 004AA6E9    mov         dword ptr [ebp-18],eax
 004AA6EC    mov         eax,dword ptr [ebp-1C]
 004AA6EF    mov         dword ptr [ebp-14],eax
 004AA6F2    lea         eax,[ebp-18]
 004AA6F5    push        eax
 004AA6F6    push        0
 004AA6F8    push        130D
 004AA6FD    mov         eax,dword ptr [ebp-4]
 004AA700    call        TWinControl.GetHandle
 004AA705    push        eax
 004AA706    call        user32.SendMessageA
 004AA70B    mov         dword ptr [ebp-0C],eax
 004AA70E    cmp         dword ptr [ebp-0C],0
>004AA712    jl          004AA72B
 004AA714    mov         eax,dword ptr [ebp-4]
 004AA717    call        TPageControl.GetTabIndex
 004AA71C    cmp         eax,dword ptr [ebp-0C]
>004AA71F    je          004AA72B
 004AA721    mov         eax,dword ptr [ebp-8]
 004AA724    mov         dword ptr [eax+0C],1
 004AA72B    mov         esp,ebp
 004AA72D    pop         ebp
 004AA72E    ret
end;*}

//004AA730
{*procedure TPageControl.CMDialogKey(?:?);
begin
 004AA730    push        ebp
 004AA731    mov         ebp,esp
 004AA733    add         esp,0FFFFFFF8
 004AA736    push        esi
 004AA737    mov         dword ptr [ebp-8],edx
 004AA73A    mov         dword ptr [ebp-4],eax
 004AA73D    mov         eax,dword ptr [ebp-4]
 004AA740    mov         si,0FFB5
 004AA744    call        @CallDynaInst;TWinControl.sub_004D3858
 004AA749    test        al,al
>004AA74B    jne         004AA765
 004AA74D    call        user32.GetFocus
 004AA752    push        eax
 004AA753    mov         eax,dword ptr [ebp-4]
 004AA756    call        TWinControl.GetHandle
 004AA75B    push        eax
 004AA75C    call        user32.IsChild
 004AA761    test        eax,eax
>004AA763    je          004AA79E
 004AA765    mov         eax,dword ptr [ebp-8]
 004AA768    cmp         word ptr [eax+4],9
>004AA76D    jne         004AA79E
 004AA76F    push        11
 004AA771    call        user32.GetKeyState
 004AA776    test        ax,ax
>004AA779    jge         004AA79E
 004AA77B    push        10
 004AA77D    call        user32.GetKeyState
 004AA782    test        ax,ax
 004AA785    setge       dl
 004AA788    mov         cl,1
 004AA78A    mov         eax,dword ptr [ebp-4]
 004AA78D    call        004AA4A4
 004AA792    mov         eax,dword ptr [ebp-8]
 004AA795    mov         dword ptr [eax+0C],1
>004AA79C    jmp         004AA7A9
 004AA79E    mov         edx,dword ptr [ebp-8]
 004AA7A1    mov         eax,dword ptr [ebp-4]
 004AA7A4    call        TWinControl.CMDialogKey
 004AA7A9    pop         esi
 004AA7AA    pop         ecx
 004AA7AB    pop         ecx
 004AA7AC    pop         ebp
 004AA7AD    ret
end;*}

//004AA7B0
{*procedure TPageControl.CMDockClient(?:?);
begin
 004AA7B0    push        ebp
 004AA7B1    mov         ebp,esp
 004AA7B3    add         esp,0FFFFFFEC
 004AA7B6    push        ebx
 004AA7B7    push        esi
 004AA7B8    push        edi
 004AA7B9    xor         ecx,ecx
 004AA7BB    mov         dword ptr [ebp-14],ecx
 004AA7BE    mov         dword ptr [ebp-8],edx
 004AA7C1    mov         dword ptr [ebp-4],eax
 004AA7C4    xor         eax,eax
 004AA7C6    push        ebp
 004AA7C7    push        4AA909
 004AA7CC    push        dword ptr fs:[eax]
 004AA7CF    mov         dword ptr fs:[eax],esp
 004AA7D2    mov         eax,dword ptr [ebp-8]
 004AA7D5    xor         edx,edx
 004AA7D7    mov         dword ptr [eax+0C],edx
 004AA7DA    mov         ecx,dword ptr [ebp-4]
 004AA7DD    mov         dl,1
 004AA7DF    mov         eax,[004A2A4C];TTabSheet
 004AA7E4    call        TTabSheet.Create;TTabSheet.Create
 004AA7E9    mov         edx,dword ptr [ebp-4]
 004AA7EC    mov         dword ptr [edx+270],eax;TPageControl.FNewDockSheet:TTabSheet
 004AA7F2    xor         eax,eax
 004AA7F4    push        ebp
 004AA7F5    push        4AA8EC
 004AA7FA    push        dword ptr fs:[eax]
 004AA7FD    mov         dword ptr fs:[eax],esp
 004AA800    xor         eax,eax
 004AA802    push        ebp
 004AA803    push        4AA87B
 004AA808    push        dword ptr fs:[eax]
 004AA80B    mov         dword ptr fs:[eax],esp
 004AA80E    mov         eax,dword ptr [ebp-8]
 004AA811    mov         eax,dword ptr [eax+4]
 004AA814    mov         eax,dword ptr [eax+38]
 004AA817    mov         dword ptr [ebp-10],eax
 004AA81A    mov         eax,dword ptr [ebp-10]
 004AA81D    mov         edx,dword ptr ds:[4E6404];TCustomForm
 004AA823    call        @IsClass
 004AA828    test        al,al
>004AA82A    je          004AA848
 004AA82C    lea         edx,[ebp-14]
 004AA82F    mov         eax,dword ptr [ebp-10]
 004AA832    call        TControl.GetText
 004AA837    mov         edx,dword ptr [ebp-14]
 004AA83A    mov         eax,dword ptr [ebp-4]
 004AA83D    mov         eax,dword ptr [eax+270];TPageControl.FNewDockSheet:TTabSheet
 004AA843    call        TControl.SetText
 004AA848    mov         eax,dword ptr [ebp-4]
 004AA84B    mov         eax,dword ptr [eax+270];TPageControl.FNewDockSheet:TTabSheet
 004AA851    mov         edx,dword ptr [ebp-4]
 004AA854    call        004A976C
 004AA859    mov         eax,dword ptr [ebp-8]
 004AA85C    mov         eax,dword ptr [eax+4]
 004AA85F    lea         ecx,[eax+44]
 004AA862    mov         edx,dword ptr [ebp-4]
 004AA865    mov         eax,dword ptr [ebp-10]
 004AA868    mov         si,0FFCC
 004AA86C    call        @CallDynaInst
 004AA871    xor         eax,eax
 004AA873    pop         edx
 004AA874    pop         ecx
 004AA875    pop         ecx
 004AA876    mov         dword ptr fs:[eax],edx
>004AA879    jmp         004AA898
>004AA87B    jmp         @HandleAnyException
 004AA880    mov         eax,dword ptr [ebp-4]
 004AA883    mov         eax,dword ptr [eax+270];TPageControl.FNewDockSheet:TTabSheet
 004AA889    call        TObject.Free
 004AA88E    call        @RaiseAgain
 004AA893    call        @DoneExcept
 004AA898    mov         eax,dword ptr [ebp-10]
 004AA89B    mov         al,byte ptr [eax+57]
 004AA89E    mov         byte ptr [ebp-9],al
 004AA8A1    mov         eax,dword ptr [ebp-4]
 004AA8A4    mov         eax,dword ptr [eax+270];TPageControl.FNewDockSheet:TTabSheet
 004AA8AA    mov         dl,byte ptr [ebp-9]
 004AA8AD    call        TTabSheet.SetTabVisible
 004AA8B2    cmp         byte ptr [ebp-9],0
>004AA8B6    je          004AA8C9
 004AA8B8    mov         eax,dword ptr [ebp-4]
 004AA8BB    mov         edx,dword ptr [eax+270];TPageControl.FNewDockSheet:TTabSheet
 004AA8C1    mov         eax,dword ptr [ebp-4]
 004AA8C4    call        TPageControl.SetActivePage
 004AA8C9    mov         dl,5
 004AA8CB    mov         eax,dword ptr [ebp-10]
 004AA8CE    call        TImage.SetAlign
 004AA8D3    xor         eax,eax
 004AA8D5    pop         edx
 004AA8D6    pop         ecx
 004AA8D7    pop         ecx
 004AA8D8    mov         dword ptr fs:[eax],edx
 004AA8DB    push        4AA8F3
 004AA8E0    mov         eax,dword ptr [ebp-4]
 004AA8E3    xor         edx,edx
 004AA8E5    mov         dword ptr [eax+270],edx;TPageControl.FNewDockSheet:TTabSheet
 004AA8EB    ret
>004AA8EC    jmp         @HandleFinally
>004AA8F1    jmp         004AA8E0
 004AA8F3    xor         eax,eax
 004AA8F5    pop         edx
 004AA8F6    pop         ecx
 004AA8F7    pop         ecx
 004AA8F8    mov         dword ptr fs:[eax],edx
 004AA8FB    push        4AA910
 004AA900    lea         eax,[ebp-14]
 004AA903    call        @LStrClr
 004AA908    ret
>004AA909    jmp         @HandleFinally
>004AA90E    jmp         004AA900
 004AA910    pop         edi
 004AA911    pop         esi
 004AA912    pop         ebx
 004AA913    mov         esp,ebp
 004AA915    pop         ebp
 004AA916    ret
end;*}

//004AA918
{*procedure TPageControl.sub_004AA918(?:?);
begin
 004AA918    push        ebp
 004AA919    mov         ebp,esp
 004AA91B    add         esp,0FFFFFFE8
 004AA91E    xor         ecx,ecx
 004AA920    mov         dword ptr [ebp-10],ecx
 004AA923    mov         dword ptr [ebp-8],edx
 004AA926    mov         dword ptr [ebp-4],eax
 004AA929    xor         eax,eax
 004AA92B    push        ebp
 004AA92C    push        4AA9F6
 004AA931    push        dword ptr fs:[eax]
 004AA934    mov         dword ptr fs:[eax],esp
 004AA937    mov         edx,dword ptr [ebp-8]
 004AA93A    mov         edx,dword ptr [edx+4]
 004AA93D    mov         eax,dword ptr [ebp-4]
 004AA940    call        004AA258
 004AA945    mov         dword ptr [ebp-14],eax
 004AA948    cmp         dword ptr [ebp-14],0
>004AA94C    je          004AA9D5
 004AA952    mov         eax,dword ptr [ebp-8]
 004AA955    mov         eax,dword ptr [eax+8]
 004AA958    mov         eax,dword ptr [eax]
 004AA95A    sub         eax,0C
>004AA95D    je          004AA968
 004AA95F    sub         eax,0AFFF
>004AA964    je          004AA9C4
>004AA966    jmp         004AA9D5
 004AA968    lea         eax,[ebp-10]
 004AA96B    mov         edx,dword ptr [ebp-8]
 004AA96E    mov         edx,dword ptr [edx+8]
 004AA971    mov         edx,dword ptr [edx+8]
 004AA974    call        @LStrFromPChar
 004AA979    mov         eax,dword ptr [ebp-10]
 004AA97C    call        @DynArrayLength
 004AA981    test        eax,eax
>004AA983    jle         004AA9B7
 004AA985    mov         dword ptr [ebp-18],eax
 004AA988    mov         dword ptr [ebp-0C],1
 004AA98F    mov         eax,dword ptr [ebp-10]
 004AA992    mov         edx,dword ptr [ebp-0C]
 004AA995    mov         al,byte ptr [eax+edx-1]
 004AA999    sub         al,0A
>004AA99B    je          004AA9A1
 004AA99D    sub         al,3
>004AA99F    jne         004AA9AF
 004AA9A1    mov         edx,dword ptr [ebp-0C]
 004AA9A4    dec         edx
 004AA9A5    lea         eax,[ebp-10]
 004AA9A8    call        @LStrSetLength
>004AA9AD    jmp         004AA9B7
 004AA9AF    inc         dword ptr [ebp-0C]
 004AA9B2    dec         dword ptr [ebp-18]
>004AA9B5    jne         004AA98F
 004AA9B7    mov         edx,dword ptr [ebp-10]
 004AA9BA    mov         eax,dword ptr [ebp-14]
 004AA9BD    call        TControl.SetText
>004AA9C2    jmp         004AA9D5
 004AA9C4    mov         eax,dword ptr [ebp-8]
 004AA9C7    mov         eax,dword ptr [eax+8]
 004AA9CA    mov         edx,dword ptr [eax+4]
 004AA9CD    mov         eax,dword ptr [ebp-14]
 004AA9D0    call        TTabSheet.SetTabVisible
 004AA9D5    mov         edx,dword ptr [ebp-8]
 004AA9D8    mov         eax,dword ptr [ebp-4]
 004AA9DB    mov         ecx,dword ptr [eax]
 004AA9DD    call        dword ptr [ecx-10];TPageControl.DefaultHandler
 004AA9E0    xor         eax,eax
 004AA9E2    pop         edx
 004AA9E3    pop         ecx
 004AA9E4    pop         ecx
 004AA9E5    mov         dword ptr fs:[eax],edx
 004AA9E8    push        4AA9FD
 004AA9ED    lea         eax,[ebp-10]
 004AA9F0    call        @LStrClr
 004AA9F5    ret
>004AA9F6    jmp         @HandleFinally
>004AA9FB    jmp         004AA9ED
 004AA9FD    mov         esp,ebp
 004AA9FF    pop         ebp
 004AAA00    ret
end;*}

//004AAA04
{*procedure TPageControl.CMUndockClient(?:?);
begin
 004AAA04    push        ebp
 004AAA05    mov         ebp,esp
 004AAA07    add         esp,0FFFFFFF4
 004AAA0A    mov         dword ptr [ebp-8],edx
 004AAA0D    mov         dword ptr [ebp-4],eax
 004AAA10    mov         eax,dword ptr [ebp-8]
 004AAA13    xor         edx,edx
 004AAA15    mov         dword ptr [eax+0C],edx
 004AAA18    mov         edx,dword ptr [ebp-8]
 004AAA1B    mov         edx,dword ptr [edx+8]
 004AAA1E    mov         eax,dword ptr [ebp-4]
 004AAA21    call        004AA258
 004AAA26    mov         dword ptr [ebp-0C],eax
 004AAA29    cmp         dword ptr [ebp-0C],0
>004AAA2D    je          004AAA48
 004AAA2F    mov         eax,dword ptr [ebp-0C]
 004AAA32    mov         edx,dword ptr [ebp-4]
 004AAA35    mov         dword ptr [edx+274],eax;TPageControl.FUndockingPage:TTabSheet
 004AAA3B    mov         eax,dword ptr [ebp-8]
 004AAA3E    mov         eax,dword ptr [eax+8]
 004AAA41    xor         edx,edx
 004AAA43    call        TImage.SetAlign
 004AAA48    mov         esp,ebp
 004AAA4A    pop         ebp
 004AAA4B    ret
end;*}

//004AAA4C
{*function sub_004AAA4C(?:TPageControl; ?:?):?;
begin
 004AAA4C    push        ebp
 004AAA4D    mov         ebp,esp
 004AAA4F    add         esp,0FFFFFFD4
 004AAA52    push        esi
 004AAA53    push        edi
 004AAA54    mov         esi,edx
 004AAA56    lea         edi,[ebp-0C]
 004AAA59    movs        dword ptr [edi],dword ptr [esi]
 004AAA5A    movs        dword ptr [edi],dword ptr [esi]
 004AAA5B    mov         dword ptr [ebp-4],eax
 004AAA5E    xor         eax,eax
 004AAA60    mov         dword ptr [ebp-10],eax
 004AAA63    mov         eax,dword ptr [ebp-4]
 004AAA66    cmp         byte ptr [eax+1A8],0
>004AAA6D    je          004AAB04
 004AAA73    mov         eax,dword ptr [ebp-0C]
 004AAA76    mov         dword ptr [ebp-2C],eax
 004AAA79    mov         eax,dword ptr [ebp-8]
 004AAA7C    mov         dword ptr [ebp-28],eax
 004AAA7F    lea         eax,[ebp-2C]
 004AAA82    push        eax
 004AAA83    push        0
 004AAA85    push        130D
 004AAA8A    mov         eax,dword ptr [ebp-4]
 004AAA8D    call        TWinControl.GetHandle
 004AAA92    push        eax
 004AAA93    call        user32.SendMessageA
 004AAA98    mov         dword ptr [ebp-18],eax
 004AAA9B    cmp         dword ptr [ebp-18],0
>004AAA9F    jl          004AAB04
 004AAAA1    xor         eax,eax
 004AAAA3    mov         dword ptr [ebp-1C],eax
 004AAAA6    mov         eax,dword ptr [ebp-18]
 004AAAA9    test        eax,eax
>004AAAAB    jl          004AAAD2
 004AAAAD    inc         eax
 004AAAAE    mov         dword ptr [ebp-20],eax
 004AAAB1    mov         dword ptr [ebp-14],0
 004AAAB8    push        1
 004AAABA    mov         cl,1
 004AAABC    mov         edx,dword ptr [ebp-1C]
 004AAABF    mov         eax,dword ptr [ebp-4]
 004AAAC2    call        004AA098
 004AAAC7    mov         dword ptr [ebp-1C],eax
 004AAACA    inc         dword ptr [ebp-14]
 004AAACD    dec         dword ptr [ebp-20]
>004AAAD0    jne         004AAAB8
 004AAAD2    cmp         dword ptr [ebp-1C],0
>004AAAD6    je          004AAB04
 004AAAD8    mov         eax,dword ptr [ebp-1C]
 004AAADB    call        004CF618
 004AAAE0    test        eax,eax
>004AAAE2    jle         004AAB04
 004AAAE4    xor         edx,edx
 004AAAE6    mov         eax,dword ptr [ebp-1C]
 004AAAE9    call        004CF5AC
 004AAAEE    mov         dword ptr [ebp-10],eax
 004AAAF1    mov         eax,dword ptr [ebp-10]
 004AAAF4    mov         eax,dword ptr [eax+0A0]
 004AAAFA    cmp         eax,dword ptr [ebp-4]
>004AAAFD    je          004AAB04
 004AAAFF    xor         eax,eax
 004AAB01    mov         dword ptr [ebp-10],eax
 004AAB04    mov         eax,dword ptr [ebp-10]
 004AAB07    pop         edi
 004AAB08    pop         esi
 004AAB09    mov         esp,ebp
 004AAB0B    pop         ebp
 004AAB0C    ret
end;*}

//004AAB10
{*procedure TPageControl.WMLButtonDown(?:?);
begin
 004AAB10    push        ebp
 004AAB11    mov         ebp,esp
 004AAB13    add         esp,0FFFFFFEC
 004AAB16    mov         dword ptr [ebp-8],edx
 004AAB19    mov         dword ptr [ebp-4],eax
 004AAB1C    mov         edx,dword ptr [ebp-8]
 004AAB1F    mov         eax,dword ptr [ebp-4]
 004AAB22    call        TControl.WMLButtonDown
 004AAB27    lea         edx,[ebp-14]
 004AAB2A    mov         eax,dword ptr [ebp-8]
 004AAB2D    mov         eax,dword ptr [eax+8]
 004AAB30    call        00408250
 004AAB35    lea         edx,[ebp-14]
 004AAB38    mov         eax,dword ptr [ebp-4]
 004AAB3B    call        004AAA4C
 004AAB40    mov         dword ptr [ebp-0C],eax
 004AAB43    cmp         dword ptr [ebp-0C],0
>004AAB47    je          004AAB62
 004AAB49    mov         eax,dword ptr [ebp-4]
 004AAB4C    cmp         byte ptr [eax+225],0;TPageControl.FStyle:TTabStyle
>004AAB53    jne         004AAB62
 004AAB55    or          ecx,0FFFFFFFF
 004AAB58    xor         edx,edx
 004AAB5A    mov         eax,dword ptr [ebp-0C]
 004AAB5D    call        004CB9C0
 004AAB62    mov         esp,ebp
 004AAB64    pop         ebp
 004AAB65    ret
end;*}

//004AAB68
{*procedure TPageControl.WMLButtonDblClk(?:?);
begin
 004AAB68    push        ebp
 004AAB69    mov         ebp,esp
 004AAB6B    add         esp,0FFFFFFEC
 004AAB6E    mov         dword ptr [ebp-8],edx
 004AAB71    mov         dword ptr [ebp-4],eax
 004AAB74    mov         edx,dword ptr [ebp-8]
 004AAB77    mov         eax,dword ptr [ebp-4]
 004AAB7A    call        TControl.WMLButtonDblClk
 004AAB7F    lea         edx,[ebp-14]
 004AAB82    mov         eax,dword ptr [ebp-8]
 004AAB85    mov         eax,dword ptr [eax+8]
 004AAB88    call        00408250
 004AAB8D    lea         edx,[ebp-14]
 004AAB90    mov         eax,dword ptr [ebp-4]
 004AAB93    call        004AAA4C
 004AAB98    mov         dword ptr [ebp-0C],eax
 004AAB9B    cmp         dword ptr [ebp-0C],0
>004AAB9F    je          004AABAF
 004AABA1    push        0
 004AABA3    xor         ecx,ecx
 004AABA5    xor         edx,edx
 004AABA7    mov         eax,dword ptr [ebp-0C]
 004AABAA    call        004CC1DC
 004AABAF    mov         esp,ebp
 004AABB1    pop         ebp
 004AABB2    ret
end;*}

//004AABB4
procedure TPageControl.SetTabIndex(Value:Integer);
begin
{*
 004AABB4    push        ebp
 004AABB5    mov         ebp,esp
 004AABB7    add         esp,0FFFFFFF8
 004AABBA    mov         dword ptr [ebp-8],edx
 004AABBD    mov         dword ptr [ebp-4],eax
 004AABC0    mov         edx,dword ptr [ebp-8]
 004AABC3    mov         eax,dword ptr [ebp-4]
 004AABC6    call        004A8C90
 004AABCB    mov         eax,dword ptr [ebp-4]
 004AABCE    cmp         byte ptr [eax+278],0;TPageControl.FInSetActivePage:Boolean
>004AABD5    jne         004AAC17
 004AABD7    cmp         dword ptr [ebp-8],0
>004AABDB    jl          004AAC17
 004AABDD    mov         eax,dword ptr [ebp-4]
 004AABE0    mov         eax,dword ptr [eax+268];TPageControl.FPages:TList
 004AABE6    mov         eax,dword ptr [eax+8];TList.FCount:Integer
 004AABE9    cmp         eax,dword ptr [ebp-8]
>004AABEC    jle         004AAC17
 004AABEE    mov         edx,dword ptr [ebp-8]
 004AABF1    mov         eax,dword ptr [ebp-4]
 004AABF4    call        004AA2C4
 004AABF9    cmp         byte ptr [eax+210],0
>004AAC00    je          004AAC17
 004AAC02    mov         edx,dword ptr [ebp-8]
 004AAC05    mov         eax,dword ptr [ebp-4]
 004AAC08    call        004AA2C4
 004AAC0D    mov         edx,eax
 004AAC0F    mov         eax,dword ptr [ebp-4]
 004AAC12    call        TPageControl.SetActivePage
 004AAC17    pop         ecx
 004AAC18    pop         ecx
 004AAC19    pop         ebp
 004AAC1A    ret
*}
end;

//004AAC1C
{*procedure TPageControl.WMEraseBkgnd(?:?);
begin
 004AAC1C    push        ebp
 004AAC1D    mov         ebp,esp
 004AAC1F    add         esp,0FFFFFFF8
 004AAC22    mov         dword ptr [ebp-8],edx
 004AAC25    mov         dword ptr [ebp-4],eax
 004AAC28    call        ThemeServices
 004AAC2D    call        TThemeServices.GetThemesEnabled
 004AAC32    test        al,al
>004AAC34    je          004AAC42
 004AAC36    mov         eax,dword ptr [ebp-4]
 004AAC39    call        TPanel.GetParentBackground
 004AAC3E    test        al,al
>004AAC40    jne         004AAC4F
 004AAC42    mov         edx,dword ptr [ebp-8]
 004AAC45    mov         eax,dword ptr [ebp-4]
 004AAC48    call        TWinControl.WMEraseBkgnd
>004AAC4D    jmp         004AAC59
 004AAC4F    mov         eax,dword ptr [ebp-8]
 004AAC52    mov         dword ptr [eax+0C],1
 004AAC59    pop         ecx
 004AAC5A    pop         ecx
 004AAC5B    pop         ebp
 004AAC5C    ret
end;*}

//004AAC60
constructor sub_004AAC60;
begin
{*
 004AAC60    push        ebp
 004AAC61    mov         ebp,esp
 004AAC63    add         esp,0FFFFFFF4
 004AAC66    test        dl,dl
>004AAC68    je          004AAC72
 004AAC6A    add         esp,0FFFFFFF0
 004AAC6D    call        @ClassCreate
 004AAC72    mov         dword ptr [ebp-0C],ecx
 004AAC75    mov         byte ptr [ebp-5],dl
 004AAC78    mov         dword ptr [ebp-4],eax
 004AAC7B    mov         eax,dword ptr [ebp-4]
 004AAC7E    mov         dword ptr [eax+10],32;TStatusPanel.Width:Integer
 004AAC85    mov         eax,dword ptr [ebp-4]
 004AAC88    mov         byte ptr [eax+15],1;TStatusPanel.Bevel:TStatusPanelBevel
 004AAC8C    mov         eax,dword ptr [ebp-4]
 004AAC8F    mov         byte ptr [eax+17],1;TStatusPanel.ParentBiDiMode:Boolean
 004AAC93    mov         ecx,dword ptr [ebp-0C]
 004AAC96    xor         edx,edx
 004AAC98    mov         eax,dword ptr [ebp-4]
 004AAC9B    call        004795A8
 004AACA0    mov         eax,dword ptr [ebp-4]
 004AACA3    call        004AADC0
 004AACA8    mov         eax,dword ptr [ebp-4]
 004AACAB    cmp         byte ptr [ebp-5],0
>004AACAF    je          004AACC0
 004AACB1    call        @AfterConstruction
 004AACB6    pop         dword ptr fs:[0]
 004AACBD    add         esp,0C
 004AACC0    mov         eax,dword ptr [ebp-4]
 004AACC3    mov         esp,ebp
 004AACC5    pop         ebp
 004AACC6    ret
*}
end;

//004AACC8
{*procedure sub_004AACC8(?:?);
begin
 004AACC8    push        ebp
 004AACC9    mov         ebp,esp
 004AACCB    add         esp,0FFFFFFF8
 004AACCE    mov         dword ptr [ebp-8],edx
 004AACD1    mov         dword ptr [ebp-4],eax
 004AACD4    mov         eax,dword ptr [ebp-8]
 004AACD7    mov         edx,dword ptr ds:[4A39A0];TStatusPanel
 004AACDD    call        @IsClass
 004AACE2    test        al,al
>004AACE4    je          004AAD2E
 004AACE6    mov         eax,dword ptr [ebp-8]
 004AACE9    mov         edx,dword ptr [eax+0C]
 004AACEC    mov         eax,dword ptr [ebp-4]
 004AACEF    call        TStatusPanel.SetText
 004AACF4    mov         eax,dword ptr [ebp-8]
 004AACF7    mov         edx,dword ptr [eax+10]
 004AACFA    mov         eax,dword ptr [ebp-4]
 004AACFD    call        TStatusPanel.SetWidth
 004AAD02    mov         eax,dword ptr [ebp-8]
 004AAD05    mov         dl,byte ptr [eax+14]
 004AAD08    mov         eax,dword ptr [ebp-4]
 004AAD0B    call        TStatusPanel.SetAlignment
 004AAD10    mov         eax,dword ptr [ebp-8]
 004AAD13    mov         dl,byte ptr [eax+15]
 004AAD16    mov         eax,dword ptr [ebp-4]
 004AAD19    call        TStatusPanel.SetBevel
 004AAD1E    mov         eax,dword ptr [ebp-8]
 004AAD21    mov         dl,byte ptr [eax+18]
 004AAD24    mov         eax,dword ptr [ebp-4]
 004AAD27    call        TStatusPanel.SetStyle
>004AAD2C    jmp         004AAD39
 004AAD2E    mov         edx,dword ptr [ebp-8]
 004AAD31    mov         eax,dword ptr [ebp-4]
 004AAD34    call        004790A8
 004AAD39    pop         ecx
 004AAD3A    pop         ecx
 004AAD3B    pop         ebp
 004AAD3C    ret
end;*}

//004AAD40
procedure TStatusPanel.SetBiDiMode(Value:TBiDiMode);
begin
{*
 004AAD40    push        ebp
 004AAD41    mov         ebp,esp
 004AAD43    add         esp,0FFFFFFF8
 004AAD46    mov         byte ptr [ebp-5],dl
 004AAD49    mov         dword ptr [ebp-4],eax
 004AAD4C    mov         al,byte ptr [ebp-5]
 004AAD4F    mov         edx,dword ptr [ebp-4]
 004AAD52    cmp         al,byte ptr [edx+16];TStatusPanel.BiDiMode:TBiDiMode
>004AAD55    je          004AAD71
 004AAD57    mov         al,byte ptr [ebp-5]
 004AAD5A    mov         edx,dword ptr [ebp-4]
 004AAD5D    mov         byte ptr [edx+16],al;TStatusPanel.BiDiMode:TBiDiMode
 004AAD60    mov         eax,dword ptr [ebp-4]
 004AAD63    mov         byte ptr [eax+17],0;TStatusPanel.ParentBiDiMode:Boolean
 004AAD67    xor         edx,edx
 004AAD69    mov         eax,dword ptr [ebp-4]
 004AAD6C    call        0047962C
 004AAD71    pop         ecx
 004AAD72    pop         ecx
 004AAD73    pop         ebp
 004AAD74    ret
*}
end;

//004AAD78
function TStatusPanel.IsStoredBiDiMode(Value:TBiDiMode):Boolean;
begin
{*
 004AAD78    push        ebp
 004AAD79    mov         ebp,esp
 004AAD7B    add         esp,0FFFFFFF8
 004AAD7E    mov         dword ptr [ebp-4],eax
 004AAD81    mov         eax,dword ptr [ebp-4]
 004AAD84    mov         al,byte ptr [eax+17];TStatusPanel.ParentBiDiMode:Boolean
 004AAD87    xor         al,1
 004AAD89    mov         byte ptr [ebp-5],al
 004AAD8C    mov         al,byte ptr [ebp-5]
 004AAD8F    pop         ecx
 004AAD90    pop         ecx
 004AAD91    pop         ebp
 004AAD92    ret
*}
end;

//004AAD94
procedure TStatusPanel.SetParentBiDiMode(Value:Boolean);
begin
{*
 004AAD94    push        ebp
 004AAD95    mov         ebp,esp
 004AAD97    add         esp,0FFFFFFF8
 004AAD9A    mov         byte ptr [ebp-5],dl
 004AAD9D    mov         dword ptr [ebp-4],eax
 004AADA0    mov         eax,dword ptr [ebp-4]
 004AADA3    mov         al,byte ptr [eax+17];TStatusPanel.ParentBiDiMode:Boolean
 004AADA6    cmp         al,byte ptr [ebp-5]
>004AADA9    je          004AADBC
 004AADAB    mov         al,byte ptr [ebp-5]
 004AADAE    mov         edx,dword ptr [ebp-4]
 004AADB1    mov         byte ptr [edx+17],al;TStatusPanel.ParentBiDiMode:Boolean
 004AADB4    mov         eax,dword ptr [ebp-4]
 004AADB7    call        004AADC0
 004AADBC    pop         ecx
 004AADBD    pop         ecx
 004AADBE    pop         ebp
 004AADBF    ret
*}
end;

//004AADC0
procedure sub_004AADC0(?:TStatusPanel);
begin
{*
 004AADC0    push        ebp
 004AADC1    mov         ebp,esp
 004AADC3    push        ecx
 004AADC4    push        esi
 004AADC5    mov         dword ptr [ebp-4],eax
 004AADC8    mov         eax,dword ptr [ebp-4]
 004AADCB    cmp         byte ptr [eax+17],0;TStatusPanel.ParentBiDiMode:Boolean
>004AADCF    je          004AAE02
 004AADD1    mov         eax,dword ptr [ebp-4]
 004AADD4    mov         si,0FFFF
 004AADD8    call        @CallDynaInst;TCollectionItem.sub_00479290
 004AADDD    test        eax,eax
>004AADDF    je          004AAE02
 004AADE1    mov         eax,dword ptr [ebp-4]
 004AADE4    mov         si,0FFFF
 004AADE8    call        @CallDynaInst;TCollectionItem.sub_00479290
 004AADED    mov         eax,dword ptr [eax+18]
 004AADF0    mov         dl,byte ptr [eax+5F]
 004AADF3    mov         eax,dword ptr [ebp-4]
 004AADF6    call        TStatusPanel.SetBiDiMode
 004AADFB    mov         eax,dword ptr [ebp-4]
 004AADFE    mov         byte ptr [eax+17],1;TStatusPanel.ParentBiDiMode:Boolean
 004AAE02    pop         esi
 004AAE03    pop         ecx
 004AAE04    pop         ebp
 004AAE05    ret
*}
end;

//004AAE08
{*function sub_004AAE08(?:TStatusPanel):?;
begin
 004AAE08    push        ebp
 004AAE09    mov         ebp,esp
 004AAE0B    add         esp,0FFFFFFF8
 004AAE0E    mov         dword ptr [ebp-4],eax
 004AAE11    mov         eax,[0055B70C];^gvar_0055D9C4:Integer
 004AAE16    cmp         byte ptr [eax+0D],0
>004AAE1A    je          004AAE25
 004AAE1C    mov         eax,dword ptr [ebp-4]
 004AAE1F    cmp         byte ptr [eax+16],0
>004AAE23    jne         004AAE29
 004AAE25    xor         eax,eax
>004AAE27    jmp         004AAE2B
 004AAE29    mov         al,1
 004AAE2B    mov         byte ptr [ebp-5],al
 004AAE2E    mov         al,byte ptr [ebp-5]
 004AAE31    pop         ecx
 004AAE32    pop         ecx
 004AAE33    pop         ebp
 004AAE34    ret
end;*}

//004AAE38
{*function sub_004AAE38(?:TStatusPanel):?;
begin
 004AAE38    push        ebp
 004AAE39    mov         ebp,esp
 004AAE3B    add         esp,0FFFFFFF8
 004AAE3E    mov         dword ptr [ebp-4],eax
 004AAE41    mov         eax,[0055B70C];^gvar_0055D9C4:Integer
 004AAE46    cmp         byte ptr [eax+0D],0
>004AAE4A    je          004AAE55
 004AAE4C    mov         eax,dword ptr [ebp-4]
 004AAE4F    cmp         byte ptr [eax+16],1
>004AAE53    je          004AAE59
 004AAE55    xor         eax,eax
>004AAE57    jmp         004AAE5B
 004AAE59    mov         al,1
 004AAE5B    mov         byte ptr [ebp-5],al
 004AAE5E    mov         al,byte ptr [ebp-5]
 004AAE61    pop         ecx
 004AAE62    pop         ecx
 004AAE63    pop         ebp
 004AAE64    ret
end;*}

//004AAE68
{*procedure sub_004AAE68(?:?);
begin
 004AAE68    push        ebp
 004AAE69    mov         ebp,esp
 004AAE6B    add         esp,0FFFFFFF8
 004AAE6E    mov         dword ptr [ebp-8],edx
 004AAE71    mov         dword ptr [ebp-4],eax
 004AAE74    mov         eax,dword ptr [ebp-8]
 004AAE77    mov         edx,dword ptr [ebp-4]
 004AAE7A    mov         edx,dword ptr [edx+0C];TStatusPanel.Text:String
 004AAE7D    call        @LStrAsg
 004AAE82    mov         eax,dword ptr [ebp-8]
 004AAE85    cmp         dword ptr [eax],0
>004AAE88    jne         004AAE95
 004AAE8A    mov         edx,dword ptr [ebp-8]
 004AAE8D    mov         eax,dword ptr [ebp-4]
 004AAE90    call        004796AC
 004AAE95    pop         ecx
 004AAE96    pop         ecx
 004AAE97    pop         ebp
 004AAE98    ret
end;*}

//004AAE9C
procedure TStatusPanel.SetAlignment(Value:TAlignment);
begin
{*
 004AAE9C    push        ebp
 004AAE9D    mov         ebp,esp
 004AAE9F    add         esp,0FFFFFFF8
 004AAEA2    mov         byte ptr [ebp-5],dl
 004AAEA5    mov         dword ptr [ebp-4],eax
 004AAEA8    mov         eax,dword ptr [ebp-4]
 004AAEAB    mov         al,byte ptr [eax+14];TStatusPanel.Alignment:TAlignment
 004AAEAE    cmp         al,byte ptr [ebp-5]
>004AAEB1    je          004AAEC6
 004AAEB3    mov         al,byte ptr [ebp-5]
 004AAEB6    mov         edx,dword ptr [ebp-4]
 004AAEB9    mov         byte ptr [edx+14],al;TStatusPanel.Alignment:TAlignment
 004AAEBC    xor         edx,edx
 004AAEBE    mov         eax,dword ptr [ebp-4]
 004AAEC1    call        0047962C
 004AAEC6    pop         ecx
 004AAEC7    pop         ecx
 004AAEC8    pop         ebp
 004AAEC9    ret
*}
end;

//004AAECC
procedure TStatusPanel.SetBevel(Value:TStatusPanelBevel);
begin
{*
 004AAECC    push        ebp
 004AAECD    mov         ebp,esp
 004AAECF    add         esp,0FFFFFFF8
 004AAED2    mov         byte ptr [ebp-5],dl
 004AAED5    mov         dword ptr [ebp-4],eax
 004AAED8    mov         eax,dword ptr [ebp-4]
 004AAEDB    mov         al,byte ptr [eax+15];TStatusPanel.Bevel:TStatusPanelBevel
 004AAEDE    cmp         al,byte ptr [ebp-5]
>004AAEE1    je          004AAEF6
 004AAEE3    mov         al,byte ptr [ebp-5]
 004AAEE6    mov         edx,dword ptr [ebp-4]
 004AAEE9    mov         byte ptr [edx+15],al;TStatusPanel.Bevel:TStatusPanelBevel
 004AAEEC    xor         edx,edx
 004AAEEE    mov         eax,dword ptr [ebp-4]
 004AAEF1    call        0047962C
 004AAEF6    pop         ecx
 004AAEF7    pop         ecx
 004AAEF8    pop         ebp
 004AAEF9    ret
*}
end;

//004AAEFC
procedure TStatusPanel.SetStyle(Value:TStatusPanelStyle);
begin
{*
 004AAEFC    push        ebp
 004AAEFD    mov         ebp,esp
 004AAEFF    add         esp,0FFFFFFF8
 004AAF02    mov         byte ptr [ebp-5],dl
 004AAF05    mov         dword ptr [ebp-4],eax
 004AAF08    mov         eax,dword ptr [ebp-4]
 004AAF0B    mov         al,byte ptr [eax+18];TStatusPanel.Style:TStatusPanelStyle
 004AAF0E    cmp         al,byte ptr [ebp-5]
>004AAF11    je          004AAF26
 004AAF13    mov         al,byte ptr [ebp-5]
 004AAF16    mov         edx,dword ptr [ebp-4]
 004AAF19    mov         byte ptr [edx+18],al;TStatusPanel.Style:TStatusPanelStyle
 004AAF1C    xor         edx,edx
 004AAF1E    mov         eax,dword ptr [ebp-4]
 004AAF21    call        0047962C
 004AAF26    pop         ecx
 004AAF27    pop         ecx
 004AAF28    pop         ebp
 004AAF29    ret
*}
end;

//004AAF2C
procedure TStatusPanel.SetText(Value:String);
begin
{*
 004AAF2C    push        ebp
 004AAF2D    mov         ebp,esp
 004AAF2F    add         esp,0FFFFFFF8
 004AAF32    mov         dword ptr [ebp-8],edx
 004AAF35    mov         dword ptr [ebp-4],eax
 004AAF38    mov         eax,dword ptr [ebp-4]
 004AAF3B    mov         eax,dword ptr [eax+0C];TStatusPanel.Text:String
 004AAF3E    mov         edx,dword ptr [ebp-8]
 004AAF41    call        @LStrCmp
>004AAF46    je          004AAF60
 004AAF48    mov         eax,dword ptr [ebp-4]
 004AAF4B    add         eax,0C;TStatusPanel.Text:String
 004AAF4E    mov         edx,dword ptr [ebp-8]
 004AAF51    call        @LStrAsg
 004AAF56    xor         edx,edx
 004AAF58    mov         eax,dword ptr [ebp-4]
 004AAF5B    call        0047962C
 004AAF60    pop         ecx
 004AAF61    pop         ecx
 004AAF62    pop         ebp
 004AAF63    ret
*}
end;

//004AAF64
procedure TStatusPanel.SetWidth(Value:Integer);
begin
{*
 004AAF64    push        ebp
 004AAF65    mov         ebp,esp
 004AAF67    add         esp,0FFFFFFF8
 004AAF6A    mov         dword ptr [ebp-8],edx
 004AAF6D    mov         dword ptr [ebp-4],eax
 004AAF70    mov         eax,dword ptr [ebp-4]
 004AAF73    mov         eax,dword ptr [eax+10];TStatusPanel.Width:Integer
 004AAF76    cmp         eax,dword ptr [ebp-8]
>004AAF79    je          004AAF8E
 004AAF7B    mov         eax,dword ptr [ebp-8]
 004AAF7E    mov         edx,dword ptr [ebp-4]
 004AAF81    mov         dword ptr [edx+10],eax;TStatusPanel.Width:Integer
 004AAF84    mov         dl,1
 004AAF86    mov         eax,dword ptr [ebp-4]
 004AAF89    call        0047962C
 004AAF8E    pop         ecx
 004AAF8F    pop         ecx
 004AAF90    pop         ebp
 004AAF91    ret
*}
end;

//004AAF94
constructor TStatusPanels.Create;
begin
{*
 004AAF94    push        ebp
 004AAF95    mov         ebp,esp
 004AAF97    add         esp,0FFFFFFF4
 004AAF9A    test        dl,dl
>004AAF9C    je          004AAFA6
 004AAF9E    add         esp,0FFFFFFF0
 004AAFA1    call        @ClassCreate
 004AAFA6    mov         dword ptr [ebp-0C],ecx
 004AAFA9    mov         byte ptr [ebp-5],dl
 004AAFAC    mov         dword ptr [ebp-4],eax
 004AAFAF    cmp         dword ptr [ebp-0C],0
>004AAFB3    je          004AAFCE
 004AAFB5    mov         eax,dword ptr [ebp-0C]
 004AAFB8    mov         edx,dword ptr [eax]
 004AAFBA    call        dword ptr [edx+0D4]
 004AAFC0    mov         ecx,eax
 004AAFC2    xor         edx,edx
 004AAFC4    mov         eax,dword ptr [ebp-4]
 004AAFC7    call        TCollection.Create
>004AAFCC    jmp         004AAFDE
 004AAFCE    mov         ecx,dword ptr ds:[4A39A0];TStatusPanel
 004AAFD4    xor         edx,edx
 004AAFD6    mov         eax,dword ptr [ebp-4]
 004AAFD9    call        TCollection.Create
 004AAFDE    mov         eax,dword ptr [ebp-4]
 004AAFE1    mov         edx,dword ptr [ebp-0C]
 004AAFE4    mov         dword ptr [eax+18],edx
 004AAFE7    mov         eax,dword ptr [ebp-4]
 004AAFEA    cmp         byte ptr [ebp-5],0
>004AAFEE    je          004AAFFF
 004AAFF0    call        @AfterConstruction
 004AAFF5    pop         dword ptr fs:[0]
 004AAFFC    add         esp,0C
 004AAFFF    mov         eax,dword ptr [ebp-4]
 004AB002    mov         esp,ebp
 004AB004    pop         ebp
 004AB005    ret
*}
end;

//004AB008
{*function sub_004AB008(?:TStatusPanels):?;
begin
 004AB008    push        ebp
 004AB009    mov         ebp,esp
 004AB00B    add         esp,0FFFFFFF8
 004AB00E    mov         dword ptr [ebp-4],eax
 004AB011    mov         eax,dword ptr [ebp-4]
 004AB014    call        0047992C
 004AB019    mov         dword ptr [ebp-8],eax
 004AB01C    mov         eax,dword ptr [ebp-8]
 004AB01F    pop         ecx
 004AB020    pop         ecx
 004AB021    pop         ebp
 004AB022    ret
end;*}

//004AB024
function TStatusPanels.GetItem(Index:Integer):TStatusPanel;
begin
{*
 004AB024    push        ebp
 004AB025    mov         ebp,esp
 004AB027    add         esp,0FFFFFFF4
 004AB02A    mov         dword ptr [ebp-8],edx
 004AB02D    mov         dword ptr [ebp-4],eax
 004AB030    mov         edx,dword ptr [ebp-8]
 004AB033    mov         eax,dword ptr [ebp-4]
 004AB036    call        00479B7C
 004AB03B    mov         dword ptr [ebp-0C],eax
 004AB03E    mov         eax,dword ptr [ebp-0C]
 004AB041    mov         esp,ebp
 004AB043    pop         ebp
 004AB044    ret
*}
end;

//004AB048
procedure TStatusPanels.sub_00479290;
begin
{*
 004AB048    push        ebp
 004AB049    mov         ebp,esp
 004AB04B    add         esp,0FFFFFFF8
 004AB04E    mov         dword ptr [ebp-4],eax
 004AB051    mov         eax,dword ptr [ebp-4]
 004AB054    mov         eax,dword ptr [eax+18];TStatusPanels.....FStatusBar:TCustomStatusBar
 004AB057    mov         dword ptr [ebp-8],eax
 004AB05A    mov         eax,dword ptr [ebp-8]
 004AB05D    pop         ecx
 004AB05E    pop         ecx
 004AB05F    pop         ebp
 004AB060    ret
*}
end;

//004AB064
{*procedure sub_004AB064(?:?);
begin
 004AB064    push        ebp
 004AB065    mov         ebp,esp
 004AB067    add         esp,0FFFFFFF8
 004AB06A    mov         dword ptr [ebp-8],edx
 004AB06D    mov         dword ptr [ebp-4],eax
 004AB070    cmp         dword ptr [ebp-8],0
>004AB074    je          004AB08F
 004AB076    mov         eax,dword ptr [ebp-8]
 004AB079    call        TCollectionItem.GetIndex
 004AB07E    mov         edx,eax
 004AB080    xor         ecx,ecx
 004AB082    mov         eax,dword ptr [ebp-4]
 004AB085    mov         eax,dword ptr [eax+18];TStatusPanels......FStatusBar:TCustomStatusBar
 004AB088    call        004AB828
>004AB08D    jmp         004AB09E
 004AB08F    xor         ecx,ecx
 004AB091    mov         dl,1
 004AB093    mov         eax,dword ptr [ebp-4]
 004AB096    mov         eax,dword ptr [eax+18];TStatusPanels.......FStatusBar:TCustomStatusBar
 004AB099    call        004AB9E0
 004AB09E    pop         ecx
 004AB09F    pop         ecx
 004AB0A0    pop         ebp
 004AB0A1    ret
end;*}

//004AB0A4
constructor TCustomStatusBar.Create(AOwner:TComponent);
begin
{*
 004AB0A4    push        ebp
 004AB0A5    mov         ebp,esp
 004AB0A7    add         esp,0FFFFFFF4
 004AB0AA    test        dl,dl
>004AB0AC    je          004AB0B6
 004AB0AE    add         esp,0FFFFFFF0
 004AB0B1    call        @ClassCreate
 004AB0B6    mov         dword ptr [ebp-0C],ecx
 004AB0B9    mov         byte ptr [ebp-5],dl
 004AB0BC    mov         dword ptr [ebp-4],eax
 004AB0BF    mov         ecx,dword ptr [ebp-0C]
 004AB0C2    xor         edx,edx
 004AB0C4    mov         eax,dword ptr [ebp-4]
 004AB0C7    call        TWinControl.Create
 004AB0CC    mov         eax,dword ptr [ebp-4]
 004AB0CF    mov         edx,dword ptr ds:[4AB17C];0xCA gvar_004AB17C
 004AB0D5    mov         dword ptr [eax+50],edx;TCustomStatusBar.FControlStyle:TControlStyle
 004AB0D8    mov         edx,0FF00000F
 004AB0DD    mov         eax,dword ptr [ebp-4]
 004AB0E0    call        TPanel.SetColor
 004AB0E5    mov         edx,13
 004AB0EA    mov         eax,dword ptr [ebp-4]
 004AB0ED    call        TControl.SetHeight
 004AB0F2    mov         dl,2
 004AB0F4    mov         eax,dword ptr [ebp-4]
 004AB0F7    call        TImage.SetAlign
 004AB0FC    mov         eax,dword ptr [ebp-4]
 004AB0FF    mov         edx,dword ptr [eax]
 004AB101    call        dword ptr [edx+0CC];TCustomStatusBar.sub_004AC03C
 004AB107    mov         edx,dword ptr [ebp-4]
 004AB10A    mov         dword ptr [edx+208],eax;TCustomStatusBar.FPanels:TStatusPanels
 004AB110    mov         dl,1
 004AB112    mov         eax,[004C4BA4];TControlCanvas
 004AB117    call        TControlCanvas.Create;TControlCanvas.Create
 004AB11C    mov         edx,dword ptr [ebp-4]
 004AB11F    mov         dword ptr [edx+20C],eax;TCustomStatusBar.FCanvas:TCanvas
 004AB125    mov         eax,dword ptr [ebp-4]
 004AB128    mov         eax,dword ptr [eax+20C];TCustomStatusBar.FCanvas:TCanvas
 004AB12E    mov         edx,dword ptr [ebp-4]
 004AB131    call        004C931C
 004AB136    mov         eax,dword ptr [ebp-4]
 004AB139    mov         byte ptr [eax+215],1;TCustomStatusBar.FSizeGrip:Boolean
 004AB140    xor         edx,edx
 004AB142    mov         eax,dword ptr [ebp-4]
 004AB145    call        TPanel.SetParentFont
 004AB14A    mov         eax,dword ptr [ebp-4]
 004AB14D    mov         byte ptr [eax+217],1;TCustomStatusBar.FUseSystemFont:Boolean
 004AB154    mov         eax,dword ptr [ebp-4]
 004AB157    call        004AB7EC
 004AB15C    mov         eax,dword ptr [ebp-4]
 004AB15F    cmp         byte ptr [ebp-5],0
>004AB163    je          004AB174
 004AB165    call        @AfterConstruction
 004AB16A    pop         dword ptr fs:[0]
 004AB171    add         esp,0C
 004AB174    mov         eax,dword ptr [ebp-4]
 004AB177    mov         esp,ebp
 004AB179    pop         ebp
 004AB17A    ret
*}
end;

//004AB180
destructor TCustomStatusBar.Destroy;
begin
{*
 004AB180    push        ebp
 004AB181    mov         ebp,esp
 004AB183    add         esp,0FFFFFFF8
 004AB186    call        @BeforeDestruction
 004AB18B    mov         byte ptr [ebp-5],dl
 004AB18E    mov         dword ptr [ebp-4],eax
 004AB191    mov         eax,dword ptr [ebp-4]
 004AB194    mov         eax,dword ptr [eax+20C];TCustomStatusBar.FCanvas:TCanvas
 004AB19A    call        TObject.Free
 004AB19F    mov         eax,dword ptr [ebp-4]
 004AB1A2    mov         eax,dword ptr [eax+208];TCustomStatusBar.FPanels:TStatusPanels
 004AB1A8    call        TObject.Free
 004AB1AD    mov         dl,byte ptr [ebp-5]
 004AB1B0    and         dl,0FC
 004AB1B3    mov         eax,dword ptr [ebp-4]
 004AB1B6    call        TWinControl.Destroy
 004AB1BB    cmp         byte ptr [ebp-5],0
>004AB1BF    jle         004AB1C9
 004AB1C1    mov         eax,dword ptr [ebp-4]
 004AB1C4    call        @ClassDestroy
 004AB1C9    pop         ecx
 004AB1CA    pop         ecx
 004AB1CB    pop         ebp
 004AB1CC    ret
*}
end;

//004AB1D0
{*procedure sub_004AB1D0(?:?);
begin
 004AB1D0    push        ebp
 004AB1D1    mov         ebp,esp
 004AB1D3    add         esp,0FFFFFFF8
 004AB1D6    mov         dword ptr [ebp-8],edx
 004AB1D9    mov         dword ptr [ebp-4],eax
 004AB1DC    mov         eax,4
 004AB1E1    call        004A7B30
 004AB1E6    mov         edx,dword ptr [ebp-8]
 004AB1E9    mov         eax,dword ptr [ebp-4]
 004AB1EC    call        004CF814
 004AB1F1    mov         ecx,4AB25C
 004AB1F6    mov         edx,dword ptr [ebp-8]
 004AB1F9    mov         eax,dword ptr [ebp-4]
 004AB1FC    call        004CF6EC
 004AB201    mov         eax,dword ptr [ebp-4]
 004AB204    cmp         byte ptr [eax+215],0;TCustomStatusBar.FSizeGrip:Boolean
>004AB20B    je          004AB219
 004AB20D    mov         eax,dword ptr [ebp-4]
 004AB210    cmp         byte ptr [eax+216],0;TCustomStatusBar.FSizeGripValid:Boolean
>004AB217    jne         004AB21D
 004AB219    xor         eax,eax
>004AB21B    jmp         004AB21F
 004AB21D    mov         al,1
 004AB21F    and         eax,7F
 004AB222    mov         eax,dword ptr [eax*4+541404]
 004AB229    mov         edx,dword ptr [ebp-8]
 004AB22C    or          dword ptr [edx+4],eax
 004AB22F    call        ThemeServices
 004AB234    call        TThemeServices.GetThemesEnabled
 004AB239    test        al,al
>004AB23B    je          004AB251
 004AB23D    mov         eax,dword ptr [ebp-8]
 004AB240    mov         eax,dword ptr [eax+24]
 004AB243    or          eax,2
 004AB246    or          eax,1
 004AB249    mov         edx,dword ptr [ebp-8]
 004AB24C    mov         dword ptr [edx+24],eax
>004AB24F    jmp         004AB258
 004AB251    mov         eax,dword ptr [ebp-8]
 004AB254    and         dword ptr [eax+24],0FFFFFFFC
 004AB258    pop         ecx
 004AB259    pop         ecx
 004AB25A    pop         ebp
 004AB25B    ret
end;*}

//004AB270
procedure TCustomStatusBar.CreateWnd;
begin
{*
 004AB270    push        ebp
 004AB271    mov         ebp,esp
 004AB273    push        ecx
 004AB274    mov         dword ptr [ebp-4],eax
 004AB277    xor         edx,edx
 004AB279    mov         eax,dword ptr [ebp-4]
 004AB27C    call        004ABF3C
 004AB281    mov         eax,dword ptr [ebp-4]
 004AB284    call        TWinControl.CreateWnd
 004AB289    mov         eax,dword ptr [ebp-4]
 004AB28C    mov         eax,dword ptr [eax+70];TCustomStatusBar.FColor:TColor
 004AB28F    call        00486830
 004AB294    push        eax
 004AB295    push        0
 004AB297    push        2001
 004AB29C    mov         eax,dword ptr [ebp-4]
 004AB29F    call        TWinControl.GetHandle
 004AB2A4    push        eax
 004AB2A5    call        user32.SendMessageA
 004AB2AA    xor         ecx,ecx
 004AB2AC    mov         dl,1
 004AB2AE    mov         eax,dword ptr [ebp-4]
 004AB2B1    call        004AB9E0
 004AB2B6    mov         eax,dword ptr [ebp-4]
 004AB2B9    cmp         dword ptr [eax+210],0;TCustomStatusBar.FSimpleText:String
>004AB2C0    je          004AB2E9
 004AB2C2    mov         eax,dword ptr [ebp-4]
 004AB2C5    mov         eax,dword ptr [eax+210];TCustomStatusBar.FSimpleText:String
 004AB2CB    call        @LStrToPChar
 004AB2D0    push        eax
 004AB2D1    push        0FF
 004AB2D6    push        401
 004AB2DB    mov         eax,dword ptr [ebp-4]
 004AB2DE    call        TWinControl.GetHandle
 004AB2E3    push        eax
 004AB2E4    call        user32.SendMessageA
 004AB2E9    mov         eax,dword ptr [ebp-4]
 004AB2EC    cmp         byte ptr [eax+214],0;TCustomStatusBar.FSimplePanel:Boolean
>004AB2F3    je          004AB30C
 004AB2F5    push        0
 004AB2F7    push        1
 004AB2F9    push        409
 004AB2FE    mov         eax,dword ptr [ebp-4]
 004AB301    call        TWinControl.GetHandle
 004AB306    push        eax
 004AB307    call        user32.SendMessageA
 004AB30C    pop         ecx
 004AB30D    pop         ebp
 004AB30E    ret
*}
end;

//004AB310
{*function sub_004AB310:?;
begin
 004AB310    push        ebp
 004AB311    mov         ebp,esp
 004AB313    add         esp,0FFFFFFF8
 004AB316    push        ebx
 004AB317    mov         dword ptr [ebp-4],eax
 004AB31A    mov         eax,dword ptr [ebp-4]
 004AB31D    cmp         word ptr [eax+22A],0;TCustomStatusBar.?f22A:word
>004AB325    je          004AB33F
 004AB327    mov         ebx,dword ptr [ebp-4]
 004AB32A    mov         edx,dword ptr [ebp-4]
 004AB32D    mov         eax,dword ptr [ebx+22C];TCustomStatusBar.?f22C:dword
 004AB333    call        dword ptr [ebx+228];TCustomStatusBar.FOnHint
 004AB339    mov         byte ptr [ebp-5],1
>004AB33D    jmp         004AB343
 004AB33F    mov         byte ptr [ebp-5],0
 004AB343    mov         al,byte ptr [ebp-5]
 004AB346    pop         ebx
 004AB347    pop         ecx
 004AB348    pop         ecx
 004AB349    pop         ebp
 004AB34A    ret
end;*}

//004AB34C
{*procedure TCustomStatusBar.sub_004AB34C(?:?; ?:?);
begin
 004AB34C    push        ebp
 004AB34D    mov         ebp,esp
 004AB34F    add         esp,0FFFFFFF4
 004AB352    push        ebx
 004AB353    mov         dword ptr [ebp-0C],ecx
 004AB356    mov         dword ptr [ebp-8],edx
 004AB359    mov         dword ptr [ebp-4],eax
 004AB35C    mov         eax,dword ptr [ebp-4]
 004AB35F    cmp         word ptr [eax+222],0;TCustomStatusBar.?f222:word
>004AB367    je          004AB384
 004AB369    mov         eax,dword ptr [ebp-0C]
 004AB36C    push        eax
 004AB36D    mov         ebx,dword ptr [ebp-4]
 004AB370    mov         ecx,dword ptr [ebp-8]
 004AB373    mov         edx,dword ptr [ebp-4]
 004AB376    mov         eax,dword ptr [ebx+224];TCustomStatusBar.?f224:dword
 004AB37C    call        dword ptr [ebx+220];TCustomStatusBar.FOnDrawPanel
>004AB382    jmp         004AB395
 004AB384    mov         edx,dword ptr [ebp-0C]
 004AB387    mov         eax,dword ptr [ebp-4]
 004AB38A    mov         eax,dword ptr [eax+20C];TCustomStatusBar.FCanvas:TCanvas
 004AB390    call        TCanvas.FillRect
 004AB395    pop         ebx
 004AB396    mov         esp,ebp
 004AB398    pop         ebp
 004AB399    ret
end;*}

//004AB39C
procedure TStatusBar.SetPanels(Value:TStatusPanels);
begin
{*
 004AB39C    push        ebp
 004AB39D    mov         ebp,esp
 004AB39F    add         esp,0FFFFFFF8
 004AB3A2    mov         dword ptr [ebp-8],edx
 004AB3A5    mov         dword ptr [ebp-4],eax
 004AB3A8    mov         edx,dword ptr [ebp-8]
 004AB3AB    mov         eax,dword ptr [ebp-4]
 004AB3AE    mov         eax,dword ptr [eax+208];TStatusBar.FPanels:TStatusPanels
 004AB3B4    mov         ecx,dword ptr [eax]
 004AB3B6    call        dword ptr [ecx+8];TStatusPanels.sub_00479958
 004AB3B9    pop         ecx
 004AB3BA    pop         ecx
 004AB3BB    pop         ebp
 004AB3BC    ret
*}
end;

//004AB3C0
procedure TStatusBar.SetSimplePanel(Value:Boolean);
begin
{*
 004AB3C0    push        ebp
 004AB3C1    mov         ebp,esp
 004AB3C3    add         esp,0FFFFFFF8
 004AB3C6    mov         byte ptr [ebp-5],dl
 004AB3C9    mov         dword ptr [ebp-4],eax
 004AB3CC    mov         eax,dword ptr [ebp-4]
 004AB3CF    mov         al,byte ptr [eax+214];TStatusBar.FSimplePanel:Boolean
 004AB3D5    cmp         al,byte ptr [ebp-5]
>004AB3D8    je          004AB412
 004AB3DA    mov         al,byte ptr [ebp-5]
 004AB3DD    mov         edx,dword ptr [ebp-4]
 004AB3E0    mov         byte ptr [edx+214],al;TStatusBar.FSimplePanel:Boolean
 004AB3E6    mov         eax,dword ptr [ebp-4]
 004AB3E9    call        TWinControl.HandleAllocated
 004AB3EE    test        al,al
>004AB3F0    je          004AB412
 004AB3F2    push        0
 004AB3F4    mov         eax,dword ptr [ebp-4]
 004AB3F7    movzx       eax,byte ptr [eax+214];TStatusBar.FSimplePanel:Boolean
 004AB3FE    push        eax
 004AB3FF    push        409
 004AB404    mov         eax,dword ptr [ebp-4]
 004AB407    call        TWinControl.GetHandle
 004AB40C    push        eax
 004AB40D    call        user32.SendMessageA
 004AB412    pop         ecx
 004AB413    pop         ecx
 004AB414    pop         ebp
 004AB415    ret
*}
end;

//004AB418
{*procedure sub_004AB418(?:TCustomStatusBar; ?:AnsiString; ?:?; ?:?);
begin
 004AB418    push        ebp
 004AB419    mov         ebp,esp
 004AB41B    add         esp,0FFFFFFF4
 004AB41E    mov         byte ptr [ebp-9],cl
 004AB421    mov         dword ptr [ebp-8],edx
 004AB424    mov         dword ptr [ebp-4],eax
 004AB427    cmp         byte ptr [ebp+8],0
>004AB42B    je          004AB435
 004AB42D    lea         eax,[ebp-9]
 004AB430    call        004C6E58
 004AB435    mov         al,byte ptr [ebp-9]
 004AB438    dec         al
>004AB43A    je          004AB454
 004AB43C    dec         al
>004AB43E    jne         004AB466
 004AB440    mov         edx,dword ptr [ebp-8]
 004AB443    mov         ecx,1
 004AB448    mov         eax,4AB474;#9
 004AB44D    call        @LStrInsert
>004AB452    jmp         004AB466
 004AB454    mov         edx,dword ptr [ebp-8]
 004AB457    mov         ecx,1
 004AB45C    mov         eax,4AB480;#9+#9
 004AB461    call        @LStrInsert
 004AB466    mov         esp,ebp
 004AB468    pop         ebp
 004AB469    ret         4
end;*}

//004AB484
procedure sub_004AB484(?:TCustomStatusBar);
begin
{*
 004AB484    push        ebp
 004AB485    mov         ebp,esp
 004AB487    push        ecx
 004AB488    push        esi
 004AB489    mov         dword ptr [ebp-4],eax
 004AB48C    mov         eax,dword ptr [ebp-4]
 004AB48F    mov         si,0FFC8
 004AB493    call        @CallDynaInst
 004AB498    push        eax
 004AB499    mov         eax,dword ptr [ebp-4]
 004AB49C    lea         edx,[eax+210]
 004AB4A2    xor         ecx,ecx
 004AB4A4    mov         eax,dword ptr [ebp-4]
 004AB4A7    call        004AB418
 004AB4AC    mov         eax,dword ptr [ebp-4]
 004AB4AF    call        TWinControl.HandleAllocated
 004AB4B4    test        al,al
>004AB4B6    je          004AB4F2
 004AB4B8    mov         eax,dword ptr [ebp-4]
 004AB4BB    mov         eax,dword ptr [eax+210]
 004AB4C1    call        @LStrToPChar
 004AB4C6    push        eax
 004AB4C7    mov         eax,dword ptr [ebp-4]
 004AB4CA    call        004CB90C
 004AB4CF    and         eax,7F
 004AB4D2    mov         eax,dword ptr [eax*4+54140C]
 004AB4D9    or          eax,0FF
 004AB4DE    push        eax
 004AB4DF    push        401
 004AB4E4    mov         eax,dword ptr [ebp-4]
 004AB4E7    call        TWinControl.GetHandle
 004AB4EC    push        eax
 004AB4ED    call        user32.SendMessageA
 004AB4F2    pop         esi
 004AB4F3    pop         ecx
 004AB4F4    pop         ebp
 004AB4F5    ret
*}
end;

//004AB4F8
procedure TStatusBar.SetSimpleText(Value:String);
begin
{*
 004AB4F8    push        ebp
 004AB4F9    mov         ebp,esp
 004AB4FB    add         esp,0FFFFFFF8
 004AB4FE    mov         dword ptr [ebp-8],edx
 004AB501    mov         dword ptr [ebp-4],eax
 004AB504    mov         eax,dword ptr [ebp-4]
 004AB507    mov         eax,dword ptr [eax+210];TStatusBar.FSimpleText:String
 004AB50D    mov         edx,dword ptr [ebp-8]
 004AB510    call        @LStrCmp
>004AB515    je          004AB52F
 004AB517    mov         eax,dword ptr [ebp-4]
 004AB51A    add         eax,210;TStatusBar.FSimpleText:String
 004AB51F    mov         edx,dword ptr [ebp-8]
 004AB522    call        @LStrAsg
 004AB527    mov         eax,dword ptr [ebp-4]
 004AB52A    call        004AB484
 004AB52F    pop         ecx
 004AB530    pop         ecx
 004AB531    pop         ebp
 004AB532    ret
*}
end;

//004AB534
procedure TCustomStatusBar.CMBiDiModeChanged(Message:TMessage);
begin
{*
 004AB534    push        ebp
 004AB535    mov         ebp,esp
 004AB537    add         esp,0FFFFFFF0
 004AB53A    mov         dword ptr [ebp-8],edx
 004AB53D    mov         dword ptr [ebp-4],eax
 004AB540    mov         edx,dword ptr [ebp-8]
 004AB543    mov         eax,dword ptr [ebp-4]
 004AB546    call        TWinControl.CMBiDiModeChanged
 004AB54B    mov         eax,dword ptr [ebp-4]
 004AB54E    call        TWinControl.HandleAllocated
 004AB553    test        al,al
>004AB555    je          004AB5CC
 004AB557    mov         eax,dword ptr [ebp-4]
 004AB55A    cmp         byte ptr [eax+214],0;TCustomStatusBar.FSimplePanel:Boolean
>004AB561    jne         004AB5C4
 004AB563    mov         eax,dword ptr [ebp-4]
 004AB566    mov         eax,dword ptr [eax+208];TCustomStatusBar.FPanels:TStatusPanels
 004AB56C    call        00479B60
 004AB571    dec         eax
 004AB572    test        eax,eax
>004AB574    jl          004AB5B6
 004AB576    inc         eax
 004AB577    mov         dword ptr [ebp-10],eax
 004AB57A    mov         dword ptr [ebp-0C],0
 004AB581    mov         edx,dword ptr [ebp-0C]
 004AB584    mov         eax,dword ptr [ebp-4]
 004AB587    mov         eax,dword ptr [eax+208];TCustomStatusBar.FPanels:TStatusPanels
 004AB58D    call        TStatusPanels.GetItem
 004AB592    cmp         byte ptr [eax+17],0;TStatusPanel.ParentBiDiMode:Boolean
>004AB596    je          004AB5AE
 004AB598    mov         edx,dword ptr [ebp-0C]
 004AB59B    mov         eax,dword ptr [ebp-4]
 004AB59E    mov         eax,dword ptr [eax+208];TCustomStatusBar.FPanels:TStatusPanels
 004AB5A4    call        TStatusPanels.GetItem
 004AB5A9    call        004AADC0
 004AB5AE    inc         dword ptr [ebp-0C]
 004AB5B1    dec         dword ptr [ebp-10]
>004AB5B4    jne         004AB581
 004AB5B6    mov         cl,1
 004AB5B8    mov         dl,1
 004AB5BA    mov         eax,dword ptr [ebp-4]
 004AB5BD    call        004AB9E0
>004AB5C2    jmp         004AB5CC
 004AB5C4    mov         eax,dword ptr [ebp-4]
 004AB5C7    call        004AB484
 004AB5CC    mov         esp,ebp
 004AB5CE    pop         ebp
 004AB5CF    ret
*}
end;

//004AB5D0
{*procedure TCustomStatusBar.sub_004AB5D0(?:?);
begin
 004AB5D0    push        ebp
 004AB5D1    mov         ebp,esp
 004AB5D3    add         esp,0FFFFFFE0
 004AB5D6    mov         byte ptr [ebp-1D],dl
 004AB5D9    mov         dword ptr [ebp-4],eax
 004AB5DC    mov         eax,dword ptr [ebp-4]
 004AB5DF    call        TWinControl.HandleAllocated
 004AB5E4    test        al,al
>004AB5E6    je          004AB7B1
 004AB5EC    mov         eax,dword ptr [ebp-4]
 004AB5EF    cmp         byte ptr [eax+214],0;TCustomStatusBar.FSimplePanel:Boolean
>004AB5F6    jne         004AB7B1
 004AB5FC    mov         eax,dword ptr [ebp-4]
 004AB5FF    mov         eax,dword ptr [eax+208];TCustomStatusBar.FPanels:TStatusPanels
 004AB605    call        00479B60
 004AB60A    test        eax,eax
>004AB60C    jle         004AB7B1
 004AB612    mov         eax,dword ptr [ebp-4]
 004AB615    call        TControl.GetClientWidth
 004AB61A    mov         dword ptr [ebp-10],eax
 004AB61D    mov         eax,dword ptr [ebp-4]
 004AB620    mov         eax,dword ptr [eax+208];TCustomStatusBar.FPanels:TStatusPanels
 004AB626    xor         edx,edx
 004AB628    call        TStatusPanels.GetItem
 004AB62D    mov         eax,dword ptr [eax+10];TStatusPanel.Width:Integer
 004AB630    mov         dword ptr [ebp-0C],eax
 004AB633    mov         eax,dword ptr [ebp-4]
 004AB636    mov         eax,dword ptr [eax+208];TCustomStatusBar.FPanels:TStatusPanels
 004AB63C    call        00479B60
 004AB641    sub         eax,2
 004AB644    test        eax,eax
>004AB646    jl          004AB672
 004AB648    inc         eax
 004AB649    mov         dword ptr [ebp-18],eax
 004AB64C    mov         dword ptr [ebp-8],0
 004AB653    mov         eax,dword ptr [ebp-4]
 004AB656    mov         eax,dword ptr [eax+208];TCustomStatusBar.FPanels:TStatusPanels
 004AB65C    mov         edx,dword ptr [ebp-8]
 004AB65F    call        TStatusPanels.GetItem
 004AB664    mov         eax,dword ptr [eax+10];TStatusPanel.Width:Integer
 004AB667    sub         dword ptr [ebp-10],eax
 004AB66A    inc         dword ptr [ebp-8]
 004AB66D    dec         dword ptr [ebp-18]
>004AB670    jne         004AB653
 004AB672    mov         ecx,dword ptr [ebp-4]
 004AB675    mov         dl,1
 004AB677    mov         eax,[004A3B44];TStatusPanels
 004AB67C    call        TStatusPanels.Create;TStatusPanels.Create
 004AB681    mov         dword ptr [ebp-14],eax
 004AB684    xor         eax,eax
 004AB686    push        ebp
 004AB687    push        4AB74E
 004AB68C    push        dword ptr fs:[eax]
 004AB68F    mov         dword ptr fs:[eax],esp
 004AB692    mov         eax,dword ptr [ebp-4]
 004AB695    mov         eax,dword ptr [eax+208];TCustomStatusBar.FPanels:TStatusPanels
 004AB69B    call        00479B60
 004AB6A0    dec         eax
 004AB6A1    test        eax,eax
>004AB6A3    jl          004AB6DE
 004AB6A5    inc         eax
 004AB6A6    mov         dword ptr [ebp-18],eax
 004AB6A9    mov         dword ptr [ebp-8],0
 004AB6B0    mov         eax,dword ptr [ebp-14]
 004AB6B3    call        004AB008
 004AB6B8    mov         dword ptr [ebp-1C],eax
 004AB6BB    mov         eax,dword ptr [ebp-4]
 004AB6BE    mov         eax,dword ptr [eax+208];TCustomStatusBar.FPanels:TStatusPanels
 004AB6C4    mov         edx,dword ptr [ebp-8]
 004AB6C7    call        TStatusPanels.GetItem
 004AB6CC    mov         edx,eax
 004AB6CE    mov         eax,dword ptr [ebp-1C]
 004AB6D1    mov         ecx,dword ptr [eax]
 004AB6D3    call        dword ptr [ecx+8]
 004AB6D6    inc         dword ptr [ebp-8]
 004AB6D9    dec         dword ptr [ebp-18]
>004AB6DC    jne         004AB6B0
 004AB6DE    mov         eax,dword ptr [ebp-4]
 004AB6E1    mov         eax,dword ptr [eax+208];TCustomStatusBar.FPanels:TStatusPanels
 004AB6E7    call        00479B60
 004AB6EC    dec         eax
 004AB6ED    test        eax,eax
>004AB6EF    jl          004AB738
 004AB6F1    inc         eax
 004AB6F2    mov         dword ptr [ebp-18],eax
 004AB6F5    mov         dword ptr [ebp-8],0
 004AB6FC    mov         eax,dword ptr [ebp-4]
 004AB6FF    mov         eax,dword ptr [eax+208];TCustomStatusBar.FPanels:TStatusPanels
 004AB705    call        00479B60
 004AB70A    mov         edx,eax
 004AB70C    sub         edx,dword ptr [ebp-8]
 004AB70F    dec         edx
 004AB710    mov         eax,dword ptr [ebp-14]
 004AB713    call        TStatusPanels.GetItem
 004AB718    push        eax
 004AB719    mov         eax,dword ptr [ebp-4]
 004AB71C    mov         eax,dword ptr [eax+208];TCustomStatusBar.FPanels:TStatusPanels
 004AB722    mov         edx,dword ptr [ebp-8]
 004AB725    call        TStatusPanels.GetItem
 004AB72A    pop         edx
 004AB72B    mov         ecx,dword ptr [eax]
 004AB72D    call        dword ptr [ecx+8];TStatusPanel.sub_004AACC8
 004AB730    inc         dword ptr [ebp-8]
 004AB733    dec         dword ptr [ebp-18]
>004AB736    jne         004AB6FC
 004AB738    xor         eax,eax
 004AB73A    pop         edx
 004AB73B    pop         ecx
 004AB73C    pop         ecx
 004AB73D    mov         dword ptr fs:[eax],edx
 004AB740    push        4AB755
 004AB745    mov         eax,dword ptr [ebp-14]
 004AB748    call        TObject.Free
 004AB74D    ret
>004AB74E    jmp         @HandleFinally
>004AB753    jmp         004AB745
 004AB755    mov         eax,dword ptr [ebp-4]
 004AB758    mov         eax,dword ptr [eax+208];TCustomStatusBar.FPanels:TStatusPanels
 004AB75E    call        00479B60
 004AB763    dec         eax
>004AB764    jle         004AB7A5
 004AB766    mov         eax,dword ptr [ebp-4]
 004AB769    mov         eax,dword ptr [eax+208];TCustomStatusBar.FPanels:TStatusPanels
 004AB76F    call        00479B60
 004AB774    mov         edx,eax
 004AB776    dec         edx
 004AB777    mov         eax,dword ptr [ebp-4]
 004AB77A    mov         eax,dword ptr [eax+208];TCustomStatusBar.FPanels:TStatusPanels
 004AB780    call        TStatusPanels.GetItem
 004AB785    mov         edx,dword ptr [ebp-0C]
 004AB788    call        TStatusPanel.SetWidth
 004AB78D    mov         eax,dword ptr [ebp-4]
 004AB790    mov         eax,dword ptr [eax+208];TCustomStatusBar.FPanels:TStatusPanels
 004AB796    xor         edx,edx
 004AB798    call        TStatusPanels.GetItem
 004AB79D    mov         edx,dword ptr [ebp-10]
 004AB7A0    call        TStatusPanel.SetWidth
 004AB7A5    mov         cl,1
 004AB7A7    mov         dl,1
 004AB7A9    mov         eax,dword ptr [ebp-4]
 004AB7AC    call        004AB9E0
 004AB7B1    mov         esp,ebp
 004AB7B3    pop         ebp
 004AB7B4    ret
end;*}

//004AB7B8
procedure TStatusBar.SetSizeGrip(Value:Boolean);
begin
{*
 004AB7B8    push        ebp
 004AB7B9    mov         ebp,esp
 004AB7BB    add         esp,0FFFFFFF8
 004AB7BE    mov         byte ptr [ebp-5],dl
 004AB7C1    mov         dword ptr [ebp-4],eax
 004AB7C4    mov         eax,dword ptr [ebp-4]
 004AB7C7    mov         al,byte ptr [eax+215];TStatusBar.FSizeGrip:Boolean
 004AB7CD    cmp         al,byte ptr [ebp-5]
>004AB7D0    je          004AB7E8
 004AB7D2    mov         al,byte ptr [ebp-5]
 004AB7D5    mov         edx,dword ptr [ebp-4]
 004AB7D8    mov         byte ptr [edx+215],al;TStatusBar.FSizeGrip:Boolean
 004AB7DE    mov         dl,1
 004AB7E0    mov         eax,dword ptr [ebp-4]
 004AB7E3    call        004ABF3C
 004AB7E8    pop         ecx
 004AB7E9    pop         ecx
 004AB7EA    pop         ebp
 004AB7EB    ret
*}
end;

//004AB7EC
procedure sub_004AB7EC(?:TCustomStatusBar);
begin
{*
 004AB7EC    push        ebp
 004AB7ED    mov         ebp,esp
 004AB7EF    push        ecx
 004AB7F0    mov         dword ptr [ebp-4],eax
 004AB7F3    mov         eax,dword ptr [ebp-4]
 004AB7F6    cmp         byte ptr [eax+217],0;TCustomStatusBar.FUseSystemFont:Boolean
>004AB7FD    je          004AB824
 004AB7FF    mov         eax,[0055B6D8];^Screen:TScreen
 004AB804    mov         eax,dword ptr [eax]
 004AB806    mov         edx,dword ptr [eax+80];TScreen.FHintFont:TFont
 004AB80C    mov         eax,dword ptr [ebp-4]
 004AB80F    call        TPanel.SetFont
 004AB814    mov         edx,0FF000012
 004AB819    mov         eax,dword ptr [ebp-4]
 004AB81C    mov         eax,dword ptr [eax+68];TCustomStatusBar.FFont:TFont
 004AB81F    call        TFont.SetColor
 004AB824    pop         ecx
 004AB825    pop         ebp
 004AB826    ret
*}
end;

//004AB828
{*procedure sub_004AB828(?:TCustomStatusBar; ?:Integer; ?:?);
begin
 004AB828    push        ebp
 004AB829    mov         ebp,esp
 004AB82B    add         esp,0FFFFFFD8
 004AB82E    push        ebx
 004AB82F    xor         ebx,ebx
 004AB831    mov         dword ptr [ebp-14],ebx
 004AB834    mov         byte ptr [ebp-9],cl
 004AB837    mov         dword ptr [ebp-8],edx
 004AB83A    mov         dword ptr [ebp-4],eax
 004AB83D    xor         eax,eax
 004AB83F    push        ebp
 004AB840    push        4AB9B9
 004AB845    push        dword ptr fs:[eax]
 004AB848    mov         dword ptr fs:[eax],esp
 004AB84B    mov         eax,dword ptr [ebp-4]
 004AB84E    call        TWinControl.HandleAllocated
 004AB853    test        al,al
>004AB855    je          004AB9A3
 004AB85B    mov         edx,dword ptr [ebp-8]
 004AB85E    mov         eax,dword ptr [ebp-4]
 004AB861    mov         eax,dword ptr [eax+208];TCustomStatusBar.FPanels:TStatusPanels
 004AB867    call        TStatusPanels.GetItem
 004AB86C    mov         dword ptr [ebp-18],eax
 004AB86F    cmp         byte ptr [ebp-9],0
>004AB873    jne         004AB8B5
 004AB875    mov         eax,dword ptr [ebp-18]
 004AB878    mov         byte ptr [eax+19],1;TStatusPanel.FUpdateNeeded:Boolean
 004AB87C    lea         eax,[ebp-28]
 004AB87F    push        eax
 004AB880    mov         eax,dword ptr [ebp-18]
 004AB883    call        TCollectionItem.GetIndex
 004AB888    push        eax
 004AB889    push        40A
 004AB88E    mov         eax,dword ptr [ebp-4]
 004AB891    call        TWinControl.GetHandle
 004AB896    push        eax
 004AB897    call        user32.SendMessageA
 004AB89C    push        0FF
 004AB89E    lea         eax,[ebp-28]
 004AB8A1    push        eax
 004AB8A2    mov         eax,dword ptr [ebp-4]
 004AB8A5    call        TWinControl.GetHandle
 004AB8AA    push        eax
 004AB8AB    call        user32.InvalidateRect
>004AB8B0    jmp         004AB9A3
 004AB8B5    mov         eax,dword ptr [ebp-18]
 004AB8B8    cmp         byte ptr [eax+19],0;TStatusPanel.FUpdateNeeded:Boolean
>004AB8BC    je          004AB9A3
 004AB8C2    mov         eax,dword ptr [ebp-18]
 004AB8C5    mov         byte ptr [eax+19],0;TStatusPanel.FUpdateNeeded:Boolean
 004AB8C9    xor         eax,eax
 004AB8CB    mov         dword ptr [ebp-10],eax
 004AB8CE    mov         eax,dword ptr [ebp-18]
 004AB8D1    mov         al,byte ptr [eax+15];TStatusPanel.Bevel:TStatusPanelBevel
 004AB8D4    sub         al,1
>004AB8D6    jb          004AB8DE
 004AB8D8    dec         al
>004AB8DA    je          004AB8E7
>004AB8DC    jmp         004AB8EE
 004AB8DE    mov         dword ptr [ebp-10],100
>004AB8E5    jmp         004AB8EE
 004AB8E7    mov         dword ptr [ebp-10],200
 004AB8EE    mov         eax,dword ptr [ebp-18]
 004AB8F1    call        004AAE08
 004AB8F6    test        al,al
>004AB8F8    je          004AB901
 004AB8FA    or          dword ptr [ebp-10],400
 004AB901    mov         eax,dword ptr [ebp-18]
 004AB904    cmp         byte ptr [eax+18],1;TStatusPanel.Style:TStatusPanelStyle
>004AB908    jne         004AB911
 004AB90A    or          dword ptr [ebp-10],1000
 004AB911    lea         eax,[ebp-14]
 004AB914    mov         edx,dword ptr [ebp-18]
 004AB917    mov         edx,dword ptr [edx+0C];TStatusPanel.Text:String
 004AB91A    call        @LStrLAsg
 004AB91F    mov         eax,dword ptr [ebp-18]
 004AB922    call        004AAE38
 004AB927    test        al,al
>004AB929    je          004AB947
 004AB92B    mov         eax,dword ptr [ebp-18]
 004AB92E    call        004AAE38
 004AB933    push        eax
 004AB934    lea         edx,[ebp-14]
 004AB937    mov         eax,dword ptr [ebp-18]
 004AB93A    mov         cl,byte ptr [eax+14];TStatusPanel.Alignment:TAlignment
 004AB93D    mov         eax,dword ptr [ebp-4]
 004AB940    call        004AB418
>004AB945    jmp         004AB97B
 004AB947    mov         eax,dword ptr [ebp-18]
 004AB94A    mov         al,byte ptr [eax+14];TStatusPanel.Alignment:TAlignment
 004AB94D    dec         al
>004AB94F    je          004AB969
 004AB951    dec         al
>004AB953    jne         004AB97B
 004AB955    lea         edx,[ebp-14]
 004AB958    mov         ecx,1
 004AB95D    mov         eax,4AB9D0;#9
 004AB962    call        @LStrInsert
>004AB967    jmp         004AB97B
 004AB969    lea         edx,[ebp-14]
 004AB96C    mov         ecx,1
 004AB971    mov         eax,4AB9DC;#9+#9
 004AB976    call        @LStrInsert
 004AB97B    mov         eax,dword ptr [ebp-14]
 004AB97E    call        @LStrToPChar
 004AB983    push        eax
 004AB984    mov         eax,dword ptr [ebp-18]
 004AB987    call        TCollectionItem.GetIndex
 004AB98C    or          eax,dword ptr [ebp-10]
 004AB98F    push        eax
 004AB990    push        401
 004AB995    mov         eax,dword ptr [ebp-4]
 004AB998    call        TWinControl.GetHandle
 004AB99D    push        eax
 004AB99E    call        user32.SendMessageA
 004AB9A3    xor         eax,eax
 004AB9A5    pop         edx
 004AB9A6    pop         ecx
 004AB9A7    pop         ecx
 004AB9A8    mov         dword ptr fs:[eax],edx
 004AB9AB    push        4AB9C0
 004AB9B0    lea         eax,[ebp-14]
 004AB9B3    call        @LStrClr
 004AB9B8    ret
>004AB9B9    jmp         @HandleFinally
>004AB9BE    jmp         004AB9B0
 004AB9C0    pop         ebx
 004AB9C1    mov         esp,ebp
 004AB9C3    pop         ebp
 004AB9C4    ret
end;*}

//004AB9E0
{*procedure sub_004AB9E0(?:TCustomStatusBar; ?:?; ?:?);
begin
 004AB9E0    push        ebp
 004AB9E1    mov         ebp,esp
 004AB9E3    add         esp,0FFFFFDE8
 004AB9E9    mov         byte ptr [ebp-6],cl
 004AB9EC    mov         byte ptr [ebp-5],dl
 004AB9EF    mov         dword ptr [ebp-4],eax
 004AB9F2    mov         eax,dword ptr [ebp-4]
 004AB9F5    call        TWinControl.HandleAllocated
 004AB9FA    test        al,al
>004AB9FC    je          004ABB10
 004ABA02    mov         eax,dword ptr [ebp-4]
 004ABA05    mov         eax,dword ptr [eax+208];TCustomStatusBar.FPanels:TStatusPanels
 004ABA0B    call        00479B60
 004ABA10    mov         dword ptr [ebp-10],eax
 004ABA13    cmp         byte ptr [ebp-5],0
>004ABA17    je          004ABAE7
 004ABA1D    cmp         dword ptr [ebp-10],80
>004ABA24    jle         004ABA2D
 004ABA26    mov         dword ptr [ebp-10],80
 004ABA2D    cmp         dword ptr [ebp-10],0
>004ABA31    jne         004ABA75
 004ABA33    mov         dword ptr [ebp-218],0FFFFFFFF
 004ABA3D    lea         eax,[ebp-218]
 004ABA43    push        eax
 004ABA44    push        1
 004ABA46    push        404
 004ABA4B    mov         eax,dword ptr [ebp-4]
 004ABA4E    call        TWinControl.GetHandle
 004ABA53    push        eax
 004ABA54    call        user32.SendMessageA
 004ABA59    push        4ABB14
 004ABA5E    push        0
 004ABA60    push        401
 004ABA65    mov         eax,dword ptr [ebp-4]
 004ABA68    call        TWinControl.GetHandle
 004ABA6D    push        eax
 004ABA6E    call        user32.SendMessageA
>004ABA73    jmp         004ABAE7
 004ABA75    xor         eax,eax
 004ABA77    mov         dword ptr [ebp-14],eax
 004ABA7A    mov         eax,dword ptr [ebp-10]
 004ABA7D    sub         eax,2
 004ABA80    test        eax,eax
>004ABA82    jl          004ABABB
 004ABA84    inc         eax
 004ABA85    mov         dword ptr [ebp-18],eax
 004ABA88    mov         dword ptr [ebp-0C],0
 004ABA8F    mov         eax,dword ptr [ebp-4]
 004ABA92    mov         eax,dword ptr [eax+208];TCustomStatusBar.FPanels:TStatusPanels
 004ABA98    mov         edx,dword ptr [ebp-0C]
 004ABA9B    call        TStatusPanels.GetItem
 004ABAA0    mov         eax,dword ptr [eax+10];TStatusPanel.Width:Integer
 004ABAA3    add         dword ptr [ebp-14],eax
 004ABAA6    mov         eax,dword ptr [ebp-0C]
 004ABAA9    mov         edx,dword ptr [ebp-14]
 004ABAAC    mov         dword ptr [ebp+eax*4-218],edx
 004ABAB3    inc         dword ptr [ebp-0C]
 004ABAB6    dec         dword ptr [ebp-18]
>004ABAB9    jne         004ABA8F
 004ABABB    mov         eax,dword ptr [ebp-10]
 004ABABE    mov         dword ptr [ebp+eax*4-21C],0FFFFFFFF
 004ABAC9    lea         eax,[ebp-218]
 004ABACF    push        eax
 004ABAD0    mov         eax,dword ptr [ebp-10]
 004ABAD3    push        eax
 004ABAD4    push        404
 004ABAD9    mov         eax,dword ptr [ebp-4]
 004ABADC    call        TWinControl.GetHandle
 004ABAE1    push        eax
 004ABAE2    call        user32.SendMessageA
 004ABAE7    mov         eax,dword ptr [ebp-10]
 004ABAEA    dec         eax
 004ABAEB    test        eax,eax
>004ABAED    jl          004ABB10
 004ABAEF    inc         eax
 004ABAF0    mov         dword ptr [ebp-18],eax
 004ABAF3    mov         dword ptr [ebp-0C],0
 004ABAFA    mov         cl,byte ptr [ebp-6]
 004ABAFD    mov         edx,dword ptr [ebp-0C]
 004ABB00    mov         eax,dword ptr [ebp-4]
 004ABB03    call        004AB828
 004ABB08    inc         dword ptr [ebp-0C]
 004ABB0B    dec         dword ptr [ebp-18]
>004ABB0E    jne         004ABAFA
 004ABB10    mov         esp,ebp
 004ABB12    pop         ebp
 004ABB13    ret
end;*}

//004ABB18
{*procedure TCustomStatusBar.CMWinIniChange(?:?);
begin
 004ABB18    push        ebp
 004ABB19    mov         ebp,esp
 004ABB1B    add         esp,0FFFFFFF8
 004ABB1E    mov         dword ptr [ebp-8],edx
 004ABB21    mov         dword ptr [ebp-4],eax
 004ABB24    mov         edx,dword ptr [ebp-8]
 004ABB27    mov         eax,dword ptr [ebp-4]
 004ABB2A    call        TWinControl.CMWinIniChange
 004ABB2F    mov         eax,dword ptr [ebp-8]
 004ABB32    cmp         dword ptr [eax+4],0
>004ABB36    je          004ABB41
 004ABB38    mov         eax,dword ptr [ebp-8]
 004ABB3B    cmp         dword ptr [eax+4],2A
>004ABB3F    jne         004ABB49
 004ABB41    mov         eax,dword ptr [ebp-4]
 004ABB44    call        004AB7EC
 004ABB49    pop         ecx
 004ABB4A    pop         ecx
 004ABB4B    pop         ebp
 004ABB4C    ret
end;*}

//004ABB50
procedure TCustomStatusBar.CNDrawItem(var Message:TWMDrawItem);
begin
{*
 004ABB50    push        ebp
 004ABB51    mov         ebp,esp
 004ABB53    add         esp,0FFFFFFF0
 004ABB56    push        esi
 004ABB57    mov         dword ptr [ebp-8],edx
 004ABB5A    mov         dword ptr [ebp-4],eax
 004ABB5D    mov         eax,dword ptr [ebp-8]
 004ABB60    mov         eax,dword ptr [eax+8]
 004ABB63    mov         dword ptr [ebp-10],eax
 004ABB66    mov         eax,dword ptr [ebp-10]
 004ABB69    mov         eax,dword ptr [eax+18]
 004ABB6C    push        eax
 004ABB6D    call        gdi32.SaveDC
 004ABB72    mov         dword ptr [ebp-0C],eax
 004ABB75    mov         eax,dword ptr [ebp-4]
 004ABB78    mov         eax,dword ptr [eax+20C]
 004ABB7E    call        TCanvas.Lock
 004ABB83    xor         eax,eax
 004ABB85    push        ebp
 004ABB86    push        4ABC46
 004ABB8B    push        dword ptr fs:[eax]
 004ABB8E    mov         dword ptr fs:[eax],esp
 004ABB91    mov         eax,dword ptr [ebp-10]
 004ABB94    mov         edx,dword ptr [eax+18]
 004ABB97    mov         eax,dword ptr [ebp-4]
 004ABB9A    mov         eax,dword ptr [eax+20C]
 004ABBA0    call        TCanvas.SetHandle
 004ABBA5    mov         eax,dword ptr [ebp-4]
 004ABBA8    mov         edx,dword ptr [eax+68]
 004ABBAB    mov         eax,dword ptr [ebp-4]
 004ABBAE    mov         eax,dword ptr [eax+20C]
 004ABBB4    call        TCanvas.SetFont
 004ABBB9    mov         eax,dword ptr [ebp-4]
 004ABBBC    mov         eax,dword ptr [eax+20C]
 004ABBC2    mov         eax,dword ptr [eax+14]
 004ABBC5    mov         edx,0FF00000F
 004ABBCA    call        TBrush.SetColor
 004ABBCF    mov         eax,dword ptr [ebp-4]
 004ABBD2    mov         eax,dword ptr [eax+20C]
 004ABBD8    mov         eax,dword ptr [eax+14]
 004ABBDB    xor         edx,edx
 004ABBDD    call        TBrush.SetStyle
 004ABBE2    mov         eax,dword ptr [ebp-10]
 004ABBE5    mov         edx,dword ptr [eax+8]
 004ABBE8    mov         eax,dword ptr [ebp-4]
 004ABBEB    mov         eax,dword ptr [eax+208]
 004ABBF1    call        TStatusPanels.GetItem
 004ABBF6    mov         edx,eax
 004ABBF8    mov         eax,dword ptr [ebp-10]
 004ABBFB    lea         ecx,[eax+1C]
 004ABBFE    mov         eax,dword ptr [ebp-4]
 004ABC01    mov         si,0FFB3
 004ABC05    call        @CallDynaInst
 004ABC0A    xor         eax,eax
 004ABC0C    pop         edx
 004ABC0D    pop         ecx
 004ABC0E    pop         ecx
 004ABC0F    mov         dword ptr fs:[eax],edx
 004ABC12    push        4ABC4D
 004ABC17    mov         eax,dword ptr [ebp-4]
 004ABC1A    mov         eax,dword ptr [eax+20C]
 004ABC20    xor         edx,edx
 004ABC22    call        TCanvas.SetHandle
 004ABC27    mov         eax,dword ptr [ebp-4]
 004ABC2A    mov         eax,dword ptr [eax+20C]
 004ABC30    call        TCanvas.Unlock
 004ABC35    mov         eax,dword ptr [ebp-0C]
 004ABC38    push        eax
 004ABC39    mov         eax,dword ptr [ebp-10]
 004ABC3C    mov         eax,dword ptr [eax+18]
 004ABC3F    push        eax
 004ABC40    call        gdi32.RestoreDC
 004ABC45    ret
>004ABC46    jmp         @HandleFinally
>004ABC4B    jmp         004ABC17
 004ABC4D    mov         eax,dword ptr [ebp-8]
 004ABC50    mov         dword ptr [eax+0C],1
 004ABC57    pop         esi
 004ABC58    mov         esp,ebp
 004ABC5A    pop         ebp
 004ABC5B    ret
*}
end;

//004ABC5C
{*procedure TCustomStatusBar.WMGetTextLength(?:?);
begin
 004ABC5C    push        ebp
 004ABC5D    mov         ebp,esp
 004ABC5F    add         esp,0FFFFFFF8
 004ABC62    mov         dword ptr [ebp-8],edx
 004ABC65    mov         dword ptr [ebp-4],eax
 004ABC68    mov         eax,dword ptr [ebp-4]
 004ABC6B    mov         eax,dword ptr [eax+210];TCustomStatusBar.FSimpleText:String
 004ABC71    call        @DynArrayLength
 004ABC76    mov         edx,dword ptr [ebp-8]
 004ABC79    mov         dword ptr [edx+0C],eax
 004ABC7C    pop         ecx
 004ABC7D    pop         ecx
 004ABC7E    pop         ebp
 004ABC7F    ret
end;*}

//004ABC80
procedure TCustomStatusBar.WMPaint(Message:TWMPaint);
begin
{*
 004ABC80    push        ebp
 004ABC81    mov         ebp,esp
 004ABC83    add         esp,0FFFFFFF8
 004ABC86    mov         dword ptr [ebp-8],edx
 004ABC89    mov         dword ptr [ebp-4],eax
 004ABC8C    mov         cl,1
 004ABC8E    xor         edx,edx
 004ABC90    mov         eax,dword ptr [ebp-4]
 004ABC93    call        004AB9E0
 004ABC98    mov         edx,dword ptr [ebp-8]
 004ABC9B    mov         eax,dword ptr [ebp-4]
 004ABC9E    call        TWinControl.WMPaint
 004ABCA3    pop         ecx
 004ABCA4    pop         ecx
 004ABCA5    pop         ebp
 004ABCA6    ret
*}
end;

//004ABCA8
procedure TCustomStatusBar.WMSize(Message:TWMSize);
begin
{*
 004ABCA8    push        ebp
 004ABCA9    mov         ebp,esp
 004ABCAB    add         esp,0FFFFFFF8
 004ABCAE    push        esi
 004ABCAF    mov         dword ptr [ebp-8],edx
 004ABCB2    mov         dword ptr [ebp-4],eax
 004ABCB5    mov         eax,dword ptr [ebp-4]
 004ABCB8    test        byte ptr [eax+1C],1;TCustomStatusBar.FComponentState:TComponentState
>004ABCBC    jne         004ABCCA
 004ABCBE    mov         eax,dword ptr [ebp-4]
 004ABCC1    mov         si,0FFCF
 004ABCC5    call        @CallDynaInst;TControl.sub_004C9EFC
 004ABCCA    mov         eax,dword ptr [ebp-4]
 004ABCCD    mov         edx,dword ptr [eax]
 004ABCCF    call        dword ptr [edx+80];TCustomStatusBar.sub_004D3748
 004ABCD5    pop         esi
 004ABCD6    pop         ecx
 004ABCD7    pop         ecx
 004ABCD8    pop         ebp
 004ABCD9    ret
*}
end;

//004ABCDC
function TStatusBar.IsStoredFont(Value:TFont):Boolean;
begin
{*
 004ABCDC    push        ebp
 004ABCDD    mov         ebp,esp
 004ABCDF    add         esp,0FFFFFFF8
 004ABCE2    mov         dword ptr [ebp-4],eax
 004ABCE5    mov         eax,dword ptr [ebp-4]
 004ABCE8    cmp         byte ptr [eax+217],0;TStatusBar.FUseSystemFont:Boolean
>004ABCEF    jne         004ABD03
 004ABCF1    mov         eax,dword ptr [ebp-4]
 004ABCF4    cmp         byte ptr [eax+59],0;TStatusBar.FParentFont:Boolean
>004ABCF8    jne         004ABD03
 004ABCFA    mov         eax,dword ptr [ebp-4]
 004ABCFD    cmp         byte ptr [eax+56],0;TStatusBar.FDesktopFont:Boolean
>004ABD01    je          004ABD07
 004ABD03    xor         eax,eax
>004ABD05    jmp         004ABD09
 004ABD07    mov         al,1
 004ABD09    mov         byte ptr [ebp-5],al
 004ABD0C    mov         al,byte ptr [ebp-5]
 004ABD0F    pop         ecx
 004ABD10    pop         ecx
 004ABD11    pop         ebp
 004ABD12    ret
*}
end;

//004ABD14
procedure TStatusBar.SetUseSystemFont(Value:Boolean);
begin
{*
 004ABD14    push        ebp
 004ABD15    mov         ebp,esp
 004ABD17    add         esp,0FFFFFFF8
 004ABD1A    mov         byte ptr [ebp-5],dl
 004ABD1D    mov         dword ptr [ebp-4],eax
 004ABD20    mov         eax,dword ptr [ebp-4]
 004ABD23    mov         al,byte ptr [eax+217];TStatusBar.FUseSystemFont:Boolean
 004ABD29    cmp         al,byte ptr [ebp-5]
>004ABD2C    je          004ABD5B
 004ABD2E    mov         al,byte ptr [ebp-5]
 004ABD31    mov         edx,dword ptr [ebp-4]
 004ABD34    mov         byte ptr [edx+217],al;TStatusBar.FUseSystemFont:Boolean
 004ABD3A    cmp         byte ptr [ebp-5],0
>004ABD3E    je          004ABD5B
 004ABD40    mov         eax,dword ptr [ebp-4]
 004ABD43    cmp         byte ptr [eax+59],0;TStatusBar.FParentFont:Boolean
>004ABD47    je          004ABD53
 004ABD49    xor         edx,edx
 004ABD4B    mov         eax,dword ptr [ebp-4]
 004ABD4E    call        TPanel.SetParentFont
 004ABD53    mov         eax,dword ptr [ebp-4]
 004ABD56    call        004AB7EC
 004ABD5B    pop         ecx
 004ABD5C    pop         ecx
 004ABD5D    pop         ebp
 004ABD5E    ret
*}
end;

//004ABD60
{*procedure TCustomStatusBar.CMColorChanged(?:?);
begin
 004ABD60    push        ebp
 004ABD61    mov         ebp,esp
 004ABD63    add         esp,0FFFFFFF8
 004ABD66    mov         dword ptr [ebp-8],edx
 004ABD69    mov         dword ptr [ebp-4],eax
 004ABD6C    mov         edx,dword ptr [ebp-8]
 004ABD6F    mov         eax,dword ptr [ebp-4]
 004ABD72    call        TWinControl.CMColorChanged
 004ABD77    mov         eax,dword ptr [ebp-4]
 004ABD7A    call        TWinControl.RecreateWnd
 004ABD7F    pop         ecx
 004ABD80    pop         ecx
 004ABD81    pop         ebp
 004ABD82    ret
end;*}

//004ABD84
{*procedure TCustomStatusBar.CMParentFontChanged(?:?);
begin
 004ABD84    push        ebp
 004ABD85    mov         ebp,esp
 004ABD87    add         esp,0FFFFFFF8
 004ABD8A    mov         dword ptr [ebp-8],edx
 004ABD8D    mov         dword ptr [ebp-4],eax
 004ABD90    mov         edx,dword ptr [ebp-8]
 004ABD93    mov         eax,dword ptr [ebp-4]
 004ABD96    call        TControl.CMParentFontChanged
 004ABD9B    mov         eax,dword ptr [ebp-4]
 004ABD9E    cmp         byte ptr [eax+217],0;TCustomStatusBar.FUseSystemFont:Boolean
>004ABDA5    je          004ABDBA
 004ABDA7    mov         eax,dword ptr [ebp-4]
 004ABDAA    cmp         byte ptr [eax+59],0;TCustomStatusBar.FParentFont:Boolean
>004ABDAE    je          004ABDBA
 004ABDB0    mov         eax,dword ptr [ebp-4]
 004ABDB3    mov         byte ptr [eax+217],0;TCustomStatusBar.FUseSystemFont:Boolean
 004ABDBA    pop         ecx
 004ABDBB    pop         ecx
 004ABDBC    pop         ebp
 004ABDBD    ret
end;*}

//004ABDC0
{*procedure TCustomStatusBar.sub_004839E8(?:?);
begin
 004ABDC0    push        ebp
 004ABDC1    mov         ebp,esp
 004ABDC3    add         esp,0FFFFFFF4
 004ABDC6    mov         dword ptr [ebp-8],edx
 004ABDC9    mov         dword ptr [ebp-4],eax
 004ABDCC    mov         eax,dword ptr [ebp-4]
 004ABDCF    cmp         byte ptr [eax+218],0;TCustomStatusBar.FAutoHint:Boolean
>004ABDD6    je          004ABE48
 004ABDD8    mov         eax,dword ptr [ebp-8]
 004ABDDB    mov         edx,dword ptr ds:[4C3164];THintAction
 004ABDE1    call        @IsClass
 004ABDE6    test        al,al
>004ABDE8    je          004ABE48
 004ABDEA    mov         eax,dword ptr [ebp-4]
 004ABDED    mov         edx,dword ptr [eax]
 004ABDEF    call        dword ptr [edx+0D0];TCustomStatusBar.sub_004AB310
 004ABDF5    test        al,al
>004ABDF7    jne         004ABE48
 004ABDF9    mov         eax,dword ptr [ebp-4]
 004ABDFC    cmp         byte ptr [eax+214],0;TCustomStatusBar.FSimplePanel:Boolean
>004ABE03    jne         004ABE17
 004ABE05    mov         eax,dword ptr [ebp-4]
 004ABE08    mov         eax,dword ptr [eax+208];TCustomStatusBar.FPanels:TStatusPanels
 004ABE0E    call        00479B60
 004ABE13    test        eax,eax
>004ABE15    jne         004ABE27
 004ABE17    mov         eax,dword ptr [ebp-8]
 004ABE1A    mov         edx,dword ptr [eax+7C]
 004ABE1D    mov         eax,dword ptr [ebp-4]
 004ABE20    call        TStatusBar.SetSimpleText
>004ABE25    jmp         004ABE42
 004ABE27    xor         edx,edx
 004ABE29    mov         eax,dword ptr [ebp-4]
 004ABE2C    mov         eax,dword ptr [eax+208];TCustomStatusBar.FPanels:TStatusPanels
 004ABE32    call        TStatusPanels.GetItem
 004ABE37    mov         edx,dword ptr [ebp-8]
 004ABE3A    mov         edx,dword ptr [edx+7C]
 004ABE3D    call        TStatusPanel.SetText
 004ABE42    mov         byte ptr [ebp-9],1
>004ABE46    jmp         004ABE56
 004ABE48    mov         edx,dword ptr [ebp-8]
 004ABE4B    mov         eax,dword ptr [ebp-4]
 004ABE4E    call        TComponent.sub_004839E8
 004ABE53    mov         byte ptr [ebp-9],al
 004ABE56    mov         al,byte ptr [ebp-9]
 004ABE59    mov         esp,ebp
 004ABE5B    pop         ebp
 004ABE5C    ret
end;*}

//004ABE60
{*procedure TCustomStatusBar.CMSysColorChange(?:?);
begin
 004ABE60    push        ebp
 004ABE61    mov         ebp,esp
 004ABE63    add         esp,0FFFFFFF8
 004ABE66    mov         dword ptr [ebp-8],edx
 004ABE69    mov         dword ptr [ebp-4],eax
 004ABE6C    mov         edx,dword ptr [ebp-8]
 004ABE6F    mov         eax,dword ptr [ebp-4]
 004ABE72    call        TWinControl.CMSysColorChange
 004ABE77    mov         eax,dword ptr [ebp-4]
 004ABE7A    call        TWinControl.RecreateWnd
 004ABE7F    pop         ecx
 004ABE80    pop         ecx
 004ABE81    pop         ebp
 004ABE82    ret
end;*}

//004ABE84
{*procedure TCustomStatusBar.CMSysFontChanged(?:?);
begin
 004ABE84    push        ebp
 004ABE85    mov         ebp,esp
 004ABE87    add         esp,0FFFFFFF8
 004ABE8A    mov         dword ptr [ebp-8],edx
 004ABE8D    mov         dword ptr [ebp-4],eax
 004ABE90    mov         edx,dword ptr [ebp-8]
 004ABE93    mov         eax,dword ptr [ebp-4]
 004ABE96    call        TWinControl.CMSysFontChanged
 004ABE9B    mov         eax,dword ptr [ebp-4]
 004ABE9E    call        004AB7EC
 004ABEA3    pop         ecx
 004ABEA4    pop         ecx
 004ABEA5    pop         ebp
 004ABEA6    ret
end;*}

//004ABEA8
{*procedure TCustomStatusBar.sub_004ABEA8(?:?; ?:?);
begin
 004ABEA8    push        ebp
 004ABEA9    mov         ebp,esp
 004ABEAB    add         esp,0FFFFFFF4
 004ABEAE    mov         dword ptr [ebp-0C],ecx
 004ABEB1    mov         dword ptr [ebp-8],edx
 004ABEB4    mov         dword ptr [ebp-4],eax
 004ABEB7    mov         eax,dword ptr [ebp-4]
 004ABEBA    cmp         byte ptr [eax+217],0;TCustomStatusBar.FUseSystemFont:Boolean
>004ABEC1    je          004ABED2
 004ABEC3    mov         eax,dword ptr [ebp-4]
 004ABEC6    mov         dl,byte ptr ds:[4ABEE4];0x2 gvar_004ABEE4
 004ABECC    mov         byte ptr [eax+98],dl;TCustomStatusBar.FScalingFlags:TScalingFlags
 004ABED2    mov         ecx,dword ptr [ebp-0C]
 004ABED5    mov         edx,dword ptr [ebp-8]
 004ABED8    mov         eax,dword ptr [ebp-4]
 004ABEDB    call        TWinControl.sub_004CAA18
 004ABEE0    mov         esp,ebp
 004ABEE2    pop         ebp
 004ABEE3    ret
end;*}

//004ABEE8
procedure TCustomStatusBar.SetBounds(ALeft:Integer; ATop:Integer; AWidth:Integer; AHeight:Integer);
begin
{*
 004ABEE8    push        ebp
 004ABEE9    mov         ebp,esp
 004ABEEB    add         esp,0FFFFFFF4
 004ABEEE    mov         dword ptr [ebp-0C],ecx
 004ABEF1    mov         dword ptr [ebp-8],edx
 004ABEF4    mov         dword ptr [ebp-4],eax
 004ABEF7    mov         eax,dword ptr [ebp+0C]
 004ABEFA    push        eax
 004ABEFB    mov         eax,dword ptr [ebp+8]
 004ABEFE    push        eax
 004ABEFF    mov         ecx,dword ptr [ebp-0C]
 004ABF02    mov         edx,dword ptr [ebp-8]
 004ABF05    mov         eax,dword ptr [ebp-4]
 004ABF08    call        TWinControl.SetBounds
 004ABF0D    mov         dl,1
 004ABF0F    mov         eax,dword ptr [ebp-4]
 004ABF12    call        004ABF3C
 004ABF17    mov         esp,ebp
 004ABF19    pop         ebp
 004ABF1A    ret         8
*}
end;

//004ABF20
{*procedure sub_004ABF20(?:?);
begin
 004ABF20    push        ebp
 004ABF21    mov         ebp,esp
 004ABF23    add         esp,0FFFFFFF8
 004ABF26    mov         dword ptr [ebp-8],edx
 004ABF29    mov         dword ptr [ebp-4],eax
 004ABF2C    mov         edx,dword ptr [ebp-8]
 004ABF2F    mov         eax,dword ptr [ebp-4]
 004ABF32    call        004CAD7C
 004ABF37    pop         ecx
 004ABF38    pop         ecx
 004ABF39    pop         ebp
 004ABF3A    ret
end;*}

//004ABF3C
{*procedure sub_004ABF3C(?:TCustomStatusBar; ?:?);
begin
 004ABF3C    push        ebp
 004ABF3D    mov         ebp,esp
 004ABF3F    add         esp,0FFFFFFE0
 004ABF42    mov         byte ptr [ebp-5],dl
 004ABF45    mov         dword ptr [ebp-4],eax
 004ABF48    mov         byte ptr [ebp-15],0
 004ABF4C    mov         eax,dword ptr [ebp-4]
 004ABF4F    call        004E7ED8
 004ABF54    mov         dword ptr [ebp-0C],eax
 004ABF57    cmp         dword ptr [ebp-0C],0
>004ABF5B    je          004ABFB7
 004ABF5D    mov         eax,dword ptr [ebp-0C]
 004ABF60    mov         al,byte ptr [eax+229]
 004ABF66    sub         al,2
>004ABF68    je          004ABF6E
 004ABF6A    sub         al,3
>004ABF6C    jne         004ABFB7
 004ABF6E    lea         eax,[ebp-14]
 004ABF71    push        eax
 004ABF72    lea         ecx,[ebp-20]
 004ABF75    mov         eax,dword ptr [ebp-4]
 004ABF78    mov         edx,dword ptr [eax+4C];TCustomStatusBar.Height:Integer
 004ABF7B    mov         eax,dword ptr [ebp-4]
 004ABF7E    mov         eax,dword ptr [eax+48];TCustomStatusBar.Width:Integer
 004ABF81    call        00406EBC
 004ABF86    lea         edx,[ebp-20]
 004ABF89    mov         ecx,dword ptr [ebp-0C]
 004ABF8C    mov         eax,dword ptr [ebp-4]
 004ABF8F    call        004CE1E4
 004ABF94    mov         eax,dword ptr [ebp-0C]
 004ABF97    call        TControl.GetClientWidth
 004ABF9C    cmp         eax,dword ptr [ebp-14]
>004ABF9F    jne         004ABFAE
 004ABFA1    mov         eax,dword ptr [ebp-0C]
 004ABFA4    call        TControl.GetClientHeight
 004ABFA9    cmp         eax,dword ptr [ebp-10]
>004ABFAC    je          004ABFB2
 004ABFAE    xor         eax,eax
>004ABFB0    jmp         004ABFB4
 004ABFB2    mov         al,1
 004ABFB4    mov         byte ptr [ebp-15],al
 004ABFB7    mov         al,byte ptr [ebp-15]
 004ABFBA    mov         edx,dword ptr [ebp-4]
 004ABFBD    cmp         al,byte ptr [edx+216];TCustomStatusBar.FSizeGripValid:Boolean
>004ABFC3    je          004ABFDF
 004ABFC5    mov         al,byte ptr [ebp-15]
 004ABFC8    mov         edx,dword ptr [ebp-4]
 004ABFCB    mov         byte ptr [edx+216],al;TCustomStatusBar.FSizeGripValid:Boolean
 004ABFD1    cmp         byte ptr [ebp-5],0
>004ABFD5    je          004ABFDF
 004ABFD7    mov         eax,dword ptr [ebp-4]
 004ABFDA    call        TWinControl.RecreateWnd
 004ABFDF    mov         esp,ebp
 004ABFE1    pop         ebp
 004ABFE2    ret
end;*}

//004ABFE4
{*function sub_004ABFE4:?;
begin
 004ABFE4    push        ebp
 004ABFE5    mov         ebp,esp
 004ABFE7    add         esp,0FFFFFFF4
 004ABFEA    push        ebx
 004ABFEB    mov         dword ptr [ebp-4],eax
 004ABFEE    mov         eax,dword ptr [ebp-4]
 004ABFF1    mov         edx,dword ptr [eax]
 004ABFF3    call        dword ptr [edx+0D4];TCustomStatusBar.sub_004AC060
 004ABFF9    mov         dword ptr [ebp-0C],eax
 004ABFFC    mov         eax,dword ptr [ebp-4]
 004ABFFF    cmp         word ptr [eax+232],0;TCustomStatusBar.?f232:word
>004AC007    je          004AC01E
 004AC009    lea         ecx,[ebp-0C]
 004AC00C    mov         ebx,dword ptr [ebp-4]
 004AC00F    mov         edx,dword ptr [ebp-4]
 004AC012    mov         eax,dword ptr [ebx+234];TCustomStatusBar.?f234:dword
 004AC018    call        dword ptr [ebx+230];TCustomStatusBar.FOnCreatePanelClass
 004AC01E    mov         eax,dword ptr [ebp-4]
 004AC021    mov         ecx,dword ptr [eax+208];TCustomStatusBar.FPanels:TStatusPanels
 004AC027    mov         dl,1
 004AC029    mov         eax,dword ptr [ebp-0C]
 004AC02C    call        dword ptr [eax+1C]
 004AC02F    mov         dword ptr [ebp-8],eax
 004AC032    mov         eax,dword ptr [ebp-8]
 004AC035    pop         ebx
 004AC036    mov         esp,ebp
 004AC038    pop         ebp
 004AC039    ret
end;*}

//004AC03C
{*function sub_004AC03C:?;
begin
 004AC03C    push        ebp
 004AC03D    mov         ebp,esp
 004AC03F    add         esp,0FFFFFFF8
 004AC042    mov         dword ptr [ebp-4],eax
 004AC045    mov         ecx,dword ptr [ebp-4]
 004AC048    mov         dl,1
 004AC04A    mov         eax,[004A3B44];TStatusPanels
 004AC04F    call        TStatusPanels.Create;TStatusPanels.Create
 004AC054    mov         dword ptr [ebp-8],eax
 004AC057    mov         eax,dword ptr [ebp-8]
 004AC05A    pop         ecx
 004AC05B    pop         ecx
 004AC05C    pop         ebp
 004AC05D    ret
end;*}

//004AC060
{*function sub_004AC060:?;
begin
 004AC060    push        ebp
 004AC061    mov         ebp,esp
 004AC063    add         esp,0FFFFFFF8
 004AC066    mov         dword ptr [ebp-4],eax
 004AC069    mov         eax,[004A39A0];TStatusPanel
 004AC06E    mov         dword ptr [ebp-8],eax
 004AC071    mov         eax,dword ptr [ebp-8]
 004AC074    pop         ecx
 004AC075    pop         ecx
 004AC076    pop         ebp
 004AC077    ret
end;*}

//004AC078
{*procedure TCustomStatusBar.WMEraseBkgnd(?:?);
begin
 004AC078    push        ebp
 004AC079    mov         ebp,esp
 004AC07B    add         esp,0FFFFFFDC
 004AC07E    mov         dword ptr [ebp-8],edx
 004AC081    mov         dword ptr [ebp-4],eax
 004AC084    call        ThemeServices
 004AC089    call        TThemeServices.GetThemesEnabled
 004AC08E    test        al,al
>004AC090    je          004AC0D1
 004AC092    call        ThemeServices
 004AC097    lea         ecx,[ebp-14]
 004AC09A    mov         dl,1
 004AC09C    call        004B6728
 004AC0A1    lea         edx,[ebp-24]
 004AC0A4    mov         eax,dword ptr [ebp-4]
 004AC0A7    mov         ecx,dword ptr [eax]
 004AC0A9    call        dword ptr [ecx+44];TCustomStatusBar.sub_004D3A1C
 004AC0AC    lea         eax,[ebp-24]
 004AC0AF    push        eax
 004AC0B0    push        0
 004AC0B2    call        ThemeServices
 004AC0B7    mov         edx,dword ptr [ebp-8]
 004AC0BA    mov         edx,dword ptr [edx+4]
 004AC0BD    lea         ecx,[ebp-14]
 004AC0C0    call        004B648C
 004AC0C5    mov         eax,dword ptr [ebp-8]
 004AC0C8    mov         dword ptr [eax+0C],1
>004AC0CF    jmp         004AC0DC
 004AC0D1    mov         edx,dword ptr [ebp-8]
 004AC0D4    mov         eax,dword ptr [ebp-4]
 004AC0D7    call        TWinControl.WMEraseBkgnd
 004AC0DC    mov         esp,ebp
 004AC0DE    pop         ebp
 004AC0DF    ret
end;*}

//004AC0E0
constructor TTrackBar.Create(AOwner:TComponent);
begin
{*
 004AC0E0    push        ebp
 004AC0E1    mov         ebp,esp
 004AC0E3    add         esp,0FFFFFFF4
 004AC0E6    test        dl,dl
>004AC0E8    je          004AC0F2
 004AC0EA    add         esp,0FFFFFFF0
 004AC0ED    call        @ClassCreate
 004AC0F2    mov         dword ptr [ebp-0C],ecx
 004AC0F5    mov         byte ptr [ebp-5],dl
 004AC0F8    mov         dword ptr [ebp-4],eax
 004AC0FB    mov         ecx,dword ptr [ebp-0C]
 004AC0FE    xor         edx,edx
 004AC100    mov         eax,dword ptr [ebp-4]
 004AC103    call        TWinControl.Create
 004AC108    mov         edx,96
 004AC10D    mov         eax,dword ptr [ebp-4]
 004AC110    call        TControl.SetWidth
 004AC115    mov         edx,2D
 004AC11A    mov         eax,dword ptr [ebp-4]
 004AC11D    call        TControl.SetHeight
 004AC122    mov         dl,1
 004AC124    mov         eax,dword ptr [ebp-4]
 004AC127    call        TPanel.SetTabStop
 004AC12C    mov         eax,dword ptr [ebp-4]
 004AC12F    xor         edx,edx
 004AC131    mov         dword ptr [eax+21C],edx;TTrackBar.Min:Integer
 004AC137    mov         eax,dword ptr [ebp-4]
 004AC13A    mov         dword ptr [eax+220],0A;TTrackBar.Max:Integer
 004AC144    mov         eax,dword ptr [ebp-4]
 004AC147    xor         edx,edx
 004AC149    mov         dword ptr [eax+228],edx;TTrackBar.Position:Integer
 004AC14F    mov         eax,dword ptr [ebp-4]
 004AC152    mov         dword ptr [eax+20C],1;TTrackBar.LineSize:Integer
 004AC15C    mov         eax,dword ptr [ebp-4]
 004AC15F    mov         dword ptr [eax+210],2;TTrackBar.PageSize:Integer
 004AC169    mov         eax,dword ptr [ebp-4]
 004AC16C    mov         dword ptr [eax+224],1;TTrackBar.Frequency:Integer
 004AC176    mov         eax,dword ptr [ebp-4]
 004AC179    xor         edx,edx
 004AC17B    mov         dword ptr [eax+22C],edx;TTrackBar.SelStart:Integer
 004AC181    mov         eax,dword ptr [ebp-4]
 004AC184    xor         edx,edx
 004AC186    mov         dword ptr [eax+230],edx;TTrackBar.SelEnd:Integer
 004AC18C    mov         eax,dword ptr [ebp-4]
 004AC18F    mov         dword ptr [eax+214],14;TTrackBar.FThumbLength:Integer
 004AC199    mov         eax,dword ptr [ebp-4]
 004AC19C    mov         byte ptr [eax+209],0;TTrackBar.TickMarks:TTickMark
 004AC1A3    mov         eax,dword ptr [ebp-4]
 004AC1A6    mov         byte ptr [eax+20A],1;TTrackBar.TickStyle:TTickStyle
 004AC1AD    mov         eax,dword ptr [ebp-4]
 004AC1B0    mov         byte ptr [eax+208],0;TTrackBar.Orientation:TTrackBarOrientation
 004AC1B7    mov         eax,dword ptr [ebp-4]
 004AC1BA    mov         edx,dword ptr ds:[4AC1F4];0x80 gvar_004AC1F4
 004AC1C0    not         edx
 004AC1C2    and         edx,dword ptr [eax+50];TTrackBar.FControlStyle:TControlStyle
 004AC1C5    mov         eax,dword ptr [ebp-4]
 004AC1C8    mov         dword ptr [eax+50],edx;TTrackBar.FControlStyle:TControlStyle
 004AC1CB    mov         eax,dword ptr [ebp-4]
 004AC1CE    mov         byte ptr [eax+218],1;TTrackBar.SliderVisible:Boolean
 004AC1D5    mov         eax,dword ptr [ebp-4]
 004AC1D8    cmp         byte ptr [ebp-5],0
>004AC1DC    je          004AC1ED
 004AC1DE    call        @AfterConstruction
 004AC1E3    pop         dword ptr fs:[0]
 004AC1EA    add         esp,0C
 004AC1ED    mov         eax,dword ptr [ebp-4]
 004AC1F0    mov         esp,ebp
 004AC1F2    pop         ebp
 004AC1F3    ret
*}
end;

//004AC1F8
{*procedure sub_004AC1F8(?:?);
begin
 004AC1F8    push        ebp
 004AC1F9    mov         ebp,esp
 004AC1FB    add         esp,0FFFFFFF8
 004AC1FE    mov         dword ptr [ebp-8],edx
 004AC201    mov         dword ptr [ebp-4],eax
 004AC204    mov         eax,4
 004AC209    call        004A7B30
 004AC20E    mov         edx,dword ptr [ebp-8]
 004AC211    mov         eax,dword ptr [ebp-4]
 004AC214    call        004CF814
 004AC219    mov         ecx,4AC2C0
 004AC21E    mov         edx,dword ptr [ebp-8]
 004AC221    mov         eax,dword ptr [ebp-4]
 004AC224    call        004CF6EC
 004AC229    mov         eax,dword ptr [ebp-4]
 004AC22C    mov         eax,dword ptr [eax+220];TTrackBar.Max:Integer
 004AC232    mov         edx,dword ptr [ebp-4]
 004AC235    sub         eax,dword ptr [edx+21C]
 004AC23B    cmp         eax,2710
 004AC240    setg        al
 004AC243    and         eax,7F
 004AC246    lea         eax,[eax+eax*2]
 004AC249    lea         eax,[eax*4+54141C]
 004AC250    mov         edx,dword ptr [ebp-4]
 004AC253    movzx       edx,byte ptr [edx+20A];TTrackBar.TickStyle:TTickStyle
 004AC25A    mov         eax,dword ptr [eax+edx*4]
 004AC25D    mov         edx,dword ptr [ebp-8]
 004AC260    mov         edx,dword ptr [edx+4]
 004AC263    mov         ecx,dword ptr [ebp-4]
 004AC266    movzx       ecx,byte ptr [ecx+208]
 004AC26D    or          edx,dword ptr [ecx*4+541414]
 004AC274    or          eax,edx
 004AC276    mov         edx,dword ptr [ebp-4]
 004AC279    movzx       edx,byte ptr [edx+209];TTrackBar.TickMarks:TTickMark
 004AC280    or          eax,dword ptr [edx*4+541434]
 004AC287    or          eax,40
 004AC28A    or          eax,20
 004AC28D    mov         edx,dword ptr [ebp-8]
 004AC290    mov         dword ptr [edx+4],eax
 004AC293    mov         eax,dword ptr [ebp-8]
 004AC296    mov         eax,dword ptr [eax+24]
 004AC299    and         eax,0FFFFFFFC
 004AC29C    or          eax,8
 004AC29F    mov         edx,dword ptr [ebp-8]
 004AC2A2    mov         dword ptr [edx+24],eax
 004AC2A5    mov         eax,dword ptr [ebp-4]
 004AC2A8    cmp         byte ptr [eax+218],0;TTrackBar.SliderVisible:Boolean
>004AC2AF    jne         004AC2BB
 004AC2B1    mov         eax,dword ptr [ebp-8]
 004AC2B4    or          dword ptr [eax+4],80
 004AC2BB    pop         ecx
 004AC2BC    pop         ecx
 004AC2BD    pop         ebp
 004AC2BE    ret
end;*}

//004AC2D4
procedure TTrackBar.CreateWnd;
begin
{*
 004AC2D4    push        ebp
 004AC2D5    mov         ebp,esp
 004AC2D7    push        ecx
 004AC2D8    mov         dword ptr [ebp-4],eax
 004AC2DB    mov         eax,dword ptr [ebp-4]
 004AC2DE    call        TWinControl.CreateWnd
 004AC2E3    mov         eax,dword ptr [ebp-4]
 004AC2E6    call        TWinControl.HandleAllocated
 004AC2EB    test        al,al
>004AC2ED    je          004AC3D4
 004AC2F3    push        0
 004AC2F5    mov         eax,dword ptr [ebp-4]
 004AC2F8    mov         eax,dword ptr [eax+214];TTrackBar.FThumbLength:Integer
 004AC2FE    push        eax
 004AC2FF    push        41B
 004AC304    mov         eax,dword ptr [ebp-4]
 004AC307    call        TWinControl.GetHandle
 004AC30C    push        eax
 004AC30D    call        user32.SendMessageA
 004AC312    mov         eax,dword ptr [ebp-4]
 004AC315    mov         eax,dword ptr [eax+20C];TTrackBar.LineSize:Integer
 004AC31B    push        eax
 004AC31C    push        0
 004AC31E    push        417
 004AC323    mov         eax,dword ptr [ebp-4]
 004AC326    call        TWinControl.GetHandle
 004AC32B    push        eax
 004AC32C    call        user32.SendMessageA
 004AC331    mov         eax,dword ptr [ebp-4]
 004AC334    mov         eax,dword ptr [eax+210];TTrackBar.PageSize:Integer
 004AC33A    push        eax
 004AC33B    push        0
 004AC33D    push        415
 004AC342    mov         eax,dword ptr [ebp-4]
 004AC345    call        TWinControl.GetHandle
 004AC34A    push        eax
 004AC34B    call        user32.SendMessageA
 004AC350    mov         eax,dword ptr [ebp-4]
 004AC353    mov         eax,dword ptr [eax+21C];TTrackBar.Min:Integer
 004AC359    push        eax
 004AC35A    push        0
 004AC35C    push        407
 004AC361    mov         eax,dword ptr [ebp-4]
 004AC364    call        TWinControl.GetHandle
 004AC369    push        eax
 004AC36A    call        user32.SendMessageA
 004AC36F    mov         eax,dword ptr [ebp-4]
 004AC372    mov         eax,dword ptr [eax+220];TTrackBar.Max:Integer
 004AC378    push        eax
 004AC379    push        0
 004AC37B    push        408
 004AC380    mov         eax,dword ptr [ebp-4]
 004AC383    call        TWinControl.GetHandle
 004AC388    push        eax
 004AC389    call        user32.SendMessageA
 004AC38E    mov         eax,dword ptr [ebp-4]
 004AC391    call        004AC9C8
 004AC396    mov         eax,dword ptr [ebp-4]
 004AC399    mov         eax,dword ptr [eax+228];TTrackBar.Position:Integer
 004AC39F    push        eax
 004AC3A0    push        1
 004AC3A2    push        405
 004AC3A7    mov         eax,dword ptr [ebp-4]
 004AC3AA    call        TWinControl.GetHandle
 004AC3AF    push        eax
 004AC3B0    call        user32.SendMessageA
 004AC3B5    push        1
 004AC3B7    mov         eax,dword ptr [ebp-4]
 004AC3BA    mov         eax,dword ptr [eax+224];TTrackBar.Frequency:Integer
 004AC3C0    push        eax
 004AC3C1    push        414
 004AC3C6    mov         eax,dword ptr [ebp-4]
 004AC3C9    call        TWinControl.GetHandle
 004AC3CE    push        eax
 004AC3CF    call        user32.SendMessageA
 004AC3D4    pop         ecx
 004AC3D5    pop         ebp
 004AC3D6    ret
*}
end;

//004AC3D8
procedure sub_004AC3D8;
begin
{*
 004AC3D8    push        ebp
 004AC3D9    mov         ebp,esp
 004AC3DB    push        ecx
 004AC3DC    mov         dword ptr [ebp-4],eax
 004AC3DF    mov         eax,dword ptr [ebp-4]
 004AC3E2    call        004CFE84
 004AC3E7    pop         ecx
 004AC3E8    pop         ebp
 004AC3E9    ret
*}
end;

//004AC3EC
{*procedure TTrackBar.sub_004AC3EC(?:?);
begin
 004AC3EC    push        ebp
 004AC3ED    mov         ebp,esp
 004AC3EF    add         esp,0FFFFFFF8
 004AC3F2    push        esi
 004AC3F3    mov         dword ptr [ebp-8],edx
 004AC3F6    mov         dword ptr [ebp-4],eax
 004AC3F9    mov         edx,dword ptr [ebp-8]
 004AC3FC    mov         eax,dword ptr [ebp-4]
 004AC3FF    mov         ecx,dword ptr [eax]
 004AC401    call        dword ptr [ecx-10];TTrackBar.DefaultHandler
 004AC404    push        0
 004AC406    push        0
 004AC408    push        400
 004AC40D    mov         eax,dword ptr [ebp-4]
 004AC410    call        TWinControl.GetHandle
 004AC415    push        eax
 004AC416    call        user32.SendMessageA
 004AC41B    mov         edx,dword ptr [ebp-4]
 004AC41E    mov         dword ptr [edx+228],eax;TTrackBar.Position:Integer
 004AC424    mov         eax,dword ptr [ebp-4]
 004AC427    mov         si,0FFB3
 004AC42B    call        @CallDynaInst;TTrackBar.sub_004ACAA8
 004AC430    mov         eax,dword ptr [ebp-8]
 004AC433    xor         edx,edx
 004AC435    mov         dword ptr [eax+0C],edx
 004AC438    pop         esi
 004AC439    pop         ecx
 004AC43A    pop         ecx
 004AC43B    pop         ebp
 004AC43C    ret
end;*}

//004AC440
{*procedure TTrackBar.sub_004AC440(?:?);
begin
 004AC440    push        ebp
 004AC441    mov         ebp,esp
 004AC443    add         esp,0FFFFFFF8
 004AC446    push        esi
 004AC447    mov         dword ptr [ebp-8],edx
 004AC44A    mov         dword ptr [ebp-4],eax
 004AC44D    mov         edx,dword ptr [ebp-8]
 004AC450    mov         eax,dword ptr [ebp-4]
 004AC453    mov         ecx,dword ptr [eax]
 004AC455    call        dword ptr [ecx-10];TTrackBar.DefaultHandler
 004AC458    push        0
 004AC45A    push        0
 004AC45C    push        400
 004AC461    mov         eax,dword ptr [ebp-4]
 004AC464    call        TWinControl.GetHandle
 004AC469    push        eax
 004AC46A    call        user32.SendMessageA
 004AC46F    mov         edx,dword ptr [ebp-4]
 004AC472    mov         dword ptr [edx+228],eax;TTrackBar.Position:Integer
 004AC478    mov         eax,dword ptr [ebp-4]
 004AC47B    mov         si,0FFB3
 004AC47F    call        @CallDynaInst;TTrackBar.sub_004ACAA8
 004AC484    mov         eax,dword ptr [ebp-8]
 004AC487    xor         edx,edx
 004AC489    mov         dword ptr [eax+0C],edx
 004AC48C    pop         esi
 004AC48D    pop         ecx
 004AC48E    pop         ecx
 004AC48F    pop         ebp
 004AC490    ret
end;*}

//004AC494
{*function TTrackBar.GetThumbLength:?;
begin
 004AC494    push        ebp
 004AC495    mov         ebp,esp
 004AC497    add         esp,0FFFFFFF8
 004AC49A    mov         dword ptr [ebp-4],eax
 004AC49D    mov         eax,dword ptr [ebp-4]
 004AC4A0    call        TWinControl.HandleAllocated
 004AC4A5    test        al,al
>004AC4A7    je          004AC4C5
 004AC4A9    push        0
 004AC4AB    push        0
 004AC4AD    push        41C
 004AC4B2    mov         eax,dword ptr [ebp-4]
 004AC4B5    call        TWinControl.GetHandle
 004AC4BA    push        eax
 004AC4BB    call        user32.SendMessageA
 004AC4C0    mov         dword ptr [ebp-8],eax
>004AC4C3    jmp         004AC4D1
 004AC4C5    mov         eax,dword ptr [ebp-4]
 004AC4C8    mov         eax,dword ptr [eax+214];TTrackBar.FThumbLength:Integer
 004AC4CE    mov         dword ptr [ebp-8],eax
 004AC4D1    mov         eax,dword ptr [ebp-8]
 004AC4D4    pop         ecx
 004AC4D5    pop         ecx
 004AC4D6    pop         ebp
 004AC4D7    ret
end;*}

//004AC4D8
procedure TTrackBar.SetOrientation(Value:TTrackBarOrientation);
begin
{*
 004AC4D8    push        ebp
 004AC4D9    mov         ebp,esp
 004AC4DB    add         esp,0FFFFFFF8
 004AC4DE    push        ebx
 004AC4DF    mov         byte ptr [ebp-5],dl
 004AC4E2    mov         dword ptr [ebp-4],eax
 004AC4E5    mov         al,byte ptr [ebp-5]
 004AC4E8    mov         edx,dword ptr [ebp-4]
 004AC4EB    cmp         al,byte ptr [edx+208];TTrackBar.Orientation:TTrackBarOrientation
>004AC4F1    je          004AC545
 004AC4F3    mov         al,byte ptr [ebp-5]
 004AC4F6    mov         edx,dword ptr [ebp-4]
 004AC4F9    mov         byte ptr [edx+208],al;TTrackBar.Orientation:TTrackBarOrientation
 004AC4FF    mov         ax,[004AC54C];0x41 gvar_004AC54C
 004AC505    mov         edx,dword ptr [ebp-4]
 004AC508    and         ax,word ptr [edx+1C];TTrackBar.FComponentState:TComponentState
 004AC50C    mov         dx,word ptr ds:[4AC550];0x0 gvar_004AC550
 004AC513    cmp         dx,ax
>004AC516    jne         004AC53D
 004AC518    mov         eax,dword ptr [ebp-4]
 004AC51B    mov         eax,dword ptr [eax+4C];TTrackBar.Height:Integer
 004AC51E    push        eax
 004AC51F    mov         eax,dword ptr [ebp-4]
 004AC522    mov         eax,dword ptr [eax+48];TTrackBar.Width:Integer
 004AC525    push        eax
 004AC526    mov         eax,dword ptr [ebp-4]
 004AC529    mov         ecx,dword ptr [eax+44];TTrackBar.Top:Integer
 004AC52C    mov         eax,dword ptr [ebp-4]
 004AC52F    mov         edx,dword ptr [eax+40];TTrackBar.Left:Integer
 004AC532    mov         eax,dword ptr [ebp-4]
 004AC535    mov         ebx,dword ptr [eax]
 004AC537    call        dword ptr [ebx+84];TWinControl.SetBounds
 004AC53D    mov         eax,dword ptr [ebp-4]
 004AC540    call        TWinControl.RecreateWnd
 004AC545    pop         ebx
 004AC546    pop         ecx
 004AC547    pop         ecx
 004AC548    pop         ebp
 004AC549    ret
*}
end;

//004AC554
{*procedure sub_004AC554(?:TTrackBar; ?:Integer; ?:Integer; ?:?);
begin
 004AC554    push        ebp
 004AC555    mov         ebp,esp
 004AC557    add         esp,0FFFFFEE8
 004AC55D    push        ebx
 004AC55E    push        esi
 004AC55F    xor         ebx,ebx
 004AC561    mov         dword ptr [ebp-118],ebx
 004AC567    mov         dword ptr [ebp-0C],ecx
 004AC56A    mov         dword ptr [ebp-8],edx
 004AC56D    mov         dword ptr [ebp-4],eax
 004AC570    xor         eax,eax
 004AC572    push        ebp
 004AC573    push        4AC71B
 004AC578    push        dword ptr fs:[eax]
 004AC57B    mov         dword ptr fs:[eax],esp
 004AC57E    mov         eax,dword ptr [ebp+8]
 004AC581    cmp         eax,dword ptr [ebp-0C]
>004AC584    jge         004AC5D0
 004AC586    lea         edx,[ebp-114]
 004AC58C    mov         eax,dword ptr [ebp-4]
 004AC58F    mov         eax,dword ptr [eax]
 004AC591    call        TObject.ClassName
 004AC596    lea         eax,[ebp-114]
 004AC59C    mov         dword ptr [ebp-14],eax
 004AC59F    mov         byte ptr [ebp-10],4
 004AC5A3    lea         eax,[ebp-14]
 004AC5A6    push        eax
 004AC5A7    push        0
 004AC5A9    lea         edx,[ebp-118]
 004AC5AF    mov         eax,[0055B2B4];^SPropertyOutOfRange:TResStringRec
 004AC5B4    call        LoadResString
 004AC5B9    mov         ecx,dword ptr [ebp-118]
 004AC5BF    mov         dl,1
 004AC5C1    mov         eax,[00475960];EInvalidOperation
 004AC5C6    call        Exception.CreateFmt;EInvalidOperation.Create
 004AC5CB    call        @RaiseExcept
 004AC5D0    mov         eax,dword ptr [ebp-8]
 004AC5D3    cmp         eax,dword ptr [ebp-0C]
>004AC5D6    jge         004AC5DE
 004AC5D8    mov         eax,dword ptr [ebp-0C]
 004AC5DB    mov         dword ptr [ebp-8],eax
 004AC5DE    mov         eax,dword ptr [ebp-8]
 004AC5E1    cmp         eax,dword ptr [ebp+8]
>004AC5E4    jle         004AC5EC
 004AC5E6    mov         eax,dword ptr [ebp+8]
 004AC5E9    mov         dword ptr [ebp-8],eax
 004AC5EC    mov         eax,dword ptr [ebp+8]
 004AC5EF    sub         eax,dword ptr [ebp-0C]
 004AC5F2    cmp         eax,2710
 004AC5F7    setg        al
 004AC5FA    mov         edx,dword ptr [ebp-4]
 004AC5FD    mov         edx,dword ptr [edx+220]
 004AC603    mov         ecx,dword ptr [ebp-4]
 004AC606    sub         edx,dword ptr [ecx+21C]
 004AC60C    cmp         edx,2710
 004AC612    setg        dl
 004AC615    cmp         al,dl
>004AC617    je          004AC639
 004AC619    mov         eax,dword ptr [ebp-0C]
 004AC61C    mov         edx,dword ptr [ebp-4]
 004AC61F    mov         dword ptr [edx+21C],eax
 004AC625    mov         eax,dword ptr [ebp+8]
 004AC628    mov         edx,dword ptr [ebp-4]
 004AC62B    mov         dword ptr [edx+220],eax
 004AC631    mov         eax,dword ptr [ebp-4]
 004AC634    call        TWinControl.RecreateWnd
 004AC639    mov         eax,dword ptr [ebp-4]
 004AC63C    mov         eax,dword ptr [eax+21C]
 004AC642    cmp         eax,dword ptr [ebp-0C]
>004AC645    je          004AC678
 004AC647    mov         eax,dword ptr [ebp-0C]
 004AC64A    mov         edx,dword ptr [ebp-4]
 004AC64D    mov         dword ptr [edx+21C],eax
 004AC653    mov         eax,dword ptr [ebp-4]
 004AC656    call        TWinControl.HandleAllocated
 004AC65B    test        al,al
>004AC65D    je          004AC678
 004AC65F    mov         eax,dword ptr [ebp-0C]
 004AC662    push        eax
 004AC663    push        1
 004AC665    push        407
 004AC66A    mov         eax,dword ptr [ebp-4]
 004AC66D    call        TWinControl.GetHandle
 004AC672    push        eax
 004AC673    call        user32.SendMessageA
 004AC678    mov         eax,dword ptr [ebp-4]
 004AC67B    mov         eax,dword ptr [eax+220]
 004AC681    cmp         eax,dword ptr [ebp+8]
>004AC684    je          004AC6B7
 004AC686    mov         eax,dword ptr [ebp+8]
 004AC689    mov         edx,dword ptr [ebp-4]
 004AC68C    mov         dword ptr [edx+220],eax
 004AC692    mov         eax,dword ptr [ebp-4]
 004AC695    call        TWinControl.HandleAllocated
 004AC69A    test        al,al
>004AC69C    je          004AC6B7
 004AC69E    mov         eax,dword ptr [ebp+8]
 004AC6A1    push        eax
 004AC6A2    push        1
 004AC6A4    push        408
 004AC6A9    mov         eax,dword ptr [ebp-4]
 004AC6AC    call        TWinControl.GetHandle
 004AC6B1    push        eax
 004AC6B2    call        user32.SendMessageA
 004AC6B7    mov         eax,dword ptr [ebp-4]
 004AC6BA    mov         eax,dword ptr [eax+228]
 004AC6C0    cmp         eax,dword ptr [ebp-8]
>004AC6C3    je          004AC702
 004AC6C5    mov         eax,dword ptr [ebp-8]
 004AC6C8    mov         edx,dword ptr [ebp-4]
 004AC6CB    mov         dword ptr [edx+228],eax
 004AC6D1    mov         eax,dword ptr [ebp-4]
 004AC6D4    call        TWinControl.HandleAllocated
 004AC6D9    test        al,al
>004AC6DB    je          004AC6F6
 004AC6DD    mov         eax,dword ptr [ebp-8]
 004AC6E0    push        eax
 004AC6E1    push        1
 004AC6E3    push        405
 004AC6E8    mov         eax,dword ptr [ebp-4]
 004AC6EB    call        TWinControl.GetHandle
 004AC6F0    push        eax
 004AC6F1    call        user32.SendMessageA
 004AC6F6    mov         eax,dword ptr [ebp-4]
 004AC6F9    mov         si,0FFB3
 004AC6FD    call        @CallDynaInst
 004AC702    xor         eax,eax
 004AC704    pop         edx
 004AC705    pop         ecx
 004AC706    pop         ecx
 004AC707    mov         dword ptr fs:[eax],edx
 004AC70A    push        4AC722
 004AC70F    lea         eax,[ebp-118]
 004AC715    call        @LStrClr
 004AC71A    ret
>004AC71B    jmp         @HandleFinally
>004AC720    jmp         004AC70F
 004AC722    pop         esi
 004AC723    pop         ebx
 004AC724    mov         esp,ebp
 004AC726    pop         ebp
 004AC727    ret         4
end;*}

//004AC72C
procedure TTrackBar.SetPosition(Value:Integer);
begin
{*
 004AC72C    push        ebp
 004AC72D    mov         ebp,esp
 004AC72F    add         esp,0FFFFFFF8
 004AC732    mov         dword ptr [ebp-8],edx
 004AC735    mov         dword ptr [ebp-4],eax
 004AC738    mov         eax,dword ptr [ebp-4]
 004AC73B    mov         eax,dword ptr [eax+220];TTrackBar.Max:Integer
 004AC741    push        eax
 004AC742    mov         eax,dword ptr [ebp-4]
 004AC745    mov         ecx,dword ptr [eax+21C];TTrackBar.Min:Integer
 004AC74B    mov         edx,dword ptr [ebp-8]
 004AC74E    mov         eax,dword ptr [ebp-4]
 004AC751    call        004AC554
 004AC756    pop         ecx
 004AC757    pop         ecx
 004AC758    pop         ebp
 004AC759    ret
*}
end;

//004AC75C
procedure TTrackBar.SetMin(Value:Integer);
begin
{*
 004AC75C    push        ebp
 004AC75D    mov         ebp,esp
 004AC75F    add         esp,0FFFFFFF8
 004AC762    mov         dword ptr [ebp-8],edx
 004AC765    mov         dword ptr [ebp-4],eax
 004AC768    mov         eax,dword ptr [ebp-8]
 004AC76B    mov         edx,dword ptr [ebp-4]
 004AC76E    cmp         eax,dword ptr [edx+220];TTrackBar.Max:Integer
>004AC774    jg          004AC794
 004AC776    mov         eax,dword ptr [ebp-4]
 004AC779    mov         eax,dword ptr [eax+220];TTrackBar.Max:Integer
 004AC77F    push        eax
 004AC780    mov         ecx,dword ptr [ebp-8]
 004AC783    mov         eax,dword ptr [ebp-4]
 004AC786    mov         edx,dword ptr [eax+228];TTrackBar.Position:Integer
 004AC78C    mov         eax,dword ptr [ebp-4]
 004AC78F    call        004AC554
 004AC794    pop         ecx
 004AC795    pop         ecx
 004AC796    pop         ebp
 004AC797    ret
*}
end;

//004AC798
procedure TTrackBar.SetMax(Value:Integer);
begin
{*
 004AC798    push        ebp
 004AC799    mov         ebp,esp
 004AC79B    add         esp,0FFFFFFF8
 004AC79E    mov         dword ptr [ebp-8],edx
 004AC7A1    mov         dword ptr [ebp-4],eax
 004AC7A4    mov         eax,dword ptr [ebp-8]
 004AC7A7    mov         edx,dword ptr [ebp-4]
 004AC7AA    cmp         eax,dword ptr [edx+21C];TTrackBar.Min:Integer
>004AC7B0    jl          004AC7D0
 004AC7B2    mov         eax,dword ptr [ebp-8]
 004AC7B5    push        eax
 004AC7B6    mov         eax,dword ptr [ebp-4]
 004AC7B9    mov         ecx,dword ptr [eax+21C];TTrackBar.Min:Integer
 004AC7BF    mov         eax,dword ptr [ebp-4]
 004AC7C2    mov         edx,dword ptr [eax+228];TTrackBar.Position:Integer
 004AC7C8    mov         eax,dword ptr [ebp-4]
 004AC7CB    call        004AC554
 004AC7D0    pop         ecx
 004AC7D1    pop         ecx
 004AC7D2    pop         ebp
 004AC7D3    ret
*}
end;

//004AC7D4
procedure TTrackBar.SetFrequency(Value:Integer);
begin
{*
 004AC7D4    push        ebp
 004AC7D5    mov         ebp,esp
 004AC7D7    add         esp,0FFFFFFF8
 004AC7DA    mov         dword ptr [ebp-8],edx
 004AC7DD    mov         dword ptr [ebp-4],eax
 004AC7E0    mov         eax,dword ptr [ebp-8]
 004AC7E3    mov         edx,dword ptr [ebp-4]
 004AC7E6    cmp         eax,dword ptr [edx+224];TTrackBar.Frequency:Integer
>004AC7EC    je          004AC825
 004AC7EE    mov         eax,dword ptr [ebp-8]
 004AC7F1    mov         edx,dword ptr [ebp-4]
 004AC7F4    mov         dword ptr [edx+224],eax;TTrackBar.Frequency:Integer
 004AC7FA    mov         eax,dword ptr [ebp-4]
 004AC7FD    call        TWinControl.HandleAllocated
 004AC802    test        al,al
>004AC804    je          004AC825
 004AC806    push        1
 004AC808    mov         eax,dword ptr [ebp-4]
 004AC80B    mov         eax,dword ptr [eax+224];TTrackBar.Frequency:Integer
 004AC811    push        eax
 004AC812    push        414
 004AC817    mov         eax,dword ptr [ebp-4]
 004AC81A    call        TWinControl.GetHandle
 004AC81F    push        eax
 004AC820    call        user32.SendMessageA
 004AC825    pop         ecx
 004AC826    pop         ecx
 004AC827    pop         ebp
 004AC828    ret
*}
end;

//004AC82C
procedure TTrackBar.SetTickStyle(Value:TTickStyle);
begin
{*
 004AC82C    push        ebp
 004AC82D    mov         ebp,esp
 004AC82F    add         esp,0FFFFFFF8
 004AC832    mov         byte ptr [ebp-5],dl
 004AC835    mov         dword ptr [ebp-4],eax
 004AC838    mov         al,byte ptr [ebp-5]
 004AC83B    mov         edx,dword ptr [ebp-4]
 004AC83E    cmp         al,byte ptr [edx+20A];TTrackBar.TickStyle:TTickStyle
>004AC844    je          004AC85A
 004AC846    mov         al,byte ptr [ebp-5]
 004AC849    mov         edx,dword ptr [ebp-4]
 004AC84C    mov         byte ptr [edx+20A],al;TTrackBar.TickStyle:TTickStyle
 004AC852    mov         eax,dword ptr [ebp-4]
 004AC855    call        TWinControl.RecreateWnd
 004AC85A    pop         ecx
 004AC85B    pop         ecx
 004AC85C    pop         ebp
 004AC85D    ret
*}
end;

//004AC860
procedure TTrackBar.SetTickMarks(Value:TTickMark);
begin
{*
 004AC860    push        ebp
 004AC861    mov         ebp,esp
 004AC863    add         esp,0FFFFFFF8
 004AC866    mov         byte ptr [ebp-5],dl
 004AC869    mov         dword ptr [ebp-4],eax
 004AC86C    mov         al,byte ptr [ebp-5]
 004AC86F    mov         edx,dword ptr [ebp-4]
 004AC872    cmp         al,byte ptr [edx+209];TTrackBar.TickMarks:TTickMark
>004AC878    je          004AC88E
 004AC87A    mov         al,byte ptr [ebp-5]
 004AC87D    mov         edx,dword ptr [ebp-4]
 004AC880    mov         byte ptr [edx+209],al;TTrackBar.TickMarks:TTickMark
 004AC886    mov         eax,dword ptr [ebp-4]
 004AC889    call        TWinControl.RecreateWnd
 004AC88E    pop         ecx
 004AC88F    pop         ecx
 004AC890    pop         ebp
 004AC891    ret
*}
end;

//004AC894
procedure TTrackBar.SetLineSize(Value:Integer);
begin
{*
 004AC894    push        ebp
 004AC895    mov         ebp,esp
 004AC897    add         esp,0FFFFFFF8
 004AC89A    mov         dword ptr [ebp-8],edx
 004AC89D    mov         dword ptr [ebp-4],eax
 004AC8A0    mov         eax,dword ptr [ebp-8]
 004AC8A3    mov         edx,dword ptr [ebp-4]
 004AC8A6    cmp         eax,dword ptr [edx+20C];TTrackBar.LineSize:Integer
>004AC8AC    je          004AC8E5
 004AC8AE    mov         eax,dword ptr [ebp-8]
 004AC8B1    mov         edx,dword ptr [ebp-4]
 004AC8B4    mov         dword ptr [edx+20C],eax;TTrackBar.LineSize:Integer
 004AC8BA    mov         eax,dword ptr [ebp-4]
 004AC8BD    call        TWinControl.HandleAllocated
 004AC8C2    test        al,al
>004AC8C4    je          004AC8E5
 004AC8C6    mov         eax,dword ptr [ebp-4]
 004AC8C9    mov         eax,dword ptr [eax+20C];TTrackBar.LineSize:Integer
 004AC8CF    push        eax
 004AC8D0    push        0
 004AC8D2    push        417
 004AC8D7    mov         eax,dword ptr [ebp-4]
 004AC8DA    call        TWinControl.GetHandle
 004AC8DF    push        eax
 004AC8E0    call        user32.SendMessageA
 004AC8E5    pop         ecx
 004AC8E6    pop         ecx
 004AC8E7    pop         ebp
 004AC8E8    ret
*}
end;

//004AC8EC
procedure TTrackBar.SetPageSize(Value:Integer);
begin
{*
 004AC8EC    push        ebp
 004AC8ED    mov         ebp,esp
 004AC8EF    add         esp,0FFFFFFF8
 004AC8F2    mov         dword ptr [ebp-8],edx
 004AC8F5    mov         dword ptr [ebp-4],eax
 004AC8F8    mov         eax,dword ptr [ebp-8]
 004AC8FB    mov         edx,dword ptr [ebp-4]
 004AC8FE    cmp         eax,dword ptr [edx+210];TTrackBar.PageSize:Integer
>004AC904    je          004AC93D
 004AC906    mov         eax,dword ptr [ebp-8]
 004AC909    mov         edx,dword ptr [ebp-4]
 004AC90C    mov         dword ptr [edx+210],eax;TTrackBar.PageSize:Integer
 004AC912    mov         eax,dword ptr [ebp-4]
 004AC915    call        TWinControl.HandleAllocated
 004AC91A    test        al,al
>004AC91C    je          004AC93D
 004AC91E    mov         eax,dword ptr [ebp-4]
 004AC921    mov         eax,dword ptr [eax+210];TTrackBar.PageSize:Integer
 004AC927    push        eax
 004AC928    push        0
 004AC92A    push        415
 004AC92F    mov         eax,dword ptr [ebp-4]
 004AC932    call        TWinControl.GetHandle
 004AC937    push        eax
 004AC938    call        user32.SendMessageA
 004AC93D    pop         ecx
 004AC93E    pop         ecx
 004AC93F    pop         ebp
 004AC940    ret
*}
end;

//004AC944
procedure TTrackBar.SetThumbLength(Value:Integer);
begin
{*
 004AC944    push        ebp
 004AC945    mov         ebp,esp
 004AC947    add         esp,0FFFFFFF8
 004AC94A    mov         dword ptr [ebp-8],edx
 004AC94D    mov         dword ptr [ebp-4],eax
 004AC950    mov         eax,dword ptr [ebp-8]
 004AC953    mov         edx,dword ptr [ebp-4]
 004AC956    cmp         eax,dword ptr [edx+214];TTrackBar.FThumbLength:Integer
>004AC95C    je          004AC98F
 004AC95E    mov         eax,dword ptr [ebp-8]
 004AC961    mov         edx,dword ptr [ebp-4]
 004AC964    mov         dword ptr [edx+214],eax;TTrackBar.FThumbLength:Integer
 004AC96A    mov         eax,dword ptr [ebp-4]
 004AC96D    call        TWinControl.HandleAllocated
 004AC972    test        al,al
>004AC974    je          004AC98F
 004AC976    push        0
 004AC978    mov         eax,dword ptr [ebp-8]
 004AC97B    push        eax
 004AC97C    push        41B
 004AC981    mov         eax,dword ptr [ebp-4]
 004AC984    call        TWinControl.GetHandle
 004AC989    push        eax
 004AC98A    call        user32.SendMessageA
 004AC98F    pop         ecx
 004AC990    pop         ecx
 004AC991    pop         ebp
 004AC992    ret
*}
end;

//004AC994
procedure TTrackBar.SetSliderVisible(Value:Boolean);
begin
{*
 004AC994    push        ebp
 004AC995    mov         ebp,esp
 004AC997    add         esp,0FFFFFFF8
 004AC99A    mov         byte ptr [ebp-5],dl
 004AC99D    mov         dword ptr [ebp-4],eax
 004AC9A0    mov         eax,dword ptr [ebp-4]
 004AC9A3    mov         al,byte ptr [eax+218];TTrackBar.SliderVisible:Boolean
 004AC9A9    cmp         al,byte ptr [ebp-5]
>004AC9AC    je          004AC9C2
 004AC9AE    mov         al,byte ptr [ebp-5]
 004AC9B1    mov         edx,dword ptr [ebp-4]
 004AC9B4    mov         byte ptr [edx+218],al;TTrackBar.SliderVisible:Boolean
 004AC9BA    mov         eax,dword ptr [ebp-4]
 004AC9BD    call        TWinControl.RecreateWnd
 004AC9C2    pop         ecx
 004AC9C3    pop         ecx
 004AC9C4    pop         ebp
 004AC9C5    ret
*}
end;

//004AC9C8
procedure sub_004AC9C8(?:TTrackBar);
begin
{*
 004AC9C8    push        ebp
 004AC9C9    mov         ebp,esp
 004AC9CB    push        ecx
 004AC9CC    mov         dword ptr [ebp-4],eax
 004AC9CF    mov         eax,dword ptr [ebp-4]
 004AC9D2    call        TWinControl.HandleAllocated
 004AC9D7    test        al,al
>004AC9D9    je          004ACA3B
 004AC9DB    mov         eax,dword ptr [ebp-4]
 004AC9DE    cmp         dword ptr [eax+22C],0;TTrackBar.SelStart:Integer
>004AC9E5    jne         004ACA0C
 004AC9E7    mov         eax,dword ptr [ebp-4]
 004AC9EA    cmp         dword ptr [eax+230],0;TTrackBar.SelEnd:Integer
>004AC9F1    jne         004ACA0C
 004AC9F3    push        0
 004AC9F5    push        1
 004AC9F7    push        413
 004AC9FC    mov         eax,dword ptr [ebp-4]
 004AC9FF    call        TWinControl.GetHandle
 004ACA04    push        eax
 004ACA05    call        user32.SendMessageA
>004ACA0A    jmp         004ACA3B
 004ACA0C    mov         eax,dword ptr [ebp-4]
 004ACA0F    mov         dx,word ptr [eax+230];TTrackBar.SelEnd:Integer
 004ACA16    mov         eax,dword ptr [ebp-4]
 004ACA19    mov         ax,word ptr [eax+22C];TTrackBar.SelStart:Integer
 004ACA20    call        004080B4
 004ACA25    push        eax
 004ACA26    push        1
 004ACA28    push        40A
 004ACA2D    mov         eax,dword ptr [ebp-4]
 004ACA30    call        TWinControl.GetHandle
 004ACA35    push        eax
 004ACA36    call        user32.SendMessageA
 004ACA3B    pop         ecx
 004ACA3C    pop         ebp
 004ACA3D    ret
*}
end;

//004ACA40
procedure TTrackBar.SetSelStart(Value:Integer);
begin
{*
 004ACA40    push        ebp
 004ACA41    mov         ebp,esp
 004ACA43    add         esp,0FFFFFFF8
 004ACA46    mov         dword ptr [ebp-8],edx
 004ACA49    mov         dword ptr [ebp-4],eax
 004ACA4C    mov         eax,dword ptr [ebp-8]
 004ACA4F    mov         edx,dword ptr [ebp-4]
 004ACA52    cmp         eax,dword ptr [edx+22C];TTrackBar.SelStart:Integer
>004ACA58    je          004ACA6E
 004ACA5A    mov         eax,dword ptr [ebp-8]
 004ACA5D    mov         edx,dword ptr [ebp-4]
 004ACA60    mov         dword ptr [edx+22C],eax;TTrackBar.SelStart:Integer
 004ACA66    mov         eax,dword ptr [ebp-4]
 004ACA69    call        004AC9C8
 004ACA6E    pop         ecx
 004ACA6F    pop         ecx
 004ACA70    pop         ebp
 004ACA71    ret
*}
end;

//004ACA74
procedure TTrackBar.SetSelEnd(Value:Integer);
begin
{*
 004ACA74    push        ebp
 004ACA75    mov         ebp,esp
 004ACA77    add         esp,0FFFFFFF8
 004ACA7A    mov         dword ptr [ebp-8],edx
 004ACA7D    mov         dword ptr [ebp-4],eax
 004ACA80    mov         eax,dword ptr [ebp-8]
 004ACA83    mov         edx,dword ptr [ebp-4]
 004ACA86    cmp         eax,dword ptr [edx+230];TTrackBar.SelEnd:Integer
>004ACA8C    je          004ACAA2
 004ACA8E    mov         eax,dword ptr [ebp-8]
 004ACA91    mov         edx,dword ptr [ebp-4]
 004ACA94    mov         dword ptr [edx+230],eax;TTrackBar.SelEnd:Integer
 004ACA9A    mov         eax,dword ptr [ebp-4]
 004ACA9D    call        004AC9C8
 004ACAA2    pop         ecx
 004ACAA3    pop         ecx
 004ACAA4    pop         ebp
 004ACAA5    ret
*}
end;

//004ACAA8
procedure TTrackBar.sub_004ACAA8;
begin
{*
 004ACAA8    push        ebp
 004ACAA9    mov         ebp,esp
 004ACAAB    push        ecx
 004ACAAC    push        ebx
 004ACAAD    mov         dword ptr [ebp-4],eax
 004ACAB0    mov         eax,dword ptr [ebp-4]
 004ACAB3    cmp         word ptr [eax+23A],0;TTrackBar.?f23A:word
>004ACABB    je          004ACACF
 004ACABD    mov         ebx,dword ptr [ebp-4]
 004ACAC0    mov         edx,dword ptr [ebp-4]
 004ACAC3    mov         eax,dword ptr [ebx+23C];TTrackBar.?f23C:dword
 004ACAC9    call        dword ptr [ebx+238];TTrackBar.OnChange
 004ACACF    pop         ebx
 004ACAD0    pop         ecx
 004ACAD1    pop         ebp
 004ACAD2    ret
*}
end;

//004ACAD4
{*procedure TTrackBar.sub_004ACAD4(?:?);
begin
 004ACAD4    push        ebp
 004ACAD5    mov         ebp,esp
 004ACAD7    add         esp,0FFFFFFC0
 004ACADA    push        esi
 004ACADB    mov         dword ptr [ebp-8],edx
 004ACADE    mov         dword ptr [ebp-4],eax
 004ACAE1    call        ThemeServices
 004ACAE6    call        TThemeServices.GetThemesEnabled
 004ACAEB    test        al,al
>004ACAED    je          004ACCBA
 004ACAF3    mov         eax,dword ptr [ebp-8]
 004ACAF6    mov         eax,dword ptr [eax+8]
 004ACAF9    cmp         dword ptr [eax+8],0FFFFFFF4
>004ACAFD    jne         004ACCC5
 004ACB03    mov         eax,dword ptr [ebp-8]
 004ACB06    mov         eax,dword ptr [eax+8]
 004ACB09    mov         dword ptr [ebp-0C],eax
 004ACB0C    mov         eax,dword ptr [ebp-0C]
 004ACB0F    mov         eax,dword ptr [eax+0C]
 004ACB12    dec         eax
>004ACB13    je          004ACB21
 004ACB15    sub         eax,10000
>004ACB1A    je          004ACB30
>004ACB1C    jmp         004ACCB0
 004ACB21    mov         eax,dword ptr [ebp-8]
 004ACB24    mov         dword ptr [eax+0C],20
>004ACB2B    jmp         004ACCC5
 004ACB30    mov         eax,dword ptr [ebp-0C]
 004ACB33    mov         eax,dword ptr [eax+24]
 004ACB36    dec         eax
>004ACB37    je          004ACB43
 004ACB39    sub         eax,2
>004ACB3C    je          004ACBA7
>004ACB3E    jmp         004ACCA6
 004ACB43    lea         edx,[ebp-24]
 004ACB46    mov         eax,dword ptr [ebp-4]
 004ACB49    mov         ecx,dword ptr [eax]
 004ACB4B    call        dword ptr [ecx+44];TTrackBar.sub_004D3A1C
 004ACB4E    mov         eax,dword ptr [ebp-4]
 004ACB51    mov         si,0FFB5
 004ACB55    call        @CallDynaInst;TWinControl.sub_004D3858
 004ACB5A    test        al,al
>004ACB5C    je          004ACB80
 004ACB5E    push        0
 004ACB60    xor         ecx,ecx
 004ACB62    mov         edx,129
 004ACB67    mov         eax,dword ptr [ebp-4]
 004ACB6A    call        004CC7DC
 004ACB6F    test        al,1
>004ACB71    jne         004ACB80
 004ACB73    push        0FF
 004ACB75    push        0FF
 004ACB77    lea         eax,[ebp-24]
 004ACB7A    push        eax
 004ACB7B    call        user32.InflateRect
 004ACB80    push        0
 004ACB82    push        0
 004ACB84    lea         eax,[ebp-24]
 004ACB87    push        eax
 004ACB88    mov         eax,dword ptr [ebp-4]
 004ACB8B    call        TWinControl.GetHandle
 004ACB90    push        eax
 004ACB91    call        ThemeServices
 004ACB96    mov         edx,dword ptr [ebp-0C]
 004ACB99    mov         ecx,dword ptr [edx+10]
 004ACB9C    pop         edx
 004ACB9D    call        004B6520
>004ACBA2    jmp         004ACCA6
 004ACBA7    lea         eax,[ebp-24]
 004ACBAA    push        eax
 004ACBAB    push        0
 004ACBAD    push        419
 004ACBB2    mov         eax,dword ptr [ebp-4]
 004ACBB5    call        TWinControl.GetHandle
 004ACBBA    push        eax
 004ACBBB    call        user32.SendMessageA
 004ACBC0    xor         eax,eax
 004ACBC2    mov         dword ptr [ebp-14],eax
 004ACBC5    mov         eax,dword ptr [ebp-4]
 004ACBC8    mov         si,0FFB5
 004ACBCC    call        @CallDynaInst;TWinControl.sub_004D3858
 004ACBD1    test        al,al
>004ACBD3    je          004ACBD8
 004ACBD5    inc         dword ptr [ebp-14]
 004ACBD8    mov         eax,dword ptr [ebp-4]
 004ACBDB    cmp         byte ptr [eax+208],0;TTrackBar.Orientation:TTrackBarOrientation
>004ACBE2    jne         004ACC0E
 004ACBE4    lea         edx,[ebp-40]
 004ACBE7    mov         eax,dword ptr [ebp-4]
 004ACBEA    mov         ecx,dword ptr [eax]
 004ACBEC    call        dword ptr [ecx+44];TTrackBar.sub_004D3A1C
 004ACBEF    mov         eax,dword ptr [ebp-40]
 004ACBF2    add         eax,dword ptr [ebp-14]
 004ACBF5    mov         dword ptr [ebp-24],eax
 004ACBF8    lea         edx,[ebp-40]
 004ACBFB    mov         eax,dword ptr [ebp-4]
 004ACBFE    mov         ecx,dword ptr [eax]
 004ACC00    call        dword ptr [ecx+44];TTrackBar.sub_004D3A1C
 004ACC03    mov         eax,dword ptr [ebp-38]
 004ACC06    sub         eax,dword ptr [ebp-14]
 004ACC09    mov         dword ptr [ebp-1C],eax
>004ACC0C    jmp         004ACC36
 004ACC0E    lea         edx,[ebp-40]
 004ACC11    mov         eax,dword ptr [ebp-4]
 004ACC14    mov         ecx,dword ptr [eax]
 004ACC16    call        dword ptr [ecx+44];TTrackBar.sub_004D3A1C
 004ACC19    mov         eax,dword ptr [ebp-3C]
 004ACC1C    add         eax,dword ptr [ebp-14]
 004ACC1F    mov         dword ptr [ebp-20],eax
 004ACC22    lea         edx,[ebp-40]
 004ACC25    mov         eax,dword ptr [ebp-4]
 004ACC28    mov         ecx,dword ptr [eax]
 004ACC2A    call        dword ptr [ecx+44];TTrackBar.sub_004D3A1C
 004ACC2D    mov         eax,dword ptr [ebp-34]
 004ACC30    sub         eax,dword ptr [ebp-14]
 004ACC33    mov         dword ptr [ebp-18],eax
 004ACC36    mov         eax,dword ptr [ebp-18]
 004ACC39    push        eax
 004ACC3A    mov         eax,dword ptr [ebp-1C]
 004ACC3D    push        eax
 004ACC3E    mov         eax,dword ptr [ebp-20]
 004ACC41    push        eax
 004ACC42    mov         eax,dword ptr [ebp-24]
 004ACC45    push        eax
 004ACC46    call        gdi32.CreateRectRgn
 004ACC4B    mov         dword ptr [ebp-10],eax
 004ACC4E    mov         eax,dword ptr [ebp-10]
 004ACC51    push        eax
 004ACC52    mov         eax,dword ptr [ebp-0C]
 004ACC55    mov         eax,dword ptr [eax+10]
 004ACC58    push        eax
 004ACC59    call        gdi32.SelectClipRgn
 004ACC5E    call        ThemeServices
 004ACC63    lea         ecx,[ebp-30]
 004ACC66    mov         dl,22
 004ACC68    call        004B69F4
 004ACC6D    lea         eax,[ebp-30]
 004ACC70    push        eax
 004ACC71    push        0
 004ACC73    push        0
 004ACC75    mov         eax,dword ptr [ebp-4]
 004ACC78    call        TWinControl.GetHandle
 004ACC7D    push        eax
 004ACC7E    call        ThemeServices
 004ACC83    mov         edx,dword ptr [ebp-0C]
 004ACC86    mov         ecx,dword ptr [edx+10]
 004ACC89    pop         edx
 004ACC8A    call        004B6520
 004ACC8F    mov         eax,dword ptr [ebp-10]
 004ACC92    push        eax
 004ACC93    call        gdi32.DeleteObject
 004ACC98    push        0
 004ACC9A    mov         eax,dword ptr [ebp-0C]
 004ACC9D    mov         eax,dword ptr [eax+10]
 004ACCA0    push        eax
 004ACCA1    call        gdi32.SelectClipRgn
 004ACCA6    mov         eax,dword ptr [ebp-8]
 004ACCA9    xor         edx,edx
 004ACCAB    mov         dword ptr [eax+0C],edx
>004ACCAE    jmp         004ACCC5
 004ACCB0    mov         eax,dword ptr [ebp-8]
 004ACCB3    xor         edx,edx
 004ACCB5    mov         dword ptr [eax+0C],edx
>004ACCB8    jmp         004ACCC5
 004ACCBA    mov         edx,dword ptr [ebp-8]
 004ACCBD    mov         eax,dword ptr [ebp-4]
 004ACCC0    mov         ecx,dword ptr [eax]
 004ACCC2    call        dword ptr [ecx-10];TTrackBar.DefaultHandler
 004ACCC5    pop         esi
 004ACCC6    mov         esp,ebp
 004ACCC8    pop         ebp
 004ACCC9    ret
end;*}

//004ACCCC
{*procedure TTrackBar.WMEraseBkgnd(?:?);
begin
 004ACCCC    push        ebp
 004ACCCD    mov         ebp,esp
 004ACCCF    add         esp,0FFFFFFE8
 004ACCD2    push        esi
 004ACCD3    mov         dword ptr [ebp-8],edx
 004ACCD6    mov         dword ptr [ebp-4],eax
 004ACCD9    call        ThemeServices
 004ACCDE    call        TThemeServices.GetThemesEnabled
 004ACCE3    test        al,al
>004ACCE5    je          004ACD52
 004ACCE7    lea         edx,[ebp-18]
 004ACCEA    mov         eax,dword ptr [ebp-4]
 004ACCED    mov         ecx,dword ptr [eax]
 004ACCEF    call        dword ptr [ecx+44];TTrackBar.sub_004D3A1C
 004ACCF2    mov         eax,dword ptr [ebp-4]
 004ACCF5    mov         si,0FFB5
 004ACCF9    call        @CallDynaInst;TWinControl.sub_004D3858
 004ACCFE    test        al,al
>004ACD00    je          004ACD24
 004ACD02    push        0
 004ACD04    xor         ecx,ecx
 004ACD06    mov         edx,129
 004ACD0B    mov         eax,dword ptr [ebp-4]
 004ACD0E    call        004CC7DC
 004ACD13    test        al,1
>004ACD15    jne         004ACD24
 004ACD17    push        0FF
 004ACD19    push        0FF
 004ACD1B    lea         eax,[ebp-18]
 004ACD1E    push        eax
 004ACD1F    call        user32.InflateRect
 004ACD24    push        0
 004ACD26    push        0
 004ACD28    lea         eax,[ebp-18]
 004ACD2B    push        eax
 004ACD2C    mov         eax,dword ptr [ebp-4]
 004ACD2F    call        TWinControl.GetHandle
 004ACD34    push        eax
 004ACD35    call        ThemeServices
 004ACD3A    mov         ecx,dword ptr [ebp-8]
 004ACD3D    mov         ecx,dword ptr [ecx+4]
 004ACD40    pop         edx
 004ACD41    call        004B6520
 004ACD46    mov         eax,dword ptr [ebp-8]
 004ACD49    mov         dword ptr [eax+0C],1
>004ACD50    jmp         004ACD5D
 004ACD52    mov         edx,dword ptr [ebp-8]
 004ACD55    mov         eax,dword ptr [ebp-4]
 004ACD58    call        TWinControl.WMEraseBkgnd
 004ACD5D    pop         esi
 004ACD5E    mov         esp,ebp
 004ACD60    pop         ebp
 004ACD61    ret
end;*}

//004ACD64
{*function sub_004ACD64(?:?; ?:?; ?:?):?;
begin
 004ACD64    push        ebp
 004ACD65    mov         ebp,esp
 004ACD67    add         esp,0FFFFFFF0
 004ACD6A    push        ebx
 004ACD6B    mov         dword ptr [ebp-0C],ecx
 004ACD6E    mov         dword ptr [ebp-8],edx
 004ACD71    mov         dword ptr [ebp-4],eax
 004ACD74    mov         edx,dword ptr [ebp-0C]
 004ACD77    mov         ecx,dword ptr [ebp+8]
 004ACD7A    mov         eax,dword ptr [ebp-8]
 004ACD7D    mov         ebx,dword ptr [eax]
 004ACD7F    call        dword ptr [ebx+0C]
 004ACD82    mov         dword ptr [ebp-10],eax
 004ACD85    mov         eax,dword ptr [ebp-10]
 004ACD88    pop         ebx
 004ACD89    mov         esp,ebp
 004ACD8B    pop         ebp
 004ACD8C    ret         4
end;*}

//004ACD90
{*function sub_004ACD90(?:?; ?:?; ?:?):?;
begin
 004ACD90    push        ebp
 004ACD91    mov         ebp,esp
 004ACD93    add         esp,0FFFFFFF0
 004ACD96    push        ebx
 004ACD97    mov         dword ptr [ebp-0C],ecx
 004ACD9A    mov         dword ptr [ebp-8],edx
 004ACD9D    mov         dword ptr [ebp-4],eax
 004ACDA0    mov         edx,dword ptr [ebp-0C]
 004ACDA3    mov         ecx,dword ptr [ebp+8]
 004ACDA6    mov         eax,dword ptr [ebp-8]
 004ACDA9    mov         ebx,dword ptr [eax]
 004ACDAB    call        dword ptr [ebx+10]
 004ACDAE    mov         dword ptr [ebp-10],eax
 004ACDB1    mov         eax,dword ptr [ebp-10]
 004ACDB4    pop         ebx
 004ACDB5    mov         esp,ebp
 004ACDB7    pop         ebp
 004ACDB8    ret         4
end;*}

//004ACDBC
constructor sub_004ACDBC;
begin
{*
 004ACDBC    push        ebp
 004ACDBD    mov         ebp,esp
 004ACDBF    add         esp,0FFFFFFD4
 004ACDC2    test        dl,dl
>004ACDC4    je          004ACDCE
 004ACDC6    add         esp,0FFFFFFF0
 004ACDC9    call        @ClassCreate
 004ACDCE    mov         dword ptr [ebp-0C],ecx
 004ACDD1    mov         byte ptr [ebp-5],dl
 004ACDD4    mov         dword ptr [ebp-4],eax
 004ACDD7    mov         eax,dword ptr [ebp-0C]
 004ACDDA    call        00479B60
 004ACDDF    mov         edx,dword ptr [ebp-4]
 004ACDE2    mov         dword ptr [edx+28],eax;TListColumn.FOrderTag:Integer
 004ACDE5    mov         ecx,dword ptr [ebp-0C]
 004ACDE8    xor         edx,edx
 004ACDEA    mov         eax,dword ptr [ebp-4]
 004ACDED    call        004795A8
 004ACDF2    mov         eax,dword ptr [ebp-4]
 004ACDF5    mov         dword ptr [eax+24],32;TListColumn.FWidth:TWidth
 004ACDFC    mov         eax,dword ptr [ebp-4]
 004ACDFF    mov         byte ptr [eax+0C],0;TListColumn.Alignment:TAlignment
 004ACE03    mov         eax,dword ptr [ebp-4]
 004ACE06    mov         dword ptr [eax+1C],0FFFFFFFF;TListColumn.ImageIndex:TImageIndex
 004ACE0D    mov         dword ptr [ebp-2C],3
 004ACE14    xor         eax,eax
 004ACE16    mov         dword ptr [ebp-28],eax
 004ACE19    mov         eax,dword ptr [ebp-4]
 004ACE1C    mov         eax,dword ptr [eax+24];TListColumn.FWidth:TWidth
 004ACE1F    mov         dword ptr [ebp-24],eax
 004ACE22    mov         eax,dword ptr [ebp-4]
 004ACE25    mov         eax,dword ptr [eax+1C];TListColumn.ImageIndex:TImageIndex
 004ACE28    mov         dword ptr [ebp-14],eax
 004ACE2B    mov         eax,dword ptr [ebp-0C]
 004ACE2E    call        004AD594
 004ACE33    call        TWinControl.HandleAllocated
 004ACE38    test        al,al
>004ACE3A    je          004ACE5B
 004ACE3C    mov         eax,dword ptr [ebp-4]
 004ACE3F    call        TCollectionItem.GetIndex
 004ACE44    push        eax
 004ACE45    mov         eax,dword ptr [ebp-0C]
 004ACE48    call        004AD594
 004ACE4D    call        TWinControl.GetHandle
 004ACE52    lea         ecx,[ebp-2C]
 004ACE55    pop         edx
 004ACE56    call        0042F734
 004ACE5B    mov         eax,dword ptr [ebp-4]
 004ACE5E    cmp         byte ptr [ebp-5],0
>004ACE62    je          004ACE73
 004ACE64    call        @AfterConstruction
 004ACE69    pop         dword ptr fs:[0]
 004ACE70    add         esp,0C
 004ACE73    mov         eax,dword ptr [ebp-4]
 004ACE76    mov         esp,ebp
 004ACE78    pop         ebp
 004ACE79    ret
*}
end;

//004ACE7C
destructor TListColumn.Destroy;
begin
{*
 004ACE7C    push        ebp
 004ACE7D    mov         ebp,esp
 004ACE7F    add         esp,0FFFFFFF4
 004ACE82    call        @BeforeDestruction
 004ACE87    mov         byte ptr [ebp-5],dl
 004ACE8A    mov         dword ptr [ebp-4],eax
 004ACE8D    mov         eax,dword ptr [ebp-4]
 004ACE90    mov         eax,dword ptr [eax+4]
 004ACE93    mov         dword ptr [ebp-0C],eax
 004ACE96    mov         eax,dword ptr [ebp-4]
 004ACE99    mov         eax,dword ptr [eax+4]
 004ACE9C    call        004AD594
 004ACEA1    call        TWinControl.HandleAllocated
 004ACEA6    test        al,al
>004ACEA8    je          004ACEC9
 004ACEAA    mov         eax,dword ptr [ebp-4]
 004ACEAD    call        TCollectionItem.GetIndex
 004ACEB2    push        eax
 004ACEB3    mov         eax,dword ptr [ebp-4]
 004ACEB6    mov         eax,dword ptr [eax+4]
 004ACEB9    call        004AD594
 004ACEBE    call        TWinControl.GetHandle
 004ACEC3    pop         edx
 004ACEC4    call        0042F764
 004ACEC9    mov         dl,byte ptr [ebp-5]
 004ACECC    and         dl,0FC
 004ACECF    mov         eax,dword ptr [ebp-4]
 004ACED2    call        TCollectionItem.Destroy
 004ACED7    mov         eax,dword ptr [ebp-0C]
 004ACEDA    call        004AD608
 004ACEDF    cmp         byte ptr [ebp-5],0
>004ACEE3    jle         004ACEED
 004ACEE5    mov         eax,dword ptr [ebp-4]
 004ACEE8    call        @ClassDestroy
 004ACEED    mov         esp,ebp
 004ACEEF    pop         ebp
 004ACEF0    ret
*}
end;

//004ACEF4
procedure TListColumn.DefineProperties(Filer:TFiler);
begin
{*
 004ACEF4    push        ebp
 004ACEF5    mov         ebp,esp
 004ACEF7    add         esp,0FFFFFFF8
 004ACEFA    push        ebx
 004ACEFB    mov         dword ptr [ebp-8],edx
 004ACEFE    mov         dword ptr [ebp-4],eax
 004ACF01    mov         edx,dword ptr [ebp-8]
 004ACF04    mov         eax,dword ptr [ebp-4]
 004ACF07    call        TPersistent.DefineProperties
 004ACF0C    mov         eax,dword ptr [ebp-4]
 004ACF0F    push        eax
 004ACF10    push        4ACF50
 004ACF15    mov         eax,dword ptr [ebp-4]
 004ACF18    push        eax
 004ACF19    push        4ACF84
 004ACF1E    mov         eax,dword ptr [ebp-4]
 004ACF21    cmp         dword ptr [eax+24],0FFFFFFFF;TListColumn.FWidth:TWidth
 004ACF25    setle       cl
 004ACF28    mov         edx,4ACF44;'WidthType'
 004ACF2D    mov         eax,dword ptr [ebp-8]
 004ACF30    mov         ebx,dword ptr [eax]
 004ACF32    call        dword ptr [ebx+4];@AbstractError
 004ACF35    pop         ebx
 004ACF36    pop         ecx
 004ACF37    pop         ecx
 004ACF38    pop         ebp
 004ACF39    ret
*}
end;

//004ACFB4
{*procedure sub_004ACFB4(?:?);
begin
 004ACFB4    push        ebp
 004ACFB5    mov         ebp,esp
 004ACFB7    add         esp,0FFFFFFF8
 004ACFBA    mov         eax,dword ptr [ebp+8]
 004ACFBD    mov         eax,dword ptr [eax-4]
 004ACFC0    mov         eax,dword ptr [eax+4]
 004ACFC3    call        004AD594
 004ACFC8    mov         dword ptr [ebp-8],eax
 004ACFCB    mov         eax,dword ptr [ebp-8]
 004ACFCE    call        TWinControl.HandleAllocated
 004ACFD3    test        al,al
>004ACFD5    jne         004AD0A9
 004ACFDB    mov         eax,dword ptr [ebp-8]
 004ACFDE    mov         ax,word ptr [eax+1C]
 004ACFE2    and         ax,word ptr ds:[4AD0B0];0x3 gvar_004AD0B0
 004ACFE9    mov         dx,word ptr ds:[4AD0B4];0x0 gvar_004AD0B4
 004ACFF0    cmp         dx,ax
>004ACFF3    jne         004AD0A9
 004ACFF9    mov         eax,dword ptr [ebp-8]
 004ACFFC    cmp         byte ptr [eax+289],0
>004AD003    jne         004AD0A9
 004AD009    mov         eax,dword ptr [ebp-8]
 004AD00C    cmp         dword ptr [eax+248],0
>004AD013    jne         004AD02C
 004AD015    mov         dl,1
 004AD017    mov         eax,[00476368];TMemoryStream
 004AD01C    call        TObject.Create;TMemoryStream.Create
 004AD021    mov         edx,dword ptr [ebp-8]
 004AD024    mov         dword ptr [edx+248],eax
>004AD02A    jmp         004AD03E
 004AD02C    push        0
 004AD02E    push        0
 004AD030    mov         eax,dword ptr [ebp-8]
 004AD033    mov         eax,dword ptr [eax+248]
 004AD039    call        0047BD6C
 004AD03E    push        400
 004AD043    mov         eax,dword ptr [ebp-8]
 004AD046    mov         ecx,dword ptr [eax+248]
 004AD04C    mov         dl,1
 004AD04E    mov         eax,[00476748];TWriter
 004AD053    call        TFiler.Create;TWriter.Create
 004AD058    mov         dword ptr [ebp-4],eax
 004AD05B    xor         eax,eax
 004AD05D    push        ebp
 004AD05E    push        4AD0A2
 004AD063    push        dword ptr fs:[eax]
 004AD066    mov         dword ptr fs:[eax],esp
 004AD069    mov         eax,dword ptr [ebp+8]
 004AD06C    mov         eax,dword ptr [eax-4]
 004AD06F    mov         edx,dword ptr [eax+4]
 004AD072    mov         eax,dword ptr [ebp-4]
 004AD075    call        004801CC
 004AD07A    xor         eax,eax
 004AD07C    pop         edx
 004AD07D    pop         ecx
 004AD07E    pop         ecx
 004AD07F    mov         dword ptr fs:[eax],edx
 004AD082    push        4AD0A9
 004AD087    mov         eax,dword ptr [ebp-4]
 004AD08A    call        TObject.Free
 004AD08F    push        0
 004AD091    push        0
 004AD093    mov         eax,dword ptr [ebp-8]
 004AD096    mov         eax,dword ptr [eax+248]
 004AD09C    call        0047BCF4
 004AD0A1    ret
>004AD0A2    jmp         @HandleFinally
>004AD0A7    jmp         004AD087
 004AD0A9    pop         ecx
 004AD0AA    pop         ecx
 004AD0AB    pop         ebp
 004AD0AC    ret
end;*}

//004AD0B8
procedure sub_004AD0B8(?:TListColumn);
begin
{*
 004AD0B8    push        ebp
 004AD0B9    mov         ebp,esp
 004AD0BB    add         esp,0FFFFFFF4
 004AD0BE    mov         dword ptr [ebp-4],eax
 004AD0C1    mov         eax,dword ptr [ebp-4]
 004AD0C4    mov         eax,dword ptr [eax+4]
 004AD0C7    call        00479B60
 004AD0CC    dec         eax
 004AD0CD    test        eax,eax
>004AD0CF    jl          004AD0F8
 004AD0D1    inc         eax
 004AD0D2    mov         dword ptr [ebp-0C],eax
 004AD0D5    mov         dword ptr [ebp-8],0
 004AD0DC    mov         eax,dword ptr [ebp-4]
 004AD0DF    mov         eax,dword ptr [eax+4]
 004AD0E2    mov         edx,dword ptr [ebp-8]
 004AD0E5    call        00479B7C
 004AD0EA    cmp         dword ptr [eax+24],0FFFFFFFF
>004AD0EE    jle         004AD0F8
 004AD0F0    inc         dword ptr [ebp-8]
 004AD0F3    dec         dword ptr [ebp-0C]
>004AD0F6    jne         004AD0DC
 004AD0F8    mov         eax,dword ptr [ebp-4]
 004AD0FB    mov         eax,dword ptr [eax+4]
 004AD0FE    call        00479B60
 004AD103    cmp         eax,dword ptr [ebp-8]
 004AD106    setne       dl
 004AD109    mov         eax,dword ptr [ebp-4]
 004AD10C    call        0047962C
 004AD111    push        ebp
 004AD112    call        004ACFB4
 004AD117    pop         ecx
 004AD118    mov         esp,ebp
 004AD11A    pop         ebp
 004AD11B    ret
*}
end;

//004AD140
{*procedure sub_004AD140(?:?);
begin
 004AD140    push        ebp
 004AD141    mov         ebp,esp
 004AD143    add         esp,0FFFFFFEC
 004AD146    xor         ecx,ecx
 004AD148    mov         dword ptr [ebp-0C],ecx
 004AD14B    mov         dword ptr [ebp-8],edx
 004AD14E    mov         dword ptr [ebp-4],eax
 004AD151    xor         eax,eax
 004AD153    push        ebp
 004AD154    push        4AD20A
 004AD159    push        dword ptr fs:[eax]
 004AD15C    mov         dword ptr fs:[eax],esp
 004AD15F    mov         edx,dword ptr [ebp-8]
 004AD162    mov         eax,dword ptr [ebp-4]
 004AD165    call        0047981C
 004AD16A    mov         eax,dword ptr [ebp-4]
 004AD16D    mov         eax,dword ptr [eax+4];TListColumn.FCollection:TCollection
 004AD170    call        00479B60
 004AD175    push        eax
 004AD176    lea         eax,[ebp-0C]
 004AD179    mov         ecx,1
 004AD17E    mov         edx,dword ptr ds:[4AD11C];_DynArr_68_86
 004AD184    call        @DynArraySetLength
 004AD189    add         esp,4
 004AD18C    mov         eax,dword ptr [ebp-4]
 004AD18F    mov         eax,dword ptr [eax+4];TListColumn.FCollection:TCollection
 004AD192    call        00479B60
 004AD197    dec         eax
 004AD198    test        eax,eax
>004AD19A    jl          004AD1C9
 004AD19C    inc         eax
 004AD19D    mov         dword ptr [ebp-14],eax
 004AD1A0    mov         dword ptr [ebp-10],0
 004AD1A7    mov         edx,dword ptr [ebp-10]
 004AD1AA    mov         eax,dword ptr [ebp-4]
 004AD1AD    mov         eax,dword ptr [eax+4];TListColumn.FCollection:TCollection
 004AD1B0    call        00479B7C
 004AD1B5    mov         eax,dword ptr [eax+28]
 004AD1B8    mov         edx,dword ptr [ebp-0C]
 004AD1BB    mov         ecx,dword ptr [ebp-10]
 004AD1BE    mov         dword ptr [edx+ecx*4],eax
 004AD1C1    inc         dword ptr [ebp-10]
 004AD1C4    dec         dword ptr [ebp-14]
>004AD1C7    jne         004AD1A7
 004AD1C9    mov         eax,dword ptr [ebp-4]
 004AD1CC    mov         eax,dword ptr [eax+4];TListColumn.FCollection:TCollection
 004AD1CF    call        00479B60
 004AD1D4    push        eax
 004AD1D5    mov         eax,dword ptr [ebp-4]
 004AD1D8    mov         eax,dword ptr [eax+4];TListColumn.FCollection:TCollection
 004AD1DB    call        004AD594
 004AD1E0    call        TWinControl.GetHandle
 004AD1E5    mov         ecx,dword ptr [ebp-0C]
 004AD1E8    pop         edx
 004AD1E9    call        0042FAFC
 004AD1EE    xor         eax,eax
 004AD1F0    pop         edx
 004AD1F1    pop         ecx
 004AD1F2    pop         ecx
 004AD1F3    mov         dword ptr fs:[eax],edx
 004AD1F6    push        4AD211
 004AD1FB    lea         eax,[ebp-0C]
 004AD1FE    mov         edx,dword ptr ds:[4AD11C];_DynArr_68_86
 004AD204    call        @DynArrayClear
 004AD209    ret
>004AD20A    jmp         @HandleFinally
>004AD20F    jmp         004AD1FB
 004AD211    mov         esp,ebp
 004AD213    pop         ebp
 004AD214    ret
end;*}

//004AD218
procedure TListColumn.SetCaption(Value:String);
begin
{*
 004AD218    push        ebp
 004AD219    mov         ebp,esp
 004AD21B    add         esp,0FFFFFFF8
 004AD21E    mov         dword ptr [ebp-8],edx
 004AD221    mov         dword ptr [ebp-4],eax
 004AD224    mov         eax,dword ptr [ebp-4]
 004AD227    mov         eax,dword ptr [eax+10];TListColumn.Caption:String
 004AD22A    mov         edx,dword ptr [ebp-8]
 004AD22D    call        @LStrCmp
>004AD232    je          004AD24A
 004AD234    mov         eax,dword ptr [ebp-4]
 004AD237    add         eax,10;TListColumn.Caption:String
 004AD23A    mov         edx,dword ptr [ebp-8]
 004AD23D    call        @LStrAsg
 004AD242    mov         eax,dword ptr [ebp-4]
 004AD245    call        004AD0B8
 004AD24A    pop         ecx
 004AD24B    pop         ecx
 004AD24C    pop         ebp
 004AD24D    ret
*}
end;

//004AD250
{*function TListColumn.GetWidth:?;
begin
 004AD250    push        ebp
 004AD251    mov         ebp,esp
 004AD253    add         esp,0FFFFFFF8
 004AD256    mov         dword ptr [ebp-4],eax
 004AD259    mov         eax,dword ptr [ebp-4]
 004AD25C    cmp         dword ptr [eax+24],0;TListColumn.FWidth:TWidth
>004AD260    jne         004AD287
 004AD262    mov         eax,dword ptr [ebp-4]
 004AD265    call        TCollectionItem.GetIndex
 004AD26A    push        eax
 004AD26B    mov         eax,dword ptr [ebp-4]
 004AD26E    mov         eax,dword ptr [eax+4];TListColumn.FCollection:TCollection
 004AD271    call        004AD594
 004AD276    call        TWinControl.GetHandle
 004AD27B    pop         edx
 004AD27C    call        0042F790
 004AD281    mov         edx,dword ptr [ebp-4]
 004AD284    mov         dword ptr [edx+24],eax;TListColumn.FWidth:TWidth
 004AD287    mov         eax,dword ptr [ebp-4]
 004AD28A    mov         eax,dword ptr [eax+24];TListColumn.FWidth:TWidth
 004AD28D    mov         dword ptr [ebp-8],eax
 004AD290    mov         eax,dword ptr [ebp-8]
 004AD293    pop         ecx
 004AD294    pop         ecx
 004AD295    pop         ebp
 004AD296    ret
end;*}

//004AD298
function TListColumn.IsStoredWidth(Value:TWidth):Boolean;
begin
{*
 004AD298    push        ebp
 004AD299    mov         ebp,esp
 004AD29B    add         esp,0FFFFFFF8
 004AD29E    mov         dword ptr [ebp-4],eax
 004AD2A1    mov         eax,dword ptr [ebp-4]
 004AD2A4    mov         al,byte ptr [eax+0D];TListColumn.AutoSize:Boolean
 004AD2A7    xor         al,1
 004AD2A9    mov         byte ptr [ebp-5],al
 004AD2AC    mov         al,byte ptr [ebp-5]
 004AD2AF    pop         ecx
 004AD2B0    pop         ecx
 004AD2B1    pop         ebp
 004AD2B2    ret
*}
end;

//004AD2B4
procedure TListColumn.SetWidth(Value:TWidth);
begin
{*
 004AD2B4    push        ebp
 004AD2B5    mov         ebp,esp
 004AD2B7    add         esp,0FFFFFFF8
 004AD2BA    mov         dword ptr [ebp-8],edx
 004AD2BD    mov         dword ptr [ebp-4],eax
 004AD2C0    mov         eax,dword ptr [ebp-4]
 004AD2C3    mov         eax,dword ptr [eax+24];TListColumn.FWidth:TWidth
 004AD2C6    cmp         eax,dword ptr [ebp-8]
>004AD2C9    je          004AD315
 004AD2CB    mov         eax,dword ptr [ebp-8]
 004AD2CE    mov         edx,dword ptr [ebp-4]
 004AD2D1    cmp         eax,dword ptr [edx+18];TListColumn.MinWidth:TWidth
>004AD2D4    jge         004AD2E7
 004AD2D6    cmp         dword ptr [ebp-8],0
>004AD2DA    jl          004AD2E7
 004AD2DC    mov         eax,dword ptr [ebp-4]
 004AD2DF    mov         eax,dword ptr [eax+18];TListColumn.MinWidth:TWidth
 004AD2E2    mov         dword ptr [ebp-8],eax
>004AD2E5    jmp         004AD304
 004AD2E7    mov         eax,dword ptr [ebp-4]
 004AD2EA    cmp         dword ptr [eax+14],0;TListColumn.MaxWidth:TWidth
>004AD2EE    jle         004AD304
 004AD2F0    mov         eax,dword ptr [ebp-8]
 004AD2F3    mov         edx,dword ptr [ebp-4]
 004AD2F6    cmp         eax,dword ptr [edx+14];TListColumn.MaxWidth:TWidth
>004AD2F9    jle         004AD304
 004AD2FB    mov         eax,dword ptr [ebp-4]
 004AD2FE    mov         eax,dword ptr [eax+14];TListColumn.MaxWidth:TWidth
 004AD301    mov         dword ptr [ebp-8],eax
 004AD304    mov         eax,dword ptr [ebp-8]
 004AD307    mov         edx,dword ptr [ebp-4]
 004AD30A    mov         dword ptr [edx+24],eax;TListColumn.FWidth:TWidth
 004AD30D    mov         eax,dword ptr [ebp-4]
 004AD310    call        004AD0B8
 004AD315    pop         ecx
 004AD316    pop         ecx
 004AD317    pop         ebp
 004AD318    ret
*}
end;

//004AD31C
procedure TListColumn.SetAlignment(Value:TAlignment);
begin
{*
 004AD31C    push        ebp
 004AD31D    mov         ebp,esp
 004AD31F    add         esp,0FFFFFFF8
 004AD322    mov         byte ptr [ebp-5],dl
 004AD325    mov         dword ptr [ebp-4],eax
 004AD328    mov         eax,dword ptr [ebp-4]
 004AD32B    mov         al,byte ptr [eax+0C];TListColumn.Alignment:TAlignment
 004AD32E    cmp         al,byte ptr [ebp-5]
>004AD331    je          004AD365
 004AD333    mov         eax,dword ptr [ebp-4]
 004AD336    call        TCollectionItem.GetIndex
 004AD33B    test        eax,eax
>004AD33D    je          004AD365
 004AD33F    mov         al,byte ptr [ebp-5]
 004AD342    mov         edx,dword ptr [ebp-4]
 004AD345    mov         byte ptr [edx+0C],al;TListColumn.Alignment:TAlignment
 004AD348    xor         edx,edx
 004AD34A    mov         eax,dword ptr [ebp-4]
 004AD34D    call        0047962C
 004AD352    mov         eax,dword ptr [ebp-4]
 004AD355    mov         eax,dword ptr [eax+4];TListColumn.FCollection:TCollection
 004AD358    call        004AD594
 004AD35D    mov         edx,dword ptr [eax]
 004AD35F    call        dword ptr [edx+80]
 004AD365    pop         ecx
 004AD366    pop         ecx
 004AD367    pop         ebp
 004AD368    ret
*}
end;

//004AD36C
procedure TListColumn.SetAutoSize(Value:Boolean);
begin
{*
 004AD36C    push        ebp
 004AD36D    mov         ebp,esp
 004AD36F    add         esp,0FFFFFFF8
 004AD372    push        esi
 004AD373    mov         byte ptr [ebp-5],dl
 004AD376    mov         dword ptr [ebp-4],eax
 004AD379    mov         eax,dword ptr [ebp-4]
 004AD37C    mov         al,byte ptr [eax+0D];TListColumn.AutoSize:Boolean
 004AD37F    cmp         al,byte ptr [ebp-5]
>004AD382    je          004AD3B8
 004AD384    mov         al,byte ptr [ebp-5]
 004AD387    mov         edx,dword ptr [ebp-4]
 004AD38A    mov         byte ptr [edx+0D],al;TListColumn.AutoSize:Boolean
 004AD38D    mov         eax,dword ptr [ebp-4]
 004AD390    mov         eax,dword ptr [eax+4];TListColumn.FCollection:TCollection
 004AD393    call        004AD594
 004AD398    test        eax,eax
>004AD39A    je          004AD3B0
 004AD39C    mov         eax,dword ptr [ebp-4]
 004AD39F    mov         eax,dword ptr [eax+4];TListColumn.FCollection:TCollection
 004AD3A2    call        004AD594
 004AD3A7    mov         si,0FFEE
 004AD3AB    call        @CallDynaInst
 004AD3B0    mov         eax,dword ptr [ebp-4]
 004AD3B3    call        004AD0B8
 004AD3B8    pop         esi
 004AD3B9    pop         ecx
 004AD3BA    pop         ecx
 004AD3BB    pop         ebp
 004AD3BC    ret
*}
end;

//004AD3C0
procedure TListColumn.SetImageIndex(Value:TImageIndex);
begin
{*
 004AD3C0    push        ebp
 004AD3C1    mov         ebp,esp
 004AD3C3    add         esp,0FFFFFFF8
 004AD3C6    mov         dword ptr [ebp-8],edx
 004AD3C9    mov         dword ptr [ebp-4],eax
 004AD3CC    mov         eax,dword ptr [ebp-4]
 004AD3CF    mov         eax,dword ptr [eax+1C];TListColumn.ImageIndex:TImageIndex
 004AD3D2    cmp         eax,dword ptr [ebp-8]
>004AD3D5    je          004AD3E8
 004AD3D7    mov         eax,dword ptr [ebp-8]
 004AD3DA    mov         edx,dword ptr [ebp-4]
 004AD3DD    mov         dword ptr [edx+1C],eax;TListColumn.ImageIndex:TImageIndex
 004AD3E0    mov         eax,dword ptr [ebp-4]
 004AD3E3    call        004AD0B8
 004AD3E8    pop         ecx
 004AD3E9    pop         ecx
 004AD3EA    pop         ebp
 004AD3EB    ret
*}
end;

//004AD3EC
procedure TListColumn.SetMaxWidth(Value:TWidth);
begin
{*
 004AD3EC    push        ebp
 004AD3ED    mov         ebp,esp
 004AD3EF    add         esp,0FFFFFFF8
 004AD3F2    mov         dword ptr [ebp-8],edx
 004AD3F5    mov         dword ptr [ebp-4],eax
 004AD3F8    mov         eax,dword ptr [ebp-4]
 004AD3FB    mov         eax,dword ptr [eax+14];TListColumn.MaxWidth:TWidth
 004AD3FE    cmp         eax,dword ptr [ebp-8]
>004AD401    je          004AD416
 004AD403    mov         eax,dword ptr [ebp-8]
 004AD406    mov         edx,dword ptr [ebp-4]
 004AD409    mov         dword ptr [edx+14],eax;TListColumn.MaxWidth:TWidth
 004AD40C    xor         edx,edx
 004AD40E    mov         eax,dword ptr [ebp-4]
 004AD411    call        0047962C
 004AD416    pop         ecx
 004AD417    pop         ecx
 004AD418    pop         ebp
 004AD419    ret
*}
end;

//004AD41C
procedure TListColumn.SetMinWidth(Value:TWidth);
begin
{*
 004AD41C    push        ebp
 004AD41D    mov         ebp,esp
 004AD41F    add         esp,0FFFFFFF8
 004AD422    mov         dword ptr [ebp-8],edx
 004AD425    mov         dword ptr [ebp-4],eax
 004AD428    mov         eax,dword ptr [ebp-4]
 004AD42B    mov         eax,dword ptr [eax+18];TListColumn.MinWidth:TWidth
 004AD42E    cmp         eax,dword ptr [ebp-8]
>004AD431    je          004AD446
 004AD433    mov         eax,dword ptr [ebp-8]
 004AD436    mov         edx,dword ptr [ebp-4]
 004AD439    mov         dword ptr [edx+18],eax;TListColumn.MinWidth:TWidth
 004AD43C    xor         edx,edx
 004AD43E    mov         eax,dword ptr [ebp-4]
 004AD441    call        0047962C
 004AD446    pop         ecx
 004AD447    pop         ecx
 004AD448    pop         ebp
 004AD449    ret
*}
end;

//004AD44C
{*procedure sub_004AD44C(?:?);
begin
 004AD44C    push        ebp
 004AD44D    mov         ebp,esp
 004AD44F    add         esp,0FFFFFFF4
 004AD452    mov         dword ptr [ebp-8],edx
 004AD455    mov         dword ptr [ebp-4],eax
 004AD458    mov         eax,dword ptr [ebp-8]
 004AD45B    mov         edx,dword ptr ds:[4A4F98];TListColumn
 004AD461    call        @IsClass
 004AD466    test        al,al
>004AD468    je          004AD4D8
 004AD46A    mov         eax,dword ptr [ebp-8]
 004AD46D    mov         dword ptr [ebp-0C],eax
 004AD470    mov         eax,dword ptr [ebp-0C]
 004AD473    mov         dl,byte ptr [eax+0C]
 004AD476    mov         eax,dword ptr [ebp-4]
 004AD479    call        TListColumn.SetAlignment
 004AD47E    mov         eax,dword ptr [ebp-0C]
 004AD481    mov         dl,byte ptr [eax+0D]
 004AD484    mov         eax,dword ptr [ebp-4]
 004AD487    call        TListColumn.SetAutoSize
 004AD48C    mov         eax,dword ptr [ebp-0C]
 004AD48F    mov         edx,dword ptr [eax+10]
 004AD492    mov         eax,dword ptr [ebp-4]
 004AD495    call        TListColumn.SetCaption
 004AD49A    mov         eax,dword ptr [ebp-0C]
 004AD49D    mov         edx,dword ptr [eax+1C]
 004AD4A0    mov         eax,dword ptr [ebp-4]
 004AD4A3    call        TListColumn.SetImageIndex
 004AD4A8    mov         eax,dword ptr [ebp-0C]
 004AD4AB    mov         edx,dword ptr [eax+14]
 004AD4AE    mov         eax,dword ptr [ebp-4]
 004AD4B1    call        TListColumn.SetMaxWidth
 004AD4B6    mov         eax,dword ptr [ebp-0C]
 004AD4B9    mov         edx,dword ptr [eax+18]
 004AD4BC    mov         eax,dword ptr [ebp-4]
 004AD4BF    call        TListColumn.SetMinWidth
 004AD4C4    mov         eax,dword ptr [ebp-0C]
 004AD4C7    call        TListColumn.GetWidth
 004AD4CC    mov         edx,eax
 004AD4CE    mov         eax,dword ptr [ebp-4]
 004AD4D1    call        TListColumn.SetWidth
>004AD4D6    jmp         004AD4E3
 004AD4D8    mov         edx,dword ptr [ebp-8]
 004AD4DB    mov         eax,dword ptr [ebp-4]
 004AD4DE    call        004790A8
 004AD4E3    mov         esp,ebp
 004AD4E5    pop         ebp
 004AD4E6    ret
end;*}

//004AD4E8
{*procedure sub_004AD4E8(?:?);
begin
 004AD4E8    push        ebp
 004AD4E9    mov         ebp,esp
 004AD4EB    add         esp,0FFFFFFF8
 004AD4EE    mov         dword ptr [ebp-8],edx
 004AD4F1    mov         dword ptr [ebp-4],eax
 004AD4F4    mov         eax,dword ptr [ebp-8]
 004AD4F7    mov         edx,dword ptr [ebp-4]
 004AD4FA    mov         edx,dword ptr [edx+10];TListColumn.Caption:String
 004AD4FD    call        @LStrAsg
 004AD502    mov         eax,dword ptr [ebp-8]
 004AD505    cmp         dword ptr [eax],0
>004AD508    jne         004AD515
 004AD50A    mov         edx,dword ptr [ebp-8]
 004AD50D    mov         eax,dword ptr [ebp-4]
 004AD510    call        004796AC
 004AD515    pop         ecx
 004AD516    pop         ecx
 004AD517    pop         ebp
 004AD518    ret
end;*}

//004AD51C
constructor TListColumns.Create;
begin
{*
 004AD51C    push        ebp
 004AD51D    mov         ebp,esp
 004AD51F    add         esp,0FFFFFFF4
 004AD522    test        dl,dl
>004AD524    je          004AD52E
 004AD526    add         esp,0FFFFFFF0
 004AD529    call        @ClassCreate
 004AD52E    mov         dword ptr [ebp-0C],ecx
 004AD531    mov         byte ptr [ebp-5],dl
 004AD534    mov         dword ptr [ebp-4],eax
 004AD537    mov         ecx,dword ptr ds:[4A4F98];TListColumn
 004AD53D    xor         edx,edx
 004AD53F    mov         eax,dword ptr [ebp-4]
 004AD542    call        TCollection.Create
 004AD547    mov         eax,dword ptr [ebp-4]
 004AD54A    mov         edx,dword ptr [ebp-0C]
 004AD54D    mov         dword ptr [eax+18],edx
 004AD550    mov         eax,dword ptr [ebp-4]
 004AD553    cmp         byte ptr [ebp-5],0
>004AD557    je          004AD568
 004AD559    call        @AfterConstruction
 004AD55E    pop         dword ptr fs:[0]
 004AD565    add         esp,0C
 004AD568    mov         eax,dword ptr [ebp-4]
 004AD56B    mov         esp,ebp
 004AD56D    pop         ebp
 004AD56E    ret
*}
end;

//004AD570
{*function sub_004AD570(?:TListColumns; ?:?):?;
begin
 004AD570    push        ebp
 004AD571    mov         ebp,esp
 004AD573    add         esp,0FFFFFFF4
 004AD576    mov         dword ptr [ebp-8],edx
 004AD579    mov         dword ptr [ebp-4],eax
 004AD57C    mov         edx,dword ptr [ebp-8]
 004AD57F    mov         eax,dword ptr [ebp-4]
 004AD582    call        00479B7C
 004AD587    mov         dword ptr [ebp-0C],eax
 004AD58A    mov         eax,dword ptr [ebp-0C]
 004AD58D    mov         esp,ebp
 004AD58F    pop         ebp
 004AD590    ret
end;*}

//004AD594
{*function sub_004AD594(?:TCollection):?;
begin
 004AD594    push        ebp
 004AD595    mov         ebp,esp
 004AD597    add         esp,0FFFFFFF8
 004AD59A    mov         dword ptr [ebp-4],eax
 004AD59D    mov         eax,dword ptr [ebp-4]
 004AD5A0    mov         eax,dword ptr [eax+18]
 004AD5A3    mov         dword ptr [ebp-8],eax
 004AD5A6    mov         eax,dword ptr [ebp-8]
 004AD5A9    pop         ecx
 004AD5AA    pop         ecx
 004AD5AB    pop         ebp
 004AD5AC    ret
end;*}

//004AD5B0
procedure TListColumns.sub_00479290;
begin
{*
 004AD5B0    push        ebp
 004AD5B1    mov         ebp,esp
 004AD5B3    add         esp,0FFFFFFF8
 004AD5B6    mov         dword ptr [ebp-4],eax
 004AD5B9    mov         eax,dword ptr [ebp-4]
 004AD5BC    mov         eax,dword ptr [eax+18];TListColumns...FOwner:TCustomListView
 004AD5BF    mov         dword ptr [ebp-8],eax
 004AD5C2    mov         eax,dword ptr [ebp-8]
 004AD5C5    pop         ecx
 004AD5C6    pop         ecx
 004AD5C7    pop         ebp
 004AD5C8    ret
*}
end;

//004AD5CC
{*procedure sub_004AD5CC(?:?);
begin
 004AD5CC    push        ebp
 004AD5CD    mov         ebp,esp
 004AD5CF    add         esp,0FFFFFFF8
 004AD5D2    mov         dword ptr [ebp-8],edx
 004AD5D5    mov         dword ptr [ebp-4],eax
 004AD5D8    cmp         dword ptr [ebp-8],0
>004AD5DC    je          004AD5F7
 004AD5DE    mov         eax,dword ptr [ebp-8]
 004AD5E1    call        TCollectionItem.GetIndex
 004AD5E6    push        eax
 004AD5E7    mov         eax,dword ptr [ebp-4]
 004AD5EA    call        004AD594
 004AD5EF    pop         edx
 004AD5F0    call        004B2F38
>004AD5F5    jmp         004AD604
 004AD5F7    mov         eax,dword ptr [ebp-4]
 004AD5FA    call        004AD594
 004AD5FF    call        004B2EE0
 004AD604    pop         ecx
 004AD605    pop         ecx
 004AD606    pop         ebp
 004AD607    ret
end;*}

//004AD608
procedure sub_004AD608(?:TListColumns);
begin
{*
 004AD608    push        ebp
 004AD609    mov         ebp,esp
 004AD60B    add         esp,0FFFFFFD4
 004AD60E    mov         dword ptr [ebp-4],eax
 004AD611    mov         eax,dword ptr [ebp-4]
 004AD614    call        004AD594
 004AD619    call        TWinControl.HandleAllocated
 004AD61E    test        al,al
>004AD620    je          004AD6FB
 004AD626    mov         eax,dword ptr [ebp-4]
 004AD629    mov         edx,dword ptr [eax]
 004AD62B    call        dword ptr [edx+20]
 004AD62E    xor         eax,eax
 004AD630    push        ebp
 004AD631    push        4AD6F4
 004AD636    push        dword ptr fs:[eax]
 004AD639    mov         dword ptr fs:[eax],esp
 004AD63C    mov         eax,dword ptr [ebp-4]
 004AD63F    call        00479B60
 004AD644    dec         eax
 004AD645    cmp         eax,0
>004AD648    jl          004AD66B
 004AD64A    mov         dword ptr [ebp-8],eax
 004AD64D    mov         eax,dword ptr [ebp-4]
 004AD650    call        004AD594
 004AD655    call        TWinControl.GetHandle
 004AD65A    mov         edx,dword ptr [ebp-8]
 004AD65D    call        0042F764
 004AD662    dec         dword ptr [ebp-8]
 004AD665    cmp         dword ptr [ebp-8],0FFFFFFFF
>004AD669    jne         004AD64D
 004AD66B    mov         eax,dword ptr [ebp-4]
 004AD66E    call        00479B60
 004AD673    dec         eax
 004AD674    test        eax,eax
>004AD676    jl          004AD6D1
 004AD678    inc         eax
 004AD679    mov         dword ptr [ebp-0C],eax
 004AD67C    mov         dword ptr [ebp-8],0
 004AD683    mov         dword ptr [ebp-2C],3
 004AD68A    xor         eax,eax
 004AD68C    mov         dword ptr [ebp-28],eax
 004AD68F    mov         edx,dword ptr [ebp-8]
 004AD692    mov         eax,dword ptr [ebp-4]
 004AD695    call        004AD570
 004AD69A    mov         eax,dword ptr [eax+24]
 004AD69D    mov         dword ptr [ebp-24],eax
 004AD6A0    mov         eax,dword ptr [ebp-4]
 004AD6A3    call        004AD594
 004AD6A8    call        TWinControl.GetHandle
 004AD6AD    lea         ecx,[ebp-2C]
 004AD6B0    mov         edx,dword ptr [ebp-8]
 004AD6B3    call        0042F734
 004AD6B8    mov         edx,dword ptr [ebp-8]
 004AD6BB    mov         eax,dword ptr [ebp-4]
 004AD6BE    call        004AD570
 004AD6C3    mov         edx,dword ptr [ebp-8]
 004AD6C6    mov         dword ptr [eax+28],edx
 004AD6C9    inc         dword ptr [ebp-8]
 004AD6CC    dec         dword ptr [ebp-0C]
>004AD6CF    jne         004AD683
 004AD6D1    mov         eax,dword ptr [ebp-4]
 004AD6D4    call        004AD594
 004AD6D9    call        004B2EE0
 004AD6DE    xor         eax,eax
 004AD6E0    pop         edx
 004AD6E1    pop         ecx
 004AD6E2    pop         ecx
 004AD6E3    mov         dword ptr fs:[eax],edx
 004AD6E6    push        4AD6FB
 004AD6EB    mov         eax,dword ptr [ebp-4]
 004AD6EE    mov         edx,dword ptr [eax]
 004AD6F0    call        dword ptr [edx+24]
 004AD6F3    ret
>004AD6F4    jmp         @HandleFinally
>004AD6F9    jmp         004AD6EB
 004AD6FB    mov         esp,ebp
 004AD6FD    pop         ebp
 004AD6FE    ret
*}
end;

//004AD700
constructor sub_004AD700;
begin
{*
 004AD700    push        ebp
 004AD701    mov         ebp,esp
 004AD703    add         esp,0FFFFFFF4
 004AD706    test        dl,dl
>004AD708    je          004AD712
 004AD70A    add         esp,0FFFFFFF0
 004AD70D    call        @ClassCreate
 004AD712    mov         dword ptr [ebp-0C],ecx
 004AD715    mov         byte ptr [ebp-5],dl
 004AD718    mov         dword ptr [ebp-4],eax
 004AD71B    mov         ecx,dword ptr [ebp-0C]
 004AD71E    xor         edx,edx
 004AD720    mov         eax,dword ptr [ebp-4]
 004AD723    call        004795A8
 004AD728    mov         eax,dword ptr [ebp-4]
 004AD72B    mov         dword ptr [eax+20],0FF000008;TWorkArea.FColor:TColor
 004AD732    mov         eax,dword ptr [ebp-4]
 004AD735    add         eax,1C;TWorkArea.FDisplayName:String
 004AD738    call        @LStrClr
 004AD73D    mov         eax,dword ptr [ebp-4]
 004AD740    cmp         byte ptr [ebp-5],0
>004AD744    je          004AD755
 004AD746    call        @AfterConstruction
 004AD74B    pop         dword ptr fs:[0]
 004AD752    add         esp,0C
 004AD755    mov         eax,dword ptr [ebp-4]
 004AD758    mov         esp,ebp
 004AD75A    pop         ebp
 004AD75B    ret
*}
end;

//004AD75C
{*procedure sub_004AD75C(?:?);
begin
 004AD75C    push        ebp
 004AD75D    mov         ebp,esp
 004AD75F    add         esp,0FFFFFFF8
 004AD762    mov         dword ptr [ebp-8],edx
 004AD765    mov         dword ptr [ebp-4],eax
 004AD768    mov         eax,dword ptr [ebp-8]
 004AD76B    mov         edx,dword ptr [ebp-4]
 004AD76E    mov         edx,dword ptr [edx+1C];TWorkArea.FDisplayName:String
 004AD771    call        @LStrAsg
 004AD776    pop         ecx
 004AD777    pop         ecx
 004AD778    pop         ebp
 004AD779    ret
end;*}

//004AD77C
{*procedure sub_004AD77C(?:?);
begin
 004AD77C    push        ebp
 004AD77D    mov         ebp,esp
 004AD77F    add         esp,0FFFFFFF8
 004AD782    mov         dword ptr [ebp-8],edx
 004AD785    mov         dword ptr [ebp-4],eax
 004AD788    mov         eax,dword ptr [ebp-4]
 004AD78B    add         eax,1C;TWorkArea.FDisplayName:String
 004AD78E    mov         edx,dword ptr [ebp-8]
 004AD791    call        @LStrAsg
 004AD796    mov         dl,1
 004AD798    mov         eax,dword ptr [ebp-4]
 004AD79B    call        0047962C
 004AD7A0    pop         ecx
 004AD7A1    pop         ecx
 004AD7A2    pop         ebp
 004AD7A3    ret
end;*}

//004AD7C8
{*procedure sub_004AD7C8(?:?);
begin
 004AD7C8    push        ebp
 004AD7C9    mov         ebp,esp
 004AD7CB    add         esp,0FFFFFFE8
 004AD7CE    push        esi
 004AD7CF    push        edi
 004AD7D0    xor         ecx,ecx
 004AD7D2    mov         dword ptr [ebp-0C],ecx
 004AD7D5    mov         dword ptr [ebp-18],edx
 004AD7D8    mov         dword ptr [ebp-4],eax
 004AD7DB    xor         eax,eax
 004AD7DD    push        ebp
 004AD7DE    push        4AD892
 004AD7E3    push        dword ptr fs:[eax]
 004AD7E6    mov         dword ptr fs:[eax],esp
 004AD7E9    mov         eax,dword ptr [ebp-4]
 004AD7EC    mov         si,0FFFF
 004AD7F0    call        @CallDynaInst;TOwnedCollection.sub_00479290
 004AD7F5    mov         dword ptr [ebp-10],eax
 004AD7F8    mov         eax,dword ptr [ebp-4]
 004AD7FB    call        00479B60
 004AD800    push        eax
 004AD801    lea         eax,[ebp-0C]
 004AD804    mov         ecx,1
 004AD809    mov         edx,dword ptr ds:[4AD7A4];_DynArr_68_96
 004AD80F    call        @DynArraySetLength
 004AD814    add         esp,4
 004AD817    mov         eax,dword ptr [ebp-4]
 004AD81A    call        00479B60
 004AD81F    dec         eax
 004AD820    test        eax,eax
>004AD822    jl          004AD854
 004AD824    inc         eax
 004AD825    mov         dword ptr [ebp-14],eax
 004AD828    mov         dword ptr [ebp-8],0
 004AD82F    mov         edx,dword ptr [ebp-8]
 004AD832    mov         eax,dword ptr [ebp-4]
 004AD835    call        004AD8A0
 004AD83A    mov         edx,dword ptr [ebp-8]
 004AD83D    add         edx,edx
 004AD83F    mov         ecx,dword ptr [ebp-0C]
 004AD842    lea         esi,[eax+0C]
 004AD845    lea         edi,[ecx+edx*8]
 004AD848    movs        dword ptr [edi],dword ptr [esi]
 004AD849    movs        dword ptr [edi],dword ptr [esi]
 004AD84A    movs        dword ptr [edi],dword ptr [esi]
 004AD84B    movs        dword ptr [edi],dword ptr [esi]
 004AD84C    inc         dword ptr [ebp-8]
 004AD84F    dec         dword ptr [ebp-14]
>004AD852    jne         004AD82F
 004AD854    mov         eax,dword ptr [ebp-4]
 004AD857    call        00479B60
 004AD85C    push        eax
 004AD85D    mov         eax,dword ptr [ebp-10]
 004AD860    call        TWinControl.GetHandle
 004AD865    mov         ecx,dword ptr [ebp-0C]
 004AD868    pop         edx
 004AD869    call        0042FB5C
 004AD86E    mov         eax,dword ptr [ebp-10]
 004AD871    mov         edx,dword ptr [eax]
 004AD873    call        dword ptr [edx+7C]
 004AD876    xor         eax,eax
 004AD878    pop         edx
 004AD879    pop         ecx
 004AD87A    pop         ecx
 004AD87B    mov         dword ptr fs:[eax],edx
 004AD87E    push        4AD899
 004AD883    lea         eax,[ebp-0C]
 004AD886    mov         edx,dword ptr ds:[4AD7A4];_DynArr_68_96
 004AD88C    call        @DynArrayClear
 004AD891    ret
>004AD892    jmp         @HandleFinally
>004AD897    jmp         004AD883
 004AD899    pop         edi
 004AD89A    pop         esi
 004AD89B    mov         esp,ebp
 004AD89D    pop         ebp
 004AD89E    ret
end;*}

//004AD8A0
{*function sub_004AD8A0(?:TWorkAreas; ?:?):?;
begin
 004AD8A0    push        ebp
 004AD8A1    mov         ebp,esp
 004AD8A3    add         esp,0FFFFFFF4
 004AD8A6    mov         dword ptr [ebp-8],edx
 004AD8A9    mov         dword ptr [ebp-4],eax
 004AD8AC    mov         edx,dword ptr [ebp-8]
 004AD8AF    mov         eax,dword ptr [ebp-4]
 004AD8B2    call        00479B7C
 004AD8B7    mov         dword ptr [ebp-0C],eax
 004AD8BA    mov         eax,dword ptr [ebp-0C]
 004AD8BD    mov         esp,ebp
 004AD8BF    pop         ebp
 004AD8C0    ret
end;*}

//004AD9D8
constructor TSubItems.Create;
begin
{*
 004AD9D8    push        ebp
 004AD9D9    mov         ebp,esp
 004AD9DB    add         esp,0FFFFFFF4
 004AD9DE    test        dl,dl
>004AD9E0    je          004AD9EA
 004AD9E2    add         esp,0FFFFFFF0
 004AD9E5    call        @ClassCreate
 004AD9EA    mov         dword ptr [ebp-0C],ecx
 004AD9ED    mov         byte ptr [ebp-5],dl
 004AD9F0    mov         dword ptr [ebp-4],eax
 004AD9F3    xor         edx,edx
 004AD9F5    mov         eax,dword ptr [ebp-4]
 004AD9F8    call        TObject.Create
 004AD9FD    mov         eax,dword ptr [ebp-4]
 004ADA00    mov         edx,dword ptr [ebp-0C]
 004ADA03    mov         dword ptr [eax+30],edx
 004ADA06    mov         dl,1
 004ADA08    mov         eax,[004759C0];TList
 004ADA0D    call        TObject.Create;TList.Create
 004ADA12    mov         edx,dword ptr [ebp-4]
 004ADA15    mov         dword ptr [edx+34],eax
 004ADA18    mov         eax,dword ptr [ebp-4]
 004ADA1B    cmp         byte ptr [ebp-5],0
>004ADA1F    je          004ADA30
 004ADA21    call        @AfterConstruction
 004ADA26    pop         dword ptr fs:[0]
 004ADA2D    add         esp,0C
 004ADA30    mov         eax,dword ptr [ebp-4]
 004ADA33    mov         esp,ebp
 004ADA35    pop         ebp
 004ADA36    ret
*}
end;

//004ADA38
destructor TSubItems.Destroy;
begin
{*
 004ADA38    push        ebp
 004ADA39    mov         ebp,esp
 004ADA3B    add         esp,0FFFFFFF8
 004ADA3E    call        @BeforeDestruction
 004ADA43    mov         byte ptr [ebp-5],dl
 004ADA46    mov         dword ptr [ebp-4],eax
 004ADA49    mov         eax,dword ptr [ebp-4]
 004ADA4C    mov         eax,dword ptr [eax+34]
 004ADA4F    call        TObject.Free
 004ADA54    mov         dl,byte ptr [ebp-5]
 004ADA57    and         dl,0FC
 004ADA5A    mov         eax,dword ptr [ebp-4]
 004ADA5D    call        TStringList.Destroy
 004ADA62    cmp         byte ptr [ebp-5],0
>004ADA66    jle         004ADA70
 004ADA68    mov         eax,dword ptr [ebp-4]
 004ADA6B    call        @ClassDestroy
 004ADA70    pop         ecx
 004ADA71    pop         ecx
 004ADA72    pop         ebp
 004ADA73    ret
*}
end;

//004ADA74
{*function sub_004ADA74(?:?):?;
begin
 004ADA74    push        ebp
 004ADA75    mov         ebp,esp
 004ADA77    add         esp,0FFFFFFF4
 004ADA7A    mov         dword ptr [ebp-8],edx
 004ADA7D    mov         dword ptr [ebp-4],eax
 004ADA80    mov         edx,dword ptr [ebp-8]
 004ADA83    mov         eax,dword ptr [ebp-4]
 004ADA86    call        0047B3A4
 004ADA8B    mov         dword ptr [ebp-0C],eax
 004ADA8E    or          edx,0FFFFFFFF
 004ADA91    mov         eax,dword ptr [ebp-4]
 004ADA94    mov         eax,dword ptr [eax+34];TSubItems.FImageIndices:TList
 004ADA97    call        TList.Add
 004ADA9C    mov         edx,dword ptr [ebp-0C]
 004ADA9F    inc         edx
 004ADAA0    mov         eax,dword ptr [ebp-4]
 004ADAA3    call        004ADC58
 004ADAA8    mov         eax,dword ptr [ebp-0C]
 004ADAAB    mov         esp,ebp
 004ADAAD    pop         ebp
 004ADAAE    ret
end;*}

//004ADAB0
{*function sub_004ADAB0(?:?; ?:?):?;
begin
 004ADAB0    push        ebp
 004ADAB1    mov         ebp,esp
 004ADAB3    add         esp,0FFFFFFF0
 004ADAB6    mov         dword ptr [ebp-0C],ecx
 004ADAB9    mov         dword ptr [ebp-8],edx
 004ADABC    mov         dword ptr [ebp-4],eax
 004ADABF    mov         ecx,dword ptr [ebp-0C]
 004ADAC2    mov         edx,dword ptr [ebp-8]
 004ADAC5    mov         eax,dword ptr [ebp-4]
 004ADAC8    call        0047B3CC
 004ADACD    mov         dword ptr [ebp-10],eax
 004ADAD0    or          edx,0FFFFFFFF
 004ADAD3    mov         eax,dword ptr [ebp-4]
 004ADAD6    mov         eax,dword ptr [eax+34];TSubItems.FImageIndices:TList
 004ADAD9    call        TList.Add
 004ADADE    mov         edx,dword ptr [ebp-10]
 004ADAE1    inc         edx
 004ADAE2    mov         eax,dword ptr [ebp-4]
 004ADAE5    call        004ADC58
 004ADAEA    mov         eax,dword ptr [ebp-10]
 004ADAED    mov         esp,ebp
 004ADAEF    pop         ebp
 004ADAF0    ret
end;*}

//004ADAF4
procedure TSubItems.Clear;
begin
{*
 004ADAF4    push        ebp
 004ADAF5    mov         ebp,esp
 004ADAF7    push        ecx
 004ADAF8    mov         dword ptr [ebp-4],eax
 004ADAFB    mov         eax,dword ptr [ebp-4]
 004ADAFE    call        TStringList.Clear
 004ADB03    mov         eax,dword ptr [ebp-4]
 004ADB06    mov         eax,dword ptr [eax+34];TSubItems.FImageIndices:TList
 004ADB09    mov         edx,dword ptr [eax]
 004ADB0B    call        dword ptr [edx+8];TList.sub_00478648
 004ADB0E    pop         ecx
 004ADB0F    pop         ebp
 004ADB10    ret
*}
end;

//004ADB14
{*procedure sub_004ADB14(?:?);
begin
 004ADB14    push        ebp
 004ADB15    mov         ebp,esp
 004ADB17    add         esp,0FFFFFFF8
 004ADB1A    mov         dword ptr [ebp-8],edx
 004ADB1D    mov         dword ptr [ebp-4],eax
 004ADB20    mov         edx,dword ptr [ebp-8]
 004ADB23    mov         eax,dword ptr [ebp-4]
 004ADB26    call        0047B4F0
 004ADB2B    mov         edx,dword ptr [ebp-8]
 004ADB2E    mov         eax,dword ptr [ebp-4]
 004ADB31    mov         eax,dword ptr [eax+34];TSubItems.FImageIndices:TList
 004ADB34    call        00478668
 004ADB39    mov         eax,dword ptr [ebp-4]
 004ADB3C    mov         eax,dword ptr [eax+30];TSubItems.FOwner:TListItem
 004ADB3F    call        004ADF28
 004ADB44    pop         ecx
 004ADB45    pop         ecx
 004ADB46    pop         ebp
 004ADB47    ret
end;*}

//004ADB48
{*function sub_004ADB48(?:TSubItems):?;
begin
 004ADB48    push        ebp
 004ADB49    mov         ebp,esp
 004ADB4B    add         esp,0FFFFFFF8
 004ADB4E    mov         dword ptr [ebp-4],eax
 004ADB51    mov         eax,dword ptr [ebp-4]
 004ADB54    mov         eax,dword ptr [eax+30]
 004ADB57    mov         eax,dword ptr [eax+4]
 004ADB5A    call        004AE738
 004ADB5F    mov         dword ptr [ebp-8],eax
 004ADB62    mov         eax,dword ptr [ebp-8]
 004ADB65    pop         ecx
 004ADB66    pop         ecx
 004ADB67    pop         ebp
 004ADB68    ret
end;*}

//004ADB6C
{*procedure sub_004ADB6C(?:TSubItems; ?:?);
begin
 004ADB6C    push        ebp
 004ADB6D    mov         ebp,esp
 004ADB6F    add         esp,0FFFFFFF4
 004ADB72    mov         dword ptr [ebp-8],edx
 004ADB75    mov         dword ptr [ebp-4],eax
 004ADB78    mov         eax,dword ptr [ebp-4]
 004ADB7B    mov         eax,dword ptr [eax+30]
 004ADB7E    call        004ADDFC
 004ADB83    mov         dword ptr [ebp-0C],eax
 004ADB86    mov         eax,dword ptr [ebp-0C]
 004ADB89    call        004B0AE0
 004ADB8E    test        al,al
>004ADB90    je          004ADBC1
 004ADB92    mov         eax,dword ptr [ebp-0C]
 004ADB95    mov         eax,dword ptr [eax+23C]
 004ADB9B    call        00479B60
 004ADBA0    cmp         eax,dword ptr [ebp-8]
>004ADBA3    jle         004ADBC1
 004ADBA5    mov         edx,dword ptr [ebp-8]
 004ADBA8    mov         eax,dword ptr [ebp-0C]
 004ADBAB    call        004B2BC0
 004ADBB0    cmp         dword ptr [eax+24],0FFFFFFFF
>004ADBB4    jne         004ADBC1
 004ADBB6    mov         edx,dword ptr [ebp-8]
 004ADBB9    mov         eax,dword ptr [ebp-0C]
 004ADBBC    call        004B2F38
 004ADBC1    mov         esp,ebp
 004ADBC3    pop         ebp
 004ADBC4    ret
end;*}

//004ADBC8
{*procedure sub_004ADBC8(?:?; ?:?);
begin
 004ADBC8    push        ebp
 004ADBC9    mov         ebp,esp
 004ADBCB    add         esp,0FFFFFFEC
 004ADBCE    mov         dword ptr [ebp-0C],ecx
 004ADBD1    mov         dword ptr [ebp-8],edx
 004ADBD4    mov         dword ptr [ebp-4],eax
 004ADBD7    mov         ecx,dword ptr [ebp-0C]
 004ADBDA    mov         edx,dword ptr [ebp-8]
 004ADBDD    mov         eax,dword ptr [ebp-4]
 004ADBE0    call        0047B880
 004ADBE5    or          ecx,0FFFFFFFF
 004ADBE8    mov         edx,dword ptr [ebp-8]
 004ADBEB    mov         eax,dword ptr [ebp-4]
 004ADBEE    mov         eax,dword ptr [eax+34];TSubItems.FImageIndices:TList
 004ADBF1    call        004788DC
 004ADBF6    mov         eax,dword ptr [ebp-8]
 004ADBF9    inc         eax
 004ADBFA    push        eax
 004ADBFB    mov         eax,dword ptr [ebp-4]
 004ADBFE    mov         edx,dword ptr [eax]
 004ADC00    call        dword ptr [edx+14];TSubItems.sub_0047B778
 004ADC03    pop         edx
 004ADC04    sub         eax,edx
>004ADC06    jl          004ADC22
 004ADC08    inc         eax
 004ADC09    mov         dword ptr [ebp-14],eax
 004ADC0C    mov         dword ptr [ebp-10],edx
 004ADC0F    mov         edx,dword ptr [ebp-10]
 004ADC12    mov         eax,dword ptr [ebp-4]
 004ADC15    call        004ADC58
 004ADC1A    inc         dword ptr [ebp-10]
 004ADC1D    dec         dword ptr [ebp-14]
>004ADC20    jne         004ADC0F
 004ADC22    mov         esp,ebp
 004ADC24    pop         ebp
 004ADC25    ret
end;*}

//004ADC28
{*procedure sub_004ADC28(?:?; ?:?);
begin
 004ADC28    push        ebp
 004ADC29    mov         ebp,esp
 004ADC2B    add         esp,0FFFFFFF4
 004ADC2E    mov         dword ptr [ebp-0C],ecx
 004ADC31    mov         dword ptr [ebp-8],edx
 004ADC34    mov         dword ptr [ebp-4],eax
 004ADC37    mov         ecx,dword ptr [ebp-0C]
 004ADC3A    mov         edx,dword ptr [ebp-8]
 004ADC3D    mov         eax,dword ptr [ebp-4]
 004ADC40    call        0047B9B8
 004ADC45    mov         edx,dword ptr [ebp-8]
 004ADC48    inc         edx
 004ADC49    mov         eax,dword ptr [ebp-4]
 004ADC4C    call        004ADC58
 004ADC51    mov         esp,ebp
 004ADC53    pop         ebp
 004ADC54    ret
end;*}

//004ADC58
{*procedure sub_004ADC58(?:TSubItems; ?:?);
begin
 004ADC58    push        ebp
 004ADC59    mov         ebp,esp
 004ADC5B    add         esp,0FFFFFFF8
 004ADC5E    mov         dword ptr [ebp-8],edx
 004ADC61    mov         dword ptr [ebp-4],eax
 004ADC64    push        0FF
 004ADC66    mov         eax,dword ptr [ebp-4]
 004ADC69    mov         eax,dword ptr [eax+30];TSubItems.FOwner:TListItem
 004ADC6C    call        004AE4CC
 004ADC71    push        eax
 004ADC72    mov         eax,dword ptr [ebp-4]
 004ADC75    call        004ADB48
 004ADC7A    mov         ecx,dword ptr [ebp-8]
 004ADC7D    pop         edx
 004ADC7E    call        0042F9E8
 004ADC83    mov         edx,dword ptr [ebp-8]
 004ADC86    mov         eax,dword ptr [ebp-4]
 004ADC89    call        004ADB6C
 004ADC8E    pop         ecx
 004ADC8F    pop         ecx
 004ADC90    pop         ebp
 004ADC91    ret
end;*}

//004ADC94
{*procedure sub_004ADC94(?:?);
begin
 004ADC94    push        ebp
 004ADC95    mov         ebp,esp
 004ADC97    add         esp,0FFFFFFF8
 004ADC9A    mov         byte ptr [ebp-5],dl
 004ADC9D    mov         dword ptr [ebp-4],eax
 004ADCA0    mov         eax,dword ptr [ebp-4]
 004ADCA3    mov         eax,dword ptr [eax+30];TSubItems.FOwner:TListItem
 004ADCA6    mov         eax,dword ptr [eax+4];TListItem.FOwner:TListItems
 004ADCA9    mov         dl,byte ptr [ebp-5]
 004ADCAC    call        004AE898
 004ADCB1    pop         ecx
 004ADCB2    pop         ecx
 004ADCB3    pop         ebp
 004ADCB4    ret
end;*}

//004ADCB8
{*function sub_004ADCB8(?:?; ?:?):?;
begin
 004ADCB8    push        ebp
 004ADCB9    mov         ebp,esp
 004ADCBB    add         esp,0FFFFFFF4
 004ADCBE    mov         dword ptr [ebp-8],edx
 004ADCC1    mov         dword ptr [ebp-4],eax
 004ADCC4    mov         edx,dword ptr [ebp-8]
 004ADCC7    mov         eax,dword ptr [ebp-4]
 004ADCCA    mov         eax,dword ptr [eax+34]
 004ADCCD    call        TList.Get
 004ADCD2    mov         dword ptr [ebp-0C],eax
 004ADCD5    mov         eax,dword ptr [ebp-0C]
 004ADCD8    mov         esp,ebp
 004ADCDA    pop         ebp
 004ADCDB    ret
end;*}

//004ADCDC
{*procedure sub_004ADCDC(?:?; ?:?; ?:?);
begin
 004ADCDC    push        ebp
 004ADCDD    mov         ebp,esp
 004ADCDF    add         esp,0FFFFFFF4
 004ADCE2    mov         dword ptr [ebp-0C],ecx
 004ADCE5    mov         dword ptr [ebp-8],edx
 004ADCE8    mov         dword ptr [ebp-4],eax
 004ADCEB    mov         ecx,dword ptr [ebp-0C]
 004ADCEE    mov         edx,dword ptr [ebp-8]
 004ADCF1    mov         eax,dword ptr [ebp-4]
 004ADCF4    mov         eax,dword ptr [eax+34]
 004ADCF7    call        00478A34
 004ADCFC    mov         esp,ebp
 004ADCFE    pop         ebp
 004ADCFF    ret
end;*}

//004ADD00
constructor TListItem.Create;
begin
{*
 004ADD00    push        ebp
 004ADD01    mov         ebp,esp
 004ADD03    add         esp,0FFFFFFF4
 004ADD06    test        dl,dl
>004ADD08    je          004ADD12
 004ADD0A    add         esp,0FFFFFFF0
 004ADD0D    call        @ClassCreate
 004ADD12    mov         dword ptr [ebp-0C],ecx
 004ADD15    mov         byte ptr [ebp-5],dl
 004ADD18    mov         dword ptr [ebp-4],eax
 004ADD1B    mov         eax,dword ptr [ebp-4]
 004ADD1E    mov         edx,dword ptr [ebp-0C]
 004ADD21    mov         dword ptr [eax+4],edx
 004ADD24    mov         ecx,dword ptr [ebp-4]
 004ADD27    mov         dl,1
 004ADD29    mov         eax,[004AD8C4];TSubItems
 004ADD2E    call        TSubItems.Create;TSubItems.Create
 004ADD33    mov         edx,dword ptr [ebp-4]
 004ADD36    mov         dword ptr [edx+8],eax
 004ADD39    mov         eax,dword ptr [ebp-4]
 004ADD3C    mov         dword ptr [eax+1C],0FFFFFFFF
 004ADD43    mov         eax,dword ptr [ebp-4]
 004ADD46    mov         dword ptr [eax+20],0FFFFFFFF
 004ADD4D    mov         eax,dword ptr [ebp-4]
 004ADD50    cmp         byte ptr [ebp-5],0
>004ADD54    je          004ADD65
 004ADD56    call        @AfterConstruction
 004ADD5B    pop         dword ptr fs:[0]
 004ADD62    add         esp,0C
 004ADD65    mov         eax,dword ptr [ebp-4]
 004ADD68    mov         esp,ebp
 004ADD6A    pop         ebp
 004ADD6B    ret
*}
end;

//004ADD6C
destructor TListItem.Destroy;
begin
{*
 004ADD6C    push        ebp
 004ADD6D    mov         ebp,esp
 004ADD6F    add         esp,0FFFFFFF8
 004ADD72    call        @BeforeDestruction
 004ADD77    mov         byte ptr [ebp-5],dl
 004ADD7A    mov         dword ptr [ebp-4],eax
 004ADD7D    mov         eax,dword ptr [ebp-4]
 004ADD80    mov         byte ptr [eax+28],1
 004ADD84    mov         eax,dword ptr [ebp-4]
 004ADD87    mov         eax,dword ptr [eax+4]
 004ADD8A    mov         eax,dword ptr [eax+4]
 004ADD8D    mov         eax,dword ptr [eax+270]
 004ADD93    cmp         eax,dword ptr [ebp-4]
>004ADD96    jne         004ADDA9
 004ADD98    mov         eax,dword ptr [ebp-4]
 004ADD9B    mov         eax,dword ptr [eax+4]
 004ADD9E    mov         eax,dword ptr [eax+4]
 004ADDA1    xor         edx,edx
 004ADDA3    mov         dword ptr [eax+270],edx
 004ADDA9    mov         eax,dword ptr [ebp-4]
 004ADDAC    call        004ADDFC
 004ADDB1    call        TWinControl.HandleAllocated
 004ADDB6    test        al,al
>004ADDB8    je          004ADDD1
 004ADDBA    mov         eax,dword ptr [ebp-4]
 004ADDBD    call        004AE4CC
 004ADDC2    push        eax
 004ADDC3    mov         eax,dword ptr [ebp-4]
 004ADDC6    call        004ADE48
 004ADDCB    pop         edx
 004ADDCC    call        0042F53C
 004ADDD1    mov         eax,dword ptr [ebp-4]
 004ADDD4    mov         eax,dword ptr [eax+8]
 004ADDD7    call        TObject.Free
 004ADDDC    mov         dl,byte ptr [ebp-5]
 004ADDDF    and         dl,0FC
 004ADDE2    mov         eax,dword ptr [ebp-4]
 004ADDE5    call        TPersistent.Destroy
 004ADDEA    cmp         byte ptr [ebp-5],0
>004ADDEE    jle         004ADDF8
 004ADDF0    mov         eax,dword ptr [ebp-4]
 004ADDF3    call        @ClassDestroy
 004ADDF8    pop         ecx
 004ADDF9    pop         ecx
 004ADDFA    pop         ebp
 004ADDFB    ret
*}
end;

//004ADDFC
{*function sub_004ADDFC(?:?):?;
begin
 004ADDFC    push        ebp
 004ADDFD    mov         ebp,esp
 004ADDFF    add         esp,0FFFFFFF8
 004ADE02    mov         dword ptr [ebp-4],eax
 004ADE05    mov         eax,dword ptr [ebp-4]
 004ADE08    mov         eax,dword ptr [eax+4]
 004ADE0B    mov         eax,dword ptr [eax+4]
 004ADE0E    mov         dword ptr [ebp-8],eax
 004ADE11    mov         eax,dword ptr [ebp-8]
 004ADE14    pop         ecx
 004ADE15    pop         ecx
 004ADE16    pop         ebp
 004ADE17    ret
end;*}

//004ADE18
{*procedure sub_004ADE18(?:?);
begin
 004ADE18    push        ebp
 004ADE19    mov         ebp,esp
 004ADE1B    push        ecx
 004ADE1C    mov         dword ptr [ebp-4],eax
 004ADE1F    mov         eax,dword ptr [ebp-4]
 004ADE22    cmp         byte ptr [eax+28],0
>004ADE26    jne         004ADE43
 004ADE28    mov         eax,dword ptr [ebp-4]
 004ADE2B    call        004ADDFC
 004ADE30    mov         eax,dword ptr [eax+28C]
 004ADE36    cmp         eax,dword ptr [ebp-4]
>004ADE39    je          004ADE43
 004ADE3B    mov         eax,dword ptr [ebp-4]
 004ADE3E    call        TObject.Free
 004ADE43    pop         ecx
 004ADE44    pop         ebp
 004ADE45    ret
end;*}

//004ADE48
{*function sub_004ADE48(?:TListItem):?;
begin
 004ADE48    push        ebp
 004ADE49    mov         ebp,esp
 004ADE4B    add         esp,0FFFFFFF8
 004ADE4E    mov         dword ptr [ebp-4],eax
 004ADE51    mov         eax,dword ptr [ebp-4]
 004ADE54    call        004ADDFC
 004ADE59    call        TWinControl.GetHandle
 004ADE5E    mov         dword ptr [ebp-8],eax
 004ADE61    mov         eax,dword ptr [ebp-8]
 004ADE64    pop         ecx
 004ADE65    pop         ecx
 004ADE66    pop         ebp
 004ADE67    ret
end;*}

//004ADE68
{*function sub_004ADE68(?:TListItem):?;
begin
 004ADE68    push        ebp
 004ADE69    mov         ebp,esp
 004ADE6B    add         esp,0FFFFFFF4
 004ADE6E    mov         dword ptr [ebp-4],eax
 004ADE71    mov         eax,dword ptr [ebp-4]
 004ADE74    mov         eax,dword ptr [eax+4]
 004ADE77    mov         eax,dword ptr [eax+4]
 004ADE7A    mov         dword ptr [ebp-0C],eax
 004ADE7D    mov         eax,dword ptr [ebp-0C]
 004ADE80    cmp         byte ptr [eax+244],0
>004ADE87    jne         004ADEB4
 004ADE89    mov         eax,dword ptr [ebp-0C]
 004ADE8C    call        TWinControl.HandleAllocated
 004ADE91    test        al,al
>004ADE93    je          004ADEB4
 004ADE95    mov         eax,dword ptr [ebp-4]
 004ADE98    call        004AE4CC
 004ADE9D    push        eax
 004ADE9E    mov         eax,dword ptr [ebp-0C]
 004ADEA1    call        TWinControl.GetHandle
 004ADEA6    pop         edx
 004ADEA7    call        0042F974
 004ADEAC    test        eax,eax
 004ADEAE    setne       byte ptr [ebp-5]
>004ADEB2    jmp         004ADEBD
 004ADEB4    mov         eax,dword ptr [ebp-4]
 004ADEB7    mov         al,byte ptr [eax+2A]
 004ADEBA    mov         byte ptr [ebp-5],al
 004ADEBD    mov         al,byte ptr [ebp-5]
 004ADEC0    mov         esp,ebp
 004ADEC2    pop         ebp
 004ADEC3    ret
end;*}

//004ADEC4
{*procedure sub_004ADEC4(?:TListItem; ?:?);
begin
 004ADEC4    push        ebp
 004ADEC5    mov         ebp,esp
 004ADEC7    add         esp,0FFFFFFF4
 004ADECA    mov         byte ptr [ebp-5],dl
 004ADECD    mov         dword ptr [ebp-4],eax
 004ADED0    mov         eax,dword ptr [ebp-4]
 004ADED3    call        004ADE68
 004ADED8    cmp         al,byte ptr [ebp-5]
>004ADEDB    je          004ADF24
 004ADEDD    mov         al,byte ptr [ebp-5]
 004ADEE0    mov         edx,dword ptr [ebp-4]
 004ADEE3    mov         byte ptr [edx+2A],al
 004ADEE6    mov         eax,dword ptr [ebp-4]
 004ADEE9    mov         eax,dword ptr [eax+4]
 004ADEEC    mov         eax,dword ptr [eax+4]
 004ADEEF    mov         dword ptr [ebp-0C],eax
 004ADEF2    mov         eax,dword ptr [ebp-0C]
 004ADEF5    cmp         byte ptr [eax+244],0
>004ADEFC    jne         004ADF24
 004ADEFE    mov         eax,dword ptr [ebp-0C]
 004ADF01    call        TWinControl.HandleAllocated
 004ADF06    test        al,al
>004ADF08    je          004ADF24
 004ADF0A    mov         eax,dword ptr [ebp-4]
 004ADF0D    call        004AE4CC
 004ADF12    push        eax
 004ADF13    mov         eax,dword ptr [ebp-0C]
 004ADF16    call        TWinControl.GetHandle
 004ADF1B    mov         cl,byte ptr [ebp-5]
 004ADF1E    pop         edx
 004ADF1F    call        0042F9A8
 004ADF24    mov         esp,ebp
 004ADF26    pop         ebp
 004ADF27    ret
end;*}

//004ADF28
procedure sub_004ADF28(?:TListItem);
begin
{*
 004ADF28    push        ebp
 004ADF29    mov         ebp,esp
 004ADF2B    push        ecx
 004ADF2C    mov         dword ptr [ebp-4],eax
 004ADF2F    mov         eax,dword ptr [ebp-4]
 004ADF32    call        004AE4CC
 004ADF37    push        eax
 004ADF38    mov         eax,dword ptr [ebp-4]
 004ADF3B    call        004ADE48
 004ADF40    pop         edx
 004ADF41    call        0042F8D0
 004ADF46    pop         ecx
 004ADF47    pop         ebp
 004ADF48    ret
*}
end;

//004ADF4C
procedure sub_004ADF4C(?:TListItem; ?:AnsiString);
begin
{*
 004ADF4C    push        ebp
 004ADF4D    mov         ebp,esp
 004ADF4F    add         esp,0FFFFFFF8
 004ADF52    mov         dword ptr [ebp-8],edx
 004ADF55    mov         dword ptr [ebp-4],eax
 004ADF58    mov         eax,dword ptr [ebp-8]
 004ADF5B    mov         edx,dword ptr [ebp-4]
 004ADF5E    mov         edx,dword ptr [edx+24]
 004ADF61    call        @LStrCmp
>004ADF66    je          004AE012
 004ADF6C    mov         eax,dword ptr [ebp-4]
 004ADF6F    add         eax,24
 004ADF72    mov         edx,dword ptr [ebp-8]
 004ADF75    call        @LStrAsg
 004ADF7A    mov         eax,dword ptr [ebp-4]
 004ADF7D    mov         eax,dword ptr [eax+4]
 004ADF80    mov         eax,dword ptr [eax+4]
 004ADF83    cmp         byte ptr [eax+244],0
>004ADF8A    jne         004ADFA7
 004ADF8C    push        0FF
 004ADF8E    mov         eax,dword ptr [ebp-4]
 004ADF91    call        004AE4CC
 004ADF96    push        eax
 004ADF97    mov         eax,dword ptr [ebp-4]
 004ADF9A    call        004ADE48
 004ADF9F    xor         ecx,ecx
 004ADFA1    pop         edx
 004ADFA2    call        0042F9E8
 004ADFA7    mov         eax,dword ptr [ebp-4]
 004ADFAA    call        004ADDFC
 004ADFAF    call        004B0AE0
 004ADFB4    test        al,al
>004ADFB6    je          004ADFF1
 004ADFB8    mov         eax,dword ptr [ebp-4]
 004ADFBB    call        004ADDFC
 004ADFC0    mov         eax,dword ptr [eax+23C]
 004ADFC6    call        00479B60
 004ADFCB    test        eax,eax
>004ADFCD    jle         004ADFF1
 004ADFCF    mov         eax,dword ptr [ebp-4]
 004ADFD2    call        004ADDFC
 004ADFD7    xor         edx,edx
 004ADFD9    call        004B2BC0
 004ADFDE    cmp         dword ptr [eax+24],0FFFFFFFF
>004ADFE2    jg          004ADFF1
 004ADFE4    mov         eax,dword ptr [ebp-4]
 004ADFE7    call        004ADDFC
 004ADFEC    call        004B2EE0
 004ADFF1    mov         eax,dword ptr [ebp-4]
 004ADFF4    call        004ADDFC
 004ADFF9    mov         al,byte ptr [eax+229]
 004ADFFF    add         al,0FE
 004AE001    sub         al,2
>004AE003    jae         004AE012
 004AE005    mov         eax,dword ptr [ebp-4]
 004AE008    call        004ADDFC
 004AE00D    call        004B283C
 004AE012    pop         ecx
 004AE013    pop         ecx
 004AE014    pop         ebp
 004AE015    ret
*}
end;

//004AE018
procedure sub_004AE018(?:TListItem; ?:Pointer);
begin
{*
 004AE018    push        ebp
 004AE019    mov         ebp,esp
 004AE01B    add         esp,0FFFFFFF8
 004AE01E    mov         dword ptr [ebp-8],edx
 004AE021    mov         dword ptr [ebp-4],eax
 004AE024    mov         eax,dword ptr [ebp-8]
 004AE027    mov         edx,dword ptr [ebp-4]
 004AE02A    cmp         eax,dword ptr [edx+0C]
>004AE02D    je          004AE05B
 004AE02F    mov         eax,dword ptr [ebp-8]
 004AE032    mov         edx,dword ptr [ebp-4]
 004AE035    mov         dword ptr [edx+0C],eax
 004AE038    mov         eax,dword ptr [ebp-4]
 004AE03B    call        004ADDFC
 004AE040    mov         al,byte ptr [eax+229]
 004AE046    sub         al,1
>004AE048    je          004AE04E
 004AE04A    sub         al,2
>004AE04C    jne         004AE05B
 004AE04E    mov         eax,dword ptr [ebp-4]
 004AE051    call        004ADDFC
 004AE056    call        004B283C
 004AE05B    pop         ecx
 004AE05C    pop         ecx
 004AE05D    pop         ebp
 004AE05E    ret
*}
end;

//004AE060
{*function sub_004AE060(?:?; ?:?):?;
begin
 004AE060    push        ebp
 004AE061    mov         ebp,esp
 004AE063    add         esp,0FFFFFFF0
 004AE066    mov         dword ptr [ebp-8],edx
 004AE069    mov         dword ptr [ebp-4],eax
 004AE06C    mov         eax,dword ptr [ebp-8]
 004AE06F    cmp         eax,4
>004AE072    ja          004AE0BC
 004AE074    jmp         dword ptr [eax*4+4AE07B]
 004AE074    dd          004AE08F
 004AE074    dd          004AE098
 004AE074    dd          004AE0A1
 004AE074    dd          004AE0AA
 004AE074    dd          004AE0B3
 004AE08F    mov         dword ptr [ebp-10],4
>004AE096    jmp         004AE0C1
 004AE098    mov         dword ptr [ebp-10],8
>004AE09F    jmp         004AE0C1
 004AE0A1    mov         dword ptr [ebp-10],1
>004AE0A8    jmp         004AE0C1
 004AE0AA    mov         dword ptr [ebp-10],2
>004AE0B1    jmp         004AE0C1
 004AE0B3    mov         dword ptr [ebp-10],20
>004AE0BA    jmp         004AE0C1
 004AE0BC    xor         eax,eax
 004AE0BE    mov         dword ptr [ebp-10],eax
 004AE0C1    mov         eax,dword ptr [ebp-4]
 004AE0C4    call        004AE4CC
 004AE0C9    push        eax
 004AE0CA    mov         eax,dword ptr [ebp-4]
 004AE0CD    call        004ADE48
 004AE0D2    mov         ecx,dword ptr [ebp-10]
 004AE0D5    pop         edx
 004AE0D6    call        0042F944
 004AE0DB    and         eax,dword ptr [ebp-10]
 004AE0DE    setne       byte ptr [ebp-9]
 004AE0E2    mov         al,byte ptr [ebp-9]
 004AE0E5    mov         esp,ebp
 004AE0E7    pop         ebp
 004AE0E8    ret
end;*}

//004AE0EC
{*procedure sub_004AE0EC(?:?; ?:?; ?:?);
begin
 004AE0EC    push        ebp
 004AE0ED    mov         ebp,esp
 004AE0EF    add         esp,0FFFFFFEC
 004AE0F2    mov         byte ptr [ebp-9],cl
 004AE0F5    mov         dword ptr [ebp-8],edx
 004AE0F8    mov         dword ptr [ebp-4],eax
 004AE0FB    mov         eax,dword ptr [ebp-8]
 004AE0FE    cmp         eax,4
>004AE101    ja          004AE14B
 004AE103    jmp         dword ptr [eax*4+4AE10A]
 004AE103    dd          004AE11E
 004AE103    dd          004AE127
 004AE103    dd          004AE130
 004AE103    dd          004AE139
 004AE103    dd          004AE142
 004AE11E    mov         dword ptr [ebp-10],4
>004AE125    jmp         004AE150
 004AE127    mov         dword ptr [ebp-10],8
>004AE12E    jmp         004AE150
 004AE130    mov         dword ptr [ebp-10],1
>004AE137    jmp         004AE150
 004AE139    mov         dword ptr [ebp-10],2
>004AE140    jmp         004AE150
 004AE142    mov         dword ptr [ebp-10],20
>004AE149    jmp         004AE150
 004AE14B    xor         eax,eax
 004AE14D    mov         dword ptr [ebp-10],eax
 004AE150    cmp         byte ptr [ebp-9],0
>004AE154    je          004AE15E
 004AE156    mov         eax,dword ptr [ebp-10]
 004AE159    mov         dword ptr [ebp-14],eax
>004AE15C    jmp         004AE163
 004AE15E    xor         eax,eax
 004AE160    mov         dword ptr [ebp-14],eax
 004AE163    mov         eax,dword ptr [ebp-10]
 004AE166    push        eax
 004AE167    mov         eax,dword ptr [ebp-4]
 004AE16A    call        004AE4CC
 004AE16F    push        eax
 004AE170    mov         eax,dword ptr [ebp-4]
 004AE173    call        004ADE48
 004AE178    mov         ecx,dword ptr [ebp-14]
 004AE17B    pop         edx
 004AE17C    call        0042F904
 004AE181    mov         esp,ebp
 004AE183    pop         ebp
 004AE184    ret
end;*}

//004AE188
{*procedure sub_004AE188(?:TListItem; ?:?; ?:TImageIndex);
begin
 004AE188    push        ebp
 004AE189    mov         ebp,esp
 004AE18B    add         esp,0FFFFFFC8
 004AE18E    mov         dword ptr [ebp-0C],ecx
 004AE191    mov         dword ptr [ebp-8],edx
 004AE194    mov         dword ptr [ebp-4],eax
 004AE197    mov         byte ptr [ebp-0D],0
 004AE19B    mov         eax,dword ptr [ebp-8]
 004AE19E    sub         eax,1
>004AE1A1    jb          004AE1B1
>004AE1A3    je          004AE216
 004AE1A5    dec         eax
>004AE1A6    je          004AE274
>004AE1AC    jmp         004AE2E2
 004AE1B1    mov         eax,dword ptr [ebp-0C]
 004AE1B4    mov         edx,dword ptr [ebp-4]
 004AE1B7    cmp         eax,dword ptr [edx+10]
>004AE1BA    je          004AE2E2
 004AE1C0    mov         byte ptr [ebp-0D],1
 004AE1C4    mov         eax,dword ptr [ebp-0C]
 004AE1C7    mov         edx,dword ptr [ebp-4]
 004AE1CA    mov         dword ptr [edx+10],eax
 004AE1CD    mov         eax,dword ptr [ebp-4]
 004AE1D0    mov         eax,dword ptr [eax+4]
 004AE1D3    mov         eax,dword ptr [eax+4]
 004AE1D6    cmp         byte ptr [eax+244],0
>004AE1DD    jne         004AE2E2
 004AE1E3    mov         dword ptr [ebp-35],2
 004AE1EA    mov         dword ptr [ebp-19],0FFFFFFFF
 004AE1F1    mov         eax,dword ptr [ebp-4]
 004AE1F4    call        004AE4CC
 004AE1F9    mov         dword ptr [ebp-31],eax
 004AE1FC    xor         eax,eax
 004AE1FE    mov         dword ptr [ebp-2D],eax
 004AE201    mov         eax,dword ptr [ebp-4]
 004AE204    call        004ADE48
 004AE209    lea         edx,[ebp-35]
 004AE20C    call        0042F4E4
>004AE211    jmp         004AE2E2
 004AE216    mov         eax,dword ptr [ebp-0C]
 004AE219    mov         edx,dword ptr [ebp-4]
 004AE21C    cmp         eax,dword ptr [edx+1C]
>004AE21F    je          004AE2E2
 004AE225    mov         byte ptr [ebp-0D],1
 004AE229    mov         eax,dword ptr [ebp-0C]
 004AE22C    mov         edx,dword ptr [ebp-4]
 004AE22F    mov         dword ptr [edx+1C],eax
 004AE232    mov         eax,dword ptr [ebp-4]
 004AE235    mov         eax,dword ptr [eax+4]
 004AE238    mov         eax,dword ptr [eax+4]
 004AE23B    cmp         byte ptr [eax+244],0
>004AE242    jne         004AE2E2
 004AE248    push        0F00
 004AE24D    mov         eax,dword ptr [ebp-4]
 004AE250    mov         eax,dword ptr [eax+1C]
 004AE253    inc         eax
 004AE254    call        0042F37C
 004AE259    push        eax
 004AE25A    mov         eax,dword ptr [ebp-4]
 004AE25D    call        004AE4CC
 004AE262    push        eax
 004AE263    mov         eax,dword ptr [ebp-4]
 004AE266    call        004ADE48
 004AE26B    pop         edx
 004AE26C    pop         ecx
 004AE26D    call        0042F904
>004AE272    jmp         004AE2E2
 004AE274    mov         eax,dword ptr [ebp-0C]
 004AE277    mov         edx,dword ptr [ebp-4]
 004AE27A    cmp         eax,dword ptr [edx+20]
>004AE27D    je          004AE2E2
 004AE27F    mov         byte ptr [ebp-0D],1
 004AE283    mov         eax,dword ptr [ebp-0C]
 004AE286    mov         edx,dword ptr [ebp-4]
 004AE289    mov         dword ptr [edx+20],eax
 004AE28C    mov         eax,dword ptr [ebp-4]
 004AE28F    mov         eax,dword ptr [eax+4]
 004AE292    mov         eax,dword ptr [eax+4]
 004AE295    cmp         byte ptr [eax+274],0
>004AE29C    je          004AE2A9
 004AE29E    cmp         dword ptr [ebp-0C],0FFFFFFFF
>004AE2A2    jne         004AE2A9
 004AE2A4    xor         eax,eax
 004AE2A6    mov         dword ptr [ebp-0C],eax
 004AE2A9    mov         eax,dword ptr [ebp-4]
 004AE2AC    mov         eax,dword ptr [eax+4]
 004AE2AF    mov         eax,dword ptr [eax+4]
 004AE2B2    cmp         byte ptr [eax+244],0
>004AE2B9    jne         004AE2E2
 004AE2BB    push        0F000
 004AE2C0    mov         eax,dword ptr [ebp-0C]
 004AE2C3    inc         eax
 004AE2C4    call        0042F49C
 004AE2C9    push        eax
 004AE2CA    mov         eax,dword ptr [ebp-4]
 004AE2CD    call        004AE4CC
 004AE2D2    push        eax
 004AE2D3    mov         eax,dword ptr [ebp-4]
 004AE2D6    call        004ADE48
 004AE2DB    pop         edx
 004AE2DC    pop         ecx
 004AE2DD    call        0042F904
 004AE2E2    cmp         byte ptr [ebp-0D],0
>004AE2E6    je          004AE31B
 004AE2E8    mov         eax,dword ptr [ebp-4]
 004AE2EB    mov         eax,dword ptr [eax+4]
 004AE2EE    mov         eax,dword ptr [eax+4]
 004AE2F1    cmp         byte ptr [eax+244],0
>004AE2F8    jne         004AE31B
 004AE2FA    mov         eax,dword ptr [ebp-4]
 004AE2FD    call        004AE4CC
 004AE302    push        eax
 004AE303    mov         eax,dword ptr [ebp-4]
 004AE306    call        004AE4CC
 004AE30B    push        eax
 004AE30C    mov         eax,dword ptr [ebp-4]
 004AE30F    call        004ADDFC
 004AE314    pop         edx
 004AE315    pop         ecx
 004AE316    call        004B00C8
 004AE31B    mov         esp,ebp
 004AE31D    pop         ebp
 004AE31E    ret
end;*}

//004AE320
procedure sub_004AE320(?:TListItem; ?:Integer);
begin
{*
 004AE320    push        ebp
 004AE321    mov         ebp,esp
 004AE323    add         esp,0FFFFFFD0
 004AE326    mov         dword ptr [ebp-8],edx
 004AE329    mov         dword ptr [ebp-4],eax
 004AE32C    mov         eax,dword ptr [ebp-4]
 004AE32F    mov         eax,dword ptr [eax+14]
 004AE332    cmp         eax,dword ptr [ebp-8]
>004AE335    je          004AE3A0
 004AE337    mov         eax,dword ptr [ebp-8]
 004AE33A    mov         edx,dword ptr [ebp-4]
 004AE33D    mov         dword ptr [edx+14],eax
 004AE340    mov         eax,dword ptr [ebp-4]
 004AE343    mov         eax,dword ptr [eax+4]
 004AE346    mov         eax,dword ptr [eax+4]
 004AE349    cmp         byte ptr [eax+244],0
>004AE350    jne         004AE3A0
 004AE352    mov         dword ptr [ebp-30],10
 004AE359    mov         eax,dword ptr [ebp-8]
 004AE35C    mov         dword ptr [ebp-0C],eax
 004AE35F    mov         eax,dword ptr [ebp-4]
 004AE362    call        004AE4CC
 004AE367    mov         dword ptr [ebp-2C],eax
 004AE36A    xor         eax,eax
 004AE36C    mov         dword ptr [ebp-28],eax
 004AE36F    mov         eax,dword ptr [ebp-4]
 004AE372    call        004ADE48
 004AE377    lea         edx,[ebp-30]
 004AE37A    call        0042F4E4
 004AE37F    mov         eax,dword ptr [ebp-4]
 004AE382    call        004AE4CC
 004AE387    push        eax
 004AE388    mov         eax,dword ptr [ebp-4]
 004AE38B    call        004AE4CC
 004AE390    push        eax
 004AE391    mov         eax,dword ptr [ebp-4]
 004AE394    call        004ADDFC
 004AE399    pop         edx
 004AE39A    pop         ecx
 004AE39B    call        004B00C8
 004AE3A0    mov         esp,ebp
 004AE3A2    pop         ebp
 004AE3A3    ret
*}
end;

//004AE3A4
{*procedure sub_004AE3A4(?:?);
begin
 004AE3A4    push        ebp
 004AE3A5    mov         ebp,esp
 004AE3A7    add         esp,0FFFFFFF4
 004AE3AA    mov         dword ptr [ebp-8],edx
 004AE3AD    mov         dword ptr [ebp-4],eax
 004AE3B0    mov         eax,dword ptr [ebp-8]
 004AE3B3    mov         edx,dword ptr ds:[4A5210];TListItem
 004AE3B9    call        @IsClass
 004AE3BE    test        al,al
>004AE3C0    je          004AE459
 004AE3C6    mov         eax,dword ptr [ebp-8]
 004AE3C9    mov         edx,dword ptr ds:[4A5210];TListItem
 004AE3CF    call        @AsClass
 004AE3D4    mov         dword ptr [ebp-0C],eax
 004AE3D7    mov         eax,dword ptr [ebp-0C]
 004AE3DA    mov         edx,dword ptr [eax+24];TListItem.FCaption:String
 004AE3DD    mov         eax,dword ptr [ebp-4]
 004AE3E0    call        004ADF4C
 004AE3E5    mov         eax,dword ptr [ebp-0C]
 004AE3E8    mov         edx,dword ptr [eax+0C];TListItem.FData:Pointer
 004AE3EB    mov         eax,dword ptr [ebp-4]
 004AE3EE    call        004AE018
 004AE3F3    mov         eax,dword ptr [ebp-0C]
 004AE3F6    mov         ecx,dword ptr [eax+10];TListItem.FImageIndex:TImageIndex
 004AE3F9    xor         edx,edx
 004AE3FB    mov         eax,dword ptr [ebp-4]
 004AE3FE    call        004AE188
 004AE403    mov         eax,dword ptr [ebp-0C]
 004AE406    mov         edx,dword ptr [eax+14];TListItem.FIndent:Integer
 004AE409    mov         eax,dword ptr [ebp-4]
 004AE40C    call        004AE320
 004AE411    mov         eax,dword ptr [ebp-0C]
 004AE414    mov         ecx,dword ptr [eax+1C];TListItem.FOverlayIndex:TImageIndex
 004AE417    mov         edx,1
 004AE41C    mov         eax,dword ptr [ebp-4]
 004AE41F    call        004AE188
 004AE424    mov         eax,dword ptr [ebp-0C]
 004AE427    mov         ecx,dword ptr [eax+20];TListItem.FStateIndex:TImageIndex
 004AE42A    mov         edx,2
 004AE42F    mov         eax,dword ptr [ebp-4]
 004AE432    call        004AE188
 004AE437    mov         eax,dword ptr [ebp-0C]
 004AE43A    mov         edx,dword ptr [eax+8];TListItem.FSubItems:TStrings
 004AE43D    mov         eax,dword ptr [ebp-4]
 004AE440    call        004AE4A8
 004AE445    mov         eax,dword ptr [ebp-0C]
 004AE448    call        004ADE68
 004AE44D    mov         edx,eax
 004AE44F    mov         eax,dword ptr [ebp-4]
 004AE452    call        004ADEC4
>004AE457    jmp         004AE464
 004AE459    mov         edx,dword ptr [ebp-8]
 004AE45C    mov         eax,dword ptr [ebp-4]
 004AE45F    call        004790A8
 004AE464    mov         esp,ebp
 004AE466    pop         ebp
 004AE467    ret
end;*}

//004AE468
{*function sub_004AE468(?:?; ?:?):?;
begin
 004AE468    push        ebp
 004AE469    mov         ebp,esp
 004AE46B    add         esp,0FFFFFFF4
 004AE46E    mov         dword ptr [ebp-8],edx
 004AE471    mov         dword ptr [ebp-4],eax
 004AE474    mov         eax,dword ptr [ebp-4]
 004AE477    mov         eax,dword ptr [eax+24]
 004AE47A    mov         edx,dword ptr [ebp-8]
 004AE47D    mov         edx,dword ptr [edx+24]
 004AE480    call        @LStrCmp
>004AE485    jne         004AE495
 004AE487    mov         eax,dword ptr [ebp-4]
 004AE48A    mov         eax,dword ptr [eax+0C]
 004AE48D    mov         edx,dword ptr [ebp-8]
 004AE490    cmp         eax,dword ptr [edx+0C]
>004AE493    je          004AE499
 004AE495    xor         eax,eax
>004AE497    jmp         004AE49B
 004AE499    mov         al,1
 004AE49B    mov         byte ptr [ebp-9],al
 004AE49E    mov         al,byte ptr [ebp-9]
 004AE4A1    mov         esp,ebp
 004AE4A3    pop         ebp
 004AE4A4    ret
end;*}

//004AE4A8
procedure sub_004AE4A8(?:TListItem; ?:TStrings);
begin
{*
 004AE4A8    push        ebp
 004AE4A9    mov         ebp,esp
 004AE4AB    add         esp,0FFFFFFF8
 004AE4AE    mov         dword ptr [ebp-8],edx
 004AE4B1    mov         dword ptr [ebp-4],eax
 004AE4B4    cmp         dword ptr [ebp-8],0
>004AE4B8    je          004AE4C8
 004AE4BA    mov         edx,dword ptr [ebp-8]
 004AE4BD    mov         eax,dword ptr [ebp-4]
 004AE4C0    mov         eax,dword ptr [eax+8];TListItem.FSubItems:TStrings
 004AE4C3    mov         ecx,dword ptr [eax]
 004AE4C5    call        dword ptr [ecx+8];TStrings.sub_0047A184
 004AE4C8    pop         ecx
 004AE4C9    pop         ecx
 004AE4CA    pop         ebp
 004AE4CB    ret
*}
end;

//004AE4CC
{*function sub_004AE4CC(?:TListItem):?;
begin
 004AE4CC    push        ebp
 004AE4CD    mov         ebp,esp
 004AE4CF    add         esp,0FFFFFFF8
 004AE4D2    mov         dword ptr [ebp-4],eax
 004AE4D5    mov         eax,dword ptr [ebp-4]
 004AE4D8    mov         eax,dword ptr [eax+4];TListItem.FOwner:TListItems
 004AE4DB    mov         eax,dword ptr [eax+4];TListItems.FOwner:TCustomListView
 004AE4DE    cmp         byte ptr [eax+244],0;TCustomListView.FOwnerData:Boolean
>004AE4E5    je          004AE4F2
 004AE4E7    mov         eax,dword ptr [ebp-4]
 004AE4EA    mov         eax,dword ptr [eax+18];TListItem.FIndex:Integer
 004AE4ED    mov         dword ptr [ebp-8],eax
>004AE4F0    jmp         004AE503
 004AE4F2    mov         edx,dword ptr [ebp-4]
 004AE4F5    mov         eax,dword ptr [ebp-4]
 004AE4F8    mov         eax,dword ptr [eax+4];TListItem.FOwner:TListItems
 004AE4FB    call        004AE7EC
 004AE500    mov         dword ptr [ebp-8],eax
 004AE503    mov         eax,dword ptr [ebp-8]
 004AE506    pop         ecx
 004AE507    pop         ecx
 004AE508    pop         ebp
 004AE509    ret
end;*}

//004AE50C
{*procedure sub_004AE50C(?:?; ?:?; ?:?);
begin
 004AE50C    push        ebp
 004AE50D    mov         ebp,esp
 004AE50F    add         esp,0FFFFFFF4
 004AE512    mov         dword ptr [ebp-0C],ecx
 004AE515    mov         byte ptr [ebp-5],dl
 004AE518    mov         dword ptr [ebp-4],eax
 004AE51B    xor         eax,eax
 004AE51D    mov         al,byte ptr [ebp-5]
 004AE520    mov         eax,dword ptr [eax*4+541440]
 004AE527    push        eax
 004AE528    mov         eax,dword ptr [ebp-4]
 004AE52B    call        004AE4CC
 004AE530    push        eax
 004AE531    mov         eax,dword ptr [ebp-4]
 004AE534    call        004ADE48
 004AE539    mov         ecx,dword ptr [ebp-0C]
 004AE53C    pop         edx
 004AE53D    call        0042F5F8
 004AE542    mov         esp,ebp
 004AE544    pop         ebp
 004AE545    ret
end;*}

//004AE548
{*function sub_004AE548(?:?; ?:?):?;
begin
 004AE548    push        ebp
 004AE549    mov         ebp,esp
 004AE54B    add         esp,0FFFFFFF4
 004AE54E    mov         dword ptr [ebp-8],edx
 004AE551    mov         dword ptr [ebp-4],eax
 004AE554    mov         edx,dword ptr [ebp-8]
 004AE557    mov         eax,dword ptr [ebp-4]
 004AE55A    mov         eax,dword ptr [eax+8]
 004AE55D    call        004ADCB8
 004AE562    mov         dword ptr [ebp-0C],eax
 004AE565    mov         eax,dword ptr [ebp-0C]
 004AE568    mov         esp,ebp
 004AE56A    pop         ebp
 004AE56B    ret
end;*}

//004AE56C
{*procedure sub_004AE56C(?:?; ?:?; ?:?);
begin
 004AE56C    push        ebp
 004AE56D    mov         ebp,esp
 004AE56F    add         esp,0FFFFFFCC
 004AE572    mov         dword ptr [ebp-0C],ecx
 004AE575    mov         dword ptr [ebp-8],edx
 004AE578    mov         dword ptr [ebp-4],eax
 004AE57B    mov         edx,dword ptr [ebp-8]
 004AE57E    mov         eax,dword ptr [ebp-4]
 004AE581    mov         eax,dword ptr [eax+8]
 004AE584    call        004ADCB8
 004AE589    cmp         eax,dword ptr [ebp-0C]
>004AE58C    je          004AE5E1
 004AE58E    mov         ecx,dword ptr [ebp-0C]
 004AE591    mov         edx,dword ptr [ebp-8]
 004AE594    mov         eax,dword ptr [ebp-4]
 004AE597    mov         eax,dword ptr [eax+8]
 004AE59A    call        004ADCDC
 004AE59F    mov         eax,dword ptr [ebp-4]
 004AE5A2    mov         eax,dword ptr [eax+4]
 004AE5A5    mov         eax,dword ptr [eax+4]
 004AE5A8    cmp         byte ptr [eax+244],0
>004AE5AF    jne         004AE5E1
 004AE5B1    mov         dword ptr [ebp-34],2
 004AE5B8    mov         dword ptr [ebp-18],0FFFFFFFF
 004AE5BF    mov         eax,dword ptr [ebp-4]
 004AE5C2    call        004AE4CC
 004AE5C7    mov         dword ptr [ebp-30],eax
 004AE5CA    mov         eax,dword ptr [ebp-8]
 004AE5CD    inc         eax
 004AE5CE    mov         dword ptr [ebp-2C],eax
 004AE5D1    mov         eax,dword ptr [ebp-4]
 004AE5D4    call        004ADE48
 004AE5D9    lea         edx,[ebp-34]
 004AE5DC    call        0042F4E4
 004AE5E1    mov         esp,ebp
 004AE5E3    pop         ebp
 004AE5E4    ret
end;*}

//004AE5E8
constructor TListItems.Create;
begin
{*
 004AE5E8    push        ebp
 004AE5E9    mov         ebp,esp
 004AE5EB    add         esp,0FFFFFFF4
 004AE5EE    test        dl,dl
>004AE5F0    je          004AE5FA
 004AE5F2    add         esp,0FFFFFFF0
 004AE5F5    call        @ClassCreate
 004AE5FA    mov         dword ptr [ebp-0C],ecx
 004AE5FD    mov         byte ptr [ebp-5],dl
 004AE600    mov         dword ptr [ebp-4],eax
 004AE603    xor         edx,edx
 004AE605    mov         eax,dword ptr [ebp-4]
 004AE608    call        TObject.Create
 004AE60D    mov         eax,dword ptr [ebp-4]
 004AE610    mov         edx,dword ptr [ebp-0C]
 004AE613    mov         dword ptr [eax+4],edx
 004AE616    mov         eax,dword ptr [ebp-4]
 004AE619    cmp         byte ptr [ebp-5],0
>004AE61D    je          004AE62E
 004AE61F    call        @AfterConstruction
 004AE624    pop         dword ptr fs:[0]
 004AE62B    add         esp,0C
 004AE62E    mov         eax,dword ptr [ebp-4]
 004AE631    mov         esp,ebp
 004AE633    pop         ebp
 004AE634    ret
*}
end;

//004AE638
destructor TListItems.Destroy;
begin
{*
 004AE638    push        ebp
 004AE639    mov         ebp,esp
 004AE63B    add         esp,0FFFFFFF8
 004AE63E    call        @BeforeDestruction
 004AE643    mov         byte ptr [ebp-5],dl
 004AE646    mov         dword ptr [ebp-4],eax
 004AE649    mov         eax,dword ptr [ebp-4]
 004AE64C    call        TListItems.Clear
 004AE651    mov         dl,byte ptr [ebp-5]
 004AE654    and         dl,0FC
 004AE657    mov         eax,dword ptr [ebp-4]
 004AE65A    call        TPersistent.Destroy
 004AE65F    cmp         byte ptr [ebp-5],0
>004AE663    jle         004AE66D
 004AE665    mov         eax,dword ptr [ebp-4]
 004AE668    call        @ClassDestroy
 004AE66D    pop         ecx
 004AE66E    pop         ecx
 004AE66F    pop         ebp
 004AE670    ret
*}
end;

//004AE674
{*function sub_004AE674(?:TListItems; ?:TCustomListView; ?:?):?;
begin
 004AE674    push        ebp
 004AE675    mov         ebp,esp
 004AE677    add         esp,0FFFFFFF8
 004AE67A    mov         dword ptr [ebp-4],eax
 004AE67D    or          ecx,0FFFFFFFF
 004AE680    xor         edx,edx
 004AE682    mov         eax,dword ptr [ebp-4]
 004AE685    call        004AE694
 004AE68A    mov         dword ptr [ebp-8],eax
 004AE68D    mov         eax,dword ptr [ebp-8]
 004AE690    pop         ecx
 004AE691    pop         ecx
 004AE692    pop         ebp
 004AE693    ret
end;*}

//004AE694
{*function sub_004AE694(?:?; ?:?; ?:?):?;
begin
 004AE694    push        ebp
 004AE695    mov         ebp,esp
 004AE697    add         esp,0FFFFFFC8
 004AE69A    mov         dword ptr [ebp-0C],ecx
 004AE69D    mov         dword ptr [ebp-8],edx
 004AE6A0    mov         dword ptr [ebp-4],eax
 004AE6A3    cmp         dword ptr [ebp-8],0
>004AE6A7    jne         004AE6BC
 004AE6A9    mov         eax,dword ptr [ebp-4]
 004AE6AC    mov         eax,dword ptr [eax+4]
 004AE6AF    mov         edx,dword ptr [eax]
 004AE6B1    call        dword ptr [edx+0F8]
 004AE6B7    mov         dword ptr [ebp-10],eax
>004AE6BA    jmp         004AE6C2
 004AE6BC    mov         eax,dword ptr [ebp-8]
 004AE6BF    mov         dword ptr [ebp-10],eax
 004AE6C2    cmp         dword ptr [ebp-0C],0
>004AE6C6    jge         004AE6D3
 004AE6C8    mov         eax,dword ptr [ebp-4]
 004AE6CB    call        004AE700
 004AE6D0    mov         dword ptr [ebp-0C],eax
 004AE6D3    lea         eax,[ebp-38]
 004AE6D6    push        eax
 004AE6D7    mov         ecx,dword ptr [ebp-10]
 004AE6DA    mov         edx,dword ptr [ebp-0C]
 004AE6DD    mov         eax,dword ptr [ebp-4]
 004AE6E0    call        004AF198
 004AE6E5    lea         eax,[ebp-38]
 004AE6E8    push        eax
 004AE6E9    mov         eax,dword ptr [ebp-4]
 004AE6EC    call        004AE738
 004AE6F1    pop         edx
 004AE6F2    call        0042F510
 004AE6F7    mov         eax,dword ptr [ebp-10]
 004AE6FA    mov         esp,ebp
 004AE6FC    pop         ebp
 004AE6FD    ret
end;*}

//004AE700
{*function sub_004AE700(?:TListItems):?;
begin
 004AE700    push        ebp
 004AE701    mov         ebp,esp
 004AE703    add         esp,0FFFFFFF8
 004AE706    mov         dword ptr [ebp-4],eax
 004AE709    mov         eax,dword ptr [ebp-4]
 004AE70C    mov         eax,dword ptr [eax+4]
 004AE70F    call        TWinControl.HandleAllocated
 004AE714    test        al,al
>004AE716    je          004AE72A
 004AE718    mov         eax,dword ptr [ebp-4]
 004AE71B    call        004AE738
 004AE720    call        0042F474
 004AE725    mov         dword ptr [ebp-8],eax
>004AE728    jmp         004AE72F
 004AE72A    xor         eax,eax
 004AE72C    mov         dword ptr [ebp-8],eax
 004AE72F    mov         eax,dword ptr [ebp-8]
 004AE732    pop         ecx
 004AE733    pop         ecx
 004AE734    pop         ebp
 004AE735    ret
end;*}

//004AE738
{*function sub_004AE738(?:TListItems):?;
begin
 004AE738    push        ebp
 004AE739    mov         ebp,esp
 004AE73B    add         esp,0FFFFFFF8
 004AE73E    mov         dword ptr [ebp-4],eax
 004AE741    mov         eax,dword ptr [ebp-4]
 004AE744    mov         eax,dword ptr [eax+4]
 004AE747    call        TWinControl.GetHandle
 004AE74C    mov         dword ptr [ebp-8],eax
 004AE74F    mov         eax,dword ptr [ebp-8]
 004AE752    pop         ecx
 004AE753    pop         ecx
 004AE754    pop         ebp
 004AE755    ret
end;*}

//004AE758
{*function sub_004AE758(?:TListItems; ?:Integer):?;
begin
 004AE758    push        ebp
 004AE759    mov         ebp,esp
 004AE75B    add         esp,0FFFFFFCC
 004AE75E    mov         dword ptr [ebp-8],edx
 004AE761    mov         dword ptr [ebp-4],eax
 004AE764    xor         eax,eax
 004AE766    mov         dword ptr [ebp-0C],eax
 004AE769    mov         eax,dword ptr [ebp-4]
 004AE76C    mov         eax,dword ptr [eax+4]
 004AE76F    call        TWinControl.HandleAllocated
 004AE774    test        al,al
>004AE776    je          004AE7E5
 004AE778    mov         eax,dword ptr [ebp-4]
 004AE77B    mov         eax,dword ptr [eax+4]
 004AE77E    cmp         byte ptr [eax+244],0
>004AE785    je          004AE7B9
 004AE787    lea         eax,[ebp-34]
 004AE78A    xor         ecx,ecx
 004AE78C    mov         edx,28
 004AE791    call        @FillChar
 004AE796    xor         eax,eax
 004AE798    mov         dword ptr [ebp-34],eax
 004AE79B    mov         eax,dword ptr [ebp-8]
 004AE79E    mov         dword ptr [ebp-30],eax
 004AE7A1    xor         eax,eax
 004AE7A3    mov         dword ptr [ebp-2C],eax
 004AE7A6    lea         edx,[ebp-34]
 004AE7A9    mov         eax,dword ptr [ebp-4]
 004AE7AC    mov         eax,dword ptr [eax+4]
 004AE7AF    call        004B0F90
 004AE7B4    mov         dword ptr [ebp-0C],eax
>004AE7B7    jmp         004AE7E5
 004AE7B9    mov         dword ptr [ebp-34],4
 004AE7C0    mov         eax,dword ptr [ebp-8]
 004AE7C3    mov         dword ptr [ebp-30],eax
 004AE7C6    xor         eax,eax
 004AE7C8    mov         dword ptr [ebp-2C],eax
 004AE7CB    mov         eax,dword ptr [ebp-4]
 004AE7CE    call        004AE738
 004AE7D3    lea         edx,[ebp-34]
 004AE7D6    call        0042F4B8
 004AE7DB    test        eax,eax
>004AE7DD    je          004AE7E5
 004AE7DF    mov         eax,dword ptr [ebp-14]
 004AE7E2    mov         dword ptr [ebp-0C],eax
 004AE7E5    mov         eax,dword ptr [ebp-0C]
 004AE7E8    mov         esp,ebp
 004AE7EA    pop         ebp
 004AE7EB    ret
end;*}

//004AE7EC
{*function sub_004AE7EC(?:TListItems; ?:TListItem):?;
begin
 004AE7EC    push        ebp
 004AE7ED    mov         ebp,esp
 004AE7EF    add         esp,0FFFFFFDC
 004AE7F2    mov         dword ptr [ebp-8],edx
 004AE7F5    mov         dword ptr [ebp-4],eax
 004AE7F8    mov         dword ptr [ebp-24],1
 004AE7FF    mov         eax,dword ptr [ebp-8]
 004AE802    mov         dword ptr [ebp-1C],eax
 004AE805    mov         eax,dword ptr [ebp-4]
 004AE808    call        004AE738
 004AE80D    lea         ecx,[ebp-24]
 004AE810    or          edx,0FFFFFFFF
 004AE813    call        0042F5C8
 004AE818    mov         dword ptr [ebp-0C],eax
 004AE81B    mov         eax,dword ptr [ebp-0C]
 004AE81E    mov         esp,ebp
 004AE820    pop         ebp
 004AE821    ret
end;*}

//004AE824
procedure sub_004AE824(?:TListItems; ?:Integer);
begin
{*
 004AE824    push        ebp
 004AE825    mov         ebp,esp
 004AE827    add         esp,0FFFFFFF8
 004AE82A    mov         dword ptr [ebp-8],edx
 004AE82D    mov         dword ptr [ebp-4],eax
 004AE830    mov         eax,dword ptr [ebp-4]
 004AE833    call        004AE738
 004AE838    mov         ecx,1
 004AE83D    mov         edx,dword ptr [ebp-8]
 004AE840    call        0042FA4C
 004AE845    pop         ecx
 004AE846    pop         ecx
 004AE847    pop         ebp
 004AE848    ret
*}
end;

//004AE84C
procedure TListItems.Clear;
begin
{*
 004AE84C    push        ebp
 004AE84D    mov         ebp,esp
 004AE84F    push        ecx
 004AE850    mov         dword ptr [ebp-4],eax
 004AE853    mov         eax,dword ptr [ebp-4]
 004AE856    mov         eax,dword ptr [eax+4]
 004AE859    call        TWinControl.HandleAllocated
 004AE85E    test        al,al
>004AE860    je          004AE86F
 004AE862    mov         eax,dword ptr [ebp-4]
 004AE865    call        004AE738
 004AE86A    call        0042F568
 004AE86F    pop         ecx
 004AE870    pop         ebp
 004AE871    ret
*}
end;

//004AE874
procedure TListItems.BeginUpdate;
begin
{*
 004AE874    push        ebp
 004AE875    mov         ebp,esp
 004AE877    push        ecx
 004AE878    mov         dword ptr [ebp-4],eax
 004AE87B    mov         eax,dword ptr [ebp-4]
 004AE87E    cmp         dword ptr [eax+8],0
>004AE882    jne         004AE88E
 004AE884    mov         dl,1
 004AE886    mov         eax,dword ptr [ebp-4]
 004AE889    call        004AE898
 004AE88E    mov         eax,dword ptr [ebp-4]
 004AE891    inc         dword ptr [eax+8]
 004AE894    pop         ecx
 004AE895    pop         ebp
 004AE896    ret
*}
end;

//004AE898
{*procedure sub_004AE898(?:TListItems; ?:?);
begin
 004AE898    push        ebp
 004AE899    mov         ebp,esp
 004AE89B    add         esp,0FFFFFFE4
 004AE89E    mov         byte ptr [ebp-5],dl
 004AE8A1    mov         dword ptr [ebp-4],eax
 004AE8A4    cmp         byte ptr [ebp-5],0
>004AE8A8    je          004AE995
 004AE8AE    mov         eax,dword ptr [ebp-4]
 004AE8B1    mov         eax,dword ptr [eax+4];TListItems.FOwner:TCustomListView
 004AE8B4    mov         dword ptr [ebp-10],eax
 004AE8B7    mov         eax,dword ptr [ebp-10]
 004AE8BA    mov         al,byte ptr [eax+229];TCustomListView.FSortType:TSortType
 004AE8C0    mov         edx,dword ptr [ebp-10]
 004AE8C3    mov         byte ptr [edx+288],al;TCustomListView.FSavedSort:TSortType
 004AE8C9    xor         edx,edx
 004AE8CB    mov         eax,dword ptr [ebp-10]
 004AE8CE    call        TListView.SetSortType
 004AE8D3    mov         eax,dword ptr [ebp-4]
 004AE8D6    mov         eax,dword ptr [eax+4];TListItems.FOwner:TCustomListView
 004AE8D9    mov         eax,dword ptr [eax+23C];TCustomListView.FListColumns:TListColumns
 004AE8DF    call        00479B60
 004AE8E4    dec         eax
 004AE8E5    test        eax,eax
>004AE8E7    jl          004AE93E
 004AE8E9    inc         eax
 004AE8EA    mov         dword ptr [ebp-14],eax
 004AE8ED    mov         dword ptr [ebp-0C],0
 004AE8F4    mov         eax,dword ptr [ebp-4]
 004AE8F7    mov         eax,dword ptr [eax+4];TListItems.FOwner:TCustomListView
 004AE8FA    mov         eax,dword ptr [eax+23C];TCustomListView.FListColumns:TListColumns
 004AE900    mov         edx,dword ptr [ebp-0C]
 004AE903    call        004AD570
 004AE908    mov         dword ptr [ebp-18],eax
 004AE90B    mov         eax,dword ptr [ebp-18]
 004AE90E    cmp         dword ptr [eax+24],0
>004AE912    jge         004AE936
 004AE914    mov         eax,dword ptr [ebp-18]
 004AE917    mov         eax,dword ptr [eax+24]
 004AE91A    mov         edx,dword ptr [ebp-18]
 004AE91D    mov         dword ptr [edx+20],eax
 004AE920    mov         eax,dword ptr [ebp-18]
 004AE923    call        TListColumn.GetWidth
 004AE928    mov         edx,dword ptr [ebp-18]
 004AE92B    mov         dword ptr [edx+24],eax
 004AE92E    mov         eax,dword ptr [ebp-18]
 004AE931    call        004AD0B8
 004AE936    inc         dword ptr [ebp-0C]
 004AE939    dec         dword ptr [ebp-14]
>004AE93C    jne         004AE8F4
 004AE93E    push        0
 004AE940    push        0
 004AE942    push        0B
 004AE944    mov         eax,dword ptr [ebp-4]
 004AE947    call        004AE738
 004AE94C    push        eax
 004AE94D    call        user32.SendMessageA
 004AE952    mov         eax,dword ptr [ebp-4]
 004AE955    mov         eax,dword ptr [eax+4];TListItems.FOwner:TCustomListView
 004AE958    call        004B0AE0
 004AE95D    test        al,al
>004AE95F    je          004AEA9E
 004AE965    mov         eax,dword ptr [ebp-4]
 004AE968    mov         eax,dword ptr [eax+4];TListItems.FOwner:TCustomListView
 004AE96B    call        004B0B00
 004AE970    test        al,al
>004AE972    je          004AEA9E
 004AE978    push        0
 004AE97A    push        0
 004AE97C    push        0B
 004AE97E    mov         eax,dword ptr [ebp-4]
 004AE981    mov         eax,dword ptr [eax+4];TListItems.FOwner:TCustomListView
 004AE984    mov         eax,dword ptr [eax+264];TCustomListView.FHeaderHandle:HWND
 004AE98A    push        eax
 004AE98B    call        user32.SendMessageA
>004AE990    jmp         004AEA9E
 004AE995    mov         eax,dword ptr [ebp-4]
 004AE998    cmp         dword ptr [eax+8],0;TListItems.FUpdateCount:Integer
>004AE99C    jne         004AEA9E
 004AE9A2    mov         eax,dword ptr [ebp-4]
 004AE9A5    mov         eax,dword ptr [eax+4];TListItems.FOwner:TCustomListView
 004AE9A8    mov         dl,byte ptr [eax+288];TCustomListView.FSavedSort:TSortType
 004AE9AE    mov         eax,dword ptr [ebp-4]
 004AE9B1    mov         eax,dword ptr [eax+4];TListItems.FOwner:TCustomListView
 004AE9B4    call        TListView.SetSortType
 004AE9B9    mov         eax,dword ptr [ebp-4]
 004AE9BC    mov         eax,dword ptr [eax+4];TListItems.FOwner:TCustomListView
 004AE9BF    mov         eax,dword ptr [eax+23C];TCustomListView.FListColumns:TListColumns
 004AE9C5    call        00479B60
 004AE9CA    dec         eax
 004AE9CB    test        eax,eax
>004AE9CD    jl          004AEA18
 004AE9CF    inc         eax
 004AE9D0    mov         dword ptr [ebp-14],eax
 004AE9D3    mov         dword ptr [ebp-0C],0
 004AE9DA    mov         eax,dword ptr [ebp-4]
 004AE9DD    mov         eax,dword ptr [eax+4];TListItems.FOwner:TCustomListView
 004AE9E0    mov         eax,dword ptr [eax+23C];TCustomListView.FListColumns:TListColumns
 004AE9E6    mov         edx,dword ptr [ebp-0C]
 004AE9E9    call        004AD570
 004AE9EE    mov         dword ptr [ebp-1C],eax
 004AE9F1    mov         eax,dword ptr [ebp-1C]
 004AE9F4    cmp         dword ptr [eax+20],0
>004AE9F8    jge         004AEA10
 004AE9FA    mov         eax,dword ptr [ebp-1C]
 004AE9FD    mov         edx,dword ptr [eax+20]
 004AEA00    mov         eax,dword ptr [ebp-1C]
 004AEA03    call        TListColumn.SetWidth
 004AEA08    mov         eax,dword ptr [ebp-1C]
 004AEA0B    xor         edx,edx
 004AEA0D    mov         dword ptr [eax+20],edx
 004AEA10    inc         dword ptr [ebp-0C]
 004AEA13    dec         dword ptr [ebp-14]
>004AEA16    jne         004AE9DA
 004AEA18    mov         eax,dword ptr [ebp-4]
 004AEA1B    mov         byte ptr [eax+0C],1;TListItems.FNoRedraw:Boolean
 004AEA1F    xor         eax,eax
 004AEA21    push        ebp
 004AEA22    push        4AEA61
 004AEA27    push        dword ptr fs:[eax]
 004AEA2A    mov         dword ptr fs:[eax],esp
 004AEA2D    push        0
 004AEA2F    push        1
 004AEA31    push        0B
 004AEA33    mov         eax,dword ptr [ebp-4]
 004AEA36    call        004AE738
 004AEA3B    push        eax
 004AEA3C    call        user32.SendMessageA
 004AEA41    mov         eax,dword ptr [ebp-4]
 004AEA44    mov         eax,dword ptr [eax+4];TListItems.FOwner:TCustomListView
 004AEA47    mov         edx,dword ptr [eax]
 004AEA49    call        dword ptr [edx+7C];TCustomListView.sub_004D3648
 004AEA4C    xor         eax,eax
 004AEA4E    pop         edx
 004AEA4F    pop         ecx
 004AEA50    pop         ecx
 004AEA51    mov         dword ptr fs:[eax],edx
 004AEA54    push        4AEA68
 004AEA59    mov         eax,dword ptr [ebp-4]
 004AEA5C    mov         byte ptr [eax+0C],0;TListItems.FNoRedraw:Boolean
 004AEA60    ret
>004AEA61    jmp         @HandleFinally
>004AEA66    jmp         004AEA59
 004AEA68    mov         eax,dword ptr [ebp-4]
 004AEA6B    mov         eax,dword ptr [eax+4];TListItems.FOwner:TCustomListView
 004AEA6E    call        004B0AE0
 004AEA73    test        al,al
>004AEA75    je          004AEA9E
 004AEA77    mov         eax,dword ptr [ebp-4]
 004AEA7A    mov         eax,dword ptr [eax+4];TListItems.FOwner:TCustomListView
 004AEA7D    call        004B0B00
 004AEA82    test        al,al
>004AEA84    je          004AEA9E
 004AEA86    push        0
 004AEA88    push        1
 004AEA8A    push        0B
 004AEA8C    mov         eax,dword ptr [ebp-4]
 004AEA8F    mov         eax,dword ptr [eax+4];TListItems.FOwner:TCustomListView
 004AEA92    mov         eax,dword ptr [eax+264];TCustomListView.FHeaderHandle:HWND
 004AEA98    push        eax
 004AEA99    call        user32.SendMessageA
 004AEA9E    mov         esp,ebp
 004AEAA0    pop         ebp
 004AEAA1    ret
end;*}

//004AEAA4
procedure TListItems.EndUpdate;
begin
{*
 004AEAA4    push        ebp
 004AEAA5    mov         ebp,esp
 004AEAA7    push        ecx
 004AEAA8    mov         dword ptr [ebp-4],eax
 004AEAAB    mov         eax,dword ptr [ebp-4]
 004AEAAE    dec         dword ptr [eax+8]
 004AEAB1    mov         eax,dword ptr [ebp-4]
 004AEAB4    cmp         dword ptr [eax+8],0
>004AEAB8    jne         004AEAC4
 004AEABA    xor         edx,edx
 004AEABC    mov         eax,dword ptr [ebp-4]
 004AEABF    call        004AE898
 004AEAC4    pop         ecx
 004AEAC5    pop         ebp
 004AEAC6    ret
*}
end;

//004AEAC8
{*procedure sub_004AEAC8(?:?);
begin
 004AEAC8    push        ebp
 004AEAC9    mov         ebp,esp
 004AEACB    add         esp,0FFFFFFEC
 004AEACE    mov         dword ptr [ebp-8],edx
 004AEAD1    mov         dword ptr [ebp-4],eax
 004AEAD4    mov         eax,dword ptr [ebp-8]
 004AEAD7    mov         edx,dword ptr ds:[4A52A8];TListItems
 004AEADD    call        @IsClass
 004AEAE2    test        al,al
>004AEAE4    je          004AEB30
 004AEAE6    mov         eax,dword ptr [ebp-4]
 004AEAE9    call        TListItems.Clear
 004AEAEE    mov         eax,dword ptr [ebp-8]
 004AEAF1    mov         dword ptr [ebp-0C],eax
 004AEAF4    mov         eax,dword ptr [ebp-0C]
 004AEAF7    call        004AE700
 004AEAFC    dec         eax
 004AEAFD    test        eax,eax
>004AEAFF    jl          004AEB3B
 004AEB01    inc         eax
 004AEB02    mov         dword ptr [ebp-14],eax
 004AEB05    mov         dword ptr [ebp-10],0
 004AEB0C    mov         edx,dword ptr [ebp-10]
 004AEB0F    mov         eax,dword ptr [ebp-0C]
 004AEB12    call        004AE758
 004AEB17    push        eax
 004AEB18    mov         eax,dword ptr [ebp-4]
 004AEB1B    call        004AE674
 004AEB20    pop         edx
 004AEB21    mov         ecx,dword ptr [eax]
 004AEB23    call        dword ptr [ecx+8]
 004AEB26    inc         dword ptr [ebp-10]
 004AEB29    dec         dword ptr [ebp-14]
>004AEB2C    jne         004AEB0C
>004AEB2E    jmp         004AEB3B
 004AEB30    mov         edx,dword ptr [ebp-8]
 004AEB33    mov         eax,dword ptr [ebp-4]
 004AEB36    call        004790A8
 004AEB3B    mov         esp,ebp
 004AEB3D    pop         ebp
 004AEB3E    ret
end;*}

//004AEB40
function WriteItems:Boolean;
begin
{*
 004AEB40    push        ebp
 004AEB41    mov         ebp,esp
 004AEB43    add         esp,0FFFFFFF0
 004AEB46    push        ebx
 004AEB47    mov         eax,dword ptr [ebp+8]
 004AEB4A    mov         eax,dword ptr [eax-4]
 004AEB4D    mov         eax,dword ptr [eax+20]
 004AEB50    mov         dword ptr [ebp-0C],eax
 004AEB53    cmp         dword ptr [ebp-0C],0
>004AEB57    jne         004AEB6C
 004AEB59    mov         eax,dword ptr [ebp+8]
 004AEB5C    mov         eax,dword ptr [eax-8]
 004AEB5F    call        004AE700
 004AEB64    test        eax,eax
 004AEB66    setg        byte ptr [ebp-1]
>004AEB6A    jmp         004AEBDD
 004AEB6C    mov         eax,dword ptr [ebp-0C]
 004AEB6F    call        004AE700
 004AEB74    mov         ebx,eax
 004AEB76    mov         eax,dword ptr [ebp+8]
 004AEB79    mov         eax,dword ptr [eax-8]
 004AEB7C    call        004AE700
 004AEB81    cmp         ebx,eax
>004AEB83    je          004AEB8B
 004AEB85    mov         byte ptr [ebp-1],1
>004AEB89    jmp         004AEBDD
 004AEB8B    mov         byte ptr [ebp-1],0
 004AEB8F    mov         eax,dword ptr [ebp+8]
 004AEB92    mov         eax,dword ptr [eax-8]
 004AEB95    call        004AE700
 004AEB9A    dec         eax
 004AEB9B    test        eax,eax
>004AEB9D    jl          004AEBDD
 004AEB9F    inc         eax
 004AEBA0    mov         dword ptr [ebp-10],eax
 004AEBA3    mov         dword ptr [ebp-8],0
 004AEBAA    mov         edx,dword ptr [ebp-8]
 004AEBAD    mov         eax,dword ptr [ebp-0C]
 004AEBB0    call        004AE758
 004AEBB5    push        eax
 004AEBB6    mov         eax,dword ptr [ebp+8]
 004AEBB9    mov         eax,dword ptr [eax-8]
 004AEBBC    mov         edx,dword ptr [ebp-8]
 004AEBBF    call        004AE758
 004AEBC4    pop         edx
 004AEBC5    call        004AE468
 004AEBCA    xor         al,1
 004AEBCC    mov         byte ptr [ebp-1],al
 004AEBCF    cmp         byte ptr [ebp-1],0
>004AEBD3    jne         004AEBDD
 004AEBD5    inc         dword ptr [ebp-8]
 004AEBD8    dec         dword ptr [ebp-10]
>004AEBDB    jne         004AEBAA
 004AEBDD    mov         al,byte ptr [ebp-1]
 004AEBE0    pop         ebx
 004AEBE1    mov         esp,ebp
 004AEBE3    pop         ebp
 004AEBE4    ret
*}
end;

//004AEBE8
procedure TListItems.DefineProperties(Filer:TFiler);
begin
{*
 004AEBE8    push        ebp
 004AEBE9    mov         ebp,esp
 004AEBEB    add         esp,0FFFFFFF8
 004AEBEE    push        ebx
 004AEBEF    mov         dword ptr [ebp-4],edx
 004AEBF2    mov         dword ptr [ebp-8],eax
 004AEBF5    mov         edx,dword ptr [ebp-4]
 004AEBF8    mov         eax,dword ptr [ebp-8]
 004AEBFB    call        TPersistent.DefineProperties
 004AEC00    mov         eax,dword ptr [ebp-8]
 004AEC03    push        eax
 004AEC04    push        4AEC40;TListItems.ReadData
 004AEC09    mov         eax,dword ptr [ebp-8]
 004AEC0C    push        eax
 004AEC0D    push        4AEEA4;TListItems.WriteData
 004AEC12    push        ebp
 004AEC13    call        WriteItems
 004AEC18    pop         ecx
 004AEC19    mov         ecx,eax
 004AEC1B    mov         edx,4AEC38;'Data'
 004AEC20    mov         eax,dword ptr [ebp-4]
 004AEC23    mov         ebx,dword ptr [eax]
 004AEC25    call        dword ptr [ebx+8]
 004AEC28    pop         ebx
 004AEC29    pop         ecx
 004AEC2A    pop         ecx
 004AEC2B    pop         ebp
 004AEC2C    ret
*}
end;

//004AEC40
procedure TListItems.ReadData(Stream:TStream);
begin
{*
 004AEC40    push        ebp
 004AEC41    mov         ebp,esp
 004AEC43    add         esp,0FFFFFFBC
 004AEC46    xor         ecx,ecx
 004AEC48    mov         dword ptr [ebp-44],ecx
 004AEC4B    mov         dword ptr [ebp-40],ecx
 004AEC4E    mov         dword ptr [ebp-8],edx
 004AEC51    mov         dword ptr [ebp-4],eax
 004AEC54    xor         eax,eax
 004AEC56    push        ebp
 004AEC57    push        4AEE6A
 004AEC5C    push        dword ptr fs:[eax]
 004AEC5F    mov         dword ptr fs:[eax],esp
 004AEC62    mov         eax,dword ptr [ebp-4]
 004AEC65    call        TListItems.Clear
 004AEC6A    lea         edx,[ebp-14]
 004AEC6D    mov         ecx,4
 004AEC72    mov         eax,dword ptr [ebp-8]
 004AEC75    call        0047BF28
 004AEC7A    mov         eax,dword ptr [ebp-14]
 004AEC7D    call        004660E8
 004AEC82    mov         dword ptr [ebp-20],eax
 004AEC85    xor         eax,eax
 004AEC87    push        ebp
 004AEC88    push        4AEE48
 004AEC8D    push        dword ptr fs:[eax]
 004AEC90    mov         dword ptr fs:[eax],esp
 004AEC93    mov         ecx,dword ptr [ebp-14]
 004AEC96    sub         ecx,4
 004AEC99    mov         eax,dword ptr [ebp-20]
 004AEC9C    lea         edx,[eax+4]
 004AEC9F    mov         eax,dword ptr [ebp-8]
 004AECA2    call        0047BF28
 004AECA7    mov         eax,dword ptr [ebp-20]
 004AECAA    add         eax,8
 004AECAD    mov         dword ptr [ebp-24],eax
 004AECB0    xor         eax,eax
 004AECB2    mov         dword ptr [ebp-28],eax
 004AECB5    mov         eax,dword ptr [ebp-20]
 004AECB8    mov         eax,dword ptr [eax+4]
 004AECBB    dec         eax
 004AECBC    test        eax,eax
>004AECBE    jl          004AEDB8
 004AECC4    inc         eax
 004AECC5    mov         dword ptr [ebp-30],eax
 004AECC8    mov         dword ptr [ebp-0C],0
 004AECCF    mov         eax,dword ptr [ebp-4]
 004AECD2    call        004AE674
 004AECD7    mov         dword ptr [ebp-34],eax
 004AECDA    lea         eax,[ebp-40]
 004AECDD    mov         edx,dword ptr [ebp-24]
 004AECE0    add         edx,14
 004AECE3    call        @LStrFromString
 004AECE8    mov         edx,dword ptr [ebp-40]
 004AECEB    mov         eax,dword ptr [ebp-34]
 004AECEE    call        004ADF4C
 004AECF3    mov         eax,dword ptr [ebp-24]
 004AECF6    mov         ecx,dword ptr [eax]
 004AECF8    xor         edx,edx
 004AECFA    mov         eax,dword ptr [ebp-34]
 004AECFD    call        004AE188
 004AED02    mov         eax,dword ptr [ebp-24]
 004AED05    mov         ecx,dword ptr [eax+8]
 004AED08    mov         edx,1
 004AED0D    mov         eax,dword ptr [ebp-34]
 004AED10    call        004AE188
 004AED15    mov         eax,dword ptr [ebp-24]
 004AED18    mov         ecx,dword ptr [eax+4]
 004AED1B    mov         edx,2
 004AED20    mov         eax,dword ptr [ebp-34]
 004AED23    call        004AE188
 004AED28    mov         eax,dword ptr [ebp-24]
 004AED2B    mov         edx,dword ptr [eax+10]
 004AED2E    mov         eax,dword ptr [ebp-34]
 004AED31    call        004AE018
 004AED36    mov         eax,dword ptr [ebp-24]
 004AED39    add         eax,14
 004AED3C    mov         dword ptr [ebp-28],eax
 004AED3F    mov         eax,dword ptr [ebp-28]
 004AED42    movzx       eax,byte ptr [eax]
 004AED45    inc         eax
 004AED46    add         dword ptr [ebp-28],eax
 004AED49    xor         eax,eax
 004AED4B    mov         dword ptr [ebp-1C],eax
 004AED4E    mov         eax,dword ptr [ebp-24]
 004AED51    mov         eax,dword ptr [eax+0C]
 004AED54    dec         eax
 004AED55    test        eax,eax
>004AED57    jl          004AED9C
 004AED59    inc         eax
 004AED5A    mov         dword ptr [ebp-38],eax
 004AED5D    mov         dword ptr [ebp-10],0
 004AED64    lea         eax,[ebp-44]
 004AED67    mov         edx,dword ptr [ebp-28]
 004AED6A    call        @LStrFromString
 004AED6F    mov         edx,dword ptr [ebp-44]
 004AED72    mov         eax,dword ptr [ebp-34]
 004AED75    mov         eax,dword ptr [eax+8]
 004AED78    mov         ecx,dword ptr [eax]
 004AED7A    call        dword ptr [ecx+38]
 004AED7D    mov         eax,dword ptr [ebp-28]
 004AED80    movzx       eax,byte ptr [eax]
 004AED83    mov         dword ptr [ebp-18],eax
 004AED86    mov         eax,dword ptr [ebp-18]
 004AED89    inc         eax
 004AED8A    add         dword ptr [ebp-1C],eax
 004AED8D    mov         eax,dword ptr [ebp-18]
 004AED90    inc         eax
 004AED91    add         dword ptr [ebp-28],eax
 004AED94    inc         dword ptr [ebp-10]
 004AED97    dec         dword ptr [ebp-38]
>004AED9A    jne         004AED64
 004AED9C    mov         eax,dword ptr [ebp-24]
 004AED9F    movzx       eax,byte ptr [eax+14]
 004AEDA3    add         eax,15
 004AEDA6    add         eax,dword ptr [ebp-1C]
 004AEDA9    add         dword ptr [ebp-24],eax
 004AEDAC    inc         dword ptr [ebp-0C]
 004AEDAF    dec         dword ptr [ebp-30]
>004AEDB2    jne         004AECCF
 004AEDB8    mov         eax,dword ptr [ebp-28]
 004AEDBB    sub         eax,dword ptr [ebp-20]
 004AEDBE    cmp         eax,dword ptr [ebp-14]
>004AEDC1    jge         004AEE2F
 004AEDC3    mov         eax,dword ptr [ebp-28]
 004AEDC6    mov         dword ptr [ebp-2C],eax
 004AEDC9    mov         eax,dword ptr [ebp-4]
 004AEDCC    call        004AE700
 004AEDD1    dec         eax
 004AEDD2    test        eax,eax
>004AEDD4    jl          004AEE2F
 004AEDD6    inc         eax
 004AEDD7    mov         dword ptr [ebp-30],eax
 004AEDDA    mov         dword ptr [ebp-0C],0
 004AEDE1    mov         edx,dword ptr [ebp-0C]
 004AEDE4    mov         eax,dword ptr [ebp-4]
 004AEDE7    call        004AE758
 004AEDEC    mov         dword ptr [ebp-3C],eax
 004AEDEF    mov         eax,dword ptr [ebp-3C]
 004AEDF2    mov         eax,dword ptr [eax+8]
 004AEDF5    mov         edx,dword ptr [eax]
 004AEDF7    call        dword ptr [edx+14]
 004AEDFA    dec         eax
 004AEDFB    test        eax,eax
>004AEDFD    jl          004AEE27
 004AEDFF    inc         eax
 004AEE00    mov         dword ptr [ebp-38],eax
 004AEE03    mov         dword ptr [ebp-10],0
 004AEE0A    mov         eax,dword ptr [ebp-2C]
 004AEE0D    movsx       ecx,word ptr [eax]
 004AEE10    mov         edx,dword ptr [ebp-10]
 004AEE13    mov         eax,dword ptr [ebp-3C]
 004AEE16    call        004AE56C
 004AEE1B    add         dword ptr [ebp-2C],2
 004AEE1F    inc         dword ptr [ebp-10]
 004AEE22    dec         dword ptr [ebp-38]
>004AEE25    jne         004AEE0A
 004AEE27    inc         dword ptr [ebp-0C]
 004AEE2A    dec         dword ptr [ebp-30]
>004AEE2D    jne         004AEDE1
 004AEE2F    xor         eax,eax
 004AEE31    pop         edx
 004AEE32    pop         ecx
 004AEE33    pop         ecx
 004AEE34    mov         dword ptr fs:[eax],edx
 004AEE37    push        4AEE4F
 004AEE3C    mov         edx,dword ptr [ebp-14]
 004AEE3F    mov         eax,dword ptr [ebp-20]
 004AEE42    call        @FreeMem
 004AEE47    ret
>004AEE48    jmp         @HandleFinally
>004AEE4D    jmp         004AEE3C
 004AEE4F    xor         eax,eax
 004AEE51    pop         edx
 004AEE52    pop         ecx
 004AEE53    pop         ecx
 004AEE54    mov         dword ptr fs:[eax],edx
 004AEE57    push        4AEE71
 004AEE5C    lea         eax,[ebp-44]
 004AEE5F    mov         edx,2
 004AEE64    call        @LStrArrayClr
 004AEE69    ret
>004AEE6A    jmp         @HandleFinally
>004AEE6F    jmp         004AEE5C
 004AEE71    mov         esp,ebp
 004AEE73    pop         ebp
 004AEE74    ret
*}
end;

//004AEE78
{*function sub_004AEE78(?:?):?;
begin
 004AEE78    push        ebp
 004AEE79    mov         ebp,esp
 004AEE7B    add         esp,0FFFFFFF8
 004AEE7E    mov         dword ptr [ebp-4],eax
 004AEE81    mov         eax,dword ptr [ebp-4]
 004AEE84    call        @DynArrayLength
 004AEE89    mov         dword ptr [ebp-8],eax
 004AEE8C    cmp         dword ptr [ebp-8],0FF
>004AEE93    jle         004AEE9C
 004AEE95    mov         dword ptr [ebp-8],0FF
 004AEE9C    mov         eax,dword ptr [ebp-8]
 004AEE9F    pop         ecx
 004AEEA0    pop         ecx
 004AEEA1    pop         ebp
 004AEEA2    ret
end;*}

//004AEEA4
procedure TListItems.WriteData(Stream:TStream);
begin
{*
 004AEEA4    push        ebp
 004AEEA5    mov         ebp,esp
 004AEEA7    add         esp,0FFFFFFBC
 004AEEAA    push        ebx
 004AEEAB    xor         ecx,ecx
 004AEEAD    mov         dword ptr [ebp-44],ecx
 004AEEB0    mov         dword ptr [ebp-40],ecx
 004AEEB3    mov         dword ptr [ebp-8],edx
 004AEEB6    mov         dword ptr [ebp-4],eax
 004AEEB9    xor         eax,eax
 004AEEBB    push        ebp
 004AEEBC    push        4AF16B
 004AEEC1    push        dword ptr fs:[eax]
 004AEEC4    mov         dword ptr fs:[eax],esp
 004AEEC7    mov         dword ptr [ebp-14],8
 004AEECE    mov         eax,dword ptr [ebp-4]
 004AEED1    call        004AE700
 004AEED6    dec         eax
 004AEED7    test        eax,eax
>004AEED9    jl          004AEF69
 004AEEDF    inc         eax
 004AEEE0    mov         dword ptr [ebp-30],eax
 004AEEE3    mov         dword ptr [ebp-0C],0
 004AEEEA    push        ebp
 004AEEEB    mov         edx,dword ptr [ebp-0C]
 004AEEEE    mov         eax,dword ptr [ebp-4]
 004AEEF1    call        004AE758
 004AEEF6    mov         eax,dword ptr [eax+24]
 004AEEF9    call        004AEE78
 004AEEFE    pop         ecx
 004AEEFF    mov         dword ptr [ebp-18],eax
 004AEF02    mov         edx,dword ptr [ebp-0C]
 004AEF05    mov         eax,dword ptr [ebp-4]
 004AEF08    call        004AE758
 004AEF0D    mov         eax,dword ptr [eax+8]
 004AEF10    mov         edx,dword ptr [eax]
 004AEF12    call        dword ptr [edx+14]
 004AEF15    dec         eax
 004AEF16    test        eax,eax
>004AEF18    jl          004AEF58
 004AEF1A    inc         eax
 004AEF1B    mov         dword ptr [ebp-34],eax
 004AEF1E    mov         dword ptr [ebp-10],0
 004AEF25    push        ebp
 004AEF26    mov         edx,dword ptr [ebp-0C]
 004AEF29    mov         eax,dword ptr [ebp-4]
 004AEF2C    call        004AE758
 004AEF31    mov         eax,dword ptr [eax+8]
 004AEF34    lea         ecx,[ebp-40]
 004AEF37    mov         edx,dword ptr [ebp-10]
 004AEF3A    mov         ebx,dword ptr [eax]
 004AEF3C    call        dword ptr [ebx+0C]
 004AEF3F    mov         eax,dword ptr [ebp-40]
 004AEF42    call        004AEE78
 004AEF47    pop         ecx
 004AEF48    inc         eax
 004AEF49    add         dword ptr [ebp-18],eax
 004AEF4C    add         dword ptr [ebp-18],2
 004AEF50    inc         dword ptr [ebp-10]
 004AEF53    dec         dword ptr [ebp-34]
>004AEF56    jne         004AEF25
 004AEF58    mov         eax,dword ptr [ebp-18]
 004AEF5B    add         eax,15
 004AEF5E    add         dword ptr [ebp-14],eax
 004AEF61    inc         dword ptr [ebp-0C]
 004AEF64    dec         dword ptr [ebp-30]
>004AEF67    jne         004AEEEA
 004AEF69    mov         eax,dword ptr [ebp-14]
 004AEF6C    call        004660E8
 004AEF71    mov         dword ptr [ebp-20],eax
 004AEF74    xor         eax,eax
 004AEF76    push        ebp
 004AEF77    push        4AF149
 004AEF7C    push        dword ptr fs:[eax]
 004AEF7F    mov         dword ptr fs:[eax],esp
 004AEF82    mov         eax,dword ptr [ebp-20]
 004AEF85    mov         edx,dword ptr [ebp-14]
 004AEF88    mov         dword ptr [eax],edx
 004AEF8A    mov         eax,dword ptr [ebp-4]
 004AEF8D    call        004AE700
 004AEF92    mov         edx,dword ptr [ebp-20]
 004AEF95    mov         dword ptr [edx+4],eax
 004AEF98    mov         eax,dword ptr [ebp-20]
 004AEF9B    add         eax,8
 004AEF9E    mov         dword ptr [ebp-24],eax
 004AEFA1    xor         eax,eax
 004AEFA3    mov         dword ptr [ebp-28],eax
 004AEFA6    mov         eax,dword ptr [ebp-4]
 004AEFA9    call        004AE700
 004AEFAE    dec         eax
 004AEFAF    test        eax,eax
>004AEFB1    jl          004AF0B6
 004AEFB7    inc         eax
 004AEFB8    mov         dword ptr [ebp-30],eax
 004AEFBB    mov         dword ptr [ebp-0C],0
 004AEFC2    mov         edx,dword ptr [ebp-0C]
 004AEFC5    mov         eax,dword ptr [ebp-4]
 004AEFC8    call        004AE758
 004AEFCD    mov         dword ptr [ebp-38],eax
 004AEFD0    mov         eax,dword ptr [ebp-24]
 004AEFD3    add         eax,14
 004AEFD6    mov         edx,dword ptr [ebp-38]
 004AEFD9    mov         edx,dword ptr [edx+24]
 004AEFDC    mov         ecx,0FF
 004AEFE1    call        @LStrToString
 004AEFE6    mov         eax,dword ptr [ebp-38]
 004AEFE9    mov         eax,dword ptr [eax+10]
 004AEFEC    mov         edx,dword ptr [ebp-24]
 004AEFEF    mov         dword ptr [edx],eax
 004AEFF1    mov         eax,dword ptr [ebp-38]
 004AEFF4    mov         eax,dword ptr [eax+1C]
 004AEFF7    mov         edx,dword ptr [ebp-24]
 004AEFFA    mov         dword ptr [edx+8],eax
 004AEFFD    mov         eax,dword ptr [ebp-38]
 004AF000    mov         eax,dword ptr [eax+20]
 004AF003    mov         edx,dword ptr [ebp-24]
 004AF006    mov         dword ptr [edx+4],eax
 004AF009    mov         eax,dword ptr [ebp-38]
 004AF00C    mov         eax,dword ptr [eax+0C]
 004AF00F    mov         edx,dword ptr [ebp-24]
 004AF012    mov         dword ptr [edx+10],eax
 004AF015    mov         eax,dword ptr [ebp-38]
 004AF018    mov         eax,dword ptr [eax+8]
 004AF01B    mov         edx,dword ptr [eax]
 004AF01D    call        dword ptr [edx+14]
 004AF020    mov         edx,dword ptr [ebp-24]
 004AF023    mov         dword ptr [edx+0C],eax
 004AF026    mov         eax,dword ptr [ebp-24]
 004AF029    add         eax,14
 004AF02C    mov         dword ptr [ebp-28],eax
 004AF02F    mov         eax,dword ptr [ebp-24]
 004AF032    movzx       eax,byte ptr [eax+14]
 004AF036    inc         eax
 004AF037    add         dword ptr [ebp-28],eax
 004AF03A    xor         eax,eax
 004AF03C    mov         dword ptr [ebp-1C],eax
 004AF03F    mov         eax,dword ptr [ebp-38]
 004AF042    mov         eax,dword ptr [eax+8]
 004AF045    mov         edx,dword ptr [eax]
 004AF047    call        dword ptr [edx+14]
 004AF04A    dec         eax
 004AF04B    test        eax,eax
>004AF04D    jl          004AF09A
 004AF04F    inc         eax
 004AF050    mov         dword ptr [ebp-34],eax
 004AF053    mov         dword ptr [ebp-10],0
 004AF05A    lea         ecx,[ebp-44]
 004AF05D    mov         eax,dword ptr [ebp-38]
 004AF060    mov         eax,dword ptr [eax+8]
 004AF063    mov         edx,dword ptr [ebp-10]
 004AF066    mov         ebx,dword ptr [eax]
 004AF068    call        dword ptr [ebx+0C]
 004AF06B    mov         edx,dword ptr [ebp-44]
 004AF06E    mov         eax,dword ptr [ebp-28]
 004AF071    mov         ecx,0FF
 004AF076    call        @LStrToString
 004AF07B    mov         eax,dword ptr [ebp-28]
 004AF07E    movzx       eax,byte ptr [eax]
 004AF081    mov         dword ptr [ebp-18],eax
 004AF084    mov         eax,dword ptr [ebp-18]
 004AF087    inc         eax
 004AF088    add         dword ptr [ebp-1C],eax
 004AF08B    mov         eax,dword ptr [ebp-18]
 004AF08E    inc         eax
 004AF08F    add         dword ptr [ebp-28],eax
 004AF092    inc         dword ptr [ebp-10]
 004AF095    dec         dword ptr [ebp-34]
>004AF098    jne         004AF05A
 004AF09A    mov         eax,dword ptr [ebp-24]
 004AF09D    movzx       eax,byte ptr [eax+14]
 004AF0A1    add         eax,15
 004AF0A4    add         eax,dword ptr [ebp-1C]
 004AF0A7    add         dword ptr [ebp-24],eax
 004AF0AA    inc         dword ptr [ebp-0C]
 004AF0AD    dec         dword ptr [ebp-30]
>004AF0B0    jne         004AEFC2
 004AF0B6    mov         eax,dword ptr [ebp-28]
 004AF0B9    mov         dword ptr [ebp-2C],eax
 004AF0BC    mov         eax,dword ptr [ebp-4]
 004AF0BF    call        004AE700
 004AF0C4    dec         eax
 004AF0C5    test        eax,eax
>004AF0C7    jl          004AF122
 004AF0C9    inc         eax
 004AF0CA    mov         dword ptr [ebp-30],eax
 004AF0CD    mov         dword ptr [ebp-0C],0
 004AF0D4    mov         edx,dword ptr [ebp-0C]
 004AF0D7    mov         eax,dword ptr [ebp-4]
 004AF0DA    call        004AE758
 004AF0DF    mov         dword ptr [ebp-3C],eax
 004AF0E2    mov         eax,dword ptr [ebp-3C]
 004AF0E5    mov         eax,dword ptr [eax+8]
 004AF0E8    mov         edx,dword ptr [eax]
 004AF0EA    call        dword ptr [edx+14]
 004AF0ED    dec         eax
 004AF0EE    test        eax,eax
>004AF0F0    jl          004AF11A
 004AF0F2    inc         eax
 004AF0F3    mov         dword ptr [ebp-34],eax
 004AF0F6    mov         dword ptr [ebp-10],0
 004AF0FD    mov         edx,dword ptr [ebp-10]
 004AF100    mov         eax,dword ptr [ebp-3C]
 004AF103    call        004AE548
 004AF108    mov         edx,dword ptr [ebp-2C]
 004AF10B    mov         word ptr [edx],ax
 004AF10E    add         dword ptr [ebp-2C],2
 004AF112    inc         dword ptr [ebp-10]
 004AF115    dec         dword ptr [ebp-34]
>004AF118    jne         004AF0FD
 004AF11A    inc         dword ptr [ebp-0C]
 004AF11D    dec         dword ptr [ebp-30]
>004AF120    jne         004AF0D4
 004AF122    mov         edx,dword ptr [ebp-20]
 004AF125    mov         ecx,dword ptr [ebp-14]
 004AF128    mov         eax,dword ptr [ebp-8]
 004AF12B    call        0047BF70
 004AF130    xor         eax,eax
 004AF132    pop         edx
 004AF133    pop         ecx
 004AF134    pop         ecx
 004AF135    mov         dword ptr fs:[eax],edx
 004AF138    push        4AF150
 004AF13D    mov         edx,dword ptr [ebp-14]
 004AF140    mov         eax,dword ptr [ebp-20]
 004AF143    call        @FreeMem
 004AF148    ret
>004AF149    jmp         @HandleFinally
>004AF14E    jmp         004AF13D
 004AF150    xor         eax,eax
 004AF152    pop         edx
 004AF153    pop         ecx
 004AF154    pop         ecx
 004AF155    mov         dword ptr fs:[eax],edx
 004AF158    push        4AF172
 004AF15D    lea         eax,[ebp-44]
 004AF160    mov         edx,2
 004AF165    call        @LStrArrayClr
 004AF16A    ret
>004AF16B    jmp         @HandleFinally
>004AF170    jmp         004AF15D
 004AF172    pop         ebx
 004AF173    mov         esp,ebp
 004AF175    pop         ebp
 004AF176    ret
*}
end;

//004AF178
{*procedure sub_004AF178(?:?; ?:Integer);
begin
 004AF178    push        ebp
 004AF179    mov         ebp,esp
 004AF17B    add         esp,0FFFFFFF8
 004AF17E    mov         dword ptr [ebp-8],edx
 004AF181    mov         dword ptr [ebp-4],eax
 004AF184    mov         edx,dword ptr [ebp-8]
 004AF187    mov         eax,dword ptr [ebp-4]
 004AF18A    call        004AE758
 004AF18F    call        004ADE18
 004AF194    pop         ecx
 004AF195    pop         ecx
 004AF196    pop         ebp
 004AF197    ret
end;*}

//004AF198
{*procedure sub_004AF198(?:?; ?:?; ?:?; ?:?);
begin
 004AF198    push        ebp
 004AF199    mov         ebp,esp
 004AF19B    add         esp,0FFFFFFF4
 004AF19E    mov         dword ptr [ebp-0C],ecx
 004AF1A1    mov         dword ptr [ebp-8],edx
 004AF1A4    mov         dword ptr [ebp-4],eax
 004AF1A7    mov         eax,dword ptr [ebp+8]
 004AF1AA    mov         dword ptr [eax],6
 004AF1B0    mov         eax,dword ptr [ebp+8]
 004AF1B3    mov         edx,dword ptr [ebp-8]
 004AF1B6    mov         dword ptr [eax+4],edx
 004AF1B9    mov         eax,dword ptr [ebp+8]
 004AF1BC    xor         edx,edx
 004AF1BE    mov         dword ptr [eax+8],edx
 004AF1C1    mov         eax,dword ptr [ebp+8]
 004AF1C4    mov         dword ptr [eax+1C],0FFFFFFFF
 004AF1CB    mov         eax,dword ptr [ebp+8]
 004AF1CE    mov         edx,dword ptr [ebp-0C]
 004AF1D1    mov         dword ptr [eax+20],edx
 004AF1D4    mov         esp,ebp
 004AF1D6    pop         ebp
 004AF1D7    ret         4
end;*}

//004AF1DC
constructor TIconOptions.Create;
begin
{*
 004AF1DC    push        ebp
 004AF1DD    mov         ebp,esp
 004AF1DF    add         esp,0FFFFFFF4
 004AF1E2    test        dl,dl
>004AF1E4    je          004AF1EE
 004AF1E6    add         esp,0FFFFFFF0
 004AF1E9    call        @ClassCreate
 004AF1EE    mov         dword ptr [ebp-0C],ecx
 004AF1F1    mov         byte ptr [ebp-5],dl
 004AF1F4    mov         dword ptr [ebp-4],eax
 004AF1F7    xor         edx,edx
 004AF1F9    mov         eax,dword ptr [ebp-4]
 004AF1FC    call        TObject.Create
 004AF201    cmp         dword ptr [ebp-0C],0
>004AF205    jne         004AF21E
 004AF207    mov         ecx,dword ptr ds:[55B4D8];^sInvalidOwner:TResStringRec
 004AF20D    mov         dl,1
 004AF20F    mov         eax,[004653B4];Exception
 004AF214    call        Exception.Create;Exception.Create
 004AF219    call        @RaiseExcept
 004AF21E    mov         eax,dword ptr [ebp-4]
 004AF221    mov         edx,dword ptr [ebp-0C]
 004AF224    mov         dword ptr [eax+4],edx
 004AF227    xor         edx,edx
 004AF229    mov         eax,dword ptr [ebp-4]
 004AF22C    call        TIconOptions.SetArrangement
 004AF231    xor         edx,edx
 004AF233    mov         eax,dword ptr [ebp-4]
 004AF236    call        TIconOptions.SetAutoArrange
 004AF23B    mov         dl,1
 004AF23D    mov         eax,dword ptr [ebp-4]
 004AF240    call        TIconOptions.SetWrapText
 004AF245    mov         eax,dword ptr [ebp-4]
 004AF248    cmp         byte ptr [ebp-5],0
>004AF24C    je          004AF25D
 004AF24E    call        @AfterConstruction
 004AF253    pop         dword ptr fs:[0]
 004AF25A    add         esp,0C
 004AF25D    mov         eax,dword ptr [ebp-4]
 004AF260    mov         esp,ebp
 004AF262    pop         ebp
 004AF263    ret
*}
end;

//004AF264
procedure TIconOptions.SetArrangement(Value:TIconArrangement);
begin
{*
 004AF264    push        ebp
 004AF265    mov         ebp,esp
 004AF267    add         esp,0FFFFFFF8
 004AF26A    mov         byte ptr [ebp-5],dl
 004AF26D    mov         dword ptr [ebp-4],eax
 004AF270    mov         al,byte ptr [ebp-5]
 004AF273    mov         edx,dword ptr [ebp-4]
 004AF276    cmp         al,byte ptr [edx+8];TIconOptions.Arrangement:TIconArrangement
>004AF279    je          004AF28F
 004AF27B    mov         al,byte ptr [ebp-5]
 004AF27E    mov         edx,dword ptr [ebp-4]
 004AF281    mov         byte ptr [edx+8],al;TIconOptions.Arrangement:TIconArrangement
 004AF284    mov         eax,dword ptr [ebp-4]
 004AF287    mov         eax,dword ptr [eax+4];TIconOptions.FListView:TCustomListView
 004AF28A    call        TWinControl.RecreateWnd
 004AF28F    pop         ecx
 004AF290    pop         ecx
 004AF291    pop         ebp
 004AF292    ret
*}
end;

//004AF294
procedure TIconOptions.SetAutoArrange(Value:Boolean);
begin
{*
 004AF294    push        ebp
 004AF295    mov         ebp,esp
 004AF297    add         esp,0FFFFFFF8
 004AF29A    mov         byte ptr [ebp-5],dl
 004AF29D    mov         dword ptr [ebp-4],eax
 004AF2A0    mov         al,byte ptr [ebp-5]
 004AF2A3    mov         edx,dword ptr [ebp-4]
 004AF2A6    cmp         al,byte ptr [edx+9];TIconOptions.AutoArrange:Boolean
>004AF2A9    je          004AF2BF
 004AF2AB    mov         al,byte ptr [ebp-5]
 004AF2AE    mov         edx,dword ptr [ebp-4]
 004AF2B1    mov         byte ptr [edx+9],al;TIconOptions.AutoArrange:Boolean
 004AF2B4    mov         eax,dword ptr [ebp-4]
 004AF2B7    mov         eax,dword ptr [eax+4];TIconOptions.FListView:TCustomListView
 004AF2BA    call        TWinControl.RecreateWnd
 004AF2BF    pop         ecx
 004AF2C0    pop         ecx
 004AF2C1    pop         ebp
 004AF2C2    ret
*}
end;

//004AF2C4
procedure TIconOptions.SetWrapText(Value:Boolean);
begin
{*
 004AF2C4    push        ebp
 004AF2C5    mov         ebp,esp
 004AF2C7    add         esp,0FFFFFFF8
 004AF2CA    mov         byte ptr [ebp-5],dl
 004AF2CD    mov         dword ptr [ebp-4],eax
 004AF2D0    mov         al,byte ptr [ebp-5]
 004AF2D3    mov         edx,dword ptr [ebp-4]
 004AF2D6    cmp         al,byte ptr [edx+0A];TIconOptions.WrapText:Boolean
>004AF2D9    je          004AF2EF
 004AF2DB    mov         al,byte ptr [ebp-5]
 004AF2DE    mov         edx,dword ptr [ebp-4]
 004AF2E1    mov         byte ptr [edx+0A],al;TIconOptions.WrapText:Boolean
 004AF2E4    mov         eax,dword ptr [ebp-4]
 004AF2E7    mov         eax,dword ptr [eax+4];TIconOptions.FListView:TCustomListView
 004AF2EA    call        TWinControl.RecreateWnd
 004AF2EF    pop         ecx
 004AF2F0    pop         ecx
 004AF2F1    pop         ebp
 004AF2F2    ret
*}
end;

//004AF2F4
{*function sub_004AF2F4(?:?; ?:?; ?:?):?;
begin
 004AF2F4    push        ebp
 004AF2F5    mov         ebp,esp
 004AF2F7    push        ecx
 004AF2F8    push        ebx
 004AF2F9    mov         eax,dword ptr [ebp+8]
 004AF2FC    call        004ADDFC
 004AF301    cmp         word ptr [eax+2EA],0
>004AF309    je          004AF33C
 004AF30B    mov         eax,dword ptr [ebp+0C]
 004AF30E    push        eax
 004AF30F    mov         eax,dword ptr [ebp+10]
 004AF312    push        eax
 004AF313    lea         eax,[ebp-4]
 004AF316    push        eax
 004AF317    mov         eax,dword ptr [ebp+8]
 004AF31A    call        004ADDFC
 004AF31F    mov         ebx,eax
 004AF321    mov         eax,dword ptr [ebp+8]
 004AF324    call        004ADDFC
 004AF329    mov         edx,eax
 004AF32B    mov         ecx,dword ptr [ebp+8]
 004AF32E    mov         eax,dword ptr [ebx+2EC]
 004AF334    call        dword ptr [ebx+2E8]
>004AF33A    jmp         004AF35C
 004AF33C    mov         eax,dword ptr [ebp+0C]
 004AF33F    mov         eax,dword ptr [eax+24]
 004AF342    call        @LStrToPChar
 004AF347    push        eax
 004AF348    mov         eax,dword ptr [ebp+8]
 004AF34B    mov         eax,dword ptr [eax+24]
 004AF34E    call        @LStrToPChar
 004AF353    push        eax
 004AF354    call        kernel32.lstrcmpA
 004AF359    mov         dword ptr [ebp-4],eax
 004AF35C    mov         eax,dword ptr [ebp-4]
 004AF35F    pop         ebx
 004AF360    pop         ecx
 004AF361    pop         ebp
 004AF362    ret         0C
end;*}

//004AF368
constructor TCustomListView.Create(AOwner:TComponent);
begin
{*
 004AF368    push        ebp
 004AF369    mov         ebp,esp
 004AF36B    add         esp,0FFFFFFF4
 004AF36E    test        dl,dl
>004AF370    je          004AF37A
 004AF372    add         esp,0FFFFFFF0
 004AF375    call        @ClassCreate
 004AF37A    mov         dword ptr [ebp-0C],ecx
 004AF37D    mov         byte ptr [ebp-5],dl
 004AF380    mov         dword ptr [ebp-4],eax
 004AF383    mov         ecx,dword ptr [ebp-0C]
 004AF386    xor         edx,edx
 004AF388    mov         eax,dword ptr [ebp-4]
 004AF38B    call        TWinControl.Create
 004AF390    mov         eax,dword ptr [ebp-4]
 004AF393    mov         edx,dword ptr ds:[4AF5C0];0x2 gvar_004AF5C0
 004AF399    not         edx
 004AF39B    and         edx,dword ptr [eax+50];TCustomListView.FControlStyle:TControlStyle
 004AF39E    or          edx,dword ptr ds:[4AF5C4];0x6000 gvar_004AF5C4
 004AF3A4    mov         eax,dword ptr [ebp-4]
 004AF3A7    mov         dword ptr [eax+50],edx;TCustomListView.FControlStyle:TControlStyle
 004AF3AA    mov         edx,0FA
 004AF3AF    mov         eax,dword ptr [ebp-4]
 004AF3B2    call        TControl.SetWidth
 004AF3B7    mov         edx,96
 004AF3BC    mov         eax,dword ptr [ebp-4]
 004AF3BF    call        TControl.SetHeight
 004AF3C4    mov         dl,1
 004AF3C6    mov         eax,dword ptr [ebp-4]
 004AF3C9    call        TListView.SetBorderStyle
 004AF3CE    xor         edx,edx
 004AF3D0    mov         eax,dword ptr [ebp-4]
 004AF3D3    mov         ecx,dword ptr [eax]
 004AF3D5    call        dword ptr [ecx+128];TListView.SetViewStyle
 004AF3DB    xor         edx,edx
 004AF3DD    mov         eax,dword ptr [ebp-4]
 004AF3E0    call        TPanel.SetParentColor
 004AF3E5    mov         dl,1
 004AF3E7    mov         eax,dword ptr [ebp-4]
 004AF3EA    call        TPanel.SetTabStop
 004AF3EF    mov         dl,1
 004AF3F1    mov         eax,dword ptr [ebp-4]
 004AF3F4    call        TListView.SetHideSelection
 004AF3F9    mov         dl,1
 004AF3FB    mov         eax,dword ptr [ebp-4]
 004AF3FE    call        TListView.SetShowColumnHeaders
 004AF403    mov         dl,1
 004AF405    mov         eax,dword ptr [ebp-4]
 004AF408    call        TListView.SetColumnClick
 004AF40D    mov         dl,1
 004AF40F    mov         eax,[004C4BA4];TControlCanvas
 004AF414    call        TControlCanvas.Create;TControlCanvas.Create
 004AF419    mov         edx,dword ptr [ebp-4]
 004AF41C    mov         dword ptr [edx+210],eax;TCustomListView.FCanvas:TCanvas
 004AF422    mov         eax,dword ptr [ebp-4]
 004AF425    mov         eax,dword ptr [eax+210];TCustomListView.FCanvas:TCanvas
 004AF42B    mov         edx,dword ptr [ebp-4]
 004AF42E    call        004C931C
 004AF433    mov         eax,dword ptr [ebp-4]
 004AF436    mov         dword ptr [eax+26C],0FFFFFFFF;TCustomListView.FDragIndex:Integer
 004AF440    mov         ecx,dword ptr [ebp-4]
 004AF443    mov         dl,1
 004AF445    mov         eax,[004A515C];TListColumns
 004AF44A    call        TListColumns.Create;TListColumns.Create
 004AF44F    mov         edx,dword ptr [ebp-4]
 004AF452    mov         dword ptr [edx+23C],eax;TCustomListView.FListColumns:TListColumns
 004AF458    mov         eax,dword ptr [ebp-4]
 004AF45B    mov         edx,dword ptr [eax]
 004AF45D    call        dword ptr [edx+0FC];TCustomListView.sub_004B0F1C
 004AF463    mov         edx,dword ptr [ebp-4]
 004AF466    mov         dword ptr [edx+22C],eax;TCustomListView.FListItems:TListItems
 004AF46C    mov         eax,dword ptr [ebp-4]
 004AF46F    mov         edx,dword ptr [eax]
 004AF471    call        dword ptr [edx+0F8];TCustomListView.sub_004B0EC8
 004AF477    mov         edx,dword ptr [ebp-4]
 004AF47A    mov         dword ptr [edx+28C],eax;TCustomListView.FTempItem:TListItem
 004AF480    mov         ecx,dword ptr [ebp-4]
 004AF483    mov         dl,1
 004AF485    mov         eax,[004A54C4];TIconOptions
 004AF48A    call        TIconOptions.Create;TIconOptions.Create
 004AF48F    mov         edx,dword ptr [ebp-4]
 004AF492    mov         dword ptr [edx+234],eax;TCustomListView.FIconOptions:TIconOptions
 004AF498    mov         eax,[004A5334];TWorkArea
 004AF49D    push        eax
 004AF49E    mov         ecx,dword ptr [ebp-4]
 004AF4A1    mov         dl,1
 004AF4A3    mov         eax,[004A53E0];TWorkAreas
 004AF4A8    call        TWorkAreas.Create;TWorkAreas.Create
 004AF4AD    mov         edx,dword ptr [ebp-4]
 004AF4B0    mov         dword ptr [edx+290],eax;TCustomListView.FWorkAreas:TWorkAreas
 004AF4B6    mov         eax,dword ptr [ebp-4]
 004AF4B9    mov         byte ptr [eax+294],0;TCustomListView.FShowWorkAreas:Boolean
 004AF4C0    mov         eax,dword ptr [ebp-4]
 004AF4C3    mov         byte ptr [eax+295],0;TCustomListView.FUpdatingColumnOrder:Boolean
 004AF4CA    mov         eax,dword ptr [ebp-4]
 004AF4CD    xor         edx,edx
 004AF4CF    mov         dword ptr [eax+2A0],edx;TCustomListView.FOwnerDataCount:Integer
 004AF4D5    push        20
 004AF4D7    mov         ecx,20
 004AF4DC    mov         dl,1
 004AF4DE    mov         eax,[004C662C];TDragImageList
 004AF4E3    call        TDragImageList.Create;TDragImageList.Create
 004AF4E8    mov         edx,dword ptr [ebp-4]
 004AF4EB    mov         dword ptr [edx+224],eax;TCustomListView.FDragImage:TDragImageList
 004AF4F1    mov         eax,dword ptr [ebp-4]
 004AF4F4    push        eax
 004AF4F5    push        4AFFAC
 004AF4FA    call        004E7CF4
 004AF4FF    mov         edx,dword ptr [ebp-4]
 004AF502    mov         dword ptr [edx+250],eax;TCustomListView.FEditInstance:Pointer
 004AF508    mov         eax,dword ptr [ebp-4]
 004AF50B    push        eax
 004AF50C    push        4AFE8C
 004AF511    call        004E7CF4
 004AF516    mov         edx,dword ptr [ebp-4]
 004AF519    mov         dword ptr [edx+25C],eax;TCustomListView.FHeaderInstance:Pointer
 004AF51F    mov         dl,1
 004AF521    mov         eax,[004DC034];TChangeLink
 004AF526    call        TObject.Create;TChangeLink.Create
 004AF52B    mov         edx,dword ptr [ebp-4]
 004AF52E    mov         dword ptr [edx+27C],eax;TCustomListView.FLargeChangeLink:TChangeLink
 004AF534    mov         eax,dword ptr [ebp-4]
 004AF537    mov         eax,dword ptr [eax+27C];TCustomListView.FLargeChangeLink:TChangeLink
 004AF53D    mov         edx,dword ptr [ebp-4]
 004AF540    mov         dword ptr [eax+0C],edx;TChangeLink.?fC:TCustomTabControl
 004AF543    mov         dword ptr [eax+8],4AFC10;TChangeLink.FOnChange:TNotifyEvent sub_004AFC10
 004AF54A    mov         dl,1
 004AF54C    mov         eax,[004DC034];TChangeLink
 004AF551    call        TObject.Create;TChangeLink.Create
 004AF556    mov         edx,dword ptr [ebp-4]
 004AF559    mov         dword ptr [edx+280],eax;TCustomListView.FSmallChangeLink:TChangeLink
 004AF55F    mov         eax,dword ptr [ebp-4]
 004AF562    mov         eax,dword ptr [eax+280];TCustomListView.FSmallChangeLink:TChangeLink
 004AF568    mov         edx,dword ptr [ebp-4]
 004AF56B    mov         dword ptr [eax+0C],edx;TChangeLink.?fC:TCustomTabControl
 004AF56E    mov         dword ptr [eax+8],4AFC10;TChangeLink.FOnChange:TNotifyEvent sub_004AFC10
 004AF575    mov         dl,1
 004AF577    mov         eax,[004DC034];TChangeLink
 004AF57C    call        TObject.Create;TChangeLink.Create
 004AF581    mov         edx,dword ptr [ebp-4]
 004AF584    mov         dword ptr [edx+284],eax;TCustomListView.FStateChangeLink:TChangeLink
 004AF58A    mov         eax,dword ptr [ebp-4]
 004AF58D    mov         eax,dword ptr [eax+284];TCustomListView.FStateChangeLink:TChangeLink
 004AF593    mov         edx,dword ptr [ebp-4]
 004AF596    mov         dword ptr [eax+0C],edx;TChangeLink.?fC:TCustomTabControl
 004AF599    mov         dword ptr [eax+8],4AFC10;TChangeLink.FOnChange:TNotifyEvent sub_004AFC10
 004AF5A0    mov         eax,dword ptr [ebp-4]
 004AF5A3    cmp         byte ptr [ebp-5],0
>004AF5A7    je          004AF5B8
 004AF5A9    call        @AfterConstruction
 004AF5AE    pop         dword ptr fs:[0]
 004AF5B5    add         esp,0C
 004AF5B8    mov         eax,dword ptr [ebp-4]
 004AF5BB    mov         esp,ebp
 004AF5BD    pop         ebp
 004AF5BE    ret
*}
end;

//004AF5C8
destructor TCustomListView.Destroy;
begin
{*
 004AF5C8    push        ebp
 004AF5C9    mov         ebp,esp
 004AF5CB    add         esp,0FFFFFFF8
 004AF5CE    call        @BeforeDestruction
 004AF5D3    mov         byte ptr [ebp-5],dl
 004AF5D6    mov         dword ptr [ebp-4],eax
 004AF5D9    mov         eax,dword ptr [ebp-4]
 004AF5DC    call        TWinControl.HandleAllocated
 004AF5E1    test        al,al
>004AF5E3    je          004AF5F0
 004AF5E5    mov         eax,dword ptr [ebp-4]
 004AF5E8    mov         edx,dword ptr [eax]
 004AF5EA    call        dword ptr [edx+0AC];TWinControl.DestroyWindowHandle
 004AF5F0    mov         eax,dword ptr [ebp-4]
 004AF5F3    mov         eax,dword ptr [eax+224];TCustomListView.FDragImage:TDragImageList
 004AF5F9    call        TObject.Free
 004AF5FE    mov         eax,dword ptr [ebp-4]
 004AF601    mov         eax,dword ptr [eax+23C];TCustomListView.FListColumns:TListColumns
 004AF607    call        TObject.Free
 004AF60C    mov         eax,dword ptr [ebp-4]
 004AF60F    mov         eax,dword ptr [eax+28C];TCustomListView.FTempItem:TListItem
 004AF615    call        TObject.Free
 004AF61A    mov         eax,dword ptr [ebp-4]
 004AF61D    mov         eax,dword ptr [eax+22C];TCustomListView.FListItems:TListItems
 004AF623    call        TObject.Free
 004AF628    mov         eax,dword ptr [ebp-4]
 004AF62B    mov         eax,dword ptr [eax+234];TCustomListView.FIconOptions:TIconOptions
 004AF631    call        TObject.Free
 004AF636    mov         eax,dword ptr [ebp-4]
 004AF639    mov         eax,dword ptr [eax+240];TCustomListView.FMemStream:TMemoryStream
 004AF63F    call        TObject.Free
 004AF644    mov         eax,dword ptr [ebp-4]
 004AF647    mov         eax,dword ptr [eax+248];TCustomListView.FColStream:TMemoryStream
 004AF64D    call        TObject.Free
 004AF652    mov         eax,dword ptr [ebp-4]
 004AF655    mov         eax,dword ptr [eax+24C];TCustomListView.FCheckStream:TMemoryStream
 004AF65B    call        TObject.Free
 004AF660    mov         eax,dword ptr [ebp-4]
 004AF663    mov         eax,dword ptr [eax+290];TCustomListView.FWorkAreas:TWorkAreas
 004AF669    call        TObject.Free
 004AF66E    mov         eax,dword ptr [ebp-4]
 004AF671    mov         eax,dword ptr [eax+250];TCustomListView.FEditInstance:Pointer
 004AF677    call        004E7D10
 004AF67C    mov         eax,dword ptr [ebp-4]
 004AF67F    cmp         dword ptr [eax+264],0;TCustomListView.FHeaderHandle:HWND
>004AF686    je          004AF6A3
 004AF688    mov         eax,dword ptr [ebp-4]
 004AF68B    mov         eax,dword ptr [eax+260];TCustomListView.FDefHeaderProc:Pointer
 004AF691    push        eax
 004AF692    push        0FC
 004AF694    mov         eax,dword ptr [ebp-4]
 004AF697    mov         eax,dword ptr [eax+264];TCustomListView.FHeaderHandle:HWND
 004AF69D    push        eax
 004AF69E    call        user32.SetWindowLongA
 004AF6A3    mov         eax,dword ptr [ebp-4]
 004AF6A6    mov         eax,dword ptr [eax+25C];TCustomListView.FHeaderInstance:Pointer
 004AF6AC    call        004E7D10
 004AF6B1    mov         eax,dword ptr [ebp-4]
 004AF6B4    mov         eax,dword ptr [eax+27C];TCustomListView.FLargeChangeLink:TChangeLink
 004AF6BA    call        TObject.Free
 004AF6BF    mov         eax,dword ptr [ebp-4]
 004AF6C2    mov         eax,dword ptr [eax+280];TCustomListView.FSmallChangeLink:TChangeLink
 004AF6C8    call        TObject.Free
 004AF6CD    mov         eax,dword ptr [ebp-4]
 004AF6D0    mov         eax,dword ptr [eax+284];TCustomListView.FStateChangeLink:TChangeLink
 004AF6D6    call        TObject.Free
 004AF6DB    mov         eax,dword ptr [ebp-4]
 004AF6DE    mov         eax,dword ptr [eax+210];TCustomListView.FCanvas:TCanvas
 004AF6E4    call        TObject.Free
 004AF6E9    mov         eax,dword ptr [ebp-4]
 004AF6EC    xor         edx,edx
 004AF6EE    mov         dword ptr [eax+210],edx;TCustomListView.FCanvas:TCanvas
 004AF6F4    mov         dl,byte ptr [ebp-5]
 004AF6F7    and         dl,0FC
 004AF6FA    mov         eax,dword ptr [ebp-4]
 004AF6FD    call        TWinControl.Destroy
 004AF702    cmp         byte ptr [ebp-5],0
>004AF706    jle         004AF710
 004AF708    mov         eax,dword ptr [ebp-4]
 004AF70B    call        @ClassDestroy
 004AF710    pop         ecx
 004AF711    pop         ecx
 004AF712    pop         ebp
 004AF713    ret
*}
end;

//004AF714
{*procedure sub_004AF714(?:?);
begin
 004AF714    push        ebp
 004AF715    mov         ebp,esp
 004AF717    add         esp,0FFFFFFF8
 004AF71A    mov         dword ptr [ebp-8],edx
 004AF71D    mov         dword ptr [ebp-4],eax
 004AF720    mov         eax,1
 004AF725    call        004A7B30
 004AF72A    mov         edx,dword ptr [ebp-8]
 004AF72D    mov         eax,dword ptr [ebp-4]
 004AF730    call        004CF814
 004AF735    mov         ecx,4AF87C
 004AF73A    mov         edx,dword ptr [ebp-8]
 004AF73D    mov         eax,dword ptr [ebp-4]
 004AF740    call        004CF6EC
 004AF745    mov         eax,dword ptr [ebp-8]
 004AF748    mov         eax,dword ptr [eax+4]
 004AF74B    or          eax,2000000
 004AF750    mov         edx,dword ptr [ebp-4]
 004AF753    movzx       edx,byte ptr [edx+215];TCustomListView.FViewStyle:TViewStyle
 004AF75A    or          eax,dword ptr [edx*4+541488]
 004AF761    mov         edx,dword ptr [ebp-4]
 004AF764    movzx       edx,byte ptr [edx+214];TCustomListView.FBorderStyle:TBorderStyle
 004AF76B    or          eax,dword ptr [edx*4+541450]
 004AF772    mov         edx,dword ptr [ebp-4]
 004AF775    mov         edx,dword ptr [edx+234];TCustomListView.FIconOptions:TIconOptions
 004AF77B    movzx       edx,byte ptr [edx+8];TIconOptions.Arrangement:TIconArrangement
 004AF77F    or          eax,dword ptr [edx*4+541470]
 004AF786    mov         edx,dword ptr [ebp-4]
 004AF789    movzx       edx,byte ptr [edx+216];TCustomListView.FReadOnly:Boolean
 004AF790    or          eax,dword ptr [edx*4+541458]
 004AF797    mov         edx,dword ptr [ebp-4]
 004AF79A    movzx       edx,byte ptr [edx+228];TCustomListView.FMultiSelect:Boolean
 004AF7A1    or          eax,dword ptr [edx*4+541460]
 004AF7A8    mov         edx,dword ptr [ebp-4]
 004AF7AB    movzx       edx,byte ptr [edx+238];TCustomListView.FHideSelection:Boolean
 004AF7B2    or          eax,dword ptr [edx*4+541468]
 004AF7B9    mov         edx,dword ptr [ebp-4]
 004AF7BC    mov         edx,dword ptr [edx+234];TCustomListView.FIconOptions:TIconOptions
 004AF7C2    movzx       edx,byte ptr [edx+9];TIconOptions.AutoArrange:Boolean
 004AF7C6    or          eax,dword ptr [edx*4+541478]
 004AF7CD    mov         edx,dword ptr [ebp-4]
 004AF7D0    mov         edx,dword ptr [edx+234];TCustomListView.FIconOptions:TIconOptions
 004AF7D6    movzx       edx,byte ptr [edx+0A];TIconOptions.WrapText:Boolean
 004AF7DA    or          eax,dword ptr [edx*4+541480]
 004AF7E1    mov         edx,dword ptr [ebp-4]
 004AF7E4    movzx       edx,byte ptr [edx+22B];TCustomListView.FShowColumnHeaders:Boolean
 004AF7EB    or          eax,dword ptr [edx*4+541498]
 004AF7F2    mov         edx,dword ptr [ebp-4]
 004AF7F5    movzx       edx,byte ptr [edx+22A];TCustomListView.FColumnClick:Boolean
 004AF7FC    or          eax,dword ptr [edx*4+5414A0]
 004AF803    or          eax,40
 004AF806    mov         edx,dword ptr [ebp-8]
 004AF809    mov         dword ptr [edx+4],eax
 004AF80C    mov         eax,dword ptr [ebp-4]
 004AF80F    cmp         byte ptr [eax+244],0;TCustomListView.FOwnerData:Boolean
>004AF816    je          004AF822
 004AF818    mov         eax,dword ptr [ebp-8]
 004AF81B    or          dword ptr [eax+4],1000
 004AF822    mov         eax,dword ptr [ebp-4]
 004AF825    cmp         byte ptr [eax+245],0;TCustomListView.FOwnerDraw:Boolean
>004AF82C    je          004AF838
 004AF82E    mov         eax,dword ptr [ebp-8]
 004AF831    or          dword ptr [eax+4],400
 004AF838    mov         eax,dword ptr [ebp-4]
 004AF83B    cmp         byte ptr [eax+1A5],0;TCustomListView.FCtl3D:Boolean
>004AF842    je          004AF86E
 004AF844    mov         eax,[0055B36C];^NewStyleControls:Boolean
 004AF849    cmp         byte ptr [eax],0
>004AF84C    je          004AF86E
 004AF84E    mov         eax,dword ptr [ebp-4]
 004AF851    cmp         byte ptr [eax+214],1;TCustomListView.FBorderStyle:TBorderStyle
>004AF858    jne         004AF86E
 004AF85A    mov         eax,dword ptr [ebp-8]
 004AF85D    and         dword ptr [eax+4],0FF7FFFFF
 004AF864    mov         eax,dword ptr [ebp-8]
 004AF867    or          dword ptr [eax+8],200
 004AF86E    mov         eax,dword ptr [ebp-8]
 004AF871    and         dword ptr [eax+24],0FFFFFFFC
 004AF875    pop         ecx
 004AF876    pop         ecx
 004AF877    pop         ebp
 004AF878    ret
end;*}

//004AF88C
procedure ReadCols;
begin
{*
 004AF88C    push        ebp
 004AF88D    mov         ebp,esp
 004AF88F    push        ecx
 004AF890    mov         eax,dword ptr [ebp+8]
 004AF893    mov         eax,dword ptr [eax-4]
 004AF896    cmp         dword ptr [eax+248],0
>004AF89D    je          004AF93C
 004AF8A3    mov         eax,dword ptr [ebp+8]
 004AF8A6    mov         eax,dword ptr [eax-4]
 004AF8A9    mov         eax,dword ptr [eax+23C]
 004AF8AF    call        TCollection.Clear
 004AF8B4    push        400
 004AF8B9    mov         eax,dword ptr [ebp+8]
 004AF8BC    mov         eax,dword ptr [eax-4]
 004AF8BF    mov         ecx,dword ptr [eax+248]
 004AF8C5    mov         dl,1
 004AF8C7    mov         eax,[004766B8];TReader
 004AF8CC    call        TFiler.Create
 004AF8D1    mov         dword ptr [ebp-4],eax
 004AF8D4    xor         eax,eax
 004AF8D6    push        ebp
 004AF8D7    push        4AF914
 004AF8DC    push        dword ptr fs:[eax]
 004AF8DF    mov         dword ptr fs:[eax],esp
 004AF8E2    mov         eax,dword ptr [ebp-4]
 004AF8E5    call        TReader.ReadValue
 004AF8EA    mov         eax,dword ptr [ebp+8]
 004AF8ED    mov         eax,dword ptr [eax-4]
 004AF8F0    mov         edx,dword ptr [eax+23C]
 004AF8F6    mov         eax,dword ptr [ebp-4]
 004AF8F9    call        TReader.ReadCollection
 004AF8FE    xor         eax,eax
 004AF900    pop         edx
 004AF901    pop         ecx
 004AF902    pop         ecx
 004AF903    mov         dword ptr fs:[eax],edx
 004AF906    push        4AF91B
 004AF90B    mov         eax,dword ptr [ebp-4]
 004AF90E    call        TObject.Free
 004AF913    ret
>004AF914    jmp         @HandleFinally
>004AF919    jmp         004AF90B
 004AF91B    mov         eax,dword ptr [ebp+8]
 004AF91E    mov         eax,dword ptr [eax-4]
 004AF921    mov         eax,dword ptr [eax+248]
 004AF927    mov         dl,1
 004AF929    mov         ecx,dword ptr [eax]
 004AF92B    call        dword ptr [ecx-4]
 004AF92E    mov         eax,dword ptr [ebp+8]
 004AF931    mov         eax,dword ptr [eax-4]
 004AF934    xor         edx,edx
 004AF936    mov         dword ptr [eax+248],edx
 004AF93C    pop         ecx
 004AF93D    pop         ebp
 004AF93E    ret
*}
end;

//004AF940
procedure TCustomListView.CreateWnd;
begin
{*
 004AF940    push        ebp
 004AF941    mov         ebp,esp
 004AF943    push        ecx
 004AF944    mov         dword ptr [ebp-4],eax
 004AF947    mov         eax,dword ptr [ebp-4]
 004AF94A    call        TWinControl.CreateWnd
 004AF94F    mov         eax,dword ptr [ebp-4]
 004AF952    call        004B00F0
 004AF957    mov         eax,dword ptr [ebp-4]
 004AF95A    mov         edx,dword ptr [eax+70];TCustomListView.FColor:TColor
 004AF95D    mov         eax,dword ptr [ebp-4]
 004AF960    call        004B0750
 004AF965    mov         eax,dword ptr [ebp-4]
 004AF968    mov         eax,dword ptr [eax+68];TCustomListView.FFont:TFont
 004AF96B    mov         edx,dword ptr [eax+18];TFont.Color:TColor
 004AF96E    mov         eax,dword ptr [ebp-4]
 004AF971    call        004B0720
 004AF976    mov         eax,dword ptr [ebp-4]
 004AF979    mov         edx,dword ptr [eax+268];TCustomListView.FAllocBy:Integer
 004AF97F    mov         eax,dword ptr [ebp-4]
 004AF982    call        TListView.SetAllocBy
 004AF987    mov         eax,dword ptr [ebp-4]
 004AF98A    cmp         dword ptr [eax+240],0;TCustomListView.FMemStream:TMemoryStream
>004AF991    je          004AFA70
 004AF997    mov         eax,dword ptr [ebp-4]
 004AF99A    mov         eax,dword ptr [eax+22C];TCustomListView.FListItems:TListItems
 004AF9A0    call        TListItems.BeginUpdate
 004AF9A5    mov         eax,dword ptr [ebp-4]
 004AF9A8    mov         byte ptr [eax+289],1;TCustomListView.FReading:Boolean
 004AF9AF    xor         eax,eax
 004AF9B1    push        ebp
 004AF9B2    push        4AFA69
 004AF9B7    push        dword ptr fs:[eax]
 004AF9BA    mov         dword ptr fs:[eax],esp
 004AF9BD    mov         eax,dword ptr [ebp-4]
 004AF9C0    mov         eax,dword ptr [eax+23C];TCustomListView.FListColumns:TListColumns
 004AF9C6    call        TCollection.Clear
 004AF9CB    mov         eax,dword ptr [ebp-4]
 004AF9CE    mov         eax,dword ptr [eax+240];TCustomListView.FMemStream:TMemoryStream
 004AF9D4    mov         edx,dword ptr [ebp-4]
 004AF9D7    call        0047C0B0
 004AF9DC    mov         eax,dword ptr [ebp-4]
 004AF9DF    mov         eax,dword ptr [eax+240];TCustomListView.FMemStream:TMemoryStream
 004AF9E5    mov         dl,1
 004AF9E7    mov         ecx,dword ptr [eax]
 004AF9E9    call        dword ptr [ecx-4];TMemoryStream.Destroy
 004AF9EC    mov         eax,dword ptr [ebp-4]
 004AF9EF    xor         edx,edx
 004AF9F1    mov         dword ptr [eax+240],edx;TCustomListView.FMemStream:TMemoryStream
 004AF9F7    mov         eax,dword ptr [ebp-4]
 004AF9FA    cmp         byte ptr [eax+244],0;TCustomListView.FOwnerData:Boolean
>004AFA01    je          004AFA1A
 004AFA03    mov         eax,dword ptr [ebp-4]
 004AFA06    mov         edx,dword ptr [eax+2A0];TCustomListView.FOwnerDataCount:Integer
 004AFA0C    mov         eax,dword ptr [ebp-4]
 004AFA0F    mov         eax,dword ptr [eax+22C];TCustomListView.FListItems:TListItems
 004AFA15    call        004AE824
 004AFA1A    mov         eax,dword ptr [ebp-4]
 004AFA1D    cmp         byte ptr [eax+274],0;TCustomListView.FCheckboxes:Boolean
>004AFA24    je          004AFA2E
 004AFA26    mov         eax,dword ptr [ebp-4]
 004AFA29    call        004B0234
 004AFA2E    push        ebp
 004AFA2F    call        ReadCols
 004AFA34    pop         ecx
 004AFA35    mov         eax,dword ptr [ebp-4]
 004AFA38    mov         edx,dword ptr [eax+68];TCustomListView.FFont:TFont
 004AFA3B    mov         eax,dword ptr [ebp-4]
 004AFA3E    call        TPanel.SetFont
 004AFA43    xor         eax,eax
 004AFA45    pop         edx
 004AFA46    pop         ecx
 004AFA47    pop         ecx
 004AFA48    mov         dword ptr fs:[eax],edx
 004AFA4B    push        4AFA70
 004AFA50    mov         eax,dword ptr [ebp-4]
 004AFA53    mov         eax,dword ptr [eax+22C];TCustomListView.FListItems:TListItems
 004AFA59    call        TListItems.EndUpdate
 004AFA5E    mov         eax,dword ptr [ebp-4]
 004AFA61    mov         byte ptr [eax+289],0;TCustomListView.FReading:Boolean
 004AFA68    ret
>004AFA69    jmp         @HandleFinally
>004AFA6E    jmp         004AFA50
 004AFA70    mov         eax,dword ptr [ebp-4]
 004AFA73    mov         eax,dword ptr [eax+23C];TCustomListView.FListColumns:TListColumns
 004AFA79    call        004AD608
 004AFA7E    mov         eax,dword ptr [ebp-4]
 004AFA81    cmp         dword ptr [eax+218],0;TCustomListView.FLargeImages:TCustomImageList
>004AFA88    je          004AFAB6
 004AFA8A    mov         eax,dword ptr [ebp-4]
 004AFA8D    mov         eax,dword ptr [eax+218];TCustomListView.FLargeImages:TCustomImageList
 004AFA93    call        004DC4C0
 004AFA98    test        al,al
>004AFA9A    je          004AFAB6
 004AFA9C    mov         eax,dword ptr [ebp-4]
 004AFA9F    mov         eax,dword ptr [eax+218];TCustomListView.FLargeImages:TCustomImageList
 004AFAA5    call        004DC758
 004AFAAA    mov         edx,eax
 004AFAAC    xor         ecx,ecx
 004AFAAE    mov         eax,dword ptr [ebp-4]
 004AFAB1    call        004AFBDC
 004AFAB6    mov         eax,dword ptr [ebp-4]
 004AFAB9    cmp         dword ptr [eax+21C],0;TCustomListView.FSmallImages:TCustomImageList
>004AFAC0    je          004AFAF1
 004AFAC2    mov         eax,dword ptr [ebp-4]
 004AFAC5    mov         eax,dword ptr [eax+21C];TCustomListView.FSmallImages:TCustomImageList
 004AFACB    call        004DC4C0
 004AFAD0    test        al,al
>004AFAD2    je          004AFAF1
 004AFAD4    mov         eax,dword ptr [ebp-4]
 004AFAD7    mov         eax,dword ptr [eax+21C];TCustomListView.FSmallImages:TCustomImageList
 004AFADD    call        004DC758
 004AFAE2    mov         edx,eax
 004AFAE4    mov         ecx,1
 004AFAE9    mov         eax,dword ptr [ebp-4]
 004AFAEC    call        004AFBDC
 004AFAF1    mov         eax,dword ptr [ebp-4]
 004AFAF4    cmp         dword ptr [eax+220],0;TCustomListView.FStateImages:TCustomImageList
>004AFAFB    je          004AFB2C
 004AFAFD    mov         eax,dword ptr [ebp-4]
 004AFB00    mov         eax,dword ptr [eax+220];TCustomListView.FStateImages:TCustomImageList
 004AFB06    call        004DC4C0
 004AFB0B    test        al,al
>004AFB0D    je          004AFB2C
 004AFB0F    mov         eax,dword ptr [ebp-4]
 004AFB12    mov         eax,dword ptr [eax+220];TCustomListView.FStateImages:TCustomImageList
 004AFB18    call        004DC758
 004AFB1D    mov         edx,eax
 004AFB1F    mov         ecx,2
 004AFB24    mov         eax,dword ptr [ebp-4]
 004AFB27    call        004AFBDC
 004AFB2C    mov         eax,dword ptr [ebp-4]
 004AFB2F    call        004B325C
 004AFB34    pop         ecx
 004AFB35    pop         ebp
 004AFB36    ret
*}
end;

//004AFB38
procedure sub_004AFB38;
begin
{*
 004AFB38    push        ebp
 004AFB39    mov         ebp,esp
 004AFB3B    push        ecx
 004AFB3C    mov         dword ptr [ebp-4],eax
 004AFB3F    mov         eax,dword ptr [ebp-4]
 004AFB42    cmp         dword ptr [eax+240],0;TCustomListView.FMemStream:TMemoryStream
>004AFB49    jne         004AFB62
 004AFB4B    mov         dl,1
 004AFB4D    mov         eax,[00476368];TMemoryStream
 004AFB52    call        TObject.Create;TMemoryStream.Create
 004AFB57    mov         edx,dword ptr [ebp-4]
 004AFB5A    mov         dword ptr [edx+240],eax;TCustomListView.FMemStream:TMemoryStream
>004AFB60    jmp         004AFB74
 004AFB62    push        0
 004AFB64    push        0
 004AFB66    mov         eax,dword ptr [ebp-4]
 004AFB69    mov         eax,dword ptr [eax+240];TCustomListView.FMemStream:TMemoryStream
 004AFB6F    call        0047BD6C
 004AFB74    mov         eax,dword ptr [ebp-4]
 004AFB77    cmp         byte ptr [eax+244],0;TCustomListView.FOwnerData:Boolean
>004AFB7E    je          004AFB97
 004AFB80    mov         eax,dword ptr [ebp-4]
 004AFB83    mov         eax,dword ptr [eax+22C];TCustomListView.FListItems:TListItems
 004AFB89    call        004AE700
 004AFB8E    mov         edx,dword ptr [ebp-4]
 004AFB91    mov         dword ptr [edx+2A0],eax;TCustomListView.FOwnerDataCount:Integer
 004AFB97    mov         edx,dword ptr [ebp-4]
 004AFB9A    mov         eax,dword ptr [ebp-4]
 004AFB9D    mov         eax,dword ptr [eax+240];TCustomListView.FMemStream:TMemoryStream
 004AFBA3    call        0047C114
 004AFBA8    push        0
 004AFBAA    push        0
 004AFBAC    mov         eax,dword ptr [ebp-4]
 004AFBAF    mov         eax,dword ptr [eax+240];TCustomListView.FMemStream:TMemoryStream
 004AFBB5    call        0047BCF4
 004AFBBA    mov         eax,dword ptr [ebp-4]
 004AFBBD    cmp         byte ptr [eax+274],0;TCustomListView.FCheckboxes:Boolean
>004AFBC4    je          004AFBCE
 004AFBC6    mov         eax,dword ptr [ebp-4]
 004AFBC9    call        004B02EC
 004AFBCE    mov         eax,dword ptr [ebp-4]
 004AFBD1    call        004CFE84
 004AFBD6    pop         ecx
 004AFBD7    pop         ebp
 004AFBD8    ret
*}
end;

//004AFBDC
{*procedure sub_004AFBDC(?:TCustomListView; ?:?; ?:?);
begin
 004AFBDC    push        ebp
 004AFBDD    mov         ebp,esp
 004AFBDF    add         esp,0FFFFFFF4
 004AFBE2    mov         dword ptr [ebp-0C],ecx
 004AFBE5    mov         dword ptr [ebp-8],edx
 004AFBE8    mov         dword ptr [ebp-4],eax
 004AFBEB    mov         eax,dword ptr [ebp-4]
 004AFBEE    call        TWinControl.HandleAllocated
 004AFBF3    test        al,al
>004AFBF5    je          004AFC0A
 004AFBF7    mov         eax,dword ptr [ebp-4]
 004AFBFA    call        TWinControl.GetHandle
 004AFBFF    mov         ecx,dword ptr [ebp-0C]
 004AFC02    mov         edx,dword ptr [ebp-8]
 004AFC05    call        0042F444
 004AFC0A    mov         esp,ebp
 004AFC0C    pop         ebp
 004AFC0D    ret
end;*}

//004AFC10
{*procedure sub_004AFC10(?:?; ?:?);
begin
 004AFC10    push        ebp
 004AFC11    mov         ebp,esp
 004AFC13    add         esp,0FFFFFFF4
 004AFC16    mov         dword ptr [ebp-8],edx
 004AFC19    mov         dword ptr [ebp-4],eax
 004AFC1C    mov         eax,dword ptr [ebp-4]
 004AFC1F    call        TWinControl.HandleAllocated
 004AFC24    test        al,al
>004AFC26    je          004AFCA1
 004AFC28    mov         eax,dword ptr [ebp-8]
 004AFC2B    call        004DC4C0
 004AFC30    test        al,al
>004AFC32    je          004AFC41
 004AFC34    mov         eax,dword ptr [ebp-8]
 004AFC37    call        004DC758
 004AFC3C    mov         dword ptr [ebp-0C],eax
>004AFC3F    jmp         004AFC46
 004AFC41    xor         eax,eax
 004AFC43    mov         dword ptr [ebp-0C],eax
 004AFC46    mov         eax,dword ptr [ebp-8]
 004AFC49    mov         edx,dword ptr [ebp-4]
 004AFC4C    cmp         eax,dword ptr [edx+218]
>004AFC52    jne         004AFC63
 004AFC54    xor         ecx,ecx
 004AFC56    mov         edx,dword ptr [ebp-0C]
 004AFC59    mov         eax,dword ptr [ebp-4]
 004AFC5C    call        004AFBDC
>004AFC61    jmp         004AFCA1
 004AFC63    mov         eax,dword ptr [ebp-8]
 004AFC66    mov         edx,dword ptr [ebp-4]
 004AFC69    cmp         eax,dword ptr [edx+21C]
>004AFC6F    jne         004AFC83
 004AFC71    mov         ecx,1
 004AFC76    mov         edx,dword ptr [ebp-0C]
 004AFC79    mov         eax,dword ptr [ebp-4]
 004AFC7C    call        004AFBDC
>004AFC81    jmp         004AFCA1
 004AFC83    mov         eax,dword ptr [ebp-8]
 004AFC86    mov         edx,dword ptr [ebp-4]
 004AFC89    cmp         eax,dword ptr [edx+220]
>004AFC8F    jne         004AFCA1
 004AFC91    mov         ecx,2
 004AFC96    mov         edx,dword ptr [ebp-0C]
 004AFC99    mov         eax,dword ptr [ebp-4]
 004AFC9C    call        004AFBDC
 004AFCA1    mov         esp,ebp
 004AFCA3    pop         ebp
 004AFCA4    ret
end;*}

//004AFCA8
procedure TCustomListView.Notification(AComponent:TComponent; Operation:TOperation);
begin
{*
 004AFCA8    push        ebp
 004AFCA9    mov         ebp,esp
 004AFCAB    add         esp,0FFFFFFF4
 004AFCAE    mov         byte ptr [ebp-9],cl
 004AFCB1    mov         dword ptr [ebp-8],edx
 004AFCB4    mov         dword ptr [ebp-4],eax
 004AFCB7    mov         cl,byte ptr [ebp-9]
 004AFCBA    mov         edx,dword ptr [ebp-8]
 004AFCBD    mov         eax,dword ptr [ebp-4]
 004AFCC0    call        TControl.Notification
 004AFCC5    cmp         byte ptr [ebp-9],1
>004AFCC9    jne         004AFD13
 004AFCCB    mov         eax,dword ptr [ebp-8]
 004AFCCE    mov         edx,dword ptr [ebp-4]
 004AFCD1    cmp         eax,dword ptr [edx+218];TCustomListView.FLargeImages:TCustomImageList
>004AFCD7    jne         004AFCE3
 004AFCD9    xor         edx,edx
 004AFCDB    mov         eax,dword ptr [ebp-4]
 004AFCDE    call        TListView.SetLargeImages
 004AFCE3    mov         eax,dword ptr [ebp-8]
 004AFCE6    mov         edx,dword ptr [ebp-4]
 004AFCE9    cmp         eax,dword ptr [edx+21C];TCustomListView.FSmallImages:TCustomImageList
>004AFCEF    jne         004AFCFB
 004AFCF1    xor         edx,edx
 004AFCF3    mov         eax,dword ptr [ebp-4]
 004AFCF6    call        TListView.SetSmallImages
 004AFCFB    mov         eax,dword ptr [ebp-8]
 004AFCFE    mov         edx,dword ptr [ebp-4]
 004AFD01    cmp         eax,dword ptr [edx+220];TCustomListView.FStateImages:TCustomImageList
>004AFD07    jne         004AFD13
 004AFD09    xor         edx,edx
 004AFD0B    mov         eax,dword ptr [ebp-4]
 004AFD0E    call        TListView.SetStateImages
 004AFD13    mov         esp,ebp
 004AFD15    pop         ebp
 004AFD16    ret
*}
end;

//004B00C8
{*procedure sub_004B00C8(?:?; ?:?; ?:?);
begin
 004B00C8    push        ebp
 004B00C9    mov         ebp,esp
 004B00CB    add         esp,0FFFFFFF4
 004B00CE    mov         dword ptr [ebp-0C],ecx
 004B00D1    mov         dword ptr [ebp-8],edx
 004B00D4    mov         dword ptr [ebp-4],eax
 004B00D7    mov         eax,dword ptr [ebp-4]
 004B00DA    call        TWinControl.GetHandle
 004B00DF    mov         ecx,dword ptr [ebp-0C]
 004B00E2    mov         edx,dword ptr [ebp-8]
 004B00E5    call        0042F680
 004B00EA    mov         esp,ebp
 004B00EC    pop         ebp
 004B00ED    ret
end;*}

//004B00F0
procedure sub_004B00F0(?:TCustomListView);
begin
{*
 004B00F0    push        ebp
 004B00F1    mov         ebp,esp
 004B00F3    add         esp,0FFFFFFF4
 004B00F6    mov         dword ptr [ebp-4],eax
 004B00F9    mov         eax,dword ptr [ebp-4]
 004B00FC    call        TWinControl.HandleAllocated
 004B0101    test        al,al
>004B0103    je          004B0228
 004B0109    xor         eax,eax
 004B010B    mov         dword ptr [ebp-0C],eax
 004B010E    mov         eax,dword ptr [ebp-4]
 004B0111    cmp         dword ptr [eax+220],0;TCustomListView.FStateImages:TCustomImageList
>004B0118    je          004B0130
 004B011A    mov         eax,dword ptr [ebp-4]
 004B011D    mov         eax,dword ptr [eax+220];TCustomListView.FStateImages:TCustomImageList
 004B0123    mov         dword ptr [ebp-0C],eax
 004B0126    xor         edx,edx
 004B0128    mov         eax,dword ptr [ebp-4]
 004B012B    call        TListView.SetStateImages
 004B0130    mov         dword ptr [ebp-8],402
 004B0137    mov         eax,dword ptr [ebp-4]
 004B013A    cmp         byte ptr [eax+274],0;TCustomListView.FCheckboxes:Boolean
>004B0141    je          004B014A
 004B0143    mov         dword ptr [ebp-8],4
 004B014A    mov         eax,dword ptr [ebp-4]
 004B014D    cmp         byte ptr [eax+277],0;TCustomListView.FGridLines:Boolean
>004B0154    je          004B015A
 004B0156    or          dword ptr [ebp-8],1
 004B015A    mov         eax,dword ptr [ebp-4]
 004B015D    cmp         byte ptr [eax+278],0;TCustomListView.FHotTrack:Boolean
>004B0164    je          004B016A
 004B0166    or          dword ptr [ebp-8],8
 004B016A    mov         eax,dword ptr [ebp-4]
 004B016D    cmp         byte ptr [eax+27A],0;TCustomListView.FRowSelect:Boolean
>004B0174    je          004B017A
 004B0176    or          dword ptr [ebp-8],20
 004B017A    mov         eax,dword ptr [ebp-4]
 004B017D    cmp         byte ptr [eax+275],0;TCustomListView.FFlatScrollBars:Boolean
>004B0184    je          004B018D
 004B0186    or          dword ptr [ebp-8],100
 004B018D    mov         eax,dword ptr [ebp-4]
 004B0190    cmp         byte ptr [eax+276],0;TCustomListView.FFullDrag:Boolean
>004B0197    je          004B019D
 004B0199    or          dword ptr [ebp-8],10
 004B019D    mov         eax,dword ptr [ebp-4]
 004B01A0    cmp         byte ptr [eax+294],0;TCustomListView.FShowWorkAreas:Boolean
>004B01A7    je          004B01B0
 004B01A9    or          dword ptr [ebp-8],2000
 004B01B0    mov         eax,dword ptr [ebp-4]
 004B01B3    test        byte ptr [eax+279],1;TCustomListView.FHotTrackStyles:TListHotTrackStyles
>004B01BA    je          004B01C2
 004B01BC    or          dword ptr [ebp-8],40
>004B01C0    jmp         004B01E1
 004B01C2    mov         al,[004B022C];0x6 gvar_004B022C
 004B01C7    mov         edx,dword ptr [ebp-4]
 004B01CA    and         al,byte ptr [edx+279];TCustomListView.FHotTrackStyles:TListHotTrackStyles
 004B01D0    mov         dl,byte ptr ds:[4B0230];0x0 gvar_004B0230
 004B01D6    cmp         dl,al
>004B01D8    je          004B01E1
 004B01DA    or          dword ptr [ebp-8],80
 004B01E1    mov         eax,dword ptr [ebp-4]
 004B01E4    test        byte ptr [eax+279],4;TCustomListView.FHotTrackStyles:TListHotTrackStyles
>004B01EB    je          004B01F4
 004B01ED    or          dword ptr [ebp-8],800
 004B01F4    mov         eax,dword ptr [ebp-4]
 004B01F7    test        byte ptr [eax+279],2;TCustomListView.FHotTrackStyles:TListHotTrackStyles
>004B01FE    je          004B0207
 004B0200    or          dword ptr [ebp-8],1000
 004B0207    mov         eax,dword ptr [ebp-4]
 004B020A    call        TWinControl.GetHandle
 004B020F    mov         edx,dword ptr [ebp-8]
 004B0212    call        0042FAD0
 004B0217    cmp         dword ptr [ebp-0C],0
>004B021B    je          004B0228
 004B021D    mov         edx,dword ptr [ebp-0C]
 004B0220    mov         eax,dword ptr [ebp-4]
 004B0223    call        TListView.SetStateImages
 004B0228    mov         esp,ebp
 004B022A    pop         ebp
 004B022B    ret
*}
end;

//004B0234
procedure sub_004B0234(?:TCustomListView);
begin
{*
 004B0234    push        ebp
 004B0235    mov         ebp,esp
 004B0237    add         esp,0FFFFFFF0
 004B023A    push        ebx
 004B023B    mov         dword ptr [ebp-4],eax
 004B023E    mov         eax,dword ptr [ebp-4]
 004B0241    mov         eax,dword ptr [eax+22C];TCustomListView.FListItems:TListItems
 004B0247    call        004AE700
 004B024C    dec         eax
 004B024D    test        eax,eax
>004B024F    jl          004B02CD
 004B0251    inc         eax
 004B0252    mov         dword ptr [ebp-10],eax
 004B0255    mov         dword ptr [ebp-8],0
 004B025C    mov         eax,dword ptr [ebp-4]
 004B025F    cmp         dword ptr [eax+24C],0;TCustomListView.FCheckStream:TMemoryStream
>004B0266    je          004B0299
 004B0268    lea         edx,[ebp-9]
 004B026B    mov         ecx,1
 004B0270    mov         eax,dword ptr [ebp-4]
 004B0273    mov         eax,dword ptr [eax+24C];TCustomListView.FCheckStream:TMemoryStream
 004B0279    mov         ebx,dword ptr [eax]
 004B027B    call        dword ptr [ebx+0C];TMemoryStream.sub_0047C4FC
 004B027E    mov         edx,dword ptr [ebp-8]
 004B0281    mov         eax,dword ptr [ebp-4]
 004B0284    mov         eax,dword ptr [eax+22C];TCustomListView.FListItems:TListItems
 004B028A    call        004AE758
 004B028F    mov         dl,byte ptr [ebp-9]
 004B0292    call        004ADEC4
>004B0297    jmp         004B02C5
 004B0299    mov         edx,dword ptr [ebp-8]
 004B029C    mov         eax,dword ptr [ebp-4]
 004B029F    mov         eax,dword ptr [eax+22C];TCustomListView.FListItems:TListItems
 004B02A5    call        004AE758
 004B02AA    mov         al,byte ptr [eax+2A]
 004B02AD    push        eax
 004B02AE    mov         edx,dword ptr [ebp-8]
 004B02B1    mov         eax,dword ptr [ebp-4]
 004B02B4    mov         eax,dword ptr [eax+22C];TCustomListView.FListItems:TListItems
 004B02BA    call        004AE758
 004B02BF    pop         edx
 004B02C0    call        004ADEC4
 004B02C5    inc         dword ptr [ebp-8]
 004B02C8    dec         dword ptr [ebp-10]
>004B02CB    jne         004B025C
 004B02CD    mov         eax,dword ptr [ebp-4]
 004B02D0    mov         eax,dword ptr [eax+24C];TCustomListView.FCheckStream:TMemoryStream
 004B02D6    call        TObject.Free
 004B02DB    mov         eax,dword ptr [ebp-4]
 004B02DE    xor         edx,edx
 004B02E0    mov         dword ptr [eax+24C],edx;TCustomListView.FCheckStream:TMemoryStream
 004B02E6    pop         ebx
 004B02E7    mov         esp,ebp
 004B02E9    pop         ebp
 004B02EA    ret
*}
end;

//004B02EC
procedure sub_004B02EC(?:TCustomListView);
begin
{*
 004B02EC    push        ebp
 004B02ED    mov         ebp,esp
 004B02EF    add         esp,0FFFFFFF0
 004B02F2    push        ebx
 004B02F3    mov         dword ptr [ebp-4],eax
 004B02F6    mov         eax,dword ptr [ebp-4]
 004B02F9    cmp         dword ptr [eax+24C],0;TCustomListView.FCheckStream:TMemoryStream
>004B0300    jne         004B0319
 004B0302    mov         dl,1
 004B0304    mov         eax,[00476368];TMemoryStream
 004B0309    call        TObject.Create;TMemoryStream.Create
 004B030E    mov         edx,dword ptr [ebp-4]
 004B0311    mov         dword ptr [edx+24C],eax;TCustomListView.FCheckStream:TMemoryStream
>004B0317    jmp         004B032B
 004B0319    push        0
 004B031B    push        0
 004B031D    mov         eax,dword ptr [ebp-4]
 004B0320    mov         eax,dword ptr [eax+24C];TCustomListView.FCheckStream:TMemoryStream
 004B0326    call        0047BD6C
 004B032B    mov         eax,dword ptr [ebp-4]
 004B032E    mov         eax,dword ptr [eax+22C];TCustomListView.FListItems:TListItems
 004B0334    call        004AE700
 004B0339    dec         eax
 004B033A    test        eax,eax
>004B033C    jl          004B0380
 004B033E    inc         eax
 004B033F    mov         dword ptr [ebp-10],eax
 004B0342    mov         dword ptr [ebp-8],0
 004B0349    mov         edx,dword ptr [ebp-8]
 004B034C    mov         eax,dword ptr [ebp-4]
 004B034F    mov         eax,dword ptr [eax+22C];TCustomListView.FListItems:TListItems
 004B0355    call        004AE758
 004B035A    call        004ADE68
 004B035F    mov         byte ptr [ebp-9],al
 004B0362    lea         edx,[ebp-9]
 004B0365    mov         ecx,1
 004B036A    mov         eax,dword ptr [ebp-4]
 004B036D    mov         eax,dword ptr [eax+24C];TCustomListView.FCheckStream:TMemoryStream
 004B0373    mov         ebx,dword ptr [eax]
 004B0375    call        dword ptr [ebx+10];TMemoryStream.sub_0047C80C
 004B0378    inc         dword ptr [ebp-8]
 004B037B    dec         dword ptr [ebp-10]
>004B037E    jne         004B0349
 004B0380    push        0
 004B0382    push        0
 004B0384    mov         eax,dword ptr [ebp-4]
 004B0387    mov         eax,dword ptr [eax+24C];TCustomListView.FCheckStream:TMemoryStream
 004B038D    call        0047BCF4
 004B0392    pop         ebx
 004B0393    mov         esp,ebp
 004B0395    pop         ebp
 004B0396    ret
*}
end;

//004B0398
procedure TListView.SetCheckboxes(Value:Boolean);
begin
{*
 004B0398    push        ebp
 004B0399    mov         ebp,esp
 004B039B    add         esp,0FFFFFFF0
 004B039E    push        ebx
 004B039F    mov         byte ptr [ebp-5],dl
 004B03A2    mov         dword ptr [ebp-4],eax
 004B03A5    mov         eax,dword ptr [ebp-4]
 004B03A8    mov         al,byte ptr [eax+274];TListView.FCheckboxes:Boolean
 004B03AE    cmp         al,byte ptr [ebp-5]
>004B03B1    je          004B0445
 004B03B7    mov         al,byte ptr [ebp-5]
 004B03BA    mov         edx,dword ptr [ebp-4]
 004B03BD    mov         byte ptr [edx+274],al;TListView.FCheckboxes:Boolean
 004B03C3    mov         eax,dword ptr [ebp-4]
 004B03C6    call        004B00F0
 004B03CB    mov         eax,dword ptr [ebp-4]
 004B03CE    cmp         byte ptr [eax+274],0;TListView.FCheckboxes:Boolean
>004B03D5    je          004B03E1
 004B03D7    mov         eax,dword ptr [ebp-4]
 004B03DA    call        004B0234
>004B03DF    jmp         004B0445
 004B03E1    mov         eax,dword ptr [ebp-4]
 004B03E4    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 004B03EA    call        004AE700
 004B03EF    dec         eax
 004B03F0    test        eax,eax
>004B03F2    jl          004B0445
 004B03F4    inc         eax
 004B03F5    mov         dword ptr [ebp-10],eax
 004B03F8    mov         dword ptr [ebp-0C],0
 004B03FF    mov         edx,dword ptr [ebp-0C]
 004B0402    mov         eax,dword ptr [ebp-4]
 004B0405    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 004B040B    call        004AE758
 004B0410    call        004AE4CC
 004B0415    push        eax
 004B0416    mov         eax,dword ptr [ebp-4]
 004B0419    call        TWinControl.GetHandle
 004B041E    pop         edx
 004B041F    call        0042F974
 004B0424    test        eax,eax
 004B0426    setne       bl
 004B0429    mov         edx,dword ptr [ebp-0C]
 004B042C    mov         eax,dword ptr [ebp-4]
 004B042F    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 004B0435    call        004AE758
 004B043A    mov         byte ptr [eax+2A],bl
 004B043D    inc         dword ptr [ebp-0C]
 004B0440    dec         dword ptr [ebp-10]
>004B0443    jne         004B03FF
 004B0445    pop         ebx
 004B0446    mov         esp,ebp
 004B0448    pop         ebp
 004B0449    ret
*}
end;

//004B044C
procedure TListView.SetGridLines(Value:Boolean);
begin
{*
 004B044C    push        ebp
 004B044D    mov         ebp,esp
 004B044F    add         esp,0FFFFFFF8
 004B0452    mov         byte ptr [ebp-5],dl
 004B0455    mov         dword ptr [ebp-4],eax
 004B0458    mov         eax,dword ptr [ebp-4]
 004B045B    mov         al,byte ptr [eax+277];TListView.FGridLines:Boolean
 004B0461    cmp         al,byte ptr [ebp-5]
>004B0464    je          004B047A
 004B0466    mov         al,byte ptr [ebp-5]
 004B0469    mov         edx,dword ptr [ebp-4]
 004B046C    mov         byte ptr [edx+277],al;TListView.FGridLines:Boolean
 004B0472    mov         eax,dword ptr [ebp-4]
 004B0475    call        004B00F0
 004B047A    pop         ecx
 004B047B    pop         ecx
 004B047C    pop         ebp
 004B047D    ret
*}
end;

//004B0480
procedure TListView.SetHotTrack(Value:Boolean);
begin
{*
 004B0480    push        ebp
 004B0481    mov         ebp,esp
 004B0483    add         esp,0FFFFFFF8
 004B0486    mov         byte ptr [ebp-5],dl
 004B0489    mov         dword ptr [ebp-4],eax
 004B048C    mov         eax,dword ptr [ebp-4]
 004B048F    mov         al,byte ptr [eax+278];TListView.FHotTrack:Boolean
 004B0495    cmp         al,byte ptr [ebp-5]
>004B0498    je          004B04AE
 004B049A    mov         al,byte ptr [ebp-5]
 004B049D    mov         edx,dword ptr [ebp-4]
 004B04A0    mov         byte ptr [edx+278],al;TListView.FHotTrack:Boolean
 004B04A6    mov         eax,dword ptr [ebp-4]
 004B04A9    call        004B00F0
 004B04AE    pop         ecx
 004B04AF    pop         ecx
 004B04B0    pop         ebp
 004B04B1    ret
*}
end;

//004B04B4
procedure TListView.SetHotTrackStyles(Value:TListHotTrackStyles);
begin
{*
 004B04B4    push        ebp
 004B04B5    mov         ebp,esp
 004B04B7    add         esp,0FFFFFFF8
 004B04BA    mov         byte ptr [ebp-5],dl
 004B04BD    mov         dword ptr [ebp-4],eax
 004B04C0    mov         al,byte ptr [ebp-5]
 004B04C3    mov         edx,dword ptr [ebp-4]
 004B04C6    cmp         al,byte ptr [edx+279];TListView.FHotTrackStyles:TListHotTrackStyles
>004B04CC    je          004B04E2
 004B04CE    mov         al,byte ptr [ebp-5]
 004B04D1    mov         edx,dword ptr [ebp-4]
 004B04D4    mov         byte ptr [edx+279],al;TListView.FHotTrackStyles:TListHotTrackStyles
 004B04DA    mov         eax,dword ptr [ebp-4]
 004B04DD    call        004B00F0
 004B04E2    pop         ecx
 004B04E3    pop         ecx
 004B04E4    pop         ebp
 004B04E5    ret
*}
end;

//004B04E8
procedure TListView.SetOwnerData(Value:Boolean);
begin
{*
 004B04E8    push        ebp
 004B04E9    mov         ebp,esp
 004B04EB    add         esp,0FFFFFFF8
 004B04EE    mov         byte ptr [ebp-5],dl
 004B04F1    mov         dword ptr [ebp-4],eax
 004B04F4    mov         eax,dword ptr [ebp-4]
 004B04F7    mov         al,byte ptr [eax+244];TListView.FOwnerData:Boolean
 004B04FD    cmp         al,byte ptr [ebp-5]
>004B0500    je          004B0524
 004B0502    mov         eax,dword ptr [ebp-4]
 004B0505    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 004B050B    call        TListItems.Clear
 004B0510    mov         al,byte ptr [ebp-5]
 004B0513    mov         edx,dword ptr [ebp-4]
 004B0516    mov         byte ptr [edx+244],al;TListView.FOwnerData:Boolean
 004B051C    mov         eax,dword ptr [ebp-4]
 004B051F    call        TWinControl.RecreateWnd
 004B0524    pop         ecx
 004B0525    pop         ecx
 004B0526    pop         ebp
 004B0527    ret
*}
end;

//004B0528
procedure TListView.SetOwnerDraw(Value:Boolean);
begin
{*
 004B0528    push        ebp
 004B0529    mov         ebp,esp
 004B052B    add         esp,0FFFFFFF8
 004B052E    mov         byte ptr [ebp-5],dl
 004B0531    mov         dword ptr [ebp-4],eax
 004B0534    mov         eax,dword ptr [ebp-4]
 004B0537    mov         al,byte ptr [eax+245];TListView.FOwnerDraw:Boolean
 004B053D    cmp         al,byte ptr [ebp-5]
>004B0540    je          004B0556
 004B0542    mov         al,byte ptr [ebp-5]
 004B0545    mov         edx,dword ptr [ebp-4]
 004B0548    mov         byte ptr [edx+245],al;TListView.FOwnerDraw:Boolean
 004B054E    mov         eax,dword ptr [ebp-4]
 004B0551    call        TWinControl.RecreateWnd
 004B0556    pop         ecx
 004B0557    pop         ecx
 004B0558    pop         ebp
 004B0559    ret
*}
end;

//004B055C
procedure TListView.SetRowSelect(Value:Boolean);
begin
{*
 004B055C    push        ebp
 004B055D    mov         ebp,esp
 004B055F    add         esp,0FFFFFFF8
 004B0562    mov         byte ptr [ebp-5],dl
 004B0565    mov         dword ptr [ebp-4],eax
 004B0568    mov         eax,dword ptr [ebp-4]
 004B056B    mov         al,byte ptr [eax+27A];TListView.FRowSelect:Boolean
 004B0571    cmp         al,byte ptr [ebp-5]
>004B0574    je          004B058A
 004B0576    mov         al,byte ptr [ebp-5]
 004B0579    mov         edx,dword ptr [ebp-4]
 004B057C    mov         byte ptr [edx+27A],al;TListView.FRowSelect:Boolean
 004B0582    mov         eax,dword ptr [ebp-4]
 004B0585    call        004B00F0
 004B058A    pop         ecx
 004B058B    pop         ecx
 004B058C    pop         ebp
 004B058D    ret
*}
end;

//004B0590
procedure TListView.SetFlatScrollBars(Value:Boolean);
begin
{*
 004B0590    push        ebp
 004B0591    mov         ebp,esp
 004B0593    add         esp,0FFFFFFF8
 004B0596    mov         byte ptr [ebp-5],dl
 004B0599    mov         dword ptr [ebp-4],eax
 004B059C    mov         eax,dword ptr [ebp-4]
 004B059F    mov         al,byte ptr [eax+275];TListView.FFlatScrollBars:Boolean
 004B05A5    cmp         al,byte ptr [ebp-5]
>004B05A8    je          004B05BE
 004B05AA    mov         al,byte ptr [ebp-5]
 004B05AD    mov         edx,dword ptr [ebp-4]
 004B05B0    mov         byte ptr [edx+275],al;TListView.FFlatScrollBars:Boolean
 004B05B6    mov         eax,dword ptr [ebp-4]
 004B05B9    call        004B00F0
 004B05BE    pop         ecx
 004B05BF    pop         ecx
 004B05C0    pop         ebp
 004B05C1    ret
*}
end;

//004B05C4
procedure TListView.SetFullDrag(Value:Boolean);
begin
{*
 004B05C4    push        ebp
 004B05C5    mov         ebp,esp
 004B05C7    add         esp,0FFFFFFF8
 004B05CA    mov         byte ptr [ebp-5],dl
 004B05CD    mov         dword ptr [ebp-4],eax
 004B05D0    mov         eax,dword ptr [ebp-4]
 004B05D3    mov         al,byte ptr [eax+276];TListView.FFullDrag:Boolean
 004B05D9    cmp         al,byte ptr [ebp-5]
>004B05DC    je          004B05F2
 004B05DE    mov         al,byte ptr [ebp-5]
 004B05E1    mov         edx,dword ptr [ebp-4]
 004B05E4    mov         byte ptr [edx+276],al;TListView.FFullDrag:Boolean
 004B05EA    mov         eax,dword ptr [ebp-4]
 004B05ED    call        004B00F0
 004B05F2    pop         ecx
 004B05F3    pop         ecx
 004B05F4    pop         ebp
 004B05F5    ret
*}
end;

//004B05F8
procedure TListView.SetBorderStyle(Value:TBorderStyle);
begin
{*
 004B05F8    push        ebp
 004B05F9    mov         ebp,esp
 004B05FB    add         esp,0FFFFFFF8
 004B05FE    mov         byte ptr [ebp-5],dl
 004B0601    mov         dword ptr [ebp-4],eax
 004B0604    mov         eax,dword ptr [ebp-4]
 004B0607    mov         al,byte ptr [eax+214];TListView.FBorderStyle:TBorderStyle
 004B060D    cmp         al,byte ptr [ebp-5]
>004B0610    je          004B0626
 004B0612    mov         al,byte ptr [ebp-5]
 004B0615    mov         edx,dword ptr [ebp-4]
 004B0618    mov         byte ptr [edx+214],al;TListView.FBorderStyle:TBorderStyle
 004B061E    mov         eax,dword ptr [ebp-4]
 004B0621    call        TWinControl.RecreateWnd
 004B0626    pop         ecx
 004B0627    pop         ecx
 004B0628    pop         ebp
 004B0629    ret
*}
end;

//004B062C
procedure TListView.SetColumnClick(Value:Boolean);
begin
{*
 004B062C    push        ebp
 004B062D    mov         ebp,esp
 004B062F    add         esp,0FFFFFFF8
 004B0632    mov         byte ptr [ebp-5],dl
 004B0635    mov         dword ptr [ebp-4],eax
 004B0638    mov         eax,dword ptr [ebp-4]
 004B063B    mov         al,byte ptr [eax+22A];TListView.FColumnClick:Boolean
 004B0641    cmp         al,byte ptr [ebp-5]
>004B0644    je          004B065A
 004B0646    mov         al,byte ptr [ebp-5]
 004B0649    mov         edx,dword ptr [ebp-4]
 004B064C    mov         byte ptr [edx+22A],al;TListView.FColumnClick:Boolean
 004B0652    mov         eax,dword ptr [ebp-4]
 004B0655    call        TWinControl.RecreateWnd
 004B065A    pop         ecx
 004B065B    pop         ecx
 004B065C    pop         ebp
 004B065D    ret
*}
end;

//004B0660
{*procedure sub_004B0660(?:?);
begin
 004B0660    push        ebp
 004B0661    mov         ebp,esp
 004B0663    add         esp,0FFFFFFF8
 004B0666    mov         dword ptr [ebp-8],edx
 004B0669    mov         dword ptr [ebp-4],eax
 004B066C    cmp         dword ptr [ebp-8],0
>004B0670    jge         004B0694
 004B0672    mov         eax,dword ptr [ebp-4]
 004B0675    call        004B2BE8
 004B067A    test        eax,eax
>004B067C    je          004B06B1
 004B067E    mov         eax,dword ptr [ebp-4]
 004B0681    call        004B2BE8
 004B0686    xor         ecx,ecx
 004B0688    mov         edx,3
 004B068D    call        004AE0EC
>004B0692    jmp         004B06B1
 004B0694    mov         edx,dword ptr [ebp-8]
 004B0697    mov         eax,dword ptr [ebp-4]
 004B069A    mov         eax,dword ptr [eax+22C];TCustomListView.FListItems:TListItems
 004B06A0    call        004AE758
 004B06A5    mov         cl,1
 004B06A7    mov         edx,3
 004B06AC    call        004AE0EC
 004B06B1    pop         ecx
 004B06B2    pop         ecx
 004B06B3    pop         ebp
 004B06B4    ret
end;*}

//004B06B8
procedure TListView.SetMultiSelect(Value:Boolean);
begin
{*
 004B06B8    push        ebp
 004B06B9    mov         ebp,esp
 004B06BB    add         esp,0FFFFFFF8
 004B06BE    mov         byte ptr [ebp-5],dl
 004B06C1    mov         dword ptr [ebp-4],eax
 004B06C4    mov         al,byte ptr [ebp-5]
 004B06C7    mov         edx,dword ptr [ebp-4]
 004B06CA    cmp         al,byte ptr [edx+228];TListView.FMultiSelect:Boolean
>004B06D0    je          004B06E6
 004B06D2    mov         al,byte ptr [ebp-5]
 004B06D5    mov         edx,dword ptr [ebp-4]
 004B06D8    mov         byte ptr [edx+228],al;TListView.FMultiSelect:Boolean
 004B06DE    mov         eax,dword ptr [ebp-4]
 004B06E1    call        TWinControl.RecreateWnd
 004B06E6    pop         ecx
 004B06E7    pop         ecx
 004B06E8    pop         ebp
 004B06E9    ret
*}
end;

//004B06EC
procedure TListView.SetShowColumnHeaders(Value:Boolean);
begin
{*
 004B06EC    push        ebp
 004B06ED    mov         ebp,esp
 004B06EF    add         esp,0FFFFFFF8
 004B06F2    mov         byte ptr [ebp-5],dl
 004B06F5    mov         dword ptr [ebp-4],eax
 004B06F8    mov         al,byte ptr [ebp-5]
 004B06FB    mov         edx,dword ptr [ebp-4]
 004B06FE    cmp         al,byte ptr [edx+22B];TListView.FShowColumnHeaders:Boolean
>004B0704    je          004B071A
 004B0706    mov         al,byte ptr [ebp-5]
 004B0709    mov         edx,dword ptr [ebp-4]
 004B070C    mov         byte ptr [edx+22B],al;TListView.FShowColumnHeaders:Boolean
 004B0712    mov         eax,dword ptr [ebp-4]
 004B0715    call        TWinControl.RecreateWnd
 004B071A    pop         ecx
 004B071B    pop         ecx
 004B071C    pop         ebp
 004B071D    ret
*}
end;

//004B0720
procedure sub_004B0720(?:TCustomListView; ?:TColor);
begin
{*
 004B0720    push        ebp
 004B0721    mov         ebp,esp
 004B0723    add         esp,0FFFFFFF8
 004B0726    mov         dword ptr [ebp-8],edx
 004B0729    mov         dword ptr [ebp-4],eax
 004B072C    mov         eax,dword ptr [ebp-4]
 004B072F    mov         eax,dword ptr [eax+68];TCustomListView.FFont:TFont
 004B0732    mov         eax,dword ptr [eax+18];TFont.Color:TColor
 004B0735    call        00486830
 004B073A    push        eax
 004B073B    mov         eax,dword ptr [ebp-4]
 004B073E    call        TWinControl.GetHandle
 004B0743    pop         edx
 004B0744    call        0042F824
 004B0749    pop         ecx
 004B074A    pop         ecx
 004B074B    pop         ebp
 004B074C    ret
*}
end;

//004B0750
procedure sub_004B0750(?:TCustomListView; ?:TColor);
begin
{*
 004B0750    push        ebp
 004B0751    mov         ebp,esp
 004B0753    add         esp,0FFFFFFF8
 004B0756    mov         dword ptr [ebp-8],edx
 004B0759    mov         dword ptr [ebp-4],eax
 004B075C    mov         eax,dword ptr [ebp-4]
 004B075F    mov         eax,dword ptr [eax+70];TCustomListView.FColor:TColor
 004B0762    call        00486830
 004B0767    push        eax
 004B0768    mov         eax,dword ptr [ebp-4]
 004B076B    call        TWinControl.GetHandle
 004B0770    pop         edx
 004B0771    call        0042F850
 004B0776    mov         eax,dword ptr [ebp-4]
 004B0779    mov         eax,dword ptr [eax+70];TCustomListView.FColor:TColor
 004B077C    call        00486830
 004B0781    push        eax
 004B0782    mov         eax,dword ptr [ebp-4]
 004B0785    call        TWinControl.GetHandle
 004B078A    pop         edx
 004B078B    call        0042F418
 004B0790    pop         ecx
 004B0791    pop         ecx
 004B0792    pop         ebp
 004B0793    ret
*}
end;

//004B0794
procedure TListView.SetAllocBy(Value:Integer);
begin
{*
 004B0794    push        ebp
 004B0795    mov         ebp,esp
 004B0797    add         esp,0FFFFFFF8
 004B079A    mov         dword ptr [ebp-8],edx
 004B079D    mov         dword ptr [ebp-4],eax
 004B07A0    mov         eax,dword ptr [ebp-4]
 004B07A3    mov         eax,dword ptr [eax+268];TListView.FAllocBy:Integer
 004B07A9    cmp         eax,dword ptr [ebp-8]
>004B07AC    je          004B07D6
 004B07AE    mov         eax,dword ptr [ebp-8]
 004B07B1    mov         edx,dword ptr [ebp-4]
 004B07B4    mov         dword ptr [edx+268],eax;TListView.FAllocBy:Integer
 004B07BA    mov         eax,dword ptr [ebp-4]
 004B07BD    call        TWinControl.HandleAllocated
 004B07C2    test        al,al
>004B07C4    je          004B07D6
 004B07C6    mov         eax,dword ptr [ebp-4]
 004B07C9    call        TWinControl.GetHandle
 004B07CE    mov         edx,dword ptr [ebp-8]
 004B07D1    call        0042FA28
 004B07D6    pop         ecx
 004B07D7    pop         ecx
 004B07D8    pop         ebp
 004B07D9    ret
*}
end;

//004B07DC
{*procedure TCustomListView.CMColorChanged(?:?);
begin
 004B07DC    push        ebp
 004B07DD    mov         ebp,esp
 004B07DF    add         esp,0FFFFFFF8
 004B07E2    mov         dword ptr [ebp-8],edx
 004B07E5    mov         dword ptr [ebp-4],eax
 004B07E8    mov         edx,dword ptr [ebp-8]
 004B07EB    mov         eax,dword ptr [ebp-4]
 004B07EE    call        TWinControl.CMColorChanged
 004B07F3    mov         eax,dword ptr [ebp-4]
 004B07F6    call        TWinControl.HandleAllocated
 004B07FB    test        al,al
>004B07FD    je          004B080D
 004B07FF    mov         eax,dword ptr [ebp-4]
 004B0802    mov         edx,dword ptr [eax+70];TCustomListView.FColor:TColor
 004B0805    mov         eax,dword ptr [ebp-4]
 004B0808    call        004B0750
 004B080D    pop         ecx
 004B080E    pop         ecx
 004B080F    pop         ebp
 004B0810    ret
end;*}

//004B0814
{*procedure TCustomListView.CMCtl3DChanged(?:?);
begin
 004B0814    push        ebp
 004B0815    mov         ebp,esp
 004B0817    add         esp,0FFFFFFF8
 004B081A    mov         dword ptr [ebp-8],edx
 004B081D    mov         dword ptr [ebp-4],eax
 004B0820    mov         eax,dword ptr [ebp-4]
 004B0823    cmp         byte ptr [eax+214],1;TCustomListView.FBorderStyle:TBorderStyle
>004B082A    jne         004B0834
 004B082C    mov         eax,dword ptr [ebp-4]
 004B082F    call        TWinControl.RecreateWnd
 004B0834    mov         edx,dword ptr [ebp-8]
 004B0837    mov         eax,dword ptr [ebp-4]
 004B083A    call        TWinControl.CMCtl3DChanged
 004B083F    pop         ecx
 004B0840    pop         ecx
 004B0841    pop         ebp
 004B0842    ret
end;*}

//004B0844
{*procedure TCustomListView.WMNotify(?:?);
begin
 004B0844    push        ebp
 004B0845    mov         ebp,esp
 004B0847    add         esp,0FFFFFFBC
 004B084A    push        ebx
 004B084B    push        esi
 004B084C    xor         ecx,ecx
 004B084E    mov         dword ptr [ebp-1C],ecx
 004B0851    mov         dword ptr [ebp-8],edx
 004B0854    mov         dword ptr [ebp-4],eax
 004B0857    xor         eax,eax
 004B0859    push        ebp
 004B085A    push        4B0ABE
 004B085F    push        dword ptr fs:[eax]
 004B0862    mov         dword ptr fs:[eax],esp
 004B0865    mov         edx,dword ptr [ebp-8]
 004B0868    mov         eax,dword ptr [ebp-4]
 004B086B    call        TWinControl.WMNotify
 004B0870    mov         eax,dword ptr [ebp-4]
 004B0873    call        004B0B00
 004B0878    test        al,al
>004B087A    je          004B0AA8
 004B0880    mov         eax,dword ptr [ebp-8]
 004B0883    mov         eax,dword ptr [eax+8]
 004B0886    mov         eax,dword ptr [eax]
 004B0888    mov         edx,dword ptr [ebp-4]
 004B088B    cmp         eax,dword ptr [edx+264];TCustomListView.FHeaderHandle:HWND
>004B0891    jne         004B0AA8
 004B0897    mov         eax,dword ptr [ebp-8]
 004B089A    mov         eax,dword ptr [eax+8]
 004B089D    mov         dword ptr [ebp-20],eax
 004B08A0    mov         eax,dword ptr [ebp-20]
 004B08A3    mov         eax,dword ptr [eax+8]
 004B08A6    sub         eax,0FFFFFEC9
>004B08AB    je          004B0950
 004B08B1    sub         eax,4
>004B08B4    je          004B08CF
 004B08B6    sub         eax,2
>004B08B9    je          004B095F
 004B08BF    sub         eax,12C
>004B08C4    je          004B09BA
>004B08CA    jmp         004B0AA8
 004B08CF    mov         eax,dword ptr [ebp-8]
 004B08D2    mov         eax,dword ptr [eax+8]
 004B08D5    mov         dword ptr [ebp-24],eax
 004B08D8    mov         eax,dword ptr [ebp-24]
 004B08DB    mov         eax,dword ptr [eax+14]
 004B08DE    mov         dword ptr [ebp-28],eax
 004B08E1    mov         eax,dword ptr [ebp-28]
 004B08E4    test        byte ptr [eax],1
>004B08E7    je          004B0AA8
 004B08ED    mov         eax,dword ptr [ebp-24]
 004B08F0    mov         edx,dword ptr [eax+0C]
 004B08F3    mov         eax,dword ptr [ebp-4]
 004B08F6    call        004B3DF0
 004B08FB    mov         dword ptr [ebp-0C],eax
 004B08FE    mov         eax,dword ptr [ebp-0C]
 004B0901    mov         eax,dword ptr [eax+18]
 004B0904    mov         edx,dword ptr [ebp-28]
 004B0907    cmp         eax,dword ptr [edx+4]
>004B090A    jl          004B091A
 004B090C    mov         eax,dword ptr [ebp-0C]
 004B090F    mov         eax,dword ptr [eax+18]
 004B0912    mov         edx,dword ptr [ebp-28]
 004B0915    mov         dword ptr [edx+4],eax
>004B0918    jmp         004B093D
 004B091A    mov         eax,dword ptr [ebp-0C]
 004B091D    cmp         dword ptr [eax+14],0
>004B0921    jle         004B093D
 004B0923    mov         eax,dword ptr [ebp-0C]
 004B0926    mov         eax,dword ptr [eax+14]
 004B0929    mov         edx,dword ptr [ebp-28]
 004B092C    cmp         eax,dword ptr [edx+4]
>004B092F    jg          004B093D
 004B0931    mov         eax,dword ptr [ebp-0C]
 004B0934    mov         eax,dword ptr [eax+14]
 004B0937    mov         edx,dword ptr [ebp-28]
 004B093A    mov         dword ptr [edx+4],eax
 004B093D    mov         eax,dword ptr [ebp-28]
 004B0940    mov         edx,dword ptr [eax+4]
 004B0943    mov         eax,dword ptr [ebp-0C]
 004B0946    call        TListColumn.SetWidth
>004B094B    jmp         004B0AA8
 004B0950    mov         eax,dword ptr [ebp-4]
 004B0953    mov         byte ptr [eax+295],1;TCustomListView.FUpdatingColumnOrder:Boolean
>004B095A    jmp         004B0AA8
 004B095F    mov         eax,dword ptr [ebp-8]
 004B0962    mov         eax,dword ptr [eax+8]
 004B0965    mov         dword ptr [ebp-2C],eax
 004B0968    mov         eax,dword ptr [ebp-2C]
 004B096B    mov         edx,dword ptr [eax+0C]
 004B096E    mov         eax,dword ptr [ebp-4]
 004B0971    call        004B3DF0
 004B0976    mov         dword ptr [ebp-0C],eax
 004B0979    mov         eax,dword ptr [ebp-4]
 004B097C    call        TWinControl.GetHandle
 004B0981    mov         edx,dword ptr [ebp-2C]
 004B0984    mov         edx,dword ptr [edx+0C]
 004B0987    call        0042F790
 004B098C    mov         edx,eax
 004B098E    mov         eax,dword ptr [ebp-0C]
 004B0991    call        TListColumn.SetWidth
 004B0996    xor         ecx,ecx
 004B0998    xor         edx,edx
 004B099A    mov         eax,dword ptr [ebp-4]
 004B099D    mov         ebx,dword ptr [eax]
 004B099F    call        dword ptr [ebx+124];TCustomListView.sub_004B35B8
 004B09A5    test        al,al
>004B09A7    je          004B0AA8
 004B09AD    mov         eax,dword ptr [ebp-4]
 004B09B0    mov         edx,dword ptr [eax]
 004B09B2    call        dword ptr [edx+7C];TCustomListView.sub_004D3648
>004B09B5    jmp         004B0AA8
 004B09BA    call        user32.GetMessagePos
 004B09BF    call        004080DC
 004B09C4    movzx       eax,ax
 004B09C7    push        eax
 004B09C8    call        user32.GetMessagePos
 004B09CD    movzx       eax,ax
 004B09D0    lea         ecx,[ebp-14]
 004B09D3    pop         edx
 004B09D4    call        00406EBC
 004B09D9    lea         ecx,[ebp-44]
 004B09DC    lea         edx,[ebp-14]
 004B09DF    mov         eax,dword ptr [ebp-4]
 004B09E2    call        TControl.ScreenToClient
 004B09E7    push        dword ptr [ebp-40]
 004B09EA    push        dword ptr [ebp-44]
 004B09ED    mov         eax,dword ptr [ebp-4]
 004B09F0    call        TWinControl.GetHandle
 004B09F5    push        eax
 004B09F6    call        user32.ChildWindowFromPoint
 004B09FB    mov         dword ptr [ebp-18],eax
 004B09FE    cmp         dword ptr [ebp-18],0
>004B0A02    je          004B0AA8
 004B0A08    mov         eax,dword ptr [ebp-4]
 004B0A0B    call        TWinControl.GetHandle
 004B0A10    cmp         eax,dword ptr [ebp-18]
>004B0A13    je          004B0AA8
 004B0A19    lea         eax,[ebp-1C]
 004B0A1C    mov         edx,50
 004B0A21    call        @LStrSetLength
 004B0A26    mov         eax,dword ptr [ebp-1C]
 004B0A29    call        @DynArrayLength
 004B0A2E    push        eax
 004B0A2F    mov         eax,dword ptr [ebp-1C]
 004B0A32    call        @LStrToPChar
 004B0A37    push        eax
 004B0A38    mov         eax,dword ptr [ebp-18]
 004B0A3B    push        eax
 004B0A3C    call        user32.GetClassNameA
 004B0A41    mov         edx,eax
 004B0A43    lea         eax,[ebp-1C]
 004B0A46    call        @LStrSetLength
 004B0A4B    mov         eax,dword ptr [ebp-1C]
 004B0A4E    mov         edx,4B0AD4;'SysHeader32'
 004B0A53    call        @LStrCmp
>004B0A58    jne         004B0AA8
 004B0A5A    lea         ecx,[ebp-44]
 004B0A5D    lea         edx,[ebp-14]
 004B0A60    mov         eax,dword ptr [ebp-4]
 004B0A63    call        TControl.ScreenToClient
 004B0A68    mov         eax,dword ptr [ebp-44]
 004B0A6B    mov         dword ptr [ebp-3C],eax
 004B0A6E    mov         eax,dword ptr [ebp-40]
 004B0A71    mov         dword ptr [ebp-38],eax
 004B0A74    lea         eax,[ebp-3C]
 004B0A77    push        eax
 004B0A78    push        1
 004B0A7A    push        1206
 004B0A7F    mov         eax,dword ptr [ebp-18]
 004B0A82    push        eax
 004B0A83    call        user32.SendMessageA
 004B0A88    test        eax,eax
>004B0A8A    jl          004B0AA8
 004B0A8C    mov         edx,dword ptr [ebp-30]
 004B0A8F    mov         eax,dword ptr [ebp-4]
 004B0A92    call        004B3DF0
 004B0A97    mov         edx,eax
 004B0A99    lea         ecx,[ebp-3C]
 004B0A9C    mov         eax,dword ptr [ebp-4]
 004B0A9F    mov         si,0FFAF
 004B0AA3    call        @CallDynaInst;TCustomListView.sub_004B20EC
 004B0AA8    xor         eax,eax
 004B0AAA    pop         edx
 004B0AAB    pop         ecx
 004B0AAC    pop         ecx
 004B0AAD    mov         dword ptr fs:[eax],edx
 004B0AB0    push        4B0AC5
 004B0AB5    lea         eax,[ebp-1C]
 004B0AB8    call        @LStrClr
 004B0ABD    ret
>004B0ABE    jmp         @HandleFinally
>004B0AC3    jmp         004B0AB5
 004B0AC5    pop         esi
 004B0AC6    pop         ebx
 004B0AC7    mov         esp,ebp
 004B0AC9    pop         ebp
 004B0ACA    ret
end;*}

//004B0AE0
{*function sub_004B0AE0(?:TCustomListView):?;
begin
 004B0AE0    push        ebp
 004B0AE1    mov         ebp,esp
 004B0AE3    add         esp,0FFFFFFF8
 004B0AE6    mov         dword ptr [ebp-4],eax
 004B0AE9    mov         eax,dword ptr [ebp-4]
 004B0AEC    cmp         byte ptr [eax+215],3;TCustomListView.FViewStyle:TViewStyle
 004B0AF3    sete        byte ptr [ebp-5]
 004B0AF7    mov         al,byte ptr [ebp-5]
 004B0AFA    pop         ecx
 004B0AFB    pop         ecx
 004B0AFC    pop         ebp
 004B0AFD    ret
end;*}

//004B0B00
{*function sub_004B0B00(?:TCustomListView):?;
begin
 004B0B00    push        ebp
 004B0B01    mov         ebp,esp
 004B0B03    add         esp,0FFFFFFF8
 004B0B06    mov         dword ptr [ebp-4],eax
 004B0B09    mov         eax,dword ptr [ebp-4]
 004B0B0C    cmp         dword ptr [eax+264],0;TCustomListView.FHeaderHandle:HWND
 004B0B13    setne       byte ptr [ebp-5]
 004B0B17    mov         al,byte ptr [ebp-5]
 004B0B1A    pop         ecx
 004B0B1B    pop         ecx
 004B0B1C    pop         ebp
 004B0B1D    ret
end;*}

//004B0B20
{*procedure TCustomListView.CMFontChanged(?:?);
begin
 004B0B20    push        ebp
 004B0B21    mov         ebp,esp
 004B0B23    add         esp,0FFFFFFF8
 004B0B26    mov         dword ptr [ebp-8],edx
 004B0B29    mov         dword ptr [ebp-4],eax
 004B0B2C    mov         edx,dword ptr [ebp-8]
 004B0B2F    mov         eax,dword ptr [ebp-4]
 004B0B32    call        TWinControl.CMFontChanged
 004B0B37    mov         eax,dword ptr [ebp-4]
 004B0B3A    call        TWinControl.HandleAllocated
 004B0B3F    test        al,al
>004B0B41    je          004B0B73
 004B0B43    mov         eax,dword ptr [ebp-4]
 004B0B46    mov         eax,dword ptr [eax+68];TCustomListView.FFont:TFont
 004B0B49    mov         edx,dword ptr [eax+18];TFont.Color:TColor
 004B0B4C    mov         eax,dword ptr [ebp-4]
 004B0B4F    call        004B0720
 004B0B54    mov         eax,dword ptr [ebp-4]
 004B0B57    call        004B0B00
 004B0B5C    test        al,al
>004B0B5E    je          004B0B73
 004B0B60    push        0FF
 004B0B62    push        0
 004B0B64    mov         eax,dword ptr [ebp-4]
 004B0B67    mov         eax,dword ptr [eax+264];TCustomListView.FHeaderHandle:HWND
 004B0B6D    push        eax
 004B0B6E    call        user32.InvalidateRect
 004B0B73    pop         ecx
 004B0B74    pop         ecx
 004B0B75    pop         ebp
 004B0B76    ret
end;*}

//004B0B78
procedure TListView.SetHideSelection(Value:Boolean);
begin
{*
 004B0B78    push        ebp
 004B0B79    mov         ebp,esp
 004B0B7B    add         esp,0FFFFFFF8
 004B0B7E    mov         byte ptr [ebp-5],dl
 004B0B81    mov         dword ptr [ebp-4],eax
 004B0B84    mov         al,byte ptr [ebp-5]
 004B0B87    mov         edx,dword ptr [ebp-4]
 004B0B8A    cmp         al,byte ptr [edx+238];TListView.FHideSelection:Boolean
>004B0B90    je          004B0BA6
 004B0B92    mov         al,byte ptr [ebp-5]
 004B0B95    mov         edx,dword ptr [ebp-4]
 004B0B98    mov         byte ptr [edx+238],al;TListView.FHideSelection:Boolean
 004B0B9E    mov         eax,dword ptr [ebp-4]
 004B0BA1    call        TWinControl.RecreateWnd
 004B0BA6    pop         ecx
 004B0BA7    pop         ecx
 004B0BA8    pop         ebp
 004B0BA9    ret
*}
end;

//004B0BAC
procedure TListView.SetReadOnly(Value:Boolean);
begin
{*
 004B0BAC    push        ebp
 004B0BAD    mov         ebp,esp
 004B0BAF    add         esp,0FFFFFFF8
 004B0BB2    mov         byte ptr [ebp-5],dl
 004B0BB5    mov         dword ptr [ebp-4],eax
 004B0BB8    mov         al,byte ptr [ebp-5]
 004B0BBB    mov         edx,dword ptr [ebp-4]
 004B0BBE    cmp         al,byte ptr [edx+216];TListView.FReadOnly:Boolean
>004B0BC4    je          004B0BDA
 004B0BC6    mov         al,byte ptr [ebp-5]
 004B0BC9    mov         edx,dword ptr [ebp-4]
 004B0BCC    mov         byte ptr [edx+216],al;TListView.FReadOnly:Boolean
 004B0BD2    mov         eax,dword ptr [ebp-4]
 004B0BD5    call        TWinControl.RecreateWnd
 004B0BDA    pop         ecx
 004B0BDB    pop         ecx
 004B0BDC    pop         ebp
 004B0BDD    ret
*}
end;

//004B0BE0
procedure TListView.SetIconOptions(Value:TIconOptions);
begin
{*
 004B0BE0    push        ebp
 004B0BE1    mov         ebp,esp
 004B0BE3    add         esp,0FFFFFFF4
 004B0BE6    mov         dword ptr [ebp-8],edx
 004B0BE9    mov         dword ptr [ebp-4],eax
 004B0BEC    mov         eax,dword ptr [ebp-4]
 004B0BEF    mov         eax,dword ptr [eax+234];TListView.FIconOptions:TIconOptions
 004B0BF5    mov         dword ptr [ebp-0C],eax
 004B0BF8    mov         eax,dword ptr [ebp-8]
 004B0BFB    mov         dl,byte ptr [eax+8];TIconOptions.Arrangement:TIconArrangement
 004B0BFE    mov         eax,dword ptr [ebp-0C]
 004B0C01    call        TIconOptions.SetArrangement
 004B0C06    mov         eax,dword ptr [ebp-8]
 004B0C09    mov         dl,byte ptr [eax+9];TIconOptions.AutoArrange:Boolean
 004B0C0C    mov         eax,dword ptr [ebp-0C]
 004B0C0F    call        TIconOptions.SetAutoArrange
 004B0C14    mov         eax,dword ptr [ebp-8]
 004B0C17    mov         dl,byte ptr [eax+0A];TIconOptions.WrapText:Boolean
 004B0C1A    mov         eax,dword ptr [ebp-0C]
 004B0C1D    call        TIconOptions.SetWrapText
 004B0C22    mov         esp,ebp
 004B0C24    pop         ebp
 004B0C25    ret
*}
end;

//004B0C28
procedure TListView.SetViewStyle(Value:TViewStyle);
begin
{*
 004B0C28    push        ebp
 004B0C29    mov         ebp,esp
 004B0C2B    add         esp,0FFFFFFF4
 004B0C2E    mov         byte ptr [ebp-5],dl
 004B0C31    mov         dword ptr [ebp-4],eax
 004B0C34    mov         al,byte ptr [ebp-5]
 004B0C37    mov         edx,dword ptr [ebp-4]
 004B0C3A    cmp         al,byte ptr [edx+215];TListView.FViewStyle:TViewStyle
>004B0C40    je          004B0CD7
 004B0C46    mov         al,byte ptr [ebp-5]
 004B0C49    mov         edx,dword ptr [ebp-4]
 004B0C4C    mov         byte ptr [edx+215],al;TListView.FViewStyle:TViewStyle
 004B0C52    mov         eax,dword ptr [ebp-4]
 004B0C55    call        TWinControl.HandleAllocated
 004B0C5A    test        al,al
>004B0C5C    je          004B0CD7
 004B0C5E    push        0F0
 004B0C60    mov         eax,dword ptr [ebp-4]
 004B0C63    call        TWinControl.GetHandle
 004B0C68    push        eax
 004B0C69    call        user32.GetWindowLongA
 004B0C6E    mov         dword ptr [ebp-0C],eax
 004B0C71    and         dword ptr [ebp-0C],0FFFFFFFC
 004B0C75    mov         eax,dword ptr [ebp-4]
 004B0C78    movzx       eax,byte ptr [eax+215];TListView.FViewStyle:TViewStyle
 004B0C7F    mov         eax,dword ptr [eax*4+5414A8]
 004B0C86    or          dword ptr [ebp-0C],eax
 004B0C89    mov         eax,dword ptr [ebp-0C]
 004B0C8C    push        eax
 004B0C8D    push        0F0
 004B0C8F    mov         eax,dword ptr [ebp-4]
 004B0C92    call        TWinControl.GetHandle
 004B0C97    push        eax
 004B0C98    call        user32.SetWindowLongA
 004B0C9D    mov         eax,dword ptr [ebp-4]
 004B0CA0    call        004B2EE0
 004B0CA5    mov         eax,dword ptr [ebp-4]
 004B0CA8    mov         al,byte ptr [eax+215];TListView.FViewStyle:TViewStyle
 004B0CAE    sub         al,2
>004B0CB0    jae         004B0CD7
 004B0CB2    mov         eax,dword ptr [ebp-4]
 004B0CB5    mov         eax,dword ptr [eax+234];TListView.FIconOptions:TIconOptions
 004B0CBB    cmp         byte ptr [eax+8],0;TIconOptions.Arrangement:TIconArrangement
>004B0CBF    jne         004B0CCD
 004B0CC1    mov         dl,3
 004B0CC3    mov         eax,dword ptr [ebp-4]
 004B0CC6    call        004B2EB4
>004B0CCB    jmp         004B0CD7
 004B0CCD    mov         dl,1
 004B0CCF    mov         eax,dword ptr [ebp-4]
 004B0CD2    call        004B2EB4
 004B0CD7    mov         esp,ebp
 004B0CD9    pop         ebp
 004B0CDA    ret
*}
end;

//004B0CDC
{*procedure TCustomListView.WMParentNotify(?:?);
begin
 004B0CDC    push        ebp
 004B0CDD    mov         ebp,esp
 004B0CDF    add         esp,0FFFFFFF8
 004B0CE2    mov         dword ptr [ebp-8],edx
 004B0CE5    mov         dword ptr [ebp-4],eax
 004B0CE8    mov         eax,dword ptr [ebp-8]
 004B0CEB    cmp         word ptr [eax+4],1
>004B0CF0    jne         004B0D42
 004B0CF2    mov         eax,dword ptr [ebp-4]
 004B0CF5    cmp         dword ptr [eax+264],0;TCustomListView.FHeaderHandle:HWND
>004B0CFC    jne         004B0D42
 004B0CFE    mov         eax,dword ptr [ebp-8]
 004B0D01    mov         eax,dword ptr [eax+8]
 004B0D04    mov         edx,dword ptr [ebp-4]
 004B0D07    mov         dword ptr [edx+264],eax;TCustomListView.FHeaderHandle:HWND
 004B0D0D    push        0FC
 004B0D0F    mov         eax,dword ptr [ebp-4]
 004B0D12    mov         eax,dword ptr [eax+264];TCustomListView.FHeaderHandle:HWND
 004B0D18    push        eax
 004B0D19    call        user32.GetWindowLongA
 004B0D1E    mov         edx,dword ptr [ebp-4]
 004B0D21    mov         dword ptr [edx+260],eax;TCustomListView.FDefHeaderProc:Pointer
 004B0D27    mov         eax,dword ptr [ebp-4]
 004B0D2A    mov         eax,dword ptr [eax+25C];TCustomListView.FHeaderInstance:Pointer
 004B0D30    push        eax
 004B0D31    push        0FC
 004B0D33    mov         eax,dword ptr [ebp-4]
 004B0D36    mov         eax,dword ptr [eax+264];TCustomListView.FHeaderHandle:HWND
 004B0D3C    push        eax
 004B0D3D    call        user32.SetWindowLongA
 004B0D42    mov         edx,dword ptr [ebp-8]
 004B0D45    mov         eax,dword ptr [ebp-4]
 004B0D48    call        TWinControl.WMParentNotify
 004B0D4D    pop         ecx
 004B0D4E    pop         ecx
 004B0D4F    pop         ebp
 004B0D50    ret
end;*}

//004B0D54
{*function sub_004B0D54:?;
begin
 004B0D54    push        ebp
 004B0D55    mov         ebp,esp
 004B0D57    add         esp,0FFFFFFF8
 004B0D5A    mov         dword ptr [ebp-4],eax
 004B0D5D    mov         dword ptr [ebp-8],0FFFFFFFF
 004B0D64    mov         eax,dword ptr [ebp-4]
 004B0D67    call        004B2BE8
 004B0D6C    test        eax,eax
>004B0D6E    je          004B0D80
 004B0D70    mov         eax,dword ptr [ebp-4]
 004B0D73    call        004B2BE8
 004B0D78    call        004AE4CC
 004B0D7D    mov         dword ptr [ebp-8],eax
 004B0D80    mov         eax,dword ptr [ebp-8]
 004B0D83    pop         ecx
 004B0D84    pop         ecx
 004B0D85    pop         ebp
 004B0D86    ret
end;*}

//004B0D88
{*function sub_004B0D88(?:?; ?:?):?;
begin
 004B0D88    push        ebp
 004B0D89    mov         ebp,esp
 004B0D8B    add         esp,0FFFFFFF4
 004B0D8E    push        ebx
 004B0D8F    mov         byte ptr [ebp-0A],cl
 004B0D92    mov         dword ptr [ebp-8],edx
 004B0D95    mov         dword ptr [ebp-4],eax
 004B0D98    mov         eax,dword ptr [ebp-4]
 004B0D9B    cmp         word ptr [eax+30A],0;TCustomListView.?f30A:word
>004B0DA3    je          004B0DC0
 004B0DA5    mov         ebx,dword ptr [ebp-4]
 004B0DA8    mov         ecx,dword ptr [ebp-8]
 004B0DAB    mov         edx,dword ptr [ebp-4]
 004B0DAE    mov         eax,dword ptr [ebx+30C];TCustomListView.?f30C:dword
 004B0DB4    call        dword ptr [ebx+308];TCustomListView.FOnData
 004B0DBA    mov         byte ptr [ebp-9],1
>004B0DBE    jmp         004B0DC4
 004B0DC0    mov         byte ptr [ebp-9],0
 004B0DC4    mov         al,byte ptr [ebp-9]
 004B0DC7    pop         ebx
 004B0DC8    mov         esp,ebp
 004B0DCA    pop         ebp
 004B0DCB    ret
end;*}

//004B0DCC
{*function sub_004B0DCC(?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?):?;
begin
 004B0DCC    push        ebp
 004B0DCD    mov         ebp,esp
 004B0DCF    add         esp,0FFFFFFF0
 004B0DD2    push        ebx
 004B0DD3    mov         dword ptr [ebp-0C],ecx
 004B0DD6    mov         byte ptr [ebp-5],dl
 004B0DD9    mov         dword ptr [ebp-4],eax
 004B0DDC    mov         dword ptr [ebp-10],0FFFFFFFF
 004B0DE3    mov         eax,dword ptr [ebp-4]
 004B0DE6    cmp         word ptr [eax+312],0;TCustomListView.?f312:word
>004B0DEE    je          004B0E21
 004B0DF0    mov         eax,dword ptr [ebp-0C]
 004B0DF3    push        eax
 004B0DF4    mov         eax,dword ptr [ebp+18]
 004B0DF7    push        eax
 004B0DF8    mov         eax,dword ptr [ebp+14]
 004B0DFB    push        eax
 004B0DFC    mov         eax,dword ptr [ebp+10]
 004B0DFF    push        eax
 004B0E00    mov         al,byte ptr [ebp+0C]
 004B0E03    push        eax
 004B0E04    mov         al,byte ptr [ebp+8]
 004B0E07    push        eax
 004B0E08    lea         eax,[ebp-10]
 004B0E0B    push        eax
 004B0E0C    mov         ebx,dword ptr [ebp-4]
 004B0E0F    mov         cl,byte ptr [ebp-5]
 004B0E12    mov         edx,dword ptr [ebp-4]
 004B0E15    mov         eax,dword ptr [ebx+314];TCustomListView.?f314:dword
 004B0E1B    call        dword ptr [ebx+310];TCustomListView.FOnDataFind
 004B0E21    mov         eax,dword ptr [ebp-10]
 004B0E24    pop         ebx
 004B0E25    mov         esp,ebp
 004B0E27    pop         ebp
 004B0E28    ret         14
end;*}

//004B0E2C
{*function sub_004B0E2C(?:?; ?:?):?;
begin
 004B0E2C    push        ebp
 004B0E2D    mov         ebp,esp
 004B0E2F    add         esp,0FFFFFFF0
 004B0E32    push        ebx
 004B0E33    mov         dword ptr [ebp-0C],ecx
 004B0E36    mov         dword ptr [ebp-8],edx
 004B0E39    mov         dword ptr [ebp-4],eax
 004B0E3C    mov         eax,dword ptr [ebp-4]
 004B0E3F    cmp         word ptr [eax+31A],0;TCustomListView.?f31A:word
>004B0E47    je          004B0E68
 004B0E49    mov         eax,dword ptr [ebp-0C]
 004B0E4C    push        eax
 004B0E4D    mov         ebx,dword ptr [ebp-4]
 004B0E50    mov         ecx,dword ptr [ebp-8]
 004B0E53    mov         edx,dword ptr [ebp-4]
 004B0E56    mov         eax,dword ptr [ebx+31C];TCustomListView.?f31C:dword
 004B0E5C    call        dword ptr [ebx+318];TCustomListView.FOnDataHint
 004B0E62    mov         byte ptr [ebp-0D],1
>004B0E66    jmp         004B0E6C
 004B0E68    mov         byte ptr [ebp-0D],0
 004B0E6C    mov         al,byte ptr [ebp-0D]
 004B0E6F    pop         ebx
 004B0E70    mov         esp,ebp
 004B0E72    pop         ebp
 004B0E73    ret
end;*}

//004B0E74
{*function sub_004B0E74(?:?; ?:?; ?:?; ?:?):?;
begin
 004B0E74    push        ebp
 004B0E75    mov         ebp,esp
 004B0E77    add         esp,0FFFFFFF0
 004B0E7A    push        ebx
 004B0E7B    mov         dword ptr [ebp-0C],ecx
 004B0E7E    mov         dword ptr [ebp-8],edx
 004B0E81    mov         dword ptr [ebp-4],eax
 004B0E84    mov         eax,dword ptr [ebp-4]
 004B0E87    cmp         word ptr [eax+322],0;TCustomListView.?f322:word
>004B0E8F    je          004B0EB8
 004B0E91    mov         eax,dword ptr [ebp-0C]
 004B0E94    push        eax
 004B0E95    mov         al,byte ptr [ebp+0C]
 004B0E98    push        eax
 004B0E99    mov         al,byte ptr [ebp+8]
 004B0E9C    push        eax
 004B0E9D    mov         ebx,dword ptr [ebp-4]
 004B0EA0    mov         ecx,dword ptr [ebp-8]
 004B0EA3    mov         edx,dword ptr [ebp-4]
 004B0EA6    mov         eax,dword ptr [ebx+324];TCustomListView.?f324:dword
 004B0EAC    call        dword ptr [ebx+320];TCustomListView.FOnDataStateChange
 004B0EB2    mov         byte ptr [ebp-0D],1
>004B0EB6    jmp         004B0EBC
 004B0EB8    mov         byte ptr [ebp-0D],0
 004B0EBC    mov         al,byte ptr [ebp-0D]
 004B0EBF    pop         ebx
 004B0EC0    mov         esp,ebp
 004B0EC2    pop         ebp
 004B0EC3    ret         8
end;*}

//004B0EC8
{*function sub_004B0EC8:?;
begin
 004B0EC8    push        ebp
 004B0EC9    mov         ebp,esp
 004B0ECB    add         esp,0FFFFFFF4
 004B0ECE    push        ebx
 004B0ECF    mov         dword ptr [ebp-4],eax
 004B0ED2    mov         eax,[004A5210];TListItem
 004B0ED7    mov         dword ptr [ebp-0C],eax
 004B0EDA    mov         eax,dword ptr [ebp-4]
 004B0EDD    cmp         word ptr [eax+372],0;TCustomListView.?f372:word
>004B0EE5    je          004B0EFC
 004B0EE7    lea         ecx,[ebp-0C]
 004B0EEA    mov         ebx,dword ptr [ebp-4]
 004B0EED    mov         edx,dword ptr [ebp-4]
 004B0EF0    mov         eax,dword ptr [ebx+374];TCustomListView.?f374:dword
 004B0EF6    call        dword ptr [ebx+370];TCustomListView.FOnCreateItemClass
 004B0EFC    mov         eax,dword ptr [ebp-4]
 004B0EFF    mov         ecx,dword ptr [eax+22C];TCustomListView.FListItems:TListItems
 004B0F05    mov         dl,1
 004B0F07    mov         eax,dword ptr [ebp-0C]
 004B0F0A    call        TListItem.Create;TListItem.Create
 004B0F0F    mov         dword ptr [ebp-8],eax
 004B0F12    mov         eax,dword ptr [ebp-8]
 004B0F15    pop         ebx
 004B0F16    mov         esp,ebp
 004B0F18    pop         ebp
 004B0F19    ret
end;*}

//004B0F1C
{*function sub_004B0F1C:?;
begin
 004B0F1C    push        ebp
 004B0F1D    mov         ebp,esp
 004B0F1F    add         esp,0FFFFFFF8
 004B0F22    mov         dword ptr [ebp-4],eax
 004B0F25    mov         ecx,dword ptr [ebp-4]
 004B0F28    mov         dl,1
 004B0F2A    mov         eax,[004A52A8];TListItems
 004B0F2F    call        TListItems.Create;TListItems.Create
 004B0F34    mov         dword ptr [ebp-8],eax
 004B0F37    mov         eax,dword ptr [ebp-8]
 004B0F3A    pop         ecx
 004B0F3B    pop         ecx
 004B0F3C    pop         ebp
 004B0F3D    ret
end;*}

//004B0F40
{*function sub_004B0F40(?:?):?;
begin
 004B0F40    push        ebp
 004B0F41    mov         ebp,esp
 004B0F43    add         esp,0FFFFFFF8
 004B0F46    mov         dword ptr [ebp-4],eax
 004B0F49    mov         al,[004B0F8C];0x0 gvar_004B0F8C
 004B0F4E    mov         byte ptr [ebp-5],al
 004B0F51    test        byte ptr [ebp-4],1
>004B0F55    je          004B0F5B
 004B0F57    or          byte ptr [ebp-5],1
 004B0F5B    test        byte ptr [ebp-4],2
>004B0F5F    je          004B0F65
 004B0F61    or          byte ptr [ebp-5],2
 004B0F65    test        byte ptr [ebp-4],4
>004B0F69    je          004B0F6F
 004B0F6B    or          byte ptr [ebp-5],4
 004B0F6F    test        byte ptr [ebp-4],8
>004B0F73    je          004B0F79
 004B0F75    or          byte ptr [ebp-5],8
 004B0F79    test        byte ptr [ebp-4],10
>004B0F7D    je          004B0F83
 004B0F7F    or          byte ptr [ebp-5],10
 004B0F83    mov         al,byte ptr [ebp-5]
 004B0F86    pop         ecx
 004B0F87    pop         ecx
 004B0F88    pop         ebp
 004B0F89    ret
end;*}

//004B0F90
{*function sub_004B0F90(?:TCustomListView; ?:Byte):?;
begin
 004B0F90    push        ebp
 004B0F91    mov         ebp,esp
 004B0F93    add         esp,0FFFFFFC8
 004B0F96    push        ebx
 004B0F97    push        esi
 004B0F98    push        edi
 004B0F99    xor         ecx,ecx
 004B0F9B    mov         dword ptr [ebp-0C],ecx
 004B0F9E    mov         esi,edx
 004B0FA0    lea         edi,[ebp-35]
 004B0FA3    mov         ecx,0A
 004B0FA8    rep movs    dword ptr [edi],dword ptr [esi]
 004B0FAA    mov         dword ptr [ebp-4],eax
 004B0FAD    xor         eax,eax
 004B0FAF    push        ebp
 004B0FB0    push        4B10EE
 004B0FB5    push        dword ptr fs:[eax]
 004B0FB8    mov         dword ptr fs:[eax],esp
 004B0FBB    test        byte ptr [ebp-35],4
>004B0FBF    je          004B0FCC
 004B0FC1    mov         eax,dword ptr [ebp-15]
 004B0FC4    mov         dword ptr [ebp-8],eax
>004B0FC7    jmp         004B10D8
 004B0FCC    mov         eax,dword ptr [ebp-4]
 004B0FCF    cmp         byte ptr [eax+244],0
>004B0FD6    je          004B10C4
 004B0FDC    cmp         dword ptr [ebp-31],0
>004B0FE0    jge         004B0FEC
 004B0FE2    xor         eax,eax
 004B0FE4    mov         dword ptr [ebp-8],eax
>004B0FE7    jmp         004B10D8
 004B0FEC    cmp         dword ptr [ebp-2D],0
>004B0FF0    jne         004B10B6
 004B0FF6    push        ebp
 004B0FF7    mov         eax,dword ptr [ebp-35]
 004B0FFA    call        004B0F40
 004B0FFF    pop         ecx
 004B1000    mov         byte ptr [ebp-0D],al
 004B1003    mov         eax,dword ptr [ebp-4]
 004B1006    mov         eax,dword ptr [eax+28C]
 004B100C    mov         edx,dword ptr [ebp-31]
 004B100F    mov         dword ptr [eax+18],edx
 004B1012    mov         eax,dword ptr [ebp-4]
 004B1015    mov         eax,dword ptr [eax+28C]
 004B101B    mov         edx,dword ptr [ebp-15]
 004B101E    mov         dword ptr [eax+0C],edx
 004B1021    mov         eax,dword ptr [ebp-4]
 004B1024    mov         eax,dword ptr [eax+28C]
 004B102A    mov         eax,dword ptr [eax+8]
 004B102D    mov         edx,dword ptr [eax]
 004B102F    call        dword ptr [edx+44]
 004B1032    test        byte ptr [ebp-0D],1
>004B1036    je          004B104B
 004B1038    cmp         dword ptr [ebp-21],0
>004B103C    je          004B104B
 004B103E    lea         edx,[ebp-0C]
 004B1041    mov         eax,dword ptr [ebp-21]
 004B1044    call        00467470
>004B1049    jmp         004B1053
 004B104B    lea         eax,[ebp-0C]
 004B104E    call        @LStrClr
 004B1053    mov         eax,dword ptr [ebp-4]
 004B1056    mov         eax,dword ptr [eax+28C]
 004B105C    add         eax,24
 004B105F    mov         edx,dword ptr [ebp-0C]
 004B1062    call        @LStrAsg
 004B1067    test        byte ptr [ebp-0D],2
>004B106B    je          004B107C
 004B106D    mov         eax,dword ptr [ebp-4]
 004B1070    mov         eax,dword ptr [eax+28C]
 004B1076    mov         edx,dword ptr [ebp-19]
 004B1079    mov         dword ptr [eax+10],edx
 004B107C    test        byte ptr [ebp-0D],10
>004B1080    je          004B1091
 004B1082    mov         eax,dword ptr [ebp-4]
 004B1085    mov         eax,dword ptr [eax+28C]
 004B108B    mov         edx,dword ptr [ebp-11]
 004B108E    mov         dword ptr [eax+14],edx
 004B1091    mov         cl,byte ptr [ebp-0D]
 004B1094    mov         eax,dword ptr [ebp-4]
 004B1097    mov         edx,dword ptr [eax+28C]
 004B109D    mov         eax,dword ptr [ebp-4]
 004B10A0    mov         ebx,dword ptr [eax]
 004B10A2    call        dword ptr [ebx+114]
 004B10A8    mov         eax,dword ptr [ebp-4]
 004B10AB    mov         eax,dword ptr [eax+28C]
 004B10B1    mov         dword ptr [ebp-8],eax
>004B10B4    jmp         004B10D8
 004B10B6    mov         eax,dword ptr [ebp-4]
 004B10B9    mov         eax,dword ptr [eax+28C]
 004B10BF    mov         dword ptr [ebp-8],eax
>004B10C2    jmp         004B10D8
 004B10C4    mov         edx,dword ptr [ebp-31]
 004B10C7    mov         eax,dword ptr [ebp-4]
 004B10CA    mov         eax,dword ptr [eax+22C]
 004B10D0    call        004AE758
 004B10D5    mov         dword ptr [ebp-8],eax
 004B10D8    xor         eax,eax
 004B10DA    pop         edx
 004B10DB    pop         ecx
 004B10DC    pop         ecx
 004B10DD    mov         dword ptr fs:[eax],edx
 004B10E0    push        4B10F5
 004B10E5    lea         eax,[ebp-0C]
 004B10E8    call        @LStrClr
 004B10ED    ret
>004B10EE    jmp         @HandleFinally
>004B10F3    jmp         004B10E5
 004B10F5    mov         eax,dword ptr [ebp-8]
 004B10F8    pop         edi
 004B10F9    pop         esi
 004B10FA    pop         ebx
 004B10FB    mov         esp,ebp
 004B10FD    pop         ebp
 004B10FE    ret
end;*}

//004B1100
{*function sub_004B1100:?;
begin
 004B1100    push        ebp
 004B1101    mov         ebp,esp
 004B1103    add         esp,0FFFFFFF8
 004B1106    mov         dword ptr [ebp-4],eax
 004B1109    mov         eax,dword ptr [ebp-4]
 004B110C    call        TWinControl.GetHandle
 004B1111    call        0042FAA8
 004B1116    mov         dword ptr [ebp-8],eax
 004B1119    mov         eax,dword ptr [ebp-8]
 004B111C    pop         ecx
 004B111D    pop         ecx
 004B111E    pop         ebp
 004B111F    ret
end;*}

//004B1120
{*function sub_004B1120(?:?):?;
begin
 004B1120    push        ebp
 004B1121    mov         ebp,esp
 004B1123    add         esp,0FFFFFFF8
 004B1126    mov         dword ptr [ebp-4],eax
 004B1129    test        byte ptr [ebp-4],1
>004B112D    je          004B1135
 004B112F    mov         byte ptr [ebp-5],0
>004B1133    jmp         004B115D
 004B1135    test        byte ptr [ebp-4],8
>004B1139    je          004B1141
 004B113B    mov         byte ptr [ebp-5],1
>004B113F    jmp         004B115D
 004B1141    test        byte ptr [ebp-4],2
>004B1145    je          004B114D
 004B1147    mov         byte ptr [ebp-5],2
>004B114B    jmp         004B115D
 004B114D    test        byte ptr [ebp-4],40
>004B1151    je          004B1159
 004B1153    mov         byte ptr [ebp-5],3
>004B1157    jmp         004B115D
 004B1159    mov         byte ptr [ebp-5],0
 004B115D    mov         al,byte ptr [ebp-5]
 004B1160    pop         ecx
 004B1161    pop         ecx
 004B1162    pop         ebp
 004B1163    ret
end;*}

//004B1164
{*function sub_004B1164(?:?):?;
begin
 004B1164    push        ebp
 004B1165    mov         ebp,esp
 004B1167    add         esp,0FFFFFFF8
 004B116A    mov         dword ptr [ebp-4],eax
 004B116D    mov         al,[004B11B0];0x0 gvar_004B11B0
 004B1172    mov         byte ptr [ebp-5],al
 004B1175    test        byte ptr [ebp-4],20
>004B1179    je          004B117F
 004B117B    or          byte ptr [ebp-5],20
 004B117F    test        byte ptr [ebp-4],4
>004B1183    je          004B1189
 004B1185    or          byte ptr [ebp-5],2
 004B1189    test        byte ptr [ebp-4],8
>004B118D    je          004B1193
 004B118F    or          byte ptr [ebp-5],4
 004B1193    test        byte ptr [ebp-4],1
>004B1197    je          004B119D
 004B1199    or          byte ptr [ebp-5],8
 004B119D    test        byte ptr [ebp-4],2
>004B11A1    je          004B11A7
 004B11A3    or          byte ptr [ebp-5],10
 004B11A7    mov         al,byte ptr [ebp-5]
 004B11AA    pop         ecx
 004B11AB    pop         ecx
 004B11AC    pop         ebp
 004B11AD    ret
end;*}

//004B11B4
{*procedure TCustomListView.sub_004B11B4(?:?);
begin
 004B11B4    push        ebp
 004B11B5    mov         ebp,esp
 004B11B7    add         esp,0FFFFFF24
 004B11BD    push        ebx
 004B11BE    push        esi
 004B11BF    xor         ecx,ecx
 004B11C1    mov         dword ptr [ebp-0D4],ecx
 004B11C7    mov         dword ptr [ebp-18],ecx
 004B11CA    mov         dword ptr [ebp-8],edx
 004B11CD    mov         dword ptr [ebp-4],eax
 004B11D0    xor         eax,eax
 004B11D2    push        ebp
 004B11D3    push        4B2019
 004B11D8    push        dword ptr fs:[eax]
 004B11DB    mov         dword ptr fs:[eax],esp
 004B11DE    mov         eax,dword ptr [ebp-8]
 004B11E1    mov         eax,dword ptr [eax+8]
 004B11E4    mov         eax,dword ptr [eax+8]
 004B11E7    cmp         eax,0FFFFFF97
>004B11EA    jg          004B1251
>004B11EC    je          004B1D84
 004B11F2    cmp         eax,0FFFFFF8D
>004B11F5    jg          004B122A
>004B11F7    je          004B1D43
 004B11FD    sub         eax,0FFFFFECC
>004B1202    je          004B129F
 004B1208    sub         eax,97
>004B120D    je          004B1FAF
 004B1213    sub         eax,5
>004B1216    je          004B1C4F
 004B121C    sub         eax,2
>004B121F    je          004B1AC5
>004B1225    jmp         004B1FF8
 004B122A    sub         eax,0FFFFFF8F
>004B122D    je          004B1C2A
 004B1233    sub         eax,4
>004B1236    je          004B1A4C
 004B123C    dec         eax
>004B123D    je          004B1E4C
 004B1243    sub         eax,2
>004B1246    je          004B1E12
>004B124C    jmp         004B1FF8
 004B1251    cmp         eax,0FFFFFF9C
>004B1254    jg          004B127F
>004B1256    je          004B1E9A
 004B125C    sub         eax,0FFFFFF98
>004B125F    je          004B1A7D
 004B1265    dec         eax
>004B1266    je          004B1A63
 004B126C    dec         eax
>004B126D    je          004B1E70
 004B1273    dec         eax
>004B1274    je          004B1EE2
>004B127A    jmp         004B1FF8
 004B127F    sub         eax,0FFFFFFF4
>004B1282    je          004B1349
 004B1288    sub         eax,7
>004B128B    je          004B1FEE
 004B1291    sub         eax,3
>004B1294    je          004B1FE2
>004B129A    jmp         004B1FF8
 004B129F    mov         eax,dword ptr [ebp-8]
 004B12A2    mov         eax,dword ptr [eax+8]
 004B12A5    mov         dword ptr [ebp-30],eax
 004B12A8    mov         eax,dword ptr [ebp-30]
 004B12AB    mov         eax,dword ptr [eax+14]
 004B12AE    mov         dword ptr [ebp-34],eax
 004B12B1    mov         eax,dword ptr [ebp-34]
 004B12B4    test        byte ptr [eax],1
>004B12B7    je          004B1FF8
 004B12BD    mov         eax,dword ptr [ebp-30]
 004B12C0    mov         edx,dword ptr [eax+0C]
 004B12C3    mov         eax,dword ptr [ebp-4]
 004B12C6    call        004B2BC0
 004B12CB    mov         eax,dword ptr [eax+18]
 004B12CE    mov         edx,dword ptr [ebp-34]
 004B12D1    cmp         eax,dword ptr [edx+4]
>004B12D4    jl          004B1301
 004B12D6    mov         eax,dword ptr [ebp-30]
 004B12D9    mov         edx,dword ptr [eax+0C]
 004B12DC    mov         eax,dword ptr [ebp-4]
 004B12DF    call        004B2BC0
 004B12E4    mov         eax,dword ptr [eax+18]
 004B12E7    push        eax
 004B12E8    mov         eax,dword ptr [ebp-30]
 004B12EB    mov         edx,dword ptr [eax+0C]
 004B12EE    mov         eax,dword ptr [ebp-4]
 004B12F1    call        004B2BC0
 004B12F6    pop         edx
 004B12F7    call        TListColumn.SetWidth
>004B12FC    jmp         004B1FF8
 004B1301    mov         eax,dword ptr [ebp-30]
 004B1304    mov         edx,dword ptr [eax+0C]
 004B1307    mov         eax,dword ptr [ebp-4]
 004B130A    call        004B2BC0
 004B130F    mov         eax,dword ptr [eax+14]
 004B1312    mov         edx,dword ptr [ebp-34]
 004B1315    cmp         eax,dword ptr [edx+4]
>004B1318    jg          004B1FF8
 004B131E    mov         eax,dword ptr [ebp-30]
 004B1321    mov         edx,dword ptr [eax+0C]
 004B1324    mov         eax,dword ptr [ebp-4]
 004B1327    call        004B2BC0
 004B132C    mov         eax,dword ptr [eax+14]
 004B132F    push        eax
 004B1330    mov         eax,dword ptr [ebp-30]
 004B1333    mov         edx,dword ptr [eax+0C]
 004B1336    mov         eax,dword ptr [ebp-4]
 004B1339    call        004B2BC0
 004B133E    pop         edx
 004B133F    call        TListColumn.SetWidth
>004B1344    jmp         004B1FF8
 004B1349    mov         eax,dword ptr [ebp-4]
 004B134C    cmp         dword ptr [eax+210],0;TCustomListView.FCanvas:TCanvas
>004B1353    je          004B1FF8
 004B1359    mov         eax,dword ptr [ebp-8]
 004B135C    mov         eax,dword ptr [eax+8]
 004B135F    mov         dword ptr [ebp-38],eax
 004B1362    xor         eax,eax
 004B1364    push        ebp
 004B1365    push        4B1A45
 004B136A    push        dword ptr fs:[eax]
 004B136D    mov         dword ptr fs:[eax],esp
 004B1370    mov         eax,dword ptr [ebp-4]
 004B1373    mov         eax,dword ptr [eax+210];TCustomListView.FCanvas:TCanvas
 004B1379    call        TCanvas.Lock
 004B137E    mov         eax,dword ptr [ebp-8]
 004B1381    xor         edx,edx
 004B1383    mov         dword ptr [eax+0C],edx
 004B1386    mov         eax,dword ptr [ebp-38]
 004B1389    test        byte ptr [eax+0E],1
>004B138D    jne         004B1582
 004B1393    lea         edx,[ebp-6C]
 004B1396    mov         eax,dword ptr [ebp-4]
 004B1399    mov         ecx,dword ptr [eax]
 004B139B    call        dword ptr [ecx+44];TCustomListView.sub_004D3A1C
 004B139E    mov         eax,dword ptr [ebp-38]
 004B13A1    mov         eax,dword ptr [eax+0C]
 004B13A4    dec         eax
>004B13A5    je          004B13C1
 004B13A7    dec         eax
>004B13A8    je          004B14FE
 004B13AE    dec         eax
>004B13AF    je          004B152A
 004B13B5    dec         eax
>004B13B6    je          004B1556
>004B13BC    jmp         004B1A29
 004B13C1    xor         ecx,ecx
 004B13C3    xor         edx,edx
 004B13C5    mov         eax,dword ptr [ebp-4]
 004B13C8    mov         ebx,dword ptr [eax]
 004B13CA    call        dword ptr [ebx+124];TCustomListView.sub_004B35B8
 004B13D0    test        al,al
>004B13D2    je          004B1477
 004B13D8    xor         eax,eax
 004B13DA    push        ebp
 004B13DB    push        4B1456
 004B13E0    push        dword ptr fs:[eax]
 004B13E3    mov         dword ptr fs:[eax],esp
 004B13E6    mov         eax,dword ptr [ebp-38]
 004B13E9    mov         edx,dword ptr [eax+10]
 004B13EC    mov         eax,dword ptr [ebp-4]
 004B13EF    mov         eax,dword ptr [eax+210];TCustomListView.FCanvas:TCanvas
 004B13F5    call        TCanvas.SetHandle
 004B13FA    mov         eax,dword ptr [ebp-4]
 004B13FD    mov         edx,dword ptr [eax+68];TCustomListView.FFont:TFont
 004B1400    mov         eax,dword ptr [ebp-4]
 004B1403    mov         eax,dword ptr [eax+210];TCustomListView.FCanvas:TCanvas
 004B1409    call        TCanvas.SetFont
 004B140E    mov         eax,dword ptr [ebp-4]
 004B1411    mov         edx,dword ptr [eax+170];TCustomListView.FBrush:TBrush
 004B1417    mov         eax,dword ptr [ebp-4]
 004B141A    mov         eax,dword ptr [eax+210];TCustomListView.FCanvas:TCanvas
 004B1420    call        TCanvas.SetBrush
 004B1425    lea         edx,[ebp-6C]
 004B1428    xor         ecx,ecx
 004B142A    mov         eax,dword ptr [ebp-4]
 004B142D    mov         ebx,dword ptr [eax]
 004B142F    call        dword ptr [ebx+100];TCustomListView.sub_004B371C
 004B1435    mov         byte ptr [ebp-11],al
 004B1438    xor         eax,eax
 004B143A    pop         edx
 004B143B    pop         ecx
 004B143C    pop         ecx
 004B143D    mov         dword ptr fs:[eax],edx
 004B1440    push        4B145D
 004B1445    mov         eax,dword ptr [ebp-4]
 004B1448    mov         eax,dword ptr [eax+210];TCustomListView.FCanvas:TCanvas
 004B144E    xor         edx,edx
 004B1450    call        TCanvas.SetHandle
 004B1455    ret
>004B1456    jmp         @HandleFinally
>004B145B    jmp         004B1445
 004B145D    cmp         byte ptr [ebp-11],0
>004B1461    jne         004B1477
 004B1463    mov         eax,dword ptr [ebp-8]
 004B1466    mov         dword ptr [eax+0C],4
 004B146D    call        @TryFinallyExit
>004B1472    jmp         004B1FF8
 004B1477    xor         ecx,ecx
 004B1479    mov         dl,1
 004B147B    mov         eax,dword ptr [ebp-4]
 004B147E    mov         ebx,dword ptr [eax]
 004B1480    call        dword ptr [ebx+124];TCustomListView.sub_004B35B8
 004B1486    test        al,al
>004B1488    jne         004B149D
 004B148A    mov         cl,2
 004B148C    mov         dl,1
 004B148E    mov         eax,dword ptr [ebp-4]
 004B1491    mov         ebx,dword ptr [eax]
 004B1493    call        dword ptr [ebx+124];TCustomListView.sub_004B35B8
 004B1499    test        al,al
>004B149B    je          004B14A7
 004B149D    mov         eax,dword ptr [ebp-8]
 004B14A0    mov         dword ptr [eax+0C],20
 004B14A7    mov         cl,1
 004B14A9    mov         dl,1
 004B14AB    mov         eax,dword ptr [ebp-4]
 004B14AE    mov         ebx,dword ptr [eax]
 004B14B0    call        dword ptr [ebx+124];TCustomListView.sub_004B35B8
 004B14B6    test        al,al
>004B14B8    je          004B14C1
 004B14BA    mov         eax,dword ptr [ebp-8]
 004B14BD    or          dword ptr [eax+0C],10
 004B14C1    mov         cl,3
 004B14C3    mov         dl,1
 004B14C5    mov         eax,dword ptr [ebp-4]
 004B14C8    mov         ebx,dword ptr [eax]
 004B14CA    call        dword ptr [ebx+124];TCustomListView.sub_004B35B8
 004B14D0    test        al,al
>004B14D2    je          004B14DB
 004B14D4    mov         eax,dword ptr [ebp-8]
 004B14D7    or          dword ptr [eax+0C],40
 004B14DB    xor         ecx,ecx
 004B14DD    mov         dl,2
 004B14DF    mov         eax,dword ptr [ebp-4]
 004B14E2    mov         ebx,dword ptr [eax]
 004B14E4    call        dword ptr [ebx+124];TCustomListView.sub_004B35B8
 004B14EA    test        al,al
>004B14EC    je          004B1A29
 004B14F2    mov         eax,dword ptr [ebp-8]
 004B14F5    or          dword ptr [eax+0C],20
>004B14F9    jmp         004B1A29
 004B14FE    mov         cl,1
 004B1500    xor         edx,edx
 004B1502    mov         eax,dword ptr [ebp-4]
 004B1505    mov         ebx,dword ptr [eax]
 004B1507    call        dword ptr [ebx+124];TCustomListView.sub_004B35B8
 004B150D    test        al,al
>004B150F    je          004B1A29
 004B1515    lea         edx,[ebp-6C]
 004B1518    mov         cl,1
 004B151A    mov         eax,dword ptr [ebp-4]
 004B151D    mov         ebx,dword ptr [eax]
 004B151F    call        dword ptr [ebx+100];TCustomListView.sub_004B371C
>004B1525    jmp         004B1A29
 004B152A    mov         cl,2
 004B152C    xor         edx,edx
 004B152E    mov         eax,dword ptr [ebp-4]
 004B1531    mov         ebx,dword ptr [eax]
 004B1533    call        dword ptr [ebx+124];TCustomListView.sub_004B35B8
 004B1539    test        al,al
>004B153B    je          004B1A29
 004B1541    lea         edx,[ebp-6C]
 004B1544    mov         cl,2
 004B1546    mov         eax,dword ptr [ebp-4]
 004B1549    mov         ebx,dword ptr [eax]
 004B154B    call        dword ptr [ebx+100];TCustomListView.sub_004B371C
>004B1551    jmp         004B1A29
 004B1556    mov         cl,3
 004B1558    xor         edx,edx
 004B155A    mov         eax,dword ptr [ebp-4]
 004B155D    mov         ebx,dword ptr [eax]
 004B155F    call        dword ptr [ebx+124];TCustomListView.sub_004B35B8
 004B1565    test        al,al
>004B1567    je          004B1A29
 004B156D    lea         edx,[ebp-6C]
 004B1570    mov         cl,3
 004B1572    mov         eax,dword ptr [ebp-4]
 004B1575    mov         ebx,dword ptr [eax]
 004B1577    call        dword ptr [ebx+100];TCustomListView.sub_004B371C
>004B157D    jmp         004B1A29
 004B1582    mov         eax,dword ptr [ebp-38]
 004B1585    test        byte ptr [eax+0E],2
 004B1589    setne       byte ptr [ebp-26]
 004B158D    cmp         byte ptr [ebp-26],0
>004B1591    je          004B15A9
 004B1593    mov         eax,dword ptr [ebp-8]
 004B1596    mov         eax,dword ptr [eax+8]
 004B1599    cmp         dword ptr [eax+38],0
>004B159D    jne         004B15A9
 004B159F    call        @TryFinallyExit
>004B15A4    jmp         004B1FF8
 004B15A9    lea         eax,[ebp-94]
 004B15AF    xor         ecx,ecx
 004B15B1    mov         edx,28
 004B15B6    call        @FillChar
 004B15BB    mov         eax,dword ptr [ebp-38]
 004B15BE    mov         eax,dword ptr [eax+24]
 004B15C1    mov         dword ptr [ebp-90],eax
 004B15C7    mov         eax,dword ptr [ebp-38]
 004B15CA    test        dword ptr [eax+0C],10002
>004B15D1    je          004B1626
 004B15D3    mov         eax,dword ptr [ebp-4]
 004B15D6    cmp         dword ptr [eax+298],0;TCustomListView.FOurFont:Integer
>004B15DD    je          004B1626
 004B15DF    mov         eax,dword ptr [ebp-4]
 004B15E2    cmp         dword ptr [eax+29C],0;TCustomListView.FStockFont:Integer
>004B15E9    je          004B1626
 004B15EB    mov         eax,dword ptr [ebp-4]
 004B15EE    mov         eax,dword ptr [eax+29C];TCustomListView.FStockFont:Integer
 004B15F4    push        eax
 004B15F5    mov         eax,dword ptr [ebp-38]
 004B15F8    mov         eax,dword ptr [eax+10]
 004B15FB    push        eax
 004B15FC    call        gdi32.SelectObject
 004B1601    mov         eax,dword ptr [ebp-4]
 004B1604    mov         eax,dword ptr [eax+298];TCustomListView.FOurFont:Integer
 004B160A    push        eax
 004B160B    call        gdi32.DeleteObject
 004B1610    mov         eax,dword ptr [ebp-4]
 004B1613    xor         edx,edx
 004B1615    mov         dword ptr [eax+298],edx;TCustomListView.FOurFont:Integer
 004B161B    mov         eax,dword ptr [ebp-4]
 004B161E    xor         edx,edx
 004B1620    mov         dword ptr [eax+29C],edx;TCustomListView.FStockFont:Integer
 004B1626    mov         eax,dword ptr [ebp-38]
 004B1629    test        dword ptr [eax+0C],10001
>004B1630    je          004B18EA
 004B1636    xor         eax,eax
 004B1638    push        ebp
 004B1639    push        4B1849
 004B163E    push        dword ptr fs:[eax]
 004B1641    mov         dword ptr fs:[eax],esp
 004B1644    mov         eax,dword ptr [ebp-38]
 004B1647    mov         edx,dword ptr [eax+10]
 004B164A    mov         eax,dword ptr [ebp-4]
 004B164D    mov         eax,dword ptr [eax+210];TCustomListView.FCanvas:TCanvas
 004B1653    call        TCanvas.SetHandle
 004B1658    mov         eax,dword ptr [ebp-4]
 004B165B    mov         edx,dword ptr [eax+68];TCustomListView.FFont:TFont
 004B165E    mov         eax,dword ptr [ebp-4]
 004B1661    mov         eax,dword ptr [eax+210];TCustomListView.FCanvas:TCanvas
 004B1667    call        TCanvas.SetFont
 004B166C    mov         eax,dword ptr [ebp-4]
 004B166F    mov         edx,dword ptr [eax+170];TCustomListView.FBrush:TBrush
 004B1675    mov         eax,dword ptr [ebp-4]
 004B1678    mov         eax,dword ptr [eax+210];TCustomListView.FCanvas:TCanvas
 004B167E    call        TCanvas.SetBrush
 004B1683    mov         eax,dword ptr [ebp-4]
 004B1686    mov         eax,dword ptr [eax+210];TCustomListView.FCanvas:TCanvas
 004B168C    mov         eax,dword ptr [eax+0C];TCanvas.Font:TFont
 004B168F    mov         edx,dword ptr [ebp-4]
 004B1692    mov         dword ptr [eax+0C],edx;TFont.?fC:TCustomListView
 004B1695    mov         dword ptr [eax+8],4B359C;TFont.FOnChange:TNotifyEvent sub_004B359C
 004B169C    mov         eax,dword ptr [ebp-4]
 004B169F    mov         eax,dword ptr [eax+210];TCustomListView.FCanvas:TCanvas
 004B16A5    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 004B16A8    mov         edx,dword ptr [ebp-4]
 004B16AB    mov         dword ptr [eax+0C],edx;TBrush.?fC:TCustomListView
 004B16AE    mov         dword ptr [eax+8],4B359C;TBrush.FOnChange:TNotifyEvent sub_004B359C
 004B16B5    mov         eax,dword ptr [ebp-4]
 004B16B8    mov         byte ptr [eax+28A],0;TCustomListView.FCanvasChanged:Boolean
 004B16BF    cmp         byte ptr [ebp-26],0
>004B16C3    je          004B16F8
 004B16C5    mov         eax,dword ptr [ebp-38]
 004B16C8    mov         ax,word ptr [eax+28]
 004B16CC    push        eax
 004B16CD    push        0
 004B16CF    lea         edx,[ebp-94]
 004B16D5    mov         eax,dword ptr [ebp-4]
 004B16D8    call        004B0F90
 004B16DD    mov         edx,eax
 004B16DF    mov         eax,dword ptr [ebp-8]
 004B16E2    mov         eax,dword ptr [eax+8]
 004B16E5    mov         ecx,dword ptr [eax+38]
 004B16E8    mov         eax,dword ptr [ebp-4]
 004B16EB    mov         ebx,dword ptr [eax]
 004B16ED    call        dword ptr [ebx+108];TCustomListView.sub_004B3810
 004B16F3    mov         byte ptr [ebp-11],al
>004B16F6    jmp         004B171F
 004B16F8    push        0
 004B16FA    lea         edx,[ebp-94]
 004B1700    mov         eax,dword ptr [ebp-4]
 004B1703    call        004B0F90
 004B1708    mov         edx,eax
 004B170A    mov         eax,dword ptr [ebp-38]
 004B170D    mov         cx,word ptr [eax+28]
 004B1711    mov         eax,dword ptr [ebp-4]
 004B1714    mov         ebx,dword ptr [eax]
 004B1716    call        dword ptr [ebx+104];TCustomListView.sub_004B3790
 004B171C    mov         byte ptr [ebp-11],al
 004B171F    cmp         byte ptr [ebp-11],0
>004B1723    jne         004B173B
 004B1725    mov         eax,dword ptr [ebp-8]
 004B1728    or          dword ptr [eax+0C],4
 004B172C    call        @TryFinallyExit
 004B1731    call        @TryFinallyExit
>004B1736    jmp         004B1FF8
 004B173B    mov         eax,dword ptr [ebp-4]
 004B173E    cmp         byte ptr [eax+28A],0;TCustomListView.FCanvasChanged:Boolean
>004B1745    je          004B182B
 004B174B    mov         eax,dword ptr [ebp-4]
 004B174E    mov         byte ptr [eax+28A],0;TCustomListView.FCanvasChanged:Boolean
 004B1755    mov         eax,dword ptr [ebp-4]
 004B1758    mov         eax,dword ptr [eax+210];TCustomListView.FCanvas:TCanvas
 004B175E    mov         eax,dword ptr [eax+0C];TCanvas.Font:TFont
 004B1761    xor         edx,edx
 004B1763    mov         dword ptr [eax+8],edx;TFont.FOnChange:TNotifyEvent
 004B1766    mov         dword ptr [eax+0C],edx;TFont.?fC:TCustomListView
 004B1769    mov         eax,dword ptr [ebp-4]
 004B176C    mov         eax,dword ptr [eax+210];TCustomListView.FCanvas:TCanvas
 004B1772    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 004B1775    xor         edx,edx
 004B1777    mov         dword ptr [eax+8],edx;TBrush.FOnChange:TNotifyEvent
 004B177A    mov         dword ptr [eax+0C],edx;TBrush.?fC:TCustomListView
 004B177D    mov         eax,dword ptr [ebp-8]
 004B1780    mov         eax,dword ptr [eax+8]
 004B1783    mov         dword ptr [ebp-3C],eax
 004B1786    mov         eax,dword ptr [ebp-4]
 004B1789    mov         eax,dword ptr [eax+210];TCustomListView.FCanvas:TCanvas
 004B178F    mov         eax,dword ptr [eax+0C];TCanvas.Font:TFont
 004B1792    mov         eax,dword ptr [eax+18];TFont.Color:TColor
 004B1795    call        00486830
 004B179A    mov         edx,dword ptr [ebp-3C]
 004B179D    mov         dword ptr [edx+30],eax
 004B17A0    mov         eax,dword ptr [ebp-4]
 004B17A3    mov         eax,dword ptr [eax+210];TCustomListView.FCanvas:TCanvas
 004B17A9    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 004B17AC    call        TBrush.GetColor
 004B17B1    call        00486830
 004B17B6    mov         edx,dword ptr [ebp-3C]
 004B17B9    mov         dword ptr [edx+34],eax
 004B17BC    lea         eax,[ebp-0D0]
 004B17C2    push        eax
 004B17C3    push        3C
 004B17C5    mov         eax,dword ptr [ebp-4]
 004B17C8    mov         eax,dword ptr [eax+210];TCustomListView.FCanvas:TCanvas
 004B17CE    mov         eax,dword ptr [eax+0C];TCanvas.Font:TFont
 004B17D1    call        TFont.GetHandle
 004B17D6    push        eax
 004B17D7    call        gdi32.GetObjectA
 004B17DC    test        eax,eax
>004B17DE    je          004B182B
 004B17E0    mov         eax,dword ptr [ebp-4]
 004B17E3    mov         eax,dword ptr [eax+210];TCustomListView.FCanvas:TCanvas
 004B17E9    xor         edx,edx
 004B17EB    call        TCanvas.SetHandle
 004B17F0    lea         eax,[ebp-0D0]
 004B17F6    push        eax
 004B17F7    call        gdi32.CreateFontIndirectA
 004B17FC    mov         edx,dword ptr [ebp-4]
 004B17FF    mov         dword ptr [edx+298],eax;TCustomListView.FOurFont:Integer
 004B1805    mov         eax,dword ptr [ebp-4]
 004B1808    mov         eax,dword ptr [eax+298];TCustomListView.FOurFont:Integer
 004B180E    push        eax
 004B180F    mov         eax,dword ptr [ebp-38]
 004B1812    mov         eax,dword ptr [eax+10]
 004B1815    push        eax
 004B1816    call        gdi32.SelectObject
 004B181B    mov         edx,dword ptr [ebp-4]
 004B181E    mov         dword ptr [edx+29C],eax;TCustomListView.FStockFont:Integer
 004B1824    mov         eax,dword ptr [ebp-8]
 004B1827    or          dword ptr [eax+0C],2
 004B182B    xor         eax,eax
 004B182D    pop         edx
 004B182E    pop         ecx
 004B182F    pop         ecx
 004B1830    mov         dword ptr fs:[eax],edx
 004B1833    push        4B1850
 004B1838    mov         eax,dword ptr [ebp-4]
 004B183B    mov         eax,dword ptr [eax+210];TCustomListView.FCanvas:TCanvas
 004B1841    xor         edx,edx
 004B1843    call        TCanvas.SetHandle
 004B1848    ret
>004B1849    jmp         @HandleFinally
>004B184E    jmp         004B1838
 004B1850    cmp         byte ptr [ebp-26],0
>004B1854    jne         004B18AD
 004B1856    xor         ecx,ecx
 004B1858    mov         dl,2
 004B185A    mov         eax,dword ptr [ebp-4]
 004B185D    mov         ebx,dword ptr [eax]
 004B185F    call        dword ptr [ebx+124];TCustomListView.sub_004B35B8
 004B1865    test        al,al
>004B1867    je          004B1870
 004B1869    mov         eax,dword ptr [ebp-8]
 004B186C    or          dword ptr [eax+0C],20
 004B1870    mov         cl,1
 004B1872    mov         dl,1
 004B1874    mov         eax,dword ptr [ebp-4]
 004B1877    mov         ebx,dword ptr [eax]
 004B1879    call        dword ptr [ebx+124];TCustomListView.sub_004B35B8
 004B187F    test        al,al
>004B1881    je          004B188A
 004B1883    mov         eax,dword ptr [ebp-8]
 004B1886    or          dword ptr [eax+0C],10
 004B188A    mov         cl,3
 004B188C    mov         dl,1
 004B188E    mov         eax,dword ptr [ebp-4]
 004B1891    mov         ebx,dword ptr [eax]
 004B1893    call        dword ptr [ebx+124];TCustomListView.sub_004B35B8
 004B1899    test        al,al
>004B189B    je          004B1A29
 004B18A1    mov         eax,dword ptr [ebp-8]
 004B18A4    or          dword ptr [eax+0C],40
>004B18A8    jmp         004B1A29
 004B18AD    mov         cl,1
 004B18AF    mov         dl,2
 004B18B1    mov         eax,dword ptr [ebp-4]
 004B18B4    mov         ebx,dword ptr [eax]
 004B18B6    call        dword ptr [ebx+124];TCustomListView.sub_004B35B8
 004B18BC    test        al,al
>004B18BE    je          004B18C7
 004B18C0    mov         eax,dword ptr [ebp-8]
 004B18C3    or          dword ptr [eax+0C],10
 004B18C7    mov         cl,3
 004B18C9    mov         dl,2
 004B18CB    mov         eax,dword ptr [ebp-4]
 004B18CE    mov         ebx,dword ptr [eax]
 004B18D0    call        dword ptr [ebx+124];TCustomListView.sub_004B35B8
 004B18D6    test        al,al
>004B18D8    je          004B1A29
 004B18DE    mov         eax,dword ptr [ebp-8]
 004B18E1    or          dword ptr [eax+0C],40
>004B18E5    jmp         004B1A29
 004B18EA    mov         eax,dword ptr [ebp-38]
 004B18ED    test        dword ptr [eax+0C],10002
>004B18F4    je          004B1958
 004B18F6    cmp         byte ptr [ebp-26],0
>004B18FA    je          004B192F
 004B18FC    mov         eax,dword ptr [ebp-38]
 004B18FF    mov         ax,word ptr [eax+28]
 004B1903    push        eax
 004B1904    push        1
 004B1906    lea         edx,[ebp-94]
 004B190C    mov         eax,dword ptr [ebp-4]
 004B190F    call        004B0F90
 004B1914    mov         edx,eax
 004B1916    mov         eax,dword ptr [ebp-8]
 004B1919    mov         eax,dword ptr [eax+8]
 004B191C    mov         ecx,dword ptr [eax+38]
 004B191F    mov         eax,dword ptr [ebp-4]
 004B1922    mov         ebx,dword ptr [eax]
 004B1924    call        dword ptr [ebx+108];TCustomListView.sub_004B3810
>004B192A    jmp         004B1A29
 004B192F    push        1
 004B1931    lea         edx,[ebp-94]
 004B1937    mov         eax,dword ptr [ebp-4]
 004B193A    call        004B0F90
 004B193F    mov         edx,eax
 004B1941    mov         eax,dword ptr [ebp-38]
 004B1944    mov         cx,word ptr [eax+28]
 004B1948    mov         eax,dword ptr [ebp-4]
 004B194B    mov         ebx,dword ptr [eax]
 004B194D    call        dword ptr [ebx+104];TCustomListView.sub_004B3790
>004B1953    jmp         004B1A29
 004B1958    mov         eax,dword ptr [ebp-38]
 004B195B    test        dword ptr [eax+0C],10003
>004B1962    je          004B19C3
 004B1964    cmp         byte ptr [ebp-26],0
>004B1968    je          004B199D
 004B196A    mov         eax,dword ptr [ebp-38]
 004B196D    mov         ax,word ptr [eax+28]
 004B1971    push        eax
 004B1972    push        2
 004B1974    lea         edx,[ebp-94]
 004B197A    mov         eax,dword ptr [ebp-4]
 004B197D    call        004B0F90
 004B1982    mov         edx,eax
 004B1984    mov         eax,dword ptr [ebp-8]
 004B1987    mov         eax,dword ptr [eax+8]
 004B198A    mov         ecx,dword ptr [eax+38]
 004B198D    mov         eax,dword ptr [ebp-4]
 004B1990    mov         ebx,dword ptr [eax]
 004B1992    call        dword ptr [ebx+108];TCustomListView.sub_004B3810
>004B1998    jmp         004B1A29
 004B199D    push        2
 004B199F    lea         edx,[ebp-94]
 004B19A5    mov         eax,dword ptr [ebp-4]
 004B19A8    call        004B0F90
 004B19AD    mov         edx,eax
 004B19AF    mov         eax,dword ptr [ebp-38]
 004B19B2    mov         cx,word ptr [eax+28]
 004B19B6    mov         eax,dword ptr [ebp-4]
 004B19B9    mov         ebx,dword ptr [eax]
 004B19BB    call        dword ptr [ebx+104];TCustomListView.sub_004B3790
>004B19C1    jmp         004B1A29
 004B19C3    mov         eax,dword ptr [ebp-38]
 004B19C6    test        dword ptr [eax+0C],10004
>004B19CD    je          004B1A29
 004B19CF    cmp         byte ptr [ebp-26],0
>004B19D3    je          004B1A05
 004B19D5    mov         eax,dword ptr [ebp-38]
 004B19D8    mov         ax,word ptr [eax+28]
 004B19DC    push        eax
 004B19DD    push        3
 004B19DF    lea         edx,[ebp-94]
 004B19E5    mov         eax,dword ptr [ebp-4]
 004B19E8    call        004B0F90
 004B19ED    mov         edx,eax
 004B19EF    mov         eax,dword ptr [ebp-8]
 004B19F2    mov         eax,dword ptr [eax+8]
 004B19F5    mov         ecx,dword ptr [eax+38]
 004B19F8    mov         eax,dword ptr [ebp-4]
 004B19FB    mov         ebx,dword ptr [eax]
 004B19FD    call        dword ptr [ebx+108];TCustomListView.sub_004B3810
>004B1A03    jmp         004B1A29
 004B1A05    push        3
 004B1A07    lea         edx,[ebp-94]
 004B1A0D    mov         eax,dword ptr [ebp-4]
 004B1A10    call        004B0F90
 004B1A15    mov         edx,eax
 004B1A17    mov         eax,dword ptr [ebp-38]
 004B1A1A    mov         cx,word ptr [eax+28]
 004B1A1E    mov         eax,dword ptr [ebp-4]
 004B1A21    mov         ebx,dword ptr [eax]
 004B1A23    call        dword ptr [ebx+104];TCustomListView.sub_004B3790
 004B1A29    xor         eax,eax
 004B1A2B    pop         edx
 004B1A2C    pop         ecx
 004B1A2D    pop         ecx
 004B1A2E    mov         dword ptr fs:[eax],edx
 004B1A31    push        4B1FF8
 004B1A36    mov         eax,dword ptr [ebp-4]
 004B1A39    mov         eax,dword ptr [eax+210];TCustomListView.FCanvas:TCanvas
 004B1A3F    call        TCanvas.Unlock
 004B1A44    ret
>004B1A45    jmp         @HandleFinally
>004B1A4A    jmp         004B1A36
 004B1A4C    mov         eax,dword ptr [ebp-8]
 004B1A4F    mov         eax,dword ptr [eax+8]
 004B1A52    mov         eax,dword ptr [eax+0C]
 004B1A55    mov         edx,dword ptr [ebp-4]
 004B1A58    mov         dword ptr [edx+26C],eax;TCustomListView.FDragIndex:Integer
>004B1A5E    jmp         004B1FF8
 004B1A63    mov         eax,dword ptr [ebp-8]
 004B1A66    mov         eax,dword ptr [eax+8]
 004B1A69    mov         edx,dword ptr [eax+28]
 004B1A6C    mov         eax,dword ptr [ebp-4]
 004B1A6F    mov         si,0FFAE
 004B1A73    call        @CallDynaInst;TCustomListView.sub_004B2298
>004B1A78    jmp         004B1FF8
 004B1A7D    mov         eax,dword ptr [ebp-4]
 004B1A80    mov         eax,dword ptr [eax+22C];TCustomListView.FListItems:TListItems
 004B1A86    call        004AE700
 004B1A8B    dec         eax
 004B1A8C    cmp         eax,0
>004B1A8F    jl          004B1FF8
 004B1A95    mov         dword ptr [ebp-10],eax
 004B1A98    mov         eax,dword ptr [ebp-4]
 004B1A9B    mov         eax,dword ptr [eax+22C];TCustomListView.FListItems:TListItems
 004B1AA1    mov         edx,dword ptr [ebp-10]
 004B1AA4    call        004AE758
 004B1AA9    mov         edx,eax
 004B1AAB    mov         eax,dword ptr [ebp-4]
 004B1AAE    mov         si,0FFAE
 004B1AB2    call        @CallDynaInst;TCustomListView.sub_004B2298
 004B1AB7    dec         dword ptr [ebp-10]
 004B1ABA    cmp         dword ptr [ebp-10],0FFFFFFFF
>004B1ABE    jne         004B1A98
>004B1AC0    jmp         004B1FF8
 004B1AC5    mov         eax,dword ptr [ebp-8]
 004B1AC8    mov         eax,dword ptr [eax+8]
 004B1ACB    lea         edx,[eax+0C]
 004B1ACE    mov         eax,dword ptr [ebp-4]
 004B1AD1    call        004B0F90
 004B1AD6    mov         dword ptr [ebp-0C],eax
 004B1AD9    mov         eax,dword ptr [ebp-8]
 004B1ADC    mov         eax,dword ptr [eax+8]
 004B1ADF    add         eax,0C
 004B1AE2    mov         dword ptr [ebp-40],eax
 004B1AE5    mov         eax,dword ptr [ebp-40]
 004B1AE8    test        byte ptr [eax],1
>004B1AEB    je          004B1B61
 004B1AED    mov         eax,dword ptr [ebp-40]
 004B1AF0    cmp         dword ptr [eax+8],0
>004B1AF4    jne         004B1B10
 004B1AF6    mov         eax,dword ptr [ebp-40]
 004B1AF9    mov         ecx,dword ptr [eax+18]
 004B1AFC    dec         ecx
 004B1AFD    mov         eax,dword ptr [ebp-0C]
 004B1B00    mov         edx,dword ptr [eax+24]
 004B1B03    mov         eax,dword ptr [ebp-40]
 004B1B06    mov         eax,dword ptr [eax+14]
 004B1B09    call        0046730C
>004B1B0E    jmp         004B1B61
 004B1B10    mov         eax,dword ptr [ebp-0C]
 004B1B13    mov         eax,dword ptr [eax+8]
 004B1B16    mov         dword ptr [ebp-44],eax
 004B1B19    mov         eax,dword ptr [ebp-44]
 004B1B1C    mov         edx,dword ptr [eax]
 004B1B1E    call        dword ptr [edx+14]
 004B1B21    mov         edx,dword ptr [ebp-40]
 004B1B24    cmp         eax,dword ptr [edx+8]
>004B1B27    jl          004B1B58
 004B1B29    lea         ecx,[ebp-0D4]
 004B1B2F    mov         eax,dword ptr [ebp-40]
 004B1B32    mov         edx,dword ptr [eax+8]
 004B1B35    dec         edx
 004B1B36    mov         eax,dword ptr [ebp-44]
 004B1B39    mov         ebx,dword ptr [eax]
 004B1B3B    call        dword ptr [ebx+0C]
 004B1B3E    mov         edx,dword ptr [ebp-0D4]
 004B1B44    mov         eax,dword ptr [ebp-40]
 004B1B47    mov         ecx,dword ptr [eax+18]
 004B1B4A    dec         ecx
 004B1B4B    mov         eax,dword ptr [ebp-40]
 004B1B4E    mov         eax,dword ptr [eax+14]
 004B1B51    call        0046730C
>004B1B56    jmp         004B1B61
 004B1B58    mov         eax,dword ptr [ebp-40]
 004B1B5B    mov         eax,dword ptr [eax+14]
 004B1B5E    mov         byte ptr [eax],0
 004B1B61    mov         eax,dword ptr [ebp-40]
 004B1B64    test        byte ptr [eax],2
>004B1B67    je          004B1C0D
 004B1B6D    mov         eax,dword ptr [ebp-40]
 004B1B70    cmp         dword ptr [eax+8],0
>004B1B74    jne         004B1BBD
 004B1B76    mov         edx,dword ptr [ebp-0C]
 004B1B79    mov         eax,dword ptr [ebp-4]
 004B1B7C    call        004B2CA4
 004B1B81    mov         eax,dword ptr [ebp-0C]
 004B1B84    mov         eax,dword ptr [eax+10]
 004B1B87    mov         edx,dword ptr [ebp-40]
 004B1B8A    mov         dword ptr [edx+1C],eax
 004B1B8D    mov         eax,dword ptr [ebp-4]
 004B1B90    cmp         dword ptr [eax+220],0;TCustomListView.FStateImages:TCustomImageList
>004B1B97    je          004B1C0D
 004B1B99    mov         eax,dword ptr [ebp-0C]
 004B1B9C    mov         eax,dword ptr [eax+20]
 004B1B9F    inc         eax
 004B1BA0    call        0042F49C
 004B1BA5    mov         edx,dword ptr [ebp-40]
 004B1BA8    mov         dword ptr [edx+0C],eax
 004B1BAB    mov         eax,dword ptr [ebp-40]
 004B1BAE    mov         dword ptr [eax+10],0F000
 004B1BB5    mov         eax,dword ptr [ebp-40]
 004B1BB8    or          dword ptr [eax],8
>004B1BBB    jmp         004B1C0D
 004B1BBD    mov         eax,dword ptr [ebp-40]
 004B1BC0    mov         eax,dword ptr [eax+8]
 004B1BC3    dec         eax
>004B1BC4    js          004B1C0D
 004B1BC6    mov         eax,dword ptr [ebp-0C]
 004B1BC9    mov         eax,dword ptr [eax+8]
 004B1BCC    mov         edx,dword ptr [eax]
 004B1BCE    call        dword ptr [edx+14]
 004B1BD1    mov         edx,dword ptr [ebp-40]
 004B1BD4    mov         edx,dword ptr [edx+8]
 004B1BD7    dec         edx
 004B1BD8    cmp         eax,edx
>004B1BDA    jle         004B1C0D
 004B1BDC    mov         eax,dword ptr [ebp-40]
 004B1BDF    mov         edx,dword ptr [eax+8]
 004B1BE2    dec         edx
 004B1BE3    mov         eax,dword ptr [ebp-0C]
 004B1BE6    call        004AE548
 004B1BEB    mov         dword ptr [ebp-2C],eax
 004B1BEE    lea         eax,[ebp-2C]
 004B1BF1    push        eax
 004B1BF2    mov         eax,dword ptr [ebp-40]
 004B1BF5    mov         ecx,dword ptr [eax+8]
 004B1BF8    dec         ecx
 004B1BF9    mov         edx,dword ptr [ebp-0C]
 004B1BFC    mov         eax,dword ptr [ebp-4]
 004B1BFF    call        004B3924
 004B1C04    mov         eax,dword ptr [ebp-40]
 004B1C07    mov         edx,dword ptr [ebp-2C]
 004B1C0A    mov         dword ptr [eax+1C],edx
 004B1C0D    mov         eax,dword ptr [ebp-40]
 004B1C10    test        byte ptr [eax],10
>004B1C13    je          004B1FF8
 004B1C19    mov         eax,dword ptr [ebp-0C]
 004B1C1C    mov         eax,dword ptr [eax+14]
 004B1C1F    mov         edx,dword ptr [ebp-40]
 004B1C22    mov         dword ptr [edx+24],eax
>004B1C25    jmp         004B1FF8
 004B1C2A    mov         eax,dword ptr [ebp-8]
 004B1C2D    mov         eax,dword ptr [eax+8]
 004B1C30    mov         dword ptr [ebp-48],eax
 004B1C33    mov         eax,dword ptr [ebp-48]
 004B1C36    mov         ecx,dword ptr [eax+10]
 004B1C39    mov         eax,dword ptr [ebp-48]
 004B1C3C    mov         edx,dword ptr [eax+0C]
 004B1C3F    mov         eax,dword ptr [ebp-4]
 004B1C42    mov         ebx,dword ptr [eax]
 004B1C44    call        dword ptr [ebx+11C];TCustomListView.sub_004B0E2C
>004B1C4A    jmp         004B1FF8
 004B1C4F    mov         eax,dword ptr [ebp-8]
 004B1C52    mov         eax,dword ptr [eax+8]
 004B1C55    mov         dword ptr [ebp-4C],eax
 004B1C58    push        ebp
 004B1C59    mov         eax,dword ptr [ebp-4C]
 004B1C5C    mov         eax,dword ptr [eax+10]
 004B1C5F    call        004B1120
 004B1C64    pop         ecx
 004B1C65    mov         byte ptr [ebp-12],al
 004B1C68    xor         eax,eax
 004B1C6A    mov         dword ptr [ebp-24],eax
 004B1C6D    lea         eax,[ebp-18]
 004B1C70    call        @LStrClr
 004B1C75    lea         ecx,[ebp-20]
 004B1C78    xor         edx,edx
 004B1C7A    xor         eax,eax
 004B1C7C    call        00406EBC
 004B1C81    mov         byte ptr [ebp-25],4
 004B1C85    mov         al,byte ptr [ebp-12]
 004B1C88    sub         al,1
>004B1C8A    jb          004B1C94
 004B1C8C    sub         al,2
>004B1C8E    jb          004B1C9F
>004B1C90    je          004B1CC2
>004B1C92    jmp         004B1CFD
 004B1C94    mov         eax,dword ptr [ebp-4C]
 004B1C97    mov         eax,dword ptr [eax+18]
 004B1C9A    mov         dword ptr [ebp-24],eax
>004B1C9D    jmp         004B1CFD
 004B1C9F    mov         eax,dword ptr [ebp-4C]
 004B1CA2    cmp         dword ptr [eax+14],0
>004B1CA6    je          004B1CB8
 004B1CA8    lea         edx,[ebp-18]
 004B1CAB    mov         eax,dword ptr [ebp-4C]
 004B1CAE    mov         eax,dword ptr [eax+14]
 004B1CB1    call        00467470
>004B1CB6    jmp         004B1CFD
 004B1CB8    lea         eax,[ebp-18]
 004B1CBB    call        @LStrClr
>004B1CC0    jmp         004B1CFD
 004B1CC2    mov         eax,dword ptr [ebp-4C]
 004B1CC5    mov         edx,dword ptr [eax+1C]
 004B1CC8    mov         dword ptr [ebp-20],edx
 004B1CCB    mov         edx,dword ptr [eax+20]
 004B1CCE    mov         dword ptr [ebp-1C],edx
 004B1CD1    mov         eax,dword ptr [ebp-4C]
 004B1CD4    mov         eax,dword ptr [eax+24]
 004B1CD7    sub         eax,25
>004B1CDA    je          004B1CE7
 004B1CDC    dec         eax
>004B1CDD    je          004B1CED
 004B1CDF    dec         eax
>004B1CE0    je          004B1CF3
 004B1CE2    dec         eax
>004B1CE3    je          004B1CF9
>004B1CE5    jmp         004B1CFD
 004B1CE7    mov         byte ptr [ebp-25],0
>004B1CEB    jmp         004B1CFD
 004B1CED    mov         byte ptr [ebp-25],2
>004B1CF1    jmp         004B1CFD
 004B1CF3    mov         byte ptr [ebp-25],1
>004B1CF7    jmp         004B1CFD
 004B1CF9    mov         byte ptr [ebp-25],3
 004B1CFD    lea         eax,[ebp-20]
 004B1D00    push        eax
 004B1D01    mov         eax,dword ptr [ebp-24]
 004B1D04    push        eax
 004B1D05    mov         eax,dword ptr [ebp-4C]
 004B1D08    mov         eax,dword ptr [eax+0C]
 004B1D0B    push        eax
 004B1D0C    mov         al,byte ptr [ebp-25]
 004B1D0F    push        eax
 004B1D10    mov         eax,dword ptr [ebp-4C]
 004B1D13    test        byte ptr [eax+10],20
 004B1D17    setne       al
 004B1D1A    push        eax
 004B1D1B    push        ebp
 004B1D1C    mov         eax,dword ptr [ebp-4C]
 004B1D1F    mov         eax,dword ptr [eax+10]
 004B1D22    call        004B1120
 004B1D27    pop         ecx
 004B1D28    mov         edx,eax
 004B1D2A    mov         ecx,dword ptr [ebp-18]
 004B1D2D    mov         eax,dword ptr [ebp-4]
 004B1D30    mov         ebx,dword ptr [eax]
 004B1D32    call        dword ptr [ebx+118];TCustomListView.sub_004B0DCC
 004B1D38    mov         edx,dword ptr [ebp-8]
 004B1D3B    mov         dword ptr [edx+0C],eax
>004B1D3E    jmp         004B1FF8
 004B1D43    mov         eax,dword ptr [ebp-8]
 004B1D46    mov         eax,dword ptr [eax+8]
 004B1D49    mov         dword ptr [ebp-50],eax
 004B1D4C    push        ebp
 004B1D4D    mov         eax,dword ptr [ebp-50]
 004B1D50    mov         eax,dword ptr [eax+14]
 004B1D53    call        004B1164
 004B1D58    pop         ecx
 004B1D59    push        eax
 004B1D5A    push        ebp
 004B1D5B    mov         eax,dword ptr [ebp-50]
 004B1D5E    mov         eax,dword ptr [eax+18]
 004B1D61    call        004B1164
 004B1D66    pop         ecx
 004B1D67    push        eax
 004B1D68    mov         eax,dword ptr [ebp-50]
 004B1D6B    mov         ecx,dword ptr [eax+10]
 004B1D6E    mov         eax,dword ptr [ebp-50]
 004B1D71    mov         edx,dword ptr [eax+0C]
 004B1D74    mov         eax,dword ptr [ebp-4]
 004B1D77    mov         ebx,dword ptr [eax]
 004B1D79    call        dword ptr [ebx+120];TCustomListView.sub_004B0E74
>004B1D7F    jmp         004B1FF8
 004B1D84    mov         eax,dword ptr [ebp-8]
 004B1D87    mov         eax,dword ptr [eax+8]
 004B1D8A    lea         edx,[eax+0C]
 004B1D8D    mov         eax,dword ptr [ebp-4]
 004B1D90    call        004B0F90
 004B1D95    mov         dword ptr [ebp-0C],eax
 004B1D98    mov         edx,dword ptr [ebp-0C]
 004B1D9B    mov         eax,dword ptr [ebp-4]
 004B1D9E    mov         si,0FFB2
 004B1DA2    call        @CallDynaInst;TCustomListView.sub_004B22EC
 004B1DA7    test        al,al
>004B1DA9    jne         004B1DB5
 004B1DAB    mov         eax,dword ptr [ebp-8]
 004B1DAE    mov         dword ptr [eax+0C],1
 004B1DB5    mov         eax,dword ptr [ebp-8]
 004B1DB8    cmp         dword ptr [eax+0C],0
>004B1DBC    jne         004B1FF8
 004B1DC2    mov         eax,dword ptr [ebp-4]
 004B1DC5    call        TWinControl.GetHandle
 004B1DCA    call        0042F6DC
 004B1DCF    mov         edx,dword ptr [ebp-4]
 004B1DD2    mov         dword ptr [edx+258],eax;TCustomListView.FEditHandle:HWND
 004B1DD8    push        0FC
 004B1DDA    mov         eax,dword ptr [ebp-4]
 004B1DDD    mov         eax,dword ptr [eax+258];TCustomListView.FEditHandle:HWND
 004B1DE3    push        eax
 004B1DE4    call        user32.GetWindowLongA
 004B1DE9    mov         edx,dword ptr [ebp-4]
 004B1DEC    mov         dword ptr [edx+254],eax;TCustomListView.FDefEditProc:Pointer
 004B1DF2    mov         eax,dword ptr [ebp-4]
 004B1DF5    mov         eax,dword ptr [eax+250];TCustomListView.FEditInstance:Pointer
 004B1DFB    push        eax
 004B1DFC    push        0FC
 004B1DFE    mov         eax,dword ptr [ebp-4]
 004B1E01    mov         eax,dword ptr [eax+258];TCustomListView.FEditHandle:HWND
 004B1E07    push        eax
 004B1E08    call        user32.SetWindowLongA
>004B1E0D    jmp         004B1FF8
 004B1E12    mov         eax,dword ptr [ebp-8]
 004B1E15    mov         eax,dword ptr [eax+8]
 004B1E18    mov         dword ptr [ebp-54],eax
 004B1E1B    mov         eax,dword ptr [ebp-54]
 004B1E1E    cmp         dword ptr [eax+20],0
>004B1E22    je          004B1FF8
 004B1E28    mov         eax,dword ptr [ebp-54]
 004B1E2B    cmp         dword ptr [eax+10],0FFFFFFFF
>004B1E2F    je          004B1FF8
 004B1E35    mov         eax,dword ptr [ebp-54]
 004B1E38    lea         edx,[eax+0C]
 004B1E3B    mov         eax,dword ptr [ebp-4]
 004B1E3E    mov         si,0FFAD
 004B1E42    call        @CallDynaInst;TCustomListView.sub_004B232C
>004B1E47    jmp         004B1FF8
 004B1E4C    mov         eax,dword ptr [ebp-8]
 004B1E4F    mov         eax,dword ptr [eax+8]
 004B1E52    mov         edx,dword ptr [eax+10]
 004B1E55    mov         eax,dword ptr [ebp-4]
 004B1E58    call        004B2BC0
 004B1E5D    mov         edx,eax
 004B1E5F    mov         eax,dword ptr [ebp-4]
 004B1E62    mov         si,0FFB0
 004B1E66    call        @CallDynaInst;TCustomListView.sub_004B20B8
>004B1E6B    jmp         004B1FF8
 004B1E70    mov         eax,dword ptr [ebp-8]
 004B1E73    mov         eax,dword ptr [eax+8]
 004B1E76    mov         edx,dword ptr [eax+0C]
 004B1E79    mov         eax,dword ptr [ebp-4]
 004B1E7C    mov         eax,dword ptr [eax+22C];TCustomListView.FListItems:TListItems
 004B1E82    call        004AE758
 004B1E87    mov         edx,eax
 004B1E89    mov         eax,dword ptr [ebp-4]
 004B1E8C    mov         si,0FFAC
 004B1E90    call        @CallDynaInst;TCustomListView.sub_004B2130
>004B1E95    jmp         004B1FF8
 004B1E9A    mov         eax,dword ptr [ebp-8]
 004B1E9D    mov         eax,dword ptr [eax+8]
 004B1EA0    mov         dword ptr [ebp-58],eax
 004B1EA3    mov         eax,dword ptr [ebp-58]
 004B1EA6    mov         edx,dword ptr [eax+0C]
 004B1EA9    mov         eax,dword ptr [ebp-4]
 004B1EAC    mov         eax,dword ptr [eax+22C];TCustomListView.FListItems:TListItems
 004B1EB2    call        004AE758
 004B1EB7    mov         edx,eax
 004B1EB9    mov         eax,dword ptr [ebp-58]
 004B1EBC    mov         ecx,dword ptr [eax+1C]
 004B1EBF    mov         eax,dword ptr [ebp-4]
 004B1EC2    mov         si,0FFB3
 004B1EC6    call        @CallDynaInst;TCustomListView.sub_004B21D4
 004B1ECB    test        al,al
>004B1ECD    jne         004B1FF8
 004B1ED3    mov         eax,dword ptr [ebp-8]
 004B1ED6    mov         dword ptr [eax+0C],1
>004B1EDD    jmp         004B1FF8
 004B1EE2    mov         eax,dword ptr [ebp-8]
 004B1EE5    mov         eax,dword ptr [eax+8]
 004B1EE8    mov         dword ptr [ebp-5C],eax
 004B1EEB    mov         eax,dword ptr [ebp-5C]
 004B1EEE    mov         edx,dword ptr [eax+0C]
 004B1EF1    mov         eax,dword ptr [ebp-4]
 004B1EF4    mov         eax,dword ptr [eax+22C];TCustomListView.FListItems:TListItems
 004B1EFA    call        004AE758
 004B1EFF    mov         dword ptr [ebp-0C],eax
 004B1F02    mov         eax,dword ptr [ebp-5C]
 004B1F05    mov         ecx,dword ptr [eax+1C]
 004B1F08    mov         edx,dword ptr [ebp-0C]
 004B1F0B    mov         eax,dword ptr [ebp-4]
 004B1F0E    mov         si,0FFB1
 004B1F12    call        @CallDynaInst;TCustomListView.sub_004B223C
 004B1F17    mov         eax,dword ptr [ebp-4]
 004B1F1A    cmp         word ptr [eax+36A],0;TCustomListView.?f36A:word
>004B1F22    je          004B1F81
 004B1F24    mov         eax,dword ptr [ebp-5C]
 004B1F27    cmp         dword ptr [eax+1C],8
>004B1F2B    jne         004B1F81
 004B1F2D    mov         eax,dword ptr [ebp-5C]
 004B1F30    test        byte ptr [eax+18],2
>004B1F34    je          004B1F58
 004B1F36    mov         eax,dword ptr [ebp-5C]
 004B1F39    test        byte ptr [eax+14],2
>004B1F3D    jne         004B1F58
 004B1F3F    push        0
 004B1F41    mov         ebx,dword ptr [ebp-4]
 004B1F44    mov         ecx,dword ptr [ebp-0C]
 004B1F47    mov         edx,dword ptr [ebp-4]
 004B1F4A    mov         eax,dword ptr [ebx+36C];TCustomListView.?f36C:dword
 004B1F50    call        dword ptr [ebx+368];TCustomListView.FOnSelectItem
>004B1F56    jmp         004B1F81
 004B1F58    mov         eax,dword ptr [ebp-5C]
 004B1F5B    test        byte ptr [eax+18],2
>004B1F5F    jne         004B1F81
 004B1F61    mov         eax,dword ptr [ebp-5C]
 004B1F64    test        byte ptr [eax+14],2
>004B1F68    je          004B1F81
 004B1F6A    push        1
 004B1F6C    mov         ebx,dword ptr [ebp-4]
 004B1F6F    mov         ecx,dword ptr [ebp-0C]
 004B1F72    mov         edx,dword ptr [ebp-4]
 004B1F75    mov         eax,dword ptr [ebx+36C];TCustomListView.?f36C:dword
 004B1F7B    call        dword ptr [ebx+368];TCustomListView.FOnSelectItem
 004B1F81    mov         eax,dword ptr [ebp-4]
 004B1F84    mov         edx,dword ptr [eax]
 004B1F86    call        dword ptr [edx+3C];TSpeedButton.GetAction
 004B1F89    test        eax,eax
>004B1F8B    je          004B1FF8
 004B1F8D    mov         eax,dword ptr [ebp-4]
 004B1F90    test        byte ptr [eax+1C],10;TCustomListView.FComponentState:TComponentState
>004B1F94    jne         004B1FF8
 004B1F96    mov         eax,dword ptr [ebp-4]
 004B1F99    cmp         dword ptr [eax+6C],0;TCustomListView.FActionLink:TControlActionLink
>004B1F9D    je          004B1FF8
 004B1F9F    mov         eax,dword ptr [ebp-4]
 004B1FA2    mov         eax,dword ptr [eax+6C];TCustomListView.FActionLink:TControlActionLink
 004B1FA5    mov         edx,dword ptr [ebp-4]
 004B1FA8    mov         ecx,dword ptr [eax]
 004B1FAA    call        dword ptr [ecx+18];TControlActionLink.sub_00483C70
>004B1FAD    jmp         004B1FF8
 004B1FAF    mov         eax,dword ptr [ebp-4]
 004B1FB2    cmp         word ptr [eax+35A],0;TCustomListView.?f35A:word
>004B1FBA    je          004B1FF8
 004B1FBC    lea         edx,[ebp-0DC]
 004B1FC2    mov         eax,[0055B688];^gvar_0055DDAC
 004B1FC7    mov         eax,dword ptr [eax]
 004B1FC9    call        004D95A4
 004B1FCE    lea         edx,[ebp-0DC]
 004B1FD4    mov         eax,[0055B4C8];^Application:TApplication
 004B1FD9    mov         eax,dword ptr [eax]
 004B1FDB    call        004F3FD8
>004B1FE0    jmp         004B1FF8
 004B1FE2    mov         eax,dword ptr [ebp-4]
 004B1FE5    mov         byte ptr [eax+230],1;TCustomListView.FClicked:Boolean
>004B1FEC    jmp         004B1FF8
 004B1FEE    mov         eax,dword ptr [ebp-4]
 004B1FF1    mov         byte ptr [eax+231],1;TCustomListView.FRClicked:Boolean
 004B1FF8    xor         eax,eax
 004B1FFA    pop         edx
 004B1FFB    pop         ecx
 004B1FFC    pop         ecx
 004B1FFD    mov         dword ptr fs:[eax],edx
 004B2000    push        4B2020
 004B2005    lea         eax,[ebp-0D4]
 004B200B    call        @LStrClr
 004B2010    lea         eax,[ebp-18]
 004B2013    call        @LStrClr
 004B2018    ret
>004B2019    jmp         @HandleFinally
>004B201E    jmp         004B2005
 004B2020    pop         esi
 004B2021    pop         ebx
 004B2022    mov         esp,ebp
 004B2024    pop         ebp
 004B2025    ret
end;*}

//004B2028
{*procedure TCustomListView.sub_004B2028(?:?; ?:?);
begin
 004B2028    push        ebp
 004B2029    mov         ebp,esp
 004B202B    add         esp,0FFFFFFEC
 004B202E    mov         dword ptr [ebp-0C],ecx
 004B2031    mov         dword ptr [ebp-8],edx
 004B2034    mov         dword ptr [ebp-4],eax
 004B2037    mov         eax,dword ptr [ebp-4]
 004B203A    test        byte ptr [eax+98],4;TCustomListView.FScalingFlags:TScalingFlags
>004B2041    je          004B20A5
 004B2043    mov         eax,dword ptr [ebp-4]
 004B2046    mov         eax,dword ptr [eax+23C];TCustomListView.FListColumns:TListColumns
 004B204C    call        00479B60
 004B2051    dec         eax
 004B2052    test        eax,eax
>004B2054    jl          004B20A5
 004B2056    inc         eax
 004B2057    mov         dword ptr [ebp-14],eax
 004B205A    mov         dword ptr [ebp-10],0
 004B2061    mov         eax,dword ptr [ebp-0C]
 004B2064    push        eax
 004B2065    mov         eax,dword ptr [ebp-8]
 004B2068    push        eax
 004B2069    mov         edx,dword ptr [ebp-10]
 004B206C    mov         eax,dword ptr [ebp-4]
 004B206F    mov         eax,dword ptr [eax+23C];TCustomListView.FListColumns:TListColumns
 004B2075    call        004AD570
 004B207A    call        TListColumn.GetWidth
 004B207F    push        eax
 004B2080    call        kernel32.MulDiv
 004B2085    push        eax
 004B2086    mov         edx,dword ptr [ebp-10]
 004B2089    mov         eax,dword ptr [ebp-4]
 004B208C    mov         eax,dword ptr [eax+23C];TCustomListView.FListColumns:TListColumns
 004B2092    call        004AD570
 004B2097    pop         edx
 004B2098    call        TListColumn.SetWidth
 004B209D    inc         dword ptr [ebp-10]
 004B20A0    dec         dword ptr [ebp-14]
>004B20A3    jne         004B2061
 004B20A5    mov         ecx,dword ptr [ebp-0C]
 004B20A8    mov         edx,dword ptr [ebp-8]
 004B20AB    mov         eax,dword ptr [ebp-4]
 004B20AE    call        TWinControl.sub_004CAA18
 004B20B3    mov         esp,ebp
 004B20B5    pop         ebp
 004B20B6    ret
end;*}

//004B20B8
{*procedure TCustomListView.sub_004B20B8(?:?);
begin
 004B20B8    push        ebp
 004B20B9    mov         ebp,esp
 004B20BB    add         esp,0FFFFFFF8
 004B20BE    push        ebx
 004B20BF    mov         dword ptr [ebp-8],edx
 004B20C2    mov         dword ptr [ebp-4],eax
 004B20C5    mov         eax,dword ptr [ebp-4]
 004B20C8    cmp         word ptr [eax+2D2],0;TCustomListView.?f2D2:word
>004B20D0    je          004B20E7
 004B20D2    mov         ebx,dword ptr [ebp-4]
 004B20D5    mov         ecx,dword ptr [ebp-8]
 004B20D8    mov         edx,dword ptr [ebp-4]
 004B20DB    mov         eax,dword ptr [ebx+2D4];TCustomListView.?f2D4:dword
 004B20E1    call        dword ptr [ebx+2D0];TCustomListView.FOnColumnClick
 004B20E7    pop         ebx
 004B20E8    pop         ecx
 004B20E9    pop         ecx
 004B20EA    pop         ebp
 004B20EB    ret
end;*}

//004B20EC
{*procedure TCustomListView.sub_004B20EC(?:?; ?:?);
begin
 004B20EC    push        ebp
 004B20ED    mov         ebp,esp
 004B20EF    add         esp,0FFFFFFF0
 004B20F2    push        ebx
 004B20F3    push        esi
 004B20F4    push        edi
 004B20F5    mov         esi,ecx
 004B20F7    lea         edi,[ebp-10]
 004B20FA    movs        dword ptr [edi],dword ptr [esi]
 004B20FB    movs        dword ptr [edi],dword ptr [esi]
 004B20FC    mov         dword ptr [ebp-8],edx
 004B20FF    mov         dword ptr [ebp-4],eax
 004B2102    mov         eax,dword ptr [ebp-4]
 004B2105    cmp         word ptr [eax+2E2],0;TCustomListView.?f2E2:word
>004B210D    je          004B2128
 004B210F    lea         eax,[ebp-10]
 004B2112    push        eax
 004B2113    mov         ebx,dword ptr [ebp-4]
 004B2116    mov         ecx,dword ptr [ebp-8]
 004B2119    mov         edx,dword ptr [ebp-4]
 004B211C    mov         eax,dword ptr [ebx+2E4];TCustomListView.?f2E4:dword
 004B2122    call        dword ptr [ebx+2E0];TCustomListView.FOnColumnRightClick
 004B2128    pop         edi
 004B2129    pop         esi
 004B212A    pop         ebx
 004B212B    mov         esp,ebp
 004B212D    pop         ebp
 004B212E    ret
end;*}

//004B2130
{*procedure TCustomListView.sub_004B2130(?:?);
begin
 004B2130    push        ebp
 004B2131    mov         ebp,esp
 004B2133    add         esp,0FFFFFFF8
 004B2136    push        ebx
 004B2137    mov         dword ptr [ebp-8],edx
 004B213A    mov         dword ptr [ebp-4],eax
 004B213D    mov         eax,dword ptr [ebp-4]
 004B2140    cmp         word ptr [eax+362],0;TCustomListView.?f362:word
>004B2148    je          004B215F
 004B214A    mov         ebx,dword ptr [ebp-4]
 004B214D    mov         ecx,dword ptr [ebp-8]
 004B2150    mov         edx,dword ptr [ebp-4]
 004B2153    mov         eax,dword ptr [ebx+364];TCustomListView.?f364:dword
 004B2159    call        dword ptr [ebx+360];TCustomListView.FOnInsert
 004B215F    pop         ebx
 004B2160    pop         ecx
 004B2161    pop         ecx
 004B2162    pop         ebp
 004B2163    ret
end;*}

//004B2164
{*procedure sub_004B2164(?:?; ?:?);
begin
 004B2164    push        ebp
 004B2165    mov         ebp,esp
 004B2167    add         esp,0FFFFFFF0
 004B216A    mov         dword ptr [ebp-0C],ecx
 004B216D    mov         dword ptr [ebp-8],edx
 004B2170    mov         dword ptr [ebp-4],eax
 004B2173    mov         eax,dword ptr [ebp-8]
 004B2176    call        @LStrAddRef
 004B217B    xor         eax,eax
 004B217D    push        ebp
 004B217E    push        4B21C6
 004B2183    push        dword ptr fs:[eax]
 004B2186    mov         dword ptr fs:[eax],esp
 004B2189    mov         eax,dword ptr [ebp-4]
 004B218C    mov         eax,dword ptr [eax+22C];TCustomListView.FListItems:TListItems
 004B2192    call        004AE674
 004B2197    mov         dword ptr [ebp-10],eax
 004B219A    mov         edx,dword ptr [ebp-8]
 004B219D    mov         eax,dword ptr [ebp-10]
 004B21A0    call        004ADF4C
 004B21A5    mov         edx,dword ptr [ebp-0C]
 004B21A8    mov         eax,dword ptr [ebp-10]
 004B21AB    call        004AE018
 004B21B0    xor         eax,eax
 004B21B2    pop         edx
 004B21B3    pop         ecx
 004B21B4    pop         ecx
 004B21B5    mov         dword ptr fs:[eax],edx
 004B21B8    push        4B21CD
 004B21BD    lea         eax,[ebp-8]
 004B21C0    call        @LStrClr
 004B21C5    ret
>004B21C6    jmp         @HandleFinally
>004B21CB    jmp         004B21BD
 004B21CD    mov         esp,ebp
 004B21CF    pop         ebp
 004B21D0    ret
end;*}

//004B21D4
{*procedure TCustomListView.sub_004B21D4(?:?; ?:?);
begin
 004B21D4    push        ebp
 004B21D5    mov         ebp,esp
 004B21D7    add         esp,0FFFFFFF0
 004B21DA    push        ebx
 004B21DB    mov         dword ptr [ebp-0C],ecx
 004B21DE    mov         dword ptr [ebp-8],edx
 004B21E1    mov         dword ptr [ebp-4],eax
 004B21E4    mov         byte ptr [ebp-0D],1
 004B21E8    mov         eax,dword ptr [ebp-0C]
 004B21EB    dec         eax
>004B21EC    je          004B21F8
 004B21EE    dec         eax
>004B21EF    je          004B21FE
 004B21F1    sub         eax,6
>004B21F4    je          004B2204
>004B21F6    jmp         004B2232
 004B21F8    mov         byte ptr [ebp-0E],0
>004B21FC    jmp         004B2208
 004B21FE    mov         byte ptr [ebp-0E],1
>004B2202    jmp         004B2208
 004B2204    mov         byte ptr [ebp-0E],2
 004B2208    mov         eax,dword ptr [ebp-4]
 004B220B    cmp         word ptr [eax+2CA],0;TCustomListView.?f2CA:word
>004B2213    je          004B2232
 004B2215    mov         al,byte ptr [ebp-0E]
 004B2218    push        eax
 004B2219    lea         eax,[ebp-0D]
 004B221C    push        eax
 004B221D    mov         ebx,dword ptr [ebp-4]
 004B2220    mov         ecx,dword ptr [ebp-8]
 004B2223    mov         edx,dword ptr [ebp-4]
 004B2226    mov         eax,dword ptr [ebx+2CC];TCustomListView.?f2CC:dword
 004B222C    call        dword ptr [ebx+2C8];TCustomListView.FOnChanging
 004B2232    mov         al,byte ptr [ebp-0D]
 004B2235    pop         ebx
 004B2236    mov         esp,ebp
 004B2238    pop         ebp
 004B2239    ret
end;*}

//004B223C
{*procedure TCustomListView.sub_004B223C(?:?; ?:?);
begin
 004B223C    push        ebp
 004B223D    mov         ebp,esp
 004B223F    add         esp,0FFFFFFF0
 004B2242    push        ebx
 004B2243    mov         dword ptr [ebp-0C],ecx
 004B2246    mov         dword ptr [ebp-8],edx
 004B2249    mov         dword ptr [ebp-4],eax
 004B224C    mov         eax,dword ptr [ebp-0C]
 004B224F    dec         eax
>004B2250    je          004B225C
 004B2252    dec         eax
>004B2253    je          004B2262
 004B2255    sub         eax,6
>004B2258    je          004B2268
>004B225A    jmp         004B2292
 004B225C    mov         byte ptr [ebp-0D],0
>004B2260    jmp         004B226C
 004B2262    mov         byte ptr [ebp-0D],1
>004B2266    jmp         004B226C
 004B2268    mov         byte ptr [ebp-0D],2
 004B226C    mov         eax,dword ptr [ebp-4]
 004B226F    cmp         word ptr [eax+2C2],0;TCustomListView.?f2C2:word
>004B2277    je          004B2292
 004B2279    mov         al,byte ptr [ebp-0D]
 004B227C    push        eax
 004B227D    mov         ebx,dword ptr [ebp-4]
 004B2280    mov         ecx,dword ptr [ebp-8]
 004B2283    mov         edx,dword ptr [ebp-4]
 004B2286    mov         eax,dword ptr [ebx+2C4];TCustomListView.?f2C4:dword
 004B228C    call        dword ptr [ebx+2C0];TCustomListView.FOnChange
 004B2292    pop         ebx
 004B2293    mov         esp,ebp
 004B2295    pop         ebp
 004B2296    ret
end;*}

//004B2298
{*procedure TCustomListView.sub_004B2298(?:?);
begin
 004B2298    push        ebp
 004B2299    mov         ebp,esp
 004B229B    add         esp,0FFFFFFF8
 004B229E    push        ebx
 004B229F    mov         dword ptr [ebp-8],edx
 004B22A2    mov         dword ptr [ebp-4],eax
 004B22A5    cmp         dword ptr [ebp-8],0
>004B22A9    je          004B22E5
 004B22AB    mov         eax,dword ptr [ebp-8]
 004B22AE    cmp         byte ptr [eax+29],0
>004B22B2    jne         004B22E5
 004B22B4    mov         eax,dword ptr [ebp-4]
 004B22B7    cmp         word ptr [eax+32A],0;TCustomListView.?f32A:word
>004B22BF    je          004B22D6
 004B22C1    mov         ebx,dword ptr [ebp-4]
 004B22C4    mov         ecx,dword ptr [ebp-8]
 004B22C7    mov         edx,dword ptr [ebp-4]
 004B22CA    mov         eax,dword ptr [ebx+32C];TCustomListView.?f32C:dword
 004B22D0    call        dword ptr [ebx+328];TCustomListView.FOnDeletion
 004B22D6    mov         eax,dword ptr [ebp-8]
 004B22D9    mov         byte ptr [eax+29],1
 004B22DD    mov         eax,dword ptr [ebp-8]
 004B22E0    call        004ADE18
 004B22E5    pop         ebx
 004B22E6    pop         ecx
 004B22E7    pop         ecx
 004B22E8    pop         ebp
 004B22E9    ret
end;*}

//004B22EC
{*procedure TCustomListView.sub_004B22EC(?:?);
begin
 004B22EC    push        ebp
 004B22ED    mov         ebp,esp
 004B22EF    add         esp,0FFFFFFF4
 004B22F2    push        ebx
 004B22F3    mov         dword ptr [ebp-8],edx
 004B22F6    mov         dword ptr [ebp-4],eax
 004B22F9    mov         byte ptr [ebp-9],1
 004B22FD    mov         eax,dword ptr [ebp-4]
 004B2300    cmp         word ptr [eax+342],0;TCustomListView.?f342:word
>004B2308    je          004B2323
 004B230A    lea         eax,[ebp-9]
 004B230D    push        eax
 004B230E    mov         ebx,dword ptr [ebp-4]
 004B2311    mov         ecx,dword ptr [ebp-8]
 004B2314    mov         edx,dword ptr [ebp-4]
 004B2317    mov         eax,dword ptr [ebx+344];TCustomListView.?f344:dword
 004B231D    call        dword ptr [ebx+340];TCustomListView.FOnEditing
 004B2323    mov         al,byte ptr [ebp-9]
 004B2326    pop         ebx
 004B2327    mov         esp,ebp
 004B2329    pop         ebp
 004B232A    ret
end;*}

//004B232C
{*procedure TCustomListView.sub_004B232C(?:?);
begin
 004B232C    push        ebp
 004B232D    mov         ebp,esp
 004B232F    add         esp,0FFFFFFF0
 004B2332    push        ebx
 004B2333    xor         ecx,ecx
 004B2335    mov         dword ptr [ebp-0C],ecx
 004B2338    mov         dword ptr [ebp-8],edx
 004B233B    mov         dword ptr [ebp-4],eax
 004B233E    xor         eax,eax
 004B2340    push        ebp
 004B2341    push        4B23B5
 004B2346    push        dword ptr fs:[eax]
 004B2349    mov         dword ptr fs:[eax],esp
 004B234C    lea         eax,[ebp-0C]
 004B234F    mov         edx,dword ptr [ebp-8]
 004B2352    mov         edx,dword ptr [edx+14]
 004B2355    call        @LStrFromPChar
 004B235A    mov         edx,dword ptr [ebp-8]
 004B235D    mov         eax,dword ptr [ebp-4]
 004B2360    call        004B0F90
 004B2365    mov         dword ptr [ebp-10],eax
 004B2368    mov         eax,dword ptr [ebp-4]
 004B236B    cmp         word ptr [eax+33A],0;TCustomListView.?f33A:word
>004B2373    je          004B238E
 004B2375    lea         eax,[ebp-0C]
 004B2378    push        eax
 004B2379    mov         ebx,dword ptr [ebp-4]
 004B237C    mov         ecx,dword ptr [ebp-10]
 004B237F    mov         edx,dword ptr [ebp-4]
 004B2382    mov         eax,dword ptr [ebx+33C];TCustomListView.?f33C:dword
 004B2388    call        dword ptr [ebx+338];TCustomListView.FOnEdited
 004B238E    cmp         dword ptr [ebp-10],0
>004B2392    je          004B239F
 004B2394    mov         edx,dword ptr [ebp-0C]
 004B2397    mov         eax,dword ptr [ebp-10]
 004B239A    call        004ADF4C
 004B239F    xor         eax,eax
 004B23A1    pop         edx
 004B23A2    pop         ecx
 004B23A3    pop         ecx
 004B23A4    mov         dword ptr fs:[eax],edx
 004B23A7    push        4B23BC
 004B23AC    lea         eax,[ebp-0C]
 004B23AF    call        @LStrClr
 004B23B4    ret
>004B23B5    jmp         @HandleFinally
>004B23BA    jmp         004B23AC
 004B23BC    pop         ebx
 004B23BD    mov         esp,ebp
 004B23BF    pop         ebp
 004B23C0    ret
end;*}

//004B23C4
{*function sub_004B23C4:?;
begin
 004B23C4    push        ebp
 004B23C5    mov         ebp,esp
 004B23C7    add         esp,0FFFFFFF8
 004B23CA    mov         dword ptr [ebp-4],eax
 004B23CD    mov         eax,dword ptr [ebp-4]
 004B23D0    mov         edx,dword ptr [eax]
 004B23D2    call        dword ptr [edx+0F0];TCustomListView.sub_004B1100
 004B23D8    dec         eax
>004B23D9    jne         004B23E9
 004B23DB    mov         eax,dword ptr [ebp-4]
 004B23DE    mov         eax,dword ptr [eax+224];TCustomListView.FDragImage:TDragImageList
 004B23E4    mov         dword ptr [ebp-8],eax
>004B23E7    jmp         004B23EE
 004B23E9    xor         eax,eax
 004B23EB    mov         dword ptr [ebp-8],eax
 004B23EE    mov         eax,dword ptr [ebp-8]
 004B23F1    pop         ecx
 004B23F2    pop         ecx
 004B23F3    pop         ebp
 004B23F4    ret
end;*}

//004B23F8
{*procedure sub_004B23F8(?:?);
begin
 004B23F8    push        ebp
 004B23F9    mov         ebp,esp
 004B23FB    add         esp,0FFFFFFF8
 004B23FE    mov         dword ptr [ebp-8],edx
 004B2401    mov         dword ptr [ebp-4],eax
 004B2404    mov         eax,dword ptr [ebp-4]
 004B2407    test        byte ptr [eax+1C],10;TCustomListView.FComponentState:TComponentState
>004B240B    jne         004B2468
 004B240D    mov         eax,dword ptr [ebp-8]
 004B2410    cmp         dword ptr [eax],201
>004B2416    je          004B2423
 004B2418    mov         eax,dword ptr [ebp-8]
 004B241B    cmp         dword ptr [eax],203
>004B2421    jne         004B2468
 004B2423    mov         eax,dword ptr [ebp-4]
 004B2426    call        004CBAA4
 004B242B    test        al,al
>004B242D    jne         004B2468
 004B242F    mov         eax,dword ptr [ebp-4]
 004B2432    cmp         byte ptr [eax+5D],1;TCustomListView.FDragMode:TDragMode
>004B2436    jne         004B2468
 004B2438    mov         edx,dword ptr [ebp-8]
 004B243B    mov         eax,dword ptr [ebp-4]
 004B243E    call        004D05E8
 004B2443    test        al,al
>004B2445    jne         004B2492
 004B2447    mov         ax,[004B2498];0x1 gvar_004B2498
 004B244D    mov         edx,dword ptr [ebp-4]
 004B2450    or          ax,word ptr [edx+54];TCustomListView.FControlState:TControlState
 004B2454    mov         edx,dword ptr [ebp-4]
 004B2457    mov         word ptr [edx+54],ax;TCustomListView.FControlState:TControlState
 004B245B    mov         edx,dword ptr [ebp-8]
 004B245E    mov         eax,dword ptr [ebp-4]
 004B2461    mov         ecx,dword ptr [eax]
 004B2463    call        dword ptr [ecx-14];TObject.Dispatch
>004B2466    jmp         004B2492
 004B2468    mov         eax,dword ptr [ebp-8]
 004B246B    cmp         dword ptr [eax],0F
>004B246E    je          004B2478
 004B2470    mov         eax,dword ptr [ebp-8]
 004B2473    cmp         dword ptr [eax],14
>004B2476    jne         004B2487
 004B2478    mov         eax,dword ptr [ebp-4]
 004B247B    mov         eax,dword ptr [eax+22C];TCustomListView.FListItems:TListItems
 004B2481    cmp         byte ptr [eax+0C],0;TListItems.FNoRedraw:Boolean
>004B2485    jne         004B2492
 004B2487    mov         edx,dword ptr [ebp-8]
 004B248A    mov         eax,dword ptr [ebp-4]
 004B248D    call        004D06A8
 004B2492    pop         ecx
 004B2493    pop         ecx
 004B2494    pop         ebp
 004B2495    ret
end;*}

//004B249C
{*procedure TCustomListView.sub_004B249C(?:?);
begin
 004B249C    push        ebp
 004B249D    mov         ebp,esp
 004B249F    add         esp,0FFFFFFC4
 004B24A2    mov         dword ptr [ebp-8],edx
 004B24A5    mov         dword ptr [ebp-4],eax
 004B24A8    mov         edx,dword ptr [ebp-8]
 004B24AB    mov         eax,dword ptr [ebp-4]
 004B24AE    call        TControl.sub_004CBB5C
 004B24B3    mov         eax,dword ptr [ebp-4]
 004B24B6    xor         edx,edx
 004B24B8    mov         dword ptr [eax+270],edx;TCustomListView.FLastDropTarget:TListItem
 004B24BE    lea         eax,[ebp-10]
 004B24C1    push        eax
 004B24C2    call        user32.GetCursorPos
 004B24C7    lea         ecx,[ebp-3C]
 004B24CA    lea         edx,[ebp-10]
 004B24CD    mov         eax,dword ptr [ebp-4]
 004B24D0    call        TControl.ScreenToClient
 004B24D5    mov         eax,dword ptr [ebp-3C]
 004B24D8    mov         dword ptr [ebp-10],eax
 004B24DB    mov         eax,dword ptr [ebp-38]
 004B24DE    mov         dword ptr [ebp-0C],eax
 004B24E1    mov         eax,dword ptr [ebp-4]
 004B24E4    cmp         dword ptr [eax+26C],0FFFFFFFF;TCustomListView.FDragIndex:Integer
>004B24EB    je          004B2509
 004B24ED    mov         eax,dword ptr [ebp-4]
 004B24F0    mov         edx,dword ptr [eax+26C];TCustomListView.FDragIndex:Integer
 004B24F6    mov         eax,dword ptr [ebp-4]
 004B24F9    mov         eax,dword ptr [eax+22C];TCustomListView.FListItems:TListItems
 004B24FF    call        004AE758
 004B2504    mov         dword ptr [ebp-20],eax
>004B2507    jmp         004B250E
 004B2509    xor         eax,eax
 004B250B    mov         dword ptr [ebp-20],eax
 004B250E    mov         eax,dword ptr [ebp-4]
 004B2511    mov         dword ptr [eax+26C],0FFFFFFFF;TCustomListView.FDragIndex:Integer
 004B251B    cmp         dword ptr [ebp-20],0
>004B251F    jne         004B2532
 004B2521    mov         ecx,dword ptr [ebp-0C]
 004B2524    mov         edx,dword ptr [ebp-10]
 004B2527    mov         eax,dword ptr [ebp-4]
 004B252A    call        004B2E44
 004B252F    mov         dword ptr [ebp-20],eax
 004B2532    cmp         dword ptr [ebp-20],0
>004B2536    je          004B2596
 004B2538    mov         eax,dword ptr [ebp-20]
 004B253B    call        004AE4CC
 004B2540    push        eax
 004B2541    mov         eax,dword ptr [ebp-4]
 004B2544    call        TWinControl.GetHandle
 004B2549    lea         ecx,[ebp-18]
 004B254C    pop         edx
 004B254D    call        0042F7F4
 004B2552    mov         dword ptr [ebp-1C],eax
 004B2555    cmp         dword ptr [ebp-1C],0
>004B2559    je          004B2596
 004B255B    mov         eax,dword ptr [ebp-4]
 004B255E    mov         eax,dword ptr [eax+224];TCustomListView.FDragImage:TDragImageList
 004B2564    mov         dword ptr [ebp-24],eax
 004B2567    mov         edx,dword ptr [ebp-1C]
 004B256A    mov         eax,dword ptr [ebp-24]
 004B256D    call        004DC6E8
 004B2572    lea         ecx,[ebp-34]
 004B2575    xor         edx,edx
 004B2577    mov         eax,dword ptr [ebp-20]
 004B257A    call        004AE50C
 004B257F    mov         eax,dword ptr [ebp-0C]
 004B2582    sub         eax,dword ptr [ebp-30]
 004B2585    push        eax
 004B2586    mov         ecx,dword ptr [ebp-10]
 004B2589    sub         ecx,dword ptr [ebp-34]
 004B258C    xor         edx,edx
 004B258E    mov         eax,dword ptr [ebp-24]
 004B2591    call        004D59D8
 004B2596    mov         esp,ebp
 004B2598    pop         ebp
 004B2599    ret
end;*}

//004B259C
{*procedure TCustomListView.sub_004B259C(?:?; ?:?; ?:?);
begin
 004B259C    push        ebp
 004B259D    mov         ebp,esp
 004B259F    add         esp,0FFFFFFF4
 004B25A2    mov         dword ptr [ebp-0C],ecx
 004B25A5    mov         dword ptr [ebp-8],edx
 004B25A8    mov         dword ptr [ebp-4],eax
 004B25AB    mov         eax,dword ptr [ebp+8]
 004B25AE    push        eax
 004B25AF    mov         ecx,dword ptr [ebp-0C]
 004B25B2    mov         edx,dword ptr [ebp-8]
 004B25B5    mov         eax,dword ptr [ebp-4]
 004B25B8    call        TControl.sub_004CBB90
 004B25BD    mov         eax,dword ptr [ebp-4]
 004B25C0    mov         eax,dword ptr [eax+224];TCustomListView.FDragImage:TDragImageList
 004B25C6    call        004D5C74
 004B25CB    mov         eax,dword ptr [ebp-4]
 004B25CE    xor         edx,edx
 004B25D0    mov         dword ptr [eax+270],edx;TCustomListView.FLastDropTarget:TListItem
 004B25D6    mov         esp,ebp
 004B25D8    pop         ebp
 004B25D9    ret         4
end;*}

//004B25DC
{*procedure TCustomListView.CMDrag(?:?);
begin
 004B25DC    push        ebp
 004B25DD    mov         ebp,esp
 004B25DF    add         esp,0FFFFFFD8
 004B25E2    mov         dword ptr [ebp-8],edx
 004B25E5    mov         dword ptr [ebp-4],eax
 004B25E8    mov         edx,dword ptr [ebp-8]
 004B25EB    mov         eax,dword ptr [ebp-4]
 004B25EE    call        TWinControl.CMDrag
 004B25F3    mov         eax,dword ptr [ebp-8]
 004B25F6    mov         eax,dword ptr [eax+8]
 004B25F9    mov         dword ptr [ebp-14],eax
 004B25FC    mov         eax,dword ptr [ebp-8]
 004B25FF    mov         al,byte ptr [eax+4]
 004B2602    dec         al
>004B2604    je          004B2648
 004B2606    dec         al
>004B2608    je          004B2613
 004B260A    dec         al
>004B260C    je          004B2689
>004B260E    jmp         004B274A
 004B2613    lea         ecx,[ebp-1C]
 004B2616    mov         eax,dword ptr [ebp-14]
 004B2619    mov         edx,eax
 004B261B    mov         eax,dword ptr [ebp-4]
 004B261E    call        TControl.ScreenToClient
 004B2623    mov         eax,dword ptr [ebp-18]
 004B2626    push        eax
 004B2627    mov         eax,dword ptr [ebp-8]
 004B262A    cmp         dword ptr [eax+0C],0
 004B262E    setne       al
 004B2631    push        eax
 004B2632    mov         eax,dword ptr [ebp-14]
 004B2635    mov         edx,dword ptr [eax+8]
 004B2638    mov         ecx,dword ptr [ebp-1C]
 004B263B    mov         eax,dword ptr [ebp-4]
 004B263E    call        004B2750
>004B2643    jmp         004B274A
 004B2648    mov         eax,dword ptr [ebp-14]
 004B264B    mov         eax,dword ptr [eax+8]
 004B264E    mov         edx,dword ptr [eax]
 004B2650    call        dword ptr [edx+18]
 004B2653    mov         eax,dword ptr [ebp-4]
 004B2656    call        004B2C14
 004B265B    mov         edx,dword ptr [ebp-4]
 004B265E    mov         dword ptr [edx+270],eax;TCustomListView.FLastDropTarget:TListItem
 004B2664    xor         edx,edx
 004B2666    mov         eax,dword ptr [ebp-4]
 004B2669    call        004B2C50
 004B266E    mov         eax,dword ptr [ebp-4]
 004B2671    mov         edx,dword ptr [eax]
 004B2673    call        dword ptr [edx+88];TCustomListView.sub_004D3720
 004B2679    mov         eax,dword ptr [ebp-14]
 004B267C    mov         eax,dword ptr [eax+8]
 004B267F    mov         edx,dword ptr [eax]
 004B2681    call        dword ptr [edx+20]
>004B2684    jmp         004B274A
 004B2689    mov         eax,dword ptr [ebp-4]
 004B268C    xor         edx,edx
 004B268E    mov         dword ptr [eax+270],edx;TCustomListView.FLastDropTarget:TListItem
 004B2694    mov         eax,dword ptr [ebp-4]
 004B2697    cmp         byte ptr [eax+244],0;TCustomListView.FOwnerData:Boolean
>004B269E    je          004B274A
 004B26A4    mov         eax,dword ptr [ebp-4]
 004B26A7    mov         al,byte ptr [eax+215];TCustomListView.FViewStyle:TViewStyle
 004B26AD    sub         al,2
>004B26AF    jae         004B26CF
 004B26B1    lea         ecx,[ebp-28]
 004B26B4    xor         edx,edx
 004B26B6    xor         eax,eax
 004B26B8    call        00406EBC
 004B26BD    lea         edx,[ebp-28]
 004B26C0    mov         cl,4
 004B26C2    mov         eax,dword ptr [ebp-4]
 004B26C5    call        004B2DCC
 004B26CA    mov         dword ptr [ebp-10],eax
>004B26CD    jmp         004B26DA
 004B26CF    mov         eax,dword ptr [ebp-4]
 004B26D2    call        004B28FC
 004B26D7    mov         dword ptr [ebp-10],eax
 004B26DA    cmp         dword ptr [ebp-10],0
>004B26DE    je          004B274A
 004B26E0    mov         eax,dword ptr [ebp-10]
 004B26E3    call        004AE4CC
 004B26E8    push        eax
 004B26E9    mov         eax,dword ptr [ebp-4]
 004B26EC    mov         eax,dword ptr [eax+22C];TCustomListView.FListItems:TListItems
 004B26F2    call        004AE700
 004B26F7    dec         eax
 004B26F8    pop         edx
 004B26F9    sub         eax,edx
>004B26FB    jl          004B274A
 004B26FD    inc         eax
 004B26FE    mov         dword ptr [ebp-20],eax
 004B2701    mov         dword ptr [ebp-0C],edx
 004B2704    mov         edx,dword ptr [ebp-0C]
 004B2707    mov         eax,dword ptr [ebp-4]
 004B270A    mov         eax,dword ptr [eax+22C];TCustomListView.FListItems:TListItems
 004B2710    call        004AE758
 004B2715    mov         edx,1
 004B271A    call        004AE060
 004B271F    test        al,al
>004B2721    je          004B2742
 004B2723    mov         edx,dword ptr [ebp-0C]
 004B2726    mov         eax,dword ptr [ebp-4]
 004B2729    mov         eax,dword ptr [eax+22C];TCustomListView.FListItems:TListItems
 004B272F    call        004AE758
 004B2734    xor         ecx,ecx
 004B2736    mov         edx,1
 004B273B    call        004AE0EC
>004B2740    jmp         004B274A
 004B2742    inc         dword ptr [ebp-0C]
 004B2745    dec         dword ptr [ebp-20]
>004B2748    jne         004B2704
 004B274A    mov         esp,ebp
 004B274C    pop         ebp
 004B274D    ret
end;*}

//004B2750
{*procedure sub_004B2750(?:TCustomListView; ?:?; ?:?; ?:?; ?:?);
begin
 004B2750    push        ebp
 004B2751    mov         ebp,esp
 004B2753    add         esp,0FFFFFFEC
 004B2756    mov         dword ptr [ebp-0C],ecx
 004B2759    mov         dword ptr [ebp-8],edx
 004B275C    mov         dword ptr [ebp-4],eax
 004B275F    mov         ecx,dword ptr [ebp+0C]
 004B2762    mov         edx,dword ptr [ebp-0C]
 004B2765    mov         eax,dword ptr [ebp-4]
 004B2768    call        004B2E44
 004B276D    mov         dword ptr [ebp-10],eax
 004B2770    cmp         dword ptr [ebp-10],0
>004B2774    je          004B27ED
 004B2776    mov         eax,dword ptr [ebp-4]
 004B2779    call        004B2C14
 004B277E    mov         dword ptr [ebp-14],eax
 004B2781    mov         eax,dword ptr [ebp-10]
 004B2784    cmp         eax,dword ptr [ebp-14]
>004B2787    jne         004B2797
 004B2789    mov         eax,dword ptr [ebp-10]
 004B278C    mov         edx,dword ptr [ebp-4]
 004B278F    cmp         eax,dword ptr [edx+270];TCustomListView.FLastDropTarget:TListItem
>004B2795    jne         004B27ED
 004B2797    mov         eax,dword ptr [ebp-4]
 004B279A    xor         edx,edx
 004B279C    mov         dword ptr [eax+270],edx;TCustomListView.FLastDropTarget:TListItem
 004B27A2    mov         eax,dword ptr [ebp-8]
 004B27A5    mov         edx,dword ptr [eax]
 004B27A7    call        dword ptr [edx+18]
 004B27AA    mov         eax,dword ptr [ebp-4]
 004B27AD    mov         edx,dword ptr [eax]
 004B27AF    call        dword ptr [edx+88];TCustomListView.sub_004D3720
 004B27B5    cmp         dword ptr [ebp-14],0
>004B27B9    je          004B27CA
 004B27BB    xor         ecx,ecx
 004B27BD    mov         edx,1
 004B27C2    mov         eax,dword ptr [ebp-14]
 004B27C5    call        004AE0EC
 004B27CA    mov         cl,byte ptr [ebp+8]
 004B27CD    mov         edx,1
 004B27D2    mov         eax,dword ptr [ebp-10]
 004B27D5    call        004AE0EC
 004B27DA    mov         eax,dword ptr [ebp-4]
 004B27DD    mov         edx,dword ptr [eax]
 004B27DF    call        dword ptr [edx+88];TCustomListView.sub_004D3720
 004B27E5    mov         eax,dword ptr [ebp-8]
 004B27E8    mov         edx,dword ptr [eax]
 004B27EA    call        dword ptr [edx+20]
 004B27ED    mov         esp,ebp
 004B27EF    pop         ebp
 004B27F0    ret         8
end;*}

//004B27F4
procedure TListView.SetItems(Value:TListItems);
begin
{*
 004B27F4    push        ebp
 004B27F5    mov         ebp,esp
 004B27F7    add         esp,0FFFFFFF8
 004B27FA    mov         dword ptr [ebp-8],edx
 004B27FD    mov         dword ptr [ebp-4],eax
 004B2800    mov         edx,dword ptr [ebp-8]
 004B2803    mov         eax,dword ptr [ebp-4]
 004B2806    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 004B280C    mov         ecx,dword ptr [eax]
 004B280E    call        dword ptr [ecx+8];TListItems.sub_004AEAC8
 004B2811    pop         ecx
 004B2812    pop         ecx
 004B2813    pop         ebp
 004B2814    ret
*}
end;

//004B2818
procedure TListView.SetColumns(Value:TListColumns);
begin
{*
 004B2818    push        ebp
 004B2819    mov         ebp,esp
 004B281B    add         esp,0FFFFFFF8
 004B281E    mov         dword ptr [ebp-8],edx
 004B2821    mov         dword ptr [ebp-4],eax
 004B2824    mov         edx,dword ptr [ebp-8]
 004B2827    mov         eax,dword ptr [ebp-4]
 004B282A    mov         eax,dword ptr [eax+23C];TListView.FListColumns:TListColumns
 004B2830    mov         ecx,dword ptr [eax]
 004B2832    call        dword ptr [ecx+8];TListColumns.sub_00479958
 004B2835    pop         ecx
 004B2836    pop         ecx
 004B2837    pop         ebp
 004B2838    ret
*}
end;

//004B283C
{*function sub_004B283C(?:TCustomListView):?;
begin
 004B283C    push        ebp
 004B283D    mov         ebp,esp
 004B283F    add         esp,0FFFFFFF8
 004B2842    mov         dword ptr [ebp-4],eax
 004B2845    mov         eax,dword ptr [ebp-4]
 004B2848    call        TWinControl.HandleAllocated
 004B284D    test        al,al
>004B284F    je          004B2870
 004B2851    mov         eax,dword ptr [ebp-4]
 004B2854    call        TWinControl.GetHandle
 004B2859    mov         edx,4AF2F4;sub_004AF2F4
 004B285E    xor         ecx,ecx
 004B2860    call        0042FA78
 004B2865    cmp         eax,1
 004B2868    sbb         eax,eax
 004B286A    inc         eax
 004B286B    mov         byte ptr [ebp-5],al
>004B286E    jmp         004B2874
 004B2870    mov         byte ptr [ebp-5],0
 004B2874    mov         al,byte ptr [ebp-5]
 004B2877    pop         ecx
 004B2878    pop         ecx
 004B2879    pop         ebp
 004B287A    ret
end;*}

//004B287C
procedure TListView.SetSortType(Value:TSortType);
begin
{*
 004B287C    push        ebp
 004B287D    mov         ebp,esp
 004B287F    add         esp,0FFFFFFF8
 004B2882    mov         byte ptr [ebp-5],dl
 004B2885    mov         dword ptr [ebp-4],eax
 004B2888    mov         eax,dword ptr [ebp-4]
 004B288B    mov         al,byte ptr [eax+229];TListView.FSortType:TSortType
 004B2891    cmp         al,byte ptr [ebp-5]
>004B2894    je          004B28D7
 004B2896    mov         al,byte ptr [ebp-5]
 004B2899    mov         edx,dword ptr [ebp-4]
 004B289C    mov         byte ptr [edx+229],al;TListView.FSortType:TSortType
 004B28A2    mov         eax,dword ptr [ebp-4]
 004B28A5    mov         al,byte ptr [eax+229];TListView.FSortType:TSortType
 004B28AB    sub         al,1
>004B28AD    je          004B28B3
 004B28AF    sub         al,2
>004B28B1    jne         004B28C0
 004B28B3    mov         eax,dword ptr [ebp-4]
 004B28B6    cmp         word ptr [eax+2EA],0;TListView.?f2EA:word
>004B28BE    jne         004B28CF
 004B28C0    mov         eax,dword ptr [ebp-4]
 004B28C3    mov         al,byte ptr [eax+229];TListView.FSortType:TSortType
 004B28C9    add         al,0FE
 004B28CB    sub         al,2
>004B28CD    jae         004B28D7
 004B28CF    mov         eax,dword ptr [ebp-4]
 004B28D2    call        004B283C
 004B28D7    pop         ecx
 004B28D8    pop         ecx
 004B28D9    pop         ebp
 004B28DA    ret
*}
end;

//004B28DC
{*procedure sub_004B28DC(?:?; ?:?);
begin
 004B28DC    push        ebp
 004B28DD    mov         ebp,esp
 004B28DF    add         esp,0FFFFFFF8
 004B28E2    mov         dword ptr [ebp-8],edx
 004B28E5    mov         dword ptr [ebp-4],eax
 004B28E8    mov         eax,dword ptr [ebp-4]
 004B28EB    call        TWinControl.GetHandle
 004B28F0    mov         edx,dword ptr [ebp-8]
 004B28F3    call        0042F8A4
 004B28F8    pop         ecx
 004B28F9    pop         ecx
 004B28FA    pop         ebp
 004B28FB    ret
end;*}

//004B28FC
{*function sub_004B28FC(?:TCustomListView):?;
begin
 004B28FC    push        ebp
 004B28FD    mov         ebp,esp
 004B28FF    add         esp,0FFFFFFF4
 004B2902    mov         dword ptr [ebp-4],eax
 004B2905    xor         eax,eax
 004B2907    mov         dword ptr [ebp-8],eax
 004B290A    mov         eax,dword ptr [ebp-4]
 004B290D    mov         al,byte ptr [eax+215];TCustomListView.FViewStyle:TViewStyle
 004B2913    sub         al,2
>004B2915    jb          004B2941
 004B2917    mov         eax,dword ptr [ebp-4]
 004B291A    call        TWinControl.GetHandle
 004B291F    call        0042F87C
 004B2924    mov         dword ptr [ebp-0C],eax
 004B2927    cmp         dword ptr [ebp-0C],0FFFFFFFF
>004B292B    je          004B2941
 004B292D    mov         edx,dword ptr [ebp-0C]
 004B2930    mov         eax,dword ptr [ebp-4]
 004B2933    mov         eax,dword ptr [eax+22C];TCustomListView.FListItems:TListItems
 004B2939    call        004AE758
 004B293E    mov         dword ptr [ebp-8],eax
 004B2941    mov         eax,dword ptr [ebp-8]
 004B2944    mov         esp,ebp
 004B2946    pop         ebp
 004B2947    ret
end;*}

//004B2948
procedure TListView.SetLargeImages(Value:TCustomImageList);
begin
{*
 004B2948    push        ebp
 004B2949    mov         ebp,esp
 004B294B    add         esp,0FFFFFFF8
 004B294E    mov         dword ptr [ebp-8],edx
 004B2951    mov         dword ptr [ebp-4],eax
 004B2954    mov         eax,dword ptr [ebp-4]
 004B2957    mov         eax,dword ptr [eax+218];TListView.FLargeImages:TCustomImageList
 004B295D    cmp         eax,dword ptr [ebp-8]
>004B2960    je          004B29F9
 004B2966    mov         eax,dword ptr [ebp-4]
 004B2969    cmp         dword ptr [eax+218],0;TListView.FLargeImages:TCustomImageList
>004B2970    je          004B2989
 004B2972    mov         eax,dword ptr [ebp-4]
 004B2975    mov         edx,dword ptr [eax+27C];TListView.FLargeChangeLink:TChangeLink
 004B297B    mov         eax,dword ptr [ebp-4]
 004B297E    mov         eax,dword ptr [eax+218];TListView.FLargeImages:TCustomImageList
 004B2984    call        004DD6F8
 004B2989    mov         eax,dword ptr [ebp-8]
 004B298C    mov         edx,dword ptr [ebp-4]
 004B298F    mov         dword ptr [edx+218],eax;TListView.FLargeImages:TCustomImageList
 004B2995    mov         eax,dword ptr [ebp-4]
 004B2998    cmp         dword ptr [eax+218],0;TListView.FLargeImages:TCustomImageList
>004B299F    je          004B29E5
 004B29A1    mov         eax,dword ptr [ebp-4]
 004B29A4    mov         edx,dword ptr [eax+27C];TListView.FLargeChangeLink:TChangeLink
 004B29AA    mov         eax,dword ptr [ebp-4]
 004B29AD    mov         eax,dword ptr [eax+218];TListView.FLargeImages:TCustomImageList
 004B29B3    call        004DD760
 004B29B8    mov         edx,dword ptr [ebp-4]
 004B29BB    mov         eax,dword ptr [ebp-4]
 004B29BE    mov         eax,dword ptr [eax+218];TListView.FLargeImages:TCustomImageList
 004B29C4    call        00483020
 004B29C9    mov         eax,dword ptr [ebp-4]
 004B29CC    mov         eax,dword ptr [eax+218];TListView.FLargeImages:TCustomImageList
 004B29D2    call        004DC758
 004B29D7    mov         edx,eax
 004B29D9    xor         ecx,ecx
 004B29DB    mov         eax,dword ptr [ebp-4]
 004B29DE    call        004AFBDC
>004B29E3    jmp         004B29F1
 004B29E5    xor         ecx,ecx
 004B29E7    xor         edx,edx
 004B29E9    mov         eax,dword ptr [ebp-4]
 004B29EC    call        004AFBDC
 004B29F1    mov         eax,dword ptr [ebp-4]
 004B29F4    mov         edx,dword ptr [eax]
 004B29F6    call        dword ptr [edx+7C];TListView.sub_004D3648
 004B29F9    pop         ecx
 004B29FA    pop         ecx
 004B29FB    pop         ebp
 004B29FC    ret
*}
end;

//004B2A00
procedure TListView.SetSmallImages(Value:TCustomImageList);
begin
{*
 004B2A00    push        ebp
 004B2A01    mov         ebp,esp
 004B2A03    add         esp,0FFFFFFF8
 004B2A06    mov         dword ptr [ebp-8],edx
 004B2A09    mov         dword ptr [ebp-4],eax
 004B2A0C    mov         eax,dword ptr [ebp-8]
 004B2A0F    mov         edx,dword ptr [ebp-4]
 004B2A12    cmp         eax,dword ptr [edx+21C];TListView.FSmallImages:TCustomImageList
>004B2A18    je          004B2AB7
 004B2A1E    mov         eax,dword ptr [ebp-4]
 004B2A21    cmp         dword ptr [eax+21C],0;TListView.FSmallImages:TCustomImageList
>004B2A28    je          004B2A41
 004B2A2A    mov         eax,dword ptr [ebp-4]
 004B2A2D    mov         edx,dword ptr [eax+280];TListView.FSmallChangeLink:TChangeLink
 004B2A33    mov         eax,dword ptr [ebp-4]
 004B2A36    mov         eax,dword ptr [eax+21C];TListView.FSmallImages:TCustomImageList
 004B2A3C    call        004DD6F8
 004B2A41    mov         eax,dword ptr [ebp-8]
 004B2A44    mov         edx,dword ptr [ebp-4]
 004B2A47    mov         dword ptr [edx+21C],eax;TListView.FSmallImages:TCustomImageList
 004B2A4D    mov         eax,dword ptr [ebp-4]
 004B2A50    cmp         dword ptr [eax+21C],0;TListView.FSmallImages:TCustomImageList
>004B2A57    je          004B2AA0
 004B2A59    mov         eax,dword ptr [ebp-4]
 004B2A5C    mov         edx,dword ptr [eax+280];TListView.FSmallChangeLink:TChangeLink
 004B2A62    mov         eax,dword ptr [ebp-4]
 004B2A65    mov         eax,dword ptr [eax+21C];TListView.FSmallImages:TCustomImageList
 004B2A6B    call        004DD760
 004B2A70    mov         edx,dword ptr [ebp-4]
 004B2A73    mov         eax,dword ptr [ebp-4]
 004B2A76    mov         eax,dword ptr [eax+21C];TListView.FSmallImages:TCustomImageList
 004B2A7C    call        00483020
 004B2A81    mov         eax,dword ptr [ebp-4]
 004B2A84    mov         eax,dword ptr [eax+21C];TListView.FSmallImages:TCustomImageList
 004B2A8A    call        004DC758
 004B2A8F    mov         edx,eax
 004B2A91    mov         ecx,1
 004B2A96    mov         eax,dword ptr [ebp-4]
 004B2A99    call        004AFBDC
>004B2A9E    jmp         004B2AAF
 004B2AA0    mov         ecx,1
 004B2AA5    xor         edx,edx
 004B2AA7    mov         eax,dword ptr [ebp-4]
 004B2AAA    call        004AFBDC
 004B2AAF    mov         eax,dword ptr [ebp-4]
 004B2AB2    mov         edx,dword ptr [eax]
 004B2AB4    call        dword ptr [edx+7C];TListView.sub_004D3648
 004B2AB7    pop         ecx
 004B2AB8    pop         ecx
 004B2AB9    pop         ebp
 004B2ABA    ret
*}
end;

//004B2ABC
procedure TListView.SetStateImages(Value:TCustomImageList);
begin
{*
 004B2ABC    push        ebp
 004B2ABD    mov         ebp,esp
 004B2ABF    add         esp,0FFFFFFF8
 004B2AC2    mov         dword ptr [ebp-8],edx
 004B2AC5    mov         dword ptr [ebp-4],eax
 004B2AC8    mov         eax,dword ptr [ebp-4]
 004B2ACB    mov         eax,dword ptr [eax+220];TListView.FStateImages:TCustomImageList
 004B2AD1    cmp         eax,dword ptr [ebp-8]
>004B2AD4    je          004B2BBB
 004B2ADA    mov         eax,dword ptr [ebp-4]
 004B2ADD    cmp         dword ptr [eax+220],0;TListView.FStateImages:TCustomImageList
>004B2AE4    je          004B2AFD
 004B2AE6    mov         eax,dword ptr [ebp-4]
 004B2AE9    mov         edx,dword ptr [eax+284];TListView.FStateChangeLink:TChangeLink
 004B2AEF    mov         eax,dword ptr [ebp-4]
 004B2AF2    mov         eax,dword ptr [eax+220];TListView.FStateImages:TCustomImageList
 004B2AF8    call        004DD6F8
 004B2AFD    mov         eax,dword ptr [ebp-8]
 004B2B00    mov         edx,dword ptr [ebp-4]
 004B2B03    mov         dword ptr [edx+220],eax;TListView.FStateImages:TCustomImageList
 004B2B09    mov         eax,dword ptr [ebp-4]
 004B2B0C    cmp         byte ptr [eax+274],0;TListView.FCheckboxes:Boolean
>004B2B13    je          004B2B1D
 004B2B15    mov         eax,dword ptr [ebp-4]
 004B2B18    call        004B02EC
 004B2B1D    mov         eax,dword ptr [ebp-4]
 004B2B20    cmp         dword ptr [eax+220],0;TListView.FStateImages:TCustomImageList
>004B2B27    je          004B2B84
 004B2B29    mov         eax,dword ptr [ebp-4]
 004B2B2C    mov         edx,dword ptr [eax+284];TListView.FStateChangeLink:TChangeLink
 004B2B32    mov         eax,dword ptr [ebp-4]
 004B2B35    mov         eax,dword ptr [eax+220];TListView.FStateImages:TCustomImageList
 004B2B3B    call        004DD760
 004B2B40    mov         edx,dword ptr [ebp-4]
 004B2B43    mov         eax,dword ptr [ebp-4]
 004B2B46    mov         eax,dword ptr [eax+220];TListView.FStateImages:TCustomImageList
 004B2B4C    call        00483020
 004B2B51    mov         eax,dword ptr [ebp-4]
 004B2B54    mov         eax,dword ptr [eax+220];TListView.FStateImages:TCustomImageList
 004B2B5A    call        004DC758
 004B2B5F    mov         edx,eax
 004B2B61    mov         ecx,2
 004B2B66    mov         eax,dword ptr [ebp-4]
 004B2B69    call        004AFBDC
 004B2B6E    mov         eax,dword ptr [ebp-4]
 004B2B71    cmp         byte ptr [eax+274],0;TListView.FCheckboxes:Boolean
>004B2B78    je          004B2BB3
 004B2B7A    mov         eax,dword ptr [ebp-4]
 004B2B7D    call        004B0234
>004B2B82    jmp         004B2BB3
 004B2B84    mov         ecx,2
 004B2B89    xor         edx,edx
 004B2B8B    mov         eax,dword ptr [ebp-4]
 004B2B8E    call        004AFBDC
 004B2B93    mov         eax,dword ptr [ebp-4]
 004B2B96    cmp         byte ptr [eax+274],0;TListView.FCheckboxes:Boolean
>004B2B9D    je          004B2BB3
 004B2B9F    xor         edx,edx
 004B2BA1    mov         eax,dword ptr [ebp-4]
 004B2BA4    call        TListView.SetCheckboxes
 004B2BA9    mov         dl,1
 004B2BAB    mov         eax,dword ptr [ebp-4]
 004B2BAE    call        TListView.SetCheckboxes
 004B2BB3    mov         eax,dword ptr [ebp-4]
 004B2BB6    mov         edx,dword ptr [eax]
 004B2BB8    call        dword ptr [edx+7C];TListView.sub_004D3648
 004B2BBB    pop         ecx
 004B2BBC    pop         ecx
 004B2BBD    pop         ebp
 004B2BBE    ret
*}
end;

//004B2BC0
{*function sub_004B2BC0(?:TCustomListView; ?:?):?;
begin
 004B2BC0    push        ebp
 004B2BC1    mov         ebp,esp
 004B2BC3    add         esp,0FFFFFFF4
 004B2BC6    mov         dword ptr [ebp-8],edx
 004B2BC9    mov         dword ptr [ebp-4],eax
 004B2BCC    mov         edx,dword ptr [ebp-8]
 004B2BCF    mov         eax,dword ptr [ebp-4]
 004B2BD2    mov         eax,dword ptr [eax+23C];TCustomListView.FListColumns:TListColumns
 004B2BD8    call        004AD570
 004B2BDD    mov         dword ptr [ebp-0C],eax
 004B2BE0    mov         eax,dword ptr [ebp-0C]
 004B2BE3    mov         esp,ebp
 004B2BE5    pop         ebp
 004B2BE6    ret
end;*}

//004B2BE8
{*function sub_004B2BE8(?:TCustomListView):?;
begin
 004B2BE8    push        ebp
 004B2BE9    mov         ebp,esp
 004B2BEB    add         esp,0FFFFFFF8
 004B2BEE    mov         dword ptr [ebp-4],eax
 004B2BF1    mov         al,[004B2C10];0x10 gvar_004B2C10
 004B2BF6    push        eax
 004B2BF7    mov         cl,4
 004B2BF9    xor         edx,edx
 004B2BFB    mov         eax,dword ptr [ebp-4]
 004B2BFE    call        004B2CD8
 004B2C03    mov         dword ptr [ebp-8],eax
 004B2C06    mov         eax,dword ptr [ebp-8]
 004B2C09    pop         ecx
 004B2C0A    pop         ecx
 004B2C0B    pop         ebp
 004B2C0C    ret
end;*}

//004B2C14
{*function sub_004B2C14(?:TCustomListView):?;
begin
 004B2C14    push        ebp
 004B2C15    mov         ebp,esp
 004B2C17    add         esp,0FFFFFFF8
 004B2C1A    mov         dword ptr [ebp-4],eax
 004B2C1D    mov         al,[004B2C4C];0x4 gvar_004B2C4C
 004B2C22    push        eax
 004B2C23    mov         cl,4
 004B2C25    xor         edx,edx
 004B2C27    mov         eax,dword ptr [ebp-4]
 004B2C2A    call        004B2CD8
 004B2C2F    mov         dword ptr [ebp-8],eax
 004B2C32    cmp         dword ptr [ebp-8],0
>004B2C36    jne         004B2C44
 004B2C38    mov         eax,dword ptr [ebp-4]
 004B2C3B    mov         eax,dword ptr [eax+270];TCustomListView.FLastDropTarget:TListItem
 004B2C41    mov         dword ptr [ebp-8],eax
 004B2C44    mov         eax,dword ptr [ebp-8]
 004B2C47    pop         ecx
 004B2C48    pop         ecx
 004B2C49    pop         ebp
 004B2C4A    ret
end;*}

//004B2C50
{*procedure sub_004B2C50(?:TCustomListView; ?:?);
begin
 004B2C50    push        ebp
 004B2C51    mov         ebp,esp
 004B2C53    add         esp,0FFFFFFF8
 004B2C56    mov         dword ptr [ebp-8],edx
 004B2C59    mov         dword ptr [ebp-4],eax
 004B2C5C    mov         eax,dword ptr [ebp-4]
 004B2C5F    call        TWinControl.HandleAllocated
 004B2C64    test        al,al
>004B2C66    je          004B2C9F
 004B2C68    cmp         dword ptr [ebp-8],0
>004B2C6C    je          004B2C7F
 004B2C6E    mov         cl,1
 004B2C70    mov         edx,1
 004B2C75    mov         eax,dword ptr [ebp-8]
 004B2C78    call        004AE0EC
>004B2C7D    jmp         004B2C9F
 004B2C7F    mov         eax,dword ptr [ebp-4]
 004B2C82    call        004B2C14
 004B2C87    mov         dword ptr [ebp-8],eax
 004B2C8A    cmp         dword ptr [ebp-8],0
>004B2C8E    je          004B2C9F
 004B2C90    xor         ecx,ecx
 004B2C92    mov         edx,1
 004B2C97    mov         eax,dword ptr [ebp-8]
 004B2C9A    call        004AE0EC
 004B2C9F    pop         ecx
 004B2CA0    pop         ecx
 004B2CA1    pop         ebp
 004B2CA2    ret
end;*}

//004B2CA4
{*procedure sub_004B2CA4(?:TCustomListView; ?:?);
begin
 004B2CA4    push        ebp
 004B2CA5    mov         ebp,esp
 004B2CA7    add         esp,0FFFFFFF8
 004B2CAA    push        ebx
 004B2CAB    mov         dword ptr [ebp-8],edx
 004B2CAE    mov         dword ptr [ebp-4],eax
 004B2CB1    mov         eax,dword ptr [ebp-4]
 004B2CB4    cmp         word ptr [eax+34A],0;TCustomListView.?f34A:word
>004B2CBC    je          004B2CD3
 004B2CBE    mov         ebx,dword ptr [ebp-4]
 004B2CC1    mov         ecx,dword ptr [ebp-8]
 004B2CC4    mov         edx,dword ptr [ebp-4]
 004B2CC7    mov         eax,dword ptr [ebx+34C];TCustomListView.?f34C:dword
 004B2CCD    call        dword ptr [ebx+348];TCustomListView.FOnGetImageIndex
 004B2CD3    pop         ebx
 004B2CD4    pop         ecx
 004B2CD5    pop         ecx
 004B2CD6    pop         ebp
 004B2CD7    ret
end;*}

//004B2CD8
{*function sub_004B2CD8(?:TCustomListView; ?:?; ?:?; ?:?):?;
begin
 004B2CD8    push        ebp
 004B2CD9    mov         ebp,esp
 004B2CDB    add         esp,0FFFFFFE8
 004B2CDE    mov         byte ptr [ebp-9],cl
 004B2CE1    mov         dword ptr [ebp-8],edx
 004B2CE4    mov         dword ptr [ebp-4],eax
 004B2CE7    xor         eax,eax
 004B2CE9    mov         dword ptr [ebp-10],eax
 004B2CEC    mov         eax,dword ptr [ebp-4]
 004B2CEF    call        TWinControl.HandleAllocated
 004B2CF4    test        al,al
>004B2CF6    je          004B2DC1
 004B2CFC    xor         eax,eax
 004B2CFE    mov         dword ptr [ebp-14],eax
 004B2D01    xor         eax,eax
 004B2D03    mov         al,byte ptr [ebp-9]
 004B2D06    cmp         eax,4
>004B2D09    ja          004B2D4F
 004B2D0B    jmp         dword ptr [eax*4+4B2D12]
 004B2D0B    dd          004B2D38
 004B2D0B    dd          004B2D41
 004B2D0B    dd          004B2D26
 004B2D0B    dd          004B2D2F
 004B2D0B    dd          004B2D4A
 004B2D26    mov         dword ptr [ebp-14],100
>004B2D2D    jmp         004B2D4F
 004B2D2F    mov         dword ptr [ebp-14],200
>004B2D36    jmp         004B2D4F
 004B2D38    mov         dword ptr [ebp-14],400
>004B2D3F    jmp         004B2D4F
 004B2D41    mov         dword ptr [ebp-14],800
>004B2D48    jmp         004B2D4F
 004B2D4A    xor         eax,eax
 004B2D4C    mov         dword ptr [ebp-14],eax
 004B2D4F    cmp         dword ptr [ebp-8],0
>004B2D53    je          004B2D62
 004B2D55    mov         eax,dword ptr [ebp-8]
 004B2D58    call        004AE4CC
 004B2D5D    mov         dword ptr [ebp-18],eax
>004B2D60    jmp         004B2D69
 004B2D62    mov         dword ptr [ebp-18],0FFFFFFFF
 004B2D69    test        byte ptr [ebp+8],2
>004B2D6D    je          004B2D73
 004B2D6F    or          dword ptr [ebp-14],4
 004B2D73    test        byte ptr [ebp+8],4
>004B2D77    je          004B2D7D
 004B2D79    or          dword ptr [ebp-14],8
 004B2D7D    test        byte ptr [ebp+8],8
>004B2D81    je          004B2D87
 004B2D83    or          dword ptr [ebp-14],1
 004B2D87    test        byte ptr [ebp+8],10
>004B2D8B    je          004B2D91
 004B2D8D    or          dword ptr [ebp-14],2
 004B2D91    mov         eax,dword ptr [ebp-4]
 004B2D94    call        TWinControl.GetHandle
 004B2D99    mov         ecx,dword ptr [ebp-14]
 004B2D9C    mov         edx,dword ptr [ebp-18]
 004B2D9F    call        0042F590
 004B2DA4    mov         dword ptr [ebp-18],eax
 004B2DA7    cmp         dword ptr [ebp-18],0FFFFFFFF
>004B2DAB    je          004B2DC1
 004B2DAD    mov         edx,dword ptr [ebp-18]
 004B2DB0    mov         eax,dword ptr [ebp-4]
 004B2DB3    mov         eax,dword ptr [eax+22C];TCustomListView.FListItems:TListItems
 004B2DB9    call        004AE758
 004B2DBE    mov         dword ptr [ebp-10],eax
 004B2DC1    mov         eax,dword ptr [ebp-10]
 004B2DC4    mov         esp,ebp
 004B2DC6    pop         ebp
 004B2DC7    ret         4
end;*}

//004B2DCC
{*function sub_004B2DCC(?:TCustomListView; ?:?; ?:?):?;
begin
 004B2DCC    push        ebp
 004B2DCD    mov         ebp,esp
 004B2DCF    add         esp,0FFFFFFD0
 004B2DD2    push        esi
 004B2DD3    push        edi
 004B2DD4    mov         esi,edx
 004B2DD6    lea         edi,[ebp-0C]
 004B2DD9    movs        dword ptr [edi],dword ptr [esi]
 004B2DDA    movs        dword ptr [edi],dword ptr [esi]
 004B2DDB    mov         byte ptr [ebp-0D],cl
 004B2DDE    mov         dword ptr [ebp-4],eax
 004B2DE1    mov         dword ptr [ebp-30],40
 004B2DE8    mov         eax,dword ptr [ebp-0C]
 004B2DEB    mov         dword ptr [ebp-24],eax
 004B2DEE    mov         eax,dword ptr [ebp-8]
 004B2DF1    mov         dword ptr [ebp-20],eax
 004B2DF4    xor         eax,eax
 004B2DF6    mov         al,byte ptr [ebp-0D]
 004B2DF9    mov         eax,dword ptr [eax*4+5414B8]
 004B2E00    mov         dword ptr [ebp-1C],eax
 004B2E03    mov         eax,dword ptr [ebp-4]
 004B2E06    call        TWinControl.GetHandle
 004B2E0B    lea         ecx,[ebp-30]
 004B2E0E    or          edx,0FFFFFFFF
 004B2E11    call        0042F5C8
 004B2E16    mov         dword ptr [ebp-18],eax
 004B2E19    cmp         dword ptr [ebp-18],0FFFFFFFF
>004B2E1D    je          004B2E35
 004B2E1F    mov         edx,dword ptr [ebp-18]
 004B2E22    mov         eax,dword ptr [ebp-4]
 004B2E25    mov         eax,dword ptr [eax+22C];TCustomListView.FListItems:TListItems
 004B2E2B    call        004AE758
 004B2E30    mov         dword ptr [ebp-14],eax
>004B2E33    jmp         004B2E3A
 004B2E35    xor         eax,eax
 004B2E37    mov         dword ptr [ebp-14],eax
 004B2E3A    mov         eax,dword ptr [ebp-14]
 004B2E3D    pop         edi
 004B2E3E    pop         esi
 004B2E3F    mov         esp,ebp
 004B2E41    pop         ebp
 004B2E42    ret
end;*}

//004B2E44
{*function sub_004B2E44(?:TCustomListView; ?:TPoint; ?:?):?;
begin
 004B2E44    push        ebp
 004B2E45    mov         ebp,esp
 004B2E47    add         esp,0FFFFFFD0
 004B2E4A    mov         dword ptr [ebp-0C],ecx
 004B2E4D    mov         dword ptr [ebp-8],edx
 004B2E50    mov         dword ptr [ebp-4],eax
 004B2E53    xor         eax,eax
 004B2E55    mov         dword ptr [ebp-10],eax
 004B2E58    mov         eax,dword ptr [ebp-4]
 004B2E5B    call        TWinControl.HandleAllocated
 004B2E60    test        al,al
>004B2E62    je          004B2EAB
 004B2E64    lea         ecx,[ebp-30]
 004B2E67    mov         edx,dword ptr [ebp-0C]
 004B2E6A    mov         eax,dword ptr [ebp-8]
 004B2E6D    call        00406EBC
 004B2E72    mov         eax,dword ptr [ebp-30]
 004B2E75    mov         dword ptr [ebp-28],eax
 004B2E78    mov         eax,dword ptr [ebp-2C]
 004B2E7B    mov         dword ptr [ebp-24],eax
 004B2E7E    mov         eax,dword ptr [ebp-4]
 004B2E81    call        TWinControl.GetHandle
 004B2E86    lea         edx,[ebp-28]
 004B2E89    call        0042F654
 004B2E8E    mov         dword ptr [ebp-14],eax
 004B2E91    cmp         dword ptr [ebp-14],0FFFFFFFF
>004B2E95    je          004B2EAB
 004B2E97    mov         edx,dword ptr [ebp-14]
 004B2E9A    mov         eax,dword ptr [ebp-4]
 004B2E9D    mov         eax,dword ptr [eax+22C];TCustomListView.FListItems:TListItems
 004B2EA3    call        004AE758
 004B2EA8    mov         dword ptr [ebp-10],eax
 004B2EAB    mov         eax,dword ptr [ebp-10]
 004B2EAE    mov         esp,ebp
 004B2EB0    pop         ebp
 004B2EB1    ret
end;*}

//004B2EB4
{*procedure sub_004B2EB4(?:TListView; ?:?);
begin
 004B2EB4    push        ebp
 004B2EB5    mov         ebp,esp
 004B2EB7    add         esp,0FFFFFFF8
 004B2EBA    mov         byte ptr [ebp-5],dl
 004B2EBD    mov         dword ptr [ebp-4],eax
 004B2EC0    mov         eax,dword ptr [ebp-4]
 004B2EC3    call        TWinControl.GetHandle
 004B2EC8    xor         edx,edx
 004B2ECA    mov         dl,byte ptr [ebp-5]
 004B2ECD    mov         edx,dword ptr [edx*4+5414CC]
 004B2ED4    call        0042F6B0
 004B2ED9    pop         ecx
 004B2EDA    pop         ecx
 004B2EDB    pop         ebp
 004B2EDC    ret
end;*}

//004B2EE0
procedure sub_004B2EE0(?:TListView);
begin
{*
 004B2EE0    push        ebp
 004B2EE1    mov         ebp,esp
 004B2EE3    add         esp,0FFFFFFF4
 004B2EE6    mov         dword ptr [ebp-4],eax
 004B2EE9    mov         eax,dword ptr [ebp-4]
 004B2EEC    call        TWinControl.HandleAllocated
 004B2EF1    test        al,al
>004B2EF3    je          004B2F32
 004B2EF5    mov         eax,dword ptr [ebp-4]
 004B2EF8    cmp         byte ptr [eax+295],0;TListView.FUpdatingColumnOrder:Boolean
>004B2EFF    jne         004B2F32
 004B2F01    mov         eax,dword ptr [ebp-4]
 004B2F04    mov         eax,dword ptr [eax+23C];TListView.FListColumns:TListColumns
 004B2F0A    call        00479B60
 004B2F0F    dec         eax
 004B2F10    test        eax,eax
>004B2F12    jl          004B2F32
 004B2F14    inc         eax
 004B2F15    mov         dword ptr [ebp-0C],eax
 004B2F18    mov         dword ptr [ebp-8],0
 004B2F1F    mov         edx,dword ptr [ebp-8]
 004B2F22    mov         eax,dword ptr [ebp-4]
 004B2F25    call        004B2F38
 004B2F2A    inc         dword ptr [ebp-8]
 004B2F2D    dec         dword ptr [ebp-0C]
>004B2F30    jne         004B2F1F
 004B2F32    mov         esp,ebp
 004B2F34    pop         ebp
 004B2F35    ret
*}
end;

//004B2F38
{*procedure sub_004B2F38(?:TListView; ?:?);
begin
 004B2F38    push        ebp
 004B2F39    mov         ebp,esp
 004B2F3B    add         esp,0FFFFFFD0
 004B2F3E    push        esi
 004B2F3F    mov         dword ptr [ebp-8],edx
 004B2F42    mov         dword ptr [ebp-4],eax
 004B2F45    mov         eax,dword ptr [ebp-4]
 004B2F48    call        TWinControl.HandleAllocated
 004B2F4D    test        al,al
>004B2F4F    je          004B30B2
 004B2F55    mov         edx,dword ptr [ebp-8]
 004B2F58    mov         eax,dword ptr [ebp-4]
 004B2F5B    mov         eax,dword ptr [eax+23C];TListView.FListColumns:TListColumns
 004B2F61    call        004AD570
 004B2F66    mov         dword ptr [ebp-10],eax
 004B2F69    mov         dword ptr [ebp-30],15
 004B2F70    mov         eax,dword ptr [ebp-10]
 004B2F73    mov         eax,dword ptr [eax+1C]
 004B2F76    mov         dword ptr [ebp-18],eax
 004B2F79    mov         eax,dword ptr [ebp-10]
 004B2F7C    mov         eax,dword ptr [eax+10]
 004B2F7F    call        @LStrToPChar
 004B2F84    mov         dword ptr [ebp-24],eax
 004B2F87    mov         eax,dword ptr [ebp-10]
 004B2F8A    mov         al,byte ptr [eax+0C]
 004B2F8D    mov         byte ptr [ebp-9],al
 004B2F90    mov         eax,dword ptr [ebp-10]
 004B2F93    call        TCollectionItem.GetIndex
 004B2F98    test        eax,eax
>004B2F9A    je          004B2FC2
 004B2F9C    mov         eax,dword ptr [ebp-4]
 004B2F9F    mov         si,0FFC8
 004B2FA3    call        @CallDynaInst;TControl.sub_004CB93C
 004B2FA8    and         eax,7F
 004B2FAB    lea         eax,[eax+eax*2]
 004B2FAE    lea         eax,[eax*4+5414E4]
 004B2FB5    xor         edx,edx
 004B2FB7    mov         dl,byte ptr [ebp-9]
 004B2FBA    mov         eax,dword ptr [eax+edx*4]
 004B2FBD    mov         dword ptr [ebp-2C],eax
>004B2FC0    jmp         004B2FC7
 004B2FC2    xor         eax,eax
 004B2FC4    mov         dword ptr [ebp-2C],eax
 004B2FC7    mov         eax,dword ptr [ebp-10]
 004B2FCA    cmp         dword ptr [eax+1C],0FFFFFFFF
>004B2FCE    je          004B2FE2
 004B2FD0    mov         eax,dword ptr [ebp-2C]
 004B2FD3    or          eax,800
 004B2FD8    or          eax,8000
 004B2FDD    mov         dword ptr [ebp-2C],eax
>004B2FE0    jmp         004B2FE6
 004B2FE2    and         dword ptr [ebp-30],0FFFFFFEF
 004B2FE6    mov         eax,dword ptr [ebp-10]
 004B2FE9    cmp         dword ptr [eax+24],0FFFFFFFF
>004B2FED    jle         004B3027
 004B2FEF    or          dword ptr [ebp-30],2
 004B2FF3    mov         eax,dword ptr [ebp-10]
 004B2FF6    mov         eax,dword ptr [eax+24]
 004B2FF9    mov         dword ptr [ebp-28],eax
 004B2FFC    mov         edx,dword ptr [ebp-8]
 004B2FFF    mov         eax,dword ptr [ebp-4]
 004B3002    mov         eax,dword ptr [eax+23C];TListView.FListColumns:TListColumns
 004B3008    call        004AD570
 004B300D    mov         eax,dword ptr [eax+28]
 004B3010    push        eax
 004B3011    mov         eax,dword ptr [ebp-4]
 004B3014    call        TWinControl.GetHandle
 004B3019    lea         ecx,[ebp-30]
 004B301C    pop         edx
 004B301D    call        0042F704
>004B3022    jmp         004B30B2
 004B3027    mov         edx,dword ptr [ebp-8]
 004B302A    mov         eax,dword ptr [ebp-4]
 004B302D    mov         eax,dword ptr [eax+23C];TListView.FListColumns:TListColumns
 004B3033    call        004AD570
 004B3038    mov         eax,dword ptr [eax+28]
 004B303B    push        eax
 004B303C    mov         eax,dword ptr [ebp-4]
 004B303F    call        TWinControl.GetHandle
 004B3044    lea         ecx,[ebp-30]
 004B3047    pop         edx
 004B3048    call        0042F704
 004B304D    mov         eax,dword ptr [ebp-4]
 004B3050    cmp         byte ptr [eax+215],2;TListView.FViewStyle:TViewStyle
>004B3057    jne         004B3071
 004B3059    mov         eax,dword ptr [ebp-4]
 004B305C    call        TWinControl.GetHandle
 004B3061    mov         edx,dword ptr [ebp-10]
 004B3064    mov         ecx,dword ptr [edx+24]
 004B3067    or          edx,0FFFFFFFF
 004B306A    call        0042F7BC
>004B306F    jmp         004B30B2
 004B3071    mov         eax,dword ptr [ebp-4]
 004B3074    cmp         byte ptr [eax+215],3;TListView.FViewStyle:TViewStyle
>004B307B    jne         004B30B2
 004B307D    mov         eax,dword ptr [ebp-4]
 004B3080    cmp         byte ptr [eax+244],0;TListView.FOwnerData:Boolean
>004B3087    jne         004B30B2
 004B3089    mov         edx,dword ptr [ebp-8]
 004B308C    mov         eax,dword ptr [ebp-4]
 004B308F    mov         eax,dword ptr [eax+23C];TListView.FListColumns:TListColumns
 004B3095    call        004AD570
 004B309A    mov         eax,dword ptr [eax+28]
 004B309D    push        eax
 004B309E    mov         eax,dword ptr [ebp-4]
 004B30A1    call        TWinControl.GetHandle
 004B30A6    mov         edx,dword ptr [ebp-10]
 004B30A9    mov         ecx,dword ptr [edx+24]
 004B30AC    pop         edx
 004B30AD    call        0042F7BC
 004B30B2    pop         esi
 004B30B3    mov         esp,ebp
 004B30B5    pop         ebp
 004B30B6    ret
end;*}

//004B30B8
{*procedure TCustomListView.WMLButtonDown(?:?);
begin
 004B30B8    push        ebp
 004B30B9    mov         ebp,esp
 004B30BB    add         esp,0FFFFFFDC
 004B30BE    mov         dword ptr [ebp-8],edx
 004B30C1    mov         dword ptr [ebp-4],eax
 004B30C4    mov         eax,dword ptr [ebp-4]
 004B30C7    mov         edx,dword ptr [eax]
 004B30C9    call        dword ptr [edx+0C4];TCustomListView.sub_004D3808
 004B30CF    mov         eax,dword ptr [ebp-8]
 004B30D2    mov         ax,word ptr [eax+4]
 004B30D6    call        004E7D24
 004B30DB    mov         byte ptr [ebp-15],al
 004B30DE    mov         eax,dword ptr [ebp-4]
 004B30E1    mov         byte ptr [eax+230],0;TCustomListView.FClicked:Boolean
 004B30E8    mov         eax,dword ptr [ebp-4]
 004B30EB    mov         dword ptr [eax+26C],0FFFFFFFF;TCustomListView.FDragIndex:Integer
 004B30F5    mov         edx,dword ptr [ebp-8]
 004B30F8    mov         eax,dword ptr [ebp-4]
 004B30FB    call        TControl.WMLButtonDown
 004B3100    mov         eax,dword ptr [ebp-4]
 004B3103    cmp         byte ptr [eax+5D],1;TCustomListView.FDragMode:TDragMode
>004B3107    jne         004B316F
 004B3109    mov         eax,dword ptr [ebp-4]
 004B310C    cmp         byte ptr [eax+228],0;TCustomListView.FMultiSelect:Boolean
>004B3113    je          004B316F
 004B3115    test        byte ptr [ebp-15],1
>004B3119    jne         004B316F
 004B311B    test        byte ptr [ebp-15],4
>004B311F    jne         004B316F
 004B3121    mov         eax,dword ptr [ebp-4]
 004B3124    cmp         byte ptr [eax+230],0;TCustomListView.FClicked:Boolean
>004B312B    jne         004B316F
 004B312D    mov         ecx,dword ptr [ebp-8]
 004B3130    movsx       ecx,word ptr [ecx+0A]
 004B3134    mov         edx,dword ptr [ebp-8]
 004B3137    movsx       edx,word ptr [edx+8]
 004B313B    mov         eax,dword ptr [ebp-4]
 004B313E    call        004B2E44
 004B3143    mov         dword ptr [ebp-0C],eax
 004B3146    cmp         dword ptr [ebp-0C],0
>004B314A    je          004B316F
 004B314C    mov         edx,3
 004B3151    mov         eax,dword ptr [ebp-0C]
 004B3154    call        004AE060
 004B3159    test        al,al
>004B315B    je          004B316F
 004B315D    or          ecx,0FFFFFFFF
 004B3160    xor         edx,edx
 004B3162    mov         eax,dword ptr [ebp-4]
 004B3165    call        004CB9C0
>004B316A    jmp         004B3255
 004B316F    mov         eax,dword ptr [ebp-4]
 004B3172    cmp         byte ptr [eax+230],0;TCustomListView.FClicked:Boolean
>004B3179    je          004B31F7
 004B317B    lea         eax,[ebp-14]
 004B317E    push        eax
 004B317F    call        user32.GetCursorPos
 004B3184    lea         ecx,[ebp-24]
 004B3187    lea         edx,[ebp-14]
 004B318A    mov         eax,dword ptr [ebp-4]
 004B318D    call        TControl.ScreenToClient
 004B3192    lea         eax,[ebp-24]
 004B3195    call        00408274
 004B319A    mov         dword ptr [ebp-19],eax
 004B319D    mov         eax,dword ptr [ebp-4]
 004B31A0    call        004CBAA4
 004B31A5    test        al,al
>004B31A7    jne         004B31D5
 004B31A9    mov         dx,word ptr [ebp-17]
 004B31AD    mov         ax,word ptr [ebp-19]
 004B31B1    call        004080B4
 004B31B6    push        eax
 004B31B7    xor         ecx,ecx
 004B31B9    mov         edx,202
 004B31BE    mov         eax,dword ptr [ebp-4]
 004B31C1    call        004CC7DC
 004B31C6    mov         eax,dword ptr [ebp-4]
 004B31C9    mov         byte ptr [eax+230],0;TCustomListView.FClicked:Boolean
>004B31D0    jmp         004B3255
 004B31D5    mov         dx,word ptr [ebp-17]
 004B31D9    mov         ax,word ptr [ebp-19]
 004B31DD    call        004080B4
 004B31E2    push        eax
 004B31E3    push        0
 004B31E5    push        202
 004B31EA    call        user32.GetCapture
 004B31EF    push        eax
 004B31F0    call        user32.SendMessageA
>004B31F5    jmp         004B3255
 004B31F7    mov         eax,dword ptr [ebp-4]
 004B31FA    cmp         byte ptr [eax+5D],1;TCustomListView.FDragMode:TDragMode
>004B31FE    jne         004B3255
 004B3200    mov         eax,dword ptr [ebp-4]
 004B3203    cmp         byte ptr [eax+228],0;TCustomListView.FMultiSelect:Boolean
>004B320A    je          004B3218
 004B320C    test        byte ptr [ebp-15],1
>004B3210    jne         004B3255
 004B3212    test        byte ptr [ebp-15],4
>004B3216    jne         004B3255
 004B3218    mov         ecx,dword ptr [ebp-8]
 004B321B    movsx       ecx,word ptr [ecx+0A]
 004B321F    mov         edx,dword ptr [ebp-8]
 004B3222    movsx       edx,word ptr [edx+8]
 004B3226    mov         eax,dword ptr [ebp-4]
 004B3229    call        004B2E44
 004B322E    mov         dword ptr [ebp-0C],eax
 004B3231    cmp         dword ptr [ebp-0C],0
>004B3235    je          004B3255
 004B3237    mov         edx,3
 004B323C    mov         eax,dword ptr [ebp-0C]
 004B323F    call        004AE060
 004B3244    test        al,al
>004B3246    je          004B3255
 004B3248    or          ecx,0FFFFFFFF
 004B324B    xor         edx,edx
 004B324D    mov         eax,dword ptr [ebp-4]
 004B3250    call        004CB9C0
 004B3255    mov         esp,ebp
 004B3257    pop         ebp
 004B3258    ret
end;*}

//004B325C
procedure sub_004B325C(?:TCustomListView);
begin
{*
 004B325C    push        ebp
 004B325D    mov         ebp,esp
 004B325F    add         esp,0FFFFFFDC
 004B3262    mov         dword ptr [ebp-4],eax
 004B3265    mov         dl,1
 004B3267    mov         eax,[004759C0];TList
 004B326C    call        TObject.Create;TList.Create
 004B3271    mov         dword ptr [ebp-1C],eax
 004B3274    xor         eax,eax
 004B3276    push        ebp
 004B3277    push        4B3415
 004B327C    push        dword ptr fs:[eax]
 004B327F    mov         dword ptr fs:[eax],esp
 004B3282    mov         eax,dword ptr [ebp-4]
 004B3285    call        TControl.GetClientWidth
 004B328A    mov         dword ptr [ebp-10],eax
 004B328D    mov         eax,dword ptr [ebp-4]
 004B3290    mov         eax,dword ptr [eax+23C];TCustomListView.FListColumns:TListColumns
 004B3296    call        00479B60
 004B329B    dec         eax
 004B329C    test        eax,eax
>004B329E    jl          004B32E8
 004B32A0    inc         eax
 004B32A1    mov         dword ptr [ebp-24],eax
 004B32A4    mov         dword ptr [ebp-8],0
 004B32AB    mov         eax,dword ptr [ebp-4]
 004B32AE    mov         eax,dword ptr [eax+23C];TCustomListView.FListColumns:TListColumns
 004B32B4    mov         edx,dword ptr [ebp-8]
 004B32B7    call        004AD570
 004B32BC    mov         dword ptr [ebp-20],eax
 004B32BF    mov         eax,dword ptr [ebp-20]
 004B32C2    cmp         byte ptr [eax+0D],0
>004B32C6    je          004B32D5
 004B32C8    mov         edx,dword ptr [ebp-20]
 004B32CB    mov         eax,dword ptr [ebp-1C]
 004B32CE    call        TList.Add
>004B32D3    jmp         004B32E0
 004B32D5    mov         eax,dword ptr [ebp-20]
 004B32D8    call        TListColumn.GetWidth
 004B32DD    sub         dword ptr [ebp-10],eax
 004B32E0    inc         dword ptr [ebp-8]
 004B32E3    dec         dword ptr [ebp-24]
>004B32E6    jne         004B32AB
 004B32E8    mov         eax,dword ptr [ebp-1C]
 004B32EB    cmp         dword ptr [eax+8],0;TList.FCount:Integer
>004B32EF    jle         004B33FF
 004B32F5    mov         eax,dword ptr [ebp-4]
 004B32F8    mov         eax,dword ptr [eax+23C];TCustomListView.FListColumns:TListColumns
 004B32FE    mov         edx,dword ptr [eax]
 004B3300    call        dword ptr [edx+20];TListColumns.sub_004799FC
 004B3303    xor         eax,eax
 004B3305    push        ebp
 004B3306    push        4B33F8
 004B330B    push        dword ptr fs:[eax]
 004B330E    mov         dword ptr fs:[eax],esp
 004B3311    mov         eax,dword ptr [ebp-1C]
 004B3314    mov         eax,dword ptr [eax+8];TList.FCount:Integer
 004B3317    mov         dword ptr [ebp-0C],eax
 004B331A    mov         eax,dword ptr [ebp-10]
 004B331D    cdq
 004B331E    idiv        eax,dword ptr [ebp-0C]
 004B3321    mov         dword ptr [ebp-18],edx
 004B3324    mov         eax,dword ptr [ebp-10]
 004B3327    cdq
 004B3328    idiv        eax,dword ptr [ebp-0C]
 004B332B    mov         dword ptr [ebp-14],eax
 004B332E    mov         eax,dword ptr [ebp-0C]
 004B3331    dec         eax
 004B3332    cmp         eax,0
>004B3335    jl          004B3368
 004B3337    mov         dword ptr [ebp-8],eax
 004B333A    mov         edx,dword ptr [ebp-8]
 004B333D    mov         eax,dword ptr [ebp-1C]
 004B3340    call        TList.Get
 004B3345    mov         dword ptr [ebp-20],eax
 004B3348    cmp         dword ptr [ebp-8],0
>004B334C    jne         004B3354
 004B334E    mov         eax,dword ptr [ebp-18]
 004B3351    add         dword ptr [ebp-14],eax
 004B3354    mov         edx,dword ptr [ebp-14]
 004B3357    mov         eax,dword ptr [ebp-20]
 004B335A    call        TListColumn.SetWidth
 004B335F    dec         dword ptr [ebp-8]
 004B3362    cmp         dword ptr [ebp-8],0FFFFFFFF
>004B3366    jne         004B333A
 004B3368    mov         eax,dword ptr [ebp-10]
 004B336B    cdq
 004B336C    idiv        eax,dword ptr [ebp-0C]
 004B336F    mov         dword ptr [ebp-14],eax
 004B3372    mov         eax,dword ptr [ebp-0C]
 004B3375    dec         eax
 004B3376    cmp         eax,0
>004B3379    jl          004B33C4
 004B337B    mov         dword ptr [ebp-8],eax
 004B337E    mov         edx,dword ptr [ebp-8]
 004B3381    mov         eax,dword ptr [ebp-1C]
 004B3384    call        TList.Get
 004B3389    mov         dword ptr [ebp-20],eax
 004B338C    cmp         dword ptr [ebp-8],0
>004B3390    jne         004B3398
 004B3392    mov         eax,dword ptr [ebp-18]
 004B3395    add         dword ptr [ebp-14],eax
 004B3398    mov         eax,dword ptr [ebp-20]
 004B339B    call        TListColumn.GetWidth
 004B33A0    cmp         eax,dword ptr [ebp-14]
>004B33A3    je          004B33BB
 004B33A5    mov         edx,dword ptr [ebp-8]
 004B33A8    mov         eax,dword ptr [ebp-1C]
 004B33AB    call        00478668
 004B33B0    mov         eax,dword ptr [ebp-20]
 004B33B3    call        TListColumn.GetWidth
 004B33B8    sub         dword ptr [ebp-10],eax
 004B33BB    dec         dword ptr [ebp-8]
 004B33BE    cmp         dword ptr [ebp-8],0FFFFFFFF
>004B33C2    jne         004B337E
 004B33C4    mov         eax,dword ptr [ebp-1C]
 004B33C7    cmp         dword ptr [eax+8],0;TList.FCount:Integer
>004B33CB    je          004B33DC
 004B33CD    mov         eax,dword ptr [ebp-1C]
 004B33D0    mov         eax,dword ptr [eax+8];TList.FCount:Integer
 004B33D3    cmp         eax,dword ptr [ebp-0C]
>004B33D6    jne         004B3311
 004B33DC    xor         eax,eax
 004B33DE    pop         edx
 004B33DF    pop         ecx
 004B33E0    pop         ecx
 004B33E1    mov         dword ptr fs:[eax],edx
 004B33E4    push        4B33FF
 004B33E9    mov         eax,dword ptr [ebp-4]
 004B33EC    mov         eax,dword ptr [eax+23C];TCustomListView.FListColumns:TListColumns
 004B33F2    mov         edx,dword ptr [eax]
 004B33F4    call        dword ptr [edx+24];TListColumns.sub_00479A94
 004B33F7    ret
>004B33F8    jmp         @HandleFinally
>004B33FD    jmp         004B33E9
 004B33FF    xor         eax,eax
 004B3401    pop         edx
 004B3402    pop         ecx
 004B3403    pop         ecx
 004B3404    mov         dword ptr fs:[eax],edx
 004B3407    push        4B341C
 004B340C    mov         eax,dword ptr [ebp-1C]
 004B340F    call        TObject.Free
 004B3414    ret
>004B3415    jmp         @HandleFinally
>004B341A    jmp         004B340C
 004B341C    mov         esp,ebp
 004B341E    pop         ebp
 004B341F    ret
*}
end;

//004B3420
{*procedure TCustomListView.WMWindowPosChangedMsg(?:?);
begin
 004B3420    push        ebp
 004B3421    mov         ebp,esp
 004B3423    add         esp,0FFFFFFF8
 004B3426    mov         dword ptr [ebp-8],edx
 004B3429    mov         dword ptr [ebp-4],eax
 004B342C    mov         eax,dword ptr [ebp-4]
 004B342F    test        byte ptr [eax+1C],2;TCustomListView.FComponentState:TComponentState
>004B3433    jne         004B3455
 004B3435    mov         eax,dword ptr [ebp-8]
 004B3438    mov         eax,dword ptr [eax+8]
 004B343B    test        byte ptr [eax+18],1
>004B343F    jne         004B3455
 004B3441    mov         eax,dword ptr [ebp-4]
 004B3444    call        TWinControl.HandleAllocated
 004B3449    test        al,al
>004B344B    je          004B3455
 004B344D    mov         eax,dword ptr [ebp-4]
 004B3450    call        004B325C
 004B3455    mov         edx,dword ptr [ebp-8]
 004B3458    mov         eax,dword ptr [ebp-4]
 004B345B    call        TWinControl.WMWindowPosChangedMsg
 004B3460    pop         ecx
 004B3461    pop         ecx
 004B3462    pop         ebp
 004B3463    ret
end;*}

//004B3464
{*procedure TCustomListView.sub_004B3464(?:?);
begin
 004B3464    push        ebp
 004B3465    mov         ebp,esp
 004B3467    add         esp,0FFFFFFEC
 004B346A    push        ebx
 004B346B    mov         dword ptr [ebp-8],edx
 004B346E    mov         dword ptr [ebp-4],eax
 004B3471    mov         eax,dword ptr [ebp-4]
 004B3474    cmp         dword ptr [eax+210],0;TCustomListView.FCanvas:TCanvas
>004B347B    je          004B3597
 004B3481    mov         eax,dword ptr [ebp-8]
 004B3484    mov         eax,dword ptr [eax+8]
 004B3487    mov         dword ptr [ebp-14],eax
 004B348A    mov         eax,dword ptr [ebp-14]
 004B348D    mov         ax,word ptr [eax+10]
 004B3491    mov         word ptr [ebp-0A],ax
 004B3495    mov         eax,dword ptr [ebp-14]
 004B3498    mov         eax,dword ptr [eax+18]
 004B349B    push        eax
 004B349C    call        gdi32.SaveDC
 004B34A1    mov         dword ptr [ebp-10],eax
 004B34A4    mov         eax,dword ptr [ebp-4]
 004B34A7    mov         eax,dword ptr [eax+210];TCustomListView.FCanvas:TCanvas
 004B34AD    call        TCanvas.Lock
 004B34B2    xor         eax,eax
 004B34B4    push        ebp
 004B34B5    push        4B3586
 004B34BA    push        dword ptr fs:[eax]
 004B34BD    mov         dword ptr fs:[eax],esp
 004B34C0    mov         eax,dword ptr [ebp-14]
 004B34C3    mov         edx,dword ptr [eax+18]
 004B34C6    mov         eax,dword ptr [ebp-4]
 004B34C9    mov         eax,dword ptr [eax+210];TCustomListView.FCanvas:TCanvas
 004B34CF    call        TCanvas.SetHandle
 004B34D4    mov         eax,dword ptr [ebp-4]
 004B34D7    mov         edx,dword ptr [eax+68];TCustomListView.FFont:TFont
 004B34DA    mov         eax,dword ptr [ebp-4]
 004B34DD    mov         eax,dword ptr [eax+210];TCustomListView.FCanvas:TCanvas
 004B34E3    call        TCanvas.SetFont
 004B34E8    mov         eax,dword ptr [ebp-4]
 004B34EB    mov         edx,dword ptr [eax+170];TCustomListView.FBrush:TBrush
 004B34F1    mov         eax,dword ptr [ebp-4]
 004B34F4    mov         eax,dword ptr [eax+210];TCustomListView.FCanvas:TCanvas
 004B34FA    call        TCanvas.SetBrush
 004B34FF    mov         eax,dword ptr [ebp-14]
 004B3502    cmp         dword ptr [eax+8],0FFFFFFFF
>004B3506    jne         004B351E
 004B3508    mov         eax,dword ptr [ebp-14]
 004B350B    lea         edx,[eax+1C]
 004B350E    mov         eax,dword ptr [ebp-4]
 004B3511    mov         eax,dword ptr [eax+210];TCustomListView.FCanvas:TCanvas
 004B3517    call        TCanvas.FillRect
>004B351C    jmp         004B354A
 004B351E    mov         ax,word ptr [ebp-0A]
 004B3522    push        eax
 004B3523    mov         eax,dword ptr [ebp-14]
 004B3526    mov         edx,dword ptr [eax+8]
 004B3529    mov         eax,dword ptr [ebp-4]
 004B352C    mov         eax,dword ptr [eax+22C];TCustomListView.FListItems:TListItems
 004B3532    call        004AE758
 004B3537    mov         edx,eax
 004B3539    mov         eax,dword ptr [ebp-14]
 004B353C    lea         ecx,[eax+1C]
 004B353F    mov         eax,dword ptr [ebp-4]
 004B3542    mov         ebx,dword ptr [eax]
 004B3544    call        dword ptr [ebx+110];TCustomListView.sub_004B3898
 004B354A    xor         eax,eax
 004B354C    pop         edx
 004B354D    pop         ecx
 004B354E    pop         ecx
 004B354F    mov         dword ptr fs:[eax],edx
 004B3552    push        4B358D
 004B3557    mov         eax,dword ptr [ebp-4]
 004B355A    mov         eax,dword ptr [eax+210];TCustomListView.FCanvas:TCanvas
 004B3560    xor         edx,edx
 004B3562    call        TCanvas.SetHandle
 004B3567    mov         eax,dword ptr [ebp-4]
 004B356A    mov         eax,dword ptr [eax+210];TCustomListView.FCanvas:TCanvas
 004B3570    call        TCanvas.Unlock
 004B3575    mov         eax,dword ptr [ebp-10]
 004B3578    push        eax
 004B3579    mov         eax,dword ptr [ebp-14]
 004B357C    mov         eax,dword ptr [eax+18]
 004B357F    push        eax
 004B3580    call        gdi32.RestoreDC
 004B3585    ret
>004B3586    jmp         @HandleFinally
>004B358B    jmp         004B3557
 004B358D    mov         eax,dword ptr [ebp-8]
 004B3590    mov         dword ptr [eax+0C],1
 004B3597    pop         ebx
 004B3598    mov         esp,ebp
 004B359A    pop         ebp
 004B359B    ret
end;*}

//004B359C
{*procedure sub_004B359C(?:?; ?:?);
begin
 004B359C    push        ebp
 004B359D    mov         ebp,esp
 004B359F    add         esp,0FFFFFFF8
 004B35A2    mov         dword ptr [ebp-8],edx
 004B35A5    mov         dword ptr [ebp-4],eax
 004B35A8    mov         eax,dword ptr [ebp-4]
 004B35AB    mov         byte ptr [eax+28A],1
 004B35B2    pop         ecx
 004B35B3    pop         ecx
 004B35B4    pop         ebp
 004B35B5    ret
end;*}

//004B35B8
{*function sub_004B35B8(?:?; ?:?):?;
begin
 004B35B8    push        ebp
 004B35B9    mov         ebp,esp
 004B35BB    add         esp,0FFFFFFF8
 004B35BE    mov         byte ptr [ebp-6],cl
 004B35C1    mov         byte ptr [ebp-5],dl
 004B35C4    mov         dword ptr [ebp-4],eax
 004B35C7    cmp         byte ptr [ebp-6],0
>004B35CB    jne         004B36A0
 004B35D1    cmp         byte ptr [ebp-5],2
>004B35D5    jne         004B35FF
 004B35D7    mov         eax,dword ptr [ebp-4]
 004B35DA    cmp         word ptr [eax+302],0;TCustomListView.?f302:word
>004B35E2    jne         004B35F5
 004B35E4    mov         eax,dword ptr [ebp-4]
 004B35E7    cmp         word ptr [eax+2BA],0;TCustomListView.?f2BA:word
>004B35EF    jne         004B35F5
 004B35F1    xor         eax,eax
>004B35F3    jmp         004B35F7
 004B35F5    mov         al,1
 004B35F7    mov         byte ptr [ebp-7],al
>004B35FA    jmp         004B3712
 004B35FF    cmp         byte ptr [ebp-5],1
>004B3603    jne         004B3647
 004B3605    mov         eax,dword ptr [ebp-4]
 004B3608    cmp         word ptr [eax+2FA],0;TCustomListView.?f2FA:word
>004B3610    jne         004B363D
 004B3612    mov         eax,dword ptr [ebp-4]
 004B3615    cmp         word ptr [eax+2B2],0;TCustomListView.?f2B2:word
>004B361D    jne         004B363D
 004B361F    mov         eax,dword ptr [ebp-4]
 004B3622    cmp         word ptr [eax+302],0;TCustomListView.?f302:word
>004B362A    jne         004B363D
 004B362C    mov         eax,dword ptr [ebp-4]
 004B362F    cmp         word ptr [eax+2BA],0;TCustomListView.?f2BA:word
>004B3637    jne         004B363D
 004B3639    xor         eax,eax
>004B363B    jmp         004B363F
 004B363D    mov         al,1
 004B363F    mov         byte ptr [ebp-7],al
>004B3642    jmp         004B3712
 004B3647    mov         eax,dword ptr [ebp-4]
 004B364A    cmp         word ptr [eax+2F2],0;TCustomListView.?f2F2:word
>004B3652    jne         004B3699
 004B3654    mov         eax,dword ptr [ebp-4]
 004B3657    cmp         word ptr [eax+2AA],0;TCustomListView.?f2AA:word
>004B365F    jne         004B3699
 004B3661    mov         eax,dword ptr [ebp-4]
 004B3664    cmp         word ptr [eax+2FA],0;TCustomListView.?f2FA:word
>004B366C    jne         004B3699
 004B366E    mov         eax,dword ptr [ebp-4]
 004B3671    cmp         word ptr [eax+2B2],0;TCustomListView.?f2B2:word
>004B3679    jne         004B3699
 004B367B    mov         eax,dword ptr [ebp-4]
 004B367E    cmp         word ptr [eax+302],0;TCustomListView.?f302:word
>004B3686    jne         004B3699
 004B3688    mov         eax,dword ptr [ebp-4]
 004B368B    cmp         word ptr [eax+2BA],0;TCustomListView.?f2BA:word
>004B3693    jne         004B3699
 004B3695    xor         eax,eax
>004B3697    jmp         004B369B
 004B3699    mov         al,1
 004B369B    mov         byte ptr [ebp-7],al
>004B369E    jmp         004B3712
 004B36A0    cmp         byte ptr [ebp-5],2
>004B36A4    jne         004B36B7
 004B36A6    mov         eax,dword ptr [ebp-4]
 004B36A9    cmp         word ptr [eax+2BA],0;TCustomListView.?f2BA:word
 004B36B1    setne       byte ptr [ebp-7]
>004B36B5    jmp         004B3712
 004B36B7    cmp         byte ptr [ebp-5],1
>004B36BB    jne         004B36E2
 004B36BD    mov         eax,dword ptr [ebp-4]
 004B36C0    cmp         word ptr [eax+2B2],0;TCustomListView.?f2B2:word
>004B36C8    jne         004B36DB
 004B36CA    mov         eax,dword ptr [ebp-4]
 004B36CD    cmp         word ptr [eax+2BA],0;TCustomListView.?f2BA:word
>004B36D5    jne         004B36DB
 004B36D7    xor         eax,eax
>004B36D9    jmp         004B36DD
 004B36DB    mov         al,1
 004B36DD    mov         byte ptr [ebp-7],al
>004B36E0    jmp         004B3712
 004B36E2    mov         eax,dword ptr [ebp-4]
 004B36E5    cmp         word ptr [eax+2AA],0;TCustomListView.?f2AA:word
>004B36ED    jne         004B370D
 004B36EF    mov         eax,dword ptr [ebp-4]
 004B36F2    cmp         word ptr [eax+2B2],0;TCustomListView.?f2B2:word
>004B36FA    jne         004B370D
 004B36FC    mov         eax,dword ptr [ebp-4]
 004B36FF    cmp         word ptr [eax+2BA],0;TCustomListView.?f2BA:word
>004B3707    jne         004B370D
 004B3709    xor         eax,eax
>004B370B    jmp         004B370F
 004B370D    mov         al,1
 004B370F    mov         byte ptr [ebp-7],al
 004B3712    mov         al,byte ptr [ebp-7]
 004B3715    pop         ecx
 004B3716    pop         ecx
 004B3717    pop         ebp
 004B3718    ret
end;*}

//004B371C
{*function sub_004B371C(?:?; ?:?):?;
begin
 004B371C    push        ebp
 004B371D    mov         ebp,esp
 004B371F    add         esp,0FFFFFFF4
 004B3722    push        ebx
 004B3723    mov         byte ptr [ebp-9],cl
 004B3726    mov         dword ptr [ebp-8],edx
 004B3729    mov         dword ptr [ebp-4],eax
 004B372C    mov         byte ptr [ebp-0A],1
 004B3730    cmp         byte ptr [ebp-9],0
>004B3734    jne         004B375C
 004B3736    mov         eax,dword ptr [ebp-4]
 004B3739    cmp         word ptr [eax+2F2],0;TCustomListView.?f2F2:word
>004B3741    je          004B375C
 004B3743    lea         eax,[ebp-0A]
 004B3746    push        eax
 004B3747    mov         ecx,dword ptr [ebp-8]
 004B374A    mov         ebx,dword ptr [ebp-4]
 004B374D    mov         edx,dword ptr [ebp-4]
 004B3750    mov         eax,dword ptr [ebx+2F4];TCustomListView.?f2F4:dword
 004B3756    call        dword ptr [ebx+2F0];TCustomListView.FOnCustomDraw
 004B375C    mov         eax,dword ptr [ebp-4]
 004B375F    cmp         word ptr [eax+2AA],0;TCustomListView.?f2AA:word
>004B3767    je          004B3786
 004B3769    mov         al,byte ptr [ebp-9]
 004B376C    push        eax
 004B376D    lea         eax,[ebp-0A]
 004B3770    push        eax
 004B3771    mov         ecx,dword ptr [ebp-8]
 004B3774    mov         ebx,dword ptr [ebp-4]
 004B3777    mov         edx,dword ptr [ebp-4]
 004B377A    mov         eax,dword ptr [ebx+2AC];TCustomListView.?f2AC:dword
 004B3780    call        dword ptr [ebx+2A8];TCustomListView.FOnAdvancedCustomDraw
 004B3786    mov         al,byte ptr [ebp-0A]
 004B3789    pop         ebx
 004B378A    mov         esp,ebp
 004B378C    pop         ebp
 004B378D    ret
end;*}

//004B3790
{*function sub_004B3790(?:?; ?:?; ?:?):?;
begin
 004B3790    push        ebp
 004B3791    mov         ebp,esp
 004B3793    add         esp,0FFFFFFF4
 004B3796    push        ebx
 004B3797    mov         word ptr [ebp-0A],cx
 004B379B    mov         dword ptr [ebp-8],edx
 004B379E    mov         dword ptr [ebp-4],eax
 004B37A1    mov         byte ptr [ebp-0B],1
 004B37A5    cmp         byte ptr [ebp+8],0
>004B37A9    jne         004B37D6
 004B37AB    mov         eax,dword ptr [ebp-4]
 004B37AE    cmp         word ptr [eax+2FA],0;TCustomListView.?f2FA:word
>004B37B6    je          004B37D6
 004B37B8    mov         ax,word ptr [ebp-0A]
 004B37BC    push        eax
 004B37BD    lea         eax,[ebp-0B]
 004B37C0    push        eax
 004B37C1    mov         ebx,dword ptr [ebp-4]
 004B37C4    mov         ecx,dword ptr [ebp-8]
 004B37C7    mov         edx,dword ptr [ebp-4]
 004B37CA    mov         eax,dword ptr [ebx+2FC];TCustomListView.?f2FC:dword
 004B37D0    call        dword ptr [ebx+2F8];TCustomListView.FOnCustomDrawItem
 004B37D6    mov         eax,dword ptr [ebp-4]
 004B37D9    cmp         word ptr [eax+2B2],0;TCustomListView.?f2B2:word
>004B37E1    je          004B3805
 004B37E3    mov         ax,word ptr [ebp-0A]
 004B37E7    push        eax
 004B37E8    mov         al,byte ptr [ebp+8]
 004B37EB    push        eax
 004B37EC    lea         eax,[ebp-0B]
 004B37EF    push        eax
 004B37F0    mov         ebx,dword ptr [ebp-4]
 004B37F3    mov         ecx,dword ptr [ebp-8]
 004B37F6    mov         edx,dword ptr [ebp-4]
 004B37F9    mov         eax,dword ptr [ebx+2B4];TCustomListView.?f2B4:dword
 004B37FF    call        dword ptr [ebx+2B0];TCustomListView.FOnAdvancedCustomDrawItem
 004B3805    mov         al,byte ptr [ebp-0B]
 004B3808    pop         ebx
 004B3809    mov         esp,ebp
 004B380B    pop         ebp
 004B380C    ret         4
end;*}

//004B3810
{*function sub_004B3810(?:?; ?:?; ?:?; ?:?):?;
begin
 004B3810    push        ebp
 004B3811    mov         ebp,esp
 004B3813    add         esp,0FFFFFFF0
 004B3816    push        ebx
 004B3817    mov         dword ptr [ebp-0C],ecx
 004B381A    mov         dword ptr [ebp-8],edx
 004B381D    mov         dword ptr [ebp-4],eax
 004B3820    mov         byte ptr [ebp-0D],1
 004B3824    cmp         byte ptr [ebp+8],0
>004B3828    jne         004B3859
 004B382A    mov         eax,dword ptr [ebp-4]
 004B382D    cmp         word ptr [eax+302],0;TCustomListView.?f302:word
>004B3835    je          004B3859
 004B3837    mov         eax,dword ptr [ebp-0C]
 004B383A    push        eax
 004B383B    mov         ax,word ptr [ebp+0C]
 004B383F    push        eax
 004B3840    lea         eax,[ebp-0D]
 004B3843    push        eax
 004B3844    mov         ebx,dword ptr [ebp-4]
 004B3847    mov         ecx,dword ptr [ebp-8]
 004B384A    mov         edx,dword ptr [ebp-4]
 004B384D    mov         eax,dword ptr [ebx+304];TCustomListView.?f304:dword
 004B3853    call        dword ptr [ebx+300];TCustomListView.FOnCustomDrawSubItem
 004B3859    mov         eax,dword ptr [ebp-4]
 004B385C    cmp         word ptr [eax+2BA],0;TCustomListView.?f2BA:word
>004B3864    je          004B388C
 004B3866    mov         eax,dword ptr [ebp-0C]
 004B3869    push        eax
 004B386A    mov         ax,word ptr [ebp+0C]
 004B386E    push        eax
 004B386F    mov         al,byte ptr [ebp+8]
 004B3872    push        eax
 004B3873    lea         eax,[ebp-0D]
 004B3876    push        eax
 004B3877    mov         ebx,dword ptr [ebp-4]
 004B387A    mov         ecx,dword ptr [ebp-8]
 004B387D    mov         edx,dword ptr [ebp-4]
 004B3880    mov         eax,dword ptr [ebx+2BC];TCustomListView.?f2BC:dword
 004B3886    call        dword ptr [ebx+2B8];TCustomListView.FOnAdvancedCustomDrawSubItem
 004B388C    mov         al,byte ptr [ebp-0D]
 004B388F    pop         ebx
 004B3890    mov         esp,ebp
 004B3892    pop         ebp
 004B3893    ret         8
end;*}

//004B3898
{*procedure sub_004B3898(?:?; ?:?; ?:?);
begin
 004B3898    push        ebp
 004B3899    mov         ebp,esp
 004B389B    add         esp,0FFFFFFE8
 004B389E    push        ebx
 004B389F    push        esi
 004B38A0    push        edi
 004B38A1    mov         esi,ecx
 004B38A3    lea         edi,[ebp-18]
 004B38A6    movs        dword ptr [edi],dword ptr [esi]
 004B38A7    movs        dword ptr [edi],dword ptr [esi]
 004B38A8    movs        dword ptr [edi],dword ptr [esi]
 004B38A9    movs        dword ptr [edi],dword ptr [esi]
 004B38AA    mov         dword ptr [ebp-8],edx
 004B38AD    mov         dword ptr [ebp-4],eax
 004B38B0    mov         eax,dword ptr [ebp-4]
 004B38B3    mov         eax,dword ptr [eax+210];TCustomListView.FCanvas:TCanvas
 004B38B9    call        004C9348
 004B38BE    mov         eax,dword ptr [ebp-4]
 004B38C1    cmp         word ptr [eax+332],0;TCustomListView.?f332:word
>004B38C9    je          004B38EB
 004B38CB    lea         eax,[ebp-18]
 004B38CE    push        eax
 004B38CF    mov         ax,word ptr [ebp+8]
 004B38D3    push        eax
 004B38D4    mov         ebx,dword ptr [ebp-4]
 004B38D7    mov         ecx,dword ptr [ebp-8]
 004B38DA    mov         edx,dword ptr [ebp-4]
 004B38DD    mov         eax,dword ptr [ebx+334];TCustomListView.?f334:dword
 004B38E3    call        dword ptr [ebx+330];TCustomListView.FOnDrawItem
>004B38E9    jmp         004B391A
 004B38EB    lea         edx,[ebp-18]
 004B38EE    mov         eax,dword ptr [ebp-4]
 004B38F1    mov         eax,dword ptr [eax+210];TCustomListView.FCanvas:TCanvas
 004B38F7    call        TCanvas.FillRect
 004B38FC    mov         eax,dword ptr [ebp-8]
 004B38FF    mov         eax,dword ptr [eax+24]
 004B3902    push        eax
 004B3903    mov         edx,dword ptr [ebp-18]
 004B3906    add         edx,2;TRect.Left:Longint
 004B3909    mov         ecx,dword ptr [ebp-14]
 004B390C    mov         eax,dword ptr [ebp-4]
 004B390F    mov         eax,dword ptr [eax+210];TCustomListView.FCanvas:TCanvas
 004B3915    call        00488094
 004B391A    pop         edi
 004B391B    pop         esi
 004B391C    pop         ebx
 004B391D    mov         esp,ebp
 004B391F    pop         ebp
 004B3920    ret         4
end;*}

//004B3924
{*procedure sub_004B3924(?:TCustomListView; ?:?; ?:?; ?:?);
begin
 004B3924    push        ebp
 004B3925    mov         ebp,esp
 004B3927    add         esp,0FFFFFFF4
 004B392A    push        ebx
 004B392B    mov         dword ptr [ebp-0C],ecx
 004B392E    mov         dword ptr [ebp-8],edx
 004B3931    mov         dword ptr [ebp-4],eax
 004B3934    mov         eax,dword ptr [ebp-4]
 004B3937    cmp         word ptr [eax+352],0;TCustomListView.?f352:word
>004B393F    je          004B3974
 004B3941    mov         eax,dword ptr [ebp-8]
 004B3944    mov         eax,dword ptr [eax+8]
 004B3947    mov         edx,dword ptr [eax]
 004B3949    call        dword ptr [edx+14]
 004B394C    cmp         eax,dword ptr [ebp-0C]
>004B394F    jle         004B3974
 004B3951    cmp         dword ptr [ebp-0C],0
>004B3955    jl          004B3974
 004B3957    mov         eax,dword ptr [ebp-0C]
 004B395A    push        eax
 004B395B    mov         eax,dword ptr [ebp+8]
 004B395E    push        eax
 004B395F    mov         ebx,dword ptr [ebp-4]
 004B3962    mov         ecx,dword ptr [ebp-8]
 004B3965    mov         edx,dword ptr [ebp-4]
 004B3968    mov         eax,dword ptr [ebx+354];TCustomListView.?f354:dword
 004B396E    call        dword ptr [ebx+350];TCustomListView.FOnGetSubItemImage
 004B3974    pop         ebx
 004B3975    mov         esp,ebp
 004B3977    pop         ebp
 004B3978    ret         4
end;*}

//004B397C
procedure sub_004B397C(?:TCustomListView);
begin
{*
 004B397C    push        ebp
 004B397D    mov         ebp,esp
 004B397F    add         esp,0FFFFFFC8
 004B3982    push        esi
 004B3983    push        edi
 004B3984    xor         edx,edx
 004B3986    mov         dword ptr [ebp-38],edx
 004B3989    mov         dword ptr [ebp-34],edx
 004B398C    mov         dword ptr [ebp-4],eax
 004B398F    xor         eax,eax
 004B3991    push        ebp
 004B3992    push        4B3B06
 004B3997    push        dword ptr fs:[eax]
 004B399A    mov         dword ptr fs:[eax],esp
 004B399D    mov         eax,dword ptr [ebp-4]
 004B39A0    mov         eax,dword ptr [eax+210]
 004B39A6    mov         dword ptr [ebp-14],eax
 004B39A9    mov         dl,1
 004B39AB    mov         eax,dword ptr [ebp-14]
 004B39AE    mov         eax,dword ptr [eax+14]
 004B39B1    call        TBrush.SetStyle
 004B39B6    mov         eax,dword ptr [ebp-4]
 004B39B9    mov         eax,dword ptr [eax+290]
 004B39BF    call        00479B60
 004B39C4    dec         eax
 004B39C5    test        eax,eax
>004B39C7    jl          004B3AEB
 004B39CD    inc         eax
 004B39CE    mov         dword ptr [ebp-18],eax
 004B39D1    mov         dword ptr [ebp-8],0
 004B39D8    mov         edx,dword ptr [ebp-8]
 004B39DB    mov         eax,dword ptr [ebp-4]
 004B39DE    mov         eax,dword ptr [eax+290]
 004B39E4    call        004AD8A0
 004B39E9    mov         edx,dword ptr [eax+20]
 004B39EC    mov         eax,dword ptr [ebp-14]
 004B39EF    mov         eax,dword ptr [eax+10]
 004B39F2    call        TPen.SetColor
 004B39F7    mov         dl,2
 004B39F9    mov         eax,dword ptr [ebp-14]
 004B39FC    mov         eax,dword ptr [eax+10]
 004B39FF    call        TPen.SetStyle
 004B3A04    lea         edx,[ebp-30]
 004B3A07    mov         eax,dword ptr [ebp-4]
 004B3A0A    call        004B28DC
 004B3A0F    mov         eax,dword ptr [ebp-30]
 004B3A12    neg         eax
 004B3A14    mov         dword ptr [ebp-0C],eax
 004B3A17    lea         edx,[ebp-30]
 004B3A1A    mov         eax,dword ptr [ebp-4]
 004B3A1D    call        004B28DC
 004B3A22    mov         eax,dword ptr [ebp-2C]
 004B3A25    neg         eax
 004B3A27    mov         dword ptr [ebp-10],eax
 004B3A2A    mov         edx,dword ptr [ebp-8]
 004B3A2D    mov         eax,dword ptr [ebp-4]
 004B3A30    mov         eax,dword ptr [eax+290]
 004B3A36    call        004AD8A0
 004B3A3B    lea         esi,[eax+0C]
 004B3A3E    lea         edi,[ebp-28]
 004B3A41    movs        dword ptr [edi],dword ptr [esi]
 004B3A42    movs        dword ptr [edi],dword ptr [esi]
 004B3A43    movs        dword ptr [edi],dword ptr [esi]
 004B3A44    movs        dword ptr [edi],dword ptr [esi]
 004B3A45    lea         eax,[ebp-28]
 004B3A48    mov         ecx,dword ptr [ebp-10]
 004B3A4B    mov         edx,dword ptr [ebp-0C]
 004B3A4E    call        00406EE0
 004B3A53    mov         eax,dword ptr [ebp-20]
 004B3A56    push        eax
 004B3A57    mov         eax,dword ptr [ebp-1C]
 004B3A5A    push        eax
 004B3A5B    mov         ecx,dword ptr [ebp-24]
 004B3A5E    mov         edx,dword ptr [ebp-28]
 004B3A61    mov         eax,dword ptr [ebp-14]
 004B3A64    call        00487F84
 004B3A69    mov         edx,dword ptr [ebp-8]
 004B3A6C    mov         eax,dword ptr [ebp-4]
 004B3A6F    mov         eax,dword ptr [eax+290]
 004B3A75    call        004AD8A0
 004B3A7A    lea         edx,[ebp-34]
 004B3A7D    mov         ecx,dword ptr [eax]
 004B3A7F    call        dword ptr [ecx+0C]
 004B3A82    cmp         dword ptr [ebp-34],0
>004B3A86    je          004B3ADF
 004B3A88    xor         edx,edx
 004B3A8A    mov         eax,dword ptr [ebp-14]
 004B3A8D    mov         eax,dword ptr [eax+10]
 004B3A90    call        TPen.SetStyle
 004B3A95    mov         edx,dword ptr [ebp-8]
 004B3A98    mov         eax,dword ptr [ebp-4]
 004B3A9B    mov         eax,dword ptr [eax+290]
 004B3AA1    call        004AD8A0
 004B3AA6    mov         edx,dword ptr [eax+20]
 004B3AA9    mov         eax,dword ptr [ebp-14]
 004B3AAC    mov         eax,dword ptr [eax+0C]
 004B3AAF    call        TFont.SetColor
 004B3AB4    mov         edx,dword ptr [ebp-8]
 004B3AB7    mov         eax,dword ptr [ebp-4]
 004B3ABA    mov         eax,dword ptr [eax+290]
 004B3AC0    call        004AD8A0
 004B3AC5    lea         edx,[ebp-38]
 004B3AC8    mov         ecx,dword ptr [eax]
 004B3ACA    call        dword ptr [ecx+0C]
 004B3ACD    mov         eax,dword ptr [ebp-38]
 004B3AD0    push        eax
 004B3AD1    mov         ecx,dword ptr [ebp-1C]
 004B3AD4    mov         edx,dword ptr [ebp-28]
 004B3AD7    mov         eax,dword ptr [ebp-14]
 004B3ADA    call        00488094
 004B3ADF    inc         dword ptr [ebp-8]
 004B3AE2    dec         dword ptr [ebp-18]
>004B3AE5    jne         004B39D8
 004B3AEB    xor         eax,eax
 004B3AED    pop         edx
 004B3AEE    pop         ecx
 004B3AEF    pop         ecx
 004B3AF0    mov         dword ptr fs:[eax],edx
 004B3AF3    push        4B3B0D
 004B3AF8    lea         eax,[ebp-38]
 004B3AFB    mov         edx,2
 004B3B00    call        @LStrArrayClr
 004B3B05    ret
>004B3B06    jmp         @HandleFinally
>004B3B0B    jmp         004B3AF8
 004B3B0D    pop         edi
 004B3B0E    pop         esi
 004B3B0F    mov         esp,ebp
 004B3B11    pop         ebp
 004B3B12    ret
*}
end;

//004B3B14
procedure TCustomListView.WMPaint(Message:TWMPaint);
begin
{*
 004B3B14    push        ebp
 004B3B15    mov         ebp,esp
 004B3B17    add         esp,0FFFFFFF8
 004B3B1A    mov         dword ptr [ebp-8],edx
 004B3B1D    mov         dword ptr [ebp-4],eax
 004B3B20    mov         edx,dword ptr [ebp-8]
 004B3B23    mov         eax,dword ptr [ebp-4]
 004B3B26    call        TWinControl.WMPaint
 004B3B2B    mov         eax,dword ptr [ebp-4]
 004B3B2E    mov         al,byte ptr [eax+215];TCustomListView.FViewStyle:TViewStyle
 004B3B34    sub         al,2
>004B3B36    jae         004B3B4C
 004B3B38    mov         eax,dword ptr [ebp-4]
 004B3B3B    cmp         byte ptr [eax+294],0;TCustomListView.FShowWorkAreas:Boolean
>004B3B42    je          004B3B4C
 004B3B44    mov         eax,dword ptr [ebp-4]
 004B3B47    call        004B397C
 004B3B4C    pop         ecx
 004B3B4D    pop         ecx
 004B3B4E    pop         ebp
 004B3B4F    ret
*}
end;

//004B3B50
procedure TListView.SetShowWorkAreas(Value:Boolean);
begin
{*
 004B3B50    push        ebp
 004B3B51    mov         ebp,esp
 004B3B53    add         esp,0FFFFFFF8
 004B3B56    mov         byte ptr [ebp-5],dl
 004B3B59    mov         dword ptr [ebp-4],eax
 004B3B5C    mov         al,byte ptr [ebp-5]
 004B3B5F    mov         edx,dword ptr [ebp-4]
 004B3B62    mov         byte ptr [edx+294],al;TListView.FShowWorkAreas:Boolean
 004B3B68    mov         eax,dword ptr [ebp-4]
 004B3B6B    mov         edx,dword ptr [eax]
 004B3B6D    call        dword ptr [edx+7C];TListView.sub_004D3648
 004B3B70    pop         ecx
 004B3B71    pop         ecx
 004B3B72    pop         ebp
 004B3B73    ret
*}
end;

//004B3B74
{*procedure TCustomListView.CMHintShow(?:?);
begin
 004B3B74    push        ebp
 004B3B75    mov         ebp,esp
 004B3B77    add         esp,0FFFFFFD4
 004B3B7A    push        ebx
 004B3B7B    push        esi
 004B3B7C    push        edi
 004B3B7D    xor         ecx,ecx
 004B3B7F    mov         dword ptr [ebp-10],ecx
 004B3B82    mov         dword ptr [ebp-8],edx
 004B3B85    mov         dword ptr [ebp-4],eax
 004B3B88    xor         eax,eax
 004B3B8A    push        ebp
 004B3B8B    push        4B3CBA
 004B3B90    push        dword ptr fs:[eax]
 004B3B93    mov         dword ptr fs:[eax],esp
 004B3B96    mov         eax,dword ptr [ebp-4]
 004B3B99    cmp         word ptr [eax+35A],0;TCustomListView.?f35A:word
>004B3BA1    je          004B3C99
 004B3BA7    mov         eax,dword ptr [ebp-8]
 004B3BAA    mov         eax,dword ptr [eax+8]
 004B3BAD    mov         ecx,dword ptr [eax+2C]
 004B3BB0    mov         eax,dword ptr [ebp-8]
 004B3BB3    mov         eax,dword ptr [eax+8]
 004B3BB6    mov         edx,dword ptr [eax+28]
 004B3BB9    mov         eax,dword ptr [ebp-4]
 004B3BBC    call        004B2E44
 004B3BC1    mov         dword ptr [ebp-0C],eax
 004B3BC4    cmp         dword ptr [ebp-0C],0
>004B3BC8    je          004B3CA4
 004B3BCE    lea         eax,[ebp-10]
 004B3BD1    mov         edx,dword ptr [ebp-0C]
 004B3BD4    mov         edx,dword ptr [edx+24]
 004B3BD7    call        @LStrLAsg
 004B3BDC    lea         ecx,[ebp-10]
 004B3BDF    mov         edx,dword ptr [ebp-0C]
 004B3BE2    mov         eax,dword ptr [ebp-4]
 004B3BE5    mov         ebx,dword ptr [eax]
 004B3BE7    call        dword ptr [ebx+10C];TCustomListView.sub_004B3CC8
 004B3BED    lea         ecx,[ebp-24]
 004B3BF0    xor         edx,edx
 004B3BF2    mov         eax,dword ptr [ebp-0C]
 004B3BF5    call        004AE50C
 004B3BFA    lea         ecx,[ebp-2C]
 004B3BFD    lea         edx,[ebp-24]
 004B3C00    mov         eax,dword ptr [ebp-4]
 004B3C03    call        TControl.ClientToScreen
 004B3C08    mov         eax,dword ptr [ebp-2C]
 004B3C0B    mov         dword ptr [ebp-24],eax
 004B3C0E    mov         eax,dword ptr [ebp-28]
 004B3C11    mov         dword ptr [ebp-20],eax
 004B3C14    lea         ecx,[ebp-2C]
 004B3C17    lea         edx,[ebp-1C]
 004B3C1A    mov         eax,dword ptr [ebp-4]
 004B3C1D    call        TControl.ClientToScreen
 004B3C22    mov         eax,dword ptr [ebp-2C]
 004B3C25    mov         dword ptr [ebp-1C],eax
 004B3C28    mov         eax,dword ptr [ebp-28]
 004B3C2B    mov         dword ptr [ebp-18],eax
 004B3C2E    mov         eax,dword ptr [ebp-8]
 004B3C31    mov         eax,dword ptr [eax+8]
 004B3C34    mov         dword ptr [ebp-14],eax
 004B3C37    mov         eax,dword ptr [ebp-8]
 004B3C3A    mov         eax,dword ptr [eax+8]
 004B3C3D    lea         edi,[eax+18]
 004B3C40    lea         esi,[ebp-24]
 004B3C43    movs        dword ptr [edi],dword ptr [esi]
 004B3C44    movs        dword ptr [edi],dword ptr [esi]
 004B3C45    movs        dword ptr [edi],dword ptr [esi]
 004B3C46    movs        dword ptr [edi],dword ptr [esi]
 004B3C47    mov         eax,dword ptr [ebp-8]
 004B3C4A    mov         eax,dword ptr [eax+8]
 004B3C4D    add         eax,38
 004B3C50    mov         edx,dword ptr [ebp-10]
 004B3C53    call        @LStrAsg
 004B3C58    push        0E
 004B3C5A    call        user32.GetSystemMetrics
 004B3C5F    mov         edx,dword ptr [ebp-14]
 004B3C62    add         eax,dword ptr [edx+1C]
 004B3C65    mov         edx,dword ptr [ebp-14]
 004B3C68    mov         dword ptr [edx+0C],eax
 004B3C6B    push        0D
 004B3C6D    call        user32.GetSystemMetrics
 004B3C72    mov         edx,dword ptr [ebp-14]
 004B3C75    add         eax,dword ptr [edx+18]
 004B3C78    mov         edx,dword ptr [ebp-14]
 004B3C7B    mov         dword ptr [edx+8],eax
 004B3C7E    mov         eax,dword ptr [ebp-4]
 004B3C81    call        TControl.GetClientWidth
 004B3C86    mov         edx,dword ptr [ebp-8]
 004B3C89    mov         edx,dword ptr [edx+8]
 004B3C8C    mov         dword ptr [edx+10],eax
 004B3C8F    mov         eax,dword ptr [ebp-8]
 004B3C92    xor         edx,edx
 004B3C94    mov         dword ptr [eax+0C],edx
>004B3C97    jmp         004B3CA4
 004B3C99    mov         edx,dword ptr [ebp-8]
 004B3C9C    mov         eax,dword ptr [ebp-4]
 004B3C9F    call        TControl.CMHintShow
 004B3CA4    xor         eax,eax
 004B3CA6    pop         edx
 004B3CA7    pop         ecx
 004B3CA8    pop         ecx
 004B3CA9    mov         dword ptr fs:[eax],edx
 004B3CAC    push        4B3CC1
 004B3CB1    lea         eax,[ebp-10]
 004B3CB4    call        @LStrClr
 004B3CB9    ret
>004B3CBA    jmp         @HandleFinally
>004B3CBF    jmp         004B3CB1
 004B3CC1    pop         edi
 004B3CC2    pop         esi
 004B3CC3    pop         ebx
 004B3CC4    mov         esp,ebp
 004B3CC6    pop         ebp
 004B3CC7    ret
end;*}

//004B3CC8
{*procedure sub_004B3CC8(?:?; ?:?);
begin
 004B3CC8    push        ebp
 004B3CC9    mov         ebp,esp
 004B3CCB    add         esp,0FFFFFFF4
 004B3CCE    push        ebx
 004B3CCF    mov         dword ptr [ebp-0C],ecx
 004B3CD2    mov         dword ptr [ebp-8],edx
 004B3CD5    mov         dword ptr [ebp-4],eax
 004B3CD8    mov         eax,dword ptr [ebp-4]
 004B3CDB    cmp         word ptr [eax+35A],0;TCustomListView.?f35A:word
>004B3CE3    je          004B3CFE
 004B3CE5    mov         eax,dword ptr [ebp-0C]
 004B3CE8    push        eax
 004B3CE9    mov         ebx,dword ptr [ebp-4]
 004B3CEC    mov         ecx,dword ptr [ebp-8]
 004B3CEF    mov         edx,dword ptr [ebp-4]
 004B3CF2    mov         eax,dword ptr [ebx+35C];TCustomListView.?f35C:dword
 004B3CF8    call        dword ptr [ebx+358];TCustomListView.FOnInfoTip
 004B3CFE    pop         ebx
 004B3CFF    mov         esp,ebp
 004B3D01    pop         ebp
 004B3D02    ret
end;*}

//004B3D04
procedure TListView.SetHoverTime(Value:Integer);
begin
{*
 004B3D04    push        ebp
 004B3D05    mov         ebp,esp
 004B3D07    add         esp,0FFFFFFF8
 004B3D0A    mov         dword ptr [ebp-8],edx
 004B3D0D    mov         dword ptr [ebp-4],eax
 004B3D10    mov         eax,dword ptr [ebp-4]
 004B3D13    call        TListView.GetHoverTime
 004B3D18    cmp         eax,dword ptr [ebp-8]
>004B3D1B    je          004B3D2D
 004B3D1D    mov         eax,dword ptr [ebp-4]
 004B3D20    call        TWinControl.GetHandle
 004B3D25    mov         edx,dword ptr [ebp-8]
 004B3D28    call        0042FB8C
 004B3D2D    pop         ecx
 004B3D2E    pop         ecx
 004B3D2F    pop         ebp
 004B3D30    ret
*}
end;

//004B3D34
{*function TListView.GetHoverTime:?;
begin
 004B3D34    push        ebp
 004B3D35    mov         ebp,esp
 004B3D37    add         esp,0FFFFFFF8
 004B3D3A    mov         dword ptr [ebp-4],eax
 004B3D3D    mov         eax,dword ptr [ebp-4]
 004B3D40    call        TWinControl.GetHandle
 004B3D45    call        0042FBB8
 004B3D4A    mov         dword ptr [ebp-8],eax
 004B3D4D    mov         eax,dword ptr [ebp-8]
 004B3D50    pop         ecx
 004B3D51    pop         ecx
 004B3D52    pop         ebp
 004B3D53    ret
end;*}

//004B3D54
function TListView.IsStoredItems(Value:TListItems):Boolean;
begin
{*
 004B3D54    push        ebp
 004B3D55    mov         ebp,esp
 004B3D57    add         esp,0FFFFFFF8
 004B3D5A    mov         dword ptr [ebp-4],eax
 004B3D5D    mov         eax,dword ptr [ebp-4]
 004B3D60    mov         edx,dword ptr [eax]
 004B3D62    call        dword ptr [edx+3C];TSpeedButton.GetAction
 004B3D65    test        eax,eax
>004B3D67    je          004B3D8C
 004B3D69    mov         eax,dword ptr [ebp-4]
 004B3D6C    mov         edx,dword ptr [eax]
 004B3D6E    call        dword ptr [edx+3C];TSpeedButton.GetAction
 004B3D71    mov         edx,dword ptr ds:[4A09A8];TCustomListAction
 004B3D77    call        @IsClass
 004B3D7C    test        al,al
>004B3D7E    je          004B3D86
 004B3D80    mov         byte ptr [ebp-5],0
>004B3D84    jmp         004B3D9A
 004B3D86    mov         byte ptr [ebp-5],1
>004B3D8A    jmp         004B3D9A
 004B3D8C    mov         eax,dword ptr [ebp-4]
 004B3D8F    mov         al,byte ptr [eax+244];TListView.FOwnerData:Boolean
 004B3D95    xor         al,1
 004B3D97    mov         byte ptr [ebp-5],al
 004B3D9A    mov         al,byte ptr [ebp-5]
 004B3D9D    pop         ecx
 004B3D9E    pop         ecx
 004B3D9F    pop         ebp
 004B3DA0    ret
*}
end;

//004B3DA4
{*procedure TCustomListView.sub_004B3DA4(?:?; ?:?; ?:?; ?:?);
begin
 004B3DA4    push        ebp
 004B3DA5    mov         ebp,esp
 004B3DA7    add         esp,0FFFFFFF8
 004B3DAA    mov         byte ptr [ebp-6],cl
 004B3DAD    mov         byte ptr [ebp-5],dl
 004B3DB0    mov         dword ptr [ebp-4],eax
 004B3DB3    mov         ecx,dword ptr [ebp+8]
 004B3DB6    mov         edx,dword ptr [ebp+0C]
 004B3DB9    mov         eax,dword ptr [ebp-4]
 004B3DBC    call        004B2E44
 004B3DC1    test        eax,eax
>004B3DC3    jne         004B3DD1
 004B3DC5    mov         eax,dword ptr [ebp-4]
 004B3DC8    cmp         byte ptr [eax+230],0;TCustomListView.FClicked:Boolean
>004B3DCF    jne         004B3DE7
 004B3DD1    mov         eax,dword ptr [ebp+0C]
 004B3DD4    push        eax
 004B3DD5    mov         eax,dword ptr [ebp+8]
 004B3DD8    push        eax
 004B3DD9    mov         cl,byte ptr [ebp-6]
 004B3DDC    mov         dl,byte ptr [ebp-5]
 004B3DDF    mov         eax,dword ptr [ebp-4]
 004B3DE2    call        TControl.sub_004CD1B0
 004B3DE7    pop         ecx
 004B3DE8    pop         ecx
 004B3DE9    pop         ebp
 004B3DEA    ret         8
end;*}

//004B3DF0
{*function sub_004B3DF0(?:TCustomListView; ?:?):?;
begin
 004B3DF0    push        ebp
 004B3DF1    mov         ebp,esp
 004B3DF3    add         esp,0FFFFFFEC
 004B3DF6    mov         dword ptr [ebp-8],edx
 004B3DF9    mov         dword ptr [ebp-4],eax
 004B3DFC    mov         eax,dword ptr [ebp-4]
 004B3DFF    mov         eax,dword ptr [eax+23C];TCustomListView.FListColumns:TListColumns
 004B3E05    call        00479B60
 004B3E0A    dec         eax
 004B3E0B    test        eax,eax
>004B3E0D    jl          004B3E41
 004B3E0F    inc         eax
 004B3E10    mov         dword ptr [ebp-14],eax
 004B3E13    mov         dword ptr [ebp-10],0
 004B3E1A    mov         eax,dword ptr [ebp-4]
 004B3E1D    mov         eax,dword ptr [eax+23C];TCustomListView.FListColumns:TListColumns
 004B3E23    mov         edx,dword ptr [ebp-10]
 004B3E26    call        004AD570
 004B3E2B    mov         dword ptr [ebp-0C],eax
 004B3E2E    mov         eax,dword ptr [ebp-0C]
 004B3E31    mov         eax,dword ptr [eax+28]
 004B3E34    cmp         eax,dword ptr [ebp-8]
>004B3E37    je          004B3E46
 004B3E39    inc         dword ptr [ebp-10]
 004B3E3C    dec         dword ptr [ebp-14]
>004B3E3F    jne         004B3E1A
 004B3E41    xor         eax,eax
 004B3E43    mov         dword ptr [ebp-0C],eax
 004B3E46    mov         eax,dword ptr [ebp-0C]
 004B3E49    mov         esp,ebp
 004B3E4B    pop         ebp
 004B3E4C    ret
end;*}

//004B3E50
{*procedure TCustomListView.WMContextMenu(?:?);
begin
 004B3E50    push        ebp
 004B3E51    mov         ebp,esp
 004B3E53    add         esp,0FFFFFFD8
 004B3E56    mov         dword ptr [ebp-8],edx
 004B3E59    mov         dword ptr [ebp-4],eax
 004B3E5C    mov         eax,dword ptr [ebp-4]
 004B3E5F    test        byte ptr [eax+1C],10;TCustomListView.FComponentState:TComponentState
>004B3E63    jne         004B3E70
 004B3E65    mov         eax,dword ptr [ebp-4]
 004B3E68    mov         edx,dword ptr [eax]
 004B3E6A    call        dword ptr [edx+0C4];TCustomListView.sub_004D3808
 004B3E70    mov         eax,dword ptr [ebp-8]
 004B3E73    mov         eax,dword ptr [eax+8]
 004B3E76    call        00476D6C
 004B3E7B    test        al,al
>004B3E7D    je          004B3EC4
 004B3E7F    mov         eax,dword ptr [ebp-4]
 004B3E82    call        004B2BE8
 004B3E87    test        eax,eax
>004B3E89    je          004B3EC4
 004B3E8B    mov         eax,dword ptr [ebp-4]
 004B3E8E    call        004B2BE8
 004B3E93    lea         ecx,[ebp-28]
 004B3E96    mov         dl,3
 004B3E98    call        004AE50C
 004B3E9D    lea         eax,[ebp-28]
 004B3EA0    lea         edx,[ebp-18]
 004B3EA3    call        00406F6C
 004B3EA8    lea         edx,[ebp-18]
 004B3EAB    lea         ecx,[ebp-10]
 004B3EAE    mov         eax,dword ptr [ebp-4]
 004B3EB1    call        TControl.ClientToScreen
 004B3EB6    lea         eax,[ebp-10]
 004B3EB9    call        00408274
 004B3EBE    mov         edx,dword ptr [ebp-8]
 004B3EC1    mov         dword ptr [edx+8],eax
 004B3EC4    mov         edx,dword ptr [ebp-8]
 004B3EC7    mov         eax,dword ptr [ebp-4]
 004B3ECA    call        TWinControl.WMContextMenu
 004B3ECF    mov         esp,ebp
 004B3ED1    pop         ebp
 004B3ED2    ret
end;*}

//004B3ED4
procedure sub_004B3ED4;
begin
{*
 004B3ED4    push        ebp
 004B3ED5    mov         ebp,esp
 004B3ED7    add         esp,0FFFFFFF4
 004B3EDA    mov         dword ptr [ebp-4],eax
 004B3EDD    mov         eax,dword ptr [ebp-4]
 004B3EE0    mov         eax,dword ptr [eax+22C];TCustomListView.FListItems:TListItems
 004B3EE6    call        004AE700
 004B3EEB    dec         eax
 004B3EEC    test        eax,eax
>004B3EEE    jl          004B3F20
 004B3EF0    inc         eax
 004B3EF1    mov         dword ptr [ebp-0C],eax
 004B3EF4    mov         dword ptr [ebp-8],0
 004B3EFB    mov         eax,dword ptr [ebp-4]
 004B3EFE    mov         eax,dword ptr [eax+22C];TCustomListView.FListItems:TListItems
 004B3F04    mov         edx,dword ptr [ebp-8]
 004B3F07    call        004AE758
 004B3F0C    xor         ecx,ecx
 004B3F0E    mov         edx,3
 004B3F13    call        004AE0EC
 004B3F18    inc         dword ptr [ebp-8]
 004B3F1B    dec         dword ptr [ebp-0C]
>004B3F1E    jne         004B3EFB
 004B3F20    mov         esp,ebp
 004B3F22    pop         ebp
 004B3F23    ret
*}
end;

//004B3F24
{*procedure sub_004B3F24(?:?);
begin
 004B3F24    push        ebp
 004B3F25    mov         ebp,esp
 004B3F27    add         esp,0FFFFFFF0
 004B3F2A    push        ebx
 004B3F2B    mov         dword ptr [ebp-8],edx
 004B3F2E    mov         dword ptr [ebp-4],eax
 004B3F31    mov         eax,dword ptr [ebp-4]
 004B3F34    mov         eax,dword ptr [eax+22C];TCustomListView.FListItems:TListItems
 004B3F3A    call        004AE700
 004B3F3F    dec         eax
 004B3F40    test        eax,eax
>004B3F42    jl          004B3FAB
 004B3F44    inc         eax
 004B3F45    mov         dword ptr [ebp-10],eax
 004B3F48    mov         dword ptr [ebp-0C],0
 004B3F4F    mov         edx,dword ptr [ebp-0C]
 004B3F52    mov         eax,dword ptr [ebp-4]
 004B3F55    mov         eax,dword ptr [eax+22C];TCustomListView.FListItems:TListItems
 004B3F5B    call        004AE758
 004B3F60    mov         edx,3
 004B3F65    call        004AE060
 004B3F6A    test        al,al
>004B3F6C    je          004B3FA3
 004B3F6E    mov         edx,dword ptr [ebp-0C]
 004B3F71    mov         eax,dword ptr [ebp-4]
 004B3F74    mov         eax,dword ptr [eax+22C];TCustomListView.FListItems:TListItems
 004B3F7A    call        004AE758
 004B3F7F    mov         eax,dword ptr [eax+0C]
 004B3F82    push        eax
 004B3F83    mov         edx,dword ptr [ebp-0C]
 004B3F86    mov         eax,dword ptr [ebp-4]
 004B3F89    mov         eax,dword ptr [eax+22C];TCustomListView.FListItems:TListItems
 004B3F8F    call        004AE758
 004B3F94    mov         edx,dword ptr [eax+24]
 004B3F97    mov         eax,dword ptr [ebp-8]
 004B3F9A    pop         ecx
 004B3F9B    mov         ebx,dword ptr [eax]
 004B3F9D    call        dword ptr [ebx+0D4]
 004B3FA3    inc         dword ptr [ebp-0C]
 004B3FA6    dec         dword ptr [ebp-10]
>004B3FA9    jne         004B3F4F
 004B3FAB    pop         ebx
 004B3FAC    mov         esp,ebp
 004B3FAE    pop         ebp
 004B3FAF    ret
end;*}

//004B3FB0
procedure sub_004B3FB0;
begin
{*
 004B3FB0    push        ebp
 004B3FB1    mov         ebp,esp
 004B3FB3    add         esp,0FFFFFFF8
 004B3FB6    push        esi
 004B3FB7    mov         dword ptr [ebp-4],eax
 004B3FBA    mov         eax,dword ptr [ebp-4]
 004B3FBD    mov         eax,dword ptr [eax+22C];TCustomListView.FListItems:TListItems
 004B3FC3    call        TListItems.BeginUpdate
 004B3FC8    xor         eax,eax
 004B3FCA    push        ebp
 004B3FCB    push        4B4050
 004B3FD0    push        dword ptr fs:[eax]
 004B3FD3    mov         dword ptr fs:[eax],esp
 004B3FD6    mov         eax,dword ptr [ebp-4]
 004B3FD9    mov         eax,dword ptr [eax+22C];TCustomListView.FListItems:TListItems
 004B3FDF    call        004AE700
 004B3FE4    dec         eax
 004B3FE5    cmp         eax,0
>004B3FE8    jl          004B4034
 004B3FEA    mov         dword ptr [ebp-8],eax
 004B3FED    mov         eax,dword ptr [ebp-4]
 004B3FF0    mov         eax,dword ptr [eax+22C];TCustomListView.FListItems:TListItems
 004B3FF6    mov         edx,dword ptr [ebp-8]
 004B3FF9    call        004AE758
 004B3FFE    mov         edx,3
 004B4003    call        004AE060
 004B4008    test        al,al
>004B400A    je          004B402B
 004B400C    mov         eax,dword ptr [ebp-4]
 004B400F    mov         eax,dword ptr [eax+22C];TCustomListView.FListItems:TListItems
 004B4015    mov         edx,dword ptr [ebp-8]
 004B4018    call        004AE758
 004B401D    mov         edx,eax
 004B401F    mov         eax,dword ptr [ebp-4]
 004B4022    mov         si,0FFAE
 004B4026    call        @CallDynaInst;TCustomListView.sub_004B2298
 004B402B    dec         dword ptr [ebp-8]
 004B402E    cmp         dword ptr [ebp-8],0FFFFFFFF
>004B4032    jne         004B3FED
 004B4034    xor         eax,eax
 004B4036    pop         edx
 004B4037    pop         ecx
 004B4038    pop         ecx
 004B4039    mov         dword ptr fs:[eax],edx
 004B403C    push        4B4057
 004B4041    mov         eax,dword ptr [ebp-4]
 004B4044    mov         eax,dword ptr [eax+22C];TCustomListView.FListItems:TListItems
 004B404A    call        TListItems.EndUpdate
 004B404F    ret
>004B4050    jmp         @HandleFinally
>004B4055    jmp         004B4041
 004B4057    pop         esi
 004B4058    pop         ecx
 004B4059    pop         ecx
 004B405A    pop         ebp
 004B405B    ret
*}
end;

//004B405C
{*function sub_004B405C:?;
begin
 004B405C    push        ebp
 004B405D    mov         ebp,esp
 004B405F    add         esp,0FFFFFFF8
 004B4062    mov         dword ptr [ebp-4],eax
 004B4065    mov         eax,dword ptr [ebp-4]
 004B4068    mov         eax,dword ptr [eax+22C];TCustomListView.FListItems:TListItems
 004B406E    call        004AE700
 004B4073    mov         dword ptr [ebp-8],eax
 004B4076    mov         eax,dword ptr [ebp-8]
 004B4079    pop         ecx
 004B407A    pop         ecx
 004B407B    pop         ebp
 004B407C    ret
end;*}

//004B4080
procedure sub_004B4080;
begin
{*
 004B4080    push        ebp
 004B4081    mov         ebp,esp
 004B4083    add         esp,0FFFFFFF4
 004B4086    mov         dword ptr [ebp-4],eax
 004B4089    mov         eax,dword ptr [ebp-4]
 004B408C    mov         eax,dword ptr [eax+22C];TCustomListView.FListItems:TListItems
 004B4092    call        004AE700
 004B4097    dec         eax
 004B4098    test        eax,eax
>004B409A    jl          004B40CC
 004B409C    inc         eax
 004B409D    mov         dword ptr [ebp-0C],eax
 004B40A0    mov         dword ptr [ebp-8],0
 004B40A7    mov         eax,dword ptr [ebp-4]
 004B40AA    mov         eax,dword ptr [eax+22C];TCustomListView.FListItems:TListItems
 004B40B0    mov         edx,dword ptr [ebp-8]
 004B40B3    call        004AE758
 004B40B8    mov         cl,1
 004B40BA    mov         edx,3
 004B40BF    call        004AE0EC
 004B40C4    inc         dword ptr [ebp-8]
 004B40C7    dec         dword ptr [ebp-0C]
>004B40CA    jne         004B40A7
 004B40CC    mov         esp,ebp
 004B40CE    pop         ebp
 004B40CF    ret
*}
end;

//004B40D0
procedure TCustomListView.Clear;
begin
{*
 004B40D0    push        ebp
 004B40D1    mov         ebp,esp
 004B40D3    push        ecx
 004B40D4    mov         dword ptr [ebp-4],eax
 004B40D7    mov         eax,dword ptr [ebp-4]
 004B40DA    mov         eax,dword ptr [eax+22C]
 004B40E0    call        TListItems.BeginUpdate
 004B40E5    xor         eax,eax
 004B40E7    push        ebp
 004B40E8    push        4B411D
 004B40ED    push        dword ptr fs:[eax]
 004B40F0    mov         dword ptr fs:[eax],esp
 004B40F3    mov         eax,dword ptr [ebp-4]
 004B40F6    mov         eax,dword ptr [eax+22C]
 004B40FC    call        TListItems.Clear
 004B4101    xor         eax,eax
 004B4103    pop         edx
 004B4104    pop         ecx
 004B4105    pop         ecx
 004B4106    mov         dword ptr fs:[eax],edx
 004B4109    push        4B4124
 004B410E    mov         eax,dword ptr [ebp-4]
 004B4111    mov         eax,dword ptr [eax+22C]
 004B4117    call        TListItems.EndUpdate
 004B411C    ret
>004B411D    jmp         @HandleFinally
>004B4122    jmp         004B410E
 004B4124    pop         ecx
 004B4125    pop         ebp
 004B4126    ret
*}
end;

//004B4128
procedure TCustomListView.sub_004B4128;
begin
{*
 004B4128    push        ebp
 004B4129    mov         ebp,esp
 004B412B    add         esp,0FFFFFFF8
 004B412E    mov         dword ptr [ebp-4],eax
 004B4131    mov         eax,[004A744C];TListViewActionLink
 004B4136    mov         dword ptr [ebp-8],eax
 004B4139    mov         eax,dword ptr [ebp-8]
 004B413C    pop         ecx
 004B413D    pop         ecx
 004B413E    pop         ebp
 004B413F    ret
*}
end;

//004B4140
{*procedure TCustomListView.sub_004B4140(?:?; ?:?);
begin
 004B4140    push        ebp
 004B4141    mov         ebp,esp
 004B4143    add         esp,0FFFFFFF4
 004B4146    mov         byte ptr [ebp-9],cl
 004B4149    mov         dword ptr [ebp-8],edx
 004B414C    mov         dword ptr [ebp-4],eax
 004B414F    mov         cl,byte ptr [ebp-9]
 004B4152    mov         edx,dword ptr [ebp-8]
 004B4155    mov         eax,dword ptr [ebp-4]
 004B4158    call        TWinControl.sub_004CD9E4
 004B415D    mov         eax,dword ptr [ebp-8]
 004B4160    mov         edx,dword ptr ds:[4A0F28];TStaticListAction
 004B4166    call        @IsClass
 004B416B    test        al,al
>004B416D    je          004B41BA
 004B416F    cmp         byte ptr [ebp-9],0
>004B4173    je          004B4181
 004B4175    mov         eax,dword ptr [ebp-4]
 004B4178    cmp         dword ptr [eax+21C],0;TCustomListView.FSmallImages:TCustomImageList
>004B417F    jne         004B4192
 004B4181    mov         eax,dword ptr [ebp-8]
 004B4184    mov         edx,dword ptr [eax+0A4]
 004B418A    mov         eax,dword ptr [ebp-4]
 004B418D    call        TListView.SetSmallImages
 004B4192    cmp         byte ptr [ebp-9],0
>004B4196    je          004B41A6
 004B4198    mov         eax,dword ptr [ebp-4]
 004B419B    mov         edx,dword ptr [eax]
 004B419D    call        dword ptr [edx+0CC];TCustomListView.sub_004B0D54
 004B41A3    inc         eax
>004B41A4    je          004B41BA
 004B41A6    mov         eax,dword ptr [ebp-8]
 004B41A9    mov         edx,dword ptr [eax+0C8]
 004B41AF    mov         eax,dword ptr [ebp-4]
 004B41B2    mov         ecx,dword ptr [eax]
 004B41B4    call        dword ptr [ecx+0D0];TCustomListView.sub_004B0660
 004B41BA    mov         esp,ebp
 004B41BC    pop         ebp
 004B41BD    ret
end;*}

//004B41C0
{*procedure TCustomListView.WMVScroll(?:?);
begin
 004B41C0    push        ebp
 004B41C1    mov         ebp,esp
 004B41C3    add         esp,0FFFFFFF0
 004B41C6    mov         dword ptr [ebp-8],edx
 004B41C9    mov         dword ptr [ebp-4],eax
 004B41CC    call        ThemeServices
 004B41D1    call        TThemeServices.GetThemesEnabled
 004B41D6    test        al,al
>004B41D8    je          004B4227
 004B41DA    push        1
 004B41DC    mov         eax,dword ptr [ebp-4]
 004B41DF    call        TWinControl.GetHandle
 004B41E4    push        eax
 004B41E5    call        user32.GetScrollPos
 004B41EA    mov         dword ptr [ebp-0C],eax
 004B41ED    mov         edx,dword ptr [ebp-8]
 004B41F0    mov         eax,dword ptr [ebp-4]
 004B41F3    call        TWinControl.WMVScroll
 004B41F8    push        1
 004B41FA    mov         eax,dword ptr [ebp-4]
 004B41FD    call        TWinControl.GetHandle
 004B4202    push        eax
 004B4203    call        user32.GetScrollPos
 004B4208    mov         dword ptr [ebp-10],eax
 004B420B    mov         eax,dword ptr [ebp-0C]
 004B420E    cmp         eax,dword ptr [ebp-10]
>004B4211    je          004B4232
 004B4213    push        0FF
 004B4215    push        0
 004B4217    mov         eax,dword ptr [ebp-4]
 004B421A    call        TWinControl.GetHandle
 004B421F    push        eax
 004B4220    call        user32.InvalidateRect
>004B4225    jmp         004B4232
 004B4227    mov         edx,dword ptr [ebp-8]
 004B422A    mov         eax,dword ptr [ebp-4]
 004B422D    call        TWinControl.WMVScroll
 004B4232    mov         esp,ebp
 004B4234    pop         ebp
 004B4235    ret
end;*}

//004B4238
{*procedure sub_004B4238(?:?);
begin
 004B4238    push        ebp
 004B4239    mov         ebp,esp
 004B423B    add         esp,0FFFFFFF8
 004B423E    mov         dword ptr [ebp-8],edx
 004B4241    mov         dword ptr [ebp-4],eax
 004B4244    mov         eax,dword ptr [ebp-8]
 004B4247    mov         edx,dword ptr ds:[4A7544];TComboExItem
 004B424D    call        @IsClass
 004B4252    test        al,al
>004B4254    je          004B4299
 004B4256    mov         eax,dword ptr [ebp-8]
 004B4259    mov         eax,dword ptr [eax+1C]
 004B425C    mov         edx,dword ptr [ebp-4]
 004B425F    mov         dword ptr [edx+1C],eax;TComboExItem.SelectedImageIndex:TImageIndex
 004B4262    mov         eax,dword ptr [ebp-8]
 004B4265    mov         eax,dword ptr [eax+24]
 004B4268    mov         edx,dword ptr [ebp-4]
 004B426B    mov         dword ptr [edx+24],eax;TComboExItem.Indent:Integer
 004B426E    mov         eax,dword ptr [ebp-8]
 004B4271    mov         eax,dword ptr [eax+20]
 004B4274    mov         edx,dword ptr [ebp-4]
 004B4277    mov         dword ptr [edx+20],eax;TComboExItem.OverlayImageIndex:TImageIndex
 004B427A    mov         eax,dword ptr [ebp-8]
 004B427D    mov         eax,dword ptr [eax+18]
 004B4280    mov         edx,dword ptr [ebp-4]
 004B4283    mov         dword ptr [edx+18],eax;TComboExItem.ImageIndex:TImageIndex
 004B4286    mov         eax,dword ptr [ebp-4]
 004B4289    add         eax,10;TComboExItem.Caption:String
 004B428C    mov         edx,dword ptr [ebp-8]
 004B428F    mov         edx,dword ptr [edx+10]
 004B4292    call        @LStrAsg
>004B4297    jmp         004B42A4
 004B4299    mov         edx,dword ptr [ebp-8]
 004B429C    mov         eax,dword ptr [ebp-4]
 004B429F    call        004A1320
 004B42A4    pop         ecx
 004B42A5    pop         ecx
 004B42A6    pop         ebp
 004B42A7    ret
end;*}

//004B42A8
{*procedure sub_004B42A8(?:?);
begin
 004B42A8    push        ebp
 004B42A9    mov         ebp,esp
 004B42AB    add         esp,0FFFFFFF8
 004B42AE    mov         dword ptr [ebp-8],edx
 004B42B1    mov         dword ptr [ebp-4],eax
 004B42B4    mov         edx,dword ptr [ebp-8]
 004B42B7    mov         eax,dword ptr [ebp-4]
 004B42BA    call        TListControlItem.SetCaption
 004B42BF    mov         eax,dword ptr [ebp-4]
 004B42C2    call        TCollectionItem.GetIndex
 004B42C7    mov         edx,eax
 004B42C9    mov         eax,dword ptr [ebp-4]
 004B42CC    mov         eax,dword ptr [eax+4];TComboExItem.FCollection:TCollection
 004B42CF    mov         ecx,dword ptr [eax]
 004B42D1    call        dword ptr [ecx+2C]
 004B42D4    mov         eax,dword ptr [ebp-4]
 004B42D7    mov         eax,dword ptr [eax+4];TComboExItem.FCollection:TCollection
 004B42DA    cmp         byte ptr [eax+1D],2
>004B42DE    je          004B42EC
 004B42E0    mov         eax,dword ptr [ebp-4]
 004B42E3    mov         eax,dword ptr [eax+4];TComboExItem.FCollection:TCollection
 004B42E6    cmp         byte ptr [eax+1D],3
>004B42EA    jne         004B42F7
 004B42EC    mov         eax,dword ptr [ebp-4]
 004B42EF    mov         eax,dword ptr [eax+4];TComboExItem.FCollection:TCollection
 004B42F2    call        004A177C
 004B42F7    pop         ecx
 004B42F8    pop         ecx
 004B42F9    pop         ebp
 004B42FA    ret
end;*}

//004B42FC
{*procedure sub_004B42FC(?:?);
begin
 004B42FC    push        ebp
 004B42FD    mov         ebp,esp
 004B42FF    add         esp,0FFFFFFF8
 004B4302    mov         dword ptr [ebp-8],edx
 004B4305    mov         dword ptr [ebp-4],eax
 004B4308    mov         edx,dword ptr [ebp-8]
 004B430B    mov         eax,dword ptr [ebp-4]
 004B430E    call        004A1494
 004B4313    mov         eax,dword ptr [ebp-4]
 004B4316    call        TCollectionItem.GetIndex
 004B431B    mov         edx,eax
 004B431D    mov         eax,dword ptr [ebp-4]
 004B4320    mov         eax,dword ptr [eax+4];TComboExItem.FCollection:TCollection
 004B4323    mov         ecx,dword ptr [eax]
 004B4325    call        dword ptr [ecx+2C]
 004B4328    mov         eax,dword ptr [ebp-4]
 004B432B    mov         eax,dword ptr [eax+4];TComboExItem.FCollection:TCollection
 004B432E    cmp         byte ptr [eax+1D],1
>004B4332    je          004B4340
 004B4334    mov         eax,dword ptr [ebp-4]
 004B4337    mov         eax,dword ptr [eax+4];TComboExItem.FCollection:TCollection
 004B433A    cmp         byte ptr [eax+1D],3
>004B433E    jne         004B434B
 004B4340    mov         eax,dword ptr [ebp-4]
 004B4343    mov         eax,dword ptr [eax+4];TComboExItem.FCollection:TCollection
 004B4346    call        004A177C
 004B434B    pop         ecx
 004B434C    pop         ecx
 004B434D    pop         ebp
 004B434E    ret
end;*}

//004B4350
{*procedure sub_004B4350(?:?);
begin
 004B4350    push        ebp
 004B4351    mov         ebp,esp
 004B4353    add         esp,0FFFFFFF8
 004B4356    mov         dword ptr [ebp-8],edx
 004B4359    mov         dword ptr [ebp-4],eax
 004B435C    mov         edx,dword ptr [ebp-8]
 004B435F    mov         eax,dword ptr [ebp-4]
 004B4362    call        00479800
 004B4367    mov         eax,dword ptr [ebp-4]
 004B436A    call        TCollectionItem.GetIndex
 004B436F    mov         edx,eax
 004B4371    mov         eax,dword ptr [ebp-4]
 004B4374    mov         eax,dword ptr [eax+4];TComboExItem.FCollection:TCollection
 004B4377    mov         ecx,dword ptr [eax]
 004B4379    call        dword ptr [ecx+2C]
 004B437C    pop         ecx
 004B437D    pop         ecx
 004B437E    pop         ebp
 004B437F    ret
end;*}

//004B4380
{*procedure sub_004B4380(?:?);
begin
 004B4380    push        ebp
 004B4381    mov         ebp,esp
 004B4383    add         esp,0FFFFFFF8
 004B4386    mov         dword ptr [ebp-8],edx
 004B4389    mov         dword ptr [ebp-4],eax
 004B438C    mov         eax,dword ptr [ebp-4]
 004B438F    cmp         dword ptr [eax+1C],0FFFFFFFF;TComboExItem.SelectedImageIndex:TImageIndex
>004B4393    je          004B43A3
 004B4395    mov         eax,dword ptr [ebp-4]
 004B4398    mov         eax,dword ptr [eax+1C];TComboExItem.SelectedImageIndex:TImageIndex
 004B439B    mov         edx,dword ptr [ebp-4]
 004B439E    cmp         eax,dword ptr [edx+18];TComboExItem.ImageIndex:TImageIndex
>004B43A1    jne         004B43AC
 004B43A3    mov         eax,dword ptr [ebp-8]
 004B43A6    mov         edx,dword ptr [ebp-4]
 004B43A9    mov         dword ptr [edx+1C],eax;TComboExItem.SelectedImageIndex:TImageIndex
 004B43AC    mov         edx,dword ptr [ebp-8]
 004B43AF    mov         eax,dword ptr [ebp-4]
 004B43B2    call        TListControlItem.SetImageIndex
 004B43B7    mov         eax,dword ptr [ebp-4]
 004B43BA    call        TCollectionItem.GetIndex
 004B43BF    mov         edx,eax
 004B43C1    mov         eax,dword ptr [ebp-4]
 004B43C4    mov         eax,dword ptr [eax+4];TComboExItem.FCollection:TCollection
 004B43C7    mov         ecx,dword ptr [eax]
 004B43C9    call        dword ptr [ecx+2C]
 004B43CC    pop         ecx
 004B43CD    pop         ecx
 004B43CE    pop         ebp
 004B43CF    ret
end;*}

//004B43D0
{*procedure sub_004B43D0(?:?);
begin
 004B43D0    push        ebp
 004B43D1    mov         ebp,esp
 004B43D3    add         esp,0FFFFFFF8
 004B43D6    mov         dword ptr [ebp-8],edx
 004B43D9    mov         dword ptr [ebp-4],eax
 004B43DC    mov         edx,dword ptr [ebp-8]
 004B43DF    mov         eax,dword ptr [ebp-4]
 004B43E2    call        0047981C
 004B43E7    mov         edx,dword ptr [ebp-8]
 004B43EA    mov         eax,dword ptr [ebp-4]
 004B43ED    mov         eax,dword ptr [eax+4];TComboExItem.FCollection:TCollection
 004B43F0    mov         ecx,dword ptr [eax]
 004B43F2    call        dword ptr [ecx+2C]
 004B43F5    pop         ecx
 004B43F6    pop         ecx
 004B43F7    pop         ebp
 004B43F8    ret
end;*}

//004B43FC
procedure TComboExItem.SetOverlayImageIndex(Value:TImageIndex);
begin
{*
 004B43FC    push        ebp
 004B43FD    mov         ebp,esp
 004B43FF    add         esp,0FFFFFFF8
 004B4402    mov         dword ptr [ebp-8],edx
 004B4405    mov         dword ptr [ebp-4],eax
 004B4408    mov         eax,dword ptr [ebp-8]
 004B440B    mov         edx,dword ptr [ebp-4]
 004B440E    mov         dword ptr [edx+20],eax;TComboExItem.OverlayImageIndex:TImageIndex
 004B4411    mov         eax,dword ptr [ebp-4]
 004B4414    call        TCollectionItem.GetIndex
 004B4419    mov         edx,eax
 004B441B    mov         eax,dword ptr [ebp-4]
 004B441E    mov         eax,dword ptr [eax+4];TComboExItem.FCollection:TCollection
 004B4421    mov         ecx,dword ptr [eax]
 004B4423    call        dword ptr [ecx+2C]
 004B4426    pop         ecx
 004B4427    pop         ecx
 004B4428    pop         ebp
 004B4429    ret
*}
end;

//004B442C
procedure TComboExItem.SetSelectedImageIndex(Value:TImageIndex);
begin
{*
 004B442C    push        ebp
 004B442D    mov         ebp,esp
 004B442F    add         esp,0FFFFFFF8
 004B4432    mov         dword ptr [ebp-8],edx
 004B4435    mov         dword ptr [ebp-4],eax
 004B4438    mov         eax,dword ptr [ebp-8]
 004B443B    mov         edx,dword ptr [ebp-4]
 004B443E    mov         dword ptr [edx+1C],eax;TComboExItem.SelectedImageIndex:TImageIndex
 004B4441    mov         eax,dword ptr [ebp-4]
 004B4444    call        TCollectionItem.GetIndex
 004B4449    mov         edx,eax
 004B444B    mov         eax,dword ptr [ebp-4]
 004B444E    mov         eax,dword ptr [eax+4];TComboExItem.FCollection:TCollection
 004B4451    mov         ecx,dword ptr [eax]
 004B4453    call        dword ptr [ecx+2C]
 004B4456    pop         ecx
 004B4457    pop         ecx
 004B4458    pop         ebp
 004B4459    ret
*}
end;

//004B445C
{*function sub_004B445C(?:TComboExItems):?;
begin
 004B445C    push        ebp
 004B445D    mov         ebp,esp
 004B445F    add         esp,0FFFFFFF8
 004B4462    mov         dword ptr [ebp-4],eax
 004B4465    mov         eax,dword ptr [ebp-4]
 004B4468    call        004A151C
 004B446D    mov         dword ptr [ebp-8],eax
 004B4470    mov         eax,dword ptr [ebp-8]
 004B4473    pop         ecx
 004B4474    pop         ecx
 004B4475    pop         ebp
 004B4476    ret
end;*}

//004B4478
{*function sub_004B4478(?:TComboExItems; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?):?;
begin
 004B4478    push        ebp
 004B4479    mov         ebp,esp
 004B447B    add         esp,0FFFFFFF0
 004B447E    mov         dword ptr [ebp-0C],ecx
 004B4481    mov         dword ptr [ebp-8],edx
 004B4484    mov         dword ptr [ebp-4],eax
 004B4487    mov         eax,dword ptr [ebp-4]
 004B448A    call        004B445C
 004B448F    mov         dword ptr [ebp-10],eax
 004B4492    mov         edx,dword ptr [ebp-8]
 004B4495    mov         eax,dword ptr [ebp-10]
 004B4498    mov         ecx,dword ptr [eax]
 004B449A    call        dword ptr [ecx+20]
 004B449D    mov         edx,dword ptr [ebp-0C]
 004B44A0    mov         eax,dword ptr [ebp-10]
 004B44A3    mov         ecx,dword ptr [eax]
 004B44A5    call        dword ptr [ecx+28]
 004B44A8    mov         edx,dword ptr [ebp+14]
 004B44AB    mov         eax,dword ptr [ebp-10]
 004B44AE    mov         ecx,dword ptr [eax]
 004B44B0    call        dword ptr [ecx+30]
 004B44B3    mov         edx,dword ptr [ebp+10]
 004B44B6    mov         eax,dword ptr [ebp-10]
 004B44B9    mov         ecx,dword ptr [eax]
 004B44BB    call        dword ptr [ecx+2C]
 004B44BE    mov         eax,dword ptr [ebp-10]
 004B44C1    mov         edx,dword ptr [ebp+0C]
 004B44C4    mov         dword ptr [eax+24],edx
 004B44C7    mov         edx,dword ptr [ebp+8]
 004B44CA    mov         eax,dword ptr [ebp-10]
 004B44CD    mov         ecx,dword ptr [eax]
 004B44CF    call        dword ptr [ecx+24]
 004B44D2    mov         eax,dword ptr [ebp-10]
 004B44D5    call        TCollectionItem.GetIndex
 004B44DA    mov         edx,eax
 004B44DC    mov         eax,dword ptr [ebp-4]
 004B44DF    mov         ecx,dword ptr [eax]
 004B44E1    call        dword ptr [ecx+2C]
 004B44E4    mov         eax,dword ptr [ebp-10]
 004B44E7    mov         esp,ebp
 004B44E9    pop         ebp
 004B44EA    ret         10
end;*}

//004B44F0
{*function sub_004B44F0(?:TComboExItems; ?:?):?;
begin
 004B44F0    push        ebp
 004B44F1    mov         ebp,esp
 004B44F3    add         esp,0FFFFFFF4
 004B44F6    mov         dword ptr [ebp-8],edx
 004B44F9    mov         dword ptr [ebp-4],eax
 004B44FC    mov         edx,dword ptr [ebp-8]
 004B44FF    mov         eax,dword ptr [ebp-4]
 004B4502    call        004A1720
 004B4507    mov         dword ptr [ebp-0C],eax
 004B450A    mov         eax,dword ptr [ebp-0C]
 004B450D    mov         esp,ebp
 004B450F    pop         ebp
 004B4510    ret
end;*}

//004B4514
{*function sub_004B4514(?:TComboExItems; ?:?):?;
begin
 004B4514    push        ebp
 004B4515    mov         ebp,esp
 004B4517    add         esp,0FFFFFFEC
 004B451A    mov         dword ptr [ebp-8],edx
 004B451D    mov         dword ptr [ebp-4],eax
 004B4520    mov         edx,dword ptr [ebp-8]
 004B4523    mov         eax,dword ptr [ebp-4]
 004B4526    call        00479DAC
 004B452B    mov         dword ptr [ebp-0C],eax
 004B452E    mov         eax,dword ptr [ebp-8]
 004B4531    push        eax
 004B4532    mov         eax,dword ptr [ebp-4]
 004B4535    call        00479B60
 004B453A    dec         eax
 004B453B    pop         edx
 004B453C    sub         eax,edx
>004B453E    jl          004B455A
 004B4540    inc         eax
 004B4541    mov         dword ptr [ebp-14],eax
 004B4544    mov         dword ptr [ebp-10],edx
 004B4547    mov         edx,dword ptr [ebp-10]
 004B454A    mov         eax,dword ptr [ebp-4]
 004B454D    mov         ecx,dword ptr [eax]
 004B454F    call        dword ptr [ecx+2C]
 004B4552    inc         dword ptr [ebp-10]
 004B4555    dec         dword ptr [ebp-14]
>004B4558    jne         004B4547
 004B455A    mov         eax,dword ptr [ebp-0C]
 004B455D    mov         esp,ebp
 004B455F    pop         ebp
 004B4560    ret
end;*}

//004B4564
{*procedure sub_004B4564(?:?; ?:?);
begin
 004B4564    push        ebp
 004B4565    mov         ebp,esp
 004B4567    add         esp,0FFFFFFF4
 004B456A    mov         byte ptr [ebp-9],cl
 004B456D    mov         dword ptr [ebp-8],edx
 004B4570    mov         dword ptr [ebp-4],eax
 004B4573    mov         al,byte ptr [ebp-9]
 004B4576    sub         al,1
>004B4578    jb          004B4580
 004B457A    sub         al,2
>004B457C    jb          004B45BD
>004B457E    jmp         004B45EE
 004B4580    mov         eax,dword ptr [ebp-8]
 004B4583    mov         dword ptr [eax+18],0FFFFFFFF
 004B458A    mov         eax,dword ptr [ebp-8]
 004B458D    mov         dword ptr [eax+1C],0FFFFFFFF
 004B4594    mov         eax,dword ptr [ebp-8]
 004B4597    mov         dword ptr [eax+24],0FFFFFFFF
 004B459E    mov         eax,dword ptr [ebp-8]
 004B45A1    mov         dword ptr [eax+20],0FFFFFFFF
 004B45A8    mov         eax,dword ptr [ebp-8]
 004B45AB    xor         edx,edx
 004B45AD    mov         dword ptr [eax+14],edx
 004B45B0    mov         eax,dword ptr [ebp-8]
 004B45B3    add         eax,10
 004B45B6    call        @LStrClr
>004B45BB    jmp         004B45EE
 004B45BD    mov         eax,dword ptr [ebp-4]
 004B45C0    call        00479F38
 004B45C5    test        byte ptr [eax+1C],8
>004B45C9    jne         004B45EE
 004B45CB    push        0
 004B45CD    mov         eax,dword ptr [ebp-8]
 004B45D0    call        TCollectionItem.GetIndex
 004B45D5    push        eax
 004B45D6    push        144
 004B45DB    mov         eax,dword ptr [ebp-4]
 004B45DE    call        00479F38
 004B45E3    call        TWinControl.GetHandle
 004B45E8    push        eax
 004B45E9    call        user32.SendMessageA
 004B45EE    mov         esp,ebp
 004B45F0    pop         ebp
 004B45F1    ret
end;*}

//004B45F4
{*procedure sub_004B45F4(?:?);
begin
 004B45F4    push        ebp
 004B45F5    mov         ebp,esp
 004B45F7    add         esp,0FFFFFFCC
 004B45FA    mov         dword ptr [ebp-8],edx
 004B45FD    mov         dword ptr [ebp-4],eax
 004B4600    lea         eax,[ebp-34]
 004B4603    xor         ecx,ecx
 004B4605    mov         edx,24
 004B460A    call        @FillChar
 004B460F    mov         eax,dword ptr [ebp-8]
 004B4612    mov         dword ptr [ebp-30],eax
 004B4615    xor         eax,eax
 004B4617    mov         dword ptr [ebp-28],eax
 004B461A    lea         eax,[ebp-34]
 004B461D    push        eax
 004B461E    push        0
 004B4620    push        404
 004B4625    mov         eax,dword ptr [ebp-4]
 004B4628    call        00479F38
 004B462D    call        TWinControl.GetHandle
 004B4632    push        eax
 004B4633    call        user32.SendMessageA
 004B4638    test        eax,eax
 004B463A    sete        al
 004B463D    neg         al
 004B463F    sbb         eax,eax
 004B4641    mov         dword ptr [ebp-0C],eax
 004B4644    mov         edx,dword ptr [ebp-8]
 004B4647    mov         eax,dword ptr [ebp-4]
 004B464A    call        004B44F0
 004B464F    mov         dword ptr [ebp-10],eax
 004B4652    mov         dword ptr [ebp-34],37
 004B4659    mov         eax,dword ptr [ebp-10]
 004B465C    mov         eax,dword ptr [eax+10]
 004B465F    call        @LStrToPChar
 004B4664    mov         dword ptr [ebp-2C],eax
 004B4667    mov         eax,dword ptr [ebp-10]
 004B466A    call        TCollectionItem.GetIndex
 004B466F    mov         dword ptr [ebp-30],eax
 004B4672    mov         eax,dword ptr [ebp-10]
 004B4675    mov         eax,dword ptr [eax+10]
 004B4678    call        @DynArrayLength
 004B467D    mov         dword ptr [ebp-28],eax
 004B4680    mov         eax,dword ptr [ebp-10]
 004B4683    mov         eax,dword ptr [eax+18]
 004B4686    mov         dword ptr [ebp-24],eax
 004B4689    mov         eax,dword ptr [ebp-10]
 004B468C    mov         eax,dword ptr [eax+1C]
 004B468F    mov         dword ptr [ebp-20],eax
 004B4692    mov         eax,dword ptr [ebp-10]
 004B4695    mov         eax,dword ptr [eax+20]
 004B4698    mov         dword ptr [ebp-1C],eax
 004B469B    mov         eax,dword ptr [ebp-10]
 004B469E    mov         eax,dword ptr [eax+24]
 004B46A1    mov         dword ptr [ebp-18],eax
 004B46A4    mov         eax,dword ptr [ebp-10]
 004B46A7    mov         eax,dword ptr [eax+14]
 004B46AA    mov         dword ptr [ebp-14],eax
 004B46AD    cmp         dword ptr [ebp-0C],0
>004B46B1    je          004B46D5
 004B46B3    lea         eax,[ebp-34]
 004B46B6    push        eax
 004B46B7    mov         eax,dword ptr [ebp-8]
 004B46BA    push        eax
 004B46BB    push        401
 004B46C0    mov         eax,dword ptr [ebp-4]
 004B46C3    call        00479F38
 004B46C8    call        TWinControl.GetHandle
 004B46CD    push        eax
 004B46CE    call        user32.SendMessageA
>004B46D3    jmp         004B46F5
 004B46D5    lea         eax,[ebp-34]
 004B46D8    push        eax
 004B46D9    mov         eax,dword ptr [ebp-8]
 004B46DC    push        eax
 004B46DD    push        405
 004B46E2    mov         eax,dword ptr [ebp-4]
 004B46E5    call        00479F38
 004B46EA    call        TWinControl.GetHandle
 004B46EF    push        eax
 004B46F0    call        user32.SendMessageA
 004B46F5    mov         esp,ebp
 004B46F7    pop         ebp
 004B46F8    ret
end;*}

//004B47E8
constructor TCustomComboBoxEx.Create(AOwner:TComponent);
begin
{*
 004B47E8    push        ebp
 004B47E9    mov         ebp,esp
 004B47EB    add         esp,0FFFFFFF0
 004B47EE    test        dl,dl
>004B47F0    je          004B47FA
 004B47F2    add         esp,0FFFFFFF0
 004B47F5    call        @ClassCreate
 004B47FA    mov         dword ptr [ebp-0C],ecx
 004B47FD    mov         byte ptr [ebp-5],dl
 004B4800    mov         dword ptr [ebp-4],eax
 004B4803    mov         eax,200
 004B4808    call        004A7B6C
 004B480D    mov         ecx,dword ptr [ebp-0C]
 004B4810    xor         edx,edx
 004B4812    mov         eax,dword ptr [ebp-4]
 004B4815    call        TCustomCombo.Create
 004B481A    mov         eax,dword ptr [ebp-4]
 004B481D    push        eax
 004B481E    push        4B4DD4
 004B4823    call        004E7CF4
 004B4828    mov         edx,dword ptr [ebp-4]
 004B482B    mov         dword ptr [edx+278],eax;TCustomComboBoxEx.FComboBoxExInstance:Pointer
 004B4831    mov         ecx,dword ptr [ebp-4]
 004B4834    mov         dl,1
 004B4836    mov         eax,[004A772C];TComboBoxExStrings
 004B483B    call        TComboBoxExStrings.Create;TComboBoxExStrings.Create
 004B4840    mov         edx,eax
 004B4842    mov         eax,dword ptr [ebp-4]
 004B4845    mov         ecx,dword ptr [eax]
 004B4847    call        dword ptr [ecx+10C];TCustomComboBoxEx.sub_004BFB5C
 004B484D    mov         eax,dword ptr [ebp-4]
 004B4850    mov         eax,dword ptr [eax+23C];TCustomComboBoxEx.FItems:TStrings
 004B4856    mov         edx,dword ptr [ebp-4]
 004B4859    mov         dword ptr [eax+10],edx
 004B485C    mov         eax,dword ptr [ebp-4]
 004B485F    mov         eax,dword ptr [eax+23C];TCustomComboBoxEx.FItems:TStrings
 004B4865    mov         eax,dword ptr [eax+14]
 004B4868    mov         edx,dword ptr [ebp-4]
 004B486B    mov         dword ptr [edx+28C],eax;TCustomComboBoxEx.FItemsEx:TComboExItems
 004B4871    mov         dl,1
 004B4873    mov         eax,[004DC034];TChangeLink
 004B4878    call        TObject.Create;TChangeLink.Create
 004B487D    mov         edx,dword ptr [ebp-4]
 004B4880    mov         dword ptr [edx+27C],eax;TCustomComboBoxEx.FImageChangeLink:TChangeLink
 004B4886    mov         eax,dword ptr [ebp-4]
 004B4889    mov         eax,dword ptr [eax+27C];TCustomComboBoxEx.FImageChangeLink:TChangeLink
 004B488F    mov         edx,dword ptr [ebp-4]
 004B4892    mov         dword ptr [eax+0C],edx;TChangeLink.?fC:TCustomTabControl
 004B4895    mov         dword ptr [eax+8],4B4BAC;TChangeLink.FOnChange:TNotifyEvent sub_004B4BAC
 004B489C    mov         eax,dword ptr [ebp-4]
 004B489F    mov         byte ptr [eax+289],0;TCustomComboBoxEx.FStyle:TComboBoxExStyle
 004B48A6    mov         eax,dword ptr [ebp-4]
 004B48A9    mov         dl,byte ptr ds:[4B4928];0x2 gvar_004B4928
 004B48AF    mov         byte ptr [eax+26C],dl;TCustomComboBoxEx.FAutoCompleteOptions:TAutoCompleteOptions
 004B48B5    cmp         byte ptr ds:[55DD84],0;gvar_0055DD84
>004B48BC    jne         004B48EB
 004B48BE    mov         byte ptr ds:[55DD84],1;gvar_0055DD84
 004B48C5    push        4B492C;'ole32.dll'
 004B48CA    call        kernel32.GetModuleHandleA
 004B48CF    mov         dword ptr [ebp-10],eax
 004B48D2    cmp         dword ptr [ebp-10],0
>004B48D6    je          004B48EB
 004B48D8    push        4B4938;'CoInitializeEx'
 004B48DD    mov         eax,dword ptr [ebp-10]
 004B48E0    push        eax
 004B48E1    call        kernel32.GetProcAddress
 004B48E6    mov         [0055DD80],eax;gvar_0055DD80:Pointer
 004B48EB    cmp         dword ptr ds:[55DD80],0;gvar_0055DD80:Pointer
>004B48F2    je          004B4900
 004B48F4    push        2
 004B48F6    push        0
 004B48F8    call        dword ptr ds:[55DD80]
>004B48FE    jmp         004B4907
 004B4900    push        0
 004B4902    call        ole32.CoInitialize
 004B4907    mov         eax,dword ptr [ebp-4]
 004B490A    cmp         byte ptr [ebp-5],0
>004B490E    je          004B491F
 004B4910    call        @AfterConstruction
 004B4915    pop         dword ptr fs:[0]
 004B491C    add         esp,0C
 004B491F    mov         eax,dword ptr [ebp-4]
 004B4922    mov         esp,ebp
 004B4924    pop         ebp
 004B4925    ret
*}
end;

//004B4948
destructor TCustomComboBoxEx.Destroy;
begin
{*
 004B4948    push        ebp
 004B4949    mov         ebp,esp
 004B494B    add         esp,0FFFFFFF8
 004B494E    call        @BeforeDestruction
 004B4953    mov         byte ptr [ebp-5],dl
 004B4956    mov         dword ptr [ebp-4],eax
 004B4959    mov         eax,dword ptr [ebp-4]
 004B495C    mov         eax,dword ptr [eax+23C];TCustomComboBoxEx.FItems:TStrings
 004B4962    call        TObject.Free
 004B4967    mov         eax,dword ptr [ebp-4]
 004B496A    add         eax,27C;TCustomComboBoxEx.FImageChangeLink:TChangeLink
 004B496F    call        FreeAndNil
 004B4974    mov         eax,dword ptr [ebp-4]
 004B4977    call        TWinControl.HandleAllocated
 004B497C    test        al,al
>004B497E    je          004B498B
 004B4980    mov         eax,dword ptr [ebp-4]
 004B4983    mov         edx,dword ptr [eax]
 004B4985    call        dword ptr [edx+0AC];TCustomCombo.DestroyWindowHandle
 004B498B    mov         eax,dword ptr [ebp-4]
 004B498E    mov         eax,dword ptr [eax+278];TCustomComboBoxEx.FComboBoxExInstance:Pointer
 004B4994    call        004E7D10
 004B4999    mov         eax,dword ptr [ebp-4]
 004B499C    add         eax,284;TCustomComboBoxEx.FMemStream:TCollection
 004B49A1    call        FreeAndNil
 004B49A6    mov         eax,dword ptr [ebp-4]
 004B49A9    add         eax,268;TCustomComboBoxEx.FAutoCompleteIntf:IAutoComplete
 004B49AE    call        @IntfClear
 004B49B3    call        ole32.CoUninitialize
 004B49B8    mov         dl,byte ptr [ebp-5]
 004B49BB    and         dl,0FC
 004B49BE    mov         eax,dword ptr [ebp-4]
 004B49C1    call        TCustomCombo.Destroy
 004B49C6    cmp         byte ptr [ebp-5],0
>004B49CA    jle         004B49D4
 004B49CC    mov         eax,dword ptr [ebp-4]
 004B49CF    call        @ClassDestroy
 004B49D4    pop         ecx
 004B49D5    pop         ecx
 004B49D6    pop         ebp
 004B49D7    ret
*}
end;

//004B49D8
{*procedure TCustomComboBoxEx.sub_004B49D8(?:?);
begin
 004B49D8    push        ebp
 004B49D9    mov         ebp,esp
 004B49DB    add         esp,0FFFFFFF8
 004B49DE    push        ebx
 004B49DF    mov         dword ptr [ebp-8],edx
 004B49E2    mov         dword ptr [ebp-4],eax
 004B49E5    mov         eax,dword ptr [ebp-8]
 004B49E8    mov         eax,dword ptr [eax+8]
 004B49EB    mov         eax,dword ptr [eax+8]
 004B49EE    sub         eax,0FFFFFCDB
>004B49F3    je          004B4A19
 004B49F5    dec         eax
>004B49F6    jne         004B4A3A
 004B49F8    mov         eax,dword ptr [ebp-4]
 004B49FB    cmp         word ptr [eax+292],0;TCustomComboBoxEx.?f292:word
>004B4A03    je          004B4A45
 004B4A05    mov         ebx,dword ptr [ebp-4]
 004B4A08    mov         edx,dword ptr [ebp-4]
 004B4A0B    mov         eax,dword ptr [ebx+294];TCustomComboBoxEx.?f294:dword
 004B4A11    call        dword ptr [ebx+290];TCustomComboBoxEx.FOnBeginEdit
>004B4A17    jmp         004B4A45
 004B4A19    mov         eax,dword ptr [ebp-4]
 004B4A1C    cmp         word ptr [eax+29A],0;TCustomComboBoxEx.?f29A:word
>004B4A24    je          004B4A45
 004B4A26    mov         ebx,dword ptr [ebp-4]
 004B4A29    mov         edx,dword ptr [ebp-4]
 004B4A2C    mov         eax,dword ptr [ebx+29C];TCustomComboBoxEx.?f29C:dword
 004B4A32    call        dword ptr [ebx+298];TCustomComboBoxEx.FOnEndEdit
>004B4A38    jmp         004B4A45
 004B4A3A    mov         edx,dword ptr [ebp-8]
 004B4A3D    mov         eax,dword ptr [ebp-4]
 004B4A40    mov         ecx,dword ptr [eax]
 004B4A42    call        dword ptr [ecx-10];TCustomComboBoxEx.DefaultHandler
 004B4A45    pop         ebx
 004B4A46    pop         ecx
 004B4A47    pop         ecx
 004B4A48    pop         ebp
 004B4A49    ret
end;*}

//004B4A4C
{*procedure sub_004B4A4C(?:?);
begin
 004B4A4C    push        ebp
 004B4A4D    mov         ebp,esp
 004B4A4F    add         esp,0FFFFFFF8
 004B4A52    mov         dword ptr [ebp-8],edx
 004B4A55    mov         dword ptr [ebp-4],eax
 004B4A58    mov         eax,200
 004B4A5D    call        004A7B30
 004B4A62    mov         edx,dword ptr [ebp-8]
 004B4A65    mov         eax,dword ptr [ebp-4]
 004B4A68    call        004CF814
 004B4A6D    mov         ecx,4B4AD0
 004B4A72    mov         edx,dword ptr [ebp-8]
 004B4A75    mov         eax,dword ptr [ebp-4]
 004B4A78    call        004CF6EC
 004B4A7D    mov         eax,dword ptr [ebp-8]
 004B4A80    mov         eax,dword ptr [eax+4]
 004B4A83    or          eax,10000
 004B4A88    or          eax,200000
 004B4A8D    or          eax,2000000
 004B4A92    or          eax,4
 004B4A95    or          eax,40
 004B4A98    mov         edx,dword ptr [ebp-4]
 004B4A9B    movzx       edx,byte ptr [edx+289];TCustomComboBoxEx.FStyle:TComboBoxExStyle
 004B4AA2    or          eax,dword ptr [edx*4+5414FC]
 004B4AA9    mov         edx,dword ptr [ebp-8]
 004B4AAC    mov         dword ptr [edx+4],eax
 004B4AAF    mov         eax,dword ptr [ebp-8]
 004B4AB2    and         dword ptr [eax+8],0FFFFFDFF
 004B4AB9    mov         eax,dword ptr [ebp-8]
 004B4ABC    mov         eax,dword ptr [eax+24]
 004B4ABF    or          eax,8
 004B4AC2    and         eax,0FFFFFFFC
 004B4AC5    mov         edx,dword ptr [ebp-8]
 004B4AC8    mov         dword ptr [edx+24],eax
 004B4ACB    pop         ecx
 004B4ACC    pop         ecx
 004B4ACD    pop         ebp
 004B4ACE    ret
end;*}

//004B4AE0
{*procedure sub_004B4AE0(?:TCustomComboBoxEx; ?:?);
begin
 004B4AE0    push        ebp
 004B4AE1    mov         ebp,esp
 004B4AE3    add         esp,0FFFFFFF8
 004B4AE6    mov         dword ptr [ebp-8],edx
 004B4AE9    mov         dword ptr [ebp-4],eax
 004B4AEC    mov         eax,dword ptr [ebp-4]
 004B4AEF    cmp         dword ptr [eax+280],0
>004B4AF6    je          004B4B0F
 004B4AF8    mov         eax,dword ptr [ebp-4]
 004B4AFB    mov         edx,dword ptr [eax+27C]
 004B4B01    mov         eax,dword ptr [ebp-4]
 004B4B04    mov         eax,dword ptr [eax+280]
 004B4B0A    call        004DD6F8
 004B4B0F    mov         eax,dword ptr [ebp-8]
 004B4B12    mov         edx,dword ptr [ebp-4]
 004B4B15    mov         dword ptr [edx+280],eax
 004B4B1B    mov         eax,dword ptr [ebp-4]
 004B4B1E    cmp         dword ptr [eax+280],0
>004B4B25    je          004B4B81
 004B4B27    mov         eax,dword ptr [ebp-4]
 004B4B2A    mov         edx,dword ptr [eax+27C]
 004B4B30    mov         eax,dword ptr [ebp-4]
 004B4B33    mov         eax,dword ptr [eax+280]
 004B4B39    call        004DD760
 004B4B3E    mov         edx,dword ptr [ebp-4]
 004B4B41    mov         eax,dword ptr [ebp-4]
 004B4B44    mov         eax,dword ptr [eax+280]
 004B4B4A    call        00483020
 004B4B4F    mov         eax,dword ptr [ebp-4]
 004B4B52    call        TWinControl.HandleAllocated
 004B4B57    test        al,al
>004B4B59    je          004B4BA6
 004B4B5B    mov         eax,dword ptr [ebp-4]
 004B4B5E    mov         eax,dword ptr [eax+280]
 004B4B64    call        004DC758
 004B4B69    push        eax
 004B4B6A    push        0
 004B4B6C    push        402
 004B4B71    mov         eax,dword ptr [ebp-4]
 004B4B74    call        TWinControl.GetHandle
 004B4B79    push        eax
 004B4B7A    call        user32.PostMessageA
>004B4B7F    jmp         004B4BA6
 004B4B81    mov         eax,dword ptr [ebp-4]
 004B4B84    call        TWinControl.HandleAllocated
 004B4B89    test        al,al
>004B4B8B    je          004B4BA6
 004B4B8D    push        0
 004B4B8F    xor         ecx,ecx
 004B4B91    mov         edx,402
 004B4B96    mov         eax,dword ptr [ebp-4]
 004B4B99    call        004CC7DC
 004B4B9E    mov         eax,dword ptr [ebp-4]
 004B4BA1    call        TWinControl.RecreateWnd
 004B4BA6    pop         ecx
 004B4BA7    pop         ecx
 004B4BA8    pop         ebp
 004B4BA9    ret
end;*}

//004B4BAC
{*procedure sub_004B4BAC(?:?; ?:?);
begin
 004B4BAC    push        ebp
 004B4BAD    mov         ebp,esp
 004B4BAF    add         esp,0FFFFFFF8
 004B4BB2    mov         dword ptr [ebp-8],edx
 004B4BB5    mov         dword ptr [ebp-4],eax
 004B4BB8    mov         eax,dword ptr [ebp-4]
 004B4BBB    call        TWinControl.HandleAllocated
 004B4BC0    test        al,al
>004B4BC2    je          004B4BDC
 004B4BC4    mov         eax,dword ptr [ebp-8]
 004B4BC7    call        004DC758
 004B4BCC    push        eax
 004B4BCD    xor         ecx,ecx
 004B4BCF    mov         edx,402
 004B4BD4    mov         eax,dword ptr [ebp-4]
 004B4BD7    call        004CC7DC
 004B4BDC    pop         ecx
 004B4BDD    pop         ecx
 004B4BDE    pop         ebp
 004B4BDF    ret
end;*}

//004B4BE0
{*procedure sub_004B4BE0(?:?);
begin
 004B4BE0    push        ebp
 004B4BE1    mov         ebp,esp
 004B4BE3    add         esp,0FFFFFFF8
 004B4BE6    mov         dword ptr [ebp-8],edx
 004B4BE9    mov         dword ptr [ebp-4],eax
 004B4BEC    mov         eax,dword ptr [ebp-8]
 004B4BEF    mov         eax,dword ptr [eax]
 004B4BF1    add         eax,0FFFF42CE
 004B4BF6    sub         eax,7
>004B4BF9    jae         004B4C2A
 004B4BFB    mov         eax,[0055B36C];^NewStyleControls:Boolean
 004B4C00    cmp         byte ptr [eax],0
>004B4C03    jne         004B4C35
 004B4C05    mov         eax,dword ptr [ebp-4]
 004B4C08    cmp         byte ptr [eax+289],2;TCustomComboBoxEx.FStyle:TComboBoxExStyle
>004B4C0F    jae         004B4C35
 004B4C11    mov         eax,dword ptr [ebp-4]
 004B4C14    mov         eax,dword ptr [eax+30];TCustomComboBoxEx.FParent:TWinControl
 004B4C17    mov         eax,dword ptr [eax+170];TWinControl.FBrush:TBrush
 004B4C1D    call        TBrush.GetHandle
 004B4C22    mov         edx,dword ptr [ebp-8]
 004B4C25    mov         dword ptr [edx+0C],eax
>004B4C28    jmp         004B4C35
 004B4C2A    mov         edx,dword ptr [ebp-8]
 004B4C2D    mov         eax,dword ptr [ebp-4]
 004B4C30    call        004BF604
 004B4C35    pop         ecx
 004B4C36    pop         ecx
 004B4C37    pop         ebp
 004B4C38    ret
end;*}

//004B4C3C
procedure TCustomComboBoxEx.Notification(AComponent:TComponent; Operation:TOperation);
begin
{*
 004B4C3C    push        ebp
 004B4C3D    mov         ebp,esp
 004B4C3F    add         esp,0FFFFFFF4
 004B4C42    mov         byte ptr [ebp-9],cl
 004B4C45    mov         dword ptr [ebp-8],edx
 004B4C48    mov         dword ptr [ebp-4],eax
 004B4C4B    mov         cl,byte ptr [ebp-9]
 004B4C4E    mov         edx,dword ptr [ebp-8]
 004B4C51    mov         eax,dword ptr [ebp-4]
 004B4C54    call        TControl.Notification
 004B4C59    cmp         byte ptr [ebp-9],1
>004B4C5D    jne         004B4C77
 004B4C5F    mov         eax,dword ptr [ebp-8]
 004B4C62    mov         edx,dword ptr [ebp-4]
 004B4C65    cmp         eax,dword ptr [edx+280];TCustomComboBoxEx.FImages:TCustomImageList
>004B4C6B    jne         004B4C77
 004B4C6D    xor         edx,edx
 004B4C6F    mov         eax,dword ptr [ebp-4]
 004B4C72    call        004B4AE0
 004B4C77    mov         esp,ebp
 004B4C79    pop         ebp
 004B4C7A    ret
*}
end;

//004B4C7C
{*procedure TCustomComboBoxEx.CMParentColorChanged(?:?);
begin
 004B4C7C    push        ebp
 004B4C7D    mov         ebp,esp
 004B4C7F    add         esp,0FFFFFFF8
 004B4C82    mov         dword ptr [ebp-8],edx
 004B4C85    mov         dword ptr [ebp-4],eax
 004B4C88    mov         edx,dword ptr [ebp-8]
 004B4C8B    mov         eax,dword ptr [ebp-4]
 004B4C8E    call        TControl.CMParentColorChanged
 004B4C93    mov         eax,[0055B36C];^NewStyleControls:Boolean
 004B4C98    cmp         byte ptr [eax],0
>004B4C9B    jne         004B4CB1
 004B4C9D    mov         eax,dword ptr [ebp-4]
 004B4CA0    cmp         byte ptr [eax+289],2;TCustomComboBoxEx.FStyle:TComboBoxExStyle
>004B4CA7    jae         004B4CB1
 004B4CA9    mov         eax,dword ptr [ebp-4]
 004B4CAC    mov         edx,dword ptr [eax]
 004B4CAE    call        dword ptr [edx+7C];TCustomComboBoxEx.sub_004D3648
 004B4CB1    pop         ecx
 004B4CB2    pop         ecx
 004B4CB3    pop         ebp
 004B4CB4    ret
end;*}

//004B4CB8
{*procedure TCustomComboBoxEx.CMColorChanged(?:?);
begin
 004B4CB8    push        ebp
 004B4CB9    mov         ebp,esp
 004B4CBB    add         esp,0FFFFFFE8
 004B4CBE    mov         dword ptr [ebp-8],edx
 004B4CC1    mov         dword ptr [ebp-4],eax
 004B4CC4    mov         edx,dword ptr [ebp-8]
 004B4CC7    mov         eax,dword ptr [ebp-4]
 004B4CCA    call        TWinControl.CMColorChanged
 004B4CCF    mov         eax,dword ptr [ebp-4]
 004B4CD2    call        TWinControl.HandleAllocated
 004B4CD7    test        al,al
>004B4CD9    je          004B4D32
 004B4CDB    mov         eax,[0055B36C];^NewStyleControls:Boolean
 004B4CE0    cmp         byte ptr [eax],0
>004B4CE3    je          004B4D32
 004B4CE5    lea         edx,[ebp-18]
 004B4CE8    mov         eax,dword ptr [ebp-4]
 004B4CEB    mov         ecx,dword ptr [eax]
 004B4CED    call        dword ptr [ecx+44];TCustomComboBoxEx.sub_004D3A1C
 004B4CF0    mov         eax,dword ptr [ebp-4]
 004B4CF3    cmp         dword ptr [eax+270],0;TCustomComboBoxEx.FComboBoxExHandle:HWND
>004B4CFA    je          004B4D11
 004B4CFC    push        0
 004B4CFE    lea         eax,[ebp-18]
 004B4D01    push        eax
 004B4D02    mov         eax,dword ptr [ebp-4]
 004B4D05    mov         eax,dword ptr [eax+270];TCustomComboBoxEx.FComboBoxExHandle:HWND
 004B4D0B    push        eax
 004B4D0C    call        user32.InvalidateRect
 004B4D11    mov         eax,dword ptr [ebp-4]
 004B4D14    cmp         dword ptr [eax+240],0;TCustomComboBoxEx.FEditHandle:HWND
>004B4D1B    je          004B4D32
 004B4D1D    push        0
 004B4D1F    lea         eax,[ebp-18]
 004B4D22    push        eax
 004B4D23    mov         eax,dword ptr [ebp-4]
 004B4D26    mov         eax,dword ptr [eax+240];TCustomComboBoxEx.FEditHandle:HWND
 004B4D2C    push        eax
 004B4D2D    call        user32.InvalidateRect
 004B4D32    mov         esp,ebp
 004B4D34    pop         ebp
 004B4D35    ret
end;*}

//004B4D38
{*procedure TCustomComboBoxEx.WMLButtonDown(?:?);
begin
 004B4D38    push        ebp
 004B4D39    mov         ebp,esp
 004B4D3B    add         esp,0FFFFFFF4
 004B4D3E    mov         dword ptr [ebp-8],edx
 004B4D41    mov         dword ptr [ebp-4],eax
 004B4D44    mov         eax,dword ptr [ebp-4]
 004B4D47    cmp         byte ptr [eax+5D],1;TCustomComboBoxEx.FDragMode:TDragMode
>004B4D4B    jne         004B4D8D
 004B4D4D    mov         eax,dword ptr [ebp-4]
 004B4D50    cmp         byte ptr [eax+289],2;TCustomComboBoxEx.FStyle:TComboBoxExStyle
>004B4D57    jne         004B4D8D
 004B4D59    push        15
 004B4D5B    call        user32.GetSystemMetrics
 004B4D60    mov         edx,dword ptr [ebp-4]
 004B4D63    mov         edx,dword ptr [edx+48];TCustomComboBoxEx.Width:Integer
 004B4D66    sub         edx,eax
 004B4D68    mov         eax,dword ptr [ebp-8]
 004B4D6B    movsx       eax,word ptr [eax+8]
 004B4D6F    cmp         edx,eax
>004B4D71    jle         004B4D8D
 004B4D73    mov         eax,dword ptr [ebp-4]
 004B4D76    mov         edx,dword ptr [eax]
 004B4D78    call        dword ptr [edx+0C4];TCustomComboBoxEx.sub_004D3808
 004B4D7E    or          ecx,0FFFFFFFF
 004B4D81    xor         edx,edx
 004B4D83    mov         eax,dword ptr [ebp-4]
 004B4D86    call        004CB9C0
>004B4D8B    jmp         004B4DCD
 004B4D8D    mov         edx,dword ptr [ebp-8]
 004B4D90    mov         eax,dword ptr [ebp-4]
 004B4D93    call        TControl.WMLButtonDown
 004B4D98    mov         eax,dword ptr [ebp-4]
 004B4D9B    call        TControl.GetMouseCapture
 004B4DA0    test        al,al
>004B4DA2    je          004B4DCD
 004B4DA4    mov         eax,dword ptr [ebp-4]
 004B4DA7    call        004E7ED8
 004B4DAC    mov         dword ptr [ebp-0C],eax
 004B4DAF    cmp         dword ptr [ebp-0C],0
>004B4DB3    je          004B4DCD
 004B4DB5    mov         eax,dword ptr [ebp-0C]
 004B4DB8    mov         eax,dword ptr [eax+220]
 004B4DBE    cmp         eax,dword ptr [ebp-4]
>004B4DC1    je          004B4DCD
 004B4DC3    xor         edx,edx
 004B4DC5    mov         eax,dword ptr [ebp-4]
 004B4DC8    call        004CB390
 004B4DCD    mov         esp,ebp
 004B4DCF    pop         ebp
 004B4DD0    ret
end;*}

//004B4E08
procedure TCustomComboBoxEx.CreateWnd;
begin
{*
 004B4E08    push        ebp
 004B4E09    mov         ebp,esp
 004B4E0B    add         esp,0FFFFFFE8
 004B4E0E    xor         edx,edx
 004B4E10    mov         dword ptr [ebp-10],edx
 004B4E13    mov         dword ptr [ebp-4],eax
 004B4E16    xor         eax,eax
 004B4E18    push        ebp
 004B4E19    push        4B5153
 004B4E1E    push        dword ptr fs:[eax]
 004B4E21    mov         dword ptr fs:[eax],esp
 004B4E24    mov         eax,dword ptr [ebp-4]
 004B4E27    call        TCustomCombo.CreateWnd
 004B4E2C    push        5
 004B4E2E    mov         eax,dword ptr [ebp-4]
 004B4E31    call        TWinControl.GetHandle
 004B4E36    push        eax
 004B4E37    call        user32.GetWindow
 004B4E3C    mov         edx,dword ptr [ebp-4]
 004B4E3F    mov         dword ptr [edx+248],eax;TCustomComboBoxEx.FDropHandle:HWND
 004B4E45    mov         eax,dword ptr [ebp-4]
 004B4E48    mov         eax,dword ptr [eax+248];TCustomComboBoxEx.FDropHandle:HWND
 004B4E4E    mov         edx,dword ptr [ebp-4]
 004B4E51    mov         dword ptr [edx+270],eax;TCustomComboBoxEx.FComboBoxExHandle:HWND
 004B4E57    push        0FC
 004B4E59    mov         eax,dword ptr [ebp-4]
 004B4E5C    mov         eax,dword ptr [eax+270];TCustomComboBoxEx.FComboBoxExHandle:HWND
 004B4E62    push        eax
 004B4E63    call        user32.GetWindowLongA
 004B4E68    mov         edx,dword ptr [ebp-4]
 004B4E6B    mov         dword ptr [edx+274],eax;TCustomComboBoxEx.FComboBoxExDefProc:Pointer
 004B4E71    mov         eax,dword ptr [ebp-4]
 004B4E74    mov         eax,dword ptr [eax+278];TCustomComboBoxEx.FComboBoxExInstance:Pointer
 004B4E7A    push        eax
 004B4E7B    push        0FC
 004B4E7D    mov         eax,dword ptr [ebp-4]
 004B4E80    mov         eax,dword ptr [eax+270];TCustomComboBoxEx.FComboBoxExHandle:HWND
 004B4E86    push        eax
 004B4E87    call        user32.SetWindowLongA
 004B4E8C    mov         eax,dword ptr [ebp-4]
 004B4E8F    mov         al,byte ptr [eax+289];TCustomComboBoxEx.FStyle:TComboBoxExStyle
 004B4E95    sub         al,2
>004B4E97    jae         004B4F5E
 004B4E9D    push        5
 004B4E9F    push        5
 004B4EA1    mov         eax,dword ptr [ebp-4]
 004B4EA4    call        TWinControl.GetHandle
 004B4EA9    push        eax
 004B4EAA    call        user32.GetWindow
 004B4EAF    push        eax
 004B4EB0    call        user32.GetWindow
 004B4EB5    mov         dword ptr [ebp-8],eax
 004B4EB8    cmp         dword ptr [ebp-8],0
>004B4EBC    je          004B4F5E
 004B4EC2    mov         eax,dword ptr [ebp-4]
 004B4EC5    cmp         byte ptr [eax+289],1;TCustomComboBoxEx.FStyle:TComboBoxExStyle
>004B4ECC    jne         004B4F1D
 004B4ECE    mov         eax,dword ptr [ebp-4]
 004B4ED1    mov         edx,dword ptr [ebp-8]
 004B4ED4    mov         dword ptr [eax+244],edx;TCustomComboBoxEx.FListHandle:HWND
 004B4EDA    push        0FC
 004B4EDC    mov         eax,dword ptr [ebp-4]
 004B4EDF    mov         eax,dword ptr [eax+244];TCustomComboBoxEx.FListHandle:HWND
 004B4EE5    push        eax
 004B4EE6    call        user32.GetWindowLongA
 004B4EEB    mov         edx,dword ptr [ebp-4]
 004B4EEE    mov         dword ptr [edx+258],eax;TCustomComboBoxEx.FDefListProc:Pointer
 004B4EF4    mov         eax,dword ptr [ebp-4]
 004B4EF7    mov         eax,dword ptr [eax+254];TCustomComboBoxEx.FListInstance:Pointer
 004B4EFD    push        eax
 004B4EFE    push        0FC
 004B4F00    mov         eax,dword ptr [ebp-4]
 004B4F03    mov         eax,dword ptr [eax+244];TCustomComboBoxEx.FListHandle:HWND
 004B4F09    push        eax
 004B4F0A    call        user32.SetWindowLongA
 004B4F0F    push        2
 004B4F11    mov         eax,dword ptr [ebp-8]
 004B4F14    push        eax
 004B4F15    call        user32.GetWindow
 004B4F1A    mov         dword ptr [ebp-8],eax
 004B4F1D    mov         eax,dword ptr [ebp-4]
 004B4F20    mov         edx,dword ptr [ebp-8]
 004B4F23    mov         dword ptr [eax+240],edx;TCustomComboBoxEx.FEditHandle:HWND
 004B4F29    push        0FC
 004B4F2B    mov         eax,dword ptr [ebp-4]
 004B4F2E    mov         eax,dword ptr [eax+240];TCustomComboBoxEx.FEditHandle:HWND
 004B4F34    push        eax
 004B4F35    call        user32.GetWindowLongA
 004B4F3A    mov         edx,dword ptr [ebp-4]
 004B4F3D    mov         dword ptr [edx+250],eax;TCustomComboBoxEx.FDefEditProc:Pointer
 004B4F43    mov         eax,dword ptr [ebp-4]
 004B4F46    mov         eax,dword ptr [eax+24C];TCustomComboBoxEx.FEditInstance:Pointer
 004B4F4C    push        eax
 004B4F4D    push        0FC
 004B4F4F    mov         eax,dword ptr [ebp-4]
 004B4F52    mov         eax,dword ptr [eax+240];TCustomComboBoxEx.FEditHandle:HWND
 004B4F58    push        eax
 004B4F59    call        user32.SetWindowLongA
 004B4F5E    mov         eax,[0055B36C];^NewStyleControls:Boolean
 004B4F63    cmp         byte ptr [eax],0
>004B4F66    je          004B4F8C
 004B4F68    mov         eax,dword ptr [ebp-4]
 004B4F6B    cmp         dword ptr [eax+240],0;TCustomComboBoxEx.FEditHandle:HWND
>004B4F72    je          004B4F8C
 004B4F74    push        0
 004B4F76    push        3
 004B4F78    push        0D3
 004B4F7D    mov         eax,dword ptr [ebp-4]
 004B4F80    mov         eax,dword ptr [eax+240];TCustomComboBoxEx.FEditHandle:HWND
 004B4F86    push        eax
 004B4F87    call        user32.SendMessageA
 004B4F8C    mov         eax,dword ptr [ebp-4]
 004B4F8F    cmp         dword ptr [eax+284],0;TCustomComboBoxEx.FMemStream:TCollection
>004B4F96    je          004B5058
 004B4F9C    mov         eax,dword ptr [ebp-4]
 004B4F9F    mov         eax,dword ptr [eax+28C];TCustomComboBoxEx.FItemsEx:TComboExItems
 004B4FA5    mov         edx,dword ptr [eax]
 004B4FA7    call        dword ptr [edx+20];TComboExItems.sub_004799FC
 004B4FAA    mov         eax,dword ptr [ebp-4]
 004B4FAD    mov         byte ptr [eax+288],1;TCustomComboBoxEx.FReading:Boolean
 004B4FB4    xor         eax,eax
 004B4FB6    push        ebp
 004B4FB7    push        4B5051
 004B4FBC    push        dword ptr fs:[eax]
 004B4FBF    mov         dword ptr fs:[eax],esp
 004B4FC2    mov         eax,dword ptr [ebp-4]
 004B4FC5    mov         edx,dword ptr [eax+284];TCustomComboBoxEx.FMemStream:TCollection
 004B4FCB    mov         eax,dword ptr [ebp-4]
 004B4FCE    mov         eax,dword ptr [eax+28C];TCustomComboBoxEx.FItemsEx:TComboExItems
 004B4FD4    mov         ecx,dword ptr [eax]
 004B4FD6    call        dword ptr [ecx+8];TComboExItems.sub_00479958
 004B4FD9    mov         eax,dword ptr [ebp-4]
 004B4FDC    mov         eax,dword ptr [eax+28C];TCustomComboBoxEx.FItemsEx:TComboExItems
 004B4FE2    call        00479B60
 004B4FE7    dec         eax
 004B4FE8    test        eax,eax
>004B4FEA    jl          004B5010
 004B4FEC    inc         eax
 004B4FED    mov         dword ptr [ebp-18],eax
 004B4FF0    mov         dword ptr [ebp-0C],0
 004B4FF7    mov         eax,dword ptr [ebp-4]
 004B4FFA    mov         eax,dword ptr [eax+28C];TCustomComboBoxEx.FItemsEx:TComboExItems
 004B5000    mov         edx,dword ptr [ebp-0C]
 004B5003    mov         ecx,dword ptr [eax]
 004B5005    call        dword ptr [ecx+2C];TComboExItems.sub_004B45F4
 004B5008    inc         dword ptr [ebp-0C]
 004B500B    dec         dword ptr [ebp-18]
>004B500E    jne         004B4FF7
 004B5010    mov         eax,dword ptr [ebp-4]
 004B5013    add         eax,284;TCustomComboBoxEx.FMemStream:TCollection
 004B5018    call        FreeAndNil
 004B501D    mov         eax,dword ptr [ebp-4]
 004B5020    mov         edx,dword ptr [eax+68];TCustomComboBoxEx.FFont:TFont
 004B5023    mov         eax,dword ptr [ebp-4]
 004B5026    call        TPanel.SetFont
 004B502B    xor         eax,eax
 004B502D    pop         edx
 004B502E    pop         ecx
 004B502F    pop         ecx
 004B5030    mov         dword ptr fs:[eax],edx
 004B5033    push        4B5058
 004B5038    mov         eax,dword ptr [ebp-4]
 004B503B    mov         eax,dword ptr [eax+28C];TCustomComboBoxEx.FItemsEx:TComboExItems
 004B5041    mov         edx,dword ptr [eax]
 004B5043    call        dword ptr [edx+24];TComboExItems.sub_00479A94
 004B5046    mov         eax,dword ptr [ebp-4]
 004B5049    mov         byte ptr [eax+288],0;TCustomComboBoxEx.FReading:Boolean
 004B5050    ret
>004B5051    jmp         @HandleFinally
>004B5056    jmp         004B5038
 004B5058    mov         eax,dword ptr [ebp-4]
 004B505B    cmp         dword ptr [eax+280],0;TCustomComboBoxEx.FImages:TCustomImageList
>004B5062    je          004B5088
 004B5064    mov         eax,dword ptr [ebp-4]
 004B5067    mov         eax,dword ptr [eax+280];TCustomComboBoxEx.FImages:TCustomImageList
 004B506D    call        004DC758
 004B5072    push        eax
 004B5073    push        0
 004B5075    push        402
 004B507A    mov         eax,dword ptr [ebp-4]
 004B507D    call        TWinControl.GetHandle
 004B5082    push        eax
 004B5083    call        user32.PostMessageA
 004B5088    mov         eax,dword ptr [ebp-4]
 004B508B    mov         dl,byte ptr [eax+28A];TCustomComboBoxEx.FStyleEx:TComboBoxExStyles
 004B5091    mov         eax,dword ptr [ebp-4]
 004B5094    call        004B51C4
 004B5099    mov         eax,dword ptr [ebp-4]
 004B509C    add         eax,268;TCustomComboBoxEx.FAutoCompleteIntf:IAutoComplete
 004B50A1    call        @IntfClear
 004B50A6    mov         eax,dword ptr [ebp-4]
 004B50A9    add         eax,268;TCustomComboBoxEx.FAutoCompleteIntf:IAutoComplete
 004B50AE    call        @IntfClear
 004B50B3    push        eax
 004B50B4    push        4B5160;['{00BB2762-6A77-11D0-A535-00C04FD7D062}']
 004B50B9    push        1
 004B50BB    push        0
 004B50BD    mov         eax,[0055B0F4];^gvar_0053FE04
 004B50C2    push        eax
 004B50C3    call        ole32.CoCreateInstance
 004B50C8    mov         eax,dword ptr [ebp-4]
 004B50CB    cmp         dword ptr [eax+268],0;TCustomComboBoxEx.FAutoCompleteIntf:IAutoComplete
>004B50D2    je          004B513D
 004B50D4    push        0
 004B50D6    push        0
 004B50D8    push        407
 004B50DD    mov         eax,dword ptr [ebp-4]
 004B50E0    call        TWinControl.GetHandle
 004B50E5    push        eax
 004B50E6    call        user32.SendMessageA
 004B50EB    mov         dword ptr [ebp-14],eax
 004B50EE    cmp         dword ptr [ebp-14],0
>004B50F2    je          004B513D
 004B50F4    mov         eax,dword ptr [ebp-4]
 004B50F7    mov         ecx,dword ptr [eax+28C];TCustomComboBoxEx.FItemsEx:TComboExItems
 004B50FD    mov         dl,1
 004B50FF    mov         eax,[004B4784];TComboBoxExEnumerator
 004B5104    call        TComboBoxExEnumerator.Create;TComboBoxExEnumerator.Create
 004B5109    mov         edx,eax
 004B510B    test        edx,edx
>004B510D    je          004B5112
 004B510F    sub         edx,0FFFFFFEC
 004B5112    lea         eax,[ebp-10]
 004B5115    call        @IntfCopy
 004B511A    push        0
 004B511C    push        0
 004B511E    mov         eax,dword ptr [ebp-10]
 004B5121    push        eax
 004B5122    mov         eax,dword ptr [ebp-14]
 004B5125    push        eax
 004B5126    mov         eax,dword ptr [ebp-4]
 004B5129    mov         eax,dword ptr [eax+268];TCustomComboBoxEx.FAutoCompleteIntf:IAutoComplete
 004B512F    push        eax
 004B5130    mov         eax,dword ptr [eax]
 004B5132    call        dword ptr [eax+0C]
 004B5135    mov         eax,dword ptr [ebp-4]
 004B5138    call        004B53E4
 004B513D    xor         eax,eax
 004B513F    pop         edx
 004B5140    pop         ecx
 004B5141    pop         ecx
 004B5142    mov         dword ptr fs:[eax],edx
 004B5145    push        4B515A
 004B514A    lea         eax,[ebp-10]
 004B514D    call        @IntfClear
 004B5152    ret
>004B5153    jmp         @HandleFinally
>004B5158    jmp         004B514A
 004B515A    mov         esp,ebp
 004B515C    pop         ebp
 004B515D    ret
*}
end;

//004B5170
{*function sub_004B5170:?;
begin
 004B5170    push        ebp
 004B5171    mov         ebp,esp
 004B5173    add         esp,0FFFFFFF8
 004B5176    mov         dword ptr [ebp-4],eax
 004B5179    mov         eax,dword ptr [ebp-4]
 004B517C    mov         eax,dword ptr [eax+23C];TCustomComboBoxEx.FItems:TStrings
 004B5182    mov         edx,dword ptr [eax]
 004B5184    call        dword ptr [edx+14];@AbstractError
 004B5187    mov         dword ptr [ebp-8],eax
 004B518A    mov         eax,dword ptr [ebp-8]
 004B518D    pop         ecx
 004B518E    pop         ecx
 004B518F    pop         ebp
 004B5190    ret
end;*}

//004B5194
{*function sub_004B5194:?;
begin
 004B5194    push        ebp
 004B5195    mov         ebp,esp
 004B5197    add         esp,0FFFFFFF8
 004B519A    mov         dword ptr [ebp-4],eax
 004B519D    mov         eax,[004A772C];TComboBoxExStrings
 004B51A2    mov         dword ptr [ebp-8],eax
 004B51A5    mov         eax,dword ptr [ebp-8]
 004B51A8    pop         ecx
 004B51A9    pop         ecx
 004B51AA    pop         ebp
 004B51AB    ret
end;*}

//004B51AC
procedure TCustomComboBoxEx.sub_004B51AC;
begin
{*
 004B51AC    push        ebp
 004B51AD    mov         ebp,esp
 004B51AF    add         esp,0FFFFFFF8
 004B51B2    mov         dword ptr [ebp-4],eax
 004B51B5    mov         eax,[004A7A1C];TComboBoxExActionLink
 004B51BA    mov         dword ptr [ebp-8],eax
 004B51BD    mov         eax,dword ptr [ebp-8]
 004B51C0    pop         ecx
 004B51C1    pop         ecx
 004B51C2    pop         ebp
 004B51C3    ret
*}
end;

//004B51C4
{*procedure sub_004B51C4(?:TCustomComboBoxEx; ?:?);
begin
 004B51C4    push        ebp
 004B51C5    mov         ebp,esp
 004B51C7    add         esp,0FFFFFFF0
 004B51CA    mov         byte ptr [ebp-5],dl
 004B51CD    mov         dword ptr [ebp-4],eax
 004B51D0    xor         eax,eax
 004B51D2    mov         dword ptr [ebp-0C],eax
 004B51D5    mov         al,byte ptr [ebp-5]
 004B51D8    mov         edx,dword ptr [ebp-4]
 004B51DB    mov         byte ptr [edx+28A],al;TCustomComboBoxEx.FStyleEx:TComboBoxExStyles
 004B51E1    mov         eax,dword ptr [ebp-4]
 004B51E4    call        TWinControl.HandleAllocated
 004B51E9    test        al,al
>004B51EB    je          004B5238
 004B51ED    mov         byte ptr [ebp-0D],0
 004B51F1    mov         al,byte ptr [ebp-0D]
 004B51F4    mov         edx,dword ptr [ebp-4]
 004B51F7    cmp         al,7
>004B51F9    ja          004B5205
 004B51FB    and         eax,7F
 004B51FE    bt          dword ptr [edx+28A],eax;TCustomComboBoxEx.FStyleEx:TComboBoxExStyles
>004B5205    jae         004B5216
 004B5207    xor         eax,eax
 004B5209    mov         al,byte ptr [ebp-0D]
 004B520C    mov         eax,dword ptr [eax*4+541508]
 004B5213    or          dword ptr [ebp-0C],eax
 004B5216    inc         byte ptr [ebp-0D]
 004B5219    cmp         byte ptr [ebp-0D],5
>004B521D    jne         004B51F1
 004B521F    mov         eax,dword ptr [ebp-0C]
 004B5222    push        eax
 004B5223    push        0
 004B5225    push        40E
 004B522A    mov         eax,dword ptr [ebp-4]
 004B522D    call        TWinControl.GetHandle
 004B5232    push        eax
 004B5233    call        user32.SendMessageA
 004B5238    mov         esp,ebp
 004B523A    pop         ebp
 004B523B    ret
end;*}

//004B523C
{*procedure TCustomComboBoxEx.sub_004B523C(?:?; ?:?);
begin
 004B523C    push        ebp
 004B523D    mov         ebp,esp
 004B523F    add         esp,0FFFFFFF4
 004B5242    mov         byte ptr [ebp-9],cl
 004B5245    mov         dword ptr [ebp-8],edx
 004B5248    mov         dword ptr [ebp-4],eax
 004B524B    mov         cl,byte ptr [ebp-9]
 004B524E    mov         edx,dword ptr [ebp-8]
 004B5251    mov         eax,dword ptr [ebp-4]
 004B5254    call        TWinControl.sub_004CD9E4
 004B5259    mov         eax,dword ptr [ebp-8]
 004B525C    mov         edx,dword ptr ds:[4A0F28];TStaticListAction
 004B5262    call        @IsClass
 004B5267    test        al,al
>004B5269    je          004B52B6
 004B526B    cmp         byte ptr [ebp-9],0
>004B526F    je          004B527D
 004B5271    mov         eax,dword ptr [ebp-4]
 004B5274    cmp         dword ptr [eax+280],0;TCustomComboBoxEx.FImages:TCustomImageList
>004B527B    jne         004B528E
 004B527D    mov         eax,dword ptr [ebp-8]
 004B5280    mov         edx,dword ptr [eax+0A4]
 004B5286    mov         eax,dword ptr [ebp-4]
 004B5289    call        004B4AE0
 004B528E    cmp         byte ptr [ebp-9],0
>004B5292    je          004B52A2
 004B5294    mov         eax,dword ptr [ebp-4]
 004B5297    mov         edx,dword ptr [eax]
 004B5299    call        dword ptr [edx+0CC];TCustomComboBoxEx.sub_004BEFBC
 004B529F    inc         eax
>004B52A0    je          004B52B6
 004B52A2    mov         eax,dword ptr [ebp-8]
 004B52A5    mov         edx,dword ptr [eax+0C8]
 004B52AB    mov         eax,dword ptr [ebp-4]
 004B52AE    mov         ecx,dword ptr [eax]
 004B52B0    call        dword ptr [ecx+0D0];TCustomComboBoxEx.sub_004BF000
 004B52B6    mov         esp,ebp
 004B52B8    pop         ebp
 004B52B9    ret
end;*}

//004B52BC
{*procedure sub_004B52BC(?:?);
begin
 004B52BC    push        ebp
 004B52BD    mov         ebp,esp
 004B52BF    add         esp,0FFFFFFF8
 004B52C2    mov         dword ptr [ebp-8],edx
 004B52C5    mov         dword ptr [ebp-4],eax
 004B52C8    mov         edx,dword ptr [ebp-8]
 004B52CB    mov         eax,dword ptr [ebp-4]
 004B52CE    call        004BFCA0
 004B52D3    mov         ax,[004B5304];0x11 gvar_004B5304
 004B52D9    mov         edx,dword ptr [ebp-4]
 004B52DC    and         ax,word ptr [edx+1C];TCustomComboBoxEx.FComponentState:TComponentState
 004B52E0    mov         dx,word ptr ds:[4B5308];0x0 gvar_004B5308
 004B52E7    cmp         dx,ax
>004B52EA    jne         004B5300
 004B52EC    mov         eax,dword ptr [ebp-4]
 004B52EF    call        TWinControl.HandleAllocated
 004B52F4    test        al,al
>004B52F6    je          004B5300
 004B52F8    mov         eax,dword ptr [ebp-4]
 004B52FB    call        TWinControl.RecreateWnd
 004B5300    pop         ecx
 004B5301    pop         ecx
 004B5302    pop         ebp
 004B5303    ret
end;*}

//004B530C
{*function sub_004B530C:?;
begin
 004B530C    push        ebp
 004B530D    mov         ebp,esp
 004B530F    add         esp,0FFFFFFF8
 004B5312    mov         dword ptr [ebp-4],eax
 004B5315    mov         dword ptr [ebp-8],10
 004B531C    mov         eax,dword ptr [ebp-8]
 004B531F    pop         ecx
 004B5320    pop         ecx
 004B5321    pop         ebp
 004B5322    ret
end;*}

//004B5324
procedure sub_004B5324;
begin
{*
 004B5324    push        ebp
 004B5325    mov         ebp,esp
 004B5327    push        ecx
 004B5328    mov         dword ptr [ebp-4],eax
 004B532B    mov         eax,dword ptr [ebp-4]
 004B532E    mov         eax,dword ptr [eax+28C];TCustomComboBoxEx.FItemsEx:TComboExItems
 004B5334    call        00479B60
 004B5339    test        eax,eax
>004B533B    jle         004B537B
 004B533D    mov         eax,dword ptr [ebp-4]
 004B5340    cmp         dword ptr [eax+284],0;TCustomComboBoxEx.FMemStream:TCollection
>004B5347    jne         004B537B
 004B5349    mov         ecx,dword ptr ds:[4A7544];TComboExItem
 004B534F    mov         dl,1
 004B5351    mov         eax,[00475D80];TCollection
 004B5356    call        TCollection.Create;TCollection.Create
 004B535B    mov         edx,dword ptr [ebp-4]
 004B535E    mov         dword ptr [edx+284],eax;TCustomComboBoxEx.FMemStream:TCollection
 004B5364    mov         eax,dword ptr [ebp-4]
 004B5367    mov         edx,dword ptr [eax+28C];TCustomComboBoxEx.FItemsEx:TComboExItems
 004B536D    mov         eax,dword ptr [ebp-4]
 004B5370    mov         eax,dword ptr [eax+284];TCustomComboBoxEx.FMemStream:TCollection
 004B5376    mov         ecx,dword ptr [eax]
 004B5378    call        dword ptr [ecx+8];TCollection.sub_00479958
 004B537B    mov         eax,dword ptr [ebp-4]
 004B537E    call        004CFE84
 004B5383    pop         ecx
 004B5384    pop         ebp
 004B5385    ret
*}
end;

//004B5388
procedure TCustomComboBoxEx.sub_004B5388;
begin
{*
 004B5388    push        ebp
 004B5389    mov         ebp,esp
 004B538B    add         esp,0FFFFFFF4
 004B538E    mov         dword ptr [ebp-4],eax
 004B5391    mov         byte ptr [ebp-5],0
 004B5395    mov         eax,dword ptr [ebp-4]
 004B5398    call        TWinControl.HandleAllocated
 004B539D    test        al,al
>004B539F    je          004B53DC
 004B53A1    call        user32.GetFocus
 004B53A6    mov         dword ptr [ebp-0C],eax
 004B53A9    mov         eax,dword ptr [ebp-0C]
 004B53AC    mov         edx,dword ptr [ebp-4]
 004B53AF    cmp         eax,dword ptr [edx+240];TCustomComboBoxEx.FEditHandle:HWND
>004B53B5    je          004B53D7
 004B53B7    mov         eax,dword ptr [ebp-0C]
 004B53BA    mov         edx,dword ptr [ebp-4]
 004B53BD    cmp         eax,dword ptr [edx+244];TCustomComboBoxEx.FListHandle:HWND
>004B53C3    je          004B53D7
 004B53C5    mov         eax,dword ptr [ebp-0C]
 004B53C8    mov         edx,dword ptr [ebp-4]
 004B53CB    cmp         eax,dword ptr [edx+270];TCustomComboBoxEx.FComboBoxExHandle:HWND
>004B53D1    je          004B53D7
 004B53D3    xor         eax,eax
>004B53D5    jmp         004B53D9
 004B53D7    mov         al,1
 004B53D9    mov         byte ptr [ebp-5],al
 004B53DC    mov         al,byte ptr [ebp-5]
 004B53DF    mov         esp,ebp
 004B53E1    pop         ebp
 004B53E2    ret
*}
end;

//004B53E4
procedure sub_004B53E4(?:TCustomComboBoxEx);
begin
{*
 004B53E4    push        ebp
 004B53E5    mov         ebp,esp
 004B53E7    add         esp,0FFFFFFF4
 004B53EA    xor         edx,edx
 004B53EC    mov         dword ptr [ebp-8],edx
 004B53EF    mov         dword ptr [ebp-4],eax
 004B53F2    xor         eax,eax
 004B53F4    push        ebp
 004B53F5    push        4B5520
 004B53FA    push        dword ptr fs:[eax]
 004B53FD    mov         dword ptr fs:[eax],esp
 004B5400    mov         eax,dword ptr [ebp-4]
 004B5403    call        TWinControl.HandleAllocated
 004B5408    test        al,al
>004B540A    je          004B550A
 004B5410    mov         eax,dword ptr [ebp-4]
 004B5413    cmp         dword ptr [eax+268],0;TCustomComboBoxEx.FAutoCompleteIntf:IAutoComplete
>004B541A    je          004B550A
 004B5420    lea         eax,[ebp-8]
 004B5423    call        @IntfClear
 004B5428    mov         ecx,eax
 004B542A    mov         edx,4B552C
 004B542F    mov         eax,dword ptr [ebp-4]
 004B5432    mov         eax,dword ptr [eax+268];TCustomComboBoxEx.FAutoCompleteIntf:IAutoComplete
 004B5438    call        0046CBD0
 004B543D    test        al,al
>004B543F    je          004B54E9
 004B5445    mov         al,[004B553C];0x0 gvar_004B553C
 004B544A    mov         edx,dword ptr [ebp-4]
 004B544D    cmp         al,byte ptr [edx+26C];TCustomComboBoxEx.FAutoCompleteOptions:TAutoCompleteOptions
>004B5453    jne         004B5465
 004B5455    push        0
 004B5457    mov         eax,dword ptr [ebp-8]
 004B545A    push        eax
 004B545B    mov         eax,dword ptr [eax]
 004B545D    call        dword ptr [eax+14]
>004B5460    jmp         004B550A
 004B5465    xor         eax,eax
 004B5467    mov         dword ptr [ebp-0C],eax
 004B546A    mov         eax,dword ptr [ebp-4]
 004B546D    test        byte ptr [eax+26C],1;TCustomComboBoxEx.FAutoCompleteOptions:TAutoCompleteOptions
>004B5474    je          004B547A
 004B5476    or          dword ptr [ebp-0C],1
 004B547A    mov         eax,dword ptr [ebp-4]
 004B547D    test        byte ptr [eax+26C],2;TCustomComboBoxEx.FAutoCompleteOptions:TAutoCompleteOptions
>004B5484    je          004B548A
 004B5486    or          dword ptr [ebp-0C],2
 004B548A    mov         eax,dword ptr [ebp-4]
 004B548D    test        byte ptr [eax+26C],4;TCustomComboBoxEx.FAutoCompleteOptions:TAutoCompleteOptions
>004B5494    je          004B549A
 004B5496    or          dword ptr [ebp-0C],4
 004B549A    mov         eax,dword ptr [ebp-4]
 004B549D    test        byte ptr [eax+26C],8;TCustomComboBoxEx.FAutoCompleteOptions:TAutoCompleteOptions
>004B54A4    je          004B54AA
 004B54A6    or          dword ptr [ebp-0C],8
 004B54AA    mov         eax,dword ptr [ebp-4]
 004B54AD    test        byte ptr [eax+26C],10;TCustomComboBoxEx.FAutoCompleteOptions:TAutoCompleteOptions
>004B54B4    je          004B54BA
 004B54B6    or          dword ptr [ebp-0C],10
 004B54BA    mov         eax,dword ptr [ebp-4]
 004B54BD    test        byte ptr [eax+26C],20;TCustomComboBoxEx.FAutoCompleteOptions:TAutoCompleteOptions
>004B54C4    je          004B54CA
 004B54C6    or          dword ptr [ebp-0C],20
 004B54CA    mov         eax,dword ptr [ebp-4]
 004B54CD    test        byte ptr [eax+26C],40;TCustomComboBoxEx.FAutoCompleteOptions:TAutoCompleteOptions
>004B54D4    je          004B54DA
 004B54D6    or          dword ptr [ebp-0C],40
 004B54DA    mov         eax,dword ptr [ebp-0C]
 004B54DD    push        eax
 004B54DE    mov         eax,dword ptr [ebp-8]
 004B54E1    push        eax
 004B54E2    mov         eax,dword ptr [eax]
 004B54E4    call        dword ptr [eax+14]
>004B54E7    jmp         004B550A
 004B54E9    mov         eax,dword ptr [ebp-4]
 004B54EC    test        byte ptr [eax+26C],1;TCustomComboBoxEx.FAutoCompleteOptions:TAutoCompleteOptions
 004B54F3    setne       al
 004B54F6    neg         al
 004B54F8    sbb         eax,eax
 004B54FA    push        eax
 004B54FB    mov         eax,dword ptr [ebp-4]
 004B54FE    mov         eax,dword ptr [eax+268];TCustomComboBoxEx.FAutoCompleteIntf:IAutoComplete
 004B5504    push        eax
 004B5505    mov         eax,dword ptr [eax]
 004B5507    call        dword ptr [eax+10]
 004B550A    xor         eax,eax
 004B550C    pop         edx
 004B550D    pop         ecx
 004B550E    pop         ecx
 004B550F    mov         dword ptr fs:[eax],edx
 004B5512    push        4B5527
 004B5517    lea         eax,[ebp-8]
 004B551A    call        @IntfClear
 004B551F    ret
>004B5520    jmp         @HandleFinally
>004B5525    jmp         004B5517
 004B5527    mov         esp,ebp
 004B5529    pop         ebp
 004B552A    ret
*}
end;

//004B5540
{*procedure TStatusBar.GetOnDrawPanel(?:?);
begin
 004B5540    push        ebp
 004B5541    mov         ebp,esp
 004B5543    add         esp,0FFFFFFF8
 004B5546    mov         dword ptr [ebp-8],edx
 004B5549    mov         dword ptr [ebp-4],eax
 004B554C    mov         eax,dword ptr [ebp-8]
 004B554F    mov         edx,dword ptr [ebp-4]
 004B5552    mov         ecx,dword ptr [edx+220];TStatusBar.FOnDrawPanel:TCustomDrawPanelEvent
 004B5558    mov         dword ptr [eax],ecx
 004B555A    mov         ecx,dword ptr [edx+224];TStatusBar.?f224:dword
 004B5560    mov         dword ptr [eax+4],ecx
 004B5563    pop         ecx
 004B5564    pop         ecx
 004B5565    pop         ebp
 004B5566    ret
end;*}

//004B5568
{*procedure TStatusBar.SetOnDrawPanel(Value:TDrawPanelEvent; ?:?; ?:?);
begin
 004B5568    push        ebp
 004B5569    mov         ebp,esp
 004B556B    push        ecx
 004B556C    mov         dword ptr [ebp-4],eax
 004B556F    mov         eax,dword ptr [ebp-4]
 004B5572    mov         edx,dword ptr [ebp+8]
 004B5575    mov         dword ptr [eax+220],edx;TStatusBar.FOnDrawPanel:TCustomDrawPanelEvent
 004B557B    mov         edx,dword ptr [ebp+0C]
 004B557E    mov         dword ptr [eax+224],edx;TStatusBar.?f224:dword
 004B5584    pop         ecx
 004B5585    pop         ebp
 004B5586    ret         8
end;*}

//004B558C
{*function sub_004B558C(?:?):?;
begin
 004B558C    push        ebp
 004B558D    mov         ebp,esp
 004B558F    add         esp,0FFFFFFF0
 004B5592    mov         dword ptr [ebp-8],edx
 004B5595    mov         dword ptr [ebp-4],eax
 004B5598    mov         eax,dword ptr [ebp-4]
 004B559B    mov         eax,dword ptr [eax+14];TComboBoxExStrings...............................FItems:TComboExI...
 004B559E    call        004B445C
 004B55A3    mov         dword ptr [ebp-10],eax
 004B55A6    mov         edx,dword ptr [ebp-8]
 004B55A9    mov         eax,dword ptr [ebp-10]
 004B55AC    mov         ecx,dword ptr [eax]
 004B55AE    call        dword ptr [ecx+20]
 004B55B1    mov         eax,dword ptr [ebp-10]
 004B55B4    call        TCollectionItem.GetIndex
 004B55B9    mov         dword ptr [ebp-0C],eax
 004B55BC    mov         eax,dword ptr [ebp-0C]
 004B55BF    mov         esp,ebp
 004B55C1    pop         ebp
 004B55C2    ret
end;*}

//004B55C4
{*function sub_004B55C4(?:?; ?:?):?;
begin
 004B55C4    push        ebp
 004B55C5    mov         ebp,esp
 004B55C7    add         esp,0FFFFFFEC
 004B55CA    mov         dword ptr [ebp-0C],ecx
 004B55CD    mov         dword ptr [ebp-8],edx
 004B55D0    mov         dword ptr [ebp-4],eax
 004B55D3    mov         eax,dword ptr [ebp-4]
 004B55D6    mov         eax,dword ptr [eax+14];TComboBoxExStrings................................FItems:TComboEx...
 004B55D9    call        004B445C
 004B55DE    mov         dword ptr [ebp-14],eax
 004B55E1    mov         edx,dword ptr [ebp-8]
 004B55E4    mov         eax,dword ptr [ebp-14]
 004B55E7    mov         ecx,dword ptr [eax]
 004B55E9    call        dword ptr [ecx+20]
 004B55EC    mov         edx,dword ptr [ebp-0C]
 004B55EF    mov         eax,dword ptr [ebp-14]
 004B55F2    mov         ecx,dword ptr [eax]
 004B55F4    call        dword ptr [ecx+24]
 004B55F7    mov         eax,dword ptr [ebp-14]
 004B55FA    call        TCollectionItem.GetIndex
 004B55FF    mov         dword ptr [ebp-10],eax
 004B5602    mov         eax,dword ptr [ebp-10]
 004B5605    mov         esp,ebp
 004B5607    pop         ebp
 004B5608    ret
end;*}

//004B560C
procedure TComboBoxExStrings.Clear;
begin
{*
 004B560C    push        ebp
 004B560D    mov         ebp,esp
 004B560F    push        ecx
 004B5610    mov         dword ptr [ebp-4],eax
 004B5613    mov         eax,dword ptr [ebp-4]
 004B5616    mov         eax,dword ptr [eax+14]
 004B5619    mov         edx,dword ptr [eax]
 004B561B    call        dword ptr [edx+20]
 004B561E    xor         eax,eax
 004B5620    push        ebp
 004B5621    push        4B566A
 004B5626    push        dword ptr fs:[eax]
 004B5629    mov         dword ptr fs:[eax],esp
 004B562C    mov         eax,dword ptr [ebp-4]
 004B562F    mov         eax,dword ptr [eax+14]
 004B5632    call        TCollection.Clear
 004B5637    mov         eax,dword ptr [ebp-4]
 004B563A    mov         eax,dword ptr [eax+10]
 004B563D    call        TWinControl.HandleAllocated
 004B5642    test        al,al
>004B5644    je          004B5651
 004B5646    mov         eax,dword ptr [ebp-4]
 004B5649    mov         eax,dword ptr [eax+10]
 004B564C    call        TWinControl.RecreateWnd
 004B5651    xor         eax,eax
 004B5653    pop         edx
 004B5654    pop         ecx
 004B5655    pop         ecx
 004B5656    mov         dword ptr fs:[eax],edx
 004B5659    push        4B5671
 004B565E    mov         eax,dword ptr [ebp-4]
 004B5661    mov         eax,dword ptr [eax+14]
 004B5664    mov         edx,dword ptr [eax]
 004B5666    call        dword ptr [edx+24]
 004B5669    ret
>004B566A    jmp         @HandleFinally
>004B566F    jmp         004B565E
 004B5671    pop         ecx
 004B5672    pop         ebp
 004B5673    ret
*}
end;

//004B5674
constructor TComboBoxExStrings.Create;
begin
{*
 004B5674    push        ebp
 004B5675    mov         ebp,esp
 004B5677    add         esp,0FFFFFFF4
 004B567A    test        dl,dl
>004B567C    je          004B5686
 004B567E    add         esp,0FFFFFFF0
 004B5681    call        @ClassCreate
 004B5686    mov         dword ptr [ebp-0C],ecx
 004B5689    mov         byte ptr [ebp-5],dl
 004B568C    mov         dword ptr [ebp-4],eax
 004B568F    xor         edx,edx
 004B5691    mov         eax,dword ptr [ebp-4]
 004B5694    call        TObject.Create
 004B5699    mov         eax,dword ptr [ebp-4]
 004B569C    mov         edx,dword ptr [eax]
 004B569E    call        dword ptr [edx+84];TComboBoxExStrings.sub_004B5AFC
 004B56A4    push        eax
 004B56A5    mov         eax,dword ptr [ebp-4]
 004B56A8    mov         edx,dword ptr [eax]
 004B56AA    call        dword ptr [edx+80];TComboBoxExStrings.sub_004B5AE4
 004B56B0    mov         ecx,dword ptr [ebp-0C]
 004B56B3    mov         dl,1
 004B56B5    call        TStaticListItems.Create
 004B56BA    mov         edx,dword ptr [ebp-4]
 004B56BD    mov         dword ptr [edx+14],eax;TComboBoxExStrings.................................FItems:TComboE...
 004B56C0    mov         eax,dword ptr [ebp-4]
 004B56C3    cmp         byte ptr [ebp-5],0
>004B56C7    je          004B56D8
 004B56C9    call        @AfterConstruction
 004B56CE    pop         dword ptr fs:[0]
 004B56D5    add         esp,0C
 004B56D8    mov         eax,dword ptr [ebp-4]
 004B56DB    mov         esp,ebp
 004B56DD    pop         ebp
 004B56DE    ret
*}
end;

//004B56E0
destructor TComboBoxExStrings.Destroy;
begin
{*
 004B56E0    push        ebp
 004B56E1    mov         ebp,esp
 004B56E3    add         esp,0FFFFFFF8
 004B56E6    call        @BeforeDestruction
 004B56EB    mov         byte ptr [ebp-5],dl
 004B56EE    mov         dword ptr [ebp-4],eax
 004B56F1    mov         eax,dword ptr [ebp-4]
 004B56F4    add         eax,14
 004B56F7    call        FreeAndNil
 004B56FC    mov         dl,byte ptr [ebp-5]
 004B56FF    and         dl,0FC
 004B5702    mov         eax,dword ptr [ebp-4]
 004B5705    call        TStrings.Destroy
 004B570A    cmp         byte ptr [ebp-5],0
>004B570E    jle         004B5718
 004B5710    mov         eax,dword ptr [ebp-4]
 004B5713    call        @ClassDestroy
 004B5718    pop         ecx
 004B5719    pop         ecx
 004B571A    pop         ebp
 004B571B    ret
*}
end;

//004B571C
{*procedure sub_004B571C(?:?);
begin
 004B571C    push        ebp
 004B571D    mov         ebp,esp
 004B571F    add         esp,0FFFFFFF8
 004B5722    mov         dword ptr [ebp-8],edx
 004B5725    mov         dword ptr [ebp-4],eax
 004B5728    mov         edx,dword ptr [ebp-8]
 004B572B    mov         eax,dword ptr [ebp-4]
 004B572E    mov         eax,dword ptr [eax+14];TComboBoxExStrings..................................FItems:TCombo...
 004B5731    call        00479EF8
 004B5736    pop         ecx
 004B5737    pop         ecx
 004B5738    pop         ebp
 004B5739    ret
end;*}

//004B573C
{*procedure sub_004B573C(?:?; ?:?);
begin
 004B573C    push        ebp
 004B573D    mov         ebp,esp
 004B573F    add         esp,0FFFFFFEC
 004B5742    push        ebx
 004B5743    xor         ebx,ebx
 004B5745    mov         dword ptr [ebp-10],ebx
 004B5748    mov         dword ptr [ebp-0C],ecx
 004B574B    mov         dword ptr [ebp-8],edx
 004B574E    mov         dword ptr [ebp-4],eax
 004B5751    xor         eax,eax
 004B5753    push        ebp
 004B5754    push        4B58BA
 004B5759    push        dword ptr fs:[eax]
 004B575C    mov         dword ptr fs:[eax],esp
 004B575F    mov         edx,dword ptr [ebp-0C]
 004B5762    mov         eax,dword ptr [ebp-4]
 004B5765    mov         eax,dword ptr [eax+14];TComboBoxExStrings...................................FItems:TComb...
 004B5768    call        004A1720
 004B576D    mov         edx,dword ptr [eax+10]
 004B5770    lea         eax,[ebp-10]
 004B5773    call        @LStrLAsg
 004B5778    mov         edx,dword ptr [ebp-8]
 004B577B    mov         eax,dword ptr [ebp-4]
 004B577E    mov         eax,dword ptr [eax+14];TComboBoxExStrings....................................FItems:TCom...
 004B5781    call        004A1720
 004B5786    mov         eax,dword ptr [eax+10]
 004B5789    push        eax
 004B578A    mov         edx,dword ptr [ebp-0C]
 004B578D    mov         eax,dword ptr [ebp-4]
 004B5790    mov         eax,dword ptr [eax+14];TComboBoxExStrings.....................................FItems:TCo...
 004B5793    call        004A1720
 004B5798    pop         edx
 004B5799    mov         ecx,dword ptr [eax]
 004B579B    call        dword ptr [ecx+20]
 004B579E    mov         edx,dword ptr [ebp-8]
 004B57A1    mov         eax,dword ptr [ebp-4]
 004B57A4    mov         eax,dword ptr [eax+14];TComboBoxExStrings......................................FItems:TC...
 004B57A7    call        004A1720
 004B57AC    mov         edx,dword ptr [ebp-10]
 004B57AF    mov         ecx,dword ptr [eax]
 004B57B1    call        dword ptr [ecx+20]
 004B57B4    mov         edx,dword ptr [ebp-0C]
 004B57B7    mov         eax,dword ptr [ebp-4]
 004B57BA    mov         eax,dword ptr [eax+14];TComboBoxExStrings.......................................FItems:T...
 004B57BD    call        004A1720
 004B57C2    mov         eax,dword ptr [eax+18]
 004B57C5    mov         dword ptr [ebp-14],eax
 004B57C8    mov         edx,dword ptr [ebp-8]
 004B57CB    mov         eax,dword ptr [ebp-4]
 004B57CE    mov         eax,dword ptr [eax+14];TComboBoxExStrings........................................FItems:...
 004B57D1    call        004A1720
 004B57D6    mov         eax,dword ptr [eax+18]
 004B57D9    push        eax
 004B57DA    mov         edx,dword ptr [ebp-0C]
 004B57DD    mov         eax,dword ptr [ebp-4]
 004B57E0    mov         eax,dword ptr [eax+14];TComboBoxExStrings.........................................FItems...
 004B57E3    call        004A1720
 004B57E8    pop         edx
 004B57E9    mov         ecx,dword ptr [eax]
 004B57EB    call        dword ptr [ecx+28]
 004B57EE    mov         edx,dword ptr [ebp-8]
 004B57F1    mov         eax,dword ptr [ebp-4]
 004B57F4    mov         eax,dword ptr [eax+14];TComboBoxExStrings..........................................FItem...
 004B57F7    call        004A1720
 004B57FC    mov         edx,dword ptr [ebp-14]
 004B57FF    mov         ecx,dword ptr [eax]
 004B5801    call        dword ptr [ecx+28]
 004B5804    mov         edx,dword ptr [ebp-0C]
 004B5807    mov         eax,dword ptr [ebp-4]
 004B580A    mov         eax,dword ptr [eax+14];TComboBoxExStrings...........................................FIte...
 004B580D    call        004A1720
 004B5812    mov         eax,dword ptr [eax+1C]
 004B5815    mov         dword ptr [ebp-14],eax
 004B5818    mov         edx,dword ptr [ebp-8]
 004B581B    mov         eax,dword ptr [ebp-4]
 004B581E    mov         eax,dword ptr [eax+14];TComboBoxExStrings............................................FIt...
 004B5821    call        004A1720
 004B5826    mov         eax,dword ptr [eax+1C]
 004B5829    push        eax
 004B582A    mov         edx,dword ptr [ebp-0C]
 004B582D    mov         eax,dword ptr [ebp-4]
 004B5830    mov         eax,dword ptr [eax+14];TComboBoxExStrings.............................................FI...
 004B5833    call        004A1720
 004B5838    pop         edx
 004B5839    mov         ecx,dword ptr [eax]
 004B583B    call        dword ptr [ecx+30]
 004B583E    mov         edx,dword ptr [ebp-8]
 004B5841    mov         eax,dword ptr [ebp-4]
 004B5844    mov         eax,dword ptr [eax+14];TComboBoxExStrings..............................................F...
 004B5847    call        004A1720
 004B584C    mov         edx,dword ptr [ebp-14]
 004B584F    mov         ecx,dword ptr [eax]
 004B5851    call        dword ptr [ecx+30]
 004B5854    mov         edx,dword ptr [ebp-0C]
 004B5857    mov         eax,dword ptr [ebp-4]
 004B585A    mov         eax,dword ptr [eax+14];TComboBoxExStrings..................................................
 004B585D    call        004A1720
 004B5862    mov         eax,dword ptr [eax+20]
 004B5865    mov         dword ptr [ebp-14],eax
 004B5868    mov         edx,dword ptr [ebp-8]
 004B586B    mov         eax,dword ptr [ebp-4]
 004B586E    mov         eax,dword ptr [eax+14];TComboBoxExStrings..................................................
 004B5871    call        004A1720
 004B5876    mov         eax,dword ptr [eax+20]
 004B5879    push        eax
 004B587A    mov         edx,dword ptr [ebp-0C]
 004B587D    mov         eax,dword ptr [ebp-4]
 004B5880    mov         eax,dword ptr [eax+14];TComboBoxExStrings..................................................
 004B5883    call        004A1720
 004B5888    pop         edx
 004B5889    mov         ecx,dword ptr [eax]
 004B588B    call        dword ptr [ecx+2C]
 004B588E    mov         edx,dword ptr [ebp-8]
 004B5891    mov         eax,dword ptr [ebp-4]
 004B5894    mov         eax,dword ptr [eax+14];TComboBoxExStrings..................................................
 004B5897    call        004A1720
 004B589C    mov         edx,dword ptr [ebp-14]
 004B589F    mov         ecx,dword ptr [eax]
 004B58A1    call        dword ptr [ecx+2C]
 004B58A4    xor         eax,eax
 004B58A6    pop         edx
 004B58A7    pop         ecx
 004B58A8    pop         ecx
 004B58A9    mov         dword ptr fs:[eax],edx
 004B58AC    push        4B58C1
 004B58B1    lea         eax,[ebp-10]
 004B58B4    call        @LStrClr
 004B58B9    ret
>004B58BA    jmp         @HandleFinally
>004B58BF    jmp         004B58B1
 004B58C1    pop         ebx
 004B58C2    mov         esp,ebp
 004B58C4    pop         ebp
 004B58C5    ret
end;*}

//004B58C8
{*procedure sub_004B58C8(?:?; ?:?);
begin
 004B58C8    push        ebp
 004B58C9    mov         ebp,esp
 004B58CB    add         esp,0FFFFFFF4
 004B58CE    mov         dword ptr [ebp-0C],ecx
 004B58D1    mov         dword ptr [ebp-8],edx
 004B58D4    mov         dword ptr [ebp-4],eax
 004B58D7    mov         edx,dword ptr [ebp-8]
 004B58DA    mov         eax,dword ptr [ebp-4]
 004B58DD    mov         eax,dword ptr [eax+14];TComboBoxExStrings..................................................
 004B58E0    call        004A1720
 004B58E5    mov         edx,dword ptr [eax+10]
 004B58E8    mov         eax,dword ptr [ebp-0C]
 004B58EB    call        @LStrAsg
 004B58F0    mov         esp,ebp
 004B58F2    pop         ebp
 004B58F3    ret
end;*}

//004B58F4
{*function sub_004B58F4:?;
begin
 004B58F4    push        ebp
 004B58F5    mov         ebp,esp
 004B58F7    add         esp,0FFFFFFF8
 004B58FA    mov         dword ptr [ebp-4],eax
 004B58FD    mov         eax,dword ptr [ebp-4]
 004B5900    mov         eax,dword ptr [eax+14];TComboBoxExStrings..................................................
 004B5903    call        00479B60
 004B5908    mov         dword ptr [ebp-8],eax
 004B590B    mov         eax,dword ptr [ebp-8]
 004B590E    pop         ecx
 004B590F    pop         ecx
 004B5910    pop         ebp
 004B5911    ret
end;*}

//004B5914
{*function sub_004B5914:?;
begin
 004B5914    push        ebp
 004B5915    mov         ebp,esp
 004B5917    add         esp,0FFFFFFF8
 004B591A    mov         dword ptr [ebp-4],eax
 004B591D    mov         eax,dword ptr [ebp-4]
 004B5920    mov         eax,dword ptr [eax+14];TComboBoxExStrings..................................................
 004B5923    call        00479B60
 004B5928    mov         dword ptr [ebp-8],eax
 004B592B    mov         eax,dword ptr [ebp-8]
 004B592E    pop         ecx
 004B592F    pop         ecx
 004B5930    pop         ebp
 004B5931    ret
end;*}

//004B5934
{*function sub_004B5934(?:?):?;
begin
 004B5934    push        ebp
 004B5935    mov         ebp,esp
 004B5937    add         esp,0FFFFFFF4
 004B593A    mov         dword ptr [ebp-8],edx
 004B593D    mov         dword ptr [ebp-4],eax
 004B5940    mov         edx,dword ptr [ebp-8]
 004B5943    mov         eax,dword ptr [ebp-4]
 004B5946    mov         eax,dword ptr [eax+14];TComboBoxExStrings..................................................
 004B5949    call        004A1720
 004B594E    mov         eax,dword ptr [eax+14]
 004B5951    mov         dword ptr [ebp-0C],eax
 004B5954    mov         eax,dword ptr [ebp-0C]
 004B5957    mov         esp,ebp
 004B5959    pop         ebp
 004B595A    ret
end;*}

//004B595C
{*function sub_004B595C(?:?):?;
begin
 004B595C    push        ebp
 004B595D    mov         ebp,esp
 004B595F    add         esp,0FFFFFFEC
 004B5962    mov         dword ptr [ebp-8],edx
 004B5965    mov         dword ptr [ebp-4],eax
 004B5968    mov         dword ptr [ebp-0C],0FFFFFFFF
 004B596F    mov         eax,dword ptr [ebp-4]
 004B5972    mov         eax,dword ptr [eax+14];TComboBoxExStrings..................................................
 004B5975    call        00479B60
 004B597A    dec         eax
 004B597B    test        eax,eax
>004B597D    jl          004B59B7
 004B597F    inc         eax
 004B5980    mov         dword ptr [ebp-14],eax
 004B5983    mov         dword ptr [ebp-10],0
 004B598A    mov         eax,dword ptr [ebp-4]
 004B598D    mov         eax,dword ptr [eax+14];TComboBoxExStrings..................................................
 004B5990    mov         edx,dword ptr [ebp-10]
 004B5993    call        004A1720
 004B5998    mov         eax,dword ptr [eax+10]
 004B599B    mov         edx,dword ptr [ebp-8]
 004B599E    call        00466420
 004B59A3    test        eax,eax
>004B59A5    jne         004B59AF
 004B59A7    mov         eax,dword ptr [ebp-10]
 004B59AA    mov         dword ptr [ebp-0C],eax
>004B59AD    jmp         004B59B7
 004B59AF    inc         dword ptr [ebp-10]
 004B59B2    dec         dword ptr [ebp-14]
>004B59B5    jne         004B598A
 004B59B7    mov         eax,dword ptr [ebp-0C]
 004B59BA    mov         esp,ebp
 004B59BC    pop         ebp
 004B59BD    ret
end;*}

//004B59C0
{*function sub_004B59C0(?:?):?;
begin
 004B59C0    push        ebp
 004B59C1    mov         ebp,esp
 004B59C3    add         esp,0FFFFFFF4
 004B59C6    mov         dword ptr [ebp-8],edx
 004B59C9    mov         dword ptr [ebp-4],eax
 004B59CC    mov         edx,dword ptr [ebp-8]
 004B59CF    mov         eax,dword ptr [ebp-4]
 004B59D2    mov         ecx,dword ptr [eax]
 004B59D4    call        dword ptr [ecx+54];TComboBoxExStrings.sub_004B595C
 004B59D7    mov         dword ptr [ebp-0C],eax
 004B59DA    mov         eax,dword ptr [ebp-0C]
 004B59DD    mov         esp,ebp
 004B59DF    pop         ebp
 004B59E0    ret
end;*}

//004B59E4
{*procedure sub_004B59E4(?:?; ?:?);
begin
 004B59E4    push        ebp
 004B59E5    mov         ebp,esp
 004B59E7    add         esp,0FFFFFFF0
 004B59EA    mov         dword ptr [ebp-0C],ecx
 004B59ED    mov         dword ptr [ebp-8],edx
 004B59F0    mov         dword ptr [ebp-4],eax
 004B59F3    mov         edx,dword ptr [ebp-8]
 004B59F6    mov         eax,dword ptr [ebp-4]
 004B59F9    mov         eax,dword ptr [eax+14];TComboBoxExStrings..................................................
 004B59FC    call        004B4514
 004B5A01    mov         dword ptr [ebp-10],eax
 004B5A04    mov         edx,dword ptr [ebp-0C]
 004B5A07    mov         eax,dword ptr [ebp-10]
 004B5A0A    mov         ecx,dword ptr [eax]
 004B5A0C    call        dword ptr [ecx+20]
 004B5A0F    mov         esp,ebp
 004B5A11    pop         ebp
 004B5A12    ret
end;*}

//004B5A14
{*procedure sub_004B5A14(?:?; ?:?);
begin
 004B5A14    push        ebp
 004B5A15    mov         ebp,esp
 004B5A17    add         esp,0FFFFFFF4
 004B5A1A    mov         dword ptr [ebp-0C],ecx
 004B5A1D    mov         dword ptr [ebp-8],edx
 004B5A20    mov         dword ptr [ebp-4],eax
 004B5A23    mov         edx,dword ptr [ebp-8]
 004B5A26    mov         eax,dword ptr [ebp-4]
 004B5A29    mov         eax,dword ptr [eax+14];TComboBoxExStrings..................................................
 004B5A2C    call        004A1720
 004B5A31    mov         edx,dword ptr [ebp-0C]
 004B5A34    mov         ecx,dword ptr [eax]
 004B5A36    call        dword ptr [ecx+14]
 004B5A39    mov         esp,ebp
 004B5A3B    pop         ebp
 004B5A3C    ret
end;*}

//004B5A40
{*procedure sub_004B5A40(?:?; ?:?);
begin
 004B5A40    push        ebp
 004B5A41    mov         ebp,esp
 004B5A43    add         esp,0FFFFFFF4
 004B5A46    push        ebx
 004B5A47    mov         dword ptr [ebp-0C],ecx
 004B5A4A    mov         dword ptr [ebp-8],edx
 004B5A4D    mov         dword ptr [ebp-4],eax
 004B5A50    mov         ecx,dword ptr [ebp-0C]
 004B5A53    mov         edx,dword ptr [ebp-8]
 004B5A56    mov         eax,dword ptr [ebp-4]
 004B5A59    mov         ebx,dword ptr [eax]
 004B5A5B    call        dword ptr [ebx+60];TComboBoxExStrings.sub_004B59E4
 004B5A5E    pop         ebx
 004B5A5F    mov         esp,ebp
 004B5A61    pop         ebp
 004B5A62    ret
end;*}

//004B5A64
{*procedure sub_004B5A64(?:?; ?:?);
begin
 004B5A64    push        ebp
 004B5A65    mov         ebp,esp
 004B5A67    add         esp,0FFFFFFF0
 004B5A6A    mov         dword ptr [ebp-0C],ecx
 004B5A6D    mov         dword ptr [ebp-8],edx
 004B5A70    mov         dword ptr [ebp-4],eax
 004B5A73    mov         edx,dword ptr [ebp-8]
 004B5A76    mov         eax,dword ptr [ebp-4]
 004B5A79    mov         eax,dword ptr [eax+14];TComboBoxExStrings..................................................
 004B5A7C    call        004B4514
 004B5A81    mov         dword ptr [ebp-10],eax
 004B5A84    mov         edx,dword ptr [ebp-0C]
 004B5A87    mov         eax,dword ptr [ebp-10]
 004B5A8A    mov         ecx,dword ptr [eax]
 004B5A8C    call        dword ptr [ecx+24]
 004B5A8F    mov         esp,ebp
 004B5A91    pop         ebp
 004B5A92    ret
end;*}

//004B5A94
{*procedure sub_004B5A94(?:?);
begin
 004B5A94    push        ebp
 004B5A95    mov         ebp,esp
 004B5A97    add         esp,0FFFFFFF8
 004B5A9A    mov         byte ptr [ebp-5],dl
 004B5A9D    mov         dword ptr [ebp-4],eax
 004B5AA0    mov         eax,dword ptr [ebp-4]
 004B5AA3    mov         eax,dword ptr [eax+10];TComboBoxExStrings..................FComboBox:TCustomCombo
 004B5AA6    call        TWinControl.HandleAllocated
 004B5AAB    test        al,al
>004B5AAD    je          004B5ADE
 004B5AAF    push        0
 004B5AB1    mov         al,byte ptr [ebp-5]
 004B5AB4    xor         al,1
 004B5AB6    and         eax,7F
 004B5AB9    push        eax
 004B5ABA    push        0B
 004B5ABC    mov         eax,dword ptr [ebp-4]
 004B5ABF    mov         eax,dword ptr [eax+10];TComboBoxExStrings...................FComboBox:TCustomCombo
 004B5AC2    call        TWinControl.GetHandle
 004B5AC7    push        eax
 004B5AC8    call        user32.SendMessageA
 004B5ACD    cmp         byte ptr [ebp-5],0
>004B5AD1    jne         004B5ADE
 004B5AD3    mov         eax,dword ptr [ebp-4]
 004B5AD6    mov         eax,dword ptr [eax+10];TComboBoxExStrings....................FComboBox:TCustomCombo
 004B5AD9    call        TControl.Refresh
 004B5ADE    pop         ecx
 004B5ADF    pop         ecx
 004B5AE0    pop         ebp
 004B5AE1    ret
end;*}

//004B5AE4
{*function sub_004B5AE4:?;
begin
 004B5AE4    push        ebp
 004B5AE5    mov         ebp,esp
 004B5AE7    add         esp,0FFFFFFF8
 004B5AEA    mov         dword ptr [ebp-4],eax
 004B5AED    mov         eax,[004A7678];TComboExItems
 004B5AF2    mov         dword ptr [ebp-8],eax
 004B5AF5    mov         eax,dword ptr [ebp-8]
 004B5AF8    pop         ecx
 004B5AF9    pop         ecx
 004B5AFA    pop         ebp
 004B5AFB    ret
end;*}

//004B5AFC
{*function sub_004B5AFC:?;
begin
 004B5AFC    push        ebp
 004B5AFD    mov         ebp,esp
 004B5AFF    add         esp,0FFFFFFF8
 004B5B02    mov         dword ptr [ebp-4],eax
 004B5B05    mov         eax,[004A7544];TComboExItem
 004B5B0A    mov         dword ptr [ebp-8],eax
 004B5B0D    mov         eax,dword ptr [ebp-8]
 004B5B10    pop         ecx
 004B5B11    pop         ecx
 004B5B12    pop         ebp
 004B5B13    ret
end;*}

//004B5B14
{*procedure sub_004B5B14(?:?; ?:?; ?:?);
begin
 004B5B14    push        ebp
 004B5B15    mov         ebp,esp
 004B5B17    add         esp,0FFFFFFF0
 004B5B1A    mov         dword ptr [ebp-0C],ecx
 004B5B1D    mov         dword ptr [ebp-8],edx
 004B5B20    mov         dword ptr [ebp-4],eax
 004B5B23    mov         eax,dword ptr [ebp-8]
 004B5B26    call        @LStrAddRef
 004B5B2B    xor         eax,eax
 004B5B2D    push        ebp
 004B5B2E    push        4B5B86
 004B5B33    push        dword ptr fs:[eax]
 004B5B36    mov         dword ptr fs:[eax],esp
 004B5B39    mov         eax,dword ptr [ebp-4]
 004B5B3C    mov         eax,dword ptr [eax+20];TListViewActionLink.......................FClient:TWinControl
 004B5B3F    mov         eax,dword ptr [eax+22C]
 004B5B45    call        004AE674
 004B5B4A    mov         dword ptr [ebp-10],eax
 004B5B4D    mov         ecx,dword ptr [ebp-0C]
 004B5B50    xor         edx,edx
 004B5B52    mov         eax,dword ptr [ebp-10]
 004B5B55    call        004AE188
 004B5B5A    mov         edx,dword ptr [ebp-8]
 004B5B5D    mov         eax,dword ptr [ebp-10]
 004B5B60    call        004ADF4C
 004B5B65    mov         edx,dword ptr [ebp+8]
 004B5B68    mov         eax,dword ptr [ebp-10]
 004B5B6B    call        004AE018
 004B5B70    xor         eax,eax
 004B5B72    pop         edx
 004B5B73    pop         ecx
 004B5B74    pop         ecx
 004B5B75    mov         dword ptr fs:[eax],edx
 004B5B78    push        4B5B8D
 004B5B7D    lea         eax,[ebp-8]
 004B5B80    call        @LStrClr
 004B5B85    ret
>004B5B86    jmp         @HandleFinally
>004B5B8B    jmp         004B5B7D
 004B5B8D    mov         esp,ebp
 004B5B8F    pop         ebp
 004B5B90    ret         4
end;*}

//004B5B94
{*procedure sub_004B5B94(?:?);
begin
 004B5B94    push        ebp
 004B5B95    mov         ebp,esp
 004B5B97    add         esp,0FFFFFFF4
 004B5B9A    mov         dword ptr [ebp-8],edx
 004B5B9D    mov         dword ptr [ebp-4],eax
 004B5BA0    mov         eax,dword ptr [ebp-4]
 004B5BA3    mov         eax,dword ptr [eax+20];TListViewActionLink........................FClient:TWinControl
 004B5BA6    mov         eax,dword ptr [eax+22C]
 004B5BAC    call        004AE674
 004B5BB1    mov         dword ptr [ebp-0C],eax
 004B5BB4    mov         eax,dword ptr [ebp-8]
 004B5BB7    mov         ecx,dword ptr [eax+18]
 004B5BBA    xor         edx,edx
 004B5BBC    mov         eax,dword ptr [ebp-0C]
 004B5BBF    call        004AE188
 004B5BC4    mov         eax,dword ptr [ebp-8]
 004B5BC7    mov         edx,dword ptr [eax+10]
 004B5BCA    mov         eax,dword ptr [ebp-0C]
 004B5BCD    call        004ADF4C
 004B5BD2    mov         eax,dword ptr [ebp-8]
 004B5BD5    mov         edx,dword ptr [eax+14]
 004B5BD8    mov         eax,dword ptr [ebp-0C]
 004B5BDB    call        004AE018
 004B5BE0    mov         esp,ebp
 004B5BE2    pop         ebp
 004B5BE3    ret
end;*}

//004B5BE4
{*procedure sub_004B5BE4(?:?);
begin
 004B5BE4    push        ebp
 004B5BE5    mov         ebp,esp
 004B5BE7    add         esp,0FFFFFFF4
 004B5BEA    mov         dword ptr [ebp-8],edx
 004B5BED    mov         dword ptr [ebp-4],eax
 004B5BF0    mov         eax,dword ptr [ebp-4]
 004B5BF3    mov         edx,dword ptr [eax]
 004B5BF5    call        dword ptr [edx+84];TListViewActionLink.sub_004A2370
 004B5BFB    test        al,al
>004B5BFD    je          004B5C21
 004B5BFF    mov         eax,dword ptr [ebp-4]
 004B5C02    mov         eax,dword ptr [eax+20];TListViewActionLink.........................FClient:TWinControl
 004B5C05    mov         edx,dword ptr ds:[4A6240];TCustomListView
 004B5C0B    call        @AsClass
 004B5C10    mov         dword ptr [ebp-0C],eax
 004B5C13    mov         edx,dword ptr [ebp-8]
 004B5C16    mov         eax,dword ptr [ebp-4]
 004B5C19    mov         eax,dword ptr [eax+20];TListViewActionLink..........................FClient:TWinControl
 004B5C1C    call        TListView.SetSmallImages
 004B5C21    mov         esp,ebp
 004B5C23    pop         ebp
 004B5C24    ret
end;*}

//004B5C28
{*procedure sub_004B5C28(?:?; ?:?; ?:?);
begin
 004B5C28    push        ebp
 004B5C29    mov         ebp,esp
 004B5C2B    add         esp,0FFFFFFF0
 004B5C2E    mov         dword ptr [ebp-0C],ecx
 004B5C31    mov         dword ptr [ebp-8],edx
 004B5C34    mov         dword ptr [ebp-4],eax
 004B5C37    mov         eax,dword ptr [ebp-8]
 004B5C3A    call        @LStrAddRef
 004B5C3F    xor         eax,eax
 004B5C41    push        ebp
 004B5C42    push        4B5C97
 004B5C47    push        dword ptr fs:[eax]
 004B5C4A    mov         dword ptr fs:[eax],esp
 004B5C4D    mov         eax,dword ptr [ebp-4]
 004B5C50    mov         eax,dword ptr [eax+20];TComboBoxExActionLink...........................FClient:TWinContr...
 004B5C53    mov         edx,dword ptr ds:[4A7844];TCustomComboBoxEx
 004B5C59    call        @AsClass
 004B5C5E    mov         dword ptr [ebp-10],eax
 004B5C61    mov         eax,dword ptr [ebp-0C]
 004B5C64    push        eax
 004B5C65    push        0FF
 004B5C67    push        0FF
 004B5C69    mov         eax,dword ptr [ebp+8]
 004B5C6C    push        eax
 004B5C6D    mov         eax,dword ptr [ebp-10]
 004B5C70    mov         eax,dword ptr [eax+28C];TCustomComboBoxEx.FItemsEx:TComboExItems
 004B5C76    mov         ecx,dword ptr [ebp-0C]
 004B5C79    mov         edx,dword ptr [ebp-8]
 004B5C7C    call        004B4478
 004B5C81    xor         eax,eax
 004B5C83    pop         edx
 004B5C84    pop         ecx
 004B5C85    pop         ecx
 004B5C86    mov         dword ptr fs:[eax],edx
 004B5C89    push        4B5C9E
 004B5C8E    lea         eax,[ebp-8]
 004B5C91    call        @LStrClr
 004B5C96    ret
>004B5C97    jmp         @HandleFinally
>004B5C9C    jmp         004B5C8E
 004B5C9E    mov         esp,ebp
 004B5CA0    pop         ebp
 004B5CA1    ret         4
end;*}

//004B5CA4
{*procedure sub_004B5CA4(?:?);
begin
 004B5CA4    push        ebp
 004B5CA5    mov         ebp,esp
 004B5CA7    add         esp,0FFFFFFF4
 004B5CAA    mov         dword ptr [ebp-8],edx
 004B5CAD    mov         dword ptr [ebp-4],eax
 004B5CB0    mov         eax,dword ptr [ebp-4]
 004B5CB3    mov         eax,dword ptr [eax+20];TComboBoxExActionLink............................FClient:TWinCont...
 004B5CB6    mov         edx,dword ptr ds:[4A7844];TCustomComboBoxEx
 004B5CBC    call        @AsClass
 004B5CC1    mov         dword ptr [ebp-0C],eax
 004B5CC4    mov         eax,dword ptr [ebp-8]
 004B5CC7    mov         eax,dword ptr [eax+18]
 004B5CCA    push        eax
 004B5CCB    push        0FF
 004B5CCD    push        0FF
 004B5CCF    mov         eax,dword ptr [ebp-8]
 004B5CD2    mov         eax,dword ptr [eax+14]
 004B5CD5    push        eax
 004B5CD6    mov         eax,dword ptr [ebp-0C]
 004B5CD9    mov         eax,dword ptr [eax+28C];TCustomComboBoxEx.FItemsEx:TComboExItems
 004B5CDF    mov         edx,dword ptr [ebp-8]
 004B5CE2    mov         ecx,dword ptr [edx+18]
 004B5CE5    mov         edx,dword ptr [ebp-8]
 004B5CE8    mov         edx,dword ptr [edx+10]
 004B5CEB    call        004B4478
 004B5CF0    mov         esp,ebp
 004B5CF2    pop         ebp
 004B5CF3    ret
end;*}

//004B5CF4
{*function sub_004B5CF4(?:?; ?:?):?;
begin
 004B5CF4    push        ebp
 004B5CF5    mov         ebp,esp
 004B5CF7    add         esp,0FFFFFFF8
 004B5CFA    mov         eax,dword ptr [ebp+0C]
 004B5CFD    test        eax,eax
>004B5CFF    je          004B5D05
 004B5D01    xor         edx,edx
 004B5D03    mov         dword ptr [eax],edx
 004B5D05    mov         eax,dword ptr [ebp+8]
 004B5D08    mov         ecx,dword ptr [eax+0C]
 004B5D0B    mov         dl,1
 004B5D0D    mov         eax,[004B4784];TComboBoxExEnumerator
 004B5D12    call        TComboBoxExEnumerator.Create;TComboBoxExEnumerator.Create
 004B5D17    mov         dword ptr [ebp-8],eax
 004B5D1A    mov         eax,dword ptr [ebp+0C]
 004B5D1D    mov         edx,dword ptr [ebp-8]
 004B5D20    test        edx,edx
>004B5D22    je          004B5D27
 004B5D24    sub         edx,0FFFFFFEC
 004B5D27    call        @IntfCopy
 004B5D2C    mov         eax,dword ptr [ebp+8]
 004B5D2F    mov         eax,dword ptr [eax+10]
 004B5D32    mov         edx,dword ptr [ebp-8]
 004B5D35    mov         dword ptr [edx+10],eax;TComboBoxExEnumerator.FCurrentIndex:Integer
 004B5D38    xor         eax,eax
 004B5D3A    mov         dword ptr [ebp-4],eax
 004B5D3D    mov         eax,dword ptr [ebp-4]
 004B5D40    pop         ecx
 004B5D41    pop         ecx
 004B5D42    pop         ebp
 004B5D43    ret         8
end;*}

//004B5D48
constructor TComboBoxExEnumerator.Create;
begin
{*
 004B5D48    push        ebp
 004B5D49    mov         ebp,esp
 004B5D4B    add         esp,0FFFFFFF4
 004B5D4E    test        dl,dl
>004B5D50    je          004B5D5A
 004B5D52    add         esp,0FFFFFFF0
 004B5D55    call        @ClassCreate
 004B5D5A    mov         dword ptr [ebp-0C],ecx
 004B5D5D    mov         byte ptr [ebp-5],dl
 004B5D60    mov         dword ptr [ebp-4],eax
 004B5D63    xor         edx,edx
 004B5D65    mov         eax,dword ptr [ebp-4]
 004B5D68    call        TObject.Create
 004B5D6D    mov         eax,dword ptr [ebp-4]
 004B5D70    mov         edx,dword ptr [ebp-0C]
 004B5D73    mov         dword ptr [eax+0C],edx;TComboBoxExEnumerator.FItems:TComboExItems
 004B5D76    mov         eax,dword ptr [ebp-4]
 004B5D79    cmp         byte ptr [ebp-5],0
>004B5D7D    je          004B5D8E
 004B5D7F    call        @AfterConstruction
 004B5D84    pop         dword ptr fs:[0]
 004B5D8B    add         esp,0C
 004B5D8E    mov         eax,dword ptr [ebp-4]
 004B5D91    mov         esp,ebp
 004B5D93    pop         ebp
 004B5D94    ret
*}
end;

//004B5D98
{*function sub_004B5D98(?:?):?;
begin
 004B5D98    push        ebp
 004B5D99    mov         ebp,esp
 004B5D9B    add         esp,0FFFFFFF8
 004B5D9E    mov         dword ptr [ebp-4],eax
 004B5DA1    mov         eax,dword ptr [ebp-4]
 004B5DA4    mov         eax,dword ptr [eax+0C]
 004B5DA7    call        00479B60
 004B5DAC    mov         dword ptr [ebp-8],eax
 004B5DAF    mov         eax,dword ptr [ebp-8]
 004B5DB2    pop         ecx
 004B5DB3    pop         ecx
 004B5DB4    pop         ebp
 004B5DB5    ret
end;*}

//004B5DB8
{*procedure sub_004B5DB8(?:?; ?:?; ?:?);
begin
 004B5DB8    push        ebp
 004B5DB9    mov         ebp,esp
 004B5DBB    add         esp,0FFFFFFF4
 004B5DBE    mov         dword ptr [ebp-0C],ecx
 004B5DC1    mov         dword ptr [ebp-8],edx
 004B5DC4    mov         dword ptr [ebp-4],eax
 004B5DC7    mov         edx,dword ptr [ebp-8]
 004B5DCA    mov         eax,dword ptr [ebp-4]
 004B5DCD    mov         eax,dword ptr [eax+0C]
 004B5DD0    call        004A1720
 004B5DD5    mov         edx,dword ptr [eax+10]
 004B5DD8    mov         eax,dword ptr [ebp-0C]
 004B5DDB    call        @LStrAsg
 004B5DE0    mov         esp,ebp
 004B5DE2    pop         ebp
 004B5DE3    ret
end;*}

//004B5DE4
{*function sub_004B5DE4(?:?; ?:?; ?:?; ?:?):?;
begin
 004B5DE4    push        ebp
 004B5DE5    mov         ebp,esp
 004B5DE7    add         esp,0FFFFFFE8
 004B5DEA    xor         eax,eax
 004B5DEC    mov         dword ptr [ebp-18],eax
 004B5DEF    mov         dword ptr [ebp-0C],eax
 004B5DF2    xor         eax,eax
 004B5DF4    push        ebp
 004B5DF5    push        4B5EDC
 004B5DFA    push        dword ptr fs:[eax]
 004B5DFD    mov         dword ptr fs:[eax],esp
 004B5E00    xor         eax,eax
 004B5E02    mov         dword ptr [ebp-8],eax
 004B5E05    mov         eax,dword ptr [ebp+8]
 004B5E08    call        004B5D98
 004B5E0D    mov         dword ptr [ebp-14],eax
>004B5E10    jmp         004B5E83
 004B5E12    lea         ecx,[ebp-18]
 004B5E15    mov         eax,dword ptr [ebp+8]
 004B5E18    mov         edx,dword ptr [eax+10]
 004B5E1B    mov         eax,dword ptr [ebp+8]
 004B5E1E    call        004B5DB8
 004B5E23    mov         edx,dword ptr [ebp-18]
 004B5E26    lea         eax,[ebp-0C]
 004B5E29    call        @WStrFromLStr
 004B5E2E    mov         eax,dword ptr [ebp-0C]
 004B5E31    call        @WStrLen
 004B5E36    add         eax,eax
 004B5E38    mov         dword ptr [ebp-10],eax
 004B5E3B    mov         eax,dword ptr [ebp-10]
 004B5E3E    add         eax,2
 004B5E41    push        eax
 004B5E42    call        ole32.CoTaskMemAlloc
 004B5E47    mov         edx,dword ptr [ebp+10]
 004B5E4A    mov         ecx,dword ptr [ebp-8]
 004B5E4D    mov         dword ptr [edx+ecx*4],eax
 004B5E50    mov         edx,dword ptr [ebp-10]
 004B5E53    add         edx,2
 004B5E56    mov         eax,dword ptr [ebp+10]
 004B5E59    mov         ecx,dword ptr [ebp-8]
 004B5E5C    mov         eax,dword ptr [eax+ecx*4]
 004B5E5F    xor         ecx,ecx
 004B5E61    call        @FillChar
 004B5E66    mov         eax,dword ptr [ebp+10]
 004B5E69    mov         edx,dword ptr [ebp-8]
 004B5E6C    mov         eax,dword ptr [eax+edx*4]
 004B5E6F    mov         ecx,dword ptr [ebp-10]
 004B5E72    mov         edx,dword ptr [ebp-0C]
 004B5E75    call        0040810C
 004B5E7A    inc         dword ptr [ebp-8]
 004B5E7D    mov         eax,dword ptr [ebp+8]
 004B5E80    inc         dword ptr [eax+10]
 004B5E83    mov         eax,dword ptr [ebp-8]
 004B5E86    cmp         eax,dword ptr [ebp+0C]
>004B5E89    jge         004B5E9A
 004B5E8B    mov         eax,dword ptr [ebp+8]
 004B5E8E    mov         eax,dword ptr [eax+10]
 004B5E91    cmp         eax,dword ptr [ebp-14]
>004B5E94    jl          004B5E12
 004B5E9A    cmp         dword ptr [ebp+14],0
>004B5E9E    je          004B5EA8
 004B5EA0    mov         eax,dword ptr [ebp+14]
 004B5EA3    mov         edx,dword ptr [ebp-8]
 004B5EA6    mov         dword ptr [eax],edx
 004B5EA8    mov         eax,dword ptr [ebp-8]
 004B5EAB    cmp         eax,dword ptr [ebp+0C]
>004B5EAE    jne         004B5EB7
 004B5EB0    xor         eax,eax
 004B5EB2    mov         dword ptr [ebp-4],eax
>004B5EB5    jmp         004B5EBE
 004B5EB7    mov         dword ptr [ebp-4],1
 004B5EBE    xor         eax,eax
 004B5EC0    pop         edx
 004B5EC1    pop         ecx
 004B5EC2    pop         ecx
 004B5EC3    mov         dword ptr fs:[eax],edx
 004B5EC6    push        4B5EE3
 004B5ECB    lea         eax,[ebp-18]
 004B5ECE    call        @LStrClr
 004B5ED3    lea         eax,[ebp-0C]
 004B5ED6    call        @WStrClr
 004B5EDB    ret
>004B5EDC    jmp         @HandleFinally
>004B5EE1    jmp         004B5ECB
 004B5EE3    mov         eax,dword ptr [ebp-4]
 004B5EE6    mov         esp,ebp
 004B5EE8    pop         ebp
 004B5EE9    ret         10
end;*}

//004B5EEC
{*function sub_004B5EEC(?:?):?;
begin
 004B5EEC    push        ebp
 004B5EED    mov         ebp,esp
 004B5EEF    push        ecx
 004B5EF0    mov         eax,dword ptr [ebp+8]
 004B5EF3    xor         edx,edx
 004B5EF5    mov         dword ptr [eax+10],edx
 004B5EF8    xor         eax,eax
 004B5EFA    mov         dword ptr [ebp-4],eax
 004B5EFD    mov         eax,dword ptr [ebp-4]
 004B5F00    pop         ecx
 004B5F01    pop         ebp
 004B5F02    ret         4
end;*}

//004B5F08
{*function sub_004B5F08(?:?; ?:?):?;
begin
 004B5F08    push        ebp
 004B5F09    mov         ebp,esp
 004B5F0B    add         esp,0FFFFFFF8
 004B5F0E    mov         eax,dword ptr [ebp+8]
 004B5F11    call        004B5D98
 004B5F16    mov         dword ptr [ebp-8],eax
 004B5F19    mov         eax,dword ptr [ebp+0C]
 004B5F1C    mov         edx,dword ptr [ebp+8]
 004B5F1F    add         dword ptr [edx+10],eax
 004B5F22    mov         eax,dword ptr [ebp+8]
 004B5F25    mov         eax,dword ptr [eax+10]
 004B5F28    cmp         eax,dword ptr [ebp-8]
>004B5F2B    jge         004B5F34
 004B5F2D    xor         eax,eax
 004B5F2F    mov         dword ptr [ebp-4],eax
>004B5F32    jmp         004B5F43
 004B5F34    mov         eax,dword ptr [ebp+8]
 004B5F37    xor         edx,edx
 004B5F39    mov         dword ptr [eax+10],edx
 004B5F3C    mov         dword ptr [ebp-4],1
 004B5F43    mov         eax,dword ptr [ebp-4]
 004B5F46    pop         ecx
 004B5F47    pop         ecx
 004B5F48    pop         ebp
 004B5F49    ret         8
end;*}

Initialization
//004B5FC4
{*
 004B5FC4    push        ebp
 004B5FC5    mov         ebp,esp
 004B5FC7    sub         dword ptr ds:[55DD70],1
 004B5FCE    pop         ebp
 004B5FCF    ret
*}
Finalization
//004B5F4C
{*
 004B5F4C    push        ebp
 004B5F4D    mov         ebp,esp
 004B5F4F    xor         eax,eax
 004B5F51    push        ebp
 004B5F52    push        4B5FBB
 004B5F57    push        dword ptr fs:[eax]
 004B5F5A    mov         dword ptr fs:[eax],esp
 004B5F5D    inc         dword ptr ds:[55DD70]
>004B5F63    jne         004B5FAD
 004B5F65    cmp         dword ptr ds:[55DD74],0
>004B5F6C    je          004B5F79
 004B5F6E    mov         eax,[0055DD74]
 004B5F73    push        eax
 004B5F74    call        kernel32.FreeLibrary
 004B5F79    cmp         dword ptr ds:[55DD78],0
>004B5F80    je          004B5F8D
 004B5F82    mov         eax,[0055DD78]
 004B5F87    push        eax
 004B5F88    call        kernel32.FreeLibrary
 004B5F8D    mov         eax,5413AC
 004B5F92    mov         edx,dword ptr ds:[4A4F58];TConversionFormat
 004B5F98    call        @FinalizeRecord
 004B5F9D    mov         eax,5413A0
 004B5FA2    mov         edx,dword ptr ds:[4A4F58];TConversionFormat
 004B5FA8    call        @FinalizeRecord
 004B5FAD    xor         eax,eax
 004B5FAF    pop         edx
 004B5FB0    pop         ecx
 004B5FB1    pop         ecx
 004B5FB2    mov         dword ptr fs:[eax],edx
 004B5FB5    push        4B5FC2
 004B5FBA    ret
>004B5FBB    jmp         @HandleFinally
>004B5FC0    jmp         004B5FBA
 004B5FC2    pop         ebp
 004B5FC3    ret
*}
end.